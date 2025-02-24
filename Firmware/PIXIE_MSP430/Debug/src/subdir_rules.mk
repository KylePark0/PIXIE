################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
src/%.obj: ../src/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/bin/cl430" -vmspx --code_model=large --data_model=restricted -O4 --opt_for_speed=5 --align_for_power --use_hw_mpy=F5 --include_path="C:/ti/ccs1250/ccs/ccs_base/msp430/include" --include_path="C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include" --include_path="C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc" --include_path="C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/src" --advice:power="1,4,5,6,7,8,9,11,12,14" --define=__MSP430FG6626__ -g --c89 --printf_support=full --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 -k --asm_listing --parallel=4 --preproc_with_compile --preproc_dependency="src/$(basename $(<F)).d_raw" --obj_directory="src" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

src/%.obj: ../src/%.asm $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: MSP430 Compiler'
	"C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/bin/cl430" -vmspx --code_model=large --data_model=restricted -O4 --opt_for_speed=5 --align_for_power --use_hw_mpy=F5 --include_path="C:/ti/ccs1250/ccs/ccs_base/msp430/include" --include_path="C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430" --include_path="C:/ti/ccs1250/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/include" --include_path="C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/inc" --include_path="C:/Users/kyle_/Documents/CodeComposerStudio/PIXIE_MSP430/src" --advice:power="1,4,5,6,7,8,9,11,12,14" --define=__MSP430FG6626__ -g --c89 --printf_support=full --diag_warning=225 --diag_wrap=off --display_error_number --silicon_errata=CPU21 --silicon_errata=CPU22 --silicon_errata=CPU40 -k --asm_listing --parallel=4 --preproc_with_compile --preproc_dependency="src/$(basename $(<F)).d_raw" --obj_directory="src" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


