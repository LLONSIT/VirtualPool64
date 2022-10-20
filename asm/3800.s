.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osSiCreateAccessQueue
/* 3800 80002C00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3804 80002C04 24020001 */  addiu      $v0, $zero, 0x1
/* 3808 80002C08 AFB00010 */  sw         $s0, 0x10($sp)
/* 380C 80002C0C 3C10802F */  lui        $s0, %hi(D_802EF7B8)
/* 3810 80002C10 2610F7B8 */  addiu      $s0, $s0, %lo(D_802EF7B8)
/* 3814 80002C14 02002021 */  addu       $a0, $s0, $zero
/* 3818 80002C18 3C05800E */  lui        $a1, %hi(D_800DA070)
/* 381C 80002C1C 24A5A070 */  addiu      $a1, $a1, %lo(D_800DA070)
/* 3820 80002C20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3824 80002C24 3C01800A */  lui        $at, %hi(D_800A0720)
/* 3828 80002C28 AC220720 */  sw         $v0, %lo(D_800A0720)($at)
/* 382C 80002C2C 0C0009FC */  jal        func_800027F0
/* 3830 80002C30 24060001 */   addiu     $a2, $zero, 0x1
/* 3834 80002C34 02002021 */  addu       $a0, $s0, $zero
/* 3838 80002C38 00002821 */  addu       $a1, $zero, $zero
/* 383C 80002C3C 0C000B9C */  jal        osSendMesg
/* 3840 80002C40 00003021 */   addu      $a2, $zero, $zero
/* 3844 80002C44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3848 80002C48 8FB00010 */  lw         $s0, 0x10($sp)
/* 384C 80002C4C 03E00008 */  jr         $ra
/* 3850 80002C50 27BD0018 */   addiu     $sp, $sp, 0x18

glabel __osSiGetAccess
/* 3854 80002C54 3C02800A */  lui        $v0, %hi(D_800A0720)
/* 3858 80002C58 8C420720 */  lw         $v0, %lo(D_800A0720)($v0)
/* 385C 80002C5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3860 80002C60 1440000F */  bnez       $v0, .L80002CA0
/* 3864 80002C64 AFBF0018 */   sw        $ra, 0x18($sp)
/* 3868 80002C68 24020001 */  addiu      $v0, $zero, 0x1
/* 386C 80002C6C 3C01800A */  lui        $at, %hi(D_800A0720)
/* 3870 80002C70 AC220720 */  sw         $v0, %lo(D_800A0720)($at)
/* 3874 80002C74 3C04802F */  lui        $a0, %hi(D_802EF7B8)
/* 3878 80002C78 2484F7B8 */  addiu      $a0, $a0, %lo(D_802EF7B8)
/* 387C 80002C7C 3C05800E */  lui        $a1, %hi(D_800DA070)
/* 3880 80002C80 24A5A070 */  addiu      $a1, $a1, %lo(D_800DA070)
/* 3884 80002C84 0C0009FC */  jal        func_800027F0
/* 3888 80002C88 24060001 */   addiu     $a2, $zero, 0x1
/* 388C 80002C8C 3C04802F */  lui        $a0, %hi(D_802EF7B8)
/* 3890 80002C90 2484F7B8 */  addiu      $a0, $a0, %lo(D_802EF7B8)
/* 3894 80002C94 00002821 */  addu       $a1, $zero, $zero
/* 3898 80002C98 0C000B9C */  jal        osSendMesg
/* 389C 80002C9C 00003021 */   addu      $a2, $zero, $zero
.L80002CA0:
/* 38A0 80002CA0 3C04802F */  lui        $a0, %hi(D_802EF7B8)
/* 38A4 80002CA4 2484F7B8 */  addiu      $a0, $a0, %lo(D_802EF7B8)
/* 38A8 80002CA8 27A50010 */  addiu      $a1, $sp, 0x10
/* 38AC 80002CAC 0C000B3C */  jal        osRecvMesg
/* 38B0 80002CB0 24060001 */   addiu     $a2, $zero, 0x1
/* 38B4 80002CB4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 38B8 80002CB8 03E00008 */  jr         $ra
/* 38BC 80002CBC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel __osSiRelAccess
/* 38C0 80002CC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 38C4 80002CC4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 38C8 80002CC8 3C04802F */  lui        $a0, %hi(D_802EF7B8)
/* 38CC 80002CCC 2484F7B8 */  addiu      $a0, $a0, %lo(D_802EF7B8)
/* 38D0 80002CD0 00002821 */  addu       $a1, $zero, $zero
/* 38D4 80002CD4 0C000B9C */  jal        osSendMesg
/* 38D8 80002CD8 00003021 */   addu      $a2, $zero, $zero
/* 38DC 80002CDC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 38E0 80002CE0 03E00008 */  jr         $ra
/* 38E4 80002CE4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 38E8 80002CE8 00000000 */  nop
/* 38EC 80002CEC 00000000 */  nop
