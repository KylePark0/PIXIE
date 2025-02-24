//===========================================================================================================================================
/*
 * state.h
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "state.h" declares macros and functions to implement a basic state machine to control how received commands interact with the
 *      device. The state machine does not strictly control any hardware besides the indicator LED (disabled while running), it is
 *      simply set alongside the major flow-controlling peripherals (i.e.: DMA) and cleared to IDLE when appropriate.
 *
 */
//===========================================================================================================================================
#ifndef INC_STATE_H_
#define INC_STATE_H_
//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Constants
//===========================================================================================================================================
#define STATE_IDLE  ((uint16_t)0x0000)
#define STATE_FLOOD ((uint16_t)0x0001)
#define STATE_RUN   ((uint16_t)0x0002)
#define STATE_SPOOF ((uint16_t)0x0004)

//===========================================================================================================================================
// Global Strings
//===========================================================================================================================================
extern const char* STATE_StateIdleStr;
extern const char* STATE_StateRunStr;
extern const char* STATE_StateFloodStr;
extern const char* STATE_StateSpoofStr;

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void        STATE_InitializeState(void);
uint16_t    STATE_SetState(uint16_t newstate);
uint16_t    STATE_GetState(void);
uint16_t    STATE_IsIdle(void);
uint16_t    STATE_IsFlood(void);
uint16_t    STATE_IsRunning(void);
const char* STATE_GetStateName(void);

#endif /* INC_STATE_H_ */
