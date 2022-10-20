.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091AC0
/* 926C0 80091AC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 926C4 80091AC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 926C8 80091AC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 926CC 80091ACC 0C0005EC */  jal        func_800017B0
/* 926D0 80091AD0 00808021 */   addu      $s0, $a0, $zero
/* 926D4 80091AD4 3C04800D */  lui        $a0, %hi(D_800CB264)
/* 926D8 80091AD8 8C84B264 */  lw         $a0, %lo(D_800CB264)($a0)
/* 926DC 80091ADC 94830000 */  lhu        $v1, 0x0($a0)
/* 926E0 80091AE0 AC900004 */  sw         $s0, 0x4($a0)
/* 926E4 80091AE4 34630010 */  ori        $v1, $v1, 0x10
/* 926E8 80091AE8 A4830000 */  sh         $v1, 0x0($a0)
/* 926EC 80091AEC 0C0005F4 */  jal        __osRestoreInt
/* 926F0 80091AF0 00402021 */   addu      $a0, $v0, $zero
/* 926F4 80091AF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 926F8 80091AF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 926FC 80091AFC 03E00008 */  jr         $ra
/* 92700 80091B00 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92704 80091B04 00000000 */  nop
/* 92708 80091B08 00000000 */  nop
/* 9270C 80091B0C 00000000 */  nop
