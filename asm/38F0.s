.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osRecvMesg
/* 38F0 80002CF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 38F4 80002CF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 38F8 80002CF8 00808021 */  addu       $s0, $a0, $zero
/* 38FC 80002CFC AFB40020 */  sw         $s4, 0x20($sp)
/* 3900 80002D00 00A0A021 */  addu       $s4, $a1, $zero
/* 3904 80002D04 AFB10014 */  sw         $s1, 0x14($sp)
/* 3908 80002D08 00C08821 */  addu       $s1, $a2, $zero
/* 390C 80002D0C AFBF0024 */  sw         $ra, 0x24($sp)
/* 3910 80002D10 AFB3001C */  sw         $s3, 0x1C($sp)
/* 3914 80002D14 0C0005EC */  jal        func_800017B0
/* 3918 80002D18 AFB20018 */   sw        $s2, 0x18($sp)
/* 391C 80002D1C 8E030008 */  lw         $v1, 0x8($s0)
/* 3920 80002D20 1460000F */  bnez       $v1, .L80002D60
/* 3924 80002D24 00409021 */   addu      $s2, $v0, $zero
/* 3928 80002D28 24130008 */  addiu      $s3, $zero, 0x8
.L80002D2C:
/* 392C 80002D2C 16200005 */  bnez       $s1, .L80002D44
/* 3930 80002D30 02002021 */   addu      $a0, $s0, $zero
/* 3934 80002D34 0C0005F4 */  jal        __osRestoreInt
/* 3938 80002D38 02402021 */   addu      $a0, $s2, $zero
/* 393C 80002D3C 08000B7D */  j          .L80002DF4
/* 3940 80002D40 2402FFFF */   addiu     $v0, $zero, -0x1
.L80002D44:
/* 3944 80002D44 3C02800A */  lui        $v0, %hi(D_800A06C0)
/* 3948 80002D48 8C4206C0 */  lw         $v0, %lo(D_800A06C0)($v0)
/* 394C 80002D4C 0C00050D */  jal        func_80001434
/* 3950 80002D50 A4530010 */   sh        $s3, 0x10($v0)
/* 3954 80002D54 8E020008 */  lw         $v0, 0x8($s0)
/* 3958 80002D58 1040FFF4 */  beqz       $v0, .L80002D2C
/* 395C 80002D5C 00000000 */   nop
.L80002D60:
/* 3960 80002D60 12800007 */  beqz       $s4, .L80002D80
/* 3964 80002D64 00000000 */   nop
/* 3968 80002D68 8E02000C */  lw         $v0, 0xC($s0)
/* 396C 80002D6C 8E030014 */  lw         $v1, 0x14($s0)
/* 3970 80002D70 00021080 */  sll        $v0, $v0, 2
/* 3974 80002D74 00431021 */  addu       $v0, $v0, $v1
/* 3978 80002D78 8C420000 */  lw         $v0, 0x0($v0)
/* 397C 80002D7C AE820000 */  sw         $v0, 0x0($s4)
.L80002D80:
/* 3980 80002D80 8E02000C */  lw         $v0, 0xC($s0)
/* 3984 80002D84 8E030010 */  lw         $v1, 0x10($s0)
/* 3988 80002D88 24420001 */  addiu      $v0, $v0, 0x1
/* 398C 80002D8C 0043001A */  div        $zero, $v0, $v1
/* 3990 80002D90 14600002 */  bnez       $v1, .L80002D9C
/* 3994 80002D94 00000000 */   nop
/* 3998 80002D98 0007000D */  break      7
.L80002D9C:
/* 399C 80002D9C 2401FFFF */  addiu      $at, $zero, -0x1
/* 39A0 80002DA0 14610004 */  bne        $v1, $at, .L80002DB4
/* 39A4 80002DA4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 39A8 80002DA8 14410002 */  bne        $v0, $at, .L80002DB4
/* 39AC 80002DAC 00000000 */   nop
/* 39B0 80002DB0 0006000D */  break      6
.L80002DB4:
/* 39B4 80002DB4 00002010 */  mfhi       $a0
/* 39B8 80002DB8 8E020008 */  lw         $v0, 0x8($s0)
/* 39BC 80002DBC 8E030004 */  lw         $v1, 0x4($s0)
/* 39C0 80002DC0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 39C4 80002DC4 AE020008 */  sw         $v0, 0x8($s0)
/* 39C8 80002DC8 AE04000C */  sw         $a0, 0xC($s0)
/* 39CC 80002DCC 8C620000 */  lw         $v0, 0x0($v1)
/* 39D0 80002DD0 10400005 */  beqz       $v0, .L80002DE8
/* 39D4 80002DD4 00000000 */   nop
/* 39D8 80002DD8 0C000561 */  jal        __osPopThread
/* 39DC 80002DDC 26040004 */   addiu     $a0, $s0, 0x4
/* 39E0 80002DE0 0C000254 */  jal        osStartThread
/* 39E4 80002DE4 00402021 */   addu      $a0, $v0, $zero
.L80002DE8:
/* 39E8 80002DE8 0C0005F4 */  jal        __osRestoreInt
/* 39EC 80002DEC 02402021 */   addu      $a0, $s2, $zero
/* 39F0 80002DF0 00001021 */  addu       $v0, $zero, $zero
.L80002DF4:
/* 39F4 80002DF4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 39F8 80002DF8 8FB40020 */  lw         $s4, 0x20($sp)
/* 39FC 80002DFC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 3A00 80002E00 8FB20018 */  lw         $s2, 0x18($sp)
/* 3A04 80002E04 8FB10014 */  lw         $s1, 0x14($sp)
/* 3A08 80002E08 8FB00010 */  lw         $s0, 0x10($sp)
/* 3A0C 80002E0C 03E00008 */  jr         $ra
/* 3A10 80002E10 27BD0028 */   addiu     $sp, $sp, 0x28
/* 3A14 80002E14 00000000 */  nop
/* 3A18 80002E18 00000000 */  nop
/* 3A1C 80002E1C 00000000 */  nop
