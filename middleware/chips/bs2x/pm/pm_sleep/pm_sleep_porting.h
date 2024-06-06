/**
 * Copyright (c) @CompanyNameMagicTag 2023-2023. All rights reserved. \n
 *
 * Description: Provides pm sleep port \n
 * Author: @CompanyNameTag \n
 * History: \n
 * 2023-01-13， Create file. \n
 */
#ifndef PM_SLEEP_PORTING_H
#define PM_SLEEP_PORTING_H

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif /* __cplusplus */
#endif /* __cplusplus */

/**
 * @defgroup middleware_chips_pm_sleep_port PM sleep port
 * @ingroup  middleware_chips_pm
 * @{
 */

#ifndef CONFIG_PM_LIGHT_SLEEP_THRESHOLD_MS
#define CONFIG_PM_LIGHT_SLEEP_THRESHOLD_MS 1
#endif

#ifndef CONFIG_PM_DEEP_SLEEP_THRESHOLD_MS
#define CONFIG_PM_DEEP_SLEEP_THRESHOLD_MS 10
#endif
extern bool g_get_xo_core_vals;
extern uint32_t g_xo_core_trim_rev_get;
extern uint32_t g_xo_core_trim_get;
#define ULP_AON_CTL_EFUSE_ULP_SEL0_REG         (ULP_AON_CTL_RB_ADDR + 0x1000)
#define XO_CORE_TRIM_SEL                       0x0
#define XO_CORE_TRIM_SEL_BIT_LEN               0x2
#define XO_CORE_TRIM_SEL_RES_VAL               0x3
#define ULP_AON_CTL_PMU_TRIM_CTL4_REG          (ULP_AON_CTL_RB_ADDR + 0x1020)
#define XO_CORE_TRIM_REV_CTL                   0x1
#define XO_CORE_TRIM_REV_CTL_LEN               0x5
#define ULP_AON_CTL_PMU_TRIM_CTL6_REG          (ULP_AON_CTL_RB_ADDR + 0x1028)
#define XO_CORE_TRIM_CTL                       0x8
#define XO_CORE_TRIM_CTL_LEN                   0x5
#define XO_CORE_TRIM_CTL_STEP1_VAL             0x17
#define XO_CORE_TRIM_CTL_STEP2_VAL             0x11
#define FUSE_CTL_RB_PMU2_TRIM_REG              (FUSE_CTL_RB_ADDR + 0x834)
#define XO_CORE_TRIM_GET                       0x1
#define XO_CORE_TRIM_GET_LEN                   0x5
#define FUSE_CTL_RB_CMU_TRIM0_REG              (FUSE_CTL_RB_ADDR + 0x83C)
#define XO_CORE_TRIM_REV_GET                   0x8
#define XO_CORE_TRIM_REV_GET_LEN               0x5

void pm_wakeup_rtc_init(void);
void pm_wakeup_rtc_start(uint32_t time_ms);

void pm_port_start_tickless(void);
void pm_port_stop_tickless(uint32_t sleep_ms);
uint32_t pm_port_get_sleep_ms(void);
void pm_port_allow_deepsleep(bool allow);
void pm_port_enter_wfi(void);
void pm_port_start_wakeup_timer(uint32_t sleep_ms);
void pm_port_lightsleep_config(void);
void pm_port_light_wakeup_config(void);
void pm_port_deepsleep_config(void);
void pm_port_deep_wakeup_config(void);
void lowpower_cpu_suspend(void);
void lowpower_cpu_resume(void);
void pm_port_cpu_suspend(void);
void pm_port_cpu_resume(void);
uint16_t pm_port_get_sleep_event_status(void);
uint16_t pm_port_get_wakeup_event_status(void);
void pm_port_sleep_config_int(void);
#ifdef RAM_PARTIAL_RETENTION
void pm_port_enable_partial_retention(void);
void pm_port_disable_partial_retention(void);
#endif

/* 该接口可以让系统强制进睡眠，但是无法通过唤醒源唤醒，只能强制开关机恢复。 */
void pm_force_the_system_to_sleep(void);

#define PM_GET_SLEEP_EVENT_STATUS   pm_port_get_sleep_event_status()
#define PM_GET_WKUP_EVENT_STATUS  pm_port_get_wakeup_event_status()

/**
 * @}
 */

#ifdef __cplusplus
#if __cplusplus
}
#endif /* __cplusplus */
#endif /* __cplusplus */

#endif

