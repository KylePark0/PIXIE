//===========================================================================================================================================
/*
 * pixie.h
 *
 *  Created on: Apr 28, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "pixie.h" is the only intentionally global include across all project C/ASM files, besides standard libraries and <msp430.h>.
 *      Its purpose is to handle configurations made by the operator, depending on how they assembled the PIXIE hardware. By default,
 *      Channel 1 is a "Phycocyanin" channel, Channel 2 is a "Rhodamine" channel, Channel 3 is a "Chlorophyll-a" channel, and Channel 4
 *      is a "Crude Oil/fDOM" channel.
 *
 *      Some fields are intended to be customizable, whereas some are not. The differences are labeled clearly.
 */
//===========================================================================================================================================
#ifndef INC_PIXIE_H_
#define INC_PIXIE_H_

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
// Hardware Specific Includes
#include <msp430.h>

// C-Standard Includes
#include <stdint.h>
#include <stdlib.h>

//===========================================================================================================================================
// Global Macros
//===========================================================================================================================================
#define true                            (0x0001)
#define false                           (0x0000)
#define min(a,b)                        ((a) > (b) ? (b) : (a))
#define max(a,b)                        ((a) > (b) ? (a) : (b))

//===========================================================================================================================================
// Global Constants
//===========================================================================================================================================
// These values MUST NOT be changed. They are defined for code clarity only; adjusting these without a total
// rework of the hardware (ADC/DAC/DMA/Timer) logic and DSP code will cause the device to fail.
#define MAIN_ADCBUFFER_SIZE             (512)
#define MAIN_DACBUFFER_SIZE             (32)
#define MAIN_REFCNT_LOCKIN              (16)

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
// Makes the symbols defined in "main.c" globally accessible.
extern volatile uint16_t   MAIN_ResetFlag;

extern volatile uint16_t*  MAIN_DACBuffer;
extern volatile int16_t    MAIN_ADCBuffer[MAIN_ADCBUFFER_SIZE];

extern volatile int32_t    MAIN_LockInXRef[MAIN_REFCNT_LOCKIN];
extern volatile int32_t    MAIN_LockInYRef[MAIN_REFCNT_LOCKIN];

extern volatile int32_t    MAIN_FilterTap1;
extern volatile int32_t    MAIN_FilterTap2;

extern volatile int32_t    MAIN_XFilterTap1;
extern volatile int32_t    MAIN_XFilterTap2;
extern volatile int32_t    MAIN_YFilterTap1;
extern volatile int32_t    MAIN_YFilterTap2;

extern volatile int16_t    MAIN_XOut;
extern volatile int16_t    MAIN_YOut;

extern volatile int32_t    MAIN_XAcc;
extern volatile int32_t    MAIN_YAcc;

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
// The lookup table for the names of Fluorometer channel type names (i.e.: fluorophores). You can configure these in "pixie.c".
const char*                PIXIE_TypeStrings(uint16_t i);

//===========================================================================================================================================
// Device-level Definitions
//===========================================================================================================================================
// Micro-controller platform name and clock speed. Shouldn't need to be changed.
#define PLATFORM                    "MSP430FG6626"
#define MCLOCK                      "18.432 MHz"

// Device Name, suggested. Can be changed if needed.
#define DEVICE_NAME                 "PIXIE"

// Hardware version number, suggested for personal use. Can be changed if needed.
#define HW_VERSION                  "0.80"

// Original Firmware version number, suggested for personal use. Can be changed if needed.
#define FW_VERSION                  "0.80"

// Serial number, suggested for personal use. Can be changed if needed.
#define SERIAL_NUMBER               "00000"

//===========================================================================================================================================
// Firmware Compilation Flags
//===========================================================================================================================================
// __USE_VERBOSE_STARTUP ----------------------------------------------------------------------------------
//  If this symbol is defined, the PIXIE will echo its name, compile time, current time, and battery backup
//  status to the terminal every time it powers on or resets. This is useful for debugging, but can be
//  a waste of space when connected to RS-232 data-logging devices.

//#define __USE_VERBOSE_STARTUP

// __USE_RAW_XY -------------------------------------------------------------------------------------------
//  If this symbol is defined, the PIXIE output is formatted in terms of the lock-in amplifier's
//  intermediate X (in-phase) and Y (in-quadrature) signals instead of R (measured amplitude). This is
//  useful when post-processing is available and both amplitude and phase measurements are desired.

//#define __USE_RAW_XY

// __IMMEDIATE_ENDLESS ------------------------------------------------------------------------------------
//  If this symbol is defined, the PIXIE will begin measuring immediately on startup and will do so using
//  the ENDLESS_RUN duration. It can only be stopped by receiving a STOP command via UART/RS-232.

#define __IMMEDIATE_ENDLESS

// __IMMEDIATE_ENDLESS_MODE -------------------------------------------------------------------------------
//  If the __IMMEDIATE_ENDLESS is defined, this symbol MUST also be defined. This constant tells the PIXIE
//  which channel to RUN with; set to 1...4 to run from channel 1...4, or set to 0 to run the defined
//  channel sequence.

#define __IMMEDIATE_ENDLESS_MODE    (2)

// Configuration Error Checking ---------------------------------------------------------------------------
#ifdef __IMMEDIATE_ENDLESS
#ifndef __IMMEDIATE_ENDLESS_MODE
#error "Must define and set value of __IMMEDIATE_ENDLESS_MODE constant to use __IMMEDIATE_ENDLESS!"
#endif
#endif

//===========================================================================================================================================
// Channel Configuration
//===========================================================================================================================================

// Exclusions ---------------------------------------------------------------------------------------------
//  If set to N > 0, the analysis extends the duration of the RUN command by N cycles and does not report
//  that data. This can be useful to suppress start-up transients from the data-stream and save space
//  in terminals or RS-232 data-loggers.

#define EXCLUSIONS                      (0)

// Channel Type Names -------------------------------------------------------------------------------------
//  These configurations are used to help assign a text-name (as appears in "pixie.c") to the device
//  channels. You shouldn't need to change these; to change which excitation each channel is configured
//  with, assign these to the default specification fields in the group(s) below.
//
//  To change the actual strings these indices are associated with, go to "pixie.c".
#define CHANNEL_EXCITATION_AMBER        (1)
#define CHANNEL_EXCITATION_GREEN        (2)
#define CHANNEL_EXCITATION_BLUE         (3)
#define CHANNEL_EXCITATION_UV           (4)
#define CHANNEL_EXCITATION_IR           (5)
#define CHANNEL_EXCITATION_RED          (6)

#define CHANNEL_TYPEID_PHYCOCYANIN      (CHANNEL_EXCITATION_AMBER)
#define CHANNEL_TYPEID_RHODAMINE        (CHANNEL_EXCITATION_GREEN)
#define CHANNEL_TYPEID_CHLOROPHYLL      (CHANNEL_EXCITATION_BLUE)
#define CHANNEL_TYPEID_FDOM             (CHANNEL_EXCITATION_UV)
#define CHANNEL_TYPEID_TURBID           (CHANNEL_EXCITATION_IR)
#define CHANNEL_TYPEID_PH               (CHANNEL_EXCITATION_RED)

// Default Channel Specifications -------------------------------------------------------------------------
//  These configurations are used set the default name, gain, pregain, and attenuation level for each of
//  the four channels in the device. Adjust these to fit your PIXIE!
//
//  CAUTION: At attenuation level 0, the default PIXIE hardware is designed to supply a peak current of
//  ~45 mA to the active channel LED. If the LED of a given channel cannot tolerate this peak current, the
//  default attenuation level should be set to at least 1.
//
//  Valid Pregains      : 0, 1, 2, 5, 10, 20, 50, 100
//  Valid Gains         : 1, 2, 4, 8, 16
//  Valid Attenuations  : 0, 1, 2, 3

//   Channel 1 Default Specs
#define CHANNEL_1_TYPEID                (CHANNEL_TYPEID_PH)
#define CHANNEL_1_PREGAIN               (50)
#define CHANNEL_1_GAIN                  (8)
#define CHANNEL_1_ATTENUATION           (1)

//   Channel 2 Default Specs
#define CHANNEL_2_TYPEID                (CHANNEL_TYPEID_RHODAMINE)
#define CHANNEL_2_PREGAIN               (10)
#define CHANNEL_2_GAIN                  (8)
#define CHANNEL_2_ATTENUATION           (0)

//   Channel 3 Default Specs
#define CHANNEL_3_TYPEID                (CHANNEL_TYPEID_CHLOROPHYLL)
#define CHANNEL_3_PREGAIN               (10)
#define CHANNEL_3_GAIN                  (8)
#define CHANNEL_3_ATTENUATION           (0)

//   Channel 4 Default Specs
#define CHANNEL_4_TYPEID                (CHANNEL_TYPEID_FDOM)
#define CHANNEL_4_PREGAIN               (100)
#define CHANNEL_4_GAIN                  (16)
#define CHANNEL_4_ATTENUATION           (1)

// Channel Sequence ---------------------------------------------------------------------------------------
//  Configure this first, to set the number of steps in your channel sequence, or set to 0 to disable
//  channel sequencing.
//  To program the channel, gain, pregain, attenuation, and number of cycles per for each step in the
//  sequence, continue to "pixie.c".

#define CHANNEL_SEQUENCE_COUNT          (4)

// Channel Sequence Error Checking ------------------------------------------------------------------------
#ifndef CHANNEL_SEQUENCE_COUNT
#define CHANNEL_SEQUENCE_COUNT          (0)
#elif   CHANNEL_SEQUENCE_COUNT < 0
#undef  CHANNEL_SEQUENCE_COUNT
#define CHANNEL_SEQUENCE_COUNT          (0)
#endif

// Make the channel sequence settings defined in "pixie.c" globally accessible ----------------------------
//  Do not alter these!
#if CHANNEL_SEQUENCE_COUNT > 0
extern const uint16_t  PIXIE_SequenceID[CHANNEL_SEQUENCE_COUNT];
extern const uint16_t  PIXIE_SequencePregain[CHANNEL_SEQUENCE_COUNT];
extern const uint16_t  PIXIE_SequenceGain[CHANNEL_SEQUENCE_COUNT];
extern const uint16_t  PIXIE_SequenceAttenuation[CHANNEL_SEQUENCE_COUNT];
extern const uint16_t  PIXIE_SequenceSeqCycles[CHANNEL_SEQUENCE_COUNT];
#else
extern const uint16_t* PIXIE_SequenceID;
extern const uint16_t* PIXIE_SequencePregain;
extern const uint16_t* PIXIE_SequenceGain;
extern const uint16_t* PIXIE_SequenceAttenuation;
extern const uint16_t* PIXIE_SequenceSeqCycles;
#endif

#endif /* INC_PIXIE_H_ */
