.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_80001990
/* 2590 80001990 40085000 */  mfc0       $t0, $10
/* 2594 80001994 2409001F */  addiu      $t1, $zero, 0x1F
/* 2598 80001998 40890000 */  mtc0       $t1, $0
/* 259C 8000199C 40802800 */  mtc0       $zero, $5
/* 25A0 800019A0 240A0017 */  addiu      $t2, $zero, 0x17
/* 25A4 800019A4 3C09C000 */  lui        $t1, (0xC0000000 >> 16)
/* 25A8 800019A8 40895000 */  mtc0       $t1, $10
/* 25AC 800019AC 3C098000 */  lui        $t1, (0x80000000 >> 16)
/* 25B0 800019B0 00095982 */  srl        $t3, $t1, 6
/* 25B4 800019B4 016A5825 */  or         $t3, $t3, $t2
/* 25B8 800019B8 408B1000 */  mtc0       $t3, $2
/* 25BC 800019BC 24090001 */  addiu      $t1, $zero, 0x1
/* 25C0 800019C0 40891800 */  mtc0       $t1, $3
/* 25C4 800019C4 00000000 */  nop
/* 25C8 800019C8 42000002 */  tlbwi
/* 25CC 800019CC 00000000 */  nop
/* 25D0 800019D0 00000000 */  nop
/* 25D4 800019D4 00000000 */  nop
/* 25D8 800019D8 00000000 */  nop
/* 25DC 800019DC 40885000 */  mtc0       $t0, $10
/* 25E0 800019E0 03E00008 */  jr         $ra
/* 25E4 800019E4 00000000 */   nop
/* 25E8 800019E8 00000000 */  nop
/* 25EC 800019EC 00000000 */  nop
