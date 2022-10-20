.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091810
/* 92410 80091810 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92414 80091814 AFBF0014 */  sw         $ra, 0x14($sp)
/* 92418 80091818 0C0005EC */  jal        func_800017B0
/* 9241C 8009181C AFB00010 */   sw        $s0, 0x10($sp)
/* 92420 80091820 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92424 80091824 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 92428 80091828 8C700004 */  lw         $s0, 0x4($v1)
/* 9242C 8009182C 0C0005F4 */  jal        __osRestoreInt
/* 92430 80091830 00402021 */   addu      $a0, $v0, $zero
/* 92434 80091834 02001021 */  addu       $v0, $s0, $zero
/* 92438 80091838 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9243C 8009183C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92440 80091840 03E00008 */  jr         $ra
/* 92444 80091844 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92448 80091848 00000000 */  nop
/* 9244C 8009184C 00000000 */  nop
