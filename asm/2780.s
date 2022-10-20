.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80001B80
/* 2780 80001B80 03E00008 */  jr         $ra
/* 2784 80001B84 00000000 */   nop
/* 2788 80001B88 00000000 */  nop
/* 278C 80001B8C 00000000 */  nop
