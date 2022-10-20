.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8004B630
/* 4C230 8004B630 3C02800C */  lui        $v0, %hi(D_800C46F0)
/* 4C234 8004B634 244246F0 */  addiu      $v0, $v0, %lo(D_800C46F0)
/* 4C238 8004B638 24070008 */  addiu      $a3, $zero, 0x8
/* 4C23C 8004B63C 3C03802D */  lui        $v1, %hi(D_802D1FE8)
/* 4C240 8004B640 24631FE8 */  addiu      $v1, $v1, %lo(D_802D1FE8)
.L8004B644:
/* 4C244 8004B644 C4400000 */  lwc1       $f0, 0x0($v0)
/* 4C248 8004B648 E460FD78 */  swc1       $f0, -0x288($v1)
/* 4C24C 8004B64C C4400000 */  lwc1       $f0, 0x0($v0)
/* 4C250 8004B650 24420004 */  addiu      $v0, $v0, 0x4
/* 4C254 8004B654 E460FFF8 */  swc1       $f0, -0x8($v1)
/* 4C258 8004B658 C4400000 */  lwc1       $f0, 0x0($v0)
/* 4C25C 8004B65C E460FD7C */  swc1       $f0, -0x284($v1)
/* 4C260 8004B660 C4400000 */  lwc1       $f0, 0x0($v0)
/* 4C264 8004B664 24420004 */  addiu      $v0, $v0, 0x4
/* 4C268 8004B668 E460FFFC */  swc1       $f0, -0x4($v1)
/* 4C26C 8004B66C C4400000 */  lwc1       $f0, 0x0($v0)
/* 4C270 8004B670 E460FD80 */  swc1       $f0, -0x280($v1)
/* 4C274 8004B674 C4400000 */  lwc1       $f0, 0x0($v0)
/* 4C278 8004B678 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 4C27C 8004B67C 24420004 */  addiu      $v0, $v0, 0x4
/* 4C280 8004B680 E4600000 */  swc1       $f0, 0x0($v1)
/* 4C284 8004B684 14E0FFEF */  bnez       $a3, .L8004B644
/* 4C288 8004B688 24630050 */   addiu     $v1, $v1, 0x50
/* 4C28C 8004B68C 3C01800D */  lui        $at, %hi(D_800D3A88)
/* 4C290 8004B690 D4283A88 */  ldc1       $f8, %lo(D_800D3A88)($at)
/* 4C294 8004B694 3C01800D */  lui        $at, %hi(D_800D3A90)
/* 4C298 8004B698 D4263A90 */  ldc1       $f6, %lo(D_800D3A90)($at)
/* 4C29C 8004B69C 3C01800D */  lui        $at, %hi(D_800D3A98)
/* 4C2A0 8004B6A0 D4243A98 */  ldc1       $f4, %lo(D_800D3A98)($at)
/* 4C2A4 8004B6A4 3C088000 */  lui        $t0, (0x80000000 >> 16)
/* 4C2A8 8004B6A8 3C01800D */  lui        $at, %hi(D_800D3A80)
/* 4C2AC 8004B6AC C4203A80 */  lwc1       $f0, %lo(D_800D3A80)($at)
/* 4C2B0 8004B6B0 00003021 */  addu       $a2, $zero, $zero
/* 4C2B4 8004B6B4 00002821 */  addu       $a1, $zero, $zero
/* 4C2B8 8004B6B8 3C01802D */  lui        $at, %hi(D_802D1D60)
/* 4C2BC 8004B6BC E4201D60 */  swc1       $f0, %lo(D_802D1D60)($at)
/* 4C2C0 8004B6C0 3C01802D */  lui        $at, %hi(D_802D1D64)
/* 4C2C4 8004B6C4 E4201D64 */  swc1       $f0, %lo(D_802D1D64)($at)
/* 4C2C8 8004B6C8 3C01802D */  lui        $at, %hi(D_802D1D68)
/* 4C2CC 8004B6CC E4201D68 */  swc1       $f0, %lo(D_802D1D68)($at)
.L8004B6D0:
/* 4C2D0 8004B6D0 3C01802D */  lui        $at, %hi(D_802D1D60)
/* 4C2D4 8004B6D4 00260821 */  addu       $at, $at, $a2
/* 4C2D8 8004B6D8 C4201D60 */  lwc1       $f0, %lo(D_802D1D60)($at)
/* 4C2DC 8004B6DC 46000021 */  cvt.d.s    $f0, $f0
/* 4C2E0 8004B6E0 46280002 */  mul.d      $f0, $f0, $f8
/* 4C2E4 8004B6E4 46260080 */  add.d      $f2, $f0, $f6
/* 4C2E8 8004B6E8 4622203E */  c.le.d     $f4, $f2
/* 4C2EC 8004B6EC 00000000 */  nop
/* 4C2F0 8004B6F0 00000000 */  nop
/* 4C2F4 8004B6F4 45030005 */  bc1tl      .L8004B70C
/* 4C2F8 8004B6F8 46241001 */   sub.d     $f0, $f2, $f4
/* 4C2FC 8004B6FC 4620100D */  trunc.w.d  $f0, $f2
/* 4C300 8004B700 44030000 */  mfc1       $v1, $f0
/* 4C304 8004B704 08012DC7 */  j          .L8004B71C
/* 4C308 8004B708 00000000 */   nop
.L8004B70C:
/* 4C30C 8004B70C 4620008D */  trunc.w.d  $f2, $f0
/* 4C310 8004B710 44031000 */  mfc1       $v1, $f2
/* 4C314 8004B714 00000000 */  nop
/* 4C318 8004B718 00681825 */  or         $v1, $v1, $t0
.L8004B71C:
/* 4C31C 8004B71C 3C01802F */  lui        $at, %hi(D_802F06F8)
/* 4C320 8004B720 00250821 */  addu       $at, $at, $a1
/* 4C324 8004B724 A02306F8 */  sb         $v1, %lo(D_802F06F8)($at)
/* 4C328 8004B728 3C01802D */  lui        $at, %hi(D_802D1D64)
/* 4C32C 8004B72C 00260821 */  addu       $at, $at, $a2
/* 4C330 8004B730 C4201D64 */  lwc1       $f0, %lo(D_802D1D64)($at)
/* 4C334 8004B734 46000021 */  cvt.d.s    $f0, $f0
/* 4C338 8004B738 46280002 */  mul.d      $f0, $f0, $f8
/* 4C33C 8004B73C 46260080 */  add.d      $f2, $f0, $f6
/* 4C340 8004B740 4622203E */  c.le.d     $f4, $f2
/* 4C344 8004B744 00000000 */  nop
/* 4C348 8004B748 00000000 */  nop
/* 4C34C 8004B74C 45010005 */  bc1t       .L8004B764
/* 4C350 8004B750 00A02021 */   addu      $a0, $a1, $zero
/* 4C354 8004B754 4620100D */  trunc.w.d  $f0, $f2
/* 4C358 8004B758 44030000 */  mfc1       $v1, $f0
/* 4C35C 8004B75C 08012DDE */  j          .L8004B778
/* 4C360 8004B760 00000000 */   nop
.L8004B764:
/* 4C364 8004B764 46241001 */  sub.d      $f0, $f2, $f4
/* 4C368 8004B768 4620008D */  trunc.w.d  $f2, $f0
/* 4C36C 8004B76C 44031000 */  mfc1       $v1, $f2
/* 4C370 8004B770 00000000 */  nop
/* 4C374 8004B774 00681825 */  or         $v1, $v1, $t0
.L8004B778:
/* 4C378 8004B778 3C01802F */  lui        $at, %hi(D_802F06F9)
/* 4C37C 8004B77C 00240821 */  addu       $at, $at, $a0
/* 4C380 8004B780 A02306F9 */  sb         $v1, %lo(D_802F06F9)($at)
/* 4C384 8004B784 3C01802D */  lui        $at, %hi(D_802D1D68)
/* 4C388 8004B788 00260821 */  addu       $at, $at, $a2
/* 4C38C 8004B78C C4201D68 */  lwc1       $f0, %lo(D_802D1D68)($at)
/* 4C390 8004B790 46000021 */  cvt.d.s    $f0, $f0
/* 4C394 8004B794 46280002 */  mul.d      $f0, $f0, $f8
/* 4C398 8004B798 46260080 */  add.d      $f2, $f0, $f6
/* 4C39C 8004B79C 4622203E */  c.le.d     $f4, $f2
/* 4C3A0 8004B7A0 00000000 */  nop
/* 4C3A4 8004B7A4 00000000 */  nop
/* 4C3A8 8004B7A8 45010005 */  bc1t       .L8004B7C0
/* 4C3AC 8004B7AC 00A02021 */   addu      $a0, $a1, $zero
/* 4C3B0 8004B7B0 4620100D */  trunc.w.d  $f0, $f2
/* 4C3B4 8004B7B4 44030000 */  mfc1       $v1, $f0
/* 4C3B8 8004B7B8 08012DF5 */  j          .L8004B7D4
/* 4C3BC 8004B7BC 00000000 */   nop
.L8004B7C0:
/* 4C3C0 8004B7C0 46241001 */  sub.d      $f0, $f2, $f4
/* 4C3C4 8004B7C4 4620008D */  trunc.w.d  $f2, $f0
/* 4C3C8 8004B7C8 44031000 */  mfc1       $v1, $f2
/* 4C3CC 8004B7CC 00000000 */  nop
/* 4C3D0 8004B7D0 00681825 */  or         $v1, $v1, $t0
.L8004B7D4:
/* 4C3D4 8004B7D4 3C01802F */  lui        $at, %hi(D_802F06FA)
/* 4C3D8 8004B7D8 00240821 */  addu       $at, $at, $a0
/* 4C3DC 8004B7DC A02306FA */  sb         $v1, %lo(D_802F06FA)($at)
/* 4C3E0 8004B7E0 24C60050 */  addiu      $a2, $a2, 0x50
/* 4C3E4 8004B7E4 24E70001 */  addiu      $a3, $a3, 0x1
/* 4C3E8 8004B7E8 28E20010 */  slti       $v0, $a3, 0x10
/* 4C3EC 8004B7EC 1440FFB8 */  bnez       $v0, .L8004B6D0
/* 4C3F0 8004B7F0 24A50003 */   addiu     $a1, $a1, 0x3
/* 4C3F4 8004B7F4 03E00008 */  jr         $ra
/* 4C3F8 8004B7F8 00000000 */   nop

glabel func_8004B7FC
/* 4C3FC 8004B7FC 3C03800C */  lui        $v1, %hi(D_800C46F0)
/* 4C400 8004B800 246346F0 */  addiu      $v1, $v1, %lo(D_800C46F0)
/* 4C404 8004B804 C4600000 */  lwc1       $f0, 0x0($v1)
/* 4C408 8004B808 24630004 */  addiu      $v1, $v1, 0x4
/* 4C40C 8004B80C 24050007 */  addiu      $a1, $zero, 0x7
/* 4C410 8004B810 3C01802D */  lui        $at, %hi(D_802D1FE0)
/* 4C414 8004B814 E4201FE0 */  swc1       $f0, %lo(D_802D1FE0)($at)
/* 4C418 8004B818 C4600000 */  lwc1       $f0, 0x0($v1)
/* 4C41C 8004B81C 3C04802D */  lui        $a0, %hi(D_802D1D70)
/* 4C420 8004B820 24841D70 */  addiu      $a0, $a0, %lo(D_802D1D70)
/* 4C424 8004B824 24630004 */  addiu      $v1, $v1, 0x4
/* 4C428 8004B828 3C01802D */  lui        $at, %hi(D_802D1FE4)
/* 4C42C 8004B82C E4201FE4 */  swc1       $f0, %lo(D_802D1FE4)($at)
/* 4C430 8004B830 C4600000 */  lwc1       $f0, 0x0($v1)
/* 4C434 8004B834 24820048 */  addiu      $v0, $a0, 0x48
/* 4C438 8004B838 24630004 */  addiu      $v1, $v1, 0x4
/* 4C43C 8004B83C 3C01802D */  lui        $at, %hi(D_802D1FE8)
/* 4C440 8004B840 E4201FE8 */  swc1       $f0, %lo(D_802D1FE8)($at)
.L8004B844:
/* 4C444 8004B844 C4600000 */  lwc1       $f0, 0x0($v1)
/* 4C448 8004B848 E440FFF8 */  swc1       $f0, -0x8($v0)
/* 4C44C 8004B84C C4600004 */  lwc1       $f0, 0x4($v1)
/* 4C450 8004B850 E440FFFC */  swc1       $f0, -0x4($v0)
/* 4C454 8004B854 C4600008 */  lwc1       $f0, 0x8($v1)
/* 4C458 8004B858 24840050 */  addiu      $a0, $a0, 0x50
/* 4C45C 8004B85C 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 4C460 8004B860 E4400000 */  swc1       $f0, 0x0($v0)
/* 4C464 8004B864 14A0FFF7 */  bnez       $a1, .L8004B844
/* 4C468 8004B868 24420050 */   addiu     $v0, $v0, 0x50
/* 4C46C 8004B86C 2463000C */  addiu      $v1, $v1, 0xC
/* 4C470 8004B870 24050007 */  addiu      $a1, $zero, 0x7
/* 4C474 8004B874 24820098 */  addiu      $v0, $a0, 0x98
.L8004B878:
/* 4C478 8004B878 C4600000 */  lwc1       $f0, 0x0($v1)
/* 4C47C 8004B87C E440FFF8 */  swc1       $f0, -0x8($v0)
/* 4C480 8004B880 C4600004 */  lwc1       $f0, 0x4($v1)
/* 4C484 8004B884 E440FFFC */  swc1       $f0, -0x4($v0)
/* 4C488 8004B888 C4600008 */  lwc1       $f0, 0x8($v1)
/* 4C48C 8004B88C 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 4C490 8004B890 E4400000 */  swc1       $f0, 0x0($v0)
/* 4C494 8004B894 14A0FFF8 */  bnez       $a1, .L8004B878
/* 4C498 8004B898 24420050 */   addiu     $v0, $v0, 0x50
/* 4C49C 8004B89C 3C01800D */  lui        $at, %hi(D_800D3AA0)
/* 4C4A0 8004B8A0 D4283AA0 */  ldc1       $f8, %lo(D_800D3AA0)($at)
/* 4C4A4 8004B8A4 3C01800D */  lui        $at, %hi(D_800D3AA8)
/* 4C4A8 8004B8A8 D4263AA8 */  ldc1       $f6, %lo(D_800D3AA8)($at)
/* 4C4AC 8004B8AC 3C01800D */  lui        $at, %hi(D_800D3AB0)
/* 4C4B0 8004B8B0 D4243AB0 */  ldc1       $f4, %lo(D_800D3AB0)($at)
/* 4C4B4 8004B8B4 3C088000 */  lui        $t0, (0x80000000 >> 16)
/* 4C4B8 8004B8B8 3C01800D */  lui        $at, %hi(D_800D3A80)
/* 4C4BC 8004B8BC C4203A80 */  lwc1       $f0, %lo(D_800D3A80)($at)
/* 4C4C0 8004B8C0 00003821 */  addu       $a3, $zero, $zero
/* 4C4C4 8004B8C4 00003021 */  addu       $a2, $zero, $zero
/* 4C4C8 8004B8C8 3C01802D */  lui        $at, %hi(D_802D1D60)
/* 4C4CC 8004B8CC E4201D60 */  swc1       $f0, %lo(D_802D1D60)($at)
/* 4C4D0 8004B8D0 3C01802D */  lui        $at, %hi(D_802D1D64)
/* 4C4D4 8004B8D4 E4201D64 */  swc1       $f0, %lo(D_802D1D64)($at)
/* 4C4D8 8004B8D8 3C01802D */  lui        $at, %hi(D_802D1D68)
/* 4C4DC 8004B8DC E4201D68 */  swc1       $f0, %lo(D_802D1D68)($at)
.L8004B8E0:
/* 4C4E0 8004B8E0 3C01802D */  lui        $at, %hi(D_802D1D60)
/* 4C4E4 8004B8E4 00270821 */  addu       $at, $at, $a3
/* 4C4E8 8004B8E8 C4201D60 */  lwc1       $f0, %lo(D_802D1D60)($at)
/* 4C4EC 8004B8EC 46000021 */  cvt.d.s    $f0, $f0
/* 4C4F0 8004B8F0 46280002 */  mul.d      $f0, $f0, $f8
/* 4C4F4 8004B8F4 46260080 */  add.d      $f2, $f0, $f6
/* 4C4F8 8004B8F8 4622203E */  c.le.d     $f4, $f2
/* 4C4FC 8004B8FC 00000000 */  nop
/* 4C500 8004B900 00000000 */  nop
/* 4C504 8004B904 45030005 */  bc1tl      .L8004B91C
/* 4C508 8004B908 46241001 */   sub.d     $f0, $f2, $f4
/* 4C50C 8004B90C 4620100D */  trunc.w.d  $f0, $f2
/* 4C510 8004B910 44030000 */  mfc1       $v1, $f0
/* 4C514 8004B914 08012E4B */  j          .L8004B92C
/* 4C518 8004B918 00000000 */   nop
.L8004B91C:
/* 4C51C 8004B91C 4620008D */  trunc.w.d  $f2, $f0
/* 4C520 8004B920 44031000 */  mfc1       $v1, $f2
/* 4C524 8004B924 00000000 */  nop
/* 4C528 8004B928 00681825 */  or         $v1, $v1, $t0
.L8004B92C:
/* 4C52C 8004B92C 3C01802F */  lui        $at, %hi(D_802F06F8)
/* 4C530 8004B930 00260821 */  addu       $at, $at, $a2
/* 4C534 8004B934 A02306F8 */  sb         $v1, %lo(D_802F06F8)($at)
/* 4C538 8004B938 3C01802D */  lui        $at, %hi(D_802D1D64)
/* 4C53C 8004B93C 00270821 */  addu       $at, $at, $a3
/* 4C540 8004B940 C4201D64 */  lwc1       $f0, %lo(D_802D1D64)($at)
/* 4C544 8004B944 46000021 */  cvt.d.s    $f0, $f0
/* 4C548 8004B948 46280002 */  mul.d      $f0, $f0, $f8
/* 4C54C 8004B94C 46260080 */  add.d      $f2, $f0, $f6
/* 4C550 8004B950 4622203E */  c.le.d     $f4, $f2
/* 4C554 8004B954 00000000 */  nop
/* 4C558 8004B958 00000000 */  nop
/* 4C55C 8004B95C 45010005 */  bc1t       .L8004B974
/* 4C560 8004B960 00C02021 */   addu      $a0, $a2, $zero
/* 4C564 8004B964 4620100D */  trunc.w.d  $f0, $f2
/* 4C568 8004B968 44030000 */  mfc1       $v1, $f0
/* 4C56C 8004B96C 08012E62 */  j          .L8004B988
/* 4C570 8004B970 00000000 */   nop
.L8004B974:
/* 4C574 8004B974 46241001 */  sub.d      $f0, $f2, $f4
/* 4C578 8004B978 4620008D */  trunc.w.d  $f2, $f0
/* 4C57C 8004B97C 44031000 */  mfc1       $v1, $f2
/* 4C580 8004B980 00000000 */  nop
/* 4C584 8004B984 00681825 */  or         $v1, $v1, $t0
.L8004B988:
/* 4C588 8004B988 3C01802F */  lui        $at, %hi(D_802F06F9)
/* 4C58C 8004B98C 00240821 */  addu       $at, $at, $a0
/* 4C590 8004B990 A02306F9 */  sb         $v1, %lo(D_802F06F9)($at)
/* 4C594 8004B994 3C01802D */  lui        $at, %hi(D_802D1D68)
/* 4C598 8004B998 00270821 */  addu       $at, $at, $a3
/* 4C59C 8004B99C C4201D68 */  lwc1       $f0, %lo(D_802D1D68)($at)
/* 4C5A0 8004B9A0 46000021 */  cvt.d.s    $f0, $f0
/* 4C5A4 8004B9A4 46280002 */  mul.d      $f0, $f0, $f8
/* 4C5A8 8004B9A8 46260080 */  add.d      $f2, $f0, $f6
/* 4C5AC 8004B9AC 4622203E */  c.le.d     $f4, $f2
/* 4C5B0 8004B9B0 00000000 */  nop
/* 4C5B4 8004B9B4 00000000 */  nop
/* 4C5B8 8004B9B8 45010005 */  bc1t       .L8004B9D0
/* 4C5BC 8004B9BC 00C02021 */   addu      $a0, $a2, $zero
/* 4C5C0 8004B9C0 4620100D */  trunc.w.d  $f0, $f2
/* 4C5C4 8004B9C4 44030000 */  mfc1       $v1, $f0
/* 4C5C8 8004B9C8 08012E79 */  j          .L8004B9E4
/* 4C5CC 8004B9CC 00000000 */   nop
.L8004B9D0:
/* 4C5D0 8004B9D0 46241001 */  sub.d      $f0, $f2, $f4
/* 4C5D4 8004B9D4 4620008D */  trunc.w.d  $f2, $f0
/* 4C5D8 8004B9D8 44031000 */  mfc1       $v1, $f2
/* 4C5DC 8004B9DC 00000000 */  nop
/* 4C5E0 8004B9E0 00681825 */  or         $v1, $v1, $t0
.L8004B9E4:
/* 4C5E4 8004B9E4 3C01802F */  lui        $at, %hi(D_802F06FA)
/* 4C5E8 8004B9E8 00240821 */  addu       $at, $at, $a0
/* 4C5EC 8004B9EC A02306FA */  sb         $v1, %lo(D_802F06FA)($at)
/* 4C5F0 8004B9F0 24E70050 */  addiu      $a3, $a3, 0x50
/* 4C5F4 8004B9F4 24A50001 */  addiu      $a1, $a1, 0x1
/* 4C5F8 8004B9F8 28A20010 */  slti       $v0, $a1, 0x10
/* 4C5FC 8004B9FC 1440FFB8 */  bnez       $v0, .L8004B8E0
/* 4C600 8004BA00 24C60003 */   addiu     $a2, $a2, 0x3
/* 4C604 8004BA04 03E00008 */  jr         $ra
/* 4C608 8004BA08 00000000 */   nop

glabel func_8004BA0C
/* 4C60C 8004BA0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4C610 8004BA10 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4C614 8004BA14 8C820000 */  lw         $v0, 0x0($a0)
/* 4C618 8004BA18 3C01802C */  lui        $at, %hi(D_802C5FDC)
/* 4C61C 8004BA1C AC225FDC */  sw         $v0, %lo(D_802C5FDC)($at)
/* 4C620 8004BA20 14400013 */  bnez       $v0, .L8004BA70
/* 4C624 8004BA24 24860004 */   addiu     $a2, $a0, 0x4
/* 4C628 8004BA28 3C07800C */  lui        $a3, %hi(D_800C46F0)
/* 4C62C 8004BA2C 24E746F0 */  addiu      $a3, $a3, %lo(D_800C46F0)
/* 4C630 8004BA30 24880064 */  addiu      $t0, $a0, 0x64
.L8004BA34:
/* 4C634 8004BA34 8CC20000 */  lw         $v0, 0x0($a2)
/* 4C638 8004BA38 8CC30004 */  lw         $v1, 0x4($a2)
/* 4C63C 8004BA3C 8CC40008 */  lw         $a0, 0x8($a2)
/* 4C640 8004BA40 8CC5000C */  lw         $a1, 0xC($a2)
/* 4C644 8004BA44 ACE20000 */  sw         $v0, 0x0($a3)
/* 4C648 8004BA48 ACE30004 */  sw         $v1, 0x4($a3)
/* 4C64C 8004BA4C ACE40008 */  sw         $a0, 0x8($a3)
/* 4C650 8004BA50 ACE5000C */  sw         $a1, 0xC($a3)
/* 4C654 8004BA54 24C60010 */  addiu      $a2, $a2, 0x10
/* 4C658 8004BA58 14C8FFF6 */  bne        $a2, $t0, .L8004BA34
/* 4C65C 8004BA5C 24E70010 */   addiu     $a3, $a3, 0x10
/* 4C660 8004BA60 0C012D8C */  jal        func_8004B630
/* 4C664 8004BA64 00000000 */   nop
/* 4C668 8004BA68 08012EAD */  j          .L8004BAB4
/* 4C66C 8004BA6C 00000000 */   nop
.L8004BA70:
/* 4C670 8004BA70 3C07800C */  lui        $a3, %hi(D_800C46F0)
/* 4C674 8004BA74 24E746F0 */  addiu      $a3, $a3, %lo(D_800C46F0)
/* 4C678 8004BA78 24880024 */  addiu      $t0, $a0, 0x24
.L8004BA7C:
/* 4C67C 8004BA7C 8CC20000 */  lw         $v0, 0x0($a2)
/* 4C680 8004BA80 8CC30004 */  lw         $v1, 0x4($a2)
/* 4C684 8004BA84 8CC40008 */  lw         $a0, 0x8($a2)
/* 4C688 8004BA88 8CC5000C */  lw         $a1, 0xC($a2)
/* 4C68C 8004BA8C ACE20000 */  sw         $v0, 0x0($a3)
/* 4C690 8004BA90 ACE30004 */  sw         $v1, 0x4($a3)
/* 4C694 8004BA94 ACE40008 */  sw         $a0, 0x8($a3)
/* 4C698 8004BA98 ACE5000C */  sw         $a1, 0xC($a3)
/* 4C69C 8004BA9C 24C60010 */  addiu      $a2, $a2, 0x10
/* 4C6A0 8004BAA0 14C8FFF6 */  bne        $a2, $t0, .L8004BA7C
/* 4C6A4 8004BAA4 24E70010 */   addiu     $a3, $a3, 0x10
/* 4C6A8 8004BAA8 8CC20000 */  lw         $v0, 0x0($a2)
/* 4C6AC 8004BAAC 0C012DFF */  jal        func_8004B7FC
/* 4C6B0 8004BAB0 ACE20000 */   sw        $v0, 0x0($a3)
.L8004BAB4:
/* 4C6B4 8004BAB4 3C04802F */  lui        $a0, %hi(D_802F06F8)
/* 4C6B8 8004BAB8 908406F8 */  lbu        $a0, %lo(D_802F06F8)($a0)
/* 4C6BC 8004BABC 3C05802F */  lui        $a1, %hi(D_802F06F9)
/* 4C6C0 8004BAC0 90A506F9 */  lbu        $a1, %lo(D_802F06F9)($a1)
/* 4C6C4 8004BAC4 3C06802F */  lui        $a2, %hi(D_802F06FA)
/* 4C6C8 8004BAC8 0C008920 */  jal        func_80022480
/* 4C6CC 8004BACC 90C606FA */   lbu       $a2, %lo(D_802F06FA)($a2)
/* 4C6D0 8004BAD0 3C04802F */  lui        $a0, %hi(D_802F0701)
/* 4C6D4 8004BAD4 90840701 */  lbu        $a0, %lo(D_802F0701)($a0)
/* 4C6D8 8004BAD8 3C05802F */  lui        $a1, %hi(D_802F0702)
/* 4C6DC 8004BADC 90A50702 */  lbu        $a1, %lo(D_802F0702)($a1)
/* 4C6E0 8004BAE0 3C06802F */  lui        $a2, %hi(D_802F0703)
/* 4C6E4 8004BAE4 90C60703 */  lbu        $a2, %lo(D_802F0703)($a2)
/* 4C6E8 8004BAE8 3C01803F */  lui        $at, %hi(D_803EEB14)
/* 4C6EC 8004BAEC 0C008920 */  jal        func_80022480
/* 4C6F0 8004BAF0 AC22EB14 */   sw        $v0, %lo(D_803EEB14)($at)
/* 4C6F4 8004BAF4 24040026 */  addiu      $a0, $zero, 0x26
/* 4C6F8 8004BAF8 24050026 */  addiu      $a1, $zero, 0x26
/* 4C6FC 8004BAFC 3C01802D */  lui        $at, %hi(D_802D2FBC)
/* 4C700 8004BB00 AC222FBC */  sw         $v0, %lo(D_802D2FBC)($at)
/* 4C704 8004BB04 0C008920 */  jal        func_80022480
/* 4C708 8004BB08 240600E6 */   addiu     $a2, $zero, 0xE6
/* 4C70C 8004BB0C 3C01803F */  lui        $at, %hi(D_803EE598)
/* 4C710 8004BB10 AC22E598 */  sw         $v0, %lo(D_803EE598)($at)
/* 4C714 8004BB14 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4C718 8004BB18 03E00008 */  jr         $ra
/* 4C71C 8004BB1C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BB20
/* 4C720 8004BB20 03E00008 */  jr         $ra
/* 4C724 8004BB24 00000000 */   nop

glabel func_8004BB28
/* 4C728 8004BB28 03E00008 */  jr         $ra
/* 4C72C 8004BB2C 00000000 */   nop

glabel func_8004BB30
/* 4C730 8004BB30 3C03802C */  lui        $v1, %hi(D_802C668C)
/* 4C734 8004BB34 8C63668C */  lw         $v1, %lo(D_802C668C)($v1)
/* 4C738 8004BB38 24020002 */  addiu      $v0, $zero, 0x2
/* 4C73C 8004BB3C 14620005 */  bne        $v1, $v0, .L8004BB54
/* 4C740 8004BB40 00003821 */   addu      $a3, $zero, $zero
/* 4C744 8004BB44 3C02802F */  lui        $v0, %hi(D_802EF218)
/* 4C748 8004BB48 8C42F218 */  lw         $v0, %lo(D_802EF218)($v0)
/* 4C74C 8004BB4C 38420001 */  xori       $v0, $v0, 0x1
/* 4C750 8004BB50 2C470001 */  sltiu      $a3, $v0, 0x1
.L8004BB54:
/* 4C754 8004BB54 14800003 */  bnez       $a0, .L8004BB64
/* 4C758 8004BB58 00001821 */   addu      $v1, $zero, $zero
/* 4C75C 8004BB5C 08012EE5 */  j          .L8004BB94
/* 4C760 8004BB60 2404FFFF */   addiu     $a0, $zero, -0x1
.L8004BB64:
/* 4C764 8004BB64 14E00005 */  bnez       $a3, .L8004BB7C
/* 4C768 8004BB68 00801821 */   addu      $v1, $a0, $zero
/* 4C76C 8004BB6C 2482FFFF */  addiu      $v0, $a0, -0x1
/* 4C770 8004BB70 2C420008 */  sltiu      $v0, $v0, 0x8
/* 4C774 8004BB74 10400003 */  beqz       $v0, .L8004BB84
/* 4C778 8004BB78 2482FFF7 */   addiu     $v0, $a0, -0x9
.L8004BB7C:
/* 4C77C 8004BB7C 08012EE5 */  j          .L8004BB94
/* 4C780 8004BB80 2404FFFF */   addiu     $a0, $zero, -0x1
.L8004BB84:
/* 4C784 8004BB84 2C420007 */  sltiu      $v0, $v0, 0x7
/* 4C788 8004BB88 50400001 */  beql       $v0, $zero, .L8004BB90
/* 4C78C 8004BB8C 00002021 */   addu      $a0, $zero, $zero
.L8004BB90:
/* 4C790 8004BB90 00001821 */  addu       $v1, $zero, $zero
.L8004BB94:
/* 4C794 8004BB94 00031040 */  sll        $v0, $v1, 1
/* 4C798 8004BB98 00431021 */  addu       $v0, $v0, $v1
/* 4C79C 8004BB9C 3C03802F */  lui        $v1, %hi(D_802F06F8)
/* 4C7A0 8004BBA0 00621821 */  addu       $v1, $v1, $v0
/* 4C7A4 8004BBA4 906306F8 */  lbu        $v1, %lo(D_802F06F8)($v1)
/* 4C7A8 8004BBA8 3C07802F */  lui        $a3, %hi(D_802F06F9)
/* 4C7AC 8004BBAC 00E23821 */  addu       $a3, $a3, $v0
/* 4C7B0 8004BBB0 90E706F9 */  lbu        $a3, %lo(D_802F06F9)($a3)
/* 4C7B4 8004BBB4 3C08802F */  lui        $t0, %hi(D_802F06FA)
/* 4C7B8 8004BBB8 01024021 */  addu       $t0, $t0, $v0
/* 4C7BC 8004BBBC 910806FA */  lbu        $t0, %lo(D_802F06FA)($t0)
/* 4C7C0 8004BBC0 00031400 */  sll        $v0, $v1, 16
/* 4C7C4 8004BBC4 00071A00 */  sll        $v1, $a3, 8
/* 4C7C8 8004BBC8 00431021 */  addu       $v0, $v0, $v1
/* 4C7CC 8004BBCC 00481021 */  addu       $v0, $v0, $t0
/* 4C7D0 8004BBD0 ACA20000 */  sw         $v0, 0x0($a1)
/* 4C7D4 8004BBD4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 4C7D8 8004BBD8 10820011 */  beq        $a0, $v0, .L8004BC20
/* 4C7DC 8004BBDC 00041040 */   sll       $v0, $a0, 1
/* 4C7E0 8004BBE0 00441021 */  addu       $v0, $v0, $a0
/* 4C7E4 8004BBE4 3C03802F */  lui        $v1, %hi(D_802F06F8)
/* 4C7E8 8004BBE8 00621821 */  addu       $v1, $v1, $v0
/* 4C7EC 8004BBEC 906306F8 */  lbu        $v1, %lo(D_802F06F8)($v1)
/* 4C7F0 8004BBF0 3C07802F */  lui        $a3, %hi(D_802F06F9)
/* 4C7F4 8004BBF4 00E23821 */  addu       $a3, $a3, $v0
/* 4C7F8 8004BBF8 90E706F9 */  lbu        $a3, %lo(D_802F06F9)($a3)
/* 4C7FC 8004BBFC 3C08802F */  lui        $t0, %hi(D_802F06FA)
/* 4C800 8004BC00 01024021 */  addu       $t0, $t0, $v0
/* 4C804 8004BC04 910806FA */  lbu        $t0, %lo(D_802F06FA)($t0)
/* 4C808 8004BC08 00031400 */  sll        $v0, $v1, 16
/* 4C80C 8004BC0C 00071A00 */  sll        $v1, $a3, 8
/* 4C810 8004BC10 00431021 */  addu       $v0, $v0, $v1
/* 4C814 8004BC14 00481021 */  addu       $v0, $v0, $t0
/* 4C818 8004BC18 08012F09 */  j          .L8004BC24
/* 4C81C 8004BC1C ACC20000 */   sw        $v0, 0x0($a2)
.L8004BC20:
/* 4C820 8004BC20 ACC40000 */  sw         $a0, 0x0($a2)
.L8004BC24:
/* 4C824 8004BC24 03E00008 */  jr         $ra
/* 4C828 8004BC28 00000000 */   nop

glabel func_8004BC2C
/* 4C82C 8004BC2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4C830 8004BC30 AFB00018 */  sw         $s0, 0x18($sp)
/* 4C834 8004BC34 00808021 */  addu       $s0, $a0, $zero
/* 4C838 8004BC38 27A50010 */  addiu      $a1, $sp, 0x10
/* 4C83C 8004BC3C AFBF001C */  sw         $ra, 0x1C($sp)
/* 4C840 8004BC40 0C012ECC */  jal        func_8004BB30
/* 4C844 8004BC44 27A60014 */   addiu     $a2, $sp, 0x14
/* 4C848 8004BC48 8FA50010 */  lw         $a1, 0x10($sp)
/* 4C84C 8004BC4C 00102040 */  sll        $a0, $s0, 1
/* 4C850 8004BC50 00902021 */  addu       $a0, $a0, $s0
/* 4C854 8004BC54 00042100 */  sll        $a0, $a0, 4
/* 4C858 8004BC58 3C028031 */  lui        $v0, %hi(D_80312AB0)
/* 4C85C 8004BC5C 24422AB0 */  addiu      $v0, $v0, %lo(D_80312AB0)
/* 4C860 8004BC60 0C002044 */  jal        func_80008110
/* 4C864 8004BC64 00822021 */   addu      $a0, $a0, $v0
/* 4C868 8004BC68 8FBF001C */  lw         $ra, 0x1C($sp)
/* 4C86C 8004BC6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 4C870 8004BC70 03E00008 */  jr         $ra
/* 4C874 8004BC74 27BD0020 */   addiu     $sp, $sp, 0x20
/* 4C878 8004BC78 00000000 */  nop
/* 4C87C 8004BC7C 00000000 */  nop
