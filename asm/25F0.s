.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osDestroyThread
/* 25F0 800019F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 25F4 800019F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 25F8 800019F8 00808021 */  addu       $s0, $a0, $zero
/* 25FC 800019FC AFBF0018 */  sw         $ra, 0x18($sp)
/* 2600 80001A00 0C0005EC */  jal        func_800017B0
/* 2604 80001A04 AFB10014 */   sw        $s1, 0x14($sp)
/* 2608 80001A08 16000004 */  bnez       $s0, .L80001A1C
/* 260C 80001A0C 00408821 */   addu      $s1, $v0, $zero
/* 2610 80001A10 3C10800A */  lui        $s0, %hi(D_800A06C0)
/* 2614 80001A14 0800068E */  j          .L80001A38
/* 2618 80001A18 8E1006C0 */   lw        $s0, %lo(D_800A06C0)($s0)
.L80001A1C:
/* 261C 80001A1C 96030010 */  lhu        $v1, %lo(D_800A0010)($s0)
/* 2620 80001A20 24020001 */  addiu      $v0, $zero, 0x1
/* 2624 80001A24 10620004 */  beq        $v1, $v0, .L80001A38
/* 2628 80001A28 00000000 */   nop
/* 262C 80001A2C 8E040008 */  lw         $a0, %lo(D_800A0008)($s0)
/* 2630 80001A30 0C00029C */  jal        func_80000A70
/* 2634 80001A34 02002821 */   addu      $a1, $s0, $zero
.L80001A38:
/* 2638 80001A38 3C02800A */  lui        $v0, %hi(D_800A06BC)
/* 263C 80001A3C 8C4206BC */  lw         $v0, %lo(D_800A06BC)($v0)
/* 2640 80001A40 14500008 */  bne        $v0, $s0, .L80001A64
/* 2644 80001A44 00401821 */   addu      $v1, $v0, $zero
/* 2648 80001A48 8E02000C */  lw         $v0, 0xC($s0)
/* 264C 80001A4C 3C01800A */  lui        $at, %hi(D_800A06BC)
/* 2650 80001A50 080006A2 */  j          .L80001A88
/* 2654 80001A54 AC2206BC */   sw        $v0, %lo(D_800A06BC)($at)
.L80001A58:
/* 2658 80001A58 8E02000C */  lw         $v0, %lo(D_800A000C)($s0)
/* 265C 80001A5C 080006A2 */  j          .L80001A88
/* 2660 80001A60 AC62000C */   sw        $v0, 0xC($v1)
.L80001A64:
/* 2664 80001A64 8C62000C */  lw         $v0, 0xC($v1)
/* 2668 80001A68 10400007 */  beqz       $v0, .L80001A88
/* 266C 80001A6C 00000000 */   nop
.L80001A70:
/* 2670 80001A70 1050FFF9 */  beq        $v0, $s0, .L80001A58
/* 2674 80001A74 00000000 */   nop
/* 2678 80001A78 00401821 */  addu       $v1, $v0, $zero
/* 267C 80001A7C 8C42000C */  lw         $v0, 0xC($v0)
/* 2680 80001A80 1440FFFB */  bnez       $v0, .L80001A70
/* 2684 80001A84 00000000 */   nop
.L80001A88:
/* 2688 80001A88 3C02800A */  lui        $v0, %hi(D_800A06C0)
/* 268C 80001A8C 8C4206C0 */  lw         $v0, %lo(D_800A06C0)($v0)
/* 2690 80001A90 16020003 */  bne        $s0, $v0, .L80001AA0
/* 2694 80001A94 00000000 */   nop
/* 2698 80001A98 0C000565 */  jal        func_80001594
/* 269C 80001A9C 00000000 */   nop
.L80001AA0:
/* 26A0 80001AA0 0C0005F4 */  jal        __osRestoreInt
/* 26A4 80001AA4 02202021 */   addu      $a0, $s1, $zero
/* 26A8 80001AA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 26AC 80001AAC 8FB10014 */  lw         $s1, 0x14($sp)
/* 26B0 80001AB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 26B4 80001AB4 03E00008 */  jr         $ra
/* 26B8 80001AB8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 26BC 80001ABC 00000000 */  nop
