.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800917D0
/* 923D0 800917D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 923D4 800917D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 923D8 800917D8 0C0005EC */  jal        func_800017B0
/* 923DC 800917DC AFB00010 */   sw        $s0, 0x10($sp)
/* 923E0 800917E0 3C03800D */  lui        $v1, %hi(D_800CB260)
/* 923E4 800917E4 8C63B260 */  lw         $v1, %lo(D_800CB260)($v1)
/* 923E8 800917E8 8C700004 */  lw         $s0, 0x4($v1)
/* 923EC 800917EC 0C0005F4 */  jal        __osRestoreInt
/* 923F0 800917F0 00402021 */   addu      $a0, $v0, $zero
/* 923F4 800917F4 02001021 */  addu       $v0, $s0, $zero
/* 923F8 800917F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 923FC 800917FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 92400 80091800 03E00008 */  jr         $ra
/* 92404 80091804 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92408 80091808 00000000 */  nop
/* 9240C 8009180C 00000000 */  nop
