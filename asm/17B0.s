.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80000BB0
/* 17B0 80000BB0 3C02A460 */  lui        $v0, (0xA4600010 >> 16)
/* 17B4 80000BB4 34420010 */  ori        $v0, $v0, (0xA4600010 & 0xFFFF)
/* 17B8 80000BB8 03E00008 */  jr         $ra
/* 17BC 80000BBC 8C420000 */   lw        $v0, 0x0($v0)

glabel osPiRawReadIo
/* 17C0 80000BC0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17C4 80000BC4 AFB10014 */  sw         $s1, 0x14($sp)
/* 17C8 80000BC8 00808821 */  addu       $s1, $a0, $zero
/* 17CC 80000BCC AFB00010 */  sw         $s0, 0x10($sp)
/* 17D0 80000BD0 00A08021 */  addu       $s0, $a1, $zero
/* 17D4 80000BD4 16000007 */  bnez       $s0, .L80000BF4
/* 17D8 80000BD8 AFBF0018 */   sw        $ra, 0x18($sp)
/* 17DC 80000BDC 3C04800D */  lui        $a0, %hi(D_800CCEF4)
/* 17E0 80000BE0 2484CEF4 */  addiu      $a0, $a0, %lo(D_800CCEF4)
/* 17E4 80000BE4 3C05800D */  lui        $a1, %hi(D_800CCEF8)
/* 17E8 80000BE8 24A5CEF8 */  addiu      $a1, $a1, %lo(D_800CCEF8)
/* 17EC 80000BEC 0C0006E0 */  jal        func_80001B80
/* 17F0 80000BF0 2406003D */   addiu     $a2, $zero, 0x3D
.L80000BF4:
/* 17F4 80000BF4 3C02A460 */  lui        $v0, (0xA4600010 >> 16)
/* 17F8 80000BF8 34420010 */  ori        $v0, $v0, (0xA4600010 & 0xFFFF)
/* 17FC 80000BFC 8C420000 */  lw         $v0, 0x0($v0)
/* 1800 80000C00 30420003 */  andi       $v0, $v0, 0x3
/* 1804 80000C04 10400006 */  beqz       $v0, .L80000C20
/* 1808 80000C08 3C03A460 */   lui       $v1, (0xA4600010 >> 16)
/* 180C 80000C0C 34630010 */  ori        $v1, $v1, (0xA4600010 & 0xFFFF)
.L80000C10:
/* 1810 80000C10 8C620000 */  lw         $v0, 0x0($v1)
/* 1814 80000C14 30420003 */  andi       $v0, $v0, 0x3
/* 1818 80000C18 1440FFFD */  bnez       $v0, .L80000C10
/* 181C 80000C1C 00000000 */   nop
.L80000C20:
/* 1820 80000C20 3C028000 */  lui        $v0, %hi(osRomBase)
/* 1824 80000C24 8C420308 */  lw         $v0, %lo(osRomBase)($v0)
/* 1828 80000C28 3C03A000 */  lui        $v1, %hi(D_A0000000)
/* 182C 80000C2C 00511025 */  or         $v0, $v0, $s1
/* 1830 80000C30 00431025 */  or         $v0, $v0, $v1
/* 1834 80000C34 8C420000 */  lw         $v0, %lo(D_A0000000)($v0)
/* 1838 80000C38 AE020000 */  sw         $v0, 0x0($s0)
/* 183C 80000C3C 00001021 */  addu       $v0, $zero, $zero
/* 1840 80000C40 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1844 80000C44 8FB10014 */  lw         $s1, 0x14($sp)
/* 1848 80000C48 8FB00010 */  lw         $s0, 0x10($sp)
/* 184C 80000C4C 03E00008 */  jr         $ra
/* 1850 80000C50 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1854 80000C54 00000000 */  nop
/* 1858 80000C58 00000000 */  nop
/* 185C 80000C5C 00000000 */  nop
