.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80097EF0
/* 98AF0 80097EF0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 98AF4 80097EF4 AFB5002C */  sw         $s5, 0x2C($sp)
/* 98AF8 80097EF8 0080A821 */  addu       $s5, $a0, $zero
/* 98AFC 80097EFC AFB30024 */  sw         $s3, 0x24($sp)
/* 98B00 80097F00 00A09821 */  addu       $s3, $a1, $zero
/* 98B04 80097F04 AFB20020 */  sw         $s2, 0x20($sp)
/* 98B08 80097F08 00C09021 */  addu       $s2, $a2, $zero
/* 98B0C 80097F0C AFBF0030 */  sw         $ra, 0x30($sp)
/* 98B10 80097F10 AFB40028 */  sw         $s4, 0x28($sp)
/* 98B14 80097F14 AFB1001C */  sw         $s1, 0x1C($sp)
/* 98B18 80097F18 AFB00018 */  sw         $s0, 0x18($sp)
/* 98B1C 80097F1C 8EB10000 */  lw         $s1, 0x0($s5)
/* 98B20 80097F20 8FB00048 */  lw         $s0, 0x48($sp)
/* 98B24 80097F24 16200007 */  bnez       $s1, .L80097F44
/* 98B28 80097F28 00E0A021 */   addu      $s4, $a3, $zero
/* 98B2C 80097F2C 3C04800D */  lui        $a0, %hi(D_800D6E20)
/* 98B30 80097F30 24846E20 */  addiu      $a0, $a0, %lo(D_800D6E20)
/* 98B34 80097F34 3C05800D */  lui        $a1, %hi(D_800D6E24)
/* 98B38 80097F38 24A56E24 */  addiu      $a1, $a1, %lo(D_800D6E24)
/* 98B3C 80097F3C 0C0006E0 */  jal        func_80001B80
/* 98B40 80097F40 24060022 */   addiu     $a2, $zero, 0x22
.L80097F44:
/* 98B44 80097F44 02202021 */  addu       $a0, $s1, $zero
/* 98B48 80097F48 02602821 */  addu       $a1, $s3, $zero
/* 98B4C 80097F4C AFB00010 */  sw         $s0, 0x10($sp)
/* 98B50 80097F50 8C820004 */  lw         $v0, 0x4($a0)
/* 98B54 80097F54 02403021 */  addu       $a2, $s2, $zero
/* 98B58 80097F58 0040F809 */  jalr       $v0
/* 98B5C 80097F5C 02803821 */   addu      $a3, $s4, $zero
/* 98B60 80097F60 00408021 */  addu       $s0, $v0, $zero
/* 98B64 80097F64 02002021 */  addu       $a0, $s0, $zero
/* 98B68 80097F68 26100008 */  addiu      $s0, $s0, 0x8
/* 98B6C 80097F6C 02002821 */  addu       $a1, $s0, $zero
/* 98B70 80097F70 26100008 */  addiu      $s0, $s0, 0x8
/* 98B74 80097F74 3C070440 */  lui        $a3, (0x4400580 >> 16)
/* 98B78 80097F78 34E70580 */  ori        $a3, $a3, (0x4400580 & 0xFFFF)
/* 98B7C 80097F7C 02003021 */  addu       $a2, $s0, $zero
/* 98B80 80097F80 26100008 */  addiu      $s0, $s0, 0x8
/* 98B84 80097F84 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 98B88 80097F88 00121040 */  sll        $v0, $s2, 1
/* 98B8C 80097F8C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 98B90 80097F90 AC820004 */  sw         $v0, 0x4($a0)
/* 98B94 80097F94 3C020D00 */  lui        $v0, (0xD000000 >> 16)
/* 98B98 80097F98 AC830000 */  sw         $v1, 0x0($a0)
/* 98B9C 80097F9C ACA20000 */  sw         $v0, 0x0($a1)
/* 98BA0 80097FA0 00121080 */  sll        $v0, $s2, 2
/* 98BA4 80097FA4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 98BA8 80097FA8 ACA70004 */  sw         $a3, 0x4($a1)
/* 98BAC 80097FAC ACC30000 */  sw         $v1, 0x0($a2)
/* 98BB0 80097FB0 02001821 */  addu       $v1, $s0, $zero
/* 98BB4 80097FB4 ACC20004 */  sw         $v0, 0x4($a2)
/* 98BB8 80097FB8 3C020600 */  lui        $v0, (0x6000000 >> 16)
/* 98BBC 80097FBC AC620000 */  sw         $v0, 0x0($v1)
/* 98BC0 80097FC0 8EA40014 */  lw         $a0, 0x14($s5)
/* 98BC4 80097FC4 24620008 */  addiu      $v0, $v1, 0x8
/* 98BC8 80097FC8 AC640004 */  sw         $a0, 0x4($v1)
/* 98BCC 80097FCC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 98BD0 80097FD0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 98BD4 80097FD4 8FB40028 */  lw         $s4, 0x28($sp)
/* 98BD8 80097FD8 8FB30024 */  lw         $s3, 0x24($sp)
/* 98BDC 80097FDC 8FB20020 */  lw         $s2, 0x20($sp)
/* 98BE0 80097FE0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 98BE4 80097FE4 8FB00018 */  lw         $s0, 0x18($sp)
/* 98BE8 80097FE8 03E00008 */  jr         $ra
/* 98BEC 80097FEC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80097FF0
/* 98BF0 80097FF0 24020001 */  addiu      $v0, $zero, 0x1
/* 98BF4 80097FF4 10A20005 */  beq        $a1, $v0, .L8009800C
/* 98BF8 80097FF8 24020006 */   addiu     $v0, $zero, 0x6
/* 98BFC 80097FFC 50A20004 */  beql       $a1, $v0, .L80098010
/* 98C00 80098000 AC860014 */   sw        $a2, 0x14($a0)
/* 98C04 80098004 08026004 */  j          .L80098010
/* 98C08 80098008 00000000 */   nop
.L8009800C:
/* 98C0C 8009800C AC860000 */  sw         $a2, 0x0($a0)
.L80098010:
/* 98C10 80098010 03E00008 */  jr         $ra
/* 98C14 80098014 00001021 */   addu      $v0, $zero, $zero
/* 98C18 80098018 00000000 */  nop
/* 98C1C 8009801C 00000000 */  nop
