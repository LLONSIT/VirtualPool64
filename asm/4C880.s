.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8004BC80
/* 4C880 8004BC80 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4C884 8004BC84 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4C888 8004BC88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4C88C 8004BC8C AFBF0010 */  sw         $ra, 0x10($sp)
/* 4C890 8004BC90 0C026D98 */  jal        func_8009B660
/* 4C894 8004BC94 00000000 */   nop
/* 4C898 8004BC98 3C01800D */  lui        $at, %hi(D_800D3AC8)
/* 4C89C 8004BC9C D4223AC8 */  ldc1       $f2, %lo(D_800D3AC8)($at)
/* 4C8A0 8004BCA0 46220002 */  mul.d      $f0, $f0, $f2
/* 4C8A4 8004BCA4 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4C8A8 8004BCA8 F4208A78 */  sdc1       $f0, %lo(D_802C8A78)($at)
/* 4C8AC 8004BCAC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4C8B0 8004BCB0 03E00008 */  jr         $ra
/* 4C8B4 8004BCB4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BCB8
/* 4C8B8 8004BCB8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4C8BC 8004BCBC 00802821 */  addu       $a1, $a0, $zero
/* 4C8C0 8004BCC0 AFB00038 */  sw         $s0, 0x38($sp)
/* 4C8C4 8004BCC4 3C10802D */  lui        $s0, %hi(D_802C8A78)
/* 4C8C8 8004BCC8 26108A78 */  addiu      $s0, $s0, %lo(D_802C8A78)
/* 4C8CC 8004BCCC AFBF003C */  sw         $ra, 0x3C($sp)
/* 4C8D0 8004BCD0 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 4C8D4 8004BCD4 3C01802F */  lui        $at, %hi(D_802EF130)
/* 4C8D8 8004BCD8 AC20F130 */  sw         $zero, %lo(D_802EF130)($at)
/* 4C8DC 8004BCDC 3C01802F */  lui        $at, %hi(D_802EF134)
/* 4C8E0 8004BCE0 AC20F134 */  sw         $zero, %lo(D_802EF134)($at)
/* 4C8E4 8004BCE4 0C01741A */  jal        func_8005D068
/* 4C8E8 8004BCE8 02002021 */   addu      $a0, $s0, $zero
/* 4C8EC 8004BCEC 3C01800D */  lui        $at, %hi(D_800D3AD0)
/* 4C8F0 8004BCF0 D4343AD0 */  ldc1       $f20, %lo(D_800D3AD0)($at)
/* 4C8F4 8004BCF4 46200306 */  mov.d      $f12, $f0
/* 4C8F8 8004BCF8 27A20028 */  addiu      $v0, $sp, 0x28
/* 4C8FC 8004BCFC AFA20010 */  sw         $v0, 0x10($sp)
/* 4C900 8004BD00 27A20030 */  addiu      $v0, $sp, 0x30
/* 4C904 8004BD04 AFA20014 */  sw         $v0, 0x14($sp)
/* 4C908 8004BD08 0C017449 */  jal        func_8005D124
/* 4C90C 8004BD0C 4620A386 */   mov.d     $f14, $f20
/* 4C910 8004BD10 D7AC0028 */  ldc1       $f12, 0x28($sp)
/* 4C914 8004BD14 D7AE0030 */  ldc1       $f14, 0x30($sp)
/* 4C918 8004BD18 26020030 */  addiu      $v0, $s0, 0x30
/* 4C91C 8004BD1C AFA2001C */  sw         $v0, 0x1C($sp)
/* 4C920 8004BD20 26020038 */  addiu      $v0, $s0, 0x38
/* 4C924 8004BD24 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 4C928 8004BD28 AFB00018 */  sw         $s0, 0x18($sp)
/* 4C92C 8004BD2C 0C01745E */  jal        func_8005D178
/* 4C930 8004BD30 AFA20020 */   sw        $v0, 0x20($sp)
/* 4C934 8004BD34 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4C938 8004BD38 0C026D98 */  jal        func_8009B660
/* 4C93C 8004BD3C D42C8A90 */   ldc1      $f12, %lo(D_802C8A90)($at)
/* 4C940 8004BD40 D6020000 */  ldc1       $f2, 0x0($s0)
/* 4C944 8004BD44 46201082 */  mul.d      $f2, $f2, $f0
/* 4C948 8004BD48 F6020000 */  sdc1       $f2, 0x0($s0)
/* 4C94C 8004BD4C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 4C950 8004BD50 8FB00038 */  lw         $s0, 0x38($sp)
/* 4C954 8004BD54 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 4C958 8004BD58 03E00008 */  jr         $ra
/* 4C95C 8004BD5C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8004BD60
/* 4C960 8004BD60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4C964 8004BD64 00804821 */  addu       $t1, $a0, $zero
/* 4C968 8004BD68 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4C96C 8004BD6C D5200040 */  ldc1       $f0, 0x40($t1)
/* 4C970 8004BD70 3C01802D */  lui        $at, %hi(D_802C8AB8)
/* 4C974 8004BD74 F4208AB8 */  sdc1       $f0, %lo(D_802C8AB8)($at)
/* 4C978 8004BD78 D5200048 */  ldc1       $f0, 0x48($t1)
/* 4C97C 8004BD7C 3C01802D */  lui        $at, %hi(D_802C8AC0)
/* 4C980 8004BD80 F4208AC0 */  sdc1       $f0, %lo(D_802C8AC0)($at)
/* 4C984 8004BD84 D5200098 */  ldc1       $f0, 0x98($t1)
/* 4C988 8004BD88 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4C98C 8004BD8C F4208A90 */  sdc1       $f0, %lo(D_802C8A90)($at)
/* 4C990 8004BD90 912300A0 */  lbu        $v1, 0xA0($t1)
/* 4C994 8004BD94 2462FFFD */  addiu      $v0, $v1, -0x3
/* 4C998 8004BD98 2C420002 */  sltiu      $v0, $v0, 0x2
/* 4C99C 8004BD9C 14400012 */  bnez       $v0, .L8004BDE8
/* 4C9A0 8004BDA0 00031600 */   sll       $v0, $v1, 24
/* 4C9A4 8004BDA4 00021603 */  sra        $v0, $v0, 24
/* 4C9A8 8004BDA8 24030002 */  addiu      $v1, $zero, 0x2
/* 4C9AC 8004BDAC 1043000E */  beq        $v0, $v1, .L8004BDE8
/* 4C9B0 8004BDB0 00000000 */   nop
/* 4C9B4 8004BDB4 D5240050 */  ldc1       $f4, 0x50($t1)
/* 4C9B8 8004BDB8 D5200038 */  ldc1       $f0, 0x38($t1)
/* 4C9BC 8004BDBC 46202102 */  mul.d      $f4, $f4, $f0
/* 4C9C0 8004BDC0 D5220030 */  ldc1       $f2, 0x30($t1)
/* 4C9C4 8004BDC4 D5200058 */  ldc1       $f0, 0x58($t1)
/* 4C9C8 8004BDC8 46220002 */  mul.d      $f0, $f0, $f2
/* 4C9CC 8004BDCC 4624003C */  c.lt.d     $f0, $f4
/* 4C9D0 8004BDD0 00000000 */  nop
/* 4C9D4 8004BDD4 45000004 */  bc1f       .L8004BDE8
/* 4C9D8 8004BDD8 00000000 */   nop
/* 4C9DC 8004BDDC D5200020 */  ldc1       $f0, 0x20($t1)
/* 4C9E0 8004BDE0 08012F7B */  j          .L8004BDEC
/* 4C9E4 8004BDE4 46200007 */   neg.d     $f0, $f0
.L8004BDE8:
/* 4C9E8 8004BDE8 D5200020 */  ldc1       $f0, 0x20($t1)
.L8004BDEC:
/* 4C9EC 8004BDEC 3C01802D */  lui        $at, %hi(D_802C8AA8)
/* 4C9F0 8004BDF0 F4208AA8 */  sdc1       $f0, %lo(D_802C8AA8)($at)
/* 4C9F4 8004BDF4 D5200028 */  ldc1       $f0, 0x28($t1)
/* 4C9F8 8004BDF8 3C01800D */  lui        $at, %hi(D_800D3AD8)
/* 4C9FC 8004BDFC 8C263AD8 */  lw         $a2, %lo(D_800D3AD8)($at)
/* 4CA00 8004BE00 8C273ADC */  lw         $a3, %lo(D_800D3ADC)($at)
/* 4CA04 8004BE04 3C04802D */  lui        $a0, %hi(D_802C8AB0)
/* 4CA08 8004BE08 24848AB0 */  addiu      $a0, $a0, %lo(D_802C8AB0)
/* 4CA0C 8004BE0C F4800000 */  sdc1       $f0, 0x0($a0)
/* 4CA10 8004BE10 8D220030 */  lw         $v0, 0x30($t1)
/* 4CA14 8004BE14 8D230034 */  lw         $v1, 0x34($t1)
/* 4CA18 8004BE18 8D250038 */  lw         $a1, 0x38($t1)
/* 4CA1C 8004BE1C 8D28003C */  lw         $t0, 0x3C($t1)
/* 4CA20 8004BE20 3C01802D */  lui        $at, %hi(D_802C8A98)
/* 4CA24 8004BE24 AC228A98 */  sw         $v0, %lo(D_802C8A98)($at)
/* 4CA28 8004BE28 3C01802D */  lui        $at, %hi(D_802C8A9C)
/* 4CA2C 8004BE2C AC238A9C */  sw         $v1, %lo(D_802C8A9C)($at)
/* 4CA30 8004BE30 3C01802D */  lui        $at, %hi(D_802C8AA0)
/* 4CA34 8004BE34 AC258AA0 */  sw         $a1, %lo(D_802C8AA0)($at)
/* 4CA38 8004BE38 3C01802D */  lui        $at, %hi(D_802C8AA4)
/* 4CA3C 8004BE3C AC288AA4 */  sw         $t0, %lo(D_802C8AA4)($at)
/* 4CA40 8004BE40 24020001 */  addiu      $v0, $zero, 0x1
/* 4CA44 8004BE44 2484FFC8 */  addiu      $a0, $a0, -0x38
/* 4CA48 8004BE48 0C020D4E */  jal        func_80083538
/* 4CA4C 8004BE4C AFA20010 */   sw        $v0, 0x10($sp)
/* 4CA50 8004BE50 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4CA54 8004BE54 D4228A90 */  ldc1       $f2, %lo(D_802C8A90)($at)
/* 4CA58 8004BE58 3C01800D */  lui        $at, %hi(D_800D3AE0)
/* 4CA5C 8004BE5C D4203AE0 */  ldc1       $f0, %lo(D_800D3AE0)($at)
/* 4CA60 8004BE60 4622003C */  c.lt.d     $f0, $f2
/* 4CA64 8004BE64 00000000 */  nop
/* 4CA68 8004BE68 45000005 */  bc1f       .L8004BE80
/* 4CA6C 8004BE6C 00000000 */   nop
/* 4CA70 8004BE70 3C01800D */  lui        $at, %hi(D_800D3AE8)
/* 4CA74 8004BE74 D4203AE8 */  ldc1       $f0, %lo(D_800D3AE8)($at)
/* 4CA78 8004BE78 08012FB3 */  j          .L8004BECC
/* 4CA7C 8004BE7C 46201000 */   add.d     $f0, $f2, $f0
.L8004BE80:
/* 4CA80 8004BE80 3C01800D */  lui        $at, %hi(D_800D3AF0)
/* 4CA84 8004BE84 D4203AF0 */  ldc1       $f0, %lo(D_800D3AF0)($at)
/* 4CA88 8004BE88 4622003C */  c.lt.d     $f0, $f2
/* 4CA8C 8004BE8C 00000000 */  nop
/* 4CA90 8004BE90 45000005 */  bc1f       .L8004BEA8
/* 4CA94 8004BE94 00000000 */   nop
/* 4CA98 8004BE98 3C01800D */  lui        $at, %hi(D_800D3AF8)
/* 4CA9C 8004BE9C D4203AF8 */  ldc1       $f0, %lo(D_800D3AF8)($at)
/* 4CAA0 8004BEA0 08012FB3 */  j          .L8004BECC
/* 4CAA4 8004BEA4 46201000 */   add.d     $f0, $f2, $f0
.L8004BEA8:
/* 4CAA8 8004BEA8 3C01800D */  lui        $at, %hi(D_800D3B00)
/* 4CAAC 8004BEAC D4203B00 */  ldc1       $f0, %lo(D_800D3B00)($at)
/* 4CAB0 8004BEB0 4622003C */  c.lt.d     $f0, $f2
/* 4CAB4 8004BEB4 00000000 */  nop
/* 4CAB8 8004BEB8 45000006 */  bc1f       .L8004BED4
/* 4CABC 8004BEBC 00000000 */   nop
/* 4CAC0 8004BEC0 3C01800D */  lui        $at, %hi(D_800D3B08)
/* 4CAC4 8004BEC4 D4203B08 */  ldc1       $f0, %lo(D_800D3B08)($at)
/* 4CAC8 8004BEC8 46201000 */  add.d      $f0, $f2, $f0
.L8004BECC:
/* 4CACC 8004BECC 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4CAD0 8004BED0 F4208A90 */  sdc1       $f0, %lo(D_802C8A90)($at)
.L8004BED4:
/* 4CAD4 8004BED4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4CAD8 8004BED8 03E00008 */  jr         $ra
/* 4CADC 8004BEDC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004BEE0
/* 4CAE0 8004BEE0 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 4CAE4 8004BEE4 D42669E0 */  ldc1       $f6, %lo(D_800C69E0)($at)
/* 4CAE8 8004BEE8 3C01800D */  lui        $at, %hi(D_800D3B10)
/* 4CAEC 8004BEEC D4203B10 */  ldc1       $f0, %lo(D_800D3B10)($at)
/* 4CAF0 8004BEF0 46203002 */  mul.d      $f0, $f6, $f0
/* 4CAF4 8004BEF4 3C01800D */  lui        $at, %hi(D_800D3B18)
/* 4CAF8 8004BEF8 D4223B18 */  ldc1       $f2, %lo(D_800D3B18)($at)
/* 4CAFC 8004BEFC 46223182 */  mul.d      $f6, $f6, $f2
/* 4CB00 8004BF00 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 4CB04 8004BF04 D42469F8 */  ldc1       $f4, %lo(D_800C69F8)($at)
/* 4CB08 8004BF08 46240002 */  mul.d      $f0, $f0, $f4
/* 4CB0C 8004BF0C 3C01800D */  lui        $at, %hi(D_800D3B20)
/* 4CB10 8004BF10 D4223B20 */  ldc1       $f2, %lo(D_800D3B20)($at)
/* 4CB14 8004BF14 46222102 */  mul.d      $f4, $f4, $f2
/* 4CB18 8004BF18 00000000 */  nop
/* 4CB1C 8004BF1C 462C0002 */  mul.d      $f0, $f0, $f12
/* 4CB20 8004BF20 46243180 */  add.d      $f6, $f6, $f4
/* 4CB24 8004BF24 46260003 */  div.d      $f0, $f0, $f6
/* 4CB28 8004BF28 462E7382 */  mul.d      $f14, $f14, $f14
/* 4CB2C 8004BF2C 462E0300 */  add.d      $f12, $f0, $f14
/* 4CB30 8004BF30 46206084 */  sqrt.d     $f2, $f12
/* 4CB34 8004BF34 46221032 */  c.eq.d     $f2, $f2
/* 4CB38 8004BF38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4CB3C 8004BF3C 00000000 */  nop
/* 4CB40 8004BF40 45010004 */  bc1t       .L8004BF54
/* 4CB44 8004BF44 AFBF0010 */   sw        $ra, 0x10($sp)
/* 4CB48 8004BF48 0C026F44 */  jal        func_8009BD10
/* 4CB4C 8004BF4C 00000000 */   nop
/* 4CB50 8004BF50 46200086 */  mov.d      $f2, $f0
.L8004BF54:
/* 4CB54 8004BF54 3C01800D */  lui        $at, %hi(D_800D3B28)
/* 4CB58 8004BF58 D4203B28 */  ldc1       $f0, %lo(D_800D3B28)($at)
/* 4CB5C 8004BF5C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4CB60 8004BF60 46201002 */  mul.d      $f0, $f2, $f0
/* 4CB64 8004BF64 03E00008 */  jr         $ra
/* 4CB68 8004BF68 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004BF6C
/* 4CB6C 8004BF6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4CB70 8004BF70 AFB10014 */  sw         $s1, 0x14($sp)
/* 4CB74 8004BF74 00808821 */  addu       $s1, $a0, $zero
/* 4CB78 8004BF78 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4CB7C 8004BF7C AFB00010 */  sw         $s0, 0x10($sp)
/* 4CB80 8004BF80 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4CB84 8004BF84 822400A2 */  lb         $a0, 0xA2($s1)
/* 4CB88 8004BF88 0C017393 */  jal        func_8005CE4C
/* 4CB8C 8004BF8C 822500A1 */   lb        $a1, 0xA1($s1)
/* 4CB90 8004BF90 3C01800D */  lui        $at, %hi(D_800D3B30)
/* 4CB94 8004BF94 D42C3B30 */  ldc1       $f12, %lo(D_800D3B30)($at)
/* 4CB98 8004BF98 0C0173F9 */  jal        func_8005CFE4
/* 4CB9C 8004BF9C 462C0300 */   add.d     $f12, $f0, $f12
/* 4CBA0 8004BFA0 44070000 */  mfc1       $a3, $f0
/* 4CBA4 8004BFA4 44060800 */  mfc1       $a2, $f1
/* 4CBA8 8004BFA8 00000000 */  nop
/* 4CBAC 8004BFAC 0C017414 */  jal        func_8005D050
/* 4CBB0 8004BFB0 02202021 */   addu      $a0, $s1, $zero
/* 4CBB4 8004BFB4 3C10802D */  lui        $s0, %hi(D_802C8A78)
/* 4CBB8 8004BFB8 26108A78 */  addiu      $s0, $s0, %lo(D_802C8A78)
/* 4CBBC 8004BFBC 02002021 */  addu       $a0, $s0, $zero
/* 4CBC0 8004BFC0 02202821 */  addu       $a1, $s1, $zero
/* 4CBC4 8004BFC4 0C01741A */  jal        func_8005D068
/* 4CBC8 8004BFC8 46200506 */   mov.d     $f20, $f0
/* 4CBCC 8004BFCC 46200306 */  mov.d      $f12, $f0
/* 4CBD0 8004BFD0 0C012FB8 */  jal        func_8004BEE0
/* 4CBD4 8004BFD4 4620A386 */   mov.d     $f14, $f20
/* 4CBD8 8004BFD8 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4CBDC 8004BFDC D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4CBE0 8004BFE0 0C026D98 */  jal        func_8009B660
/* 4CBE4 8004BFE4 46200506 */   mov.d     $f20, $f0
/* 4CBE8 8004BFE8 3C01800D */  lui        $at, %hi(D_800D3B38)
/* 4CBEC 8004BFEC D4223B38 */  ldc1       $f2, %lo(D_800D3B38)($at)
/* 4CBF0 8004BFF0 46201103 */  div.d      $f4, $f2, $f0
/* 4CBF4 8004BFF4 4624A502 */  mul.d      $f20, $f20, $f4
/* 4CBF8 8004BFF8 3C01800D */  lui        $at, %hi(D_800D3B40)
/* 4CBFC 8004BFFC D4203B40 */  ldc1       $f0, %lo(D_800D3B40)($at)
/* 4CC00 8004C000 F6140000 */  sdc1       $f20, 0x0($s0)
/* 4CC04 8004C004 D6220078 */  ldc1       $f2, 0x78($s1)
/* 4CC08 8004C008 4620103C */  c.lt.d     $f2, $f0
/* 4CC0C 8004C00C 00000000 */  nop
/* 4CC10 8004C010 4500000A */  bc1f       .L8004C03C
/* 4CC14 8004C014 00000000 */   nop
/* 4CC18 8004C018 3C01800D */  lui        $at, %hi(D_800D3B48)
/* 4CC1C 8004C01C D4223B48 */  ldc1       $f2, %lo(D_800D3B48)($at)
/* 4CC20 8004C020 46222082 */  mul.d      $f2, $f4, $f2
/* 4CC24 8004C024 3C01800D */  lui        $at, %hi(D_800D3B50)
/* 4CC28 8004C028 D4203B50 */  ldc1       $f0, %lo(D_800D3B50)($at)
/* 4CC2C 8004C02C 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4CC30 8004C030 F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4CC34 8004C034 08013019 */  j          .L8004C064
/* 4CC38 8004C038 46202002 */   mul.d     $f0, $f4, $f0
.L8004C03C:
/* 4CC3C 8004C03C 3C01800D */  lui        $at, %hi(D_800D3B58)
/* 4CC40 8004C040 D4203B58 */  ldc1       $f0, %lo(D_800D3B58)($at)
/* 4CC44 8004C044 46202002 */  mul.d      $f0, $f4, $f0
/* 4CC48 8004C048 00000000 */  nop
/* 4CC4C 8004C04C 46220002 */  mul.d      $f0, $f0, $f2
/* 4CC50 8004C050 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4CC54 8004C054 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4CC58 8004C058 46242000 */  add.d      $f0, $f4, $f4
/* 4CC5C 8004C05C D6220078 */  ldc1       $f2, 0x78($s1)
/* 4CC60 8004C060 46220002 */  mul.d      $f0, $f0, $f2
.L8004C064:
/* 4CC64 8004C064 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4CC68 8004C068 F4208A88 */  sdc1       $f0, %lo(D_802C8A88)($at)
/* 4CC6C 8004C06C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4CC70 8004C070 8FB10014 */  lw         $s1, 0x14($sp)
/* 4CC74 8004C074 8FB00010 */  lw         $s0, 0x10($sp)
/* 4CC78 8004C078 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4CC7C 8004C07C 03E00008 */  jr         $ra
/* 4CC80 8004C080 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004C084
/* 4CC84 8004C084 462C6302 */  mul.d      $f12, $f12, $f12
/* 4CC88 8004C088 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 4CC8C 8004C08C D4206A28 */  ldc1       $f0, %lo(D_800C6A28)($at)
/* 4CC90 8004C090 46200000 */  add.d      $f0, $f0, $f0
/* 4CC94 8004C094 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4CC98 8004C098 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 4CC9C 8004C09C 46207686 */  mov.d      $f26, $f14
/* 4CCA0 8004C0A0 463A0002 */  mul.d      $f0, $f0, $f26
/* 4CCA4 8004C0A4 46206300 */  add.d      $f12, $f12, $f0
/* 4CCA8 8004C0A8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4CCAC 8004C0AC 46206504 */  sqrt.d     $f20, $f12
/* 4CCB0 8004C0B0 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 4CCB4 8004C0B4 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 4CCB8 8004C0B8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 4CCBC 8004C0BC D7B80050 */  ldc1       $f24, 0x50($sp)
/* 4CCC0 8004C0C0 4634A032 */  c.eq.d     $f20, $f20
/* 4CCC4 8004C0C4 00000000 */  nop
/* 4CCC8 8004C0C8 00000000 */  nop
/* 4CCCC 8004C0CC 45010004 */  bc1t       .L8004C0E0
/* 4CCD0 8004C0D0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 4CCD4 8004C0D4 0C026F44 */  jal        func_8009BD10
/* 4CCD8 8004C0D8 00000000 */   nop
/* 4CCDC 8004C0DC 46200506 */  mov.d      $f20, $f0
.L8004C0E0:
/* 4CCE0 8004C0E0 3C01800D */  lui        $at, %hi(D_800D3B60)
/* 4CCE4 8004C0E4 D4203B60 */  ldc1       $f0, %lo(D_800D3B60)($at)
/* 4CCE8 8004C0E8 4620B002 */  mul.d      $f0, $f22, $f0
/* 4CCEC 8004C0EC 00000000 */  nop
/* 4CCF0 8004C0F0 46380302 */  mul.d      $f12, $f0, $f24
/* 4CCF4 8004C0F4 3C01800D */  lui        $at, %hi(D_800D3B68)
/* 4CCF8 8004C0F8 D4223B68 */  ldc1       $f2, %lo(D_800D3B68)($at)
/* 4CCFC 8004C0FC 46226082 */  mul.d      $f2, $f12, $f2
/* 4CD00 8004C100 3C01800D */  lui        $at, %hi(D_800D3B70)
/* 4CD04 8004C104 D4203B70 */  ldc1       $f0, %lo(D_800D3B70)($at)
/* 4CD08 8004C108 46220001 */  sub.d      $f0, $f0, $f2
/* 4CD0C 8004C10C 46206002 */  mul.d      $f0, $f12, $f0
/* 4CD10 8004C110 3C01800C */  lui        $at, %hi(D_800C6A18)
/* 4CD14 8004C114 D4226A18 */  ldc1       $f2, %lo(D_800C6A18)($at)
/* 4CD18 8004C118 46201303 */  div.d      $f12, $f2, $f0
/* 4CD1C 8004C11C 44800000 */  mtc1       $zero, $f0
/* 4CD20 8004C120 44800800 */  mtc1       $zero, $f1
/* 4CD24 8004C124 00000000 */  nop
/* 4CD28 8004C128 4620603C */  c.lt.d     $f12, $f0
/* 4CD2C 8004C12C 00000000 */  nop
/* 4CD30 8004C130 00000000 */  nop
/* 4CD34 8004C134 45010011 */  bc1t       .L8004C17C
/* 4CD38 8004C138 4620A006 */   mov.d     $f0, $f20
/* 4CD3C 8004C13C 00000000 */  nop
/* 4CD40 8004C140 462CD302 */  mul.d      $f12, $f26, $f12
/* 4CD44 8004C144 46206104 */  sqrt.d     $f4, $f12
/* 4CD48 8004C148 46242032 */  c.eq.d     $f4, $f4
/* 4CD4C 8004C14C 00000000 */  nop
/* 4CD50 8004C150 45010004 */  bc1t       .L8004C164
/* 4CD54 8004C154 00000000 */   nop
/* 4CD58 8004C158 0C026F44 */  jal        func_8009BD10
/* 4CD5C 8004C15C 00000000 */   nop
/* 4CD60 8004C160 46200106 */  mov.d      $f4, $f0
.L8004C164:
/* 4CD64 8004C164 4634203C */  c.lt.d     $f4, $f20
/* 4CD68 8004C168 00000000 */  nop
/* 4CD6C 8004C16C 00000000 */  nop
/* 4CD70 8004C170 45010002 */  bc1t       .L8004C17C
/* 4CD74 8004C174 4620A006 */   mov.d     $f0, $f20
/* 4CD78 8004C178 46202006 */  mov.d      $f0, $f4
.L8004C17C:
/* 4CD7C 8004C17C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4CD80 8004C180 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 4CD84 8004C184 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 4CD88 8004C188 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 4CD8C 8004C18C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4CD90 8004C190 03E00008 */  jr         $ra
/* 4CD94 8004C194 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8004C198
/* 4CD98 8004C198 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4CD9C 8004C19C AFB00020 */  sw         $s0, 0x20($sp)
/* 4CDA0 8004C1A0 00808021 */  addu       $s0, $a0, $zero
/* 4CDA4 8004C1A4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4CDA8 8004C1A8 AFB10024 */  sw         $s1, 0x24($sp)
/* 4CDAC 8004C1AC F7B60038 */  sdc1       $f22, 0x38($sp)
/* 4CDB0 8004C1B0 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 4CDB4 8004C1B4 D6020028 */  ldc1       $f2, 0x28($s0)
/* 4CDB8 8004C1B8 44800000 */  mtc1       $zero, $f0
/* 4CDBC 8004C1BC 44800800 */  mtc1       $zero, $f1
/* 4CDC0 8004C1C0 00000000 */  nop
/* 4CDC4 8004C1C4 4620103C */  c.lt.d     $f2, $f0
/* 4CDC8 8004C1C8 00000000 */  nop
/* 4CDCC 8004C1CC 4501000A */  bc1t       .L8004C1F8
/* 4CDD0 8004C1D0 00000000 */   nop
/* 4CDD4 8004C1D4 3C11802D */  lui        $s1, %hi(D_802C8A90)
/* 4CDD8 8004C1D8 26318A90 */  addiu      $s1, $s1, %lo(D_802C8A90)
/* 4CDDC 8004C1DC D6220000 */  ldc1       $f2, 0x0($s1)
/* 4CDE0 8004C1E0 3C01800D */  lui        $at, %hi(D_800D3B80)
/* 4CDE4 8004C1E4 D4203B80 */  ldc1       $f0, %lo(D_800D3B80)($at)
/* 4CDE8 8004C1E8 4622003C */  c.lt.d     $f0, $f2
/* 4CDEC 8004C1EC 00000000 */  nop
/* 4CDF0 8004C1F0 45000006 */  bc1f       .L8004C20C
/* 4CDF4 8004C1F4 00000000 */   nop
.L8004C1F8:
/* 4CDF8 8004C1F8 3C01800D */  lui        $at, %hi(D_800D3B78)
/* 4CDFC 8004C1FC D4203B78 */  ldc1       $f0, %lo(D_800D3B78)($at)
/* 4CE00 8004C200 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4CE04 8004C204 080130BF */  j          .L8004C2FC
/* 4CE08 8004C208 F4208A78 */   sdc1      $f0, %lo(D_802C8A78)($at)
.L8004C20C:
/* 4CE0C 8004C20C 820400A2 */  lb         $a0, 0xA2($s0)
/* 4CE10 8004C210 0C017393 */  jal        func_8005CE4C
/* 4CE14 8004C214 820500A1 */   lb        $a1, 0xA1($s0)
/* 4CE18 8004C218 3C01800D */  lui        $at, %hi(D_800D3B88)
/* 4CE1C 8004C21C D42C3B88 */  ldc1       $f12, %lo(D_800D3B88)($at)
/* 4CE20 8004C220 0C0173F9 */  jal        func_8005CFE4
/* 4CE24 8004C224 462C0300 */   add.d     $f12, $f0, $f12
/* 4CE28 8004C228 44070000 */  mfc1       $a3, $f0
/* 4CE2C 8004C22C 44060800 */  mfc1       $a2, $f1
/* 4CE30 8004C230 00000000 */  nop
/* 4CE34 8004C234 0C017414 */  jal        func_8005D050
/* 4CE38 8004C238 02002021 */   addu      $a0, $s0, $zero
/* 4CE3C 8004C23C D62C0000 */  ldc1       $f12, 0x0($s1)
/* 4CE40 8004C240 0C026D98 */  jal        func_8009B660
/* 4CE44 8004C244 46200506 */   mov.d     $f20, $f0
/* 4CE48 8004C248 3C01800D */  lui        $at, %hi(D_800D3B90)
/* 4CE4C 8004C24C D4223B90 */  ldc1       $f2, %lo(D_800D3B90)($at)
/* 4CE50 8004C250 46201583 */  div.d      $f22, $f2, $f0
/* 4CE54 8004C254 2624FFE8 */  addiu      $a0, $s1, -0x18
/* 4CE58 8004C258 0C01741A */  jal        func_8005D068
/* 4CE5C 8004C25C 02002821 */   addu      $a1, $s0, $zero
/* 4CE60 8004C260 D6020028 */  ldc1       $f2, 0x28($s0)
/* 4CE64 8004C264 4620A306 */  mov.d      $f12, $f20
/* 4CE68 8004C268 3C01802B */  lui        $at, %hi(D_802AD858)
/* 4CE6C 8004C26C F420D858 */  sdc1       $f0, %lo(D_802AD858)($at)
/* 4CE70 8004C270 F7A20010 */  sdc1       $f2, 0x10($sp)
/* 4CE74 8004C274 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 4CE78 8004C278 0C013021 */  jal        func_8004C084
/* 4CE7C 8004C27C 46200386 */   mov.d     $f14, $f0
/* 4CE80 8004C280 00000000 */  nop
/* 4CE84 8004C284 46360002 */  mul.d      $f0, $f0, $f22
/* 4CE88 8004C288 F620FFE8 */  sdc1       $f0, -0x18($s1)
/* 4CE8C 8004C28C D6020078 */  ldc1       $f2, 0x78($s0)
/* 4CE90 8004C290 3C01800D */  lui        $at, %hi(D_800D3B98)
/* 4CE94 8004C294 D4203B98 */  ldc1       $f0, %lo(D_800D3B98)($at)
/* 4CE98 8004C298 4620103C */  c.lt.d     $f2, $f0
/* 4CE9C 8004C29C 00000000 */  nop
/* 4CEA0 8004C2A0 4500000A */  bc1f       .L8004C2CC
/* 4CEA4 8004C2A4 00000000 */   nop
/* 4CEA8 8004C2A8 3C01800D */  lui        $at, %hi(D_800D3BA0)
/* 4CEAC 8004C2AC D4223BA0 */  ldc1       $f2, %lo(D_800D3BA0)($at)
/* 4CEB0 8004C2B0 4622B082 */  mul.d      $f2, $f22, $f2
/* 4CEB4 8004C2B4 3C01800D */  lui        $at, %hi(D_800D3BA8)
/* 4CEB8 8004C2B8 D4203BA8 */  ldc1       $f0, %lo(D_800D3BA8)($at)
/* 4CEBC 8004C2BC 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4CEC0 8004C2C0 F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4CEC4 8004C2C4 080130BD */  j          .L8004C2F4
/* 4CEC8 8004C2C8 4620B002 */   mul.d     $f0, $f22, $f0
.L8004C2CC:
/* 4CECC 8004C2CC 3C01800D */  lui        $at, %hi(D_800D3BB0)
/* 4CED0 8004C2D0 D4203BB0 */  ldc1       $f0, %lo(D_800D3BB0)($at)
/* 4CED4 8004C2D4 4620B002 */  mul.d      $f0, $f22, $f0
/* 4CED8 8004C2D8 00000000 */  nop
/* 4CEDC 8004C2DC 46220002 */  mul.d      $f0, $f0, $f2
/* 4CEE0 8004C2E0 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4CEE4 8004C2E4 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4CEE8 8004C2E8 4636B000 */  add.d      $f0, $f22, $f22
/* 4CEEC 8004C2EC D6020078 */  ldc1       $f2, 0x78($s0)
/* 4CEF0 8004C2F0 46220002 */  mul.d      $f0, $f0, $f2
.L8004C2F4:
/* 4CEF4 8004C2F4 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4CEF8 8004C2F8 F4208A88 */  sdc1       $f0, %lo(D_802C8A88)($at)
.L8004C2FC:
/* 4CEFC 8004C2FC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4CF00 8004C300 8FB10024 */  lw         $s1, 0x24($sp)
/* 4CF04 8004C304 8FB00020 */  lw         $s0, 0x20($sp)
/* 4CF08 8004C308 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 4CF0C 8004C30C D7B40030 */  ldc1       $f20, 0x30($sp)
/* 4CF10 8004C310 03E00008 */  jr         $ra
/* 4CF14 8004C314 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004C318
/* 4CF18 8004C318 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4CF1C 8004C31C F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4CF20 8004C320 3C01800D */  lui        $at, %hi(D_800D3BB8)
/* 4CF24 8004C324 D4363BB8 */  ldc1       $f22, %lo(D_800D3BB8)($at)
/* 4CF28 8004C328 AFB10014 */  sw         $s1, 0x14($sp)
/* 4CF2C 8004C32C 00808821 */  addu       $s1, $a0, $zero
/* 4CF30 8004C330 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4CF34 8004C334 AFB00010 */  sw         $s0, 0x10($sp)
/* 4CF38 8004C338 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4CF3C 8004C33C 0C0173F9 */  jal        func_8005CFE4
/* 4CF40 8004C340 4620B306 */   mov.d     $f12, $f22
/* 4CF44 8004C344 46200506 */  mov.d      $f20, $f0
/* 4CF48 8004C348 3C10802D */  lui        $s0, %hi(D_802C8A78)
/* 4CF4C 8004C34C 26108A78 */  addiu      $s0, $s0, %lo(D_802C8A78)
/* 4CF50 8004C350 02002021 */  addu       $a0, $s0, $zero
/* 4CF54 8004C354 0C01741A */  jal        func_8005D068
/* 4CF58 8004C358 02202821 */   addu      $a1, $s1, $zero
/* 4CF5C 8004C35C 46200306 */  mov.d      $f12, $f0
/* 4CF60 8004C360 0C012FB8 */  jal        func_8004BEE0
/* 4CF64 8004C364 4620A386 */   mov.d     $f14, $f20
/* 4CF68 8004C368 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4CF6C 8004C36C D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4CF70 8004C370 0C026D98 */  jal        func_8009B660
/* 4CF74 8004C374 46200506 */   mov.d     $f20, $f0
/* 4CF78 8004C378 3C01800D */  lui        $at, %hi(D_800D3BC0)
/* 4CF7C 8004C37C D4223BC0 */  ldc1       $f2, %lo(D_800D3BC0)($at)
/* 4CF80 8004C380 46201103 */  div.d      $f4, $f2, $f0
/* 4CF84 8004C384 4624A502 */  mul.d      $f20, $f20, $f4
/* 4CF88 8004C388 3C01800D */  lui        $at, %hi(D_800D3BC8)
/* 4CF8C 8004C38C D4203BC8 */  ldc1       $f0, %lo(D_800D3BC8)($at)
/* 4CF90 8004C390 F6140000 */  sdc1       $f20, 0x0($s0)
/* 4CF94 8004C394 D6220078 */  ldc1       $f2, 0x78($s1)
/* 4CF98 8004C398 4620103C */  c.lt.d     $f2, $f0
/* 4CF9C 8004C39C 00000000 */  nop
/* 4CFA0 8004C3A0 00000000 */  nop
/* 4CFA4 8004C3A4 4502000A */  bc1fl      .L8004C3D0
/* 4CFA8 8004C3A8 46362002 */   mul.d     $f0, $f4, $f22
/* 4CFAC 8004C3AC 3C01800D */  lui        $at, %hi(D_800D3BD0)
/* 4CFB0 8004C3B0 D4223BD0 */  ldc1       $f2, %lo(D_800D3BD0)($at)
/* 4CFB4 8004C3B4 46222082 */  mul.d      $f2, $f4, $f2
/* 4CFB8 8004C3B8 3C01800D */  lui        $at, %hi(D_800D3BD8)
/* 4CFBC 8004C3BC D4203BD8 */  ldc1       $f0, %lo(D_800D3BD8)($at)
/* 4CFC0 8004C3C0 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4CFC4 8004C3C4 F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4CFC8 8004C3C8 080130FB */  j          .L8004C3EC
/* 4CFCC 8004C3CC 46202002 */   mul.d     $f0, $f4, $f0
.L8004C3D0:
/* 4CFD0 8004C3D0 00000000 */  nop
/* 4CFD4 8004C3D4 46220002 */  mul.d      $f0, $f0, $f2
/* 4CFD8 8004C3D8 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4CFDC 8004C3DC F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4CFE0 8004C3E0 46242000 */  add.d      $f0, $f4, $f4
/* 4CFE4 8004C3E4 D6220078 */  ldc1       $f2, 0x78($s1)
/* 4CFE8 8004C3E8 46220002 */  mul.d      $f0, $f0, $f2
.L8004C3EC:
/* 4CFEC 8004C3EC 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4CFF0 8004C3F0 F4208A88 */  sdc1       $f0, %lo(D_802C8A88)($at)
/* 4CFF4 8004C3F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4CFF8 8004C3F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4CFFC 8004C3FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D000 8004C400 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4D004 8004C404 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4D008 8004C408 03E00008 */  jr         $ra
/* 4D00C 8004C40C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004C410
/* 4D010 8004C410 3C01800D */  lui        $at, %hi(D_800D3BE0)
/* 4D014 8004C414 D42C3BE0 */  ldc1       $f12, %lo(D_800D3BE0)($at)
/* 4D018 8004C418 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4D01C 8004C41C AFB00020 */  sw         $s0, 0x20($sp)
/* 4D020 8004C420 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4D024 8004C424 AFB10024 */  sw         $s1, 0x24($sp)
/* 4D028 8004C428 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 4D02C 8004C42C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 4D030 8004C430 0C0173F9 */  jal        func_8005CFE4
/* 4D034 8004C434 00808021 */   addu      $s0, $a0, $zero
/* 4D038 8004C438 44070000 */  mfc1       $a3, $f0
/* 4D03C 8004C43C 44060800 */  mfc1       $a2, $f1
/* 4D040 8004C440 00000000 */  nop
/* 4D044 8004C444 0C017414 */  jal        func_8005D050
/* 4D048 8004C448 02002021 */   addu      $a0, $s0, $zero
/* 4D04C 8004C44C 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4D050 8004C450 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4D054 8004C454 0C026D98 */  jal        func_8009B660
/* 4D058 8004C458 46200506 */   mov.d     $f20, $f0
/* 4D05C 8004C45C 3C01800D */  lui        $at, %hi(D_800D3BE8)
/* 4D060 8004C460 D4223BE8 */  ldc1       $f2, %lo(D_800D3BE8)($at)
/* 4D064 8004C464 46201583 */  div.d      $f22, $f2, $f0
/* 4D068 8004C468 3C11802D */  lui        $s1, %hi(D_802C8AA8)
/* 4D06C 8004C46C 26318AA8 */  addiu      $s1, $s1, %lo(D_802C8AA8)
/* 4D070 8004C470 2624FFD0 */  addiu      $a0, $s1, -0x30
/* 4D074 8004C474 0C01741A */  jal        func_8005D068
/* 4D078 8004C478 02002821 */   addu      $a1, $s0, $zero
/* 4D07C 8004C47C D6020028 */  ldc1       $f2, 0x28($s0)
/* 4D080 8004C480 4620A306 */  mov.d      $f12, $f20
/* 4D084 8004C484 3C01802B */  lui        $at, %hi(D_802AD858)
/* 4D088 8004C488 F420D858 */  sdc1       $f0, %lo(D_802AD858)($at)
/* 4D08C 8004C48C F7A20010 */  sdc1       $f2, 0x10($sp)
/* 4D090 8004C490 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 4D094 8004C494 0C013021 */  jal        func_8004C084
/* 4D098 8004C498 46200386 */   mov.d     $f14, $f0
/* 4D09C 8004C49C 00000000 */  nop
/* 4D0A0 8004C4A0 46360002 */  mul.d      $f0, $f0, $f22
/* 4D0A4 8004C4A4 F620FFD0 */  sdc1       $f0, -0x30($s1)
/* 4D0A8 8004C4A8 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4D0AC 8004C4AC 3C01800D */  lui        $at, %hi(D_800D3BF0)
/* 4D0B0 8004C4B0 D4203BF0 */  ldc1       $f0, %lo(D_800D3BF0)($at)
/* 4D0B4 8004C4B4 4620103C */  c.lt.d     $f2, $f0
/* 4D0B8 8004C4B8 00000000 */  nop
/* 4D0BC 8004C4BC 45000009 */  bc1f       .L8004C4E4
/* 4D0C0 8004C4C0 00000000 */   nop
/* 4D0C4 8004C4C4 3C01800D */  lui        $at, %hi(D_800D3BF8)
/* 4D0C8 8004C4C8 D4223BF8 */  ldc1       $f2, %lo(D_800D3BF8)($at)
/* 4D0CC 8004C4CC 4622B082 */  mul.d      $f2, $f22, $f2
/* 4D0D0 8004C4D0 3C01800D */  lui        $at, %hi(D_800D3C00)
/* 4D0D4 8004C4D4 D4203C00 */  ldc1       $f0, %lo(D_800D3C00)($at)
/* 4D0D8 8004C4D8 F622FFD8 */  sdc1       $f2, -0x28($s1)
/* 4D0DC 8004C4DC 08013142 */  j          .L8004C508
/* 4D0E0 8004C4E0 4620B002 */   mul.d     $f0, $f22, $f0
.L8004C4E4:
/* 4D0E4 8004C4E4 3C01800D */  lui        $at, %hi(D_800D3C08)
/* 4D0E8 8004C4E8 D4203C08 */  ldc1       $f0, %lo(D_800D3C08)($at)
/* 4D0EC 8004C4EC 4620B002 */  mul.d      $f0, $f22, $f0
/* 4D0F0 8004C4F0 00000000 */  nop
/* 4D0F4 8004C4F4 46220002 */  mul.d      $f0, $f0, $f2
/* 4D0F8 8004C4F8 F620FFD8 */  sdc1       $f0, -0x28($s1)
/* 4D0FC 8004C4FC 4636B000 */  add.d      $f0, $f22, $f22
/* 4D100 8004C500 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4D104 8004C504 46220002 */  mul.d      $f0, $f0, $f2
.L8004C508:
/* 4D108 8004C508 F620FFE0 */  sdc1       $f0, -0x20($s1)
/* 4D10C 8004C50C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4D110 8004C510 8FB10024 */  lw         $s1, 0x24($sp)
/* 4D114 8004C514 8FB00020 */  lw         $s0, 0x20($sp)
/* 4D118 8004C518 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 4D11C 8004C51C D7B40030 */  ldc1       $f20, 0x30($sp)
/* 4D120 8004C520 03E00008 */  jr         $ra
/* 4D124 8004C524 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004C528
/* 4D128 8004C528 462C6302 */  mul.d      $f12, $f12, $f12
/* 4D12C 8004C52C 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 4D130 8004C530 D4206A28 */  ldc1       $f0, %lo(D_800C6A28)($at)
/* 4D134 8004C534 46200000 */  add.d      $f0, $f0, $f0
/* 4D138 8004C538 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4D13C 8004C53C F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 4D140 8004C540 46207686 */  mov.d      $f26, $f14
/* 4D144 8004C544 463A0002 */  mul.d      $f0, $f0, $f26
/* 4D148 8004C548 46206300 */  add.d      $f12, $f12, $f0
/* 4D14C 8004C54C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4D150 8004C550 46206504 */  sqrt.d     $f20, $f12
/* 4D154 8004C554 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 4D158 8004C558 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 4D15C 8004C55C F7B80028 */  sdc1       $f24, 0x28($sp)
/* 4D160 8004C560 D7B80050 */  ldc1       $f24, 0x50($sp)
/* 4D164 8004C564 4634A032 */  c.eq.d     $f20, $f20
/* 4D168 8004C568 00000000 */  nop
/* 4D16C 8004C56C 00000000 */  nop
/* 4D170 8004C570 45010004 */  bc1t       .L8004C584
/* 4D174 8004C574 AFBF0010 */   sw        $ra, 0x10($sp)
/* 4D178 8004C578 0C026F44 */  jal        func_8009BD10
/* 4D17C 8004C57C 00000000 */   nop
/* 4D180 8004C580 46200506 */  mov.d      $f20, $f0
.L8004C584:
/* 4D184 8004C584 3C01800D */  lui        $at, %hi(D_800D3C10)
/* 4D188 8004C588 D4203C10 */  ldc1       $f0, %lo(D_800D3C10)($at)
/* 4D18C 8004C58C 4620B002 */  mul.d      $f0, $f22, $f0
/* 4D190 8004C590 00000000 */  nop
/* 4D194 8004C594 46380002 */  mul.d      $f0, $f0, $f24
/* 4D198 8004C598 3C01800D */  lui        $at, %hi(D_800D3C18)
/* 4D19C 8004C59C D4263C18 */  ldc1       $f6, %lo(D_800D3C18)($at)
/* 4D1A0 8004C5A0 46203101 */  sub.d      $f4, $f6, $f0
/* 4D1A4 8004C5A4 44800000 */  mtc1       $zero, $f0
/* 4D1A8 8004C5A8 44800800 */  mtc1       $zero, $f1
/* 4D1AC 8004C5AC 00000000 */  nop
/* 4D1B0 8004C5B0 4620203C */  c.lt.d     $f4, $f0
/* 4D1B4 8004C5B4 00000000 */  nop
/* 4D1B8 8004C5B8 00000000 */  nop
/* 4D1BC 8004C5BC 45010016 */  bc1t       .L8004C618
/* 4D1C0 8004C5C0 4620A006 */   mov.d     $f0, $f20
/* 4D1C4 8004C5C4 3C01800D */  lui        $at, %hi(D_800D3C20)
/* 4D1C8 8004C5C8 D4203C20 */  ldc1       $f0, %lo(D_800D3C20)($at)
/* 4D1CC 8004C5CC 46202002 */  mul.d      $f0, $f4, $f0
/* 4D1D0 8004C5D0 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 4D1D4 8004C5D4 D42269F8 */  ldc1       $f2, %lo(D_800C69F8)($at)
/* 4D1D8 8004C5D8 4622D082 */  mul.d      $f2, $f26, $f2
/* 4D1DC 8004C5DC 46203001 */  sub.d      $f0, $f6, $f0
/* 4D1E0 8004C5E0 46202002 */  mul.d      $f0, $f4, $f0
/* 4D1E4 8004C5E4 46201303 */  div.d      $f12, $f2, $f0
/* 4D1E8 8004C5E8 46206004 */  sqrt.d     $f0, $f12
/* 4D1EC 8004C5EC 46200032 */  c.eq.d     $f0, $f0
/* 4D1F0 8004C5F0 00000000 */  nop
/* 4D1F4 8004C5F4 45010003 */  bc1t       .L8004C604
/* 4D1F8 8004C5F8 00000000 */   nop
/* 4D1FC 8004C5FC 0C026F44 */  jal        func_8009BD10
/* 4D200 8004C600 00000000 */   nop
.L8004C604:
/* 4D204 8004C604 4620A03C */  c.lt.d     $f20, $f0
/* 4D208 8004C608 00000000 */  nop
/* 4D20C 8004C60C 00000000 */  nop
/* 4D210 8004C610 45020001 */  bc1fl      .L8004C618
/* 4D214 8004C614 4620A006 */   mov.d     $f0, $f20
.L8004C618:
/* 4D218 8004C618 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4D21C 8004C61C D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 4D220 8004C620 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 4D224 8004C624 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 4D228 8004C628 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4D22C 8004C62C 03E00008 */  jr         $ra
/* 4D230 8004C630 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8004C634
/* 4D234 8004C634 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4D238 8004C638 D7A00040 */  ldc1       $f0, 0x40($sp)
/* 4D23C 8004C63C 3C01800D */  lui        $at, %hi(D_800D3C28)
/* 4D240 8004C640 D4223C28 */  ldc1       $f2, %lo(D_800D3C28)($at)
/* 4D244 8004C644 46220002 */  mul.d      $f0, $f0, $f2
/* 4D248 8004C648 D7A20048 */  ldc1       $f2, 0x48($sp)
/* 4D24C 8004C64C 46220002 */  mul.d      $f0, $f0, $f2
/* 4D250 8004C650 3C01800D */  lui        $at, %hi(D_800D3C30)
/* 4D254 8004C654 D4263C30 */  ldc1       $f6, %lo(D_800D3C30)($at)
/* 4D258 8004C658 46260001 */  sub.d      $f0, $f0, $f6
/* 4D25C 8004C65C 3C01800D */  lui        $at, %hi(D_800D3C38)
/* 4D260 8004C660 D4223C38 */  ldc1       $f2, %lo(D_800D3C38)($at)
/* 4D264 8004C664 46200005 */  abs.d      $f0, $f0
/* 4D268 8004C668 46220082 */  mul.d      $f2, $f0, $f2
/* 4D26C 8004C66C 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 4D270 8004C670 D42469F8 */  ldc1       $f4, %lo(D_800C69F8)($at)
/* 4D274 8004C674 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 4D278 8004C678 46207606 */  mov.d      $f24, $f14
/* 4D27C 8004C67C 4624C102 */  mul.d      $f4, $f24, $f4
/* 4D280 8004C680 46261080 */  add.d      $f2, $f2, $f6
/* 4D284 8004C684 46220002 */  mul.d      $f0, $f0, $f2
/* 4D288 8004C688 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 4D28C 8004C68C 46206586 */  mov.d      $f22, $f12
/* 4D290 8004C690 46202303 */  div.d      $f12, $f4, $f0
/* 4D294 8004C694 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4D298 8004C698 46206504 */  sqrt.d     $f20, $f12
/* 4D29C 8004C69C 4634A032 */  c.eq.d     $f20, $f20
/* 4D2A0 8004C6A0 00000000 */  nop
/* 4D2A4 8004C6A4 00000000 */  nop
/* 4D2A8 8004C6A8 45010004 */  bc1t       .L8004C6BC
/* 4D2AC 8004C6AC AFBF0010 */   sw        $ra, 0x10($sp)
/* 4D2B0 8004C6B0 0C026F44 */  jal        func_8009BD10
/* 4D2B4 8004C6B4 00000000 */   nop
/* 4D2B8 8004C6B8 46200506 */  mov.d      $f20, $f0
.L8004C6BC:
/* 4D2BC 8004C6BC 00000000 */  nop
/* 4D2C0 8004C6C0 4636B002 */  mul.d      $f0, $f22, $f22
/* 4D2C4 8004C6C4 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 4D2C8 8004C6C8 D4226A28 */  ldc1       $f2, %lo(D_800C6A28)($at)
/* 4D2CC 8004C6CC 46221080 */  add.d      $f2, $f2, $f2
/* 4D2D0 8004C6D0 46381082 */  mul.d      $f2, $f2, $f24
/* 4D2D4 8004C6D4 46220301 */  sub.d      $f12, $f0, $f2
/* 4D2D8 8004C6D8 44800000 */  mtc1       $zero, $f0
/* 4D2DC 8004C6DC 44800800 */  mtc1       $zero, $f1
/* 4D2E0 8004C6E0 00000000 */  nop
/* 4D2E4 8004C6E4 4620603C */  c.lt.d     $f12, $f0
/* 4D2E8 8004C6E8 00000000 */  nop
/* 4D2EC 8004C6EC 00000000 */  nop
/* 4D2F0 8004C6F0 45010010 */  bc1t       .L8004C734
/* 4D2F4 8004C6F4 4620A006 */   mov.d     $f0, $f20
/* 4D2F8 8004C6F8 46206004 */  sqrt.d     $f0, $f12
/* 4D2FC 8004C6FC 46200032 */  c.eq.d     $f0, $f0
/* 4D300 8004C700 00000000 */  nop
/* 4D304 8004C704 00000000 */  nop
/* 4D308 8004C708 45030004 */  bc1tl      .L8004C71C
/* 4D30C 8004C70C 46200306 */   mov.d     $f12, $f0
/* 4D310 8004C710 0C026F44 */  jal        func_8009BD10
/* 4D314 8004C714 00000000 */   nop
/* 4D318 8004C718 46200306 */  mov.d      $f12, $f0
.L8004C71C:
/* 4D31C 8004C71C 4634603C */  c.lt.d     $f12, $f20
/* 4D320 8004C720 00000000 */  nop
/* 4D324 8004C724 00000000 */  nop
/* 4D328 8004C728 45010002 */  bc1t       .L8004C734
/* 4D32C 8004C72C 4620A006 */   mov.d     $f0, $f20
/* 4D330 8004C730 46206006 */  mov.d      $f0, $f12
.L8004C734:
/* 4D334 8004C734 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4D338 8004C738 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 4D33C 8004C73C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 4D340 8004C740 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4D344 8004C744 03E00008 */  jr         $ra
/* 4D348 8004C748 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004C74C
/* 4D34C 8004C74C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4D350 8004C750 AFB00020 */  sw         $s0, 0x20($sp)
/* 4D354 8004C754 00808021 */  addu       $s0, $a0, $zero
/* 4D358 8004C758 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4D35C 8004C75C AFB10024 */  sw         $s1, 0x24($sp)
/* 4D360 8004C760 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 4D364 8004C764 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 4D368 8004C768 D6020028 */  ldc1       $f2, 0x28($s0)
/* 4D36C 8004C76C 44800000 */  mtc1       $zero, $f0
/* 4D370 8004C770 44800800 */  mtc1       $zero, $f1
/* 4D374 8004C774 00000000 */  nop
/* 4D378 8004C778 4622003C */  c.lt.d     $f0, $f2
/* 4D37C 8004C77C 00000000 */  nop
/* 4D380 8004C780 4501000A */  bc1t       .L8004C7AC
/* 4D384 8004C784 00000000 */   nop
/* 4D388 8004C788 3C11802D */  lui        $s1, %hi(D_802C8A90)
/* 4D38C 8004C78C 26318A90 */  addiu      $s1, $s1, %lo(D_802C8A90)
/* 4D390 8004C790 D6220000 */  ldc1       $f2, 0x0($s1)
/* 4D394 8004C794 3C01800D */  lui        $at, %hi(D_800D3C48)
/* 4D398 8004C798 D4203C48 */  ldc1       $f0, %lo(D_800D3C48)($at)
/* 4D39C 8004C79C 4622003C */  c.lt.d     $f0, $f2
/* 4D3A0 8004C7A0 00000000 */  nop
/* 4D3A4 8004C7A4 45000006 */  bc1f       .L8004C7C0
/* 4D3A8 8004C7A8 00000000 */   nop
.L8004C7AC:
/* 4D3AC 8004C7AC 3C01800D */  lui        $at, %hi(D_800D3C40)
/* 4D3B0 8004C7B0 D4203C40 */  ldc1       $f0, %lo(D_800D3C40)($at)
/* 4D3B4 8004C7B4 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4D3B8 8004C7B8 08013239 */  j          .L8004C8E4
/* 4D3BC 8004C7BC F4208A78 */   sdc1      $f0, %lo(D_802C8A78)($at)
.L8004C7C0:
/* 4D3C0 8004C7C0 820400A2 */  lb         $a0, 0xA2($s0)
/* 4D3C4 8004C7C4 0C017393 */  jal        func_8005CE4C
/* 4D3C8 8004C7C8 820500A1 */   lb        $a1, 0xA1($s0)
/* 4D3CC 8004C7CC 3C01800D */  lui        $at, %hi(D_800D3C50)
/* 4D3D0 8004C7D0 D42C3C50 */  ldc1       $f12, %lo(D_800D3C50)($at)
/* 4D3D4 8004C7D4 0C0173F9 */  jal        func_8005CFE4
/* 4D3D8 8004C7D8 462C0300 */   add.d     $f12, $f0, $f12
/* 4D3DC 8004C7DC 44070000 */  mfc1       $a3, $f0
/* 4D3E0 8004C7E0 44060800 */  mfc1       $a2, $f1
/* 4D3E4 8004C7E4 00000000 */  nop
/* 4D3E8 8004C7E8 0C017414 */  jal        func_8005D050
/* 4D3EC 8004C7EC 02002021 */   addu      $a0, $s0, $zero
/* 4D3F0 8004C7F0 D62C0000 */  ldc1       $f12, 0x0($s1)
/* 4D3F4 8004C7F4 0C026D98 */  jal        func_8009B660
/* 4D3F8 8004C7F8 46200586 */   mov.d     $f22, $f0
/* 4D3FC 8004C7FC 3C01800D */  lui        $at, %hi(D_800D3C58)
/* 4D400 8004C800 D4223C58 */  ldc1       $f2, %lo(D_800D3C58)($at)
/* 4D404 8004C804 2624FFE8 */  addiu      $a0, $s1, -0x18
/* 4D408 8004C808 02002821 */  addu       $a1, $s0, $zero
/* 4D40C 8004C80C 0C01741A */  jal        func_8005D068
/* 4D410 8004C810 46201503 */   div.d     $f20, $f2, $f0
/* 4D414 8004C814 D6020028 */  ldc1       $f2, 0x28($s0)
/* 4D418 8004C818 3C01800D */  lui        $at, %hi(D_800D3C60)
/* 4D41C 8004C81C D4243C60 */  ldc1       $f4, %lo(D_800D3C60)($at)
/* 4D420 8004C820 46201087 */  neg.d      $f2, $f2
/* 4D424 8004C824 4624103C */  c.lt.d     $f2, $f4
/* 4D428 8004C828 3C01802B */  lui        $at, %hi(D_802AD858)
/* 4D42C 8004C82C F420D858 */  sdc1       $f0, %lo(D_802AD858)($at)
/* 4D430 8004C830 45000007 */  bc1f       .L8004C850
/* 4D434 8004C834 4620B306 */   mov.d     $f12, $f22
/* 4D438 8004C838 F7A20010 */  sdc1       $f2, 0x10($sp)
/* 4D43C 8004C83C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4D440 8004C840 0C01314A */  jal        func_8004C528
/* 4D444 8004C844 46200386 */   mov.d     $f14, $f0
/* 4D448 8004C848 0801321A */  j          .L8004C868
/* 4D44C 8004C84C 46340002 */   mul.d     $f0, $f0, $f20
.L8004C850:
/* 4D450 8004C850 F7A20010 */  sdc1       $f2, 0x10($sp)
/* 4D454 8004C854 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4D458 8004C858 0C01318D */  jal        func_8004C634
/* 4D45C 8004C85C 46200386 */   mov.d     $f14, $f0
/* 4D460 8004C860 00000000 */  nop
/* 4D464 8004C864 46340002 */  mul.d      $f0, $f0, $f20
.L8004C868:
/* 4D468 8004C868 3C02802D */  lui        $v0, %hi(D_802C8AA8)
/* 4D46C 8004C86C 24428AA8 */  addiu      $v0, $v0, %lo(D_802C8AA8)
/* 4D470 8004C870 F440FFD0 */  sdc1       $f0, -0x30($v0)
/* 4D474 8004C874 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4D478 8004C878 3C01800D */  lui        $at, %hi(D_800D3C68)
/* 4D47C 8004C87C D4203C68 */  ldc1       $f0, %lo(D_800D3C68)($at)
/* 4D480 8004C880 4620103C */  c.lt.d     $f2, $f0
/* 4D484 8004C884 00000000 */  nop
/* 4D488 8004C888 4500000A */  bc1f       .L8004C8B4
/* 4D48C 8004C88C 00000000 */   nop
/* 4D490 8004C890 3C01800D */  lui        $at, %hi(D_800D3C70)
/* 4D494 8004C894 D4223C70 */  ldc1       $f2, %lo(D_800D3C70)($at)
/* 4D498 8004C898 4622A082 */  mul.d      $f2, $f20, $f2
/* 4D49C 8004C89C 3C01800D */  lui        $at, %hi(D_800D3C78)
/* 4D4A0 8004C8A0 D4203C78 */  ldc1       $f0, %lo(D_800D3C78)($at)
/* 4D4A4 8004C8A4 4620A002 */  mul.d      $f0, $f20, $f0
/* 4D4A8 8004C8A8 F442FFD8 */  sdc1       $f2, -0x28($v0)
/* 4D4AC 8004C8AC 08013239 */  j          .L8004C8E4
/* 4D4B0 8004C8B0 F440FFE0 */   sdc1      $f0, -0x20($v0)
.L8004C8B4:
/* 4D4B4 8004C8B4 3C01800D */  lui        $at, %hi(D_800D3C80)
/* 4D4B8 8004C8B8 D4203C80 */  ldc1       $f0, %lo(D_800D3C80)($at)
/* 4D4BC 8004C8BC 4620A002 */  mul.d      $f0, $f20, $f0
/* 4D4C0 8004C8C0 00000000 */  nop
/* 4D4C4 8004C8C4 46220002 */  mul.d      $f0, $f0, $f2
/* 4D4C8 8004C8C8 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4D4CC 8004C8CC F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4D4D0 8004C8D0 4634A000 */  add.d      $f0, $f20, $f20
/* 4D4D4 8004C8D4 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4D4D8 8004C8D8 46220002 */  mul.d      $f0, $f0, $f2
/* 4D4DC 8004C8DC 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4D4E0 8004C8E0 F4208A88 */  sdc1       $f0, %lo(D_802C8A88)($at)
.L8004C8E4:
/* 4D4E4 8004C8E4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4D4E8 8004C8E8 8FB10024 */  lw         $s1, 0x24($sp)
/* 4D4EC 8004C8EC 8FB00020 */  lw         $s0, 0x20($sp)
/* 4D4F0 8004C8F0 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 4D4F4 8004C8F4 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 4D4F8 8004C8F8 03E00008 */  jr         $ra
/* 4D4FC 8004C8FC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004C900
/* 4D500 8004C900 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 4D504 8004C904 AFB00030 */  sw         $s0, 0x30($sp)
/* 4D508 8004C908 00808021 */  addu       $s0, $a0, $zero
/* 4D50C 8004C90C AFBF0038 */  sw         $ra, 0x38($sp)
/* 4D510 8004C910 AFB10034 */  sw         $s1, 0x34($sp)
/* 4D514 8004C914 F7B80050 */  sdc1       $f24, 0x50($sp)
/* 4D518 8004C918 F7B60048 */  sdc1       $f22, 0x48($sp)
/* 4D51C 8004C91C F7B40040 */  sdc1       $f20, 0x40($sp)
/* 4D520 8004C920 820200A3 */  lb         $v0, 0xA3($s0)
/* 4D524 8004C924 D6000050 */  ldc1       $f0, 0x50($s0)
/* 4D528 8004C928 00021100 */  sll        $v0, $v0, 4
/* 4D52C 8004C92C 46200000 */  add.d      $f0, $f0, $f0
/* 4D530 8004C930 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4D534 8004C934 00220821 */  addu       $at, $at, $v0
/* 4D538 8004C938 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 4D53C 8004C93C 46201081 */  sub.d      $f2, $f2, $f0
/* 4D540 8004C940 F7A20020 */  sdc1       $f2, 0x20($sp)
/* 4D544 8004C944 820200A3 */  lb         $v0, 0xA3($s0)
/* 4D548 8004C948 D6000058 */  ldc1       $f0, 0x58($s0)
/* 4D54C 8004C94C 00021100 */  sll        $v0, $v0, 4
/* 4D550 8004C950 46200000 */  add.d      $f0, $f0, $f0
/* 4D554 8004C954 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4D558 8004C958 00220821 */  addu       $at, $at, $v0
/* 4D55C 8004C95C D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 4D560 8004C960 46202101 */  sub.d      $f4, $f4, $f0
/* 4D564 8004C964 F7A40028 */  sdc1       $f4, 0x28($sp)
/* 4D568 8004C968 820200A2 */  lb         $v0, 0xA2($s0)
/* 4D56C 8004C96C 00021100 */  sll        $v0, $v0, 4
/* 4D570 8004C970 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4D574 8004C974 00220821 */  addu       $at, $at, $v0
/* 4D578 8004C978 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 4D57C 8004C97C 46201081 */  sub.d      $f2, $f2, $f0
/* 4D580 8004C980 F7A20020 */  sdc1       $f2, 0x20($sp)
/* 4D584 8004C984 820200A2 */  lb         $v0, 0xA2($s0)
/* 4D588 8004C988 00021100 */  sll        $v0, $v0, 4
/* 4D58C 8004C98C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4D590 8004C990 00220821 */  addu       $at, $at, $v0
/* 4D594 8004C994 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 4D598 8004C998 46202101 */  sub.d      $f4, $f4, $f0
/* 4D59C 8004C99C 27B10020 */  addiu      $s1, $sp, 0x20
/* 4D5A0 8004C9A0 F7A40028 */  sdc1       $f4, 0x28($sp)
/* 4D5A4 8004C9A4 0C022CF3 */  jal        func_8008B3CC
/* 4D5A8 8004C9A8 02202021 */   addu      $a0, $s1, $zero
/* 4D5AC 8004C9AC 02202021 */  addu       $a0, $s1, $zero
/* 4D5B0 8004C9B0 26050050 */  addiu      $a1, $s0, 0x50
/* 4D5B4 8004C9B4 0C022C7C */  jal        func_8008B1F0
/* 4D5B8 8004C9B8 46200606 */   mov.d     $f24, $f0
/* 4D5BC 8004C9BC 820200A2 */  lb         $v0, 0xA2($s0)
/* 4D5C0 8004C9C0 46200005 */  abs.d      $f0, $f0
/* 4D5C4 8004C9C4 F6000080 */  sdc1       $f0, 0x80($s0)
/* 4D5C8 8004C9C8 D7A00020 */  ldc1       $f0, 0x20($sp)
/* 4D5CC 8004C9CC 00021100 */  sll        $v0, $v0, 4
/* 4D5D0 8004C9D0 46200000 */  add.d      $f0, $f0, $f0
/* 4D5D4 8004C9D4 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4D5D8 8004C9D8 00220821 */  addu       $at, $at, $v0
/* 4D5DC 8004C9DC D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 4D5E0 8004C9E0 46202101 */  sub.d      $f4, $f4, $f0
/* 4D5E4 8004C9E4 D7A00028 */  ldc1       $f0, 0x28($sp)
/* 4D5E8 8004C9E8 F7A40010 */  sdc1       $f4, 0x10($sp)
/* 4D5EC 8004C9EC 820200A2 */  lb         $v0, 0xA2($s0)
/* 4D5F0 8004C9F0 46200000 */  add.d      $f0, $f0, $f0
/* 4D5F4 8004C9F4 00021100 */  sll        $v0, $v0, 4
/* 4D5F8 8004C9F8 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4D5FC 8004C9FC 00220821 */  addu       $at, $at, $v0
/* 4D600 8004CA00 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 4D604 8004CA04 46201081 */  sub.d      $f2, $f2, $f0
/* 4D608 8004CA08 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4D60C 8004CA0C D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 4D610 8004CA10 46202101 */  sub.d      $f4, $f4, $f0
/* 4D614 8004CA14 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4D618 8004CA18 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 4D61C 8004CA1C 46201001 */  sub.d      $f0, $f2, $f0
/* 4D620 8004CA20 F7A20018 */  sdc1       $f2, 0x18($sp)
/* 4D624 8004CA24 F7A40010 */  sdc1       $f4, 0x10($sp)
/* 4D628 8004CA28 F7A00018 */  sdc1       $f0, 0x18($sp)
/* 4D62C 8004CA2C 0C022CF3 */  jal        func_8008B3CC
/* 4D630 8004CA30 27A40010 */   addiu     $a0, $sp, 0x10
/* 4D634 8004CA34 27A40010 */  addiu      $a0, $sp, 0x10
/* 4D638 8004CA38 0C022C7C */  jal        func_8008B1F0
/* 4D63C 8004CA3C 02202821 */   addu      $a1, $s1, $zero
/* 4D640 8004CA40 820400A3 */  lb         $a0, 0xA3($s0)
/* 4D644 8004CA44 820500A1 */  lb         $a1, 0xA1($s0)
/* 4D648 8004CA48 3C01800D */  lui        $at, %hi(D_800D3C88)
/* 4D64C 8004CA4C D4363C88 */  ldc1       $f22, %lo(D_800D3C88)($at)
/* 4D650 8004CA50 46200005 */  abs.d      $f0, $f0
/* 4D654 8004CA54 0C017393 */  jal        func_8005CE4C
/* 4D658 8004CA58 F6000078 */   sdc1      $f0, 0x78($s0)
/* 4D65C 8004CA5C 0C0173F9 */  jal        func_8005CFE4
/* 4D660 8004CA60 46360300 */   add.d     $f12, $f0, $f22
/* 4D664 8004CA64 D6020080 */  ldc1       $f2, 0x80($s0)
/* 4D668 8004CA68 46220503 */  div.d      $f20, $f0, $f2
/* 4D66C 8004CA6C 0C0173F9 */  jal        func_8005CFE4
/* 4D670 8004CA70 4636C300 */   add.d     $f12, $f24, $f22
/* 4D674 8004CA74 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4D678 8004CA78 46220003 */  div.d      $f0, $f0, $f2
/* 4D67C 8004CA7C 46340000 */  add.d      $f0, $f0, $f20
/* 4D680 8004CA80 8FBF0038 */  lw         $ra, 0x38($sp)
/* 4D684 8004CA84 8FB10034 */  lw         $s1, 0x34($sp)
/* 4D688 8004CA88 8FB00030 */  lw         $s0, 0x30($sp)
/* 4D68C 8004CA8C D7B80050 */  ldc1       $f24, 0x50($sp)
/* 4D690 8004CA90 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 4D694 8004CA94 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 4D698 8004CA98 03E00008 */  jr         $ra
/* 4D69C 8004CA9C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8004CAA0
/* 4D6A0 8004CAA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4D6A4 8004CAA4 AFB10014 */  sw         $s1, 0x14($sp)
/* 4D6A8 8004CAA8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4D6AC 8004CAAC AFB00010 */  sw         $s0, 0x10($sp)
/* 4D6B0 8004CAB0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4D6B4 8004CAB4 0C013240 */  jal        func_8004C900
/* 4D6B8 8004CAB8 00808821 */   addu      $s1, $a0, $zero
/* 4D6BC 8004CABC 3C10802D */  lui        $s0, %hi(D_802C8A78)
/* 4D6C0 8004CAC0 26108A78 */  addiu      $s0, $s0, %lo(D_802C8A78)
/* 4D6C4 8004CAC4 02002021 */  addu       $a0, $s0, $zero
/* 4D6C8 8004CAC8 46200506 */  mov.d      $f20, $f0
/* 4D6CC 8004CACC 0C01741A */  jal        func_8005D068
/* 4D6D0 8004CAD0 02202821 */   addu      $a1, $s1, $zero
/* 4D6D4 8004CAD4 46200306 */  mov.d      $f12, $f0
/* 4D6D8 8004CAD8 0C012FB8 */  jal        func_8004BEE0
/* 4D6DC 8004CADC 4620A386 */   mov.d     $f14, $f20
/* 4D6E0 8004CAE0 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4D6E4 8004CAE4 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4D6E8 8004CAE8 0C026D98 */  jal        func_8009B660
/* 4D6EC 8004CAEC 46200506 */   mov.d     $f20, $f0
/* 4D6F0 8004CAF0 3C01800D */  lui        $at, %hi(D_800D3C90)
/* 4D6F4 8004CAF4 D4223C90 */  ldc1       $f2, %lo(D_800D3C90)($at)
/* 4D6F8 8004CAF8 46201103 */  div.d      $f4, $f2, $f0
/* 4D6FC 8004CAFC 4624A502 */  mul.d      $f20, $f20, $f4
/* 4D700 8004CB00 3C01800D */  lui        $at, %hi(D_800D3C98)
/* 4D704 8004CB04 D4203C98 */  ldc1       $f0, %lo(D_800D3C98)($at)
/* 4D708 8004CB08 F6140000 */  sdc1       $f20, 0x0($s0)
/* 4D70C 8004CB0C D6220078 */  ldc1       $f2, 0x78($s1)
/* 4D710 8004CB10 4620103C */  c.lt.d     $f2, $f0
/* 4D714 8004CB14 00000000 */  nop
/* 4D718 8004CB18 4500000C */  bc1f       .L8004CB4C
/* 4D71C 8004CB1C 00000000 */   nop
/* 4D720 8004CB20 3C01800D */  lui        $at, %hi(D_800D3CA0)
/* 4D724 8004CB24 D4223CA0 */  ldc1       $f2, %lo(D_800D3CA0)($at)
/* 4D728 8004CB28 46222082 */  mul.d      $f2, $f4, $f2
/* 4D72C 8004CB2C 3C01800D */  lui        $at, %hi(D_800D3CA8)
/* 4D730 8004CB30 D4203CA8 */  ldc1       $f0, %lo(D_800D3CA8)($at)
/* 4D734 8004CB34 46202002 */  mul.d      $f0, $f4, $f0
/* 4D738 8004CB38 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4D73C 8004CB3C F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4D740 8004CB40 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4D744 8004CB44 080132E1 */  j          .L8004CB84
/* 4D748 8004CB48 F4208A88 */   sdc1      $f0, %lo(D_802C8A88)($at)
.L8004CB4C:
/* 4D74C 8004CB4C 3C01800D */  lui        $at, %hi(D_800D3CB0)
/* 4D750 8004CB50 D4203CB0 */  ldc1       $f0, %lo(D_800D3CB0)($at)
/* 4D754 8004CB54 46202002 */  mul.d      $f0, $f4, $f0
/* 4D758 8004CB58 00000000 */  nop
/* 4D75C 8004CB5C 46220002 */  mul.d      $f0, $f0, $f2
/* 4D760 8004CB60 3C01800D */  lui        $at, %hi(D_800D3CB8)
/* 4D764 8004CB64 D4223CB8 */  ldc1       $f2, %lo(D_800D3CB8)($at)
/* 4D768 8004CB68 46222082 */  mul.d      $f2, $f4, $f2
/* 4D76C 8004CB6C 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4D770 8004CB70 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4D774 8004CB74 D6200078 */  ldc1       $f0, 0x78($s1)
/* 4D778 8004CB78 46201082 */  mul.d      $f2, $f2, $f0
/* 4D77C 8004CB7C 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4D780 8004CB80 F4228A88 */  sdc1       $f2, %lo(D_802C8A88)($at)
.L8004CB84:
/* 4D784 8004CB84 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4D788 8004CB88 8FB10014 */  lw         $s1, 0x14($sp)
/* 4D78C 8004CB8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D790 8004CB90 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4D794 8004CB94 03E00008 */  jr         $ra
/* 4D798 8004CB98 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004CB9C
/* 4D79C 8004CB9C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4D7A0 8004CBA0 AFB10024 */  sw         $s1, 0x24($sp)
/* 4D7A4 8004CBA4 00808821 */  addu       $s1, $a0, $zero
/* 4D7A8 8004CBA8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4D7AC 8004CBAC AFB00020 */  sw         $s0, 0x20($sp)
/* 4D7B0 8004CBB0 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 4D7B4 8004CBB4 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 4D7B8 8004CBB8 D6220028 */  ldc1       $f2, 0x28($s1)
/* 4D7BC 8004CBBC 44800000 */  mtc1       $zero, $f0
/* 4D7C0 8004CBC0 44800800 */  mtc1       $zero, $f1
/* 4D7C4 8004CBC4 00000000 */  nop
/* 4D7C8 8004CBC8 4622003C */  c.lt.d     $f0, $f2
/* 4D7CC 8004CBCC 00000000 */  nop
/* 4D7D0 8004CBD0 4501000A */  bc1t       .L8004CBFC
/* 4D7D4 8004CBD4 00000000 */   nop
/* 4D7D8 8004CBD8 3C10802D */  lui        $s0, %hi(D_802C8A90)
/* 4D7DC 8004CBDC 26108A90 */  addiu      $s0, $s0, %lo(D_802C8A90)
/* 4D7E0 8004CBE0 D6020000 */  ldc1       $f2, 0x0($s0)
/* 4D7E4 8004CBE4 3C01800D */  lui        $at, %hi(D_800D3CC8)
/* 4D7E8 8004CBE8 D4203CC8 */  ldc1       $f0, %lo(D_800D3CC8)($at)
/* 4D7EC 8004CBEC 4622003C */  c.lt.d     $f0, $f2
/* 4D7F0 8004CBF0 00000000 */  nop
/* 4D7F4 8004CBF4 45000006 */  bc1f       .L8004CC10
/* 4D7F8 8004CBF8 00000000 */   nop
.L8004CBFC:
/* 4D7FC 8004CBFC 3C01800D */  lui        $at, %hi(D_800D3CC0)
/* 4D800 8004CC00 D4203CC0 */  ldc1       $f0, %lo(D_800D3CC0)($at)
/* 4D804 8004CC04 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4D808 8004CC08 08013345 */  j          .L8004CD14
/* 4D80C 8004CC0C F4208A78 */   sdc1      $f0, %lo(D_802C8A78)($at)
.L8004CC10:
/* 4D810 8004CC10 0C013240 */  jal        func_8004C900
/* 4D814 8004CC14 02202021 */   addu      $a0, $s1, $zero
/* 4D818 8004CC18 D60C0000 */  ldc1       $f12, 0x0($s0)
/* 4D81C 8004CC1C 0C026D98 */  jal        func_8009B660
/* 4D820 8004CC20 46200586 */   mov.d     $f22, $f0
/* 4D824 8004CC24 3C01800D */  lui        $at, %hi(D_800D3CD0)
/* 4D828 8004CC28 D4223CD0 */  ldc1       $f2, %lo(D_800D3CD0)($at)
/* 4D82C 8004CC2C 2604FFE8 */  addiu      $a0, $s0, -0x18
/* 4D830 8004CC30 02202821 */  addu       $a1, $s1, $zero
/* 4D834 8004CC34 0C01741A */  jal        func_8005D068
/* 4D838 8004CC38 46201503 */   div.d     $f20, $f2, $f0
/* 4D83C 8004CC3C D6220028 */  ldc1       $f2, 0x28($s1)
/* 4D840 8004CC40 3C01800D */  lui        $at, %hi(D_800D3CD8)
/* 4D844 8004CC44 D4243CD8 */  ldc1       $f4, %lo(D_800D3CD8)($at)
/* 4D848 8004CC48 46201087 */  neg.d      $f2, $f2
/* 4D84C 8004CC4C 4624103C */  c.lt.d     $f2, $f4
/* 4D850 8004CC50 3C01802B */  lui        $at, %hi(D_802AD858)
/* 4D854 8004CC54 F420D858 */  sdc1       $f0, %lo(D_802AD858)($at)
/* 4D858 8004CC58 45000007 */  bc1f       .L8004CC78
/* 4D85C 8004CC5C 4620B306 */   mov.d     $f12, $f22
/* 4D860 8004CC60 F7A20010 */  sdc1       $f2, 0x10($sp)
/* 4D864 8004CC64 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4D868 8004CC68 0C01314A */  jal        func_8004C528
/* 4D86C 8004CC6C 46200386 */   mov.d     $f14, $f0
/* 4D870 8004CC70 08013324 */  j          .L8004CC90
/* 4D874 8004CC74 46340002 */   mul.d     $f0, $f0, $f20
.L8004CC78:
/* 4D878 8004CC78 F7A20010 */  sdc1       $f2, 0x10($sp)
/* 4D87C 8004CC7C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4D880 8004CC80 0C01318D */  jal        func_8004C634
/* 4D884 8004CC84 46200386 */   mov.d     $f14, $f0
/* 4D888 8004CC88 00000000 */  nop
/* 4D88C 8004CC8C 46340002 */  mul.d      $f0, $f0, $f20
.L8004CC90:
/* 4D890 8004CC90 3C02802D */  lui        $v0, %hi(D_802C8AA8)
/* 4D894 8004CC94 24428AA8 */  addiu      $v0, $v0, %lo(D_802C8AA8)
/* 4D898 8004CC98 F440FFD0 */  sdc1       $f0, -0x30($v0)
/* 4D89C 8004CC9C D6220078 */  ldc1       $f2, 0x78($s1)
/* 4D8A0 8004CCA0 3C01800D */  lui        $at, %hi(D_800D3CE0)
/* 4D8A4 8004CCA4 D4203CE0 */  ldc1       $f0, %lo(D_800D3CE0)($at)
/* 4D8A8 8004CCA8 4620103C */  c.lt.d     $f2, $f0
/* 4D8AC 8004CCAC 00000000 */  nop
/* 4D8B0 8004CCB0 4500000A */  bc1f       .L8004CCDC
/* 4D8B4 8004CCB4 00000000 */   nop
/* 4D8B8 8004CCB8 3C01800D */  lui        $at, %hi(D_800D3CE8)
/* 4D8BC 8004CCBC D4223CE8 */  ldc1       $f2, %lo(D_800D3CE8)($at)
/* 4D8C0 8004CCC0 4622A082 */  mul.d      $f2, $f20, $f2
/* 4D8C4 8004CCC4 3C01800D */  lui        $at, %hi(D_800D3CF0)
/* 4D8C8 8004CCC8 D4203CF0 */  ldc1       $f0, %lo(D_800D3CF0)($at)
/* 4D8CC 8004CCCC 4620A002 */  mul.d      $f0, $f20, $f0
/* 4D8D0 8004CCD0 F442FFD8 */  sdc1       $f2, -0x28($v0)
/* 4D8D4 8004CCD4 08013345 */  j          .L8004CD14
/* 4D8D8 8004CCD8 F440FFE0 */   sdc1      $f0, -0x20($v0)
.L8004CCDC:
/* 4D8DC 8004CCDC 3C01800D */  lui        $at, %hi(D_800D3CF8)
/* 4D8E0 8004CCE0 D4203CF8 */  ldc1       $f0, %lo(D_800D3CF8)($at)
/* 4D8E4 8004CCE4 4620A002 */  mul.d      $f0, $f20, $f0
/* 4D8E8 8004CCE8 00000000 */  nop
/* 4D8EC 8004CCEC 46220002 */  mul.d      $f0, $f0, $f2
/* 4D8F0 8004CCF0 3C01800D */  lui        $at, %hi(D_800D3D00)
/* 4D8F4 8004CCF4 D4223D00 */  ldc1       $f2, %lo(D_800D3D00)($at)
/* 4D8F8 8004CCF8 4622A082 */  mul.d      $f2, $f20, $f2
/* 4D8FC 8004CCFC 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4D900 8004CD00 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4D904 8004CD04 D6200078 */  ldc1       $f0, 0x78($s1)
/* 4D908 8004CD08 46201082 */  mul.d      $f2, $f2, $f0
/* 4D90C 8004CD0C 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4D910 8004CD10 F4228A88 */  sdc1       $f2, %lo(D_802C8A88)($at)
.L8004CD14:
/* 4D914 8004CD14 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4D918 8004CD18 8FB10024 */  lw         $s1, 0x24($sp)
/* 4D91C 8004CD1C 8FB00020 */  lw         $s0, 0x20($sp)
/* 4D920 8004CD20 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 4D924 8004CD24 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 4D928 8004CD28 03E00008 */  jr         $ra
/* 4D92C 8004CD2C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004CD30
/* 4D930 8004CD30 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4D934 8004CD34 AFB00020 */  sw         $s0, 0x20($sp)
/* 4D938 8004CD38 00808021 */  addu       $s0, $a0, $zero
/* 4D93C 8004CD3C AFBF0028 */  sw         $ra, 0x28($sp)
/* 4D940 8004CD40 AFB10024 */  sw         $s1, 0x24($sp)
/* 4D944 8004CD44 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 4D948 8004CD48 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 4D94C 8004CD4C D6020028 */  ldc1       $f2, 0x28($s0)
/* 4D950 8004CD50 44800000 */  mtc1       $zero, $f0
/* 4D954 8004CD54 44800800 */  mtc1       $zero, $f1
/* 4D958 8004CD58 00000000 */  nop
/* 4D95C 8004CD5C 4620103C */  c.lt.d     $f2, $f0
/* 4D960 8004CD60 00000000 */  nop
/* 4D964 8004CD64 4501000A */  bc1t       .L8004CD90
/* 4D968 8004CD68 00000000 */   nop
/* 4D96C 8004CD6C 3C11802D */  lui        $s1, %hi(D_802C8A90)
/* 4D970 8004CD70 26318A90 */  addiu      $s1, $s1, %lo(D_802C8A90)
/* 4D974 8004CD74 D6220000 */  ldc1       $f2, 0x0($s1)
/* 4D978 8004CD78 3C01800D */  lui        $at, %hi(D_800D3D10)
/* 4D97C 8004CD7C D4203D10 */  ldc1       $f0, %lo(D_800D3D10)($at)
/* 4D980 8004CD80 4622003C */  c.lt.d     $f0, $f2
/* 4D984 8004CD84 00000000 */  nop
/* 4D988 8004CD88 45000006 */  bc1f       .L8004CDA4
/* 4D98C 8004CD8C 00000000 */   nop
.L8004CD90:
/* 4D990 8004CD90 3C01800D */  lui        $at, %hi(D_800D3D08)
/* 4D994 8004CD94 D4203D08 */  ldc1       $f0, %lo(D_800D3D08)($at)
/* 4D998 8004CD98 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4D99C 8004CD9C 0801339F */  j          .L8004CE7C
/* 4D9A0 8004CDA0 F4208A78 */   sdc1      $f0, %lo(D_802C8A78)($at)
.L8004CDA4:
/* 4D9A4 8004CDA4 0C013240 */  jal        func_8004C900
/* 4D9A8 8004CDA8 02002021 */   addu      $a0, $s0, $zero
/* 4D9AC 8004CDAC D62C0000 */  ldc1       $f12, 0x0($s1)
/* 4D9B0 8004CDB0 0C026D98 */  jal        func_8009B660
/* 4D9B4 8004CDB4 46200506 */   mov.d     $f20, $f0
/* 4D9B8 8004CDB8 3C01800D */  lui        $at, %hi(D_800D3D18)
/* 4D9BC 8004CDBC D4223D18 */  ldc1       $f2, %lo(D_800D3D18)($at)
/* 4D9C0 8004CDC0 46201583 */  div.d      $f22, $f2, $f0
/* 4D9C4 8004CDC4 2624FFE8 */  addiu      $a0, $s1, -0x18
/* 4D9C8 8004CDC8 0C01741A */  jal        func_8005D068
/* 4D9CC 8004CDCC 02002821 */   addu      $a1, $s0, $zero
/* 4D9D0 8004CDD0 D6020028 */  ldc1       $f2, 0x28($s0)
/* 4D9D4 8004CDD4 4620A306 */  mov.d      $f12, $f20
/* 4D9D8 8004CDD8 3C01802B */  lui        $at, %hi(D_802AD858)
/* 4D9DC 8004CDDC F420D858 */  sdc1       $f0, %lo(D_802AD858)($at)
/* 4D9E0 8004CDE0 F7A20010 */  sdc1       $f2, 0x10($sp)
/* 4D9E4 8004CDE4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 4D9E8 8004CDE8 0C013021 */  jal        func_8004C084
/* 4D9EC 8004CDEC 46200386 */   mov.d     $f14, $f0
/* 4D9F0 8004CDF0 00000000 */  nop
/* 4D9F4 8004CDF4 46360002 */  mul.d      $f0, $f0, $f22
/* 4D9F8 8004CDF8 F620FFE8 */  sdc1       $f0, -0x18($s1)
/* 4D9FC 8004CDFC D6020078 */  ldc1       $f2, 0x78($s0)
/* 4DA00 8004CE00 3C01800D */  lui        $at, %hi(D_800D3D20)
/* 4DA04 8004CE04 D4203D20 */  ldc1       $f0, %lo(D_800D3D20)($at)
/* 4DA08 8004CE08 4620103C */  c.lt.d     $f2, $f0
/* 4DA0C 8004CE0C 00000000 */  nop
/* 4DA10 8004CE10 4500000C */  bc1f       .L8004CE44
/* 4DA14 8004CE14 00000000 */   nop
/* 4DA18 8004CE18 3C01800D */  lui        $at, %hi(D_800D3D28)
/* 4DA1C 8004CE1C D4223D28 */  ldc1       $f2, %lo(D_800D3D28)($at)
/* 4DA20 8004CE20 4622B082 */  mul.d      $f2, $f22, $f2
/* 4DA24 8004CE24 3C01800D */  lui        $at, %hi(D_800D3D30)
/* 4DA28 8004CE28 D4203D30 */  ldc1       $f0, %lo(D_800D3D30)($at)
/* 4DA2C 8004CE2C 4620B002 */  mul.d      $f0, $f22, $f0
/* 4DA30 8004CE30 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DA34 8004CE34 F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4DA38 8004CE38 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DA3C 8004CE3C 0801339F */  j          .L8004CE7C
/* 4DA40 8004CE40 F4208A88 */   sdc1      $f0, %lo(D_802C8A88)($at)
.L8004CE44:
/* 4DA44 8004CE44 3C01800D */  lui        $at, %hi(D_800D3D38)
/* 4DA48 8004CE48 D4203D38 */  ldc1       $f0, %lo(D_800D3D38)($at)
/* 4DA4C 8004CE4C 4620B002 */  mul.d      $f0, $f22, $f0
/* 4DA50 8004CE50 00000000 */  nop
/* 4DA54 8004CE54 46220002 */  mul.d      $f0, $f0, $f2
/* 4DA58 8004CE58 3C01800D */  lui        $at, %hi(D_800D3D40)
/* 4DA5C 8004CE5C D4223D40 */  ldc1       $f2, %lo(D_800D3D40)($at)
/* 4DA60 8004CE60 4622B082 */  mul.d      $f2, $f22, $f2
/* 4DA64 8004CE64 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DA68 8004CE68 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4DA6C 8004CE6C D6000078 */  ldc1       $f0, 0x78($s0)
/* 4DA70 8004CE70 46201082 */  mul.d      $f2, $f2, $f0
/* 4DA74 8004CE74 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DA78 8004CE78 F4228A88 */  sdc1       $f2, %lo(D_802C8A88)($at)
.L8004CE7C:
/* 4DA7C 8004CE7C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4DA80 8004CE80 8FB10024 */  lw         $s1, 0x24($sp)
/* 4DA84 8004CE84 8FB00020 */  lw         $s0, 0x20($sp)
/* 4DA88 8004CE88 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 4DA8C 8004CE8C D7B40030 */  ldc1       $f20, 0x30($sp)
/* 4DA90 8004CE90 03E00008 */  jr         $ra
/* 4DA94 8004CE94 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004CE98
/* 4DA98 8004CE98 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4DA9C 8004CE9C AFB00010 */  sw         $s0, 0x10($sp)
/* 4DAA0 8004CEA0 00808021 */  addu       $s0, $a0, $zero
/* 4DAA4 8004CEA4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4DAA8 8004CEA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 4DAAC 8004CEAC F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4DAB0 8004CEB0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4DAB4 8004CEB4 D6000090 */  ldc1       $f0, 0x90($s0)
/* 4DAB8 8004CEB8 3C01800D */  lui        $at, %hi(D_800D3D48)
/* 4DABC 8004CEBC D42C3D48 */  ldc1       $f12, %lo(D_800D3D48)($at)
/* 4DAC0 8004CEC0 0C0173F9 */  jal        func_8005CFE4
/* 4DAC4 8004CEC4 462C0300 */   add.d     $f12, $f0, $f12
/* 4DAC8 8004CEC8 820200A5 */  lb         $v0, 0xA5($s0)
/* 4DACC 8004CECC D6040060 */  ldc1       $f4, 0x60($s0)
/* 4DAD0 8004CED0 00021100 */  sll        $v0, $v0, 4
/* 4DAD4 8004CED4 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4DAD8 8004CED8 00220821 */  addu       $at, $at, $v0
/* 4DADC 8004CEDC D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 4DAE0 8004CEE0 46241081 */  sub.d      $f2, $f2, $f4
/* 4DAE4 8004CEE4 D6080078 */  ldc1       $f8, 0x78($s0)
/* 4DAE8 8004CEE8 3C11802B */  lui        $s1, %hi(D_802AD840)
/* 4DAEC 8004CEEC 2631D840 */  addiu      $s1, $s1, %lo(D_802AD840)
/* 4DAF0 8004CEF0 F6220000 */  sdc1       $f2, 0x0($s1)
/* 4DAF4 8004CEF4 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4DAF8 8004CEF8 00220821 */  addu       $at, $at, $v0
/* 4DAFC 8004CEFC D42659E0 */  ldc1       $f6, %lo(D_803F59E0)($at)
/* 4DB00 8004CF00 46221082 */  mul.d      $f2, $f2, $f2
/* 4DB04 8004CF04 D6040068 */  ldc1       $f4, 0x68($s0)
/* 4DB08 8004CF08 46243181 */  sub.d      $f6, $f6, $f4
/* 4DB0C 8004CF0C 46263102 */  mul.d      $f4, $f6, $f6
/* 4DB10 8004CF10 46241080 */  add.d      $f2, $f2, $f4
/* 4DB14 8004CF14 46201584 */  sqrt.d     $f22, $f2
/* 4DB18 8004CF18 46280303 */  div.d      $f12, $f0, $f8
/* 4DB1C 8004CF1C 4636B032 */  c.eq.d     $f22, $f22
/* 4DB20 8004CF20 F6260010 */  sdc1       $f6, 0x10($s1)
/* 4DB24 8004CF24 00000000 */  nop
/* 4DB28 8004CF28 45010004 */  bc1t       .L8004CF3C
/* 4DB2C 8004CF2C 462C6502 */   mul.d     $f20, $f12, $f12
/* 4DB30 8004CF30 0C026F44 */  jal        func_8009BD10
/* 4DB34 8004CF34 46201306 */   mov.d     $f12, $f2
/* 4DB38 8004CF38 46200586 */  mov.d      $f22, $f0
.L8004CF3C:
/* 4DB3C 8004CF3C 0C0173F9 */  jal        func_8005CFE4
/* 4DB40 8004CF40 4620B306 */   mov.d     $f12, $f22
/* 4DB44 8004CF44 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4DB48 8004CF48 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 4DB4C 8004CF4C D6040060 */  ldc1       $f4, 0x60($s0)
/* 4DB50 8004CF50 46241081 */  sub.d      $f2, $f2, $f4
/* 4DB54 8004CF54 F6220000 */  sdc1       $f2, 0x0($s1)
/* 4DB58 8004CF58 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4DB5C 8004CF5C D42659E0 */  ldc1       $f6, %lo(D_803F59E0)($at)
/* 4DB60 8004CF60 46221082 */  mul.d      $f2, $f2, $f2
/* 4DB64 8004CF64 D6040068 */  ldc1       $f4, 0x68($s0)
/* 4DB68 8004CF68 46243181 */  sub.d      $f6, $f6, $f4
/* 4DB6C 8004CF6C 46263102 */  mul.d      $f4, $f6, $f6
/* 4DB70 8004CF70 46241080 */  add.d      $f2, $f2, $f4
/* 4DB74 8004CF74 46201304 */  sqrt.d     $f12, $f2
/* 4DB78 8004CF78 46200002 */  mul.d      $f0, $f0, $f0
/* 4DB7C 8004CF7C 4620A500 */  add.d      $f20, $f20, $f0
/* 4DB80 8004CF80 3C01800D */  lui        $at, %hi(D_800D3D50)
/* 4DB84 8004CF84 D4203D50 */  ldc1       $f0, %lo(D_800D3D50)($at)
/* 4DB88 8004CF88 462C6032 */  c.eq.d     $f12, $f12
/* 4DB8C 8004CF8C F6260010 */  sdc1       $f6, 0x10($s1)
/* 4DB90 8004CF90 00000000 */  nop
/* 4DB94 8004CF94 45010004 */  bc1t       .L8004CFA8
/* 4DB98 8004CF98 4620A502 */   mul.d     $f20, $f20, $f0
/* 4DB9C 8004CF9C 0C026F44 */  jal        func_8009BD10
/* 4DBA0 8004CFA0 46201306 */   mov.d     $f12, $f2
/* 4DBA4 8004CFA4 46200306 */  mov.d      $f12, $f0
.L8004CFA8:
/* 4DBA8 8004CFA8 46366000 */  add.d      $f0, $f12, $f22
/* 4DBAC 8004CFAC 3C01800D */  lui        $at, %hi(D_800D3D58)
/* 4DBB0 8004CFB0 D4223D58 */  ldc1       $f2, %lo(D_800D3D58)($at)
/* 4DBB4 8004CFB4 46220002 */  mul.d      $f0, $f0, $f2
/* 4DBB8 8004CFB8 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 4DBBC 8004CFBC D42269F8 */  ldc1       $f2, %lo(D_800C69F8)($at)
/* 4DBC0 8004CFC0 46220002 */  mul.d      $f0, $f0, $f2
/* 4DBC4 8004CFC4 0C0173F9 */  jal        func_8005CFE4
/* 4DBC8 8004CFC8 4620A500 */   add.d     $f20, $f20, $f0
/* 4DBCC 8004CFCC 00000000 */  nop
/* 4DBD0 8004CFD0 46200002 */  mul.d      $f0, $f0, $f0
/* 4DBD4 8004CFD4 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4DBD8 8004CFD8 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4DBDC 8004CFDC 0C026D98 */  jal        func_8009B660
/* 4DBE0 8004CFE0 4620A500 */   add.d     $f20, $f20, $f0
/* 4DBE4 8004CFE4 4620A104 */  sqrt.d     $f4, $f20
/* 4DBE8 8004CFE8 3C01800D */  lui        $at, %hi(D_800D3D60)
/* 4DBEC 8004CFEC D4223D60 */  ldc1       $f2, %lo(D_800D3D60)($at)
/* 4DBF0 8004CFF0 46242032 */  c.eq.d     $f4, $f4
/* 4DBF4 8004CFF4 00000000 */  nop
/* 4DBF8 8004CFF8 00000000 */  nop
/* 4DBFC 8004CFFC 45010004 */  bc1t       .L8004D010
/* 4DC00 8004D000 46201583 */   div.d     $f22, $f2, $f0
/* 4DC04 8004D004 0C026F44 */  jal        func_8009BD10
/* 4DC08 8004D008 4620A306 */   mov.d     $f12, $f20
/* 4DC0C 8004D00C 46200106 */  mov.d      $f4, $f0
.L8004D010:
/* 4DC10 8004D010 00000000 */  nop
/* 4DC14 8004D014 46362002 */  mul.d      $f0, $f4, $f22
/* 4DC18 8004D018 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4DC1C 8004D01C F4208A78 */  sdc1       $f0, %lo(D_802C8A78)($at)
/* 4DC20 8004D020 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4DC24 8004D024 3C01800D */  lui        $at, %hi(D_800D3D68)
/* 4DC28 8004D028 D4203D68 */  ldc1       $f0, %lo(D_800D3D68)($at)
/* 4DC2C 8004D02C 4620103C */  c.lt.d     $f2, $f0
/* 4DC30 8004D030 00000000 */  nop
/* 4DC34 8004D034 4500000C */  bc1f       .L8004D068
/* 4DC38 8004D038 00000000 */   nop
/* 4DC3C 8004D03C 3C01800D */  lui        $at, %hi(D_800D3D70)
/* 4DC40 8004D040 D4223D70 */  ldc1       $f2, %lo(D_800D3D70)($at)
/* 4DC44 8004D044 4622B082 */  mul.d      $f2, $f22, $f2
/* 4DC48 8004D048 3C01800D */  lui        $at, %hi(D_800D3D78)
/* 4DC4C 8004D04C D4203D78 */  ldc1       $f0, %lo(D_800D3D78)($at)
/* 4DC50 8004D050 4620B002 */  mul.d      $f0, $f22, $f0
/* 4DC54 8004D054 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DC58 8004D058 F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4DC5C 8004D05C 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DC60 8004D060 08013428 */  j          .L8004D0A0
/* 4DC64 8004D064 F4208A88 */   sdc1      $f0, %lo(D_802C8A88)($at)
.L8004D068:
/* 4DC68 8004D068 3C01800D */  lui        $at, %hi(D_800D3D80)
/* 4DC6C 8004D06C D4203D80 */  ldc1       $f0, %lo(D_800D3D80)($at)
/* 4DC70 8004D070 4620B002 */  mul.d      $f0, $f22, $f0
/* 4DC74 8004D074 00000000 */  nop
/* 4DC78 8004D078 46220002 */  mul.d      $f0, $f0, $f2
/* 4DC7C 8004D07C 3C01800D */  lui        $at, %hi(D_800D3D88)
/* 4DC80 8004D080 D4223D88 */  ldc1       $f2, %lo(D_800D3D88)($at)
/* 4DC84 8004D084 4622B082 */  mul.d      $f2, $f22, $f2
/* 4DC88 8004D088 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DC8C 8004D08C F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4DC90 8004D090 D6000078 */  ldc1       $f0, 0x78($s0)
/* 4DC94 8004D094 46201082 */  mul.d      $f2, $f2, $f0
/* 4DC98 8004D098 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DC9C 8004D09C F4228A88 */  sdc1       $f2, %lo(D_802C8A88)($at)
.L8004D0A0:
/* 4DCA0 8004D0A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4DCA4 8004D0A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 4DCA8 8004D0A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 4DCAC 8004D0AC D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4DCB0 8004D0B0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4DCB4 8004D0B4 03E00008 */  jr         $ra
/* 4DCB8 8004D0B8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004D0BC
/* 4DCBC 8004D0BC 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4DCC0 8004D0C0 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4DCC4 8004D0C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4DCC8 8004D0C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4DCCC 8004D0CC 0C026D98 */  jal        func_8009B660
/* 4DCD0 8004D0D0 00000000 */   nop
/* 4DCD4 8004D0D4 3C01800D */  lui        $at, %hi(D_800D3D90)
/* 4DCD8 8004D0D8 D4223D90 */  ldc1       $f2, %lo(D_800D3D90)($at)
/* 4DCDC 8004D0DC 46220002 */  mul.d      $f0, $f0, $f2
/* 4DCE0 8004D0E0 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DCE4 8004D0E4 AC208A80 */  sw         $zero, %lo(D_802C8A80)($at)
/* 4DCE8 8004D0E8 3C01802D */  lui        $at, %hi(D_802C8A84)
/* 4DCEC 8004D0EC AC208A84 */  sw         $zero, %lo(D_802C8A84)($at)
/* 4DCF0 8004D0F0 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DCF4 8004D0F4 AC208A88 */  sw         $zero, %lo(D_802C8A88)($at)
/* 4DCF8 8004D0F8 3C01802D */  lui        $at, %hi(D_802C8A8C)
/* 4DCFC 8004D0FC AC208A8C */  sw         $zero, %lo(D_802C8A8C)($at)
/* 4DD00 8004D100 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4DD04 8004D104 F4208A78 */  sdc1       $f0, %lo(D_802C8A78)($at)
/* 4DD08 8004D108 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4DD0C 8004D10C 03E00008 */  jr         $ra
/* 4DD10 8004D110 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004D114
/* 4DD14 8004D114 3C01800D */  lui        $at, %hi(D_800D3D98)
/* 4DD18 8004D118 D42C3D98 */  ldc1       $f12, %lo(D_800D3D98)($at)
/* 4DD1C 8004D11C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4DD20 8004D120 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4DD24 8004D124 0C0173F9 */  jal        func_8005CFE4
/* 4DD28 8004D128 00000000 */   nop
/* 4DD2C 8004D12C 3C01800D */  lui        $at, %hi(D_800D3DA0)
/* 4DD30 8004D130 D4223DA0 */  ldc1       $f2, %lo(D_800D3DA0)($at)
/* 4DD34 8004D134 3C01800D */  lui        $at, %hi(D_800D3DA8)
/* 4DD38 8004D138 D4243DA8 */  ldc1       $f4, %lo(D_800D3DA8)($at)
/* 4DD3C 8004D13C 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4DD40 8004D140 F4208A78 */  sdc1       $f0, %lo(D_802C8A78)($at)
/* 4DD44 8004D144 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DD48 8004D148 F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4DD4C 8004D14C 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DD50 8004D150 F4248A88 */  sdc1       $f4, %lo(D_802C8A88)($at)
/* 4DD54 8004D154 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4DD58 8004D158 03E00008 */  jr         $ra
/* 4DD5C 8004D15C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004D160
/* 4DD60 8004D160 3C01800D */  lui        $at, %hi(D_800D3DB0)
/* 4DD64 8004D164 D4203DB0 */  ldc1       $f0, %lo(D_800D3DB0)($at)
/* 4DD68 8004D168 3C01800D */  lui        $at, %hi(D_800D3DB8)
/* 4DD6C 8004D16C D4223DB8 */  ldc1       $f2, %lo(D_800D3DB8)($at)
/* 4DD70 8004D170 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DD74 8004D174 AC208A88 */  sw         $zero, %lo(D_802C8A88)($at)
/* 4DD78 8004D178 3C01802D */  lui        $at, %hi(D_802C8A8C)
/* 4DD7C 8004D17C AC208A8C */  sw         $zero, %lo(D_802C8A8C)($at)
/* 4DD80 8004D180 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4DD84 8004D184 F4208A78 */  sdc1       $f0, %lo(D_802C8A78)($at)
/* 4DD88 8004D188 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DD8C 8004D18C 03E00008 */  jr         $ra
/* 4DD90 8004D190 F4228A80 */   sdc1      $f2, %lo(D_802C8A80)($at)

glabel func_8004D194
/* 4DD94 8004D194 808300A3 */  lb         $v1, 0xA3($a0)
/* 4DD98 8004D198 04600008 */  bltz       $v1, .L8004D1BC
/* 4DD9C 8004D19C 28620002 */   slti      $v0, $v1, 0x2
/* 4DDA0 8004D1A0 14400006 */  bnez       $v0, .L8004D1BC
/* 4DDA4 8004D1A4 24020002 */   addiu     $v0, $zero, 0x2
/* 4DDA8 8004D1A8 14620004 */  bne        $v1, $v0, .L8004D1BC
/* 4DDAC 8004D1AC 00000000 */   nop
/* 4DDB0 8004D1B0 3C01800D */  lui        $at, %hi(D_800D3DC0)
/* 4DDB4 8004D1B4 08013471 */  j          .L8004D1C4
/* 4DDB8 8004D1B8 D4203DC0 */   ldc1      $f0, %lo(D_800D3DC0)($at)
.L8004D1BC:
/* 4DDBC 8004D1BC 3C01800D */  lui        $at, %hi(D_800D3DC8)
/* 4DDC0 8004D1C0 D4203DC8 */  ldc1       $f0, %lo(D_800D3DC8)($at)
.L8004D1C4:
/* 4DDC4 8004D1C4 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4DDC8 8004D1C8 F4208A78 */  sdc1       $f0, %lo(D_802C8A78)($at)
/* 4DDCC 8004D1CC 3C01800D */  lui        $at, %hi(D_800D3DD0)
/* 4DDD0 8004D1D0 D4203DD0 */  ldc1       $f0, %lo(D_800D3DD0)($at)
/* 4DDD4 8004D1D4 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DDD8 8004D1D8 AC208A88 */  sw         $zero, %lo(D_802C8A88)($at)
/* 4DDDC 8004D1DC 3C01802D */  lui        $at, %hi(D_802C8A8C)
/* 4DDE0 8004D1E0 AC208A8C */  sw         $zero, %lo(D_802C8A8C)($at)
/* 4DDE4 8004D1E4 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DDE8 8004D1E8 03E00008 */  jr         $ra
/* 4DDEC 8004D1EC F4208A80 */   sdc1      $f0, %lo(D_802C8A80)($at)

glabel func_8004D1F0
/* 4DDF0 8004D1F0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4DDF4 8004D1F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 4DDF8 8004D1F8 00808021 */  addu       $s0, $a0, $zero
/* 4DDFC 8004D1FC AFBF0018 */  sw         $ra, 0x18($sp)
/* 4DE00 8004D200 AFB10014 */  sw         $s1, 0x14($sp)
/* 4DE04 8004D204 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 4DE08 8004D208 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4DE0C 8004D20C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4DE10 8004D210 820200A1 */  lb         $v0, 0xA1($s0)
/* 4DE14 8004D214 D6020060 */  ldc1       $f2, 0x60($s0)
/* 4DE18 8004D218 00021100 */  sll        $v0, $v0, 4
/* 4DE1C 8004D21C 3C01800C */  lui        $at, %hi(D_800C66E8)
/* 4DE20 8004D220 00220821 */  addu       $at, $at, $v0
/* 4DE24 8004D224 D42066E8 */  ldc1       $f0, %lo(D_800C66E8)($at)
/* 4DE28 8004D228 46220001 */  sub.d      $f0, $f0, $f2
/* 4DE2C 8004D22C 3C11802B */  lui        $s1, %hi(D_802AD840)
/* 4DE30 8004D230 2631D840 */  addiu      $s1, $s1, %lo(D_802AD840)
/* 4DE34 8004D234 F6200000 */  sdc1       $f0, 0x0($s1)
/* 4DE38 8004D238 820200A1 */  lb         $v0, 0xA1($s0)
/* 4DE3C 8004D23C D6020068 */  ldc1       $f2, 0x68($s0)
/* 4DE40 8004D240 46200002 */  mul.d      $f0, $f0, $f0
/* 4DE44 8004D244 00021100 */  sll        $v0, $v0, 4
/* 4DE48 8004D248 3C01800C */  lui        $at, %hi(D_800C66F0)
/* 4DE4C 8004D24C 00220821 */  addu       $at, $at, $v0
/* 4DE50 8004D250 D42466F0 */  ldc1       $f4, %lo(D_800C66F0)($at)
/* 4DE54 8004D254 46222101 */  sub.d      $f4, $f4, $f2
/* 4DE58 8004D258 46242082 */  mul.d      $f2, $f4, $f4
/* 4DE5C 8004D25C 46220300 */  add.d      $f12, $f0, $f2
/* 4DE60 8004D260 46206004 */  sqrt.d     $f0, $f12
/* 4DE64 8004D264 46200032 */  c.eq.d     $f0, $f0
/* 4DE68 8004D268 F6240010 */  sdc1       $f4, 0x10($s1)
/* 4DE6C 8004D26C 45010003 */  bc1t       .L8004D27C
/* 4DE70 8004D270 00000000 */   nop
/* 4DE74 8004D274 0C026F44 */  jal        func_8009BD10
/* 4DE78 8004D278 00000000 */   nop
.L8004D27C:
/* 4DE7C 8004D27C 3C01800D */  lui        $at, %hi(D_800D3DD8)
/* 4DE80 8004D280 D4363DD8 */  ldc1       $f22, %lo(D_800D3DD8)($at)
/* 4DE84 8004D284 0C0173F9 */  jal        func_8005CFE4
/* 4DE88 8004D288 46360300 */   add.d     $f12, $f0, $f22
/* 4DE8C 8004D28C 820200A2 */  lb         $v0, 0xA2($s0)
/* 4DE90 8004D290 D6020060 */  ldc1       $f2, 0x60($s0)
/* 4DE94 8004D294 00021100 */  sll        $v0, $v0, 4
/* 4DE98 8004D298 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4DE9C 8004D29C 00220821 */  addu       $at, $at, $v0
/* 4DEA0 8004D2A0 D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 4DEA4 8004D2A4 46241081 */  sub.d      $f2, $f2, $f4
/* 4DEA8 8004D2A8 F6220000 */  sdc1       $f2, 0x0($s1)
/* 4DEAC 8004D2AC 820200A2 */  lb         $v0, 0xA2($s0)
/* 4DEB0 8004D2B0 D6060068 */  ldc1       $f6, 0x68($s0)
/* 4DEB4 8004D2B4 46221082 */  mul.d      $f2, $f2, $f2
/* 4DEB8 8004D2B8 00021100 */  sll        $v0, $v0, 4
/* 4DEBC 8004D2BC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4DEC0 8004D2C0 00220821 */  addu       $at, $at, $v0
/* 4DEC4 8004D2C4 D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 4DEC8 8004D2C8 46243181 */  sub.d      $f6, $f6, $f4
/* 4DECC 8004D2CC 46263102 */  mul.d      $f4, $f6, $f6
/* 4DED0 8004D2D0 46241080 */  add.d      $f2, $f2, $f4
/* 4DED4 8004D2D4 46201104 */  sqrt.d     $f4, $f2
/* 4DED8 8004D2D8 46200300 */  add.d      $f12, $f0, $f0
/* 4DEDC 8004D2DC 46242032 */  c.eq.d     $f4, $f4
/* 4DEE0 8004D2E0 F6260010 */  sdc1       $f6, 0x10($s1)
/* 4DEE4 8004D2E4 00000000 */  nop
/* 4DEE8 8004D2E8 45010004 */  bc1t       .L8004D2FC
/* 4DEEC 8004D2EC 462C6502 */   mul.d     $f20, $f12, $f12
/* 4DEF0 8004D2F0 0C026F44 */  jal        func_8009BD10
/* 4DEF4 8004D2F4 46201306 */   mov.d     $f12, $f2
/* 4DEF8 8004D2F8 46200106 */  mov.d      $f4, $f0
.L8004D2FC:
/* 4DEFC 8004D2FC 3C01800D */  lui        $at, %hi(D_800D3DE0)
/* 4DF00 8004D300 D4383DE0 */  ldc1       $f24, %lo(D_800D3DE0)($at)
/* 4DF04 8004D304 46202306 */  mov.d      $f12, $f4
/* 4DF08 8004D308 46386002 */  mul.d      $f0, $f12, $f24
/* 4DF0C 8004D30C 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 4DF10 8004D310 D42269F8 */  ldc1       $f2, %lo(D_800C69F8)($at)
/* 4DF14 8004D314 46220002 */  mul.d      $f0, $f0, $f2
/* 4DF18 8004D318 0C0173F9 */  jal        func_8005CFE4
/* 4DF1C 8004D31C 4620A500 */   add.d     $f20, $f20, $f0
/* 4DF20 8004D320 00000000 */  nop
/* 4DF24 8004D324 46200002 */  mul.d      $f0, $f0, $f0
/* 4DF28 8004D328 D60C0088 */  ldc1       $f12, 0x88($s0)
/* 4DF2C 8004D32C 46366300 */  add.d      $f12, $f12, $f22
/* 4DF30 8004D330 0C0173F9 */  jal        func_8005CFE4
/* 4DF34 8004D334 4620A500 */   add.d     $f20, $f20, $f0
/* 4DF38 8004D338 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4DF3C 8004D33C 46220303 */  div.d      $f12, $f0, $f2
/* 4DF40 8004D340 462C6002 */  mul.d      $f0, $f12, $f12
/* 4DF44 8004D344 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4DF48 8004D348 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4DF4C 8004D34C 0C026D98 */  jal        func_8009B660
/* 4DF50 8004D350 4620A500 */   add.d     $f20, $f20, $f0
/* 4DF54 8004D354 4620A104 */  sqrt.d     $f4, $f20
/* 4DF58 8004D358 3C01800D */  lui        $at, %hi(D_800D3DE8)
/* 4DF5C 8004D35C D4223DE8 */  ldc1       $f2, %lo(D_800D3DE8)($at)
/* 4DF60 8004D360 46242032 */  c.eq.d     $f4, $f4
/* 4DF64 8004D364 00000000 */  nop
/* 4DF68 8004D368 00000000 */  nop
/* 4DF6C 8004D36C 45010004 */  bc1t       .L8004D380
/* 4DF70 8004D370 46201583 */   div.d     $f22, $f2, $f0
/* 4DF74 8004D374 0C026F44 */  jal        func_8009BD10
/* 4DF78 8004D378 4620A306 */   mov.d     $f12, $f20
/* 4DF7C 8004D37C 46200106 */  mov.d      $f4, $f0
.L8004D380:
/* 4DF80 8004D380 00000000 */  nop
/* 4DF84 8004D384 46362002 */  mul.d      $f0, $f4, $f22
/* 4DF88 8004D388 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4DF8C 8004D38C F4208A78 */  sdc1       $f0, %lo(D_802C8A78)($at)
/* 4DF90 8004D390 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4DF94 8004D394 4638103C */  c.lt.d     $f2, $f24
/* 4DF98 8004D398 00000000 */  nop
/* 4DF9C 8004D39C 4500000C */  bc1f       .L8004D3D0
/* 4DFA0 8004D3A0 00000000 */   nop
/* 4DFA4 8004D3A4 3C01800D */  lui        $at, %hi(D_800D3DF0)
/* 4DFA8 8004D3A8 D4223DF0 */  ldc1       $f2, %lo(D_800D3DF0)($at)
/* 4DFAC 8004D3AC 4622B082 */  mul.d      $f2, $f22, $f2
/* 4DFB0 8004D3B0 3C01800D */  lui        $at, %hi(D_800D3DF8)
/* 4DFB4 8004D3B4 D4203DF8 */  ldc1       $f0, %lo(D_800D3DF8)($at)
/* 4DFB8 8004D3B8 4620B002 */  mul.d      $f0, $f22, $f0
/* 4DFBC 8004D3BC 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DFC0 8004D3C0 F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4DFC4 8004D3C4 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4DFC8 8004D3C8 08013502 */  j          .L8004D408
/* 4DFCC 8004D3CC F4208A88 */   sdc1      $f0, %lo(D_802C8A88)($at)
.L8004D3D0:
/* 4DFD0 8004D3D0 3C01800D */  lui        $at, %hi(D_800D3E00)
/* 4DFD4 8004D3D4 D4203E00 */  ldc1       $f0, %lo(D_800D3E00)($at)
/* 4DFD8 8004D3D8 4620B002 */  mul.d      $f0, $f22, $f0
/* 4DFDC 8004D3DC 00000000 */  nop
/* 4DFE0 8004D3E0 46220002 */  mul.d      $f0, $f0, $f2
/* 4DFE4 8004D3E4 3C01800D */  lui        $at, %hi(D_800D3E08)
/* 4DFE8 8004D3E8 D4223E08 */  ldc1       $f2, %lo(D_800D3E08)($at)
/* 4DFEC 8004D3EC 4622B082 */  mul.d      $f2, $f22, $f2
/* 4DFF0 8004D3F0 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4DFF4 8004D3F4 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4DFF8 8004D3F8 D6000078 */  ldc1       $f0, 0x78($s0)
/* 4DFFC 8004D3FC 46201082 */  mul.d      $f2, $f2, $f0
/* 4E000 8004D400 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4E004 8004D404 F4228A88 */  sdc1       $f2, %lo(D_802C8A88)($at)
.L8004D408:
/* 4E008 8004D408 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4E00C 8004D40C 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E010 8004D410 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E014 8004D414 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 4E018 8004D418 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4E01C 8004D41C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4E020 8004D420 03E00008 */  jr         $ra
/* 4E024 8004D424 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8004D428
/* 4E028 8004D428 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4E02C 8004D42C AFB00020 */  sw         $s0, 0x20($sp)
/* 4E030 8004D430 00808021 */  addu       $s0, $a0, $zero
/* 4E034 8004D434 AFBF002C */  sw         $ra, 0x2C($sp)
/* 4E038 8004D438 AFB20028 */  sw         $s2, 0x28($sp)
/* 4E03C 8004D43C AFB10024 */  sw         $s1, 0x24($sp)
/* 4E040 8004D440 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 4E044 8004D444 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 4E048 8004D448 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 4E04C 8004D44C D6020028 */  ldc1       $f2, 0x28($s0)
/* 4E050 8004D450 44800000 */  mtc1       $zero, $f0
/* 4E054 8004D454 44800800 */  mtc1       $zero, $f1
/* 4E058 8004D458 00000000 */  nop
/* 4E05C 8004D45C 4622003C */  c.lt.d     $f0, $f2
/* 4E060 8004D460 00000000 */  nop
/* 4E064 8004D464 4501000A */  bc1t       .L8004D490
/* 4E068 8004D468 00000000 */   nop
/* 4E06C 8004D46C 3C12802D */  lui        $s2, %hi(D_802C8A90)
/* 4E070 8004D470 26528A90 */  addiu      $s2, $s2, %lo(D_802C8A90)
/* 4E074 8004D474 D6420000 */  ldc1       $f2, 0x0($s2)
/* 4E078 8004D478 3C01800D */  lui        $at, %hi(D_800D3E18)
/* 4E07C 8004D47C D4203E18 */  ldc1       $f0, %lo(D_800D3E18)($at)
/* 4E080 8004D480 4622003C */  c.lt.d     $f0, $f2
/* 4E084 8004D484 00000000 */  nop
/* 4E088 8004D488 45000006 */  bc1f       .L8004D4A4
/* 4E08C 8004D48C 00000000 */   nop
.L8004D490:
/* 4E090 8004D490 3C01800D */  lui        $at, %hi(D_800D3E10)
/* 4E094 8004D494 D4203E10 */  ldc1       $f0, %lo(D_800D3E10)($at)
/* 4E098 8004D498 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4E09C 8004D49C 080135B4 */  j          .L8004D6D0
/* 4E0A0 8004D4A0 F4208A78 */   sdc1      $f0, %lo(D_802C8A78)($at)
.L8004D4A4:
/* 4E0A4 8004D4A4 820200A1 */  lb         $v0, 0xA1($s0)
/* 4E0A8 8004D4A8 D6020060 */  ldc1       $f2, 0x60($s0)
/* 4E0AC 8004D4AC 00021100 */  sll        $v0, $v0, 4
/* 4E0B0 8004D4B0 3C01800C */  lui        $at, %hi(D_800C66E8)
/* 4E0B4 8004D4B4 00220821 */  addu       $at, $at, $v0
/* 4E0B8 8004D4B8 D42066E8 */  ldc1       $f0, %lo(D_800C66E8)($at)
/* 4E0BC 8004D4BC 46220001 */  sub.d      $f0, $f0, $f2
/* 4E0C0 8004D4C0 3C11802B */  lui        $s1, %hi(D_802AD840)
/* 4E0C4 8004D4C4 2631D840 */  addiu      $s1, $s1, %lo(D_802AD840)
/* 4E0C8 8004D4C8 F6200000 */  sdc1       $f0, 0x0($s1)
/* 4E0CC 8004D4CC 820200A1 */  lb         $v0, 0xA1($s0)
/* 4E0D0 8004D4D0 D6020068 */  ldc1       $f2, 0x68($s0)
/* 4E0D4 8004D4D4 46200002 */  mul.d      $f0, $f0, $f0
/* 4E0D8 8004D4D8 00021100 */  sll        $v0, $v0, 4
/* 4E0DC 8004D4DC 3C01800C */  lui        $at, %hi(D_800C66F0)
/* 4E0E0 8004D4E0 00220821 */  addu       $at, $at, $v0
/* 4E0E4 8004D4E4 D42466F0 */  ldc1       $f4, %lo(D_800C66F0)($at)
/* 4E0E8 8004D4E8 46222101 */  sub.d      $f4, $f4, $f2
/* 4E0EC 8004D4EC 46242082 */  mul.d      $f2, $f4, $f4
/* 4E0F0 8004D4F0 46220300 */  add.d      $f12, $f0, $f2
/* 4E0F4 8004D4F4 46206004 */  sqrt.d     $f0, $f12
/* 4E0F8 8004D4F8 46200032 */  c.eq.d     $f0, $f0
/* 4E0FC 8004D4FC F6240010 */  sdc1       $f4, 0x10($s1)
/* 4E100 8004D500 45010003 */  bc1t       .L8004D510
/* 4E104 8004D504 00000000 */   nop
/* 4E108 8004D508 0C026F44 */  jal        func_8009BD10
/* 4E10C 8004D50C 00000000 */   nop
.L8004D510:
/* 4E110 8004D510 3C01800D */  lui        $at, %hi(D_800D3E20)
/* 4E114 8004D514 D4363E20 */  ldc1       $f22, %lo(D_800D3E20)($at)
/* 4E118 8004D518 0C0173F9 */  jal        func_8005CFE4
/* 4E11C 8004D51C 46360300 */   add.d     $f12, $f0, $f22
/* 4E120 8004D520 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E124 8004D524 D6020060 */  ldc1       $f2, 0x60($s0)
/* 4E128 8004D528 00021100 */  sll        $v0, $v0, 4
/* 4E12C 8004D52C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4E130 8004D530 00220821 */  addu       $at, $at, $v0
/* 4E134 8004D534 D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 4E138 8004D538 46241081 */  sub.d      $f2, $f2, $f4
/* 4E13C 8004D53C F6220000 */  sdc1       $f2, 0x0($s1)
/* 4E140 8004D540 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E144 8004D544 D6060068 */  ldc1       $f6, 0x68($s0)
/* 4E148 8004D548 46221082 */  mul.d      $f2, $f2, $f2
/* 4E14C 8004D54C 00021100 */  sll        $v0, $v0, 4
/* 4E150 8004D550 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4E154 8004D554 00220821 */  addu       $at, $at, $v0
/* 4E158 8004D558 D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 4E15C 8004D55C 46243181 */  sub.d      $f6, $f6, $f4
/* 4E160 8004D560 46263102 */  mul.d      $f4, $f6, $f6
/* 4E164 8004D564 46241080 */  add.d      $f2, $f2, $f4
/* 4E168 8004D568 46201304 */  sqrt.d     $f12, $f2
/* 4E16C 8004D56C 46200500 */  add.d      $f20, $f0, $f0
/* 4E170 8004D570 462C6032 */  c.eq.d     $f12, $f12
/* 4E174 8004D574 F6260010 */  sdc1       $f6, 0x10($s1)
/* 4E178 8004D578 00000000 */  nop
/* 4E17C 8004D57C 45010004 */  bc1t       .L8004D590
/* 4E180 8004D580 4634A602 */   mul.d     $f24, $f20, $f20
/* 4E184 8004D584 0C026F44 */  jal        func_8009BD10
/* 4E188 8004D588 46201306 */   mov.d     $f12, $f2
/* 4E18C 8004D58C 46200306 */  mov.d      $f12, $f0
.L8004D590:
/* 4E190 8004D590 0C0173F9 */  jal        func_8005CFE4
/* 4E194 8004D594 46366300 */   add.d     $f12, $f12, $f22
/* 4E198 8004D598 00000000 */  nop
/* 4E19C 8004D59C 46200002 */  mul.d      $f0, $f0, $f0
/* 4E1A0 8004D5A0 D64C0000 */  ldc1       $f12, 0x0($s2)
/* 4E1A4 8004D5A4 0C026D98 */  jal        func_8009B660
/* 4E1A8 8004D5A8 4620C600 */   add.d     $f24, $f24, $f0
/* 4E1AC 8004D5AC D6020028 */  ldc1       $f2, 0x28($s0)
/* 4E1B0 8004D5B0 3C01800D */  lui        $at, %hi(D_800D3E28)
/* 4E1B4 8004D5B4 D4243E28 */  ldc1       $f4, %lo(D_800D3E28)($at)
/* 4E1B8 8004D5B8 46201507 */  neg.d      $f20, $f2
/* 4E1BC 8004D5BC 3C01800D */  lui        $at, %hi(D_800D3E30)
/* 4E1C0 8004D5C0 D4223E30 */  ldc1       $f2, %lo(D_800D3E30)($at)
/* 4E1C4 8004D5C4 4624A03C */  c.lt.d     $f20, $f4
/* 4E1C8 8004D5C8 00000000 */  nop
/* 4E1CC 8004D5CC 00000000 */  nop
/* 4E1D0 8004D5D0 4500000F */  bc1f       .L8004D610
/* 4E1D4 8004D5D4 46201583 */   div.d     $f22, $f2, $f0
/* 4E1D8 8004D5D8 4620C004 */  sqrt.d     $f0, $f24
/* 4E1DC 8004D5DC 46200032 */  c.eq.d     $f0, $f0
/* 4E1E0 8004D5E0 00000000 */  nop
/* 4E1E4 8004D5E4 45010003 */  bc1t       .L8004D5F4
/* 4E1E8 8004D5E8 00000000 */   nop
/* 4E1EC 8004D5EC 0C026F44 */  jal        func_8009BD10
/* 4E1F0 8004D5F0 4620C306 */   mov.d     $f12, $f24
.L8004D5F4:
/* 4E1F4 8004D5F4 D60E0088 */  ldc1       $f14, 0x88($s0)
/* 4E1F8 8004D5F8 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 4E1FC 8004D5FC F7B60018 */  sdc1       $f22, 0x18($sp)
/* 4E200 8004D600 0C01314A */  jal        func_8004C528
/* 4E204 8004D604 46200306 */   mov.d     $f12, $f0
/* 4E208 8004D608 08013591 */  j          .L8004D644
/* 4E20C 8004D60C 46200506 */   mov.d     $f20, $f0
.L8004D610:
/* 4E210 8004D610 4620C004 */  sqrt.d     $f0, $f24
/* 4E214 8004D614 46200032 */  c.eq.d     $f0, $f0
/* 4E218 8004D618 00000000 */  nop
/* 4E21C 8004D61C 45010003 */  bc1t       .L8004D62C
/* 4E220 8004D620 00000000 */   nop
/* 4E224 8004D624 0C026F44 */  jal        func_8009BD10
/* 4E228 8004D628 4620C306 */   mov.d     $f12, $f24
.L8004D62C:
/* 4E22C 8004D62C D60E0088 */  ldc1       $f14, 0x88($s0)
/* 4E230 8004D630 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 4E234 8004D634 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 4E238 8004D638 0C01318D */  jal        func_8004C634
/* 4E23C 8004D63C 46200306 */   mov.d     $f12, $f0
/* 4E240 8004D640 46200506 */  mov.d      $f20, $f0
.L8004D644:
/* 4E244 8004D644 00000000 */  nop
/* 4E248 8004D648 4636A002 */  mul.d      $f0, $f20, $f22
/* 4E24C 8004D64C 3C02802D */  lui        $v0, %hi(D_802C8AA8)
/* 4E250 8004D650 24428AA8 */  addiu      $v0, $v0, %lo(D_802C8AA8)
/* 4E254 8004D654 F440FFD0 */  sdc1       $f0, -0x30($v0)
/* 4E258 8004D658 D6020078 */  ldc1       $f2, 0x78($s0)
/* 4E25C 8004D65C 3C01800D */  lui        $at, %hi(D_800D3E38)
/* 4E260 8004D660 D4203E38 */  ldc1       $f0, %lo(D_800D3E38)($at)
/* 4E264 8004D664 4620103C */  c.lt.d     $f2, $f0
/* 4E268 8004D668 00000000 */  nop
/* 4E26C 8004D66C 4500000A */  bc1f       .L8004D698
/* 4E270 8004D670 00000000 */   nop
/* 4E274 8004D674 3C01800D */  lui        $at, %hi(D_800D3E40)
/* 4E278 8004D678 D4223E40 */  ldc1       $f2, %lo(D_800D3E40)($at)
/* 4E27C 8004D67C 4622B082 */  mul.d      $f2, $f22, $f2
/* 4E280 8004D680 3C01800D */  lui        $at, %hi(D_800D3E48)
/* 4E284 8004D684 D4203E48 */  ldc1       $f0, %lo(D_800D3E48)($at)
/* 4E288 8004D688 4620B002 */  mul.d      $f0, $f22, $f0
/* 4E28C 8004D68C F442FFD8 */  sdc1       $f2, -0x28($v0)
/* 4E290 8004D690 080135B4 */  j          .L8004D6D0
/* 4E294 8004D694 F440FFE0 */   sdc1      $f0, -0x20($v0)
.L8004D698:
/* 4E298 8004D698 3C01800D */  lui        $at, %hi(D_800D3E50)
/* 4E29C 8004D69C D4203E50 */  ldc1       $f0, %lo(D_800D3E50)($at)
/* 4E2A0 8004D6A0 4620B002 */  mul.d      $f0, $f22, $f0
/* 4E2A4 8004D6A4 00000000 */  nop
/* 4E2A8 8004D6A8 46220002 */  mul.d      $f0, $f0, $f2
/* 4E2AC 8004D6AC 3C01800D */  lui        $at, %hi(D_800D3E58)
/* 4E2B0 8004D6B0 D4223E58 */  ldc1       $f2, %lo(D_800D3E58)($at)
/* 4E2B4 8004D6B4 4622B082 */  mul.d      $f2, $f22, $f2
/* 4E2B8 8004D6B8 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4E2BC 8004D6BC F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4E2C0 8004D6C0 D6000078 */  ldc1       $f0, 0x78($s0)
/* 4E2C4 8004D6C4 46201082 */  mul.d      $f2, $f2, $f0
/* 4E2C8 8004D6C8 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4E2CC 8004D6CC F4228A88 */  sdc1       $f2, %lo(D_802C8A88)($at)
.L8004D6D0:
/* 4E2D0 8004D6D0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 4E2D4 8004D6D4 8FB20028 */  lw         $s2, 0x28($sp)
/* 4E2D8 8004D6D8 8FB10024 */  lw         $s1, 0x24($sp)
/* 4E2DC 8004D6DC 8FB00020 */  lw         $s0, 0x20($sp)
/* 4E2E0 8004D6E0 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 4E2E4 8004D6E4 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 4E2E8 8004D6E8 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 4E2EC 8004D6EC 03E00008 */  jr         $ra
/* 4E2F0 8004D6F0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8004D6F4
/* 4E2F4 8004D6F4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4E2F8 8004D6F8 AFB00020 */  sw         $s0, 0x20($sp)
/* 4E2FC 8004D6FC 00808021 */  addu       $s0, $a0, $zero
/* 4E300 8004D700 AFBF002C */  sw         $ra, 0x2C($sp)
/* 4E304 8004D704 AFB20028 */  sw         $s2, 0x28($sp)
/* 4E308 8004D708 AFB10024 */  sw         $s1, 0x24($sp)
/* 4E30C 8004D70C F7B60038 */  sdc1       $f22, 0x38($sp)
/* 4E310 8004D710 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 4E314 8004D714 D6020028 */  ldc1       $f2, 0x28($s0)
/* 4E318 8004D718 44800000 */  mtc1       $zero, $f0
/* 4E31C 8004D71C 44800800 */  mtc1       $zero, $f1
/* 4E320 8004D720 00000000 */  nop
/* 4E324 8004D724 4620103C */  c.lt.d     $f2, $f0
/* 4E328 8004D728 00000000 */  nop
/* 4E32C 8004D72C 4501000A */  bc1t       .L8004D758
/* 4E330 8004D730 00000000 */   nop
/* 4E334 8004D734 3C12802D */  lui        $s2, %hi(D_802C8A90)
/* 4E338 8004D738 26528A90 */  addiu      $s2, $s2, %lo(D_802C8A90)
/* 4E33C 8004D73C D6420000 */  ldc1       $f2, 0x0($s2)
/* 4E340 8004D740 3C01800D */  lui        $at, %hi(D_800D3E68)
/* 4E344 8004D744 D4203E68 */  ldc1       $f0, %lo(D_800D3E68)($at)
/* 4E348 8004D748 4622003C */  c.lt.d     $f0, $f2
/* 4E34C 8004D74C 00000000 */  nop
/* 4E350 8004D750 45000006 */  bc1f       .L8004D76C
/* 4E354 8004D754 00000000 */   nop
.L8004D758:
/* 4E358 8004D758 3C01800D */  lui        $at, %hi(D_800D3E60)
/* 4E35C 8004D75C D4203E60 */  ldc1       $f0, %lo(D_800D3E60)($at)
/* 4E360 8004D760 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4E364 8004D764 0801364F */  j          .L8004D93C
/* 4E368 8004D768 F4208A78 */   sdc1      $f0, %lo(D_802C8A78)($at)
.L8004D76C:
/* 4E36C 8004D76C 820200A1 */  lb         $v0, 0xA1($s0)
/* 4E370 8004D770 D6020060 */  ldc1       $f2, 0x60($s0)
/* 4E374 8004D774 00021100 */  sll        $v0, $v0, 4
/* 4E378 8004D778 3C01800C */  lui        $at, %hi(D_800C66E8)
/* 4E37C 8004D77C 00220821 */  addu       $at, $at, $v0
/* 4E380 8004D780 D42066E8 */  ldc1       $f0, %lo(D_800C66E8)($at)
/* 4E384 8004D784 46220001 */  sub.d      $f0, $f0, $f2
/* 4E388 8004D788 3C11802B */  lui        $s1, %hi(D_802AD840)
/* 4E38C 8004D78C 2631D840 */  addiu      $s1, $s1, %lo(D_802AD840)
/* 4E390 8004D790 F6200000 */  sdc1       $f0, 0x0($s1)
/* 4E394 8004D794 820200A1 */  lb         $v0, 0xA1($s0)
/* 4E398 8004D798 D6020068 */  ldc1       $f2, 0x68($s0)
/* 4E39C 8004D79C 46200002 */  mul.d      $f0, $f0, $f0
/* 4E3A0 8004D7A0 00021100 */  sll        $v0, $v0, 4
/* 4E3A4 8004D7A4 3C01800C */  lui        $at, %hi(D_800C66F0)
/* 4E3A8 8004D7A8 00220821 */  addu       $at, $at, $v0
/* 4E3AC 8004D7AC D42466F0 */  ldc1       $f4, %lo(D_800C66F0)($at)
/* 4E3B0 8004D7B0 46222101 */  sub.d      $f4, $f4, $f2
/* 4E3B4 8004D7B4 46242082 */  mul.d      $f2, $f4, $f4
/* 4E3B8 8004D7B8 46220300 */  add.d      $f12, $f0, $f2
/* 4E3BC 8004D7BC 46206004 */  sqrt.d     $f0, $f12
/* 4E3C0 8004D7C0 46200032 */  c.eq.d     $f0, $f0
/* 4E3C4 8004D7C4 F6240010 */  sdc1       $f4, 0x10($s1)
/* 4E3C8 8004D7C8 45010003 */  bc1t       .L8004D7D8
/* 4E3CC 8004D7CC 00000000 */   nop
/* 4E3D0 8004D7D0 0C026F44 */  jal        func_8009BD10
/* 4E3D4 8004D7D4 00000000 */   nop
.L8004D7D8:
/* 4E3D8 8004D7D8 3C01800D */  lui        $at, %hi(D_800D3E70)
/* 4E3DC 8004D7DC D42C3E70 */  ldc1       $f12, %lo(D_800D3E70)($at)
/* 4E3E0 8004D7E0 0C0173F9 */  jal        func_8005CFE4
/* 4E3E4 8004D7E4 462C0300 */   add.d     $f12, $f0, $f12
/* 4E3E8 8004D7E8 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E3EC 8004D7EC D6020060 */  ldc1       $f2, 0x60($s0)
/* 4E3F0 8004D7F0 00021100 */  sll        $v0, $v0, 4
/* 4E3F4 8004D7F4 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4E3F8 8004D7F8 00220821 */  addu       $at, $at, $v0
/* 4E3FC 8004D7FC D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 4E400 8004D800 46241081 */  sub.d      $f2, $f2, $f4
/* 4E404 8004D804 F6220000 */  sdc1       $f2, 0x0($s1)
/* 4E408 8004D808 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E40C 8004D80C D6060068 */  ldc1       $f6, 0x68($s0)
/* 4E410 8004D810 46221082 */  mul.d      $f2, $f2, $f2
/* 4E414 8004D814 00021100 */  sll        $v0, $v0, 4
/* 4E418 8004D818 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4E41C 8004D81C 00220821 */  addu       $at, $at, $v0
/* 4E420 8004D820 D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 4E424 8004D824 46243181 */  sub.d      $f6, $f6, $f4
/* 4E428 8004D828 46263102 */  mul.d      $f4, $f6, $f6
/* 4E42C 8004D82C 46241080 */  add.d      $f2, $f2, $f4
/* 4E430 8004D830 46201304 */  sqrt.d     $f12, $f2
/* 4E434 8004D834 46200000 */  add.d      $f0, $f0, $f0
/* 4E438 8004D838 462C6032 */  c.eq.d     $f12, $f12
/* 4E43C 8004D83C F6260010 */  sdc1       $f6, 0x10($s1)
/* 4E440 8004D840 00000000 */  nop
/* 4E444 8004D844 45010004 */  bc1t       .L8004D858
/* 4E448 8004D848 46200502 */   mul.d     $f20, $f0, $f0
/* 4E44C 8004D84C 0C026F44 */  jal        func_8009BD10
/* 4E450 8004D850 46201306 */   mov.d     $f12, $f2
/* 4E454 8004D854 46200306 */  mov.d      $f12, $f0
.L8004D858:
/* 4E458 8004D858 0C0173F9 */  jal        func_8005CFE4
/* 4E45C 8004D85C 00000000 */   nop
/* 4E460 8004D860 46200002 */  mul.d      $f0, $f0, $f0
/* 4E464 8004D864 D64C0000 */  ldc1       $f12, 0x0($s2)
/* 4E468 8004D868 0C026D98 */  jal        func_8009B660
/* 4E46C 8004D86C 4620A500 */   add.d     $f20, $f20, $f0
/* 4E470 8004D870 4620A304 */  sqrt.d     $f12, $f20
/* 4E474 8004D874 3C01800D */  lui        $at, %hi(D_800D3E78)
/* 4E478 8004D878 D4223E78 */  ldc1       $f2, %lo(D_800D3E78)($at)
/* 4E47C 8004D87C 462C6032 */  c.eq.d     $f12, $f12
/* 4E480 8004D880 00000000 */  nop
/* 4E484 8004D884 00000000 */  nop
/* 4E488 8004D888 45010004 */  bc1t       .L8004D89C
/* 4E48C 8004D88C 46201583 */   div.d     $f22, $f2, $f0
/* 4E490 8004D890 0C026F44 */  jal        func_8009BD10
/* 4E494 8004D894 4620A306 */   mov.d     $f12, $f20
/* 4E498 8004D898 46200306 */  mov.d      $f12, $f0
.L8004D89C:
/* 4E49C 8004D89C D60E0088 */  ldc1       $f14, 0x88($s0)
/* 4E4A0 8004D8A0 D6000028 */  ldc1       $f0, 0x28($s0)
/* 4E4A4 8004D8A4 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 4E4A8 8004D8A8 0C013021 */  jal        func_8004C084
/* 4E4AC 8004D8AC F7A00010 */   sdc1      $f0, 0x10($sp)
/* 4E4B0 8004D8B0 46360002 */  mul.d      $f0, $f0, $f22
/* 4E4B4 8004D8B4 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4E4B8 8004D8B8 F4208A78 */  sdc1       $f0, %lo(D_802C8A78)($at)
/* 4E4BC 8004D8BC D6020078 */  ldc1       $f2, 0x78($s0)
/* 4E4C0 8004D8C0 3C01800D */  lui        $at, %hi(D_800D3E80)
/* 4E4C4 8004D8C4 D4203E80 */  ldc1       $f0, %lo(D_800D3E80)($at)
/* 4E4C8 8004D8C8 4620103C */  c.lt.d     $f2, $f0
/* 4E4CC 8004D8CC 00000000 */  nop
/* 4E4D0 8004D8D0 4500000C */  bc1f       .L8004D904
/* 4E4D4 8004D8D4 00000000 */   nop
/* 4E4D8 8004D8D8 3C01800D */  lui        $at, %hi(D_800D3E88)
/* 4E4DC 8004D8DC D4223E88 */  ldc1       $f2, %lo(D_800D3E88)($at)
/* 4E4E0 8004D8E0 4622B082 */  mul.d      $f2, $f22, $f2
/* 4E4E4 8004D8E4 3C01800D */  lui        $at, %hi(D_800D3E90)
/* 4E4E8 8004D8E8 D4203E90 */  ldc1       $f0, %lo(D_800D3E90)($at)
/* 4E4EC 8004D8EC 4620B002 */  mul.d      $f0, $f22, $f0
/* 4E4F0 8004D8F0 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4E4F4 8004D8F4 F4228A80 */  sdc1       $f2, %lo(D_802C8A80)($at)
/* 4E4F8 8004D8F8 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4E4FC 8004D8FC 0801364F */  j          .L8004D93C
/* 4E500 8004D900 F4208A88 */   sdc1      $f0, %lo(D_802C8A88)($at)
.L8004D904:
/* 4E504 8004D904 3C01800D */  lui        $at, %hi(D_800D3E98)
/* 4E508 8004D908 D4203E98 */  ldc1       $f0, %lo(D_800D3E98)($at)
/* 4E50C 8004D90C 4620B002 */  mul.d      $f0, $f22, $f0
/* 4E510 8004D910 00000000 */  nop
/* 4E514 8004D914 46220002 */  mul.d      $f0, $f0, $f2
/* 4E518 8004D918 3C01800D */  lui        $at, %hi(D_800D3EA0)
/* 4E51C 8004D91C D4223EA0 */  ldc1       $f2, %lo(D_800D3EA0)($at)
/* 4E520 8004D920 4622B082 */  mul.d      $f2, $f22, $f2
/* 4E524 8004D924 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4E528 8004D928 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4E52C 8004D92C D6000078 */  ldc1       $f0, 0x78($s0)
/* 4E530 8004D930 46201082 */  mul.d      $f2, $f2, $f0
/* 4E534 8004D934 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4E538 8004D938 F4228A88 */  sdc1       $f2, %lo(D_802C8A88)($at)
.L8004D93C:
/* 4E53C 8004D93C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 4E540 8004D940 8FB20028 */  lw         $s2, 0x28($sp)
/* 4E544 8004D944 8FB10024 */  lw         $s1, 0x24($sp)
/* 4E548 8004D948 8FB00020 */  lw         $s0, 0x20($sp)
/* 4E54C 8004D94C D7B60038 */  ldc1       $f22, 0x38($sp)
/* 4E550 8004D950 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 4E554 8004D954 03E00008 */  jr         $ra
/* 4E558 8004D958 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004D95C
/* 4E55C 8004D95C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4E560 8004D960 AFB00010 */  sw         $s0, 0x10($sp)
/* 4E564 8004D964 00808021 */  addu       $s0, $a0, $zero
/* 4E568 8004D968 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4E56C 8004D96C AFB10014 */  sw         $s1, 0x14($sp)
/* 4E570 8004D970 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4E574 8004D974 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4E578 8004D978 820300A5 */  lb         $v1, 0xA5($s0)
/* 4E57C 8004D97C 44800000 */  mtc1       $zero, $f0
/* 4E580 8004D980 44800800 */  mtc1       $zero, $f1
/* 4E584 8004D984 24020001 */  addiu      $v0, $zero, 0x1
/* 4E588 8004D988 10620016 */  beq        $v1, $v0, .L8004D9E4
/* 4E58C 8004D98C 28620002 */   slti      $v0, $v1, 0x2
/* 4E590 8004D990 50400005 */  beql       $v0, $zero, .L8004D9A8
/* 4E594 8004D994 24020004 */   addiu     $v0, $zero, 0x4
/* 4E598 8004D998 10600009 */  beqz       $v1, .L8004D9C0
/* 4E59C 8004D99C 00000000 */   nop
/* 4E5A0 8004D9A0 08013693 */  j          .L8004DA4C
/* 4E5A4 8004D9A4 00000000 */   nop
.L8004D9A8:
/* 4E5A8 8004D9A8 10620017 */  beq        $v1, $v0, .L8004DA08
/* 4E5AC 8004D9AC 24020005 */   addiu     $v0, $zero, 0x5
/* 4E5B0 8004D9B0 1062001E */  beq        $v1, $v0, .L8004DA2C
/* 4E5B4 8004D9B4 00000000 */   nop
/* 4E5B8 8004D9B8 08013693 */  j          .L8004DA4C
/* 4E5BC 8004D9BC 00000000 */   nop
.L8004D9C0:
/* 4E5C0 8004D9C0 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E5C4 8004D9C4 3C01800D */  lui        $at, %hi(D_800D3EA8)
/* 4E5C8 8004D9C8 D4203EA8 */  ldc1       $f0, %lo(D_800D3EA8)($at)
/* 4E5CC 8004D9CC 00021100 */  sll        $v0, $v0, 4
/* 4E5D0 8004D9D0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4E5D4 8004D9D4 00220821 */  addu       $at, $at, $v0
/* 4E5D8 8004D9D8 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 4E5DC 8004D9DC 08013693 */  j          .L8004DA4C
/* 4E5E0 8004D9E0 46220001 */   sub.d     $f0, $f0, $f2
.L8004D9E4:
/* 4E5E4 8004D9E4 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E5E8 8004D9E8 3C01800D */  lui        $at, %hi(D_800D3EB0)
/* 4E5EC 8004D9EC D4203EB0 */  ldc1       $f0, %lo(D_800D3EB0)($at)
/* 4E5F0 8004D9F0 00021100 */  sll        $v0, $v0, 4
/* 4E5F4 8004D9F4 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4E5F8 8004D9F8 00220821 */  addu       $at, $at, $v0
/* 4E5FC 8004D9FC D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 4E600 8004DA00 08013693 */  j          .L8004DA4C
/* 4E604 8004DA04 46201000 */   add.d     $f0, $f2, $f0
.L8004DA08:
/* 4E608 8004DA08 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E60C 8004DA0C 3C01800D */  lui        $at, %hi(D_800D3EB8)
/* 4E610 8004DA10 D4203EB8 */  ldc1       $f0, %lo(D_800D3EB8)($at)
/* 4E614 8004DA14 00021100 */  sll        $v0, $v0, 4
/* 4E618 8004DA18 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4E61C 8004DA1C 00220821 */  addu       $at, $at, $v0
/* 4E620 8004DA20 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 4E624 8004DA24 08013693 */  j          .L8004DA4C
/* 4E628 8004DA28 46220001 */   sub.d     $f0, $f0, $f2
.L8004DA2C:
/* 4E62C 8004DA2C 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E630 8004DA30 3C01800D */  lui        $at, %hi(D_800D3EC0)
/* 4E634 8004DA34 D4203EC0 */  ldc1       $f0, %lo(D_800D3EC0)($at)
/* 4E638 8004DA38 00021100 */  sll        $v0, $v0, 4
/* 4E63C 8004DA3C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4E640 8004DA40 00220821 */  addu       $at, $at, $v0
/* 4E644 8004DA44 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 4E648 8004DA48 46201000 */  add.d      $f0, $f2, $f0
.L8004DA4C:
/* 4E64C 8004DA4C 3C01800D */  lui        $at, %hi(D_800D3EC8)
/* 4E650 8004DA50 D42C3EC8 */  ldc1       $f12, %lo(D_800D3EC8)($at)
/* 4E654 8004DA54 462C0302 */  mul.d      $f12, $f0, $f12
/* 4E658 8004DA58 3C01800D */  lui        $at, %hi(D_800D3ED0)
/* 4E65C 8004DA5C D4203ED0 */  ldc1       $f0, %lo(D_800D3ED0)($at)
/* 4E660 8004DA60 0C0173F9 */  jal        func_8005CFE4
/* 4E664 8004DA64 46206300 */   add.d     $f12, $f12, $f0
/* 4E668 8004DA68 820200A5 */  lb         $v0, 0xA5($s0)
/* 4E66C 8004DA6C D6040060 */  ldc1       $f4, 0x60($s0)
/* 4E670 8004DA70 00021100 */  sll        $v0, $v0, 4
/* 4E674 8004DA74 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4E678 8004DA78 00220821 */  addu       $at, $at, $v0
/* 4E67C 8004DA7C D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 4E680 8004DA80 46241081 */  sub.d      $f2, $f2, $f4
/* 4E684 8004DA84 3C11802B */  lui        $s1, %hi(D_802AD840)
/* 4E688 8004DA88 2631D840 */  addiu      $s1, $s1, %lo(D_802AD840)
/* 4E68C 8004DA8C F6220000 */  sdc1       $f2, 0x0($s1)
/* 4E690 8004DA90 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4E694 8004DA94 00220821 */  addu       $at, $at, $v0
/* 4E698 8004DA98 D42659E0 */  ldc1       $f6, %lo(D_803F59E0)($at)
/* 4E69C 8004DA9C 46221082 */  mul.d      $f2, $f2, $f2
/* 4E6A0 8004DAA0 D6040068 */  ldc1       $f4, 0x68($s0)
/* 4E6A4 8004DAA4 46243181 */  sub.d      $f6, $f6, $f4
/* 4E6A8 8004DAA8 46263102 */  mul.d      $f4, $f6, $f6
/* 4E6AC 8004DAAC 46241300 */  add.d      $f12, $f2, $f4
/* 4E6B0 8004DAB0 46206584 */  sqrt.d     $f22, $f12
/* 4E6B4 8004DAB4 4636B032 */  c.eq.d     $f22, $f22
/* 4E6B8 8004DAB8 F6260010 */  sdc1       $f6, 0x10($s1)
/* 4E6BC 8004DABC 00000000 */  nop
/* 4E6C0 8004DAC0 45010004 */  bc1t       .L8004DAD4
/* 4E6C4 8004DAC4 46200502 */   mul.d     $f20, $f0, $f0
/* 4E6C8 8004DAC8 0C026F44 */  jal        func_8009BD10
/* 4E6CC 8004DACC 00000000 */   nop
/* 4E6D0 8004DAD0 46200586 */  mov.d      $f22, $f0
.L8004DAD4:
/* 4E6D4 8004DAD4 0C0173F9 */  jal        func_8005CFE4
/* 4E6D8 8004DAD8 4620B306 */   mov.d     $f12, $f22
/* 4E6DC 8004DADC 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4E6E0 8004DAE0 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 4E6E4 8004DAE4 D6040060 */  ldc1       $f4, 0x60($s0)
/* 4E6E8 8004DAE8 46241081 */  sub.d      $f2, $f2, $f4
/* 4E6EC 8004DAEC F6220000 */  sdc1       $f2, 0x0($s1)
/* 4E6F0 8004DAF0 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4E6F4 8004DAF4 D42659E0 */  ldc1       $f6, %lo(D_803F59E0)($at)
/* 4E6F8 8004DAF8 46221082 */  mul.d      $f2, $f2, $f2
/* 4E6FC 8004DAFC D6040068 */  ldc1       $f4, 0x68($s0)
/* 4E700 8004DB00 46243181 */  sub.d      $f6, $f6, $f4
/* 4E704 8004DB04 46263102 */  mul.d      $f4, $f6, $f6
/* 4E708 8004DB08 46241080 */  add.d      $f2, $f2, $f4
/* 4E70C 8004DB0C 46201304 */  sqrt.d     $f12, $f2
/* 4E710 8004DB10 46200002 */  mul.d      $f0, $f0, $f0
/* 4E714 8004DB14 4620A500 */  add.d      $f20, $f20, $f0
/* 4E718 8004DB18 3C01800D */  lui        $at, %hi(D_800D3ED8)
/* 4E71C 8004DB1C D4203ED8 */  ldc1       $f0, %lo(D_800D3ED8)($at)
/* 4E720 8004DB20 462C6032 */  c.eq.d     $f12, $f12
/* 4E724 8004DB24 F6260010 */  sdc1       $f6, 0x10($s1)
/* 4E728 8004DB28 00000000 */  nop
/* 4E72C 8004DB2C 45010004 */  bc1t       .L8004DB40
/* 4E730 8004DB30 4620A502 */   mul.d     $f20, $f20, $f0
/* 4E734 8004DB34 0C026F44 */  jal        func_8009BD10
/* 4E738 8004DB38 46201306 */   mov.d     $f12, $f2
/* 4E73C 8004DB3C 46200306 */  mov.d      $f12, $f0
.L8004DB40:
/* 4E740 8004DB40 46366000 */  add.d      $f0, $f12, $f22
/* 4E744 8004DB44 3C01800D */  lui        $at, %hi(D_800D3EE0)
/* 4E748 8004DB48 D4223EE0 */  ldc1       $f2, %lo(D_800D3EE0)($at)
/* 4E74C 8004DB4C 46220002 */  mul.d      $f0, $f0, $f2
/* 4E750 8004DB50 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 4E754 8004DB54 D42269F8 */  ldc1       $f2, %lo(D_800C69F8)($at)
/* 4E758 8004DB58 46220002 */  mul.d      $f0, $f0, $f2
/* 4E75C 8004DB5C 0C0173F9 */  jal        func_8005CFE4
/* 4E760 8004DB60 4620A500 */   add.d     $f20, $f20, $f0
/* 4E764 8004DB64 00000000 */  nop
/* 4E768 8004DB68 46200002 */  mul.d      $f0, $f0, $f0
/* 4E76C 8004DB6C 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4E770 8004DB70 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4E774 8004DB74 0C026D98 */  jal        func_8009B660
/* 4E778 8004DB78 4620A500 */   add.d     $f20, $f20, $f0
/* 4E77C 8004DB7C 4620A104 */  sqrt.d     $f4, $f20
/* 4E780 8004DB80 3C01800D */  lui        $at, %hi(D_800D3EE8)
/* 4E784 8004DB84 D4223EE8 */  ldc1       $f2, %lo(D_800D3EE8)($at)
/* 4E788 8004DB88 46242032 */  c.eq.d     $f4, $f4
/* 4E78C 8004DB8C 00000000 */  nop
/* 4E790 8004DB90 00000000 */  nop
/* 4E794 8004DB94 45010004 */  bc1t       .L8004DBA8
/* 4E798 8004DB98 46201583 */   div.d     $f22, $f2, $f0
/* 4E79C 8004DB9C 0C026F44 */  jal        func_8009BD10
/* 4E7A0 8004DBA0 4620A306 */   mov.d     $f12, $f20
/* 4E7A4 8004DBA4 46200106 */  mov.d      $f4, $f0
.L8004DBA8:
/* 4E7A8 8004DBA8 00000000 */  nop
/* 4E7AC 8004DBAC 46362082 */  mul.d      $f2, $f4, $f22
/* 4E7B0 8004DBB0 3C01800D */  lui        $at, %hi(D_800D3EF0)
/* 4E7B4 8004DBB4 D4203EF0 */  ldc1       $f0, %lo(D_800D3EF0)($at)
/* 4E7B8 8004DBB8 4620B002 */  mul.d      $f0, $f22, $f0
/* 4E7BC 8004DBBC 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4E7C0 8004DBC0 AC208A88 */  sw         $zero, %lo(D_802C8A88)($at)
/* 4E7C4 8004DBC4 3C01802D */  lui        $at, %hi(D_802C8A8C)
/* 4E7C8 8004DBC8 AC208A8C */  sw         $zero, %lo(D_802C8A8C)($at)
/* 4E7CC 8004DBCC 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4E7D0 8004DBD0 F4228A78 */  sdc1       $f2, %lo(D_802C8A78)($at)
/* 4E7D4 8004DBD4 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4E7D8 8004DBD8 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4E7DC 8004DBDC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4E7E0 8004DBE0 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E7E4 8004DBE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E7E8 8004DBE8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4E7EC 8004DBEC D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4E7F0 8004DBF0 03E00008 */  jr         $ra
/* 4E7F4 8004DBF4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004DBF8
/* 4E7F8 8004DBF8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4E7FC 8004DBFC AFB00010 */  sw         $s0, 0x10($sp)
/* 4E800 8004DC00 00808021 */  addu       $s0, $a0, $zero
/* 4E804 8004DC04 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4E808 8004DC08 AFB10014 */  sw         $s1, 0x14($sp)
/* 4E80C 8004DC0C F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 4E810 8004DC10 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 4E814 8004DC14 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4E818 8004DC18 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4E81C 8004DC1C 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E820 8004DC20 D6020010 */  ldc1       $f2, 0x10($s0)
/* 4E824 8004DC24 00021100 */  sll        $v0, $v0, 4
/* 4E828 8004DC28 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4E82C 8004DC2C 00220821 */  addu       $at, $at, $v0
/* 4E830 8004DC30 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 4E834 8004DC34 46220001 */  sub.d      $f0, $f0, $f2
/* 4E838 8004DC38 3C11802B */  lui        $s1, %hi(D_802AD840)
/* 4E83C 8004DC3C 2631D840 */  addiu      $s1, $s1, %lo(D_802AD840)
/* 4E840 8004DC40 F6200000 */  sdc1       $f0, 0x0($s1)
/* 4E844 8004DC44 820200A2 */  lb         $v0, 0xA2($s0)
/* 4E848 8004DC48 D6020018 */  ldc1       $f2, 0x18($s0)
/* 4E84C 8004DC4C 46200002 */  mul.d      $f0, $f0, $f0
/* 4E850 8004DC50 00021100 */  sll        $v0, $v0, 4
/* 4E854 8004DC54 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4E858 8004DC58 00220821 */  addu       $at, $at, $v0
/* 4E85C 8004DC5C D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 4E860 8004DC60 46222101 */  sub.d      $f4, $f4, $f2
/* 4E864 8004DC64 46242082 */  mul.d      $f2, $f4, $f4
/* 4E868 8004DC68 46220300 */  add.d      $f12, $f0, $f2
/* 4E86C 8004DC6C 46206684 */  sqrt.d     $f26, $f12
/* 4E870 8004DC70 463AD032 */  c.eq.d     $f26, $f26
/* 4E874 8004DC74 F6240010 */  sdc1       $f4, 0x10($s1)
/* 4E878 8004DC78 45010004 */  bc1t       .L8004DC8C
/* 4E87C 8004DC7C 00000000 */   nop
/* 4E880 8004DC80 0C026F44 */  jal        func_8009BD10
/* 4E884 8004DC84 00000000 */   nop
/* 4E888 8004DC88 46200686 */  mov.d      $f26, $f0
.L8004DC8C:
/* 4E88C 8004DC8C 0C0173F9 */  jal        func_8005CFE4
/* 4E890 8004DC90 4620D306 */   mov.d     $f12, $f26
/* 4E894 8004DC94 D6020010 */  ldc1       $f2, 0x10($s0)
/* 4E898 8004DC98 D6040060 */  ldc1       $f4, 0x60($s0)
/* 4E89C 8004DC9C 46241081 */  sub.d      $f2, $f2, $f4
/* 4E8A0 8004DCA0 F6220000 */  sdc1       $f2, 0x0($s1)
/* 4E8A4 8004DCA4 D6060018 */  ldc1       $f6, 0x18($s0)
/* 4E8A8 8004DCA8 46221082 */  mul.d      $f2, $f2, $f2
/* 4E8AC 8004DCAC D6040068 */  ldc1       $f4, 0x68($s0)
/* 4E8B0 8004DCB0 46243181 */  sub.d      $f6, $f6, $f4
/* 4E8B4 8004DCB4 46263102 */  mul.d      $f4, $f6, $f6
/* 4E8B8 8004DCB8 46241300 */  add.d      $f12, $f2, $f4
/* 4E8BC 8004DCBC 46206604 */  sqrt.d     $f24, $f12
/* 4E8C0 8004DCC0 46200100 */  add.d      $f4, $f0, $f0
/* 4E8C4 8004DCC4 4638C032 */  c.eq.d     $f24, $f24
/* 4E8C8 8004DCC8 F6260010 */  sdc1       $f6, 0x10($s1)
/* 4E8CC 8004DCCC 00000000 */  nop
/* 4E8D0 8004DCD0 45010004 */  bc1t       .L8004DCE4
/* 4E8D4 8004DCD4 46242582 */   mul.d     $f22, $f4, $f4
/* 4E8D8 8004DCD8 0C026F44 */  jal        func_8009BD10
/* 4E8DC 8004DCDC 00000000 */   nop
/* 4E8E0 8004DCE0 46200606 */  mov.d      $f24, $f0
.L8004DCE4:
/* 4E8E4 8004DCE4 0C0173F9 */  jal        func_8005CFE4
/* 4E8E8 8004DCE8 4620C306 */   mov.d     $f12, $f24
/* 4E8EC 8004DCEC D6020060 */  ldc1       $f2, 0x60($s0)
/* 4E8F0 8004DCF0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4E8F4 8004DCF4 D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 4E8F8 8004DCF8 46241081 */  sub.d      $f2, $f2, $f4
/* 4E8FC 8004DCFC F6220000 */  sdc1       $f2, 0x0($s1)
/* 4E900 8004DD00 D6060068 */  ldc1       $f6, 0x68($s0)
/* 4E904 8004DD04 46221082 */  mul.d      $f2, $f2, $f2
/* 4E908 8004DD08 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4E90C 8004DD0C D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 4E910 8004DD10 46243181 */  sub.d      $f6, $f6, $f4
/* 4E914 8004DD14 46263102 */  mul.d      $f4, $f6, $f6
/* 4E918 8004DD18 46241300 */  add.d      $f12, $f2, $f4
/* 4E91C 8004DD1C 46206504 */  sqrt.d     $f20, $f12
/* 4E920 8004DD20 46200100 */  add.d      $f4, $f0, $f0
/* 4E924 8004DD24 46242002 */  mul.d      $f0, $f4, $f4
/* 4E928 8004DD28 4634A032 */  c.eq.d     $f20, $f20
/* 4E92C 8004DD2C F6260010 */  sdc1       $f6, 0x10($s1)
/* 4E930 8004DD30 00000000 */  nop
/* 4E934 8004DD34 45010004 */  bc1t       .L8004DD48
/* 4E938 8004DD38 4620B580 */   add.d     $f22, $f22, $f0
/* 4E93C 8004DD3C 0C026F44 */  jal        func_8009BD10
/* 4E940 8004DD40 00000000 */   nop
/* 4E944 8004DD44 46200506 */  mov.d      $f20, $f0
.L8004DD48:
/* 4E948 8004DD48 0C0173F9 */  jal        func_8005CFE4
/* 4E94C 8004DD4C 4620A306 */   mov.d     $f12, $f20
/* 4E950 8004DD50 46200100 */  add.d      $f4, $f0, $f0
/* 4E954 8004DD54 4638D000 */  add.d      $f0, $f26, $f24
/* 4E958 8004DD58 46242102 */  mul.d      $f4, $f4, $f4
/* 4E95C 8004DD5C 46340000 */  add.d      $f0, $f0, $f20
/* 4E960 8004DD60 3C01800D */  lui        $at, %hi(D_800D3EF8)
/* 4E964 8004DD64 D4223EF8 */  ldc1       $f2, %lo(D_800D3EF8)($at)
/* 4E968 8004DD68 46220002 */  mul.d      $f0, $f0, $f2
/* 4E96C 8004DD6C 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 4E970 8004DD70 D42269F8 */  ldc1       $f2, %lo(D_800C69F8)($at)
/* 4E974 8004DD74 46220002 */  mul.d      $f0, $f0, $f2
/* 4E978 8004DD78 4624B580 */  add.d      $f22, $f22, $f4
/* 4E97C 8004DD7C 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4E980 8004DD80 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4E984 8004DD84 0C026D98 */  jal        func_8009B660
/* 4E988 8004DD88 4620B580 */   add.d     $f22, $f22, $f0
/* 4E98C 8004DD8C 4620B104 */  sqrt.d     $f4, $f22
/* 4E990 8004DD90 3C01800D */  lui        $at, %hi(D_800D3F00)
/* 4E994 8004DD94 D4223F00 */  ldc1       $f2, %lo(D_800D3F00)($at)
/* 4E998 8004DD98 46242032 */  c.eq.d     $f4, $f4
/* 4E99C 8004DD9C 00000000 */  nop
/* 4E9A0 8004DDA0 00000000 */  nop
/* 4E9A4 8004DDA4 45010004 */  bc1t       .L8004DDB8
/* 4E9A8 8004DDA8 46201503 */   div.d     $f20, $f2, $f0
/* 4E9AC 8004DDAC 0C026F44 */  jal        func_8009BD10
/* 4E9B0 8004DDB0 4620B306 */   mov.d     $f12, $f22
/* 4E9B4 8004DDB4 46200106 */  mov.d      $f4, $f0
.L8004DDB8:
/* 4E9B8 8004DDB8 00000000 */  nop
/* 4E9BC 8004DDBC 46342082 */  mul.d      $f2, $f4, $f20
/* 4E9C0 8004DDC0 3C01800D */  lui        $at, %hi(D_800D3F08)
/* 4E9C4 8004DDC4 D4203F08 */  ldc1       $f0, %lo(D_800D3F08)($at)
/* 4E9C8 8004DDC8 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4E9CC 8004DDCC AC208A88 */  sw         $zero, %lo(D_802C8A88)($at)
/* 4E9D0 8004DDD0 3C01802D */  lui        $at, %hi(D_802C8A8C)
/* 4E9D4 8004DDD4 AC208A8C */  sw         $zero, %lo(D_802C8A8C)($at)
/* 4E9D8 8004DDD8 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4E9DC 8004DDDC F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4E9E0 8004DDE0 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4E9E4 8004DDE4 F4228A78 */  sdc1       $f2, %lo(D_802C8A78)($at)
/* 4E9E8 8004DDE8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4E9EC 8004DDEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E9F0 8004DDF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E9F4 8004DDF4 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 4E9F8 8004DDF8 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 4E9FC 8004DDFC D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4EA00 8004DE00 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4EA04 8004DE04 03E00008 */  jr         $ra
/* 4EA08 8004DE08 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004DE0C
/* 4EA0C 8004DE0C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4EA10 8004DE10 AFB00010 */  sw         $s0, 0x10($sp)
/* 4EA14 8004DE14 00808021 */  addu       $s0, $a0, $zero
/* 4EA18 8004DE18 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4EA1C 8004DE1C AFB10014 */  sw         $s1, 0x14($sp)
/* 4EA20 8004DE20 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 4EA24 8004DE24 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 4EA28 8004DE28 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 4EA2C 8004DE2C F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4EA30 8004DE30 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4EA34 8004DE34 820200A2 */  lb         $v0, 0xA2($s0)
/* 4EA38 8004DE38 D6020000 */  ldc1       $f2, 0x0($s0)
/* 4EA3C 8004DE3C 00021100 */  sll        $v0, $v0, 4
/* 4EA40 8004DE40 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4EA44 8004DE44 00220821 */  addu       $at, $at, $v0
/* 4EA48 8004DE48 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 4EA4C 8004DE4C 46220001 */  sub.d      $f0, $f0, $f2
/* 4EA50 8004DE50 3C11802B */  lui        $s1, %hi(D_802AD840)
/* 4EA54 8004DE54 2631D840 */  addiu      $s1, $s1, %lo(D_802AD840)
/* 4EA58 8004DE58 F6200000 */  sdc1       $f0, 0x0($s1)
/* 4EA5C 8004DE5C 820200A2 */  lb         $v0, 0xA2($s0)
/* 4EA60 8004DE60 D6020008 */  ldc1       $f2, 0x8($s0)
/* 4EA64 8004DE64 46200002 */  mul.d      $f0, $f0, $f0
/* 4EA68 8004DE68 00021100 */  sll        $v0, $v0, 4
/* 4EA6C 8004DE6C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4EA70 8004DE70 00220821 */  addu       $at, $at, $v0
/* 4EA74 8004DE74 D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 4EA78 8004DE78 46222101 */  sub.d      $f4, $f4, $f2
/* 4EA7C 8004DE7C 46242082 */  mul.d      $f2, $f4, $f4
/* 4EA80 8004DE80 46220300 */  add.d      $f12, $f0, $f2
/* 4EA84 8004DE84 46206704 */  sqrt.d     $f28, $f12
/* 4EA88 8004DE88 463CE032 */  c.eq.d     $f28, $f28
/* 4EA8C 8004DE8C F6240010 */  sdc1       $f4, 0x10($s1)
/* 4EA90 8004DE90 45010004 */  bc1t       .L8004DEA4
/* 4EA94 8004DE94 00000000 */   nop
/* 4EA98 8004DE98 0C026F44 */  jal        func_8009BD10
/* 4EA9C 8004DE9C 00000000 */   nop
/* 4EAA0 8004DEA0 46200706 */  mov.d      $f28, $f0
.L8004DEA4:
/* 4EAA4 8004DEA4 0C0173F9 */  jal        func_8005CFE4
/* 4EAA8 8004DEA8 4620E306 */   mov.d     $f12, $f28
/* 4EAAC 8004DEAC D6020000 */  ldc1       $f2, 0x0($s0)
/* 4EAB0 8004DEB0 D6040010 */  ldc1       $f4, 0x10($s0)
/* 4EAB4 8004DEB4 46241081 */  sub.d      $f2, $f2, $f4
/* 4EAB8 8004DEB8 F6220000 */  sdc1       $f2, 0x0($s1)
/* 4EABC 8004DEBC D6060008 */  ldc1       $f6, 0x8($s0)
/* 4EAC0 8004DEC0 46221082 */  mul.d      $f2, $f2, $f2
/* 4EAC4 8004DEC4 D6040018 */  ldc1       $f4, 0x18($s0)
/* 4EAC8 8004DEC8 46243181 */  sub.d      $f6, $f6, $f4
/* 4EACC 8004DECC 46263102 */  mul.d      $f4, $f6, $f6
/* 4EAD0 8004DED0 46241300 */  add.d      $f12, $f2, $f4
/* 4EAD4 8004DED4 46206684 */  sqrt.d     $f26, $f12
/* 4EAD8 8004DED8 46200100 */  add.d      $f4, $f0, $f0
/* 4EADC 8004DEDC 463AD032 */  c.eq.d     $f26, $f26
/* 4EAE0 8004DEE0 F6260010 */  sdc1       $f6, 0x10($s1)
/* 4EAE4 8004DEE4 00000000 */  nop
/* 4EAE8 8004DEE8 45010004 */  bc1t       .L8004DEFC
/* 4EAEC 8004DEEC 46242582 */   mul.d     $f22, $f4, $f4
/* 4EAF0 8004DEF0 0C026F44 */  jal        func_8009BD10
/* 4EAF4 8004DEF4 00000000 */   nop
/* 4EAF8 8004DEF8 46200686 */  mov.d      $f26, $f0
.L8004DEFC:
/* 4EAFC 8004DEFC 0C0173F9 */  jal        func_8005CFE4
/* 4EB00 8004DF00 4620D306 */   mov.d     $f12, $f26
/* 4EB04 8004DF04 D6020010 */  ldc1       $f2, 0x10($s0)
/* 4EB08 8004DF08 D6040060 */  ldc1       $f4, 0x60($s0)
/* 4EB0C 8004DF0C 46241081 */  sub.d      $f2, $f2, $f4
/* 4EB10 8004DF10 F6220000 */  sdc1       $f2, 0x0($s1)
/* 4EB14 8004DF14 D6060018 */  ldc1       $f6, 0x18($s0)
/* 4EB18 8004DF18 46221082 */  mul.d      $f2, $f2, $f2
/* 4EB1C 8004DF1C D6040068 */  ldc1       $f4, 0x68($s0)
/* 4EB20 8004DF20 46243181 */  sub.d      $f6, $f6, $f4
/* 4EB24 8004DF24 46263102 */  mul.d      $f4, $f6, $f6
/* 4EB28 8004DF28 46241300 */  add.d      $f12, $f2, $f4
/* 4EB2C 8004DF2C 46206604 */  sqrt.d     $f24, $f12
/* 4EB30 8004DF30 46200100 */  add.d      $f4, $f0, $f0
/* 4EB34 8004DF34 46242002 */  mul.d      $f0, $f4, $f4
/* 4EB38 8004DF38 4638C032 */  c.eq.d     $f24, $f24
/* 4EB3C 8004DF3C F6260010 */  sdc1       $f6, 0x10($s1)
/* 4EB40 8004DF40 00000000 */  nop
/* 4EB44 8004DF44 45010004 */  bc1t       .L8004DF58
/* 4EB48 8004DF48 4620B580 */   add.d     $f22, $f22, $f0
/* 4EB4C 8004DF4C 0C026F44 */  jal        func_8009BD10
/* 4EB50 8004DF50 00000000 */   nop
/* 4EB54 8004DF54 46200606 */  mov.d      $f24, $f0
.L8004DF58:
/* 4EB58 8004DF58 0C0173F9 */  jal        func_8005CFE4
/* 4EB5C 8004DF5C 4620C306 */   mov.d     $f12, $f24
/* 4EB60 8004DF60 D6020060 */  ldc1       $f2, 0x60($s0)
/* 4EB64 8004DF64 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 4EB68 8004DF68 D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 4EB6C 8004DF6C 46241081 */  sub.d      $f2, $f2, $f4
/* 4EB70 8004DF70 F6220000 */  sdc1       $f2, 0x0($s1)
/* 4EB74 8004DF74 D6060068 */  ldc1       $f6, 0x68($s0)
/* 4EB78 8004DF78 46221082 */  mul.d      $f2, $f2, $f2
/* 4EB7C 8004DF7C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 4EB80 8004DF80 D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 4EB84 8004DF84 46243181 */  sub.d      $f6, $f6, $f4
/* 4EB88 8004DF88 46263102 */  mul.d      $f4, $f6, $f6
/* 4EB8C 8004DF8C 46241300 */  add.d      $f12, $f2, $f4
/* 4EB90 8004DF90 46206504 */  sqrt.d     $f20, $f12
/* 4EB94 8004DF94 46200100 */  add.d      $f4, $f0, $f0
/* 4EB98 8004DF98 46242002 */  mul.d      $f0, $f4, $f4
/* 4EB9C 8004DF9C 4634A032 */  c.eq.d     $f20, $f20
/* 4EBA0 8004DFA0 F6260010 */  sdc1       $f6, 0x10($s1)
/* 4EBA4 8004DFA4 00000000 */  nop
/* 4EBA8 8004DFA8 45010004 */  bc1t       .L8004DFBC
/* 4EBAC 8004DFAC 4620B580 */   add.d     $f22, $f22, $f0
/* 4EBB0 8004DFB0 0C026F44 */  jal        func_8009BD10
/* 4EBB4 8004DFB4 00000000 */   nop
/* 4EBB8 8004DFB8 46200506 */  mov.d      $f20, $f0
.L8004DFBC:
/* 4EBBC 8004DFBC 0C0173F9 */  jal        func_8005CFE4
/* 4EBC0 8004DFC0 4620A306 */   mov.d     $f12, $f20
/* 4EBC4 8004DFC4 46200100 */  add.d      $f4, $f0, $f0
/* 4EBC8 8004DFC8 463AE000 */  add.d      $f0, $f28, $f26
/* 4EBCC 8004DFCC 46380000 */  add.d      $f0, $f0, $f24
/* 4EBD0 8004DFD0 46242102 */  mul.d      $f4, $f4, $f4
/* 4EBD4 8004DFD4 46340000 */  add.d      $f0, $f0, $f20
/* 4EBD8 8004DFD8 3C01800D */  lui        $at, %hi(D_800D3F10)
/* 4EBDC 8004DFDC D4223F10 */  ldc1       $f2, %lo(D_800D3F10)($at)
/* 4EBE0 8004DFE0 46220002 */  mul.d      $f0, $f0, $f2
/* 4EBE4 8004DFE4 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 4EBE8 8004DFE8 D42269F8 */  ldc1       $f2, %lo(D_800C69F8)($at)
/* 4EBEC 8004DFEC 46220002 */  mul.d      $f0, $f0, $f2
/* 4EBF0 8004DFF0 4624B580 */  add.d      $f22, $f22, $f4
/* 4EBF4 8004DFF4 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 4EBF8 8004DFF8 D42C8A90 */  ldc1       $f12, %lo(D_802C8A90)($at)
/* 4EBFC 8004DFFC 0C026D98 */  jal        func_8009B660
/* 4EC00 8004E000 4620B580 */   add.d     $f22, $f22, $f0
/* 4EC04 8004E004 4620B104 */  sqrt.d     $f4, $f22
/* 4EC08 8004E008 3C01800D */  lui        $at, %hi(D_800D3F18)
/* 4EC0C 8004E00C D4223F18 */  ldc1       $f2, %lo(D_800D3F18)($at)
/* 4EC10 8004E010 46242032 */  c.eq.d     $f4, $f4
/* 4EC14 8004E014 00000000 */  nop
/* 4EC18 8004E018 00000000 */  nop
/* 4EC1C 8004E01C 45010004 */  bc1t       .L8004E030
/* 4EC20 8004E020 46201503 */   div.d     $f20, $f2, $f0
/* 4EC24 8004E024 0C026F44 */  jal        func_8009BD10
/* 4EC28 8004E028 4620B306 */   mov.d     $f12, $f22
/* 4EC2C 8004E02C 46200106 */  mov.d      $f4, $f0
.L8004E030:
/* 4EC30 8004E030 00000000 */  nop
/* 4EC34 8004E034 46342082 */  mul.d      $f2, $f4, $f20
/* 4EC38 8004E038 3C01800D */  lui        $at, %hi(D_800D3F20)
/* 4EC3C 8004E03C D4203F20 */  ldc1       $f0, %lo(D_800D3F20)($at)
/* 4EC40 8004E040 3C01802D */  lui        $at, %hi(D_802C8A88)
/* 4EC44 8004E044 AC208A88 */  sw         $zero, %lo(D_802C8A88)($at)
/* 4EC48 8004E048 3C01802D */  lui        $at, %hi(D_802C8A8C)
/* 4EC4C 8004E04C AC208A8C */  sw         $zero, %lo(D_802C8A8C)($at)
/* 4EC50 8004E050 3C01802D */  lui        $at, %hi(D_802C8A80)
/* 4EC54 8004E054 F4208A80 */  sdc1       $f0, %lo(D_802C8A80)($at)
/* 4EC58 8004E058 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4EC5C 8004E05C F4228A78 */  sdc1       $f2, %lo(D_802C8A78)($at)
/* 4EC60 8004E060 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4EC64 8004E064 8FB10014 */  lw         $s1, 0x14($sp)
/* 4EC68 8004E068 8FB00010 */  lw         $s0, 0x10($sp)
/* 4EC6C 8004E06C D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 4EC70 8004E070 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 4EC74 8004E074 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 4EC78 8004E078 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4EC7C 8004E07C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4EC80 8004E080 03E00008 */  jr         $ra
/* 4EC84 8004E084 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8004E088
/* 4EC88 8004E088 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4EC8C 8004E08C AFBF0010 */  sw         $ra, 0x10($sp)
/* 4EC90 8004E090 808200A0 */  lb         $v0, 0xA0($a0)
/* 4EC94 8004E094 00021080 */  sll        $v0, $v0, 2
/* 4EC98 8004E098 3C01800C */  lui        $at, %hi(D_800C4750)
/* 4EC9C 8004E09C 00220821 */  addu       $at, $at, $v0
/* 4ECA0 8004E0A0 8C224750 */  lw         $v0, %lo(D_800C4750)($at)
/* 4ECA4 8004E0A4 0040F809 */  jalr       $v0
/* 4ECA8 8004E0A8 00000000 */   nop
/* 4ECAC 8004E0AC 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4ECB0 8004E0B0 D4228A78 */  ldc1       $f2, %lo(D_802C8A78)($at)
/* 4ECB4 8004E0B4 3C01800D */  lui        $at, %hi(D_800D3AC0)
/* 4ECB8 8004E0B8 D4203AC0 */  ldc1       $f0, %lo(D_800D3AC0)($at)
/* 4ECBC 8004E0BC 4622003C */  c.lt.d     $f0, $f2
/* 4ECC0 8004E0C0 00000000 */  nop
/* 4ECC4 8004E0C4 45000003 */  bc1f       .L8004E0D4
/* 4ECC8 8004E0C8 00000000 */   nop
/* 4ECCC 8004E0CC 08013844 */  j          .L8004E110
/* 4ECD0 8004E0D0 24020001 */   addiu     $v0, $zero, 0x1
.L8004E0D4:
/* 4ECD4 8004E0D4 3C01802D */  lui        $at, %hi(D_802C8AA8)
/* 4ECD8 8004E0D8 D4208AA8 */  ldc1       $f0, %lo(D_802C8AA8)($at)
/* 4ECDC 8004E0DC 46200002 */  mul.d      $f0, $f0, $f0
/* 4ECE0 8004E0E0 3C01802D */  lui        $at, %hi(D_802C8AB0)
/* 4ECE4 8004E0E4 D4228AB0 */  ldc1       $f2, %lo(D_802C8AB0)($at)
/* 4ECE8 8004E0E8 46221082 */  mul.d      $f2, $f2, $f2
/* 4ECEC 8004E0EC 46220000 */  add.d      $f0, $f0, $f2
/* 4ECF0 8004E0F0 3C01800D */  lui        $at, %hi(D_800D3F28)
/* 4ECF4 8004E0F4 D4223F28 */  ldc1       $f2, %lo(D_800D3F28)($at)
/* 4ECF8 8004E0F8 4620103E */  c.le.d     $f2, $f0
/* 4ECFC 8004E0FC 00000000 */  nop
/* 4ED00 8004E100 00000000 */  nop
/* 4ED04 8004E104 45010002 */  bc1t       .L8004E110
/* 4ED08 8004E108 24020001 */   addiu     $v0, $zero, 0x1
/* 4ED0C 8004E10C 00001021 */  addu       $v0, $zero, $zero
.L8004E110:
/* 4ED10 8004E110 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4ED14 8004E114 03E00008 */  jr         $ra
/* 4ED18 8004E118 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004E11C
/* 4ED1C 8004E11C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4ED20 8004E120 AFB00010 */  sw         $s0, 0x10($sp)
/* 4ED24 8004E124 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4ED28 8004E128 0C012F58 */  jal        func_8004BD60
/* 4ED2C 8004E12C 00808021 */   addu      $s0, $a0, $zero
/* 4ED30 8004E130 820200A0 */  lb         $v0, 0xA0($s0)
/* 4ED34 8004E134 00021080 */  sll        $v0, $v0, 2
/* 4ED38 8004E138 3C01800C */  lui        $at, %hi(D_800C47A4)
/* 4ED3C 8004E13C 00220821 */  addu       $at, $at, $v0
/* 4ED40 8004E140 8C2247A4 */  lw         $v0, %lo(D_800C47A4)($at)
/* 4ED44 8004E144 0040F809 */  jalr       $v0
/* 4ED48 8004E148 02002021 */   addu      $a0, $s0, $zero
/* 4ED4C 8004E14C 3C01802D */  lui        $at, %hi(D_802C8A78)
/* 4ED50 8004E150 D4228A78 */  ldc1       $f2, %lo(D_802C8A78)($at)
/* 4ED54 8004E154 3C01800D */  lui        $at, %hi(D_800D3AC0)
/* 4ED58 8004E158 D4203AC0 */  ldc1       $f0, %lo(D_800D3AC0)($at)
/* 4ED5C 8004E15C 4622003C */  c.lt.d     $f0, $f2
/* 4ED60 8004E160 00000000 */  nop
/* 4ED64 8004E164 45000003 */  bc1f       .L8004E174
/* 4ED68 8004E168 00000000 */   nop
/* 4ED6C 8004E16C 0801386C */  j          .L8004E1B0
/* 4ED70 8004E170 24020001 */   addiu     $v0, $zero, 0x1
.L8004E174:
/* 4ED74 8004E174 3C01802D */  lui        $at, %hi(D_802C8AA8)
/* 4ED78 8004E178 D4208AA8 */  ldc1       $f0, %lo(D_802C8AA8)($at)
/* 4ED7C 8004E17C 46200002 */  mul.d      $f0, $f0, $f0
/* 4ED80 8004E180 3C01802D */  lui        $at, %hi(D_802C8AB0)
/* 4ED84 8004E184 D4228AB0 */  ldc1       $f2, %lo(D_802C8AB0)($at)
/* 4ED88 8004E188 46221082 */  mul.d      $f2, $f2, $f2
/* 4ED8C 8004E18C 46220000 */  add.d      $f0, $f0, $f2
/* 4ED90 8004E190 3C01800D */  lui        $at, %hi(D_800D3F30)
/* 4ED94 8004E194 D4223F30 */  ldc1       $f2, %lo(D_800D3F30)($at)
/* 4ED98 8004E198 4620103E */  c.le.d     $f2, $f0
/* 4ED9C 8004E19C 00000000 */  nop
/* 4EDA0 8004E1A0 00000000 */  nop
/* 4EDA4 8004E1A4 45010002 */  bc1t       .L8004E1B0
/* 4EDA8 8004E1A8 24020001 */   addiu     $v0, $zero, 0x1
/* 4EDAC 8004E1AC 00001021 */  addu       $v0, $zero, $zero
.L8004E1B0:
/* 4EDB0 8004E1B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4EDB4 8004E1B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 4EDB8 8004E1B8 03E00008 */  jr         $ra
/* 4EDBC 8004E1BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004E1C0
/* 4EDC0 8004E1C0 3C01803F */  lui        $at, %hi(D_803F6918)
/* 4EDC4 8004E1C4 D4206918 */  ldc1       $f0, %lo(D_803F6918)($at)
/* 4EDC8 8004E1C8 3C01803F */  lui        $at, %hi(D_803F6920)
/* 4EDCC 8004E1CC D4226920 */  ldc1       $f2, %lo(D_803F6920)($at)
/* 4EDD0 8004E1D0 46200007 */  neg.d      $f0, $f0
/* 4EDD4 8004E1D4 3C01803F */  lui        $at, %hi(D_803F6928)
/* 4EDD8 8004E1D8 D4246928 */  ldc1       $f4, %lo(D_803F6928)($at)
/* 4EDDC 8004E1DC 46201087 */  neg.d      $f2, $f2
/* 4EDE0 8004E1E0 3C01803F */  lui        $at, %hi(D_803ED070)
/* 4EDE4 8004E1E4 D426D070 */  ldc1       $f6, %lo(D_803ED070)($at)
/* 4EDE8 8004E1E8 46202107 */  neg.d      $f4, $f4
/* 4EDEC 8004E1EC 3C01803F */  lui        $at, %hi(D_803ED078)
/* 4EDF0 8004E1F0 D428D078 */  ldc1       $f8, %lo(D_803ED078)($at)
/* 4EDF4 8004E1F4 46203187 */  neg.d      $f6, $f6
/* 4EDF8 8004E1F8 3C01803F */  lui        $at, %hi(D_803ED080)
/* 4EDFC 8004E1FC D42AD080 */  ldc1       $f10, %lo(D_803ED080)($at)
/* 4EE00 8004E200 46204207 */  neg.d      $f8, $f8
/* 4EE04 8004E204 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 4EE08 8004E208 D42C5C10 */  ldc1       $f12, %lo(D_803F5C10)($at)
/* 4EE0C 8004E20C 46205287 */  neg.d      $f10, $f10
/* 4EE10 8004E210 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 4EE14 8004E214 D42E5C18 */  ldc1       $f14, %lo(D_803F5C18)($at)
/* 4EE18 8004E218 46206307 */  neg.d      $f12, $f12
/* 4EE1C 8004E21C 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 4EE20 8004E220 D4305C20 */  ldc1       $f16, %lo(D_803F5C20)($at)
/* 4EE24 8004E224 46207387 */  neg.d      $f14, $f14
/* 4EE28 8004E228 3C02802F */  lui        $v0, %hi(D_802EF5F8)
/* 4EE2C 8004E22C 2442F5F8 */  addiu      $v0, $v0, %lo(D_802EF5F8)
/* 4EE30 8004E230 46208407 */  neg.d      $f16, $f16
/* 4EE34 8004E234 F4400000 */  sdc1       $f0, 0x0($v0)
/* 4EE38 8004E238 3C01802F */  lui        $at, %hi(D_802EF600)
/* 4EE3C 8004E23C F422F600 */  sdc1       $f2, %lo(D_802EF600)($at)
/* 4EE40 8004E240 3C01802F */  lui        $at, %hi(D_802EF608)
/* 4EE44 8004E244 F424F608 */  sdc1       $f4, %lo(D_802EF608)($at)
/* 4EE48 8004E248 F446FFD0 */  sdc1       $f6, -0x30($v0)
/* 4EE4C 8004E24C 3C01802F */  lui        $at, %hi(D_802EF5D0)
/* 4EE50 8004E250 F428F5D0 */  sdc1       $f8, %lo(D_802EF5D0)($at)
/* 4EE54 8004E254 3C01802F */  lui        $at, %hi(D_802EF5D8)
/* 4EE58 8004E258 F42AF5D8 */  sdc1       $f10, %lo(D_802EF5D8)($at)
/* 4EE5C 8004E25C 3C01802F */  lui        $at, %hi(D_802EF5E0)
/* 4EE60 8004E260 F42CF5E0 */  sdc1       $f12, %lo(D_802EF5E0)($at)
/* 4EE64 8004E264 3C01802F */  lui        $at, %hi(D_802EF5E8)
/* 4EE68 8004E268 F42EF5E8 */  sdc1       $f14, %lo(D_802EF5E8)($at)
/* 4EE6C 8004E26C 3C01802F */  lui        $at, %hi(D_802EF5F0)
/* 4EE70 8004E270 F430F5F0 */  sdc1       $f16, %lo(D_802EF5F0)($at)
/* 4EE74 8004E274 3C06802F */  lui        $a2, %hi(D_802EF700)
/* 4EE78 8004E278 24C6F700 */  addiu      $a2, $a2, %lo(D_802EF700)
/* 4EE7C 8004E27C 8C430000 */  lw         $v1, 0x0($v0)
/* 4EE80 8004E280 8C440004 */  lw         $a0, 0x4($v0)
/* 4EE84 8004E284 8C450008 */  lw         $a1, 0x8($v0)
/* 4EE88 8004E288 ACC30000 */  sw         $v1, 0x0($a2)
/* 4EE8C 8004E28C ACC40004 */  sw         $a0, 0x4($a2)
/* 4EE90 8004E290 ACC50008 */  sw         $a1, 0x8($a2)
/* 4EE94 8004E294 8C43000C */  lw         $v1, 0xC($v0)
/* 4EE98 8004E298 8C440010 */  lw         $a0, 0x10($v0)
/* 4EE9C 8004E29C 8C450014 */  lw         $a1, 0x14($v0)
/* 4EEA0 8004E2A0 ACC3000C */  sw         $v1, 0xC($a2)
/* 4EEA4 8004E2A4 ACC40010 */  sw         $a0, 0x10($a2)
/* 4EEA8 8004E2A8 ACC50014 */  sw         $a1, 0x14($a2)
/* 4EEAC 8004E2AC 3C06802F */  lui        $a2, %hi(D_802EF6D0)
/* 4EEB0 8004E2B0 24C6F6D0 */  addiu      $a2, $a2, %lo(D_802EF6D0)
/* 4EEB4 8004E2B4 8C43FFD0 */  lw         $v1, -0x30($v0)
/* 4EEB8 8004E2B8 8C44FFD4 */  lw         $a0, -0x2C($v0)
/* 4EEBC 8004E2BC 8C45FFD8 */  lw         $a1, -0x28($v0)
/* 4EEC0 8004E2C0 ACC30000 */  sw         $v1, 0x0($a2)
/* 4EEC4 8004E2C4 ACC40004 */  sw         $a0, 0x4($a2)
/* 4EEC8 8004E2C8 ACC50008 */  sw         $a1, 0x8($a2)
/* 4EECC 8004E2CC 8C43FFDC */  lw         $v1, -0x24($v0)
/* 4EED0 8004E2D0 8C44FFE0 */  lw         $a0, -0x20($v0)
/* 4EED4 8004E2D4 8C45FFE4 */  lw         $a1, -0x1C($v0)
/* 4EED8 8004E2D8 ACC3000C */  sw         $v1, 0xC($a2)
/* 4EEDC 8004E2DC ACC40010 */  sw         $a0, 0x10($a2)
/* 4EEE0 8004E2E0 ACC50014 */  sw         $a1, 0x14($a2)
/* 4EEE4 8004E2E4 3C06802F */  lui        $a2, %hi(D_802EF5E0)
/* 4EEE8 8004E2E8 24C6F5E0 */  addiu      $a2, $a2, %lo(D_802EF5E0)
/* 4EEEC 8004E2EC 8CC30000 */  lw         $v1, 0x0($a2)
/* 4EEF0 8004E2F0 8CC40004 */  lw         $a0, 0x4($a2)
/* 4EEF4 8004E2F4 8CC50008 */  lw         $a1, 0x8($a2)
/* 4EEF8 8004E2F8 AC4300F0 */  sw         $v1, 0xF0($v0)
/* 4EEFC 8004E2FC AC4400F4 */  sw         $a0, 0xF4($v0)
/* 4EF00 8004E300 AC4500F8 */  sw         $a1, 0xF8($v0)
/* 4EF04 8004E304 8CC3000C */  lw         $v1, 0xC($a2)
/* 4EF08 8004E308 8CC40010 */  lw         $a0, 0x10($a2)
/* 4EF0C 8004E30C 8CC50014 */  lw         $a1, 0x14($a2)
/* 4EF10 8004E310 AC4300FC */  sw         $v1, 0xFC($v0)
/* 4EF14 8004E314 AC440100 */  sw         $a0, 0x100($v0)
/* 4EF18 8004E318 03E00008 */  jr         $ra
/* 4EF1C 8004E31C AC450104 */   sw        $a1, 0x104($v0)

glabel func_8004E320
/* 4EF20 8004E320 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4EF24 8004E324 24040001 */  addiu      $a0, $zero, 0x1
/* 4EF28 8004E328 24050010 */  addiu      $a1, $zero, 0x10
/* 4EF2C 8004E32C 24030030 */  addiu      $v1, $zero, 0x30
/* 4EF30 8004E330 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4EF34 8004E334 AFB10014 */  sw         $s1, 0x14($sp)
/* 4EF38 8004E338 AFB00010 */  sw         $s0, 0x10($sp)
.L8004E33C:
/* 4EF3C 8004E33C 3C028031 */  lui        $v0, %hi(D_80312ADA)
/* 4EF40 8004E340 00431021 */  addu       $v0, $v0, $v1
/* 4EF44 8004E344 80422ADA */  lb         $v0, %lo(D_80312ADA)($v0)
/* 4EF48 8004E348 14450005 */  bne        $v0, $a1, .L8004E360
/* 4EF4C 8004E34C 00000000 */   nop
/* 4EF50 8004E350 24840001 */  addiu      $a0, $a0, 0x1
/* 4EF54 8004E354 28820010 */  slti       $v0, $a0, 0x10
/* 4EF58 8004E358 1440FFF8 */  bnez       $v0, .L8004E33C
/* 4EF5C 8004E35C 24630030 */   addiu     $v1, $v1, 0x30
.L8004E360:
/* 4EF60 8004E360 14850005 */  bne        $a0, $a1, .L8004E378
/* 4EF64 8004E364 00000000 */   nop
/* 4EF68 8004E368 0C013870 */  jal        func_8004E1C0
/* 4EF6C 8004E36C 00000000 */   nop
/* 4EF70 8004E370 08013997 */  j          .L8004E65C
/* 4EF74 8004E374 00000000 */   nop
.L8004E378:
/* 4EF78 8004E378 3C01800C */  lui        $at, %hi(D_800C4808)
/* 4EF7C 8004E37C D4204808 */  ldc1       $f0, %lo(D_800C4808)($at)
/* 4EF80 8004E380 3C01800D */  lui        $at, %hi(D_800D3F40)
/* 4EF84 8004E384 D4243F40 */  ldc1       $f4, %lo(D_800D3F40)($at)
/* 4EF88 8004E388 46240000 */  add.d      $f0, $f0, $f4
/* 4EF8C 8004E38C 3C01800D */  lui        $at, %hi(D_800D3F48)
/* 4EF90 8004E390 D4223F48 */  ldc1       $f2, %lo(D_800D3F48)($at)
/* 4EF94 8004E394 4620103E */  c.le.d     $f2, $f0
/* 4EF98 8004E398 3C01800C */  lui        $at, %hi(D_800C4808)
/* 4EF9C 8004E39C F4204808 */  sdc1       $f0, %lo(D_800C4808)($at)
/* 4EFA0 8004E3A0 45000004 */  bc1f       .L8004E3B4
/* 4EFA4 8004E3A4 00000000 */   nop
/* 4EFA8 8004E3A8 46220001 */  sub.d      $f0, $f0, $f2
/* 4EFAC 8004E3AC 3C01800C */  lui        $at, %hi(D_800C4808)
/* 4EFB0 8004E3B0 F4204808 */  sdc1       $f0, %lo(D_800C4808)($at)
.L8004E3B4:
/* 4EFB4 8004E3B4 3C01800C */  lui        $at, %hi(D_800C4810)
/* 4EFB8 8004E3B8 D4204810 */  ldc1       $f0, %lo(D_800C4810)($at)
/* 4EFBC 8004E3BC 46240000 */  add.d      $f0, $f0, $f4
/* 4EFC0 8004E3C0 4620103E */  c.le.d     $f2, $f0
/* 4EFC4 8004E3C4 3C01800C */  lui        $at, %hi(D_800C4810)
/* 4EFC8 8004E3C8 F4204810 */  sdc1       $f0, %lo(D_800C4810)($at)
/* 4EFCC 8004E3CC 45000004 */  bc1f       .L8004E3E0
/* 4EFD0 8004E3D0 00000000 */   nop
/* 4EFD4 8004E3D4 46220001 */  sub.d      $f0, $f0, $f2
/* 4EFD8 8004E3D8 3C01800C */  lui        $at, %hi(D_800C4810)
/* 4EFDC 8004E3DC F4204810 */  sdc1       $f0, %lo(D_800C4810)($at)
.L8004E3E0:
/* 4EFE0 8004E3E0 3C118031 */  lui        $s1, %hi(D_80312AC0)
/* 4EFE4 8004E3E4 26312AC0 */  addiu      $s1, $s1, %lo(D_80312AC0)
/* 4EFE8 8004E3E8 3C01800C */  lui        $at, %hi(D_800C4808)
/* 4EFEC 8004E3EC D4224808 */  ldc1       $f2, %lo(D_800C4808)($at)
/* 4EFF0 8004E3F0 D6200000 */  ldc1       $f0, 0x0($s1)
/* 4EFF4 8004E3F4 00048040 */  sll        $s0, $a0, 1
/* 4EFF8 8004E3F8 02048021 */  addu       $s0, $s0, $a0
/* 4EFFC 8004E3FC 00108100 */  sll        $s0, $s0, 4
/* 4F000 8004E400 46201080 */  add.d      $f2, $f2, $f0
/* 4F004 8004E404 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 4F008 8004E408 00300821 */  addu       $at, $at, $s0
/* 4F00C 8004E40C D4202AC0 */  ldc1       $f0, %lo(D_80312AC0)($at)
/* 4F010 8004E410 3C01800C */  lui        $at, %hi(D_800C4810)
/* 4F014 8004E414 D42C4810 */  ldc1       $f12, %lo(D_800C4810)($at)
/* 4F018 8004E418 46201081 */  sub.d      $f2, $f2, $f0
/* 4F01C 8004E41C 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 4F020 8004E420 D4202AD0 */  ldc1       $f0, %lo(D_80312AD0)($at)
/* 4F024 8004E424 46206300 */  add.d      $f12, $f12, $f0
/* 4F028 8004E428 46221082 */  mul.d      $f2, $f2, $f2
/* 4F02C 8004E42C 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 4F030 8004E430 00300821 */  addu       $at, $at, $s0
/* 4F034 8004E434 D4202AD0 */  ldc1       $f0, %lo(D_80312AD0)($at)
/* 4F038 8004E438 46206301 */  sub.d      $f12, $f12, $f0
/* 4F03C 8004E43C 462C6302 */  mul.d      $f12, $f12, $f12
/* 4F040 8004E440 0C022BA9 */  jal        func_8008AEA4
/* 4F044 8004E444 462C1300 */   add.d     $f12, $f2, $f12
/* 4F048 8004E448 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 4F04C 8004E44C 00300821 */  addu       $at, $at, $s0
/* 4F050 8004E450 D4222AC0 */  ldc1       $f2, %lo(D_80312AC0)($at)
/* 4F054 8004E454 D6240000 */  ldc1       $f4, 0x0($s1)
/* 4F058 8004E458 46241081 */  sub.d      $f2, $f2, $f4
/* 4F05C 8004E45C 3C01800C */  lui        $at, %hi(D_800C4808)
/* 4F060 8004E460 D4244808 */  ldc1       $f4, %lo(D_800C4808)($at)
/* 4F064 8004E464 46241081 */  sub.d      $f2, $f2, $f4
/* 4F068 8004E468 46200007 */  neg.d      $f0, $f0
/* 4F06C 8004E46C 46201103 */  div.d      $f4, $f2, $f0
/* 4F070 8004E470 46202087 */  neg.d      $f2, $f4
/* 4F074 8004E474 3C01802F */  lui        $at, %hi(D_802EF5F8)
/* 4F078 8004E478 F424F5F8 */  sdc1       $f4, %lo(D_802EF5F8)($at)
/* 4F07C 8004E47C 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 4F080 8004E480 D4242AD0 */  ldc1       $f4, %lo(D_80312AD0)($at)
/* 4F084 8004E484 3C01802F */  lui        $at, %hi(D_802EF5D8)
/* 4F088 8004E488 F422F5D8 */  sdc1       $f2, %lo(D_802EF5D8)($at)
/* 4F08C 8004E48C 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 4F090 8004E490 00300821 */  addu       $at, $at, $s0
/* 4F094 8004E494 D4222AD0 */  ldc1       $f2, %lo(D_80312AD0)($at)
/* 4F098 8004E498 46241081 */  sub.d      $f2, $f2, $f4
/* 4F09C 8004E49C 3C01800C */  lui        $at, %hi(D_800C4810)
/* 4F0A0 8004E4A0 D4244810 */  ldc1       $f4, %lo(D_800C4810)($at)
/* 4F0A4 8004E4A4 46241081 */  sub.d      $f2, $f2, $f4
/* 4F0A8 8004E4A8 46201103 */  div.d      $f4, $f2, $f0
/* 4F0AC 8004E4AC 3C01800D */  lui        $at, %hi(D_800D3F50)
/* 4F0B0 8004E4B0 D4203F50 */  ldc1       $f0, %lo(D_800D3F50)($at)
/* 4F0B4 8004E4B4 3C01800C */  lui        $at, %hi(D_800C52B8)
/* 4F0B8 8004E4B8 AC2052B8 */  sw         $zero, %lo(D_800C52B8)($at)
/* 4F0BC 8004E4BC 3C01800C */  lui        $at, %hi(D_800C52BC)
/* 4F0C0 8004E4C0 AC2052BC */  sw         $zero, %lo(D_800C52BC)($at)
/* 4F0C4 8004E4C4 3C01800C */  lui        $at, %hi(D_800C52C8)
/* 4F0C8 8004E4C8 AC2052C8 */  sw         $zero, %lo(D_800C52C8)($at)
/* 4F0CC 8004E4CC 3C01800C */  lui        $at, %hi(D_800C52CC)
/* 4F0D0 8004E4D0 AC2052CC */  sw         $zero, %lo(D_800C52CC)($at)
/* 4F0D4 8004E4D4 3C01802F */  lui        $at, %hi(D_802EF600)
/* 4F0D8 8004E4D8 AC20F600 */  sw         $zero, %lo(D_802EF600)($at)
/* 4F0DC 8004E4DC 3C01802F */  lui        $at, %hi(D_802EF604)
/* 4F0E0 8004E4E0 AC20F604 */  sw         $zero, %lo(D_802EF604)($at)
/* 4F0E4 8004E4E4 3C01802F */  lui        $at, %hi(D_802EF5D0)
/* 4F0E8 8004E4E8 AC20F5D0 */  sw         $zero, %lo(D_802EF5D0)($at)
/* 4F0EC 8004E4EC 3C01802F */  lui        $at, %hi(D_802EF5D4)
/* 4F0F0 8004E4F0 AC20F5D4 */  sw         $zero, %lo(D_802EF5D4)($at)
/* 4F0F4 8004E4F4 3C01802F */  lui        $at, %hi(D_802EF5E0)
/* 4F0F8 8004E4F8 AC20F5E0 */  sw         $zero, %lo(D_802EF5E0)($at)
/* 4F0FC 8004E4FC 3C01802F */  lui        $at, %hi(D_802EF5E4)
/* 4F100 8004E500 AC20F5E4 */  sw         $zero, %lo(D_802EF5E4)($at)
/* 4F104 8004E504 3C01802F */  lui        $at, %hi(D_802EF5F0)
/* 4F108 8004E508 AC20F5F0 */  sw         $zero, %lo(D_802EF5F0)($at)
/* 4F10C 8004E50C 3C01802F */  lui        $at, %hi(D_802EF5F4)
/* 4F110 8004E510 AC20F5F4 */  sw         $zero, %lo(D_802EF5F4)($at)
/* 4F114 8004E514 3C01802F */  lui        $at, %hi(D_802EF5E8)
/* 4F118 8004E518 F420F5E8 */  sdc1       $f0, %lo(D_802EF5E8)($at)
/* 4F11C 8004E51C 3C01802F */  lui        $at, %hi(D_802EF608)
/* 4F120 8004E520 F424F608 */  sdc1       $f4, %lo(D_802EF608)($at)
/* 4F124 8004E524 3C01802F */  lui        $at, %hi(D_802EF5C8)
/* 4F128 8004E528 0C001081 */  jal        func_80004204
/* 4F12C 8004E52C F424F5C8 */   sdc1      $f4, %lo(D_802EF5C8)($at)
/* 4F130 8004E530 90420002 */  lbu        $v0, 0x2($v0)
/* 4F134 8004E534 10400005 */  beqz       $v0, .L8004E54C
/* 4F138 8004E538 00000000 */   nop
/* 4F13C 8004E53C 3C02802D */  lui        $v0, %hi(D_802D0BD0)
/* 4F140 8004E540 8C420BD0 */  lw         $v0, %lo(D_802D0BD0)($v0)
/* 4F144 8004E544 10400004 */  beqz       $v0, .L8004E558
/* 4F148 8004E548 00000000 */   nop
.L8004E54C:
/* 4F14C 8004E54C 3C01800C */  lui        $at, %hi(D_800C52E0)
/* 4F150 8004E550 0801395C */  j          .L8004E570
/* 4F154 8004E554 D42052E0 */   ldc1      $f0, %lo(D_800C52E0)($at)
.L8004E558:
/* 4F158 8004E558 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4F15C 8004E55C 8042F798 */  lb         $v0, %lo(gPlayers_turn)($v0)
/* 4F160 8004E560 000210C0 */  sll        $v0, $v0, 3
/* 4F164 8004E564 3C01802F */  lui        $at, %hi(D_802EF5B0)
/* 4F168 8004E568 00220821 */  addu       $at, $at, $v0
/* 4F16C 8004E56C D420F5B0 */  ldc1       $f0, %lo(D_802EF5B0)($at)
.L8004E570:
/* 4F170 8004E570 3C01800C */  lui        $at, %hi(D_800C52C0)
/* 4F174 8004E574 0C015FA5 */  jal        func_80057E94
/* 4F178 8004E578 F42052C0 */   sdc1      $f0, %lo(D_800C52C0)($at)
/* 4F17C 8004E57C 3C05802F */  lui        $a1, %hi(D_802EF5F8)
/* 4F180 8004E580 24A5F5F8 */  addiu      $a1, $a1, %lo(D_802EF5F8)
/* 4F184 8004E584 3C04802F */  lui        $a0, %hi(D_802EF700)
/* 4F188 8004E588 2484F700 */  addiu      $a0, $a0, %lo(D_802EF700)
/* 4F18C 8004E58C 8CA20000 */  lw         $v0, 0x0($a1)
/* 4F190 8004E590 8CA30004 */  lw         $v1, 0x4($a1)
/* 4F194 8004E594 AC820000 */  sw         $v0, 0x0($a0)
/* 4F198 8004E598 AC830004 */  sw         $v1, 0x4($a0)
/* 4F19C 8004E59C 8CA20008 */  lw         $v0, 0x8($a1)
/* 4F1A0 8004E5A0 8CA3000C */  lw         $v1, 0xC($a1)
/* 4F1A4 8004E5A4 AC820008 */  sw         $v0, 0x8($a0)
/* 4F1A8 8004E5A8 AC83000C */  sw         $v1, 0xC($a0)
/* 4F1AC 8004E5AC 8CA20010 */  lw         $v0, 0x10($a1)
/* 4F1B0 8004E5B0 8CA30014 */  lw         $v1, 0x14($a1)
/* 4F1B4 8004E5B4 AC820010 */  sw         $v0, 0x10($a0)
/* 4F1B8 8004E5B8 AC830014 */  sw         $v1, 0x14($a0)
/* 4F1BC 8004E5BC 3C01800D */  lui        $at, %hi(D_800D3F58)
/* 4F1C0 8004E5C0 D4203F58 */  ldc1       $f0, %lo(D_800D3F58)($at)
/* 4F1C4 8004E5C4 3C01800D */  lui        $at, %hi(D_800D3F60)
/* 4F1C8 8004E5C8 D4223F60 */  ldc1       $f2, %lo(D_800D3F60)($at)
/* 4F1CC 8004E5CC 3C05802F */  lui        $a1, %hi(D_802EF5C8)
/* 4F1D0 8004E5D0 24A5F5C8 */  addiu      $a1, $a1, %lo(D_802EF5C8)
/* 4F1D4 8004E5D4 3C04802F */  lui        $a0, %hi(D_802EF6D0)
/* 4F1D8 8004E5D8 2484F6D0 */  addiu      $a0, $a0, %lo(D_802EF6D0)
/* 4F1DC 8004E5DC 8CA20000 */  lw         $v0, 0x0($a1)
/* 4F1E0 8004E5E0 8CA30004 */  lw         $v1, 0x4($a1)
/* 4F1E4 8004E5E4 AC820000 */  sw         $v0, 0x0($a0)
/* 4F1E8 8004E5E8 AC830004 */  sw         $v1, 0x4($a0)
/* 4F1EC 8004E5EC 8CA20008 */  lw         $v0, 0x8($a1)
/* 4F1F0 8004E5F0 8CA3000C */  lw         $v1, 0xC($a1)
/* 4F1F4 8004E5F4 AC820008 */  sw         $v0, 0x8($a0)
/* 4F1F8 8004E5F8 AC83000C */  sw         $v1, 0xC($a0)
/* 4F1FC 8004E5FC 8CA20010 */  lw         $v0, 0x10($a1)
/* 4F200 8004E600 8CA30014 */  lw         $v1, 0x14($a1)
/* 4F204 8004E604 AC820010 */  sw         $v0, 0x10($a0)
/* 4F208 8004E608 AC830014 */  sw         $v1, 0x14($a0)
/* 4F20C 8004E60C 3C05802F */  lui        $a1, %hi(D_802EF5E0)
/* 4F210 8004E610 24A5F5E0 */  addiu      $a1, $a1, %lo(D_802EF5E0)
/* 4F214 8004E614 3C04802F */  lui        $a0, %hi(D_802EF6E8)
/* 4F218 8004E618 2484F6E8 */  addiu      $a0, $a0, %lo(D_802EF6E8)
/* 4F21C 8004E61C 8CA20000 */  lw         $v0, 0x0($a1)
/* 4F220 8004E620 8CA30004 */  lw         $v1, 0x4($a1)
/* 4F224 8004E624 AC820000 */  sw         $v0, 0x0($a0)
/* 4F228 8004E628 AC830004 */  sw         $v1, 0x4($a0)
/* 4F22C 8004E62C 8CA20008 */  lw         $v0, 0x8($a1)
/* 4F230 8004E630 8CA3000C */  lw         $v1, 0xC($a1)
/* 4F234 8004E634 AC820008 */  sw         $v0, 0x8($a0)
/* 4F238 8004E638 AC83000C */  sw         $v1, 0xC($a0)
/* 4F23C 8004E63C 8CA20010 */  lw         $v0, 0x10($a1)
/* 4F240 8004E640 8CA30014 */  lw         $v1, 0x14($a1)
/* 4F244 8004E644 AC820010 */  sw         $v0, 0x10($a0)
/* 4F248 8004E648 AC830014 */  sw         $v1, 0x14($a0)
/* 4F24C 8004E64C 3C01802F */  lui        $at, %hi(D_802EF758)
/* 4F250 8004E650 F420F758 */  sdc1       $f0, %lo(D_802EF758)($at)
/* 4F254 8004E654 3C01802F */  lui        $at, %hi(D_802EF760)
/* 4F258 8004E658 F422F760 */  sdc1       $f2, %lo(D_802EF760)($at)
.L8004E65C:
/* 4F25C 8004E65C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4F260 8004E660 8FB10014 */  lw         $s1, 0x14($sp)
/* 4F264 8004E664 8FB00010 */  lw         $s0, 0x10($sp)
/* 4F268 8004E668 03E00008 */  jr         $ra
/* 4F26C 8004E66C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004E670
/* 4F270 8004E670 3C01803F */  lui        $at, %hi(D_803F6918)
/* 4F274 8004E674 D4206918 */  ldc1       $f0, %lo(D_803F6918)($at)
/* 4F278 8004E678 3C01803F */  lui        $at, %hi(D_803F6920)
/* 4F27C 8004E67C D4226920 */  ldc1       $f2, %lo(D_803F6920)($at)
/* 4F280 8004E680 3C01803F */  lui        $at, %hi(D_803F6928)
/* 4F284 8004E684 D4246928 */  ldc1       $f4, %lo(D_803F6928)($at)
/* 4F288 8004E688 3C01803F */  lui        $at, %hi(D_803ED070)
/* 4F28C 8004E68C D426D070 */  ldc1       $f6, %lo(D_803ED070)($at)
/* 4F290 8004E690 3C01803F */  lui        $at, %hi(D_803ED078)
/* 4F294 8004E694 D428D078 */  ldc1       $f8, %lo(D_803ED078)($at)
/* 4F298 8004E698 46200007 */  neg.d      $f0, $f0
/* 4F29C 8004E69C 3C01803F */  lui        $at, %hi(D_803ED080)
/* 4F2A0 8004E6A0 D42AD080 */  ldc1       $f10, %lo(D_803ED080)($at)
/* 4F2A4 8004E6A4 46201087 */  neg.d      $f2, $f2
/* 4F2A8 8004E6A8 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 4F2AC 8004E6AC D42C5C10 */  ldc1       $f12, %lo(D_803F5C10)($at)
/* 4F2B0 8004E6B0 46202107 */  neg.d      $f4, $f4
/* 4F2B4 8004E6B4 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 4F2B8 8004E6B8 D42E5C18 */  ldc1       $f14, %lo(D_803F5C18)($at)
/* 4F2BC 8004E6BC 46203187 */  neg.d      $f6, $f6
/* 4F2C0 8004E6C0 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 4F2C4 8004E6C4 D4305C20 */  ldc1       $f16, %lo(D_803F5C20)($at)
/* 4F2C8 8004E6C8 46204207 */  neg.d      $f8, $f8
/* 4F2CC 8004E6CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4F2D0 8004E6D0 46205287 */  neg.d      $f10, $f10
/* 4F2D4 8004E6D4 AFB00028 */  sw         $s0, 0x28($sp)
/* 4F2D8 8004E6D8 46206307 */  neg.d      $f12, $f12
/* 4F2DC 8004E6DC 3C10802F */  lui        $s0, %hi(D_802EF5F8)
/* 4F2E0 8004E6E0 2610F5F8 */  addiu      $s0, $s0, %lo(D_802EF5F8)
/* 4F2E4 8004E6E4 46207387 */  neg.d      $f14, $f14
/* 4F2E8 8004E6E8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 4F2EC 8004E6EC 46208407 */  neg.d      $f16, $f16
/* 4F2F0 8004E6F0 F6000000 */  sdc1       $f0, 0x0($s0)
/* 4F2F4 8004E6F4 3C01802F */  lui        $at, %hi(D_802EF600)
/* 4F2F8 8004E6F8 F422F600 */  sdc1       $f2, %lo(D_802EF600)($at)
/* 4F2FC 8004E6FC 3C01802F */  lui        $at, %hi(D_802EF608)
/* 4F300 8004E700 F424F608 */  sdc1       $f4, %lo(D_802EF608)($at)
/* 4F304 8004E704 F606FFD0 */  sdc1       $f6, -0x30($s0)
/* 4F308 8004E708 3C01802F */  lui        $at, %hi(D_802EF5D0)
/* 4F30C 8004E70C F428F5D0 */  sdc1       $f8, %lo(D_802EF5D0)($at)
/* 4F310 8004E710 3C01802F */  lui        $at, %hi(D_802EF5D8)
/* 4F314 8004E714 F42AF5D8 */  sdc1       $f10, %lo(D_802EF5D8)($at)
/* 4F318 8004E718 3C01802F */  lui        $at, %hi(D_802EF5E0)
/* 4F31C 8004E71C F42CF5E0 */  sdc1       $f12, %lo(D_802EF5E0)($at)
/* 4F320 8004E720 3C01802F */  lui        $at, %hi(D_802EF5E8)
/* 4F324 8004E724 F42EF5E8 */  sdc1       $f14, %lo(D_802EF5E8)($at)
/* 4F328 8004E728 3C01802F */  lui        $at, %hi(D_802EF5F0)
/* 4F32C 8004E72C F430F5F0 */  sdc1       $f16, %lo(D_802EF5F0)($at)
/* 4F330 8004E730 8E020000 */  lw         $v0, 0x0($s0)
/* 4F334 8004E734 8E030004 */  lw         $v1, 0x4($s0)
/* 4F338 8004E738 8E040008 */  lw         $a0, 0x8($s0)
/* 4F33C 8004E73C 8E05000C */  lw         $a1, 0xC($s0)
/* 4F340 8004E740 AFA20010 */  sw         $v0, 0x10($sp)
/* 4F344 8004E744 AFA30014 */  sw         $v1, 0x14($sp)
/* 4F348 8004E748 AFA40018 */  sw         $a0, 0x18($sp)
/* 4F34C 8004E74C AFA5001C */  sw         $a1, 0x1C($sp)
/* 4F350 8004E750 8E020010 */  lw         $v0, 0x10($s0)
/* 4F354 8004E754 8E030014 */  lw         $v1, 0x14($s0)
/* 4F358 8004E758 AFA20020 */  sw         $v0, 0x20($sp)
/* 4F35C 8004E75C AFA30024 */  sw         $v1, 0x24($sp)
/* 4F360 8004E760 0C022CCC */  jal        func_8008B330
/* 4F364 8004E764 27A40010 */   addiu     $a0, $sp, 0x10
/* 4F368 8004E768 3C01800C */  lui        $at, %hi(D_800C52B8)
/* 4F36C 8004E76C AC2052B8 */  sw         $zero, %lo(D_800C52B8)($at)
/* 4F370 8004E770 3C01800C */  lui        $at, %hi(D_800C52BC)
/* 4F374 8004E774 AC2052BC */  sw         $zero, %lo(D_800C52BC)($at)
/* 4F378 8004E778 3C01800C */  lui        $at, %hi(D_800C52C8)
/* 4F37C 8004E77C AC2052C8 */  sw         $zero, %lo(D_800C52C8)($at)
/* 4F380 8004E780 3C01800C */  lui        $at, %hi(D_800C52CC)
/* 4F384 8004E784 0C001081 */  jal        func_80004204
/* 4F388 8004E788 AC2052CC */   sw        $zero, %lo(D_800C52CC)($at)
/* 4F38C 8004E78C 90420002 */  lbu        $v0, 0x2($v0)
/* 4F390 8004E790 10400005 */  beqz       $v0, .L8004E7A8
/* 4F394 8004E794 00000000 */   nop
/* 4F398 8004E798 3C02802D */  lui        $v0, %hi(D_802D0BD0)
/* 4F39C 8004E79C 8C420BD0 */  lw         $v0, %lo(D_802D0BD0)($v0)
/* 4F3A0 8004E7A0 10400008 */  beqz       $v0, .L8004E7C4
/* 4F3A4 8004E7A4 00000000 */   nop
.L8004E7A8:
/* 4F3A8 8004E7A8 D7AC0018 */  ldc1       $f12, 0x18($sp)
/* 4F3AC 8004E7AC 0C026E0C */  jal        func_8009B830
/* 4F3B0 8004E7B0 46206307 */   neg.d     $f12, $f12
/* 4F3B4 8004E7B4 3C01800C */  lui        $at, %hi(D_800C52E0)
/* 4F3B8 8004E7B8 D42252E0 */  ldc1       $f2, %lo(D_800C52E0)($at)
/* 4F3BC 8004E7BC 080139FA */  j          .L8004E7E8
/* 4F3C0 8004E7C0 46201081 */   sub.d     $f2, $f2, $f0
.L8004E7C4:
/* 4F3C4 8004E7C4 D7AC0018 */  ldc1       $f12, 0x18($sp)
/* 4F3C8 8004E7C8 0C026E0C */  jal        func_8009B830
/* 4F3CC 8004E7CC 46206307 */   neg.d     $f12, $f12
/* 4F3D0 8004E7D0 820201A0 */  lb         $v0, 0x1A0($s0)
/* 4F3D4 8004E7D4 000210C0 */  sll        $v0, $v0, 3
/* 4F3D8 8004E7D8 3C01802F */  lui        $at, %hi(D_802EF5B0)
/* 4F3DC 8004E7DC 00220821 */  addu       $at, $at, $v0
/* 4F3E0 8004E7E0 D422F5B0 */  ldc1       $f2, %lo(D_802EF5B0)($at)
/* 4F3E4 8004E7E4 46201081 */  sub.d      $f2, $f2, $f0
.L8004E7E8:
/* 4F3E8 8004E7E8 3C01800C */  lui        $at, %hi(D_800C52C0)
/* 4F3EC 8004E7EC 0C015FA5 */  jal        func_80057E94
/* 4F3F0 8004E7F0 F42252C0 */   sdc1      $f2, %lo(D_800C52C0)($at)
/* 4F3F4 8004E7F4 3C05802F */  lui        $a1, %hi(D_802EF5F8)
/* 4F3F8 8004E7F8 24A5F5F8 */  addiu      $a1, $a1, %lo(D_802EF5F8)
/* 4F3FC 8004E7FC 3C04802F */  lui        $a0, %hi(D_802EF700)
/* 4F400 8004E800 2484F700 */  addiu      $a0, $a0, %lo(D_802EF700)
/* 4F404 8004E804 8CA20000 */  lw         $v0, 0x0($a1)
/* 4F408 8004E808 8CA30004 */  lw         $v1, 0x4($a1)
/* 4F40C 8004E80C AC820000 */  sw         $v0, 0x0($a0)
/* 4F410 8004E810 AC830004 */  sw         $v1, 0x4($a0)
/* 4F414 8004E814 8CA20008 */  lw         $v0, 0x8($a1)
/* 4F418 8004E818 8CA3000C */  lw         $v1, 0xC($a1)
/* 4F41C 8004E81C AC820008 */  sw         $v0, 0x8($a0)
/* 4F420 8004E820 AC83000C */  sw         $v1, 0xC($a0)
/* 4F424 8004E824 8CA20010 */  lw         $v0, 0x10($a1)
/* 4F428 8004E828 8CA30014 */  lw         $v1, 0x14($a1)
/* 4F42C 8004E82C AC820010 */  sw         $v0, 0x10($a0)
/* 4F430 8004E830 AC830014 */  sw         $v1, 0x14($a0)
/* 4F434 8004E834 3C01800D */  lui        $at, %hi(D_800D3F68)
/* 4F438 8004E838 D4203F68 */  ldc1       $f0, %lo(D_800D3F68)($at)
/* 4F43C 8004E83C 3C01800D */  lui        $at, %hi(D_800D3F70)
/* 4F440 8004E840 D4223F70 */  ldc1       $f2, %lo(D_800D3F70)($at)
/* 4F444 8004E844 3C05802F */  lui        $a1, %hi(D_802EF5C8)
/* 4F448 8004E848 24A5F5C8 */  addiu      $a1, $a1, %lo(D_802EF5C8)
/* 4F44C 8004E84C 3C04802F */  lui        $a0, %hi(D_802EF6D0)
/* 4F450 8004E850 2484F6D0 */  addiu      $a0, $a0, %lo(D_802EF6D0)
/* 4F454 8004E854 8CA20000 */  lw         $v0, 0x0($a1)
/* 4F458 8004E858 8CA30004 */  lw         $v1, 0x4($a1)
/* 4F45C 8004E85C AC820000 */  sw         $v0, 0x0($a0)
/* 4F460 8004E860 AC830004 */  sw         $v1, 0x4($a0)
/* 4F464 8004E864 8CA20008 */  lw         $v0, 0x8($a1)
/* 4F468 8004E868 8CA3000C */  lw         $v1, 0xC($a1)
/* 4F46C 8004E86C AC820008 */  sw         $v0, 0x8($a0)
/* 4F470 8004E870 AC83000C */  sw         $v1, 0xC($a0)
/* 4F474 8004E874 8CA20010 */  lw         $v0, 0x10($a1)
/* 4F478 8004E878 8CA30014 */  lw         $v1, 0x14($a1)
/* 4F47C 8004E87C AC820010 */  sw         $v0, 0x10($a0)
/* 4F480 8004E880 AC830014 */  sw         $v1, 0x14($a0)
/* 4F484 8004E884 3C05802F */  lui        $a1, %hi(D_802EF5E0)
/* 4F488 8004E888 24A5F5E0 */  addiu      $a1, $a1, %lo(D_802EF5E0)
/* 4F48C 8004E88C 3C04802F */  lui        $a0, %hi(D_802EF6E8)
/* 4F490 8004E890 2484F6E8 */  addiu      $a0, $a0, %lo(D_802EF6E8)
/* 4F494 8004E894 8CA20000 */  lw         $v0, 0x0($a1)
/* 4F498 8004E898 8CA30004 */  lw         $v1, 0x4($a1)
/* 4F49C 8004E89C AC820000 */  sw         $v0, 0x0($a0)
/* 4F4A0 8004E8A0 AC830004 */  sw         $v1, 0x4($a0)
/* 4F4A4 8004E8A4 8CA20008 */  lw         $v0, 0x8($a1)
/* 4F4A8 8004E8A8 8CA3000C */  lw         $v1, 0xC($a1)
/* 4F4AC 8004E8AC AC820008 */  sw         $v0, 0x8($a0)
/* 4F4B0 8004E8B0 AC83000C */  sw         $v1, 0xC($a0)
/* 4F4B4 8004E8B4 8CA20010 */  lw         $v0, 0x10($a1)
/* 4F4B8 8004E8B8 8CA30014 */  lw         $v1, 0x14($a1)
/* 4F4BC 8004E8BC AC820010 */  sw         $v0, 0x10($a0)
/* 4F4C0 8004E8C0 AC830014 */  sw         $v1, 0x14($a0)
/* 4F4C4 8004E8C4 3C01802F */  lui        $at, %hi(D_802EF758)
/* 4F4C8 8004E8C8 F420F758 */  sdc1       $f0, %lo(D_802EF758)($at)
/* 4F4CC 8004E8CC 3C01802F */  lui        $at, %hi(D_802EF760)
/* 4F4D0 8004E8D0 F422F760 */  sdc1       $f2, %lo(D_802EF760)($at)
/* 4F4D4 8004E8D4 8FBF002C */  lw         $ra, 0x2C($sp)
/* 4F4D8 8004E8D8 8FB00028 */  lw         $s0, 0x28($sp)
/* 4F4DC 8004E8DC 03E00008 */  jr         $ra
/* 4F4E0 8004E8E0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004E8E4
/* 4F4E4 8004E8E4 3C018031 */  lui        $at, %hi(D_80312A10)
/* 4F4E8 8004E8E8 D4262A10 */  ldc1       $f6, %lo(D_80312A10)($at)
/* 4F4EC 8004E8EC 3C01802F */  lui        $at, %hi(D_802EF138)
/* 4F4F0 8004E8F0 D420F138 */  ldc1       $f0, %lo(D_802EF138)($at)
/* 4F4F4 8004E8F4 3C018031 */  lui        $at, %hi(D_80312A18)
/* 4F4F8 8004E8F8 D4242A18 */  ldc1       $f4, %lo(D_80312A18)($at)
/* 4F4FC 8004E8FC 46203181 */  sub.d      $f6, $f6, $f0
/* 4F500 8004E900 3C01802F */  lui        $at, %hi(D_802EF140)
/* 4F504 8004E904 D420F140 */  ldc1       $f0, %lo(D_802EF140)($at)
/* 4F508 8004E908 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4F50C 8004E90C 3C018031 */  lui        $at, %hi(D_80312A20)
/* 4F510 8004E910 D4222A20 */  ldc1       $f2, %lo(D_80312A20)($at)
/* 4F514 8004E914 46202101 */  sub.d      $f4, $f4, $f0
/* 4F518 8004E918 3C01802F */  lui        $at, %hi(D_802EF148)
/* 4F51C 8004E91C D420F148 */  ldc1       $f0, %lo(D_802EF148)($at)
/* 4F520 8004E920 3C04803F */  lui        $a0, %hi(D_803EE580)
/* 4F524 8004E924 2484E580 */  addiu      $a0, $a0, %lo(D_803EE580)
/* 4F528 8004E928 3C05803F */  lui        $a1, %hi(D_803F6918)
/* 4F52C 8004E92C 24A56918 */  addiu      $a1, $a1, %lo(D_803F6918)
/* 4F530 8004E930 46201081 */  sub.d      $f2, $f2, $f0
/* 4F534 8004E934 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4F538 8004E938 F4860000 */  sdc1       $f6, 0x0($a0)
/* 4F53C 8004E93C 3C01803F */  lui        $at, %hi(D_803EE588)
/* 4F540 8004E940 F424E588 */  sdc1       $f4, %lo(D_803EE588)($at)
/* 4F544 8004E944 3C01803F */  lui        $at, %hi(D_803EE590)
/* 4F548 8004E948 0C022C70 */  jal        func_8008B1C0
/* 4F54C 8004E94C F422E590 */   sdc1      $f2, %lo(D_803EE590)($at)
/* 4F550 8004E950 3C01803F */  lui        $at, %hi(D_803F6910)
/* 4F554 8004E954 F4206910 */  sdc1       $f0, %lo(D_803F6910)($at)
/* 4F558 8004E958 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4F55C 8004E95C 03E00008 */  jr         $ra
/* 4F560 8004E960 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004E964
/* 4F564 8004E964 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4F568 8004E968 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4F56C 8004E96C 3C01800C */  lui        $at, %hi(D_800C52AC)
/* 4F570 8004E970 C43452AC */  lwc1       $f20, %lo(D_800C52AC)($at)
/* 4F574 8004E974 4680A521 */  cvt.d.w    $f20, $f20
/* 4F578 8004E978 3C01800C */  lui        $at, %hi(D_800C52A4)
/* 4F57C 8004E97C C42052A4 */  lwc1       $f0, %lo(D_800C52A4)($at)
/* 4F580 8004E980 46800021 */  cvt.d.w    $f0, $f0
/* 4F584 8004E984 4620A503 */  div.d      $f20, $f20, $f0
/* 4F588 8004E988 3C01800C */  lui        $at, %hi(D_800C52B0)
/* 4F58C 8004E98C C43252B0 */  lwc1       $f18, %lo(D_800C52B0)($at)
/* 4F590 8004E990 468094A1 */  cvt.d.w    $f18, $f18
/* 4F594 8004E994 3C01800C */  lui        $at, %hi(D_800C52A8)
/* 4F598 8004E998 C42052A8 */  lwc1       $f0, %lo(D_800C52A8)($at)
/* 4F59C 8004E99C 46800021 */  cvt.d.w    $f0, $f0
/* 4F5A0 8004E9A0 46209483 */  div.d      $f18, $f18, $f0
/* 4F5A4 8004E9A4 3C01803F */  lui        $at, %hi(D_803F6918)
/* 4F5A8 8004E9A8 D4206918 */  ldc1       $f0, %lo(D_803F6918)($at)
/* 4F5AC 8004E9AC 3C01803F */  lui        $at, %hi(D_803F6920)
/* 4F5B0 8004E9B0 D4226920 */  ldc1       $f2, %lo(D_803F6920)($at)
/* 4F5B4 8004E9B4 3C01803F */  lui        $at, %hi(D_803F6928)
/* 4F5B8 8004E9B8 D4246928 */  ldc1       $f4, %lo(D_803F6928)($at)
/* 4F5BC 8004E9BC 3C01803F */  lui        $at, %hi(D_803ED070)
/* 4F5C0 8004E9C0 D426D070 */  ldc1       $f6, %lo(D_803ED070)($at)
/* 4F5C4 8004E9C4 3C01803F */  lui        $at, %hi(D_803ED078)
/* 4F5C8 8004E9C8 D428D078 */  ldc1       $f8, %lo(D_803ED078)($at)
/* 4F5CC 8004E9CC 46200007 */  neg.d      $f0, $f0
/* 4F5D0 8004E9D0 3C01803F */  lui        $at, %hi(D_803ED080)
/* 4F5D4 8004E9D4 D42AD080 */  ldc1       $f10, %lo(D_803ED080)($at)
/* 4F5D8 8004E9D8 46201087 */  neg.d      $f2, $f2
/* 4F5DC 8004E9DC 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 4F5E0 8004E9E0 D42C5C10 */  ldc1       $f12, %lo(D_803F5C10)($at)
/* 4F5E4 8004E9E4 46202107 */  neg.d      $f4, $f4
/* 4F5E8 8004E9E8 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 4F5EC 8004E9EC D42E5C18 */  ldc1       $f14, %lo(D_803F5C18)($at)
/* 4F5F0 8004E9F0 46203187 */  neg.d      $f6, $f6
/* 4F5F4 8004E9F4 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 4F5F8 8004E9F8 D4305C20 */  ldc1       $f16, %lo(D_803F5C20)($at)
/* 4F5FC 8004E9FC 46204207 */  neg.d      $f8, $f8
/* 4F600 8004EA00 46205287 */  neg.d      $f10, $f10
/* 4F604 8004EA04 AFB00010 */  sw         $s0, 0x10($sp)
/* 4F608 8004EA08 46206307 */  neg.d      $f12, $f12
/* 4F60C 8004EA0C 3C10802F */  lui        $s0, %hi(D_802EF6B8)
/* 4F610 8004EA10 2610F6B8 */  addiu      $s0, $s0, %lo(D_802EF6B8)
/* 4F614 8004EA14 46207387 */  neg.d      $f14, $f14
/* 4F618 8004EA18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4F61C 8004EA1C 46208407 */  neg.d      $f16, $f16
/* 4F620 8004EA20 F6000000 */  sdc1       $f0, 0x0($s0)
/* 4F624 8004EA24 3C01802F */  lui        $at, %hi(D_802EF6C0)
/* 4F628 8004EA28 F422F6C0 */  sdc1       $f2, %lo(D_802EF6C0)($at)
/* 4F62C 8004EA2C 3C01802F */  lui        $at, %hi(D_802EF6C8)
/* 4F630 8004EA30 F424F6C8 */  sdc1       $f4, %lo(D_802EF6C8)($at)
/* 4F634 8004EA34 3C01802F */  lui        $at, %hi(D_802EF688)
/* 4F638 8004EA38 F426F688 */  sdc1       $f6, %lo(D_802EF688)($at)
/* 4F63C 8004EA3C 3C01802F */  lui        $at, %hi(D_802EF690)
/* 4F640 8004EA40 F428F690 */  sdc1       $f8, %lo(D_802EF690)($at)
/* 4F644 8004EA44 3C01802F */  lui        $at, %hi(D_802EF698)
/* 4F648 8004EA48 F42AF698 */  sdc1       $f10, %lo(D_802EF698)($at)
/* 4F64C 8004EA4C 3C01802F */  lui        $at, %hi(D_802EF6A0)
/* 4F650 8004EA50 F42CF6A0 */  sdc1       $f12, %lo(D_802EF6A0)($at)
/* 4F654 8004EA54 3C01802F */  lui        $at, %hi(D_802EF6A8)
/* 4F658 8004EA58 F42EF6A8 */  sdc1       $f14, %lo(D_802EF6A8)($at)
/* 4F65C 8004EA5C 3C01802F */  lui        $at, %hi(D_802EF6B0)
/* 4F660 8004EA60 F430F6B0 */  sdc1       $f16, %lo(D_802EF6B0)($at)
/* 4F664 8004EA64 3C01802F */  lui        $at, %hi(D_802EF738)
/* 4F668 8004EA68 F434F738 */  sdc1       $f20, %lo(D_802EF738)($at)
/* 4F66C 8004EA6C 3C01802F */  lui        $at, %hi(D_802EF740)
/* 4F670 8004EA70 0C013A39 */  jal        func_8004E8E4
/* 4F674 8004EA74 F432F740 */   sdc1      $f18, %lo(D_802EF740)($at)
/* 4F678 8004EA78 3C04802F */  lui        $a0, %hi(D_802F0920)
/* 4F67C 8004EA7C 8C840920 */  lw         $a0, %lo(D_802F0920)($a0)
/* 4F680 8004EA80 38830002 */  xori       $v1, $a0, 0x2
/* 4F684 8004EA84 0003182B */  sltu       $v1, $zero, $v1
/* 4F688 8004EA88 38820003 */  xori       $v0, $a0, 0x3
/* 4F68C 8004EA8C 0002102B */  sltu       $v0, $zero, $v0
/* 4F690 8004EA90 00621825 */  or         $v1, $v1, $v0
/* 4F694 8004EA94 14600005 */  bnez       $v1, .L8004EAAC
/* 4F698 8004EA98 24020004 */   addiu     $v0, $zero, 0x4
/* 4F69C 8004EA9C 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4F6A0 8004EAA0 8042F798 */  lb         $v0, %lo(gPlayers_turn)($v0)
/* 4F6A4 8004EAA4 14400011 */  bnez       $v0, .L8004EAEC
/* 4F6A8 8004EAA8 24020004 */   addiu     $v0, $zero, 0x4
.L8004EAAC:
/* 4F6AC 8004EAAC 14820008 */  bne        $a0, $v0, .L8004EAD0
/* 4F6B0 8004EAB0 26030090 */   addiu     $v1, $s0, 0x90
/* 4F6B4 8004EAB4 3C01803F */  lui        $at, %hi(D_803F6910)
/* 4F6B8 8004EAB8 D4206910 */  ldc1       $f0, %lo(D_803F6910)($at)
/* 4F6BC 8004EABC 3C01802F */  lui        $at, %hi(D_802EF748)
/* 4F6C0 8004EAC0 F420F748 */  sdc1       $f0, %lo(D_802EF748)($at)
/* 4F6C4 8004EAC4 3C01802F */  lui        $at, %hi(D_802EF750)
/* 4F6C8 8004EAC8 08013ABB */  j          .L8004EAEC
/* 4F6CC 8004EACC F420F750 */   sdc1      $f0, %lo(D_802EF750)($at)
.L8004EAD0:
/* 4F6D0 8004EAD0 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4F6D4 8004EAD4 8042F798 */  lb         $v0, %lo(gPlayers_turn)($v0)
/* 4F6D8 8004EAD8 3C01803F */  lui        $at, %hi(D_803F6910)
/* 4F6DC 8004EADC D4206910 */  ldc1       $f0, %lo(D_803F6910)($at)
/* 4F6E0 8004EAE0 000210C0 */  sll        $v0, $v0, 3
/* 4F6E4 8004EAE4 00431021 */  addu       $v0, $v0, $v1
/* 4F6E8 8004EAE8 F4400000 */  sdc1       $f0, 0x0($v0)
.L8004EAEC:
/* 4F6EC 8004EAEC 3C03802F */  lui        $v1, %hi(D_802F0920)
/* 4F6F0 8004EAF0 8C630920 */  lw         $v1, %lo(D_802F0920)($v1)
/* 4F6F4 8004EAF4 24020004 */  addiu      $v0, $zero, 0x4
/* 4F6F8 8004EAF8 14620008 */  bne        $v1, $v0, .L8004EB1C
/* 4F6FC 8004EAFC 00000000 */   nop
/* 4F700 8004EB00 3C01803F */  lui        $at, %hi(D_803F6910)
/* 4F704 8004EB04 D4206910 */  ldc1       $f0, %lo(D_803F6910)($at)
/* 4F708 8004EB08 3C01802F */  lui        $at, %hi(D_802EF748)
/* 4F70C 8004EB0C F420F748 */  sdc1       $f0, %lo(D_802EF748)($at)
/* 4F710 8004EB10 3C01802F */  lui        $at, %hi(D_802EF750)
/* 4F714 8004EB14 08013AD0 */  j          .L8004EB40
/* 4F718 8004EB18 F420F750 */   sdc1      $f0, %lo(D_802EF750)($at)
.L8004EB1C:
/* 4F71C 8004EB1C 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4F720 8004EB20 2442F798 */  addiu      $v0, $v0, %lo(gPlayers_turn)
/* 4F724 8004EB24 80430000 */  lb         $v1, 0x0($v0)
/* 4F728 8004EB28 2442FFB0 */  addiu      $v0, $v0, -0x50
/* 4F72C 8004EB2C 3C01803F */  lui        $at, %hi(D_803F6910)
/* 4F730 8004EB30 D4206910 */  ldc1       $f0, %lo(D_803F6910)($at)
/* 4F734 8004EB34 000318C0 */  sll        $v1, $v1, 3
/* 4F738 8004EB38 00621821 */  addu       $v1, $v1, $v0
/* 4F73C 8004EB3C F4600000 */  sdc1       $f0, 0x0($v1)
.L8004EB40:
/* 4F740 8004EB40 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4F744 8004EB44 8FB00010 */  lw         $s0, 0x10($sp)
/* 4F748 8004EB48 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4F74C 8004EB4C 03E00008 */  jr         $ra
/* 4F750 8004EB50 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004EB54
/* 4F754 8004EB54 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4F758 8004EB58 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4F75C 8004EB5C 3C01800C */  lui        $at, %hi(D_800C52AC)
/* 4F760 8004EB60 C43452AC */  lwc1       $f20, %lo(D_800C52AC)($at)
/* 4F764 8004EB64 4680A521 */  cvt.d.w    $f20, $f20
/* 4F768 8004EB68 3C01800C */  lui        $at, %hi(D_800C52A4)
/* 4F76C 8004EB6C C42052A4 */  lwc1       $f0, %lo(D_800C52A4)($at)
/* 4F770 8004EB70 46800021 */  cvt.d.w    $f0, $f0
/* 4F774 8004EB74 4620A503 */  div.d      $f20, $f20, $f0
/* 4F778 8004EB78 3C01800C */  lui        $at, %hi(D_800C52B0)
/* 4F77C 8004EB7C C43252B0 */  lwc1       $f18, %lo(D_800C52B0)($at)
/* 4F780 8004EB80 468094A1 */  cvt.d.w    $f18, $f18
/* 4F784 8004EB84 3C01800C */  lui        $at, %hi(D_800C52A8)
/* 4F788 8004EB88 C42052A8 */  lwc1       $f0, %lo(D_800C52A8)($at)
/* 4F78C 8004EB8C 46800021 */  cvt.d.w    $f0, $f0
/* 4F790 8004EB90 46209483 */  div.d      $f18, $f18, $f0
/* 4F794 8004EB94 3C01803F */  lui        $at, %hi(D_803F6918)
/* 4F798 8004EB98 D4206918 */  ldc1       $f0, %lo(D_803F6918)($at)
/* 4F79C 8004EB9C 3C01803F */  lui        $at, %hi(D_803F6920)
/* 4F7A0 8004EBA0 D4226920 */  ldc1       $f2, %lo(D_803F6920)($at)
/* 4F7A4 8004EBA4 3C01803F */  lui        $at, %hi(D_803F6928)
/* 4F7A8 8004EBA8 D4246928 */  ldc1       $f4, %lo(D_803F6928)($at)
/* 4F7AC 8004EBAC 3C01803F */  lui        $at, %hi(D_803ED070)
/* 4F7B0 8004EBB0 D426D070 */  ldc1       $f6, %lo(D_803ED070)($at)
/* 4F7B4 8004EBB4 3C01803F */  lui        $at, %hi(D_803ED078)
/* 4F7B8 8004EBB8 D428D078 */  ldc1       $f8, %lo(D_803ED078)($at)
/* 4F7BC 8004EBBC 46200007 */  neg.d      $f0, $f0
/* 4F7C0 8004EBC0 3C01803F */  lui        $at, %hi(D_803ED080)
/* 4F7C4 8004EBC4 D42AD080 */  ldc1       $f10, %lo(D_803ED080)($at)
/* 4F7C8 8004EBC8 46201087 */  neg.d      $f2, $f2
/* 4F7CC 8004EBCC 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 4F7D0 8004EBD0 D42C5C10 */  ldc1       $f12, %lo(D_803F5C10)($at)
/* 4F7D4 8004EBD4 46202107 */  neg.d      $f4, $f4
/* 4F7D8 8004EBD8 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 4F7DC 8004EBDC D42E5C18 */  ldc1       $f14, %lo(D_803F5C18)($at)
/* 4F7E0 8004EBE0 46203187 */  neg.d      $f6, $f6
/* 4F7E4 8004EBE4 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 4F7E8 8004EBE8 D4305C20 */  ldc1       $f16, %lo(D_803F5C20)($at)
/* 4F7EC 8004EBEC 46204207 */  neg.d      $f8, $f8
/* 4F7F0 8004EBF0 46205287 */  neg.d      $f10, $f10
/* 4F7F4 8004EBF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 4F7F8 8004EBF8 46206307 */  neg.d      $f12, $f12
/* 4F7FC 8004EBFC 3C10802F */  lui        $s0, %hi(D_802EF700)
/* 4F800 8004EC00 2610F700 */  addiu      $s0, $s0, %lo(D_802EF700)
/* 4F804 8004EC04 46207387 */  neg.d      $f14, $f14
/* 4F808 8004EC08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4F80C 8004EC0C 46208407 */  neg.d      $f16, $f16
/* 4F810 8004EC10 F6000000 */  sdc1       $f0, 0x0($s0)
/* 4F814 8004EC14 3C01802F */  lui        $at, %hi(D_802EF708)
/* 4F818 8004EC18 F422F708 */  sdc1       $f2, %lo(D_802EF708)($at)
/* 4F81C 8004EC1C 3C01802F */  lui        $at, %hi(D_802EF710)
/* 4F820 8004EC20 F424F710 */  sdc1       $f4, %lo(D_802EF710)($at)
/* 4F824 8004EC24 3C01802F */  lui        $at, %hi(D_802EF6D0)
/* 4F828 8004EC28 F426F6D0 */  sdc1       $f6, %lo(D_802EF6D0)($at)
/* 4F82C 8004EC2C 3C01802F */  lui        $at, %hi(D_802EF6D8)
/* 4F830 8004EC30 F428F6D8 */  sdc1       $f8, %lo(D_802EF6D8)($at)
/* 4F834 8004EC34 3C01802F */  lui        $at, %hi(D_802EF6E0)
/* 4F838 8004EC38 F42AF6E0 */  sdc1       $f10, %lo(D_802EF6E0)($at)
/* 4F83C 8004EC3C 3C01802F */  lui        $at, %hi(D_802EF6E8)
/* 4F840 8004EC40 F42CF6E8 */  sdc1       $f12, %lo(D_802EF6E8)($at)
/* 4F844 8004EC44 3C01802F */  lui        $at, %hi(D_802EF6F0)
/* 4F848 8004EC48 F42EF6F0 */  sdc1       $f14, %lo(D_802EF6F0)($at)
/* 4F84C 8004EC4C 3C01802F */  lui        $at, %hi(D_802EF6F8)
/* 4F850 8004EC50 F430F6F8 */  sdc1       $f16, %lo(D_802EF6F8)($at)
/* 4F854 8004EC54 3C01802F */  lui        $at, %hi(D_802EF758)
/* 4F858 8004EC58 F434F758 */  sdc1       $f20, %lo(D_802EF758)($at)
/* 4F85C 8004EC5C 3C01802F */  lui        $at, %hi(D_802EF760)
/* 4F860 8004EC60 0C013A39 */  jal        func_8004E8E4
/* 4F864 8004EC64 F432F760 */   sdc1      $f18, %lo(D_802EF760)($at)
/* 4F868 8004EC68 3C03802F */  lui        $v1, %hi(D_802F0920)
/* 4F86C 8004EC6C 8C630920 */  lw         $v1, %lo(D_802F0920)($v1)
/* 4F870 8004EC70 24020004 */  addiu      $v0, $zero, 0x4
/* 4F874 8004EC74 14620008 */  bne        $v1, $v0, .L8004EC98
/* 4F878 8004EC78 26030068 */   addiu     $v1, $s0, 0x68
/* 4F87C 8004EC7C 3C01803F */  lui        $at, %hi(D_803F6910)
/* 4F880 8004EC80 D4206910 */  ldc1       $f0, %lo(D_803F6910)($at)
/* 4F884 8004EC84 3C01802F */  lui        $at, %hi(D_802EF768)
/* 4F888 8004EC88 F420F768 */  sdc1       $f0, %lo(D_802EF768)($at)
/* 4F88C 8004EC8C 3C01802F */  lui        $at, %hi(D_802EF770)
/* 4F890 8004EC90 08013B2D */  j          .L8004ECB4
/* 4F894 8004EC94 F420F770 */   sdc1      $f0, %lo(D_802EF770)($at)
.L8004EC98:
/* 4F898 8004EC98 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4F89C 8004EC9C 8042F798 */  lb         $v0, %lo(gPlayers_turn)($v0)
/* 4F8A0 8004ECA0 3C01803F */  lui        $at, %hi(D_803F6910)
/* 4F8A4 8004ECA4 D4206910 */  ldc1       $f0, %lo(D_803F6910)($at)
/* 4F8A8 8004ECA8 000210C0 */  sll        $v0, $v0, 3
/* 4F8AC 8004ECAC 00431021 */  addu       $v0, $v0, $v1
/* 4F8B0 8004ECB0 F4400000 */  sdc1       $f0, 0x0($v0)
.L8004ECB4:
/* 4F8B4 8004ECB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4F8B8 8004ECB8 8FB00010 */  lw         $s0, 0x10($sp)
/* 4F8BC 8004ECBC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4F8C0 8004ECC0 03E00008 */  jr         $ra
/* 4F8C4 8004ECC4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004ECC8
/* 4F8C8 8004ECC8 3C01803F */  lui        $at, %hi(D_803ED070)
/* 4F8CC 8004ECCC D420D070 */  ldc1       $f0, %lo(D_803ED070)($at)
/* 4F8D0 8004ECD0 D4820000 */  ldc1       $f2, 0x0($a0)
/* 4F8D4 8004ECD4 46220002 */  mul.d      $f0, $f0, $f2
/* 4F8D8 8004ECD8 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 4F8DC 8004ECDC D4265C10 */  ldc1       $f6, %lo(D_803F5C10)($at)
/* 4F8E0 8004ECE0 D4820008 */  ldc1       $f2, 0x8($a0)
/* 4F8E4 8004ECE4 46223182 */  mul.d      $f6, $f6, $f2
/* 4F8E8 8004ECE8 D4840010 */  ldc1       $f4, 0x10($a0)
/* 4F8EC 8004ECEC 3C01803F */  lui        $at, %hi(D_803F6918)
/* 4F8F0 8004ECF0 D4226918 */  ldc1       $f2, %lo(D_803F6918)($at)
/* 4F8F4 8004ECF4 46241082 */  mul.d      $f2, $f2, $f4
/* 4F8F8 8004ECF8 46260000 */  add.d      $f0, $f0, $f6
/* 4F8FC 8004ECFC 46220000 */  add.d      $f0, $f0, $f2
/* 4F900 8004ED00 3C01802B */  lui        $at, %hi(D_802AD898)
/* 4F904 8004ED04 F420D898 */  sdc1       $f0, %lo(D_802AD898)($at)
/* 4F908 8004ED08 3C01803F */  lui        $at, %hi(D_803ED078)
/* 4F90C 8004ED0C D420D078 */  ldc1       $f0, %lo(D_803ED078)($at)
/* 4F910 8004ED10 D4820000 */  ldc1       $f2, 0x0($a0)
/* 4F914 8004ED14 46220002 */  mul.d      $f0, $f0, $f2
/* 4F918 8004ED18 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 4F91C 8004ED1C D4265C18 */  ldc1       $f6, %lo(D_803F5C18)($at)
/* 4F920 8004ED20 D4820008 */  ldc1       $f2, 0x8($a0)
/* 4F924 8004ED24 46223182 */  mul.d      $f6, $f6, $f2
/* 4F928 8004ED28 D4840010 */  ldc1       $f4, 0x10($a0)
/* 4F92C 8004ED2C 3C01803F */  lui        $at, %hi(D_803F6920)
/* 4F930 8004ED30 D4226920 */  ldc1       $f2, %lo(D_803F6920)($at)
/* 4F934 8004ED34 46241082 */  mul.d      $f2, $f2, $f4
/* 4F938 8004ED38 46260000 */  add.d      $f0, $f0, $f6
/* 4F93C 8004ED3C 46220000 */  add.d      $f0, $f0, $f2
/* 4F940 8004ED40 3C01802B */  lui        $at, %hi(D_802AD8A0)
/* 4F944 8004ED44 F420D8A0 */  sdc1       $f0, %lo(D_802AD8A0)($at)
/* 4F948 8004ED48 3C01803F */  lui        $at, %hi(D_803ED080)
/* 4F94C 8004ED4C D420D080 */  ldc1       $f0, %lo(D_803ED080)($at)
/* 4F950 8004ED50 D4820000 */  ldc1       $f2, 0x0($a0)
/* 4F954 8004ED54 46220002 */  mul.d      $f0, $f0, $f2
/* 4F958 8004ED58 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 4F95C 8004ED5C D4265C20 */  ldc1       $f6, %lo(D_803F5C20)($at)
/* 4F960 8004ED60 D4820008 */  ldc1       $f2, 0x8($a0)
/* 4F964 8004ED64 46223182 */  mul.d      $f6, $f6, $f2
/* 4F968 8004ED68 D4840010 */  ldc1       $f4, 0x10($a0)
/* 4F96C 8004ED6C 3C01803F */  lui        $at, %hi(D_803F6928)
/* 4F970 8004ED70 D4226928 */  ldc1       $f2, %lo(D_803F6928)($at)
/* 4F974 8004ED74 46241082 */  mul.d      $f2, $f2, $f4
/* 4F978 8004ED78 46260000 */  add.d      $f0, $f0, $f6
/* 4F97C 8004ED7C 46220000 */  add.d      $f0, $f0, $f2
/* 4F980 8004ED80 3C01802B */  lui        $at, %hi(D_802AD8A8)
/* 4F984 8004ED84 03E00008 */  jr         $ra
/* 4F988 8004ED88 F420D8A8 */   sdc1      $f0, %lo(D_802AD8A8)($at)

glabel func_8004ED8C
/* 4F98C 8004ED8C 3C01800D */  lui        $at, %hi(D_800D3F78)
/* 4F990 8004ED90 D4203F78 */  ldc1       $f0, %lo(D_800D3F78)($at)
/* 4F994 8004ED94 46206305 */  abs.d      $f12, $f12
/* 4F998 8004ED98 462C003E */  c.le.d     $f0, $f12
/* 4F99C 8004ED9C 00000000 */  nop
/* 4F9A0 8004EDA0 00000000 */  nop
/* 4F9A4 8004EDA4 45010002 */  bc1t       .L8004EDB0
/* 4F9A8 8004EDA8 00001021 */   addu      $v0, $zero, $zero
/* 4F9AC 8004EDAC 24020001 */  addiu      $v0, $zero, 0x1
.L8004EDB0:
/* 4F9B0 8004EDB0 03E00008 */  jr         $ra
/* 4F9B4 8004EDB4 00000000 */   nop

glabel func_8004EDB8
/* 4F9B8 8004EDB8 3C01802F */  lui        $at, %hi(D_802EF138)
/* 4F9BC 8004EDBC D424F138 */  ldc1       $f4, %lo(D_802EF138)($at)
/* 4F9C0 8004EDC0 3C018031 */  lui        $at, %hi(D_80312A10)
/* 4F9C4 8004EDC4 D4202A10 */  ldc1       $f0, %lo(D_80312A10)($at)
/* 4F9C8 8004EDC8 46202101 */  sub.d      $f4, $f4, $f0
/* 4F9CC 8004EDCC 3C01803F */  lui        $at, %hi(D_803F6918)
/* 4F9D0 8004EDD0 D4206918 */  ldc1       $f0, %lo(D_803F6918)($at)
/* 4F9D4 8004EDD4 3C01802F */  lui        $at, %hi(D_802EF140)
/* 4F9D8 8004EDD8 D426F140 */  ldc1       $f6, %lo(D_802EF140)($at)
/* 4F9DC 8004EDDC 46202102 */  mul.d      $f4, $f4, $f0
/* 4F9E0 8004EDE0 3C018031 */  lui        $at, %hi(D_80312A18)
/* 4F9E4 8004EDE4 D4202A18 */  ldc1       $f0, %lo(D_80312A18)($at)
/* 4F9E8 8004EDE8 46203181 */  sub.d      $f6, $f6, $f0
/* 4F9EC 8004EDEC 3C01803F */  lui        $at, %hi(D_803F6920)
/* 4F9F0 8004EDF0 D4206920 */  ldc1       $f0, %lo(D_803F6920)($at)
/* 4F9F4 8004EDF4 3C01802F */  lui        $at, %hi(D_802EF148)
/* 4F9F8 8004EDF8 D422F148 */  ldc1       $f2, %lo(D_802EF148)($at)
/* 4F9FC 8004EDFC 46203182 */  mul.d      $f6, $f6, $f0
/* 4FA00 8004EE00 3C018031 */  lui        $at, %hi(D_80312A20)
/* 4FA04 8004EE04 D4202A20 */  ldc1       $f0, %lo(D_80312A20)($at)
/* 4FA08 8004EE08 46201081 */  sub.d      $f2, $f2, $f0
/* 4FA0C 8004EE0C 3C01803F */  lui        $at, %hi(D_803F6928)
/* 4FA10 8004EE10 D4206928 */  ldc1       $f0, %lo(D_803F6928)($at)
/* 4FA14 8004EE14 46201082 */  mul.d      $f2, $f2, $f0
/* 4FA18 8004EE18 46262100 */  add.d      $f4, $f4, $f6
/* 4FA1C 8004EE1C 3C02802C */  lui        $v0, %hi(D_802C66A4)
/* 4FA20 8004EE20 8C4266A4 */  lw         $v0, %lo(D_802C66A4)($v0)
/* 4FA24 8004EE24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FA28 8004EE28 46222280 */  add.d      $f10, $f4, $f2
/* 4FA2C 8004EE2C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4FA30 8004EE30 AFB00010 */  sw         $s0, 0x10($sp)
/* 4FA34 8004EE34 3C01802B */  lui        $at, %hi(D_802AD9A8)
/* 4FA38 8004EE38 AC20D9A8 */  sw         $zero, %lo(D_802AD9A8)($at)
/* 4FA3C 8004EE3C 3C01802B */  lui        $at, %hi(D_802AD9AC)
/* 4FA40 8004EE40 AC20D9AC */  sw         $zero, %lo(D_802AD9AC)($at)
/* 4FA44 8004EE44 3C01802B */  lui        $at, %hi(D_802AD9A0)
/* 4FA48 8004EE48 1040000E */  beqz       $v0, .L8004EE84
/* 4FA4C 8004EE4C F42AD9A0 */   sdc1      $f10, %lo(D_802AD9A0)($at)
/* 4FA50 8004EE50 3C03802F */  lui        $v1, %hi(D_802EF738)
/* 4FA54 8004EE54 2463F738 */  addiu      $v1, $v1, %lo(D_802EF738)
/* 4FA58 8004EE58 D4640000 */  ldc1       $f4, 0x0($v1)
/* 4FA5C 8004EE5C 3C01800C */  lui        $at, %hi(D_800C52A4)
/* 4FA60 8004EE60 C42052A4 */  lwc1       $f0, %lo(D_800C52A4)($at)
/* 4FA64 8004EE64 46800021 */  cvt.d.w    $f0, $f0
/* 4FA68 8004EE68 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4FA6C 8004EE6C 8042F798 */  lb         $v0, %lo(gPlayers_turn)($v0)
/* 4FA70 8004EE70 46202102 */  mul.d      $f4, $f4, $f0
/* 4FA74 8004EE74 000210C0 */  sll        $v0, $v0, 3
/* 4FA78 8004EE78 00621821 */  addu       $v1, $v1, $v0
/* 4FA7C 8004EE7C 08013BD9 */  j          .L8004EF64
/* 4FA80 8004EE80 D4600010 */   ldc1      $f0, 0x10($v1)
.L8004EE84:
/* 4FA84 8004EE84 3C02802D */  lui        $v0, %hi(D_802C9150)
/* 4FA88 8004EE88 8C429150 */  lw         $v0, %lo(D_802C9150)($v0)
/* 4FA8C 8004EE8C 1040004A */  beqz       $v0, .L8004EFB8
/* 4FA90 8004EE90 00000000 */   nop
/* 4FA94 8004EE94 3C03802F */  lui        $v1, %hi(D_802EF790)
/* 4FA98 8004EE98 2463F790 */  addiu      $v1, $v1, %lo(D_802EF790)
/* 4FA9C 8004EE9C 94620000 */  lhu        $v0, 0x0($v1)
/* 4FAA0 8004EEA0 3C01802D */  lui        $at, %hi(D_802C9150)
/* 4FAA4 8004EEA4 AC209150 */  sw         $zero, %lo(D_802C9150)($at)
/* 4FAA8 8004EEA8 2442FFFD */  addiu      $v0, $v0, -0x3
/* 4FAAC 8004EEAC 2C420002 */  sltiu      $v0, $v0, 0x2
/* 4FAB0 8004EEB0 10400021 */  beqz       $v0, .L8004EF38
/* 4FAB4 8004EEB4 00000000 */   nop
/* 4FAB8 8004EEB8 3C01802F */  lui        $at, %hi(D_802EF758)
/* 4FABC 8004EEBC D426F758 */  ldc1       $f6, %lo(D_802EF758)($at)
/* 4FAC0 8004EEC0 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4FAC4 8004EEC4 8042F798 */  lb         $v0, %lo(gPlayers_turn)($v0)
/* 4FAC8 8004EEC8 3C01800C */  lui        $at, %hi(D_800C52A4)
/* 4FACC 8004EECC C42052A4 */  lwc1       $f0, %lo(D_800C52A4)($at)
/* 4FAD0 8004EED0 46800021 */  cvt.d.w    $f0, $f0
/* 4FAD4 8004EED4 46203182 */  mul.d      $f6, $f6, $f0
/* 4FAD8 8004EED8 000210C0 */  sll        $v0, $v0, 3
/* 4FADC 8004EEDC 00621021 */  addu       $v0, $v1, $v0
/* 4FAE0 8004EEE0 D442FFD8 */  ldc1       $f2, -0x28($v0)
/* 4FAE4 8004EEE4 3C01802F */  lui        $at, %hi(D_802EF760)
/* 4FAE8 8004EEE8 D424F760 */  ldc1       $f4, %lo(D_802EF760)($at)
/* 4FAEC 8004EEEC 3C01800C */  lui        $at, %hi(D_800C52A8)
/* 4FAF0 8004EEF0 C42052A8 */  lwc1       $f0, %lo(D_800C52A8)($at)
/* 4FAF4 8004EEF4 46800021 */  cvt.d.w    $f0, $f0
/* 4FAF8 8004EEF8 46201087 */  neg.d      $f2, $f2
/* 4FAFC 8004EEFC 46202102 */  mul.d      $f4, $f4, $f0
/* 4FB00 8004EF00 462A1081 */  sub.d      $f2, $f2, $f10
/* 4FB04 8004EF04 3C01800D */  lui        $at, %hi(D_800D3F80)
/* 4FB08 8004EF08 D4203F80 */  ldc1       $f0, %lo(D_800D3F80)($at)
/* 4FB0C 8004EF0C 46203180 */  add.d      $f6, $f6, $f0
/* 4FB10 8004EF10 46202100 */  add.d      $f4, $f4, $f0
/* 4FB14 8004EF14 3C01802B */  lui        $at, %hi(D_802AD9A8)
/* 4FB18 8004EF18 F422D9A8 */  sdc1       $f2, %lo(D_802AD9A8)($at)
/* 4FB1C 8004EF1C 4620300D */  trunc.w.d  $f0, $f6
/* 4FB20 8004EF20 3C01802B */  lui        $at, %hi(D_802AD9E0)
/* 4FB24 8004EF24 E420D9E0 */  swc1       $f0, %lo(D_802AD9E0)($at)
/* 4FB28 8004EF28 4620200D */  trunc.w.d  $f0, $f4
/* 4FB2C 8004EF2C 3C01802B */  lui        $at, %hi(D_802AD9E4)
/* 4FB30 8004EF30 08013C1F */  j          .L8004F07C
/* 4FB34 8004EF34 E420D9E4 */   swc1      $f0, %lo(D_802AD9E4)($at)
.L8004EF38:
/* 4FB38 8004EF38 3C01802F */  lui        $at, %hi(D_802EF738)
/* 4FB3C 8004EF3C D424F738 */  ldc1       $f4, %lo(D_802EF738)($at)
/* 4FB40 8004EF40 3C01800C */  lui        $at, %hi(D_800C52A4)
/* 4FB44 8004EF44 C42052A4 */  lwc1       $f0, %lo(D_800C52A4)($at)
/* 4FB48 8004EF48 46800021 */  cvt.d.w    $f0, $f0
/* 4FB4C 8004EF4C 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4FB50 8004EF50 8042F798 */  lb         $v0, %lo(gPlayers_turn)($v0)
/* 4FB54 8004EF54 46202102 */  mul.d      $f4, $f4, $f0
/* 4FB58 8004EF58 000210C0 */  sll        $v0, $v0, 3
/* 4FB5C 8004EF5C 00621021 */  addu       $v0, $v1, $v0
/* 4FB60 8004EF60 D440FFB8 */  ldc1       $f0, -0x48($v0)
.L8004EF64:
/* 4FB64 8004EF64 3C01802F */  lui        $at, %hi(D_802EF740)
/* 4FB68 8004EF68 D422F740 */  ldc1       $f2, %lo(D_802EF740)($at)
/* 4FB6C 8004EF6C 3C01800C */  lui        $at, %hi(D_800C52A8)
/* 4FB70 8004EF70 C42652A8 */  lwc1       $f6, %lo(D_800C52A8)($at)
/* 4FB74 8004EF74 468031A1 */  cvt.d.w    $f6, $f6
/* 4FB78 8004EF78 46200007 */  neg.d      $f0, $f0
/* 4FB7C 8004EF7C 46261082 */  mul.d      $f2, $f2, $f6
/* 4FB80 8004EF80 462A0001 */  sub.d      $f0, $f0, $f10
/* 4FB84 8004EF84 3C01800D */  lui        $at, %hi(D_800D3F88)
/* 4FB88 8004EF88 D4283F88 */  ldc1       $f8, %lo(D_800D3F88)($at)
/* 4FB8C 8004EF8C 46282100 */  add.d      $f4, $f4, $f8
/* 4FB90 8004EF90 46281080 */  add.d      $f2, $f2, $f8
/* 4FB94 8004EF94 3C01802B */  lui        $at, %hi(D_802AD9A8)
/* 4FB98 8004EF98 F420D9A8 */  sdc1       $f0, %lo(D_802AD9A8)($at)
/* 4FB9C 8004EF9C 4620200D */  trunc.w.d  $f0, $f4
/* 4FBA0 8004EFA0 3C01802B */  lui        $at, %hi(D_802AD9E0)
/* 4FBA4 8004EFA4 E420D9E0 */  swc1       $f0, %lo(D_802AD9E0)($at)
/* 4FBA8 8004EFA8 4620100D */  trunc.w.d  $f0, $f2
/* 4FBAC 8004EFAC 3C01802B */  lui        $at, %hi(D_802AD9E4)
/* 4FBB0 8004EFB0 08013C1F */  j          .L8004F07C
/* 4FBB4 8004EFB4 E420D9E4 */   swc1      $f0, %lo(D_802AD9E4)($at)
.L8004EFB8:
/* 4FBB8 8004EFB8 0C001081 */  jal        func_80004204
/* 4FBBC 8004EFBC 00000000 */   nop
/* 4FBC0 8004EFC0 90420002 */  lbu        $v0, 0x2($v0)
/* 4FBC4 8004EFC4 1440000B */  bnez       $v0, .L8004EFF4
/* 4FBC8 8004EFC8 00000000 */   nop
/* 4FBCC 8004EFCC 3C02800C */  lui        $v0, %hi(D_800C4800)
/* 4FBD0 8004EFD0 8C424800 */  lw         $v0, %lo(D_800C4800)($v0)
/* 4FBD4 8004EFD4 10400007 */  beqz       $v0, .L8004EFF4
/* 4FBD8 8004EFD8 00000000 */   nop
/* 4FBDC 8004EFDC 3C01800C */  lui        $at, %hi(D_800C52D8)
/* 4FBE0 8004EFE0 D42052D8 */  ldc1       $f0, %lo(D_800C52D8)($at)
/* 4FBE4 8004EFE4 3C01802B */  lui        $at, %hi(D_802AD9A0)
/* 4FBE8 8004EFE8 D422D9A0 */  ldc1       $f2, %lo(D_802AD9A0)($at)
/* 4FBEC 8004EFEC 08013C07 */  j          .L8004F01C
/* 4FBF0 8004EFF0 46220001 */   sub.d     $f0, $f0, $f2
.L8004EFF4:
/* 4FBF4 8004EFF4 3C03802F */  lui        $v1, %hi(gPlayers_turn)
/* 4FBF8 8004EFF8 2463F798 */  addiu      $v1, $v1, %lo(gPlayers_turn)
/* 4FBFC 8004EFFC 80620000 */  lb         $v0, 0x0($v1)
/* 4FC00 8004F000 000210C0 */  sll        $v0, $v0, 3
/* 4FC04 8004F004 00621821 */  addu       $v1, $v1, $v0
/* 4FC08 8004F008 D460FFD0 */  ldc1       $f0, -0x30($v1)
/* 4FC0C 8004F00C 3C01802B */  lui        $at, %hi(D_802AD9A0)
/* 4FC10 8004F010 D422D9A0 */  ldc1       $f2, %lo(D_802AD9A0)($at)
/* 4FC14 8004F014 46200007 */  neg.d      $f0, $f0
/* 4FC18 8004F018 46220001 */  sub.d      $f0, $f0, $f2
.L8004F01C:
/* 4FC1C 8004F01C 3C01802B */  lui        $at, %hi(D_802AD9A8)
/* 4FC20 8004F020 F420D9A8 */  sdc1       $f0, %lo(D_802AD9A8)($at)
/* 4FC24 8004F024 3C01802F */  lui        $at, %hi(D_802EF760)
/* 4FC28 8004F028 D424F760 */  ldc1       $f4, %lo(D_802EF760)($at)
/* 4FC2C 8004F02C 3C01800C */  lui        $at, %hi(D_800C52A8)
/* 4FC30 8004F030 C42052A8 */  lwc1       $f0, %lo(D_800C52A8)($at)
/* 4FC34 8004F034 46800021 */  cvt.d.w    $f0, $f0
/* 4FC38 8004F038 46202102 */  mul.d      $f4, $f4, $f0
/* 4FC3C 8004F03C 3C01802F */  lui        $at, %hi(D_802EF758)
/* 4FC40 8004F040 D422F758 */  ldc1       $f2, %lo(D_802EF758)($at)
/* 4FC44 8004F044 3C01800C */  lui        $at, %hi(D_800C52A4)
/* 4FC48 8004F048 C42052A4 */  lwc1       $f0, %lo(D_800C52A4)($at)
/* 4FC4C 8004F04C 46800021 */  cvt.d.w    $f0, $f0
/* 4FC50 8004F050 46201082 */  mul.d      $f2, $f2, $f0
/* 4FC54 8004F054 3C01800D */  lui        $at, %hi(D_800D3F90)
/* 4FC58 8004F058 D4203F90 */  ldc1       $f0, %lo(D_800D3F90)($at)
/* 4FC5C 8004F05C 46202100 */  add.d      $f4, $f4, $f0
/* 4FC60 8004F060 46201080 */  add.d      $f2, $f2, $f0
/* 4FC64 8004F064 4620200D */  trunc.w.d  $f0, $f4
/* 4FC68 8004F068 3C01802B */  lui        $at, %hi(D_802AD9E4)
/* 4FC6C 8004F06C E420D9E4 */  swc1       $f0, %lo(D_802AD9E4)($at)
/* 4FC70 8004F070 4620100D */  trunc.w.d  $f0, $f2
/* 4FC74 8004F074 3C01802B */  lui        $at, %hi(D_802AD9E0)
/* 4FC78 8004F078 E420D9E0 */  swc1       $f0, %lo(D_802AD9E0)($at)
.L8004F07C:
/* 4FC7C 8004F07C 3C02800C */  lui        $v0, %hi(D_800C4804)
/* 4FC80 8004F080 8C424804 */  lw         $v0, %lo(D_800C4804)($v0)
/* 4FC84 8004F084 10400005 */  beqz       $v0, .L8004F09C
/* 4FC88 8004F088 00000000 */   nop
/* 4FC8C 8004F08C 3C01802B */  lui        $at, %hi(D_802AD9A8)
/* 4FC90 8004F090 AC20D9A8 */  sw         $zero, %lo(D_802AD9A8)($at)
/* 4FC94 8004F094 3C01802B */  lui        $at, %hi(D_802AD9AC)
/* 4FC98 8004F098 AC20D9AC */  sw         $zero, %lo(D_802AD9AC)($at)
.L8004F09C:
/* 4FC9C 8004F09C 3C02802B */  lui        $v0, %hi(D_802AD9E0)
/* 4FCA0 8004F0A0 8C42D9E0 */  lw         $v0, %lo(D_802AD9E0)($v0)
/* 4FCA4 8004F0A4 3C03800C */  lui        $v1, %hi(D_800C52AC)
/* 4FCA8 8004F0A8 8C6352AC */  lw         $v1, %lo(D_800C52AC)($v1)
/* 4FCAC 8004F0AC 3C048031 */  lui        $a0, %hi(D_80312A10)
/* 4FCB0 8004F0B0 24842A10 */  addiu      $a0, $a0, %lo(D_80312A10)
/* 4FCB4 8004F0B4 3C08802B */  lui        $t0, %hi(D_802AD8C8)
/* 4FCB8 8004F0B8 2508D8C8 */  addiu      $t0, $t0, %lo(D_802AD8C8)
/* 4FCBC 8004F0BC 8C850000 */  lw         $a1, 0x0($a0)
/* 4FCC0 8004F0C0 8C860004 */  lw         $a2, 0x4($a0)
/* 4FCC4 8004F0C4 8C870008 */  lw         $a3, 0x8($a0)
/* 4FCC8 8004F0C8 AD050000 */  sw         $a1, 0x0($t0)
/* 4FCCC 8004F0CC AD060004 */  sw         $a2, 0x4($t0)
/* 4FCD0 8004F0D0 AD070008 */  sw         $a3, 0x8($t0)
/* 4FCD4 8004F0D4 8C85000C */  lw         $a1, 0xC($a0)
/* 4FCD8 8004F0D8 8C860010 */  lw         $a2, 0x10($a0)
/* 4FCDC 8004F0DC 8C870014 */  lw         $a3, 0x14($a0)
/* 4FCE0 8004F0E0 AD05000C */  sw         $a1, 0xC($t0)
/* 4FCE4 8004F0E4 AD060010 */  sw         $a2, 0x10($t0)
/* 4FCE8 8004F0E8 AD070014 */  sw         $a3, 0x14($t0)
/* 4FCEC 8004F0EC 3C01803F */  lui        $at, %hi(D_803EE580)
/* 4FCF0 8004F0F0 D424E580 */  ldc1       $f4, %lo(D_803EE580)($at)
/* 4FCF4 8004F0F4 3C01803F */  lui        $at, %hi(D_803EE588)
/* 4FCF8 8004F0F8 D42CE588 */  ldc1       $f12, %lo(D_803EE588)($at)
/* 4FCFC 8004F0FC 3C018031 */  lui        $at, %hi(D_80312A18)
/* 4FD00 8004F100 D4202A18 */  ldc1       $f0, %lo(D_80312A18)($at)
/* 4FD04 8004F104 D4860000 */  ldc1       $f6, 0x0($a0)
/* 4FD08 8004F108 3C01803F */  lui        $at, %hi(D_803EE590)
/* 4FD0C 8004F10C D422E590 */  ldc1       $f2, %lo(D_803EE590)($at)
/* 4FD10 8004F110 00431023 */  subu       $v0, $v0, $v1
/* 4FD14 8004F114 46206301 */  sub.d      $f12, $f12, $f0
/* 4FD18 8004F118 3C01802B */  lui        $at, %hi(D_802AD9C0)
/* 4FD1C 8004F11C AC22D9C0 */  sw         $v0, %lo(D_802AD9C0)($at)
/* 4FD20 8004F120 3C02802B */  lui        $v0, %hi(D_802AD9E4)
/* 4FD24 8004F124 8C42D9E4 */  lw         $v0, %lo(D_802AD9E4)($v0)
/* 4FD28 8004F128 3C03800C */  lui        $v1, %hi(D_800C52B0)
/* 4FD2C 8004F12C 8C6352B0 */  lw         $v1, %lo(D_800C52B0)($v1)
/* 4FD30 8004F130 46262101 */  sub.d      $f4, $f4, $f6
/* 4FD34 8004F134 3C018031 */  lui        $at, %hi(D_80312A20)
/* 4FD38 8004F138 D4202A20 */  ldc1       $f0, %lo(D_80312A20)($at)
/* 4FD3C 8004F13C 3C10802B */  lui        $s0, %hi(D_802AD8E0)
/* 4FD40 8004F140 2610D8E0 */  addiu      $s0, $s0, %lo(D_802AD8E0)
/* 4FD44 8004F144 00431023 */  subu       $v0, $v0, $v1
/* 4FD48 8004F148 46201081 */  sub.d      $f2, $f2, $f0
/* 4FD4C 8004F14C 3C01802B */  lui        $at, %hi(D_802AD9C4)
/* 4FD50 8004F150 AC22D9C4 */  sw         $v0, %lo(D_802AD9C4)($at)
/* 4FD54 8004F154 F6040000 */  sdc1       $f4, 0x0($s0)
/* 4FD58 8004F158 3C01802B */  lui        $at, %hi(D_802AD8E8)
/* 4FD5C 8004F15C F42CD8E8 */  sdc1       $f12, %lo(D_802AD8E8)($at)
/* 4FD60 8004F160 3C01802B */  lui        $at, %hi(D_802AD8F0)
/* 4FD64 8004F164 0C013B63 */  jal        func_8004ED8C
/* 4FD68 8004F168 F422D8F0 */   sdc1      $f2, %lo(D_802AD8F0)($at)
/* 4FD6C 8004F16C 10400022 */  beqz       $v0, .L8004F1F8
/* 4FD70 8004F170 00000000 */   nop
/* 4FD74 8004F174 0C013B63 */  jal        func_8004ED8C
/* 4FD78 8004F178 D60C0000 */   ldc1      $f12, 0x0($s0)
/* 4FD7C 8004F17C 1040001E */  beqz       $v0, .L8004F1F8
/* 4FD80 8004F180 00000000 */   nop
/* 4FD84 8004F184 3C01802B */  lui        $at, %hi(D_802AD8F0)
/* 4FD88 8004F188 0C013B63 */  jal        func_8004ED8C
/* 4FD8C 8004F18C D42CD8F0 */   ldc1      $f12, %lo(D_802AD8F0)($at)
/* 4FD90 8004F190 10400019 */  beqz       $v0, .L8004F1F8
/* 4FD94 8004F194 00000000 */   nop
/* 4FD98 8004F198 3C02800C */  lui        $v0, %hi(D_800C52B0)
/* 4FD9C 8004F19C 8C4252B0 */  lw         $v0, %lo(D_800C52B0)($v0)
/* 4FDA0 8004F1A0 3C03802B */  lui        $v1, %hi(D_802AD9E4)
/* 4FDA4 8004F1A4 8C63D9E4 */  lw         $v1, %lo(D_802AD9E4)($v1)
/* 4FDA8 8004F1A8 00431023 */  subu       $v0, $v0, $v1
/* 4FDAC 8004F1AC 000210C3 */  sra        $v0, $v0, 3
/* 4FDB0 8004F1B0 44826000 */  mtc1       $v0, $f12
/* 4FDB4 8004F1B4 00000000 */  nop
/* 4FDB8 8004F1B8 0C013B63 */  jal        func_8004ED8C
/* 4FDBC 8004F1BC 46806321 */   cvt.d.w   $f12, $f12
/* 4FDC0 8004F1C0 1040000D */  beqz       $v0, .L8004F1F8
/* 4FDC4 8004F1C4 00000000 */   nop
/* 4FDC8 8004F1C8 3C02800C */  lui        $v0, %hi(D_800C52AC)
/* 4FDCC 8004F1CC 8C4252AC */  lw         $v0, %lo(D_800C52AC)($v0)
/* 4FDD0 8004F1D0 3C03802B */  lui        $v1, %hi(D_802AD9E0)
/* 4FDD4 8004F1D4 8C63D9E0 */  lw         $v1, %lo(D_802AD9E0)($v1)
/* 4FDD8 8004F1D8 00431023 */  subu       $v0, $v0, $v1
/* 4FDDC 8004F1DC 000210C3 */  sra        $v0, $v0, 3
/* 4FDE0 8004F1E0 44826000 */  mtc1       $v0, $f12
/* 4FDE4 8004F1E4 00000000 */  nop
/* 4FDE8 8004F1E8 0C013B63 */  jal        func_8004ED8C
/* 4FDEC 8004F1EC 46806321 */   cvt.d.w   $f12, $f12
/* 4FDF0 8004F1F0 1440000F */  bnez       $v0, .L8004F230
/* 4FDF4 8004F1F4 24020001 */   addiu     $v0, $zero, 0x1
.L8004F1F8:
/* 4FDF8 8004F1F8 3C02800C */  lui        $v0, %hi(D_800C52AC)
/* 4FDFC 8004F1FC 8C4252AC */  lw         $v0, %lo(D_800C52AC)($v0)
/* 4FE00 8004F200 3C03800C */  lui        $v1, %hi(D_800C52B0)
/* 4FE04 8004F204 8C6352B0 */  lw         $v1, %lo(D_800C52B0)($v1)
/* 4FE08 8004F208 3C01802B */  lui        $at, %hi(D_802AD9E8)
/* 4FE0C 8004F20C A020D9E8 */  sb         $zero, %lo(D_802AD9E8)($at)
/* 4FE10 8004F210 3C01802B */  lui        $at, %hi(D_802AD9C8)
/* 4FE14 8004F214 AC22D9C8 */  sw         $v0, %lo(D_802AD9C8)($at)
/* 4FE18 8004F218 3C01802B */  lui        $at, %hi(D_802AD9CC)
/* 4FE1C 8004F21C 0C018F7E */  jal        func_80063DF8
/* 4FE20 8004F220 AC23D9CC */   sw        $v1, %lo(D_802AD9CC)($at)
/* 4FE24 8004F224 3C01802B */  lui        $at, %hi(D_802AD9D0)
/* 4FE28 8004F228 AC22D9D0 */  sw         $v0, %lo(D_802AD9D0)($at)
/* 4FE2C 8004F22C 00001021 */  addu       $v0, $zero, $zero
.L8004F230:
/* 4FE30 8004F230 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4FE34 8004F234 8FB00010 */  lw         $s0, 0x10($sp)
/* 4FE38 8004F238 03E00008 */  jr         $ra
/* 4FE3C 8004F23C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004F240
/* 4FE40 8004F240 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4FE44 8004F244 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4FE48 8004F248 0C018F7E */  jal        func_80063DF8
/* 4FE4C 8004F24C F7B40018 */   sdc1      $f20, 0x18($sp)
/* 4FE50 8004F250 3C03802B */  lui        $v1, %hi(D_802AD9D0)
/* 4FE54 8004F254 8C63D9D0 */  lw         $v1, %lo(D_802AD9D0)($v1)
/* 4FE58 8004F258 00431023 */  subu       $v0, $v0, $v1
/* 4FE5C 8004F25C 44821000 */  mtc1       $v0, $f2
/* 4FE60 8004F260 00000000 */  nop
/* 4FE64 8004F264 04410004 */  bgez       $v0, .L8004F278
/* 4FE68 8004F268 468010A1 */   cvt.d.w   $f2, $f2
/* 4FE6C 8004F26C 3C01800D */  lui        $at, %hi(D_800D3F98)
/* 4FE70 8004F270 D4203F98 */  ldc1       $f0, %lo(D_800D3F98)($at)
/* 4FE74 8004F274 46201080 */  add.d      $f2, $f2, $f0
.L8004F278:
/* 4FE78 8004F278 3C01800D */  lui        $at, %hi(D_800D3FA0)
/* 4FE7C 8004F27C D4203FA0 */  ldc1       $f0, %lo(D_800D3FA0)($at)
/* 4FE80 8004F280 46201002 */  mul.d      $f0, $f2, $f0
/* 4FE84 8004F284 3C01800D */  lui        $at, %hi(D_800D3FA8)
/* 4FE88 8004F288 D4223FA8 */  ldc1       $f2, %lo(D_800D3FA8)($at)
/* 4FE8C 8004F28C 3C02803F */  lui        $v0, %hi(D_803ED064)
/* 4FE90 8004F290 8C42D064 */  lw         $v0, %lo(D_803ED064)($v0)
/* 4FE94 8004F294 1040000E */  beqz       $v0, .L8004F2D0
/* 4FE98 8004F298 46220103 */   div.d     $f4, $f0, $f2
/* 4FE9C 8004F29C 3C01800D */  lui        $at, %hi(D_800D3FB0)
/* 4FEA0 8004F2A0 D4203FB0 */  ldc1       $f0, %lo(D_800D3FB0)($at)
/* 4FEA4 8004F2A4 4624003E */  c.le.d     $f0, $f4
/* 4FEA8 8004F2A8 00000000 */  nop
/* 4FEAC 8004F2AC 4501000F */  bc1t       .L8004F2EC
/* 4FEB0 8004F2B0 00000000 */   nop
/* 4FEB4 8004F2B4 3C01800D */  lui        $at, %hi(D_800D3FB8)
/* 4FEB8 8004F2B8 D4203FB8 */  ldc1       $f0, %lo(D_800D3FB8)($at)
/* 4FEBC 8004F2BC 46202002 */  mul.d      $f0, $f4, $f0
/* 4FEC0 8004F2C0 3C01800D */  lui        $at, %hi(D_800D3FC0)
/* 4FEC4 8004F2C4 D4223FC0 */  ldc1       $f2, %lo(D_800D3FC0)($at)
/* 4FEC8 8004F2C8 08013CC1 */  j          .L8004F304
/* 4FECC 8004F2CC 46201101 */   sub.d     $f4, $f2, $f0
.L8004F2D0:
/* 4FED0 8004F2D0 3C01800D */  lui        $at, %hi(D_800D3FC8)
/* 4FED4 8004F2D4 D4223FC8 */  ldc1       $f2, %lo(D_800D3FC8)($at)
/* 4FED8 8004F2D8 4624103E */  c.le.d     $f2, $f4
/* 4FEDC 8004F2DC 00000000 */  nop
/* 4FEE0 8004F2E0 00000000 */  nop
/* 4FEE4 8004F2E4 45020007 */  bc1fl      .L8004F304
/* 4FEE8 8004F2E8 46241101 */   sub.d     $f4, $f2, $f4
.L8004F2EC:
/* 4FEEC 8004F2EC 3C01800D */  lui        $at, %hi(D_800D3FD0)
/* 4FEF0 8004F2F0 D4343FD0 */  ldc1       $f20, %lo(D_800D3FD0)($at)
/* 4FEF4 8004F2F4 24020001 */  addiu      $v0, $zero, 0x1
/* 4FEF8 8004F2F8 3C01802B */  lui        $at, %hi(D_802AD9E8)
/* 4FEFC 8004F2FC 08013CC4 */  j          .L8004F310
/* 4FF00 8004F300 A022D9E8 */   sb        $v0, %lo(D_802AD9E8)($at)
.L8004F304:
/* 4FF04 8004F304 00000000 */  nop
/* 4FF08 8004F308 46242002 */  mul.d      $f0, $f4, $f4
/* 4FF0C 8004F30C 46201501 */  sub.d      $f20, $f2, $f0
.L8004F310:
/* 4FF10 8004F310 3C01802B */  lui        $at, %hi(D_802AD9C0)
/* 4FF14 8004F314 C424D9C0 */  lwc1       $f4, %lo(D_802AD9C0)($at)
/* 4FF18 8004F318 46802121 */  cvt.d.w    $f4, $f4
/* 4FF1C 8004F31C 46342102 */  mul.d      $f4, $f4, $f20
/* 4FF20 8004F320 3C01802B */  lui        $at, %hi(D_802AD8E0)
/* 4FF24 8004F324 D426D8E0 */  ldc1       $f6, %lo(D_802AD8E0)($at)
/* 4FF28 8004F328 46343182 */  mul.d      $f6, $f6, $f20
/* 4FF2C 8004F32C 3C01802B */  lui        $at, %hi(D_802AD8E8)
/* 4FF30 8004F330 D430D8E8 */  ldc1       $f16, %lo(D_802AD8E8)($at)
/* 4FF34 8004F334 46348402 */  mul.d      $f16, $f16, $f20
/* 4FF38 8004F338 3C01802B */  lui        $at, %hi(D_802AD9A8)
/* 4FF3C 8004F33C D420D9A8 */  ldc1       $f0, %lo(D_802AD9A8)($at)
/* 4FF40 8004F340 46340002 */  mul.d      $f0, $f0, $f20
/* 4FF44 8004F344 3C01802B */  lui        $at, %hi(D_802AD8F0)
/* 4FF48 8004F348 D432D8F0 */  ldc1       $f18, %lo(D_802AD8F0)($at)
/* 4FF4C 8004F34C 46349482 */  mul.d      $f18, $f18, $f20
/* 4FF50 8004F350 3C01802B */  lui        $at, %hi(D_802AD9A0)
/* 4FF54 8004F354 D422D9A0 */  ldc1       $f2, %lo(D_802AD9A0)($at)
/* 4FF58 8004F358 46201080 */  add.d      $f2, $f2, $f0
/* 4FF5C 8004F35C 3C01802B */  lui        $at, %hi(D_802AD9C4)
/* 4FF60 8004F360 C420D9C4 */  lwc1       $f0, %lo(D_802AD9C4)($at)
/* 4FF64 8004F364 46800021 */  cvt.d.w    $f0, $f0
/* 4FF68 8004F368 46340002 */  mul.d      $f0, $f0, $f20
/* 4FF6C 8004F36C 3C01803F */  lui        $at, %hi(D_803F6918)
/* 4FF70 8004F370 D42E6918 */  ldc1       $f14, %lo(D_803F6918)($at)
/* 4FF74 8004F374 3C01803F */  lui        $at, %hi(D_803F6920)
/* 4FF78 8004F378 D42C6920 */  ldc1       $f12, %lo(D_803F6920)($at)
/* 4FF7C 8004F37C 3C01802B */  lui        $at, %hi(D_802AD8C8)
/* 4FF80 8004F380 D42AD8C8 */  ldc1       $f10, %lo(D_802AD8C8)($at)
/* 4FF84 8004F384 24020001 */  addiu      $v0, $zero, 0x1
/* 4FF88 8004F388 3C01802C */  lui        $at, %hi(D_802C7978)
/* 4FF8C 8004F38C A0227978 */  sb         $v0, %lo(D_802C7978)($at)
/* 4FF90 8004F390 3C02802B */  lui        $v0, %hi(D_802AD9E8)
/* 4FF94 8004F394 8042D9E8 */  lb         $v0, %lo(D_802AD9E8)($v0)
/* 4FF98 8004F398 462E1382 */  mul.d      $f14, $f2, $f14
/* 4FF9C 8004F39C 3C01802B */  lui        $at, %hi(D_802AD8D8)
/* 4FFA0 8004F3A0 D428D8D8 */  ldc1       $f8, %lo(D_802AD8D8)($at)
/* 4FFA4 8004F3A4 3C04802B */  lui        $a0, %hi(D_802AD9C8)
/* 4FFA8 8004F3A8 8C84D9C8 */  lw         $a0, %lo(D_802AD9C8)($a0)
/* 4FFAC 8004F3AC 46265280 */  add.d      $f10, $f10, $f6
/* 4FFB0 8004F3B0 24030001 */  addiu      $v1, $zero, 0x1
/* 4FFB4 8004F3B4 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 4FFB8 8004F3B8 AC2352A0 */  sw         $v1, %lo(D_800C52A0)($at)
/* 4FFBC 8004F3BC 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 4FFC0 8004F3C0 AC2306E8 */  sw         $v1, %lo(D_802F06E8)($at)
/* 4FFC4 8004F3C4 46324200 */  add.d      $f8, $f8, $f18
/* 4FFC8 8004F3C8 462C1302 */  mul.d      $f12, $f2, $f12
/* 4FFCC 8004F3CC 3C01802B */  lui        $at, %hi(D_802AD8D0)
/* 4FFD0 8004F3D0 D426D8D0 */  ldc1       $f6, %lo(D_802AD8D0)($at)
/* 4FFD4 8004F3D4 2C420001 */  sltiu      $v0, $v0, 0x1
/* 4FFD8 8004F3D8 4620248D */  trunc.w.d  $f18, $f4
/* 4FFDC 8004F3DC 44039000 */  mfc1       $v1, $f18
/* 4FFE0 8004F3E0 46303180 */  add.d      $f6, $f6, $f16
/* 4FFE4 8004F3E4 3C01803F */  lui        $at, %hi(D_803F6928)
/* 4FFE8 8004F3E8 D4306928 */  ldc1       $f16, %lo(D_803F6928)($at)
/* 4FFEC 8004F3EC 00832021 */  addu       $a0, $a0, $v1
/* 4FFF0 8004F3F0 3C05802B */  lui        $a1, %hi(D_802AD9CC)
/* 4FFF4 8004F3F4 8CA5D9CC */  lw         $a1, %lo(D_802AD9CC)($a1)
/* 4FFF8 8004F3F8 46301082 */  mul.d      $f2, $f2, $f16
/* 4FFFC 8004F3FC 462E5380 */  add.d      $f14, $f10, $f14
/* 50000 8004F400 3C01800C */  lui        $at, %hi(D_800C52AC)
/* 50004 8004F404 AC2452AC */  sw         $a0, %lo(D_800C52AC)($at)
/* 50008 8004F408 3C018031 */  lui        $at, %hi(D_80312A10)
/* 5000C 8004F40C F42A2A10 */  sdc1       $f10, %lo(D_80312A10)($at)
/* 50010 8004F410 3C018031 */  lui        $at, %hi(D_80312A20)
/* 50014 8004F414 F4282A20 */  sdc1       $f8, %lo(D_80312A20)($at)
/* 50018 8004F418 462C3300 */  add.d      $f12, $f6, $f12
/* 5001C 8004F41C 3C018031 */  lui        $at, %hi(D_80312A18)
/* 50020 8004F420 F4262A18 */  sdc1       $f6, %lo(D_80312A18)($at)
/* 50024 8004F424 4620010D */  trunc.w.d  $f4, $f0
/* 50028 8004F428 44032000 */  mfc1       $v1, $f4
/* 5002C 8004F42C 00000000 */  nop
/* 50030 8004F430 00A32821 */  addu       $a1, $a1, $v1
/* 50034 8004F434 46224080 */  add.d      $f2, $f8, $f2
/* 50038 8004F438 3C01800C */  lui        $at, %hi(D_800C52B0)
/* 5003C 8004F43C AC2552B0 */  sw         $a1, %lo(D_800C52B0)($at)
/* 50040 8004F440 3C01802F */  lui        $at, %hi(D_802EF138)
/* 50044 8004F444 F42EF138 */  sdc1       $f14, %lo(D_802EF138)($at)
/* 50048 8004F448 3C01802F */  lui        $at, %hi(D_802EF140)
/* 5004C 8004F44C F42CF140 */  sdc1       $f12, %lo(D_802EF140)($at)
/* 50050 8004F450 3C01802F */  lui        $at, %hi(D_802EF148)
/* 50054 8004F454 F422F148 */  sdc1       $f2, %lo(D_802EF148)($at)
/* 50058 8004F458 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5005C 8004F45C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 50060 8004F460 03E00008 */  jr         $ra
/* 50064 8004F464 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004F468
/* 50068 8004F468 3C01802B */  lui        $at, %hi(D_802AD9A0)
/* 5006C 8004F46C D422D9A0 */  ldc1       $f2, %lo(D_802AD9A0)($at)
/* 50070 8004F470 3C01802B */  lui        $at, %hi(D_802AD9A8)
/* 50074 8004F474 D420D9A8 */  ldc1       $f0, %lo(D_802AD9A8)($at)
/* 50078 8004F478 46201080 */  add.d      $f2, $f2, $f0
/* 5007C 8004F47C 3C01803F */  lui        $at, %hi(D_803F6918)
/* 50080 8004F480 D4206918 */  ldc1       $f0, %lo(D_803F6918)($at)
/* 50084 8004F484 46201002 */  mul.d      $f0, $f2, $f0
/* 50088 8004F488 3C01803F */  lui        $at, %hi(D_803F6920)
/* 5008C 8004F48C D4266920 */  ldc1       $f6, %lo(D_803F6920)($at)
/* 50090 8004F490 46261182 */  mul.d      $f6, $f2, $f6
/* 50094 8004F494 3C038031 */  lui        $v1, %hi(D_80312A10)
/* 50098 8004F498 24632A10 */  addiu      $v1, $v1, %lo(D_80312A10)
/* 5009C 8004F49C 3C06802F */  lui        $a2, %hi(D_802EF670)
/* 500A0 8004F4A0 24C6F670 */  addiu      $a2, $a2, %lo(D_802EF670)
/* 500A4 8004F4A4 8CC20000 */  lw         $v0, 0x0($a2)
/* 500A8 8004F4A8 8CC40004 */  lw         $a0, 0x4($a2)
/* 500AC 8004F4AC 8CC50008 */  lw         $a1, 0x8($a2)
/* 500B0 8004F4B0 AC620000 */  sw         $v0, 0x0($v1)
/* 500B4 8004F4B4 AC640004 */  sw         $a0, 0x4($v1)
/* 500B8 8004F4B8 AC650008 */  sw         $a1, 0x8($v1)
/* 500BC 8004F4BC 8CC2000C */  lw         $v0, 0xC($a2)
/* 500C0 8004F4C0 8CC40010 */  lw         $a0, 0x10($a2)
/* 500C4 8004F4C4 8CC50014 */  lw         $a1, 0x14($a2)
/* 500C8 8004F4C8 AC62000C */  sw         $v0, 0xC($v1)
/* 500CC 8004F4CC AC640010 */  sw         $a0, 0x10($v1)
/* 500D0 8004F4D0 AC650014 */  sw         $a1, 0x14($v1)
/* 500D4 8004F4D4 D4680000 */  ldc1       $f8, 0x0($v1)
/* 500D8 8004F4D8 3C01803F */  lui        $at, %hi(D_803F6928)
/* 500DC 8004F4DC D4246928 */  ldc1       $f4, %lo(D_803F6928)($at)
/* 500E0 8004F4E0 3C04802B */  lui        $a0, %hi(D_802AD9E0)
/* 500E4 8004F4E4 8C84D9E0 */  lw         $a0, %lo(D_802AD9E0)($a0)
/* 500E8 8004F4E8 3C03802B */  lui        $v1, %hi(D_802AD9E4)
/* 500EC 8004F4EC 8C63D9E4 */  lw         $v1, %lo(D_802AD9E4)($v1)
/* 500F0 8004F4F0 46241082 */  mul.d      $f2, $f2, $f4
/* 500F4 8004F4F4 3C018031 */  lui        $at, %hi(D_80312A18)
/* 500F8 8004F4F8 D4242A18 */  ldc1       $f4, %lo(D_80312A18)($at)
/* 500FC 8004F4FC 46204200 */  add.d      $f8, $f8, $f0
/* 50100 8004F500 24020001 */  addiu      $v0, $zero, 0x1
/* 50104 8004F504 3C01802C */  lui        $at, %hi(D_802C7978)
/* 50108 8004F508 A0227978 */  sb         $v0, %lo(D_802C7978)($at)
/* 5010C 8004F50C 3C018031 */  lui        $at, %hi(D_80312A20)
/* 50110 8004F510 D4202A20 */  ldc1       $f0, %lo(D_80312A20)($at)
/* 50114 8004F514 46262100 */  add.d      $f4, $f4, $f6
/* 50118 8004F518 24020001 */  addiu      $v0, $zero, 0x1
/* 5011C 8004F51C 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 50120 8004F520 AC2252A0 */  sw         $v0, %lo(D_800C52A0)($at)
/* 50124 8004F524 3C01800C */  lui        $at, %hi(D_800C52AC)
/* 50128 8004F528 AC2452AC */  sw         $a0, %lo(D_800C52AC)($at)
/* 5012C 8004F52C 46220000 */  add.d      $f0, $f0, $f2
/* 50130 8004F530 3C01800C */  lui        $at, %hi(D_800C52B0)
/* 50134 8004F534 AC2352B0 */  sw         $v1, %lo(D_800C52B0)($at)
/* 50138 8004F538 3C01802F */  lui        $at, %hi(D_802EF138)
/* 5013C 8004F53C F428F138 */  sdc1       $f8, %lo(D_802EF138)($at)
/* 50140 8004F540 3C01802F */  lui        $at, %hi(D_802EF140)
/* 50144 8004F544 F424F140 */  sdc1       $f4, %lo(D_802EF140)($at)
/* 50148 8004F548 3C01802F */  lui        $at, %hi(D_802EF148)
/* 5014C 8004F54C 03E00008 */  jr         $ra
/* 50150 8004F550 F420F148 */   sdc1      $f0, %lo(D_802EF148)($at)

glabel func_8004F554
/* 50154 8004F554 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50158 8004F558 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5015C 8004F55C 1080000A */  beqz       $a0, .L8004F588
/* 50160 8004F560 AFB00010 */   sw        $s0, 0x10($sp)
/* 50164 8004F564 0C013B6E */  jal        func_8004EDB8
/* 50168 8004F568 00000000 */   nop
/* 5016C 8004F56C 10400004 */  beqz       $v0, .L8004F580
/* 50170 8004F570 24020001 */   addiu     $v0, $zero, 0x1
/* 50174 8004F574 3C01800C */  lui        $at, %hi(D_800C4818)
/* 50178 8004F578 08013D62 */  j          .L8004F588
/* 5017C 8004F57C AC224818 */   sw        $v0, %lo(D_800C4818)($at)
.L8004F580:
/* 50180 8004F580 3C01800C */  lui        $at, %hi(D_800C4818)
/* 50184 8004F584 AC204818 */  sw         $zero, %lo(D_800C4818)($at)
.L8004F588:
/* 50188 8004F588 3C10800C */  lui        $s0, %hi(D_800C4818)
/* 5018C 8004F58C 8E104818 */  lw         $s0, %lo(D_800C4818)($s0)
/* 50190 8004F590 12000005 */  beqz       $s0, .L8004F5A8
/* 50194 8004F594 24020001 */   addiu     $v0, $zero, 0x1
/* 50198 8004F598 1202000C */  beq        $s0, $v0, .L8004F5CC
/* 5019C 8004F59C 00000000 */   nop
/* 501A0 8004F5A0 08013D7C */  j          .L8004F5F0
/* 501A4 8004F5A4 00000000 */   nop
.L8004F5A8:
/* 501A8 8004F5A8 0C013C90 */  jal        func_8004F240
/* 501AC 8004F5AC 00000000 */   nop
/* 501B0 8004F5B0 1040000D */  beqz       $v0, .L8004F5E8
/* 501B4 8004F5B4 24020001 */   addiu     $v0, $zero, 0x1
/* 501B8 8004F5B8 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 501BC 8004F5BC AC2252A0 */  sw         $v0, %lo(D_800C52A0)($at)
/* 501C0 8004F5C0 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 501C4 8004F5C4 08013D7C */  j          .L8004F5F0
/* 501C8 8004F5C8 AC2206E8 */   sw        $v0, %lo(D_802F06E8)($at)
.L8004F5CC:
/* 501CC 8004F5CC 0C013D1A */  jal        func_8004F468
/* 501D0 8004F5D0 00000000 */   nop
/* 501D4 8004F5D4 24020002 */  addiu      $v0, $zero, 0x2
/* 501D8 8004F5D8 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 501DC 8004F5DC AC3052A0 */  sw         $s0, %lo(D_800C52A0)($at)
/* 501E0 8004F5E0 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 501E4 8004F5E4 AC3006E8 */  sw         $s0, %lo(D_802F06E8)($at)
.L8004F5E8:
/* 501E8 8004F5E8 3C01800C */  lui        $at, %hi(D_800C4818)
/* 501EC 8004F5EC AC224818 */  sw         $v0, %lo(D_800C4818)($at)
.L8004F5F0:
/* 501F0 8004F5F0 3C02800C */  lui        $v0, %hi(D_800C4818)
/* 501F4 8004F5F4 8C424818 */  lw         $v0, %lo(D_800C4818)($v0)
/* 501F8 8004F5F8 38420002 */  xori       $v0, $v0, 0x2
/* 501FC 8004F5FC 2C420001 */  sltiu      $v0, $v0, 0x1
/* 50200 8004F600 8FBF0014 */  lw         $ra, 0x14($sp)
/* 50204 8004F604 8FB00010 */  lw         $s0, 0x10($sp)
/* 50208 8004F608 03E00008 */  jr         $ra
/* 5020C 8004F60C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004F610
/* 50210 8004F610 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50214 8004F614 10800016 */  beqz       $a0, .L8004F670
/* 50218 8004F618 AFBF0010 */   sw        $ra, 0x10($sp)
/* 5021C 8004F61C 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 50220 8004F620 D4202AC0 */  ldc1       $f0, %lo(D_80312AC0)($at)
/* 50224 8004F624 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 50228 8004F628 D4222AD0 */  ldc1       $f2, %lo(D_80312AD0)($at)
/* 5022C 8004F62C 3C01803F */  lui        $at, %hi(D_803EE588)
/* 50230 8004F630 AC20E588 */  sw         $zero, %lo(D_803EE588)($at)
/* 50234 8004F634 3C01803F */  lui        $at, %hi(D_803EE58C)
/* 50238 8004F638 AC20E58C */  sw         $zero, %lo(D_803EE58C)($at)
/* 5023C 8004F63C 3C01803F */  lui        $at, %hi(D_803EE580)
/* 50240 8004F640 F420E580 */  sdc1       $f0, %lo(D_803EE580)($at)
/* 50244 8004F644 3C01803F */  lui        $at, %hi(D_803EE590)
/* 50248 8004F648 F422E590 */  sdc1       $f2, %lo(D_803EE590)($at)
/* 5024C 8004F64C 0C013D55 */  jal        func_8004F554
/* 50250 8004F650 24040001 */   addiu     $a0, $zero, 0x1
/* 50254 8004F654 10400004 */  beqz       $v0, .L8004F668
/* 50258 8004F658 24020001 */   addiu     $v0, $zero, 0x1
/* 5025C 8004F65C 3C01800C */  lui        $at, %hi(D_800C481C)
/* 50260 8004F660 08013D9C */  j          .L8004F670
/* 50264 8004F664 AC22481C */   sw        $v0, %lo(D_800C481C)($at)
.L8004F668:
/* 50268 8004F668 3C01800C */  lui        $at, %hi(D_800C481C)
/* 5026C 8004F66C AC20481C */  sw         $zero, %lo(D_800C481C)($at)
.L8004F670:
/* 50270 8004F670 3C02800C */  lui        $v0, %hi(D_800C481C)
/* 50274 8004F674 8C42481C */  lw         $v0, %lo(D_800C481C)($v0)
/* 50278 8004F678 1440000B */  bnez       $v0, .L8004F6A8
/* 5027C 8004F67C 38420001 */   xori      $v0, $v0, 0x1
/* 50280 8004F680 0C013D55 */  jal        func_8004F554
/* 50284 8004F684 00002021 */   addu      $a0, $zero, $zero
/* 50288 8004F688 10400004 */  beqz       $v0, .L8004F69C
/* 5028C 8004F68C 00000000 */   nop
/* 50290 8004F690 24020001 */  addiu      $v0, $zero, 0x1
/* 50294 8004F694 3C01800C */  lui        $at, %hi(D_800C481C)
/* 50298 8004F698 AC22481C */  sw         $v0, %lo(D_800C481C)($at)
.L8004F69C:
/* 5029C 8004F69C 3C02800C */  lui        $v0, %hi(D_800C481C)
/* 502A0 8004F6A0 8C42481C */  lw         $v0, %lo(D_800C481C)($v0)
/* 502A4 8004F6A4 38420001 */  xori       $v0, $v0, 0x1
.L8004F6A8:
/* 502A8 8004F6A8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 502AC 8004F6AC 2C420001 */  sltiu      $v0, $v0, 0x1
/* 502B0 8004F6B0 03E00008 */  jr         $ra
/* 502B4 8004F6B4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004F6B8
/* 502B8 8004F6B8 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 502BC 8004F6BC D4202AC0 */  ldc1       $f0, %lo(D_80312AC0)($at)
/* 502C0 8004F6C0 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 502C4 8004F6C4 D4222AD0 */  ldc1       $f2, %lo(D_80312AD0)($at)
/* 502C8 8004F6C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 502CC 8004F6CC AFBF0010 */  sw         $ra, 0x10($sp)
/* 502D0 8004F6D0 3C01803F */  lui        $at, %hi(D_803EE588)
/* 502D4 8004F6D4 AC20E588 */  sw         $zero, %lo(D_803EE588)($at)
/* 502D8 8004F6D8 3C01803F */  lui        $at, %hi(D_803EE58C)
/* 502DC 8004F6DC AC20E58C */  sw         $zero, %lo(D_803EE58C)($at)
/* 502E0 8004F6E0 3C01803F */  lui        $at, %hi(D_803EE580)
/* 502E4 8004F6E4 F420E580 */  sdc1       $f0, %lo(D_803EE580)($at)
/* 502E8 8004F6E8 3C01803F */  lui        $at, %hi(D_803EE590)
/* 502EC 8004F6EC 0C013B6E */  jal        func_8004EDB8
/* 502F0 8004F6F0 F422E590 */   sdc1      $f2, %lo(D_803EE590)($at)
/* 502F4 8004F6F4 0C013D1A */  jal        func_8004F468
/* 502F8 8004F6F8 00000000 */   nop
/* 502FC 8004F6FC 24020001 */  addiu      $v0, $zero, 0x1
/* 50300 8004F700 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 50304 8004F704 AC2252A0 */  sw         $v0, %lo(D_800C52A0)($at)
/* 50308 8004F708 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5030C 8004F70C 03E00008 */  jr         $ra
/* 50310 8004F710 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004F714
/* 50314 8004F714 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50318 8004F718 1080001D */  beqz       $a0, .L8004F790
/* 5031C 8004F71C AFBF0010 */   sw        $ra, 0x10($sp)
/* 50320 8004F720 3C03802D */  lui        $v1, %hi(D_802D0C84)
/* 50324 8004F724 8C630C84 */  lw         $v1, %lo(D_802D0C84)($v1)
/* 50328 8004F728 00031040 */  sll        $v0, $v1, 1
/* 5032C 8004F72C 00431021 */  addu       $v0, $v0, $v1
/* 50330 8004F730 00021100 */  sll        $v0, $v0, 4
/* 50334 8004F734 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 50338 8004F738 00220821 */  addu       $at, $at, $v0
/* 5033C 8004F73C D4202AC0 */  ldc1       $f0, %lo(D_80312AC0)($at)
/* 50340 8004F740 3C01803F */  lui        $at, %hi(D_803EE588)
/* 50344 8004F744 AC20E588 */  sw         $zero, %lo(D_803EE588)($at)
/* 50348 8004F748 3C01803F */  lui        $at, %hi(D_803EE58C)
/* 5034C 8004F74C AC20E58C */  sw         $zero, %lo(D_803EE58C)($at)
/* 50350 8004F750 3C01803F */  lui        $at, %hi(D_803EE580)
/* 50354 8004F754 F420E580 */  sdc1       $f0, %lo(D_803EE580)($at)
/* 50358 8004F758 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 5035C 8004F75C 00220821 */  addu       $at, $at, $v0
/* 50360 8004F760 D4202AD0 */  ldc1       $f0, %lo(D_80312AD0)($at)
/* 50364 8004F764 3C01803F */  lui        $at, %hi(D_803EE590)
/* 50368 8004F768 F420E590 */  sdc1       $f0, %lo(D_803EE590)($at)
/* 5036C 8004F76C 0C013D55 */  jal        func_8004F554
/* 50370 8004F770 24040001 */   addiu     $a0, $zero, 0x1
/* 50374 8004F774 10400004 */  beqz       $v0, .L8004F788
/* 50378 8004F778 24020001 */   addiu     $v0, $zero, 0x1
/* 5037C 8004F77C 3C01800C */  lui        $at, %hi(D_800C4820)
/* 50380 8004F780 08013DE4 */  j          .L8004F790
/* 50384 8004F784 AC224820 */   sw        $v0, %lo(D_800C4820)($at)
.L8004F788:
/* 50388 8004F788 3C01800C */  lui        $at, %hi(D_800C4820)
/* 5038C 8004F78C AC204820 */  sw         $zero, %lo(D_800C4820)($at)
.L8004F790:
/* 50390 8004F790 3C02800C */  lui        $v0, %hi(D_800C4820)
/* 50394 8004F794 8C424820 */  lw         $v0, %lo(D_800C4820)($v0)
/* 50398 8004F798 1440000B */  bnez       $v0, .L8004F7C8
/* 5039C 8004F79C 38420001 */   xori      $v0, $v0, 0x1
/* 503A0 8004F7A0 0C013D55 */  jal        func_8004F554
/* 503A4 8004F7A4 00002021 */   addu      $a0, $zero, $zero
/* 503A8 8004F7A8 10400004 */  beqz       $v0, .L8004F7BC
/* 503AC 8004F7AC 00000000 */   nop
/* 503B0 8004F7B0 24020001 */  addiu      $v0, $zero, 0x1
/* 503B4 8004F7B4 3C01800C */  lui        $at, %hi(D_800C4820)
/* 503B8 8004F7B8 AC224820 */  sw         $v0, %lo(D_800C4820)($at)
.L8004F7BC:
/* 503BC 8004F7BC 3C02800C */  lui        $v0, %hi(D_800C4820)
/* 503C0 8004F7C0 8C424820 */  lw         $v0, %lo(D_800C4820)($v0)
/* 503C4 8004F7C4 38420001 */  xori       $v0, $v0, 0x1
.L8004F7C8:
/* 503C8 8004F7C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 503CC 8004F7CC 2C420001 */  sltiu      $v0, $v0, 0x1
/* 503D0 8004F7D0 03E00008 */  jr         $ra
/* 503D4 8004F7D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004F7D8
/* 503D8 8004F7D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 503DC 8004F7DC 10800016 */  beqz       $a0, .L8004F838
/* 503E0 8004F7E0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 503E4 8004F7E4 3C01802F */  lui        $at, %hi(D_802EF670)
/* 503E8 8004F7E8 D420F670 */  ldc1       $f0, %lo(D_802EF670)($at)
/* 503EC 8004F7EC 3C01802F */  lui        $at, %hi(D_802EF678)
/* 503F0 8004F7F0 D422F678 */  ldc1       $f2, %lo(D_802EF678)($at)
/* 503F4 8004F7F4 3C01802F */  lui        $at, %hi(D_802EF680)
/* 503F8 8004F7F8 D424F680 */  ldc1       $f4, %lo(D_802EF680)($at)
/* 503FC 8004F7FC 3C01803F */  lui        $at, %hi(D_803EE580)
/* 50400 8004F800 F420E580 */  sdc1       $f0, %lo(D_803EE580)($at)
/* 50404 8004F804 3C01803F */  lui        $at, %hi(D_803EE588)
/* 50408 8004F808 F422E588 */  sdc1       $f2, %lo(D_803EE588)($at)
/* 5040C 8004F80C 3C01803F */  lui        $at, %hi(D_803EE590)
/* 50410 8004F810 F424E590 */  sdc1       $f4, %lo(D_803EE590)($at)
/* 50414 8004F814 0C013D55 */  jal        func_8004F554
/* 50418 8004F818 24040001 */   addiu     $a0, $zero, 0x1
/* 5041C 8004F81C 10400004 */  beqz       $v0, .L8004F830
/* 50420 8004F820 24020001 */   addiu     $v0, $zero, 0x1
/* 50424 8004F824 3C01800C */  lui        $at, %hi(D_800C4824)
/* 50428 8004F828 08013E0E */  j          .L8004F838
/* 5042C 8004F82C AC224824 */   sw        $v0, %lo(D_800C4824)($at)
.L8004F830:
/* 50430 8004F830 3C01800C */  lui        $at, %hi(D_800C4824)
/* 50434 8004F834 AC204824 */  sw         $zero, %lo(D_800C4824)($at)
.L8004F838:
/* 50438 8004F838 3C02800C */  lui        $v0, %hi(D_800C4824)
/* 5043C 8004F83C 8C424824 */  lw         $v0, %lo(D_800C4824)($v0)
/* 50440 8004F840 1440000B */  bnez       $v0, .L8004F870
/* 50444 8004F844 38420001 */   xori      $v0, $v0, 0x1
/* 50448 8004F848 0C013D55 */  jal        func_8004F554
/* 5044C 8004F84C 00002021 */   addu      $a0, $zero, $zero
/* 50450 8004F850 10400004 */  beqz       $v0, .L8004F864
/* 50454 8004F854 00000000 */   nop
/* 50458 8004F858 24020001 */  addiu      $v0, $zero, 0x1
/* 5045C 8004F85C 3C01800C */  lui        $at, %hi(D_800C4824)
/* 50460 8004F860 AC224824 */  sw         $v0, %lo(D_800C4824)($at)
.L8004F864:
/* 50464 8004F864 3C02800C */  lui        $v0, %hi(D_800C4824)
/* 50468 8004F868 8C424824 */  lw         $v0, %lo(D_800C4824)($v0)
/* 5046C 8004F86C 38420001 */  xori       $v0, $v0, 0x1
.L8004F870:
/* 50470 8004F870 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50474 8004F874 2C420001 */  sltiu      $v0, $v0, 0x1
/* 50478 8004F878 03E00008 */  jr         $ra
/* 5047C 8004F87C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004F880
/* 50480 8004F880 3C02802C */  lui        $v0, %hi(D_802C6060)
/* 50484 8004F884 8C426060 */  lw         $v0, %lo(D_802C6060)($v0)
/* 50488 8004F888 3C03802C */  lui        $v1, %hi(D_802C6060)
/* 5048C 8004F88C 8C636060 */  lw         $v1, %lo(D_802C6060)($v1)
/* 50490 8004F890 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50494 8004F894 3C04802F */  lui        $a0, %hi(D_802EF670)
/* 50498 8004F898 2484F670 */  addiu      $a0, $a0, %lo(D_802EF670)
/* 5049C 8004F89C AFBF0014 */  sw         $ra, 0x14($sp)
/* 504A0 8004F8A0 AFB00010 */  sw         $s0, 0x10($sp)
/* 504A4 8004F8A4 8C450000 */  lw         $a1, 0x0($v0)
/* 504A8 8004F8A8 8C460004 */  lw         $a2, 0x4($v0)
/* 504AC 8004F8AC 8C470008 */  lw         $a3, 0x8($v0)
/* 504B0 8004F8B0 8C48000C */  lw         $t0, 0xC($v0)
/* 504B4 8004F8B4 AC850000 */  sw         $a1, 0x0($a0)
/* 504B8 8004F8B8 AC860004 */  sw         $a2, 0x4($a0)
/* 504BC 8004F8BC AC870008 */  sw         $a3, 0x8($a0)
/* 504C0 8004F8C0 AC88000C */  sw         $t0, 0xC($a0)
/* 504C4 8004F8C4 8C450010 */  lw         $a1, 0x10($v0)
/* 504C8 8004F8C8 8C460014 */  lw         $a2, 0x14($v0)
/* 504CC 8004F8CC AC850010 */  sw         $a1, 0x10($a0)
/* 504D0 8004F8D0 AC860014 */  sw         $a2, 0x14($a0)
/* 504D4 8004F8D4 3C028031 */  lui        $v0, %hi(D_80312A10)
/* 504D8 8004F8D8 24422A10 */  addiu      $v0, $v0, %lo(D_80312A10)
/* 504DC 8004F8DC D4700060 */  ldc1       $f16, 0x60($v1)
/* 504E0 8004F8E0 3C07802B */  lui        $a3, %hi(D_802AD8C8)
/* 504E4 8004F8E4 24E7D8C8 */  addiu      $a3, $a3, %lo(D_802AD8C8)
/* 504E8 8004F8E8 8C430000 */  lw         $v1, 0x0($v0)
/* 504EC 8004F8EC 8C450004 */  lw         $a1, 0x4($v0)
/* 504F0 8004F8F0 8C460008 */  lw         $a2, 0x8($v0)
/* 504F4 8004F8F4 ACE30000 */  sw         $v1, 0x0($a3)
/* 504F8 8004F8F8 ACE50004 */  sw         $a1, 0x4($a3)
/* 504FC 8004F8FC ACE60008 */  sw         $a2, 0x8($a3)
/* 50500 8004F900 8C43000C */  lw         $v1, 0xC($v0)
/* 50504 8004F904 8C450010 */  lw         $a1, 0x10($v0)
/* 50508 8004F908 8C460014 */  lw         $a2, 0x14($v0)
/* 5050C 8004F90C ACE3000C */  sw         $v1, 0xC($a3)
/* 50510 8004F910 ACE50010 */  sw         $a1, 0x10($a3)
/* 50514 8004F914 ACE60014 */  sw         $a2, 0x14($a3)
/* 50518 8004F918 3C01802F */  lui        $at, %hi(D_802EF138)
/* 5051C 8004F91C D426F138 */  ldc1       $f6, %lo(D_802EF138)($at)
/* 50520 8004F920 D4400000 */  ldc1       $f0, 0x0($v0)
/* 50524 8004F924 3C01802F */  lui        $at, %hi(D_802EF148)
/* 50528 8004F928 D42AF148 */  ldc1       $f10, %lo(D_802EF148)($at)
/* 5052C 8004F92C 46203181 */  sub.d      $f6, $f6, $f0
/* 50530 8004F930 3C018031 */  lui        $at, %hi(D_80312A20)
/* 50534 8004F934 D4222A20 */  ldc1       $f2, %lo(D_80312A20)($at)
/* 50538 8004F938 3C01803F */  lui        $at, %hi(D_803F6918)
/* 5053C 8004F93C D4246918 */  ldc1       $f4, %lo(D_803F6918)($at)
/* 50540 8004F940 3C01802F */  lui        $at, %hi(D_802EF140)
/* 50544 8004F944 D428F140 */  ldc1       $f8, %lo(D_802EF140)($at)
/* 50548 8004F948 46225281 */  sub.d      $f10, $f10, $f2
/* 5054C 8004F94C 3C018031 */  lui        $at, %hi(D_80312A18)
/* 50550 8004F950 D4202A18 */  ldc1       $f0, %lo(D_80312A18)($at)
/* 50554 8004F954 46243182 */  mul.d      $f6, $f6, $f4
/* 50558 8004F958 3C01802F */  lui        $at, %hi(D_802EF678)
/* 5055C 8004F95C D42CF678 */  ldc1       $f12, %lo(D_802EF678)($at)
/* 50560 8004F960 46204201 */  sub.d      $f8, $f8, $f0
/* 50564 8004F964 3C018031 */  lui        $at, %hi(D_80312A18)
/* 50568 8004F968 D4222A18 */  ldc1       $f2, %lo(D_80312A18)($at)
/* 5056C 8004F96C 3C01803F */  lui        $at, %hi(D_803F6920)
/* 50570 8004F970 D42E6920 */  ldc1       $f14, %lo(D_803F6920)($at)
/* 50574 8004F974 D4400000 */  ldc1       $f0, 0x0($v0)
/* 50578 8004F978 46226301 */  sub.d      $f12, $f12, $f2
/* 5057C 8004F97C D4840000 */  ldc1       $f4, 0x0($a0)
/* 50580 8004F980 462E4202 */  mul.d      $f8, $f8, $f14
/* 50584 8004F984 3C018031 */  lui        $at, %hi(D_80312A20)
/* 50588 8004F988 D4222A20 */  ldc1       $f2, %lo(D_80312A20)($at)
/* 5058C 8004F98C 46202101 */  sub.d      $f4, $f4, $f0
/* 50590 8004F990 3C01802F */  lui        $at, %hi(D_802EF680)
/* 50594 8004F994 D420F680 */  ldc1       $f0, %lo(D_802EF680)($at)
/* 50598 8004F998 3C01803F */  lui        $at, %hi(D_803F6928)
/* 5059C 8004F99C D42E6928 */  ldc1       $f14, %lo(D_803F6928)($at)
/* 505A0 8004F9A0 3C02802C */  lui        $v0, %hi(D_802C6060)
/* 505A4 8004F9A4 8C426060 */  lw         $v0, %lo(D_802C6060)($v0)
/* 505A8 8004F9A8 46220001 */  sub.d      $f0, $f0, $f2
/* 505AC 8004F9AC 462E5282 */  mul.d      $f10, $f10, $f14
/* 505B0 8004F9B0 3C10802B */  lui        $s0, %hi(D_802AD8E0)
/* 505B4 8004F9B4 2610D8E0 */  addiu      $s0, $s0, %lo(D_802AD8E0)
/* 505B8 8004F9B8 F6040000 */  sdc1       $f4, 0x0($s0)
/* 505BC 8004F9BC 3C01802B */  lui        $at, %hi(D_802AD8E8)
/* 505C0 8004F9C0 F42CD8E8 */  sdc1       $f12, %lo(D_802AD8E8)($at)
/* 505C4 8004F9C4 3C01802B */  lui        $at, %hi(D_802AD8F0)
/* 505C8 8004F9C8 F420D8F0 */  sdc1       $f0, %lo(D_802AD8F0)($at)
/* 505CC 8004F9CC D4440068 */  ldc1       $f4, 0x68($v0)
/* 505D0 8004F9D0 46283180 */  add.d      $f6, $f6, $f8
/* 505D4 8004F9D4 3C01800C */  lui        $at, %hi(D_800C52A4)
/* 505D8 8004F9D8 C42052A4 */  lwc1       $f0, %lo(D_800C52A4)($at)
/* 505DC 8004F9DC 46800021 */  cvt.d.w    $f0, $f0
/* 505E0 8004F9E0 46202102 */  mul.d      $f4, $f4, $f0
/* 505E4 8004F9E4 462A3180 */  add.d      $f6, $f6, $f10
/* 505E8 8004F9E8 D4400070 */  ldc1       $f0, 0x70($v0)
/* 505EC 8004F9EC 46208407 */  neg.d      $f16, $f16
/* 505F0 8004F9F0 3C01800C */  lui        $at, %hi(D_800C52A8)
/* 505F4 8004F9F4 C42252A8 */  lwc1       $f2, %lo(D_800C52A8)($at)
/* 505F8 8004F9F8 468010A1 */  cvt.d.w    $f2, $f2
/* 505FC 8004F9FC 46220002 */  mul.d      $f0, $f0, $f2
/* 50600 8004FA00 46268401 */  sub.d      $f16, $f16, $f6
/* 50604 8004FA04 3C01800D */  lui        $at, %hi(D_800D3FD8)
/* 50608 8004FA08 D4223FD8 */  ldc1       $f2, %lo(D_800D3FD8)($at)
/* 5060C 8004FA0C 46222100 */  add.d      $f4, $f4, $f2
/* 50610 8004FA10 3C01802B */  lui        $at, %hi(D_802AD9A0)
/* 50614 8004FA14 F426D9A0 */  sdc1       $f6, %lo(D_802AD9A0)($at)
/* 50618 8004FA18 46220000 */  add.d      $f0, $f0, $f2
/* 5061C 8004FA1C 4620208D */  trunc.w.d  $f2, $f4
/* 50620 8004FA20 44031000 */  mfc1       $v1, $f2
/* 50624 8004FA24 3C01802B */  lui        $at, %hi(D_802AD9E0)
/* 50628 8004FA28 AC23D9E0 */  sw         $v1, %lo(D_802AD9E0)($at)
/* 5062C 8004FA2C 3C01802B */  lui        $at, %hi(D_802AD9A8)
/* 50630 8004FA30 F430D9A8 */  sdc1       $f16, %lo(D_802AD9A8)($at)
/* 50634 8004FA34 4620008D */  trunc.w.d  $f2, $f0
/* 50638 8004FA38 44021000 */  mfc1       $v0, $f2
/* 5063C 8004FA3C 3C01802B */  lui        $at, %hi(D_802AD9E4)
/* 50640 8004FA40 AC22D9E4 */  sw         $v0, %lo(D_802AD9E4)($at)
/* 50644 8004FA44 3C04800C */  lui        $a0, %hi(D_800C52AC)
/* 50648 8004FA48 8C8452AC */  lw         $a0, %lo(D_800C52AC)($a0)
/* 5064C 8004FA4C 3C05800C */  lui        $a1, %hi(D_800C52B0)
/* 50650 8004FA50 8CA552B0 */  lw         $a1, %lo(D_800C52B0)($a1)
/* 50654 8004FA54 00641823 */  subu       $v1, $v1, $a0
/* 50658 8004FA58 00451023 */  subu       $v0, $v0, $a1
/* 5065C 8004FA5C 3C01802B */  lui        $at, %hi(D_802AD9C0)
/* 50660 8004FA60 AC23D9C0 */  sw         $v1, %lo(D_802AD9C0)($at)
/* 50664 8004FA64 3C01802B */  lui        $at, %hi(D_802AD9C4)
/* 50668 8004FA68 0C013B63 */  jal        func_8004ED8C
/* 5066C 8004FA6C AC22D9C4 */   sw        $v0, %lo(D_802AD9C4)($at)
/* 50670 8004FA70 10400022 */  beqz       $v0, .L8004FAFC
/* 50674 8004FA74 00000000 */   nop
/* 50678 8004FA78 0C013B63 */  jal        func_8004ED8C
/* 5067C 8004FA7C D60C0000 */   ldc1      $f12, 0x0($s0)
/* 50680 8004FA80 1040001E */  beqz       $v0, .L8004FAFC
/* 50684 8004FA84 00000000 */   nop
/* 50688 8004FA88 3C01802B */  lui        $at, %hi(D_802AD8F0)
/* 5068C 8004FA8C 0C013B63 */  jal        func_8004ED8C
/* 50690 8004FA90 D42CD8F0 */   ldc1      $f12, %lo(D_802AD8F0)($at)
/* 50694 8004FA94 10400019 */  beqz       $v0, .L8004FAFC
/* 50698 8004FA98 00000000 */   nop
/* 5069C 8004FA9C 3C02800C */  lui        $v0, %hi(D_800C52B0)
/* 506A0 8004FAA0 8C4252B0 */  lw         $v0, %lo(D_800C52B0)($v0)
/* 506A4 8004FAA4 3C03802B */  lui        $v1, %hi(D_802AD9E4)
/* 506A8 8004FAA8 8C63D9E4 */  lw         $v1, %lo(D_802AD9E4)($v1)
/* 506AC 8004FAAC 00431023 */  subu       $v0, $v0, $v1
/* 506B0 8004FAB0 000210C3 */  sra        $v0, $v0, 3
/* 506B4 8004FAB4 44826000 */  mtc1       $v0, $f12
/* 506B8 8004FAB8 00000000 */  nop
/* 506BC 8004FABC 0C013B63 */  jal        func_8004ED8C
/* 506C0 8004FAC0 46806321 */   cvt.d.w   $f12, $f12
/* 506C4 8004FAC4 1040000D */  beqz       $v0, .L8004FAFC
/* 506C8 8004FAC8 00000000 */   nop
/* 506CC 8004FACC 3C02800C */  lui        $v0, %hi(D_800C52AC)
/* 506D0 8004FAD0 8C4252AC */  lw         $v0, %lo(D_800C52AC)($v0)
/* 506D4 8004FAD4 3C03802B */  lui        $v1, %hi(D_802AD9E0)
/* 506D8 8004FAD8 8C63D9E0 */  lw         $v1, %lo(D_802AD9E0)($v1)
/* 506DC 8004FADC 00431023 */  subu       $v0, $v0, $v1
/* 506E0 8004FAE0 000210C3 */  sra        $v0, $v0, 3
/* 506E4 8004FAE4 44826000 */  mtc1       $v0, $f12
/* 506E8 8004FAE8 00000000 */  nop
/* 506EC 8004FAEC 0C013B63 */  jal        func_8004ED8C
/* 506F0 8004FAF0 46806321 */   cvt.d.w   $f12, $f12
/* 506F4 8004FAF4 1440000F */  bnez       $v0, .L8004FB34
/* 506F8 8004FAF8 24020001 */   addiu     $v0, $zero, 0x1
.L8004FAFC:
/* 506FC 8004FAFC 3C02800C */  lui        $v0, %hi(D_800C52AC)
/* 50700 8004FB00 8C4252AC */  lw         $v0, %lo(D_800C52AC)($v0)
/* 50704 8004FB04 3C03800C */  lui        $v1, %hi(D_800C52B0)
/* 50708 8004FB08 8C6352B0 */  lw         $v1, %lo(D_800C52B0)($v1)
/* 5070C 8004FB0C 3C01802B */  lui        $at, %hi(D_802AD9E8)
/* 50710 8004FB10 A020D9E8 */  sb         $zero, %lo(D_802AD9E8)($at)
/* 50714 8004FB14 3C01802B */  lui        $at, %hi(D_802AD9C8)
/* 50718 8004FB18 AC22D9C8 */  sw         $v0, %lo(D_802AD9C8)($at)
/* 5071C 8004FB1C 3C01802B */  lui        $at, %hi(D_802AD9CC)
/* 50720 8004FB20 0C018F7E */  jal        func_80063DF8
/* 50724 8004FB24 AC23D9CC */   sw        $v1, %lo(D_802AD9CC)($at)
/* 50728 8004FB28 3C01802B */  lui        $at, %hi(D_802AD9D0)
/* 5072C 8004FB2C AC22D9D0 */  sw         $v0, %lo(D_802AD9D0)($at)
/* 50730 8004FB30 00001021 */  addu       $v0, $zero, $zero
.L8004FB34:
/* 50734 8004FB34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 50738 8004FB38 8FB00010 */  lw         $s0, 0x10($sp)
/* 5073C 8004FB3C 03E00008 */  jr         $ra
/* 50740 8004FB40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004FB44
/* 50744 8004FB44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50748 8004FB48 10800006 */  beqz       $a0, .L8004FB64
/* 5074C 8004FB4C AFBF0010 */   sw        $ra, 0x10($sp)
/* 50750 8004FB50 0C013E20 */  jal        func_8004F880
/* 50754 8004FB54 00000000 */   nop
/* 50758 8004FB58 0002102B */  sltu       $v0, $zero, $v0
/* 5075C 8004FB5C 3C01802B */  lui        $at, %hi(D_802AD860)
/* 50760 8004FB60 AC22D860 */  sw         $v0, %lo(D_802AD860)($at)
.L8004FB64:
/* 50764 8004FB64 3C03802B */  lui        $v1, %hi(D_802AD860)
/* 50768 8004FB68 8C63D860 */  lw         $v1, %lo(D_802AD860)($v1)
/* 5076C 8004FB6C 10600006 */  beqz       $v1, .L8004FB88
/* 50770 8004FB70 00000000 */   nop
/* 50774 8004FB74 24020001 */  addiu      $v0, $zero, 0x1
/* 50778 8004FB78 10620007 */  beq        $v1, $v0, .L8004FB98
/* 5077C 8004FB7C 00000000 */   nop
/* 50780 8004FB80 08013EEB */  j          .L8004FBAC
/* 50784 8004FB84 00000000 */   nop
.L8004FB88:
/* 50788 8004FB88 0C013C90 */  jal        func_8004F240
/* 5078C 8004FB8C 00000000 */   nop
/* 50790 8004FB90 08013EE9 */  j          .L8004FBA4
/* 50794 8004FB94 2C420001 */   sltiu     $v0, $v0, 0x1
.L8004FB98:
/* 50798 8004FB98 0C013D1A */  jal        func_8004F468
/* 5079C 8004FB9C 00000000 */   nop
/* 507A0 8004FBA0 24020002 */  addiu      $v0, $zero, 0x2
.L8004FBA4:
/* 507A4 8004FBA4 3C01802B */  lui        $at, %hi(D_802AD860)
/* 507A8 8004FBA8 AC22D860 */  sw         $v0, %lo(D_802AD860)($at)
.L8004FBAC:
/* 507AC 8004FBAC 3C02802B */  lui        $v0, %hi(D_802AD860)
/* 507B0 8004FBB0 8C42D860 */  lw         $v0, %lo(D_802AD860)($v0)
/* 507B4 8004FBB4 38420002 */  xori       $v0, $v0, 0x2
/* 507B8 8004FBB8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 507BC 8004FBBC 2C420001 */  sltiu      $v0, $v0, 0x1
/* 507C0 8004FBC0 03E00008 */  jr         $ra
/* 507C4 8004FBC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004FBC8
/* 507C8 8004FBC8 3C01800D */  lui        $at, %hi(D_800D3FE0)
/* 507CC 8004FBCC D4203FE0 */  ldc1       $f0, %lo(D_800D3FE0)($at)
/* 507D0 8004FBD0 46206305 */  abs.d      $f12, $f12
/* 507D4 8004FBD4 462C003E */  c.le.d     $f0, $f12
/* 507D8 8004FBD8 00000000 */  nop
/* 507DC 8004FBDC 00000000 */  nop
/* 507E0 8004FBE0 45010002 */  bc1t       .L8004FBEC
/* 507E4 8004FBE4 00001021 */   addu      $v0, $zero, $zero
/* 507E8 8004FBE8 24020001 */  addiu      $v0, $zero, 0x1
.L8004FBEC:
/* 507EC 8004FBEC 03E00008 */  jr         $ra
/* 507F0 8004FBF0 00000000 */   nop

glabel func_8004FBF4
/* 507F4 8004FBF4 3C01802D */  lui        $at, %hi(D_802D2E50)
/* 507F8 8004FBF8 D4202E50 */  ldc1       $f0, %lo(D_802D2E50)($at)
/* 507FC 8004FBFC 3C01803F */  lui        $at, %hi(D_803ED070)
/* 50800 8004FC00 D42CD070 */  ldc1       $f12, %lo(D_803ED070)($at)
/* 50804 8004FC04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50808 8004FC08 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5080C 8004FC0C 0C013EF2 */  jal        func_8004FBC8
/* 50810 8004FC10 462C0300 */   add.d     $f12, $f0, $f12
/* 50814 8004FC14 10400042 */  beqz       $v0, .L8004FD20
/* 50818 8004FC18 00001021 */   addu      $v0, $zero, $zero
/* 5081C 8004FC1C 3C01802D */  lui        $at, %hi(D_802D2E58)
/* 50820 8004FC20 D4202E58 */  ldc1       $f0, %lo(D_802D2E58)($at)
/* 50824 8004FC24 3C01803F */  lui        $at, %hi(D_803ED078)
/* 50828 8004FC28 D42CD078 */  ldc1       $f12, %lo(D_803ED078)($at)
/* 5082C 8004FC2C 0C013EF2 */  jal        func_8004FBC8
/* 50830 8004FC30 462C0300 */   add.d     $f12, $f0, $f12
/* 50834 8004FC34 1040003A */  beqz       $v0, .L8004FD20
/* 50838 8004FC38 00001021 */   addu      $v0, $zero, $zero
/* 5083C 8004FC3C 3C01802D */  lui        $at, %hi(D_802D2E60)
/* 50840 8004FC40 D4202E60 */  ldc1       $f0, %lo(D_802D2E60)($at)
/* 50844 8004FC44 3C01803F */  lui        $at, %hi(D_803ED080)
/* 50848 8004FC48 D42CD080 */  ldc1       $f12, %lo(D_803ED080)($at)
/* 5084C 8004FC4C 0C013EF2 */  jal        func_8004FBC8
/* 50850 8004FC50 462C0300 */   add.d     $f12, $f0, $f12
/* 50854 8004FC54 10400032 */  beqz       $v0, .L8004FD20
/* 50858 8004FC58 00001021 */   addu      $v0, $zero, $zero
/* 5085C 8004FC5C 3C01803F */  lui        $at, %hi(D_803F6BC8)
/* 50860 8004FC60 D4206BC8 */  ldc1       $f0, %lo(D_803F6BC8)($at)
/* 50864 8004FC64 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 50868 8004FC68 D42C5C10 */  ldc1       $f12, %lo(D_803F5C10)($at)
/* 5086C 8004FC6C 0C013EF2 */  jal        func_8004FBC8
/* 50870 8004FC70 462C0300 */   add.d     $f12, $f0, $f12
/* 50874 8004FC74 1040002A */  beqz       $v0, .L8004FD20
/* 50878 8004FC78 00001021 */   addu      $v0, $zero, $zero
/* 5087C 8004FC7C 3C01803F */  lui        $at, %hi(D_803F6BD0)
/* 50880 8004FC80 D4206BD0 */  ldc1       $f0, %lo(D_803F6BD0)($at)
/* 50884 8004FC84 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 50888 8004FC88 D42C5C18 */  ldc1       $f12, %lo(D_803F5C18)($at)
/* 5088C 8004FC8C 0C013EF2 */  jal        func_8004FBC8
/* 50890 8004FC90 462C0300 */   add.d     $f12, $f0, $f12
/* 50894 8004FC94 10400022 */  beqz       $v0, .L8004FD20
/* 50898 8004FC98 00001021 */   addu      $v0, $zero, $zero
/* 5089C 8004FC9C 3C01803F */  lui        $at, %hi(D_803F6BD8)
/* 508A0 8004FCA0 D4206BD8 */  ldc1       $f0, %lo(D_803F6BD8)($at)
/* 508A4 8004FCA4 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 508A8 8004FCA8 D42C5C20 */  ldc1       $f12, %lo(D_803F5C20)($at)
/* 508AC 8004FCAC 0C013EF2 */  jal        func_8004FBC8
/* 508B0 8004FCB0 462C0300 */   add.d     $f12, $f0, $f12
/* 508B4 8004FCB4 1040001A */  beqz       $v0, .L8004FD20
/* 508B8 8004FCB8 00001021 */   addu      $v0, $zero, $zero
/* 508BC 8004FCBC 3C01802F */  lui        $at, %hi(D_802F0CD0)
/* 508C0 8004FCC0 D4200CD0 */  ldc1       $f0, %lo(D_802F0CD0)($at)
/* 508C4 8004FCC4 3C01803F */  lui        $at, %hi(D_803F6918)
/* 508C8 8004FCC8 D42C6918 */  ldc1       $f12, %lo(D_803F6918)($at)
/* 508CC 8004FCCC 0C013EF2 */  jal        func_8004FBC8
/* 508D0 8004FCD0 462C0300 */   add.d     $f12, $f0, $f12
/* 508D4 8004FCD4 10400012 */  beqz       $v0, .L8004FD20
/* 508D8 8004FCD8 00001021 */   addu      $v0, $zero, $zero
/* 508DC 8004FCDC 3C01802F */  lui        $at, %hi(D_802F0CD8)
/* 508E0 8004FCE0 D4200CD8 */  ldc1       $f0, %lo(D_802F0CD8)($at)
/* 508E4 8004FCE4 3C01803F */  lui        $at, %hi(D_803F6920)
/* 508E8 8004FCE8 D42C6920 */  ldc1       $f12, %lo(D_803F6920)($at)
/* 508EC 8004FCEC 0C013EF2 */  jal        func_8004FBC8
/* 508F0 8004FCF0 462C0300 */   add.d     $f12, $f0, $f12
/* 508F4 8004FCF4 1040000A */  beqz       $v0, .L8004FD20
/* 508F8 8004FCF8 00001021 */   addu      $v0, $zero, $zero
/* 508FC 8004FCFC 3C01802F */  lui        $at, %hi(D_802F0CE0)
/* 50900 8004FD00 D4200CE0 */  ldc1       $f0, %lo(D_802F0CE0)($at)
/* 50904 8004FD04 3C01803F */  lui        $at, %hi(D_803F6928)
/* 50908 8004FD08 D42C6928 */  ldc1       $f12, %lo(D_803F6928)($at)
/* 5090C 8004FD0C 0C013EF2 */  jal        func_8004FBC8
/* 50910 8004FD10 462C0300 */   add.d     $f12, $f0, $f12
/* 50914 8004FD14 14400002 */  bnez       $v0, .L8004FD20
/* 50918 8004FD18 24020001 */   addiu     $v0, $zero, 0x1
/* 5091C 8004FD1C 00001021 */  addu       $v0, $zero, $zero
.L8004FD20:
/* 50920 8004FD20 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50924 8004FD24 03E00008 */  jr         $ra
/* 50928 8004FD28 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004FD2C
/* 5092C 8004FD2C 3C01802D */  lui        $at, %hi(D_802D2E50)
/* 50930 8004FD30 D42C2E50 */  ldc1       $f12, %lo(D_802D2E50)($at)
/* 50934 8004FD34 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 50938 8004FD38 3C02802B */  lui        $v0, %hi(D_802AD928)
/* 5093C 8004FD3C 2442D928 */  addiu      $v0, $v0, %lo(D_802AD928)
/* 50940 8004FD40 AFBF0054 */  sw         $ra, 0x54($sp)
/* 50944 8004FD44 AFB00050 */  sw         $s0, 0x50($sp)
/* 50948 8004FD48 3C06803F */  lui        $a2, %hi(D_803ED070)
/* 5094C 8004FD4C 24C6D070 */  addiu      $a2, $a2, %lo(D_803ED070)
/* 50950 8004FD50 8CC30000 */  lw         $v1, 0x0($a2)
/* 50954 8004FD54 8CC40004 */  lw         $a0, 0x4($a2)
/* 50958 8004FD58 8CC50008 */  lw         $a1, 0x8($a2)
/* 5095C 8004FD5C AC430000 */  sw         $v1, 0x0($v0)
/* 50960 8004FD60 AC440004 */  sw         $a0, 0x4($v0)
/* 50964 8004FD64 AC450008 */  sw         $a1, 0x8($v0)
/* 50968 8004FD68 8CC3000C */  lw         $v1, 0xC($a2)
/* 5096C 8004FD6C 8CC40010 */  lw         $a0, 0x10($a2)
/* 50970 8004FD70 8CC50014 */  lw         $a1, 0x14($a2)
/* 50974 8004FD74 AC43000C */  sw         $v1, 0xC($v0)
/* 50978 8004FD78 AC440010 */  sw         $a0, 0x10($v0)
/* 5097C 8004FD7C AC450014 */  sw         $a1, 0x14($v0)
/* 50980 8004FD80 D4420000 */  ldc1       $f2, 0x0($v0)
/* 50984 8004FD84 46206307 */  neg.d      $f12, $f12
/* 50988 8004FD88 46226382 */  mul.d      $f14, $f12, $f2
/* 5098C 8004FD8C 3C01802D */  lui        $at, %hi(D_802D2E60)
/* 50990 8004FD90 D4202E60 */  ldc1       $f0, %lo(D_802D2E60)($at)
/* 50994 8004FD94 46220082 */  mul.d      $f2, $f0, $f2
/* 50998 8004FD98 3C01802B */  lui        $at, %hi(D_802AD938)
/* 5099C 8004FD9C D424D938 */  ldc1       $f4, %lo(D_802AD938)($at)
/* 509A0 8004FDA0 46240002 */  mul.d      $f0, $f0, $f4
/* 509A4 8004FDA4 00000000 */  nop
/* 509A8 8004FDA8 46246302 */  mul.d      $f12, $f12, $f4
/* 509AC 8004FDAC 46207381 */  sub.d      $f14, $f14, $f0
/* 509B0 8004FDB0 3C05803F */  lui        $a1, %hi(D_803F5C10)
/* 509B4 8004FDB4 24A55C10 */  addiu      $a1, $a1, %lo(D_803F5C10)
/* 509B8 8004FDB8 3C04802B */  lui        $a0, %hi(D_802AD940)
/* 509BC 8004FDBC 2484D940 */  addiu      $a0, $a0, %lo(D_802AD940)
/* 509C0 8004FDC0 8CA20000 */  lw         $v0, 0x0($a1)
/* 509C4 8004FDC4 8CA30004 */  lw         $v1, 0x4($a1)
/* 509C8 8004FDC8 AC820000 */  sw         $v0, 0x0($a0)
/* 509CC 8004FDCC AC830004 */  sw         $v1, 0x4($a0)
/* 509D0 8004FDD0 8CA20008 */  lw         $v0, 0x8($a1)
/* 509D4 8004FDD4 8CA3000C */  lw         $v1, 0xC($a1)
/* 509D8 8004FDD8 AC820008 */  sw         $v0, 0x8($a0)
/* 509DC 8004FDDC AC83000C */  sw         $v1, 0xC($a0)
/* 509E0 8004FDE0 8CA20010 */  lw         $v0, 0x10($a1)
/* 509E4 8004FDE4 8CA30014 */  lw         $v1, 0x14($a1)
/* 509E8 8004FDE8 AC820010 */  sw         $v0, 0x10($a0)
/* 509EC 8004FDEC AC830014 */  sw         $v1, 0x14($a0)
/* 509F0 8004FDF0 46226300 */  add.d      $f12, $f12, $f2
/* 509F4 8004FDF4 3C05803F */  lui        $a1, %hi(D_803F6918)
/* 509F8 8004FDF8 24A56918 */  addiu      $a1, $a1, %lo(D_803F6918)
/* 509FC 8004FDFC 3C04802B */  lui        $a0, %hi(D_802AD958)
/* 50A00 8004FE00 2484D958 */  addiu      $a0, $a0, %lo(D_802AD958)
/* 50A04 8004FE04 8CA20000 */  lw         $v0, 0x0($a1)
/* 50A08 8004FE08 8CA30004 */  lw         $v1, 0x4($a1)
/* 50A0C 8004FE0C AC820000 */  sw         $v0, 0x0($a0)
/* 50A10 8004FE10 AC830004 */  sw         $v1, 0x4($a0)
/* 50A14 8004FE14 8CA20008 */  lw         $v0, 0x8($a1)
/* 50A18 8004FE18 8CA3000C */  lw         $v1, 0xC($a1)
/* 50A1C 8004FE1C AC820008 */  sw         $v0, 0x8($a0)
/* 50A20 8004FE20 AC83000C */  sw         $v1, 0xC($a0)
/* 50A24 8004FE24 8CA20010 */  lw         $v0, 0x10($a1)
/* 50A28 8004FE28 8CA30014 */  lw         $v1, 0x14($a1)
/* 50A2C 8004FE2C AC820010 */  sw         $v0, 0x10($a0)
/* 50A30 8004FE30 AC830014 */  sw         $v1, 0x14($a0)
/* 50A34 8004FE34 3C10802B */  lui        $s0, %hi(D_802AD920)
/* 50A38 8004FE38 2610D920 */  addiu      $s0, $s0, %lo(D_802AD920)
/* 50A3C 8004FE3C F60E0000 */  sdc1       $f14, 0x0($s0)
/* 50A40 8004FE40 3C01802B */  lui        $at, %hi(D_802AD910)
/* 50A44 8004FE44 0C022C1C */  jal        func_8008B070
/* 50A48 8004FE48 F42CD910 */   sdc1      $f12, %lo(D_802AD910)($at)
/* 50A4C 8004FE4C D6020000 */  ldc1       $f2, 0x0($s0)
/* 50A50 8004FE50 44802000 */  mtc1       $zero, $f4
/* 50A54 8004FE54 44802800 */  mtc1       $zero, $f5
/* 50A58 8004FE58 00000000 */  nop
/* 50A5C 8004FE5C 4624103C */  c.lt.d     $f2, $f4
/* 50A60 8004FE60 46200086 */  mov.d      $f2, $f0
/* 50A64 8004FE64 3C01802B */  lui        $at, %hi(D_802AD9B0)
/* 50A68 8004FE68 F422D9B0 */  sdc1       $f2, %lo(D_802AD9B0)($at)
/* 50A6C 8004FE6C 4500000D */  bc1f       .L8004FEA4
/* 50A70 8004FE70 00000000 */   nop
/* 50A74 8004FE74 3C01802B */  lui        $at, %hi(D_802AD910)
/* 50A78 8004FE78 D420D910 */  ldc1       $f0, %lo(D_802AD910)($at)
/* 50A7C 8004FE7C 4624003C */  c.lt.d     $f0, $f4
/* 50A80 8004FE80 3C01800D */  lui        $at, %hi(D_800D3FE8)
/* 50A84 8004FE84 D4203FE8 */  ldc1       $f0, %lo(D_800D3FE8)($at)
/* 50A88 8004FE88 45020004 */  bc1fl      .L8004FE9C
/* 50A8C 8004FE8C 46201000 */   add.d     $f0, $f2, $f0
/* 50A90 8004FE90 3C01800D */  lui        $at, %hi(D_800D3FF0)
/* 50A94 8004FE94 D4203FF0 */  ldc1       $f0, %lo(D_800D3FF0)($at)
/* 50A98 8004FE98 46201000 */  add.d      $f0, $f2, $f0
.L8004FE9C:
/* 50A9C 8004FE9C 3C01802B */  lui        $at, %hi(D_802AD9B0)
/* 50AA0 8004FEA0 F420D9B0 */  sdc1       $f0, %lo(D_802AD9B0)($at)
.L8004FEA4:
/* 50AA4 8004FEA4 3C01802B */  lui        $at, %hi(D_802AD9B0)
/* 50AA8 8004FEA8 D42CD9B0 */  ldc1       $f12, %lo(D_802AD9B0)($at)
/* 50AAC 8004FEAC 46206307 */  neg.d      $f12, $f12
/* 50AB0 8004FEB0 0C022C03 */  jal        func_8008B00C
/* 50AB4 8004FEB4 27A60040 */   addiu     $a2, $sp, 0x40
/* 50AB8 8004FEB8 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 50ABC 8004FEBC D4265C10 */  ldc1       $f6, %lo(D_803F5C10)($at)
/* 50AC0 8004FEC0 D7A00048 */  ldc1       $f0, 0x48($sp)
/* 50AC4 8004FEC4 46203382 */  mul.d      $f14, $f6, $f0
/* 50AC8 8004FEC8 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 50ACC 8004FECC D42A5C20 */  ldc1       $f10, %lo(D_803F5C20)($at)
/* 50AD0 8004FED0 D7A20040 */  ldc1       $f2, 0x40($sp)
/* 50AD4 8004FED4 46225482 */  mul.d      $f18, $f10, $f2
/* 50AD8 8004FED8 00000000 */  nop
/* 50ADC 8004FEDC 46205282 */  mul.d      $f10, $f10, $f0
/* 50AE0 8004FEE0 00000000 */  nop
/* 50AE4 8004FEE4 46223182 */  mul.d      $f6, $f6, $f2
/* 50AE8 8004FEE8 3C01803F */  lui        $at, %hi(D_803F6918)
/* 50AEC 8004FEEC D4286918 */  ldc1       $f8, %lo(D_803F6918)($at)
/* 50AF0 8004FEF0 46204302 */  mul.d      $f12, $f8, $f0
/* 50AF4 8004FEF4 3C01803F */  lui        $at, %hi(D_803F6928)
/* 50AF8 8004FEF8 D4246928 */  ldc1       $f4, %lo(D_803F6928)($at)
/* 50AFC 8004FEFC 46222402 */  mul.d      $f16, $f4, $f2
/* 50B00 8004FF00 00000000 */  nop
/* 50B04 8004FF04 46202102 */  mul.d      $f4, $f4, $f0
/* 50B08 8004FF08 46327381 */  sub.d      $f14, $f14, $f18
/* 50B0C 8004FF0C 46224202 */  mul.d      $f8, $f8, $f2
/* 50B10 8004FF10 46265280 */  add.d      $f10, $f10, $f6
/* 50B14 8004FF14 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 50B18 8004FF18 D4205C18 */  ldc1       $f0, %lo(D_803F5C18)($at)
/* 50B1C 8004FF1C 3C01803F */  lui        $at, %hi(D_803F6920)
/* 50B20 8004FF20 D4226920 */  ldc1       $f2, %lo(D_803F6920)($at)
/* 50B24 8004FF24 46306301 */  sub.d      $f12, $f12, $f16
/* 50B28 8004FF28 F7A00018 */  sdc1       $f0, 0x18($sp)
/* 50B2C 8004FF2C F7A20030 */  sdc1       $f2, 0x30($sp)
/* 50B30 8004FF30 46282100 */  add.d      $f4, $f4, $f8
/* 50B34 8004FF34 F7AE0010 */  sdc1       $f14, 0x10($sp)
/* 50B38 8004FF38 F7AA0020 */  sdc1       $f10, 0x20($sp)
/* 50B3C 8004FF3C F7AC0028 */  sdc1       $f12, 0x28($sp)
/* 50B40 8004FF40 F7A40038 */  sdc1       $f4, 0x38($sp)
/* 50B44 8004FF44 0C022CCC */  jal        func_8008B330
/* 50B48 8004FF48 27A40010 */   addiu     $a0, $sp, 0x10
/* 50B4C 8004FF4C 0C022CCC */  jal        func_8008B330
/* 50B50 8004FF50 27A40028 */   addiu     $a0, $sp, 0x28
/* 50B54 8004FF54 3C01802F */  lui        $at, %hi(D_802F0CD8)
/* 50B58 8004FF58 D4260CD8 */  ldc1       $f6, %lo(D_802F0CD8)($at)
/* 50B5C 8004FF5C D7A40018 */  ldc1       $f4, 0x18($sp)
/* 50B60 8004FF60 46243102 */  mul.d      $f4, $f6, $f4
/* 50B64 8004FF64 3C01802F */  lui        $at, %hi(D_802F0CD0)
/* 50B68 8004FF68 D42E0CD0 */  ldc1       $f14, %lo(D_802F0CD0)($at)
/* 50B6C 8004FF6C D7AC0010 */  ldc1       $f12, 0x10($sp)
/* 50B70 8004FF70 46207387 */  neg.d      $f14, $f14
/* 50B74 8004FF74 462C7302 */  mul.d      $f12, $f14, $f12
/* 50B78 8004FF78 D7A00028 */  ldc1       $f0, 0x28($sp)
/* 50B7C 8004FF7C 46207382 */  mul.d      $f14, $f14, $f0
/* 50B80 8004FF80 D7A00030 */  ldc1       $f0, 0x30($sp)
/* 50B84 8004FF84 46203182 */  mul.d      $f6, $f6, $f0
/* 50B88 8004FF88 3C01802F */  lui        $at, %hi(D_802F0CE0)
/* 50B8C 8004FF8C D4220CE0 */  ldc1       $f2, %lo(D_802F0CE0)($at)
/* 50B90 8004FF90 D7A00020 */  ldc1       $f0, 0x20($sp)
/* 50B94 8004FF94 46201002 */  mul.d      $f0, $f2, $f0
/* 50B98 8004FF98 46246301 */  sub.d      $f12, $f12, $f4
/* 50B9C 8004FF9C D7A40038 */  ldc1       $f4, 0x38($sp)
/* 50BA0 8004FFA0 46267381 */  sub.d      $f14, $f14, $f6
/* 50BA4 8004FFA4 46241082 */  mul.d      $f2, $f2, $f4
/* 50BA8 8004FFA8 46206301 */  sub.d      $f12, $f12, $f0
/* 50BAC 8004FFAC 46227381 */  sub.d      $f14, $f14, $f2
/* 50BB0 8004FFB0 3C10802B */  lui        $s0, %hi(D_802AD918)
/* 50BB4 8004FFB4 2610D918 */  addiu      $s0, $s0, %lo(D_802AD918)
/* 50BB8 8004FFB8 F60C0000 */  sdc1       $f12, 0x0($s0)
/* 50BBC 8004FFBC 3C01802B */  lui        $at, %hi(D_802AD920)
/* 50BC0 8004FFC0 0C022C1C */  jal        func_8008B070
/* 50BC4 8004FFC4 F42ED920 */   sdc1      $f14, %lo(D_802AD920)($at)
/* 50BC8 8004FFC8 3C01802B */  lui        $at, %hi(D_802AD920)
/* 50BCC 8004FFCC D422D920 */  ldc1       $f2, %lo(D_802AD920)($at)
/* 50BD0 8004FFD0 44802000 */  mtc1       $zero, $f4
/* 50BD4 8004FFD4 44802800 */  mtc1       $zero, $f5
/* 50BD8 8004FFD8 00000000 */  nop
/* 50BDC 8004FFDC 4624103C */  c.lt.d     $f2, $f4
/* 50BE0 8004FFE0 46200086 */  mov.d      $f2, $f0
/* 50BE4 8004FFE4 3C01802B */  lui        $at, %hi(D_802AD9B8)
/* 50BE8 8004FFE8 F422D9B8 */  sdc1       $f2, %lo(D_802AD9B8)($at)
/* 50BEC 8004FFEC 4500000C */  bc1f       .L80050020
/* 50BF0 8004FFF0 00000000 */   nop
/* 50BF4 8004FFF4 D6000000 */  ldc1       $f0, 0x0($s0)
/* 50BF8 8004FFF8 4624003C */  c.lt.d     $f0, $f4
/* 50BFC 8004FFFC 3C01800D */  lui        $at, %hi(D_800D3FF8)
/* 50C00 80050000 D4203FF8 */  ldc1       $f0, %lo(D_800D3FF8)($at)
/* 50C04 80050004 45020004 */  bc1fl      .L80050018
/* 50C08 80050008 46201000 */   add.d     $f0, $f2, $f0
/* 50C0C 8005000C 3C01800D */  lui        $at, %hi(D_800D4000)
/* 50C10 80050010 D4204000 */  ldc1       $f0, %lo(D_800D4000)($at)
/* 50C14 80050014 46201000 */  add.d      $f0, $f2, $f0
.L80050018:
/* 50C18 80050018 3C01802B */  lui        $at, %hi(D_802AD9B8)
/* 50C1C 8005001C F420D9B8 */  sdc1       $f0, %lo(D_802AD9B8)($at)
.L80050020:
/* 50C20 80050020 3C10802F */  lui        $s0, %hi(D_802EF138)
/* 50C24 80050024 2610F138 */  addiu      $s0, $s0, %lo(D_802EF138)
/* 50C28 80050028 3C018031 */  lui        $at, %hi(D_80312A10)
/* 50C2C 8005002C D4262A10 */  ldc1       $f6, %lo(D_80312A10)($at)
/* 50C30 80050030 D6000000 */  ldc1       $f0, 0x0($s0)
/* 50C34 80050034 3C018031 */  lui        $at, %hi(D_80312A18)
/* 50C38 80050038 D4242A18 */  ldc1       $f4, %lo(D_80312A18)($at)
/* 50C3C 8005003C 46203181 */  sub.d      $f6, $f6, $f0
/* 50C40 80050040 3C01802F */  lui        $at, %hi(D_802EF140)
/* 50C44 80050044 D420F140 */  ldc1       $f0, %lo(D_802EF140)($at)
/* 50C48 80050048 3C018031 */  lui        $at, %hi(D_80312A20)
/* 50C4C 8005004C D4222A20 */  ldc1       $f2, %lo(D_80312A20)($at)
/* 50C50 80050050 46202101 */  sub.d      $f4, $f4, $f0
/* 50C54 80050054 3C01802F */  lui        $at, %hi(D_802EF148)
/* 50C58 80050058 D420F148 */  ldc1       $f0, %lo(D_802EF148)($at)
/* 50C5C 8005005C 46201081 */  sub.d      $f2, $f2, $f0
/* 50C60 80050060 3C04802B */  lui        $a0, %hi(D_802AD910)
/* 50C64 80050064 2484D910 */  addiu      $a0, $a0, %lo(D_802AD910)
/* 50C68 80050068 3C01803F */  lui        $at, %hi(D_803EE580)
/* 50C6C 8005006C F426E580 */  sdc1       $f6, %lo(D_803EE580)($at)
/* 50C70 80050070 3C01803F */  lui        $at, %hi(D_803EE588)
/* 50C74 80050074 F424E588 */  sdc1       $f4, %lo(D_803EE588)($at)
/* 50C78 80050078 3C01803F */  lui        $at, %hi(D_803EE590)
/* 50C7C 8005007C 0C015C28 */  jal        func_800570A0
/* 50C80 80050080 F422E590 */   sdc1      $f2, %lo(D_803EE590)($at)
/* 50C84 80050084 3C01802B */  lui        $at, %hi(D_802AD920)
/* 50C88 80050088 D420D920 */  ldc1       $f0, %lo(D_802AD920)($at)
/* 50C8C 8005008C 3C05802B */  lui        $a1, %hi(D_802AD8B0)
/* 50C90 80050090 24A5D8B0 */  addiu      $a1, $a1, %lo(D_802AD8B0)
/* 50C94 80050094 8E020000 */  lw         $v0, 0x0($s0)
/* 50C98 80050098 8E030004 */  lw         $v1, 0x4($s0)
/* 50C9C 8005009C 8E040008 */  lw         $a0, 0x8($s0)
/* 50CA0 800500A0 ACA20000 */  sw         $v0, 0x0($a1)
/* 50CA4 800500A4 ACA30004 */  sw         $v1, 0x4($a1)
/* 50CA8 800500A8 ACA40008 */  sw         $a0, 0x8($a1)
/* 50CAC 800500AC 8E02000C */  lw         $v0, 0xC($s0)
/* 50CB0 800500B0 8E030010 */  lw         $v1, 0x10($s0)
/* 50CB4 800500B4 8E040014 */  lw         $a0, 0x14($s0)
/* 50CB8 800500B8 ACA2000C */  sw         $v0, 0xC($a1)
/* 50CBC 800500BC ACA30010 */  sw         $v1, 0x10($a1)
/* 50CC0 800500C0 ACA40014 */  sw         $a0, 0x14($a1)
/* 50CC4 800500C4 3C01802B */  lui        $at, %hi(D_802AD9D8)
/* 50CC8 800500C8 0C018F7E */  jal        func_80063DF8
/* 50CCC 800500CC F420D9D8 */   sdc1      $f0, %lo(D_802AD9D8)($at)
/* 50CD0 800500D0 3C01802B */  lui        $at, %hi(D_802AD9D0)
/* 50CD4 800500D4 0C013EFD */  jal        func_8004FBF4
/* 50CD8 800500D8 AC22D9D0 */   sw        $v0, %lo(D_802AD9D0)($at)
/* 50CDC 800500DC 8FBF0054 */  lw         $ra, 0x54($sp)
/* 50CE0 800500E0 8FB00050 */  lw         $s0, 0x50($sp)
/* 50CE4 800500E4 03E00008 */  jr         $ra
/* 50CE8 800500E8 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_800500EC
/* 50CEC 800500EC 3C01802B */  lui        $at, %hi(D_802AD9B0)
/* 50CF0 800500F0 D420D9B0 */  ldc1       $f0, %lo(D_802AD9B0)($at)
/* 50CF4 800500F4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 50CF8 800500F8 AFB10024 */  sw         $s1, 0x24($sp)
/* 50CFC 800500FC AFB00020 */  sw         $s0, 0x20($sp)
/* 50D00 80050100 44116000 */  mfc1       $s1, $f12
/* 50D04 80050104 44106800 */  mfc1       $s0, $f13
/* 50D08 80050108 27A60010 */  addiu      $a2, $sp, 0x10
/* 50D0C 8005010C 46206307 */  neg.d      $f12, $f12
/* 50D10 80050110 AFBF002C */  sw         $ra, 0x2C($sp)
/* 50D14 80050114 AFB20028 */  sw         $s2, 0x28($sp)
/* 50D18 80050118 F7BE0058 */  sdc1       $f30, 0x58($sp)
/* 50D1C 8005011C F7BC0050 */  sdc1       $f28, 0x50($sp)
/* 50D20 80050120 F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 50D24 80050124 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 50D28 80050128 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 50D2C 8005012C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 50D30 80050130 0C022C03 */  jal        func_8008B00C
/* 50D34 80050134 46206302 */   mul.d     $f12, $f12, $f0
/* 50D38 80050138 3C01802B */  lui        $at, %hi(D_802AD928)
/* 50D3C 8005013C D428D928 */  ldc1       $f8, %lo(D_802AD928)($at)
/* 50D40 80050140 D7A00018 */  ldc1       $f0, 0x18($sp)
/* 50D44 80050144 46204582 */  mul.d      $f22, $f8, $f0
/* 50D48 80050148 3C01802B */  lui        $at, %hi(D_802AD938)
/* 50D4C 8005014C D42ED938 */  ldc1       $f14, %lo(D_802AD938)($at)
/* 50D50 80050150 D7A20010 */  ldc1       $f2, 0x10($sp)
/* 50D54 80050154 46227302 */  mul.d      $f12, $f14, $f2
/* 50D58 80050158 00000000 */  nop
/* 50D5C 8005015C 46207382 */  mul.d      $f14, $f14, $f0
/* 50D60 80050160 00000000 */  nop
/* 50D64 80050164 46224202 */  mul.d      $f8, $f8, $f2
/* 50D68 80050168 3C01802B */  lui        $at, %hi(D_802AD940)
/* 50D6C 8005016C D42AD940 */  ldc1       $f10, %lo(D_802AD940)($at)
/* 50D70 80050170 46205502 */  mul.d      $f20, $f10, $f0
/* 50D74 80050174 3C01802B */  lui        $at, %hi(D_802AD950)
/* 50D78 80050178 D426D950 */  ldc1       $f6, %lo(D_802AD950)($at)
/* 50D7C 8005017C 46223702 */  mul.d      $f28, $f6, $f2
/* 50D80 80050180 00000000 */  nop
/* 50D84 80050184 46203182 */  mul.d      $f6, $f6, $f0
/* 50D88 80050188 00000000 */  nop
/* 50D8C 8005018C 46225282 */  mul.d      $f10, $f10, $f2
/* 50D90 80050190 3C01802B */  lui        $at, %hi(D_802AD958)
/* 50D94 80050194 D430D958 */  ldc1       $f16, %lo(D_802AD958)($at)
/* 50D98 80050198 46208482 */  mul.d      $f18, $f16, $f0
/* 50D9C 8005019C 3C01802B */  lui        $at, %hi(D_802AD968)
/* 50DA0 800501A0 D424D968 */  ldc1       $f4, %lo(D_802AD968)($at)
/* 50DA4 800501A4 46222782 */  mul.d      $f30, $f4, $f2
/* 50DA8 800501A8 462CB581 */  sub.d      $f22, $f22, $f12
/* 50DAC 800501AC 46202102 */  mul.d      $f4, $f4, $f0
/* 50DB0 800501B0 46287380 */  add.d      $f14, $f14, $f8
/* 50DB4 800501B4 3C01802B */  lui        $at, %hi(D_802AD948)
/* 50DB8 800501B8 D438D948 */  ldc1       $f24, %lo(D_802AD948)($at)
/* 50DBC 800501BC 3C01802B */  lui        $at, %hi(D_802AD960)
/* 50DC0 800501C0 D43AD960 */  ldc1       $f26, %lo(D_802AD960)($at)
/* 50DC4 800501C4 463CA501 */  sub.d      $f20, $f20, $f28
/* 50DC8 800501C8 27A60010 */  addiu      $a2, $sp, 0x10
/* 50DCC 800501CC 3C01802B */  lui        $at, %hi(D_802AD930)
/* 50DD0 800501D0 D420D930 */  ldc1       $f0, %lo(D_802AD930)($at)
/* 50DD4 800501D4 46228402 */  mul.d      $f16, $f16, $f2
/* 50DD8 800501D8 462A3180 */  add.d      $f6, $f6, $f10
/* 50DDC 800501DC 3C01803F */  lui        $at, %hi(D_803F6920)
/* 50DE0 800501E0 F43A6920 */  sdc1       $f26, %lo(D_803F6920)($at)
/* 50DE4 800501E4 4491D000 */  mtc1       $s1, $f26
/* 50DE8 800501E8 4490D800 */  mtc1       $s0, $f27
/* 50DEC 800501EC 3C01802B */  lui        $at, %hi(D_802AD9B8)
/* 50DF0 800501F0 D42CD9B8 */  ldc1       $f12, %lo(D_802AD9B8)($at)
/* 50DF4 800501F4 463E9481 */  sub.d      $f18, $f18, $f30
/* 50DF8 800501F8 3C12803F */  lui        $s2, %hi(D_803ED070)
/* 50DFC 800501FC 2652D070 */  addiu      $s2, $s2, %lo(D_803ED070)
/* 50E00 80050200 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 50E04 80050204 F4385C18 */  sdc1       $f24, %lo(D_803F5C18)($at)
/* 50E08 80050208 3C01803F */  lui        $at, %hi(D_803ED078)
/* 50E0C 8005020C F420D078 */  sdc1       $f0, %lo(D_803ED078)($at)
/* 50E10 80050210 46302100 */  add.d      $f4, $f4, $f16
/* 50E14 80050214 3C11803F */  lui        $s1, %hi(D_803F5C10)
/* 50E18 80050218 26315C10 */  addiu      $s1, $s1, %lo(D_803F5C10)
/* 50E1C 8005021C 3C10803F */  lui        $s0, %hi(D_803F6918)
/* 50E20 80050220 26106918 */  addiu      $s0, $s0, %lo(D_803F6918)
/* 50E24 80050224 F6560000 */  sdc1       $f22, 0x0($s2)
/* 50E28 80050228 3C01803F */  lui        $at, %hi(D_803ED080)
/* 50E2C 8005022C F42ED080 */  sdc1       $f14, %lo(D_803ED080)($at)
/* 50E30 80050230 F6340000 */  sdc1       $f20, 0x0($s1)
/* 50E34 80050234 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 50E38 80050238 F4265C20 */  sdc1       $f6, %lo(D_803F5C20)($at)
/* 50E3C 8005023C F6120000 */  sdc1       $f18, 0x0($s0)
/* 50E40 80050240 3C01803F */  lui        $at, %hi(D_803F6928)
/* 50E44 80050244 F4246928 */  sdc1       $f4, %lo(D_803F6928)($at)
/* 50E48 80050248 0C022C03 */  jal        func_8008B00C
/* 50E4C 8005024C 462CD302 */   mul.d     $f12, $f26, $f12
/* 50E50 80050250 D60E0000 */  ldc1       $f14, 0x0($s0)
/* 50E54 80050254 D7A00018 */  ldc1       $f0, 0x18($sp)
/* 50E58 80050258 46207602 */  mul.d      $f24, $f14, $f0
/* 50E5C 8005025C D62C0000 */  ldc1       $f12, 0x0($s1)
/* 50E60 80050260 D7A60010 */  ldc1       $f6, 0x10($sp)
/* 50E64 80050264 46266502 */  mul.d      $f20, $f12, $f6
/* 50E68 80050268 00000000 */  nop
/* 50E6C 8005026C 46206302 */  mul.d      $f12, $f12, $f0
/* 50E70 80050270 00000000 */  nop
/* 50E74 80050274 46267382 */  mul.d      $f14, $f14, $f6
/* 50E78 80050278 3C01803F */  lui        $at, %hi(D_803F6920)
/* 50E7C 8005027C D42A6920 */  ldc1       $f10, %lo(D_803F6920)($at)
/* 50E80 80050280 46205482 */  mul.d      $f18, $f10, $f0
/* 50E84 80050284 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 50E88 80050288 D4285C18 */  ldc1       $f8, %lo(D_803F5C18)($at)
/* 50E8C 8005028C 46264402 */  mul.d      $f16, $f8, $f6
/* 50E90 80050290 00000000 */  nop
/* 50E94 80050294 46204202 */  mul.d      $f8, $f8, $f0
/* 50E98 80050298 00000000 */  nop
/* 50E9C 8005029C 46265282 */  mul.d      $f10, $f10, $f6
/* 50EA0 800502A0 3C01803F */  lui        $at, %hi(D_803F6928)
/* 50EA4 800502A4 D4226928 */  ldc1       $f2, %lo(D_803F6928)($at)
/* 50EA8 800502A8 46201582 */  mul.d      $f22, $f2, $f0
/* 50EAC 800502AC 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 50EB0 800502B0 D4245C20 */  ldc1       $f4, %lo(D_803F5C20)($at)
/* 50EB4 800502B4 46202002 */  mul.d      $f0, $f4, $f0
/* 50EB8 800502B8 4634C600 */  add.d      $f24, $f24, $f20
/* 50EBC 800502BC 46261082 */  mul.d      $f2, $f2, $f6
/* 50EC0 800502C0 462E6301 */  sub.d      $f12, $f12, $f14
/* 50EC4 800502C4 462A4201 */  sub.d      $f8, $f8, $f10
/* 50EC8 800502C8 46262102 */  mul.d      $f4, $f4, $f6
/* 50ECC 800502CC F6180000 */  sdc1       $f24, 0x0($s0)
/* 50ED0 800502D0 46309600 */  add.d      $f24, $f18, $f16
/* 50ED4 800502D4 46220001 */  sub.d      $f0, $f0, $f2
/* 50ED8 800502D8 3C01803F */  lui        $at, %hi(D_803F6920)
/* 50EDC 800502DC F4386920 */  sdc1       $f24, %lo(D_803F6920)($at)
/* 50EE0 800502E0 4624B600 */  add.d      $f24, $f22, $f4
/* 50EE4 800502E4 F62C0000 */  sdc1       $f12, 0x0($s1)
/* 50EE8 800502E8 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 50EEC 800502EC F4285C18 */  sdc1       $f8, %lo(D_803F5C18)($at)
/* 50EF0 800502F0 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 50EF4 800502F4 F4205C20 */  sdc1       $f0, %lo(D_803F5C20)($at)
/* 50EF8 800502F8 3C01803F */  lui        $at, %hi(D_803F6928)
/* 50EFC 800502FC F4386928 */  sdc1       $f24, %lo(D_803F6928)($at)
/* 50F00 80050300 0C022CCC */  jal        func_8008B330
/* 50F04 80050304 02402021 */   addu      $a0, $s2, $zero
/* 50F08 80050308 0C022CCC */  jal        func_8008B330
/* 50F0C 8005030C 02202021 */   addu      $a0, $s1, $zero
/* 50F10 80050310 0C022CCC */  jal        func_8008B330
/* 50F14 80050314 02002021 */   addu      $a0, $s0, $zero
/* 50F18 80050318 0C015D12 */  jal        func_80057448
/* 50F1C 8005031C 00000000 */   nop
/* 50F20 80050320 8FBF002C */  lw         $ra, 0x2C($sp)
/* 50F24 80050324 8FB20028 */  lw         $s2, 0x28($sp)
/* 50F28 80050328 8FB10024 */  lw         $s1, 0x24($sp)
/* 50F2C 8005032C 8FB00020 */  lw         $s0, 0x20($sp)
/* 50F30 80050330 D7BE0058 */  ldc1       $f30, 0x58($sp)
/* 50F34 80050334 D7BC0050 */  ldc1       $f28, 0x50($sp)
/* 50F38 80050338 D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 50F3C 8005033C D7B80040 */  ldc1       $f24, 0x40($sp)
/* 50F40 80050340 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 50F44 80050344 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 50F48 80050348 03E00008 */  jr         $ra
/* 50F4C 8005034C 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_80050350
/* 50F50 80050350 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 50F54 80050354 AFBF0020 */  sw         $ra, 0x20($sp)
/* 50F58 80050358 AFB3001C */  sw         $s3, 0x1C($sp)
/* 50F5C 8005035C AFB20018 */  sw         $s2, 0x18($sp)
/* 50F60 80050360 AFB10014 */  sw         $s1, 0x14($sp)
/* 50F64 80050364 AFB00010 */  sw         $s0, 0x10($sp)
/* 50F68 80050368 0C018F7E */  jal        func_80063DF8
/* 50F6C 8005036C F7B40028 */   sdc1      $f20, 0x28($sp)
/* 50F70 80050370 3C03802B */  lui        $v1, %hi(D_802AD9D0)
/* 50F74 80050374 8C63D9D0 */  lw         $v1, %lo(D_802AD9D0)($v1)
/* 50F78 80050378 00431023 */  subu       $v0, $v0, $v1
/* 50F7C 8005037C 44821000 */  mtc1       $v0, $f2
/* 50F80 80050380 00000000 */  nop
/* 50F84 80050384 04410004 */  bgez       $v0, .L80050398
/* 50F88 80050388 468010A1 */   cvt.d.w   $f2, $f2
/* 50F8C 8005038C 3C01800D */  lui        $at, %hi(D_800D4008)
/* 50F90 80050390 D4204008 */  ldc1       $f0, %lo(D_800D4008)($at)
/* 50F94 80050394 46201080 */  add.d      $f2, $f2, $f0
.L80050398:
/* 50F98 80050398 3C01800D */  lui        $at, %hi(D_800D4010)
/* 50F9C 8005039C D4204010 */  ldc1       $f0, %lo(D_800D4010)($at)
/* 50FA0 800503A0 46201002 */  mul.d      $f0, $f2, $f0
/* 50FA4 800503A4 3C01800D */  lui        $at, %hi(D_800D4018)
/* 50FA8 800503A8 D4224018 */  ldc1       $f2, %lo(D_800D4018)($at)
/* 50FAC 800503AC 46220283 */  div.d      $f10, $f0, $f2
/* 50FB0 800503B0 3C01800D */  lui        $at, %hi(D_800D4020)
/* 50FB4 800503B4 D42C4020 */  ldc1       $f12, %lo(D_800D4020)($at)
/* 50FB8 800503B8 462A603E */  c.le.d     $f12, $f10
/* 50FBC 800503BC 00000000 */  nop
/* 50FC0 800503C0 00000000 */  nop
/* 50FC4 800503C4 4501005D */  bc1t       .L8005053C
/* 50FC8 800503C8 24020001 */   addiu     $v0, $zero, 0x1
/* 50FCC 800503CC 3C138031 */  lui        $s3, %hi(D_80312A10)
/* 50FD0 800503D0 26732A10 */  addiu      $s3, $s3, %lo(D_80312A10)
/* 50FD4 800503D4 3C11802F */  lui        $s1, %hi(D_802EF138)
/* 50FD8 800503D8 2631F138 */  addiu      $s1, $s1, %lo(D_802EF138)
/* 50FDC 800503DC D6660000 */  ldc1       $f6, 0x0($s3)
/* 50FE0 800503E0 462A6281 */  sub.d      $f10, $f12, $f10
/* 50FE4 800503E4 D6200000 */  ldc1       $f0, 0x0($s1)
/* 50FE8 800503E8 3C018031 */  lui        $at, %hi(D_80312A18)
/* 50FEC 800503EC D4222A18 */  ldc1       $f2, %lo(D_80312A18)($at)
/* 50FF0 800503F0 46203181 */  sub.d      $f6, $f6, $f0
/* 50FF4 800503F4 3C01802F */  lui        $at, %hi(D_802EF140)
/* 50FF8 800503F8 D424F140 */  ldc1       $f4, %lo(D_802EF140)($at)
/* 50FFC 800503FC 3C01802F */  lui        $at, %hi(D_802EF148)
/* 51000 80050400 D428F148 */  ldc1       $f8, %lo(D_802EF148)($at)
/* 51004 80050404 3C018031 */  lui        $at, %hi(D_80312A20)
/* 51008 80050408 D4202A20 */  ldc1       $f0, %lo(D_80312A20)($at)
/* 5100C 8005040C 46241081 */  sub.d      $f2, $f2, $f4
/* 51010 80050410 462A5502 */  mul.d      $f20, $f10, $f10
/* 51014 80050414 3C10802B */  lui        $s0, %hi(D_802AD910)
/* 51018 80050418 2610D910 */  addiu      $s0, $s0, %lo(D_802AD910)
/* 5101C 8005041C 02002021 */  addu       $a0, $s0, $zero
/* 51020 80050420 46280001 */  sub.d      $f0, $f0, $f8
/* 51024 80050424 3C12803F */  lui        $s2, %hi(D_803EE580)
/* 51028 80050428 2652E580 */  addiu      $s2, $s2, %lo(D_803EE580)
/* 5102C 8005042C F6460000 */  sdc1       $f6, 0x0($s2)
/* 51030 80050430 3C01803F */  lui        $at, %hi(D_803EE588)
/* 51034 80050434 F422E588 */  sdc1       $f2, %lo(D_803EE588)($at)
/* 51038 80050438 3C01803F */  lui        $at, %hi(D_803EE590)
/* 5103C 8005043C F420E590 */  sdc1       $f0, %lo(D_803EE590)($at)
/* 51040 80050440 0C015C28 */  jal        func_800570A0
/* 51044 80050444 46346501 */   sub.d     $f20, $f12, $f20
/* 51048 80050448 3C01802B */  lui        $at, %hi(D_802AD920)
/* 5104C 8005044C D420D920 */  ldc1       $f0, %lo(D_802AD920)($at)
/* 51050 80050450 3C01802B */  lui        $at, %hi(D_802AD9D8)
/* 51054 80050454 F420D9D8 */  sdc1       $f0, %lo(D_802AD9D8)($at)
/* 51058 80050458 0C01403B */  jal        func_800500EC
/* 5105C 8005045C 4620A306 */   mov.d     $f12, $f20
/* 51060 80050460 D6660000 */  ldc1       $f6, 0x0($s3)
/* 51064 80050464 D6200000 */  ldc1       $f0, 0x0($s1)
/* 51068 80050468 3C018031 */  lui        $at, %hi(D_80312A18)
/* 5106C 8005046C D4242A18 */  ldc1       $f4, %lo(D_80312A18)($at)
/* 51070 80050470 46203181 */  sub.d      $f6, $f6, $f0
/* 51074 80050474 3C01802F */  lui        $at, %hi(D_802EF140)
/* 51078 80050478 D420F140 */  ldc1       $f0, %lo(D_802EF140)($at)
/* 5107C 8005047C 3C018031 */  lui        $at, %hi(D_80312A20)
/* 51080 80050480 D4222A20 */  ldc1       $f2, %lo(D_80312A20)($at)
/* 51084 80050484 46202101 */  sub.d      $f4, $f4, $f0
/* 51088 80050488 3C01802F */  lui        $at, %hi(D_802EF148)
/* 5108C 8005048C D420F148 */  ldc1       $f0, %lo(D_802EF148)($at)
/* 51090 80050490 46201081 */  sub.d      $f2, $f2, $f0
/* 51094 80050494 F6460000 */  sdc1       $f6, 0x0($s2)
/* 51098 80050498 3C01803F */  lui        $at, %hi(D_803EE588)
/* 5109C 8005049C F424E588 */  sdc1       $f4, %lo(D_803EE588)($at)
/* 510A0 800504A0 3C01803F */  lui        $at, %hi(D_803EE590)
/* 510A4 800504A4 F422E590 */  sdc1       $f2, %lo(D_803EE590)($at)
/* 510A8 800504A8 0C015C28 */  jal        func_800570A0
/* 510AC 800504AC 02002021 */   addu      $a0, $s0, $zero
/* 510B0 800504B0 3C01802B */  lui        $at, %hi(D_802AD920)
/* 510B4 800504B4 D420D920 */  ldc1       $f0, %lo(D_802AD920)($at)
/* 510B8 800504B8 3C01802B */  lui        $at, %hi(D_802AD9D8)
/* 510BC 800504BC D422D9D8 */  ldc1       $f2, %lo(D_802AD9D8)($at)
/* 510C0 800504C0 46220001 */  sub.d      $f0, $f0, $f2
/* 510C4 800504C4 3C01802B */  lui        $at, %hi(D_802AD920)
/* 510C8 800504C8 F420D920 */  sdc1       $f0, %lo(D_802AD920)($at)
/* 510CC 800504CC 0C013B32 */  jal        func_8004ECC8
/* 510D0 800504D0 02002021 */   addu      $a0, $s0, $zero
/* 510D4 800504D4 D6260000 */  ldc1       $f6, 0x0($s1)
/* 510D8 800504D8 3C01802B */  lui        $at, %hi(D_802AD898)
/* 510DC 800504DC D420D898 */  ldc1       $f0, %lo(D_802AD898)($at)
/* 510E0 800504E0 3C01802F */  lui        $at, %hi(D_802EF140)
/* 510E4 800504E4 D422F140 */  ldc1       $f2, %lo(D_802EF140)($at)
/* 510E8 800504E8 46203180 */  add.d      $f6, $f6, $f0
/* 510EC 800504EC 3C01802B */  lui        $at, %hi(D_802AD8A0)
/* 510F0 800504F0 D424D8A0 */  ldc1       $f4, %lo(D_802AD8A0)($at)
/* 510F4 800504F4 3C01802B */  lui        $at, %hi(D_802AD8A8)
/* 510F8 800504F8 D428D8A8 */  ldc1       $f8, %lo(D_802AD8A8)($at)
/* 510FC 800504FC 3C01802F */  lui        $at, %hi(D_802EF148)
/* 51100 80050500 D420F148 */  ldc1       $f0, %lo(D_802EF148)($at)
/* 51104 80050504 46241080 */  add.d      $f2, $f2, $f4
/* 51108 80050508 24030001 */  addiu      $v1, $zero, 0x1
/* 5110C 8005050C 3C01802C */  lui        $at, %hi(D_802C7978)
/* 51110 80050510 A0237978 */  sb         $v1, %lo(D_802C7978)($at)
/* 51114 80050514 24030001 */  addiu      $v1, $zero, 0x1
/* 51118 80050518 46280000 */  add.d      $f0, $f0, $f8
/* 5111C 8005051C 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 51120 80050520 AC2352A0 */  sw         $v1, %lo(D_800C52A0)($at)
/* 51124 80050524 F6260000 */  sdc1       $f6, 0x0($s1)
/* 51128 80050528 3C01802F */  lui        $at, %hi(D_802EF140)
/* 5112C 8005052C F422F140 */  sdc1       $f2, %lo(D_802EF140)($at)
/* 51130 80050530 3C01802F */  lui        $at, %hi(D_802EF148)
/* 51134 80050534 F420F148 */  sdc1       $f0, %lo(D_802EF148)($at)
/* 51138 80050538 00001021 */  addu       $v0, $zero, $zero
.L8005053C:
/* 5113C 8005053C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 51140 80050540 8FB3001C */  lw         $s3, 0x1C($sp)
/* 51144 80050544 8FB20018 */  lw         $s2, 0x18($sp)
/* 51148 80050548 8FB10014 */  lw         $s1, 0x14($sp)
/* 5114C 8005054C 8FB00010 */  lw         $s0, 0x10($sp)
/* 51150 80050550 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 51154 80050554 03E00008 */  jr         $ra
/* 51158 80050558 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005055C
/* 5115C 8005055C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 51160 80050560 AFBF0028 */  sw         $ra, 0x28($sp)
/* 51164 80050564 AFB50024 */  sw         $s5, 0x24($sp)
/* 51168 80050568 AFB40020 */  sw         $s4, 0x20($sp)
/* 5116C 8005056C AFB3001C */  sw         $s3, 0x1C($sp)
/* 51170 80050570 AFB20018 */  sw         $s2, 0x18($sp)
/* 51174 80050574 AFB10014 */  sw         $s1, 0x14($sp)
/* 51178 80050578 AFB00010 */  sw         $s0, 0x10($sp)
/* 5117C 8005057C F7BC0050 */  sdc1       $f28, 0x50($sp)
/* 51180 80050580 F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 51184 80050584 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 51188 80050588 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 5118C 8005058C 0C018F7E */  jal        func_80063DF8
/* 51190 80050590 F7B40030 */   sdc1      $f20, 0x30($sp)
/* 51194 80050594 3C03802B */  lui        $v1, %hi(D_802AD9D0)
/* 51198 80050598 8C63D9D0 */  lw         $v1, %lo(D_802AD9D0)($v1)
/* 5119C 8005059C 00431023 */  subu       $v0, $v0, $v1
/* 511A0 800505A0 44821000 */  mtc1       $v0, $f2
/* 511A4 800505A4 00000000 */  nop
/* 511A8 800505A8 04410004 */  bgez       $v0, .L800505BC
/* 511AC 800505AC 468010A1 */   cvt.d.w   $f2, $f2
/* 511B0 800505B0 3C01800D */  lui        $at, %hi(D_800D4028)
/* 511B4 800505B4 D4204028 */  ldc1       $f0, %lo(D_800D4028)($at)
/* 511B8 800505B8 46201080 */  add.d      $f2, $f2, $f0
.L800505BC:
/* 511BC 800505BC 3C01800D */  lui        $at, %hi(D_800D4030)
/* 511C0 800505C0 D4204030 */  ldc1       $f0, %lo(D_800D4030)($at)
/* 511C4 800505C4 46201283 */  div.d      $f10, $f2, $f0
/* 511C8 800505C8 3C01800D */  lui        $at, %hi(D_800D4038)
/* 511CC 800505CC D42C4038 */  ldc1       $f12, %lo(D_800D4038)($at)
/* 511D0 800505D0 462A603E */  c.le.d     $f12, $f10
/* 511D4 800505D4 00000000 */  nop
/* 511D8 800505D8 00000000 */  nop
/* 511DC 800505DC 450100BF */  bc1t       .L800508DC
/* 511E0 800505E0 00001021 */   addu      $v0, $zero, $zero
/* 511E4 800505E4 3C158031 */  lui        $s5, %hi(D_80312A10)
/* 511E8 800505E8 26B52A10 */  addiu      $s5, $s5, %lo(D_80312A10)
/* 511EC 800505EC 3C12802F */  lui        $s2, %hi(D_802EF138)
/* 511F0 800505F0 2652F138 */  addiu      $s2, $s2, %lo(D_802EF138)
/* 511F4 800505F4 D6A60000 */  ldc1       $f6, 0x0($s5)
/* 511F8 800505F8 462A6281 */  sub.d      $f10, $f12, $f10
/* 511FC 800505FC D6400000 */  ldc1       $f0, 0x0($s2)
/* 51200 80050600 3C018031 */  lui        $at, %hi(D_80312A18)
/* 51204 80050604 D4222A18 */  ldc1       $f2, %lo(D_80312A18)($at)
/* 51208 80050608 46203181 */  sub.d      $f6, $f6, $f0
/* 5120C 8005060C 3C01802F */  lui        $at, %hi(D_802EF140)
/* 51210 80050610 D424F140 */  ldc1       $f4, %lo(D_802EF140)($at)
/* 51214 80050614 3C01802F */  lui        $at, %hi(D_802EF148)
/* 51218 80050618 D428F148 */  ldc1       $f8, %lo(D_802EF148)($at)
/* 5121C 8005061C 3C018031 */  lui        $at, %hi(D_80312A20)
/* 51220 80050620 D4202A20 */  ldc1       $f0, %lo(D_80312A20)($at)
/* 51224 80050624 46241081 */  sub.d      $f2, $f2, $f4
/* 51228 80050628 462A5502 */  mul.d      $f20, $f10, $f10
/* 5122C 8005062C 3C13802B */  lui        $s3, %hi(D_802AD910)
/* 51230 80050630 2673D910 */  addiu      $s3, $s3, %lo(D_802AD910)
/* 51234 80050634 02602021 */  addu       $a0, $s3, $zero
/* 51238 80050638 46280001 */  sub.d      $f0, $f0, $f8
/* 5123C 8005063C 3C14803F */  lui        $s4, %hi(D_803EE580)
/* 51240 80050640 2694E580 */  addiu      $s4, $s4, %lo(D_803EE580)
/* 51244 80050644 F6860000 */  sdc1       $f6, 0x0($s4)
/* 51248 80050648 3C01803F */  lui        $at, %hi(D_803EE588)
/* 5124C 8005064C F422E588 */  sdc1       $f2, %lo(D_803EE588)($at)
/* 51250 80050650 3C01803F */  lui        $at, %hi(D_803EE590)
/* 51254 80050654 F420E590 */  sdc1       $f0, %lo(D_803EE590)($at)
/* 51258 80050658 0C015C28 */  jal        func_800570A0
/* 5125C 8005065C 462CA501 */   sub.d     $f20, $f20, $f12
/* 51260 80050660 3C04803F */  lui        $a0, %hi(D_803ED070)
/* 51264 80050664 2484D070 */  addiu      $a0, $a0, %lo(D_803ED070)
/* 51268 80050668 3C01802D */  lui        $at, %hi(D_802D2E50)
/* 5126C 8005066C D4202E50 */  ldc1       $f0, %lo(D_802D2E50)($at)
/* 51270 80050670 D49C0000 */  ldc1       $f28, 0x0($a0)
/* 51274 80050674 463C0000 */  add.d      $f0, $f0, $f28
/* 51278 80050678 3C01802D */  lui        $at, %hi(D_802D2E58)
/* 5127C 8005067C D4222E58 */  ldc1       $f2, %lo(D_802D2E58)($at)
/* 51280 80050680 46340002 */  mul.d      $f0, $f0, $f20
/* 51284 80050684 3C01803F */  lui        $at, %hi(D_803ED078)
/* 51288 80050688 D43AD078 */  ldc1       $f26, %lo(D_803ED078)($at)
/* 5128C 8005068C 463A1080 */  add.d      $f2, $f2, $f26
/* 51290 80050690 3C01802D */  lui        $at, %hi(D_802D2E60)
/* 51294 80050694 D4242E60 */  ldc1       $f4, %lo(D_802D2E60)($at)
/* 51298 80050698 3C01803F */  lui        $at, %hi(D_803ED080)
/* 5129C 8005069C D438D080 */  ldc1       $f24, %lo(D_803ED080)($at)
/* 512A0 800506A0 3C11803F */  lui        $s1, %hi(D_803F5C10)
/* 512A4 800506A4 26315C10 */  addiu      $s1, $s1, %lo(D_803F5C10)
/* 512A8 800506A8 46341082 */  mul.d      $f2, $f2, $f20
/* 512AC 800506AC 3C01803F */  lui        $at, %hi(D_803F6BC8)
/* 512B0 800506B0 D4266BC8 */  ldc1       $f6, %lo(D_803F6BC8)($at)
/* 512B4 800506B4 46382100 */  add.d      $f4, $f4, $f24
/* 512B8 800506B8 D6360000 */  ldc1       $f22, 0x0($s1)
/* 512BC 800506BC 3C01803F */  lui        $at, %hi(D_803F6BD8)
/* 512C0 800506C0 D4286BD8 */  ldc1       $f8, %lo(D_803F6BD8)($at)
/* 512C4 800506C4 46363180 */  add.d      $f6, $f6, $f22
/* 512C8 800506C8 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 512CC 800506CC D4305C20 */  ldc1       $f16, %lo(D_803F5C20)($at)
/* 512D0 800506D0 46342102 */  mul.d      $f4, $f4, $f20
/* 512D4 800506D4 46304200 */  add.d      $f8, $f8, $f16
/* 512D8 800506D8 4620E700 */  add.d      $f28, $f28, $f0
/* 512DC 800506DC 46343182 */  mul.d      $f6, $f6, $f20
/* 512E0 800506E0 4622D680 */  add.d      $f26, $f26, $f2
/* 512E4 800506E4 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 512E8 800506E8 D4325C18 */  ldc1       $f18, %lo(D_803F5C18)($at)
/* 512EC 800506EC 4624C600 */  add.d      $f24, $f24, $f4
/* 512F0 800506F0 3C01803F */  lui        $at, %hi(D_803F6BD0)
/* 512F4 800506F4 D4206BD0 */  ldc1       $f0, %lo(D_803F6BD0)($at)
/* 512F8 800506F8 46344202 */  mul.d      $f8, $f8, $f20
/* 512FC 800506FC 46320000 */  add.d      $f0, $f0, $f18
/* 51300 80050700 3C10803F */  lui        $s0, %hi(D_803F6918)
/* 51304 80050704 26106918 */  addiu      $s0, $s0, %lo(D_803F6918)
/* 51308 80050708 D60E0000 */  ldc1       $f14, 0x0($s0)
/* 5130C 8005070C 4626B580 */  add.d      $f22, $f22, $f6
/* 51310 80050710 3C01802F */  lui        $at, %hi(D_802F0CD0)
/* 51314 80050714 D4220CD0 */  ldc1       $f2, %lo(D_802F0CD0)($at)
/* 51318 80050718 46340002 */  mul.d      $f0, $f0, $f20
/* 5131C 8005071C 462E1080 */  add.d      $f2, $f2, $f14
/* 51320 80050720 3C01803F */  lui        $at, %hi(D_803F6920)
/* 51324 80050724 D42C6920 */  ldc1       $f12, %lo(D_803F6920)($at)
/* 51328 80050728 46288400 */  add.d      $f16, $f16, $f8
/* 5132C 8005072C 3C01802F */  lui        $at, %hi(D_802F0CD8)
/* 51330 80050730 D4240CD8 */  ldc1       $f4, %lo(D_802F0CD8)($at)
/* 51334 80050734 46341082 */  mul.d      $f2, $f2, $f20
/* 51338 80050738 462C2100 */  add.d      $f4, $f4, $f12
/* 5133C 8005073C 3C01803F */  lui        $at, %hi(D_803F6928)
/* 51340 80050740 D42A6928 */  ldc1       $f10, %lo(D_803F6928)($at)
/* 51344 80050744 46209480 */  add.d      $f18, $f18, $f0
/* 51348 80050748 3C01802F */  lui        $at, %hi(D_802F0CE0)
/* 5134C 8005074C D4200CE0 */  ldc1       $f0, %lo(D_802F0CE0)($at)
/* 51350 80050750 46342102 */  mul.d      $f4, $f4, $f20
/* 51354 80050754 462A0000 */  add.d      $f0, $f0, $f10
/* 51358 80050758 3C01802B */  lui        $at, %hi(D_802AD920)
/* 5135C 8005075C D426D920 */  ldc1       $f6, %lo(D_802AD920)($at)
/* 51360 80050760 46227380 */  add.d      $f14, $f14, $f2
/* 51364 80050764 46340002 */  mul.d      $f0, $f0, $f20
/* 51368 80050768 3C01802B */  lui        $at, %hi(D_802AD9D8)
/* 5136C 8005076C F426D9D8 */  sdc1       $f6, %lo(D_802AD9D8)($at)
/* 51370 80050770 46246300 */  add.d      $f12, $f12, $f4
/* 51374 80050774 F49C0000 */  sdc1       $f28, 0x0($a0)
/* 51378 80050778 3C01803F */  lui        $at, %hi(D_803ED078)
/* 5137C 8005077C F43AD078 */  sdc1       $f26, %lo(D_803ED078)($at)
/* 51380 80050780 3C01803F */  lui        $at, %hi(D_803ED080)
/* 51384 80050784 F438D080 */  sdc1       $f24, %lo(D_803ED080)($at)
/* 51388 80050788 F6360000 */  sdc1       $f22, 0x0($s1)
/* 5138C 8005078C 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 51390 80050790 F4305C20 */  sdc1       $f16, %lo(D_803F5C20)($at)
/* 51394 80050794 46205280 */  add.d      $f10, $f10, $f0
/* 51398 80050798 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 5139C 8005079C F4325C18 */  sdc1       $f18, %lo(D_803F5C18)($at)
/* 513A0 800507A0 F60E0000 */  sdc1       $f14, 0x0($s0)
/* 513A4 800507A4 3C01803F */  lui        $at, %hi(D_803F6920)
/* 513A8 800507A8 F42C6920 */  sdc1       $f12, %lo(D_803F6920)($at)
/* 513AC 800507AC 3C01803F */  lui        $at, %hi(D_803F6928)
/* 513B0 800507B0 0C022CCC */  jal        func_8008B330
/* 513B4 800507B4 F42A6928 */   sdc1      $f10, %lo(D_803F6928)($at)
/* 513B8 800507B8 0C022CCC */  jal        func_8008B330
/* 513BC 800507BC 02202021 */   addu      $a0, $s1, $zero
/* 513C0 800507C0 0C022CCC */  jal        func_8008B330
/* 513C4 800507C4 02002021 */   addu      $a0, $s0, $zero
/* 513C8 800507C8 24100001 */  addiu      $s0, $zero, 0x1
/* 513CC 800507CC 3C01802D */  lui        $at, %hi(D_802D0988)
/* 513D0 800507D0 A0300988 */  sb         $s0, %lo(D_802D0988)($at)
/* 513D4 800507D4 3C01800C */  lui        $at, %hi(D_800C52C0)
/* 513D8 800507D8 AC2052C0 */  sw         $zero, %lo(D_800C52C0)($at)
/* 513DC 800507DC 3C01800C */  lui        $at, %hi(D_800C52C4)
/* 513E0 800507E0 AC2052C4 */  sw         $zero, %lo(D_800C52C4)($at)
/* 513E4 800507E4 3C01800C */  lui        $at, %hi(D_800C52B8)
/* 513E8 800507E8 AC2052B8 */  sw         $zero, %lo(D_800C52B8)($at)
/* 513EC 800507EC 3C01800C */  lui        $at, %hi(D_800C52BC)
/* 513F0 800507F0 AC2052BC */  sw         $zero, %lo(D_800C52BC)($at)
/* 513F4 800507F4 3C01800C */  lui        $at, %hi(D_800C52C8)
/* 513F8 800507F8 AC2052C8 */  sw         $zero, %lo(D_800C52C8)($at)
/* 513FC 800507FC 3C01800C */  lui        $at, %hi(D_800C52CC)
/* 51400 80050800 0C013A39 */  jal        func_8004E8E4
/* 51404 80050804 AC2052CC */   sw        $zero, %lo(D_800C52CC)($at)
/* 51408 80050808 0C015FD2 */  jal        func_80057F48
/* 5140C 8005080C 00000000 */   nop
/* 51410 80050810 D6A60000 */  ldc1       $f6, 0x0($s5)
/* 51414 80050814 D6400000 */  ldc1       $f0, 0x0($s2)
/* 51418 80050818 3C018031 */  lui        $at, %hi(D_80312A18)
/* 5141C 8005081C D4242A18 */  ldc1       $f4, %lo(D_80312A18)($at)
/* 51420 80050820 46203181 */  sub.d      $f6, $f6, $f0
/* 51424 80050824 3C01802F */  lui        $at, %hi(D_802EF140)
/* 51428 80050828 D420F140 */  ldc1       $f0, %lo(D_802EF140)($at)
/* 5142C 8005082C 3C018031 */  lui        $at, %hi(D_80312A20)
/* 51430 80050830 D4222A20 */  ldc1       $f2, %lo(D_80312A20)($at)
/* 51434 80050834 46202101 */  sub.d      $f4, $f4, $f0
/* 51438 80050838 3C01802F */  lui        $at, %hi(D_802EF148)
/* 5143C 8005083C D420F148 */  ldc1       $f0, %lo(D_802EF148)($at)
/* 51440 80050840 46201081 */  sub.d      $f2, $f2, $f0
/* 51444 80050844 F6860000 */  sdc1       $f6, 0x0($s4)
/* 51448 80050848 3C01803F */  lui        $at, %hi(D_803EE588)
/* 5144C 8005084C F424E588 */  sdc1       $f4, %lo(D_803EE588)($at)
/* 51450 80050850 3C01803F */  lui        $at, %hi(D_803EE590)
/* 51454 80050854 F422E590 */  sdc1       $f2, %lo(D_803EE590)($at)
/* 51458 80050858 0C015C28 */  jal        func_800570A0
/* 5145C 8005085C 02602021 */   addu      $a0, $s3, $zero
/* 51460 80050860 3C01802B */  lui        $at, %hi(D_802AD920)
/* 51464 80050864 D420D920 */  ldc1       $f0, %lo(D_802AD920)($at)
/* 51468 80050868 3C01802B */  lui        $at, %hi(D_802AD9D8)
/* 5146C 8005086C D422D9D8 */  ldc1       $f2, %lo(D_802AD9D8)($at)
/* 51470 80050870 46220001 */  sub.d      $f0, $f0, $f2
/* 51474 80050874 3C01802B */  lui        $at, %hi(D_802AD920)
/* 51478 80050878 F420D920 */  sdc1       $f0, %lo(D_802AD920)($at)
/* 5147C 8005087C 0C013B32 */  jal        func_8004ECC8
/* 51480 80050880 02602021 */   addu      $a0, $s3, $zero
/* 51484 80050884 D6460000 */  ldc1       $f6, 0x0($s2)
/* 51488 80050888 3C01802B */  lui        $at, %hi(D_802AD898)
/* 5148C 8005088C D420D898 */  ldc1       $f0, %lo(D_802AD898)($at)
/* 51490 80050890 3C01802F */  lui        $at, %hi(D_802EF140)
/* 51494 80050894 D424F140 */  ldc1       $f4, %lo(D_802EF140)($at)
/* 51498 80050898 46203180 */  add.d      $f6, $f6, $f0
/* 5149C 8005089C 3C01802B */  lui        $at, %hi(D_802AD8A0)
/* 514A0 800508A0 D420D8A0 */  ldc1       $f0, %lo(D_802AD8A0)($at)
/* 514A4 800508A4 3C01802F */  lui        $at, %hi(D_802EF148)
/* 514A8 800508A8 D422F148 */  ldc1       $f2, %lo(D_802EF148)($at)
/* 514AC 800508AC 46202100 */  add.d      $f4, $f4, $f0
/* 514B0 800508B0 3C01802B */  lui        $at, %hi(D_802AD8A8)
/* 514B4 800508B4 D420D8A8 */  ldc1       $f0, %lo(D_802AD8A8)($at)
/* 514B8 800508B8 46201080 */  add.d      $f2, $f2, $f0
/* 514BC 800508BC 3C01802C */  lui        $at, %hi(D_802C7978)
/* 514C0 800508C0 A0307978 */  sb         $s0, %lo(D_802C7978)($at)
/* 514C4 800508C4 F6460000 */  sdc1       $f6, 0x0($s2)
/* 514C8 800508C8 3C01802F */  lui        $at, %hi(D_802EF140)
/* 514CC 800508CC F424F140 */  sdc1       $f4, %lo(D_802EF140)($at)
/* 514D0 800508D0 3C01802F */  lui        $at, %hi(D_802EF148)
/* 514D4 800508D4 F422F148 */  sdc1       $f2, %lo(D_802EF148)($at)
/* 514D8 800508D8 24020001 */  addiu      $v0, $zero, 0x1
.L800508DC:
/* 514DC 800508DC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 514E0 800508E0 8FB50024 */  lw         $s5, 0x24($sp)
/* 514E4 800508E4 8FB40020 */  lw         $s4, 0x20($sp)
/* 514E8 800508E8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 514EC 800508EC 8FB20018 */  lw         $s2, 0x18($sp)
/* 514F0 800508F0 8FB10014 */  lw         $s1, 0x14($sp)
/* 514F4 800508F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 514F8 800508F8 D7BC0050 */  ldc1       $f28, 0x50($sp)
/* 514FC 800508FC D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 51500 80050900 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 51504 80050904 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 51508 80050908 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 5150C 8005090C 03E00008 */  jr         $ra
/* 51510 80050910 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_80050914
/* 51514 80050914 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 51518 80050918 AFB20018 */  sw         $s2, 0x18($sp)
/* 5151C 8005091C 3C128031 */  lui        $s2, %hi(D_80312A10)
/* 51520 80050920 26522A10 */  addiu      $s2, $s2, %lo(D_80312A10)
/* 51524 80050924 AFB10014 */  sw         $s1, 0x14($sp)
/* 51528 80050928 3C11802F */  lui        $s1, %hi(D_802EF138)
/* 5152C 8005092C 2631F138 */  addiu      $s1, $s1, %lo(D_802EF138)
/* 51530 80050930 AFBF0020 */  sw         $ra, 0x20($sp)
/* 51534 80050934 AFB3001C */  sw         $s3, 0x1C($sp)
/* 51538 80050938 AFB00010 */  sw         $s0, 0x10($sp)
/* 5153C 8005093C F7BA0040 */  sdc1       $f26, 0x40($sp)
/* 51540 80050940 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 51544 80050944 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 51548 80050948 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 5154C 8005094C D6460000 */  ldc1       $f6, 0x0($s2)
/* 51550 80050950 D6200000 */  ldc1       $f0, 0x0($s1)
/* 51554 80050954 3C018031 */  lui        $at, %hi(D_80312A18)
/* 51558 80050958 D4242A18 */  ldc1       $f4, %lo(D_80312A18)($at)
/* 5155C 8005095C 46203181 */  sub.d      $f6, $f6, $f0
/* 51560 80050960 3C01802F */  lui        $at, %hi(D_802EF140)
/* 51564 80050964 D420F140 */  ldc1       $f0, %lo(D_802EF140)($at)
/* 51568 80050968 3C018031 */  lui        $at, %hi(D_80312A20)
/* 5156C 8005096C D4222A20 */  ldc1       $f2, %lo(D_80312A20)($at)
/* 51570 80050970 46202101 */  sub.d      $f4, $f4, $f0
/* 51574 80050974 3C01802F */  lui        $at, %hi(D_802EF148)
/* 51578 80050978 D420F148 */  ldc1       $f0, %lo(D_802EF148)($at)
/* 5157C 8005097C 3C10802B */  lui        $s0, %hi(D_802AD910)
/* 51580 80050980 2610D910 */  addiu      $s0, $s0, %lo(D_802AD910)
/* 51584 80050984 46201081 */  sub.d      $f2, $f2, $f0
/* 51588 80050988 3C13803F */  lui        $s3, %hi(D_803EE580)
/* 5158C 8005098C 2673E580 */  addiu      $s3, $s3, %lo(D_803EE580)
/* 51590 80050990 F6660000 */  sdc1       $f6, 0x0($s3)
/* 51594 80050994 3C01803F */  lui        $at, %hi(D_803EE588)
/* 51598 80050998 F424E588 */  sdc1       $f4, %lo(D_803EE588)($at)
/* 5159C 8005099C 3C01803F */  lui        $at, %hi(D_803EE590)
/* 515A0 800509A0 F422E590 */  sdc1       $f2, %lo(D_803EE590)($at)
/* 515A4 800509A4 0C015C28 */  jal        func_800570A0
/* 515A8 800509A8 02002021 */   addu      $a0, $s0, $zero
/* 515AC 800509AC D6560000 */  ldc1       $f22, 0x0($s2)
/* 515B0 800509B0 D6200000 */  ldc1       $f0, 0x0($s1)
/* 515B4 800509B4 3C018031 */  lui        $at, %hi(D_80312A18)
/* 515B8 800509B8 D4342A18 */  ldc1       $f20, %lo(D_80312A18)($at)
/* 515BC 800509BC 4620B581 */  sub.d      $f22, $f22, $f0
/* 515C0 800509C0 3C01802F */  lui        $at, %hi(D_802EF140)
/* 515C4 800509C4 D420F140 */  ldc1       $f0, %lo(D_802EF140)($at)
/* 515C8 800509C8 3C01802B */  lui        $at, %hi(D_802AD920)
/* 515CC 800509CC D438D920 */  ldc1       $f24, %lo(D_802AD920)($at)
/* 515D0 800509D0 4620A501 */  sub.d      $f20, $f20, $f0
/* 515D4 800509D4 3C01802D */  lui        $at, %hi(D_802D2E50)
/* 515D8 800509D8 D4222E50 */  ldc1       $f2, %lo(D_802D2E50)($at)
/* 515DC 800509DC 3C01802D */  lui        $at, %hi(D_802D2E58)
/* 515E0 800509E0 D4242E58 */  ldc1       $f4, %lo(D_802D2E58)($at)
/* 515E4 800509E4 3C01802D */  lui        $at, %hi(D_802D2E60)
/* 515E8 800509E8 D4262E60 */  ldc1       $f6, %lo(D_802D2E60)($at)
/* 515EC 800509EC 46201087 */  neg.d      $f2, $f2
/* 515F0 800509F0 3C01803F */  lui        $at, %hi(D_803F6BC8)
/* 515F4 800509F4 D42A6BC8 */  ldc1       $f10, %lo(D_803F6BC8)($at)
/* 515F8 800509F8 46202107 */  neg.d      $f4, $f4
/* 515FC 800509FC 3C01803F */  lui        $at, %hi(D_803F6BD0)
/* 51600 80050A00 D42E6BD0 */  ldc1       $f14, %lo(D_803F6BD0)($at)
/* 51604 80050A04 46203187 */  neg.d      $f6, $f6
/* 51608 80050A08 3C01803F */  lui        $at, %hi(D_803F6BD8)
/* 5160C 80050A0C D4326BD8 */  ldc1       $f18, %lo(D_803F6BD8)($at)
/* 51610 80050A10 46205287 */  neg.d      $f10, $f10
/* 51614 80050A14 3C01802F */  lui        $at, %hi(D_802F0CD0)
/* 51618 80050A18 D4300CD0 */  ldc1       $f16, %lo(D_802F0CD0)($at)
/* 5161C 80050A1C 46207387 */  neg.d      $f14, $f14
/* 51620 80050A20 3C01802F */  lui        $at, %hi(D_802F0CD8)
/* 51624 80050A24 D4280CD8 */  ldc1       $f8, %lo(D_802F0CD8)($at)
/* 51628 80050A28 46209487 */  neg.d      $f18, $f18
/* 5162C 80050A2C 3C01802F */  lui        $at, %hi(D_802F0CE0)
/* 51630 80050A30 D42C0CE0 */  ldc1       $f12, %lo(D_802F0CE0)($at)
/* 51634 80050A34 46208407 */  neg.d      $f16, $f16
/* 51638 80050A38 3C01802F */  lui        $at, %hi(D_802EF148)
/* 5163C 80050A3C D43AF148 */  ldc1       $f26, %lo(D_802EF148)($at)
/* 51640 80050A40 46204207 */  neg.d      $f8, $f8
/* 51644 80050A44 3C018031 */  lui        $at, %hi(D_80312A20)
/* 51648 80050A48 D4202A20 */  ldc1       $f0, %lo(D_80312A20)($at)
/* 5164C 80050A4C 46206307 */  neg.d      $f12, $f12
/* 51650 80050A50 3C01802B */  lui        $at, %hi(D_802AD9D8)
/* 51654 80050A54 F438D9D8 */  sdc1       $f24, %lo(D_802AD9D8)($at)
/* 51658 80050A58 3C01803F */  lui        $at, %hi(D_803ED070)
/* 5165C 80050A5C F422D070 */  sdc1       $f2, %lo(D_803ED070)($at)
/* 51660 80050A60 3C01803F */  lui        $at, %hi(D_803ED078)
/* 51664 80050A64 F424D078 */  sdc1       $f4, %lo(D_803ED078)($at)
/* 51668 80050A68 3C01803F */  lui        $at, %hi(D_803ED080)
/* 5166C 80050A6C F426D080 */  sdc1       $f6, %lo(D_803ED080)($at)
/* 51670 80050A70 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 51674 80050A74 F42A5C10 */  sdc1       $f10, %lo(D_803F5C10)($at)
/* 51678 80050A78 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 5167C 80050A7C F42E5C18 */  sdc1       $f14, %lo(D_803F5C18)($at)
/* 51680 80050A80 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 51684 80050A84 F4325C20 */  sdc1       $f18, %lo(D_803F5C20)($at)
/* 51688 80050A88 3C01803F */  lui        $at, %hi(D_803F6918)
/* 5168C 80050A8C F4306918 */  sdc1       $f16, %lo(D_803F6918)($at)
/* 51690 80050A90 3C01803F */  lui        $at, %hi(D_803F6920)
/* 51694 80050A94 F4286920 */  sdc1       $f8, %lo(D_803F6920)($at)
/* 51698 80050A98 463A0001 */  sub.d      $f0, $f0, $f26
/* 5169C 80050A9C 3C01803F */  lui        $at, %hi(D_803F6928)
/* 516A0 80050AA0 F42C6928 */  sdc1       $f12, %lo(D_803F6928)($at)
/* 516A4 80050AA4 F6760000 */  sdc1       $f22, 0x0($s3)
/* 516A8 80050AA8 3C01803F */  lui        $at, %hi(D_803EE588)
/* 516AC 80050AAC F434E588 */  sdc1       $f20, %lo(D_803EE588)($at)
/* 516B0 80050AB0 3C01803F */  lui        $at, %hi(D_803EE590)
/* 516B4 80050AB4 F420E590 */  sdc1       $f0, %lo(D_803EE590)($at)
/* 516B8 80050AB8 0C015C28 */  jal        func_800570A0
/* 516BC 80050ABC 02002021 */   addu      $a0, $s0, $zero
/* 516C0 80050AC0 3C01802B */  lui        $at, %hi(D_802AD920)
/* 516C4 80050AC4 D420D920 */  ldc1       $f0, %lo(D_802AD920)($at)
/* 516C8 80050AC8 3C01802B */  lui        $at, %hi(D_802AD9D8)
/* 516CC 80050ACC D422D9D8 */  ldc1       $f2, %lo(D_802AD9D8)($at)
/* 516D0 80050AD0 46220001 */  sub.d      $f0, $f0, $f2
/* 516D4 80050AD4 3C01802B */  lui        $at, %hi(D_802AD920)
/* 516D8 80050AD8 F420D920 */  sdc1       $f0, %lo(D_802AD920)($at)
/* 516DC 80050ADC 0C013B32 */  jal        func_8004ECC8
/* 516E0 80050AE0 02002021 */   addu      $a0, $s0, $zero
/* 516E4 80050AE4 D6240000 */  ldc1       $f4, 0x0($s1)
/* 516E8 80050AE8 3C01802B */  lui        $at, %hi(D_802AD898)
/* 516EC 80050AEC D420D898 */  ldc1       $f0, %lo(D_802AD898)($at)
/* 516F0 80050AF0 3C01802F */  lui        $at, %hi(D_802EF140)
/* 516F4 80050AF4 D422F140 */  ldc1       $f2, %lo(D_802EF140)($at)
/* 516F8 80050AF8 3C01802B */  lui        $at, %hi(D_802AD8A0)
/* 516FC 80050AFC D426D8A0 */  ldc1       $f6, %lo(D_802AD8A0)($at)
/* 51700 80050B00 46202100 */  add.d      $f4, $f4, $f0
/* 51704 80050B04 3C01802B */  lui        $at, %hi(D_802AD8A8)
/* 51708 80050B08 D428D8A8 */  ldc1       $f8, %lo(D_802AD8A8)($at)
/* 5170C 80050B0C 3C01802F */  lui        $at, %hi(D_802EF148)
/* 51710 80050B10 D420F148 */  ldc1       $f0, %lo(D_802EF148)($at)
/* 51714 80050B14 24020001 */  addiu      $v0, $zero, 0x1
/* 51718 80050B18 46261080 */  add.d      $f2, $f2, $f6
/* 5171C 80050B1C 3C01802D */  lui        $at, %hi(D_802D0988)
/* 51720 80050B20 A0220988 */  sb         $v0, %lo(D_802D0988)($at)
/* 51724 80050B24 3C01802C */  lui        $at, %hi(D_802C7978)
/* 51728 80050B28 A0227978 */  sb         $v0, %lo(D_802C7978)($at)
/* 5172C 80050B2C 24020001 */  addiu      $v0, $zero, 0x1
/* 51730 80050B30 46280000 */  add.d      $f0, $f0, $f8
/* 51734 80050B34 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 51738 80050B38 AC2252A0 */  sw         $v0, %lo(D_800C52A0)($at)
/* 5173C 80050B3C F6240000 */  sdc1       $f4, 0x0($s1)
/* 51740 80050B40 3C01802F */  lui        $at, %hi(D_802EF140)
/* 51744 80050B44 F422F140 */  sdc1       $f2, %lo(D_802EF140)($at)
/* 51748 80050B48 3C01802F */  lui        $at, %hi(D_802EF148)
/* 5174C 80050B4C 0C015D12 */  jal        func_80057448
/* 51750 80050B50 F420F148 */   sdc1      $f0, %lo(D_802EF148)($at)
/* 51754 80050B54 8FBF0020 */  lw         $ra, 0x20($sp)
/* 51758 80050B58 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5175C 80050B5C 8FB20018 */  lw         $s2, 0x18($sp)
/* 51760 80050B60 8FB10014 */  lw         $s1, 0x14($sp)
/* 51764 80050B64 8FB00010 */  lw         $s0, 0x10($sp)
/* 51768 80050B68 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* 5176C 80050B6C D7B80038 */  ldc1       $f24, 0x38($sp)
/* 51770 80050B70 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 51774 80050B74 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 51778 80050B78 03E00008 */  jr         $ra
/* 5177C 80050B7C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80050B80
/* 51780 80050B80 3C01802D */  lui        $at, %hi(D_802D2E50)
/* 51784 80050B84 D42C2E50 */  ldc1       $f12, %lo(D_802D2E50)($at)
/* 51788 80050B88 3C01803F */  lui        $at, %hi(D_803ED070)
/* 5178C 80050B8C D420D070 */  ldc1       $f0, %lo(D_803ED070)($at)
/* 51790 80050B90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 51794 80050B94 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 51798 80050B98 46206300 */  add.d      $f12, $f12, $f0
/* 5179C 80050B9C 3C01800D */  lui        $at, %hi(D_800D4040)
/* 517A0 80050BA0 D4344040 */  ldc1       $f20, %lo(D_800D4040)($at)
/* 517A4 80050BA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 517A8 80050BA8 0C013EF2 */  jal        func_8004FBC8
/* 517AC 80050BAC 46346302 */   mul.d     $f12, $f12, $f20
/* 517B0 80050BB0 1040004A */  beqz       $v0, .L80050CDC
/* 517B4 80050BB4 00001021 */   addu      $v0, $zero, $zero
/* 517B8 80050BB8 3C01802D */  lui        $at, %hi(D_802D2E58)
/* 517BC 80050BBC D42C2E58 */  ldc1       $f12, %lo(D_802D2E58)($at)
/* 517C0 80050BC0 3C01803F */  lui        $at, %hi(D_803ED078)
/* 517C4 80050BC4 D420D078 */  ldc1       $f0, %lo(D_803ED078)($at)
/* 517C8 80050BC8 46206300 */  add.d      $f12, $f12, $f0
/* 517CC 80050BCC 0C013EF2 */  jal        func_8004FBC8
/* 517D0 80050BD0 46346302 */   mul.d     $f12, $f12, $f20
/* 517D4 80050BD4 10400041 */  beqz       $v0, .L80050CDC
/* 517D8 80050BD8 00001021 */   addu      $v0, $zero, $zero
/* 517DC 80050BDC 3C01802D */  lui        $at, %hi(D_802D2E60)
/* 517E0 80050BE0 D42C2E60 */  ldc1       $f12, %lo(D_802D2E60)($at)
/* 517E4 80050BE4 3C01803F */  lui        $at, %hi(D_803ED080)
/* 517E8 80050BE8 D420D080 */  ldc1       $f0, %lo(D_803ED080)($at)
/* 517EC 80050BEC 46206300 */  add.d      $f12, $f12, $f0
/* 517F0 80050BF0 0C013EF2 */  jal        func_8004FBC8
/* 517F4 80050BF4 46346302 */   mul.d     $f12, $f12, $f20
/* 517F8 80050BF8 10400038 */  beqz       $v0, .L80050CDC
/* 517FC 80050BFC 00001021 */   addu      $v0, $zero, $zero
/* 51800 80050C00 3C01803F */  lui        $at, %hi(D_803F6BC8)
/* 51804 80050C04 D42C6BC8 */  ldc1       $f12, %lo(D_803F6BC8)($at)
/* 51808 80050C08 3C01803F */  lui        $at, %hi(D_803F5C10)
/* 5180C 80050C0C D4205C10 */  ldc1       $f0, %lo(D_803F5C10)($at)
/* 51810 80050C10 46206300 */  add.d      $f12, $f12, $f0
/* 51814 80050C14 0C013EF2 */  jal        func_8004FBC8
/* 51818 80050C18 46346302 */   mul.d     $f12, $f12, $f20
/* 5181C 80050C1C 1040002F */  beqz       $v0, .L80050CDC
/* 51820 80050C20 00001021 */   addu      $v0, $zero, $zero
/* 51824 80050C24 3C01803F */  lui        $at, %hi(D_803F6BD0)
/* 51828 80050C28 D42C6BD0 */  ldc1       $f12, %lo(D_803F6BD0)($at)
/* 5182C 80050C2C 3C01803F */  lui        $at, %hi(D_803F5C18)
/* 51830 80050C30 D4205C18 */  ldc1       $f0, %lo(D_803F5C18)($at)
/* 51834 80050C34 46206300 */  add.d      $f12, $f12, $f0
/* 51838 80050C38 0C013EF2 */  jal        func_8004FBC8
/* 5183C 80050C3C 46346302 */   mul.d     $f12, $f12, $f20
/* 51840 80050C40 10400026 */  beqz       $v0, .L80050CDC
/* 51844 80050C44 00001021 */   addu      $v0, $zero, $zero
/* 51848 80050C48 3C01803F */  lui        $at, %hi(D_803F6BD8)
/* 5184C 80050C4C D42C6BD8 */  ldc1       $f12, %lo(D_803F6BD8)($at)
/* 51850 80050C50 3C01803F */  lui        $at, %hi(D_803F5C20)
/* 51854 80050C54 D4205C20 */  ldc1       $f0, %lo(D_803F5C20)($at)
/* 51858 80050C58 46206300 */  add.d      $f12, $f12, $f0
/* 5185C 80050C5C 0C013EF2 */  jal        func_8004FBC8
/* 51860 80050C60 46346302 */   mul.d     $f12, $f12, $f20
/* 51864 80050C64 1040001D */  beqz       $v0, .L80050CDC
/* 51868 80050C68 00001021 */   addu      $v0, $zero, $zero
/* 5186C 80050C6C 3C01802F */  lui        $at, %hi(D_802F0CD0)
/* 51870 80050C70 D42C0CD0 */  ldc1       $f12, %lo(D_802F0CD0)($at)
/* 51874 80050C74 3C01803F */  lui        $at, %hi(D_803F6918)
/* 51878 80050C78 D4206918 */  ldc1       $f0, %lo(D_803F6918)($at)
/* 5187C 80050C7C 46206300 */  add.d      $f12, $f12, $f0
/* 51880 80050C80 0C013EF2 */  jal        func_8004FBC8
/* 51884 80050C84 46346302 */   mul.d     $f12, $f12, $f20
/* 51888 80050C88 10400014 */  beqz       $v0, .L80050CDC
/* 5188C 80050C8C 00001021 */   addu      $v0, $zero, $zero
/* 51890 80050C90 3C01802F */  lui        $at, %hi(D_802F0CD8)
/* 51894 80050C94 D42C0CD8 */  ldc1       $f12, %lo(D_802F0CD8)($at)
/* 51898 80050C98 3C01803F */  lui        $at, %hi(D_803F6920)
/* 5189C 80050C9C D4206920 */  ldc1       $f0, %lo(D_803F6920)($at)
/* 518A0 80050CA0 46206300 */  add.d      $f12, $f12, $f0
/* 518A4 80050CA4 0C013EF2 */  jal        func_8004FBC8
/* 518A8 80050CA8 46346302 */   mul.d     $f12, $f12, $f20
/* 518AC 80050CAC 1040000B */  beqz       $v0, .L80050CDC
/* 518B0 80050CB0 00001021 */   addu      $v0, $zero, $zero
/* 518B4 80050CB4 3C01802F */  lui        $at, %hi(D_802F0CE0)
/* 518B8 80050CB8 D42C0CE0 */  ldc1       $f12, %lo(D_802F0CE0)($at)
/* 518BC 80050CBC 3C01803F */  lui        $at, %hi(D_803F6928)
/* 518C0 80050CC0 D4206928 */  ldc1       $f0, %lo(D_803F6928)($at)
/* 518C4 80050CC4 46206300 */  add.d      $f12, $f12, $f0
/* 518C8 80050CC8 0C013EF2 */  jal        func_8004FBC8
/* 518CC 80050CCC 46346302 */   mul.d     $f12, $f12, $f20
/* 518D0 80050CD0 14400002 */  bnez       $v0, .L80050CDC
/* 518D4 80050CD4 24020001 */   addiu     $v0, $zero, 0x1
/* 518D8 80050CD8 00001021 */  addu       $v0, $zero, $zero
.L80050CDC:
/* 518DC 80050CDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 518E0 80050CE0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 518E4 80050CE4 03E00008 */  jr         $ra
/* 518E8 80050CE8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80050CEC
/* 518EC 80050CEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 518F0 80050CF0 10800006 */  beqz       $a0, .L80050D0C
/* 518F4 80050CF4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 518F8 80050CF8 0C013F4B */  jal        func_8004FD2C
/* 518FC 80050CFC 00000000 */   nop
/* 51900 80050D00 0002102B */  sltu       $v0, $zero, $v0
/* 51904 80050D04 3C01802B */  lui        $at, %hi(D_802AD864)
/* 51908 80050D08 AC22D864 */  sw         $v0, %lo(D_802AD864)($at)
.L80050D0C:
/* 5190C 80050D0C 3C03802B */  lui        $v1, %hi(D_802AD864)
/* 51910 80050D10 8C63D864 */  lw         $v1, %lo(D_802AD864)($v1)
/* 51914 80050D14 10600006 */  beqz       $v1, .L80050D30
/* 51918 80050D18 00000000 */   nop
/* 5191C 80050D1C 24020001 */  addiu      $v0, $zero, 0x1
/* 51920 80050D20 1062000C */  beq        $v1, $v0, .L80050D54
/* 51924 80050D24 00000000 */   nop
/* 51928 80050D28 0801435A */  j          .L80050D68
/* 5192C 80050D2C 00000000 */   nop
.L80050D30:
/* 51930 80050D30 0C0140D4 */  jal        func_80050350
/* 51934 80050D34 00000000 */   nop
/* 51938 80050D38 0002102B */  sltu       $v0, $zero, $v0
/* 5193C 80050D3C 3C01802B */  lui        $at, %hi(D_802AD864)
/* 51940 80050D40 AC22D864 */  sw         $v0, %lo(D_802AD864)($at)
/* 51944 80050D44 24020001 */  addiu      $v0, $zero, 0x1
/* 51948 80050D48 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 5194C 80050D4C 0801435A */  j          .L80050D68
/* 51950 80050D50 AC2252A0 */   sw        $v0, %lo(D_800C52A0)($at)
.L80050D54:
/* 51954 80050D54 0C014245 */  jal        func_80050914
/* 51958 80050D58 00000000 */   nop
/* 5195C 80050D5C 24020002 */  addiu      $v0, $zero, 0x2
/* 51960 80050D60 3C01802B */  lui        $at, %hi(D_802AD864)
/* 51964 80050D64 AC22D864 */  sw         $v0, %lo(D_802AD864)($at)
.L80050D68:
/* 51968 80050D68 3C02802B */  lui        $v0, %hi(D_802AD864)
/* 5196C 80050D6C 8C42D864 */  lw         $v0, %lo(D_802AD864)($v0)
/* 51970 80050D70 24030001 */  addiu      $v1, $zero, 0x1
/* 51974 80050D74 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 51978 80050D78 AC2306E8 */  sw         $v1, %lo(D_802F06E8)($at)
/* 5197C 80050D7C 38420002 */  xori       $v0, $v0, 0x2
/* 51980 80050D80 8FBF0010 */  lw         $ra, 0x10($sp)
/* 51984 80050D84 2C420001 */  sltiu      $v0, $v0, 0x1
/* 51988 80050D88 03E00008 */  jr         $ra
/* 5198C 80050D8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80050D90
/* 51990 80050D90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51994 80050D94 00803021 */  addu       $a2, $a0, $zero
/* 51998 80050D98 10C00031 */  beqz       $a2, .L80050E60
/* 5199C 80050D9C AFBF0010 */   sw        $ra, 0x10($sp)
/* 519A0 80050DA0 3C05802F */  lui        $a1, %hi(D_802EF5F8)
/* 519A4 80050DA4 24A5F5F8 */  addiu      $a1, $a1, %lo(D_802EF5F8)
/* 519A8 80050DA8 3C04802F */  lui        $a0, %hi(D_802F0CD0)
/* 519AC 80050DAC 24840CD0 */  addiu      $a0, $a0, %lo(D_802F0CD0)
/* 519B0 80050DB0 8CA20000 */  lw         $v0, 0x0($a1)
/* 519B4 80050DB4 8CA30004 */  lw         $v1, 0x4($a1)
/* 519B8 80050DB8 AC820000 */  sw         $v0, 0x0($a0)
/* 519BC 80050DBC AC830004 */  sw         $v1, 0x4($a0)
/* 519C0 80050DC0 8CA20008 */  lw         $v0, 0x8($a1)
/* 519C4 80050DC4 8CA3000C */  lw         $v1, 0xC($a1)
/* 519C8 80050DC8 AC820008 */  sw         $v0, 0x8($a0)
/* 519CC 80050DCC AC83000C */  sw         $v1, 0xC($a0)
/* 519D0 80050DD0 8CA20010 */  lw         $v0, 0x10($a1)
/* 519D4 80050DD4 8CA30014 */  lw         $v1, 0x14($a1)
/* 519D8 80050DD8 AC820010 */  sw         $v0, 0x10($a0)
/* 519DC 80050DDC AC830014 */  sw         $v1, 0x14($a0)
/* 519E0 80050DE0 3C05802F */  lui        $a1, %hi(D_802EF5C8)
/* 519E4 80050DE4 24A5F5C8 */  addiu      $a1, $a1, %lo(D_802EF5C8)
/* 519E8 80050DE8 3C04802D */  lui        $a0, %hi(D_802D2E50)
/* 519EC 80050DEC 24842E50 */  addiu      $a0, $a0, %lo(D_802D2E50)
/* 519F0 80050DF0 8CA20000 */  lw         $v0, 0x0($a1)
/* 519F4 80050DF4 8CA30004 */  lw         $v1, 0x4($a1)
/* 519F8 80050DF8 AC820000 */  sw         $v0, 0x0($a0)
/* 519FC 80050DFC AC830004 */  sw         $v1, 0x4($a0)
/* 51A00 80050E00 8CA20008 */  lw         $v0, 0x8($a1)
/* 51A04 80050E04 8CA3000C */  lw         $v1, 0xC($a1)
/* 51A08 80050E08 AC820008 */  sw         $v0, 0x8($a0)
/* 51A0C 80050E0C AC83000C */  sw         $v1, 0xC($a0)
/* 51A10 80050E10 8CA20010 */  lw         $v0, 0x10($a1)
/* 51A14 80050E14 8CA30014 */  lw         $v1, 0x14($a1)
/* 51A18 80050E18 AC820010 */  sw         $v0, 0x10($a0)
/* 51A1C 80050E1C AC830014 */  sw         $v1, 0x14($a0)
/* 51A20 80050E20 3C05802F */  lui        $a1, %hi(D_802EF5E0)
/* 51A24 80050E24 24A5F5E0 */  addiu      $a1, $a1, %lo(D_802EF5E0)
/* 51A28 80050E28 3C04803F */  lui        $a0, %hi(D_803F6BC8)
/* 51A2C 80050E2C 24846BC8 */  addiu      $a0, $a0, %lo(D_803F6BC8)
/* 51A30 80050E30 8CA20000 */  lw         $v0, 0x0($a1)
/* 51A34 80050E34 8CA30004 */  lw         $v1, 0x4($a1)
/* 51A38 80050E38 AC820000 */  sw         $v0, 0x0($a0)
/* 51A3C 80050E3C AC830004 */  sw         $v1, 0x4($a0)
/* 51A40 80050E40 8CA20008 */  lw         $v0, 0x8($a1)
/* 51A44 80050E44 8CA3000C */  lw         $v1, 0xC($a1)
/* 51A48 80050E48 AC820008 */  sw         $v0, 0x8($a0)
/* 51A4C 80050E4C AC83000C */  sw         $v1, 0xC($a0)
/* 51A50 80050E50 8CA20010 */  lw         $v0, 0x10($a1)
/* 51A54 80050E54 8CA30014 */  lw         $v1, 0x14($a1)
/* 51A58 80050E58 AC820010 */  sw         $v0, 0x10($a0)
/* 51A5C 80050E5C AC830014 */  sw         $v1, 0x14($a0)
.L80050E60:
/* 51A60 80050E60 0C01433B */  jal        func_80050CEC
/* 51A64 80050E64 00C02021 */   addu      $a0, $a2, $zero
/* 51A68 80050E68 8FBF0010 */  lw         $ra, 0x10($sp)
/* 51A6C 80050E6C 03E00008 */  jr         $ra
/* 51A70 80050E70 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80050E74
/* 51A74 80050E74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51A78 80050E78 3C05802F */  lui        $a1, %hi(D_802EF5F8)
/* 51A7C 80050E7C 24A5F5F8 */  addiu      $a1, $a1, %lo(D_802EF5F8)
/* 51A80 80050E80 3C04802F */  lui        $a0, %hi(D_802F0CD0)
/* 51A84 80050E84 24840CD0 */  addiu      $a0, $a0, %lo(D_802F0CD0)
/* 51A88 80050E88 8CA20000 */  lw         $v0, 0x0($a1)
/* 51A8C 80050E8C 8CA30004 */  lw         $v1, 0x4($a1)
/* 51A90 80050E90 AC820000 */  sw         $v0, 0x0($a0)
/* 51A94 80050E94 AC830004 */  sw         $v1, 0x4($a0)
/* 51A98 80050E98 8CA20008 */  lw         $v0, 0x8($a1)
/* 51A9C 80050E9C 8CA3000C */  lw         $v1, 0xC($a1)
/* 51AA0 80050EA0 AC820008 */  sw         $v0, 0x8($a0)
/* 51AA4 80050EA4 AC83000C */  sw         $v1, 0xC($a0)
/* 51AA8 80050EA8 8CA20010 */  lw         $v0, 0x10($a1)
/* 51AAC 80050EAC 8CA30014 */  lw         $v1, 0x14($a1)
/* 51AB0 80050EB0 AC820010 */  sw         $v0, 0x10($a0)
/* 51AB4 80050EB4 AC830014 */  sw         $v1, 0x14($a0)
/* 51AB8 80050EB8 3C05802F */  lui        $a1, %hi(D_802EF5C8)
/* 51ABC 80050EBC 24A5F5C8 */  addiu      $a1, $a1, %lo(D_802EF5C8)
/* 51AC0 80050EC0 3C04802D */  lui        $a0, %hi(D_802D2E50)
/* 51AC4 80050EC4 24842E50 */  addiu      $a0, $a0, %lo(D_802D2E50)
/* 51AC8 80050EC8 8CA20000 */  lw         $v0, 0x0($a1)
/* 51ACC 80050ECC 8CA30004 */  lw         $v1, 0x4($a1)
/* 51AD0 80050ED0 AC820000 */  sw         $v0, 0x0($a0)
/* 51AD4 80050ED4 AC830004 */  sw         $v1, 0x4($a0)
/* 51AD8 80050ED8 8CA20008 */  lw         $v0, 0x8($a1)
/* 51ADC 80050EDC 8CA3000C */  lw         $v1, 0xC($a1)
/* 51AE0 80050EE0 AC820008 */  sw         $v0, 0x8($a0)
/* 51AE4 80050EE4 AC83000C */  sw         $v1, 0xC($a0)
/* 51AE8 80050EE8 8CA20010 */  lw         $v0, 0x10($a1)
/* 51AEC 80050EEC 8CA30014 */  lw         $v1, 0x14($a1)
/* 51AF0 80050EF0 AC820010 */  sw         $v0, 0x10($a0)
/* 51AF4 80050EF4 AC830014 */  sw         $v1, 0x14($a0)
/* 51AF8 80050EF8 3C05802F */  lui        $a1, %hi(D_802EF5E0)
/* 51AFC 80050EFC 24A5F5E0 */  addiu      $a1, $a1, %lo(D_802EF5E0)
/* 51B00 80050F00 3C04803F */  lui        $a0, %hi(D_803F6BC8)
/* 51B04 80050F04 24846BC8 */  addiu      $a0, $a0, %lo(D_803F6BC8)
/* 51B08 80050F08 8CA20000 */  lw         $v0, 0x0($a1)
/* 51B0C 80050F0C 8CA30004 */  lw         $v1, 0x4($a1)
/* 51B10 80050F10 AC820000 */  sw         $v0, 0x0($a0)
/* 51B14 80050F14 AC830004 */  sw         $v1, 0x4($a0)
/* 51B18 80050F18 8CA20008 */  lw         $v0, 0x8($a1)
/* 51B1C 80050F1C 8CA3000C */  lw         $v1, 0xC($a1)
/* 51B20 80050F20 AC820008 */  sw         $v0, 0x8($a0)
/* 51B24 80050F24 AC83000C */  sw         $v1, 0xC($a0)
/* 51B28 80050F28 8CA20010 */  lw         $v0, 0x10($a1)
/* 51B2C 80050F2C 8CA30014 */  lw         $v1, 0x14($a1)
/* 51B30 80050F30 AC820010 */  sw         $v0, 0x10($a0)
/* 51B34 80050F34 AC830014 */  sw         $v1, 0x14($a0)
/* 51B38 80050F38 AFBF0010 */  sw         $ra, 0x10($sp)
/* 51B3C 80050F3C 0C013F4B */  jal        func_8004FD2C
/* 51B40 80050F40 00000000 */   nop
/* 51B44 80050F44 0C014245 */  jal        func_80050914
/* 51B48 80050F48 00000000 */   nop
/* 51B4C 80050F4C 24020001 */  addiu      $v0, $zero, 0x1
/* 51B50 80050F50 3C01802C */  lui        $at, %hi(D_802C7978)
/* 51B54 80050F54 A0227978 */  sb         $v0, %lo(D_802C7978)($at)
/* 51B58 80050F58 8FBF0010 */  lw         $ra, 0x10($sp)
/* 51B5C 80050F5C 03E00008 */  jr         $ra
/* 51B60 80050F60 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80050F64
/* 51B64 80050F64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51B68 80050F68 00803021 */  addu       $a2, $a0, $zero
/* 51B6C 80050F6C 10C00031 */  beqz       $a2, .L80051034
/* 51B70 80050F70 AFBF0010 */   sw        $ra, 0x10($sp)
/* 51B74 80050F74 3C05802F */  lui        $a1, %hi(D_802EF6B8)
/* 51B78 80050F78 24A5F6B8 */  addiu      $a1, $a1, %lo(D_802EF6B8)
/* 51B7C 80050F7C 3C04802F */  lui        $a0, %hi(D_802F0CD0)
/* 51B80 80050F80 24840CD0 */  addiu      $a0, $a0, %lo(D_802F0CD0)
/* 51B84 80050F84 8CA20000 */  lw         $v0, 0x0($a1)
/* 51B88 80050F88 8CA30004 */  lw         $v1, 0x4($a1)
/* 51B8C 80050F8C AC820000 */  sw         $v0, 0x0($a0)
/* 51B90 80050F90 AC830004 */  sw         $v1, 0x4($a0)
/* 51B94 80050F94 8CA20008 */  lw         $v0, 0x8($a1)
/* 51B98 80050F98 8CA3000C */  lw         $v1, 0xC($a1)
/* 51B9C 80050F9C AC820008 */  sw         $v0, 0x8($a0)
/* 51BA0 80050FA0 AC83000C */  sw         $v1, 0xC($a0)
/* 51BA4 80050FA4 8CA20010 */  lw         $v0, 0x10($a1)
/* 51BA8 80050FA8 8CA30014 */  lw         $v1, 0x14($a1)
/* 51BAC 80050FAC AC820010 */  sw         $v0, 0x10($a0)
/* 51BB0 80050FB0 AC830014 */  sw         $v1, 0x14($a0)
/* 51BB4 80050FB4 3C05802F */  lui        $a1, %hi(D_802EF688)
/* 51BB8 80050FB8 24A5F688 */  addiu      $a1, $a1, %lo(D_802EF688)
/* 51BBC 80050FBC 3C04802D */  lui        $a0, %hi(D_802D2E50)
/* 51BC0 80050FC0 24842E50 */  addiu      $a0, $a0, %lo(D_802D2E50)
/* 51BC4 80050FC4 8CA20000 */  lw         $v0, 0x0($a1)
/* 51BC8 80050FC8 8CA30004 */  lw         $v1, 0x4($a1)
/* 51BCC 80050FCC AC820000 */  sw         $v0, 0x0($a0)
/* 51BD0 80050FD0 AC830004 */  sw         $v1, 0x4($a0)
/* 51BD4 80050FD4 8CA20008 */  lw         $v0, 0x8($a1)
/* 51BD8 80050FD8 8CA3000C */  lw         $v1, 0xC($a1)
/* 51BDC 80050FDC AC820008 */  sw         $v0, 0x8($a0)
/* 51BE0 80050FE0 AC83000C */  sw         $v1, 0xC($a0)
/* 51BE4 80050FE4 8CA20010 */  lw         $v0, 0x10($a1)
/* 51BE8 80050FE8 8CA30014 */  lw         $v1, 0x14($a1)
/* 51BEC 80050FEC AC820010 */  sw         $v0, 0x10($a0)
/* 51BF0 80050FF0 AC830014 */  sw         $v1, 0x14($a0)
/* 51BF4 80050FF4 3C05802F */  lui        $a1, %hi(D_802EF6A0)
/* 51BF8 80050FF8 24A5F6A0 */  addiu      $a1, $a1, %lo(D_802EF6A0)
/* 51BFC 80050FFC 3C04803F */  lui        $a0, %hi(D_803F6BC8)
/* 51C00 80051000 24846BC8 */  addiu      $a0, $a0, %lo(D_803F6BC8)
/* 51C04 80051004 8CA20000 */  lw         $v0, 0x0($a1)
/* 51C08 80051008 8CA30004 */  lw         $v1, 0x4($a1)
/* 51C0C 8005100C AC820000 */  sw         $v0, 0x0($a0)
/* 51C10 80051010 AC830004 */  sw         $v1, 0x4($a0)
/* 51C14 80051014 8CA20008 */  lw         $v0, 0x8($a1)
/* 51C18 80051018 8CA3000C */  lw         $v1, 0xC($a1)
/* 51C1C 8005101C AC820008 */  sw         $v0, 0x8($a0)
/* 51C20 80051020 AC83000C */  sw         $v1, 0xC($a0)
/* 51C24 80051024 8CA20010 */  lw         $v0, 0x10($a1)
/* 51C28 80051028 8CA30014 */  lw         $v1, 0x14($a1)
/* 51C2C 8005102C AC820010 */  sw         $v0, 0x10($a0)
/* 51C30 80051030 AC830014 */  sw         $v1, 0x14($a0)
.L80051034:
/* 51C34 80051034 0C01433B */  jal        func_80050CEC
/* 51C38 80051038 00C02021 */   addu      $a0, $a2, $zero
/* 51C3C 8005103C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 51C40 80051040 03E00008 */  jr         $ra
/* 51C44 80051044 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80051048
/* 51C48 80051048 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51C4C 8005104C 00803021 */  addu       $a2, $a0, $zero
/* 51C50 80051050 10C00031 */  beqz       $a2, .L80051118
/* 51C54 80051054 AFBF0010 */   sw        $ra, 0x10($sp)
/* 51C58 80051058 3C05802F */  lui        $a1, %hi(D_802EF700)
/* 51C5C 8005105C 24A5F700 */  addiu      $a1, $a1, %lo(D_802EF700)
/* 51C60 80051060 3C04802F */  lui        $a0, %hi(D_802F0CD0)
/* 51C64 80051064 24840CD0 */  addiu      $a0, $a0, %lo(D_802F0CD0)
/* 51C68 80051068 8CA20000 */  lw         $v0, 0x0($a1)
/* 51C6C 8005106C 8CA30004 */  lw         $v1, 0x4($a1)
/* 51C70 80051070 AC820000 */  sw         $v0, 0x0($a0)
/* 51C74 80051074 AC830004 */  sw         $v1, 0x4($a0)
/* 51C78 80051078 8CA20008 */  lw         $v0, 0x8($a1)
/* 51C7C 8005107C 8CA3000C */  lw         $v1, 0xC($a1)
/* 51C80 80051080 AC820008 */  sw         $v0, 0x8($a0)
/* 51C84 80051084 AC83000C */  sw         $v1, 0xC($a0)
/* 51C88 80051088 8CA20010 */  lw         $v0, 0x10($a1)
/* 51C8C 8005108C 8CA30014 */  lw         $v1, 0x14($a1)
/* 51C90 80051090 AC820010 */  sw         $v0, 0x10($a0)
/* 51C94 80051094 AC830014 */  sw         $v1, 0x14($a0)
/* 51C98 80051098 3C05802F */  lui        $a1, %hi(D_802EF6D0)
/* 51C9C 8005109C 24A5F6D0 */  addiu      $a1, $a1, %lo(D_802EF6D0)
/* 51CA0 800510A0 3C04802D */  lui        $a0, %hi(D_802D2E50)
/* 51CA4 800510A4 24842E50 */  addiu      $a0, $a0, %lo(D_802D2E50)
/* 51CA8 800510A8 8CA20000 */  lw         $v0, 0x0($a1)
/* 51CAC 800510AC 8CA30004 */  lw         $v1, 0x4($a1)
/* 51CB0 800510B0 AC820000 */  sw         $v0, 0x0($a0)
/* 51CB4 800510B4 AC830004 */  sw         $v1, 0x4($a0)
/* 51CB8 800510B8 8CA20008 */  lw         $v0, 0x8($a1)
/* 51CBC 800510BC 8CA3000C */  lw         $v1, 0xC($a1)
/* 51CC0 800510C0 AC820008 */  sw         $v0, 0x8($a0)
/* 51CC4 800510C4 AC83000C */  sw         $v1, 0xC($a0)
/* 51CC8 800510C8 8CA20010 */  lw         $v0, 0x10($a1)
/* 51CCC 800510CC 8CA30014 */  lw         $v1, 0x14($a1)
/* 51CD0 800510D0 AC820010 */  sw         $v0, 0x10($a0)
/* 51CD4 800510D4 AC830014 */  sw         $v1, 0x14($a0)
/* 51CD8 800510D8 3C05802F */  lui        $a1, %hi(D_802EF6E8)
/* 51CDC 800510DC 24A5F6E8 */  addiu      $a1, $a1, %lo(D_802EF6E8)
/* 51CE0 800510E0 3C04803F */  lui        $a0, %hi(D_803F6BC8)
/* 51CE4 800510E4 24846BC8 */  addiu      $a0, $a0, %lo(D_803F6BC8)
/* 51CE8 800510E8 8CA20000 */  lw         $v0, 0x0($a1)
/* 51CEC 800510EC 8CA30004 */  lw         $v1, 0x4($a1)
/* 51CF0 800510F0 AC820000 */  sw         $v0, 0x0($a0)
/* 51CF4 800510F4 AC830004 */  sw         $v1, 0x4($a0)
/* 51CF8 800510F8 8CA20008 */  lw         $v0, 0x8($a1)
/* 51CFC 800510FC 8CA3000C */  lw         $v1, 0xC($a1)
/* 51D00 80051100 AC820008 */  sw         $v0, 0x8($a0)
/* 51D04 80051104 AC83000C */  sw         $v1, 0xC($a0)
/* 51D08 80051108 8CA20010 */  lw         $v0, 0x10($a1)
/* 51D0C 8005110C 8CA30014 */  lw         $v1, 0x14($a1)
/* 51D10 80051110 AC820010 */  sw         $v0, 0x10($a0)
/* 51D14 80051114 AC830014 */  sw         $v1, 0x14($a0)
.L80051118:
/* 51D18 80051118 0C01433B */  jal        func_80050CEC
/* 51D1C 8005111C 00C02021 */   addu      $a0, $a2, $zero
/* 51D20 80051120 8FBF0010 */  lw         $ra, 0x10($sp)
/* 51D24 80051124 03E00008 */  jr         $ra
/* 51D28 80051128 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005112C
/* 51D2C 8005112C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51D30 80051130 1080001C */  beqz       $a0, .L800511A4
/* 51D34 80051134 AFBF0010 */   sw        $ra, 0x10($sp)
/* 51D38 80051138 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 51D3C 8005113C D4262AC0 */  ldc1       $f6, %lo(D_80312AC0)($at)
/* 51D40 80051140 3C01802D */  lui        $at, %hi(D_802C8AB8)
/* 51D44 80051144 D4228AB8 */  ldc1       $f2, %lo(D_802C8AB8)($at)
/* 51D48 80051148 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 51D4C 8005114C D4242AD0 */  ldc1       $f4, %lo(D_80312AD0)($at)
/* 51D50 80051150 46261081 */  sub.d      $f2, $f2, $f6
/* 51D54 80051154 3C01802D */  lui        $at, %hi(D_802C8AC0)
/* 51D58 80051158 D4208AC0 */  ldc1       $f0, %lo(D_802C8AC0)($at)
/* 51D5C 8005115C 46240001 */  sub.d      $f0, $f0, $f4
/* 51D60 80051160 3C01802B */  lui        $at, %hi(D_802AD8F8)
/* 51D64 80051164 F426D8F8 */  sdc1       $f6, %lo(D_802AD8F8)($at)
/* 51D68 80051168 3C01802B */  lui        $at, %hi(D_802AD908)
/* 51D6C 8005116C F424D908 */  sdc1       $f4, %lo(D_802AD908)($at)
/* 51D70 80051170 3C01802B */  lui        $at, %hi(D_802AD880)
/* 51D74 80051174 F422D880 */  sdc1       $f2, %lo(D_802AD880)($at)
/* 51D78 80051178 3C01802B */  lui        $at, %hi(D_802AD890)
/* 51D7C 8005117C 0C018F7E */  jal        func_80063DF8
/* 51D80 80051180 F420D890 */   sdc1      $f0, %lo(D_802AD890)($at)
/* 51D84 80051184 3C01802F */  lui        $at, %hi(D_802EF718)
/* 51D88 80051188 D420F718 */  ldc1       $f0, %lo(D_802EF718)($at)
/* 51D8C 8005118C 3C01802B */  lui        $at, %hi(D_802AD9D4)
/* 51D90 80051190 AC22D9D4 */  sw         $v0, %lo(D_802AD9D4)($at)
/* 51D94 80051194 3C01800C */  lui        $at, %hi(D_800C4828)
/* 51D98 80051198 AC204828 */  sw         $zero, %lo(D_800C4828)($at)
/* 51D9C 8005119C 3C01802B */  lui        $at, %hi(D_802AD868)
/* 51DA0 800511A0 F420D868 */  sdc1       $f0, %lo(D_802AD868)($at)
.L800511A4:
/* 51DA4 800511A4 3C03800C */  lui        $v1, %hi(D_800C4828)
/* 51DA8 800511A8 8C634828 */  lw         $v1, %lo(D_800C4828)($v1)
/* 51DAC 800511AC 10600005 */  beqz       $v1, .L800511C4
/* 51DB0 800511B0 24020001 */   addiu     $v0, $zero, 0x1
/* 51DB4 800511B4 50620034 */  beql       $v1, $v0, .L80051288
/* 51DB8 800511B8 24020002 */   addiu     $v0, $zero, 0x2
/* 51DBC 800511BC 080144AC */  j          .L800512B0
/* 51DC0 800511C0 00000000 */   nop
.L800511C4:
/* 51DC4 800511C4 0C018F7E */  jal        func_80063DF8
/* 51DC8 800511C8 00000000 */   nop
/* 51DCC 800511CC 3C03802B */  lui        $v1, %hi(D_802AD9D4)
/* 51DD0 800511D0 8C63D9D4 */  lw         $v1, %lo(D_802AD9D4)($v1)
/* 51DD4 800511D4 00431023 */  subu       $v0, $v0, $v1
/* 51DD8 800511D8 44821000 */  mtc1       $v0, $f2
/* 51DDC 800511DC 00000000 */  nop
/* 51DE0 800511E0 04410004 */  bgez       $v0, .L800511F4
/* 51DE4 800511E4 468010A1 */   cvt.d.w   $f2, $f2
/* 51DE8 800511E8 3C01800D */  lui        $at, %hi(D_800D4048)
/* 51DEC 800511EC D4204048 */  ldc1       $f0, %lo(D_800D4048)($at)
/* 51DF0 800511F0 46201080 */  add.d      $f2, $f2, $f0
.L800511F4:
/* 51DF4 800511F4 3C01800D */  lui        $at, %hi(D_800D4050)
/* 51DF8 800511F8 D4204050 */  ldc1       $f0, %lo(D_800D4050)($at)
/* 51DFC 800511FC 46201002 */  mul.d      $f0, $f2, $f0
/* 51E00 80051200 3C01800D */  lui        $at, %hi(D_800D4058)
/* 51E04 80051204 D4224058 */  ldc1       $f2, %lo(D_800D4058)($at)
/* 51E08 80051208 46220083 */  div.d      $f2, $f0, $f2
/* 51E0C 8005120C 3C01800D */  lui        $at, %hi(D_800D4060)
/* 51E10 80051210 D4244060 */  ldc1       $f4, %lo(D_800D4060)($at)
/* 51E14 80051214 4622203E */  c.le.d     $f4, $f2
/* 51E18 80051218 00000000 */  nop
/* 51E1C 8005121C 00000000 */  nop
/* 51E20 80051220 45020005 */  bc1fl      .L80051238
/* 51E24 80051224 46222081 */   sub.d     $f2, $f4, $f2
/* 51E28 80051228 24020001 */  addiu      $v0, $zero, 0x1
/* 51E2C 8005122C 3C01800C */  lui        $at, %hi(D_800C4828)
/* 51E30 80051230 080144AC */  j          .L800512B0
/* 51E34 80051234 AC224828 */   sw        $v0, %lo(D_800C4828)($at)
.L80051238:
/* 51E38 80051238 00000000 */  nop
/* 51E3C 8005123C 46221002 */  mul.d      $f0, $f2, $f2
/* 51E40 80051240 46202081 */  sub.d      $f2, $f4, $f0
/* 51E44 80051244 3C01802B */  lui        $at, %hi(D_802AD880)
/* 51E48 80051248 D420D880 */  ldc1       $f0, %lo(D_802AD880)($at)
/* 51E4C 8005124C 46220002 */  mul.d      $f0, $f0, $f2
/* 51E50 80051250 3C01802B */  lui        $at, %hi(D_802AD890)
/* 51E54 80051254 D424D890 */  ldc1       $f4, %lo(D_802AD890)($at)
/* 51E58 80051258 46222102 */  mul.d      $f4, $f4, $f2
/* 51E5C 8005125C 3C01802B */  lui        $at, %hi(D_802AD8F8)
/* 51E60 80051260 D422D8F8 */  ldc1       $f2, %lo(D_802AD8F8)($at)
/* 51E64 80051264 46201080 */  add.d      $f2, $f2, $f0
/* 51E68 80051268 3C01802B */  lui        $at, %hi(D_802AD908)
/* 51E6C 8005126C D420D908 */  ldc1       $f0, %lo(D_802AD908)($at)
/* 51E70 80051270 46240000 */  add.d      $f0, $f0, $f4
/* 51E74 80051274 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 51E78 80051278 F4222AC0 */  sdc1       $f2, %lo(D_80312AC0)($at)
/* 51E7C 8005127C 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 51E80 80051280 080144AC */  j          .L800512B0
/* 51E84 80051284 F4202AD0 */   sdc1      $f0, %lo(D_80312AD0)($at)
.L80051288:
/* 51E88 80051288 3C01802D */  lui        $at, %hi(D_802C8AB8)
/* 51E8C 8005128C D4208AB8 */  ldc1       $f0, %lo(D_802C8AB8)($at)
/* 51E90 80051290 3C01802D */  lui        $at, %hi(D_802C8AC0)
/* 51E94 80051294 D4228AC0 */  ldc1       $f2, %lo(D_802C8AC0)($at)
/* 51E98 80051298 3C01800C */  lui        $at, %hi(D_800C4828)
/* 51E9C 8005129C AC224828 */  sw         $v0, %lo(D_800C4828)($at)
/* 51EA0 800512A0 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 51EA4 800512A4 F4202AC0 */  sdc1       $f0, %lo(D_80312AC0)($at)
/* 51EA8 800512A8 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 51EAC 800512AC F4222AD0 */  sdc1       $f2, %lo(D_80312AD0)($at)
.L800512B0:
/* 51EB0 800512B0 3C01802B */  lui        $at, %hi(D_802AD868)
/* 51EB4 800512B4 0C01B5E3 */  jal        func_8006D78C
/* 51EB8 800512B8 D42CD868 */   ldc1      $f12, %lo(D_802AD868)($at)
/* 51EBC 800512BC 3C02800C */  lui        $v0, %hi(D_800C4828)
/* 51EC0 800512C0 8C424828 */  lw         $v0, %lo(D_800C4828)($v0)
/* 51EC4 800512C4 24030001 */  addiu      $v1, $zero, 0x1
/* 51EC8 800512C8 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 51ECC 800512CC AC2352A0 */  sw         $v1, %lo(D_800C52A0)($at)
/* 51ED0 800512D0 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 51ED4 800512D4 AC2306E8 */  sw         $v1, %lo(D_802F06E8)($at)
/* 51ED8 800512D8 38420002 */  xori       $v0, $v0, 0x2
/* 51EDC 800512DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 51EE0 800512E0 2C420001 */  sltiu      $v0, $v0, 0x1
/* 51EE4 800512E4 03E00008 */  jr         $ra
/* 51EE8 800512E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800512EC
/* 51EEC 800512EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51EF0 800512F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 51EF4 800512F4 10800070 */  beqz       $a0, .L800514B8
/* 51EF8 800512F8 AFB00010 */   sw        $s0, 0x10($sp)
/* 51EFC 800512FC 3C01802F */  lui        $at, %hi(D_802EF718)
/* 51F00 80051300 D426F718 */  ldc1       $f6, %lo(D_802EF718)($at)
/* 51F04 80051304 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 51F08 80051308 D4228A90 */  ldc1       $f2, %lo(D_802C8A90)($at)
/* 51F0C 8005130C 3C01802F */  lui        $at, %hi(D_802EF620)
/* 51F10 80051310 D42CF620 */  ldc1       $f12, %lo(D_802EF620)($at)
/* 51F14 80051314 3C01802F */  lui        $at, %hi(D_802EF610)
/* 51F18 80051318 D42EF610 */  ldc1       $f14, %lo(D_802EF610)($at)
/* 51F1C 8005131C 46261081 */  sub.d      $f2, $f2, $f6
/* 51F20 80051320 3C01802D */  lui        $at, %hi(D_802C8AA8)
/* 51F24 80051324 D4208AA8 */  ldc1       $f0, %lo(D_802C8AA8)($at)
/* 51F28 80051328 3C01802D */  lui        $at, %hi(D_802C8AB0)
/* 51F2C 8005132C D4248AB0 */  ldc1       $f4, %lo(D_802C8AB0)($at)
/* 51F30 80051330 46200007 */  neg.d      $f0, $f0
/* 51F34 80051334 3C01802F */  lui        $at, %hi(D_802EF630)
/* 51F38 80051338 F424F630 */  sdc1       $f4, %lo(D_802EF630)($at)
/* 51F3C 8005133C 3C01802B */  lui        $at, %hi(D_802AD988)
/* 51F40 80051340 F426D988 */  sdc1       $f6, %lo(D_802AD988)($at)
/* 51F44 80051344 3C01802F */  lui        $at, %hi(D_802EF628)
/* 51F48 80051348 F420F628 */  sdc1       $f0, %lo(D_802EF628)($at)
/* 51F4C 8005134C 3C01802B */  lui        $at, %hi(D_802AD990)
/* 51F50 80051350 0C022C1C */  jal        func_8008B070
/* 51F54 80051354 F422D990 */   sdc1      $f2, %lo(D_802AD990)($at)
/* 51F58 80051358 3C01802F */  lui        $at, %hi(D_802EF610)
/* 51F5C 8005135C D422F610 */  ldc1       $f2, %lo(D_802EF610)($at)
/* 51F60 80051360 44803000 */  mtc1       $zero, $f6
/* 51F64 80051364 44803800 */  mtc1       $zero, $f7
/* 51F68 80051368 00000000 */  nop
/* 51F6C 8005136C 4626103C */  c.lt.d     $f2, $f6
/* 51F70 80051370 00000000 */  nop
/* 51F74 80051374 00000000 */  nop
/* 51F78 80051378 4500000B */  bc1f       .L800513A8
/* 51F7C 8005137C 46200106 */   mov.d     $f4, $f0
/* 51F80 80051380 3C01802F */  lui        $at, %hi(D_802EF620)
/* 51F84 80051384 D420F620 */  ldc1       $f0, %lo(D_802EF620)($at)
/* 51F88 80051388 4626003C */  c.lt.d     $f0, $f6
/* 51F8C 8005138C 3C01800D */  lui        $at, %hi(D_800D4068)
/* 51F90 80051390 D4204068 */  ldc1       $f0, %lo(D_800D4068)($at)
/* 51F94 80051394 45020004 */  bc1fl      .L800513A8
/* 51F98 80051398 46202100 */   add.d     $f4, $f4, $f0
/* 51F9C 8005139C 3C01800D */  lui        $at, %hi(D_800D4070)
/* 51FA0 800513A0 D4204070 */  ldc1       $f0, %lo(D_800D4070)($at)
/* 51FA4 800513A4 46202100 */  add.d      $f4, $f4, $f0
.L800513A8:
/* 51FA8 800513A8 3C10802D */  lui        $s0, %hi(D_802C8AA0)
/* 51FAC 800513AC 26108AA0 */  addiu      $s0, $s0, %lo(D_802C8AA0)
/* 51FB0 800513B0 D60C0000 */  ldc1       $f12, 0x0($s0)
/* 51FB4 800513B4 3C01802D */  lui        $at, %hi(D_802C8A98)
/* 51FB8 800513B8 D42E8A98 */  ldc1       $f14, %lo(D_802C8A98)($at)
/* 51FBC 800513BC 46206307 */  neg.d      $f12, $f12
/* 51FC0 800513C0 3C01802B */  lui        $at, %hi(D_802AD980)
/* 51FC4 800513C4 F424D980 */  sdc1       $f4, %lo(D_802AD980)($at)
/* 51FC8 800513C8 0C022C1C */  jal        func_8008B070
/* 51FCC 800513CC 46207387 */   neg.d     $f14, $f14
/* 51FD0 800513D0 3C01802D */  lui        $at, %hi(D_802C8A98)
/* 51FD4 800513D4 D4228A98 */  ldc1       $f2, %lo(D_802C8A98)($at)
/* 51FD8 800513D8 44803000 */  mtc1       $zero, $f6
/* 51FDC 800513DC 44803800 */  mtc1       $zero, $f7
/* 51FE0 800513E0 00000000 */  nop
/* 51FE4 800513E4 4622303C */  c.lt.d     $f6, $f2
/* 51FE8 800513E8 00000000 */  nop
/* 51FEC 800513EC 00000000 */  nop
/* 51FF0 800513F0 4500000A */  bc1f       .L8005141C
/* 51FF4 800513F4 46200106 */   mov.d     $f4, $f0
/* 51FF8 800513F8 D6000000 */  ldc1       $f0, 0x0($s0)
/* 51FFC 800513FC 4620303C */  c.lt.d     $f6, $f0
/* 52000 80051400 3C01800D */  lui        $at, %hi(D_800D4078)
/* 52004 80051404 D4204078 */  ldc1       $f0, %lo(D_800D4078)($at)
/* 52008 80051408 45020004 */  bc1fl      .L8005141C
/* 5200C 8005140C 46202100 */   add.d     $f4, $f4, $f0
/* 52010 80051410 3C01800D */  lui        $at, %hi(D_800D4080)
/* 52014 80051414 D4204080 */  ldc1       $f0, %lo(D_800D4080)($at)
/* 52018 80051418 46202100 */  add.d      $f4, $f4, $f0
.L8005141C:
/* 5201C 8005141C 3C01802B */  lui        $at, %hi(D_802AD980)
/* 52020 80051420 D422D980 */  ldc1       $f2, %lo(D_802AD980)($at)
/* 52024 80051424 46222081 */  sub.d      $f2, $f4, $f2
/* 52028 80051428 3C01800D */  lui        $at, %hi(D_800D4088)
/* 5202C 8005142C D4264088 */  ldc1       $f6, %lo(D_800D4088)($at)
/* 52030 80051430 46201005 */  abs.d      $f0, $f2
/* 52034 80051434 46260103 */  div.d      $f4, $f0, $f6
/* 52038 80051438 4620200D */  trunc.w.d  $f0, $f4
/* 5203C 8005143C 44020000 */  mfc1       $v0, $f0
/* 52040 80051440 00000000 */  nop
/* 52044 80051444 44820000 */  mtc1       $v0, $f0
/* 52048 80051448 00000000 */  nop
/* 5204C 8005144C 46800021 */  cvt.d.w    $f0, $f0
/* 52050 80051450 46202101 */  sub.d      $f4, $f4, $f0
/* 52054 80051454 44800000 */  mtc1       $zero, $f0
/* 52058 80051458 44800800 */  mtc1       $zero, $f1
/* 5205C 8005145C 00000000 */  nop
/* 52060 80051460 4620103C */  c.lt.d     $f2, $f0
/* 52064 80051464 3C01802B */  lui        $at, %hi(D_802AD998)
/* 52068 80051468 F422D998 */  sdc1       $f2, %lo(D_802AD998)($at)
/* 5206C 8005146C 45000002 */  bc1f       .L80051478
/* 52070 80051470 46262082 */   mul.d     $f2, $f4, $f6
/* 52074 80051474 46223081 */  sub.d      $f2, $f6, $f2
.L80051478:
/* 52078 80051478 3C01800D */  lui        $at, %hi(D_800D4090)
/* 5207C 8005147C D4204090 */  ldc1       $f0, %lo(D_800D4090)($at)
/* 52080 80051480 4622003C */  c.lt.d     $f0, $f2
/* 52084 80051484 3C01802B */  lui        $at, %hi(D_802AD998)
/* 52088 80051488 F422D998 */  sdc1       $f2, %lo(D_802AD998)($at)
/* 5208C 8005148C 45000004 */  bc1f       .L800514A0
/* 52090 80051490 00000000 */   nop
/* 52094 80051494 46261001 */  sub.d      $f0, $f2, $f6
/* 52098 80051498 3C01802B */  lui        $at, %hi(D_802AD998)
/* 5209C 8005149C F420D998 */  sdc1       $f0, %lo(D_802AD998)($at)
.L800514A0:
/* 520A0 800514A0 0C018F7E */  jal        func_80063DF8
/* 520A4 800514A4 00000000 */   nop
/* 520A8 800514A8 3C01802B */  lui        $at, %hi(D_802AD9D4)
/* 520AC 800514AC AC22D9D4 */  sw         $v0, %lo(D_802AD9D4)($at)
/* 520B0 800514B0 3C01800C */  lui        $at, %hi(D_800C482C)
/* 520B4 800514B4 AC20482C */  sw         $zero, %lo(D_800C482C)($at)
.L800514B8:
/* 520B8 800514B8 3C03800C */  lui        $v1, %hi(D_800C482C)
/* 520BC 800514BC 8C63482C */  lw         $v1, %lo(D_800C482C)($v1)
/* 520C0 800514C0 10600005 */  beqz       $v1, .L800514D8
/* 520C4 800514C4 24020001 */   addiu     $v0, $zero, 0x1
/* 520C8 800514C8 10620039 */  beq        $v1, $v0, .L800515B0
/* 520CC 800514CC 00000000 */   nop
/* 520D0 800514D0 080145A0 */  j          .L80051680
/* 520D4 800514D4 00000000 */   nop
.L800514D8:
/* 520D8 800514D8 0C018F7E */  jal        func_80063DF8
/* 520DC 800514DC 00000000 */   nop
/* 520E0 800514E0 3C03802B */  lui        $v1, %hi(D_802AD9D4)
/* 520E4 800514E4 8C63D9D4 */  lw         $v1, %lo(D_802AD9D4)($v1)
/* 520E8 800514E8 00431023 */  subu       $v0, $v0, $v1
/* 520EC 800514EC 44821000 */  mtc1       $v0, $f2
/* 520F0 800514F0 00000000 */  nop
/* 520F4 800514F4 04410004 */  bgez       $v0, .L80051508
/* 520F8 800514F8 468010A1 */   cvt.d.w   $f2, $f2
/* 520FC 800514FC 3C01800D */  lui        $at, %hi(D_800D4098)
/* 52100 80051500 D4204098 */  ldc1       $f0, %lo(D_800D4098)($at)
/* 52104 80051504 46201080 */  add.d      $f2, $f2, $f0
.L80051508:
/* 52108 80051508 3C01800D */  lui        $at, %hi(D_800D40A0)
/* 5210C 8005150C D42040A0 */  ldc1       $f0, %lo(D_800D40A0)($at)
/* 52110 80051510 46201002 */  mul.d      $f0, $f2, $f0
/* 52114 80051514 3C01800D */  lui        $at, %hi(D_800D40A8)
/* 52118 80051518 D42240A8 */  ldc1       $f2, %lo(D_800D40A8)($at)
/* 5211C 8005151C 46220003 */  div.d      $f0, $f0, $f2
/* 52120 80051520 3C01800D */  lui        $at, %hi(D_800D40B0)
/* 52124 80051524 D42240B0 */  ldc1       $f2, %lo(D_800D40B0)($at)
/* 52128 80051528 4620103E */  c.le.d     $f2, $f0
/* 5212C 8005152C 00000000 */  nop
/* 52130 80051530 00000000 */  nop
/* 52134 80051534 45010050 */  bc1t       .L80051678
/* 52138 80051538 24020001 */   addiu     $v0, $zero, 0x1
/* 5213C 8005153C 46201001 */  sub.d      $f0, $f2, $f0
/* 52140 80051540 46200002 */  mul.d      $f0, $f0, $f0
/* 52144 80051544 46201001 */  sub.d      $f0, $f2, $f0
/* 52148 80051548 3C01802B */  lui        $at, %hi(D_802AD990)
/* 5214C 8005154C D422D990 */  ldc1       $f2, %lo(D_802AD990)($at)
/* 52150 80051550 46201082 */  mul.d      $f2, $f2, $f0
/* 52154 80051554 3C01802B */  lui        $at, %hi(D_802AD998)
/* 52158 80051558 D424D998 */  ldc1       $f4, %lo(D_802AD998)($at)
/* 5215C 8005155C 46202102 */  mul.d      $f4, $f4, $f0
/* 52160 80051560 3C01802B */  lui        $at, %hi(D_802AD988)
/* 52164 80051564 D420D988 */  ldc1       $f0, %lo(D_802AD988)($at)
/* 52168 80051568 46220000 */  add.d      $f0, $f0, $f2
/* 5216C 8005156C 3C01802B */  lui        $at, %hi(D_802AD980)
/* 52170 80051570 D42CD980 */  ldc1       $f12, %lo(D_802AD980)($at)
/* 52174 80051574 46246300 */  add.d      $f12, $f12, $f4
/* 52178 80051578 3C10802B */  lui        $s0, %hi(D_802AD970)
/* 5217C 8005157C 2610D970 */  addiu      $s0, $s0, %lo(D_802AD970)
/* 52180 80051580 3C01802F */  lui        $at, %hi(D_802EF718)
/* 52184 80051584 F420F718 */  sdc1       $f0, %lo(D_802EF718)($at)
/* 52188 80051588 0C022C03 */  jal        func_8008B00C
/* 5218C 8005158C 02003021 */   addu      $a2, $s0, $zero
/* 52190 80051590 3C01802B */  lui        $at, %hi(D_802AD978)
/* 52194 80051594 D420D978 */  ldc1       $f0, %lo(D_802AD978)($at)
/* 52198 80051598 D6020000 */  ldc1       $f2, 0x0($s0)
/* 5219C 8005159C 3C01802F */  lui        $at, %hi(D_802EF610)
/* 521A0 800515A0 F420F610 */  sdc1       $f0, %lo(D_802EF610)($at)
/* 521A4 800515A4 3C01802F */  lui        $at, %hi(D_802EF620)
/* 521A8 800515A8 080145A0 */  j          .L80051680
/* 521AC 800515AC F422F620 */   sdc1      $f2, %lo(D_802EF620)($at)
.L800515B0:
/* 521B0 800515B0 3C01802D */  lui        $at, %hi(D_802C8A98)
/* 521B4 800515B4 D4208A98 */  ldc1       $f0, %lo(D_802C8A98)($at)
/* 521B8 800515B8 44802000 */  mtc1       $zero, $f4
/* 521BC 800515BC 44802800 */  mtc1       $zero, $f5
/* 521C0 800515C0 00000000 */  nop
/* 521C4 800515C4 4620203C */  c.lt.d     $f4, $f0
/* 521C8 800515C8 00000000 */  nop
/* 521CC 800515CC 45010010 */  bc1t       .L80051610
/* 521D0 800515D0 00000000 */   nop
/* 521D4 800515D4 4624003C */  c.lt.d     $f0, $f4
/* 521D8 800515D8 00000000 */  nop
/* 521DC 800515DC 4501000C */  bc1t       .L80051610
/* 521E0 800515E0 00000000 */   nop
/* 521E4 800515E4 3C01802D */  lui        $at, %hi(D_802C8AA0)
/* 521E8 800515E8 D4208AA0 */  ldc1       $f0, %lo(D_802C8AA0)($at)
/* 521EC 800515EC 4620203C */  c.lt.d     $f4, $f0
/* 521F0 800515F0 00000000 */  nop
/* 521F4 800515F4 45010006 */  bc1t       .L80051610
/* 521F8 800515F8 00000000 */   nop
/* 521FC 800515FC 4624003C */  c.lt.d     $f0, $f4
/* 52200 80051600 00000000 */  nop
/* 52204 80051604 00000000 */  nop
/* 52208 80051608 45000011 */  bc1f       .L80051650
/* 5220C 8005160C 24020002 */   addiu     $v0, $zero, 0x2
.L80051610:
/* 52210 80051610 3C01802D */  lui        $at, %hi(D_802C8A98)
/* 52214 80051614 D4228A98 */  ldc1       $f2, %lo(D_802C8A98)($at)
/* 52218 80051618 3C01802D */  lui        $at, %hi(D_802C8A90)
/* 5221C 8005161C D4208A90 */  ldc1       $f0, %lo(D_802C8A90)($at)
/* 52220 80051620 3C01802D */  lui        $at, %hi(D_802C8AA0)
/* 52224 80051624 D4248AA0 */  ldc1       $f4, %lo(D_802C8AA0)($at)
/* 52228 80051628 46201087 */  neg.d      $f2, $f2
/* 5222C 8005162C 46202107 */  neg.d      $f4, $f4
/* 52230 80051630 3C01802F */  lui        $at, %hi(D_802EF718)
/* 52234 80051634 F420F718 */  sdc1       $f0, %lo(D_802EF718)($at)
/* 52238 80051638 3C01802F */  lui        $at, %hi(D_802EF610)
/* 5223C 8005163C F422F610 */  sdc1       $f2, %lo(D_802EF610)($at)
/* 52240 80051640 3C01802F */  lui        $at, %hi(D_802EF620)
/* 52244 80051644 F424F620 */  sdc1       $f4, %lo(D_802EF620)($at)
/* 52248 80051648 0801459E */  j          .L80051678
/* 5224C 8005164C 24020002 */   addiu     $v0, $zero, 0x2
.L80051650:
/* 52250 80051650 3C01800D */  lui        $at, %hi(D_800D40B8)
/* 52254 80051654 D42040B8 */  ldc1       $f0, %lo(D_800D40B8)($at)
/* 52258 80051658 3C01800D */  lui        $at, %hi(D_800D40C0)
/* 5225C 8005165C D42240C0 */  ldc1       $f2, %lo(D_800D40C0)($at)
/* 52260 80051660 3C01802F */  lui        $at, %hi(D_802EF620)
/* 52264 80051664 F424F620 */  sdc1       $f4, %lo(D_802EF620)($at)
/* 52268 80051668 3C01802F */  lui        $at, %hi(D_802EF718)
/* 5226C 8005166C F420F718 */  sdc1       $f0, %lo(D_802EF718)($at)
/* 52270 80051670 3C01802F */  lui        $at, %hi(D_802EF610)
/* 52274 80051674 F422F610 */  sdc1       $f2, %lo(D_802EF610)($at)
.L80051678:
/* 52278 80051678 3C01800C */  lui        $at, %hi(D_800C482C)
/* 5227C 8005167C AC22482C */  sw         $v0, %lo(D_800C482C)($at)
.L80051680:
/* 52280 80051680 3C01802F */  lui        $at, %hi(D_802EF718)
/* 52284 80051684 0C01B5E3 */  jal        func_8006D78C
/* 52288 80051688 D42CF718 */   ldc1      $f12, %lo(D_802EF718)($at)
/* 5228C 8005168C 3C02800C */  lui        $v0, %hi(D_800C482C)
/* 52290 80051690 8C42482C */  lw         $v0, %lo(D_800C482C)($v0)
/* 52294 80051694 24030001 */  addiu      $v1, $zero, 0x1
/* 52298 80051698 3C01800C */  lui        $at, %hi(D_800C52A0)
/* 5229C 8005169C AC2352A0 */  sw         $v1, %lo(D_800C52A0)($at)
/* 522A0 800516A0 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 522A4 800516A4 AC2306E8 */  sw         $v1, %lo(D_802F06E8)($at)
/* 522A8 800516A8 38420002 */  xori       $v0, $v0, 0x2
/* 522AC 800516AC 2C420001 */  sltiu      $v0, $v0, 0x1
/* 522B0 800516B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 522B4 800516B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 522B8 800516B8 03E00008 */  jr         $ra
/* 522BC 800516BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800516C0
/* 522C0 800516C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 522C4 800516C4 10800006 */  beqz       $a0, .L800516E0
/* 522C8 800516C8 AFBF0010 */   sw        $ra, 0x10($sp)
/* 522CC 800516CC 3C01802B */  lui        $at, %hi(D_802AD870)
/* 522D0 800516D0 0C018F7E */  jal        func_80063DF8
/* 522D4 800516D4 AC20D870 */   sw        $zero, %lo(D_802AD870)($at)
/* 522D8 800516D8 3C01802B */  lui        $at, %hi(D_802AD9D4)
/* 522DC 800516DC AC22D9D4 */  sw         $v0, %lo(D_802AD9D4)($at)
.L800516E0:
/* 522E0 800516E0 3C03802B */  lui        $v1, %hi(D_802AD870)
/* 522E4 800516E4 8C63D870 */  lw         $v1, %lo(D_802AD870)($v1)
/* 522E8 800516E8 10600005 */  beqz       $v1, .L80051700
/* 522EC 800516EC 24020001 */   addiu     $v0, $zero, 0x1
/* 522F0 800516F0 50620031 */  beql       $v1, $v0, .L800517B8
/* 522F4 800516F4 24020002 */   addiu     $v0, $zero, 0x2
/* 522F8 800516F8 080145F9 */  j          .L800517E4
/* 522FC 800516FC 00000000 */   nop
.L80051700:
/* 52300 80051700 0C018F7E */  jal        func_80063DF8
/* 52304 80051704 00000000 */   nop
/* 52308 80051708 3C03802B */  lui        $v1, %hi(D_802AD9D4)
/* 5230C 8005170C 8C63D9D4 */  lw         $v1, %lo(D_802AD9D4)($v1)
/* 52310 80051710 00431023 */  subu       $v0, $v0, $v1
/* 52314 80051714 44821000 */  mtc1       $v0, $f2
/* 52318 80051718 00000000 */  nop
/* 5231C 8005171C 04410004 */  bgez       $v0, .L80051730
/* 52320 80051720 468010A1 */   cvt.d.w   $f2, $f2
/* 52324 80051724 3C01800D */  lui        $at, %hi(D_800D40C8)
/* 52328 80051728 D42040C8 */  ldc1       $f0, %lo(D_800D40C8)($at)
/* 5232C 8005172C 46201080 */  add.d      $f2, $f2, $f0
.L80051730:
/* 52330 80051730 3C01800D */  lui        $at, %hi(D_800D40D0)
/* 52334 80051734 D42040D0 */  ldc1       $f0, %lo(D_800D40D0)($at)
/* 52338 80051738 46201002 */  mul.d      $f0, $f2, $f0
/* 5233C 8005173C 3C01800D */  lui        $at, %hi(D_800D40D8)
/* 52340 80051740 D42240D8 */  ldc1       $f2, %lo(D_800D40D8)($at)
/* 52344 80051744 46220103 */  div.d      $f4, $f0, $f2
/* 52348 80051748 3C01800D */  lui        $at, %hi(D_800D40E0)
/* 5234C 8005174C D42040E0 */  ldc1       $f0, %lo(D_800D40E0)($at)
/* 52350 80051750 4624003E */  c.le.d     $f0, $f4
/* 52354 80051754 00000000 */  nop
/* 52358 80051758 00000000 */  nop
/* 5235C 8005175C 45020005 */  bc1fl      .L80051774
/* 52360 80051760 46242000 */   add.d     $f0, $f4, $f4
/* 52364 80051764 24020001 */  addiu      $v0, $zero, 0x1
/* 52368 80051768 3C01802B */  lui        $at, %hi(D_802AD870)
/* 5236C 8005176C 080145F9 */  j          .L800517E4
/* 52370 80051770 AC22D870 */   sw        $v0, %lo(D_802AD870)($at)
.L80051774:
/* 52374 80051774 3C01800D */  lui        $at, %hi(D_800D40E8)
/* 52378 80051778 D42240E8 */  ldc1       $f2, %lo(D_800D40E8)($at)
/* 5237C 8005177C 46201101 */  sub.d      $f4, $f2, $f0
/* 52380 80051780 46242002 */  mul.d      $f0, $f4, $f4
/* 52384 80051784 46201101 */  sub.d      $f4, $f2, $f0
/* 52388 80051788 3C01802B */  lui        $at, %hi(D_802AD890)
/* 5238C 8005178C D420D890 */  ldc1       $f0, %lo(D_802AD890)($at)
/* 52390 80051790 46240002 */  mul.d      $f0, $f0, $f4
/* 52394 80051794 3C01802B */  lui        $at, %hi(D_802AD908)
/* 52398 80051798 D422D908 */  ldc1       $f2, %lo(D_802AD908)($at)
/* 5239C 8005179C 46201080 */  add.d      $f2, $f2, $f0
/* 523A0 800517A0 24020001 */  addiu      $v0, $zero, 0x1
/* 523A4 800517A4 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 523A8 800517A8 AC2206E8 */  sw         $v0, %lo(D_802F06E8)($at)
/* 523AC 800517AC 3C01802F */  lui        $at, %hi(D_802EF638)
/* 523B0 800517B0 080145F9 */  j          .L800517E4
/* 523B4 800517B4 F422F638 */   sdc1      $f2, %lo(D_802EF638)($at)
.L800517B8:
/* 523B8 800517B8 3C01802B */  lui        $at, %hi(D_802AD890)
/* 523BC 800517BC D420D890 */  ldc1       $f0, %lo(D_802AD890)($at)
/* 523C0 800517C0 3C01802B */  lui        $at, %hi(D_802AD908)
/* 523C4 800517C4 D422D908 */  ldc1       $f2, %lo(D_802AD908)($at)
/* 523C8 800517C8 46220000 */  add.d      $f0, $f0, $f2
/* 523CC 800517CC 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 523D0 800517D0 AC2306E8 */  sw         $v1, %lo(D_802F06E8)($at)
/* 523D4 800517D4 3C01802B */  lui        $at, %hi(D_802AD870)
/* 523D8 800517D8 AC22D870 */  sw         $v0, %lo(D_802AD870)($at)
/* 523DC 800517DC 3C01802F */  lui        $at, %hi(D_802EF638)
/* 523E0 800517E0 F420F638 */  sdc1       $f0, %lo(D_802EF638)($at)
.L800517E4:
/* 523E4 800517E4 3C02802B */  lui        $v0, %hi(D_802AD870)
/* 523E8 800517E8 8C42D870 */  lw         $v0, %lo(D_802AD870)($v0)
/* 523EC 800517EC 38420002 */  xori       $v0, $v0, 0x2
/* 523F0 800517F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 523F4 800517F4 2C420001 */  sltiu      $v0, $v0, 0x1
/* 523F8 800517F8 03E00008 */  jr         $ra
/* 523FC 800517FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80051800
/* 52400 80051800 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 52404 80051804 10800006 */  beqz       $a0, .L80051820
/* 52408 80051808 AFBF0010 */   sw        $ra, 0x10($sp)
/* 5240C 8005180C 3C01802B */  lui        $at, %hi(D_802AD874)
/* 52410 80051810 0C018F81 */  jal        func_80063E04
/* 52414 80051814 AC20D874 */   sw        $zero, %lo(D_802AD874)($at)
/* 52418 80051818 3C01802B */  lui        $at, %hi(D_802AD9D4)
/* 5241C 8005181C AC22D9D4 */  sw         $v0, %lo(D_802AD9D4)($at)
.L80051820:
/* 52420 80051820 3C03802B */  lui        $v1, %hi(D_802AD874)
/* 52424 80051824 8C63D874 */  lw         $v1, %lo(D_802AD874)($v1)
/* 52428 80051828 10600005 */  beqz       $v1, .L80051840
/* 5242C 8005182C 24020001 */   addiu     $v0, $zero, 0x1
/* 52430 80051830 50620026 */  beql       $v1, $v0, .L800518CC
/* 52434 80051834 24020002 */   addiu     $v0, $zero, 0x2
/* 52438 80051838 0801463C */  j          .L800518F0
/* 5243C 8005183C 00000000 */   nop
.L80051840:
/* 52440 80051840 0C018F81 */  jal        func_80063E04
/* 52444 80051844 00000000 */   nop
/* 52448 80051848 3C03802B */  lui        $v1, %hi(D_802AD9D4)
/* 5244C 8005184C 8C63D9D4 */  lw         $v1, %lo(D_802AD9D4)($v1)
/* 52450 80051850 00431023 */  subu       $v0, $v0, $v1
/* 52454 80051854 44821000 */  mtc1       $v0, $f2
/* 52458 80051858 00000000 */  nop
/* 5245C 8005185C 04410004 */  bgez       $v0, .L80051870
/* 52460 80051860 468010A1 */   cvt.d.w   $f2, $f2
/* 52464 80051864 3C01800D */  lui        $at, %hi(D_800D40F0)
/* 52468 80051868 D42040F0 */  ldc1       $f0, %lo(D_800D40F0)($at)
/* 5246C 8005186C 46201080 */  add.d      $f2, $f2, $f0
.L80051870:
/* 52470 80051870 3C01800D */  lui        $at, %hi(D_800D40F8)
/* 52474 80051874 D42040F8 */  ldc1       $f0, %lo(D_800D40F8)($at)
/* 52478 80051878 46201083 */  div.d      $f2, $f2, $f0
/* 5247C 8005187C 3C01800D */  lui        $at, %hi(D_800D4100)
/* 52480 80051880 D4204100 */  ldc1       $f0, %lo(D_800D4100)($at)
/* 52484 80051884 4622003E */  c.le.d     $f0, $f2
/* 52488 80051888 00000000 */  nop
/* 5248C 8005188C 45000005 */  bc1f       .L800518A4
/* 52490 80051890 00000000 */   nop
/* 52494 80051894 24020001 */  addiu      $v0, $zero, 0x1
/* 52498 80051898 3C01802B */  lui        $at, %hi(D_802AD874)
/* 5249C 8005189C 0801463C */  j          .L800518F0
/* 524A0 800518A0 AC22D874 */   sw        $v0, %lo(D_802AD874)($at)
.L800518A4:
/* 524A4 800518A4 3C01802B */  lui        $at, %hi(D_802AD890)
/* 524A8 800518A8 D420D890 */  ldc1       $f0, %lo(D_802AD890)($at)
/* 524AC 800518AC 46220002 */  mul.d      $f0, $f0, $f2
/* 524B0 800518B0 3C01800D */  lui        $at, %hi(D_800D4108)
/* 524B4 800518B4 D4224108 */  ldc1       $f2, %lo(D_800D4108)($at)
/* 524B8 800518B8 46220003 */  div.d      $f0, $f0, $f2
/* 524BC 800518BC 3C01802B */  lui        $at, %hi(D_802AD908)
/* 524C0 800518C0 D422D908 */  ldc1       $f2, %lo(D_802AD908)($at)
/* 524C4 800518C4 0801463A */  j          .L800518E8
/* 524C8 800518C8 46220000 */   add.d     $f0, $f0, $f2
.L800518CC:
/* 524CC 800518CC 3C01802B */  lui        $at, %hi(D_802AD890)
/* 524D0 800518D0 D420D890 */  ldc1       $f0, %lo(D_802AD890)($at)
/* 524D4 800518D4 3C01802B */  lui        $at, %hi(D_802AD908)
/* 524D8 800518D8 D422D908 */  ldc1       $f2, %lo(D_802AD908)($at)
/* 524DC 800518DC 46220000 */  add.d      $f0, $f0, $f2
/* 524E0 800518E0 3C01802B */  lui        $at, %hi(D_802AD874)
/* 524E4 800518E4 AC22D874 */  sw         $v0, %lo(D_802AD874)($at)
.L800518E8:
/* 524E8 800518E8 3C01802F */  lui        $at, %hi(D_802EF638)
/* 524EC 800518EC F420F638 */  sdc1       $f0, %lo(D_802EF638)($at)
.L800518F0:
/* 524F0 800518F0 3C02802B */  lui        $v0, %hi(D_802AD874)
/* 524F4 800518F4 8C42D874 */  lw         $v0, %lo(D_802AD874)($v0)
/* 524F8 800518F8 38420002 */  xori       $v0, $v0, 0x2
/* 524FC 800518FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 52500 80051900 2C420001 */  sltiu      $v0, $v0, 0x1
/* 52504 80051904 03E00008 */  jr         $ra
/* 52508 80051908 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005190C
/* 5250C 8005190C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 52510 80051910 10800003 */  beqz       $a0, .L80051920
/* 52514 80051914 AFBF0010 */   sw        $ra, 0x10($sp)
/* 52518 80051918 3C01802B */  lui        $at, %hi(D_802AD878)
/* 5251C 8005191C AC20D878 */  sw         $zero, %lo(D_802AD878)($at)
.L80051920:
/* 52520 80051920 3C03802B */  lui        $v1, %hi(D_802AD878)
/* 52524 80051924 8C63D878 */  lw         $v1, %lo(D_802AD878)($v1)
/* 52528 80051928 2C620008 */  sltiu      $v0, $v1, 0x8
/* 5252C 8005192C 10400074 */  beqz       $v0, .L80051B00
/* 52530 80051930 00000000 */   nop
/* 52534 80051934 00031080 */  sll        $v0, $v1, 2
/* 52538 80051938 3C01800D */  lui        $at, %hi(jtbl_800D4110_main)
/* 5253C 8005193C 00220821 */  addu       $at, $at, $v0
/* 52540 80051940 8C224110 */  lw         $v0, %lo(jtbl_800D4110_main)($at)
/* 52544 80051944 00400008 */  jr         $v0
/* 52548 80051948 00000000 */   nop
glabel L8005194C
/* 5254C 8005194C 3C01802F */  lui        $at, %hi(D_802EF730)
/* 52550 80051950 D420F730 */  ldc1       $f0, %lo(D_802EF730)($at)
/* 52554 80051954 3C01800D */  lui        $at, %hi(D_800D4130)
/* 52558 80051958 D4224130 */  ldc1       $f2, %lo(D_800D4130)($at)
/* 5255C 8005195C 46220002 */  mul.d      $f0, $f0, $f2
/* 52560 80051960 3C01800D */  lui        $at, %hi(D_800D4138)
/* 52564 80051964 D4224138 */  ldc1       $f2, %lo(D_800D4138)($at)
/* 52568 80051968 46220000 */  add.d      $f0, $f0, $f2
/* 5256C 8005196C 3C01800D */  lui        $at, %hi(D_800D4140)
/* 52570 80051970 D4224140 */  ldc1       $f2, %lo(D_800D4140)($at)
/* 52574 80051974 46220001 */  sub.d      $f0, $f0, $f2
/* 52578 80051978 3C01802B */  lui        $at, %hi(D_802AD908)
/* 5257C 8005197C F422D908 */  sdc1       $f2, %lo(D_802AD908)($at)
/* 52580 80051980 3C01802B */  lui        $at, %hi(D_802AD890)
/* 52584 80051984 F420D890 */  sdc1       $f0, %lo(D_802AD890)($at)
/* 52588 80051988 0C0145B0 */  jal        func_800516C0
/* 5258C 8005198C 24040001 */   addiu     $a0, $zero, 0x1
/* 52590 80051990 10400051 */  beqz       $v0, .L80051AD8
/* 52594 80051994 24030001 */   addiu     $v1, $zero, 0x1
/* 52598 80051998 080146B6 */  j          .L80051AD8
/* 5259C 8005199C 24030002 */   addiu     $v1, $zero, 0x2
glabel L800519A0
/* 525A0 800519A0 0C0145B0 */  jal        func_800516C0
/* 525A4 800519A4 00002021 */   addu      $a0, $zero, $zero
/* 525A8 800519A8 10400055 */  beqz       $v0, .L80051B00
/* 525AC 800519AC 00000000 */   nop
/* 525B0 800519B0 080146BE */  j          .L80051AF8
/* 525B4 800519B4 24020002 */   addiu     $v0, $zero, 0x2
glabel L800519B8
/* 525B8 800519B8 3C01802F */  lui        $at, %hi(D_802EF730)
/* 525BC 800519BC D422F730 */  ldc1       $f2, %lo(D_802EF730)($at)
/* 525C0 800519C0 3C01800D */  lui        $at, %hi(D_800D4148)
/* 525C4 800519C4 D4204148 */  ldc1       $f0, %lo(D_800D4148)($at)
/* 525C8 800519C8 46201082 */  mul.d      $f2, $f2, $f0
/* 525CC 800519CC 3C01800D */  lui        $at, %hi(D_800D4150)
/* 525D0 800519D0 D4204150 */  ldc1       $f0, %lo(D_800D4150)($at)
/* 525D4 800519D4 46201080 */  add.d      $f2, $f2, $f0
/* 525D8 800519D8 3C01800D */  lui        $at, %hi(D_800D4158)
/* 525DC 800519DC D4204158 */  ldc1       $f0, %lo(D_800D4158)($at)
/* 525E0 800519E0 46220001 */  sub.d      $f0, $f0, $f2
/* 525E4 800519E4 3C01802B */  lui        $at, %hi(D_802AD908)
/* 525E8 800519E8 F422D908 */  sdc1       $f2, %lo(D_802AD908)($at)
/* 525EC 800519EC 3C01802B */  lui        $at, %hi(D_802AD890)
/* 525F0 800519F0 F420D890 */  sdc1       $f0, %lo(D_802AD890)($at)
/* 525F4 800519F4 0C0145B0 */  jal        func_800516C0
/* 525F8 800519F8 24040001 */   addiu     $a0, $zero, 0x1
/* 525FC 800519FC 10400036 */  beqz       $v0, .L80051AD8
/* 52600 80051A00 24030003 */   addiu     $v1, $zero, 0x3
/* 52604 80051A04 080146B6 */  j          .L80051AD8
/* 52608 80051A08 24030004 */   addiu     $v1, $zero, 0x4
glabel L80051A0C
/* 5260C 80051A0C 0C0145B0 */  jal        func_800516C0
/* 52610 80051A10 00002021 */   addu      $a0, $zero, $zero
/* 52614 80051A14 1040003A */  beqz       $v0, .L80051B00
/* 52618 80051A18 00000000 */   nop
/* 5261C 80051A1C 080146BE */  j          .L80051AF8
/* 52620 80051A20 24020004 */   addiu     $v0, $zero, 0x4
glabel L80051A24
/* 52624 80051A24 3C01802F */  lui        $at, %hi(D_802EF730)
/* 52628 80051A28 D420F730 */  ldc1       $f0, %lo(D_802EF730)($at)
/* 5262C 80051A2C 3C01800D */  lui        $at, %hi(D_800D4160)
/* 52630 80051A30 D4224160 */  ldc1       $f2, %lo(D_800D4160)($at)
/* 52634 80051A34 46220002 */  mul.d      $f0, $f0, $f2
/* 52638 80051A38 3C01800D */  lui        $at, %hi(D_800D4168)
/* 5263C 80051A3C D4224168 */  ldc1       $f2, %lo(D_800D4168)($at)
/* 52640 80051A40 46220000 */  add.d      $f0, $f0, $f2
/* 52644 80051A44 3C01800D */  lui        $at, %hi(D_800D4170)
/* 52648 80051A48 D4224170 */  ldc1       $f2, %lo(D_800D4170)($at)
/* 5264C 80051A4C 46220001 */  sub.d      $f0, $f0, $f2
/* 52650 80051A50 3C01802B */  lui        $at, %hi(D_802AD908)
/* 52654 80051A54 F422D908 */  sdc1       $f2, %lo(D_802AD908)($at)
/* 52658 80051A58 3C01802B */  lui        $at, %hi(D_802AD890)
/* 5265C 80051A5C F420D890 */  sdc1       $f0, %lo(D_802AD890)($at)
/* 52660 80051A60 0C0145B0 */  jal        func_800516C0
/* 52664 80051A64 24040001 */   addiu     $a0, $zero, 0x1
/* 52668 80051A68 1040001B */  beqz       $v0, .L80051AD8
/* 5266C 80051A6C 24030005 */   addiu     $v1, $zero, 0x5
/* 52670 80051A70 080146B6 */  j          .L80051AD8
/* 52674 80051A74 24030006 */   addiu     $v1, $zero, 0x6
glabel L80051A78
/* 52678 80051A78 0C0145B0 */  jal        func_800516C0
/* 5267C 80051A7C 00002021 */   addu      $a0, $zero, $zero
/* 52680 80051A80 1040001F */  beqz       $v0, .L80051B00
/* 52684 80051A84 00000000 */   nop
/* 52688 80051A88 080146BE */  j          .L80051AF8
/* 5268C 80051A8C 24020006 */   addiu     $v0, $zero, 0x6
glabel L80051A90
/* 52690 80051A90 3C01802F */  lui        $at, %hi(D_802EF730)
/* 52694 80051A94 D420F730 */  ldc1       $f0, %lo(D_802EF730)($at)
/* 52698 80051A98 3C01800D */  lui        $at, %hi(D_800D4178)
/* 5269C 80051A9C D4224178 */  ldc1       $f2, %lo(D_800D4178)($at)
/* 526A0 80051AA0 46220002 */  mul.d      $f0, $f0, $f2
/* 526A4 80051AA4 3C01800D */  lui        $at, %hi(D_800D4180)
/* 526A8 80051AA8 D4224180 */  ldc1       $f2, %lo(D_800D4180)($at)
/* 526AC 80051AAC 46220000 */  add.d      $f0, $f0, $f2
/* 526B0 80051AB0 46201081 */  sub.d      $f2, $f2, $f0
/* 526B4 80051AB4 3C01802B */  lui        $at, %hi(D_802AD908)
/* 526B8 80051AB8 F420D908 */  sdc1       $f0, %lo(D_802AD908)($at)
/* 526BC 80051ABC 3C01802B */  lui        $at, %hi(D_802AD890)
/* 526C0 80051AC0 F422D890 */  sdc1       $f2, %lo(D_802AD890)($at)
/* 526C4 80051AC4 0C014600 */  jal        func_80051800
/* 526C8 80051AC8 24040001 */   addiu     $a0, $zero, 0x1
/* 526CC 80051ACC 10400002 */  beqz       $v0, .L80051AD8
/* 526D0 80051AD0 24030007 */   addiu     $v1, $zero, 0x7
/* 526D4 80051AD4 24030008 */  addiu      $v1, $zero, 0x8
.L80051AD8:
/* 526D8 80051AD8 3C01802B */  lui        $at, %hi(D_802AD878)
/* 526DC 80051ADC 080146C0 */  j          .L80051B00
/* 526E0 80051AE0 AC23D878 */   sw        $v1, %lo(D_802AD878)($at)
glabel L80051AE4
/* 526E4 80051AE4 0C014600 */  jal        func_80051800
/* 526E8 80051AE8 00002021 */   addu      $a0, $zero, $zero
/* 526EC 80051AEC 10400004 */  beqz       $v0, .L80051B00
/* 526F0 80051AF0 00000000 */   nop
/* 526F4 80051AF4 24020008 */  addiu      $v0, $zero, 0x8
.L80051AF8:
/* 526F8 80051AF8 3C01802B */  lui        $at, %hi(D_802AD878)
/* 526FC 80051AFC AC22D878 */  sw         $v0, %lo(D_802AD878)($at)
.L80051B00:
/* 52700 80051B00 3C02802B */  lui        $v0, %hi(D_802AD878)
/* 52704 80051B04 8C42D878 */  lw         $v0, %lo(D_802AD878)($v0)
/* 52708 80051B08 38420008 */  xori       $v0, $v0, 0x8
/* 5270C 80051B0C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 52710 80051B10 2C420001 */  sltiu      $v0, $v0, 0x1
/* 52714 80051B14 03E00008 */  jr         $ra
/* 52718 80051B18 27BD0018 */   addiu     $sp, $sp, 0x18
/* 5271C 80051B1C 00000000 */  nop
