.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80063CF0
/* 648F0 80063CF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 648F4 80063CF4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 648F8 80063CF8 0C024034 */  jal        func_800900D0
/* 648FC 80063CFC 00000000 */   nop
/* 64900 80063D00 00022180 */  sll        $a0, $v0, 6
/* 64904 80063D04 00033682 */  srl        $a2, $v1, 26
/* 64908 80063D08 00862025 */  or         $a0, $a0, $a2
/* 6490C 80063D0C 00032980 */  sll        $a1, $v1, 6
/* 64910 80063D10 24060000 */  addiu      $a2, $zero, 0x0
/* 64914 80063D14 0C000DA0 */  jal        func_80003680
/* 64918 80063D18 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 6491C 80063D1C 00402021 */  addu       $a0, $v0, $zero
/* 64920 80063D20 24060000 */  addiu      $a2, $zero, 0x0
/* 64924 80063D24 240703E8 */  addiu      $a3, $zero, 0x3E8
/* 64928 80063D28 0C000DA0 */  jal        func_80003680
/* 6492C 80063D2C 00602821 */   addu      $a1, $v1, $zero
/* 64930 80063D30 3C04802B */  lui        $a0, %hi(D_802AF364)
/* 64934 80063D34 8C84F364 */  lw         $a0, %lo(D_802AF364)($a0)
/* 64938 80063D38 3C05802B */  lui        $a1, %hi(D_802AF370)
/* 6493C 80063D3C 8CA5F370 */  lw         $a1, %lo(D_802AF370)($a1)
/* 64940 80063D40 3C01802B */  lui        $at, %hi(D_802AF360)
/* 64944 80063D44 AC23F360 */  sw         $v1, %lo(D_802AF360)($at)
/* 64948 80063D48 00642023 */  subu       $a0, $v1, $a0
/* 6494C 80063D4C 00A42806 */  srlv       $a1, $a0, $a1
/* 64950 80063D50 10A00008 */  beqz       $a1, .L80063D74
/* 64954 80063D54 00000000 */   nop
/* 64958 80063D58 3C02802B */  lui        $v0, %hi(D_802AF368)
/* 6495C 80063D5C 8C42F368 */  lw         $v0, %lo(D_802AF368)($v0)
/* 64960 80063D60 3C01802B */  lui        $at, %hi(D_802AF364)
/* 64964 80063D64 AC23F364 */  sw         $v1, %lo(D_802AF364)($at)
/* 64968 80063D68 00451021 */  addu       $v0, $v0, $a1
/* 6496C 80063D6C 3C01802B */  lui        $at, %hi(D_802AF368)
/* 64970 80063D70 AC22F368 */  sw         $v0, %lo(D_802AF368)($at)
.L80063D74:
/* 64974 80063D74 3C03802B */  lui        $v1, %hi(D_802AF368)
/* 64978 80063D78 8C63F368 */  lw         $v1, %lo(D_802AF368)($v1)
/* 6497C 80063D7C 3C02802B */  lui        $v0, %hi(D_802AF36C)
/* 64980 80063D80 8C42F36C */  lw         $v0, %lo(D_802AF36C)($v0)
/* 64984 80063D84 0043102B */  sltu       $v0, $v0, $v1
/* 64988 80063D88 10400004 */  beqz       $v0, .L80063D9C
/* 6498C 80063D8C 24040001 */   addiu     $a0, $zero, 0x1
/* 64990 80063D90 3C01802B */  lui        $at, %hi(D_802AF36C)
/* 64994 80063D94 08018F68 */  j          .L80063DA0
/* 64998 80063D98 AC23F36C */   sw        $v1, %lo(D_802AF36C)($at)
.L80063D9C:
/* 6499C 80063D9C 00002021 */  addu       $a0, $zero, $zero
.L80063DA0:
/* 649A0 80063DA0 3C02800C */  lui        $v0, %hi(D_800C67F0)
/* 649A4 80063DA4 8C4267F0 */  lw         $v0, %lo(D_800C67F0)($v0)
/* 649A8 80063DA8 10400003 */  beqz       $v0, .L80063DB8
/* 649AC 80063DAC 00000000 */   nop
/* 649B0 80063DB0 0040F809 */  jalr       $v0
/* 649B4 80063DB4 00000000 */   nop
.L80063DB8:
/* 649B8 80063DB8 3C02802B */  lui        $v0, %hi(D_802AF360)
/* 649BC 80063DBC 8C42F360 */  lw         $v0, %lo(D_802AF360)($v0)
/* 649C0 80063DC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 649C4 80063DC4 03E00008 */  jr         $ra
/* 649C8 80063DC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80063DCC
/* 649CC 80063DCC 3C01800C */  lui        $at, %hi(D_800C67F0)
/* 649D0 80063DD0 03E00008 */  jr         $ra
/* 649D4 80063DD4 AC2467F0 */   sw        $a0, %lo(D_800C67F0)($at)

glabel func_80063DD8
/* 649D8 80063DD8 3C01802B */  lui        $at, %hi(D_802AF368)
/* 649DC 80063DDC AC20F368 */  sw         $zero, %lo(D_802AF368)($at)
/* 649E0 80063DE0 3C01802B */  lui        $at, %hi(D_802AF36C)
/* 649E4 80063DE4 03E00008 */  jr         $ra
/* 649E8 80063DE8 AC20F36C */   sw        $zero, %lo(D_802AF36C)($at)

glabel func_80063DEC
/* 649EC 80063DEC 3C01802B */  lui        $at, %hi(D_802AF370)
/* 649F0 80063DF0 03E00008 */  jr         $ra
/* 649F4 80063DF4 AC24F370 */   sw        $a0, %lo(D_802AF370)($at)

glabel func_80063DF8
/* 649F8 80063DF8 3C02802B */  lui        $v0, %hi(D_802AF360)
/* 649FC 80063DFC 03E00008 */  jr         $ra
/* 64A00 80063E00 8C42F360 */   lw        $v0, %lo(D_802AF360)($v0)

glabel func_80063E04
/* 64A04 80063E04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 64A08 80063E08 AFBF0010 */  sw         $ra, 0x10($sp)
/* 64A0C 80063E0C 0C024034 */  jal        func_800900D0
/* 64A10 80063E10 00000000 */   nop
/* 64A14 80063E14 00022180 */  sll        $a0, $v0, 6
/* 64A18 80063E18 00033682 */  srl        $a2, $v1, 26
/* 64A1C 80063E1C 00862025 */  or         $a0, $a0, $a2
/* 64A20 80063E20 00032980 */  sll        $a1, $v1, 6
/* 64A24 80063E24 24060000 */  addiu      $a2, $zero, 0x0
/* 64A28 80063E28 0C000DA0 */  jal        func_80003680
/* 64A2C 80063E2C 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 64A30 80063E30 00402021 */  addu       $a0, $v0, $zero
/* 64A34 80063E34 24060000 */  addiu      $a2, $zero, 0x0
/* 64A38 80063E38 240703E8 */  addiu      $a3, $zero, 0x3E8
/* 64A3C 80063E3C 0C000DA0 */  jal        func_80003680
/* 64A40 80063E40 00602821 */   addu      $a1, $v1, $zero
/* 64A44 80063E44 3C04802B */  lui        $a0, %hi(D_802AF364)
/* 64A48 80063E48 8C84F364 */  lw         $a0, %lo(D_802AF364)($a0)
/* 64A4C 80063E4C 3C05802B */  lui        $a1, %hi(D_802AF370)
/* 64A50 80063E50 8CA5F370 */  lw         $a1, %lo(D_802AF370)($a1)
/* 64A54 80063E54 3C06802B */  lui        $a2, %hi(D_802AF368)
/* 64A58 80063E58 8CC6F368 */  lw         $a2, %lo(D_802AF368)($a2)
/* 64A5C 80063E5C 3C01802B */  lui        $at, %hi(D_802AF360)
/* 64A60 80063E60 AC23F360 */  sw         $v1, %lo(D_802AF360)($at)
/* 64A64 80063E64 00642023 */  subu       $a0, $v1, $a0
/* 64A68 80063E68 00A42006 */  srlv       $a0, $a0, $a1
/* 64A6C 80063E6C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 64A70 80063E70 00C41021 */  addu       $v0, $a2, $a0
/* 64A74 80063E74 03E00008 */  jr         $ra
/* 64A78 80063E78 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80063E7C
/* 64A7C 80063E7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 64A80 80063E80 AFBF0010 */  sw         $ra, 0x10($sp)
/* 64A84 80063E84 0C024034 */  jal        func_800900D0
/* 64A88 80063E88 00000000 */   nop
/* 64A8C 80063E8C 00022180 */  sll        $a0, $v0, 6
/* 64A90 80063E90 00033682 */  srl        $a2, $v1, 26
/* 64A94 80063E94 00862025 */  or         $a0, $a0, $a2
/* 64A98 80063E98 00032980 */  sll        $a1, $v1, 6
/* 64A9C 80063E9C 24060000 */  addiu      $a2, $zero, 0x0
/* 64AA0 80063EA0 0C000DA0 */  jal        func_80003680
/* 64AA4 80063EA4 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 64AA8 80063EA8 00402021 */  addu       $a0, $v0, $zero
/* 64AAC 80063EAC 24060000 */  addiu      $a2, $zero, 0x0
/* 64AB0 80063EB0 240703E8 */  addiu      $a3, $zero, 0x3E8
/* 64AB4 80063EB4 0C000DA0 */  jal        func_80003680
/* 64AB8 80063EB8 00602821 */   addu      $a1, $v1, $zero
/* 64ABC 80063EBC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 64AC0 80063EC0 00601021 */  addu       $v0, $v1, $zero
/* 64AC4 80063EC4 03E00008 */  jr         $ra
/* 64AC8 80063EC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80063ECC
/* 64ACC 80063ECC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 64AD0 80063ED0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 64AD4 80063ED4 0C024034 */  jal        func_800900D0
/* 64AD8 80063ED8 00000000 */   nop
/* 64ADC 80063EDC 00022180 */  sll        $a0, $v0, 6
/* 64AE0 80063EE0 00033682 */  srl        $a2, $v1, 26
/* 64AE4 80063EE4 00862025 */  or         $a0, $a0, $a2
/* 64AE8 80063EE8 00032980 */  sll        $a1, $v1, 6
/* 64AEC 80063EEC 24060000 */  addiu      $a2, $zero, 0x0
/* 64AF0 80063EF0 0C000DA0 */  jal        func_80003680
/* 64AF4 80063EF4 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 64AF8 80063EF8 00402021 */  addu       $a0, $v0, $zero
/* 64AFC 80063EFC 24060000 */  addiu      $a2, $zero, 0x0
/* 64B00 80063F00 240703E8 */  addiu      $a3, $zero, 0x3E8
/* 64B04 80063F04 0C000DA0 */  jal        func_80003680
/* 64B08 80063F08 00602821 */   addu      $a1, $v1, $zero
/* 64B0C 80063F0C 3C01802B */  lui        $at, %hi(D_802AF360)
/* 64B10 80063F10 AC23F360 */  sw         $v1, %lo(D_802AF360)($at)
/* 64B14 80063F14 3C01802B */  lui        $at, %hi(D_802AF364)
/* 64B18 80063F18 AC23F364 */  sw         $v1, %lo(D_802AF364)($at)
/* 64B1C 80063F1C 3C01802B */  lui        $at, %hi(D_802AF368)
/* 64B20 80063F20 AC20F368 */  sw         $zero, %lo(D_802AF368)($at)
/* 64B24 80063F24 3C01802B */  lui        $at, %hi(D_802AF36C)
/* 64B28 80063F28 AC20F36C */  sw         $zero, %lo(D_802AF36C)($at)
/* 64B2C 80063F2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 64B30 80063F30 03E00008 */  jr         $ra
/* 64B34 80063F34 27BD0018 */   addiu     $sp, $sp, 0x18
/* 64B38 80063F38 00000000 */  nop
/* 64B3C 80063F3C 00000000 */  nop
