;===========================================================================================================================================
;/*
;* dsp.asm
;*
;*  Created on: May 5, 2023
;*      Author: K. Park
;*
;*      Copyright © 2023-2024 by Kyle Park. This work is licensed under the Creative Commons 4.0 Attribution (CC BY 4.0) International
;*      License (https://creativecommons.org/licenses/by/4.0/). This permits use, adaptation, distribution, and reproduction provided
;*      users cite the materials appropriately, provide a link to the Creative Commons license, and clearly indicate the changes that
;*      were made to the original content. No warranties are provided under this license.
;*
;*		"dsp.asm" is an MSP430 Assembly code block written to handle the PIXIE's Lock-in amplifier digital signal processing (DSP)
;*		algorithm, making use of Q3.28 formatted Fixed Point arithmetic and the processor's 32-bit hardware multiplier to maximize
;*		speed and precision.
;*
;*		It is *highly recommended* that users leave this code as-is unless they are absolutely familiar with the MSP430 instruction set,
;*		the extended instructions, MPY, fixed point arithmetic, and lattice wave digital filters.
;*
;*/
;===========================================================================================================================================
      					.cdecls C,NOLIST,"msp430.h"   					; Processor specific definitions
;===========================================================================================================================================
; Global Variables from C
;===========================================================================================================================================
						.ref	MAIN_ADCBuffer
						.ref 	MAIN_LockInXRef
						.ref	MAIN_LockInYRef

						.ref 	MAIN_FilterTap1
						.ref	MAIN_FilterTap2
						.ref	MAIN_XFilterTap1
						.ref	MAIN_XFilterTap2
						.ref	MAIN_YFilterTap1
						.ref	MAIN_YFilterTap2

						.ref	MAIN_XOut								; todo these might not be necessary if one two registers can be
						.ref	MAIN_YOut								; freed up.

						.ref	MAIN_XAcc
						.ref	MAIN_YAcc

;===========================================================================================================================================
; Local Constants
;===========================================================================================================================================
DSP_FilterAlpha1_L:		.equ	0x50C0									; Coeff of Block 1 (Type 1) in LWDBPF.
DSP_FilterAlpha1_H:		.equ	0x09BE									; = 8 x 0.076120467488713 in Q3.28, scaled for fast Q3.28 product,
																		; 0.076120467488713 = 1-cos(pi fl / Fn), fl = bandpass frequency.

DSP_FilterAlpha2_L:		.equ	0x26E9									; Coeff of Block 2 (Type 4) in LWDBPF.
DSP_FilterAlpha2_H:		.equ	0x0031									; = 8 x 0.001500000000000 in Q3.28, scaled for fast Q3.28 product,
																		; 0.001500000000000 = "1-Quality", todo insert actual formula.

DSP_TransientCoeff1_L:	.equ	0xC068									; Coeff of transient compensation for Tap1.
DSP_TransientCoeff1_H:	.equ	0xFB55									; = 8 x -0.0364455726481 in Q3.28, scaled for fast Q3.28 product
																		; todo currently unused.

DSP_TransientCoeff2_L:	.equ	0x80C8									; Coeff of transient compensation for Tap2.
DSP_TransientCoeff2_H:	.equ	0x8510									; = 8 x -0.960433870103420 in Q3.28, scaled for fast Q3.28 product
																		; todo currently unused.

DSP_FilterA_L:			.equ	0x52D0									; Butterworth output tap (actually -a1 given a0 = 1)
DSP_FilterA_H:			.equ 	0x7E70									; = 8 x 0.987802841451529 in Q3.28, scaled for fast Q3.28 product

DSP_FilterB_L:			.equ	0xD698									; Butterworth input coeffs (b0 = b1)
DSP_FilterB_H:			.equ	0x00C7									; = 8 x 0.006098579274235 in Q3.28, scaled for fast Q3.28 product

;===========================================================================================================================================
; void DSP_FilterLoop(uint16_t in)
;
;	A single subroutine that handles PIXIE's entire Lock-in Amplification / DSP block chain. The single input is a flag indicating
;	whether a not-yet-implemented startup-transient reduction technique is applied before the first step in the Analysis loop.
;	All other inputs are taken from globally accesible symbols defined in "main.c".
;
;	This function should therefore always be called with an argument of "false" or "0".
;
;  		Input: One 16 bit value in R12, 0 representing boolean 'false', any other value representing boolean 'true'.
; 	   Output: No output, all data manipulation is performed on global variables.
;===========================================================================================================================================
; * Register Map * ;
;	Registers are reused, but only after the use of their prior name is done for this step of the Analysis loop.
DSP_InputPointer:		.equ	R5										; These are never reassigned.
DSP_i:					.equ	R4										;
DSP_j:					.equ	R14										;

DSP_FirstRun:			.equ	R12										; Input argument, only needed at the very start.

DSP_FilterIn_L:			.equ	R6										;
DSP_FilterIn_H:			.equ	R7										;
DSP_FilterOut_L:		.equ	R6										;
DSP_FilterOut_H:		.equ	R7										;
DSP_BlockOut1_L:		.equ	R8										;
DSP_BlockOut1_H:		.equ 	R9										;
DSP_BlockOut2_L:		.equ	R10										;
DSP_BlockOut2_H:		.equ 	R11										;
DSP_Temp1_L:			.equ	R12										;
DSP_Temp1_H:			.equ	R13										;

DSP_XRefPointer:		.equ	R8										;
DSP_YRefPointer:		.equ	R9										;

DSP_XOut_L:				.equ	R10										;
DSP_XOut_H:				.equ	R11										;
DSP_YOut_L:				.equ	R10										;
DSP_YOut_H:				.equ	R11										;
DSP_XFilt_L:			.equ	R12										;
DSP_XFilt_H:			.equ	R13										;
DSP_YFilt_L:			.equ	R12										;
DSP_YFilt_H:			.equ	R13										;

; * Begin Subroutine * ; ===================================================================================================================
						.global DSP_AnalysisLoop						; Global declaration in ASM to match extern declaration in C.
DSP_AnalysisLoop:		.asmfunc

						; * Preamble * =====================================================================================================
						pushm.a #12,R15									; Calling convention: Save [R15:R4] onto stack before use.
																		; todo: Only need to do [R10:R4], but I didn't trust this
																		; step during an invalid memory write bug earlier on in dev.
																		; Now that things are working, this could probably be reduced
																		; to save a few cycles.

																		; todo: should consider pushing MPY register onto the stack too.

						mov.w	#512, DSP_i								; Set loop iterator to 512, breaks on decrement to 0.

						movx.a	#0, DSP_j								; Set offset iterator to 0. Iterator cycles 0,4,8,...,60 by
																		; masking in-place at the end of each loop cycle.

						mova	#MAIN_ADCBuffer+0, DSP_InputPointer		; Cache the first address in the 512 word input array.

						cmp.w	#0, DSP_FirstRun						; If argument isn't zero, then this is the first loop.
						jeq		FilterLoopStart							; IF it is, jump past the transient suppression.

;						; * Transient Suppression * ========================================================================================
;						mov.w	#MPYM1, &MPY32CTL0						; Configure MPY for 16 bit signed multiplication.
;						movx.w	@DSP_InputPointer, &MPYS				; Load 1st operand, current input sample.
;						mov.w 	#0x2000, &OP2							; Load 2nd operand, 2^13 (left-shift MSB 13 places).
;						mov.w	&RES0, DSP_FilterIn_L					;
;						mov.w	&RES1, DSP_FilterIn_H					; First input sample now in Q3.28.
;
;						mov.w   #OP2_32+OP1_32+MPYM0+MPYFRAC, &MPY32CTL0; Configure MPY for 32 bit signed multiplication for subsequent steps.
;
;						; * BPF Transients *
;						mov.w	DSP_FilterIn_L, &MPYS32L				;
;						mov.w 	DSP_FilterIn_H, &MPYS32H				;
;						mov.w	#DSP_TransientCoeff1_L, &OP2L			;
;						mov.w	#DSP_TransientCoeff1_H, &OP2H			;
;						mov.w	&RES0, R12								; this word contains no significant bits.
;						mov.w	&RES1, R12								;	""				""				""
;						mov.w	&RES2, &MAIN_FilterTap1+0				;
;						mov.w	&RES3, &MAIN_FilterTap1+2				;
;
;						mov.w	#DSP_TransientCoeff2_L, &OP2L			; FilterIn doesn't need to be loaded again.
;						mov.w	#DSP_TransientCoeff2_H, &OP2H			;
;						mov.w	&RES0, R12								; this word contains no significant bits.
;						mov.w	&RES1, R12								;	""				""				""
;						mov.w	&RES2, &MAIN_FilterTap2+0				;
;						mov.w	&RES3, &MAIN_FilterTap2+2				;
;
;						; LPF Transients
;						; Since the transient suppression solution assumes BPF input and output is Cosine at wo
;						; with amplitude equal to the first sample and matched phase, the X input tap should also just
;						; have this value (equal to post mix dc + post mix cosine amplitude);
;						;
;						; the output tap, approximately, can sit at half this value, since this is the dc value
;						; post-mix in the assumed case.
;						mov.w	DSP_FilterIn_L, &MAIN_XFilterTap1+0		;
;						mov.w	DSP_FilterIn_H, &MAIN_XFilterTap1+2		;
;						mov.w	DSP_FilterIn_L, &MAIN_XFilterTap2+0		;
;						mov.w	DSP_FilterIn_H, &MAIN_XFilterTap2+2		;
;						rra.w	&MAIN_XFilterTap2+2						; divide by 2
;						rrc.w	&MAIN_XFilterTap2+0						;
;						; by the same token, the Y input taps should just be zero. todo this is wrong and
;						; predictably causes large transient. taps should be exactly what they should be filtering
;						; a 1024 Hz cosine since the original 512 Hz cosine experiences frequency doubling.
;						;mov.w	#0, &MAIN_YFilterTap1+0;				; these are commented out because they're initialized elsewhere.
;						;mov.w	#0, &MAIN_YFilterTap1+0;
;						;mov.w	#0, &MAIN_YFilterTap1+0;
;						;mov.w	#0, &MAIN_YFilterTap1+0;
;
;						jmp		FilterFeedForward						; This is the fastest way to have a special first iteration.

						; * Filter Analysis Loop * =========================================================================================
						;* Get Next Sample *
FilterLoopStart:		mov.w	#MPYM1, &MPY32CTL0						; Configure MPY for 16 bit signed multiplication.
						movx.w	@DSP_InputPointer, &MPYS				; Load 1st operand, current input sample.
						mov.w 	#0x2000, &OP2							; Load 2nd operand, 2^13 (left-shift MSB 13 places).
						mov.w	&RES0, DSP_FilterIn_L					;
						mov.w	&RES1, DSP_FilterIn_H					; Current input sample now in Q3.28.

						mov.w   #OP2_32+OP1_32+MPYM0+MPYFRAC, &MPY32CTL0; Configure MPY for 32 bit signed multiplication for subsequent steps.

						; * LWDBPF Block 1  (Type 1) * =====================================================================================
FilterFeedForward:		mov.w	&MAIN_FilterTap2+0, DSP_Temp1_L			; Load the taps into temp memory and Out1
						mov.w	&MAIN_FilterTap2+2, DSP_Temp1_H			;	""				""
						mov.w	&MAIN_FilterTap1+0, DSP_BlockOut1_L		;
						mov.w	&MAIN_FilterTap1+2, DSP_BlockOut1_H		;
						sub.w	DSP_BlockOut1_L, DSP_Temp1_L			; Temp1 <- Tap2 - Tap1
						subc.w	DSP_BlockOut1_H, DSP_Temp1_H			;

						mov.w	DSP_Temp1_L, &MPYS32L					; alpha * (Tap2 - Tap1)
						mov.w 	DSP_Temp1_H, &MPYS32H					;
						mov.w	#DSP_FilterAlpha1_L, &OP2L				; only [RES3:RES2] will have significant bits in Q3.28.
						mov.w	#DSP_FilterAlpha1_H, &OP2H				;
						mov.w	&RES0, R12								; this word contains no significant bits.
						mov.w	&RES1, R12								;	""				""				""
						add.w	&RES2, DSP_BlockOut1_L					; BlockOut1 <- Tap1 + alpha * (Tap2 - Tap1)
						addc.w 	&RES3, DSP_BlockOut1_H					; Final Value of BlockOut1

						mov.w	DSP_BlockOut1_L, DSP_BlockOut2_L		; BlockOut2 <- BlockOut1
						mov.w	DSP_BlockOut1_H, DSP_BlockOut2_H		;
						sub.w	DSP_Temp1_L, DSP_BlockOut2_L			; BlockOut2 <- BlockOut1 - (Tap2 - Tap1)
						subc.w	DSP_Temp1_H, DSP_BlockOut2_H			; Final Value of BlockOut2
						mov.w	DSP_BlockOut1_L, &MAIN_FilterTap1+0		; Update Tap1 using BlockOut1
						mov.w	DSP_BlockOut1_H, &MAIN_FilterTap1+2		;

						; * LWDBPF Block 2  (Type 4) * =====================================================================================
						mov.w	DSP_BlockOut2_L, DSP_BlockOut1_L		; BlockOut1 no longer needed.
						mov.w	DSP_BlockOut2_H, DSP_BlockOut1_H		; BlockOut1 <- BlockOut2
						sub.w	DSP_FilterIn_L, DSP_BlockOut1_L			;
						subc.w	DSP_FilterIn_H, DSP_BlockOut1_H			; BlockOut1 <- BlockOut2 - FilterIn

						mov.w	DSP_BlockOut1_L, &MPYS32L				; alpha * (BlockOut2 - FilterIn)
						mov.w 	DSP_BlockOut1_H, &MPYS32H				;
						mov.w	#DSP_FilterAlpha2_L, &OP2L				;
						mov.w	#DSP_FilterAlpha2_H, &OP2H				;
						mov.w	&RES0, R12								; this word contains no significant bits.
						mov.w	&RES1, R12								;	""				""				""
						mov.w	&RES2, DSP_Temp1_L						;
						mov.w 	&RES3, DSP_Temp1_H						; Temp <- alpha * (BlockOut2 - FilterIn)

						sub.w	DSP_BlockOut2_L, DSP_Temp1_L			; Temp <- alpha * (BlockOut2 - FilterIn) - BlockOut2
						subc.w  DSP_BlockOut2_H, DSP_Temp1_H			;
						mov.w	DSP_Temp1_L, &MAIN_FilterTap2+0			; Update Tap2 using Temp
						mov.w	DSP_Temp1_H, &MAIN_FilterTap2+2			;
						sub.w	DSP_BlockOut1_L, DSP_Temp1_L			; BlockOut2 is now in Temp, saves one paired move op
						subc.w	DSP_BlockOut1_H, DSP_Temp1_H			; Out2 = Tap2 - Out1;

						; * LWDBPF Output * ================================================================================================
						sub.w	DSP_Temp1_L, DSP_FilterOut_L			; FilterOut = FilterIn - Out2
						subc.w	DSP_Temp1_H, DSP_FilterOut_H			; (FilterOut just re-uses FilterIn registers)

						rra.w	DSP_FilterOut_H							; FilterOut = FilterOut / 2;
						rrc.w	DSP_FilterOut_L							;

						; * Mixer Prep * ===================================================================================================
						mova	#MAIN_LockInXRef+0, DSP_XRefPointer		; Calculate address to current discrete-time sample
						mova	#MAIN_LockInYRef+0, DSP_YRefPointer		; of X and Y reference signals.
						adda	DSP_j, DSP_XRefPointer					;
						adda	DSP_j, DSP_YRefPointer					;

						; * X Mixer Side * =================================================================================================
						mov.w	DSP_FilterOut_L, &MPYS32L				; Calculate Mixers. X Side first
						mov.w	DSP_FilterOut_H, &MPYS32H				;
						mov.w	@DSP_XRefPointer+, &OP2L				; Autoincremented the pointer by 2, because of .w
						mov.w	@DSP_XRefPointer, &OP2H					;
						mov.w	&RES0, R12								; this word contains no significant bits.
						mov.w	&RES1, DSP_XOut_L						;
						mov.w	&RES2, DSP_XOut_H						;
						mov.w	&RES3, R12								; this word insignificant, but included for timing's sake.

						add.w	DSP_XOut_L, &MAIN_XFilterTap1+0			; XTap1 += Xout
						addc.w	DSP_XOut_H, &MAIN_XFilterTap1+2			;

						mov.w	&MAIN_XFilterTap1+0, &MPYS32L			; XFilt = B * (Xout + XTap1)
						mov.w	&MAIN_XFilterTap1+2, &MPYS32H			;
						mov.w	#DSP_FilterB_L, &OP2L					;
						mov.w	#DSP_FilterB_H,	&OP2H					;
						mov.w	&RES0, R12								; this word contains no significant bits.
						mov.w	&RES1, R12								; 	""				""				""
						mov.w	&RES2, DSP_XFilt_L						;
						mov.w	&RES3, DSP_XFilt_H						;

						mov.w 	&MAIN_XFilterTap2+0, &MPYS32L			; A * (XTap2)
						mov.w	&MAIN_XFilterTap2+2, &MPYS32H			;
						mov.w	#DSP_FilterA_L, &OP2L					;
						mov.w	#DSP_FilterA_H,	&OP2H					;
						mov.w	&RES0, R12								; this word contains no significant bits.
						mov.w	&RES1, R12								; 	""				""				""
						add.w	&RES2, DSP_XFilt_L						;
						addc.w	&RES3, DSP_XFilt_H						; XFilt = B * (Xout + XTap1) + A * (XTap2)

						mov.w	DSP_XOut_L, &MAIN_XFilterTap1+0			; Update Taps
						mov.w	DSP_XOut_H, &MAIN_XFilterTap1+2			;
						mov.w	DSP_XFilt_L, &MAIN_XFilterTap2+0		;
						mov.w	DSP_XFilt_H, &MAIN_XFilterTap2+2		;

						; Convert Output to int16_t
						rla.w	DSP_XFilt_L								; Shift a bit out of (lo) and into Carry.
						rlc.w	DSP_XFilt_H								; Shift the C bit into (hi).
						rla.w	DSP_XFilt_L								; Repeat 2x.
						rlc.w	DSP_XFilt_H								;
						rla.w	DSP_XFilt_L								; "    " once more.
						rlc.w	DSP_XFilt_H								;
						mov.w	DSP_XFilt_H, &MAIN_XOut+0				; Move the upper 16 bits to the output, R12.

						; * Y Mixer Side * =================================================================================================
						mov.w	DSP_FilterOut_L, &MPYS32L				; Calculate Y Side second
						mov.w	DSP_FilterOut_H, &MPYS32H				;
						mov.w	@DSP_YRefPointer+, &OP2L				; Autoincremented the pointer by 2, because of .w
						mov.w	@DSP_YRefPointer, &OP2H					;
						mov.w	&RES0, R12								; this word contains no significant bits.
						mov.w	&RES1, DSP_YOut_L						; based on how YRef is scaled, whole Q3.28 exists in [RES2:RES1].
						mov.w	&RES2, DSP_YOut_H						;
						mov.w	&RES3, R12								; this word insignificant, but included for timing's sake.

						add.w	DSP_YOut_L, &MAIN_YFilterTap1+0			; XTap1 += Xout
						addc.w	DSP_YOut_H, &MAIN_YFilterTap1+2			;

						mov.w	&MAIN_YFilterTap1+0, &MPYS32L			; XFilt = B * (Xout + XTap1)
						mov.w	&MAIN_YFilterTap1+2, &MPYS32H			;
						mov.w	#DSP_FilterB_L, &OP2L					;
						mov.w	#DSP_FilterB_H,	&OP2H					;
						mov.w	&RES0, R12								; this word contains no significant bits.
						mov.w	&RES1, R12								; 	""				""				""
						mov.w	&RES2, DSP_YFilt_L						;
						mov.w	&RES3, DSP_YFilt_H						;

						mov.w 	&MAIN_YFilterTap2+0, &MPYS32L			; A * (XTap2)
						mov.w	&MAIN_YFilterTap2+2, &MPYS32H			;
						mov.w	#DSP_FilterA_L, &OP2L					;
						mov.w	#DSP_FilterA_H,	&OP2H					;
						mov.w	&RES0, R12								; this word contains no significant bits.
						mov.w	&RES1, R12								; 	""				""				""
						add.w	&RES2, DSP_YFilt_L						;
						addc.w	&RES3, DSP_YFilt_H						; XFilt = B * (Xout + XTap1) + A * (XTap2)

						mov.w	DSP_YOut_L, &MAIN_YFilterTap1+0			; Update Taps
						mov.w	DSP_YOut_H, &MAIN_YFilterTap1+2			;
						mov.w	DSP_YFilt_L, &MAIN_YFilterTap2+0		;
						mov.w	DSP_YFilt_H, &MAIN_YFilterTap2+2		;

						; Convert Output to int16_t
						rla.w	DSP_YFilt_L								; Shift a bit out of (lo) and into Carry.
						rlc.w	DSP_YFilt_H								; Shift the C bit into (hi).
						rla.w	DSP_YFilt_L								; Repeat 2x.
						rlc.w	DSP_YFilt_H								;
						rla.w	DSP_YFilt_L								; "    " once more.
						rlc.w	DSP_YFilt_H								;
						mov.w	DSP_YFilt_H, &MAIN_YOut+0				; Move the upper 16 bits to the output, R12.

						; * Accumulate * ===================================================================================================
						; All registers are fair game at this point execpt addresses and iterators.
						mov.w	&MAIN_XOut+0, R12;						;
						tst.w	R12										;
						jn		FilterXOutNeg							;

						add.w	&MAIN_XOut+0, &MAIN_XAcc+0				; Positive Case
						addc.w	#0, &MAIN_XAcc+2						;
						jmp		FilterYOut

FilterXOutNeg:			add.w	&MAIN_XOut+0, &MAIN_XAcc+0				; Negative Case
						addc.w	#0xFFFF, &MAIN_XAcc+2					; 0xFFFF acts as sign extension of 16 bit number.

FilterYOut:				mov.w 	&MAIN_YOut+0, R12						;
						tst.w	R12
						jn		FilterYOutNeg							;

						add.w	&MAIN_YOut+0, &MAIN_YAcc+0				; Positive Case
						addc.w	#0, &MAIN_YAcc+2						;
						jmp		FilterLoopHandle						;

FilterYOutNeg:			add.w	&MAIN_YOut+0, &MAIN_YAcc+0				; Negative Case
						addc.w	#0xFFFF, &MAIN_YAcc+2					; 0xFFFF acts as sign extension of 16 bit number.

						; * Loop Handling * ================================================================================================
FilterLoopHandle:		incdx.a DSP_InputPointer						; Point R5 to the next input sample.

						incdx.a DSP_j									; j++++
						incdx.a DSP_j									; j++++
						andx.a	#60, DSP_j								; j = [0,60]. Works because 64 masks to 0, making & equiv. to %

						dec.w	DSP_i									; i--
						jnz		FilterLoopStart							; if i != 0, go back to start of loop

						;* Post-loop computations * ========================================================================================
						mov.w   #OP2_32+OP1_32+MPYM0, &MPY32CTL0		; Configure MPY for calculating average.

						mov.w	&MAIN_XAcc+0, &MPYS32L					;
						mov.w	&MAIN_XAcc+2, &MPYS32H					;
						mov.w	#128, &OP2L								;
						mov.w	#0,	&OP2H								;
						mov.w	&RES0, R12								; Not needed.
						mov.w	&RES1, &MAIN_XAcc+0						; XAcc / 512
						mov.w	&RES2, &MAIN_XAcc+2						;
						mov.w	&RES3, R12								; Not needed.

						mov.w	&MAIN_YAcc+0, &MPYS32L					;
						mov.w	&MAIN_YAcc+2, &MPYS32H					;
						mov.w	#128, &OP2L								;
						mov.w	#0,	&OP2H								;
						mov.w	&RES0, R12								; Not needed.
						mov.w	&RES1, &MAIN_YAcc+0						; YAcc / 512
						mov.w	&RES2, &MAIN_YAcc+2						;
						mov.w	&RES3, R12								; Not needed.

						;* Cleanup and Return * ============================================================================================
						popm.a	#12, R15								; Calling convention: Restore [R15:R4] from stack before return.
				        reta
				        .endasmfunc

