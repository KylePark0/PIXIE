//===========================================================================================================================================
/*
 * sinref.c
 *
 *  Created on: Apr 29, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "sineref.c" defines the reference or "golden" sine waves available at compile time that can be loaded into RAM just before they
 *      are needed. They are carefully crafted to be phase-correct integer cosine and sine that obey fundamental properties like
 *      trig identities (cos^2 + sin^2 = 1) without roundoff error. The DAC sinusoids have a nonzero offset and fit within 12 unsigned
 *      bits. The ADC sinusoids fit in 16 signed bits instead; this is a hack to make multiplication by a Q3.28 fixed point number
 *      automatically align itself as Q3.28 in the results registers, saving bit-shift instructions.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "sineref.h"

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
// The ADC references are signed 16 bit representations of 16 samples @ 8192 Hz, or 512 Hz sinusoids.
// These values are used in MPY32 to do 16 x 16 bit signed multiplication as the lock-in references.
// This allows for fast conversion to back to Q3.28 when multiplying another Q3.28.

// Cosine, or X reference
const int16_t   SINE_cosADC[SINE_REFCNT_ADC] =
{
 32767,
 30273,
 23170,
 12539,
 0,
 -12539,
 -23170,
 -30273,
 -32767,
 -30273,
 -23170,
 -12539,
 0,
 12539,
 23170,
 30273
};

// Sine, or Y reference
const int16_t   SINE_sinADC[SINE_REFCNT_ADC] =
{
 0,
 12539,
 23170,
 30273,
 32767,
 30273,
 23170,
 12539,
 0,
 -12539,
 -23170,
 -30273,
 -32767,
 -30273,
 -23170,
 -12539
};

// The DAC references are unsigned 12 bit right-aligned samples, at twice the frequency of the ADC.
// This is to give the DAC12 a better reconstruction of the sine/cosine by the time the signal
// reaches the input of the oversampled sigma-delta converter.

// The DAC is configured to use VEREF+ as its reference voltage, so maximum 12-bit counts (4096)
// reaches a nominal output voltage of 1.8V.

// Cosine, copied into the Channel structure that subsequently feeds the DAC.
const uint16_t  SINE_cosDAC[SINE_REFCNT_DAC] =
{
 4094,
 4055,
 3938,
 3749,
 3494,
 3184,
 2830,
 2446,
 2047,
 1648,
 1264,
 910,
 600,
 345,
 156,
 39,
 0,
 39,
 156,
 345,
 600,
 910,
 1264,
 1648,
 2047,
 2446,
 2830,
 3184,
 3494,
 3749,
 3938,
 4055
};

// Sine, not currently used.
const uint16_t  SINE_sinDAC[SINE_REFCNT_DAC] =
{
 2047,
 2446,
 2830,
 3184,
 3494,
 3749,
 3938,
 4055,
 4094,
 4055,
 3938,
 3749,
 3494,
 3184,
 2830,
 2446,
 2047,
 1648,
 1264,
 910,
 600,
 345,
 156,
 39,
 0,
 39,
 156,
 345,
 600,
 910,
 1264,
 1648
};
