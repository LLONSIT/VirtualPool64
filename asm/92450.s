.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091850
/* 92450 80091850 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92454 80091854 AFB00010 */  sw         $s0, 0x10($sp)
/* 92458 80091858 00808021 */  addu       $s0, $a0, $zero
/* 9245C 8009185C AFB10014 */  sw         $s1, 0x14($sp)
/* 92460 80091860 00A08821 */  addu       $s1, $a1, $zero
/* 92464 80091864 AFB20018 */  sw         $s2, 0x18($sp)
/* 92468 80091868 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9246C 8009186C 0C0005EC */  jal        func_800017B0
/* 92470 80091870 00C09021 */   addu      $s2, $a2, $zero
/* 92474 80091874 3C03800D */  lui        $v1, %hi(D_800CB264)
/* 92478 80091878 8C63B264 */  lw         $v1, %lo(D_800CB264)($v1)
/* 9247C 8009187C 00402021 */  addu       $a0, $v0, $zero
/* 92480 80091880 AC700010 */  sw         $s0, 0x10($v1)
/* 92484 80091884 AC710014 */  sw         $s1, 0x14($v1)
/* 92488 80091888 0C0005F4 */  jal        __osRestoreInt
/* 9248C 8009188C A4720002 */   sh        $s2, 0x2($v1)
/* 92490 80091890 8FBF001C */  lw         $ra, 0x1C($sp)
/* 92494 80091894 8FB20018 */  lw         $s2, 0x18($sp)
/* 92498 80091898 8FB10014 */  lw         $s1, 0x14($sp)
/* 9249C 8009189C 8FB00010 */  lw         $s0, 0x10($sp)
/* 924A0 800918A0 03E00008 */  jr         $ra
/* 924A4 800918A4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 924A8 800918A8 00000000 */  nop
/* 924AC 800918AC 00000000 */  nop
