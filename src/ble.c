/* Edge Impulse ingestion SDK
 * Copyright (c) 2022 EdgeImpulse Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#include "ble.h"
#include "inference/ei_run_impulse.h"
#include "em_common.h"
#include "gatt_db.h"
#include "sl_bluetooth.h"
#include <stdio.h>

// The advertising set handle allocated from Bluetooth stack.
static uint8_t advertising_set_handle = 0xff;

void ble_init(void)
{

}

void ble_process_action(void)
{

}

void ble_send_classifier_output(const char *data)
{
    sl_status_t sc;
    int data_len;
    //TODO: find max length of label in ei_classifier_inferencing_categories
    // (in model_variables.h)
    char temp_data[32] = {0};
    
    if(data == NULL) {
        data = temp_data;
        sc = sl_bt_gatt_server_read_attribute_value(gattdb_classifier,
                                                    0,
                                                    sizeof(temp_data),
                                                    &data_len,
                                                    data);
        if (sc != SL_STATUS_OK) {
            printf("ERR: Failed to read gattdb_classifier (0x%02x)\n", sc);
        }
    }
    else {
        data_len = strlen(data);
        sc = sl_bt_gatt_server_write_attribute_value(gattdb_classifier,
                                                    0,
                                                    data_len,
                                                    data);
        if (sc != SL_STATUS_OK) {
            printf("ERR: Failed to write gattdb_classifier (0x%02x)\n", sc);
        }
    }

    sc = sl_bt_gatt_server_notify_all(gattdb_classifier,
                                      data_len,
                                      data);
    if(sc != SL_STATUS_OK) {
        printf("ERR: Failed to send notification (0x%04lx)\n", sc);
    }
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
        if(sc != SL_STATUS_OK) {
            printf("ERR: Failed to get BLE address (0x%04lx)\n", sc);
        }

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
        if(sc != SL_STATUS_OK) {
            printf("ERR: Failed to write system ID (0x%04lx)\n", sc);
        }

        // Create an advertising set.
        sc = sl_bt_advertiser_create_set(&advertising_set_handle);
        if(sc != SL_STATUS_OK) {
            printf("ERR: Failed to create ADV set (0x%04lx)\n", sc);
        }

        // Set advertising interval to 100ms.
        sc = sl_bt_advertiser_set_timing(advertising_set_handle,
                                         160, // min. adv. interval (milliseconds * 1.6)
                                         160, // max. adv. interval (milliseconds * 1.6)
                                         0,   // adv. duration
                                         0);  // max. num. adv. events
        if(sc != SL_STATUS_OK) {
            printf("ERR: Failed to set ADV timing (0x%04lx)\n", sc);
        }

        // Start general advertising and enable connections.
        sc = sl_bt_advertiser_start(advertising_set_handle,
                                    sl_bt_advertiser_general_discoverable,
                                    sl_bt_advertiser_connectable_scannable);
        if(sc != SL_STATUS_OK) {
            printf("ERR: Failed to start advertising (0x%04lx)\n", sc);
        }
        break;

    // -------------------------------
    // This event indicates that a new connection was opened.
    case sl_bt_evt_connection_opened_id:
        break;

    // -------------------------------
    // This event indicates that a connection was closed.
    case sl_bt_evt_connection_closed_id:
        // Restart advertising after client has disconnected.
        sc = sl_bt_advertiser_start(advertising_set_handle,
                                    sl_bt_advertiser_general_discoverable,
                                    sl_bt_advertiser_connectable_scannable);
        if(sc != SL_STATUS_OK) {
            printf("ERR: Failed to re-start advertising (0x%04lx)\n", sc);
        }
        break;

    // -------------------------------
    // This event indicates that the value of an attribute in the local GATT
    // database was changed by a remote GATT client.
    case sl_bt_evt_gatt_server_user_write_request_id:
        if (gattdb_enable == evt->data.evt_gatt_server_user_write_request.characteristic) {
            uint8_t *data = (uint8_t *)&evt->data.evt_gatt_server_user_write_request.value;
            if (data[1] == 1) {
                ei_start_impulse(false, false, false);
            }
            else if (data[1] == 0) {
                ei_stop_impulse();
            }
            else {
                printf("ERR: Unsupported value: %02x\n", data[1]);
            }

            sc = sl_bt_gatt_server_send_user_write_response(
                evt->data.evt_gatt_server_user_write_request.connection,
                evt->data.evt_gatt_server_user_write_request.characteristic,
                0);    // no error
            if(sc != SL_STATUS_OK) {
                printf("ERR: Failed to send write ACK (0x%04lx)\n", sc);
            }

        }
        break;

    // -------------------------------
    // This event occurs when the remote device enabled or disabled the
    // notification.
    case sl_bt_evt_gatt_server_characteristic_status_id:
        if (gattdb_classifier == evt->data.evt_gatt_server_characteristic_status.characteristic) {
            // A local Client Characteristic Configuration descriptor was changed in
            // the gattdb_classifier characteristic.
            if (evt->data.evt_gatt_server_characteristic_status.client_config_flags
                & sl_bt_gatt_notification) {
                // The client just enabled the notification. Send notification of the
                // current classifier stored in the local GATT table.
                ble_send_classifier_output(NULL);
            }
        }
        break;

    ///////////////////////////////////////////////////////////////////////////
    // Add additional event handlers here as your application requires!      //
    ///////////////////////////////////////////////////////////////////////////

    // -------------------------------
    // Default event handler.
    default:
        break;
    }
}
