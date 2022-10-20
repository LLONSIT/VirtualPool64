.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091F20
/* 92B20 80091F20 3C02800A */  lui        $v0, %hi(D_800A06F0)
/* 92B24 80091F24 8C4206F0 */  lw         $v0, %lo(D_800A06F0)($v0)
/* 92B28 80091F28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92B2C 80091F2C AFB00010 */  sw         $s0, 0x10($sp)
/* 92B30 80091F30 00A08021 */  addu       $s0, $a1, $zero
/* 92B34 80091F34 14400003 */  bnez       $v0, .L80091F44
/* 92B38 80091F38 AFBF0014 */   sw        $ra, 0x14($sp)
/* 92B3C 80091F3C 080247E9 */  j          .L80091FA4
/* 92B40 80091F40 2402FFFF */   addiu     $v0, $zero, -0x1
.L80091F44:
/* 92B44 80091F44 14C00003 */  bnez       $a2, .L80091F54
/* 92B48 80091F48 AE040014 */   sw        $a0, 0x14($s0)
/* 92B4C 80091F4C 080247D6 */  j          .L80091F58
/* 92B50 80091F50 2402000F */   addiu     $v0, $zero, 0xF
.L80091F54:
/* 92B54 80091F54 24020010 */  addiu      $v0, $zero, 0x10
.L80091F58:
/* 92B58 80091F58 A6020000 */  sh         $v0, 0x0($s0)
/* 92B5C 80091F5C 92030002 */  lbu        $v1, 0x2($s0)
/* 92B60 80091F60 24020001 */  addiu      $v0, $zero, 0x1
/* 92B64 80091F64 14620009 */  bne        $v1, $v0, .L80091F8C
/* 92B68 80091F68 00000000 */   nop
/* 92B6C 80091F6C 0C026108 */  jal        func_80098420
/* 92B70 80091F70 00000000 */   nop
/* 92B74 80091F74 00402021 */  addu       $a0, $v0, $zero
/* 92B78 80091F78 02002821 */  addu       $a1, $s0, $zero
/* 92B7C 80091F7C 0C0252DC */  jal        func_80094B70
/* 92B80 80091F80 00003021 */   addu      $a2, $zero, $zero
/* 92B84 80091F84 080247E9 */  j          .L80091FA4
/* 92B88 80091F88 00000000 */   nop
.L80091F8C:
/* 92B8C 80091F8C 0C026108 */  jal        func_80098420
/* 92B90 80091F90 00000000 */   nop
/* 92B94 80091F94 00402021 */  addu       $a0, $v0, $zero
/* 92B98 80091F98 02002821 */  addu       $a1, $s0, $zero
/* 92B9C 80091F9C 0C000B9C */  jal        osSendMesg
/* 92BA0 80091FA0 00003021 */   addu      $a2, $zero, $zero
.L80091FA4:
/* 92BA4 80091FA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 92BA8 80091FA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 92BAC 80091FAC 03E00008 */  jr         $ra
/* 92BB0 80091FB0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92BB4 80091FB4 00000000 */  nop
/* 92BB8 80091FB8 00000000 */  nop
/* 92BBC 80091FBC 00000000 */  nop
