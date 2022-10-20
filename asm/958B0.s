.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80094CB0
/* 958B0 80094CB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 958B4 80094CB4 8FA20028 */  lw         $v0, 0x28($sp)
/* 958B8 80094CB8 8FA3002C */  lw         $v1, 0x2C($sp)
/* 958BC 80094CBC AFB00010 */  sw         $s0, 0x10($sp)
/* 958C0 80094CC0 00808021 */  addu       $s0, $a0, $zero
/* 958C4 80094CC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 958C8 80094CC8 AE000000 */  sw         $zero, 0x0($s0)
/* 958CC 80094CCC AE000004 */  sw         $zero, 0x4($s0)
/* 958D0 80094CD0 AE060010 */  sw         $a2, 0x10($s0)
/* 958D4 80094CD4 AE070014 */  sw         $a3, 0x14($s0)
/* 958D8 80094CD8 AE020008 */  sw         $v0, 0x8($s0)
/* 958DC 80094CDC AE03000C */  sw         $v1, 0xC($s0)
/* 958E0 80094CE0 8FA50030 */  lw         $a1, 0x30($sp)
/* 958E4 80094CE4 8FA80034 */  lw         $t0, 0x34($sp)
/* 958E8 80094CE8 14C00006 */  bnez       $a2, .L80094D04
/* 958EC 80094CEC 02002021 */   addu      $a0, $s0, $zero
/* 958F0 80094CF0 54E00005 */  bnel       $a3, $zero, .L80094D08
/* 958F4 80094CF4 AE050018 */   sw        $a1, 0x18($s0)
/* 958F8 80094CF8 AE020010 */  sw         $v0, 0x10($s0)
/* 958FC 80094CFC AE030014 */  sw         $v1, 0x14($s0)
/* 95900 80094D00 02002021 */  addu       $a0, $s0, $zero
.L80094D04:
/* 95904 80094D04 AE050018 */  sw         $a1, 0x18($s0)
.L80094D08:
/* 95908 80094D08 0C0240D4 */  jal        func_80090350
/* 9590C 80094D0C AE08001C */   sw        $t0, 0x1C($s0)
/* 95910 80094D10 3C04800D */  lui        $a0, %hi(D_800C9D70)
/* 95914 80094D14 8C849D70 */  lw         $a0, %lo(D_800C9D70)($a0)
/* 95918 80094D18 8C840000 */  lw         $a0, 0x0($a0)
/* 9591C 80094D1C 54900005 */  bnel       $a0, $s0, .L80094D34
/* 95920 80094D20 00001021 */   addu      $v0, $zero, $zero
/* 95924 80094D24 00402021 */  addu       $a0, $v0, $zero
/* 95928 80094D28 0C0240BC */  jal        func_800902F0
/* 9592C 80094D2C 00602821 */   addu      $a1, $v1, $zero
/* 95930 80094D30 00001021 */  addu       $v0, $zero, $zero
.L80094D34:
/* 95934 80094D34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 95938 80094D38 8FB00010 */  lw         $s0, 0x10($sp)
/* 9593C 80094D3C 03E00008 */  jr         $ra
/* 95940 80094D40 27BD0018 */   addiu     $sp, $sp, 0x18
/* 95944 80094D44 00000000 */  nop
/* 95948 80094D48 00000000 */  nop
/* 9594C 80094D4C 00000000 */  nop
