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
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA