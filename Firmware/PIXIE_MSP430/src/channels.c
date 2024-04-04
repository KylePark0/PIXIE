//===========================================================================================================================================
/*
 * channels.c
 *
 *  Created on: Apr 29, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "channels.c" encapsulates the configuration data for the four hardware channels as well as the user defined channel sequence.
 *      The channel data structures do not have direct external access, but do have indirect external access through the CH_Channels[]
 *      pointer array. The array has an extra entry at index 0, so that the channels are indicated by their natural numbering and not
 *      by their C-array numbering. This also useful for error catching if the index ends up accessing a NULL address.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "channels.h"

//===========================================================================================================================================
// Local Variables
//===========================================================================================================================================
// Index these indirectly through addresses in CH_Channels[], never directly.
CH_ChannelSpec  ChannelOne;
CH_ChannelSpec  ChannelTwo;
CH_ChannelSpec  ChannelThree;
CH_ChannelSpec  ChannelFour;

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
// Pointer array to numbered channels.
CH_ChannelSpec* CH_Channels[5]          = {NULL, &ChannelOne, &ChannelTwo, &ChannelThree, &ChannelFour};

// Pointer to the currently measuring channel. Must be NULL or one of the addresses in the CH_Channels[] array.
CH_ChannelSpec* CH_ActiveChannel        = NULL;

// Channel Sequence array definition with preprocessor to handle the 'disabled' case.
#if CHANNEL_SEQUENCE_COUNT > 0
CH_ChannelSpec  CH_ChannelSequence[CHANNEL_SEQUENCE_COUNT];
#else
CH_ChannelSpec* CH_ChannelSequence      = NULL;
#endif

// Counters for the current number of cycles (16ths of seconds) left to run by the currently active channel.
uint16_t        CH_RunCycles;
// Number of cycles to exclude at the start of the RUN command, if any.
uint16_t        CH_RunExclusions;

//===========================================================================================================================================
// void CH_InitializeChannels(void)
//
//  Sets the channel configuration structures to their default values as defined in "pixie.h" and "pixie.c". Also configures the channel
//  sequence as a singly-linked list. The RUN command distinguishes whether the ActiveChannel is part of a sequence or not by checking
//  whether the .next field is NULL or not. If NULL, the RUN command is a single channel. If anything but NULL, the ActiveChannel is part of
//  a channel sequence.
//
//===========================================================================================================================================
void CH_InitializeChannels(void)
{
#if CHANNEL_SEQUENCE_COUNT > 0
    uint16_t i;
#endif

    // Physical Channel Initializations
    CH_Channels[1]->id                  = 1;
    CH_Channels[1]->typeid              = CHANNEL_1_TYPEID;
    CH_Channels[1]->pregain             = CHANNEL_1_PREGAIN;
    CH_Channels[1]->gain                = CHANNEL_1_GAIN;
    CH_Channels[1]->attenuation         = CHANNEL_1_ATTENUATION;
    CH_Channels[1]->cycles              = 0;
    CH_Channels[1]->seqcycles           = 0;

    CH_Channels[2]->id                  = 2;
    CH_Channels[2]->typeid              = CHANNEL_2_TYPEID;
    CH_Channels[2]->pregain             = CHANNEL_2_PREGAIN;
    CH_Channels[2]->gain                = CHANNEL_2_GAIN;
    CH_Channels[2]->attenuation         = CHANNEL_2_ATTENUATION;
    CH_Channels[2]->cycles              = 0;
    CH_Channels[2]->seqcycles           = 0;

    CH_Channels[3]->id                  = 3;
    CH_Channels[3]->typeid              = CHANNEL_3_TYPEID;
    CH_Channels[3]->pregain             = CHANNEL_3_PREGAIN;
    CH_Channels[3]->gain                = CHANNEL_3_GAIN;
    CH_Channels[3]->attenuation         = CHANNEL_3_ATTENUATION;
    CH_Channels[3]->cycles              = 0;
    CH_Channels[3]->seqcycles           = 0;

    CH_Channels[4]->id                  = 4;
    CH_Channels[4]->typeid              = CHANNEL_4_TYPEID;
    CH_Channels[4]->pregain             = CHANNEL_4_PREGAIN;
    CH_Channels[4]->gain                = CHANNEL_4_GAIN;
    CH_Channels[4]->attenuation         = CHANNEL_4_ATTENUATION;
    CH_Channels[4]->cycles              = 0;
    CH_Channels[4]->seqcycles           = 0;

    // Physical channels don't use sequence pointers.
    CH_Channels[1]->next                = NULL;
    CH_Channels[2]->next                = NULL;
    CH_Channels[3]->next                = NULL;
    CH_Channels[4]->next                = NULL;

    // Channel Sequence Initializations
#if CHANNEL_SEQUENCE_COUNT > 0
    for(i = 0; i < CHANNEL_SEQUENCE_COUNT; i++)
    {
        CH_ChannelSequence[i].id            = PIXIE_SequenceID[i];
        CH_ChannelSequence[i].typeid        = CH_Channels[PIXIE_SequenceID[i]]->typeid;
        CH_ChannelSequence[i].pregain       = PIXIE_SequencePregain[i];
        CH_ChannelSequence[i].gain          = PIXIE_SequenceGain[i];
        CH_ChannelSequence[i].attenuation   = PIXIE_SequenceAttenuation[i];
        CH_ChannelSequence[i].cycles        = 0;
        CH_ChannelSequence[i].seqcycles     = PIXIE_SequenceSeqCycles[i];

        // Create the linked list. This only gets called once at startup, so the slow modulo operations are fine.
        CH_ChannelSequence[i].next          = &(CH_ChannelSequence[(i + 1) % CHANNEL_SEQUENCE_COUNT]);
    }
#endif

    return;
};
