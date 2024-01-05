################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_crc16.c \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_crc32.c \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_security_aes.c \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_security_ecdsa.c \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_security_sha256.c \
/home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_security_tokens.c 

OBJS += \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_crc16.o \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_crc32.o \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_aes.o \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_ecdsa.o \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_sha256.o \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_tokens.o 

C_DEPS += \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_crc16.d \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_crc32.d \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_aes.d \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_ecdsa.d \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_sha256.d \
./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_tokens.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.2/platform/bootloader/security/btl_crc16.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_crc16.c gecko_sdk_4.3.2/platform/bootloader/security/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG12P132F1024GL125=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_UART_ENABLE=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/autogen" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/bootloader/security/btl_crc16.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.2/platform/bootloader/security/btl_crc32.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_crc32.c gecko_sdk_4.3.2/platform/bootloader/security/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG12P132F1024GL125=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_UART_ENABLE=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/autogen" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/bootloader/security/btl_crc32.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.2/platform/bootloader/security/btl_security_aes.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_security_aes.c gecko_sdk_4.3.2/platform/bootloader/security/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG12P132F1024GL125=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_UART_ENABLE=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/autogen" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/bootloader/security/btl_security_aes.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.2/platform/bootloader/security/btl_security_ecdsa.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_security_ecdsa.c gecko_sdk_4.3.2/platform/bootloader/security/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG12P132F1024GL125=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_UART_ENABLE=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/autogen" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/bootloader/security/btl_security_ecdsa.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.2/platform/bootloader/security/btl_security_sha256.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_security_sha256.c gecko_sdk_4.3.2/platform/bootloader/security/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG12P132F1024GL125=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_UART_ENABLE=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/autogen" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/bootloader/security/btl_security_sha256.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.3.2/platform/bootloader/security/btl_security_tokens.o: /home/jun/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/security/btl_security_tokens.c gecko_sdk_4.3.2/platform/bootloader/security/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DEFR32BG12P132F1024GL125=1' '-DBOOTLOADER_SUPPORT_COMMUNICATION=1' '-DBOOTLOADER_ENABLE=1' '-DBOOTLOADER_SECOND_STAGE=1' '-DSL_RAMFUNC_DISABLE=1' '-D__START=main' '-D__STARTUP_CLEAR_BSS=1' '-DBTL_UART_ENABLE=1' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config" -I"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/autogen" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32BG12P/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/communication" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/debug" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/parser" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/security" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/driver" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/home/jun/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/bootloader/security/btl_security_tokens.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


