.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800980C0
/* 98CC0 800980C0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 98CC4 800980C4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 98CC8 800980C8 03E00008 */  jr         $ra
/* 98CCC 800980CC 8C420000 */   lw        $v0, 0x0($v0)

glabel func_800980D0
/* 98CD0 800980D0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 98CD4 800980D4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 98CD8 800980D8 03E00008 */  jr         $ra
/* 98CDC 800980DC AC440000 */   sw        $a0, 0x0($v0)

glabel func_800980E0
/* 98CE0 800980E0 3C02A404 */  lui        $v0, (0xA4040010 >> 16)
/* 98CE4 800980E4 34420010 */  ori        $v0, $v0, (0xA4040010 & 0xFFFF)
/* 98CE8 800980E8 8C420000 */  lw         $v0, 0x0($v0)
/* 98CEC 800980EC 30420001 */  andi       $v0, $v0, 0x1
/* 98CF0 800980F0 10400004 */  beqz       $v0, .L80098104
/* 98CF4 800980F4 3C02A408 */   lui       $v0, %hi(D_A4080000)
/* 98CF8 800980F8 AC440000 */  sw         $a0, %lo(D_A4080000)($v0)
/* 98CFC 800980FC 08026042 */  j          .L80098108
/* 98D00 80098100 00001021 */   addu      $v0, $zero, $zero
.L80098104:
/* 98D04 80098104 2402FFFF */  addiu      $v0, $zero, -0x1
.L80098108:
/* 98D08 80098108 03E00008 */  jr         $ra
/* 98D0C 8009810C 00000000 */   nop

glabel func_80098110
/* 98D10 80098110 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 98D14 80098114 AFB3001C */  sw         $s3, 0x1C($sp)
/* 98D18 80098118 00809821 */  addu       $s3, $a0, $zero
/* 98D1C 8009811C AFB20018 */  sw         $s2, 0x18($sp)
/* 98D20 80098120 00A09021 */  addu       $s2, $a1, $zero
/* 98D24 80098124 AFB10014 */  sw         $s1, 0x14($sp)
/* 98D28 80098128 00C08821 */  addu       $s1, $a2, $zero
/* 98D2C 8009812C AFB00010 */  sw         $s0, 0x10($sp)
/* 98D30 80098130 00E08021 */  addu       $s0, $a3, $zero
/* 98D34 80098134 32420007 */  andi       $v0, $s2, 0x7
/* 98D38 80098138 10400007 */  beqz       $v0, .L80098158
/* 98D3C 8009813C AFBF0020 */   sw        $ra, 0x20($sp)
/* 98D40 80098140 3C04800D */  lui        $a0, %hi(D_800D6E2C)
/* 98D44 80098144 24846E2C */  addiu      $a0, $a0, %lo(D_800D6E2C)
/* 98D48 80098148 3C05800D */  lui        $a1, %hi(D_800D6E30)
/* 98D4C 8009814C 24A56E30 */  addiu      $a1, $a1, %lo(D_800D6E30)
/* 98D50 80098150 0C0006E0 */  jal        func_80001B80
/* 98D54 80098154 2406003A */   addiu     $a2, $zero, 0x3A
.L80098158:
/* 98D58 80098158 32220007 */  andi       $v0, $s1, 0x7
/* 98D5C 8009815C 10400008 */  beqz       $v0, .L80098180
/* 98D60 80098160 32020007 */   andi      $v0, $s0, 0x7
/* 98D64 80098164 3C04800D */  lui        $a0, %hi(D_800D6E2C)
/* 98D68 80098168 24846E2C */  addiu      $a0, $a0, %lo(D_800D6E2C)
/* 98D6C 8009816C 3C05800D */  lui        $a1, %hi(D_800D6E30)
/* 98D70 80098170 24A56E30 */  addiu      $a1, $a1, %lo(D_800D6E30)
/* 98D74 80098174 0C0006E0 */  jal        func_80001B80
/* 98D78 80098178 2406003B */   addiu     $a2, $zero, 0x3B
/* 98D7C 8009817C 32020007 */  andi       $v0, $s0, 0x7
.L80098180:
/* 98D80 80098180 10400007 */  beqz       $v0, .L800981A0
/* 98D84 80098184 00000000 */   nop
/* 98D88 80098188 3C04800D */  lui        $a0, %hi(D_800D6E2C)
/* 98D8C 8009818C 24846E2C */  addiu      $a0, $a0, %lo(D_800D6E2C)
/* 98D90 80098190 3C05800D */  lui        $a1, %hi(D_800D6E30)
/* 98D94 80098194 24A56E30 */  addiu      $a1, $a1, %lo(D_800D6E30)
/* 98D98 80098198 0C0006E0 */  jal        func_80001B80
/* 98D9C 8009819C 2406003C */   addiu     $a2, $zero, 0x3C
.L800981A0:
/* 98DA0 800981A0 0C026028 */  jal        func_800980A0
/* 98DA4 800981A4 00000000 */   nop
/* 98DA8 800981A8 14400010 */  bnez       $v0, .L800981EC
/* 98DAC 800981AC 2402FFFF */   addiu     $v0, $zero, -0x1
/* 98DB0 800981B0 02202021 */  addu       $a0, $s1, $zero
/* 98DB4 800981B4 3C02A404 */  lui        $v0, %hi(D_A4040000)
/* 98DB8 800981B8 0C0006C8 */  jal        osVirtualToPhysical
/* 98DBC 800981BC AC520000 */   sw        $s2, %lo(D_A4040000)($v0)
/* 98DC0 800981C0 3C03A404 */  lui        $v1, (0xA4040004 >> 16)
/* 98DC4 800981C4 34630004 */  ori        $v1, $v1, (0xA4040004 & 0xFFFF)
/* 98DC8 800981C8 AC620000 */  sw         $v0, 0x0($v1)
/* 98DCC 800981CC 16600003 */  bnez       $s3, .L800981DC
/* 98DD0 800981D0 3C03A404 */   lui       $v1, (0xA4040008 >> 16)
/* 98DD4 800981D4 08026078 */  j          .L800981E0
/* 98DD8 800981D8 3463000C */   ori       $v1, $v1, (0xA404000C & 0xFFFF)
.L800981DC:
/* 98DDC 800981DC 34630008 */  ori        $v1, $v1, (0xA4040008 & 0xFFFF)
.L800981E0:
/* 98DE0 800981E0 2602FFFF */  addiu      $v0, $s0, -0x1
/* 98DE4 800981E4 AC620000 */  sw         $v0, 0x0($v1)
/* 98DE8 800981E8 00001021 */  addu       $v0, $zero, $zero
.L800981EC:
/* 98DEC 800981EC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 98DF0 800981F0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 98DF4 800981F4 8FB20018 */  lw         $s2, 0x18($sp)
/* 98DF8 800981F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 98DFC 800981FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 98E00 80098200 03E00008 */  jr         $ra
/* 98E04 80098204 27BD0028 */   addiu     $sp, $sp, 0x28
/* 98E08 80098208 00000000 */  nop
/* 98E0C 8009820C 00000000 */  nop
