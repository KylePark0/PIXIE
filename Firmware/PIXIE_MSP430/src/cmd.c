//===========================================================================================================================================
/*
 * cmd.c
 *
 *  Created on: Apr 16, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "cmd.c" defines macros and functions to take buffered string commands and arguments from the UART and quickly parse them. The
 *      goal of the command parsing code is to minimize the impact of additional commands added to the recognized list, so that the device
 *      isn't bogged down by bubble-sort-tier string searches. This is done by formatting the comma-separated token format that the UART
 *      input expects, first making it case insensitive and then packing each received character into 5 bits (2^5 = 32, commands use only
 *      the 26 alphabetical characters). Up to 6 characters are packed into a 32 bit data member (two CPU registers). This means that
 *      every comparison of the received command token with the list of recognized tokens is completed with only 3 comparisons.
 *
 *      The down-side is, adding new commands is more difficult than simply adding another string to a table. Instructions are provided
 *      below, for how to manually pack characters to make new CND_CMP_ tokens.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
// C-Standard Includes
#include <stdio.h>

// Configurations and Software
#include "cmd.h"


//===========================================================================================================================================
// Local Constants
//===========================================================================================================================================

//Adding new CMD_CMP Codes:
//  These inward facing codes are complicated.
//
//  Characters are bit-shifted so that they occupy 5 bits corresponding to their place in the alphabet.
//
//  'A' == 'a' == 1, 'B' == 'b' == 2, etc.
//
//  Each letter is left-shifted into a 32 bit variable, so six can be held with 2 leftover bits, so CMD_MAXLEN = 6.
//
//  To assemble a code, use a Programmer calculator: start with the number corresponding to the
//  first letter in the code (reading left to right). Left-shift five times, then add the next letter using +.
//
//  There's probably a clear and less magical way to do this in the preprocessor, though.


//These are a list of recognized keywords, so synonyms will have different CMP codes but can set the
//CMD_Command.id to an existing id. E.G.: "HALT" could do the same as "STOP". CMD_CMP_HALT would have
//its own unique value, but its handler would set CMD_Command.id = CMD_STOP.

#define     CMD_CMP_RUN         ((uint32_t)(0x00004AAE))

#define     CMD_CMP_HELP        ((uint32_t)(0x00041590))
#define     CMD_CMP_STOP        ((uint32_t)(0x0009D1F0))
#define     CMD_CMP_HALT        ((uint32_t)(0x00040594))
#define     CMD_CMP_SAVE        ((uint32_t)(0x000986C5))

#define     CMD_CMP_FLOOD       ((uint32_t)(0x00663DE4))
#define     CMD_CMP_SPOOF       ((uint32_t)(0x01383DE6))
#define     CMD_CMP_SGAIN       ((uint32_t)(0x0133852E))
#define     CMD_CMP_GGAIN       ((uint32_t)(0x0073852E))
#define     CMD_CMP_RESET       ((uint32_t)(0x0122CCB4))

#define     CMD_CMP_STATUS      ((uint32_t)(0x2740D2B3))
#define     CMD_CMP_SCLOCK      ((uint32_t)(0x26363C6B))
#define     CMD_CMP_GCLOCK      ((uint32_t)(0x0E363C6B))
#define     CMD_CMP_SPGAIN      ((uint32_t)(0x2703852E))
#define     CMD_CMP_GPGAIN      ((uint32_t)(0x0F03852E))
#define     CMD_CMP_SATTEN      ((uint32_t)(0x261A50AE))
#define     CMD_CMP_GATTEN      ((uint32_t)(0x0E1A50AE))

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
CMD_CommandContainer CMD_Command = {0};

//===========================================================================================================================================
// uint16_t CMD_ParseCommand(char* str)
//
//  Ideally, this function would compile as a jump table, but with 32-bit cases it will just be a cascaded if-then list.
//  str, a single line from the RS-232/UART input buffer, is expected to be either a command of up to 6 letters, or a comma-separated
//  line with a command and input arguments. This function first looks to tokenize the command string into one 32-bit token and compare
//  it with the list of CMD_CMP_ constants defined above. If it fails to tokenize or cannot make a comparison, this function sets the
//  CMD_Command structure to an error (.id = CMD_NULL) and attaches an error code (.data.ERR = CMD_ERROR_) before returning. All
//  unsuccessful return values are 0, returns 1 on a successful parse of the buffer for its command and all input arguments.
//
//===========================================================================================================================================
uint16_t CMD_ParseCommand(char* str)
{
    char* token;
    if(token = strtok(str,","))
    {
        //str might contained a recognized command. See if the first null terminated token can be packed into a command token.
        //  If CMD_CommandToken() succeeds, we jump to the resulting token and look for further formatting.
        //  If CMD_CommandToken() fails, we default to an error handler.
        switch(CMD_CommandToken(token))
        {
        // Commands with ZERO Fields ===============================================
        case CMD_CMP_STOP:
            CMD_Command.id = CMD_STOP;
            if(strtok(NULL,",") != NULL)
            {
                //Extra Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_HALT:
            CMD_Command.id = CMD_STOP; //same as stop;
            if(strtok(NULL,",") != NULL)
            {
                //Extra Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_SAVE:
            CMD_Command.id = CMD_SAVE;
            if(strtok(NULL,",") != NULL)
            {
                //Extra Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_RESET:
            CMD_Command.id = CMD_RESET;
            if(strtok(NULL,",") != NULL)
            {
                //Extra Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_GCLOCK:
            CMD_Command.id = CMD_GCLOCK;
            if(strtok(NULL,",") != NULL)
            {
                //Extra Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                return 0x0000;
            }
            break;
            // Commands with ONE Field  ===============================================
        case CMD_CMP_HELP:
            CMD_Command.id = CMD_HELP;
            if(token = strtok(NULL,","))
            {
                //At least one field has been correctly found.
                if(sscanf(token, "%u", &(CMD_Command.data.HELP.channel)) != 1)
                {
                    //Field Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields. This is not an error for HELP. Set channel marker to 0 to indicate this.
                CMD_Command.data.HELP.channel = 0;
            }
            break;
        case CMD_CMP_STATUS:
            CMD_Command.id = CMD_STATUS;
            if(token = strtok(NULL,","))
            {
                //At least one field has been correctly found.
                if(sscanf(token, "%u", &(CMD_Command.data.STATUS.channel)) != 1)
                {
                    //Field Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields. This is not an error for STATUS. Set channel marker to 0 to indicate this.
                CMD_Command.data.STATUS.channel = 0;
            }
            break;
        case CMD_CMP_SCLOCK:
            CMD_Command.id = CMD_SCLOCK;
            if(token = strtok(NULL,","))//Expecting one field of data.
            {
                if(sscanf(token, "%d-%d-%dT%d:%d:%dZ",
                          &(CMD_Command.data.CLOCK.year),
                          &(CMD_Command.data.CLOCK.month),
                          &(CMD_Command.data.CLOCK.day),
                          &(CMD_Command.data.CLOCK.hour),
                          &(CMD_Command.data.CLOCK.min),
                          &(CMD_Command.data.CLOCK.sec)) != 6)
                {
                    //Coded date and time could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                //Correct storage format for year is "years since 1900", so adjust that here.
                //CMD_Command.data.CLOCK.tm_year -= 1900;
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_GATTEN:
            CMD_Command.id = CMD_GATTEN;
            if(token = strtok(NULL,","))
            {
                //One field has been correctly found.
                if(sscanf(token, "%u", &(CMD_Command.data.GATTEN.channel)) != 1)
                {
                    //Field Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_GGAIN:
            CMD_Command.id = CMD_GGAIN;
            if(token = strtok(NULL,","))
            {
                //One field has been correctly found.
                if(sscanf(token, "%u", &(CMD_Command.data.GGAIN.channel)) != 1)
                {
                    //Field Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_GPGAIN:
            CMD_Command.id = CMD_GPGAIN;
            if(token = strtok(NULL,","))
            {
                //One field has been correctly found.
                if(sscanf(token, "%u", &(CMD_Command.data.GPGAIN.channel)) != 1)
                {
                    //Field Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_FLOOD:
            CMD_Command.id = CMD_FLOOD;
            if(token = strtok(NULL,","))
            {
                //One field has been correctly found.
                if(sscanf(token, "%u", &(CMD_Command.data.GATTEN.channel)) != 1)
                {
                    //Field Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
            // Commands with TWO Fields ===============================================
        case CMD_CMP_RUN:
            CMD_Command.id = CMD_RUN;
            if(token = strtok(NULL,","))
            {
                //Two fields have been correctly found?
                if(sscanf(token, "%u", &(CMD_Command.data.RUN.channel)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(!(token = strtok(NULL,",")))
                {
                    //Missing Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(sscanf(token, "%u", &(CMD_Command.data.RUN.duration)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_SPOOF:
            CMD_Command.id = CMD_SPOOF;
            if(token = strtok(NULL,","))
            {
                //Two fields have been correctly found?
                if(sscanf(token, "%u", &(CMD_Command.data.SPOOF.channel)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(!(token = strtok(NULL,",")))
                {
                    //Missing Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(sscanf(token, "%u", &(CMD_Command.data.SPOOF.duration)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_SGAIN:
            CMD_Command.id = CMD_SGAIN;
            if(token = strtok(NULL,","))
            {
                //Two fields have been correctly found?
                if(sscanf(token, "%u", &(CMD_Command.data.SGAIN.channel)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(!(token = strtok(NULL,",")))
                {
                    //Missing Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(sscanf(token, "%u", &(CMD_Command.data.SGAIN.value)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_SPGAIN:
            CMD_Command.id = CMD_SPGAIN;
            if(token = strtok(NULL,","))
            {
                //Two fields have been correctly found?
                if(sscanf(token, "%u", &(CMD_Command.data.SPGAIN.channel)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(!(token = strtok(NULL,",")))
                {
                    //Missing Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(sscanf(token, "%u", &(CMD_Command.data.SPGAIN.value)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        case CMD_CMP_SATTEN:
            CMD_Command.id = CMD_SATTEN;
            if(token = strtok(NULL,","))
            {
                //Two fields have been correctly found?
                if(sscanf(token, "%u", &(CMD_Command.data.SATTEN.channel)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(!(token = strtok(NULL,",")))
                {
                    //Missing Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(sscanf(token, "%u", &(CMD_Command.data.SATTEN.value)) != 1)
                {
                    //Fields Could not be interpreted correctly.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_BADFIELD;
                    return 0x0000;
                }
                if(strtok(NULL,",") != NULL)
                {
                    //Extra Fields Error.
                    CMD_Command.id = CMD_NULL;
                    CMD_Command.data.ERR = CMD_ERROR_EXFIELDS;
                    return 0x0000;
                }
            }
            else
            {
                //No Fields Error.
                CMD_Command.id = CMD_NULL;
                CMD_Command.data.ERR = CMD_ERROR_NOFIELDS;
                return 0x0000;
            }
            break;
        default:
            // If token couldn't be packed or doesn't appear on the table, it was not a valid command.
            // Return an error.
            CMD_Command.id = CMD_NULL;
            CMD_Command.data.ERR = CMD_ERROR_BADCMD;
            return 0x0000;
        }
        //If the switch broke, code and argument(s) were valid so return a success.
        return 0x0001;
    }
    else
    {
        //Shouldn't fail unless str is just \0? Return a fail just in case.
        CMD_Command.id = CMD_NULL;
        CMD_Command.data.ERR = CMD_ERROR_BADCMD;
        return 0x0000;
    }
};

//===========================================================================================================================================
// uint16_t CMD_ParseCommand(char* str)
//
//  By pushing all of the letters into one 32 bit variable, and then comparing, we're essentially making those comparison
//  operations parallel processing. 3 characters are being checked at a time, case insensitive. If the potential command exceeds
//  the expected maximum length CMD_MAXLEN, it is automatically recognized as an invalid command.
//
//===========================================================================================================================================

uint32_t CMD_CommandToken(char* tok)
{
    //A parsed command (or not) resides in tok. Make case-insensitive and return the command code or 0 otherwise.
    uint8_t     i;
    uint8_t     c;
    uint32_t    code = 0;
    //At tokenization, the token is guaranteed to have a terminating null character, so <= is appropriate.
    for (i = 0; i <= CMD_MAXLEN; i++) //Has to be i++ because order matters in strings.
    {
        if (tok[i] == '\0')
        {
            //If terminating null is reached, tok *might* be a valid command, so return the token.
            return code;
        };
        c      = tok[i] > 'Z' ? ((tok[i] - 'a') + 1) : ((tok[i] - 'A') + 1);
        c     &= 0x1F; //mask to keep only the 5 LSBits.
        code   = (code << 5) ^ c;
    }
    //If loop limit is exceeded, str is definitely not a valid command, so return 0.
    return 0x00000000;
};
