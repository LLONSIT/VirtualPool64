.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80098320
/* 98F20 80098320 3C02800D */  lui        $v0, %hi(D_800CB260)
/* 98F24 80098324 03E00008 */  jr         $ra
/* 98F28 80098328 8C42B260 */   lw        $v0, %lo(D_800CB260)($v0)
/* 98F2C 8009832C 00000000 */  nop
