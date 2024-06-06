/*
 * Copyright (c) @CompanyNameMagicTag 2024-2024. All rights reserved.
 * Description: slp factory api
 * ROM      : NO
 * STRATEGY : NO
 */

/**
 * @defgroup middleware_service_slp_factory_api SLP FACTORY API
 * @ingroup  middleware_service_slp_factory
 * @{
 */

#ifndef SLP_FACTORY_H
#define SLP_FACTORY_H

#include <stdint.h>
#include "slp_errcode.h"
#include "errcode.h"

#ifdef __cplusplus
extern "C" {
#endif

#pragma pack(1)
/**
 * @if Eng
 * @brief Struct of cir data for slp
 * @else
 * @brief slp的cir数据
 * @endif
 */
typedef struct {
    int16_t cirI;                   /*!< @if Eng i of cir data.
                                         @else cir数据的i。 @endif */
    int16_t cirQ;                   /*!< @if Eng q of cir data.
                                         @else cir数据的q。 @endif */
    uint8_t bitWidth;               /*!< @if Eng bit width of cir data.
                                         @else cir数据的位宽。 @endif */
} SlpCirIq;

/**
 * @if Eng
 * @brief Struct of slp phase calibration data
 * @else
 * @brief slp相位校准数据
 * @endif
 */
typedef struct {
    SlpCirIq cirIq0;                /*!< @if Eng phase calibration data of antenna 0.
                                         @else 天线0的相位校准数据。 @endif */
    SlpCirIq cirIq1;                /*!< @if eng phase calibration data of antenna 1.
                                         @else 天线1的相位校准数据。 @endif */
} SlpAoxCaliData;

/**
 * @if Eng
 * @brief Struct of angle measurement result
 * @else
 * @brief slp测角结果
 * @endif
 */
typedef struct {
    int16_t aoxAzi;                 /*!< @if Eng azimuth result, unit: 0.01°.
                                         @else 方向角结果, 单位: 0.01度。 @endif */
    uint8_t aoxAziFom;              /*!< @if Eng FOM (Figure Of Merit) of the azimuth.
                                         @else 方向角置信度。 @endif */
    int16_t aoxElev;                /*!< @if Eng elevation result, unit: 0.01°.
                                         @else 俯仰角结果, 单位: 0.01度。 @endif */
    uint8_t aoxElevFom;             /*!< @if Eng FOM (Figure Of Merit) of the elevation.
                                         @else 俯仰角置信度。 @endif */
} SlpAoxRslt;

/**
 * @if Eng
 * @brief Struct of slp phase calibration result
 * @else
 * @brief slp相位校准结果
 * @endif
 */
typedef struct {
    int32_t decoupleMatIqD11I;      /*!< @if Eng i of calibration result d11.
                                         @else 相位校准结果d11的i。 @endif */
    int32_t decoupleMatIqD11Q;      /*!< @if Eng q of calibration result d11.
                                         @else 相位校准结果d11的1。 @endif */
    int32_t decoupleMatIqD12I;      /*!< @if Eng i of calibration result d12.
                                         @else 相位校准结果d12的i。 @endif */
    int32_t decoupleMatIqD12Q;      /*!< @if Eng q of calibration result d12.
                                         @else 相位校准结果d12的q。 @endif */
    int32_t decoupleMatIqD21I;      /*!< @if Eng i of calibration result d21.
                                         @else 相位校准结果d21的i。 @endif */
    int32_t decoupleMatIqD21Q;      /*!< @if Eng q of calibration result d21.
                                         @else 相位校准结果d21的q。 @endif */
    int32_t decoupleMatIqD22I;      /*!< @if Eng i of calibration result d22.
                                         @else 相位校准结果d22的i。 @endif */
    int32_t decoupleMatIqD22Q;      /*!< @if Eng q of calibration result d22.
                                         @else 相位校准结果d22的q。 @endif */
} SlpCaliPara;

/**
 * @if Eng
 * @brief Struct of slp factory phase calibration data report interface
 * @else
 * @brief slp产测相位校准数据上报
 * @endif
 */
typedef struct {
    int32_t tof;                    /*!< @if Eng time of flight, unit: 1/64 ns.
                                         @else 测距结果, 飞行时间, 单位: 1/64纳秒. @endif */
    SlpAoxCaliData aoxCaliData;     /*!< @if Eng phase calibration data.
                                         @else 相位校准数据. @endif */
    SlpAoxRslt aoxRslt;             /*!< @if Eng angle measurement result.
                                         @else 测角结果. @endif */
} SlpFactoryAoxCaliRpt;

/**
 * @if Eng
 * @brief Struct of slp factory report interface
 * @else
 * @brief slp产测相位校准结果上报
 * @endif
 */
typedef struct {
    SlpCaliPara caliPara;           /*!< @if Eng phase calibration result.
                                         @else 相位校准结果. @endif */
} SlpFactoryCaliParaRpt;
#pragma pack()

/**
 * @if Eng
 * @brief Enum of factory test mode
 * @else
 * @brief 产线测试模式
 * @endif
 */
typedef enum {
    SLP_FACTORY_TEST_NONE = 0,      /*!< @if Eng slp normal service mode
                                         @else slp 正常业务模式 @endif */
    SLP_FACTORY_TEST_AOX_CALI,      /*!< @if Eng slp phase calibration mode
                                         @else slp 相位校准模式 @endif */
} SlpFactoryTestMode;

/**
 * @if Eng
 * @brief Set factory test mode.
 * @par Description: Set factory test mode.
 * @param  [in]  mode factory test mode，see @ref SlpFactoryTestMode
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref ErrcodeSlpClient
 * @else
 * @brief 设置产测模式。
 * @par Description: 设置产测模式。
 * @param  [in]  mode 产测模式，参考 @ref SlpFactoryTestMode
 * @retval ERRCODE_SUCC 成功。
 * @retval Other        失败。参考 @ref ErrcodeSlpClient
 * @endif
 */
ErrcodeSlpClient SlpSetFactoryTestMode(uint8_t mode);

/**
 * @if Eng
 * @brief Write the calibration value.
 * @par Description: Write the calibration value.
 * @param  [in]  info cali result, see @ref SlpCaliPara
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref ErrcodeSlpClient
 * @else
 * @brief 写入校准值。
 * @par Description: 写入校准值。
 * @param  [in]  caliPara 校准值，参考 @ref SlpCaliPara
 * @retval ERRCODE_SUCC 成功。
 * @retval Other        失败。参考 @ref ErrcodeSlpClient
 * @endif
 */
errcode_t SlpWriteDecoupleMatrix(SlpCaliPara *caliPara);

/**
 * @if Eng
 * @brief Read the calibration value.
 * @par Description: Read the calibration value.
 * @param  [in]  info cali para, see @ref SlpCaliPara
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref ErrcodeSlpClient
 * @else
 * @brief 读取校准值。
 * @par Description: 读取校准值。
 * @param  [in]  caliPara 校准值，参考 @ref SlpCaliPara
 * @retval ERRCODE_SUCC 成功。
 * @retval Other        失败。参考 @ref ErrcodeSlpClient
 * @endif
 */
errcode_t SlpReadDecoupleMatrix(SlpCaliPara *caliPara);

/**
 * @if Eng
 * @brief Read the board and ant trx time delay calibration value.
 * @par Description: Read the board and ant trx time delay calibration value.
 * @param  [in]  info cali para.
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref errcode_t
 * @else
 * @brief 读取板级和天线的TRX总时延校准值。
 * @par Description: 读取板级和天线的TRX总时延校准值。
 * @param  [in]  caliPara 校准值。
 * @retval ERRCODE_SUCC 成功。
 * @retval Other        失败。参考 @ref errcode_t
 * @endif
 */
errcode_t SlpReadBoardAntTrxTimeDelay(uint32_t *caliPara);

/**
 * @if Eng
 * @brief Write the calibration value to the peer device.
 * @par Description: Write the calibration value to the peer device.
 * @param  [in]  info cali para, see @ref SlpCaliPara
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref ErrcodeSlpClient
 * @else
 * @brief 向对端设备写入校准值。
 * @par Description: 向对端设备写入校准值。
 * @param  [in]  caliPara 校准值，参考 @ref SlpCaliPara
 * @retval ERRCODE_SUCC 成功。
 * @retval Other        失败。参考 @ref ErrcodeSlpClient
 * @endif
 */
ErrcodeSlpClient SlpWriteDecoupleMatrix2Onb(SlpCaliPara *caliPara);

/**
 * @if Eng
 * @brief Read the calibration value from the peer device.
 * @par Description: Read the calibration value from the peer device.
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref ErrcodeSlpClient
 * @else
 * @brief 读取对端设备校准值。
 * @par Description: 读取对端设备校准值。
 * @retval ERRCODE_SUCC 成功。
 * @retval Other        失败。参考 @ref ErrcodeSlpClient
 * @endif
 */
ErrcodeSlpClient SlpReadDecoupleMatrixFromOnb(void);

/**
 * @if Eng
 * @brief Callback invoked when report factory test result
 * @par Callback invoked when report factory test result
 * @attention 1.This function is called in SLP context,should not be blocked or do long time waiting.
 * @attention 2.The memories of pointer are requested and freed by the slp automatically.
 * @param  [in]  factoryRpt factory test phase calibration data.
 * @else
 * @brief 产测相位校准数据上报函数。
 * @par 产测相位校准数据上报函数。
 * @attention  1. 该回调函数运行于SLP线程，不能阻塞或长时间等待。
 * @attention  2. 指针由SLP申请内存，也由SLP释放，回调中不应释放。
 * @param  [in]  factoryRpt 产测相位校准数据。
 * @endif
 */
typedef void (*SlpReportFactoryAoxCaliCallback)(SlpFactoryAoxCaliRpt *factoryRpt);

/**
 * @if Eng
 * @brief Callback invoked when report factory test result
 * @par Callback invoked when report factory test result
 * @attention 1.This function is called in SLP context,should not be blocked or do long time waiting.
 * @attention 2.The memories of pointer are requested and freed by the slp automatically.
 * @param  [in]  factoryRpt factory test phase calibration result.
 * @else
 * @brief 相位校准结果上报函数。
 * @par    相位校准结果上报函数。
 * @attention  1. 该回调函数运行于SLP线程，不能阻塞或长时间等待。
 * @attention  2. 指针由SLP申请内存，也由SLP释放，回调中不应释放。
 * @param  [in]  factoryRpt 相位校准结果。
 * @endif
 */
typedef void (*SlpReportFactoryCaliParaCallback)(SlpFactoryCaliParaRpt *factoryRpt);

/**
 * @if Eng
 * @brief Struct of slp factory result report callbacks
 * @else
 * @brief 产测结果上报回调
 * @endif
 */
typedef struct {
    SlpReportFactoryAoxCaliCallback rptFactoryAoxCaliCbk;   /*!< @if Eng report phase calibration data callback.
                                                                 @else 上报相位校准数据回调函数。 @endif */
    SlpReportFactoryCaliParaCallback rptFactoryCaliParaCbk; /*!< @if Eng slp report phase calibration result callback.
                                                                 @else 上报相位校准结果回调函数。 @endif */
} SlpFactoryReportCallbacks;

/**
 * @if Eng
 * @brief Register SLP report callbacks.
 * @par Description: Register SLP report factory test result callbacks.
 * @param  [in]  func Callback function.
 * @retval ERRCODE_SUCC Success.
 * @retval Other        Failure. For details, see @ref ErrcodeSlpClient
 * @else
 * @brief 注册SLP上报结果回调函数。
 * @par Description: 注册SLP产测上报结果回调函数。
 * @param  [in]  func 回调函数。
 * @retval ERRCODE_SUCC 成功。
 * @retval Other        失败。参考 @ref ErrcodeSlpClient
 * @endif
 */
ErrcodeSlpClient SlpRegisterFactoryReportCallbacks(SlpFactoryReportCallbacks *func);

/**
 * @}
 */

#ifdef __cplusplus
}
#endif

#endif
