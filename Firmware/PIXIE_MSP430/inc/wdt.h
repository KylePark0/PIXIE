//===========================================================================================================================================
/*
 * wdt.h
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "wdt.h" declares two functions to interact with the device's Watchdog Timer (WDT). Under normal operation, the WDT is disabled.
 *      The initialize function simply ensures the WDT is disabled. The WDT_SoftwareReset() function is called to deliberately write to
 *      the WDT register illegally, which forces the device to trigger an WDT Reset. This effectively makes the function equivalent to
 *      a software reset (more technically, it is a software-triggered hardware reset, but I'm just being pedantic...).
 *
 */
//===========================================================================================================================================
#ifndef INC_WDT_H_
#define INC_WDT_H_
//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void        WDT_InitializeWDT(void);
inline void WDT_SoftwareReset(void);

#endif /* INC_WDT_H_ */
