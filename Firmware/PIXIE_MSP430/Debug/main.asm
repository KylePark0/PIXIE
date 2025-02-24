;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                              PC v21.6.1.LTS *
;* Date/Time created: Mon Feb 24 13:22:57 2025                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=large --mem_model:data=large --object_format=elf --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 --silicon_version=mspx --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen PC v21.6.1.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\Debug")
;	Interrupt vector table mappings
	.intvec	".int50",	DMA_ISR
	.intvec	".int42",	RTCISR
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("BAKCTL")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("BAKCTL")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("DAC12_0DAT")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("DAC12_0DAT")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x2ee)
	.dwattr $C$DW$2, DW_AT_decl_column(0x01)

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("DAC12_1DAT")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("DAC12_1DAT")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x2f3)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("DMAIV")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("DMAIV")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x337)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("PAOUT_L")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("PAOUT_L")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x8a3)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("PBOUT_L")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("PBOUT_L")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x8fd)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("PCOUT_L")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("PCOUT_L")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x957)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("PCOUT_H")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("PCOUT_H")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x958)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("PEOUT_L")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("PEOUT_L")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x9b9)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("RTCIV")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("RTCIV")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0xb9c)
	.dwattr $C$DW$10, DW_AT_decl_column(0x01)

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("SINE_cosADC")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("SINE_cosADC")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/sineref.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$11, DW_AT_decl_column(0x19)

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("SINE_sinADC")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("SINE_sinADC")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/sineref.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$12, DW_AT_decl_column(0x19)

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("SINE_cosDAC")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("SINE_cosDAC")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/sineref.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$13, DW_AT_decl_column(0x19)

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("SINE_sinDAC")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("SINE_sinDAC")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/sineref.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x30)
	.dwattr $C$DW$14, DW_AT_decl_column(0x19)

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("CH_Channels")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("CH_Channels")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$15, DW_AT_decl_column(0x19)

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("CH_ActiveChannel")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("CH_ActiveChannel")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$16, DW_AT_decl_column(0x19)

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("CH_ChannelSequence")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("CH_ChannelSequence")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x42)
	.dwattr $C$DW$17, DW_AT_decl_column(0x19)

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("CH_RunCycles")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("CH_RunCycles")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x47)
	.dwattr $C$DW$18, DW_AT_decl_column(0x19)

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("CH_RunExclusions")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("CH_RunExclusions")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x48)
	.dwattr $C$DW$19, DW_AT_decl_column(0x19)

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("CMD_Command")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("CMD_Command")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$20, DW_AT_decl_column(0x1d)

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("UART1_Output")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("UART1_Output")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x33)
	.dwattr $C$DW$21, DW_AT_decl_column(0x14)

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("UART1_Input")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("UART1_Input")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x34)
	.dwattr $C$DW$22, DW_AT_decl_column(0x14)

	.global	MAIN_ResetFlag
	.data
	.align	2
	.elfsym	MAIN_ResetFlag,SYM_SIZE(2)
MAIN_ResetFlag:
	.bits		0xffff,16
			; MAIN_ResetFlag @ 0

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("MAIN_ResetFlag")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("MAIN_ResetFlag")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr MAIN_ResetFlag]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x50)
	.dwattr $C$DW$23, DW_AT_decl_column(0x15)

	.global	MAIN_PendingRTCSetFlag
	.data
	.align	2
	.elfsym	MAIN_PendingRTCSetFlag,SYM_SIZE(2)
MAIN_PendingRTCSetFlag:
	.bits		0,16
			; MAIN_PendingRTCSetFlag @ 0

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("MAIN_PendingRTCSetFlag")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("MAIN_PendingRTCSetFlag")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr MAIN_PendingRTCSetFlag]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x51)
	.dwattr $C$DW$24, DW_AT_decl_column(0x15)

	.global	MAIN_CurrentTime
	.sect	".data:MAIN_CurrentTime", RW
	.align	2
	.elfsym	MAIN_CurrentTime,SYM_SIZE(12)
MAIN_CurrentTime:
	.bits		0,16
			; MAIN_CurrentTime.year @ 0
	.space	10

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("MAIN_CurrentTime")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("MAIN_CurrentTime")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr MAIN_CurrentTime]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x52)
	.dwattr $C$DW$25, DW_AT_decl_column(0x15)

	.global	MAIN_DACBuffer
	.data
	.align	2
	.elfsym	MAIN_DACBuffer,SYM_SIZE(4)
MAIN_DACBuffer:
	.bits		0,32
			; MAIN_DACBuffer @ 0

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("MAIN_DACBuffer")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("MAIN_DACBuffer")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr MAIN_DACBuffer]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x55)
	.dwattr $C$DW$26, DW_AT_decl_column(0x15)

	.global	MAIN_ADCBuffer
	.sect	".data:MAIN_ADCBuffer", RW
	.align	2
	.elfsym	MAIN_ADCBuffer,SYM_SIZE(1024)
MAIN_ADCBuffer:
	.bits		0,16
			; MAIN_ADCBuffer[0] @ 0
	.space	1022

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("MAIN_ADCBuffer")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("MAIN_ADCBuffer")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr MAIN_ADCBuffer]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x56)
	.dwattr $C$DW$27, DW_AT_decl_column(0x15)

	.global	MAIN_LockInXRef
	.sect	".data:MAIN_LockInXRef", RW
	.align	2
	.elfsym	MAIN_LockInXRef,SYM_SIZE(64)
MAIN_LockInXRef:
	.bits		0,32
			; MAIN_LockInXRef[0] @ 0
	.space	60

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("MAIN_LockInXRef")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("MAIN_LockInXRef")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr MAIN_LockInXRef]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0x58)
	.dwattr $C$DW$28, DW_AT_decl_column(0x15)

	.global	MAIN_LockInYRef
	.sect	".data:MAIN_LockInYRef", RW
	.align	2
	.elfsym	MAIN_LockInYRef,SYM_SIZE(64)
MAIN_LockInYRef:
	.bits		0,32
			; MAIN_LockInYRef[0] @ 0
	.space	60

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("MAIN_LockInYRef")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("MAIN_LockInYRef")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr MAIN_LockInYRef]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x59)
	.dwattr $C$DW$29, DW_AT_decl_column(0x15)

	.global	MAIN_FilterTap1
	.data
	.align	2
	.elfsym	MAIN_FilterTap1,SYM_SIZE(4)
MAIN_FilterTap1:
	.bits		0,32
			; MAIN_FilterTap1 @ 0

$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("MAIN_FilterTap1")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("MAIN_FilterTap1")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr MAIN_FilterTap1]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$30, DW_AT_decl_column(0x15)

	.global	MAIN_FilterTap2
	.data
	.align	2
	.elfsym	MAIN_FilterTap2,SYM_SIZE(4)
MAIN_FilterTap2:
	.bits		0,32
			; MAIN_FilterTap2 @ 0

$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("MAIN_FilterTap2")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("MAIN_FilterTap2")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr MAIN_FilterTap2]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$31, DW_AT_decl_column(0x15)

	.global	MAIN_XFilterTap1
	.data
	.align	2
	.elfsym	MAIN_XFilterTap1,SYM_SIZE(4)
MAIN_XFilterTap1:
	.bits		0,32
			; MAIN_XFilterTap1 @ 0

$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("MAIN_XFilterTap1")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("MAIN_XFilterTap1")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr MAIN_XFilterTap1]
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$32, DW_AT_decl_column(0x15)

	.global	MAIN_XFilterTap2
	.data
	.align	2
	.elfsym	MAIN_XFilterTap2,SYM_SIZE(4)
MAIN_XFilterTap2:
	.bits		0,32
			; MAIN_XFilterTap2 @ 0

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("MAIN_XFilterTap2")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("MAIN_XFilterTap2")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr MAIN_XFilterTap2]
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$33, DW_AT_decl_column(0x15)

	.global	MAIN_YFilterTap1
	.data
	.align	2
	.elfsym	MAIN_YFilterTap1,SYM_SIZE(4)
MAIN_YFilterTap1:
	.bits		0,32
			; MAIN_YFilterTap1 @ 0

$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("MAIN_YFilterTap1")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("MAIN_YFilterTap1")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr MAIN_YFilterTap1]
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x60)
	.dwattr $C$DW$34, DW_AT_decl_column(0x15)

	.global	MAIN_YFilterTap2
	.data
	.align	2
	.elfsym	MAIN_YFilterTap2,SYM_SIZE(4)
MAIN_YFilterTap2:
	.bits		0,32
			; MAIN_YFilterTap2 @ 0

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("MAIN_YFilterTap2")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("MAIN_YFilterTap2")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr MAIN_YFilterTap2]
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x61)
	.dwattr $C$DW$35, DW_AT_decl_column(0x15)

	.global	MAIN_XOut
	.data
	.align	2
	.elfsym	MAIN_XOut,SYM_SIZE(2)
MAIN_XOut:
	.bits		0,16
			; MAIN_XOut @ 0

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("MAIN_XOut")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("MAIN_XOut")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr MAIN_XOut]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x63)
	.dwattr $C$DW$36, DW_AT_decl_column(0x15)

	.global	MAIN_YOut
	.data
	.align	2
	.elfsym	MAIN_YOut,SYM_SIZE(2)
MAIN_YOut:
	.bits		0,16
			; MAIN_YOut @ 0

$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("MAIN_YOut")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("MAIN_YOut")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr MAIN_YOut]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x64)
	.dwattr $C$DW$37, DW_AT_decl_column(0x15)

	.global	MAIN_XAcc
	.data
	.align	2
	.elfsym	MAIN_XAcc,SYM_SIZE(4)
MAIN_XAcc:
	.bits		0,32
			; MAIN_XAcc @ 0

$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("MAIN_XAcc")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("MAIN_XAcc")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr MAIN_XAcc]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x66)
	.dwattr $C$DW$38, DW_AT_decl_column(0x15)

	.global	MAIN_YAcc
	.data
	.align	2
	.elfsym	MAIN_YAcc,SYM_SIZE(4)
MAIN_YAcc:
	.bits		0,32
			; MAIN_YAcc @ 0

$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("MAIN_YAcc")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("MAIN_YAcc")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr MAIN_YAcc]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$39, DW_AT_decl_line(0x67)
	.dwattr $C$DW$39, DW_AT_decl_column(0x15)

	.global	MAIN_SequenceNumber
	.data
	.align	2
	.elfsym	MAIN_SequenceNumber,SYM_SIZE(2)
MAIN_SequenceNumber:
	.bits		0,16
			; MAIN_SequenceNumber @ 0

$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("MAIN_SequenceNumber")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("MAIN_SequenceNumber")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr MAIN_SequenceNumber]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$40, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$40, DW_AT_decl_column(0x15)

	.global	MAIN_IndexNumber
	.data
	.align	2
	.elfsym	MAIN_IndexNumber,SYM_SIZE(2)
MAIN_IndexNumber:
	.bits		0,16
			; MAIN_IndexNumber @ 0

$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("MAIN_IndexNumber")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("MAIN_IndexNumber")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr MAIN_IndexNumber]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$41, DW_AT_decl_column(0x15)


$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("WDT_InitializeWDT")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("WDT_InitializeWDT")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/wdt.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$42, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$42


$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("GPIO_InitializeGPIO")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("GPIO_InitializeGPIO")
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$43


$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("ADC_InitializeADC")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("ADC_InitializeADC")
	.dwattr $C$DW$44, DW_AT_declaration
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/adc.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$44, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$44


$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("DAC_InitializeDAC")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("DAC_InitializeDAC")
	.dwattr $C$DW$45, DW_AT_declaration
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/dac.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$45, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$45


$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("OPAMP_InitializeOPAMP")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("OPAMP_InitializeOPAMP")
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/opamp.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$46, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$46


$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("CLK_InitializeCLK")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("CLK_InitializeCLK")
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x35)
	.dwattr $C$DW$47, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$47


$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("UART_InitializeUART")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("UART_InitializeUART")
	.dwattr $C$DW$48, DW_AT_declaration
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x39)
	.dwattr $C$DW$48, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$48


$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("DMA_InitializeDMA")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("DMA_InitializeDMA")
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/dma.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$49, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$49


$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("TIMER_InitializeTimers")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("TIMER_InitializeTimers")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
	.dwattr $C$DW$50, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/timer.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$50, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$50


$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("STATE_InitializeState")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("STATE_InitializeState")
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/state.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$51, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$51


$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("CH_InitializeChannels")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("CH_InitializeChannels")
	.dwattr $C$DW$52, DW_AT_declaration
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$52, DW_AT_decl_column(0x09)
	.dwendtag $C$DW$52


$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("BAK_AssessBatteryBackup")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("BAK_AssessBatteryBackup")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/bak.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x27)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$53


$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("BAK_CommitBatteryBackup")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("BAK_CommitBatteryBackup")
	.dwattr $C$DW$54, DW_AT_declaration
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/bak.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x28)
	.dwattr $C$DW$54, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$54


$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("STATE_IsRunning")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("STATE_IsRunning")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/state.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x32)
	.dwattr $C$DW$55, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$55


$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("UART1_puts")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("UART1_puts")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$56, DW_AT_decl_column(0x0a)
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$56


$C$DW$58	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$58, DW_AT_name("sprintf")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("sprintf")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_declaration
	.dwattr $C$DW$58, DW_AT_external
	.dwattr $C$DW$58, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x104)
	.dwattr $C$DW$58, DW_AT_decl_column(0x19)
$C$DW$59	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$100)

$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$103)

$C$DW$61	.dwtag  DW_TAG_unspecified_parameters

	.dwendtag $C$DW$58


$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("WDT_SoftwareReset")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("WDT_SoftwareReset")
	.dwattr $C$DW$62, DW_AT_declaration
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/wdt.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$62


$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("CMD_ParseCommand")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("CMD_ParseCommand")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$63, DW_AT_declaration
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x94)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0a)
$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$99)

	.dwendtag $C$DW$63


$C$DW$65	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$65, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("STATE_IsIdle")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_external
	.dwattr $C$DW$65, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/state.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0x30)
	.dwattr $C$DW$65, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$65


$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("STATE_SetState")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("STATE_SetState")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$66, DW_AT_declaration
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/state.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0d)
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$66


$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("DMA_RenewDACBuffer")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("DMA_RenewDACBuffer")
	.dwattr $C$DW$68, DW_AT_declaration
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/dma.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x25)
	.dwattr $C$DW$68, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$68


$C$DW$69	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$69, DW_AT_name("ADC_SetADCChannel")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("ADC_SetADCChannel")
	.dwattr $C$DW$69, DW_AT_declaration
	.dwattr $C$DW$69, DW_AT_external
	.dwattr $C$DW$69, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/adc.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x21)
	.dwattr $C$DW$69, DW_AT_decl_column(0x06)
$C$DW$70	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$23)

$C$DW$71	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$69


$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("DMA_SetDMA0")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("DMA_SetDMA0")
	.dwattr $C$DW$72, DW_AT_declaration
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/dma.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x21)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$72


$C$DW$73	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$73, DW_AT_name("DMA_SetDMA1")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("DMA_SetDMA1")
	.dwattr $C$DW$73, DW_AT_declaration
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/dma.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x22)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$73


$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("TIMER_StartTimer0AND1")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("TIMER_StartTimer0AND1")
	.dwattr $C$DW$74, DW_AT_declaration
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/timer.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x24)
	.dwattr $C$DW$74, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$74


$C$DW$75	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$75, DW_AT_name("TIMER_StartTimer0")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("TIMER_StartTimer0")
	.dwattr $C$DW$75, DW_AT_declaration
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/timer.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x20)
	.dwattr $C$DW$75, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$75


$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("TIMER_ResetTimer0")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("TIMER_ResetTimer0")
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/timer.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$76, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$76


$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("TIMER_ResetTimer1")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("TIMER_ResetTimer1")
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/timer.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$77, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$77


$C$DW$78	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$78, DW_AT_name("TIMER_StartTimer1")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("TIMER_StartTimer1")
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external
	.dwattr $C$DW$78, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/timer.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x21)
	.dwattr $C$DW$78, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$78


$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("ADC_CheckChannelGain")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("ADC_CheckChannelGain")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$79, DW_AT_declaration
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/adc.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x23)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0a)
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$23)

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$79


$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("STATE_GetStateName")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("STATE_GetStateName")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/state.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x33)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$82


$C$DW$83	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$83, DW_AT_name("PIXIE_TypeStrings")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("PIXIE_TypeStrings")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("..\pixie.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x51)
	.dwattr $C$DW$83, DW_AT_decl_column(0x1c)
$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$23)

	.dwendtag $C$DW$83


$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("DSP_AnalysisLoop")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("DSP_AnalysisLoop")
	.dwattr $C$DW$85, DW_AT_declaration
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/dsp.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x20)
	.dwattr $C$DW$85, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$85


$C$DW$86	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$86, DW_AT_name("sqrt")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("sqrt")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$86, DW_AT_declaration
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/math.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$86, DW_AT_decl_column(0x1a)
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$17)

	.dwendtag $C$DW$86


$C$DW$88	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$88, DW_AT_name("CLK_SetRTC")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("CLK_SetRTC")
	.dwattr $C$DW$88, DW_AT_declaration
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x36)
	.dwattr $C$DW$88, DW_AT_decl_column(0x06)
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$50)

	.dwendtag $C$DW$88


$C$DW$90	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$90, DW_AT_name("CLK_GetRTC")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("CLK_GetRTC")
	.dwattr $C$DW$90, DW_AT_declaration
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x37)
	.dwattr $C$DW$90, DW_AT_decl_column(0x06)
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$50)

	.dwendtag $C$DW$90


$C$DW$92	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$92, DW_AT_name("__bis_SR_register")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("__bis_SR_register")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$92, DW_AT_declaration
	.dwattr $C$DW$92, DW_AT_external
$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$9)

	.dwendtag $C$DW$92


$C$DW$94	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$94, DW_AT_name("__bic_SR_register")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("__bic_SR_register")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$94, DW_AT_declaration
	.dwattr $C$DW$94, DW_AT_external
$C$DW$95	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$9)

	.dwendtag $C$DW$94


$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("__disable_interrupt")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("__disable_interrupt")
	.dwattr $C$DW$96, DW_AT_declaration
	.dwattr $C$DW$96, DW_AT_external
	.dwendtag $C$DW$96


$C$DW$97	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$97, DW_AT_name("__enable_interrupt")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("__enable_interrupt")
	.dwattr $C$DW$97, DW_AT_declaration
	.dwattr $C$DW$97, DW_AT_external
	.dwendtag $C$DW$97

;	C:\ti\ccs1250\ccs\tools\compiler\ti-cgt-msp430_21.6.1.LTS\bin\opt430.exe C:\\Users\\kyle_\\AppData\\Local\\Temp\\{6C779641-AE2D-4FE4-BA29-94F19B31537E} C:\\Users\\kyle_\\AppData\\Local\\Temp\\{3E5E2722-1C50-4CBA-AB41-D13CA48F2E4C} 
	.sect	".text:MAIN_InitializeLockIn"
	.align	4
	.clink
	.global	MAIN_InitializeLockIn

$C$DW$98	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$98, DW_AT_name("MAIN_InitializeLockIn")
	.dwattr $C$DW$98, DW_AT_low_pc(MAIN_InitializeLockIn)
	.dwattr $C$DW$98, DW_AT_high_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("MAIN_InitializeLockIn")
	.dwattr $C$DW$98, DW_AT_external
	.dwattr $C$DW$98, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$98, DW_AT_TI_begin_line(0x115)
	.dwattr $C$DW$98, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$98, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$98, DW_AT_decl_line(0x115)
	.dwattr $C$DW$98, DW_AT_decl_column(0x06)
	.dwattr $C$DW$98, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../main.c",line 278,column 1,is_stmt,address MAIN_InitializeLockIn,isa 0

	.dwfde $C$DW$CIE, MAIN_InitializeLockIn

;*****************************************************************************
;* FUNCTION NAME: MAIN_InitializeLockIn                                      *
;*                                                                           *
;*   Regs Modified     : SP,SR,r14,r15                                       *
;*   Regs Used         : SP,SR,r14,r15                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
MAIN_InitializeLockIn:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+0,r14    ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+0 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+2 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+0,r14    ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+0 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+2 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+2,r14    ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+4 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+6 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+2,r14    ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+4 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+6 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+4,r14    ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+8 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+10 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+4,r14    ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+8 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+10 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+6,r14    ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+12 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+14 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+6,r14    ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+12 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+14 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+8,r14    ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+16 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+18 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+8,r14    ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+16 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+18 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+10,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+20 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+22 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+10,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+20 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+22 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+12,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+24 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+26 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+12,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+24 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+26 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+14,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+28 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+30 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+14,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+28 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+30 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+16,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+32 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+34 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+16,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+32 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+34 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+18,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+36 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+38 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+18,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+36 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+38 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+20,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+40 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+42 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+20,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+40 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+42 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+22,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+44 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+46 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+22,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+44 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+46 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+24,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+48 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+50 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+24,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+48 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+50 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+26,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+52 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+54 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+26,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+52 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+54 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+28,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+56 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+58 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+28,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+56 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+58 ; [] |284| 
	.dwpsn	file "../main.c",line 283,column 9,is_stmt,isa 0
        MOVX.W    &SINE_cosADC+30,r14   ; [] |283| 
        BIT.W     #32768,r14            ; [] |283| 
        SUBC.W    r15,r15               ; [] |283| 
        INV.W     r15                   ; [] |283| 
        MOV.W     r14,&MAIN_LockInXRef+60 ; [] |283| 
        MOV.W     r15,&MAIN_LockInXRef+62 ; [] |283| 
	.dwpsn	file "../main.c",line 284,column 9,is_stmt,isa 0
        MOVX.W    &SINE_sinADC+30,r14   ; [] |284| 
        BIT.W     #32768,r14            ; [] |284| 
        SUBC.W    r15,r15               ; [] |284| 
        INV.W     r15                   ; [] |284| 
        MOV.W     r14,&MAIN_LockInYRef+60 ; [] |284| 
        MOV.W     r15,&MAIN_LockInYRef+62 ; [] |284| 
	.dwpsn	file "../main.c",line 290,column 9,is_stmt,isa 0
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+0,0(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+2,2(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+4,4(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+6,6(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+8,8(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+10,10(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+12,12(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+14,14(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+16,16(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+18,18(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+20,20(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+22,22(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+24,24(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+26,26(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+28,28(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+30,30(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+32,32(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+34,34(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+36,36(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+38,38(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+40,40(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+42,42(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+44,44(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+46,46(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+48,48(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+50,50(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+52,52(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+54,54(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+56,56(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+58,58(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+60,60(r15) ; [] |290| 
        MOVX.A    &MAIN_DACBuffer+0,r15 ; [] |290| 
        MOVX.W    &SINE_cosDAC+62,62(r15) ; [] |290| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$98, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$98, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$98, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$98

	.sect	".text:MAIN_ExecuteRUN"
	.align	4
	.clink
	.global	MAIN_ExecuteRUN

$C$DW$100	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$100, DW_AT_name("MAIN_ExecuteRUN")
	.dwattr $C$DW$100, DW_AT_low_pc(MAIN_ExecuteRUN)
	.dwattr $C$DW$100, DW_AT_high_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("MAIN_ExecuteRUN")
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$100, DW_AT_TI_begin_line(0x1a3)
	.dwattr $C$DW$100, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$100, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$100, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$100, DW_AT_decl_column(0x06)
	.dwattr $C$DW$100, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "../main.c",line 420,column 1,is_stmt,address MAIN_ExecuteRUN,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteRUN

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteRUN                                            *
;*                                                                           *
;*   Regs Modified     : SP,SR,r7,r8,r9,r10,r11,r12,r13,r14,r15              *
;*   Regs Used         : SP,SR,r7,r8,r9,r10,r11,r12,r13,r14,r15              *
;*   Local Frame Size  : 0 Args + 0 Auto + 16 Save = 16 byte                 *
;*****************************************************************************
MAIN_ExecuteRUN:
;* --------------------------------------------------------------------------*
;* r8    assigned to $O$C1
;* r8    assigned to $O$C2
;* r8    assigned to $O$C3
;* r8    assigned to $O$C4
;* r8    assigned to $O$C5
;* r8    assigned to $O$C6
;* r8    assigned to $O$C7
;* r8    assigned to $O$C8
;* r8    assigned to $O$C9
;* r8    assigned to $O$C10
;* r8    assigned to $O$C11
;* r8    assigned to $O$C12
;* r8    assigned to $O$C13
;* r8    assigned to $O$C14
;* r8    assigned to $O$C15
;* r8    assigned to $O$C16
;* r15   assigned to $O$C17
;* r12   assigned to $O$U242
;* r12   assigned to $O$U242
;* r9    assigned to $O$U330
;* r10   assigned to $O$U335
;* r11   assigned to $O$U343
;* r14   assigned to $O$U351
;* r15   assigned to $O$U359
;* r7    assigned to $O$L1
;* r14   assigned to $O$y118
;* r15   assigned to $O$v2
;* r15   assigned to g
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("g")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("g")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg15]

;* r15   assigned to g
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("g")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("g")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg15]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #4,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	save_reg_to_mem, 9, -12
	.dwcfi	save_reg_to_mem, 8, -16
	.dwcfi	save_reg_to_mem, 7, -20
	.dwcfi	cfa_offset, 20
	.dwpsn	file "../main.c",line 425,column 5,is_stmt,isa 0
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$103, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |425| 
                                          ; [] |425| 
        TST.W     r12                   ; [] |425| 
        JEQ       $C$L77                ; [] |425| 
                                          ; [] |425| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 428,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |428| 
        CMP.W     #5,r15                ; [] |428| 
        JHS       $C$L76                ; [] |428| 
                                          ; [] |428| 
;* --------------------------------------------------------------------------*
        TST.W     &CMD_Command+4        ; [] |428| 
        JEQ       $C$L76                ; [] |428| 
                                          ; [] |428| 
;* --------------------------------------------------------------------------*
        CMP.W     #3601,&CMD_Command+4  ; [] |428| 
        JLO       $C$L1                 ; [] |428| 
                                          ; [] |428| 
;* --------------------------------------------------------------------------*
        CMP.W     #3678,&CMD_Command+4  ; [] |428| 
        JNE       $C$L76                ; [] |428| 
                                          ; [] |428| 
;* --------------------------------------------------------------------------*
$C$L1:    
	.dwpsn	file "../main.c",line 440,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |440| 
        JEQ       $C$L38                ; [] |440| 
                                          ; [] |440| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 498,column 13,is_stmt,isa 0
        MOV.W     #2,r12                ; [] |498| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("STATE_SetState")
	.dwattr $C$DW$104, DW_AT_TI_call

        CALLA     #STATE_SetState       ; [] |498| 
                                          ; [] |498| 
	.dwpsn	file "../main.c",line 501,column 13,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |501| 
        RLAM.W    #2,r15                ; [] |501| 
        MOVX.A    CH_Channels+0(r15),r14 ; [] |501| 
        MOVX.A    r14,&CH_ActiveChannel+0 ; [] |501| 
	.dwpsn	file "../main.c",line 504,column 13,is_stmt,isa 0
        MOVX.A    #0,102(r14)           ; [] |504| 
	.dwpsn	file "../main.c",line 507,column 13,is_stmt,isa 0
        MOV.W     &CMD_Command+4,r15    ; [] |507| 
        RLAM.W    #4,r15                ; [] |507| 
        MOV.W     r15,&CH_RunCycles+0   ; [] |507| 
	.dwpsn	file "../main.c",line 510,column 13,is_stmt,isa 0
        MOV.W     #0,&CH_RunExclusions+0 ; [] |510| 
	.dwpsn	file "../main.c",line 515,column 17,is_stmt,isa 0
        MOV.W     #10,r15               ; [] |515| 
        ADDX.A    &CH_ActiveChannel+0,r15 ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+0,r12    ; [] |515| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$105, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOV.W     r12,0(r15)            ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+2,r12    ; [] |515| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$106, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,12(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+4,r12    ; [] |515| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$107, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,14(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+6,r12    ; [] |515| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$108, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,16(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+8,r12    ; [] |515| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$109, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,18(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+10,r12   ; [] |515| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$110, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,20(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
;* --------------------------------------------------------------------------*
        MOVX.W    &SINE_cosDAC+12,r12   ; [] |515| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$111, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,22(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+14,r12   ; [] |515| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$112, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,24(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+16,r12   ; [] |515| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$113, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,26(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+18,r12   ; [] |515| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$114, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,28(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+20,r12   ; [] |515| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$115, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,30(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+22,r12   ; [] |515| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$116, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,32(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+24,r12   ; [] |515| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$117, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,34(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+26,r12   ; [] |515| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$118, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,36(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+28,r12   ; [] |515| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$119, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,38(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
;* --------------------------------------------------------------------------*
        MOVX.W    &SINE_cosDAC+30,r12   ; [] |515| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$120, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,40(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+32,r12   ; [] |515| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$121, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,42(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+34,r12   ; [] |515| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$122, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,44(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+36,r12   ; [] |515| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$123, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,46(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+38,r12   ; [] |515| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$124, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,48(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+40,r12   ; [] |515| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$125, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,50(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+42,r12   ; [] |515| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$126, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,52(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+44,r12   ; [] |515| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$127, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,54(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+46,r12   ; [] |515| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$128, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,56(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
;* --------------------------------------------------------------------------*
        MOVX.W    &SINE_cosDAC+48,r12   ; [] |515| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$129, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,58(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+50,r12   ; [] |515| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$130, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,60(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+52,r12   ; [] |515| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$131, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,62(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+54,r12   ; [] |515| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$132, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,64(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+56,r12   ; [] |515| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$133, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,66(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+58,r12   ; [] |515| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$134, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,68(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+60,r12   ; [] |515| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$135, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r13 ; [] |515| 
        MOV.W     r12,70(r13)           ; [] |515| 
        MOV.W     8(r14),r13            ; [] |515| 
        MOVX.W    &SINE_cosDAC+62,r12   ; [] |515| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$136, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |515| 
                                          ; [] |515| 
        MOVX.A    &CH_ActiveChannel+0,r14 ; [] |515| 
        MOV.W     r12,72(r14)           ; [] |515| 
	.dwpsn	file "../main.c",line 517,column 13,is_stmt,isa 0
        MOVX.A    r15,&MAIN_DACBuffer+0 ; [] |517| 
	.dwpsn	file "../main.c",line 520,column 13,is_stmt,isa 0
        MOV.W     #0,&MAIN_SequenceNumber+0 ; [] |520| 
	.dwpsn	file "../main.c",line 521,column 13,is_stmt,isa 0
        MOV.W     #0,&MAIN_IndexNumber+0 ; [] |521| 
	.dwpsn	file "../main.c",line 524,column 13,is_stmt,isa 0
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("DMA_RenewDACBuffer")
	.dwattr $C$DW$137, DW_AT_TI_call

        CALLA     #DMA_RenewDACBuffer   ; [] |524| 
                                          ; [] |524| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 86,column 5,is_stmt,isa 0
        AND.B     #191,&PCOUT_H+0       ; [] |86| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 87,column 5,is_stmt,isa 0
        AND.B     #127,&PEOUT_L+0       ; [] |87| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 88,column 5,is_stmt,isa 0
        AND.B     #127,&PBOUT_L+0       ; [] |88| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 89,column 5,is_stmt,isa 0
        BIC.B     #8,&PCOUT_L+0         ; [] |89| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 114,column 5,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r14 ; [] |114| 
        MOV.W     @r14,r12              ; [] |114| 
        MOVA      r12,r15               ; [] |114| 
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L4                 ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L3                 ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L2                 ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JNE       $C$L5                 ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 126,column 9,is_stmt,isa 0
        OR.B      #8,&PCOUT_L+0         ; [] |126| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 127,column 9,is_stmt,isa 0
        JMP       $C$L5                 ; [] |127| 
                                          ; [] |127| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L2:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 123,column 9,is_stmt,isa 0
        OR.B      #128,&PBOUT_L+0       ; [] |123| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 124,column 9,is_stmt,isa 0
        JMP       $C$L5                 ; [] |124| 
                                          ; [] |124| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L3:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 120,column 9,is_stmt,isa 0
        OR.B      #128,&PEOUT_L+0       ; [] |120| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 121,column 9,is_stmt,isa 0
        JMP       $C$L5                 ; [] |121| 
                                          ; [] |121| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L4:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 117,column 9,is_stmt,isa 0
        OR.B      #64,&PCOUT_H+0        ; [] |117| 
;* --------------------------------------------------------------------------*
$C$L5:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 138,column 1,is_stmt,isa 0
        MOV.W     4(r14),r15            ; [] |138| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 139,column 5,is_stmt,isa 0
        CMP.W     #1,r12                ; [] |139| 
        JEQ       $C$L29                ; [] |139| 
                                          ; [] |139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 174,column 10,is_stmt,isa 0
        CMP.W     #2,r12                ; [] |174| 
        JEQ       $C$L21                ; [] |174| 
                                          ; [] |174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 209,column 10,is_stmt,isa 0
        CMP.W     #3,r12                ; [] |209| 
        JEQ       $C$L13                ; [] |209| 
                                          ; [] |209| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 244,column 10,is_stmt,isa 0
        CMP.W     #4,r12                ; [] |244| 
        JNE       $C$L37                ; [] |244| 
                                          ; [] |244| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 247,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |247| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 248,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |248| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 249,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |249| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 250,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |250| 
        JEQ       $C$L12                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L11                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L10                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |250| 
        JEQ       $C$L9                 ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |250| 
        JEQ       $C$L8                 ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |250| 
        JEQ       $C$L7                 ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |250| 
        JEQ       $C$L6                 ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 275,column 13,is_stmt,isa 0
        OR.B      #7,&PBOUT_L+0         ; [] |275| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 276,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |276| 
                                          ; [] |276| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L6:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 271,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |271| 
        BIC.B     #1,r15                ; [] |271| 
        OR.B      #6,r15                ; [] |271| 
        MOV.B     r15,&PBOUT_L+0        ; [] |271| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 272,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |272| 
                                          ; [] |272| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L7:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 268,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |268| 
        AND.B     &PBOUT_L+0,r15        ; [] |268| 
        OR.B      #5,r15                ; [] |268| 
        MOV.B     r15,&PBOUT_L+0        ; [] |268| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 269,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |269| 
                                          ; [] |269| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L8:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 265,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |265| 
        AND.B     &PBOUT_L+0,r15        ; [] |265| 
        OR.B      #4,r15                ; [] |265| 
        MOV.B     r15,&PBOUT_L+0        ; [] |265| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 266,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |266| 
                                          ; [] |266| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L9:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 262,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |262| 
        AND.B     &PBOUT_L+0,r15        ; [] |262| 
        OR.B      #3,r15                ; [] |262| 
        MOV.B     r15,&PBOUT_L+0        ; [] |262| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 263,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |263| 
                                          ; [] |263| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L10:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 259,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |259| 
        AND.B     &PBOUT_L+0,r15        ; [] |259| 
        OR.B      #2,r15                ; [] |259| 
        MOV.B     r15,&PBOUT_L+0        ; [] |259| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 260,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |260| 
                                          ; [] |260| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L11:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 256,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |256| 
        AND.B     &PBOUT_L+0,r15        ; [] |256| 
        OR.B      #1,r15                ; [] |256| 
        MOV.B     r15,&PBOUT_L+0        ; [] |256| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 257,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |257| 
                                          ; [] |257| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L12:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 253,column 13,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |253| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 254,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |254| 
                                          ; [] |254| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L13:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 212,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |212| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 213,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |213| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 214,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |214| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 215,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |215| 
        JEQ       $C$L20                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L19                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L18                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |215| 
        JEQ       $C$L17                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |215| 
        JEQ       $C$L16                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |215| 
        JEQ       $C$L15                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |215| 
        JEQ       $C$L14                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 240,column 13,is_stmt,isa 0
        OR.B      #56,&PBOUT_L+0        ; [] |240| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 241,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |241| 
                                          ; [] |241| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L14:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 236,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |236| 
        BIC.B     #8,r15                ; [] |236| 
        OR.B      #48,r15               ; [] |236| 
        MOV.B     r15,&PBOUT_L+0        ; [] |236| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 237,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |237| 
                                          ; [] |237| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L15:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 233,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |233| 
        AND.B     &PBOUT_L+0,r15        ; [] |233| 
        OR.B      #40,r15               ; [] |233| 
        MOV.B     r15,&PBOUT_L+0        ; [] |233| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 234,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |234| 
                                          ; [] |234| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L16:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 230,column 13,is_stmt,isa 0
        MOV.W     #231,r15              ; [] |230| 
        AND.B     &PBOUT_L+0,r15        ; [] |230| 
        OR.B      #32,r15               ; [] |230| 
        MOV.B     r15,&PBOUT_L+0        ; [] |230| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 231,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |231| 
                                          ; [] |231| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L17:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 227,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |227| 
        AND.B     &PBOUT_L+0,r15        ; [] |227| 
        OR.B      #24,r15               ; [] |227| 
        MOV.B     r15,&PBOUT_L+0        ; [] |227| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 228,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |228| 
                                          ; [] |228| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L18:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 224,column 13,is_stmt,isa 0
        MOV.W     #199,r15              ; [] |224| 
        AND.B     &PBOUT_L+0,r15        ; [] |224| 
        OR.B      #16,r15               ; [] |224| 
        MOV.B     r15,&PBOUT_L+0        ; [] |224| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 225,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |225| 
                                          ; [] |225| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L19:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 221,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |221| 
        AND.B     &PBOUT_L+0,r15        ; [] |221| 
        OR.B      #8,r15                ; [] |221| 
        MOV.B     r15,&PBOUT_L+0        ; [] |221| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 222,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |222| 
                                          ; [] |222| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L20:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 218,column 13,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |218| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 219,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |219| 
                                          ; [] |219| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L21:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 177,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |177| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 178,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |178| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 179,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |179| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 180,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |180| 
        JEQ       $C$L28                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L27                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L26                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |180| 
        JEQ       $C$L25                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |180| 
        JEQ       $C$L24                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |180| 
        JEQ       $C$L23                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |180| 
        JEQ       $C$L22                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 205,column 13,is_stmt,isa 0
        OR.B      #14,&PAOUT_L+0        ; [] |205| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 206,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |206| 
                                          ; [] |206| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L22:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 201,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |201| 
        BIC.B     #2,r15                ; [] |201| 
        OR.B      #12,r15               ; [] |201| 
        MOV.B     r15,&PAOUT_L+0        ; [] |201| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 202,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |202| 
                                          ; [] |202| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L23:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 198,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |198| 
        BIC.B     #4,r15                ; [] |198| 
        OR.B      #10,r15               ; [] |198| 
        MOV.B     r15,&PAOUT_L+0        ; [] |198| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 199,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |199| 
                                          ; [] |199| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L24:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 195,column 13,is_stmt,isa 0
        MOV.W     #249,r15              ; [] |195| 
        AND.B     &PAOUT_L+0,r15        ; [] |195| 
        OR.B      #8,r15                ; [] |195| 
        MOV.B     r15,&PAOUT_L+0        ; [] |195| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 196,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |196| 
                                          ; [] |196| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L25:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 192,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |192| 
        BIC.B     #8,r15                ; [] |192| 
        OR.B      #6,r15                ; [] |192| 
        MOV.B     r15,&PAOUT_L+0        ; [] |192| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 193,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |193| 
                                          ; [] |193| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L26:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 189,column 13,is_stmt,isa 0
        MOV.W     #241,r15              ; [] |189| 
        AND.B     &PAOUT_L+0,r15        ; [] |189| 
        OR.B      #4,r15                ; [] |189| 
        MOV.B     r15,&PAOUT_L+0        ; [] |189| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 190,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |190| 
                                          ; [] |190| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L27:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 186,column 13,is_stmt,isa 0
        MOV.W     #243,r15              ; [] |186| 
        AND.B     &PAOUT_L+0,r15        ; [] |186| 
        OR.B      #2,r15                ; [] |186| 
        MOV.B     r15,&PAOUT_L+0        ; [] |186| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 187,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |187| 
                                          ; [] |187| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L28:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 183,column 13,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |183| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 184,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |184| 
                                          ; [] |184| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L29:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 142,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |142| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 143,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |143| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 144,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |144| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 145,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |145| 
        JEQ       $C$L36                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L35                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L34                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |145| 
        JEQ       $C$L33                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |145| 
        JEQ       $C$L32                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |145| 
        JEQ       $C$L31                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |145| 
        JEQ       $C$L30                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 170,column 13,is_stmt,isa 0
        OR.B      #112,&PAOUT_L+0       ; [] |170| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 171,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |171| 
                                          ; [] |171| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L30:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 166,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |166| 
        AND.B     &PAOUT_L+0,r15        ; [] |166| 
        OR.B      #96,r15               ; [] |166| 
        MOV.B     r15,&PAOUT_L+0        ; [] |166| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 167,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |167| 
                                          ; [] |167| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L31:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 163,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |163| 
        AND.B     &PAOUT_L+0,r15        ; [] |163| 
        OR.B      #80,r15               ; [] |163| 
        MOV.B     r15,&PAOUT_L+0        ; [] |163| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 164,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |164| 
                                          ; [] |164| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L32:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 160,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |160| 
        AND.B     &PAOUT_L+0,r15        ; [] |160| 
        OR.B      #64,r15               ; [] |160| 
        MOV.B     r15,&PAOUT_L+0        ; [] |160| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 161,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |161| 
                                          ; [] |161| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L33:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 157,column 13,is_stmt,isa 0
        MOV.W     #191,r15              ; [] |157| 
        AND.B     &PAOUT_L+0,r15        ; [] |157| 
        OR.B      #48,r15               ; [] |157| 
        MOV.B     r15,&PAOUT_L+0        ; [] |157| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 158,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |158| 
                                          ; [] |158| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L34:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 154,column 13,is_stmt,isa 0
        MOV.W     #143,r15              ; [] |154| 
        AND.B     &PAOUT_L+0,r15        ; [] |154| 
        OR.B      #32,r15               ; [] |154| 
        MOV.B     r15,&PAOUT_L+0        ; [] |154| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 155,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |155| 
                                          ; [] |155| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L35:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 151,column 13,is_stmt,isa 0
        MOV.W     #159,r15              ; [] |151| 
        AND.B     &PAOUT_L+0,r15        ; [] |151| 
        OR.B      #16,r15               ; [] |151| 
        MOV.B     r15,&PAOUT_L+0        ; [] |151| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 152,column 13,is_stmt,isa 0
        JMP       $C$L37                ; [] |152| 
                                          ; [] |152| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L36:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 148,column 13,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |148| 
;* --------------------------------------------------------------------------*
$C$L37:    
	.dwpsn	file "../main.c",line 534,column 13,is_stmt,isa 0
        MOV.W     6(r14),r13            ; [] |534| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("ADC_SetADCChannel")
	.dwattr $C$DW$138, DW_AT_TI_call

        CALLA     #ADC_SetADCChannel    ; [] |534| 
                                          ; [] |534| 
	.dwpsn	file "../main.c",line 537,column 13,is_stmt,isa 0
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("DMA_SetDMA0")
	.dwattr $C$DW$139, DW_AT_TI_call

        CALLA     #DMA_SetDMA0          ; [] |537| 
                                          ; [] |537| 
	.dwpsn	file "../main.c",line 540,column 13,is_stmt,isa 0
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("DMA_SetDMA1")
	.dwattr $C$DW$140, DW_AT_TI_call

        CALLA     #DMA_SetDMA1          ; [] |540| 
                                          ; [] |540| 
	.dwpsn	file "../main.c",line 543,column 13,is_stmt,isa 0
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("TIMER_StartTimer0AND1")
	.dwattr $C$DW$141, DW_AT_TI_call

        CALLA     #TIMER_StartTimer0AND1 ; [] |543| 
                                          ; [] |543| 
        JMP       $C$L78                ; [] |543| 
                                          ; [] |543| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L38:    
	.dwpsn	file "../main.c",line 444,column 13,is_stmt,isa 0
        MOV.W     #2,r12                ; [] |444| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("STATE_SetState")
	.dwattr $C$DW$142, DW_AT_TI_call

        CALLA     #STATE_SetState       ; [] |444| 
                                          ; [] |444| 
	.dwpsn	file "../main.c",line 447,column 13,is_stmt,isa 0
        MOVX.A    #CH_ChannelSequence+0,&CH_ActiveChannel+0 ; [] |447| 
	.dwpsn	file "../main.c",line 450,column 13,is_stmt,isa 0
        MOV.W     &CMD_Command+4,r15    ; [] |450| 
        RLAM.W    #4,r15                ; [] |450| 
        MOV.W     r15,&CH_RunCycles+0   ; [] |450| 
	.dwpsn	file "../main.c",line 453,column 13,is_stmt,isa 0
        MOV.W     #0,&CH_RunExclusions+0 ; [] |453| 
	.dwpsn	file "../main.c",line 456,column 13,is_stmt,isa 0
        MOV.W     &CH_ChannelSequence+100,&CH_ChannelSequence+98 ; [] |456| 
        MOVX.A    #CH_ChannelSequence+10,r10 ; [] 
        MOVX.A    #CH_ChannelSequence+116,r11 ; [] 
        MOVX.A    #CH_ChannelSequence+222,r14 ; [] 
        MOVX.A    #CH_ChannelSequence+328,r15 ; [] 
        MOV.W     #2,r7                 ; [] 
        MOVX.A    #SINE_cosDAC+0,r9     ; [] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L39
;*
;*   Loop source line                : 459
;*   Loop closing brace source line  : 465
;*   Known Minimum Trip Count        : 2
;*   Known Maximum Trip Count        : 2
;*   Known Max Trip Count Factor     : 2
;* --------------------------------------------------------------------------*
	.align	4
$C$L39:    
	.dwpsn	file "../main.c",line 463,column 21,is_stmt,isa 0
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$143, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$144, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$145, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$146, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
;* --------------------------------------------------------------------------*
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$147, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$148, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$149, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$150, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$151, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$152, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$153, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$154, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$155, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$156, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
;* --------------------------------------------------------------------------*
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$157, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$158, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$159, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$160, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$161, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$162, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$163, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$164, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$165, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$166, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
;* --------------------------------------------------------------------------*
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$167, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$168, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$169, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$170, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$171, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$172, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$173, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$174, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$175, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$176, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
;* --------------------------------------------------------------------------*
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$177, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$178, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$179, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$180, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$181, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$182, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$183, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$184, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$185, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$186, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
;* --------------------------------------------------------------------------*
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$187, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$188, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$189, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$190, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$191, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$192, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$193, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$194, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$195, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$196, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
;* --------------------------------------------------------------------------*
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$197, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$198, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$199, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$200, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$201, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$202, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
        MOV.W     @r9+,r8               ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+8,r13 ; [] |463| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$203, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r10                ; [] |463| 
        MOV.W     r12,-2(r10)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+114,r13 ; [] |463| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$204, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r11                ; [] |463| 
        MOV.W     r12,-2(r11)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+220,r13 ; [] |463| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$205, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r14                ; [] |463| 
        MOV.W     r12,-2(r14)           ; [] |463| 
        MOVA      r8,r12                ; [] |463| 
        MOV.W     &CH_ChannelSequence+326,r13 ; [] |463| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$206, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |463| 
                                          ; [] |463| 
        ADDA      #2,r15                ; [] |463| 
        MOV.W     r12,-2(r15)           ; [] |463| 
	.dwpsn	file "../main.c",line 459,column 24,is_stmt,isa 0
        SUB.W     #1,r7                 ; [] |459| 
        JNE       $C$L39                ; [] |459| 
                                          ; [] |459| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 466,column 13,is_stmt,isa 0
        MOV.W     #10,r15               ; [] |466| 
        ADDX.A    &CH_ActiveChannel+0,r15 ; [] |466| 
        MOVX.A    r15,&MAIN_DACBuffer+0 ; [] |466| 
	.dwpsn	file "../main.c",line 469,column 13,is_stmt,isa 0
        MOV.W     #0,&MAIN_SequenceNumber+0 ; [] |469| 
	.dwpsn	file "../main.c",line 470,column 13,is_stmt,isa 0
        MOV.W     #0,&MAIN_IndexNumber+0 ; [] |470| 
	.dwpsn	file "../main.c",line 473,column 13,is_stmt,isa 0
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("DMA_RenewDACBuffer")
	.dwattr $C$DW$207, DW_AT_TI_call

        CALLA     #DMA_RenewDACBuffer   ; [] |473| 
                                          ; [] |473| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 86,column 5,is_stmt,isa 0
        AND.B     #191,&PCOUT_H+0       ; [] |86| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 87,column 5,is_stmt,isa 0
        AND.B     #127,&PEOUT_L+0       ; [] |87| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 88,column 5,is_stmt,isa 0
        AND.B     #127,&PBOUT_L+0       ; [] |88| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 89,column 5,is_stmt,isa 0
        BIC.B     #8,&PCOUT_L+0         ; [] |89| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 114,column 5,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r14 ; [] |114| 
        MOV.W     @r14,r12              ; [] |114| 
        MOVA      r12,r15               ; [] |114| 
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L42                ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L41                ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L40                ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JNE       $C$L43                ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 126,column 9,is_stmt,isa 0
        OR.B      #8,&PCOUT_L+0         ; [] |126| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 127,column 9,is_stmt,isa 0
        JMP       $C$L43                ; [] |127| 
                                          ; [] |127| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L40:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 123,column 9,is_stmt,isa 0
        OR.B      #128,&PBOUT_L+0       ; [] |123| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 124,column 9,is_stmt,isa 0
        JMP       $C$L43                ; [] |124| 
                                          ; [] |124| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L41:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 120,column 9,is_stmt,isa 0
        OR.B      #128,&PEOUT_L+0       ; [] |120| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 121,column 9,is_stmt,isa 0
        JMP       $C$L43                ; [] |121| 
                                          ; [] |121| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L42:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 117,column 9,is_stmt,isa 0
        OR.B      #64,&PCOUT_H+0        ; [] |117| 
;* --------------------------------------------------------------------------*
$C$L43:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 138,column 1,is_stmt,isa 0
        MOV.W     4(r14),r15            ; [] |138| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 139,column 5,is_stmt,isa 0
        CMP.W     #1,r12                ; [] |139| 
        JEQ       $C$L67                ; [] |139| 
                                          ; [] |139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 174,column 10,is_stmt,isa 0
        CMP.W     #2,r12                ; [] |174| 
        JEQ       $C$L59                ; [] |174| 
                                          ; [] |174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 209,column 10,is_stmt,isa 0
        CMP.W     #3,r12                ; [] |209| 
        JEQ       $C$L51                ; [] |209| 
                                          ; [] |209| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 244,column 10,is_stmt,isa 0
        CMP.W     #4,r12                ; [] |244| 
        JNE       $C$L75                ; [] |244| 
                                          ; [] |244| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 247,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |247| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 248,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |248| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 249,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |249| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 250,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |250| 
        JEQ       $C$L50                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L49                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L48                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |250| 
        JEQ       $C$L47                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |250| 
        JEQ       $C$L46                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |250| 
        JEQ       $C$L45                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |250| 
        JEQ       $C$L44                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 275,column 13,is_stmt,isa 0
        OR.B      #7,&PBOUT_L+0         ; [] |275| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 276,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |276| 
                                          ; [] |276| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L44:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 271,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |271| 
        BIC.B     #1,r15                ; [] |271| 
        OR.B      #6,r15                ; [] |271| 
        MOV.B     r15,&PBOUT_L+0        ; [] |271| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 272,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |272| 
                                          ; [] |272| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L45:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 268,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |268| 
        AND.B     &PBOUT_L+0,r15        ; [] |268| 
        OR.B      #5,r15                ; [] |268| 
        MOV.B     r15,&PBOUT_L+0        ; [] |268| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 269,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |269| 
                                          ; [] |269| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L46:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 265,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |265| 
        AND.B     &PBOUT_L+0,r15        ; [] |265| 
        OR.B      #4,r15                ; [] |265| 
        MOV.B     r15,&PBOUT_L+0        ; [] |265| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 266,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |266| 
                                          ; [] |266| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L47:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 262,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |262| 
        AND.B     &PBOUT_L+0,r15        ; [] |262| 
        OR.B      #3,r15                ; [] |262| 
        MOV.B     r15,&PBOUT_L+0        ; [] |262| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 263,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |263| 
                                          ; [] |263| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L48:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 259,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |259| 
        AND.B     &PBOUT_L+0,r15        ; [] |259| 
        OR.B      #2,r15                ; [] |259| 
        MOV.B     r15,&PBOUT_L+0        ; [] |259| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 260,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |260| 
                                          ; [] |260| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L49:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 256,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |256| 
        AND.B     &PBOUT_L+0,r15        ; [] |256| 
        OR.B      #1,r15                ; [] |256| 
        MOV.B     r15,&PBOUT_L+0        ; [] |256| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 257,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |257| 
                                          ; [] |257| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L50:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 253,column 13,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |253| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 254,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |254| 
                                          ; [] |254| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L51:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 212,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |212| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 213,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |213| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 214,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |214| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 215,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |215| 
        JEQ       $C$L58                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L57                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L56                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |215| 
        JEQ       $C$L55                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |215| 
        JEQ       $C$L54                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |215| 
        JEQ       $C$L53                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |215| 
        JEQ       $C$L52                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 240,column 13,is_stmt,isa 0
        OR.B      #56,&PBOUT_L+0        ; [] |240| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 241,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |241| 
                                          ; [] |241| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L52:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 236,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |236| 
        BIC.B     #8,r15                ; [] |236| 
        OR.B      #48,r15               ; [] |236| 
        MOV.B     r15,&PBOUT_L+0        ; [] |236| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 237,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |237| 
                                          ; [] |237| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L53:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 233,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |233| 
        AND.B     &PBOUT_L+0,r15        ; [] |233| 
        OR.B      #40,r15               ; [] |233| 
        MOV.B     r15,&PBOUT_L+0        ; [] |233| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 234,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |234| 
                                          ; [] |234| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L54:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 230,column 13,is_stmt,isa 0
        MOV.W     #231,r15              ; [] |230| 
        AND.B     &PBOUT_L+0,r15        ; [] |230| 
        OR.B      #32,r15               ; [] |230| 
        MOV.B     r15,&PBOUT_L+0        ; [] |230| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 231,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |231| 
                                          ; [] |231| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L55:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 227,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |227| 
        AND.B     &PBOUT_L+0,r15        ; [] |227| 
        OR.B      #24,r15               ; [] |227| 
        MOV.B     r15,&PBOUT_L+0        ; [] |227| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 228,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |228| 
                                          ; [] |228| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L56:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 224,column 13,is_stmt,isa 0
        MOV.W     #199,r15              ; [] |224| 
        AND.B     &PBOUT_L+0,r15        ; [] |224| 
        OR.B      #16,r15               ; [] |224| 
        MOV.B     r15,&PBOUT_L+0        ; [] |224| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 225,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |225| 
                                          ; [] |225| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L57:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 221,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |221| 
        AND.B     &PBOUT_L+0,r15        ; [] |221| 
        OR.B      #8,r15                ; [] |221| 
        MOV.B     r15,&PBOUT_L+0        ; [] |221| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 222,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |222| 
                                          ; [] |222| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L58:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 218,column 13,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |218| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 219,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |219| 
                                          ; [] |219| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L59:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 177,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |177| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 178,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |178| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 179,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |179| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 180,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |180| 
        JEQ       $C$L66                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L65                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L64                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |180| 
        JEQ       $C$L63                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |180| 
        JEQ       $C$L62                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |180| 
        JEQ       $C$L61                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |180| 
        JEQ       $C$L60                ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 205,column 13,is_stmt,isa 0
        OR.B      #14,&PAOUT_L+0        ; [] |205| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 206,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |206| 
                                          ; [] |206| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L60:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 201,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |201| 
        BIC.B     #2,r15                ; [] |201| 
        OR.B      #12,r15               ; [] |201| 
        MOV.B     r15,&PAOUT_L+0        ; [] |201| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 202,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |202| 
                                          ; [] |202| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L61:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 198,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |198| 
        BIC.B     #4,r15                ; [] |198| 
        OR.B      #10,r15               ; [] |198| 
        MOV.B     r15,&PAOUT_L+0        ; [] |198| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 199,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |199| 
                                          ; [] |199| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L62:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 195,column 13,is_stmt,isa 0
        MOV.W     #249,r15              ; [] |195| 
        AND.B     &PAOUT_L+0,r15        ; [] |195| 
        OR.B      #8,r15                ; [] |195| 
        MOV.B     r15,&PAOUT_L+0        ; [] |195| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 196,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |196| 
                                          ; [] |196| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L63:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 192,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |192| 
        BIC.B     #8,r15                ; [] |192| 
        OR.B      #6,r15                ; [] |192| 
        MOV.B     r15,&PAOUT_L+0        ; [] |192| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 193,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |193| 
                                          ; [] |193| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L64:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 189,column 13,is_stmt,isa 0
        MOV.W     #241,r15              ; [] |189| 
        AND.B     &PAOUT_L+0,r15        ; [] |189| 
        OR.B      #4,r15                ; [] |189| 
        MOV.B     r15,&PAOUT_L+0        ; [] |189| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 190,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |190| 
                                          ; [] |190| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L65:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 186,column 13,is_stmt,isa 0
        MOV.W     #243,r15              ; [] |186| 
        AND.B     &PAOUT_L+0,r15        ; [] |186| 
        OR.B      #2,r15                ; [] |186| 
        MOV.B     r15,&PAOUT_L+0        ; [] |186| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 187,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |187| 
                                          ; [] |187| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L66:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 183,column 13,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |183| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 184,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |184| 
                                          ; [] |184| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L67:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 142,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |142| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 143,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |143| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 144,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |144| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 145,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |145| 
        JEQ       $C$L74                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L73                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L72                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |145| 
        JEQ       $C$L71                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |145| 
        JEQ       $C$L70                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |145| 
        JEQ       $C$L69                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |145| 
        JEQ       $C$L68                ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 170,column 13,is_stmt,isa 0
        OR.B      #112,&PAOUT_L+0       ; [] |170| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 171,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |171| 
                                          ; [] |171| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L68:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 166,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |166| 
        AND.B     &PAOUT_L+0,r15        ; [] |166| 
        OR.B      #96,r15               ; [] |166| 
        MOV.B     r15,&PAOUT_L+0        ; [] |166| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 167,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |167| 
                                          ; [] |167| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L69:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 163,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |163| 
        AND.B     &PAOUT_L+0,r15        ; [] |163| 
        OR.B      #80,r15               ; [] |163| 
        MOV.B     r15,&PAOUT_L+0        ; [] |163| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 164,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |164| 
                                          ; [] |164| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L70:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 160,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |160| 
        AND.B     &PAOUT_L+0,r15        ; [] |160| 
        OR.B      #64,r15               ; [] |160| 
        MOV.B     r15,&PAOUT_L+0        ; [] |160| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 161,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |161| 
                                          ; [] |161| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L71:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 157,column 13,is_stmt,isa 0
        MOV.W     #191,r15              ; [] |157| 
        AND.B     &PAOUT_L+0,r15        ; [] |157| 
        OR.B      #48,r15               ; [] |157| 
        MOV.B     r15,&PAOUT_L+0        ; [] |157| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 158,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |158| 
                                          ; [] |158| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L72:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 154,column 13,is_stmt,isa 0
        MOV.W     #143,r15              ; [] |154| 
        AND.B     &PAOUT_L+0,r15        ; [] |154| 
        OR.B      #32,r15               ; [] |154| 
        MOV.B     r15,&PAOUT_L+0        ; [] |154| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 155,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |155| 
                                          ; [] |155| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L73:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 151,column 13,is_stmt,isa 0
        MOV.W     #159,r15              ; [] |151| 
        AND.B     &PAOUT_L+0,r15        ; [] |151| 
        OR.B      #16,r15               ; [] |151| 
        MOV.B     r15,&PAOUT_L+0        ; [] |151| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 152,column 13,is_stmt,isa 0
        JMP       $C$L75                ; [] |152| 
                                          ; [] |152| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L74:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 148,column 13,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |148| 
;* --------------------------------------------------------------------------*
$C$L75:    
	.dwpsn	file "../main.c",line 483,column 13,is_stmt,isa 0
        MOV.W     6(r14),r13            ; [] |483| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("ADC_SetADCChannel")
	.dwattr $C$DW$208, DW_AT_TI_call

        CALLA     #ADC_SetADCChannel    ; [] |483| 
                                          ; [] |483| 
	.dwpsn	file "../main.c",line 486,column 13,is_stmt,isa 0
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("DMA_SetDMA0")
	.dwattr $C$DW$209, DW_AT_TI_call

        CALLA     #DMA_SetDMA0          ; [] |486| 
                                          ; [] |486| 
	.dwpsn	file "../main.c",line 489,column 13,is_stmt,isa 0
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("DMA_SetDMA1")
	.dwattr $C$DW$210, DW_AT_TI_call

        CALLA     #DMA_SetDMA1          ; [] |489| 
                                          ; [] |489| 
	.dwpsn	file "../main.c",line 492,column 13,is_stmt,isa 0
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("TIMER_StartTimer0AND1")
	.dwattr $C$DW$211, DW_AT_TI_call

        CALLA     #TIMER_StartTimer0AND1 ; [] |492| 
                                          ; [] |492| 
        JMP       $C$L78                ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L76:    
	.dwpsn	file "../main.c",line 430,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |430| 
	.dwpsn	file "../main.c",line 431,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |431| 
	.dwpsn	file "../main.c",line 432,column 13,is_stmt,isa 0
        JMP       $C$L78                ; [] |432| 
                                          ; [] |432| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L77:    
	.dwpsn	file "../main.c",line 548,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |548| 
	.dwpsn	file "../main.c",line 549,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |549| 
;* --------------------------------------------------------------------------*
$C$L78:    
        POPM.A    #4,r10                ; [] 
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$100, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$100, DW_AT_TI_end_line(0x228)
	.dwattr $C$DW$100, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$100

	.sect	".text:MAIN_ExecuteSAVE"
	.align	4
	.clink
	.global	MAIN_ExecuteSAVE

$C$DW$213	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$213, DW_AT_name("MAIN_ExecuteSAVE")
	.dwattr $C$DW$213, DW_AT_low_pc(MAIN_ExecuteSAVE)
	.dwattr $C$DW$213, DW_AT_high_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("MAIN_ExecuteSAVE")
	.dwattr $C$DW$213, DW_AT_external
	.dwattr $C$DW$213, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$213, DW_AT_TI_begin_line(0x2e3)
	.dwattr $C$DW$213, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$213, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$213, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$213, DW_AT_decl_column(0x06)
	.dwattr $C$DW$213, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 740,column 1,is_stmt,address MAIN_ExecuteSAVE,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteSAVE

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteSAVE                                           *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 4 Args + 0 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
MAIN_ExecuteSAVE:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 8
	.dwpsn	file "../main.c",line 743,column 5,is_stmt,isa 0
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("STATE_IsRunning")
	.dwattr $C$DW$214, DW_AT_TI_call

        CALLA     #STATE_IsRunning      ; [] |743| 
                                          ; [] |743| 
        TST.W     r12                   ; [] |743| 
        JNE       $C$L79                ; [] |743| 
                                          ; [] |743| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 750,column 9,is_stmt,isa 0
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("BAK_CommitBatteryBackup")
	.dwattr $C$DW$215, DW_AT_TI_call

        CALLA     #BAK_CommitBatteryBackup ; [] |750| 
                                          ; [] |750| 
	.dwpsn	file "../main.c",line 751,column 9,is_stmt,isa 0
        MOVX.A    #$C$FSL1+0,0(SP)      ; [] |751| 
        MOVX.A    #UART1_Output+0,r12   ; [] |751| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("sprintf")
	.dwattr $C$DW$216, DW_AT_TI_call

        CALLA     #sprintf              ; [] |751| 
                                          ; [] |751| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("UART1_puts")
	.dwattr $C$DW$217, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |751| 
                                          ; [] |751| 
        JMP       $C$L80                ; [] |751| 
                                          ; [] |751| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L79:    
	.dwpsn	file "../main.c",line 745,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |745| 
	.dwpsn	file "../main.c",line 746,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |746| 
;* --------------------------------------------------------------------------*
$C$L80:    
        ADDA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$213, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x2f3)
	.dwattr $C$DW$213, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$213

	.sect	".text:MAIN_ExecuteGPGAIN"
	.align	4
	.clink
	.global	MAIN_ExecuteGPGAIN

$C$DW$219	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$219, DW_AT_name("MAIN_ExecuteGPGAIN")
	.dwattr $C$DW$219, DW_AT_low_pc(MAIN_ExecuteGPGAIN)
	.dwattr $C$DW$219, DW_AT_high_pc(0x00)
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("MAIN_ExecuteGPGAIN")
	.dwattr $C$DW$219, DW_AT_external
	.dwattr $C$DW$219, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$219, DW_AT_TI_begin_line(0x45b)
	.dwattr $C$DW$219, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$219, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$219, DW_AT_decl_line(0x45b)
	.dwattr $C$DW$219, DW_AT_decl_column(0x06)
	.dwattr $C$DW$219, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 1116,column 1,is_stmt,address MAIN_ExecuteGPGAIN,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteGPGAIN

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteGPGAIN                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 8 Args + 0 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
MAIN_ExecuteGPGAIN:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 12
	.dwpsn	file "../main.c",line 1117,column 5,is_stmt,isa 0
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$220, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |1117| 
                                          ; [] |1117| 
        TST.W     r12                   ; [] |1117| 
        JEQ       $C$L82                ; [] |1117| 
                                          ; [] |1117| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1119,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |1119| 
        SUB.W     #1,r15                ; [] |1119| 
        CMP.W     #4,r15                ; [] |1119| 
        JHS       $C$L81                ; [] |1119| 
                                          ; [] |1119| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1125,column 9,is_stmt,isa 0
        MOVX.A    #$C$FSL2+0,0(SP)      ; [] |1125| 
        MOV.W     &CMD_Command+2,4(SP)  ; [] |1125| 
        MOV.W     &CMD_Command+2,r15    ; [] |1125| 
        RLAM.W    #2,r15                ; [] |1125| 
        MOVX.A    CH_Channels+0(r15),r15 ; [] |1125| 
        MOV.W     4(r15),6(SP)          ; [] |1125| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1125| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("sprintf")
	.dwattr $C$DW$221, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1125| 
                                          ; [] |1125| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("UART1_puts")
	.dwattr $C$DW$222, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1125| 
                                          ; [] |1125| 
        JMP       $C$L83                ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L81:    
	.dwpsn	file "../main.c",line 1121,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1121| 
	.dwpsn	file "../main.c",line 1122,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |1122| 
	.dwpsn	file "../main.c",line 1123,column 13,is_stmt,isa 0
        JMP       $C$L83                ; [] |1123| 
                                          ; [] |1123| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L82:    
	.dwpsn	file "../main.c",line 1129,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1129| 
	.dwpsn	file "../main.c",line 1130,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |1130| 
;* --------------------------------------------------------------------------*
$C$L83:    
        ADDA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$219, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$219, DW_AT_TI_end_line(0x46c)
	.dwattr $C$DW$219, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$219

	.sect	".text:MAIN_ExecuteSPGAIN"
	.align	4
	.clink
	.global	MAIN_ExecuteSPGAIN

$C$DW$224	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$224, DW_AT_name("MAIN_ExecuteSPGAIN")
	.dwattr $C$DW$224, DW_AT_low_pc(MAIN_ExecuteSPGAIN)
	.dwattr $C$DW$224, DW_AT_high_pc(0x00)
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("MAIN_ExecuteSPGAIN")
	.dwattr $C$DW$224, DW_AT_external
	.dwattr $C$DW$224, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$224, DW_AT_TI_begin_line(0x436)
	.dwattr $C$DW$224, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$224, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$224, DW_AT_decl_line(0x436)
	.dwattr $C$DW$224, DW_AT_decl_column(0x06)
	.dwattr $C$DW$224, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 1079,column 1,is_stmt,address MAIN_ExecuteSPGAIN,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteSPGAIN

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteSPGAIN                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 8 Args + 0 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
MAIN_ExecuteSPGAIN:
;* --------------------------------------------------------------------------*
;* r14   assigned to $O$v1
;* r15   assigned to ret
$C$DW$225	.dwtag  DW_TAG_variable
	.dwattr $C$DW$225, DW_AT_name("ret")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg15]

;* r15   assigned to g
$C$DW$226	.dwtag  DW_TAG_variable
	.dwattr $C$DW$226, DW_AT_name("g")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("g")
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg15]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 12
	.dwpsn	file "../main.c",line 1081,column 5,is_stmt,isa 0
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$227, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |1081| 
                                          ; [] |1081| 
        TST.W     r12                   ; [] |1081| 
        JEQ       $C$L117               ; [] |1081| 
                                          ; [] |1081| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 138,column 1,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r14    ; [] |138| 
        MOV.W     &CMD_Command+4,r15    ; [] |138| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 139,column 5,is_stmt,isa 0
        CMP.W     #1,r14                ; [] |139| 
        JEQ       $C$L108               ; [] |139| 
                                          ; [] |139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 174,column 10,is_stmt,isa 0
        CMP.W     #2,r14                ; [] |174| 
        JEQ       $C$L100               ; [] |174| 
                                          ; [] |174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 209,column 10,is_stmt,isa 0
        CMP.W     #3,r14                ; [] |209| 
        JEQ       $C$L92                ; [] |209| 
                                          ; [] |209| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 244,column 10,is_stmt,isa 0
        CMP.W     #4,r14                ; [] |244| 
        JNE       $C$L91                ; [] |244| 
                                          ; [] |244| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 247,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |247| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 248,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |248| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 249,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |249| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 250,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |250| 
        JEQ       $C$L90                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L89                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L88                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |250| 
        JEQ       $C$L87                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |250| 
        JEQ       $C$L86                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |250| 
        JEQ       $C$L85                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |250| 
        JEQ       $C$L84                ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 275,column 13,is_stmt,isa 0
        OR.B      #7,&PBOUT_L+0         ; [] |275| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 276,column 13,is_stmt,isa 0
        MOV.W     #100,r15              ; [] |276| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L84:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 271,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |271| 
        BIC.B     #1,r15                ; [] |271| 
        OR.B      #6,r15                ; [] |271| 
        MOV.B     r15,&PBOUT_L+0        ; [] |271| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 272,column 13,is_stmt,isa 0
        MOV.W     #50,r15               ; [] |272| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L85:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 268,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |268| 
        AND.B     &PBOUT_L+0,r15        ; [] |268| 
        OR.B      #5,r15                ; [] |268| 
        MOV.B     r15,&PBOUT_L+0        ; [] |268| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 269,column 13,is_stmt,isa 0
        MOV.W     #20,r15               ; [] |269| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L86:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 265,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |265| 
        AND.B     &PBOUT_L+0,r15        ; [] |265| 
        OR.B      #4,r15                ; [] |265| 
        MOV.B     r15,&PBOUT_L+0        ; [] |265| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 266,column 13,is_stmt,isa 0
        MOV.W     #10,r15               ; [] |266| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L87:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 262,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |262| 
        AND.B     &PBOUT_L+0,r15        ; [] |262| 
        OR.B      #3,r15                ; [] |262| 
        MOV.B     r15,&PBOUT_L+0        ; [] |262| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 263,column 13,is_stmt,isa 0
        MOV.W     #5,r15                ; [] |263| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L88:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 259,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |259| 
        AND.B     &PBOUT_L+0,r15        ; [] |259| 
        OR.B      #2,r15                ; [] |259| 
        MOV.B     r15,&PBOUT_L+0        ; [] |259| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 260,column 13,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |260| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L89:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 256,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |256| 
        AND.B     &PBOUT_L+0,r15        ; [] |256| 
        OR.B      #1,r15                ; [] |256| 
        MOV.B     r15,&PBOUT_L+0        ; [] |256| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 257,column 13,is_stmt,isa 0
        MOV.W     #1,r15                ; [] |257| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L90:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 253,column 13,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |253| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 254,column 13,is_stmt,isa 0
        MOV.W     #0,r15                ; [] |254| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L91:    
	.dwpsn	file "../main.c",line 1090,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1090| 
	.dwpsn	file "../main.c",line 1091,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |1091| 
	.dwpsn	file "../main.c",line 1092,column 13,is_stmt,isa 0
        JMP       $C$L118               ; [] |1092| 
                                          ; [] |1092| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L92:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 212,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |212| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 213,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |213| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 214,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |214| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 215,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |215| 
        JEQ       $C$L99                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L98                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L97                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |215| 
        JEQ       $C$L96                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |215| 
        JEQ       $C$L95                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |215| 
        JEQ       $C$L94                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |215| 
        JEQ       $C$L93                ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 240,column 13,is_stmt,isa 0
        OR.B      #56,&PBOUT_L+0        ; [] |240| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 241,column 13,is_stmt,isa 0
        MOV.W     #100,r15              ; [] |241| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L93:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 236,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |236| 
        BIC.B     #8,r15                ; [] |236| 
        OR.B      #48,r15               ; [] |236| 
        MOV.B     r15,&PBOUT_L+0        ; [] |236| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 237,column 13,is_stmt,isa 0
        MOV.W     #50,r15               ; [] |237| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L94:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 233,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |233| 
        AND.B     &PBOUT_L+0,r15        ; [] |233| 
        OR.B      #40,r15               ; [] |233| 
        MOV.B     r15,&PBOUT_L+0        ; [] |233| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 234,column 13,is_stmt,isa 0
        MOV.W     #20,r15               ; [] |234| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L95:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 230,column 13,is_stmt,isa 0
        MOV.W     #231,r15              ; [] |230| 
        AND.B     &PBOUT_L+0,r15        ; [] |230| 
        OR.B      #32,r15               ; [] |230| 
        MOV.B     r15,&PBOUT_L+0        ; [] |230| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 231,column 13,is_stmt,isa 0
        MOV.W     #10,r15               ; [] |231| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L96:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 227,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |227| 
        AND.B     &PBOUT_L+0,r15        ; [] |227| 
        OR.B      #24,r15               ; [] |227| 
        MOV.B     r15,&PBOUT_L+0        ; [] |227| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 228,column 13,is_stmt,isa 0
        MOV.W     #5,r15                ; [] |228| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L97:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 224,column 13,is_stmt,isa 0
        MOV.W     #199,r15              ; [] |224| 
        AND.B     &PBOUT_L+0,r15        ; [] |224| 
        OR.B      #16,r15               ; [] |224| 
        MOV.B     r15,&PBOUT_L+0        ; [] |224| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 225,column 13,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |225| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L98:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 221,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |221| 
        AND.B     &PBOUT_L+0,r15        ; [] |221| 
        OR.B      #8,r15                ; [] |221| 
        MOV.B     r15,&PBOUT_L+0        ; [] |221| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 222,column 13,is_stmt,isa 0
        MOV.W     #1,r15                ; [] |222| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L99:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 218,column 13,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |218| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 219,column 13,is_stmt,isa 0
        MOV.W     #0,r15                ; [] |219| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L100:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 177,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |177| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 178,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |178| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 179,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |179| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 180,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |180| 
        JEQ       $C$L107               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L106               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L105               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |180| 
        JEQ       $C$L104               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |180| 
        JEQ       $C$L103               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |180| 
        JEQ       $C$L102               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |180| 
        JEQ       $C$L101               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 205,column 13,is_stmt,isa 0
        OR.B      #14,&PAOUT_L+0        ; [] |205| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 206,column 13,is_stmt,isa 0
        MOV.W     #100,r15              ; [] |206| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L101:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 201,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |201| 
        BIC.B     #2,r15                ; [] |201| 
        OR.B      #12,r15               ; [] |201| 
        MOV.B     r15,&PAOUT_L+0        ; [] |201| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 202,column 13,is_stmt,isa 0
        MOV.W     #50,r15               ; [] |202| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L102:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 198,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |198| 
        BIC.B     #4,r15                ; [] |198| 
        OR.B      #10,r15               ; [] |198| 
        MOV.B     r15,&PAOUT_L+0        ; [] |198| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 199,column 13,is_stmt,isa 0
        MOV.W     #20,r15               ; [] |199| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L103:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 195,column 13,is_stmt,isa 0
        MOV.W     #249,r15              ; [] |195| 
        AND.B     &PAOUT_L+0,r15        ; [] |195| 
        OR.B      #8,r15                ; [] |195| 
        MOV.B     r15,&PAOUT_L+0        ; [] |195| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 196,column 13,is_stmt,isa 0
        MOV.W     #10,r15               ; [] |196| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L104:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 192,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |192| 
        BIC.B     #8,r15                ; [] |192| 
        OR.B      #6,r15                ; [] |192| 
        MOV.B     r15,&PAOUT_L+0        ; [] |192| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 193,column 13,is_stmt,isa 0
        MOV.W     #5,r15                ; [] |193| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L105:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 189,column 13,is_stmt,isa 0
        MOV.W     #241,r15              ; [] |189| 
        AND.B     &PAOUT_L+0,r15        ; [] |189| 
        OR.B      #4,r15                ; [] |189| 
        MOV.B     r15,&PAOUT_L+0        ; [] |189| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 190,column 13,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |190| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L106:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 186,column 13,is_stmt,isa 0
        MOV.W     #243,r15              ; [] |186| 
        AND.B     &PAOUT_L+0,r15        ; [] |186| 
        OR.B      #2,r15                ; [] |186| 
        MOV.B     r15,&PAOUT_L+0        ; [] |186| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 187,column 13,is_stmt,isa 0
        MOV.W     #1,r15                ; [] |187| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L107:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 183,column 13,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |183| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 184,column 13,is_stmt,isa 0
        MOV.W     #0,r15                ; [] |184| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L108:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 142,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |142| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 143,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |143| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 144,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |144| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 145,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |145| 
        JEQ       $C$L115               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L114               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L113               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |145| 
        JEQ       $C$L112               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |145| 
        JEQ       $C$L111               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |145| 
        JEQ       $C$L110               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |145| 
        JEQ       $C$L109               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 170,column 13,is_stmt,isa 0
        OR.B      #112,&PAOUT_L+0       ; [] |170| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 171,column 13,is_stmt,isa 0
        MOV.W     #100,r15              ; [] |171| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L109:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 166,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |166| 
        AND.B     &PAOUT_L+0,r15        ; [] |166| 
        OR.B      #96,r15               ; [] |166| 
        MOV.B     r15,&PAOUT_L+0        ; [] |166| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 167,column 13,is_stmt,isa 0
        MOV.W     #50,r15               ; [] |167| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L110:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 163,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |163| 
        AND.B     &PAOUT_L+0,r15        ; [] |163| 
        OR.B      #80,r15               ; [] |163| 
        MOV.B     r15,&PAOUT_L+0        ; [] |163| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 164,column 13,is_stmt,isa 0
        MOV.W     #20,r15               ; [] |164| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L111:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 160,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |160| 
        AND.B     &PAOUT_L+0,r15        ; [] |160| 
        OR.B      #64,r15               ; [] |160| 
        MOV.B     r15,&PAOUT_L+0        ; [] |160| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 161,column 13,is_stmt,isa 0
        MOV.W     #10,r15               ; [] |161| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L112:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 157,column 13,is_stmt,isa 0
        MOV.W     #191,r15              ; [] |157| 
        AND.B     &PAOUT_L+0,r15        ; [] |157| 
        OR.B      #48,r15               ; [] |157| 
        MOV.B     r15,&PAOUT_L+0        ; [] |157| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 158,column 13,is_stmt,isa 0
        MOV.W     #5,r15                ; [] |158| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L113:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 154,column 13,is_stmt,isa 0
        MOV.W     #143,r15              ; [] |154| 
        AND.B     &PAOUT_L+0,r15        ; [] |154| 
        OR.B      #32,r15               ; [] |154| 
        MOV.B     r15,&PAOUT_L+0        ; [] |154| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 155,column 13,is_stmt,isa 0
        MOV.W     #2,r15                ; [] |155| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L114:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 151,column 13,is_stmt,isa 0
        MOV.W     #159,r15              ; [] |151| 
        AND.B     &PAOUT_L+0,r15        ; [] |151| 
        OR.B      #16,r15               ; [] |151| 
        MOV.B     r15,&PAOUT_L+0        ; [] |151| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 152,column 13,is_stmt,isa 0
        MOV.W     #1,r15                ; [] |152| 
	.dwpsn	file "../main.c",line 1083,column 9,is_stmt,isa 0
        JMP       $C$L116               ; [] |1083| 
                                          ; [] |1083| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L115:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 148,column 13,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |148| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 149,column 13,is_stmt,isa 0
        MOV.W     #0,r15                ; [] |149| 
;* --------------------------------------------------------------------------*
$C$L116:    
	.dwpsn	file "../main.c",line 1085,column 13,is_stmt,isa 0
        MOVA      r14,r13               ; [] |1085| 
        RLAM.W    #2,r13                ; [] |1085| 
        MOVX.A    CH_Channels+0(r13),r13 ; [] |1085| 
        MOV.W     r15,4(r13)            ; [] |1085| 
	.dwpsn	file "../main.c",line 1086,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL3+0,0(SP)      ; [] |1086| 
        MOV.W     r14,4(SP)             ; [] |1086| 
        MOV.W     r15,6(SP)             ; [] |1086| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1086| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("sprintf")
	.dwattr $C$DW$228, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1086| 
                                          ; [] |1086| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("UART1_puts")
	.dwattr $C$DW$229, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1086| 
                                          ; [] |1086| 
        JMP       $C$L118               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L117:    
	.dwpsn	file "../main.c",line 1097,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1097| 
	.dwpsn	file "../main.c",line 1098,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |1098| 
;* --------------------------------------------------------------------------*
$C$L118:    
        ADDA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$224, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$224, DW_AT_TI_end_line(0x44d)
	.dwattr $C$DW$224, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$224

	.sect	".text:MAIN_ExecuteGATTEN"
	.align	4
	.clink
	.global	MAIN_ExecuteGATTEN

$C$DW$231	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$231, DW_AT_name("MAIN_ExecuteGATTEN")
	.dwattr $C$DW$231, DW_AT_low_pc(MAIN_ExecuteGATTEN)
	.dwattr $C$DW$231, DW_AT_high_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("MAIN_ExecuteGATTEN")
	.dwattr $C$DW$231, DW_AT_external
	.dwattr $C$DW$231, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$231, DW_AT_TI_begin_line(0x4a1)
	.dwattr $C$DW$231, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$231, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$231, DW_AT_decl_line(0x4a1)
	.dwattr $C$DW$231, DW_AT_decl_column(0x06)
	.dwattr $C$DW$231, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 1186,column 1,is_stmt,address MAIN_ExecuteGATTEN,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteGATTEN

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteGATTEN                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 8 Args + 0 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
MAIN_ExecuteGATTEN:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 12
	.dwpsn	file "../main.c",line 1187,column 5,is_stmt,isa 0
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$232, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |1187| 
                                          ; [] |1187| 
        TST.W     r12                   ; [] |1187| 
        JEQ       $C$L120               ; [] |1187| 
                                          ; [] |1187| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1189,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |1189| 
        SUB.W     #1,r15                ; [] |1189| 
        CMP.W     #4,r15                ; [] |1189| 
        JHS       $C$L119               ; [] |1189| 
                                          ; [] |1189| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1195,column 9,is_stmt,isa 0
        MOVX.A    #$C$FSL4+0,0(SP)      ; [] |1195| 
        MOV.W     &CMD_Command+2,4(SP)  ; [] |1195| 
        MOV.W     &CMD_Command+2,r15    ; [] |1195| 
        RLAM.W    #2,r15                ; [] |1195| 
        MOVX.A    CH_Channels+0(r15),r15 ; [] |1195| 
        MOV.W     8(r15),6(SP)          ; [] |1195| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1195| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("sprintf")
	.dwattr $C$DW$233, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1195| 
                                          ; [] |1195| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("UART1_puts")
	.dwattr $C$DW$234, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1195| 
                                          ; [] |1195| 
        JMP       $C$L121               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L119:    
	.dwpsn	file "../main.c",line 1191,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1191| 
	.dwpsn	file "../main.c",line 1192,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |1192| 
	.dwpsn	file "../main.c",line 1193,column 13,is_stmt,isa 0
        JMP       $C$L121               ; [] |1193| 
                                          ; [] |1193| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L120:    
	.dwpsn	file "../main.c",line 1199,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1199| 
	.dwpsn	file "../main.c",line 1200,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |1200| 
;* --------------------------------------------------------------------------*
$C$L121:    
        ADDA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$231, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$231, DW_AT_TI_end_line(0x4b2)
	.dwattr $C$DW$231, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$231

	.sect	".text:MAIN_ExecuteSATTEN"
	.align	4
	.clink
	.global	MAIN_ExecuteSATTEN

$C$DW$236	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$236, DW_AT_name("MAIN_ExecuteSATTEN")
	.dwattr $C$DW$236, DW_AT_low_pc(MAIN_ExecuteSATTEN)
	.dwattr $C$DW$236, DW_AT_high_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("MAIN_ExecuteSATTEN")
	.dwattr $C$DW$236, DW_AT_external
	.dwattr $C$DW$236, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$236, DW_AT_TI_begin_line(0x47e)
	.dwattr $C$DW$236, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$236, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$236, DW_AT_decl_line(0x47e)
	.dwattr $C$DW$236, DW_AT_decl_column(0x06)
	.dwattr $C$DW$236, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 1151,column 1,is_stmt,address MAIN_ExecuteSATTEN,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteSATTEN

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteSATTEN                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 8 Args + 0 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
MAIN_ExecuteSATTEN:
;* --------------------------------------------------------------------------*
;* r14   assigned to $O$v2
;* r15   assigned to $O$v1
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 12
	.dwpsn	file "../main.c",line 1152,column 5,is_stmt,isa 0
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$237, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |1152| 
                                          ; [] |1152| 
        TST.W     r12                   ; [] |1152| 
        JEQ       $C$L123               ; [] |1152| 
                                          ; [] |1152| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1154,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |1154| 
        TST.W     r15                   ; [] |1154| 
        JEQ       $C$L122               ; [] |1154| 
                                          ; [] |1154| 
;* --------------------------------------------------------------------------*
        CMP.W     #5,r15                ; [] |1154| 
        JHS       $C$L122               ; [] |1154| 
                                          ; [] |1154| 
;* --------------------------------------------------------------------------*
        MOV.W     &CMD_Command+4,r14    ; [] |1154| 
        CMP.W     #4,r14                ; [] |1154| 
        JHS       $C$L122               ; [] |1154| 
                                          ; [] |1154| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1156,column 13,is_stmt,isa 0
        MOVA      r15,r13               ; [] |1156| 
        RLAM.W    #2,r13                ; [] |1156| 
        MOVX.A    CH_Channels+0(r13),r13 ; [] |1156| 
        MOV.W     r14,8(r13)            ; [] |1156| 
	.dwpsn	file "../main.c",line 1157,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL5+0,0(SP)      ; [] |1157| 
        MOV.W     r15,4(SP)             ; [] |1157| 
        MOV.W     r14,6(SP)             ; [] |1157| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1157| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("sprintf")
	.dwattr $C$DW$238, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1157| 
                                          ; [] |1157| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("UART1_puts")
	.dwattr $C$DW$239, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1157| 
                                          ; [] |1157| 
        JMP       $C$L124               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L122:    
	.dwpsn	file "../main.c",line 1161,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1161| 
	.dwpsn	file "../main.c",line 1162,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |1162| 
	.dwpsn	file "../main.c",line 1163,column 13,is_stmt,isa 0
        JMP       $C$L124               ; [] |1163| 
                                          ; [] |1163| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L123:    
	.dwpsn	file "../main.c",line 1168,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1168| 
	.dwpsn	file "../main.c",line 1169,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |1169| 
;* --------------------------------------------------------------------------*
$C$L124:    
        ADDA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$236, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$236, DW_AT_TI_end_line(0x494)
	.dwattr $C$DW$236, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$236

	.sect	".text:MAIN_ExecuteGCLOCK"
	.align	4
	.clink
	.global	MAIN_ExecuteGCLOCK

$C$DW$241	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$241, DW_AT_name("MAIN_ExecuteGCLOCK")
	.dwattr $C$DW$241, DW_AT_low_pc(MAIN_ExecuteGCLOCK)
	.dwattr $C$DW$241, DW_AT_high_pc(0x00)
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("MAIN_ExecuteGCLOCK")
	.dwattr $C$DW$241, DW_AT_external
	.dwattr $C$DW$241, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$241, DW_AT_TI_begin_line(0x411)
	.dwattr $C$DW$241, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$241, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$241, DW_AT_decl_line(0x411)
	.dwattr $C$DW$241, DW_AT_decl_column(0x06)
	.dwattr $C$DW$241, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "../main.c",line 1042,column 1,is_stmt,address MAIN_ExecuteGCLOCK,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteGCLOCK

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteGCLOCK                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 16 Args + 0 Auto + 0 Save = 16 byte                 *
;*****************************************************************************
MAIN_ExecuteGCLOCK:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #16,SP                ; [] 
	.dwcfi	cfa_offset, 20
	.dwpsn	file "../main.c",line 1044,column 5,is_stmt,isa 0
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("STATE_IsRunning")
	.dwattr $C$DW$242, DW_AT_TI_call

        CALLA     #STATE_IsRunning      ; [] |1044| 
                                          ; [] |1044| 
        TST.W     r12                   ; [] |1044| 
        JNE       $C$L125               ; [] |1044| 
                                          ; [] |1044| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1051,column 5,is_stmt,isa 0
        MOVX.A    #$C$FSL6+0,0(SP)      ; [] |1051| 
        MOV.W     &MAIN_CurrentTime+0,4(SP) ; [] |1051| 
        MOV.W     &MAIN_CurrentTime+2,6(SP) ; [] |1051| 
        MOV.W     &MAIN_CurrentTime+4,8(SP) ; [] |1051| 
        MOV.W     &MAIN_CurrentTime+6,10(SP) ; [] |1051| 
        MOV.W     &MAIN_CurrentTime+8,12(SP) ; [] |1051| 
        MOV.W     &MAIN_CurrentTime+10,14(SP) ; [] |1051| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1051| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("sprintf")
	.dwattr $C$DW$243, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1051| 
                                          ; [] |1051| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("UART1_puts")
	.dwattr $C$DW$244, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1051| 
                                          ; [] |1051| 
	.dwpsn	file "../main.c",line 1059,column 5,is_stmt,isa 0
        JMP       $C$L126               ; [] |1059| 
                                          ; [] |1059| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L125:    
	.dwpsn	file "../main.c",line 1046,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1046| 
	.dwpsn	file "../main.c",line 1047,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |1047| 
;* --------------------------------------------------------------------------*
$C$L126:    
        ADDA      #16,SP                ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$241, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$241, DW_AT_TI_end_line(0x424)
	.dwattr $C$DW$241, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$241

	.sect	".text:MAIN_ExecuteSCLOCK"
	.align	4
	.clink
	.global	MAIN_ExecuteSCLOCK

$C$DW$246	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$246, DW_AT_name("MAIN_ExecuteSCLOCK")
	.dwattr $C$DW$246, DW_AT_low_pc(MAIN_ExecuteSCLOCK)
	.dwattr $C$DW$246, DW_AT_high_pc(0x00)
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("MAIN_ExecuteSCLOCK")
	.dwattr $C$DW$246, DW_AT_external
	.dwattr $C$DW$246, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$246, DW_AT_TI_begin_line(0x3dc)
	.dwattr $C$DW$246, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$246, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$246, DW_AT_decl_line(0x3dc)
	.dwattr $C$DW$246, DW_AT_decl_column(0x06)
	.dwattr $C$DW$246, DW_AT_TI_max_frame_size(0x14)
	.dwpsn	file "../main.c",line 989,column 1,is_stmt,address MAIN_ExecuteSCLOCK,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteSCLOCK

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteSCLOCK                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 16 Args + 0 Auto + 0 Save = 16 byte                 *
;*****************************************************************************
MAIN_ExecuteSCLOCK:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #16,SP                ; [] 
	.dwcfi	cfa_offset, 20
	.dwpsn	file "../main.c",line 991,column 5,is_stmt,isa 0
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("STATE_IsRunning")
	.dwattr $C$DW$247, DW_AT_TI_call

        CALLA     #STATE_IsRunning      ; [] |991| 
                                          ; [] |991| 
        TST.W     r12                   ; [] |991| 
        JNE       $C$L128               ; [] |991| 
                                          ; [] |991| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 998,column 81,is_stmt,isa 0
        CMP.W     #4097,&CMD_Command+2  ; [] |998| 
        JHS       $C$L127               ; [] |998| 
                                          ; [] |998| 
;* --------------------------------------------------------------------------*
        MOV.W     &CMD_Command+4,r15    ; [] |998| 
        SUB.W     #1,r15                ; [] |998| 
        CMP.W     #12,r15               ; [] |998| 
        JHS       $C$L127               ; [] |998| 
                                          ; [] |998| 
;* --------------------------------------------------------------------------*
        MOV.W     &CMD_Command+6,r15    ; [] |998| 
        SUB.W     #1,r15                ; [] |998| 
        CMP.W     #31,r15               ; [] |998| 
        JHS       $C$L127               ; [] |998| 
                                          ; [] |998| 
;* --------------------------------------------------------------------------*
        CMP.W     #24,&CMD_Command+8    ; [] |998| 
        JHS       $C$L127               ; [] |998| 
                                          ; [] |998| 
;* --------------------------------------------------------------------------*
        CMP.W     #60,&CMD_Command+10   ; [] |998| 
        JHS       $C$L127               ; [] |998| 
                                          ; [] |998| 
;* --------------------------------------------------------------------------*
        CMP.W     #60,&CMD_Command+12   ; [] |998| 
        JHS       $C$L127               ; [] |998| 
                                          ; [] |998| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1006,column 5,is_stmt,isa 0
        MOV.W     &CMD_Command+2,&MAIN_CurrentTime+0 ; [] |1006| 
	.dwpsn	file "../main.c",line 1007,column 5,is_stmt,isa 0
        MOV.W     &CMD_Command+4,&MAIN_CurrentTime+2 ; [] |1007| 
	.dwpsn	file "../main.c",line 1008,column 5,is_stmt,isa 0
        MOV.W     &CMD_Command+6,&MAIN_CurrentTime+4 ; [] |1008| 
	.dwpsn	file "../main.c",line 1009,column 5,is_stmt,isa 0
        MOV.W     &CMD_Command+8,&MAIN_CurrentTime+6 ; [] |1009| 
	.dwpsn	file "../main.c",line 1010,column 5,is_stmt,isa 0
        MOV.W     &CMD_Command+10,&MAIN_CurrentTime+8 ; [] |1010| 
	.dwpsn	file "../main.c",line 1011,column 5,is_stmt,isa 0
        MOV.W     &CMD_Command+12,&MAIN_CurrentTime+10 ; [] |1011| 
	.dwpsn	file "../main.c",line 1012,column 5,is_stmt,isa 0
        MOV.W     #1,&MAIN_PendingRTCSetFlag+0 ; [] |1012| 
	.dwpsn	file "../main.c",line 1015,column 5,is_stmt,isa 0
        MOVX.A    #$C$FSL7+0,0(SP)      ; [] |1015| 
        MOV.W     &CMD_Command+2,4(SP)  ; [] |1015| 
        MOV.W     &CMD_Command+4,6(SP)  ; [] |1015| 
        MOV.W     &CMD_Command+6,8(SP)  ; [] |1015| 
        MOV.W     &CMD_Command+8,10(SP) ; [] |1015| 
        MOV.W     &CMD_Command+10,12(SP) ; [] |1015| 
        MOV.W     &CMD_Command+12,14(SP) ; [] |1015| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1015| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("sprintf")
	.dwattr $C$DW$248, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1015| 
                                          ; [] |1015| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("UART1_puts")
	.dwattr $C$DW$249, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1015| 
                                          ; [] |1015| 
	.dwpsn	file "../main.c",line 1023,column 5,is_stmt,isa 0
        JMP       $C$L129               ; [] |1023| 
                                          ; [] |1023| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L127:    
	.dwpsn	file "../main.c",line 1025,column 5,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |1025| 
	.dwpsn	file "../main.c",line 1026,column 5,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |1026| 
	.dwpsn	file "../main.c",line 1027,column 5,is_stmt,isa 0
        JMP       $C$L129               ; [] |1027| 
                                          ; [] |1027| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L128:    
	.dwpsn	file "../main.c",line 993,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |993| 
	.dwpsn	file "../main.c",line 994,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |994| 
;* --------------------------------------------------------------------------*
$C$L129:    
        ADDA      #16,SP                ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$246, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$246, DW_AT_TI_end_line(0x404)
	.dwattr $C$DW$246, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$246

	.sect	".text:MAIN_ExecuteSTATUS"
	.align	4
	.clink
	.global	MAIN_ExecuteSTATUS

$C$DW$251	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$251, DW_AT_name("MAIN_ExecuteSTATUS")
	.dwattr $C$DW$251, DW_AT_low_pc(MAIN_ExecuteSTATUS)
	.dwattr $C$DW$251, DW_AT_high_pc(0x00)
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("MAIN_ExecuteSTATUS")
	.dwattr $C$DW$251, DW_AT_external
	.dwattr $C$DW$251, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$251, DW_AT_TI_begin_line(0x3a9)
	.dwattr $C$DW$251, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$251, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$251, DW_AT_decl_line(0x3a9)
	.dwattr $C$DW$251, DW_AT_decl_column(0x06)
	.dwattr $C$DW$251, DW_AT_TI_max_frame_size(0x1c)
	.dwpsn	file "../main.c",line 938,column 1,is_stmt,address MAIN_ExecuteSTATUS,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteSTATUS

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteSTATUS                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Regs Used         : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Local Frame Size  : 20 Args + 0 Auto + 4 Save = 24 byte                 *
;*****************************************************************************
MAIN_ExecuteSTATUS:
;* --------------------------------------------------------------------------*
;* r10   assigned to $O$C1
;* r10   assigned to i
$C$DW$252	.dwtag  DW_TAG_variable
	.dwattr $C$DW$252, DW_AT_name("i")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$252, DW_AT_location[DW_OP_reg10]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #1,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	cfa_offset, 8
        SUBA      #20,SP                ; [] 
	.dwcfi	cfa_offset, 28
	.dwpsn	file "../main.c",line 941,column 5,is_stmt,isa 0
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$253, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |941| 
                                          ; [] |941| 
        TST.W     r12                   ; [] |941| 
        JEQ       $C$L132               ; [] |941| 
                                          ; [] |941| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 943,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r10    ; [] |943| 
        TST.W     r10                   ; [] |943| 
        JEQ       $C$L131               ; [] |943| 
                                          ; [] |943| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 951,column 14,is_stmt,isa 0
        CMP.W     #5,r10                ; [] |951| 
        JLO       $C$L130               ; [] |951| 
                                          ; [] |951| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 961,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |961| 
	.dwpsn	file "../main.c",line 962,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |962| 
        JMP       $C$L133               ; [] |962| 
                                          ; [] |962| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L130:    
	.dwpsn	file "../main.c",line 953,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL8+0,0(SP)      ; [] |953| 
        MOV.W     r10,4(SP)             ; [] |953| 
        MOVX.A    #UART1_Output+0,r12   ; [] |953| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("sprintf")
	.dwattr $C$DW$254, DW_AT_TI_call

        CALLA     #sprintf              ; [] |953| 
                                          ; [] |953| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("UART1_puts")
	.dwattr $C$DW$255, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |953| 
                                          ; [] |953| 
	.dwpsn	file "../main.c",line 954,column 13,is_stmt,isa 0
        RLAM.W    #2,r10                ; [] |954| 
        MOV.W     r10,r10               ; [] |954| 
        ADDA      #CH_Channels+0,r10    ; [] |954| 
        MOVX.A    @r10,r15              ; [] |954| 
        MOV.W     2(r15),r12            ; [] |954| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("PIXIE_TypeStrings")
	.dwattr $C$DW$256, DW_AT_TI_call

        CALLA     #PIXIE_TypeStrings    ; [] |954| 
                                          ; [] |954| 
        MOVX.A    #$C$FSL9+0,0(SP)      ; [] |954| 
        MOVX.A    r12,4(SP)             ; [] |954| 
        MOVX.A    #UART1_Output+0,r12   ; [] |954| 
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("sprintf")
	.dwattr $C$DW$257, DW_AT_TI_call

        CALLA     #sprintf              ; [] |954| 
                                          ; [] |954| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("UART1_puts")
	.dwattr $C$DW$258, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |954| 
                                          ; [] |954| 
	.dwpsn	file "../main.c",line 955,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL10+0,0(SP)     ; [] |955| 
        MOVX.A    @r10,r15              ; [] |955| 
        MOV.W     8(r15),4(SP)          ; [] |955| 
;* --------------------------------------------------------------------------*
        MOVX.A    #UART1_Output+0,r12   ; [] |955| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("sprintf")
	.dwattr $C$DW$259, DW_AT_TI_call

        CALLA     #sprintf              ; [] |955| 
                                          ; [] |955| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("UART1_puts")
	.dwattr $C$DW$260, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |955| 
                                          ; [] |955| 
	.dwpsn	file "../main.c",line 956,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL11+0,0(SP)     ; [] |956| 
        MOVX.A    @r10,r15              ; [] |956| 
        MOV.W     6(r15),4(SP)          ; [] |956| 
        MOVX.A    #UART1_Output+0,r12   ; [] |956| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("sprintf")
	.dwattr $C$DW$261, DW_AT_TI_call

        CALLA     #sprintf              ; [] |956| 
                                          ; [] |956| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("UART1_puts")
	.dwattr $C$DW$262, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |956| 
                                          ; [] |956| 
	.dwpsn	file "../main.c",line 957,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL12+0,0(SP)     ; [] |957| 
        MOVX.A    @r10,r15              ; [] |957| 
        MOV.W     4(r15),4(SP)          ; [] |957| 
        MOVX.A    #UART1_Output+0,r12   ; [] |957| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("sprintf")
	.dwattr $C$DW$263, DW_AT_TI_call

        CALLA     #sprintf              ; [] |957| 
                                          ; [] |957| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("UART1_puts")
	.dwattr $C$DW$264, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |957| 
                                          ; [] |957| 
        JMP       $C$L133               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L131:    
	.dwpsn	file "../main.c",line 946,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL13+0,0(SP)     ; [] |946| 
        MOVX.A    #$C$FSL14+0,4(SP)     ; [] |946| 
        MOVX.A    #$C$FSL15+0,8(SP)     ; [] |946| 
        MOVX.A    #$C$FSL15+0,12(SP)    ; [] |946| 
        MOVX.A    #$C$FSL16+0,16(SP)    ; [] |946| 
        MOVX.A    #UART1_Output+0,r12   ; [] |946| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("sprintf")
	.dwattr $C$DW$265, DW_AT_TI_call

        CALLA     #sprintf              ; [] |946| 
                                          ; [] |946| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("UART1_puts")
	.dwattr $C$DW$266, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |946| 
                                          ; [] |946| 
	.dwpsn	file "../main.c",line 947,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL17+0,0(SP)     ; [] |947| 
        MOVX.A    #$C$FSL14+0,4(SP)     ; [] |947| 
        MOVX.A    #$C$FSL15+0,8(SP)     ; [] |947| 
        MOVX.A    #$C$FSL15+0,12(SP)    ; [] |947| 
        MOVX.A    #$C$FSL16+0,16(SP)    ; [] |947| 
        MOVX.A    #UART1_Output+0,r12   ; [] |947| 
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("sprintf")
	.dwattr $C$DW$267, DW_AT_TI_call

        CALLA     #sprintf              ; [] |947| 
                                          ; [] |947| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("UART1_puts")
	.dwattr $C$DW$268, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |947| 
                                          ; [] |947| 
	.dwpsn	file "../main.c",line 948,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL18+0,0(SP)     ; [] |948| 
        MOVX.A    #$C$FSL19+0,4(SP)     ; [] |948| 
        MOVX.A    #$C$FSL20+0,8(SP)     ; [] |948| 
        MOVX.A    #UART1_Output+0,r12   ; [] |948| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("sprintf")
	.dwattr $C$DW$269, DW_AT_TI_call

        CALLA     #sprintf              ; [] |948| 
                                          ; [] |948| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("UART1_puts")
	.dwattr $C$DW$270, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |948| 
                                          ; [] |948| 
	.dwpsn	file "../main.c",line 949,column 13,is_stmt,isa 0
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("STATE_GetStateName")
	.dwattr $C$DW$271, DW_AT_TI_call

        CALLA     #STATE_GetStateName   ; [] |949| 
                                          ; [] |949| 
        MOVX.A    #$C$FSL21+0,0(SP)     ; [] |949| 
        MOVX.A    r12,4(SP)             ; [] |949| 
        MOVX.A    #UART1_Output+0,r12   ; [] |949| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("sprintf")
	.dwattr $C$DW$272, DW_AT_TI_call

        CALLA     #sprintf              ; [] |949| 
                                          ; [] |949| 
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("UART1_puts")
	.dwattr $C$DW$273, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |949| 
                                          ; [] |949| 
        JMP       $C$L133               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L132:    
	.dwpsn	file "../main.c",line 968,column 9,is_stmt,isa 0
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("STATE_GetStateName")
	.dwattr $C$DW$274, DW_AT_TI_call

        CALLA     #STATE_GetStateName   ; [] |968| 
                                          ; [] |968| 
        MOVX.A    #$C$FSL22+0,0(SP)     ; [] |968| 
        MOVX.A    r12,4(SP)             ; [] |968| 
        MOVX.A    #UART1_Output+0,r12   ; [] |968| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("sprintf")
	.dwattr $C$DW$275, DW_AT_TI_call

        CALLA     #sprintf              ; [] |968| 
                                          ; [] |968| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("UART1_puts")
	.dwattr $C$DW$276, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |968| 
                                          ; [] |968| 
;* --------------------------------------------------------------------------*
$C$L133:    
        ADDA      #20,SP                ; [] 
	.dwcfi	cfa_offset, 8
        POPM.A    #1,r10                ; [] 
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$251, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$251, DW_AT_TI_end_line(0x3cb)
	.dwattr $C$DW$251, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$251

	.sect	".text:MAIN_ExecuteRESET"
	.align	4
	.clink
	.global	MAIN_ExecuteRESET

$C$DW$278	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$278, DW_AT_name("MAIN_ExecuteRESET")
	.dwattr $C$DW$278, DW_AT_low_pc(MAIN_ExecuteRESET)
	.dwattr $C$DW$278, DW_AT_high_pc(0x00)
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("MAIN_ExecuteRESET")
	.dwattr $C$DW$278, DW_AT_external
	.dwattr $C$DW$278, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$278, DW_AT_TI_begin_line(0x38f)
	.dwattr $C$DW$278, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$278, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$278, DW_AT_decl_line(0x38f)
	.dwattr $C$DW$278, DW_AT_decl_column(0x06)
	.dwattr $C$DW$278, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../main.c",line 912,column 1,is_stmt,address MAIN_ExecuteRESET,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteRESET

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteRESET                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR                                               *
;*   Regs Used         : SP,SR                                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
MAIN_ExecuteRESET:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "../main.c",line 914,column 5,is_stmt,isa 0
        BIC.W     #24,SR
        NOP      ; [] |914| 
	.dwpsn	file "../main.c",line 917,column 5,is_stmt,isa 0
        MOV.W     #0,&MAIN_ResetFlag+0  ; [] |917| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$278, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$278, DW_AT_TI_end_line(0x397)
	.dwattr $C$DW$278, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$278

	.sect	".text:MAIN_ExecuteGGAIN"
	.align	4
	.clink
	.global	MAIN_ExecuteGGAIN

$C$DW$280	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$280, DW_AT_name("MAIN_ExecuteGGAIN")
	.dwattr $C$DW$280, DW_AT_low_pc(MAIN_ExecuteGGAIN)
	.dwattr $C$DW$280, DW_AT_high_pc(0x00)
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("MAIN_ExecuteGGAIN")
	.dwattr $C$DW$280, DW_AT_external
	.dwattr $C$DW$280, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$280, DW_AT_TI_begin_line(0x371)
	.dwattr $C$DW$280, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$280, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$280, DW_AT_decl_line(0x371)
	.dwattr $C$DW$280, DW_AT_decl_column(0x06)
	.dwattr $C$DW$280, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 882,column 1,is_stmt,address MAIN_ExecuteGGAIN,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteGGAIN

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteGGAIN                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 8 Args + 0 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
MAIN_ExecuteGGAIN:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 12
	.dwpsn	file "../main.c",line 883,column 5,is_stmt,isa 0
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$281, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |883| 
                                          ; [] |883| 
        TST.W     r12                   ; [] |883| 
        JEQ       $C$L135               ; [] |883| 
                                          ; [] |883| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 885,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |885| 
        SUB.W     #1,r15                ; [] |885| 
        CMP.W     #4,r15                ; [] |885| 
        JHS       $C$L134               ; [] |885| 
                                          ; [] |885| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 891,column 9,is_stmt,isa 0
        MOVX.A    #$C$FSL23+0,0(SP)     ; [] |891| 
        MOV.W     &CMD_Command+2,4(SP)  ; [] |891| 
        MOV.W     &CMD_Command+2,r15    ; [] |891| 
        RLAM.W    #2,r15                ; [] |891| 
        MOVX.A    CH_Channels+0(r15),r15 ; [] |891| 
        MOV.W     6(r15),6(SP)          ; [] |891| 
        MOVX.A    #UART1_Output+0,r12   ; [] |891| 
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("sprintf")
	.dwattr $C$DW$282, DW_AT_TI_call

        CALLA     #sprintf              ; [] |891| 
                                          ; [] |891| 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("UART1_puts")
	.dwattr $C$DW$283, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |891| 
                                          ; [] |891| 
        JMP       $C$L136               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L134:    
	.dwpsn	file "../main.c",line 887,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |887| 
	.dwpsn	file "../main.c",line 888,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |888| 
	.dwpsn	file "../main.c",line 889,column 13,is_stmt,isa 0
        JMP       $C$L136               ; [] |889| 
                                          ; [] |889| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L135:    
	.dwpsn	file "../main.c",line 895,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |895| 
	.dwpsn	file "../main.c",line 896,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |896| 
;* --------------------------------------------------------------------------*
$C$L136:    
        ADDA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$280, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$280, DW_AT_TI_end_line(0x382)
	.dwattr $C$DW$280, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$280

	.sect	".text:MAIN_ExecuteSGAIN"
	.align	4
	.clink
	.global	MAIN_ExecuteSGAIN

$C$DW$285	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$285, DW_AT_name("MAIN_ExecuteSGAIN")
	.dwattr $C$DW$285, DW_AT_low_pc(MAIN_ExecuteSGAIN)
	.dwattr $C$DW$285, DW_AT_high_pc(0x00)
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("MAIN_ExecuteSGAIN")
	.dwattr $C$DW$285, DW_AT_external
	.dwattr $C$DW$285, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$285, DW_AT_TI_begin_line(0x34c)
	.dwattr $C$DW$285, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$285, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$285, DW_AT_decl_line(0x34c)
	.dwattr $C$DW$285, DW_AT_decl_column(0x06)
	.dwattr $C$DW$285, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 845,column 1,is_stmt,address MAIN_ExecuteSGAIN,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteSGAIN

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteSGAIN                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 8 Args + 0 Auto + 0 Save = 8 byte                   *
;*****************************************************************************
MAIN_ExecuteSGAIN:
;* --------------------------------------------------------------------------*
;* r14   assigned to $O$v1
;* r12   assigned to ret
$C$DW$286	.dwtag  DW_TAG_variable
	.dwattr $C$DW$286, DW_AT_name("ret")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 12
	.dwpsn	file "../main.c",line 847,column 5,is_stmt,isa 0
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$287, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |847| 
                                          ; [] |847| 
        TST.W     r12                   ; [] |847| 
        JEQ       $C$L138               ; [] |847| 
                                          ; [] |847| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 849,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r12    ; [] |849| 
        MOV.W     &CMD_Command+4,r13    ; [] |849| 
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("ADC_CheckChannelGain")
	.dwattr $C$DW$288, DW_AT_TI_call

        CALLA     #ADC_CheckChannelGain ; [] |849| 
                                          ; [] |849| 
        CMP.W     #65535,r12            ; [] |849| 
        JNE       $C$L137               ; [] |849| 
                                          ; [] |849| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 856,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |856| 
	.dwpsn	file "../main.c",line 857,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |857| 
	.dwpsn	file "../main.c",line 858,column 13,is_stmt,isa 0
        JMP       $C$L139               ; [] |858| 
                                          ; [] |858| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L137:    
	.dwpsn	file "../main.c",line 851,column 13,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r14    ; [] |851| 
        MOVA      r14,r15               ; [] |851| 
        RLAM.W    #2,r15                ; [] |851| 
        MOVX.A    CH_Channels+0(r15),r15 ; [] |851| 
        MOV.W     r12,6(r15)            ; [] |851| 
	.dwpsn	file "../main.c",line 852,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL24+0,0(SP)     ; [] |852| 
        MOV.W     r14,4(SP)             ; [] |852| 
        MOV.W     r12,6(SP)             ; [] |852| 
        MOVX.A    #UART1_Output+0,r12   ; [] |852| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("sprintf")
	.dwattr $C$DW$289, DW_AT_TI_call

        CALLA     #sprintf              ; [] |852| 
                                          ; [] |852| 
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_name("UART1_puts")
	.dwattr $C$DW$290, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |852| 
                                          ; [] |852| 
        JMP       $C$L139               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L138:    
	.dwpsn	file "../main.c",line 863,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |863| 
	.dwpsn	file "../main.c",line 864,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |864| 
;* --------------------------------------------------------------------------*
$C$L139:    
        ADDA      #8,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$285, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$285, DW_AT_TI_end_line(0x363)
	.dwattr $C$DW$285, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$285

	.sect	".text:MAIN_ExecuteSPOOF"
	.align	4
	.clink
	.global	MAIN_ExecuteSPOOF

$C$DW$292	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$292, DW_AT_name("MAIN_ExecuteSPOOF")
	.dwattr $C$DW$292, DW_AT_low_pc(MAIN_ExecuteSPOOF)
	.dwattr $C$DW$292, DW_AT_high_pc(0x00)
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("MAIN_ExecuteSPOOF")
	.dwattr $C$DW$292, DW_AT_external
	.dwattr $C$DW$292, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$292, DW_AT_TI_begin_line(0x236)
	.dwattr $C$DW$292, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$292, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$292, DW_AT_decl_line(0x236)
	.dwattr $C$DW$292, DW_AT_decl_column(0x06)
	.dwattr $C$DW$292, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../main.c",line 567,column 1,is_stmt,address MAIN_ExecuteSPOOF,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteSPOOF

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteSPOOF                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
MAIN_ExecuteSPOOF:
;* --------------------------------------------------------------------------*
;* r12   assigned to $O$U42
;* r14   assigned to $O$y20
;* r15   assigned to g
$C$DW$293	.dwtag  DW_TAG_variable
	.dwattr $C$DW$293, DW_AT_name("g")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("g")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg15]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "../main.c",line 568,column 5,is_stmt,isa 0
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$294, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |568| 
                                          ; [] |568| 
        TST.W     r12                   ; [] |568| 
        JEQ       $C$L174               ; [] |568| 
                                          ; [] |568| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 571,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |571| 
        SUB.W     #1,r15                ; [] |571| 
        CMP.W     #4,r15                ; [] |571| 
        JHS       $C$L173               ; [] |571| 
                                          ; [] |571| 
;* --------------------------------------------------------------------------*
        TST.W     &CMD_Command+4        ; [] |571| 
        JEQ       $C$L173               ; [] |571| 
                                          ; [] |571| 
;* --------------------------------------------------------------------------*
        CMP.W     #3601,&CMD_Command+4  ; [] |571| 
        JLO       $C$L140               ; [] |571| 
                                          ; [] |571| 
;* --------------------------------------------------------------------------*
        CMP.W     #3678,&CMD_Command+4  ; [] |571| 
        JNE       $C$L173               ; [] |571| 
                                          ; [] |571| 
;* --------------------------------------------------------------------------*
$C$L140:    
	.dwpsn	file "../main.c",line 585,column 9,is_stmt,isa 0
        MOV.W     #4,r12                ; [] |585| 
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("STATE_SetState")
	.dwattr $C$DW$295, DW_AT_TI_call

        CALLA     #STATE_SetState       ; [] |585| 
                                          ; [] |585| 
	.dwpsn	file "../main.c",line 588,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |588| 
        RLAM.W    #2,r15                ; [] |588| 
        MOVX.A    CH_Channels+0(r15),r14 ; [] |588| 
        MOVX.A    r14,&CH_ActiveChannel+0 ; [] |588| 
	.dwpsn	file "../main.c",line 591,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+4,r15    ; [] |591| 
        RLAM.W    #4,r15                ; [] |591| 
        MOV.W     r15,&CH_RunCycles+0   ; [] |591| 
	.dwpsn	file "../main.c",line 594,column 9,is_stmt,isa 0
        MOV.W     #0,&CH_RunExclusions+0 ; [] |594| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 86,column 5,is_stmt,isa 0
        AND.B     #191,&PCOUT_H+0       ; [] |86| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 87,column 5,is_stmt,isa 0
        AND.B     #127,&PEOUT_L+0       ; [] |87| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 88,column 5,is_stmt,isa 0
        AND.B     #127,&PBOUT_L+0       ; [] |88| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 89,column 5,is_stmt,isa 0
        BIC.B     #8,&PCOUT_L+0         ; [] |89| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 138,column 1,is_stmt,isa 0
        MOV.W     4(r14),r15            ; [] |138| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 139,column 5,is_stmt,isa 0
        MOV.W     @r14,r12              ; [] |139| 
        CMP.W     #1,r12                ; [] |139| 
        JEQ       $C$L164               ; [] |139| 
                                          ; [] |139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 174,column 10,is_stmt,isa 0
        CMP.W     #2,r12                ; [] |174| 
        JEQ       $C$L156               ; [] |174| 
                                          ; [] |174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 209,column 10,is_stmt,isa 0
        CMP.W     #3,r12                ; [] |209| 
        JEQ       $C$L148               ; [] |209| 
                                          ; [] |209| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 244,column 10,is_stmt,isa 0
        CMP.W     #4,r12                ; [] |244| 
        JNE       $C$L172               ; [] |244| 
                                          ; [] |244| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 247,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |247| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 248,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |248| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 249,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |249| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 250,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |250| 
        JEQ       $C$L147               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L146               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L145               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |250| 
        JEQ       $C$L144               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |250| 
        JEQ       $C$L143               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |250| 
        JEQ       $C$L142               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |250| 
        JEQ       $C$L141               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 275,column 13,is_stmt,isa 0
        OR.B      #7,&PBOUT_L+0         ; [] |275| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 276,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |276| 
                                          ; [] |276| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L141:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 271,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |271| 
        BIC.B     #1,r15                ; [] |271| 
        OR.B      #6,r15                ; [] |271| 
        MOV.B     r15,&PBOUT_L+0        ; [] |271| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 272,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |272| 
                                          ; [] |272| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L142:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 268,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |268| 
        AND.B     &PBOUT_L+0,r15        ; [] |268| 
        OR.B      #5,r15                ; [] |268| 
        MOV.B     r15,&PBOUT_L+0        ; [] |268| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 269,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |269| 
                                          ; [] |269| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L143:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 265,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |265| 
        AND.B     &PBOUT_L+0,r15        ; [] |265| 
        OR.B      #4,r15                ; [] |265| 
        MOV.B     r15,&PBOUT_L+0        ; [] |265| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 266,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |266| 
                                          ; [] |266| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L144:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 262,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |262| 
        AND.B     &PBOUT_L+0,r15        ; [] |262| 
        OR.B      #3,r15                ; [] |262| 
        MOV.B     r15,&PBOUT_L+0        ; [] |262| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 263,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |263| 
                                          ; [] |263| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L145:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 259,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |259| 
        AND.B     &PBOUT_L+0,r15        ; [] |259| 
        OR.B      #2,r15                ; [] |259| 
        MOV.B     r15,&PBOUT_L+0        ; [] |259| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 260,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |260| 
                                          ; [] |260| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L146:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 256,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |256| 
        AND.B     &PBOUT_L+0,r15        ; [] |256| 
        OR.B      #1,r15                ; [] |256| 
        MOV.B     r15,&PBOUT_L+0        ; [] |256| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 257,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |257| 
                                          ; [] |257| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L147:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 253,column 13,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |253| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 254,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |254| 
                                          ; [] |254| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L148:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 212,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |212| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 213,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |213| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 214,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |214| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 215,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |215| 
        JEQ       $C$L155               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L154               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L153               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |215| 
        JEQ       $C$L152               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |215| 
        JEQ       $C$L151               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |215| 
        JEQ       $C$L150               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |215| 
        JEQ       $C$L149               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 240,column 13,is_stmt,isa 0
        OR.B      #56,&PBOUT_L+0        ; [] |240| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 241,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |241| 
                                          ; [] |241| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L149:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 236,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |236| 
        BIC.B     #8,r15                ; [] |236| 
        OR.B      #48,r15               ; [] |236| 
        MOV.B     r15,&PBOUT_L+0        ; [] |236| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 237,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |237| 
                                          ; [] |237| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L150:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 233,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |233| 
        AND.B     &PBOUT_L+0,r15        ; [] |233| 
        OR.B      #40,r15               ; [] |233| 
        MOV.B     r15,&PBOUT_L+0        ; [] |233| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 234,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |234| 
                                          ; [] |234| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L151:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 230,column 13,is_stmt,isa 0
        MOV.W     #231,r15              ; [] |230| 
        AND.B     &PBOUT_L+0,r15        ; [] |230| 
        OR.B      #32,r15               ; [] |230| 
        MOV.B     r15,&PBOUT_L+0        ; [] |230| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 231,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |231| 
                                          ; [] |231| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L152:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 227,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |227| 
        AND.B     &PBOUT_L+0,r15        ; [] |227| 
        OR.B      #24,r15               ; [] |227| 
        MOV.B     r15,&PBOUT_L+0        ; [] |227| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 228,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |228| 
                                          ; [] |228| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L153:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 224,column 13,is_stmt,isa 0
        MOV.W     #199,r15              ; [] |224| 
        AND.B     &PBOUT_L+0,r15        ; [] |224| 
        OR.B      #16,r15               ; [] |224| 
        MOV.B     r15,&PBOUT_L+0        ; [] |224| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 225,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |225| 
                                          ; [] |225| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L154:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 221,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |221| 
        AND.B     &PBOUT_L+0,r15        ; [] |221| 
        OR.B      #8,r15                ; [] |221| 
        MOV.B     r15,&PBOUT_L+0        ; [] |221| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 222,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |222| 
                                          ; [] |222| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L155:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 218,column 13,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |218| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 219,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |219| 
                                          ; [] |219| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L156:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 177,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |177| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 178,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |178| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 179,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |179| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 180,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |180| 
        JEQ       $C$L163               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L162               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L161               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |180| 
        JEQ       $C$L160               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |180| 
        JEQ       $C$L159               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |180| 
        JEQ       $C$L158               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |180| 
        JEQ       $C$L157               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 205,column 13,is_stmt,isa 0
        OR.B      #14,&PAOUT_L+0        ; [] |205| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 206,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |206| 
                                          ; [] |206| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L157:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 201,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |201| 
        BIC.B     #2,r15                ; [] |201| 
        OR.B      #12,r15               ; [] |201| 
        MOV.B     r15,&PAOUT_L+0        ; [] |201| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 202,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |202| 
                                          ; [] |202| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L158:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 198,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |198| 
        BIC.B     #4,r15                ; [] |198| 
        OR.B      #10,r15               ; [] |198| 
        MOV.B     r15,&PAOUT_L+0        ; [] |198| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 199,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |199| 
                                          ; [] |199| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L159:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 195,column 13,is_stmt,isa 0
        MOV.W     #249,r15              ; [] |195| 
        AND.B     &PAOUT_L+0,r15        ; [] |195| 
        OR.B      #8,r15                ; [] |195| 
        MOV.B     r15,&PAOUT_L+0        ; [] |195| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 196,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |196| 
                                          ; [] |196| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L160:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 192,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |192| 
        BIC.B     #8,r15                ; [] |192| 
        OR.B      #6,r15                ; [] |192| 
        MOV.B     r15,&PAOUT_L+0        ; [] |192| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 193,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |193| 
                                          ; [] |193| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L161:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 189,column 13,is_stmt,isa 0
        MOV.W     #241,r15              ; [] |189| 
        AND.B     &PAOUT_L+0,r15        ; [] |189| 
        OR.B      #4,r15                ; [] |189| 
        MOV.B     r15,&PAOUT_L+0        ; [] |189| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 190,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |190| 
                                          ; [] |190| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L162:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 186,column 13,is_stmt,isa 0
        MOV.W     #243,r15              ; [] |186| 
        AND.B     &PAOUT_L+0,r15        ; [] |186| 
        OR.B      #2,r15                ; [] |186| 
        MOV.B     r15,&PAOUT_L+0        ; [] |186| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 187,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |187| 
                                          ; [] |187| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L163:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 183,column 13,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |183| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 184,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |184| 
                                          ; [] |184| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L164:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 142,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |142| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 143,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |143| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 144,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |144| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 145,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |145| 
        JEQ       $C$L171               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L170               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L169               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |145| 
        JEQ       $C$L168               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |145| 
        JEQ       $C$L167               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |145| 
        JEQ       $C$L166               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |145| 
        JEQ       $C$L165               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 170,column 13,is_stmt,isa 0
        OR.B      #112,&PAOUT_L+0       ; [] |170| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 171,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |171| 
                                          ; [] |171| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L165:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 166,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |166| 
        AND.B     &PAOUT_L+0,r15        ; [] |166| 
        OR.B      #96,r15               ; [] |166| 
        MOV.B     r15,&PAOUT_L+0        ; [] |166| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 167,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |167| 
                                          ; [] |167| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L166:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 163,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |163| 
        AND.B     &PAOUT_L+0,r15        ; [] |163| 
        OR.B      #80,r15               ; [] |163| 
        MOV.B     r15,&PAOUT_L+0        ; [] |163| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 164,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |164| 
                                          ; [] |164| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L167:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 160,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |160| 
        AND.B     &PAOUT_L+0,r15        ; [] |160| 
        OR.B      #64,r15               ; [] |160| 
        MOV.B     r15,&PAOUT_L+0        ; [] |160| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 161,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |161| 
                                          ; [] |161| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L168:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 157,column 13,is_stmt,isa 0
        MOV.W     #191,r15              ; [] |157| 
        AND.B     &PAOUT_L+0,r15        ; [] |157| 
        OR.B      #48,r15               ; [] |157| 
        MOV.B     r15,&PAOUT_L+0        ; [] |157| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 158,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |158| 
                                          ; [] |158| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L169:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 154,column 13,is_stmt,isa 0
        MOV.W     #143,r15              ; [] |154| 
        AND.B     &PAOUT_L+0,r15        ; [] |154| 
        OR.B      #32,r15               ; [] |154| 
        MOV.B     r15,&PAOUT_L+0        ; [] |154| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 155,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |155| 
                                          ; [] |155| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L170:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 151,column 13,is_stmt,isa 0
        MOV.W     #159,r15              ; [] |151| 
        AND.B     &PAOUT_L+0,r15        ; [] |151| 
        OR.B      #16,r15               ; [] |151| 
        MOV.B     r15,&PAOUT_L+0        ; [] |151| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 152,column 13,is_stmt,isa 0
        JMP       $C$L172               ; [] |152| 
                                          ; [] |152| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L171:    
	.dwcfi	remember_state
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 148,column 13,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |148| 
;* --------------------------------------------------------------------------*
$C$L172:    
	.dwpsn	file "../main.c",line 603,column 9,is_stmt,isa 0
        MOV.W     6(r14),r13            ; [] |603| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("ADC_SetADCChannel")
	.dwattr $C$DW$296, DW_AT_TI_call

        CALLA     #ADC_SetADCChannel    ; [] |603| 
                                          ; [] |603| 
	.dwpsn	file "../main.c",line 606,column 9,is_stmt,isa 0
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("DMA_SetDMA0")
	.dwattr $C$DW$297, DW_AT_TI_call

        CALLA     #DMA_SetDMA0          ; [] |606| 
                                          ; [] |606| 
	.dwpsn	file "../main.c",line 609,column 9,is_stmt,isa 0
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("TIMER_StartTimer0")
	.dwattr $C$DW$298, DW_AT_TI_call
	.dwattr $C$DW$298, DW_AT_TI_return

        MOVX.A    #TIMER_StartTimer0,PC ; [] |609| 
                                          ; [] |609| 
;* --------------------------------------------------------------------------*
$C$L173:    
	.dwpsn	file "../main.c",line 573,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |573| 
	.dwpsn	file "../main.c",line 574,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |574| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	4
$C$L174:    
	.dwpsn	file "../main.c",line 613,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |613| 
	.dwpsn	file "../main.c",line 614,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |614| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$292, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$292, DW_AT_TI_end_line(0x269)
	.dwattr $C$DW$292, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$292

	.sect	".text:MAIN_ExecuteFLOOD"
	.align	4
	.clink
	.global	MAIN_ExecuteFLOOD

$C$DW$301	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$301, DW_AT_name("MAIN_ExecuteFLOOD")
	.dwattr $C$DW$301, DW_AT_low_pc(MAIN_ExecuteFLOOD)
	.dwattr $C$DW$301, DW_AT_high_pc(0x00)
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("MAIN_ExecuteFLOOD")
	.dwattr $C$DW$301, DW_AT_external
	.dwattr $C$DW$301, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$301, DW_AT_TI_begin_line(0x301)
	.dwattr $C$DW$301, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$301, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$301, DW_AT_decl_line(0x301)
	.dwattr $C$DW$301, DW_AT_decl_column(0x06)
	.dwattr $C$DW$301, DW_AT_TI_max_frame_size(0x42)
	.dwpsn	file "../main.c",line 770,column 1,is_stmt,address MAIN_ExecuteFLOOD,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteFLOOD

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteFLOOD                                          *
;*                                                                           *
;*   Regs Modified     : SP,SR,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15     *
;*   Regs Used         : SP,SR,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15     *
;*   Local Frame Size  : 0 Args + 34 Auto + 28 Save = 62 byte                *
;*****************************************************************************
MAIN_ExecuteFLOOD:
;* --------------------------------------------------------------------------*
;* r6    assigned to $O$U27
;* r5    assigned to $O$U29
;* r7    assigned to $O$U34
;* r8    assigned to $O$U38
;* r9    assigned to $O$U43
;* r10   assigned to $O$U48
;* r11   assigned to $O$U53
;* r14   assigned to $O$U58
;* r4    assigned to $O$U61
;* r15   assigned to $O$U63
;* r12   assigned to $O$U74
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #7,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	save_reg_to_mem, 9, -12
	.dwcfi	save_reg_to_mem, 8, -16
	.dwcfi	save_reg_to_mem, 7, -20
	.dwcfi	save_reg_to_mem, 6, -24
	.dwcfi	save_reg_to_mem, 5, -28
	.dwcfi	save_reg_to_mem, 4, -32
	.dwcfi	cfa_offset, 32
        SUBA      #34,SP                ; [] 
	.dwcfi	cfa_offset, 66
	.dwpsn	file "../main.c",line 773,column 5,is_stmt,isa 0
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$302, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |773| 
                                          ; [] |773| 
        TST.W     r12                   ; [] |773| 
        JEQ       $C$L185               ; [] |773| 
                                          ; [] |773| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 776,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |776| 
        SUB.W     #1,r15                ; [] |776| 
        CMP.W     #4,r15                ; [] |776| 
        JHS       $C$L184               ; [] |776| 
                                          ; [] |776| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 784,column 9,is_stmt,isa 0
        MOV.W     #1,r12                ; [] |784| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("STATE_SetState")
	.dwattr $C$DW$303, DW_AT_TI_call

        CALLA     #STATE_SetState       ; [] |784| 
                                          ; [] |784| 
	.dwpsn	file "../main.c",line 787,column 9,is_stmt,isa 0
        MOV.W     &CMD_Command+2,r15    ; [] |787| 
        RLAM.W    #2,r15                ; [] |787| 
        MOVX.A    CH_Channels+0(r15),r15 ; [] |787| 
        MOVX.A    r15,30(SP)            ; [] |787| 
        MOVX.A    r15,&CH_ActiveChannel+0 ; [] |787| 
        MOVX.A    &MAIN_DACBuffer+0,r6  ; [] 
        MOV.W     8(r15),r5             ; [] 
        MOVX.A    #SINE_sinDAC+2,r15    ; [] 
        MOVX.A    r15,6(SP)             ; [] 
        MOVA      r6,r7                 ; [] 
        ADDA      #2,r7                 ; [] 
        MOVX.A    #SINE_sinDAC+4,r15    ; [] 
        MOVX.A    r15,10(SP)            ; [] 
        MOVA      r6,r8                 ; [] 
        ADDA      #4,r8                 ; [] 
        MOVX.A    #SINE_sinDAC+6,r15    ; [] 
        MOVX.A    r15,14(SP)            ; [] 
        MOVA      r6,r9                 ; [] 
        ADDA      #6,r9                 ; [] 
        MOVX.A    #SINE_sinDAC+8,r15    ; [] 
        MOVX.A    r15,18(SP)            ; [] 
        MOVA      r6,r10                ; [] 
        ADDA      #8,r10                ; [] 
        MOVX.A    #SINE_sinDAC+10,r15   ; [] 
        MOVX.A    r15,22(SP)            ; [] 
        MOVA      r6,r11                ; [] 
        ADDA      #10,r11               ; [] 
        MOVX.A    #SINE_sinDAC+12,r15   ; [] 
        MOVX.A    r15,26(SP)            ; [] 
        MOVA      r6,r14                ; [] 
        ADDA      #12,r14               ; [] 
        MOVX.A    #SINE_sinDAC+14,r4    ; [] 
        MOVA      r6,r15                ; [] 
        ADDA      #14,r15               ; [] 
	.dwpsn	file "../main.c",line 790,column 20,is_stmt,isa 0
        MOV.W     #4,0(SP)              ; [] |790| 
        MOVX.A    #SINE_sinDAC+0,r13    ; [] 
        MOVX.A    r13,2(SP)             ; [] 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L175
;*
;*   Loop source line                : 790
;*   Loop closing brace source line  : 800
;*   Loop Unroll Multiple            : 8x
;*   Known Minimum Trip Count        : 4
;*   Known Maximum Trip Count        : 4
;*   Known Max Trip Count Factor     : 4
;* --------------------------------------------------------------------------*
	.align	4
$C$L175:    
        MOVX.A    2(SP),r13             ; [] 
	.dwpsn	file "../main.c",line 797,column 13,is_stmt,isa 0
        MOV.W     @r13,0(r6)            ; [] |797| 
	.dwpsn	file "../main.c",line 798,column 13,is_stmt,isa 0
        MOV.W     @r6,r12               ; [] |798| 
        MOVA      r5,r13                ; [] |798| 
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$304, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |798| 
                                          ; [] |798| 
        MOV.W     r12,0(r6)             ; [] |798| 
        MOVX.A    6(SP),r13             ; [] |798| 
	.dwpsn	file "../main.c",line 797,column 13,is_stmt,isa 0
        MOV.W     @r13,0(r7)            ; [] |797| 
	.dwpsn	file "../main.c",line 798,column 13,is_stmt,isa 0
        MOV.W     @r7,r12               ; [] |798| 
        MOVA      r5,r13                ; [] |798| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$305, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |798| 
                                          ; [] |798| 
        MOV.W     r12,0(r7)             ; [] |798| 
        MOVX.A    10(SP),r13            ; [] |798| 
	.dwpsn	file "../main.c",line 797,column 13,is_stmt,isa 0
        MOV.W     @r13,0(r8)            ; [] |797| 
	.dwpsn	file "../main.c",line 798,column 13,is_stmt,isa 0
        MOV.W     @r8,r12               ; [] |798| 
        MOVA      r5,r13                ; [] |798| 
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$306, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |798| 
                                          ; [] |798| 
        MOV.W     r12,0(r8)             ; [] |798| 
        MOVX.A    14(SP),r13            ; [] |798| 
	.dwpsn	file "../main.c",line 797,column 13,is_stmt,isa 0
        MOV.W     @r13,0(r9)            ; [] |797| 
	.dwpsn	file "../main.c",line 798,column 13,is_stmt,isa 0
        MOV.W     @r9,r12               ; [] |798| 
        MOVA      r5,r13                ; [] |798| 
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$307, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |798| 
                                          ; [] |798| 
        MOV.W     r12,0(r9)             ; [] |798| 
        MOVX.A    18(SP),r13            ; [] |798| 
	.dwpsn	file "../main.c",line 797,column 13,is_stmt,isa 0
        MOV.W     @r13,0(r10)           ; [] |797| 
	.dwpsn	file "../main.c",line 798,column 13,is_stmt,isa 0
        MOV.W     @r10,r12              ; [] |798| 
        MOVA      r5,r13                ; [] |798| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$308, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |798| 
                                          ; [] |798| 
        MOV.W     r12,0(r10)            ; [] |798| 
        MOVX.A    22(SP),r13            ; [] |798| 
	.dwpsn	file "../main.c",line 797,column 13,is_stmt,isa 0
        MOV.W     @r13,0(r11)           ; [] |797| 
	.dwpsn	file "../main.c",line 798,column 13,is_stmt,isa 0
        MOV.W     @r11,r12              ; [] |798| 
        MOVA      r5,r13                ; [] |798| 
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$309, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |798| 
                                          ; [] |798| 
        MOV.W     r12,0(r11)            ; [] |798| 
        MOVX.A    26(SP),r13            ; [] |798| 
	.dwpsn	file "../main.c",line 797,column 13,is_stmt,isa 0
        MOV.W     @r13,0(r14)           ; [] |797| 
	.dwpsn	file "../main.c",line 798,column 13,is_stmt,isa 0
        MOV.W     @r14,r12              ; [] |798| 
        MOVA      r5,r13                ; [] |798| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$310, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |798| 
                                          ; [] |798| 
        MOV.W     r12,0(r14)            ; [] |798| 
	.dwpsn	file "../main.c",line 797,column 13,is_stmt,isa 0
        MOV.W     @r4,0(r15)            ; [] |797| 
	.dwpsn	file "../main.c",line 798,column 13,is_stmt,isa 0
        MOV.W     @r15,r12              ; [] |798| 
        MOVA      r5,r13                ; [] |798| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("__mspabi_srli")
	.dwattr $C$DW$311, DW_AT_TI_call

        CALLA     #__mspabi_srli        ; [] |798| 
                                          ; [] |798| 
        MOV.W     r12,0(r15)            ; [] |798| 
        MOVX.A    2(SP),r13             ; [] |798| 
	.dwpsn	file "../main.c",line 790,column 20,is_stmt,isa 0
        ADDA      #16,r13               ; [] |790| 
        MOVX.A    r13,2(SP)             ; [] |790| 
        ADDA      #16,r6                ; [] |790| 
        MOVX.A    6(SP),r13             ; [] |790| 
        ADDA      #16,r13               ; [] |790| 
        MOVX.A    r13,6(SP)             ; [] |790| 
        ADDA      #16,r7                ; [] |790| 
        MOVX.A    10(SP),r13            ; [] |790| 
        ADDA      #16,r13               ; [] |790| 
        MOVX.A    r13,10(SP)            ; [] |790| 
        ADDA      #16,r8                ; [] |790| 
        MOVX.A    14(SP),r13            ; [] |790| 
        ADDA      #16,r13               ; [] |790| 
        MOVX.A    r13,14(SP)            ; [] |790| 
        ADDA      #16,r9                ; [] |790| 
        MOVX.A    18(SP),r13            ; [] |790| 
        ADDA      #16,r13               ; [] |790| 
        MOVX.A    r13,18(SP)            ; [] |790| 
        ADDA      #16,r10               ; [] |790| 
        MOVX.A    22(SP),r13            ; [] |790| 
        ADDA      #16,r13               ; [] |790| 
        MOVX.A    r13,22(SP)            ; [] |790| 
        ADDA      #16,r11               ; [] |790| 
        MOVX.A    26(SP),r13            ; [] |790| 
        ADDA      #16,r13               ; [] |790| 
        MOVX.A    r13,26(SP)            ; [] |790| 
        ADDA      #16,r14               ; [] |790| 
        ADDA      #16,r4                ; [] |790| 
        ADDA      #16,r15               ; [] |790| 
        SUB.W     #1,0(SP)              ; [] |790| 
        JNE       $C$L175               ; [] |790| 
                                          ; [] |790| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 86,column 5,is_stmt,isa 0
        AND.B     #191,&PCOUT_H+0       ; [] |86| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 87,column 5,is_stmt,isa 0
        AND.B     #127,&PEOUT_L+0       ; [] |87| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 88,column 5,is_stmt,isa 0
        AND.B     #127,&PBOUT_L+0       ; [] |88| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 89,column 5,is_stmt,isa 0
        BIC.B     #8,&PCOUT_L+0         ; [] |89| 
        MOVX.A    30(SP),r15            ; [] |89| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 114,column 5,is_stmt,isa 0
        MOV.W     @r15,r12              ; [] |114| 
        MOVA      r12,r15               ; [] |114| 
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L178               ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L177               ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L176               ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JNE       $C$L179               ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 126,column 9,is_stmt,isa 0
        OR.B      #8,&PCOUT_L+0         ; [] |126| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 127,column 9,is_stmt,isa 0
        JMP       $C$L179               ; [] |127| 
                                          ; [] |127| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L176:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 123,column 9,is_stmt,isa 0
        OR.B      #128,&PBOUT_L+0       ; [] |123| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 124,column 9,is_stmt,isa 0
        JMP       $C$L179               ; [] |124| 
                                          ; [] |124| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L177:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 120,column 9,is_stmt,isa 0
        OR.B      #128,&PEOUT_L+0       ; [] |120| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 121,column 9,is_stmt,isa 0
        JMP       $C$L179               ; [] |121| 
                                          ; [] |121| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L178:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 117,column 9,is_stmt,isa 0
        OR.B      #64,&PCOUT_H+0        ; [] |117| 
;* --------------------------------------------------------------------------*
$C$L179:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 139,column 5,is_stmt,isa 0
        CMP.W     #1,r12                ; [] |139| 
        JEQ       $C$L182               ; [] |139| 
                                          ; [] |139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 174,column 10,is_stmt,isa 0
        CMP.W     #2,r12                ; [] |174| 
        JEQ       $C$L181               ; [] |174| 
                                          ; [] |174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 209,column 10,is_stmt,isa 0
        CMP.W     #3,r12                ; [] |209| 
        JEQ       $C$L180               ; [] |209| 
                                          ; [] |209| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 244,column 10,is_stmt,isa 0
        CMP.W     #4,r12                ; [] |244| 
        JNE       $C$L183               ; [] |244| 
                                          ; [] |244| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 247,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |247| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 248,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |248| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 249,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |249| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 253,column 13,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |253| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 254,column 13,is_stmt,isa 0
        JMP       $C$L183               ; [] |254| 
                                          ; [] |254| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L180:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 212,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |212| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 213,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |213| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 214,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |214| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 218,column 13,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |218| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 219,column 13,is_stmt,isa 0
        JMP       $C$L183               ; [] |219| 
                                          ; [] |219| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L181:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 177,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |177| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 178,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |178| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 179,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |179| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 183,column 13,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |183| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 184,column 13,is_stmt,isa 0
        JMP       $C$L183               ; [] |184| 
                                          ; [] |184| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L182:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 142,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |142| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 143,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |143| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 144,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |144| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 148,column 13,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |148| 
;* --------------------------------------------------------------------------*
$C$L183:    
        MOVX.A    30(SP),r15            ; [] 
	.dwpsn	file "../main.c",line 810,column 9,is_stmt,isa 0
        MOV.W     6(r15),r13            ; [] |810| 
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("ADC_SetADCChannel")
	.dwattr $C$DW$312, DW_AT_TI_call

        CALLA     #ADC_SetADCChannel    ; [] |810| 
                                          ; [] |810| 
	.dwpsn	file "../main.c",line 815,column 9,is_stmt,isa 0
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("DMA_SetDMA1")
	.dwattr $C$DW$313, DW_AT_TI_call

        CALLA     #DMA_SetDMA1          ; [] |815| 
                                          ; [] |815| 
	.dwpsn	file "../main.c",line 818,column 9,is_stmt,isa 0
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("TIMER_StartTimer1")
	.dwattr $C$DW$314, DW_AT_TI_call

        CALLA     #TIMER_StartTimer1    ; [] |818| 
                                          ; [] |818| 
        JMP       $C$L186               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L184:    
	.dwpsn	file "../main.c",line 778,column 13,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |778| 
	.dwpsn	file "../main.c",line 779,column 13,is_stmt,isa 0
        MOV.W     #3,&CMD_Command+2     ; [] |779| 
	.dwpsn	file "../main.c",line 780,column 13,is_stmt,isa 0
        JMP       $C$L186               ; [] |780| 
                                          ; [] |780| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L185:    
	.dwpsn	file "../main.c",line 822,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |822| 
	.dwpsn	file "../main.c",line 823,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |823| 
;* --------------------------------------------------------------------------*
$C$L186:    
        ADDA      #34,SP                ; [] 
	.dwcfi	cfa_offset, 32
        POPM.A    #7,r10                ; [] 
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$301, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$301, DW_AT_TI_end_line(0x33a)
	.dwattr $C$DW$301, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$301

	.sect	".text:MAIN_ExecuteSTOP"
	.align	4
	.clink
	.global	MAIN_ExecuteSTOP

$C$DW$316	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$316, DW_AT_name("MAIN_ExecuteSTOP")
	.dwattr $C$DW$316, DW_AT_low_pc(MAIN_ExecuteSTOP)
	.dwattr $C$DW$316, DW_AT_high_pc(0x00)
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("MAIN_ExecuteSTOP")
	.dwattr $C$DW$316, DW_AT_external
	.dwattr $C$DW$316, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$316, DW_AT_TI_begin_line(0x296)
	.dwattr $C$DW$316, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$316, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$316, DW_AT_decl_line(0x296)
	.dwattr $C$DW$316, DW_AT_decl_column(0x06)
	.dwattr $C$DW$316, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 663,column 1,is_stmt,address MAIN_ExecuteSTOP,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteSTOP
$C$DW$317	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$317, DW_AT_name("silent")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("silent")
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$317, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteSTOP                                           *
;*                                                                           *
;*   Regs Modified     : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Regs Used         : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Local Frame Size  : 4 Args + 0 Auto + 4 Save = 8 byte                   *
;*****************************************************************************
MAIN_ExecuteSTOP:
;* --------------------------------------------------------------------------*
;* r10   assigned to silent
$C$DW$318	.dwtag  DW_TAG_variable
	.dwattr $C$DW$318, DW_AT_name("silent")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("silent")
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$318, DW_AT_location[DW_OP_reg10]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #1,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	cfa_offset, 8
        SUBA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 12
        MOVA      r12,r10               ; [] |663| 
	.dwpsn	file "../main.c",line 667,column 5,is_stmt,isa 0
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("STATE_IsIdle")
	.dwattr $C$DW$319, DW_AT_TI_call

        CALLA     #STATE_IsIdle         ; [] |667| 
                                          ; [] |667| 
        TST.W     r12                   ; [] |667| 
        JNE       $C$L187               ; [] |667| 
                                          ; [] |667| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 674,column 5,is_stmt,isa 0
        BIC.W     #8,SR
        NOP      ; [] |674| 
	.dwpsn	file "../main.c",line 677,column 5,is_stmt,isa 0
        MOV.W     #0,r12                ; [] |677| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("STATE_SetState")
	.dwattr $C$DW$320, DW_AT_TI_call

        CALLA     #STATE_SetState       ; [] |677| 
                                          ; [] |677| 
	.dwpsn	file "../main.c",line 680,column 5,is_stmt,isa 0
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("TIMER_ResetTimer0")
	.dwattr $C$DW$321, DW_AT_TI_call

        CALLA     #TIMER_ResetTimer0    ; [] |680| 
                                          ; [] |680| 
	.dwpsn	file "../main.c",line 681,column 5,is_stmt,isa 0
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("TIMER_ResetTimer1")
	.dwattr $C$DW$322, DW_AT_TI_call

        CALLA     #TIMER_ResetTimer1    ; [] |681| 
                                          ; [] |681| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 86,column 5,is_stmt,isa 0
        AND.B     #191,&PCOUT_H+0       ; [] |86| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 87,column 5,is_stmt,isa 0
        AND.B     #127,&PEOUT_L+0       ; [] |87| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 88,column 5,is_stmt,isa 0
        AND.B     #127,&PBOUT_L+0       ; [] |88| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 89,column 5,is_stmt,isa 0
        BIC.B     #8,&PCOUT_L+0         ; [] |89| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 100,column 5,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |100| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 101,column 5,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |101| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 102,column 5,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |102| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 103,column 5,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |103| 
	.dwpsn	file "../main.c",line 690,column 5,is_stmt,isa 0
        MOVX.A    #0,&CH_ActiveChannel+0 ; [] |690| 
	.dwpsn	file "../main.c",line 693,column 5,is_stmt,isa 0
        MOV.W     #0,&DAC12_0DAT+0      ; [] |693| 
	.dwpsn	file "../main.c",line 694,column 5,is_stmt,isa 0
        MOV.W     #0,&DAC12_1DAT+0      ; [] |694| 
	.dwpsn	file "../main.c",line 697,column 5,is_stmt,isa 0
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("DMA_InitializeDMA")
	.dwattr $C$DW$323, DW_AT_TI_call

        CALLA     #DMA_InitializeDMA    ; [] |697| 
                                          ; [] |697| 
	.dwpsn	file "../main.c",line 700,column 5,is_stmt,isa 0
        MOVX.A    #0,&MAIN_FilterTap1+0 ; [] |700| 
	.dwpsn	file "../main.c",line 701,column 5,is_stmt,isa 0
        MOVX.A    #0,&MAIN_FilterTap2+0 ; [] |701| 
	.dwpsn	file "../main.c",line 702,column 5,is_stmt,isa 0
        MOVX.A    #0,&MAIN_XFilterTap1+0 ; [] |702| 
	.dwpsn	file "../main.c",line 703,column 5,is_stmt,isa 0
        MOVX.A    #0,&MAIN_XFilterTap2+0 ; [] |703| 
	.dwpsn	file "../main.c",line 704,column 5,is_stmt,isa 0
        MOVX.A    #0,&MAIN_YFilterTap1+0 ; [] |704| 
	.dwpsn	file "../main.c",line 705,column 5,is_stmt,isa 0
        MOVX.A    #0,&MAIN_YFilterTap2+0 ; [] |705| 
	.dwpsn	file "../main.c",line 706,column 5,is_stmt,isa 0
        MOVX.A    #0,&MAIN_XAcc+0       ; [] |706| 
	.dwpsn	file "../main.c",line 707,column 5,is_stmt,isa 0
        MOVX.A    #0,&MAIN_YAcc+0       ; [] |707| 
	.dwpsn	file "../main.c",line 710,column 5,is_stmt,isa 0
        MOV.W     #0,&MAIN_SequenceNumber+0 ; [] |710| 
	.dwpsn	file "../main.c",line 711,column 5,is_stmt,isa 0
        MOV.W     #0,&MAIN_IndexNumber+0 ; [] |711| 
	.dwpsn	file "../main.c",line 714,column 5,is_stmt,isa 0
        NOP
        BIS.W    #8,SR
        NOP      ; [] |714| 
	.dwpsn	file "../main.c",line 717,column 5,is_stmt,isa 0
        TST.W     r10                   ; [] |717| 
        JNE       $C$L187               ; [] |717| 
                                          ; [] |717| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 721,column 5,is_stmt,isa 0
        MOVX.A    #$C$FSL25+0,0(SP)     ; [] |721| 
        MOVX.A    #UART1_Output+0,r12   ; [] |721| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("sprintf")
	.dwattr $C$DW$324, DW_AT_TI_call

        CALLA     #sprintf              ; [] |721| 
                                          ; [] |721| 
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("UART1_puts")
	.dwattr $C$DW$325, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |721| 
                                          ; [] |721| 
;* --------------------------------------------------------------------------*
$C$L187:    
        ADDA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 8
        POPM.A    #1,r10                ; [] 
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$316, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$316, DW_AT_TI_end_line(0x2d4)
	.dwattr $C$DW$316, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$316

	.sect	".text:MAIN_ExecuteHELP"
	.align	4
	.clink
	.global	MAIN_ExecuteHELP

$C$DW$327	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$327, DW_AT_name("MAIN_ExecuteHELP")
	.dwattr $C$DW$327, DW_AT_low_pc(MAIN_ExecuteHELP)
	.dwattr $C$DW$327, DW_AT_high_pc(0x00)
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("MAIN_ExecuteHELP")
	.dwattr $C$DW$327, DW_AT_external
	.dwattr $C$DW$327, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$327, DW_AT_TI_begin_line(0x275)
	.dwattr $C$DW$327, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$327, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$327, DW_AT_decl_line(0x275)
	.dwattr $C$DW$327, DW_AT_decl_column(0x06)
	.dwattr $C$DW$327, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 630,column 1,is_stmt,address MAIN_ExecuteHELP,isa 0

	.dwfde $C$DW$CIE, MAIN_ExecuteHELP

;*****************************************************************************
;* FUNCTION NAME: MAIN_ExecuteHELP                                           *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 4 Args + 0 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
MAIN_ExecuteHELP:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 8
	.dwpsn	file "../main.c",line 632,column 5,is_stmt,isa 0
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("STATE_IsRunning")
	.dwattr $C$DW$328, DW_AT_TI_call

        CALLA     #STATE_IsRunning      ; [] |632| 
                                          ; [] |632| 
        TST.W     r12                   ; [] |632| 
        JNE       $C$L189               ; [] |632| 
                                          ; [] |632| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 640,column 9,is_stmt,isa 0
        TST.W     &CMD_Command+2        ; [] |640| 
        JNE       $C$L188               ; [] |640| 
                                          ; [] |640| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 642,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL26+0,0(SP)     ; [] |642| 
        MOVX.A    #UART1_Output+0,r12   ; [] |642| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("sprintf")
	.dwattr $C$DW$329, DW_AT_TI_call

        CALLA     #sprintf              ; [] |642| 
                                          ; [] |642| 
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("UART1_puts")
	.dwattr $C$DW$330, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |642| 
                                          ; [] |642| 
        JMP       $C$L190               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L188:    
	.dwpsn	file "../main.c",line 646,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL27+0,0(SP)     ; [] |646| 
        MOVX.A    #UART1_Output+0,r12   ; [] |646| 
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("sprintf")
	.dwattr $C$DW$331, DW_AT_TI_call

        CALLA     #sprintf              ; [] |646| 
                                          ; [] |646| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("UART1_puts")
	.dwattr $C$DW$332, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |646| 
                                          ; [] |646| 
        JMP       $C$L190               ; [] |646| 
                                          ; [] |646| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L189:    
	.dwpsn	file "../main.c",line 634,column 9,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |634| 
	.dwpsn	file "../main.c",line 635,column 9,is_stmt,isa 0
        MOV.W     #4,&CMD_Command+2     ; [] |635| 
;* --------------------------------------------------------------------------*
$C$L190:    
        ADDA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$327, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$327, DW_AT_TI_end_line(0x28a)
	.dwattr $C$DW$327, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$327

	.sect	".text:MAIN_HandleCommand"
	.align	4
	.clink
	.global	MAIN_HandleCommand

$C$DW$334	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$334, DW_AT_name("MAIN_HandleCommand")
	.dwattr $C$DW$334, DW_AT_low_pc(MAIN_HandleCommand)
	.dwattr $C$DW$334, DW_AT_high_pc(0x00)
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("MAIN_HandleCommand")
	.dwattr $C$DW$334, DW_AT_external
	.dwattr $C$DW$334, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$334, DW_AT_TI_begin_line(0x12d)
	.dwattr $C$DW$334, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$334, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$334, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$334, DW_AT_decl_column(0x06)
	.dwattr $C$DW$334, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 302,column 1,is_stmt,address MAIN_HandleCommand,isa 0

	.dwfde $C$DW$CIE, MAIN_HandleCommand

;*****************************************************************************
;* FUNCTION NAME: MAIN_HandleCommand                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 4 Args + 0 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
MAIN_HandleCommand:
;* --------------------------------------------------------------------------*
;* r12   assigned to n
$C$DW$335	.dwtag  DW_TAG_variable
	.dwattr $C$DW$335, DW_AT_name("n")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("n")
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$335, DW_AT_location[DW_OP_reg12]

;* r15   assigned to s
$C$DW$336	.dwtag  DW_TAG_variable
	.dwattr $C$DW$336, DW_AT_name("s")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("s")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg15]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 8
	.dwpsn	file "../main.c",line 305,column 5,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+0     ; [] |305| 
	.dwpsn	file "../main.c",line 306,column 5,is_stmt,isa 0
        MOV.W     #0,&CMD_Command+2     ; [] |306| 
	.dwpsn	file "../main.c",line 310,column 9,is_stmt,isa 0
        MOVX.A    #UART1_Input+0,r12    ; [] |310| 
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("CMD_ParseCommand")
	.dwattr $C$DW$337, DW_AT_TI_call

        CALLA     #CMD_ParseCommand     ; [] |310| 
                                          ; [] |310| 
        TST.W     r12                   ; [] |310| 
        JEQ       $C$L207               ; [] |310| 
                                          ; [] |310| 
;* --------------------------------------------------------------------------*
        MOV.W     &CMD_Command+0,r15    ; [] |310| 
        SUB.W     #1,r15                ; [] |310| 
        CMP.W     #20,r15               ; [] |310| 
        JHS       $C$L207               ; [] |310| 
                                          ; [] |310| 
;* --------------------------------------------------------------------------*
        RLAM.W    #2,r15                ; [] |310| 
        MOVX.A    $C$SW1+0(r15),PC      ; [] |310| 
                                          ; [] |310| 
$C$SW1:	.long	$C$L206	; 1
	.long	$C$L205	; 2
	.long	$C$L204	; 3
	.long	$C$L207	; 0
	.long	$C$L203	; 5
	.long	$C$L202	; 6
	.long	$C$L201	; 7
	.long	$C$L200	; 8
	.long	$C$L199	; 9
	.long	$C$L198	; 10
	.long	$C$L197	; 11
	.long	$C$L196	; 12
	.long	$C$L195	; 13
	.long	$C$L194	; 14
	.long	$C$L207	; 0
	.long	$C$L207	; 0
	.long	$C$L207	; 0
	.long	$C$L193	; 18
	.long	$C$L192	; 19
	.long	$C$L191	; 20
;* --------------------------------------------------------------------------*
	.align	4
$C$L191:    
	.dwpsn	file "../main.c",line 322,column 13,is_stmt,isa 0
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("MAIN_ExecuteSAVE")
	.dwattr $C$DW$338, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSAVE     ; [] |322| 
                                          ; [] |322| 
	.dwpsn	file "../main.c",line 323,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |323| 
                                          ; [] |323| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L192:    
	.dwpsn	file "../main.c",line 352,column 13,is_stmt,isa 0
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_name("MAIN_ExecuteGPGAIN")
	.dwattr $C$DW$339, DW_AT_TI_call

        CALLA     #MAIN_ExecuteGPGAIN   ; [] |352| 
                                          ; [] |352| 
	.dwpsn	file "../main.c",line 353,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |353| 
                                          ; [] |353| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L193:    
	.dwpsn	file "../main.c",line 349,column 13,is_stmt,isa 0
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_name("MAIN_ExecuteSPGAIN")
	.dwattr $C$DW$340, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSPGAIN   ; [] |349| 
                                          ; [] |349| 
	.dwpsn	file "../main.c",line 350,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |350| 
                                          ; [] |350| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L194:    
	.dwpsn	file "../main.c",line 358,column 13,is_stmt,isa 0
$C$DW$341	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$341, DW_AT_low_pc(0x00)
	.dwattr $C$DW$341, DW_AT_name("MAIN_ExecuteGATTEN")
	.dwattr $C$DW$341, DW_AT_TI_call

        CALLA     #MAIN_ExecuteGATTEN   ; [] |358| 
                                          ; [] |358| 
	.dwpsn	file "../main.c",line 359,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |359| 
                                          ; [] |359| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L195:    
	.dwpsn	file "../main.c",line 355,column 13,is_stmt,isa 0
$C$DW$342	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$342, DW_AT_low_pc(0x00)
	.dwattr $C$DW$342, DW_AT_name("MAIN_ExecuteSATTEN")
	.dwattr $C$DW$342, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSATTEN   ; [] |355| 
                                          ; [] |355| 
	.dwpsn	file "../main.c",line 356,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |356| 
                                          ; [] |356| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L196:    
	.dwpsn	file "../main.c",line 346,column 13,is_stmt,isa 0
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_name("MAIN_ExecuteGCLOCK")
	.dwattr $C$DW$343, DW_AT_TI_call

        CALLA     #MAIN_ExecuteGCLOCK   ; [] |346| 
                                          ; [] |346| 
	.dwpsn	file "../main.c",line 347,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |347| 
                                          ; [] |347| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L197:    
	.dwpsn	file "../main.c",line 343,column 13,is_stmt,isa 0
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("MAIN_ExecuteSCLOCK")
	.dwattr $C$DW$344, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSCLOCK   ; [] |343| 
                                          ; [] |343| 
	.dwpsn	file "../main.c",line 344,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |344| 
                                          ; [] |344| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L198:    
	.dwpsn	file "../main.c",line 340,column 13,is_stmt,isa 0
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_name("MAIN_ExecuteSTATUS")
	.dwattr $C$DW$345, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSTATUS   ; [] |340| 
                                          ; [] |340| 
	.dwpsn	file "../main.c",line 341,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |341| 
                                          ; [] |341| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L199:    
	.dwpsn	file "../main.c",line 337,column 13,is_stmt,isa 0
$C$DW$346	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$346, DW_AT_low_pc(0x00)
	.dwattr $C$DW$346, DW_AT_name("MAIN_ExecuteRESET")
	.dwattr $C$DW$346, DW_AT_TI_call

        CALLA     #MAIN_ExecuteRESET    ; [] |337| 
                                          ; [] |337| 
	.dwpsn	file "../main.c",line 338,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |338| 
                                          ; [] |338| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L200:    
	.dwpsn	file "../main.c",line 334,column 13,is_stmt,isa 0
$C$DW$347	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$347, DW_AT_low_pc(0x00)
	.dwattr $C$DW$347, DW_AT_name("MAIN_ExecuteGGAIN")
	.dwattr $C$DW$347, DW_AT_TI_call

        CALLA     #MAIN_ExecuteGGAIN    ; [] |334| 
                                          ; [] |334| 
	.dwpsn	file "../main.c",line 335,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |335| 
                                          ; [] |335| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L201:    
	.dwpsn	file "../main.c",line 331,column 13,is_stmt,isa 0
$C$DW$348	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$348, DW_AT_low_pc(0x00)
	.dwattr $C$DW$348, DW_AT_name("MAIN_ExecuteSGAIN")
	.dwattr $C$DW$348, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSGAIN    ; [] |331| 
                                          ; [] |331| 
	.dwpsn	file "../main.c",line 332,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |332| 
                                          ; [] |332| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L202:    
	.dwpsn	file "../main.c",line 325,column 13,is_stmt,isa 0
$C$DW$349	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$349, DW_AT_low_pc(0x00)
	.dwattr $C$DW$349, DW_AT_name("MAIN_ExecuteSPOOF")
	.dwattr $C$DW$349, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSPOOF    ; [] |325| 
                                          ; [] |325| 
	.dwpsn	file "../main.c",line 326,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |326| 
                                          ; [] |326| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L203:    
	.dwpsn	file "../main.c",line 328,column 13,is_stmt,isa 0
$C$DW$350	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$350, DW_AT_low_pc(0x00)
	.dwattr $C$DW$350, DW_AT_name("MAIN_ExecuteFLOOD")
	.dwattr $C$DW$350, DW_AT_TI_call

        CALLA     #MAIN_ExecuteFLOOD    ; [] |328| 
                                          ; [] |328| 
	.dwpsn	file "../main.c",line 329,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |329| 
                                          ; [] |329| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L204:    
	.dwpsn	file "../main.c",line 319,column 13,is_stmt,isa 0
        MOV.W     #0,r12                ; [] |319| 
$C$DW$351	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$351, DW_AT_low_pc(0x00)
	.dwattr $C$DW$351, DW_AT_name("MAIN_ExecuteSTOP")
	.dwattr $C$DW$351, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSTOP     ; [] |319| 
                                          ; [] |319| 
	.dwpsn	file "../main.c",line 320,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |320| 
                                          ; [] |320| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L205:    
	.dwpsn	file "../main.c",line 316,column 13,is_stmt,isa 0
$C$DW$352	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$352, DW_AT_low_pc(0x00)
	.dwattr $C$DW$352, DW_AT_name("MAIN_ExecuteHELP")
	.dwattr $C$DW$352, DW_AT_TI_call

        CALLA     #MAIN_ExecuteHELP     ; [] |316| 
                                          ; [] |316| 
	.dwpsn	file "../main.c",line 317,column 13,is_stmt,isa 0
        JMP       $C$L207               ; [] |317| 
                                          ; [] |317| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L206:    
	.dwpsn	file "../main.c",line 313,column 13,is_stmt,isa 0
$C$DW$353	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$353, DW_AT_low_pc(0x00)
	.dwattr $C$DW$353, DW_AT_name("MAIN_ExecuteRUN")
	.dwattr $C$DW$353, DW_AT_TI_call

        CALLA     #MAIN_ExecuteRUN      ; [] |313| 
                                          ; [] |313| 
;* --------------------------------------------------------------------------*
$C$L207:    
	.dwpsn	file "../main.c",line 371,column 9,is_stmt,isa 0
        TST.W     &CMD_Command+0        ; [] |371| 
        JNE       $C$L217               ; [] |371| 
                                          ; [] |371| 
;* --------------------------------------------------------------------------*
        MOV.W     &CMD_Command+2,r15    ; [] |371| 
        TST.W     r15                   ; [] |371| 
        JEQ       $C$L213               ; [] |371| 
                                          ; [] |371| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |371| 
        JEQ       $C$L212               ; [] |371| 
                                          ; [] |371| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |371| 
        JEQ       $C$L211               ; [] |371| 
                                          ; [] |371| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |371| 
        JEQ       $C$L210               ; [] |371| 
                                          ; [] |371| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |371| 
        JEQ       $C$L209               ; [] |371| 
                                          ; [] |371| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |371| 
        JEQ       $C$L208               ; [] |371| 
                                          ; [] |371| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 392,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL28+0,0(SP)     ; [] |392| 
        MOVX.A    #UART1_Output+0,r12   ; [] |392| 
$C$DW$354	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$354, DW_AT_low_pc(0x00)
	.dwattr $C$DW$354, DW_AT_name("sprintf")
	.dwattr $C$DW$354, DW_AT_TI_call

        CALLA     #sprintf              ; [] |392| 
                                          ; [] |392| 
	.dwpsn	file "../main.c",line 393,column 13,is_stmt,isa 0
        JMP       $C$L214               ; [] |393| 
                                          ; [] |393| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L208:    
	.dwpsn	file "../main.c",line 389,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL29+0,0(SP)     ; [] |389| 
        MOVX.A    #UART1_Output+0,r12   ; [] |389| 
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_name("sprintf")
	.dwattr $C$DW$355, DW_AT_TI_call

        CALLA     #sprintf              ; [] |389| 
                                          ; [] |389| 
	.dwpsn	file "../main.c",line 390,column 13,is_stmt,isa 0
        JMP       $C$L214               ; [] |390| 
                                          ; [] |390| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L209:    
	.dwpsn	file "../main.c",line 386,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL30+0,0(SP)     ; [] |386| 
        MOVX.A    #UART1_Output+0,r12   ; [] |386| 
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_name("sprintf")
	.dwattr $C$DW$356, DW_AT_TI_call

        CALLA     #sprintf              ; [] |386| 
                                          ; [] |386| 
	.dwpsn	file "../main.c",line 387,column 13,is_stmt,isa 0
        JMP       $C$L214               ; [] |387| 
                                          ; [] |387| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L210:    
	.dwpsn	file "../main.c",line 383,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL31+0,0(SP)     ; [] |383| 
        MOVX.A    #UART1_Output+0,r12   ; [] |383| 
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("sprintf")
	.dwattr $C$DW$357, DW_AT_TI_call

        CALLA     #sprintf              ; [] |383| 
                                          ; [] |383| 
	.dwpsn	file "../main.c",line 384,column 13,is_stmt,isa 0
        JMP       $C$L214               ; [] |384| 
                                          ; [] |384| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L211:    
	.dwpsn	file "../main.c",line 380,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL32+0,0(SP)     ; [] |380| 
        MOVX.A    #UART1_Output+0,r12   ; [] |380| 
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("sprintf")
	.dwattr $C$DW$358, DW_AT_TI_call

        CALLA     #sprintf              ; [] |380| 
                                          ; [] |380| 
	.dwpsn	file "../main.c",line 381,column 13,is_stmt,isa 0
        JMP       $C$L214               ; [] |381| 
                                          ; [] |381| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L212:    
	.dwpsn	file "../main.c",line 377,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL33+0,0(SP)     ; [] |377| 
        MOVX.A    #UART1_Output+0,r12   ; [] |377| 
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_name("sprintf")
	.dwattr $C$DW$359, DW_AT_TI_call

        CALLA     #sprintf              ; [] |377| 
                                          ; [] |377| 
	.dwpsn	file "../main.c",line 378,column 13,is_stmt,isa 0
        JMP       $C$L214               ; [] |378| 
                                          ; [] |378| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L213:    
	.dwpsn	file "../main.c",line 374,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL34+0,0(SP)     ; [] |374| 
        MOVX.A    #UART1_Output+0,r12   ; [] |374| 
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_name("sprintf")
	.dwattr $C$DW$360, DW_AT_TI_call

        CALLA     #sprintf              ; [] |374| 
                                          ; [] |374| 
;* --------------------------------------------------------------------------*
$C$L214:    
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/string.h",line 242,column 18,is_stmt,isa 0
        MOV.W     #65535,r12            ; [] |242| 
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/string.h",line 243,column 18,is_stmt,isa 0
        MOVX.A    #UART1_Output+0,r15   ; [] |243| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L215
;*
;*   Loop source line                : 245
;*   Loop closing brace source line  : 245
;*   Loop Unroll Multiple            : 8x
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	4
$C$L215:    
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/string.h",line 245,column 7,is_stmt,isa 0
        ADD.W     #1,r12                ; [] |245| 
        TST.B     0(r15)                ; [] |245| 
        JEQ       $C$L216               ; [] |245| 
                                          ; [] |245| 
;* --------------------------------------------------------------------------*
        ADD.W     #1,r12                ; [] |245| 
        ADDA      #1,r15                ; [] |245| 
        TST.B     0(r15)                ; [] |245| 
        JEQ       $C$L216               ; [] |245| 
                                          ; [] |245| 
;* --------------------------------------------------------------------------*
        ADD.W     #1,r12                ; [] |245| 
        ADDA      #1,r15                ; [] |245| 
        TST.B     0(r15)                ; [] |245| 
        JEQ       $C$L216               ; [] |245| 
                                          ; [] |245| 
;* --------------------------------------------------------------------------*
        ADD.W     #1,r12                ; [] |245| 
        ADDA      #1,r15                ; [] |245| 
        TST.B     0(r15)                ; [] |245| 
        JEQ       $C$L216               ; [] |245| 
                                          ; [] |245| 
;* --------------------------------------------------------------------------*
        ADD.W     #1,r12                ; [] |245| 
        ADDA      #1,r15                ; [] |245| 
        TST.B     0(r15)                ; [] |245| 
        JEQ       $C$L216               ; [] |245| 
                                          ; [] |245| 
;* --------------------------------------------------------------------------*
        ADD.W     #1,r12                ; [] |245| 
        ADDA      #1,r15                ; [] |245| 
        TST.B     0(r15)                ; [] |245| 
        JEQ       $C$L216               ; [] |245| 
                                          ; [] |245| 
;* --------------------------------------------------------------------------*
        ADD.W     #1,r12                ; [] |245| 
        ADDA      #1,r15                ; [] |245| 
        TST.B     0(r15)                ; [] |245| 
        JEQ       $C$L216               ; [] |245| 
                                          ; [] |245| 
;* --------------------------------------------------------------------------*
        ADD.W     #1,r12                ; [] |245| 
        ADDA      #1,r15                ; [] |245| 
        MOV.B     @r15+,r14             ; [] |245| 
        TST.W     r14                   ; [] |245| 
        JNE       $C$L215               ; [] |245| 
                                          ; [] |245| 
;* --------------------------------------------------------------------------*
$C$L216:    
	.dwpsn	file "../main.c",line 395,column 9,is_stmt,isa 0
$C$DW$361	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$361, DW_AT_low_pc(0x00)
	.dwattr $C$DW$361, DW_AT_name("UART1_puts")
	.dwattr $C$DW$361, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |395| 
                                          ; [] |395| 
;* --------------------------------------------------------------------------*
$C$L217:    
        ADDA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 4
$C$DW$362	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$362, DW_AT_low_pc(0x00)
	.dwattr $C$DW$362, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$334, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$334, DW_AT_TI_end_line(0x190)
	.dwattr $C$DW$334, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$334

	.sect	".text:main"
	.align	4
	.clink
	.global	main

$C$DW$363	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$363, DW_AT_name("main")
	.dwattr $C$DW$363, DW_AT_low_pc(main)
	.dwattr $C$DW$363, DW_AT_high_pc(0x00)
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$363, DW_AT_external
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$363, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$363, DW_AT_TI_begin_line(0x8a)
	.dwattr $C$DW$363, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$363, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$363, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$363, DW_AT_decl_column(0x05)
	.dwattr $C$DW$363, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "../main.c",line 139,column 1,is_stmt,address main,isa 0

	.dwfde $C$DW$CIE, main

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 4 Args + 0 Auto + 0 Save = 4 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        SUBA      #4,SP                 ; [] 
	.dwcfi	cfa_offset, 8
	.dwpsn	file "../main.c",line 141,column 5,is_stmt,isa 0
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_name("WDT_InitializeWDT")
	.dwattr $C$DW$364, DW_AT_TI_call

        CALLA     #WDT_InitializeWDT    ; [] |141| 
                                          ; [] |141| 
	.dwpsn	file "../main.c",line 144,column 5,is_stmt,isa 0
$C$DW$365	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$365, DW_AT_low_pc(0x00)
	.dwattr $C$DW$365, DW_AT_name("GPIO_InitializeGPIO")
	.dwattr $C$DW$365, DW_AT_TI_call

        CALLA     #GPIO_InitializeGPIO  ; [] |144| 
                                          ; [] |144| 
	.dwpsn	file "../main.c",line 148,column 5,is_stmt,isa 0
$C$DW$366	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$366, DW_AT_low_pc(0x00)
	.dwattr $C$DW$366, DW_AT_name("ADC_InitializeADC")
	.dwattr $C$DW$366, DW_AT_TI_call

        CALLA     #ADC_InitializeADC    ; [] |148| 
                                          ; [] |148| 
	.dwpsn	file "../main.c",line 151,column 5,is_stmt,isa 0
$C$DW$367	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$367, DW_AT_low_pc(0x00)
	.dwattr $C$DW$367, DW_AT_name("DAC_InitializeDAC")
	.dwattr $C$DW$367, DW_AT_TI_call

        CALLA     #DAC_InitializeDAC    ; [] |151| 
                                          ; [] |151| 
	.dwpsn	file "../main.c",line 154,column 5,is_stmt,isa 0
$C$DW$368	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$368, DW_AT_low_pc(0x00)
	.dwattr $C$DW$368, DW_AT_name("OPAMP_InitializeOPAMP")
	.dwattr $C$DW$368, DW_AT_TI_call

        CALLA     #OPAMP_InitializeOPAMP ; [] |154| 
                                          ; [] |154| 
	.dwpsn	file "../main.c",line 158,column 5,is_stmt,isa 0
$C$DW$369	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$369, DW_AT_low_pc(0x00)
	.dwattr $C$DW$369, DW_AT_name("CLK_InitializeCLK")
	.dwattr $C$DW$369, DW_AT_TI_call

        CALLA     #CLK_InitializeCLK    ; [] |158| 
                                          ; [] |158| 
	.dwpsn	file "../main.c",line 161,column 5,is_stmt,isa 0
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_name("UART_InitializeUART")
	.dwattr $C$DW$370, DW_AT_TI_call

        CALLA     #UART_InitializeUART  ; [] |161| 
                                          ; [] |161| 
	.dwpsn	file "../main.c",line 164,column 5,is_stmt,isa 0
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_name("DMA_InitializeDMA")
	.dwattr $C$DW$371, DW_AT_TI_call

        CALLA     #DMA_InitializeDMA    ; [] |164| 
                                          ; [] |164| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 167,column 5,is_stmt,isa 0
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_name("TIMER_InitializeTimers")
	.dwattr $C$DW$372, DW_AT_TI_call

        CALLA     #TIMER_InitializeTimers ; [] |167| 
                                          ; [] |167| 
	.dwpsn	file "../main.c",line 170,column 5,is_stmt,isa 0
$C$DW$373	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$373, DW_AT_low_pc(0x00)
	.dwattr $C$DW$373, DW_AT_name("MAIN_InitializeLockIn")
	.dwattr $C$DW$373, DW_AT_TI_call

        CALLA     #MAIN_InitializeLockIn ; [] |170| 
                                          ; [] |170| 
	.dwpsn	file "../main.c",line 173,column 5,is_stmt,isa 0
$C$DW$374	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$374, DW_AT_low_pc(0x00)
	.dwattr $C$DW$374, DW_AT_name("STATE_InitializeState")
	.dwattr $C$DW$374, DW_AT_TI_call

        CALLA     #STATE_InitializeState ; [] |173| 
                                          ; [] |173| 
	.dwpsn	file "../main.c",line 176,column 5,is_stmt,isa 0
$C$DW$375	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$375, DW_AT_low_pc(0x00)
	.dwattr $C$DW$375, DW_AT_name("CH_InitializeChannels")
	.dwattr $C$DW$375, DW_AT_TI_call

        CALLA     #CH_InitializeChannels ; [] |176| 
                                          ; [] |176| 
	.dwpsn	file "../main.c",line 179,column 5,is_stmt,isa 0
        NOP
        BIS.W    #8,SR
        NOP      ; [] |179| 
	.dwpsn	file "../main.c",line 203,column 5,is_stmt,isa 0
$C$DW$376	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$376, DW_AT_low_pc(0x00)
	.dwattr $C$DW$376, DW_AT_name("BAK_AssessBatteryBackup")
	.dwattr $C$DW$376, DW_AT_TI_call

        CALLA     #BAK_AssessBatteryBackup ; [] |203| 
                                          ; [] |203| 
	.dwpsn	file "../main.c",line 207,column 5,is_stmt,isa 0
$C$DW$377	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$377, DW_AT_low_pc(0x00)
	.dwattr $C$DW$377, DW_AT_name("BAK_CommitBatteryBackup")
	.dwattr $C$DW$377, DW_AT_TI_call

        CALLA     #BAK_CommitBatteryBackup ; [] |207| 
                                          ; [] |207| 
	.dwpsn	file "../main.c",line 213,column 5,is_stmt,isa 0
        MOV.W     #1,&CMD_Command+0     ; [] |213| 
	.dwpsn	file "../main.c",line 214,column 5,is_stmt,isa 0
        MOV.W     #2,&CMD_Command+2     ; [] |214| 
	.dwpsn	file "../main.c",line 215,column 5,is_stmt,isa 0
        MOV.W     #3678,&CMD_Command+4  ; [] |215| 
	.dwpsn	file "../main.c",line 217,column 5,is_stmt,isa 0
$C$DW$378	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$378, DW_AT_low_pc(0x00)
	.dwattr $C$DW$378, DW_AT_name("MAIN_ExecuteRUN")
	.dwattr $C$DW$378, DW_AT_TI_call

        CALLA     #MAIN_ExecuteRUN      ; [] |217| 
                                          ; [] |217| 
	.dwpsn	file "../main.c",line 222,column 5,is_stmt,isa 0
        NOP
        BIS.W    #24,SR
        NOP      ; [] |222| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L218
;*
;*   Loop source line                : 226
;*   Loop closing brace source line  : 243
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	4
$C$L218:    
	.dwpsn	file "../main.c",line 229,column 9,is_stmt,isa 0
$C$DW$379	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$379, DW_AT_low_pc(0x00)
	.dwattr $C$DW$379, DW_AT_name("STATE_IsRunning")
	.dwattr $C$DW$379, DW_AT_TI_call

        CALLA     #STATE_IsRunning      ; [] |229| 
                                          ; [] |229| 
        TST.W     r12                   ; [] |229| 
        JNE       $C$L219               ; [] |229| 
                                          ; [] |229| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 231,column 13,is_stmt,isa 0
        MOVX.A    #$C$FSL35+0,0(SP)     ; [] |231| 
        MOVX.A    #UART1_Output+0,r12   ; [] |231| 
$C$DW$380	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$380, DW_AT_low_pc(0x00)
	.dwattr $C$DW$380, DW_AT_name("sprintf")
	.dwattr $C$DW$380, DW_AT_TI_call

        CALLA     #sprintf              ; [] |231| 
                                          ; [] |231| 
$C$DW$381	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$381, DW_AT_low_pc(0x00)
	.dwattr $C$DW$381, DW_AT_name("UART1_puts")
	.dwattr $C$DW$381, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |231| 
                                          ; [] |231| 
;* --------------------------------------------------------------------------*
$C$L219:    
	.dwpsn	file "../main.c",line 236,column 9,is_stmt,isa 0
        NOP
        BIS.W    #24,SR
        NOP      ; [] |236| 
	.dwpsn	file "../main.c",line 239,column 9,is_stmt,isa 0
$C$DW$382	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$382, DW_AT_low_pc(0x00)
	.dwattr $C$DW$382, DW_AT_name("MAIN_HandleCommand")
	.dwattr $C$DW$382, DW_AT_TI_call

        CALLA     #MAIN_HandleCommand   ; [] |239| 
                                          ; [] |239| 
	.dwpsn	file "../main.c",line 243,column 5,is_stmt,isa 0
        TST.W     &MAIN_ResetFlag+0     ; [] |243| 
        JNE       $C$L218               ; [] |243| 
                                          ; [] |243| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 250,column 5,is_stmt,isa 0
        MOV.W     #1,r12                ; [] |250| 
$C$DW$383	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$383, DW_AT_low_pc(0x00)
	.dwattr $C$DW$383, DW_AT_name("MAIN_ExecuteSTOP")
	.dwattr $C$DW$383, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSTOP     ; [] |250| 
                                          ; [] |250| 
	.dwpsn	file "../main.c",line 253,column 5,is_stmt,isa 0
        MOVX.A    #$C$FSL36+0,0(SP)     ; [] |253| 
        MOVX.A    #UART1_Output+0,r12   ; [] |253| 
$C$DW$384	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$384, DW_AT_low_pc(0x00)
	.dwattr $C$DW$384, DW_AT_name("sprintf")
	.dwattr $C$DW$384, DW_AT_TI_call

        CALLA     #sprintf              ; [] |253| 
                                          ; [] |253| 
$C$DW$385	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$385, DW_AT_low_pc(0x00)
	.dwattr $C$DW$385, DW_AT_name("UART1_puts")
	.dwattr $C$DW$385, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |253| 
                                          ; [] |253| 
	.dwpsn	file "../main.c",line 256,column 5,is_stmt,isa 0
$C$DW$386	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$386, DW_AT_low_pc(0x00)
	.dwattr $C$DW$386, DW_AT_name("WDT_SoftwareReset")
	.dwattr $C$DW$386, DW_AT_TI_call

        CALLA     #WDT_SoftwareReset    ; [] |256| 
                                          ; [] |256| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L220
;*
;*   Loop source line                : 259
;*   Loop closing brace source line  : 262
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
	.align	4
$C$L220:    
MAIN_SWR_LOOP: NOP
	.dwpsn	file "../main.c",line 259,column 11,is_stmt,isa 0
        JMP       $C$L220               ; [] |259| 
                                          ; [] |259| 
        NOP       ; [] 
	.dwattr $C$DW$363, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$363, DW_AT_TI_end_line(0x107)
	.dwattr $C$DW$363, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$363

	.sect	".text:__signbitl"
	.align	4
	.clink
	.global	__signbitl

$C$DW$387	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$387, DW_AT_name("__signbitl")
	.dwattr $C$DW$387, DW_AT_low_pc(__signbitl)
	.dwattr $C$DW$387, DW_AT_high_pc(0x00)
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("__signbitl")
	.dwattr $C$DW$387, DW_AT_external
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$387, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$387, DW_AT_TI_begin_line(0x16f)
	.dwattr $C$DW$387, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$387, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$387, DW_AT_decl_column(0x25)
	.dwattr $C$DW$387, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 368,column 1,is_stmt,address __signbitl,isa 0

	.dwfde $C$DW$CIE, __signbitl
$C$DW$388	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$388, DW_AT_name("e")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __signbitl                                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__signbitl:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 368,column 3,is_stmt,isa 0
        MOV.W     #0,r11                ; [] |368| 
        AND.W     #0,r12                ; [] |368| 
        AND.W     #0,r13                ; [] |368| 
        AND.W     #0,r14                ; [] |368| 
        AND.W     #32768,r15            ; [] |368| 
        TST.W     r15                   ; [] |368| 
        JNE       $C$L221               ; [] |368| 
                                          ; [] |368| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |368| 
        JNE       $C$L221               ; [] |368| 
                                          ; [] |368| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |368| 
        JNE       $C$L221               ; [] |368| 
                                          ; [] |368| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |368| 
        JEQ       $C$L222               ; [] |368| 
                                          ; [] |368| 
;* --------------------------------------------------------------------------*
$C$L221:    
        MOV.W     #1,r11                ; [] |368| 
;* --------------------------------------------------------------------------*
$C$L222:    
        MOVA      r11,r12               ; [] |368| 
$C$DW$389	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$389, DW_AT_low_pc(0x00)
	.dwattr $C$DW$389, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$387, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$387, DW_AT_TI_end_line(0x170)
	.dwattr $C$DW$387, DW_AT_TI_end_column(0x2b)
	.dwendentry
	.dwendtag $C$DW$387

	.sect	".text:__signbitf"
	.align	4
	.clink
	.global	__signbitf

$C$DW$390	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$390, DW_AT_name("__signbitf")
	.dwattr $C$DW$390, DW_AT_low_pc(__signbitf)
	.dwattr $C$DW$390, DW_AT_high_pc(0x00)
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("__signbitf")
	.dwattr $C$DW$390, DW_AT_external
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$390, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$390, DW_AT_TI_begin_line(0x16d)
	.dwattr $C$DW$390, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$390, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$390, DW_AT_decl_column(0x25)
	.dwattr $C$DW$390, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 366,column 1,is_stmt,address __signbitf,isa 0

	.dwfde $C$DW$CIE, __signbitf
$C$DW$391	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$391, DW_AT_name("f")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __signbitf                                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__signbitf:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 366,column 3,is_stmt,isa 0
        MOV.W     #0,r12                ; [] |366| 
        TST.W     r13                   ; [] |366| 
        JGE       $C$L223               ; [] |366| 
                                          ; [] |366| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r12                ; [] |366| 
;* --------------------------------------------------------------------------*
$C$L223:    
$C$DW$392	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$392, DW_AT_low_pc(0x00)
	.dwattr $C$DW$392, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$390, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$390, DW_AT_TI_end_line(0x16e)
	.dwattr $C$DW$390, DW_AT_TI_end_column(0x29)
	.dwendentry
	.dwendtag $C$DW$390

	.sect	".text:__signbit"
	.align	4
	.clink
	.global	__signbit

$C$DW$393	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$393, DW_AT_name("__signbit")
	.dwattr $C$DW$393, DW_AT_low_pc(__signbit)
	.dwattr $C$DW$393, DW_AT_high_pc(0x00)
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("__signbit")
	.dwattr $C$DW$393, DW_AT_external
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$393, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$393, DW_AT_TI_begin_line(0x16b)
	.dwattr $C$DW$393, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$393, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$393, DW_AT_decl_column(0x25)
	.dwattr $C$DW$393, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 364,column 1,is_stmt,address __signbit,isa 0

	.dwfde $C$DW$CIE, __signbit
$C$DW$394	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$394, DW_AT_name("d")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __signbit                                                  *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__signbit:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 364,column 3,is_stmt,isa 0
        MOV.W     #0,r11                ; [] |364| 
        AND.W     #0,r12                ; [] |364| 
        AND.W     #0,r13                ; [] |364| 
        AND.W     #0,r14                ; [] |364| 
        AND.W     #32768,r15            ; [] |364| 
        TST.W     r15                   ; [] |364| 
        JNE       $C$L224               ; [] |364| 
                                          ; [] |364| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |364| 
        JNE       $C$L224               ; [] |364| 
                                          ; [] |364| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |364| 
        JNE       $C$L224               ; [] |364| 
                                          ; [] |364| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |364| 
        JEQ       $C$L225               ; [] |364| 
                                          ; [] |364| 
;* --------------------------------------------------------------------------*
$C$L224:    
        MOV.W     #1,r11                ; [] |364| 
;* --------------------------------------------------------------------------*
$C$L225:    
        MOVA      r11,r12               ; [] |364| 
$C$DW$395	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$395, DW_AT_low_pc(0x00)
	.dwattr $C$DW$395, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$393, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$393, DW_AT_TI_end_line(0x16c)
	.dwattr $C$DW$393, DW_AT_TI_end_column(0x2a)
	.dwendentry
	.dwendtag $C$DW$393

	.sect	".text:__isnormall"
	.align	4
	.clink
	.global	__isnormall

$C$DW$396	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$396, DW_AT_name("__isnormall")
	.dwattr $C$DW$396, DW_AT_low_pc(__isnormall)
	.dwattr $C$DW$396, DW_AT_high_pc(0x00)
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("__isnormall")
	.dwattr $C$DW$396, DW_AT_external
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$396, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$396, DW_AT_TI_begin_line(0x167)
	.dwattr $C$DW$396, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$396, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x167)
	.dwattr $C$DW$396, DW_AT_decl_column(0x25)
	.dwattr $C$DW$396, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 360,column 1,is_stmt,address __isnormall,isa 0

	.dwfde $C$DW$CIE, __isnormall
$C$DW$397	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$397, DW_AT_name("e")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isnormall                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15           *
;*   Regs Used         : SP,SR,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15           *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                 *
;*****************************************************************************
__isnormall:
;* --------------------------------------------------------------------------*
;* r6    assigned to $O$S1
;* r8    assigned to e
$C$DW$398	.dwtag  DW_TAG_variable
	.dwattr $C$DW$398, DW_AT_name("e")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg8 DW_OP_piece 2 DW_OP_reg9 DW_OP_piece 2 DW_OP_reg10 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #5,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	save_reg_to_mem, 9, -12
	.dwcfi	save_reg_to_mem, 8, -16
	.dwcfi	save_reg_to_mem, 7, -20
	.dwcfi	save_reg_to_mem, 6, -24
	.dwcfi	cfa_offset, 24
        MOVA      r12,r8                ; [] |360| 
        MOVA      r13,r9                ; [] |360| 
        MOVA      r14,r10               ; [] |360| 
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 360,column 3,is_stmt,isa 0
        MOVA      r15,r7                ; [] |360| 
        MOV.W     #0,r6                 ; [] |360| 
        MOVA      r7,r11                ; [] |360| 
        MOV.W     #52,r12               ; [] |360| 
$C$DW$399	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$399, DW_AT_low_pc(0x00)
	.dwattr $C$DW$399, DW_AT_name("__mspabi_srlll")
	.dwattr $C$DW$399, DW_AT_TI_call

        CALLA     #__mspabi_srlll       ; [] |360| 
                                          ; [] |360| 
        AND.W     #2047,r12             ; [] |360| 
        AND.W     #0,r13                ; [] |360| 
        AND.W     #0,r14                ; [] |360| 
        AND.W     #0,r15                ; [] |360| 
        TST.W     r15                   ; [] |360| 
        JNE       $C$L226               ; [] |360| 
                                          ; [] |360| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |360| 
        JNE       $C$L226               ; [] |360| 
                                          ; [] |360| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |360| 
        JNE       $C$L226               ; [] |360| 
                                          ; [] |360| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |360| 
        JEQ       $C$L227               ; [] |360| 
                                          ; [] |360| 
;* --------------------------------------------------------------------------*
$C$L226:    
        AND.W     #32752,r7             ; [] |360| 
        CMP.W     #32752,r7             ; [] |360| 
        JEQ       $C$L227               ; [] |360| 
                                          ; [] |360| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r6                 ; [] |360| 
;* --------------------------------------------------------------------------*
$C$L227:    
        MOVA      r6,r12                ; [] |360| 
        POPM.A    #5,r10                ; [] 
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$396, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$396, DW_AT_TI_end_line(0x169)
	.dwattr $C$DW$396, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$396

	.sect	".text:__isnormalf"
	.align	4
	.clink
	.global	__isnormalf

$C$DW$401	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$401, DW_AT_name("__isnormalf")
	.dwattr $C$DW$401, DW_AT_low_pc(__isnormalf)
	.dwattr $C$DW$401, DW_AT_high_pc(0x00)
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("__isnormalf")
	.dwattr $C$DW$401, DW_AT_external
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$401, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$401, DW_AT_TI_begin_line(0x163)
	.dwattr $C$DW$401, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$401, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x163)
	.dwattr $C$DW$401, DW_AT_decl_column(0x25)
	.dwattr $C$DW$401, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 356,column 1,is_stmt,address __isnormalf,isa 0

	.dwfde $C$DW$CIE, __isnormalf
$C$DW$402	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$402, DW_AT_name("f")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$402, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isnormalf                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r15                                   *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__isnormalf:
;* --------------------------------------------------------------------------*
;* r12   assigned to $O$S1
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 356,column 3,is_stmt,isa 0
        MOV.W     #0,r12                ; [] |356| 
        MOVA      r13,r15               ; [] |356| 
        RPT #7 || RRUX.W r15 ; [] |356| 
        BIT.W     #255,r15              ; [] |356| 
        JEQ       $C$L228               ; [] |356| 
                                          ; [] |356| 
;* --------------------------------------------------------------------------*
        AND.W     #32640,r13            ; [] |356| 
        CMP.W     #32640,r13            ; [] |356| 
        JEQ       $C$L228               ; [] |356| 
                                          ; [] |356| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r12                ; [] |356| 
;* --------------------------------------------------------------------------*
$C$L228:    
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$401, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$401, DW_AT_TI_end_line(0x165)
	.dwattr $C$DW$401, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$401

	.sect	".text:__isnormal"
	.align	4
	.clink
	.global	__isnormal

$C$DW$404	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$404, DW_AT_name("__isnormal")
	.dwattr $C$DW$404, DW_AT_low_pc(__isnormal)
	.dwattr $C$DW$404, DW_AT_high_pc(0x00)
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("__isnormal")
	.dwattr $C$DW$404, DW_AT_external
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$404, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$404, DW_AT_TI_begin_line(0x15f)
	.dwattr $C$DW$404, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$404, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$404, DW_AT_decl_column(0x25)
	.dwattr $C$DW$404, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 352,column 1,is_stmt,address __isnormal,isa 0

	.dwfde $C$DW$CIE, __isnormal
$C$DW$405	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$405, DW_AT_name("d")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$405, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isnormal                                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15           *
;*   Regs Used         : SP,SR,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15           *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                 *
;*****************************************************************************
__isnormal:
;* --------------------------------------------------------------------------*
;* r6    assigned to $O$S1
;* r8    assigned to d
$C$DW$406	.dwtag  DW_TAG_variable
	.dwattr $C$DW$406, DW_AT_name("d")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$406, DW_AT_location[DW_OP_reg8 DW_OP_piece 2 DW_OP_reg9 DW_OP_piece 2 DW_OP_reg10 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #5,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	save_reg_to_mem, 9, -12
	.dwcfi	save_reg_to_mem, 8, -16
	.dwcfi	save_reg_to_mem, 7, -20
	.dwcfi	save_reg_to_mem, 6, -24
	.dwcfi	cfa_offset, 24
        MOVA      r12,r8                ; [] |352| 
        MOVA      r13,r9                ; [] |352| 
        MOVA      r14,r10               ; [] |352| 
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 352,column 3,is_stmt,isa 0
        MOVA      r15,r7                ; [] |352| 
        MOV.W     #0,r6                 ; [] |352| 
        MOVA      r7,r11                ; [] |352| 
        MOV.W     #52,r12               ; [] |352| 
$C$DW$407	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$407, DW_AT_low_pc(0x00)
	.dwattr $C$DW$407, DW_AT_name("__mspabi_srlll")
	.dwattr $C$DW$407, DW_AT_TI_call

        CALLA     #__mspabi_srlll       ; [] |352| 
                                          ; [] |352| 
        AND.W     #2047,r12             ; [] |352| 
        AND.W     #0,r13                ; [] |352| 
        AND.W     #0,r14                ; [] |352| 
        AND.W     #0,r15                ; [] |352| 
        TST.W     r15                   ; [] |352| 
        JNE       $C$L229               ; [] |352| 
                                          ; [] |352| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |352| 
        JNE       $C$L229               ; [] |352| 
                                          ; [] |352| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |352| 
        JNE       $C$L229               ; [] |352| 
                                          ; [] |352| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |352| 
        JEQ       $C$L230               ; [] |352| 
                                          ; [] |352| 
;* --------------------------------------------------------------------------*
$C$L229:    
        AND.W     #32752,r7             ; [] |352| 
        CMP.W     #32752,r7             ; [] |352| 
        JEQ       $C$L230               ; [] |352| 
                                          ; [] |352| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r6                 ; [] |352| 
;* --------------------------------------------------------------------------*
$C$L230:    
        MOVA      r6,r12                ; [] |352| 
        POPM.A    #5,r10                ; [] 
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$408	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$408, DW_AT_low_pc(0x00)
	.dwattr $C$DW$408, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$404, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$404, DW_AT_TI_end_line(0x161)
	.dwattr $C$DW$404, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$404

	.sect	".text:__isnanl"
	.align	4
	.clink
	.global	__isnanl

$C$DW$409	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$409, DW_AT_name("__isnanl")
	.dwattr $C$DW$409, DW_AT_low_pc(__isnanl)
	.dwattr $C$DW$409, DW_AT_high_pc(0x00)
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("__isnanl")
	.dwattr $C$DW$409, DW_AT_external
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$409, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$409, DW_AT_TI_begin_line(0x15b)
	.dwattr $C$DW$409, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$409, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$409, DW_AT_decl_column(0x25)
	.dwattr $C$DW$409, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 348,column 1,is_stmt,address __isnanl,isa 0

	.dwfde $C$DW$CIE, __isnanl
$C$DW$410	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$410, DW_AT_name("e")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$410, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isnanl                                                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Regs Used         : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
__isnanl:
;* --------------------------------------------------------------------------*
;* r11   assigned to $O$S1
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #1,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	cfa_offset, 8
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 348,column 3,is_stmt,isa 0
        MOV.W     #0,r11                ; [] |348| 
        MOVA      r15,r10               ; [] |348| 
        AND.W     #32752,r10            ; [] |348| 
        CMP.W     #32752,r10            ; [] |348| 
        JNE       $C$L232               ; [] |348| 
                                          ; [] |348| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r12            ; [] |348| 
        AND.W     #65535,r13            ; [] |348| 
        AND.W     #65535,r14            ; [] |348| 
        AND.W     #15,r15               ; [] |348| 
        TST.W     r15                   ; [] |348| 
        JNE       $C$L231               ; [] |348| 
                                          ; [] |348| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |348| 
        JNE       $C$L231               ; [] |348| 
                                          ; [] |348| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |348| 
        JNE       $C$L231               ; [] |348| 
                                          ; [] |348| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |348| 
        JEQ       $C$L232               ; [] |348| 
                                          ; [] |348| 
;* --------------------------------------------------------------------------*
$C$L231:    
        MOV.W     #1,r11                ; [] |348| 
;* --------------------------------------------------------------------------*
$C$L232:    
        MOVA      r11,r12               ; [] |348| 
        POPM.A    #1,r10                ; [] 
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$409, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$409, DW_AT_TI_end_line(0x15d)
	.dwattr $C$DW$409, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$409

	.sect	".text:__isnanf"
	.align	4
	.clink
	.global	__isnanf

$C$DW$412	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$412, DW_AT_name("__isnanf")
	.dwattr $C$DW$412, DW_AT_low_pc(__isnanf)
	.dwattr $C$DW$412, DW_AT_high_pc(0x00)
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("__isnanf")
	.dwattr $C$DW$412, DW_AT_external
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$412, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$412, DW_AT_TI_begin_line(0x158)
	.dwattr $C$DW$412, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$412, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x158)
	.dwattr $C$DW$412, DW_AT_decl_column(0x25)
	.dwattr $C$DW$412, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 345,column 1,is_stmt,address __isnanf,isa 0

	.dwfde $C$DW$CIE, __isnanf
$C$DW$413	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$413, DW_AT_name("f")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$413, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isnanf                                                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__isnanf:
;* --------------------------------------------------------------------------*
;* r15   assigned to $O$S1
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 345,column 3,is_stmt,isa 0
        MOV.W     #0,r15                ; [] |345| 
        MOVA      r13,r14               ; [] |345| 
        AND.W     #32640,r14            ; [] |345| 
        CMP.W     #32640,r14            ; [] |345| 
        JNE       $C$L234               ; [] |345| 
                                          ; [] |345| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r12            ; [] |345| 
        AND.W     #127,r13              ; [] |345| 
        TST.W     r13                   ; [] |345| 
        JNE       $C$L233               ; [] |345| 
                                          ; [] |345| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |345| 
        JEQ       $C$L234               ; [] |345| 
                                          ; [] |345| 
;* --------------------------------------------------------------------------*
$C$L233:    
        MOV.W     #1,r15                ; [] |345| 
;* --------------------------------------------------------------------------*
$C$L234:    
        MOVA      r15,r12               ; [] |345| 
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$412, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$412, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$412, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$412

	.sect	".text:__isnan"
	.align	4
	.clink
	.global	__isnan

$C$DW$415	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$415, DW_AT_name("__isnan")
	.dwattr $C$DW$415, DW_AT_low_pc(__isnan)
	.dwattr $C$DW$415, DW_AT_high_pc(0x00)
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("__isnan")
	.dwattr $C$DW$415, DW_AT_external
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$415, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$415, DW_AT_TI_begin_line(0x155)
	.dwattr $C$DW$415, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$415, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x155)
	.dwattr $C$DW$415, DW_AT_decl_column(0x25)
	.dwattr $C$DW$415, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 342,column 1,is_stmt,address __isnan,isa 0

	.dwfde $C$DW$CIE, __isnan
$C$DW$416	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$416, DW_AT_name("d")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$416, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isnan                                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Regs Used         : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
__isnan:
;* --------------------------------------------------------------------------*
;* r11   assigned to $O$S1
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #1,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	cfa_offset, 8
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 342,column 3,is_stmt,isa 0
        MOV.W     #0,r11                ; [] |342| 
        MOVA      r15,r10               ; [] |342| 
        AND.W     #32752,r10            ; [] |342| 
        CMP.W     #32752,r10            ; [] |342| 
        JNE       $C$L236               ; [] |342| 
                                          ; [] |342| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r12            ; [] |342| 
        AND.W     #65535,r13            ; [] |342| 
        AND.W     #65535,r14            ; [] |342| 
        AND.W     #15,r15               ; [] |342| 
        TST.W     r15                   ; [] |342| 
        JNE       $C$L235               ; [] |342| 
                                          ; [] |342| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |342| 
        JNE       $C$L235               ; [] |342| 
                                          ; [] |342| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |342| 
        JNE       $C$L235               ; [] |342| 
                                          ; [] |342| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |342| 
        JEQ       $C$L236               ; [] |342| 
                                          ; [] |342| 
;* --------------------------------------------------------------------------*
$C$L235:    
        MOV.W     #1,r11                ; [] |342| 
;* --------------------------------------------------------------------------*
$C$L236:    
        MOVA      r11,r12               ; [] |342| 
        POPM.A    #1,r10                ; [] 
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$415, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$415, DW_AT_TI_end_line(0x157)
	.dwattr $C$DW$415, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$415

	.sect	".text:__isinfl"
	.align	4
	.clink
	.global	__isinfl

$C$DW$418	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$418, DW_AT_name("__isinfl")
	.dwattr $C$DW$418, DW_AT_low_pc(__isinfl)
	.dwattr $C$DW$418, DW_AT_high_pc(0x00)
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("__isinfl")
	.dwattr $C$DW$418, DW_AT_external
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$418, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$418, DW_AT_TI_begin_line(0x17a)
	.dwattr $C$DW$418, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$418, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$418, DW_AT_decl_column(0x25)
	.dwattr $C$DW$418, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 379,column 1,is_stmt,address __isinfl,isa 0

	.dwfde $C$DW$CIE, __isinfl
$C$DW$419	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$419, DW_AT_name("e")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$419, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isinfl                                                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Regs Used         : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
__isinfl:
;* --------------------------------------------------------------------------*
;* r11   assigned to $O$S1
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #1,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	cfa_offset, 8
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 379,column 3,is_stmt,isa 0
        MOV.W     #0,r11                ; [] |379| 
        MOVA      r15,r10               ; [] |379| 
        AND.W     #32752,r10            ; [] |379| 
        CMP.W     #32752,r10            ; [] |379| 
        JNE       $C$L237               ; [] |379| 
                                          ; [] |379| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r12            ; [] |379| 
        AND.W     #65535,r13            ; [] |379| 
        AND.W     #65535,r14            ; [] |379| 
        AND.W     #15,r15               ; [] |379| 
        TST.W     r15                   ; [] |379| 
        JNE       $C$L237               ; [] |379| 
                                          ; [] |379| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |379| 
        JNE       $C$L237               ; [] |379| 
                                          ; [] |379| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |379| 
        JNE       $C$L237               ; [] |379| 
                                          ; [] |379| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |379| 
        JNE       $C$L237               ; [] |379| 
                                          ; [] |379| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r11                ; [] |379| 
;* --------------------------------------------------------------------------*
$C$L237:    
        MOVA      r11,r12               ; [] |379| 
        POPM.A    #1,r10                ; [] 
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$418, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$418, DW_AT_TI_end_line(0x17b)
	.dwattr $C$DW$418, DW_AT_TI_end_column(0x4c)
	.dwendentry
	.dwendtag $C$DW$418

	.sect	".text:__isinff"
	.align	4
	.clink
	.global	__isinff

$C$DW$421	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$421, DW_AT_name("__isinff")
	.dwattr $C$DW$421, DW_AT_low_pc(__isinff)
	.dwattr $C$DW$421, DW_AT_high_pc(0x00)
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("__isinff")
	.dwattr $C$DW$421, DW_AT_external
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$421, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$421, DW_AT_TI_begin_line(0x176)
	.dwattr $C$DW$421, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$421, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x176)
	.dwattr $C$DW$421, DW_AT_decl_column(0x25)
	.dwattr $C$DW$421, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 375,column 1,is_stmt,address __isinff,isa 0

	.dwfde $C$DW$CIE, __isinff
$C$DW$422	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$422, DW_AT_name("f")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$422, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isinff                                                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r14,r15                               *
;*   Regs Used         : SP,SR,r12,r13,r14,r15                               *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__isinff:
;* --------------------------------------------------------------------------*
;* r15   assigned to $O$S1
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 375,column 3,is_stmt,isa 0
        MOV.W     #0,r15                ; [] |375| 
        MOVA      r13,r14               ; [] |375| 
        AND.W     #32640,r14            ; [] |375| 
        CMP.W     #32640,r14            ; [] |375| 
        JNE       $C$L238               ; [] |375| 
                                          ; [] |375| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r12            ; [] |375| 
        AND.W     #127,r13              ; [] |375| 
        TST.W     r13                   ; [] |375| 
        JNE       $C$L238               ; [] |375| 
                                          ; [] |375| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |375| 
        JNE       $C$L238               ; [] |375| 
                                          ; [] |375| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r15                ; [] |375| 
;* --------------------------------------------------------------------------*
$C$L238:    
        MOVA      r15,r12               ; [] |375| 
$C$DW$423	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$423, DW_AT_low_pc(0x00)
	.dwattr $C$DW$423, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$421, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$421, DW_AT_TI_end_line(0x177)
	.dwattr $C$DW$421, DW_AT_TI_end_column(0x48)
	.dwendentry
	.dwendtag $C$DW$421

	.sect	".text:__isinf"
	.align	4
	.clink
	.global	__isinf

$C$DW$424	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$424, DW_AT_name("__isinf")
	.dwattr $C$DW$424, DW_AT_low_pc(__isinf)
	.dwattr $C$DW$424, DW_AT_high_pc(0x00)
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("__isinf")
	.dwattr $C$DW$424, DW_AT_external
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$424, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$424, DW_AT_TI_begin_line(0x178)
	.dwattr $C$DW$424, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$424, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x178)
	.dwattr $C$DW$424, DW_AT_decl_column(0x25)
	.dwattr $C$DW$424, DW_AT_TI_max_frame_size(0x08)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 377,column 1,is_stmt,address __isinf,isa 0

	.dwfde $C$DW$CIE, __isinf
$C$DW$425	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$425, DW_AT_name("d")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$425, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isinf                                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Regs Used         : SP,SR,r10,r11,r12,r13,r14,r15                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                   *
;*****************************************************************************
__isinf:
;* --------------------------------------------------------------------------*
;* r11   assigned to $O$S1
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #1,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	cfa_offset, 8
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 377,column 3,is_stmt,isa 0
        MOV.W     #0,r11                ; [] |377| 
        MOVA      r15,r10               ; [] |377| 
        AND.W     #32752,r10            ; [] |377| 
        CMP.W     #32752,r10            ; [] |377| 
        JNE       $C$L239               ; [] |377| 
                                          ; [] |377| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r12            ; [] |377| 
        AND.W     #65535,r13            ; [] |377| 
        AND.W     #65535,r14            ; [] |377| 
        AND.W     #15,r15               ; [] |377| 
        TST.W     r15                   ; [] |377| 
        JNE       $C$L239               ; [] |377| 
                                          ; [] |377| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |377| 
        JNE       $C$L239               ; [] |377| 
                                          ; [] |377| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |377| 
        JNE       $C$L239               ; [] |377| 
                                          ; [] |377| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |377| 
        JNE       $C$L239               ; [] |377| 
                                          ; [] |377| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r11                ; [] |377| 
;* --------------------------------------------------------------------------*
$C$L239:    
        MOVA      r11,r12               ; [] |377| 
        POPM.A    #1,r10                ; [] 
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$426	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$426, DW_AT_low_pc(0x00)
	.dwattr $C$DW$426, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$424, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$424, DW_AT_TI_end_line(0x179)
	.dwattr $C$DW$424, DW_AT_TI_end_column(0x4a)
	.dwendentry
	.dwendtag $C$DW$424

	.sect	".text:__isfinitel"
	.align	4
	.clink
	.global	__isfinitel

$C$DW$427	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$427, DW_AT_name("__isfinitel")
	.dwattr $C$DW$427, DW_AT_low_pc(__isfinitel)
	.dwattr $C$DW$427, DW_AT_high_pc(0x00)
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("__isfinitel")
	.dwattr $C$DW$427, DW_AT_external
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$427, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$427, DW_AT_TI_begin_line(0x152)
	.dwattr $C$DW$427, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$427, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x152)
	.dwattr $C$DW$427, DW_AT_decl_column(0x25)
	.dwattr $C$DW$427, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 339,column 1,is_stmt,address __isfinitel,isa 0

	.dwfde $C$DW$CIE, __isfinitel
$C$DW$428	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$428, DW_AT_name("e")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$428, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isfinitel                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__isfinitel:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 339,column 3,is_stmt,isa 0
        MOV.W     #0,r12                ; [] |339| 
        AND.W     #32752,r15            ; [] |339| 
        CMP.W     #32752,r15            ; [] |339| 
        JEQ       $C$L240               ; [] |339| 
                                          ; [] |339| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r12                ; [] |339| 
;* --------------------------------------------------------------------------*
$C$L240:    
$C$DW$429	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$429, DW_AT_low_pc(0x00)
	.dwattr $C$DW$429, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$427, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$427, DW_AT_TI_end_line(0x153)
	.dwattr $C$DW$427, DW_AT_TI_end_column(0x2f)
	.dwendentry
	.dwendtag $C$DW$427

	.sect	".text:__isfinitef"
	.align	4
	.clink
	.global	__isfinitef

$C$DW$430	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$430, DW_AT_name("__isfinitef")
	.dwattr $C$DW$430, DW_AT_low_pc(__isfinitef)
	.dwattr $C$DW$430, DW_AT_high_pc(0x00)
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("__isfinitef")
	.dwattr $C$DW$430, DW_AT_external
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$430, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$430, DW_AT_TI_begin_line(0x150)
	.dwattr $C$DW$430, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$430, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x150)
	.dwattr $C$DW$430, DW_AT_decl_column(0x25)
	.dwattr $C$DW$430, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 337,column 1,is_stmt,address __isfinitef,isa 0

	.dwfde $C$DW$CIE, __isfinitef
$C$DW$431	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$431, DW_AT_name("f")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$431, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isfinitef                                                *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13                                       *
;*   Regs Used         : SP,SR,r12,r13                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__isfinitef:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 337,column 3,is_stmt,isa 0
        MOV.W     #0,r12                ; [] |337| 
        AND.W     #32640,r13            ; [] |337| 
        CMP.W     #32640,r13            ; [] |337| 
        JEQ       $C$L241               ; [] |337| 
                                          ; [] |337| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r12                ; [] |337| 
;* --------------------------------------------------------------------------*
$C$L241:    
$C$DW$432	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$432, DW_AT_low_pc(0x00)
	.dwattr $C$DW$432, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$430, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$430, DW_AT_TI_end_line(0x151)
	.dwattr $C$DW$430, DW_AT_TI_end_column(0x2d)
	.dwendentry
	.dwendtag $C$DW$430

	.sect	".text:__isfinite"
	.align	4
	.clink
	.global	__isfinite

$C$DW$433	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$433, DW_AT_name("__isfinite")
	.dwattr $C$DW$433, DW_AT_low_pc(__isfinite)
	.dwattr $C$DW$433, DW_AT_high_pc(0x00)
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("__isfinite")
	.dwattr $C$DW$433, DW_AT_external
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$433, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$433, DW_AT_TI_begin_line(0x14e)
	.dwattr $C$DW$433, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$433, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$433, DW_AT_decl_column(0x25)
	.dwattr $C$DW$433, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 335,column 1,is_stmt,address __isfinite,isa 0

	.dwfde $C$DW$CIE, __isfinite
$C$DW$434	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$434, DW_AT_name("d")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$434, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __isfinite                                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__isfinite:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 335,column 3,is_stmt,isa 0
        MOV.W     #0,r12                ; [] |335| 
        AND.W     #32752,r15            ; [] |335| 
        CMP.W     #32752,r15            ; [] |335| 
        JEQ       $C$L242               ; [] |335| 
                                          ; [] |335| 
;* --------------------------------------------------------------------------*
        MOV.W     #1,r12                ; [] |335| 
;* --------------------------------------------------------------------------*
$C$L242:    
$C$DW$435	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$435, DW_AT_low_pc(0x00)
	.dwattr $C$DW$435, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$433, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$433, DW_AT_TI_end_line(0x14f)
	.dwattr $C$DW$433, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$433

	.sect	".text:__fpclassifyl"
	.align	4
	.clink
	.global	__fpclassifyl

$C$DW$436	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$436, DW_AT_name("__fpclassifyl")
	.dwattr $C$DW$436, DW_AT_low_pc(__fpclassifyl)
	.dwattr $C$DW$436, DW_AT_high_pc(0x00)
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("__fpclassifyl")
	.dwattr $C$DW$436, DW_AT_external
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$436, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$436, DW_AT_TI_begin_line(0x1ae)
	.dwattr $C$DW$436, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$436, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$436, DW_AT_decl_column(0x25)
	.dwattr $C$DW$436, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 431,column 1,is_stmt,address __fpclassifyl,isa 0

	.dwfde $C$DW$CIE, __fpclassifyl
$C$DW$437	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$437, DW_AT_name("e")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$437, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __fpclassifyl                                              *
;*                                                                           *
;*   Regs Modified     : SP,SR,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15     *
;*   Regs Used         : SP,SR,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15     *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                 *
;*****************************************************************************
__fpclassifyl:
;* --------------------------------------------------------------------------*
;* r4    assigned to $O$K1
;* r12   assigned to e
$C$DW$438	.dwtag  DW_TAG_variable
	.dwattr $C$DW$438, DW_AT_name("e")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("e")
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$438, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #7,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	save_reg_to_mem, 9, -12
	.dwcfi	save_reg_to_mem, 8, -16
	.dwcfi	save_reg_to_mem, 7, -20
	.dwcfi	save_reg_to_mem, 6, -24
	.dwcfi	save_reg_to_mem, 5, -28
	.dwcfi	save_reg_to_mem, 4, -32
	.dwcfi	cfa_offset, 32
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 432,column 5,is_stmt,isa 0
        MOVA      r12,r4                ; [] |432| 
        MOVA      r13,r5                ; [] |432| 
        MOVA      r14,r6                ; [] |432| 
        MOVA      r15,r7                ; [] |432| 
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 436,column 14,is_stmt,isa 0
        AND.W     #32752,r15            ; [] |436| 
        CMP.W     #32752,r15            ; [] |436| 
        JNE       $C$L245               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r4             ; [] |436| 
        AND.W     #65535,r5             ; [] |436| 
        AND.W     #65535,r6             ; [] |436| 
        AND.W     #15,r7                ; [] |436| 
        TST.W     r7                    ; [] |436| 
        JNE       $C$L243               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r6                    ; [] |436| 
        JNE       $C$L243               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r5                    ; [] |436| 
        JNE       $C$L243               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r4                    ; [] |436| 
        JEQ       $C$L244               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
$C$L243:    
        MOV.W     #2,r12                ; [] |436| 
        JMP       $C$L250               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L244:    
        MOV.W     #1,r12                ; [] |436| 
        JMP       $C$L250               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L245:    
        MOVA      r4,r8                 ; [] |436| 
        MOVA      r5,r9                 ; [] |436| 
        MOVA      r6,r10                ; [] |436| 
        MOVA      r7,r11                ; [] |436| 
        MOV.W     #52,r12               ; [] |436| 
$C$DW$439	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$439, DW_AT_low_pc(0x00)
	.dwattr $C$DW$439, DW_AT_name("__mspabi_srlll")
	.dwattr $C$DW$439, DW_AT_TI_call

        CALLA     #__mspabi_srlll       ; [] |436| 
                                          ; [] |436| 
        AND.W     #2047,r12             ; [] |436| 
        AND.W     #0,r13                ; [] |436| 
        AND.W     #0,r14                ; [] |436| 
        AND.W     #0,r15                ; [] |436| 
        TST.W     r15                   ; [] |436| 
        JNE       $C$L246               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |436| 
        JNE       $C$L246               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |436| 
        JNE       $C$L246               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |436| 
        JEQ       $C$L247               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
$C$L246:    
        MOV.W     #-1,r12               ; [] |436| 
        JMP       $C$L250               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L247:    
        AND.W     #65535,r4             ; [] |436| 
        AND.W     #65535,r5             ; [] |436| 
        AND.W     #65535,r6             ; [] |436| 
        AND.W     #15,r7                ; [] |436| 
        TST.W     r7                    ; [] |436| 
        JNE       $C$L248               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r6                    ; [] |436| 
        JNE       $C$L248               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r5                    ; [] |436| 
        JNE       $C$L248               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
        TST.W     r4                    ; [] |436| 
        JEQ       $C$L249               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
$C$L248:    
        MOV.W     #65534,r12            ; [] |436| 
        JMP       $C$L250               ; [] |436| 
                                          ; [] |436| 
;* --------------------------------------------------------------------------*
$C$L249:    
        MOV.W     #0,r12                ; [] |436| 
;* --------------------------------------------------------------------------*
$C$L250:    
        POPM.A    #7,r10                ; [] 
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$440	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$440, DW_AT_low_pc(0x00)
	.dwattr $C$DW$440, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$436, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$436, DW_AT_TI_end_line(0x1bd)
	.dwattr $C$DW$436, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$436

	.sect	".text:__fpclassifyf"
	.align	4
	.clink
	.global	__fpclassifyf

$C$DW$441	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$441, DW_AT_name("__fpclassifyf")
	.dwattr $C$DW$441, DW_AT_low_pc(__fpclassifyf)
	.dwattr $C$DW$441, DW_AT_high_pc(0x00)
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("__fpclassifyf")
	.dwattr $C$DW$441, DW_AT_external
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$441, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$441, DW_AT_TI_begin_line(0x18c)
	.dwattr $C$DW$441, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$441, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$441, DW_AT_decl_column(0x25)
	.dwattr $C$DW$441, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 397,column 1,is_stmt,address __fpclassifyf,isa 0

	.dwfde $C$DW$CIE, __fpclassifyf
$C$DW$442	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$442, DW_AT_name("f")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$442, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __fpclassifyf                                              *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r13,r15                                   *
;*   Regs Used         : SP,SR,r12,r13,r15                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
__fpclassifyf:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 402,column 14,is_stmt,isa 0
        MOVA      r13,r15               ; [] |402| 
        AND.W     #32640,r15            ; [] |402| 
        CMP.W     #32640,r15            ; [] |402| 
        JNE       $C$L253               ; [] |402| 
                                          ; [] |402| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r12            ; [] |402| 
        AND.W     #127,r13              ; [] |402| 
        TST.W     r13                   ; [] |402| 
        JNE       $C$L251               ; [] |402| 
                                          ; [] |402| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |402| 
        JEQ       $C$L252               ; [] |402| 
                                          ; [] |402| 
;* --------------------------------------------------------------------------*
$C$L251:    
	.dwcfi	remember_state
        MOV.W     #2,r12                ; [] |402| 
$C$DW$443	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$443, DW_AT_low_pc(0x00)
	.dwattr $C$DW$443, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	4
$C$L252:    
	.dwcfi	remember_state
        MOV.W     #1,r12                ; [] |402| 
$C$DW$444	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$444, DW_AT_low_pc(0x00)
	.dwattr $C$DW$444, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	4
$C$L253:    
        MOVA      r13,r15               ; [] |402| 
        RPT #7 || RRUX.W r15 ; [] |402| 
        BIT.W     #255,r15              ; [] |402| 
        JEQ       $C$L254               ; [] |402| 
                                          ; [] |402| 
;* --------------------------------------------------------------------------*
	.dwcfi	remember_state
        MOV.W     #-1,r12               ; [] |402| 
$C$DW$445	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$445, DW_AT_low_pc(0x00)
	.dwattr $C$DW$445, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	4
$C$L254:    
        AND.W     #65535,r12            ; [] |402| 
        AND.W     #127,r13              ; [] |402| 
        TST.W     r13                   ; [] |402| 
        JNE       $C$L255               ; [] |402| 
                                          ; [] |402| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |402| 
        JEQ       $C$L256               ; [] |402| 
                                          ; [] |402| 
;* --------------------------------------------------------------------------*
$C$L255:    
	.dwcfi	remember_state
        MOV.W     #65534,r12            ; [] |402| 
$C$DW$446	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$446, DW_AT_low_pc(0x00)
	.dwattr $C$DW$446, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwcfi	restore_state
;* --------------------------------------------------------------------------*
	.align	4
$C$L256:    
        MOV.W     #0,r12                ; [] |402| 
$C$DW$447	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$447, DW_AT_low_pc(0x00)
	.dwattr $C$DW$447, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$441, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$441, DW_AT_TI_end_line(0x19b)
	.dwattr $C$DW$441, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$441

	.sect	".text:__fpclassify"
	.align	4
	.clink
	.global	__fpclassify

$C$DW$448	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$448, DW_AT_name("__fpclassify")
	.dwattr $C$DW$448, DW_AT_low_pc(__fpclassify)
	.dwattr $C$DW$448, DW_AT_high_pc(0x00)
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("__fpclassify")
	.dwattr $C$DW$448, DW_AT_external
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$448, DW_AT_TI_begin_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$448, DW_AT_TI_begin_line(0x19d)
	.dwattr $C$DW$448, DW_AT_TI_begin_column(0x25)
	.dwattr $C$DW$448, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$448, DW_AT_decl_column(0x25)
	.dwattr $C$DW$448, DW_AT_TI_max_frame_size(0x20)
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 414,column 1,is_stmt,address __fpclassify,isa 0

	.dwfde $C$DW$CIE, __fpclassify
$C$DW$449	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$449, DW_AT_name("d")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$449, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]


;*****************************************************************************
;* FUNCTION NAME: __fpclassify                                               *
;*                                                                           *
;*   Regs Modified     : SP,SR,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15     *
;*   Regs Used         : SP,SR,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15     *
;*   Local Frame Size  : 0 Args + 0 Auto + 28 Save = 28 byte                 *
;*****************************************************************************
__fpclassify:
;* --------------------------------------------------------------------------*
;* r4    assigned to $O$K1
;* r12   assigned to d
$C$DW$450	.dwtag  DW_TAG_variable
	.dwattr $C$DW$450, DW_AT_name("d")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("d")
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$450, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2 DW_OP_reg15 DW_OP_piece 2]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #7,r10                ; [] 
	.dwcfi	save_reg_to_mem, 10, -8
	.dwcfi	save_reg_to_mem, 9, -12
	.dwcfi	save_reg_to_mem, 8, -16
	.dwcfi	save_reg_to_mem, 7, -20
	.dwcfi	save_reg_to_mem, 6, -24
	.dwcfi	save_reg_to_mem, 5, -28
	.dwcfi	save_reg_to_mem, 4, -32
	.dwcfi	cfa_offset, 32
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 415,column 5,is_stmt,isa 0
        MOVA      r12,r4                ; [] |415| 
        MOVA      r13,r5                ; [] |415| 
        MOVA      r14,r6                ; [] |415| 
        MOVA      r15,r7                ; [] |415| 
	.dwpsn	file "C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h",line 419,column 14,is_stmt,isa 0
        AND.W     #32752,r15            ; [] |419| 
        CMP.W     #32752,r15            ; [] |419| 
        JNE       $C$L259               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        AND.W     #65535,r4             ; [] |419| 
        AND.W     #65535,r5             ; [] |419| 
        AND.W     #65535,r6             ; [] |419| 
        AND.W     #15,r7                ; [] |419| 
        TST.W     r7                    ; [] |419| 
        JNE       $C$L257               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r6                    ; [] |419| 
        JNE       $C$L257               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r5                    ; [] |419| 
        JNE       $C$L257               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r4                    ; [] |419| 
        JEQ       $C$L258               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
$C$L257:    
        MOV.W     #2,r12                ; [] |419| 
        JMP       $C$L264               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L258:    
        MOV.W     #1,r12                ; [] |419| 
        JMP       $C$L264               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L259:    
        MOVA      r4,r8                 ; [] |419| 
        MOVA      r5,r9                 ; [] |419| 
        MOVA      r6,r10                ; [] |419| 
        MOVA      r7,r11                ; [] |419| 
        MOV.W     #52,r12               ; [] |419| 
$C$DW$451	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$451, DW_AT_low_pc(0x00)
	.dwattr $C$DW$451, DW_AT_name("__mspabi_srlll")
	.dwattr $C$DW$451, DW_AT_TI_call

        CALLA     #__mspabi_srlll       ; [] |419| 
                                          ; [] |419| 
        AND.W     #2047,r12             ; [] |419| 
        AND.W     #0,r13                ; [] |419| 
        AND.W     #0,r14                ; [] |419| 
        AND.W     #0,r15                ; [] |419| 
        TST.W     r15                   ; [] |419| 
        JNE       $C$L260               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r14                   ; [] |419| 
        JNE       $C$L260               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r13                   ; [] |419| 
        JNE       $C$L260               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r12                   ; [] |419| 
        JEQ       $C$L261               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
$C$L260:    
        MOV.W     #-1,r12               ; [] |419| 
        JMP       $C$L264               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L261:    
        AND.W     #65535,r4             ; [] |419| 
        AND.W     #65535,r5             ; [] |419| 
        AND.W     #65535,r6             ; [] |419| 
        AND.W     #15,r7                ; [] |419| 
        TST.W     r7                    ; [] |419| 
        JNE       $C$L262               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r6                    ; [] |419| 
        JNE       $C$L262               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r5                    ; [] |419| 
        JNE       $C$L262               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
        TST.W     r4                    ; [] |419| 
        JEQ       $C$L263               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
$C$L262:    
        MOV.W     #65534,r12            ; [] |419| 
        JMP       $C$L264               ; [] |419| 
                                          ; [] |419| 
;* --------------------------------------------------------------------------*
$C$L263:    
        MOV.W     #0,r12                ; [] |419| 
;* --------------------------------------------------------------------------*
$C$L264:    
        POPM.A    #7,r10                ; [] 
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 10
	.dwcfi	cfa_offset, 4
$C$DW$452	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$452, DW_AT_low_pc(0x00)
	.dwattr $C$DW$452, DW_AT_TI_return

        RETA      ; [] 
        ; [] 
	.dwattr $C$DW$448, DW_AT_TI_end_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/_defs.h")
	.dwattr $C$DW$448, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$448, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$448

	.sect	".text:_isr:RTCISR"
	.align	4
	.clink
	.global	RTCISR

$C$DW$453	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$453, DW_AT_name("RTCISR")
	.dwattr $C$DW$453, DW_AT_low_pc(RTCISR)
	.dwattr $C$DW$453, DW_AT_high_pc(0x00)
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("RTCISR")
	.dwattr $C$DW$453, DW_AT_external
	.dwattr $C$DW$453, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$453, DW_AT_TI_begin_line(0x5a9)
	.dwattr $C$DW$453, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$453, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$453, DW_AT_decl_line(0x5a9)
	.dwattr $C$DW$453, DW_AT_decl_column(0x12)
	.dwattr $C$DW$453, DW_AT_TI_interrupt
	.dwattr $C$DW$453, DW_AT_TI_max_frame_size(0x18)
	.dwpsn	file "../main.c",line 1450,column 1,is_stmt,address RTCISR,isa 0

	.dwfde $C$DW$CIE, RTCISR

;*****************************************************************************
;* FUNCTION NAME: RTCISR                                                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 20 Save = 20 byte                 *
;*****************************************************************************
RTCISR:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #5,r15                ; [] 
	.dwcfi	save_reg_to_mem, 15, -8
	.dwcfi	save_reg_to_mem, 14, -12
	.dwcfi	save_reg_to_mem, 13, -16
	.dwcfi	save_reg_to_mem, 12, -20
	.dwcfi	save_reg_to_mem, 11, -24
	.dwcfi	cfa_offset, 24
	.dwpsn	file "../main.c",line 1453,column 5,is_stmt,isa 0
        JMP       $C$L266               ; [] |1453| 
                                          ; [] |1453| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L265:    
	.dwpsn	file "../main.c",line 1452,column 9,is_stmt,isa 0
        BIC.W     #1,&BAKCTL+0          ; [] |1452| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L266
;* --------------------------------------------------------------------------*
$C$L266:    
	.dwpsn	file "../main.c",line 1453,column 5,is_stmt,isa 0
        BIT.W     #1,&BAKCTL+0          ; [] |1453| 
        JNE       $C$L265               ; [] |1453| 
                                          ; [] |1453| 
;* --------------------------------------------------------------------------*
        CMP.W     #2,&RTCIV+0           ; [] |1453| 
        JNE       $C$L268               ; [] |1453| 
                                          ; [] |1453| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1458,column 9,is_stmt,isa 0
        XOR.B     #1,&PAOUT_L+0         ; [] |1458| 
	.dwpsn	file "../main.c",line 1461,column 9,is_stmt,isa 0
        TST.W     &MAIN_PendingRTCSetFlag+0 ; [] |1461| 
        JNE       $C$L267               ; [] |1461| 
                                          ; [] |1461| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1469,column 13,is_stmt,isa 0
        MOVX.A    #MAIN_CurrentTime+0,r12 ; [] |1469| 
$C$DW$454	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$454, DW_AT_low_pc(0x00)
	.dwattr $C$DW$454, DW_AT_name("CLK_GetRTC")
	.dwattr $C$DW$454, DW_AT_TI_call

        CALLA     #CLK_GetRTC           ; [] |1469| 
                                          ; [] |1469| 
        JMP       $C$L268               ; [] |1469| 
                                          ; [] |1469| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L267:    
	.dwpsn	file "../main.c",line 1463,column 13,is_stmt,isa 0
        MOVX.A    #MAIN_CurrentTime+0,r12 ; [] |1463| 
$C$DW$455	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$455, DW_AT_low_pc(0x00)
	.dwattr $C$DW$455, DW_AT_name("CLK_SetRTC")
	.dwattr $C$DW$455, DW_AT_TI_call

        CALLA     #CLK_SetRTC           ; [] |1463| 
                                          ; [] |1463| 
	.dwpsn	file "../main.c",line 1464,column 13,is_stmt,isa 0
        MOV.W     #0,&MAIN_PendingRTCSetFlag+0 ; [] |1464| 
;* --------------------------------------------------------------------------*
$C$L268:    
        POPM.A    #5,r15                ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 12
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 14
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 4
$C$DW$456	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$456, DW_AT_low_pc(0x00)
	.dwattr $C$DW$456, DW_AT_TI_return

        RETI      ; [] 
        ; [] 
	.dwattr $C$DW$453, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$453, DW_AT_TI_end_line(0x5c8)
	.dwattr $C$DW$453, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$453

	.sect	".text:_isr:DMA_ISR"
	.align	4
	.clink
	.global	DMA_ISR

$C$DW$457	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$457, DW_AT_name("DMA_ISR")
	.dwattr $C$DW$457, DW_AT_low_pc(DMA_ISR)
	.dwattr $C$DW$457, DW_AT_high_pc(0x00)
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("DMA_ISR")
	.dwattr $C$DW$457, DW_AT_external
	.dwattr $C$DW$457, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$457, DW_AT_TI_begin_line(0x4c5)
	.dwattr $C$DW$457, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$457, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$457, DW_AT_decl_line(0x4c5)
	.dwattr $C$DW$457, DW_AT_decl_column(0x12)
	.dwattr $C$DW$457, DW_AT_TI_interrupt
	.dwattr $C$DW$457, DW_AT_TI_max_frame_size(0x42)
	.dwpsn	file "../main.c",line 1222,column 1,is_stmt,address DMA_ISR,isa 0

	.dwfde $C$DW$CIE, DMA_ISR

;*****************************************************************************
;* FUNCTION NAME: DMA_ISR                                                    *
;*                                                                           *
;*   Regs Modified     : SP,SR,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15     *
;*   Regs Used         : SP,SR,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15     *
;*   Local Frame Size  : 12 Args + 2 Auto + 48 Save = 62 byte                *
;*****************************************************************************
DMA_ISR:
;* --------------------------------------------------------------------------*
;* r14   assigned to $O$U7
;* r12   assigned to $O$U25
;* r12   assigned to r2
$C$DW$458	.dwtag  DW_TAG_variable
	.dwattr $C$DW$458, DW_AT_name("r2")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("r2")
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$458, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg13 DW_OP_piece 2]

;* r12   assigned to rint
$C$DW$459	.dwtag  DW_TAG_variable
	.dwattr $C$DW$459, DW_AT_name("rint")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("rint")
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$459, DW_AT_location[DW_OP_reg12 DW_OP_piece 2 DW_OP_reg14 DW_OP_piece 2]

$C$DW$460	.dwtag  DW_TAG_variable
	.dwattr $C$DW$460, DW_AT_name("r")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("r")
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$460, DW_AT_location[DW_OP_breg1 12]

;* r7    assigned to nextseq
$C$DW$461	.dwtag  DW_TAG_variable
	.dwattr $C$DW$461, DW_AT_name("nextseq")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("nextseq")
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$461, DW_AT_location[DW_OP_reg7]

;* r15   assigned to g
$C$DW$462	.dwtag  DW_TAG_variable
	.dwattr $C$DW$462, DW_AT_name("g")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("g")
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$462, DW_AT_location[DW_OP_reg15]

	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 16, -4
        PUSHM.A   #12,r15               ; [] 
	.dwcfi	save_reg_to_mem, 15, -8
	.dwcfi	save_reg_to_mem, 14, -12
	.dwcfi	save_reg_to_mem, 13, -16
	.dwcfi	save_reg_to_mem, 12, -20
	.dwcfi	save_reg_to_mem, 11, -24
	.dwcfi	save_reg_to_mem, 10, -28
	.dwcfi	save_reg_to_mem, 9, -32
	.dwcfi	save_reg_to_mem, 8, -36
	.dwcfi	save_reg_to_mem, 7, -40
	.dwcfi	save_reg_to_mem, 6, -44
	.dwcfi	save_reg_to_mem, 5, -48
	.dwcfi	save_reg_to_mem, 4, -52
	.dwcfi	cfa_offset, 52
        SUBA      #14,SP                ; [] 
	.dwcfi	cfa_offset, 66
	.dwpsn	file "../main.c",line 1235,column 5,is_stmt,isa 0
        CMP.W     #2,&DMAIV+0           ; [] |1235| 
        JNE       $C$L315               ; [] |1235| 
                                          ; [] |1235| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1240,column 9,is_stmt,isa 0
        DINT
        NOP      ; [] |1240| 
	.dwpsn	file "../main.c",line 1245,column 9,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1245| 
        MOVX.A    102(r15),r14          ; [] |1245| 
        MOV.W     #0,r7                 ; [] |1245| 
        CMPA      r7,r14                ; [] |1245| 
        JEQ       $C$L305               ; [] |1245| 
                                          ; [] |1245| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1248,column 13,is_stmt,isa 0
        SUB.W     #1,98(r15)            ; [] |1248| 
	.dwpsn	file "../main.c",line 1249,column 13,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1249| 
        TST.W     98(r15)               ; [] |1249| 
        JNE       $C$L305               ; [] |1249| 
                                          ; [] |1249| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1253,column 17,is_stmt,isa 0
        MOVA      r14,r7                ; [] |1253| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 86,column 5,is_stmt,isa 0
        AND.B     #191,&PCOUT_H+0       ; [] |86| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 87,column 5,is_stmt,isa 0
        AND.B     #127,&PEOUT_L+0       ; [] |87| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 88,column 5,is_stmt,isa 0
        AND.B     #127,&PBOUT_L+0       ; [] |88| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 89,column 5,is_stmt,isa 0
        BIC.B     #8,&PCOUT_L+0         ; [] |89| 
	.dwpsn	file "../main.c",line 1266,column 17,is_stmt,isa 0
        MOVA      r7,r15                ; [] |1266| 
        ADDA      #10,r15               ; [] |1266| 
        MOVX.A    r15,&MAIN_DACBuffer+0 ; [] |1266| 
	.dwpsn	file "../main.c",line 1269,column 17,is_stmt,isa 0
$C$DW$463	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$463, DW_AT_low_pc(0x00)
	.dwattr $C$DW$463, DW_AT_name("DMA_RenewDACBuffer")
	.dwattr $C$DW$463, DW_AT_TI_call

        CALLA     #DMA_RenewDACBuffer   ; [] |1269| 
                                          ; [] |1269| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 114,column 5,is_stmt,isa 0
        MOV.W     @r7,r12               ; [] |114| 
        MOVA      r12,r15               ; [] |114| 
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L271               ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L270               ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JEQ       $C$L269               ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |114| 
        JNE       $C$L272               ; [] |114| 
                                          ; [] |114| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 126,column 9,is_stmt,isa 0
        OR.B      #8,&PCOUT_L+0         ; [] |126| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 127,column 9,is_stmt,isa 0
        JMP       $C$L272               ; [] |127| 
                                          ; [] |127| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L269:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 123,column 9,is_stmt,isa 0
        OR.B      #128,&PBOUT_L+0       ; [] |123| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 124,column 9,is_stmt,isa 0
        JMP       $C$L272               ; [] |124| 
                                          ; [] |124| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L270:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 120,column 9,is_stmt,isa 0
        OR.B      #128,&PEOUT_L+0       ; [] |120| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 121,column 9,is_stmt,isa 0
        JMP       $C$L272               ; [] |121| 
                                          ; [] |121| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L271:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 117,column 9,is_stmt,isa 0
        OR.B      #64,&PCOUT_H+0        ; [] |117| 
;* --------------------------------------------------------------------------*
$C$L272:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 138,column 1,is_stmt,isa 0
        MOV.W     4(r7),r15             ; [] |138| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 139,column 5,is_stmt,isa 0
        CMP.W     #1,r12                ; [] |139| 
        JEQ       $C$L296               ; [] |139| 
                                          ; [] |139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 174,column 10,is_stmt,isa 0
        CMP.W     #2,r12                ; [] |174| 
        JEQ       $C$L288               ; [] |174| 
                                          ; [] |174| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 209,column 10,is_stmt,isa 0
        CMP.W     #3,r12                ; [] |209| 
        JEQ       $C$L280               ; [] |209| 
                                          ; [] |209| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 244,column 10,is_stmt,isa 0
        CMP.W     #4,r12                ; [] |244| 
        JNE       $C$L304               ; [] |244| 
                                          ; [] |244| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 247,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |247| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 248,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |248| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 249,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |249| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 250,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |250| 
        JEQ       $C$L279               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L278               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |250| 
        JEQ       $C$L277               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |250| 
        JEQ       $C$L276               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |250| 
        JEQ       $C$L275               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |250| 
        JEQ       $C$L274               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |250| 
        JEQ       $C$L273               ; [] |250| 
                                          ; [] |250| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 275,column 13,is_stmt,isa 0
        OR.B      #7,&PBOUT_L+0         ; [] |275| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 276,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |276| 
                                          ; [] |276| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L273:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 271,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |271| 
        BIC.B     #1,r15                ; [] |271| 
        OR.B      #6,r15                ; [] |271| 
        MOV.B     r15,&PBOUT_L+0        ; [] |271| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 272,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |272| 
                                          ; [] |272| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L274:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 268,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |268| 
        AND.B     &PBOUT_L+0,r15        ; [] |268| 
        OR.B      #5,r15                ; [] |268| 
        MOV.B     r15,&PBOUT_L+0        ; [] |268| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 269,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |269| 
                                          ; [] |269| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L275:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 265,column 13,is_stmt,isa 0
        MOV.W     #252,r15              ; [] |265| 
        AND.B     &PBOUT_L+0,r15        ; [] |265| 
        OR.B      #4,r15                ; [] |265| 
        MOV.B     r15,&PBOUT_L+0        ; [] |265| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 266,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |266| 
                                          ; [] |266| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L276:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 262,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |262| 
        AND.B     &PBOUT_L+0,r15        ; [] |262| 
        OR.B      #3,r15                ; [] |262| 
        MOV.B     r15,&PBOUT_L+0        ; [] |262| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 263,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |263| 
                                          ; [] |263| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L277:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 259,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |259| 
        AND.B     &PBOUT_L+0,r15        ; [] |259| 
        OR.B      #2,r15                ; [] |259| 
        MOV.B     r15,&PBOUT_L+0        ; [] |259| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 260,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |260| 
                                          ; [] |260| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L278:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 256,column 13,is_stmt,isa 0
        MOV.W     #248,r15              ; [] |256| 
        AND.B     &PBOUT_L+0,r15        ; [] |256| 
        OR.B      #1,r15                ; [] |256| 
        MOV.B     r15,&PBOUT_L+0        ; [] |256| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 257,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |257| 
                                          ; [] |257| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L279:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 253,column 13,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |253| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 254,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |254| 
                                          ; [] |254| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L280:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 212,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |212| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 213,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |213| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 214,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |214| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 215,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |215| 
        JEQ       $C$L287               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L286               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |215| 
        JEQ       $C$L285               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |215| 
        JEQ       $C$L284               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |215| 
        JEQ       $C$L283               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |215| 
        JEQ       $C$L282               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |215| 
        JEQ       $C$L281               ; [] |215| 
                                          ; [] |215| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 240,column 13,is_stmt,isa 0
        OR.B      #56,&PBOUT_L+0        ; [] |240| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 241,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |241| 
                                          ; [] |241| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L281:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 236,column 13,is_stmt,isa 0
        MOV.B     &PBOUT_L+0,r15        ; [] |236| 
        BIC.B     #8,r15                ; [] |236| 
        OR.B      #48,r15               ; [] |236| 
        MOV.B     r15,&PBOUT_L+0        ; [] |236| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 237,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |237| 
                                          ; [] |237| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L282:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 233,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |233| 
        AND.B     &PBOUT_L+0,r15        ; [] |233| 
        OR.B      #40,r15               ; [] |233| 
        MOV.B     r15,&PBOUT_L+0        ; [] |233| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 234,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |234| 
                                          ; [] |234| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L283:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 230,column 13,is_stmt,isa 0
        MOV.W     #231,r15              ; [] |230| 
        AND.B     &PBOUT_L+0,r15        ; [] |230| 
        OR.B      #32,r15               ; [] |230| 
        MOV.B     r15,&PBOUT_L+0        ; [] |230| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 231,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |231| 
                                          ; [] |231| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L284:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 227,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |227| 
        AND.B     &PBOUT_L+0,r15        ; [] |227| 
        OR.B      #24,r15               ; [] |227| 
        MOV.B     r15,&PBOUT_L+0        ; [] |227| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 228,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |228| 
                                          ; [] |228| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L285:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 224,column 13,is_stmt,isa 0
        MOV.W     #199,r15              ; [] |224| 
        AND.B     &PBOUT_L+0,r15        ; [] |224| 
        OR.B      #16,r15               ; [] |224| 
        MOV.B     r15,&PBOUT_L+0        ; [] |224| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 225,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |225| 
                                          ; [] |225| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L286:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 221,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |221| 
        AND.B     &PBOUT_L+0,r15        ; [] |221| 
        OR.B      #8,r15                ; [] |221| 
        MOV.B     r15,&PBOUT_L+0        ; [] |221| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 222,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |222| 
                                          ; [] |222| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L287:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 218,column 13,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |218| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 219,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |219| 
                                          ; [] |219| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L288:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 177,column 9,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |177| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 178,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |178| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 179,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |179| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 180,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |180| 
        JEQ       $C$L295               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L294               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |180| 
        JEQ       $C$L293               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |180| 
        JEQ       $C$L292               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |180| 
        JEQ       $C$L291               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |180| 
        JEQ       $C$L290               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |180| 
        JEQ       $C$L289               ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 205,column 13,is_stmt,isa 0
        OR.B      #14,&PAOUT_L+0        ; [] |205| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 206,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |206| 
                                          ; [] |206| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L289:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 201,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |201| 
        BIC.B     #2,r15                ; [] |201| 
        OR.B      #12,r15               ; [] |201| 
        MOV.B     r15,&PAOUT_L+0        ; [] |201| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 202,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |202| 
                                          ; [] |202| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L290:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 198,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |198| 
        BIC.B     #4,r15                ; [] |198| 
        OR.B      #10,r15               ; [] |198| 
        MOV.B     r15,&PAOUT_L+0        ; [] |198| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 199,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |199| 
                                          ; [] |199| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L291:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 195,column 13,is_stmt,isa 0
        MOV.W     #249,r15              ; [] |195| 
        AND.B     &PAOUT_L+0,r15        ; [] |195| 
        OR.B      #8,r15                ; [] |195| 
        MOV.B     r15,&PAOUT_L+0        ; [] |195| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 196,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |196| 
                                          ; [] |196| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L292:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 192,column 13,is_stmt,isa 0
        MOV.B     &PAOUT_L+0,r15        ; [] |192| 
        BIC.B     #8,r15                ; [] |192| 
        OR.B      #6,r15                ; [] |192| 
        MOV.B     r15,&PAOUT_L+0        ; [] |192| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 193,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |193| 
                                          ; [] |193| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L293:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 189,column 13,is_stmt,isa 0
        MOV.W     #241,r15              ; [] |189| 
        AND.B     &PAOUT_L+0,r15        ; [] |189| 
        OR.B      #4,r15                ; [] |189| 
        MOV.B     r15,&PAOUT_L+0        ; [] |189| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 190,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |190| 
                                          ; [] |190| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L294:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 186,column 13,is_stmt,isa 0
        MOV.W     #243,r15              ; [] |186| 
        AND.B     &PAOUT_L+0,r15        ; [] |186| 
        OR.B      #2,r15                ; [] |186| 
        MOV.B     r15,&PAOUT_L+0        ; [] |186| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 187,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |187| 
                                          ; [] |187| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L295:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 183,column 13,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |183| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 184,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |184| 
                                          ; [] |184| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L296:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 142,column 9,is_stmt,isa 0
        AND.B     #241,&PAOUT_L+0       ; [] |142| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 143,column 9,is_stmt,isa 0
        AND.B     #199,&PBOUT_L+0       ; [] |143| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 144,column 9,is_stmt,isa 0
        AND.B     #248,&PBOUT_L+0       ; [] |144| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 145,column 9,is_stmt,isa 0
        TST.W     r15                   ; [] |145| 
        JEQ       $C$L303               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L302               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #1,r15                ; [] |145| 
        JEQ       $C$L301               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #3,r15                ; [] |145| 
        JEQ       $C$L300               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #5,r15                ; [] |145| 
        JEQ       $C$L299               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #10,r15               ; [] |145| 
        JEQ       $C$L298               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
        SUB.W     #30,r15               ; [] |145| 
        JEQ       $C$L297               ; [] |145| 
                                          ; [] |145| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 170,column 13,is_stmt,isa 0
        OR.B      #112,&PAOUT_L+0       ; [] |170| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 171,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |171| 
                                          ; [] |171| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L297:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 166,column 13,is_stmt,isa 0
        MOV.W     #239,r15              ; [] |166| 
        AND.B     &PAOUT_L+0,r15        ; [] |166| 
        OR.B      #96,r15               ; [] |166| 
        MOV.B     r15,&PAOUT_L+0        ; [] |166| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 167,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |167| 
                                          ; [] |167| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L298:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 163,column 13,is_stmt,isa 0
        MOV.W     #223,r15              ; [] |163| 
        AND.B     &PAOUT_L+0,r15        ; [] |163| 
        OR.B      #80,r15               ; [] |163| 
        MOV.B     r15,&PAOUT_L+0        ; [] |163| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 164,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |164| 
                                          ; [] |164| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L299:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 160,column 13,is_stmt,isa 0
        MOV.W     #207,r15              ; [] |160| 
        AND.B     &PAOUT_L+0,r15        ; [] |160| 
        OR.B      #64,r15               ; [] |160| 
        MOV.B     r15,&PAOUT_L+0        ; [] |160| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 161,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |161| 
                                          ; [] |161| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L300:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 157,column 13,is_stmt,isa 0
        MOV.W     #191,r15              ; [] |157| 
        AND.B     &PAOUT_L+0,r15        ; [] |157| 
        OR.B      #48,r15               ; [] |157| 
        MOV.B     r15,&PAOUT_L+0        ; [] |157| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 158,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |158| 
                                          ; [] |158| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L301:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 154,column 13,is_stmt,isa 0
        MOV.W     #143,r15              ; [] |154| 
        AND.B     &PAOUT_L+0,r15        ; [] |154| 
        OR.B      #32,r15               ; [] |154| 
        MOV.B     r15,&PAOUT_L+0        ; [] |154| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 155,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |155| 
                                          ; [] |155| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L302:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 151,column 13,is_stmt,isa 0
        MOV.W     #159,r15              ; [] |151| 
        AND.B     &PAOUT_L+0,r15        ; [] |151| 
        OR.B      #16,r15               ; [] |151| 
        MOV.B     r15,&PAOUT_L+0        ; [] |151| 
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 152,column 13,is_stmt,isa 0
        JMP       $C$L304               ; [] |152| 
                                          ; [] |152| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L303:    
	.dwpsn	file "C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/gpio.h",line 148,column 13,is_stmt,isa 0
        AND.B     #143,&PAOUT_L+0       ; [] |148| 
;* --------------------------------------------------------------------------*
$C$L304:    
	.dwpsn	file "../main.c",line 1276,column 17,is_stmt,isa 0
        MOV.W     6(r7),r13             ; [] |1276| 
$C$DW$464	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$464, DW_AT_low_pc(0x00)
	.dwattr $C$DW$464, DW_AT_name("ADC_SetADCChannel")
	.dwattr $C$DW$464, DW_AT_TI_call

        CALLA     #ADC_SetADCChannel    ; [] |1276| 
                                          ; [] |1276| 
;* --------------------------------------------------------------------------*
$C$L305:    
	.dwpsn	file "../main.c",line 1291,column 9,is_stmt,isa 0
$C$DW$465	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$465, DW_AT_low_pc(0x00)
	.dwattr $C$DW$465, DW_AT_name("DSP_AnalysisLoop")
	.dwattr $C$DW$465, DW_AT_TI_call

        CALLA     #DSP_AnalysisLoop     ; [] |1291| 
                                          ; [] |1291| 
	.dwpsn	file "../main.c",line 1300,column 9,is_stmt,isa 0
        MOV.W     &MAIN_XAcc+0,r12      ; [] |1300| 
        MOV.W     &MAIN_XAcc+2,r13      ; [] |1300| 
        MOV.W     &MAIN_XAcc+0,r14      ; [] |1300| 
        MOV.W     &MAIN_XAcc+2,r15      ; [] |1300| 
$C$DW$466	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$466, DW_AT_low_pc(0x00)
	.dwattr $C$DW$466, DW_AT_name("__mspabi_mpyl_sw")
	.dwattr $C$DW$466, DW_AT_TI_call

        CALLA     #__mspabi_mpyl_sw     ; [] |1300| 
                                          ; [] |1300| 
        MOVA      r12,r9                ; [] |1300| 
        MOVA      r13,r10               ; [] |1300| 
        MOV.W     &MAIN_YAcc+0,r12      ; [] |1300| 
        MOV.W     &MAIN_YAcc+2,r13      ; [] |1300| 
        MOV.W     &MAIN_YAcc+0,r14      ; [] |1300| 
        MOV.W     &MAIN_YAcc+2,r15      ; [] |1300| 
$C$DW$467	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$467, DW_AT_low_pc(0x00)
	.dwattr $C$DW$467, DW_AT_name("__mspabi_mpyl_sw")
	.dwattr $C$DW$467, DW_AT_TI_call

        CALLA     #__mspabi_mpyl_sw     ; [] |1300| 
                                          ; [] |1300| 
        ADD.W     r9,r12                ; [] |1300| 
        ADDC.W    r10,r13               ; [] |1300| 
	.dwpsn	file "../main.c",line 1302,column 9,is_stmt,isa 0
        RLA.W     r12                   ; [] |1302| 
        ADDC.W    r13,r13               ; [] |1302| 
        RLA.W     r12                   ; [] |1302| 
        ADDC.W    r13,r13               ; [] |1302| 
$C$DW$468	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$468, DW_AT_low_pc(0x00)
	.dwattr $C$DW$468, DW_AT_name("__mspabi_fltuld")
	.dwattr $C$DW$468, DW_AT_TI_call

        CALLA     #__mspabi_fltuld      ; [] |1302| 
                                          ; [] |1302| 
$C$DW$469	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$469, DW_AT_low_pc(0x00)
	.dwattr $C$DW$469, DW_AT_name("sqrt")
	.dwattr $C$DW$469, DW_AT_TI_call

        CALLA     #sqrt                 ; [] |1302| 
                                          ; [] |1302| 
        MOV.W     r12,12(SP)            ; [] 
        MOVA      r13,r4                ; [] |1302| 
        MOVA      r14,r5                ; [] |1302| 
        MOVA      r15,r6                ; [] |1302| 
	.dwpsn	file "../main.c",line 1304,column 9,is_stmt,isa 0
        MOV.W     #0,r8                 ; [] |1304| 
        MOV.W     #0,r9                 ; [] |1304| 
        MOV.W     #65472,r10            ; [] |1304| 
        MOV.W     #16607,r11            ; [] |1304| 
$C$DW$470	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$470, DW_AT_low_pc(0x00)
	.dwattr $C$DW$470, DW_AT_name("__mspabi_cmpd")
	.dwattr $C$DW$470, DW_AT_TI_call

        CALLA     #__mspabi_cmpd        ; [] |1304| 
                                          ; [] |1304| 
        TST.W     r12                   ; [] |1304| 
        JL        $C$L306               ; [] |1304| 
                                          ; [] |1304| 
;* --------------------------------------------------------------------------*
        MOV.W     12(SP),r12            ; [] 
	.dwpsn	file "../main.c",line 1317,column 13,is_stmt,isa 0
        MOVA      r4,r13                ; [] |1317| 
        MOVA      r5,r14                ; [] |1317| 
        MOVA      r6,r15                ; [] |1317| 
$C$DW$471	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$471, DW_AT_low_pc(0x00)
	.dwattr $C$DW$471, DW_AT_name("__mspabi_fixdu")
	.dwattr $C$DW$471, DW_AT_TI_call

        CALLA     #__mspabi_fixdu       ; [] |1317| 
                                          ; [] |1317| 
        MOV.W     #0,r14                ; [] |1317| 
        JMP       $C$L307               ; [] |1317| 
                                          ; [] |1317| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L306:    
	.dwpsn	file "../main.c",line 1312,column 13,is_stmt,isa 0
        MOV.W     #32767,r12            ; [] |1312| 
        MOV.W     #0,r14                ; [] |1312| 
;* --------------------------------------------------------------------------*
$C$L307:    
	.dwpsn	file "../main.c",line 1325,column 9,is_stmt,isa 0
        TST.W     &CH_RunExclusions+0   ; [] |1325| 
        JNE       $C$L313               ; [] |1325| 
                                          ; [] |1325| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1358,column 13,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1358| 
        TSTX.A    102(r15)              ; [] |1358| 
        JNE       $C$L309               ; [] |1358| 
                                          ; [] |1358| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1373,column 17,is_stmt,isa 0
        TST.W     &MAIN_IndexNumber+0   ; [] |1373| 
        JNE       $C$L308               ; [] |1373| 
                                          ; [] |1373| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1375,column 21,is_stmt,isa 0
        MOVX.A    #$C$FSL37+0,0(SP)     ; [] |1375| 
        MOV.W     @r15,4(SP)            ; [] |1375| 
        MOV.W     r12,6(SP)             ; [] |1375| 
        MOV.W     r14,8(SP)             ; [] |1375| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1375| 
$C$DW$472	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$472, DW_AT_low_pc(0x00)
	.dwattr $C$DW$472, DW_AT_name("sprintf")
	.dwattr $C$DW$472, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1375| 
                                          ; [] |1375| 
$C$DW$473	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$473, DW_AT_low_pc(0x00)
	.dwattr $C$DW$473, DW_AT_name("UART1_puts")
	.dwattr $C$DW$473, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1375| 
                                          ; [] |1375| 
        JMP       $C$L311               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L308:    
	.dwpsn	file "../main.c",line 1379,column 21,is_stmt,isa 0
        MOVX.A    #$C$FSL38+0,0(SP)     ; [] |1379| 
        MOV.W     @r15,4(SP)            ; [] |1379| 
        MOV.W     r12,6(SP)             ; [] |1379| 
        MOV.W     r14,8(SP)             ; [] |1379| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1379| 
$C$DW$474	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$474, DW_AT_low_pc(0x00)
	.dwattr $C$DW$474, DW_AT_name("sprintf")
	.dwattr $C$DW$474, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1379| 
                                          ; [] |1379| 
$C$DW$475	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$475, DW_AT_low_pc(0x00)
	.dwattr $C$DW$475, DW_AT_name("UART1_puts")
	.dwattr $C$DW$475, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1379| 
                                          ; [] |1379| 
        JMP       $C$L311               ; [] |1379| 
                                          ; [] |1379| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L309:    
	.dwpsn	file "../main.c",line 1361,column 17,is_stmt,isa 0
        TST.W     &MAIN_IndexNumber+0   ; [] |1361| 
        JNE       $C$L310               ; [] |1361| 
                                          ; [] |1361| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1363,column 21,is_stmt,isa 0
        MOVX.A    #$C$FSL39+0,0(SP)     ; [] |1363| 
        MOV.W     &MAIN_SequenceNumber+0,4(SP) ; [] |1363| 
        MOV.W     @r15,6(SP)            ; [] |1363| 
        MOV.W     r12,8(SP)             ; [] |1363| 
        MOV.W     r14,10(SP)            ; [] |1363| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1363| 
$C$DW$476	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$476, DW_AT_low_pc(0x00)
	.dwattr $C$DW$476, DW_AT_name("sprintf")
	.dwattr $C$DW$476, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1363| 
                                          ; [] |1363| 
$C$DW$477	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$477, DW_AT_low_pc(0x00)
	.dwattr $C$DW$477, DW_AT_name("UART1_puts")
	.dwattr $C$DW$477, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1363| 
                                          ; [] |1363| 
        JMP       $C$L311               ; [] 
                                          ; [] 
;* --------------------------------------------------------------------------*
	.align	4
$C$L310:    
	.dwpsn	file "../main.c",line 1367,column 21,is_stmt,isa 0
        MOVX.A    #$C$FSL40+0,0(SP)     ; [] |1367| 
        MOV.W     &MAIN_SequenceNumber+0,4(SP) ; [] |1367| 
        MOV.W     @r15,6(SP)            ; [] |1367| 
        MOV.W     r12,8(SP)             ; [] |1367| 
        MOV.W     r14,10(SP)            ; [] |1367| 
        MOVX.A    #UART1_Output+0,r12   ; [] |1367| 
$C$DW$478	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$478, DW_AT_low_pc(0x00)
	.dwattr $C$DW$478, DW_AT_name("sprintf")
	.dwattr $C$DW$478, DW_AT_TI_call

        CALLA     #sprintf              ; [] |1367| 
                                          ; [] |1367| 
$C$DW$479	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$479, DW_AT_low_pc(0x00)
	.dwattr $C$DW$479, DW_AT_name("UART1_puts")
	.dwattr $C$DW$479, DW_AT_TI_call

        CALLA     #UART1_puts           ; [] |1367| 
                                          ; [] |1367| 
;* --------------------------------------------------------------------------*
$C$L311:    
	.dwpsn	file "../main.c",line 1384,column 13,is_stmt,isa 0
        MOV.W     #1,r15                ; [] |1384| 
        ADD.W     &MAIN_IndexNumber+0,r15 ; [] |1384| 
        AND.W     #15,r15               ; [] |1384| 
        MOV.W     r15,&MAIN_IndexNumber+0 ; [] |1384| 
	.dwpsn	file "../main.c",line 1387,column 13,is_stmt,isa 0
        TSTA      r7                    ; [] |1387| 
        JEQ       $C$L312               ; [] |1387| 
                                          ; [] |1387| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1390,column 17,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1390| 
        MOV.W     &MAIN_FilterTap1+0,74(r15) ; [] |1390| 
        MOV.W     &MAIN_FilterTap1+2,76(r15) ; [] |1390| 
	.dwpsn	file "../main.c",line 1391,column 17,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1391| 
        MOV.W     &MAIN_FilterTap2+0,78(r15) ; [] |1391| 
        MOV.W     &MAIN_FilterTap2+2,80(r15) ; [] |1391| 
	.dwpsn	file "../main.c",line 1392,column 17,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1392| 
        MOV.W     &MAIN_XFilterTap1+0,82(r15) ; [] |1392| 
        MOV.W     &MAIN_XFilterTap1+2,84(r15) ; [] |1392| 
	.dwpsn	file "../main.c",line 1393,column 17,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1393| 
        MOV.W     &MAIN_XFilterTap2+0,86(r15) ; [] |1393| 
        MOV.W     &MAIN_XFilterTap2+2,88(r15) ; [] |1393| 
	.dwpsn	file "../main.c",line 1394,column 17,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1394| 
        MOV.W     &MAIN_YFilterTap1+0,90(r15) ; [] |1394| 
        MOV.W     &MAIN_YFilterTap1+2,92(r15) ; [] |1394| 
	.dwpsn	file "../main.c",line 1395,column 17,is_stmt,isa 0
        MOVX.A    &CH_ActiveChannel+0,r15 ; [] |1395| 
        MOV.W     &MAIN_YFilterTap2+0,94(r15) ; [] |1395| 
        MOV.W     &MAIN_YFilterTap2+2,96(r15) ; [] |1395| 
	.dwpsn	file "../main.c",line 1398,column 17,is_stmt,isa 0
        MOVX.A    r7,&CH_ActiveChannel+0 ; [] |1398| 
	.dwpsn	file "../main.c",line 1401,column 17,is_stmt,isa 0
        MOV.W     74(r7),&MAIN_FilterTap1+0 ; [] |1401| 
        MOV.W     76(r7),&MAIN_FilterTap1+2 ; [] |1401| 
	.dwpsn	file "../main.c",line 1402,column 17,is_stmt,isa 0
        MOV.W     78(r7),&MAIN_FilterTap2+0 ; [] |1402| 
        MOV.W     80(r7),&MAIN_FilterTap2+2 ; [] |1402| 
	.dwpsn	file "../main.c",line 1403,column 17,is_stmt,isa 0
        MOV.W     82(r7),&MAIN_XFilterTap1+0 ; [] |1403| 
        MOV.W     84(r7),&MAIN_XFilterTap1+2 ; [] |1403| 
	.dwpsn	file "../main.c",line 1404,column 17,is_stmt,isa 0
        MOV.W     86(r7),&MAIN_XFilterTap2+0 ; [] |1404| 
        MOV.W     88(r7),&MAIN_XFilterTap2+2 ; [] |1404| 
	.dwpsn	file "../main.c",line 1405,column 17,is_stmt,isa 0
        MOV.W     90(r7),&MAIN_YFilterTap1+0 ; [] |1405| 
        MOV.W     92(r7),&MAIN_YFilterTap1+2 ; [] |1405| 
	.dwpsn	file "../main.c",line 1406,column 17,is_stmt,isa 0
        MOV.W     94(r7),&MAIN_YFilterTap2+0 ; [] |1406| 
        MOV.W     96(r7),&MAIN_YFilterTap2+2 ; [] |1406| 
	.dwpsn	file "../main.c",line 1409,column 17,is_stmt,isa 0
        MOV.W     100(r7),98(r7)        ; [] |1409| 
	.dwpsn	file "../main.c",line 1412,column 17,is_stmt,isa 0
        MOV.W     #1,r15                ; [] |1412| 
        ADD.W     &MAIN_SequenceNumber+0,r15 ; [] |1412| 
        AND.W     #3,r15                ; [] |1412| 
        MOV.W     r15,&MAIN_SequenceNumber+0 ; [] |1412| 
;* --------------------------------------------------------------------------*
$C$L312:    
	.dwpsn	file "../main.c",line 1416,column 13,is_stmt,isa 0
        CMP.W     #58848,&CH_RunCycles+0 ; [] |1416| 
        JEQ       $C$L314               ; [] |1416| 
                                          ; [] |1416| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1418,column 17,is_stmt,isa 0
        SUB.W     #1,&CH_RunCycles+0    ; [] |1418| 
        JNE       $C$L314               ; [] |1418| 
                                          ; [] |1418| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 1423,column 21,is_stmt,isa 0
        MOV.W     #1,r12                ; [] |1423| 
$C$DW$480	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$480, DW_AT_low_pc(0x00)
	.dwattr $C$DW$480, DW_AT_name("MAIN_ExecuteSTOP")
	.dwattr $C$DW$480, DW_AT_TI_call

        CALLA     #MAIN_ExecuteSTOP     ; [] |1423| 
                                          ; [] |1423| 
        JMP       $C$L314               ; [] |1423| 
                                          ; [] |1423| 
;* --------------------------------------------------------------------------*
	.align	4
$C$L313:    
	.dwpsn	file "../main.c",line 1327,column 13,is_stmt,isa 0
        SUB.W     #1,&CH_RunExclusions+0 ; [] |1327| 
;* --------------------------------------------------------------------------*
$C$L314:    
	.dwpsn	file "../main.c",line 1431,column 9,is_stmt,isa 0
        MOVX.A    #0,&MAIN_XAcc+0       ; [] |1431| 
	.dwpsn	file "../main.c",line 1432,column 9,is_stmt,isa 0
        MOVX.A    #0,&MAIN_YAcc+0       ; [] |1432| 
	.dwpsn	file "../main.c",line 1435,column 9,is_stmt,isa 0
        NOP
        EINT
        NOP      ; [] |1435| 
;* --------------------------------------------------------------------------*
$C$L315:    
        ADDA      #14,SP                ; [] 
	.dwcfi	cfa_offset, 52
        POPM.A    #12,r15               ; [] 
	.dwcfi	restore_reg, 4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 6
	.dwcfi	restore_reg, 7
	.dwcfi	restore_reg, 8
	.dwcfi	restore_reg, 9
	.dwcfi	restore_reg, 10
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 12
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 14
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 4
$C$DW$481	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$481, DW_AT_low_pc(0x00)
	.dwattr $C$DW$481, DW_AT_TI_return

        RETI      ; [] 
        ; [] 
	.dwattr $C$DW$457, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$457, DW_AT_TI_end_line(0x5a0)
	.dwattr $C$DW$457, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$457

;******************************************************************************
;* FAR STRINGS                                                                *
;******************************************************************************
	.sect	".const:.string"
	.align	2
$C$FSL1:	.string	"SAVE, Channel settings saved to backup memory.",10,0
	.align	2
$C$FSL2:	.string	"GPGAIN, Channel %d pre-amp gain is set to: %d.",10,0
	.align	2
$C$FSL3:	.string	"SPGAIN, Channel %d pre-amp gain set to %d successfully.",10
	.string	0
	.align	2
$C$FSL4:	.string	"GATTEN, Channel %d attenuation: %d.",10,0
	.align	2
$C$FSL5:	.string	"SATTEN, Channel %d attenuation set to: %d.",10,0
	.align	2
$C$FSL6:	.string	"GCLOCK,%d-%02d-%02dT%02d:%02d:%02dZ",10,0
	.align	2
$C$FSL7:	.string	"SCLOCK,%d-%02d-%02dT%02d:%02d:%02dZ",10,0
	.align	2
$C$FSL8:	.string	"STATUS,",9,"Channel %d:",10,0
	.align	2
$C$FSL9:	.string	"Target:",9,9,"%s",10,0
	.align	2
$C$FSL10:	.string	"Attenuation:",9,"%d",10,0
	.align	2
$C$FSL11:	.string	"Gain:",9,9,"%d",10,0
	.align	2
$C$FSL12:	.string	"Pregain:",9,"%d",10,0
	.align	2
$C$FSL13:	.string	"STATUS,",10,0
	.align	2
$C$FSL14:	.string	"PIXIE",0
	.align	2
$C$FSL15:	.string	"0.80",0
	.align	2
$C$FSL16:	.string	"00000",0
	.align	2
$C$FSL17:	.string	"%s : hv:%s fv:%s sn:%s",10,0
	.align	2
$C$FSL18:	.string	"Compiled: %s",9,"%s",10,0
	.align	2
$C$FSL19:	.string	"Feb 24 2025",0
	.align	2
$C$FSL20:	.string	"13:22:56",0
	.align	2
$C$FSL21:	.string	"State: %s",10,0
	.align	2
$C$FSL22:	.string	"STATUS, %s",10,0
	.align	2
$C$FSL23:	.string	"GGAIN, Channel %d gain is set to: %d.",10,0
	.align	2
$C$FSL24:	.string	"SGAIN, Channel %d gain set to %d successfully.",10,0
	.align	2
$C$FSL25:	.string	"STOP, Device halted successfully",10,0
	.align	2
$C$FSL26:	.string	"HELP, TODO: Fill in list of commands later.",10,0
	.align	2
$C$FSL27:	.string	"HELP, TODO: Fill in command details later.",10,0
	.align	2
$C$FSL28:	.string	"ERR, Unknown!!!",10,0
	.align	2
$C$FSL29:	.string	"ERR, Channel is locked!",10,0
	.align	2
$C$FSL30:	.string	"ERR, Can't execute while measuring.",10,0
	.align	2
$C$FSL31:	.string	"ERR, Improper field entry, skipping command.",10,0
	.align	2
$C$FSL32:	.string	"ERR, Extra fields detected, skipping command.",10,0
	.align	2
$C$FSL33:	.string	"ERR, No fields where expected, skipping command.",10,0
	.align	2
$C$FSL34:	.string	"ERR, Bad Command or format.",10,0
	.align	2
$C$FSL35:	.string	10,">>",0
	.align	2
$C$FSL36:	.string	"RESET, Device entering reset condition.",10,10,0
	.align	2
$C$FSL37:	.string	"DATI,%u,%d",10,0
	.align	2
$C$FSL38:	.string	"DATA,%u,%d",10,0
	.align	2
$C$FSL39:	.string	"SEQI,%u,%u,%d",10,0
	.align	2
$C$FSL40:	.string	"SEQN,%u,%u,%d",10,0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	BAKCTL
	.global	DAC12_0DAT
	.global	DAC12_1DAT
	.global	DMAIV
	.global	PAOUT_L
	.global	PBOUT_L
	.global	PCOUT_L
	.global	PCOUT_H
	.global	PEOUT_L
	.global	RTCIV
	.global	SINE_cosADC
	.global	SINE_sinADC
	.global	SINE_cosDAC
	.global	SINE_sinDAC
	.global	CH_Channels
	.global	CH_ActiveChannel
	.global	CH_ChannelSequence
	.global	CH_RunCycles
	.global	CH_RunExclusions
	.global	CMD_Command
	.global	UART1_Output
	.global	UART1_Input
	.global	WDT_InitializeWDT
	.global	GPIO_InitializeGPIO
	.global	ADC_InitializeADC
	.global	DAC_InitializeDAC
	.global	OPAMP_InitializeOPAMP
	.global	CLK_InitializeCLK
	.global	UART_InitializeUART
	.global	DMA_InitializeDMA
	.global	TIMER_InitializeTimers
	.global	STATE_InitializeState
	.global	CH_InitializeChannels
	.global	BAK_AssessBatteryBackup
	.global	BAK_CommitBatteryBackup
	.global	STATE_IsRunning
	.global	UART1_puts
	.global	sprintf
	.global	WDT_SoftwareReset
	.global	CMD_ParseCommand
	.global	STATE_IsIdle
	.global	STATE_SetState
	.global	DMA_RenewDACBuffer
	.global	ADC_SetADCChannel
	.global	DMA_SetDMA0
	.global	DMA_SetDMA1
	.global	TIMER_StartTimer0AND1
	.global	TIMER_StartTimer0
	.global	TIMER_ResetTimer0
	.global	TIMER_ResetTimer1
	.global	TIMER_StartTimer1
	.global	ADC_CheckChannelGain
	.global	STATE_GetStateName
	.global	PIXIE_TypeStrings
	.global	DSP_AnalysisLoop
	.global	sqrt
	.global	CLK_SetRTC
	.global	CLK_GetRTC
	.global	__mspabi_srli
	.global	__mspabi_srlll
	.global	__mspabi_fltuld
	.global	__mspabi_mpyl_sw
	.global	__mspabi_cmpd
	.global	__mspabi_fixdu
;*****************************************************************************
;* SECTION GROUPS                                                            *
;*****************************************************************************
	.group    "__fpclassify", 1
	.gmember  ".text:__fpclassify"
	.endgroup
	.group    "__fpclassifyf", 1
	.gmember  ".text:__fpclassifyf"
	.endgroup
	.group    "__fpclassifyl", 1
	.gmember  ".text:__fpclassifyl"
	.endgroup
	.group    "__isfinite", 1
	.gmember  ".text:__isfinite"
	.endgroup
	.group    "__isfinitef", 1
	.gmember  ".text:__isfinitef"
	.endgroup
	.group    "__isfinitel", 1
	.gmember  ".text:__isfinitel"
	.endgroup
	.group    "__isinf", 1
	.gmember  ".text:__isinf"
	.endgroup
	.group    "__isinff", 1
	.gmember  ".text:__isinff"
	.endgroup
	.group    "__isinfl", 1
	.gmember  ".text:__isinfl"
	.endgroup
	.group    "__isnan", 1
	.gmember  ".text:__isnan"
	.endgroup
	.group    "__isnanf", 1
	.gmember  ".text:__isnanf"
	.endgroup
	.group    "__isnanl", 1
	.gmember  ".text:__isnanl"
	.endgroup
	.group    "__isnormal", 1
	.gmember  ".text:__isnormal"
	.endgroup
	.group    "__isnormalf", 1
	.gmember  ".text:__isnormalf"
	.endgroup
	.group    "__isnormall", 1
	.gmember  ".text:__isnormall"
	.endgroup
	.group    "__signbit", 1
	.gmember  ".text:__signbit"
	.endgroup
	.group    "__signbitf", 1
	.gmember  ".text:__signbitf"
	.endgroup
	.group    "__signbitl", 1
	.gmember  ".text:__signbitl"
	.endgroup


;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(2)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ00000000000011111000000000000000000000000000")
	.battr "TI", Tag_File, 1, Tag_LEA_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY32_INFO(2)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_ISR_INFO(3)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_INLINE_INFO(2)
	.battr "mspabi", Tag_File, 1, Tag_enum_size(3)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x0c)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$482, DW_AT_name("year")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("year")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$482, DW_AT_decl_column(0x11)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$483, DW_AT_name("month")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("month")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$483, DW_AT_decl_column(0x11)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$484, DW_AT_name("day")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("day")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$484, DW_AT_decl_column(0x11)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$485, DW_AT_name("hour")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("hour")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$485, DW_AT_decl_column(0x11)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$486, DW_AT_name("min")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("min")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$486, DW_AT_decl_column(0x11)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$487, DW_AT_name("sec")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("sec")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$487, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$24, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("CLK_TimeStamp")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("C:\Users\kyle_\Documents\CodeComposerStudio\PIXIE_MSP430\inc\clk.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x03)

$C$DW$T$50	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$50, DW_AT_address_class(0x14)


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x6a)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$488, DW_AT_name("id")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x22)
	.dwattr $C$DW$488, DW_AT_decl_column(0x15)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$489, DW_AT_name("typeid")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("typeid")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x23)
	.dwattr $C$DW$489, DW_AT_decl_column(0x15)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$490, DW_AT_name("pregain")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("pregain")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x24)
	.dwattr $C$DW$490, DW_AT_decl_column(0x15)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$491, DW_AT_name("gain")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("gain")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x25)
	.dwattr $C$DW$491, DW_AT_decl_column(0x15)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$492, DW_AT_name("attenuation")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("attenuation")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x26)
	.dwattr $C$DW$492, DW_AT_decl_column(0x15)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$493, DW_AT_name("DACbuffer")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("DACbuffer")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x29)
	.dwattr $C$DW$493, DW_AT_decl_column(0x15)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$494, DW_AT_name("tap1")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("tap1")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$494, DW_AT_decl_column(0x15)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$495, DW_AT_name("tap2")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("tap2")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$495, DW_AT_decl_column(0x15)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$496, DW_AT_name("xtap1")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("xtap1")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x30)
	.dwattr $C$DW$496, DW_AT_decl_column(0x15)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$497, DW_AT_name("xtap2")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("xtap2")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x31)
	.dwattr $C$DW$497, DW_AT_decl_column(0x15)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$498, DW_AT_name("ytap1")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("ytap1")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x32)
	.dwattr $C$DW$498, DW_AT_decl_column(0x15)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$499, DW_AT_name("ytap2")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("ytap2")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x33)
	.dwattr $C$DW$499, DW_AT_decl_column(0x15)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$500, DW_AT_name("cycles")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("cycles")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x35)
	.dwattr $C$DW$500, DW_AT_decl_column(0x15)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$501, DW_AT_name("seqcycles")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("seqcycles")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x36)
	.dwattr $C$DW$501, DW_AT_decl_column(0x15)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$502, DW_AT_name("next")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("next")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x37)
	.dwattr $C$DW$502, DW_AT_decl_column(0x15)

	.dwattr $C$DW$T$28, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$28

$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("CH_ChannelSpec")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/channels.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x03)

$C$DW$T$53	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$53, DW_AT_address_class(0x14)


$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x14)
$C$DW$503	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$503, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x1a8)
$C$DW$504	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$504, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$55


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$505, DW_AT_name("channel")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("channel")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x58)
	.dwattr $C$DW$505, DW_AT_decl_column(0x15)

	.dwattr $C$DW$T$29, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$29

$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("CMD_ChannelArgs")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x03)


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x04)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$506, DW_AT_name("channel")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("channel")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$506, DW_AT_decl_column(0x15)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$507, DW_AT_name("value")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("value")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$507, DW_AT_decl_column(0x15)

	.dwattr $C$DW$T$30, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$30

$C$DW$T$45	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$45, DW_AT_name("CMD_SettingArgs")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x03)


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x04)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$508, DW_AT_name("channel")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("channel")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x63)
	.dwattr $C$DW$508, DW_AT_decl_column(0x15)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$509, DW_AT_name("duration")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("duration")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x64)
	.dwattr $C$DW$509, DW_AT_decl_column(0x15)

	.dwattr $C$DW$T$31, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$31

$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("CMD_RunningArgs")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x03)


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x0e)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$510, DW_AT_name("id")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$510, DW_AT_decl_column(0x15)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$511, DW_AT_name("data")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$511, DW_AT_decl_column(0x15)

	.dwattr $C$DW$T$33, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$33

$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("CMD_CommandContainer")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x03)


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x42)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$512, DW_AT_name("buffer")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("buffer")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$512, DW_AT_decl_column(0x11)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$513, DW_AT_name("len")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$513, DW_AT_decl_column(0x11)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$514, DW_AT_name("pos")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("pos")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$514, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$38, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$38

$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("UART_Buffer")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/uart.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x03)


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x10)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$515, DW_AT_name("__max_align1")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("__max_align1")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0c)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$516, DW_AT_name("__max_align2")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("__max_align2")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$39, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$39

$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("__max_align_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x03)


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x04)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$517, DW_AT_name("quot")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x56)
	.dwattr $C$DW$517, DW_AT_decl_column(0x16)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$518, DW_AT_name("rem")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x56)
	.dwattr $C$DW$518, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$40, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$40

$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("div_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$65, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$65, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x23)


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x08)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$519, DW_AT_name("quot")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x59)
	.dwattr $C$DW$519, DW_AT_decl_column(0x17)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$520, DW_AT_name("rem")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x59)
	.dwattr $C$DW$520, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$41, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$41

$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("ldiv_t")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$66, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$66, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x24)


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x10)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$521, DW_AT_name("quot")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("quot")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x63)
	.dwattr $C$DW$521, DW_AT_decl_column(0x1c)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$522, DW_AT_name("rem")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("rem")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x63)
	.dwattr $C$DW$522, DW_AT_decl_column(0x22)

	.dwattr $C$DW$T$42, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$42

$C$DW$T$67	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$67, DW_AT_name("lldiv_t")
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$67, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$67, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x29)


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x0c)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$523, DW_AT_name("ERR")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("ERR")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$523, DW_AT_decl_column(0x15)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$524, DW_AT_name("CLOCK")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("CLOCK")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x70)
	.dwattr $C$DW$524, DW_AT_decl_column(0x15)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$525, DW_AT_name("HELP")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("HELP")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x72)
	.dwattr $C$DW$525, DW_AT_decl_column(0x15)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$526, DW_AT_name("STATUS")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("STATUS")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x73)
	.dwattr $C$DW$526, DW_AT_decl_column(0x15)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$527, DW_AT_name("GATTEN")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("GATTEN")
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x74)
	.dwattr $C$DW$527, DW_AT_decl_column(0x15)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$528, DW_AT_name("GGAIN")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("GGAIN")
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x75)
	.dwattr $C$DW$528, DW_AT_decl_column(0x15)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$529, DW_AT_name("GPGAIN")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("GPGAIN")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x76)
	.dwattr $C$DW$529, DW_AT_decl_column(0x15)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$530, DW_AT_name("FLOOD")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("FLOOD")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x77)
	.dwattr $C$DW$530, DW_AT_decl_column(0x15)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$531, DW_AT_name("SGAIN")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("SGAIN")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x79)
	.dwattr $C$DW$531, DW_AT_decl_column(0x15)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$532, DW_AT_name("SPGAIN")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("SPGAIN")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$532, DW_AT_decl_column(0x15)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$533, DW_AT_name("SATTEN")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("SATTEN")
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$533, DW_AT_decl_column(0x15)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$534, DW_AT_name("RUN")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("RUN")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$534, DW_AT_decl_column(0x15)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$535, DW_AT_name("SPOOF")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("SPOOF")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$535, DW_AT_decl_column(0x15)

	.dwattr $C$DW$T$47, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$47

$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("CMD_CommandData")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc/cmd.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x14)


$C$DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$68

$C$DW$T$69	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$69, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$69, DW_AT_address_class(0x14)

$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("__TI_atexit_fn")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$70, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x14)


$C$DW$T$77	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$77, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$77

$C$DW$T$78	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_address_class(0x14)

$C$DW$T$79	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$79, DW_AT_name("__SFR_FARPTR")
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_decl_file("C:\ti\ccs1250\ccs\ccs_base\msp430\include\msp430fg6626.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x11)

$C$DW$536	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$2)

$C$DW$T$80	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$536)

$C$DW$T$81	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$81, DW_AT_address_class(0x14)

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("__int8_t")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$82, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$82, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x16)

$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("__int_least8_t")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$83, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x12)

$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$84, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x19)

$C$DW$T$85	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$85, DW_AT_name("int8_t")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x13)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$48	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$48, DW_AT_address_class(0x14)

$C$DW$537	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$6)

$C$DW$T$86	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$537)

$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("__uint8_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x18)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("__sa_family_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x13)

$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x13)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$95, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x1a)

$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x14)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x02)

$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("_Mbstatet")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x0d)

$C$DW$T$97	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$97, DW_AT_name("__mbstate_t")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x13)

$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("__accmode_t")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x0e)


$C$DW$T$110	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
$C$DW$538	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$81)

$C$DW$539	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$81)

	.dwendtag $C$DW$T$110

$C$DW$T$111	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x14)

$C$DW$T$112	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$112, DW_AT_name("__TI_compar_fn")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x13)

$C$DW$T$117	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$117, DW_AT_name("__cpulevel_t")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x0e)

$C$DW$T$118	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$118, DW_AT_name("__cpusetid_t")
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$118, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$118, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x0e)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__cpuwhich_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x0e)

$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("__ct_rune_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$120, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$120, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x0e)

$C$DW$T$121	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$121, DW_AT_name("__rune_t")
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$121, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x15)

$C$DW$T$122	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$122, DW_AT_name("__wint_t")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x15)

$C$DW$T$123	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$123, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x0f)

$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("__int_fast16_t")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$124, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x13)

$C$DW$T$125	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$125, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$125, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x19)

$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("__int_fast8_t")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x13)

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$127, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x18)

$C$DW$T$128	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$128, DW_AT_name("__int_least16_t")
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$128, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x13)

$C$DW$T$129	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$129, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$129, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x1a)

$C$DW$T$130	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$130, DW_AT_name("__register_t")
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$130, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$130, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x13)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("int16_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x14)

$C$DW$540	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$131)

$C$DW$T$132	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$540)


$C$DW$T$133	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x20)
$C$DW$541	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$541, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$133

$C$DW$542	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$131)

$C$DW$T$134	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$542)


$C$DW$T$135	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x400)
$C$DW$543	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$543, DW_AT_upper_bound(0x1ff)

	.dwendtag $C$DW$T$135

$C$DW$T$136	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$136, DW_AT_name("__nl_item")
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x0e)

$C$DW$T$137	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$137, DW_AT_name("__ptrdiff_t")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x1c)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$138	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$138, DW_AT_name("___wchar_t")
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$138, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$138, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x1a)

$C$DW$544	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$11)

$C$DW$T$141	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$544)

$C$DW$T$157	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$157, DW_AT_name("__size_t")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$157, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$157, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$157, DW_AT_decl_column(0x19)

$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x17)

$C$DW$T$158	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$158, DW_AT_name("__mode_t")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$158, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x14)

$C$DW$T$159	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$159, DW_AT_name("__u_register_t")
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$159, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x14)

$C$DW$T$160	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$160, DW_AT_name("__uint_fast16_t")
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$160, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$160, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$160, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$160, DW_AT_decl_column(0x14)

$C$DW$T$161	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$161, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x1a)

$C$DW$T$162	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$162, DW_AT_name("__uint_fast8_t")
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$162, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$162, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x14)

$C$DW$T$163	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$163, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$163, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x19)

$C$DW$T$164	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$164, DW_AT_name("__uint_least16_t")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$164, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x14)

$C$DW$T$165	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$165, DW_AT_name("__char16_t")
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$165, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$165, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$165, DW_AT_decl_column(0x1a)

$C$DW$T$166	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$166, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$T$166, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$166, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x1a)

$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$23, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x15)


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x40)
$C$DW$545	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$545, DW_AT_upper_bound(0x1f)

	.dwendtag $C$DW$T$25

$C$DW$546	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$23)

$C$DW$T$172	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$546)


$C$DW$T$173	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$173, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$173, DW_AT_byte_size(0x40)
$C$DW$547	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$547, DW_AT_upper_bound(0x1f)

	.dwendtag $C$DW$T$173

$C$DW$548	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$23)

$C$DW$T$174	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$548)

$C$DW$T$175	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$175, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$T$175, DW_AT_address_class(0x14)

$C$DW$T$176	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$176, DW_AT_name("__useconds_t")
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$176, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$176, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$176, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$176, DW_AT_decl_column(0x16)

$C$DW$T$177	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$177, DW_AT_name("size_t")
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$177, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$177, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$177, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$177, DW_AT_decl_column(0x19)

$C$DW$T$179	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$179, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$179, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$179, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$179, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdlib.h")
	.dwattr $C$DW$T$179, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$179, DW_AT_decl_column(0x1a)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)

$C$DW$T$183	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$183, DW_AT_name("__blksize_t")
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$183, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$183, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$183, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$183, DW_AT_decl_column(0x13)

$C$DW$T$184	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$184, DW_AT_name("__clockid_t")
	.dwattr $C$DW$T$184, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$184, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$184, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$184, DW_AT_decl_column(0x13)

$C$DW$T$185	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$185, DW_AT_name("__critical_t")
	.dwattr $C$DW$T$185, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$185, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$185, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$185, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$185, DW_AT_decl_column(0x13)

$C$DW$T$186	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$186, DW_AT_name("__int_fast32_t")
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$186, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$186, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$186, DW_AT_decl_column(0x13)

$C$DW$T$187	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$187, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$187, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$187, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$187, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$187, DW_AT_decl_column(0x19)

$C$DW$T$188	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$188, DW_AT_name("__int_least32_t")
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$188, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$188, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$188, DW_AT_decl_column(0x13)

$C$DW$T$189	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$189, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$T$189, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$189, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$189, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$189, DW_AT_decl_column(0x1a)

$C$DW$T$190	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$190, DW_AT_name("__intfptr_t")
	.dwattr $C$DW$T$190, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$190, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$190, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$190, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$190, DW_AT_decl_column(0x13)

$C$DW$T$191	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$191, DW_AT_name("__intptr_t")
	.dwattr $C$DW$T$191, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$191, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$191, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$191, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$191, DW_AT_decl_column(0x13)

$C$DW$T$192	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$192, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$T$192, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$192, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$192, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$192, DW_AT_decl_column(0x15)

$C$DW$T$193	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$193, DW_AT_name("__lwpid_t")
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$193, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$193, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$193, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$193, DW_AT_decl_column(0x13)

$C$DW$T$194	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$194, DW_AT_name("__pid_t")
	.dwattr $C$DW$T$194, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$194, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$194, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$194, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$194, DW_AT_decl_column(0x13)

$C$DW$T$195	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$195, DW_AT_name("__segsz_t")
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$195, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$195, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$195, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$195, DW_AT_decl_column(0x13)

$C$DW$T$196	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$196, DW_AT_name("__ssize_t")
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$196, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$196, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$196, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$196, DW_AT_decl_column(0x13)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("int32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x14)

$C$DW$549	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$27)

$C$DW$T$197	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$549)


$C$DW$T$198	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$T$198, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$198, DW_AT_byte_size(0x40)
$C$DW$550	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$550, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$198

$C$DW$T$199	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$199, DW_AT_name("__key_t")
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$199, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$199, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$199, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$199, DW_AT_decl_column(0x0f)

$C$DW$T$200	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$200, DW_AT_name("__suseconds_t")
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$200, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$200, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$200, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$200, DW_AT_decl_column(0x0f)

$C$DW$T$201	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$201, DW_AT_name("_off_t")
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$201, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$201, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$201, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$201, DW_AT_decl_column(0x12)

$C$DW$T$202	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$202, DW_AT_name("__off_t")
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$T$202, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$202, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$202, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$202, DW_AT_decl_column(0x18)

$C$DW$T$203	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$203, DW_AT_name("fpos_t")
	.dwattr $C$DW$T$203, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$203, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$203, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$T$203, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$203, DW_AT_decl_column(0x0e)

$C$DW$T$204	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$204, DW_AT_name("off_t")
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$204, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$204, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$T$204, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$204, DW_AT_decl_column(0x0e)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$205	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$205, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$205, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$205, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$205, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$205, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$205, DW_AT_decl_column(0x18)

$C$DW$T$206	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$206, DW_AT_name("__clock_t")
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$206, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$206, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$206, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$206, DW_AT_decl_column(0x14)

$C$DW$T$207	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$207, DW_AT_name("__fflags_t")
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$207, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$207, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$207, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$207, DW_AT_decl_column(0x14)

$C$DW$T$208	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$208, DW_AT_name("__fixpt_t")
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$208, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$208, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$208, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$208, DW_AT_decl_column(0x14)

$C$DW$T$209	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$209, DW_AT_name("__gid_t")
	.dwattr $C$DW$T$209, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$209, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$209, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$209, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$209, DW_AT_decl_column(0x14)

$C$DW$T$210	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$210, DW_AT_name("__socklen_t")
	.dwattr $C$DW$T$210, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$210, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$210, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$210, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$210, DW_AT_decl_column(0x14)

$C$DW$T$211	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$211, DW_AT_name("__time_t")
	.dwattr $C$DW$T$211, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$211, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$211, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$211, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$211, DW_AT_decl_column(0x19)

$C$DW$T$212	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$212, DW_AT_name("__uid_t")
	.dwattr $C$DW$T$212, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$212, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$212, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$212, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$212, DW_AT_decl_column(0x14)

$C$DW$T$213	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$213, DW_AT_name("__uint_fast32_t")
	.dwattr $C$DW$T$213, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$213, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$213, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$213, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$213, DW_AT_decl_column(0x14)

$C$DW$T$214	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$214, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$214, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$T$214, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$214, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$214, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$214, DW_AT_decl_column(0x1a)

$C$DW$T$215	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$215, DW_AT_name("__uint_least32_t")
	.dwattr $C$DW$T$215, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$215, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$215, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$215, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$215, DW_AT_decl_column(0x14)

$C$DW$T$216	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$216, DW_AT_name("__char32_t")
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$T$216, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$216, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$216, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$216, DW_AT_decl_column(0x1a)

$C$DW$T$217	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$217, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$215)
	.dwattr $C$DW$T$217, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$217, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$217, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$217, DW_AT_decl_column(0x1a)

$C$DW$T$218	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$218, DW_AT_name("__uintfptr_t")
	.dwattr $C$DW$T$218, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$218, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$218, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$218, DW_AT_decl_column(0x14)

$C$DW$T$219	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$219, DW_AT_name("__uintptr_t")
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$219, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$219, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$219, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$219, DW_AT_decl_column(0x14)

$C$DW$T$220	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$220, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$220, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$T$220, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$220, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$220, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$220, DW_AT_decl_column(0x16)

$C$DW$T$221	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$221, DW_AT_name("__vm_offset_t")
	.dwattr $C$DW$T$221, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$221, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$221, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$221, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$221, DW_AT_decl_column(0x14)

$C$DW$T$222	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$222, DW_AT_name("__vm_paddr_t")
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$222, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$222, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$222, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$222, DW_AT_decl_column(0x14)

$C$DW$T$223	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$223, DW_AT_name("__vm_size_t")
	.dwattr $C$DW$T$223, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$223, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$223, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$223, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$223, DW_AT_decl_column(0x14)

$C$DW$T$224	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$224, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$224, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$224, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$224, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$224, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$224, DW_AT_decl_column(0x15)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$225	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$225, DW_AT_name("__int64_t")
	.dwattr $C$DW$T$225, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$225, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$225, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$225, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$225, DW_AT_decl_column(0x14)

$C$DW$T$226	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$226, DW_AT_name("__blkcnt_t")
	.dwattr $C$DW$T$226, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$226, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$226, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$226, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$226, DW_AT_decl_column(0x13)

$C$DW$T$227	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$227, DW_AT_name("__id_t")
	.dwattr $C$DW$T$227, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$227, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$227, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$227, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$227, DW_AT_decl_column(0x13)

$C$DW$T$228	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$228, DW_AT_name("__int_fast64_t")
	.dwattr $C$DW$T$228, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$228, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$228, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$228, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$228, DW_AT_decl_column(0x13)

$C$DW$T$229	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$229, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$229, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$229, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$229, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$229, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$229, DW_AT_decl_column(0x19)

$C$DW$T$230	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$230, DW_AT_name("__int_least64_t")
	.dwattr $C$DW$T$230, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$230, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$230, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$230, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$230, DW_AT_decl_column(0x13)

$C$DW$T$231	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$231, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$T$231, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$231, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$231, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$231, DW_AT_decl_column(0x1a)

$C$DW$T$232	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$232, DW_AT_name("__intmax_t")
	.dwattr $C$DW$T$232, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$232, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$232, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$232, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$232, DW_AT_decl_column(0x13)

$C$DW$T$233	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$233, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$233, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$T$233, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$233, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$233, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$233, DW_AT_decl_column(0x15)

$C$DW$T$234	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$234, DW_AT_name("__off64_t")
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$234, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$234, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$234, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$234, DW_AT_decl_column(0x13)

$C$DW$T$235	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$235, DW_AT_name("__rlim_t")
	.dwattr $C$DW$T$235, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$235, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$235, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$235, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$235, DW_AT_decl_column(0x13)

$C$DW$T$236	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$236, DW_AT_name("int64_t")
	.dwattr $C$DW$T$236, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$T$236, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$236, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$236, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$236, DW_AT_decl_column(0x14)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$237	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$237, DW_AT_name("__uint64_t")
	.dwattr $C$DW$T$237, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$237, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$237, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$237, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$237, DW_AT_decl_column(0x1c)

$C$DW$T$238	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$238, DW_AT_name("__dev_t")
	.dwattr $C$DW$T$238, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$238, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$238, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$238, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$238, DW_AT_decl_column(0x14)

$C$DW$T$239	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$239, DW_AT_name("__fsblkcnt_t")
	.dwattr $C$DW$T$239, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$239, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$239, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$239, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$239, DW_AT_decl_column(0x14)

$C$DW$T$240	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$240, DW_AT_name("__fsfilcnt_t")
	.dwattr $C$DW$T$240, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$240, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$240, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$240, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$240, DW_AT_decl_column(0x14)

$C$DW$T$241	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$241, DW_AT_name("__ino_t")
	.dwattr $C$DW$T$241, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$241, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$241, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$241, DW_AT_decl_line(0x37)
	.dwattr $C$DW$T$241, DW_AT_decl_column(0x14)

$C$DW$T$242	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$242, DW_AT_name("__nlink_t")
	.dwattr $C$DW$T$242, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$242, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$242, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$242, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$242, DW_AT_decl_column(0x14)

$C$DW$T$243	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$243, DW_AT_name("__uint_fast64_t")
	.dwattr $C$DW$T$243, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$243, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$243, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$243, DW_AT_decl_line(0x73)
	.dwattr $C$DW$T$243, DW_AT_decl_column(0x14)

$C$DW$T$244	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$244, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$244, DW_AT_type(*$C$DW$T$243)
	.dwattr $C$DW$T$244, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$244, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$244, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$244, DW_AT_decl_column(0x1a)

$C$DW$T$245	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$245, DW_AT_name("__uint_least64_t")
	.dwattr $C$DW$T$245, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$245, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$245, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$245, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$245, DW_AT_decl_column(0x14)

$C$DW$T$246	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$246, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$246, DW_AT_type(*$C$DW$T$245)
	.dwattr $C$DW$T$246, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$246, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$246, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$246, DW_AT_decl_column(0x1a)

$C$DW$T$247	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$247, DW_AT_name("__uintmax_t")
	.dwattr $C$DW$T$247, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$247, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$247, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$247, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$247, DW_AT_decl_column(0x14)

$C$DW$T$248	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$248, DW_AT_name("__rman_res_t")
	.dwattr $C$DW$T$248, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$T$248, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$248, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$248, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$248, DW_AT_decl_column(0x19)

$C$DW$T$249	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$249, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$249, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$T$249, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$249, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$249, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$249, DW_AT_decl_column(0x16)

$C$DW$T$250	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$250, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$250, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$250, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$250, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$250, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$250, DW_AT_decl_column(0x15)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$252	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$252, DW_AT_name("__float_t")
	.dwattr $C$DW$T$252, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$252, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$252, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$252, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$252, DW_AT_decl_column(0x10)

$C$DW$T$253	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$253, DW_AT_name("float_t")
	.dwattr $C$DW$T$253, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$253, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$253, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/math.h")
	.dwattr $C$DW$T$253, DW_AT_decl_line(0x163)
	.dwattr $C$DW$T$253, DW_AT_decl_column(0x0f)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$551	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$17)

$C$DW$T$256	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$256, DW_AT_type(*$C$DW$551)

$C$DW$T$257	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$257, DW_AT_name("__double_t")
	.dwattr $C$DW$T$257, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$257, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$257, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$257, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$257, DW_AT_decl_column(0x11)

$C$DW$T$258	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$258, DW_AT_name("double_t")
	.dwattr $C$DW$T$258, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$258, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$258, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/math.h")
	.dwattr $C$DW$T$258, DW_AT_decl_line(0x162)
	.dwattr $C$DW$T$258, DW_AT_decl_column(0x10)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$552	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$18)

$C$DW$T$259	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$259, DW_AT_type(*$C$DW$552)


$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x40)
$C$DW$553	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$553, DW_AT_upper_bound(0x3f)

	.dwendtag $C$DW$T$35

$C$DW$T$99	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$99, DW_AT_address_class(0x14)

$C$DW$554	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$99)

$C$DW$T$100	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$554)

$C$DW$T$260	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$260, DW_AT_name("__va_list")
	.dwattr $C$DW$T$260, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$260, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$260, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$260, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$260, DW_AT_decl_column(0x0f)

$C$DW$T$261	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$261, DW_AT_name("va_list")
	.dwattr $C$DW$T$261, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$T$261, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$261, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdarg.h")
	.dwattr $C$DW$T$261, DW_AT_decl_line(0x33)
	.dwattr $C$DW$T$261, DW_AT_decl_column(0x13)

$C$DW$555	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$6)

$C$DW$T$101	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$555)

$C$DW$T$102	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_address_class(0x14)

$C$DW$556	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$102)

$C$DW$T$103	.dwtag  DW_TAG_restrict_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$556)


$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("__mq")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwattr $C$DW$T$19, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

$C$DW$T$264	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$264, DW_AT_address_class(0x14)

$C$DW$T$265	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$265, DW_AT_name("__mqd_t")
	.dwattr $C$DW$T$265, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$T$265, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$265, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$265, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$265, DW_AT_decl_column(0x16)


$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("__sFILE")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x14)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$557, DW_AT_name("fd")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("fd")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0x52)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0b)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$558, DW_AT_name("buf")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0x53)
	.dwattr $C$DW$558, DW_AT_decl_column(0x16)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$559, DW_AT_name("pos")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("pos")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0x54)
	.dwattr $C$DW$559, DW_AT_decl_column(0x16)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$560, DW_AT_name("bufend")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("bufend")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x55)
	.dwattr $C$DW$560, DW_AT_decl_column(0x16)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$561, DW_AT_name("buff_stop")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("buff_stop")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x56)
	.dwattr $C$DW$561, DW_AT_decl_column(0x16)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$562, DW_AT_name("flags")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("flags")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x57)
	.dwattr $C$DW$562, DW_AT_decl_column(0x16)

	.dwattr $C$DW$T$49, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$49

$C$DW$T$266	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$266, DW_AT_name("FILE")
	.dwattr $C$DW$T$266, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$266, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$266, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/stdio.h")
	.dwattr $C$DW$T$266, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$266, DW_AT_decl_column(0x18)


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("__timer")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwattr $C$DW$T$20, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

$C$DW$T$267	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$267, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$267, DW_AT_address_class(0x14)

$C$DW$T$268	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$268, DW_AT_name("__timer_t")
	.dwattr $C$DW$T$268, DW_AT_type(*$C$DW$T$267)
	.dwattr $C$DW$T$268, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$268, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/sys/_types.h")
	.dwattr $C$DW$T$268, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$268, DW_AT_decl_column(0x19)


$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("_xlocale")
	.dwattr $C$DW$T$21, DW_AT_declaration
	.dwattr $C$DW$T$21, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/xlocale/_string.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

$C$DW$T$269	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$269, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$269, DW_AT_address_class(0x14)

$C$DW$T$270	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$270, DW_AT_name("locale_t")
	.dwattr $C$DW$T$270, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$T$270, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$270, DW_AT_decl_file("C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include/xlocale/_string.h")
	.dwattr $C$DW$T$270, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$270, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 16
	.dwcfi	cfa_register, 1
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 0
	.dwcfi	same_value, 1
	.dwcfi	same_value, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$563	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$563, DW_AT_name("PC")
	.dwattr $C$DW$563, DW_AT_location[DW_OP_reg0]

$C$DW$564	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$564, DW_AT_name("SP")
	.dwattr $C$DW$564, DW_AT_location[DW_OP_reg1]

$C$DW$565	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$565, DW_AT_name("SR")
	.dwattr $C$DW$565, DW_AT_location[DW_OP_reg2]

$C$DW$566	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$566, DW_AT_name("CG")
	.dwattr $C$DW$566, DW_AT_location[DW_OP_reg3]

$C$DW$567	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$567, DW_AT_name("r4")
	.dwattr $C$DW$567, DW_AT_location[DW_OP_reg4]

$C$DW$568	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$568, DW_AT_name("r5")
	.dwattr $C$DW$568, DW_AT_location[DW_OP_reg5]

$C$DW$569	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$569, DW_AT_name("r6")
	.dwattr $C$DW$569, DW_AT_location[DW_OP_reg6]

$C$DW$570	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$570, DW_AT_name("r7")
	.dwattr $C$DW$570, DW_AT_location[DW_OP_reg7]

$C$DW$571	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$571, DW_AT_name("r8")
	.dwattr $C$DW$571, DW_AT_location[DW_OP_reg8]

$C$DW$572	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$572, DW_AT_name("r9")
	.dwattr $C$DW$572, DW_AT_location[DW_OP_reg9]

$C$DW$573	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$573, DW_AT_name("r10")
	.dwattr $C$DW$573, DW_AT_location[DW_OP_reg10]

$C$DW$574	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$574, DW_AT_name("r11")
	.dwattr $C$DW$574, DW_AT_location[DW_OP_reg11]

$C$DW$575	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$575, DW_AT_name("r12")
	.dwattr $C$DW$575, DW_AT_location[DW_OP_reg12]

$C$DW$576	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$576, DW_AT_name("r13")
	.dwattr $C$DW$576, DW_AT_location[DW_OP_reg13]

$C$DW$577	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$577, DW_AT_name("r14")
	.dwattr $C$DW$577, DW_AT_location[DW_OP_reg14]

$C$DW$578	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$578, DW_AT_name("r15")
	.dwattr $C$DW$578, DW_AT_location[DW_OP_reg15]

$C$DW$579	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$579, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$579, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU

