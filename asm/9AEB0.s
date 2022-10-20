.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009A2B0
/* 9AEB0 8009A2B0 00851026 */  xor        $v0, $a0, $a1
/* 9AEB4 8009A2B4 28C10010 */  slti       $at, $a2, 0x10
/* 9AEB8 8009A2B8 14200034 */  bnez       $at, .L8009A38C
/* 9AEBC 8009A2BC 00000000 */   nop
/* 9AEC0 8009A2C0 30420003 */  andi       $v0, $v0, 0x3
/* 9AEC4 8009A2C4 14400018 */  bnez       $v0, .L8009A328
/* 9AEC8 8009A2C8 0004C023 */   negu      $t8, $a0
/* 9AECC 8009A2CC 33180003 */  andi       $t8, $t8, 0x3
/* 9AED0 8009A2D0 13000007 */  beqz       $t8, .L8009A2F0
/* 9AED4 8009A2D4 00D83023 */   subu      $a2, $a2, $t8
/* 9AED8 8009A2D8 00601021 */  addu       $v0, $v1, $zero
/* 9AEDC 8009A2DC 88820000 */  lwl        $v0, 0x0($a0)
/* 9AEE0 8009A2E0 88A30000 */  lwl        $v1, 0x0($a1)
/* 9AEE4 8009A2E4 00982021 */  addu       $a0, $a0, $t8
/* 9AEE8 8009A2E8 14430033 */  bne        $v0, $v1, .L8009A3B8
/* 9AEEC 8009A2EC 00B82821 */   addu      $a1, $a1, $t8
.L8009A2F0:
/* 9AEF0 8009A2F0 2401FFFC */  addiu      $at, $zero, -0x4
/* 9AEF4 8009A2F4 00C13824 */  and        $a3, $a2, $at
/* 9AEF8 8009A2F8 10E00024 */  beqz       $a3, .L8009A38C
/* 9AEFC 8009A2FC 00C73023 */   subu      $a2, $a2, $a3
/* 9AF00 8009A300 00E43821 */  addu       $a3, $a3, $a0
.L8009A304:
/* 9AF04 8009A304 8C820000 */  lw         $v0, 0x0($a0)
/* 9AF08 8009A308 8CA30000 */  lw         $v1, 0x0($a1)
/* 9AF0C 8009A30C 24840004 */  addiu      $a0, $a0, 0x4
/* 9AF10 8009A310 14430029 */  bne        $v0, $v1, .L8009A3B8
/* 9AF14 8009A314 24A50004 */   addiu     $a1, $a1, 0x4
/* 9AF18 8009A318 1487FFFA */  bne        $a0, $a3, .L8009A304
/* 9AF1C 8009A31C 00000000 */   nop
/* 9AF20 8009A320 1000001A */  b          .L8009A38C
/* 9AF24 8009A324 00000000 */   nop
.L8009A328:
/* 9AF28 8009A328 00053823 */  negu       $a3, $a1
/* 9AF2C 8009A32C 30E70003 */  andi       $a3, $a3, 0x3
/* 9AF30 8009A330 10E00009 */  beqz       $a3, .L8009A358
/* 9AF34 8009A334 00C73023 */   subu      $a2, $a2, $a3
/* 9AF38 8009A338 00E43821 */  addu       $a3, $a3, $a0
.L8009A33C:
/* 9AF3C 8009A33C 90820000 */  lbu        $v0, 0x0($a0)
/* 9AF40 8009A340 90A30000 */  lbu        $v1, 0x0($a1)
/* 9AF44 8009A344 24840001 */  addiu      $a0, $a0, 0x1
/* 9AF48 8009A348 1443001B */  bne        $v0, $v1, .L8009A3B8
/* 9AF4C 8009A34C 24A50001 */   addiu     $a1, $a1, 0x1
/* 9AF50 8009A350 1487FFFA */  bne        $a0, $a3, .L8009A33C
/* 9AF54 8009A354 00000000 */   nop
.L8009A358:
/* 9AF58 8009A358 2401FFFC */  addiu      $at, $zero, -0x4
/* 9AF5C 8009A35C 00C13824 */  and        $a3, $a2, $at
/* 9AF60 8009A360 10E0000A */  beqz       $a3, .L8009A38C
/* 9AF64 8009A364 00C73023 */   subu      $a2, $a2, $a3
/* 9AF68 8009A368 00E43821 */  addu       $a3, $a3, $a0
.L8009A36C:
/* 9AF6C 8009A36C 88820000 */  lwl        $v0, 0x0($a0)
/* 9AF70 8009A370 98820003 */  lwr        $v0, 0x3($a0)
/* 9AF74 8009A374 8CA30000 */  lw         $v1, 0x0($a1)
/* 9AF78 8009A378 24840004 */  addiu      $a0, $a0, 0x4
/* 9AF7C 8009A37C 1443000E */  bne        $v0, $v1, .L8009A3B8
/* 9AF80 8009A380 24A50004 */   addiu     $a1, $a1, 0x4
/* 9AF84 8009A384 1487FFF9 */  bne        $a0, $a3, .L8009A36C
/* 9AF88 8009A388 00000000 */   nop
.L8009A38C:
/* 9AF8C 8009A38C 18C00008 */  blez       $a2, .L8009A3B0
/* 9AF90 8009A390 00C43821 */   addu      $a3, $a2, $a0
.L8009A394:
/* 9AF94 8009A394 90820000 */  lbu        $v0, 0x0($a0)
/* 9AF98 8009A398 90A30000 */  lbu        $v1, 0x0($a1)
/* 9AF9C 8009A39C 24840001 */  addiu      $a0, $a0, 0x1
/* 9AFA0 8009A3A0 14430005 */  bne        $v0, $v1, .L8009A3B8
/* 9AFA4 8009A3A4 24A50001 */   addiu     $a1, $a1, 0x1
/* 9AFA8 8009A3A8 1487FFFA */  bne        $a0, $a3, .L8009A394
/* 9AFAC 8009A3AC 00000000 */   nop
.L8009A3B0:
/* 9AFB0 8009A3B0 03E00008 */  jr         $ra
/* 9AFB4 8009A3B4 00001021 */   addu      $v0, $zero, $zero
.L8009A3B8:
/* 9AFB8 8009A3B8 03E00008 */  jr         $ra
/* 9AFBC 8009A3BC 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8009A3C0
/* 9AFC0 8009A3C0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 9AFC4 8009A3C4 AFB10044 */  sw         $s1, 0x44($sp)
/* 9AFC8 8009A3C8 00808821 */  addu       $s1, $a0, $zero
/* 9AFCC 8009A3CC AFB60058 */  sw         $s6, 0x58($sp)
/* 9AFD0 8009A3D0 3C16800D */  lui        $s6, %hi(D_800CB3E0)
/* 9AFD4 8009A3D4 26D6B3E0 */  addiu      $s6, $s6, %lo(D_800CB3E0)
/* 9AFD8 8009A3D8 30A400FF */  andi       $a0, $a1, 0xFF
/* 9AFDC 8009A3DC 24020058 */  addiu      $v0, $zero, 0x58
/* 9AFE0 8009A3E0 AFBF005C */  sw         $ra, 0x5C($sp)
/* 9AFE4 8009A3E4 AFB50054 */  sw         $s5, 0x54($sp)
/* 9AFE8 8009A3E8 AFB40050 */  sw         $s4, 0x50($sp)
/* 9AFEC 8009A3EC AFB3004C */  sw         $s3, 0x4C($sp)
/* 9AFF0 8009A3F0 AFB20048 */  sw         $s2, 0x48($sp)
/* 9AFF4 8009A3F4 14820003 */  bne        $a0, $v0, .L8009A404
/* 9AFF8 8009A3F8 AFB00040 */   sw        $s0, 0x40($sp)
/* 9AFFC 8009A3FC 3C16800D */  lui        $s6, %hi(D_800CB3F4)
/* 9B000 8009A400 26D6B3F4 */  addiu      $s6, $s6, %lo(D_800CB3F4)
.L8009A404:
/* 9B004 8009A404 2402006F */  addiu      $v0, $zero, 0x6F
/* 9B008 8009A408 10820009 */  beq        $a0, $v0, .L8009A430
/* 9B00C 8009A40C 38830078 */   xori      $v1, $a0, 0x78
/* 9B010 8009A410 0003182B */  sltu       $v1, $zero, $v1
/* 9B014 8009A414 38820058 */  xori       $v0, $a0, 0x58
/* 9B018 8009A418 0002102B */  sltu       $v0, $zero, $v0
/* 9B01C 8009A41C 00621824 */  and        $v1, $v1, $v0
/* 9B020 8009A420 10600004 */  beqz       $v1, .L8009A434
/* 9B024 8009A424 24130010 */   addiu     $s3, $zero, 0x10
/* 9B028 8009A428 0802690D */  j          .L8009A434
/* 9B02C 8009A42C 2413000A */   addiu     $s3, $zero, 0xA
.L8009A430:
/* 9B030 8009A430 24130008 */  addiu      $s3, $zero, 0x8
.L8009A434:
/* 9B034 8009A434 8E340000 */  lw         $s4, 0x0($s1)
/* 9B038 8009A438 8E350004 */  lw         $s5, 0x4($s1)
/* 9B03C 8009A43C 30A200FF */  andi       $v0, $a1, 0xFF
/* 9B040 8009A440 38430064 */  xori       $v1, $v0, 0x64
/* 9B044 8009A444 2C630001 */  sltiu      $v1, $v1, 0x1
/* 9B048 8009A448 38420069 */  xori       $v0, $v0, 0x69
/* 9B04C 8009A44C 2C420001 */  sltiu      $v0, $v0, 0x1
/* 9B050 8009A450 00621825 */  or         $v1, $v1, $v0
/* 9B054 8009A454 10600008 */  beqz       $v1, .L8009A478
/* 9B058 8009A458 24120018 */   addiu     $s2, $zero, 0x18
/* 9B05C 8009A45C 8E220000 */  lw         $v0, 0x0($s1)
/* 9B060 8009A460 04410005 */  bgez       $v0, .L8009A478
/* 9B064 8009A464 00000000 */   nop
/* 9B068 8009A468 0015A823 */  negu       $s5, $s5
/* 9B06C 8009A46C 0014A023 */  negu       $s4, $s4
/* 9B070 8009A470 0015102B */  sltu       $v0, $zero, $s5
/* 9B074 8009A474 0282A023 */  subu       $s4, $s4, $v0
.L8009A478:
/* 9B078 8009A478 56800007 */  bnel       $s4, $zero, .L8009A498
/* 9B07C 8009A47C 2652FFFF */   addiu     $s2, $s2, -0x1
/* 9B080 8009A480 56A00005 */  bnel       $s5, $zero, .L8009A498
/* 9B084 8009A484 2652FFFF */   addiu     $s2, $s2, -0x1
/* 9B088 8009A488 8E220024 */  lw         $v0, 0x24($s1)
/* 9B08C 8009A48C 1040000D */  beqz       $v0, .L8009A4C4
/* 9B090 8009A490 02603821 */   addu      $a3, $s3, $zero
/* 9B094 8009A494 2652FFFF */  addiu      $s2, $s2, -0x1
.L8009A498:
/* 9B098 8009A498 02603821 */  addu       $a3, $s3, $zero
/* 9B09C 8009A49C 00003021 */  addu       $a2, $zero, $zero
/* 9B0A0 8009A4A0 02802021 */  addu       $a0, $s4, $zero
/* 9B0A4 8009A4A4 02A02821 */  addu       $a1, $s5, $zero
/* 9B0A8 8009A4A8 27B00018 */  addiu      $s0, $sp, 0x18
/* 9B0AC 8009A4AC 0C000DA8 */  jal        .L800036A0
/* 9B0B0 8009A4B0 02128021 */   addu      $s0, $s0, $s2
/* 9B0B4 8009A4B4 02C31021 */  addu       $v0, $s6, $v1
/* 9B0B8 8009A4B8 90420000 */  lbu        $v0, 0x0($v0)
/* 9B0BC 8009A4BC A2020000 */  sb         $v0, 0x0($s0)
/* 9B0C0 8009A4C0 02603821 */  addu       $a3, $s3, $zero
.L8009A4C4:
/* 9B0C4 8009A4C4 00003021 */  addu       $a2, $zero, $zero
/* 9B0C8 8009A4C8 02802021 */  addu       $a0, $s4, $zero
/* 9B0CC 8009A4CC 0C000DA0 */  jal        func_80003680
/* 9B0D0 8009A4D0 02A02821 */   addu      $a1, $s5, $zero
/* 9B0D4 8009A4D4 AE220000 */  sw         $v0, 0x0($s1)
/* 9B0D8 8009A4D8 AE230004 */  sw         $v1, 0x4($s1)
/* 9B0DC 8009A4DC 27A20018 */  addiu      $v0, $sp, 0x18
/* 9B0E0 8009A4E0 02428021 */  addu       $s0, $s2, $v0
.L8009A4E4:
/* 9B0E4 8009A4E4 8E220000 */  lw         $v0, 0x0($s1)
/* 9B0E8 8009A4E8 1C400006 */  bgtz       $v0, .L8009A504
/* 9B0EC 8009A4EC 00001821 */   addu      $v1, $zero, $zero
/* 9B0F0 8009A4F0 14400006 */  bnez       $v0, .L8009A50C
/* 9B0F4 8009A4F4 0012102A */   slt       $v0, $zero, $s2
/* 9B0F8 8009A4F8 8E220004 */  lw         $v0, 0x4($s1)
/* 9B0FC 8009A4FC 10400003 */  beqz       $v0, .L8009A50C
/* 9B100 8009A500 0012102A */   slt       $v0, $zero, $s2
.L8009A504:
/* 9B104 8009A504 24030001 */  addiu      $v1, $zero, 0x1
/* 9B108 8009A508 0012102A */  slt        $v0, $zero, $s2
.L8009A50C:
/* 9B10C 8009A50C 00621024 */  and        $v0, $v1, $v0
/* 9B110 8009A510 10400014 */  beqz       $v0, .L8009A564
/* 9B114 8009A514 02601821 */   addu      $v1, $s3, $zero
/* 9B118 8009A518 8E260000 */  lw         $a2, 0x0($s1)
/* 9B11C 8009A51C 8E270004 */  lw         $a3, 0x4($s1)
/* 9B120 8009A520 001317C3 */  sra        $v0, $s3, 31
/* 9B124 8009A524 AFA20010 */  sw         $v0, 0x10($sp)
/* 9B128 8009A528 AFA30014 */  sw         $v1, 0x14($sp)
/* 9B12C 8009A52C 0C026C45 */  jal        func_8009B114
/* 9B130 8009A530 27A40030 */   addiu     $a0, $sp, 0x30
/* 9B134 8009A534 8FA20030 */  lw         $v0, 0x30($sp)
/* 9B138 8009A538 8FA30034 */  lw         $v1, 0x34($sp)
/* 9B13C 8009A53C AE220000 */  sw         $v0, 0x0($s1)
/* 9B140 8009A540 AE230004 */  sw         $v1, 0x4($s1)
/* 9B144 8009A544 8FA20038 */  lw         $v0, 0x38($sp)
/* 9B148 8009A548 8FA3003C */  lw         $v1, 0x3C($sp)
/* 9B14C 8009A54C 02C31021 */  addu       $v0, $s6, $v1
/* 9B150 8009A550 90420000 */  lbu        $v0, 0x0($v0)
/* 9B154 8009A554 2610FFFF */  addiu      $s0, $s0, -0x1
/* 9B158 8009A558 2652FFFF */  addiu      $s2, $s2, -0x1
/* 9B15C 8009A55C 08026939 */  j          .L8009A4E4
/* 9B160 8009A560 A2020000 */   sb        $v0, 0x0($s0)
.L8009A564:
/* 9B164 8009A564 8E240008 */  lw         $a0, 0x8($s1)
/* 9B168 8009A568 27A50018 */  addiu      $a1, $sp, 0x18
/* 9B16C 8009A56C 00B22821 */  addu       $a1, $a1, $s2
/* 9B170 8009A570 24060018 */  addiu      $a2, $zero, 0x18
/* 9B174 8009A574 00D23023 */  subu       $a2, $a2, $s2
/* 9B178 8009A578 0C024933 */  jal        func_800924CC
/* 9B17C 8009A57C AE260014 */   sw        $a2, 0x14($s1)
/* 9B180 8009A580 8E240014 */  lw         $a0, 0x14($s1)
/* 9B184 8009A584 8E230024 */  lw         $v1, 0x24($s1)
/* 9B188 8009A588 0083102A */  slt        $v0, $a0, $v1
/* 9B18C 8009A58C 10400002 */  beqz       $v0, .L8009A598
/* 9B190 8009A590 00641023 */   subu      $v0, $v1, $a0
/* 9B194 8009A594 AE220010 */  sw         $v0, 0x10($s1)
.L8009A598:
/* 9B198 8009A598 8E220024 */  lw         $v0, 0x24($s1)
/* 9B19C 8009A59C 0441000F */  bgez       $v0, .L8009A5DC
/* 9B1A0 8009A5A0 24030010 */   addiu     $v1, $zero, 0x10
/* 9B1A4 8009A5A4 8E220030 */  lw         $v0, 0x30($s1)
/* 9B1A8 8009A5A8 30420014 */  andi       $v0, $v0, 0x14
/* 9B1AC 8009A5AC 1443000B */  bne        $v0, $v1, .L8009A5DC
/* 9B1B0 8009A5B0 00000000 */   nop
/* 9B1B4 8009A5B4 8E220028 */  lw         $v0, 0x28($s1)
/* 9B1B8 8009A5B8 8E23000C */  lw         $v1, 0xC($s1)
/* 9B1BC 8009A5BC 8E250010 */  lw         $a1, 0x10($s1)
/* 9B1C0 8009A5C0 8E240014 */  lw         $a0, 0x14($s1)
/* 9B1C4 8009A5C4 00431023 */  subu       $v0, $v0, $v1
/* 9B1C8 8009A5C8 00451023 */  subu       $v0, $v0, $a1
/* 9B1CC 8009A5CC 00449023 */  subu       $s2, $v0, $a0
/* 9B1D0 8009A5D0 1A400002 */  blez       $s2, .L8009A5DC
/* 9B1D4 8009A5D4 00B21021 */   addu      $v0, $a1, $s2
/* 9B1D8 8009A5D8 AE220010 */  sw         $v0, 0x10($s1)
.L8009A5DC:
/* 9B1DC 8009A5DC 8FBF005C */  lw         $ra, 0x5C($sp)
/* 9B1E0 8009A5E0 8FB60058 */  lw         $s6, 0x58($sp)
/* 9B1E4 8009A5E4 8FB50054 */  lw         $s5, 0x54($sp)
/* 9B1E8 8009A5E8 8FB40050 */  lw         $s4, 0x50($sp)
/* 9B1EC 8009A5EC 8FB3004C */  lw         $s3, 0x4C($sp)
/* 9B1F0 8009A5F0 8FB20048 */  lw         $s2, 0x48($sp)
/* 9B1F4 8009A5F4 8FB10044 */  lw         $s1, 0x44($sp)
/* 9B1F8 8009A5F8 8FB00040 */  lw         $s0, 0x40($sp)
/* 9B1FC 8009A5FC 03E00008 */  jr         $ra
/* 9B200 8009A600 27BD0060 */   addiu     $sp, $sp, 0x60
/* 9B204 8009A604 00000000 */  nop
/* 9B208 8009A608 00000000 */  nop
/* 9B20C 8009A60C 00000000 */  nop
