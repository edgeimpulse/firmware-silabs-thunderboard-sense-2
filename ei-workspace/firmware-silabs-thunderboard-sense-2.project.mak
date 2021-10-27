####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 6                                               #
####################################################################

BASE_SDK_PATH = /opt/SimplicityStudio_v5/developer/sdks/gecko_sdk_suite/v3.2
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_3.2.1

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DEIDSP_QUANTIZE_FILTERBANK=0' \
 '-DEIDSP_USE_CMSIS_DSP=1' \
 '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' \
 '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' \
 '-DEI_PORTING_SILABS=1' \
 '-DEI_SENSOR_AQ_STREAM=FILE' \
 '-DSL_HEAP_SIZE=53248' \
 '-DSL_STACK_SIZE=32768' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-D__StackLimit=536870912' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DEIDSP_QUANTIZE_FILTERBANK=0' \
 '-DEIDSP_USE_CMSIS_DSP=1' \
 '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' \
 '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' \
 '-DEI_PORTING_SILABS=1' \
 '-DEI_SENSOR_AQ_STREAM=FILE' \
 '-DSL_HEAP_SIZE=53248' \
 '-DSL_STACK_SIZE=32768' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-D__StackLimit=536870912' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>'

INCLUDES += \
 -I. \
 -Ibrd4166a \
 -Iedgeimpulse \
 -Iedgeimpulse/QCBOR/inc \
 -Iedgeimpulse/QCBOR/src \
 -Iedgeimpulse/edge-impulse-sdk/porting \
 -Iedgeimpulse/ingestion-sdk-c \
 -Iedgeimpulse/ingestion-sdk-platform/SiliconLabs \
 -Iedgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors \
 -Iedgeimpulse/model-parameters \
 -Iedgeimpulse/repl \
 -Iedgeimpulse/tflite-model \
 -I$(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(COPIED_SDK_PATH)/platform/driver/leddrv/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/si1133/inc \
 -I$(COPIED_SDK_PATH)/platform/service/device_init/inc \
 -I$(COPIED_SDK_PATH)/app/bluetooth/common/simple_timer \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/include \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/bmp280/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/bmp280/bosch/BMP280_driver \
 -I$(COPIED_SDK_PATH)/protocol/bluetooth/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/common/inc \
 -I$(COPIED_SDK_PATH)/hardware/board/inc \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/common \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/protocol/mfm \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg1x \
 -I$(COPIED_SDK_PATH)/hardware/driver/ccs811/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/ccs811/firmware \
 -I$(COPIED_SDK_PATH)/hardware/driver/si70xx/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/include \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/inc \
 -I$(COPIED_SDK_PATH)/app/common/util/app_assert \
 -I$(COPIED_SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/inc \
 -I$(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -I$(COPIED_SDK_PATH)/platform/common/toolchain/inc \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(COPIED_SDK_PATH)/platform/service/udelay/inc \
 -I$(COPIED_SDK_PATH)/platform/driver/i2cspm/inc \
 -I$(COPIED_SDK_PATH)/platform/service/power_manager/inc \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/platform/emdrv/spidrv/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/mic/inc \
 -I$(COPIED_SDK_PATH)/hardware/driver/icm20648/inc \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/config \
 -I$(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library \
 -I$(COPIED_SDK_PATH)/platform/bootloader \
 -I$(COPIED_SDK_PATH)/platform/bootloader/api \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Include \
 -I$(COPIED_SDK_PATH)/hardware/driver/imu/inc \
 -Iconfig \
 -Iautogen

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lstdc++ \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(COPIED_SDK_PATH)/protocol/bluetooth/lib/EFR32MG12P/GCC/libbluetooth.a \
 $(COPIED_SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg12_gcc_release.a \
 $(COPIED_SDK_PATH)/protocol/bluetooth/lib/EFR32MG12P/GCC/libpsstore.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -O3 \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -fno-builtin \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -O3 \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -fno-builtin \
 -imacros sl_gcc_preinclude.h \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Wl,--gc-sections


####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.o: $(COPIED_SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c
	@echo 'Building $(COPIED_SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.o: $(COPIED_SDK_PATH)/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.o

$(OUTPUT_DIR)/sdk/hardware/driver/bmp280/src/sl_bmp280.o: $(COPIED_SDK_PATH)/hardware/driver/bmp280/src/sl_bmp280.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/bmp280/src/sl_bmp280.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/bmp280/src/sl_bmp280.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/bmp280/src/sl_bmp280.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/bmp280/src/sl_bmp280.o

$(OUTPUT_DIR)/sdk/hardware/driver/ccs811/src/sl_ccs811.o: $(COPIED_SDK_PATH)/hardware/driver/ccs811/src/sl_ccs811.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/ccs811/src/sl_ccs811.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/ccs811/src/sl_ccs811.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/ccs811/src/sl_ccs811.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/ccs811/src/sl_ccs811.o

$(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.o: $(COPIED_SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu.o: $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.o: $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.o: $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.o: $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.o

$(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.o: $(COPIED_SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.o: $(COPIED_SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.o

$(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o: $(COPIED_SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
	@echo 'Building $(COPIED_SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o: $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o: $(COPIED_SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.o: $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgbw_pwm_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.o: $(COPIED_SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_assert.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_assert.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_crypto.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_crypto.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_i2c.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_i2c.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_i2c.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_prs.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_prs.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.o: $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@echo 'Building $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.o: $(COPIED_SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c
	@echo 'Building $(COPIED_SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy_poll.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy_poll.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy_poll.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy_poll.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy_poll.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy_poll.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/error.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/error.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/hmac_drbg.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/hmac_drbg.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/hmac_drbg.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/hmac_drbg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/hmac_drbg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/hmac_drbg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o: $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_entropy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_alt/source/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@echo 'Building $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/project/app.o: app.c
	@echo 'Building app.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/gatt_db.o: autogen/gatt_db.c
	@echo 'Building autogen/gatt_db.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/gatt_db.c
CDEPS += $(OUTPUT_DIR)/project/autogen/gatt_db.d
OBJS += $(OUTPUT_DIR)/project/autogen/gatt_db.o

$(OUTPUT_DIR)/project/autogen/sl_bluetooth.o: autogen/sl_bluetooth.c
	@echo 'Building autogen/sl_bluetooth.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_bluetooth.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@echo 'Building autogen/sl_board_default_init.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@echo 'Building autogen/sl_device_init_clocks.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@echo 'Building autogen/sl_event_handler.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@echo 'Building autogen/sl_iostream_handles.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@echo 'Building autogen/sl_iostream_init_usart_instances.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o: autogen/sl_power_manager_handler.c
	@echo 'Building autogen/sl_power_manager_handler.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_power_manager_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o

$(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.o: autogen/sl_simple_rgbw_pwm_led_instances.c
	@echo 'Building autogen/sl_simple_rgbw_pwm_led_instances.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_rgbw_pwm_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgbw_pwm_led_instances.o

$(OUTPUT_DIR)/project/brd4166a/rgbled.o: brd4166a/rgbled.c
	@echo 'Building brd4166a/rgbled.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ brd4166a/rgbled.c
CDEPS += $(OUTPUT_DIR)/project/brd4166a/rgbled.d
OBJS += $(OUTPUT_DIR)/project/brd4166a/rgbled.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.o: edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/classifier/ei_run_classifier_c.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o: edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16_reordered.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o: edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.o: edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/dct/fast-dct-fft.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.o: edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/image/processing.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/image/processing.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.o: edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fft.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o: edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.o: edgeimpulse/edge-impulse-sdk/dsp/memory.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/dsp/memory.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/dsp/memory.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/dsp/memory.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/arduino/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ecm3532/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/himax/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mbed/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/posix/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/silabs/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/sony/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ti/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/tflite_detection_postprocess.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/recording_simple_memory_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/simple_memory_allocator.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/system_setup.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_run_impulse.o: edgeimpulse/ingestion-sdk-c/ei_run_impulse.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-c/ei_run_impulse.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-c/ei_run_impulse.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_run_impulse.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_run_impulse.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_sampler.o: edgeimpulse/ingestion-sdk-c/ei_sampler.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-c/ei_sampler.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-c/ei_sampler.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_sampler.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/ei_sampler.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq.o: edgeimpulse/ingestion-sdk-c/sensor_aq.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-c/sensor_aq.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-c/sensor_aq.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.o: edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-c/sensor_aq_mbedtls_hs256.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_device_silabs_efm32mg.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_main.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/ei_silabs_fs_commands.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_inertialsensor.o

$(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.o: edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.cpp
	@echo 'Building edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/ei_microphone.o

$(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/ieee754.o: edgeimpulse/QCBOR/src/ieee754.c
	@echo 'Building edgeimpulse/QCBOR/src/ieee754.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/QCBOR/src/ieee754.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/ieee754.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/ieee754.o

$(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_decode.o: edgeimpulse/QCBOR/src/qcbor_decode.c
	@echo 'Building edgeimpulse/QCBOR/src/qcbor_decode.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/QCBOR/src/qcbor_decode.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_decode.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_decode.o

$(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_encode.o: edgeimpulse/QCBOR/src/qcbor_encode.c
	@echo 'Building edgeimpulse/QCBOR/src/qcbor_encode.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/QCBOR/src/qcbor_encode.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_encode.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/qcbor_encode.o

$(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/UsefulBuf.o: edgeimpulse/QCBOR/src/UsefulBuf.c
	@echo 'Building edgeimpulse/QCBOR/src/UsefulBuf.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/QCBOR/src/UsefulBuf.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/UsefulBuf.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/QCBOR/src/UsefulBuf.o

$(OUTPUT_DIR)/project/edgeimpulse/repl/repl.o: edgeimpulse/repl/repl.cpp
	@echo 'Building edgeimpulse/repl/repl.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/repl/repl.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/repl/repl.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/repl/repl.o

$(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.o: edgeimpulse/tflite-model/trained_model_compiled.cpp
	@echo 'Building edgeimpulse/tflite-model/trained_model_compiled.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/tflite-model/trained_model_compiled.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/tflite-model/trained_model_compiled.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

$(OUTPUT_DIR)/project/mx25flash_spi.o: mx25flash_spi.c
	@echo 'Building mx25flash_spi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ mx25flash_spi.c
CDEPS += $(OUTPUT_DIR)/project/mx25flash_spi.d
OBJS += $(OUTPUT_DIR)/project/mx25flash_spi.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA