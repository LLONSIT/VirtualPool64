.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80000A70
/* 1670 80000A70 8C820000 */  lw         $v0, 0x0($a0)
/* 1674 80000A74 10400009 */  beqz       $v0, .L80000A9C
/* 1678 80000A78 00000000 */   nop
.L80000A7C:
/* 167C 80000A7C 54450004 */  bnel       $v0, $a1, .L80000A90
/* 1680 80000A80 00402021 */   addu      $a0, $v0, $zero
/* 1684 80000A84 8C420000 */  lw         $v0, 0x0($v0)
/* 1688 80000A88 080002A7 */  j          .L80000A9C
/* 168C 80000A8C AC820000 */   sw        $v0, 0x0($a0)
.L80000A90:
/* 1690 80000A90 8C420000 */  lw         $v0, 0x0($v0)
/* 1694 80000A94 1440FFF9 */  bnez       $v0, .L80000A7C
/* 1698 80000A98 00000000 */   nop
.L80000A9C:
/* 169C 80000A9C 03E00008 */  jr         $ra
/* 16A0 80000AA0 00000000 */   nop
/* 16A4 80000AA4 00000000 */  nop
/* 16A8 80000AA8 00000000 */  nop
/* 16AC 80000AAC 00000000 */  nop
