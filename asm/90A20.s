.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8008FE20
/* 90A20 8008FE20 E7AC0000 */  swc1       $f12, 0x0($sp)
/* 90A24 8008FE24 8FA20000 */  lw         $v0, 0x0($sp)
/* 90A28 8008FE28 00021D83 */  sra        $v1, $v0, 22
/* 90A2C 8008FE2C 306301FF */  andi       $v1, $v1, 0x1FF
/* 90A30 8008FE30 286200FF */  slti       $v0, $v1, 0xFF
/* 90A34 8008FE34 1040001B */  beqz       $v0, .L8008FEA4
/* 90A38 8008FE38 286200E6 */   slti      $v0, $v1, 0xE6
/* 90A3C 8008FE3C 14400017 */  bnez       $v0, .L8008FE9C
/* 90A40 8008FE40 460061A1 */   cvt.d.s   $f6, $f12
/* 90A44 8008FE44 00000000 */  nop
/* 90A48 8008FE48 46263102 */  mul.d      $f4, $f6, $f6
/* 90A4C 8008FE4C 3C01800D */  lui        $at, %hi(D_800D6BA0)
/* 90A50 8008FE50 D4206BA0 */  ldc1       $f0, %lo(D_800D6BA0)($at)
/* 90A54 8008FE54 46240002 */  mul.d      $f0, $f0, $f4
/* 90A58 8008FE58 3C01800D */  lui        $at, %hi(D_800D6B98)
/* 90A5C 8008FE5C D4226B98 */  ldc1       $f2, %lo(D_800D6B98)($at)
/* 90A60 8008FE60 46220000 */  add.d      $f0, $f0, $f2
/* 90A64 8008FE64 46240002 */  mul.d      $f0, $f0, $f4
/* 90A68 8008FE68 3C01800D */  lui        $at, %hi(D_800D6B90)
/* 90A6C 8008FE6C D4226B90 */  ldc1       $f2, %lo(D_800D6B90)($at)
/* 90A70 8008FE70 46220000 */  add.d      $f0, $f0, $f2
/* 90A74 8008FE74 46240002 */  mul.d      $f0, $f0, $f4
/* 90A78 8008FE78 00000000 */  nop
/* 90A7C 8008FE7C 46243082 */  mul.d      $f2, $f6, $f4
/* 90A80 8008FE80 3C01800D */  lui        $at, %hi(D_800D6B88)
/* 90A84 8008FE84 D4246B88 */  ldc1       $f4, %lo(D_800D6B88)($at)
/* 90A88 8008FE88 46240000 */  add.d      $f0, $f0, $f4
/* 90A8C 8008FE8C 46201082 */  mul.d      $f2, $f2, $f0
/* 90A90 8008FE90 46223000 */  add.d      $f0, $f6, $f2
/* 90A94 8008FE94 08023FEE */  j          .L8008FFB8
/* 90A98 8008FE98 46200020 */   cvt.s.d   $f0, $f0
.L8008FE9C:
/* 90A9C 8008FE9C 08023FEE */  j          .L8008FFB8
/* 90AA0 8008FEA0 46006006 */   mov.s     $f0, $f12
.L8008FEA4:
/* 90AA4 8008FEA4 28620136 */  slti       $v0, $v1, 0x136
/* 90AA8 8008FEA8 1040003A */  beqz       $v0, .L8008FF94
/* 90AAC 8008FEAC 00000000 */   nop
/* 90AB0 8008FEB0 3C01800D */  lui        $at, %hi(D_800D6BA8)
/* 90AB4 8008FEB4 D4206BA8 */  ldc1       $f0, %lo(D_800D6BA8)($at)
/* 90AB8 8008FEB8 460061A1 */  cvt.d.s    $f6, $f12
/* 90ABC 8008FEBC 46203102 */  mul.d      $f4, $f6, $f0
/* 90AC0 8008FEC0 44800000 */  mtc1       $zero, $f0
/* 90AC4 8008FEC4 44800800 */  mtc1       $zero, $f1
/* 90AC8 8008FEC8 00000000 */  nop
/* 90ACC 8008FECC 4624003E */  c.le.d     $f0, $f4
/* 90AD0 8008FED0 00000000 */  nop
/* 90AD4 8008FED4 45000005 */  bc1f       .L8008FEEC
/* 90AD8 8008FED8 00000000 */   nop
/* 90ADC 8008FEDC 3C01800D */  lui        $at, %hi(D_800D6BC8)
/* 90AE0 8008FEE0 D4206BC8 */  ldc1       $f0, %lo(D_800D6BC8)($at)
/* 90AE4 8008FEE4 08023FBE */  j          .L8008FEF8
/* 90AE8 8008FEE8 46202000 */   add.d     $f0, $f4, $f0
.L8008FEEC:
/* 90AEC 8008FEEC 3C01800D */  lui        $at, %hi(D_800D6BD0)
/* 90AF0 8008FEF0 D4206BD0 */  ldc1       $f0, %lo(D_800D6BD0)($at)
/* 90AF4 8008FEF4 46202001 */  sub.d      $f0, $f4, $f0
.L8008FEF8:
/* 90AF8 8008FEF8 4620008D */  trunc.w.d  $f2, $f0
/* 90AFC 8008FEFC 44031000 */  mfc1       $v1, $f2
/* 90B00 8008FF00 3C01800D */  lui        $at, %hi(D_800D6BB0)
/* 90B04 8008FF04 D4226BB0 */  ldc1       $f2, %lo(D_800D6BB0)($at)
/* 90B08 8008FF08 44832000 */  mtc1       $v1, $f4
/* 90B0C 8008FF0C 00000000 */  nop
/* 90B10 8008FF10 46802121 */  cvt.d.w    $f4, $f4
/* 90B14 8008FF14 46222082 */  mul.d      $f2, $f4, $f2
/* 90B18 8008FF18 3C01800D */  lui        $at, %hi(D_800D6BB8)
/* 90B1C 8008FF1C D4206BB8 */  ldc1       $f0, %lo(D_800D6BB8)($at)
/* 90B20 8008FF20 46202002 */  mul.d      $f0, $f4, $f0
/* 90B24 8008FF24 46223181 */  sub.d      $f6, $f6, $f2
/* 90B28 8008FF28 46203181 */  sub.d      $f6, $f6, $f0
/* 90B2C 8008FF2C 46263102 */  mul.d      $f4, $f6, $f6
/* 90B30 8008FF30 3C01800D */  lui        $at, %hi(D_800D6BA0)
/* 90B34 8008FF34 D4206BA0 */  ldc1       $f0, %lo(D_800D6BA0)($at)
/* 90B38 8008FF38 46240002 */  mul.d      $f0, $f0, $f4
/* 90B3C 8008FF3C 3C01800D */  lui        $at, %hi(D_800D6B98)
/* 90B40 8008FF40 D4226B98 */  ldc1       $f2, %lo(D_800D6B98)($at)
/* 90B44 8008FF44 46220000 */  add.d      $f0, $f0, $f2
/* 90B48 8008FF48 46240002 */  mul.d      $f0, $f0, $f4
/* 90B4C 8008FF4C 3C01800D */  lui        $at, %hi(D_800D6B90)
/* 90B50 8008FF50 D4226B90 */  ldc1       $f2, %lo(D_800D6B90)($at)
/* 90B54 8008FF54 46220000 */  add.d      $f0, $f0, $f2
/* 90B58 8008FF58 46240002 */  mul.d      $f0, $f0, $f4
/* 90B5C 8008FF5C 00000000 */  nop
/* 90B60 8008FF60 46243082 */  mul.d      $f2, $f6, $f4
/* 90B64 8008FF64 3C01800D */  lui        $at, %hi(D_800D6B88)
/* 90B68 8008FF68 D4246B88 */  ldc1       $f4, %lo(D_800D6B88)($at)
/* 90B6C 8008FF6C 46240000 */  add.d      $f0, $f0, $f4
/* 90B70 8008FF70 46201082 */  mul.d      $f2, $f2, $f0
/* 90B74 8008FF74 30620001 */  andi       $v0, $v1, 0x1
/* 90B78 8008FF78 14400003 */  bnez       $v0, .L8008FF88
/* 90B7C 8008FF7C 46223000 */   add.d     $f0, $f6, $f2
/* 90B80 8008FF80 08023FEE */  j          .L8008FFB8
/* 90B84 8008FF84 46200020 */   cvt.s.d   $f0, $f0
.L8008FF88:
/* 90B88 8008FF88 46200020 */  cvt.s.d    $f0, $f0
/* 90B8C 8008FF8C 08023FEE */  j          .L8008FFB8
/* 90B90 8008FF90 46000007 */   neg.s     $f0, $f0
.L8008FF94:
/* 90B94 8008FF94 460C6032 */  c.eq.s     $f12, $f12
/* 90B98 8008FF98 00000000 */  nop
/* 90B9C 8008FF9C 45000004 */  bc1f       .L8008FFB0
/* 90BA0 8008FFA0 00000000 */   nop
/* 90BA4 8008FFA4 3C01800D */  lui        $at, %hi(D_800D6BC0)
/* 90BA8 8008FFA8 08023FEE */  j          .L8008FFB8
/* 90BAC 8008FFAC C4206BC0 */   lwc1      $f0, %lo(D_800D6BC0)($at)
.L8008FFB0:
/* 90BB0 8008FFB0 3C01800D */  lui        $at, %hi(D_800D6C40)
/* 90BB4 8008FFB4 C4206C40 */  lwc1       $f0, %lo(D_800D6C40)($at)
.L8008FFB8:
/* 90BB8 8008FFB8 03E00008 */  jr         $ra
/* 90BBC 8008FFBC 00000000 */   nop

glabel func_8008FFC0
/* 90BC0 8008FFC0 3C03800D */  lui        $v1, %hi(D_800C9D60)
/* 90BC4 8008FFC4 8C639D60 */  lw         $v1, %lo(D_800C9D60)($v1)
/* 90BC8 8008FFC8 00031880 */  sll        $v1, $v1, 2
/* 90BCC 8008FFCC 24620002 */  addiu      $v0, $v1, 0x2
/* 90BD0 8008FFD0 24630003 */  addiu      $v1, $v1, 0x3
/* 90BD4 8008FFD4 00430018 */  mult       $v0, $v1
/* 90BD8 8008FFD8 00001012 */  mflo       $v0
/* 90BDC 8008FFDC 00021082 */  srl        $v0, $v0, 2
/* 90BE0 8008FFE0 3C01800D */  lui        $at, %hi(D_800C9D60)
/* 90BE4 8008FFE4 03E00008 */  jr         $ra
/* 90BE8 8008FFE8 AC229D60 */   sw        $v0, %lo(D_800C9D60)($at)
/* 90BEC 8008FFEC 00000000 */  nop
