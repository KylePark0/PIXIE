//===========================================================================================================================================
/*
 * gpio.h
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "gpio.h" assigns project-specific names to hardware pins of the MSP430 using macros and declares functions for setting channel
 *      pregain and turning channel LEDs on and off.
 *
 */
//===========================================================================================================================================
#ifndef INC_GPIO_H_
#define INC_GPIO_H_
//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// GPIO Macro Definitions
//===========================================================================================================================================
#define LED1_ON     (P6OUT |= BIT6)
#define LED1_OFF    (P6OUT &= ~BIT6)
#define LED2_ON     (P9OUT |= BIT7)
#define LED2_OFF    (P9OUT &= ~BIT7)
#define LED3_ON     (P3OUT |= BIT7)
#define LED3_OFF    (P3OUT &= ~BIT7)
#define LED4_ON     (P5OUT |= BIT3)
#define LED4_OFF    (P5OUT &= ~BIT3)

#define CH4_G000    (P3OUT = (P3OUT & ~(BIT2 + BIT1 + BIT0)) )
#define CH4_G001    (P3OUT = (P3OUT & ~(BIT2 + BIT1 + BIT0)) | BIT0)
#define CH4_G002    (P3OUT = (P3OUT & ~(BIT2 + BIT1 + BIT0)) | BIT1)
#define CH4_G005    (P3OUT = (P3OUT & ~(BIT2 + BIT1 + BIT0)) | BIT1 | BIT0)
#define CH4_G010    (P3OUT = (P3OUT & ~(BIT2 + BIT1 + BIT0)) | BIT2)
#define CH4_G020    (P3OUT = (P3OUT & ~(BIT2 + BIT1 + BIT0)) | BIT2 | BIT0)
#define CH4_G050    (P3OUT = (P3OUT & ~(BIT2 + BIT1 + BIT0)) | BIT2 | BIT1)
#define CH4_G100    (P3OUT = (P3OUT & ~(BIT2 + BIT1 + BIT0)) | BIT2 | BIT1 | BIT0)

#define CH3_G000    (P3OUT = (P3OUT & ~(BIT5 + BIT4 + BIT3)) )
#define CH3_G001    (P3OUT = (P3OUT & ~(BIT5 + BIT4 + BIT3)) | BIT3)
#define CH3_G002    (P3OUT = (P3OUT & ~(BIT5 + BIT4 + BIT3)) | BIT4)
#define CH3_G005    (P3OUT = (P3OUT & ~(BIT5 + BIT4 + BIT3)) | BIT4 | BIT3)
#define CH3_G010    (P3OUT = (P3OUT & ~(BIT5 + BIT4 + BIT3)) | BIT5)
#define CH3_G020    (P3OUT = (P3OUT & ~(BIT5 + BIT4 + BIT3)) | BIT5 | BIT3)
#define CH3_G050    (P3OUT = (P3OUT & ~(BIT5 + BIT4 + BIT3)) | BIT5 | BIT4)
#define CH3_G100    (P3OUT = (P3OUT & ~(BIT5 + BIT4 + BIT3)) | BIT5 | BIT4 | BIT3)

#define CH2_G000    (P1OUT = (P1OUT & ~(BIT3 + BIT2 + BIT1)) )
#define CH2_G001    (P1OUT = (P1OUT & ~(BIT3 + BIT2 + BIT1)) | BIT1)
#define CH2_G002    (P1OUT = (P1OUT & ~(BIT3 + BIT2 + BIT1)) | BIT2)
#define CH2_G005    (P1OUT = (P1OUT & ~(BIT3 + BIT2 + BIT1)) | BIT2 | BIT1)
#define CH2_G010    (P1OUT = (P1OUT & ~(BIT3 + BIT2 + BIT1)) | BIT3)
#define CH2_G020    (P1OUT = (P1OUT & ~(BIT3 + BIT2 + BIT1)) | BIT3 | BIT1)
#define CH2_G050    (P1OUT = (P1OUT & ~(BIT3 + BIT2 + BIT1)) | BIT3 | BIT2)
#define CH2_G100    (P1OUT = (P1OUT & ~(BIT3 + BIT2 + BIT1)) | BIT3 | BIT2 | BIT1)

#define CH1_G000    (P1OUT = (P1OUT & ~(BIT6 + BIT5 + BIT4)) )
#define CH1_G001    (P1OUT = (P1OUT & ~(BIT6 + BIT5 + BIT4)) | BIT4)
#define CH1_G002    (P1OUT = (P1OUT & ~(BIT6 + BIT5 + BIT4)) | BIT5)
#define CH1_G005    (P1OUT = (P1OUT & ~(BIT6 + BIT5 + BIT4)) | BIT5 | BIT4)
#define CH1_G010    (P1OUT = (P1OUT & ~(BIT6 + BIT5 + BIT4)) | BIT6)
#define CH1_G020    (P1OUT = (P1OUT & ~(BIT6 + BIT5 + BIT4)) | BIT6 | BIT4)
#define CH1_G050    (P1OUT = (P1OUT & ~(BIT6 + BIT5 + BIT4)) | BIT6 | BIT5)
#define CH1_G100    (P1OUT = (P1OUT & ~(BIT6 + BIT5 + BIT4)) | BIT6 | BIT5 | BIT4)

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void        GPIO_InitializeGPIO(void);

//===========================================================================================================================================
// inline void GPIO_ResetChannelLEDs(void)
//
//  In effect, a macro for turning off all channel LEDs at once.
//
//===========================================================================================================================================
inline void GPIO_ResetChannelLEDs(void)
{
    LED1_OFF;
    LED2_OFF;
    LED3_OFF;
    LED4_OFF;
};

//===========================================================================================================================================
// inline void GPIO_ResetChannelPregains(void)
//
//  In effect, a macro for turning off all channel PGAs at once.
//
//===========================================================================================================================================
inline void GPIO_ResetChannelPregains(void)
{
    CH1_G000;
    CH2_G000;
    CH3_G000;
    CH4_G000;
};

//===========================================================================================================================================
// inline void GPIO_ResetChannelLEDs(void)
//
//  In effect, a macro for turning on a specified channel LED.
//
//===========================================================================================================================================
inline void GPIO_SetChannelLED(uint16_t ch)
{
    switch(ch)
    {
    case 1:
        LED1_ON;
        break;
    case 2:
        LED2_ON;
        break;
    case 3:
        LED3_ON;
        break;
    case 4:
        LED4_ON;
        break;
    }
};

//===========================================================================================================================================
// inline void GPIO_ResetChannelLEDs(void)
//
//  In effect, a macro for setting a specific channel's PGA pregain, setting all other channels' to zero.
//
//===========================================================================================================================================
inline uint16_t GPIO_SetChannelPregain(uint16_t ch, uint16_t g)
{
    if(ch == 1)
    {
        // Set the other channels' gain to zero.
        CH2_G000;
        CH3_G000;
        CH4_G000;
        switch(g)
        {
        case 0:
            CH1_G000;
            return 0;
        case 1:
            CH1_G001;
            return 1;
        case 2:
            CH1_G002;
            return 2;
        case 5:
            CH1_G005;
            return 5;
        case 10:
            CH1_G010;
            return 10;
        case 20:
            CH1_G020;
            return 20;
        case 50:
            CH1_G050;
            return 50;
        case 100:
        default:        // Defaults to 100.
            CH1_G100;
            return 100;
        }
    }
    else if(ch == 2)
    {
        // Set the other channels' gain to zero.
        CH1_G000;
        CH3_G000;
        CH4_G000;
        switch(g)
        {
        case 0:
            CH2_G000;
            return 0;
        case 1:
            CH2_G001;
            return 1;
        case 2:
            CH2_G002;
            return 2;
        case 5:
            CH2_G005;
            return 5;
        case 10:
            CH2_G010;
            return 10;
        case 20:
            CH2_G020;
            return 20;
        case 50:
            CH2_G050;
            return 50;
        case 100:
        default:        // Defaults to 100.
            CH2_G100;
            return 100;
        }
    }
    else if(ch == 3)
    {
        // Set the other channels' gain to zero.
        CH1_G000;
        CH2_G000;
        CH4_G000;
        switch(g)
        {
        case 0:
            CH3_G000;
            return 0;
        case 1:
            CH3_G001;
            return 1;
        case 2:
            CH3_G002;
            return 2;
        case 5:
            CH3_G005;
            return 5;
        case 10:
            CH3_G010;
            return 10;
        case 20:
            CH3_G020;
            return 20;
        case 50:
            CH3_G050;
            return 50;
        case 100:
        default:        // Defaults to 100.
            CH3_G100;
            return 100;
        }
    }
    else if(ch == 4)
    {
        // Set the other channels' gain to zero.
        CH1_G000;
        CH2_G000;
        CH3_G000;
        switch(g)
        {
        case 0:
            CH4_G000;
            return 0;
        case 1:
            CH4_G001;
            return 1;
        case 2:
            CH4_G002;
            return 2;
        case 5:
            CH4_G005;
            return 5;
        case 10:
            CH4_G010;
            return 10;
        case 20:
            CH4_G020;
            return 20;
        case 50:
            CH4_G050;
            return 50;
        case 100:
        default:        // Defaults to 100.
            CH4_G100;
            return 100;
        }
    }
    //Invalid Channel case, return 0xFFFF to indicate fail.
    return 0xFFFF;
};


#endif /* INC_GPIO_H_ */
