//===========================================================================================================================================
/*
 * clk.c
 *
 *  Created on: Apr 29, 2023
 *      Author: V. Sieben, J. Smith, K. Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "clk.h" defines functions for initialization and configuration of the real time clock (RTC). It also takes a preliminary look
 *      to see if the backup memory has been cleared due to a battery or oscillator fault. If a fault is suspected, the backup memory
 *      is cleared and the RTC oscillator is carefully restarted.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "clk.h"

//===========================================================================================================================================
// void CLK_InitializeCLK(void)
//  Attempts to initialize the RTC clock. This function is only called during startup / reset, so if the clocks are running or the
//  backup memory appears to be valid, only minimal initialization of the clock and its interrupt register is needed. The
//  the backup memory appears invalid, it is wiped and the RTC registers are reset to a default date and time. The oscillator fault
//  flags are cleared and the RTC clock is carefully restarted.
//
//===========================================================================================================================================
void CLK_InitializeCLK(void)
{
    // Initialize crystal and RTC before clearing LOCKBAK so RTC is retained
    UCSCTL6 = XT1DRIVE_3;                     // Hard drive the crystal
    // Init RTC
    RTCCTL01 |= RTCHOLD;                      // Keep RTC running while clearing LOCKBAK

    while(BAKCTL & LOCKBAK)                   // Unlock XT1 pins for operation
        BAKCTL &= ~(LOCKBAK);                  // Battery Backup subsystem not locked (locked on power-up by default)

    // Check if RTC is still good. Note: bakmem0 is cleared by debugger!
    if((BAKMEM0 != 0x0000) && !(RTCCTL01 & RTCOFIFG) && (RTCCTL2 & RTCCALS))
    {
        // RTC retained
        UCSCTL6 &= ~(XT1OFF);                     // XT1 On
        //UCSCTL6 |= XCAP_3;                      // Internal load cap for XT1 in LF mode,
        // XCAP_3 = 12pF, XCAP_2 = 8.5pF, XCAP_1 = 5.5pF, XCAP_0 = 1pF
        // UCSCTL3 = 0 for frequency locked loop (FLL) clock ref. select;

        P7SEL |= BIT2 | BIT3;                     // Port select XT2, BIT 2, 3 on port 7
        UCSCTL6 &= ~(XT2OFF);                     // XT2 On
        // Loop until XT1,XT2 & DCO stabilizes - In this case loop until XT1 and DCo settle
        do
        {
            UCSCTL7 &= ~(XT2OFFG | XT1LFOFFG | DCOFFG);
            // Clear XT2,XT1,DCO fault flags
            SFRIFG1 &= ~OFIFG;                      // Clear fault flags
        }while (SFRIFG1&OFIFG);                   // Test oscillator fault flag

        //RTCCTL01 |= RTCRDYIE + RTCBCD + RTCHOLD;  // BCD mode, RTC hold, enable RTC read ready interrupt
        RTCCTL01 |= RTCRDYIE + RTCHOLD;  // hexadecimal mode, RTC hold, enable RTC read ready interrupt
        RTCCTL01 &= ~(RTCHOLD);                   // Start RTC calendar mode
    }
    else  // Must reset Oscillator and RTC in case oscillator fault occured
    {
        //clear the oscillator faults
        UCSCTL6 &= ~(XT1OFF);                     // XT1 On
        //UCSCTL6 |= XCAP_3;                      // Internal load cap for XT1 in LF mode,
        // XCAP_3 = 12pF, XCAP_2 = 8.5pF, XCAP_1 = 5.5pF, XCAP_0 = 1pF
        // UCSCTL3 = 0 for frequency locked loop (FLL) clock ref. select;

        P7SEL |= BIT2 | BIT3;                     // Port select XT2, BIT 2, 3 on port 7
        UCSCTL6 &= ~(XT2OFF);                     // XT2 On

        // Loop until XT1,XT2 & DCO stabilizes - In this case loop until XT1 and DCo settle
        do
        {
            UCSCTL7 &= ~(XT2OFFG | XT1LFOFFG | DCOFFG);
            // Clear XT2,XT1,DCO fault flags
            SFRIFG1 &= ~OFIFG;                      // Clear fault flags
        }while (SFRIFG1&OFIFG);                   // Test oscillator fault flag

        // Configure RTC_B
        RTCCTL01 |= RTCRDYIE + RTCHOLD;  // hexadecimal mode, RTC hold, enable RTC read ready interrupt

        // Set the default RTC value
        //  To avoid pointless BDC-to-Hex conversions on readout, just store the registers in
        //  binary/hex mode.
        //  todo this setting should probably be consolidated with the battery backup code...
        RTCYEAR = 2024;                             // Year = 0x07E8
        RTCMON  = 2;                                // Month = 0x02 = February
        RTCDAY  = 14;                               // Day = 0x0E = 14th
        RTCDOW  = 3;                                // Day of week = 0x03 = Wednesday
        RTCHOUR = 13;                               // Hour = 0x0D = 1300
        RTCMIN  = 45;                               // Minute = 0x2D = 45
        RTCSEC  = 56;                               // Seconds = 0x38 = :56

        RTCCTL01 &= ~(RTCHOLD);                     // Start RTC calendar mode

        RTCCTL2 |= RTCCALS;                         // Set bit for checking on switch

        BAKMEM0 = 0xDEFA;                           // Write in the signature 0xDEFAult.
        BAKMEM1 = 0x0000;                           // this change will be picked up by BAK_AssessBatteryBackup()
        BAKMEM2 = 0x0000;                           // to prompt a full reset of the backup memory.
        BAKMEM3 = 0x0000;
    }

    UCSCTL6 &= ~(XT1DRIVE_3);                 // XT1 is now stable, reduce drive strength
    UCSCTL6 &= 0xBFFF;                        // XT2 is now stable, reduce drive strength
    // For 16-24 MHz, and XT2 crystal is 18.4320 MHz

    // Set system clocks
    UCSCTL4 |= SELA_0 | SELS_5 | SELM_5;      // Auxiliary Clock, ACLK = XT1CLK-LF
    // Subsystem Master Clock, SMCLK = default DCO DCOCLKDIV = SELS_4, XT2 = SELS_5
    // Master Clock, MCLK = default DCO DCOCLKDIV = SELM_4, XT2 = SELM_5
    return;
};

//===========================================================================================================================================
// void CLK_SetRTC(void)
//
//  Updates the RTC registers with a new timestamp pointed-at by *time. The RTC is paused during the call because
//  the prior values are no longer valid.
//
//===========================================================================================================================================
void CLK_SetRTC(CLK_TimeStamp* time)
{
    RTCCTL1 != RTCHOLD; // pause the RTC.

    RTCYEAR     = (uint16_t)time->year;
    RTCMON      = (uint16_t)time->month;
    RTCDAY      = (uint16_t)time->day;
    RTCHOUR     = (uint16_t)time->hour;
    RTCMIN      = (uint16_t)time->min;
    RTCSEC      = (uint16_t)time->sec;

    RTCCTL1 &= ~(RTCHOLD); // unpause the RTC and return.
    return;
};

//===========================================================================================================================================
// void CLK_SetRTC(void)
//
//  Fills the pointed-at timestamp *time with the current values of the RTC registers. This function is only called in the RTC
//  ISR, so this call is guaranteed to be safe in terms of RTC glitches.
//
//===========================================================================================================================================
void CLK_GetRTC(CLK_TimeStamp* time)
{
    time->year  = RTCYEAR;
    time->month = RTCMON;
    time->day   = RTCDAY;
    time->hour  = RTCHOUR;
    time->min   = RTCMIN;
    time->sec   = RTCSEC;

    return;
};
