//===========================================================================================================================================
/*
 * sinref.h
 *
 *  Created on: Apr 29, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "sineref.h" makes reference or "golden" sine waves available at compile time that can be loaded into RAM just before they
 *      are needed. They are carefully crafted to be phase-correct integer cosine and sine that obey fundamental properties like
 *      trig identities (cos^2 + sin^2 = 1) without roundoff error. The DAC sinusoids have a nonzero offset and fit within 12 unsigned
 *      bits. The ADC sinusoids fit in 16 signed bits instead; this is a hack to make multiplication by a Q3.28 fixed point number
 *      automatically align itself as Q3.28 in the results registers, saving bit-shift instructions.
 *
 */
//===========================================================================================================================================
#ifndef INC_SINEREF_H_
#define INC_SINEREF_H_

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Constants
//===========================================================================================================================================
// These values MUST NOT be changed. They are defined for code clarity only; adjusting these without a total
// rework of the hardware (ADC/DAC/DMA/Timer) logic and DSP code will cause the device to fail.

// 16 Samples @ 8192 Sps = 512 Hz sinusoids.
#define SINE_REFCNT_ADC (16)

// 32 Samples @ 16384 Sps = 512 Hz sinusoids.
#define SINE_REFCNT_DAC (32)

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
extern const int16_t    SINE_cosADC[SINE_REFCNT_ADC];
extern const int16_t    SINE_sinADC[SINE_REFCNT_ADC];

extern const uint16_t   SINE_cosDAC[SINE_REFCNT_DAC];
extern const uint16_t   SINE_sinDAC[SINE_REFCNT_DAC];

#endif /* INC_SINEREF_H_ */
