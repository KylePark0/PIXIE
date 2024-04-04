//===========================================================================================================================================
/*
 * dma.c
 *
 *  Created on: May 3, 2023
 *      Author: Kyle Park
 *
 *      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
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

//===========================================================================================================================================
// Includes
//===========================================================================================================================================
#include "dma.h"

//===========================================================================================================================================
// void DMA_InitializeDMA(void)
//
//  "Cold-start" initializer for all three DMA channels. The individual Reset functions handle the specific configurations of each.
//
//===========================================================================================================================================
void DMA_InitializeDMA(void)
{
    // Clear DMA Control Registers.
    DMACTL0 = 0;
    DMACTL1 = 0;

    // Reset DMA Configurations
    DMA_ResetDMA0();
    DMA_ResetDMA1();
    DMA_ResetDMA2();

    return;
};

//===========================================================================================================================================
// Set Functions
//
//  Inline shortcuts to enabling the specified DMA channel (writing DMAEN to the respective CTL register turns that channel on).
//  The DMA channels are all Timer Triggered, so the DMA should be enabled before the respective timer is started.
//
//===========================================================================================================================================
inline void DMA_SetDMA0(void)
{
    DMA0CTL |= DMAEN;
};

inline void DMA_SetDMA1(void)
{
    DMA1CTL |= DMAEN;
};

inline void DMA_SetDMA2(void)
{
    DMA2CTL |= DMAEN;
};

//===========================================================================================================================================
// inline void DMA_RenewDACBuffer(void)
//
//  The DAC buffer fed to DMA1 changes depending on the step in the channel sequence: MAIN_DACBuffer is a pointer to the relevant channel's
//  buffer array. Changing MAIN_DACBuffer does not update the address stored in DMA1, so every time MAIN_DACBuffer is swapped, the address
//  in DMA1 needs to be renewed by calling this function.
//
//===========================================================================================================================================
inline void DMA_RenewDACBuffer(void)
{
    //Every time DAC buffer pointer is redirected to a channel array, this must be called.
    __data20_write_long((uintptr_t)(&DMA1SA), (uintptr_t)MAIN_DACBuffer);   // Source block address to first address in buffer.
};

//===========================================================================================================================================
// void DMA_ResetDMA0(void)
//
//  Resets the buffers, addresses, and configurations of DMA channel 0. DMA0 is configured to pull samples from the CTSD ADC every time
//  TimerA0 compare matches / overflows. The buffer automatically increments to the next empty address in MAIN_ADCBuffer until the entire
//  buffer is full. Once the Buffer is full, the address resets triggering the DMA ISR. This makes DMA0 the central coordinator of program
//  flow during measurements, as the main program is in LP0 until the interrupt triggers. In this way, TimerA0 controls the sample rate of
//  the device (i.e.: 8192 samples per second), whereas the size of MAIN_ADCBuffer and the triggering of DMA ISR control the analysis rate
//  of the device (8192 samples per second / 512 samples = 16 Hz).
//
//===========================================================================================================================================
void DMA_ResetDMA0(void)
{
    DMA0CTL &= ~(DMAEN);
    // Setup DMA0 to buffer from ADC ----------------------------------------------------------------------
    //  DMA0 has the highest priority interrupt, which is used to trigger the Analysis routine every time
    //  the ADC buffer is full (triggered when the destination address wraps back to start).

    //  Trigger selection: TimerA0 compare match == DMA0TSEL_1
    DMACTL0 |= DMA0TSEL_1;                                                   // Assign here, DMA0 and 1 share register.

    // DMA transfer event is timer interrupt triggered
    //  Extended instruction write to 20-bit addresses (ours fits in 16 bit address space but compiler prefers this way).
    __data20_write_long((uintptr_t) &DMA0SA, (uintptr_t)&CTSD16MEM0);       // Source block is ADC0 output register.
    __data20_write_long((uintptr_t) &DMA0DA, (uintptr_t)MAIN_ADCBuffer);    // Destination block address to first address in buffer.

    //  Block size. 512 elements at 16 bits each, 1KB total.
    DMA0SZ      = MAIN_ADCBUFFER_SIZE;

    //  Set transfer mode to "repeated singular transfer" (circular buffer) from buffer [0] to buffer [end].
    //      Once the buffer is full the Lock-in algorithm is triggered. Processing is done sequentially, but while
    //      the ADC/DMA will try to overwrite the first element in the buffer, this will take >2000 cycles and even the taps
    //      in the filter will have moved on to later elements in the buffer by then.
    DMA0CTL     = DMADT_4 | DMADSTINCR_3;                                   // DMADT_4 "repeated singular transfer" by...
                                                                            // DMADSTINCR_3 incrementing the destination address.

    //  Notes:
    //   Default settings for source and destination register size (both 16 bits)
    //   Interrupts ARE necessary for DMA0, when buffer fills and DMA0 triggers its rollover interrupt.
    DMA0CTL    |= DMAIE;
    return;
};

//===========================================================================================================================================
// void DMA_ResetDMA1(void)
//
//  Resets the buffers, addresses, and configurations of DMA channel 1. DMA1 is configured to push samples from the current channel's DAC
//  buffer onto the DAC0 output buffer. TimerA1 compare matches / overflows trigger the DMA transfers. The buffer automatically increments
//  and is designed as a circular buffer: the rollover does not trigger an interrupt and the transfers are endless until DMA1/TimerA1 is
//  explicitly stopped.
//
//===========================================================================================================================================
void DMA_ResetDMA1(void)
{
    DMA1CTL &= ~(DMAEN);
    // Setup DMA1 to feed DAC0 ----------------------------------------------------------------------------
    //  DAC0 provides the reference signal to the LED driver circuit.

    //  Trigger selection: TimerA1 compare match == DMA1TSEL_3
    DMACTL0    |= DMA1TSEL_3;                                               // OR'ed because DMA0 and 1 share register.

    //  Extended instruction write to 20-bit addresses (ours fits in 16 bit address space but compiler prefers this way).
    __data20_write_long((uintptr_t)(&DMA1SA), (uintptr_t)MAIN_DACBuffer);   // Source block address to first address in buffer.
    __data20_write_long((uintptr_t)(&DMA1DA), (uintptr_t)&DAC12_0DAT);      // Destination block is the DAC0 output register.

    //  Block size. 32 elements at 16 bits each, 64 Bytes total.
    DMA1SZ      = MAIN_DACBUFFER_SIZE;

    //  Set transfer mode to "repeated singular transfer" (circular buffer) from buffer [0] to buffer [end].
    DMA1CTL     = DMADT_4 | DMASRCINCR_3;                                   // DMADT_4 "repeated singular transfer" by...
                                                                            // DMASRCINCR_3 incrementing the source address.

    //  Notes:
    //   DMALEVEL is clear because we want edge triggering to ensure synchronicity. It's the timer's
    //   responsibility to cold-start every time.
    //   Default settings for source and destination register size (both 16 bits).
    //   Interrupts not necessary for the DAC transfers.
    return;
};

//===========================================================================================================================================
// void DMA_ResetDMA2(void)
//
//  Same as DMA_ResetDMA1(), but for DMA channel 2, DAC1, and TimerA1. Because both trigger from TimerA1, the two DAC outputs are
//  synchronized provided they carry the same waveform.
//  However, DAC1 is only used to output to a debug pin, so it is not strictly necessary. Therefore, DMA2 is also not necessary and
//  can be disabled safely.
//
//===========================================================================================================================================
void DMA_ResetDMA2(void)
{
    DMA2CTL &= ~(DMAEN);
    // Setup DMA2 to feed DAC1 ----------------------------------------------------------------------------
    //  DAC1 is only used for debug! Read out to Pin 4 of 6-pin J1; same terminal as power entry.

    //  Trigger selection: TimerA1 compare match == DMA2TSEL_3
    DMACTL1     |= DMA2TSEL_3;                                               // Assign here, DMA2 and 3 share register.

    //  Extended instruction write to 20-bit addresses (ours fits in 16 bit address space but compiler prefers this way).
    __data20_write_long((uintptr_t)(&DMA2SA), (uintptr_t)MAIN_DACBuffer);   // Source block address to first address in buffer.
    __data20_write_long((uintptr_t)(&DMA2DA), (uintptr_t)&DAC12_1DAT);      // Destination block is the DAC1 output register.

    //  Block size. 32 elements at 16 bits each, 64 Bytes total.
    DMA2SZ      = MAIN_DACBUFFER_SIZE;

    //  Set transfer mode to "repeated singular transfer" (circular buffer) from buffer [0] to buffer [end].
    DMA2CTL     = DMADT_4 | DMASRCINCR_3;                                   // DMADT_4 "repeated singular transfer" by...
                                                                            // DMASRCINCR_3 incrementing the source address.

    //  Notes:
    //   DMALEVEL is clear because we want edge triggering to ensure synchronicity. It's the timer's
    //   responsibility to cold-start every time.
    //   Default settings for source and destination register size (both 16 bits).
    //   Interrupts not necessary for the DAC transfers.
    return;
};
