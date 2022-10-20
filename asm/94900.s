.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80093D00
/* 94900 80093D00 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 94904 80093D04 AFB1003C */  sw         $s1, 0x3C($sp)
/* 94908 80093D08 00808821 */  addu       $s1, $a0, $zero
/* 9490C 80093D0C AFB40048 */  sw         $s4, 0x48($sp)
/* 94910 80093D10 00A0A021 */  addu       $s4, $a1, $zero
/* 94914 80093D14 AFBF004C */  sw         $ra, 0x4C($sp)
/* 94918 80093D18 AFB30044 */  sw         $s3, 0x44($sp)
/* 9491C 80093D1C AFB20040 */  sw         $s2, 0x40($sp)
/* 94920 80093D20 AFB00038 */  sw         $s0, 0x38($sp)
/* 94924 80093D24 8E220000 */  lw         $v0, 0x0($s1)
/* 94928 80093D28 00C09821 */  addu       $s3, $a2, $zero
/* 9492C 80093D2C 30420001 */  andi       $v0, $v0, 0x1
/* 94930 80093D30 14400003 */  bnez       $v0, .L80093D40
/* 94934 80093D34 00009021 */   addu      $s2, $zero, $zero
/* 94938 80093D38 08024F76 */  j          .L80093DD8
/* 9493C 80093D3C 24020005 */   addiu     $v0, $zero, 0x5
.L80093D40:
/* 94940 80093D40 0C026541 */  jal        func_80099504
/* 94944 80093D44 02202021 */   addu      $a0, $s1, $zero
/* 94948 80093D48 14400023 */  bnez       $v0, .L80093DD8
/* 9494C 80093D4C 00000000 */   nop
/* 94950 80093D50 92220065 */  lbu        $v0, 0x65($s1)
/* 94954 80093D54 10400005 */  beqz       $v0, .L80093D6C
/* 94958 80093D58 02202021 */   addu      $a0, $s1, $zero
/* 9495C 80093D5C 0C0250F8 */  jal        func_800943E0
/* 94960 80093D60 00002821 */   addu      $a1, $zero, $zero
/* 94964 80093D64 1440001C */  bnez       $v0, .L80093DD8
/* 94968 80093D68 00000000 */   nop
.L80093D6C:
/* 9496C 80093D6C 8E220050 */  lw         $v0, 0x50($s1)
/* 94970 80093D70 18400015 */  blez       $v0, .L80093DC8
/* 94974 80093D74 00008021 */   addu      $s0, $zero, $zero
.L80093D78:
/* 94978 80093D78 8E26005C */  lw         $a2, 0x5C($s1)
/* 9497C 80093D7C 8E240004 */  lw         $a0, 0x4($s1)
/* 94980 80093D80 8E250008 */  lw         $a1, 0x8($s1)
/* 94984 80093D84 27A70010 */  addiu      $a3, $sp, 0x10
/* 94988 80093D88 00D03021 */  addu       $a2, $a2, $s0
/* 9498C 80093D8C 0C026640 */  jal        func_80099900
/* 94990 80093D90 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 94994 80093D94 14400010 */  bnez       $v0, .L80093DD8
/* 94998 80093D98 00000000 */   nop
/* 9499C 80093D9C 97A20014 */  lhu        $v0, 0x14($sp)
/* 949A0 80093DA0 10400004 */  beqz       $v0, .L80093DB4
/* 949A4 80093DA4 00000000 */   nop
/* 949A8 80093DA8 8FA20010 */  lw         $v0, 0x10($sp)
/* 949AC 80093DAC 0002102B */  sltu       $v0, $zero, $v0
/* 949B0 80093DB0 02429021 */  addu       $s2, $s2, $v0
.L80093DB4:
/* 949B4 80093DB4 8E220050 */  lw         $v0, 0x50($s1)
/* 949B8 80093DB8 26100001 */  addiu      $s0, $s0, 0x1
/* 949BC 80093DBC 0202102A */  slt        $v0, $s0, $v0
/* 949C0 80093DC0 1440FFED */  bnez       $v0, .L80093D78
/* 949C4 80093DC4 00000000 */   nop
.L80093DC8:
/* 949C8 80093DC8 AE720000 */  sw         $s2, 0x0($s3)
/* 949CC 80093DCC 8E230050 */  lw         $v1, 0x50($s1)
/* 949D0 80093DD0 00001021 */  addu       $v0, $zero, $zero
/* 949D4 80093DD4 AE830000 */  sw         $v1, 0x0($s4)
.L80093DD8:
/* 949D8 80093DD8 8FBF004C */  lw         $ra, 0x4C($sp)
/* 949DC 80093DDC 8FB40048 */  lw         $s4, 0x48($sp)
/* 949E0 80093DE0 8FB30044 */  lw         $s3, 0x44($sp)
/* 949E4 80093DE4 8FB20040 */  lw         $s2, 0x40($sp)
/* 949E8 80093DE8 8FB1003C */  lw         $s1, 0x3C($sp)
/* 949EC 80093DEC 8FB00038 */  lw         $s0, 0x38($sp)
/* 949F0 80093DF0 03E00008 */  jr         $ra
/* 949F4 80093DF4 27BD0050 */   addiu     $sp, $sp, 0x50
/* 949F8 80093DF8 00000000 */  nop
/* 949FC 80093DFC 00000000 */  nop
