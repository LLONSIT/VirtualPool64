.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_80094B50
/* 95750 80094B50 40024800 */  mfc0       $v0, $9
/* 95754 80094B54 03E00008 */  jr         $ra
/* 95758 80094B58 00000000 */   nop
/* 9575C 80094B5C 00000000 */  nop
