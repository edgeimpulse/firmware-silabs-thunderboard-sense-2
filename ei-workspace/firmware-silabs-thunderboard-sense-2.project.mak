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
 '-DEIDSP_LOAD_CMSIS_DSP_SOURCES=1' \
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
 '-DEIDSP_LOAD_CMSIS_DSP_SOURCES=1' \
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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/brickml/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/brickml/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/brickml/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/brickml/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/brickml/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/brickml/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/brickml/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/brickml/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/brickml/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/brickml/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/brickml/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/brickml/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.o: edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.o: edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.o: edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.o: edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.c
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.c'
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.c
CDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/synaptics/debug_log.o: edgeimpulse/edge-impulse-sdk/porting/synaptics/debug_log.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/synaptics/debug_log.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/synaptics/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/synaptics/debug_log.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/synaptics/debug_log.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.o: edgeimpulse/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.cpp
	@echo 'Building edgeimpulse/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.cpp'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.o

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

$(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/tensor_utils_common.o: edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/tensor_utils_common.cc
	@echo 'Building edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/tensor_utils_common.cc'
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/tensor_utils_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/tensor_utils_common.d
OBJS += $(OUTPUT_DIR)/project/edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/tensor_utils_common.o

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
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA