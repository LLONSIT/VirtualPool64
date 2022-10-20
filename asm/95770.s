.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80094B70
/* 95770 80094B70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 95774 80094B74 AFB00010 */  sw         $s0, 0x10($sp)
/* 95778 80094B78 00808021 */  addu       $s0, $a0, $zero
/* 9577C 80094B7C AFB50024 */  sw         $s5, 0x24($sp)
/* 95780 80094B80 00A0A821 */  addu       $s5, $a1, $zero
/* 95784 80094B84 AFB20018 */  sw         $s2, 0x18($sp)
/* 95788 80094B88 00C09021 */  addu       $s2, $a2, $zero
/* 9578C 80094B8C AFBF0028 */  sw         $ra, 0x28($sp)
/* 95790 80094B90 AFB40020 */  sw         $s4, 0x20($sp)
/* 95794 80094B94 AFB3001C */  sw         $s3, 0x1C($sp)
/* 95798 80094B98 0C0005EC */  jal        func_800017B0
/* 9579C 80094B9C AFB10014 */   sw        $s1, 0x14($sp)
/* 957A0 80094BA0 8E030008 */  lw         $v1, 0x8($s0)
/* 957A4 80094BA4 8E040010 */  lw         $a0, 0x10($s0)
/* 957A8 80094BA8 0064182A */  slt        $v1, $v1, $a0
/* 957AC 80094BAC 14600012 */  bnez       $v1, .L80094BF8
/* 957B0 80094BB0 00408821 */   addu      $s1, $v0, $zero
/* 957B4 80094BB4 24140001 */  addiu      $s4, $zero, 0x1
/* 957B8 80094BB8 24130008 */  addiu      $s3, $zero, 0x8
.L80094BBC:
/* 957BC 80094BBC 12540005 */  beq        $s2, $s4, .L80094BD4
/* 957C0 80094BC0 26040004 */   addiu     $a0, $s0, 0x4
/* 957C4 80094BC4 0C0005F4 */  jal        __osRestoreInt
/* 957C8 80094BC8 02202021 */   addu      $a0, $s1, $zero
/* 957CC 80094BCC 08025320 */  j          .L80094C80
/* 957D0 80094BD0 2402FFFF */   addiu     $v0, $zero, -0x1
.L80094BD4:
/* 957D4 80094BD4 3C02800A */  lui        $v0, %hi(D_800A06C0)
/* 957D8 80094BD8 8C4206C0 */  lw         $v0, %lo(D_800A06C0)($v0)
/* 957DC 80094BDC 0C00050D */  jal        func_80001434
/* 957E0 80094BE0 A4530010 */   sh        $s3, 0x10($v0)
/* 957E4 80094BE4 8E020008 */  lw         $v0, 0x8($s0)
/* 957E8 80094BE8 8E030010 */  lw         $v1, 0x10($s0)
/* 957EC 80094BEC 0043102A */  slt        $v0, $v0, $v1
/* 957F0 80094BF0 1040FFF2 */  beqz       $v0, .L80094BBC
/* 957F4 80094BF4 00000000 */   nop
.L80094BF8:
/* 957F8 80094BF8 8E02000C */  lw         $v0, 0xC($s0)
/* 957FC 80094BFC 8E030010 */  lw         $v1, 0x10($s0)
/* 95800 80094C00 00431021 */  addu       $v0, $v0, $v1
/* 95804 80094C04 2442FFFF */  addiu      $v0, $v0, -0x1
/* 95808 80094C08 0043001A */  div        $zero, $v0, $v1
/* 9580C 80094C0C 14600002 */  bnez       $v1, .L80094C18
/* 95810 80094C10 00000000 */   nop
/* 95814 80094C14 0007000D */  break      7
.L80094C18:
/* 95818 80094C18 2401FFFF */  addiu      $at, $zero, -0x1
/* 9581C 80094C1C 14610004 */  bne        $v1, $at, .L80094C30
/* 95820 80094C20 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 95824 80094C24 14410002 */  bne        $v0, $at, .L80094C30
/* 95828 80094C28 00000000 */   nop
/* 9582C 80094C2C 0006000D */  break      6
.L80094C30:
/* 95830 80094C30 00001810 */  mfhi       $v1
/* 95834 80094C34 8E020014 */  lw         $v0, 0x14($s0)
/* 95838 80094C38 AE03000C */  sw         $v1, 0xC($s0)
/* 9583C 80094C3C 00031880 */  sll        $v1, $v1, 2
/* 95840 80094C40 00621821 */  addu       $v1, $v1, $v0
/* 95844 80094C44 AC750000 */  sw         $s5, 0x0($v1)
/* 95848 80094C48 8E020008 */  lw         $v0, 0x8($s0)
/* 9584C 80094C4C 8E030000 */  lw         $v1, 0x0($s0)
/* 95850 80094C50 24420001 */  addiu      $v0, $v0, 0x1
/* 95854 80094C54 AE020008 */  sw         $v0, 0x8($s0)
/* 95858 80094C58 8C620000 */  lw         $v0, 0x0($v1)
/* 9585C 80094C5C 10400005 */  beqz       $v0, .L80094C74
/* 95860 80094C60 00000000 */   nop
/* 95864 80094C64 0C000561 */  jal        __osPopThread
/* 95868 80094C68 02002021 */   addu      $a0, $s0, $zero
/* 9586C 80094C6C 0C000254 */  jal        osStartThread
/* 95870 80094C70 00402021 */   addu      $a0, $v0, $zero
.L80094C74:
/* 95874 80094C74 0C0005F4 */  jal        __osRestoreInt
/* 95878 80094C78 02202021 */   addu      $a0, $s1, $zero
/* 9587C 80094C7C 00001021 */  addu       $v0, $zero, $zero
.L80094C80:
/* 95880 80094C80 8FBF0028 */  lw         $ra, 0x28($sp)
/* 95884 80094C84 8FB50024 */  lw         $s5, 0x24($sp)
/* 95888 80094C88 8FB40020 */  lw         $s4, 0x20($sp)
/* 9588C 80094C8C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 95890 80094C90 8FB20018 */  lw         $s2, 0x18($sp)
/* 95894 80094C94 8FB10014 */  lw         $s1, 0x14($sp)
/* 95898 80094C98 8FB00010 */  lw         $s0, 0x10($sp)
/* 9589C 80094C9C 03E00008 */  jr         $ra
/* 958A0 80094CA0 27BD0030 */   addiu     $sp, $sp, 0x30
/* 958A4 80094CA4 00000000 */  nop
/* 958A8 80094CA8 00000000 */  nop
/* 958AC 80094CAC 00000000 */  nop
