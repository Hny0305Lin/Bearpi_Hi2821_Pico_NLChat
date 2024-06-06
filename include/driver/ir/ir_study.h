/**
 * Copyright (c) @CompanyNameMagicTag 2024-2024. All rights reserved. \n
 *
 * Description: IR STUDY header \n
 * Author: @CompanyNameTag \n
 * History: \n
 * 2024-02-02, Create file. \n
 */
#ifndef IR_STUDY_H
#define IR_STUDY_H

#include <stdint.h>

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif /* __cplusplus */
#endif /* __cplusplus */

/**
 * @if Eng
 * @brief  IR study.
 * @param  [in] key_value Key for IR learning.
 * @else
 * @brief  红外学习。
 * @param  [in] key_value 进行红外学习的按键。
 * @endif
 */
void uapi_ir_study_start(uint8_t key_value);

/**
 * @if Eng
 * @brief  Check whether the key have been learned.
 * @param  [in] key_value Keys to be checked.
 * @param  [out] len Length of the learned IR pattern array.
 * @retval The IR carrier frequency in Hertz.
 * @else
 * @brief  检查按键是否学习过。
 * @param  [in] key_value 要检查的按键。
 * @param  [out] len 学习后的红外数组的长度。
 * @retval IR载波频率（以赫兹为单位）。
 * @endif
 */
uint32_t uapi_ir_study_check(uint8_t key_value, uint32_t* len);

/**
 * @if Eng
 * @brief  IR TX port.
 * @param  [in] key_value Learned Key.
 * @param  [in] length Length of the learned IR pattern array.
 * @param  [in] freq The IR carrier frequency in Hertz.
 * @else
 * @brief  红外发送接口。
 * @param  [in] key_value 学习过的按键。
 * @param  [in] length 学习后的红外pattern数组的长度。
 * @param  [in] freq IR载波频率（以赫兹为单位）。
 * @endif
 */
void uapi_ir_study_send(uint8_t key_value, uint32_t length, uint32_t freq);

/**
 * @if Eng
 * @brief  Restore default settings.
 * @else
 * @brief  恢复默认设置。
 * @endif
 */
void uapi_ir_restore_default_setting(void);

#ifdef __cplusplus
#if __cplusplus
}
#endif /* __cplusplus */
#endif /* __cplusplus */


#endif