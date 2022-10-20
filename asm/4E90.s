.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80004290
/* 4E90 80004290 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4E94 80004294 AFB1001C */  sw         $s1, 0x1C($sp)
/* 4E98 80004298 00008821 */  addu       $s1, $zero, $zero
/* 4E9C 8000429C AFB00018 */  sw         $s0, 0x18($sp)
/* 4EA0 800042A0 3C10800A */  lui        $s0, %hi(D_800A18C0)
/* 4EA4 800042A4 261018C0 */  addiu      $s0, $s0, %lo(D_800A18C0)
/* 4EA8 800042A8 AFBF0020 */  sw         $ra, 0x20($sp)
.L800042AC:
/* 4EAC 800042AC 8E040000 */  lw         $a0, 0x0($s0)
/* 4EB0 800042B0 26100004 */  addiu      $s0, $s0, 0x4
/* 4EB4 800042B4 0C001566 */  jal        func_80005598
/* 4EB8 800042B8 26310001 */   addiu     $s1, $s1, 0x1
/* 4EBC 800042BC 2E220004 */  sltiu      $v0, $s1, 0x4
/* 4EC0 800042C0 1440FFFA */  bnez       $v0, .L800042AC
/* 4EC4 800042C4 24030001 */   addiu     $v1, $zero, 0x1
/* 4EC8 800042C8 3C02800A */  lui        $v0, %hi(D_800A18D0)
/* 4ECC 800042CC 8C4218D0 */  lw         $v0, %lo(D_800A18D0)($v0)
/* 4ED0 800042D0 24420001 */  addiu      $v0, $v0, 0x1
/* 4ED4 800042D4 3C01800A */  lui        $at, %hi(D_800A18D0)
/* 4ED8 800042D8 14430019 */  bne        $v0, $v1, .L80004340
/* 4EDC 800042DC AC2218D0 */   sw        $v0, %lo(D_800A18D0)($at)
/* 4EE0 800042E0 0C0186E5 */  jal        func_80061B94
/* 4EE4 800042E4 00000000 */   nop
/* 4EE8 800042E8 3C05803F */  lui        $a1, %hi(D_803ED3B4)
/* 4EEC 800042EC 24A5D3B4 */  addiu      $a1, $a1, %lo(D_803ED3B4)
/* 4EF0 800042F0 0C0010F6 */  jal        func_800043D8
/* 4EF4 800042F4 00002021 */   addu      $a0, $zero, $zero
/* 4EF8 800042F8 24040001 */  addiu      $a0, $zero, 0x1
/* 4EFC 800042FC 3C01802D */  lui        $at, %hi(D_802D0C58)
/* 4F00 80004300 AC220C58 */  sw         $v0, %lo(D_802D0C58)($at)
/* 4F04 80004304 0C0010F6 */  jal        func_800043D8
/* 4F08 80004308 27A50010 */   addiu     $a1, $sp, 0x10
/* 4F0C 8000430C 24040002 */  addiu      $a0, $zero, 0x2
/* 4F10 80004310 3C01802C */  lui        $at, %hi(D_802C6050)
/* 4F14 80004314 AC226050 */  sw         $v0, %lo(D_802C6050)($at)
/* 4F18 80004318 0C0010F6 */  jal        func_800043D8
/* 4F1C 8000431C 27A50010 */   addiu     $a1, $sp, 0x10
/* 4F20 80004320 24040003 */  addiu      $a0, $zero, 0x3
/* 4F24 80004324 3C01802D */  lui        $at, %hi(D_802D2A50)
/* 4F28 80004328 AC222A50 */  sw         $v0, %lo(D_802D2A50)($at)
/* 4F2C 8000432C 0C0010F6 */  jal        func_800043D8
/* 4F30 80004330 27A50010 */   addiu     $a1, $sp, 0x10
/* 4F34 80004334 8FA50010 */  lw         $a1, 0x10($sp)
/* 4F38 80004338 0C0165AE */  jal        func_800596B8
/* 4F3C 8000433C 00402021 */   addu      $a0, $v0, $zero
.L80004340:
/* 4F40 80004340 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4F44 80004344 8FB1001C */  lw         $s1, 0x1C($sp)
/* 4F48 80004348 8FB00018 */  lw         $s0, 0x18($sp)
/* 4F4C 8000434C 03E00008 */  jr         $ra
/* 4F50 80004350 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80004354
/* 4F54 80004354 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4F58 80004358 AFB10014 */  sw         $s1, 0x14($sp)
/* 4F5C 8000435C 00008821 */  addu       $s1, $zero, $zero
/* 4F60 80004360 AFB00010 */  sw         $s0, 0x10($sp)
/* 4F64 80004364 3C10800A */  lui        $s0, %hi(D_800A18C0)
/* 4F68 80004368 261018C0 */  addiu      $s0, $s0, %lo(D_800A18C0)
/* 4F6C 8000436C AFBF0018 */  sw         $ra, 0x18($sp)
.L80004370:
/* 4F70 80004370 8E040000 */  lw         $a0, 0x0($s0)
/* 4F74 80004374 26100004 */  addiu      $s0, $s0, 0x4
/* 4F78 80004378 0C0015AF */  jal        func_800056BC
/* 4F7C 8000437C 26310001 */   addiu     $s1, $s1, 0x1
/* 4F80 80004380 2E220004 */  sltiu      $v0, $s1, 0x4
/* 4F84 80004384 1440FFFA */  bnez       $v0, .L80004370
/* 4F88 80004388 00000000 */   nop
/* 4F8C 8000438C 3C02800A */  lui        $v0, %hi(D_800A18D0)
/* 4F90 80004390 8C4218D0 */  lw         $v0, %lo(D_800A18D0)($v0)
/* 4F94 80004394 2442FFFF */  addiu      $v0, $v0, -0x1
/* 4F98 80004398 3C01800A */  lui        $at, %hi(D_800A18D0)
/* 4F9C 8000439C 14400009 */  bnez       $v0, .L800043C4
/* 4FA0 800043A0 AC2218D0 */   sw        $v0, %lo(D_800A18D0)($at)
/* 4FA4 800043A4 0C018717 */  jal        func_80061C5C
/* 4FA8 800043A8 00000000 */   nop
/* 4FAC 800043AC 3C01802D */  lui        $at, %hi(D_802D0C58)
/* 4FB0 800043B0 AC200C58 */  sw         $zero, %lo(D_802D0C58)($at)
/* 4FB4 800043B4 3C01802C */  lui        $at, %hi(D_802C6050)
/* 4FB8 800043B8 AC206050 */  sw         $zero, %lo(D_802C6050)($at)
/* 4FBC 800043BC 3C01802D */  lui        $at, %hi(D_802D2A50)
/* 4FC0 800043C0 AC202A50 */  sw         $zero, %lo(D_802D2A50)($at)
.L800043C4:
/* 4FC4 800043C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4FC8 800043C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4FCC 800043CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4FD0 800043D0 03E00008 */  jr         $ra
/* 4FD4 800043D4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800043D8
/* 4FD8 800043D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FDC 800043DC 3C02800A */  lui        $v0, %hi(D_800A18C0)
/* 4FE0 800043E0 244218C0 */  addiu      $v0, $v0, %lo(D_800A18C0)
/* 4FE4 800043E4 00042080 */  sll        $a0, $a0, 2
/* 4FE8 800043E8 00822021 */  addu       $a0, $a0, $v0
/* 4FEC 800043EC AFBF0010 */  sw         $ra, 0x10($sp)
/* 4FF0 800043F0 8C820000 */  lw         $v0, 0x0($a0)
/* 4FF4 800043F4 00021100 */  sll        $v0, $v0, 4
/* 4FF8 800043F8 3C01800A */  lui        $at, %hi(D_800A0738)
/* 4FFC 800043FC 00220821 */  addu       $at, $at, $v0
/* 5000 80004400 8C220738 */  lw         $v0, %lo(D_800A0738)($at)
/* 5004 80004404 ACA20000 */  sw         $v0, 0x0($a1)
/* 5008 80004408 0C0015B7 */  jal        func_800056DC
/* 500C 8000440C 8C840000 */   lw        $a0, 0x0($a0)
/* 5010 80004410 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5014 80004414 03E00008 */  jr         $ra
/* 5018 80004418 27BD0018 */   addiu     $sp, $sp, 0x18
/* 501C 8000441C 00000000 */  nop
