.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009B4F0
/* 9C0F0 8009B4F0 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9C0F4 8009B4F4 00801021 */  addu       $v0, $a0, $zero
/* 9C0F8 8009B4F8 00403821 */  addu       $a3, $v0, $zero
/* 9C0FC 8009B4FC 10C00006 */  beqz       $a2, .L8009B518
/* 9C100 8009B500 24C3FFFF */   addiu     $v1, $a2, -0x1
/* 9C104 8009B504 2406FFFF */  addiu      $a2, $zero, -0x1
.L8009B508:
/* 9C108 8009B508 A0E50000 */  sb         $a1, 0x0($a3)
/* 9C10C 8009B50C 2463FFFF */  addiu      $v1, $v1, -0x1
/* 9C110 8009B510 1466FFFD */  bne        $v1, $a2, .L8009B508
/* 9C114 8009B514 24E70001 */   addiu     $a3, $a3, 0x1
.L8009B518:
/* 9C118 8009B518 27BD0008 */  addiu      $sp, $sp, 0x8
/* 9C11C 8009B51C 03E00008 */  jr         $ra
/* 9C120 8009B520 00000000 */   nop
/* 9C124 8009B524 00000000 */  nop
/* 9C128 8009B528 00000000 */  nop
/* 9C12C 8009B52C 00000000 */  nop
