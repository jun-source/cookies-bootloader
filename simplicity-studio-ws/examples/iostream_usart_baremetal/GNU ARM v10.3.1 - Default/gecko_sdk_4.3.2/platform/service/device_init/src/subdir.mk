################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.c \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_emu_s1.c \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_nvic.c 

OBJS += \
./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o \
./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_emu_s1.o \
./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_nvic.o 

C_DEPS += \
./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_dcdc_s1.d \
./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_emu_s1.d \
./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_nvic.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_dcdc_s1.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.c gecko_sdk_4.3.2/platform/service/device_init/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_dcdc_s1.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_emu_s1.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_emu_s1.c gecko_sdk_4.3.2/platform/service/device_init/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_emu_s1.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_nvic.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/service/device_init/src/sl_device_init_nvic.c gecko_sdk_4.3.2/platform/service/device_init/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_nvic.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


