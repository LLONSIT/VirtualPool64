.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8008AE70
/* 8BA70 8008AE70 D4860000 */  ldc1       $f6, 0x0($a0)
/* 8BA74 8008AE74 D4A00000 */  ldc1       $f0, 0x0($a1)
/* 8BA78 8008AE78 D4840008 */  ldc1       $f4, 0x8($a0)
/* 8BA7C 8008AE7C 46203181 */  sub.d      $f6, $f6, $f0
/* 8BA80 8008AE80 D4A00008 */  ldc1       $f0, 0x8($a1)
/* 8BA84 8008AE84 D4820010 */  ldc1       $f2, 0x10($a0)
/* 8BA88 8008AE88 46202101 */  sub.d      $f4, $f4, $f0
/* 8BA8C 8008AE8C D4A00010 */  ldc1       $f0, 0x10($a1)
/* 8BA90 8008AE90 46201081 */  sub.d      $f2, $f2, $f0
/* 8BA94 8008AE94 F4C60000 */  sdc1       $f6, 0x0($a2)
/* 8BA98 8008AE98 F4C40008 */  sdc1       $f4, 0x8($a2)
/* 8BA9C 8008AE9C 03E00008 */  jr         $ra
/* 8BAA0 8008AEA0 F4C20010 */   sdc1      $f2, 0x10($a2)

glabel func_8008AEA4
/* 8BAA4 8008AEA4 44800000 */  mtc1       $zero, $f0
/* 8BAA8 8008AEA8 44800800 */  mtc1       $zero, $f1
/* 8BAAC 8008AEAC 00000000 */  nop
/* 8BAB0 8008AEB0 4620603E */  c.le.d     $f12, $f0
/* 8BAB4 8008AEB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BAB8 8008AEB8 00000000 */  nop
/* 8BABC 8008AEBC 45010008 */  bc1t       .L8008AEE0
/* 8BAC0 8008AEC0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 8BAC4 8008AEC4 46206004 */  sqrt.d     $f0, $f12
/* 8BAC8 8008AEC8 46200032 */  c.eq.d     $f0, $f0
/* 8BACC 8008AECC 00000000 */  nop
/* 8BAD0 8008AED0 45010003 */  bc1t       .L8008AEE0
/* 8BAD4 8008AED4 00000000 */   nop
/* 8BAD8 8008AED8 0C026F44 */  jal        func_8009BD10
/* 8BADC 8008AEDC 00000000 */   nop
.L8008AEE0:
/* 8BAE0 8008AEE0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BAE4 8008AEE4 03E00008 */  jr         $ra
/* 8BAE8 8008AEE8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008AEEC
/* 8BAEC 8008AEEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BAF0 8008AEF0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8BAF4 8008AEF4 0C018F9F */  jal        func_80063E7C
/* 8BAF8 8008AEF8 00000000 */   nop
/* 8BAFC 8008AEFC 3C03800D */  lui        $v1, %hi(D_800C9C80)
/* 8BB00 8008AF00 8C639C80 */  lw         $v1, %lo(D_800C9C80)($v1)
/* 8BB04 8008AF04 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 8BB08 8008AF08 00621825 */  or         $v1, $v1, $v0
/* 8BB0C 8008AF0C 3C01800D */  lui        $at, %hi(D_800C9C80)
/* 8BB10 8008AF10 AC239C80 */  sw         $v1, %lo(D_800C9C80)($at)
/* 8BB14 8008AF14 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BB18 8008AF18 03E00008 */  jr         $ra
/* 8BB1C 8008AF1C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008AF20
/* 8BB20 8008AF20 00002021 */  addu       $a0, $zero, $zero
/* 8BB24 8008AF24 3C05800D */  lui        $a1, %hi(D_800C9C84)
/* 8BB28 8008AF28 8CA59C84 */  lw         $a1, %lo(D_800C9C84)($a1)
.L8008AF2C:
/* 8BB2C 8008AF2C 3C02800D */  lui        $v0, %hi(D_800C9C80)
/* 8BB30 8008AF30 8C429C80 */  lw         $v0, %lo(D_800C9C80)($v0)
/* 8BB34 8008AF34 00021840 */  sll        $v1, $v0, 1
/* 8BB38 8008AF38 00A3102B */  sltu       $v0, $a1, $v1
/* 8BB3C 8008AF3C 3C01800D */  lui        $at, %hi(D_800C9C80)
/* 8BB40 8008AF40 AC239C80 */  sw         $v1, %lo(D_800C9C80)($at)
/* 8BB44 8008AF44 10400004 */  beqz       $v0, .L8008AF58
/* 8BB48 8008AF48 24840001 */   addiu     $a0, $a0, 0x1
/* 8BB4C 8008AF4C 00651023 */  subu       $v0, $v1, $a1
/* 8BB50 8008AF50 3C01800D */  lui        $at, %hi(D_800C9C80)
/* 8BB54 8008AF54 AC229C80 */  sw         $v0, %lo(D_800C9C80)($at)
.L8008AF58:
/* 8BB58 8008AF58 28820004 */  slti       $v0, $a0, 0x4
/* 8BB5C 8008AF5C 1440FFF3 */  bnez       $v0, .L8008AF2C
/* 8BB60 8008AF60 00000000 */   nop
/* 8BB64 8008AF64 3C02800D */  lui        $v0, %hi(D_800C9C80)
/* 8BB68 8008AF68 8C429C80 */  lw         $v0, %lo(D_800C9C80)($v0)
/* 8BB6C 8008AF6C 00021202 */  srl        $v0, $v0, 8
/* 8BB70 8008AF70 03E00008 */  jr         $ra
/* 8BB74 8008AF74 3042FFFF */   andi      $v0, $v0, 0xFFFF

glabel func_8008AF78
/* 8BB78 8008AF78 00002021 */  addu       $a0, $zero, $zero
/* 8BB7C 8008AF7C 3C05800D */  lui        $a1, %hi(D_800C9C84)
/* 8BB80 8008AF80 8CA59C84 */  lw         $a1, %lo(D_800C9C84)($a1)
.L8008AF84:
/* 8BB84 8008AF84 3C02800D */  lui        $v0, %hi(D_800C9C80)
/* 8BB88 8008AF88 8C429C80 */  lw         $v0, %lo(D_800C9C80)($v0)
/* 8BB8C 8008AF8C 00021840 */  sll        $v1, $v0, 1
/* 8BB90 8008AF90 00A3102B */  sltu       $v0, $a1, $v1
/* 8BB94 8008AF94 3C01800D */  lui        $at, %hi(D_800C9C80)
/* 8BB98 8008AF98 AC239C80 */  sw         $v1, %lo(D_800C9C80)($at)
/* 8BB9C 8008AF9C 10400004 */  beqz       $v0, .L8008AFB0
/* 8BBA0 8008AFA0 24840001 */   addiu     $a0, $a0, 0x1
/* 8BBA4 8008AFA4 00651023 */  subu       $v0, $v1, $a1
/* 8BBA8 8008AFA8 3C01800D */  lui        $at, %hi(D_800C9C80)
/* 8BBAC 8008AFAC AC229C80 */  sw         $v0, %lo(D_800C9C80)($at)
.L8008AFB0:
/* 8BBB0 8008AFB0 28820004 */  slti       $v0, $a0, 0x4
/* 8BBB4 8008AFB4 1440FFF3 */  bnez       $v0, .L8008AF84
/* 8BBB8 8008AFB8 00000000 */   nop
/* 8BBBC 8008AFBC 3C02800D */  lui        $v0, %hi(D_800C9C80)
/* 8BBC0 8008AFC0 8C429C80 */  lw         $v0, %lo(D_800C9C80)($v0)
/* 8BBC4 8008AFC4 44822000 */  mtc1       $v0, $f4
/* 8BBC8 8008AFC8 00000000 */  nop
/* 8BBCC 8008AFCC 04410004 */  bgez       $v0, .L8008AFE0
/* 8BBD0 8008AFD0 46802121 */   cvt.d.w   $f4, $f4
/* 8BBD4 8008AFD4 3C01800D */  lui        $at, %hi(D_800D69C0)
/* 8BBD8 8008AFD8 D42069C0 */  ldc1       $f0, %lo(D_800D69C0)($at)
/* 8BBDC 8008AFDC 46202100 */  add.d      $f4, $f4, $f0
.L8008AFE0:
/* 8BBE0 8008AFE0 3C02800D */  lui        $v0, %hi(D_800C9C84)
/* 8BBE4 8008AFE4 8C429C84 */  lw         $v0, %lo(D_800C9C84)($v0)
/* 8BBE8 8008AFE8 44821000 */  mtc1       $v0, $f2
/* 8BBEC 8008AFEC 00000000 */  nop
/* 8BBF0 8008AFF0 04410004 */  bgez       $v0, .L8008B004
/* 8BBF4 8008AFF4 468010A1 */   cvt.d.w   $f2, $f2
/* 8BBF8 8008AFF8 3C01800D */  lui        $at, %hi(D_800D69C8)
/* 8BBFC 8008AFFC D42069C8 */  ldc1       $f0, %lo(D_800D69C8)($at)
/* 8BC00 8008B000 46201080 */  add.d      $f2, $f2, $f0
.L8008B004:
/* 8BC04 8008B004 03E00008 */  jr         $ra
/* 8BC08 8008B008 46222003 */   div.d     $f0, $f4, $f2

glabel func_8008B00C
/* 8BC0C 8008B00C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8BC10 8008B010 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 8BC14 8008B014 46206506 */  mov.d      $f20, $f12
/* 8BC18 8008B018 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BC1C 8008B01C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BC20 8008B020 0C026D4C */  jal        func_8009B530
/* 8BC24 8008B024 00C08021 */   addu      $s0, $a2, $zero
/* 8BC28 8008B028 F6000000 */  sdc1       $f0, 0x0($s0)
/* 8BC2C 8008B02C 0C026D98 */  jal        func_8009B660
/* 8BC30 8008B030 4620A306 */   mov.d     $f12, $f20
/* 8BC34 8008B034 F6000008 */  sdc1       $f0, 0x8($s0)
/* 8BC38 8008B038 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BC3C 8008B03C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BC40 8008B040 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 8BC44 8008B044 03E00008 */  jr         $ra
/* 8BC48 8008B048 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008B04C
/* 8BC4C 8008B04C 44056000 */  mfc1       $a1, $f12
/* 8BC50 8008B050 44046800 */  mfc1       $a0, $f13
/* 8BC54 8008B054 3C027FFF */  lui        $v0, (0x7FFFFFFF >> 16)
/* 8BC58 8008B058 3442FFFF */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
/* 8BC5C 8008B05C 3C038010 */  lui        $v1, (0x80100000 >> 16)
/* 8BC60 8008B060 00821024 */  and        $v0, $a0, $v0
/* 8BC64 8008B064 00431021 */  addu       $v0, $v0, $v1
/* 8BC68 8008B068 03E00008 */  jr         $ra
/* 8BC6C 8008B06C 000217C2 */   srl       $v0, $v0, 31

glabel func_8008B070
/* 8BC70 8008B070 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8BC74 8008B074 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 8BC78 8008B078 46206586 */  mov.d      $f22, $f12
/* 8BC7C 8008B07C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 8BC80 8008B080 46207506 */  mov.d      $f20, $f14
/* 8BC84 8008B084 AFBF0010 */  sw         $ra, 0x10($sp)
.L8008B088:
/* 8BC88 8008B088 0C022C13 */  jal        func_8008B04C
/* 8BC8C 8008B08C 4620B306 */   mov.d     $f12, $f22
/* 8BC90 8008B090 10400005 */  beqz       $v0, .L8008B0A8
/* 8BC94 8008B094 00000000 */   nop
/* 8BC98 8008B098 0C022C13 */  jal        func_8008B04C
/* 8BC9C 8008B09C 4620A306 */   mov.d     $f12, $f20
/* 8BCA0 8008B0A0 14400005 */  bnez       $v0, .L8008B0B8
/* 8BCA4 8008B0A4 00000000 */   nop
.L8008B0A8:
/* 8BCA8 8008B0A8 44800000 */  mtc1       $zero, $f0
/* 8BCAC 8008B0AC 44800800 */  mtc1       $zero, $f1
/* 8BCB0 8008B0B0 08022C6B */  j          .L8008B1AC
/* 8BCB4 8008B0B4 00000000 */   nop
.L8008B0B8:
/* 8BCB8 8008B0B8 44800000 */  mtc1       $zero, $f0
/* 8BCBC 8008B0BC 44800800 */  mtc1       $zero, $f1
/* 8BCC0 8008B0C0 00000000 */  nop
/* 8BCC4 8008B0C4 4620B03C */  c.lt.d     $f22, $f0
/* 8BCC8 8008B0C8 00000000 */  nop
/* 8BCCC 8008B0CC 45000012 */  bc1f       .L8008B118
/* 8BCD0 8008B0D0 00000000 */   nop
/* 8BCD4 8008B0D4 4620A03C */  c.lt.d     $f20, $f0
/* 8BCD8 8008B0D8 00000000 */  nop
/* 8BCDC 8008B0DC 45000004 */  bc1f       .L8008B0F0
/* 8BCE0 8008B0E0 00000000 */   nop
/* 8BCE4 8008B0E4 4620B587 */  neg.d      $f22, $f22
/* 8BCE8 8008B0E8 08022C22 */  j          .L8008B088
/* 8BCEC 8008B0EC 4620A507 */   neg.d     $f20, $f20
.L8008B0F0:
/* 8BCF0 8008B0F0 4634003C */  c.lt.d     $f0, $f20
/* 8BCF4 8008B0F4 00000000 */  nop
/* 8BCF8 8008B0F8 00000000 */  nop
/* 8BCFC 8008B0FC 45000003 */  bc1f       .L8008B10C
/* 8BD00 8008B100 4620A386 */   mov.d     $f14, $f20
/* 8BD04 8008B104 08022C50 */  j          .L8008B140
/* 8BD08 8008B108 4620B307 */   neg.d     $f12, $f22
.L8008B10C:
/* 8BD0C 8008B10C 3C01800D */  lui        $at, %hi(D_800D69D0)
/* 8BD10 8008B110 08022C6B */  j          .L8008B1AC
/* 8BD14 8008B114 D42069D0 */   ldc1      $f0, %lo(D_800D69D0)($at)
.L8008B118:
/* 8BD18 8008B118 4636003C */  c.lt.d     $f0, $f22
/* 8BD1C 8008B11C 00000000 */  nop
/* 8BD20 8008B120 45000022 */  bc1f       .L8008B1AC
/* 8BD24 8008B124 00000000 */   nop
/* 8BD28 8008B128 4620A03C */  c.lt.d     $f20, $f0
/* 8BD2C 8008B12C 00000000 */  nop
/* 8BD30 8008B130 00000000 */  nop
/* 8BD34 8008B134 45000006 */  bc1f       .L8008B150
/* 8BD38 8008B138 4620B306 */   mov.d     $f12, $f22
/* 8BD3C 8008B13C 4620A387 */  neg.d      $f14, $f20
.L8008B140:
/* 8BD40 8008B140 0C022C1C */  jal        func_8008B070
/* 8BD44 8008B144 00000000 */   nop
/* 8BD48 8008B148 08022C6B */  j          .L8008B1AC
/* 8BD4C 8008B14C 46200007 */   neg.d     $f0, $f0
.L8008B150:
/* 8BD50 8008B150 4634003C */  c.lt.d     $f0, $f20
/* 8BD54 8008B154 00000000 */  nop
/* 8BD58 8008B158 45000012 */  bc1f       .L8008B1A4
/* 8BD5C 8008B15C 00000000 */   nop
/* 8BD60 8008B160 4636A03C */  c.lt.d     $f20, $f22
/* 8BD64 8008B164 00000000 */  nop
/* 8BD68 8008B168 00000000 */  nop
/* 8BD6C 8008B16C 45000008 */  bc1f       .L8008B190
/* 8BD70 8008B170 4620A306 */   mov.d     $f12, $f20
/* 8BD74 8008B174 0C022C1C */  jal        func_8008B070
/* 8BD78 8008B178 4620B386 */   mov.d     $f14, $f22
/* 8BD7C 8008B17C 3C01800D */  lui        $at, %hi(D_800D69D8)
/* 8BD80 8008B180 D42269D8 */  ldc1       $f2, %lo(D_800D69D8)($at)
/* 8BD84 8008B184 46200007 */  neg.d      $f0, $f0
/* 8BD88 8008B188 08022C6B */  j          .L8008B1AC
/* 8BD8C 8008B18C 46220000 */   add.d     $f0, $f0, $f2
.L8008B190:
/* 8BD90 8008B190 4620B306 */  mov.d      $f12, $f22
/* 8BD94 8008B194 0C026E44 */  jal        func_8009B910
/* 8BD98 8008B198 4620A386 */   mov.d     $f14, $f20
/* 8BD9C 8008B19C 08022C6B */  j          .L8008B1AC
/* 8BDA0 8008B1A0 00000000 */   nop
.L8008B1A4:
/* 8BDA4 8008B1A4 3C01800D */  lui        $at, %hi(D_800D69E0)
/* 8BDA8 8008B1A8 D42069E0 */  ldc1       $f0, %lo(D_800D69E0)($at)
.L8008B1AC:
/* 8BDAC 8008B1AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BDB0 8008B1B0 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 8BDB4 8008B1B4 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 8BDB8 8008B1B8 03E00008 */  jr         $ra
/* 8BDBC 8008B1BC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8008B1C0
/* 8BDC0 8008B1C0 D4860000 */  ldc1       $f6, 0x0($a0)
/* 8BDC4 8008B1C4 D4A00000 */  ldc1       $f0, 0x0($a1)
/* 8BDC8 8008B1C8 46203182 */  mul.d      $f6, $f6, $f0
/* 8BDCC 8008B1CC D4840008 */  ldc1       $f4, 0x8($a0)
/* 8BDD0 8008B1D0 D4A00008 */  ldc1       $f0, 0x8($a1)
/* 8BDD4 8008B1D4 46202102 */  mul.d      $f4, $f4, $f0
/* 8BDD8 8008B1D8 D4A20010 */  ldc1       $f2, 0x10($a1)
/* 8BDDC 8008B1DC D4800010 */  ldc1       $f0, 0x10($a0)
/* 8BDE0 8008B1E0 46220002 */  mul.d      $f0, $f0, $f2
/* 8BDE4 8008B1E4 46243180 */  add.d      $f6, $f6, $f4
/* 8BDE8 8008B1E8 03E00008 */  jr         $ra
/* 8BDEC 8008B1EC 46203000 */   add.d     $f0, $f6, $f0

glabel func_8008B1F0
/* 8BDF0 8008B1F0 D4840000 */  ldc1       $f4, 0x0($a0)
/* 8BDF4 8008B1F4 D4A00000 */  ldc1       $f0, 0x0($a1)
/* 8BDF8 8008B1F8 46202102 */  mul.d      $f4, $f4, $f0
/* 8BDFC 8008B1FC D4A20008 */  ldc1       $f2, 0x8($a1)
/* 8BE00 8008B200 D4800008 */  ldc1       $f0, 0x8($a0)
/* 8BE04 8008B204 46220002 */  mul.d      $f0, $f0, $f2
/* 8BE08 8008B208 03E00008 */  jr         $ra
/* 8BE0C 8008B20C 46202000 */   add.d     $f0, $f4, $f0

glabel func_8008B210
/* 8BE10 8008B210 D4840008 */  ldc1       $f4, 0x8($a0)
/* 8BE14 8008B214 D4A00010 */  ldc1       $f0, 0x10($a1)
/* 8BE18 8008B218 46202102 */  mul.d      $f4, $f4, $f0
/* 8BE1C 8008B21C D4A20008 */  ldc1       $f2, 0x8($a1)
/* 8BE20 8008B220 D4800010 */  ldc1       $f0, 0x10($a0)
/* 8BE24 8008B224 46220002 */  mul.d      $f0, $f0, $f2
/* 8BE28 8008B228 46202101 */  sub.d      $f4, $f4, $f0
/* 8BE2C 8008B22C F4C40000 */  sdc1       $f4, 0x0($a2)
/* 8BE30 8008B230 D4840010 */  ldc1       $f4, 0x10($a0)
/* 8BE34 8008B234 D4A00000 */  ldc1       $f0, 0x0($a1)
/* 8BE38 8008B238 46202102 */  mul.d      $f4, $f4, $f0
/* 8BE3C 8008B23C D4A20010 */  ldc1       $f2, 0x10($a1)
/* 8BE40 8008B240 D4800000 */  ldc1       $f0, 0x0($a0)
/* 8BE44 8008B244 46220002 */  mul.d      $f0, $f0, $f2
/* 8BE48 8008B248 46202101 */  sub.d      $f4, $f4, $f0
/* 8BE4C 8008B24C F4C40008 */  sdc1       $f4, 0x8($a2)
/* 8BE50 8008B250 D4840000 */  ldc1       $f4, 0x0($a0)
/* 8BE54 8008B254 D4A00008 */  ldc1       $f0, 0x8($a1)
/* 8BE58 8008B258 46202102 */  mul.d      $f4, $f4, $f0
/* 8BE5C 8008B25C D4A20000 */  ldc1       $f2, 0x0($a1)
/* 8BE60 8008B260 D4800008 */  ldc1       $f0, 0x8($a0)
/* 8BE64 8008B264 46220002 */  mul.d      $f0, $f0, $f2
/* 8BE68 8008B268 46202101 */  sub.d      $f4, $f4, $f0
/* 8BE6C 8008B26C 03E00008 */  jr         $ra
/* 8BE70 8008B270 F4C40010 */   sdc1      $f4, 0x10($a2)

glabel func_8008B274
/* 8BE74 8008B274 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BE78 8008B278 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8BE7C 8008B27C D4820000 */  ldc1       $f2, 0x0($a0)
/* 8BE80 8008B280 46221082 */  mul.d      $f2, $f2, $f2
/* 8BE84 8008B284 D4800008 */  ldc1       $f0, 0x8($a0)
/* 8BE88 8008B288 46200002 */  mul.d      $f0, $f0, $f0
/* 8BE8C 8008B28C D48C0010 */  ldc1       $f12, 0x10($a0)
/* 8BE90 8008B290 462C6302 */  mul.d      $f12, $f12, $f12
/* 8BE94 8008B294 46201080 */  add.d      $f2, $f2, $f0
/* 8BE98 8008B298 0C022BA9 */  jal        func_8008AEA4
/* 8BE9C 8008B29C 462C1300 */   add.d     $f12, $f2, $f12
/* 8BEA0 8008B2A0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BEA4 8008B2A4 03E00008 */  jr         $ra
/* 8BEA8 8008B2A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B2AC
/* 8BEAC 8008B2AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BEB0 8008B2B0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8BEB4 8008B2B4 D4800000 */  ldc1       $f0, 0x0($a0)
/* 8BEB8 8008B2B8 46200002 */  mul.d      $f0, $f0, $f0
/* 8BEBC 8008B2BC D48C0008 */  ldc1       $f12, 0x8($a0)
/* 8BEC0 8008B2C0 462C6302 */  mul.d      $f12, $f12, $f12
/* 8BEC4 8008B2C4 0C022BA9 */  jal        func_8008AEA4
/* 8BEC8 8008B2C8 462C0300 */   add.d     $f12, $f0, $f12
/* 8BECC 8008B2CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BED0 8008B2D0 03E00008 */  jr         $ra
/* 8BED4 8008B2D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B2D8
/* 8BED8 8008B2D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BEDC 8008B2DC AFBF0010 */  sw         $ra, 0x10($sp)
/* 8BEE0 8008B2E0 D4800000 */  ldc1       $f0, 0x0($a0)
/* 8BEE4 8008B2E4 46200002 */  mul.d      $f0, $f0, $f0
/* 8BEE8 8008B2E8 D48C0010 */  ldc1       $f12, 0x10($a0)
/* 8BEEC 8008B2EC 462C6302 */  mul.d      $f12, $f12, $f12
/* 8BEF0 8008B2F0 0C022BA9 */  jal        func_8008AEA4
/* 8BEF4 8008B2F4 462C0300 */   add.d     $f12, $f0, $f12
/* 8BEF8 8008B2F8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BEFC 8008B2FC 03E00008 */  jr         $ra
/* 8BF00 8008B300 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B304
/* 8BF04 8008B304 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BF08 8008B308 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8BF0C 8008B30C D4800008 */  ldc1       $f0, 0x8($a0)
/* 8BF10 8008B310 46200002 */  mul.d      $f0, $f0, $f0
/* 8BF14 8008B314 D48C0010 */  ldc1       $f12, 0x10($a0)
/* 8BF18 8008B318 462C6302 */  mul.d      $f12, $f12, $f12
/* 8BF1C 8008B31C 0C022BA9 */  jal        func_8008AEA4
/* 8BF20 8008B320 462C0300 */   add.d     $f12, $f0, $f12
/* 8BF24 8008B324 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BF28 8008B328 03E00008 */  jr         $ra
/* 8BF2C 8008B32C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B330
/* 8BF30 8008B330 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BF34 8008B334 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BF38 8008B338 00808021 */  addu       $s0, $a0, $zero
/* 8BF3C 8008B33C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BF40 8008B340 D60C0000 */  ldc1       $f12, 0x0($s0)
/* 8BF44 8008B344 462C6302 */  mul.d      $f12, $f12, $f12
/* 8BF48 8008B348 D6020008 */  ldc1       $f2, 0x8($s0)
/* 8BF4C 8008B34C 46221082 */  mul.d      $f2, $f2, $f2
/* 8BF50 8008B350 D6000010 */  ldc1       $f0, 0x10($s0)
/* 8BF54 8008B354 46200002 */  mul.d      $f0, $f0, $f0
/* 8BF58 8008B358 46226300 */  add.d      $f12, $f12, $f2
/* 8BF5C 8008B35C 0C022BA9 */  jal        func_8008AEA4
/* 8BF60 8008B360 46206300 */   add.d     $f12, $f12, $f0
/* 8BF64 8008B364 44801000 */  mtc1       $zero, $f2
/* 8BF68 8008B368 44801800 */  mtc1       $zero, $f3
/* 8BF6C 8008B36C 46200186 */  mov.d      $f6, $f0
/* 8BF70 8008B370 46223032 */  c.eq.d     $f6, $f2
/* 8BF74 8008B374 00000000 */  nop
/* 8BF78 8008B378 00000000 */  nop
/* 8BF7C 8008B37C 45000005 */  bc1f       .L8008B394
/* 8BF80 8008B380 46203006 */   mov.d     $f0, $f6
/* 8BF84 8008B384 F6020010 */  sdc1       $f2, 0x10($s0)
/* 8BF88 8008B388 F6020008 */  sdc1       $f2, 0x8($s0)
/* 8BF8C 8008B38C 08022CEF */  j          .L8008B3BC
/* 8BF90 8008B390 F6020000 */   sdc1      $f2, 0x0($s0)
.L8008B394:
/* 8BF94 8008B394 D6040000 */  ldc1       $f4, 0x0($s0)
/* 8BF98 8008B398 46262103 */  div.d      $f4, $f4, $f6
/* 8BF9C 8008B39C D6020008 */  ldc1       $f2, 0x8($s0)
/* 8BFA0 8008B3A0 46261083 */  div.d      $f2, $f2, $f6
/* 8BFA4 8008B3A4 D6000010 */  ldc1       $f0, 0x10($s0)
/* 8BFA8 8008B3A8 46260003 */  div.d      $f0, $f0, $f6
/* 8BFAC 8008B3AC F6040000 */  sdc1       $f4, 0x0($s0)
/* 8BFB0 8008B3B0 F6020008 */  sdc1       $f2, 0x8($s0)
/* 8BFB4 8008B3B4 F6000010 */  sdc1       $f0, 0x10($s0)
/* 8BFB8 8008B3B8 46203006 */  mov.d      $f0, $f6
.L8008B3BC:
/* 8BFBC 8008B3BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8BFC0 8008B3C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8BFC4 8008B3C4 03E00008 */  jr         $ra
/* 8BFC8 8008B3C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B3CC
/* 8BFCC 8008B3CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BFD0 8008B3D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8BFD4 8008B3D4 00808021 */  addu       $s0, $a0, $zero
/* 8BFD8 8008B3D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8BFDC 8008B3DC D6000000 */  ldc1       $f0, 0x0($s0)
/* 8BFE0 8008B3E0 46200002 */  mul.d      $f0, $f0, $f0
/* 8BFE4 8008B3E4 D60C0008 */  ldc1       $f12, 0x8($s0)
/* 8BFE8 8008B3E8 462C6302 */  mul.d      $f12, $f12, $f12
/* 8BFEC 8008B3EC 0C022BA9 */  jal        func_8008AEA4
/* 8BFF0 8008B3F0 462C0300 */   add.d     $f12, $f0, $f12
/* 8BFF4 8008B3F4 44801000 */  mtc1       $zero, $f2
/* 8BFF8 8008B3F8 44801800 */  mtc1       $zero, $f3
/* 8BFFC 8008B3FC 46200106 */  mov.d      $f4, $f0
/* 8C000 8008B400 46222032 */  c.eq.d     $f4, $f2
/* 8C004 8008B404 00000000 */  nop
/* 8C008 8008B408 00000000 */  nop
/* 8C00C 8008B40C 45000004 */  bc1f       .L8008B420
/* 8C010 8008B410 46202006 */   mov.d     $f0, $f4
/* 8C014 8008B414 F6020008 */  sdc1       $f2, 0x8($s0)
/* 8C018 8008B418 08022D0F */  j          .L8008B43C
/* 8C01C 8008B41C F6020000 */   sdc1      $f2, 0x0($s0)
.L8008B420:
/* 8C020 8008B420 D6020000 */  ldc1       $f2, 0x0($s0)
/* 8C024 8008B424 46241083 */  div.d      $f2, $f2, $f4
/* 8C028 8008B428 D6000008 */  ldc1       $f0, 0x8($s0)
/* 8C02C 8008B42C 46240003 */  div.d      $f0, $f0, $f4
/* 8C030 8008B430 F6020000 */  sdc1       $f2, 0x0($s0)
/* 8C034 8008B434 F6000008 */  sdc1       $f0, 0x8($s0)
/* 8C038 8008B438 46202006 */  mov.d      $f0, $f4
.L8008B43C:
/* 8C03C 8008B43C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C040 8008B440 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C044 8008B444 03E00008 */  jr         $ra
/* 8C048 8008B448 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B44C
/* 8C04C 8008B44C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C050 8008B450 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C054 8008B454 00808021 */  addu       $s0, $a0, $zero
/* 8C058 8008B458 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C05C 8008B45C D6000000 */  ldc1       $f0, 0x0($s0)
/* 8C060 8008B460 46200002 */  mul.d      $f0, $f0, $f0
/* 8C064 8008B464 D60C0010 */  ldc1       $f12, 0x10($s0)
/* 8C068 8008B468 462C6302 */  mul.d      $f12, $f12, $f12
/* 8C06C 8008B46C 0C022BA9 */  jal        func_8008AEA4
/* 8C070 8008B470 462C0300 */   add.d     $f12, $f0, $f12
/* 8C074 8008B474 44801000 */  mtc1       $zero, $f2
/* 8C078 8008B478 44801800 */  mtc1       $zero, $f3
/* 8C07C 8008B47C 46200106 */  mov.d      $f4, $f0
/* 8C080 8008B480 46222032 */  c.eq.d     $f4, $f2
/* 8C084 8008B484 00000000 */  nop
/* 8C088 8008B488 00000000 */  nop
/* 8C08C 8008B48C 45000004 */  bc1f       .L8008B4A0
/* 8C090 8008B490 46202006 */   mov.d     $f0, $f4
/* 8C094 8008B494 F6020010 */  sdc1       $f2, 0x10($s0)
/* 8C098 8008B498 08022D2F */  j          .L8008B4BC
/* 8C09C 8008B49C F6020000 */   sdc1      $f2, 0x0($s0)
.L8008B4A0:
/* 8C0A0 8008B4A0 D6020000 */  ldc1       $f2, 0x0($s0)
/* 8C0A4 8008B4A4 46241083 */  div.d      $f2, $f2, $f4
/* 8C0A8 8008B4A8 D6000010 */  ldc1       $f0, 0x10($s0)
/* 8C0AC 8008B4AC 46240003 */  div.d      $f0, $f0, $f4
/* 8C0B0 8008B4B0 F6020000 */  sdc1       $f2, 0x0($s0)
/* 8C0B4 8008B4B4 F6000010 */  sdc1       $f0, 0x10($s0)
/* 8C0B8 8008B4B8 46202006 */  mov.d      $f0, $f4
.L8008B4BC:
/* 8C0BC 8008B4BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C0C0 8008B4C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C0C4 8008B4C4 03E00008 */  jr         $ra
/* 8C0C8 8008B4C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B4CC
/* 8C0CC 8008B4CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C0D0 8008B4D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C0D4 8008B4D4 00808021 */  addu       $s0, $a0, $zero
/* 8C0D8 8008B4D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C0DC 8008B4DC D6000008 */  ldc1       $f0, 0x8($s0)
/* 8C0E0 8008B4E0 46200002 */  mul.d      $f0, $f0, $f0
/* 8C0E4 8008B4E4 D60C0010 */  ldc1       $f12, 0x10($s0)
/* 8C0E8 8008B4E8 462C6302 */  mul.d      $f12, $f12, $f12
/* 8C0EC 8008B4EC 0C022BA9 */  jal        func_8008AEA4
/* 8C0F0 8008B4F0 462C0300 */   add.d     $f12, $f0, $f12
/* 8C0F4 8008B4F4 44801000 */  mtc1       $zero, $f2
/* 8C0F8 8008B4F8 44801800 */  mtc1       $zero, $f3
/* 8C0FC 8008B4FC 46200106 */  mov.d      $f4, $f0
/* 8C100 8008B500 46222032 */  c.eq.d     $f4, $f2
/* 8C104 8008B504 00000000 */  nop
/* 8C108 8008B508 00000000 */  nop
/* 8C10C 8008B50C 45000004 */  bc1f       .L8008B520
/* 8C110 8008B510 46202006 */   mov.d     $f0, $f4
/* 8C114 8008B514 F6020010 */  sdc1       $f2, 0x10($s0)
/* 8C118 8008B518 08022D4F */  j          .L8008B53C
/* 8C11C 8008B51C F6020008 */   sdc1      $f2, 0x8($s0)
.L8008B520:
/* 8C120 8008B520 D6020008 */  ldc1       $f2, 0x8($s0)
/* 8C124 8008B524 46241083 */  div.d      $f2, $f2, $f4
/* 8C128 8008B528 D6000010 */  ldc1       $f0, 0x10($s0)
/* 8C12C 8008B52C 46240003 */  div.d      $f0, $f0, $f4
/* 8C130 8008B530 F6020008 */  sdc1       $f2, 0x8($s0)
/* 8C134 8008B534 F6000010 */  sdc1       $f0, 0x10($s0)
/* 8C138 8008B538 46202006 */  mov.d      $f0, $f4
.L8008B53C:
/* 8C13C 8008B53C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C140 8008B540 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C144 8008B544 03E00008 */  jr         $ra
/* 8C148 8008B548 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B54C
/* 8C14C 8008B54C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 8C150 8008B550 AFBF0044 */  sw         $ra, 0x44($sp)
/* 8C154 8008B554 AFB00040 */  sw         $s0, 0x40($sp)
/* 8C158 8008B558 84A30000 */  lh         $v1, 0x0($a1)
/* 8C15C 8008B55C 84A20002 */  lh         $v0, 0x2($a1)
/* 8C160 8008B560 00831821 */  addu       $v1, $a0, $v1
/* 8C164 8008B564 00821021 */  addu       $v0, $a0, $v0
/* 8C168 8008B568 D4600000 */  ldc1       $f0, 0x0($v1)
/* 8C16C 8008B56C D4420000 */  ldc1       $f2, 0x0($v0)
/* 8C170 8008B570 46220001 */  sub.d      $f0, $f0, $f2
/* 8C174 8008B574 84A50004 */  lh         $a1, 0x4($a1)
/* 8C178 8008B578 F7A00010 */  sdc1       $f0, 0x10($sp)
/* 8C17C 8008B57C D4600008 */  ldc1       $f0, 0x8($v1)
/* 8C180 8008B580 D4420008 */  ldc1       $f2, 0x8($v0)
/* 8C184 8008B584 46220001 */  sub.d      $f0, $f0, $f2
/* 8C188 8008B588 F7A00018 */  sdc1       $f0, 0x18($sp)
/* 8C18C 8008B58C D4600010 */  ldc1       $f0, 0x10($v1)
/* 8C190 8008B590 D4420010 */  ldc1       $f2, 0x10($v0)
/* 8C194 8008B594 46220001 */  sub.d      $f0, $f0, $f2
/* 8C198 8008B598 00852021 */  addu       $a0, $a0, $a1
/* 8C19C 8008B59C F7A00020 */  sdc1       $f0, 0x20($sp)
/* 8C1A0 8008B5A0 D4800000 */  ldc1       $f0, 0x0($a0)
/* 8C1A4 8008B5A4 D4420000 */  ldc1       $f2, 0x0($v0)
/* 8C1A8 8008B5A8 46220001 */  sub.d      $f0, $f0, $f2
/* 8C1AC 8008B5AC F7A00028 */  sdc1       $f0, 0x28($sp)
/* 8C1B0 8008B5B0 D4800008 */  ldc1       $f0, 0x8($a0)
/* 8C1B4 8008B5B4 D4420008 */  ldc1       $f2, 0x8($v0)
/* 8C1B8 8008B5B8 46220001 */  sub.d      $f0, $f0, $f2
/* 8C1BC 8008B5BC F7A00030 */  sdc1       $f0, 0x30($sp)
/* 8C1C0 8008B5C0 D4800010 */  ldc1       $f0, 0x10($a0)
/* 8C1C4 8008B5C4 D4420010 */  ldc1       $f2, 0x10($v0)
/* 8C1C8 8008B5C8 00C08021 */  addu       $s0, $a2, $zero
/* 8C1CC 8008B5CC 46220001 */  sub.d      $f0, $f0, $f2
/* 8C1D0 8008B5D0 27A50028 */  addiu      $a1, $sp, 0x28
/* 8C1D4 8008B5D4 F7A00038 */  sdc1       $f0, 0x38($sp)
/* 8C1D8 8008B5D8 0C022C84 */  jal        func_8008B210
/* 8C1DC 8008B5DC 27A40010 */   addiu     $a0, $sp, 0x10
/* 8C1E0 8008B5E0 0C022CCC */  jal        func_8008B330
/* 8C1E4 8008B5E4 02002021 */   addu      $a0, $s0, $zero
/* 8C1E8 8008B5E8 8FBF0044 */  lw         $ra, 0x44($sp)
/* 8C1EC 8008B5EC 8FB00040 */  lw         $s0, 0x40($sp)
/* 8C1F0 8008B5F0 03E00008 */  jr         $ra
/* 8C1F4 8008B5F4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8008B5F8
/* 8C1F8 8008B5F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C1FC 8008B5FC AFB00010 */  sw         $s0, 0x10($sp)
/* 8C200 8008B600 00808021 */  addu       $s0, $a0, $zero
/* 8C204 8008B604 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C208 8008B608 C6040000 */  lwc1       $f4, 0x0($s0)
/* 8C20C 8008B60C 46042102 */  mul.s      $f4, $f4, $f4
/* 8C210 8008B610 C6020004 */  lwc1       $f2, 0x4($s0)
/* 8C214 8008B614 46021082 */  mul.s      $f2, $f2, $f2
/* 8C218 8008B618 C6000008 */  lwc1       $f0, 0x8($s0)
/* 8C21C 8008B61C 46000002 */  mul.s      $f0, $f0, $f0
/* 8C220 8008B620 46022100 */  add.s      $f4, $f4, $f2
/* 8C224 8008B624 46002300 */  add.s      $f12, $f4, $f0
/* 8C228 8008B628 46006004 */  sqrt.s     $f0, $f12
/* 8C22C 8008B62C 46000032 */  c.eq.s     $f0, $f0
/* 8C230 8008B630 00000000 */  nop
/* 8C234 8008B634 45010003 */  bc1t       .L8008B644
/* 8C238 8008B638 00000000 */   nop
/* 8C23C 8008B63C 0C023B88 */  jal        func_8008EE20
/* 8C240 8008B640 00000000 */   nop
.L8008B644:
/* 8C244 8008B644 44801000 */  mtc1       $zero, $f2
/* 8C248 8008B648 44801800 */  mtc1       $zero, $f3
/* 8C24C 8008B64C 46000186 */  mov.s      $f6, $f0
/* 8C250 8008B650 46003021 */  cvt.d.s    $f0, $f6
/* 8C254 8008B654 46220032 */  c.eq.d     $f0, $f2
/* 8C258 8008B658 00000000 */  nop
/* 8C25C 8008B65C 45000007 */  bc1f       .L8008B67C
/* 8C260 8008B660 00000000 */   nop
/* 8C264 8008B664 44800000 */  mtc1       $zero, $f0
/* 8C268 8008B668 00000000 */  nop
/* 8C26C 8008B66C E6000008 */  swc1       $f0, 0x8($s0)
/* 8C270 8008B670 E6000004 */  swc1       $f0, 0x4($s0)
/* 8C274 8008B674 08022DA8 */  j          .L8008B6A0
/* 8C278 8008B678 E6000000 */   swc1      $f0, 0x0($s0)
.L8008B67C:
/* 8C27C 8008B67C C6040000 */  lwc1       $f4, 0x0($s0)
/* 8C280 8008B680 46062103 */  div.s      $f4, $f4, $f6
/* 8C284 8008B684 C6020004 */  lwc1       $f2, 0x4($s0)
/* 8C288 8008B688 46061083 */  div.s      $f2, $f2, $f6
/* 8C28C 8008B68C C6000008 */  lwc1       $f0, 0x8($s0)
/* 8C290 8008B690 46060003 */  div.s      $f0, $f0, $f6
/* 8C294 8008B694 E6040000 */  swc1       $f4, 0x0($s0)
/* 8C298 8008B698 E6020004 */  swc1       $f2, 0x4($s0)
/* 8C29C 8008B69C E6000008 */  swc1       $f0, 0x8($s0)
.L8008B6A0:
/* 8C2A0 8008B6A0 46003006 */  mov.s      $f0, $f6
/* 8C2A4 8008B6A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C2A8 8008B6A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C2AC 8008B6AC 03E00008 */  jr         $ra
/* 8C2B0 8008B6B0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008B6B4
/* 8C2B4 8008B6B4 C4840004 */  lwc1       $f4, 0x4($a0)
/* 8C2B8 8008B6B8 C4A00008 */  lwc1       $f0, 0x8($a1)
/* 8C2BC 8008B6BC 46002102 */  mul.s      $f4, $f4, $f0
/* 8C2C0 8008B6C0 C4A20004 */  lwc1       $f2, 0x4($a1)
/* 8C2C4 8008B6C4 C4800008 */  lwc1       $f0, 0x8($a0)
/* 8C2C8 8008B6C8 46020002 */  mul.s      $f0, $f0, $f2
/* 8C2CC 8008B6CC 46002101 */  sub.s      $f4, $f4, $f0
/* 8C2D0 8008B6D0 E4C40000 */  swc1       $f4, 0x0($a2)
/* 8C2D4 8008B6D4 C4840008 */  lwc1       $f4, 0x8($a0)
/* 8C2D8 8008B6D8 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 8C2DC 8008B6DC 46002102 */  mul.s      $f4, $f4, $f0
/* 8C2E0 8008B6E0 C4A20008 */  lwc1       $f2, 0x8($a1)
/* 8C2E4 8008B6E4 C4800000 */  lwc1       $f0, 0x0($a0)
/* 8C2E8 8008B6E8 46020002 */  mul.s      $f0, $f0, $f2
/* 8C2EC 8008B6EC 46002101 */  sub.s      $f4, $f4, $f0
/* 8C2F0 8008B6F0 E4C40004 */  swc1       $f4, 0x4($a2)
/* 8C2F4 8008B6F4 C4840000 */  lwc1       $f4, 0x0($a0)
/* 8C2F8 8008B6F8 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 8C2FC 8008B6FC 46002102 */  mul.s      $f4, $f4, $f0
/* 8C300 8008B700 C4A20000 */  lwc1       $f2, 0x0($a1)
/* 8C304 8008B704 C4800004 */  lwc1       $f0, 0x4($a0)
/* 8C308 8008B708 46020002 */  mul.s      $f0, $f0, $f2
/* 8C30C 8008B70C 46002101 */  sub.s      $f4, $f4, $f0
/* 8C310 8008B710 03E00008 */  jr         $ra
/* 8C314 8008B714 E4C40008 */   swc1      $f4, 0x8($a2)

glabel func_8008B718
/* 8C318 8008B718 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8C31C 8008B71C AFBF0034 */  sw         $ra, 0x34($sp)
/* 8C320 8008B720 AFB00030 */  sw         $s0, 0x30($sp)
/* 8C324 8008B724 84A30000 */  lh         $v1, 0x0($a1)
/* 8C328 8008B728 84A20002 */  lh         $v0, 0x2($a1)
/* 8C32C 8008B72C 00831821 */  addu       $v1, $a0, $v1
/* 8C330 8008B730 00821021 */  addu       $v0, $a0, $v0
/* 8C334 8008B734 C4600000 */  lwc1       $f0, 0x0($v1)
/* 8C338 8008B738 C4420000 */  lwc1       $f2, 0x0($v0)
/* 8C33C 8008B73C 46020001 */  sub.s      $f0, $f0, $f2
/* 8C340 8008B740 84A50004 */  lh         $a1, 0x4($a1)
/* 8C344 8008B744 E7A00010 */  swc1       $f0, 0x10($sp)
/* 8C348 8008B748 C4600004 */  lwc1       $f0, 0x4($v1)
/* 8C34C 8008B74C C4420004 */  lwc1       $f2, 0x4($v0)
/* 8C350 8008B750 46020001 */  sub.s      $f0, $f0, $f2
/* 8C354 8008B754 E7A00014 */  swc1       $f0, 0x14($sp)
/* 8C358 8008B758 C4600008 */  lwc1       $f0, 0x8($v1)
/* 8C35C 8008B75C C4420008 */  lwc1       $f2, 0x8($v0)
/* 8C360 8008B760 46020001 */  sub.s      $f0, $f0, $f2
/* 8C364 8008B764 00852021 */  addu       $a0, $a0, $a1
/* 8C368 8008B768 E7A00018 */  swc1       $f0, 0x18($sp)
/* 8C36C 8008B76C C4800000 */  lwc1       $f0, 0x0($a0)
/* 8C370 8008B770 C4420000 */  lwc1       $f2, 0x0($v0)
/* 8C374 8008B774 46020001 */  sub.s      $f0, $f0, $f2
/* 8C378 8008B778 E7A00020 */  swc1       $f0, 0x20($sp)
/* 8C37C 8008B77C C4800004 */  lwc1       $f0, 0x4($a0)
/* 8C380 8008B780 C4420004 */  lwc1       $f2, 0x4($v0)
/* 8C384 8008B784 46020001 */  sub.s      $f0, $f0, $f2
/* 8C388 8008B788 E7A00024 */  swc1       $f0, 0x24($sp)
/* 8C38C 8008B78C C4800008 */  lwc1       $f0, 0x8($a0)
/* 8C390 8008B790 C4420008 */  lwc1       $f2, 0x8($v0)
/* 8C394 8008B794 00C08021 */  addu       $s0, $a2, $zero
/* 8C398 8008B798 46020001 */  sub.s      $f0, $f0, $f2
/* 8C39C 8008B79C 27A50020 */  addiu      $a1, $sp, 0x20
/* 8C3A0 8008B7A0 27A40010 */  addiu      $a0, $sp, 0x10
/* 8C3A4 8008B7A4 0C022DAD */  jal        func_8008B6B4
/* 8C3A8 8008B7A8 E7A00028 */   swc1      $f0, 0x28($sp)
/* 8C3AC 8008B7AC 0C022D7E */  jal        func_8008B5F8
/* 8C3B0 8008B7B0 02002021 */   addu      $a0, $s0, $zero
/* 8C3B4 8008B7B4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8C3B8 8008B7B8 8FB00030 */  lw         $s0, 0x30($sp)
/* 8C3BC 8008B7BC 03E00008 */  jr         $ra
/* 8C3C0 8008B7C0 27BD0038 */   addiu     $sp, $sp, 0x38
/* 8C3C4 8008B7C4 00000000 */  nop
/* 8C3C8 8008B7C8 00000000 */  nop
/* 8C3CC 8008B7CC 00000000 */  nop
