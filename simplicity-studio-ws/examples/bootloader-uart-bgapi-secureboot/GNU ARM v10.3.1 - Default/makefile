################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_4.3.2/util/third_party/mbedtls/library/subdir.mk
-include gecko_sdk_4.3.2/util/silicon_labs/silabs_core/memory_manager/subdir.mk
-include gecko_sdk_4.3.2/platform/service/udelay/src/subdir.mk
-include gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/subdir.mk
-include gecko_sdk_4.3.2/platform/security/sl_component/sl_mbedtls_support/src/subdir.mk
-include gecko_sdk_4.3.2/platform/emlib/src/subdir.mk
-include gecko_sdk_4.3.2/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.3.2/platform/common/src/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/security/sha/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/security/ecc/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/security/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/parser/gbl/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/driver/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/debug/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/core/flash/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/core/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/communication/bgapi-uart-dfu/subdir.mk
-include gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32BG12P/Source/subdir.mk
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


BUILD_ARTIFACT_NAME := bootloader-uart-bgapi-secureboot
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: bootloader-uart-bgapi-secureboot.axf

# Tool invocations
bootloader-uart-bgapi-secureboot.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot/autogen/linkerfile.ld" -Xlinker --gc-sections -Xlinker -Map="bootloader-uart-bgapi-secureboot.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o bootloader-uart-bgapi-secureboot.axf -Wl,--start-group "./gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32BG12P/Source/startup_efr32bg12p.o" "./gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32BG12P/Source/system_efr32bg12p.o" "./gecko_sdk_4.3.2/platform/bootloader/communication/bgapi-uart-dfu/btl_comm_bgapi.o" "./gecko_sdk_4.3.2/platform/bootloader/communication/bgapi-uart-dfu/btl_comm_bgapi_common.o" "./gecko_sdk_4.3.2/platform/bootloader/core/btl_bootload.o" "./gecko_sdk_4.3.2/platform/bootloader/core/btl_core.o" "./gecko_sdk_4.3.2/platform/bootloader/core/btl_main.o" "./gecko_sdk_4.3.2/platform/bootloader/core/btl_parse.o" "./gecko_sdk_4.3.2/platform/bootloader/core/btl_reset.o" "./gecko_sdk_4.3.2/platform/bootloader/core/flash/btl_internal_flash.o" "./gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug.o" "./gecko_sdk_4.3.2/platform/bootloader/debug/btl_debug_swo.o" "./gecko_sdk_4.3.2/platform/bootloader/driver/btl_driver_delay.o" "./gecko_sdk_4.3.2/platform/bootloader/driver/btl_driver_uart.o" "./gecko_sdk_4.3.2/platform/bootloader/driver/btl_driver_util.o" "./gecko_sdk_4.3.2/platform/bootloader/parser/gbl/btl_gbl_custom_tags.o" "./gecko_sdk_4.3.2/platform/bootloader/parser/gbl/btl_gbl_format.o" "./gecko_sdk_4.3.2/platform/bootloader/parser/gbl/btl_gbl_parser.o" "./gecko_sdk_4.3.2/platform/bootloader/security/btl_crc16.o" "./gecko_sdk_4.3.2/platform/bootloader/security/btl_crc32.o" "./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_aes.o" "./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_ecdsa.o" "./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_sha256.o" "./gecko_sdk_4.3.2/platform/bootloader/security/btl_security_tokens.o" "./gecko_sdk_4.3.2/platform/bootloader/security/ecc/ecc.o" "./gecko_sdk_4.3.2/platform/bootloader/security/sha/btl_sha256.o" "./gecko_sdk_4.3.2/platform/bootloader/security/sha/crypto_sha.o" "./gecko_sdk_4.3.2/platform/bootloader/security/sha/cryptoacc_sha.o" "./gecko_sdk_4.3.2/platform/bootloader/security/sha/se_sha.o" "./gecko_sdk_4.3.2/platform/common/src/sl_assert.o" "./gecko_sdk_4.3.2/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_acmp.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_adc.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_core.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_cryotimer.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_crypto.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_csen.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_dbg.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_emu.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_gpcrc.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_i2c.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_idac.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_ldma.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_lesense.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_letimer.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_leuart.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_msc.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_opamp.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_pcnt.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_prs.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_rmu.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_rtcc.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_system.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_timer.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_usart.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_vdac.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_wdog.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_mbedtls_support/src/crypto_aes.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/crypto_management.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o" "./gecko_sdk_4.3.2/platform/service/udelay/src/sl_udelay.o" "./gecko_sdk_4.3.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o" "./gecko_sdk_4.3.2/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/aes.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/constant_time.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/platform.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/platform_util.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_client.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/threading.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: bootloader-uart-bgapi-secureboot.out'
	arm-none-eabi-objcopy "bootloader-uart-bgapi-secureboot.axf" "bootloader-uart-bgapi-secureboot.out"
	@echo ' '

	@echo 'Building hex file: bootloader-uart-bgapi-secureboot.hex'
	arm-none-eabi-objcopy -O ihex "bootloader-uart-bgapi-secureboot.axf" "bootloader-uart-bgapi-secureboot.hex"
	@echo ' '

	@echo 'Building bin file: bootloader-uart-bgapi-secureboot.bin'
	arm-none-eabi-objcopy -O binary "bootloader-uart-bgapi-secureboot.axf" "bootloader-uart-bgapi-secureboot.bin"
	@echo ' '

	@echo 'Building s37 file: bootloader-uart-bgapi-secureboot.s37'
	arm-none-eabi-objcopy -O srec "bootloader-uart-bgapi-secureboot.axf" "bootloader-uart-bgapi-secureboot.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "bootloader-uart-bgapi-secureboot.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) bootloader-uart-bgapi-secureboot.axf
	-@echo ' '

post-build:
	-"/home/jun/SimplicityStudio_v5/developer/adapter_packs/commander/commander" postbuild "/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot/bootloader-uart-bgapi-secureboot.slpb" --parameter build_dir:"/home/jun/projects/cookies-bootloader/simplicity-studio-ws/bootloader-uart-bgapi-secureboot/GNU ARM v10.3.1 - Default"
	-@echo ' '

.PHONY: all clean dependents main-build post-build

-include ../makefile.targets
