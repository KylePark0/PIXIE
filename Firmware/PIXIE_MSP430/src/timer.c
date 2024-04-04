//===========================================================================================================================================
/*
 * timer.c
 *
 *  Created on: Apr 29, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "timer.c" declares functions for initializing and configuring, starting, stopping, and resetting 3 timers used by PIXIE. The timers
 *      are used to synchronously generate the ADC and DAC triggers at 8192 and 16384 Hz, respectively. Timer0 is hardware TimerA0. Timer1
 *      is hardware TimerA1. Timer2 is hardware TimerB0. TimerB0 is only used for debugging and benchmarking, so it is free to configure
 *      as desired.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "timer.h"

//===========================================================================================================================================
// void TIMER_InitializeTimers(void)
//
//  Initializes Timer0 (TimerA0) and Timer1 (TimerA1). TimerB0 is currently uninitialized. TimerA0 controls the ADC DMA transfer,
//  whereas TimerA1 controls the DAC DMA transfers.
//
//===========================================================================================================================================
void TIMER_InitializeTimers(void)
{
    // Setup 16-bit Timer A0 ----------------------------------------------------------------------------------
    //  TimerA0 works as a trigger for DMA2 to retrieve samples from the ADC into a linear buffer. Once the
    //  buffer is full, the DMA can trigger an interrupt, thereby setting the analysis rate of the sensor
    //  as (Sample Rate) / (Buffer Size).
    //
    //  In this case, we have 8192 [samples / sec] / 32 [samples / wave] = 512 waves / sec
    //
    //  If we capture 32 waves per analysis point, the analysis rate is then:
    //  512 [waves / sec] / 32 [waves / analysis] = 16 analyses / second or 0.0625 seconds per analysis.
    //  Since MCLOCK = 18,432,000 Hz, this gives 0.0625 * MCLOCK = 1152000 cycles per analysis, which is huge.
    //
    TA0CCR0     = 2249; //18432000 Hz / (2249 + 1) = 8192 Hz ADC sample rate.
    TA0CTL      = TASSEL_2 | ID_0;

    // Setup 16-bit Timer A1 ----------------------------------------------------------------------------------
    //  TimerA1 works as a trigger for DMA0 and DMA1 to reload DAC0 and DAC1 with a circular buffer containing
    //  the signal used to drive the LEDs.
    //
    //  The DAC sample rate is 16.384 kHz, or 2x the ADC sample rate. This is to improve the overall
    //  reconstruction of the continuous time excitation signal. That is, the ZOH response more accurately
    //  approximates the response of the ideal sinc reconstruction filter.
    //
    TA1CCR0     = 1124; //18432000 Hz / (1124 + 1) / 32 samples per wave = 512 Hz
    TA1CTL      = TASSEL_2 | ID_0;

    // Setup 16-bit Timer B0 ----------------------------------------------------------------------------------
    //  TimerB0 has been reserved for benchmarking / debugging purposes. It is free to configure as needed.
    return;
};

//===========================================================================================================================================
// void TIMER_StartTimer0(void)
//
//  "Cold-start" Timer0 by resetting the timer register, and setting the control register to begin counting.
//
//===========================================================================================================================================
//Aggressive cold-start Start and Reset functions.
void TIMER_StartTimer0(void)
{
    TA0R        = 0;
    TA0CTL      = (TASSEL_2|ID_0|MC_1);
};

//===========================================================================================================================================
// void TIMER_StartTimer1(void)
//
//  "Cold-start" Timer1 by resetting the timer register, and setting the control register to begin counting.
//
//===========================================================================================================================================
void TIMER_StartTimer1(void)
{
    TA1R        = 0;
    TA1CTL      = (TASSEL_2|ID_0|MC_1);
};

//===========================================================================================================================================
// void TIMER_StartTimer2(void)
//
//  "Cold-start" Timer2 by resetting the timer register, and setting the control register to begin counting.
//
//===========================================================================================================================================
void TIMER_StartTimer2(void)
{
    TB0R        = 0;
    TB0CTL      = (TASSEL_2|ID_3|MC_2); //use mclk = 18.432MHz / 8 precale = 2304000 Hz;
};

//===========================================================================================================================================
// void TIMER_StartTimer0AND1(void)
//
//  "Cold-start" Timers 0 and 1 setting the control registers back-to-back. The DAC timer, Timer1(TimerA1) is enabled first so
//  that the DAC has incrementally more time to stabilize before ADC conversions start.
//
//===========================================================================================================================================
void TIMER_StartTimer0AND1(void)
{
    TA0R        = 0; //todo could offset this by a couple cycles (maybe 3?) to ensure synchronization.
    TA1R        = 0;
    TA1CTL      = (TASSEL_2|ID_0|MC_1);
    TA0CTL      = (TASSEL_2|ID_0|MC_1);
};

//===========================================================================================================================================
// void TIMER_StopTimer0(void)
//
//  Stops Timer0, but does not reset the timer register.
//
//===========================================================================================================================================
void TIMER_StopTimer0(void)
{
    TA0CTL &= ~(MC_1);
};

//===========================================================================================================================================
// void TIMER_StopTimer1(void)
//
//  Stops Timer1, but does not reset the timer register.
//
//===========================================================================================================================================
void TIMER_StopTimer1(void)
{
    TA1CTL &= ~(MC_1);
};

//===========================================================================================================================================
// void TIMER_StopTimer2(void)
//
//  Stops Timer2, but does not reset the timer register.
//
//===========================================================================================================================================
void TIMER_StopTimer2(void)
{
    TB0CTL &= ~(MC_2);
};

//===========================================================================================================================================
// void TIMER_ResetTimer0(void)
//
//  Stops Timer0, clears the timer register, and clears any pending interrupts.
//
//===========================================================================================================================================
void TIMER_ResetTimer0(void)
{
    TA0CTL     |= (TACLR); //Clear Timer and Counter.
    TA0CTL      = 0;       //Clear pending interrupts:
    TA0CCTL0    = 0;       //
};

//===========================================================================================================================================
// void TIMER_ResetTimer1(void)
//
//  Stops Timer1, clears the timer register, and clears any pending interrupts.
//
//===========================================================================================================================================
void TIMER_ResetTimer1(void)
{
    TA1CTL     |= (TACLR); //Clear Timer and Counter.
    TA1CTL      = 0;       //Clear pending interrupts:
    TA1CCTL0    = 0;       //
};

//===========================================================================================================================================
// void TIMER_ResetTimer2(void)
//
//  Stops Timer2, clears the timer register, and clears any pending interrupts.
//
//===========================================================================================================================================
void TIMER_ResetTimer2(void)
{
    TB0CTL     |= (TACLR); //Clear Timer and Counter.
    TB0CTL      = 0;       //Clear pending interrupts:
    TB0CCTL0    = 0;       //
};
