.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091760
/* 92360 80091760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92364 80091764 AFBF0010 */  sw         $ra, 0x10($sp)
/* 92368 80091768 0C026034 */  jal        func_800980D0
/* 9236C 8009176C 24040400 */   addiu     $a0, $zero, 0x400
/* 92370 80091770 8FBF0010 */  lw         $ra, 0x10($sp)
/* 92374 80091774 03E00008 */  jr         $ra
/* 92378 80091778 27BD0018 */   addiu     $sp, $sp, 0x18
/* 9237C 8009177C 00000000 */  nop
