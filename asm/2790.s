.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80001B90
/* 2790 80001B90 3C02A480 */  lui        $v0, (0xA4800018 >> 16)
/* 2794 80001B94 34420018 */  ori        $v0, $v0, (0xA4800018 & 0xFFFF)
/* 2798 80001B98 8C420000 */  lw         $v0, 0x0($v0)
/* 279C 80001B9C 30420003 */  andi       $v0, $v0, 0x3
/* 27A0 80001BA0 03E00008 */  jr         $ra
/* 27A4 80001BA4 0002102B */   sltu      $v0, $zero, $v0
/* 27A8 80001BA8 00000000 */  nop
/* 27AC 80001BAC 00000000 */  nop
