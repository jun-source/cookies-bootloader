################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../autogen/sl_device_init_clocks.c \
../autogen/sl_event_handler.c \
../autogen/sl_iostream_handles.c \
../autogen/sl_iostream_init_usart_instances.c 

OBJS += \
./autogen/sl_device_init_clocks.o \
./autogen/sl_event_handler.o \
./autogen/sl_iostream_handles.o \
./autogen/sl_iostream_init_usart_instances.o 

C_DEPS += \
./autogen/sl_device_init_clocks.d \
./autogen/sl_event_handler.d \
./autogen/sl_iostream_handles.d \
./autogen/sl_iostream_init_usart_instances.d 


# Each subdirectory must supply rules for building sources it contributes
autogen/sl_device_init_clocks.o: ../autogen/sl_device_init_clocks.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_device_init_clocks.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_event_handler.o: ../autogen/sl_event_handler.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_event_handler.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_iostream_handles.o: ../autogen/sl_iostream_handles.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_iostream_handles.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_iostream_init_usart_instances.o: ../autogen/sl_iostream_init_usart_instances.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_iostream_init_usart_instances.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


