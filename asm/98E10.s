.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80098210
/* 98E10 80098210 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98E14 80098214 AFB00010 */  sw         $s0, 0x10($sp)
/* 98E18 80098218 3C10800D */  lui        $s0, %hi(D_800CB200)
/* 98E1C 8009821C 2610B200 */  addiu      $s0, $s0, %lo(D_800CB200)
/* 98E20 80098220 02002021 */  addu       $a0, $s0, $zero
/* 98E24 80098224 AFBF0014 */  sw         $ra, 0x14($sp)
/* 98E28 80098228 0C00034C */  jal        _bzero
/* 98E2C 8009822C 24050060 */   addiu     $a1, $zero, 0x60
/* 98E30 80098230 3C038000 */  lui        $v1, %hi(osTvType)
/* 98E34 80098234 8C630300 */  lw         $v1, %lo(osTvType)($v1)
/* 98E38 80098238 3C01800D */  lui        $at, %hi(D_800CB260)
/* 98E3C 8009823C AC30B260 */  sw         $s0, %lo(D_800CB260)($at)
/* 98E40 80098240 26100030 */  addiu      $s0, $s0, 0x30
/* 98E44 80098244 24020001 */  addiu      $v0, $zero, 0x1
/* 98E48 80098248 3C01800D */  lui        $at, %hi(D_800CB232)
/* 98E4C 8009824C A422B232 */  sh         $v0, %lo(D_800CB232)($at)
/* 98E50 80098250 3C01800D */  lui        $at, %hi(D_800CB202)
/* 98E54 80098254 A422B202 */  sh         $v0, %lo(D_800CB202)($at)
/* 98E58 80098258 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 98E5C 8009825C 3C01800D */  lui        $at, %hi(D_800CB264)
/* 98E60 80098260 AC30B264 */  sw         $s0, %lo(D_800CB264)($at)
/* 98E64 80098264 3C01800D */  lui        $at, %hi(D_800CB234)
/* 98E68 80098268 AC22B234 */  sw         $v0, %lo(D_800CB234)($at)
/* 98E6C 8009826C 3C01800D */  lui        $at, %hi(D_800CB204)
/* 98E70 80098270 AC22B204 */  sw         $v0, %lo(D_800CB204)($at)
/* 98E74 80098274 14600004 */  bnez       $v1, .L80098288
/* 98E78 80098278 24020002 */   addiu     $v0, $zero, 0x2
/* 98E7C 8009827C 3C02800D */  lui        $v0, %hi(D_800CB2D0)
/* 98E80 80098280 080260A9 */  j          .L800982A4
/* 98E84 80098284 2442B2D0 */   addiu     $v0, $v0, %lo(D_800CB2D0)
.L80098288:
/* 98E88 80098288 14620004 */  bne        $v1, $v0, .L8009829C
/* 98E8C 8009828C 00000000 */   nop
/* 98E90 80098290 3C02800D */  lui        $v0, %hi(D_800CB320)
/* 98E94 80098294 080260A9 */  j          .L800982A4
/* 98E98 80098298 2442B320 */   addiu     $v0, $v0, %lo(D_800CB320)
.L8009829C:
/* 98E9C 8009829C 3C02800D */  lui        $v0, %hi(D_800CB280)
/* 98EA0 800982A0 2442B280 */  addiu      $v0, $v0, %lo(D_800CB280)
.L800982A4:
/* 98EA4 800982A4 3C01800D */  lui        $at, %hi(D_800CB238)
/* 98EA8 800982A8 AC22B238 */  sw         $v0, %lo(D_800CB238)($at)
/* 98EAC 800982AC 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 98EB0 800982B0 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 98EB4 800982B4 8C640008 */  lw         $a0, 0x8($v1)
/* 98EB8 800982B8 24020020 */  addiu      $v0, $zero, 0x20
/* 98EBC 800982BC A4620000 */  sh         $v0, 0x0($v1)
/* 98EC0 800982C0 8C820004 */  lw         $v0, 0x4($a0)
/* 98EC4 800982C4 3C04A440 */  lui        $a0, (0xA4400010 >> 16)
/* 98EC8 800982C8 34840010 */  ori        $a0, $a0, (0xA4400010 & 0xFFFF)
/* 98ECC 800982CC AC62000C */  sw         $v0, 0xC($v1)
/* 98ED0 800982D0 8C820000 */  lw         $v0, 0x0($a0)
/* 98ED4 800982D4 2C42000B */  sltiu      $v0, $v0, 0xB
/* 98ED8 800982D8 14400007 */  bnez       $v0, .L800982F8
/* 98EDC 800982DC 3C02A440 */   lui       $v0, %hi(D_A4400000)
/* 98EE0 800982E0 3C03A440 */  lui        $v1, (0xA4400010 >> 16)
/* 98EE4 800982E4 34630010 */  ori        $v1, $v1, (0xA4400010 & 0xFFFF)
.L800982E8:
/* 98EE8 800982E8 8C620000 */  lw         $v0, 0x0($v1)
/* 98EEC 800982EC 2C42000B */  sltiu      $v0, $v0, 0xB
/* 98EF0 800982F0 1040FFFD */  beqz       $v0, .L800982E8
/* 98EF4 800982F4 3C02A440 */   lui       $v0, %hi(D_A4400000)
.L800982F8:
/* 98EF8 800982F8 AC400000 */  sw         $zero, %lo(D_A4400000)($v0)
/* 98EFC 800982FC 0C025210 */  jal        func_80094840
/* 98F00 80098300 00000000 */   nop
/* 98F04 80098304 8FBF0014 */  lw         $ra, 0x14($sp)
/* 98F08 80098308 8FB00010 */  lw         $s0, 0x10($sp)
/* 98F0C 8009830C 03E00008 */  jr         $ra
/* 98F10 80098310 27BD0018 */   addiu     $sp, $sp, 0x18
/* 98F14 80098314 00000000 */  nop
/* 98F18 80098318 00000000 */  nop
/* 98F1C 8009831C 00000000 */  nop
