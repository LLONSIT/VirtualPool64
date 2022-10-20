.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800920A0
/* 92CA0 800920A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92CA4 800920A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 92CA8 800920A8 00808021 */  addu       $s0, $a0, $zero
/* 92CAC 800920AC 8FA40028 */  lw         $a0, 0x28($sp)
/* 92CB0 800920B0 3C02800A */  lui        $v0, %hi(D_800A06F0)
/* 92CB4 800920B4 8C4206F0 */  lw         $v0, %lo(D_800A06F0)($v0)
/* 92CB8 800920B8 8FA8002C */  lw         $t0, 0x2C($sp)
/* 92CBC 800920BC 8FA30030 */  lw         $v1, 0x30($sp)
/* 92CC0 800920C0 14400003 */  bnez       $v0, .L800920D0
/* 92CC4 800920C4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 92CC8 800920C8 0802484E */  j          .L80092138
/* 92CCC 800920CC 2402FFFF */   addiu     $v0, $zero, -0x1
.L800920D0:
/* 92CD0 800920D0 14C00002 */  bnez       $a2, .L800920DC
/* 92CD4 800920D4 2402000C */   addiu     $v0, $zero, 0xC
/* 92CD8 800920D8 2402000B */  addiu      $v0, $zero, 0xB
.L800920DC:
/* 92CDC 800920DC A6020000 */  sh         $v0, 0x0($s0)
/* 92CE0 800920E0 24020001 */  addiu      $v0, $zero, 0x1
/* 92CE4 800920E4 A2050002 */  sb         $a1, 0x2($s0)
/* 92CE8 800920E8 AE030004 */  sw         $v1, 0x4($s0)
/* 92CEC 800920EC AE040008 */  sw         $a0, 0x8($s0)
/* 92CF0 800920F0 AE07000C */  sw         $a3, 0xC($s0)
/* 92CF4 800920F4 AE080010 */  sw         $t0, 0x10($s0)
/* 92CF8 800920F8 14A20009 */  bne        $a1, $v0, .L80092120
/* 92CFC 800920FC AE000014 */   sw        $zero, 0x14($s0)
/* 92D00 80092100 0C026108 */  jal        func_80098420
/* 92D04 80092104 00000000 */   nop
/* 92D08 80092108 00402021 */  addu       $a0, $v0, $zero
/* 92D0C 8009210C 02002821 */  addu       $a1, $s0, $zero
/* 92D10 80092110 0C0252DC */  jal        func_80094B70
/* 92D14 80092114 00003021 */   addu      $a2, $zero, $zero
/* 92D18 80092118 0802484E */  j          .L80092138
/* 92D1C 8009211C 00000000 */   nop
.L80092120:
/* 92D20 80092120 0C026108 */  jal        func_80098420
/* 92D24 80092124 00000000 */   nop
/* 92D28 80092128 00402021 */  addu       $a0, $v0, $zero
/* 92D2C 8009212C 02002821 */  addu       $a1, $s0, $zero
/* 92D30 80092130 0C000B9C */  jal        osSendMesg
/* 92D34 80092134 00003021 */   addu      $a2, $zero, $zero
.L80092138:
/* 92D38 80092138 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92D3C 8009213C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92D40 80092140 03E00008 */  jr         $ra
/* 92D44 80092144 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92D48 80092148 00000000 */  nop
/* 92D4C 8009214C 00000000 */  nop
