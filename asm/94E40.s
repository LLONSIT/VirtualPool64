.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80094240
/* 94E40 80094240 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 94E44 80094244 AFB30044 */  sw         $s3, 0x44($sp)
/* 94E48 80094248 8FB30070 */  lw         $s3, 0x70($sp)
/* 94E4C 8009424C AFB1003C */  sw         $s1, 0x3C($sp)
/* 94E50 80094250 00808821 */  addu       $s1, $a0, $zero
/* 94E54 80094254 AFBE0058 */  sw         $fp, 0x58($sp)
/* 94E58 80094258 00C0F021 */  addu       $fp, $a2, $zero
/* 94E5C 8009425C AFB20040 */  sw         $s2, 0x40($sp)
/* 94E60 80094260 00E09021 */  addu       $s2, $a3, $zero
/* 94E64 80094264 AFBF005C */  sw         $ra, 0x5C($sp)
/* 94E68 80094268 AFB70054 */  sw         $s7, 0x54($sp)
/* 94E6C 8009426C AFB60050 */  sw         $s6, 0x50($sp)
/* 94E70 80094270 AFB5004C */  sw         $s5, 0x4C($sp)
/* 94E74 80094274 AFB40048 */  sw         $s4, 0x48($sp)
/* 94E78 80094278 AFB00038 */  sw         $s0, 0x38($sp)
/* 94E7C 8009427C 8E220000 */  lw         $v0, 0x0($s1)
/* 94E80 80094280 8FB40074 */  lw         $s4, 0x74($sp)
/* 94E84 80094284 30420001 */  andi       $v0, $v0, 0x1
/* 94E88 80094288 10400048 */  beqz       $v0, .L800943AC
/* 94E8C 8009428C 00A0B821 */   addu      $s7, $a1, $zero
/* 94E90 80094290 0C026541 */  jal        func_80099504
/* 94E94 80094294 02202021 */   addu      $a0, $s1, $zero
/* 94E98 80094298 00404021 */  addu       $t0, $v0, $zero
/* 94E9C 8009429C 15000044 */  bnez       $t0, .L800943B0
/* 94EA0 800942A0 00000000 */   nop
/* 94EA4 800942A4 8E220050 */  lw         $v0, 0x50($s1)
/* 94EA8 800942A8 1840003E */  blez       $v0, .L800943A4
/* 94EAC 800942AC 00008021 */   addu      $s0, $zero, $zero
/* 94EB0 800942B0 27B60020 */  addiu      $s6, $sp, 0x20
/* 94EB4 800942B4 27B5001C */  addiu      $s5, $sp, 0x1C
.L800942B8:
/* 94EB8 800942B8 8E26005C */  lw         $a2, 0x5C($s1)
/* 94EBC 800942BC 8E240004 */  lw         $a0, 0x4($s1)
/* 94EC0 800942C0 8E250008 */  lw         $a1, 0x8($s1)
/* 94EC4 800942C4 27A70010 */  addiu      $a3, $sp, 0x10
/* 94EC8 800942C8 00D03021 */  addu       $a2, $a2, $s0
/* 94ECC 800942CC 0C026640 */  jal        func_80099900
/* 94ED0 800942D0 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 94ED4 800942D4 00404021 */  addu       $t0, $v0, $zero
/* 94ED8 800942D8 15000027 */  bnez       $t0, .L80094378
/* 94EDC 800942DC 32E2FFFF */   andi      $v0, $s7, 0xFFFF
/* 94EE0 800942E0 97A30014 */  lhu        $v1, 0x14($sp)
/* 94EE4 800942E4 1462002A */  bne        $v1, $v0, .L80094390
/* 94EE8 800942E8 00000000 */   nop
/* 94EEC 800942EC 8FA20010 */  lw         $v0, 0x10($sp)
/* 94EF0 800942F0 145E0027 */  bne        $v0, $fp, .L80094390
/* 94EF4 800942F4 00000000 */   nop
/* 94EF8 800942F8 1240000C */  beqz       $s2, .L8009432C
/* 94EFC 800942FC 00003821 */   addu      $a3, $zero, $zero
/* 94F00 80094300 00002021 */  addu       $a0, $zero, $zero
/* 94F04 80094304 02403021 */  addu       $a2, $s2, $zero
/* 94F08 80094308 02C02821 */  addu       $a1, $s6, $zero
.L8009430C:
/* 94F0C 8009430C 90A30000 */  lbu        $v1, 0x0($a1)
/* 94F10 80094310 90C20000 */  lbu        $v0, 0x0($a2)
/* 94F14 80094314 1462001C */  bne        $v1, $v0, .L80094388
/* 94F18 80094318 24C60001 */   addiu     $a2, $a2, 0x1
/* 94F1C 8009431C 24840001 */  addiu      $a0, $a0, 0x1
/* 94F20 80094320 28820010 */  slti       $v0, $a0, 0x10
/* 94F24 80094324 1440FFF9 */  bnez       $v0, .L8009430C
/* 94F28 80094328 24A50001 */   addiu     $a1, $a1, 0x1
.L8009432C:
/* 94F2C 8009432C 0013102B */  sltu       $v0, $zero, $s3
/* 94F30 80094330 2CE30001 */  sltiu      $v1, $a3, 0x1
/* 94F34 80094334 00431024 */  and        $v0, $v0, $v1
/* 94F38 80094338 1040000C */  beqz       $v0, .L8009436C
/* 94F3C 8009433C 00000000 */   nop
/* 94F40 80094340 00002021 */  addu       $a0, $zero, $zero
/* 94F44 80094344 02603021 */  addu       $a2, $s3, $zero
/* 94F48 80094348 02A02821 */  addu       $a1, $s5, $zero
.L8009434C:
/* 94F4C 8009434C 90A30000 */  lbu        $v1, 0x0($a1)
/* 94F50 80094350 90C20000 */  lbu        $v0, 0x0($a2)
/* 94F54 80094354 1462000A */  bne        $v1, $v0, .L80094380
/* 94F58 80094358 24C60001 */   addiu     $a2, $a2, 0x1
/* 94F5C 8009435C 24840001 */  addiu      $a0, $a0, 0x1
/* 94F60 80094360 28820004 */  slti       $v0, $a0, 0x4
/* 94F64 80094364 1440FFF9 */  bnez       $v0, .L8009434C
/* 94F68 80094368 24A50001 */   addiu     $a1, $a1, 0x1
.L8009436C:
/* 94F6C 8009436C 14E00008 */  bnez       $a3, .L80094390
/* 94F70 80094370 00000000 */   nop
/* 94F74 80094374 AE900000 */  sw         $s0, 0x0($s4)
.L80094378:
/* 94F78 80094378 080250EC */  j          .L800943B0
/* 94F7C 8009437C 01001021 */   addu      $v0, $t0, $zero
.L80094380:
/* 94F80 80094380 080250DB */  j          .L8009436C
/* 94F84 80094384 24070001 */   addiu     $a3, $zero, 0x1
.L80094388:
/* 94F88 80094388 080250CB */  j          .L8009432C
/* 94F8C 8009438C 24070001 */   addiu     $a3, $zero, 0x1
.L80094390:
/* 94F90 80094390 8E220050 */  lw         $v0, 0x50($s1)
/* 94F94 80094394 26100001 */  addiu      $s0, $s0, 0x1
/* 94F98 80094398 0202102A */  slt        $v0, $s0, $v0
/* 94F9C 8009439C 1440FFC6 */  bnez       $v0, .L800942B8
/* 94FA0 800943A0 00000000 */   nop
.L800943A4:
/* 94FA4 800943A4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 94FA8 800943A8 AE820000 */  sw         $v0, 0x0($s4)
.L800943AC:
/* 94FAC 800943AC 24020005 */  addiu      $v0, $zero, 0x5
.L800943B0:
/* 94FB0 800943B0 8FBF005C */  lw         $ra, 0x5C($sp)
/* 94FB4 800943B4 8FBE0058 */  lw         $fp, 0x58($sp)
/* 94FB8 800943B8 8FB70054 */  lw         $s7, 0x54($sp)
/* 94FBC 800943BC 8FB60050 */  lw         $s6, 0x50($sp)
/* 94FC0 800943C0 8FB5004C */  lw         $s5, 0x4C($sp)
/* 94FC4 800943C4 8FB40048 */  lw         $s4, 0x48($sp)
/* 94FC8 800943C8 8FB30044 */  lw         $s3, 0x44($sp)
/* 94FCC 800943CC 8FB20040 */  lw         $s2, 0x40($sp)
/* 94FD0 800943D0 8FB1003C */  lw         $s1, 0x3C($sp)
/* 94FD4 800943D4 8FB00038 */  lw         $s0, 0x38($sp)
/* 94FD8 800943D8 03E00008 */  jr         $ra
/* 94FDC 800943DC 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800943E0
/* 94FE0 800943E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 94FE4 800943E4 AFB00038 */  sw         $s0, 0x38($sp)
/* 94FE8 800943E8 00808021 */  addu       $s0, $a0, $zero
/* 94FEC 800943EC AFB1003C */  sw         $s1, 0x3C($sp)
/* 94FF0 800943F0 00A08821 */  addu       $s1, $a1, $zero
/* 94FF4 800943F4 2403001F */  addiu      $v1, $zero, 0x1F
/* 94FF8 800943F8 27A20037 */  addiu      $v0, $sp, 0x37
/* 94FFC 800943FC AFBF0040 */  sw         $ra, 0x40($sp)
.L80094400:
/* 95000 80094400 A0510000 */  sb         $s1, 0x0($v0)
/* 95004 80094404 2463FFFF */  addiu      $v1, $v1, -0x1
/* 95008 80094408 0461FFFD */  bgez       $v1, .L80094400
/* 9500C 8009440C 2442FFFF */   addiu     $v0, $v0, -0x1
/* 95010 80094410 AFA00010 */  sw         $zero, 0x10($sp)
/* 95014 80094414 8E040004 */  lw         $a0, 0x4($s0)
/* 95018 80094418 8E050008 */  lw         $a1, 0x8($s0)
/* 9501C 8009441C 24060400 */  addiu      $a2, $zero, 0x400
/* 95020 80094420 0C0266B8 */  jal        func_80099AE0
/* 95024 80094424 27A70018 */   addiu     $a3, $sp, 0x18
/* 95028 80094428 50400001 */  beql       $v0, $zero, .L80094430
/* 9502C 8009442C A2110065 */   sb        $s1, 0x65($s0)
.L80094430:
/* 95030 80094430 8FBF0040 */  lw         $ra, 0x40($sp)
/* 95034 80094434 8FB1003C */  lw         $s1, 0x3C($sp)
/* 95038 80094438 8FB00038 */  lw         $s0, 0x38($sp)
/* 9503C 8009443C 03E00008 */  jr         $ra
/* 95040 80094440 27BD0048 */   addiu     $sp, $sp, 0x48
/* 95044 80094444 00000000 */  nop
/* 95048 80094448 00000000 */  nop
/* 9504C 8009444C 00000000 */  nop
