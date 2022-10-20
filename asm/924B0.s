.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800918B0
/* 924B0 800918B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 924B4 800918B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 924B8 800918B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 924BC 800918BC 0C0005EC */  jal        func_800017B0
/* 924C0 800918C0 00808021 */   addu      $s0, $a0, $zero
/* 924C4 800918C4 3C04800D */  lui        $a0, %hi(D_800CB264)
/* 924C8 800918C8 8C84B264 */  lw         $a0, %lo(D_800CB264)($a0)
/* 924CC 800918CC AC900008 */  sw         $s0, 0x8($a0)
/* 924D0 800918D0 8C850008 */  lw         $a1, 0x8($a0)
/* 924D4 800918D4 24030001 */  addiu      $v1, $zero, 0x1
/* 924D8 800918D8 A4830000 */  sh         $v1, 0x0($a0)
/* 924DC 800918DC 8CA30004 */  lw         $v1, 0x4($a1)
/* 924E0 800918E0 AC83000C */  sw         $v1, 0xC($a0)
/* 924E4 800918E4 0C0005F4 */  jal        __osRestoreInt
/* 924E8 800918E8 00402021 */   addu      $a0, $v0, $zero
/* 924EC 800918EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 924F0 800918F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 924F4 800918F4 03E00008 */  jr         $ra
/* 924F8 800918F8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 924FC 800918FC 00000000 */  nop
