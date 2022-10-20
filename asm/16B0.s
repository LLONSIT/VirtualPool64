.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osSpRawReadIo
/* 16B0 80000AB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 16B4 80000AB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 16B8 80000AB8 00808021 */  addu       $s0, $a0, $zero
/* 16BC 80000ABC AFB10014 */  sw         $s1, 0x14($sp)
/* 16C0 80000AC0 00A08821 */  addu       $s1, $a1, $zero
/* 16C4 80000AC4 32020003 */  andi       $v0, $s0, 0x3
/* 16C8 80000AC8 10400007 */  beqz       $v0, .L80000AE8
/* 16CC 80000ACC AFBF0018 */   sw        $ra, 0x18($sp)
/* 16D0 80000AD0 3C04800D */  lui        $a0, %hi(D_800CCED0)
/* 16D4 80000AD4 2484CED0 */  addiu      $a0, $a0, %lo(D_800CCED0)
/* 16D8 80000AD8 3C05800D */  lui        $a1, %hi(D_800CCED4)
/* 16DC 80000ADC 24A5CED4 */  addiu      $a1, $a1, %lo(D_800CCED4)
/* 16E0 80000AE0 0C0006E0 */  jal        func_80001B80
/* 16E4 80000AE4 24060033 */   addiu     $a2, $zero, 0x33
.L80000AE8:
/* 16E8 80000AE8 16200007 */  bnez       $s1, .L80000B08
/* 16EC 80000AEC 00000000 */   nop
/* 16F0 80000AF0 3C04800D */  lui        $a0, %hi(D_800CCED0)
/* 16F4 80000AF4 2484CED0 */  addiu      $a0, $a0, %lo(D_800CCED0)
/* 16F8 80000AF8 3C05800D */  lui        $a1, %hi(D_800CCED4)
/* 16FC 80000AFC 24A5CED4 */  addiu      $a1, $a1, %lo(D_800CCED4)
/* 1700 80000B00 0C0006E0 */  jal        func_80001B80
/* 1704 80000B04 24060034 */   addiu     $a2, $zero, 0x34
.L80000B08:
/* 1708 80000B08 0C0006E4 */  jal        func_80001B90
/* 170C 80000B0C 00000000 */   nop
/* 1710 80000B10 14400006 */  bnez       $v0, .L80000B2C
/* 1714 80000B14 2402FFFF */   addiu     $v0, $zero, -0x1
/* 1718 80000B18 3C02A000 */  lui        $v0, %hi(D_A0000000)
/* 171C 80000B1C 02021025 */  or         $v0, $s0, $v0
/* 1720 80000B20 8C430000 */  lw         $v1, %lo(D_A0000000)($v0)
/* 1724 80000B24 00001021 */  addu       $v0, $zero, $zero
/* 1728 80000B28 AE230000 */  sw         $v1, 0x0($s1)
.L80000B2C:
/* 172C 80000B2C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1730 80000B30 8FB10014 */  lw         $s1, 0x14($sp)
/* 1734 80000B34 8FB00010 */  lw         $s0, 0x10($sp)
/* 1738 80000B38 03E00008 */  jr         $ra
/* 173C 80000B3C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel __osSiRawWriteIo
/* 1740 80000B40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1744 80000B44 AFB00010 */  sw         $s0, 0x10($sp)
/* 1748 80000B48 00808021 */  addu       $s0, $a0, $zero
/* 174C 80000B4C AFB10014 */  sw         $s1, 0x14($sp)
/* 1750 80000B50 00A08821 */  addu       $s1, $a1, $zero
/* 1754 80000B54 32020003 */  andi       $v0, $s0, 0x3
/* 1758 80000B58 10400007 */  beqz       $v0, .L80000B78
/* 175C 80000B5C AFBF0018 */   sw        $ra, 0x18($sp)
/* 1760 80000B60 3C04800D */  lui        $a0, %hi(D_800CCEE0)
/* 1764 80000B64 2484CEE0 */  addiu      $a0, $a0, %lo(D_800CCEE0)
/* 1768 80000B68 3C05800D */  lui        $a1, %hi(D_800CCEE4)
/* 176C 80000B6C 24A5CEE4 */  addiu      $a1, $a1, %lo(D_800CCEE4)
/* 1770 80000B70 0C0006E0 */  jal        func_80001B80
/* 1774 80000B74 24060034 */   addiu     $a2, $zero, 0x34
.L80000B78:
/* 1778 80000B78 0C0006E4 */  jal        func_80001B90
/* 177C 80000B7C 00000000 */   nop
/* 1780 80000B80 54400005 */  bnel       $v0, $zero, .L80000B98
/* 1784 80000B84 2402FFFF */   addiu     $v0, $zero, -0x1
/* 1788 80000B88 3C02A000 */  lui        $v0, %hi(D_A0000000)
/* 178C 80000B8C 02021025 */  or         $v0, $s0, $v0
/* 1790 80000B90 AC510000 */  sw         $s1, %lo(D_A0000000)($v0)
/* 1794 80000B94 00001021 */  addu       $v0, $zero, $zero
.L80000B98:
/* 1798 80000B98 8FBF0018 */  lw         $ra, 0x18($sp)
/* 179C 80000B9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 17A0 80000BA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 17A4 80000BA4 03E00008 */  jr         $ra
/* 17A8 80000BA8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 17AC 80000BAC 00000000 */  nop
