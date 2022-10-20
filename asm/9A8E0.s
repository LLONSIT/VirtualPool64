.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80099CE0
/* 9A8E0 80099CE0 00001821 */  addu       $v1, $zero, $zero
/* 9A8E4 80099CE4 24050400 */  addiu      $a1, $zero, 0x400
/* 9A8E8 80099CE8 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* 9A8EC 80099CEC 00851024 */  and        $v0, $a0, $a1
.L80099CF0:
/* 9A8F0 80099CF0 10400006 */  beqz       $v0, .L80099D0C
/* 9A8F4 80099CF4 00031840 */   sll       $v1, $v1, 1
/* 9A8F8 80099CF8 30620020 */  andi       $v0, $v1, 0x20
/* 9A8FC 80099CFC 50400006 */  beql       $v0, $zero, .L80099D18
/* 9A900 80099D00 24630001 */   addiu     $v1, $v1, 0x1
/* 9A904 80099D04 08026746 */  j          .L80099D18
/* 9A908 80099D08 38630014 */   xori      $v1, $v1, 0x14
.L80099D0C:
/* 9A90C 80099D0C 30620020 */  andi       $v0, $v1, 0x20
/* 9A910 80099D10 54400001 */  bnel       $v0, $zero, .L80099D18
/* 9A914 80099D14 38630015 */   xori      $v1, $v1, 0x15
.L80099D18:
/* 9A918 80099D18 00052842 */  srl        $a1, $a1, 1
/* 9A91C 80099D1C 14A0FFF4 */  bnez       $a1, .L80099CF0
/* 9A920 80099D20 00851024 */   and       $v0, $a0, $a1
/* 9A924 80099D24 24050005 */  addiu      $a1, $zero, 0x5
/* 9A928 80099D28 00031840 */  sll        $v1, $v1, 1
.L80099D2C:
/* 9A92C 80099D2C 30620020 */  andi       $v0, $v1, 0x20
/* 9A930 80099D30 54400001 */  bnel       $v0, $zero, .L80099D38
/* 9A934 80099D34 38630015 */   xori      $v1, $v1, 0x15
.L80099D38:
/* 9A938 80099D38 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 9A93C 80099D3C 54A0FFFB */  bnel       $a1, $zero, .L80099D2C
/* 9A940 80099D40 00031840 */   sll       $v1, $v1, 1
/* 9A944 80099D44 03E00008 */  jr         $ra
/* 9A948 80099D48 3062001F */   andi      $v0, $v1, 0x1F

glabel func_80099D4C
/* 9A94C 80099D4C 00001821 */  addu       $v1, $zero, $zero
/* 9A950 80099D50 24060020 */  addiu      $a2, $zero, 0x20
.L80099D54:
/* 9A954 80099D54 24050080 */  addiu      $a1, $zero, 0x80
/* 9A958 80099D58 90870000 */  lbu        $a3, 0x0($a0)
/* 9A95C 80099D5C 00E51024 */  and        $v0, $a3, $a1
.L80099D60:
/* 9A960 80099D60 10400006 */  beqz       $v0, .L80099D7C
/* 9A964 80099D64 00031840 */   sll       $v1, $v1, 1
/* 9A968 80099D68 30620100 */  andi       $v0, $v1, 0x100
/* 9A96C 80099D6C 50400006 */  beql       $v0, $zero, .L80099D88
/* 9A970 80099D70 24630001 */   addiu     $v1, $v1, 0x1
/* 9A974 80099D74 08026762 */  j          .L80099D88
/* 9A978 80099D78 38630084 */   xori      $v1, $v1, 0x84
.L80099D7C:
/* 9A97C 80099D7C 30620100 */  andi       $v0, $v1, 0x100
/* 9A980 80099D80 54400001 */  bnel       $v0, $zero, .L80099D88
/* 9A984 80099D84 38630085 */   xori      $v1, $v1, 0x85
.L80099D88:
/* 9A988 80099D88 00052842 */  srl        $a1, $a1, 1
/* 9A98C 80099D8C 14A0FFF4 */  bnez       $a1, .L80099D60
/* 9A990 80099D90 00E51024 */   and       $v0, $a3, $a1
/* 9A994 80099D94 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 9A998 80099D98 14C0FFEE */  bnez       $a2, .L80099D54
/* 9A99C 80099D9C 24840001 */   addiu     $a0, $a0, 0x1
/* 9A9A0 80099DA0 00031840 */  sll        $v1, $v1, 1
.L80099DA4:
/* 9A9A4 80099DA4 30620100 */  andi       $v0, $v1, 0x100
/* 9A9A8 80099DA8 54400001 */  bnel       $v0, $zero, .L80099DB0
/* 9A9AC 80099DAC 38630085 */   xori      $v1, $v1, 0x85
.L80099DB0:
/* 9A9B0 80099DB0 24C60001 */  addiu      $a2, $a2, 0x1
/* 9A9B4 80099DB4 2CC20008 */  sltiu      $v0, $a2, 0x8
/* 9A9B8 80099DB8 5440FFFA */  bnel       $v0, $zero, .L80099DA4
/* 9A9BC 80099DBC 00031840 */   sll       $v1, $v1, 1
/* 9A9C0 80099DC0 03E00008 */  jr         $ra
/* 9A9C4 80099DC4 306200FF */   andi      $v0, $v1, 0xFF
/* 9A9C8 80099DC8 00000000 */  nop
/* 9A9CC 80099DCC 00000000 */  nop
