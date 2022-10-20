.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091480
/* 92080 80091480 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92084 80091484 AFB00010 */  sw         $s0, 0x10($sp)
/* 92088 80091488 00808021 */  addu       $s0, $a0, $zero
/* 9208C 8009148C AFB30018 */  sw         $s3, 0x18($sp)
/* 92090 80091490 AFB20014 */  sw         $s2, 0x14($sp)
/* 92094 80091494 00C09021 */  addu       $s2, $a2, $zero
/* 92098 80091498 AFBF001C */  sw         $ra, 0x1C($sp)
/* 9209C 8009149C 0C026020 */  jal        func_80098080
/* 920A0 800914A0 00E09821 */   addu      $s3, $a3, $zero
/* 920A4 800914A4 14400016 */  bnez       $v0, .L80091500
/* 920A8 800914A8 2402FFFF */   addiu     $v0, $zero, -0x1
/* 920AC 800914AC 3C03A410 */  lui        $v1, (0xA410000C >> 16)
/* 920B0 800914B0 3463000C */  ori        $v1, $v1, (0xA410000C & 0xFFFF)
/* 920B4 800914B4 24020001 */  addiu      $v0, $zero, 0x1
/* 920B8 800914B8 AC620000 */  sw         $v0, 0x0($v1)
/* 920BC 800914BC 3C03A410 */  lui        $v1, (0xA410000C >> 16)
/* 920C0 800914C0 3463000C */  ori        $v1, $v1, (0xA410000C & 0xFFFF)
.L800914C4:
/* 920C4 800914C4 8C620000 */  lw         $v0, 0x0($v1)
/* 920C8 800914C8 30420001 */  andi       $v0, $v0, 0x1
/* 920CC 800914CC 1440FFFD */  bnez       $v0, .L800914C4
/* 920D0 800914D0 00000000 */   nop
/* 920D4 800914D4 0C0006C8 */  jal        osVirtualToPhysical
/* 920D8 800914D8 02002021 */   addu      $a0, $s0, $zero
/* 920DC 800914DC 02002021 */  addu       $a0, $s0, $zero
/* 920E0 800914E0 3C03A410 */  lui        $v1, %hi(D_A4100000)
/* 920E4 800914E4 0C0006C8 */  jal        osVirtualToPhysical
/* 920E8 800914E8 AC620000 */   sw        $v0, %lo(D_A4100000)($v1)
/* 920EC 800914EC 3C04A410 */  lui        $a0, (0xA4100004 >> 16)
/* 920F0 800914F0 34840004 */  ori        $a0, $a0, (0xA4100004 & 0xFFFF)
/* 920F4 800914F4 02621821 */  addu       $v1, $s3, $v0
/* 920F8 800914F8 00001021 */  addu       $v0, $zero, $zero
/* 920FC 800914FC AC830000 */  sw         $v1, 0x0($a0)
.L80091500:
/* 92100 80091500 8FBF001C */  lw         $ra, 0x1C($sp)
/* 92104 80091504 8FB30018 */  lw         $s3, 0x18($sp)
/* 92108 80091508 8FB20014 */  lw         $s2, 0x14($sp)
/* 9210C 8009150C 8FB00010 */  lw         $s0, 0x10($sp)
/* 92110 80091510 03E00008 */  jr         $ra
/* 92114 80091514 27BD0020 */   addiu     $sp, $sp, 0x20
/* 92118 80091518 00000000 */  nop
/* 9211C 8009151C 00000000 */  nop
