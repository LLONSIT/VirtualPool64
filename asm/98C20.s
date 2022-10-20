.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80098020
/* 98C20 80098020 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 98C24 80098024 18C00008 */  blez       $a2, .L80098048
/* 98C28 80098028 00001821 */   addu      $v1, $zero, $zero
.L8009802C:
/* 98C2C 8009802C 90820000 */  lbu        $v0, 0x0($a0)
/* 98C30 80098030 24840001 */  addiu      $a0, $a0, 0x1
/* 98C34 80098034 24630001 */  addiu      $v1, $v1, 0x1
/* 98C38 80098038 A0A20000 */  sb         $v0, 0x0($a1)
/* 98C3C 8009803C 0066102A */  slt        $v0, $v1, $a2
/* 98C40 80098040 1440FFFA */  bnez       $v0, .L8009802C
/* 98C44 80098044 24A50001 */   addiu     $a1, $a1, 0x1
.L80098048:
/* 98C48 80098048 27BD0008 */  addiu      $sp, $sp, 0x8
/* 98C4C 8009804C 03E00008 */  jr         $ra
/* 98C50 80098050 00000000 */   nop
/* 98C54 80098054 00000000 */  nop
/* 98C58 80098058 00000000 */  nop
/* 98C5C 8009805C 00000000 */  nop
