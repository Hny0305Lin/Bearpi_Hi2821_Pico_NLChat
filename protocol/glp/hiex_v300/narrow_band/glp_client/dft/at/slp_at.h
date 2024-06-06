/*
 * Copyright (c) @CompanyNameMagicTag 2023-2023. All rights reserved.
 * Description: slp at
 * ROM      : NO
 * STRATEGY : NO
 */

#ifndef SLP_AT_H
#define SLP_AT_H

#include <stdint.h>
#include "slp_factory.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    uint32_t paraMap;
    uint32_t usageMode;         // 使用模式，0-ranging_aoa，1-air_mouse
    uint32_t rangingMode;       // 测距、定位模式
    uint32_t aoxDirection;      // 测角方向，0-poll帧后单向测向，1-resp帧后单向测角，2-双向测角 */
    uint32_t mrSource;          // 测量值传递方向, 0-本机接收, 1-本机发送
    uint32_t roundNum;          // 有效的ranging rounds数量
    uint32_t rangingFreq;       // 测距频率, 1~255Hz
} SlpAtSendRangingCtrlReqT;

typedef struct {
    uint32_t paraMap;  // paraMap是框架里需要的, 标识某一次发指令用了哪几个参数,
                       // 比如一共5个参数, 135可省略, paramap就是01010, 不需要设置，但是定义时候要加上。
    SlpCaliPara slpCaliPara;
} SlpAtCaliPara;

void SlpAtRegister(void);

#ifdef __cplusplus
}
#endif

#endif