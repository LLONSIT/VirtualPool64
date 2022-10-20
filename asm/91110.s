.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80090510
/* 91110 80090510 30A3000F */  andi       $v1, $a1, 0xF
/* 91114 80090514 24020010 */  addiu      $v0, $zero, 0x10
/* 91118 80090518 00431823 */  subu       $v1, $v0, $v1
/* 9111C 8009051C 10620003 */  beq        $v1, $v0, .L8009052C
/* 91120 80090520 00A31021 */   addu      $v0, $a1, $v1
/* 91124 80090524 0802414C */  j          .L80090530
/* 91128 80090528 AC820000 */   sw        $v0, 0x0($a0)
.L8009052C:
/* 9112C 8009052C AC850000 */  sw         $a1, 0x0($a0)
.L80090530:
/* 91130 80090530 8C820000 */  lw         $v0, 0x0($a0)
/* 91134 80090534 AC860008 */  sw         $a2, 0x8($a0)
/* 91138 80090538 AC80000C */  sw         $zero, 0xC($a0)
/* 9113C 8009053C 03E00008 */  jr         $ra
/* 91140 80090540 AC820004 */   sw        $v0, 0x4($a0)
/* 91144 80090544 00000000 */  nop
/* 91148 80090548 00000000 */  nop
/* 9114C 8009054C 00000000 */  nop
