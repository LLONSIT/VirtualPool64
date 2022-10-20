.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800004B8
/* 10B8 800004B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10BC 800004BC AFB1001C */  sw         $s1, 0x1C($sp)
/* 10C0 800004C0 00808821 */  addu       $s1, $a0, $zero
/* 10C4 800004C4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 10C8 800004C8 0C000114 */  jal        func_80000450
/* 10CC 800004CC AFB00018 */   sw        $s0, 0x18($sp)
/* 10D0 800004D0 0C00019C */  jal        osInitialize
/* 10D4 800004D4 00000000 */   nop
/* 10D8 800004D8 3C10800E */  lui        $s0, %hi(D_800D8B40)
/* 10DC 800004DC 26108B40 */  addiu      $s0, $s0, %lo(D_800D8B40)
/* 10E0 800004E0 02002021 */  addu       $a0, $s0, $zero
/* 10E4 800004E4 3C02800D */  lui        $v0, %hi(D_800D7340)
/* 10E8 800004E8 24427340 */  addiu      $v0, $v0, %lo(D_800D7340)
/* 10EC 800004EC AFA20010 */  sw         $v0, 0x10($sp)
/* 10F0 800004F0 2402000A */  addiu      $v0, $zero, 0xA
/* 10F4 800004F4 24050001 */  addiu      $a1, $zero, 0x1
/* 10F8 800004F8 3C068000 */  lui        $a2, %hi(func_80000528)
/* 10FC 800004FC 24C60528 */  addiu      $a2, $a2, %lo(func_80000528)
/* 1100 80000500 02203821 */  addu       $a3, $s1, $zero
/* 1104 80000504 0C000168 */  jal        osCreateThread
/* 1108 80000508 AFA20014 */   sw        $v0, 0x14($sp)
/* 110C 8000050C 0C000254 */  jal        osStartThread
/* 1110 80000510 02002021 */   addu      $a0, $s0, $zero
/* 1114 80000514 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1118 80000518 8FB1001C */  lw         $s1, 0x1C($sp)
/* 111C 8000051C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1120 80000520 03E00008 */  jr         $ra
/* 1124 80000524 27BD0028 */   addiu     $sp, $sp, 0x28
