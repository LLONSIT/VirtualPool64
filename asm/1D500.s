.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8001C900
/* 1D500 8001C900 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D504 8001C904 AFB10014 */  sw         $s1, 0x14($sp)
/* 1D508 8001C908 00808821 */  addu       $s1, $a0, $zero
/* 1D50C 8001C90C 3C05800D */  lui        $a1, %hi(D_800CF3FC)
/* 1D510 8001C910 24A5F3FC */  addiu      $a1, $a1, %lo(D_800CF3FC)
/* 1D514 8001C914 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1D518 8001C918 0C007E6D */  jal        func_8001F9B4
/* 1D51C 8001C91C AFB00010 */   sw        $s0, 0x10($sp)
/* 1D520 8001C920 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 1D524 8001C924 8C84BAA0 */  lw         $a0, %lo(D_800ABAA0)($a0)
/* 1D528 8001C928 3C05803F */  lui        $a1, %hi(D_803ED3DE)
/* 1D52C 8001C92C 90A5D3DE */  lbu        $a1, %lo(D_803ED3DE)($a1)
/* 1D530 8001C930 3C06802A */  lui        $a2, %hi(D_802A1548)
/* 1D534 8001C934 0C003AF1 */  jal        func_8000EBC4
/* 1D538 8001C938 24C61548 */   addiu     $a2, $a2, %lo(D_802A1548)
/* 1D53C 8001C93C 00408021 */  addu       $s0, $v0, $zero
/* 1D540 8001C940 16000007 */  bnez       $s0, .L8001C960
/* 1D544 8001C944 02202021 */   addu      $a0, $s1, $zero
/* 1D548 8001C948 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 1D54C 8001C94C 8C84BAA0 */  lw         $a0, %lo(D_800ABAA0)($a0)
/* 1D550 8001C950 3C05802A */  lui        $a1, %hi(D_802A1544)
/* 1D554 8001C954 0C0038DD */  jal        func_8000E374
/* 1D558 8001C958 24A51544 */   addiu     $a1, $a1, %lo(D_802A1544)
/* 1D55C 8001C95C 02202021 */  addu       $a0, $s1, $zero
.L8001C960:
/* 1D560 8001C960 0C007E99 */  jal        func_8001FA64
/* 1D564 8001C964 02002821 */   addu      $a1, $s0, $zero
/* 1D568 8001C968 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1D56C 8001C96C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1D570 8001C970 8FB00010 */  lw         $s0, 0x10($sp)
/* 1D574 8001C974 03E00008 */  jr         $ra
/* 1D578 8001C978 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001C97C
/* 1D57C 8001C97C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D580 8001C980 AFB00010 */  sw         $s0, 0x10($sp)
/* 1D584 8001C984 3C05800D */  lui        $a1, %hi(D_800CF40C)
/* 1D588 8001C988 24A5F40C */  addiu      $a1, $a1, %lo(D_800CF40C)
/* 1D58C 8001C98C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D590 8001C990 0C007E6D */  jal        func_8001F9B4
/* 1D594 8001C994 00808021 */   addu      $s0, $a0, $zero
/* 1D598 8001C998 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 1D59C 8001C99C 8C84BAA0 */  lw         $a0, %lo(D_800ABAA0)($a0)
/* 1D5A0 8001C9A0 3C05803F */  lui        $a1, %hi(D_803ED3DE)
/* 1D5A4 8001C9A4 0C00376F */  jal        func_8000DDBC
/* 1D5A8 8001C9A8 90A5D3DE */   lbu       $a1, %lo(D_803ED3DE)($a1)
/* 1D5AC 8001C9AC 02002021 */  addu       $a0, $s0, $zero
/* 1D5B0 8001C9B0 0C007E99 */  jal        func_8001FA64
/* 1D5B4 8001C9B4 00402821 */   addu      $a1, $v0, $zero
/* 1D5B8 8001C9B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D5BC 8001C9BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1D5C0 8001C9C0 03E00008 */  jr         $ra
/* 1D5C4 8001C9C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001C9C8
/* 1D5C8 8001C9C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D5CC 8001C9CC AFB10014 */  sw         $s1, 0x14($sp)
/* 1D5D0 8001C9D0 00808821 */  addu       $s1, $a0, $zero
/* 1D5D4 8001C9D4 3C05800D */  lui        $a1, %hi(D_800CF41C)
/* 1D5D8 8001C9D8 24A5F41C */  addiu      $a1, $a1, %lo(D_800CF41C)
/* 1D5DC 8001C9DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 1D5E0 8001C9E0 0C007E6D */  jal        func_8001F9B4
/* 1D5E4 8001C9E4 AFB00010 */   sw        $s0, 0x10($sp)
/* 1D5E8 8001C9E8 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 1D5EC 8001C9EC 8C84BAA0 */  lw         $a0, %lo(D_800ABAA0)($a0)
/* 1D5F0 8001C9F0 3C05803F */  lui        $a1, %hi(D_803ED3DE)
/* 1D5F4 8001C9F4 0C003A19 */  jal        func_8000E864
/* 1D5F8 8001C9F8 90A5D3DE */   lbu       $a1, %lo(D_803ED3DE)($a1)
/* 1D5FC 8001C9FC 00408021 */  addu       $s0, $v0, $zero
/* 1D600 8001CA00 16000007 */  bnez       $s0, .L8001CA20
/* 1D604 8001CA04 02202021 */   addu      $a0, $s1, $zero
/* 1D608 8001CA08 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 1D60C 8001CA0C 8C84BAA0 */  lw         $a0, %lo(D_800ABAA0)($a0)
/* 1D610 8001CA10 3C05802A */  lui        $a1, %hi(D_802A1544)
/* 1D614 8001CA14 0C0038DD */  jal        func_8000E374
/* 1D618 8001CA18 24A51544 */   addiu     $a1, $a1, %lo(D_802A1544)
/* 1D61C 8001CA1C 02202021 */  addu       $a0, $s1, $zero
.L8001CA20:
/* 1D620 8001CA20 0C007E99 */  jal        func_8001FA64
/* 1D624 8001CA24 02002821 */   addu      $a1, $s0, $zero
/* 1D628 8001CA28 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1D62C 8001CA2C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1D630 8001CA30 8FB00010 */  lw         $s0, 0x10($sp)
/* 1D634 8001CA34 03E00008 */  jr         $ra
/* 1D638 8001CA38 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001CA3C
/* 1D63C 8001CA3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D640 8001CA40 AFB00010 */  sw         $s0, 0x10($sp)
/* 1D644 8001CA44 00808021 */  addu       $s0, $a0, $zero
/* 1D648 8001CA48 3C05800D */  lui        $a1, %hi(D_800CF430)
/* 1D64C 8001CA4C 24A5F430 */  addiu      $a1, $a1, %lo(D_800CF430)
/* 1D650 8001CA50 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1D654 8001CA54 0C007E6D */  jal        func_8001F9B4
/* 1D658 8001CA58 AFB10014 */   sw        $s1, 0x14($sp)
/* 1D65C 8001CA5C 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 1D660 8001CA60 8C84BAA0 */  lw         $a0, %lo(D_800ABAA0)($a0)
/* 1D664 8001CA64 3C05802A */  lui        $a1, %hi(D_802A1544)
/* 1D668 8001CA68 0C0038DD */  jal        func_8000E374
/* 1D66C 8001CA6C 24A51544 */   addiu     $a1, $a1, %lo(D_802A1544)
/* 1D670 8001CA70 00408821 */  addu       $s1, $v0, $zero
/* 1D674 8001CA74 12200007 */  beqz       $s1, .L8001CA94
/* 1D678 8001CA78 24020005 */   addiu     $v0, $zero, 0x5
/* 1D67C 8001CA7C 1622001A */  bne        $s1, $v0, .L8001CAE8
/* 1D680 8001CA80 02002021 */   addu      $a0, $s0, $zero
/* 1D684 8001CA84 3C02802A */  lui        $v0, %hi(D_802A1568)
/* 1D688 8001CA88 8C421568 */  lw         $v0, %lo(D_802A1568)($v0)
/* 1D68C 8001CA8C 1040000A */  beqz       $v0, .L8001CAB8
/* 1D690 8001CA90 00000000 */   nop
.L8001CA94:
/* 1D694 8001CA94 02002021 */  addu       $a0, $s0, $zero
/* 1D698 8001CA98 0C004204 */  jal        func_80010810
/* 1D69C 8001CA9C 00002821 */   addu      $a1, $zero, $zero
/* 1D6A0 8001CAA0 2404000B */  addiu      $a0, $zero, 0xB
/* 1D6A4 8001CAA4 00002821 */  addu       $a1, $zero, $zero
/* 1D6A8 8001CAA8 0C0041BA */  jal        func_800106E8
/* 1D6AC 8001CAAC 00003021 */   addu      $a2, $zero, $zero
/* 1D6B0 8001CAB0 080072BE */  j          .L8001CAF8
/* 1D6B4 8001CAB4 02201021 */   addu      $v0, $s1, $zero
.L8001CAB8:
/* 1D6B8 8001CAB8 0C004204 */  jal        func_80010810
/* 1D6BC 8001CABC 00002821 */   addu      $a1, $zero, $zero
/* 1D6C0 8001CAC0 3C04800D */  lui        $a0, %hi(D_800CEEC0)
/* 1D6C4 8001CAC4 2484EEC0 */  addiu      $a0, $a0, %lo(D_800CEEC0)
/* 1D6C8 8001CAC8 3C05800D */  lui        $a1, %hi(D_800CEE20)
/* 1D6CC 8001CACC 24A5EE20 */  addiu      $a1, $a1, %lo(D_800CEE20)
/* 1D6D0 8001CAD0 3C06800D */  lui        $a2, %hi(D_800CE22C)
/* 1D6D4 8001CAD4 24C6E22C */  addiu      $a2, $a2, %lo(D_800CE22C)
/* 1D6D8 8001CAD8 0C004EC6 */  jal        func_80013B18
/* 1D6DC 8001CADC 00003821 */   addu      $a3, $zero, $zero
/* 1D6E0 8001CAE0 080072BE */  j          .L8001CAF8
/* 1D6E4 8001CAE4 02201021 */   addu      $v0, $s1, $zero
.L8001CAE8:
/* 1D6E8 8001CAE8 0C007E99 */  jal        func_8001FA64
/* 1D6EC 8001CAEC 02202821 */   addu      $a1, $s1, $zero
/* 1D6F0 8001CAF0 00408821 */  addu       $s1, $v0, $zero
/* 1D6F4 8001CAF4 02201021 */  addu       $v0, $s1, $zero
.L8001CAF8:
/* 1D6F8 8001CAF8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1D6FC 8001CAFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1D700 8001CB00 8FB00010 */  lw         $s0, 0x10($sp)
/* 1D704 8001CB04 03E00008 */  jr         $ra
/* 1D708 8001CB08 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001CB0C
/* 1D70C 8001CB0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D710 8001CB10 AFB00010 */  sw         $s0, 0x10($sp)
/* 1D714 8001CB14 3C10802A */  lui        $s0, %hi(D_802A1548)
/* 1D718 8001CB18 26101548 */  addiu      $s0, $s0, %lo(D_802A1548)
/* 1D71C 8001CB1C 02002021 */  addu       $a0, $s0, $zero
/* 1D720 8001CB20 00002821 */  addu       $a1, $zero, $zero
/* 1D724 8001CB24 24020001 */  addiu      $v0, $zero, 0x1
/* 1D728 8001CB28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D72C 8001CB2C 3C01802A */  lui        $at, %hi(D_802A1568)
/* 1D730 8001CB30 AC221568 */  sw         $v0, %lo(D_802A1568)($at)
/* 1D734 8001CB34 0C026D3C */  jal        func_8009B4F0
/* 1D738 8001CB38 24060020 */   addiu     $a2, $zero, 0x20
/* 1D73C 8001CB3C 3C02803F */  lui        $v0, %hi(D_803ED3D1)
/* 1D740 8001CB40 9042D3D1 */  lbu        $v0, %lo(D_803ED3D1)($v0)
/* 1D744 8001CB44 3C03803F */  lui        $v1, %hi(D_803ED3DC)
/* 1D748 8001CB48 9063D3DC */  lbu        $v1, %lo(D_803ED3DC)($v1)
/* 1D74C 8001CB4C 00021080 */  sll        $v0, $v0, 2
/* 1D750 8001CB50 3C06800D */  lui        $a2, %hi(D_800CD478)
/* 1D754 8001CB54 00C23021 */  addu       $a2, $a2, $v0
/* 1D758 8001CB58 8CC6D478 */  lw         $a2, %lo(D_800CD478)($a2)
/* 1D75C 8001CB5C 00031880 */  sll        $v1, $v1, 2
/* 1D760 8001CB60 3C07800D */  lui        $a3, %hi(D_800CD2D4)
/* 1D764 8001CB64 00E33821 */  addu       $a3, $a3, $v1
/* 1D768 8001CB68 8CE7D2D4 */  lw         $a3, %lo(D_800CD2D4)($a3)
/* 1D76C 8001CB6C 3C05800D */  lui        $a1, %hi(D_800CEEB0)
/* 1D770 8001CB70 24A5EEB0 */  addiu      $a1, $a1, %lo(D_800CEEB0)
/* 1D774 8001CB74 0C024940 */  jal        func_80092500
/* 1D778 8001CB78 02002021 */   addu      $a0, $s0, $zero
/* 1D77C 8001CB7C 3C048002 */  lui        $a0, %hi(func_8001CA3C)
/* 1D780 8001CB80 0C007D8B */  jal        func_8001F62C
/* 1D784 8001CB84 2484CA3C */   addiu     $a0, $a0, %lo(func_8001CA3C)
/* 1D788 8001CB88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D78C 8001CB8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1D790 8001CB90 03E00008 */  jr         $ra
/* 1D794 8001CB94 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001CB98
/* 1D798 8001CB98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D79C 8001CB9C 3C048002 */  lui        $a0, %hi(func_8001CA3C)
/* 1D7A0 8001CBA0 2484CA3C */  addiu      $a0, $a0, %lo(func_8001CA3C)
/* 1D7A4 8001CBA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1D7A8 8001CBA8 3C01802A */  lui        $at, %hi(D_802A1568)
/* 1D7AC 8001CBAC 0C007D8B */  jal        func_8001F62C
/* 1D7B0 8001CBB0 AC201568 */   sw        $zero, %lo(D_802A1568)($at)
/* 1D7B4 8001CBB4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1D7B8 8001CBB8 03E00008 */  jr         $ra
/* 1D7BC 8001CBBC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001CBC0
/* 1D7C0 8001CBC0 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 1D7C4 8001CBC4 AFB1006C */  sw         $s1, 0x6C($sp)
/* 1D7C8 8001CBC8 00808821 */  addu       $s1, $a0, $zero
/* 1D7CC 8001CBCC AFB20070 */  sw         $s2, 0x70($sp)
/* 1D7D0 8001CBD0 00A09021 */  addu       $s2, $a1, $zero
/* 1D7D4 8001CBD4 AFB30074 */  sw         $s3, 0x74($sp)
/* 1D7D8 8001CBD8 00C09821 */  addu       $s3, $a2, $zero
/* 1D7DC 8001CBDC AFB40078 */  sw         $s4, 0x78($sp)
/* 1D7E0 8001CBE0 24020083 */  addiu      $v0, $zero, 0x83
/* 1D7E4 8001CBE4 AFBF008C */  sw         $ra, 0x8C($sp)
/* 1D7E8 8001CBE8 AFBE0088 */  sw         $fp, 0x88($sp)
/* 1D7EC 8001CBEC AFB70084 */  sw         $s7, 0x84($sp)
/* 1D7F0 8001CBF0 AFB60080 */  sw         $s6, 0x80($sp)
/* 1D7F4 8001CBF4 AFB5007C */  sw         $s5, 0x7C($sp)
/* 1D7F8 8001CBF8 AFB00068 */  sw         $s0, 0x68($sp)
/* 1D7FC 8001CBFC F7B40090 */  sdc1       $f20, 0x90($sp)
/* 1D800 8001CC00 12420019 */  beq        $s2, $v0, .L8001CC68
/* 1D804 8001CC04 00E0A021 */   addu      $s4, $a3, $zero
/* 1D808 8001CC08 2E420084 */  sltiu      $v0, $s2, 0x84
/* 1D80C 8001CC0C 10400005 */  beqz       $v0, .L8001CC24
/* 1D810 8001CC10 24020082 */   addiu     $v0, $zero, 0x82
/* 1D814 8001CC14 12420008 */  beq        $s2, $v0, .L8001CC38
/* 1D818 8001CC18 02202021 */   addu      $a0, $s1, $zero
/* 1D81C 8001CC1C 080073E0 */  j          .L8001CF80
/* 1D820 8001CC20 00000000 */   nop
.L8001CC24:
/* 1D824 8001CC24 24020086 */  addiu      $v0, $zero, 0x86
/* 1D828 8001CC28 1242001B */  beq        $s2, $v0, .L8001CC98
/* 1D82C 8001CC2C 02202021 */   addu      $a0, $s1, $zero
/* 1D830 8001CC30 080073E0 */  j          .L8001CF80
/* 1D834 8001CC34 00000000 */   nop
.L8001CC38:
/* 1D838 8001CC38 8E220038 */  lw         $v0, 0x38($s1)
/* 1D83C 8001CC3C 8C430008 */  lw         $v1, 0x8($v0)
/* 1D840 8001CC40 106000CE */  beqz       $v1, .L8001CF7C
/* 1D844 8001CC44 24500008 */   addiu     $s0, $v0, 0x8
.L8001CC48:
/* 1D848 8001CC48 8E040000 */  lw         $a0, 0x0($s0)
/* 1D84C 8001CC4C 0C001566 */  jal        func_80005598
/* 1D850 8001CC50 26100004 */   addiu     $s0, $s0, 0x4
/* 1D854 8001CC54 8E020000 */  lw         $v0, 0x0($s0)
/* 1D858 8001CC58 1440FFFB */  bnez       $v0, .L8001CC48
/* 1D85C 8001CC5C 02202021 */   addu      $a0, $s1, $zero
/* 1D860 8001CC60 080073E0 */  j          .L8001CF80
/* 1D864 8001CC64 00000000 */   nop
.L8001CC68:
/* 1D868 8001CC68 8E220038 */  lw         $v0, 0x38($s1)
/* 1D86C 8001CC6C 8C430008 */  lw         $v1, 0x8($v0)
/* 1D870 8001CC70 106000C2 */  beqz       $v1, .L8001CF7C
/* 1D874 8001CC74 24500008 */   addiu     $s0, $v0, 0x8
.L8001CC78:
/* 1D878 8001CC78 8E040000 */  lw         $a0, 0x0($s0)
/* 1D87C 8001CC7C 0C0015AF */  jal        func_800056BC
/* 1D880 8001CC80 26100004 */   addiu     $s0, $s0, 0x4
/* 1D884 8001CC84 8E020000 */  lw         $v0, 0x0($s0)
/* 1D888 8001CC88 1440FFFB */  bnez       $v0, .L8001CC78
/* 1D88C 8001CC8C 02202021 */   addu      $a0, $s1, $zero
/* 1D890 8001CC90 080073E0 */  j          .L8001CF80
/* 1D894 8001CC94 00000000 */   nop
.L8001CC98:
/* 1D898 8001CC98 8E300040 */  lw         $s0, 0x40($s1)
/* 1D89C 8001CC9C 120000BC */  beqz       $s0, .L8001CF90
/* 1D8A0 8001CCA0 24020001 */   addiu     $v0, $zero, 0x1
/* 1D8A4 8001CCA4 82020000 */  lb         $v0, 0x0($s0)
/* 1D8A8 8001CCA8 104000AC */  beqz       $v0, .L8001CF5C
/* 1D8AC 8001CCAC AFB3002C */   sw        $s3, 0x2C($sp)
/* 1D8B0 8001CCB0 24040035 */  addiu      $a0, $zero, 0x35
/* 1D8B4 8001CCB4 A7A00018 */  sh         $zero, 0x18($sp)
/* 1D8B8 8001CCB8 0C005C85 */  jal        func_80017214
/* 1D8BC 8001CCBC A7A0001A */   sh        $zero, 0x1A($sp)
/* 1D8C0 8001CCC0 24040035 */  addiu      $a0, $zero, 0x35
/* 1D8C4 8001CCC4 0C005C8D */  jal        func_80017234
/* 1D8C8 8001CCC8 A7A2001C */   sh        $v0, 0x1C($sp)
/* 1D8CC 8001CCCC 02602021 */  addu       $a0, $s3, $zero
/* 1D8D0 8001CCD0 24050035 */  addiu      $a1, $zero, 0x35
/* 1D8D4 8001CCD4 2406FFFF */  addiu      $a2, $zero, -0x1
/* 1D8D8 8001CCD8 0000A821 */  addu       $s5, $zero, $zero
/* 1D8DC 8001CCDC A7A2001E */  sh         $v0, 0x1E($sp)
/* 1D8E0 8001CCE0 86270004 */  lh         $a3, 0x4($s1)
/* 1D8E4 8001CCE4 86230008 */  lh         $v1, 0x8($s1)
/* 1D8E8 8001CCE8 3C014230 */  lui        $at, (0x42300000 >> 16)
/* 1D8EC 8001CCEC 4481A000 */  mtc1       $at, $f20
/* 1D8F0 8001CCF0 3C14800D */  lui        $s4, %hi(D_800D0530)
/* 1D8F4 8001CCF4 26940530 */  addiu      $s4, $s4, %lo(D_800D0530)
/* 1D8F8 8001CCF8 87A9001C */  lh         $t1, 0x1C($sp)
/* 1D8FC 8001CCFC 87AA0018 */  lh         $t2, 0x18($sp)
/* 1D900 8001CD00 00E33821 */  addu       $a3, $a3, $v1
/* 1D904 8001CD04 00071FC2 */  srl        $v1, $a3, 31
/* 1D908 8001CD08 00E33821 */  addu       $a3, $a3, $v1
/* 1D90C 8001CD0C 00073843 */  sra        $a3, $a3, 1
/* 1D910 8001CD10 012A1823 */  subu       $v1, $t1, $t2
/* 1D914 8001CD14 000347C2 */  srl        $t0, $v1, 31
/* 1D918 8001CD18 00681821 */  addu       $v1, $v1, $t0
/* 1D91C 8001CD1C 00031843 */  sra        $v1, $v1, 1
/* 1D920 8001CD20 00E33823 */  subu       $a3, $a3, $v1
/* 1D924 8001CD24 01274821 */  addu       $t1, $t1, $a3
/* 1D928 8001CD28 012A4823 */  subu       $t1, $t1, $t2
/* 1D92C 8001CD2C A7A9001C */  sh         $t1, 0x1C($sp)
/* 1D930 8001CD30 A7A70018 */  sh         $a3, 0x18($sp)
/* 1D934 8001CD34 86280006 */  lh         $t0, 0x6($s1)
/* 1D938 8001CD38 8623000A */  lh         $v1, 0xA($s1)
/* 1D93C 8001CD3C 00073C00 */  sll        $a3, $a3, 16
/* 1D940 8001CD40 00073C03 */  sra        $a3, $a3, 16
/* 1D944 8001CD44 87AA001A */  lh         $t2, 0x1A($sp)
/* 1D948 8001CD48 01034021 */  addu       $t0, $t0, $v1
/* 1D94C 8001CD4C 00081FC2 */  srl        $v1, $t0, 31
/* 1D950 8001CD50 01034021 */  addu       $t0, $t0, $v1
/* 1D954 8001CD54 00084043 */  sra        $t0, $t0, 1
/* 1D958 8001CD58 00021C00 */  sll        $v1, $v0, 16
/* 1D95C 8001CD5C 00031C03 */  sra        $v1, $v1, 16
/* 1D960 8001CD60 006A1823 */  subu       $v1, $v1, $t2
/* 1D964 8001CD64 00034FC2 */  srl        $t1, $v1, 31
/* 1D968 8001CD68 00691821 */  addu       $v1, $v1, $t1
/* 1D96C 8001CD6C 00031843 */  sra        $v1, $v1, 1
/* 1D970 8001CD70 01034023 */  subu       $t0, $t0, $v1
/* 1D974 8001CD74 00481021 */  addu       $v0, $v0, $t0
/* 1D978 8001CD78 004A1023 */  subu       $v0, $v0, $t2
/* 1D97C 8001CD7C A7A8001A */  sh         $t0, 0x1A($sp)
/* 1D980 8001CD80 00084400 */  sll        $t0, $t0, 16
/* 1D984 8001CD84 00084403 */  sra        $t0, $t0, 16
/* 1D988 8001CD88 A7A2001E */  sh         $v0, 0x1E($sp)
/* 1D98C 8001CD8C AFA80010 */  sw         $t0, 0x10($sp)
/* 1D990 8001CD90 0C005A35 */  jal        func_800168D4
/* 1D994 8001CD94 AFA00014 */   sw        $zero, 0x14($sp)
/* 1D998 8001CD98 97A80018 */  lhu        $t0, 0x18($sp)
/* 1D99C 8001CD9C 02009821 */  addu       $s3, $s0, $zero
/* 1D9A0 8001CDA0 97A9001C */  lhu        $t1, 0x1C($sp)
/* 1D9A4 8001CDA4 97A6001A */  lhu        $a2, 0x1A($sp)
/* 1D9A8 8001CDA8 97A7001E */  lhu        $a3, 0x1E($sp)
/* 1D9AC 8001CDAC 25080019 */  addiu      $t0, $t0, 0x19
/* 1D9B0 8001CDB0 2529FFE7 */  addiu      $t1, $t1, -0x19
/* 1D9B4 8001CDB4 00092400 */  sll        $a0, $t1, 16
/* 1D9B8 8001CDB8 00042403 */  sra        $a0, $a0, 16
/* 1D9BC 8001CDBC 00081C00 */  sll        $v1, $t0, 16
/* 1D9C0 8001CDC0 00031C03 */  sra        $v1, $v1, 16
/* 1D9C4 8001CDC4 00835823 */  subu       $t3, $a0, $v1
/* 1D9C8 8001CDC8 24C60019 */  addiu      $a2, $a2, 0x19
/* 1D9CC 8001CDCC 24E7FFE7 */  addiu      $a3, $a3, -0x19
/* 1D9D0 8001CDD0 00072C00 */  sll        $a1, $a3, 16
/* 1D9D4 8001CDD4 00052C03 */  sra        $a1, $a1, 16
/* 1D9D8 8001CDD8 00061400 */  sll        $v0, $a2, 16
/* 1D9DC 8001CDDC 00021403 */  sra        $v0, $v0, 16
/* 1D9E0 8001CDE0 00A2F023 */  subu       $fp, $a1, $v0
/* 1D9E4 8001CDE4 00641821 */  addu       $v1, $v1, $a0
/* 1D9E8 8001CDE8 000327C2 */  srl        $a0, $v1, 31
/* 1D9EC 8001CDEC 00641821 */  addu       $v1, $v1, $a0
/* 1D9F0 8001CDF0 0003B843 */  sra        $s7, $v1, 1
/* 1D9F4 8001CDF4 00451021 */  addu       $v0, $v0, $a1
/* 1D9F8 8001CDF8 00021FC2 */  srl        $v1, $v0, 31
/* 1D9FC 8001CDFC 00431021 */  addu       $v0, $v0, $v1
/* 1DA00 8001CE00 0002B043 */  sra        $s6, $v0, 1
/* 1DA04 8001CE04 AFAB0034 */  sw         $t3, 0x34($sp)
/* 1DA08 8001CE08 A7A80018 */  sh         $t0, 0x18($sp)
/* 1DA0C 8001CE0C A7A6001A */  sh         $a2, 0x1A($sp)
/* 1DA10 8001CE10 A7A9001C */  sh         $t1, 0x1C($sp)
/* 1DA14 8001CE14 A7A7001E */  sh         $a3, 0x1E($sp)
.L8001CE18:
/* 1DA18 8001CE18 92630042 */  lbu        $v1, 0x42($s3)
/* 1DA1C 8001CE1C 24020010 */  addiu      $v0, $zero, 0x10
/* 1DA20 8001CE20 50620048 */  beql       $v1, $v0, .L8001CF44
/* 1DA24 8001CE24 26940004 */   addiu     $s4, $s4, 0x4
/* 1DA28 8001CE28 C6640024 */  lwc1       $f4, 0x24($s3)
/* 1DA2C 8001CE2C C7A00034 */  lwc1       $f0, 0x34($sp)
/* 1DA30 8001CE30 46800020 */  cvt.s.w    $f0, $f0
/* 1DA34 8001CE34 46002102 */  mul.s      $f4, $f4, $f0
/* 1DA38 8001CE38 46142103 */  div.s      $f4, $f4, $f20
/* 1DA3C 8001CE3C C666002C */  lwc1       $f6, 0x2C($s3)
/* 1DA40 8001CE40 449E0000 */  mtc1       $fp, $f0
/* 1DA44 8001CE44 00000000 */  nop
/* 1DA48 8001CE48 46800020 */  cvt.s.w    $f0, $f0
/* 1DA4C 8001CE4C 46003182 */  mul.s      $f6, $f6, $f0
/* 1DA50 8001CE50 3C0142B0 */  lui        $at, (0x42B00000 >> 16)
/* 1DA54 8001CE54 44810000 */  mtc1       $at, $f0
/* 1DA58 8001CE58 00000000 */  nop
/* 1DA5C 8001CE5C 46003183 */  div.s      $f6, $f6, $f0
/* 1DA60 8001CE60 44971000 */  mtc1       $s7, $f2
/* 1DA64 8001CE64 00000000 */  nop
/* 1DA68 8001CE68 468010A0 */  cvt.s.w    $f2, $f2
/* 1DA6C 8001CE6C 46041080 */  add.s      $f2, $f2, $f4
/* 1DA70 8001CE70 8E920000 */  lw         $s2, 0x0($s4)
/* 1DA74 8001CE74 44960000 */  mtc1       $s6, $f0
/* 1DA78 8001CE78 00000000 */  nop
/* 1DA7C 8001CE7C 46800020 */  cvt.s.w    $f0, $f0
/* 1DA80 8001CE80 46060000 */  add.s      $f0, $f0, $f6
/* 1DA84 8001CE84 02402021 */  addu       $a0, $s2, $zero
/* 1DA88 8001CE88 4600110D */  trunc.w.s  $f4, $f2
/* 1DA8C 8001CE8C 44102000 */  mfc1       $s0, $f4
/* 1DA90 8001CE90 4600008D */  trunc.w.s  $f2, $f0
/* 1DA94 8001CE94 44111000 */  mfc1       $s1, $f2
/* 1DA98 8001CE98 A7B00020 */  sh         $s0, 0x20($sp)
/* 1DA9C 8001CE9C 0C005C85 */  jal        func_80017214
/* 1DAA0 8001CEA0 A7B10022 */   sh        $s1, 0x22($sp)
/* 1DAA4 8001CEA4 02402021 */  addu       $a0, $s2, $zero
/* 1DAA8 8001CEA8 02021021 */  addu       $v0, $s0, $v0
/* 1DAAC 8001CEAC 0C005C8D */  jal        func_80017234
/* 1DAB0 8001CEB0 A7A20024 */   sh        $v0, 0x24($sp)
/* 1DAB4 8001CEB4 8FA4002C */  lw         $a0, 0x2C($sp)
/* 1DAB8 8001CEB8 02402821 */  addu       $a1, $s2, $zero
/* 1DABC 8001CEBC 87A80024 */  lh         $t0, 0x24($sp)
/* 1DAC0 8001CEC0 87A90020 */  lh         $t1, 0x20($sp)
/* 1DAC4 8001CEC4 2406FFFF */  addiu      $a2, $zero, -0x1
/* 1DAC8 8001CEC8 02221021 */  addu       $v0, $s1, $v0
/* 1DACC 8001CECC A7A20026 */  sh         $v0, 0x26($sp)
/* 1DAD0 8001CED0 01091823 */  subu       $v1, $t0, $t1
/* 1DAD4 8001CED4 00033FC2 */  srl        $a3, $v1, 31
/* 1DAD8 8001CED8 00671821 */  addu       $v1, $v1, $a3
/* 1DADC 8001CEDC 00031843 */  sra        $v1, $v1, 1
/* 1DAE0 8001CEE0 02038023 */  subu       $s0, $s0, $v1
/* 1DAE4 8001CEE4 00103C00 */  sll        $a3, $s0, 16
/* 1DAE8 8001CEE8 00073C03 */  sra        $a3, $a3, 16
/* 1DAEC 8001CEEC 01104021 */  addu       $t0, $t0, $s0
/* 1DAF0 8001CEF0 01094023 */  subu       $t0, $t0, $t1
/* 1DAF4 8001CEF4 87A90022 */  lh         $t1, 0x22($sp)
/* 1DAF8 8001CEF8 00021C00 */  sll        $v1, $v0, 16
/* 1DAFC 8001CEFC 00031C03 */  sra        $v1, $v1, 16
/* 1DB00 8001CF00 A7A80024 */  sh         $t0, 0x24($sp)
/* 1DB04 8001CF04 A7B00020 */  sh         $s0, 0x20($sp)
/* 1DB08 8001CF08 00691823 */  subu       $v1, $v1, $t1
/* 1DB0C 8001CF0C 000347C2 */  srl        $t0, $v1, 31
/* 1DB10 8001CF10 00681821 */  addu       $v1, $v1, $t0
/* 1DB14 8001CF14 00031843 */  sra        $v1, $v1, 1
/* 1DB18 8001CF18 02238823 */  subu       $s1, $s1, $v1
/* 1DB1C 8001CF1C 00511021 */  addu       $v0, $v0, $s1
/* 1DB20 8001CF20 00491023 */  subu       $v0, $v0, $t1
/* 1DB24 8001CF24 A7B10022 */  sh         $s1, 0x22($sp)
/* 1DB28 8001CF28 00118C00 */  sll        $s1, $s1, 16
/* 1DB2C 8001CF2C 00118C03 */  sra        $s1, $s1, 16
/* 1DB30 8001CF30 A7A20026 */  sh         $v0, 0x26($sp)
/* 1DB34 8001CF34 AFB10010 */  sw         $s1, 0x10($sp)
/* 1DB38 8001CF38 0C005A35 */  jal        func_800168D4
/* 1DB3C 8001CF3C AFA00014 */   sw        $zero, 0x14($sp)
/* 1DB40 8001CF40 26940004 */  addiu      $s4, $s4, 0x4
.L8001CF44:
/* 1DB44 8001CF44 26B50001 */  addiu      $s5, $s5, 0x1
/* 1DB48 8001CF48 2AA20010 */  slti       $v0, $s5, 0x10
/* 1DB4C 8001CF4C 1440FFB2 */  bnez       $v0, .L8001CE18
/* 1DB50 8001CF50 26730024 */   addiu     $s3, $s3, 0x24
/* 1DB54 8001CF54 080073E4 */  j          .L8001CF90
/* 1DB58 8001CF58 24020001 */   addiu     $v0, $zero, 0x1
.L8001CF5C:
/* 1DB5C 8001CF5C 02202021 */  addu       $a0, $s1, $zero
/* 1DB60 8001CF60 8C870024 */  lw         $a3, 0x24($a0)
/* 1DB64 8001CF64 8C820000 */  lw         $v0, 0x0($a0)
/* 1DB68 8001CF68 24050088 */  addiu      $a1, $zero, 0x88
/* 1DB6C 8001CF6C 0040F809 */  jalr       $v0
/* 1DB70 8001CF70 02603021 */   addu      $a2, $s3, $zero
/* 1DB74 8001CF74 080073E4 */  j          .L8001CF90
/* 1DB78 8001CF78 24020001 */   addiu     $v0, $zero, 0x1
.L8001CF7C:
/* 1DB7C 8001CF7C 02202021 */  addu       $a0, $s1, $zero
.L8001CF80:
/* 1DB80 8001CF80 02402821 */  addu       $a1, $s2, $zero
/* 1DB84 8001CF84 02603021 */  addu       $a2, $s3, $zero
/* 1DB88 8001CF88 0C0049C7 */  jal        func_8001271C
/* 1DB8C 8001CF8C 02803821 */   addu      $a3, $s4, $zero
.L8001CF90:
/* 1DB90 8001CF90 8FBF008C */  lw         $ra, 0x8C($sp)
/* 1DB94 8001CF94 8FBE0088 */  lw         $fp, 0x88($sp)
/* 1DB98 8001CF98 8FB70084 */  lw         $s7, 0x84($sp)
/* 1DB9C 8001CF9C 8FB60080 */  lw         $s6, 0x80($sp)
/* 1DBA0 8001CFA0 8FB5007C */  lw         $s5, 0x7C($sp)
/* 1DBA4 8001CFA4 8FB40078 */  lw         $s4, 0x78($sp)
/* 1DBA8 8001CFA8 8FB30074 */  lw         $s3, 0x74($sp)
/* 1DBAC 8001CFAC 8FB20070 */  lw         $s2, 0x70($sp)
/* 1DBB0 8001CFB0 8FB1006C */  lw         $s1, 0x6C($sp)
/* 1DBB4 8001CFB4 8FB00068 */  lw         $s0, 0x68($sp)
/* 1DBB8 8001CFB8 D7B40090 */  ldc1       $f20, 0x90($sp)
/* 1DBBC 8001CFBC 03E00008 */  jr         $ra
/* 1DBC0 8001CFC0 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_8001CFC4
/* 1DBC4 8001CFC4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1DBC8 8001CFC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1DBCC 8001CFCC 00808021 */  addu       $s0, $a0, $zero
/* 1DBD0 8001CFD0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1DBD4 8001CFD4 00A08821 */  addu       $s1, $a1, $zero
/* 1DBD8 8001CFD8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1DBDC 8001CFDC 00C09021 */  addu       $s2, $a2, $zero
/* 1DBE0 8001CFE0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1DBE4 8001CFE4 00E09821 */  addu       $s3, $a3, $zero
/* 1DBE8 8001CFE8 24020086 */  addiu      $v0, $zero, 0x86
/* 1DBEC 8001CFEC 1222001A */  beq        $s1, $v0, .L8001D058
/* 1DBF0 8001CFF0 AFBF0020 */   sw        $ra, 0x20($sp)
/* 1DBF4 8001CFF4 2E220087 */  sltiu      $v0, $s1, 0x87
/* 1DBF8 8001CFF8 10400005 */  beqz       $v0, .L8001D010
/* 1DBFC 8001CFFC 24020081 */   addiu     $v0, $zero, 0x81
/* 1DC00 8001D000 1222003E */  beq        $s1, $v0, .L8001D0FC
/* 1DC04 8001D004 02002021 */   addu      $a0, $s0, $zero
/* 1DC08 8001D008 08007443 */  j          .L8001D10C
/* 1DC0C 8001D00C 00000000 */   nop
.L8001D010:
/* 1DC10 8001D010 2402008A */  addiu      $v0, $zero, 0x8A
/* 1DC14 8001D014 1622003D */  bne        $s1, $v0, .L8001D10C
/* 1DC18 8001D018 02002021 */   addu      $a0, $s0, $zero
/* 1DC1C 8001D01C 8E020040 */  lw         $v0, 0x40($s0)
/* 1DC20 8001D020 3C01803F */  lui        $at, %hi(D_803ED3DE)
/* 1DC24 8001D024 A022D3DE */  sb         $v0, %lo(D_803ED3DE)($at)
/* 1DC28 8001D028 8E020040 */  lw         $v0, 0x40($s0)
/* 1DC2C 8001D02C 3C03802A */  lui        $v1, %hi(D_802A1544)
/* 1DC30 8001D030 8C631544 */  lw         $v1, %lo(D_802A1544)($v1)
/* 1DC34 8001D034 000220C0 */  sll        $a0, $v0, 3
/* 1DC38 8001D038 00822021 */  addu       $a0, $a0, $v0
/* 1DC3C 8001D03C 00041100 */  sll        $v0, $a0, 4
/* 1DC40 8001D040 00822021 */  addu       $a0, $a0, $v0
/* 1DC44 8001D044 00042080 */  sll        $a0, $a0, 2
/* 1DC48 8001D048 0C00744E */  jal        func_8001D138
/* 1DC4C 8001D04C 00642021 */   addu      $a0, $v1, $a0
/* 1DC50 8001D050 08007443 */  j          .L8001D10C
/* 1DC54 8001D054 02002021 */   addu      $a0, $s0, $zero
.L8001D058:
/* 1DC58 8001D058 3C03803F */  lui        $v1, %hi(D_803ED3DE)
/* 1DC5C 8001D05C 9063D3DE */  lbu        $v1, %lo(D_803ED3DE)($v1)
/* 1DC60 8001D060 8E020040 */  lw         $v0, 0x40($s0)
/* 1DC64 8001D064 14620013 */  bne        $v1, $v0, .L8001D0B4
/* 1DC68 8001D068 3C0280A0 */   lui       $v0, (0x80A0A0FF >> 16)
/* 1DC6C 8001D06C 8E02000C */  lw         $v0, 0xC($s0)
/* 1DC70 8001D070 1040000E */  beqz       $v0, .L8001D0AC
/* 1DC74 8001D074 2403FFFF */   addiu     $v1, $zero, -0x1
/* 1DC78 8001D078 0C0042AA */  jal        func_80010AA8
/* 1DC7C 8001D07C 00000000 */   nop
/* 1DC80 8001D080 8E03000C */  lw         $v1, 0xC($s0)
/* 1DC84 8001D084 54430009 */  bnel       $v0, $v1, .L8001D0AC
/* 1DC88 8001D088 2403FFFF */   addiu     $v1, $zero, -0x1
/* 1DC8C 8001D08C 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 1DC90 8001D090 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 1DC94 8001D094 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 1DC98 8001D098 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 1DC9C 8001D09C 00021E00 */  sll        $v1, $v0, 24
/* 1DCA0 8001D0A0 00021200 */  sll        $v0, $v0, 8
/* 1DCA4 8001D0A4 00441025 */  or         $v0, $v0, $a0
/* 1DCA8 8001D0A8 00621825 */  or         $v1, $v1, $v0
.L8001D0AC:
/* 1DCAC 8001D0AC 0800742F */  j          .L8001D0BC
/* 1DCB0 8001D0B0 AE03002C */   sw        $v1, 0x2C($s0)
.L8001D0B4:
/* 1DCB4 8001D0B4 3442A0FF */  ori        $v0, $v0, (0x80A0A0FF & 0xFFFF)
/* 1DCB8 8001D0B8 AE02002C */  sw         $v0, 0x2C($s0)
.L8001D0BC:
/* 1DCBC 8001D0BC 8E030040 */  lw         $v1, 0x40($s0)
/* 1DCC0 8001D0C0 3C04802A */  lui        $a0, %hi(D_802A1544)
/* 1DCC4 8001D0C4 8C841544 */  lw         $a0, %lo(D_802A1544)($a0)
/* 1DCC8 8001D0C8 000310C0 */  sll        $v0, $v1, 3
/* 1DCCC 8001D0CC 00431021 */  addu       $v0, $v0, $v1
/* 1DCD0 8001D0D0 00021900 */  sll        $v1, $v0, 4
/* 1DCD4 8001D0D4 00431021 */  addu       $v0, $v0, $v1
/* 1DCD8 8001D0D8 00021080 */  sll        $v0, $v0, 2
/* 1DCDC 8001D0DC 00442021 */  addu       $a0, $v0, $a0
/* 1DCE0 8001D0E0 80820000 */  lb         $v0, 0x0($a0)
/* 1DCE4 8001D0E4 3C03800D */  lui        $v1, %hi(D_800CEE2C)
/* 1DCE8 8001D0E8 2463EE2C */  addiu      $v1, $v1, %lo(D_800CEE2C)
/* 1DCEC 8001D0EC 54400001 */  bnel       $v0, $zero, .L8001D0F4
/* 1DCF0 8001D0F0 00801821 */   addu      $v1, $a0, $zero
.L8001D0F4:
/* 1DCF4 8001D0F4 08007442 */  j          .L8001D108
/* 1DCF8 8001D0F8 AE030024 */   sw        $v1, 0x24($s0)
.L8001D0FC:
/* 1DCFC 8001D0FC 3C02800D */  lui        $v0, %hi(D_800CEE2C)
/* 1DD00 8001D100 2442EE2C */  addiu      $v0, $v0, %lo(D_800CEE2C)
/* 1DD04 8001D104 AE020024 */  sw         $v0, 0x24($s0)
.L8001D108:
/* 1DD08 8001D108 02002021 */  addu       $a0, $s0, $zero
.L8001D10C:
/* 1DD0C 8001D10C 02202821 */  addu       $a1, $s1, $zero
/* 1DD10 8001D110 02403021 */  addu       $a2, $s2, $zero
/* 1DD14 8001D114 0C00487F */  jal        func_800121FC
/* 1DD18 8001D118 02603821 */   addu      $a3, $s3, $zero
/* 1DD1C 8001D11C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1DD20 8001D120 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1DD24 8001D124 8FB20018 */  lw         $s2, 0x18($sp)
/* 1DD28 8001D128 8FB10014 */  lw         $s1, 0x14($sp)
/* 1DD2C 8001D12C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1DD30 8001D130 03E00008 */  jr         $ra
/* 1DD34 8001D134 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001D138
/* 1DD38 8001D138 3C03803F */  lui        $v1, %hi(D_803ED3DE)
/* 1DD3C 8001D13C 9063D3DE */  lbu        $v1, %lo(D_803ED3DE)($v1)
/* 1DD40 8001D140 3C01800B */  lui        $at, %hi(D_800B4D6C)
/* 1DD44 8001D144 AC244D6C */  sw         $a0, %lo(D_800B4D6C)($at)
/* 1DD48 8001D148 3C04802A */  lui        $a0, %hi(D_802A1544)
/* 1DD4C 8001D14C 8C841544 */  lw         $a0, %lo(D_802A1544)($a0)
/* 1DD50 8001D150 000310C0 */  sll        $v0, $v1, 3
/* 1DD54 8001D154 00431021 */  addu       $v0, $v0, $v1
/* 1DD58 8001D158 00021900 */  sll        $v1, $v0, 4
/* 1DD5C 8001D15C 00431021 */  addu       $v0, $v0, $v1
/* 1DD60 8001D160 00021080 */  sll        $v0, $v0, 2
/* 1DD64 8001D164 00441021 */  addu       $v0, $v0, $a0
/* 1DD68 8001D168 80420000 */  lb         $v0, 0x0($v0)
/* 1DD6C 8001D16C 10400008 */  beqz       $v0, .L8001D190
/* 1DD70 8001D170 3C03E0E0 */   lui       $v1, (0xE0E0E0FF >> 16)
/* 1DD74 8001D174 3463E0FF */  ori        $v1, $v1, (0xE0E0E0FF & 0xFFFF)
/* 1DD78 8001D178 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1DD7C 8001D17C 3C01800B */  lui        $at, %hi(D_800B4D24)
/* 1DD80 8001D180 AC224D24 */  sw         $v0, %lo(D_800B4D24)($at)
/* 1DD84 8001D184 3C01800B */  lui        $at, %hi(D_800B4D14)
/* 1DD88 8001D188 08007468 */  j          .L8001D1A0
/* 1DD8C 8001D18C AC234D14 */   sw        $v1, %lo(D_800B4D14)($at)
.L8001D190:
/* 1DD90 8001D190 3C01800B */  lui        $at, %hi(D_800B4D14)
/* 1DD94 8001D194 AC204D14 */  sw         $zero, %lo(D_800B4D14)($at)
/* 1DD98 8001D198 3C01800B */  lui        $at, %hi(D_800B4D24)
/* 1DD9C 8001D19C AC204D24 */  sw         $zero, %lo(D_800B4D24)($at)
.L8001D1A0:
/* 1DDA0 8001D1A0 03E00008 */  jr         $ra
/* 1DDA4 8001D1A4 00000000 */   nop

glabel func_8001D1A8
/* 1DDA8 8001D1A8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1DDAC 8001D1AC AFB00010 */  sw         $s0, 0x10($sp)
/* 1DDB0 8001D1B0 00808021 */  addu       $s0, $a0, $zero
/* 1DDB4 8001D1B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1DDB8 8001D1B8 00A08821 */  addu       $s1, $a1, $zero
/* 1DDBC 8001D1BC AFB20018 */  sw         $s2, 0x18($sp)
/* 1DDC0 8001D1C0 00C09021 */  addu       $s2, $a2, $zero
/* 1DDC4 8001D1C4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1DDC8 8001D1C8 00E09821 */  addu       $s3, $a3, $zero
/* 1DDCC 8001D1CC 2402000B */  addiu      $v0, $zero, 0xB
/* 1DDD0 8001D1D0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1DDD4 8001D1D4 12220060 */  beq        $s1, $v0, .L8001D358
/* 1DDD8 8001D1D8 AFB40020 */   sw        $s4, 0x20($sp)
/* 1DDDC 8001D1DC 2E22000C */  sltiu      $v0, $s1, 0xC
/* 1DDE0 8001D1E0 10400005 */  beqz       $v0, .L8001D1F8
/* 1DDE4 8001D1E4 2414000C */   addiu     $s4, $zero, 0xC
/* 1DDE8 8001D1E8 12200009 */  beqz       $s1, .L8001D210
/* 1DDEC 8001D1EC 02002021 */   addu      $a0, $s0, $zero
/* 1DDF0 8001D1F0 08007512 */  j          .L8001D448
/* 1DDF4 8001D1F4 00000000 */   nop
.L8001D1F8:
/* 1DDF8 8001D1F8 1234008D */  beq        $s1, $s4, .L8001D430
/* 1DDFC 8001D1FC 2402000F */   addiu     $v0, $zero, 0xF
/* 1DE00 8001D200 12220015 */  beq        $s1, $v0, .L8001D258
/* 1DE04 8001D204 02002021 */   addu      $a0, $s0, $zero
/* 1DE08 8001D208 08007513 */  j          .L8001D44C
/* 1DE0C 8001D20C 02202821 */   addu      $a1, $s1, $zero
.L8001D210:
/* 1DE10 8001D210 0C000ED9 */  jal        func_80003B64
/* 1DE14 8001D214 00000000 */   nop
/* 1DE18 8001D218 3C02802A */  lui        $v0, %hi(D_802A1568)
/* 1DE1C 8001D21C 8C421568 */  lw         $v0, %lo(D_802A1568)($v0)
/* 1DE20 8001D220 3C01802A */  lui        $at, %hi(D_802A1540)
/* 1DE24 8001D224 AC201540 */  sw         $zero, %lo(D_802A1540)($at)
/* 1DE28 8001D228 10400006 */  beqz       $v0, .L8001D244
/* 1DE2C 8001D22C 02002021 */   addu      $a0, $s0, $zero
/* 1DE30 8001D230 3C02800D */  lui        $v0, %hi(D_800CEE14)
/* 1DE34 8001D234 2442EE14 */  addiu      $v0, $v0, %lo(D_800CEE14)
/* 1DE38 8001D238 3C01800B */  lui        $at, %hi(D_800B4C84)
/* 1DE3C 8001D23C 08007512 */  j          .L8001D448
/* 1DE40 8001D240 AC224C84 */   sw        $v0, %lo(D_800B4C84)($at)
.L8001D244:
/* 1DE44 8001D244 3C02800D */  lui        $v0, %hi(D_800CEE20)
/* 1DE48 8001D248 2442EE20 */  addiu      $v0, $v0, %lo(D_800CEE20)
/* 1DE4C 8001D24C 3C01800B */  lui        $at, %hi(D_800B4C84)
/* 1DE50 8001D250 08007512 */  j          .L8001D448
/* 1DE54 8001D254 AC224C84 */   sw        $v0, %lo(D_800B4C84)($at)
.L8001D258:
/* 1DE58 8001D258 3C02803F */  lui        $v0, %hi(D_803ED3DE)
/* 1DE5C 8001D25C 9042D3DE */  lbu        $v0, %lo(D_803ED3DE)($v0)
/* 1DE60 8001D260 8E030010 */  lw         $v1, 0x10($s0)
/* 1DE64 8001D264 00021080 */  sll        $v0, $v0, 2
/* 1DE68 8001D268 00431021 */  addu       $v0, $v0, $v1
/* 1DE6C 8001D26C 8C460000 */  lw         $a2, 0x0($v0)
/* 1DE70 8001D270 8E020000 */  lw         $v0, 0x0($s0)
/* 1DE74 8001D274 24050007 */  addiu      $a1, $zero, 0x7
/* 1DE78 8001D278 0040F809 */  jalr       $v0
/* 1DE7C 8001D27C 00003821 */   addu      $a3, $zero, $zero
/* 1DE80 8001D280 2402000D */  addiu      $v0, $zero, 0xD
/* 1DE84 8001D284 12420026 */  beq        $s2, $v0, .L8001D320
/* 1DE88 8001D288 2A42000E */   slti      $v0, $s2, 0xE
/* 1DE8C 8001D28C 10400005 */  beqz       $v0, .L8001D2A4
/* 1DE90 8001D290 00000000 */   nop
/* 1DE94 8001D294 12540029 */  beq        $s2, $s4, .L8001D33C
/* 1DE98 8001D298 02002021 */   addu      $a0, $s0, $zero
/* 1DE9C 8001D29C 08007512 */  j          .L8001D448
/* 1DEA0 8001D2A0 00000000 */   nop
.L8001D2A4:
/* 1DEA4 8001D2A4 16510068 */  bne        $s2, $s1, .L8001D448
/* 1DEA8 8001D2A8 02002021 */   addu      $a0, $s0, $zero
/* 1DEAC 8001D2AC 3C03802A */  lui        $v1, %hi(D_802A1540)
/* 1DEB0 8001D2B0 8C631540 */  lw         $v1, %lo(D_802A1540)($v1)
/* 1DEB4 8001D2B4 24020001 */  addiu      $v0, $zero, 0x1
/* 1DEB8 8001D2B8 10620012 */  beq        $v1, $v0, .L8001D304
/* 1DEBC 8001D2BC 00000000 */   nop
/* 1DEC0 8001D2C0 10600061 */  beqz       $v1, .L8001D448
/* 1DEC4 8001D2C4 24020002 */   addiu     $v0, $zero, 0x2
/* 1DEC8 8001D2C8 10620005 */  beq        $v1, $v0, .L8001D2E0
/* 1DECC 8001D2CC 24020003 */   addiu     $v0, $zero, 0x3
/* 1DED0 8001D2D0 1062000C */  beq        $v1, $v0, .L8001D304
/* 1DED4 8001D2D4 02202821 */   addu      $a1, $s1, $zero
/* 1DED8 8001D2D8 08007513 */  j          .L8001D44C
/* 1DEDC 8001D2DC 00000000 */   nop
.L8001D2E0:
/* 1DEE0 8001D2E0 12600054 */  beqz       $s3, .L8001D434
/* 1DEE4 8001D2E4 02002021 */   addu      $a0, $s0, $zero
/* 1DEE8 8001D2E8 3C01803F */  lui        $at, %hi(D_803ED3C8)
/* 1DEEC 8001D2EC 0C000F68 */  jal        func_80003DA0
/* 1DEF0 8001D2F0 AC23D3C8 */   sw        $v1, %lo(D_803ED3C8)($at)
/* 1DEF4 8001D2F4 0C0045BC */  jal        func_800116F0
/* 1DEF8 8001D2F8 00000000 */   nop
.L8001D2FC:
/* 1DEFC 8001D2FC 08007516 */  j          .L8001D458
/* 1DF00 8001D300 24020001 */   addiu     $v0, $zero, 0x1
.L8001D304:
/* 1DF04 8001D304 16600054 */  bnez       $s3, .L8001D458
/* 1DF08 8001D308 24020001 */   addiu     $v0, $zero, 0x1
/* 1DF0C 8001D30C 02002021 */  addu       $a0, $s0, $zero
/* 1DF10 8001D310 0C004204 */  jal        func_80010810
/* 1DF14 8001D314 00002821 */   addu      $a1, $zero, $zero
/* 1DF18 8001D318 08007516 */  j          .L8001D458
/* 1DF1C 8001D31C 24020001 */   addiu     $v0, $zero, 0x1
.L8001D320:
/* 1DF20 8001D320 12600048 */  beqz       $s3, .L8001D444
/* 1DF24 8001D324 24020003 */   addiu     $v0, $zero, 0x3
/* 1DF28 8001D328 3C01802A */  lui        $at, %hi(D_802A1540)
/* 1DF2C 8001D32C AC221540 */  sw         $v0, %lo(D_802A1540)($at)
/* 1DF30 8001D330 3C048002 */  lui        $a0, %hi(func_8001C9C8)
/* 1DF34 8001D334 08007508 */  j          .L8001D420
/* 1DF38 8001D338 2484C9C8 */   addiu     $a0, $a0, %lo(func_8001C9C8)
.L8001D33C:
/* 1DF3C 8001D33C 12600041 */  beqz       $s3, .L8001D444
/* 1DF40 8001D340 24020001 */   addiu     $v0, $zero, 0x1
/* 1DF44 8001D344 3C01802A */  lui        $at, %hi(D_802A1540)
/* 1DF48 8001D348 AC221540 */  sw         $v0, %lo(D_802A1540)($at)
/* 1DF4C 8001D34C 3C048002 */  lui        $a0, %hi(func_8001C900)
/* 1DF50 8001D350 08007508 */  j          .L8001D420
/* 1DF54 8001D354 2484C900 */   addiu     $a0, $a0, %lo(func_8001C900)
.L8001D358:
/* 1DF58 8001D358 8E030018 */  lw         $v1, 0x18($s0)
/* 1DF5C 8001D35C 3C02800B */  lui        $v0, %hi(D_800B4CE8)
/* 1DF60 8001D360 24424CE8 */  addiu      $v0, $v0, %lo(D_800B4CE8)
/* 1DF64 8001D364 10620012 */  beq        $v1, $v0, .L8001D3B0
/* 1DF68 8001D368 2404000D */   addiu     $a0, $zero, 0xD
/* 1DF6C 8001D36C 3C02802A */  lui        $v0, %hi(D_802A1568)
/* 1DF70 8001D370 8C421568 */  lw         $v0, %lo(D_802A1568)($v0)
/* 1DF74 8001D374 10400019 */  beqz       $v0, .L8001D3DC
/* 1DF78 8001D378 00000000 */   nop
/* 1DF7C 8001D37C 3C03803F */  lui        $v1, %hi(D_803ED3DE)
/* 1DF80 8001D380 9063D3DE */  lbu        $v1, %lo(D_803ED3DE)($v1)
/* 1DF84 8001D384 3C04802A */  lui        $a0, %hi(D_802A1544)
/* 1DF88 8001D388 8C841544 */  lw         $a0, %lo(D_802A1544)($a0)
/* 1DF8C 8001D38C 000310C0 */  sll        $v0, $v1, 3
/* 1DF90 8001D390 00431021 */  addu       $v0, $v0, $v1
/* 1DF94 8001D394 00021900 */  sll        $v1, $v0, 4
/* 1DF98 8001D398 00431021 */  addu       $v0, $v0, $v1
/* 1DF9C 8001D39C 00021080 */  sll        $v0, $v0, 2
/* 1DFA0 8001D3A0 00441021 */  addu       $v0, $v0, $a0
/* 1DFA4 8001D3A4 80420000 */  lb         $v0, 0x0($v0)
/* 1DFA8 8001D3A8 10400006 */  beqz       $v0, .L8001D3C4
/* 1DFAC 8001D3AC 2404000C */   addiu     $a0, $zero, 0xC
.L8001D3B0:
/* 1DFB0 8001D3B0 00002821 */  addu       $a1, $zero, $zero
/* 1DFB4 8001D3B4 0C0041BA */  jal        func_800106E8
/* 1DFB8 8001D3B8 00003021 */   addu      $a2, $zero, $zero
/* 1DFBC 8001D3BC 08007516 */  j          .L8001D458
/* 1DFC0 8001D3C0 24020001 */   addiu     $v0, $zero, 0x1
.L8001D3C4:
/* 1DFC4 8001D3C4 24020001 */  addiu      $v0, $zero, 0x1
/* 1DFC8 8001D3C8 3C01802A */  lui        $at, %hi(D_802A1540)
/* 1DFCC 8001D3CC AC221540 */  sw         $v0, %lo(D_802A1540)($at)
/* 1DFD0 8001D3D0 3C048002 */  lui        $a0, %hi(func_8001C900)
/* 1DFD4 8001D3D4 08007508 */  j          .L8001D420
/* 1DFD8 8001D3D8 2484C900 */   addiu     $a0, $a0, %lo(func_8001C900)
.L8001D3DC:
/* 1DFDC 8001D3DC 3C03803F */  lui        $v1, %hi(D_803ED3DE)
/* 1DFE0 8001D3E0 9063D3DE */  lbu        $v1, %lo(D_803ED3DE)($v1)
/* 1DFE4 8001D3E4 3C04802A */  lui        $a0, %hi(D_802A1544)
/* 1DFE8 8001D3E8 8C841544 */  lw         $a0, %lo(D_802A1544)($a0)
/* 1DFEC 8001D3EC 000310C0 */  sll        $v0, $v1, 3
/* 1DFF0 8001D3F0 00431021 */  addu       $v0, $v0, $v1
/* 1DFF4 8001D3F4 00021900 */  sll        $v1, $v0, 4
/* 1DFF8 8001D3F8 00431021 */  addu       $v0, $v0, $v1
/* 1DFFC 8001D3FC 00021080 */  sll        $v0, $v0, 2
/* 1E000 8001D400 00441021 */  addu       $v0, $v0, $a0
/* 1E004 8001D404 80420000 */  lb         $v0, 0x0($v0)
/* 1E008 8001D408 1040FFBC */  beqz       $v0, .L8001D2FC
/* 1E00C 8001D40C 24020002 */   addiu     $v0, $zero, 0x2
/* 1E010 8001D410 3C01802A */  lui        $at, %hi(D_802A1540)
/* 1E014 8001D414 AC221540 */  sw         $v0, %lo(D_802A1540)($at)
/* 1E018 8001D418 3C048002 */  lui        $a0, %hi(func_8001C97C)
/* 1E01C 8001D41C 2484C97C */  addiu      $a0, $a0, %lo(func_8001C97C)
.L8001D420:
/* 1E020 8001D420 0C007D8B */  jal        func_8001F62C
/* 1E024 8001D424 00000000 */   nop
/* 1E028 8001D428 08007516 */  j          .L8001D458
/* 1E02C 8001D42C 24020001 */   addiu     $v0, $zero, 0x1
.L8001D430:
/* 1E030 8001D430 02002021 */  addu       $a0, $s0, $zero
.L8001D434:
/* 1E034 8001D434 0C004204 */  jal        func_80010810
/* 1E038 8001D438 00002821 */   addu      $a1, $zero, $zero
/* 1E03C 8001D43C 08007516 */  j          .L8001D458
/* 1E040 8001D440 24020001 */   addiu     $v0, $zero, 0x1
.L8001D444:
/* 1E044 8001D444 02002021 */  addu       $a0, $s0, $zero
.L8001D448:
/* 1E048 8001D448 02202821 */  addu       $a1, $s1, $zero
.L8001D44C:
/* 1E04C 8001D44C 02403021 */  addu       $a2, $s2, $zero
/* 1E050 8001D450 0C0045DC */  jal        func_80011770
/* 1E054 8001D454 02603821 */   addu      $a3, $s3, $zero
.L8001D458:
/* 1E058 8001D458 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1E05C 8001D45C 8FB40020 */  lw         $s4, 0x20($sp)
/* 1E060 8001D460 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1E064 8001D464 8FB20018 */  lw         $s2, 0x18($sp)
/* 1E068 8001D468 8FB10014 */  lw         $s1, 0x14($sp)
/* 1E06C 8001D46C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1E070 8001D470 03E00008 */  jr         $ra
/* 1E074 8001D474 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001D478
/* 1E078 8001D478 80820000 */  lb         $v0, 0x0($a0)
/* 1E07C 8001D47C 10400004 */  beqz       $v0, .L8001D490
/* 1E080 8001D480 24840001 */   addiu     $a0, $a0, 0x1
.L8001D484:
/* 1E084 8001D484 80820000 */  lb         $v0, 0x0($a0)
/* 1E088 8001D488 1440FFFE */  bnez       $v0, .L8001D484
/* 1E08C 8001D48C 24840001 */   addiu     $a0, $a0, 0x1
.L8001D490:
/* 1E090 8001D490 80820000 */  lb         $v0, 0x0($a0)
/* 1E094 8001D494 0002102B */  sltu       $v0, $zero, $v0
/* 1E098 8001D498 00021023 */  negu       $v0, $v0
/* 1E09C 8001D49C 03E00008 */  jr         $ra
/* 1E0A0 8001D4A0 00821024 */   and       $v0, $a0, $v0

glabel func_8001D4A4
/* 1E0A4 8001D4A4 3C02802A */  lui        $v0, %hi(D_802A156C)
/* 1E0A8 8001D4A8 8C42156C */  lw         $v0, %lo(D_802A156C)($v0)
/* 1E0AC 8001D4AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E0B0 8001D4B0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1E0B4 8001D4B4 00808021 */  addu       $s0, $a0, $zero
/* 1E0B8 8001D4B8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1E0BC 8001D4BC 10400009 */  beqz       $v0, .L8001D4E4
/* 1E0C0 8001D4C0 AFB10014 */   sw        $s1, 0x14($sp)
/* 1E0C4 8001D4C4 2411FFFF */  addiu      $s1, $zero, -0x1
/* 1E0C8 8001D4C8 2610FFFF */  addiu      $s0, $s0, -0x1
.L8001D4CC:
/* 1E0CC 8001D4CC 12110005 */  beq        $s0, $s1, .L8001D4E4
/* 1E0D0 8001D4D0 00000000 */   nop
/* 1E0D4 8001D4D4 0C00751E */  jal        func_8001D478
/* 1E0D8 8001D4D8 00402021 */   addu      $a0, $v0, $zero
/* 1E0DC 8001D4DC 1440FFFB */  bnez       $v0, .L8001D4CC
/* 1E0E0 8001D4E0 2610FFFF */   addiu     $s0, $s0, -0x1
.L8001D4E4:
/* 1E0E4 8001D4E4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1E0E8 8001D4E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1E0EC 8001D4EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1E0F0 8001D4F0 03E00008 */  jr         $ra
/* 1E0F4 8001D4F4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001D4F8
/* 1E0F8 8001D4F8 3C02802A */  lui        $v0, %hi(D_802A156C)
/* 1E0FC 8001D4FC 8C42156C */  lw         $v0, %lo(D_802A156C)($v0)
/* 1E100 8001D500 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E104 8001D504 AFB00010 */  sw         $s0, 0x10($sp)
/* 1E108 8001D508 00008021 */  addu       $s0, $zero, $zero
/* 1E10C 8001D50C 10400005 */  beqz       $v0, .L8001D524
/* 1E110 8001D510 AFBF0014 */   sw        $ra, 0x14($sp)
.L8001D514:
/* 1E114 8001D514 0C00751E */  jal        func_8001D478
/* 1E118 8001D518 00402021 */   addu      $a0, $v0, $zero
/* 1E11C 8001D51C 1440FFFD */  bnez       $v0, .L8001D514
/* 1E120 8001D520 26100001 */   addiu     $s0, $s0, 0x1
.L8001D524:
/* 1E124 8001D524 02001021 */  addu       $v0, $s0, $zero
/* 1E128 8001D528 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E12C 8001D52C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1E130 8001D530 03E00008 */  jr         $ra
/* 1E134 8001D534 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001D538
/* 1E138 8001D538 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1E13C 8001D53C AFB00038 */  sw         $s0, 0x38($sp)
/* 1E140 8001D540 00808021 */  addu       $s0, $a0, $zero
/* 1E144 8001D544 AFB1003C */  sw         $s1, 0x3C($sp)
/* 1E148 8001D548 00C08821 */  addu       $s1, $a2, $zero
/* 1E14C 8001D54C 24020086 */  addiu      $v0, $zero, 0x86
/* 1E150 8001D550 10A20006 */  beq        $a1, $v0, .L8001D56C
/* 1E154 8001D554 AFBF0040 */   sw        $ra, 0x40($sp)
/* 1E158 8001D558 2402008A */  addiu      $v0, $zero, 0x8A
/* 1E15C 8001D55C 10A20069 */  beq        $a1, $v0, .L8001D704
/* 1E160 8001D560 02002021 */   addu      $a0, $s0, $zero
/* 1E164 8001D564 080075D9 */  j          .L8001D764
/* 1E168 8001D568 00000000 */   nop
.L8001D56C:
/* 1E16C 8001D56C 8E020040 */  lw         $v0, 0x40($s0)
/* 1E170 8001D570 04410007 */  bgez       $v0, .L8001D590
/* 1E174 8001D574 00000000 */   nop
/* 1E178 8001D578 8E02000C */  lw         $v0, 0xC($s0)
/* 1E17C 8001D57C 8C420030 */  lw         $v0, 0x30($v0)
/* 1E180 8001D580 1C40000B */  bgtz       $v0, .L8001D5B0
/* 1E184 8001D584 24020001 */   addiu     $v0, $zero, 0x1
/* 1E188 8001D588 080075DB */  j          .L8001D76C
/* 1E18C 8001D58C 00000000 */   nop
.L8001D590:
/* 1E190 8001D590 8E02000C */  lw         $v0, 0xC($s0)
/* 1E194 8001D594 8C420030 */  lw         $v0, 0x30($v0)
/* 1E198 8001D598 3C03802A */  lui        $v1, %hi(D_802A1570)
/* 1E19C 8001D59C 8C631570 */  lw         $v1, %lo(D_802A1570)($v1)
/* 1E1A0 8001D5A0 24420004 */  addiu      $v0, $v0, 0x4
/* 1E1A4 8001D5A4 0043102A */  slt        $v0, $v0, $v1
/* 1E1A8 8001D5A8 10400070 */  beqz       $v0, .L8001D76C
/* 1E1AC 8001D5AC 24020001 */   addiu     $v0, $zero, 0x1
.L8001D5B0:
/* 1E1B0 8001D5B0 8E02000C */  lw         $v0, 0xC($s0)
/* 1E1B4 8001D5B4 1040006D */  beqz       $v0, .L8001D76C
/* 1E1B8 8001D5B8 24020001 */   addiu     $v0, $zero, 0x1
/* 1E1BC 8001D5BC 0C0042AA */  jal        func_80010AA8
/* 1E1C0 8001D5C0 00000000 */   nop
/* 1E1C4 8001D5C4 8E03000C */  lw         $v1, 0xC($s0)
/* 1E1C8 8001D5C8 14430068 */  bne        $v0, $v1, .L8001D76C
/* 1E1CC 8001D5CC 24020001 */   addiu     $v0, $zero, 0x1
/* 1E1D0 8001D5D0 96020004 */  lhu        $v0, 0x4($s0)
/* 1E1D4 8001D5D4 A7A20018 */  sh         $v0, 0x18($sp)
/* 1E1D8 8001D5D8 96020006 */  lhu        $v0, 0x6($s0)
/* 1E1DC 8001D5DC A7A2001A */  sh         $v0, 0x1A($sp)
/* 1E1E0 8001D5E0 8E020038 */  lw         $v0, 0x38($s0)
/* 1E1E4 8001D5E4 0C005C85 */  jal        func_80017214
/* 1E1E8 8001D5E8 8C440000 */   lw        $a0, 0x0($v0)
/* 1E1EC 8001D5EC 96030004 */  lhu        $v1, 0x4($s0)
/* 1E1F0 8001D5F0 00621821 */  addu       $v1, $v1, $v0
/* 1E1F4 8001D5F4 A7A3001C */  sh         $v1, 0x1C($sp)
/* 1E1F8 8001D5F8 8E020038 */  lw         $v0, 0x38($s0)
/* 1E1FC 8001D5FC 0C005C8D */  jal        func_80017234
/* 1E200 8001D600 8C440000 */   lw        $a0, 0x0($v0)
/* 1E204 8001D604 96060006 */  lhu        $a2, 0x6($s0)
/* 1E208 8001D608 00C23021 */  addu       $a2, $a2, $v0
/* 1E20C 8001D60C A7A6001E */  sh         $a2, 0x1E($sp)
/* 1E210 8001D610 86030004 */  lh         $v1, 0x4($s0)
/* 1E214 8001D614 86020008 */  lh         $v0, 0x8($s0)
/* 1E218 8001D618 87A5001C */  lh         $a1, 0x1C($sp)
/* 1E21C 8001D61C 87A70018 */  lh         $a3, 0x18($sp)
/* 1E220 8001D620 00621821 */  addu       $v1, $v1, $v0
/* 1E224 8001D624 000317C2 */  srl        $v0, $v1, 31
/* 1E228 8001D628 00621821 */  addu       $v1, $v1, $v0
/* 1E22C 8001D62C 00031843 */  sra        $v1, $v1, 1
/* 1E230 8001D630 00A71023 */  subu       $v0, $a1, $a3
/* 1E234 8001D634 000227C2 */  srl        $a0, $v0, 31
/* 1E238 8001D638 00441021 */  addu       $v0, $v0, $a0
/* 1E23C 8001D63C 00021043 */  sra        $v0, $v0, 1
/* 1E240 8001D640 00621823 */  subu       $v1, $v1, $v0
/* 1E244 8001D644 00A32821 */  addu       $a1, $a1, $v1
/* 1E248 8001D648 00A72823 */  subu       $a1, $a1, $a3
/* 1E24C 8001D64C A7A5001C */  sh         $a1, 0x1C($sp)
/* 1E250 8001D650 A7A30018 */  sh         $v1, 0x18($sp)
/* 1E254 8001D654 86030006 */  lh         $v1, 0x6($s0)
/* 1E258 8001D658 8602000A */  lh         $v0, 0xA($s0)
/* 1E25C 8001D65C 87A5001A */  lh         $a1, 0x1A($sp)
/* 1E260 8001D660 00621821 */  addu       $v1, $v1, $v0
/* 1E264 8001D664 000317C2 */  srl        $v0, $v1, 31
/* 1E268 8001D668 00621821 */  addu       $v1, $v1, $v0
/* 1E26C 8001D66C 00031843 */  sra        $v1, $v1, 1
/* 1E270 8001D670 00061400 */  sll        $v0, $a2, 16
/* 1E274 8001D674 00021403 */  sra        $v0, $v0, 16
/* 1E278 8001D678 00451023 */  subu       $v0, $v0, $a1
/* 1E27C 8001D67C 000227C2 */  srl        $a0, $v0, 31
/* 1E280 8001D680 00441021 */  addu       $v0, $v0, $a0
/* 1E284 8001D684 00021043 */  sra        $v0, $v0, 1
/* 1E288 8001D688 00621823 */  subu       $v1, $v1, $v0
/* 1E28C 8001D68C 00C33021 */  addu       $a2, $a2, $v1
/* 1E290 8001D690 00C53023 */  subu       $a2, $a2, $a1
/* 1E294 8001D694 A7A6001E */  sh         $a2, 0x1E($sp)
/* 1E298 8001D698 A7A3001A */  sh         $v1, 0x1A($sp)
/* 1E29C 8001D69C 8E02000C */  lw         $v0, 0xC($s0)
/* 1E2A0 8001D6A0 1040000E */  beqz       $v0, .L8001D6DC
/* 1E2A4 8001D6A4 2406FFFF */   addiu     $a2, $zero, -0x1
/* 1E2A8 8001D6A8 0C0042AA */  jal        func_80010AA8
/* 1E2AC 8001D6AC 00000000 */   nop
/* 1E2B0 8001D6B0 8E03000C */  lw         $v1, 0xC($s0)
/* 1E2B4 8001D6B4 14430009 */  bne        $v0, $v1, .L8001D6DC
/* 1E2B8 8001D6B8 2406FFFF */   addiu     $a2, $zero, -0x1
/* 1E2BC 8001D6BC 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 1E2C0 8001D6C0 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 1E2C4 8001D6C4 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 1E2C8 8001D6C8 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 1E2CC 8001D6CC 00021E00 */  sll        $v1, $v0, 24
/* 1E2D0 8001D6D0 00021200 */  sll        $v0, $v0, 8
/* 1E2D4 8001D6D4 00441025 */  or         $v0, $v0, $a0
/* 1E2D8 8001D6D8 00623025 */  or         $a2, $v1, $v0
.L8001D6DC:
/* 1E2DC 8001D6DC 8E020038 */  lw         $v0, 0x38($s0)
/* 1E2E0 8001D6E0 87A70018 */  lh         $a3, 0x18($sp)
/* 1E2E4 8001D6E4 8C450000 */  lw         $a1, 0x0($v0)
/* 1E2E8 8001D6E8 87A2001A */  lh         $v0, 0x1A($sp)
/* 1E2EC 8001D6EC 02202021 */  addu       $a0, $s1, $zero
/* 1E2F0 8001D6F0 AFA00014 */  sw         $zero, 0x14($sp)
/* 1E2F4 8001D6F4 0C005A35 */  jal        func_800168D4
/* 1E2F8 8001D6F8 AFA20010 */   sw        $v0, 0x10($sp)
/* 1E2FC 8001D6FC 080075DB */  j          .L8001D76C
/* 1E300 8001D700 24020001 */   addiu     $v0, $zero, 0x1
.L8001D704:
/* 1E304 8001D704 8E020040 */  lw         $v0, 0x40($s0)
/* 1E308 8001D708 04410007 */  bgez       $v0, .L8001D728
/* 1E30C 8001D70C 00000000 */   nop
/* 1E310 8001D710 8E02000C */  lw         $v0, 0xC($s0)
/* 1E314 8001D714 8C420030 */  lw         $v0, 0x30($v0)
/* 1E318 8001D718 1C40000B */  bgtz       $v0, .L8001D748
/* 1E31C 8001D71C 00000000 */   nop
/* 1E320 8001D720 080075DB */  j          .L8001D76C
/* 1E324 8001D724 00001021 */   addu      $v0, $zero, $zero
.L8001D728:
/* 1E328 8001D728 8E02000C */  lw         $v0, 0xC($s0)
/* 1E32C 8001D72C 8C420030 */  lw         $v0, 0x30($v0)
/* 1E330 8001D730 3C03802A */  lui        $v1, %hi(D_802A1570)
/* 1E334 8001D734 8C631570 */  lw         $v1, %lo(D_802A1570)($v1)
/* 1E338 8001D738 24420004 */  addiu      $v0, $v0, 0x4
/* 1E33C 8001D73C 0043102A */  slt        $v0, $v0, $v1
/* 1E340 8001D740 5040000A */  beql       $v0, $zero, .L8001D76C
/* 1E344 8001D744 00001021 */   addu      $v0, $zero, $zero
.L8001D748:
/* 1E348 8001D748 8E02000C */  lw         $v0, 0xC($s0)
/* 1E34C 8001D74C 8E040040 */  lw         $a0, 0x40($s0)
/* 1E350 8001D750 8C430030 */  lw         $v1, 0x30($v0)
/* 1E354 8001D754 00641821 */  addu       $v1, $v1, $a0
/* 1E358 8001D758 AC430030 */  sw         $v1, 0x30($v0)
/* 1E35C 8001D75C 080075DB */  j          .L8001D76C
/* 1E360 8001D760 00001021 */   addu      $v0, $zero, $zero
.L8001D764:
/* 1E364 8001D764 0C00487F */  jal        func_800121FC
/* 1E368 8001D768 02203021 */   addu      $a2, $s1, $zero
.L8001D76C:
/* 1E36C 8001D76C 8FBF0040 */  lw         $ra, 0x40($sp)
/* 1E370 8001D770 8FB1003C */  lw         $s1, 0x3C($sp)
/* 1E374 8001D774 8FB00038 */  lw         $s0, 0x38($sp)
/* 1E378 8001D778 03E00008 */  jr         $ra
/* 1E37C 8001D77C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8001D780
/* 1E380 8001D780 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E384 8001D784 00042040 */  sll        $a0, $a0, 1
/* 1E388 8001D788 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1E38C 8001D78C AFB10014 */  sw         $s1, 0x14($sp)
/* 1E390 8001D790 0C007529 */  jal        func_8001D4A4
/* 1E394 8001D794 AFB00010 */   sw        $s0, 0x10($sp)
/* 1E398 8001D798 00402021 */  addu       $a0, $v0, $zero
/* 1E39C 8001D79C 00008821 */  addu       $s1, $zero, $zero
/* 1E3A0 8001D7A0 3C10800B */  lui        $s0, %hi(D_800B52EC)
/* 1E3A4 8001D7A4 261052EC */  addiu      $s0, $s0, %lo(D_800B52EC)
.L8001D7A8:
/* 1E3A8 8001D7A8 8E020000 */  lw         $v0, 0x0($s0)
/* 1E3AC 8001D7AC 26100004 */  addiu      $s0, $s0, 0x4
/* 1E3B0 8001D7B0 26310001 */  addiu      $s1, $s1, 0x1
/* 1E3B4 8001D7B4 0C00751E */  jal        func_8001D478
/* 1E3B8 8001D7B8 AC440024 */   sw        $a0, 0x24($v0)
/* 1E3BC 8001D7BC 0C00751E */  jal        func_8001D478
/* 1E3C0 8001D7C0 00402021 */   addu      $a0, $v0, $zero
/* 1E3C4 8001D7C4 00402021 */  addu       $a0, $v0, $zero
/* 1E3C8 8001D7C8 2A220004 */  slti       $v0, $s1, 0x4
/* 1E3CC 8001D7CC 1440FFF6 */  bnez       $v0, .L8001D7A8
/* 1E3D0 8001D7D0 00000000 */   nop
/* 1E3D4 8001D7D4 3C02800B */  lui        $v0, %hi(D_800B5328)
/* 1E3D8 8001D7D8 8C425328 */  lw         $v0, %lo(D_800B5328)($v0)
/* 1E3DC 8001D7DC 50400006 */  beql       $v0, $zero, .L8001D7F8
/* 1E3E0 8001D7E0 00001021 */   addu      $v0, $zero, $zero
/* 1E3E4 8001D7E4 8C440024 */  lw         $a0, 0x24($v0)
/* 1E3E8 8001D7E8 10800003 */  beqz       $a0, .L8001D7F8
/* 1E3EC 8001D7EC 00001021 */   addu      $v0, $zero, $zero
/* 1E3F0 8001D7F0 0C00751E */  jal        func_8001D478
/* 1E3F4 8001D7F4 00000000 */   nop
.L8001D7F8:
/* 1E3F8 8001D7F8 3C01800B */  lui        $at, %hi(D_800B5134)
/* 1E3FC 8001D7FC AC225134 */  sw         $v0, %lo(D_800B5134)($at)
/* 1E400 8001D800 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1E404 8001D804 8FB10014 */  lw         $s1, 0x14($sp)
/* 1E408 8001D808 8FB00010 */  lw         $s0, 0x10($sp)
/* 1E40C 8001D80C 03E00008 */  jr         $ra
/* 1E410 8001D810 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001D814
/* 1E414 8001D814 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1E418 8001D818 AFB00010 */  sw         $s0, 0x10($sp)
/* 1E41C 8001D81C 00808021 */  addu       $s0, $a0, $zero
/* 1E420 8001D820 AFB20018 */  sw         $s2, 0x18($sp)
/* 1E424 8001D824 00A09021 */  addu       $s2, $a1, $zero
/* 1E428 8001D828 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1E42C 8001D82C 00C09821 */  addu       $s3, $a2, $zero
/* 1E430 8001D830 AFB40020 */  sw         $s4, 0x20($sp)
/* 1E434 8001D834 00E0A021 */  addu       $s4, $a3, $zero
/* 1E438 8001D838 2E42000C */  sltiu      $v0, $s2, 0xC
/* 1E43C 8001D83C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1E440 8001D840 10400058 */  beqz       $v0, L8001D9A4
/* 1E444 8001D844 AFB10014 */   sw        $s1, 0x14($sp)
/* 1E448 8001D848 00121080 */  sll        $v0, $s2, 2
/* 1E44C 8001D84C 3C01800D */  lui        $at, %hi(jtbl_800D0BE0_main)
/* 1E450 8001D850 00220821 */  addu       $at, $at, $v0
/* 1E454 8001D854 8C220BE0 */  lw         $v0, %lo(jtbl_800D0BE0_main)($at)
/* 1E458 8001D858 00400008 */  jr         $v0
/* 1E45C 8001D85C 00000000 */   nop
glabel L8001D860
/* 1E460 8001D860 02002021 */  addu       $a0, $s0, $zero
/* 1E464 8001D864 02402821 */  addu       $a1, $s2, $zero
/* 1E468 8001D868 02603021 */  addu       $a2, $s3, $zero
/* 1E46C 8001D86C 0C0045DC */  jal        func_80011770
/* 1E470 8001D870 02803821 */   addu      $a3, $s4, $zero
/* 1E474 8001D874 8E040030 */  lw         $a0, 0x30($s0)
/* 1E478 8001D878 0C0075E0 */  jal        func_8001D780
/* 1E47C 8001D87C 00408021 */   addu      $s0, $v0, $zero
/* 1E480 8001D880 0800766E */  j          .L8001D9B8
/* 1E484 8001D884 02001021 */   addu      $v0, $s0, $zero
glabel L8001D888
/* 1E488 8001D888 0C001566 */  jal        func_80005598
/* 1E48C 8001D88C 240400B3 */   addiu     $a0, $zero, 0xB3
/* 1E490 8001D890 0800766A */  j          .L8001D9A8
/* 1E494 8001D894 02002021 */   addu      $a0, $s0, $zero
glabel L8001D898
/* 1E498 8001D898 0C0015AF */  jal        func_800056BC
/* 1E49C 8001D89C 240400B3 */   addiu     $a0, $zero, 0xB3
/* 1E4A0 8001D8A0 0800766A */  j          .L8001D9A8
/* 1E4A4 8001D8A4 02002021 */   addu      $a0, $s0, $zero
glabel L8001D8A8
/* 1E4A8 8001D8A8 0C000ED9 */  jal        func_80003B64
/* 1E4AC 8001D8AC 00000000 */   nop
/* 1E4B0 8001D8B0 0C001566 */  jal        func_80005598
/* 1E4B4 8001D8B4 240400B3 */   addiu     $a0, $zero, 0xB3
/* 1E4B8 8001D8B8 0C0015B7 */  jal        func_800056DC
/* 1E4BC 8001D8BC 240400B3 */   addiu     $a0, $zero, 0xB3
/* 1E4C0 8001D8C0 3C01802A */  lui        $at, %hi(D_802A156C)
/* 1E4C4 8001D8C4 0C00753E */  jal        func_8001D4F8
/* 1E4C8 8001D8C8 AC22156C */   sw        $v0, %lo(D_802A156C)($at)
/* 1E4CC 8001D8CC 000227C2 */  srl        $a0, $v0, 31
/* 1E4D0 8001D8D0 3C03803F */  lui        $v1, %hi(D_803ED3DF)
/* 1E4D4 8001D8D4 9063D3DF */  lbu        $v1, %lo(D_803ED3DF)($v1)
/* 1E4D8 8001D8D8 00822021 */  addu       $a0, $a0, $v0
/* 1E4DC 8001D8DC 00042043 */  sra        $a0, $a0, 1
/* 1E4E0 8001D8E0 3C01802A */  lui        $at, %hi(D_802A1570)
/* 1E4E4 8001D8E4 AC241570 */  sw         $a0, %lo(D_802A1570)($at)
/* 1E4E8 8001D8E8 2484FFFC */  addiu      $a0, $a0, -0x4
/* 1E4EC 8001D8EC 30710003 */  andi       $s1, $v1, 0x3
/* 1E4F0 8001D8F0 306300FC */  andi       $v1, $v1, 0xFC
/* 1E4F4 8001D8F4 0083102A */  slt        $v0, $a0, $v1
/* 1E4F8 8001D8F8 10400002 */  beqz       $v0, .L8001D904
/* 1E4FC 8001D8FC 00602821 */   addu      $a1, $v1, $zero
/* 1E500 8001D900 00801821 */  addu       $v1, $a0, $zero
.L8001D904:
/* 1E504 8001D904 00A31023 */  subu       $v0, $a1, $v1
/* 1E508 8001D908 02228821 */  addu       $s1, $s1, $v0
/* 1E50C 8001D90C 02002021 */  addu       $a0, $s0, $zero
/* 1E510 8001D910 02402821 */  addu       $a1, $s2, $zero
/* 1E514 8001D914 02603021 */  addu       $a2, $s3, $zero
/* 1E518 8001D918 02803821 */  addu       $a3, $s4, $zero
/* 1E51C 8001D91C 0C0045DC */  jal        func_80011770
/* 1E520 8001D920 AE030030 */   sw        $v1, 0x30($s0)
/* 1E524 8001D924 0C0015AF */  jal        func_800056BC
/* 1E528 8001D928 240400B3 */   addiu     $a0, $zero, 0xB3
/* 1E52C 8001D92C 8E030010 */  lw         $v1, 0x10($s0)
/* 1E530 8001D930 02002021 */  addu       $a0, $s0, $zero
/* 1E534 8001D934 00111080 */  sll        $v0, $s1, 2
/* 1E538 8001D938 00431021 */  addu       $v0, $v0, $v1
/* 1E53C 8001D93C 8C460000 */  lw         $a2, 0x0($v0)
/* 1E540 8001D940 8E020000 */  lw         $v0, 0x0($s0)
/* 1E544 8001D944 24050007 */  addiu      $a1, $zero, 0x7
/* 1E548 8001D948 0040F809 */  jalr       $v0
/* 1E54C 8001D94C 00003821 */   addu      $a3, $zero, $zero
/* 1E550 8001D950 8E040030 */  lw         $a0, 0x30($s0)
/* 1E554 8001D954 0C0075E0 */  jal        func_8001D780
/* 1E558 8001D958 00000000 */   nop
/* 1E55C 8001D95C 0800766E */  j          .L8001D9B8
/* 1E560 8001D960 24020001 */   addiu     $v0, $zero, 0x1
glabel L8001D964
/* 1E564 8001D964 3C01802A */  lui        $at, %hi(D_802A156C)
/* 1E568 8001D968 AC20156C */  sw         $zero, %lo(D_802A156C)($at)
/* 1E56C 8001D96C 0800766A */  j          .L8001D9A8
/* 1E570 8001D970 02002021 */   addu      $a0, $s0, $zero
glabel L8001D974
/* 1E574 8001D974 8E030018 */  lw         $v1, 0x18($s0)
/* 1E578 8001D978 8E020030 */  lw         $v0, 0x30($s0)
/* 1E57C 8001D97C 8C630040 */  lw         $v1, 0x40($v1)
/* 1E580 8001D980 02002021 */  addu       $a0, $s0, $zero
/* 1E584 8001D984 00431021 */  addu       $v0, $v0, $v1
/* 1E588 8001D988 304500FF */  andi       $a1, $v0, 0xFF
/* 1E58C 8001D98C 3C01803F */  lui        $at, %hi(D_803ED3DF)
/* 1E590 8001D990 A022D3DF */  sb         $v0, %lo(D_803ED3DF)($at)
/* 1E594 8001D994 0C004204 */  jal        func_80010810
/* 1E598 8001D998 24A500B4 */   addiu     $a1, $a1, 0xB4
/* 1E59C 8001D99C 0800766E */  j          .L8001D9B8
/* 1E5A0 8001D9A0 24020001 */   addiu     $v0, $zero, 0x1
glabel L8001D9A4
/* 1E5A4 8001D9A4 02002021 */  addu       $a0, $s0, $zero
.L8001D9A8:
/* 1E5A8 8001D9A8 02402821 */  addu       $a1, $s2, $zero
/* 1E5AC 8001D9AC 02603021 */  addu       $a2, $s3, $zero
/* 1E5B0 8001D9B0 0C0045DC */  jal        func_80011770
/* 1E5B4 8001D9B4 02803821 */   addu      $a3, $s4, $zero
.L8001D9B8:
/* 1E5B8 8001D9B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1E5BC 8001D9BC 8FB40020 */  lw         $s4, 0x20($sp)
/* 1E5C0 8001D9C0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1E5C4 8001D9C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1E5C8 8001D9C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1E5CC 8001D9CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1E5D0 8001D9D0 03E00008 */  jr         $ra
/* 1E5D4 8001D9D4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1E5D8 8001D9D8 00000000 */  nop
/* 1E5DC 8001D9DC 00000000 */  nop
