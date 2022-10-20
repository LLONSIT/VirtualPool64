.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009BD10
/* 9C910 8009BD10 03E00008 */  jr         $ra
/* 9C914 8009BD14 46206004 */   sqrt.d    $f0, $f12
/* 9C918 8009BD18 00000000 */  nop
/* 9C91C 8009BD1C 00000000 */  nop
