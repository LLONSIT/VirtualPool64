.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009B8F0
/* 9C4F0 8009B8F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9C4F4 8009B8F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9C4F8 8009B8F8 3C01800D */  lui        $at, %hi(D_800D7170)
/* 9C4FC 8009B8FC 0C026E44 */  jal        func_8009B910
/* 9C500 8009B900 D42E7170 */   ldc1      $f14, %lo(D_800D7170)($at)
/* 9C504 8009B904 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C508 8009B908 03E00008 */  jr         $ra
/* 9C50C 8009B90C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8009B910
/* 9C510 8009B910 44800000 */  mtc1       $zero, $f0
/* 9C514 8009B914 44800800 */  mtc1       $zero, $f1
/* 9C518 8009B918 00000000 */  nop
/* 9C51C 8009B91C 46207032 */  c.eq.d     $f14, $f0
/* 9C520 8009B920 00000000 */  nop
/* 9C524 8009B924 00000000 */  nop
/* 9C528 8009B928 45010005 */  bc1t       .L8009B940
/* 9C52C 8009B92C 24020001 */   addiu     $v0, $zero, 0x1
/* 9C530 8009B930 00001021 */  addu       $v0, $zero, $zero
/* 9C534 8009B934 44800000 */  mtc1       $zero, $f0
/* 9C538 8009B938 44800800 */  mtc1       $zero, $f1
/* 9C53C 8009B93C 00000000 */  nop
.L8009B940:
/* 9C540 8009B940 46206032 */  c.eq.d     $f12, $f0
/* 9C544 8009B944 00000000 */  nop
/* 9C548 8009B948 00000000 */  nop
/* 9C54C 8009B94C 45010002 */  bc1t       .L8009B958
/* 9C550 8009B950 24030001 */   addiu     $v1, $zero, 0x1
/* 9C554 8009B954 00001821 */  addu       $v1, $zero, $zero
.L8009B958:
/* 9C558 8009B958 00431024 */  and        $v0, $v0, $v1
/* 9C55C 8009B95C 10400005 */  beqz       $v0, .L8009B974
/* 9C560 8009B960 00000000 */   nop
/* 9C564 8009B964 44800000 */  mtc1       $zero, $f0
/* 9C568 8009B968 44800800 */  mtc1       $zero, $f1
/* 9C56C 8009B96C 08026EB5 */  j          .L8009BAD4
/* 9C570 8009B970 00000000 */   nop
.L8009B974:
/* 9C574 8009B974 44800000 */  mtc1       $zero, $f0
/* 9C578 8009B978 44800800 */  mtc1       $zero, $f1
/* 9C57C 8009B97C 00000000 */  nop
/* 9C580 8009B980 46207032 */  c.eq.d     $f14, $f0
/* 9C584 8009B984 00000000 */  nop
/* 9C588 8009B988 00000000 */  nop
/* 9C58C 8009B98C 45020009 */  bc1fl      .L8009B9B4
/* 9C590 8009B990 462E6203 */   div.d     $f8, $f12, $f14
/* 9C594 8009B994 462C003C */  c.lt.d     $f0, $f12
/* 9C598 8009B998 3C01800D */  lui        $at, %hi(D_800D7180)
/* 9C59C 8009B99C D4207180 */  ldc1       $f0, %lo(D_800D7180)($at)
/* 9C5A0 8009B9A0 4500004C */  bc1f       .L8009BAD4
/* 9C5A4 8009B9A4 00000000 */   nop
/* 9C5A8 8009B9A8 3C01800D */  lui        $at, %hi(D_800D7188)
/* 9C5AC 8009B9AC 08026EB5 */  j          .L8009BAD4
/* 9C5B0 8009B9B0 D4207188 */   ldc1      $f0, %lo(D_800D7188)($at)
.L8009B9B4:
/* 9C5B4 8009B9B4 46204085 */  abs.d      $f2, $f8
/* 9C5B8 8009B9B8 3C01800D */  lui        $at, %hi(D_800D7190)
/* 9C5BC 8009B9BC D4207190 */  ldc1       $f0, %lo(D_800D7190)($at)
/* 9C5C0 8009B9C0 4620103E */  c.le.d     $f2, $f0
/* 9C5C4 8009B9C4 00000000 */  nop
/* 9C5C8 8009B9C8 00000000 */  nop
/* 9C5CC 8009B9CC 45010002 */  bc1t       .L8009B9D8
/* 9C5D0 8009B9D0 46204106 */   mov.d     $f4, $f8
/* 9C5D4 8009B9D4 46280103 */  div.d      $f4, $f0, $f8
.L8009B9D8:
/* 9C5D8 8009B9D8 44803000 */  mtc1       $zero, $f6
/* 9C5DC 8009B9DC 44803800 */  mtc1       $zero, $f7
/* 9C5E0 8009B9E0 2403000E */  addiu      $v1, $zero, 0xE
.L8009B9E4:
/* 9C5E4 8009B9E4 00000000 */  nop
/* 9C5E8 8009B9E8 00630018 */  mult       $v1, $v1
/* 9C5EC 8009B9EC 00001012 */  mflo       $v0
/* 9C5F0 8009B9F0 44821000 */  mtc1       $v0, $f2
/* 9C5F4 8009B9F4 00000000 */  nop
/* 9C5F8 8009B9F8 468010A1 */  cvt.d.w    $f2, $f2
/* 9C5FC 8009B9FC 46241082 */  mul.d      $f2, $f2, $f4
/* 9C600 8009BA00 00000000 */  nop
/* 9C604 8009BA04 46241082 */  mul.d      $f2, $f2, $f4
/* 9C608 8009BA08 00031040 */  sll        $v0, $v1, 1
/* 9C60C 8009BA0C 24420001 */  addiu      $v0, $v0, 0x1
/* 9C610 8009BA10 44820000 */  mtc1       $v0, $f0
/* 9C614 8009BA14 00000000 */  nop
/* 9C618 8009BA18 46800021 */  cvt.d.w    $f0, $f0
/* 9C61C 8009BA1C 46260000 */  add.d      $f0, $f0, $f6
/* 9C620 8009BA20 2463FFFF */  addiu      $v1, $v1, -0x1
/* 9C624 8009BA24 1C60FFEF */  bgtz       $v1, .L8009B9E4
/* 9C628 8009BA28 46201183 */   div.d     $f6, $f2, $f0
/* 9C62C 8009BA2C 3C01800D */  lui        $at, %hi(D_800D7198)
/* 9C630 8009BA30 D4227198 */  ldc1       $f2, %lo(D_800D7198)($at)
/* 9C634 8009BA34 46223000 */  add.d      $f0, $f6, $f2
/* 9C638 8009BA38 4628103C */  c.lt.d     $f2, $f8
/* 9C63C 8009BA3C 00000000 */  nop
/* 9C640 8009BA40 00000000 */  nop
/* 9C644 8009BA44 45000004 */  bc1f       .L8009BA58
/* 9C648 8009BA48 46202103 */   div.d     $f4, $f4, $f0
/* 9C64C 8009BA4C 3C01800D */  lui        $at, %hi(D_800D71A0)
/* 9C650 8009BA50 D42071A0 */  ldc1       $f0, %lo(D_800D71A0)($at)
/* 9C654 8009BA54 46240101 */  sub.d      $f4, $f0, $f4
.L8009BA58:
/* 9C658 8009BA58 3C01800D */  lui        $at, %hi(D_800D71A8)
/* 9C65C 8009BA5C D42071A8 */  ldc1       $f0, %lo(D_800D71A8)($at)
/* 9C660 8009BA60 4620403C */  c.lt.d     $f8, $f0
/* 9C664 8009BA64 00000000 */  nop
/* 9C668 8009BA68 45000004 */  bc1f       .L8009BA7C
/* 9C66C 8009BA6C 00000000 */   nop
/* 9C670 8009BA70 3C01800D */  lui        $at, %hi(D_800D71B0)
/* 9C674 8009BA74 D42071B0 */  ldc1       $f0, %lo(D_800D71B0)($at)
/* 9C678 8009BA78 46240101 */  sub.d      $f4, $f0, $f4
.L8009BA7C:
/* 9C67C 8009BA7C 44800000 */  mtc1       $zero, $f0
/* 9C680 8009BA80 44800800 */  mtc1       $zero, $f1
/* 9C684 8009BA84 00000000 */  nop
/* 9C688 8009BA88 462E003C */  c.lt.d     $f0, $f14
/* 9C68C 8009BA8C 00000000 */  nop
/* 9C690 8009BA90 00000000 */  nop
/* 9C694 8009BA94 4501000F */  bc1t       .L8009BAD4
/* 9C698 8009BA98 46202006 */   mov.d     $f0, $f4
/* 9C69C 8009BA9C 44800000 */  mtc1       $zero, $f0
/* 9C6A0 8009BAA0 44800800 */  mtc1       $zero, $f1
/* 9C6A4 8009BAA4 00000000 */  nop
/* 9C6A8 8009BAA8 462C003C */  c.lt.d     $f0, $f12
/* 9C6AC 8009BAAC 00000000 */  nop
/* 9C6B0 8009BAB0 45010005 */  bc1t       .L8009BAC8
/* 9C6B4 8009BAB4 00000000 */   nop
/* 9C6B8 8009BAB8 3C01800D */  lui        $at, %hi(D_800D71B8)
/* 9C6BC 8009BABC D42071B8 */  ldc1       $f0, %lo(D_800D71B8)($at)
/* 9C6C0 8009BAC0 08026EB5 */  j          .L8009BAD4
/* 9C6C4 8009BAC4 46202001 */   sub.d     $f0, $f4, $f0
.L8009BAC8:
/* 9C6C8 8009BAC8 3C01800D */  lui        $at, %hi(D_800D71C0)
/* 9C6CC 8009BACC D42071C0 */  ldc1       $f0, %lo(D_800D71C0)($at)
/* 9C6D0 8009BAD0 46202000 */  add.d      $f0, $f4, $f0
.L8009BAD4:
/* 9C6D4 8009BAD4 03E00008 */  jr         $ra
/* 9C6D8 8009BAD8 00000000 */   nop
/* 9C6DC 8009BADC 00000000 */  nop
