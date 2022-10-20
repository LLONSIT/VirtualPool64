.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80090460
/* 91060 80090460 3C02800D */  lui        $v0, %hi(D_800C9D80)
/* 91064 80090464 8C429D80 */  lw         $v0, %lo(D_800C9D80)($v0)
/* 91068 80090468 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9106C 8009046C 14400004 */  bnez       $v0, .L80090480
/* 91070 80090470 AFBF0010 */   sw        $ra, 0x10($sp)
/* 91074 80090474 3C01800D */  lui        $at, %hi(D_800C9D80)
/* 91078 80090478 0C024168 */  jal        func_800905A0
/* 9107C 8009047C AC249D80 */   sw        $a0, %lo(D_800C9D80)($at)
.L80090480:
/* 91080 80090480 8FBF0010 */  lw         $ra, 0x10($sp)
/* 91084 80090484 03E00008 */  jr         $ra
/* 91088 80090488 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8009048C
/* 9108C 8009048C 3C02800D */  lui        $v0, %hi(D_800C9D80)
/* 91090 80090490 8C429D80 */  lw         $v0, %lo(D_800C9D80)($v0)
/* 91094 80090494 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 91098 80090498 10400005 */  beqz       $v0, .L800904B0
/* 9109C 8009049C AFBF0010 */   sw        $ra, 0x10($sp)
/* 910A0 800904A0 0C02430C */  jal        func_80090C30
/* 910A4 800904A4 00000000 */   nop
/* 910A8 800904A8 3C01800D */  lui        $at, %hi(D_800C9D80)
/* 910AC 800904AC AC209D80 */  sw         $zero, %lo(D_800C9D80)($at)
.L800904B0:
/* 910B0 800904B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 910B4 800904B4 03E00008 */  jr         $ra
/* 910B8 800904B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800904BC
/* 910BC 800904BC 8CA20000 */  lw         $v0, 0x0($a1)
/* 910C0 800904C0 AC850004 */  sw         $a1, 0x4($a0)
/* 910C4 800904C4 AC820000 */  sw         $v0, 0x0($a0)
/* 910C8 800904C8 8CA20000 */  lw         $v0, 0x0($a1)
/* 910CC 800904CC 54400001 */  bnel       $v0, $zero, .L800904D4
/* 910D0 800904D0 AC440004 */   sw        $a0, 0x4($v0)
.L800904D4:
/* 910D4 800904D4 03E00008 */  jr         $ra
/* 910D8 800904D8 ACA40000 */   sw        $a0, 0x0($a1)

glabel func_800904DC
/* 910DC 800904DC 8C830000 */  lw         $v1, 0x0($a0)
/* 910E0 800904E0 10600003 */  beqz       $v1, .L800904F0
/* 910E4 800904E4 00000000 */   nop
/* 910E8 800904E8 8C820004 */  lw         $v0, 0x4($a0)
/* 910EC 800904EC AC620004 */  sw         $v0, 0x4($v1)
.L800904F0:
/* 910F0 800904F0 8C830004 */  lw         $v1, 0x4($a0)
/* 910F4 800904F4 10600003 */  beqz       $v1, .L80090504
/* 910F8 800904F8 00000000 */   nop
/* 910FC 800904FC 8C820000 */  lw         $v0, 0x0($a0)
/* 91100 80090500 AC620000 */  sw         $v0, 0x0($v1)
.L80090504:
/* 91104 80090504 03E00008 */  jr         $ra
/* 91108 80090508 00000000 */   nop
/* 9110C 8009050C 00000000 */  nop
