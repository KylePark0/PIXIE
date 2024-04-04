//===========================================================================================================================================
/*
 * bak.h
 *
 *  Created on: Jul 6, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "bak.h" provides access to the "RAM Time" structure MAIN_CurrentTime if included in code besides "main.c". It also declares
 *      the functions used to backup and restore data from the MSP430's battery backed registers.
 *
 */
//===========================================================================================================================================
#ifndef INC_BAK_H_
#define INC_BAK_H_

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
// Platform Specific Includes
#include "pixie.h"

// Hardware and Peripherals
#include "clk.h"

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
// Externalizes the "RAM Time" structure declared in "main.c"
extern CLK_TimeStamp MAIN_CurrentTime;

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
uint16_t BAK_AssessBatteryBackup(void);
void     BAK_CommitBatteryBackup(void);

#endif /* INC_BAK_H_ */
