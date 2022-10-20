.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009BBF0
/* 9C7F0 8009BBF0 46206105 */  abs.d      $f4, $f12
/* 9C7F4 8009BBF4 3C01800D */  lui        $at, %hi(D_800D7208)
/* 9C7F8 8009BBF8 D4207208 */  ldc1       $f0, %lo(D_800D7208)($at)
/* 9C7FC 8009BBFC 4620203C */  c.lt.d     $f4, $f0
/* 9C800 8009BC00 00000000 */  nop
/* 9C804 8009BC04 45000004 */  bc1f       .L8009BC18
/* 9C808 8009BC08 00000000 */   nop
/* 9C80C 8009BC0C 3C01800D */  lui        $at, %hi(D_800D7210)
/* 9C810 8009BC10 08026F3F */  j          .L8009BCFC
/* 9C814 8009BC14 D4207210 */   ldc1      $f0, %lo(D_800D7210)($at)
.L8009BC18:
/* 9C818 8009BC18 3C01800D */  lui        $at, %hi(D_800D7218)
/* 9C81C 8009BC1C D4207218 */  ldc1       $f0, %lo(D_800D7218)($at)
/* 9C820 8009BC20 46202003 */  div.d      $f0, $f4, $f0
/* 9C824 8009BC24 4620008D */  trunc.w.d  $f2, $f0
/* 9C828 8009BC28 44031000 */  mfc1       $v1, $f2
/* 9C82C 8009BC2C 00000000 */  nop
/* 9C830 8009BC30 28620401 */  slti       $v0, $v1, 0x401
/* 9C834 8009BC34 5440000B */  bnel       $v0, $zero, .L8009BC64
/* 9C838 8009BC38 24020001 */   addiu     $v0, $zero, 0x1
/* 9C83C 8009BC3C 44800000 */  mtc1       $zero, $f0
/* 9C840 8009BC40 44800800 */  mtc1       $zero, $f1
/* 9C844 8009BC44 00000000 */  nop
/* 9C848 8009BC48 462C003E */  c.le.d     $f0, $f12
/* 9C84C 8009BC4C 00000000 */  nop
/* 9C850 8009BC50 4500002A */  bc1f       .L8009BCFC
/* 9C854 8009BC54 00000000 */   nop
/* 9C858 8009BC58 3C01800D */  lui        $at, %hi(D_800D7200)
/* 9C85C 8009BC5C 08026F3F */  j          .L8009BCFC
/* 9C860 8009BC60 D4207200 */   ldc1      $f0, %lo(D_800D7200)($at)
.L8009BC64:
/* 9C864 8009BC64 44830000 */  mtc1       $v1, $f0
/* 9C868 8009BC68 00000000 */  nop
/* 9C86C 8009BC6C 46800021 */  cvt.d.w    $f0, $f0
/* 9C870 8009BC70 3C01800D */  lui        $at, %hi(D_800D7220)
/* 9C874 8009BC74 D4227220 */  ldc1       $f2, %lo(D_800D7220)($at)
/* 9C878 8009BC78 46220002 */  mul.d      $f0, $f0, $f2
/* 9C87C 8009BC7C 46202201 */  sub.d      $f8, $f4, $f0
/* 9C880 8009BC80 3C01800D */  lui        $at, %hi(D_800D7228)
/* 9C884 8009BC84 D4247228 */  ldc1       $f4, %lo(D_800D7228)($at)
/* 9C888 8009BC88 46202186 */  mov.d      $f6, $f4
.L8009BC8C:
/* 9C88C 8009BC8C 46202086 */  mov.d      $f2, $f4
/* 9C890 8009BC90 44820000 */  mtc1       $v0, $f0
/* 9C894 8009BC94 00000000 */  nop
/* 9C898 8009BC98 46800021 */  cvt.d.w    $f0, $f0
/* 9C89C 8009BC9C 46204003 */  div.d      $f0, $f8, $f0
/* 9C8A0 8009BCA0 46203182 */  mul.d      $f6, $f6, $f0
/* 9C8A4 8009BCA4 46262100 */  add.d      $f4, $f4, $f6
/* 9C8A8 8009BCA8 46222032 */  c.eq.d     $f4, $f2
/* 9C8AC 8009BCAC 00000000 */  nop
/* 9C8B0 8009BCB0 00000000 */  nop
/* 9C8B4 8009BCB4 4500FFF5 */  bc1f       .L8009BC8C
/* 9C8B8 8009BCB8 24420001 */   addiu     $v0, $v0, 0x1
/* 9C8BC 8009BCBC 10600004 */  beqz       $v1, .L8009BCD0
/* 9C8C0 8009BCC0 00000000 */   nop
.L8009BCC4:
/* 9C8C4 8009BCC4 2463FFFF */  addiu      $v1, $v1, -0x1
/* 9C8C8 8009BCC8 1460FFFE */  bnez       $v1, .L8009BCC4
/* 9C8CC 8009BCCC 46242100 */   add.d     $f4, $f4, $f4
.L8009BCD0:
/* 9C8D0 8009BCD0 44800000 */  mtc1       $zero, $f0
/* 9C8D4 8009BCD4 44800800 */  mtc1       $zero, $f1
/* 9C8D8 8009BCD8 00000000 */  nop
/* 9C8DC 8009BCDC 462C003E */  c.le.d     $f0, $f12
/* 9C8E0 8009BCE0 00000000 */  nop
/* 9C8E4 8009BCE4 00000000 */  nop
/* 9C8E8 8009BCE8 45030004 */  bc1tl      .L8009BCFC
/* 9C8EC 8009BCEC 46202006 */   mov.d     $f0, $f4
/* 9C8F0 8009BCF0 3C01800D */  lui        $at, %hi(D_800D7230)
/* 9C8F4 8009BCF4 D4207230 */  ldc1       $f0, %lo(D_800D7230)($at)
/* 9C8F8 8009BCF8 46240003 */  div.d      $f0, $f0, $f4
.L8009BCFC:
/* 9C8FC 8009BCFC 03E00008 */  jr         $ra
/* 9C900 8009BD00 00000000 */   nop
/* 9C904 8009BD04 00000000 */  nop
/* 9C908 8009BD08 00000000 */  nop
/* 9C90C 8009BD0C 00000000 */  nop
