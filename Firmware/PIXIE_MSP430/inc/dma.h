//===========================================================================================================================================
/*
 * dma.h
 *
 *  Created on: May 3, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "dma.c" defines functions used to configure, start, and stop the Direct Memory Access (DMA) peripheral and to update pointers
 *      used by the DMA. The DMA is the central coordinating block that triggers the Analysis loop when the ADC input buffer is full.
 *      In this sense, the Timer and DMA primarily responsible for program flow during measurements; the main program waits in Low
 *      Power Mode 0 (LP0) until the DMA ISR is triggered in response to timer-triggered transfer from ADC to buffer using the
 *      DMA. The DMA is also responsible for loading the DACs without CPU involvement.
 *
 */
//===========================================================================================================================================
#ifndef INC_DMA_H_
#define INC_DMA_H_
//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void DMA_InitializeDMA(void);

inline void DMA_SetDMA0(void);
inline void DMA_SetDMA1(void);
inline void DMA_SetDMA2(void);

inline void DMA_RenewDACBuffer(void);

void DMA_ResetDMA0(void);
void DMA_ResetDMA1(void);
void DMA_ResetDMA2(void);

#endif /* INC_DMA_H_ */
