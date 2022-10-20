.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80093A00
/* 94600 80093A00 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 94604 80093A04 AFB20118 */  sw         $s2, 0x118($sp)
/* 94608 80093A08 00809021 */  addu       $s2, $a0, $zero
/* 9460C 80093A0C AFBF0128 */  sw         $ra, 0x128($sp)
/* 94610 80093A10 AFB50124 */  sw         $s5, 0x124($sp)
/* 94614 80093A14 AFB40120 */  sw         $s4, 0x120($sp)
/* 94618 80093A18 AFB3011C */  sw         $s3, 0x11C($sp)
/* 9461C 80093A1C AFB10114 */  sw         $s1, 0x114($sp)
/* 94620 80093A20 AFB00110 */  sw         $s0, 0x110($sp)
/* 94624 80093A24 8E420000 */  lw         $v0, 0x0($s2)
/* 94628 80093A28 00A0A821 */  addu       $s5, $a1, $zero
/* 9462C 80093A2C 30420001 */  andi       $v0, $v0, 0x1
/* 94630 80093A30 14400003 */  bnez       $v0, .L80093A40
/* 94634 80093A34 00009821 */   addu      $s3, $zero, $zero
/* 94638 80093A38 08024EBA */  j          .L80093AE8
/* 9463C 80093A3C 24020005 */   addiu     $v0, $zero, 0x5
.L80093A40:
/* 94640 80093A40 0C026541 */  jal        func_80099504
/* 94644 80093A44 02402021 */   addu      $a0, $s2, $zero
/* 94648 80093A48 14400027 */  bnez       $v0, .L80093AE8
/* 9464C 80093A4C 00000000 */   nop
/* 94650 80093A50 92420064 */  lbu        $v0, 0x64($s2)
/* 94654 80093A54 0262102B */  sltu       $v0, $s3, $v0
/* 94658 80093A58 10400020 */  beqz       $v0, .L80093ADC
/* 9465C 80093A5C 00008821 */   addu      $s1, $zero, $zero
/* 94660 80093A60 27B40010 */  addiu      $s4, $sp, 0x10
/* 94664 80093A64 02402021 */  addu       $a0, $s2, $zero
.L80093A68:
/* 94668 80093A68 323000FF */  andi       $s0, $s1, 0xFF
/* 9466C 80093A6C 27A50010 */  addiu      $a1, $sp, 0x10
/* 94670 80093A70 00003021 */  addu       $a2, $zero, $zero
/* 94674 80093A74 0C02656F */  jal        func_800995BC
/* 94678 80093A78 02003821 */   addu      $a3, $s0, $zero
/* 9467C 80093A7C 1440001A */  bnez       $v0, .L80093AE8
/* 94680 80093A80 00000000 */   nop
/* 94684 80093A84 16000002 */  bnez       $s0, .L80093A90
/* 94688 80093A88 24020001 */   addiu     $v0, $zero, 0x1
/* 9468C 80093A8C 8E420060 */  lw         $v0, 0x60($s2)
.L80093A90:
/* 94690 80093A90 00402021 */  addu       $a0, $v0, $zero
/* 94694 80093A94 28820080 */  slti       $v0, $a0, 0x80
/* 94698 80093A98 1040000A */  beqz       $v0, .L80093AC4
/* 9469C 80093A9C 00041040 */   sll       $v0, $a0, 1
/* 946A0 80093AA0 00541821 */  addu       $v1, $v0, $s4
.L80093AA4:
/* 946A4 80093AA4 94620000 */  lhu        $v0, 0x0($v1)
/* 946A8 80093AA8 24840001 */  addiu      $a0, $a0, 0x1
/* 946AC 80093AAC 38420003 */  xori       $v0, $v0, 0x3
/* 946B0 80093AB0 2C420001 */  sltiu      $v0, $v0, 0x1
/* 946B4 80093AB4 02629821 */  addu       $s3, $s3, $v0
/* 946B8 80093AB8 28820080 */  slti       $v0, $a0, 0x80
/* 946BC 80093ABC 1440FFF9 */  bnez       $v0, .L80093AA4
/* 946C0 80093AC0 24630002 */   addiu     $v1, $v1, 0x2
.L80093AC4:
/* 946C4 80093AC4 92430064 */  lbu        $v1, 0x64($s2)
/* 946C8 80093AC8 26310001 */  addiu      $s1, $s1, 0x1
/* 946CC 80093ACC 322200FF */  andi       $v0, $s1, 0xFF
/* 946D0 80093AD0 0043102B */  sltu       $v0, $v0, $v1
/* 946D4 80093AD4 5440FFE4 */  bnel       $v0, $zero, .L80093A68
/* 946D8 80093AD8 02402021 */   addu      $a0, $s2, $zero
.L80093ADC:
/* 946DC 80093ADC 00131200 */  sll        $v0, $s3, 8
/* 946E0 80093AE0 AEA20000 */  sw         $v0, 0x0($s5)
/* 946E4 80093AE4 00001021 */  addu       $v0, $zero, $zero
.L80093AE8:
/* 946E8 80093AE8 8FBF0128 */  lw         $ra, 0x128($sp)
/* 946EC 80093AEC 8FB50124 */  lw         $s5, 0x124($sp)
/* 946F0 80093AF0 8FB40120 */  lw         $s4, 0x120($sp)
/* 946F4 80093AF4 8FB3011C */  lw         $s3, 0x11C($sp)
/* 946F8 80093AF8 8FB20118 */  lw         $s2, 0x118($sp)
/* 946FC 80093AFC 8FB10114 */  lw         $s1, 0x114($sp)
/* 94700 80093B00 8FB00110 */  lw         $s0, 0x110($sp)
/* 94704 80093B04 03E00008 */  jr         $ra
/* 94708 80093B08 27BD0130 */   addiu     $sp, $sp, 0x130
/* 9470C 80093B0C 00000000 */  nop
