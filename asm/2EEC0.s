.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8002E2C0
/* 2EEC0 8002E2C0 3C01800D */  lui        $at, %hi(D_800D1448)
/* 2EEC4 8002E2C4 D4261448 */  ldc1       $f6, %lo(D_800D1448)($at)
/* 2EEC8 8002E2C8 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2EECC 8002E2CC D420B850 */  ldc1       $f0, %lo(D_802AB850)($at)
/* 2EED0 8002E2D0 4626003C */  c.lt.d     $f0, $f6
/* 2EED4 8002E2D4 00000000 */  nop
/* 2EED8 8002E2D8 45000005 */  bc1f       .L8002E2F0
/* 2EEDC 8002E2DC 00000000 */   nop
/* 2EEE0 8002E2E0 3C01800D */  lui        $at, %hi(D_800D1450)
/* 2EEE4 8002E2E4 D4261450 */  ldc1       $f6, %lo(D_800D1450)($at)
/* 2EEE8 8002E2E8 0800B8C0 */  j          .L8002E300
/* 2EEEC 8002E2EC 46260102 */   mul.d     $f4, $f0, $f6
.L8002E2F0:
/* 2EEF0 8002E2F0 3C01800D */  lui        $at, %hi(D_800D1458)
/* 2EEF4 8002E2F4 D4241458 */  ldc1       $f4, %lo(D_800D1458)($at)
/* 2EEF8 8002E2F8 46240101 */  sub.d      $f4, $f0, $f4
/* 2EEFC 8002E2FC 46202183 */  div.d      $f6, $f4, $f0
.L8002E300:
/* 2EF00 8002E300 3C02802B */  lui        $v0, %hi(D_802AB858)
/* 2EF04 8002E304 2442B858 */  addiu      $v0, $v0, %lo(D_802AB858)
/* 2EF08 8002E308 D4420000 */  ldc1       $f2, 0x0($v0)
/* 2EF0C 8002E30C 46261082 */  mul.d      $f2, $f2, $f6
/* 2EF10 8002E310 3C01802B */  lui        $at, %hi(D_802AB860)
/* 2EF14 8002E314 D420B860 */  ldc1       $f0, %lo(D_802AB860)($at)
/* 2EF18 8002E318 46260002 */  mul.d      $f0, $f0, $f6
/* 2EF1C 8002E31C 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2EF20 8002E320 F424B850 */  sdc1       $f4, %lo(D_802AB850)($at)
/* 2EF24 8002E324 F4420000 */  sdc1       $f2, 0x0($v0)
/* 2EF28 8002E328 3C01802B */  lui        $at, %hi(D_802AB860)
/* 2EF2C 8002E32C 03E00008 */  jr         $ra
/* 2EF30 8002E330 F420B860 */   sdc1      $f0, %lo(D_802AB860)($at)

glabel func_8002E334
/* 2EF34 8002E334 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2EF38 8002E338 AFB20018 */  sw         $s2, 0x18($sp)
/* 2EF3C 8002E33C 00809021 */  addu       $s2, $a0, $zero
/* 2EF40 8002E340 D64C0150 */  ldc1       $f12, 0x150($s2)
/* 2EF44 8002E344 AFB10014 */  sw         $s1, 0x14($sp)
/* 2EF48 8002E348 3C11802B */  lui        $s1, %hi(D_802AB840)
/* 2EF4C 8002E34C 2631B840 */  addiu      $s1, $s1, %lo(D_802AB840)
/* 2EF50 8002E350 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2EF54 8002E354 AFB00010 */  sw         $s0, 0x10($sp)
/* 2EF58 8002E358 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 2EF5C 8002E35C 3C01802B */  lui        $at, %hi(D_802AB83C)
/* 2EF60 8002E360 AC20B83C */  sw         $zero, %lo(D_802AB83C)($at)
/* 2EF64 8002E364 0C022C03 */  jal        func_8008B00C
/* 2EF68 8002E368 02203021 */   addu      $a2, $s1, $zero
/* 2EF6C 8002E36C D6420060 */  ldc1       $f2, 0x60($s2)
/* 2EF70 8002E370 46221102 */  mul.d      $f4, $f2, $f2
/* 2EF74 8002E374 D6400068 */  ldc1       $f0, 0x68($s2)
/* 2EF78 8002E378 46200302 */  mul.d      $f12, $f0, $f0
/* 2EF7C 8002E37C 3C10802B */  lui        $s0, %hi(D_802AB858)
/* 2EF80 8002E380 2610B858 */  addiu      $s0, $s0, %lo(D_802AB858)
/* 2EF84 8002E384 F6020000 */  sdc1       $f2, 0x0($s0)
/* 2EF88 8002E388 3C01802B */  lui        $at, %hi(D_802AB860)
/* 2EF8C 8002E38C F420B860 */  sdc1       $f0, %lo(D_802AB860)($at)
/* 2EF90 8002E390 0C022BA9 */  jal        func_8008AEA4
/* 2EF94 8002E394 462C2300 */   add.d     $f12, $f4, $f12
/* 2EF98 8002E398 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2EF9C 8002E39C 0C00B8B0 */  jal        func_8002E2C0
/* 2EFA0 8002E3A0 F420B850 */   sdc1      $f0, %lo(D_802AB850)($at)
/* 2EFA4 8002E3A4 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2EFA8 8002E3A8 D42CB850 */  ldc1       $f12, %lo(D_802AB850)($at)
/* 2EFAC 8002E3AC 462C6302 */  mul.d      $f12, $f12, $f12
/* 2EFB0 8002E3B0 3C01800D */  lui        $at, %hi(D_800D1460)
/* 2EFB4 8002E3B4 D4341460 */  ldc1       $f20, %lo(D_800D1460)($at)
/* 2EFB8 8002E3B8 0C022BA9 */  jal        func_8008AEA4
/* 2EFBC 8002E3BC 462CA301 */   sub.d     $f12, $f20, $f12
/* 2EFC0 8002E3C0 3C01802B */  lui        $at, %hi(D_802AB848)
/* 2EFC4 8002E3C4 D424B848 */  ldc1       $f4, %lo(D_802AB848)($at)
/* 2EFC8 8002E3C8 46240182 */  mul.d      $f6, $f0, $f4
/* 2EFCC 8002E3CC 3C01802B */  lui        $at, %hi(D_802AB860)
/* 2EFD0 8002E3D0 D428B860 */  ldc1       $f8, %lo(D_802AB860)($at)
/* 2EFD4 8002E3D4 D62A0000 */  ldc1       $f10, 0x0($s1)
/* 2EFD8 8002E3D8 462A4082 */  mul.d      $f2, $f8, $f10
/* 2EFDC 8002E3DC 00000000 */  nop
/* 2EFE0 8002E3E0 46244202 */  mul.d      $f8, $f8, $f4
/* 2EFE4 8002E3E4 00000000 */  nop
/* 2EFE8 8002E3E8 462A0282 */  mul.d      $f10, $f0, $f10
/* 2EFEC 8002E3EC D6040000 */  ldc1       $f4, 0x0($s0)
/* 2EFF0 8002E3F0 46223180 */  add.d      $f6, $f6, $f2
/* 2EFF4 8002E3F4 D6420058 */  ldc1       $f2, 0x58($s2)
/* 2EFF8 8002E3F8 46222382 */  mul.d      $f14, $f4, $f2
/* 2EFFC 8002E3FC D6500048 */  ldc1       $f16, 0x48($s2)
/* 2F000 8002E400 46302102 */  mul.d      $f4, $f4, $f16
/* 2F004 8002E404 00000000 */  nop
/* 2F008 8002E408 46303302 */  mul.d      $f12, $f6, $f16
/* 2F00C 8002E40C 00000000 */  nop
/* 2F010 8002E410 46223182 */  mul.d      $f6, $f6, $f2
/* 2F014 8002E414 462A4201 */  sub.d      $f8, $f8, $f10
/* 2F018 8002E418 46243181 */  sub.d      $f6, $f6, $f4
/* 2F01C 8002E41C D64A0168 */  ldc1       $f10, 0x168($s2)
/* 2F020 8002E420 3C01800D */  lui        $at, %hi(D_800D1468)
/* 2F024 8002E424 D4241468 */  ldc1       $f4, %lo(D_800D1468)($at)
/* 2F028 8002E428 462E6300 */  add.d      $f12, $f12, $f14
/* 2F02C 8002E42C 3C02802B */  lui        $v0, %hi(D_802AB7D8)
/* 2F030 8002E430 2442B7D8 */  addiu      $v0, $v0, %lo(D_802AB7D8)
/* 2F034 8002E434 3C01802B */  lui        $at, %hi(D_802AB868)
/* 2F038 8002E438 F420B868 */  sdc1       $f0, %lo(D_802AB868)($at)
/* 2F03C 8002E43C 46204007 */  neg.d      $f0, $f8
/* 2F040 8002E440 F4480000 */  sdc1       $f8, 0x0($v0)
/* 2F044 8002E444 462A203C */  c.lt.d     $f4, $f10
/* 2F048 8002E448 F4400000 */  sdc1       $f0, 0x0($v0)
/* 2F04C 8002E44C 3C01802B */  lui        $at, %hi(D_802AB7D0)
/* 2F050 8002E450 F42CB7D0 */  sdc1       $f12, %lo(D_802AB7D0)($at)
/* 2F054 8002E454 46206307 */  neg.d      $f12, $f12
/* 2F058 8002E458 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2F05C 8002E45C F426B7E0 */  sdc1       $f6, %lo(D_802AB7E0)($at)
/* 2F060 8002E460 46203187 */  neg.d      $f6, $f6
/* 2F064 8002E464 3C01802B */  lui        $at, %hi(D_802AB7D0)
/* 2F068 8002E468 F42CB7D0 */  sdc1       $f12, %lo(D_802AB7D0)($at)
/* 2F06C 8002E46C 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2F070 8002E470 F426B7E0 */  sdc1       $f6, %lo(D_802AB7E0)($at)
/* 2F074 8002E474 45000009 */  bc1f       .L8002E49C
/* 2F078 8002E478 00000000 */   nop
/* 2F07C 8002E47C 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2F080 8002E480 D420B850 */  ldc1       $f0, %lo(D_802AB850)($at)
/* 2F084 8002E484 3C01800D */  lui        $at, %hi(D_800D1470)
/* 2F088 8002E488 D4221470 */  ldc1       $f2, %lo(D_800D1470)($at)
/* 2F08C 8002E48C 46220002 */  mul.d      $f0, $f0, $f2
/* 2F090 8002E490 4620A001 */  sub.d      $f0, $f20, $f0
/* 2F094 8002E494 0800B92E */  j          .L8002E4B8
/* 2F098 8002E498 46240002 */   mul.d     $f0, $f0, $f4
.L8002E49C:
/* 2F09C 8002E49C 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2F0A0 8002E4A0 D420B850 */  ldc1       $f0, %lo(D_802AB850)($at)
/* 2F0A4 8002E4A4 3C01800D */  lui        $at, %hi(D_800D1478)
/* 2F0A8 8002E4A8 D4221478 */  ldc1       $f2, %lo(D_800D1478)($at)
/* 2F0AC 8002E4AC 46220002 */  mul.d      $f0, $f0, $f2
/* 2F0B0 8002E4B0 4620A001 */  sub.d      $f0, $f20, $f0
/* 2F0B4 8002E4B4 462A0002 */  mul.d      $f0, $f0, $f10
.L8002E4B8:
/* 2F0B8 8002E4B8 3C01802B */  lui        $at, %hi(D_802AB7C8)
/* 2F0BC 8002E4BC F420B7C8 */  sdc1       $f0, %lo(D_802AB7C8)($at)
/* 2F0C0 8002E4C0 3C01802B */  lui        $at, %hi(D_802AB848)
/* 2F0C4 8002E4C4 D422B848 */  ldc1       $f2, %lo(D_802AB848)($at)
/* 2F0C8 8002E4C8 D6440048 */  ldc1       $f4, 0x48($s2)
/* 2F0CC 8002E4CC 46201087 */  neg.d      $f2, $f2
/* 2F0D0 8002E4D0 46241102 */  mul.d      $f4, $f2, $f4
/* 2F0D4 8002E4D4 D6400058 */  ldc1       $f0, 0x58($s2)
/* 2F0D8 8002E4D8 46201082 */  mul.d      $f2, $f2, $f0
/* 2F0DC 8002E4DC 3C01802B */  lui        $at, %hi(D_802AB840)
/* 2F0E0 8002E4E0 D420B840 */  ldc1       $f0, %lo(D_802AB840)($at)
/* 2F0E4 8002E4E4 3C05802B */  lui        $a1, %hi(D_802AB7B0)
/* 2F0E8 8002E4E8 24A5B7B0 */  addiu      $a1, $a1, %lo(D_802AB7B0)
/* 2F0EC 8002E4EC 3C04802B */  lui        $a0, %hi(D_802AB7D0)
/* 2F0F0 8002E4F0 2484B7D0 */  addiu      $a0, $a0, %lo(D_802AB7D0)
/* 2F0F4 8002E4F4 3C01802B */  lui        $at, %hi(D_802AB7B8)
/* 2F0F8 8002E4F8 F420B7B8 */  sdc1       $f0, %lo(D_802AB7B8)($at)
/* 2F0FC 8002E4FC F4A40000 */  sdc1       $f4, 0x0($a1)
/* 2F100 8002E500 3C01802B */  lui        $at, %hi(D_802AB7C0)
/* 2F104 8002E504 0C022C70 */  jal        func_8008B1C0
/* 2F108 8002E508 F422B7C0 */   sdc1      $f2, %lo(D_802AB7C0)($at)
/* 2F10C 8002E50C 3C01802B */  lui        $at, %hi(D_802AB7C8)
/* 2F110 8002E510 D422B7C8 */  ldc1       $f2, %lo(D_802AB7C8)($at)
/* 2F114 8002E514 46220002 */  mul.d      $f0, $f0, $f2
/* 2F118 8002E518 44801000 */  mtc1       $zero, $f2
/* 2F11C 8002E51C 44801800 */  mtc1       $zero, $f3
/* 2F120 8002E520 00000000 */  nop
/* 2F124 8002E524 4622003C */  c.lt.d     $f0, $f2
/* 2F128 8002E528 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F12C 8002E52C F420B7E8 */  sdc1       $f0, %lo(D_802AB7E8)($at)
/* 2F130 8002E530 45010002 */  bc1t       .L8002E53C
/* 2F134 8002E534 00001021 */   addu      $v0, $zero, $zero
/* 2F138 8002E538 24020001 */  addiu      $v0, $zero, 0x1
.L8002E53C:
/* 2F13C 8002E53C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2F140 8002E540 8FB20018 */  lw         $s2, 0x18($sp)
/* 2F144 8002E544 8FB10014 */  lw         $s1, 0x14($sp)
/* 2F148 8002E548 8FB00010 */  lw         $s0, 0x10($sp)
/* 2F14C 8002E54C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2F150 8002E550 03E00008 */  jr         $ra
/* 2F154 8002E554 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002E558
/* 2F158 8002E558 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2F15C 8002E55C AFB00010 */  sw         $s0, 0x10($sp)
/* 2F160 8002E560 00808021 */  addu       $s0, $a0, $zero
/* 2F164 8002E564 D60C0018 */  ldc1       $f12, 0x18($s0)
/* 2F168 8002E568 24020001 */  addiu      $v0, $zero, 0x1
/* 2F16C 8002E56C AFB20018 */  sw         $s2, 0x18($sp)
/* 2F170 8002E570 3C12802B */  lui        $s2, %hi(D_802AB840)
/* 2F174 8002E574 2652B840 */  addiu      $s2, $s2, %lo(D_802AB840)
/* 2F178 8002E578 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2F17C 8002E57C AFB10014 */  sw         $s1, 0x14($sp)
/* 2F180 8002E580 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 2F184 8002E584 3C01802B */  lui        $at, %hi(D_802AB83C)
/* 2F188 8002E588 AC22B83C */  sw         $v0, %lo(D_802AB83C)($at)
/* 2F18C 8002E58C 0C022C03 */  jal        func_8008B00C
/* 2F190 8002E590 02403021 */   addu      $a2, $s2, $zero
/* 2F194 8002E594 D6000038 */  ldc1       $f0, 0x38($s0)
/* 2F198 8002E598 46200302 */  mul.d      $f12, $f0, $f0
/* 2F19C 8002E59C D6020030 */  ldc1       $f2, 0x30($s0)
/* 2F1A0 8002E5A0 46201087 */  neg.d      $f2, $f2
/* 2F1A4 8002E5A4 46221102 */  mul.d      $f4, $f2, $f2
/* 2F1A8 8002E5A8 3C11802B */  lui        $s1, %hi(D_802AB858)
/* 2F1AC 8002E5AC 2631B858 */  addiu      $s1, $s1, %lo(D_802AB858)
/* 2F1B0 8002E5B0 3C01802B */  lui        $at, %hi(D_802AB860)
/* 2F1B4 8002E5B4 F420B860 */  sdc1       $f0, %lo(D_802AB860)($at)
/* 2F1B8 8002E5B8 F6220000 */  sdc1       $f2, 0x0($s1)
/* 2F1BC 8002E5BC 0C022BA9 */  jal        func_8008AEA4
/* 2F1C0 8002E5C0 462C2300 */   add.d     $f12, $f4, $f12
/* 2F1C4 8002E5C4 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2F1C8 8002E5C8 0C00B8B0 */  jal        func_8002E2C0
/* 2F1CC 8002E5CC F420B850 */   sdc1      $f0, %lo(D_802AB850)($at)
/* 2F1D0 8002E5D0 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2F1D4 8002E5D4 D420B850 */  ldc1       $f0, %lo(D_802AB850)($at)
/* 2F1D8 8002E5D8 46200002 */  mul.d      $f0, $f0, $f0
/* 2F1DC 8002E5DC 3C01800D */  lui        $at, %hi(D_800D1480)
/* 2F1E0 8002E5E0 D4341480 */  ldc1       $f20, %lo(D_800D1480)($at)
/* 2F1E4 8002E5E4 4620A301 */  sub.d      $f12, $f20, $f0
/* 2F1E8 8002E5E8 44800000 */  mtc1       $zero, $f0
/* 2F1EC 8002E5EC 44800800 */  mtc1       $zero, $f1
/* 2F1F0 8002E5F0 00000000 */  nop
/* 2F1F4 8002E5F4 4620603C */  c.lt.d     $f12, $f0
/* 2F1F8 8002E5F8 00000000 */  nop
/* 2F1FC 8002E5FC 00000000 */  nop
/* 2F200 8002E600 45030001 */  bc1tl      .L8002E608
/* 2F204 8002E604 46200306 */   mov.d     $f12, $f0
.L8002E608:
/* 2F208 8002E608 46206404 */  sqrt.d     $f16, $f12
/* 2F20C 8002E60C 46308032 */  c.eq.d     $f16, $f16
/* 2F210 8002E610 00000000 */  nop
/* 2F214 8002E614 45010004 */  bc1t       .L8002E628
/* 2F218 8002E618 00000000 */   nop
/* 2F21C 8002E61C 0C026F44 */  jal        func_8009BD10
/* 2F220 8002E620 00000000 */   nop
/* 2F224 8002E624 46200406 */  mov.d      $f16, $f0
.L8002E628:
/* 2F228 8002E628 3C01802B */  lui        $at, %hi(D_802AB848)
/* 2F22C 8002E62C D422B848 */  ldc1       $f2, %lo(D_802AB848)($at)
/* 2F230 8002E630 46228102 */  mul.d      $f4, $f16, $f2
/* 2F234 8002E634 3C01802B */  lui        $at, %hi(D_802AB860)
/* 2F238 8002E638 D426B860 */  ldc1       $f6, %lo(D_802AB860)($at)
/* 2F23C 8002E63C D6480000 */  ldc1       $f8, 0x0($s2)
/* 2F240 8002E640 46283002 */  mul.d      $f0, $f6, $f8
/* 2F244 8002E644 00000000 */  nop
/* 2F248 8002E648 46223182 */  mul.d      $f6, $f6, $f2
/* 2F24C 8002E64C 00000000 */  nop
/* 2F250 8002E650 46288202 */  mul.d      $f8, $f16, $f8
/* 2F254 8002E654 D6220000 */  ldc1       $f2, 0x0($s1)
/* 2F258 8002E658 46202100 */  add.d      $f4, $f4, $f0
/* 2F25C 8002E65C D6000028 */  ldc1       $f0, 0x28($s0)
/* 2F260 8002E660 46201302 */  mul.d      $f12, $f2, $f0
/* 2F264 8002E664 D60E0020 */  ldc1       $f14, 0x20($s0)
/* 2F268 8002E668 462E1082 */  mul.d      $f2, $f2, $f14
/* 2F26C 8002E66C 00000000 */  nop
/* 2F270 8002E670 462E2282 */  mul.d      $f10, $f4, $f14
/* 2F274 8002E674 46283181 */  sub.d      $f6, $f6, $f8
/* 2F278 8002E678 46202102 */  mul.d      $f4, $f4, $f0
/* 2F27C 8002E67C 462C5280 */  add.d      $f10, $f10, $f12
/* 2F280 8002E680 D6080000 */  ldc1       $f8, 0x0($s0)
/* 2F284 8002E684 3C01800D */  lui        $at, %hi(D_800D1488)
/* 2F288 8002E688 D42C1488 */  ldc1       $f12, %lo(D_800D1488)($at)
/* 2F28C 8002E68C 46222101 */  sub.d      $f4, $f4, $f2
/* 2F290 8002E690 3C02802B */  lui        $v0, %hi(D_802AB7D8)
/* 2F294 8002E694 2442B7D8 */  addiu      $v0, $v0, %lo(D_802AB7D8)
/* 2F298 8002E698 3C01802B */  lui        $at, %hi(D_802AB868)
/* 2F29C 8002E69C F430B868 */  sdc1       $f16, %lo(D_802AB868)($at)
/* 2F2A0 8002E6A0 46203007 */  neg.d      $f0, $f6
/* 2F2A4 8002E6A4 F4460000 */  sdc1       $f6, 0x0($v0)
/* 2F2A8 8002E6A8 4628603C */  c.lt.d     $f12, $f8
/* 2F2AC 8002E6AC F4400000 */  sdc1       $f0, 0x0($v0)
/* 2F2B0 8002E6B0 3C01802B */  lui        $at, %hi(D_802AB7D0)
/* 2F2B4 8002E6B4 F42AB7D0 */  sdc1       $f10, %lo(D_802AB7D0)($at)
/* 2F2B8 8002E6B8 46205287 */  neg.d      $f10, $f10
/* 2F2BC 8002E6BC 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2F2C0 8002E6C0 F424B7E0 */  sdc1       $f4, %lo(D_802AB7E0)($at)
/* 2F2C4 8002E6C4 46202107 */  neg.d      $f4, $f4
/* 2F2C8 8002E6C8 3C01802B */  lui        $at, %hi(D_802AB7D0)
/* 2F2CC 8002E6CC F42AB7D0 */  sdc1       $f10, %lo(D_802AB7D0)($at)
/* 2F2D0 8002E6D0 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2F2D4 8002E6D4 F424B7E0 */  sdc1       $f4, %lo(D_802AB7E0)($at)
/* 2F2D8 8002E6D8 45000009 */  bc1f       .L8002E700
/* 2F2DC 8002E6DC 00000000 */   nop
/* 2F2E0 8002E6E0 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2F2E4 8002E6E4 D420B850 */  ldc1       $f0, %lo(D_802AB850)($at)
/* 2F2E8 8002E6E8 3C01800D */  lui        $at, %hi(D_800D1490)
/* 2F2EC 8002E6EC D4221490 */  ldc1       $f2, %lo(D_800D1490)($at)
/* 2F2F0 8002E6F0 46220002 */  mul.d      $f0, $f0, $f2
/* 2F2F4 8002E6F4 4620A001 */  sub.d      $f0, $f20, $f0
/* 2F2F8 8002E6F8 0800B9C7 */  j          .L8002E71C
/* 2F2FC 8002E6FC 462C0002 */   mul.d     $f0, $f0, $f12
.L8002E700:
/* 2F300 8002E700 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2F304 8002E704 D420B850 */  ldc1       $f0, %lo(D_802AB850)($at)
/* 2F308 8002E708 3C01800D */  lui        $at, %hi(D_800D1498)
/* 2F30C 8002E70C D4221498 */  ldc1       $f2, %lo(D_800D1498)($at)
/* 2F310 8002E710 46220002 */  mul.d      $f0, $f0, $f2
/* 2F314 8002E714 4620A001 */  sub.d      $f0, $f20, $f0
/* 2F318 8002E718 46280002 */  mul.d      $f0, $f0, $f8
.L8002E71C:
/* 2F31C 8002E71C 3C01802B */  lui        $at, %hi(D_802AB7C8)
/* 2F320 8002E720 F420B7C8 */  sdc1       $f0, %lo(D_802AB7C8)($at)
/* 2F324 8002E724 3C01802B */  lui        $at, %hi(D_802AB848)
/* 2F328 8002E728 D422B848 */  ldc1       $f2, %lo(D_802AB848)($at)
/* 2F32C 8002E72C D6040020 */  ldc1       $f4, 0x20($s0)
/* 2F330 8002E730 46201087 */  neg.d      $f2, $f2
/* 2F334 8002E734 46241102 */  mul.d      $f4, $f2, $f4
/* 2F338 8002E738 D6000028 */  ldc1       $f0, 0x28($s0)
/* 2F33C 8002E73C 46201082 */  mul.d      $f2, $f2, $f0
/* 2F340 8002E740 3C01802B */  lui        $at, %hi(D_802AB840)
/* 2F344 8002E744 D420B840 */  ldc1       $f0, %lo(D_802AB840)($at)
/* 2F348 8002E748 3C05802B */  lui        $a1, %hi(D_802AB7B0)
/* 2F34C 8002E74C 24A5B7B0 */  addiu      $a1, $a1, %lo(D_802AB7B0)
/* 2F350 8002E750 3C04802B */  lui        $a0, %hi(D_802AB7D0)
/* 2F354 8002E754 2484B7D0 */  addiu      $a0, $a0, %lo(D_802AB7D0)
/* 2F358 8002E758 3C01802B */  lui        $at, %hi(D_802AB7B8)
/* 2F35C 8002E75C F420B7B8 */  sdc1       $f0, %lo(D_802AB7B8)($at)
/* 2F360 8002E760 F4A40000 */  sdc1       $f4, 0x0($a1)
/* 2F364 8002E764 3C01802B */  lui        $at, %hi(D_802AB7C0)
/* 2F368 8002E768 0C022C70 */  jal        func_8008B1C0
/* 2F36C 8002E76C F422B7C0 */   sdc1      $f2, %lo(D_802AB7C0)($at)
/* 2F370 8002E770 3C01802B */  lui        $at, %hi(D_802AB7C8)
/* 2F374 8002E774 D422B7C8 */  ldc1       $f2, %lo(D_802AB7C8)($at)
/* 2F378 8002E778 46220002 */  mul.d      $f0, $f0, $f2
/* 2F37C 8002E77C 44801000 */  mtc1       $zero, $f2
/* 2F380 8002E780 44801800 */  mtc1       $zero, $f3
/* 2F384 8002E784 00000000 */  nop
/* 2F388 8002E788 4622003C */  c.lt.d     $f0, $f2
/* 2F38C 8002E78C 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F390 8002E790 F420B7E8 */  sdc1       $f0, %lo(D_802AB7E8)($at)
/* 2F394 8002E794 45010002 */  bc1t       .L8002E7A0
/* 2F398 8002E798 00001021 */   addu      $v0, $zero, $zero
/* 2F39C 8002E79C 24020001 */  addiu      $v0, $zero, 0x1
.L8002E7A0:
/* 2F3A0 8002E7A0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2F3A4 8002E7A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 2F3A8 8002E7A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 2F3AC 8002E7AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 2F3B0 8002E7B0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2F3B4 8002E7B4 03E00008 */  jr         $ra
/* 2F3B8 8002E7B8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002E7BC
/* 2F3BC 8002E7BC 3C01802B */  lui        $at, %hi(D_802AB7C8)
/* 2F3C0 8002E7C0 D422B7C8 */  ldc1       $f2, %lo(D_802AB7C8)($at)
/* 2F3C4 8002E7C4 3C01802B */  lui        $at, %hi(D_802AB7B0)
/* 2F3C8 8002E7C8 D42CB7B0 */  ldc1       $f12, %lo(D_802AB7B0)($at)
/* 2F3CC 8002E7CC 462C1302 */  mul.d      $f12, $f2, $f12
/* 2F3D0 8002E7D0 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F3D4 8002E7D4 D428B7E8 */  ldc1       $f8, %lo(D_802AB7E8)($at)
/* 2F3D8 8002E7D8 3C01802B */  lui        $at, %hi(D_802AB7D0)
/* 2F3DC 8002E7DC D426B7D0 */  ldc1       $f6, %lo(D_802AB7D0)($at)
/* 2F3E0 8002E7E0 46264182 */  mul.d      $f6, $f8, $f6
/* 2F3E4 8002E7E4 3C01802B */  lui        $at, %hi(D_802AB7B8)
/* 2F3E8 8002E7E8 D42AB7B8 */  ldc1       $f10, %lo(D_802AB7B8)($at)
/* 2F3EC 8002E7EC 462A1282 */  mul.d      $f10, $f2, $f10
/* 2F3F0 8002E7F0 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 2F3F4 8002E7F4 D424B7D8 */  ldc1       $f4, %lo(D_802AB7D8)($at)
/* 2F3F8 8002E7F8 46244102 */  mul.d      $f4, $f8, $f4
/* 2F3FC 8002E7FC 3C01802B */  lui        $at, %hi(D_802AB7C0)
/* 2F400 8002E800 D420B7C0 */  ldc1       $f0, %lo(D_802AB7C0)($at)
/* 2F404 8002E804 46201082 */  mul.d      $f2, $f2, $f0
/* 2F408 8002E808 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2F40C 8002E80C D420B7E0 */  ldc1       $f0, %lo(D_802AB7E0)($at)
/* 2F410 8002E810 46204202 */  mul.d      $f8, $f8, $f0
/* 2F414 8002E814 46266301 */  sub.d      $f12, $f12, $f6
/* 2F418 8002E818 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2F41C 8002E81C 46245281 */  sub.d      $f10, $f10, $f4
/* 2F420 8002E820 3C04802B */  lui        $a0, %hi(D_802AB7F0)
/* 2F424 8002E824 2484B7F0 */  addiu      $a0, $a0, %lo(D_802AB7F0)
/* 2F428 8002E828 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2F42C 8002E82C F7B60020 */  sdc1       $f22, 0x20($sp)
/* 2F430 8002E830 46281081 */  sub.d      $f2, $f2, $f8
/* 2F434 8002E834 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2F438 8002E838 F48C0000 */  sdc1       $f12, 0x0($a0)
/* 2F43C 8002E83C 3C01802B */  lui        $at, %hi(D_802AB7F8)
/* 2F440 8002E840 F42AB7F8 */  sdc1       $f10, %lo(D_802AB7F8)($at)
/* 2F444 8002E844 3C01802B */  lui        $at, %hi(D_802AB800)
/* 2F448 8002E848 0C022CCC */  jal        func_8008B330
/* 2F44C 8002E84C F422B800 */   sdc1      $f2, %lo(D_802AB800)($at)
/* 2F450 8002E850 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F454 8002E854 D424B7E8 */  ldc1       $f4, %lo(D_802AB7E8)($at)
/* 2F458 8002E858 3C01800D */  lui        $at, %hi(D_800D14A0)
/* 2F45C 8002E85C D42214A0 */  ldc1       $f2, %lo(D_800D14A0)($at)
/* 2F460 8002E860 46222303 */  div.d      $f12, $f4, $f2
/* 2F464 8002E864 46206084 */  sqrt.d     $f2, $f12
/* 2F468 8002E868 46221032 */  c.eq.d     $f2, $f2
/* 2F46C 8002E86C 3C01802B */  lui        $at, %hi(D_802AB808)
/* 2F470 8002E870 F420B808 */  sdc1       $f0, %lo(D_802AB808)($at)
/* 2F474 8002E874 45010004 */  bc1t       .L8002E888
/* 2F478 8002E878 00000000 */   nop
/* 2F47C 8002E87C 0C026F44 */  jal        func_8009BD10
/* 2F480 8002E880 00000000 */   nop
/* 2F484 8002E884 46200086 */  mov.d      $f2, $f0
.L8002E888:
/* 2F488 8002E888 3C01800D */  lui        $at, %hi(D_800D14A8)
/* 2F48C 8002E88C D42014A8 */  ldc1       $f0, %lo(D_800D14A8)($at)
/* 2F490 8002E890 46201002 */  mul.d      $f0, $f2, $f0
/* 2F494 8002E894 3C01802B */  lui        $at, %hi(D_802AB840)
/* 2F498 8002E898 D424B840 */  ldc1       $f4, %lo(D_802AB840)($at)
/* 2F49C 8002E89C 3C01800D */  lui        $at, %hi(D_800D14B0)
/* 2F4A0 8002E8A0 D42214B0 */  ldc1       $f2, %lo(D_800D14B0)($at)
/* 2F4A4 8002E8A4 46222102 */  mul.d      $f4, $f4, $f2
/* 2F4A8 8002E8A8 3C01800D */  lui        $at, %hi(D_800D14B8)
/* 2F4AC 8002E8AC D42214B8 */  ldc1       $f2, %lo(D_800D14B8)($at)
/* 2F4B0 8002E8B0 46220000 */  add.d      $f0, $f0, $f2
/* 2F4B4 8002E8B4 3C01800D */  lui        $at, %hi(D_800D14C0)
/* 2F4B8 8002E8B8 D42214C0 */  ldc1       $f2, %lo(D_800D14C0)($at)
/* 2F4BC 8002E8BC 46222100 */  add.d      $f4, $f4, $f2
/* 2F4C0 8002E8C0 46240002 */  mul.d      $f0, $f0, $f4
/* 2F4C4 8002E8C4 3C01800D */  lui        $at, %hi(D_800D14C8)
/* 2F4C8 8002E8C8 D42214C8 */  ldc1       $f2, %lo(D_800D14C8)($at)
/* 2F4CC 8002E8CC 4620103C */  c.lt.d     $f2, $f0
/* 2F4D0 8002E8D0 00000000 */  nop
/* 2F4D4 8002E8D4 00000000 */  nop
/* 2F4D8 8002E8D8 45000002 */  bc1f       .L8002E8E4
/* 2F4DC 8002E8DC 46200186 */   mov.d     $f6, $f0
/* 2F4E0 8002E8E0 46201186 */  mov.d      $f6, $f2
.L8002E8E4:
/* 2F4E4 8002E8E4 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F4E8 8002E8E8 D420B7E8 */  ldc1       $f0, %lo(D_802AB7E8)($at)
/* 2F4EC 8002E8EC 46203582 */  mul.d      $f22, $f6, $f0
/* 2F4F0 8002E8F0 3C01802B */  lui        $at, %hi(D_802AB808)
/* 2F4F4 8002E8F4 D420B808 */  ldc1       $f0, %lo(D_802AB808)($at)
/* 2F4F8 8002E8F8 4620B03C */  c.lt.d     $f22, $f0
/* 2F4FC 8002E8FC 00000000 */  nop
/* 2F500 8002E900 00000000 */  nop
/* 2F504 8002E904 45000006 */  bc1f       .L8002E920
/* 2F508 8002E908 24020001 */   addiu     $v0, $zero, 0x1
/* 2F50C 8002E90C 3C01802B */  lui        $at, %hi(D_802AB808)
/* 2F510 8002E910 F436B808 */  sdc1       $f22, %lo(D_802AB808)($at)
/* 2F514 8002E914 3C01802B */  lui        $at, %hi(D_802AB830)
/* 2F518 8002E918 0800BA4A */  j          .L8002E928
/* 2F51C 8002E91C AC22B830 */   sw        $v0, %lo(D_802AB830)($at)
.L8002E920:
/* 2F520 8002E920 3C01802B */  lui        $at, %hi(D_802AB830)
/* 2F524 8002E924 AC20B830 */  sw         $zero, %lo(D_802AB830)($at)
.L8002E928:
/* 2F528 8002E928 3C01802B */  lui        $at, %hi(D_802AB808)
/* 2F52C 8002E92C D426B808 */  ldc1       $f6, %lo(D_802AB808)($at)
/* 2F530 8002E930 3C01802B */  lui        $at, %hi(D_802AB7F0)
/* 2F534 8002E934 D424B7F0 */  ldc1       $f4, %lo(D_802AB7F0)($at)
/* 2F538 8002E938 46243102 */  mul.d      $f4, $f6, $f4
/* 2F53C 8002E93C 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F540 8002E940 D422B7E8 */  ldc1       $f2, %lo(D_802AB7E8)($at)
/* 2F544 8002E944 3C01802B */  lui        $at, %hi(D_802AB7D0)
/* 2F548 8002E948 D428B7D0 */  ldc1       $f8, %lo(D_802AB7D0)($at)
/* 2F54C 8002E94C 46201087 */  neg.d      $f2, $f2
/* 2F550 8002E950 46281202 */  mul.d      $f8, $f2, $f8
/* 2F554 8002E954 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2F558 8002E958 D420B7E0 */  ldc1       $f0, %lo(D_802AB7E0)($at)
/* 2F55C 8002E95C 46201082 */  mul.d      $f2, $f2, $f0
/* 2F560 8002E960 3C01802B */  lui        $at, %hi(D_802AB800)
/* 2F564 8002E964 D420B800 */  ldc1       $f0, %lo(D_802AB800)($at)
/* 2F568 8002E968 46203182 */  mul.d      $f6, $f6, $f0
/* 2F56C 8002E96C 46244201 */  sub.d      $f8, $f8, $f4
/* 2F570 8002E970 46261081 */  sub.d      $f2, $f2, $f6
/* 2F574 8002E974 3C04802B */  lui        $a0, %hi(D_802AB810)
/* 2F578 8002E978 2484B810 */  addiu      $a0, $a0, %lo(D_802AB810)
/* 2F57C 8002E97C 3C01802B */  lui        $at, %hi(D_802AB818)
/* 2F580 8002E980 AC20B818 */  sw         $zero, %lo(D_802AB818)($at)
/* 2F584 8002E984 3C01802B */  lui        $at, %hi(D_802AB81C)
/* 2F588 8002E988 AC20B81C */  sw         $zero, %lo(D_802AB81C)($at)
/* 2F58C 8002E98C F4880000 */  sdc1       $f8, 0x0($a0)
/* 2F590 8002E990 3C01802B */  lui        $at, %hi(D_802AB820)
/* 2F594 8002E994 0C022CCC */  jal        func_8008B330
/* 2F598 8002E998 F422B820 */   sdc1      $f2, %lo(D_802AB820)($at)
/* 2F59C 8002E99C 3C01802B */  lui        $at, %hi(D_802AB7F8)
/* 2F5A0 8002E9A0 D426B7F8 */  ldc1       $f6, %lo(D_802AB7F8)($at)
/* 2F5A4 8002E9A4 3C01802B */  lui        $at, %hi(D_802AB808)
/* 2F5A8 8002E9A8 D422B808 */  ldc1       $f2, %lo(D_802AB808)($at)
/* 2F5AC 8002E9AC 46223182 */  mul.d      $f6, $f6, $f2
/* 2F5B0 8002E9B0 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F5B4 8002E9B4 D424B7E8 */  ldc1       $f4, %lo(D_802AB7E8)($at)
/* 2F5B8 8002E9B8 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 2F5BC 8002E9BC D422B7D8 */  ldc1       $f2, %lo(D_802AB7D8)($at)
/* 2F5C0 8002E9C0 46241082 */  mul.d      $f2, $f2, $f4
/* 2F5C4 8002E9C4 46223580 */  add.d      $f22, $f6, $f2
/* 2F5C8 8002E9C8 44801000 */  mtc1       $zero, $f2
/* 2F5CC 8002E9CC 44801800 */  mtc1       $zero, $f3
/* 2F5D0 8002E9D0 00000000 */  nop
/* 2F5D4 8002E9D4 4622B03C */  c.lt.d     $f22, $f2
/* 2F5D8 8002E9D8 3C01802B */  lui        $at, %hi(D_802AB828)
/* 2F5DC 8002E9DC F420B828 */  sdc1       $f0, %lo(D_802AB828)($at)
/* 2F5E0 8002E9E0 45000006 */  bc1f       .L8002E9FC
/* 2F5E4 8002E9E4 24020001 */   addiu     $v0, $zero, 0x1
/* 2F5E8 8002E9E8 3C01802B */  lui        $at, %hi(D_802AB838)
/* 2F5EC 8002E9EC AC22B838 */  sw         $v0, %lo(D_802AB838)($at)
/* 2F5F0 8002E9F0 3C01802B */  lui        $at, %hi(D_802AB828)
/* 2F5F4 8002E9F4 0800BAA1 */  j          .L8002EA84
/* 2F5F8 8002E9F8 F422B828 */   sdc1      $f2, %lo(D_802AB828)($at)
.L8002E9FC:
/* 2F5FC 8002E9FC 3C01800D */  lui        $at, %hi(D_800D14D0)
/* 2F600 8002EA00 D42014D0 */  ldc1       $f0, %lo(D_800D14D0)($at)
/* 2F604 8002EA04 4620B03C */  c.lt.d     $f22, $f0
/* 2F608 8002EA08 3C01802B */  lui        $at, %hi(D_802AB838)
/* 2F60C 8002EA0C AC20B838 */  sw         $zero, %lo(D_802AB838)($at)
/* 2F610 8002EA10 45000005 */  bc1f       .L8002EA28
/* 2F614 8002EA14 00000000 */   nop
/* 2F618 8002EA18 3C01800D */  lui        $at, %hi(D_800D14D8)
/* 2F61C 8002EA1C D42014D8 */  ldc1       $f0, %lo(D_800D14D8)($at)
/* 2F620 8002EA20 0800BA93 */  j          .L8002EA4C
/* 2F624 8002EA24 4620B582 */   mul.d     $f22, $f22, $f0
.L8002EA28:
/* 2F628 8002EA28 3C01800D */  lui        $at, %hi(D_800D14E0)
/* 2F62C 8002EA2C D43414E0 */  ldc1       $f20, %lo(D_800D14E0)($at)
/* 2F630 8002EA30 0C026EB8 */  jal        func_8009BAE0
/* 2F634 8002EA34 4634B302 */   mul.d     $f12, $f22, $f20
/* 2F638 8002EA38 3C01800D */  lui        $at, %hi(D_800D14E8)
/* 2F63C 8002EA3C D42214E8 */  ldc1       $f2, %lo(D_800D14E8)($at)
/* 2F640 8002EA40 46220002 */  mul.d      $f0, $f0, $f2
/* 2F644 8002EA44 46340000 */  add.d      $f0, $f0, $f20
/* 2F648 8002EA48 4620B582 */  mul.d      $f22, $f22, $f0
.L8002EA4C:
/* 2F64C 8002EA4C 3C01802B */  lui        $at, %hi(D_802AB828)
/* 2F650 8002EA50 D420B828 */  ldc1       $f0, %lo(D_802AB828)($at)
/* 2F654 8002EA54 4620B03C */  c.lt.d     $f22, $f0
/* 2F658 8002EA58 00000000 */  nop
/* 2F65C 8002EA5C 00000000 */  nop
/* 2F660 8002EA60 45000006 */  bc1f       .L8002EA7C
/* 2F664 8002EA64 24020001 */   addiu     $v0, $zero, 0x1
/* 2F668 8002EA68 3C01802B */  lui        $at, %hi(D_802AB828)
/* 2F66C 8002EA6C F436B828 */  sdc1       $f22, %lo(D_802AB828)($at)
/* 2F670 8002EA70 3C01802B */  lui        $at, %hi(D_802AB834)
/* 2F674 8002EA74 0800BAA1 */  j          .L8002EA84
/* 2F678 8002EA78 AC22B834 */   sw        $v0, %lo(D_802AB834)($at)
.L8002EA7C:
/* 2F67C 8002EA7C 3C01802B */  lui        $at, %hi(D_802AB834)
/* 2F680 8002EA80 AC20B834 */  sw         $zero, %lo(D_802AB834)($at)
.L8002EA84:
/* 2F684 8002EA84 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2F688 8002EA88 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 2F68C 8002EA8C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2F690 8002EA90 03E00008 */  jr         $ra
/* 2F694 8002EA94 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002EA98
/* 2F698 8002EA98 D4840038 */  ldc1       $f4, 0x38($a0)
/* 2F69C 8002EA9C 3C01800D */  lui        $at, %hi(D_800D14F0)
/* 2F6A0 8002EAA0 D42214F0 */  ldc1       $f2, %lo(D_800D14F0)($at)
/* 2F6A4 8002EAA4 4624103C */  c.lt.d     $f2, $f4
/* 2F6A8 8002EAA8 24020008 */  addiu      $v0, $zero, 0x8
/* 2F6AC 8002EAAC 00000000 */  nop
/* 2F6B0 8002EAB0 45000016 */  bc1f       .L8002EB0C
/* 2F6B4 8002EAB4 A0820000 */   sb        $v0, 0x0($a0)
/* 2F6B8 8002EAB8 D4820040 */  ldc1       $f2, 0x40($a0)
/* 2F6BC 8002EABC D4860058 */  ldc1       $f6, 0x58($a0)
/* 2F6C0 8002EAC0 46261082 */  mul.d      $f2, $f2, $f6
/* 2F6C4 8002EAC4 D4800030 */  ldc1       $f0, 0x30($a0)
/* 2F6C8 8002EAC8 46200007 */  neg.d      $f0, $f0
/* 2F6CC 8002EACC 46240002 */  mul.d      $f0, $f0, $f4
/* 2F6D0 8002EAD0 46201032 */  c.eq.d     $f2, $f0
/* 2F6D4 8002EAD4 00000000 */  nop
/* 2F6D8 8002EAD8 45000037 */  bc1f       .L8002EBB8
/* 2F6DC 8002EADC 00000000 */   nop
/* 2F6E0 8002EAE0 D4820050 */  ldc1       $f2, 0x50($a0)
/* 2F6E4 8002EAE4 46261082 */  mul.d      $f2, $f2, $f6
/* 2F6E8 8002EAE8 D4800020 */  ldc1       $f0, 0x20($a0)
/* 2F6EC 8002EAEC 46240002 */  mul.d      $f0, $f0, $f4
/* 2F6F0 8002EAF0 46201032 */  c.eq.d     $f2, $f0
/* 2F6F4 8002EAF4 00000000 */  nop
/* 2F6F8 8002EAF8 00000000 */  nop
/* 2F6FC 8002EAFC 4500002E */  bc1f       .L8002EBB8
/* 2F700 8002EB00 24020004 */   addiu     $v0, $zero, 0x4
/* 2F704 8002EB04 0800BAEE */  j          .L8002EBB8
/* 2F708 8002EB08 A0820000 */   sb        $v0, 0x0($a0)
.L8002EB0C:
/* 2F70C 8002EB0C D4800058 */  ldc1       $f0, 0x58($a0)
/* 2F710 8002EB10 4622003E */  c.le.d     $f0, $f2
/* 2F714 8002EB14 00000000 */  nop
/* 2F718 8002EB18 00000000 */  nop
/* 2F71C 8002EB1C 45000007 */  bc1f       .L8002EB3C
/* 2F720 8002EB20 24020001 */   addiu     $v0, $zero, 0x1
/* 2F724 8002EB24 AC800038 */  sw         $zero, 0x38($a0)
/* 2F728 8002EB28 AC80003C */  sw         $zero, 0x3C($a0)
/* 2F72C 8002EB2C AC800058 */  sw         $zero, 0x58($a0)
/* 2F730 8002EB30 AC80005C */  sw         $zero, 0x5C($a0)
/* 2F734 8002EB34 0800BAEE */  j          .L8002EBB8
/* 2F738 8002EB38 A0820000 */   sb        $v0, 0x0($a0)
.L8002EB3C:
/* 2F73C 8002EB3C D4800048 */  ldc1       $f0, 0x48($a0)
/* 2F740 8002EB40 3C01800D */  lui        $at, %hi(D_800D14F8)
/* 2F744 8002EB44 D42214F8 */  ldc1       $f2, %lo(D_800D14F8)($at)
/* 2F748 8002EB48 46200005 */  abs.d      $f0, $f0
/* 2F74C 8002EB4C 4620103C */  c.lt.d     $f2, $f0
/* 2F750 8002EB50 00000000 */  nop
/* 2F754 8002EB54 45000018 */  bc1f       .L8002EBB8
/* 2F758 8002EB58 00000000 */   nop
/* 2F75C 8002EB5C D4820048 */  ldc1       $f2, 0x48($a0)
/* 2F760 8002EB60 D4800058 */  ldc1       $f0, 0x58($a0)
/* 2F764 8002EB64 46201082 */  mul.d      $f2, $f2, $f0
/* 2F768 8002EB68 D4840048 */  ldc1       $f4, 0x48($a0)
/* 2F76C 8002EB6C 44800000 */  mtc1       $zero, $f0
/* 2F770 8002EB70 44800800 */  mtc1       $zero, $f1
/* 2F774 8002EB74 3C01800D */  lui        $at, %hi(D_800D1500)
/* 2F778 8002EB78 D4261500 */  ldc1       $f6, %lo(D_800D1500)($at)
/* 2F77C 8002EB7C 4620203C */  c.lt.d     $f4, $f0
/* 2F780 8002EB80 AC800038 */  sw         $zero, 0x38($a0)
/* 2F784 8002EB84 AC80003C */  sw         $zero, 0x3C($a0)
/* 2F788 8002EB88 AC800040 */  sw         $zero, 0x40($a0)
/* 2F78C 8002EB8C AC800044 */  sw         $zero, 0x44($a0)
/* 2F790 8002EB90 46201085 */  abs.d      $f2, $f2
/* 2F794 8002EB94 AC800050 */  sw         $zero, 0x50($a0)
/* 2F798 8002EB98 AC800054 */  sw         $zero, 0x54($a0)
/* 2F79C 8002EB9C F4820058 */  sdc1       $f2, 0x58($a0)
/* 2F7A0 8002EBA0 45000003 */  bc1f       .L8002EBB0
/* 2F7A4 8002EBA4 24020002 */   addiu     $v0, $zero, 0x2
/* 2F7A8 8002EBA8 3C01800D */  lui        $at, %hi(D_800D1508)
/* 2F7AC 8002EBAC D4261508 */  ldc1       $f6, %lo(D_800D1508)($at)
.L8002EBB0:
/* 2F7B0 8002EBB0 F4860048 */  sdc1       $f6, 0x48($a0)
/* 2F7B4 8002EBB4 A0820000 */  sb         $v0, 0x0($a0)
.L8002EBB8:
/* 2F7B8 8002EBB8 03E00008 */  jr         $ra
/* 2F7BC 8002EBBC 00000000 */   nop

glabel func_8002EBC0
/* 2F7C0 8002EBC0 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F7C4 8002EBC4 D424B7E8 */  ldc1       $f4, %lo(D_802AB7E8)($at)
/* 2F7C8 8002EBC8 3C01800D */  lui        $at, %hi(D_800D1510)
/* 2F7CC 8002EBCC D4201510 */  ldc1       $f0, %lo(D_800D1510)($at)
/* 2F7D0 8002EBD0 46202102 */  mul.d      $f4, $f4, $f0
/* 2F7D4 8002EBD4 3C01802B */  lui        $at, %hi(D_802AB808)
/* 2F7D8 8002EBD8 D422B808 */  ldc1       $f2, %lo(D_802AB808)($at)
/* 2F7DC 8002EBDC 3C01800D */  lui        $at, %hi(D_800D1518)
/* 2F7E0 8002EBE0 D4201518 */  ldc1       $f0, %lo(D_800D1518)($at)
/* 2F7E4 8002EBE4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2F7E8 8002EBE8 AFB20030 */  sw         $s2, 0x30($sp)
/* 2F7EC 8002EBEC 3C12802B */  lui        $s2, %hi(D_802AB7D0)
/* 2F7F0 8002EBF0 2652B7D0 */  addiu      $s2, $s2, %lo(D_802AB7D0)
/* 2F7F4 8002EBF4 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 2F7F8 8002EBF8 46201502 */  mul.d      $f20, $f2, $f0
/* 2F7FC 8002EBFC AFBF0034 */  sw         $ra, 0x34($sp)
/* 2F800 8002EC00 AFB1002C */  sw         $s1, 0x2C($sp)
/* 2F804 8002EC04 AFB00028 */  sw         $s0, 0x28($sp)
/* 2F808 8002EC08 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 2F80C 8002EC0C D6420000 */  ldc1       $f2, 0x0($s2)
/* 2F810 8002EC10 46222082 */  mul.d      $f2, $f4, $f2
/* 2F814 8002EC14 3C11802B */  lui        $s1, %hi(D_802AB7F0)
/* 2F818 8002EC18 2631B7F0 */  addiu      $s1, $s1, %lo(D_802AB7F0)
/* 2F81C 8002EC1C D6200000 */  ldc1       $f0, 0x0($s1)
/* 2F820 8002EC20 4620A002 */  mul.d      $f0, $f20, $f0
/* 2F824 8002EC24 46201080 */  add.d      $f2, $f2, $f0
/* 2F828 8002EC28 00808021 */  addu       $s0, $a0, $zero
/* 2F82C 8002EC2C F6020020 */  sdc1       $f2, 0x20($s0)
/* 2F830 8002EC30 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2F834 8002EC34 D422B7E0 */  ldc1       $f2, %lo(D_802AB7E0)($at)
/* 2F838 8002EC38 46222082 */  mul.d      $f2, $f4, $f2
/* 2F83C 8002EC3C 3C01802B */  lui        $at, %hi(D_802AB800)
/* 2F840 8002EC40 D420B800 */  ldc1       $f0, %lo(D_802AB800)($at)
/* 2F844 8002EC44 4620A002 */  mul.d      $f0, $f20, $f0
/* 2F848 8002EC48 46201080 */  add.d      $f2, $f2, $f0
/* 2F84C 8002EC4C F6020030 */  sdc1       $f2, 0x30($s0)
/* 2F850 8002EC50 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 2F854 8002EC54 D420B7D8 */  ldc1       $f0, %lo(D_802AB7D8)($at)
/* 2F858 8002EC58 46202102 */  mul.d      $f4, $f4, $f0
/* 2F85C 8002EC5C 3C01802B */  lui        $at, %hi(D_802AB7F8)
/* 2F860 8002EC60 D420B7F8 */  ldc1       $f0, %lo(D_802AB7F8)($at)
/* 2F864 8002EC64 4620A002 */  mul.d      $f0, $f20, $f0
/* 2F868 8002EC68 46202100 */  add.d      $f4, $f4, $f0
/* 2F86C 8002EC6C 3C01800D */  lui        $at, %hi(D_800D1520)
/* 2F870 8002EC70 D4201520 */  ldc1       $f0, %lo(D_800D1520)($at)
/* 2F874 8002EC74 46202102 */  mul.d      $f4, $f4, $f0
/* 2F878 8002EC78 4480B000 */  mtc1       $zero, $f22
/* 2F87C 8002EC7C 4480B800 */  mtc1       $zero, $f23
/* 2F880 8002EC80 00000000 */  nop
/* 2F884 8002EC84 4624B03C */  c.lt.d     $f22, $f4
/* 2F888 8002EC88 F6040028 */  sdc1       $f4, 0x28($s0)
/* 2F88C 8002EC8C 45000002 */  bc1f       .L8002EC98
/* 2F890 8002EC90 00000000 */   nop
/* 2F894 8002EC94 F6160028 */  sdc1       $f22, 0x28($s0)
.L8002EC98:
/* 2F898 8002EC98 0C022CCC */  jal        func_8008B330
/* 2F89C 8002EC9C 26040020 */   addiu     $a0, $s0, 0x20
/* 2F8A0 8002ECA0 02402021 */  addu       $a0, $s2, $zero
/* 2F8A4 8002ECA4 02202821 */  addu       $a1, $s1, $zero
/* 2F8A8 8002ECA8 F6000038 */  sdc1       $f0, 0x38($s0)
/* 2F8AC 8002ECAC 0C022C84 */  jal        func_8008B210
/* 2F8B0 8002ECB0 27A60010 */   addiu     $a2, $sp, 0x10
/* 2F8B4 8002ECB4 3C01800D */  lui        $at, %hi(D_800D1528)
/* 2F8B8 8002ECB8 D4221528 */  ldc1       $f2, %lo(D_800D1528)($at)
/* 2F8BC 8002ECBC 4622A082 */  mul.d      $f2, $f20, $f2
/* 2F8C0 8002ECC0 D7A00010 */  ldc1       $f0, 0x10($sp)
/* 2F8C4 8002ECC4 46201002 */  mul.d      $f0, $f2, $f0
/* 2F8C8 8002ECC8 F6000040 */  sdc1       $f0, 0x40($s0)
/* 2F8CC 8002ECCC D7A00018 */  ldc1       $f0, 0x18($sp)
/* 2F8D0 8002ECD0 46201002 */  mul.d      $f0, $f2, $f0
/* 2F8D4 8002ECD4 F6000048 */  sdc1       $f0, 0x48($s0)
/* 2F8D8 8002ECD8 D7A00020 */  ldc1       $f0, 0x20($sp)
/* 2F8DC 8002ECDC 46201082 */  mul.d      $f2, $f2, $f0
/* 2F8E0 8002ECE0 F6020050 */  sdc1       $f2, 0x50($s0)
/* 2F8E4 8002ECE4 0C022CCC */  jal        func_8008B330
/* 2F8E8 8002ECE8 26040040 */   addiu     $a0, $s0, 0x40
/* 2F8EC 8002ECEC D6020028 */  ldc1       $f2, 0x28($s0)
/* 2F8F0 8002ECF0 4636103C */  c.lt.d     $f2, $f22
/* 2F8F4 8002ECF4 F6000058 */  sdc1       $f0, 0x58($s0)
/* 2F8F8 8002ECF8 00000000 */  nop
/* 2F8FC 8002ECFC 45000003 */  bc1f       .L8002ED0C
/* 2F900 8002ED00 24020020 */   addiu     $v0, $zero, 0x20
/* 2F904 8002ED04 0800BB45 */  j          .L8002ED14
/* 2F908 8002ED08 A2020000 */   sb        $v0, 0x0($s0)
.L8002ED0C:
/* 2F90C 8002ED0C 0C00BAA6 */  jal        func_8002EA98
/* 2F910 8002ED10 02002021 */   addu      $a0, $s0, $zero
.L8002ED14:
/* 2F914 8002ED14 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2F918 8002ED18 8FB20030 */  lw         $s2, 0x30($sp)
/* 2F91C 8002ED1C 8FB1002C */  lw         $s1, 0x2C($sp)
/* 2F920 8002ED20 8FB00028 */  lw         $s0, 0x28($sp)
/* 2F924 8002ED24 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 2F928 8002ED28 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 2F92C 8002ED2C 03E00008 */  jr         $ra
/* 2F930 8002ED30 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8002ED34
/* 2F934 8002ED34 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2F938 8002ED38 AFB00040 */  sw         $s0, 0x40($sp)
/* 2F93C 8002ED3C 00808021 */  addu       $s0, $a0, $zero
/* 2F940 8002ED40 3C04802B */  lui        $a0, %hi(D_802AB7D0)
/* 2F944 8002ED44 2484B7D0 */  addiu      $a0, $a0, %lo(D_802AB7D0)
/* 2F948 8002ED48 3C05802B */  lui        $a1, %hi(D_802AB7F0)
/* 2F94C 8002ED4C 24A5B7F0 */  addiu      $a1, $a1, %lo(D_802AB7F0)
/* 2F950 8002ED50 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2F954 8002ED54 F7B60050 */  sdc1       $f22, 0x50($sp)
/* 2F958 8002ED58 F7B40048 */  sdc1       $f20, 0x48($sp)
/* 2F95C 8002ED5C 0C022C84 */  jal        func_8008B210
/* 2F960 8002ED60 27A60010 */   addiu     $a2, $sp, 0x10
/* 2F964 8002ED64 3C04800C */  lui        $a0, %hi(D_800BF470)
/* 2F968 8002ED68 2484F470 */  addiu      $a0, $a0, %lo(D_800BF470)
/* 2F96C 8002ED6C 3C05802B */  lui        $a1, %hi(D_802AB810)
/* 2F970 8002ED70 24A5B810 */  addiu      $a1, $a1, %lo(D_802AB810)
/* 2F974 8002ED74 0C022C84 */  jal        func_8008B210
/* 2F978 8002ED78 27A60028 */   addiu     $a2, $sp, 0x28
/* 2F97C 8002ED7C 3C01802B */  lui        $at, %hi(D_802AB828)
/* 2F980 8002ED80 D424B828 */  ldc1       $f4, %lo(D_802AB828)($at)
/* 2F984 8002ED84 D7A20028 */  ldc1       $f2, 0x28($sp)
/* 2F988 8002ED88 46222082 */  mul.d      $f2, $f4, $f2
/* 2F98C 8002ED8C 3C01802B */  lui        $at, %hi(D_802AB808)
/* 2F990 8002ED90 D426B808 */  ldc1       $f6, %lo(D_802AB808)($at)
/* 2F994 8002ED94 D7A00010 */  ldc1       $f0, 0x10($sp)
/* 2F998 8002ED98 46203002 */  mul.d      $f0, $f6, $f0
/* 2F99C 8002ED9C 46201081 */  sub.d      $f2, $f2, $f0
/* 2F9A0 8002EDA0 3C01800D */  lui        $at, %hi(D_800D1530)
/* 2F9A4 8002EDA4 D4281530 */  ldc1       $f8, %lo(D_800D1530)($at)
/* 2F9A8 8002EDA8 46281082 */  mul.d      $f2, $f2, $f8
/* 2F9AC 8002EDAC F6020040 */  sdc1       $f2, 0x40($s0)
/* 2F9B0 8002EDB0 D7A00038 */  ldc1       $f0, 0x38($sp)
/* 2F9B4 8002EDB4 46202002 */  mul.d      $f0, $f4, $f0
/* 2F9B8 8002EDB8 D7A20020 */  ldc1       $f2, 0x20($sp)
/* 2F9BC 8002EDBC 46223082 */  mul.d      $f2, $f6, $f2
/* 2F9C0 8002EDC0 46220001 */  sub.d      $f0, $f0, $f2
/* 2F9C4 8002EDC4 46280002 */  mul.d      $f0, $f0, $f8
/* 2F9C8 8002EDC8 F6000050 */  sdc1       $f0, 0x50($s0)
/* 2F9CC 8002EDCC D7A00030 */  ldc1       $f0, 0x30($sp)
/* 2F9D0 8002EDD0 46202102 */  mul.d      $f4, $f4, $f0
/* 2F9D4 8002EDD4 D7A00018 */  ldc1       $f0, 0x18($sp)
/* 2F9D8 8002EDD8 46203002 */  mul.d      $f0, $f6, $f0
/* 2F9DC 8002EDDC 46202101 */  sub.d      $f4, $f4, $f0
/* 2F9E0 8002EDE0 46282102 */  mul.d      $f4, $f4, $f8
/* 2F9E4 8002EDE4 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2F9E8 8002EDE8 D422B7E8 */  ldc1       $f2, %lo(D_802AB7E8)($at)
/* 2F9EC 8002EDEC F6040048 */  sdc1       $f4, 0x48($s0)
/* 2F9F0 8002EDF0 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 2F9F4 8002EDF4 D420B7D8 */  ldc1       $f0, %lo(D_802AB7D8)($at)
/* 2F9F8 8002EDF8 46201082 */  mul.d      $f2, $f2, $f0
/* 2F9FC 8002EDFC 3C01802B */  lui        $at, %hi(D_802AB7F8)
/* 2FA00 8002EE00 D420B7F8 */  ldc1       $f0, %lo(D_802AB7F8)($at)
/* 2FA04 8002EE04 46203182 */  mul.d      $f6, $f6, $f0
/* 2FA08 8002EE08 46261580 */  add.d      $f22, $f2, $f6
/* 2FA0C 8002EE0C 44800000 */  mtc1       $zero, $f0
/* 2FA10 8002EE10 44800800 */  mtc1       $zero, $f1
/* 2FA14 8002EE14 00000000 */  nop
/* 2FA18 8002EE18 4620B03C */  c.lt.d     $f22, $f0
/* 2FA1C 8002EE1C 00000000 */  nop
/* 2FA20 8002EE20 00000000 */  nop
/* 2FA24 8002EE24 45010014 */  bc1t       .L8002EE78
/* 2FA28 8002EE28 46200306 */   mov.d     $f12, $f0
/* 2FA2C 8002EE2C 3C01800D */  lui        $at, %hi(D_800D1538)
/* 2FA30 8002EE30 D4201538 */  ldc1       $f0, %lo(D_800D1538)($at)
/* 2FA34 8002EE34 4620B03C */  c.lt.d     $f22, $f0
/* 2FA38 8002EE38 00000000 */  nop
/* 2FA3C 8002EE3C 45000005 */  bc1f       .L8002EE54
/* 2FA40 8002EE40 00000000 */   nop
/* 2FA44 8002EE44 3C01800D */  lui        $at, %hi(D_800D1540)
/* 2FA48 8002EE48 D4201540 */  ldc1       $f0, %lo(D_800D1540)($at)
/* 2FA4C 8002EE4C 0800BB9E */  j          .L8002EE78
/* 2FA50 8002EE50 46360302 */   mul.d     $f12, $f0, $f22
.L8002EE54:
/* 2FA54 8002EE54 3C01800D */  lui        $at, %hi(D_800D1548)
/* 2FA58 8002EE58 D4341548 */  ldc1       $f20, %lo(D_800D1548)($at)
/* 2FA5C 8002EE5C 0C026EB8 */  jal        func_8009BAE0
/* 2FA60 8002EE60 4634B302 */   mul.d     $f12, $f22, $f20
/* 2FA64 8002EE64 3C01800D */  lui        $at, %hi(D_800D1550)
/* 2FA68 8002EE68 D4221550 */  ldc1       $f2, %lo(D_800D1550)($at)
/* 2FA6C 8002EE6C 46220002 */  mul.d      $f0, $f0, $f2
/* 2FA70 8002EE70 46340000 */  add.d      $f0, $f0, $f20
/* 2FA74 8002EE74 46360302 */  mul.d      $f12, $f0, $f22
.L8002EE78:
/* 2FA78 8002EE78 D6020048 */  ldc1       $f2, 0x48($s0)
/* 2FA7C 8002EE7C 46201005 */  abs.d      $f0, $f2
/* 2FA80 8002EE80 462C003E */  c.le.d     $f0, $f12
/* 2FA84 8002EE84 00000000 */  nop
/* 2FA88 8002EE88 45000004 */  bc1f       .L8002EE9C
/* 2FA8C 8002EE8C 00000000 */   nop
/* 2FA90 8002EE90 AE000048 */  sw         $zero, 0x48($s0)
/* 2FA94 8002EE94 0800BBB1 */  j          .L8002EEC4
/* 2FA98 8002EE98 AE00004C */   sw        $zero, 0x4C($s0)
.L8002EE9C:
/* 2FA9C 8002EE9C 44800000 */  mtc1       $zero, $f0
/* 2FAA0 8002EEA0 44800800 */  mtc1       $zero, $f1
/* 2FAA4 8002EEA4 00000000 */  nop
/* 2FAA8 8002EEA8 4622003C */  c.lt.d     $f0, $f2
/* 2FAAC 8002EEAC 00000000 */  nop
/* 2FAB0 8002EEB0 00000000 */  nop
/* 2FAB4 8002EEB4 45020002 */  bc1fl      .L8002EEC0
/* 2FAB8 8002EEB8 462C1000 */   add.d     $f0, $f2, $f12
/* 2FABC 8002EEBC 462C1001 */  sub.d      $f0, $f2, $f12
.L8002EEC0:
/* 2FAC0 8002EEC0 F6000048 */  sdc1       $f0, 0x48($s0)
.L8002EEC4:
/* 2FAC4 8002EEC4 0C022CCC */  jal        func_8008B330
/* 2FAC8 8002EEC8 26040040 */   addiu     $a0, $s0, 0x40
/* 2FACC 8002EECC F6000058 */  sdc1       $f0, 0x58($s0)
/* 2FAD0 8002EED0 3C01802B */  lui        $at, %hi(D_802AB860)
/* 2FAD4 8002EED4 D42CB860 */  ldc1       $f12, %lo(D_802AB860)($at)
/* 2FAD8 8002EED8 44800000 */  mtc1       $zero, $f0
/* 2FADC 8002EEDC 44800800 */  mtc1       $zero, $f1
/* 2FAE0 8002EEE0 00000000 */  nop
/* 2FAE4 8002EEE4 4620603C */  c.lt.d     $f12, $f0
/* 2FAE8 8002EEE8 00000000 */  nop
/* 2FAEC 8002EEEC 45000015 */  bc1f       .L8002EF44
/* 2FAF0 8002EEF0 00000000 */   nop
/* 2FAF4 8002EEF4 3C01800D */  lui        $at, %hi(D_800D1558)
/* 2FAF8 8002EEF8 D4201558 */  ldc1       $f0, %lo(D_800D1558)($at)
/* 2FAFC 8002EEFC 46206305 */  abs.d      $f12, $f12
/* 2FB00 8002EF00 0C026E3C */  jal        func_8009B8F0
/* 2FB04 8002EF04 46206302 */   mul.d     $f12, $f12, $f0
/* 2FB08 8002EF08 3C01800D */  lui        $at, %hi(D_800D1560)
/* 2FB0C 8002EF0C D4221560 */  ldc1       $f2, %lo(D_800D1560)($at)
/* 2FB10 8002EF10 46220002 */  mul.d      $f0, $f0, $f2
/* 2FB14 8002EF14 3C01802B */  lui        $at, %hi(D_802AB848)
/* 2FB18 8002EF18 D424B848 */  ldc1       $f4, %lo(D_802AB848)($at)
/* 2FB1C 8002EF1C 3C01802B */  lui        $at, %hi(D_802AB840)
/* 2FB20 8002EF20 D422B840 */  ldc1       $f2, %lo(D_802AB840)($at)
/* 2FB24 8002EF24 46241082 */  mul.d      $f2, $f2, $f4
/* 2FB28 8002EF28 00000000 */  nop
/* 2FB2C 8002EF2C 46201082 */  mul.d      $f2, $f2, $f0
/* 2FB30 8002EF30 3C01800D */  lui        $at, %hi(D_800D1568)
/* 2FB34 8002EF34 D4201568 */  ldc1       $f0, %lo(D_800D1568)($at)
/* 2FB38 8002EF38 46220081 */  sub.d      $f2, $f0, $f2
/* 2FB3C 8002EF3C 0800BBD3 */  j          .L8002EF4C
/* 2FB40 8002EF40 46221082 */   mul.d     $f2, $f2, $f2
.L8002EF44:
/* 2FB44 8002EF44 3C01800D */  lui        $at, %hi(D_800D1570)
/* 2FB48 8002EF48 D4221570 */  ldc1       $f2, %lo(D_800D1570)($at)
.L8002EF4C:
/* 2FB4C 8002EF4C 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2FB50 8002EF50 D42CB850 */  ldc1       $f12, %lo(D_802AB850)($at)
/* 2FB54 8002EF54 46206104 */  sqrt.d     $f4, $f12
/* 2FB58 8002EF58 D6000058 */  ldc1       $f0, 0x58($s0)
/* 2FB5C 8002EF5C 46220002 */  mul.d      $f0, $f0, $f2
/* 2FB60 8002EF60 46242032 */  c.eq.d     $f4, $f4
/* 2FB64 8002EF64 F6000058 */  sdc1       $f0, 0x58($s0)
/* 2FB68 8002EF68 45010004 */  bc1t       .L8002EF7C
/* 2FB6C 8002EF6C 00000000 */   nop
/* 2FB70 8002EF70 0C026F44 */  jal        func_8009BD10
/* 2FB74 8002EF74 00000000 */   nop
/* 2FB78 8002EF78 46200106 */  mov.d      $f4, $f0
.L8002EF7C:
/* 2FB7C 8002EF7C 3C01800D */  lui        $at, %hi(D_800D1578)
/* 2FB80 8002EF80 D42C1578 */  ldc1       $f12, %lo(D_800D1578)($at)
/* 2FB84 8002EF84 46246081 */  sub.d      $f2, $f12, $f4
/* 2FB88 8002EF88 3C01800D */  lui        $at, %hi(D_800D1580)
/* 2FB8C 8002EF8C D42E1580 */  ldc1       $f14, %lo(D_800D1580)($at)
/* 2FB90 8002EF90 462E1082 */  mul.d      $f2, $f2, $f14
/* 2FB94 8002EF94 3C01802B */  lui        $at, %hi(D_802AB840)
/* 2FB98 8002EF98 D420B840 */  ldc1       $f0, %lo(D_802AB840)($at)
/* 2FB9C 8002EF9C 46201082 */  mul.d      $f2, $f2, $f0
/* 2FBA0 8002EFA0 00000000 */  nop
/* 2FBA4 8002EFA4 46201082 */  mul.d      $f2, $f2, $f0
/* 2FBA8 8002EFA8 46226081 */  sub.d      $f2, $f12, $f2
/* 2FBAC 8002EFAC D6000058 */  ldc1       $f0, 0x58($s0)
/* 2FBB0 8002EFB0 46220002 */  mul.d      $f0, $f0, $f2
/* 2FBB4 8002EFB4 3C01802B */  lui        $at, %hi(D_802AB828)
/* 2FBB8 8002EFB8 D426B828 */  ldc1       $f6, %lo(D_802AB828)($at)
/* 2FBBC 8002EFBC 462E3182 */  mul.d      $f6, $f6, $f14
/* 2FBC0 8002EFC0 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2FBC4 8002EFC4 D428B7E8 */  ldc1       $f8, %lo(D_802AB7E8)($at)
/* 2FBC8 8002EFC8 3C02802B */  lui        $v0, %hi(D_802AB7D0)
/* 2FBCC 8002EFCC 2442B7D0 */  addiu      $v0, $v0, %lo(D_802AB7D0)
/* 2FBD0 8002EFD0 F6000058 */  sdc1       $f0, 0x58($s0)
/* 2FBD4 8002EFD4 D4420000 */  ldc1       $f2, 0x0($v0)
/* 2FBD8 8002EFD8 46224082 */  mul.d      $f2, $f8, $f2
/* 2FBDC 8002EFDC 3C01802B */  lui        $at, %hi(D_802AB808)
/* 2FBE0 8002EFE0 D42AB808 */  ldc1       $f10, %lo(D_802AB808)($at)
/* 2FBE4 8002EFE4 3C01802B */  lui        $at, %hi(D_802AB7F0)
/* 2FBE8 8002EFE8 D424B7F0 */  ldc1       $f4, %lo(D_802AB7F0)($at)
/* 2FBEC 8002EFEC 46245102 */  mul.d      $f4, $f10, $f4
/* 2FBF0 8002EFF0 3C01802B */  lui        $at, %hi(D_802AB810)
/* 2FBF4 8002EFF4 D420B810 */  ldc1       $f0, %lo(D_802AB810)($at)
/* 2FBF8 8002EFF8 46203002 */  mul.d      $f0, $f6, $f0
/* 2FBFC 8002EFFC 46241080 */  add.d      $f2, $f2, $f4
/* 2FC00 8002F000 46201080 */  add.d      $f2, $f2, $f0
/* 2FC04 8002F004 F6020020 */  sdc1       $f2, 0x20($s0)
/* 2FC08 8002F008 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2FC0C 8002F00C D420B7E0 */  ldc1       $f0, %lo(D_802AB7E0)($at)
/* 2FC10 8002F010 46204002 */  mul.d      $f0, $f8, $f0
/* 2FC14 8002F014 3C01802B */  lui        $at, %hi(D_802AB800)
/* 2FC18 8002F018 D422B800 */  ldc1       $f2, %lo(D_802AB800)($at)
/* 2FC1C 8002F01C 46225082 */  mul.d      $f2, $f10, $f2
/* 2FC20 8002F020 3C01802B */  lui        $at, %hi(D_802AB820)
/* 2FC24 8002F024 D424B820 */  ldc1       $f4, %lo(D_802AB820)($at)
/* 2FC28 8002F028 46243182 */  mul.d      $f6, $f6, $f4
/* 2FC2C 8002F02C 46220000 */  add.d      $f0, $f0, $f2
/* 2FC30 8002F030 46260000 */  add.d      $f0, $f0, $f6
/* 2FC34 8002F034 3C01800D */  lui        $at, %hi(D_800D1588)
/* 2FC38 8002F038 D4221588 */  ldc1       $f2, %lo(D_800D1588)($at)
/* 2FC3C 8002F03C F6000030 */  sdc1       $f0, 0x30($s0)
/* 2FC40 8002F040 3C01802B */  lui        $at, %hi(D_802AB848)
/* 2FC44 8002F044 D420B848 */  ldc1       $f0, %lo(D_802AB848)($at)
/* 2FC48 8002F048 46220082 */  mul.d      $f2, $f0, $f2
/* 2FC4C 8002F04C 00000000 */  nop
/* 2FC50 8002F050 46201082 */  mul.d      $f2, $f2, $f0
/* 2FC54 8002F054 00000000 */  nop
/* 2FC58 8002F058 46201082 */  mul.d      $f2, $f2, $f0
/* 2FC5C 8002F05C 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2FC60 8002F060 D420B850 */  ldc1       $f0, %lo(D_802AB850)($at)
/* 2FC64 8002F064 462C0000 */  add.d      $f0, $f0, $f12
/* 2FC68 8002F068 46201082 */  mul.d      $f2, $f2, $f0
/* 2FC6C 8002F06C 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 2FC70 8002F070 D420B7D8 */  ldc1       $f0, %lo(D_802AB7D8)($at)
/* 2FC74 8002F074 46204202 */  mul.d      $f8, $f8, $f0
/* 2FC78 8002F078 3C01800D */  lui        $at, %hi(D_800D1590)
/* 2FC7C 8002F07C D4241590 */  ldc1       $f4, %lo(D_800D1590)($at)
/* 2FC80 8002F080 3C01802B */  lui        $at, %hi(D_802AB7F8)
/* 2FC84 8002F084 D426B7F8 */  ldc1       $f6, %lo(D_802AB7F8)($at)
/* 2FC88 8002F088 46240001 */  sub.d      $f0, $f0, $f4
/* 2FC8C 8002F08C 46265282 */  mul.d      $f10, $f10, $f6
/* 2FC90 8002F090 46200005 */  abs.d      $f0, $f0
/* 2FC94 8002F094 46206301 */  sub.d      $f12, $f12, $f0
/* 2FC98 8002F098 462C1082 */  mul.d      $f2, $f2, $f12
/* 2FC9C 8002F09C 462A4200 */  add.d      $f8, $f8, $f10
/* 2FCA0 8002F0A0 46281082 */  mul.d      $f2, $f2, $f8
/* 2FCA4 8002F0A4 3C01800D */  lui        $at, %hi(D_800D1598)
/* 2FCA8 8002F0A8 D4201598 */  ldc1       $f0, %lo(D_800D1598)($at)
/* 2FCAC 8002F0AC F6020028 */  sdc1       $f2, 0x28($s0)
/* 2FCB0 8002F0B0 D4440000 */  ldc1       $f4, 0x0($v0)
/* 2FCB4 8002F0B4 46202102 */  mul.d      $f4, $f4, $f0
/* 2FCB8 8002F0B8 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2FCBC 8002F0BC D422B7E0 */  ldc1       $f2, %lo(D_802AB7E0)($at)
/* 2FCC0 8002F0C0 46201082 */  mul.d      $f2, $f2, $f0
/* 2FCC4 8002F0C4 3C01802B */  lui        $at, %hi(D_802AB7B0)
/* 2FCC8 8002F0C8 D420B7B0 */  ldc1       $f0, %lo(D_802AB7B0)($at)
/* 2FCCC 8002F0CC 46202100 */  add.d      $f4, $f4, $f0
/* 2FCD0 8002F0D0 3C01802B */  lui        $at, %hi(D_802AB7C0)
/* 2FCD4 8002F0D4 D420B7C0 */  ldc1       $f0, %lo(D_802AB7C0)($at)
/* 2FCD8 8002F0D8 46201080 */  add.d      $f2, $f2, $f0
/* 2FCDC 8002F0DC AFA00018 */  sw         $zero, 0x18($sp)
/* 2FCE0 8002F0E0 AFA0001C */  sw         $zero, 0x1C($sp)
/* 2FCE4 8002F0E4 F7A40010 */  sdc1       $f4, 0x10($sp)
/* 2FCE8 8002F0E8 F7A20020 */  sdc1       $f2, 0x20($sp)
/* 2FCEC 8002F0EC 0C022CCC */  jal        func_8008B330
/* 2FCF0 8002F0F0 27A40010 */   addiu     $a0, $sp, 0x10
/* 2FCF4 8002F0F4 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 2FCF8 8002F0F8 D420B7D8 */  ldc1       $f0, %lo(D_802AB7D8)($at)
/* 2FCFC 8002F0FC 44801000 */  mtc1       $zero, $f2
/* 2FD00 8002F100 44801800 */  mtc1       $zero, $f3
/* 2FD04 8002F104 00000000 */  nop
/* 2FD08 8002F108 4622003E */  c.le.d     $f0, $f2
/* 2FD0C 8002F10C 00000000 */  nop
/* 2FD10 8002F110 45000003 */  bc1f       .L8002F120
/* 2FD14 8002F114 00000000 */   nop
/* 2FD18 8002F118 0800BC61 */  j          .L8002F184
/* 2FD1C 8002F11C 46201306 */   mov.d     $f12, $f2
.L8002F120:
/* 2FD20 8002F120 3C01800D */  lui        $at, %hi(D_800D15A0)
/* 2FD24 8002F124 D42C15A0 */  ldc1       $f12, %lo(D_800D15A0)($at)
/* 2FD28 8002F128 462C0302 */  mul.d      $f12, $f0, $f12
/* 2FD2C 8002F12C 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2FD30 8002F130 D436B7E8 */  ldc1       $f22, %lo(D_802AB7E8)($at)
/* 2FD34 8002F134 3C01800D */  lui        $at, %hi(D_800D15A8)
/* 2FD38 8002F138 D42015A8 */  ldc1       $f0, %lo(D_800D15A8)($at)
/* 2FD3C 8002F13C 4620B582 */  mul.d      $f22, $f22, $f0
/* 2FD40 8002F140 3C01802B */  lui        $at, %hi(D_802AB840)
/* 2FD44 8002F144 D420B840 */  ldc1       $f0, %lo(D_802AB840)($at)
/* 2FD48 8002F148 0C026E3C */  jal        func_8009B8F0
/* 2FD4C 8002F14C 4620B582 */   mul.d     $f22, $f22, $f0
/* 2FD50 8002F150 3C01802B */  lui        $at, %hi(D_802AB850)
/* 2FD54 8002F154 D422B850 */  ldc1       $f2, %lo(D_802AB850)($at)
/* 2FD58 8002F158 3C01800D */  lui        $at, %hi(D_800D15B0)
/* 2FD5C 8002F15C D42C15B0 */  ldc1       $f12, %lo(D_800D15B0)($at)
/* 2FD60 8002F160 462C1302 */  mul.d      $f12, $f2, $f12
/* 2FD64 8002F164 3C01800D */  lui        $at, %hi(D_800D15B8)
/* 2FD68 8002F168 D42215B8 */  ldc1       $f2, %lo(D_800D15B8)($at)
/* 2FD6C 8002F16C 0C026D4C */  jal        func_8009B530
/* 2FD70 8002F170 46220502 */   mul.d     $f20, $f0, $f2
/* 2FD74 8002F174 00000000 */  nop
/* 2FD78 8002F178 46340002 */  mul.d      $f0, $f0, $f20
/* 2FD7C 8002F17C 00000000 */  nop
/* 2FD80 8002F180 4620B302 */  mul.d      $f12, $f22, $f0
.L8002F184:
/* 2FD84 8002F184 D7A20010 */  ldc1       $f2, 0x10($sp)
/* 2FD88 8002F188 46226082 */  mul.d      $f2, $f12, $f2
/* 2FD8C 8002F18C D6000020 */  ldc1       $f0, 0x20($s0)
/* 2FD90 8002F190 46220000 */  add.d      $f0, $f0, $f2
/* 2FD94 8002F194 F6000020 */  sdc1       $f0, 0x20($s0)
/* 2FD98 8002F198 D7A00020 */  ldc1       $f0, 0x20($sp)
/* 2FD9C 8002F19C 46206002 */  mul.d      $f0, $f12, $f0
/* 2FDA0 8002F1A0 D6020030 */  ldc1       $f2, 0x30($s0)
/* 2FDA4 8002F1A4 46201080 */  add.d      $f2, $f2, $f0
/* 2FDA8 8002F1A8 3C04802B */  lui        $a0, %hi(D_802AB7B0)
/* 2FDAC 8002F1AC 2484B7B0 */  addiu      $a0, $a0, %lo(D_802AB7B0)
/* 2FDB0 8002F1B0 3C05802B */  lui        $a1, %hi(D_802AB7D0)
/* 2FDB4 8002F1B4 24A5B7D0 */  addiu      $a1, $a1, %lo(D_802AB7D0)
/* 2FDB8 8002F1B8 0C022C70 */  jal        func_8008B1C0
/* 2FDBC 8002F1BC F6020030 */   sdc1      $f2, 0x30($s0)
/* 2FDC0 8002F1C0 46200002 */  mul.d      $f0, $f0, $f0
/* 2FDC4 8002F1C4 3C01800D */  lui        $at, %hi(D_800D15C0)
/* 2FDC8 8002F1C8 D42C15C0 */  ldc1       $f12, %lo(D_800D15C0)($at)
/* 2FDCC 8002F1CC 0C022BA9 */  jal        func_8008AEA4
/* 2FDD0 8002F1D0 46206301 */   sub.d     $f12, $f12, $f0
/* 2FDD4 8002F1D4 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 2FDD8 8002F1D8 D422B7E8 */  ldc1       $f2, %lo(D_802AB7E8)($at)
/* 2FDDC 8002F1DC 3C01800D */  lui        $at, %hi(D_800D15C8)
/* 2FDE0 8002F1E0 D42415C8 */  ldc1       $f4, %lo(D_800D15C8)($at)
/* 2FDE4 8002F1E4 46241082 */  mul.d      $f2, $f2, $f4
/* 2FDE8 8002F1E8 00000000 */  nop
/* 2FDEC 8002F1EC 46201302 */  mul.d      $f12, $f2, $f0
/* 2FDF0 8002F1F0 3C01802B */  lui        $at, %hi(D_802AB7D0)
/* 2FDF4 8002F1F4 D422B7D0 */  ldc1       $f2, %lo(D_802AB7D0)($at)
/* 2FDF8 8002F1F8 46226082 */  mul.d      $f2, $f12, $f2
/* 2FDFC 8002F1FC D6000020 */  ldc1       $f0, 0x20($s0)
/* 2FE00 8002F200 46220000 */  add.d      $f0, $f0, $f2
/* 2FE04 8002F204 F6000020 */  sdc1       $f0, 0x20($s0)
/* 2FE08 8002F208 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 2FE0C 8002F20C D422B7D8 */  ldc1       $f2, %lo(D_802AB7D8)($at)
/* 2FE10 8002F210 46226082 */  mul.d      $f2, $f12, $f2
/* 2FE14 8002F214 D6000028 */  ldc1       $f0, 0x28($s0)
/* 2FE18 8002F218 46220000 */  add.d      $f0, $f0, $f2
/* 2FE1C 8002F21C F6000028 */  sdc1       $f0, 0x28($s0)
/* 2FE20 8002F220 3C01802B */  lui        $at, %hi(D_802AB7E0)
/* 2FE24 8002F224 D420B7E0 */  ldc1       $f0, %lo(D_802AB7E0)($at)
/* 2FE28 8002F228 46206002 */  mul.d      $f0, $f12, $f0
/* 2FE2C 8002F22C D6020030 */  ldc1       $f2, 0x30($s0)
/* 2FE30 8002F230 D6040028 */  ldc1       $f4, 0x28($s0)
/* 2FE34 8002F234 46201080 */  add.d      $f2, $f2, $f0
/* 2FE38 8002F238 3C01800D */  lui        $at, %hi(D_800D15D0)
/* 2FE3C 8002F23C D42015D0 */  ldc1       $f0, %lo(D_800D15D0)($at)
/* 2FE40 8002F240 4624003C */  c.lt.d     $f0, $f4
/* 2FE44 8002F244 F6020030 */  sdc1       $f2, 0x30($s0)
/* 2FE48 8002F248 45000009 */  bc1f       .L8002F270
/* 2FE4C 8002F24C 00000000 */   nop
/* 2FE50 8002F250 46202007 */  neg.d      $f0, $f4
/* 2FE54 8002F254 F6000028 */  sdc1       $f0, 0x28($s0)
/* 2FE58 8002F258 0C022CCC */  jal        func_8008B330
/* 2FE5C 8002F25C 26040020 */   addiu     $a0, $s0, 0x20
/* 2FE60 8002F260 24020020 */  addiu      $v0, $zero, 0x20
/* 2FE64 8002F264 F6000038 */  sdc1       $f0, 0x38($s0)
/* 2FE68 8002F268 0800BCA3 */  j          .L8002F28C
/* 2FE6C 8002F26C A2020000 */   sb        $v0, 0x0($s0)
.L8002F270:
/* 2FE70 8002F270 AE000028 */  sw         $zero, 0x28($s0)
/* 2FE74 8002F274 AE00002C */  sw         $zero, 0x2C($s0)
/* 2FE78 8002F278 0C022CCC */  jal        func_8008B330
/* 2FE7C 8002F27C 26040020 */   addiu     $a0, $s0, 0x20
/* 2FE80 8002F280 02002021 */  addu       $a0, $s0, $zero
/* 2FE84 8002F284 0C00BAA6 */  jal        func_8002EA98
/* 2FE88 8002F288 F4800038 */   sdc1      $f0, 0x38($a0)
.L8002F28C:
/* 2FE8C 8002F28C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 2FE90 8002F290 8FB00040 */  lw         $s0, 0x40($sp)
/* 2FE94 8002F294 D7B60050 */  ldc1       $f22, 0x50($sp)
/* 2FE98 8002F298 D7B40048 */  ldc1       $f20, 0x48($sp)
/* 2FE9C 8002F29C 03E00008 */  jr         $ra
/* 2FEA0 8002F2A0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8002F2A4
/* 2FEA4 8002F2A4 3C02802B */  lui        $v0, %hi(D_802AB834)
/* 2FEA8 8002F2A8 8C42B834 */  lw         $v0, %lo(D_802AB834)($v0)
/* 2FEAC 8002F2AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FEB0 8002F2B0 10400009 */  beqz       $v0, .L8002F2D8
/* 2FEB4 8002F2B4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 2FEB8 8002F2B8 3C02802B */  lui        $v0, %hi(D_802AB830)
/* 2FEBC 8002F2BC 8C42B830 */  lw         $v0, %lo(D_802AB830)($v0)
/* 2FEC0 8002F2C0 10400005 */  beqz       $v0, .L8002F2D8
/* 2FEC4 8002F2C4 00000000 */   nop
/* 2FEC8 8002F2C8 0C00BAF0 */  jal        func_8002EBC0
/* 2FECC 8002F2CC 00000000 */   nop
/* 2FED0 8002F2D0 0800BCB8 */  j          .L8002F2E0
/* 2FED4 8002F2D4 00000000 */   nop
.L8002F2D8:
/* 2FED8 8002F2D8 0C00BB4D */  jal        func_8002ED34
/* 2FEDC 8002F2DC 00000000 */   nop
.L8002F2E0:
/* 2FEE0 8002F2E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2FEE4 8002F2E4 03E00008 */  jr         $ra
/* 2FEE8 8002F2E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002F2EC
/* 2FEEC 8002F2EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FEF0 8002F2F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 2FEF4 8002F2F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FEF8 8002F2F8 0C00B8CD */  jal        func_8002E334
/* 2FEFC 8002F2FC 00A08021 */   addu      $s0, $a1, $zero
/* 2FF00 8002F300 10400008 */  beqz       $v0, .L8002F324
/* 2FF04 8002F304 00001021 */   addu      $v0, $zero, $zero
/* 2FF08 8002F308 0C00B9EF */  jal        func_8002E7BC
/* 2FF0C 8002F30C 00000000 */   nop
/* 2FF10 8002F310 0C00BCA9 */  jal        func_8002F2A4
/* 2FF14 8002F314 02002021 */   addu      $a0, $s0, $zero
/* 2FF18 8002F318 3C02802B */  lui        $v0, %hi(D_802AB838)
/* 2FF1C 8002F31C 8C42B838 */  lw         $v0, %lo(D_802AB838)($v0)
/* 2FF20 8002F320 2C420001 */  sltiu      $v0, $v0, 0x1
.L8002F324:
/* 2FF24 8002F324 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FF28 8002F328 8FB00010 */  lw         $s0, 0x10($sp)
/* 2FF2C 8002F32C 03E00008 */  jr         $ra
/* 2FF30 8002F330 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002F334
/* 2FF34 8002F334 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FF38 8002F338 AFB00010 */  sw         $s0, 0x10($sp)
/* 2FF3C 8002F33C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FF40 8002F340 0C00B956 */  jal        func_8002E558
/* 2FF44 8002F344 00A08021 */   addu      $s0, $a1, $zero
/* 2FF48 8002F348 1040000E */  beqz       $v0, .L8002F384
/* 2FF4C 8002F34C 00001021 */   addu      $v0, $zero, $zero
/* 2FF50 8002F350 0C00B9EF */  jal        func_8002E7BC
/* 2FF54 8002F354 00000000 */   nop
/* 2FF58 8002F358 3C02802B */  lui        $v0, %hi(D_802AB834)
/* 2FF5C 8002F35C 8C42B834 */  lw         $v0, %lo(D_802AB834)($v0)
/* 2FF60 8002F360 10400005 */  beqz       $v0, .L8002F378
/* 2FF64 8002F364 00000000 */   nop
/* 2FF68 8002F368 3C02802B */  lui        $v0, %hi(D_802AB830)
/* 2FF6C 8002F36C 8C42B830 */  lw         $v0, %lo(D_802AB830)($v0)
/* 2FF70 8002F370 14400004 */  bnez       $v0, .L8002F384
/* 2FF74 8002F374 00001021 */   addu      $v0, $zero, $zero
.L8002F378:
/* 2FF78 8002F378 0C00BB4D */  jal        func_8002ED34
/* 2FF7C 8002F37C 02002021 */   addu      $a0, $s0, $zero
/* 2FF80 8002F380 24020001 */  addiu      $v0, $zero, 0x1
.L8002F384:
/* 2FF84 8002F384 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FF88 8002F388 8FB00010 */  lw         $s0, 0x10($sp)
/* 2FF8C 8002F38C 03E00008 */  jr         $ra
/* 2FF90 8002F390 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002F394
/* 2FF94 8002F394 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 2FF98 8002F398 D420B7D8 */  ldc1       $f0, %lo(D_802AB7D8)($at)
/* 2FF9C 8002F39C F4800000 */  sdc1       $f0, 0x0($a0)
/* 2FFA0 8002F3A0 3C03802B */  lui        $v1, %hi(D_802AB834)
/* 2FFA4 8002F3A4 8C63B834 */  lw         $v1, %lo(D_802AB834)($v1)
/* 2FFA8 8002F3A8 10600004 */  beqz       $v1, .L8002F3BC
/* 2FFAC 8002F3AC 00001021 */   addu      $v0, $zero, $zero
/* 2FFB0 8002F3B0 3C02802B */  lui        $v0, %hi(D_802AB830)
/* 2FFB4 8002F3B4 8C42B830 */  lw         $v0, %lo(D_802AB830)($v0)
/* 2FFB8 8002F3B8 0002102B */  sltu       $v0, $zero, $v0
.L8002F3BC:
/* 2FFBC 8002F3BC 03E00008 */  jr         $ra
/* 2FFC0 8002F3C0 00000000 */   nop

glabel func_8002F3C4
/* 2FFC4 8002F3C4 3C01802B */  lui        $at, %hi(D_802AB7C8)
/* 2FFC8 8002F3C8 03E00008 */  jr         $ra
/* 2FFCC 8002F3CC D420B7C8 */   ldc1      $f0, %lo(D_802AB7C8)($at)

glabel func_8002F3D0
/* 2FFD0 8002F3D0 3C02802B */  lui        $v0, %hi(D_802AB834)
/* 2FFD4 8002F3D4 8C42B834 */  lw         $v0, %lo(D_802AB834)($v0)
/* 2FFD8 8002F3D8 10400009 */  beqz       $v0, .L8002F400
/* 2FFDC 8002F3DC 00000000 */   nop
/* 2FFE0 8002F3E0 3C02802B */  lui        $v0, %hi(D_802AB830)
/* 2FFE4 8002F3E4 8C42B830 */  lw         $v0, %lo(D_802AB830)($v0)
/* 2FFE8 8002F3E8 10400005 */  beqz       $v0, .L8002F400
/* 2FFEC 8002F3EC 00000000 */   nop
/* 2FFF0 8002F3F0 44800000 */  mtc1       $zero, $f0
/* 2FFF4 8002F3F4 44800800 */  mtc1       $zero, $f1
/* 2FFF8 8002F3F8 0800BD0B */  j          .L8002F42C
/* 2FFFC 8002F3FC 00000000 */   nop
.L8002F400:
/* 30000 8002F400 3C01802B */  lui        $at, %hi(D_802AB7E8)
/* 30004 8002F404 D424B7E8 */  ldc1       $f4, %lo(D_802AB7E8)($at)
/* 30008 8002F408 3C01802B */  lui        $at, %hi(D_802AB7D8)
/* 3000C 8002F40C D420B7D8 */  ldc1       $f0, %lo(D_802AB7D8)($at)
/* 30010 8002F410 46202102 */  mul.d      $f4, $f4, $f0
/* 30014 8002F414 3C01802B */  lui        $at, %hi(D_802AB7F8)
/* 30018 8002F418 D422B7F8 */  ldc1       $f2, %lo(D_802AB7F8)($at)
/* 3001C 8002F41C 3C01802B */  lui        $at, %hi(D_802AB808)
/* 30020 8002F420 D420B808 */  ldc1       $f0, %lo(D_802AB808)($at)
/* 30024 8002F424 46220002 */  mul.d      $f0, $f0, $f2
/* 30028 8002F428 46202000 */  add.d      $f0, $f4, $f0
.L8002F42C:
/* 3002C 8002F42C 03E00008 */  jr         $ra
/* 30030 8002F430 00000000 */   nop
/* 30034 8002F434 00000000 */  nop
/* 30038 8002F438 00000000 */  nop
/* 3003C 8002F43C 00000000 */  nop
