.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osResetGlobalIntMask
/* 3A20 80002E20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A24 80002E24 AFB00010 */  sw         $s0, 0x10($sp)
/* 3A28 80002E28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A2C 80002E2C 0C0005EC */  jal        func_800017B0
/* 3A30 80002E30 00808021 */   addu      $s0, $a0, $zero
/* 3A34 80002E34 3C03800A */  lui        $v1, %hi(D_800A06A0)
/* 3A38 80002E38 8C6306A0 */  lw         $v1, %lo(D_800A06A0)($v1)
/* 3A3C 80002E3C 00108027 */  nor        $s0, $zero, $s0
/* 3A40 80002E40 36100401 */  ori        $s0, $s0, 0x401
/* 3A44 80002E44 00701824 */  and        $v1, $v1, $s0
/* 3A48 80002E48 3C01800A */  lui        $at, %hi(D_800A06A0)
/* 3A4C 80002E4C AC2306A0 */  sw         $v1, %lo(D_800A06A0)($at)
/* 3A50 80002E50 0C0005F4 */  jal        __osRestoreInt
/* 3A54 80002E54 00402021 */   addu      $a0, $v0, $zero
/* 3A58 80002E58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A5C 80002E5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3A60 80002E60 03E00008 */  jr         $ra
/* 3A64 80002E64 27BD0018 */   addiu     $sp, $sp, 0x18
/* 3A68 80002E68 00000000 */  nop
/* 3A6C 80002E6C 00000000 */  nop
