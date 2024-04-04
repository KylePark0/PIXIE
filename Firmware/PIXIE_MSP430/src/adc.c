//===========================================================================================================================================
/*
 * adc.c
 *
 *  Created on: Apr 29, 2023
 *      Authors: K. Park, V. Sieben
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "adc.c" contains local macros that map logical input pins to their physical pins on the MSP430 chip, and functions that
 *      configure the MSP430's single Continuous-Time Sigma-Delta (CTSD) analog to digital converter (ADC). This code also handles
 *      setting the actual hardware gain setting depending on the logical setting determined per-channel by the type of measurement
 *      being performed.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "adc.h"

//===========================================================================================================================================
// Local Constants
//===========================================================================================================================================
//Remapping: CH1 ADC outputs to A5 (P5.6)
#define ADC_CH1_PDINCH (CTSD16INCH_5)
//Remapping: CH2 ADC outputs to A4 (P5.1)
#define ADC_CH2_PDINCH (CTSD16INCH_4)
//Remapping: CH3 ADC outputs to A1 (P6.1)
#define ADC_CH3_PDINCH (CTSD16INCH_1)
//Remapping: CH4 ADC outputs to A0 (P6.0)
#define ADC_CH4_PDINCH (CTSD16INCH_0)

//===========================================================================================================================================
// void ADC_InitializeADC(void)
//
//  "Cold-start" initializer for the ADC. ADC_ResetADC() is called to actually set the configuration registers, this function simply
//  clears everything first.
//
//===========================================================================================================================================
void ADC_InitializeADC(void)
{
    // Initialize Registers
    CTSD16CTL       = 0x0000;
    CTSD16CCTL0     = 0x0000;
    CTSD16INCTL0    = 0x0000;

    // Setup ADC subsystems.
    ADC_ResetADC();

    return;
};

//===========================================================================================================================================
// void ADC_ResetADC(void)
//
//  Configures the CTSD16 for 8192 Hz sampling of the raw flourescence signal measured by the selected photodiode/amplifier.
//  Also handles delay at startup to account for known errata in the MSP430FG6626.
//
//===========================================================================================================================================
void ADC_ResetADC(void)
{
    // Setup registers for CTSD
    CTSD16CTL = 0x0000;               // Use external voltage reference, VeREF+.

    // Single ended 0V to 2xVref = 0x8000 to 0x7FFF;  p. 804 family guide
    // Vref is connected to negative diff. channel.

    // Select alternate port function for P5.0, VeREF+.
    P5SEL          |= BIT0;

    // Secondary functions enable the single-ended ADC inputs on the following pins/ports
    P6SEL          |= BIT0 | BIT1;                     // P6.0 = A0, P6.1 = A1
    P5SEL          |= BIT1 | BIT6;                     // P5.1 = A4, P5.6 = A5

    // CTSD16: LockIn ADC.
    //  MSP430FG6626 only has one CTSD16 core, CTSD160.
    //  LockIn ADC selects from pins (A0, A1, A4, A5) as needed.

    //  Want to use as large an Oversampling Ratio as possible (OSR = 256), but this is too much for
    //  the required ADC sample rate. Use OSR = 128 instead.
    CTSD16CCTL0     = CTSD16DF|CTSD16OSR0;             // 2s complement representation in CTSD16MEM0

    // Select A0 to begin and Gain to x1
    CTSD16INCTL0    = CTSD16INCH_0 | CTSD16GAIN_1;

    //  Errata: do before firing up XTals clocks so that oscillator faults detectable
    __delay_cycles(18432);                             // Delay ~1.0 ms for 1.8 V ref to settle
    CTSD16CCTL0 |= CTSD16SC;                           // Start conversion for CTSD
    do                                                 // Workaround for errata CTSD16OFFG
    {
        CTSD16CTL &= ~CTSD16OFFG;
    } while (CTSD16CTL&CTSD16OFFG);                    // End of errata workaround for CTSD16OFFG

    return;
};

//===========================================================================================================================================
// void ADC_SetADCChannel(uint16_t ch, uint16_t gain)
//
//  Sets the hardware ADC input pin to the logical/fluorometer channel indicated by ch, and sets the channel's hardware Gain to gain.
//
//===========================================================================================================================================
void ADC_SetADCChannel(uint16_t ch, uint16_t gain)
{
    // Stop Conversions.
    CTSD16CCTL0 &= ~(CTSD16SC);

    // Switch input channel.
    switch(ch)
    {
    case 4:
        //CTSD16INCTL0    = CTSD16INCH_5; //P5.6 == A5 == Photodiode 4 channel.
        CTSD16INCTL0    = ADC_CH4_PDINCH;
        break;
    case 3:
        //CTSD16INCTL0    = CTSD16INCH_4; //P5.1 == A4 == Photodiode 3 channel.
        CTSD16INCTL0    = ADC_CH3_PDINCH;
        break;
    case 2:
        //CTSD16INCTL0    = CTSD16INCH_1; //P6.1 == A1 == Photodiode 2 channel.
        CTSD16INCTL0    = ADC_CH2_PDINCH;
        break;
    case 1:
    default:                            // Set to channel 1 by default.
        //CTSD16INCTL0    = CTSD16INCH_0; //P6.0 == A0 == Photodiode 1 channel.
        CTSD16INCTL0    = ADC_CH1_PDINCH;
        break;
    }

    // Set channel gain.
    switch(gain)
    {
    case 16:
        CTSD16INCTL0    |= CTSD16GAIN_16;//Differential gain == 16;
        break;
    case 8:
        CTSD16INCTL0    |= CTSD16GAIN_8; //Differential gain == 8;
        break;
    case 4:
        CTSD16INCTL0    |= CTSD16GAIN_4; //Differential gain == 4.
        break;
    case 2:
        CTSD16INCTL0    |= CTSD16GAIN_2; //Differential gain == 2.
        break;
    case 1:
    default:                             //Default to unity gain.
        CTSD16INCTL0    |= CTSD16GAIN_1; //Differential gain == 1.
        break;
    }

    // Restart Conversions and return.
    CTSD16CCTL0 |= CTSD16SC;
    return;
}

//===========================================================================================================================================
// uint16_t ADC_CheckChannelGain(uint16_t ch, uint16_t gain)
//
//  Checks to see if a given channel (ch) and gain (gain) pair are valid. If the combination is valid: that is, ch represents an actual
//  fluorometer channel [1,4] and gain is either zero or a valid gain setting (1,2,4,8, or 16), the function returns the queried gain.
//  If either the channel or gain is invalid, 0xFFFF is returned as an error code. This function does not set any ADC registers itself,
//  is only a validity check.
//
//===========================================================================================================================================
uint16_t ADC_CheckChannelGain(uint16_t ch, uint16_t gain)
{
    if(ch > 4 || ch == 0)
    {
        return 0xFFFF;
    }
    //Channel selection is valid so set the gain to the nearest value
    switch(gain)
    {
    case 0: //0 is not valid but we'll use it as a default to set the gain to 1.
        return 1;
    case 1:
    case 2:
    case 4:
    case 8:
    case 16:
        return gain;
    default:
        return 0xFFFF;
    }
};
