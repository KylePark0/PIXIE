//===========================================================================================================================================
/*
 * opamp.c
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "opamp.c" defines the function used to setup the integrated OpAmp used to control the PIXIE's constant current driver.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "opamp.h"

//===========================================================================================================================================
// void OPAMP_InitializeOPAMP(void)
//
//  Initializes the secondary pin functions for OpAmp 0 (OA0), defining the non-inverting input, the inverting input, and the output.
//  Enables the amplifier; as an analog device it requires no further interaction unless reset.
//
//===========================================================================================================================================
void OPAMP_InitializeOPAMP(void)
{
    P6SEL |= BIT2 | BIT5;                     // Select P6.2 (OA0IP) and P6.5 (OA0IN) function

    OA0PSW = PSW0;                            // Select OA0IP0 as "+" input
    OA0NSW = NSW0;                            // Select OA0IN0 as "-" input
    OA0CTL0 = OAM;                            // Enable OA0 amplifier
    return;
};
