.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80096ED0
/* 97AD0 80096ED0 AC800000 */  sw         $zero, 0x0($a0)
/* 97AD4 80096ED4 AC850004 */  sw         $a1, 0x4($a0)
/* 97AD8 80096ED8 AC860008 */  sw         $a2, 0x8($a0)
/* 97ADC 80096EDC A480000C */  sh         $zero, 0xC($a0)
/* 97AE0 80096EE0 A480000E */  sh         $zero, 0xE($a0)
/* 97AE4 80096EE4 03E00008 */  jr         $ra
/* 97AE8 80096EE8 AC870010 */   sw        $a3, 0x10($a0)
/* 97AEC 80096EEC 00000000 */  nop
