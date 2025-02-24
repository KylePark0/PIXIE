################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS

GEN_OPTS__FLAG := 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./main.obj" \
"./src/adc.obj" \
"./src/bak.obj" \
"./src/channels.obj" \
"./src/clk.obj" \
"./src/cmd.obj" \
"./src/dac.obj" \
"./src/dma.obj" \
"./src/dsp.obj" \
"./src/gpio.obj" \
"./src/opamp.obj" \
"./src/pixie.obj" \
"./src/sineref.obj" \
"./src/state.obj" \
"./src/timer.obj" \
"./src/uart.obj" \
"./src/wdt.obj" \
"../lnk_msp430fg6626.cmd" \
$(GEN_CMDS__FLAG) \
-llibmath.a \
-llibc.a \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include inc/subdir_vars.mk
-include src/subdir_vars.mk
-include subdir_rules.mk
-include inc/subdir_rules.mk
-include src/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
PIXIE_MSP430.out \

EXE_OUTPUTS__QUOTED += \
"PIXIE_MSP430.out" \


# All Target
all: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "PIXIE_MSP430.out"

# Tool invocations
PIXIE_MSP430.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: "$@"'
	@echo 'Invoking: MSP430 Linker'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/bin/cl430" -vmspx --code_model=large --data_model=restricted -O4 --opt_for_speed=5 --align_for_power --use_hw_mpy=F5 --advice:power="1,4,5,6,7,8,9,11,12,14" --define=__MSP430FG6626__ -g --c89 --printf_support=full --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 -k --asm_listing --parallel=4 -z -m"PIXIE_MSP430.map" --heap_size=160 --stack_size=160 --cinit_hold_wdt=on -i"C:/ti/ccs1250/ccs/ccs_base/msp430/include" -i"C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc" -i"C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/src" -i"C:/ti/ccs1250/ccs/ccs_base/msp430/lib/5xx_6xx_FRxx" -i"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/lib" -i"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include" --reread_libs --diag_wrap=off --display_error_number --warn_sections --xml_link_info="PIXIE_MSP430_linkInfo.xml" --use_hw_mpy=F5 --rom_model -o "PIXIE_MSP430.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXE_OUTPUTS__QUOTED)
	-$(RM) "main.lst" "src/adc.lst" "src/bak.lst" "src/channels.lst" "src/clk.lst" "src/cmd.lst" "src/dac.lst" "src/dma.lst" "src/dsp.lst" "src/gpio.lst" "src/opamp.lst" "src/pixie.lst" "src/sineref.lst" "src/state.lst" "src/timer.lst" "src/uart.lst" "src/wdt.lst" 
	-$(RM) "main.obj" "src\adc.obj" "src\bak.obj" "src\channels.obj" "src\clk.obj" "src\cmd.obj" "src\dac.obj" "src\dma.obj" "src\dsp.obj" "src\gpio.obj" "src\opamp.obj" "src\pixie.obj" "src\sineref.obj" "src\state.obj" "src\timer.obj" "src\uart.obj" "src\wdt.obj" 
	-$(RM) "main.d" "src\adc.d" "src\bak.d" "src\channels.d" "src\clk.d" "src\cmd.d" "src\dac.d" "src\dma.d" "src\gpio.d" "src\opamp.d" "src\pixie.d" "src\sineref.d" "src\state.d" "src\timer.d" "src\uart.d" "src\wdt.d" 
	-$(RM) "main.asm" "src/adc.asm" "src/bak.asm" "src/channels.asm" "src/clk.asm" "src/cmd.asm" "src/dac.asm" "src/dma.asm" "src/dsp.asm" "src/gpio.asm" "src/opamp.asm" "src/pixie.asm" "src/sineref.asm" "src/state.asm" "src/timer.asm" "src/uart.asm" "src/wdt.asm" 
	-$(RM) "src\dsp.d" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

