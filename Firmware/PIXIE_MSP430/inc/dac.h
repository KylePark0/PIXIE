//===========================================================================================================================================
/*
 * dac.h
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "dac.h" declares the function used to initialize the two DAC channels used by the device: DAC0 is used to drive the constant-current
 *      driver and subsequently the channel LEDs. DAC1 is used only for debugging and can be safely disabled.
 *
 */
//===========================================================================================================================================
#ifndef INC_DAC_H_
#define INC_DAC_H_
//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void DAC_InitializeDAC(void);

#endif /* INC_DAC_H_ */
