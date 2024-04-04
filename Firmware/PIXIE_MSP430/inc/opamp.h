//===========================================================================================================================================
/*
 * opamp.h
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "opamp.h" declares the function used to setup the integrated OpAmp used to control the PIXIE's constant current driver.
 *
 */
//===========================================================================================================================================
#ifndef INC_OPAMP_H_
#define INC_OPAMP_H_
//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void OPAMP_InitializeOPAMP(void);

#endif /* INC_OPAMP_H_ */
