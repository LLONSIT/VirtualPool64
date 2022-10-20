.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8001F1F0
/* 1FDF0 8001F1F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FDF4 8001F1F4 2C820003 */  sltiu      $v0, $a0, 0x3
/* 1FDF8 8001F1F8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1FDFC 8001F1FC 14400006 */  bnez       $v0, .L8001F218
/* 1FE00 8001F200 AFB00018 */   sw        $s0, 0x18($sp)
/* 1FE04 8001F204 24020003 */  addiu      $v0, $zero, 0x3
/* 1FE08 8001F208 1082001E */  beq        $a0, $v0, .L8001F284
/* 1FE0C 8001F20C 00000000 */   nop
/* 1FE10 8001F210 08007CBB */  j          .L8001F2EC
/* 1FE14 8001F214 00000000 */   nop
.L8001F218:
/* 1FE18 8001F218 1480000E */  bnez       $a0, .L8001F254
/* 1FE1C 8001F21C 00000000 */   nop
/* 1FE20 8001F220 3C02800B */  lui        $v0, %hi(D_800B63F0)
/* 1FE24 8001F224 8C4263F0 */  lw         $v0, %lo(D_800B63F0)($v0)
/* 1FE28 8001F228 14400030 */  bnez       $v0, .L8001F2EC
/* 1FE2C 8001F22C 00002021 */   addu      $a0, $zero, $zero
/* 1FE30 8001F230 3C02800D */  lui        $v0, %hi(D_800CD248)
/* 1FE34 8001F234 8C42D248 */  lw         $v0, %lo(D_800CD248)($v0)
/* 1FE38 8001F238 00002821 */  addu       $a1, $zero, $zero
/* 1FE3C 8001F23C 0040F809 */  jalr       $v0
/* 1FE40 8001F240 00003021 */   addu      $a2, $zero, $zero
/* 1FE44 8001F244 24020001 */  addiu      $v0, $zero, 0x1
/* 1FE48 8001F248 3C01800B */  lui        $at, %hi(D_800B63F0)
/* 1FE4C 8001F24C 08007CBB */  j          .L8001F2EC
/* 1FE50 8001F250 AC2263F0 */   sw        $v0, %lo(D_800B63F0)($at)
.L8001F254:
/* 1FE54 8001F254 3C02800B */  lui        $v0, %hi(D_800B63F0)
/* 1FE58 8001F258 8C4263F0 */  lw         $v0, %lo(D_800B63F0)($v0)
/* 1FE5C 8001F25C 10400023 */  beqz       $v0, .L8001F2EC
/* 1FE60 8001F260 24040001 */   addiu     $a0, $zero, 0x1
/* 1FE64 8001F264 3C02800D */  lui        $v0, %hi(D_800CD248)
/* 1FE68 8001F268 8C42D248 */  lw         $v0, %lo(D_800CD248)($v0)
/* 1FE6C 8001F26C 00002821 */  addu       $a1, $zero, $zero
/* 1FE70 8001F270 0040F809 */  jalr       $v0
/* 1FE74 8001F274 00003021 */   addu      $a2, $zero, $zero
/* 1FE78 8001F278 3C01800B */  lui        $at, %hi(D_800B63F0)
/* 1FE7C 8001F27C 08007CBB */  j          .L8001F2EC
/* 1FE80 8001F280 AC2063F0 */   sw        $zero, %lo(D_800B63F0)($at)
.L8001F284:
/* 1FE84 8001F284 0C0017F0 */  jal        func_80005FC0
/* 1FE88 8001F288 00000000 */   nop
/* 1FE8C 8001F28C 00408021 */  addu       $s0, $v0, $zero
/* 1FE90 8001F290 0C005689 */  jal        func_80015A24
/* 1FE94 8001F294 02002021 */   addu      $a0, $s0, $zero
/* 1FE98 8001F298 24040002 */  addiu      $a0, $zero, 0x2
/* 1FE9C 8001F29C 3C02800D */  lui        $v0, %hi(D_800CD248)
/* 1FEA0 8001F2A0 8C42D248 */  lw         $v0, %lo(D_800CD248)($v0)
/* 1FEA4 8001F2A4 02002821 */  addu       $a1, $s0, $zero
/* 1FEA8 8001F2A8 0040F809 */  jalr       $v0
/* 1FEAC 8001F2AC 2406FFFF */   addiu     $a2, $zero, -0x1
/* 1FEB0 8001F2B0 0C005735 */  jal        func_80015CD4
/* 1FEB4 8001F2B4 02002021 */   addu      $a0, $s0, $zero
/* 1FEB8 8001F2B8 02002021 */  addu       $a0, $s0, $zero
/* 1FEBC 8001F2BC 24050001 */  addiu      $a1, $zero, 0x1
/* 1FEC0 8001F2C0 00003021 */  addu       $a2, $zero, $zero
/* 1FEC4 8001F2C4 3C02800D */  lui        $v0, %hi(D_800CB410)
/* 1FEC8 8001F2C8 2442B410 */  addiu      $v0, $v0, %lo(D_800CB410)
/* 1FECC 8001F2CC AFA20010 */  sw         $v0, 0x10($sp)
/* 1FED0 8001F2D0 24020001 */  addiu      $v0, $zero, 0x1
/* 1FED4 8001F2D4 3C07800A */  lui        $a3, %hi(D_8009C080)
/* 1FED8 8001F2D8 24E7C080 */  addiu      $a3, $a3, %lo(D_8009C080)
/* 1FEDC 8001F2DC 0C001821 */  jal        func_80006084
/* 1FEE0 8001F2E0 AFA20014 */   sw        $v0, 0x14($sp)
/* 1FEE4 8001F2E4 0C0017FB */  jal        func_80005FEC
/* 1FEE8 8001F2E8 02002021 */   addu      $a0, $s0, $zero
.L8001F2EC:
/* 1FEEC 8001F2EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1FEF0 8001F2F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 1FEF4 8001F2F4 03E00008 */  jr         $ra
/* 1FEF8 8001F2F8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001F2FC
/* 1FEFC 8001F2FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FF00 8001F300 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1FF04 8001F304 0C01B57C */  jal        func_8006D5F0
/* 1FF08 8001F308 00000000 */   nop
/* 1FF0C 8001F30C 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* 1FF10 8001F310 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* 1FF14 8001F314 1440000B */  bnez       $v0, .L8001F344
/* 1FF18 8001F318 2404000F */   addiu     $a0, $zero, 0xF
/* 1FF1C 8001F31C 3C058002 */  lui        $a1, %hi(func_8001F3B0)
/* 1FF20 8001F320 24A5F3B0 */  addiu      $a1, $a1, %lo(func_8001F3B0)
/* 1FF24 8001F324 3C078002 */  lui        $a3, %hi(func_8001F1F0)
/* 1FF28 8001F328 24E7F1F0 */  addiu      $a3, $a3, %lo(func_8001F1F0)
/* 1FF2C 8001F32C 0C0043C3 */  jal        func_80010F0C
/* 1FF30 8001F330 00003021 */   addu      $a2, $zero, $zero
/* 1FF34 8001F334 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* 1FF38 8001F338 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* 1FF3C 8001F33C 10400007 */  beqz       $v0, .L8001F35C
/* 1FF40 8001F340 2404000F */   addiu     $a0, $zero, 0xF
.L8001F344:
/* 1FF44 8001F344 3C058002 */  lui        $a1, %hi(func_8001F448)
/* 1FF48 8001F348 24A5F448 */  addiu      $a1, $a1, %lo(func_8001F448)
/* 1FF4C 8001F34C 3C078002 */  lui        $a3, %hi(func_8001F1F0)
/* 1FF50 8001F350 24E7F1F0 */  addiu      $a3, $a3, %lo(func_8001F1F0)
/* 1FF54 8001F354 0C0043C3 */  jal        func_80010F0C
/* 1FF58 8001F358 00003021 */   addu      $a2, $zero, $zero
.L8001F35C:
/* 1FF5C 8001F35C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1FF60 8001F360 03E00008 */  jr         $ra
/* 1FF64 8001F364 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F368
/* 1FF68 8001F368 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* 1FF6C 8001F36C 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* 1FF70 8001F370 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FF74 8001F374 1040000B */  beqz       $v0, .L8001F3A4
/* 1FF78 8001F378 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1FF7C 8001F37C 0C000F6C */  jal        func_80003DB0
/* 1FF80 8001F380 00000000 */   nop
/* 1FF84 8001F384 10400007 */  beqz       $v0, .L8001F3A4
/* 1FF88 8001F388 2404000F */   addiu     $a0, $zero, 0xF
/* 1FF8C 8001F38C 3C058002 */  lui        $a1, %hi(func_8001F400)
/* 1FF90 8001F390 24A5F400 */  addiu      $a1, $a1, %lo(func_8001F400)
/* 1FF94 8001F394 3C078001 */  lui        $a3, %hi(func_80010FC8)
/* 1FF98 8001F398 24E70FC8 */  addiu      $a3, $a3, %lo(func_80010FC8)
/* 1FF9C 8001F39C 0C0043C3 */  jal        func_80010F0C
/* 1FFA0 8001F3A0 00003021 */   addu      $a2, $zero, $zero
.L8001F3A4:
/* 1FFA4 8001F3A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1FFA8 8001F3A8 03E00008 */  jr         $ra
/* 1FFAC 8001F3AC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F3B0
/* 1FFB0 8001F3B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FFB4 8001F3B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FFB8 8001F3B8 3C05800D */  lui        $a1, %hi(D_800CF39C)
/* 1FFBC 8001F3BC 24A5F39C */  addiu      $a1, $a1, %lo(D_800CF39C)
/* 1FFC0 8001F3C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FFC4 8001F3C4 3C01800B */  lui        $at, %hi(D_800ABAA4)
/* 1FFC8 8001F3C8 AC20BAA4 */  sw         $zero, %lo(D_800ABAA4)($at)
/* 1FFCC 8001F3CC 0C007E6D */  jal        func_8001F9B4
/* 1FFD0 8001F3D0 00808021 */   addu      $s0, $a0, $zero
/* 1FFD4 8001F3D4 0C003704 */  jal        func_8000DC10
/* 1FFD8 8001F3D8 00000000 */   nop
/* 1FFDC 8001F3DC 02002021 */  addu       $a0, $s0, $zero
/* 1FFE0 8001F3E0 00408021 */  addu       $s0, $v0, $zero
/* 1FFE4 8001F3E4 0C007E99 */  jal        func_8001FA64
/* 1FFE8 8001F3E8 02002821 */   addu      $a1, $s0, $zero
/* 1FFEC 8001F3EC 02001021 */  addu       $v0, $s0, $zero
/* 1FFF0 8001F3F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FFF4 8001F3F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FFF8 8001F3F8 03E00008 */  jr         $ra
/* 1FFFC 8001F3FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F400
/* 20000 8001F400 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20004 8001F404 AFB00010 */  sw         $s0, 0x10($sp)
/* 20008 8001F408 3C05800D */  lui        $a1, %hi(D_800CF3AC)
/* 2000C 8001F40C 24A5F3AC */  addiu      $a1, $a1, %lo(D_800CF3AC)
/* 20010 8001F410 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20014 8001F414 0C007E6D */  jal        func_8001F9B4
/* 20018 8001F418 00808021 */   addu      $s0, $a0, $zero
/* 2001C 8001F41C 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 20020 8001F420 0C003A5D */  jal        func_8000E974
/* 20024 8001F424 8C84BAA0 */   lw        $a0, %lo(D_800ABAA0)($a0)
/* 20028 8001F428 02002021 */  addu       $a0, $s0, $zero
/* 2002C 8001F42C 0C007E99 */  jal        func_8001FA64
/* 20030 8001F430 00402821 */   addu      $a1, $v0, $zero
/* 20034 8001F434 00001021 */  addu       $v0, $zero, $zero
/* 20038 8001F438 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2003C 8001F43C 8FB00010 */  lw         $s0, 0x10($sp)
/* 20040 8001F440 03E00008 */  jr         $ra
/* 20044 8001F444 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F448
/* 20048 8001F448 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2004C 8001F44C AFB00010 */  sw         $s0, 0x10($sp)
/* 20050 8001F450 3C05800D */  lui        $a1, %hi(D_800CF3D4)
/* 20054 8001F454 24A5F3D4 */  addiu      $a1, $a1, %lo(D_800CF3D4)
/* 20058 8001F458 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2005C 8001F45C 0C007E6D */  jal        func_8001F9B4
/* 20060 8001F460 00808021 */   addu      $s0, $a0, $zero
/* 20064 8001F464 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 20068 8001F468 0C0037B0 */  jal        func_8000DEC0
/* 2006C 8001F46C 8C84BAA0 */   lw        $a0, %lo(D_800ABAA0)($a0)
/* 20070 8001F470 02002021 */  addu       $a0, $s0, $zero
/* 20074 8001F474 00408021 */  addu       $s0, $v0, $zero
/* 20078 8001F478 0C007E99 */  jal        func_8001FA64
/* 2007C 8001F47C 02002821 */   addu      $a1, $s0, $zero
/* 20080 8001F480 02001021 */  addu       $v0, $s0, $zero
/* 20084 8001F484 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20088 8001F488 8FB00010 */  lw         $s0, 0x10($sp)
/* 2008C 8001F48C 03E00008 */  jr         $ra
/* 20090 8001F490 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F494
/* 20094 8001F494 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20098 8001F498 3C05800D */  lui        $a1, %hi(D_800CF478)
/* 2009C 8001F49C 24A5F478 */  addiu      $a1, $a1, %lo(D_800CF478)
/* 200A0 8001F4A0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 200A4 8001F4A4 0C007E6D */  jal        func_8001F9B4
/* 200A8 8001F4A8 00000000 */   nop
/* 200AC 8001F4AC 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 200B0 8001F4B0 0C003761 */  jal        func_8000DD84
/* 200B4 8001F4B4 8C84BAA0 */   lw        $a0, %lo(D_800ABAA0)($a0)
/* 200B8 8001F4B8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 200BC 8001F4BC 03E00008 */  jr         $ra
/* 200C0 8001F4C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F4C4
/* 200C4 8001F4C4 3C05802A */  lui        $a1, %hi(D_802A1590)
/* 200C8 8001F4C8 8CA51590 */  lw         $a1, %lo(D_802A1590)($a1)
/* 200CC 8001F4CC 2404000F */  addiu      $a0, $zero, 0xF
/* 200D0 8001F4D0 2406FFFF */  addiu      $a2, $zero, -0x1
/* 200D4 8001F4D4 3C01802A */  lui        $at, %hi(D_802A1594)
/* 200D8 8001F4D8 AC201594 */  sw         $zero, %lo(D_802A1594)($at)
.L8001F4DC:
/* 200DC 8001F4DC 8CA20014 */  lw         $v0, 0x14($a1)
/* 200E0 8001F4E0 04420001 */  bltzl      $v0, .L8001F4E8
/* 200E4 8001F4E4 244200FF */   addiu     $v0, $v0, 0xFF
.L8001F4E8:
/* 200E8 8001F4E8 3C03802A */  lui        $v1, %hi(D_802A1594)
/* 200EC 8001F4EC 8C631594 */  lw         $v1, %lo(D_802A1594)($v1)
/* 200F0 8001F4F0 2484FFFF */  addiu      $a0, $a0, -0x1
/* 200F4 8001F4F4 00021203 */  sra        $v0, $v0, 8
/* 200F8 8001F4F8 00621821 */  addu       $v1, $v1, $v0
/* 200FC 8001F4FC 3C01802A */  lui        $at, %hi(D_802A1594)
/* 20100 8001F500 AC231594 */  sw         $v1, %lo(D_802A1594)($at)
/* 20104 8001F504 1486FFF5 */  bne        $a0, $a2, .L8001F4DC
/* 20108 8001F508 24A50020 */   addiu     $a1, $a1, 0x20
/* 2010C 8001F50C 03E00008 */  jr         $ra
/* 20110 8001F510 00000000 */   nop

glabel func_8001F514
/* 20114 8001F514 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20118 8001F518 AFB00018 */  sw         $s0, 0x18($sp)
/* 2011C 8001F51C 3C05800D */  lui        $a1, %hi(D_800CF448)
/* 20120 8001F520 24A5F448 */  addiu      $a1, $a1, %lo(D_800CF448)
/* 20124 8001F524 AFBF001C */  sw         $ra, 0x1C($sp)
/* 20128 8001F528 3C01802A */  lui        $at, %hi(D_802A1594)
/* 2012C 8001F52C AC201594 */  sw         $zero, %lo(D_802A1594)($at)
/* 20130 8001F530 0C007E6D */  jal        func_8001F9B4
/* 20134 8001F534 00808021 */   addu      $s0, $a0, $zero
/* 20138 8001F538 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 2013C 8001F53C 8C84BAA0 */  lw         $a0, %lo(D_800ABAA0)($a0)
/* 20140 8001F540 3C05802A */  lui        $a1, %hi(D_802A1590)
/* 20144 8001F544 24A51590 */  addiu      $a1, $a1, %lo(D_802A1590)
/* 20148 8001F548 0C003859 */  jal        func_8000E164
/* 2014C 8001F54C 27A60010 */   addiu     $a2, $sp, 0x10
/* 20150 8001F550 00402821 */  addu       $a1, $v0, $zero
/* 20154 8001F554 10A00004 */  beqz       $a1, .L8001F568
/* 20158 8001F558 AFA50010 */   sw        $a1, 0x10($sp)
/* 2015C 8001F55C 24020005 */  addiu      $v0, $zero, 0x5
/* 20160 8001F560 14A2000C */  bne        $a1, $v0, .L8001F594
/* 20164 8001F564 00000000 */   nop
.L8001F568:
/* 20168 8001F568 0C007D31 */  jal        func_8001F4C4
/* 2016C 8001F56C 00000000 */   nop
/* 20170 8001F570 02002021 */  addu       $a0, $s0, $zero
/* 20174 8001F574 0C004204 */  jal        func_80010810
/* 20178 8001F578 00002821 */   addu      $a1, $zero, $zero
/* 2017C 8001F57C 24040010 */  addiu      $a0, $zero, 0x10
/* 20180 8001F580 00002821 */  addu       $a1, $zero, $zero
/* 20184 8001F584 0C0041BA */  jal        func_800106E8
/* 20188 8001F588 00003021 */   addu      $a2, $zero, $zero
/* 2018C 8001F58C 08007D68 */  j          .L8001F5A0
/* 20190 8001F590 00000000 */   nop
.L8001F594:
/* 20194 8001F594 0C007E99 */  jal        func_8001FA64
/* 20198 8001F598 02002021 */   addu      $a0, $s0, $zero
/* 2019C 8001F59C AFA20010 */  sw         $v0, 0x10($sp)
.L8001F5A0:
/* 201A0 8001F5A0 8FA20010 */  lw         $v0, 0x10($sp)
/* 201A4 8001F5A4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 201A8 8001F5A8 8FB00018 */  lw         $s0, 0x18($sp)
/* 201AC 8001F5AC 03E00008 */  jr         $ra
/* 201B0 8001F5B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001F5B4
/* 201B4 8001F5B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 201B8 8001F5B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 201BC 8001F5BC 3C05800D */  lui        $a1, %hi(D_800CF460)
/* 201C0 8001F5C0 24A5F460 */  addiu      $a1, $a1, %lo(D_800CF460)
/* 201C4 8001F5C4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 201C8 8001F5C8 0C007E6D */  jal        func_8001F9B4
/* 201CC 8001F5CC 00808021 */   addu      $s0, $a0, $zero
/* 201D0 8001F5D0 3C04802A */  lui        $a0, %hi(D_802A1598)
/* 201D4 8001F5D4 8C841598 */  lw         $a0, %lo(D_802A1598)($a0)
/* 201D8 8001F5D8 3C05800B */  lui        $a1, %hi(D_800ABAA0)
/* 201DC 8001F5DC 0C0039F9 */  jal        func_8000E7E4
/* 201E0 8001F5E0 8CA5BAA0 */   lw        $a1, %lo(D_800ABAA0)($a1)
/* 201E4 8001F5E4 14400009 */  bnez       $v0, .L8001F60C
/* 201E8 8001F5E8 AFA20010 */   sw        $v0, 0x10($sp)
/* 201EC 8001F5EC 3C04800B */  lui        $a0, %hi(D_800ABAA0)
/* 201F0 8001F5F0 8C84BAA0 */  lw         $a0, %lo(D_800ABAA0)($a0)
/* 201F4 8001F5F4 3C05802A */  lui        $a1, %hi(D_802A1590)
/* 201F8 8001F5F8 24A51590 */  addiu      $a1, $a1, %lo(D_802A1590)
/* 201FC 8001F5FC 0C003859 */  jal        func_8000E164
/* 20200 8001F600 27A60010 */   addiu     $a2, $sp, 0x10
/* 20204 8001F604 0C007D31 */  jal        func_8001F4C4
/* 20208 8001F608 AFA20010 */   sw        $v0, 0x10($sp)
.L8001F60C:
/* 2020C 8001F60C 8FA50010 */  lw         $a1, 0x10($sp)
/* 20210 8001F610 0C007E99 */  jal        func_8001FA64
/* 20214 8001F614 02002021 */   addu      $a0, $s0, $zero
/* 20218 8001F618 8FA20010 */  lw         $v0, 0x10($sp)
/* 2021C 8001F61C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 20220 8001F620 8FB00018 */  lw         $s0, 0x18($sp)
/* 20224 8001F624 03E00008 */  jr         $ra
/* 20228 8001F628 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001F62C
/* 2022C 8001F62C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20230 8001F630 AFBF0010 */  sw         $ra, 0x10($sp)
/* 20234 8001F634 00802821 */  addu       $a1, $a0, $zero
/* 20238 8001F638 2404000F */  addiu      $a0, $zero, 0xF
/* 2023C 8001F63C 0C0041BA */  jal        func_800106E8
/* 20240 8001F640 00003021 */   addu      $a2, $zero, $zero
/* 20244 8001F644 8FBF0010 */  lw         $ra, 0x10($sp)
/* 20248 8001F648 03E00008 */  jr         $ra
/* 2024C 8001F64C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F650
/* 20250 8001F650 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 20254 8001F654 AFB00058 */  sw         $s0, 0x58($sp)
/* 20258 8001F658 00808021 */  addu       $s0, $a0, $zero
/* 2025C 8001F65C AFB1005C */  sw         $s1, 0x5C($sp)
/* 20260 8001F660 00C08821 */  addu       $s1, $a2, $zero
/* 20264 8001F664 24020086 */  addiu      $v0, $zero, 0x86
/* 20268 8001F668 10A20006 */  beq        $a1, $v0, .L8001F684
/* 2026C 8001F66C AFBF0060 */   sw        $ra, 0x60($sp)
/* 20270 8001F670 2402008A */  addiu      $v0, $zero, 0x8A
/* 20274 8001F674 10A200CA */  beq        $a1, $v0, .L8001F9A0
/* 20278 8001F678 00001021 */   addu      $v0, $zero, $zero
/* 2027C 8001F67C 08007E66 */  j          .L8001F998
/* 20280 8001F680 02002021 */   addu      $a0, $s0, $zero
.L8001F684:
/* 20284 8001F684 2404000B */  addiu      $a0, $zero, 0xB
/* 20288 8001F688 A7A00020 */  sh         $zero, 0x20($sp)
/* 2028C 8001F68C 0C005C85 */  jal        func_80017214
/* 20290 8001F690 A7A00022 */   sh        $zero, 0x22($sp)
/* 20294 8001F694 2404000B */  addiu      $a0, $zero, 0xB
/* 20298 8001F698 0C005C8D */  jal        func_80017234
/* 2029C 8001F69C A7A20024 */   sh        $v0, 0x24($sp)
/* 202A0 8001F6A0 A7A20026 */  sh         $v0, 0x26($sp)
/* 202A4 8001F6A4 8BA20020 */  lwl        $v0, 0x20($sp)
/* 202A8 8001F6A8 9BA20023 */  lwr        $v0, 0x23($sp)
/* 202AC 8001F6AC 8BA30024 */  lwl        $v1, 0x24($sp)
/* 202B0 8001F6B0 9BA30027 */  lwr        $v1, 0x27($sp)
/* 202B4 8001F6B4 ABA20028 */  swl        $v0, 0x28($sp)
/* 202B8 8001F6B8 BBA2002B */  swr        $v0, 0x2B($sp)
/* 202BC 8001F6BC ABA3002C */  swl        $v1, 0x2C($sp)
/* 202C0 8001F6C0 BBA3002F */  swr        $v1, 0x2F($sp)
/* 202C4 8001F6C4 87A90022 */  lh         $t1, 0x22($sp)
/* 202C8 8001F6C8 87A50026 */  lh         $a1, 0x26($sp)
/* 202CC 8001F6CC 01204021 */  addu       $t0, $t1, $zero
/* 202D0 8001F6D0 00A92823 */  subu       $a1, $a1, $t1
/* 202D4 8001F6D4 000517C2 */  srl        $v0, $a1, 31
/* 202D8 8001F6D8 00A22821 */  addu       $a1, $a1, $v0
/* 202DC 8001F6DC 00052843 */  sra        $a1, $a1, 1
/* 202E0 8001F6E0 01052821 */  addu       $a1, $t0, $a1
/* 202E4 8001F6E4 A7A50026 */  sh         $a1, 0x26($sp)
/* 202E8 8001F6E8 86030004 */  lh         $v1, 0x4($s0)
/* 202EC 8001F6EC 86020008 */  lh         $v0, 0x8($s0)
/* 202F0 8001F6F0 87A60024 */  lh         $a2, 0x24($sp)
/* 202F4 8001F6F4 87A70020 */  lh         $a3, 0x20($sp)
/* 202F8 8001F6F8 00621821 */  addu       $v1, $v1, $v0
/* 202FC 8001F6FC 000317C2 */  srl        $v0, $v1, 31
/* 20300 8001F700 00621821 */  addu       $v1, $v1, $v0
/* 20304 8001F704 00031843 */  sra        $v1, $v1, 1
/* 20308 8001F708 00C71023 */  subu       $v0, $a2, $a3
/* 2030C 8001F70C 000227C2 */  srl        $a0, $v0, 31
/* 20310 8001F710 00441021 */  addu       $v0, $v0, $a0
/* 20314 8001F714 00021043 */  sra        $v0, $v0, 1
/* 20318 8001F718 00625023 */  subu       $t2, $v1, $v0
/* 2031C 8001F71C 00CA3021 */  addu       $a2, $a2, $t2
/* 20320 8001F720 00C73023 */  subu       $a2, $a2, $a3
/* 20324 8001F724 A7A60024 */  sh         $a2, 0x24($sp)
/* 20328 8001F728 A7AA0020 */  sh         $t2, 0x20($sp)
/* 2032C 8001F72C 86030006 */  lh         $v1, 0x6($s0)
/* 20330 8001F730 8602000A */  lh         $v0, 0xA($s0)
/* 20334 8001F734 00621821 */  addu       $v1, $v1, $v0
/* 20338 8001F738 000317C2 */  srl        $v0, $v1, 31
/* 2033C 8001F73C 00621821 */  addu       $v1, $v1, $v0
/* 20340 8001F740 00031843 */  sra        $v1, $v1, 1
/* 20344 8001F744 00051400 */  sll        $v0, $a1, 16
/* 20348 8001F748 00021403 */  sra        $v0, $v0, 16
/* 2034C 8001F74C 00491023 */  subu       $v0, $v0, $t1
/* 20350 8001F750 000227C2 */  srl        $a0, $v0, 31
/* 20354 8001F754 00441021 */  addu       $v0, $v0, $a0
/* 20358 8001F758 00021043 */  sra        $v0, $v0, 1
/* 2035C 8001F75C 00623823 */  subu       $a3, $v1, $v0
/* 20360 8001F760 00A72821 */  addu       $a1, $a1, $a3
/* 20364 8001F764 00A82823 */  subu       $a1, $a1, $t0
/* 20368 8001F768 A7A50026 */  sh         $a1, 0x26($sp)
/* 2036C 8001F76C A7A70022 */  sh         $a3, 0x22($sp)
/* 20370 8001F770 8E020040 */  lw         $v0, 0x40($s0)
/* 20374 8001F774 10400019 */  beqz       $v0, .L8001F7DC
/* 20378 8001F778 02202021 */   addu      $a0, $s1, $zero
/* 2037C 8001F77C 87A2002E */  lh         $v0, 0x2E($sp)
/* 20380 8001F780 87A3002A */  lh         $v1, 0x2A($sp)
/* 20384 8001F784 2405000B */  addiu      $a1, $zero, 0xB
/* 20388 8001F788 00431023 */  subu       $v0, $v0, $v1
/* 2038C 8001F78C 00021FC2 */  srl        $v1, $v0, 31
/* 20390 8001F790 00431021 */  addu       $v0, $v0, $v1
/* 20394 8001F794 00021043 */  sra        $v0, $v0, 1
/* 20398 8001F798 A7A2002E */  sh         $v0, 0x2E($sp)
/* 2039C 8001F79C 00071400 */  sll        $v0, $a3, 16
/* 203A0 8001F7A0 00021403 */  sra        $v0, $v0, 16
/* 203A4 8001F7A4 AFA20010 */  sw         $v0, 0x10($sp)
/* 203A8 8001F7A8 AFA00014 */  sw         $zero, 0x14($sp)
/* 203AC 8001F7AC 8BA20028 */  lwl        $v0, 0x28($sp)
/* 203B0 8001F7B0 9BA2002B */  lwr        $v0, 0x2B($sp)
/* 203B4 8001F7B4 8BA3002C */  lwl        $v1, 0x2C($sp)
/* 203B8 8001F7B8 9BA3002F */  lwr        $v1, 0x2F($sp)
/* 203BC 8001F7BC ABA20018 */  swl        $v0, 0x18($sp)
/* 203C0 8001F7C0 BBA2001B */  swr        $v0, 0x1B($sp)
/* 203C4 8001F7C4 ABA3001C */  swl        $v1, 0x1C($sp)
/* 203C8 8001F7C8 BBA3001F */  swr        $v1, 0x1F($sp)
/* 203CC 8001F7CC 8E06003C */  lw         $a2, 0x3C($s0)
/* 203D0 8001F7D0 000A3C00 */  sll        $a3, $t2, 16
/* 203D4 8001F7D4 08007E62 */  j          .L8001F988
/* 203D8 8001F7D8 00073C03 */   sra       $a3, $a3, 16
.L8001F7DC:
/* 203DC 8001F7DC 87A2002E */  lh         $v0, 0x2E($sp)
/* 203E0 8001F7E0 87A6002A */  lh         $a2, 0x2A($sp)
/* 203E4 8001F7E4 2405000B */  addiu      $a1, $zero, 0xB
/* 203E8 8001F7E8 00461023 */  subu       $v0, $v0, $a2
/* 203EC 8001F7EC 00021FC2 */  srl        $v1, $v0, 31
/* 203F0 8001F7F0 00431021 */  addu       $v0, $v0, $v1
/* 203F4 8001F7F4 00021043 */  sra        $v0, $v0, 1
/* 203F8 8001F7F8 00C23021 */  addu       $a2, $a2, $v0
/* 203FC 8001F7FC 00071400 */  sll        $v0, $a3, 16
/* 20400 8001F800 00021403 */  sra        $v0, $v0, 16
/* 20404 8001F804 A7A6002A */  sh         $a2, 0x2A($sp)
/* 20408 8001F808 AFA20010 */  sw         $v0, 0x10($sp)
/* 2040C 8001F80C AFA00014 */  sw         $zero, 0x14($sp)
/* 20410 8001F810 8BA20028 */  lwl        $v0, 0x28($sp)
/* 20414 8001F814 9BA2002B */  lwr        $v0, 0x2B($sp)
/* 20418 8001F818 8BA3002C */  lwl        $v1, 0x2C($sp)
/* 2041C 8001F81C 9BA3002F */  lwr        $v1, 0x2F($sp)
/* 20420 8001F820 ABA20018 */  swl        $v0, 0x18($sp)
/* 20424 8001F824 BBA2001B */  swr        $v0, 0x1B($sp)
/* 20428 8001F828 ABA3001C */  swl        $v1, 0x1C($sp)
/* 2042C 8001F82C BBA3001F */  swr        $v1, 0x1F($sp)
/* 20430 8001F830 8E06003C */  lw         $a2, 0x3C($s0)
/* 20434 8001F834 000A3C00 */  sll        $a3, $t2, 16
/* 20438 8001F838 0C0058E1 */  jal        func_80016384
/* 2043C 8001F83C 00073C03 */   sra       $a3, $a3, 16
/* 20440 8001F840 8E02000C */  lw         $v0, 0xC($s0)
/* 20444 8001F844 10400056 */  beqz       $v0, .L8001F9A0
/* 20448 8001F848 24020001 */   addiu     $v0, $zero, 0x1
/* 2044C 8001F84C 0C0042AA */  jal        func_80010AA8
/* 20450 8001F850 00000000 */   nop
/* 20454 8001F854 8E03000C */  lw         $v1, 0xC($s0)
/* 20458 8001F858 14430051 */  bne        $v0, $v1, .L8001F9A0
/* 2045C 8001F85C 24020001 */   addiu     $v0, $zero, 0x1
/* 20460 8001F860 3C02800D */  lui        $v0, %hi(D_800D0780)
/* 20464 8001F864 90420780 */  lbu        $v0, %lo(D_800D0780)($v0)
/* 20468 8001F868 3C03800D */  lui        $v1, %hi(D_800D0781)
/* 2046C 8001F86C 90630781 */  lbu        $v1, %lo(D_800D0781)($v1)
/* 20470 8001F870 3C04800D */  lui        $a0, %hi(D_800D0782)
/* 20474 8001F874 90840782 */  lbu        $a0, %lo(D_800D0782)($a0)
/* 20478 8001F878 3C05800D */  lui        $a1, %hi(D_800D0783)
/* 2047C 8001F87C 90A50783 */  lbu        $a1, %lo(D_800D0783)($a1)
/* 20480 8001F880 A7A20028 */  sh         $v0, 0x28($sp)
/* 20484 8001F884 A7A3002A */  sh         $v1, 0x2A($sp)
/* 20488 8001F888 A7A4002C */  sh         $a0, 0x2C($sp)
/* 2048C 8001F88C A7A5002E */  sh         $a1, 0x2E($sp)
/* 20490 8001F890 8BA20028 */  lwl        $v0, 0x28($sp)
/* 20494 8001F894 9BA2002B */  lwr        $v0, 0x2B($sp)
/* 20498 8001F898 8BA3002C */  lwl        $v1, 0x2C($sp)
/* 2049C 8001F89C 9BA3002F */  lwr        $v1, 0x2F($sp)
/* 204A0 8001F8A0 ABA20030 */  swl        $v0, 0x30($sp)
/* 204A4 8001F8A4 BBA20033 */  swr        $v0, 0x33($sp)
/* 204A8 8001F8A8 ABA30034 */  swl        $v1, 0x34($sp)
/* 204AC 8001F8AC BBA30037 */  swr        $v1, 0x37($sp)
/* 204B0 8001F8B0 87A40020 */  lh         $a0, 0x20($sp)
/* 204B4 8001F8B4 3C02800D */  lui        $v0, %hi(D_800D0784)
/* 204B8 8001F8B8 90420784 */  lbu        $v0, %lo(D_800D0784)($v0)
/* 204BC 8001F8BC 97A60030 */  lhu        $a2, 0x30($sp)
/* 204C0 8001F8C0 87A70022 */  lh         $a3, 0x22($sp)
/* 204C4 8001F8C4 3C03800D */  lui        $v1, %hi(D_800D0785)
/* 204C8 8001F8C8 90630785 */  lbu        $v1, %lo(D_800D0785)($v1)
/* 204CC 8001F8CC 87A50026 */  lh         $a1, 0x26($sp)
/* 204D0 8001F8D0 00822021 */  addu       $a0, $a0, $v0
/* 204D4 8001F8D4 97A20034 */  lhu        $v0, 0x34($sp)
/* 204D8 8001F8D8 00E31821 */  addu       $v1, $a3, $v1
/* 204DC 8001F8DC A7A40030 */  sh         $a0, 0x30($sp)
/* 204E0 8001F8E0 00441021 */  addu       $v0, $v0, $a0
/* 204E4 8001F8E4 00461023 */  subu       $v0, $v0, $a2
/* 204E8 8001F8E8 A7A20034 */  sh         $v0, 0x34($sp)
/* 204EC 8001F8EC 97A20036 */  lhu        $v0, 0x36($sp)
/* 204F0 8001F8F0 97A40032 */  lhu        $a0, 0x32($sp)
/* 204F4 8001F8F4 00A72823 */  subu       $a1, $a1, $a3
/* 204F8 8001F8F8 00651823 */  subu       $v1, $v1, $a1
/* 204FC 8001F8FC A7A30032 */  sh         $v1, 0x32($sp)
/* 20500 8001F900 00431021 */  addu       $v0, $v0, $v1
/* 20504 8001F904 00441023 */  subu       $v0, $v0, $a0
/* 20508 8001F908 A7A20036 */  sh         $v0, 0x36($sp)
/* 2050C 8001F90C 8E02000C */  lw         $v0, 0xC($s0)
/* 20510 8001F910 1040000E */  beqz       $v0, .L8001F94C
/* 20514 8001F914 2406FFFF */   addiu     $a2, $zero, -0x1
/* 20518 8001F918 0C0042AA */  jal        func_80010AA8
/* 2051C 8001F91C 00000000 */   nop
/* 20520 8001F920 8E03000C */  lw         $v1, 0xC($s0)
/* 20524 8001F924 14430009 */  bne        $v0, $v1, .L8001F94C
/* 20528 8001F928 2406FFFF */   addiu     $a2, $zero, -0x1
/* 2052C 8001F92C 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 20530 8001F930 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 20534 8001F934 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 20538 8001F938 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 2053C 8001F93C 00021E00 */  sll        $v1, $v0, 24
/* 20540 8001F940 00021200 */  sll        $v0, $v0, 8
/* 20544 8001F944 00441025 */  or         $v0, $v0, $a0
/* 20548 8001F948 00623025 */  or         $a2, $v1, $v0
.L8001F94C:
/* 2054C 8001F94C 3C05800D */  lui        $a1, %hi(D_800D077C)
/* 20550 8001F950 8CA5077C */  lw         $a1, %lo(D_800D077C)($a1)
/* 20554 8001F954 87A70030 */  lh         $a3, 0x30($sp)
/* 20558 8001F958 87A20032 */  lh         $v0, 0x32($sp)
/* 2055C 8001F95C 02202021 */  addu       $a0, $s1, $zero
/* 20560 8001F960 AFA00014 */  sw         $zero, 0x14($sp)
/* 20564 8001F964 AFA20010 */  sw         $v0, 0x10($sp)
/* 20568 8001F968 8BA20028 */  lwl        $v0, 0x28($sp)
/* 2056C 8001F96C 9BA2002B */  lwr        $v0, 0x2B($sp)
/* 20570 8001F970 8BA3002C */  lwl        $v1, 0x2C($sp)
/* 20574 8001F974 9BA3002F */  lwr        $v1, 0x2F($sp)
/* 20578 8001F978 ABA20018 */  swl        $v0, 0x18($sp)
/* 2057C 8001F97C BBA2001B */  swr        $v0, 0x1B($sp)
/* 20580 8001F980 ABA3001C */  swl        $v1, 0x1C($sp)
/* 20584 8001F984 BBA3001F */  swr        $v1, 0x1F($sp)
.L8001F988:
/* 20588 8001F988 0C0058E1 */  jal        func_80016384
/* 2058C 8001F98C 00000000 */   nop
/* 20590 8001F990 08007E68 */  j          .L8001F9A0
/* 20594 8001F994 24020001 */   addiu     $v0, $zero, 0x1
.L8001F998:
/* 20598 8001F998 0C004AE9 */  jal        func_80012BA4
/* 2059C 8001F99C 02203021 */   addu      $a2, $s1, $zero
.L8001F9A0:
/* 205A0 8001F9A0 8FBF0060 */  lw         $ra, 0x60($sp)
/* 205A4 8001F9A4 8FB1005C */  lw         $s1, 0x5C($sp)
/* 205A8 8001F9A8 8FB00058 */  lw         $s0, 0x58($sp)
/* 205AC 8001F9AC 03E00008 */  jr         $ra
/* 205B0 8001F9B0 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8001F9B4
/* 205B4 8001F9B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 205B8 8001F9B8 00803821 */  addu       $a3, $a0, $zero
/* 205BC 8001F9BC 3C03800B */  lui        $v1, %hi(D_800B645C)
/* 205C0 8001F9C0 2463645C */  addiu      $v1, $v1, %lo(D_800B645C)
/* 205C4 8001F9C4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 205C8 8001F9C8 14A00004 */  bnez       $a1, .L8001F9DC
/* 205CC 8001F9CC AC650000 */   sw        $a1, 0x0($v1)
/* 205D0 8001F9D0 3C02800D */  lui        $v0, %hi(D_800CF39C)
/* 205D4 8001F9D4 2442F39C */  addiu      $v0, $v0, %lo(D_800CF39C)
/* 205D8 8001F9D8 AC620000 */  sw         $v0, 0x0($v1)
.L8001F9DC:
/* 205DC 8001F9DC 3C05800B */  lui        $a1, %hi(D_800B6484)
/* 205E0 8001F9E0 24A56484 */  addiu      $a1, $a1, %lo(D_800B6484)
/* 205E4 8001F9E4 84A40000 */  lh         $a0, 0x0($a1)
/* 205E8 8001F9E8 3C06800B */  lui        $a2, %hi(D_800B6480)
/* 205EC 8001F9EC 84C66480 */  lh         $a2, %lo(D_800B6480)($a2)
/* 205F0 8001F9F0 3C01800B */  lui        $at, %hi(D_800B64EC)
/* 205F4 8001F9F4 AC2064EC */  sw         $zero, %lo(D_800B64EC)($at)
/* 205F8 8001F9F8 3C01800B */  lui        $at, %hi(D_800B64FC)
/* 205FC 8001F9FC AC2064FC */  sw         $zero, %lo(D_800B64FC)($at)
/* 20600 8001FA00 3C01800B */  lui        $at, %hi(D_800B6530)
/* 20604 8001FA04 AC206530 */  sw         $zero, %lo(D_800B6530)($at)
/* 20608 8001FA08 3C01800B */  lui        $at, %hi(D_800B6540)
/* 2060C 8001FA0C AC206540 */  sw         $zero, %lo(D_800B6540)($at)
/* 20610 8001FA10 3C01800B */  lui        $at, %hi(D_800B6574)
/* 20614 8001FA14 AC206574 */  sw         $zero, %lo(D_800B6574)($at)
/* 20618 8001FA18 3C01800B */  lui        $at, %hi(D_800B6584)
/* 2061C 8001FA1C AC206584 */  sw         $zero, %lo(D_800B6584)($at)
/* 20620 8001FA20 00861023 */  subu       $v0, $a0, $a2
/* 20624 8001FA24 00021FC2 */  srl        $v1, $v0, 31
/* 20628 8001FA28 00431021 */  addu       $v0, $v0, $v1
/* 2062C 8001FA2C 00021043 */  sra        $v0, $v0, 1
/* 20630 8001FA30 24030140 */  addiu      $v1, $zero, 0x140
/* 20634 8001FA34 00621823 */  subu       $v1, $v1, $v0
/* 20638 8001FA38 00832021 */  addu       $a0, $a0, $v1
/* 2063C 8001FA3C 00862023 */  subu       $a0, $a0, $a2
/* 20640 8001FA40 A4A40000 */  sh         $a0, 0x0($a1)
/* 20644 8001FA44 24040001 */  addiu      $a0, $zero, 0x1
/* 20648 8001FA48 3C01800B */  lui        $at, %hi(D_800B6480)
/* 2064C 8001FA4C A4236480 */  sh         $v1, %lo(D_800B6480)($at)
/* 20650 8001FA50 0C004540 */  jal        func_80011500
/* 20654 8001FA54 ACE00018 */   sw        $zero, 0x18($a3)
/* 20658 8001FA58 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2065C 8001FA5C 03E00008 */  jr         $ra
/* 20660 8001FA60 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001FA64
/* 20664 8001FA64 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20668 8001FA68 AFB00020 */  sw         $s0, 0x20($sp)
/* 2066C 8001FA6C 00808021 */  addu       $s0, $a0, $zero
/* 20670 8001FA70 AFB10024 */  sw         $s1, 0x24($sp)
/* 20674 8001FA74 AFBF0028 */  sw         $ra, 0x28($sp)
/* 20678 8001FA78 0C00111C */  jal        func_80004470
/* 2067C 8001FA7C 00A08821 */   addu      $s1, $a1, $zero
/* 20680 8001FA80 16200009 */  bnez       $s1, .L8001FAA8
/* 20684 8001FA84 3C04E0E0 */   lui       $a0, (0xE0E0E0FF >> 16)
/* 20688 8001FA88 24020001 */  addiu      $v0, $zero, 0x1
/* 2068C 8001FA8C 3C01800B */  lui        $at, %hi(D_800ABAA4)
/* 20690 8001FA90 AC22BAA4 */  sw         $v0, %lo(D_800ABAA4)($at)
/* 20694 8001FA94 02002021 */  addu       $a0, $s0, $zero
/* 20698 8001FA98 0C004204 */  jal        func_80010810
/* 2069C 8001FA9C 24050001 */   addiu     $a1, $zero, 0x1
/* 206A0 8001FAA0 08007FAA */  j          .L8001FEA8
/* 206A4 8001FAA4 00001021 */   addu      $v0, $zero, $zero
.L8001FAA8:
/* 206A8 8001FAA8 3C05800B */  lui        $a1, %hi(D_800B6484)
/* 206AC 8001FAAC 24A56484 */  addiu      $a1, $a1, %lo(D_800B6484)
/* 206B0 8001FAB0 94A30000 */  lhu        $v1, 0x0($a1)
/* 206B4 8001FAB4 3C06800B */  lui        $a2, %hi(D_800B6480)
/* 206B8 8001FAB8 94C66480 */  lhu        $a2, %lo(D_800B6480)($a2)
/* 206BC 8001FABC 3484E0FF */  ori        $a0, $a0, (0xE0E0E0FF & 0xFFFF)
/* 206C0 8001FAC0 24020087 */  addiu      $v0, $zero, 0x87
/* 206C4 8001FAC4 3C01800B */  lui        $at, %hi(D_800B6480)
/* 206C8 8001FAC8 A4226480 */  sh         $v0, %lo(D_800B6480)($at)
/* 206CC 8001FACC 3C02800D */  lui        $v0, %hi(D_800CEFF4)
/* 206D0 8001FAD0 2442EFF4 */  addiu      $v0, $v0, %lo(D_800CEFF4)
/* 206D4 8001FAD4 3C01800B */  lui        $at, %hi(D_800B6418)
/* 206D8 8001FAD8 AC226418 */  sw         $v0, %lo(D_800B6418)($at)
/* 206DC 8001FADC 3C02800D */  lui        $v0, %hi(D_800CF36C)
/* 206E0 8001FAE0 2442F36C */  addiu      $v0, $v0, %lo(D_800CF36C)
/* 206E4 8001FAE4 3C01800B */  lui        $at, %hi(D_800B6528)
/* 206E8 8001FAE8 AC226528 */  sw         $v0, %lo(D_800B6528)($at)
/* 206EC 8001FAEC 3C02800D */  lui        $v0, %hi(D_800CF384)
/* 206F0 8001FAF0 2442F384 */  addiu      $v0, $v0, %lo(D_800CF384)
/* 206F4 8001FAF4 3C01800B */  lui        $at, %hi(D_800B656C)
/* 206F8 8001FAF8 AC22656C */  sw         $v0, %lo(D_800B656C)($at)
/* 206FC 8001FAFC 3C02800D */  lui        $v0, %hi(D_800D0680)
/* 20700 8001FB00 24420680 */  addiu      $v0, $v0, %lo(D_800D0680)
/* 20704 8001FB04 3C01800B */  lui        $at, %hi(D_800B6580)
/* 20708 8001FB08 AC226580 */  sw         $v0, %lo(D_800B6580)($at)
/* 2070C 8001FB0C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 20710 8001FB10 3C01800B */  lui        $at, %hi(D_800B64BC)
/* 20714 8001FB14 AC2064BC */  sw         $zero, %lo(D_800B64BC)($at)
/* 20718 8001FB18 3C01800B */  lui        $at, %hi(D_800B64EC)
/* 2071C 8001FB1C AC2064EC */  sw         $zero, %lo(D_800B64EC)($at)
/* 20720 8001FB20 3C01800B */  lui        $at, %hi(D_800B64FC)
/* 20724 8001FB24 AC2064FC */  sw         $zero, %lo(D_800B64FC)($at)
/* 20728 8001FB28 3C01800B */  lui        $at, %hi(D_800B6540)
/* 2072C 8001FB2C AC226540 */  sw         $v0, %lo(D_800B6540)($at)
/* 20730 8001FB30 3C01800B */  lui        $at, %hi(D_800B6530)
/* 20734 8001FB34 AC246530 */  sw         $a0, %lo(D_800B6530)($at)
/* 20738 8001FB38 3C01800B */  lui        $at, %hi(D_800B6584)
/* 2073C 8001FB3C AC226584 */  sw         $v0, %lo(D_800B6584)($at)
/* 20740 8001FB40 3C01800B */  lui        $at, %hi(D_800B6574)
/* 20744 8001FB44 AC246574 */  sw         $a0, %lo(D_800B6574)($at)
/* 20748 8001FB48 24630087 */  addiu      $v1, $v1, 0x87
/* 2074C 8001FB4C 00661823 */  subu       $v1, $v1, $a2
/* 20750 8001FB50 A4A30000 */  sh         $v1, 0x0($a1)
/* 20754 8001FB54 26230006 */  addiu      $v1, $s1, 0x6
/* 20758 8001FB58 2C620012 */  sltiu      $v0, $v1, 0x12
/* 2075C 8001FB5C 104000CE */  beqz       $v0, L8001FE98
/* 20760 8001FB60 00031080 */   sll       $v0, $v1, 2
/* 20764 8001FB64 3C01800D */  lui        $at, %hi(jtbl_800D0CB0_main)
/* 20768 8001FB68 00220821 */  addu       $at, $at, $v0
/* 2076C 8001FB6C 8C220CB0 */  lw         $v0, %lo(jtbl_800D0CB0_main)($at)
/* 20770 8001FB70 00400008 */  jr         $v0
/* 20774 8001FB74 00000000 */   nop
glabel L8001FB78
/* 20778 8001FB78 02002021 */  addu       $a0, $s0, $zero
/* 2077C 8001FB7C 24050007 */  addiu      $a1, $zero, 0x7
/* 20780 8001FB80 3C02800D */  lui        $v0, %hi(D_800CF07C)
/* 20784 8001FB84 2442F07C */  addiu      $v0, $v0, %lo(D_800CF07C)
/* 20788 8001FB88 3C01800B */  lui        $at, %hi(D_800B645C)
/* 2078C 8001FB8C AC22645C */  sw         $v0, %lo(D_800B645C)($at)
/* 20790 8001FB90 8C820000 */  lw         $v0, 0x0($a0)
/* 20794 8001FB94 3C06800B */  lui        $a2, %hi(D_800B6504)
/* 20798 8001FB98 24C66504 */  addiu      $a2, $a2, %lo(D_800B6504)
/* 2079C 8001FB9C 0040F809 */  jalr       $v0
/* 207A0 8001FBA0 00003821 */   addu      $a3, $zero, $zero
/* 207A4 8001FBA4 24040019 */  addiu      $a0, $zero, 0x19
/* 207A8 8001FBA8 08007FA0 */  j          .L8001FE80
/* 207AC 8001FBAC 2405FFFF */   addiu     $a1, $zero, -0x1
glabel L8001FBB0
/* 207B0 8001FBB0 02002021 */  addu       $a0, $s0, $zero
/* 207B4 8001FBB4 24050007 */  addiu      $a1, $zero, 0x7
/* 207B8 8001FBB8 3C02800D */  lui        $v0, %hi(D_800CF0EC)
/* 207BC 8001FBBC 2442F0EC */  addiu      $v0, $v0, %lo(D_800CF0EC)
/* 207C0 8001FBC0 3C06800B */  lui        $a2, %hi(D_800B6528)
/* 207C4 8001FBC4 24C66528 */  addiu      $a2, $a2, %lo(D_800B6528)
/* 207C8 8001FBC8 3C01800B */  lui        $at, %hi(D_800B645C)
/* 207CC 8001FBCC AC22645C */  sw         $v0, %lo(D_800B645C)($at)
/* 207D0 8001FBD0 3C02800D */  lui        $v0, %hi(D_800CF378)
/* 207D4 8001FBD4 2442F378 */  addiu      $v0, $v0, %lo(D_800CF378)
/* 207D8 8001FBD8 ACC20000 */  sw         $v0, 0x0($a2)
/* 207DC 8001FBDC 3C02800D */  lui        $v0, %hi(D_800D0678)
/* 207E0 8001FBE0 24420678 */  addiu      $v0, $v0, %lo(D_800D0678)
/* 207E4 8001FBE4 3C01800B */  lui        $at, %hi(D_800B6580)
/* 207E8 8001FBE8 AC226580 */  sw         $v0, %lo(D_800B6580)($at)
/* 207EC 8001FBEC 3C02800D */  lui        $v0, %hi(D_800CE230)
/* 207F0 8001FBF0 2442E230 */  addiu      $v0, $v0, %lo(D_800CE230)
/* 207F4 8001FBF4 3C01800B */  lui        $at, %hi(D_800B656C)
/* 207F8 8001FBF8 AC22656C */  sw         $v0, %lo(D_800B656C)($at)
/* 207FC 8001FBFC 8C820000 */  lw         $v0, 0x0($a0)
/* 20800 8001FC00 24C6FFDC */  addiu      $a2, $a2, -0x24
/* 20804 8001FC04 0040F809 */  jalr       $v0
/* 20808 8001FC08 00003821 */   addu      $a3, $zero, $zero
/* 2080C 8001FC0C 24040019 */  addiu      $a0, $zero, 0x19
/* 20810 8001FC10 08007FA0 */  j          .L8001FE80
/* 20814 8001FC14 2405FFFF */   addiu     $a1, $zero, -0x1
glabel L8001FC18
/* 20818 8001FC18 02002021 */  addu       $a0, $s0, $zero
/* 2081C 8001FC1C 24050007 */  addiu      $a1, $zero, 0x7
/* 20820 8001FC20 3C02800D */  lui        $v0, %hi(D_800CF004)
/* 20824 8001FC24 2442F004 */  addiu      $v0, $v0, %lo(D_800CF004)
/* 20828 8001FC28 3C01800B */  lui        $at, %hi(D_800B6418)
/* 2082C 8001FC2C AC226418 */  sw         $v0, %lo(D_800B6418)($at)
/* 20830 8001FC30 24020001 */  addiu      $v0, $zero, 0x1
/* 20834 8001FC34 3C01800B */  lui        $at, %hi(D_800B64BC)
/* 20838 8001FC38 AC2264BC */  sw         $v0, %lo(D_800B64BC)($at)
/* 2083C 8001FC3C 3C02800D */  lui        $v0, %hi(D_800CF150)
/* 20840 8001FC40 2442F150 */  addiu      $v0, $v0, %lo(D_800CF150)
/* 20844 8001FC44 3C01800B */  lui        $at, %hi(D_800B645C)
/* 20848 8001FC48 AC22645C */  sw         $v0, %lo(D_800B645C)($at)
/* 2084C 8001FC4C 8C820000 */  lw         $v0, 0x0($a0)
/* 20850 8001FC50 3C06800B */  lui        $a2, %hi(D_800B6504)
/* 20854 8001FC54 24C66504 */  addiu      $a2, $a2, %lo(D_800B6504)
/* 20858 8001FC58 0040F809 */  jalr       $v0
/* 2085C 8001FC5C 00003821 */   addu      $a3, $zero, $zero
/* 20860 8001FC60 24040019 */  addiu      $a0, $zero, 0x19
/* 20864 8001FC64 3C01800B */  lui        $at, %hi(D_800B6574)
/* 20868 8001FC68 AC206574 */  sw         $zero, %lo(D_800B6574)($at)
/* 2086C 8001FC6C 3C01800B */  lui        $at, %hi(D_800B6584)
/* 20870 8001FC70 AC206584 */  sw         $zero, %lo(D_800B6584)($at)
/* 20874 8001FC74 08007FA0 */  j          .L8001FE80
/* 20878 8001FC78 2405FFFF */   addiu     $a1, $zero, -0x1
glabel L8001FC7C
/* 2087C 8001FC7C 02002021 */  addu       $a0, $s0, $zero
/* 20880 8001FC80 24050007 */  addiu      $a1, $zero, 0x7
/* 20884 8001FC84 3C02800D */  lui        $v0, %hi(D_800CF014)
/* 20888 8001FC88 2442F014 */  addiu      $v0, $v0, %lo(D_800CF014)
/* 2088C 8001FC8C 3C01800B */  lui        $at, %hi(D_800B645C)
/* 20890 8001FC90 AC22645C */  sw         $v0, %lo(D_800B645C)($at)
/* 20894 8001FC94 8C820000 */  lw         $v0, 0x0($a0)
/* 20898 8001FC98 3C06800B */  lui        $a2, %hi(D_800B6504)
/* 2089C 8001FC9C 24C66504 */  addiu      $a2, $a2, %lo(D_800B6504)
/* 208A0 8001FCA0 0040F809 */  jalr       $v0
/* 208A4 8001FCA4 00003821 */   addu      $a3, $zero, $zero
/* 208A8 8001FCA8 24040019 */  addiu      $a0, $zero, 0x19
/* 208AC 8001FCAC 08007FA0 */  j          .L8001FE80
/* 208B0 8001FCB0 2405FFFF */   addiu     $a1, $zero, -0x1
glabel L8001FCB4
/* 208B4 8001FCB4 3C03E0E0 */  lui        $v1, (0xE0E0E0FF >> 16)
/* 208B8 8001FCB8 3463E0FF */  ori        $v1, $v1, (0xE0E0E0FF & 0xFFFF)
/* 208BC 8001FCBC 02002021 */  addu       $a0, $s0, $zero
/* 208C0 8001FCC0 24050007 */  addiu      $a1, $zero, 0x7
/* 208C4 8001FCC4 3C02800D */  lui        $v0, %hi(D_800CF1A4)
/* 208C8 8001FCC8 2442F1A4 */  addiu      $v0, $v0, %lo(D_800CF1A4)
/* 208CC 8001FCCC 3C06800B */  lui        $a2, %hi(D_800B64E4)
/* 208D0 8001FCD0 24C664E4 */  addiu      $a2, $a2, %lo(D_800B64E4)
/* 208D4 8001FCD4 3C01800B */  lui        $at, %hi(D_800B645C)
/* 208D8 8001FCD8 AC22645C */  sw         $v0, %lo(D_800B645C)($at)
/* 208DC 8001FCDC 3C02800D */  lui        $v0, %hi(D_800CF34C)
/* 208E0 8001FCE0 2442F34C */  addiu      $v0, $v0, %lo(D_800CF34C)
/* 208E4 8001FCE4 ACC20000 */  sw         $v0, 0x0($a2)
/* 208E8 8001FCE8 2402FFFF */  addiu      $v0, $zero, -0x1
/* 208EC 8001FCEC 3C01800B */  lui        $at, %hi(D_800B64FC)
/* 208F0 8001FCF0 AC2264FC */  sw         $v0, %lo(D_800B64FC)($at)
/* 208F4 8001FCF4 3C01800B */  lui        $at, %hi(D_800B64EC)
/* 208F8 8001FCF8 AC2364EC */  sw         $v1, %lo(D_800B64EC)($at)
/* 208FC 8001FCFC 8C820000 */  lw         $v0, 0x0($a0)
/* 20900 8001FD00 24C6FFDC */  addiu      $a2, $a2, -0x24
/* 20904 8001FD04 0040F809 */  jalr       $v0
/* 20908 8001FD08 00003821 */   addu      $a3, $zero, $zero
/* 2090C 8001FD0C 24040019 */  addiu      $a0, $zero, 0x19
/* 20910 8001FD10 08007FA0 */  j          .L8001FE80
/* 20914 8001FD14 2405FFFF */   addiu     $a1, $zero, -0x1
glabel L8001FD18
/* 20918 8001FD18 3C01800B */  lui        $at, %hi(D_800ABAA4)
/* 2091C 8001FD1C AC20BAA4 */  sw         $zero, %lo(D_800ABAA4)($at)
glabel L8001FD20
/* 20920 8001FD20 3C03E0E0 */  lui        $v1, (0xE0E0E0FF >> 16)
/* 20924 8001FD24 3463E0FF */  ori        $v1, $v1, (0xE0E0E0FF & 0xFFFF)
/* 20928 8001FD28 02002021 */  addu       $a0, $s0, $zero
/* 2092C 8001FD2C 3C02800D */  lui        $v0, %hi(D_800CF1EC)
/* 20930 8001FD30 2442F1EC */  addiu      $v0, $v0, %lo(D_800CF1EC)
/* 20934 8001FD34 3C06800B */  lui        $a2, %hi(D_800B64E4)
/* 20938 8001FD38 24C664E4 */  addiu      $a2, $a2, %lo(D_800B64E4)
/* 2093C 8001FD3C 3C01800B */  lui        $at, %hi(D_800B645C)
/* 20940 8001FD40 AC22645C */  sw         $v0, %lo(D_800B645C)($at)
/* 20944 8001FD44 3C02800D */  lui        $v0, %hi(D_800CF35C)
/* 20948 8001FD48 2442F35C */  addiu      $v0, $v0, %lo(D_800CF35C)
/* 2094C 8001FD4C ACC20000 */  sw         $v0, 0x0($a2)
/* 20950 8001FD50 2402FFFF */  addiu      $v0, $zero, -0x1
/* 20954 8001FD54 3C01800B */  lui        $at, %hi(D_800B64FC)
/* 20958 8001FD58 AC2264FC */  sw         $v0, %lo(D_800B64FC)($at)
/* 2095C 8001FD5C 3C01800B */  lui        $at, %hi(D_800B64EC)
/* 20960 8001FD60 AC2364EC */  sw         $v1, %lo(D_800B64EC)($at)
/* 20964 8001FD64 08007F6E */  j          .L8001FDB8
/* 20968 8001FD68 24050007 */   addiu     $a1, $zero, 0x7
glabel L8001FD6C
/* 2096C 8001FD6C 02002021 */  addu       $a0, $s0, $zero
/* 20970 8001FD70 24050007 */  addiu      $a1, $zero, 0x7
/* 20974 8001FD74 3C02800D */  lui        $v0, %hi(D_800CF2E4)
/* 20978 8001FD78 2442F2E4 */  addiu      $v0, $v0, %lo(D_800CF2E4)
/* 2097C 8001FD7C 3C06800B */  lui        $a2, %hi(D_800B656C)
/* 20980 8001FD80 24C6656C */  addiu      $a2, $a2, %lo(D_800B656C)
/* 20984 8001FD84 3C01800B */  lui        $at, %hi(D_800B645C)
/* 20988 8001FD88 AC22645C */  sw         $v0, %lo(D_800B645C)($at)
/* 2098C 8001FD8C 3C02800D */  lui        $v0, %hi(D_800CF340)
/* 20990 8001FD90 2442F340 */  addiu      $v0, $v0, %lo(D_800CF340)
/* 20994 8001FD94 ACC20000 */  sw         $v0, 0x0($a2)
/* 20998 8001FD98 3C02800D */  lui        $v0, %hi(D_800D0678)
/* 2099C 8001FD9C 24420678 */  addiu      $v0, $v0, %lo(D_800D0678)
/* 209A0 8001FDA0 3C01800B */  lui        $at, %hi(D_800B6580)
/* 209A4 8001FDA4 AC226580 */  sw         $v0, %lo(D_800B6580)($at)
/* 209A8 8001FDA8 3C01800B */  lui        $at, %hi(D_800B6530)
/* 209AC 8001FDAC AC206530 */  sw         $zero, %lo(D_800B6530)($at)
/* 209B0 8001FDB0 3C01800B */  lui        $at, %hi(D_800B6540)
/* 209B4 8001FDB4 AC206540 */  sw         $zero, %lo(D_800B6540)($at)
.L8001FDB8:
/* 209B8 8001FDB8 8C820000 */  lw         $v0, 0x0($a0)
/* 209BC 8001FDBC 24C6FFDC */  addiu      $a2, $a2, -0x24
/* 209C0 8001FDC0 0040F809 */  jalr       $v0
/* 209C4 8001FDC4 00003821 */   addu      $a3, $zero, $zero
/* 209C8 8001FDC8 24040019 */  addiu      $a0, $zero, 0x19
/* 209CC 8001FDCC 0C00322F */  jal        func_8000C8BC
/* 209D0 8001FDD0 2405FFFF */   addiu     $a1, $zero, -0x1
/* 209D4 8001FDD4 08007FAA */  j          .L8001FEA8
/* 209D8 8001FDD8 02201021 */   addu      $v0, $s1, $zero
glabel L8001FDDC
/* 209DC 8001FDDC 24040019 */  addiu      $a0, $zero, 0x19
/* 209E0 8001FDE0 3C06800B */  lui        $a2, %hi(D_800B6484)
/* 209E4 8001FDE4 84C66484 */  lh         $a2, %lo(D_800B6484)($a2)
/* 209E8 8001FDE8 3C07800B */  lui        $a3, %hi(D_800B6480)
/* 209EC 8001FDEC 84E76480 */  lh         $a3, %lo(D_800B6480)($a3)
/* 209F0 8001FDF0 2405FFFF */  addiu      $a1, $zero, -0x1
/* 209F4 8001FDF4 3C02800D */  lui        $v0, %hi(D_800CF004)
/* 209F8 8001FDF8 2442F004 */  addiu      $v0, $v0, %lo(D_800CF004)
/* 209FC 8001FDFC 3C01800B */  lui        $at, %hi(D_800B6418)
/* 20A00 8001FE00 AC226418 */  sw         $v0, %lo(D_800B6418)($at)
/* 20A04 8001FE04 24020001 */  addiu      $v0, $zero, 0x1
/* 20A08 8001FE08 3C01800B */  lui        $at, %hi(D_800B64BC)
/* 20A0C 8001FE0C AC2264BC */  sw         $v0, %lo(D_800B64BC)($at)
/* 20A10 8001FE10 3C02800D */  lui        $v0, %hi(D_800CF2BC)
/* 20A14 8001FE14 2442F2BC */  addiu      $v0, $v0, %lo(D_800CF2BC)
/* 20A18 8001FE18 3C01800B */  lui        $at, %hi(D_800B645C)
/* 20A1C 8001FE1C AC22645C */  sw         $v0, %lo(D_800B645C)($at)
/* 20A20 8001FE20 3C01800B */  lui        $at, %hi(D_800B64EC)
/* 20A24 8001FE24 AC2064EC */  sw         $zero, %lo(D_800B64EC)($at)
/* 20A28 8001FE28 3C01800B */  lui        $at, %hi(D_800B64FC)
/* 20A2C 8001FE2C AC2064FC */  sw         $zero, %lo(D_800B64FC)($at)
/* 20A30 8001FE30 3C01800B */  lui        $at, %hi(D_800B6574)
/* 20A34 8001FE34 AC206574 */  sw         $zero, %lo(D_800B6574)($at)
/* 20A38 8001FE38 3C01800B */  lui        $at, %hi(D_800B6584)
/* 20A3C 8001FE3C AC206584 */  sw         $zero, %lo(D_800B6584)($at)
/* 20A40 8001FE40 3C01800B */  lui        $at, %hi(D_800B6530)
/* 20A44 8001FE44 AC206530 */  sw         $zero, %lo(D_800B6530)($at)
/* 20A48 8001FE48 3C01800B */  lui        $at, %hi(D_800B6540)
/* 20A4C 8001FE4C AC206540 */  sw         $zero, %lo(D_800B6540)($at)
/* 20A50 8001FE50 00C71023 */  subu       $v0, $a2, $a3
/* 20A54 8001FE54 00021FC2 */  srl        $v1, $v0, 31
/* 20A58 8001FE58 00431021 */  addu       $v0, $v0, $v1
/* 20A5C 8001FE5C 00021043 */  sra        $v0, $v0, 1
/* 20A60 8001FE60 24030140 */  addiu      $v1, $zero, 0x140
/* 20A64 8001FE64 00621823 */  subu       $v1, $v1, $v0
/* 20A68 8001FE68 00C33021 */  addu       $a2, $a2, $v1
/* 20A6C 8001FE6C 00C73023 */  subu       $a2, $a2, $a3
/* 20A70 8001FE70 3C01800B */  lui        $at, %hi(D_800B6484)
/* 20A74 8001FE74 A4266484 */  sh         $a2, %lo(D_800B6484)($at)
/* 20A78 8001FE78 3C01800B */  lui        $at, %hi(D_800B6480)
/* 20A7C 8001FE7C A4236480 */  sh         $v1, %lo(D_800B6480)($at)
.L8001FE80:
/* 20A80 8001FE80 0C00322F */  jal        func_8000C8BC
/* 20A84 8001FE84 00000000 */   nop
/* 20A88 8001FE88 3C01800B */  lui        $at, %hi(D_800ABAA4)
/* 20A8C 8001FE8C AC20BAA4 */  sw         $zero, %lo(D_800ABAA4)($at)
/* 20A90 8001FE90 08007FAA */  j          .L8001FEA8
/* 20A94 8001FE94 02201021 */   addu      $v0, $s1, $zero
glabel L8001FE98
/* 20A98 8001FE98 02002021 */  addu       $a0, $s0, $zero
/* 20A9C 8001FE9C 0C004204 */  jal        func_80010810
/* 20AA0 8001FEA0 24050001 */   addiu     $a1, $zero, 0x1
/* 20AA4 8001FEA4 02201021 */  addu       $v0, $s1, $zero
.L8001FEA8:
/* 20AA8 8001FEA8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 20AAC 8001FEAC 8FB10024 */  lw         $s1, 0x24($sp)
/* 20AB0 8001FEB0 8FB00020 */  lw         $s0, 0x20($sp)
/* 20AB4 8001FEB4 03E00008 */  jr         $ra
/* 20AB8 8001FEB8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001FEBC
/* 20ABC 8001FEBC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20AC0 8001FEC0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 20AC4 8001FEC4 AFB20018 */  sw         $s2, 0x18($sp)
/* 20AC8 8001FEC8 AFB10014 */  sw         $s1, 0x14($sp)
/* 20ACC 8001FECC 0C024034 */  jal        func_800900D0
/* 20AD0 8001FED0 AFB00010 */   sw        $s0, 0x10($sp)
/* 20AD4 8001FED4 00022180 */  sll        $a0, $v0, 6
/* 20AD8 8001FED8 00033682 */  srl        $a2, $v1, 26
/* 20ADC 8001FEDC 00862025 */  or         $a0, $a0, $a2
/* 20AE0 8001FEE0 00032980 */  sll        $a1, $v1, 6
/* 20AE4 8001FEE4 24060000 */  addiu      $a2, $zero, 0x0
/* 20AE8 8001FEE8 24070BB8 */  addiu      $a3, $zero, 0xBB8
/* 20AEC 8001FEEC 0C000DA0 */  jal        func_80003680
/* 20AF0 8001FEF0 3C120003 */   lui       $s2, (0x30D3F >> 16)
/* 20AF4 8001FEF4 00408021 */  addu       $s0, $v0, $zero
/* 20AF8 8001FEF8 00608821 */  addu       $s1, $v1, $zero
/* 20AFC 8001FEFC 36520D3F */  ori        $s2, $s2, (0x30D3F & 0xFFFF)
.L8001FF00:
/* 20B00 8001FF00 0C024034 */  jal        func_800900D0
/* 20B04 8001FF04 00000000 */   nop
/* 20B08 8001FF08 00022180 */  sll        $a0, $v0, 6
/* 20B0C 8001FF0C 00033682 */  srl        $a2, $v1, 26
/* 20B10 8001FF10 00862025 */  or         $a0, $a0, $a2
/* 20B14 8001FF14 00032980 */  sll        $a1, $v1, 6
/* 20B18 8001FF18 24060000 */  addiu      $a2, $zero, 0x0
/* 20B1C 8001FF1C 0C000DA0 */  jal        func_80003680
/* 20B20 8001FF20 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 20B24 8001FF24 0071202B */  sltu       $a0, $v1, $s1
/* 20B28 8001FF28 00711823 */  subu       $v1, $v1, $s1
/* 20B2C 8001FF2C 00501023 */  subu       $v0, $v0, $s0
/* 20B30 8001FF30 00441023 */  subu       $v0, $v0, $a0
/* 20B34 8001FF34 14400009 */  bnez       $v0, .L8001FF5C
/* 20B38 8001FF38 00000000 */   nop
/* 20B3C 8001FF3C 14400003 */  bnez       $v0, .L8001FF4C
/* 20B40 8001FF40 0243102B */   sltu      $v0, $s2, $v1
/* 20B44 8001FF44 14400005 */  bnez       $v0, .L8001FF5C
/* 20B48 8001FF48 00000000 */   nop
.L8001FF4C:
/* 20B4C 8001FF4C 0C000BF8 */  jal        osYieldThread
/* 20B50 8001FF50 00000000 */   nop
/* 20B54 8001FF54 08007FC0 */  j          .L8001FF00
/* 20B58 8001FF58 00000000 */   nop
.L8001FF5C:
/* 20B5C 8001FF5C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 20B60 8001FF60 8FB20018 */  lw         $s2, 0x18($sp)
/* 20B64 8001FF64 8FB10014 */  lw         $s1, 0x14($sp)
/* 20B68 8001FF68 8FB00010 */  lw         $s0, 0x10($sp)
/* 20B6C 8001FF6C 03E00008 */  jr         $ra
/* 20B70 8001FF70 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8001FF74
/* 20B74 8001FF74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20B78 8001FF78 AFB10014 */  sw         $s1, 0x14($sp)
/* 20B7C 8001FF7C 00808821 */  addu       $s1, $a0, $zero
/* 20B80 8001FF80 AFB00010 */  sw         $s0, 0x10($sp)
/* 20B84 8001FF84 00C08021 */  addu       $s0, $a2, $zero
/* 20B88 8001FF88 2CA20015 */  sltiu      $v0, $a1, 0x15
/* 20B8C 8001FF8C 10400093 */  beqz       $v0, L800201DC
/* 20B90 8001FF90 AFBF0018 */   sw        $ra, 0x18($sp)
/* 20B94 8001FF94 00051080 */  sll        $v0, $a1, 2
/* 20B98 8001FF98 3C01800D */  lui        $at, %hi(jtbl_800D0CF8_main)
/* 20B9C 8001FF9C 00220821 */  addu       $at, $at, $v0
/* 20BA0 8001FFA0 8C220CF8 */  lw         $v0, %lo(jtbl_800D0CF8_main)($at)
/* 20BA4 8001FFA4 00400008 */  jr         $v0
/* 20BA8 8001FFA8 00000000 */   nop
glabel L8001FFAC
/* 20BAC 8001FFAC 02003021 */  addu       $a2, $s0, $zero
/* 20BB0 8001FFB0 3C01800B */  lui        $at, %hi(D_800B65A4)
/* 20BB4 8001FFB4 AC2665A4 */  sw         $a2, %lo(D_800B65A4)($at)
/* 20BB8 8001FFB8 0C0047B8 */  jal        func_80011EE0
/* 20BBC 8001FFBC 02202021 */   addu      $a0, $s1, $zero
/* 20BC0 8001FFC0 0C007FAF */  jal        func_8001FEBC
/* 20BC4 8001FFC4 AE200018 */   sw        $zero, 0x18($s1)
/* 20BC8 8001FFC8 0C001112 */  jal        __osGetActiveQueue
/* 20BCC 8001FFCC 00000000 */   nop
/* 20BD0 8001FFD0 30420001 */  andi       $v0, $v0, 0x1
/* 20BD4 8001FFD4 10400047 */  beqz       $v0, .L800200F4
/* 20BD8 8001FFD8 02202021 */   addu      $a0, $s1, $zero
/* 20BDC 8001FFDC 3C02800B */  lui        $v0, %hi(D_800B65A4)
/* 20BE0 8001FFE0 8C4265A4 */  lw         $v0, %lo(D_800B65A4)($v0)
/* 20BE4 8001FFE4 0040F809 */  jalr       $v0
/* 20BE8 8001FFE8 02202021 */   addu      $a0, $s1, $zero
/* 20BEC 8001FFEC 0800807A */  j          .L800201E8
/* 20BF0 8001FFF0 24020001 */   addiu     $v0, $zero, 0x1
glabel L8001FFF4
/* 20BF4 8001FFF4 8E030000 */  lw         $v1, 0x0($s0)
/* 20BF8 8001FFF8 24020002 */  addiu      $v0, $zero, 0x2
/* 20BFC 8001FFFC 10620011 */  beq        $v1, $v0, .L80020044
/* 20C00 80020000 24020003 */   addiu     $v0, $zero, 0x3
/* 20C04 80020004 14620076 */  bne        $v1, $v0, .L800201E0
/* 20C08 80020008 02202021 */   addu      $a0, $s1, $zero
/* 20C0C 8002000C 8E020004 */  lw         $v0, 0x4($s0)
/* 20C10 80020010 14400075 */  bnez       $v0, .L800201E8
/* 20C14 80020014 24020001 */   addiu     $v0, $zero, 0x1
/* 20C18 80020018 0C007FAF */  jal        func_8001FEBC
/* 20C1C 8002001C 00000000 */   nop
/* 20C20 80020020 0C001112 */  jal        __osGetActiveQueue
/* 20C24 80020024 00000000 */   nop
/* 20C28 80020028 8E030004 */  lw         $v1, 0x4($s0)
/* 20C2C 8002002C 00621007 */  srav       $v0, $v0, $v1
/* 20C30 80020030 30420001 */  andi       $v0, $v0, 0x1
/* 20C34 80020034 1440006C */  bnez       $v0, .L800201E8
/* 20C38 80020038 24020001 */   addiu     $v0, $zero, 0x1
/* 20C3C 8002003C 0800803D */  j          .L800200F4
/* 20C40 80020040 02202021 */   addu      $a0, $s1, $zero
.L80020044:
/* 20C44 80020044 8E020004 */  lw         $v0, 0x4($s0)
/* 20C48 80020048 14400067 */  bnez       $v0, .L800201E8
/* 20C4C 8002004C 24020001 */   addiu     $v0, $zero, 0x1
/* 20C50 80020050 3C01800B */  lui        $at, %hi(D_800ABAA4)
/* 20C54 80020054 0C007FAF */  jal        func_8001FEBC
/* 20C58 80020058 AC20BAA4 */   sw        $zero, %lo(D_800ABAA4)($at)
/* 20C5C 8002005C 3C02800B */  lui        $v0, %hi(D_800B65A4)
/* 20C60 80020060 8C4265A4 */  lw         $v0, %lo(D_800B65A4)($v0)
/* 20C64 80020064 0040F809 */  jalr       $v0
/* 20C68 80020068 02202021 */   addu      $a0, $s1, $zero
/* 20C6C 8002006C 0800807A */  j          .L800201E8
/* 20C70 80020070 24020001 */   addiu     $v0, $zero, 0x1
glabel L80020074
/* 20C74 80020074 24020010 */  addiu      $v0, $zero, 0x10
/* 20C78 80020078 12020005 */  beq        $s0, $v0, .L80020090
/* 20C7C 8002007C 24020012 */   addiu     $v0, $zero, 0x12
/* 20C80 80020080 1202000B */  beq        $s0, $v0, .L800200B0
/* 20C84 80020084 02202021 */   addu      $a0, $s1, $zero
/* 20C88 80020088 08008078 */  j          .L800201E0
/* 20C8C 8002008C 00000000 */   nop
.L80020090:
/* 20C90 80020090 10E00055 */  beqz       $a3, .L800201E8
/* 20C94 80020094 24020001 */   addiu     $v0, $zero, 0x1
/* 20C98 80020098 3C02800B */  lui        $v0, %hi(D_800B65A4)
/* 20C9C 8002009C 8C4265A4 */  lw         $v0, %lo(D_800B65A4)($v0)
/* 20CA0 800200A0 0040F809 */  jalr       $v0
/* 20CA4 800200A4 02202021 */   addu      $a0, $s1, $zero
/* 20CA8 800200A8 0800807A */  j          .L800201E8
/* 20CAC 800200AC 24020001 */   addiu     $v0, $zero, 0x1
.L800200B0:
/* 20CB0 800200B0 10E0004D */  beqz       $a3, .L800201E8
/* 20CB4 800200B4 24020001 */   addiu     $v0, $zero, 0x1
/* 20CB8 800200B8 0C007D25 */  jal        func_8001F494
/* 20CBC 800200BC 02202021 */   addu      $a0, $s1, $zero
/* 20CC0 800200C0 3C02800B */  lui        $v0, %hi(D_800B65A4)
/* 20CC4 800200C4 8C4265A4 */  lw         $v0, %lo(D_800B65A4)($v0)
/* 20CC8 800200C8 0040F809 */  jalr       $v0
/* 20CCC 800200CC 02202021 */   addu      $a0, $s1, $zero
/* 20CD0 800200D0 0800807A */  j          .L800201E8
/* 20CD4 800200D4 24020001 */   addiu     $v0, $zero, 0x1
glabel L800200D8
/* 20CD8 800200D8 0C007FAF */  jal        func_8001FEBC
/* 20CDC 800200DC 00000000 */   nop
/* 20CE0 800200E0 0C001112 */  jal        __osGetActiveQueue
/* 20CE4 800200E4 00000000 */   nop
/* 20CE8 800200E8 30420001 */  andi       $v0, $v0, 0x1
/* 20CEC 800200EC 14400005 */  bnez       $v0, .L80020104
/* 20CF0 800200F0 02202021 */   addu      $a0, $s1, $zero
.L800200F4:
/* 20CF4 800200F4 0C007E99 */  jal        func_8001FA64
/* 20CF8 800200F8 2405FFFC */   addiu     $a1, $zero, -0x4
glabel L800200FC
/* 20CFC 800200FC 0800807A */  j          .L800201E8
/* 20D00 80020100 24020001 */   addiu     $v0, $zero, 0x1
.L80020104:
/* 20D04 80020104 8E230018 */  lw         $v1, 0x18($s1)
/* 20D08 80020108 3C02800B */  lui        $v0, %hi(D_800B6504)
/* 20D0C 8002010C 24426504 */  addiu      $v0, $v0, %lo(D_800B6504)
/* 20D10 80020110 14620007 */  bne        $v1, $v0, .L80020130
/* 20D14 80020114 00000000 */   nop
/* 20D18 80020118 3C02800B */  lui        $v0, %hi(D_800B65A4)
/* 20D1C 8002011C 8C4265A4 */  lw         $v0, %lo(D_800B65A4)($v0)
/* 20D20 80020120 0040F809 */  jalr       $v0
/* 20D24 80020124 02202021 */   addu      $a0, $s1, $zero
/* 20D28 80020128 0800807A */  j          .L800201E8
/* 20D2C 8002012C 24020001 */   addiu     $v0, $zero, 0x1
.L80020130:
/* 20D30 80020130 3C02800B */  lui        $v0, %hi(D_800B6548)
/* 20D34 80020134 24426548 */  addiu      $v0, $v0, %lo(D_800B6548)
/* 20D38 80020138 14620007 */  bne        $v1, $v0, .L80020158
/* 20D3C 8002013C 02202021 */   addu      $a0, $s1, $zero
/* 20D40 80020140 0C004204 */  jal        func_80010810
/* 20D44 80020144 00002821 */   addu      $a1, $zero, $zero
/* 20D48 80020148 3C01800B */  lui        $at, %hi(D_800ABAA4)
/* 20D4C 8002014C AC20BAA4 */  sw         $zero, %lo(D_800ABAA4)($at)
/* 20D50 80020150 0800807A */  j          .L800201E8
/* 20D54 80020154 24020001 */   addiu     $v0, $zero, 0x1
.L80020158:
/* 20D58 80020158 3C02800B */  lui        $v0, %hi(D_800B64C0)
/* 20D5C 8002015C 244264C0 */  addiu      $v0, $v0, %lo(D_800B64C0)
/* 20D60 80020160 14620021 */  bne        $v1, $v0, .L800201E8
/* 20D64 80020164 24020001 */   addiu     $v0, $zero, 0x1
/* 20D68 80020168 3C03800B */  lui        $v1, %hi(D_800B64E4)
/* 20D6C 8002016C 8C6364E4 */  lw         $v1, %lo(D_800B64E4)($v1)
/* 20D70 80020170 3C02800D */  lui        $v0, %hi(D_800CF35C)
/* 20D74 80020174 2442F35C */  addiu      $v0, $v0, %lo(D_800CF35C)
/* 20D78 80020178 1462000D */  bne        $v1, $v0, .L800201B0
/* 20D7C 8002017C 24040012 */   addiu     $a0, $zero, 0x12
/* 20D80 80020180 3C03800B */  lui        $v1, %hi(D_800B65A4)
/* 20D84 80020184 8C6365A4 */  lw         $v1, %lo(D_800B65A4)($v1)
/* 20D88 80020188 3C028002 */  lui        $v0, %hi(func_8001F514)
/* 20D8C 8002018C 2442F514 */  addiu      $v0, $v0, %lo(func_8001F514)
/* 20D90 80020190 3C01800B */  lui        $at, %hi(D_800B65A4)
/* 20D94 80020194 AC2265A4 */  sw         $v0, %lo(D_800B65A4)($at)
/* 20D98 80020198 3C01800B */  lui        $at, %hi(D_800B65A8)
/* 20D9C 8002019C AC2365A8 */  sw         $v1, %lo(D_800B65A8)($at)
/* 20DA0 800201A0 0040F809 */  jalr       $v0
/* 20DA4 800201A4 02202021 */   addu      $a0, $s1, $zero
/* 20DA8 800201A8 0800807A */  j          .L800201E8
/* 20DAC 800201AC 24020001 */   addiu     $v0, $zero, 0x1
.L800201B0:
/* 20DB0 800201B0 00002821 */  addu       $a1, $zero, $zero
/* 20DB4 800201B4 0C0041BA */  jal        func_800106E8
/* 20DB8 800201B8 00003021 */   addu      $a2, $zero, $zero
/* 20DBC 800201BC 0800807A */  j          .L800201E8
/* 20DC0 800201C0 24020001 */   addiu     $v0, $zero, 0x1
glabel L800201C4
/* 20DC4 800201C4 3C02800D */  lui        $v0, %hi(D_800D0680)
/* 20DC8 800201C8 24420680 */  addiu      $v0, $v0, %lo(D_800D0680)
/* 20DCC 800201CC 3C01800B */  lui        $at, %hi(D_800B65A4)
/* 20DD0 800201D0 AC2065A4 */  sw         $zero, %lo(D_800B65A4)($at)
/* 20DD4 800201D4 3C01800B */  lui        $at, %hi(D_800B6580)
/* 20DD8 800201D8 AC226580 */  sw         $v0, %lo(D_800B6580)($at)
glabel L800201DC
/* 20DDC 800201DC 02202021 */  addu       $a0, $s1, $zero
.L800201E0:
/* 20DE0 800201E0 0C0047B8 */  jal        func_80011EE0
/* 20DE4 800201E4 02003021 */   addu      $a2, $s0, $zero
.L800201E8:
/* 20DE8 800201E8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 20DEC 800201EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 20DF0 800201F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 20DF4 800201F4 03E00008 */  jr         $ra
/* 20DF8 800201F8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800201FC
/* 20DFC 800201FC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 20E00 80020200 AFB00050 */  sw         $s0, 0x50($sp)
/* 20E04 80020204 00808021 */  addu       $s0, $a0, $zero
/* 20E08 80020208 AFB10054 */  sw         $s1, 0x54($sp)
/* 20E0C 8002020C 00C08821 */  addu       $s1, $a2, $zero
/* 20E10 80020210 AFB20058 */  sw         $s2, 0x58($sp)
/* 20E14 80020214 00E09021 */  addu       $s2, $a3, $zero
/* 20E18 80020218 24020086 */  addiu      $v0, $zero, 0x86
/* 20E1C 8002021C 14A2001A */  bne        $a1, $v0, .L80020288
/* 20E20 80020220 AFBF005C */   sw        $ra, 0x5C($sp)
/* 20E24 80020224 3C02802A */  lui        $v0, %hi(D_802A1594)
/* 20E28 80020228 8C421594 */  lw         $v0, %lo(D_802A1594)($v0)
/* 20E2C 8002022C 3C07800D */  lui        $a3, %hi(D_800D0D50)
/* 20E30 80020230 24E70D50 */  addiu      $a3, $a3, %lo(D_800D0D50)
/* 20E34 80020234 2403007B */  addiu      $v1, $zero, 0x7B
/* 20E38 80020238 00623023 */  subu       $a2, $v1, $v0
/* 20E3C 8002023C 24020001 */  addiu      $v0, $zero, 0x1
/* 20E40 80020240 14C20003 */  bne        $a2, $v0, .L80020250
/* 20E44 80020244 00000000 */   nop
/* 20E48 80020248 3C07800D */  lui        $a3, %hi(D_800D0D4C)
/* 20E4C 8002024C 24E70D4C */  addiu      $a3, $a3, %lo(D_800D0D4C)
.L80020250:
/* 20E50 80020250 3C05800D */  lui        $a1, %hi(D_800CF4F4)
/* 20E54 80020254 24A5F4F4 */  addiu      $a1, $a1, %lo(D_800CF4F4)
/* 20E58 80020258 0C024940 */  jal        func_80092500
/* 20E5C 8002025C 27A40010 */   addiu     $a0, $sp, 0x10
/* 20E60 80020260 02002021 */  addu       $a0, $s0, $zero
/* 20E64 80020264 24050086 */  addiu      $a1, $zero, 0x86
/* 20E68 80020268 02203021 */  addu       $a2, $s1, $zero
/* 20E6C 8002026C 02403821 */  addu       $a3, $s2, $zero
/* 20E70 80020270 27A20010 */  addiu      $v0, $sp, 0x10
/* 20E74 80020274 0C00487F */  jal        func_800121FC
/* 20E78 80020278 AE020024 */   sw        $v0, 0x24($s0)
/* 20E7C 8002027C 24020001 */  addiu      $v0, $zero, 0x1
/* 20E80 80020280 080080A6 */  j          .L80020298
/* 20E84 80020284 AE000024 */   sw        $zero, 0x24($s0)
.L80020288:
/* 20E88 80020288 02002021 */  addu       $a0, $s0, $zero
/* 20E8C 8002028C 02203021 */  addu       $a2, $s1, $zero
/* 20E90 80020290 0C0049C7 */  jal        func_8001271C
/* 20E94 80020294 02403821 */   addu      $a3, $s2, $zero
.L80020298:
/* 20E98 80020298 8FBF005C */  lw         $ra, 0x5C($sp)
/* 20E9C 8002029C 8FB20058 */  lw         $s2, 0x58($sp)
/* 20EA0 800202A0 8FB10054 */  lw         $s1, 0x54($sp)
/* 20EA4 800202A4 8FB00050 */  lw         $s0, 0x50($sp)
/* 20EA8 800202A8 03E00008 */  jr         $ra
/* 20EAC 800202AC 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800202B0
/* 20EB0 800202B0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 20EB4 800202B4 AFB10064 */  sw         $s1, 0x64($sp)
/* 20EB8 800202B8 00808821 */  addu       $s1, $a0, $zero
/* 20EBC 800202BC AFB20068 */  sw         $s2, 0x68($sp)
/* 20EC0 800202C0 00A09021 */  addu       $s2, $a1, $zero
/* 20EC4 800202C4 AFB3006C */  sw         $s3, 0x6C($sp)
/* 20EC8 800202C8 00C09821 */  addu       $s3, $a2, $zero
/* 20ECC 800202CC AFB50074 */  sw         $s5, 0x74($sp)
/* 20ED0 800202D0 00E0A821 */  addu       $s5, $a3, $zero
/* 20ED4 800202D4 2402008A */  addiu      $v0, $zero, 0x8A
/* 20ED8 800202D8 AFBF0078 */  sw         $ra, 0x78($sp)
/* 20EDC 800202DC AFB40070 */  sw         $s4, 0x70($sp)
/* 20EE0 800202E0 12420034 */  beq        $s2, $v0, .L800203B4
/* 20EE4 800202E4 AFB00060 */   sw        $s0, 0x60($sp)
/* 20EE8 800202E8 2E42008B */  sltiu      $v0, $s2, 0x8B
/* 20EEC 800202EC 10400005 */  beqz       $v0, .L80020304
/* 20EF0 800202F0 24020086 */   addiu     $v0, $zero, 0x86
/* 20EF4 800202F4 1242004C */  beq        $s2, $v0, .L80020428
/* 20EF8 800202F8 02202021 */   addu      $a0, $s1, $zero
/* 20EFC 800202FC 0800816B */  j          .L800205AC
/* 20F00 80020300 00000000 */   nop
.L80020304:
/* 20F04 80020304 2402008D */  addiu      $v0, $zero, 0x8D
/* 20F08 80020308 164200A8 */  bne        $s2, $v0, .L800205AC
/* 20F0C 8002030C 02202021 */   addu      $a0, $s1, $zero
/* 20F10 80020310 32628000 */  andi       $v0, $s3, 0x8000
/* 20F14 80020314 104000A6 */  beqz       $v0, .L800205B0
/* 20F18 80020318 02402821 */   addu      $a1, $s2, $zero
/* 20F1C 8002031C 8E23000C */  lw         $v1, 0xC($s1)
/* 20F20 80020320 8E220040 */  lw         $v0, 0x40($s1)
/* 20F24 80020324 8C630030 */  lw         $v1, 0x30($v1)
/* 20F28 80020328 3C04802A */  lui        $a0, %hi(D_802A1590)
/* 20F2C 8002032C 8C841590 */  lw         $a0, %lo(D_802A1590)($a0)
/* 20F30 80020330 00431021 */  addu       $v0, $v0, $v1
/* 20F34 80020334 3C01802A */  lui        $at, %hi(D_802A1598)
/* 20F38 80020338 AC221598 */  sw         $v0, %lo(D_802A1598)($at)
/* 20F3C 8002033C 00021140 */  sll        $v0, $v0, 5
/* 20F40 80020340 00822021 */  addu       $a0, $a0, $v0
/* 20F44 80020344 10800009 */  beqz       $a0, .L8002036C
/* 20F48 80020348 00000000 */   nop
/* 20F4C 8002034C 8C820014 */  lw         $v0, 0x14($a0)
/* 20F50 80020350 10400006 */  beqz       $v0, .L8002036C
/* 20F54 80020354 00000000 */   nop
/* 20F58 80020358 3C02800B */  lui        $v0, %hi(D_800B667C)
/* 20F5C 8002035C 8C42667C */  lw         $v0, %lo(D_800B667C)($v0)
/* 20F60 80020360 3C06800B */  lui        $a2, %hi(D_800B667C)
/* 20F64 80020364 080080DF */  j          .L8002037C
/* 20F68 80020368 24C6667C */   addiu     $a2, $a2, %lo(D_800B667C)
.L8002036C:
/* 20F6C 8002036C 3C02800B */  lui        $v0, %hi(D_800B66C0)
/* 20F70 80020370 8C4266C0 */  lw         $v0, %lo(D_800B66C0)($v0)
/* 20F74 80020374 3C06800B */  lui        $a2, %hi(D_800B66C0)
/* 20F78 80020378 24C666C0 */  addiu      $a2, $a2, %lo(D_800B66C0)
.L8002037C:
/* 20F7C 8002037C 8CC40000 */  lw         $a0, 0x0($a2)
/* 20F80 80020380 24050007 */  addiu      $a1, $zero, 0x7
/* 20F84 80020384 8C420000 */  lw         $v0, 0x0($v0)
/* 20F88 80020388 24C6FFF4 */  addiu      $a2, $a2, -0xC
/* 20F8C 8002038C 0040F809 */  jalr       $v0
/* 20F90 80020390 00003821 */   addu      $a3, $zero, $zero
/* 20F94 80020394 8E24000C */  lw         $a0, 0xC($s1)
/* 20F98 80020398 24050010 */  addiu      $a1, $zero, 0x10
/* 20F9C 8002039C 8C820000 */  lw         $v0, 0x0($a0)
/* 20FA0 800203A0 02203021 */  addu       $a2, $s1, $zero
/* 20FA4 800203A4 0040F809 */  jalr       $v0
/* 20FA8 800203A8 00003821 */   addu      $a3, $zero, $zero
/* 20FAC 800203AC 0800816F */  j          .L800205BC
/* 20FB0 800203B0 24020001 */   addiu     $v0, $zero, 0x1
.L800203B4:
/* 20FB4 800203B4 8E23000C */  lw         $v1, 0xC($s1)
/* 20FB8 800203B8 8E220040 */  lw         $v0, 0x40($s1)
/* 20FBC 800203BC 8C630030 */  lw         $v1, 0x30($v1)
/* 20FC0 800203C0 3C04802A */  lui        $a0, %hi(D_802A1590)
/* 20FC4 800203C4 8C841590 */  lw         $a0, %lo(D_802A1590)($a0)
/* 20FC8 800203C8 00431021 */  addu       $v0, $v0, $v1
/* 20FCC 800203CC 3C01802A */  lui        $at, %hi(D_802A1598)
/* 20FD0 800203D0 AC221598 */  sw         $v0, %lo(D_802A1598)($at)
/* 20FD4 800203D4 00021140 */  sll        $v0, $v0, 5
/* 20FD8 800203D8 00822021 */  addu       $a0, $a0, $v0
/* 20FDC 800203DC 1080000C */  beqz       $a0, .L80020410
/* 20FE0 800203E0 00000000 */   nop
/* 20FE4 800203E4 8C820014 */  lw         $v0, 0x14($a0)
/* 20FE8 800203E8 10400009 */  beqz       $v0, .L80020410
/* 20FEC 800203EC 3C03E0E0 */   lui       $v1, (0xE0E0E0FF >> 16)
/* 20FF0 800203F0 3463E0FF */  ori        $v1, $v1, (0xE0E0E0FF & 0xFFFF)
/* 20FF4 800203F4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 20FF8 800203F8 3C01800B */  lui        $at, %hi(D_800B66AC)
/* 20FFC 800203FC AC2266AC */  sw         $v0, %lo(D_800B66AC)($at)
/* 21000 80020400 3C01800B */  lui        $at, %hi(D_800B669C)
/* 21004 80020404 AC23669C */  sw         $v1, %lo(D_800B669C)($at)
/* 21008 80020408 0800816B */  j          .L800205AC
/* 2100C 8002040C 02202021 */   addu      $a0, $s1, $zero
.L80020410:
/* 21010 80020410 3C01800B */  lui        $at, %hi(D_800B669C)
/* 21014 80020414 AC20669C */  sw         $zero, %lo(D_800B669C)($at)
/* 21018 80020418 3C01800B */  lui        $at, %hi(D_800B66AC)
/* 2101C 8002041C AC2066AC */  sw         $zero, %lo(D_800B66AC)($at)
/* 21020 80020420 0800816B */  j          .L800205AC
/* 21024 80020424 02202021 */   addu      $a0, $s1, $zero
.L80020428:
/* 21028 80020428 8E25000C */  lw         $a1, 0xC($s1)
/* 2102C 8002042C 8E230040 */  lw         $v1, 0x40($s1)
/* 21030 80020430 8CA20030 */  lw         $v0, 0x30($a1)
/* 21034 80020434 3C04802A */  lui        $a0, %hi(D_802A1590)
/* 21038 80020438 8C841590 */  lw         $a0, %lo(D_802A1590)($a0)
/* 2103C 8002043C 00621821 */  addu       $v1, $v1, $v0
/* 21040 80020440 00031140 */  sll        $v0, $v1, 5
/* 21044 80020444 00828021 */  addu       $s0, $a0, $v0
/* 21048 80020448 8E020014 */  lw         $v0, 0x14($s0)
/* 2104C 8002044C 244400FF */  addiu      $a0, $v0, 0xFF
/* 21050 80020450 04820001 */  bltzl      $a0, .L80020458
/* 21054 80020454 244401FE */   addiu     $a0, $v0, 0x1FE
.L80020458:
/* 21058 80020458 3C02802A */  lui        $v0, %hi(D_802A1598)
/* 2105C 8002045C 8C421598 */  lw         $v0, %lo(D_802A1598)($v0)
/* 21060 80020460 14620011 */  bne        $v1, $v0, .L800204A8
/* 21064 80020464 0004A203 */   sra       $s4, $a0, 8
/* 21068 80020468 10A00015 */  beqz       $a1, .L800204C0
/* 2106C 8002046C 2403FFFF */   addiu     $v1, $zero, -0x1
/* 21070 80020470 0C0042AA */  jal        func_80010AA8
/* 21074 80020474 00000000 */   nop
/* 21078 80020478 8E23000C */  lw         $v1, 0xC($s1)
/* 2107C 8002047C 54430010 */  bnel       $v0, $v1, .L800204C0
/* 21080 80020480 2403FFFF */   addiu     $v1, $zero, -0x1
/* 21084 80020484 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 21088 80020488 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 2108C 8002048C 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 21090 80020490 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 21094 80020494 00021E00 */  sll        $v1, $v0, 24
/* 21098 80020498 00021200 */  sll        $v0, $v0, 8
/* 2109C 8002049C 00441025 */  or         $v0, $v0, $a0
/* 210A0 800204A0 08008130 */  j          .L800204C0
/* 210A4 800204A4 00621825 */   or        $v1, $v1, $v0
.L800204A8:
/* 210A8 800204A8 8202001C */  lb         $v0, 0x1C($s0)
/* 210AC 800204AC 3C0380A0 */  lui        $v1, (0x80A0A0FF >> 16)
/* 210B0 800204B0 10400003 */  beqz       $v0, .L800204C0
/* 210B4 800204B4 3463A0FF */   ori       $v1, $v1, (0x80A0A0FF & 0xFFFF)
/* 210B8 800204B8 3C03FFFF */  lui        $v1, (0xFFFF00FF >> 16)
/* 210BC 800204BC 346300FF */  ori        $v1, $v1, (0xFFFF00FF & 0xFFFF)
.L800204C0:
/* 210C0 800204C0 AE23002C */  sw         $v1, 0x2C($s1)
/* 210C4 800204C4 82020000 */  lb         $v0, 0x0($s0)
/* 210C8 800204C8 10400028 */  beqz       $v0, .L8002056C
/* 210CC 800204CC 00000000 */   nop
/* 210D0 800204D0 8E020014 */  lw         $v0, 0x14($s0)
/* 210D4 800204D4 10400025 */  beqz       $v0, .L8002056C
/* 210D8 800204D8 26030010 */   addiu     $v1, $s0, 0x10
/* 210DC 800204DC 8E020018 */  lw         $v0, 0x18($s0)
/* 210E0 800204E0 AFA30010 */  sw         $v1, 0x10($sp)
/* 210E4 800204E4 8203001C */  lb         $v1, 0x1C($s0)
/* 210E8 800204E8 1060000C */  beqz       $v1, .L8002051C
/* 210EC 800204EC 24460001 */   addiu     $a2, $v0, 0x1
/* 210F0 800204F0 82020010 */  lb         $v0, 0x10($s0)
/* 210F4 800204F4 10400005 */  beqz       $v0, .L8002050C
/* 210F8 800204F8 00000000 */   nop
/* 210FC 800204FC 3C02800D */  lui        $v0, %hi(D_800CF53C)
/* 21100 80020500 2442F53C */  addiu      $v0, $v0, %lo(D_800CF53C)
/* 21104 80020504 0800814A */  j          .L80020528
/* 21108 80020508 AFA20014 */   sw        $v0, 0x14($sp)
.L8002050C:
/* 2110C 8002050C 3C02800D */  lui        $v0, %hi(D_800CF528)
/* 21110 80020510 2442F528 */  addiu      $v0, $v0, %lo(D_800CF528)
/* 21114 80020514 0800814A */  j          .L80020528
/* 21118 80020518 AFA20014 */   sw        $v0, 0x14($sp)
.L8002051C:
/* 2111C 8002051C 3C02800D */  lui        $v0, %hi(D_800D0D4C)
/* 21120 80020520 24420D4C */  addiu      $v0, $v0, %lo(D_800D0D4C)
/* 21124 80020524 AFA20014 */  sw         $v0, 0x14($sp)
.L80020528:
/* 21128 80020528 24020001 */  addiu      $v0, $zero, 0x1
/* 2112C 8002052C 16820005 */  bne        $s4, $v0, .L80020544
/* 21130 80020530 AFB40018 */   sw        $s4, 0x18($sp)
/* 21134 80020534 3C02800D */  lui        $v0, %hi(D_800D0D4C)
/* 21138 80020538 24420D4C */  addiu      $v0, $v0, %lo(D_800D0D4C)
/* 2113C 8002053C 08008154 */  j          .L80020550
/* 21140 80020540 AFA2001C */   sw        $v0, 0x1C($sp)
.L80020544:
/* 21144 80020544 3C02800D */  lui        $v0, %hi(D_800D0D50)
/* 21148 80020548 24420D50 */  addiu      $v0, $v0, %lo(D_800D0D50)
/* 2114C 8002054C AFA2001C */  sw         $v0, 0x1C($sp)
.L80020550:
/* 21150 80020550 27A40020 */  addiu      $a0, $sp, 0x20
/* 21154 80020554 3C05800D */  lui        $a1, %hi(D_800CF504)
/* 21158 80020558 24A5F504 */  addiu      $a1, $a1, %lo(D_800CF504)
/* 2115C 8002055C 0C024940 */  jal        func_80092500
/* 21160 80020560 02003821 */   addu      $a3, $s0, $zero
/* 21164 80020564 08008162 */  j          .L80020588
/* 21168 80020568 02202021 */   addu      $a0, $s1, $zero
.L8002056C:
/* 2116C 8002056C 8E060018 */  lw         $a2, 0x18($s0)
/* 21170 80020570 27A40020 */  addiu      $a0, $sp, 0x20
/* 21174 80020574 3C05800D */  lui        $a1, %hi(D_800CF54C)
/* 21178 80020578 24A5F54C */  addiu      $a1, $a1, %lo(D_800CF54C)
/* 2117C 8002057C 0C024940 */  jal        func_80092500
/* 21180 80020580 24C60001 */   addiu     $a2, $a2, 0x1
/* 21184 80020584 02202021 */  addu       $a0, $s1, $zero
.L80020588:
/* 21188 80020588 02402821 */  addu       $a1, $s2, $zero
/* 2118C 8002058C 02603021 */  addu       $a2, $s3, $zero
/* 21190 80020590 02A03821 */  addu       $a3, $s5, $zero
/* 21194 80020594 27A20020 */  addiu      $v0, $sp, 0x20
/* 21198 80020598 0C00487F */  jal        func_800121FC
/* 2119C 8002059C AE220024 */   sw        $v0, 0x24($s1)
/* 211A0 800205A0 24020001 */  addiu      $v0, $zero, 0x1
/* 211A4 800205A4 0800816F */  j          .L800205BC
/* 211A8 800205A8 AE200024 */   sw        $zero, 0x24($s1)
.L800205AC:
/* 211AC 800205AC 02402821 */  addu       $a1, $s2, $zero
.L800205B0:
/* 211B0 800205B0 02603021 */  addu       $a2, $s3, $zero
/* 211B4 800205B4 0C00487F */  jal        func_800121FC
/* 211B8 800205B8 02A03821 */   addu      $a3, $s5, $zero
.L800205BC:
/* 211BC 800205BC 8FBF0078 */  lw         $ra, 0x78($sp)
/* 211C0 800205C0 8FB50074 */  lw         $s5, 0x74($sp)
/* 211C4 800205C4 8FB40070 */  lw         $s4, 0x70($sp)
/* 211C8 800205C8 8FB3006C */  lw         $s3, 0x6C($sp)
/* 211CC 800205CC 8FB20068 */  lw         $s2, 0x68($sp)
/* 211D0 800205D0 8FB10064 */  lw         $s1, 0x64($sp)
/* 211D4 800205D4 8FB00060 */  lw         $s0, 0x60($sp)
/* 211D8 800205D8 03E00008 */  jr         $ra
/* 211DC 800205DC 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_800205E0
/* 211E0 800205E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 211E4 800205E4 AFB00038 */  sw         $s0, 0x38($sp)
/* 211E8 800205E8 00808021 */  addu       $s0, $a0, $zero
/* 211EC 800205EC AFB1003C */  sw         $s1, 0x3C($sp)
/* 211F0 800205F0 00C08821 */  addu       $s1, $a2, $zero
/* 211F4 800205F4 24020086 */  addiu      $v0, $zero, 0x86
/* 211F8 800205F8 10A20006 */  beq        $a1, $v0, .L80020614
/* 211FC 800205FC AFBF0040 */   sw        $ra, 0x40($sp)
/* 21200 80020600 2402008A */  addiu      $v0, $zero, 0x8A
/* 21204 80020604 10A20067 */  beq        $a1, $v0, .L800207A4
/* 21208 80020608 02002021 */   addu      $a0, $s0, $zero
/* 2120C 8002060C 080081FF */  j          .L800207FC
/* 21210 80020610 00000000 */   nop
.L80020614:
/* 21214 80020614 8E020040 */  lw         $v0, 0x40($s0)
/* 21218 80020618 04410007 */  bgez       $v0, .L80020638
/* 2121C 8002061C 00000000 */   nop
/* 21220 80020620 8E02000C */  lw         $v0, 0xC($s0)
/* 21224 80020624 8C420030 */  lw         $v0, 0x30($v0)
/* 21228 80020628 1C400009 */  bgtz       $v0, .L80020650
/* 2122C 8002062C 24020001 */   addiu     $v0, $zero, 0x1
/* 21230 80020630 08008201 */  j          .L80020804
/* 21234 80020634 00000000 */   nop
.L80020638:
/* 21238 80020638 8E02000C */  lw         $v0, 0xC($s0)
/* 2123C 8002063C 8C420030 */  lw         $v0, 0x30($v0)
/* 21240 80020640 24420003 */  addiu      $v0, $v0, 0x3
/* 21244 80020644 28420010 */  slti       $v0, $v0, 0x10
/* 21248 80020648 1040006E */  beqz       $v0, .L80020804
/* 2124C 8002064C 24020001 */   addiu     $v0, $zero, 0x1
.L80020650:
/* 21250 80020650 8E02000C */  lw         $v0, 0xC($s0)
/* 21254 80020654 1040006B */  beqz       $v0, .L80020804
/* 21258 80020658 24020001 */   addiu     $v0, $zero, 0x1
/* 2125C 8002065C 0C0042AA */  jal        func_80010AA8
/* 21260 80020660 00000000 */   nop
/* 21264 80020664 8E03000C */  lw         $v1, 0xC($s0)
/* 21268 80020668 14430066 */  bne        $v0, $v1, .L80020804
/* 2126C 8002066C 24020001 */   addiu     $v0, $zero, 0x1
/* 21270 80020670 96020004 */  lhu        $v0, 0x4($s0)
/* 21274 80020674 A7A20018 */  sh         $v0, 0x18($sp)
/* 21278 80020678 96020006 */  lhu        $v0, 0x6($s0)
/* 2127C 8002067C A7A2001A */  sh         $v0, 0x1A($sp)
/* 21280 80020680 8E020038 */  lw         $v0, 0x38($s0)
/* 21284 80020684 0C005C85 */  jal        func_80017214
/* 21288 80020688 8C440000 */   lw        $a0, 0x0($v0)
/* 2128C 8002068C 96030004 */  lhu        $v1, 0x4($s0)
/* 21290 80020690 00621821 */  addu       $v1, $v1, $v0
/* 21294 80020694 A7A3001C */  sh         $v1, 0x1C($sp)
/* 21298 80020698 8E020038 */  lw         $v0, 0x38($s0)
/* 2129C 8002069C 0C005C8D */  jal        func_80017234
/* 212A0 800206A0 8C440000 */   lw        $a0, 0x0($v0)
/* 212A4 800206A4 96060006 */  lhu        $a2, 0x6($s0)
/* 212A8 800206A8 00C23021 */  addu       $a2, $a2, $v0
/* 212AC 800206AC A7A6001E */  sh         $a2, 0x1E($sp)
/* 212B0 800206B0 86030004 */  lh         $v1, 0x4($s0)
/* 212B4 800206B4 86020008 */  lh         $v0, 0x8($s0)
/* 212B8 800206B8 87A5001C */  lh         $a1, 0x1C($sp)
/* 212BC 800206BC 87A70018 */  lh         $a3, 0x18($sp)
/* 212C0 800206C0 00621821 */  addu       $v1, $v1, $v0
/* 212C4 800206C4 000317C2 */  srl        $v0, $v1, 31
/* 212C8 800206C8 00621821 */  addu       $v1, $v1, $v0
/* 212CC 800206CC 00031843 */  sra        $v1, $v1, 1
/* 212D0 800206D0 00A71023 */  subu       $v0, $a1, $a3
/* 212D4 800206D4 000227C2 */  srl        $a0, $v0, 31
/* 212D8 800206D8 00441021 */  addu       $v0, $v0, $a0
/* 212DC 800206DC 00021043 */  sra        $v0, $v0, 1
/* 212E0 800206E0 00621823 */  subu       $v1, $v1, $v0
/* 212E4 800206E4 00A32821 */  addu       $a1, $a1, $v1
/* 212E8 800206E8 00A72823 */  subu       $a1, $a1, $a3
/* 212EC 800206EC A7A5001C */  sh         $a1, 0x1C($sp)
/* 212F0 800206F0 A7A30018 */  sh         $v1, 0x18($sp)
/* 212F4 800206F4 86030006 */  lh         $v1, 0x6($s0)
/* 212F8 800206F8 8602000A */  lh         $v0, 0xA($s0)
/* 212FC 800206FC 87A5001A */  lh         $a1, 0x1A($sp)
/* 21300 80020700 00621821 */  addu       $v1, $v1, $v0
/* 21304 80020704 000317C2 */  srl        $v0, $v1, 31
/* 21308 80020708 00621821 */  addu       $v1, $v1, $v0
/* 2130C 8002070C 00031843 */  sra        $v1, $v1, 1
/* 21310 80020710 00061400 */  sll        $v0, $a2, 16
/* 21314 80020714 00021403 */  sra        $v0, $v0, 16
/* 21318 80020718 00451023 */  subu       $v0, $v0, $a1
/* 2131C 8002071C 000227C2 */  srl        $a0, $v0, 31
/* 21320 80020720 00441021 */  addu       $v0, $v0, $a0
/* 21324 80020724 00021043 */  sra        $v0, $v0, 1
/* 21328 80020728 00621823 */  subu       $v1, $v1, $v0
/* 2132C 8002072C 00C33021 */  addu       $a2, $a2, $v1
/* 21330 80020730 00C53023 */  subu       $a2, $a2, $a1
/* 21334 80020734 A7A6001E */  sh         $a2, 0x1E($sp)
/* 21338 80020738 A7A3001A */  sh         $v1, 0x1A($sp)
/* 2133C 8002073C 8E02000C */  lw         $v0, 0xC($s0)
/* 21340 80020740 1040000E */  beqz       $v0, .L8002077C
/* 21344 80020744 2406FFFF */   addiu     $a2, $zero, -0x1
/* 21348 80020748 0C0042AA */  jal        func_80010AA8
/* 2134C 8002074C 00000000 */   nop
/* 21350 80020750 8E03000C */  lw         $v1, 0xC($s0)
/* 21354 80020754 14430009 */  bne        $v0, $v1, .L8002077C
/* 21358 80020758 2406FFFF */   addiu     $a2, $zero, -0x1
/* 2135C 8002075C 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 21360 80020760 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 21364 80020764 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 21368 80020768 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 2136C 8002076C 00021E00 */  sll        $v1, $v0, 24
/* 21370 80020770 00021200 */  sll        $v0, $v0, 8
/* 21374 80020774 00441025 */  or         $v0, $v0, $a0
/* 21378 80020778 00623025 */  or         $a2, $v1, $v0
.L8002077C:
/* 2137C 8002077C 8E020038 */  lw         $v0, 0x38($s0)
/* 21380 80020780 87A70018 */  lh         $a3, 0x18($sp)
/* 21384 80020784 8C450000 */  lw         $a1, 0x0($v0)
/* 21388 80020788 87A2001A */  lh         $v0, 0x1A($sp)
/* 2138C 8002078C 02202021 */  addu       $a0, $s1, $zero
/* 21390 80020790 AFA00014 */  sw         $zero, 0x14($sp)
/* 21394 80020794 0C005A35 */  jal        func_800168D4
/* 21398 80020798 AFA20010 */   sw        $v0, 0x10($sp)
/* 2139C 8002079C 08008201 */  j          .L80020804
/* 213A0 800207A0 24020001 */   addiu     $v0, $zero, 0x1
.L800207A4:
/* 213A4 800207A4 8E020040 */  lw         $v0, 0x40($s0)
/* 213A8 800207A8 04410007 */  bgez       $v0, .L800207C8
/* 213AC 800207AC 00000000 */   nop
/* 213B0 800207B0 8E02000C */  lw         $v0, 0xC($s0)
/* 213B4 800207B4 8C420030 */  lw         $v0, 0x30($v0)
/* 213B8 800207B8 1C400009 */  bgtz       $v0, .L800207E0
/* 213BC 800207BC 00000000 */   nop
/* 213C0 800207C0 08008201 */  j          .L80020804
/* 213C4 800207C4 00001021 */   addu      $v0, $zero, $zero
.L800207C8:
/* 213C8 800207C8 8E02000C */  lw         $v0, 0xC($s0)
/* 213CC 800207CC 8C420030 */  lw         $v0, 0x30($v0)
/* 213D0 800207D0 24420003 */  addiu      $v0, $v0, 0x3
/* 213D4 800207D4 28420010 */  slti       $v0, $v0, 0x10
/* 213D8 800207D8 5040000A */  beql       $v0, $zero, .L80020804
/* 213DC 800207DC 00001021 */   addu      $v0, $zero, $zero
.L800207E0:
/* 213E0 800207E0 8E02000C */  lw         $v0, 0xC($s0)
/* 213E4 800207E4 8E040040 */  lw         $a0, 0x40($s0)
/* 213E8 800207E8 8C430030 */  lw         $v1, 0x30($v0)
/* 213EC 800207EC 00641821 */  addu       $v1, $v1, $a0
/* 213F0 800207F0 AC430030 */  sw         $v1, 0x30($v0)
/* 213F4 800207F4 08008201 */  j          .L80020804
/* 213F8 800207F8 00001021 */   addu      $v0, $zero, $zero
.L800207FC:
/* 213FC 800207FC 0C00487F */  jal        func_800121FC
/* 21400 80020800 02203021 */   addu      $a2, $s1, $zero
.L80020804:
/* 21404 80020804 8FBF0040 */  lw         $ra, 0x40($sp)
/* 21408 80020808 8FB1003C */  lw         $s1, 0x3C($sp)
/* 2140C 8002080C 8FB00038 */  lw         $s0, 0x38($sp)
/* 21410 80020810 03E00008 */  jr         $ra
/* 21414 80020814 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80020818
/* 21418 80020818 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2141C 8002081C AFB00010 */  sw         $s0, 0x10($sp)
/* 21420 80020820 00808021 */  addu       $s0, $a0, $zero
/* 21424 80020824 24A3FFF5 */  addiu      $v1, $a1, -0xB
/* 21428 80020828 2C62000A */  sltiu      $v0, $v1, 0xA
/* 2142C 8002082C 1040004A */  beqz       $v0, L80020958
/* 21430 80020830 AFBF0014 */   sw        $ra, 0x14($sp)
/* 21434 80020834 00031080 */  sll        $v0, $v1, 2
/* 21438 80020838 3C01800D */  lui        $at, %hi(jtbl_800D0D58_main)
/* 2143C 8002083C 00220821 */  addu       $at, $at, $v0
/* 21440 80020840 8C220D58 */  lw         $v0, %lo(jtbl_800D0D58_main)($at)
/* 21444 80020844 00400008 */  jr         $v0
/* 21448 80020848 00000000 */   nop
glabel L8002084C
/* 2144C 8002084C 8E030018 */  lw         $v1, 0x18($s0)
/* 21450 80020850 3C02800B */  lui        $v0, %hi(D_800B6670)
/* 21454 80020854 24426670 */  addiu      $v0, $v0, %lo(D_800B6670)
/* 21458 80020858 14620006 */  bne        $v1, $v0, .L80020874
/* 2145C 8002085C 24040011 */   addiu     $a0, $zero, 0x11
/* 21460 80020860 00002821 */  addu       $a1, $zero, $zero
/* 21464 80020864 0C0041BA */  jal        func_800106E8
/* 21468 80020868 00003021 */   addu      $a2, $zero, $zero
/* 2146C 8002086C 08008258 */  j          .L80020960
/* 21470 80020870 24020001 */   addiu     $v0, $zero, 0x1
.L80020874:
/* 21474 80020874 3C02800B */  lui        $v0, %hi(D_800B66B4)
/* 21478 80020878 244266B4 */  addiu      $v0, $v0, %lo(D_800B66B4)
/* 2147C 8002087C 14620038 */  bne        $v1, $v0, .L80020960
/* 21480 80020880 24020001 */   addiu     $v0, $zero, 0x1
/* 21484 80020884 02002021 */  addu       $a0, $s0, $zero
/* 21488 80020888 0C004204 */  jal        func_80010810
/* 2148C 8002088C 00002821 */   addu      $a1, $zero, $zero
/* 21490 80020890 3C05800B */  lui        $a1, %hi(D_800B65A8)
/* 21494 80020894 8CA565A8 */  lw         $a1, %lo(D_800B65A8)($a1)
/* 21498 80020898 10A0002D */  beqz       $a1, L80020950
/* 2149C 8002089C 2404000F */   addiu     $a0, $zero, 0xF
/* 214A0 800208A0 0C0041BA */  jal        func_800106E8
/* 214A4 800208A4 00003021 */   addu      $a2, $zero, $zero
/* 214A8 800208A8 3C01800B */  lui        $at, %hi(D_800B65A8)
/* 214AC 800208AC AC2065A8 */  sw         $zero, %lo(D_800B65A8)($at)
/* 214B0 800208B0 08008258 */  j          .L80020960
/* 214B4 800208B4 24020001 */   addiu     $v0, $zero, 0x1
glabel L800208B8
/* 214B8 800208B8 02002021 */  addu       $a0, $s0, $zero
/* 214BC 800208BC 0C004204 */  jal        func_80010810
/* 214C0 800208C0 00002821 */   addu      $a1, $zero, $zero
/* 214C4 800208C4 3C05800B */  lui        $a1, %hi(D_800B65A8)
/* 214C8 800208C8 8CA565A8 */  lw         $a1, %lo(D_800B65A8)($a1)
/* 214CC 800208CC 10A00020 */  beqz       $a1, L80020950
/* 214D0 800208D0 2404000F */   addiu     $a0, $zero, 0xF
/* 214D4 800208D4 0C0041BA */  jal        func_800106E8
/* 214D8 800208D8 00003021 */   addu      $a2, $zero, $zero
/* 214DC 800208DC 3C01800B */  lui        $at, %hi(D_800B65A8)
/* 214E0 800208E0 AC2065A8 */  sw         $zero, %lo(D_800B65A8)($at)
/* 214E4 800208E4 08008258 */  j          .L80020960
/* 214E8 800208E8 24020001 */   addiu     $v0, $zero, 0x1
glabel L800208EC
/* 214EC 800208EC 24020011 */  addiu      $v0, $zero, 0x11
/* 214F0 800208F0 14C20019 */  bne        $a2, $v0, L80020958
/* 214F4 800208F4 00000000 */   nop
/* 214F8 800208F8 10E00017 */  beqz       $a3, L80020958
/* 214FC 800208FC 00000000 */   nop
/* 21500 80020900 3C048002 */  lui        $a0, %hi(func_8001F5B4)
/* 21504 80020904 0C007D8B */  jal        func_8001F62C
/* 21508 80020908 2484F5B4 */   addiu     $a0, $a0, %lo(func_8001F5B4)
/* 2150C 8002090C 3C02802A */  lui        $v0, %hi(D_802A1598)
/* 21510 80020910 8C421598 */  lw         $v0, %lo(D_802A1598)($v0)
/* 21514 80020914 3C01800B */  lui        $at, %hi(D_800B669C)
/* 21518 80020918 AC20669C */  sw         $zero, %lo(D_800B669C)($at)
/* 2151C 8002091C 3C01800B */  lui        $at, %hi(D_800B66AC)
/* 21520 80020920 AC2066AC */  sw         $zero, %lo(D_800B66AC)($at)
/* 21524 80020924 8E030030 */  lw         $v1, 0x30($s0)
/* 21528 80020928 02002021 */  addu       $a0, $s0, $zero
/* 2152C 8002092C 8E050010 */  lw         $a1, 0x10($s0)
/* 21530 80020930 00431023 */  subu       $v0, $v0, $v1
/* 21534 80020934 00021080 */  sll        $v0, $v0, 2
/* 21538 80020938 00451021 */  addu       $v0, $v0, $a1
/* 2153C 8002093C 8C460000 */  lw         $a2, 0x0($v0)
/* 21540 80020940 8C820000 */  lw         $v0, 0x0($a0)
/* 21544 80020944 00003821 */  addu       $a3, $zero, $zero
/* 21548 80020948 0040F809 */  jalr       $v0
/* 2154C 8002094C 24050007 */   addiu     $a1, $zero, 0x7
glabel L80020950
/* 21550 80020950 08008258 */  j          .L80020960
/* 21554 80020954 24020001 */   addiu     $v0, $zero, 0x1
glabel L80020958
/* 21558 80020958 0C0045DC */  jal        func_80011770
/* 2155C 8002095C 02002021 */   addu      $a0, $s0, $zero
.L80020960:
/* 21560 80020960 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21564 80020964 8FB00010 */  lw         $s0, 0x10($sp)
/* 21568 80020968 03E00008 */  jr         $ra
/* 2156C 8002096C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80020970
/* 21570 80020970 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21574 80020974 AFBF0010 */  sw         $ra, 0x10($sp)
/* 21578 80020978 0C001112 */  jal        __osGetActiveQueue
/* 2157C 8002097C 00000000 */   nop
/* 21580 80020980 2403FFFE */  addiu      $v1, $zero, -0x2
/* 21584 80020984 00431024 */  and        $v0, $v0, $v1
/* 21588 80020988 10400004 */  beqz       $v0, .L8002099C
/* 2158C 8002098C 00000000 */   nop
/* 21590 80020990 3C02800D */  lui        $v0, %hi(D_800CF67C)
/* 21594 80020994 08008269 */  j          .L800209A4
/* 21598 80020998 2442F67C */   addiu     $v0, $v0, %lo(D_800CF67C)
.L8002099C:
/* 2159C 8002099C 3C02800D */  lui        $v0, %hi(D_800CF6C0)
/* 215A0 800209A0 2442F6C0 */  addiu      $v0, $v0, %lo(D_800CF6C0)
.L800209A4:
/* 215A4 800209A4 3C01800B */  lui        $at, %hi(D_800B6BC0)
/* 215A8 800209A8 AC226BC0 */  sw         $v0, %lo(D_800B6BC0)($at)
/* 215AC 800209AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 215B0 800209B0 03E00008 */  jr         $ra
/* 215B4 800209B4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800209B8
/* 215B8 800209B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 215BC 800209BC AFB20018 */  sw         $s2, 0x18($sp)
/* 215C0 800209C0 00809021 */  addu       $s2, $a0, $zero
/* 215C4 800209C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 215C8 800209C8 00A08821 */  addu       $s1, $a1, $zero
/* 215CC 800209CC AFB00010 */  sw         $s0, 0x10($sp)
/* 215D0 800209D0 00C08021 */  addu       $s0, $a2, $zero
/* 215D4 800209D4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 215D8 800209D8 00E09821 */  addu       $s3, $a3, $zero
/* 215DC 800209DC 24020004 */  addiu      $v0, $zero, 0x4
/* 215E0 800209E0 1222001F */  beq        $s1, $v0, .L80020A60
/* 215E4 800209E4 AFBF0020 */   sw        $ra, 0x20($sp)
/* 215E8 800209E8 2E220005 */  sltiu      $v0, $s1, 0x5
/* 215EC 800209EC 50400005 */  beql       $v0, $zero, .L80020A04
/* 215F0 800209F0 24020012 */   addiu     $v0, $zero, 0x12
/* 215F4 800209F4 12200033 */  beqz       $s1, .L80020AC4
/* 215F8 800209F8 02402021 */   addu      $a0, $s2, $zero
/* 215FC 800209FC 080082B5 */  j          .L80020AD4
/* 21600 80020A00 00000000 */   nop
.L80020A04:
/* 21604 80020A04 12220005 */  beq        $s1, $v0, .L80020A1C
/* 21608 80020A08 24020014 */   addiu     $v0, $zero, 0x14
/* 2160C 80020A0C 12220035 */  beq        $s1, $v0, .L80020AE4
/* 21610 80020A10 24020001 */   addiu     $v0, $zero, 0x1
/* 21614 80020A14 080082B5 */  j          .L80020AD4
/* 21618 80020A18 02402021 */   addu      $a0, $s2, $zero
.L80020A1C:
/* 2161C 80020A1C 8E030000 */  lw         $v1, 0x0($s0)
/* 21620 80020A20 24020001 */  addiu      $v0, $zero, 0x1
/* 21624 80020A24 1062002B */  beq        $v1, $v0, .L80020AD4
/* 21628 80020A28 02402021 */   addu      $a0, $s2, $zero
/* 2162C 80020A2C 10600019 */  beqz       $v1, .L80020A94
/* 21630 80020A30 24020002 */   addiu     $v0, $zero, 0x2
/* 21634 80020A34 1062000E */  beq        $v1, $v0, .L80020A70
/* 21638 80020A38 24020003 */   addiu     $v0, $zero, 0x3
/* 2163C 80020A3C 14620026 */  bne        $v1, $v0, .L80020AD8
/* 21640 80020A40 02202821 */   addu      $a1, $s1, $zero
/* 21644 80020A44 0C001112 */  jal        __osGetActiveQueue
/* 21648 80020A48 00000000 */   nop
/* 2164C 80020A4C 8E030004 */  lw         $v1, 0x4($s0)
/* 21650 80020A50 00621007 */  srav       $v0, $v0, $v1
/* 21654 80020A54 30420001 */  andi       $v0, $v0, 0x1
/* 21658 80020A58 1040001E */  beqz       $v0, .L80020AD4
/* 2165C 80020A5C 02402021 */   addu      $a0, $s2, $zero
.L80020A60:
/* 21660 80020A60 0C00825C */  jal        func_80020970
/* 21664 80020A64 00000000 */   nop
/* 21668 80020A68 080082B5 */  j          .L80020AD4
/* 2166C 80020A6C 02402021 */   addu      $a0, $s2, $zero
.L80020A70:
/* 21670 80020A70 0C001112 */  jal        __osGetActiveQueue
/* 21674 80020A74 00000000 */   nop
/* 21678 80020A78 8E030004 */  lw         $v1, 0x4($s0)
/* 2167C 80020A7C 00621007 */  srav       $v0, $v0, $v1
/* 21680 80020A80 30420001 */  andi       $v0, $v0, 0x1
/* 21684 80020A84 14400013 */  bnez       $v0, .L80020AD4
/* 21688 80020A88 02402021 */   addu      $a0, $s2, $zero
/* 2168C 80020A8C 08008298 */  j          .L80020A60
/* 21690 80020A90 00000000 */   nop
.L80020A94:
/* 21694 80020A94 8E020008 */  lw         $v0, 0x8($s0)
/* 21698 80020A98 3042D000 */  andi       $v0, $v0, 0xD000
/* 2169C 80020A9C 10400011 */  beqz       $v0, .L80020AE4
/* 216A0 80020AA0 24020001 */   addiu     $v0, $zero, 0x1
/* 216A4 80020AA4 8E020004 */  lw         $v0, 0x4($s0)
/* 216A8 80020AA8 3C01803F */  lui        $at, %hi(D_803ED3D4)
/* 216AC 80020AAC A022D3D4 */  sb         $v0, %lo(D_803ED3D4)($at)
/* 216B0 80020AB0 8E050004 */  lw         $a1, 0x4($s0)
/* 216B4 80020AB4 0C004204 */  jal        func_80010810
/* 216B8 80020AB8 02402021 */   addu      $a0, $s2, $zero
/* 216BC 80020ABC 080082B9 */  j          .L80020AE4
/* 216C0 80020AC0 24020001 */   addiu     $v0, $zero, 0x1
.L80020AC4:
/* 216C4 80020AC4 0C000ED9 */  jal        func_80003B64
/* 216C8 80020AC8 00000000 */   nop
/* 216CC 80020ACC 08008298 */  j          .L80020A60
/* 216D0 80020AD0 00000000 */   nop
.L80020AD4:
/* 216D4 80020AD4 02202821 */  addu       $a1, $s1, $zero
.L80020AD8:
/* 216D8 80020AD8 02003021 */  addu       $a2, $s0, $zero
/* 216DC 80020ADC 0C0047B8 */  jal        func_80011EE0
/* 216E0 80020AE0 02603821 */   addu      $a3, $s3, $zero
.L80020AE4:
/* 216E4 80020AE4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 216E8 80020AE8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 216EC 80020AEC 8FB20018 */  lw         $s2, 0x18($sp)
/* 216F0 80020AF0 8FB10014 */  lw         $s1, 0x14($sp)
/* 216F4 80020AF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 216F8 80020AF8 03E00008 */  jr         $ra
/* 216FC 80020AFC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80020B00
/* 21700 80020B00 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 21704 80020B04 AFB00028 */  sw         $s0, 0x28($sp)
/* 21708 80020B08 00808021 */  addu       $s0, $a0, $zero
/* 2170C 80020B0C AFB1002C */  sw         $s1, 0x2C($sp)
/* 21710 80020B10 00C08821 */  addu       $s1, $a2, $zero
/* 21714 80020B14 24020089 */  addiu      $v0, $zero, 0x89
/* 21718 80020B18 10A20037 */  beq        $a1, $v0, .L80020BF8
/* 2171C 80020B1C AFBF0030 */   sw        $ra, 0x30($sp)
/* 21720 80020B20 2CA2008A */  sltiu      $v0, $a1, 0x8A
/* 21724 80020B24 10400005 */  beqz       $v0, .L80020B3C
/* 21728 80020B28 24020086 */   addiu     $v0, $zero, 0x86
/* 2172C 80020B2C 10A20008 */  beq        $a1, $v0, .L80020B50
/* 21730 80020B30 02002021 */   addu      $a0, $s0, $zero
/* 21734 80020B34 0800835E */  j          .L80020D78
/* 21738 80020B38 00000000 */   nop
.L80020B3C:
/* 2173C 80020B3C 2402008D */  addiu      $v0, $zero, 0x8D
/* 21740 80020B40 10A20047 */  beq        $a1, $v0, .L80020C60
/* 21744 80020B44 3222A000 */   andi      $v0, $s1, 0xA000
/* 21748 80020B48 0800835E */  j          .L80020D78
/* 2174C 80020B4C 02002021 */   addu      $a0, $s0, $zero
.L80020B50:
/* 21750 80020B50 24050087 */  addiu      $a1, $zero, 0x87
/* 21754 80020B54 8E020000 */  lw         $v0, 0x0($s0)
/* 21758 80020B58 02203021 */  addu       $a2, $s1, $zero
/* 2175C 80020B5C 0040F809 */  jalr       $v0
/* 21760 80020B60 00003821 */   addu      $a3, $zero, $zero
/* 21764 80020B64 8E020024 */  lw         $v0, 0x24($s0)
/* 21768 80020B68 10400085 */  beqz       $v0, .L80020D80
/* 2176C 80020B6C 24020001 */   addiu     $v0, $zero, 0x1
/* 21770 80020B70 8E02000C */  lw         $v0, 0xC($s0)
/* 21774 80020B74 10400009 */  beqz       $v0, .L80020B9C
/* 21778 80020B78 00000000 */   nop
/* 2177C 80020B7C 0C0042AA */  jal        func_80010AA8
/* 21780 80020B80 00000000 */   nop
/* 21784 80020B84 8E03000C */  lw         $v1, 0xC($s0)
/* 21788 80020B88 14430004 */  bne        $v0, $v1, .L80020B9C
/* 2178C 80020B8C 00000000 */   nop
/* 21790 80020B90 8C420018 */  lw         $v0, 0x18($v0)
/* 21794 80020B94 10500002 */  beq        $v0, $s0, .L80020BA0
/* 21798 80020B98 2403FFFF */   addiu     $v1, $zero, -0x1
.L80020B9C:
/* 2179C 80020B9C 8E03002C */  lw         $v1, 0x2C($s0)
.L80020BA0:
/* 217A0 80020BA0 8E020030 */  lw         $v0, 0x30($s0)
/* 217A4 80020BA4 AFA30014 */  sw         $v1, 0x14($sp)
/* 217A8 80020BA8 AFA20010 */  sw         $v0, 0x10($sp)
/* 217AC 80020BAC 8E020024 */  lw         $v0, 0x24($s0)
/* 217B0 80020BB0 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* 217B4 80020BB4 02202021 */  addu       $a0, $s1, $zero
/* 217B8 80020BB8 AFA20018 */  sw         $v0, 0x18($sp)
/* 217BC 80020BBC 96030004 */  lhu        $v1, 0x4($s0)
/* 217C0 80020BC0 96020008 */  lhu        $v0, 0x8($s0)
/* 217C4 80020BC4 8E050028 */  lw         $a1, 0x28($s0)
/* 217C8 80020BC8 96060006 */  lhu        $a2, 0x6($s0)
/* 217CC 80020BCC 00034400 */  sll        $t0, $v1, 16
/* 217D0 80020BD0 00021400 */  sll        $v0, $v0, 16
/* 217D4 80020BD4 00E23825 */  or         $a3, $a3, $v0
/* 217D8 80020BD8 3C02FFFF */  lui        $v0, (0xFFFF0000 >> 16)
/* 217DC 80020BDC 9603000A */  lhu        $v1, 0xA($s0)
/* 217E0 80020BE0 00E23824 */  and        $a3, $a3, $v0
/* 217E4 80020BE4 01063025 */  or         $a2, $t0, $a2
/* 217E8 80020BE8 0C0055AE */  jal        func_800156B8
/* 217EC 80020BEC 00E33825 */   or        $a3, $a3, $v1
/* 217F0 80020BF0 08008360 */  j          .L80020D80
/* 217F4 80020BF4 24020001 */   addiu     $v0, $zero, 0x1
.L80020BF8:
/* 217F8 80020BF8 8E02000C */  lw         $v0, 0xC($s0)
/* 217FC 80020BFC 1040000E */  beqz       $v0, .L80020C38
/* 21800 80020C00 2406FFFF */   addiu     $a2, $zero, -0x1
/* 21804 80020C04 0C0042AA */  jal        func_80010AA8
/* 21808 80020C08 00000000 */   nop
/* 2180C 80020C0C 8E03000C */  lw         $v1, 0xC($s0)
/* 21810 80020C10 14430009 */  bne        $v0, $v1, .L80020C38
/* 21814 80020C14 2406FFFF */   addiu     $a2, $zero, -0x1
/* 21818 80020C18 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 2181C 80020C1C 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 21820 80020C20 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 21824 80020C24 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 21828 80020C28 00021E00 */  sll        $v1, $v0, 24
/* 2182C 80020C2C 00021200 */  sll        $v0, $v0, 8
/* 21830 80020C30 00441025 */  or         $v0, $v0, $a0
/* 21834 80020C34 00623025 */  or         $a2, $v1, $v0
.L80020C38:
/* 21838 80020C38 8E020038 */  lw         $v0, 0x38($s0)
/* 2183C 80020C3C 86070004 */  lh         $a3, 0x4($s0)
/* 21840 80020C40 8C450004 */  lw         $a1, 0x4($v0)
/* 21844 80020C44 86020006 */  lh         $v0, 0x6($s0)
/* 21848 80020C48 02202021 */  addu       $a0, $s1, $zero
/* 2184C 80020C4C AFA00014 */  sw         $zero, 0x14($sp)
/* 21850 80020C50 0C005A35 */  jal        func_800168D4
/* 21854 80020C54 AFA20010 */   sw        $v0, 0x10($sp)
/* 21858 80020C58 08008360 */  j          .L80020D80
/* 2185C 80020C5C 24020001 */   addiu     $v0, $zero, 0x1
.L80020C60:
/* 21860 80020C60 10400047 */  beqz       $v0, .L80020D80
/* 21864 80020C64 00001021 */   addu      $v0, $zero, $zero
/* 21868 80020C68 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 2186C 80020C6C 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 21870 80020C70 0C02492A */  jal        func_800924A8
/* 21874 80020C74 8C440024 */   lw        $a0, 0x24($v0)
/* 21878 80020C78 3C03802C */  lui        $v1, %hi(D_802C5FD4)
/* 2187C 80020C7C 8C635FD4 */  lw         $v1, %lo(D_802C5FD4)($v1)
/* 21880 80020C80 00408821 */  addu       $s1, $v0, $zero
/* 21884 80020C84 0043182B */  sltu       $v1, $v0, $v1
/* 21888 80020C88 10600022 */  beqz       $v1, .L80020D14
/* 2188C 80020C8C 24050020 */   addiu     $a1, $zero, 0x20
/* 21890 80020C90 8E020024 */  lw         $v0, 0x24($s0)
/* 21894 80020C94 80430000 */  lb         $v1, 0x0($v0)
/* 21898 80020C98 24020073 */  addiu      $v0, $zero, 0x73
/* 2189C 80020C9C 10620002 */  beq        $v1, $v0, .L80020CA8
/* 218A0 80020CA0 00602021 */   addu      $a0, $v1, $zero
/* 218A4 80020CA4 00802821 */  addu       $a1, $a0, $zero
.L80020CA8:
/* 218A8 80020CA8 24A2FFBF */  addiu      $v0, $a1, -0x41
/* 218AC 80020CAC 304200FF */  andi       $v0, $v0, 0xFF
/* 218B0 80020CB0 2C42001A */  sltiu      $v0, $v0, 0x1A
/* 218B4 80020CB4 0011182B */  sltu       $v1, $zero, $s1
/* 218B8 80020CB8 00431024 */  and        $v0, $v0, $v1
/* 218BC 80020CBC 10400009 */  beqz       $v0, .L80020CE4
/* 218C0 80020CC0 00000000 */   nop
/* 218C4 80020CC4 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 218C8 80020CC8 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 218CC 80020CCC 8C420024 */  lw         $v0, 0x24($v0)
/* 218D0 80020CD0 02221021 */  addu       $v0, $s1, $v0
/* 218D4 80020CD4 8043FFFF */  lb         $v1, -0x1($v0)
/* 218D8 80020CD8 24020020 */  addiu      $v0, $zero, 0x20
/* 218DC 80020CDC 54620001 */  bnel       $v1, $v0, .L80020CE4
/* 218E0 80020CE0 24A50020 */   addiu     $a1, $a1, 0x20
.L80020CE4:
/* 218E4 80020CE4 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 218E8 80020CE8 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 218EC 80020CEC 8C420024 */  lw         $v0, 0x24($v0)
/* 218F0 80020CF0 00511021 */  addu       $v0, $v0, $s1
/* 218F4 80020CF4 A0450000 */  sb         $a1, 0x0($v0)
/* 218F8 80020CF8 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 218FC 80020CFC 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 21900 80020D00 8C420024 */  lw         $v0, 0x24($v0)
/* 21904 80020D04 26310001 */  addiu      $s1, $s1, 0x1
/* 21908 80020D08 00511021 */  addu       $v0, $v0, $s1
/* 2190C 80020D0C 26310001 */  addiu      $s1, $s1, 0x1
/* 21910 80020D10 A0400000 */  sb         $zero, 0x0($v0)
.L80020D14:
/* 21914 80020D14 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 21918 80020D18 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 2191C 80020D1C 8C440028 */  lw         $a0, 0x28($v0)
/* 21920 80020D20 8C460024 */  lw         $a2, 0x24($v0)
/* 21924 80020D24 0C005371 */  jal        func_80014DC4
/* 21928 80020D28 24050280 */   addiu     $a1, $zero, 0x280
/* 2192C 80020D2C 3C05802C */  lui        $a1, %hi(D_802C5FD0)
/* 21930 80020D30 8CA55FD0 */  lw         $a1, %lo(D_802C5FD0)($a1)
/* 21934 80020D34 84A30008 */  lh         $v1, 0x8($a1)
/* 21938 80020D38 84A40004 */  lh         $a0, 0x4($a1)
/* 2193C 80020D3C 00641823 */  subu       $v1, $v1, $a0
/* 21940 80020D40 0062182A */  slt        $v1, $v1, $v0
/* 21944 80020D44 10600004 */  beqz       $v1, .L80020D58
/* 21948 80020D48 00000000 */   nop
/* 2194C 80020D4C 8CA20024 */  lw         $v0, 0x24($a1)
/* 21950 80020D50 02221021 */  addu       $v0, $s1, $v0
/* 21954 80020D54 A040FFFE */  sb         $zero, -0x2($v0)
.L80020D58:
/* 21958 80020D58 8E04000C */  lw         $a0, 0xC($s0)
/* 2195C 80020D5C 24050010 */  addiu      $a1, $zero, 0x10
/* 21960 80020D60 8C820000 */  lw         $v0, 0x0($a0)
/* 21964 80020D64 02003021 */  addu       $a2, $s0, $zero
/* 21968 80020D68 0040F809 */  jalr       $v0
/* 2196C 80020D6C 00003821 */   addu      $a3, $zero, $zero
/* 21970 80020D70 08008360 */  j          .L80020D80
/* 21974 80020D74 24020001 */   addiu     $v0, $zero, 0x1
.L80020D78:
/* 21978 80020D78 0C00487F */  jal        func_800121FC
/* 2197C 80020D7C 02203021 */   addu      $a2, $s1, $zero
.L80020D80:
/* 21980 80020D80 8FBF0030 */  lw         $ra, 0x30($sp)
/* 21984 80020D84 8FB1002C */  lw         $s1, 0x2C($sp)
/* 21988 80020D88 8FB00028 */  lw         $s0, 0x28($sp)
/* 2198C 80020D8C 03E00008 */  jr         $ra
/* 21990 80020D90 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80020D94
/* 21994 80020D94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21998 80020D98 2402008D */  addiu      $v0, $zero, 0x8D
/* 2199C 80020D9C 10A20005 */  beq        $a1, $v0, .L80020DB4
/* 219A0 80020DA0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 219A4 80020DA4 0C0082C0 */  jal        func_80020B00
/* 219A8 80020DA8 00000000 */   nop
/* 219AC 80020DAC 0800836E */  j          .L80020DB8
/* 219B0 80020DB0 00000000 */   nop
.L80020DB4:
/* 219B4 80020DB4 00001021 */  addu       $v0, $zero, $zero
.L80020DB8:
/* 219B8 80020DB8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 219BC 80020DBC 03E00008 */  jr         $ra
/* 219C0 80020DC0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80020DC4
/* 219C4 80020DC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 219C8 80020DC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 219CC 80020DCC 00808021 */  addu       $s0, $a0, $zero
/* 219D0 80020DD0 00A04021 */  addu       $t0, $a1, $zero
/* 219D4 80020DD4 24020001 */  addiu      $v0, $zero, 0x1
/* 219D8 80020DD8 1102001D */  beq        $t0, $v0, .L80020E50
/* 219DC 80020DDC AFBF0014 */   sw        $ra, 0x14($sp)
/* 219E0 80020DE0 11000007 */  beqz       $t0, .L80020E00
/* 219E4 80020DE4 2402000B */   addiu     $v0, $zero, 0xB
/* 219E8 80020DE8 1102001F */  beq        $t0, $v0, .L80020E68
/* 219EC 80020DEC 2402000C */   addiu     $v0, $zero, 0xC
/* 219F0 80020DF0 11020027 */  beq        $t0, $v0, .L80020E90
/* 219F4 80020DF4 02002021 */   addu      $a0, $s0, $zero
/* 219F8 80020DF8 080083C0 */  j          .L80020F00
/* 219FC 80020DFC 00000000 */   nop
.L80020E00:
/* 21A00 80020E00 3C05802C */  lui        $a1, %hi(D_802C5FD0)
/* 21A04 80020E04 24A55FD0 */  addiu      $a1, $a1, %lo(D_802C5FD0)
/* 21A08 80020E08 ACA60000 */  sw         $a2, 0x0($a1)
/* 21A0C 80020E0C 3C04802C */  lui        $a0, %hi(D_802C5FD0)
/* 21A10 80020E10 8C845FD0 */  lw         $a0, %lo(D_802C5FD0)($a0)
/* 21A14 80020E14 3C01802C */  lui        $at, %hi(D_802C5FD4)
/* 21A18 80020E18 AC275FD4 */  sw         $a3, %lo(D_802C5FD4)($at)
/* 21A1C 80020E1C 8C82002C */  lw         $v0, 0x2C($a0)
/* 21A20 80020E20 3C03FFFF */  lui        $v1, (0xFFFF00FF >> 16)
/* 21A24 80020E24 346300FF */  ori        $v1, $v1, (0xFFFF00FF & 0xFFFF)
/* 21A28 80020E28 3C01802C */  lui        $at, %hi(D_802C5FD8)
/* 21A2C 80020E2C AC225FD8 */  sw         $v0, %lo(D_802C5FD8)($at)
/* 21A30 80020E30 2402FFFF */  addiu      $v0, $zero, -0x1
/* 21A34 80020E34 AC82002C */  sw         $v0, 0x2C($a0)
/* 21A38 80020E38 3C01800B */  lui        $at, %hi(D_800B73D0)
/* 21A3C 80020E3C AC2373D0 */  sw         $v1, %lo(D_800B73D0)($at)
/* 21A40 80020E40 3C01800B */  lui        $at, %hi(D_800B738C)
/* 21A44 80020E44 AC23738C */  sw         $v1, %lo(D_800B738C)($at)
/* 21A48 80020E48 080083BF */  j          .L80020EFC
/* 21A4C 80020E4C AE050030 */   sw        $a1, 0x30($s0)
.L80020E50:
/* 21A50 80020E50 3C03802C */  lui        $v1, %hi(D_802C5FD0)
/* 21A54 80020E54 8C635FD0 */  lw         $v1, %lo(D_802C5FD0)($v1)
/* 21A58 80020E58 3C02802C */  lui        $v0, %hi(D_802C5FD8)
/* 21A5C 80020E5C 8C425FD8 */  lw         $v0, %lo(D_802C5FD8)($v0)
/* 21A60 80020E60 080083BF */  j          .L80020EFC
/* 21A64 80020E64 AC62002C */   sw        $v0, 0x2C($v1)
.L80020E68:
/* 21A68 80020E68 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 21A6C 80020E6C 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 21A70 80020E70 0C02492A */  jal        func_800924A8
/* 21A74 80020E74 8C440024 */   lw        $a0, 0x24($v0)
/* 21A78 80020E78 10400016 */  beqz       $v0, .L80020ED4
/* 21A7C 80020E7C 02002021 */   addu      $a0, $s0, $zero
/* 21A80 80020E80 0C004204 */  jal        func_80010810
/* 21A84 80020E84 24050001 */   addiu     $a1, $zero, 0x1
/* 21A88 80020E88 080083C2 */  j          .L80020F08
/* 21A8C 80020E8C 24020001 */   addiu     $v0, $zero, 0x1
.L80020E90:
/* 21A90 80020E90 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 21A94 80020E94 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 21A98 80020E98 0C02492A */  jal        func_800924A8
/* 21A9C 80020E9C 8C440024 */   lw        $a0, 0x24($v0)
/* 21AA0 80020EA0 00401821 */  addu       $v1, $v0, $zero
/* 21AA4 80020EA4 1060000D */  beqz       $v1, .L80020EDC
/* 21AA8 80020EA8 02002021 */   addu      $a0, $s0, $zero
/* 21AAC 80020EAC 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 21AB0 80020EB0 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 21AB4 80020EB4 8C420024 */  lw         $v0, 0x24($v0)
/* 21AB8 80020EB8 24050010 */  addiu      $a1, $zero, 0x10
/* 21ABC 80020EBC 00621021 */  addu       $v0, $v1, $v0
/* 21AC0 80020EC0 A040FFFF */  sb         $zero, -0x1($v0)
/* 21AC4 80020EC4 8C820000 */  lw         $v0, 0x0($a0)
/* 21AC8 80020EC8 00003021 */  addu       $a2, $zero, $zero
/* 21ACC 80020ECC 0040F809 */  jalr       $v0
/* 21AD0 80020ED0 00003821 */   addu      $a3, $zero, $zero
.L80020ED4:
/* 21AD4 80020ED4 080083C2 */  j          .L80020F08
/* 21AD8 80020ED8 24020001 */   addiu     $v0, $zero, 0x1
.L80020EDC:
/* 21ADC 80020EDC 3C02802C */  lui        $v0, %hi(D_802C5FD0)
/* 21AE0 80020EE0 8C425FD0 */  lw         $v0, %lo(D_802C5FD0)($v0)
/* 21AE4 80020EE4 8C420024 */  lw         $v0, 0x24($v0)
/* 21AE8 80020EE8 00002821 */  addu       $a1, $zero, $zero
/* 21AEC 80020EEC 0C004204 */  jal        func_80010810
/* 21AF0 80020EF0 A0400000 */   sb        $zero, 0x0($v0)
/* 21AF4 80020EF4 080083C2 */  j          .L80020F08
/* 21AF8 80020EF8 24020001 */   addiu     $v0, $zero, 0x1
.L80020EFC:
/* 21AFC 80020EFC 02002021 */  addu       $a0, $s0, $zero
.L80020F00:
/* 21B00 80020F00 0C0045DC */  jal        func_80011770
/* 21B04 80020F04 01002821 */   addu      $a1, $t0, $zero
.L80020F08:
/* 21B08 80020F08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21B0C 80020F0C 8FB00010 */  lw         $s0, 0x10($sp)
/* 21B10 80020F10 03E00008 */  jr         $ra
/* 21B14 80020F14 27BD0018 */   addiu     $sp, $sp, 0x18
/* 21B18 80020F18 00000000 */  nop
/* 21B1C 80020F1C 00000000 */  nop
