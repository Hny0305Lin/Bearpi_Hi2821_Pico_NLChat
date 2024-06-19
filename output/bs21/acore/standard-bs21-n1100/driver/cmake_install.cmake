# Install script for directory: C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/drivers/drivers/driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/bs21_CFBB")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/tools/bin/compiler/riscv/cc_riscv32_musl_b010/cc_riscv32_musl_fp_win/bin/riscv32-linux-musl-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/cpu_trace/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/i2s/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/ir/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/keyscan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/lpc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/lpm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/memory_core/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/pinmux/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/pmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/qdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/security/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/systick/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/tcxo/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/timer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/touch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/ulp_aon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/watchdog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/pdm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/sfc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/pm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/usb_unified/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/rtc_unified/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/driver/efuse/cmake_install.cmake")
endif()

