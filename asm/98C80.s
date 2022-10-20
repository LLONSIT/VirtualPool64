.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80098080
/* 98C80 80098080 3C02A410 */  lui        $v0, (0xA410000C >> 16)
/* 98C84 80098084 3442000C */  ori        $v0, $v0, (0xA410000C & 0xFFFF)
/* 98C88 80098088 8C420000 */  lw         $v0, 0x0($v0)
/* 98C8C 8009808C 30420100 */  andi       $v0, $v0, 0x100
/* 98C90 80098090 03E00008 */  jr         $ra
/* 98C94 80098094 0002102B */   sltu      $v0, $zero, $v0
/* 98C98 80098098 00000000 */  nop
/* 98C9C 8009809C 00000000 */  nop
