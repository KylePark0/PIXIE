//===========================================================================================================================================
/*
 * dac.c
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "dac.c" defines the function used to initialize the two DAC channels used by the device: DAC0 is used to drive the constant-current
 *      driver and subsequently the channel LEDs. DAC1 is used only for debugging and can be safely disabled. The initializer is broken
 *      out into two local functions, though these are inline functions for the sake of clarity / ease of removal in the case of DAC1.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "dac.h"

//===========================================================================================================================================
// Function Declarations (Prototypes)
//===========================================================================================================================================
inline void InitializeDAC0(void);
inline void InitializeDAC1(void);

//===========================================================================================================================================
// void DAC_InitializeDAC(void)
//
//  Calls Initializers for DAC0 and DAC1. In cases where DAC1 is not needed for debugging, it can safely be removed/disabled here.
//
//===========================================================================================================================================
void DAC_InitializeDAC(void)
{
    InitializeDAC0();
    InitializeDAC1();
    return;
};

//===========================================================================================================================================
// inline void InitializeDAC0(void)
//
//  Initializer for DAC0.
//
//===========================================================================================================================================
inline void InitializeDAC0(void)
{
    DAC12_0CTL0 = DAC12IR | DAC12SREF_2 | DAC12AMP_5 | DAC12ENC | DAC12CALON | DAC12OPS;
    // DAC12OPS, DAC output select, uses P2.0, instead of P5.1, and P2.1 instead of P5.6
    // DAC12CALON, DAC calibration on, initiates calibration then deactivates (time consuming action)
    // DAC12ENC, DAC enable conversion - turn on
    // DAC12AMP_5, DAC amplification, settling time vs. current
    // DAC12SREF_2, DAC select reference voltage, VeREF+ = 1.8V
    // DAC12IR, DAC input range, 1x reference voltage

    // Set DAC outputs to zero
    DAC12_0DAT = 0;
};

//===========================================================================================================================================
// inline void InitializeDAC1(void)
//
//  Initializer for DAC1.
//
//===========================================================================================================================================
inline void InitializeDAC1(void)
{
    DAC12_1CTL0 = DAC12IR | DAC12SREF_2 | DAC12AMP_5 | DAC12ENC | DAC12CALON | DAC12OPS;
    // DAC12OPS, DAC output select, uses P2.0, instead of P5.1, and P2.1 instead of P5.6
    // DAC12CALON, DAC calibration on, initiates calibration then deactivates (time consuming action)
    // DAC12ENC, DAC enable conversion - turn on
    // DAC12AMP_5, DAC amplification, settling time vs. current
    // DAC12SREF_2, DAC select reference voltage, VeREF+ = 1.8V
    // DAC12IR, DAC input range, 1x reference voltage

    // Set DAC outputs to zero
    DAC12_1DAT = 0;
};
