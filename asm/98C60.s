.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80098060
/* 98C60 80098060 3C02A450 */  lui        $v0, (0xA450000C >> 16)
/* 98C64 80098064 3442000C */  ori        $v0, $v0, (0xA450000C & 0xFFFF)
/* 98C68 80098068 8C420000 */  lw         $v0, 0x0($v0)
/* 98C6C 8009806C 03E00008 */  jr         $ra
/* 98C70 80098070 28420000 */   slti      $v0, $v0, 0x0
/* 98C74 80098074 00000000 */  nop
/* 98C78 80098078 00000000 */  nop
/* 98C7C 8009807C 00000000 */  nop
