//===========================================================================================================================================
/*
 * uart.h
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "uart.h" declares the length of the UART input and output buffers, defines a container structure for those buffers, and declares
 *      the functions used to initialize the UART send strings outbound via UART.
 *
 */
//===========================================================================================================================================
#ifndef INC_UART_H_
#define INC_UART_H_
//===========================================================================================================================================
// Includes
//===========================================================================================================================================
// Platform Specific Includes
#include "pixie.h"

// C-Standard Includes
#include <string.h>

//===========================================================================================================================================
// Global Constants
//===========================================================================================================================================
// The length of the UART buffers. This *could* be changed without causing issues (within reason), but shouldn't need to be.
#define UART_BUFFERLEN (64)

//===========================================================================================================================================
// Typedefs
//===========================================================================================================================================
// A container struct for the UART buffers, with a C-string of length UART_BUFFERLEN, a current null-terminated length counter len,
// and an index for I/O operations pos.
typedef struct
{
    char        buffer[UART_BUFFERLEN];
    uint8_t     len;
    uint8_t     pos;
} UART_Buffer;

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
//IO Buffers for UART1
extern UART_Buffer UART1_Output;
extern UART_Buffer UART1_Input;

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void UART_InitializeUART(void);

uint16_t UART_puts(int count);  //"int" for compatibility with sprintf return val
uint16_t UART1_puts(int count); //

#endif /* INC_UART_H_ */
