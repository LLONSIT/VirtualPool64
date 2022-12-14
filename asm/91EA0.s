.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800912A0
/* 91EA0 800912A0 3C02A450 */  lui        $v0, (0xA4500004 >> 16)
/* 91EA4 800912A4 34420004 */  ori        $v0, $v0, (0xA4500004 & 0xFFFF)
/* 91EA8 800912A8 03E00008 */  jr         $ra
/* 91EAC 800912AC 8C420000 */   lw        $v0, 0x0($v0)

glabel func_800912B0
/* 91EB0 800912B0 44841000 */  mtc1       $a0, $f2
/* 91EB4 800912B4 00000000 */  nop
/* 91EB8 800912B8 468010A1 */  cvt.d.w    $f2, $f2
/* 91EBC 800912BC 3C01800A */  lui        $at, %hi(D_800A0698)
/* 91EC0 800912C0 C4240698 */  lwc1       $f4, %lo(D_800A0698)($at)
/* 91EC4 800912C4 46802120 */  cvt.s.w    $f4, $f4
/* 91EC8 800912C8 04830005 */  bgezl      $a0, .L800912E0
/* 91ECC 800912CC 46201020 */   cvt.s.d   $f0, $f2
/* 91ED0 800912D0 3C01800D */  lui        $at, %hi(D_800D6C20)
/* 91ED4 800912D4 D4206C20 */  ldc1       $f0, %lo(D_800D6C20)($at)
/* 91ED8 800912D8 46201080 */  add.d      $f2, $f2, $f0
/* 91EDC 800912DC 46201020 */  cvt.s.d    $f0, $f2
.L800912E0:
/* 91EE0 800912E0 46002003 */  div.s      $f0, $f4, $f0
/* 91EE4 800912E4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 91EE8 800912E8 44811000 */  mtc1       $at, $f2
/* 91EEC 800912EC 00000000 */  nop
/* 91EF0 800912F0 46020080 */  add.s      $f2, $f0, $f2
/* 91EF4 800912F4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 91EF8 800912F8 44810000 */  mtc1       $at, $f0
/* 91EFC 800912FC 00000000 */  nop
/* 91F00 80091300 4602003E */  c.le.s     $f0, $f2
/* 91F04 80091304 00000000 */  nop
/* 91F08 80091308 00000000 */  nop
/* 91F0C 8009130C 45030006 */  bc1tl      .L80091328
/* 91F10 80091310 46001001 */   sub.s     $f0, $f2, $f0
/* 91F14 80091314 4600100D */  trunc.w.s  $f0, $f2
/* 91F18 80091318 44060000 */  mfc1       $a2, $f0
/* 91F1C 8009131C 00000000 */  nop
/* 91F20 80091320 080244CF */  j          .L8009133C
/* 91F24 80091324 2CC20084 */   sltiu     $v0, $a2, 0x84
.L80091328:
/* 91F28 80091328 4600008D */  trunc.w.s  $f2, $f0
/* 91F2C 8009132C 44061000 */  mfc1       $a2, $f2
/* 91F30 80091330 3C028000 */  lui        $v0, 0x8000
/* 91F34 80091334 00C23025 */  or         $a2, $a2, $v0
/* 91F38 80091338 2CC20084 */  sltiu      $v0, $a2, 0x84
.L8009133C:
/* 91F3C 8009133C 14400024 */  bnez       $v0, .L800913D0
/* 91F40 80091340 2402FFFF */   addiu     $v0, $zero, -0x1
/* 91F44 80091344 3C023E0F */  lui        $v0, (0x3E0F83E1 >> 16)
/* 91F48 80091348 344283E1 */  ori        $v0, $v0, (0x3E0F83E1 & 0xFFFF)
/* 91F4C 8009134C 00C20019 */  multu      $a2, $v0
/* 91F50 80091350 00004010 */  mfhi       $t0
/* 91F54 80091354 00083902 */  srl        $a3, $t0, 4
/* 91F58 80091358 30E200FF */  andi       $v0, $a3, 0xFF
/* 91F5C 8009135C 2C420011 */  sltiu      $v0, $v0, 0x11
/* 91F60 80091360 50400001 */  beql       $v0, $zero, .L80091368
/* 91F64 80091364 24070010 */   addiu     $a3, $zero, 0x10
.L80091368:
/* 91F68 80091368 3C03A450 */  lui        $v1, (0xA4500010 >> 16)
/* 91F6C 8009136C 34630010 */  ori        $v1, $v1, (0xA4500010 & 0xFFFF)
/* 91F70 80091370 3C04A450 */  lui        $a0, (0xA4500014 >> 16)
/* 91F74 80091374 34840014 */  ori        $a0, $a0, (0xA4500014 & 0xFFFF)
/* 91F78 80091378 3C05A450 */  lui        $a1, (0xA4500008 >> 16)
/* 91F7C 8009137C 34A50008 */  ori        $a1, $a1, (0xA4500008 & 0xFFFF)
/* 91F80 80091380 24C2FFFF */  addiu      $v0, $a2, -0x1
/* 91F84 80091384 AC620000 */  sw         $v0, 0x0($v1)
/* 91F88 80091388 3C02800A */  lui        $v0, %hi(D_800A0698)
/* 91F8C 8009138C 8C420698 */  lw         $v0, %lo(D_800A0698)($v0)
/* 91F90 80091390 30E300FF */  andi       $v1, $a3, 0xFF
/* 91F94 80091394 2463FFFF */  addiu      $v1, $v1, -0x1
/* 91F98 80091398 AC830000 */  sw         $v1, 0x0($a0)
/* 91F9C 8009139C 24030001 */  addiu      $v1, $zero, 0x1
/* 91FA0 800913A0 ACA30000 */  sw         $v1, 0x0($a1)
/* 91FA4 800913A4 0046001A */  div        $zero, $v0, $a2
/* 91FA8 800913A8 14C00002 */  bnez       $a2, .L800913B4
/* 91FAC 800913AC 00000000 */   nop
/* 91FB0 800913B0 0007000D */  break      7
.L800913B4:
/* 91FB4 800913B4 2401FFFF */  addiu      $at, $zero, -0x1
/* 91FB8 800913B8 14C10004 */  bne        $a2, $at, .L800913CC
/* 91FBC 800913BC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 91FC0 800913C0 14410002 */  bne        $v0, $at, .L800913CC
/* 91FC4 800913C4 00000000 */   nop
/* 91FC8 800913C8 0006000D */  break      6
.L800913CC:
/* 91FCC 800913CC 00001012 */  mflo       $v0
.L800913D0:
/* 91FD0 800913D0 03E00008 */  jr         $ra
/* 91FD4 800913D4 00000000 */   nop
/* 91FD8 800913D8 00000000 */  nop
/* 91FDC 800913DC 00000000 */  nop
