.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8008FAA0
/* 906A0 8008FAA0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 906A4 8008FAA4 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 906A8 8008FAA8 C7BA0060 */  lwc1       $f26, 0x60($sp)
/* 906AC 8008FAAC F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 906B0 8008FAB0 C7BC0064 */  lwc1       $f28, 0x64($sp)
/* 906B4 8008FAB4 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 906B8 8008FAB8 C7BE0068 */  lwc1       $f30, 0x68($sp)
/* 906BC 8008FABC F7B80030 */  sdc1       $f24, 0x30($sp)
/* 906C0 8008FAC0 4486C000 */  mtc1       $a2, $f24
/* 906C4 8008FAC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 906C8 8008FAC8 00808021 */  addu       $s0, $a0, $zero
/* 906CC 8008FACC AFB10014 */  sw         $s1, 0x14($sp)
/* 906D0 8008FAD0 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 906D4 8008FAD4 4487B000 */  mtc1       $a3, $f22
/* 906D8 8008FAD8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 906DC 8008FADC F7B40020 */  sdc1       $f20, 0x20($sp)
/* 906E0 8008FAE0 0C023DF4 */  jal        func_8008F7D0
/* 906E4 8008FAE4 00A08821 */   addu      $s1, $a1, $zero
/* 906E8 8008FAE8 3C01800D */  lui        $at, %hi(D_800D6B40)
/* 906EC 8008FAEC D4226B40 */  ldc1       $f2, %lo(D_800D6B40)($at)
/* 906F0 8008FAF0 4600C021 */  cvt.d.s    $f0, $f24
/* 906F4 8008FAF4 46220002 */  mul.d      $f0, $f0, $f2
/* 906F8 8008FAF8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 906FC 8008FAFC 4481A000 */  mtc1       $at, $f20
/* 90700 8008FB00 46200620 */  cvt.s.d    $f24, $f0
/* 90704 8008FB04 4614C503 */  div.s      $f20, $f24, $f20
/* 90708 8008FB08 0C023B8C */  jal        func_8008EE30
/* 9070C 8008FB0C 4600A306 */   mov.s     $f12, $f20
/* 90710 8008FB10 4600A306 */  mov.s      $f12, $f20
/* 90714 8008FB14 0C023F88 */  jal        func_8008FE20
/* 90718 8008FB18 46000506 */   mov.s     $f20, $f0
/* 9071C 8008FB1C 4600A503 */  div.s      $f20, $f20, $f0
/* 90720 8008FB20 461CD100 */  add.s      $f4, $f26, $f28
/* 90724 8008FB24 461CD081 */  sub.s      $f2, $f26, $f28
/* 90728 8008FB28 46022103 */  div.s      $f4, $f4, $f2
/* 9072C 8008FB2C 461AD000 */  add.s      $f0, $f26, $f26
/* 90730 8008FB30 461C0002 */  mul.s      $f0, $f0, $f28
/* 90734 8008FB34 46020003 */  div.s      $f0, $f0, $f2
/* 90738 8008FB38 4616A583 */  div.s      $f22, $f20, $f22
/* 9073C 8008FB3C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 90740 8008FB40 44811000 */  mtc1       $at, $f2
/* 90744 8008FB44 00002821 */  addu       $a1, $zero, $zero
/* 90748 8008FB48 AE00003C */  sw         $zero, 0x3C($s0)
/* 9074C 8008FB4C E602002C */  swc1       $f2, 0x2C($s0)
/* 90750 8008FB50 E6140014 */  swc1       $f20, 0x14($s0)
/* 90754 8008FB54 E6040028 */  swc1       $f4, 0x28($s0)
/* 90758 8008FB58 E6000038 */  swc1       $f0, 0x38($s0)
/* 9075C 8008FB5C E6160000 */  swc1       $f22, 0x0($s0)
.L8008FB60:
/* 90760 8008FB60 00002021 */  addu       $a0, $zero, $zero
/* 90764 8008FB64 02001821 */  addu       $v1, $s0, $zero
.L8008FB68:
/* 90768 8008FB68 C4600000 */  lwc1       $f0, 0x0($v1)
/* 9076C 8008FB6C 461E0002 */  mul.s      $f0, $f0, $f30
/* 90770 8008FB70 24840001 */  addiu      $a0, $a0, 0x1
/* 90774 8008FB74 28820004 */  slti       $v0, $a0, 0x4
/* 90778 8008FB78 E4600000 */  swc1       $f0, 0x0($v1)
/* 9077C 8008FB7C 1440FFFA */  bnez       $v0, .L8008FB68
/* 90780 8008FB80 24630004 */   addiu     $v1, $v1, 0x4
/* 90784 8008FB84 24A50001 */  addiu      $a1, $a1, 0x1
/* 90788 8008FB88 28A20004 */  slti       $v0, $a1, 0x4
/* 9078C 8008FB8C 1440FFF4 */  bnez       $v0, .L8008FB60
/* 90790 8008FB90 26100010 */   addiu     $s0, $s0, 0x10
/* 90794 8008FB94 12200023 */  beqz       $s1, .L8008FC24
/* 90798 8008FB98 00000000 */   nop
/* 9079C 8008FB9C 461CD080 */  add.s      $f2, $f26, $f28
/* 907A0 8008FBA0 3C01800D */  lui        $at, %hi(D_800D6B48)
/* 907A4 8008FBA4 D4206B48 */  ldc1       $f0, %lo(D_800D6B48)($at)
/* 907A8 8008FBA8 460010A1 */  cvt.d.s    $f2, $f2
/* 907AC 8008FBAC 4620103E */  c.le.d     $f2, $f0
/* 907B0 8008FBB0 00000000 */  nop
/* 907B4 8008FBB4 00000000 */  nop
/* 907B8 8008FBB8 45010019 */  bc1t       .L8008FC20
/* 907BC 8008FBBC 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 907C0 8008FBC0 3C01800D */  lui        $at, %hi(D_800D6B50)
/* 907C4 8008FBC4 D4206B50 */  ldc1       $f0, %lo(D_800D6B50)($at)
/* 907C8 8008FBC8 46220083 */  div.d      $f2, $f0, $f2
/* 907CC 8008FBCC 3C01800D */  lui        $at, %hi(D_800D6B58)
/* 907D0 8008FBD0 D4206B58 */  ldc1       $f0, %lo(D_800D6B58)($at)
/* 907D4 8008FBD4 4622003E */  c.le.d     $f0, $f2
/* 907D8 8008FBD8 00000000 */  nop
/* 907DC 8008FBDC 00000000 */  nop
/* 907E0 8008FBE0 45030006 */  bc1tl      .L8008FBFC
/* 907E4 8008FBE4 46201001 */   sub.d     $f0, $f2, $f0
/* 907E8 8008FBE8 4620100D */  trunc.w.d  $f0, $f2
/* 907EC 8008FBEC 44030000 */  mfc1       $v1, $f0
/* 907F0 8008FBF0 00000000 */  nop
/* 907F4 8008FBF4 08023F04 */  j          .L8008FC10
/* 907F8 8008FBF8 00601021 */   addu      $v0, $v1, $zero
.L8008FBFC:
/* 907FC 8008FBFC 4620008D */  trunc.w.d  $f2, $f0
/* 90800 8008FC00 44031000 */  mfc1       $v1, $f2
/* 90804 8008FC04 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 90808 8008FC08 00621825 */  or         $v1, $v1, $v0
/* 9080C 8008FC0C 00601021 */  addu       $v0, $v1, $zero
.L8008FC10:
/* 90810 8008FC10 A6220000 */  sh         $v0, 0x0($s1)
/* 90814 8008FC14 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 90818 8008FC18 14400002 */  bnez       $v0, .L8008FC24
/* 9081C 8008FC1C 24020001 */   addiu     $v0, $zero, 0x1
.L8008FC20:
/* 90820 8008FC20 A6220000 */  sh         $v0, 0x0($s1)
.L8008FC24:
/* 90824 8008FC24 8FBF0018 */  lw         $ra, 0x18($sp)
/* 90828 8008FC28 8FB10014 */  lw         $s1, 0x14($sp)
/* 9082C 8008FC2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 90830 8008FC30 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 90834 8008FC34 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 90838 8008FC38 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 9083C 8008FC3C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 90840 8008FC40 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 90844 8008FC44 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 90848 8008FC48 03E00008 */  jr         $ra
/* 9084C 8008FC4C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8008FC50
/* 90850 8008FC50 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 90854 8008FC54 F7B80070 */  sdc1       $f24, 0x70($sp)
/* 90858 8008FC58 C7B80098 */  lwc1       $f24, 0x98($sp)
/* 9085C 8008FC5C F7BA0078 */  sdc1       $f26, 0x78($sp)
/* 90860 8008FC60 C7BA009C */  lwc1       $f26, 0x9C($sp)
/* 90864 8008FC64 F7BC0080 */  sdc1       $f28, 0x80($sp)
/* 90868 8008FC68 C7BC00A0 */  lwc1       $f28, 0xA0($sp)
/* 9086C 8008FC6C F7B40060 */  sdc1       $f20, 0x60($sp)
/* 90870 8008FC70 4486A000 */  mtc1       $a2, $f20
/* 90874 8008FC74 AFB20058 */  sw         $s2, 0x58($sp)
/* 90878 8008FC78 00809021 */  addu       $s2, $a0, $zero
/* 9087C 8008FC7C AFB10054 */  sw         $s1, 0x54($sp)
/* 90880 8008FC80 00A08821 */  addu       $s1, $a1, $zero
/* 90884 8008FC84 AFB00050 */  sw         $s0, 0x50($sp)
/* 90888 8008FC88 27B00010 */  addiu      $s0, $sp, 0x10
/* 9088C 8008FC8C F7B60068 */  sdc1       $f22, 0x68($sp)
/* 90890 8008FC90 4487B000 */  mtc1       $a3, $f22
/* 90894 8008FC94 AFBF005C */  sw         $ra, 0x5C($sp)
/* 90898 8008FC98 0C023DF4 */  jal        func_8008F7D0
/* 9089C 8008FC9C 02002021 */   addu      $a0, $s0, $zero
/* 908A0 8008FCA0 3C01800D */  lui        $at, %hi(D_800D6B60)
/* 908A4 8008FCA4 D4206B60 */  ldc1       $f0, %lo(D_800D6B60)($at)
/* 908A8 8008FCA8 4600A521 */  cvt.d.s    $f20, $f20
/* 908AC 8008FCAC 4620A502 */  mul.d      $f20, $f20, $f0
/* 908B0 8008FCB0 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 908B4 8008FCB4 44810000 */  mtc1       $at, $f0
/* 908B8 8008FCB8 4620A520 */  cvt.s.d    $f20, $f20
/* 908BC 8008FCBC 4600A503 */  div.s      $f20, $f20, $f0
/* 908C0 8008FCC0 0C023B8C */  jal        func_8008EE30
/* 908C4 8008FCC4 4600A306 */   mov.s     $f12, $f20
/* 908C8 8008FCC8 4600A306 */  mov.s      $f12, $f20
/* 908CC 8008FCCC 0C023F88 */  jal        func_8008FE20
/* 908D0 8008FCD0 46000506 */   mov.s     $f20, $f0
/* 908D4 8008FCD4 4600A503 */  div.s      $f20, $f20, $f0
/* 908D8 8008FCD8 461AC100 */  add.s      $f4, $f24, $f26
/* 908DC 8008FCDC 461AC081 */  sub.s      $f2, $f24, $f26
/* 908E0 8008FCE0 46022103 */  div.s      $f4, $f4, $f2
/* 908E4 8008FCE4 4618C000 */  add.s      $f0, $f24, $f24
/* 908E8 8008FCE8 461A0002 */  mul.s      $f0, $f0, $f26
/* 908EC 8008FCEC 46020003 */  div.s      $f0, $f0, $f2
/* 908F0 8008FCF0 4616A583 */  div.s      $f22, $f20, $f22
/* 908F4 8008FCF4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 908F8 8008FCF8 44811000 */  mtc1       $at, $f2
/* 908FC 8008FCFC 00002821 */  addu       $a1, $zero, $zero
/* 90900 8008FD00 AFA0004C */  sw         $zero, 0x4C($sp)
/* 90904 8008FD04 E7A2003C */  swc1       $f2, 0x3C($sp)
/* 90908 8008FD08 E7B40024 */  swc1       $f20, 0x24($sp)
/* 9090C 8008FD0C E7A40038 */  swc1       $f4, 0x38($sp)
/* 90910 8008FD10 E7A00048 */  swc1       $f0, 0x48($sp)
/* 90914 8008FD14 E7B60010 */  swc1       $f22, 0x10($sp)
.L8008FD18:
/* 90918 8008FD18 00002021 */  addu       $a0, $zero, $zero
/* 9091C 8008FD1C 02001821 */  addu       $v1, $s0, $zero
.L8008FD20:
/* 90920 8008FD20 C4600000 */  lwc1       $f0, 0x0($v1)
/* 90924 8008FD24 461C0002 */  mul.s      $f0, $f0, $f28
/* 90928 8008FD28 24840001 */  addiu      $a0, $a0, 0x1
/* 9092C 8008FD2C 28820004 */  slti       $v0, $a0, 0x4
/* 90930 8008FD30 E4600000 */  swc1       $f0, 0x0($v1)
/* 90934 8008FD34 1440FFFA */  bnez       $v0, .L8008FD20
/* 90938 8008FD38 24630004 */   addiu     $v1, $v1, 0x4
/* 9093C 8008FD3C 24A50001 */  addiu      $a1, $a1, 0x1
/* 90940 8008FD40 28A20004 */  slti       $v0, $a1, 0x4
/* 90944 8008FD44 1440FFF4 */  bnez       $v0, .L8008FD18
/* 90948 8008FD48 26100010 */   addiu     $s0, $s0, 0x10
/* 9094C 8008FD4C 52200025 */  beql       $s1, $zero, .L8008FDE4
/* 90950 8008FD50 27A40010 */   addiu     $a0, $sp, 0x10
/* 90954 8008FD54 461AC080 */  add.s      $f2, $f24, $f26
/* 90958 8008FD58 3C01800D */  lui        $at, %hi(D_800D6B68)
/* 9095C 8008FD5C D4206B68 */  ldc1       $f0, %lo(D_800D6B68)($at)
/* 90960 8008FD60 460010A1 */  cvt.d.s    $f2, $f2
/* 90964 8008FD64 4620103E */  c.le.d     $f2, $f0
/* 90968 8008FD68 00000000 */  nop
/* 9096C 8008FD6C 00000000 */  nop
/* 90970 8008FD70 4501001A */  bc1t       .L8008FDDC
/* 90974 8008FD74 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 90978 8008FD78 3C01800D */  lui        $at, %hi(D_800D6B70)
/* 9097C 8008FD7C D4206B70 */  ldc1       $f0, %lo(D_800D6B70)($at)
/* 90980 8008FD80 46220083 */  div.d      $f2, $f0, $f2
/* 90984 8008FD84 3C01800D */  lui        $at, %hi(D_800D6B78)
/* 90988 8008FD88 D4206B78 */  ldc1       $f0, %lo(D_800D6B78)($at)
/* 9098C 8008FD8C 4622003E */  c.le.d     $f0, $f2
/* 90990 8008FD90 00000000 */  nop
/* 90994 8008FD94 00000000 */  nop
/* 90998 8008FD98 45030006 */  bc1tl      .L8008FDB4
/* 9099C 8008FD9C 46201001 */   sub.d     $f0, $f2, $f0
/* 909A0 8008FDA0 4620100D */  trunc.w.d  $f0, $f2
/* 909A4 8008FDA4 44030000 */  mfc1       $v1, $f0
/* 909A8 8008FDA8 00000000 */  nop
/* 909AC 8008FDAC 08023F72 */  j          .L8008FDC8
/* 909B0 8008FDB0 00601021 */   addu      $v0, $v1, $zero
.L8008FDB4:
/* 909B4 8008FDB4 4620008D */  trunc.w.d  $f2, $f0
/* 909B8 8008FDB8 44031000 */  mfc1       $v1, $f2
/* 909BC 8008FDBC 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 909C0 8008FDC0 00621825 */  or         $v1, $v1, $v0
/* 909C4 8008FDC4 00601021 */  addu       $v0, $v1, $zero
.L8008FDC8:
/* 909C8 8008FDC8 A6220000 */  sh         $v0, 0x0($s1)
/* 909CC 8008FDCC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 909D0 8008FDD0 14400004 */  bnez       $v0, .L8008FDE4
/* 909D4 8008FDD4 27A40010 */   addiu     $a0, $sp, 0x10
/* 909D8 8008FDD8 24020001 */  addiu      $v0, $zero, 0x1
.L8008FDDC:
/* 909DC 8008FDDC A6220000 */  sh         $v0, 0x0($s1)
/* 909E0 8008FDE0 27A40010 */  addiu      $a0, $sp, 0x10
.L8008FDE4:
/* 909E4 8008FDE4 0C023DA4 */  jal        func_8008F690
/* 909E8 8008FDE8 02402821 */   addu      $a1, $s2, $zero
/* 909EC 8008FDEC 8FBF005C */  lw         $ra, 0x5C($sp)
/* 909F0 8008FDF0 8FB20058 */  lw         $s2, 0x58($sp)
/* 909F4 8008FDF4 8FB10054 */  lw         $s1, 0x54($sp)
/* 909F8 8008FDF8 8FB00050 */  lw         $s0, 0x50($sp)
/* 909FC 8008FDFC D7BC0080 */  ldc1       $f28, 0x80($sp)
/* 90A00 8008FE00 D7BA0078 */  ldc1       $f26, 0x78($sp)
/* 90A04 8008FE04 D7B80070 */  ldc1       $f24, 0x70($sp)
/* 90A08 8008FE08 D7B60068 */  ldc1       $f22, 0x68($sp)
/* 90A0C 8008FE0C D7B40060 */  ldc1       $f20, 0x60($sp)
/* 90A10 8008FE10 03E00008 */  jr         $ra
/* 90A14 8008FE14 27BD0088 */   addiu     $sp, $sp, 0x88
/* 90A18 8008FE18 00000000 */  nop
/* 90A1C 8008FE1C 00000000 */  nop
