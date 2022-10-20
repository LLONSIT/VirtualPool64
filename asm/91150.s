.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80090550
/* 91150 80090550 8FA20010 */  lw         $v0, 0x10($sp)
/* 91154 80090554 00E20018 */  mult       $a3, $v0
/* 91158 80090558 00003812 */  mflo       $a3
/* 9115C 8009055C 8CC30008 */  lw         $v1, 0x8($a2)
/* 91160 80090560 8CC20000 */  lw         $v0, 0x0($a2)
/* 91164 80090564 2404FFF0 */  addiu      $a0, $zero, -0x10
/* 91168 80090568 8CC50004 */  lw         $a1, 0x4($a2)
/* 9116C 8009056C 00431021 */  addu       $v0, $v0, $v1
/* 91170 80090570 24E7000F */  addiu      $a3, $a3, 0xF
/* 91174 80090574 00E43824 */  and        $a3, $a3, $a0
/* 91178 80090578 00A72021 */  addu       $a0, $a1, $a3
/* 9117C 8009057C 0044102B */  sltu       $v0, $v0, $a0
/* 91180 80090580 14400003 */  bnez       $v0, .L80090590
/* 91184 80090584 00004021 */   addu      $t0, $zero, $zero
/* 91188 80090588 00A04021 */  addu       $t0, $a1, $zero
/* 9118C 8009058C ACC40004 */  sw         $a0, 0x4($a2)
.L80090590:
/* 91190 80090590 03E00008 */  jr         $ra
/* 91194 80090594 01001021 */   addu      $v0, $t0, $zero
/* 91198 80090598 00000000 */  nop
/* 9119C 8009059C 00000000 */  nop
