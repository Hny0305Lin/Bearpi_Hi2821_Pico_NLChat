# Install script for directory: C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/drivers/chips/bs2x/porting

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
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/adc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/dma/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/efuse/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/gpio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/i2c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/inc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/ir/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/keyscan/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/pdm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/pinctrl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/pm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/pmp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/pwm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/qdec/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/reboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/rtc_unified/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/security/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/sfc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/sio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/spi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/systick/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/tcxo/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/timer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/uart/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/usb_unified/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/Users/lmj-m/Downloads/bearpi/bearpi-h2821_pico/output/bs21/acore/standard-bs21-n1100/drivers/chips/bs2x/porting/watchdog/cmake_install.cmake")
endif()

