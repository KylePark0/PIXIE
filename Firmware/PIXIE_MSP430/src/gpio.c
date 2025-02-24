//===========================================================================================================================================
/*
 * gpio.c
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "gpio.c" defines the GPIO initializing function, called at startup / reset that disables unused ports and pins  and sets
 *      specific GPIO pins to output (e.g.: LED enable pins, PGA pregain setting pins).
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "gpio.h"

//===========================================================================================================================================
// void GPIO_InitializeGPIO(void)
//
//  Explicitly disables unused ports to reduce power consumption, sets certain (LED, PGA pregain) pins to output, disables the USB driver,
//  and initializes all relevant outputs to zero.
//
//===========================================================================================================================================
void GPIO_InitializeGPIO(void)
{
    // Initialize all ports to primary function (SEL=0) as inputs (DIR=0).
    P1DIR       = 0;
    P2DIR       = 0;
    P3DIR       = 0;
    P4DIR       = 0;
    P5DIR       = 0;
    P6DIR       = 0;
    P7DIR       = 0;
    P8DIR       = 0;
    P9DIR       = 0;

    P1SEL       = 0;
    P2SEL       = 0;
    P3SEL       = 0;
    P4SEL       = 0;
    P5SEL       = 0;
    P6SEL       = 0;
    P7SEL       = 0;
    P8SEL       = 0;
    P9SEL       = 0;

    P1OUT       = 0;
    P2OUT       = 0;
    P3OUT       = 0;
    P4OUT       = 0;
    P5OUT       = 0;
    P6OUT       = 0;
    P7OUT       = 0;
    P8OUT       = 0;
    P9OUT       = 0;

    // Set all unused port pins to Output and set value to 0 (TI recommended, family guide pp. 70).
    P1DIR       = BIT7;
    P2DIR       = BIT7|BIT6|BIT3|BIT2;
    P3DIR       = BIT6;
    P4DIR       = BIT7|BIT6|BIT5|BIT4|BIT3|BIT2|BIT1|BIT0;
    P5DIR       = BIT7|BIT5|BIT4;                           // P5.2 unassigned on MSP430FG6626.
    P6DIR       = BIT7|BIT3;
    P7DIR       = BIT7|BIT6|BIT5|BIT4;                      // P7.0, 7.1 unassigned on MSP430FG6626.
    P8DIR       = BIT7|BIT6|BIT5|BIT5|BIT1|BIT0;
    P9DIR       = BIT6|BIT5|BIT4|BIT3|BIT2|BIT1|BIT0;

    // USB Function is unused so apply the same to its GPIO pins.
    //  Unlock USB Registers by writing the valid key, 9628h (family guide pp. 141).
    USBKEYPID   = 0x9628;

    //  Clear Configuration Register
    USBCNF      = 0x0000;

    //  Set PU.0 and PU.1 as outputs and their value to zero.
    USBPHYCTL   = PUOPE;                                    // Writing bit turns output on, outputs cleared by assignment.

    //  Lock the USB Registers by writing an invalid key.
    USBKEYPID   = 0xFFFF;

    // Set data directions for GPIO
    //  LEDs:
    P1DIR      |= BIT0;                                     // LED General Purpose, P1.0 as output

    P6DIR      |= BIT6;                                     // LED Channel 1 on/off, P6.6 as output
    P9DIR      |= BIT7;                                     // LED Channel 2 on/off, P9.7 as output
    P3DIR      |= BIT7;                                     // LED Channel 3 on/off, P3.7 as output
    P5DIR      |= BIT3;                                     // LED Channel 4 on/off, P5.3 as output

    //  PGAs:
    P1DIR      |= BIT4 + BIT5 + BIT6;                       // CH1 settings G0, G1, G2. P1.4, P1.5, P1.6 as output
    P1DIR      |= BIT1 + BIT2 + BIT3;                       // CH2 settings G0, G1, G2. P1.1, P1.2, P1.3 as output
    P3DIR      |= BIT3 + BIT4 + BIT5;                       // CH3 settings G0, G1, G2. P3.3, P3.4, P3.5 as output
    P3DIR      |= BIT0 + BIT1 + BIT2;                       // CH4 settings G0, G1, G2. P3.0, P3.1, P3.2 as output

    // Set data directions for Peripherals. SEL registers set in corresponding Initializers, not here.
    //  ADC:
    P6DIR      &= ~(BIT0 + BIT1);                           // Analog Input Photodiode 1, P6.0 as input
                                                            // Analog Input Photodiode 2, P6.1 as input
    P5DIR      &= ~(BIT1 + BIT6);                           // Analog Input Photodiode 3, P5.1 as input
                                                            // Analog Input Photodiode 4, P5.6 as input
    //  DACs:
    P2DIR      |= BIT0 + BIT1;                              // DAC 0 Output, P2.0 as output
                                                            // DAC 1 Output, P2.1 as output
    //  OPAMPs:
    P6DIR      &= ~(BIT2 + BIT5);                           // OP-AMP 0 Input Positive (OA0IP0), P6.2 as input
                                                            // OP-AMP 0 Input Negative (OA0IN0), P6.5 as input
    P6DIR      |= BIT4;                                     // OP-AMP 0 Output (OA00), P6.4 as output;

    // Set default values for GPIO
    //  LEDs:
    GPIO_ResetChannelLEDs();

    //  PGAs, all have gain of 0 to start
    GPIO_SetChannelPregain(1, 0);
    GPIO_SetChannelPregain(2, 0);
    GPIO_SetChannelPregain(3, 0);
    GPIO_SetChannelPregain(4, 0);
    return;
};
