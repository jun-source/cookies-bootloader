################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_4.3.2/platform/service/system/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/iostream/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.3.2/platform/emlib/src/subdir.mk
-include gecko_sdk_4.3.2/platform/emdrv/dmadrv/src/subdir.mk
-include gecko_sdk_4.3.2/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.3.2/platform/common/src/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/app_properties/subdir.mk
-include gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32BG12P/Source/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := iostream_usart_baremetal
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: iostream_usart_baremetal.axf

# Tool invocations
iostream_usart_baremetal.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen/linkerfile.ld" -Xlinker --gc-sections -Xlinker -Map="iostream_usart_baremetal.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o iostream_usart_baremetal.axf -Wl,--start-group "./app.o" "./app_iostream_usart.o" "./main.o" "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./autogen/sl_iostream_handles.o" "./autogen/sl_iostream_init_usart_instances.o" "./gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32BG12P/Source/startup_efr32bg12p.o" "./gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32BG12P/Source/system_efr32bg12p.o" "./gecko_sdk_4.3.2/platform/bootloader/app_properties/app_properties.o" "./gecko_sdk_4.3.2/platform/common/src/sl_assert.o" "./gecko_sdk_4.3.2/platform/common/src/sl_string.o" "./gecko_sdk_4.3.2/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.3.2/platform/emdrv/dmadrv/src/dmadrv.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_core.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_emu.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_ldma.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_msc.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_system.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_usart.o" "./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o" "./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_emu_s1.o" "./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream_retarget_stdio.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream_uart.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream_usart.o" "./gecko_sdk_4.3.2/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.3.2/platform/service/system/src/sl_system_process_action.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: iostream_usart_baremetal.out'
	arm-none-eabi-objcopy "iostream_usart_baremetal.axf" "iostream_usart_baremetal.out"
	@echo ' '

	@echo 'Building hex file: iostream_usart_baremetal.hex'
	arm-none-eabi-objcopy -O ihex "iostream_usart_baremetal.axf" "iostream_usart_baremetal.hex"
	@echo ' '

	@echo 'Building bin file: iostream_usart_baremetal.bin'
	arm-none-eabi-objcopy -O binary "iostream_usart_baremetal.axf" "iostream_usart_baremetal.bin"
	@echo ' '

	@echo 'Building s37 file: iostream_usart_baremetal.s37'
	arm-none-eabi-objcopy -O srec "iostream_usart_baremetal.axf" "iostream_usart_baremetal.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "iostream_usart_baremetal.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) iostream_usart_baremetal.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
