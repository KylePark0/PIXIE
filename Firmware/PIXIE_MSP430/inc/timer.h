//===========================================================================================================================================
/*
 * timer.h
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "timer.h" declares functions for initializing and configuring, starting, stopping, and resetting 3 timers used by PIXIE. The timers
 *      are used to synchronously generate the ADC and DAC triggers at 8192 and 16384 Hz, respectively. Timer0 is hardware TimerA0. Timer1
 *      is hardware TimerA1. Timer2 is hardware TimerB0. TimerB0 is only used for debugging and benchmarking, so it is free to configure
 *      as desired.
 *
 */
//===========================================================================================================================================
#ifndef INC_TIMER_H_
#define INC_TIMER_H_
//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void TIMER_InitializeTimers(void);

void TIMER_StartTimer0(void);
void TIMER_StartTimer1(void);
void TIMER_StartTimer2(void);

void TIMER_StartTimer0AND1(void);

void TIMER_StopTimer0(void);
void TIMER_StopTimer1(void);
void TIMER_StopTimer2(void);

void TIMER_ResetTimer0(void);
void TIMER_ResetTimer1(void);
void TIMER_ResetTimer2(void);

#endif /* INC_TIMER_H_ */
