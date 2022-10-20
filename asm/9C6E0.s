.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009BAE0
/* 9C6E0 8009BAE0 44800000 */  mtc1       $zero, $f0
/* 9C6E4 8009BAE4 44800800 */  mtc1       $zero, $f1
/* 9C6E8 8009BAE8 00000000 */  nop
/* 9C6EC 8009BAEC 4620603C */  c.lt.d     $f12, $f0
/* 9C6F0 8009BAF0 00000000 */  nop
/* 9C6F4 8009BAF4 45010039 */  bc1t       .L8009BBDC
/* 9C6F8 8009BAF8 00000000 */   nop
/* 9C6FC 8009BAFC 46206032 */  c.eq.d     $f12, $f0
/* 9C700 8009BB00 00000000 */  nop
/* 9C704 8009BB04 45010035 */  bc1t       .L8009BBDC
/* 9C708 8009BB08 00000000 */   nop
/* 9C70C 8009BB0C 44803000 */  mtc1       $zero, $f6
/* 9C710 8009BB10 44803800 */  mtc1       $zero, $f7
/* 9C714 8009BB14 3C01800D */  lui        $at, %hi(D_800D71D0)
/* 9C718 8009BB18 D42071D0 */  ldc1       $f0, %lo(D_800D71D0)($at)
/* 9C71C 8009BB1C 462C003E */  c.le.d     $f0, $f12
/* 9C720 8009BB20 00000000 */  nop
/* 9C724 8009BB24 45000009 */  bc1f       .L8009BB4C
/* 9C728 8009BB28 00000000 */   nop
/* 9C72C 8009BB2C 3C01800D */  lui        $at, %hi(D_800D71D8)
/* 9C730 8009BB30 D42271D8 */  ldc1       $f2, %lo(D_800D71D8)($at)
.L8009BB34:
/* 9C734 8009BB34 46206303 */  div.d      $f12, $f12, $f0
/* 9C738 8009BB38 462C003E */  c.le.d     $f0, $f12
/* 9C73C 8009BB3C 00000000 */  nop
/* 9C740 8009BB40 00000000 */  nop
/* 9C744 8009BB44 4501FFFB */  bc1t       .L8009BB34
/* 9C748 8009BB48 46223180 */   add.d     $f6, $f6, $f2
.L8009BB4C:
/* 9C74C 8009BB4C 3C01800D */  lui        $at, %hi(D_800D71E0)
/* 9C750 8009BB50 D42071E0 */  ldc1       $f0, %lo(D_800D71E0)($at)
/* 9C754 8009BB54 4620603C */  c.lt.d     $f12, $f0
/* 9C758 8009BB58 00000000 */  nop
/* 9C75C 8009BB5C 00000000 */  nop
/* 9C760 8009BB60 45000009 */  bc1f       .L8009BB88
/* 9C764 8009BB64 46200086 */   mov.d     $f2, $f0
/* 9C768 8009BB68 3C01800D */  lui        $at, %hi(D_800D71E8)
/* 9C76C 8009BB6C D42071E8 */  ldc1       $f0, %lo(D_800D71E8)($at)
.L8009BB70:
/* 9C770 8009BB70 462C6300 */  add.d      $f12, $f12, $f12
/* 9C774 8009BB74 4622603C */  c.lt.d     $f12, $f2
/* 9C778 8009BB78 00000000 */  nop
/* 9C77C 8009BB7C 00000000 */  nop
/* 9C780 8009BB80 4501FFFB */  bc1t       .L8009BB70
/* 9C784 8009BB84 46203181 */   sub.d     $f6, $f6, $f0
.L8009BB88:
/* 9C788 8009BB88 24020001 */  addiu      $v0, $zero, 0x1
/* 9C78C 8009BB8C 3C01800D */  lui        $at, %hi(D_800D71F0)
/* 9C790 8009BB90 D42071F0 */  ldc1       $f0, %lo(D_800D71F0)($at)
/* 9C794 8009BB94 46206101 */  sub.d      $f4, $f12, $f0
/* 9C798 8009BB98 46206000 */  add.d      $f0, $f12, $f0
/* 9C79C 8009BB9C 46202103 */  div.d      $f4, $f4, $f0
/* 9C7A0 8009BBA0 46242200 */  add.d      $f8, $f4, $f4
/* 9C7A4 8009BBA4 46242102 */  mul.d      $f4, $f4, $f4
.L8009BBA8:
/* 9C7A8 8009BBA8 46203086 */  mov.d      $f2, $f6
/* 9C7AC 8009BBAC 44820000 */  mtc1       $v0, $f0
/* 9C7B0 8009BBB0 00000000 */  nop
/* 9C7B4 8009BBB4 46800021 */  cvt.d.w    $f0, $f0
/* 9C7B8 8009BBB8 46204003 */  div.d      $f0, $f8, $f0
/* 9C7BC 8009BBBC 46203180 */  add.d      $f6, $f6, $f0
/* 9C7C0 8009BBC0 46244202 */  mul.d      $f8, $f8, $f4
/* 9C7C4 8009BBC4 46223032 */  c.eq.d     $f6, $f2
/* 9C7C8 8009BBC8 00000000 */  nop
/* 9C7CC 8009BBCC 00000000 */  nop
/* 9C7D0 8009BBD0 4500FFF5 */  bc1f       .L8009BBA8
/* 9C7D4 8009BBD4 24420002 */   addiu     $v0, $v0, 0x2
/* 9C7D8 8009BBD8 46203006 */  mov.d      $f0, $f6
.L8009BBDC:
/* 9C7DC 8009BBDC 03E00008 */  jr         $ra
/* 9C7E0 8009BBE0 00000000 */   nop
/* 9C7E4 8009BBE4 00000000 */  nop
/* 9C7E8 8009BBE8 00000000 */  nop
/* 9C7EC 8009BBEC 00000000 */  nop
