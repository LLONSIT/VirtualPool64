.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091A70
/* 92670 80091A70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92674 80091A74 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 92678 80091A78 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9267C 80091A7C 0C0005EC */  jal        func_800017B0
/* 92680 80091A80 46006506 */   mov.s     $f20, $f12
/* 92684 80091A84 3C04800D */  lui        $a0, %hi(D_800CB264)
/* 92688 80091A88 8C84B264 */  lw         $a0, %lo(D_800CB264)($a0)
/* 9268C 80091A8C 94830000 */  lhu        $v1, 0x0($a0)
/* 92690 80091A90 E4940024 */  swc1       $f20, 0x24($a0)
/* 92694 80091A94 34630004 */  ori        $v1, $v1, 0x4
/* 92698 80091A98 A4830000 */  sh         $v1, 0x0($a0)
/* 9269C 80091A9C 0C0005F4 */  jal        __osRestoreInt
/* 926A0 80091AA0 00402021 */   addu      $a0, $v0, $zero
/* 926A4 80091AA4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 926A8 80091AA8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 926AC 80091AAC 03E00008 */  jr         $ra
/* 926B0 80091AB0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 926B4 80091AB4 00000000 */  nop
/* 926B8 80091AB8 00000000 */  nop
/* 926BC 80091ABC 00000000 */  nop
