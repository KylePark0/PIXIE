//===========================================================================================================================================
/*
 * main.c
 *
 *      Authors: K. Park, V. Sieben, J. Smith
 *
 *      Copyright © 2023-2025 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
 *      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
 *      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
 *      were made to the original content. No warranties are provided under this license.
 *
 *      Target MCU: TI MSP430FG6626
 *
 *      Latest Revision Date: February 11, 2024
 *
 * Version History:
 *      0.1: Created original code; driver level and HW verification of new PCB; checked and okay on first rev.
 *      0.2: New board v.2 for PGA and variety of new features.
 *      0.4: Fixed Lock-in to use LWDF/Butterworth and larger sample size.
 *      0.8: First release, too many changes to list here!
 *
 * Known issues:
 *      - Commands received over UART may be ignored while measurements in progress. This is because the DSP / Analysis
 *      ISR currently takes top software priority over all other operations, including comms. Commands received while not
 *      actively performing analysis (~80% of every 1/16 s analysis period), or while device is IDLE, work as expected.
 *      To workaround, a human operator via terminal can simply repeat the command until it is executed. A coordinating
 *      device can wait until just after a measurement is reported, as this is the last step of analysis.
 *
 *      - When starting in IMMEDIATE_ENDLESS mode, the first command received over UART is ignored regardless of the
 *      issue reported above. The second and all subsequent commands received will behave as described above.
 *
 */
//===========================================================================================================================================

//===========================================================================================================================================
// Includes
//===========================================================================================================================================

// Platform Specific Includes
#include <dsp.h>
#include "pixie.h"

// C-Standard Includes
#include <stdio.h>
#include <string.h>
#include <math.h>

// Project Specific Includes
//  Configurations and Software
#include "sineref.h"
#include "channels.h"
#include "cmd.h"
#include "state.h"

//  Hardware and Peripherals
#include "adc.h"
#include "bak.h"
#include "clk.h"
#include "dac.h"
#include "dma.h"
#include "gpio.h"
#include "opamp.h"
#include "timer.h"
#include "uart.h"
#include "wdt.h"

//===========================================================================================================================================
// Constants
//===========================================================================================================================================
//  3600 seconds is 1 hour, and 3600 s * 16 Hz is >57k count, so it's getting close to the limit of a 16 bit unsigned integer.
//  Therefore, RUN commands refuse durations longer than 3600 seconds, unless the requested duration is exactly 3678, marked
//  as ENDLESS_RUN. The cycle counter will never decrement if equal to ENDLESS_CYCLES, or 16 * ENDLESS_RUN.
#define             ENDLESS_RUN                         (3678U)
#define             ENDLESS_CYCLES                      (ENDLESS_RUN * 16U)

//===========================================================================================================================================
// Global Variables
//===========================================================================================================================================
//  Operating System variables.
volatile uint16_t   MAIN_ResetFlag                      = 0xFFFF;
volatile uint16_t   MAIN_PendingRTCSetFlag              = 0x0000;
CLK_TimeStamp       MAIN_CurrentTime                    = {0};

//  DSP Global Variables. Device-wide symbols to simplify pointing to by ASM file(s).
volatile uint16_t*  MAIN_DACBuffer                      = NULL;         // Pointer to array stored in ActiveChannel's struct.
volatile int16_t    MAIN_ADCBuffer[MAIN_ADCBUFFER_SIZE] = {0};          // Single buffer array filled by ADC & DMA.

volatile int32_t    MAIN_LockInXRef[MAIN_REFCNT_LOCKIN] = {0};          // Array w/ LIA's X signal reference.
volatile int32_t    MAIN_LockInYRef[MAIN_REFCNT_LOCKIN] = {0};          // Array w/ LIA's Y signal reference.

volatile int32_t    MAIN_FilterTap1                     = 0x00000000;   // BPF block 1 tap
volatile int32_t    MAIN_FilterTap2                     = 0x00000000;   // BPF block 2 tap

volatile int32_t    MAIN_XFilterTap1                    = 0x00000000;   // LPF input side tap, X signal
volatile int32_t    MAIN_XFilterTap2                    = 0x00000000;   // LPF output side tap, X signal
volatile int32_t    MAIN_YFilterTap1                    = 0x00000000;   // LPF input side tap, Y signal
volatile int32_t    MAIN_YFilterTap2                    = 0x00000000;   // LPF output side tap, Y signal

volatile int16_t    MAIN_XOut                           = 0;            // Storage for latest X signal output
volatile int16_t    MAIN_YOut                           = 0;            // Storage for latest Y signal output

volatile int32_t    MAIN_XAcc                           = 0;            // Sum of all X signal outputs / 512
volatile int32_t    MAIN_YAcc                           = 0;            // Sum of all Y signal outputs / 512

//===========================================================================================================================================
// Local Variables
//===========================================================================================================================================
volatile int16_t    MAIN_SequenceNumber                 = 0;
volatile int16_t    MAIN_IndexNumber                    = 0;

//===========================================================================================================================================
// Function Declarations (Prototypes)
//===========================================================================================================================================
void MAIN_InitializeLockIn(void);

void MAIN_HandleCommand(void);

void MAIN_ExecuteRUN(void);
void MAIN_ExecuteHELP(void);
void MAIN_ExecuteSTOP(uint16_t silent);
void MAIN_ExecuteSAVE(void);
void MAIN_ExecuteSPOOF(void);
void MAIN_ExecuteFLOOD(void);
void MAIN_ExecuteSGAIN(void);
void MAIN_ExecuteGGAIN(void);
void MAIN_ExecuteRESET(void);
void MAIN_ExecuteSTATUS(void);
void MAIN_ExecuteGCLOCK(void);
void MAIN_ExecuteSCLOCK(void);
void MAIN_ExecuteSPGAIN(void);
void MAIN_ExecuteGPGAIN(void);
void MAIN_ExecuteSATTEN(void);
void MAIN_ExecuteGATTEN(void);

//===========================================================================================================================================
// Program Entry Point (main)
//===========================================================================================================================================
int main(void)
{
    // Setup the Watchdog Timer -------------------------------------------------------------------------------
    WDT_InitializeWDT();

    // Setup GPIO ---------------------------------------------------------------------------------------------
    GPIO_InitializeGPIO();

    // Setup the 16-bit ADC -----------------------------------------------------------------------------------
    //  Placed as close to start as possible due to errata!
    ADC_InitializeADC();

    // Setup the 12-bit DAC -----------------------------------------------------------------------------------
    DAC_InitializeDAC();

    // Setup the Internal OP AMPS -----------------------------------------------------------------------------
    OPAMP_InitializeOPAMP();

    // Setup Clocks -------------------------------------------------------------------------------------------
    //  Must be placed after ADC init due to errata!
    CLK_InitializeCLK();

    // Setup UART ---------------------------------------------------------------------------------------------
    UART_InitializeUART();

    // Setup DMA for all peripherals --------------------------------------------------------------------------
    DMA_InitializeDMA();

    // Setup Timers for all peripherals -----------------------------------------------------------------------
    TIMER_InitializeTimers();

    // Setup Lock-in references -------------------------------------------------------------------------------
    MAIN_InitializeLockIn();

    // Setup Device State -------------------------------------------------------------------------------------
    STATE_InitializeState();

    // Setup Channel Handling Structures ----------------------------------------------------------------------
    CH_InitializeChannels();

    // Enable Interrupts to start main functionality ----------------------------------------------------------
    __bis_SR_register(GIE);

    // Pre-amble ----------------------------------------------------------------------------------------------
    //  If "Verbose Startup" is flagged, echo some startup text if enabled. In all cases, parse the battery
    //  -backup memory
#ifdef __USE_VERBOSE_STARTUP
    UART1_puts(sprintf(UART1_Output.buffer, "\n%s \t: hv:%s fv:%s sn:%s\n", DEVICE_NAME, HW_VERSION, FW_VERSION, SERIAL_NUMBER));
    UART1_puts(sprintf(UART1_Output.buffer, "Compiled: %s\t%s\n", __DATE__, __TIME__));
    if(BAK_AssessBatteryBackup())
    {
        UART1_puts(sprintf(UART1_Output.buffer, "Channels: Default\n"));
    }
    else
    {
        UART1_puts(sprintf(UART1_Output.buffer, "Channels: Backup restored\n"));
    }
    UART1_puts(sprintf(UART1_Output.buffer, "Time\t: %d-%02d-%02dT%02d:%02d:%02dZ\n",
                               MAIN_CurrentTime.year,
                               MAIN_CurrentTime.month,
                               MAIN_CurrentTime.day,
                               MAIN_CurrentTime.hour,
                               MAIN_CurrentTime.min,
                               MAIN_CurrentTime.sec));
#else
    BAK_AssessBatteryBackup();
#endif

    // Save either default or redundant settings back to backup memory
    BAK_CommitBatteryBackup();

    // IMMEDIATE ENDLESS Startup -------------------------------------------------------------------------------
    //  If the device is configured to run immediately, we just hijack the command interface to "send" a
    //  run command and handle it as the main loop would.
#ifdef __IMMEDIATE_ENDLESS
    CMD_Command.id = CMD_RUN;
    CMD_Command.data.RUN.channel    = __IMMEDIATE_ENDLESS_MODE;
    CMD_Command.data.RUN.duration   = ENDLESS_RUN;

    MAIN_ExecuteRUN();

    // Place the CPU into Low Power Mode 0, so that only peripherals and interrupts run.
    // LPM0 until a potential command is received by UART1. If the RUN command is stopped via UART, the
    // device will carry on from here as if it had started in DEBUG mode.
    __bis_SR_register(LPM0_bits | GIE);
#endif

    // Main Program Loop ---------------------------------------------------------------------------------------
    do
    {
        // Send ready symbol to Port, unless in a RUN state.
        if(!(STATE_IsRunning()))
        {
            UART1_puts(sprintf(UART1_Output.buffer, "\n>>"));
        }

        // Place the CPU into Low Power Mode 0, so that only peripherals and interrupts run.
        //  LPM0 until a potential command is received by UART1.
        __bis_SR_register(LPM0_bits | GIE);

        // CPU has woken from LPM0 and command buffer must be filled. Handle it!
        MAIN_HandleCommand();

        // Prepare for the next main loop cycle.

    } while(MAIN_ResetFlag);
    // Software Reset Condition -------------------------------------------------------------------------------
    //  If this point is reached, the main loop has been broken by a request for software reset. Device will
    //  run an extra STOP to set pins and peripherals to "safe" starting points, and then the WDT will be
    //  enabled and forced to hang to trigger a WDT reset.

    // Stop interrupts and do cleanup
    MAIN_ExecuteSTOP(true);

    // Send messages to terminal
    UART1_puts(sprintf(UART1_Output.buffer, "RESET, Device entering reset condition.\n\n"));

    // Contact Watchdog to instigate a watchdog reset.
    WDT_SoftwareReset();

    // Trap and wait until WDT kicks in.
    while(1)
    {
        asm("MAIN_SWR_LOOP: NOP");
    }
};

//===========================================================================================================================================
// Functions
//===========================================================================================================================================

//===========================================================================================================================================
// void MAIN_InitializeLockIn(void)
//
//  Prepares globally referenced symbols by moving their data from FLASH to RAM. Permanent for the "LockIn(...)" arrays, but these data are
//  overwritten in the DACBuffer array every time a RUN command is called, because the waveform in the buffer is rescaled by the channel's
//  attenuation.
//
//===========================================================================================================================================
void MAIN_InitializeLockIn(void)
{
    uint16_t i;
    //  Move Lock-in references from FLASH to RAM.
    for(i = 0; i < SINE_REFCNT_ADC; i++)
    {
        MAIN_LockInXRef[i] = SINE_cosADC[i];
        MAIN_LockInYRef[i] = SINE_sinADC[i];
    }

    //  Move DAC buffer from FLASH to RAM. Not strictly necessary, this happens before every RUN operation.
    for(i = 0; i < SINE_REFCNT_DAC; i++)
    {
        MAIN_DACBuffer[i] = SINE_cosDAC[i];
    }
};

//===========================================================================================================================================
// void MAIN_InitializeLockIn(void)
//
//  Potential commands (\n terminated) received by the UART are deciphered using CMD_ParseCommannd(). If the command is both recognized
//  AND properly formatted, the corresponding MAIN_Execute(...) executes the command. Otherwise, error handling text is sent via UART.
//
//===========================================================================================================================================
void MAIN_HandleCommand(void)
{
    //Interpret Received Command
    // First, parse the input buffer to see if a legitimate command is sent and properly formatted.
    CMD_Command.id = 0;
    CMD_Command.data.ERR = 0;

    if(CMD_ParseCommand(UART1_Input.buffer))
    {
        switch(CMD_Command.id)
        {
        case CMD_RUN:
            MAIN_ExecuteRUN();
            break;
        case CMD_HELP:
            MAIN_ExecuteHELP();
            break;
        case CMD_STOP:
            MAIN_ExecuteSTOP(false);
            break;
        case CMD_SAVE:
            MAIN_ExecuteSAVE();
            break;
        case CMD_SPOOF:
            MAIN_ExecuteSPOOF();
            break;
        case CMD_FLOOD:
            MAIN_ExecuteFLOOD();
            break;
        case CMD_SGAIN:
            MAIN_ExecuteSGAIN();
            break;
        case CMD_GGAIN:
            MAIN_ExecuteGGAIN();
            break;
        case CMD_RESET:
            MAIN_ExecuteRESET();
            break;
        case CMD_STATUS:
            MAIN_ExecuteSTATUS();
            break;
        case CMD_SCLOCK:
            MAIN_ExecuteSCLOCK();
            break;
        case CMD_GCLOCK:
            MAIN_ExecuteGCLOCK();
            break;
        case CMD_SPGAIN:
            MAIN_ExecuteSPGAIN();
            break;
        case CMD_GPGAIN:
            MAIN_ExecuteGPGAIN();
            break;
        case CMD_SATTEN:
            MAIN_ExecuteSATTEN();
            break;
        case CMD_GATTEN:
            MAIN_ExecuteGATTEN();
            break;
        default:
            //If command code is written as CMD_NULL or something unexpected occurred, we will end up here.
            break;
        }
    }
    // If the "if" statement fails or something is wrong during the Execution function, the CMD struct will
    // now be carrying error handling information.
    //
    //  Check Error Handling Data in CMD_Command struct.
    if(CMD_Command.id == CMD_NULL)
    {
        switch(CMD_Command.data.ERR)
        {
        case CMD_ERROR_BADCMD:
            sprintf(UART1_Output.buffer, "ERR, Bad Command or format.\n");
            break;
        case CMD_ERROR_NOFIELDS:
            sprintf(UART1_Output.buffer, "ERR, No fields where expected, skipping command.\n");
            break;
        case CMD_ERROR_EXFIELDS:
            sprintf(UART1_Output.buffer, "ERR, Extra fields detected, skipping command.\n");
            break;
        case CMD_ERROR_BADFIELD:
            sprintf(UART1_Output.buffer, "ERR, Improper field entry, skipping command.\n");
            break;
        case CMD_ERROR_MUSTIDLE:
            sprintf(UART1_Output.buffer, "ERR, Can't execute while measuring.\n");
            break;
        case CMD_ERROR_CHANLOCK:
            sprintf(UART1_Output.buffer, "ERR, Channel is locked!\n"); //depreciated feature
            break;
        default:
            sprintf(UART1_Output.buffer, "ERR, Unknown!!!\n"); //if reached, something went very wrong!
            break;
        }
        UART1_puts(strlen(UART1_Output.buffer));
    }

    // Prepare for next cycle through main loop.
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteRUN(void)
//
//  If the device state is valid (IDLE) and the input channel and duration are both acceptable (channel = 0...4 and duration 0...3599 OR
//  duration == ENDLESS_RUN), the device state is set to RUN and the device begins measuring.
//  If the channel is 0, the device will run in the hard-coded sequential (SEQN) mode. If the channel is 1...4, then the device
//  will run in single-channel (DATA) mode using channel 1...4.
//  The device will run for duration seconds, or endlessly if this field is set to ENDLESS_RUN. The device will not attempt to match whole-
//  numbers of channel sequences, it will end strictly when stated to.
//
//  See "channels.c / channels.h" for details on channel sequences.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteRUN(void)
{
    uint16_t i = 0;
    uint16_t j = 0;

    // RUN will be ignored if the device is not currently IDLE.
    if(STATE_IsIdle())
    {
        // Ensure, once again, that input fields are valid for RUN.
        if(CMD_Command.data.RUN.channel > 4 || CMD_Command.data.RUN.duration < 1)
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
        if(CMD_Command.data.RUN.duration > 3600 && CMD_Command.data.RUN.duration != ENDLESS_RUN)
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
        if(CMD_Command.data.RUN.channel == 0 && CH_ChannelSequence != NULL)
        {
            // Sequential Channel Run Case
            // Set the State indicator to RUN.
            STATE_SetState(STATE_RUN);

            // Set the Channel indicator to the first channel in the channel sequence array.
            CH_ActiveChannel            = CH_ChannelSequence;

            // Set the total number of Analysis cycles by converting from seconds (1 cycle = 1/16th second).
            CH_RunCycles                = CMD_Command.data.RUN.duration * 16;

            // Because of how exclusions would interact, they are not used in sequence mode.
            CH_RunExclusions            = 0;

            // Set the first channel's cycle counter.
            CH_ActiveChannel->cycles    = CH_ActiveChannel->seqcycles;

            // Load the DAC with waveform scaled by channel attenuation.
            for(i = 0; i < MAIN_DACBUFFER_SIZE; i++)
            {
                for(j = 0; j < CHANNEL_SEQUENCE_COUNT; j++)
                {
                    CH_ChannelSequence[j].DACbuffer[i] = (uint16_t)((SINE_cosDAC[i]) >> CH_ChannelSequence[j].attenuation);
                }
            }
            MAIN_DACBuffer = (uint16_t*)CH_ActiveChannel->DACbuffer;

            //  Reset Data-reporting indices.
            MAIN_SequenceNumber         = 0;
            MAIN_IndexNumber            = 0;

            // Renew the DAC DMA target to the current channel's buffer.
            DMA_RenewDACBuffer();

            // Turn off all leds;
            GPIO_ResetChannelLEDs();

            // Turn on the active channel LED and set its voltage gain.
            GPIO_SetChannelLED(CH_ActiveChannel->id);
            GPIO_SetChannelPregain(CH_ActiveChannel->id,CH_ActiveChannel->pregain);

            // Set the ADC channel to target the correct input.
            ADC_SetADCChannel(CH_ActiveChannel->id, CH_ActiveChannel->gain);

            // Enable DMA0 to enable timer0-triggered ADC buffering and analysis loop on DMA rollover interrupt.
            DMA_SetDMA0();

            // Enable DMA1 to enable timer1-triggered DAC output.
            DMA_SetDMA1();

            // Start the ADC and DAC by starting Timer0 and Timer1.
            TIMER_StartTimer0AND1();
        }
        else
        {
            // Single Channel Run Case
            // Set the State indicator to RUN.
            STATE_SetState(STATE_RUN);

            // Set the Channel indicator to the selected channel.
            CH_ActiveChannel            = CH_Channels[CMD_Command.data.RUN.channel];

            // Single channel run means the next field should be NULL.
            CH_ActiveChannel->next      = NULL;

            // Set the number of Analysis cycles by converting from seconds (1 cycle = 1/16th second).
            CH_RunCycles                = CMD_Command.data.RUN.duration * 16;

            // Set the number of leading analysis cycles to skip before reporting begins.
            CH_RunExclusions            = EXCLUSIONS;

            // Load the DAC with waveform scaled by channel attenuation.
            for(i = 0; i < MAIN_DACBUFFER_SIZE; i++)
            {
                CH_ActiveChannel->DACbuffer[i] = (uint16_t)((SINE_cosDAC[i]) >> CH_ActiveChannel->attenuation);
            }
            MAIN_DACBuffer = (uint16_t*)CH_ActiveChannel->DACbuffer;

            //  Reset Data-reporting indices.
            MAIN_SequenceNumber          = 0;
            MAIN_IndexNumber             = 0;

            // Renew the DAC DMA target to the current channel's buffer.
            DMA_RenewDACBuffer();

            // Turn off all leds;
            GPIO_ResetChannelLEDs();

            // Turn on the active channel LED and set its voltage gain.
            GPIO_SetChannelLED(CH_ActiveChannel->id);
            GPIO_SetChannelPregain(CH_ActiveChannel->id,CH_ActiveChannel->pregain);

            // Set the ADC channel to target the correct input.
            ADC_SetADCChannel(CH_ActiveChannel->id, CH_ActiveChannel->gain);

            // Enable DMA0 to enable timer0-triggered ADC buffering and analysis loop on DMA rollover interrupt.
            DMA_SetDMA0();

            // Enable DMA1 to enable timer1-triggered DAC output.
            DMA_SetDMA1();

            // Start the ADC and DAC by starting Timer0 and Timer1.
            TIMER_StartTimer0AND1();
        }
    }
    else
    {
        CMD_Command.id          = NULL;
        CMD_Command.data.ERR    = CMD_ERROR_MUSTIDLE;
    }
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteSPOOF(void)
//
//  SPOOF is a hardware debugging state. It compliments the SPOOF command. It exists to mimic the single channel RUN state, but without
//  actually turning on the LEDs / generating waveforms. As a result, the "measurement" should be the result of small electronic noise.
//  If large data values are reported, this may indicate a hardware problem.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteSPOOF(void)
{
    if(STATE_IsIdle())
    {
        // Ensure, once again, that input fields are valid for SPOOF.
        if(CMD_Command.data.SPOOF.channel < 1 || CMD_Command.data.SPOOF.channel > 4 || CMD_Command.data.SPOOF.duration < 1)
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
        if(CMD_Command.data.SPOOF.duration > 3600 && CMD_Command.data.SPOOF.duration != ENDLESS_RUN)
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }

        // Set the State indicator to SPOOF.
        STATE_SetState(STATE_SPOOF);

        // Set the Channel indicator to the selected channel.
        CH_ActiveChannel            = CH_Channels[CMD_Command.data.SPOOF.channel];

        // Set the number of Analysis cycles by converting from seconds (1 cycle = 1/16th second).
        CH_RunCycles                = CMD_Command.data.SPOOF.duration * 16;

        // Set the number of leading analysis cycles to skip before reporting begins.
        CH_RunExclusions            = EXCLUSIONS;

        // Turn off all leds; spoof doesn't activate the LEDs.
        GPIO_ResetChannelLEDs();

        // Set the channel gains, spoof measures transimpedance noise and interference.
        GPIO_SetChannelPregain(CH_ActiveChannel->id,CH_ActiveChannel->pregain);

        // Set the ADC channel to target the correct input.
        ADC_SetADCChannel(CH_ActiveChannel->id, CH_ActiveChannel->gain);

        // Enable DMA0 to enable timer0-triggered ADC buffering and analysis loop on DMA rollover interrupt.
        DMA_SetDMA0();

        // Start the ADC by starting Timer0
        TIMER_StartTimer0();
    }
    else
    {
        CMD_Command.id          = NULL;
        CMD_Command.data.ERR    = CMD_ERROR_MUSTIDLE;
    }
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteHELP(void)
//
//  HELP echoes a list of currently available commands... except it hasn't been filled in yet.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteHELP(void)
{
    // Help is a very verbose command so it shouldn't be used while measuring.
    if(STATE_IsRunning())
    {
        CMD_Command.id          = NULL;
        CMD_Command.data.ERR    = CMD_ERROR_MUSTIDLE;
    }
    else
    {
        // If the device is IDLE or FLOODing, then the full list of commands can be returned.
        if(CMD_Command.data.HELP.channel == 0)
        {
            UART1_puts(sprintf(UART1_Output.buffer, "HELP, TODO: Fill in list of commands later.\n"));
        }
        else
        {
            UART1_puts(sprintf(UART1_Output.buffer, "HELP, TODO: Fill in command details later.\n"));
        }
    }
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteSTOP(void)
//
//  STOP is treated as an emergency command so everything, including potentially valid data, should be halted and the device should be
//  returned to its initial states. STOP halts interrupts so that RTC, UART, and Analysis interrupts will fail even if pending.
//
//
//  STOP is the only Execution function that takes an input, which allows it to be silenced (i.e.: when system reset is called).
//
//===========================================================================================================================================
void MAIN_ExecuteSTOP(uint16_t silent)
{
    // Stop is an emergency command so everything should halt and the current test data should be
    //  voided. In addition, a halt message should be sent to terminal to communicate this to
    //  any datalogging.
    if(STATE_IsIdle())
    {
        //Do nothing in idle case, for now.
        return;
    }
    // Otherwise, return device state to idle.
    //  Since this is an emergency stop, interrupts should be halted in this function.
    __bic_SR_register(GIE);

    //  Set state indicator to idle
    STATE_SetState(STATE_IDLE);

    //  Reset Timers
    TIMER_ResetTimer0();
    TIMER_ResetTimer1();

    //  Turn off all leds;
    GPIO_ResetChannelLEDs();

    //  Set channel gains to zero.
    GPIO_ResetChannelPregains();

    //  Nullify active channel
    CH_ActiveChannel = NULL;

    //  Set DAC channels to 0.
    DAC12_0DAT = 0x0000;
    DAC12_1DAT = 0x0000;

    //  Turn off DMAs.
    DMA_InitializeDMA();

    //  Reset the taps and accumulators.
    MAIN_FilterTap1 = 0;
    MAIN_FilterTap2 = 0;
    MAIN_XFilterTap1= 0;
    MAIN_XFilterTap2= 0;
    MAIN_YFilterTap1= 0;
    MAIN_YFilterTap2= 0;
    MAIN_XAcc       = 0;
    MAIN_YAcc       = 0;

    //  Reset Data-reporting indices.
    MAIN_SequenceNumber                 = 0;
    MAIN_IndexNumber                    = 0;

    //  Cleanup is done, so interrupts can resume.
    __bis_SR_register(GIE);

    //  Send stop message to terminal, unless silenced.
    if(silent)
    {
        return;
    }
    UART1_puts(sprintf(UART1_Output.buffer, "STOP, Device halted successfully\n"));

    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteSAVE(void)
//
//  SAVE records the current gain settings for all 4 channels to the battery-backup registers. If a cell-battery is installed, these settings
//  will be retained after power-down, though they are cleared when the MPS430 is flashed. Since each of the 4 channels has 3 gain settings,
//  there is not enough backup memory to save these integers in their 8/16 bit form. Instead, the 3 settings are encoded and packed into
//  the registers. Because of the data manipulation involved, this command can only be called while the device is IDLE.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteSAVE(void)
{
    // There's a fair bit of data manipulation here, this was not written for speed.
    // Therefore, don't allow this to execute while running.
    if(STATE_IsRunning())
    {
        CMD_Command.id          = NULL;
        CMD_Command.data.ERR    = CMD_ERROR_MUSTIDLE;
    }
    else
    {
        BAK_CommitBatteryBackup();
        UART1_puts(sprintf(UART1_Output.buffer, "SAVE, Channel settings saved to backup memory.\n"));
    }

    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteFLOOD(void)
//
//  FLOOD is a hardware debugging state. It compliments the SPOOF command. It sets the device state to FLOOD, which is similar to IDLE, but
//  turns on the selected channel's LED. If the LED does not turn on when expected, or an unexpected LED turns on when it should not, this
//  could indicate a hardware problem.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteFLOOD(void)
{
    uint16_t i;
    // Device must be idle to execute FLOOD command.
    if(STATE_IsIdle())
    {
        // Ensure, once again, that input field is a valid channel for FLOOD.
        if(CMD_Command.data.FLOOD.channel < 1 || CMD_Command.data.FLOOD.channel > 4)
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }

        // Set the State indicator to FLOOD.
        STATE_SetState(STATE_FLOOD);

        // Set the Active Channel indicator.
        CH_ActiveChannel = CH_Channels[CMD_Command.data.FLOOD.channel];

        // Load the DAC with waveform scaled by channel power.
        for(i = 0; i < MAIN_DACBUFFER_SIZE; i++)
        {
#ifdef  __DAC_USES_COSINE //Should the DAC output cosine as its signal?
            MAIN_DACBuffer[i]       = SINE_cosDAC[i];
            MAIN_DACBuffer[i]     >>= CH_ActiveChannel->attenuation;
#endif
#ifndef __DAC_USES_COSINE //If not, the DAC output uses sine.
            MAIN_DACBuffer[i]       = SINE_sinDAC[i];
            MAIN_DACBuffer[i]     >>= CH_ActiveChannel->attenuation;;
#endif
        }

        // Turn off all leds;
        GPIO_ResetChannelLEDs();

        // Turn on the active channel LED and set its voltage gain.
        GPIO_SetChannelLED(CH_ActiveChannel->id);
        GPIO_SetChannelPregain(CH_ActiveChannel->id, 0); //gain forced to zero

        // Set the ADC channel to target the correct input (not technically needed).
        ADC_SetADCChannel(CH_ActiveChannel->id, CH_ActiveChannel->gain);

        // DON'T Enable DMA0, since flood isn't supposed to actually capture or process data.

        // Enable DMA1 to enable timer1-triggered DAC output.
        DMA_SetDMA1();

        // Start the output by starting timer1, TimerA1
        TIMER_StartTimer1();
    }
    else
    {
        CMD_Command.id = CMD_NULL;
        CMD_Command.data.ERR = CMD_ERROR_MUSTIDLE;
    }
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteSGAIN(void)
//
//  SGAIN attempts to set the selected channel's CTDS Analog-to-Digital-Converter Gain to one of the hardware defined values (1, 2, 4, 8,
//  or 16). The ADC_CheckChannelGain function is called to see if the requested gain value is valid (i.e.: one listed above). This does not
//  *actually* change the ADC gain, it changes the value stored in the CH_Channels[] data structure. This data will then change the ADC gain
//  when this channel is called during a RUN command.
//
//  If a backup battery is installed, this change can be saved using the SAVE command. Without a backup battery, the gain is reset to its
//  hardcoded default on startup/reset.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteSGAIN(void)
{
    uint16_t ret;
    if(STATE_IsIdle())
    {
        if((ret = ADC_CheckChannelGain(CMD_Command.data.SGAIN.channel, CMD_Command.data.SGAIN.value)) != 0xFFFF)
        {
            CH_Channels[CMD_Command.data.SGAIN.channel]->gain = ret;
            UART1_puts(sprintf(UART1_Output.buffer, "SGAIN, Channel %d gain set to %d successfully.\n", CMD_Command.data.SGAIN.channel, ret));
        }
        else
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
    }
    else
    {
        CMD_Command.id = CMD_NULL;
        CMD_Command.data.ERR = CMD_ERROR_MUSTIDLE;
    }
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteGGAIN(void)
//
//  GGAIN attempts to get the selected channel's CTSD Analog-to-Digital-Converter Gain. This does not *actually* report the current the ADC
//  gain; it fetches the value stored in the CH_Channels[] data structure. This data will be used to set the ADC gain when this channel is
//  called during a RUN command.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteGGAIN(void)
{
    if(STATE_IsIdle())
    {
        if(CMD_Command.data.GGAIN.channel < 1 || CMD_Command.data.GGAIN.channel > 4)
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
        UART1_puts(sprintf(UART1_Output.buffer, "GGAIN, Channel %d gain is set to: %d.\n", CMD_Command.data.GGAIN.channel, CH_Channels[CMD_Command.data.GGAIN.channel]->gain));
    }
    else
    {
        CMD_Command.id = CMD_NULL;
        CMD_Command.data.ERR = CMD_ERROR_MUSTIDLE;
    }
};

//===========================================================================================================================================
// void MAIN_ExecuteRESET(void)
//
//  RESET attempts to force a software reset of the device as quickly as possible. It disables power saving and interrupts to control program
//  flow.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteRESET(void)
{
    // Disable LP mode and interrupts.
    __bic_SR_register(LPM0_bits | GIE);

    // Clear software reset flag.
    MAIN_ResetFlag = 0x0000;
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteSTATUS(void)
//
//  STATUS can return two separate messages to the terminal depending on how the command is formatted.
//
//  If no channel number argument is specified or the number is 0, then STATUS returns information about the device, firmware compilation,
//  and device state.
//
//  If a channel number argument 1...4 is specified, STATUS returns that numerical channel's target (i.e.: real name) and current gain and
//  attenuation settings.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteSTATUS(void)
{
    uint16_t i; //trying to provoke complier to do one register load from CMD struct mem.
    // The status command returns a full slate of info if the device state is idle.
    if(STATE_IsIdle())
    {
        i = CMD_Command.data.STATUS.channel;
        if(i == 0)
        {
            UART1_puts(sprintf(UART1_Output.buffer, "STATUS,\n", DEVICE_NAME, HW_VERSION, FW_VERSION, SERIAL_NUMBER));
            UART1_puts(sprintf(UART1_Output.buffer, "%s : hv:%s fv:%s sn:%s\n", DEVICE_NAME, HW_VERSION, FW_VERSION, SERIAL_NUMBER));
            UART1_puts(sprintf(UART1_Output.buffer, "Compiled: %s\t%s\n", __DATE__, __TIME__));
            UART1_puts(sprintf(UART1_Output.buffer, "State: %s\n", STATE_GetStateName()));
        }
        else if(i < 5)
        {
            UART1_puts(sprintf(UART1_Output.buffer, "STATUS,\tChannel %d:\n", i));
            UART1_puts(sprintf(UART1_Output.buffer, "Target:\t\t%s\n", PIXIE_TypeStrings(CH_Channels[i]->typeid)));
            UART1_puts(sprintf(UART1_Output.buffer, "Attenuation:\t%d\n", CH_Channels[i]->attenuation));
            UART1_puts(sprintf(UART1_Output.buffer, "Gain:\t\t%d\n", CH_Channels[i]->gain));
            UART1_puts(sprintf(UART1_Output.buffer, "Pregain:\t%d\n", CH_Channels[i]->pregain));
        }
        else
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
        }
    }
    else
    {
        // Otherwise, only the current device state is returned.
        UART1_puts(sprintf(UART1_Output.buffer, "STATUS, %s\n", STATE_GetStateName()));
    }
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteSCLOCK(void)
//
//  SCLOCK sets the RTC of the MSP430 to the time specified in the argument string, which is assumed to be given in ISO 8601 UTC time.
//  For example, the time should be set as "2024-02-13T13:45:56Z" to specify February 13th, 2024, at 13:45:56 UTC. The setting operation
//  uses a software buffer to prevent glitches in the RTC: the program will wait until writes to the RTC registers are valid.
//
//  If a backup battery is installed, this change can be saved using the SAVE command. Without a backup battery, the RTC is reset to zeros
//  in every register on startup/reset.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteSCLOCK(void)
{
    // The RTC should not be interfered with while actively measuring in case we desire time-stamped output.
    if(STATE_IsRunning())
    {
        CMD_Command.id      = CMD_NULL;
        CMD_Command.data.ERR= CMD_ERROR_MUSTIDLE;
        return;
    }
    // Check to make sure the data is actually sensible, error handle if not. Not goign to bother with efficiency here...
    if(CMD_Command.data.CLOCK.year  > 4096)                                     goto EXSCLOCK_FAIL;
    if(CMD_Command.data.CLOCK.month < 1 || CMD_Command.data.CLOCK.month > 12)   goto EXSCLOCK_FAIL;
    if(CMD_Command.data.CLOCK.day   < 1 || CMD_Command.data.CLOCK.day > 31)     goto EXSCLOCK_FAIL;
    if(CMD_Command.data.CLOCK.hour  > 23)                                       goto EXSCLOCK_FAIL;
    if(CMD_Command.data.CLOCK.min   > 59)                                       goto EXSCLOCK_FAIL;
    if(CMD_Command.data.CLOCK.sec   > 59)                                       goto EXSCLOCK_FAIL;

    // Update the RAM time and set a pending flag to update the RTC registers in the next interrupt.
    MAIN_CurrentTime.year   = CMD_Command.data.CLOCK.year;
    MAIN_CurrentTime.month  = CMD_Command.data.CLOCK.month;
    MAIN_CurrentTime.day    = CMD_Command.data.CLOCK.day;
    MAIN_CurrentTime.hour   = CMD_Command.data.CLOCK.hour;
    MAIN_CurrentTime.min    = CMD_Command.data.CLOCK.min;
    MAIN_CurrentTime.sec    = CMD_Command.data.CLOCK.sec;
    MAIN_PendingRTCSetFlag  = CLK_FLAG_SET;

    // Echo the new time to the console.
    UART1_puts(sprintf(UART1_Output.buffer, "SCLOCK,%d-%02d-%02dT%02d:%02d:%02dZ\n",
                       MAIN_CurrentTime.year,
                       MAIN_CurrentTime.month,
                       MAIN_CurrentTime.day,
                       MAIN_CurrentTime.hour,
                       MAIN_CurrentTime.min,
                       MAIN_CurrentTime.sec
    ));
    return;
EXSCLOCK_FAIL:
    CMD_Command.id          = CMD_NULL;
    CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteGCLOCK(void)
//
//  GCLOCK echoes the current time to the terminal, in ISO 8601 UTC format. For example, the terminal output will be
//  "GCLOCK,2024-02-13T13:45:56Z" when the stored date is February 13th, 2024, at 13:45:56 UTC.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteGCLOCK(void)
{
    // The RTC should not be interfered with while actively measuring in case we desire time-stamped output.
    if(STATE_IsRunning())
    {
        CMD_Command.id      = CMD_NULL;
        CMD_Command.data.ERR= CMD_ERROR_MUSTIDLE;
        return;
    }
    // Echo the current RAM time to the console.
    UART1_puts(sprintf(UART1_Output.buffer, "GCLOCK,%d-%02d-%02dT%02d:%02d:%02dZ\n",
                       MAIN_CurrentTime.year,
                       MAIN_CurrentTime.month,
                       MAIN_CurrentTime.day,
                       MAIN_CurrentTime.hour,
                       MAIN_CurrentTime.min,
                       MAIN_CurrentTime.sec
    ));
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteSPGAIN(void)
//
//  SPGAIN attempts to set the selected channel's PGA Gain, or Pregain, to one of its hardware defined values (0, 1, 2, 5, 10, 20, 50, or
//  100). The GPIO_SetChannelPregain function is called to see if the requested Pregain value is valid (i.e.: one listed above). This *does*
//  change the hardware setting of every channel, but only changes the value stored in the CH_Channels[] data structure for the selected
//  channel. Since this command can only be called while IDLE, this hardware setting is overridden every time a RUN command is executed.
//
//  If a backup battery is installed, this change can be saved using the SAVE command. Without a backup battery, the pregain is reset to its
//  hardcoded default on startup/reset.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteSPGAIN(void)
{
    uint16_t ret;
    if(STATE_IsIdle())
    {
        if((ret = GPIO_SetChannelPregain(CMD_Command.data.SPGAIN.channel, CMD_Command.data.SPGAIN.value)) != 0xFFFF)
        {
            CH_Channels[CMD_Command.data.SPGAIN.channel]->pregain = ret;
            UART1_puts(sprintf(UART1_Output.buffer, "SPGAIN, Channel %d pre-amp gain set to %d successfully.\n", CMD_Command.data.SPGAIN.channel, ret));
        }
        else
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
    }
    else
    {
        CMD_Command.id = CMD_NULL;
        CMD_Command.data.ERR = CMD_ERROR_MUSTIDLE;
    }
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteGPGAIN(void)
//
//  GPGAIN attempts to get the selected channel's PGA Gain. This does not *actually* report the current the PGA gain through its GPIO pins;
//  it fetches the value stored in the CH_Channels[] data structure. This data will be used to set the PGA gain when this channel is called
//  during a RUN command.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteGPGAIN(void)
{
    if(STATE_IsIdle())
    {
        if(CMD_Command.data.GPGAIN.channel < 1 || CMD_Command.data.GPGAIN.channel > 4)
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
        UART1_puts(sprintf(UART1_Output.buffer, "GPGAIN, Channel %d pre-amp gain is set to: %d.\n", CMD_Command.data.GPGAIN.channel, CH_Channels[CMD_Command.data.GPGAIN.channel]->pregain));
    }
    else
    {
        CMD_Command.id = CMD_NULL;
        CMD_Command.data.ERR = CMD_ERROR_MUSTIDLE;
    }
};

//===========================================================================================================================================
// void MAIN_ExecuteSATTEN(void)
//
//  SATTEN attempts to set the selected channel's attenuation level to one of the software defined values (0, 1, 2, or 3). The attenuation
//  level scales the output waveform amplitude by a factor of 2^(-level). 2^(-3), or divide by 8, is the largest divisor that causes no
//  roundoff error in the 12-bit DAC output. The powers-of-two are chosen to avoid costly division operations and further ensure no roundoff
//  error, as this would cause a nonlinear distortion in the output waveform.
//
//  If a backup battery is installed, this change can be saved using the SAVE command. Without a backup battery, the attenuation is reset to
//  its hardcoded default on startup/reset.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteSATTEN(void)
{
    if(STATE_IsIdle())
    {
        if(CMD_Command.data.SATTEN.channel >= 1 && CMD_Command.data.SATTEN.channel <= 4 && CMD_Command.data.SATTEN.value <= 3)
        {
            CH_Channels[CMD_Command.data.SATTEN.channel]->attenuation = CMD_Command.data.SATTEN.value;
            UART1_puts(sprintf(UART1_Output.buffer, "SATTEN, Channel %d attenuation set to: %d.\n", CMD_Command.data.SATTEN.channel, CMD_Command.data.SATTEN.value));
        }
        else
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
    }
    else
    {
        CMD_Command.id = CMD_NULL;
        CMD_Command.data.ERR = CMD_ERROR_MUSTIDLE;
    }
    return;
};

//===========================================================================================================================================
// void MAIN_ExecuteGATTEN(void)
//
//  GATTEN attempts to get the selected channel's attenuation level. This fetches the value stored in the CH_Channels[] data structure. This
//  data will be used to set the attenuation level when this channel is called during a RUN command.
//
//
//  Execute functions have no standard input or output, but use RW access of the global CMD_Command union as both input for data and output
//  for error handling.
//
//===========================================================================================================================================
void MAIN_ExecuteGATTEN(void)
{
    if(STATE_IsIdle())
    {
        if(CMD_Command.data.GATTEN.channel < 1 || CMD_Command.data.GATTEN.channel > 4)
        {
            CMD_Command.id          = CMD_NULL;
            CMD_Command.data.ERR    = CMD_ERROR_BADFIELD;
            return;
        }
        UART1_puts(sprintf(UART1_Output.buffer, "GATTEN, Channel %d attenuation: %d.\n", CMD_Command.data.GATTEN.channel, CH_Channels[CMD_Command.data.GATTEN.channel]->attenuation));
    }
    else
    {
        CMD_Command.id = CMD_NULL;
        CMD_Command.data.ERR = CMD_ERROR_MUSTIDLE;
    }
};

//===========================================================================================================================================
// Interrupt service routines (ISRs)
//===========================================================================================================================================

// DMA ISR ------------------------------------------------------------------------------------------------
//  The DMA ISR is triggered every time the ADC buffer is filled with new samples (512 samples @ 8192 Sps =
//  16 interrupts / second). The ISR handles executing the Digital Lock-In DSP code with a call to
//  DSP_AnalysisLoop(), as well as coordinating channel sequencing if running in sequenced mode, handling
//  RUN duration unless set to ENDLESS, and outputting the current measurement from this analysis period at
//  a maximum rate of 16 measurements / second.
//
//  In terms of flow control, the DMA ISR blocks all interrupts (even if it did not, it occupies a higher
//  priority than the UART1 interrupt used for comms). It will free interrupts only when the analysis of all
//  512 samples in the current buffer is finished. If the duration counter decrements to zero, the ISR also
//  handles executing a STOP command, returning the device to its IDLE state.

#pragma vector=DMA_VECTOR
__interrupt void DMA_ISR (void)
{
#ifdef __USE_RAW_XY
    volatile int16_t xint = 0;
    volatile int16_t yint = 0;
#else
    uint32_t        r2          = 0;
    uint32_t        rint        = 0;
    double          r           = 0.0;
#endif

    CH_ChannelSpec* nextseq     = NULL;

    // Determine DMA ISR from Vector Register.
    switch(__even_in_range(DMAIV,16))
    {
    case DMAIV_NONE:        //Vector 0: Null case. Break and Return.
        break;
    case DMAIV_DMA0IFG:     //Vector 2: DMA0 case. ADC buffer full, execute Lock-In analysis.
        __disable_interrupt();

        // Step 0: Sequential Channel switching -----------------------------------------------------------
        //  If running in sequential mode, do some switching *before* the analysis loop begins because
        //  the first new sample will enter the buffer before the analysis loop finishes otherwise.
        if(CH_ActiveChannel->next != NULL)
        {
            // If the .next pointer is not null, then the run is in sequential mode.
            CH_ActiveChannel->cycles--;
            if(CH_ActiveChannel->cycles == 0)
            {
                // The current channel in sequence has run out of cycles.
                //  Flag that the channel change should be fully committed at the end of the analysis.
                nextseq = (CH_ChannelSpec*)CH_ActiveChannel->next;

                //  There are a few changes that must be made immediately: the DAC and ADC need to be
                //  redirected to the new channel right away. DAC should change first so the output
                //  stabilizes before samples begin, and then the ADC, but the timers should never be
                //  stopped. This ISR triggers right at the end of the final ADC sample that fills the
                //  buffer so there should be slightly under 2250 CPU cycles before the next sample
                //  reads in and under 1125 cycles before the next DAC sample is sent out.

                // Briefly Turn off each I/O (does not affect timers).
                GPIO_ResetChannelLEDs();

                //  Set the DAC buffer to the next channel.
                MAIN_DACBuffer = (uint16_t*)nextseq->DACbuffer;

                // Renew the DAC DMA target to the current channel's buffer.
                DMA_RenewDACBuffer();

                // Turn on the active channel LED and set its voltage gain.
                GPIO_SetChannelLED(nextseq->id);
                GPIO_SetChannelPregain(nextseq->id, nextseq->pregain);

                // Set the ADC channel to target the correct input.
                ADC_SetADCChannel(nextseq->id, nextseq->gain);
            }
        }

        // Step 1: Lock-In Analysis Loop
        //  The entire lock-in DSP is performed with an assembly call and writes to global memory. The DSP
        //  signal flow consists of:
        //      Looping through 512 element ADC buffer to...
        //          Convert the current sample to Q3.28 fixed point.
        //          Filter the input via LWDF narrow bandpass filter.
        //          Peform X & Y mixing.
        //          Filter X & Y independently with 1st order Butterworth filter.
        //          Accumulate filtered samples into 32-bit storage to perform averaging.
        //      Compute the average once loop is complete, thereby decimating by 512. (8192 -> 16 Hz rate change).

        DSP_AnalysisLoop();

        // Step 2: Lock-in Calcs.
        //  To avoid costly calls to atan2(), only r is calculated.
#ifdef __USE_RAW_XY
        //  In X-Y mode, the -1 is used to account for the inverting PGA amplifier.
        xint = -1 * (int16_t)MAIN_XAcc;
        yint = -1 * (int16_t)MAIN_YAcc;
#else
        r2          = (uint32_t)(MAIN_XAcc * MAIN_XAcc) + (uint32_t)(MAIN_YAcc * MAIN_YAcc);
        r2        <<= 2;            //multiply by 4, unsigned so no need to worry about shift type.
        r           = sqrt(r2);     //one double-precision call at the end of the loop won't ruin us... right?

        if(r > 32767.0)             //Shhhh, don't tell anyone we're doing a floating point comparison.
        {
            // Manually saturate the output.
            //  If the maximum undistorted sinewave input (a reference-subtracted, signed pseudo-16 bit signal)
            //  of [-32768, 32767] were observed at the ADC pin, the largest possible result of rint should be
            //  the this amplitude, 32767. However, the effect of noise and offset in this calculation can cause
            //  the result to *slightly* exceed this logical limit without violating the underlying mathematics,
            //  so we soft-cap the output to signal a detectable Saturation state.
            rint = 32767;
        }
        else
        {
            //Chop the decimal place if the measurement is not nearing Saturation.
            rint = (uint16_t)r;
        }

        //todo add phase/atan2() code here for phase measurement!
#endif

        // Step 3: Data Reporting and Setup for next cycle.
        //  If the channel still has excluded cycles to run through first, decrement and don't report.
        if(CH_RunExclusions > 0)
        {
            CH_RunExclusions--;
        }
        else
        {
            //  Otherwise, report the data with channel # followed by raw code measurement.
#ifdef __USE_RAW_XY
            if(CH_ActiveChannel->next)
            {
                //  Sequential Mode Formatting
                if(MAIN_IndexNumber == 0)
                {
                    UART1_puts(sprintf(UART1_Output.buffer, "SEQI,%u,%u,%d\n", MAIN_SequenceNumber, CH_ActiveChannel->id, xint));
                }
                else
                {
                    UART1_puts(sprintf(UART1_Output.buffer, "SEQN,%u,%u,%d\n", MAIN_SequenceNumber, CH_ActiveChannel->id, xint));
                }
            }
            else
            {
                //  Single Channel Mode Formatting
                if(MAIN_IndexNumber == 0)
                {
                    UART1_puts(sprintf(UART1_Output.buffer, "DATI,%u,%d,%d\n", CH_ActiveChannel->id, xint, yint));
                }
                else
                {
                    UART1_puts(sprintf(UART1_Output.buffer, "DATA,%u,%d,%d\n", CH_ActiveChannel->id, xint, yint));
                }
            }
#else
            if(CH_ActiveChannel->next)
            {
                //  Sequential Mode Formatting
                if(MAIN_IndexNumber == 0)
                {
                    UART1_puts(sprintf(UART1_Output.buffer, "SEQI,%u,%u,%d\n", MAIN_SequenceNumber, CH_ActiveChannel->id, rint));
                }
                else
                {
                    UART1_puts(sprintf(UART1_Output.buffer, "SEQN,%u,%u,%d\n", MAIN_SequenceNumber, CH_ActiveChannel->id, rint));
                }
            }
            else
            {
                //  Single Channel Mode Formatting
                if(MAIN_IndexNumber == 0)
                {
                    UART1_puts(sprintf(UART1_Output.buffer, "DATI,%u,%d\n", CH_ActiveChannel->id, rint));
                }
                else
                {
                    UART1_puts(sprintf(UART1_Output.buffer, "DATA,%u,%d\n", CH_ActiveChannel->id, rint));
                }
            }
#endif
            //   Then, increment the index tracker.
            MAIN_IndexNumber = (MAIN_IndexNumber + 1) & (16 - 1);

            //  If the active channel is flagged as finished, now we finish swapping to the next in line.
            if(nextseq)
            {
                //  For transient suppression, instead of clear, backup current taps.
                CH_ActiveChannel->tap1  = MAIN_FilterTap1;
                CH_ActiveChannel->tap2  = MAIN_FilterTap2;
                CH_ActiveChannel->xtap1 = MAIN_XFilterTap1;
                CH_ActiveChannel->xtap2 = MAIN_XFilterTap2;
                CH_ActiveChannel->ytap1 = MAIN_YFilterTap1;
                CH_ActiveChannel->ytap2 = MAIN_YFilterTap2;

                //  Update the Channel pointer to the next channel in sequence.
                CH_ActiveChannel        = nextseq;

                //  Restore prior taps (or zero initial condition) for the new channel.
                MAIN_FilterTap1         = CH_ActiveChannel->tap1;
                MAIN_FilterTap2         = CH_ActiveChannel->tap2;
                MAIN_XFilterTap1        = CH_ActiveChannel->xtap1;
                MAIN_XFilterTap2        = CH_ActiveChannel->xtap2;
                MAIN_YFilterTap1        = CH_ActiveChannel->ytap1;
                MAIN_YFilterTap2        = CH_ActiveChannel->ytap2;

                //  Reset the number of cycles to the starting point contained in seqcycles.
                CH_ActiveChannel->cycles = CH_ActiveChannel->seqcycles;

                //  Update the data-reporting index.
                MAIN_SequenceNumber = (MAIN_SequenceNumber + 1) & (CHANNEL_SEQUENCE_COUNT - 1);
            }

            //  If this decrements the number of cycles to run through to zero,
            if(CH_RunCycles != ENDLESS_CYCLES)
            {
                CH_RunCycles--;
                if(CH_RunCycles == 0)
                {
                    // Last cycle, handle exiting RUN/SPOOF state.
                    //  Stop
                    MAIN_ExecuteSTOP(true);
                }
            }
        }

        // Step 4: Cleanup.
        //  Accumulators need to be reset on every loop. Taps need to be preserved unless switching channels.
        //  Taps and accumulators are cleared by the call to MAIN_ExecuteSTOP().
        MAIN_XAcc = 0;
        MAIN_YAcc = 0;

        // Step 5: Re-enable interrupts and break.
        __enable_interrupt();
        break;
    default:
        break;
    }
};

// RTC Interrupt Service Routine --------------------------------------------------------------------------
//  The RTC ISR is requested every 1 second *tick* of the precision crystal clock. The RTC ISR is used to
//  toggle the surface-mount status LED, D1, and to fill the "RAM Time" structure, MAIN_CurrentTime, with
//  the values currently stored in the RTC registers. The firmware program should only interact with the
//  "RAM Time" to avoid glitches that are possible when the RTC is read at an invalid time, except when
//  setting the clock registers.
#pragma vector=RTC_VECTOR
__interrupt void RTCISR (void)
{
    while(BAKCTL & LOCKBAK)
        BAKCTL&= ~(LOCKBAK);    // Unlock XT1 pins for operation
    switch(__even_in_range(RTCIV,14))
    {
    case 0: break;          // Vector 0: No interrupt
    case 2:                 // Vector 2: RTCRCYIFG
        // Status LED Heart-beat toggle.
        P1OUT ^= 0x01;

        // If this flag is set, the MAIN_CurrentTime structure contains data to update the registers with.
        if(MAIN_PendingRTCSetFlag)
        {
            CLK_SetRTC(&MAIN_CurrentTime);
            MAIN_PendingRTCSetFlag = 0;
        }
        else
        {
            // Otherwise, update the MAIN_CurrentTime structure using the RTC registers.
            CLK_GetRTC(&MAIN_CurrentTime);
        }
        break;
    case 4: break;
    case 6: break;
    case 8: break;
    case 10: break;
    case 12: break;
    case 14: break;
    default: break;
    }
};
