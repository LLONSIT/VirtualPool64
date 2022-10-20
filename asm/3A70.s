.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osSendMesg
/* 3A70 80002E70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3A74 80002E74 AFB00010 */  sw         $s0, 0x10($sp)
/* 3A78 80002E78 00808021 */  addu       $s0, $a0, $zero
/* 3A7C 80002E7C AFB50024 */  sw         $s5, 0x24($sp)
/* 3A80 80002E80 00A0A821 */  addu       $s5, $a1, $zero
/* 3A84 80002E84 AFB20018 */  sw         $s2, 0x18($sp)
/* 3A88 80002E88 00C09021 */  addu       $s2, $a2, $zero
/* 3A8C 80002E8C AFBF0028 */  sw         $ra, 0x28($sp)
/* 3A90 80002E90 AFB40020 */  sw         $s4, 0x20($sp)
/* 3A94 80002E94 AFB3001C */  sw         $s3, 0x1C($sp)
/* 3A98 80002E98 0C0005EC */  jal        func_800017B0
/* 3A9C 80002E9C AFB10014 */   sw        $s1, 0x14($sp)
/* 3AA0 80002EA0 8E030008 */  lw         $v1, 0x8($s0)
/* 3AA4 80002EA4 8E040010 */  lw         $a0, 0x10($s0)
/* 3AA8 80002EA8 0064182A */  slt        $v1, $v1, $a0
/* 3AAC 80002EAC 14600012 */  bnez       $v1, .L80002EF8
/* 3AB0 80002EB0 00408821 */   addu      $s1, $v0, $zero
/* 3AB4 80002EB4 24140001 */  addiu      $s4, $zero, 0x1
/* 3AB8 80002EB8 24130008 */  addiu      $s3, $zero, 0x8
.L80002EBC:
/* 3ABC 80002EBC 12540005 */  beq        $s2, $s4, .L80002ED4
/* 3AC0 80002EC0 26040004 */   addiu     $a0, $s0, 0x4
/* 3AC4 80002EC4 0C0005F4 */  jal        __osRestoreInt
/* 3AC8 80002EC8 02202021 */   addu      $a0, $s1, $zero
/* 3ACC 80002ECC 08000BDF */  j          .L80002F7C
/* 3AD0 80002ED0 2402FFFF */   addiu     $v0, $zero, -0x1
.L80002ED4:
/* 3AD4 80002ED4 3C02800A */  lui        $v0, %hi(D_800A06C0)
/* 3AD8 80002ED8 8C4206C0 */  lw         $v0, %lo(D_800A06C0)($v0)
/* 3ADC 80002EDC 0C00050D */  jal        func_80001434
/* 3AE0 80002EE0 A4530010 */   sh        $s3, 0x10($v0)
/* 3AE4 80002EE4 8E020008 */  lw         $v0, 0x8($s0)
/* 3AE8 80002EE8 8E030010 */  lw         $v1, 0x10($s0)
/* 3AEC 80002EEC 0043102A */  slt        $v0, $v0, $v1
/* 3AF0 80002EF0 1040FFF2 */  beqz       $v0, .L80002EBC
/* 3AF4 80002EF4 00000000 */   nop
.L80002EF8:
/* 3AF8 80002EF8 8E03000C */  lw         $v1, 0xC($s0)
/* 3AFC 80002EFC 8E040008 */  lw         $a0, 0x8($s0)
/* 3B00 80002F00 8E020010 */  lw         $v0, 0x10($s0)
/* 3B04 80002F04 00641821 */  addu       $v1, $v1, $a0
/* 3B08 80002F08 0062001A */  div        $zero, $v1, $v0
/* 3B0C 80002F0C 14400002 */  bnez       $v0, .L80002F18
/* 3B10 80002F10 00000000 */   nop
/* 3B14 80002F14 0007000D */  break      7
.L80002F18:
/* 3B18 80002F18 2401FFFF */  addiu      $at, $zero, -0x1
/* 3B1C 80002F1C 14410004 */  bne        $v0, $at, .L80002F30
/* 3B20 80002F20 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 3B24 80002F24 14610002 */  bne        $v1, $at, .L80002F30
/* 3B28 80002F28 00000000 */   nop
/* 3B2C 80002F2C 0006000D */  break      6
.L80002F30:
/* 3B30 80002F30 00001010 */  mfhi       $v0
/* 3B34 80002F34 8E030014 */  lw         $v1, 0x14($s0)
/* 3B38 80002F38 00021080 */  sll        $v0, $v0, 2
/* 3B3C 80002F3C 00431021 */  addu       $v0, $v0, $v1
/* 3B40 80002F40 AC550000 */  sw         $s5, 0x0($v0)
/* 3B44 80002F44 8E020008 */  lw         $v0, 0x8($s0)
/* 3B48 80002F48 8E030000 */  lw         $v1, 0x0($s0)
/* 3B4C 80002F4C 24420001 */  addiu      $v0, $v0, 0x1
/* 3B50 80002F50 AE020008 */  sw         $v0, 0x8($s0)
/* 3B54 80002F54 8C620000 */  lw         $v0, 0x0($v1)
/* 3B58 80002F58 10400005 */  beqz       $v0, .L80002F70
/* 3B5C 80002F5C 00000000 */   nop
/* 3B60 80002F60 0C000561 */  jal        __osPopThread
/* 3B64 80002F64 02002021 */   addu      $a0, $s0, $zero
/* 3B68 80002F68 0C000254 */  jal        osStartThread
/* 3B6C 80002F6C 00402021 */   addu      $a0, $v0, $zero
.L80002F70:
/* 3B70 80002F70 0C0005F4 */  jal        __osRestoreInt
/* 3B74 80002F74 02202021 */   addu      $a0, $s1, $zero
/* 3B78 80002F78 00001021 */  addu       $v0, $zero, $zero
.L80002F7C:
/* 3B7C 80002F7C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 3B80 80002F80 8FB50024 */  lw         $s5, 0x24($sp)
/* 3B84 80002F84 8FB40020 */  lw         $s4, 0x20($sp)
/* 3B88 80002F88 8FB3001C */  lw         $s3, 0x1C($sp)
/* 3B8C 80002F8C 8FB20018 */  lw         $s2, 0x18($sp)
/* 3B90 80002F90 8FB10014 */  lw         $s1, 0x14($sp)
/* 3B94 80002F94 8FB00010 */  lw         $s0, 0x10($sp)
/* 3B98 80002F98 03E00008 */  jr         $ra
/* 3B9C 80002F9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel __osSetGlobalIntMask
/* 3BA0 80002FA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3BA4 80002FA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 3BA8 80002FA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BAC 80002FAC 0C0005EC */  jal        func_800017B0
/* 3BB0 80002FB0 00808021 */   addu      $s0, $a0, $zero
/* 3BB4 80002FB4 3C03800A */  lui        $v1, %hi(D_800A06A0)
/* 3BB8 80002FB8 8C6306A0 */  lw         $v1, %lo(D_800A06A0)($v1)
/* 3BBC 80002FBC 00701825 */  or         $v1, $v1, $s0
/* 3BC0 80002FC0 3C01800A */  lui        $at, %hi(D_800A06A0)
/* 3BC4 80002FC4 AC2306A0 */  sw         $v1, %lo(D_800A06A0)($at)
/* 3BC8 80002FC8 0C0005F4 */  jal        __osRestoreInt
/* 3BCC 80002FCC 00402021 */   addu      $a0, $v0, $zero
/* 3BD0 80002FD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BD4 80002FD4 8FB00010 */  lw         $s0, 0x10($sp)
/* 3BD8 80002FD8 03E00008 */  jr         $ra
/* 3BDC 80002FDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel osYieldThread
/* 3BE0 80002FE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3BE4 80002FE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BE8 80002FE8 0C0005EC */  jal        func_800017B0
/* 3BEC 80002FEC AFB00010 */   sw        $s0, 0x10($sp)
/* 3BF0 80002FF0 3C03800A */  lui        $v1, %hi(D_800A06C0)
/* 3BF4 80002FF4 8C6306C0 */  lw         $v1, %lo(D_800A06C0)($v1)
/* 3BF8 80002FF8 3C04800A */  lui        $a0, %hi(D_800A06B8)
/* 3BFC 80002FFC 248406B8 */  addiu      $a0, $a0, %lo(D_800A06B8)
/* 3C00 80003000 24050002 */  addiu      $a1, $zero, 0x2
/* 3C04 80003004 00408021 */  addu       $s0, $v0, $zero
/* 3C08 80003008 0C00050D */  jal        func_80001434
/* 3C0C 8000300C A4650010 */   sh        $a1, 0x10($v1)
/* 3C10 80003010 0C0005F4 */  jal        __osRestoreInt
/* 3C14 80003014 02002021 */   addu      $a0, $s0, $zero
/* 3C18 80003018 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3C1C 8000301C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3C20 80003020 03E00008 */  jr         $ra
/* 3C24 80003024 27BD0018 */   addiu     $sp, $sp, 0x18
/* 3C28 80003028 00000000 */  nop
/* 3C2C 8000302C 00000000 */  nop
