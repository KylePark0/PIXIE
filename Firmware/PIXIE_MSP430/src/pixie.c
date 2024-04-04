//===========================================================================================================================================
/*
 * pixie.c
 *
 *  Created on: Jun 1, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "pixie.c" contains the data members defined for the global-access "pixie.h" include. This is to keep the basic user-configurable
 *      code in two files and under one name-space, PIXIE, whereas advanced users can examine and alter the rest of the source code.
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Type Names
//===========================================================================================================================================
// Adjust or Add the actual names here, you can adjust the mapping of numerical type ID in "pixie.h"
const char* Phycocyanin_String                                  = "Phycocyanin";
const char* Rhodamine_String                                    = "RhodamineWT";
const char* Chlorophyll_String                                  = "Chlorophyll-a";
const char* fDOM_String                                         = "fDOM";
const char* Turbidity_String                                    = "Turbidity";

// Any new or altered typeIDs or names must be added to this lookup function as well.
const char* PIXIE_TypeStrings(uint16_t i)
{
    switch(i)
    {
    case CHANNEL_TYPEID_PHYCOCYANIN:
        return Phycocyanin_String;
    case CHANNEL_TYPEID_RHODAMINE:
        return Rhodamine_String;
    case CHANNEL_TYPEID_CHLOROPHYLL:
        return Chlorophyll_String;
    case CHANNEL_TYPEID_FDOM:
        return fDOM_String;
    case CHANNEL_TYPEID_TURBID:
    default:
        return Turbidity_String;
    }
};

//===========================================================================================================================================
// Channel Sequence
//===========================================================================================================================================
//  Configure each step of the channel sequence by setting, in order, the ID values, the pregains, etc. For example, the default
//  configuration's first step uses:
//          Channel 2, with Pregain 10, Gain 8, Attenuation level 0, for 32 cycles (2 seconds),
//
//  then proceeds to the second step with:
//          Channel 2, with Pregain 50, Gain 16, Attenuation level 1, for 32 cycles (2 seconds).
//
//  You must ensure each array has many entries as the number CHANNEL_SEQUENCE_COUNT is set to. Any combination of valid combination
//  of channel ID, gain, attenuation, etc. can be used, channels may be repeated with different gain settings, channels can be excluded.
//
//  NOTE: Channel IDs use their NOMINAL values: Channel 1 has an ID value of 1. They do NOT use C-array style IDs.
//
//  Valid Channel IDs   : 1, 2, 3, 4
//  Valid Pregains      : 0, 1, 2, 5, 10, 20, 50, 100
//  Valid Gains         : 1, 2, 4, 8, 16
//  Valid Attenuations  : 0, 1, 2, 3

#if CHANNEL_SEQUENCE_COUNT > 0

const uint16_t  PIXIE_SequenceID[CHANNEL_SEQUENCE_COUNT]            = {2,   2,  1,  3};

const uint16_t  PIXIE_SequencePregain[CHANNEL_SEQUENCE_COUNT]       = {10, 50, 10, 10};

const uint16_t  PIXIE_SequenceGain[CHANNEL_SEQUENCE_COUNT]          = {8,  16,  8,  8};

const uint16_t  PIXIE_SequenceAttenuation[CHANNEL_SEQUENCE_COUNT]   = {0,   1,  0,  0};

const uint16_t  PIXIE_SequenceSeqCycles[CHANNEL_SEQUENCE_COUNT]     = {32, 32, 16, 16};

#else

//  Don't adjust these; these are here for error handling.

const uint16_t* PIXIE_SequenceID                                    = NULL;

const uint16_t* PIXIE_SequencePregain                               = NULL;

const uint16_t* PIXIE_SequenceGain                                  = NULL;

const uint16_t* PIXIE_SequenceAttenuation                           = NULL;

const uint16_t* PIXIE_SequenceSeqCycles                             = NULL;

#endif

