################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app.c \
../app_iostream_usart.c \
../main.c 

OBJS += \
./app.o \
./app_iostream_usart.o \
./main.o 

C_DEPS += \
./app.d \
./app_iostream_usart.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
app.o: ../app.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"app.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

app_iostream_usart.o: ../app_iostream_usart.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"app_iostream_usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

main.o: ../main.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG_EFM=1' '-DEFR32BG12P132F1024GL125=1' '-DSL_APP_PROPERTIES=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal/autogen" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/iostream_usart_baremetal" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


