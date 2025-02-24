//===========================================================================================================================================
/*
 * channels.h
 *
 *  Created on: Apr 29, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "channels.h" encapsulates the configuration data for the four hardware channels as well as the user defined channel sequence.
 *      The channel data structures do not have direct external access, but do have indirect external access through the CH_Channels[]
 *      pointer array. The array has an extra entry at index 0, so that the channels are indicated by their natural numbering and not
 *      by their C-array numbering. This also useful for error catching if the index ends up accessing a NULL address.
 *
 */
//===========================================================================================================================================
#ifndef INC_CHANNELS_H_
#define INC_CHANNELS_H_

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Typedefs
//===========================================================================================================================================
// This structure encapsulates all of the data associated with running one of the four fluorometer channels.
typedef struct
{
    uint16_t        id;         //channel 1, channel 2...
    uint16_t        typeid;     //number corresponding to color (fluorophore)
    uint16_t        pregain;    //channel voltage amplifier gain setting (PGA) {0,1,2,5,10,20,50,100}
    uint16_t        gain;       //channel ADC gain setting (CTSD16) {1,2,4,8,16}
    uint16_t        attenuation;//channel LED driver attenuation level (DAC) {0,1,2,3}

    //Each channel needs its own DAC buffer to handle attenuation in sequence mode.
    uint16_t        DACbuffer[MAIN_DACBUFFER_SIZE]; //todo this is fine until the sequence count is bigger than 4, at that
                                                    //point one static array for each of the 4 attenuation levels should
                                                    //be defined to consume less RAM. Current ram use is O(n), could be O(1).

    //Storage for filter taps during Sequenced mode.
    int32_t         tap1;                   //bpf block 1 tap
    int32_t         tap2;                   //bpf block 2 tap
    int32_t         xtap1;                  //lpf input side tap, X mixer
    int32_t         xtap2;                  //lpf output side tap, X mixer
    int32_t         ytap1;                  //lpf input side tap, Y mixer
    int32_t         ytap2;                  //lpf output side tap, Y mixer

    uint16_t        cycles;     //In sequential mode, this indicates how many analysis cycles (16 Hz) remain before run is halted.
    uint16_t        seqcycles;  //Upper number of cycles this channel runs in sequential mode before swapping to next channel.
    void*           next;       //Singly-linked list pointer to next channel in sequential mode.

} CH_ChannelSpec;

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
extern  CH_ChannelSpec* CH_Channels[5];
extern  CH_ChannelSpec* CH_ActiveChannel;

#if CHANNEL_SEQUENCE_COUNT > 0
extern  CH_ChannelSpec  CH_ChannelSequence[CHANNEL_SEQUENCE_COUNT];
#else
extern  CH_ChannelSpec* CH_ChannelSequence;
#endif

extern  uint16_t        CH_RunCycles;
extern  uint16_t        CH_RunExclusions;

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void    CH_InitializeChannels(void);

#endif /* INC_CHANNELS_H_ */
