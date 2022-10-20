.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osSetEventMesg
/* 26C0 80001AC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 26C4 80001AC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 26C8 80001AC8 00808021 */  addu       $s0, $a0, $zero
/* 26CC 80001ACC AFB10014 */  sw         $s1, 0x14($sp)
/* 26D0 80001AD0 00A08821 */  addu       $s1, $a1, $zero
/* 26D4 80001AD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 26D8 80001AD8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 26DC 80001ADC 0C0005EC */  jal        func_800017B0
/* 26E0 80001AE0 00C09021 */   addu      $s2, $a2, $zero
/* 26E4 80001AE4 001080C0 */  sll        $s0, $s0, 3
/* 26E8 80001AE8 3C03803F */  lui        $v1, %hi(D_803EF8A0)
/* 26EC 80001AEC 2463F8A0 */  addiu      $v1, $v1, %lo(D_803EF8A0)
/* 26F0 80001AF0 02038021 */  addu       $s0, $s0, $v1
/* 26F4 80001AF4 00402021 */  addu       $a0, $v0, $zero
/* 26F8 80001AF8 AE110000 */  sw         $s1, 0x0($s0)
/* 26FC 80001AFC 0C0005F4 */  jal        __osRestoreInt
/* 2700 80001B00 AE120004 */   sw        $s2, 0x4($s0)
/* 2704 80001B04 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2708 80001B08 8FB20018 */  lw         $s2, 0x18($sp)
/* 270C 80001B0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 2710 80001B10 8FB00010 */  lw         $s0, 0x10($sp)
/* 2714 80001B14 03E00008 */  jr         $ra
/* 2718 80001B18 27BD0020 */   addiu     $sp, $sp, 0x20
/* 271C 80001B1C 00000000 */  nop
