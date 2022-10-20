.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800913E0
/* 91FE0 800913E0 3C02800D */  lui        $v0, %hi(D_800C9D90)
/* 91FE4 800913E4 90429D90 */  lbu        $v0, %lo(D_800C9D90)($v0)
/* 91FE8 800913E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 91FEC 800913EC AFB10014 */  sw         $s1, 0x14($sp)
/* 91FF0 800913F0 00A08821 */  addu       $s1, $a1, $zero
/* 91FF4 800913F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 91FF8 800913F8 00808021 */  addu       $s0, $a0, $zero
/* 91FFC 800913FC 10400002 */  beqz       $v0, .L80091408
/* 92000 80091400 AFBF0018 */   sw        $ra, 0x18($sp)
/* 92004 80091404 2610E000 */  addiu      $s0, $s0, -0x2000
.L80091408:
/* 92008 80091408 00911021 */  addu       $v0, $a0, $s1
/* 9200C 8009140C 30421FFF */  andi       $v0, $v0, 0x1FFF
/* 92010 80091410 14400004 */  bnez       $v0, .L80091424
/* 92014 80091414 24020001 */   addiu     $v0, $zero, 0x1
/* 92018 80091418 3C01800D */  lui        $at, %hi(D_800C9D90)
/* 9201C 8009141C 0802450B */  j          .L8009142C
/* 92020 80091420 A0229D90 */   sb        $v0, %lo(D_800C9D90)($at)
.L80091424:
/* 92024 80091424 3C01800D */  lui        $at, %hi(D_800C9D90)
/* 92028 80091428 A0209D90 */  sb         $zero, %lo(D_800C9D90)($at)
.L8009142C:
/* 9202C 8009142C 0C026018 */  jal        func_80098060
/* 92030 80091430 00000000 */   nop
/* 92034 80091434 1440000A */  bnez       $v0, .L80091460
/* 92038 80091438 2402FFFF */   addiu     $v0, $zero, -0x1
/* 9203C 8009143C 0C0006C8 */  jal        osVirtualToPhysical
/* 92040 80091440 02002021 */   addu      $a0, $s0, $zero
/* 92044 80091444 3C05A450 */  lui        $a1, (0xA4500004 >> 16)
/* 92048 80091448 34A50004 */  ori        $a1, $a1, (0xA4500004 & 0xFFFF)
/* 9204C 8009144C 00402021 */  addu       $a0, $v0, $zero
/* 92050 80091450 00001021 */  addu       $v0, $zero, $zero
/* 92054 80091454 3C03A450 */  lui        $v1, %hi(D_A4500000)
/* 92058 80091458 AC640000 */  sw         $a0, %lo(D_A4500000)($v1)
/* 9205C 8009145C ACB10000 */  sw         $s1, 0x0($a1)
.L80091460:
/* 92060 80091460 8FBF0018 */  lw         $ra, 0x18($sp)
/* 92064 80091464 8FB10014 */  lw         $s1, 0x14($sp)
/* 92068 80091468 8FB00010 */  lw         $s0, 0x10($sp)
/* 9206C 8009146C 03E00008 */  jr         $ra
/* 92070 80091470 27BD0020 */   addiu     $sp, $sp, 0x20
/* 92074 80091474 00000000 */  nop
/* 92078 80091478 00000000 */  nop
/* 9207C 8009147C 00000000 */  nop
