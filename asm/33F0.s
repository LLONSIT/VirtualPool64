.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800027F0
/* 33F0 800027F0 3C02800A */  lui        $v0, %hi(D_800A06B0)
/* 33F4 800027F4 244206B0 */  addiu      $v0, $v0, %lo(D_800A06B0)
/* 33F8 800027F8 AC820000 */  sw         $v0, 0x0($a0)
/* 33FC 800027FC AC820004 */  sw         $v0, 0x4($a0)
/* 3400 80002800 AC800008 */  sw         $zero, 0x8($a0)
/* 3404 80002804 AC80000C */  sw         $zero, 0xC($a0)
/* 3408 80002808 AC860010 */  sw         $a2, 0x10($a0)
/* 340C 8000280C 03E00008 */  jr         $ra
/* 3410 80002810 AC850014 */   sw        $a1, 0x14($a0)
/* 3414 80002814 00000000 */  nop
/* 3418 80002818 00000000 */  nop
/* 341C 8000281C 00000000 */  nop
