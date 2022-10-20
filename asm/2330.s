.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_80001730
/* 2330 80001730 18A00011 */  blez       $a1, .L80001778
/* 2334 80001734 00000000 */   nop
/* 2338 80001738 240B4000 */  addiu      $t3, $zero, 0x4000
/* 233C 8000173C 00AB082B */  sltu       $at, $a1, $t3
/* 2340 80001740 1020000F */  beqz       $at, .L80001780
/* 2344 80001744 00000000 */   nop
/* 2348 80001748 00804021 */  addu       $t0, $a0, $zero
/* 234C 8000174C 00854821 */  addu       $t1, $a0, $a1
/* 2350 80001750 0109082B */  sltu       $at, $t0, $t1
/* 2354 80001754 10200008 */  beqz       $at, .L80001778
/* 2358 80001758 00000000 */   nop
/* 235C 8000175C 2529FFE0 */  addiu      $t1, $t1, -0x20
/* 2360 80001760 310A001F */  andi       $t2, $t0, 0x1F
/* 2364 80001764 010A4023 */  subu       $t0, $t0, $t2
.L80001768:
/* 2368 80001768 BD100000 */  cache      0x10, 0x0($t0)
/* 236C 8000176C 0109082B */  sltu       $at, $t0, $t1
/* 2370 80001770 1420FFFD */  bnez       $at, .L80001768
/* 2374 80001774 25080020 */   addiu     $t0, $t0, 0x20
.L80001778:
/* 2378 80001778 03E00008 */  jr         $ra
/* 237C 8000177C 00000000 */   nop
.L80001780:
/* 2380 80001780 3C088000 */  lui        $t0, 0x8000
/* 2384 80001784 010B4821 */  addu       $t1, $t0, $t3
/* 2388 80001788 2529FFE0 */  addiu      $t1, $t1, -0x20
.L8000178C:
/* 238C 8000178C BD000000 */  cache      0x00, 0x0($t0)
/* 2390 80001790 0109082B */  sltu       $at, $t0, $t1
/* 2394 80001794 1420FFFD */  bnez       $at, .L8000178C
/* 2398 80001798 25080020 */   addiu     $t0, $t0, 0x20
/* 239C 8000179C 03E00008 */  jr         $ra
/* 23A0 800017A0 00000000 */   nop
/* 23A4 800017A4 00000000 */  nop
/* 23A8 800017A8 00000000 */  nop
/* 23AC 800017AC 00000000 */  nop
