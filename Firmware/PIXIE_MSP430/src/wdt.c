//===========================================================================================================================================
/*
 * wdt.c
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "wdt.c" defines two functions to interact with the device's Watchdog Timer (WDT). Under normal operation, the WDT is disabled.
 *      The initialize function simply ensures the WDT is disabled. The WDT_SoftwareReset() function is called to deliberately write to
 *      the WDT register illegally, which forces the device to trigger an WDT Reset. This effectively makes the function equivalent to
 *      a software reset (more technically, it is a software-triggered hardware reset, but I'm just being pedantic...).
 *
 */
//===========================================================================================================================================
#include "wdt.h"

//===========================================================================================================================================
// void WDT_InitializeWDT(void)
//
//  Stops the functionality of the WDT altogether.
//
//===========================================================================================================================================
void WDT_InitializeWDT(void)
{
    WDTCTL = WDTPW | WDTHOLD;       // Must write to WDTPW password bits correctly in order to configure the WDT.
    return;
};

//===========================================================================================================================================
// void WDT_InitializeWDT(void)
//
//  Attempts to write to the WDT control register with an incorrect password, triggering a WDT reset.
//
//===========================================================================================================================================
inline void WDT_SoftwareReset(void)
{
    WDTCTL = 0xFFFF;                // By writing to WDTCTL without correct password, a watchdog reset is triggered.
};
