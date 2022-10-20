.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800980A0
/* 98CA0 800980A0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 98CA4 800980A4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 98CA8 800980A8 8C420000 */  lw         $v0, 0x0($v0)
/* 98CAC 800980AC 3042001C */  andi       $v0, $v0, 0x1C
/* 98CB0 800980B0 03E00008 */  jr         $ra
/* 98CB4 800980B4 0002102B */   sltu      $v0, $zero, $v0
/* 98CB8 800980B8 00000000 */  nop
/* 98CBC 800980BC 00000000 */  nop
