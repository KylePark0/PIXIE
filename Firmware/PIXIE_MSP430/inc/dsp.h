//===========================================================================================================================================
/*
 * dsp.h
 *
 *  Created on: May 5, 2023
 *      Author: K. Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "dsp.asm" is an MSP430 Assembly code block written to handle the PIXIE's Lock-in amplifier digital signal processing (DSP)
 *      algorithm, making use of Q3.28 formatted Fixed Point arithmetic and the processor's 32-bit hardware multiplier to maximize
 *      speed and precision. "dsp.h" externalizes this ASM code and its single subroutine as a C function / symbol.
 *
 *      It is *highly recommended* that users leave this code as-is unless they are absolutely familiar with the MSP430 instruction set,
 *      the extended instructions, MPY, fixed point arithmetic, and lattice wave digital filters.
 */
//===========================================================================================================================================
#ifndef INC_DSP_H_
#define INC_DSP_H_

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include <stdint.h>

//===========================================================================================================================================
// Subroutines as global C-functions
//===========================================================================================================================================
extern void         DSP_AnalysisLoop(int16_t in); //returns all done via global variables originating in main.c

#endif /* INC_FXP_H_ */
