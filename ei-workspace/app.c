/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
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

#include "ei_main.h"
#include "mx25flash_spi.h"
#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "sl_simple_timer.h"
#include "gatt_db.h"

extern void ei_led_state_control();

#define SHUTDOWN_TIMEOUT_MS     400

// The advertising set handle allocated from Bluetooth stack.
static uint8_t advertising_set_handle = 0xff;

volatile int g_impulse_enable;

static sl_simple_timer_t led_timer;

static void led_timer_handler(sl_simple_timer_t *timer, void *data)
{
  (void)timer;
  (void)data;
  ei_led_state_control();
}

void setupTimer()
{
  sl_status_t sc;
  sc = sl_simple_timer_start(&led_timer, SHUTDOWN_TIMEOUT_MS, led_timer_handler, NULL, false);
  app_assert_status(sc);
}

void app_init(void)
{
  MX25_init();
  ei_init();
#ifdef BOARD_RGBLED_PRESENT
  rgb_led_init();
#endif // BOARD_RGBLED_PRESENT
  setupTimer();
}

void app_process_action(void)
{
  ei_main();
}

/**************************************************************************//**
 * Bluetooth stack event handler.
 * This overrides the dummy weak implementation.
 *
 * @param[in] evt Event coming from the Bluetooth stack.
 *****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t *evt)
{
  sl_status_t sc;
  bd_addr address;
  uint8_t address_type;
  uint8_t system_id[8];

  switch (SL_BT_MSG_ID(evt->header)) {
    // -------------------------------
    // This event indicates the device has started and the radio is ready.
    // Do not call any stack command before receiving this boot event!
    case sl_bt_evt_system_boot_id:

      // Extract unique ID from BT Address.
      sc = sl_bt_system_get_identity_address(&address, &address_type);
      app_assert_status(sc);

      // Pad and reverse unique ID to get System ID.
      system_id[0] = address.addr[5];
      system_id[1] = address.addr[4];
      system_id[2] = address.addr[3];
      system_id[3] = 0xFF;
      system_id[4] = 0xFE;
      system_id[5] = address.addr[2];
      system_id[6] = address.addr[1];
      system_id[7] = address.addr[0];

      sc = sl_bt_gatt_server_write_attribute_value(gattdb_system_id,
                                                   0,
                                                   sizeof(system_id),
                                                   system_id);
      app_assert_status(sc);

      // Create an advertising set.
      sc = sl_bt_advertiser_create_set(&advertising_set_handle);
      app_assert_status(sc);

      // Set advertising interval to 100ms.
      sc = sl_bt_advertiser_set_timing(
        advertising_set_handle,
        160, // min. adv. interval (milliseconds * 1.6)
        160, // max. adv. interval (milliseconds * 1.6)
        0,   // adv. duration
        0);  // max. num. adv. events
      app_assert_status(sc);
      // Start general advertising and enable connections.
      sc = sl_bt_advertiser_start(
        advertising_set_handle,
        advertiser_general_discoverable,
        advertiser_connectable_scannable);
      app_assert_status(sc);
      break;

    // -------------------------------
    // This event indicates that a new connection was opened.
    case sl_bt_evt_connection_opened_id:
      break;

    // -------------------------------
    // This event indicates that a connection was closed.
    case sl_bt_evt_connection_closed_id:
      // Restart advertising after client has disconnected.
      sc = sl_bt_advertiser_start(
        advertising_set_handle,
        advertiser_general_discoverable,
        advertiser_connectable_scannable);
      app_assert_status(sc);
      break;

    ///////////////////////////////////////////////////////////////////////////
    // Add additional event handlers here as your application requires!      //
    ///////////////////////////////////////////////////////////////////////////

    case sl_bt_evt_gatt_server_user_write_request_id:
      if (evt->data.evt_gatt_server_user_write_request.characteristic == gattdb_enable) {
          uint8_t *data = (uint8_t *)&evt->data.evt_gatt_server_user_write_request.value;
          g_impulse_enable = data[1] == 1 ? 1 : -1;

          // Send write response.
          sc = sl_bt_gatt_server_send_user_write_response(
            evt->data.evt_gatt_server_user_write_request.connection,
            evt->data.evt_gatt_server_user_write_request.characteristic,
            0);    // no error
          app_assert_status(sc);
      }
    break;
    // -------------------------------
    // Default event handler.
    default:
      break;
  }
}
