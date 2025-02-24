//===========================================================================================================================================
/*
 * adc.h
 *
 *  Created on: Apr 29, 2023
 *      Authors: K. Park, V. Sieben
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      "adc.h" declares the functions used to configure and set the MSP430's singular CTSD ADC. Since no access to data is granted by
 *      "adc.h", the ADC registers are fully encapsulated from the rest of the PIXIE's firmware (with the possible exception of "dma.c",
 *      since the DMA and ADC interact at a hardware level).
 *
 */
//===========================================================================================================================================
#ifndef INC_ADC_H_
#define INC_ADC_H_

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "pixie.h"

//===========================================================================================================================================
// Global Functions
//===========================================================================================================================================
void ADC_InitializeADC(void);
void ADC_ResetADC(void);

void ADC_SetADCChannel(uint16_t ch, uint16_t gain);

uint16_t ADC_CheckChannelGain(uint16_t ch, uint16_t gain);

#endif /* INC_ADC_H_ */
