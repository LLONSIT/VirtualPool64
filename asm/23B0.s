.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_800017B0
/* 23B0 800017B0 40086000 */  mfc0       $t0, $12
/* 23B4 800017B4 2401FFFE */  addiu      $at, $zero, -0x2
/* 23B8 800017B8 01014824 */  and        $t1, $t0, $at
/* 23BC 800017BC 40896000 */  mtc0       $t1, $12
/* 23C0 800017C0 31020001 */  andi       $v0, $t0, 0x1
/* 23C4 800017C4 00000000 */  nop
/* 23C8 800017C8 03E00008 */  jr         $ra
/* 23CC 800017CC 00000000 */   nop

# Handwritten function
glabel __osRestoreInt
/* 23D0 800017D0 40086000 */  mfc0       $t0, $12
/* 23D4 800017D4 01044025 */  or         $t0, $t0, $a0
/* 23D8 800017D8 40886000 */  mtc0       $t0, $12
/* 23DC 800017DC 00000000 */  nop
/* 23E0 800017E0 00000000 */  nop
/* 23E4 800017E4 03E00008 */  jr         $ra
/* 23E8 800017E8 00000000 */   nop
/* 23EC 800017EC 00000000 */  nop
/* 23F0 800017F0 00000000 */  nop
/* 23F4 800017F4 00000000 */  nop
/* 23F8 800017F8 00000000 */  nop
/* 23FC 800017FC 00000000 */  nop
/* 2400 80001800 00000000 */  nop
/* 2404 80001804 00000000 */  nop
/* 2408 80001808 00000000 */  nop
/* 240C 8000180C 00000000 */  nop
/* 2410 80001810 00000000 */  nop
/* 2414 80001814 00000000 */  nop
/* 2418 80001818 00000000 */  nop
/* 241C 8000181C 00000000 */  nop
/* 2420 80001820 00000000 */  nop
/* 2424 80001824 00000000 */  nop
/* 2428 80001828 00000000 */  nop
/* 242C 8000182C 00000000 */  nop
/* 2430 80001830 00000000 */  nop
/* 2434 80001834 00000000 */  nop
/* 2438 80001838 00000000 */  nop
/* 243C 8000183C 00000000 */  nop
/* 2440 80001840 00000000 */  nop
/* 2444 80001844 00000000 */  nop
/* 2448 80001848 00000000 */  nop
/* 244C 8000184C 00000000 */  nop
