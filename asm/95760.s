.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_80094B60
/* 95760 80094B60 40845800 */  mtc0       $a0, $11
/* 95764 80094B64 03E00008 */  jr         $ra
/* 95768 80094B68 00000000 */   nop
/* 9576C 80094B6C 00000000 */  nop
