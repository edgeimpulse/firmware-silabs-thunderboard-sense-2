

#include <em_common.h>
#include "sl_bluetooth.h"
#include "sl_bt_stack_init.h"

#ifdef SL_COMPONENT_CATALOG_PRESENT
#include "sl_component_catalog.h"
#include "sli_bt_gattdb_def.h"
#ifdef SL_CATALOG_GATT_CONFIGURATION_PRESENT
extern const sli_bt_gattdb_t gattdb;
#else
const sli_bt_gattdb_t gattdb = {0};
#endif // SL_CATALOG_GATT_CONFIGURATION_PRESENT
#endif // SL_COMPONENT_CATALOG_PRESENT


static const sl_bt_configuration_t config = SL_BT_CONFIG_DEFAULT;

/** @brief Table of used BGAPI classes */
static const struct sli_bgapi_class * const bt_class_table[] =
{
  SL_BT_BGAPI_CLASS(system),
  SL_BT_BGAPI_CLASS(advertiser),
  SL_BT_BGAPI_CLASS(connection),
  SL_BT_BGAPI_CLASS(gatt_server),
  NULL
};
#if !defined(SL_CATALOG_KERNEL_PRESENT)
/**
 * Override @ref PendSV_Handler for the Link Layer task when Bluetooth runs
 * in baremetal mode. The override must not exist when Bluetooth runs in an RTOS
 * where the link layer task runs in a thread.
 */
#include <em_device.h>
void PendSV_Handler()
{
  sl_bt_priority_handle();
}
#endif

void sl_bt_init(void)
{
#if !defined(SL_CATALOG_KERNEL_PRESENT)
  NVIC_ClearPendingIRQ(PendSV_IRQn);
  NVIC_EnableIRQ(PendSV_IRQn);
#endif
  // Stack initialization could fail, e.g., due to out of memory.
  // The failure could not be returned to user yet as the system initialization
  // does not return an error code.
  sl_status_t err = sl_bt_init_stack(&config);
  (void) err;
  sl_bt_init_classes(bt_class_table);
}

SL_WEAK void sl_bt_on_event(sl_bt_msg_t* evt)
{
  (void)(evt);
}

void sl_bt_process_event(sl_bt_msg_t *evt)
{
  sl_bt_on_event(evt);
}

SL_WEAK bool sl_bt_can_process_event(uint32_t len)
{
  (void)(len);
  return true;
}

void sl_bt_step(void)
{
  sl_bt_msg_t evt;

  sl_bt_run();
  uint32_t event_len = sl_bt_event_pending_len();
  // For preventing from data loss, the event will be kept in the stack's queue
  // if application cannot process it at the moment.
  if ((event_len == 0) || (!sl_bt_can_process_event(event_len))) {
    return;
  }

  // Pop (non-blocking) a Bluetooth stack event from event queue.
  sl_status_t status = sl_bt_pop_event(&evt);
  if(status != SL_STATUS_OK){
    return;
  }
  sl_bt_process_event(&evt);
}
