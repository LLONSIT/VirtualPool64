.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_8008FFF0
/* 90BF0 8008FFF0 18A00020 */  blez       $a1, .L80090074
/* 90BF4 8008FFF4 00000000 */   nop
/* 90BF8 8008FFF8 240B2000 */  addiu      $t3, $zero, 0x2000
/* 90BFC 8008FFFC 00AB082B */  sltu       $at, $a1, $t3
/* 90C00 80090000 1020001E */  beqz       $at, .L8009007C
/* 90C04 80090004 00000000 */   nop
/* 90C08 80090008 00804021 */  addu       $t0, $a0, $zero
/* 90C0C 8009000C 00854821 */  addu       $t1, $a0, $a1
/* 90C10 80090010 0109082B */  sltu       $at, $t0, $t1
/* 90C14 80090014 10200017 */  beqz       $at, .L80090074
/* 90C18 80090018 00000000 */   nop
/* 90C1C 8009001C 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 90C20 80090020 310A000F */  andi       $t2, $t0, 0xF
/* 90C24 80090024 11400007 */  beqz       $t2, .L80090044
/* 90C28 80090028 00000000 */   nop
/* 90C2C 8009002C 010A4023 */  subu       $t0, $t0, $t2
/* 90C30 80090030 BD150000 */  cache      0x15, 0x0($t0)
/* 90C34 80090034 0109082B */  sltu       $at, $t0, $t1
/* 90C38 80090038 1020000E */  beqz       $at, .L80090074
/* 90C3C 8009003C 00000000 */   nop
/* 90C40 80090040 25080010 */  addiu      $t0, $t0, 0x10
.L80090044:
/* 90C44 80090044 312A000F */  andi       $t2, $t1, 0xF
/* 90C48 80090048 11400006 */  beqz       $t2, .L80090064
/* 90C4C 8009004C 00000000 */   nop
/* 90C50 80090050 012A4823 */  subu       $t1, $t1, $t2
/* 90C54 80090054 BD350010 */  cache      0x15, 0x10($t1)
/* 90C58 80090058 0128082B */  sltu       $at, $t1, $t0
/* 90C5C 8009005C 14200005 */  bnez       $at, .L80090074
/* 90C60 80090060 00000000 */   nop
.L80090064:
/* 90C64 80090064 BD110000 */  cache      0x11, 0x0($t0)
/* 90C68 80090068 0109082B */  sltu       $at, $t0, $t1
/* 90C6C 8009006C 1420FFFD */  bnez       $at, .L80090064
/* 90C70 80090070 25080010 */   addiu     $t0, $t0, 0x10
.L80090074:
/* 90C74 80090074 03E00008 */  jr         $ra
/* 90C78 80090078 00000000 */   nop
.L8009007C:
/* 90C7C 8009007C 3C088000 */  lui        $t0, 0x8000
/* 90C80 80090080 010B4821 */  addu       $t1, $t0, $t3
/* 90C84 80090084 2529FFF0 */  addiu      $t1, $t1, -0x10
.L80090088:
/* 90C88 80090088 BD010000 */  cache      0x01, 0x0($t0)
/* 90C8C 8009008C 0109082B */  sltu       $at, $t0, $t1
/* 90C90 80090090 1420FFFD */  bnez       $at, .L80090088
/* 90C94 80090094 25080010 */   addiu     $t0, $t0, 0x10
/* 90C98 80090098 03E00008 */  jr         $ra
/* 90C9C 8009009C 00000000 */   nop

# Handwritten function
glabel func_800900A0
/* 90CA0 800900A0 3C088000 */  lui        $t0, 0x8000
/* 90CA4 800900A4 240A2000 */  addiu      $t2, $zero, 0x2000
/* 90CA8 800900A8 010A4821 */  addu       $t1, $t0, $t2
/* 90CAC 800900AC 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800900B0:
/* 90CB0 800900B0 BD010000 */  cache      0x01, 0x0($t0)
/* 90CB4 800900B4 0109082B */  sltu       $at, $t0, $t1
/* 90CB8 800900B8 1420FFFD */  bnez       $at, .L800900B0
/* 90CBC 800900BC 25080010 */   addiu     $t0, $t0, 0x10
/* 90CC0 800900C0 03E00008 */  jr         $ra
/* 90CC4 800900C4 00000000 */   nop
/* 90CC8 800900C8 00000000 */  nop
/* 90CCC 800900CC 00000000 */  nop
