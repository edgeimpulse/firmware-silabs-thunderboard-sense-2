####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 14                                              #
####################################################################

BASE_SDK_PATH = /Users/mmajchrzycki/ei/repos/gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.0.2

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
 '-DEI_SENSOR_AQ_STREAM=FILE' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-DEI_PORTING_SILABS=1' \
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DEIDSP_LOAD_CMSIS_DSP_SOURCES=1' \
 '-DEIDSP_QUANTIZE_FILTERBANK=0' \
 '-DEIDSP_USE_CMSIS_DSP=1' \
 '-DEI_CLASSIFIER_SLICES_PER_MODEL_WINDOW=3' \
 '-DEI_CLASSIFIER_TFLITE_ENABLE_CMSIS_NN=1' \
 '-DEI_SENSOR_AQ_STREAM=FILE' \
 '-DTF_LITE_STATIC_MEMORY=1' \
 '-DEI_PORTING_SILABS=1' \
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CLIENT=1' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>'

INCLUDES += \
 -Iconfig \
 -Iconfig/btconf \
 -Iautogen \
 -I. \
 -Isrc \
 -Isrc/drivers \
 -Isrc/inference \
 -Isrc/sensors \
 -Isrc/libs \
 -Iextension/edge_impulse_extension/ei-model \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -I$(SDK_PATH)/app/common/util/app_assert \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/protocol/bluetooth/inc \
 -I$(SDK_PATH)/hardware/driver/bmp280/inc \
 -I$(SDK_PATH)/hardware/driver/bmp280/bosch/BMP280_driver \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/hardware/driver/ccs811/inc \
 -I$(SDK_PATH)/hardware/driver/ccs811/firmware \
 -I$(SDK_PATH)/platform/CMSIS/Include \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/emlib/host/inc \
 -I$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(SDK_PATH)/platform/driver/i2cspm/inc \
 -I$(SDK_PATH)/hardware/driver/icm20648/inc \
 -I$(SDK_PATH)/hardware/driver/imu/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/util/third_party/crypto/mbedtls/include \
 -I$(SDK_PATH)/util/third_party/crypto/mbedtls/library \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/config \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/hardware/driver/mic/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/util/third_party/printf \
 -I$(SDK_PATH)/util/third_party/printf/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg1x \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg1x \
 -I$(SDK_PATH)/hardware/driver/si1133/inc \
 -I$(SDK_PATH)/hardware/driver/si70xx/inc \
 -I$(SDK_PATH)/hardware/driver/si7210/inc \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(SDK_PATH)/app/bluetooth/common/simple_timer \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src \
 -I$(SDK_PATH)/platform/emdrv/spidrv/inc \
 -I$(SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lstdc++ \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/protocol/bluetooth/lib/EFR32MG12P/GCC/libbluetooth.a \
 $(SDK_PATH)/protocol/bluetooth/lib/EFR32MG12P/GCC/libpsstore.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg12_gcc_release.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
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
 -Os \
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
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.o: $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.o: $(SDK_PATH)/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/bmp280/bosch/BMP280_driver/bmp280.o

$(OUTPUT_DIR)/sdk/hardware/driver/bmp280/src/sl_bmp280.o: $(SDK_PATH)/hardware/driver/bmp280/src/sl_bmp280.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/bmp280/src/sl_bmp280.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/bmp280/src/sl_bmp280.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/bmp280/src/sl_bmp280.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/bmp280/src/sl_bmp280.o

$(OUTPUT_DIR)/sdk/hardware/driver/ccs811/src/sl_ccs811.o: $(SDK_PATH)/hardware/driver/ccs811/src/sl_ccs811.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/ccs811/src/sl_ccs811.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/ccs811/src/sl_ccs811.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/ccs811/src/sl_ccs811.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/ccs811/src/sl_ccs811.o

$(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.o: $(SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/icm20648/src/sl_icm20648.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/icm20648/src/sl_icm20648.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_dcm.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_dcm.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_fuse.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_fuse.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_icm20648.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_icm20648.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_icm20648.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_icm20648.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_icm20648.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_icm20648.o

$(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.o: $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/imu/src/sl_imu_math.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/imu/src/sl_imu_math.o

$(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.o: $(SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mic/src/sl_mic_i2s.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mic/src/sl_mic_i2s.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.o: $(SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/si1133/src/sl_si1133.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si1133/src/sl_si1133.o

$(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o: $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/si70xx/src/sl_si70xx.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si70xx/src/sl_si70xx.o

$(OUTPUT_DIR)/sdk/hardware/driver/si7210/src/sl_si7210.o: $(SDK_PATH)/hardware/driver/si7210/src/sl_si7210.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/driver/si7210/src/sl_si7210.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/si7210/src/sl_si7210.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/si7210/src/sl_si7210.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/si7210/src/sl_si7210.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_stdio.o: $(SDK_PATH)/platform/common/src/sl_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_stdio.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/GCC/startup_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o: $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/i2cspm/src/sl_i2cspm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/i2cspm/src/sl_i2cspm.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_pwm_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_pwm_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_pwm_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_pwm_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_pwm_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_pwm_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_rgb_pwm_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.o: $(SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/spidrv/src/spidrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/spidrv/src/spidrv.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o: $(SDK_PATH)/platform/emlib/src/em_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_assert.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.o: $(SDK_PATH)/platform/emlib/src/em_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_crypto.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o: $(SDK_PATH)/platform/emlib/src/em_i2c.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_i2c.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_i2c.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_i2c.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(SDK_PATH)/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s0_s1.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.o: $(SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_bt_mbedtls_context.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_mbedtls_context.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/bignum.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/bignum.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cmac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cmac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ctr_drbg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ctr_drbg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdh.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecdsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecdsa.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/ecp_curves.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/ecp_curves.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy_poll.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy_poll.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy_poll.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/entropy_poll.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy_poll.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/entropy_poll.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/hmac_drbg.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/hmac_drbg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/hmac_drbg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/hmac_drbg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/hmac_drbg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/hmac_drbg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/md.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/md.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/sha256.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/sha256.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_sha.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_entropy_hardware.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_entropy_hardware.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_entropy_hardware.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_entropy_hardware.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_entropy_hardware.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_entropy_hardware.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/crypto_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_crypto_trng_driver.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/autogen/gatt_db.o: autogen/gatt_db.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/gatt_db.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/gatt_db.c
CDEPS += $(OUTPUT_DIR)/project/autogen/gatt_db.d
OBJS += $(OUTPUT_DIR)/project/autogen/gatt_db.o

$(OUTPUT_DIR)/project/autogen/sl_bluetooth.o: autogen/sl_bluetooth.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_bluetooth.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_bluetooth.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_board_default_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_device_init_clocks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_i2cspm_init.o: autogen/sl_i2cspm_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_i2cspm_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_i2cspm_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_i2cspm_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_i2cspm_init.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_init_usart_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o: autogen/sl_power_manager_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_power_manager_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_power_manager_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o

$(OUTPUT_DIR)/project/autogen/sl_simple_rgb_pwm_led_instances.o: autogen/sl_simple_rgb_pwm_led_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_simple_rgb_pwm_led_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_rgb_pwm_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgb_pwm_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_rgb_pwm_led_instances.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/classifier/ei_run_classifier_c.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/classifier/ei_run_classifier_c.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/classifier/ei_run_classifier_c.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/classifier/ei_run_classifier_c.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_abs_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_add_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_and_u8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_clip_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_dot_prod_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_mult_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_negate_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_not_u8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_offset_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_or_u8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_scale_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_shift_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_sub_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BasicMathFunctions/arm_xor_u8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_conj_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_fast_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ComplexMathFunctions/arm_cmplx_mult_real_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_boolean_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_braycurtis_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_canberra_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_chebyshev_distance_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cityblock_distance_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_correlation_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_cosine_distance_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_dice_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_euclidean_distance_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_hamming_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jaccard_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_jensenshannon_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_kulsinski_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_minkowski_distance_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_rogerstanimoto_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_russellrao_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalmichener_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_sokalsneath_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/DistanceFunctions/arm_yule_distance.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_atan2_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_cos_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_divide_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sin_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_sqrt_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vexp_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vinverse_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FastMathFunctions/arm_vlog_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df1_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_opt_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_fast_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_opt_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_opt_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_fast_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_opt_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_partial_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_conv_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_opt_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_fast_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_opt_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_correlate_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_fast_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_decimate_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_fast_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_init_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_interpolate_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_lattice_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_init_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_fir_sparse_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_iir_lattice_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_levinson_durbin_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_norm_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/FilteringFunctions/arm_lms_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_bilinear_interp_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_linear_interp_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/InterpolationFunctions/arm_spline_interp_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_householder_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_add_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cholesky_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_mult_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_cmplx_trans_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_inverse_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_ldlt_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_fast_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_opt_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_mult_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_qr_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_scale_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_lower_triangular_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_solve_upper_triangular_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_sub_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_trans_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/MatrixFunctions/arm_mat_vec_mult_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_no_idx_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmax_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_no_idx_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_absmin_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_accumulate_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_entropy_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_kullback_leibler_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_dot_prod_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_logsumexp_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_no_idx_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_max_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mean_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_no_idx_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_min_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_mse_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_power_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_rms_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_std_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/StatisticsFunctions/arm_var_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_barycenter_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bitonic_sort_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_bubble_sort_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_copy_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_float.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_f16_to_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_fill_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_float_to_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_heap_sort_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_insertion_sort_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_merge_sort_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_float.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q15_to_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_float.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q31_to_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_float.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_q7_to_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_quick_sort_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_selection_sort_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_sort_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SupportFunctions/arm_weighted_sum_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_linear_predict_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_polynomial_predict_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_rbf_predict_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/SVMFunctions/arm_svm_sigmoid_predict_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal2.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_bitreversal_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix2_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix4_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_cfft_radix8_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_dct4_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_mfcc_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_fast_init_f64.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_f32.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_init_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/arm_rfft_q31.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_nn_activations_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu6_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/arm_relu_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_add_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/arm_elementwise_mul_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_w.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_x.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_y.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/arm_concatenation_s8_z.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_fast_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_basic.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q15_fast_nonsquare.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_basic_nonsquare.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_fast_nonsquare.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_HWC_q7_RGB.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_u8_basic_ver1.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_depthwise_separable_conv_HWC_q7_nonsquare.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_q7_q15_reordered.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_mat_q7_vec_q15_opt.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q15_opt.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_q7_opt.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/arm_fully_connected_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_accumulate_q7_to_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_add_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mul_kernel_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_mult_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_nntables.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_no_shift.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_no_shift.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_reordered_with_offset.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_avgpool_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_max_pool_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/arm_pool_q7_HWC.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/arm_reshape_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q15.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_s8_s16.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_u8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/arm_softmax_with_batch_q7.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_state_s16_s8.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_state_s16_s8.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_state_s16_s8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_state_s16_s8.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_state_s16_s8.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/CMSIS/NN/Source/SVDFunctions/arm_svdf_state_s16_s8.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/dct/fast-dct-fft.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/dct/fast-dct-fft.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/dct/fast-dct-fft.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/dct/fast-dct-fft.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/image/processing.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/image/processing.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/image/processing.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/image/processing.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/image/processing.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/image/processing.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fft.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fft.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fft.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fft.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fftr.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fftr.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/kissfft/kiss_fftr.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/memory.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/memory.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/memory.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/memory.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/memory.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/dsp/memory.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/arduino/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/brickml/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/activation_functions/esp_nn_relu_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_add_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/basic_math/esp_nn_mul_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_esp32s3.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_conv_opt.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_opt.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/convolution/esp_nn_depthwise_conv_s8_esp32s3.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/fully_connected/esp_nn_fully_connected_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_avg_pool_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/pooling/esp_nn_max_pool_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_ansi.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/espressif/ESP-NN/src/softmax/esp_nn_softmax_opt.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_device.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_driver.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ethos-core-driver/src/ethosu_pmu.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/himax/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/iar/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/infineon-psoc62/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mbed/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/mingw32/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/particle/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/posix/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/raspberry/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/renesas-ra6m5/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/seeed-vision-ai/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/silabs/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/sony/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/stm32-cubeai/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/synaptics/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/ti/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/debug_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/debug_log.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/debug_log.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/debug_log.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/debug_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/debug_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/porting/zephyr/ei_classifier_porting.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/c/common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/c/common.c
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/c/common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/c/common.c
CDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/c/common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/c/common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/error_reporter.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/flatbuffer_conversions.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/op_resolver.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/core/api/tensor_utils.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/portable_tensor_utils.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/quantization_util.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/reference_portable_tensor_utils.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/internal/tensor_utils.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/kernel_util_lite.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/tree_ensemble_classifier.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/tree_ensemble_classifier.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/tree_ensemble_classifier.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/tree_ensemble_classifier.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/tree_ensemble_classifier.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/kernels/tree_ensemble_classifier.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/all_ops_resolver.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/fake_micro_context.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_conversions_bridge.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/flatbuffer_utils.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/activations_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/add_n.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/arg_min_max.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/assign_variable.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_matmul.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/batch_to_space_nd.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_args.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/broadcast_to.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/call_once.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cast.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ceil.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/circular_buffer_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/comparisons.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/complex_abs.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/concatenation.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/conv_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/cumsum.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depth_to_space.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/depthwise_conv_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/dequantize_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/detection_postprocess.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/div.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elementwise.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/elu.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/ethosu.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/exp.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/expand_dims.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fill.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_div.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/floor_mod.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/fully_connected_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/gather_nd.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/hard_swish_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/if.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_runner.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/kernel_util_micro.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2_pool_2d.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/l2norm.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/leaky_relu_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/log_softmax.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logical_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/logistic_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/lstm_eval.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/maximum_minimum.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/micro_tensor_utils.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mirror_pad.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_interface.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mli_slicers.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/mul_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/neg.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pack.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pad.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/pooling_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/prelu_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/quantize_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/read_variable.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/real.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reduce_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/reshape.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_bilinear.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/resize_nearest_neighbor.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/rfft2d.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/round.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buf_mgr.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/scratch_buffers.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/select.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/shape.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/slice.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/softmax_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_batch_nd.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/space_to_depth.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/split_v.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squared_difference.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/squeeze.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/strided_slice.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/sub_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/svdf_common.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tanh.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/transpose_conv.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/tree_ensemble_classifier.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unidirectional_sequence_lstm.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/unpack.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/var_handle.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/while.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/kernels/zeros_like.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_helpers.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/greedy_memory_planner.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/linear_memory_planner.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocation_info.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_allocator.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_context.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_context.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_context.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_context.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_error_reporter.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_graph.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_interpreter.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_log.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_log.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_log.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_log.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_profiler.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_resource_variable.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_string.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_string.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_string.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_time.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_time.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_time.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/micro_utils.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/mock_micro_graph.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/non_persistent_arena_buffer_allocator.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/op_resolver_bridge.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/persistent_arena_buffer_allocator.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_micro_allocator.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/recording_single_arena_buffer_allocator.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/schema_utils.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/single_arena_buffer_allocator.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/system_setup.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/system_setup.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/system_setup.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/system_setup.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helper_custom_ops.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o: extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.cc
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/edge-impulse-sdk/tensorflow/lite/micro/test_helpers.o

$(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/tflite-model/trained_model_compiled.o: extension/edge_impulse_extension/ei-model/tflite-model/trained_model_compiled.cpp
	@$(POSIX_TOOL_PATH)echo 'Building extension/edge_impulse_extension/ei-model/tflite-model/trained_model_compiled.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ extension/edge_impulse_extension/ei-model/tflite-model/trained_model_compiled.cpp
CXXDEPS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/tflite-model/trained_model_compiled.d
OBJS += $(OUTPUT_DIR)/project/extension/edge_impulse_extension/ei-model/tflite-model/trained_model_compiled.o

$(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_command_set.o: firmware-sdk/at-server/ei_at_command_set.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/at-server/ei_at_command_set.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/at-server/ei_at_command_set.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_command_set.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_command_set.o

$(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_parser.o: firmware-sdk/at-server/ei_at_parser.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/at-server/ei_at_parser.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/at-server/ei_at_parser.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_parser.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_parser.o

$(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_server.o: firmware-sdk/at-server/ei_at_server.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/at-server/ei_at_server.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/at-server/ei_at_server.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_server.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_server.o

$(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_server_singleton.o: firmware-sdk/at-server/ei_at_server_singleton.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/at-server/ei_at_server_singleton.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/at-server/ei_at_server_singleton.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_server_singleton.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/at-server/ei_at_server_singleton.o

$(OUTPUT_DIR)/project/firmware-sdk/at_base64_lib.o: firmware-sdk/at_base64_lib.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/at_base64_lib.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/at_base64_lib.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/at_base64_lib.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/at_base64_lib.o

$(OUTPUT_DIR)/project/firmware-sdk/ei_device_lib.o: firmware-sdk/ei_device_lib.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/ei_device_lib.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/ei_device_lib.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/ei_device_lib.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/ei_device_lib.o

$(OUTPUT_DIR)/project/firmware-sdk/ei_fusion.o: firmware-sdk/ei_fusion.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/ei_fusion.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/ei_fusion.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/ei_fusion.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/ei_fusion.o

$(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/ieee754.o: firmware-sdk/QCBOR/src/ieee754.c
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/QCBOR/src/ieee754.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ firmware-sdk/QCBOR/src/ieee754.c
CDEPS += $(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/ieee754.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/ieee754.o

$(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/qcbor_decode.o: firmware-sdk/QCBOR/src/qcbor_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/QCBOR/src/qcbor_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ firmware-sdk/QCBOR/src/qcbor_decode.c
CDEPS += $(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/qcbor_decode.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/qcbor_decode.o

$(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/qcbor_encode.o: firmware-sdk/QCBOR/src/qcbor_encode.c
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/QCBOR/src/qcbor_encode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ firmware-sdk/QCBOR/src/qcbor_encode.c
CDEPS += $(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/qcbor_encode.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/qcbor_encode.o

$(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/UsefulBuf.o: firmware-sdk/QCBOR/src/UsefulBuf.c
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/QCBOR/src/UsefulBuf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ firmware-sdk/QCBOR/src/UsefulBuf.c
CDEPS += $(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/UsefulBuf.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/QCBOR/src/UsefulBuf.o

$(OUTPUT_DIR)/project/firmware-sdk/sensor-aq/sensor_aq.o: firmware-sdk/sensor-aq/sensor_aq.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/sensor-aq/sensor_aq.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/sensor-aq/sensor_aq.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/sensor-aq/sensor_aq.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/sensor-aq/sensor_aq.o

$(OUTPUT_DIR)/project/firmware-sdk/sensor-aq/sensor_aq_none.o: firmware-sdk/sensor-aq/sensor_aq_none.cpp
	@$(POSIX_TOOL_PATH)echo 'Building firmware-sdk/sensor-aq/sensor_aq_none.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ firmware-sdk/sensor-aq/sensor_aq_none.cpp
CXXDEPS += $(OUTPUT_DIR)/project/firmware-sdk/sensor-aq/sensor_aq_none.d
OBJS += $(OUTPUT_DIR)/project/firmware-sdk/sensor-aq/sensor_aq_none.o

$(OUTPUT_DIR)/project/src/ble.o: src/ble.c
	@$(POSIX_TOOL_PATH)echo 'Building src/ble.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ src/ble.c
CDEPS += $(OUTPUT_DIR)/project/src/ble.d
OBJS += $(OUTPUT_DIR)/project/src/ble.o

$(OUTPUT_DIR)/project/src/drivers/MX25R3235/mx25flash_spi.o: src/drivers/MX25R3235/mx25flash_spi.c
	@$(POSIX_TOOL_PATH)echo 'Building src/drivers/MX25R3235/mx25flash_spi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ src/drivers/MX25R3235/mx25flash_spi.c
CDEPS += $(OUTPUT_DIR)/project/src/drivers/MX25R3235/mx25flash_spi.d
OBJS += $(OUTPUT_DIR)/project/src/drivers/MX25R3235/mx25flash_spi.o

$(OUTPUT_DIR)/project/src/drivers/rgbled_brd4166.o: src/drivers/rgbled_brd4166.c
	@$(POSIX_TOOL_PATH)echo 'Building src/drivers/rgbled_brd4166.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ src/drivers/rgbled_brd4166.c
CDEPS += $(OUTPUT_DIR)/project/src/drivers/rgbled_brd4166.d
OBJS += $(OUTPUT_DIR)/project/src/drivers/rgbled_brd4166.o

$(OUTPUT_DIR)/project/src/ei_at_handlers.o: src/ei_at_handlers.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/ei_at_handlers.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/ei_at_handlers.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/ei_at_handlers.d
OBJS += $(OUTPUT_DIR)/project/src/ei_at_handlers.o

$(OUTPUT_DIR)/project/src/ei_device_tb2.o: src/ei_device_tb2.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/ei_device_tb2.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/ei_device_tb2.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/ei_device_tb2.d
OBJS += $(OUTPUT_DIR)/project/src/ei_device_tb2.o

$(OUTPUT_DIR)/project/src/ei_sampler.o: src/ei_sampler.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/ei_sampler.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/ei_sampler.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/ei_sampler.d
OBJS += $(OUTPUT_DIR)/project/src/ei_sampler.o

$(OUTPUT_DIR)/project/src/flash_memory.o: src/flash_memory.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/flash_memory.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/flash_memory.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/flash_memory.d
OBJS += $(OUTPUT_DIR)/project/src/flash_memory.o

$(OUTPUT_DIR)/project/src/inference/ei_run_audio_impulse.o: src/inference/ei_run_audio_impulse.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/inference/ei_run_audio_impulse.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/inference/ei_run_audio_impulse.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/inference/ei_run_audio_impulse.d
OBJS += $(OUTPUT_DIR)/project/src/inference/ei_run_audio_impulse.o

$(OUTPUT_DIR)/project/src/inference/ei_run_fusion_impulse.o: src/inference/ei_run_fusion_impulse.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/inference/ei_run_fusion_impulse.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/inference/ei_run_fusion_impulse.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/inference/ei_run_fusion_impulse.d
OBJS += $(OUTPUT_DIR)/project/src/inference/ei_run_fusion_impulse.o

$(OUTPUT_DIR)/project/src/libs/sensor_aq_mbedtls/sensor_aq_mbedtls_hs256.o: src/libs/sensor_aq_mbedtls/sensor_aq_mbedtls_hs256.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/libs/sensor_aq_mbedtls/sensor_aq_mbedtls_hs256.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/libs/sensor_aq_mbedtls/sensor_aq_mbedtls_hs256.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/libs/sensor_aq_mbedtls/sensor_aq_mbedtls_hs256.d
OBJS += $(OUTPUT_DIR)/project/src/libs/sensor_aq_mbedtls/sensor_aq_mbedtls_hs256.o

$(OUTPUT_DIR)/project/src/main.o: src/main.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/main.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/main.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/main.d
OBJS += $(OUTPUT_DIR)/project/src/main.o

$(OUTPUT_DIR)/project/src/sensors/ei_hall_sensor.o: src/sensors/ei_hall_sensor.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/sensors/ei_hall_sensor.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/sensors/ei_hall_sensor.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/sensors/ei_hall_sensor.d
OBJS += $(OUTPUT_DIR)/project/src/sensors/ei_hall_sensor.o

$(OUTPUT_DIR)/project/src/sensors/ei_inertial_sensor.o: src/sensors/ei_inertial_sensor.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/sensors/ei_inertial_sensor.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/sensors/ei_inertial_sensor.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/sensors/ei_inertial_sensor.d
OBJS += $(OUTPUT_DIR)/project/src/sensors/ei_inertial_sensor.o

$(OUTPUT_DIR)/project/src/sensors/ei_microphone.o: src/sensors/ei_microphone.cpp
	@$(POSIX_TOOL_PATH)echo 'Building src/sensors/ei_microphone.cpp'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CXX) $(CXXFLAGS) -c -o $@ src/sensors/ei_microphone.cpp
CXXDEPS += $(OUTPUT_DIR)/project/src/sensors/ei_microphone.d
OBJS += $(OUTPUT_DIR)/project/src/sensors/ei_microphone.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA