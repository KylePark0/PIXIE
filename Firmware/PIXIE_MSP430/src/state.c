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
 *      "state.h" defines macros and functions to implement a basic state machine to control how received commands interact with the
 *      device. The state machine does not strictly control any hardware besides the indicator LED (disabled while running), it is
 *      simply set alongside the major flow-controlling peripherals (i.e.: DMA) and cleared to IDLE when appropriate.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "state.h"

//===========================================================================================================================================
// Local "Device State" variable
//===========================================================================================================================================
// This variable is "set" and "get" via functions only.
volatile uint16_t STATE_DeviceState = STATE_IDLE;

//===========================================================================================================================================
// Global Strings
//===========================================================================================================================================
// Strings associated with each defined device state.
const char* STATE_StateIdleStr   = "IDLE";
const char* STATE_StateFloodStr  = "FLOOD";
const char* STATE_StateRunStr    = "RUN";
const char* STATE_StateSpoofStr  = "SPOOF";

//===========================================================================================================================================
// void STATE_InitializeState(void)
//
//  Initializes the Device State variable by setting it to IDLE.
//
//===========================================================================================================================================
void STATE_InitializeState(void)
{
    STATE_SetState(STATE_IDLE);
    return;
};

//===========================================================================================================================================
// uint16_t STATE_SetState(uint16_t newstate)
//
//  Sets the Device State variable to newstate. If newstate is IDLE, the status LED is enabled - all other states disable
//  the blinker. The return value is the same as the input argument, newstate.
//
//===========================================================================================================================================
uint16_t STATE_SetState(uint16_t newstate)
{
    switch((STATE_DeviceState = newstate))
    {
    case STATE_IDLE:
        //When idle, enable the Status LED Blinker.
        P1DIR |= BIT0;
        return STATE_DeviceState;
    default:
        //When any state besides idle, disable the Status LED Blinker.
        //todo we could turn the LED solid-on for a fault state, etc. by adding a case.
        P1DIR &= ~BIT0;
        return STATE_DeviceState;
    }
};

//===========================================================================================================================================
// uint16_t STATE_GetState(void)
//
//  Retrieves and returns a read-only copy of the Device State variable.
//
//===========================================================================================================================================
uint16_t STATE_GetState(void)
{

    return STATE_DeviceState;
};

//===========================================================================================================================================
// uint16_t STATE_IsIdle(void)
//
//  Boolean check if the Device State is strictly IDLE.
//
//===========================================================================================================================================
uint16_t STATE_IsIdle(void)
{
    return (STATE_DeviceState == STATE_IDLE);
};

//===========================================================================================================================================
// uint16_t STATE_IsFlood(void)
//
//  Boolean check if the Device State is strictly FLOOD.
//
//===========================================================================================================================================
uint16_t STATE_IsFlood(void)
{
    return (STATE_DeviceState == STATE_FLOOD);
};

//===========================================================================================================================================
// uint16_t STATE_IsRunning(void)
//
//  Boolean check if the Device State is either RUN or SPOOF.
//
//===========================================================================================================================================
uint16_t STATE_IsRunning(void)
{
    return STATE_DeviceState & (STATE_RUN | STATE_SPOOF);
};

//===========================================================================================================================================
// const char* STATE_GetStateName(void)
//
//  Returns the const. C-string of the current state's name.
//
//===========================================================================================================================================
const char* STATE_GetStateName(void)
{
    switch(STATE_DeviceState)
    {
    case STATE_IDLE:
        return STATE_StateIdleStr;
    case STATE_RUN:
        return STATE_StateRunStr;
    case STATE_FLOOD:
        return STATE_StateFloodStr;
    case STATE_SPOOF:
        return STATE_StateSpoofStr;
    default:
        return STATE_StateIdleStr;
    }
};
