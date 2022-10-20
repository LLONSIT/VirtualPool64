.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80090F90
/* 91B90 80090F90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91B94 80090F94 AFB00010 */  sw         $s0, 0x10($sp)
/* 91B98 80090F98 00A08021 */  addu       $s0, $a1, $zero
/* 91B9C 80090F9C AFBF0018 */  sw         $ra, 0x18($sp)
/* 91BA0 80090FA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 91BA4 80090FA4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 91BA8 80090FA8 8E020008 */  lw         $v0, 0x8($s0)
/* 91BAC 80090FAC 4486A000 */  mtc1       $a2, $f20
/* 91BB0 80090FB0 00000000 */  nop
/* 91BB4 80090FB4 10400014 */  beqz       $v0, .L80091008
/* 91BB8 80090FB8 00808821 */   addu      $s1, $a0, $zero
/* 91BBC 80090FBC 0C024287 */  jal        func_80090A1C
/* 91BC0 80090FC0 00000000 */   nop
/* 91BC4 80090FC4 00403021 */  addu       $a2, $v0, $zero
/* 91BC8 80090FC8 10C0000F */  beqz       $a2, .L80091008
/* 91BCC 80090FCC 00000000 */   nop
/* 91BD0 80090FD0 8E020008 */  lw         $v0, 0x8($s0)
/* 91BD4 80090FD4 8E23001C */  lw         $v1, 0x1C($s1)
/* 91BD8 80090FD8 8C4400D8 */  lw         $a0, 0xD8($v0)
/* 91BDC 80090FDC 24020007 */  addiu      $v0, $zero, 0x7
/* 91BE0 80090FE0 A4C20008 */  sh         $v0, 0x8($a2)
/* 91BE4 80090FE4 E4D4000C */  swc1       $f20, 0xC($a2)
/* 91BE8 80090FE8 ACC00000 */  sw         $zero, 0x0($a2)
/* 91BEC 80090FEC 00641821 */  addu       $v1, $v1, $a0
/* 91BF0 80090FF0 ACC30004 */  sw         $v1, 0x4($a2)
/* 91BF4 80090FF4 8E020008 */  lw         $v0, 0x8($s0)
/* 91BF8 80090FF8 8C44000C */  lw         $a0, 0xC($v0)
/* 91BFC 80090FFC 8C820008 */  lw         $v0, 0x8($a0)
/* 91C00 80091000 0040F809 */  jalr       $v0
/* 91C04 80091004 24050003 */   addiu     $a1, $zero, 0x3
.L80091008:
/* 91C08 80091008 8FBF0018 */  lw         $ra, 0x18($sp)
/* 91C0C 8009100C 8FB10014 */  lw         $s1, 0x14($sp)
/* 91C10 80091010 8FB00010 */  lw         $s0, 0x10($sp)
/* 91C14 80091014 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 91C18 80091018 03E00008 */  jr         $ra
/* 91C1C 8009101C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80091020
/* 91C20 80091020 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 91C24 80091024 AFB20018 */  sw         $s2, 0x18($sp)
/* 91C28 80091028 00809021 */  addu       $s2, $a0, $zero
/* 91C2C 8009102C AFB10014 */  sw         $s1, 0x14($sp)
/* 91C30 80091030 00A08821 */  addu       $s1, $a1, $zero
/* 91C34 80091034 AFBF0024 */  sw         $ra, 0x24($sp)
/* 91C38 80091038 AFB40020 */  sw         $s4, 0x20($sp)
/* 91C3C 8009103C AFB3001C */  sw         $s3, 0x1C($sp)
/* 91C40 80091040 AFB00010 */  sw         $s0, 0x10($sp)
/* 91C44 80091044 8E220008 */  lw         $v0, 0x8($s1)
/* 91C48 80091048 00C0A021 */  addu       $s4, $a2, $zero
/* 91C4C 8009104C 1040001A */  beqz       $v0, .L800910B8
/* 91C50 80091050 00E09821 */   addu      $s3, $a3, $zero
/* 91C54 80091054 0C024287 */  jal        func_80090A1C
/* 91C58 80091058 00000000 */   nop
/* 91C5C 8009105C 00408021 */  addu       $s0, $v0, $zero
/* 91C60 80091060 12000015 */  beqz       $s0, .L800910B8
/* 91C64 80091064 02402021 */   addu      $a0, $s2, $zero
/* 91C68 80091068 8E220008 */  lw         $v0, 0x8($s1)
/* 91C6C 8009106C 8C83001C */  lw         $v1, 0x1C($a0)
/* 91C70 80091070 8C4600D8 */  lw         $a2, 0xD8($v0)
/* 91C74 80091074 02602821 */  addu       $a1, $s3, $zero
/* 91C78 80091078 2402000B */  addiu      $v0, $zero, 0xB
/* 91C7C 8009107C A6020008 */  sh         $v0, 0x8($s0)
/* 91C80 80091080 00141400 */  sll        $v0, $s4, 16
/* 91C84 80091084 00021403 */  sra        $v0, $v0, 16
/* 91C88 80091088 AE02000C */  sw         $v0, 0xC($s0)
/* 91C8C 8009108C 00661821 */  addu       $v1, $v1, $a2
/* 91C90 80091090 0C0242CF */  jal        func_80090B3C
/* 91C94 80091094 AE030004 */   sw        $v1, 0x4($s0)
/* 91C98 80091098 AE020010 */  sw         $v0, 0x10($s0)
/* 91C9C 8009109C AE000000 */  sw         $zero, 0x0($s0)
/* 91CA0 800910A0 8E220008 */  lw         $v0, 0x8($s1)
/* 91CA4 800910A4 8C44000C */  lw         $a0, 0xC($v0)
/* 91CA8 800910A8 8C820008 */  lw         $v0, 0x8($a0)
/* 91CAC 800910AC 24050003 */  addiu      $a1, $zero, 0x3
/* 91CB0 800910B0 0040F809 */  jalr       $v0
/* 91CB4 800910B4 02003021 */   addu      $a2, $s0, $zero
.L800910B8:
/* 91CB8 800910B8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 91CBC 800910BC 8FB40020 */  lw         $s4, 0x20($sp)
/* 91CC0 800910C0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 91CC4 800910C4 8FB20018 */  lw         $s2, 0x18($sp)
/* 91CC8 800910C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 91CCC 800910CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 91CD0 800910D0 03E00008 */  jr         $ra
/* 91CD4 800910D4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 91CD8 800910D8 00000000 */  nop
/* 91CDC 800910DC 00000000 */  nop
