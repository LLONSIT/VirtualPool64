.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80093870
/* 94470 80093870 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 94474 80093874 AFB10134 */  sw         $s1, 0x134($sp)
/* 94478 80093878 00808821 */  addu       $s1, $a0, $zero
/* 9447C 8009387C AFB00130 */  sw         $s0, 0x130($sp)
/* 94480 80093880 00A08021 */  addu       $s0, $a1, $zero
/* 94484 80093884 AFBF0148 */  sw         $ra, 0x148($sp)
/* 94488 80093888 AFB50144 */  sw         $s5, 0x144($sp)
/* 9448C 8009388C AFB40140 */  sw         $s4, 0x140($sp)
/* 94490 80093890 AFB3013C */  sw         $s3, 0x13C($sp)
/* 94494 80093894 AFB20138 */  sw         $s2, 0x138($sp)
/* 94498 80093898 8E220050 */  lw         $v0, 0x50($s1)
/* 9449C 8009389C 00101FC2 */  srl        $v1, $s0, 31
/* 944A0 800938A0 0202102A */  slt        $v0, $s0, $v0
/* 944A4 800938A4 38420001 */  xori       $v0, $v0, 0x1
/* 944A8 800938A8 00431025 */  or         $v0, $v0, $v1
/* 944AC 800938AC 1440001F */  bnez       $v0, .L8009392C
/* 944B0 800938B0 00C0A021 */   addu      $s4, $a2, $zero
/* 944B4 800938B4 8E220000 */  lw         $v0, 0x0($s1)
/* 944B8 800938B8 30420001 */  andi       $v0, $v0, 0x1
/* 944BC 800938BC 10400046 */  beqz       $v0, .L800939D8
/* 944C0 800938C0 24020005 */   addiu     $v0, $zero, 0x5
/* 944C4 800938C4 0C026541 */  jal        func_80099504
/* 944C8 800938C8 02202021 */   addu      $a0, $s1, $zero
/* 944CC 800938CC 14400042 */  bnez       $v0, .L800939D8
/* 944D0 800938D0 00000000 */   nop
/* 944D4 800938D4 92220065 */  lbu        $v0, 0x65($s1)
/* 944D8 800938D8 10400005 */  beqz       $v0, .L800938F0
/* 944DC 800938DC 02202021 */   addu      $a0, $s1, $zero
/* 944E0 800938E0 0C0250F8 */  jal        func_800943E0
/* 944E4 800938E4 00002821 */   addu      $a1, $zero, $zero
/* 944E8 800938E8 1440003B */  bnez       $v0, .L800939D8
/* 944EC 800938EC 00000000 */   nop
.L800938F0:
/* 944F0 800938F0 8E240004 */  lw         $a0, 0x4($s1)
/* 944F4 800938F4 8E26005C */  lw         $a2, 0x5C($s1)
/* 944F8 800938F8 8E250008 */  lw         $a1, 0x8($s1)
/* 944FC 800938FC 27A70110 */  addiu      $a3, $sp, 0x110
/* 94500 80093900 00D03021 */  addu       $a2, $a2, $s0
/* 94504 80093904 0C026640 */  jal        func_80099900
/* 94508 80093908 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 9450C 8009390C 14400032 */  bnez       $v0, .L800939D8
/* 94510 80093910 00000000 */   nop
/* 94514 80093914 97A20114 */  lhu        $v0, 0x114($sp)
/* 94518 80093918 1040002F */  beqz       $v0, .L800939D8
/* 9451C 8009391C 24020005 */   addiu     $v0, $zero, 0x5
/* 94520 80093920 8FA20110 */  lw         $v0, 0x110($sp)
/* 94524 80093924 14400003 */  bnez       $v0, .L80093934
/* 94528 80093928 00009821 */   addu      $s3, $zero, $zero
.L8009392C:
/* 9452C 8009392C 08024E76 */  j          .L800939D8
/* 94530 80093930 24020005 */   addiu     $v0, $zero, 0x5
.L80093934:
/* 94534 80093934 97B00116 */  lhu        $s0, 0x116($sp)
/* 94538 80093938 241200FF */  addiu      $s2, $zero, 0xFF
/* 9453C 8009393C 27B50010 */  addiu      $s5, $sp, 0x10
.L80093940:
/* 94540 80093940 8E220060 */  lw         $v0, 0x60($s1)
/* 94544 80093944 3203FFFF */  andi       $v1, $s0, 0xFFFF
/* 94548 80093948 0062102A */  slt        $v0, $v1, $v0
/* 9454C 8009394C 14400010 */  bnez       $v0, .L80093990
/* 94550 80093950 00031202 */   srl       $v0, $v1, 8
/* 94554 80093954 304700FF */  andi       $a3, $v0, 0xFF
/* 94558 80093958 10F20007 */  beq        $a3, $s2, .L80093978
/* 9455C 8009395C 02202021 */   addu      $a0, $s1, $zero
/* 94560 80093960 00409021 */  addu       $s2, $v0, $zero
/* 94564 80093964 27A50010 */  addiu      $a1, $sp, 0x10
/* 94568 80093968 0C02656F */  jal        func_800995BC
/* 9456C 8009396C 00003021 */   addu      $a2, $zero, $zero
/* 94570 80093970 14400019 */  bnez       $v0, .L800939D8
/* 94574 80093974 00000000 */   nop
.L80093978:
/* 94578 80093978 320200FF */  andi       $v0, $s0, 0xFF
/* 9457C 8009397C 00021040 */  sll        $v0, $v0, 1
/* 94580 80093980 00551021 */  addu       $v0, $v0, $s5
/* 94584 80093984 94500000 */  lhu        $s0, 0x0($v0)
/* 94588 80093988 08024E50 */  j          .L80093940
/* 9458C 8009398C 26730001 */   addiu     $s3, $s3, 0x1
.L80093990:
/* 94590 80093990 24020001 */  addiu      $v0, $zero, 0x1
/* 94594 80093994 54620010 */  bnel       $v1, $v0, .L800939D8
/* 94598 80093998 24020003 */   addiu     $v0, $zero, 0x3
/* 9459C 8009399C 00131200 */  sll        $v0, $s3, 8
/* 945A0 800939A0 AE820000 */  sw         $v0, 0x0($s4)
/* 945A4 800939A4 97A20114 */  lhu        $v0, 0x114($sp)
/* 945A8 800939A8 27A40120 */  addiu      $a0, $sp, 0x120
/* 945AC 800939AC A6820008 */  sh         $v0, 0x8($s4)
/* 945B0 800939B0 8FA20110 */  lw         $v0, 0x110($sp)
/* 945B4 800939B4 2685000E */  addiu      $a1, $s4, 0xE
/* 945B8 800939B8 24060010 */  addiu      $a2, $zero, 0x10
/* 945BC 800939BC 0C024854 */  jal        func_80092150
/* 945C0 800939C0 AE820004 */   sw        $v0, 0x4($s4)
/* 945C4 800939C4 27A4011C */  addiu      $a0, $sp, 0x11C
/* 945C8 800939C8 2685000A */  addiu      $a1, $s4, 0xA
/* 945CC 800939CC 0C024854 */  jal        func_80092150
/* 945D0 800939D0 24060004 */   addiu     $a2, $zero, 0x4
/* 945D4 800939D4 00001021 */  addu       $v0, $zero, $zero
.L800939D8:
/* 945D8 800939D8 8FBF0148 */  lw         $ra, 0x148($sp)
/* 945DC 800939DC 8FB50144 */  lw         $s5, 0x144($sp)
/* 945E0 800939E0 8FB40140 */  lw         $s4, 0x140($sp)
/* 945E4 800939E4 8FB3013C */  lw         $s3, 0x13C($sp)
/* 945E8 800939E8 8FB20138 */  lw         $s2, 0x138($sp)
/* 945EC 800939EC 8FB10134 */  lw         $s1, 0x134($sp)
/* 945F0 800939F0 8FB00130 */  lw         $s0, 0x130($sp)
/* 945F4 800939F4 03E00008 */  jr         $ra
/* 945F8 800939F8 27BD0150 */   addiu     $sp, $sp, 0x150
/* 945FC 800939FC 00000000 */  nop
