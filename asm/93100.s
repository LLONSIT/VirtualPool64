.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80092500
/* 93100 80092500 AFA50004 */  sw         $a1, 0x4($sp)
/* 93104 80092504 AFA60008 */  sw         $a2, 0x8($sp)
/* 93108 80092508 AFA7000C */  sw         $a3, 0xC($sp)
/* 9310C 8009250C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 93110 80092510 AFB00010 */  sw         $s0, 0x10($sp)
/* 93114 80092514 00808021 */  addu       $s0, $a0, $zero
/* 93118 80092518 00A03021 */  addu       $a2, $a1, $zero
/* 9311C 8009251C 3C048009 */  lui        $a0, %hi(func_80092558)
/* 93120 80092520 24842558 */  addiu      $a0, $a0, %lo(func_80092558)
/* 93124 80092524 02002821 */  addu       $a1, $s0, $zero
/* 93128 80092528 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9312C 8009252C 0C026110 */  jal        func_80098440
/* 93130 80092530 27A70020 */   addiu     $a3, $sp, 0x20
/* 93134 80092534 00401821 */  addu       $v1, $v0, $zero
/* 93138 80092538 04600002 */  bltz       $v1, .L80092544
/* 9313C 8009253C 02031021 */   addu      $v0, $s0, $v1
/* 93140 80092540 A0400000 */  sb         $zero, 0x0($v0)
.L80092544:
/* 93144 80092544 00601021 */  addu       $v0, $v1, $zero
/* 93148 80092548 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9314C 8009254C 8FB00010 */  lw         $s0, 0x10($sp)
/* 93150 80092550 03E00008 */  jr         $ra
/* 93154 80092554 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80092558
/* 93158 80092558 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9315C 8009255C AFB10014 */  sw         $s1, 0x14($sp)
/* 93160 80092560 00808821 */  addu       $s1, $a0, $zero
/* 93164 80092564 AFB00010 */  sw         $s0, 0x10($sp)
/* 93168 80092568 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9316C 8009256C 0C024933 */  jal        func_800924CC
/* 93170 80092570 00C08021 */   addu      $s0, $a2, $zero
/* 93174 80092574 02301021 */  addu       $v0, $s1, $s0
/* 93178 80092578 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9317C 8009257C 8FB10014 */  lw         $s1, 0x14($sp)
/* 93180 80092580 8FB00010 */  lw         $s0, 0x10($sp)
/* 93184 80092584 03E00008 */  jr         $ra
/* 93188 80092588 27BD0020 */   addiu     $sp, $sp, 0x20
/* 9318C 8009258C 00000000 */  nop
