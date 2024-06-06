/**
 * Copyright (c) @CompanyNameMagicTag 2023-2023. All rights reserved. \n
 *
 * Description: ADC Sample Source. \n
 * Author: @CompanyNameTag \n
 * History: \n
 * 2023-07-06, Create file. \n
 */
#include "pinctrl.h"
#include "adc.h"
#include "adc_porting.h"
#include "osal_debug.h"
#include "cmsis_os2.h"
#include "app_init.h"

#define ADC_TASK_STACK_SIZE               0x1000
#define ADC_TASK_PRIO                     (osPriority_t)(17)
#define ADC_AUTO_SAMPLE_TEST_TIMES        1000

#define GAFE_SAMPLE_VALUE_SIGN_BIT        16
#define ADC_REFERENCE_VOLTAGE_MV          3300
#define ADC_REF_VOL_DIFFERENCE_MULT       1
#define ADC_TICK2VOL_REF_VOLTAGE_MV       (ADC_REFERENCE_VOLTAGE_MV * ADC_REF_VOL_DIFFERENCE_MULT)

static void *adc_task(const char *arg)
{
    UNUSED(arg);
    osal_printk("start adc sample test");
    uapi_adc_init(ADC_CLOCK_NONE);

    uapi_adc_open_channel(GADC_CHANNEL_0);  //GPIO02
    uapi_adc_power_en(AFE_GADC_MODE, true);
    adc_calibration(AFE_GADC_MODE, true, true, false);
    uapi_adc_manual_sample(GADC_CHANNEL_0);


    for (int i = 0; i < ADC_AUTO_SAMPLE_TEST_TIMES; i++) {
        int gadc_value = 0;
        gadc_value =  uapi_adc_auto_sample(GADC_CHANNEL_0);
        osal_printk("gadc: %dmv\n", (gadc_value * ADC_TICK2VOL_REF_VOLTAGE_MV) >> GAFE_SAMPLE_VALUE_SIGN_BIT);
    }
    return NULL;
}

static void adc_entry(void)
{
    osThreadAttr_t attr;

    attr.name = "ADCTask";
    attr.attr_bits = 0U;
    attr.cb_mem = NULL;
    attr.cb_size = 0U;
    attr.stack_mem = NULL;
    attr.stack_size = ADC_TASK_STACK_SIZE;
    attr.priority = ADC_TASK_PRIO;

    if (osThreadNew((osThreadFunc_t)adc_task, NULL, &attr) == NULL) {
        /* Create task fail. */
    }
}

/* Run the adc_entry. */
app_run(adc_entry);