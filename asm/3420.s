.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80002820
/* 3420 80002820 14800003 */  bnez       $a0, .L80002830
/* 3424 80002824 00000000 */   nop
/* 3428 80002828 3C04800A */  lui        $a0, %hi(D_800A06C0)
/* 342C 8000282C 8C8406C0 */  lw         $a0, %lo(D_800A06C0)($a0)
.L80002830:
/* 3430 80002830 03E00008 */  jr         $ra
/* 3434 80002834 8C820004 */   lw        $v0, 0x4($a0)
/* 3438 80002838 00000000 */  nop
/* 343C 8000283C 00000000 */  nop
