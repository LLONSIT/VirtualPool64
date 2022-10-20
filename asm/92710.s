.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091B10
/* 92710 80091B10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92714 80091B14 AFB00010 */  sw         $s0, 0x10($sp)
/* 92718 80091B18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9271C 80091B1C 0C0005EC */  jal        func_800017B0
/* 92720 80091B20 00808021 */   addu      $s0, $a0, $zero
/* 92724 80091B24 321000FF */  andi       $s0, $s0, 0xFF
/* 92728 80091B28 12000006 */  beqz       $s0, .L80091B44
/* 9272C 80091B2C 00402021 */   addu      $a0, $v0, $zero
/* 92730 80091B30 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92734 80091B34 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 92738 80091B38 94620000 */  lhu        $v0, 0x0($v1)
/* 9273C 80091B3C 080246D5 */  j          .L80091B54
/* 92740 80091B40 34420020 */   ori       $v0, $v0, 0x20
.L80091B44:
/* 92744 80091B44 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92748 80091B48 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 9274C 80091B4C 94620000 */  lhu        $v0, 0x0($v1)
/* 92750 80091B50 3042FFDF */  andi       $v0, $v0, 0xFFDF
.L80091B54:
/* 92754 80091B54 0C0005F4 */  jal        __osRestoreInt
/* 92758 80091B58 A4620000 */   sh        $v0, 0x0($v1)
/* 9275C 80091B5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92760 80091B60 8FB00010 */  lw         $s0, 0x10($sp)
/* 92764 80091B64 03E00008 */  jr         $ra
/* 92768 80091B68 27BD0018 */   addiu     $sp, $sp, 0x18
/* 9276C 80091B6C 00000000 */  nop
