#define LIB_RAM_FUNC(func) \
    func(*libmain_init_porting.a:*.o) \
    func(*libarch_port.a:*.o) \
    func(*libpmu_porting.a:*.o) \
    func(*libnon_os.a:*.o) \
    func(*libboard_config.a:*.o) \
    func(*libulp_aon.a:*.o) \
    func(*libosal.a:*.o) \
    func(*libclocks_porting.a:*.o) \
    func(*liberror_code.a:*.o) \
    func(*libhal_mips.a:*.o) \
    func(*libmem_config_porting.a:*.o) \
    func(*libdfx_exception.a:*.o) \
    func(*liblpm.a:*.o) \
    func(*libchip_porting.a:*.o) \
    func(*libcmn_header.a:*.o) \
    func(*libdriver_header.a:*.o) \
    func(*libhal_uart.a:*.o) \
    func(*libuart.a:*.o) \
    func(*libuart_port.a:*.o) \
    func(*libapp_info.a:*.o) \
    func(*libgmssl_hmac_sm3.a:*.o) \
    func(*libsystick.a:*.o) \
    func(*libtcxo.a:*.o) \
    func(*libhal_systick.a:*.o) \
    func(*libhal_tcxo.a:*.o) \
    func(*libporting_inc.a:*.o) \
    func(*libsegger_b090_fp.a:*.o) \
    func(*libusb_class.a:*.o) \
    func(*libusb_class_open.a:*.o) \
    func(*libusb_class_header.a:*.o) \
    func(*libtrng_port.a:*.o) \
    func(*libtrng.a:*.o) \
    func(*libhal_trng.a:*.o) \
    func(*libnv.a:*.o) \
    func(*libnv_porting.a:*.o) \
    func(*libpartition.a:*.o) \
    func(*libpartition_porting.a:*.o) \
    func(*libat.a:*.o) \
    func(*libat_cmd_port.a:*.o) \
    func(*libat_plt_cmd.a:*.o) \
    func(*libat_btc_cmd.a:*.o) \
    func(*libsamples.a:*.o) \
    func(*libstandard_porting.a:*.o) \
    func(*libdfx_porting.a:*.o) \
    func(*libalgorithm.a:*.o) \
    func(*libapp_init.a:*.o) \
    func(*liblzma_21.07.a:*.o) \
    func(*libdfx_file_operation.a:*.o) \
    func(*libpm_sys.a:*.o) \
    func(*libcodec.a:*.o) \
    func(*libupdate_common.a:*.o) \
    func(*libupdate_local.a:*.o) \
    func(*libupdate_storage.a:*.o) \
    func(*libupdate_common_porting.a:*.o) \
    func(*libupdate_storage_porting.a:*.o) \
    func(*libota_upgrade.a:*.o) \
    func(*libbg_common.a:*.o) \
    func(*libbt_host.a:*.o) \
    func(*libbth_sdk.a:*.o) \
    func(*libbts_header.a:*.o) \
    func(*libbth_gle.a:*.o) \
    func(*libbt_app.a:*.o) \
    func(*libbgtp.a:*.o) \
    func(*libnfc_controller.a:*.o) \
    func(*libnfc_header.a:*.o) \
    func(*libmips.a:*.o) \
    func(*libdrv_timer.a:*.o) \
    func(*libhal_timer.a:*.o) \
    func(*libtimer_port.a:*.o) \
    func(*libi2s.a:*.o) \
    func(*libsystick_port.a:*.o) \
    func(*libtcxo_port.a:*.o) \
    func(*libsfc_porting.a:*.o) \
    func(*libstd_rom_lds_porting.a:*.o) \
    func(*librtc_unified.a:*.o) \
    func(*libhal_rtc_unified.a:*.o) \
    func(*librtc_unified_port.a:*.o) \
    func(*libir.a:*.o) \
    func(*libir_port.a:*.o) \
    func(*libliteos_208_6_0_b017.a:*.o) \
    func(*libhal_cpu_core.a:*.o) \
    func(*libreboot.a:*.o) \
    func(*libhal_reg_config.a:*.o) \
    func(*libhal_reboot.a:*.o) \
    func(*libreboot_port.a:*.o) \
    func(*libhal_i2c.a:*.o) \
    func(*libi2c.a:*.o) \
    func(*libi2c_porting.a:*.o) \
    func(*libhal_lpc.a:*.o) \
    func(*liblpc.a:*.o) \
    func(*libhal_cpu_trace.a:*.o) \
    func(*libcpu_trace.a:*.o) \
    func(*libhal_gpio_v150.a:*.o) \
    func(*libgpio.a:*.o) \
    func(*libgpio_port.a:*.o) \
    func(*libmemory_core.a:*.o) \
    func(*libwatchdog.a:*.o) \
    func(*libhal_watchdog.a:*.o) \
    func(*libwatchdog_port.a:*.o) \
    func(*libpinctrl.a:*.o) \
    func(*libhal_pinctrl.a:*.o) \
    func(*libport_pinctrl.a:*.o) \
    func(*libpm.a:*.o) \
    func(*libpm_porting.a:*.o) \
    func(*libpm_sleep.a:*.o) \
    func(*libpm_sleep_porting.a:*.o) \
    func(*libpm_veto.a:*.o) \
    func(*libpm_veto_porting.a:*.o) \
    func(*libpm_dev.a:*.o) \
    func(*libpm_dev_porting.a:*.o) \
    func(*libpm_fsm.a:*.o) \
    func(*libpm_fsm_porting.a:*.o) \
    func(*libusb_unified.a:*.o) \
    func(*libusb_unified_open.a:*.o) \
    func(*libusb_unified_port.a:*.o) \
    func(*libpmp.a:*.o) \
    func(*libhal_pmp.a:*.o) \
    func(*libpmp_port.a:*.o) \
    func(*libpm_clock.a:*.o) \
    func(*libpm_clock_porting.a:*.o) \
    func(*libpm_pmu.a:*.o) \
    func(*libpm_pmu_porting.a:*.o) \
    func(*libefuse_port.a:*.o) \
    func(*libhal_efuse_v151.a:*.o) \
    func(*libefuse.a:*.o) \
    func(*libspi.a:*.o) \
    func(*libhal_spi.a:*.o) \
    func(*libspi_porting.a:*.o) \
    func(*libhal_qdec.a:*.o) \
    func(*libqdec.a:*.o) \
    func(*libqdec_port.a:*.o) \
    func(*libpdm.a:*.o) \
    func(*libhal_pdm.a:*.o) \
    func(*libpdm_porting.a:*.o) \
    func(*libtest_pdm.a:*.o) \
    func(*libhal_sio.a:*.o) \
    func(*libsio_port.a:*.o) \
    func(*libhal_dma_v151.a:*.o) \
    func(*libdma.a:*.o) \
    func(*libdma_port.a:*.o) \
    func(*libhal_keyscan.a:*.o) \
    func(*libkeyscan.a:*.o) \
    func(*libkeyscan_port.a:*.o) \
    func(*libapp_version.a:*.o) \
    func(*libbuild_version.a:*.o) \
    func(*libtestsuite.a:*.o) \
    func(*libcommon_headers.a:*.o) \
    func(*libcpu_load.a:*.o) \
    func(*libcpu_utils.a:*.o) \
    func(*libirmalloc.a:*.o) \
    func(*libdfx_log.a:*.o) \
    func(*libdfx_log_reader.a:*.o) \
    func(*libdfx_panic.a:*.o) \
    func(*libdfx_preserve.a:*.o) \
    func(*libdfx_diag.a:*.o) \
    func(*libdiag_dfx_cmd.a:*.o) \
    func(*liblog_file.a:*.o) \
    func(*libsoc_log.a:*.o) \
    func(*libdfx_massdata.a:*.o) \
    func(*libsfc.a:*.o) \
    func(*libhal_sfc.a:*.o) \
    func(*libhal_adc.a:*.o) \
    func(*libadc.a:*.o) \
    func(*libadc_port.a:*.o) \
    func(*libflash.a:*.o) \
    func(*libflash_porting.a:*.o) \
    func(*libhal_pwm.a:*.o) \
    func(*libpwm.a:*.o) \
    func(*libpwm_port.a:*.o) \
    func(*librom_callback.a:*.o) \

#define LIB_ROM_FUNC(func) \
    func(*libbgtp_rom.a:*.o) \
    func(*liblibboundscheck.a:*.o) \
    func(*libbt_host_rom.a:*.o) \
    func(*libbg_common_rom.a:*.o) \

#define LIB_LOS_FUNC(func) \
    func(*libm.a:*.o) \
    func(*libinterrupt.a:*.o) \
    func(*libbase.a:*.o) \
    func(*libriscv.a:*.o) \
    func(*libcmsisuser.a:*.o) \
    func(*libcmsiskernel.a:*.o) \
    func(*libdriverbase.a:*.o) \
    func(*libinit.a:*.o) \
    func(*libcsysdeps.a:*.o) \
    func(*libtargets.a:*.o) \
    func(*libgcc.a:*.o) \

