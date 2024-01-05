################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/debug/btl_debug.c \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/debug/btl_debug_swo.c 

OBJS += \
./gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug.o \
./gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug_swo.o 

C_DEPS += \
./gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug.d \
./gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug_swo.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/debug/btl_debug.c gecko_sdk_4.3.2/platform/bootloader/debug/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG12P132F1024GL125=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_UART_ENABLE=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/autogen" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug_swo.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/debug/btl_debug_swo.c gecko_sdk_4.3.2/platform/bootloader/debug/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG12P132F1024GL125=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_UART_ENABLE=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/autogen" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug_swo.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


