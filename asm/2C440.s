.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8002B840
/* 2C440 8002B840 3C01802C */  lui        $at, %hi(D_802C6078)
/* 2C444 8002B844 D4206078 */  ldc1       $f0, %lo(D_802C6078)($at)
/* 2C448 8002B848 3C01800D */  lui        $at, %hi(D_800D1208)
/* 2C44C 8002B84C D4221208 */  ldc1       $f2, %lo(D_800D1208)($at)
/* 2C450 8002B850 46220000 */  add.d      $f0, $f0, $f2
/* 2C454 8002B854 46200002 */  mul.d      $f0, $f0, $f0
/* 2C458 8002B858 3C01800D */  lui        $at, %hi(D_800D1210)
/* 2C45C 8002B85C D4221210 */  ldc1       $f2, %lo(D_800D1210)($at)
/* 2C460 8002B860 46220300 */  add.d      $f12, $f0, $f2
/* 2C464 8002B864 46206084 */  sqrt.d     $f2, $f12
/* 2C468 8002B868 46221032 */  c.eq.d     $f2, $f2
/* 2C46C 8002B86C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C470 8002B870 00000000 */  nop
/* 2C474 8002B874 45010004 */  bc1t       .L8002B888
/* 2C478 8002B878 AFBF0010 */   sw        $ra, 0x10($sp)
/* 2C47C 8002B87C 0C026F44 */  jal        func_8009BD10
/* 2C480 8002B880 00000000 */   nop
/* 2C484 8002B884 46200086 */  mov.d      $f2, $f0
.L8002B888:
/* 2C488 8002B888 3C01800D */  lui        $at, %hi(D_800D1218)
/* 2C48C 8002B88C D4201218 */  ldc1       $f0, %lo(D_800D1218)($at)
/* 2C490 8002B890 46201000 */  add.d      $f0, $f2, $f0
/* 2C494 8002B894 46200082 */  mul.d      $f2, $f0, $f0
/* 2C498 8002B898 3C01802B */  lui        $at, %hi(D_802AB510)
/* 2C49C 8002B89C F420B510 */  sdc1       $f0, %lo(D_802AB510)($at)
/* 2C4A0 8002B8A0 3C01802B */  lui        $at, %hi(D_802AB518)
/* 2C4A4 8002B8A4 F422B518 */  sdc1       $f2, %lo(D_802AB518)($at)
/* 2C4A8 8002B8A8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2C4AC 8002B8AC 03E00008 */  jr         $ra
/* 2C4B0 8002B8B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002B8B4
/* 2C4B4 8002B8B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C4B8 8002B8B8 AFB20018 */  sw         $s2, 0x18($sp)
/* 2C4BC 8002B8BC 3C12802B */  lui        $s2, %hi(D_802AB550)
/* 2C4C0 8002B8C0 2652B550 */  addiu      $s2, $s2, %lo(D_802AB550)
/* 2C4C4 8002B8C4 02402021 */  addu       $a0, $s2, $zero
/* 2C4C8 8002B8C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2C4CC 8002B8CC AFB10014 */  sw         $s1, 0x14($sp)
/* 2C4D0 8002B8D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C4D4 8002B8D4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 2C4D8 8002B8D8 0C022C70 */  jal        func_8008B1C0
/* 2C4DC 8002B8DC 02402821 */   addu      $a1, $s2, $zero
/* 2C4E0 8002B8E0 3C01800D */  lui        $at, %hi(D_800D1220)
/* 2C4E4 8002B8E4 D4221220 */  ldc1       $f2, %lo(D_800D1220)($at)
/* 2C4E8 8002B8E8 46220001 */  sub.d      $f0, $f0, $f2
/* 2C4EC 8002B8EC 3C11802B */  lui        $s1, %hi(D_802AB568)
/* 2C4F0 8002B8F0 2631B568 */  addiu      $s1, $s1, %lo(D_802AB568)
/* 2C4F4 8002B8F4 02202021 */  addu       $a0, $s1, $zero
/* 2C4F8 8002B8F8 3C01802B */  lui        $at, %hi(D_802AB528)
/* 2C4FC 8002B8FC F420B528 */  sdc1       $f0, %lo(D_802AB528)($at)
/* 2C500 8002B900 0C022C70 */  jal        func_8008B1C0
/* 2C504 8002B904 02402821 */   addu      $a1, $s2, $zero
/* 2C508 8002B908 46200000 */  add.d      $f0, $f0, $f0
/* 2C50C 8002B90C 02202021 */  addu       $a0, $s1, $zero
/* 2C510 8002B910 3C01802B */  lui        $at, %hi(D_802AB530)
/* 2C514 8002B914 F420B530 */  sdc1       $f0, %lo(D_802AB530)($at)
/* 2C518 8002B918 0C022C70 */  jal        func_8008B1C0
/* 2C51C 8002B91C 02202821 */   addu      $a1, $s1, $zero
/* 2C520 8002B920 3C10802B */  lui        $s0, %hi(D_802AB580)
/* 2C524 8002B924 2610B580 */  addiu      $s0, $s0, %lo(D_802AB580)
/* 2C528 8002B928 02002021 */  addu       $a0, $s0, $zero
/* 2C52C 8002B92C 02402821 */  addu       $a1, $s2, $zero
/* 2C530 8002B930 0C022C70 */  jal        func_8008B1C0
/* 2C534 8002B934 46200506 */   mov.d     $f20, $f0
/* 2C538 8002B938 4620A500 */  add.d      $f20, $f20, $f0
/* 2C53C 8002B93C 02002021 */  addu       $a0, $s0, $zero
/* 2C540 8002B940 3C01802B */  lui        $at, %hi(D_802AB538)
/* 2C544 8002B944 F434B538 */  sdc1       $f20, %lo(D_802AB538)($at)
/* 2C548 8002B948 0C022C70 */  jal        func_8008B1C0
/* 2C54C 8002B94C 02202821 */   addu      $a1, $s1, $zero
/* 2C550 8002B950 02002021 */  addu       $a0, $s0, $zero
/* 2C554 8002B954 3C01802B */  lui        $at, %hi(D_802AB540)
/* 2C558 8002B958 F420B540 */  sdc1       $f0, %lo(D_802AB540)($at)
/* 2C55C 8002B95C 0C022C70 */  jal        func_8008B1C0
/* 2C560 8002B960 00802821 */   addu      $a1, $a0, $zero
/* 2C564 8002B964 3C01800D */  lui        $at, %hi(D_800D1228)
/* 2C568 8002B968 D4221228 */  ldc1       $f2, %lo(D_800D1228)($at)
/* 2C56C 8002B96C 46220002 */  mul.d      $f0, $f0, $f2
/* 2C570 8002B970 3C01802B */  lui        $at, %hi(D_802AB548)
/* 2C574 8002B974 F420B548 */  sdc1       $f0, %lo(D_802AB548)($at)
/* 2C578 8002B978 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2C57C 8002B97C 8FB20018 */  lw         $s2, 0x18($sp)
/* 2C580 8002B980 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C584 8002B984 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C588 8002B988 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2C58C 8002B98C 03E00008 */  jr         $ra
/* 2C590 8002B990 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002B994
/* 2C594 8002B994 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2C598 8002B998 D424B5B0 */  ldc1       $f4, %lo(D_802AB5B0)($at)
/* 2C59C 8002B99C 3C01800D */  lui        $at, %hi(D_800D1230)
/* 2C5A0 8002B9A0 D4201230 */  ldc1       $f0, %lo(D_800D1230)($at)
/* 2C5A4 8002B9A4 4620203E */  c.le.d     $f4, $f0
/* 2C5A8 8002B9A8 00000000 */  nop
/* 2C5AC 8002B9AC 45010015 */  bc1t       .L8002BA04
/* 2C5B0 8002B9B0 00000000 */   nop
/* 2C5B4 8002B9B4 3C01800D */  lui        $at, %hi(D_800D1238)
/* 2C5B8 8002B9B8 D4201238 */  ldc1       $f0, %lo(D_800D1238)($at)
/* 2C5BC 8002B9BC 4624003E */  c.le.d     $f0, $f4
/* 2C5C0 8002B9C0 00000000 */  nop
/* 2C5C4 8002B9C4 4501000F */  bc1t       .L8002BA04
/* 2C5C8 8002B9C8 00000000 */   nop
/* 2C5CC 8002B9CC 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2C5D0 8002B9D0 D422B5C0 */  ldc1       $f2, %lo(D_802AB5C0)($at)
/* 2C5D4 8002B9D4 3C01800D */  lui        $at, %hi(D_800D1240)
/* 2C5D8 8002B9D8 D4201240 */  ldc1       $f0, %lo(D_800D1240)($at)
/* 2C5DC 8002B9DC 4620103E */  c.le.d     $f2, $f0
/* 2C5E0 8002B9E0 00000000 */  nop
/* 2C5E4 8002B9E4 45010007 */  bc1t       .L8002BA04
/* 2C5E8 8002B9E8 00000000 */   nop
/* 2C5EC 8002B9EC 3C01800D */  lui        $at, %hi(D_800D1248)
/* 2C5F0 8002B9F0 D4201248 */  ldc1       $f0, %lo(D_800D1248)($at)
/* 2C5F4 8002B9F4 4622003E */  c.le.d     $f0, $f2
/* 2C5F8 8002B9F8 00000000 */  nop
/* 2C5FC 8002B9FC 45000005 */  bc1f       .L8002BA14
/* 2C600 8002BA00 00000000 */   nop
.L8002BA04:
/* 2C604 8002BA04 3C01800C */  lui        $at, %hi(D_800BF460)
/* 2C608 8002BA08 AC20F460 */  sw         $zero, %lo(D_800BF460)($at)
/* 2C60C 8002BA0C 0800AEB7 */  j          .L8002BADC
/* 2C610 8002BA10 24020001 */   addiu     $v0, $zero, 0x1
.L8002BA14:
/* 2C614 8002BA14 3C01800D */  lui        $at, %hi(D_800D1250)
/* 2C618 8002BA18 D42A1250 */  ldc1       $f10, %lo(D_800D1250)($at)
/* 2C61C 8002BA1C 462A203E */  c.le.d     $f4, $f10
/* 2C620 8002BA20 00000000 */  nop
/* 2C624 8002BA24 4500002A */  bc1f       .L8002BAD0
/* 2C628 8002BA28 00000000 */   nop
/* 2C62C 8002BA2C 3C01800D */  lui        $at, %hi(D_800D1258)
/* 2C630 8002BA30 D4261258 */  ldc1       $f6, %lo(D_800D1258)($at)
/* 2C634 8002BA34 4624303E */  c.le.d     $f6, $f4
/* 2C638 8002BA38 00000000 */  nop
/* 2C63C 8002BA3C 45000024 */  bc1f       .L8002BAD0
/* 2C640 8002BA40 00000000 */   nop
/* 2C644 8002BA44 3C01800D */  lui        $at, %hi(D_800D1260)
/* 2C648 8002BA48 D4281260 */  ldc1       $f8, %lo(D_800D1260)($at)
/* 2C64C 8002BA4C 4628103E */  c.le.d     $f2, $f8
/* 2C650 8002BA50 00000000 */  nop
/* 2C654 8002BA54 4500001E */  bc1f       .L8002BAD0
/* 2C658 8002BA58 00000000 */   nop
/* 2C65C 8002BA5C 3C01800D */  lui        $at, %hi(D_800D1268)
/* 2C660 8002BA60 D4241268 */  ldc1       $f4, %lo(D_800D1268)($at)
/* 2C664 8002BA64 4622203E */  c.le.d     $f4, $f2
/* 2C668 8002BA68 00000000 */  nop
/* 2C66C 8002BA6C 45000018 */  bc1f       .L8002BAD0
/* 2C670 8002BA70 00000000 */   nop
/* 2C674 8002BA74 D4800000 */  ldc1       $f0, 0x0($a0)
/* 2C678 8002BA78 462A003E */  c.le.d     $f0, $f10
/* 2C67C 8002BA7C 00000000 */  nop
/* 2C680 8002BA80 45000013 */  bc1f       .L8002BAD0
/* 2C684 8002BA84 00000000 */   nop
/* 2C688 8002BA88 4620303E */  c.le.d     $f6, $f0
/* 2C68C 8002BA8C 00000000 */  nop
/* 2C690 8002BA90 4500000F */  bc1f       .L8002BAD0
/* 2C694 8002BA94 00000000 */   nop
/* 2C698 8002BA98 D4800010 */  ldc1       $f0, 0x10($a0)
/* 2C69C 8002BA9C 4628003E */  c.le.d     $f0, $f8
/* 2C6A0 8002BAA0 00000000 */  nop
/* 2C6A4 8002BAA4 4500000A */  bc1f       .L8002BAD0
/* 2C6A8 8002BAA8 00000000 */   nop
/* 2C6AC 8002BAAC 4620203E */  c.le.d     $f4, $f0
/* 2C6B0 8002BAB0 00000000 */  nop
/* 2C6B4 8002BAB4 00000000 */  nop
/* 2C6B8 8002BAB8 45000005 */  bc1f       .L8002BAD0
/* 2C6BC 8002BABC 24020001 */   addiu     $v0, $zero, 0x1
/* 2C6C0 8002BAC0 3C01800C */  lui        $at, %hi(D_800BF460)
/* 2C6C4 8002BAC4 AC22F460 */  sw         $v0, %lo(D_800BF460)($at)
/* 2C6C8 8002BAC8 0800AEB7 */  j          .L8002BADC
/* 2C6CC 8002BACC 00001021 */   addu      $v0, $zero, $zero
.L8002BAD0:
/* 2C6D0 8002BAD0 3C01800C */  lui        $at, %hi(D_800BF460)
/* 2C6D4 8002BAD4 AC20F460 */  sw         $zero, %lo(D_800BF460)($at)
/* 2C6D8 8002BAD8 00001021 */  addu       $v0, $zero, $zero
.L8002BADC:
/* 2C6DC 8002BADC 03E00008 */  jr         $ra
/* 2C6E0 8002BAE0 00000000 */   nop

glabel func_8002BAE4
/* 2C6E4 8002BAE4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C6E8 8002BAE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C6EC 8002BAEC 00808021 */  addu       $s0, $a0, $zero
/* 2C6F0 8002BAF0 D6040010 */  ldc1       $f4, 0x10($s0)
/* 2C6F4 8002BAF4 44803000 */  mtc1       $zero, $f6
/* 2C6F8 8002BAF8 44803800 */  mtc1       $zero, $f7
/* 2C6FC 8002BAFC D6020028 */  ldc1       $f2, 0x28($s0)
/* 2C700 8002BB00 D6000038 */  ldc1       $f0, 0x38($s0)
/* 2C704 8002BB04 AFBF0018 */  sw         $ra, 0x18($sp)
/* 2C708 8002BB08 AFB10014 */  sw         $s1, 0x14($sp)
/* 2C70C 8002BB0C 46262032 */  c.eq.d     $f4, $f6
/* 2C710 8002BB10 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 2C714 8002BB14 00000000 */  nop
/* 2C718 8002BB18 4500000D */  bc1f       .L8002BB50
/* 2C71C 8002BB1C 46201502 */   mul.d     $f20, $f2, $f0
/* 2C720 8002BB20 4634303C */  c.lt.d     $f6, $f20
/* 2C724 8002BB24 00000000 */  nop
/* 2C728 8002BB28 00000000 */  nop
/* 2C72C 8002BB2C 45020004 */  bc1fl      .L8002BB40
/* 2C730 8002BB30 4620A007 */   neg.d     $f0, $f20
/* 2C734 8002BB34 3C01800D */  lui        $at, %hi(D_800D1270)
/* 2C738 8002BB38 0800AEE7 */  j          .L8002BB9C
/* 2C73C 8002BB3C D4341270 */   ldc1      $f20, %lo(D_800D1270)($at)
.L8002BB40:
/* 2C740 8002BB40 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 2C744 8002BB44 D4226A08 */  ldc1       $f2, %lo(D_800C6A08)($at)
/* 2C748 8002BB48 0800AEE7 */  j          .L8002BB9C
/* 2C74C 8002BB4C 46220503 */   div.d     $f20, $f0, $f2
.L8002BB50:
/* 2C750 8002BB50 00000000 */  nop
/* 2C754 8002BB54 4634A082 */  mul.d      $f2, $f20, $f20
/* 2C758 8002BB58 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 2C75C 8002BB5C D4206A00 */  ldc1       $f0, %lo(D_800C6A00)($at)
/* 2C760 8002BB60 46200000 */  add.d      $f0, $f0, $f0
/* 2C764 8002BB64 46240002 */  mul.d      $f0, $f0, $f4
/* 2C768 8002BB68 46201301 */  sub.d      $f12, $f2, $f0
/* 2C76C 8002BB6C 46206004 */  sqrt.d     $f0, $f12
/* 2C770 8002BB70 46200032 */  c.eq.d     $f0, $f0
/* 2C774 8002BB74 00000000 */  nop
/* 2C778 8002BB78 00000000 */  nop
/* 2C77C 8002BB7C 45030004 */  bc1tl      .L8002BB90
/* 2C780 8002BB80 46340081 */   sub.d     $f2, $f0, $f20
/* 2C784 8002BB84 0C026F44 */  jal        func_8009BD10
/* 2C788 8002BB88 00000000 */   nop
/* 2C78C 8002BB8C 46340081 */  sub.d      $f2, $f0, $f20
.L8002BB90:
/* 2C790 8002BB90 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 2C794 8002BB94 D4206A00 */  ldc1       $f0, %lo(D_800C6A00)($at)
/* 2C798 8002BB98 46201503 */  div.d      $f20, $f2, $f0
.L8002BB9C:
/* 2C79C 8002BB9C D6040038 */  ldc1       $f4, 0x38($s0)
/* 2C7A0 8002BBA0 D6020020 */  ldc1       $f2, 0x20($s0)
/* 2C7A4 8002BBA4 46222082 */  mul.d      $f2, $f4, $f2
/* 2C7A8 8002BBA8 D6000030 */  ldc1       $f0, 0x30($s0)
/* 2C7AC 8002BBAC 46202102 */  mul.d      $f4, $f4, $f0
/* 2C7B0 8002BBB0 00000000 */  nop
/* 2C7B4 8002BBB4 46341082 */  mul.d      $f2, $f2, $f20
/* 2C7B8 8002BBB8 00000000 */  nop
/* 2C7BC 8002BBBC 46342102 */  mul.d      $f4, $f4, $f20
/* 2C7C0 8002BBC0 D6060008 */  ldc1       $f6, 0x8($s0)
/* 2C7C4 8002BBC4 46223180 */  add.d      $f6, $f6, $f2
/* 2C7C8 8002BBC8 D6000018 */  ldc1       $f0, 0x18($s0)
/* 2C7CC 8002BBCC 3C11802B */  lui        $s1, %hi(D_802AB5B0)
/* 2C7D0 8002BBD0 2631B5B0 */  addiu      $s1, $s1, %lo(D_802AB5B0)
/* 2C7D4 8002BBD4 46240000 */  add.d      $f0, $f0, $f4
/* 2C7D8 8002BBD8 3C01802B */  lui        $at, %hi(D_802AB5B8)
/* 2C7DC 8002BBDC AC20B5B8 */  sw         $zero, %lo(D_802AB5B8)($at)
/* 2C7E0 8002BBE0 3C01802B */  lui        $at, %hi(D_802AB5BC)
/* 2C7E4 8002BBE4 AC20B5BC */  sw         $zero, %lo(D_802AB5BC)($at)
/* 2C7E8 8002BBE8 F6260000 */  sdc1       $f6, 0x0($s1)
/* 2C7EC 8002BBEC 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2C7F0 8002BBF0 F420B5C0 */  sdc1       $f0, %lo(D_802AB5C0)($at)
/* 2C7F4 8002BBF4 0C00AE65 */  jal        func_8002B994
/* 2C7F8 8002BBF8 26040008 */   addiu     $a0, $s0, 0x8
/* 2C7FC 8002BBFC 10400011 */  beqz       $v0, .L8002BC44
/* 2C800 8002BC00 00000000 */   nop
/* 2C804 8002BC04 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2C808 8002BC08 D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2C80C 8002BC0C 4620A03C */  c.lt.d     $f20, $f0
/* 2C810 8002BC10 00000000 */  nop
/* 2C814 8002BC14 00000000 */  nop
/* 2C818 8002BC18 4500003A */  bc1f       .L8002BD04
/* 2C81C 8002BC1C 24020080 */   addiu     $v0, $zero, 0x80
/* 2C820 8002BC20 3C03802B */  lui        $v1, %hi(D_802AB5A8)
/* 2C824 8002BC24 8C63B5A8 */  lw         $v1, %lo(D_802AB5A8)($v1)
/* 2C828 8002BC28 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2C82C 8002BC2C F434B520 */  sdc1       $f20, %lo(D_802AB520)($at)
/* 2C830 8002BC30 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2C834 8002BC34 AC22B78C */  sw         $v0, %lo(D_802AB78C)($at)
/* 2C838 8002BC38 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2C83C 8002BC3C 0800AF41 */  j          .L8002BD04
/* 2C840 8002BC40 AC23B788 */   sw        $v1, %lo(D_802AB788)($at)
.L8002BC44:
/* 2C844 8002BC44 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2C848 8002BC48 D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2C84C 8002BC4C 4634003C */  c.lt.d     $f0, $f20
/* 2C850 8002BC50 00000000 */  nop
/* 2C854 8002BC54 4501002B */  bc1t       .L8002BD04
/* 2C858 8002BC58 00000000 */   nop
/* 2C85C 8002BC5C 3C02802B */  lui        $v0, %hi(D_802AB5A8)
/* 2C860 8002BC60 8C42B5A8 */  lw         $v0, %lo(D_802AB5A8)($v0)
/* 2C864 8002BC64 3C03800C */  lui        $v1, %hi(D_800BF460)
/* 2C868 8002BC68 8C63F460 */  lw         $v1, %lo(D_800BF460)($v1)
/* 2C86C 8002BC6C 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2C870 8002BC70 F434B520 */  sdc1       $f20, %lo(D_802AB520)($at)
/* 2C874 8002BC74 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2C878 8002BC78 AC22B788 */  sw         $v0, %lo(D_802AB788)($at)
/* 2C87C 8002BC7C 10600005 */  beqz       $v1, .L8002BC94
/* 2C880 8002BC80 00002021 */   addu      $a0, $zero, $zero
/* 2C884 8002BC84 0800AF3F */  j          .L8002BCFC
/* 2C888 8002BC88 24020040 */   addiu     $v0, $zero, 0x40
.L8002BC8C:
/* 2C88C 8002BC8C 0800AF3F */  j          .L8002BCFC
/* 2C890 8002BC90 00041200 */   sll       $v0, $a0, 8
.L8002BC94:
/* 2C894 8002BC94 D6260000 */  ldc1       $f6, 0x0($s1)
/* 2C898 8002BC98 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2C89C 8002BC9C D424B5C0 */  ldc1       $f4, %lo(D_802AB5C0)($at)
/* 2C8A0 8002BCA0 3C01800D */  lui        $at, %hi(D_800D1278)
/* 2C8A4 8002BCA4 D4281278 */  ldc1       $f8, %lo(D_800D1278)($at)
/* 2C8A8 8002BCA8 00001821 */  addu       $v1, $zero, $zero
.L8002BCAC:
/* 2C8AC 8002BCAC 3C01800C */  lui        $at, %hi(D_800C66E8)
/* 2C8B0 8002BCB0 00230821 */  addu       $at, $at, $v1
/* 2C8B4 8002BCB4 D42266E8 */  ldc1       $f2, %lo(D_800C66E8)($at)
/* 2C8B8 8002BCB8 46223081 */  sub.d      $f2, $f6, $f2
/* 2C8BC 8002BCBC 46221082 */  mul.d      $f2, $f2, $f2
/* 2C8C0 8002BCC0 3C01800C */  lui        $at, %hi(D_800C66F0)
/* 2C8C4 8002BCC4 00230821 */  addu       $at, $at, $v1
/* 2C8C8 8002BCC8 D42066F0 */  ldc1       $f0, %lo(D_800C66F0)($at)
/* 2C8CC 8002BCCC 46202001 */  sub.d      $f0, $f4, $f0
/* 2C8D0 8002BCD0 46200002 */  mul.d      $f0, $f0, $f0
/* 2C8D4 8002BCD4 46201080 */  add.d      $f2, $f2, $f0
/* 2C8D8 8002BCD8 4628103C */  c.lt.d     $f2, $f8
/* 2C8DC 8002BCDC 00000000 */  nop
/* 2C8E0 8002BCE0 00000000 */  nop
/* 2C8E4 8002BCE4 4501FFE9 */  bc1t       .L8002BC8C
/* 2C8E8 8002BCE8 24840001 */   addiu     $a0, $a0, 0x1
/* 2C8EC 8002BCEC 28820006 */  slti       $v0, $a0, 0x6
/* 2C8F0 8002BCF0 1440FFEE */  bnez       $v0, .L8002BCAC
/* 2C8F4 8002BCF4 24630010 */   addiu     $v1, $v1, 0x10
/* 2C8F8 8002BCF8 24020040 */  addiu      $v0, $zero, 0x40
.L8002BCFC:
/* 2C8FC 8002BCFC 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2C900 8002BD00 AC22B78C */  sw         $v0, %lo(D_802AB78C)($at)
.L8002BD04:
/* 2C904 8002BD04 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2C908 8002BD08 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C90C 8002BD0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C910 8002BD10 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2C914 8002BD14 03E00008 */  jr         $ra
/* 2C918 8002BD18 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002BD1C
/* 2C91C 8002BD1C D4900020 */  ldc1       $f16, 0x20($a0)
/* 2C920 8002BD20 D48E0038 */  ldc1       $f14, 0x38($a0)
/* 2C924 8002BD24 462E8402 */  mul.d      $f16, $f16, $f14
/* 2C928 8002BD28 D4B20020 */  ldc1       $f18, 0x20($a1)
/* 2C92C 8002BD2C D4A40038 */  ldc1       $f4, 0x38($a1)
/* 2C930 8002BD30 46249482 */  mul.d      $f18, $f18, $f4
/* 2C934 8002BD34 D48C0030 */  ldc1       $f12, 0x30($a0)
/* 2C938 8002BD38 D4880008 */  ldc1       $f8, 0x8($a0)
/* 2C93C 8002BD3C D4A00008 */  ldc1       $f0, 0x8($a1)
/* 2C940 8002BD40 D4860010 */  ldc1       $f6, 0x10($a0)
/* 2C944 8002BD44 D4AA0030 */  ldc1       $f10, 0x30($a1)
/* 2C948 8002BD48 D4A20010 */  ldc1       $f2, 0x10($a1)
/* 2C94C 8002BD4C 3C03802B */  lui        $v1, %hi(D_802AB5A8)
/* 2C950 8002BD50 8C63B5A8 */  lw         $v1, %lo(D_802AB5A8)($v1)
/* 2C954 8002BD54 46245282 */  mul.d      $f10, $f10, $f4
/* 2C958 8002BD58 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C95C 8002BD5C AFB00010 */  sw         $s0, 0x10($sp)
/* 2C960 8002BD60 3C10802B */  lui        $s0, %hi(D_802AB550)
/* 2C964 8002BD64 2610B550 */  addiu      $s0, $s0, %lo(D_802AB550)
/* 2C968 8002BD68 AFB10014 */  sw         $s1, 0x14($sp)
/* 2C96C 8002BD6C D4840018 */  ldc1       $f4, 0x18($a0)
/* 2C970 8002BD70 46204201 */  sub.d      $f8, $f8, $f0
/* 2C974 8002BD74 D4A00018 */  ldc1       $f0, 0x18($a1)
/* 2C978 8002BD78 462E6302 */  mul.d      $f12, $f12, $f14
/* 2C97C 8002BD7C 3C11802B */  lui        $s1, %hi(D_802AB568)
/* 2C980 8002BD80 2631B568 */  addiu      $s1, $s1, %lo(D_802AB568)
/* 2C984 8002BD84 46223181 */  sub.d      $f6, $f6, $f2
/* 2C988 8002BD88 AFBF0018 */  sw         $ra, 0x18($sp)
/* 2C98C 8002BD8C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 2C990 8002BD90 D4820028 */  ldc1       $f2, 0x28($a0)
/* 2C994 8002BD94 46202101 */  sub.d      $f4, $f4, $f0
/* 2C998 8002BD98 00031040 */  sll        $v0, $v1, 1
/* 2C99C 8002BD9C 462E1082 */  mul.d      $f2, $f2, $f14
/* 2C9A0 8002BDA0 00431021 */  addu       $v0, $v0, $v1
/* 2C9A4 8002BDA4 46328401 */  sub.d      $f16, $f16, $f18
/* 2C9A8 8002BDA8 000210C0 */  sll        $v0, $v0, 3
/* 2C9AC 8002BDAC F6080000 */  sdc1       $f8, 0x0($s0)
/* 2C9B0 8002BDB0 3C01802B */  lui        $at, %hi(D_802AB558)
/* 2C9B4 8002BDB4 F426B558 */  sdc1       $f6, %lo(D_802AB558)($at)
/* 2C9B8 8002BDB8 462A6301 */  sub.d      $f12, $f12, $f10
/* 2C9BC 8002BDBC 3C01802B */  lui        $at, %hi(D_802AB560)
/* 2C9C0 8002BDC0 F424B560 */  sdc1       $f4, %lo(D_802AB560)($at)
/* 2C9C4 8002BDC4 3C01802B */  lui        $at, %hi(D_802AB570)
/* 2C9C8 8002BDC8 F422B570 */  sdc1       $f2, %lo(D_802AB570)($at)
/* 2C9CC 8002BDCC F6300000 */  sdc1       $f16, 0x0($s1)
/* 2C9D0 8002BDD0 3C01802B */  lui        $at, %hi(D_802AB578)
/* 2C9D4 8002BDD4 F42CB578 */  sdc1       $f12, %lo(D_802AB578)($at)
/* 2C9D8 8002BDD8 3C01802B */  lui        $at, %hi(D_802AB600)
/* 2C9DC 8002BDDC 00220821 */  addu       $at, $at, $v0
/* 2C9E0 8002BDE0 D420B600 */  ldc1       $f0, %lo(D_802AB600)($at)
/* 2C9E4 8002BDE4 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 2C9E8 8002BDE8 D4226A00 */  ldc1       $f2, %lo(D_800C6A00)($at)
/* 2C9EC 8002BDEC 46200007 */  neg.d      $f0, $f0
/* 2C9F0 8002BDF0 3C01802B */  lui        $at, %hi(D_802AB588)
/* 2C9F4 8002BDF4 F422B588 */  sdc1       $f2, %lo(D_802AB588)($at)
/* 2C9F8 8002BDF8 3C01802B */  lui        $at, %hi(D_802AB580)
/* 2C9FC 8002BDFC F420B580 */  sdc1       $f0, %lo(D_802AB580)($at)
/* 2CA00 8002BE00 3C01802B */  lui        $at, %hi(D_802AB610)
/* 2CA04 8002BE04 00220821 */  addu       $at, $at, $v0
/* 2CA08 8002BE08 D420B610 */  ldc1       $f0, %lo(D_802AB610)($at)
/* 2CA0C 8002BE0C 02002021 */  addu       $a0, $s0, $zero
/* 2CA10 8002BE10 46200007 */  neg.d      $f0, $f0
/* 2CA14 8002BE14 3C01802B */  lui        $at, %hi(D_802AB590)
/* 2CA18 8002BE18 F420B590 */  sdc1       $f0, %lo(D_802AB590)($at)
/* 2CA1C 8002BE1C 0C022C70 */  jal        func_8008B1C0
/* 2CA20 8002BE20 02002821 */   addu      $a1, $s0, $zero
/* 2CA24 8002BE24 02002021 */  addu       $a0, $s0, $zero
/* 2CA28 8002BE28 02202821 */  addu       $a1, $s1, $zero
/* 2CA2C 8002BE2C 0C022C70 */  jal        func_8008B1C0
/* 2CA30 8002BE30 46200506 */   mov.d     $f20, $f0
/* 2CA34 8002BE34 3C01800D */  lui        $at, %hi(D_800D1288)
/* 2CA38 8002BE38 D4221288 */  ldc1       $f2, %lo(D_800D1288)($at)
/* 2CA3C 8002BE3C 4622A03C */  c.lt.d     $f20, $f2
/* 2CA40 8002BE40 00000000 */  nop
/* 2CA44 8002BE44 00000000 */  nop
/* 2CA48 8002BE48 45000012 */  bc1f       .L8002BE94
/* 2CA4C 8002BE4C 46200086 */   mov.d     $f2, $f0
/* 2CA50 8002BE50 44800000 */  mtc1       $zero, $f0
/* 2CA54 8002BE54 44800800 */  mtc1       $zero, $f1
/* 2CA58 8002BE58 00000000 */  nop
/* 2CA5C 8002BE5C 4620103C */  c.lt.d     $f2, $f0
/* 2CA60 8002BE60 00000000 */  nop
/* 2CA64 8002BE64 4500002E */  bc1f       .L8002BF20
/* 2CA68 8002BE68 00000000 */   nop
/* 2CA6C 8002BE6C 3C01800D */  lui        $at, %hi(D_800D1280)
/* 2CA70 8002BE70 D4201280 */  ldc1       $f0, %lo(D_800D1280)($at)
/* 2CA74 8002BE74 3C02802B */  lui        $v0, %hi(D_802AB5AC)
/* 2CA78 8002BE78 8C42B5AC */  lw         $v0, %lo(D_802AB5AC)($v0)
/* 2CA7C 8002BE7C 3C03802B */  lui        $v1, %hi(D_802AB5A8)
/* 2CA80 8002BE80 8C63B5A8 */  lw         $v1, %lo(D_802AB5A8)($v1)
/* 2CA84 8002BE84 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CA88 8002BE88 F420B520 */  sdc1       $f0, %lo(D_802AB520)($at)
/* 2CA8C 8002BE8C 0800AFC4 */  j          .L8002BF10
/* 2CA90 8002BE90 000212C0 */   sll       $v0, $v0, 11
.L8002BE94:
/* 2CA94 8002BE94 0C00AE2D */  jal        func_8002B8B4
/* 2CA98 8002BE98 00000000 */   nop
/* 2CA9C 8002BE9C 3C06802B */  lui        $a2, %hi(D_802AB520)
/* 2CAA0 8002BEA0 8CC6B520 */  lw         $a2, %lo(D_802AB520)($a2)
/* 2CAA4 8002BEA4 3C07802B */  lui        $a3, %hi(D_802AB524)
/* 2CAA8 8002BEA8 8CE7B524 */  lw         $a3, %lo(D_802AB524)($a3)
/* 2CAAC 8002BEAC 3C04802B */  lui        $a0, %hi(D_802AB528)
/* 2CAB0 8002BEB0 0C00BD4A */  jal        func_8002F528
/* 2CAB4 8002BEB4 2484B528 */   addiu     $a0, $a0, %lo(D_802AB528)
/* 2CAB8 8002BEB8 0C00BF66 */  jal        func_8002FD98
/* 2CABC 8002BEBC 00000000 */   nop
/* 2CAC0 8002BEC0 44801000 */  mtc1       $zero, $f2
/* 2CAC4 8002BEC4 44801800 */  mtc1       $zero, $f3
/* 2CAC8 8002BEC8 46200106 */  mov.d      $f4, $f0
/* 2CACC 8002BECC 4622203E */  c.le.d     $f4, $f2
/* 2CAD0 8002BED0 00000000 */  nop
/* 2CAD4 8002BED4 45010012 */  bc1t       .L8002BF20
/* 2CAD8 8002BED8 00000000 */   nop
/* 2CADC 8002BEDC 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CAE0 8002BEE0 D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2CAE4 8002BEE4 4624003C */  c.lt.d     $f0, $f4
/* 2CAE8 8002BEE8 00000000 */  nop
/* 2CAEC 8002BEEC 4501000C */  bc1t       .L8002BF20
/* 2CAF0 8002BEF0 00000000 */   nop
/* 2CAF4 8002BEF4 3C03802B */  lui        $v1, %hi(D_802AB5A8)
/* 2CAF8 8002BEF8 8C63B5A8 */  lw         $v1, %lo(D_802AB5A8)($v1)
/* 2CAFC 8002BEFC 3C02802B */  lui        $v0, %hi(D_802AB5AC)
/* 2CB00 8002BF00 8C42B5AC */  lw         $v0, %lo(D_802AB5AC)($v0)
/* 2CB04 8002BF04 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CB08 8002BF08 F424B520 */  sdc1       $f4, %lo(D_802AB520)($at)
/* 2CB0C 8002BF0C 000212C0 */  sll        $v0, $v0, 11
.L8002BF10:
/* 2CB10 8002BF10 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2CB14 8002BF14 AC23B788 */  sw         $v1, %lo(D_802AB788)($at)
/* 2CB18 8002BF18 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2CB1C 8002BF1C AC22B78C */  sw         $v0, %lo(D_802AB78C)($at)
.L8002BF20:
/* 2CB20 8002BF20 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2CB24 8002BF24 8FB10014 */  lw         $s1, 0x14($sp)
/* 2CB28 8002BF28 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CB2C 8002BF2C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2CB30 8002BF30 03E00008 */  jr         $ra
/* 2CB34 8002BF34 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002BF38
/* 2CB38 8002BF38 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2CB3C 8002BF3C AFB00010 */  sw         $s0, 0x10($sp)
/* 2CB40 8002BF40 00808021 */  addu       $s0, $a0, $zero
/* 2CB44 8002BF44 AFB10014 */  sw         $s1, 0x14($sp)
/* 2CB48 8002BF48 00A08821 */  addu       $s1, $a1, $zero
/* 2CB4C 8002BF4C D6060008 */  ldc1       $f6, 0x8($s0)
/* 2CB50 8002BF50 D6200008 */  ldc1       $f0, 0x8($s1)
/* 2CB54 8002BF54 D6040010 */  ldc1       $f4, 0x10($s0)
/* 2CB58 8002BF58 D6020018 */  ldc1       $f2, 0x18($s0)
/* 2CB5C 8002BF5C 46203181 */  sub.d      $f6, $f6, $f0
/* 2CB60 8002BF60 D6200010 */  ldc1       $f0, 0x10($s1)
/* 2CB64 8002BF64 AFB20018 */  sw         $s2, 0x18($sp)
/* 2CB68 8002BF68 3C12802B */  lui        $s2, %hi(D_802AB550)
/* 2CB6C 8002BF6C 2652B550 */  addiu      $s2, $s2, %lo(D_802AB550)
/* 2CB70 8002BF70 46202101 */  sub.d      $f4, $f4, $f0
/* 2CB74 8002BF74 D6200018 */  ldc1       $f0, 0x18($s1)
/* 2CB78 8002BF78 02402021 */  addu       $a0, $s2, $zero
/* 2CB7C 8002BF7C AFBF001C */  sw         $ra, 0x1C($sp)
/* 2CB80 8002BF80 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 2CB84 8002BF84 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 2CB88 8002BF88 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 2CB8C 8002BF8C 46201081 */  sub.d      $f2, $f2, $f0
/* 2CB90 8002BF90 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 2CB94 8002BF94 F6460000 */  sdc1       $f6, 0x0($s2)
/* 2CB98 8002BF98 3C01802B */  lui        $at, %hi(D_802AB558)
/* 2CB9C 8002BF9C F424B558 */  sdc1       $f4, %lo(D_802AB558)($at)
/* 2CBA0 8002BFA0 3C01802B */  lui        $at, %hi(D_802AB560)
/* 2CBA4 8002BFA4 F422B560 */  sdc1       $f2, %lo(D_802AB560)($at)
/* 2CBA8 8002BFA8 0C022C70 */  jal        func_8008B1C0
/* 2CBAC 8002BFAC 02402821 */   addu      $a1, $s2, $zero
/* 2CBB0 8002BFB0 D60E0020 */  ldc1       $f14, 0x20($s0)
/* 2CBB4 8002BFB4 D6040038 */  ldc1       $f4, 0x38($s0)
/* 2CBB8 8002BFB8 46247382 */  mul.d      $f14, $f14, $f4
/* 2CBBC 8002BFBC D6280020 */  ldc1       $f8, 0x20($s1)
/* 2CBC0 8002BFC0 D62A0038 */  ldc1       $f10, 0x38($s1)
/* 2CBC4 8002BFC4 462A4202 */  mul.d      $f8, $f8, $f10
/* 2CBC8 8002BFC8 D60C0028 */  ldc1       $f12, 0x28($s0)
/* 2CBCC 8002BFCC 46246302 */  mul.d      $f12, $f12, $f4
/* 2CBD0 8002BFD0 D6220028 */  ldc1       $f2, 0x28($s1)
/* 2CBD4 8002BFD4 462A1082 */  mul.d      $f2, $f2, $f10
/* 2CBD8 8002BFD8 D6060030 */  ldc1       $f6, 0x30($s0)
/* 2CBDC 8002BFDC 46243182 */  mul.d      $f6, $f6, $f4
/* 2CBE0 8002BFE0 D6240030 */  ldc1       $f4, 0x30($s1)
/* 2CBE4 8002BFE4 462A2102 */  mul.d      $f4, $f4, $f10
/* 2CBE8 8002BFE8 46287381 */  sub.d      $f14, $f14, $f8
/* 2CBEC 8002BFEC 46226301 */  sub.d      $f12, $f12, $f2
/* 2CBF0 8002BFF0 3C10802B */  lui        $s0, %hi(D_802AB568)
/* 2CBF4 8002BFF4 2610B568 */  addiu      $s0, $s0, %lo(D_802AB568)
/* 2CBF8 8002BFF8 02002021 */  addu       $a0, $s0, $zero
/* 2CBFC 8002BFFC 46243181 */  sub.d      $f6, $f6, $f4
/* 2CC00 8002C000 3C01800D */  lui        $at, %hi(D_800D1298)
/* 2CC04 8002C004 D4221298 */  ldc1       $f2, %lo(D_800D1298)($at)
/* 2CC08 8002C008 4480C000 */  mtc1       $zero, $f24
/* 2CC0C 8002C00C 4480C800 */  mtc1       $zero, $f25
/* 2CC10 8002C010 02402821 */  addu       $a1, $s2, $zero
/* 2CC14 8002C014 F60E0000 */  sdc1       $f14, 0x0($s0)
/* 2CC18 8002C018 3C01802B */  lui        $at, %hi(D_802AB570)
/* 2CC1C 8002C01C F42CB570 */  sdc1       $f12, %lo(D_802AB570)($at)
/* 2CC20 8002C020 3C01802B */  lui        $at, %hi(D_802AB578)
/* 2CC24 8002C024 F426B578 */  sdc1       $f6, %lo(D_802AB578)($at)
/* 2CC28 8002C028 0C022C70 */  jal        func_8008B1C0
/* 2CC2C 8002C02C 46220681 */   sub.d     $f26, $f0, $f2
/* 2CC30 8002C030 46200586 */  mov.d      $f22, $f0
/* 2CC34 8002C034 4636C03C */  c.lt.d     $f24, $f22
/* 2CC38 8002C038 00000000 */  nop
/* 2CC3C 8002C03C 4501003E */  bc1t       .L8002C138
/* 2CC40 8002C040 00000000 */   nop
/* 2CC44 8002C044 4638D03C */  c.lt.d     $f26, $f24
/* 2CC48 8002C048 00000000 */  nop
/* 2CC4C 8002C04C 00000000 */  nop
/* 2CC50 8002C050 4500000B */  bc1f       .L8002C080
/* 2CC54 8002C054 02002021 */   addu      $a0, $s0, $zero
/* 2CC58 8002C058 3C01800D */  lui        $at, %hi(D_800D1290)
/* 2CC5C 8002C05C D4201290 */  ldc1       $f0, %lo(D_800D1290)($at)
/* 2CC60 8002C060 3C02802B */  lui        $v0, %hi(D_802AB5AC)
/* 2CC64 8002C064 8C42B5AC */  lw         $v0, %lo(D_802AB5AC)($v0)
/* 2CC68 8002C068 3C03802B */  lui        $v1, %hi(D_802AB5A8)
/* 2CC6C 8002C06C 8C63B5A8 */  lw         $v1, %lo(D_802AB5A8)($v1)
/* 2CC70 8002C070 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CC74 8002C074 F420B520 */  sdc1       $f0, %lo(D_802AB520)($at)
/* 2CC78 8002C078 0800B04A */  j          .L8002C128
/* 2CC7C 8002C07C 000212C0 */   sll       $v0, $v0, 11
.L8002C080:
/* 2CC80 8002C080 0C022C70 */  jal        func_8008B1C0
/* 2CC84 8002C084 00802821 */   addu      $a1, $a0, $zero
/* 2CC88 8002C088 00000000 */  nop
/* 2CC8C 8002C08C 4636B082 */  mul.d      $f2, $f22, $f22
/* 2CC90 8002C090 46200506 */  mov.d      $f20, $f0
/* 2CC94 8002C094 463AA002 */  mul.d      $f0, $f20, $f26
/* 2CC98 8002C098 46201301 */  sub.d      $f12, $f2, $f0
/* 2CC9C 8002C09C 4638603C */  c.lt.d     $f12, $f24
/* 2CCA0 8002C0A0 00000000 */  nop
/* 2CCA4 8002C0A4 45010024 */  bc1t       .L8002C138
/* 2CCA8 8002C0A8 00000000 */   nop
/* 2CCAC 8002C0AC 3C01800D */  lui        $at, %hi(D_800D12A0)
/* 2CCB0 8002C0B0 D42212A0 */  ldc1       $f2, %lo(D_800D12A0)($at)
/* 2CCB4 8002C0B4 4620A005 */  abs.d      $f0, $f20
/* 2CCB8 8002C0B8 4622003C */  c.lt.d     $f0, $f2
/* 2CCBC 8002C0BC 00000000 */  nop
/* 2CCC0 8002C0C0 4501001D */  bc1t       .L8002C138
/* 2CCC4 8002C0C4 00000000 */   nop
/* 2CCC8 8002C0C8 46206004 */  sqrt.d     $f0, $f12
/* 2CCCC 8002C0CC 46200032 */  c.eq.d     $f0, $f0
/* 2CCD0 8002C0D0 00000000 */  nop
/* 2CCD4 8002C0D4 00000000 */  nop
/* 2CCD8 8002C0D8 45030004 */  bc1tl      .L8002C0EC
/* 2CCDC 8002C0DC 4620B000 */   add.d     $f0, $f22, $f0
/* 2CCE0 8002C0E0 0C026F44 */  jal        func_8009BD10
/* 2CCE4 8002C0E4 00000000 */   nop
/* 2CCE8 8002C0E8 4620B000 */  add.d      $f0, $f22, $f0
.L8002C0EC:
/* 2CCEC 8002C0EC 46200007 */  neg.d      $f0, $f0
/* 2CCF0 8002C0F0 46340303 */  div.d      $f12, $f0, $f20
/* 2CCF4 8002C0F4 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CCF8 8002C0F8 D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2CCFC 8002C0FC 462C003E */  c.le.d     $f0, $f12
/* 2CD00 8002C100 00000000 */  nop
/* 2CD04 8002C104 4501000C */  bc1t       .L8002C138
/* 2CD08 8002C108 00000000 */   nop
/* 2CD0C 8002C10C 3C03802B */  lui        $v1, %hi(D_802AB5A8)
/* 2CD10 8002C110 8C63B5A8 */  lw         $v1, %lo(D_802AB5A8)($v1)
/* 2CD14 8002C114 3C02802B */  lui        $v0, %hi(D_802AB5AC)
/* 2CD18 8002C118 8C42B5AC */  lw         $v0, %lo(D_802AB5AC)($v0)
/* 2CD1C 8002C11C 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CD20 8002C120 F42CB520 */  sdc1       $f12, %lo(D_802AB520)($at)
/* 2CD24 8002C124 000212C0 */  sll        $v0, $v0, 11
.L8002C128:
/* 2CD28 8002C128 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2CD2C 8002C12C AC23B788 */  sw         $v1, %lo(D_802AB788)($at)
/* 2CD30 8002C130 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2CD34 8002C134 AC22B78C */  sw         $v0, %lo(D_802AB78C)($at)
.L8002C138:
/* 2CD38 8002C138 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2CD3C 8002C13C 8FB20018 */  lw         $s2, 0x18($sp)
/* 2CD40 8002C140 8FB10014 */  lw         $s1, 0x14($sp)
/* 2CD44 8002C144 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CD48 8002C148 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 2CD4C 8002C14C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 2CD50 8002C150 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 2CD54 8002C154 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2CD58 8002C158 03E00008 */  jr         $ra
/* 2CD5C 8002C15C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8002C160
/* 2CD60 8002C160 80A30000 */  lb         $v1, 0x0($a1)
/* 2CD64 8002C164 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CD68 8002C168 24020020 */  addiu      $v0, $zero, 0x20
/* 2CD6C 8002C16C 10620005 */  beq        $v1, $v0, .L8002C184
/* 2CD70 8002C170 AFBF0010 */   sw        $ra, 0x10($sp)
/* 2CD74 8002C174 0C00AF47 */  jal        func_8002BD1C
/* 2CD78 8002C178 00000000 */   nop
/* 2CD7C 8002C17C 0800B063 */  j          .L8002C18C
/* 2CD80 8002C180 00000000 */   nop
.L8002C184:
/* 2CD84 8002C184 0C00AFCE */  jal        func_8002BF38
/* 2CD88 8002C188 00000000 */   nop
.L8002C18C:
/* 2CD8C 8002C18C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2CD90 8002C190 03E00008 */  jr         $ra
/* 2CD94 8002C194 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002C198
/* 2CD98 8002C198 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2CD9C 8002C19C AFB00010 */  sw         $s0, 0x10($sp)
/* 2CDA0 8002C1A0 00808021 */  addu       $s0, $a0, $zero
/* 2CDA4 8002C1A4 26040008 */  addiu      $a0, $s0, 0x8
/* 2CDA8 8002C1A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 2CDAC 8002C1AC 3C11802B */  lui        $s1, %hi(D_802AB550)
/* 2CDB0 8002C1B0 2631B550 */  addiu      $s1, $s1, %lo(D_802AB550)
/* 2CDB4 8002C1B4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 2CDB8 8002C1B8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 2CDBC 8002C1BC AFB20018 */  sw         $s2, 0x18($sp)
/* 2CDC0 8002C1C0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 2CDC4 8002C1C4 0C022B9C */  jal        func_8008AE70
/* 2CDC8 8002C1C8 02203021 */   addu      $a2, $s1, $zero
/* 2CDCC 8002C1CC D6000038 */  ldc1       $f0, 0x38($s0)
/* 2CDD0 8002C1D0 D6060020 */  ldc1       $f6, 0x20($s0)
/* 2CDD4 8002C1D4 46260182 */  mul.d      $f6, $f0, $f6
/* 2CDD8 8002C1D8 D6040028 */  ldc1       $f4, 0x28($s0)
/* 2CDDC 8002C1DC 46240102 */  mul.d      $f4, $f0, $f4
/* 2CDE0 8002C1E0 02202021 */  addu       $a0, $s1, $zero
/* 2CDE4 8002C1E4 D6020030 */  ldc1       $f2, 0x30($s0)
/* 2CDE8 8002C1E8 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 2CDEC 8002C1EC D4286A00 */  ldc1       $f8, %lo(D_800C6A00)($at)
/* 2CDF0 8002C1F0 46220002 */  mul.d      $f0, $f0, $f2
/* 2CDF4 8002C1F4 3C12802B */  lui        $s2, %hi(D_802AB580)
/* 2CDF8 8002C1F8 2652B580 */  addiu      $s2, $s2, %lo(D_802AB580)
/* 2CDFC 8002C1FC 3C10802B */  lui        $s0, %hi(D_802AB568)
/* 2CE00 8002C200 2610B568 */  addiu      $s0, $s0, %lo(D_802AB568)
/* 2CE04 8002C204 AE400000 */  sw         $zero, 0x0($s2)
/* 2CE08 8002C208 AE400004 */  sw         $zero, 0x4($s2)
/* 2CE0C 8002C20C 3C01802B */  lui        $at, %hi(D_802AB590)
/* 2CE10 8002C210 AC20B590 */  sw         $zero, %lo(D_802AB590)($at)
/* 2CE14 8002C214 3C01802B */  lui        $at, %hi(D_802AB594)
/* 2CE18 8002C218 AC20B594 */  sw         $zero, %lo(D_802AB594)($at)
/* 2CE1C 8002C21C 3C01802B */  lui        $at, %hi(D_802AB588)
/* 2CE20 8002C220 F428B588 */  sdc1       $f8, %lo(D_802AB588)($at)
/* 2CE24 8002C224 F6060000 */  sdc1       $f6, 0x0($s0)
/* 2CE28 8002C228 3C01802B */  lui        $at, %hi(D_802AB570)
/* 2CE2C 8002C22C F424B570 */  sdc1       $f4, %lo(D_802AB570)($at)
/* 2CE30 8002C230 3C01802B */  lui        $at, %hi(D_802AB578)
/* 2CE34 8002C234 F420B578 */  sdc1       $f0, %lo(D_802AB578)($at)
/* 2CE38 8002C238 0C022C70 */  jal        func_8008B1C0
/* 2CE3C 8002C23C 02202821 */   addu      $a1, $s1, $zero
/* 2CE40 8002C240 3C01800D */  lui        $at, %hi(D_800D12B0)
/* 2CE44 8002C244 D42212B0 */  ldc1       $f2, %lo(D_800D12B0)($at)
/* 2CE48 8002C248 46220001 */  sub.d      $f0, $f0, $f2
/* 2CE4C 8002C24C 02002021 */  addu       $a0, $s0, $zero
/* 2CE50 8002C250 3C13802B */  lui        $s3, %hi(D_802AB528)
/* 2CE54 8002C254 2673B528 */  addiu      $s3, $s3, %lo(D_802AB528)
/* 2CE58 8002C258 F6600000 */  sdc1       $f0, 0x0($s3)
/* 2CE5C 8002C25C 0C022C70 */  jal        func_8008B1C0
/* 2CE60 8002C260 02202821 */   addu      $a1, $s1, $zero
/* 2CE64 8002C264 46200000 */  add.d      $f0, $f0, $f0
/* 2CE68 8002C268 02002021 */  addu       $a0, $s0, $zero
/* 2CE6C 8002C26C 3C01802B */  lui        $at, %hi(D_802AB530)
/* 2CE70 8002C270 F420B530 */  sdc1       $f0, %lo(D_802AB530)($at)
/* 2CE74 8002C274 0C022C70 */  jal        func_8008B1C0
/* 2CE78 8002C278 02002821 */   addu      $a1, $s0, $zero
/* 2CE7C 8002C27C 02402021 */  addu       $a0, $s2, $zero
/* 2CE80 8002C280 02202821 */  addu       $a1, $s1, $zero
/* 2CE84 8002C284 0C022C70 */  jal        func_8008B1C0
/* 2CE88 8002C288 46200506 */   mov.d     $f20, $f0
/* 2CE8C 8002C28C 4620A500 */  add.d      $f20, $f20, $f0
/* 2CE90 8002C290 02402021 */  addu       $a0, $s2, $zero
/* 2CE94 8002C294 3C01802B */  lui        $at, %hi(D_802AB538)
/* 2CE98 8002C298 F434B538 */  sdc1       $f20, %lo(D_802AB538)($at)
/* 2CE9C 8002C29C 0C022C70 */  jal        func_8008B1C0
/* 2CEA0 8002C2A0 02002821 */   addu      $a1, $s0, $zero
/* 2CEA4 8002C2A4 02402021 */  addu       $a0, $s2, $zero
/* 2CEA8 8002C2A8 3C01802B */  lui        $at, %hi(D_802AB540)
/* 2CEAC 8002C2AC F420B540 */  sdc1       $f0, %lo(D_802AB540)($at)
/* 2CEB0 8002C2B0 0C022C70 */  jal        func_8008B1C0
/* 2CEB4 8002C2B4 00802821 */   addu      $a1, $a0, $zero
/* 2CEB8 8002C2B8 3C01800D */  lui        $at, %hi(D_800D12B8)
/* 2CEBC 8002C2BC D42212B8 */  ldc1       $f2, %lo(D_800D12B8)($at)
/* 2CEC0 8002C2C0 46220002 */  mul.d      $f0, $f0, $f2
/* 2CEC4 8002C2C4 D6640000 */  ldc1       $f4, 0x0($s3)
/* 2CEC8 8002C2C8 3C01800D */  lui        $at, %hi(D_800D12C0)
/* 2CECC 8002C2CC D42212C0 */  ldc1       $f2, %lo(D_800D12C0)($at)
/* 2CED0 8002C2D0 4622203C */  c.lt.d     $f4, $f2
/* 2CED4 8002C2D4 3C01802B */  lui        $at, %hi(D_802AB548)
/* 2CED8 8002C2D8 F420B548 */  sdc1       $f0, %lo(D_802AB548)($at)
/* 2CEDC 8002C2DC 4500001C */  bc1f       .L8002C350
/* 2CEE0 8002C2E0 00000000 */   nop
/* 2CEE4 8002C2E4 3C01802B */  lui        $at, %hi(D_802AB530)
/* 2CEE8 8002C2E8 D422B530 */  ldc1       $f2, %lo(D_802AB530)($at)
/* 2CEEC 8002C2EC 44800000 */  mtc1       $zero, $f0
/* 2CEF0 8002C2F0 44800800 */  mtc1       $zero, $f1
/* 2CEF4 8002C2F4 00000000 */  nop
/* 2CEF8 8002C2F8 4620103C */  c.lt.d     $f2, $f0
/* 2CEFC 8002C2FC 00000000 */  nop
/* 2CF00 8002C300 45000013 */  bc1f       .L8002C350
/* 2CF04 8002C304 00000000 */   nop
/* 2CF08 8002C308 3C01800D */  lui        $at, %hi(D_800D12A8)
/* 2CF0C 8002C30C D42012A8 */  ldc1       $f0, %lo(D_800D12A8)($at)
/* 2CF10 8002C310 3C02802B */  lui        $v0, %hi(D_802AB5A0)
/* 2CF14 8002C314 8C42B5A0 */  lw         $v0, %lo(D_802AB5A0)($v0)
/* 2CF18 8002C318 3C03802B */  lui        $v1, %hi(D_802AB5A4)
/* 2CF1C 8002C31C 8C63B5A4 */  lw         $v1, %lo(D_802AB5A4)($v1)
/* 2CF20 8002C320 3C04802B */  lui        $a0, %hi(D_802AB5A8)
/* 2CF24 8002C324 8C84B5A8 */  lw         $a0, %lo(D_802AB5A8)($a0)
/* 2CF28 8002C328 00021600 */  sll        $v0, $v0, 24
/* 2CF2C 8002C32C 00031F00 */  sll        $v1, $v1, 28
/* 2CF30 8002C330 00431021 */  addu       $v0, $v0, $v1
/* 2CF34 8002C334 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CF38 8002C338 F420B520 */  sdc1       $f0, %lo(D_802AB520)($at)
/* 2CF3C 8002C33C 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2CF40 8002C340 AC24B788 */  sw         $a0, %lo(D_802AB788)($at)
/* 2CF44 8002C344 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2CF48 8002C348 0800B0F9 */  j          .L8002C3E4
/* 2CF4C 8002C34C AC22B78C */   sw        $v0, %lo(D_802AB78C)($at)
.L8002C350:
/* 2CF50 8002C350 3C06802B */  lui        $a2, %hi(D_802AB520)
/* 2CF54 8002C354 8CC6B520 */  lw         $a2, %lo(D_802AB520)($a2)
/* 2CF58 8002C358 3C07802B */  lui        $a3, %hi(D_802AB524)
/* 2CF5C 8002C35C 8CE7B524 */  lw         $a3, %lo(D_802AB524)($a3)
/* 2CF60 8002C360 3C04802B */  lui        $a0, %hi(D_802AB528)
/* 2CF64 8002C364 0C00BD4A */  jal        func_8002F528
/* 2CF68 8002C368 2484B528 */   addiu     $a0, $a0, %lo(D_802AB528)
/* 2CF6C 8002C36C 0C00BF66 */  jal        func_8002FD98
/* 2CF70 8002C370 00000000 */   nop
/* 2CF74 8002C374 3C01800D */  lui        $at, %hi(D_800D12C8)
/* 2CF78 8002C378 D42212C8 */  ldc1       $f2, %lo(D_800D12C8)($at)
/* 2CF7C 8002C37C 46200106 */  mov.d      $f4, $f0
/* 2CF80 8002C380 4622203E */  c.le.d     $f4, $f2
/* 2CF84 8002C384 00000000 */  nop
/* 2CF88 8002C388 45010016 */  bc1t       .L8002C3E4
/* 2CF8C 8002C38C 00000000 */   nop
/* 2CF90 8002C390 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CF94 8002C394 D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2CF98 8002C398 4624003C */  c.lt.d     $f0, $f4
/* 2CF9C 8002C39C 00000000 */  nop
/* 2CFA0 8002C3A0 45010010 */  bc1t       .L8002C3E4
/* 2CFA4 8002C3A4 00000000 */   nop
/* 2CFA8 8002C3A8 3C02802B */  lui        $v0, %hi(D_802AB5A8)
/* 2CFAC 8002C3AC 8C42B5A8 */  lw         $v0, %lo(D_802AB5A8)($v0)
/* 2CFB0 8002C3B0 3C03802B */  lui        $v1, %hi(D_802AB5A0)
/* 2CFB4 8002C3B4 8C63B5A0 */  lw         $v1, %lo(D_802AB5A0)($v1)
/* 2CFB8 8002C3B8 3C04802B */  lui        $a0, %hi(D_802AB5A4)
/* 2CFBC 8002C3BC 8C84B5A4 */  lw         $a0, %lo(D_802AB5A4)($a0)
/* 2CFC0 8002C3C0 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2CFC4 8002C3C4 F424B520 */  sdc1       $f4, %lo(D_802AB520)($at)
/* 2CFC8 8002C3C8 00031E00 */  sll        $v1, $v1, 24
/* 2CFCC 8002C3CC 00042700 */  sll        $a0, $a0, 28
/* 2CFD0 8002C3D0 00641821 */  addu       $v1, $v1, $a0
/* 2CFD4 8002C3D4 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2CFD8 8002C3D8 AC22B788 */  sw         $v0, %lo(D_802AB788)($at)
/* 2CFDC 8002C3DC 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2CFE0 8002C3E0 AC23B78C */  sw         $v1, %lo(D_802AB78C)($at)
.L8002C3E4:
/* 2CFE4 8002C3E4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2CFE8 8002C3E8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2CFEC 8002C3EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 2CFF0 8002C3F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 2CFF4 8002C3F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CFF8 8002C3F8 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 2CFFC 8002C3FC 03E00008 */  jr         $ra
/* 2D000 8002C400 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002C404
/* 2D004 8002C404 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2D008 8002C408 AFB3001C */  sw         $s3, 0x1C($sp)
/* 2D00C 8002C40C 00809821 */  addu       $s3, $a0, $zero
/* 2D010 8002C410 AFB50024 */  sw         $s5, 0x24($sp)
/* 2D014 8002C414 00A0A821 */  addu       $s5, $a1, $zero
/* 2D018 8002C418 26A40018 */  addiu      $a0, $s5, 0x18
/* 2D01C 8002C41C AFB60028 */  sw         $s6, 0x28($sp)
/* 2D020 8002C420 3C16802B */  lui        $s6, %hi(D_802AB400)
/* 2D024 8002C424 26D6B400 */  addiu      $s6, $s6, %lo(D_802AB400)
/* 2D028 8002C428 AFBF002C */  sw         $ra, 0x2C($sp)
/* 2D02C 8002C42C AFB40020 */  sw         $s4, 0x20($sp)
/* 2D030 8002C430 AFB20018 */  sw         $s2, 0x18($sp)
/* 2D034 8002C434 AFB10014 */  sw         $s1, 0x14($sp)
/* 2D038 8002C438 AFB00010 */  sw         $s0, 0x10($sp)
/* 2D03C 8002C43C F7BE0058 */  sdc1       $f30, 0x58($sp)
/* 2D040 8002C440 F7BC0050 */  sdc1       $f28, 0x50($sp)
/* 2D044 8002C444 F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 2D048 8002C448 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 2D04C 8002C44C F7B60038 */  sdc1       $f22, 0x38($sp)
/* 2D050 8002C450 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 2D054 8002C454 0C022B9C */  jal        func_8008AE70
/* 2D058 8002C458 02C03021 */   addu      $a2, $s6, $zero
/* 2D05C 8002C45C 0C022CCC */  jal        func_8008B330
/* 2D060 8002C460 02C02021 */   addu      $a0, $s6, $zero
/* 2D064 8002C464 26640008 */  addiu      $a0, $s3, 0x8
/* 2D068 8002C468 02A02821 */  addu       $a1, $s5, $zero
/* 2D06C 8002C46C 3C12802B */  lui        $s2, %hi(D_802AB550)
/* 2D070 8002C470 2652B550 */  addiu      $s2, $s2, %lo(D_802AB550)
/* 2D074 8002C474 02403021 */  addu       $a2, $s2, $zero
/* 2D078 8002C478 0C022B9C */  jal        func_8008AE70
/* 2D07C 8002C47C 46200786 */   mov.d     $f30, $f0
/* 2D080 8002C480 D6740038 */  ldc1       $f20, 0x38($s3)
/* 2D084 8002C484 D6640020 */  ldc1       $f4, 0x20($s3)
/* 2D088 8002C488 4624A102 */  mul.d      $f4, $f20, $f4
/* 2D08C 8002C48C D6620028 */  ldc1       $f2, 0x28($s3)
/* 2D090 8002C490 4622A082 */  mul.d      $f2, $f20, $f2
/* 2D094 8002C494 D6600030 */  ldc1       $f0, 0x30($s3)
/* 2D098 8002C498 3C10802B */  lui        $s0, %hi(D_802AB580)
/* 2D09C 8002C49C 2610B580 */  addiu      $s0, $s0, %lo(D_802AB580)
/* 2D0A0 8002C4A0 02002021 */  addu       $a0, $s0, $zero
/* 2D0A4 8002C4A4 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 2D0A8 8002C4A8 D4266A00 */  ldc1       $f6, %lo(D_800C6A00)($at)
/* 2D0AC 8002C4AC 4620A002 */  mul.d      $f0, $f20, $f0
/* 2D0B0 8002C4B0 3C14802B */  lui        $s4, %hi(D_802AB568)
/* 2D0B4 8002C4B4 2694B568 */  addiu      $s4, $s4, %lo(D_802AB568)
/* 2D0B8 8002C4B8 AE000000 */  sw         $zero, 0x0($s0)
/* 2D0BC 8002C4BC AE000004 */  sw         $zero, 0x4($s0)
/* 2D0C0 8002C4C0 3C01802B */  lui        $at, %hi(D_802AB590)
/* 2D0C4 8002C4C4 AC20B590 */  sw         $zero, %lo(D_802AB590)($at)
/* 2D0C8 8002C4C8 3C01802B */  lui        $at, %hi(D_802AB594)
/* 2D0CC 8002C4CC AC20B594 */  sw         $zero, %lo(D_802AB594)($at)
/* 2D0D0 8002C4D0 3C01802B */  lui        $at, %hi(D_802AB588)
/* 2D0D4 8002C4D4 F426B588 */  sdc1       $f6, %lo(D_802AB588)($at)
/* 2D0D8 8002C4D8 F6840000 */  sdc1       $f4, 0x0($s4)
/* 2D0DC 8002C4DC F6820008 */  sdc1       $f2, 0x8($s4)
/* 2D0E0 8002C4E0 F6800010 */  sdc1       $f0, 0x10($s4)
/* 2D0E4 8002C4E4 0C022C70 */  jal        func_8008B1C0
/* 2D0E8 8002C4E8 02C02821 */   addu      $a1, $s6, $zero
/* 2D0EC 8002C4EC 46200706 */  mov.d      $f28, $f0
/* 2D0F0 8002C4F0 02802021 */  addu       $a0, $s4, $zero
/* 2D0F4 8002C4F4 0C022C70 */  jal        func_8008B1C0
/* 2D0F8 8002C4F8 02C02821 */   addu      $a1, $s6, $zero
/* 2D0FC 8002C4FC 02402021 */  addu       $a0, $s2, $zero
/* 2D100 8002C500 02C02821 */  addu       $a1, $s6, $zero
/* 2D104 8002C504 0C022C70 */  jal        func_8008B1C0
/* 2D108 8002C508 46200586 */   mov.d     $f22, $f0
/* 2D10C 8002C50C 3C01802B */  lui        $at, %hi(D_802AB408)
/* 2D110 8002C510 D422B408 */  ldc1       $f2, %lo(D_802AB408)($at)
/* 2D114 8002C514 46221082 */  mul.d      $f2, $f2, $f2
/* 2D118 8002C518 3C01800D */  lui        $at, %hi(D_800D12D8)
/* 2D11C 8002C51C D43812D8 */  ldc1       $f24, %lo(D_800D12D8)($at)
/* 2D120 8002C520 4622C081 */  sub.d      $f2, $f24, $f2
/* 2D124 8002C524 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 2D128 8002C528 D4246A08 */  ldc1       $f4, %lo(D_800C6A08)($at)
/* 2D12C 8002C52C 46241082 */  mul.d      $f2, $f2, $f4
/* 2D130 8002C530 00000000 */  nop
/* 2D134 8002C534 46241082 */  mul.d      $f2, $f2, $f4
/* 2D138 8002C538 46200686 */  mov.d      $f26, $f0
/* 2D13C 8002C53C 02002021 */  addu       $a0, $s0, $zero
/* 2D140 8002C540 3C11802B */  lui        $s1, %hi(D_802AB548)
/* 2D144 8002C544 2631B548 */  addiu      $s1, $s1, %lo(D_802AB548)
/* 2D148 8002C548 F6220000 */  sdc1       $f2, 0x0($s1)
/* 2D14C 8002C54C 0C022C70 */  jal        func_8008B1C0
/* 2D150 8002C550 02802821 */   addu      $a1, $s4, $zero
/* 2D154 8002C554 00000000 */  nop
/* 2D158 8002C558 4636E082 */  mul.d      $f2, $f28, $f22
/* 2D15C 8002C55C 46220001 */  sub.d      $f0, $f0, $f2
/* 2D160 8002C560 02002021 */  addu       $a0, $s0, $zero
/* 2D164 8002C564 3C01802B */  lui        $at, %hi(D_802AB540)
/* 2D168 8002C568 F420B540 */  sdc1       $f0, %lo(D_802AB540)($at)
/* 2D16C 8002C56C 0C022C70 */  jal        func_8008B1C0
/* 2D170 8002C570 02402821 */   addu      $a1, $s2, $zero
/* 2D174 8002C574 00000000 */  nop
/* 2D178 8002C578 4634A502 */  mul.d      $f20, $f20, $f20
/* 2D17C 8002C57C 00000000 */  nop
/* 2D180 8002C580 463AE102 */  mul.d      $f4, $f28, $f26
/* 2D184 8002C584 00000000 */  nop
/* 2D188 8002C588 4636B082 */  mul.d      $f2, $f22, $f22
/* 2D18C 8002C58C 46340000 */  add.d      $f0, $f0, $f20
/* 2D190 8002C590 46240001 */  sub.d      $f0, $f0, $f4
/* 2D194 8002C594 46220001 */  sub.d      $f0, $f0, $f2
/* 2D198 8002C598 02802021 */  addu       $a0, $s4, $zero
/* 2D19C 8002C59C 3C01802B */  lui        $at, %hi(D_802AB538)
/* 2D1A0 8002C5A0 F420B538 */  sdc1       $f0, %lo(D_802AB538)($at)
/* 2D1A4 8002C5A4 0C022C70 */  jal        func_8008B1C0
/* 2D1A8 8002C5A8 02402821 */   addu      $a1, $s2, $zero
/* 2D1AC 8002C5AC 00000000 */  nop
/* 2D1B0 8002C5B0 463AB582 */  mul.d      $f22, $f22, $f26
/* 2D1B4 8002C5B4 46360701 */  sub.d      $f28, $f0, $f22
/* 2D1B8 8002C5B8 463CE000 */  add.d      $f0, $f28, $f28
/* 2D1BC 8002C5BC 02402021 */  addu       $a0, $s2, $zero
/* 2D1C0 8002C5C0 3C01802B */  lui        $at, %hi(D_802AB530)
/* 2D1C4 8002C5C4 F420B530 */  sdc1       $f0, %lo(D_802AB530)($at)
/* 2D1C8 8002C5C8 0C022C70 */  jal        func_8008B1C0
/* 2D1CC 8002C5CC 00802821 */   addu      $a1, $a0, $zero
/* 2D1D0 8002C5D0 00000000 */  nop
/* 2D1D4 8002C5D4 463AD082 */  mul.d      $f2, $f26, $f26
/* 2D1D8 8002C5D8 46220001 */  sub.d      $f0, $f0, $f2
/* 2D1DC 8002C5DC 46380001 */  sub.d      $f0, $f0, $f24
/* 2D1E0 8002C5E0 3C01800D */  lui        $at, %hi(D_800D12E0)
/* 2D1E4 8002C5E4 D42212E0 */  ldc1       $f2, %lo(D_800D12E0)($at)
/* 2D1E8 8002C5E8 4622003C */  c.lt.d     $f0, $f2
/* 2D1EC 8002C5EC F620FFE0 */  sdc1       $f0, -0x20($s1)
/* 2D1F0 8002C5F0 00000000 */  nop
/* 2D1F4 8002C5F4 4500004D */  bc1f       .L8002C72C
/* 2D1F8 8002C5F8 2624FFE0 */   addiu     $a0, $s1, -0x20
/* 2D1FC 8002C5FC 44800000 */  mtc1       $zero, $f0
/* 2D200 8002C600 44800800 */  mtc1       $zero, $f1
/* 2D204 8002C604 00000000 */  nop
/* 2D208 8002C608 463A003C */  c.lt.d     $f0, $f26
/* 2D20C 8002C60C 00000000 */  nop
/* 2D210 8002C610 00000000 */  nop
/* 2D214 8002C614 45010002 */  bc1t       .L8002C620
/* 2D218 8002C618 24020001 */   addiu     $v0, $zero, 0x1
/* 2D21C 8002C61C 00001021 */  addu       $v0, $zero, $zero
.L8002C620:
/* 2D220 8002C620 463ED03C */  c.lt.d     $f26, $f30
/* 2D224 8002C624 00000000 */  nop
/* 2D228 8002C628 00000000 */  nop
/* 2D22C 8002C62C 45010002 */  bc1t       .L8002C638
/* 2D230 8002C630 24030001 */   addiu     $v1, $zero, 0x1
/* 2D234 8002C634 00001821 */  addu       $v1, $zero, $zero
.L8002C638:
/* 2D238 8002C638 00431024 */  and        $v0, $v0, $v1
/* 2D23C 8002C63C 10400017 */  beqz       $v0, .L8002C69C
/* 2D240 8002C640 00000000 */   nop
/* 2D244 8002C644 4620E03C */  c.lt.d     $f28, $f0
/* 2D248 8002C648 00000000 */  nop
/* 2D24C 8002C64C 45000013 */  bc1f       .L8002C69C
/* 2D250 8002C650 00000000 */   nop
/* 2D254 8002C654 3C01800D */  lui        $at, %hi(D_800D12D0)
/* 2D258 8002C658 D42012D0 */  ldc1       $f0, %lo(D_800D12D0)($at)
/* 2D25C 8002C65C 3C02802B */  lui        $v0, %hi(D_802AB5A4)
/* 2D260 8002C660 8C42B5A4 */  lw         $v0, %lo(D_802AB5A4)($v0)
/* 2D264 8002C664 3C03802B */  lui        $v1, %hi(D_802AB598)
/* 2D268 8002C668 8C63B598 */  lw         $v1, %lo(D_802AB598)($v1)
/* 2D26C 8002C66C 3C04802B */  lui        $a0, %hi(D_802AB5A8)
/* 2D270 8002C670 8C84B5A8 */  lw         $a0, %lo(D_802AB5A8)($a0)
/* 2D274 8002C674 00021700 */  sll        $v0, $v0, 28
/* 2D278 8002C678 00031D00 */  sll        $v1, $v1, 20
/* 2D27C 8002C67C 00431021 */  addu       $v0, $v0, $v1
/* 2D280 8002C680 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2D284 8002C684 F420B520 */  sdc1       $f0, %lo(D_802AB520)($at)
/* 2D288 8002C688 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2D28C 8002C68C AC24B788 */  sw         $a0, %lo(D_802AB788)($at)
/* 2D290 8002C690 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2D294 8002C694 0800B223 */  j          .L8002C88C
/* 2D298 8002C698 AC22B78C */   sw        $v0, %lo(D_802AB78C)($at)
.L8002C69C:
/* 2D29C 8002C69C 3C06802B */  lui        $a2, %hi(D_802AB520)
/* 2D2A0 8002C6A0 8CC6B520 */  lw         $a2, %lo(D_802AB520)($a2)
/* 2D2A4 8002C6A4 3C07802B */  lui        $a3, %hi(D_802AB524)
/* 2D2A8 8002C6A8 8CE7B524 */  lw         $a3, %lo(D_802AB524)($a3)
/* 2D2AC 8002C6AC 3C04802B */  lui        $a0, %hi(D_802AB528)
/* 2D2B0 8002C6B0 0C00BD4A */  jal        func_8002F528
/* 2D2B4 8002C6B4 2484B528 */   addiu     $a0, $a0, %lo(D_802AB528)
/* 2D2B8 8002C6B8 4480A000 */  mtc1       $zero, $f20
/* 2D2BC 8002C6BC 4480A800 */  mtc1       $zero, $f21
/* 2D2C0 8002C6C0 0C00BDDD */  jal        func_8002F774
/* 2D2C4 8002C6C4 00000000 */   nop
/* 2D2C8 8002C6C8 46200706 */  mov.d      $f28, $f0
/* 2D2CC 8002C6CC 4634E03E */  c.le.d     $f28, $f20
/* 2D2D0 8002C6D0 00000000 */  nop
/* 2D2D4 8002C6D4 4501006D */  bc1t       .L8002C88C
/* 2D2D8 8002C6D8 00000000 */   nop
/* 2D2DC 8002C6DC 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2D2E0 8002C6E0 D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2D2E4 8002C6E4 463C003C */  c.lt.d     $f0, $f28
/* 2D2E8 8002C6E8 00000000 */  nop
/* 2D2EC 8002C6EC 45010067 */  bc1t       .L8002C88C
/* 2D2F0 8002C6F0 00000000 */   nop
/* 2D2F4 8002C6F4 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 2D2F8 8002C6F8 D4206A08 */  ldc1       $f0, %lo(D_800C6A08)($at)
/* 2D2FC 8002C6FC 463C0002 */  mul.d      $f0, $f0, $f28
/* 2D300 8002C700 3C01802B */  lui        $at, %hi(D_802AB568)
/* 2D304 8002C704 D424B568 */  ldc1       $f4, %lo(D_802AB568)($at)
/* 2D308 8002C708 4624E102 */  mul.d      $f4, $f28, $f4
/* 2D30C 8002C70C 3C01802B */  lui        $at, %hi(D_802AB570)
/* 2D310 8002C710 D422B570 */  ldc1       $f2, %lo(D_802AB570)($at)
/* 2D314 8002C714 46201080 */  add.d      $f2, $f2, $f0
/* 2D318 8002C718 D6680008 */  ldc1       $f8, 0x8($s3)
/* 2D31C 8002C71C 3C01802B */  lui        $at, %hi(D_802AB578)
/* 2D320 8002C720 D420B578 */  ldc1       $f0, %lo(D_802AB578)($at)
/* 2D324 8002C724 0800B1E9 */  j          .L8002C7A4
/* 2D328 8002C728 4622E082 */   mul.d     $f2, $f28, $f2
.L8002C72C:
/* 2D32C 8002C72C 3C06802B */  lui        $a2, %hi(D_802AB520)
/* 2D330 8002C730 8CC6B520 */  lw         $a2, %lo(D_802AB520)($a2)
/* 2D334 8002C734 3C07802B */  lui        $a3, %hi(D_802AB524)
/* 2D338 8002C738 0C00BD4A */  jal        func_8002F528
/* 2D33C 8002C73C 8CE7B524 */   lw        $a3, %lo(D_802AB524)($a3)
/* 2D340 8002C740 4480A000 */  mtc1       $zero, $f20
/* 2D344 8002C744 4480A800 */  mtc1       $zero, $f21
/* 2D348 8002C748 0C00BF66 */  jal        func_8002FD98
/* 2D34C 8002C74C 00000000 */   nop
/* 2D350 8002C750 46200706 */  mov.d      $f28, $f0
/* 2D354 8002C754 4634E03E */  c.le.d     $f28, $f20
/* 2D358 8002C758 00000000 */  nop
/* 2D35C 8002C75C 4501004B */  bc1t       .L8002C88C
/* 2D360 8002C760 00000000 */   nop
/* 2D364 8002C764 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2D368 8002C768 D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2D36C 8002C76C 463C003C */  c.lt.d     $f0, $f28
/* 2D370 8002C770 00000000 */  nop
/* 2D374 8002C774 45010045 */  bc1t       .L8002C88C
/* 2D378 8002C778 00000000 */   nop
/* 2D37C 8002C77C 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 2D380 8002C780 D4206A08 */  ldc1       $f0, %lo(D_800C6A08)($at)
/* 2D384 8002C784 463C0002 */  mul.d      $f0, $f0, $f28
/* 2D388 8002C788 D6840000 */  ldc1       $f4, 0x0($s4)
/* 2D38C 8002C78C 4624E102 */  mul.d      $f4, $f28, $f4
/* 2D390 8002C790 D6820008 */  ldc1       $f2, 0x8($s4)
/* 2D394 8002C794 46201080 */  add.d      $f2, $f2, $f0
/* 2D398 8002C798 4622E082 */  mul.d      $f2, $f28, $f2
/* 2D39C 8002C79C D6680008 */  ldc1       $f8, 0x8($s3)
/* 2D3A0 8002C7A0 D6800010 */  ldc1       $f0, 0x10($s4)
.L8002C7A4:
/* 2D3A4 8002C7A4 46244200 */  add.d      $f8, $f8, $f4
/* 2D3A8 8002C7A8 D6A60000 */  ldc1       $f6, 0x0($s5)
/* 2D3AC 8002C7AC 4620E002 */  mul.d      $f0, $f28, $f0
/* 2D3B0 8002C7B0 46264181 */  sub.d      $f6, $f8, $f6
/* 2D3B4 8002C7B4 D66A0010 */  ldc1       $f10, 0x10($s3)
/* 2D3B8 8002C7B8 46225280 */  add.d      $f10, $f10, $f2
/* 2D3BC 8002C7BC D6620018 */  ldc1       $f2, 0x18($s3)
/* 2D3C0 8002C7C0 46201080 */  add.d      $f2, $f2, $f0
/* 2D3C4 8002C7C4 D6A40008 */  ldc1       $f4, 0x8($s5)
/* 2D3C8 8002C7C8 D6A00010 */  ldc1       $f0, 0x10($s5)
/* 2D3CC 8002C7CC 46245101 */  sub.d      $f4, $f10, $f4
/* 2D3D0 8002C7D0 3C04802B */  lui        $a0, %hi(D_802AB418)
/* 2D3D4 8002C7D4 2484B418 */  addiu      $a0, $a0, %lo(D_802AB418)
/* 2D3D8 8002C7D8 3C05802B */  lui        $a1, %hi(D_802AB400)
/* 2D3DC 8002C7DC 24A5B400 */  addiu      $a1, $a1, %lo(D_802AB400)
/* 2D3E0 8002C7E0 F4880000 */  sdc1       $f8, 0x0($a0)
/* 2D3E4 8002C7E4 46201001 */  sub.d      $f0, $f2, $f0
/* 2D3E8 8002C7E8 3C01802B */  lui        $at, %hi(D_802AB428)
/* 2D3EC 8002C7EC F422B428 */  sdc1       $f2, %lo(D_802AB428)($at)
/* 2D3F0 8002C7F0 F4860000 */  sdc1       $f6, 0x0($a0)
/* 2D3F4 8002C7F4 3C01802B */  lui        $at, %hi(D_802AB420)
/* 2D3F8 8002C7F8 F42AB420 */  sdc1       $f10, %lo(D_802AB420)($at)
/* 2D3FC 8002C7FC 3C01802B */  lui        $at, %hi(D_802AB420)
/* 2D400 8002C800 F424B420 */  sdc1       $f4, %lo(D_802AB420)($at)
/* 2D404 8002C804 3C01802B */  lui        $at, %hi(D_802AB428)
/* 2D408 8002C808 0C022C70 */  jal        func_8008B1C0
/* 2D40C 8002C80C F420B428 */   sdc1      $f0, %lo(D_802AB428)($at)
/* 2D410 8002C810 46200686 */  mov.d      $f26, $f0
/* 2D414 8002C814 4634D03C */  c.lt.d     $f26, $f20
/* 2D418 8002C818 00000000 */  nop
/* 2D41C 8002C81C 00000000 */  nop
/* 2D420 8002C820 45010002 */  bc1t       .L8002C82C
/* 2D424 8002C824 24020001 */   addiu     $v0, $zero, 0x1
/* 2D428 8002C828 00001021 */  addu       $v0, $zero, $zero
.L8002C82C:
/* 2D42C 8002C82C 463AF03C */  c.lt.d     $f30, $f26
/* 2D430 8002C830 00000000 */  nop
/* 2D434 8002C834 00000000 */  nop
/* 2D438 8002C838 45010002 */  bc1t       .L8002C844
/* 2D43C 8002C83C 24030001 */   addiu     $v1, $zero, 0x1
/* 2D440 8002C840 00001821 */  addu       $v1, $zero, $zero
.L8002C844:
/* 2D444 8002C844 00431025 */  or         $v0, $v0, $v1
/* 2D448 8002C848 14400010 */  bnez       $v0, .L8002C88C
/* 2D44C 8002C84C 00000000 */   nop
/* 2D450 8002C850 3C02802B */  lui        $v0, %hi(D_802AB5A8)
/* 2D454 8002C854 8C42B5A8 */  lw         $v0, %lo(D_802AB5A8)($v0)
/* 2D458 8002C858 3C03802B */  lui        $v1, %hi(D_802AB5A4)
/* 2D45C 8002C85C 8C63B5A4 */  lw         $v1, %lo(D_802AB5A4)($v1)
/* 2D460 8002C860 3C04802B */  lui        $a0, %hi(D_802AB598)
/* 2D464 8002C864 8C84B598 */  lw         $a0, %lo(D_802AB598)($a0)
/* 2D468 8002C868 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2D46C 8002C86C F43CB520 */  sdc1       $f28, %lo(D_802AB520)($at)
/* 2D470 8002C870 00031F00 */  sll        $v1, $v1, 28
/* 2D474 8002C874 00042500 */  sll        $a0, $a0, 20
/* 2D478 8002C878 00641821 */  addu       $v1, $v1, $a0
/* 2D47C 8002C87C 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2D480 8002C880 AC22B788 */  sw         $v0, %lo(D_802AB788)($at)
/* 2D484 8002C884 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2D488 8002C888 AC23B78C */  sw         $v1, %lo(D_802AB78C)($at)
.L8002C88C:
/* 2D48C 8002C88C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 2D490 8002C890 8FB60028 */  lw         $s6, 0x28($sp)
/* 2D494 8002C894 8FB50024 */  lw         $s5, 0x24($sp)
/* 2D498 8002C898 8FB40020 */  lw         $s4, 0x20($sp)
/* 2D49C 8002C89C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2D4A0 8002C8A0 8FB20018 */  lw         $s2, 0x18($sp)
/* 2D4A4 8002C8A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 2D4A8 8002C8A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 2D4AC 8002C8AC D7BE0058 */  ldc1       $f30, 0x58($sp)
/* 2D4B0 8002C8B0 D7BC0050 */  ldc1       $f28, 0x50($sp)
/* 2D4B4 8002C8B4 D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 2D4B8 8002C8B8 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 2D4BC 8002C8BC D7B60038 */  ldc1       $f22, 0x38($sp)
/* 2D4C0 8002C8C0 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 2D4C4 8002C8C4 03E00008 */  jr         $ra
/* 2D4C8 8002C8C8 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8002C8CC
/* 2D4CC 8002C8CC 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* 2D4D0 8002C8D0 AFB00060 */  sw         $s0, 0x60($sp)
/* 2D4D4 8002C8D4 AFA40044 */  sw         $a0, 0x44($sp)
/* 2D4D8 8002C8D8 8C90001C */  lw         $s0, 0x1C($a0)
/* 2D4DC 8002C8DC AFBF0084 */  sw         $ra, 0x84($sp)
/* 2D4E0 8002C8E0 AFBE0080 */  sw         $fp, 0x80($sp)
/* 2D4E4 8002C8E4 AFB7007C */  sw         $s7, 0x7C($sp)
/* 2D4E8 8002C8E8 AFB60078 */  sw         $s6, 0x78($sp)
/* 2D4EC 8002C8EC AFB50074 */  sw         $s5, 0x74($sp)
/* 2D4F0 8002C8F0 AFB40070 */  sw         $s4, 0x70($sp)
/* 2D4F4 8002C8F4 AFB3006C */  sw         $s3, 0x6C($sp)
/* 2D4F8 8002C8F8 AFB20068 */  sw         $s2, 0x68($sp)
/* 2D4FC 8002C8FC AFB10064 */  sw         $s1, 0x64($sp)
/* 2D500 8002C900 F7B80098 */  sdc1       $f24, 0x98($sp)
/* 2D504 8002C904 F7B60090 */  sdc1       $f22, 0x90($sp)
/* 2D508 8002C908 F7B40088 */  sdc1       $f20, 0x88($sp)
/* 2D50C 8002C90C D6060000 */  ldc1       $f6, 0x0($s0)
/* 2D510 8002C910 D6000018 */  ldc1       $f0, 0x18($s0)
/* 2D514 8002C914 46203180 */  add.d      $f6, $f6, $f0
/* 2D518 8002C918 D6000030 */  ldc1       $f0, 0x30($s0)
/* 2D51C 8002C91C 46203180 */  add.d      $f6, $f6, $f0
/* 2D520 8002C920 3C01800D */  lui        $at, %hi(D_800D12E8)
/* 2D524 8002C924 D42A12E8 */  ldc1       $f10, %lo(D_800D12E8)($at)
/* 2D528 8002C928 462A3182 */  mul.d      $f6, $f6, $f10
/* 2D52C 8002C92C 00A0B021 */  addu       $s6, $a1, $zero
/* 2D530 8002C930 3C05802B */  lui        $a1, %hi(D_802AB430)
/* 2D534 8002C934 24A5B430 */  addiu      $a1, $a1, %lo(D_802AB430)
/* 2D538 8002C938 F4A60000 */  sdc1       $f6, 0x0($a1)
/* 2D53C 8002C93C D6020008 */  ldc1       $f2, 0x8($s0)
/* 2D540 8002C940 D6000020 */  ldc1       $f0, 0x20($s0)
/* 2D544 8002C944 46201080 */  add.d      $f2, $f2, $f0
/* 2D548 8002C948 D6000038 */  ldc1       $f0, 0x38($s0)
/* 2D54C 8002C94C 46201080 */  add.d      $f2, $f2, $f0
/* 2D550 8002C950 462A1082 */  mul.d      $f2, $f2, $f10
/* 2D554 8002C954 3C01802B */  lui        $at, %hi(D_802AB438)
/* 2D558 8002C958 F422B438 */  sdc1       $f2, %lo(D_802AB438)($at)
/* 2D55C 8002C95C D6040010 */  ldc1       $f4, 0x10($s0)
/* 2D560 8002C960 D6000028 */  ldc1       $f0, 0x28($s0)
/* 2D564 8002C964 46202100 */  add.d      $f4, $f4, $f0
/* 2D568 8002C968 D6000040 */  ldc1       $f0, 0x40($s0)
/* 2D56C 8002C96C 46202100 */  add.d      $f4, $f4, $f0
/* 2D570 8002C970 D6C80000 */  ldc1       $f8, 0x0($s6)
/* 2D574 8002C974 46264201 */  sub.d      $f8, $f8, $f6
/* 2D578 8002C978 D6C60008 */  ldc1       $f6, 0x8($s6)
/* 2D57C 8002C97C 8FA70044 */  lw         $a3, 0x44($sp)
/* 2D580 8002C980 462A2102 */  mul.d      $f4, $f4, $f10
/* 2D584 8002C984 00009821 */  addu       $s3, $zero, $zero
/* 2D588 8002C988 8CE70018 */  lw         $a3, 0x18($a3)
/* 2D58C 8002C98C 46223181 */  sub.d      $f6, $f6, $f2
/* 2D590 8002C990 D6C00010 */  ldc1       $f0, 0x10($s6)
/* 2D594 8002C994 3C04802B */  lui        $a0, %hi(D_802AB460)
/* 2D598 8002C998 2484B460 */  addiu      $a0, $a0, %lo(D_802AB460)
/* 2D59C 8002C99C AFA7004C */  sw         $a3, 0x4C($sp)
/* 2D5A0 8002C9A0 46240001 */  sub.d      $f0, $f0, $f4
/* 2D5A4 8002C9A4 F4880000 */  sdc1       $f8, 0x0($a0)
/* 2D5A8 8002C9A8 3C01802B */  lui        $at, %hi(D_802AB468)
/* 2D5AC 8002C9AC F426B468 */  sdc1       $f6, %lo(D_802AB468)($at)
/* 2D5B0 8002C9B0 3C01802B */  lui        $at, %hi(D_802AB440)
/* 2D5B4 8002C9B4 F424B440 */  sdc1       $f4, %lo(D_802AB440)($at)
/* 2D5B8 8002C9B8 3C01802B */  lui        $at, %hi(D_802AB470)
/* 2D5BC 8002C9BC F420B470 */  sdc1       $f0, %lo(D_802AB470)($at)
/* 2D5C0 8002C9C0 18E000A9 */  blez       $a3, .L8002CC68
/* 2D5C4 8002C9C4 26120018 */   addiu     $s2, $s0, 0x18
/* 2D5C8 8002C9C8 0080F021 */  addu       $fp, $a0, $zero
/* 2D5CC 8002C9CC 27A70028 */  addiu      $a3, $sp, 0x28
/* 2D5D0 8002C9D0 4480C000 */  mtc1       $zero, $f24
/* 2D5D4 8002C9D4 4480C800 */  mtc1       $zero, $f25
/* 2D5D8 8002C9D8 3C11802B */  lui        $s1, %hi(D_802AB448)
/* 2D5DC 8002C9DC 2631B448 */  addiu      $s1, $s1, %lo(D_802AB448)
/* 2D5E0 8002C9E0 3C17802B */  lui        $s7, %hi(D_802AB4C0)
/* 2D5E4 8002C9E4 26F7B4C0 */  addiu      $s7, $s7, %lo(D_802AB4C0)
/* 2D5E8 8002C9E8 3C15802B */  lui        $s5, %hi(D_802AB4A8)
/* 2D5EC 8002C9EC 26B5B4A8 */  addiu      $s5, $s5, %lo(D_802AB4A8)
/* 2D5F0 8002C9F0 3C14802B */  lui        $s4, %hi(D_802AB4D8)
/* 2D5F4 8002C9F4 2694B4D8 */  addiu      $s4, $s4, %lo(D_802AB4D8)
/* 2D5F8 8002C9F8 AFA70054 */  sw         $a3, 0x54($sp)
/* 2D5FC 8002C9FC 8FA7004C */  lw         $a3, 0x4C($sp)
.L8002CA00:
/* 2D600 8002CA00 24E2FFFF */  addiu      $v0, $a3, -0x1
/* 2D604 8002CA04 16620003 */  bne        $s3, $v0, .L8002CA14
/* 2D608 8002CA08 02002021 */   addu      $a0, $s0, $zero
/* 2D60C 8002CA0C 8FA70044 */  lw         $a3, 0x44($sp)
/* 2D610 8002CA10 8CF2001C */  lw         $s2, 0x1C($a3)
.L8002CA14:
/* 2D614 8002CA14 3C06802B */  lui        $a2, %hi(D_802AB478)
/* 2D618 8002CA18 24C6B478 */  addiu      $a2, $a2, %lo(D_802AB478)
/* 2D61C 8002CA1C 0C022B9C */  jal        func_8008AE70
/* 2D620 8002CA20 02C02821 */   addu      $a1, $s6, $zero
/* 2D624 8002CA24 02402021 */  addu       $a0, $s2, $zero
/* 2D628 8002CA28 3C06802B */  lui        $a2, %hi(D_802AB490)
/* 2D62C 8002CA2C 24C6B490 */  addiu      $a2, $a2, %lo(D_802AB490)
/* 2D630 8002CA30 0C022B9C */  jal        func_8008AE70
/* 2D634 8002CA34 02C02821 */   addu      $a1, $s6, $zero
/* 2D638 8002CA38 3C04802B */  lui        $a0, %hi(D_802AB490)
/* 2D63C 8002CA3C 2484B490 */  addiu      $a0, $a0, %lo(D_802AB490)
/* 2D640 8002CA40 03C02821 */  addu       $a1, $fp, $zero
/* 2D644 8002CA44 0C022C84 */  jal        func_8008B210
/* 2D648 8002CA48 27A60010 */   addiu     $a2, $sp, 0x10
/* 2D64C 8002CA4C 8FA60054 */  lw         $a2, 0x54($sp)
/* 2D650 8002CA50 3C04802B */  lui        $a0, %hi(D_802AB478)
/* 2D654 8002CA54 2484B478 */  addiu      $a0, $a0, %lo(D_802AB478)
/* 2D658 8002CA58 0C022C84 */  jal        func_8008B210
/* 2D65C 8002CA5C 03C02821 */   addu      $a1, $fp, $zero
/* 2D660 8002CA60 8FA50054 */  lw         $a1, 0x54($sp)
/* 2D664 8002CA64 0C022C70 */  jal        func_8008B1C0
/* 2D668 8002CA68 27A40010 */   addiu     $a0, $sp, 0x10
/* 2D66C 8002CA6C 4620C03C */  c.lt.d     $f24, $f0
/* 2D670 8002CA70 00000000 */  nop
/* 2D674 8002CA74 00000000 */  nop
/* 2D678 8002CA78 45030076 */  bc1tl      .L8002CC54
/* 2D67C 8002CA7C 26730001 */   addiu     $s3, $s3, 0x1
/* 2D680 8002CA80 02402021 */  addu       $a0, $s2, $zero
/* 2D684 8002CA84 02002821 */  addu       $a1, $s0, $zero
/* 2D688 8002CA88 0C022B9C */  jal        func_8008AE70
/* 2D68C 8002CA8C 02203021 */   addu      $a2, $s1, $zero
/* 2D690 8002CA90 02202021 */  addu       $a0, $s1, $zero
/* 2D694 8002CA94 0C022C70 */  jal        func_8008B1C0
/* 2D698 8002CA98 02202821 */   addu      $a1, $s1, $zero
/* 2D69C 8002CA9C 3C01800D */  lui        $at, %hi(D_800D12F0)
/* 2D6A0 8002CAA0 D42212F0 */  ldc1       $f2, %lo(D_800D12F0)($at)
/* 2D6A4 8002CAA4 46201583 */  div.d      $f22, $f2, $f0
/* 2D6A8 8002CAA8 03C02021 */  addu       $a0, $fp, $zero
/* 2D6AC 8002CAAC 0C022C70 */  jal        func_8008B1C0
/* 2D6B0 8002CAB0 02202821 */   addu      $a1, $s1, $zero
/* 2D6B4 8002CAB4 00000000 */  nop
/* 2D6B8 8002CAB8 46360182 */  mul.d      $f6, $f0, $f22
/* 2D6BC 8002CABC D6200000 */  ldc1       $f0, 0x0($s1)
/* 2D6C0 8002CAC0 46203002 */  mul.d      $f0, $f6, $f0
/* 2D6C4 8002CAC4 3C01802B */  lui        $at, %hi(D_802AB450)
/* 2D6C8 8002CAC8 D422B450 */  ldc1       $f2, %lo(D_802AB450)($at)
/* 2D6CC 8002CACC 46223082 */  mul.d      $f2, $f6, $f2
/* 2D6D0 8002CAD0 3C01802B */  lui        $at, %hi(D_802AB458)
/* 2D6D4 8002CAD4 D424B458 */  ldc1       $f4, %lo(D_802AB458)($at)
/* 2D6D8 8002CAD8 D7C80000 */  ldc1       $f8, 0x0($fp)
/* 2D6DC 8002CADC 46243102 */  mul.d      $f4, $f6, $f4
/* 2D6E0 8002CAE0 46204201 */  sub.d      $f8, $f8, $f0
/* 2D6E4 8002CAE4 3C01802B */  lui        $at, %hi(D_802AB468)
/* 2D6E8 8002CAE8 D426B468 */  ldc1       $f6, %lo(D_802AB468)($at)
/* 2D6EC 8002CAEC 46223181 */  sub.d      $f6, $f6, $f2
/* 2D6F0 8002CAF0 3C01802B */  lui        $at, %hi(D_802AB470)
/* 2D6F4 8002CAF4 D420B470 */  ldc1       $f0, %lo(D_802AB470)($at)
/* 2D6F8 8002CAF8 02002021 */  addu       $a0, $s0, $zero
/* 2D6FC 8002CAFC 3C05802B */  lui        $a1, %hi(D_802AB430)
/* 2D700 8002CB00 24A5B430 */  addiu      $a1, $a1, %lo(D_802AB430)
/* 2D704 8002CB04 46240001 */  sub.d      $f0, $f0, $f4
/* 2D708 8002CB08 F6E80000 */  sdc1       $f8, 0x0($s7)
/* 2D70C 8002CB0C F6E60008 */  sdc1       $f6, 0x8($s7)
/* 2D710 8002CB10 F6E00010 */  sdc1       $f0, 0x10($s7)
/* 2D714 8002CB14 0C022B9C */  jal        func_8008AE70
/* 2D718 8002CB18 02A03021 */   addu      $a2, $s5, $zero
/* 2D71C 8002CB1C 02A02021 */  addu       $a0, $s5, $zero
/* 2D720 8002CB20 0C022C70 */  jal        func_8008B1C0
/* 2D724 8002CB24 02202821 */   addu      $a1, $s1, $zero
/* 2D728 8002CB28 00000000 */  nop
/* 2D72C 8002CB2C 46360182 */  mul.d      $f6, $f0, $f22
/* 2D730 8002CB30 D6200000 */  ldc1       $f0, 0x0($s1)
/* 2D734 8002CB34 46203002 */  mul.d      $f0, $f6, $f0
/* 2D738 8002CB38 3C01802B */  lui        $at, %hi(D_802AB450)
/* 2D73C 8002CB3C D422B450 */  ldc1       $f2, %lo(D_802AB450)($at)
/* 2D740 8002CB40 46223082 */  mul.d      $f2, $f6, $f2
/* 2D744 8002CB44 3C01802B */  lui        $at, %hi(D_802AB458)
/* 2D748 8002CB48 D424B458 */  ldc1       $f4, %lo(D_802AB458)($at)
/* 2D74C 8002CB4C D6A80000 */  ldc1       $f8, 0x0($s5)
/* 2D750 8002CB50 46243102 */  mul.d      $f4, $f6, $f4
/* 2D754 8002CB54 46204201 */  sub.d      $f8, $f8, $f0
/* 2D758 8002CB58 3C01802B */  lui        $at, %hi(D_802AB4B0)
/* 2D75C 8002CB5C D426B4B0 */  ldc1       $f6, %lo(D_802AB4B0)($at)
/* 2D760 8002CB60 46223181 */  sub.d      $f6, $f6, $f2
/* 2D764 8002CB64 3C01802B */  lui        $at, %hi(D_802AB4B8)
/* 2D768 8002CB68 D420B4B8 */  ldc1       $f0, %lo(D_802AB4B8)($at)
/* 2D76C 8002CB6C 02E02021 */  addu       $a0, $s7, $zero
/* 2D770 8002CB70 46240001 */  sub.d      $f0, $f0, $f4
/* 2D774 8002CB74 F6880000 */  sdc1       $f8, 0x0($s4)
/* 2D778 8002CB78 F6860008 */  sdc1       $f6, 0x8($s4)
/* 2D77C 8002CB7C F6800010 */  sdc1       $f0, 0x10($s4)
/* 2D780 8002CB80 0C022C70 */  jal        func_8008B1C0
/* 2D784 8002CB84 02802821 */   addu      $a1, $s4, $zero
/* 2D788 8002CB88 02402021 */  addu       $a0, $s2, $zero
/* 2D78C 8002CB8C 3C05802B */  lui        $a1, %hi(D_802AB430)
/* 2D790 8002CB90 24A5B430 */  addiu      $a1, $a1, %lo(D_802AB430)
/* 2D794 8002CB94 02A03021 */  addu       $a2, $s5, $zero
/* 2D798 8002CB98 0C022B9C */  jal        func_8008AE70
/* 2D79C 8002CB9C 46200506 */   mov.d     $f20, $f0
/* 2D7A0 8002CBA0 02A02021 */  addu       $a0, $s5, $zero
/* 2D7A4 8002CBA4 0C022C70 */  jal        func_8008B1C0
/* 2D7A8 8002CBA8 02202821 */   addu      $a1, $s1, $zero
/* 2D7AC 8002CBAC 00000000 */  nop
/* 2D7B0 8002CBB0 46360182 */  mul.d      $f6, $f0, $f22
/* 2D7B4 8002CBB4 D6200000 */  ldc1       $f0, 0x0($s1)
/* 2D7B8 8002CBB8 46203002 */  mul.d      $f0, $f6, $f0
/* 2D7BC 8002CBBC 3C01802B */  lui        $at, %hi(D_802AB450)
/* 2D7C0 8002CBC0 D422B450 */  ldc1       $f2, %lo(D_802AB450)($at)
/* 2D7C4 8002CBC4 46223082 */  mul.d      $f2, $f6, $f2
/* 2D7C8 8002CBC8 3C01802B */  lui        $at, %hi(D_802AB458)
/* 2D7CC 8002CBCC D424B458 */  ldc1       $f4, %lo(D_802AB458)($at)
/* 2D7D0 8002CBD0 D6A80000 */  ldc1       $f8, 0x0($s5)
/* 2D7D4 8002CBD4 46243102 */  mul.d      $f4, $f6, $f4
/* 2D7D8 8002CBD8 46204201 */  sub.d      $f8, $f8, $f0
/* 2D7DC 8002CBDC 3C01802B */  lui        $at, %hi(D_802AB4B0)
/* 2D7E0 8002CBE0 D426B4B0 */  ldc1       $f6, %lo(D_802AB4B0)($at)
/* 2D7E4 8002CBE4 46223181 */  sub.d      $f6, $f6, $f2
/* 2D7E8 8002CBE8 3C01802B */  lui        $at, %hi(D_802AB4B8)
/* 2D7EC 8002CBEC D420B4B8 */  ldc1       $f0, %lo(D_802AB4B8)($at)
/* 2D7F0 8002CBF0 02E02021 */  addu       $a0, $s7, $zero
/* 2D7F4 8002CBF4 46240001 */  sub.d      $f0, $f0, $f4
/* 2D7F8 8002CBF8 F6880000 */  sdc1       $f8, 0x0($s4)
/* 2D7FC 8002CBFC 3C01802B */  lui        $at, %hi(D_802AB4E0)
/* 2D800 8002CC00 F426B4E0 */  sdc1       $f6, %lo(D_802AB4E0)($at)
/* 2D804 8002CC04 3C01802B */  lui        $at, %hi(D_802AB4E8)
/* 2D808 8002CC08 F420B4E8 */  sdc1       $f0, %lo(D_802AB4E8)($at)
/* 2D80C 8002CC0C 0C022C70 */  jal        func_8008B1C0
/* 2D810 8002CC10 02802821 */   addu      $a1, $s4, $zero
/* 2D814 8002CC14 4634C03C */  c.lt.d     $f24, $f20
/* 2D818 8002CC18 00000000 */  nop
/* 2D81C 8002CC1C 00000000 */  nop
/* 2D820 8002CC20 45010002 */  bc1t       .L8002CC2C
/* 2D824 8002CC24 24020001 */   addiu     $v0, $zero, 0x1
/* 2D828 8002CC28 00001021 */  addu       $v0, $zero, $zero
.L8002CC2C:
/* 2D82C 8002CC2C 4620C03C */  c.lt.d     $f24, $f0
/* 2D830 8002CC30 00000000 */  nop
/* 2D834 8002CC34 00000000 */  nop
/* 2D838 8002CC38 45010002 */  bc1t       .L8002CC44
/* 2D83C 8002CC3C 24030001 */   addiu     $v1, $zero, 0x1
/* 2D840 8002CC40 00001821 */  addu       $v1, $zero, $zero
.L8002CC44:
/* 2D844 8002CC44 00431024 */  and        $v0, $v0, $v1
/* 2D848 8002CC48 14400007 */  bnez       $v0, .L8002CC68
/* 2D84C 8002CC4C 00000000 */   nop
/* 2D850 8002CC50 26730001 */  addiu      $s3, $s3, 0x1
.L8002CC54:
/* 2D854 8002CC54 8FA7004C */  lw         $a3, 0x4C($sp)
/* 2D858 8002CC58 26100018 */  addiu      $s0, $s0, 0x18
/* 2D85C 8002CC5C 0267102A */  slt        $v0, $s3, $a3
/* 2D860 8002CC60 1440FF67 */  bnez       $v0, .L8002CA00
/* 2D864 8002CC64 26520018 */   addiu     $s2, $s2, 0x18
.L8002CC68:
/* 2D868 8002CC68 3C04802B */  lui        $a0, %hi(D_802AB478)
/* 2D86C 8002CC6C 2484B478 */  addiu      $a0, $a0, %lo(D_802AB478)
/* 2D870 8002CC70 24850018 */  addiu      $a1, $a0, 0x18
/* 2D874 8002CC74 2490FFE8 */  addiu      $s0, $a0, -0x18
/* 2D878 8002CC78 0C022C84 */  jal        func_8008B210
/* 2D87C 8002CC7C 02003021 */   addu      $a2, $s0, $zero
/* 2D880 8002CC80 8FA50044 */  lw         $a1, 0x44($sp)
/* 2D884 8002CC84 0C022C70 */  jal        func_8008B1C0
/* 2D888 8002CC88 02002021 */   addu      $a0, $s0, $zero
/* 2D88C 8002CC8C 44801000 */  mtc1       $zero, $f2
/* 2D890 8002CC90 44801800 */  mtc1       $zero, $f3
/* 2D894 8002CC94 00000000 */  nop
/* 2D898 8002CC98 4622003C */  c.lt.d     $f0, $f2
/* 2D89C 8002CC9C 00000000 */  nop
/* 2D8A0 8002CCA0 00000000 */  nop
/* 2D8A4 8002CCA4 45010002 */  bc1t       .L8002CCB0
/* 2D8A8 8002CCA8 00001021 */   addu      $v0, $zero, $zero
/* 2D8AC 8002CCAC 24020001 */  addiu      $v0, $zero, 0x1
.L8002CCB0:
/* 2D8B0 8002CCB0 8FBF0084 */  lw         $ra, 0x84($sp)
/* 2D8B4 8002CCB4 8FBE0080 */  lw         $fp, 0x80($sp)
/* 2D8B8 8002CCB8 8FB7007C */  lw         $s7, 0x7C($sp)
/* 2D8BC 8002CCBC 8FB60078 */  lw         $s6, 0x78($sp)
/* 2D8C0 8002CCC0 8FB50074 */  lw         $s5, 0x74($sp)
/* 2D8C4 8002CCC4 8FB40070 */  lw         $s4, 0x70($sp)
/* 2D8C8 8002CCC8 8FB3006C */  lw         $s3, 0x6C($sp)
/* 2D8CC 8002CCCC 8FB20068 */  lw         $s2, 0x68($sp)
/* 2D8D0 8002CCD0 8FB10064 */  lw         $s1, 0x64($sp)
/* 2D8D4 8002CCD4 8FB00060 */  lw         $s0, 0x60($sp)
/* 2D8D8 8002CCD8 D7B80098 */  ldc1       $f24, 0x98($sp)
/* 2D8DC 8002CCDC D7B60090 */  ldc1       $f22, 0x90($sp)
/* 2D8E0 8002CCE0 D7B40088 */  ldc1       $f20, 0x88($sp)
/* 2D8E4 8002CCE4 03E00008 */  jr         $ra
/* 2D8E8 8002CCE8 27BD00A0 */   addiu     $sp, $sp, 0xA0

glabel func_8002CCEC
/* 2D8EC 8002CCEC 3C01802B */  lui        $at, %hi(D_802AB790)
/* 2D8F0 8002CCF0 D420B790 */  ldc1       $f0, %lo(D_802AB790)($at)
/* 2D8F4 8002CCF4 44801000 */  mtc1       $zero, $f2
/* 2D8F8 8002CCF8 44801800 */  mtc1       $zero, $f3
/* 2D8FC 8002CCFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2D900 8002CD00 4620103E */  c.le.d     $f2, $f0
/* 2D904 8002CD04 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2D908 8002CD08 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2D90C 8002CD0C 45000007 */  bc1f       .L8002CD2C
/* 2D910 8002CD10 00000000 */   nop
/* 2D914 8002CD14 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2D918 8002CD18 D420B798 */  ldc1       $f0, %lo(D_802AB798)($at)
/* 2D91C 8002CD1C 4620103C */  c.lt.d     $f2, $f0
/* 2D920 8002CD20 00000000 */  nop
/* 2D924 8002CD24 45010037 */  bc1t       .L8002CE04
/* 2D928 8002CD28 00000000 */   nop
.L8002CD2C:
/* 2D92C 8002CD2C 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2D930 8002CD30 D420B798 */  ldc1       $f0, %lo(D_802AB798)($at)
/* 2D934 8002CD34 46200002 */  mul.d      $f0, $f0, $f0
/* 2D938 8002CD38 3C01802B */  lui        $at, %hi(D_802AB790)
/* 2D93C 8002CD3C D422B790 */  ldc1       $f2, %lo(D_802AB790)($at)
/* 2D940 8002CD40 46221080 */  add.d      $f2, $f2, $f2
/* 2D944 8002CD44 3C01802B */  lui        $at, %hi(D_802AB7A0)
/* 2D948 8002CD48 D424B7A0 */  ldc1       $f4, %lo(D_802AB7A0)($at)
/* 2D94C 8002CD4C 46241082 */  mul.d      $f2, $f2, $f4
/* 2D950 8002CD50 46220301 */  sub.d      $f12, $f0, $f2
/* 2D954 8002CD54 4480A000 */  mtc1       $zero, $f20
/* 2D958 8002CD58 4480A800 */  mtc1       $zero, $f21
/* 2D95C 8002CD5C 00000000 */  nop
/* 2D960 8002CD60 4634603C */  c.lt.d     $f12, $f20
/* 2D964 8002CD64 00000000 */  nop
/* 2D968 8002CD68 45010026 */  bc1t       .L8002CE04
/* 2D96C 8002CD6C 00000000 */   nop
/* 2D970 8002CD70 46206084 */  sqrt.d     $f2, $f12
/* 2D974 8002CD74 46221032 */  c.eq.d     $f2, $f2
/* 2D978 8002CD78 00000000 */  nop
/* 2D97C 8002CD7C 45010004 */  bc1t       .L8002CD90
/* 2D980 8002CD80 00000000 */   nop
/* 2D984 8002CD84 0C026F44 */  jal        func_8009BD10
/* 2D988 8002CD88 00000000 */   nop
/* 2D98C 8002CD8C 46200086 */  mov.d      $f2, $f0
.L8002CD90:
/* 2D990 8002CD90 3C01802B */  lui        $at, %hi(D_802AB7A0)
/* 2D994 8002CD94 D420B7A0 */  ldc1       $f0, %lo(D_802AB7A0)($at)
/* 2D998 8002CD98 4620A03C */  c.lt.d     $f20, $f0
/* 2D99C 8002CD9C 00000000 */  nop
/* 2D9A0 8002CDA0 00000000 */  nop
/* 2D9A4 8002CDA4 45000007 */  bc1f       .L8002CDC4
/* 2D9A8 8002CDA8 46201306 */   mov.d     $f12, $f2
/* 2D9AC 8002CDAC 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2D9B0 8002CDB0 D420B798 */  ldc1       $f0, %lo(D_802AB798)($at)
/* 2D9B4 8002CDB4 3C01802B */  lui        $at, %hi(D_802AB790)
/* 2D9B8 8002CDB8 D422B790 */  ldc1       $f2, %lo(D_802AB790)($at)
/* 2D9BC 8002CDBC 0800B37E */  j          .L8002CDF8
/* 2D9C0 8002CDC0 462C0000 */   add.d     $f0, $f0, $f12
.L8002CDC4:
/* 2D9C4 8002CDC4 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2D9C8 8002CDC8 D420B798 */  ldc1       $f0, %lo(D_802AB798)($at)
/* 2D9CC 8002CDCC 4620A03C */  c.lt.d     $f20, $f0
/* 2D9D0 8002CDD0 00000000 */  nop
/* 2D9D4 8002CDD4 4500000B */  bc1f       .L8002CE04
/* 2D9D8 8002CDD8 00000000 */   nop
/* 2D9DC 8002CDDC 3C01802B */  lui        $at, %hi(D_802AB790)
/* 2D9E0 8002CDE0 D422B790 */  ldc1       $f2, %lo(D_802AB790)($at)
/* 2D9E4 8002CDE4 4634103C */  c.lt.d     $f2, $f20
/* 2D9E8 8002CDE8 00000000 */  nop
/* 2D9EC 8002CDEC 45000005 */  bc1f       .L8002CE04
/* 2D9F0 8002CDF0 00000000 */   nop
/* 2D9F4 8002CDF4 462C0000 */  add.d      $f0, $f0, $f12
.L8002CDF8:
/* 2D9F8 8002CDF8 46200007 */  neg.d      $f0, $f0
/* 2D9FC 8002CDFC 0800B383 */  j          .L8002CE0C
/* 2DA00 8002CE00 46220003 */   div.d     $f0, $f0, $f2
.L8002CE04:
/* 2DA04 8002CE04 3C01800D */  lui        $at, %hi(D_800D12F8)
/* 2DA08 8002CE08 D42012F8 */  ldc1       $f0, %lo(D_800D12F8)($at)
.L8002CE0C:
/* 2DA0C 8002CE0C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2DA10 8002CE10 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2DA14 8002CE14 03E00008 */  jr         $ra
/* 2DA18 8002CE18 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002CE1C
/* 2DA1C 8002CE1C 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2DA20 8002CE20 D424B798 */  ldc1       $f4, %lo(D_802AB798)($at)
/* 2DA24 8002CE24 44800000 */  mtc1       $zero, $f0
/* 2DA28 8002CE28 44800800 */  mtc1       $zero, $f1
/* 2DA2C 8002CE2C 00000000 */  nop
/* 2DA30 8002CE30 4620203C */  c.lt.d     $f4, $f0
/* 2DA34 8002CE34 00000000 */  nop
/* 2DA38 8002CE38 45000004 */  bc1f       .L8002CE4C
/* 2DA3C 8002CE3C 00000000 */   nop
/* 2DA40 8002CE40 3C01800D */  lui        $at, %hi(D_800D1300)
/* 2DA44 8002CE44 0800B3A0 */  j          .L8002CE80
/* 2DA48 8002CE48 D4201300 */   ldc1      $f0, %lo(D_800D1300)($at)
.L8002CE4C:
/* 2DA4C 8002CE4C 3C01802B */  lui        $at, %hi(D_802AB790)
/* 2DA50 8002CE50 D422B790 */  ldc1       $f2, %lo(D_802AB790)($at)
/* 2DA54 8002CE54 4622003C */  c.lt.d     $f0, $f2
/* 2DA58 8002CE58 00000000 */  nop
/* 2DA5C 8002CE5C 45010006 */  bc1t       .L8002CE78
/* 2DA60 8002CE60 00000000 */   nop
/* 2DA64 8002CE64 3C01800D */  lui        $at, %hi(D_800D1310)
/* 2DA68 8002CE68 D4201310 */  ldc1       $f0, %lo(D_800D1310)($at)
/* 2DA6C 8002CE6C 46202002 */  mul.d      $f0, $f4, $f0
/* 2DA70 8002CE70 0800B3A0 */  j          .L8002CE80
/* 2DA74 8002CE74 46220003 */   div.d     $f0, $f0, $f2
.L8002CE78:
/* 2DA78 8002CE78 3C01800D */  lui        $at, %hi(D_800D1308)
/* 2DA7C 8002CE7C D4201308 */  ldc1       $f0, %lo(D_800D1308)($at)
.L8002CE80:
/* 2DA80 8002CE80 03E00008 */  jr         $ra
/* 2DA84 8002CE84 00000000 */   nop

glabel func_8002CE88
/* 2DA88 8002CE88 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2DA8C 8002CE8C D424B798 */  ldc1       $f4, %lo(D_802AB798)($at)
/* 2DA90 8002CE90 44800000 */  mtc1       $zero, $f0
/* 2DA94 8002CE94 44800800 */  mtc1       $zero, $f1
/* 2DA98 8002CE98 00000000 */  nop
/* 2DA9C 8002CE9C 4620203C */  c.lt.d     $f4, $f0
/* 2DAA0 8002CEA0 00000000 */  nop
/* 2DAA4 8002CEA4 4501000C */  bc1t       .L8002CED8
/* 2DAA8 8002CEA8 00000000 */   nop
/* 2DAAC 8002CEAC 3C01802B */  lui        $at, %hi(D_802AB790)
/* 2DAB0 8002CEB0 D422B790 */  ldc1       $f2, %lo(D_802AB790)($at)
/* 2DAB4 8002CEB4 4622003C */  c.lt.d     $f0, $f2
/* 2DAB8 8002CEB8 00000000 */  nop
/* 2DABC 8002CEBC 45010006 */  bc1t       .L8002CED8
/* 2DAC0 8002CEC0 00000000 */   nop
/* 2DAC4 8002CEC4 3C01800D */  lui        $at, %hi(D_800D1320)
/* 2DAC8 8002CEC8 D4201320 */  ldc1       $f0, %lo(D_800D1320)($at)
/* 2DACC 8002CECC 46202002 */  mul.d      $f0, $f4, $f0
/* 2DAD0 8002CED0 0800B3B8 */  j          .L8002CEE0
/* 2DAD4 8002CED4 46220003 */   div.d     $f0, $f0, $f2
.L8002CED8:
/* 2DAD8 8002CED8 3C01800D */  lui        $at, %hi(D_800D1318)
/* 2DADC 8002CEDC D4201318 */  ldc1       $f0, %lo(D_800D1318)($at)
.L8002CEE0:
/* 2DAE0 8002CEE0 03E00008 */  jr         $ra
/* 2DAE4 8002CEE4 00000000 */   nop

glabel func_8002CEE8
/* 2DAE8 8002CEE8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2DAEC 8002CEEC AFB1002C */  sw         $s1, 0x2C($sp)
/* 2DAF0 8002CEF0 00A08821 */  addu       $s1, $a1, $zero
/* 2DAF4 8002CEF4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 2DAF8 8002CEF8 AFB00028 */  sw         $s0, 0x28($sp)
/* 2DAFC 8002CEFC F7BA0050 */  sdc1       $f26, 0x50($sp)
/* 2DB00 8002CF00 F7B80048 */  sdc1       $f24, 0x48($sp)
/* 2DB04 8002CF04 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 2DB08 8002CF08 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 2DB0C 8002CF0C 8E22001C */  lw         $v0, 0x1C($s1)
/* 2DB10 8002CF10 00808021 */  addu       $s0, $a0, $zero
/* 2DB14 8002CF14 D61A0008 */  ldc1       $f26, 0x8($s0)
/* 2DB18 8002CF18 D4400000 */  ldc1       $f0, 0x0($v0)
/* 2DB1C 8002CF1C 4620D001 */  sub.d      $f0, $f26, $f0
/* 2DB20 8002CF20 F7A00010 */  sdc1       $f0, 0x10($sp)
/* 2DB24 8002CF24 8E22001C */  lw         $v0, 0x1C($s1)
/* 2DB28 8002CF28 D6180010 */  ldc1       $f24, 0x10($s0)
/* 2DB2C 8002CF2C D4400008 */  ldc1       $f0, 0x8($v0)
/* 2DB30 8002CF30 D6360008 */  ldc1       $f22, 0x8($s1)
/* 2DB34 8002CF34 4620C001 */  sub.d      $f0, $f24, $f0
/* 2DB38 8002CF38 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 2DB3C 8002CF3C D4226A00 */  ldc1       $f2, %lo(D_800C6A00)($at)
/* 2DB40 8002CF40 F7A00018 */  sdc1       $f0, 0x18($sp)
/* 2DB44 8002CF44 8E22001C */  lw         $v0, 0x1C($s1)
/* 2DB48 8002CF48 4622B082 */  mul.d      $f2, $f22, $f2
/* 2DB4C 8002CF4C D6140018 */  ldc1       $f20, 0x18($s0)
/* 2DB50 8002CF50 D4400010 */  ldc1       $f0, 0x10($v0)
/* 2DB54 8002CF54 4620A001 */  sub.d      $f0, $f20, $f0
/* 2DB58 8002CF58 3C01802B */  lui        $at, %hi(D_802AB790)
/* 2DB5C 8002CF5C F422B790 */  sdc1       $f2, %lo(D_802AB790)($at)
/* 2DB60 8002CF60 F7A00020 */  sdc1       $f0, 0x20($sp)
/* 2DB64 8002CF64 0C022C70 */  jal        func_8008B1C0
/* 2DB68 8002CF68 26040020 */   addiu     $a0, $s0, 0x20
/* 2DB6C 8002CF6C D6020038 */  ldc1       $f2, 0x38($s0)
/* 2DB70 8002CF70 46220002 */  mul.d      $f0, $f0, $f2
/* 2DB74 8002CF74 27A40010 */  addiu      $a0, $sp, 0x10
/* 2DB78 8002CF78 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2DB7C 8002CF7C F420B798 */  sdc1       $f0, %lo(D_802AB798)($at)
/* 2DB80 8002CF80 0C022C70 */  jal        func_8008B1C0
/* 2DB84 8002CF84 02202821 */   addu      $a1, $s1, $zero
/* 2DB88 8002CF88 3C01800D */  lui        $at, %hi(D_800D1340)
/* 2DB8C 8002CF8C D4221340 */  ldc1       $f2, %lo(D_800D1340)($at)
/* 2DB90 8002CF90 3C01802B */  lui        $at, %hi(D_802AB790)
/* 2DB94 8002CF94 D424B790 */  ldc1       $f4, %lo(D_802AB790)($at)
/* 2DB98 8002CF98 46220201 */  sub.d      $f8, $f0, $f2
/* 2DB9C 8002CF9C 44803000 */  mtc1       $zero, $f6
/* 2DBA0 8002CFA0 44803800 */  mtc1       $zero, $f7
/* 2DBA4 8002CFA4 00000000 */  nop
/* 2DBA8 8002CFA8 46262032 */  c.eq.d     $f4, $f6
/* 2DBAC 8002CFAC 3C01802B */  lui        $at, %hi(D_802AB7A0)
/* 2DBB0 8002CFB0 F428B7A0 */  sdc1       $f8, %lo(D_802AB7A0)($at)
/* 2DBB4 8002CFB4 4500001F */  bc1f       .L8002D034
/* 2DBB8 8002CFB8 46204005 */   abs.d     $f0, $f8
/* 2DBBC 8002CFBC 3C01800D */  lui        $at, %hi(D_800D1348)
/* 2DBC0 8002CFC0 D4221348 */  ldc1       $f2, %lo(D_800D1348)($at)
/* 2DBC4 8002CFC4 4620103C */  c.lt.d     $f2, $f0
/* 2DBC8 8002CFC8 00000000 */  nop
/* 2DBCC 8002CFCC 4500000D */  bc1f       .L8002D004
/* 2DBD0 8002CFD0 00000000 */   nop
/* 2DBD4 8002CFD4 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2DBD8 8002CFD8 D422B798 */  ldc1       $f2, %lo(D_802AB798)($at)
/* 2DBDC 8002CFDC 46261032 */  c.eq.d     $f2, $f6
/* 2DBE0 8002CFE0 00000000 */  nop
/* 2DBE4 8002CFE4 00000000 */  nop
/* 2DBE8 8002CFE8 45020004 */  bc1fl      .L8002CFFC
/* 2DBEC 8002CFEC 46204007 */   neg.d     $f0, $f8
/* 2DBF0 8002CFF0 3C01800D */  lui        $at, %hi(D_800D1328)
/* 2DBF4 8002CFF4 0800B42B */  j          .L8002D0AC
/* 2DBF8 8002CFF8 D4341328 */   ldc1      $f20, %lo(D_800D1328)($at)
.L8002CFFC:
/* 2DBFC 8002CFFC 0800B42B */  j          .L8002D0AC
/* 2DC00 8002D000 46220503 */   div.d     $f20, $f0, $f2
.L8002D004:
/* 2DC04 8002D004 3C01802B */  lui        $at, %hi(D_802AB798)
/* 2DC08 8002D008 D420B798 */  ldc1       $f0, %lo(D_802AB798)($at)
/* 2DC0C 8002D00C 4620303C */  c.lt.d     $f6, $f0
/* 2DC10 8002D010 00000000 */  nop
/* 2DC14 8002D014 45000004 */  bc1f       .L8002D028
/* 2DC18 8002D018 00000000 */   nop
/* 2DC1C 8002D01C 3C01800D */  lui        $at, %hi(D_800D1330)
/* 2DC20 8002D020 0800B42B */  j          .L8002D0AC
/* 2DC24 8002D024 D4341330 */   ldc1      $f20, %lo(D_800D1330)($at)
.L8002D028:
/* 2DC28 8002D028 3C01800D */  lui        $at, %hi(D_800D1338)
/* 2DC2C 8002D02C 0800B42B */  j          .L8002D0AC
/* 2DC30 8002D030 D4341338 */   ldc1      $f20, %lo(D_800D1338)($at)
.L8002D034:
/* 2DC34 8002D034 3C01800D */  lui        $at, %hi(D_800D1350)
/* 2DC38 8002D038 D4221350 */  ldc1       $f2, %lo(D_800D1350)($at)
/* 2DC3C 8002D03C 4620103C */  c.lt.d     $f2, $f0
/* 2DC40 8002D040 00000000 */  nop
/* 2DC44 8002D044 00000000 */  nop
/* 2DC48 8002D048 45020005 */  bc1fl      .L8002D060
/* 2DC4C 8002D04C 4636C101 */   sub.d     $f4, $f24, $f22
/* 2DC50 8002D050 0C00B33B */  jal        func_8002CCEC
/* 2DC54 8002D054 00000000 */   nop
/* 2DC58 8002D058 0800B42B */  j          .L8002D0AC
/* 2DC5C 8002D05C 46200506 */   mov.d     $f20, $f0
.L8002D060:
/* 2DC60 8002D060 D6200000 */  ldc1       $f0, 0x0($s1)
/* 2DC64 8002D064 4620D001 */  sub.d      $f0, $f26, $f0
/* 2DC68 8002D068 D6220010 */  ldc1       $f2, 0x10($s1)
/* 2DC6C 8002D06C 02202021 */  addu       $a0, $s1, $zero
/* 2DC70 8002D070 4622A081 */  sub.d      $f2, $f20, $f2
/* 2DC74 8002D074 F7A40018 */  sdc1       $f4, 0x18($sp)
/* 2DC78 8002D078 F7A00010 */  sdc1       $f0, 0x10($sp)
/* 2DC7C 8002D07C F7A20020 */  sdc1       $f2, 0x20($sp)
/* 2DC80 8002D080 0C00B233 */  jal        func_8002C8CC
/* 2DC84 8002D084 27A50010 */   addiu     $a1, $sp, 0x10
/* 2DC88 8002D088 10400005 */  beqz       $v0, .L8002D0A0
/* 2DC8C 8002D08C 00000000 */   nop
/* 2DC90 8002D090 0C00B387 */  jal        func_8002CE1C
/* 2DC94 8002D094 00000000 */   nop
/* 2DC98 8002D098 0800B42B */  j          .L8002D0AC
/* 2DC9C 8002D09C 46200506 */   mov.d     $f20, $f0
.L8002D0A0:
/* 2DCA0 8002D0A0 0C00B3A2 */  jal        func_8002CE88
/* 2DCA4 8002D0A4 00000000 */   nop
/* 2DCA8 8002D0A8 46200506 */  mov.d      $f20, $f0
.L8002D0AC:
/* 2DCAC 8002D0AC 44800000 */  mtc1       $zero, $f0
/* 2DCB0 8002D0B0 44800800 */  mtc1       $zero, $f1
/* 2DCB4 8002D0B4 00000000 */  nop
/* 2DCB8 8002D0B8 4620A03C */  c.lt.d     $f20, $f0
/* 2DCBC 8002D0BC 00000000 */  nop
/* 2DCC0 8002D0C0 4501003A */  bc1t       .L8002D1AC
/* 2DCC4 8002D0C4 00000000 */   nop
/* 2DCC8 8002D0C8 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2DCCC 8002D0CC D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2DCD0 8002D0D0 4634003C */  c.lt.d     $f0, $f20
/* 2DCD4 8002D0D4 00000000 */  nop
/* 2DCD8 8002D0D8 00000000 */  nop
/* 2DCDC 8002D0DC 45010033 */  bc1t       .L8002D1AC
/* 2DCE0 8002D0E0 02202021 */   addu      $a0, $s1, $zero
/* 2DCE4 8002D0E4 D6020038 */  ldc1       $f2, 0x38($s0)
/* 2DCE8 8002D0E8 4622A182 */  mul.d      $f6, $f20, $f2
/* 2DCEC 8002D0EC D6000028 */  ldc1       $f0, 0x28($s0)
/* 2DCF0 8002D0F0 46201082 */  mul.d      $f2, $f2, $f0
/* 2DCF4 8002D0F4 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 2DCF8 8002D0F8 D4206A08 */  ldc1       $f0, %lo(D_800C6A08)($at)
/* 2DCFC 8002D0FC 46340002 */  mul.d      $f0, $f0, $f20
/* 2DD00 8002D100 D6040020 */  ldc1       $f4, 0x20($s0)
/* 2DD04 8002D104 46243102 */  mul.d      $f4, $f6, $f4
/* 2DD08 8002D108 46201080 */  add.d      $f2, $f2, $f0
/* 2DD0C 8002D10C D6000030 */  ldc1       $f0, 0x30($s0)
/* 2DD10 8002D110 46203182 */  mul.d      $f6, $f6, $f0
/* 2DD14 8002D114 D60A0008 */  ldc1       $f10, 0x8($s0)
/* 2DD18 8002D118 4622A082 */  mul.d      $f2, $f20, $f2
/* 2DD1C 8002D11C 46245280 */  add.d      $f10, $f10, $f4
/* 2DD20 8002D120 D6000018 */  ldc1       $f0, 0x18($s0)
/* 2DD24 8002D124 46260000 */  add.d      $f0, $f0, $f6
/* 2DD28 8002D128 D6080010 */  ldc1       $f8, 0x10($s0)
/* 2DD2C 8002D12C 46224200 */  add.d      $f8, $f8, $f2
/* 2DD30 8002D130 D6260000 */  ldc1       $f6, 0x0($s1)
/* 2DD34 8002D134 46265181 */  sub.d      $f6, $f10, $f6
/* 2DD38 8002D138 D6240010 */  ldc1       $f4, 0x10($s1)
/* 2DD3C 8002D13C D4820008 */  ldc1       $f2, 0x8($a0)
/* 2DD40 8002D140 46240101 */  sub.d      $f4, $f0, $f4
/* 2DD44 8002D144 F7AA0010 */  sdc1       $f10, 0x10($sp)
/* 2DD48 8002D148 F7A00020 */  sdc1       $f0, 0x20($sp)
/* 2DD4C 8002D14C 46224081 */  sub.d      $f2, $f8, $f2
/* 2DD50 8002D150 F7A80018 */  sdc1       $f8, 0x18($sp)
/* 2DD54 8002D154 F7A60010 */  sdc1       $f6, 0x10($sp)
/* 2DD58 8002D158 F7A40020 */  sdc1       $f4, 0x20($sp)
/* 2DD5C 8002D15C F7A20018 */  sdc1       $f2, 0x18($sp)
/* 2DD60 8002D160 0C00B233 */  jal        func_8002C8CC
/* 2DD64 8002D164 27A50010 */   addiu     $a1, $sp, 0x10
/* 2DD68 8002D168 10400010 */  beqz       $v0, .L8002D1AC
/* 2DD6C 8002D16C 00000000 */   nop
/* 2DD70 8002D170 3C02802B */  lui        $v0, %hi(D_802AB5A8)
/* 2DD74 8002D174 8C42B5A8 */  lw         $v0, %lo(D_802AB5A8)($v0)
/* 2DD78 8002D178 3C03802B */  lui        $v1, %hi(D_802AB5A4)
/* 2DD7C 8002D17C 8C63B5A4 */  lw         $v1, %lo(D_802AB5A4)($v1)
/* 2DD80 8002D180 3C04802B */  lui        $a0, %hi(D_802AB59C)
/* 2DD84 8002D184 8C84B59C */  lw         $a0, %lo(D_802AB59C)($a0)
/* 2DD88 8002D188 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2DD8C 8002D18C F434B520 */  sdc1       $f20, %lo(D_802AB520)($at)
/* 2DD90 8002D190 00031F00 */  sll        $v1, $v1, 28
/* 2DD94 8002D194 00042400 */  sll        $a0, $a0, 16
/* 2DD98 8002D198 00641821 */  addu       $v1, $v1, $a0
/* 2DD9C 8002D19C 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2DDA0 8002D1A0 AC22B788 */  sw         $v0, %lo(D_802AB788)($at)
/* 2DDA4 8002D1A4 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2DDA8 8002D1A8 AC23B78C */  sw         $v1, %lo(D_802AB78C)($at)
.L8002D1AC:
/* 2DDAC 8002D1AC 8FBF0030 */  lw         $ra, 0x30($sp)
/* 2DDB0 8002D1B0 8FB1002C */  lw         $s1, 0x2C($sp)
/* 2DDB4 8002D1B4 8FB00028 */  lw         $s0, 0x28($sp)
/* 2DDB8 8002D1B8 D7BA0050 */  ldc1       $f26, 0x50($sp)
/* 2DDBC 8002D1BC D7B80048 */  ldc1       $f24, 0x48($sp)
/* 2DDC0 8002D1C0 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 2DDC4 8002D1C4 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 2DDC8 8002D1C8 03E00008 */  jr         $ra
/* 2DDCC 8002D1CC 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8002D1D0
/* 2DDD0 8002D1D0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2DDD4 8002D1D4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 2DDD8 8002D1D8 00A09821 */  addu       $s3, $a1, $zero
/* 2DDDC 8002D1DC AFB20018 */  sw         $s2, 0x18($sp)
/* 2DDE0 8002D1E0 8E720018 */  lw         $s2, 0x18($s3)
/* 2DDE4 8002D1E4 AFB40020 */  sw         $s4, 0x20($sp)
/* 2DDE8 8002D1E8 8E74001C */  lw         $s4, 0x1C($s3)
/* 2DDEC 8002D1EC AFB00010 */  sw         $s0, 0x10($sp)
/* 2DDF0 8002D1F0 8E700020 */  lw         $s0, 0x20($s3)
/* 2DDF4 8002D1F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 2DDF8 8002D1F8 8E71000C */  lw         $s1, 0xC($s3)
/* 2DDFC 8002D1FC AFB50024 */  sw         $s5, 0x24($sp)
/* 2DE00 8002D200 24020001 */  addiu      $v0, $zero, 0x1
/* 2DE04 8002D204 AFBF0028 */  sw         $ra, 0x28($sp)
/* 2DE08 8002D208 3C01802B */  lui        $at, %hi(D_802AB5A0)
/* 2DE0C 8002D20C AC22B5A0 */  sw         $v0, %lo(D_802AB5A0)($at)
/* 2DE10 8002D210 1220000C */  beqz       $s1, .L8002D244
/* 2DE14 8002D214 0080A821 */   addu      $s5, $a0, $zero
.L8002D218:
/* 2DE18 8002D218 02A02021 */  addu       $a0, $s5, $zero
/* 2DE1C 8002D21C 0C00B066 */  jal        func_8002C198
/* 2DE20 8002D220 02002821 */   addu      $a1, $s0, $zero
/* 2DE24 8002D224 3C02802B */  lui        $v0, %hi(D_802AB5A0)
/* 2DE28 8002D228 8C42B5A0 */  lw         $v0, %lo(D_802AB5A0)($v0)
/* 2DE2C 8002D22C 24420001 */  addiu      $v0, $v0, 0x1
/* 2DE30 8002D230 3C01802B */  lui        $at, %hi(D_802AB5A0)
/* 2DE34 8002D234 AC22B5A0 */  sw         $v0, %lo(D_802AB5A0)($at)
/* 2DE38 8002D238 0222102B */  sltu       $v0, $s1, $v0
/* 2DE3C 8002D23C 1040FFF6 */  beqz       $v0, .L8002D218
/* 2DE40 8002D240 26100018 */   addiu     $s0, $s0, 0x18
.L8002D244:
/* 2DE44 8002D244 8E710004 */  lw         $s1, 0x4($s3)
/* 2DE48 8002D248 24020001 */  addiu      $v0, $zero, 0x1
/* 2DE4C 8002D24C 3C01802B */  lui        $at, %hi(D_802AB59C)
/* 2DE50 8002D250 1220000C */  beqz       $s1, .L8002D284
/* 2DE54 8002D254 AC22B59C */   sw        $v0, %lo(D_802AB59C)($at)
.L8002D258:
/* 2DE58 8002D258 02A02021 */  addu       $a0, $s5, $zero
/* 2DE5C 8002D25C 0C00B3BA */  jal        func_8002CEE8
/* 2DE60 8002D260 02402821 */   addu      $a1, $s2, $zero
/* 2DE64 8002D264 3C02802B */  lui        $v0, %hi(D_802AB59C)
/* 2DE68 8002D268 8C42B59C */  lw         $v0, %lo(D_802AB59C)($v0)
/* 2DE6C 8002D26C 24420001 */  addiu      $v0, $v0, 0x1
/* 2DE70 8002D270 3C01802B */  lui        $at, %hi(D_802AB59C)
/* 2DE74 8002D274 AC22B59C */  sw         $v0, %lo(D_802AB59C)($at)
/* 2DE78 8002D278 0222102B */  sltu       $v0, $s1, $v0
/* 2DE7C 8002D27C 1040FFF6 */  beqz       $v0, .L8002D258
/* 2DE80 8002D280 26520020 */   addiu     $s2, $s2, 0x20
.L8002D284:
/* 2DE84 8002D284 8E710008 */  lw         $s1, 0x8($s3)
/* 2DE88 8002D288 24020001 */  addiu      $v0, $zero, 0x1
/* 2DE8C 8002D28C 3C01802B */  lui        $at, %hi(D_802AB598)
/* 2DE90 8002D290 1220000C */  beqz       $s1, .L8002D2C4
/* 2DE94 8002D294 AC22B598 */   sw        $v0, %lo(D_802AB598)($at)
.L8002D298:
/* 2DE98 8002D298 02A02021 */  addu       $a0, $s5, $zero
/* 2DE9C 8002D29C 0C00B101 */  jal        func_8002C404
/* 2DEA0 8002D2A0 02802821 */   addu      $a1, $s4, $zero
/* 2DEA4 8002D2A4 3C02802B */  lui        $v0, %hi(D_802AB598)
/* 2DEA8 8002D2A8 8C42B598 */  lw         $v0, %lo(D_802AB598)($v0)
/* 2DEAC 8002D2AC 24420001 */  addiu      $v0, $v0, 0x1
/* 2DEB0 8002D2B0 3C01802B */  lui        $at, %hi(D_802AB598)
/* 2DEB4 8002D2B4 AC22B598 */  sw         $v0, %lo(D_802AB598)($at)
/* 2DEB8 8002D2B8 0222102B */  sltu       $v0, $s1, $v0
/* 2DEBC 8002D2BC 1040FFF6 */  beqz       $v0, .L8002D298
/* 2DEC0 8002D2C0 26940030 */   addiu     $s4, $s4, 0x30
.L8002D2C4:
/* 2DEC4 8002D2C4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 2DEC8 8002D2C8 8FB50024 */  lw         $s5, 0x24($sp)
/* 2DECC 8002D2CC 8FB40020 */  lw         $s4, 0x20($sp)
/* 2DED0 8002D2D0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2DED4 8002D2D4 8FB20018 */  lw         $s2, 0x18($sp)
/* 2DED8 8002D2D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 2DEDC 8002D2DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 2DEE0 8002D2E0 03E00008 */  jr         $ra
/* 2DEE4 8002D2E4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002D2E8
/* 2DEE8 8002D2E8 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2DEEC 8002D2EC D422B5B0 */  ldc1       $f2, %lo(D_802AB5B0)($at)
/* 2DEF0 8002D2F0 D4800008 */  ldc1       $f0, 0x8($a0)
/* 2DEF4 8002D2F4 46201181 */  sub.d      $f6, $f2, $f0
/* 2DEF8 8002D2F8 3C01800D */  lui        $at, %hi(D_800D1358)
/* 2DEFC 8002D2FC D4281358 */  ldc1       $f8, %lo(D_800D1358)($at)
/* 2DF00 8002D300 46203105 */  abs.d      $f4, $f6
/* 2DF04 8002D304 4628203C */  c.lt.d     $f4, $f8
/* 2DF08 8002D308 00000000 */  nop
/* 2DF0C 8002D30C 00000000 */  nop
/* 2DF10 8002D310 4501023E */  bc1t       .L8002DC0C
/* 2DF14 8002D314 00001021 */   addu      $v0, $zero, $zero
/* 2DF18 8002D318 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2DF1C 8002D31C D420B5C0 */  ldc1       $f0, %lo(D_802AB5C0)($at)
/* 2DF20 8002D320 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2DF24 8002D324 46220081 */  sub.d      $f2, $f0, $f2
/* 2DF28 8002D328 46201005 */  abs.d      $f0, $f2
/* 2DF2C 8002D32C 46202100 */  add.d      $f4, $f4, $f0
/* 2DF30 8002D330 4628203C */  c.lt.d     $f4, $f8
/* 2DF34 8002D334 00000000 */  nop
/* 2DF38 8002D338 45010234 */  bc1t       .L8002DC0C
/* 2DF3C 8002D33C 00000000 */   nop
/* 2DF40 8002D340 2CA20006 */  sltiu      $v0, $a1, 0x6
/* 2DF44 8002D344 10400230 */  beqz       $v0, .L8002DC08
/* 2DF48 8002D348 46261203 */   div.d     $f8, $f2, $f6
/* 2DF4C 8002D34C 00051080 */  sll        $v0, $a1, 2
/* 2DF50 8002D350 3C01800D */  lui        $at, %hi(jtbl_800D1360_main)
/* 2DF54 8002D354 00220821 */  addu       $at, $at, $v0
/* 2DF58 8002D358 8C221360 */  lw         $v0, %lo(jtbl_800D1360_main)($at)
/* 2DF5C 8002D35C 00400008 */  jr         $v0
/* 2DF60 8002D360 00000000 */   nop
glabel L8002D364
/* 2DF64 8002D364 3C01800D */  lui        $at, %hi(D_800D1378)
/* 2DF68 8002D368 D4241378 */  ldc1       $f4, %lo(D_800D1378)($at)
/* 2DF6C 8002D36C 3C01800D */  lui        $at, %hi(D_800D1380)
/* 2DF70 8002D370 D4201380 */  ldc1       $f0, %lo(D_800D1380)($at)
/* 2DF74 8002D374 3C01800D */  lui        $at, %hi(D_800D1388)
/* 2DF78 8002D378 D4261388 */  ldc1       $f6, %lo(D_800D1388)($at)
/* 2DF7C 8002D37C 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2DF80 8002D380 D422B5B0 */  ldc1       $f2, %lo(D_802AB5B0)($at)
/* 2DF84 8002D384 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2DF88 8002D388 AC20B508 */  sw         $zero, %lo(D_802AB508)($at)
/* 2DF8C 8002D38C 3C01802B */  lui        $at, %hi(D_802AB50C)
/* 2DF90 8002D390 AC20B50C */  sw         $zero, %lo(D_802AB50C)($at)
/* 2DF94 8002D394 4622003E */  c.le.d     $f0, $f2
/* 2DF98 8002D398 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2DF9C 8002D39C F424B4F8 */  sdc1       $f4, %lo(D_802AB4F8)($at)
/* 2DFA0 8002D3A0 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2DFA4 8002D3A4 F420B4F0 */  sdc1       $f0, %lo(D_802AB4F0)($at)
/* 2DFA8 8002D3A8 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2DFAC 8002D3AC F426B500 */  sdc1       $f6, %lo(D_802AB500)($at)
/* 2DFB0 8002D3B0 45000013 */  bc1f       .L8002D400
/* 2DFB4 8002D3B4 00000000 */   nop
/* 2DFB8 8002D3B8 4624103E */  c.le.d     $f2, $f4
/* 2DFBC 8002D3BC 00000000 */  nop
/* 2DFC0 8002D3C0 4500000F */  bc1f       .L8002D400
/* 2DFC4 8002D3C4 00000000 */   nop
/* 2DFC8 8002D3C8 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2DFCC 8002D3CC D422B5C0 */  ldc1       $f2, %lo(D_802AB5C0)($at)
/* 2DFD0 8002D3D0 4622303E */  c.le.d     $f6, $f2
/* 2DFD4 8002D3D4 00000000 */  nop
/* 2DFD8 8002D3D8 45000009 */  bc1f       .L8002D400
/* 2DFDC 8002D3DC 00000000 */   nop
/* 2DFE0 8002D3E0 44800000 */  mtc1       $zero, $f0
/* 2DFE4 8002D3E4 44800800 */  mtc1       $zero, $f1
/* 2DFE8 8002D3E8 00000000 */  nop
/* 2DFEC 8002D3EC 4620103E */  c.le.d     $f2, $f0
/* 2DFF0 8002D3F0 00000000 */  nop
/* 2DFF4 8002D3F4 00000000 */  nop
/* 2DFF8 8002D3F8 45010204 */  bc1t       .L8002DC0C
/* 2DFFC 8002D3FC 24020001 */   addiu     $v0, $zero, 0x1
.L8002D400:
/* 2E000 8002D400 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E004 8002D404 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E008 8002D408 D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E00C 8002D40C 4622003E */  c.le.d     $f0, $f2
/* 2E010 8002D410 00000000 */  nop
/* 2E014 8002D414 45000016 */  bc1f       .L8002D470
/* 2E018 8002D418 00000000 */   nop
/* 2E01C 8002D41C 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E020 8002D420 D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E024 8002D424 4620103E */  c.le.d     $f2, $f0
/* 2E028 8002D428 00000000 */  nop
/* 2E02C 8002D42C 00000000 */  nop
/* 2E030 8002D430 45020013 */  bc1fl      .L8002D480
/* 2E034 8002D434 46220001 */   sub.d     $f0, $f0, $f2
/* 2E038 8002D438 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E03C 8002D43C 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E040 8002D440 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E044 8002D444 4622003E */  c.le.d     $f0, $f2
/* 2E048 8002D448 00000000 */  nop
/* 2E04C 8002D44C 45000008 */  bc1f       .L8002D470
/* 2E050 8002D450 00000000 */   nop
/* 2E054 8002D454 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E058 8002D458 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E05C 8002D45C 4620103E */  c.le.d     $f2, $f0
/* 2E060 8002D460 00000000 */  nop
/* 2E064 8002D464 00000000 */  nop
/* 2E068 8002D468 450101E8 */  bc1t       .L8002DC0C
/* 2E06C 8002D46C 24020001 */   addiu     $v0, $zero, 0x1
.L8002D470:
/* 2E070 8002D470 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E074 8002D474 D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E078 8002D478 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E07C 8002D47C 46220001 */  sub.d      $f0, $f0, $f2
.L8002D480:
/* 2E080 8002D480 00000000 */  nop
/* 2E084 8002D484 46204002 */  mul.d      $f0, $f8, $f0
/* 2E088 8002D488 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E08C 8002D48C 46201100 */  add.d      $f4, $f2, $f0
/* 2E090 8002D490 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E094 8002D494 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E098 8002D498 4624003C */  c.lt.d     $f0, $f4
/* 2E09C 8002D49C 00000000 */  nop
/* 2E0A0 8002D4A0 45000008 */  bc1f       .L8002D4C4
/* 2E0A4 8002D4A4 00000000 */   nop
/* 2E0A8 8002D4A8 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E0AC 8002D4AC D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E0B0 8002D4B0 4620203C */  c.lt.d     $f4, $f0
/* 2E0B4 8002D4B4 00000000 */  nop
/* 2E0B8 8002D4B8 00000000 */  nop
/* 2E0BC 8002D4BC 450301D3 */  bc1tl      .L8002DC0C
/* 2E0C0 8002D4C0 24020001 */   addiu     $v0, $zero, 0x1
.L8002D4C4:
/* 2E0C4 8002D4C4 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E0C8 8002D4C8 D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E0CC 8002D4CC D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E0D0 8002D4D0 46220001 */  sub.d      $f0, $f0, $f2
/* 2E0D4 8002D4D4 46204002 */  mul.d      $f0, $f8, $f0
/* 2E0D8 8002D4D8 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E0DC 8002D4DC 46201100 */  add.d      $f4, $f2, $f0
/* 2E0E0 8002D4E0 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E0E4 8002D4E4 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E0E8 8002D4E8 4624003C */  c.lt.d     $f0, $f4
/* 2E0EC 8002D4EC 00000000 */  nop
/* 2E0F0 8002D4F0 00000000 */  nop
/* 2E0F4 8002D4F4 450001C5 */  bc1f       .L8002DC0C
/* 2E0F8 8002D4F8 00001021 */   addu      $v0, $zero, $zero
/* 2E0FC 8002D4FC 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E100 8002D500 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E104 8002D504 4620203C */  c.lt.d     $f4, $f0
/* 2E108 8002D508 0800B6FE */  j          .L8002DBF8
/* 2E10C 8002D50C 00000000 */   nop
glabel L8002D510
/* 2E110 8002D510 3C01800D */  lui        $at, %hi(D_800D1390)
/* 2E114 8002D514 D4201390 */  ldc1       $f0, %lo(D_800D1390)($at)
/* 2E118 8002D518 3C01800D */  lui        $at, %hi(D_800D1398)
/* 2E11C 8002D51C D4241398 */  ldc1       $f4, %lo(D_800D1398)($at)
/* 2E120 8002D520 3C01800D */  lui        $at, %hi(D_800D13A0)
/* 2E124 8002D524 D42613A0 */  ldc1       $f6, %lo(D_800D13A0)($at)
/* 2E128 8002D528 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2E12C 8002D52C D422B5B0 */  ldc1       $f2, %lo(D_802AB5B0)($at)
/* 2E130 8002D530 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E134 8002D534 AC20B508 */  sw         $zero, %lo(D_802AB508)($at)
/* 2E138 8002D538 3C01802B */  lui        $at, %hi(D_802AB50C)
/* 2E13C 8002D53C AC20B50C */  sw         $zero, %lo(D_802AB50C)($at)
/* 2E140 8002D540 4622003E */  c.le.d     $f0, $f2
/* 2E144 8002D544 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E148 8002D548 F420B4F0 */  sdc1       $f0, %lo(D_802AB4F0)($at)
/* 2E14C 8002D54C 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E150 8002D550 F424B4F8 */  sdc1       $f4, %lo(D_802AB4F8)($at)
/* 2E154 8002D554 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E158 8002D558 F426B500 */  sdc1       $f6, %lo(D_802AB500)($at)
/* 2E15C 8002D55C 45000013 */  bc1f       .L8002D5AC
/* 2E160 8002D560 00000000 */   nop
/* 2E164 8002D564 4624103E */  c.le.d     $f2, $f4
/* 2E168 8002D568 00000000 */  nop
/* 2E16C 8002D56C 4500000F */  bc1f       .L8002D5AC
/* 2E170 8002D570 00000000 */   nop
/* 2E174 8002D574 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2E178 8002D578 D422B5C0 */  ldc1       $f2, %lo(D_802AB5C0)($at)
/* 2E17C 8002D57C 4622303E */  c.le.d     $f6, $f2
/* 2E180 8002D580 00000000 */  nop
/* 2E184 8002D584 45000009 */  bc1f       .L8002D5AC
/* 2E188 8002D588 00000000 */   nop
/* 2E18C 8002D58C 44800000 */  mtc1       $zero, $f0
/* 2E190 8002D590 44800800 */  mtc1       $zero, $f1
/* 2E194 8002D594 00000000 */  nop
/* 2E198 8002D598 4620103E */  c.le.d     $f2, $f0
/* 2E19C 8002D59C 00000000 */  nop
/* 2E1A0 8002D5A0 00000000 */  nop
/* 2E1A4 8002D5A4 45010199 */  bc1t       .L8002DC0C
/* 2E1A8 8002D5A8 24020001 */   addiu     $v0, $zero, 0x1
.L8002D5AC:
/* 2E1AC 8002D5AC D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E1B0 8002D5B0 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E1B4 8002D5B4 D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E1B8 8002D5B8 4622003E */  c.le.d     $f0, $f2
/* 2E1BC 8002D5BC 00000000 */  nop
/* 2E1C0 8002D5C0 45000016 */  bc1f       .L8002D61C
/* 2E1C4 8002D5C4 00000000 */   nop
/* 2E1C8 8002D5C8 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E1CC 8002D5CC D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E1D0 8002D5D0 4620103E */  c.le.d     $f2, $f0
/* 2E1D4 8002D5D4 00000000 */  nop
/* 2E1D8 8002D5D8 00000000 */  nop
/* 2E1DC 8002D5DC 45020013 */  bc1fl      .L8002D62C
/* 2E1E0 8002D5E0 46220001 */   sub.d     $f0, $f0, $f2
/* 2E1E4 8002D5E4 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E1E8 8002D5E8 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E1EC 8002D5EC D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E1F0 8002D5F0 4622003E */  c.le.d     $f0, $f2
/* 2E1F4 8002D5F4 00000000 */  nop
/* 2E1F8 8002D5F8 45000008 */  bc1f       .L8002D61C
/* 2E1FC 8002D5FC 00000000 */   nop
/* 2E200 8002D600 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E204 8002D604 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E208 8002D608 4620103E */  c.le.d     $f2, $f0
/* 2E20C 8002D60C 00000000 */  nop
/* 2E210 8002D610 00000000 */  nop
/* 2E214 8002D614 4501017D */  bc1t       .L8002DC0C
/* 2E218 8002D618 24020001 */   addiu     $v0, $zero, 0x1
.L8002D61C:
/* 2E21C 8002D61C 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E220 8002D620 D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E224 8002D624 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E228 8002D628 46220001 */  sub.d      $f0, $f0, $f2
.L8002D62C:
/* 2E22C 8002D62C 00000000 */  nop
/* 2E230 8002D630 46204002 */  mul.d      $f0, $f8, $f0
/* 2E234 8002D634 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E238 8002D638 46201100 */  add.d      $f4, $f2, $f0
/* 2E23C 8002D63C 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E240 8002D640 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E244 8002D644 4624003C */  c.lt.d     $f0, $f4
/* 2E248 8002D648 00000000 */  nop
/* 2E24C 8002D64C 45000008 */  bc1f       .L8002D670
/* 2E250 8002D650 00000000 */   nop
/* 2E254 8002D654 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E258 8002D658 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E25C 8002D65C 4620203C */  c.lt.d     $f4, $f0
/* 2E260 8002D660 00000000 */  nop
/* 2E264 8002D664 00000000 */  nop
/* 2E268 8002D668 45030168 */  bc1tl      .L8002DC0C
/* 2E26C 8002D66C 24020001 */   addiu     $v0, $zero, 0x1
.L8002D670:
/* 2E270 8002D670 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E274 8002D674 D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E278 8002D678 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E27C 8002D67C 46220001 */  sub.d      $f0, $f0, $f2
/* 2E280 8002D680 46204002 */  mul.d      $f0, $f8, $f0
/* 2E284 8002D684 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E288 8002D688 46201100 */  add.d      $f4, $f2, $f0
/* 2E28C 8002D68C 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E290 8002D690 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E294 8002D694 4624003C */  c.lt.d     $f0, $f4
/* 2E298 8002D698 00000000 */  nop
/* 2E29C 8002D69C 00000000 */  nop
/* 2E2A0 8002D6A0 4500015A */  bc1f       .L8002DC0C
/* 2E2A4 8002D6A4 00001021 */   addu      $v0, $zero, $zero
/* 2E2A8 8002D6A8 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E2AC 8002D6AC D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E2B0 8002D6B0 4620203C */  c.lt.d     $f4, $f0
/* 2E2B4 8002D6B4 0800B6FE */  j          .L8002DBF8
/* 2E2B8 8002D6B8 00000000 */   nop
glabel L8002D6BC
/* 2E2BC 8002D6BC 3C01800D */  lui        $at, %hi(D_800D13A8)
/* 2E2C0 8002D6C0 D42413A8 */  ldc1       $f4, %lo(D_800D13A8)($at)
/* 2E2C4 8002D6C4 3C01800D */  lui        $at, %hi(D_800D13B0)
/* 2E2C8 8002D6C8 D42013B0 */  ldc1       $f0, %lo(D_800D13B0)($at)
/* 2E2CC 8002D6CC 3C01800D */  lui        $at, %hi(D_800D13B8)
/* 2E2D0 8002D6D0 D42613B8 */  ldc1       $f6, %lo(D_800D13B8)($at)
/* 2E2D4 8002D6D4 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2E2D8 8002D6D8 D422B5B0 */  ldc1       $f2, %lo(D_802AB5B0)($at)
/* 2E2DC 8002D6DC 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E2E0 8002D6E0 AC20B500 */  sw         $zero, %lo(D_802AB500)($at)
/* 2E2E4 8002D6E4 3C01802B */  lui        $at, %hi(D_802AB504)
/* 2E2E8 8002D6E8 AC20B504 */  sw         $zero, %lo(D_802AB504)($at)
/* 2E2EC 8002D6EC 4622003E */  c.le.d     $f0, $f2
/* 2E2F0 8002D6F0 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E2F4 8002D6F4 F424B4F8 */  sdc1       $f4, %lo(D_802AB4F8)($at)
/* 2E2F8 8002D6F8 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E2FC 8002D6FC F420B4F0 */  sdc1       $f0, %lo(D_802AB4F0)($at)
/* 2E300 8002D700 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E304 8002D704 F426B508 */  sdc1       $f6, %lo(D_802AB508)($at)
/* 2E308 8002D708 45000013 */  bc1f       .L8002D758
/* 2E30C 8002D70C 00000000 */   nop
/* 2E310 8002D710 4624103E */  c.le.d     $f2, $f4
/* 2E314 8002D714 00000000 */  nop
/* 2E318 8002D718 4500000F */  bc1f       .L8002D758
/* 2E31C 8002D71C 00000000 */   nop
/* 2E320 8002D720 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2E324 8002D724 D422B5C0 */  ldc1       $f2, %lo(D_802AB5C0)($at)
/* 2E328 8002D728 44800000 */  mtc1       $zero, $f0
/* 2E32C 8002D72C 44800800 */  mtc1       $zero, $f1
/* 2E330 8002D730 00000000 */  nop
/* 2E334 8002D734 4622003E */  c.le.d     $f0, $f2
/* 2E338 8002D738 00000000 */  nop
/* 2E33C 8002D73C 45000006 */  bc1f       .L8002D758
/* 2E340 8002D740 00000000 */   nop
/* 2E344 8002D744 4626103E */  c.le.d     $f2, $f6
/* 2E348 8002D748 00000000 */  nop
/* 2E34C 8002D74C 00000000 */  nop
/* 2E350 8002D750 4501012E */  bc1t       .L8002DC0C
/* 2E354 8002D754 24020001 */   addiu     $v0, $zero, 0x1
.L8002D758:
/* 2E358 8002D758 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E35C 8002D75C 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E360 8002D760 D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E364 8002D764 4622003E */  c.le.d     $f0, $f2
/* 2E368 8002D768 00000000 */  nop
/* 2E36C 8002D76C 45000016 */  bc1f       .L8002D7C8
/* 2E370 8002D770 00000000 */   nop
/* 2E374 8002D774 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E378 8002D778 D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E37C 8002D77C 4620103E */  c.le.d     $f2, $f0
/* 2E380 8002D780 00000000 */  nop
/* 2E384 8002D784 00000000 */  nop
/* 2E388 8002D788 45020013 */  bc1fl      .L8002D7D8
/* 2E38C 8002D78C 46220001 */   sub.d     $f0, $f0, $f2
/* 2E390 8002D790 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E394 8002D794 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E398 8002D798 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E39C 8002D79C 4622003E */  c.le.d     $f0, $f2
/* 2E3A0 8002D7A0 00000000 */  nop
/* 2E3A4 8002D7A4 45000008 */  bc1f       .L8002D7C8
/* 2E3A8 8002D7A8 00000000 */   nop
/* 2E3AC 8002D7AC 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E3B0 8002D7B0 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E3B4 8002D7B4 4620103E */  c.le.d     $f2, $f0
/* 2E3B8 8002D7B8 00000000 */  nop
/* 2E3BC 8002D7BC 00000000 */  nop
/* 2E3C0 8002D7C0 45010112 */  bc1t       .L8002DC0C
/* 2E3C4 8002D7C4 24020001 */   addiu     $v0, $zero, 0x1
.L8002D7C8:
/* 2E3C8 8002D7C8 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E3CC 8002D7CC D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E3D0 8002D7D0 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E3D4 8002D7D4 46220001 */  sub.d      $f0, $f0, $f2
.L8002D7D8:
/* 2E3D8 8002D7D8 00000000 */  nop
/* 2E3DC 8002D7DC 46204002 */  mul.d      $f0, $f8, $f0
/* 2E3E0 8002D7E0 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E3E4 8002D7E4 46201100 */  add.d      $f4, $f2, $f0
/* 2E3E8 8002D7E8 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E3EC 8002D7EC D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E3F0 8002D7F0 4624003C */  c.lt.d     $f0, $f4
/* 2E3F4 8002D7F4 00000000 */  nop
/* 2E3F8 8002D7F8 45000008 */  bc1f       .L8002D81C
/* 2E3FC 8002D7FC 00000000 */   nop
/* 2E400 8002D800 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E404 8002D804 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E408 8002D808 4620203C */  c.lt.d     $f4, $f0
/* 2E40C 8002D80C 00000000 */  nop
/* 2E410 8002D810 00000000 */  nop
/* 2E414 8002D814 450300FD */  bc1tl      .L8002DC0C
/* 2E418 8002D818 24020001 */   addiu     $v0, $zero, 0x1
.L8002D81C:
/* 2E41C 8002D81C 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E420 8002D820 D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E424 8002D824 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E428 8002D828 46220001 */  sub.d      $f0, $f0, $f2
/* 2E42C 8002D82C 46204002 */  mul.d      $f0, $f8, $f0
/* 2E430 8002D830 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E434 8002D834 46201100 */  add.d      $f4, $f2, $f0
/* 2E438 8002D838 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E43C 8002D83C D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E440 8002D840 4624003C */  c.lt.d     $f0, $f4
/* 2E444 8002D844 00000000 */  nop
/* 2E448 8002D848 00000000 */  nop
/* 2E44C 8002D84C 450000EF */  bc1f       .L8002DC0C
/* 2E450 8002D850 00001021 */   addu      $v0, $zero, $zero
/* 2E454 8002D854 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E458 8002D858 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E45C 8002D85C 4620203C */  c.lt.d     $f4, $f0
/* 2E460 8002D860 0800B6FE */  j          .L8002DBF8
/* 2E464 8002D864 00000000 */   nop
glabel L8002D868
/* 2E468 8002D868 3C01800D */  lui        $at, %hi(D_800D13C0)
/* 2E46C 8002D86C D42013C0 */  ldc1       $f0, %lo(D_800D13C0)($at)
/* 2E470 8002D870 3C01800D */  lui        $at, %hi(D_800D13C8)
/* 2E474 8002D874 D42413C8 */  ldc1       $f4, %lo(D_800D13C8)($at)
/* 2E478 8002D878 3C01800D */  lui        $at, %hi(D_800D13D0)
/* 2E47C 8002D87C D42613D0 */  ldc1       $f6, %lo(D_800D13D0)($at)
/* 2E480 8002D880 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2E484 8002D884 D422B5B0 */  ldc1       $f2, %lo(D_802AB5B0)($at)
/* 2E488 8002D888 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E48C 8002D88C AC20B500 */  sw         $zero, %lo(D_802AB500)($at)
/* 2E490 8002D890 3C01802B */  lui        $at, %hi(D_802AB504)
/* 2E494 8002D894 AC20B504 */  sw         $zero, %lo(D_802AB504)($at)
/* 2E498 8002D898 4622003E */  c.le.d     $f0, $f2
/* 2E49C 8002D89C 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E4A0 8002D8A0 F420B4F0 */  sdc1       $f0, %lo(D_802AB4F0)($at)
/* 2E4A4 8002D8A4 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E4A8 8002D8A8 F424B4F8 */  sdc1       $f4, %lo(D_802AB4F8)($at)
/* 2E4AC 8002D8AC 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E4B0 8002D8B0 F426B508 */  sdc1       $f6, %lo(D_802AB508)($at)
/* 2E4B4 8002D8B4 45000013 */  bc1f       .L8002D904
/* 2E4B8 8002D8B8 00000000 */   nop
/* 2E4BC 8002D8BC 4624103E */  c.le.d     $f2, $f4
/* 2E4C0 8002D8C0 00000000 */  nop
/* 2E4C4 8002D8C4 4500000F */  bc1f       .L8002D904
/* 2E4C8 8002D8C8 00000000 */   nop
/* 2E4CC 8002D8CC 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2E4D0 8002D8D0 D422B5C0 */  ldc1       $f2, %lo(D_802AB5C0)($at)
/* 2E4D4 8002D8D4 44800000 */  mtc1       $zero, $f0
/* 2E4D8 8002D8D8 44800800 */  mtc1       $zero, $f1
/* 2E4DC 8002D8DC 00000000 */  nop
/* 2E4E0 8002D8E0 4622003E */  c.le.d     $f0, $f2
/* 2E4E4 8002D8E4 00000000 */  nop
/* 2E4E8 8002D8E8 45000006 */  bc1f       .L8002D904
/* 2E4EC 8002D8EC 00000000 */   nop
/* 2E4F0 8002D8F0 4626103E */  c.le.d     $f2, $f6
/* 2E4F4 8002D8F4 00000000 */  nop
/* 2E4F8 8002D8F8 00000000 */  nop
/* 2E4FC 8002D8FC 450100C3 */  bc1t       .L8002DC0C
/* 2E500 8002D900 24020001 */   addiu     $v0, $zero, 0x1
.L8002D904:
/* 2E504 8002D904 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E508 8002D908 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E50C 8002D90C D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E510 8002D910 4622003E */  c.le.d     $f0, $f2
/* 2E514 8002D914 00000000 */  nop
/* 2E518 8002D918 45000016 */  bc1f       .L8002D974
/* 2E51C 8002D91C 00000000 */   nop
/* 2E520 8002D920 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E524 8002D924 D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E528 8002D928 4620103E */  c.le.d     $f2, $f0
/* 2E52C 8002D92C 00000000 */  nop
/* 2E530 8002D930 00000000 */  nop
/* 2E534 8002D934 45020013 */  bc1fl      .L8002D984
/* 2E538 8002D938 46220001 */   sub.d     $f0, $f0, $f2
/* 2E53C 8002D93C D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E540 8002D940 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E544 8002D944 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E548 8002D948 4622003E */  c.le.d     $f0, $f2
/* 2E54C 8002D94C 00000000 */  nop
/* 2E550 8002D950 45000008 */  bc1f       .L8002D974
/* 2E554 8002D954 00000000 */   nop
/* 2E558 8002D958 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E55C 8002D95C D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E560 8002D960 4620103E */  c.le.d     $f2, $f0
/* 2E564 8002D964 00000000 */  nop
/* 2E568 8002D968 00000000 */  nop
/* 2E56C 8002D96C 450100A7 */  bc1t       .L8002DC0C
/* 2E570 8002D970 24020001 */   addiu     $v0, $zero, 0x1
.L8002D974:
/* 2E574 8002D974 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E578 8002D978 D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E57C 8002D97C D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E580 8002D980 46220001 */  sub.d      $f0, $f0, $f2
.L8002D984:
/* 2E584 8002D984 00000000 */  nop
/* 2E588 8002D988 46204002 */  mul.d      $f0, $f8, $f0
/* 2E58C 8002D98C D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E590 8002D990 46201100 */  add.d      $f4, $f2, $f0
/* 2E594 8002D994 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E598 8002D998 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E59C 8002D99C 4624003C */  c.lt.d     $f0, $f4
/* 2E5A0 8002D9A0 00000000 */  nop
/* 2E5A4 8002D9A4 45000008 */  bc1f       .L8002D9C8
/* 2E5A8 8002D9A8 00000000 */   nop
/* 2E5AC 8002D9AC 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E5B0 8002D9B0 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E5B4 8002D9B4 4620203C */  c.lt.d     $f4, $f0
/* 2E5B8 8002D9B8 00000000 */  nop
/* 2E5BC 8002D9BC 00000000 */  nop
/* 2E5C0 8002D9C0 45030092 */  bc1tl      .L8002DC0C
/* 2E5C4 8002D9C4 24020001 */   addiu     $v0, $zero, 0x1
.L8002D9C8:
/* 2E5C8 8002D9C8 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E5CC 8002D9CC D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E5D0 8002D9D0 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E5D4 8002D9D4 46220001 */  sub.d      $f0, $f0, $f2
/* 2E5D8 8002D9D8 46204002 */  mul.d      $f0, $f8, $f0
/* 2E5DC 8002D9DC D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E5E0 8002D9E0 46201100 */  add.d      $f4, $f2, $f0
/* 2E5E4 8002D9E4 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E5E8 8002D9E8 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E5EC 8002D9EC 4624003C */  c.lt.d     $f0, $f4
/* 2E5F0 8002D9F0 00000000 */  nop
/* 2E5F4 8002D9F4 00000000 */  nop
/* 2E5F8 8002D9F8 45000084 */  bc1f       .L8002DC0C
/* 2E5FC 8002D9FC 00001021 */   addu      $v0, $zero, $zero
/* 2E600 8002DA00 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E604 8002DA04 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E608 8002DA08 4620203C */  c.lt.d     $f4, $f0
/* 2E60C 8002DA0C 0800B6FE */  j          .L8002DBF8
/* 2E610 8002DA10 00000000 */   nop
glabel L8002DA14
/* 2E614 8002DA14 3C01800D */  lui        $at, %hi(D_800D13D8)
/* 2E618 8002DA18 D42013D8 */  ldc1       $f0, %lo(D_800D13D8)($at)
/* 2E61C 8002DA1C 3C01800D */  lui        $at, %hi(D_800D13E0)
/* 2E620 8002DA20 D42413E0 */  ldc1       $f4, %lo(D_800D13E0)($at)
/* 2E624 8002DA24 3C01800D */  lui        $at, %hi(D_800D13E8)
/* 2E628 8002DA28 D42613E8 */  ldc1       $f6, %lo(D_800D13E8)($at)
/* 2E62C 8002DA2C 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2E630 8002DA30 D422B5B0 */  ldc1       $f2, %lo(D_802AB5B0)($at)
/* 2E634 8002DA34 3C01800D */  lui        $at, %hi(D_800D13F0)
/* 2E638 8002DA38 D42A13F0 */  ldc1       $f10, %lo(D_800D13F0)($at)
/* 2E63C 8002DA3C 4622003E */  c.le.d     $f0, $f2
/* 2E640 8002DA40 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E644 8002DA44 F420B4F0 */  sdc1       $f0, %lo(D_802AB4F0)($at)
/* 2E648 8002DA48 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E64C 8002DA4C F424B4F8 */  sdc1       $f4, %lo(D_802AB4F8)($at)
/* 2E650 8002DA50 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E654 8002DA54 F426B500 */  sdc1       $f6, %lo(D_802AB500)($at)
/* 2E658 8002DA58 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E65C 8002DA5C 0800B6AC */  j          .L8002DAB0
/* 2E660 8002DA60 F42AB508 */   sdc1      $f10, %lo(D_802AB508)($at)
glabel L8002DA64
/* 2E664 8002DA64 3C01800D */  lui        $at, %hi(D_800D13F8)
/* 2E668 8002DA68 D42013F8 */  ldc1       $f0, %lo(D_800D13F8)($at)
/* 2E66C 8002DA6C 3C01800D */  lui        $at, %hi(D_800D1400)
/* 2E670 8002DA70 D4241400 */  ldc1       $f4, %lo(D_800D1400)($at)
/* 2E674 8002DA74 3C01800D */  lui        $at, %hi(D_800D1408)
/* 2E678 8002DA78 D42A1408 */  ldc1       $f10, %lo(D_800D1408)($at)
/* 2E67C 8002DA7C 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2E680 8002DA80 D422B5B0 */  ldc1       $f2, %lo(D_802AB5B0)($at)
/* 2E684 8002DA84 3C01800D */  lui        $at, %hi(D_800D1410)
/* 2E688 8002DA88 D4261410 */  ldc1       $f6, %lo(D_800D1410)($at)
/* 2E68C 8002DA8C 4622003E */  c.le.d     $f0, $f2
/* 2E690 8002DA90 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E694 8002DA94 F420B4F0 */  sdc1       $f0, %lo(D_802AB4F0)($at)
/* 2E698 8002DA98 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E69C 8002DA9C F424B4F8 */  sdc1       $f4, %lo(D_802AB4F8)($at)
/* 2E6A0 8002DAA0 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E6A4 8002DAA4 F42AB508 */  sdc1       $f10, %lo(D_802AB508)($at)
/* 2E6A8 8002DAA8 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E6AC 8002DAAC F426B500 */  sdc1       $f6, %lo(D_802AB500)($at)
.L8002DAB0:
/* 2E6B0 8002DAB0 45000010 */  bc1f       .L8002DAF4
/* 2E6B4 8002DAB4 00000000 */   nop
/* 2E6B8 8002DAB8 4624103E */  c.le.d     $f2, $f4
/* 2E6BC 8002DABC 00000000 */  nop
/* 2E6C0 8002DAC0 4500000C */  bc1f       .L8002DAF4
/* 2E6C4 8002DAC4 00000000 */   nop
/* 2E6C8 8002DAC8 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2E6CC 8002DACC D420B5C0 */  ldc1       $f0, %lo(D_802AB5C0)($at)
/* 2E6D0 8002DAD0 4620303E */  c.le.d     $f6, $f0
/* 2E6D4 8002DAD4 00000000 */  nop
/* 2E6D8 8002DAD8 45000006 */  bc1f       .L8002DAF4
/* 2E6DC 8002DADC 00000000 */   nop
/* 2E6E0 8002DAE0 462A003E */  c.le.d     $f0, $f10
/* 2E6E4 8002DAE4 00000000 */  nop
/* 2E6E8 8002DAE8 00000000 */  nop
/* 2E6EC 8002DAEC 45010047 */  bc1t       .L8002DC0C
/* 2E6F0 8002DAF0 24020001 */   addiu     $v0, $zero, 0x1
.L8002DAF4:
/* 2E6F4 8002DAF4 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E6F8 8002DAF8 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E6FC 8002DAFC D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E700 8002DB00 4622003E */  c.le.d     $f0, $f2
/* 2E704 8002DB04 00000000 */  nop
/* 2E708 8002DB08 45000015 */  bc1f       .L8002DB60
/* 2E70C 8002DB0C 00000000 */   nop
/* 2E710 8002DB10 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E714 8002DB14 D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E718 8002DB18 4620103E */  c.le.d     $f2, $f0
/* 2E71C 8002DB1C 00000000 */  nop
/* 2E720 8002DB20 4500000F */  bc1f       .L8002DB60
/* 2E724 8002DB24 00000000 */   nop
/* 2E728 8002DB28 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E72C 8002DB2C 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E730 8002DB30 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E734 8002DB34 4622003E */  c.le.d     $f0, $f2
/* 2E738 8002DB38 00000000 */  nop
/* 2E73C 8002DB3C 45000008 */  bc1f       .L8002DB60
/* 2E740 8002DB40 00000000 */   nop
/* 2E744 8002DB44 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E748 8002DB48 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E74C 8002DB4C 4620103E */  c.le.d     $f2, $f0
/* 2E750 8002DB50 00000000 */  nop
/* 2E754 8002DB54 00000000 */  nop
/* 2E758 8002DB58 4501002C */  bc1t       .L8002DC0C
/* 2E75C 8002DB5C 24020001 */   addiu     $v0, $zero, 0x1
.L8002DB60:
/* 2E760 8002DB60 3C01802B */  lui        $at, %hi(D_802AB508)
/* 2E764 8002DB64 D420B508 */  ldc1       $f0, %lo(D_802AB508)($at)
/* 2E768 8002DB68 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E76C 8002DB6C 46220001 */  sub.d      $f0, $f0, $f2
/* 2E770 8002DB70 46280003 */  div.d      $f0, $f0, $f8
/* 2E774 8002DB74 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E778 8002DB78 46201100 */  add.d      $f4, $f2, $f0
/* 2E77C 8002DB7C 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E780 8002DB80 D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E784 8002DB84 4624003E */  c.le.d     $f0, $f4
/* 2E788 8002DB88 00000000 */  nop
/* 2E78C 8002DB8C 45000008 */  bc1f       .L8002DBB0
/* 2E790 8002DB90 00000000 */   nop
/* 2E794 8002DB94 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E798 8002DB98 D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E79C 8002DB9C 4620203E */  c.le.d     $f4, $f0
/* 2E7A0 8002DBA0 00000000 */  nop
/* 2E7A4 8002DBA4 00000000 */  nop
/* 2E7A8 8002DBA8 45030018 */  bc1tl      .L8002DC0C
/* 2E7AC 8002DBAC 24020001 */   addiu     $v0, $zero, 0x1
.L8002DBB0:
/* 2E7B0 8002DBB0 3C01802B */  lui        $at, %hi(D_802AB500)
/* 2E7B4 8002DBB4 D420B500 */  ldc1       $f0, %lo(D_802AB500)($at)
/* 2E7B8 8002DBB8 D4820018 */  ldc1       $f2, 0x18($a0)
/* 2E7BC 8002DBBC 46220001 */  sub.d      $f0, $f0, $f2
/* 2E7C0 8002DBC0 46280003 */  div.d      $f0, $f0, $f8
/* 2E7C4 8002DBC4 D4820008 */  ldc1       $f2, 0x8($a0)
/* 2E7C8 8002DBC8 46201100 */  add.d      $f4, $f2, $f0
/* 2E7CC 8002DBCC 3C01802B */  lui        $at, %hi(D_802AB4F0)
/* 2E7D0 8002DBD0 D420B4F0 */  ldc1       $f0, %lo(D_802AB4F0)($at)
/* 2E7D4 8002DBD4 4624003E */  c.le.d     $f0, $f4
/* 2E7D8 8002DBD8 00000000 */  nop
/* 2E7DC 8002DBDC 00000000 */  nop
/* 2E7E0 8002DBE0 4500000A */  bc1f       .L8002DC0C
/* 2E7E4 8002DBE4 00001021 */   addu      $v0, $zero, $zero
/* 2E7E8 8002DBE8 3C01802B */  lui        $at, %hi(D_802AB4F8)
/* 2E7EC 8002DBEC D420B4F8 */  ldc1       $f0, %lo(D_802AB4F8)($at)
/* 2E7F0 8002DBF0 4620203E */  c.le.d     $f4, $f0
/* 2E7F4 8002DBF4 00000000 */  nop
.L8002DBF8:
/* 2E7F8 8002DBF8 45000004 */  bc1f       .L8002DC0C
/* 2E7FC 8002DBFC 00000000 */   nop
/* 2E800 8002DC00 0800B703 */  j          .L8002DC0C
/* 2E804 8002DC04 24020001 */   addiu     $v0, $zero, 0x1
.L8002DC08:
/* 2E808 8002DC08 00001021 */  addu       $v0, $zero, $zero
.L8002DC0C:
/* 2E80C 8002DC0C 03E00008 */  jr         $ra
/* 2E810 8002DC10 00000000 */   nop

glabel func_8002DC14
/* 2E814 8002DC14 3C01802B */  lui        $at, %hi(D_802AB5B8)
/* 2E818 8002DC18 D428B5B8 */  ldc1       $f8, %lo(D_802AB5B8)($at)
/* 2E81C 8002DC1C 3C01802B */  lui        $at, %hi(D_802AB5B0)
/* 2E820 8002DC20 D426B5B0 */  ldc1       $f6, %lo(D_802AB5B0)($at)
/* 2E824 8002DC24 46284282 */  mul.d      $f10, $f8, $f8
/* 2E828 8002DC28 D4B00000 */  ldc1       $f16, 0x0($a1)
/* 2E82C 8002DC2C 46303181 */  sub.d      $f6, $f6, $f16
/* 2E830 8002DC30 3C01802B */  lui        $at, %hi(D_802AB5C0)
/* 2E834 8002DC34 D424B5C0 */  ldc1       $f4, %lo(D_802AB5C0)($at)
/* 2E838 8002DC38 46263002 */  mul.d      $f0, $f6, $f6
/* 2E83C 8002DC3C D4AE0008 */  ldc1       $f14, 0x8($a1)
/* 2E840 8002DC40 462E2101 */  sub.d      $f4, $f4, $f14
/* 2E844 8002DC44 3C01802B */  lui        $at, %hi(D_802AB518)
/* 2E848 8002DC48 D42CB518 */  ldc1       $f12, %lo(D_802AB518)($at)
/* 2E84C 8002DC4C 46242082 */  mul.d      $f2, $f4, $f4
/* 2E850 8002DC50 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2E854 8002DC54 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 2E858 8002DC58 4480B000 */  mtc1       $zero, $f22
/* 2E85C 8002DC5C 4480B800 */  mtc1       $zero, $f23
/* 2E860 8002DC60 462A0000 */  add.d      $f0, $f0, $f10
/* 2E864 8002DC64 AFB3001C */  sw         $s3, 0x1C($sp)
/* 2E868 8002DC68 3C13802B */  lui        $s3, %hi(D_802AB550)
/* 2E86C 8002DC6C 2673B550 */  addiu      $s3, $s3, %lo(D_802AB550)
/* 2E870 8002DC70 46220000 */  add.d      $f0, $f0, $f2
/* 2E874 8002DC74 AFBF0020 */  sw         $ra, 0x20($sp)
/* 2E878 8002DC78 AFB20018 */  sw         $s2, 0x18($sp)
/* 2E87C 8002DC7C AFB10014 */  sw         $s1, 0x14($sp)
/* 2E880 8002DC80 462C0281 */  sub.d      $f10, $f0, $f12
/* 2E884 8002DC84 AFB00010 */  sw         $s0, 0x10($sp)
/* 2E888 8002DC88 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 2E88C 8002DC8C F6680008 */  sdc1       $f8, 0x8($s3)
/* 2E890 8002DC90 4636503C */  c.lt.d     $f10, $f22
/* 2E894 8002DC94 F6660000 */  sdc1       $f6, 0x0($s3)
/* 2E898 8002DC98 F6640010 */  sdc1       $f4, 0x10($s3)
/* 2E89C 8002DC9C 45010066 */  bc1t       .L8002DE38
/* 2E8A0 8002DCA0 00801021 */   addu      $v0, $a0, $zero
/* 2E8A4 8002DCA4 D4440010 */  ldc1       $f4, 0x10($v0)
/* 2E8A8 8002DCA8 46242282 */  mul.d      $f10, $f4, $f4
/* 2E8AC 8002DCAC D4480008 */  ldc1       $f8, 0x8($v0)
/* 2E8B0 8002DCB0 46304201 */  sub.d      $f8, $f8, $f16
/* 2E8B4 8002DCB4 46284002 */  mul.d      $f0, $f8, $f8
/* 2E8B8 8002DCB8 D4420018 */  ldc1       $f2, 0x18($v0)
/* 2E8BC 8002DCBC 462E1081 */  sub.d      $f2, $f2, $f14
/* 2E8C0 8002DCC0 46221182 */  mul.d      $f6, $f2, $f2
/* 2E8C4 8002DCC4 462A0000 */  add.d      $f0, $f0, $f10
/* 2E8C8 8002DCC8 46260000 */  add.d      $f0, $f0, $f6
/* 2E8CC 8002DCCC 462C0281 */  sub.d      $f10, $f0, $f12
/* 2E8D0 8002DCD0 F6640008 */  sdc1       $f4, 0x8($s3)
/* 2E8D4 8002DCD4 4636503C */  c.lt.d     $f10, $f22
/* 2E8D8 8002DCD8 F6680000 */  sdc1       $f8, 0x0($s3)
/* 2E8DC 8002DCDC F6620010 */  sdc1       $f2, 0x10($s3)
/* 2E8E0 8002DCE0 45030056 */  bc1tl      .L8002DE3C
/* 2E8E4 8002DCE4 24020001 */   addiu     $v0, $zero, 0x1
/* 2E8E8 8002DCE8 D4400038 */  ldc1       $f0, 0x38($v0)
/* 2E8EC 8002DCEC D4460020 */  ldc1       $f6, 0x20($v0)
/* 2E8F0 8002DCF0 46260182 */  mul.d      $f6, $f0, $f6
/* 2E8F4 8002DCF4 D4440028 */  ldc1       $f4, 0x28($v0)
/* 2E8F8 8002DCF8 46240102 */  mul.d      $f4, $f0, $f4
/* 2E8FC 8002DCFC 02602021 */  addu       $a0, $s3, $zero
/* 2E900 8002DD00 D4420030 */  ldc1       $f2, 0x30($v0)
/* 2E904 8002DD04 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 2E908 8002DD08 D4286A00 */  ldc1       $f8, %lo(D_800C6A00)($at)
/* 2E90C 8002DD0C 46220002 */  mul.d      $f0, $f0, $f2
/* 2E910 8002DD10 3C11802B */  lui        $s1, %hi(D_802AB580)
/* 2E914 8002DD14 2631B580 */  addiu      $s1, $s1, %lo(D_802AB580)
/* 2E918 8002DD18 3C10802B */  lui        $s0, %hi(D_802AB568)
/* 2E91C 8002DD1C 2610B568 */  addiu      $s0, $s0, %lo(D_802AB568)
/* 2E920 8002DD20 F6360000 */  sdc1       $f22, 0x0($s1)
/* 2E924 8002DD24 3C01802B */  lui        $at, %hi(D_802AB590)
/* 2E928 8002DD28 F436B590 */  sdc1       $f22, %lo(D_802AB590)($at)
/* 2E92C 8002DD2C 3C01802B */  lui        $at, %hi(D_802AB588)
/* 2E930 8002DD30 F428B588 */  sdc1       $f8, %lo(D_802AB588)($at)
/* 2E934 8002DD34 F6060000 */  sdc1       $f6, 0x0($s0)
/* 2E938 8002DD38 3C01802B */  lui        $at, %hi(D_802AB570)
/* 2E93C 8002DD3C F424B570 */  sdc1       $f4, %lo(D_802AB570)($at)
/* 2E940 8002DD40 3C01802B */  lui        $at, %hi(D_802AB578)
/* 2E944 8002DD44 F420B578 */  sdc1       $f0, %lo(D_802AB578)($at)
/* 2E948 8002DD48 0C022C70 */  jal        func_8008B1C0
/* 2E94C 8002DD4C 02602821 */   addu      $a1, $s3, $zero
/* 2E950 8002DD50 3C01802B */  lui        $at, %hi(D_802AB518)
/* 2E954 8002DD54 D422B518 */  ldc1       $f2, %lo(D_802AB518)($at)
/* 2E958 8002DD58 46220001 */  sub.d      $f0, $f0, $f2
/* 2E95C 8002DD5C 02002021 */  addu       $a0, $s0, $zero
/* 2E960 8002DD60 3C12802B */  lui        $s2, %hi(D_802AB528)
/* 2E964 8002DD64 2652B528 */  addiu      $s2, $s2, %lo(D_802AB528)
/* 2E968 8002DD68 F6400000 */  sdc1       $f0, 0x0($s2)
/* 2E96C 8002DD6C 0C022C70 */  jal        func_8008B1C0
/* 2E970 8002DD70 02602821 */   addu      $a1, $s3, $zero
/* 2E974 8002DD74 46200000 */  add.d      $f0, $f0, $f0
/* 2E978 8002DD78 02002021 */  addu       $a0, $s0, $zero
/* 2E97C 8002DD7C 3C01802B */  lui        $at, %hi(D_802AB530)
/* 2E980 8002DD80 F420B530 */  sdc1       $f0, %lo(D_802AB530)($at)
/* 2E984 8002DD84 0C022C70 */  jal        func_8008B1C0
/* 2E988 8002DD88 02002821 */   addu      $a1, $s0, $zero
/* 2E98C 8002DD8C 02202021 */  addu       $a0, $s1, $zero
/* 2E990 8002DD90 02602821 */  addu       $a1, $s3, $zero
/* 2E994 8002DD94 0C022C70 */  jal        func_8008B1C0
/* 2E998 8002DD98 46200506 */   mov.d     $f20, $f0
/* 2E99C 8002DD9C 4620A500 */  add.d      $f20, $f20, $f0
/* 2E9A0 8002DDA0 02202021 */  addu       $a0, $s1, $zero
/* 2E9A4 8002DDA4 3C01802B */  lui        $at, %hi(D_802AB538)
/* 2E9A8 8002DDA8 F434B538 */  sdc1       $f20, %lo(D_802AB538)($at)
/* 2E9AC 8002DDAC 0C022C70 */  jal        func_8008B1C0
/* 2E9B0 8002DDB0 02002821 */   addu      $a1, $s0, $zero
/* 2E9B4 8002DDB4 02202021 */  addu       $a0, $s1, $zero
/* 2E9B8 8002DDB8 3C01802B */  lui        $at, %hi(D_802AB540)
/* 2E9BC 8002DDBC F420B540 */  sdc1       $f0, %lo(D_802AB540)($at)
/* 2E9C0 8002DDC0 0C022C70 */  jal        func_8008B1C0
/* 2E9C4 8002DDC4 00802821 */   addu      $a1, $a0, $zero
/* 2E9C8 8002DDC8 3C01800D */  lui        $at, %hi(D_800D1418)
/* 2E9CC 8002DDCC D4221418 */  ldc1       $f2, %lo(D_800D1418)($at)
/* 2E9D0 8002DDD0 46220002 */  mul.d      $f0, $f0, $f2
/* 2E9D4 8002DDD4 3C06802B */  lui        $a2, %hi(D_802AB520)
/* 2E9D8 8002DDD8 8CC6B520 */  lw         $a2, %lo(D_802AB520)($a2)
/* 2E9DC 8002DDDC 3C07802B */  lui        $a3, %hi(D_802AB524)
/* 2E9E0 8002DDE0 8CE7B524 */  lw         $a3, %lo(D_802AB524)($a3)
/* 2E9E4 8002DDE4 3C01802B */  lui        $at, %hi(D_802AB548)
/* 2E9E8 8002DDE8 F420B548 */  sdc1       $f0, %lo(D_802AB548)($at)
/* 2E9EC 8002DDEC 0C00BD4A */  jal        func_8002F528
/* 2E9F0 8002DDF0 02402021 */   addu      $a0, $s2, $zero
/* 2E9F4 8002DDF4 0C00BF66 */  jal        func_8002FD98
/* 2E9F8 8002DDF8 00000000 */   nop
/* 2E9FC 8002DDFC 46200286 */  mov.d      $f10, $f0
/* 2EA00 8002DE00 4636503C */  c.lt.d     $f10, $f22
/* 2EA04 8002DE04 00000000 */  nop
/* 2EA08 8002DE08 00000000 */  nop
/* 2EA0C 8002DE0C 4501000B */  bc1t       .L8002DE3C
/* 2EA10 8002DE10 00001021 */   addu      $v0, $zero, $zero
/* 2EA14 8002DE14 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2EA18 8002DE18 D420B520 */  ldc1       $f0, %lo(D_802AB520)($at)
/* 2EA1C 8002DE1C 462A003C */  c.lt.d     $f0, $f10
/* 2EA20 8002DE20 00000000 */  nop
/* 2EA24 8002DE24 00000000 */  nop
/* 2EA28 8002DE28 45020004 */  bc1fl      .L8002DE3C
/* 2EA2C 8002DE2C 24020001 */   addiu     $v0, $zero, 0x1
/* 2EA30 8002DE30 0800B78F */  j          .L8002DE3C
/* 2EA34 8002DE34 00000000 */   nop
.L8002DE38:
/* 2EA38 8002DE38 24020001 */  addiu      $v0, $zero, 0x1
.L8002DE3C:
/* 2EA3C 8002DE3C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2EA40 8002DE40 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2EA44 8002DE44 8FB20018 */  lw         $s2, 0x18($sp)
/* 2EA48 8002DE48 8FB10014 */  lw         $s1, 0x14($sp)
/* 2EA4C 8002DE4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 2EA50 8002DE50 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 2EA54 8002DE54 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 2EA58 8002DE58 03E00008 */  jr         $ra
/* 2EA5C 8002DE5C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8002DE60
/* 2EA60 8002DE60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2EA64 8002DE64 AFB20018 */  sw         $s2, 0x18($sp)
/* 2EA68 8002DE68 00809021 */  addu       $s2, $a0, $zero
/* 2EA6C 8002DE6C AFB00010 */  sw         $s0, 0x10($sp)
/* 2EA70 8002DE70 00008021 */  addu       $s0, $zero, $zero
/* 2EA74 8002DE74 AFB3001C */  sw         $s3, 0x1C($sp)
/* 2EA78 8002DE78 3C13802B */  lui        $s3, %hi(D_802AB5C8)
/* 2EA7C 8002DE7C 2673B5C8 */  addiu      $s3, $s3, %lo(D_802AB5C8)
/* 2EA80 8002DE80 AFB10014 */  sw         $s1, 0x14($sp)
/* 2EA84 8002DE84 3C11800C */  lui        $s1, %hi(D_800C66E8)
/* 2EA88 8002DE88 263166E8 */  addiu      $s1, $s1, %lo(D_800C66E8)
/* 2EA8C 8002DE8C AFBF0020 */  sw         $ra, 0x20($sp)
/* 2EA90 8002DE90 3C01802B */  lui        $at, %hi(D_802AB5F8)
/* 2EA94 8002DE94 AC20B5F8 */  sw         $zero, %lo(D_802AB5F8)($at)
.L8002DE98:
/* 2EA98 8002DE98 02402021 */  addu       $a0, $s2, $zero
/* 2EA9C 8002DE9C 0C00B4BA */  jal        func_8002D2E8
/* 2EAA0 8002DEA0 02002821 */   addu      $a1, $s0, $zero
/* 2EAA4 8002DEA4 10400009 */  beqz       $v0, .L8002DECC
/* 2EAA8 8002DEA8 02402021 */   addu      $a0, $s2, $zero
/* 2EAAC 8002DEAC 3C02802B */  lui        $v0, %hi(D_802AB5F8)
/* 2EAB0 8002DEB0 8C42B5F8 */  lw         $v0, %lo(D_802AB5F8)($v0)
/* 2EAB4 8002DEB4 24430001 */  addiu      $v1, $v0, 0x1
/* 2EAB8 8002DEB8 00021080 */  sll        $v0, $v0, 2
/* 2EABC 8002DEBC 00531021 */  addu       $v0, $v0, $s3
/* 2EAC0 8002DEC0 3C01802B */  lui        $at, %hi(D_802AB5F8)
/* 2EAC4 8002DEC4 AC23B5F8 */  sw         $v1, %lo(D_802AB5F8)($at)
/* 2EAC8 8002DEC8 AC500000 */  sw         $s0, 0x0($v0)
.L8002DECC:
/* 2EACC 8002DECC 0C00B705 */  jal        func_8002DC14
/* 2EAD0 8002DED0 02202821 */   addu      $a1, $s1, $zero
/* 2EAD4 8002DED4 5040000B */  beql       $v0, $zero, .L8002DF04
/* 2EAD8 8002DED8 26100001 */   addiu     $s0, $s0, 0x1
/* 2EADC 8002DEDC 3C02802B */  lui        $v0, %hi(D_802AB5F8)
/* 2EAE0 8002DEE0 8C42B5F8 */  lw         $v0, %lo(D_802AB5F8)($v0)
/* 2EAE4 8002DEE4 24430001 */  addiu      $v1, $v0, 0x1
/* 2EAE8 8002DEE8 00021080 */  sll        $v0, $v0, 2
/* 2EAEC 8002DEEC 00531021 */  addu       $v0, $v0, $s3
/* 2EAF0 8002DEF0 3C01802B */  lui        $at, %hi(D_802AB5F8)
/* 2EAF4 8002DEF4 AC23B5F8 */  sw         $v1, %lo(D_802AB5F8)($at)
/* 2EAF8 8002DEF8 26030006 */  addiu      $v1, $s0, 0x6
/* 2EAFC 8002DEFC AC430000 */  sw         $v1, 0x0($v0)
/* 2EB00 8002DF00 26100001 */  addiu      $s0, $s0, 0x1
.L8002DF04:
/* 2EB04 8002DF04 2A020006 */  slti       $v0, $s0, 0x6
/* 2EB08 8002DF08 1440FFE3 */  bnez       $v0, .L8002DE98
/* 2EB0C 8002DF0C 26310010 */   addiu     $s1, $s1, 0x10
/* 2EB10 8002DF10 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2EB14 8002DF14 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2EB18 8002DF18 8FB20018 */  lw         $s2, 0x18($sp)
/* 2EB1C 8002DF1C 8FB10014 */  lw         $s1, 0x14($sp)
/* 2EB20 8002DF20 8FB00010 */  lw         $s0, 0x10($sp)
/* 2EB24 8002DF24 03E00008 */  jr         $ra
/* 2EB28 8002DF28 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002DF2C
/* 2EB2C 8002DF2C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2EB30 8002DF30 AFB3001C */  sw         $s3, 0x1C($sp)
/* 2EB34 8002DF34 3C13802B */  lui        $s3, %hi(D_802AB780)
/* 2EB38 8002DF38 8E73B780 */  lw         $s3, %lo(D_802AB780)($s3)
/* 2EB3C 8002DF3C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 2EB40 8002DF40 4480A000 */  mtc1       $zero, $f20
/* 2EB44 8002DF44 4480A800 */  mtc1       $zero, $f21
/* 2EB48 8002DF48 AFB20018 */  sw         $s2, 0x18($sp)
/* 2EB4C 8002DF4C 3C12802B */  lui        $s2, %hi(D_802AB600)
/* 2EB50 8002DF50 2652B600 */  addiu      $s2, $s2, %lo(D_802AB600)
/* 2EB54 8002DF54 AFB40020 */  sw         $s4, 0x20($sp)
/* 2EB58 8002DF58 0000A021 */  addu       $s4, $zero, $zero
/* 2EB5C 8002DF5C AFB10014 */  sw         $s1, 0x14($sp)
/* 2EB60 8002DF60 26510008 */  addiu      $s1, $s2, 0x8
/* 2EB64 8002DF64 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2EB68 8002DF68 AFB00010 */  sw         $s0, 0x10($sp)
/* 2EB6C 8002DF6C 26700030 */  addiu      $s0, $s3, 0x30
.L8002DF70:
/* 2EB70 8002DF70 92630000 */  lbu        $v1, 0x0($s3)
/* 2EB74 8002DF74 30620013 */  andi       $v0, $v1, 0x13
/* 2EB78 8002DF78 10400006 */  beqz       $v0, .L8002DF94
/* 2EB7C 8002DF7C 00031600 */   sll       $v0, $v1, 24
/* 2EB80 8002DF80 F6340008 */  sdc1       $f20, 0x8($s1)
/* 2EB84 8002DF84 F6340000 */  sdc1       $f20, 0x0($s1)
/* 2EB88 8002DF88 F6540000 */  sdc1       $f20, 0x0($s2)
/* 2EB8C 8002DF8C 0800B819 */  j          .L8002E064
/* 2EB90 8002DF90 26940001 */   addiu     $s4, $s4, 0x1
.L8002DF94:
/* 2EB94 8002DF94 00021E03 */  sra        $v1, $v0, 24
/* 2EB98 8002DF98 24020008 */  addiu      $v0, $zero, 0x8
/* 2EB9C 8002DF9C 1462001C */  bne        $v1, $v0, .L8002E010
/* 2EBA0 8002DFA0 24020004 */   addiu     $v0, $zero, 0x4
/* 2EBA4 8002DFA4 D604FFF0 */  ldc1       $f4, -0x10($s0)
/* 2EBA8 8002DFA8 D6000008 */  ldc1       $f0, 0x8($s0)
/* 2EBAC 8002DFAC 46202102 */  mul.d      $f4, $f4, $f0
/* 2EBB0 8002DFB0 D6020028 */  ldc1       $f2, 0x28($s0)
/* 2EBB4 8002DFB4 D6000020 */  ldc1       $f0, 0x20($s0)
/* 2EBB8 8002DFB8 46220002 */  mul.d      $f0, $f0, $f2
/* 2EBBC 8002DFBC 46202101 */  sub.d      $f4, $f4, $f0
/* 2EBC0 8002DFC0 F6440000 */  sdc1       $f4, 0x0($s2)
/* 2EBC4 8002DFC4 D6040000 */  ldc1       $f4, 0x0($s0)
/* 2EBC8 8002DFC8 D6000008 */  ldc1       $f0, 0x8($s0)
/* 2EBCC 8002DFCC 46202102 */  mul.d      $f4, $f4, $f0
/* 2EBD0 8002DFD0 D6020028 */  ldc1       $f2, 0x28($s0)
/* 2EBD4 8002DFD4 D6000010 */  ldc1       $f0, 0x10($s0)
/* 2EBD8 8002DFD8 46220002 */  mul.d      $f0, $f0, $f2
/* 2EBDC 8002DFDC 46202100 */  add.d      $f4, $f4, $f0
/* 2EBE0 8002DFE0 F6240008 */  sdc1       $f4, 0x8($s1)
/* 2EBE4 8002DFE4 0C022D13 */  jal        func_8008B44C
/* 2EBE8 8002DFE8 02402021 */   addu      $a0, $s2, $zero
/* 2EBEC 8002DFEC 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 2EBF0 8002DFF0 D4226A28 */  ldc1       $f2, %lo(D_800C6A28)($at)
/* 2EBF4 8002DFF4 D6400000 */  ldc1       $f0, 0x0($s2)
/* 2EBF8 8002DFF8 46201087 */  neg.d      $f2, $f2
/* 2EBFC 8002DFFC 46220002 */  mul.d      $f0, $f0, $f2
/* 2EC00 8002E000 F6400000 */  sdc1       $f0, 0x0($s2)
/* 2EC04 8002E004 D6200008 */  ldc1       $f0, 0x8($s1)
/* 2EC08 8002E008 0800B80F */  j          .L8002E03C
/* 2EC0C 8002E00C 46220002 */   mul.d     $f0, $f0, $f2
.L8002E010:
/* 2EC10 8002E010 1462000D */  bne        $v1, $v0, .L8002E048
/* 2EC14 8002E014 24020020 */   addiu     $v0, $zero, 0x20
/* 2EC18 8002E018 D600FFF0 */  ldc1       $f0, -0x10($s0)
/* 2EC1C 8002E01C 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 2EC20 8002E020 D42269E0 */  ldc1       $f2, %lo(D_800C69E0)($at)
/* 2EC24 8002E024 46200007 */  neg.d      $f0, $f0
/* 2EC28 8002E028 46220002 */  mul.d      $f0, $f0, $f2
/* 2EC2C 8002E02C F6400000 */  sdc1       $f0, 0x0($s2)
/* 2EC30 8002E030 D6000000 */  ldc1       $f0, 0x0($s0)
/* 2EC34 8002E034 46200007 */  neg.d      $f0, $f0
/* 2EC38 8002E038 46220002 */  mul.d      $f0, $f0, $f2
.L8002E03C:
/* 2EC3C 8002E03C F6200008 */  sdc1       $f0, 0x8($s1)
/* 2EC40 8002E040 0800B819 */  j          .L8002E064
/* 2EC44 8002E044 26940001 */   addiu     $s4, $s4, 0x1
.L8002E048:
/* 2EC48 8002E048 14620006 */  bne        $v1, $v0, .L8002E064
/* 2EC4C 8002E04C 26940001 */   addiu     $s4, $s4, 0x1
/* 2EC50 8002E050 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 2EC54 8002E054 D4206A00 */  ldc1       $f0, %lo(D_800C6A00)($at)
/* 2EC58 8002E058 F6340008 */  sdc1       $f20, 0x8($s1)
/* 2EC5C 8002E05C F6540000 */  sdc1       $f20, 0x0($s2)
/* 2EC60 8002E060 F6200000 */  sdc1       $f0, 0x0($s1)
.L8002E064:
/* 2EC64 8002E064 26100070 */  addiu      $s0, $s0, 0x70
/* 2EC68 8002E068 26730070 */  addiu      $s3, $s3, 0x70
/* 2EC6C 8002E06C 26310018 */  addiu      $s1, $s1, 0x18
/* 2EC70 8002E070 2A820010 */  slti       $v0, $s4, 0x10
/* 2EC74 8002E074 1440FFBE */  bnez       $v0, .L8002DF70
/* 2EC78 8002E078 26520018 */   addiu     $s2, $s2, 0x18
/* 2EC7C 8002E07C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2EC80 8002E080 8FB40020 */  lw         $s4, 0x20($sp)
/* 2EC84 8002E084 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2EC88 8002E088 8FB20018 */  lw         $s2, 0x18($sp)
/* 2EC8C 8002E08C 8FB10014 */  lw         $s1, 0x14($sp)
/* 2EC90 8002E090 8FB00010 */  lw         $s0, 0x10($sp)
/* 2EC94 8002E094 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 2EC98 8002E098 03E00008 */  jr         $ra
/* 2EC9C 8002E09C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002E0A0
/* 2ECA0 8002E0A0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2ECA4 8002E0A4 AFB60030 */  sw         $s6, 0x30($sp)
/* 2ECA8 8002E0A8 8FB60050 */  lw         $s6, 0x50($sp)
/* 2ECAC 8002E0AC AFB70034 */  sw         $s7, 0x34($sp)
/* 2ECB0 8002E0B0 8FB70054 */  lw         $s7, 0x54($sp)
/* 2ECB4 8002E0B4 AFBF0038 */  sw         $ra, 0x38($sp)
/* 2ECB8 8002E0B8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 2ECBC 8002E0BC AFB40028 */  sw         $s4, 0x28($sp)
/* 2ECC0 8002E0C0 AFB30024 */  sw         $s3, 0x24($sp)
/* 2ECC4 8002E0C4 AFB20020 */  sw         $s2, 0x20($sp)
/* 2ECC8 8002E0C8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2ECCC 8002E0CC AFB00018 */  sw         $s0, 0x18($sp)
/* 2ECD0 8002E0D0 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2ECD4 8002E0D4 AC26B520 */  sw         $a2, %lo(D_802AB520)($at)
/* 2ECD8 8002E0D8 3C01802B */  lui        $at, %hi(D_802AB524)
/* 2ECDC 8002E0DC AC27B524 */  sw         $a3, %lo(D_802AB524)($at)
/* 2ECE0 8002E0E0 3C01802B */  lui        $at, %hi(D_802AB788)
/* 2ECE4 8002E0E4 AC20B788 */  sw         $zero, %lo(D_802AB788)($at)
/* 2ECE8 8002E0E8 3C01802B */  lui        $at, %hi(D_802AB78C)
/* 2ECEC 8002E0EC AC20B78C */  sw         $zero, %lo(D_802AB78C)($at)
/* 2ECF0 8002E0F0 3C01802B */  lui        $at, %hi(D_802AB780)
/* 2ECF4 8002E0F4 AC24B780 */  sw         $a0, %lo(D_802AB780)($at)
/* 2ECF8 8002E0F8 0C0169A2 */  jal        func_8005A688
/* 2ECFC 8002E0FC 24130020 */   addiu     $s3, $zero, 0x20
/* 2ED00 8002E100 3C01802B */  lui        $at, %hi(D_802AB784)
/* 2ED04 8002E104 AC22B784 */  sw         $v0, %lo(D_802AB784)($at)
/* 2ED08 8002E108 0C00B7CB */  jal        func_8002DF2C
/* 2ED0C 8002E10C 24140010 */   addiu     $s4, $zero, 0x10
/* 2ED10 8002E110 3C12802B */  lui        $s2, %hi(D_802AB780)
/* 2ED14 8002E114 8E52B780 */  lw         $s2, %lo(D_802AB780)($s2)
/* 2ED18 8002E118 3C15802B */  lui        $s5, %hi(D_802AB5C8)
/* 2ED1C 8002E11C 26B5B5C8 */  addiu      $s5, $s5, %lo(D_802AB5C8)
/* 2ED20 8002E120 24020001 */  addiu      $v0, $zero, 0x1
/* 2ED24 8002E124 3C01802B */  lui        $at, %hi(D_802AB5A8)
/* 2ED28 8002E128 AC22B5A8 */  sw         $v0, %lo(D_802AB5A8)($at)
.L8002E12C:
/* 2ED2C 8002E12C 82420000 */  lb         $v0, 0x0($s2)
/* 2ED30 8002E130 14530042 */  bne        $v0, $s3, .L8002E23C
/* 2ED34 8002E134 00000000 */   nop
/* 2ED38 8002E138 0C00AEB9 */  jal        func_8002BAE4
/* 2ED3C 8002E13C 02402021 */   addu      $a0, $s2, $zero
/* 2ED40 8002E140 3C10802B */  lui        $s0, %hi(D_802AB780)
/* 2ED44 8002E144 8E10B780 */  lw         $s0, %lo(D_802AB780)($s0)
/* 2ED48 8002E148 24020001 */  addiu      $v0, $zero, 0x1
/* 2ED4C 8002E14C 3C01802B */  lui        $at, %hi(D_802AB5AC)
/* 2ED50 8002E150 AC22B5AC */  sw         $v0, %lo(D_802AB5AC)($at)
.L8002E154:
/* 2ED54 8002E154 82040000 */  lb         $a0, 0x0($s0)
/* 2ED58 8002E158 14930008 */  bne        $a0, $s3, .L8002E17C
/* 2ED5C 8002E15C 00000000 */   nop
/* 2ED60 8002E160 3C02802B */  lui        $v0, %hi(D_802AB5A8)
/* 2ED64 8002E164 8C42B5A8 */  lw         $v0, %lo(D_802AB5A8)($v0)
/* 2ED68 8002E168 3C03802B */  lui        $v1, %hi(D_802AB5AC)
/* 2ED6C 8002E16C 8C63B5AC */  lw         $v1, %lo(D_802AB5AC)($v1)
/* 2ED70 8002E170 0043102B */  sltu       $v0, $v0, $v1
/* 2ED74 8002E174 1040000B */  beqz       $v0, .L8002E1A4
/* 2ED78 8002E178 00000000 */   nop
.L8002E17C:
/* 2ED7C 8002E17C 10940009 */  beq        $a0, $s4, .L8002E1A4
/* 2ED80 8002E180 00000000 */   nop
/* 2ED84 8002E184 3C03802B */  lui        $v1, %hi(D_802AB5AC)
/* 2ED88 8002E188 8C63B5AC */  lw         $v1, %lo(D_802AB5AC)($v1)
/* 2ED8C 8002E18C 3C02802B */  lui        $v0, %hi(D_802AB5A8)
/* 2ED90 8002E190 8C42B5A8 */  lw         $v0, %lo(D_802AB5A8)($v0)
/* 2ED94 8002E194 10620003 */  beq        $v1, $v0, .L8002E1A4
/* 2ED98 8002E198 02402021 */   addu      $a0, $s2, $zero
/* 2ED9C 8002E19C 0C00B058 */  jal        func_8002C160
/* 2EDA0 8002E1A0 02002821 */   addu      $a1, $s0, $zero
.L8002E1A4:
/* 2EDA4 8002E1A4 3C02802B */  lui        $v0, %hi(D_802AB5AC)
/* 2EDA8 8002E1A8 8C42B5AC */  lw         $v0, %lo(D_802AB5AC)($v0)
/* 2EDAC 8002E1AC 24420001 */  addiu      $v0, $v0, 0x1
/* 2EDB0 8002E1B0 3C01802B */  lui        $at, %hi(D_802AB5AC)
/* 2EDB4 8002E1B4 AC22B5AC */  sw         $v0, %lo(D_802AB5AC)($at)
/* 2EDB8 8002E1B8 2C420011 */  sltiu      $v0, $v0, 0x11
/* 2EDBC 8002E1BC 1440FFE5 */  bnez       $v0, .L8002E154
/* 2EDC0 8002E1C0 26100070 */   addiu     $s0, $s0, 0x70
/* 2EDC4 8002E1C4 3C02800C */  lui        $v0, %hi(D_800BF460)
/* 2EDC8 8002E1C8 8C42F460 */  lw         $v0, %lo(D_800BF460)($v0)
/* 2EDCC 8002E1CC 1440001B */  bnez       $v0, .L8002E23C
/* 2EDD0 8002E1D0 00000000 */   nop
/* 2EDD4 8002E1D4 0C00B798 */  jal        func_8002DE60
/* 2EDD8 8002E1D8 02402021 */   addu      $a0, $s2, $zero
/* 2EDDC 8002E1DC 3C02802B */  lui        $v0, %hi(D_802AB5F8)
/* 2EDE0 8002E1E0 8C42B5F8 */  lw         $v0, %lo(D_802AB5F8)($v0)
/* 2EDE4 8002E1E4 18400015 */  blez       $v0, .L8002E23C
/* 2EDE8 8002E1E8 00008021 */   addu      $s0, $zero, $zero
/* 2EDEC 8002E1EC 02A08821 */  addu       $s1, $s5, $zero
.L8002E1F0:
/* 2EDF0 8002E1F0 8E230000 */  lw         $v1, 0x0($s1)
/* 2EDF4 8002E1F4 02402021 */  addu       $a0, $s2, $zero
/* 2EDF8 8002E1F8 3C05802B */  lui        $a1, %hi(D_802AB784)
/* 2EDFC 8002E1FC 8CA5B784 */  lw         $a1, %lo(D_802AB784)($a1)
/* 2EE00 8002E200 24630001 */  addiu      $v1, $v1, 0x1
/* 2EE04 8002E204 000310C0 */  sll        $v0, $v1, 3
/* 2EE08 8002E208 00431021 */  addu       $v0, $v0, $v1
/* 2EE0C 8002E20C 00021080 */  sll        $v0, $v0, 2
/* 2EE10 8002E210 00A22821 */  addu       $a1, $a1, $v0
/* 2EE14 8002E214 3C01802B */  lui        $at, %hi(D_802AB5A4)
/* 2EE18 8002E218 AC23B5A4 */  sw         $v1, %lo(D_802AB5A4)($at)
/* 2EE1C 8002E21C 0C00B474 */  jal        func_8002D1D0
/* 2EE20 8002E220 24A5FFDC */   addiu     $a1, $a1, -0x24
/* 2EE24 8002E224 3C02802B */  lui        $v0, %hi(D_802AB5F8)
/* 2EE28 8002E228 8C42B5F8 */  lw         $v0, %lo(D_802AB5F8)($v0)
/* 2EE2C 8002E22C 26100001 */  addiu      $s0, $s0, 0x1
/* 2EE30 8002E230 0202102A */  slt        $v0, $s0, $v0
/* 2EE34 8002E234 1440FFEE */  bnez       $v0, .L8002E1F0
/* 2EE38 8002E238 26310004 */   addiu     $s1, $s1, 0x4
.L8002E23C:
/* 2EE3C 8002E23C 3C02802B */  lui        $v0, %hi(D_802AB5A8)
/* 2EE40 8002E240 8C42B5A8 */  lw         $v0, %lo(D_802AB5A8)($v0)
/* 2EE44 8002E244 24420001 */  addiu      $v0, $v0, 0x1
/* 2EE48 8002E248 3C01802B */  lui        $at, %hi(D_802AB5A8)
/* 2EE4C 8002E24C AC22B5A8 */  sw         $v0, %lo(D_802AB5A8)($at)
/* 2EE50 8002E250 2C420011 */  sltiu      $v0, $v0, 0x11
/* 2EE54 8002E254 1440FFB5 */  bnez       $v0, .L8002E12C
/* 2EE58 8002E258 26520070 */   addiu     $s2, $s2, 0x70
/* 2EE5C 8002E25C 3C02802B */  lui        $v0, %hi(D_802AB788)
/* 2EE60 8002E260 8C42B788 */  lw         $v0, %lo(D_802AB788)($v0)
/* 2EE64 8002E264 10400008 */  beqz       $v0, .L8002E288
/* 2EE68 8002E268 2442FFFF */   addiu     $v0, $v0, -0x1
/* 2EE6C 8002E26C AEC20000 */  sw         $v0, 0x0($s6)
/* 2EE70 8002E270 3C02802B */  lui        $v0, %hi(D_802AB78C)
/* 2EE74 8002E274 8C42B78C */  lw         $v0, %lo(D_802AB78C)($v0)
/* 2EE78 8002E278 AEE20000 */  sw         $v0, 0x0($s7)
/* 2EE7C 8002E27C 3C01802B */  lui        $at, %hi(D_802AB520)
/* 2EE80 8002E280 0800B8A4 */  j          .L8002E290
/* 2EE84 8002E284 D420B520 */   ldc1      $f0, %lo(D_802AB520)($at)
.L8002E288:
/* 2EE88 8002E288 3C01800D */  lui        $at, %hi(D_800D1420)
/* 2EE8C 8002E28C D4201420 */  ldc1       $f0, %lo(D_800D1420)($at)
.L8002E290:
/* 2EE90 8002E290 8FBF0038 */  lw         $ra, 0x38($sp)
/* 2EE94 8002E294 8FB70034 */  lw         $s7, 0x34($sp)
/* 2EE98 8002E298 8FB60030 */  lw         $s6, 0x30($sp)
/* 2EE9C 8002E29C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 2EEA0 8002E2A0 8FB40028 */  lw         $s4, 0x28($sp)
/* 2EEA4 8002E2A4 8FB30024 */  lw         $s3, 0x24($sp)
/* 2EEA8 8002E2A8 8FB20020 */  lw         $s2, 0x20($sp)
/* 2EEAC 8002E2AC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2EEB0 8002E2B0 8FB00018 */  lw         $s0, 0x18($sp)
/* 2EEB4 8002E2B4 03E00008 */  jr         $ra
/* 2EEB8 8002E2B8 27BD0040 */   addiu     $sp, $sp, 0x40
/* 2EEBC 8002E2BC 00000000 */  nop
