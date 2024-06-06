/*
 * Copyright (c) @CompanyNameMagicTag 2022-2022. All rights reserved.
 * Description: cpu register lowpower process file
 */

#include "chip_core_definition.h"

.extern g_cpu_suspend_regs

.global  lowpower_cpu_suspend
.global  lowpower_cpu_resume

#ifdef __riscv64
#define LREG ld
#define SREG sd
#define REGBYTES 8
#else
#define LREG lw
#define SREG sw
#define REGBYTES 4
#endif

.section .text
.option rvc

lowpower_cpu_suspend:
    la a0, g_cpu_suspend_regs
    SREG ra, 0 * REGBYTES(a0)
    SREG sp, 1 * REGBYTES(a0)
    SREG gp, 2 * REGBYTES(a0)
    SREG tp, 3 * REGBYTES(a0)
    SREG s0, 4 * REGBYTES(a0)
    SREG s1, 5 * REGBYTES(a0)
    SREG s2, 6 * REGBYTES(a0)
    SREG s3, 7 * REGBYTES(a0)
    SREG s4, 8 * REGBYTES(a0)
    SREG s5, 9 * REGBYTES(a0)
    SREG s6, 10 * REGBYTES(a0)
    SREG s7, 11 * REGBYTES(a0)
    SREG s8, 12 * REGBYTES(a0)
    SREG s9, 13 * REGBYTES(a0)
    SREG s10, 14 * REGBYTES(a0)
    SREG s11, 15 * REGBYTES(a0)

    addi a0, a0, 64

    csrr a7, 0xBC8
    csrr a6, 0xBC7
    csrr a5, 0xBC6
    csrr a4, 0xBC5
    csrr a3, 0xBC4
    csrr a2, 0x7D8
    csrr a1, 0x7D9
    csrr t0, mstatus
    stmia {t0, a1-a7}, (a0)
    addi a0, a0, 32

    csrr a7, 0xBC0
    csrr a6, 0xBC1
    csrr a5, 0xBC2
    csrr a4, 0xBC3
    csrr a3, 0xBE0
    csrr a2, 0xBE1
    csrr a1, 0xBFE
    csrr t0, 0x7C0
    stmia {t0, a1-a7}, (a0)
    addi a0, a0, 32

    csrr a7, misa
    csrr a6, mie
    csrr a5, mtvec
    csrr a4, mscratch
    csrr a3, mepc
    csrr a2, mcause
    csrr a1, pmpaddr0
    csrr t0, pmpaddr1
    stmia {t0, a1-a7}, (a0)
    addi a0, a0, 32

    csrr a7, pmpaddr2
    csrr a6, pmpaddr3
    csrr a5, pmpaddr4
    csrr a4, pmpaddr5
    csrr a3, pmpaddr6
    csrr a2, pmpaddr7
    csrr a1, pmpaddr8
    csrr t0, pmpaddr9
    stmia {t0, a1-a7}, (a0)
    addi a0, a0, 32

    csrr a7, pmpaddr10
    csrr a6, pmpaddr11
    csrr a5, pmpaddr12
    csrr a4, pmpaddr13
    csrr a3, pmpaddr14
    csrr a2, pmpaddr15
    csrr a1, pmpcfg0
    csrr t0, pmpcfg1
    stmia {t0, a1-a7}, (a0)
    addi a0, a0, 32

    csrr a2, pmpcfg2
    csrr a1, pmpcfg3
    stmia {a1-a2}, (a0)
    addi a0, a0, 8

    addi a0, a0, -168
    auipc a1, 0
    addi a1, a1, 8
    SREG a1, 20 * REGBYTES(a0)
    ret

/* Restore CPU-Registers from RAM */
lowpower_cpu_resume:
    la a0, g_cpu_suspend_regs
    addi a0, a0, 64

    ldmia {t0, a1-a7}, (a0)
    csrw 0xBC8, a7
    csrw 0xBC7, a6
    csrw 0xBC6, a5
    csrw 0xBC5, a4
    csrw 0xBC4, a3
    csrw 0x7D8, a2
    csrw 0x7D9, a1
    csrw mstatus, t0
    addi a0, a0, 32

    ldmia {t0, a1-a7}, (a0)
    csrw 0xBC0, a7
    csrw 0xBC1, a6
    csrw 0xBC2, a5
    csrw 0xBC3, a4
    csrw 0xBE0, a3
    csrw 0xBE1, a2
    csrw 0xBFE, a1
    csrw 0x7C0, t0
    addi a0, a0, 32

    ldmia {t0, a1-a7}, (a0)
    csrw misa, a7
    csrw mie, a6
    csrw mtvec,a5
    csrw mscratch, a4
    csrw mepc, a3
    csrw mcause, a2
    csrw pmpaddr0, a1
    csrw pmpaddr1, t0
    addi a0, a0, 32

    ldmia {t0, a1-a7}, (a0)
    csrw pmpaddr2, a7
    csrw pmpaddr3, a6
    csrw pmpaddr4, a5
    csrw pmpaddr5, a4
    csrw pmpaddr6, a3
    csrw pmpaddr7, a2
    csrw pmpaddr8, a1
    csrw pmpaddr9, t0
    addi a0, a0, 32

    ldmia {t0, a1-a7}, (a0)
    csrw pmpaddr10, a7
    csrw pmpaddr11, a6
    csrw pmpaddr12, a5
    csrw pmpaddr13, a4
    csrw pmpaddr14, a3
    csrw pmpaddr15, a2
    csrw pmpcfg0, a1
    csrw pmpcfg1, t0
    addi a0, a0, 32

    ldmia {a1-a2}, (a0)
    csrw pmpcfg2, a2
    csrw pmpcfg3, a1

    la a0,  g_cpu_suspend_regs
    LREG x1, 0 * REGBYTES(a0)
    LREG x2, 1 * REGBYTES(a0)
    LREG x3, 2 * REGBYTES(a0)
    LREG x4, 3 * REGBYTES(a0)
    LREG x8, 4 * REGBYTES(a0)
    LREG x9, 5 * REGBYTES(a0)
    LREG x18, 6 * REGBYTES(a0)
    LREG x19, 7 * REGBYTES(a0)
    LREG x20, 8 * REGBYTES(a0)
    LREG x21, 9 * REGBYTES(a0)
    LREG x22, 10 * REGBYTES(a0)
    LREG x23, 11 * REGBYTES(a0)
    LREG x24, 12 * REGBYTES(a0)
    LREG x25, 13 * REGBYTES(a0)
    LREG x26, 14 * REGBYTES(a0)
    LREG x27, 15 * REGBYTES(a0)
    csrrw a0 ,mepc,a0
    jr a0
