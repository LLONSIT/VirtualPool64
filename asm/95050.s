.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80094450
/* 95050 80094450 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 95054 80094454 3C02A480 */  lui        $v0, (0xA4800018 >> 16)
/* 95058 80094458 34420018 */  ori        $v0, $v0, (0xA4800018 & 0xFFFF)
/* 9505C 8009445C AFBF0018 */  sw         $ra, 0x18($sp)
/* 95060 80094460 AFB10014 */  sw         $s1, 0x14($sp)
/* 95064 80094464 AFB00010 */  sw         $s0, 0x10($sp)
/* 95068 80094468 8C420000 */  lw         $v0, 0x0($v0)
/* 9506C 8009446C 00808021 */  addu       $s0, $a0, $zero
/* 95070 80094470 30420003 */  andi       $v0, $v0, 0x3
/* 95074 80094474 10400003 */  beqz       $v0, .L80094484
/* 95078 80094478 00A08821 */   addu      $s1, $a1, $zero
/* 9507C 8009447C 08025138 */  j          .L800944E0
/* 95080 80094480 2402FFFF */   addiu     $v0, $zero, -0x1
.L80094484:
/* 95084 80094484 24020001 */  addiu      $v0, $zero, 0x1
/* 95088 80094488 16020003 */  bne        $s0, $v0, .L80094498
/* 9508C 8009448C 02202021 */   addu      $a0, $s1, $zero
/* 95090 80094490 0C000644 */  jal        func_80001910
/* 95094 80094494 24050040 */   addiu     $a1, $zero, 0x40
.L80094498:
/* 95098 80094498 0C0006C8 */  jal        osVirtualToPhysical
/* 9509C 8009449C 02202021 */   addu      $a0, $s1, $zero
/* 950A0 800944A0 3C03A480 */  lui        $v1, %hi(D_A4800000)
/* 950A4 800944A4 AC620000 */  sw         $v0, %lo(D_A4800000)($v1)
/* 950A8 800944A8 56000003 */  bnel       $s0, $zero, .L800944B8
/* 950AC 800944AC 3C03A480 */   lui       $v1, (0xA4800010 >> 16)
/* 950B0 800944B0 0802512F */  j          .L800944BC
/* 950B4 800944B4 34630004 */   ori       $v1, $v1, (0xA4800004 & 0xFFFF)
.L800944B8:
/* 950B8 800944B8 34630010 */  ori        $v1, $v1, (0xA4800010 & 0xFFFF)
.L800944BC:
/* 950BC 800944BC 3C021FC0 */  lui        $v0, (0x1FC007C0 >> 16)
/* 950C0 800944C0 344207C0 */  ori        $v0, $v0, (0x1FC007C0 & 0xFFFF)
/* 950C4 800944C4 AC620000 */  sw         $v0, 0x0($v1)
/* 950C8 800944C8 16000005 */  bnez       $s0, .L800944E0
/* 950CC 800944CC 00001021 */   addu      $v0, $zero, $zero
/* 950D0 800944D0 02202021 */  addu       $a0, $s1, $zero
/* 950D4 800944D4 0C023FFC */  jal        func_8008FFF0
/* 950D8 800944D8 24050040 */   addiu     $a1, $zero, 0x40
/* 950DC 800944DC 00001021 */  addu       $v0, $zero, $zero
.L800944E0:
/* 950E0 800944E0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 950E4 800944E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 950E8 800944E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 950EC 800944EC 03E00008 */  jr         $ra
/* 950F0 800944F0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 950F4 800944F4 00000000 */  nop
/* 950F8 800944F8 00000000 */  nop
/* 950FC 800944FC 00000000 */  nop
