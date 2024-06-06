/**
 * Copyright (c) @CompanyNameMagicTag 2023-2023. All rights reserved. \n
 *
 * Description: PDM AMIC Sample Source. \n
 * Author: @CompanyNameTag \n
 * History: \n
 * 2023-11-30, Create file. \n
 */
#include "pinctrl.h"
#include "gpio.h"
#include "pdm.h"
#include "adc.h"
#include "adc_porting.h"
#include "watchdog.h"
#include "dma.h"
#include "hal_dma.h"
#include "osal_debug.h"
#include "soc_osal.h"
#include "app_init.h"

#define PDM_DMA_PRIORITY            3
#define ADC_GADC_CHANNEL7           7
#define ADC_GADC_CHANNEL6           6
#define PDM_OFFSET_16               16
#define PDM_OFFSET_24               24
#define PDM_FIFO_ADDR               (0x5208E080)

#define PDM_TASK_STACK_SIZE         0x1000
#define PDM_TASK_PRIO               24

static uint32_t g_app_pdm_dma_data[CONFIG_PDM_TRANSFER_LEN_BY_DMA] = { 0 };
static uint8_t g_app_pdm_buffer[CONFIG_PDM_MAX_RECORD_DATA_SIZE] = { 0 };
static uint32_t g_app_pdm_buffer_filled_count = 0;
static uint8_t g_dma_trans_done = 0;

static void app_pdm_init_pin(pin_t pin)
{
    uapi_pin_set_mode(pin, CONFIG_ADC_PIN_MODE);
    uapi_gpio_set_dir(pin, GPIO_DIRECTION_INPUT);
    uapi_pin_set_pull(pin, PIN_PULL_NONE);
#if defined(CONFIG_PINCTRL_SUPPORT_IE)
    uapi_pin_set_ie(pin, PIN_IE_1);
#endif
}

static void app_pdm_set_config(void)
{
    uint8_t mic = HAL_PDM_AMIC;
    pdm_config_t config = { 0 };

    config.srcdn_src_mode = TRIPLE_EXTRACT;

    if (uapi_pdm_set_attr(mic, &config) == ERRCODE_SUCC) {
        osal_printk("pdm config attr succ!\r\n");
    } else {
        osal_printk("pdm config attr fail!\r\n");
    }
}

static int32_t app_pdm_start_dma_transfer(uint32_t *pdm_buffer, dma_transfer_cb_t trans_done, dma_channel_t *channel)
{
    dma_ch_user_peripheral_config_t transfer_config;

    transfer_config.src = (uint32_t)(uintptr_t)PDM_FIFO_ADDR;
    transfer_config.dest = (uint32_t)(uintptr_t)pdm_buffer;
    transfer_config.transfer_num = CONFIG_PDM_TRANSFER_LEN_BY_DMA;
    transfer_config.src_handshaking = 0x4;  /* MIC45_UPLINK_REQ 握手通道 */
    transfer_config.dest_handshaking = 0;
    transfer_config.trans_type = HAL_DMA_TRANS_PERIPHERAL_TO_MEMORY_DMA;
    transfer_config.trans_dir = HAL_DMA_TRANSFER_DIR_PERIPHERAL_TO_MEM;
    transfer_config.priority = PDM_DMA_PRIORITY;
    transfer_config.src_width = HAL_DMA_TRANSFER_WIDTH_32;
    transfer_config.dest_width = HAL_DMA_TRANSFER_WIDTH_32;
    transfer_config.burst_length = 1;
    transfer_config.src_increment = HAL_DMA_ADDRESS_INC_NO_CHANGE;
    transfer_config.dest_increment = HAL_DMA_ADDRESS_INC_INCREMENT;
    transfer_config.protection = HAL_DMA_PROTECTION_CONTROL_BUFFERABLE;

    if (uapi_dma_configure_peripheral_transfer_single(&transfer_config, channel, trans_done,
                                                      (uintptr_t)NULL) != ERRCODE_SUCC) {
        osal_printk("DMA configure fail.\r\n");
        return 1;
    }

    if (uapi_dma_start_transfer((uint8_t)*channel) != ERRCODE_SUCC) {
        osal_printk("DMA start transfer fail.\r\n");
        return 1;
    }

    return 0;
}

static void app_dma_transfer_done_callback(uint8_t int_type, uint8_t channel, uintptr_t arg)
{
    unused(arg);
    unused(channel);
    switch (int_type) {
        case HAL_DMA_INTERRUPT_TFR:
            g_dma_trans_done = 1;
            break;
        case HAL_DMA_INTERRUPT_BLOCK:
            g_dma_trans_done = 1;
            break;
        case HAL_DMA_INTERRUPT_ERR:
            osal_printk("DMA transfer error.\r\n");
            break;
        default:
            break;
    }
}

static void *pdm_amic_task(const char *arg)
{
    unused(arg);
    dma_channel_t channel;
    app_pdm_init_pin(CONFIG_ADC_USE_PIN1);
    app_pdm_init_pin(CONFIG_ADC_USE_PIN2);
    uapi_adc_init(ADC_CLOCK_NONE);
    uapi_adc_power_en(AFE_AMIC_MODE, true);
    uapi_adc_open_differential_channel(ADC_GADC_CHANNEL7, ADC_GADC_CHANNEL6);
    adc_calibration(AFE_AMIC_MODE, true, true, true);
    /* PDM init. */
    uapi_pdm_init();

    app_pdm_set_config();

    if (uapi_pdm_start() == ERRCODE_SUCC) {
        osal_printk("pdm start transfer succ!\r\n");
    }  else {
        osal_printk("pdm start transfer fail!\r\n");
    }

    dma_port_clock_enable();
    uapi_dma_init();
    uapi_dma_open();

    while (1) {
        g_dma_trans_done = 0;
        if (app_pdm_start_dma_transfer(g_app_pdm_dma_data, app_dma_transfer_done_callback, &channel) != 0) {
            continue;
        }
        while (!g_dma_trans_done) {
            uapi_watchdog_kick();
        }
        uapi_dma_end_transfer(channel);
        for (uint32_t i = 0; i < CONFIG_PDM_TRANSFER_LEN_BY_DMA; i++) {
            g_app_pdm_buffer[g_app_pdm_buffer_filled_count++] = (uint8_t)(g_app_pdm_dma_data[i] >> PDM_OFFSET_16);
            g_app_pdm_buffer[g_app_pdm_buffer_filled_count++] = (uint8_t)(g_app_pdm_dma_data[i] >> PDM_OFFSET_24);
        }
        if (g_app_pdm_buffer_filled_count < CONFIG_PDM_MAX_RECORD_DATA_SIZE) {
            osal_msleep(1);
            continue;
        } else {
            osal_printk("The current number of records in PDM exceeds the maximum allowed limit,addr:0x%x\r\n",
                        (uintptr_t)(&g_app_pdm_buffer));
            uapi_pdm_stop();
            dma_port_clock_disable();
            return NULL;
        }
    }

    return NULL;
}

static void pdm_amic_entry(void)
{
    osal_task *task_handle;

    osal_kthread_lock();
    task_handle = osal_kthread_create((osal_kthread_handler)pdm_amic_task, 0, "PdmAmicTask", PDM_TASK_STACK_SIZE);
    if (task_handle != NULL) {
        osal_kthread_set_priority(task_handle, PDM_TASK_PRIO);
        free(task_handle);
    }
    osal_kthread_unlock();
}

/* Run the pdm_amic_entry. */
app_run(pdm_amic_entry);