//===========================================================================================================================================
/*
 * clk.h
 *
 *  Created on: Apr 29, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "clk.h" declares functions for initialization and configuration of the real time clock (RTC). It also defines a type for
 *      encapsulating a time stamp as offered in the format of the RTC registers (1 integer per date element, as opposed to one big number
 *      for something like UNIX Epoch time). This structure is used to retrieve and store RAM values of the current time from the RTC clock
 *      as a buffer, since requesting reads from the RTC at bad times can cause glitches. The MAIN_CurrentTime instance of this struct
 *      interacts with the RTC registers every time the RTC ISR is serviced: it either fetches the current time in the register or replaces
 *      the register values with updates. This program flow is controlled by CLK_GetRTC() and CLK_SetRTC(), respectively.
 *
 */
//===========================================================================================================================================
#ifndef INC_CLK_H_
#define INC_CLK_H_

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Constants (Enumeration)
//===========================================================================================================================================
#define CLK_FLAG_SET (1)
#define CLK_FLAG_GET (2)

//===========================================================================================================================================
// Typedefs
//===========================================================================================================================================
// Storage struct for time stamps.
typedef struct
{
    uint16_t    year;
    uint16_t    month;
    uint16_t    day;
    uint16_t    hour;
    uint16_t    min;
    uint16_t    sec;
} CLK_TimeStamp;

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void CLK_InitializeCLK(void);
void CLK_SetRTC(CLK_TimeStamp* time);
void CLK_GetRTC(CLK_TimeStamp* time);

#endif /* INC_CLK_H_ */
