/***************************************************************************//**
 * @file
 * @brief Silicon Labs Empty Example Project
 *
 * This example demonstrates the bare minimum needed for a Blue Gecko C application
 * that allows Over-the-Air Device Firmware Upgrading (OTA DFU). The application
 * starts advertising after boot and restarts advertising after a connection is closed.
 *******************************************************************************
 * # License
 * <b>Copyright 2018 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

/* Board headers */
#include "init_mcu.h"
#include "init_board.h"
#include "init_app.h"
#include "ble-configuration.h"
#include "board_features.h"
#include "retargetserial.h"

/* Bluetooth stack headers */
#include "bg_types.h"
#include "native_gecko.h"
#include "gatt_db.h"

/* Libraries containing default Gecko configuration values */
#include "em_emu.h"
#include "em_cmu.h"
#include "em_timer.h"

#include "thunderboard/util.h"
#include "thunderboard/board.h"
#include "thunderboard/si7021.h"
#include "thunderboard/si1133.h"
#include "thunderboard/bap.h"
#include "thunderboard/ccs811.h"
#include "thunderboard/imu/imu.h"
//#include "app_sound.h"

#include "mx25flash_spi.h"
/* Application header */
#include "app.h"
#include "ei_main.h"


/***********************************************************************************************//**
 * @addtogroup Application
 * @{
 **************************************************************************************************/

/***********************************************************************************************//**
 * @addtogroup app
 * @{
 **************************************************************************************************/

#ifndef MAX_ADVERTISERS
#define MAX_ADVERTISERS 1
#endif

#ifndef MAX_CONNECTIONS
#define MAX_CONNECTIONS 4
#endif

void ei_led_state_control(void);

//static bool sensorInitState = false;
uint8_t bluetooth_stack_heap[DEFAULT_BLUETOOTH_HEAP(MAX_CONNECTIONS)];

/* Bluetooth stack configuration parameters (see "UG136: Silicon Labs Bluetooth C Application Developer's Guide" for details on each parameter) */
static gecko_configuration_t config = {
  .config_flags = 0,                                   /* Check flag options from UG136 */
#if defined(FEATURE_LFXO) || defined(PLFRCO_PRESENT)
  .sleep.flags = SLEEP_FLAGS_DEEP_SLEEP_ENABLE,        /* Sleep is enabled */
#else
  .sleep.flags = 0,
#endif
  .bluetooth.max_connections = MAX_CONNECTIONS,        /* Maximum number of simultaneous connections */
  .bluetooth.max_advertisers = MAX_ADVERTISERS,        /* Maximum number of advertisement sets */
  .bluetooth.heap = bluetooth_stack_heap,              /* Bluetooth stack memory for connection management */
  .bluetooth.heap_size = sizeof(bluetooth_stack_heap), /* Bluetooth stack memory for connection management */
#if defined(FEATURE_LFXO)
  .bluetooth.sleep_clock_accuracy = 100,               /* Accuracy of the Low Frequency Crystal Oscillator in ppm. *
                                                       * Do not modify if you are using a module                  */
#elif defined(PLFRCO_PRESENT)
  .bluetooth.sleep_clock_accuracy = 500,               /* In case of internal RCO the sleep clock accuracy is 500 ppm */
#endif
  .gattdb = &bg_gattdb_data,                           /* Pointer to GATT database */
  .ota.flags = 0,                                      /* Check flag options from UG136 */
  .ota.device_name_len = 3,                            /* Length of the device name in OTA DFU mode */
  .ota.device_name_ptr = "OTA",                        /* Device name in OTA DFU mode */
  .pa.config_enable = 1,                               /* Set this to be a valid PA config */
#if defined(FEATURE_PA_INPUT_FROM_VBAT)
  .pa.input = GECKO_RADIO_PA_INPUT_VBAT,               /* Configure PA input to VBAT */
#else
  .pa.input = GECKO_RADIO_PA_INPUT_DCDC,               /* Configure PA input to DCDC */
#endif // defined(FEATURE_PA_INPUT_FROM_VBAT)
  .rf.flags = GECKO_RF_CONFIG_ANTENNA,                 /* Enable antenna configuration. */
  .rf.antenna = GECKO_RF_ANTENNA,                      /* Select antenna path! */
};


void TIMER1_IRQHandler(void)
{

    TIMER_IntClear(TIMER1, 1);

    ei_led_state_control();
    //appLoop();  

    NVIC_ClearPendingIRQ(TIMER1_IRQn);
}

/**
 * @brief      setup and enable timer1 with overflow interrupt
 *             triggered every ~0.4 s
 */
void setupTimer(void)
{
    TIMER_Init_TypeDef   timerInit = TIMER_INIT_DEFAULT;
      
    timerInit.prescale = timerPrescale256;
  
    CMU_ClockEnable(cmuClock_TIMER1, true);
    TIMER_Init(TIMER1, &timerInit);
    TIMER_TopSet(TIMER1, 0xFFFF);
    
    NVIC_ClearPendingIRQ(TIMER1_IRQn);
    NVIC_EnableIRQ(TIMER1_IRQn);
    TIMER_Enable(TIMER1, true);

    TIMER_IntEnable(TIMER1, 1);
}

/**
 * @brief  Main function
 */
int main(void)
{
    /* Initialize device */
    initMcu();
    /* Initialize board */
    initBoard();
    /* Initialize application */
    initApp();

    UTIL_init();
    BOARD_init();
    RETARGET_SerialInit();
    BOARD_rgbledEnable(true, 0xF);


    MX25_init();

    ei_init();
  
    /* Start application */
    appMain(&config);

    setupTimer();

    while (1) {
        ei_main();
        //appLoop();
    }
}

/** @} (end addtogroup app) */
/** @} (end addtogroup Application) */