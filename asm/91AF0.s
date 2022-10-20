.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80090EF0
/* 91AF0 80090EF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91AF4 80090EF4 AFB00010 */  sw         $s0, 0x10($sp)
/* 91AF8 80090EF8 00A08021 */  addu       $s0, $a1, $zero
/* 91AFC 80090EFC AFBF001C */  sw         $ra, 0x1C($sp)
/* 91B00 80090F00 AFB20018 */  sw         $s2, 0x18($sp)
/* 91B04 80090F04 AFB10014 */  sw         $s1, 0x14($sp)
/* 91B08 80090F08 8E020008 */  lw         $v0, 0x8($s0)
/* 91B0C 80090F0C 00808821 */  addu       $s1, $a0, $zero
/* 91B10 80090F10 10400016 */  beqz       $v0, .L80090F6C
/* 91B14 80090F14 00C09021 */   addu      $s2, $a2, $zero
/* 91B18 80090F18 0C024287 */  jal        func_80090A1C
/* 91B1C 80090F1C 00000000 */   nop
/* 91B20 80090F20 00403021 */  addu       $a2, $v0, $zero
/* 91B24 80090F24 10C00011 */  beqz       $a2, .L80090F6C
/* 91B28 80090F28 00000000 */   nop
/* 91B2C 80090F2C 8E020008 */  lw         $v0, 0x8($s0)
/* 91B30 80090F30 8E23001C */  lw         $v1, 0x1C($s1)
/* 91B34 80090F34 8C4400D8 */  lw         $a0, 0xD8($v0)
/* 91B38 80090F38 2402000E */  addiu      $v0, $zero, 0xE
/* 91B3C 80090F3C A4C20008 */  sh         $v0, 0x8($a2)
/* 91B40 80090F40 ACD2000C */  sw         $s2, 0xC($a2)
/* 91B44 80090F44 ACC00000 */  sw         $zero, 0x0($a2)
/* 91B48 80090F48 00641821 */  addu       $v1, $v1, $a0
/* 91B4C 80090F4C ACC30004 */  sw         $v1, 0x4($a2)
/* 91B50 80090F50 9602001A */  lhu        $v0, 0x1A($s0)
/* 91B54 80090F54 A4C2000A */  sh         $v0, 0xA($a2)
/* 91B58 80090F58 8E020008 */  lw         $v0, 0x8($s0)
/* 91B5C 80090F5C 8C44000C */  lw         $a0, 0xC($v0)
/* 91B60 80090F60 8C820008 */  lw         $v0, 0x8($a0)
/* 91B64 80090F64 0040F809 */  jalr       $v0
/* 91B68 80090F68 24050003 */   addiu     $a1, $zero, 0x3
.L80090F6C:
/* 91B6C 80090F6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 91B70 80090F70 8FB20018 */  lw         $s2, 0x18($sp)
/* 91B74 80090F74 8FB10014 */  lw         $s1, 0x14($sp)
/* 91B78 80090F78 8FB00010 */  lw         $s0, 0x10($sp)
/* 91B7C 80090F7C 03E00008 */  jr         $ra
/* 91B80 80090F80 27BD0020 */   addiu     $sp, $sp, 0x20
/* 91B84 80090F84 00000000 */  nop
/* 91B88 80090F88 00000000 */  nop
/* 91B8C 80090F8C 00000000 */  nop
