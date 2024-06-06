/**
 * Copyright (c) @CompanyNameMagicTag 2024-2024. All rights reserved. \n
 *
 * Description: Provides ir port template \n
 * Author: @CompanyNameTag \n
 * History: \n
 * 2024-03-15， Create file. \n
 */

#ifndef IR_PORTING_H
#define IR_PORTING_H

#include <stdint.h>
#include <stdbool.h>
#include "chip_core_irq.h"
#include "platform_core.h"
#include "soc_osal.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif /* __cplusplus */
#endif /* __cplusplus */

#if defined(CONFIG_SAMPLE_SUPPORT_IR_STUDY)
/**
 * @brief  IR gpio init.
 */
void ir_port_gpio_init(void);

/**
 * @brief  IR gpio mask interrupt.
 */
void ir_port_gpio_mask_interrupt(void);

/**
 * @brief  IR gpio clear eoi.
 */
void ir_port_gpio_eoi_clr_all(void);

/**
 * @brief  Get IR gpio interrupt state.
 * @return IR gpio interrupt state.
 */
uint32_t ir_port_gpio_get_intr_state(void);
#endif /* CONFIG_SAMPLE_SUPPORT_IR_STUDY */

/**
 * @brief  IR timer1 init.
 * @param [in]  us timer(us).
 */
void ir_port_timer1_init(uint32_t us);

/**
 * @brief  IR timer0 init.
 * @param [in]  us timer(us).
 */
void ir_port_timer0_init(uint32_t us);

/**
 * @brief  IR timer0 disable.
 */
void ir_port_tick_timer0_disable(void);

/**
 * @brief  IR timer1 disable.
 */
void ir_port_tick_timer1_disable(void);

/**
 * @brief  IR timer0 enable.
 */
void ir_port_tick_timer0_enable(void);

/**
 * @brief  IR timer1 enable.
 */
void ir_port_tick_timer1_enable(void);

/**
 * @brief  IR timer0 clear eoi.
 */
void ir_port_tick_timer0_eoi_clr(void);

/**
 * @brief  IR timer1 clear eoi.
 */
void ir_port_tick_timer1_eoi_clr(void);

/**
 * @brief  Register the interrupt of IR.
 * @param [in]  irq_id irq num.
 * @param [in]  ir_handler irq handler.
 */
void ir_port_register_irq(uint32_t irq_id, osal_irq_handler ir_handler);

/**
 * @brief  Unregister the interrupt of IR.
 * @param [in]  irq_id irq num.
 */
void ir_port_unregister_irq(uint32_t irq_id);

/**
 * @brief  IR flash write.
 * @param  [in]  flash_addr The start address of the data.
 * @param  [in]  write_data Data to be written.
 * @param  [in]  write_size Number of bytes.
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref errcode_t.
 */
errcode_t ir_port_flash_reg_write(uint32_t flash_addr, uint8_t *write_data, uint32_t write_size);

/**
 * @brief  IR flash read.
 * @param  [in]  flash_addr The start address of the data.
 * @param  [out]  read_buffer Buffer for receiving data.
 * @param  [in]  read_size Number of bytes.
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref errcode_t.
 */
errcode_t ir_port_flash_reg_read(uint32_t flash_addr, uint8_t *read_buffer, uint32_t read_size);

/**
 * @brief  IR flash erase.
 * @param  [in]  flash_addr Start address for erasing.
 * @param  [in]  erase_size Size of the flash memory to be erased.
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref errcode_t.
 */
errcode_t ir_port_flash_reg_erase(uint32_t flash_addr, uint32_t erase_size);

/**
 * @}
 */

#ifdef __cplusplus
#if __cplusplus
}
#endif /* __cplusplus */
#endif /* __cplusplus */

#endif