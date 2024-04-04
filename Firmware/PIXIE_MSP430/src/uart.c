//===========================================================================================================================================
/*
 * uart.c
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "uart.c" defines the functions used to initialize the UART send strings outbound via UART. Inbound strings are handled using the
 *      UART1 ISR. Only UART1 is currently used. While UART0 is also available for UART/RS-232 communication, its interrupts out-prioritize
 *      that of DMA0. Comms must not cause measurement glitches, so UART0 is unused.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "uart.h"

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
// IO Buffers initialized to all zeroes.
UART_Buffer UART1_Output        = {0};
UART_Buffer UART1_Input         = {0};

//===========================================================================================================================================
// void UART_InitializeUART(void)
//
//  Sets up UART1 for (115200 baud, no parity, 1 stop bit, 8-bit data, no flow control) RS-232 communication. UART0 is not used.
//  Enables UART1 Receive Interrupts. UART I/O is converted to RS-232 using a stand-alone chip. The PIXIE is agnostic to this,
//  so for all intents and purposes the I/O firmware should treat it as UART communication.
//
//===========================================================================================================================================
void UART_InitializeUART(void)
{
    // Setup Pin Directions and Functions
    P8SEL       = (BIT2|BIT3);                        // P8.2 -> UART1_Tx, P8.3 = UART1_Rx
    P8DIR      |= BIT3;

    // Configure USCI_A1 for UART Mode ------------------------------------------------------------------------
    //  Set USCI clock source to SMCLK and set UCSWRST
    UCA1CTL1    = UCSSEL_2|UCSWRST;

    //  Set the clock prescaler registers for 115200 baud. SCLK / BAUD = 18432000/115200 = 160
    UCA1BR0     = 160;
    UCA1BR1     = 0;

    //  No parity, 1 stop, 8-bit, and no flow control are all default configs in UCA1CTL0.

    //  Oversampling and bit-patterns are unnecessary: SMCLK is integer multiple of desired baud rate.

    //  Clear UCSWRST to finish configs.
    UCA1CTL1 &= ~UCSWRST;

    // Enable UART1 Receive Interrupt and Return
    UCA1IE |= UCRXIE;
    return;
};

//===========================================================================================================================================
// uint16_t UART1_puts(int count)
//
//  A blocking call to output the string currently stored in the UART1 output buffer, of length count. Returns 0 on failure and 1
//  once the full string is sent. todo there is some potential to get trapped here, consider a DMA approach.
//
//===========================================================================================================================================
uint16_t UART1_puts(int count)
{
    if(count >= UART_BUFFERLEN || count <= 0)
    {
        return 0x0000;
    }
    UART1_Output.pos = 0;
    UART1_Output.len = count;
    do
    {
        while(!(UCA1IFG&UCTXIFG));
        UCA1TXBUF = UART1_Output.buffer[UART1_Output.pos++];
    } while(UART1_Output.pos < UART1_Output.len);
    return 0x0001;
};

//===========================================================================================================================================
// Interrupt service routines (ISRs)
//===========================================================================================================================================

// UART1 ISR ----------------------------------------------------------------------------------------------
//  The UART1 ISR is triggered whenever a byte is ready to be read from the hardware input buffer. To prevent hitches, the UART1_Input
//  buffer is configured to be circular and toss out any string that goes too long without a newline or return character. A newline
//  or return character is the signal to break from low power mode and consider the input to be a valid command to be parsed by the
//  main loop.
#pragma vector=USCI_A1_VECTOR
__interrupt void USCI_A1_ISR (void)
{
    uint8_t RxBufferRead = 0;
    switch(__even_in_range(UCA1IV, 4))
    {
    case 0: break;      // Vector 0 - no interrupt
    case 2:             // Vector 2 - RXIFG
        RxBufferRead = UCA1RXBUF;
        if(UART1_Input.pos >= (UART_BUFFERLEN - 1))      // Overflowing, reset buffer, need -1 here to keep room for NULL character ending
        {
            UART1_Input.buffer[0]   = '\0';              // Start the string NULL terminated if overflowed
            UART1_Input.len         = 0;
            UART1_Input.pos         = 0;
        }
        if(RxBufferRead == '\n' || RxBufferRead == '\r') // If end of line don't put in buffer but indicate the end of command
        {
            __bic_SR_register_on_exit(LPM0_bits);        // Command is received exit low power mode.
            UART1_Input.len         = UART1_Input.pos;   // len is now length of string before terminating null.
            UART1_Input.pos         = 0;                 // Reset Buffer Count.
        }
        else
        {
            UART1_Input.buffer[UART1_Input.pos] = RxBufferRead;  // Copy character into buffer
            UART1_Input.pos++;
            UART1_Input.buffer[UART1_Input.pos] = '\0';       // next character is NULL
        }
        break;
    case 4:             // Vector 4 - TXIFG
        break;
    default:
        break;
    }
}
