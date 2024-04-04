//===========================================================================================================================================
/*
 * cmd.h
 *
 *  Created on: Apr 16, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "cmd.h" declares macros and functions to take buffered string commands and arguments from the UART and quickly parse them.
 *
 */
//===========================================================================================================================================
#ifndef INC_CMD_H_
#define INC_CMD_H_

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
// Platform Specific Includes
#include "pixie.h"

// C-Standard Includes
#include <string.h>

// Hardware and Peripherals
#include "clk.h"

//===========================================================================================================================================
// Enumerated Command Codes
//===========================================================================================================================================

//Adding new CMD Codes:
//  These outward facing codes are simple, they're just naturally numbered.
//  Originally numbered in order of creation, but have since had insertions. Could easily reorder, since the values are never actually
//  used, as long as there are no repeats.

#define CMD_NULL            ((uint16_t)0)

#define CMD_RUN             ((uint16_t)1)
#define CMD_HELP            ((uint16_t)2)
#define CMD_STOP            ((uint16_t)3)
#define CMD_HALT            ((uint16_t)4)

#define CMD_SAVE            ((uint16_t)20)

#define CMD_FLOOD           ((uint16_t)5)
#define CMD_SPOOF           ((uint16_t)6)
#define CMD_SGAIN           ((uint16_t)7)
#define CMD_GGAIN           ((uint16_t)8)
#define CMD_RESET           ((uint16_t)9)


#define CMD_STATUS          ((uint16_t)10)
#define CMD_SCLOCK          ((uint16_t)11)
#define CMD_GCLOCK          ((uint16_t)12)
#define CMD_SPGAIN          ((uint16_t)18)
#define CMD_GPGAIN          ((uint16_t)19)
#define CMD_SATTEN          ((uint16_t)13)
#define CMD_GATTEN          ((uint16_t)14)

// This cannot be changed! 32bits / 5bits = 6 remainder 2, so 6 letters fit in one DWORD.
#define CMD_MAXLEN          (6)

//===========================================================================================================================================
// Enumerated Error Codes
//===========================================================================================================================================
// Error handler codes. These aren't used as return values, they're placed into the Command struct.
#define CMD_ERROR_BADCMD    (0x0000)
#define CMD_ERROR_NOFIELDS  (0x0001)
#define CMD_ERROR_EXFIELDS  (0x0002)
#define CMD_ERROR_BADFIELD  (0x0003)
#define CMD_ERROR_MUSTIDLE  (0x0004)
#define CMD_ERROR_CHANLOCK  (0x0005)

//===========================================================================================================================================
// Typedefs
//===========================================================================================================================================

//Command status structures
// Structures describing the different types of arguments commands can be written with.
// These structures aren't used by themselves, but as part of the union defined below.
typedef struct
{
    uint16_t        channel;
} CMD_ChannelArgs;

typedef struct
{
    uint16_t        channel;
    uint16_t        value;
} CMD_SettingArgs;

typedef struct
{
    uint16_t        channel;
    uint16_t        duration;
} CMD_RunningArgs;

//Command data union
//  When an valid command is detected, its arguments (if any) are parsed. Since the arguments
//  of the different commands may be of different types (especially setting the clock), but are
//  only needed one at a time, all of the different argument formats can be stored with a
//  single union.
typedef union
{
    uint16_t        ERR;    // 2 Bytes of Error Code

    CLK_TimeStamp   CLOCK;  // Year, Month, Day, Hour, Minute, Second, each 2 Bytes. Used by SCLOCK and GCLOCK

    CMD_ChannelArgs HELP;   // 2 Bytes of Input Data
    CMD_ChannelArgs STATUS; //
    CMD_ChannelArgs GATTEN; //
    CMD_ChannelArgs GGAIN;  //
    CMD_ChannelArgs GPGAIN; //
    CMD_ChannelArgs FLOOD;  //

    CMD_SettingArgs SGAIN;  // 4 Bytes of Input Data
    CMD_SettingArgs SPGAIN;
    CMD_SettingArgs SATTEN; //

    CMD_RunningArgs RUN;    // 4 Bytes of Input Data
    CMD_RunningArgs SPOOF;  //

} CMD_CommandData;

//Command container structure
//  Holds the union of the command data and a separate (un-unionized) field to identify the type of command (n.b.: the
//  enumerated command codes defined above). If .id == CMD_NULL, the entered command either was not recognized or was
//  improperly formatted. The command handler function MAIN_HandleCommand() will access the union's ERR field to
//  determine exactly which error type was encountered. If .id is one of the other commands, then the union holds
//  its corresponding argument data (i.e.: selected channel, selected channel and duration, gain setting, etc.)
typedef struct
{
    uint16_t        id;
    CMD_CommandData data;
} CMD_CommandContainer;

// Only this one instance of the container structure is used.
extern CMD_CommandContainer CMD_Command;

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
uint16_t CMD_ParseCommand(char* str);
uint32_t CMD_CommandToken(char* tok);

#endif /* INC_CMD_H_ */
