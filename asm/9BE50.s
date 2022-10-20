.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009B250
/* 9BE50 8009B250 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BE54 8009B254 10400007 */  beqz       $v0, .L8009B274
/* 9BE58 8009B258 00801821 */   addu      $v1, $a0, $zero
.L8009B25C:
/* 9BE5C 8009B25C 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BE60 8009B260 A0620000 */  sb         $v0, 0x0($v1)
/* 9BE64 8009B264 24A50001 */  addiu      $a1, $a1, 0x1
/* 9BE68 8009B268 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BE6C 8009B26C 1440FFFB */  bnez       $v0, .L8009B25C
/* 9BE70 8009B270 24630001 */   addiu     $v1, $v1, 0x1
.L8009B274:
/* 9BE74 8009B274 A0600000 */  sb         $zero, 0x0($v1)
/* 9BE78 8009B278 03E00008 */  jr         $ra
/* 9BE7C 8009B27C 00801021 */   addu      $v0, $a0, $zero

glabel func_8009B280
/* 9BE80 8009B280 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BE84 8009B284 1040000B */  beqz       $v0, .L8009B2B4
/* 9BE88 8009B288 00801821 */   addu      $v1, $a0, $zero
/* 9BE8C 8009B28C 2407FFFF */  addiu      $a3, $zero, -0x1
.L8009B290:
/* 9BE90 8009B290 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 9BE94 8009B294 50C70008 */  beql       $a2, $a3, .L8009B2B8
/* 9BE98 8009B298 A0600000 */   sb        $zero, 0x0($v1)
/* 9BE9C 8009B29C 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BEA0 8009B2A0 A0620000 */  sb         $v0, 0x0($v1)
/* 9BEA4 8009B2A4 24A50001 */  addiu      $a1, $a1, 0x1
/* 9BEA8 8009B2A8 90A20000 */  lbu        $v0, 0x0($a1)
/* 9BEAC 8009B2AC 1440FFF8 */  bnez       $v0, .L8009B290
/* 9BEB0 8009B2B0 24630001 */   addiu     $v1, $v1, 0x1
.L8009B2B4:
/* 9BEB4 8009B2B4 A0600000 */  sb         $zero, 0x0($v1)
.L8009B2B8:
/* 9BEB8 8009B2B8 03E00008 */  jr         $ra
/* 9BEBC 8009B2BC 00801021 */   addu      $v0, $a0, $zero

glabel func_8009B2C0
/* 9BEC0 8009B2C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9BEC4 8009B2C4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9BEC8 8009B2C8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 9BECC 8009B2CC 46207506 */  mov.d      $f20, $f14
/* 9BED0 8009B2D0 4620A00D */  trunc.w.d  $f0, $f20
/* 9BED4 8009B2D4 44040000 */  mfc1       $a0, $f0
/* 9BED8 8009B2D8 44800000 */  mtc1       $zero, $f0
/* 9BEDC 8009B2DC 44800800 */  mtc1       $zero, $f1
/* 9BEE0 8009B2E0 00000000 */  nop
/* 9BEE4 8009B2E4 46206032 */  c.eq.d     $f12, $f0
/* 9BEE8 8009B2E8 00000000 */  nop
/* 9BEEC 8009B2EC 00000000 */  nop
/* 9BEF0 8009B2F0 45000005 */  bc1f       .L8009B308
/* 9BEF4 8009B2F4 24020001 */   addiu     $v0, $zero, 0x1
/* 9BEF8 8009B2F8 00001021 */  addu       $v0, $zero, $zero
/* 9BEFC 8009B2FC 44800000 */  mtc1       $zero, $f0
/* 9BF00 8009B300 44800800 */  mtc1       $zero, $f1
/* 9BF04 8009B304 00000000 */  nop
.L8009B308:
/* 9BF08 8009B308 4620A032 */  c.eq.d     $f20, $f0
/* 9BF0C 8009B30C 00000000 */  nop
/* 9BF10 8009B310 00000000 */  nop
/* 9BF14 8009B314 45010002 */  bc1t       .L8009B320
/* 9BF18 8009B318 24030001 */   addiu     $v1, $zero, 0x1
/* 9BF1C 8009B31C 00001821 */  addu       $v1, $zero, $zero
.L8009B320:
/* 9BF20 8009B320 00431024 */  and        $v0, $v0, $v1
/* 9BF24 8009B324 10400004 */  beqz       $v0, .L8009B338
/* 9BF28 8009B328 00000000 */   nop
/* 9BF2C 8009B32C 3C01800D */  lui        $at, %hi(D_800D7030)
/* 9BF30 8009B330 08026D36 */  j          .L8009B4D8
/* 9BF34 8009B334 D4207030 */   ldc1      $f0, %lo(D_800D7030)($at)
.L8009B338:
/* 9BF38 8009B338 44800000 */  mtc1       $zero, $f0
/* 9BF3C 8009B33C 44800800 */  mtc1       $zero, $f1
/* 9BF40 8009B340 00000000 */  nop
/* 9BF44 8009B344 46206032 */  c.eq.d     $f12, $f0
/* 9BF48 8009B348 00000000 */  nop
/* 9BF4C 8009B34C 45010062 */  bc1t       .L8009B4D8
/* 9BF50 8009B350 00000000 */   nop
/* 9BF54 8009B354 45010005 */  bc1t       .L8009B36C
/* 9BF58 8009B358 24020001 */   addiu     $v0, $zero, 0x1
/* 9BF5C 8009B35C 00001021 */  addu       $v0, $zero, $zero
/* 9BF60 8009B360 44800000 */  mtc1       $zero, $f0
/* 9BF64 8009B364 44800800 */  mtc1       $zero, $f1
/* 9BF68 8009B368 00000000 */  nop
.L8009B36C:
/* 9BF6C 8009B36C 4620A032 */  c.eq.d     $f20, $f0
/* 9BF70 8009B370 00000000 */  nop
/* 9BF74 8009B374 00000000 */  nop
/* 9BF78 8009B378 45010002 */  bc1t       .L8009B384
/* 9BF7C 8009B37C 24030001 */   addiu     $v1, $zero, 0x1
/* 9BF80 8009B380 00001821 */  addu       $v1, $zero, $zero
.L8009B384:
/* 9BF84 8009B384 00431024 */  and        $v0, $v0, $v1
/* 9BF88 8009B388 1440000F */  bnez       $v0, .L8009B3C8
/* 9BF8C 8009B38C 00000000 */   nop
/* 9BF90 8009B390 44800000 */  mtc1       $zero, $f0
/* 9BF94 8009B394 44800800 */  mtc1       $zero, $f1
/* 9BF98 8009B398 00000000 */  nop
/* 9BF9C 8009B39C 4620603C */  c.lt.d     $f12, $f0
/* 9BFA0 8009B3A0 00000000 */  nop
/* 9BFA4 8009B3A4 4500000C */  bc1f       .L8009B3D8
/* 9BFA8 8009B3A8 00000000 */   nop
/* 9BFAC 8009B3AC 44840000 */  mtc1       $a0, $f0
/* 9BFB0 8009B3B0 00000000 */  nop
/* 9BFB4 8009B3B4 46800021 */  cvt.d.w    $f0, $f0
/* 9BFB8 8009B3B8 4620A032 */  c.eq.d     $f20, $f0
/* 9BFBC 8009B3BC 00000000 */  nop
/* 9BFC0 8009B3C0 4501000A */  bc1t       .L8009B3EC
/* 9BFC4 8009B3C4 00000000 */   nop
.L8009B3C8:
/* 9BFC8 8009B3C8 44800000 */  mtc1       $zero, $f0
/* 9BFCC 8009B3CC 44800800 */  mtc1       $zero, $f1
/* 9BFD0 8009B3D0 08026D36 */  j          .L8009B4D8
/* 9BFD4 8009B3D4 00000000 */   nop
.L8009B3D8:
/* 9BFD8 8009B3D8 44840000 */  mtc1       $a0, $f0
/* 9BFDC 8009B3DC 00000000 */  nop
/* 9BFE0 8009B3E0 46800021 */  cvt.d.w    $f0, $f0
/* 9BFE4 8009B3E4 4620A032 */  c.eq.d     $f20, $f0
/* 9BFE8 8009B3E8 00000000 */  nop
.L8009B3EC:
/* 9BFEC 8009B3EC 45010007 */  bc1t       .L8009B40C
/* 9BFF0 8009B3F0 00000000 */   nop
/* 9BFF4 8009B3F4 0C026EB8 */  jal        func_8009BAE0
/* 9BFF8 8009B3F8 00000000 */   nop
/* 9BFFC 8009B3FC 0C026EFC */  jal        func_8009BBF0
/* 9C000 8009B400 4620A302 */   mul.d     $f12, $f20, $f0
/* 9C004 8009B404 08026D35 */  j          .L8009B4D4
/* 9C008 8009B408 46200306 */   mov.d     $f12, $f0
.L8009B40C:
/* 9C00C 8009B40C 44803000 */  mtc1       $zero, $f6
/* 9C010 8009B410 44803800 */  mtc1       $zero, $f7
/* 9C014 8009B414 00000000 */  nop
/* 9C018 8009B418 4634303C */  c.lt.d     $f6, $f20
/* 9C01C 8009B41C 00000000 */  nop
/* 9C020 8009B420 00000000 */  nop
/* 9C024 8009B424 45000016 */  bc1f       .L8009B480
/* 9C028 8009B428 46203286 */   mov.d     $f10, $f6
/* 9C02C 8009B42C 3C01800D */  lui        $at, %hi(D_800D7038)
/* 9C030 8009B430 D4207038 */  ldc1       $f0, %lo(D_800D7038)($at)
/* 9C034 8009B434 46200206 */  mov.d      $f8, $f0
/* 9C038 8009B438 4620A501 */  sub.d      $f20, $f20, $f0
/* 9C03C 8009B43C 46206106 */  mov.d      $f4, $f12
/* 9C040 8009B440 4620A086 */  mov.d      $f2, $f20
/* 9C044 8009B444 46261032 */  c.eq.d     $f2, $f6
/* 9C048 8009B448 00000000 */  nop
/* 9C04C 8009B44C 00000000 */  nop
/* 9C050 8009B450 45010020 */  bc1t       .L8009B4D4
/* 9C054 8009B454 4620A501 */   sub.d     $f20, $f20, $f0
.L8009B458:
/* 9C058 8009B458 00000000 */  nop
/* 9C05C 8009B45C 46246302 */  mul.d      $f12, $f12, $f4
/* 9C060 8009B460 4620A006 */  mov.d      $f0, $f20
/* 9C064 8009B464 462A0032 */  c.eq.d     $f0, $f10
/* 9C068 8009B468 00000000 */  nop
/* 9C06C 8009B46C 00000000 */  nop
/* 9C070 8009B470 4500FFF9 */  bc1f       .L8009B458
/* 9C074 8009B474 4628A501 */   sub.d     $f20, $f20, $f8
/* 9C078 8009B478 08026D36 */  j          .L8009B4D8
/* 9C07C 8009B47C 46206006 */   mov.d     $f0, $f12
.L8009B480:
/* 9C080 8009B480 3C01800D */  lui        $at, %hi(D_800D7040)
/* 9C084 8009B484 D4247040 */  ldc1       $f4, %lo(D_800D7040)($at)
/* 9C088 8009B488 46202206 */  mov.d      $f8, $f4
/* 9C08C 8009B48C 44801000 */  mtc1       $zero, $f2
/* 9C090 8009B490 44801800 */  mtc1       $zero, $f3
/* 9C094 8009B494 00000000 */  nop
/* 9C098 8009B498 46201186 */  mov.d      $f6, $f2
/* 9C09C 8009B49C 4620A006 */  mov.d      $f0, $f20
/* 9C0A0 8009B4A0 46220032 */  c.eq.d     $f0, $f2
/* 9C0A4 8009B4A4 00000000 */  nop
/* 9C0A8 8009B4A8 00000000 */  nop
/* 9C0AC 8009B4AC 45010008 */  bc1t       .L8009B4D0
/* 9C0B0 8009B4B0 4624A500 */   add.d     $f20, $f20, $f4
.L8009B4B4:
/* 9C0B4 8009B4B4 462C2103 */  div.d      $f4, $f4, $f12
/* 9C0B8 8009B4B8 4620A006 */  mov.d      $f0, $f20
/* 9C0BC 8009B4BC 46260032 */  c.eq.d     $f0, $f6
/* 9C0C0 8009B4C0 00000000 */  nop
/* 9C0C4 8009B4C4 00000000 */  nop
/* 9C0C8 8009B4C8 4500FFFA */  bc1f       .L8009B4B4
/* 9C0CC 8009B4CC 4628A500 */   add.d     $f20, $f20, $f8
.L8009B4D0:
/* 9C0D0 8009B4D0 46202306 */  mov.d      $f12, $f4
.L8009B4D4:
/* 9C0D4 8009B4D4 46206006 */  mov.d      $f0, $f12
.L8009B4D8:
/* 9C0D8 8009B4D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C0DC 8009B4DC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 9C0E0 8009B4E0 03E00008 */  jr         $ra
/* 9C0E4 8009B4E4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 9C0E8 8009B4E8 00000000 */  nop
/* 9C0EC 8009B4EC 00000000 */  nop
