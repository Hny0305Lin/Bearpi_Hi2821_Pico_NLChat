#===============================================================================
# @brief    cmake file
# Copyright (c) @CompanyNameMagicTag 2024-2024. All rights reserved.
#===============================================================================

# bs2x rcu sample depends defines
if(DEFINED CONFIG_SAMPLE_SUPPORT_RCU)
    list(APPEND DEFINES
        "RAM_PARTIAL_RETENTION"
        "NO_BOOT_BACKUP"
        "USE_OSAL_INSTEAD_CMSIS"
    )
    list(APPEND PUBLIC_DEFINES
        "RAM_PARTIAL_RETENTION"
        "NO_BOOT_BACKUP"
        "USE_OSAL_INSTEAD_CMSIS"
    )
    list(REMOVE_ITEM DEFINES
        "AT_COMMAND"
    )
endif()

if(DEFINED CONFIG_SAMPLE_SUPPORT_SLE_MOUSE OR DEFINED CONFIG_SAMPLE_SUPPORT_SLE_MOUSE_DONGLE)
    list(REMOVE_ITEM DEFINES
        "AT_COMMAND"
    )
endif()

if(DEFINED CONFIG_SAMPLE_SUPPORT_SLE_UART)
    list(REMOVE_ITEM DEFINES
        "AT_COMMAND"
    )
endif()

if(DEFINED CONFIG_SAMPLE_SUPPORT_LOWPOWER)
    list(APPEND DEFINES
        "SUPPORT_PERP_LS_FREQ_DIV"
        "PM_REDUCE_FREQ_DURING_WFI"
    )
    list(APPEND PUBLIC_DEFINES
        "SUPPORT_PERP_LS_FREQ_DIV"
        "PM_REDUCE_FREQ_DURING_WFI"
    )
endif()

set(DEFINES ${DEFINES} CACHE INTERNAL "" FORCE)