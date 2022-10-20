.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8005A6A0
/* 5B2A0 8005A6A0 24020001 */  addiu      $v0, $zero, 0x1
/* 5B2A4 8005A6A4 AC800038 */  sw         $zero, 0x38($a0)
/* 5B2A8 8005A6A8 AC80003C */  sw         $zero, 0x3C($a0)
/* 5B2AC 8005A6AC AC800058 */  sw         $zero, 0x58($a0)
/* 5B2B0 8005A6B0 AC80005C */  sw         $zero, 0x5C($a0)
/* 5B2B4 8005A6B4 03E00008 */  jr         $ra
/* 5B2B8 8005A6B8 A0820000 */   sb        $v0, 0x0($a0)

glabel func_8005A6BC
/* 5B2BC 8005A6BC D4820048 */  ldc1       $f2, 0x48($a0)
/* 5B2C0 8005A6C0 D4800058 */  ldc1       $f0, 0x58($a0)
/* 5B2C4 8005A6C4 46201082 */  mul.d      $f2, $f2, $f0
/* 5B2C8 8005A6C8 D4840048 */  ldc1       $f4, 0x48($a0)
/* 5B2CC 8005A6CC 44800000 */  mtc1       $zero, $f0
/* 5B2D0 8005A6D0 44800800 */  mtc1       $zero, $f1
/* 5B2D4 8005A6D4 3C01800D */  lui        $at, %hi(D_800D4618)
/* 5B2D8 8005A6D8 D4264618 */  ldc1       $f6, %lo(D_800D4618)($at)
/* 5B2DC 8005A6DC 4620203C */  c.lt.d     $f4, $f0
/* 5B2E0 8005A6E0 AC800038 */  sw         $zero, 0x38($a0)
/* 5B2E4 8005A6E4 AC80003C */  sw         $zero, 0x3C($a0)
/* 5B2E8 8005A6E8 AC800040 */  sw         $zero, 0x40($a0)
/* 5B2EC 8005A6EC AC800044 */  sw         $zero, 0x44($a0)
/* 5B2F0 8005A6F0 46201085 */  abs.d      $f2, $f2
/* 5B2F4 8005A6F4 AC800050 */  sw         $zero, 0x50($a0)
/* 5B2F8 8005A6F8 AC800054 */  sw         $zero, 0x54($a0)
/* 5B2FC 8005A6FC F4820058 */  sdc1       $f2, 0x58($a0)
/* 5B300 8005A700 45000003 */  bc1f       .L8005A710
/* 5B304 8005A704 24020002 */   addiu     $v0, $zero, 0x2
/* 5B308 8005A708 3C01800D */  lui        $at, %hi(D_800D4620)
/* 5B30C 8005A70C D4264620 */  ldc1       $f6, %lo(D_800D4620)($at)
.L8005A710:
/* 5B310 8005A710 F4860048 */  sdc1       $f6, 0x48($a0)
/* 5B314 8005A714 03E00008 */  jr         $ra
/* 5B318 8005A718 A0820000 */   sb        $v0, 0x0($a0)

glabel func_8005A71C
/* 5B31C 8005A71C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5B320 8005A720 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5B324 8005A724 D4820028 */  ldc1       $f2, 0x28($a0)
/* 5B328 8005A728 44800000 */  mtc1       $zero, $f0
/* 5B32C 8005A72C 44800800 */  mtc1       $zero, $f1
/* 5B330 8005A730 00000000 */  nop
/* 5B334 8005A734 46201032 */  c.eq.d     $f2, $f0
/* 5B338 8005A738 00000000 */  nop
/* 5B33C 8005A73C 00000000 */  nop
/* 5B340 8005A740 45010003 */  bc1t       .L8005A750
/* 5B344 8005A744 24020020 */   addiu     $v0, $zero, 0x20
/* 5B348 8005A748 08016A06 */  j          .L8005A818
/* 5B34C 8005A74C A0820000 */   sb        $v0, 0x0($a0)
.L8005A750:
/* 5B350 8005A750 D4840038 */  ldc1       $f4, 0x38($a0)
/* 5B354 8005A754 3C01800D */  lui        $at, %hi(D_800D4610)
/* 5B358 8005A758 D4224610 */  ldc1       $f2, %lo(D_800D4610)($at)
/* 5B35C 8005A75C 4624103C */  c.lt.d     $f2, $f4
/* 5B360 8005A760 24020008 */  addiu      $v0, $zero, 0x8
/* 5B364 8005A764 00000000 */  nop
/* 5B368 8005A768 45000018 */  bc1f       .L8005A7CC
/* 5B36C 8005A76C A0820000 */   sb        $v0, 0x0($a0)
/* 5B370 8005A770 D4820020 */  ldc1       $f2, 0x20($a0)
/* 5B374 8005A774 46222082 */  mul.d      $f2, $f4, $f2
/* 5B378 8005A778 D4880058 */  ldc1       $f8, 0x58($a0)
/* 5B37C 8005A77C D4860050 */  ldc1       $f6, 0x50($a0)
/* 5B380 8005A780 46264182 */  mul.d      $f6, $f8, $f6
/* 5B384 8005A784 D4800030 */  ldc1       $f0, 0x30($a0)
/* 5B388 8005A788 46202002 */  mul.d      $f0, $f4, $f0
/* 5B38C 8005A78C D4840040 */  ldc1       $f4, 0x40($a0)
/* 5B390 8005A790 46244202 */  mul.d      $f8, $f8, $f4
/* 5B394 8005A794 46261081 */  sub.d      $f2, $f2, $f6
/* 5B398 8005A798 46221082 */  mul.d      $f2, $f2, $f2
/* 5B39C 8005A79C 46280000 */  add.d      $f0, $f0, $f8
/* 5B3A0 8005A7A0 46200002 */  mul.d      $f0, $f0, $f0
/* 5B3A4 8005A7A4 46201080 */  add.d      $f2, $f2, $f0
/* 5B3A8 8005A7A8 3C01800D */  lui        $at, %hi(D_800D4628)
/* 5B3AC 8005A7AC D4204628 */  ldc1       $f0, %lo(D_800D4628)($at)
/* 5B3B0 8005A7B0 4620103C */  c.lt.d     $f2, $f0
/* 5B3B4 8005A7B4 00000000 */  nop
/* 5B3B8 8005A7B8 00000000 */  nop
/* 5B3BC 8005A7BC 45000016 */  bc1f       .L8005A818
/* 5B3C0 8005A7C0 24020004 */   addiu     $v0, $zero, 0x4
/* 5B3C4 8005A7C4 08016A06 */  j          .L8005A818
/* 5B3C8 8005A7C8 A0820000 */   sb        $v0, 0x0($a0)
.L8005A7CC:
/* 5B3CC 8005A7CC D4800058 */  ldc1       $f0, 0x58($a0)
/* 5B3D0 8005A7D0 4622003E */  c.le.d     $f0, $f2
/* 5B3D4 8005A7D4 00000000 */  nop
/* 5B3D8 8005A7D8 45000005 */  bc1f       .L8005A7F0
/* 5B3DC 8005A7DC 00000000 */   nop
/* 5B3E0 8005A7E0 0C0169A8 */  jal        func_8005A6A0
/* 5B3E4 8005A7E4 00000000 */   nop
/* 5B3E8 8005A7E8 08016A06 */  j          .L8005A818
/* 5B3EC 8005A7EC 00000000 */   nop
.L8005A7F0:
/* 5B3F0 8005A7F0 D4800048 */  ldc1       $f0, 0x48($a0)
/* 5B3F4 8005A7F4 3C01800D */  lui        $at, %hi(D_800D4630)
/* 5B3F8 8005A7F8 D4224630 */  ldc1       $f2, %lo(D_800D4630)($at)
/* 5B3FC 8005A7FC 46200005 */  abs.d      $f0, $f0
/* 5B400 8005A800 4620103C */  c.lt.d     $f2, $f0
/* 5B404 8005A804 00000000 */  nop
/* 5B408 8005A808 45000003 */  bc1f       .L8005A818
/* 5B40C 8005A80C 00000000 */   nop
/* 5B410 8005A810 0C0169AF */  jal        func_8005A6BC
/* 5B414 8005A814 00000000 */   nop
.L8005A818:
/* 5B418 8005A818 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5B41C 8005A81C 03E00008 */  jr         $ra
/* 5B420 8005A820 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005A824
/* 5B424 8005A824 44801000 */  mtc1       $zero, $f2
/* 5B428 8005A828 44801800 */  mtc1       $zero, $f3
/* 5B42C 8005A82C 3C01800D */  lui        $at, %hi(D_800D4638)
/* 5B430 8005A830 D4204638 */  ldc1       $f0, %lo(D_800D4638)($at)
/* 5B434 8005A834 24020010 */  addiu      $v0, $zero, 0x10
/* 5B438 8005A838 A0820000 */  sb         $v0, 0x0($a0)
/* 5B43C 8005A83C A0A20090 */  sb         $v0, 0x90($a1)
/* 5B440 8005A840 F4820038 */  sdc1       $f2, 0x38($a0)
/* 5B444 8005A844 F4A20078 */  sdc1       $f2, 0x78($a1)
/* 5B448 8005A848 F4800018 */  sdc1       $f0, 0x18($a0)
/* 5B44C 8005A84C F4800008 */  sdc1       $f0, 0x8($a0)
/* 5B450 8005A850 F4A00020 */  sdc1       $f0, 0x20($a1)
/* 5B454 8005A854 03E00008 */  jr         $ra
/* 5B458 8005A858 F4A00010 */   sdc1      $f0, 0x10($a1)

glabel func_8005A85C
/* 5B45C 8005A85C D4800038 */  ldc1       $f0, 0x38($a0)
/* 5B460 8005A860 D4820028 */  ldc1       $f2, 0x28($a0)
/* 5B464 8005A864 46220002 */  mul.d      $f0, $f0, $f2
/* 5B468 8005A868 46200005 */  abs.d      $f0, $f0
/* 5B46C 8005A86C 24020010 */  addiu      $v0, $zero, 0x10
/* 5B470 8005A870 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5B474 8005A874 F420EB38 */  sdc1       $f0, %lo(D_802AEB38)($at)
/* 5B478 8005A878 A0820000 */  sb         $v0, 0x0($a0)
/* 5B47C 8005A87C A0A20090 */  sb         $v0, 0x90($a1)
/* 5B480 8005A880 D4820038 */  ldc1       $f2, 0x38($a0)
/* 5B484 8005A884 3C01800D */  lui        $at, %hi(D_800D4640)
/* 5B488 8005A888 D4204640 */  ldc1       $f0, %lo(D_800D4640)($at)
/* 5B48C 8005A88C F4A20078 */  sdc1       $f2, 0x78($a1)
/* 5B490 8005A890 F4800018 */  sdc1       $f0, 0x18($a0)
/* 5B494 8005A894 F4800008 */  sdc1       $f0, 0x8($a0)
/* 5B498 8005A898 F4A00020 */  sdc1       $f0, 0x20($a1)
/* 5B49C 8005A89C 03E00008 */  jr         $ra
/* 5B4A0 8005A8A0 F4A00010 */   sdc1      $f0, 0x10($a1)

glabel func_8005A8A4
/* 5B4A4 8005A8A4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5B4A8 8005A8A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 5B4AC 8005A8AC 00808021 */  addu       $s0, $a0, $zero
/* 5B4B0 8005A8B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5B4B4 8005A8B4 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 5B4B8 8005A8B8 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 5B4BC 8005A8BC F7B80028 */  sdc1       $f24, 0x28($sp)
/* 5B4C0 8005A8C0 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 5B4C4 8005A8C4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5B4C8 8005A8C8 D6060020 */  ldc1       $f6, 0x20($s0)
/* 5B4CC 8005A8CC D6000038 */  ldc1       $f0, 0x38($s0)
/* 5B4D0 8005A8D0 46203182 */  mul.d      $f6, $f6, $f0
/* 5B4D4 8005A8D4 D6080030 */  ldc1       $f8, 0x30($s0)
/* 5B4D8 8005A8D8 D6000038 */  ldc1       $f0, 0x38($s0)
/* 5B4DC 8005A8DC 46204202 */  mul.d      $f8, $f8, $f0
/* 5B4E0 8005A8E0 D6020050 */  ldc1       $f2, 0x50($s0)
/* 5B4E4 8005A8E4 D6000058 */  ldc1       $f0, 0x58($s0)
/* 5B4E8 8005A8E8 46201082 */  mul.d      $f2, $f2, $f0
/* 5B4EC 8005A8EC D6040040 */  ldc1       $f4, 0x40($s0)
/* 5B4F0 8005A8F0 D6000058 */  ldc1       $f0, 0x58($s0)
/* 5B4F4 8005A8F4 46202102 */  mul.d      $f4, $f4, $f0
/* 5B4F8 8005A8F8 D60A0028 */  ldc1       $f10, 0x28($s0)
/* 5B4FC 8005A8FC D6000038 */  ldc1       $f0, 0x38($s0)
/* 5B500 8005A900 F6060020 */  sdc1       $f6, 0x20($s0)
/* 5B504 8005A904 46205282 */  mul.d      $f10, $f10, $f0
/* 5B508 8005A908 F6020050 */  sdc1       $f2, 0x50($s0)
/* 5B50C 8005A90C D6020020 */  ldc1       $f2, 0x20($s0)
/* 5B510 8005A910 D6000050 */  ldc1       $f0, 0x50($s0)
/* 5B514 8005A914 F6080030 */  sdc1       $f8, 0x30($s0)
/* 5B518 8005A918 46201681 */  sub.d      $f26, $f2, $f0
/* 5B51C 8005A91C D6020030 */  ldc1       $f2, 0x30($s0)
/* 5B520 8005A920 F6040040 */  sdc1       $f4, 0x40($s0)
/* 5B524 8005A924 463AD102 */  mul.d      $f4, $f26, $f26
/* 5B528 8005A928 D6000040 */  ldc1       $f0, 0x40($s0)
/* 5B52C 8005A92C 46201600 */  add.d      $f24, $f2, $f0
/* 5B530 8005A930 4638C302 */  mul.d      $f12, $f24, $f24
/* 5B534 8005A934 D6020048 */  ldc1       $f2, 0x48($s0)
/* 5B538 8005A938 D6000058 */  ldc1       $f0, 0x58($s0)
/* 5B53C 8005A93C 46201082 */  mul.d      $f2, $f2, $f0
/* 5B540 8005A940 F60A0028 */  sdc1       $f10, 0x28($s0)
/* 5B544 8005A944 D6000028 */  ldc1       $f0, 0x28($s0)
/* 5B548 8005A948 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5B54C 8005A94C F420EB38 */  sdc1       $f0, %lo(D_802AEB38)($at)
/* 5B550 8005A950 F6020048 */  sdc1       $f2, 0x48($s0)
/* 5B554 8005A954 0C022BA9 */  jal        func_8008AEA4
/* 5B558 8005A958 462C2300 */   add.d     $f12, $f4, $f12
/* 5B55C 8005A95C 3C01800D */  lui        $at, %hi(D_800D4648)
/* 5B560 8005A960 D4224648 */  ldc1       $f2, %lo(D_800D4648)($at)
/* 5B564 8005A964 46200506 */  mov.d      $f20, $f0
/* 5B568 8005A968 4622A03C */  c.lt.d     $f20, $f2
/* 5B56C 8005A96C 00000000 */  nop
/* 5B570 8005A970 45000014 */  bc1f       .L8005A9C4
/* 5B574 8005A974 00000000 */   nop
/* 5B578 8005A978 0C01E7A8 */  jal        func_80079EA0
/* 5B57C 8005A97C D60C0028 */   ldc1      $f12, 0x28($s0)
/* 5B580 8005A980 D6020028 */  ldc1       $f2, 0x28($s0)
/* 5B584 8005A984 46200007 */  neg.d      $f0, $f0
/* 5B588 8005A988 46201082 */  mul.d      $f2, $f2, $f0
/* 5B58C 8005A98C 3C01800D */  lui        $at, %hi(D_800D4650)
/* 5B590 8005A990 D4244650 */  ldc1       $f4, %lo(D_800D4650)($at)
/* 5B594 8005A994 46201005 */  abs.d      $f0, $f2
/* 5B598 8005A998 4624003C */  c.lt.d     $f0, $f4
/* 5B59C 8005A99C F6020028 */  sdc1       $f2, 0x28($s0)
/* 5B5A0 8005A9A0 45000003 */  bc1f       .L8005A9B0
/* 5B5A4 8005A9A4 00000000 */   nop
/* 5B5A8 8005A9A8 AE000028 */  sw         $zero, 0x28($s0)
/* 5B5AC 8005A9AC AE00002C */  sw         $zero, 0x2C($s0)
.L8005A9B0:
/* 5B5B0 8005A9B0 0C022CCC */  jal        func_8008B330
/* 5B5B4 8005A9B4 26040020 */   addiu     $a0, $s0, 0x20
/* 5B5B8 8005A9B8 F6000038 */  sdc1       $f0, 0x38($s0)
/* 5B5BC 8005A9BC 08016AAD */  j          .L8005AAB4
/* 5B5C0 8005A9C0 26040040 */   addiu     $a0, $s0, 0x40
.L8005A9C4:
/* 5B5C4 8005A9C4 D60C0028 */  ldc1       $f12, 0x28($s0)
/* 5B5C8 8005A9C8 0C01E7C0 */  jal        func_80079F00
/* 5B5CC 8005A9CC 4634D683 */   div.d     $f26, $f26, $f20
/* 5B5D0 8005A9D0 D60C0028 */  ldc1       $f12, 0x28($s0)
/* 5B5D4 8005A9D4 0C01E7A8 */  jal        func_80079EA0
/* 5B5D8 8005A9D8 46200586 */   mov.d     $f22, $f0
/* 5B5DC 8005A9DC 3C01800D */  lui        $at, %hi(D_800D4658)
/* 5B5E0 8005A9E0 D4224658 */  ldc1       $f2, %lo(D_800D4658)($at)
/* 5B5E4 8005A9E4 4634C603 */  div.d      $f24, $f24, $f20
/* 5B5E8 8005A9E8 4622A502 */  mul.d      $f20, $f20, $f2
/* 5B5EC 8005A9EC 3C01800D */  lui        $at, %hi(D_800D4660)
/* 5B5F0 8005A9F0 D43C4660 */  ldc1       $f28, %lo(D_800D4660)($at)
/* 5B5F4 8005A9F4 463C0000 */  add.d      $f0, $f0, $f28
/* 5B5F8 8005A9F8 D60C0028 */  ldc1       $f12, 0x28($s0)
/* 5B5FC 8005A9FC 462C0002 */  mul.d      $f0, $f0, $f12
/* 5B600 8005AA00 00000000 */  nop
/* 5B604 8005AA04 4620B582 */  mul.d      $f22, $f22, $f0
/* 5B608 8005AA08 4636A03C */  c.lt.d     $f20, $f22
/* 5B60C 8005AA0C 00000000 */  nop
/* 5B610 8005AA10 00000000 */  nop
/* 5B614 8005AA14 45030001 */  bc1tl      .L8005AA1C
/* 5B618 8005AA18 4620A586 */   mov.d     $f22, $f20
.L8005AA1C:
/* 5B61C 8005AA1C 0C01E7A8 */  jal        func_80079EA0
/* 5B620 8005AA20 00000000 */   nop
/* 5B624 8005AA24 D6020028 */  ldc1       $f2, 0x28($s0)
/* 5B628 8005AA28 46200007 */  neg.d      $f0, $f0
/* 5B62C 8005AA2C 46201082 */  mul.d      $f2, $f2, $f0
/* 5B630 8005AA30 46201005 */  abs.d      $f0, $f2
/* 5B634 8005AA34 463C003C */  c.lt.d     $f0, $f28
/* 5B638 8005AA38 F6020028 */  sdc1       $f2, 0x28($s0)
/* 5B63C 8005AA3C 00000000 */  nop
/* 5B640 8005AA40 45000003 */  bc1f       .L8005AA50
/* 5B644 8005AA44 463AB002 */   mul.d     $f0, $f22, $f26
/* 5B648 8005AA48 AE000028 */  sw         $zero, 0x28($s0)
/* 5B64C 8005AA4C AE00002C */  sw         $zero, 0x2C($s0)
.L8005AA50:
/* 5B650 8005AA50 00000000 */  nop
/* 5B654 8005AA54 4638B102 */  mul.d      $f4, $f22, $f24
/* 5B658 8005AA58 D6020020 */  ldc1       $f2, 0x20($s0)
/* 5B65C 8005AA5C 46201081 */  sub.d      $f2, $f2, $f0
/* 5B660 8005AA60 D6000030 */  ldc1       $f0, 0x30($s0)
/* 5B664 8005AA64 46240001 */  sub.d      $f0, $f0, $f4
/* 5B668 8005AA68 F6020020 */  sdc1       $f2, 0x20($s0)
/* 5B66C 8005AA6C F6000030 */  sdc1       $f0, 0x30($s0)
/* 5B670 8005AA70 0C022CCC */  jal        func_8008B330
/* 5B674 8005AA74 26040020 */   addiu     $a0, $s0, 0x20
/* 5B678 8005AA78 3C01800D */  lui        $at, %hi(D_800D4668)
/* 5B67C 8005AA7C D4224668 */  ldc1       $f2, %lo(D_800D4668)($at)
/* 5B680 8005AA80 4622B582 */  mul.d      $f22, $f22, $f2
/* 5B684 8005AA84 00000000 */  nop
/* 5B688 8005AA88 4638B082 */  mul.d      $f2, $f22, $f24
/* 5B68C 8005AA8C 00000000 */  nop
/* 5B690 8005AA90 463AB182 */  mul.d      $f6, $f22, $f26
/* 5B694 8005AA94 D6040040 */  ldc1       $f4, 0x40($s0)
/* 5B698 8005AA98 46222101 */  sub.d      $f4, $f4, $f2
/* 5B69C 8005AA9C D6020050 */  ldc1       $f2, 0x50($s0)
/* 5B6A0 8005AAA0 46261080 */  add.d      $f2, $f2, $f6
/* 5B6A4 8005AAA4 26040040 */  addiu      $a0, $s0, 0x40
/* 5B6A8 8005AAA8 F6000038 */  sdc1       $f0, 0x38($s0)
/* 5B6AC 8005AAAC F6040040 */  sdc1       $f4, 0x40($s0)
/* 5B6B0 8005AAB0 F6020050 */  sdc1       $f2, 0x50($s0)
.L8005AAB4:
/* 5B6B4 8005AAB4 0C022CCC */  jal        func_8008B330
/* 5B6B8 8005AAB8 00000000 */   nop
/* 5B6BC 8005AABC 02002021 */  addu       $a0, $s0, $zero
/* 5B6C0 8005AAC0 0C0169C7 */  jal        func_8005A71C
/* 5B6C4 8005AAC4 F4800058 */   sdc1      $f0, 0x58($a0)
/* 5B6C8 8005AAC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5B6CC 8005AACC 8FB00010 */  lw         $s0, 0x10($sp)
/* 5B6D0 8005AAD0 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 5B6D4 8005AAD4 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 5B6D8 8005AAD8 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 5B6DC 8005AADC D7B60020 */  ldc1       $f22, 0x20($sp)
/* 5B6E0 8005AAE0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5B6E4 8005AAE4 03E00008 */  jr         $ra
/* 5B6E8 8005AAE8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8005AAEC
/* 5B6EC 8005AAEC 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 5B6F0 8005AAF0 AFB00010 */  sw         $s0, 0x10($sp)
/* 5B6F4 8005AAF4 00808021 */  addu       $s0, $a0, $zero
/* 5B6F8 8005AAF8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 5B6FC 8005AAFC AFB7002C */  sw         $s7, 0x2C($sp)
/* 5B700 8005AB00 AFB60028 */  sw         $s6, 0x28($sp)
/* 5B704 8005AB04 AFB50024 */  sw         $s5, 0x24($sp)
/* 5B708 8005AB08 AFB40020 */  sw         $s4, 0x20($sp)
/* 5B70C 8005AB0C AFB3001C */  sw         $s3, 0x1C($sp)
/* 5B710 8005AB10 AFB20018 */  sw         $s2, 0x18($sp)
/* 5B714 8005AB14 AFB10014 */  sw         $s1, 0x14($sp)
/* 5B718 8005AB18 F7BE0060 */  sdc1       $f30, 0x60($sp)
/* 5B71C 8005AB1C F7BC0058 */  sdc1       $f28, 0x58($sp)
/* 5B720 8005AB20 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* 5B724 8005AB24 F7B80048 */  sdc1       $f24, 0x48($sp)
/* 5B728 8005AB28 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 5B72C 8005AB2C F7B40038 */  sdc1       $f20, 0x38($sp)
/* 5B730 8005AB30 D60C0020 */  ldc1       $f12, 0x20($s0)
/* 5B734 8005AB34 D6000038 */  ldc1       $f0, 0x38($s0)
/* 5B738 8005AB38 46206302 */  mul.d      $f12, $f12, $f0
/* 5B73C 8005AB3C D60A0028 */  ldc1       $f10, 0x28($s0)
/* 5B740 8005AB40 D6000038 */  ldc1       $f0, 0x38($s0)
/* 5B744 8005AB44 46205282 */  mul.d      $f10, $f10, $f0
/* 5B748 8005AB48 D6080030 */  ldc1       $f8, 0x30($s0)
/* 5B74C 8005AB4C D6000038 */  ldc1       $f0, 0x38($s0)
/* 5B750 8005AB50 46204202 */  mul.d      $f8, $f8, $f0
/* 5B754 8005AB54 D6060040 */  ldc1       $f6, 0x40($s0)
/* 5B758 8005AB58 D6000058 */  ldc1       $f0, 0x58($s0)
/* 5B75C 8005AB5C 46203182 */  mul.d      $f6, $f6, $f0
/* 5B760 8005AB60 D6040048 */  ldc1       $f4, 0x48($s0)
/* 5B764 8005AB64 D6000058 */  ldc1       $f0, 0x58($s0)
/* 5B768 8005AB68 46202102 */  mul.d      $f4, $f4, $f0
/* 5B76C 8005AB6C D6020050 */  ldc1       $f2, 0x50($s0)
/* 5B770 8005AB70 D6000058 */  ldc1       $f0, 0x58($s0)
/* 5B774 8005AB74 46201082 */  mul.d      $f2, $f2, $f0
/* 5B778 8005AB78 00A08821 */  addu       $s1, $a1, $zero
/* 5B77C 8005AB7C F60C0020 */  sdc1       $f12, 0x20($s0)
/* 5B780 8005AB80 F60A0028 */  sdc1       $f10, 0x28($s0)
/* 5B784 8005AB84 F6080030 */  sdc1       $f8, 0x30($s0)
/* 5B788 8005AB88 F6060040 */  sdc1       $f6, 0x40($s0)
/* 5B78C 8005AB8C F6040048 */  sdc1       $f4, 0x48($s0)
/* 5B790 8005AB90 F6020050 */  sdc1       $f2, 0x50($s0)
/* 5B794 8005AB94 D62C0020 */  ldc1       $f12, 0x20($s1)
/* 5B798 8005AB98 D6200038 */  ldc1       $f0, 0x38($s1)
/* 5B79C 8005AB9C 46206302 */  mul.d      $f12, $f12, $f0
/* 5B7A0 8005ABA0 D62A0028 */  ldc1       $f10, 0x28($s1)
/* 5B7A4 8005ABA4 D6200038 */  ldc1       $f0, 0x38($s1)
/* 5B7A8 8005ABA8 46205282 */  mul.d      $f10, $f10, $f0
/* 5B7AC 8005ABAC D6280030 */  ldc1       $f8, 0x30($s1)
/* 5B7B0 8005ABB0 D6200038 */  ldc1       $f0, 0x38($s1)
/* 5B7B4 8005ABB4 46204202 */  mul.d      $f8, $f8, $f0
/* 5B7B8 8005ABB8 D6260040 */  ldc1       $f6, 0x40($s1)
/* 5B7BC 8005ABBC D6200058 */  ldc1       $f0, 0x58($s1)
/* 5B7C0 8005ABC0 46203182 */  mul.d      $f6, $f6, $f0
/* 5B7C4 8005ABC4 D6240048 */  ldc1       $f4, 0x48($s1)
/* 5B7C8 8005ABC8 D6200058 */  ldc1       $f0, 0x58($s1)
/* 5B7CC 8005ABCC 46202102 */  mul.d      $f4, $f4, $f0
/* 5B7D0 8005ABD0 D6220058 */  ldc1       $f2, 0x58($s1)
/* 5B7D4 8005ABD4 D6200050 */  ldc1       $f0, 0x50($s1)
/* 5B7D8 8005ABD8 26240008 */  addiu      $a0, $s1, 0x8
/* 5B7DC 8005ABDC 26050008 */  addiu      $a1, $s0, 0x8
/* 5B7E0 8005ABE0 46220002 */  mul.d      $f0, $f0, $f2
/* 5B7E4 8005ABE4 3C12802B */  lui        $s2, %hi(D_802AEA60)
/* 5B7E8 8005ABE8 2652EA60 */  addiu      $s2, $s2, %lo(D_802AEA60)
/* 5B7EC 8005ABEC F62C0020 */  sdc1       $f12, 0x20($s1)
/* 5B7F0 8005ABF0 F62A0028 */  sdc1       $f10, 0x28($s1)
/* 5B7F4 8005ABF4 F6280030 */  sdc1       $f8, 0x30($s1)
/* 5B7F8 8005ABF8 F6260040 */  sdc1       $f6, 0x40($s1)
/* 5B7FC 8005ABFC F6240048 */  sdc1       $f4, 0x48($s1)
/* 5B800 8005AC00 F6200050 */  sdc1       $f0, 0x50($s1)
/* 5B804 8005AC04 0C022B9C */  jal        func_8008AE70
/* 5B808 8005AC08 02403021 */   addu      $a2, $s2, $zero
/* 5B80C 8005AC0C 0C022CCC */  jal        func_8008B330
/* 5B810 8005AC10 02402021 */   addu      $a0, $s2, $zero
/* 5B814 8005AC14 02402021 */  addu       $a0, $s2, $zero
/* 5B818 8005AC18 0C022C70 */  jal        func_8008B1C0
/* 5B81C 8005AC1C 26050020 */   addiu     $a1, $s0, 0x20
/* 5B820 8005AC20 46200586 */  mov.d      $f22, $f0
/* 5B824 8005AC24 02402021 */  addu       $a0, $s2, $zero
/* 5B828 8005AC28 0C022C70 */  jal        func_8008B1C0
/* 5B82C 8005AC2C 26250020 */   addiu     $a1, $s1, 0x20
/* 5B830 8005AC30 46200606 */  mov.d      $f24, $f0
/* 5B834 8005AC34 4636C501 */  sub.d      $f20, $f24, $f22
/* 5B838 8005AC38 44801000 */  mtc1       $zero, $f2
/* 5B83C 8005AC3C 44801800 */  mtc1       $zero, $f3
/* 5B840 8005AC40 4620A005 */  abs.d      $f0, $f20
/* 5B844 8005AC44 4622A03C */  c.lt.d     $f20, $f2
/* 5B848 8005AC48 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5B84C 8005AC4C F420EB38 */  sdc1       $f0, %lo(D_802AEB38)($at)
/* 5B850 8005AC50 45000138 */  bc1f       .L8005B134
/* 5B854 8005AC54 00000000 */   nop
/* 5B858 8005AC58 0240A821 */  addu       $s5, $s2, $zero
/* 5B85C 8005AC5C 3C14802B */  lui        $s4, %hi(D_802AEA78)
/* 5B860 8005AC60 2694EA78 */  addiu      $s4, $s4, %lo(D_802AEA78)
/* 5B864 8005AC64 3C12802B */  lui        $s2, %hi(D_802AEB08)
/* 5B868 8005AC68 2652EB08 */  addiu      $s2, $s2, %lo(D_802AEB08)
/* 5B86C 8005AC6C 3C13802B */  lui        $s3, %hi(D_802AEB20)
/* 5B870 8005AC70 2673EB20 */  addiu      $s3, $s3, %lo(D_802AEB20)
/* 5B874 8005AC74 3C01800D */  lui        $at, %hi(D_800D4670)
/* 5B878 8005AC78 8C364670 */  lw         $s6, %lo(D_800D4670)($at)
/* 5B87C 8005AC7C 8C374674 */  lw         $s7, %lo(D_800D4674)($at)
/* 5B880 8005AC80 46201706 */  mov.d      $f28, $f2
/* 5B884 8005AC84 3C01800D */  lui        $at, %hi(D_800D4678)
/* 5B888 8005AC88 D43A4678 */  ldc1       $f26, %lo(D_800D4678)($at)
/* 5B88C 8005AC8C 3C01800D */  lui        $at, %hi(D_800D4680)
/* 5B890 8005AC90 D43E4680 */  ldc1       $f30, %lo(D_800D4680)($at)
/* 5B894 8005AC94 02A02021 */  addu       $a0, $s5, $zero
.L8005AC98:
/* 5B898 8005AC98 26050040 */  addiu      $a1, $s0, 0x40
/* 5B89C 8005AC9C 0C022C84 */  jal        func_8008B210
/* 5B8A0 8005ACA0 02803021 */   addu      $a2, $s4, $zero
/* 5B8A4 8005ACA4 D6A00000 */  ldc1       $f0, 0x0($s5)
/* 5B8A8 8005ACA8 4620B002 */  mul.d      $f0, $f22, $f0
/* 5B8AC 8005ACAC D6020020 */  ldc1       $f2, 0x20($s0)
/* 5B8B0 8005ACB0 3C01802B */  lui        $at, %hi(D_802AEA68)
/* 5B8B4 8005ACB4 D424EA68 */  ldc1       $f4, %lo(D_802AEA68)($at)
/* 5B8B8 8005ACB8 46201081 */  sub.d      $f2, $f2, $f0
/* 5B8BC 8005ACBC D6800000 */  ldc1       $f0, 0x0($s4)
/* 5B8C0 8005ACC0 4624B102 */  mul.d      $f4, $f22, $f4
/* 5B8C4 8005ACC4 46201081 */  sub.d      $f2, $f2, $f0
/* 5B8C8 8005ACC8 F6420000 */  sdc1       $f2, 0x0($s2)
/* 5B8CC 8005ACCC D6000028 */  ldc1       $f0, 0x28($s0)
/* 5B8D0 8005ACD0 46240001 */  sub.d      $f0, $f0, $f4
/* 5B8D4 8005ACD4 3C01802B */  lui        $at, %hi(D_802AEA70)
/* 5B8D8 8005ACD8 D424EA70 */  ldc1       $f4, %lo(D_802AEA70)($at)
/* 5B8DC 8005ACDC 3C01802B */  lui        $at, %hi(D_802AEA80)
/* 5B8E0 8005ACE0 D422EA80 */  ldc1       $f2, %lo(D_802AEA80)($at)
/* 5B8E4 8005ACE4 4624B102 */  mul.d      $f4, $f22, $f4
/* 5B8E8 8005ACE8 46220001 */  sub.d      $f0, $f0, $f2
/* 5B8EC 8005ACEC F6400008 */  sdc1       $f0, 0x8($s2)
/* 5B8F0 8005ACF0 D6020030 */  ldc1       $f2, 0x30($s0)
/* 5B8F4 8005ACF4 46241081 */  sub.d      $f2, $f2, $f4
/* 5B8F8 8005ACF8 3C01802B */  lui        $at, %hi(D_802AEA88)
/* 5B8FC 8005ACFC D420EA88 */  ldc1       $f0, %lo(D_802AEA88)($at)
/* 5B900 8005AD00 46201081 */  sub.d      $f2, $f2, $f0
/* 5B904 8005AD04 02A02021 */  addu       $a0, $s5, $zero
/* 5B908 8005AD08 26250040 */  addiu      $a1, $s1, 0x40
/* 5B90C 8005AD0C F6420010 */  sdc1       $f2, 0x10($s2)
/* 5B910 8005AD10 0C022C84 */  jal        func_8008B210
/* 5B914 8005AD14 02803021 */   addu      $a2, $s4, $zero
/* 5B918 8005AD18 D6A00000 */  ldc1       $f0, 0x0($s5)
/* 5B91C 8005AD1C 4620C002 */  mul.d      $f0, $f24, $f0
/* 5B920 8005AD20 D6220020 */  ldc1       $f2, 0x20($s1)
/* 5B924 8005AD24 3C01802B */  lui        $at, %hi(D_802AEA68)
/* 5B928 8005AD28 D424EA68 */  ldc1       $f4, %lo(D_802AEA68)($at)
/* 5B92C 8005AD2C 46201081 */  sub.d      $f2, $f2, $f0
/* 5B930 8005AD30 D6800000 */  ldc1       $f0, 0x0($s4)
/* 5B934 8005AD34 4624C102 */  mul.d      $f4, $f24, $f4
/* 5B938 8005AD38 46201080 */  add.d      $f2, $f2, $f0
/* 5B93C 8005AD3C F6620000 */  sdc1       $f2, 0x0($s3)
/* 5B940 8005AD40 D6200028 */  ldc1       $f0, 0x28($s1)
/* 5B944 8005AD44 46240001 */  sub.d      $f0, $f0, $f4
/* 5B948 8005AD48 3C01802B */  lui        $at, %hi(D_802AEA70)
/* 5B94C 8005AD4C D424EA70 */  ldc1       $f4, %lo(D_802AEA70)($at)
/* 5B950 8005AD50 3C01802B */  lui        $at, %hi(D_802AEA80)
/* 5B954 8005AD54 D422EA80 */  ldc1       $f2, %lo(D_802AEA80)($at)
/* 5B958 8005AD58 4624C102 */  mul.d      $f4, $f24, $f4
/* 5B95C 8005AD5C 46220000 */  add.d      $f0, $f0, $f2
/* 5B960 8005AD60 F6600008 */  sdc1       $f0, 0x8($s3)
/* 5B964 8005AD64 D6220030 */  ldc1       $f2, 0x30($s1)
/* 5B968 8005AD68 46241081 */  sub.d      $f2, $f2, $f4
/* 5B96C 8005AD6C 3C01802B */  lui        $at, %hi(D_802AEA88)
/* 5B970 8005AD70 D420EA88 */  ldc1       $f0, %lo(D_802AEA88)($at)
/* 5B974 8005AD74 46201080 */  add.d      $f2, $f2, $f0
/* 5B978 8005AD78 02602021 */  addu       $a0, $s3, $zero
/* 5B97C 8005AD7C 02402821 */  addu       $a1, $s2, $zero
/* 5B980 8005AD80 F6620010 */  sdc1       $f2, 0x10($s3)
/* 5B984 8005AD84 0C022B9C */  jal        func_8008AE70
/* 5B988 8005AD88 02803021 */   addu      $a2, $s4, $zero
/* 5B98C 8005AD8C 0C022CCC */  jal        func_8008B330
/* 5B990 8005AD90 02802021 */   addu      $a0, $s4, $zero
/* 5B994 8005AD94 D6A80000 */  ldc1       $f8, 0x0($s5)
/* 5B998 8005AD98 4628A202 */  mul.d      $f8, $f20, $f8
/* 5B99C 8005AD9C 3C01802B */  lui        $at, %hi(D_802AEA68)
/* 5B9A0 8005ADA0 D426EA68 */  ldc1       $f6, %lo(D_802AEA68)($at)
/* 5B9A4 8005ADA4 4626A182 */  mul.d      $f6, $f20, $f6
/* 5B9A8 8005ADA8 3C01802B */  lui        $at, %hi(D_802AEA70)
/* 5B9AC 8005ADAC D424EA70 */  ldc1       $f4, %lo(D_802AEA70)($at)
/* 5B9B0 8005ADB0 4624A102 */  mul.d      $f4, $f20, $f4
/* 5B9B4 8005ADB4 3C01800D */  lui        $at, %hi(D_800D4688)
/* 5B9B8 8005ADB8 D4224688 */  ldc1       $f2, %lo(D_800D4688)($at)
/* 5B9BC 8005ADBC 46200586 */  mov.d      $f22, $f0
/* 5B9C0 8005ADC0 4622B03C */  c.lt.d     $f22, $f2
/* 5B9C4 8005ADC4 F6480000 */  sdc1       $f8, 0x0($s2)
/* 5B9C8 8005ADC8 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5B9CC 8005ADCC F426EB10 */  sdc1       $f6, %lo(D_802AEB10)($at)
/* 5B9D0 8005ADD0 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5B9D4 8005ADD4 F424EB18 */  sdc1       $f4, %lo(D_802AEB18)($at)
/* 5B9D8 8005ADD8 4500000B */  bc1f       .L8005AE08
/* 5B9DC 8005ADDC 4620A505 */   abs.d     $f20, $f20
/* 5B9E0 8005ADE0 0C01E7DF */  jal        func_80079F7C
/* 5B9E4 8005ADE4 4620A306 */   mov.d     $f12, $f20
/* 5B9E8 8005ADE8 00000000 */  nop
/* 5B9EC 8005ADEC 4634B502 */  mul.d      $f20, $f22, $f20
/* 5B9F0 8005ADF0 00000000 */  nop
/* 5B9F4 8005ADF4 4620A502 */  mul.d      $f20, $f20, $f0
/* 5B9F8 8005ADF8 3C01800D */  lui        $at, %hi(D_800D4690)
/* 5B9FC 8005ADFC D4204690 */  ldc1       $f0, %lo(D_800D4690)($at)
/* 5BA00 8005AE00 08016B86 */  j          .L8005AE18
/* 5BA04 8005AE04 4620A502 */   mul.d     $f20, $f20, $f0
.L8005AE08:
/* 5BA08 8005AE08 0C01E7DF */  jal        func_80079F7C
/* 5BA0C 8005AE0C 4620A306 */   mov.d     $f12, $f20
/* 5BA10 8005AE10 00000000 */  nop
/* 5BA14 8005AE14 4620A502 */  mul.d      $f20, $f20, $f0
.L8005AE18:
/* 5BA18 8005AE18 D6860000 */  ldc1       $f6, 0x0($s4)
/* 5BA1C 8005AE1C 4626A182 */  mul.d      $f6, $f20, $f6
/* 5BA20 8005AE20 D6820008 */  ldc1       $f2, 0x8($s4)
/* 5BA24 8005AE24 4622A082 */  mul.d      $f2, $f20, $f2
/* 5BA28 8005AE28 D6800010 */  ldc1       $f0, 0x10($s4)
/* 5BA2C 8005AE2C 4620A002 */  mul.d      $f0, $f20, $f0
/* 5BA30 8005AE30 D6440000 */  ldc1       $f4, 0x0($s2)
/* 5BA34 8005AE34 46262100 */  add.d      $f4, $f4, $f6
/* 5BA38 8005AE38 F6660000 */  sdc1       $f6, 0x0($s3)
/* 5BA3C 8005AE3C F6620008 */  sdc1       $f2, 0x8($s3)
/* 5BA40 8005AE40 F6600010 */  sdc1       $f0, 0x10($s3)
/* 5BA44 8005AE44 D6000020 */  ldc1       $f0, 0x20($s0)
/* 5BA48 8005AE48 46240000 */  add.d      $f0, $f0, $f4
/* 5BA4C 8005AE4C F6000020 */  sdc1       $f0, 0x20($s0)
/* 5BA50 8005AE50 D6200010 */  ldc1       $f0, 0x10($s1)
/* 5BA54 8005AE54 44977000 */  mtc1       $s7, $f14
/* 5BA58 8005AE58 44967800 */  mtc1       $s6, $f15
/* 5BA5C 8005AE5C 46200005 */  abs.d      $f0, $f0
/* 5BA60 8005AE60 462E003C */  c.lt.d     $f0, $f14
/* 5BA64 8005AE64 00000000 */  nop
/* 5BA68 8005AE68 45000008 */  bc1f       .L8005AE8C
/* 5BA6C 8005AE6C 00000000 */   nop
/* 5BA70 8005AE70 3C01802B */  lui        $at, %hi(D_802AEA68)
/* 5BA74 8005AE74 D42CEA68 */  ldc1       $f12, %lo(D_802AEA68)($at)
/* 5BA78 8005AE78 0C01E7D8 */  jal        func_80079F60
/* 5BA7C 8005AE7C 46206305 */   abs.d     $f12, $f12
/* 5BA80 8005AE80 D6420008 */  ldc1       $f2, 0x8($s2)
/* 5BA84 8005AE84 46201082 */  mul.d      $f2, $f2, $f0
/* 5BA88 8005AE88 F6420008 */  sdc1       $f2, 0x8($s2)
.L8005AE8C:
/* 5BA8C 8005AE8C D6420008 */  ldc1       $f2, 0x8($s2)
/* 5BA90 8005AE90 D6600008 */  ldc1       $f0, 0x8($s3)
/* 5BA94 8005AE94 46201080 */  add.d      $f2, $f2, $f0
/* 5BA98 8005AE98 D6000028 */  ldc1       $f0, 0x28($s0)
/* 5BA9C 8005AE9C 46220000 */  add.d      $f0, $f0, $f2
/* 5BAA0 8005AEA0 F6000028 */  sdc1       $f0, 0x28($s0)
/* 5BAA4 8005AEA4 D6420010 */  ldc1       $f2, 0x10($s2)
/* 5BAA8 8005AEA8 D6600010 */  ldc1       $f0, 0x10($s3)
/* 5BAAC 8005AEAC 46201080 */  add.d      $f2, $f2, $f0
/* 5BAB0 8005AEB0 D6040030 */  ldc1       $f4, 0x30($s0)
/* 5BAB4 8005AEB4 46222100 */  add.d      $f4, $f4, $f2
/* 5BAB8 8005AEB8 D6000010 */  ldc1       $f0, 0x10($s0)
/* 5BABC 8005AEBC 44977000 */  mtc1       $s7, $f14
/* 5BAC0 8005AEC0 44967800 */  mtc1       $s6, $f15
/* 5BAC4 8005AEC4 46200005 */  abs.d      $f0, $f0
/* 5BAC8 8005AEC8 462E003C */  c.lt.d     $f0, $f14
/* 5BACC 8005AECC F6040030 */  sdc1       $f4, 0x30($s0)
/* 5BAD0 8005AED0 45000014 */  bc1f       .L8005AF24
/* 5BAD4 8005AED4 00000000 */   nop
/* 5BAD8 8005AED8 D6020028 */  ldc1       $f2, 0x28($s0)
/* 5BADC 8005AEDC 4622E03C */  c.lt.d     $f28, $f2
/* 5BAE0 8005AEE0 00000000 */  nop
/* 5BAE4 8005AEE4 45000006 */  bc1f       .L8005AF00
/* 5BAE8 8005AEE8 00000000 */   nop
/* 5BAEC 8005AEEC 3C01800C */  lui        $at, %hi(D_800C6A38)
/* 5BAF0 8005AEF0 D4206A38 */  ldc1       $f0, %lo(D_800C6A38)($at)
/* 5BAF4 8005AEF4 46200007 */  neg.d      $f0, $f0
/* 5BAF8 8005AEF8 46201002 */  mul.d      $f0, $f2, $f0
/* 5BAFC 8005AEFC F6000028 */  sdc1       $f0, 0x28($s0)
.L8005AF00:
/* 5BB00 8005AF00 D6000028 */  ldc1       $f0, 0x28($s0)
/* 5BB04 8005AF04 3C01800D */  lui        $at, %hi(D_800D4608)
/* 5BB08 8005AF08 D4224608 */  ldc1       $f2, %lo(D_800D4608)($at)
/* 5BB0C 8005AF0C 46200005 */  abs.d      $f0, $f0
/* 5BB10 8005AF10 4622003C */  c.lt.d     $f0, $f2
/* 5BB14 8005AF14 00000000 */  nop
/* 5BB18 8005AF18 45000002 */  bc1f       .L8005AF24
/* 5BB1C 8005AF1C 00000000 */   nop
/* 5BB20 8005AF20 F61C0028 */  sdc1       $f28, 0x28($s0)
.L8005AF24:
/* 5BB24 8005AF24 D6420000 */  ldc1       $f2, 0x0($s2)
/* 5BB28 8005AF28 D6600000 */  ldc1       $f0, 0x0($s3)
/* 5BB2C 8005AF2C 46201080 */  add.d      $f2, $f2, $f0
/* 5BB30 8005AF30 D6200020 */  ldc1       $f0, 0x20($s1)
/* 5BB34 8005AF34 46220001 */  sub.d      $f0, $f0, $f2
/* 5BB38 8005AF38 F6200020 */  sdc1       $f0, 0x20($s1)
/* 5BB3C 8005AF3C D6420008 */  ldc1       $f2, 0x8($s2)
/* 5BB40 8005AF40 D6600008 */  ldc1       $f0, 0x8($s3)
/* 5BB44 8005AF44 46201080 */  add.d      $f2, $f2, $f0
/* 5BB48 8005AF48 D6200028 */  ldc1       $f0, 0x28($s1)
/* 5BB4C 8005AF4C 46220001 */  sub.d      $f0, $f0, $f2
/* 5BB50 8005AF50 F6200028 */  sdc1       $f0, 0x28($s1)
/* 5BB54 8005AF54 D6420010 */  ldc1       $f2, 0x10($s2)
/* 5BB58 8005AF58 D6600010 */  ldc1       $f0, 0x10($s3)
/* 5BB5C 8005AF5C 46201080 */  add.d      $f2, $f2, $f0
/* 5BB60 8005AF60 D6240030 */  ldc1       $f4, 0x30($s1)
/* 5BB64 8005AF64 46222101 */  sub.d      $f4, $f4, $f2
/* 5BB68 8005AF68 D6200010 */  ldc1       $f0, 0x10($s1)
/* 5BB6C 8005AF6C 44977000 */  mtc1       $s7, $f14
/* 5BB70 8005AF70 44967800 */  mtc1       $s6, $f15
/* 5BB74 8005AF74 46200005 */  abs.d      $f0, $f0
/* 5BB78 8005AF78 462E003C */  c.lt.d     $f0, $f14
/* 5BB7C 8005AF7C F6240030 */  sdc1       $f4, 0x30($s1)
/* 5BB80 8005AF80 00000000 */  nop
/* 5BB84 8005AF84 45000015 */  bc1f       .L8005AFDC
/* 5BB88 8005AF88 02A02021 */   addu      $a0, $s5, $zero
/* 5BB8C 8005AF8C D6220028 */  ldc1       $f2, 0x28($s1)
/* 5BB90 8005AF90 4622E03C */  c.lt.d     $f28, $f2
/* 5BB94 8005AF94 00000000 */  nop
/* 5BB98 8005AF98 45000006 */  bc1f       .L8005AFB4
/* 5BB9C 8005AF9C 00000000 */   nop
/* 5BBA0 8005AFA0 3C01800C */  lui        $at, %hi(D_800C6A38)
/* 5BBA4 8005AFA4 D4206A38 */  ldc1       $f0, %lo(D_800C6A38)($at)
/* 5BBA8 8005AFA8 46200007 */  neg.d      $f0, $f0
/* 5BBAC 8005AFAC 46201002 */  mul.d      $f0, $f2, $f0
/* 5BBB0 8005AFB0 F6200028 */  sdc1       $f0, 0x28($s1)
.L8005AFB4:
/* 5BBB4 8005AFB4 D6200028 */  ldc1       $f0, 0x28($s1)
/* 5BBB8 8005AFB8 3C01800D */  lui        $at, %hi(D_800D4608)
/* 5BBBC 8005AFBC D4224608 */  ldc1       $f2, %lo(D_800D4608)($at)
/* 5BBC0 8005AFC0 46200005 */  abs.d      $f0, $f0
/* 5BBC4 8005AFC4 4622003C */  c.lt.d     $f0, $f2
/* 5BBC8 8005AFC8 00000000 */  nop
/* 5BBCC 8005AFCC 00000000 */  nop
/* 5BBD0 8005AFD0 45000002 */  bc1f       .L8005AFDC
/* 5BBD4 8005AFD4 02A02021 */   addu      $a0, $s5, $zero
/* 5BBD8 8005AFD8 F63C0028 */  sdc1       $f28, 0x28($s1)
.L8005AFDC:
/* 5BBDC 8005AFDC 3C05802B */  lui        $a1, %hi(D_802AEB20)
/* 5BBE0 8005AFE0 24A5EB20 */  addiu      $a1, $a1, %lo(D_802AEB20)
/* 5BBE4 8005AFE4 0C022C84 */  jal        func_8008B210
/* 5BBE8 8005AFE8 02403021 */   addu      $a2, $s2, $zero
/* 5BBEC 8005AFEC D6420000 */  ldc1       $f2, 0x0($s2)
/* 5BBF0 8005AFF0 463A1082 */  mul.d      $f2, $f2, $f26
/* 5BBF4 8005AFF4 D6000040 */  ldc1       $f0, 0x40($s0)
/* 5BBF8 8005AFF8 46220000 */  add.d      $f0, $f0, $f2
/* 5BBFC 8005AFFC F6000040 */  sdc1       $f0, 0x40($s0)
/* 5BC00 8005B000 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5BC04 8005B004 D422EB10 */  ldc1       $f2, %lo(D_802AEB10)($at)
/* 5BC08 8005B008 463A1082 */  mul.d      $f2, $f2, $f26
/* 5BC0C 8005B00C D6000048 */  ldc1       $f0, 0x48($s0)
/* 5BC10 8005B010 46220000 */  add.d      $f0, $f0, $f2
/* 5BC14 8005B014 F6000048 */  sdc1       $f0, 0x48($s0)
/* 5BC18 8005B018 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5BC1C 8005B01C D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5BC20 8005B020 463A1082 */  mul.d      $f2, $f2, $f26
/* 5BC24 8005B024 D6000050 */  ldc1       $f0, 0x50($s0)
/* 5BC28 8005B028 46220000 */  add.d      $f0, $f0, $f2
/* 5BC2C 8005B02C F6000050 */  sdc1       $f0, 0x50($s0)
/* 5BC30 8005B030 D6420000 */  ldc1       $f2, 0x0($s2)
/* 5BC34 8005B034 463A1082 */  mul.d      $f2, $f2, $f26
/* 5BC38 8005B038 D6200040 */  ldc1       $f0, 0x40($s1)
/* 5BC3C 8005B03C 46220000 */  add.d      $f0, $f0, $f2
/* 5BC40 8005B040 F6200040 */  sdc1       $f0, 0x40($s1)
/* 5BC44 8005B044 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5BC48 8005B048 D422EB10 */  ldc1       $f2, %lo(D_802AEB10)($at)
/* 5BC4C 8005B04C 463A1082 */  mul.d      $f2, $f2, $f26
/* 5BC50 8005B050 D6200048 */  ldc1       $f0, 0x48($s1)
/* 5BC54 8005B054 46220000 */  add.d      $f0, $f0, $f2
/* 5BC58 8005B058 F6200048 */  sdc1       $f0, 0x48($s1)
/* 5BC5C 8005B05C 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5BC60 8005B060 D420EB18 */  ldc1       $f0, %lo(D_802AEB18)($at)
/* 5BC64 8005B064 463A0002 */  mul.d      $f0, $f0, $f26
/* 5BC68 8005B068 D6220050 */  ldc1       $f2, 0x50($s1)
/* 5BC6C 8005B06C 46201080 */  add.d      $f2, $f2, $f0
/* 5BC70 8005B070 02A02021 */  addu       $a0, $s5, $zero
/* 5BC74 8005B074 F6220050 */  sdc1       $f2, 0x50($s1)
/* 5BC78 8005B078 0C022C70 */  jal        func_8008B1C0
/* 5BC7C 8005B07C 26050020 */   addiu     $a1, $s0, 0x20
/* 5BC80 8005B080 46200586 */  mov.d      $f22, $f0
/* 5BC84 8005B084 02A02021 */  addu       $a0, $s5, $zero
/* 5BC88 8005B088 0C022C70 */  jal        func_8008B1C0
/* 5BC8C 8005B08C 26250020 */   addiu     $a1, $s1, 0x20
/* 5BC90 8005B090 46200606 */  mov.d      $f24, $f0
/* 5BC94 8005B094 4636C501 */  sub.d      $f20, $f24, $f22
/* 5BC98 8005B098 3C01800D */  lui        $at, %hi(D_800D4698)
/* 5BC9C 8005B09C D4204698 */  ldc1       $f0, %lo(D_800D4698)($at)
/* 5BCA0 8005B0A0 4634003C */  c.lt.d     $f0, $f20
/* 5BCA4 8005B0A4 00000000 */  nop
/* 5BCA8 8005B0A8 00000000 */  nop
/* 5BCAC 8005B0AC 45010002 */  bc1t       .L8005B0B8
/* 5BCB0 8005B0B0 24020001 */   addiu     $v0, $zero, 0x1
/* 5BCB4 8005B0B4 00001021 */  addu       $v0, $zero, $zero
.L8005B0B8:
/* 5BCB8 8005B0B8 463EA03C */  c.lt.d     $f20, $f30
/* 5BCBC 8005B0BC 00000000 */  nop
/* 5BCC0 8005B0C0 00000000 */  nop
/* 5BCC4 8005B0C4 45010002 */  bc1t       .L8005B0D0
/* 5BCC8 8005B0C8 24030001 */   addiu     $v1, $zero, 0x1
/* 5BCCC 8005B0CC 00001821 */  addu       $v1, $zero, $zero
.L8005B0D0:
/* 5BCD0 8005B0D0 00431024 */  and        $v0, $v0, $v1
/* 5BCD4 8005B0D4 10400012 */  beqz       $v0, .L8005B120
/* 5BCD8 8005B0D8 00000000 */   nop
/* 5BCDC 8005B0DC D6A20000 */  ldc1       $f2, 0x0($s5)
/* 5BCE0 8005B0E0 463E1082 */  mul.d      $f2, $f2, $f30
/* 5BCE4 8005B0E4 D6000020 */  ldc1       $f0, 0x20($s0)
/* 5BCE8 8005B0E8 46220001 */  sub.d      $f0, $f0, $f2
/* 5BCEC 8005B0EC F6000020 */  sdc1       $f0, 0x20($s0)
/* 5BCF0 8005B0F0 3C01802B */  lui        $at, %hi(D_802AEA68)
/* 5BCF4 8005B0F4 D422EA68 */  ldc1       $f2, %lo(D_802AEA68)($at)
/* 5BCF8 8005B0F8 463E1082 */  mul.d      $f2, $f2, $f30
/* 5BCFC 8005B0FC D6000028 */  ldc1       $f0, 0x28($s0)
/* 5BD00 8005B100 46220001 */  sub.d      $f0, $f0, $f2
/* 5BD04 8005B104 F6000028 */  sdc1       $f0, 0x28($s0)
/* 5BD08 8005B108 3C01802B */  lui        $at, %hi(D_802AEA70)
/* 5BD0C 8005B10C D422EA70 */  ldc1       $f2, %lo(D_802AEA70)($at)
/* 5BD10 8005B110 463E1082 */  mul.d      $f2, $f2, $f30
/* 5BD14 8005B114 D6000030 */  ldc1       $f0, 0x30($s0)
/* 5BD18 8005B118 46220001 */  sub.d      $f0, $f0, $f2
/* 5BD1C 8005B11C F6000030 */  sdc1       $f0, 0x30($s0)
.L8005B120:
/* 5BD20 8005B120 463CA03C */  c.lt.d     $f20, $f28
/* 5BD24 8005B124 00000000 */  nop
/* 5BD28 8005B128 00000000 */  nop
/* 5BD2C 8005B12C 4501FEDA */  bc1t       .L8005AC98
/* 5BD30 8005B130 02A02021 */   addu      $a0, $s5, $zero
.L8005B134:
/* 5BD34 8005B134 0C022CCC */  jal        func_8008B330
/* 5BD38 8005B138 26040020 */   addiu     $a0, $s0, 0x20
/* 5BD3C 8005B13C F6000038 */  sdc1       $f0, 0x38($s0)
/* 5BD40 8005B140 0C022CCC */  jal        func_8008B330
/* 5BD44 8005B144 26040040 */   addiu     $a0, $s0, 0x40
/* 5BD48 8005B148 F6000058 */  sdc1       $f0, 0x58($s0)
/* 5BD4C 8005B14C 0C022CCC */  jal        func_8008B330
/* 5BD50 8005B150 26240020 */   addiu     $a0, $s1, 0x20
/* 5BD54 8005B154 F6200038 */  sdc1       $f0, 0x38($s1)
/* 5BD58 8005B158 0C022CCC */  jal        func_8008B330
/* 5BD5C 8005B15C 26240040 */   addiu     $a0, $s1, 0x40
/* 5BD60 8005B160 F6200058 */  sdc1       $f0, 0x58($s1)
/* 5BD64 8005B164 0C0169C7 */  jal        func_8005A71C
/* 5BD68 8005B168 02002021 */   addu      $a0, $s0, $zero
/* 5BD6C 8005B16C 0C0169C7 */  jal        func_8005A71C
/* 5BD70 8005B170 02202021 */   addu      $a0, $s1, $zero
/* 5BD74 8005B174 8FBF0030 */  lw         $ra, 0x30($sp)
/* 5BD78 8005B178 8FB7002C */  lw         $s7, 0x2C($sp)
/* 5BD7C 8005B17C 8FB60028 */  lw         $s6, 0x28($sp)
/* 5BD80 8005B180 8FB50024 */  lw         $s5, 0x24($sp)
/* 5BD84 8005B184 8FB40020 */  lw         $s4, 0x20($sp)
/* 5BD88 8005B188 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5BD8C 8005B18C 8FB20018 */  lw         $s2, 0x18($sp)
/* 5BD90 8005B190 8FB10014 */  lw         $s1, 0x14($sp)
/* 5BD94 8005B194 8FB00010 */  lw         $s0, 0x10($sp)
/* 5BD98 8005B198 D7BE0060 */  ldc1       $f30, 0x60($sp)
/* 5BD9C 8005B19C D7BC0058 */  ldc1       $f28, 0x58($sp)
/* 5BDA0 8005B1A0 D7BA0050 */  ldc1       $f26, 0x50($sp)
/* 5BDA4 8005B1A4 D7B80048 */  ldc1       $f24, 0x48($sp)
/* 5BDA8 8005B1A8 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 5BDAC 8005B1AC D7B40038 */  ldc1       $f20, 0x38($sp)
/* 5BDB0 8005B1B0 03E00008 */  jr         $ra
/* 5BDB4 8005B1B4 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8005B1B8
/* 5BDB8 8005B1B8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5BDBC 8005B1BC AFB40020 */  sw         $s4, 0x20($sp)
/* 5BDC0 8005B1C0 0080A021 */  addu       $s4, $a0, $zero
/* 5BDC4 8005B1C4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 5BDC8 8005B1C8 AFB60028 */  sw         $s6, 0x28($sp)
/* 5BDCC 8005B1CC AFB50024 */  sw         $s5, 0x24($sp)
/* 5BDD0 8005B1D0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5BDD4 8005B1D4 AFB20018 */  sw         $s2, 0x18($sp)
/* 5BDD8 8005B1D8 AFB10014 */  sw         $s1, 0x14($sp)
/* 5BDDC 8005B1DC AFB00010 */  sw         $s0, 0x10($sp)
/* 5BDE0 8005B1E0 F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 5BDE4 8005B1E4 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 5BDE8 8005B1E8 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 5BDEC 8005B1EC F7B40030 */  sdc1       $f20, 0x30($sp)
/* 5BDF0 8005B1F0 D68C0020 */  ldc1       $f12, 0x20($s4)
/* 5BDF4 8005B1F4 D6800038 */  ldc1       $f0, 0x38($s4)
/* 5BDF8 8005B1F8 46206302 */  mul.d      $f12, $f12, $f0
/* 5BDFC 8005B1FC D68A0028 */  ldc1       $f10, 0x28($s4)
/* 5BE00 8005B200 D6800038 */  ldc1       $f0, 0x38($s4)
/* 5BE04 8005B204 46205282 */  mul.d      $f10, $f10, $f0
/* 5BE08 8005B208 D6880030 */  ldc1       $f8, 0x30($s4)
/* 5BE0C 8005B20C D6800038 */  ldc1       $f0, 0x38($s4)
/* 5BE10 8005B210 46204202 */  mul.d      $f8, $f8, $f0
/* 5BE14 8005B214 D6860040 */  ldc1       $f6, 0x40($s4)
/* 5BE18 8005B218 D6800058 */  ldc1       $f0, 0x58($s4)
/* 5BE1C 8005B21C 46203182 */  mul.d      $f6, $f6, $f0
/* 5BE20 8005B220 D6840048 */  ldc1       $f4, 0x48($s4)
/* 5BE24 8005B224 D6800058 */  ldc1       $f0, 0x58($s4)
/* 5BE28 8005B228 00A08021 */  addu       $s0, $a1, $zero
/* 5BE2C 8005B22C D6820050 */  ldc1       $f2, 0x50($s4)
/* 5BE30 8005B230 46202102 */  mul.d      $f4, $f4, $f0
/* 5BE34 8005B234 26950020 */  addiu      $s5, $s4, 0x20
/* 5BE38 8005B238 D6140000 */  ldc1       $f20, 0x0($s0)
/* 5BE3C 8005B23C D6800058 */  ldc1       $f0, 0x58($s4)
/* 5BE40 8005B240 D6160008 */  ldc1       $f22, 0x8($s0)
/* 5BE44 8005B244 D6180010 */  ldc1       $f24, 0x10($s0)
/* 5BE48 8005B248 46201082 */  mul.d      $f2, $f2, $f0
/* 5BE4C 8005B24C 3C16802B */  lui        $s6, %hi(D_802AEAD8)
/* 5BE50 8005B250 26D6EAD8 */  addiu      $s6, $s6, %lo(D_802AEAD8)
/* 5BE54 8005B254 F68C0020 */  sdc1       $f12, 0x20($s4)
/* 5BE58 8005B258 F68A0028 */  sdc1       $f10, 0x28($s4)
/* 5BE5C 8005B25C 4620A007 */  neg.d      $f0, $f20
/* 5BE60 8005B260 F6880030 */  sdc1       $f8, 0x30($s4)
/* 5BE64 8005B264 F6860040 */  sdc1       $f6, 0x40($s4)
/* 5BE68 8005B268 F6840048 */  sdc1       $f4, 0x48($s4)
/* 5BE6C 8005B26C F6820050 */  sdc1       $f2, 0x50($s4)
/* 5BE70 8005B270 4620B087 */  neg.d      $f2, $f22
/* 5BE74 8005B274 F6C00000 */  sdc1       $f0, 0x0($s6)
/* 5BE78 8005B278 4620C007 */  neg.d      $f0, $f24
/* 5BE7C 8005B27C 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5BE80 8005B280 F422EAE0 */  sdc1       $f2, %lo(D_802AEAE0)($at)
/* 5BE84 8005B284 F6C00010 */  sdc1       $f0, 0x10($s6)
/* 5BE88 8005B288 0C022C70 */  jal        func_8008B1C0
/* 5BE8C 8005B28C 02A02021 */   addu      $a0, $s5, $zero
/* 5BE90 8005B290 46200686 */  mov.d      $f26, $f0
/* 5BE94 8005B294 26920040 */  addiu      $s2, $s4, 0x40
/* 5BE98 8005B298 02402021 */  addu       $a0, $s2, $zero
/* 5BE9C 8005B29C 02002821 */  addu       $a1, $s0, $zero
/* 5BEA0 8005B2A0 3C11802B */  lui        $s1, %hi(D_802AEB08)
/* 5BEA4 8005B2A4 2631EB08 */  addiu      $s1, $s1, %lo(D_802AEB08)
/* 5BEA8 8005B2A8 4620D005 */  abs.d      $f0, $f26
/* 5BEAC 8005B2AC 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5BEB0 8005B2B0 F420EB38 */  sdc1       $f0, %lo(D_802AEB38)($at)
/* 5BEB4 8005B2B4 0C022C84 */  jal        func_8008B210
/* 5BEB8 8005B2B8 02203021 */   addu      $a2, $s1, $zero
/* 5BEBC 8005B2BC 00000000 */  nop
/* 5BEC0 8005B2C0 4634D502 */  mul.d      $f20, $f26, $f20
/* 5BEC4 8005B2C4 D6800020 */  ldc1       $f0, 0x20($s4)
/* 5BEC8 8005B2C8 46340001 */  sub.d      $f0, $f0, $f20
/* 5BECC 8005B2CC D6220000 */  ldc1       $f2, 0x0($s1)
/* 5BED0 8005B2D0 4636D582 */  mul.d      $f22, $f26, $f22
/* 5BED4 8005B2D4 46220001 */  sub.d      $f0, $f0, $f2
/* 5BED8 8005B2D8 3C13802B */  lui        $s3, %hi(D_802AEAC0)
/* 5BEDC 8005B2DC 2673EAC0 */  addiu      $s3, $s3, %lo(D_802AEAC0)
/* 5BEE0 8005B2E0 F6600000 */  sdc1       $f0, 0x0($s3)
/* 5BEE4 8005B2E4 D6800028 */  ldc1       $f0, 0x28($s4)
/* 5BEE8 8005B2E8 46360001 */  sub.d      $f0, $f0, $f22
/* 5BEEC 8005B2EC D6220008 */  ldc1       $f2, 0x8($s1)
/* 5BEF0 8005B2F0 4638D602 */  mul.d      $f24, $f26, $f24
/* 5BEF4 8005B2F4 46220001 */  sub.d      $f0, $f0, $f2
/* 5BEF8 8005B2F8 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5BEFC 8005B2FC F420EAC8 */  sdc1       $f0, %lo(D_802AEAC8)($at)
/* 5BF00 8005B300 D6800030 */  ldc1       $f0, 0x30($s4)
/* 5BF04 8005B304 46380001 */  sub.d      $f0, $f0, $f24
/* 5BF08 8005B308 D6220010 */  ldc1       $f2, 0x10($s1)
/* 5BF0C 8005B30C 46220001 */  sub.d      $f0, $f0, $f2
/* 5BF10 8005B310 3C01800D */  lui        $at, %hi(D_800D46A0)
/* 5BF14 8005B314 D43446A0 */  ldc1       $f20, %lo(D_800D46A0)($at)
/* 5BF18 8005B318 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5BF1C 8005B31C F420EAD0 */  sdc1       $f0, %lo(D_802AEAD0)($at)
/* 5BF20 8005B320 0C022CCC */  jal        func_8008B330
/* 5BF24 8005B324 02602021 */   addu      $a0, $s3, $zero
/* 5BF28 8005B328 46200686 */  mov.d      $f26, $f0
/* 5BF2C 8005B32C 4634D03C */  c.lt.d     $f26, $f20
/* 5BF30 8005B330 00000000 */  nop
/* 5BF34 8005B334 00000000 */  nop
/* 5BF38 8005B338 4502001E */  bc1fl      .L8005B3B4
/* 5BF3C 8005B33C 02602021 */   addu      $a0, $s3, $zero
/* 5BF40 8005B340 3C01800C */  lui        $at, %hi(D_800C6A38)
/* 5BF44 8005B344 D4206A38 */  ldc1       $f0, %lo(D_800C6A38)($at)
/* 5BF48 8005B348 D6820028 */  ldc1       $f2, 0x28($s4)
/* 5BF4C 8005B34C 46200007 */  neg.d      $f0, $f0
/* 5BF50 8005B350 46201082 */  mul.d      $f2, $f2, $f0
/* 5BF54 8005B354 3C01800D */  lui        $at, %hi(D_800D46A8)
/* 5BF58 8005B358 D42446A8 */  ldc1       $f4, %lo(D_800D46A8)($at)
/* 5BF5C 8005B35C 46201005 */  abs.d      $f0, $f2
/* 5BF60 8005B360 4624003C */  c.lt.d     $f0, $f4
/* 5BF64 8005B364 F6820028 */  sdc1       $f2, 0x28($s4)
/* 5BF68 8005B368 00000000 */  nop
/* 5BF6C 8005B36C 45000007 */  bc1f       .L8005B38C
/* 5BF70 8005B370 24020010 */   addiu     $v0, $zero, 0x10
/* 5BF74 8005B374 44800000 */  mtc1       $zero, $f0
/* 5BF78 8005B378 44800800 */  mtc1       $zero, $f1
/* 5BF7C 8005B37C A2820000 */  sb         $v0, 0x0($s4)
/* 5BF80 8005B380 F6800058 */  sdc1       $f0, 0x58($s4)
/* 5BF84 8005B384 08016DC1 */  j          .L8005B704
/* 5BF88 8005B388 F6800038 */   sdc1      $f0, 0x38($s4)
.L8005B38C:
/* 5BF8C 8005B38C 0C022CCC */  jal        func_8008B330
/* 5BF90 8005B390 02A02021 */   addu      $a0, $s5, $zero
/* 5BF94 8005B394 F6800038 */  sdc1       $f0, 0x38($s4)
/* 5BF98 8005B398 0C022CCC */  jal        func_8008B330
/* 5BF9C 8005B39C 02402021 */   addu      $a0, $s2, $zero
/* 5BFA0 8005B3A0 02802021 */  addu       $a0, $s4, $zero
/* 5BFA4 8005B3A4 0C0169C7 */  jal        func_8005A71C
/* 5BFA8 8005B3A8 F4800058 */   sdc1      $f0, 0x58($a0)
/* 5BFAC 8005B3AC 08016DC1 */  j          .L8005B704
/* 5BFB0 8005B3B0 00000000 */   nop
.L8005B3B4:
/* 5BFB4 8005B3B4 02C02821 */  addu       $a1, $s6, $zero
/* 5BFB8 8005B3B8 3C10802B */  lui        $s0, %hi(D_802AEAF0)
/* 5BFBC 8005B3BC 2610EAF0 */  addiu      $s0, $s0, %lo(D_802AEAF0)
/* 5BFC0 8005B3C0 0C022C84 */  jal        func_8008B210
/* 5BFC4 8005B3C4 02003021 */   addu      $a2, $s0, $zero
/* 5BFC8 8005B3C8 02602021 */  addu       $a0, $s3, $zero
/* 5BFCC 8005B3CC 0C022C70 */  jal        func_8008B1C0
/* 5BFD0 8005B3D0 02A02821 */   addu      $a1, $s5, $zero
/* 5BFD4 8005B3D4 02C02021 */  addu       $a0, $s6, $zero
/* 5BFD8 8005B3D8 F6200000 */  sdc1       $f0, 0x0($s1)
/* 5BFDC 8005B3DC 0C022C70 */  jal        func_8008B1C0
/* 5BFE0 8005B3E0 02A02821 */   addu      $a1, $s5, $zero
/* 5BFE4 8005B3E4 02002021 */  addu       $a0, $s0, $zero
/* 5BFE8 8005B3E8 F6200008 */  sdc1       $f0, 0x8($s1)
/* 5BFEC 8005B3EC 0C022C70 */  jal        func_8008B1C0
/* 5BFF0 8005B3F0 02A02821 */   addu      $a1, $s5, $zero
/* 5BFF4 8005B3F4 02602021 */  addu       $a0, $s3, $zero
/* 5BFF8 8005B3F8 F6200010 */  sdc1       $f0, 0x10($s1)
/* 5BFFC 8005B3FC 0C022C70 */  jal        func_8008B1C0
/* 5C000 8005B400 02402821 */   addu      $a1, $s2, $zero
/* 5C004 8005B404 02C02021 */  addu       $a0, $s6, $zero
/* 5C008 8005B408 3C01802B */  lui        $at, %hi(D_802AEB20)
/* 5C00C 8005B40C F420EB20 */  sdc1       $f0, %lo(D_802AEB20)($at)
/* 5C010 8005B410 0C022C70 */  jal        func_8008B1C0
/* 5C014 8005B414 02402821 */   addu      $a1, $s2, $zero
/* 5C018 8005B418 02002021 */  addu       $a0, $s0, $zero
/* 5C01C 8005B41C 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5C020 8005B420 F420EB28 */  sdc1       $f0, %lo(D_802AEB28)($at)
/* 5C024 8005B424 0C022C70 */  jal        func_8008B1C0
/* 5C028 8005B428 02402821 */   addu      $a1, $s2, $zero
/* 5C02C 8005B42C 3C01800D */  lui        $at, %hi(D_800D46B0)
/* 5C030 8005B430 D42246B0 */  ldc1       $f2, %lo(D_800D46B0)($at)
/* 5C034 8005B434 3C01800C */  lui        $at, %hi(D_800C6A40)
/* 5C038 8005B438 D4266A40 */  ldc1       $f6, %lo(D_800C6A40)($at)
/* 5C03C 8005B43C 4622D682 */  mul.d      $f26, $f26, $f2
/* 5C040 8005B440 3C01800D */  lui        $at, %hi(D_800D46B8)
/* 5C044 8005B444 D42246B8 */  ldc1       $f2, %lo(D_800D46B8)($at)
/* 5C048 8005B448 46223080 */  add.d      $f2, $f6, $f2
/* 5C04C 8005B44C 3C01800C */  lui        $at, %hi(D_800C6A48)
/* 5C050 8005B450 D4246A48 */  ldc1       $f4, %lo(D_800C6A48)($at)
/* 5C054 8005B454 46222102 */  mul.d      $f4, $f4, $f2
/* 5C058 8005B458 D6220008 */  ldc1       $f2, 0x8($s1)
/* 5C05C 8005B45C 46222102 */  mul.d      $f4, $f4, $f2
/* 5C060 8005B460 4624D03C */  c.lt.d     $f26, $f4
/* 5C064 8005B464 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5C068 8005B468 F420EB30 */  sdc1       $f0, %lo(D_802AEB30)($at)
/* 5C06C 8005B46C 45030001 */  bc1tl      .L8005B474
/* 5C070 8005B470 4620D106 */   mov.d     $f4, $f26
.L8005B474:
/* 5C074 8005B474 00000000 */  nop
/* 5C078 8005B478 46261082 */  mul.d      $f2, $f2, $f6
/* 5C07C 8005B47C D6200000 */  ldc1       $f0, 0x0($s1)
/* 5C080 8005B480 46240181 */  sub.d      $f6, $f0, $f4
/* 5C084 8005B484 3C01800D */  lui        $at, %hi(D_800D46C0)
/* 5C088 8005B488 D42046C0 */  ldc1       $f0, %lo(D_800D46C0)($at)
/* 5C08C 8005B48C 4622003C */  c.lt.d     $f0, $f2
/* 5C090 8005B490 F6260000 */  sdc1       $f6, 0x0($s1)
/* 5C094 8005B494 F6220008 */  sdc1       $f2, 0x8($s1)
/* 5C098 8005B498 45000005 */  bc1f       .L8005B4B0
/* 5C09C 8005B49C 24020020 */   addiu     $v0, $zero, 0x20
/* 5C0A0 8005B4A0 46201007 */  neg.d      $f0, $f2
/* 5C0A4 8005B4A4 F6200008 */  sdc1       $f0, 0x8($s1)
/* 5C0A8 8005B4A8 08016D4B */  j          .L8005B52C
/* 5C0AC 8005B4AC A2820000 */   sb        $v0, 0x0($s4)
.L8005B4B0:
/* 5C0B0 8005B4B0 D6C20000 */  ldc1       $f2, 0x0($s6)
/* 5C0B4 8005B4B4 46221082 */  mul.d      $f2, $f2, $f2
/* 5C0B8 8005B4B8 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5C0BC 8005B4BC D420EAE8 */  ldc1       $f0, %lo(D_802AEAE8)($at)
/* 5C0C0 8005B4C0 46200002 */  mul.d      $f0, $f0, $f0
/* 5C0C4 8005B4C4 46201080 */  add.d      $f2, $f2, $f0
/* 5C0C8 8005B4C8 4634103C */  c.lt.d     $f2, $f20
/* 5C0CC 8005B4CC 00000000 */  nop
/* 5C0D0 8005B4D0 45000010 */  bc1f       .L8005B514
/* 5C0D4 8005B4D4 00000000 */   nop
/* 5C0D8 8005B4D8 46263002 */  mul.d      $f0, $f6, $f6
/* 5C0DC 8005B4DC D6220010 */  ldc1       $f2, 0x10($s1)
/* 5C0E0 8005B4E0 46221082 */  mul.d      $f2, $f2, $f2
/* 5C0E4 8005B4E4 46220000 */  add.d      $f0, $f0, $f2
/* 5C0E8 8005B4E8 3C01800D */  lui        $at, %hi(D_800D46C8)
/* 5C0EC 8005B4EC D42246C8 */  ldc1       $f2, %lo(D_800D46C8)($at)
/* 5C0F0 8005B4F0 4622003C */  c.lt.d     $f0, $f2
/* 5C0F4 8005B4F4 00000000 */  nop
/* 5C0F8 8005B4F8 00000000 */  nop
/* 5C0FC 8005B4FC 45000005 */  bc1f       .L8005B514
/* 5C100 8005B500 24020010 */   addiu     $v0, $zero, 0x10
/* 5C104 8005B504 AE200008 */  sw         $zero, 0x8($s1)
/* 5C108 8005B508 AE20000C */  sw         $zero, 0xC($s1)
/* 5C10C 8005B50C 08016D4B */  j          .L8005B52C
/* 5C110 8005B510 A2820000 */   sb        $v0, 0x0($s4)
.L8005B514:
/* 5C114 8005B514 3C01800D */  lui        $at, %hi(D_800D46D0)
/* 5C118 8005B518 D42046D0 */  ldc1       $f0, %lo(D_800D46D0)($at)
/* 5C11C 8005B51C 24020020 */  addiu      $v0, $zero, 0x20
/* 5C120 8005B520 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5C124 8005B524 F420EB10 */  sdc1       $f0, %lo(D_802AEB10)($at)
/* 5C128 8005B528 A2820000 */  sb         $v0, 0x0($s4)
.L8005B52C:
/* 5C12C 8005B52C 3C02802B */  lui        $v0, %hi(D_802AEB08)
/* 5C130 8005B530 2442EB08 */  addiu      $v0, $v0, %lo(D_802AEB08)
/* 5C134 8005B534 3C13802B */  lui        $s3, %hi(D_802AEAC0)
/* 5C138 8005B538 2673EAC0 */  addiu      $s3, $s3, %lo(D_802AEAC0)
/* 5C13C 8005B53C D4420000 */  ldc1       $f2, 0x0($v0)
/* 5C140 8005B540 D6600000 */  ldc1       $f0, 0x0($s3)
/* 5C144 8005B544 46201082 */  mul.d      $f2, $f2, $f0
/* 5C148 8005B548 3C01800D */  lui        $at, %hi(D_800D46D8)
/* 5C14C 8005B54C D42846D8 */  ldc1       $f8, %lo(D_800D46D8)($at)
/* 5C150 8005B550 46282202 */  mul.d      $f8, $f4, $f8
/* 5C154 8005B554 3C12802B */  lui        $s2, %hi(D_802AEAD8)
/* 5C158 8005B558 2652EAD8 */  addiu      $s2, $s2, %lo(D_802AEAD8)
/* 5C15C 8005B55C 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5C160 8005B560 D426EB10 */  ldc1       $f6, %lo(D_802AEB10)($at)
/* 5C164 8005B564 D6400000 */  ldc1       $f0, 0x0($s2)
/* 5C168 8005B568 46203182 */  mul.d      $f6, $f6, $f0
/* 5C16C 8005B56C 3C11802B */  lui        $s1, %hi(D_802AEAF0)
/* 5C170 8005B570 2631EAF0 */  addiu      $s1, $s1, %lo(D_802AEAF0)
/* 5C174 8005B574 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5C178 8005B578 D424EB18 */  ldc1       $f4, %lo(D_802AEB18)($at)
/* 5C17C 8005B57C D6200000 */  ldc1       $f0, 0x0($s1)
/* 5C180 8005B580 3C10802B */  lui        $s0, %hi(D_802AEB30)
/* 5C184 8005B584 2610EB30 */  addiu      $s0, $s0, %lo(D_802AEB30)
/* 5C188 8005B588 46202102 */  mul.d      $f4, $f4, $f0
/* 5C18C 8005B58C D6000000 */  ldc1       $f0, 0x0($s0)
/* 5C190 8005B590 46280000 */  add.d      $f0, $f0, $f8
/* 5C194 8005B594 46261080 */  add.d      $f2, $f2, $f6
/* 5C198 8005B598 46241080 */  add.d      $f2, $f2, $f4
/* 5C19C 8005B59C F6000000 */  sdc1       $f0, 0x0($s0)
/* 5C1A0 8005B5A0 F6820020 */  sdc1       $f2, 0x20($s4)
/* 5C1A4 8005B5A4 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5C1A8 8005B5A8 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5C1AC 8005B5AC D422EAC8 */  ldc1       $f2, %lo(D_802AEAC8)($at)
/* 5C1B0 8005B5B0 46220002 */  mul.d      $f0, $f0, $f2
/* 5C1B4 8005B5B4 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5C1B8 8005B5B8 D426EB10 */  ldc1       $f6, %lo(D_802AEB10)($at)
/* 5C1BC 8005B5BC 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5C1C0 8005B5C0 D422EAE0 */  ldc1       $f2, %lo(D_802AEAE0)($at)
/* 5C1C4 8005B5C4 46223182 */  mul.d      $f6, $f6, $f2
/* 5C1C8 8005B5C8 3C01802B */  lui        $at, %hi(D_802AEAF8)
/* 5C1CC 8005B5CC D424EAF8 */  ldc1       $f4, %lo(D_802AEAF8)($at)
/* 5C1D0 8005B5D0 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5C1D4 8005B5D4 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5C1D8 8005B5D8 46241082 */  mul.d      $f2, $f2, $f4
/* 5C1DC 8005B5DC 46260000 */  add.d      $f0, $f0, $f6
/* 5C1E0 8005B5E0 46220000 */  add.d      $f0, $f0, $f2
/* 5C1E4 8005B5E4 F6800028 */  sdc1       $f0, 0x28($s4)
/* 5C1E8 8005B5E8 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5C1EC 8005B5EC 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5C1F0 8005B5F0 D422EAD0 */  ldc1       $f2, %lo(D_802AEAD0)($at)
/* 5C1F4 8005B5F4 46220002 */  mul.d      $f0, $f0, $f2
/* 5C1F8 8005B5F8 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5C1FC 8005B5FC D426EB10 */  ldc1       $f6, %lo(D_802AEB10)($at)
/* 5C200 8005B600 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5C204 8005B604 D422EAE8 */  ldc1       $f2, %lo(D_802AEAE8)($at)
/* 5C208 8005B608 46223182 */  mul.d      $f6, $f6, $f2
/* 5C20C 8005B60C 3C01802B */  lui        $at, %hi(D_802AEB00)
/* 5C210 8005B610 D424EB00 */  ldc1       $f4, %lo(D_802AEB00)($at)
/* 5C214 8005B614 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5C218 8005B618 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5C21C 8005B61C 46241082 */  mul.d      $f2, $f2, $f4
/* 5C220 8005B620 46260000 */  add.d      $f0, $f0, $f6
/* 5C224 8005B624 46220000 */  add.d      $f0, $f0, $f2
/* 5C228 8005B628 F6800030 */  sdc1       $f0, 0x30($s4)
/* 5C22C 8005B62C 0C022CCC */  jal        func_8008B330
/* 5C230 8005B630 26840020 */   addiu     $a0, $s4, 0x20
/* 5C234 8005B634 F6800038 */  sdc1       $f0, 0x38($s4)
/* 5C238 8005B638 3C01802B */  lui        $at, %hi(D_802AEB20)
/* 5C23C 8005B63C D420EB20 */  ldc1       $f0, %lo(D_802AEB20)($at)
/* 5C240 8005B640 D6620000 */  ldc1       $f2, 0x0($s3)
/* 5C244 8005B644 46220002 */  mul.d      $f0, $f0, $f2
/* 5C248 8005B648 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5C24C 8005B64C D426EB28 */  ldc1       $f6, %lo(D_802AEB28)($at)
/* 5C250 8005B650 D6420000 */  ldc1       $f2, 0x0($s2)
/* 5C254 8005B654 46223182 */  mul.d      $f6, $f6, $f2
/* 5C258 8005B658 D6240000 */  ldc1       $f4, 0x0($s1)
/* 5C25C 8005B65C D6020000 */  ldc1       $f2, 0x0($s0)
/* 5C260 8005B660 46241082 */  mul.d      $f2, $f2, $f4
/* 5C264 8005B664 46260000 */  add.d      $f0, $f0, $f6
/* 5C268 8005B668 46220000 */  add.d      $f0, $f0, $f2
/* 5C26C 8005B66C F6800040 */  sdc1       $f0, 0x40($s4)
/* 5C270 8005B670 3C01802B */  lui        $at, %hi(D_802AEB20)
/* 5C274 8005B674 D420EB20 */  ldc1       $f0, %lo(D_802AEB20)($at)
/* 5C278 8005B678 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5C27C 8005B67C D422EAC8 */  ldc1       $f2, %lo(D_802AEAC8)($at)
/* 5C280 8005B680 46220002 */  mul.d      $f0, $f0, $f2
/* 5C284 8005B684 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5C288 8005B688 D426EB28 */  ldc1       $f6, %lo(D_802AEB28)($at)
/* 5C28C 8005B68C 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5C290 8005B690 D422EAE0 */  ldc1       $f2, %lo(D_802AEAE0)($at)
/* 5C294 8005B694 46223182 */  mul.d      $f6, $f6, $f2
/* 5C298 8005B698 3C01802B */  lui        $at, %hi(D_802AEAF8)
/* 5C29C 8005B69C D424EAF8 */  ldc1       $f4, %lo(D_802AEAF8)($at)
/* 5C2A0 8005B6A0 D6020000 */  ldc1       $f2, 0x0($s0)
/* 5C2A4 8005B6A4 46241082 */  mul.d      $f2, $f2, $f4
/* 5C2A8 8005B6A8 46260000 */  add.d      $f0, $f0, $f6
/* 5C2AC 8005B6AC 46220000 */  add.d      $f0, $f0, $f2
/* 5C2B0 8005B6B0 F6800048 */  sdc1       $f0, 0x48($s4)
/* 5C2B4 8005B6B4 3C01802B */  lui        $at, %hi(D_802AEB20)
/* 5C2B8 8005B6B8 D420EB20 */  ldc1       $f0, %lo(D_802AEB20)($at)
/* 5C2BC 8005B6BC 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5C2C0 8005B6C0 D422EAD0 */  ldc1       $f2, %lo(D_802AEAD0)($at)
/* 5C2C4 8005B6C4 46220002 */  mul.d      $f0, $f0, $f2
/* 5C2C8 8005B6C8 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5C2CC 8005B6CC D426EB28 */  ldc1       $f6, %lo(D_802AEB28)($at)
/* 5C2D0 8005B6D0 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5C2D4 8005B6D4 D422EAE8 */  ldc1       $f2, %lo(D_802AEAE8)($at)
/* 5C2D8 8005B6D8 46223182 */  mul.d      $f6, $f6, $f2
/* 5C2DC 8005B6DC 3C01802B */  lui        $at, %hi(D_802AEB00)
/* 5C2E0 8005B6E0 D424EB00 */  ldc1       $f4, %lo(D_802AEB00)($at)
/* 5C2E4 8005B6E4 D6020000 */  ldc1       $f2, 0x0($s0)
/* 5C2E8 8005B6E8 46241082 */  mul.d      $f2, $f2, $f4
/* 5C2EC 8005B6EC 46260000 */  add.d      $f0, $f0, $f6
/* 5C2F0 8005B6F0 46220000 */  add.d      $f0, $f0, $f2
/* 5C2F4 8005B6F4 F6800050 */  sdc1       $f0, 0x50($s4)
/* 5C2F8 8005B6F8 0C022CCC */  jal        func_8008B330
/* 5C2FC 8005B6FC 26840040 */   addiu     $a0, $s4, 0x40
/* 5C300 8005B700 F6800058 */  sdc1       $f0, 0x58($s4)
.L8005B704:
/* 5C304 8005B704 8FBF002C */  lw         $ra, 0x2C($sp)
/* 5C308 8005B708 8FB60028 */  lw         $s6, 0x28($sp)
/* 5C30C 8005B70C 8FB50024 */  lw         $s5, 0x24($sp)
/* 5C310 8005B710 8FB40020 */  lw         $s4, 0x20($sp)
/* 5C314 8005B714 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5C318 8005B718 8FB20018 */  lw         $s2, 0x18($sp)
/* 5C31C 8005B71C 8FB10014 */  lw         $s1, 0x14($sp)
/* 5C320 8005B720 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C324 8005B724 D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 5C328 8005B728 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 5C32C 8005B72C D7B60038 */  ldc1       $f22, 0x38($sp)
/* 5C330 8005B730 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 5C334 8005B734 03E00008 */  jr         $ra
/* 5C338 8005B738 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8005B73C
/* 5C33C 8005B73C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 5C340 8005B740 AFB40038 */  sw         $s4, 0x38($sp)
/* 5C344 8005B744 0080A021 */  addu       $s4, $a0, $zero
/* 5C348 8005B748 AFBF0040 */  sw         $ra, 0x40($sp)
/* 5C34C 8005B74C AFB5003C */  sw         $s5, 0x3C($sp)
/* 5C350 8005B750 AFB30034 */  sw         $s3, 0x34($sp)
/* 5C354 8005B754 AFB20030 */  sw         $s2, 0x30($sp)
/* 5C358 8005B758 AFB1002C */  sw         $s1, 0x2C($sp)
/* 5C35C 8005B75C AFB00028 */  sw         $s0, 0x28($sp)
/* 5C360 8005B760 D68C0020 */  ldc1       $f12, 0x20($s4)
/* 5C364 8005B764 D6800038 */  ldc1       $f0, 0x38($s4)
/* 5C368 8005B768 46206302 */  mul.d      $f12, $f12, $f0
/* 5C36C 8005B76C D68A0028 */  ldc1       $f10, 0x28($s4)
/* 5C370 8005B770 D6800038 */  ldc1       $f0, 0x38($s4)
/* 5C374 8005B774 46205282 */  mul.d      $f10, $f10, $f0
/* 5C378 8005B778 D6880030 */  ldc1       $f8, 0x30($s4)
/* 5C37C 8005B77C D6800038 */  ldc1       $f0, 0x38($s4)
/* 5C380 8005B780 46204202 */  mul.d      $f8, $f8, $f0
/* 5C384 8005B784 D6860040 */  ldc1       $f6, 0x40($s4)
/* 5C388 8005B788 D6800058 */  ldc1       $f0, 0x58($s4)
/* 5C38C 8005B78C 46203182 */  mul.d      $f6, $f6, $f0
/* 5C390 8005B790 D6840048 */  ldc1       $f4, 0x48($s4)
/* 5C394 8005B794 D6800058 */  ldc1       $f0, 0x58($s4)
/* 5C398 8005B798 46202102 */  mul.d      $f4, $f4, $f0
/* 5C39C 8005B79C 00A08021 */  addu       $s0, $a1, $zero
/* 5C3A0 8005B7A0 D6820058 */  ldc1       $f2, 0x58($s4)
/* 5C3A4 8005B7A4 D6800050 */  ldc1       $f0, 0x50($s4)
/* 5C3A8 8005B7A8 26040018 */  addiu      $a0, $s0, 0x18
/* 5C3AC 8005B7AC 46220002 */  mul.d      $f0, $f0, $f2
/* 5C3B0 8005B7B0 3C11802B */  lui        $s1, %hi(D_802AEAC0)
/* 5C3B4 8005B7B4 2631EAC0 */  addiu      $s1, $s1, %lo(D_802AEAC0)
/* 5C3B8 8005B7B8 F68C0020 */  sdc1       $f12, 0x20($s4)
/* 5C3BC 8005B7BC F68A0028 */  sdc1       $f10, 0x28($s4)
/* 5C3C0 8005B7C0 F6880030 */  sdc1       $f8, 0x30($s4)
/* 5C3C4 8005B7C4 F6860040 */  sdc1       $f6, 0x40($s4)
/* 5C3C8 8005B7C8 F6840048 */  sdc1       $f4, 0x48($s4)
/* 5C3CC 8005B7CC F6800050 */  sdc1       $f0, 0x50($s4)
/* 5C3D0 8005B7D0 0C022B9C */  jal        func_8008AE70
/* 5C3D4 8005B7D4 02203021 */   addu      $a2, $s1, $zero
/* 5C3D8 8005B7D8 0C022CCC */  jal        func_8008B330
/* 5C3DC 8005B7DC 02202021 */   addu      $a0, $s1, $zero
/* 5C3E0 8005B7E0 26840008 */  addiu      $a0, $s4, 0x8
/* 5C3E4 8005B7E4 02002821 */  addu       $a1, $s0, $zero
/* 5C3E8 8005B7E8 3C15802B */  lui        $s5, %hi(D_802AEB08)
/* 5C3EC 8005B7EC 26B5EB08 */  addiu      $s5, $s5, %lo(D_802AEB08)
/* 5C3F0 8005B7F0 0C022B9C */  jal        func_8008AE70
/* 5C3F4 8005B7F4 02A03021 */   addu      $a2, $s5, $zero
/* 5C3F8 8005B7F8 02202021 */  addu       $a0, $s1, $zero
/* 5C3FC 8005B7FC 0C022C70 */  jal        func_8008B1C0
/* 5C400 8005B800 02A02821 */   addu      $a1, $s5, $zero
/* 5C404 8005B804 D6260000 */  ldc1       $f6, 0x0($s1)
/* 5C408 8005B808 46200206 */  mov.d      $f8, $f0
/* 5C40C 8005B80C 46264182 */  mul.d      $f6, $f8, $f6
/* 5C410 8005B810 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5C414 8005B814 D424EAC8 */  ldc1       $f4, %lo(D_802AEAC8)($at)
/* 5C418 8005B818 46244102 */  mul.d      $f4, $f8, $f4
/* 5C41C 8005B81C 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5C420 8005B820 D422EAD0 */  ldc1       $f2, %lo(D_802AEAD0)($at)
/* 5C424 8005B824 D6A00000 */  ldc1       $f0, 0x0($s5)
/* 5C428 8005B828 46224082 */  mul.d      $f2, $f8, $f2
/* 5C42C 8005B82C 46203181 */  sub.d      $f6, $f6, $f0
/* 5C430 8005B830 D6A00008 */  ldc1       $f0, 0x8($s5)
/* 5C434 8005B834 46202101 */  sub.d      $f4, $f4, $f0
/* 5C438 8005B838 D6A00010 */  ldc1       $f0, 0x10($s5)
/* 5C43C 8005B83C 3C12802B */  lui        $s2, %hi(D_802AEAD8)
/* 5C440 8005B840 2652EAD8 */  addiu      $s2, $s2, %lo(D_802AEAD8)
/* 5C444 8005B844 46201081 */  sub.d      $f2, $f2, $f0
/* 5C448 8005B848 F6460000 */  sdc1       $f6, 0x0($s2)
/* 5C44C 8005B84C 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5C450 8005B850 F424EAE0 */  sdc1       $f4, %lo(D_802AEAE0)($at)
/* 5C454 8005B854 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5C458 8005B858 F422EAE8 */  sdc1       $f2, %lo(D_802AEAE8)($at)
/* 5C45C 8005B85C 0C022CCC */  jal        func_8008B330
/* 5C460 8005B860 02402021 */   addu      $a0, $s2, $zero
/* 5C464 8005B864 02202021 */  addu       $a0, $s1, $zero
/* 5C468 8005B868 02402821 */  addu       $a1, $s2, $zero
/* 5C46C 8005B86C 3C13802B */  lui        $s3, %hi(D_802AEAF0)
/* 5C470 8005B870 2673EAF0 */  addiu      $s3, $s3, %lo(D_802AEAF0)
/* 5C474 8005B874 0C022C84 */  jal        func_8008B210
/* 5C478 8005B878 02603021 */   addu      $a2, $s3, $zero
/* 5C47C 8005B87C 02202021 */  addu       $a0, $s1, $zero
/* 5C480 8005B880 26900020 */  addiu      $s0, $s4, 0x20
/* 5C484 8005B884 0C022C70 */  jal        func_8008B1C0
/* 5C488 8005B888 02002821 */   addu      $a1, $s0, $zero
/* 5C48C 8005B88C 02402021 */  addu       $a0, $s2, $zero
/* 5C490 8005B890 F6A00000 */  sdc1       $f0, 0x0($s5)
/* 5C494 8005B894 0C022C70 */  jal        func_8008B1C0
/* 5C498 8005B898 02002821 */   addu      $a1, $s0, $zero
/* 5C49C 8005B89C 02602021 */  addu       $a0, $s3, $zero
/* 5C4A0 8005B8A0 F6A00008 */  sdc1       $f0, 0x8($s5)
/* 5C4A4 8005B8A4 0C022C70 */  jal        func_8008B1C0
/* 5C4A8 8005B8A8 02002821 */   addu      $a1, $s0, $zero
/* 5C4AC 8005B8AC 02202021 */  addu       $a0, $s1, $zero
/* 5C4B0 8005B8B0 26900040 */  addiu      $s0, $s4, 0x40
/* 5C4B4 8005B8B4 F6A00010 */  sdc1       $f0, 0x10($s5)
/* 5C4B8 8005B8B8 0C022C70 */  jal        func_8008B1C0
/* 5C4BC 8005B8BC 02002821 */   addu      $a1, $s0, $zero
/* 5C4C0 8005B8C0 02402021 */  addu       $a0, $s2, $zero
/* 5C4C4 8005B8C4 3C11802B */  lui        $s1, %hi(D_802AEB20)
/* 5C4C8 8005B8C8 2631EB20 */  addiu      $s1, $s1, %lo(D_802AEB20)
/* 5C4CC 8005B8CC F6200000 */  sdc1       $f0, 0x0($s1)
/* 5C4D0 8005B8D0 0C022C70 */  jal        func_8008B1C0
/* 5C4D4 8005B8D4 02002821 */   addu      $a1, $s0, $zero
/* 5C4D8 8005B8D8 02602021 */  addu       $a0, $s3, $zero
/* 5C4DC 8005B8DC 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5C4E0 8005B8E0 F420EB28 */  sdc1       $f0, %lo(D_802AEB28)($at)
/* 5C4E4 8005B8E4 0C022C70 */  jal        func_8008B1C0
/* 5C4E8 8005B8E8 02002821 */   addu      $a1, $s0, $zero
/* 5C4EC 8005B8EC D6A60000 */  ldc1       $f6, 0x0($s5)
/* 5C4F0 8005B8F0 D6A20010 */  ldc1       $f2, 0x10($s5)
/* 5C4F4 8005B8F4 46203181 */  sub.d      $f6, $f6, $f0
/* 5C4F8 8005B8F8 D6240000 */  ldc1       $f4, 0x0($s1)
/* 5C4FC 8005B8FC 46241080 */  add.d      $f2, $f2, $f4
/* 5C500 8005B900 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5C504 8005B904 F420EB30 */  sdc1       $f0, %lo(D_802AEB30)($at)
/* 5C508 8005B908 AFA00018 */  sw         $zero, 0x18($sp)
/* 5C50C 8005B90C AFA0001C */  sw         $zero, 0x1C($sp)
/* 5C510 8005B910 F7A60010 */  sdc1       $f6, 0x10($sp)
/* 5C514 8005B914 F7A20020 */  sdc1       $f2, 0x20($sp)
/* 5C518 8005B918 0C022CCC */  jal        func_8008B330
/* 5C51C 8005B91C 27A40010 */   addiu     $a0, $sp, 0x10
/* 5C520 8005B920 3C01800C */  lui        $at, %hi(D_800C6A60)
/* 5C524 8005B924 D4266A60 */  ldc1       $f6, %lo(D_800C6A60)($at)
/* 5C528 8005B928 3C01800D */  lui        $at, %hi(D_800D46E0)
/* 5C52C 8005B92C D42246E0 */  ldc1       $f2, %lo(D_800D46E0)($at)
/* 5C530 8005B930 46261083 */  div.d      $f2, $f2, $f6
/* 5C534 8005B934 D6AC0008 */  ldc1       $f12, 0x8($s5)
/* 5C538 8005B938 3C01800C */  lui        $at, %hi(D_800C6A50)
/* 5C53C 8005B93C D4306A50 */  ldc1       $f16, %lo(D_800C6A50)($at)
/* 5C540 8005B940 462C8102 */  mul.d      $f4, $f16, $f12
/* 5C544 8005B944 00000000 */  nop
/* 5C548 8005B948 46220202 */  mul.d      $f8, $f0, $f2
/* 5C54C 8005B94C 462C2280 */  add.d      $f10, $f4, $f12
/* 5C550 8005B950 46206385 */  abs.d      $f14, $f12
/* 5C554 8005B954 462A403C */  c.lt.d     $f8, $f10
/* 5C558 8005B958 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5C55C 8005B95C F42EEB38 */  sdc1       $f14, %lo(D_802AEB38)($at)
/* 5C560 8005B960 45030001 */  bc1tl      .L8005B968
/* 5C564 8005B964 46204286 */   mov.d     $f10, $f8
.L8005B968:
/* 5C568 8005B968 00000000 */  nop
/* 5C56C 8005B96C 462A3102 */  mul.d      $f4, $f6, $f10
/* 5C570 8005B970 3C01800C */  lui        $at, %hi(D_800C6A58)
/* 5C574 8005B974 D4226A58 */  ldc1       $f2, %lo(D_800C6A58)($at)
/* 5C578 8005B978 462A1082 */  mul.d      $f2, $f2, $f10
/* 5C57C 8005B97C D7A00010 */  ldc1       $f0, 0x10($sp)
/* 5C580 8005B980 46201082 */  mul.d      $f2, $f2, $f0
/* 5C584 8005B984 D7A00020 */  ldc1       $f0, 0x20($sp)
/* 5C588 8005B988 46202102 */  mul.d      $f4, $f4, $f0
/* 5C58C 8005B98C D6A60000 */  ldc1       $f6, 0x0($s5)
/* 5C590 8005B990 46223181 */  sub.d      $f6, $f6, $f2
/* 5C594 8005B994 D6A00010 */  ldc1       $f0, 0x10($s5)
/* 5C598 8005B998 46240001 */  sub.d      $f0, $f0, $f4
/* 5C59C 8005B99C 3C01800D */  lui        $at, %hi(D_800D46E8)
/* 5C5A0 8005B9A0 D42246E8 */  ldc1       $f2, %lo(D_800D46E8)($at)
/* 5C5A4 8005B9A4 4622703C */  c.lt.d     $f14, $f2
/* 5C5A8 8005B9A8 F6A60000 */  sdc1       $f6, 0x0($s5)
/* 5C5AC 8005B9AC F6A00010 */  sdc1       $f0, 0x10($s5)
/* 5C5B0 8005B9B0 45020005 */  bc1fl      .L8005B9C8
/* 5C5B4 8005B9B4 46208007 */   neg.d     $f0, $f16
/* 5C5B8 8005B9B8 3C01800D */  lui        $at, %hi(D_800D46F0)
/* 5C5BC 8005B9BC D42046F0 */  ldc1       $f0, %lo(D_800D46F0)($at)
/* 5C5C0 8005B9C0 08016E74 */  j          .L8005B9D0
/* 5C5C4 8005B9C4 46206002 */   mul.d     $f0, $f12, $f0
.L8005B9C8:
/* 5C5C8 8005B9C8 00000000 */  nop
/* 5C5CC 8005B9CC 46206002 */  mul.d      $f0, $f12, $f0
.L8005B9D0:
/* 5C5D0 8005B9D0 F6A00008 */  sdc1       $f0, 0x8($s5)
/* 5C5D4 8005B9D4 3C01800C */  lui        $at, %hi(D_800C6A60)
/* 5C5D8 8005B9D8 D4226A60 */  ldc1       $f2, %lo(D_800C6A60)($at)
/* 5C5DC 8005B9DC 3C01800D */  lui        $at, %hi(D_800D46F8)
/* 5C5E0 8005B9E0 D42046F8 */  ldc1       $f0, %lo(D_800D46F8)($at)
/* 5C5E4 8005B9E4 46201082 */  mul.d      $f2, $f2, $f0
/* 5C5E8 8005B9E8 3C01800C */  lui        $at, %hi(D_800C6A58)
/* 5C5EC 8005B9EC D4266A58 */  ldc1       $f6, %lo(D_800C6A58)($at)
/* 5C5F0 8005B9F0 46203182 */  mul.d      $f6, $f6, $f0
/* 5C5F4 8005B9F4 00000000 */  nop
/* 5C5F8 8005B9F8 462A1082 */  mul.d      $f2, $f2, $f10
/* 5C5FC 8005B9FC 00000000 */  nop
/* 5C600 8005BA00 462A3182 */  mul.d      $f6, $f6, $f10
/* 5C604 8005BA04 D7A00020 */  ldc1       $f0, 0x20($sp)
/* 5C608 8005BA08 46201082 */  mul.d      $f2, $f2, $f0
/* 5C60C 8005BA0C 3C02802B */  lui        $v0, %hi(D_802AEB08)
/* 5C610 8005BA10 2442EB08 */  addiu      $v0, $v0, %lo(D_802AEB08)
/* 5C614 8005BA14 3C13802B */  lui        $s3, %hi(D_802AEAC0)
/* 5C618 8005BA18 2673EAC0 */  addiu      $s3, $s3, %lo(D_802AEAC0)
/* 5C61C 8005BA1C D4440000 */  ldc1       $f4, 0x0($v0)
/* 5C620 8005BA20 D6600000 */  ldc1       $f0, 0x0($s3)
/* 5C624 8005BA24 46202102 */  mul.d      $f4, $f4, $f0
/* 5C628 8005BA28 3C12802B */  lui        $s2, %hi(D_802AEAD8)
/* 5C62C 8005BA2C 2652EAD8 */  addiu      $s2, $s2, %lo(D_802AEAD8)
/* 5C630 8005BA30 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5C634 8005BA34 D428EB10 */  ldc1       $f8, %lo(D_802AEB10)($at)
/* 5C638 8005BA38 D6400000 */  ldc1       $f0, 0x0($s2)
/* 5C63C 8005BA3C 46204202 */  mul.d      $f8, $f8, $f0
/* 5C640 8005BA40 D7A00010 */  ldc1       $f0, 0x10($sp)
/* 5C644 8005BA44 3C10802B */  lui        $s0, %hi(D_802AEB20)
/* 5C648 8005BA48 2610EB20 */  addiu      $s0, $s0, %lo(D_802AEB20)
/* 5C64C 8005BA4C 46203182 */  mul.d      $f6, $f6, $f0
/* 5C650 8005BA50 D60A0000 */  ldc1       $f10, 0x0($s0)
/* 5C654 8005BA54 3C11802B */  lui        $s1, %hi(D_802AEAF0)
/* 5C658 8005BA58 2631EAF0 */  addiu      $s1, $s1, %lo(D_802AEAF0)
/* 5C65C 8005BA5C D6200000 */  ldc1       $f0, 0x0($s1)
/* 5C660 8005BA60 46225281 */  sub.d      $f10, $f10, $f2
/* 5C664 8005BA64 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5C668 8005BA68 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5C66C 8005BA6C 46201082 */  mul.d      $f2, $f2, $f0
/* 5C670 8005BA70 46282100 */  add.d      $f4, $f4, $f8
/* 5C674 8005BA74 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5C678 8005BA78 D420EB30 */  ldc1       $f0, %lo(D_802AEB30)($at)
/* 5C67C 8005BA7C 46260000 */  add.d      $f0, $f0, $f6
/* 5C680 8005BA80 46222100 */  add.d      $f4, $f4, $f2
/* 5C684 8005BA84 F60A0000 */  sdc1       $f10, 0x0($s0)
/* 5C688 8005BA88 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5C68C 8005BA8C F420EB30 */  sdc1       $f0, %lo(D_802AEB30)($at)
/* 5C690 8005BA90 F6840020 */  sdc1       $f4, 0x20($s4)
/* 5C694 8005BA94 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5C698 8005BA98 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5C69C 8005BA9C D422EAC8 */  ldc1       $f2, %lo(D_802AEAC8)($at)
/* 5C6A0 8005BAA0 46220002 */  mul.d      $f0, $f0, $f2
/* 5C6A4 8005BAA4 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5C6A8 8005BAA8 D426EB10 */  ldc1       $f6, %lo(D_802AEB10)($at)
/* 5C6AC 8005BAAC 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5C6B0 8005BAB0 D422EAE0 */  ldc1       $f2, %lo(D_802AEAE0)($at)
/* 5C6B4 8005BAB4 46223182 */  mul.d      $f6, $f6, $f2
/* 5C6B8 8005BAB8 3C01802B */  lui        $at, %hi(D_802AEAF8)
/* 5C6BC 8005BABC D424EAF8 */  ldc1       $f4, %lo(D_802AEAF8)($at)
/* 5C6C0 8005BAC0 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5C6C4 8005BAC4 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5C6C8 8005BAC8 46241082 */  mul.d      $f2, $f2, $f4
/* 5C6CC 8005BACC 46260000 */  add.d      $f0, $f0, $f6
/* 5C6D0 8005BAD0 46220000 */  add.d      $f0, $f0, $f2
/* 5C6D4 8005BAD4 F6800028 */  sdc1       $f0, 0x28($s4)
/* 5C6D8 8005BAD8 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5C6DC 8005BADC 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5C6E0 8005BAE0 D422EAD0 */  ldc1       $f2, %lo(D_802AEAD0)($at)
/* 5C6E4 8005BAE4 46220002 */  mul.d      $f0, $f0, $f2
/* 5C6E8 8005BAE8 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5C6EC 8005BAEC D426EB10 */  ldc1       $f6, %lo(D_802AEB10)($at)
/* 5C6F0 8005BAF0 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5C6F4 8005BAF4 D422EAE8 */  ldc1       $f2, %lo(D_802AEAE8)($at)
/* 5C6F8 8005BAF8 46223182 */  mul.d      $f6, $f6, $f2
/* 5C6FC 8005BAFC 3C01802B */  lui        $at, %hi(D_802AEB00)
/* 5C700 8005BB00 D424EB00 */  ldc1       $f4, %lo(D_802AEB00)($at)
/* 5C704 8005BB04 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5C708 8005BB08 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5C70C 8005BB0C 46241082 */  mul.d      $f2, $f2, $f4
/* 5C710 8005BB10 46260000 */  add.d      $f0, $f0, $f6
/* 5C714 8005BB14 46220000 */  add.d      $f0, $f0, $f2
/* 5C718 8005BB18 F6800030 */  sdc1       $f0, 0x30($s4)
/* 5C71C 8005BB1C 0C022CCC */  jal        func_8008B330
/* 5C720 8005BB20 26840020 */   addiu     $a0, $s4, 0x20
/* 5C724 8005BB24 F6800038 */  sdc1       $f0, 0x38($s4)
/* 5C728 8005BB28 D6000000 */  ldc1       $f0, 0x0($s0)
/* 5C72C 8005BB2C D6620000 */  ldc1       $f2, 0x0($s3)
/* 5C730 8005BB30 46220002 */  mul.d      $f0, $f0, $f2
/* 5C734 8005BB34 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5C738 8005BB38 D426EB28 */  ldc1       $f6, %lo(D_802AEB28)($at)
/* 5C73C 8005BB3C D6420000 */  ldc1       $f2, 0x0($s2)
/* 5C740 8005BB40 46223182 */  mul.d      $f6, $f6, $f2
/* 5C744 8005BB44 D6240000 */  ldc1       $f4, 0x0($s1)
/* 5C748 8005BB48 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5C74C 8005BB4C D422EB30 */  ldc1       $f2, %lo(D_802AEB30)($at)
/* 5C750 8005BB50 46241082 */  mul.d      $f2, $f2, $f4
/* 5C754 8005BB54 46260000 */  add.d      $f0, $f0, $f6
/* 5C758 8005BB58 46220000 */  add.d      $f0, $f0, $f2
/* 5C75C 8005BB5C F6800040 */  sdc1       $f0, 0x40($s4)
/* 5C760 8005BB60 D6000000 */  ldc1       $f0, 0x0($s0)
/* 5C764 8005BB64 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5C768 8005BB68 D422EAC8 */  ldc1       $f2, %lo(D_802AEAC8)($at)
/* 5C76C 8005BB6C 46220002 */  mul.d      $f0, $f0, $f2
/* 5C770 8005BB70 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5C774 8005BB74 D426EB28 */  ldc1       $f6, %lo(D_802AEB28)($at)
/* 5C778 8005BB78 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5C77C 8005BB7C D422EAE0 */  ldc1       $f2, %lo(D_802AEAE0)($at)
/* 5C780 8005BB80 46223182 */  mul.d      $f6, $f6, $f2
/* 5C784 8005BB84 3C01802B */  lui        $at, %hi(D_802AEAF8)
/* 5C788 8005BB88 D424EAF8 */  ldc1       $f4, %lo(D_802AEAF8)($at)
/* 5C78C 8005BB8C 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5C790 8005BB90 D422EB30 */  ldc1       $f2, %lo(D_802AEB30)($at)
/* 5C794 8005BB94 46241082 */  mul.d      $f2, $f2, $f4
/* 5C798 8005BB98 46260000 */  add.d      $f0, $f0, $f6
/* 5C79C 8005BB9C 46220000 */  add.d      $f0, $f0, $f2
/* 5C7A0 8005BBA0 F6800048 */  sdc1       $f0, 0x48($s4)
/* 5C7A4 8005BBA4 D6000000 */  ldc1       $f0, 0x0($s0)
/* 5C7A8 8005BBA8 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5C7AC 8005BBAC D422EAD0 */  ldc1       $f2, %lo(D_802AEAD0)($at)
/* 5C7B0 8005BBB0 46220002 */  mul.d      $f0, $f0, $f2
/* 5C7B4 8005BBB4 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5C7B8 8005BBB8 D426EB28 */  ldc1       $f6, %lo(D_802AEB28)($at)
/* 5C7BC 8005BBBC 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5C7C0 8005BBC0 D422EAE8 */  ldc1       $f2, %lo(D_802AEAE8)($at)
/* 5C7C4 8005BBC4 46223182 */  mul.d      $f6, $f6, $f2
/* 5C7C8 8005BBC8 3C01802B */  lui        $at, %hi(D_802AEB00)
/* 5C7CC 8005BBCC D424EB00 */  ldc1       $f4, %lo(D_802AEB00)($at)
/* 5C7D0 8005BBD0 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5C7D4 8005BBD4 D422EB30 */  ldc1       $f2, %lo(D_802AEB30)($at)
/* 5C7D8 8005BBD8 46241082 */  mul.d      $f2, $f2, $f4
/* 5C7DC 8005BBDC 46260000 */  add.d      $f0, $f0, $f6
/* 5C7E0 8005BBE0 46220000 */  add.d      $f0, $f0, $f2
/* 5C7E4 8005BBE4 F6800050 */  sdc1       $f0, 0x50($s4)
/* 5C7E8 8005BBE8 0C022CCC */  jal        func_8008B330
/* 5C7EC 8005BBEC 26840040 */   addiu     $a0, $s4, 0x40
/* 5C7F0 8005BBF0 24020020 */  addiu      $v0, $zero, 0x20
/* 5C7F4 8005BBF4 F6800058 */  sdc1       $f0, 0x58($s4)
/* 5C7F8 8005BBF8 A2820000 */  sb         $v0, 0x0($s4)
/* 5C7FC 8005BBFC 8FBF0040 */  lw         $ra, 0x40($sp)
/* 5C800 8005BC00 8FB5003C */  lw         $s5, 0x3C($sp)
/* 5C804 8005BC04 8FB40038 */  lw         $s4, 0x38($sp)
/* 5C808 8005BC08 8FB30034 */  lw         $s3, 0x34($sp)
/* 5C80C 8005BC0C 8FB20030 */  lw         $s2, 0x30($sp)
/* 5C810 8005BC10 8FB1002C */  lw         $s1, 0x2C($sp)
/* 5C814 8005BC14 8FB00028 */  lw         $s0, 0x28($sp)
/* 5C818 8005BC18 03E00008 */  jr         $ra
/* 5C81C 8005BC1C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8005BC20
/* 5C820 8005BC20 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 5C824 8005BC24 AFB50054 */  sw         $s5, 0x54($sp)
/* 5C828 8005BC28 0080A821 */  addu       $s5, $a0, $zero
/* 5C82C 8005BC2C AFBF005C */  sw         $ra, 0x5C($sp)
/* 5C830 8005BC30 AFB60058 */  sw         $s6, 0x58($sp)
/* 5C834 8005BC34 AFB40050 */  sw         $s4, 0x50($sp)
/* 5C838 8005BC38 AFB3004C */  sw         $s3, 0x4C($sp)
/* 5C83C 8005BC3C AFB20048 */  sw         $s2, 0x48($sp)
/* 5C840 8005BC40 AFB10044 */  sw         $s1, 0x44($sp)
/* 5C844 8005BC44 AFB00040 */  sw         $s0, 0x40($sp)
/* 5C848 8005BC48 F7BE0088 */  sdc1       $f30, 0x88($sp)
/* 5C84C 8005BC4C F7BC0080 */  sdc1       $f28, 0x80($sp)
/* 5C850 8005BC50 F7BA0078 */  sdc1       $f26, 0x78($sp)
/* 5C854 8005BC54 F7B80070 */  sdc1       $f24, 0x70($sp)
/* 5C858 8005BC58 F7B60068 */  sdc1       $f22, 0x68($sp)
/* 5C85C 8005BC5C F7B40060 */  sdc1       $f20, 0x60($sp)
/* 5C860 8005BC60 D6B00020 */  ldc1       $f16, 0x20($s5)
/* 5C864 8005BC64 D6A00038 */  ldc1       $f0, 0x38($s5)
/* 5C868 8005BC68 46208402 */  mul.d      $f16, $f16, $f0
/* 5C86C 8005BC6C D6AE0028 */  ldc1       $f14, 0x28($s5)
/* 5C870 8005BC70 D6A00038 */  ldc1       $f0, 0x38($s5)
/* 5C874 8005BC74 46207382 */  mul.d      $f14, $f14, $f0
/* 5C878 8005BC78 D6AC0030 */  ldc1       $f12, 0x30($s5)
/* 5C87C 8005BC7C D6A00038 */  ldc1       $f0, 0x38($s5)
/* 5C880 8005BC80 46206302 */  mul.d      $f12, $f12, $f0
/* 5C884 8005BC84 D6AA0040 */  ldc1       $f10, 0x40($s5)
/* 5C888 8005BC88 D6A00058 */  ldc1       $f0, 0x58($s5)
/* 5C88C 8005BC8C 46205282 */  mul.d      $f10, $f10, $f0
/* 5C890 8005BC90 D6A80048 */  ldc1       $f8, 0x48($s5)
/* 5C894 8005BC94 D6A00058 */  ldc1       $f0, 0x58($s5)
/* 5C898 8005BC98 46204202 */  mul.d      $f8, $f8, $f0
/* 5C89C 8005BC9C D6A20010 */  ldc1       $f2, 0x10($s5)
/* 5C8A0 8005BCA0 D6A40058 */  ldc1       $f4, 0x58($s5)
/* 5C8A4 8005BCA4 D6A00050 */  ldc1       $f0, 0x50($s5)
/* 5C8A8 8005BCA8 3C01800D */  lui        $at, %hi(D_800D4600)
/* 5C8AC 8005BCAC D4264600 */  ldc1       $f6, %lo(D_800D4600)($at)
/* 5C8B0 8005BCB0 46201785 */  abs.d      $f30, $f2
/* 5C8B4 8005BCB4 46240002 */  mul.d      $f0, $f0, $f4
/* 5C8B8 8005BCB8 4626F03C */  c.lt.d     $f30, $f6
/* 5C8BC 8005BCBC F6B00020 */  sdc1       $f16, 0x20($s5)
/* 5C8C0 8005BCC0 F6AE0028 */  sdc1       $f14, 0x28($s5)
/* 5C8C4 8005BCC4 F6AC0030 */  sdc1       $f12, 0x30($s5)
/* 5C8C8 8005BCC8 F6AA0040 */  sdc1       $f10, 0x40($s5)
/* 5C8CC 8005BCCC F6A80048 */  sdc1       $f8, 0x48($s5)
/* 5C8D0 8005BCD0 F6A00050 */  sdc1       $f0, 0x50($s5)
/* 5C8D4 8005BCD4 45000040 */  bc1f       .L8005BDD8
/* 5C8D8 8005BCD8 00A0B021 */   addu      $s6, $a1, $zero
/* 5C8DC 8005BCDC D6C20010 */  ldc1       $f2, 0x10($s6)
/* 5C8E0 8005BCE0 D6C00028 */  ldc1       $f0, 0x28($s6)
/* 5C8E4 8005BCE4 46201032 */  c.eq.d     $f2, $f0
/* 5C8E8 8005BCE8 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5C8EC 8005BCEC AC20EAC8 */  sw         $zero, %lo(D_802AEAC8)($at)
/* 5C8F0 8005BCF0 3C01802B */  lui        $at, %hi(D_802AEACC)
/* 5C8F4 8005BCF4 AC20EACC */  sw         $zero, %lo(D_802AEACC)($at)
/* 5C8F8 8005BCF8 45000014 */  bc1f       .L8005BD4C
/* 5C8FC 8005BCFC 00000000 */   nop
/* 5C900 8005BD00 3C01802B */  lui        $at, %hi(D_802AEAC0)
/* 5C904 8005BD04 AC20EAC0 */  sw         $zero, %lo(D_802AEAC0)($at)
/* 5C908 8005BD08 3C01802B */  lui        $at, %hi(D_802AEAC4)
/* 5C90C 8005BD0C AC20EAC4 */  sw         $zero, %lo(D_802AEAC4)($at)
/* 5C910 8005BD10 D6A00018 */  ldc1       $f0, 0x18($s5)
/* 5C914 8005BD14 46201001 */  sub.d      $f0, $f2, $f0
/* 5C918 8005BD18 44801000 */  mtc1       $zero, $f2
/* 5C91C 8005BD1C 44801800 */  mtc1       $zero, $f3
/* 5C920 8005BD20 00000000 */  nop
/* 5C924 8005BD24 4620103C */  c.lt.d     $f2, $f0
/* 5C928 8005BD28 3C01800D */  lui        $at, %hi(D_800D4700)
/* 5C92C 8005BD2C D4204700 */  ldc1       $f0, %lo(D_800D4700)($at)
/* 5C930 8005BD30 45000003 */  bc1f       .L8005BD40
/* 5C934 8005BD34 00000000 */   nop
/* 5C938 8005BD38 3C01800D */  lui        $at, %hi(D_800D4708)
/* 5C93C 8005BD3C D4204708 */  ldc1       $f0, %lo(D_800D4708)($at)
.L8005BD40:
/* 5C940 8005BD40 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5C944 8005BD44 08016F66 */  j          .L8005BD98
/* 5C948 8005BD48 F420EAD0 */   sdc1      $f0, %lo(D_802AEAD0)($at)
.L8005BD4C:
/* 5C94C 8005BD4C D6C00000 */  ldc1       $f0, 0x0($s6)
/* 5C950 8005BD50 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5C954 8005BD54 AC20EAD0 */  sw         $zero, %lo(D_802AEAD0)($at)
/* 5C958 8005BD58 3C01802B */  lui        $at, %hi(D_802AEAD4)
/* 5C95C 8005BD5C AC20EAD4 */  sw         $zero, %lo(D_802AEAD4)($at)
/* 5C960 8005BD60 D6A20008 */  ldc1       $f2, 0x8($s5)
/* 5C964 8005BD64 46220001 */  sub.d      $f0, $f0, $f2
/* 5C968 8005BD68 44801000 */  mtc1       $zero, $f2
/* 5C96C 8005BD6C 44801800 */  mtc1       $zero, $f3
/* 5C970 8005BD70 00000000 */  nop
/* 5C974 8005BD74 4620103C */  c.lt.d     $f2, $f0
/* 5C978 8005BD78 3C01800D */  lui        $at, %hi(D_800D4710)
/* 5C97C 8005BD7C D4204710 */  ldc1       $f0, %lo(D_800D4710)($at)
/* 5C980 8005BD80 45000003 */  bc1f       .L8005BD90
/* 5C984 8005BD84 00000000 */   nop
/* 5C988 8005BD88 3C01800D */  lui        $at, %hi(D_800D4718)
/* 5C98C 8005BD8C D4204718 */  ldc1       $f0, %lo(D_800D4718)($at)
.L8005BD90:
/* 5C990 8005BD90 3C01802B */  lui        $at, %hi(D_802AEAC0)
/* 5C994 8005BD94 F420EAC0 */  sdc1       $f0, %lo(D_802AEAC0)($at)
.L8005BD98:
/* 5C998 8005BD98 3C04802B */  lui        $a0, %hi(D_802AEAC0)
/* 5C99C 8005BD9C 2484EAC0 */  addiu      $a0, $a0, %lo(D_802AEAC0)
/* 5C9A0 8005BDA0 44800000 */  mtc1       $zero, $f0
/* 5C9A4 8005BDA4 44800800 */  mtc1       $zero, $f1
/* 5C9A8 8005BDA8 3C01800D */  lui        $at, %hi(D_800D4720)
/* 5C9AC 8005BDAC D4224720 */  ldc1       $f2, %lo(D_800D4720)($at)
/* 5C9B0 8005BDB0 3C05802B */  lui        $a1, %hi(D_802AEAD8)
/* 5C9B4 8005BDB4 24A5EAD8 */  addiu      $a1, $a1, %lo(D_802AEAD8)
/* 5C9B8 8005BDB8 3C06802B */  lui        $a2, %hi(D_802AEAF0)
/* 5C9BC 8005BDBC 24C6EAF0 */  addiu      $a2, $a2, %lo(D_802AEAF0)
/* 5C9C0 8005BDC0 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5C9C4 8005BDC4 F420EAE8 */  sdc1       $f0, %lo(D_802AEAE8)($at)
/* 5C9C8 8005BDC8 F4A00000 */  sdc1       $f0, 0x0($a1)
/* 5C9CC 8005BDCC 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5C9D0 8005BDD0 08016FA5 */  j          .L8005BE94
/* 5C9D4 8005BDD4 F422EAE0 */   sdc1      $f2, %lo(D_802AEAE0)($at)
.L8005BDD8:
/* 5C9D8 8005BDD8 26C40018 */  addiu      $a0, $s6, 0x18
/* 5C9DC 8005BDDC 02C02821 */  addu       $a1, $s6, $zero
/* 5C9E0 8005BDE0 3C11802B */  lui        $s1, %hi(D_802AEAF0)
/* 5C9E4 8005BDE4 2631EAF0 */  addiu      $s1, $s1, %lo(D_802AEAF0)
/* 5C9E8 8005BDE8 0C022B9C */  jal        func_8008AE70
/* 5C9EC 8005BDEC 02203021 */   addu      $a2, $s1, $zero
/* 5C9F0 8005BDF0 0C022CCC */  jal        func_8008B330
/* 5C9F4 8005BDF4 02202021 */   addu      $a0, $s1, $zero
/* 5C9F8 8005BDF8 26A40008 */  addiu      $a0, $s5, 0x8
/* 5C9FC 8005BDFC 02C02821 */  addu       $a1, $s6, $zero
/* 5CA00 8005BE00 3C10802B */  lui        $s0, %hi(D_802AEB08)
/* 5CA04 8005BE04 2610EB08 */  addiu      $s0, $s0, %lo(D_802AEB08)
/* 5CA08 8005BE08 0C022B9C */  jal        func_8008AE70
/* 5CA0C 8005BE0C 02003021 */   addu      $a2, $s0, $zero
/* 5CA10 8005BE10 02202021 */  addu       $a0, $s1, $zero
/* 5CA14 8005BE14 0C022C70 */  jal        func_8008B1C0
/* 5CA18 8005BE18 02002821 */   addu      $a1, $s0, $zero
/* 5CA1C 8005BE1C D6260000 */  ldc1       $f6, 0x0($s1)
/* 5CA20 8005BE20 46200586 */  mov.d      $f22, $f0
/* 5CA24 8005BE24 4626B182 */  mul.d      $f6, $f22, $f6
/* 5CA28 8005BE28 3C01802B */  lui        $at, %hi(D_802AEAF8)
/* 5CA2C 8005BE2C D424EAF8 */  ldc1       $f4, %lo(D_802AEAF8)($at)
/* 5CA30 8005BE30 4624B102 */  mul.d      $f4, $f22, $f4
/* 5CA34 8005BE34 3C01802B */  lui        $at, %hi(D_802AEB00)
/* 5CA38 8005BE38 D422EB00 */  ldc1       $f2, %lo(D_802AEB00)($at)
/* 5CA3C 8005BE3C D6000000 */  ldc1       $f0, 0x0($s0)
/* 5CA40 8005BE40 4622B082 */  mul.d      $f2, $f22, $f2
/* 5CA44 8005BE44 46203181 */  sub.d      $f6, $f6, $f0
/* 5CA48 8005BE48 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5CA4C 8005BE4C D420EB10 */  ldc1       $f0, %lo(D_802AEB10)($at)
/* 5CA50 8005BE50 46202101 */  sub.d      $f4, $f4, $f0
/* 5CA54 8005BE54 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5CA58 8005BE58 D420EB18 */  ldc1       $f0, %lo(D_802AEB18)($at)
/* 5CA5C 8005BE5C 3C10802B */  lui        $s0, %hi(D_802AEAC0)
/* 5CA60 8005BE60 2610EAC0 */  addiu      $s0, $s0, %lo(D_802AEAC0)
/* 5CA64 8005BE64 46201081 */  sub.d      $f2, $f2, $f0
/* 5CA68 8005BE68 F6060000 */  sdc1       $f6, 0x0($s0)
/* 5CA6C 8005BE6C 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5CA70 8005BE70 F424EAC8 */  sdc1       $f4, %lo(D_802AEAC8)($at)
/* 5CA74 8005BE74 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5CA78 8005BE78 F422EAD0 */  sdc1       $f2, %lo(D_802AEAD0)($at)
/* 5CA7C 8005BE7C 0C022CCC */  jal        func_8008B330
/* 5CA80 8005BE80 02002021 */   addu      $a0, $s0, $zero
/* 5CA84 8005BE84 02202021 */  addu       $a0, $s1, $zero
/* 5CA88 8005BE88 02002821 */  addu       $a1, $s0, $zero
/* 5CA8C 8005BE8C 3C06802B */  lui        $a2, %hi(D_802AEAD8)
/* 5CA90 8005BE90 24C6EAD8 */  addiu      $a2, $a2, %lo(D_802AEAD8)
.L8005BE94:
/* 5CA94 8005BE94 0C022C84 */  jal        func_8008B210
/* 5CA98 8005BE98 26B00020 */   addiu     $s0, $s5, 0x20
/* 5CA9C 8005BE9C 3C12802B */  lui        $s2, %hi(D_802AEAC0)
/* 5CAA0 8005BEA0 2652EAC0 */  addiu      $s2, $s2, %lo(D_802AEAC0)
/* 5CAA4 8005BEA4 02402021 */  addu       $a0, $s2, $zero
/* 5CAA8 8005BEA8 0C022C70 */  jal        func_8008B1C0
/* 5CAAC 8005BEAC 02002821 */   addu      $a1, $s0, $zero
/* 5CAB0 8005BEB0 3C13802B */  lui        $s3, %hi(D_802AEAD8)
/* 5CAB4 8005BEB4 2673EAD8 */  addiu      $s3, $s3, %lo(D_802AEAD8)
/* 5CAB8 8005BEB8 02602021 */  addu       $a0, $s3, $zero
/* 5CABC 8005BEBC 3C14802B */  lui        $s4, %hi(D_802AEB08)
/* 5CAC0 8005BEC0 2694EB08 */  addiu      $s4, $s4, %lo(D_802AEB08)
/* 5CAC4 8005BEC4 F6800000 */  sdc1       $f0, 0x0($s4)
/* 5CAC8 8005BEC8 0C022C70 */  jal        func_8008B1C0
/* 5CACC 8005BECC 02002821 */   addu      $a1, $s0, $zero
/* 5CAD0 8005BED0 3C11802B */  lui        $s1, %hi(D_802AEAF0)
/* 5CAD4 8005BED4 2631EAF0 */  addiu      $s1, $s1, %lo(D_802AEAF0)
/* 5CAD8 8005BED8 02202021 */  addu       $a0, $s1, $zero
/* 5CADC 8005BEDC F6800008 */  sdc1       $f0, 0x8($s4)
/* 5CAE0 8005BEE0 0C022C70 */  jal        func_8008B1C0
/* 5CAE4 8005BEE4 02002821 */   addu      $a1, $s0, $zero
/* 5CAE8 8005BEE8 02402021 */  addu       $a0, $s2, $zero
/* 5CAEC 8005BEEC 26B00040 */  addiu      $s0, $s5, 0x40
/* 5CAF0 8005BEF0 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5CAF4 8005BEF4 F420EB18 */  sdc1       $f0, %lo(D_802AEB18)($at)
/* 5CAF8 8005BEF8 0C022C70 */  jal        func_8008B1C0
/* 5CAFC 8005BEFC 02002821 */   addu      $a1, $s0, $zero
/* 5CB00 8005BF00 02602021 */  addu       $a0, $s3, $zero
/* 5CB04 8005BF04 3C12802B */  lui        $s2, %hi(D_802AEB20)
/* 5CB08 8005BF08 2652EB20 */  addiu      $s2, $s2, %lo(D_802AEB20)
/* 5CB0C 8005BF0C F6400000 */  sdc1       $f0, 0x0($s2)
/* 5CB10 8005BF10 0C022C70 */  jal        func_8008B1C0
/* 5CB14 8005BF14 02002821 */   addu      $a1, $s0, $zero
/* 5CB18 8005BF18 02202021 */  addu       $a0, $s1, $zero
/* 5CB1C 8005BF1C 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5CB20 8005BF20 F420EB28 */  sdc1       $f0, %lo(D_802AEB28)($at)
/* 5CB24 8005BF24 0C022C70 */  jal        func_8008B1C0
/* 5CB28 8005BF28 02002821 */   addu      $a1, $s0, $zero
/* 5CB2C 8005BF2C D6860008 */  ldc1       $f6, 0x8($s4)
/* 5CB30 8005BF30 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5CB34 8005BF34 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5CB38 8005BF38 46203180 */  add.d      $f6, $f6, $f0
/* 5CB3C 8005BF3C 3C01802B */  lui        $at, %hi(D_802AEB28)
/* 5CB40 8005BF40 D424EB28 */  ldc1       $f4, %lo(D_802AEB28)($at)
/* 5CB44 8005BF44 46241081 */  sub.d      $f2, $f2, $f4
/* 5CB48 8005BF48 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5CB4C 8005BF4C F420EB30 */  sdc1       $f0, %lo(D_802AEB30)($at)
/* 5CB50 8005BF50 AFA00010 */  sw         $zero, 0x10($sp)
/* 5CB54 8005BF54 AFA00014 */  sw         $zero, 0x14($sp)
/* 5CB58 8005BF58 F7A60018 */  sdc1       $f6, 0x18($sp)
/* 5CB5C 8005BF5C F7A20020 */  sdc1       $f2, 0x20($sp)
/* 5CB60 8005BF60 0C022CCC */  jal        func_8008B330
/* 5CB64 8005BF64 27A40010 */   addiu     $a0, $sp, 0x10
/* 5CB68 8005BF68 D68C0000 */  ldc1       $f12, 0x0($s4)
/* 5CB6C 8005BF6C 46206305 */  abs.d      $f12, $f12
/* 5CB70 8005BF70 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5CB74 8005BF74 F42CEB38 */  sdc1       $f12, %lo(D_802AEB38)($at)
/* 5CB78 8005BF78 0C01E6E4 */  jal        func_80079B90
/* 5CB7C 8005BF7C 46200586 */   mov.d     $f22, $f0
/* 5CB80 8005BF80 46200506 */  mov.d      $f20, $f0
/* 5CB84 8005BF84 0C01E732 */  jal        func_80079CC8
/* 5CB88 8005BF88 4620A306 */   mov.d     $f12, $f20
/* 5CB8C 8005BF8C 4620A306 */  mov.d      $f12, $f20
/* 5CB90 8005BF90 02803021 */  addu       $a2, $s4, $zero
/* 5CB94 8005BF94 46200606 */  mov.d      $f24, $f0
/* 5CB98 8005BF98 0C01E6FD */  jal        func_80079BF4
/* 5CB9C 8005BF9C 02403821 */   addu      $a3, $s2, $zero
/* 5CBA0 8005BFA0 4620A306 */  mov.d      $f12, $f20
/* 5CBA4 8005BFA4 0C01E739 */  jal        func_80079CE4
/* 5CBA8 8005BFA8 46200686 */   mov.d     $f26, $f0
/* 5CBAC 8005BFAC 44110000 */  mfc1       $s1, $f0
/* 5CBB0 8005BFB0 44100800 */  mfc1       $s0, $f1
/* 5CBB4 8005BFB4 00000000 */  nop
/* 5CBB8 8005BFB8 0C01E6F6 */  jal        func_80079BD8
/* 5CBBC 8005BFBC 4620A306 */   mov.d     $f12, $f20
/* 5CBC0 8005BFC0 3C01800D */  lui        $at, %hi(D_800D4728)
/* 5CBC4 8005BFC4 D4224728 */  ldc1       $f2, %lo(D_800D4728)($at)
/* 5CBC8 8005BFC8 4622B102 */  mul.d      $f4, $f22, $f2
/* 5CBCC 8005BFCC 46382503 */  div.d      $f20, $f4, $f24
/* 5CBD0 8005BFD0 3C01800D */  lui        $at, %hi(D_800D4730)
/* 5CBD4 8005BFD4 D43C4730 */  ldc1       $f28, %lo(D_800D4730)($at)
/* 5CBD8 8005BFD8 46200586 */  mov.d      $f22, $f0
/* 5CBDC 8005BFDC 463CB080 */  add.d      $f2, $f22, $f28
/* 5CBE0 8005BFE0 D6800000 */  ldc1       $f0, 0x0($s4)
/* 5CBE4 8005BFE4 46201082 */  mul.d      $f2, $f2, $f0
/* 5CBE8 8005BFE8 4622A03C */  c.lt.d     $f20, $f2
/* 5CBEC 8005BFEC F7A20028 */  sdc1       $f2, 0x28($sp)
/* 5CBF0 8005BFF0 F7A20030 */  sdc1       $f2, 0x30($sp)
/* 5CBF4 8005BFF4 45020003 */  bc1fl      .L8005C004
/* 5CBF8 8005BFF8 463A2503 */   div.d     $f20, $f4, $f26
/* 5CBFC 8005BFFC F7B40030 */  sdc1       $f20, 0x30($sp)
/* 5CC00 8005C000 463A2503 */  div.d      $f20, $f4, $f26
.L8005C004:
/* 5CC04 8005C004 4622A03C */  c.lt.d     $f20, $f2
/* 5CC08 8005C008 F7A20038 */  sdc1       $f2, 0x38($sp)
/* 5CC0C 8005C00C 00000000 */  nop
/* 5CC10 8005C010 45000016 */  bc1f       .L8005C06C
/* 5CC14 8005C014 02802021 */   addu      $a0, $s4, $zero
/* 5CC18 8005C018 46341301 */  sub.d      $f12, $f2, $f20
/* 5CC1C 8005C01C 3C01800D */  lui        $at, %hi(D_800D4738)
/* 5CC20 8005C020 D4204738 */  ldc1       $f0, %lo(D_800D4738)($at)
/* 5CC24 8005C024 46206301 */  sub.d      $f12, $f12, $f0
/* 5CC28 8005C028 3C01800D */  lui        $at, %hi(D_800D4740)
/* 5CC2C 8005C02C D4204740 */  ldc1       $f0, %lo(D_800D4740)($at)
/* 5CC30 8005C030 0C026E3C */  jal        func_8009B8F0
/* 5CC34 8005C034 46206303 */   div.d     $f12, $f12, $f0
/* 5CC38 8005C038 3C01800D */  lui        $at, %hi(D_800D4748)
/* 5CC3C 8005C03C D4224748 */  ldc1       $f2, %lo(D_800D4748)($at)
/* 5CC40 8005C040 46220000 */  add.d      $f0, $f0, $f2
/* 5CC44 8005C044 3C01800D */  lui        $at, %hi(D_800D4750)
/* 5CC48 8005C048 D4224750 */  ldc1       $f2, %lo(D_800D4750)($at)
/* 5CC4C 8005C04C 46220003 */  div.d      $f0, $f0, $f2
/* 5CC50 8005C050 3C01800D */  lui        $at, %hi(D_800D4758)
/* 5CC54 8005C054 D4224758 */  ldc1       $f2, %lo(D_800D4758)($at)
/* 5CC58 8005C058 46220002 */  mul.d      $f0, $f0, $f2
/* 5CC5C 8005C05C 463C0000 */  add.d      $f0, $f0, $f28
/* 5CC60 8005C060 46340002 */  mul.d      $f0, $f0, $f20
/* 5CC64 8005C064 F7A00038 */  sdc1       $f0, 0x38($sp)
/* 5CC68 8005C068 02802021 */  addu       $a0, $s4, $zero
.L8005C06C:
/* 5CC6C 8005C06C 0C01E740 */  jal        func_80079D00
/* 5CC70 8005C070 02402821 */   addu      $a1, $s2, $zero
/* 5CC74 8005C074 D6820000 */  ldc1       $f2, 0x0($s4)
/* 5CC78 8005C078 4620B107 */  neg.d      $f4, $f22
/* 5CC7C 8005C07C 46241102 */  mul.d      $f4, $f2, $f4
/* 5CC80 8005C080 3C01800D */  lui        $at, %hi(D_800D4760)
/* 5CC84 8005C084 D4264760 */  ldc1       $f6, %lo(D_800D4760)($at)
/* 5CC88 8005C088 46202085 */  abs.d      $f2, $f4
/* 5CC8C 8005C08C 4626103C */  c.lt.d     $f2, $f6
/* 5CC90 8005C090 F6840000 */  sdc1       $f4, 0x0($s4)
/* 5CC94 8005C094 00000000 */  nop
/* 5CC98 8005C098 45000003 */  bc1f       .L8005C0A8
/* 5CC9C 8005C09C 46200586 */   mov.d     $f22, $f0
/* 5CCA0 8005C0A0 46262001 */  sub.d      $f0, $f4, $f6
/* 5CCA4 8005C0A4 F6800000 */  sdc1       $f0, 0x0($s4)
.L8005C0A8:
/* 5CCA8 8005C0A8 3C01800D */  lui        $at, %hi(D_800D4600)
/* 5CCAC 8005C0AC D4244600 */  ldc1       $f4, %lo(D_800D4600)($at)
/* 5CCB0 8005C0B0 4624F03C */  c.lt.d     $f30, $f4
/* 5CCB4 8005C0B4 00000000 */  nop
/* 5CCB8 8005C0B8 45000017 */  bc1f       .L8005C118
/* 5CCBC 8005C0BC 00000000 */   nop
/* 5CCC0 8005C0C0 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5CCC4 8005C0C4 D422EB10 */  ldc1       $f2, %lo(D_802AEB10)($at)
/* 5CCC8 8005C0C8 44800000 */  mtc1       $zero, $f0
/* 5CCCC 8005C0CC 44800800 */  mtc1       $zero, $f1
/* 5CCD0 8005C0D0 00000000 */  nop
/* 5CCD4 8005C0D4 4620103C */  c.lt.d     $f2, $f0
/* 5CCD8 8005C0D8 00000000 */  nop
/* 5CCDC 8005C0DC 45000006 */  bc1f       .L8005C0F8
/* 5CCE0 8005C0E0 00000000 */   nop
/* 5CCE4 8005C0E4 463E2001 */  sub.d      $f0, $f4, $f30
/* 5CCE8 8005C0E8 4620E001 */  sub.d      $f0, $f28, $f0
/* 5CCEC 8005C0EC 46201002 */  mul.d      $f0, $f2, $f0
/* 5CCF0 8005C0F0 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5CCF4 8005C0F4 F420EB10 */  sdc1       $f0, %lo(D_802AEB10)($at)
.L8005C0F8:
/* 5CCF8 8005C0F8 D7A00030 */  ldc1       $f0, 0x30($sp)
/* 5CCFC 8005C0FC 4620C002 */  mul.d      $f0, $f24, $f0
/* 5CD00 8005C100 D7A20018 */  ldc1       $f2, 0x18($sp)
/* 5CD04 8005C104 46220002 */  mul.d      $f0, $f0, $f2
/* 5CD08 8005C108 00000000 */  nop
/* 5CD0C 8005C10C 463E0002 */  mul.d      $f0, $f0, $f30
/* 5CD10 8005C110 0801704A */  j          .L8005C128
/* 5CD14 8005C114 46240003 */   div.d     $f0, $f0, $f4
.L8005C118:
/* 5CD18 8005C118 D7A00030 */  ldc1       $f0, 0x30($sp)
/* 5CD1C 8005C11C 4620C002 */  mul.d      $f0, $f24, $f0
/* 5CD20 8005C120 D7A20018 */  ldc1       $f2, 0x18($sp)
/* 5CD24 8005C124 46220002 */  mul.d      $f0, $f0, $f2
.L8005C128:
/* 5CD28 8005C128 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5CD2C 8005C12C D422EB10 */  ldc1       $f2, %lo(D_802AEB10)($at)
/* 5CD30 8005C130 46201081 */  sub.d      $f2, $f2, $f0
/* 5CD34 8005C134 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5CD38 8005C138 F422EB10 */  sdc1       $f2, %lo(D_802AEB10)($at)
/* 5CD3C 8005C13C D7A20038 */  ldc1       $f2, 0x38($sp)
/* 5CD40 8005C140 4622D082 */  mul.d      $f2, $f26, $f2
/* 5CD44 8005C144 D7A00020 */  ldc1       $f0, 0x20($sp)
/* 5CD48 8005C148 46201082 */  mul.d      $f2, $f2, $f0
/* 5CD4C 8005C14C 3C02802B */  lui        $v0, %hi(D_802AEB18)
/* 5CD50 8005C150 2442EB18 */  addiu      $v0, $v0, %lo(D_802AEB18)
/* 5CD54 8005C154 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5CD58 8005C158 46220001 */  sub.d      $f0, $f0, $f2
/* 5CD5C 8005C15C 3C01800D */  lui        $at, %hi(D_800D4768)
/* 5CD60 8005C160 D4224768 */  ldc1       $f2, %lo(D_800D4768)($at)
/* 5CD64 8005C164 46360000 */  add.d      $f0, $f0, $f22
/* 5CD68 8005C168 44919000 */  mtc1       $s1, $f18
/* 5CD6C 8005C16C 44909800 */  mtc1       $s0, $f19
/* 5CD70 8005C170 00000000 */  nop
/* 5CD74 8005C174 4632103C */  c.lt.d     $f2, $f18
/* 5CD78 8005C178 F4400000 */  sdc1       $f0, 0x0($v0)
/* 5CD7C 8005C17C 00000000 */  nop
/* 5CD80 8005C180 45020006 */  bc1fl      .L8005C19C
/* 5CD84 8005C184 46321081 */   sub.d     $f2, $f2, $f18
/* 5CD88 8005C188 3C01802B */  lui        $at, %hi(D_802AEB20)
/* 5CD8C 8005C18C AC20EB20 */  sw         $zero, %lo(D_802AEB20)($at)
/* 5CD90 8005C190 3C01802B */  lui        $at, %hi(D_802AEB24)
/* 5CD94 8005C194 0801706C */  j          .L8005C1B0
/* 5CD98 8005C198 AC20EB24 */   sw        $zero, %lo(D_802AEB24)($at)
.L8005C19C:
/* 5CD9C 8005C19C 3C02802B */  lui        $v0, %hi(D_802AEB20)
/* 5CDA0 8005C1A0 2442EB20 */  addiu      $v0, $v0, %lo(D_802AEB20)
/* 5CDA4 8005C1A4 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5CDA8 8005C1A8 46220002 */  mul.d      $f0, $f0, $f2
/* 5CDAC 8005C1AC F4400000 */  sdc1       $f0, 0x0($v0)
.L8005C1B0:
/* 5CDB0 8005C1B0 3C01800D */  lui        $at, %hi(D_800D4770)
/* 5CDB4 8005C1B4 D4264770 */  ldc1       $f6, %lo(D_800D4770)($at)
/* 5CDB8 8005C1B8 4626D082 */  mul.d      $f2, $f26, $f6
/* 5CDBC 8005C1BC 00000000 */  nop
/* 5CDC0 8005C1C0 4626C182 */  mul.d      $f6, $f24, $f6
/* 5CDC4 8005C1C4 D7A00038 */  ldc1       $f0, 0x38($sp)
/* 5CDC8 8005C1C8 46201082 */  mul.d      $f2, $f2, $f0
/* 5CDCC 8005C1CC D7A00020 */  ldc1       $f0, 0x20($sp)
/* 5CDD0 8005C1D0 46201082 */  mul.d      $f2, $f2, $f0
/* 5CDD4 8005C1D4 D7A00030 */  ldc1       $f0, 0x30($sp)
/* 5CDD8 8005C1D8 46203182 */  mul.d      $f6, $f6, $f0
/* 5CDDC 8005C1DC 3C12802B */  lui        $s2, %hi(D_802AEB08)
/* 5CDE0 8005C1E0 2652EB08 */  addiu      $s2, $s2, %lo(D_802AEB08)
/* 5CDE4 8005C1E4 3C13802B */  lui        $s3, %hi(D_802AEAC0)
/* 5CDE8 8005C1E8 2673EAC0 */  addiu      $s3, $s3, %lo(D_802AEAC0)
/* 5CDEC 8005C1EC D6440000 */  ldc1       $f4, 0x0($s2)
/* 5CDF0 8005C1F0 D6600000 */  ldc1       $f0, 0x0($s3)
/* 5CDF4 8005C1F4 46202102 */  mul.d      $f4, $f4, $f0
/* 5CDF8 8005C1F8 3C14802B */  lui        $s4, %hi(D_802AEAD8)
/* 5CDFC 8005C1FC 2694EAD8 */  addiu      $s4, $s4, %lo(D_802AEAD8)
/* 5CE00 8005C200 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5CE04 8005C204 D428EB10 */  ldc1       $f8, %lo(D_802AEB10)($at)
/* 5CE08 8005C208 D6800000 */  ldc1       $f0, 0x0($s4)
/* 5CE0C 8005C20C 46204202 */  mul.d      $f8, $f8, $f0
/* 5CE10 8005C210 D7A00018 */  ldc1       $f0, 0x18($sp)
/* 5CE14 8005C214 3C11802B */  lui        $s1, %hi(D_802AEB28)
/* 5CE18 8005C218 2631EB28 */  addiu      $s1, $s1, %lo(D_802AEB28)
/* 5CE1C 8005C21C D62A0000 */  ldc1       $f10, 0x0($s1)
/* 5CE20 8005C220 46203182 */  mul.d      $f6, $f6, $f0
/* 5CE24 8005C224 3C10802B */  lui        $s0, %hi(D_802AEAF0)
/* 5CE28 8005C228 2610EAF0 */  addiu      $s0, $s0, %lo(D_802AEAF0)
/* 5CE2C 8005C22C 46225280 */  add.d      $f10, $f10, $f2
/* 5CE30 8005C230 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5CE34 8005C234 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5CE38 8005C238 D6000000 */  ldc1       $f0, 0x0($s0)
/* 5CE3C 8005C23C 46201082 */  mul.d      $f2, $f2, $f0
/* 5CE40 8005C240 46282100 */  add.d      $f4, $f4, $f8
/* 5CE44 8005C244 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5CE48 8005C248 D420EB30 */  ldc1       $f0, %lo(D_802AEB30)($at)
/* 5CE4C 8005C24C 46260001 */  sub.d      $f0, $f0, $f6
/* 5CE50 8005C250 46222100 */  add.d      $f4, $f4, $f2
/* 5CE54 8005C254 F62A0000 */  sdc1       $f10, 0x0($s1)
/* 5CE58 8005C258 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5CE5C 8005C25C F420EB30 */  sdc1       $f0, %lo(D_802AEB30)($at)
/* 5CE60 8005C260 F6A40020 */  sdc1       $f4, 0x20($s5)
/* 5CE64 8005C264 D6400000 */  ldc1       $f0, 0x0($s2)
/* 5CE68 8005C268 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5CE6C 8005C26C D422EAC8 */  ldc1       $f2, %lo(D_802AEAC8)($at)
/* 5CE70 8005C270 46220002 */  mul.d      $f0, $f0, $f2
/* 5CE74 8005C274 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5CE78 8005C278 D426EB10 */  ldc1       $f6, %lo(D_802AEB10)($at)
/* 5CE7C 8005C27C 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5CE80 8005C280 D422EAE0 */  ldc1       $f2, %lo(D_802AEAE0)($at)
/* 5CE84 8005C284 46223182 */  mul.d      $f6, $f6, $f2
/* 5CE88 8005C288 3C01802B */  lui        $at, %hi(D_802AEAF8)
/* 5CE8C 8005C28C D424EAF8 */  ldc1       $f4, %lo(D_802AEAF8)($at)
/* 5CE90 8005C290 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5CE94 8005C294 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5CE98 8005C298 46241082 */  mul.d      $f2, $f2, $f4
/* 5CE9C 8005C29C 46260000 */  add.d      $f0, $f0, $f6
/* 5CEA0 8005C2A0 46220000 */  add.d      $f0, $f0, $f2
/* 5CEA4 8005C2A4 F6A00028 */  sdc1       $f0, 0x28($s5)
/* 5CEA8 8005C2A8 D6400000 */  ldc1       $f0, 0x0($s2)
/* 5CEAC 8005C2AC 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5CEB0 8005C2B0 D422EAD0 */  ldc1       $f2, %lo(D_802AEAD0)($at)
/* 5CEB4 8005C2B4 46220002 */  mul.d      $f0, $f0, $f2
/* 5CEB8 8005C2B8 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5CEBC 8005C2BC D426EB10 */  ldc1       $f6, %lo(D_802AEB10)($at)
/* 5CEC0 8005C2C0 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5CEC4 8005C2C4 D422EAE8 */  ldc1       $f2, %lo(D_802AEAE8)($at)
/* 5CEC8 8005C2C8 46223182 */  mul.d      $f6, $f6, $f2
/* 5CECC 8005C2CC 3C01802B */  lui        $at, %hi(D_802AEB00)
/* 5CED0 8005C2D0 D424EB00 */  ldc1       $f4, %lo(D_802AEB00)($at)
/* 5CED4 8005C2D4 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5CED8 8005C2D8 D422EB18 */  ldc1       $f2, %lo(D_802AEB18)($at)
/* 5CEDC 8005C2DC 46241082 */  mul.d      $f2, $f2, $f4
/* 5CEE0 8005C2E0 46260000 */  add.d      $f0, $f0, $f6
/* 5CEE4 8005C2E4 46220000 */  add.d      $f0, $f0, $f2
/* 5CEE8 8005C2E8 F6A00030 */  sdc1       $f0, 0x30($s5)
/* 5CEEC 8005C2EC 0C022CCC */  jal        func_8008B330
/* 5CEF0 8005C2F0 26A40020 */   addiu     $a0, $s5, 0x20
/* 5CEF4 8005C2F4 F6A00038 */  sdc1       $f0, 0x38($s5)
/* 5CEF8 8005C2F8 3C01802B */  lui        $at, %hi(D_802AEB20)
/* 5CEFC 8005C2FC D420EB20 */  ldc1       $f0, %lo(D_802AEB20)($at)
/* 5CF00 8005C300 D6620000 */  ldc1       $f2, 0x0($s3)
/* 5CF04 8005C304 46220002 */  mul.d      $f0, $f0, $f2
/* 5CF08 8005C308 D6260000 */  ldc1       $f6, 0x0($s1)
/* 5CF0C 8005C30C D6820000 */  ldc1       $f2, 0x0($s4)
/* 5CF10 8005C310 46223182 */  mul.d      $f6, $f6, $f2
/* 5CF14 8005C314 D6040000 */  ldc1       $f4, 0x0($s0)
/* 5CF18 8005C318 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5CF1C 8005C31C D422EB30 */  ldc1       $f2, %lo(D_802AEB30)($at)
/* 5CF20 8005C320 46241082 */  mul.d      $f2, $f2, $f4
/* 5CF24 8005C324 46260000 */  add.d      $f0, $f0, $f6
/* 5CF28 8005C328 46220000 */  add.d      $f0, $f0, $f2
/* 5CF2C 8005C32C F6A00040 */  sdc1       $f0, 0x40($s5)
/* 5CF30 8005C330 3C01802B */  lui        $at, %hi(D_802AEB20)
/* 5CF34 8005C334 D420EB20 */  ldc1       $f0, %lo(D_802AEB20)($at)
/* 5CF38 8005C338 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5CF3C 8005C33C D422EAC8 */  ldc1       $f2, %lo(D_802AEAC8)($at)
/* 5CF40 8005C340 46220002 */  mul.d      $f0, $f0, $f2
/* 5CF44 8005C344 D6260000 */  ldc1       $f6, 0x0($s1)
/* 5CF48 8005C348 3C01802B */  lui        $at, %hi(D_802AEAE0)
/* 5CF4C 8005C34C D422EAE0 */  ldc1       $f2, %lo(D_802AEAE0)($at)
/* 5CF50 8005C350 46223182 */  mul.d      $f6, $f6, $f2
/* 5CF54 8005C354 3C01802B */  lui        $at, %hi(D_802AEAF8)
/* 5CF58 8005C358 D424EAF8 */  ldc1       $f4, %lo(D_802AEAF8)($at)
/* 5CF5C 8005C35C 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5CF60 8005C360 D422EB30 */  ldc1       $f2, %lo(D_802AEB30)($at)
/* 5CF64 8005C364 46241082 */  mul.d      $f2, $f2, $f4
/* 5CF68 8005C368 46260000 */  add.d      $f0, $f0, $f6
/* 5CF6C 8005C36C 46220000 */  add.d      $f0, $f0, $f2
/* 5CF70 8005C370 F6A00048 */  sdc1       $f0, 0x48($s5)
/* 5CF74 8005C374 3C01802B */  lui        $at, %hi(D_802AEB20)
/* 5CF78 8005C378 D420EB20 */  ldc1       $f0, %lo(D_802AEB20)($at)
/* 5CF7C 8005C37C 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5CF80 8005C380 D422EAD0 */  ldc1       $f2, %lo(D_802AEAD0)($at)
/* 5CF84 8005C384 46220002 */  mul.d      $f0, $f0, $f2
/* 5CF88 8005C388 D6260000 */  ldc1       $f6, 0x0($s1)
/* 5CF8C 8005C38C 3C01802B */  lui        $at, %hi(D_802AEAE8)
/* 5CF90 8005C390 D422EAE8 */  ldc1       $f2, %lo(D_802AEAE8)($at)
/* 5CF94 8005C394 46223182 */  mul.d      $f6, $f6, $f2
/* 5CF98 8005C398 3C01802B */  lui        $at, %hi(D_802AEB00)
/* 5CF9C 8005C39C D424EB00 */  ldc1       $f4, %lo(D_802AEB00)($at)
/* 5CFA0 8005C3A0 3C01802B */  lui        $at, %hi(D_802AEB30)
/* 5CFA4 8005C3A4 D422EB30 */  ldc1       $f2, %lo(D_802AEB30)($at)
/* 5CFA8 8005C3A8 46241082 */  mul.d      $f2, $f2, $f4
/* 5CFAC 8005C3AC 46260000 */  add.d      $f0, $f0, $f6
/* 5CFB0 8005C3B0 46220000 */  add.d      $f0, $f0, $f2
/* 5CFB4 8005C3B4 F6A00050 */  sdc1       $f0, 0x50($s5)
/* 5CFB8 8005C3B8 0C022CCC */  jal        func_8008B330
/* 5CFBC 8005C3BC 26A40040 */   addiu     $a0, $s5, 0x40
/* 5CFC0 8005C3C0 26C40018 */  addiu      $a0, $s6, 0x18
/* 5CFC4 8005C3C4 02C02821 */  addu       $a1, $s6, $zero
/* 5CFC8 8005C3C8 F6A00058 */  sdc1       $f0, 0x58($s5)
/* 5CFCC 8005C3CC 0C022B9C */  jal        func_8008AE70
/* 5CFD0 8005C3D0 02003021 */   addu      $a2, $s0, $zero
/* 5CFD4 8005C3D4 0C022CCC */  jal        func_8008B330
/* 5CFD8 8005C3D8 02002021 */   addu      $a0, $s0, $zero
/* 5CFDC 8005C3DC 26A40008 */  addiu      $a0, $s5, 0x8
/* 5CFE0 8005C3E0 02C02821 */  addu       $a1, $s6, $zero
/* 5CFE4 8005C3E4 0C022B9C */  jal        func_8008AE70
/* 5CFE8 8005C3E8 02403021 */   addu      $a2, $s2, $zero
/* 5CFEC 8005C3EC 02002021 */  addu       $a0, $s0, $zero
/* 5CFF0 8005C3F0 0C022C70 */  jal        func_8008B1C0
/* 5CFF4 8005C3F4 02402821 */   addu      $a1, $s2, $zero
/* 5CFF8 8005C3F8 D6060000 */  ldc1       $f6, 0x0($s0)
/* 5CFFC 8005C3FC 46200586 */  mov.d      $f22, $f0
/* 5D000 8005C400 4626B182 */  mul.d      $f6, $f22, $f6
/* 5D004 8005C404 3C01802B */  lui        $at, %hi(D_802AEAF8)
/* 5D008 8005C408 D424EAF8 */  ldc1       $f4, %lo(D_802AEAF8)($at)
/* 5D00C 8005C40C 4624B102 */  mul.d      $f4, $f22, $f4
/* 5D010 8005C410 3C01802B */  lui        $at, %hi(D_802AEB00)
/* 5D014 8005C414 D422EB00 */  ldc1       $f2, %lo(D_802AEB00)($at)
/* 5D018 8005C418 D6400000 */  ldc1       $f0, 0x0($s2)
/* 5D01C 8005C41C 4622B082 */  mul.d      $f2, $f22, $f2
/* 5D020 8005C420 46203181 */  sub.d      $f6, $f6, $f0
/* 5D024 8005C424 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5D028 8005C428 D420EB10 */  ldc1       $f0, %lo(D_802AEB10)($at)
/* 5D02C 8005C42C 46202101 */  sub.d      $f4, $f4, $f0
/* 5D030 8005C430 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5D034 8005C434 D420EB18 */  ldc1       $f0, %lo(D_802AEB18)($at)
/* 5D038 8005C438 46201081 */  sub.d      $f2, $f2, $f0
/* 5D03C 8005C43C F6660000 */  sdc1       $f6, 0x0($s3)
/* 5D040 8005C440 3C01802B */  lui        $at, %hi(D_802AEAC8)
/* 5D044 8005C444 F424EAC8 */  sdc1       $f4, %lo(D_802AEAC8)($at)
/* 5D048 8005C448 3C01802B */  lui        $at, %hi(D_802AEAD0)
/* 5D04C 8005C44C F422EAD0 */  sdc1       $f2, %lo(D_802AEAD0)($at)
/* 5D050 8005C450 0C022CCC */  jal        func_8008B330
/* 5D054 8005C454 02602021 */   addu      $a0, $s3, $zero
/* 5D058 8005C458 02002021 */  addu       $a0, $s0, $zero
/* 5D05C 8005C45C 02602821 */  addu       $a1, $s3, $zero
/* 5D060 8005C460 0C022C84 */  jal        func_8008B210
/* 5D064 8005C464 02803021 */   addu      $a2, $s4, $zero
/* 5D068 8005C468 24020020 */  addiu      $v0, $zero, 0x20
/* 5D06C 8005C46C A2A20000 */  sb         $v0, 0x0($s5)
/* 5D070 8005C470 8FBF005C */  lw         $ra, 0x5C($sp)
/* 5D074 8005C474 8FB60058 */  lw         $s6, 0x58($sp)
/* 5D078 8005C478 8FB50054 */  lw         $s5, 0x54($sp)
/* 5D07C 8005C47C 8FB40050 */  lw         $s4, 0x50($sp)
/* 5D080 8005C480 8FB3004C */  lw         $s3, 0x4C($sp)
/* 5D084 8005C484 8FB20048 */  lw         $s2, 0x48($sp)
/* 5D088 8005C488 8FB10044 */  lw         $s1, 0x44($sp)
/* 5D08C 8005C48C 8FB00040 */  lw         $s0, 0x40($sp)
/* 5D090 8005C490 D7BE0088 */  ldc1       $f30, 0x88($sp)
/* 5D094 8005C494 D7BC0080 */  ldc1       $f28, 0x80($sp)
/* 5D098 8005C498 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* 5D09C 8005C49C D7B80070 */  ldc1       $f24, 0x70($sp)
/* 5D0A0 8005C4A0 D7B60068 */  ldc1       $f22, 0x68($sp)
/* 5D0A4 8005C4A4 D7B40060 */  ldc1       $f20, 0x60($sp)
/* 5D0A8 8005C4A8 03E00008 */  jr         $ra
/* 5D0AC 8005C4AC 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_8005C4B0
/* 5D0B0 8005C4B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5D0B4 8005C4B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 5D0B8 8005C4B8 00808821 */  addu       $s1, $a0, $zero
/* 5D0BC 8005C4BC AFBF0024 */  sw         $ra, 0x24($sp)
/* 5D0C0 8005C4C0 AFB40020 */  sw         $s4, 0x20($sp)
/* 5D0C4 8005C4C4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5D0C8 8005C4C8 AFB20018 */  sw         $s2, 0x18($sp)
/* 5D0CC 8005C4CC AFB00010 */  sw         $s0, 0x10($sp)
/* 5D0D0 8005C4D0 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 5D0D4 8005C4D4 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 5D0D8 8005C4D8 D6200038 */  ldc1       $f0, 0x38($s1)
/* 5D0DC 8005C4DC 3C01800D */  lui        $at, %hi(D_800D4778)
/* 5D0E0 8005C4E0 D4364778 */  ldc1       $f22, %lo(D_800D4778)($at)
/* 5D0E4 8005C4E4 4636003C */  c.lt.d     $f0, $f22
/* 5D0E8 8005C4E8 00000000 */  nop
/* 5D0EC 8005C4EC 45000002 */  bc1f       .L8005C4F8
/* 5D0F0 8005C4F0 00000000 */   nop
/* 5D0F4 8005C4F4 F6360038 */  sdc1       $f22, 0x38($s1)
.L8005C4F8:
/* 5D0F8 8005C4F8 D62C0020 */  ldc1       $f12, 0x20($s1)
/* 5D0FC 8005C4FC D6200038 */  ldc1       $f0, 0x38($s1)
/* 5D100 8005C500 46206302 */  mul.d      $f12, $f12, $f0
/* 5D104 8005C504 D62A0028 */  ldc1       $f10, 0x28($s1)
/* 5D108 8005C508 D6200038 */  ldc1       $f0, 0x38($s1)
/* 5D10C 8005C50C 46205282 */  mul.d      $f10, $f10, $f0
/* 5D110 8005C510 D6280030 */  ldc1       $f8, 0x30($s1)
/* 5D114 8005C514 D6200038 */  ldc1       $f0, 0x38($s1)
/* 5D118 8005C518 46204202 */  mul.d      $f8, $f8, $f0
/* 5D11C 8005C51C D6260040 */  ldc1       $f6, 0x40($s1)
/* 5D120 8005C520 D6200058 */  ldc1       $f0, 0x58($s1)
/* 5D124 8005C524 46203182 */  mul.d      $f6, $f6, $f0
/* 5D128 8005C528 D6240048 */  ldc1       $f4, 0x48($s1)
/* 5D12C 8005C52C D6200058 */  ldc1       $f0, 0x58($s1)
/* 5D130 8005C530 46202102 */  mul.d      $f4, $f4, $f0
/* 5D134 8005C534 D6220058 */  ldc1       $f2, 0x58($s1)
/* 5D138 8005C538 D6200050 */  ldc1       $f0, 0x50($s1)
/* 5D13C 8005C53C 26240008 */  addiu      $a0, $s1, 0x8
/* 5D140 8005C540 46220002 */  mul.d      $f0, $f0, $f2
/* 5D144 8005C544 3C10802B */  lui        $s0, %hi(D_802AEA90)
/* 5D148 8005C548 2610EA90 */  addiu      $s0, $s0, %lo(D_802AEA90)
/* 5D14C 8005C54C F62C0020 */  sdc1       $f12, 0x20($s1)
/* 5D150 8005C550 F62A0028 */  sdc1       $f10, 0x28($s1)
/* 5D154 8005C554 F6280030 */  sdc1       $f8, 0x30($s1)
/* 5D158 8005C558 F6260040 */  sdc1       $f6, 0x40($s1)
/* 5D15C 8005C55C F6240048 */  sdc1       $f4, 0x48($s1)
/* 5D160 8005C560 F6200050 */  sdc1       $f0, 0x50($s1)
/* 5D164 8005C564 0C022B9C */  jal        func_8008AE70
/* 5D168 8005C568 02003021 */   addu      $a2, $s0, $zero
/* 5D16C 8005C56C 26340040 */  addiu      $s4, $s1, 0x40
/* 5D170 8005C570 02802021 */  addu       $a0, $s4, $zero
/* 5D174 8005C574 02002821 */  addu       $a1, $s0, $zero
/* 5D178 8005C578 3C12802B */  lui        $s2, %hi(D_802AEAA8)
/* 5D17C 8005C57C 2652EAA8 */  addiu      $s2, $s2, %lo(D_802AEAA8)
/* 5D180 8005C580 0C022C84 */  jal        func_8008B210
/* 5D184 8005C584 02403021 */   addu      $a2, $s2, $zero
/* 5D188 8005C588 26330020 */  addiu      $s3, $s1, 0x20
/* 5D18C 8005C58C 02602021 */  addu       $a0, $s3, $zero
/* 5D190 8005C590 0C022C70 */  jal        func_8008B1C0
/* 5D194 8005C594 02002821 */   addu      $a1, $s0, $zero
/* 5D198 8005C598 D6020000 */  ldc1       $f2, 0x0($s0)
/* 5D19C 8005C59C 46200506 */  mov.d      $f20, $f0
/* 5D1A0 8005C5A0 4622A082 */  mul.d      $f2, $f20, $f2
/* 5D1A4 8005C5A4 D6200020 */  ldc1       $f0, 0x20($s1)
/* 5D1A8 8005C5A8 D6040008 */  ldc1       $f4, 0x8($s0)
/* 5D1AC 8005C5AC 46220001 */  sub.d      $f0, $f0, $f2
/* 5D1B0 8005C5B0 D6420000 */  ldc1       $f2, 0x0($s2)
/* 5D1B4 8005C5B4 4624A102 */  mul.d      $f4, $f20, $f4
/* 5D1B8 8005C5B8 46201080 */  add.d      $f2, $f2, $f0
/* 5D1BC 8005C5BC F6420000 */  sdc1       $f2, 0x0($s2)
/* 5D1C0 8005C5C0 D6200028 */  ldc1       $f0, 0x28($s1)
/* 5D1C4 8005C5C4 46240001 */  sub.d      $f0, $f0, $f4
/* 5D1C8 8005C5C8 D6040010 */  ldc1       $f4, 0x10($s0)
/* 5D1CC 8005C5CC 3C01802B */  lui        $at, %hi(D_802AEAB0)
/* 5D1D0 8005C5D0 D422EAB0 */  ldc1       $f2, %lo(D_802AEAB0)($at)
/* 5D1D4 8005C5D4 4624A102 */  mul.d      $f4, $f20, $f4
/* 5D1D8 8005C5D8 46201080 */  add.d      $f2, $f2, $f0
/* 5D1DC 8005C5DC 3C01802B */  lui        $at, %hi(D_802AEAB0)
/* 5D1E0 8005C5E0 F422EAB0 */  sdc1       $f2, %lo(D_802AEAB0)($at)
/* 5D1E4 8005C5E4 D6200030 */  ldc1       $f0, 0x30($s1)
/* 5D1E8 8005C5E8 46240001 */  sub.d      $f0, $f0, $f4
/* 5D1EC 8005C5EC 3C01802B */  lui        $at, %hi(D_802AEAB8)
/* 5D1F0 8005C5F0 D422EAB8 */  ldc1       $f2, %lo(D_802AEAB8)($at)
/* 5D1F4 8005C5F4 46201080 */  add.d      $f2, $f2, $f0
/* 5D1F8 8005C5F8 4620A005 */  abs.d      $f0, $f20
/* 5D1FC 8005C5FC 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5D200 8005C600 F420EB38 */  sdc1       $f0, %lo(D_802AEB38)($at)
/* 5D204 8005C604 3C01802B */  lui        $at, %hi(D_802AEAB8)
/* 5D208 8005C608 F422EAB8 */  sdc1       $f2, %lo(D_802AEAB8)($at)
/* 5D20C 8005C60C 0C022CCC */  jal        func_8008B330
/* 5D210 8005C610 02402021 */   addu      $a0, $s2, $zero
/* 5D214 8005C614 3C01800C */  lui        $at, %hi(D_800C6A68)
/* 5D218 8005C618 D4206A68 */  ldc1       $f0, %lo(D_800C6A68)($at)
/* 5D21C 8005C61C 46340002 */  mul.d      $f0, $f0, $f20
/* 5D220 8005C620 46340500 */  add.d      $f20, $f0, $f20
/* 5D224 8005C624 4620A005 */  abs.d      $f0, $f20
/* 5D228 8005C628 4636003C */  c.lt.d     $f0, $f22
/* 5D22C 8005C62C 00000000 */  nop
/* 5D230 8005C630 45000003 */  bc1f       .L8005C640
/* 5D234 8005C634 00000000 */   nop
/* 5D238 8005C638 3C01800D */  lui        $at, %hi(D_800D4780)
/* 5D23C 8005C63C D4344780 */  ldc1       $f20, %lo(D_800D4780)($at)
.L8005C640:
/* 5D240 8005C640 D6020000 */  ldc1       $f2, 0x0($s0)
/* 5D244 8005C644 4622A082 */  mul.d      $f2, $f20, $f2
/* 5D248 8005C648 D6200020 */  ldc1       $f0, 0x20($s1)
/* 5D24C 8005C64C 46220001 */  sub.d      $f0, $f0, $f2
/* 5D250 8005C650 F6200020 */  sdc1       $f0, 0x20($s1)
/* 5D254 8005C654 D6020008 */  ldc1       $f2, 0x8($s0)
/* 5D258 8005C658 4622A082 */  mul.d      $f2, $f20, $f2
/* 5D25C 8005C65C D6200028 */  ldc1       $f0, 0x28($s1)
/* 5D260 8005C660 46220001 */  sub.d      $f0, $f0, $f2
/* 5D264 8005C664 F6200028 */  sdc1       $f0, 0x28($s1)
/* 5D268 8005C668 D6000010 */  ldc1       $f0, 0x10($s0)
/* 5D26C 8005C66C 4620A002 */  mul.d      $f0, $f20, $f0
/* 5D270 8005C670 D6220030 */  ldc1       $f2, 0x30($s1)
/* 5D274 8005C674 46201081 */  sub.d      $f2, $f2, $f0
/* 5D278 8005C678 F6220030 */  sdc1       $f2, 0x30($s1)
/* 5D27C 8005C67C 0C022CCC */  jal        func_8008B330
/* 5D280 8005C680 02602021 */   addu      $a0, $s3, $zero
/* 5D284 8005C684 3C01800C */  lui        $at, %hi(D_800C6A70)
/* 5D288 8005C688 D4246A70 */  ldc1       $f4, %lo(D_800C6A70)($at)
/* 5D28C 8005C68C 3C01800D */  lui        $at, %hi(D_800D4788)
/* 5D290 8005C690 D4224788 */  ldc1       $f2, %lo(D_800D4788)($at)
/* 5D294 8005C694 46222102 */  mul.d      $f4, $f4, $f2
/* 5D298 8005C698 02002021 */  addu       $a0, $s0, $zero
/* 5D29C 8005C69C 4620A085 */  abs.d      $f2, $f20
/* 5D2A0 8005C6A0 02402821 */  addu       $a1, $s2, $zero
/* 5D2A4 8005C6A4 46222502 */  mul.d      $f20, $f4, $f2
/* 5D2A8 8005C6A8 3C10802B */  lui        $s0, %hi(D_802AEB08)
/* 5D2AC 8005C6AC 2610EB08 */  addiu      $s0, $s0, %lo(D_802AEB08)
/* 5D2B0 8005C6B0 F6200038 */  sdc1       $f0, 0x38($s1)
/* 5D2B4 8005C6B4 0C022C84 */  jal        func_8008B210
/* 5D2B8 8005C6B8 02003021 */   addu      $a2, $s0, $zero
/* 5D2BC 8005C6BC D6020000 */  ldc1       $f2, 0x0($s0)
/* 5D2C0 8005C6C0 4622A082 */  mul.d      $f2, $f20, $f2
/* 5D2C4 8005C6C4 D6200040 */  ldc1       $f0, 0x40($s1)
/* 5D2C8 8005C6C8 46220001 */  sub.d      $f0, $f0, $f2
/* 5D2CC 8005C6CC F6200040 */  sdc1       $f0, 0x40($s1)
/* 5D2D0 8005C6D0 3C01802B */  lui        $at, %hi(D_802AEB10)
/* 5D2D4 8005C6D4 D422EB10 */  ldc1       $f2, %lo(D_802AEB10)($at)
/* 5D2D8 8005C6D8 4622A082 */  mul.d      $f2, $f20, $f2
/* 5D2DC 8005C6DC D6200048 */  ldc1       $f0, 0x48($s1)
/* 5D2E0 8005C6E0 46220001 */  sub.d      $f0, $f0, $f2
/* 5D2E4 8005C6E4 F6200048 */  sdc1       $f0, 0x48($s1)
/* 5D2E8 8005C6E8 3C01802B */  lui        $at, %hi(D_802AEB18)
/* 5D2EC 8005C6EC D420EB18 */  ldc1       $f0, %lo(D_802AEB18)($at)
/* 5D2F0 8005C6F0 4620A002 */  mul.d      $f0, $f20, $f0
/* 5D2F4 8005C6F4 D6220050 */  ldc1       $f2, 0x50($s1)
/* 5D2F8 8005C6F8 46201081 */  sub.d      $f2, $f2, $f0
/* 5D2FC 8005C6FC F6220050 */  sdc1       $f2, 0x50($s1)
/* 5D300 8005C700 0C022CCC */  jal        func_8008B330
/* 5D304 8005C704 02802021 */   addu      $a0, $s4, $zero
/* 5D308 8005C708 24020020 */  addiu      $v0, $zero, 0x20
/* 5D30C 8005C70C F6200058 */  sdc1       $f0, 0x58($s1)
/* 5D310 8005C710 A2220000 */  sb         $v0, 0x0($s1)
/* 5D314 8005C714 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5D318 8005C718 8FB40020 */  lw         $s4, 0x20($sp)
/* 5D31C 8005C71C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5D320 8005C720 8FB20018 */  lw         $s2, 0x18($sp)
/* 5D324 8005C724 8FB10014 */  lw         $s1, 0x14($sp)
/* 5D328 8005C728 8FB00010 */  lw         $s0, 0x10($sp)
/* 5D32C 8005C72C D7B60030 */  ldc1       $f22, 0x30($sp)
/* 5D330 8005C730 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 5D334 8005C734 03E00008 */  jr         $ra
/* 5D338 8005C738 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8005C73C
/* 5D33C 8005C73C 8CC30000 */  lw         $v1, 0x0($a2)
/* 5D340 8005C740 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5D344 8005C744 AFB00010 */  sw         $s0, 0x10($sp)
/* 5D348 8005C748 8CD00004 */  lw         $s0, 0x4($a2)
/* 5D34C 8005C74C AFB3001C */  sw         $s3, 0x1C($sp)
/* 5D350 8005C750 00809821 */  addu       $s3, $a0, $zero
/* 5D354 8005C754 AFB60028 */  sw         $s6, 0x28($sp)
/* 5D358 8005C758 00A0B021 */  addu       $s6, $a1, $zero
/* 5D35C 8005C75C AFBF002C */  sw         $ra, 0x2C($sp)
/* 5D360 8005C760 AFB50024 */  sw         $s5, 0x24($sp)
/* 5D364 8005C764 AFB40020 */  sw         $s4, 0x20($sp)
/* 5D368 8005C768 AFB20018 */  sw         $s2, 0x18($sp)
/* 5D36C 8005C76C AFB10014 */  sw         $s1, 0x14($sp)
/* 5D370 8005C770 000310C0 */  sll        $v0, $v1, 3
/* 5D374 8005C774 00431023 */  subu       $v0, $v0, $v1
/* 5D378 8005C778 00021100 */  sll        $v0, $v0, 4
/* 5D37C 8005C77C 02628821 */  addu       $s1, $s3, $v0
/* 5D380 8005C780 00031100 */  sll        $v0, $v1, 4
/* 5D384 8005C784 00431023 */  subu       $v0, $v0, $v1
/* 5D388 8005C788 00021100 */  sll        $v0, $v0, 4
/* 5D38C 8005C78C 0C0169A2 */  jal        func_8005A688
/* 5D390 8005C790 02C29021 */   addu      $s2, $s6, $v0
/* 5D394 8005C794 3C01802D */  lui        $at, %hi(D_802D0980)
/* 5D398 8005C798 D4200980 */  ldc1       $f0, %lo(D_802D0980)($at)
/* 5D39C 8005C79C 00402821 */  addu       $a1, $v0, $zero
/* 5D3A0 8005C7A0 24020080 */  addiu      $v0, $zero, 0x80
/* 5D3A4 8005C7A4 F6400070 */  sdc1       $f0, 0x70($s2)
/* 5D3A8 8005C7A8 16020006 */  bne        $s0, $v0, .L8005C7C4
/* 5D3AC 8005C7AC 24020040 */   addiu     $v0, $zero, 0x40
/* 5D3B0 8005C7B0 02202021 */  addu       $a0, $s1, $zero
/* 5D3B4 8005C7B4 0C016A09 */  jal        func_8005A824
/* 5D3B8 8005C7B8 02402821 */   addu      $a1, $s2, $zero
/* 5D3BC 8005C7BC 08017275 */  j          .L8005C9D4
/* 5D3C0 8005C7C0 00000000 */   nop
.L8005C7C4:
/* 5D3C4 8005C7C4 16020011 */  bne        $s0, $v0, .L8005C80C
/* 5D3C8 8005C7C8 00101602 */   srl       $v0, $s0, 24
/* 5D3CC 8005C7CC 0C016A29 */  jal        func_8005A8A4
/* 5D3D0 8005C7D0 02202021 */   addu      $a0, $s1, $zero
/* 5D3D4 8005C7D4 02202021 */  addu       $a0, $s1, $zero
/* 5D3D8 8005C7D8 0C01CEB4 */  jal        func_80073AD0
/* 5D3DC 8005C7DC 02402821 */   addu      $a1, $s2, $zero
/* 5D3E0 8005C7E0 82230000 */  lb         $v1, 0x0($s1)
/* 5D3E4 8005C7E4 24020008 */  addiu      $v0, $zero, 0x8
/* 5D3E8 8005C7E8 14620003 */  bne        $v1, $v0, .L8005C7F8
/* 5D3EC 8005C7EC 00000000 */   nop
/* 5D3F0 8005C7F0 0C01ECA4 */  jal        func_8007B290
/* 5D3F4 8005C7F4 02402021 */   addu      $a0, $s2, $zero
.L8005C7F8:
/* 5D3F8 8005C7F8 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5D3FC 8005C7FC 0C01D73B */  jal        func_80075CEC
/* 5D400 8005C800 D42CEB38 */   ldc1      $f12, %lo(D_802AEB38)($at)
/* 5D404 8005C804 08017275 */  j          .L8005C9D4
/* 5D408 8005C808 00000000 */   nop
.L8005C80C:
/* 5D40C 8005C80C 3046000F */  andi       $a2, $v0, 0xF
/* 5D410 8005C810 10C0000F */  beqz       $a2, .L8005C850
/* 5D414 8005C814 02202021 */   addu      $a0, $s1, $zero
/* 5D418 8005C818 00101F02 */  srl        $v1, $s0, 28
/* 5D41C 8005C81C 000310C0 */  sll        $v0, $v1, 3
/* 5D420 8005C820 00431021 */  addu       $v0, $v0, $v1
/* 5D424 8005C824 00021080 */  sll        $v0, $v0, 2
/* 5D428 8005C828 00451021 */  addu       $v0, $v0, $a1
/* 5D42C 8005C82C 00062840 */  sll        $a1, $a2, 1
/* 5D430 8005C830 00A62821 */  addu       $a1, $a1, $a2
/* 5D434 8005C834 8C42FFFC */  lw         $v0, -0x4($v0)
/* 5D438 8005C838 000528C0 */  sll        $a1, $a1, 3
/* 5D43C 8005C83C 24A5FFE8 */  addiu      $a1, $a1, -0x18
/* 5D440 8005C840 0C01712C */  jal        func_8005C4B0
/* 5D444 8005C844 00452821 */   addu      $a1, $v0, $a1
/* 5D448 8005C848 0801723F */  j          .L8005C8FC
/* 5D44C 8005C84C 02202021 */   addu      $a0, $s1, $zero
.L8005C850:
/* 5D450 8005C850 00101502 */  srl        $v0, $s0, 20
/* 5D454 8005C854 3046000F */  andi       $a2, $v0, 0xF
/* 5D458 8005C858 10C00019 */  beqz       $a2, .L8005C8C0
/* 5D45C 8005C85C 00102702 */   srl       $a0, $s0, 28
/* 5D460 8005C860 000418C0 */  sll        $v1, $a0, 3
/* 5D464 8005C864 00641821 */  addu       $v1, $v1, $a0
/* 5D468 8005C868 00031880 */  sll        $v1, $v1, 2
/* 5D46C 8005C86C 00651821 */  addu       $v1, $v1, $a1
/* 5D470 8005C870 00061040 */  sll        $v0, $a2, 1
/* 5D474 8005C874 00461021 */  addu       $v0, $v0, $a2
/* 5D478 8005C878 8C63FFF8 */  lw         $v1, -0x8($v1)
/* 5D47C 8005C87C 00021100 */  sll        $v0, $v0, 4
/* 5D480 8005C880 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 5D484 8005C884 28840007 */  slti       $a0, $a0, 0x7
/* 5D488 8005C888 00622821 */  addu       $a1, $v1, $v0
/* 5D48C 8005C88C 38C20003 */  xori       $v0, $a2, 0x3
/* 5D490 8005C890 2C420001 */  sltiu      $v0, $v0, 0x1
/* 5D494 8005C894 00822024 */  and        $a0, $a0, $v0
/* 5D498 8005C898 10800005 */  beqz       $a0, .L8005C8B0
/* 5D49C 8005C89C 00000000 */   nop
/* 5D4A0 8005C8A0 0C016F08 */  jal        func_8005BC20
/* 5D4A4 8005C8A4 02202021 */   addu      $a0, $s1, $zero
/* 5D4A8 8005C8A8 0801723F */  j          .L8005C8FC
/* 5D4AC 8005C8AC 02202021 */   addu      $a0, $s1, $zero
.L8005C8B0:
/* 5D4B0 8005C8B0 0C016DCF */  jal        func_8005B73C
/* 5D4B4 8005C8B4 02202021 */   addu      $a0, $s1, $zero
/* 5D4B8 8005C8B8 0801723F */  j          .L8005C8FC
/* 5D4BC 8005C8BC 02202021 */   addu      $a0, $s1, $zero
.L8005C8C0:
/* 5D4C0 8005C8C0 00101402 */  srl        $v0, $s0, 16
/* 5D4C4 8005C8C4 3046000F */  andi       $a2, $v0, 0xF
/* 5D4C8 8005C8C8 10C00013 */  beqz       $a2, .L8005C918
/* 5D4CC 8005C8CC 02202021 */   addu      $a0, $s1, $zero
/* 5D4D0 8005C8D0 00101F02 */  srl        $v1, $s0, 28
/* 5D4D4 8005C8D4 000310C0 */  sll        $v0, $v1, 3
/* 5D4D8 8005C8D8 00431021 */  addu       $v0, $v0, $v1
/* 5D4DC 8005C8DC 00021080 */  sll        $v0, $v0, 2
/* 5D4E0 8005C8E0 00451021 */  addu       $v0, $v0, $a1
/* 5D4E4 8005C8E4 8C42FFF4 */  lw         $v0, -0xC($v0)
/* 5D4E8 8005C8E8 00062940 */  sll        $a1, $a2, 5
/* 5D4EC 8005C8EC 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 5D4F0 8005C8F0 0C016C6E */  jal        func_8005B1B8
/* 5D4F4 8005C8F4 00452821 */   addu      $a1, $v0, $a1
/* 5D4F8 8005C8F8 02202021 */  addu       $a0, $s1, $zero
.L8005C8FC:
/* 5D4FC 8005C8FC 0C01CEB4 */  jal        func_80073AD0
/* 5D500 8005C900 02402821 */   addu      $a1, $s2, $zero
/* 5D504 8005C904 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5D508 8005C908 0C01D70E */  jal        func_80075C38
/* 5D50C 8005C90C D42CEB38 */   ldc1      $f12, %lo(D_802AEB38)($at)
/* 5D510 8005C910 08017275 */  j          .L8005C9D4
/* 5D514 8005C914 00000000 */   nop
.L8005C918:
/* 5D518 8005C918 3202F800 */  andi       $v0, $s0, 0xF800
/* 5D51C 8005C91C 000232C2 */  srl        $a2, $v0, 11
/* 5D520 8005C920 10C00024 */  beqz       $a2, .L8005C9B4
/* 5D524 8005C924 000610C0 */   sll       $v0, $a2, 3
/* 5D528 8005C928 00461023 */  subu       $v0, $v0, $a2
/* 5D52C 8005C92C 00021100 */  sll        $v0, $v0, 4
/* 5D530 8005C930 0262A821 */  addu       $s5, $s3, $v0
/* 5D534 8005C934 26B4FF90 */  addiu      $s4, $s5, -0x70
/* 5D538 8005C938 02802821 */  addu       $a1, $s4, $zero
/* 5D53C 8005C93C 00061100 */  sll        $v0, $a2, 4
/* 5D540 8005C940 00461023 */  subu       $v0, $v0, $a2
/* 5D544 8005C944 00021100 */  sll        $v0, $v0, 4
/* 5D548 8005C948 0C016ABB */  jal        func_8005AAEC
/* 5D54C 8005C94C 02C29821 */   addu      $s3, $s6, $v0
/* 5D550 8005C950 02202021 */  addu       $a0, $s1, $zero
/* 5D554 8005C954 0C01CEB4 */  jal        func_80073AD0
/* 5D558 8005C958 02402821 */   addu      $a1, $s2, $zero
/* 5D55C 8005C95C 82220000 */  lb         $v0, 0x0($s1)
/* 5D560 8005C960 24110008 */  addiu      $s1, $zero, 0x8
/* 5D564 8005C964 14510003 */  bne        $v0, $s1, .L8005C974
/* 5D568 8005C968 2670FF10 */   addiu     $s0, $s3, -0xF0
/* 5D56C 8005C96C 0C01ECA4 */  jal        func_8007B290
/* 5D570 8005C970 02402021 */   addu      $a0, $s2, $zero
.L8005C974:
/* 5D574 8005C974 02802021 */  addu       $a0, $s4, $zero
/* 5D578 8005C978 0C01CEB4 */  jal        func_80073AD0
/* 5D57C 8005C97C 02002821 */   addu      $a1, $s0, $zero
/* 5D580 8005C980 3C01802D */  lui        $at, %hi(D_802D0980)
/* 5D584 8005C984 D4200980 */  ldc1       $f0, %lo(D_802D0980)($at)
/* 5D588 8005C988 F660FF80 */  sdc1       $f0, -0x80($s3)
/* 5D58C 8005C98C 82A2FF90 */  lb         $v0, -0x70($s5)
/* 5D590 8005C990 14510003 */  bne        $v0, $s1, .L8005C9A0
/* 5D594 8005C994 00000000 */   nop
/* 5D598 8005C998 0C01ECA4 */  jal        func_8007B290
/* 5D59C 8005C99C 02002021 */   addu      $a0, $s0, $zero
.L8005C9A0:
/* 5D5A0 8005C9A0 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5D5A4 8005C9A4 0C01D3B4 */  jal        func_80074ED0
/* 5D5A8 8005C9A8 D42CEB38 */   ldc1      $f12, %lo(D_802AEB38)($at)
/* 5D5AC 8005C9AC 08017275 */  j          .L8005C9D4
/* 5D5B0 8005C9B0 00000000 */   nop
.L8005C9B4:
/* 5D5B4 8005C9B4 32020700 */  andi       $v0, $s0, 0x700
/* 5D5B8 8005C9B8 10400006 */  beqz       $v0, .L8005C9D4
/* 5D5BC 8005C9BC 02202021 */   addu      $a0, $s1, $zero
/* 5D5C0 8005C9C0 0C016A17 */  jal        func_8005A85C
/* 5D5C4 8005C9C4 02402821 */   addu      $a1, $s2, $zero
/* 5D5C8 8005C9C8 3C01802B */  lui        $at, %hi(D_802AEB38)
/* 5D5CC 8005C9CC 0C01D722 */  jal        func_80075C88
/* 5D5D0 8005C9D0 D42CEB38 */   ldc1      $f12, %lo(D_802AEB38)($at)
.L8005C9D4:
/* 5D5D4 8005C9D4 8FBF002C */  lw         $ra, 0x2C($sp)
/* 5D5D8 8005C9D8 8FB60028 */  lw         $s6, 0x28($sp)
/* 5D5DC 8005C9DC 8FB50024 */  lw         $s5, 0x24($sp)
/* 5D5E0 8005C9E0 8FB40020 */  lw         $s4, 0x20($sp)
/* 5D5E4 8005C9E4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5D5E8 8005C9E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 5D5EC 8005C9EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 5D5F0 8005C9F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 5D5F4 8005C9F4 03E00008 */  jr         $ra
/* 5D5F8 8005C9F8 27BD0030 */   addiu     $sp, $sp, 0x30
/* 5D5FC 8005C9FC 00000000 */  nop
