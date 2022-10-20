.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091780
/* 92380 80091780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92384 80091784 AFB00010 */  sw         $s0, 0x10($sp)
/* 92388 80091788 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9238C 8009178C 0C026030 */  jal        func_800980C0
/* 92390 80091790 00808021 */   addu      $s0, $a0, $zero
/* 92394 80091794 00022202 */  srl        $a0, $v0, 8
/* 92398 80091798 30420080 */  andi       $v0, $v0, 0x80
/* 9239C 8009179C 10400006 */  beqz       $v0, .L800917B8
/* 923A0 800917A0 30840001 */   andi      $a0, $a0, 0x1
/* 923A4 800917A4 8E020004 */  lw         $v0, 0x4($s0)
/* 923A8 800917A8 2403FFFD */  addiu      $v1, $zero, -0x3
/* 923AC 800917AC 00441025 */  or         $v0, $v0, $a0
/* 923B0 800917B0 00431024 */  and        $v0, $v0, $v1
/* 923B4 800917B4 AE020004 */  sw         $v0, 0x4($s0)
.L800917B8:
/* 923B8 800917B8 00801021 */  addu       $v0, $a0, $zero
/* 923BC 800917BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 923C0 800917C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 923C4 800917C4 03E00008 */  jr         $ra
/* 923C8 800917C8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 923CC 800917CC 00000000 */  nop
