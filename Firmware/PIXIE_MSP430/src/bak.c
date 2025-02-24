//===========================================================================================================================================
/*
 * bak.c
 *
 *  Created on: Jul 6, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "bak.c" Defines the functions used to Commit and Assess/Restore the battery backed registers used to store channel gain settings
 *      between power on and power off, as well as local functions used to pack and unpack those settings to and from the small amount
 *      of available register space. The data is assessed to be valid if two keys / signatures are correctly retained (0x5AFE, or "safe"
 *      and 0b10101010). A checksum is also verified if the keys are correctly retained.
 *
 *      In the future, it would be nice to have dynamically-defined channel sequences, if the settings could be compressed and fit within
 *      the backup register limits.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "bak.h"

// Hardware and Peripherals
//  Used to access ADC_CheckChannelGain();
#include "adc.h"

//  Used to access Channel structure and Data to backup/restore.
#include "channels.h"

//===========================================================================================================================================
// Function Declarations (Prototypes)
//===========================================================================================================================================
uint8_t EncodeAtten(uint16_t ch);
uint8_t EncodeGain(uint16_t ch);
uint8_t EncodePregain(uint16_t ch);

uint16_t DecodeAtten(uint16_t val, uint16_t ch);
uint16_t DecodeGain(uint16_t val, uint16_t ch);
uint16_t DecodePregain(uint16_t val, uint16_t ch);

//===========================================================================================================================================
// uint16_t BAK_AssessBatteryBackup(void)
//
//  Assesses whether or not the data in the backup registers are "likely" to be valid channel settings. If the BAKMEM0 register
//  does not contain the signature "0x5AFE" or the lower byte of BAKMEM3 is not 0b10101010, the data is considered invalid and
//  returns in error, so that default settings will be prepared instead. If deemed potentially valid, a checksum is calculated.
//  If the checksum also matches the upper byte of BAKMEM3, the data is considered valid. The channel gain settings are set to
//  their backed-up values, and the "RAM Time" structure is updated. Returns 0 on success or 1 on failure.
//
//===========================================================================================================================================
uint16_t BAK_AssessBatteryBackup(void)
{
    uint16_t    checksum;
    uint16_t    data;
    if(BAKMEM0 != 0x5AFE)
    {
        // If it's not "0xSAFE" to assume battery RAM was retained, just use default channel settings.
        return 1;
    }
    else
    {
        // If it *might* be "0xSAFE" to assume battery RAM was retained, parse backup and update channels accordingly.
        // If BAKMEM3_L doesn't have the signature 0b10101010, return with default settings.
        if(BAKMEM3_L != 0xAA)
            return 1;

        // If the following checksum fails, return with default settings.
        checksum        = (BAKMEM0 ^ BAKMEM1) ^ BAKMEM2;
        checksum       ^= (checksum & 0xFF00) >> 8;
        checksum       &= 0x00FF;

        if(BAKMEM3_H != (uint8_t)checksum)
            return 1;

        // This means we should have valid settings in the backup registers. The gain setting functions will
        // prevent invalid choices from making it through to the channel settings structures.

        // Channel 1 settings occupy BAKMEM1_L
        data        = (uint16_t)(BAKMEM1_L);
        // Attenuation setting sits in first two LSBs.
        CH_Channels[1]->attenuation = DecodeAtten(data & 0x0003, 1);
        // Gain setting sits in next three bits.
        CH_Channels[1]->gain        = DecodeGain(((data & 0x001C)>>2), 1);
        // Pregain sits in last three bits.
        CH_Channels[1]->pregain     = DecodePregain(((data & 0x00E0)>>5), 1);

        // Channel 2 settings occupy BAKMEM1_H
        data        = (uint16_t)(BAKMEM1_H);
        // Attenuation setting sits in first two LSBs.
        CH_Channels[2]->attenuation = DecodeAtten(data & 0x0003, 2);
        // Gain setting sits in next three bits.
        CH_Channels[2]->gain        = DecodeGain(((data & 0x001C)>>2), 2);
        // Pregain sits in last three bits.
        CH_Channels[2]->pregain     = DecodePregain(((data & 0x00E0)>>5), 2);

        // Channel 3 settings occupy BAKMEM1_L
        data        = (uint16_t)(BAKMEM2_L);
        // Attenuation setting sits in first two LSBs.
        CH_Channels[3]->attenuation = DecodeAtten(data & 0x0003, 3);
        // Gain setting sits in next three bits.
        CH_Channels[3]->gain        = DecodeGain(((data & 0x001C)>>2), 3);
        // Pregain sits in last three bits.
        CH_Channels[3]->pregain     = DecodePregain(((data & 0x00E0)>>5), 3);

        // Channel 4 settings occupy BAKMEM1_H
        data        = (uint16_t)(BAKMEM2_H);
        // Attenuation setting sits in first two LSBs.
        CH_Channels[4]->attenuation = DecodeAtten(data & 0x0003, 4);
        // Gain setting sits in next three bits.
        CH_Channels[4]->gain        = DecodeGain(((data & 0x001C)>>2), 4);
        // Pregain sits in last three bits.
        CH_Channels[4]->pregain     = DecodePregain(((data & 0x00E0)>>5), 4);

        //Read from the battery backed RTC registers to update RAM time.
        CLK_GetRTC(&MAIN_CurrentTime);

    }
    return 0; //If we make it here, we return with loaded backup settings.
};

//===========================================================================================================================================
// void BAK_CommitBatteryBackup(void)
//
//  BAK_CommitBatteryBackup() is called every time the device receives a SAVE command (abstracting the battery backup functions away from
//  "main.c") or fails to restore backup registers at startup. Gain settings for each channel are fetched from their current values (defaults
//  when called at startup or whatever their current setting is during runtime SAVE commands), packed, and stored in the backup registers.
//  The signatures are defined, a checksum is calculated and stored as well.
//
//===========================================================================================================================================
void BAK_CommitBatteryBackup(void)
{
    uint16_t checksum;

    BAKMEM0 = 0x5AFE;
    BAKMEM1 = 0x0000;
    BAKMEM2 = 0x0000;
    BAKMEM3 = 0x0000;

    BAKMEM1_L ^= (EncodeAtten(1) & 0x03);
    BAKMEM1_L ^= (EncodeGain(1) & 0x07) << 2;
    BAKMEM1_L ^= (EncodePregain(1) & 0x07) << 5;

    BAKMEM1_H ^= (EncodeAtten(2) & 0x03);
    BAKMEM1_H ^= (EncodeGain(2) & 0x07) << 2;
    BAKMEM1_H ^= (EncodePregain(2) & 0x07) << 5;

    BAKMEM2_L ^= (EncodeAtten(3) & 0x03);
    BAKMEM2_L ^= (EncodeGain(3) & 0x07) << 2;
    BAKMEM2_L ^= (EncodePregain(3) & 0x07) << 5;

    BAKMEM2_H ^= (EncodeAtten(4) & 0x03);
    BAKMEM2_H ^= (EncodeGain(4) & 0x07) << 2;
    BAKMEM2_H ^= (EncodePregain(4) & 0x07) << 5;

    BAKMEM3_L = 0xAA;

    checksum        = (BAKMEM0 ^ BAKMEM1) ^ BAKMEM2;
    checksum       ^= (checksum & 0xFF00) >> 8;
    checksum       &= 0x00FF;

    BAKMEM3_H = (uint8_t)checksum;
};

//===========================================================================================================================================
// Encoding Functions
//===========================================================================================================================================
// The MSP430FG6626 has four 16-bit backup registers. One full register is used for the "0x5AFE" signature. One full register is used for
// the checksum and "0b10101010" signature. This leaves 4 bytes to store (4 channels) x (3 x 16 bits per channel) = 24 bytes of data.
// However, since only certain gain, pregain, and attenuation values are legal, each setting only needs enough bits to represent the total
// number of unique choices for that setting. This is 2 bits for Attenuation (0,1,2,3), 3 bits for pregain (0,1,2,5,10,20,50,100), and
// 3 bits for gain (1,2,4,8,16). This means each channel only needs 8 bits to store its settings, or 1 byte each, perfectly filling the
// remaining 4 bytes of register space.

// Attenuation maps one-to-one with its encoded form.
uint8_t EncodeAtten(uint16_t ch)
{
    return (uint8_t)(CH_Channels[ch]->attenuation);
};

// Gains are all powers of two, so this effectively maps between gain and exponent.
uint8_t EncodeGain(uint16_t ch)
{
    switch(CH_Channels[ch]->gain)
    {
    case 1:
        return 0;
    case 2:
        return 1;
    case 4:
        return 2;
    case 8:
        return 3;
    case 16:
        return 4;
    default:
        break;
    }
    return 0;
};

// Pregains are somewhat arbitrary, so we simply apply a natural numbering.
uint8_t EncodePregain(uint16_t ch)
{
    switch(CH_Channels[ch]->pregain)
    {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 5:
        return 3;
    case 10:
        return 4;
    case 20:
        return 5;
    case 50:
        return 6;
    case 100:
        return 7;
    default:
        break;
    }
    return 0;
};

// Attenuation maps one-to-one with its encoded form.
uint16_t DecodeAtten(uint16_t val, uint16_t ch)
{
    if(val <= 3)
    {
        return val;
    }

    // Couldn't find a valid setting so use the default for this channel.
    switch(ch)
    {
    case 1:
        return CHANNEL_1_ATTENUATION;
    case 2:
        return CHANNEL_2_ATTENUATION;
    case 3:
        return CHANNEL_3_ATTENUATION;
    case 4:
        return CHANNEL_4_ATTENUATION;
    default:
        break;
    }

    return CHANNEL_1_ATTENUATION;
};

// Gains are all powers of two, so this effectively maps between gain and exponent.
uint16_t DecodeGain(uint16_t val, uint16_t ch)
{
    switch(val)
    {
    case 0:
        return 1;
    case 1:
        return 2;
    case 2:
        return 4;
    case 3:
        return 8;
    case 4:
        return 16;
    default:
        break;
    }

    // Couldn't find a valid setting so use the default for this channel.
    switch(ch)
    {
    case 1:
        return CHANNEL_1_GAIN;
    case 2:
        return CHANNEL_2_GAIN;
    case 3:
        return CHANNEL_3_GAIN;
    case 4:
        return CHANNEL_4_GAIN;
    default:
        break;
    }

    return CHANNEL_1_GAIN;
};

// Pregains are somewhat arbitrary, so we simply apply a natural numbering.
uint16_t DecodePregain(uint16_t val, uint16_t ch)
{
    switch(val)
    {
    case 0:
        return 0;
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 5;
    case 4:
        return 10;
    case 5:
        return 20;
    case 6:
        return 50;
    case 7:
        return 100;
    default:
        break;
    }

    // Couldn't find a valid setting so use the default for this channel.
    switch(ch)
    {
    case 1:
        return CHANNEL_1_PREGAIN;
    case 2:
        return CHANNEL_2_PREGAIN;
    case 3:
        return CHANNEL_3_PREGAIN;
    case 4:
        return CHANNEL_4_PREGAIN;
    default:
        break;
    }

    return CHANNEL_1_PREGAIN;
};

