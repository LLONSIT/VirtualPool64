.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osVirtualToPhysical
/* 2720 80001B20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2724 80001B24 3C031FFF */  lui        $v1, (0x1FFFFFFF >> 16)
/* 2728 80001B28 3463FFFF */  ori        $v1, $v1, (0x1FFFFFFF & 0xFFFF)
/* 272C 80001B2C 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 2730 80001B30 00821023 */  subu       $v0, $a0, $v0
/* 2734 80001B34 0062102B */  sltu       $v0, $v1, $v0
/* 2738 80001B38 1040000A */  beqz       $v0, .L80001B64
/* 273C 80001B3C AFBF0010 */   sw        $ra, 0x10($sp)
/* 2740 80001B40 3C026000 */  lui        $v0, (0x60000000 >> 16)
/* 2744 80001B44 00821021 */  addu       $v0, $a0, $v0
/* 2748 80001B48 0062102B */  sltu       $v0, $v1, $v0
/* 274C 80001B4C 10400006 */  beqz       $v0, .L80001B68
/* 2750 80001B50 00831024 */   and       $v0, $a0, $v1
/* 2754 80001B54 0C000890 */  jal        __osProbeTLB
/* 2758 80001B58 00000000 */   nop
/* 275C 80001B5C 080006DA */  j          .L80001B68
/* 2760 80001B60 00000000 */   nop
.L80001B64:
/* 2764 80001B64 00831024 */  and        $v0, $a0, $v1
.L80001B68:
/* 2768 80001B68 8FBF0010 */  lw         $ra, 0x10($sp)
/* 276C 80001B6C 03E00008 */  jr         $ra
/* 2770 80001B70 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2774 80001B74 00000000 */  nop
/* 2778 80001B78 00000000 */  nop
/* 277C 80001B7C 00000000 */  nop
