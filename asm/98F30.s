.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80098330
/* 98F30 80098330 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98F34 80098334 24020001 */  addiu      $v0, $zero, 0x1
/* 98F38 80098338 AFB00010 */  sw         $s0, 0x10($sp)
/* 98F3C 8009833C 3C10803F */  lui        $s0, %hi(D_803F6B50)
/* 98F40 80098340 26106B50 */  addiu      $s0, $s0, %lo(D_803F6B50)
/* 98F44 80098344 02002021 */  addu       $a0, $s0, $zero
/* 98F48 80098348 3C05802C */  lui        $a1, %hi(D_802C57C0)
/* 98F4C 8009834C 24A557C0 */  addiu      $a1, $a1, %lo(D_802C57C0)
/* 98F50 80098350 AFBF0014 */  sw         $ra, 0x14($sp)
/* 98F54 80098354 3C01800D */  lui        $at, %hi(D_800CB270)
/* 98F58 80098358 AC22B270 */  sw         $v0, %lo(D_800CB270)($at)
/* 98F5C 8009835C 0C0009FC */  jal        func_800027F0
/* 98F60 80098360 24060001 */   addiu     $a2, $zero, 0x1
/* 98F64 80098364 02002021 */  addu       $a0, $s0, $zero
/* 98F68 80098368 00002821 */  addu       $a1, $zero, $zero
/* 98F6C 8009836C 0C000B9C */  jal        osSendMesg
/* 98F70 80098370 00003021 */   addu      $a2, $zero, $zero
/* 98F74 80098374 8FBF0014 */  lw         $ra, 0x14($sp)
/* 98F78 80098378 8FB00010 */  lw         $s0, 0x10($sp)
/* 98F7C 8009837C 03E00008 */  jr         $ra
/* 98F80 80098380 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80098384
/* 98F84 80098384 3C02800D */  lui        $v0, %hi(D_800CB270)
/* 98F88 80098388 8C42B270 */  lw         $v0, %lo(D_800CB270)($v0)
/* 98F8C 8009838C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 98F90 80098390 1440000F */  bnez       $v0, .L800983D0
/* 98F94 80098394 AFBF0018 */   sw        $ra, 0x18($sp)
/* 98F98 80098398 24020001 */  addiu      $v0, $zero, 0x1
/* 98F9C 8009839C 3C01800D */  lui        $at, %hi(D_800CB270)
/* 98FA0 800983A0 AC22B270 */  sw         $v0, %lo(D_800CB270)($at)
/* 98FA4 800983A4 3C04803F */  lui        $a0, %hi(D_803F6B50)
/* 98FA8 800983A8 24846B50 */  addiu      $a0, $a0, %lo(D_803F6B50)
/* 98FAC 800983AC 3C05802C */  lui        $a1, %hi(D_802C57C0)
/* 98FB0 800983B0 24A557C0 */  addiu      $a1, $a1, %lo(D_802C57C0)
/* 98FB4 800983B4 0C0009FC */  jal        func_800027F0
/* 98FB8 800983B8 24060001 */   addiu     $a2, $zero, 0x1
/* 98FBC 800983BC 3C04803F */  lui        $a0, %hi(D_803F6B50)
/* 98FC0 800983C0 24846B50 */  addiu      $a0, $a0, %lo(D_803F6B50)
/* 98FC4 800983C4 00002821 */  addu       $a1, $zero, $zero
/* 98FC8 800983C8 0C000B9C */  jal        osSendMesg
/* 98FCC 800983CC 00003021 */   addu      $a2, $zero, $zero
.L800983D0:
/* 98FD0 800983D0 3C04803F */  lui        $a0, %hi(D_803F6B50)
/* 98FD4 800983D4 24846B50 */  addiu      $a0, $a0, %lo(D_803F6B50)
/* 98FD8 800983D8 27A50010 */  addiu      $a1, $sp, 0x10
/* 98FDC 800983DC 0C000B3C */  jal        osRecvMesg
/* 98FE0 800983E0 24060001 */   addiu     $a2, $zero, 0x1
/* 98FE4 800983E4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 98FE8 800983E8 03E00008 */  jr         $ra
/* 98FEC 800983EC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800983F0
/* 98FF0 800983F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98FF4 800983F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 98FF8 800983F8 3C04803F */  lui        $a0, %hi(D_803F6B50)
/* 98FFC 800983FC 24846B50 */  addiu      $a0, $a0, %lo(D_803F6B50)
/* 99000 80098400 00002821 */  addu       $a1, $zero, $zero
/* 99004 80098404 0C000B9C */  jal        osSendMesg
/* 99008 80098408 00003021 */   addu      $a2, $zero, $zero
/* 9900C 8009840C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 99010 80098410 03E00008 */  jr         $ra
/* 99014 80098414 27BD0018 */   addiu     $sp, $sp, 0x18
/* 99018 80098418 00000000 */  nop
/* 9901C 8009841C 00000000 */  nop
