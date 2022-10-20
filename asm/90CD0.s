.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800900D0
/* 90CD0 800900D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 90CD4 800900D4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 90CD8 800900D8 AFB40020 */  sw         $s4, 0x20($sp)
/* 90CDC 800900DC AFB3001C */  sw         $s3, 0x1C($sp)
/* 90CE0 800900E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 90CE4 800900E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 90CE8 800900E8 0C0005EC */  jal        func_800017B0
/* 90CEC 800900EC AFB00010 */   sw        $s0, 0x10($sp)
/* 90CF0 800900F0 0C0252D4 */  jal        func_80094B50
/* 90CF4 800900F4 0040A021 */   addu      $s4, $v0, $zero
/* 90CF8 800900F8 3C03802C */  lui        $v1, %hi(D_802C6680)
/* 90CFC 800900FC 8C636680 */  lw         $v1, %lo(D_802C6680)($v1)
/* 90D00 80090100 3C12802D */  lui        $s2, %hi(D_802D2FC8)
/* 90D04 80090104 8E522FC8 */  lw         $s2, %lo(D_802D2FC8)($s2)
/* 90D08 80090108 3C13802D */  lui        $s3, %hi(D_802D2FCC)
/* 90D0C 8009010C 8E732FCC */  lw         $s3, %lo(D_802D2FCC)($s3)
/* 90D10 80090110 02802021 */  addu       $a0, $s4, $zero
/* 90D14 80090114 0C0005F4 */  jal        __osRestoreInt
/* 90D18 80090118 00438023 */   subu      $s0, $v0, $v1
/* 90D1C 8009011C 02008821 */  addu       $s1, $s0, $zero
/* 90D20 80090120 00008021 */  addu       $s0, $zero, $zero
/* 90D24 80090124 02711821 */  addu       $v1, $s3, $s1
/* 90D28 80090128 0071202B */  sltu       $a0, $v1, $s1
/* 90D2C 8009012C 02501021 */  addu       $v0, $s2, $s0
/* 90D30 80090130 00441021 */  addu       $v0, $v0, $a0
/* 90D34 80090134 8FBF0024 */  lw         $ra, 0x24($sp)
/* 90D38 80090138 8FB40020 */  lw         $s4, 0x20($sp)
/* 90D3C 8009013C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 90D40 80090140 8FB20018 */  lw         $s2, 0x18($sp)
/* 90D44 80090144 8FB10014 */  lw         $s1, 0x14($sp)
/* 90D48 80090148 8FB00010 */  lw         $s0, 0x10($sp)
/* 90D4C 8009014C 03E00008 */  jr         $ra
/* 90D50 80090150 27BD0028 */   addiu     $sp, $sp, 0x28
/* 90D54 80090154 00000000 */  nop
/* 90D58 80090158 00000000 */  nop
/* 90D5C 8009015C 00000000 */  nop
