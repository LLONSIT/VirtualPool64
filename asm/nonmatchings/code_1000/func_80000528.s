.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80000528
/* 1128 80000528 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 112C 8000052C 00803821 */  addu       $a3, $a0, $zero
/* 1130 80000530 AFB00018 */  sw         $s0, 0x18($sp)
/* 1134 80000534 3C10800E */  lui        $s0, %hi(D_800D8CF0)
/* 1138 80000538 26108CF0 */  addiu      $s0, $s0, %lo(D_800D8CF0)
/* 113C 8000053C 02002021 */  addu       $a0, $s0, $zero
/* 1140 80000540 24050003 */  addiu      $a1, $zero, 0x3
/* 1144 80000544 3C02800E */  lui        $v0, %hi(D_800D8B40)
/* 1148 80000548 24428B40 */  addiu      $v0, $v0, %lo(D_800D8B40)
/* 114C 8000054C AFA20010 */  sw         $v0, 0x10($sp)
/* 1150 80000550 2402000A */  addiu      $v0, $zero, 0xA
/* 1154 80000554 3C068000 */  lui        $a2, %hi(func_80003780)
/* 1158 80000558 24C63780 */  addiu      $a2, $a2, %lo(func_80003780)
/* 115C 8000055C AFBF001C */  sw         $ra, 0x1C($sp)
/* 1160 80000560 0C000168 */  jal        osCreateThread
/* 1164 80000564 AFA20014 */   sw        $v0, 0x14($sp)
/* 1168 80000568 0C000254 */  jal        osStartThread
/* 116C 8000056C 02002021 */   addu      $a0, $s0, $zero
/* 1170 80000570 00002021 */  addu       $a0, $zero, $zero
/* 1174 80000574 0C000220 */  jal        osSetThreadPri
/* 1178 80000578 00002821 */   addu      $a1, $zero, $zero
.L8000057C:
/* 117C 8000057C 0800015F */  j          .L8000057C
/* 1180 80000580 00000000 */   nop
/* 1184 80000584 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1188 80000588 8FB00018 */  lw         $s0, 0x18($sp)
/* 118C 8000058C 03E00008 */  jr         $ra
/* 1190 80000590 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1194 80000594 00000000 */  nop
/* 1198 80000598 00000000 */  nop
/* 119C 8000059C 00000000 */  nop
