.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8007B220
/* 7BE20 8007B220 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7BE24 8007B224 D42869E0 */  ldc1       $f8, %lo(D_800C69E0)($at)
/* 7BE28 8007B228 3C01800D */  lui        $at, %hi(D_800D5FD0)
/* 7BE2C 8007B22C D4265FD0 */  ldc1       $f6, %lo(D_800D5FD0)($at)
/* 7BE30 8007B230 46264202 */  mul.d      $f8, $f8, $f6
/* 7BE34 8007B234 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 7BE38 8007B238 D42469F8 */  ldc1       $f4, %lo(D_800C69F8)($at)
/* 7BE3C 8007B23C 3C01800D */  lui        $at, %hi(D_800D5FD8)
/* 7BE40 8007B240 D4225FD8 */  ldc1       $f2, %lo(D_800D5FD8)($at)
/* 7BE44 8007B244 46222082 */  mul.d      $f2, $f4, $f2
/* 7BE48 8007B248 3C01800D */  lui        $at, %hi(D_800D5FE0)
/* 7BE4C 8007B24C D4205FE0 */  ldc1       $f0, %lo(D_800D5FE0)($at)
/* 7BE50 8007B250 46202102 */  mul.d      $f4, $f4, $f0
/* 7BE54 8007B254 00000000 */  nop
/* 7BE58 8007B258 46261002 */  mul.d      $f0, $f2, $f6
/* 7BE5C 8007B25C 00000000 */  nop
/* 7BE60 8007B260 46262182 */  mul.d      $f6, $f4, $f6
/* 7BE64 8007B264 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7BE68 8007B268 F4286A10 */  sdc1       $f8, %lo(D_800C6A10)($at)
/* 7BE6C 8007B26C 3C01800C */  lui        $at, %hi(D_800C6A18)
/* 7BE70 8007B270 F4226A18 */  sdc1       $f2, %lo(D_800C6A18)($at)
/* 7BE74 8007B274 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 7BE78 8007B278 F4246A28 */  sdc1       $f4, %lo(D_800C6A28)($at)
/* 7BE7C 8007B27C 3C01800C */  lui        $at, %hi(D_800C6A20)
/* 7BE80 8007B280 F4206A20 */  sdc1       $f0, %lo(D_800C6A20)($at)
/* 7BE84 8007B284 3C01800C */  lui        $at, %hi(D_800C6A30)
/* 7BE88 8007B288 03E00008 */  jr         $ra
/* 7BE8C 8007B28C F4266A30 */   sdc1      $f6, %lo(D_800C6A30)($at)

glabel func_8007B290
/* 7BE90 8007B290 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BE94 8007B294 AFB00010 */  sw         $s0, 0x10($sp)
/* 7BE98 8007B298 00808021 */  addu       $s0, $a0, $zero
/* 7BE9C 8007B29C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7BEA0 8007B2A0 D6060038 */  ldc1       $f6, 0x38($s0)
/* 7BEA4 8007B2A4 D6000078 */  ldc1       $f0, 0x78($s0)
/* 7BEA8 8007B2A8 46203182 */  mul.d      $f6, $f6, $f0
/* 7BEAC 8007B2AC D6080040 */  ldc1       $f8, 0x40($s0)
/* 7BEB0 8007B2B0 D6000080 */  ldc1       $f0, 0x80($s0)
/* 7BEB4 8007B2B4 46204202 */  mul.d      $f8, $f8, $f0
/* 7BEB8 8007B2B8 D6020078 */  ldc1       $f2, 0x78($s0)
/* 7BEBC 8007B2BC D6000028 */  ldc1       $f0, 0x28($s0)
/* 7BEC0 8007B2C0 46220002 */  mul.d      $f0, $f0, $f2
/* 7BEC4 8007B2C4 D6040080 */  ldc1       $f4, 0x80($s0)
/* 7BEC8 8007B2C8 D6020050 */  ldc1       $f2, 0x50($s0)
/* 7BECC 8007B2CC 46241082 */  mul.d      $f2, $f2, $f4
/* 7BED0 8007B2D0 46283180 */  add.d      $f6, $f6, $f8
/* 7BED4 8007B2D4 46220001 */  sub.d      $f0, $f0, $f2
/* 7BED8 8007B2D8 46203187 */  neg.d      $f6, $f6
/* 7BEDC 8007B2DC 46200007 */  neg.d      $f0, $f0
/* 7BEE0 8007B2E0 F6060068 */  sdc1       $f6, 0x68($s0)
/* 7BEE4 8007B2E4 F6000058 */  sdc1       $f0, 0x58($s0)
/* 7BEE8 8007B2E8 0C022D13 */  jal        func_8008B44C
/* 7BEEC 8007B2EC 26040058 */   addiu     $a0, $s0, 0x58
/* 7BEF0 8007B2F0 F6000088 */  sdc1       $f0, 0x88($s0)
/* 7BEF4 8007B2F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7BEF8 8007B2F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 7BEFC 8007B2FC 03E00008 */  jr         $ra
/* 7BF00 8007B300 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007B304
/* 7BF04 8007B304 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7BF08 8007B308 AFB50024 */  sw         $s5, 0x24($sp)
/* 7BF0C 8007B30C 3C15802C */  lui        $s5, %hi(D_802C6050)
/* 7BF10 8007B310 8EB56050 */  lw         $s5, %lo(D_802C6050)($s5)
/* 7BF14 8007B314 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 7BF18 8007B318 3C01800D */  lui        $at, %hi(D_800D5FE8)
/* 7BF1C 8007B31C D4345FE8 */  ldc1       $f20, %lo(D_800D5FE8)($at)
/* 7BF20 8007B320 AFB40020 */  sw         $s4, 0x20($sp)
/* 7BF24 8007B324 0000A021 */  addu       $s4, $zero, $zero
/* 7BF28 8007B328 AFB10014 */  sw         $s1, 0x14($sp)
/* 7BF2C 8007B32C 00008821 */  addu       $s1, $zero, $zero
/* 7BF30 8007B330 AFB20018 */  sw         $s2, 0x18($sp)
/* 7BF34 8007B334 00009021 */  addu       $s2, $zero, $zero
/* 7BF38 8007B338 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7BF3C 8007B33C 3C13800C */  lui        $s3, %hi(D_800C6990)
/* 7BF40 8007B340 26736990 */  addiu      $s3, $s3, %lo(D_800C6990)
/* 7BF44 8007B344 AFBF0028 */  sw         $ra, 0x28($sp)
/* 7BF48 8007B348 AFB00010 */  sw         $s0, 0x10($sp)
.L8007B34C:
/* 7BF4C 8007B34C 00002021 */  addu       $a0, $zero, $zero
.L8007B350:
/* 7BF50 8007B350 8E620000 */  lw         $v0, 0x0($s3)
/* 7BF54 8007B354 000418C0 */  sll        $v1, $a0, 3
/* 7BF58 8007B358 24840001 */  addiu      $a0, $a0, 0x1
/* 7BF5C 8007B35C 00621821 */  addu       $v1, $v1, $v0
/* 7BF60 8007B360 28820010 */  slti       $v0, $a0, 0x10
/* 7BF64 8007B364 1440FFFA */  bnez       $v0, .L8007B350
/* 7BF68 8007B368 F4740000 */   sdc1      $f20, 0x0($v1)
/* 7BF6C 8007B36C 02A02021 */  addu       $a0, $s5, $zero
/* 7BF70 8007B370 3C02802F */  lui        $v0, %hi(D_802EF7E0)
/* 7BF74 8007B374 2442F7E0 */  addiu      $v0, $v0, %lo(D_802EF7E0)
/* 7BF78 8007B378 02228021 */  addu       $s0, $s1, $v0
/* 7BF7C 8007B37C 3C01802D */  lui        $at, %hi(D_802D2234)
/* 7BF80 8007B380 00320821 */  addu       $at, $at, $s2
/* 7BF84 8007B384 AC202234 */  sw         $zero, %lo(D_802D2234)($at)
/* 7BF88 8007B388 3C01802D */  lui        $at, %hi(D_802D2228)
/* 7BF8C 8007B38C 00320821 */  addu       $at, $at, $s2
/* 7BF90 8007B390 F4342228 */  sdc1       $f20, %lo(D_802D2228)($at)
/* 7BF94 8007B394 0C01CEB4 */  jal        func_80073AD0
/* 7BF98 8007B398 02002821 */   addu      $a1, $s0, $zero
/* 7BF9C 8007B39C 3C03802F */  lui        $v1, %hi(D_802EF870)
/* 7BFA0 8007B3A0 00711821 */  addu       $v1, $v1, $s1
/* 7BFA4 8007B3A4 8063F870 */  lb         $v1, %lo(D_802EF870)($v1)
/* 7BFA8 8007B3A8 24020008 */  addiu      $v0, $zero, 0x8
/* 7BFAC 8007B3AC 3C01802F */  lui        $at, %hi(D_802EF850)
/* 7BFB0 8007B3B0 00310821 */  addu       $at, $at, $s1
/* 7BFB4 8007B3B4 AC20F850 */  sw         $zero, %lo(D_802EF850)($at)
/* 7BFB8 8007B3B8 3C01802F */  lui        $at, %hi(D_802EF854)
/* 7BFBC 8007B3BC 00310821 */  addu       $at, $at, $s1
/* 7BFC0 8007B3C0 AC20F854 */  sw         $zero, %lo(D_802EF854)($at)
/* 7BFC4 8007B3C4 54620004 */  bnel       $v1, $v0, .L8007B3D8
/* 7BFC8 8007B3C8 26B50070 */   addiu     $s5, $s5, 0x70
/* 7BFCC 8007B3CC 0C01ECA4 */  jal        func_8007B290
/* 7BFD0 8007B3D0 02002021 */   addu      $a0, $s0, $zero
/* 7BFD4 8007B3D4 26B50070 */  addiu      $s5, $s5, 0x70
.L8007B3D8:
/* 7BFD8 8007B3D8 263100F0 */  addiu      $s1, $s1, 0xF0
/* 7BFDC 8007B3DC 26520010 */  addiu      $s2, $s2, 0x10
/* 7BFE0 8007B3E0 26940001 */  addiu      $s4, $s4, 0x1
/* 7BFE4 8007B3E4 2A820010 */  slti       $v0, $s4, 0x10
/* 7BFE8 8007B3E8 1440FFD8 */  bnez       $v0, .L8007B34C
/* 7BFEC 8007B3EC 26730004 */   addiu     $s3, $s3, 0x4
/* 7BFF0 8007B3F0 24030001 */  addiu      $v1, $zero, 0x1
/* 7BFF4 8007B3F4 24020010 */  addiu      $v0, $zero, 0x10
/* 7BFF8 8007B3F8 3C01803F */  lui        $at, %hi(D_803ECFC4)
/* 7BFFC 8007B3FC AC20CFC4 */  sw         $zero, %lo(D_803ECFC4)($at)
/* 7C000 8007B400 3C018031 */  lui        $at, %hi(D_803126D0)
/* 7C004 8007B404 AC2326D0 */  sw         $v1, %lo(D_803126D0)($at)
/* 7C008 8007B408 3C01802D */  lui        $at, %hi(D_802D0BF0)
/* 7C00C 8007B40C AC200BF0 */  sw         $zero, %lo(D_802D0BF0)($at)
/* 7C010 8007B410 3C01803F */  lui        $at, %hi(D_803F40C0)
/* 7C014 8007B414 AC2240C0 */  sw         $v0, %lo(D_803F40C0)($at)
/* 7C018 8007B418 3C01802D */  lui        $at, %hi(D_802D2224)
/* 7C01C 8007B41C AC232224 */  sw         $v1, %lo(D_802D2224)($at)
/* 7C020 8007B420 8FBF0028 */  lw         $ra, 0x28($sp)
/* 7C024 8007B424 8FB50024 */  lw         $s5, 0x24($sp)
/* 7C028 8007B428 8FB40020 */  lw         $s4, 0x20($sp)
/* 7C02C 8007B42C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7C030 8007B430 8FB20018 */  lw         $s2, 0x18($sp)
/* 7C034 8007B434 8FB10014 */  lw         $s1, 0x14($sp)
/* 7C038 8007B438 8FB00010 */  lw         $s0, 0x10($sp)
/* 7C03C 8007B43C D7B40030 */  ldc1       $f20, 0x30($sp)
/* 7C040 8007B440 03E00008 */  jr         $ra
/* 7C044 8007B444 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8007B448
/* 7C048 8007B448 3C07802C */  lui        $a3, %hi(D_802C6050)
/* 7C04C 8007B44C 8CE76050 */  lw         $a3, %lo(D_802C6050)($a3)
/* 7C050 8007B450 00005821 */  addu       $t3, $zero, $zero
/* 7C054 8007B454 240D0010 */  addiu      $t5, $zero, 0x10
/* 7C058 8007B458 240C0001 */  addiu      $t4, $zero, 0x1
/* 7C05C 8007B45C 3C01800D */  lui        $at, %hi(D_800D5FF0)
/* 7C060 8007B460 D4205FF0 */  ldc1       $f0, %lo(D_800D5FF0)($at)
/* 7C064 8007B464 3C028031 */  lui        $v0, %hi(D_80312AC0)
/* 7C068 8007B468 24422AC0 */  addiu      $v0, $v0, %lo(D_80312AC0)
/* 7C06C 8007B46C 244AFFF0 */  addiu      $t2, $v0, -0x10
/* 7C070 8007B470 00404821 */  addu       $t1, $v0, $zero
/* 7C074 8007B474 00004021 */  addu       $t0, $zero, $zero
/* 7C078 8007B478 24020001 */  addiu      $v0, $zero, 0x1
/* 7C07C 8007B47C 3C01802D */  lui        $at, %hi(D_802D0BF8)
/* 7C080 8007B480 AC200BF8 */  sw         $zero, %lo(D_802D0BF8)($at)
/* 7C084 8007B484 3C01800C */  lui        $at, %hi(D_800C6B8B)
/* 7C088 8007B488 A0226B8B */  sb         $v0, %lo(D_800C6B8B)($at)
/* 7C08C 8007B48C 3C01802B */  lui        $at, %hi(D_802B5B50)
/* 7C090 8007B490 F42C5B50 */  sdc1       $f12, %lo(D_802B5B50)($at)
/* 7C094 8007B494 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7C098 8007B498 AC200980 */  sw         $zero, %lo(D_802D0980)($at)
/* 7C09C 8007B49C 3C01802D */  lui        $at, %hi(D_802D0984)
/* 7C0A0 8007B4A0 AC200984 */  sw         $zero, %lo(D_802D0984)($at)
/* 7C0A4 8007B4A4 3C01802C */  lui        $at, %hi(D_802C57D0)
/* 7C0A8 8007B4A8 AC2057D0 */  sw         $zero, %lo(D_802C57D0)($at)
/* 7C0AC 8007B4AC 3C01802C */  lui        $at, %hi(D_802C57D4)
/* 7C0B0 8007B4B0 AC2057D4 */  sw         $zero, %lo(D_802C57D4)($at)
/* 7C0B4 8007B4B4 24E60050 */  addiu      $a2, $a3, 0x50
.L8007B4B8:
/* 7C0B8 8007B4B8 3C028031 */  lui        $v0, %hi(D_80312ADA)
/* 7C0BC 8007B4BC 00481021 */  addu       $v0, $v0, $t0
/* 7C0C0 8007B4C0 90422ADA */  lbu        $v0, %lo(D_80312ADA)($v0)
/* 7C0C4 8007B4C4 A0E20000 */  sb         $v0, 0x0($a3)
/* 7C0C8 8007B4C8 00021600 */  sll        $v0, $v0, 24
/* 7C0CC 8007B4CC 00021603 */  sra        $v0, $v0, 24
/* 7C0D0 8007B4D0 104D0016 */  beq        $v0, $t5, .L8007B52C
/* 7C0D4 8007B4D4 00000000 */   nop
/* 7C0D8 8007B4D8 A0EC0000 */  sb         $t4, 0x0($a3)
/* 7C0DC 8007B4DC 8D220000 */  lw         $v0, 0x0($t1)
/* 7C0E0 8007B4E0 8D230004 */  lw         $v1, 0x4($t1)
/* 7C0E4 8007B4E4 8D240008 */  lw         $a0, 0x8($t1)
/* 7C0E8 8007B4E8 8D25000C */  lw         $a1, 0xC($t1)
/* 7C0EC 8007B4EC ACC2FFB8 */  sw         $v0, -0x48($a2)
/* 7C0F0 8007B4F0 ACC3FFBC */  sw         $v1, -0x44($a2)
/* 7C0F4 8007B4F4 ACC4FFC0 */  sw         $a0, -0x40($a2)
/* 7C0F8 8007B4F8 ACC5FFC4 */  sw         $a1, -0x3C($a2)
/* 7C0FC 8007B4FC 8D220010 */  lw         $v0, 0x10($t1)
/* 7C100 8007B500 8D230014 */  lw         $v1, 0x14($t1)
/* 7C104 8007B504 ACC2FFC8 */  sw         $v0, -0x38($a2)
/* 7C108 8007B508 ACC3FFCC */  sw         $v1, -0x34($a2)
/* 7C10C 8007B50C 8D420000 */  lw         $v0, 0x0($t2)
/* 7C110 8007B510 8D430004 */  lw         $v1, 0x4($t2)
/* 7C114 8007B514 8D440008 */  lw         $a0, 0x8($t2)
/* 7C118 8007B518 8D45000C */  lw         $a1, 0xC($t2)
/* 7C11C 8007B51C ACC20010 */  sw         $v0, 0x10($a2)
/* 7C120 8007B520 ACC30014 */  sw         $v1, 0x14($a2)
/* 7C124 8007B524 ACC40018 */  sw         $a0, 0x18($a2)
/* 7C128 8007B528 ACC5001C */  sw         $a1, 0x1C($a2)
.L8007B52C:
/* 7C12C 8007B52C ACC0FFE8 */  sw         $zero, -0x18($a2)
/* 7C130 8007B530 ACC0FFEC */  sw         $zero, -0x14($a2)
/* 7C134 8007B534 ACC00008 */  sw         $zero, 0x8($a2)
/* 7C138 8007B538 ACC0000C */  sw         $zero, 0xC($a2)
/* 7C13C 8007B53C ACC0FFD0 */  sw         $zero, -0x30($a2)
/* 7C140 8007B540 ACC0FFD4 */  sw         $zero, -0x2C($a2)
/* 7C144 8007B544 ACC0FFD8 */  sw         $zero, -0x28($a2)
/* 7C148 8007B548 ACC0FFDC */  sw         $zero, -0x24($a2)
/* 7C14C 8007B54C F4C0FFE0 */  sdc1       $f0, -0x20($a2)
/* 7C150 8007B550 F4C0FFF0 */  sdc1       $f0, -0x10($a2)
/* 7C154 8007B554 ACC0FFF8 */  sw         $zero, -0x8($a2)
/* 7C158 8007B558 ACC0FFFC */  sw         $zero, -0x4($a2)
/* 7C15C 8007B55C ACC00000 */  sw         $zero, 0x0($a2)
/* 7C160 8007B560 ACC00004 */  sw         $zero, 0x4($a2)
/* 7C164 8007B564 24C60070 */  addiu      $a2, $a2, 0x70
/* 7C168 8007B568 24E70070 */  addiu      $a3, $a3, 0x70
/* 7C16C 8007B56C 254A0030 */  addiu      $t2, $t2, 0x30
/* 7C170 8007B570 25290030 */  addiu      $t1, $t1, 0x30
/* 7C174 8007B574 256B0001 */  addiu      $t3, $t3, 0x1
/* 7C178 8007B578 29620010 */  slti       $v0, $t3, 0x10
/* 7C17C 8007B57C 1440FFCE */  bnez       $v0, .L8007B4B8
/* 7C180 8007B580 25080030 */   addiu     $t0, $t0, 0x30
/* 7C184 8007B584 03E00008 */  jr         $ra
/* 7C188 8007B588 00000000 */   nop

glabel func_8007B58C
/* 7C18C 8007B58C 3C01802F */  lui        $at, %hi(D_802EF628)
/* 7C190 8007B590 D422F628 */  ldc1       $f2, %lo(D_802EF628)($at)
/* 7C194 8007B594 3C01802F */  lui        $at, %hi(D_802EF630)
/* 7C198 8007B598 D424F630 */  ldc1       $f4, %lo(D_802EF630)($at)
/* 7C19C 8007B59C 3C02802C */  lui        $v0, %hi(D_802C6050)
/* 7C1A0 8007B5A0 8C426050 */  lw         $v0, %lo(D_802C6050)($v0)
/* 7C1A4 8007B5A4 3C01802F */  lui        $at, %hi(D_802EF610)
/* 7C1A8 8007B5A8 D420F610 */  ldc1       $f0, %lo(D_802EF610)($at)
/* 7C1AC 8007B5AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C1B0 8007B5B0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7C1B4 8007B5B4 46200007 */  neg.d      $f0, $f0
/* 7C1B8 8007B5B8 3C01802B */  lui        $at, %hi(D_802B5BA8)
/* 7C1BC 8007B5BC F4225BA8 */  sdc1       $f2, %lo(D_802B5BA8)($at)
/* 7C1C0 8007B5C0 3C01802B */  lui        $at, %hi(D_802B5BB0)
/* 7C1C4 8007B5C4 F4245BB0 */  sdc1       $f4, %lo(D_802B5BB0)($at)
/* 7C1C8 8007B5C8 F4400020 */  sdc1       $f0, 0x20($v0)
/* 7C1CC 8007B5CC 3C01802F */  lui        $at, %hi(D_802EF620)
/* 7C1D0 8007B5D0 D420F620 */  ldc1       $f0, %lo(D_802EF620)($at)
/* 7C1D4 8007B5D4 46200007 */  neg.d      $f0, $f0
/* 7C1D8 8007B5D8 F4400030 */  sdc1       $f0, 0x30($v0)
/* 7C1DC 8007B5DC 3C01802F */  lui        $at, %hi(D_802EF718)
/* 7C1E0 8007B5E0 D42CF718 */  ldc1       $f12, %lo(D_802EF718)($at)
/* 7C1E4 8007B5E4 3C06802B */  lui        $a2, %hi(D_802B5B58)
/* 7C1E8 8007B5E8 0C022C03 */  jal        func_8008B00C
/* 7C1EC 8007B5EC 24C65B58 */   addiu     $a2, $a2, %lo(D_802B5B58)
/* 7C1F0 8007B5F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7C1F4 8007B5F4 03E00008 */  jr         $ra
/* 7C1F8 8007B5F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007B5FC
/* 7C1FC 8007B5FC 3C02802D */  lui        $v0, %hi(D_802D0BC0)
/* 7C200 8007B600 8C420BC0 */  lw         $v0, %lo(D_802D0BC0)($v0)
/* 7C204 8007B604 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C208 8007B608 14400026 */  bnez       $v0, .L8007B6A4
/* 7C20C 8007B60C AFBF0020 */   sw        $ra, 0x20($sp)
/* 7C210 8007B610 3C02800C */  lui        $v0, %hi(D_800C6B89)
/* 7C214 8007B614 80426B89 */  lb         $v0, %lo(D_800C6B89)($v0)
/* 7C218 8007B618 14400022 */  bnez       $v0, .L8007B6A4
/* 7C21C 8007B61C 27A60010 */   addiu     $a2, $sp, 0x10
/* 7C220 8007B620 24020002 */  addiu      $v0, $zero, 0x2
/* 7C224 8007B624 3C01802D */  lui        $at, %hi(D_802D2FC0)
/* 7C228 8007B628 A4222FC0 */  sh         $v0, %lo(D_802D2FC0)($at)
/* 7C22C 8007B62C 24020002 */  addiu      $v0, $zero, 0x2
/* 7C230 8007B630 3C01802D */  lui        $at, %hi(D_802D0C5C)
/* 7C234 8007B634 A0220C5C */  sb         $v0, %lo(D_802D0C5C)($at)
/* 7C238 8007B638 0C01D392 */  jal        func_80074E48
/* 7C23C 8007B63C 27A70014 */   addiu     $a3, $sp, 0x14
/* 7C240 8007B640 0C00BCE5 */  jal        func_8002F394
/* 7C244 8007B644 27A40018 */   addiu     $a0, $sp, 0x18
/* 7C248 8007B648 50400011 */  beql       $v0, $zero, .L8007B690
/* 7C24C 8007B64C 2402000A */   addiu     $v0, $zero, 0xA
/* 7C250 8007B650 D7A20018 */  ldc1       $f2, 0x18($sp)
/* 7C254 8007B654 3C01800D */  lui        $at, %hi(D_800D5FF8)
/* 7C258 8007B658 D4205FF8 */  ldc1       $f0, %lo(D_800D5FF8)($at)
/* 7C25C 8007B65C 4622003C */  c.lt.d     $f0, $f2
/* 7C260 8007B660 00000000 */  nop
/* 7C264 8007B664 00000000 */  nop
/* 7C268 8007B668 45010009 */  bc1t       .L8007B690
/* 7C26C 8007B66C 2402000D */   addiu     $v0, $zero, 0xD
/* 7C270 8007B670 3C01800D */  lui        $at, %hi(D_800D6000)
/* 7C274 8007B674 D4206000 */  ldc1       $f0, %lo(D_800D6000)($at)
/* 7C278 8007B678 4620103C */  c.lt.d     $f2, $f0
/* 7C27C 8007B67C 00000000 */  nop
/* 7C280 8007B680 00000000 */  nop
/* 7C284 8007B684 45010002 */  bc1t       .L8007B690
/* 7C288 8007B688 2402000E */   addiu     $v0, $zero, 0xE
/* 7C28C 8007B68C 2402000C */  addiu      $v0, $zero, 0xC
.L8007B690:
/* 7C290 8007B690 AFA20014 */  sw         $v0, 0x14($sp)
/* 7C294 8007B694 8FA40014 */  lw         $a0, 0x14($sp)
/* 7C298 8007B698 8FA50010 */  lw         $a1, 0x10($sp)
/* 7C29C 8007B69C 0C003273 */  jal        func_8000C9CC
/* 7C2A0 8007B6A0 24060001 */   addiu     $a2, $zero, 0x1
.L8007B6A4:
/* 7C2A4 8007B6A4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7C2A8 8007B6A8 03E00008 */  jr         $ra
/* 7C2AC 8007B6AC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007B6B0
/* 7C2B0 8007B6B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C2B4 8007B6B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 7C2B8 8007B6B8 3C10802F */  lui        $s0, %hi(D_802EF730)
/* 7C2BC 8007B6BC 2610F730 */  addiu      $s0, $s0, %lo(D_802EF730)
/* 7C2C0 8007B6C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C2C4 8007B6C4 D60C0000 */  ldc1       $f12, 0x0($s0)
/* 7C2C8 8007B6C8 24020001 */  addiu      $v0, $zero, 0x1
/* 7C2CC 8007B6CC 3C01800C */  lui        $at, %hi(D_800C6B88)
/* 7C2D0 8007B6D0 0C01ED12 */  jal        func_8007B448
/* 7C2D4 8007B6D4 A0226B88 */   sb        $v0, %lo(D_800C6B88)($at)
/* 7C2D8 8007B6D8 0C01ED63 */  jal        func_8007B58C
/* 7C2DC 8007B6DC 00000000 */   nop
/* 7C2E0 8007B6E0 3C05802C */  lui        $a1, %hi(D_802C6050)
/* 7C2E4 8007B6E4 8CA56050 */  lw         $a1, %lo(D_802C6050)($a1)
/* 7C2E8 8007B6E8 0C00BCBB */  jal        func_8002F2EC
/* 7C2EC 8007B6EC 2604FE98 */   addiu     $a0, $s0, -0x168
/* 7C2F0 8007B6F0 0C01ECC1 */  jal        func_8007B304
/* 7C2F4 8007B6F4 00000000 */   nop
/* 7C2F8 8007B6F8 0C00BCF1 */  jal        func_8002F3C4
/* 7C2FC 8007B6FC 00000000 */   nop
/* 7C300 8007B700 0C01ED7F */  jal        func_8007B5FC
/* 7C304 8007B704 46200306 */   mov.d     $f12, $f0
/* 7C308 8007B708 0C00BCF4 */  jal        func_8002F3D0
/* 7C30C 8007B70C 00000000 */   nop
/* 7C310 8007B710 0C01D750 */  jal        func_80075D40
/* 7C314 8007B714 46200306 */   mov.d     $f12, $f0
/* 7C318 8007B718 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C31C 8007B71C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7C320 8007B720 03E00008 */  jr         $ra
/* 7C324 8007B724 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007B728
/* 7C328 8007B728 3C03802D */  lui        $v1, %hi(D_802D0C4C)
/* 7C32C 8007B72C 8C630C4C */  lw         $v1, %lo(D_802D0C4C)($v1)
/* 7C330 8007B730 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7C334 8007B734 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 7C338 8007B738 3C01800D */  lui        $at, %hi(D_800D6008)
/* 7C33C 8007B73C D4346008 */  ldc1       $f20, %lo(D_800D6008)($at)
/* 7C340 8007B740 24020001 */  addiu      $v0, $zero, 0x1
/* 7C344 8007B744 14620003 */  bne        $v1, $v0, .L8007B754
/* 7C348 8007B748 AFBF0010 */   sw        $ra, 0x10($sp)
/* 7C34C 8007B74C 3C01800C */  lui        $at, %hi(D_800C6830)
/* 7C350 8007B750 D4346830 */  ldc1       $f20, %lo(D_800C6830)($at)
.L8007B754:
/* 7C354 8007B754 0C01ED12 */  jal        func_8007B448
/* 7C358 8007B758 4620A306 */   mov.d     $f12, $f20
/* 7C35C 8007B75C 0C01ED63 */  jal        func_8007B58C
/* 7C360 8007B760 00000000 */   nop
/* 7C364 8007B764 3C05802C */  lui        $a1, %hi(D_802C6050)
/* 7C368 8007B768 8CA56050 */  lw         $a1, %lo(D_802C6050)($a1)
/* 7C36C 8007B76C 3C04802F */  lui        $a0, %hi(D_802EF730)
/* 7C370 8007B770 2484F730 */  addiu      $a0, $a0, %lo(D_802EF730)
/* 7C374 8007B774 F4940000 */  sdc1       $f20, 0x0($a0)
/* 7C378 8007B778 0C00BCBB */  jal        func_8002F2EC
/* 7C37C 8007B77C 2484FE98 */   addiu     $a0, $a0, -0x168
/* 7C380 8007B780 0C01ECC1 */  jal        func_8007B304
/* 7C384 8007B784 00000000 */   nop
/* 7C388 8007B788 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7C38C 8007B78C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 7C390 8007B790 03E00008 */  jr         $ra
/* 7C394 8007B794 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007B798
/* 7C398 8007B798 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C39C 8007B79C AFBF0010 */  sw         $ra, 0x10($sp)
/* 7C3A0 8007B7A0 D4800030 */  ldc1       $f0, 0x30($a0)
/* 7C3A4 8007B7A4 3C02802C */  lui        $v0, %hi(D_802C6050)
/* 7C3A8 8007B7A8 8C426050 */  lw         $v0, %lo(D_802C6050)($v0)
/* 7C3AC 8007B7AC 46200007 */  neg.d      $f0, $f0
/* 7C3B0 8007B7B0 3C01802B */  lui        $at, %hi(D_802B5BA8)
/* 7C3B4 8007B7B4 F4205BA8 */  sdc1       $f0, %lo(D_802B5BA8)($at)
/* 7C3B8 8007B7B8 D4800038 */  ldc1       $f0, 0x38($a0)
/* 7C3BC 8007B7BC 3C01802B */  lui        $at, %hi(D_802B5BB0)
/* 7C3C0 8007B7C0 F4205BB0 */  sdc1       $f0, %lo(D_802B5BB0)($at)
/* 7C3C4 8007B7C4 D4800020 */  ldc1       $f0, 0x20($a0)
/* 7C3C8 8007B7C8 F4400020 */  sdc1       $f0, 0x20($v0)
/* 7C3CC 8007B7CC D4800028 */  ldc1       $f0, 0x28($a0)
/* 7C3D0 8007B7D0 F4400030 */  sdc1       $f0, 0x30($v0)
/* 7C3D4 8007B7D4 D48C0018 */  ldc1       $f12, 0x18($a0)
/* 7C3D8 8007B7D8 3C06802B */  lui        $a2, %hi(D_802B5B58)
/* 7C3DC 8007B7DC 0C022C03 */  jal        func_8008B00C
/* 7C3E0 8007B7E0 24C65B58 */   addiu     $a2, $a2, %lo(D_802B5B58)
/* 7C3E4 8007B7E4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7C3E8 8007B7E8 03E00008 */  jr         $ra
/* 7C3EC 8007B7EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007B7F0
/* 7C3F0 8007B7F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7C3F4 8007B7F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 7C3F8 8007B7F8 00808021 */  addu       $s0, $a0, $zero
/* 7C3FC 8007B7FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C400 8007B800 0C01ED12 */  jal        func_8007B448
/* 7C404 8007B804 D60C0000 */   ldc1      $f12, 0x0($s0)
/* 7C408 8007B808 0C01EDE6 */  jal        func_8007B798
/* 7C40C 8007B80C 02002021 */   addu      $a0, $s0, $zero
/* 7C410 8007B810 D6000030 */  ldc1       $f0, 0x30($s0)
/* 7C414 8007B814 46200007 */  neg.d      $f0, $f0
/* 7C418 8007B818 3C02802F */  lui        $v0, %hi(D_802EF628)
/* 7C41C 8007B81C 2442F628 */  addiu      $v0, $v0, %lo(D_802EF628)
/* 7C420 8007B820 F4400000 */  sdc1       $f0, 0x0($v0)
/* 7C424 8007B824 D6000038 */  ldc1       $f0, 0x38($s0)
/* 7C428 8007B828 3C01802F */  lui        $at, %hi(D_802EF630)
/* 7C42C 8007B82C F420F630 */  sdc1       $f0, %lo(D_802EF630)($at)
/* 7C430 8007B830 D6000018 */  ldc1       $f0, 0x18($s0)
/* 7C434 8007B834 3C01802F */  lui        $at, %hi(D_802EF718)
/* 7C438 8007B838 F420F718 */  sdc1       $f0, %lo(D_802EF718)($at)
/* 7C43C 8007B83C D6000000 */  ldc1       $f0, 0x0($s0)
/* 7C440 8007B840 3C01802F */  lui        $at, %hi(D_802EF730)
/* 7C444 8007B844 F420F730 */  sdc1       $f0, %lo(D_802EF730)($at)
/* 7C448 8007B848 D6000020 */  ldc1       $f0, 0x20($s0)
/* 7C44C 8007B84C 46200007 */  neg.d      $f0, $f0
/* 7C450 8007B850 3C01802F */  lui        $at, %hi(D_802EF610)
/* 7C454 8007B854 F420F610 */  sdc1       $f0, %lo(D_802EF610)($at)
/* 7C458 8007B858 D6000028 */  ldc1       $f0, 0x28($s0)
/* 7C45C 8007B85C 46200007 */  neg.d      $f0, $f0
/* 7C460 8007B860 3C01802F */  lui        $at, %hi(D_802EF620)
/* 7C464 8007B864 F420F620 */  sdc1       $f0, %lo(D_802EF620)($at)
/* 7C468 8007B868 D6000020 */  ldc1       $f0, 0x20($s0)
/* 7C46C 8007B86C 46200007 */  neg.d      $f0, $f0
/* 7C470 8007B870 3C01802F */  lui        $at, %hi(D_802EF5F8)
/* 7C474 8007B874 F420F5F8 */  sdc1       $f0, %lo(D_802EF5F8)($at)
/* 7C478 8007B878 D6000020 */  ldc1       $f0, 0x20($s0)
/* 7C47C 8007B87C 3C01802F */  lui        $at, %hi(D_802EF5D8)
/* 7C480 8007B880 F420F5D8 */  sdc1       $f0, %lo(D_802EF5D8)($at)
/* 7C484 8007B884 D6000028 */  ldc1       $f0, 0x28($s0)
/* 7C488 8007B888 3C01800D */  lui        $at, %hi(D_800D6010)
/* 7C48C 8007B88C D4226010 */  ldc1       $f2, %lo(D_800D6010)($at)
/* 7C490 8007B890 3C05802C */  lui        $a1, %hi(D_802C6050)
/* 7C494 8007B894 8CA56050 */  lw         $a1, %lo(D_802C6050)($a1)
/* 7C498 8007B898 46200007 */  neg.d      $f0, $f0
/* 7C49C 8007B89C 3C01802F */  lui        $at, %hi(D_802EF608)
/* 7C4A0 8007B8A0 F420F608 */  sdc1       $f0, %lo(D_802EF608)($at)
/* 7C4A4 8007B8A4 D6000028 */  ldc1       $f0, 0x28($s0)
/* 7C4A8 8007B8A8 3C01802F */  lui        $at, %hi(D_802EF600)
/* 7C4AC 8007B8AC AC20F600 */  sw         $zero, %lo(D_802EF600)($at)
/* 7C4B0 8007B8B0 3C01802F */  lui        $at, %hi(D_802EF604)
/* 7C4B4 8007B8B4 AC20F604 */  sw         $zero, %lo(D_802EF604)($at)
/* 7C4B8 8007B8B8 3C01802F */  lui        $at, %hi(D_802EF5D0)
/* 7C4BC 8007B8BC AC20F5D0 */  sw         $zero, %lo(D_802EF5D0)($at)
/* 7C4C0 8007B8C0 3C01802F */  lui        $at, %hi(D_802EF5D4)
/* 7C4C4 8007B8C4 AC20F5D4 */  sw         $zero, %lo(D_802EF5D4)($at)
/* 7C4C8 8007B8C8 3C01802F */  lui        $at, %hi(D_802EF5E0)
/* 7C4CC 8007B8CC AC20F5E0 */  sw         $zero, %lo(D_802EF5E0)($at)
/* 7C4D0 8007B8D0 3C01802F */  lui        $at, %hi(D_802EF5E4)
/* 7C4D4 8007B8D4 AC20F5E4 */  sw         $zero, %lo(D_802EF5E4)($at)
/* 7C4D8 8007B8D8 3C01802F */  lui        $at, %hi(D_802EF5E8)
/* 7C4DC 8007B8DC F422F5E8 */  sdc1       $f2, %lo(D_802EF5E8)($at)
/* 7C4E0 8007B8E0 46200007 */  neg.d      $f0, $f0
/* 7C4E4 8007B8E4 3C01802F */  lui        $at, %hi(D_802EF5F0)
/* 7C4E8 8007B8E8 AC20F5F0 */  sw         $zero, %lo(D_802EF5F0)($at)
/* 7C4EC 8007B8EC 3C01802F */  lui        $at, %hi(D_802EF5F4)
/* 7C4F0 8007B8F0 AC20F5F4 */  sw         $zero, %lo(D_802EF5F4)($at)
/* 7C4F4 8007B8F4 F440FFA0 */  sdc1       $f0, -0x60($v0)
/* 7C4F8 8007B8F8 0C00BCBB */  jal        func_8002F2EC
/* 7C4FC 8007B8FC 2444FFA0 */   addiu     $a0, $v0, -0x60
/* 7C500 8007B900 0C01ECC1 */  jal        func_8007B304
/* 7C504 8007B904 00000000 */   nop
/* 7C508 8007B908 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C50C 8007B90C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7C510 8007B910 03E00008 */  jr         $ra
/* 7C514 8007B914 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007B918
/* 7C518 8007B918 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C51C 8007B91C AFBF0020 */  sw         $ra, 0x20($sp)
/* 7C520 8007B920 0C01E4C9 */  jal        func_80079324
/* 7C524 8007B924 00000000 */   nop
/* 7C528 8007B928 0C01E690 */  jal        func_80079A40
/* 7C52C 8007B92C 00000000 */   nop
/* 7C530 8007B930 0C01866E */  jal        func_800619B8
/* 7C534 8007B934 00000000 */   nop
/* 7C538 8007B938 3C03802D */  lui        $v1, %hi(D_802D0BF0)
/* 7C53C 8007B93C 8C630BF0 */  lw         $v1, %lo(D_802D0BF0)($v1)
/* 7C540 8007B940 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7C544 8007B944 D4202FF0 */  ldc1       $f0, %lo(D_802D2FF0)($at)
/* 7C548 8007B948 27A20018 */  addiu      $v0, $sp, 0x18
/* 7C54C 8007B94C AFA20010 */  sw         $v0, 0x10($sp)
/* 7C550 8007B950 27A2001C */  addiu      $v0, $sp, 0x1C
/* 7C554 8007B954 AFA20014 */  sw         $v0, 0x14($sp)
/* 7C558 8007B958 3C02802C */  lui        $v0, %hi(D_802C6050)
/* 7C55C 8007B95C 8C426050 */  lw         $v0, %lo(D_802C6050)($v0)
/* 7C560 8007B960 000320C0 */  sll        $a0, $v1, 3
/* 7C564 8007B964 00832023 */  subu       $a0, $a0, $v1
/* 7C568 8007B968 00042100 */  sll        $a0, $a0, 4
/* 7C56C 8007B96C 44070000 */  mfc1       $a3, $f0
/* 7C570 8007B970 44060800 */  mfc1       $a2, $f1
/* 7C574 8007B974 00000000 */  nop
/* 7C578 8007B978 0C00B828 */  jal        func_8002E0A0
/* 7C57C 8007B97C 00442021 */   addu      $a0, $v0, $a0
/* 7C580 8007B980 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7C584 8007B984 D4222FF0 */  ldc1       $f2, %lo(D_802D2FF0)($at)
/* 7C588 8007B988 4620103C */  c.lt.d     $f2, $f0
/* 7C58C 8007B98C 00000000 */  nop
/* 7C590 8007B990 00000000 */  nop
/* 7C594 8007B994 4501000E */  bc1t       .L8007B9D0
/* 7C598 8007B998 24020001 */   addiu     $v0, $zero, 0x1
/* 7C59C 8007B99C 8FA30018 */  lw         $v1, 0x18($sp)
/* 7C5A0 8007B9A0 8FA4001C */  lw         $a0, 0x1C($sp)
/* 7C5A4 8007B9A4 3C01802D */  lui        $at, %hi(D_802D0BF4)
/* 7C5A8 8007B9A8 AC220BF4 */  sw         $v0, %lo(D_802D0BF4)($at)
/* 7C5AC 8007B9AC 24020002 */  addiu      $v0, $zero, 0x2
/* 7C5B0 8007B9B0 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7C5B4 8007B9B4 F4202FF0 */  sdc1       $f0, %lo(D_802D2FF0)($at)
/* 7C5B8 8007B9B8 3C01802D */  lui        $at, %hi(D_802D0BF4)
/* 7C5BC 8007B9BC AC220BF4 */  sw         $v0, %lo(D_802D0BF4)($at)
/* 7C5C0 8007B9C0 3C018031 */  lui        $at, %hi(D_803128D0)
/* 7C5C4 8007B9C4 AC2328D0 */  sw         $v1, %lo(D_803128D0)($at)
/* 7C5C8 8007B9C8 3C018031 */  lui        $at, %hi(D_803128D4)
/* 7C5CC 8007B9CC AC2428D4 */  sw         $a0, %lo(D_803128D4)($at)
.L8007B9D0:
/* 7C5D0 8007B9D0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7C5D4 8007B9D4 03E00008 */  jr         $ra
/* 7C5D8 8007B9D8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007B9DC
/* 7C5DC 8007B9DC 3C03803F */  lui        $v1, %hi(D_803F40C0)
/* 7C5E0 8007B9E0 8C6340C0 */  lw         $v1, %lo(D_803F40C0)($v1)
/* 7C5E4 8007B9E4 3C04802C */  lui        $a0, %hi(D_802C6050)
/* 7C5E8 8007B9E8 8C846050 */  lw         $a0, %lo(D_802C6050)($a0)
/* 7C5EC 8007B9EC 000310C0 */  sll        $v0, $v1, 3
/* 7C5F0 8007B9F0 00431023 */  subu       $v0, $v0, $v1
/* 7C5F4 8007B9F4 3C03802D */  lui        $v1, %hi(D_802D0BF0)
/* 7C5F8 8007B9F8 8C630BF0 */  lw         $v1, %lo(D_802D0BF0)($v1)
/* 7C5FC 8007B9FC 00021100 */  sll        $v0, $v0, 4
/* 7C600 8007BA00 00443821 */  addu       $a3, $v0, $a0
/* 7C604 8007BA04 000310C0 */  sll        $v0, $v1, 3
/* 7C608 8007BA08 00431023 */  subu       $v0, $v0, $v1
/* 7C60C 8007BA0C 00021100 */  sll        $v0, $v0, 4
/* 7C610 8007BA10 00443021 */  addu       $a2, $v0, $a0
/* 7C614 8007BA14 24C80700 */  addiu      $t0, $a2, 0x700
.L8007BA18:
/* 7C618 8007BA18 8CC20000 */  lw         $v0, 0x0($a2)
/* 7C61C 8007BA1C 8CC30004 */  lw         $v1, 0x4($a2)
/* 7C620 8007BA20 8CC40008 */  lw         $a0, 0x8($a2)
/* 7C624 8007BA24 8CC5000C */  lw         $a1, 0xC($a2)
/* 7C628 8007BA28 ACE20000 */  sw         $v0, 0x0($a3)
/* 7C62C 8007BA2C ACE30004 */  sw         $v1, 0x4($a3)
/* 7C630 8007BA30 ACE40008 */  sw         $a0, 0x8($a3)
/* 7C634 8007BA34 ACE5000C */  sw         $a1, 0xC($a3)
/* 7C638 8007BA38 24C60010 */  addiu      $a2, $a2, 0x10
/* 7C63C 8007BA3C 14C8FFF6 */  bne        $a2, $t0, .L8007BA18
/* 7C640 8007BA40 24E70010 */   addiu     $a3, $a3, 0x10
/* 7C644 8007BA44 3C038031 */  lui        $v1, %hi(D_803126D0)
/* 7C648 8007BA48 8C6326D0 */  lw         $v1, %lo(D_803126D0)($v1)
/* 7C64C 8007BA4C 3C01800D */  lui        $at, %hi(D_800D6018)
/* 7C650 8007BA50 D4206018 */  ldc1       $f0, %lo(D_800D6018)($at)
/* 7C654 8007BA54 24640001 */  addiu      $a0, $v1, 0x1
/* 7C658 8007BA58 000310C0 */  sll        $v0, $v1, 3
/* 7C65C 8007BA5C 3C01802C */  lui        $at, %hi(D_802C57D0)
/* 7C660 8007BA60 00220821 */  addu       $at, $at, $v0
/* 7C664 8007BA64 F42057D0 */  sdc1       $f0, %lo(D_802C57D0)($at)
/* 7C668 8007BA68 3C01803F */  lui        $at, %hi(D_803ECFC4)
/* 7C66C 8007BA6C AC23CFC4 */  sw         $v1, %lo(D_803ECFC4)($at)
/* 7C670 8007BA70 04810002 */  bgez       $a0, .L8007BA7C
/* 7C674 8007BA74 00802821 */   addu      $a1, $a0, $zero
/* 7C678 8007BA78 24650100 */  addiu      $a1, $v1, 0x100
.L8007BA7C:
/* 7C67C 8007BA7C 00051203 */  sra        $v0, $a1, 8
/* 7C680 8007BA80 3C03803F */  lui        $v1, %hi(D_803F40C0)
/* 7C684 8007BA84 8C6340C0 */  lw         $v1, %lo(D_803F40C0)($v1)
/* 7C688 8007BA88 00021200 */  sll        $v0, $v0, 8
/* 7C68C 8007BA8C 00821023 */  subu       $v0, $a0, $v0
/* 7C690 8007BA90 3C018031 */  lui        $at, %hi(D_803126D0)
/* 7C694 8007BA94 AC2226D0 */  sw         $v0, %lo(D_803126D0)($at)
/* 7C698 8007BA98 3C01802D */  lui        $at, %hi(D_802D0BF0)
/* 7C69C 8007BA9C AC230BF0 */  sw         $v1, %lo(D_802D0BF0)($at)
/* 7C6A0 8007BAA0 24630010 */  addiu      $v1, $v1, 0x10
/* 7C6A4 8007BAA4 3C01803F */  lui        $at, %hi(D_803F40C0)
/* 7C6A8 8007BAA8 AC2340C0 */  sw         $v1, %lo(D_803F40C0)($at)
/* 7C6AC 8007BAAC 28630FF1 */  slti       $v1, $v1, 0xFF1
/* 7C6B0 8007BAB0 14600003 */  bnez       $v1, .L8007BAC0
/* 7C6B4 8007BAB4 00000000 */   nop
/* 7C6B8 8007BAB8 3C01803F */  lui        $at, %hi(D_803F40C0)
/* 7C6BC 8007BABC AC2040C0 */  sw         $zero, %lo(D_803F40C0)($at)
.L8007BAC0:
/* 7C6C0 8007BAC0 3C02802D */  lui        $v0, %hi(D_802D2224)
/* 7C6C4 8007BAC4 8C422224 */  lw         $v0, %lo(D_802D2224)($v0)
/* 7C6C8 8007BAC8 24420001 */  addiu      $v0, $v0, 0x1
/* 7C6CC 8007BACC 3C01802D */  lui        $at, %hi(D_802D2224)
/* 7C6D0 8007BAD0 03E00008 */  jr         $ra
/* 7C6D4 8007BAD4 AC222224 */   sw        $v0, %lo(D_802D2224)($at)

glabel func_8007BAD8
/* 7C6D8 8007BAD8 3C02802B */  lui        $v0, %hi(D_802B5B80)
/* 7C6DC 8007BADC 24425B80 */  addiu      $v0, $v0, %lo(D_802B5B80)
/* 7C6E0 8007BAE0 C4400000 */  lwc1       $f0, 0x0($v0)
/* 7C6E4 8007BAE4 C4A20000 */  lwc1       $f2, 0x0($a1)
/* 7C6E8 8007BAE8 46020002 */  mul.s      $f0, $f0, $f2
/* 7C6EC 8007BAEC 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7C6F0 8007BAF0 C4265B84 */  lwc1       $f6, %lo(D_802B5B84)($at)
/* 7C6F4 8007BAF4 C4A20004 */  lwc1       $f2, 0x4($a1)
/* 7C6F8 8007BAF8 46023182 */  mul.s      $f6, $f6, $f2
/* 7C6FC 8007BAFC 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7C700 8007BB00 C4245B88 */  lwc1       $f4, %lo(D_802B5B88)($at)
/* 7C704 8007BB04 C4A20008 */  lwc1       $f2, 0x8($a1)
/* 7C708 8007BB08 46022102 */  mul.s      $f4, $f4, $f2
/* 7C70C 8007BB0C C4A8000C */  lwc1       $f8, 0xC($a1)
/* 7C710 8007BB10 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7C714 8007BB14 C4225B8C */  lwc1       $f2, %lo(D_802B5B8C)($at)
/* 7C718 8007BB18 46060001 */  sub.s      $f0, $f0, $f6
/* 7C71C 8007BB1C 46081082 */  mul.s      $f2, $f2, $f8
/* 7C720 8007BB20 46040001 */  sub.s      $f0, $f0, $f4
/* 7C724 8007BB24 46020001 */  sub.s      $f0, $f0, $f2
/* 7C728 8007BB28 E4800060 */  swc1       $f0, 0x60($a0)
/* 7C72C 8007BB2C C4400000 */  lwc1       $f0, 0x0($v0)
/* 7C730 8007BB30 C4A20004 */  lwc1       $f2, 0x4($a1)
/* 7C734 8007BB34 46020002 */  mul.s      $f0, $f0, $f2
/* 7C738 8007BB38 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7C73C 8007BB3C C4265B84 */  lwc1       $f6, %lo(D_802B5B84)($at)
/* 7C740 8007BB40 C4A20000 */  lwc1       $f2, 0x0($a1)
/* 7C744 8007BB44 46023182 */  mul.s      $f6, $f6, $f2
/* 7C748 8007BB48 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7C74C 8007BB4C C4245B88 */  lwc1       $f4, %lo(D_802B5B88)($at)
/* 7C750 8007BB50 C4A2000C */  lwc1       $f2, 0xC($a1)
/* 7C754 8007BB54 46022102 */  mul.s      $f4, $f4, $f2
/* 7C758 8007BB58 C4A80008 */  lwc1       $f8, 0x8($a1)
/* 7C75C 8007BB5C 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7C760 8007BB60 C4225B8C */  lwc1       $f2, %lo(D_802B5B8C)($at)
/* 7C764 8007BB64 46060000 */  add.s      $f0, $f0, $f6
/* 7C768 8007BB68 46081082 */  mul.s      $f2, $f2, $f8
/* 7C76C 8007BB6C 46040000 */  add.s      $f0, $f0, $f4
/* 7C770 8007BB70 46020001 */  sub.s      $f0, $f0, $f2
/* 7C774 8007BB74 E4800064 */  swc1       $f0, 0x64($a0)
/* 7C778 8007BB78 C4400000 */  lwc1       $f0, 0x0($v0)
/* 7C77C 8007BB7C C4A20008 */  lwc1       $f2, 0x8($a1)
/* 7C780 8007BB80 46020002 */  mul.s      $f0, $f0, $f2
/* 7C784 8007BB84 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7C788 8007BB88 C4265B88 */  lwc1       $f6, %lo(D_802B5B88)($at)
/* 7C78C 8007BB8C C4A20000 */  lwc1       $f2, 0x0($a1)
/* 7C790 8007BB90 46023182 */  mul.s      $f6, $f6, $f2
/* 7C794 8007BB94 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7C798 8007BB98 C4245B8C */  lwc1       $f4, %lo(D_802B5B8C)($at)
/* 7C79C 8007BB9C C4A20004 */  lwc1       $f2, 0x4($a1)
/* 7C7A0 8007BBA0 46022102 */  mul.s      $f4, $f4, $f2
/* 7C7A4 8007BBA4 C4A8000C */  lwc1       $f8, 0xC($a1)
/* 7C7A8 8007BBA8 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7C7AC 8007BBAC C4225B84 */  lwc1       $f2, %lo(D_802B5B84)($at)
/* 7C7B0 8007BBB0 46060000 */  add.s      $f0, $f0, $f6
/* 7C7B4 8007BBB4 46081082 */  mul.s      $f2, $f2, $f8
/* 7C7B8 8007BBB8 46040000 */  add.s      $f0, $f0, $f4
/* 7C7BC 8007BBBC 46020001 */  sub.s      $f0, $f0, $f2
/* 7C7C0 8007BBC0 E4800068 */  swc1       $f0, 0x68($a0)
/* 7C7C4 8007BBC4 C4400000 */  lwc1       $f0, 0x0($v0)
/* 7C7C8 8007BBC8 C4A2000C */  lwc1       $f2, 0xC($a1)
/* 7C7CC 8007BBCC 46020002 */  mul.s      $f0, $f0, $f2
/* 7C7D0 8007BBD0 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7C7D4 8007BBD4 C4265B8C */  lwc1       $f6, %lo(D_802B5B8C)($at)
/* 7C7D8 8007BBD8 C4A20000 */  lwc1       $f2, 0x0($a1)
/* 7C7DC 8007BBDC 46023182 */  mul.s      $f6, $f6, $f2
/* 7C7E0 8007BBE0 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7C7E4 8007BBE4 C4245B84 */  lwc1       $f4, %lo(D_802B5B84)($at)
/* 7C7E8 8007BBE8 C4A20008 */  lwc1       $f2, 0x8($a1)
/* 7C7EC 8007BBEC 46022102 */  mul.s      $f4, $f4, $f2
/* 7C7F0 8007BBF0 C4A80004 */  lwc1       $f8, 0x4($a1)
/* 7C7F4 8007BBF4 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7C7F8 8007BBF8 C4225B88 */  lwc1       $f2, %lo(D_802B5B88)($at)
/* 7C7FC 8007BBFC 46060000 */  add.s      $f0, $f0, $f6
/* 7C800 8007BC00 46081082 */  mul.s      $f2, $f2, $f8
/* 7C804 8007BC04 46040000 */  add.s      $f0, $f0, $f4
/* 7C808 8007BC08 46020001 */  sub.s      $f0, $f0, $f2
/* 7C80C 8007BC0C 03E00008 */  jr         $ra
/* 7C810 8007BC10 E480006C */   swc1      $f0, 0x6C($a0)

glabel func_8007BC14
/* 7C814 8007BC14 8CA20010 */  lw         $v0, 0x10($a1)
/* 7C818 8007BC18 8CA30014 */  lw         $v1, 0x14($a1)
/* 7C81C 8007BC1C 8CA60018 */  lw         $a2, 0x18($a1)
/* 7C820 8007BC20 8CA7001C */  lw         $a3, 0x1C($a1)
/* 7C824 8007BC24 AC820008 */  sw         $v0, 0x8($a0)
/* 7C828 8007BC28 AC83000C */  sw         $v1, 0xC($a0)
/* 7C82C 8007BC2C AC860010 */  sw         $a2, 0x10($a0)
/* 7C830 8007BC30 AC870014 */  sw         $a3, 0x14($a0)
/* 7C834 8007BC34 8CA20020 */  lw         $v0, 0x20($a1)
/* 7C838 8007BC38 8CA30024 */  lw         $v1, 0x24($a1)
/* 7C83C 8007BC3C AC820018 */  sw         $v0, 0x18($a0)
/* 7C840 8007BC40 AC83001C */  sw         $v1, 0x1C($a0)
/* 7C844 8007BC44 8CA20000 */  lw         $v0, 0x0($a1)
/* 7C848 8007BC48 8CA30004 */  lw         $v1, 0x4($a1)
/* 7C84C 8007BC4C 8CA60008 */  lw         $a2, 0x8($a1)
/* 7C850 8007BC50 8CA7000C */  lw         $a3, 0xC($a1)
/* 7C854 8007BC54 AC820060 */  sw         $v0, 0x60($a0)
/* 7C858 8007BC58 AC830064 */  sw         $v1, 0x64($a0)
/* 7C85C 8007BC5C AC860068 */  sw         $a2, 0x68($a0)
/* 7C860 8007BC60 03E00008 */  jr         $ra
/* 7C864 8007BC64 AC87006C */   sw        $a3, 0x6C($a0)

glabel func_8007BC68
/* 7C868 8007BC68 44800000 */  mtc1       $zero, $f0
/* 7C86C 8007BC6C 44800800 */  mtc1       $zero, $f1
/* 7C870 8007BC70 AC800038 */  sw         $zero, 0x38($a0)
/* 7C874 8007BC74 AC80003C */  sw         $zero, 0x3C($a0)
/* 7C878 8007BC78 AC800058 */  sw         $zero, 0x58($a0)
/* 7C87C 8007BC7C AC80005C */  sw         $zero, 0x5C($a0)
/* 7C880 8007BC80 F4800030 */  sdc1       $f0, 0x30($a0)
/* 7C884 8007BC84 F4800028 */  sdc1       $f0, 0x28($a0)
/* 7C888 8007BC88 F4800020 */  sdc1       $f0, 0x20($a0)
/* 7C88C 8007BC8C F4800050 */  sdc1       $f0, 0x50($a0)
/* 7C890 8007BC90 F4800048 */  sdc1       $f0, 0x48($a0)
/* 7C894 8007BC94 F4800040 */  sdc1       $f0, 0x40($a0)
/* 7C898 8007BC98 8CA20010 */  lw         $v0, 0x10($a1)
/* 7C89C 8007BC9C 8CA30014 */  lw         $v1, 0x14($a1)
/* 7C8A0 8007BCA0 8CA60018 */  lw         $a2, 0x18($a1)
/* 7C8A4 8007BCA4 8CA7001C */  lw         $a3, 0x1C($a1)
/* 7C8A8 8007BCA8 AC820008 */  sw         $v0, 0x8($a0)
/* 7C8AC 8007BCAC AC83000C */  sw         $v1, 0xC($a0)
/* 7C8B0 8007BCB0 AC860010 */  sw         $a2, 0x10($a0)
/* 7C8B4 8007BCB4 AC870014 */  sw         $a3, 0x14($a0)
/* 7C8B8 8007BCB8 8CA20020 */  lw         $v0, 0x20($a1)
/* 7C8BC 8007BCBC 8CA30024 */  lw         $v1, 0x24($a1)
/* 7C8C0 8007BCC0 AC820018 */  sw         $v0, 0x18($a0)
/* 7C8C4 8007BCC4 AC83001C */  sw         $v1, 0x1C($a0)
/* 7C8C8 8007BCC8 8CA20000 */  lw         $v0, 0x0($a1)
/* 7C8CC 8007BCCC 8CA30004 */  lw         $v1, 0x4($a1)
/* 7C8D0 8007BCD0 8CA60008 */  lw         $a2, 0x8($a1)
/* 7C8D4 8007BCD4 8CA7000C */  lw         $a3, 0xC($a1)
/* 7C8D8 8007BCD8 AC820060 */  sw         $v0, 0x60($a0)
/* 7C8DC 8007BCDC AC830064 */  sw         $v1, 0x64($a0)
/* 7C8E0 8007BCE0 AC860068 */  sw         $a2, 0x68($a0)
/* 7C8E4 8007BCE4 03E00008 */  jr         $ra
/* 7C8E8 8007BCE8 AC87006C */   sw        $a3, 0x6C($a0)

glabel func_8007BCEC
/* 7C8EC 8007BCEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7C8F0 8007BCF0 AFB20018 */  sw         $s2, 0x18($sp)
/* 7C8F4 8007BCF4 00809021 */  addu       $s2, $a0, $zero
/* 7C8F8 8007BCF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 7C8FC 8007BCFC 00A08821 */  addu       $s1, $a1, $zero
/* 7C900 8007BD00 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7C904 8007BD04 AFB00010 */  sw         $s0, 0x10($sp)
/* 7C908 8007BD08 8E220028 */  lw         $v0, 0x28($s1)
/* 7C90C 8007BD0C 8E23002C */  lw         $v1, 0x2C($s1)
/* 7C910 8007BD10 8E240030 */  lw         $a0, 0x30($s1)
/* 7C914 8007BD14 8E250034 */  lw         $a1, 0x34($s1)
/* 7C918 8007BD18 AE420020 */  sw         $v0, 0x20($s2)
/* 7C91C 8007BD1C AE430024 */  sw         $v1, 0x24($s2)
/* 7C920 8007BD20 AE440028 */  sw         $a0, 0x28($s2)
/* 7C924 8007BD24 AE45002C */  sw         $a1, 0x2C($s2)
/* 7C928 8007BD28 8E220038 */  lw         $v0, 0x38($s1)
/* 7C92C 8007BD2C 8E23003C */  lw         $v1, 0x3C($s1)
/* 7C930 8007BD30 AE420030 */  sw         $v0, 0x30($s2)
/* 7C934 8007BD34 AE430034 */  sw         $v1, 0x34($s2)
/* 7C938 8007BD38 AE400028 */  sw         $zero, 0x28($s2)
/* 7C93C 8007BD3C AE40002C */  sw         $zero, 0x2C($s2)
/* 7C940 8007BD40 8E220040 */  lw         $v0, 0x40($s1)
/* 7C944 8007BD44 8E230044 */  lw         $v1, 0x44($s1)
/* 7C948 8007BD48 8E240048 */  lw         $a0, 0x48($s1)
/* 7C94C 8007BD4C 8E25004C */  lw         $a1, 0x4C($s1)
/* 7C950 8007BD50 AE420040 */  sw         $v0, 0x40($s2)
/* 7C954 8007BD54 AE430044 */  sw         $v1, 0x44($s2)
/* 7C958 8007BD58 AE440048 */  sw         $a0, 0x48($s2)
/* 7C95C 8007BD5C AE45004C */  sw         $a1, 0x4C($s2)
/* 7C960 8007BD60 8E220050 */  lw         $v0, 0x50($s1)
/* 7C964 8007BD64 8E230054 */  lw         $v1, 0x54($s1)
/* 7C968 8007BD68 AE420050 */  sw         $v0, 0x50($s2)
/* 7C96C 8007BD6C AE430054 */  sw         $v1, 0x54($s2)
/* 7C970 8007BD70 D6200078 */  ldc1       $f0, 0x78($s1)
/* 7C974 8007BD74 44803000 */  mtc1       $zero, $f6
/* 7C978 8007BD78 44803800 */  mtc1       $zero, $f7
/* 7C97C 8007BD7C 00000000 */  nop
/* 7C980 8007BD80 46260032 */  c.eq.d     $f0, $f6
/* 7C984 8007BD84 00000000 */  nop
/* 7C988 8007BD88 45000018 */  bc1f       .L8007BDEC
/* 7C98C 8007BD8C 00000000 */   nop
/* 7C990 8007BD90 F6460038 */  sdc1       $f6, 0x38($s2)
/* 7C994 8007BD94 F6460058 */  sdc1       $f6, 0x58($s2)
/* 7C998 8007BD98 8E220010 */  lw         $v0, 0x10($s1)
/* 7C99C 8007BD9C 8E230014 */  lw         $v1, 0x14($s1)
/* 7C9A0 8007BDA0 8E240018 */  lw         $a0, 0x18($s1)
/* 7C9A4 8007BDA4 8E25001C */  lw         $a1, 0x1C($s1)
/* 7C9A8 8007BDA8 AE420008 */  sw         $v0, 0x8($s2)
/* 7C9AC 8007BDAC AE43000C */  sw         $v1, 0xC($s2)
/* 7C9B0 8007BDB0 AE440010 */  sw         $a0, 0x10($s2)
/* 7C9B4 8007BDB4 AE450014 */  sw         $a1, 0x14($s2)
/* 7C9B8 8007BDB8 8E220020 */  lw         $v0, 0x20($s1)
/* 7C9BC 8007BDBC 8E230024 */  lw         $v1, 0x24($s1)
/* 7C9C0 8007BDC0 AE420018 */  sw         $v0, 0x18($s2)
/* 7C9C4 8007BDC4 AE43001C */  sw         $v1, 0x1C($s2)
/* 7C9C8 8007BDC8 8E220000 */  lw         $v0, 0x0($s1)
/* 7C9CC 8007BDCC 8E230004 */  lw         $v1, 0x4($s1)
/* 7C9D0 8007BDD0 8E240008 */  lw         $a0, 0x8($s1)
/* 7C9D4 8007BDD4 8E25000C */  lw         $a1, 0xC($s1)
/* 7C9D8 8007BDD8 AE420060 */  sw         $v0, 0x60($s2)
/* 7C9DC 8007BDDC AE430064 */  sw         $v1, 0x64($s2)
/* 7C9E0 8007BDE0 AE440068 */  sw         $a0, 0x68($s2)
/* 7C9E4 8007BDE4 0801EFD6 */  j          .L8007BF58
/* 7C9E8 8007BDE8 AE45006C */   sw        $a1, 0x6C($s2)
.L8007BDEC:
/* 7C9EC 8007BDEC 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7C9F0 8007BDF0 D4220980 */  ldc1       $f2, %lo(D_802D0980)($at)
/* 7C9F4 8007BDF4 D6200070 */  ldc1       $f0, 0x70($s1)
/* 7C9F8 8007BDF8 46201201 */  sub.d      $f8, $f2, $f0
/* 7C9FC 8007BDFC 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7CA00 8007BE00 D4226A10 */  ldc1       $f2, %lo(D_800C6A10)($at)
/* 7CA04 8007BE04 46281082 */  mul.d      $f2, $f2, $f8
/* 7CA08 8007BE08 46221100 */  add.d      $f4, $f2, $f2
/* 7CA0C 8007BE0C D6200078 */  ldc1       $f0, 0x78($s1)
/* 7CA10 8007BE10 46240001 */  sub.d      $f0, $f0, $f4
/* 7CA14 8007BE14 4626003C */  c.lt.d     $f0, $f6
/* 7CA18 8007BE18 3C01802B */  lui        $at, %hi(D_802B5B78)
/* 7CA1C 8007BE1C F4225B78 */  sdc1       $f2, %lo(D_802B5B78)($at)
/* 7CA20 8007BE20 F6400038 */  sdc1       $f0, 0x38($s2)
/* 7CA24 8007BE24 45000002 */  bc1f       .L8007BE30
/* 7CA28 8007BE28 00000000 */   nop
/* 7CA2C 8007BE2C F6460038 */  sdc1       $f6, 0x38($s2)
.L8007BE30:
/* 7CA30 8007BE30 D6220080 */  ldc1       $f2, 0x80($s1)
/* 7CA34 8007BE34 3C01800D */  lui        $at, %hi(D_800D6020)
/* 7CA38 8007BE38 D4206020 */  ldc1       $f0, %lo(D_800D6020)($at)
/* 7CA3C 8007BE3C 46201002 */  mul.d      $f0, $f2, $f0
/* 7CA40 8007BE40 D6240078 */  ldc1       $f4, 0x78($s1)
/* 7CA44 8007BE44 4620203C */  c.lt.d     $f4, $f0
/* 7CA48 8007BE48 00000000 */  nop
/* 7CA4C 8007BE4C 45000006 */  bc1f       .L8007BE68
/* 7CA50 8007BE50 00000000 */   nop
/* 7CA54 8007BE54 3C01800C */  lui        $at, %hi(D_800C69E8)
/* 7CA58 8007BE58 D42069E8 */  ldc1       $f0, %lo(D_800C69E8)($at)
/* 7CA5C 8007BE5C 46280002 */  mul.d      $f0, $f0, $f8
/* 7CA60 8007BE60 0801EF9D */  j          .L8007BE74
/* 7CA64 8007BE64 46201001 */   sub.d     $f0, $f2, $f0
.L8007BE68:
/* 7CA68 8007BE68 D6400038 */  ldc1       $f0, 0x38($s2)
/* 7CA6C 8007BE6C 46220002 */  mul.d      $f0, $f0, $f2
/* 7CA70 8007BE70 46240003 */  div.d      $f0, $f0, $f4
.L8007BE74:
/* 7CA74 8007BE74 F6400058 */  sdc1       $f0, 0x58($s2)
/* 7CA78 8007BE78 D6240078 */  ldc1       $f4, 0x78($s1)
/* 7CA7C 8007BE7C 3C01802B */  lui        $at, %hi(D_802B5B78)
/* 7CA80 8007BE80 D4205B78 */  ldc1       $f0, %lo(D_802B5B78)($at)
/* 7CA84 8007BE84 46202101 */  sub.d      $f4, $f4, $f0
/* 7CA88 8007BE88 46282102 */  mul.d      $f4, $f4, $f8
/* 7CA8C 8007BE8C D6200028 */  ldc1       $f0, 0x28($s1)
/* 7CA90 8007BE90 46240002 */  mul.d      $f0, $f0, $f4
/* 7CA94 8007BE94 D6220010 */  ldc1       $f2, 0x10($s1)
/* 7CA98 8007BE98 46201080 */  add.d      $f2, $f2, $f0
/* 7CA9C 8007BE9C AE400010 */  sw         $zero, 0x10($s2)
/* 7CAA0 8007BEA0 AE400014 */  sw         $zero, 0x14($s2)
/* 7CAA4 8007BEA4 F6420008 */  sdc1       $f2, 0x8($s2)
/* 7CAA8 8007BEA8 D6200038 */  ldc1       $f0, 0x38($s1)
/* 7CAAC 8007BEAC 46240002 */  mul.d      $f0, $f0, $f4
/* 7CAB0 8007BEB0 D6220020 */  ldc1       $f2, 0x20($s1)
/* 7CAB4 8007BEB4 46201080 */  add.d      $f2, $f2, $f0
/* 7CAB8 8007BEB8 3C02800C */  lui        $v0, %hi(D_800C6B8A)
/* 7CABC 8007BEBC 80426B8A */  lb         $v0, %lo(D_800C6B8A)($v0)
/* 7CAC0 8007BEC0 14400025 */  bnez       $v0, .L8007BF58
/* 7CAC4 8007BEC4 F6420018 */   sdc1      $f2, 0x18($s2)
/* 7CAC8 8007BEC8 D62C0080 */  ldc1       $f12, 0x80($s1)
/* 7CACC 8007BECC D6400058 */  ldc1       $f0, 0x58($s2)
/* 7CAD0 8007BED0 46206300 */  add.d      $f12, $f12, $f0
/* 7CAD4 8007BED4 3C01800D */  lui        $at, %hi(D_800D6028)
/* 7CAD8 8007BED8 D4206028 */  ldc1       $f0, %lo(D_800D6028)($at)
/* 7CADC 8007BEDC 46206302 */  mul.d      $f12, $f12, $f0
/* 7CAE0 8007BEE0 00000000 */  nop
/* 7CAE4 8007BEE4 46286302 */  mul.d      $f12, $f12, $f8
/* 7CAE8 8007BEE8 3C10802B */  lui        $s0, %hi(D_802B5B68)
/* 7CAEC 8007BEEC 26105B68 */  addiu      $s0, $s0, %lo(D_802B5B68)
/* 7CAF0 8007BEF0 0C022C03 */  jal        func_8008B00C
/* 7CAF4 8007BEF4 02003021 */   addu      $a2, $s0, $zero
/* 7CAF8 8007BEF8 3C01802B */  lui        $at, %hi(D_802B5B70)
/* 7CAFC 8007BEFC D4205B70 */  ldc1       $f0, %lo(D_802B5B70)($at)
/* 7CB00 8007BF00 46200020 */  cvt.s.d    $f0, $f0
/* 7CB04 8007BF04 3C01802B */  lui        $at, %hi(D_802B5B80)
/* 7CB08 8007BF08 E4205B80 */  swc1       $f0, %lo(D_802B5B80)($at)
/* 7CB0C 8007BF0C D6200040 */  ldc1       $f0, 0x40($s1)
/* 7CB10 8007BF10 D6020000 */  ldc1       $f2, 0x0($s0)
/* 7CB14 8007BF14 46220002 */  mul.d      $f0, $f0, $f2
/* 7CB18 8007BF18 46200020 */  cvt.s.d    $f0, $f0
/* 7CB1C 8007BF1C 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7CB20 8007BF20 E4205B84 */  swc1       $f0, %lo(D_802B5B84)($at)
/* 7CB24 8007BF24 D6200048 */  ldc1       $f0, 0x48($s1)
/* 7CB28 8007BF28 46220002 */  mul.d      $f0, $f0, $f2
/* 7CB2C 8007BF2C 46200020 */  cvt.s.d    $f0, $f0
/* 7CB30 8007BF30 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7CB34 8007BF34 E4205B88 */  swc1       $f0, %lo(D_802B5B88)($at)
/* 7CB38 8007BF38 D6200050 */  ldc1       $f0, 0x50($s1)
/* 7CB3C 8007BF3C 46220002 */  mul.d      $f0, $f0, $f2
/* 7CB40 8007BF40 02402021 */  addu       $a0, $s2, $zero
/* 7CB44 8007BF44 46200020 */  cvt.s.d    $f0, $f0
/* 7CB48 8007BF48 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7CB4C 8007BF4C E4205B8C */  swc1       $f0, %lo(D_802B5B8C)($at)
/* 7CB50 8007BF50 0C01EEB6 */  jal        func_8007BAD8
/* 7CB54 8007BF54 02202821 */   addu      $a1, $s1, $zero
.L8007BF58:
/* 7CB58 8007BF58 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7CB5C 8007BF5C 8FB20018 */  lw         $s2, 0x18($sp)
/* 7CB60 8007BF60 8FB10014 */  lw         $s1, 0x14($sp)
/* 7CB64 8007BF64 8FB00010 */  lw         $s0, 0x10($sp)
/* 7CB68 8007BF68 03E00008 */  jr         $ra
/* 7CB6C 8007BF6C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007BF70
/* 7CB70 8007BF70 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7CB74 8007BF74 AFB10014 */  sw         $s1, 0x14($sp)
/* 7CB78 8007BF78 00A08821 */  addu       $s1, $a1, $zero
/* 7CB7C 8007BF7C AFBF0020 */  sw         $ra, 0x20($sp)
/* 7CB80 8007BF80 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7CB84 8007BF84 AFB20018 */  sw         $s2, 0x18($sp)
/* 7CB88 8007BF88 AFB00010 */  sw         $s0, 0x10($sp)
/* 7CB8C 8007BF8C F7B80038 */  sdc1       $f24, 0x38($sp)
/* 7CB90 8007BF90 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 7CB94 8007BF94 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 7CB98 8007BF98 D6220058 */  ldc1       $f2, 0x58($s1)
/* 7CB9C 8007BF9C 3C01800C */  lui        $at, %hi(D_800C6A30)
/* 7CBA0 8007BFA0 D4266A30 */  ldc1       $f6, %lo(D_800C6A30)($at)
/* 7CBA4 8007BFA4 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7CBA8 8007BFA8 D4240980 */  ldc1       $f4, %lo(D_802D0980)($at)
/* 7CBAC 8007BFAC D6200070 */  ldc1       $f0, 0x70($s1)
/* 7CBB0 8007BFB0 46261082 */  mul.d      $f2, $f2, $f6
/* 7CBB4 8007BFB4 46202581 */  sub.d      $f22, $f4, $f0
/* 7CBB8 8007BFB8 D6200028 */  ldc1       $f0, 0x28($s1)
/* 7CBBC 8007BFBC D6240078 */  ldc1       $f4, 0x78($s1)
/* 7CBC0 8007BFC0 46240002 */  mul.d      $f0, $f0, $f4
/* 7CBC4 8007BFC4 00000000 */  nop
/* 7CBC8 8007BFC8 46361082 */  mul.d      $f2, $f2, $f22
/* 7CBCC 8007BFCC 46201080 */  add.d      $f2, $f2, $f0
/* 7CBD0 8007BFD0 46361082 */  mul.d      $f2, $f2, $f22
/* 7CBD4 8007BFD4 D6200010 */  ldc1       $f0, 0x10($s1)
/* 7CBD8 8007BFD8 46220000 */  add.d      $f0, $f0, $f2
/* 7CBDC 8007BFDC 00809021 */  addu       $s2, $a0, $zero
/* 7CBE0 8007BFE0 AE400010 */  sw         $zero, 0x10($s2)
/* 7CBE4 8007BFE4 AE400014 */  sw         $zero, 0x14($s2)
/* 7CBE8 8007BFE8 F6400008 */  sdc1       $f0, 0x8($s2)
/* 7CBEC 8007BFEC D6200068 */  ldc1       $f0, 0x68($s1)
/* 7CBF0 8007BFF0 46260002 */  mul.d      $f0, $f0, $f6
/* 7CBF4 8007BFF4 D6220038 */  ldc1       $f2, 0x38($s1)
/* 7CBF8 8007BFF8 D6240078 */  ldc1       $f4, 0x78($s1)
/* 7CBFC 8007BFFC 46241082 */  mul.d      $f2, $f2, $f4
/* 7CC00 8007C000 00000000 */  nop
/* 7CC04 8007C004 46360002 */  mul.d      $f0, $f0, $f22
/* 7CC08 8007C008 46220000 */  add.d      $f0, $f0, $f2
/* 7CC0C 8007C00C 46360002 */  mul.d      $f0, $f0, $f22
/* 7CC10 8007C010 D6220020 */  ldc1       $f2, 0x20($s1)
/* 7CC14 8007C014 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 7CC18 8007C018 D4246A28 */  ldc1       $f4, %lo(D_800C6A28)($at)
/* 7CC1C 8007C01C 46201080 */  add.d      $f2, $f2, $f0
/* 7CC20 8007C020 46362502 */  mul.d      $f20, $f4, $f22
/* 7CC24 8007C024 F6420018 */  sdc1       $f2, 0x18($s2)
/* 7CC28 8007C028 D6220078 */  ldc1       $f2, 0x78($s1)
/* 7CC2C 8007C02C D6200028 */  ldc1       $f0, 0x28($s1)
/* 7CC30 8007C030 46201082 */  mul.d      $f2, $f2, $f0
/* 7CC34 8007C034 D6200058 */  ldc1       $f0, 0x58($s1)
/* 7CC38 8007C038 4620A002 */  mul.d      $f0, $f20, $f0
/* 7CC3C 8007C03C 46201080 */  add.d      $f2, $f2, $f0
/* 7CC40 8007C040 F6420020 */  sdc1       $f2, 0x20($s2)
/* 7CC44 8007C044 D6220078 */  ldc1       $f2, 0x78($s1)
/* 7CC48 8007C048 D6200038 */  ldc1       $f0, 0x38($s1)
/* 7CC4C 8007C04C 46201082 */  mul.d      $f2, $f2, $f0
/* 7CC50 8007C050 D6200068 */  ldc1       $f0, 0x68($s1)
/* 7CC54 8007C054 4620A002 */  mul.d      $f0, $f20, $f0
/* 7CC58 8007C058 46201080 */  add.d      $f2, $f2, $f0
/* 7CC5C 8007C05C AE400028 */  sw         $zero, 0x28($s2)
/* 7CC60 8007C060 AE40002C */  sw         $zero, 0x2C($s2)
/* 7CC64 8007C064 F6420030 */  sdc1       $f2, 0x30($s2)
/* 7CC68 8007C068 0C022D13 */  jal        func_8008B44C
/* 7CC6C 8007C06C 26440020 */   addiu     $a0, $s2, 0x20
/* 7CC70 8007C070 3C01800C */  lui        $at, %hi(D_800C6A18)
/* 7CC74 8007C074 D4226A18 */  ldc1       $f2, %lo(D_800C6A18)($at)
/* 7CC78 8007C078 46361502 */  mul.d      $f20, $f2, $f22
/* 7CC7C 8007C07C F6400038 */  sdc1       $f0, 0x38($s2)
/* 7CC80 8007C080 D6200040 */  ldc1       $f0, 0x40($s1)
/* 7CC84 8007C084 D6220080 */  ldc1       $f2, 0x80($s1)
/* 7CC88 8007C088 46201082 */  mul.d      $f2, $f2, $f0
/* 7CC8C 8007C08C D6200068 */  ldc1       $f0, 0x68($s1)
/* 7CC90 8007C090 4620A002 */  mul.d      $f0, $f20, $f0
/* 7CC94 8007C094 46201080 */  add.d      $f2, $f2, $f0
/* 7CC98 8007C098 F6420040 */  sdc1       $f2, 0x40($s2)
/* 7CC9C 8007C09C D6200080 */  ldc1       $f0, 0x80($s1)
/* 7CCA0 8007C0A0 D6220048 */  ldc1       $f2, 0x48($s1)
/* 7CCA4 8007C0A4 46220002 */  mul.d      $f0, $f0, $f2
/* 7CCA8 8007C0A8 F6400048 */  sdc1       $f0, 0x48($s2)
/* 7CCAC 8007C0AC D6220080 */  ldc1       $f2, 0x80($s1)
/* 7CCB0 8007C0B0 D6200050 */  ldc1       $f0, 0x50($s1)
/* 7CCB4 8007C0B4 46201082 */  mul.d      $f2, $f2, $f0
/* 7CCB8 8007C0B8 D6200058 */  ldc1       $f0, 0x58($s1)
/* 7CCBC 8007C0BC 4620A002 */  mul.d      $f0, $f20, $f0
/* 7CCC0 8007C0C0 46201081 */  sub.d      $f2, $f2, $f0
/* 7CCC4 8007C0C4 F6420050 */  sdc1       $f2, 0x50($s2)
/* 7CCC8 8007C0C8 0C022CCC */  jal        func_8008B330
/* 7CCCC 8007C0CC 26440040 */   addiu     $a0, $s2, 0x40
/* 7CCD0 8007C0D0 3C02800C */  lui        $v0, %hi(D_800C6B8A)
/* 7CCD4 8007C0D4 80426B8A */  lb         $v0, %lo(D_800C6B8A)($v0)
/* 7CCD8 8007C0D8 14400049 */  bnez       $v0, .L8007C200
/* 7CCDC 8007C0DC F6400058 */   sdc1      $f0, 0x58($s2)
/* 7CCE0 8007C0E0 3C01800D */  lui        $at, %hi(D_800D6030)
/* 7CCE4 8007C0E4 D4386030 */  ldc1       $f24, %lo(D_800D6030)($at)
/* 7CCE8 8007C0E8 4638A502 */  mul.d      $f20, $f20, $f24
/* 7CCEC 8007C0EC D6220080 */  ldc1       $f2, 0x80($s1)
/* 7CCF0 8007C0F0 D6200040 */  ldc1       $f0, 0x40($s1)
/* 7CCF4 8007C0F4 46201082 */  mul.d      $f2, $f2, $f0
/* 7CCF8 8007C0F8 D6200068 */  ldc1       $f0, 0x68($s1)
/* 7CCFC 8007C0FC 4620A002 */  mul.d      $f0, $f20, $f0
/* 7CD00 8007C100 46201080 */  add.d      $f2, $f2, $f0
/* 7CD04 8007C104 3C13802B */  lui        $s3, %hi(D_802B5B90)
/* 7CD08 8007C108 26735B90 */  addiu      $s3, $s3, %lo(D_802B5B90)
/* 7CD0C 8007C10C F6620000 */  sdc1       $f2, 0x0($s3)
/* 7CD10 8007C110 D6200080 */  ldc1       $f0, 0x80($s1)
/* 7CD14 8007C114 D6220048 */  ldc1       $f2, 0x48($s1)
/* 7CD18 8007C118 46220002 */  mul.d      $f0, $f0, $f2
/* 7CD1C 8007C11C F6600008 */  sdc1       $f0, 0x8($s3)
/* 7CD20 8007C120 D6220080 */  ldc1       $f2, 0x80($s1)
/* 7CD24 8007C124 D6200050 */  ldc1       $f0, 0x50($s1)
/* 7CD28 8007C128 46201082 */  mul.d      $f2, $f2, $f0
/* 7CD2C 8007C12C D6200058 */  ldc1       $f0, 0x58($s1)
/* 7CD30 8007C130 4620A002 */  mul.d      $f0, $f20, $f0
/* 7CD34 8007C134 46201081 */  sub.d      $f2, $f2, $f0
/* 7CD38 8007C138 F6620010 */  sdc1       $f2, 0x10($s3)
/* 7CD3C 8007C13C 0C022CCC */  jal        func_8008B330
/* 7CD40 8007C140 02602021 */   addu      $a0, $s3, $zero
/* 7CD44 8007C144 44801000 */  mtc1       $zero, $f2
/* 7CD48 8007C148 44801800 */  mtc1       $zero, $f3
/* 7CD4C 8007C14C 46200506 */  mov.d      $f20, $f0
/* 7CD50 8007C150 4622A032 */  c.eq.d     $f20, $f2
/* 7CD54 8007C154 00000000 */  nop
/* 7CD58 8007C158 00000000 */  nop
/* 7CD5C 8007C15C 4502000A */  bc1fl      .L8007C188
/* 7CD60 8007C160 4638A302 */   mul.d     $f12, $f20, $f24
/* 7CD64 8007C164 8E220000 */  lw         $v0, 0x0($s1)
/* 7CD68 8007C168 8E230004 */  lw         $v1, 0x4($s1)
/* 7CD6C 8007C16C 8E240008 */  lw         $a0, 0x8($s1)
/* 7CD70 8007C170 8E25000C */  lw         $a1, 0xC($s1)
/* 7CD74 8007C174 AE420060 */  sw         $v0, 0x60($s2)
/* 7CD78 8007C178 AE430064 */  sw         $v1, 0x64($s2)
/* 7CD7C 8007C17C AE440068 */  sw         $a0, 0x68($s2)
/* 7CD80 8007C180 0801F080 */  j          .L8007C200
/* 7CD84 8007C184 AE45006C */   sw        $a1, 0x6C($s2)
.L8007C188:
/* 7CD88 8007C188 00000000 */  nop
/* 7CD8C 8007C18C 46366302 */  mul.d      $f12, $f12, $f22
/* 7CD90 8007C190 3C10802B */  lui        $s0, %hi(D_802B5B68)
/* 7CD94 8007C194 26105B68 */  addiu      $s0, $s0, %lo(D_802B5B68)
/* 7CD98 8007C198 0C022C03 */  jal        func_8008B00C
/* 7CD9C 8007C19C 02003021 */   addu      $a2, $s0, $zero
/* 7CDA0 8007C1A0 D6680000 */  ldc1       $f8, 0x0($s3)
/* 7CDA4 8007C1A4 D6020000 */  ldc1       $f2, 0x0($s0)
/* 7CDA8 8007C1A8 46224202 */  mul.d      $f8, $f8, $f2
/* 7CDAC 8007C1AC D6640008 */  ldc1       $f4, 0x8($s3)
/* 7CDB0 8007C1B0 46222102 */  mul.d      $f4, $f4, $f2
/* 7CDB4 8007C1B4 D6660010 */  ldc1       $f6, 0x10($s3)
/* 7CDB8 8007C1B8 46223182 */  mul.d      $f6, $f6, $f2
/* 7CDBC 8007C1BC 3C01802B */  lui        $at, %hi(D_802B5B70)
/* 7CDC0 8007C1C0 D4205B70 */  ldc1       $f0, %lo(D_802B5B70)($at)
/* 7CDC4 8007C1C4 02402021 */  addu       $a0, $s2, $zero
/* 7CDC8 8007C1C8 46200020 */  cvt.s.d    $f0, $f0
/* 7CDCC 8007C1CC 3C01802B */  lui        $at, %hi(D_802B5B80)
/* 7CDD0 8007C1D0 E4205B80 */  swc1       $f0, %lo(D_802B5B80)($at)
/* 7CDD4 8007C1D4 46204220 */  cvt.s.d    $f8, $f8
/* 7CDD8 8007C1D8 46202120 */  cvt.s.d    $f4, $f4
/* 7CDDC 8007C1DC 462031A0 */  cvt.s.d    $f6, $f6
/* 7CDE0 8007C1E0 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7CDE4 8007C1E4 E4285B84 */  swc1       $f8, %lo(D_802B5B84)($at)
/* 7CDE8 8007C1E8 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7CDEC 8007C1EC E4245B88 */  swc1       $f4, %lo(D_802B5B88)($at)
/* 7CDF0 8007C1F0 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7CDF4 8007C1F4 E4265B8C */  swc1       $f6, %lo(D_802B5B8C)($at)
/* 7CDF8 8007C1F8 0C01EEB6 */  jal        func_8007BAD8
/* 7CDFC 8007C1FC 02202821 */   addu      $a1, $s1, $zero
.L8007C200:
/* 7CE00 8007C200 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7CE04 8007C204 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7CE08 8007C208 8FB20018 */  lw         $s2, 0x18($sp)
/* 7CE0C 8007C20C 8FB10014 */  lw         $s1, 0x14($sp)
/* 7CE10 8007C210 8FB00010 */  lw         $s0, 0x10($sp)
/* 7CE14 8007C214 D7B80038 */  ldc1       $f24, 0x38($sp)
/* 7CE18 8007C218 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 7CE1C 8007C21C D7B40028 */  ldc1       $f20, 0x28($sp)
/* 7CE20 8007C220 03E00008 */  jr         $ra
/* 7CE24 8007C224 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8007C228
/* 7CE28 8007C228 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7CE2C 8007C22C AFB20018 */  sw         $s2, 0x18($sp)
/* 7CE30 8007C230 00809021 */  addu       $s2, $a0, $zero
/* 7CE34 8007C234 AFB10014 */  sw         $s1, 0x14($sp)
/* 7CE38 8007C238 00A08821 */  addu       $s1, $a1, $zero
/* 7CE3C 8007C23C AFBF001C */  sw         $ra, 0x1C($sp)
/* 7CE40 8007C240 AFB00010 */  sw         $s0, 0x10($sp)
/* 7CE44 8007C244 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7CE48 8007C248 8E220010 */  lw         $v0, 0x10($s1)
/* 7CE4C 8007C24C 8E230014 */  lw         $v1, 0x14($s1)
/* 7CE50 8007C250 8E240018 */  lw         $a0, 0x18($s1)
/* 7CE54 8007C254 8E25001C */  lw         $a1, 0x1C($s1)
/* 7CE58 8007C258 AE420008 */  sw         $v0, 0x8($s2)
/* 7CE5C 8007C25C AE43000C */  sw         $v1, 0xC($s2)
/* 7CE60 8007C260 AE440010 */  sw         $a0, 0x10($s2)
/* 7CE64 8007C264 AE450014 */  sw         $a1, 0x14($s2)
/* 7CE68 8007C268 8E220020 */  lw         $v0, 0x20($s1)
/* 7CE6C 8007C26C 8E230024 */  lw         $v1, 0x24($s1)
/* 7CE70 8007C270 AE420018 */  sw         $v0, 0x18($s2)
/* 7CE74 8007C274 AE43001C */  sw         $v1, 0x1C($s2)
/* 7CE78 8007C278 AE400010 */  sw         $zero, 0x10($s2)
/* 7CE7C 8007C27C AE400014 */  sw         $zero, 0x14($s2)
/* 7CE80 8007C280 AE400020 */  sw         $zero, 0x20($s2)
/* 7CE84 8007C284 AE400024 */  sw         $zero, 0x24($s2)
/* 7CE88 8007C288 AE400030 */  sw         $zero, 0x30($s2)
/* 7CE8C 8007C28C AE400034 */  sw         $zero, 0x34($s2)
/* 7CE90 8007C290 AE400040 */  sw         $zero, 0x40($s2)
/* 7CE94 8007C294 AE400044 */  sw         $zero, 0x44($s2)
/* 7CE98 8007C298 AE400050 */  sw         $zero, 0x50($s2)
/* 7CE9C 8007C29C AE400054 */  sw         $zero, 0x54($s2)
/* 7CEA0 8007C2A0 D6200048 */  ldc1       $f0, 0x48($s1)
/* 7CEA4 8007C2A4 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7CEA8 8007C2A8 D4220980 */  ldc1       $f2, %lo(D_802D0980)($at)
/* 7CEAC 8007C2AC F6400048 */  sdc1       $f0, 0x48($s2)
/* 7CEB0 8007C2B0 D6200078 */  ldc1       $f0, 0x78($s1)
/* 7CEB4 8007C2B4 F6400038 */  sdc1       $f0, 0x38($s2)
/* 7CEB8 8007C2B8 D6200070 */  ldc1       $f0, 0x70($s1)
/* 7CEBC 8007C2BC 46201081 */  sub.d      $f2, $f2, $f0
/* 7CEC0 8007C2C0 3C01800C */  lui        $at, %hi(D_800C69E8)
/* 7CEC4 8007C2C4 D42069E8 */  ldc1       $f0, %lo(D_800C69E8)($at)
/* 7CEC8 8007C2C8 46220102 */  mul.d      $f4, $f0, $f2
/* 7CECC 8007C2CC D6200080 */  ldc1       $f0, 0x80($s1)
/* 7CED0 8007C2D0 46240001 */  sub.d      $f0, $f0, $f4
/* 7CED4 8007C2D4 4480A000 */  mtc1       $zero, $f20
/* 7CED8 8007C2D8 4480A800 */  mtc1       $zero, $f21
/* 7CEDC 8007C2DC 00000000 */  nop
/* 7CEE0 8007C2E0 4634003C */  c.lt.d     $f0, $f20
/* 7CEE4 8007C2E4 F6400058 */  sdc1       $f0, 0x58($s2)
/* 7CEE8 8007C2E8 45000002 */  bc1f       .L8007C2F4
/* 7CEEC 8007C2EC 00000000 */   nop
/* 7CEF0 8007C2F0 F6540058 */  sdc1       $f20, 0x58($s2)
.L8007C2F4:
/* 7CEF4 8007C2F4 3C02800C */  lui        $v0, %hi(D_800C6B8A)
/* 7CEF8 8007C2F8 80426B8A */  lb         $v0, %lo(D_800C6B8A)($v0)
/* 7CEFC 8007C2FC 14400039 */  bnez       $v0, .L8007C3E4
/* 7CF00 8007C300 00000000 */   nop
/* 7CF04 8007C304 3C01800D */  lui        $at, %hi(D_800D6038)
/* 7CF08 8007C308 D4206038 */  ldc1       $f0, %lo(D_800D6038)($at)
/* 7CF0C 8007C30C 46202102 */  mul.d      $f4, $f4, $f0
/* 7CF10 8007C310 D62C0080 */  ldc1       $f12, 0x80($s1)
/* 7CF14 8007C314 46246301 */  sub.d      $f12, $f12, $f4
/* 7CF18 8007C318 46206302 */  mul.d      $f12, $f12, $f0
/* 7CF1C 8007C31C 00000000 */  nop
/* 7CF20 8007C320 46226302 */  mul.d      $f12, $f12, $f2
/* 7CF24 8007C324 3C10802B */  lui        $s0, %hi(D_802B5B68)
/* 7CF28 8007C328 26105B68 */  addiu      $s0, $s0, %lo(D_802B5B68)
/* 7CF2C 8007C32C 0C022C03 */  jal        func_8008B00C
/* 7CF30 8007C330 02003021 */   addu      $a2, $s0, $zero
/* 7CF34 8007C334 3C01802B */  lui        $at, %hi(D_802B5B70)
/* 7CF38 8007C338 D4205B70 */  ldc1       $f0, %lo(D_802B5B70)($at)
/* 7CF3C 8007C33C 3C02802B */  lui        $v0, %hi(D_802B5B80)
/* 7CF40 8007C340 24425B80 */  addiu      $v0, $v0, %lo(D_802B5B80)
/* 7CF44 8007C344 462000A0 */  cvt.s.d    $f2, $f0
/* 7CF48 8007C348 E4420000 */  swc1       $f2, 0x0($v0)
/* 7CF4C 8007C34C D6200048 */  ldc1       $f0, 0x48($s1)
/* 7CF50 8007C350 4620A03E */  c.le.d     $f20, $f0
/* 7CF54 8007C354 D6040000 */  ldc1       $f4, 0x0($s0)
/* 7CF58 8007C358 00000000 */  nop
/* 7CF5C 8007C35C 45020001 */  bc1fl      .L8007C364
/* 7CF60 8007C360 46202107 */   neg.d     $f4, $f4
.L8007C364:
/* 7CF64 8007C364 46202120 */  cvt.s.d    $f4, $f4
/* 7CF68 8007C368 E4440008 */  swc1       $f4, 0x8($v0)
/* 7CF6C 8007C36C C6200000 */  lwc1       $f0, 0x0($s1)
/* 7CF70 8007C370 46001002 */  mul.s      $f0, $f2, $f0
/* 7CF74 8007C374 C6220008 */  lwc1       $f2, 0x8($s1)
/* 7CF78 8007C378 46022102 */  mul.s      $f4, $f4, $f2
/* 7CF7C 8007C37C 46040001 */  sub.s      $f0, $f0, $f4
/* 7CF80 8007C380 E6400060 */  swc1       $f0, 0x60($s2)
/* 7CF84 8007C384 C4440000 */  lwc1       $f4, 0x0($v0)
/* 7CF88 8007C388 C6200004 */  lwc1       $f0, 0x4($s1)
/* 7CF8C 8007C38C 46002102 */  mul.s      $f4, $f4, $f0
/* 7CF90 8007C390 C622000C */  lwc1       $f2, 0xC($s1)
/* 7CF94 8007C394 C4400008 */  lwc1       $f0, 0x8($v0)
/* 7CF98 8007C398 46020002 */  mul.s      $f0, $f0, $f2
/* 7CF9C 8007C39C 46002100 */  add.s      $f4, $f4, $f0
/* 7CFA0 8007C3A0 E6440064 */  swc1       $f4, 0x64($s2)
/* 7CFA4 8007C3A4 C4440000 */  lwc1       $f4, 0x0($v0)
/* 7CFA8 8007C3A8 C6200008 */  lwc1       $f0, 0x8($s1)
/* 7CFAC 8007C3AC 46002102 */  mul.s      $f4, $f4, $f0
/* 7CFB0 8007C3B0 C6220000 */  lwc1       $f2, 0x0($s1)
/* 7CFB4 8007C3B4 C4400008 */  lwc1       $f0, 0x8($v0)
/* 7CFB8 8007C3B8 46020002 */  mul.s      $f0, $f0, $f2
/* 7CFBC 8007C3BC 46002100 */  add.s      $f4, $f4, $f0
/* 7CFC0 8007C3C0 E6440068 */  swc1       $f4, 0x68($s2)
/* 7CFC4 8007C3C4 C4440000 */  lwc1       $f4, 0x0($v0)
/* 7CFC8 8007C3C8 C620000C */  lwc1       $f0, 0xC($s1)
/* 7CFCC 8007C3CC 46002102 */  mul.s      $f4, $f4, $f0
/* 7CFD0 8007C3D0 C6220004 */  lwc1       $f2, 0x4($s1)
/* 7CFD4 8007C3D4 C4400008 */  lwc1       $f0, 0x8($v0)
/* 7CFD8 8007C3D8 46020002 */  mul.s      $f0, $f0, $f2
/* 7CFDC 8007C3DC 46002101 */  sub.s      $f4, $f4, $f0
/* 7CFE0 8007C3E0 E644006C */  swc1       $f4, 0x6C($s2)
.L8007C3E4:
/* 7CFE4 8007C3E4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7CFE8 8007C3E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 7CFEC 8007C3EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 7CFF0 8007C3F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 7CFF4 8007C3F4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7CFF8 8007C3F8 03E00008 */  jr         $ra
/* 7CFFC 8007C3FC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C400
/* 7D000 8007C400 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7D004 8007C404 AFB10014 */  sw         $s1, 0x14($sp)
/* 7D008 8007C408 00A08821 */  addu       $s1, $a1, $zero
/* 7D00C 8007C40C AFBF001C */  sw         $ra, 0x1C($sp)
/* 7D010 8007C410 AFB20018 */  sw         $s2, 0x18($sp)
/* 7D014 8007C414 AFB00010 */  sw         $s0, 0x10($sp)
/* 7D018 8007C418 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7D01C 8007C41C D6220028 */  ldc1       $f2, 0x28($s1)
/* 7D020 8007C420 D6200078 */  ldc1       $f0, 0x78($s1)
/* 7D024 8007C424 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7D028 8007C428 D4240980 */  ldc1       $f4, %lo(D_802D0980)($at)
/* 7D02C 8007C42C 46201082 */  mul.d      $f2, $f2, $f0
/* 7D030 8007C430 D6200070 */  ldc1       $f0, 0x70($s1)
/* 7D034 8007C434 46202501 */  sub.d      $f20, $f4, $f0
/* 7D038 8007C438 46341082 */  mul.d      $f2, $f2, $f20
/* 7D03C 8007C43C D6200010 */  ldc1       $f0, 0x10($s1)
/* 7D040 8007C440 46220000 */  add.d      $f0, $f0, $f2
/* 7D044 8007C444 00809021 */  addu       $s2, $a0, $zero
/* 7D048 8007C448 F6400008 */  sdc1       $f0, 0x8($s2)
/* 7D04C 8007C44C D6220030 */  ldc1       $f2, 0x30($s1)
/* 7D050 8007C450 D6200078 */  ldc1       $f0, 0x78($s1)
/* 7D054 8007C454 46201082 */  mul.d      $f2, $f2, $f0
/* 7D058 8007C458 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 7D05C 8007C45C D4206A08 */  ldc1       $f0, %lo(D_800C6A08)($at)
/* 7D060 8007C460 46340002 */  mul.d      $f0, $f0, $f20
/* 7D064 8007C464 46201080 */  add.d      $f2, $f2, $f0
/* 7D068 8007C468 46341082 */  mul.d      $f2, $f2, $f20
/* 7D06C 8007C46C D6200018 */  ldc1       $f0, 0x18($s1)
/* 7D070 8007C470 46220000 */  add.d      $f0, $f0, $f2
/* 7D074 8007C474 3C01800D */  lui        $at, %hi(D_800D6040)
/* 7D078 8007C478 D4226040 */  ldc1       $f2, %lo(D_800D6040)($at)
/* 7D07C 8007C47C 4620103C */  c.lt.d     $f2, $f0
/* 7D080 8007C480 F6400010 */  sdc1       $f0, 0x10($s2)
/* 7D084 8007C484 45000003 */  bc1f       .L8007C494
/* 7D088 8007C488 00000000 */   nop
/* 7D08C 8007C48C AE400010 */  sw         $zero, 0x10($s2)
/* 7D090 8007C490 AE400014 */  sw         $zero, 0x14($s2)
.L8007C494:
/* 7D094 8007C494 D6220038 */  ldc1       $f2, 0x38($s1)
/* 7D098 8007C498 D6200078 */  ldc1       $f0, 0x78($s1)
/* 7D09C 8007C49C 46201082 */  mul.d      $f2, $f2, $f0
/* 7D0A0 8007C4A0 00000000 */  nop
/* 7D0A4 8007C4A4 46341082 */  mul.d      $f2, $f2, $f20
/* 7D0A8 8007C4A8 D6200020 */  ldc1       $f0, 0x20($s1)
/* 7D0AC 8007C4AC 46220000 */  add.d      $f0, $f0, $f2
/* 7D0B0 8007C4B0 F6400018 */  sdc1       $f0, 0x18($s2)
/* 7D0B4 8007C4B4 D6200078 */  ldc1       $f0, 0x78($s1)
/* 7D0B8 8007C4B8 D6220028 */  ldc1       $f2, 0x28($s1)
/* 7D0BC 8007C4BC 46220002 */  mul.d      $f0, $f0, $f2
/* 7D0C0 8007C4C0 F6400020 */  sdc1       $f0, 0x20($s2)
/* 7D0C4 8007C4C4 D6220078 */  ldc1       $f2, 0x78($s1)
/* 7D0C8 8007C4C8 D6200030 */  ldc1       $f0, 0x30($s1)
/* 7D0CC 8007C4CC 46201082 */  mul.d      $f2, $f2, $f0
/* 7D0D0 8007C4D0 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 7D0D4 8007C4D4 D4206A00 */  ldc1       $f0, %lo(D_800C6A00)($at)
/* 7D0D8 8007C4D8 46340002 */  mul.d      $f0, $f0, $f20
/* 7D0DC 8007C4DC 46201080 */  add.d      $f2, $f2, $f0
/* 7D0E0 8007C4E0 F6420028 */  sdc1       $f2, 0x28($s2)
/* 7D0E4 8007C4E4 D6200078 */  ldc1       $f0, 0x78($s1)
/* 7D0E8 8007C4E8 D6220038 */  ldc1       $f2, 0x38($s1)
/* 7D0EC 8007C4EC 46220002 */  mul.d      $f0, $f0, $f2
/* 7D0F0 8007C4F0 F6400030 */  sdc1       $f0, 0x30($s2)
/* 7D0F4 8007C4F4 0C022CCC */  jal        func_8008B330
/* 7D0F8 8007C4F8 26440020 */   addiu     $a0, $s2, 0x20
/* 7D0FC 8007C4FC F6400038 */  sdc1       $f0, 0x38($s2)
/* 7D100 8007C500 8E220040 */  lw         $v0, 0x40($s1)
/* 7D104 8007C504 8E230044 */  lw         $v1, 0x44($s1)
/* 7D108 8007C508 8E240048 */  lw         $a0, 0x48($s1)
/* 7D10C 8007C50C 8E25004C */  lw         $a1, 0x4C($s1)
/* 7D110 8007C510 AE420040 */  sw         $v0, 0x40($s2)
/* 7D114 8007C514 AE430044 */  sw         $v1, 0x44($s2)
/* 7D118 8007C518 AE440048 */  sw         $a0, 0x48($s2)
/* 7D11C 8007C51C AE45004C */  sw         $a1, 0x4C($s2)
/* 7D120 8007C520 8E220050 */  lw         $v0, 0x50($s1)
/* 7D124 8007C524 8E230054 */  lw         $v1, 0x54($s1)
/* 7D128 8007C528 AE420050 */  sw         $v0, 0x50($s2)
/* 7D12C 8007C52C AE430054 */  sw         $v1, 0x54($s2)
/* 7D130 8007C530 D6200080 */  ldc1       $f0, 0x80($s1)
/* 7D134 8007C534 3C02800C */  lui        $v0, %hi(D_800C6B8A)
/* 7D138 8007C538 80426B8A */  lb         $v0, %lo(D_800C6B8A)($v0)
/* 7D13C 8007C53C 14400023 */  bnez       $v0, .L8007C5CC
/* 7D140 8007C540 F6400058 */   sdc1      $f0, 0x58($s2)
/* 7D144 8007C544 D62C0080 */  ldc1       $f12, 0x80($s1)
/* 7D148 8007C548 3C01800D */  lui        $at, %hi(D_800D6048)
/* 7D14C 8007C54C D4206048 */  ldc1       $f0, %lo(D_800D6048)($at)
/* 7D150 8007C550 46206302 */  mul.d      $f12, $f12, $f0
/* 7D154 8007C554 00000000 */  nop
/* 7D158 8007C558 46346302 */  mul.d      $f12, $f12, $f20
/* 7D15C 8007C55C 3C10802B */  lui        $s0, %hi(D_802B5B68)
/* 7D160 8007C560 26105B68 */  addiu      $s0, $s0, %lo(D_802B5B68)
/* 7D164 8007C564 0C022C03 */  jal        func_8008B00C
/* 7D168 8007C568 02003021 */   addu      $a2, $s0, $zero
/* 7D16C 8007C56C 3C01802B */  lui        $at, %hi(D_802B5B70)
/* 7D170 8007C570 D4205B70 */  ldc1       $f0, %lo(D_802B5B70)($at)
/* 7D174 8007C574 46200020 */  cvt.s.d    $f0, $f0
/* 7D178 8007C578 3C01802B */  lui        $at, %hi(D_802B5B80)
/* 7D17C 8007C57C E4205B80 */  swc1       $f0, %lo(D_802B5B80)($at)
/* 7D180 8007C580 D6200040 */  ldc1       $f0, 0x40($s1)
/* 7D184 8007C584 D6020000 */  ldc1       $f2, 0x0($s0)
/* 7D188 8007C588 46220002 */  mul.d      $f0, $f0, $f2
/* 7D18C 8007C58C 46200020 */  cvt.s.d    $f0, $f0
/* 7D190 8007C590 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7D194 8007C594 E4205B84 */  swc1       $f0, %lo(D_802B5B84)($at)
/* 7D198 8007C598 D6200048 */  ldc1       $f0, 0x48($s1)
/* 7D19C 8007C59C 46220002 */  mul.d      $f0, $f0, $f2
/* 7D1A0 8007C5A0 46200020 */  cvt.s.d    $f0, $f0
/* 7D1A4 8007C5A4 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7D1A8 8007C5A8 E4205B88 */  swc1       $f0, %lo(D_802B5B88)($at)
/* 7D1AC 8007C5AC D6200050 */  ldc1       $f0, 0x50($s1)
/* 7D1B0 8007C5B0 46220002 */  mul.d      $f0, $f0, $f2
/* 7D1B4 8007C5B4 02402021 */  addu       $a0, $s2, $zero
/* 7D1B8 8007C5B8 46200020 */  cvt.s.d    $f0, $f0
/* 7D1BC 8007C5BC 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7D1C0 8007C5C0 E4205B8C */  swc1       $f0, %lo(D_802B5B8C)($at)
/* 7D1C4 8007C5C4 0C01EEB6 */  jal        func_8007BAD8
/* 7D1C8 8007C5C8 02202821 */   addu      $a1, $s1, $zero
.L8007C5CC:
/* 7D1CC 8007C5CC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7D1D0 8007C5D0 8FB20018 */  lw         $s2, 0x18($sp)
/* 7D1D4 8007C5D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 7D1D8 8007C5D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 7D1DC 8007C5DC D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7D1E0 8007C5E0 03E00008 */  jr         $ra
/* 7D1E4 8007C5E4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C5E8
/* 7D1E8 8007C5E8 3C02803F */  lui        $v0, %hi(D_803F40C0)
/* 7D1EC 8007C5EC 8C4240C0 */  lw         $v0, %lo(D_803F40C0)($v0)
/* 7D1F0 8007C5F0 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7D1F4 8007C5F4 D4200980 */  ldc1       $f0, %lo(D_802D0980)($at)
/* 7D1F8 8007C5F8 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7D1FC 8007C5FC D4242FF0 */  ldc1       $f4, %lo(D_802D2FF0)($at)
/* 7D200 8007C600 3C04802C */  lui        $a0, %hi(D_802C6050)
/* 7D204 8007C604 8C846050 */  lw         $a0, %lo(D_802C6050)($a0)
/* 7D208 8007C608 44801000 */  mtc1       $zero, $f2
/* 7D20C 8007C60C 44801800 */  mtc1       $zero, $f3
/* 7D210 8007C610 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7D214 8007C614 AFBF0020 */  sw         $ra, 0x20($sp)
/* 7D218 8007C618 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7D21C 8007C61C AFB20018 */  sw         $s2, 0x18($sp)
/* 7D220 8007C620 AFB10014 */  sw         $s1, 0x14($sp)
/* 7D224 8007C624 AFB00010 */  sw         $s0, 0x10($sp)
/* 7D228 8007C628 000218C0 */  sll        $v1, $v0, 3
/* 7D22C 8007C62C 00621823 */  subu       $v1, $v1, $v0
/* 7D230 8007C630 46240000 */  add.d      $f0, $f0, $f4
/* 7D234 8007C634 3C028031 */  lui        $v0, %hi(D_803126D0)
/* 7D238 8007C638 8C4226D0 */  lw         $v0, %lo(D_803126D0)($v0)
/* 7D23C 8007C63C 00031900 */  sll        $v1, $v1, 4
/* 7D240 8007C640 46222032 */  c.eq.d     $f4, $f2
/* 7D244 8007C644 000210C0 */  sll        $v0, $v0, 3
/* 7D248 8007C648 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7D24C 8007C64C F4200980 */  sdc1       $f0, %lo(D_802D0980)($at)
/* 7D250 8007C650 3C01802C */  lui        $at, %hi(D_802C57D0)
/* 7D254 8007C654 00220821 */  addu       $at, $at, $v0
/* 7D258 8007C658 F42057D0 */  sdc1       $f0, %lo(D_802C57D0)($at)
/* 7D25C 8007C65C 45000016 */  bc1f       .L8007C6B8
/* 7D260 8007C660 00838821 */   addu      $s1, $a0, $v1
/* 7D264 8007C664 3C03802D */  lui        $v1, %hi(D_802D0BF0)
/* 7D268 8007C668 8C630BF0 */  lw         $v1, %lo(D_802D0BF0)($v1)
/* 7D26C 8007C66C 02203821 */  addu       $a3, $s1, $zero
/* 7D270 8007C670 000310C0 */  sll        $v0, $v1, 3
/* 7D274 8007C674 00431023 */  subu       $v0, $v0, $v1
/* 7D278 8007C678 00021100 */  sll        $v0, $v0, 4
/* 7D27C 8007C67C 00443021 */  addu       $a2, $v0, $a0
/* 7D280 8007C680 24C80700 */  addiu      $t0, $a2, 0x700
.L8007C684:
/* 7D284 8007C684 8CC20000 */  lw         $v0, 0x0($a2)
/* 7D288 8007C688 8CC30004 */  lw         $v1, 0x4($a2)
/* 7D28C 8007C68C 8CC40008 */  lw         $a0, 0x8($a2)
/* 7D290 8007C690 8CC5000C */  lw         $a1, 0xC($a2)
/* 7D294 8007C694 ACE20000 */  sw         $v0, 0x0($a3)
/* 7D298 8007C698 ACE30004 */  sw         $v1, 0x4($a3)
/* 7D29C 8007C69C ACE40008 */  sw         $a0, 0x8($a3)
/* 7D2A0 8007C6A0 ACE5000C */  sw         $a1, 0xC($a3)
/* 7D2A4 8007C6A4 24C60010 */  addiu      $a2, $a2, 0x10
/* 7D2A8 8007C6A8 14C8FFF6 */  bne        $a2, $t0, .L8007C684
/* 7D2AC 8007C6AC 24E70010 */   addiu     $a3, $a3, 0x10
/* 7D2B0 8007C6B0 0801F1E0 */  j          .L8007C780
/* 7D2B4 8007C6B4 00000000 */   nop
.L8007C6B8:
/* 7D2B8 8007C6B8 3C10802F */  lui        $s0, %hi(D_802EF7E0)
/* 7D2BC 8007C6BC 2610F7E0 */  addiu      $s0, $s0, %lo(D_802EF7E0)
/* 7D2C0 8007C6C0 00009021 */  addu       $s2, $zero, $zero
/* 7D2C4 8007C6C4 3C13800D */  lui        $s3, %hi(jtbl_800D6050_main)
/* 7D2C8 8007C6C8 26736050 */  addiu      $s3, $s3, %lo(jtbl_800D6050_main)
.L8007C6CC:
/* 7D2CC 8007C6CC 92020090 */  lbu        $v0, 0x90($s0)
/* 7D2D0 8007C6D0 A2220000 */  sb         $v0, 0x0($s1)
/* 7D2D4 8007C6D4 2442FFFF */  addiu      $v0, $v0, -0x1
/* 7D2D8 8007C6D8 00021600 */  sll        $v0, $v0, 24
/* 7D2DC 8007C6DC 00021E03 */  sra        $v1, $v0, 24
/* 7D2E0 8007C6E0 2C620020 */  sltiu      $v0, $v1, 0x20
/* 7D2E4 8007C6E4 10400021 */  beqz       $v0, L8007C76C
/* 7D2E8 8007C6E8 00031080 */   sll       $v0, $v1, 2
/* 7D2EC 8007C6EC 00531021 */  addu       $v0, $v0, $s3
/* 7D2F0 8007C6F0 8C420000 */  lw         $v0, 0x0($v0)
/* 7D2F4 8007C6F4 00400008 */  jr         $v0
/* 7D2F8 8007C6F8 00000000 */   nop
glabel L8007C6FC
/* 7D2FC 8007C6FC 02202021 */  addu       $a0, $s1, $zero
/* 7D300 8007C700 0C01EF05 */  jal        func_8007BC14
/* 7D304 8007C704 02002821 */   addu      $a1, $s0, $zero
/* 7D308 8007C708 0801F1DC */  j          .L8007C770
/* 7D30C 8007C70C 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007C710
/* 7D310 8007C710 02202021 */  addu       $a0, $s1, $zero
/* 7D314 8007C714 0C01EF1A */  jal        func_8007BC68
/* 7D318 8007C718 02002821 */   addu      $a1, $s0, $zero
/* 7D31C 8007C71C 0801F1DC */  j          .L8007C770
/* 7D320 8007C720 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007C724
/* 7D324 8007C724 02202021 */  addu       $a0, $s1, $zero
/* 7D328 8007C728 0C01EF3B */  jal        func_8007BCEC
/* 7D32C 8007C72C 02002821 */   addu      $a1, $s0, $zero
/* 7D330 8007C730 0801F1DC */  j          .L8007C770
/* 7D334 8007C734 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007C738
/* 7D338 8007C738 02202021 */  addu       $a0, $s1, $zero
/* 7D33C 8007C73C 0C01EFDC */  jal        func_8007BF70
/* 7D340 8007C740 02002821 */   addu      $a1, $s0, $zero
/* 7D344 8007C744 0801F1DC */  j          .L8007C770
/* 7D348 8007C748 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007C74C
/* 7D34C 8007C74C 02202021 */  addu       $a0, $s1, $zero
/* 7D350 8007C750 0C01F08A */  jal        func_8007C228
/* 7D354 8007C754 02002821 */   addu      $a1, $s0, $zero
/* 7D358 8007C758 0801F1DC */  j          .L8007C770
/* 7D35C 8007C75C 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007C760
/* 7D360 8007C760 02202021 */  addu       $a0, $s1, $zero
/* 7D364 8007C764 0C01F100 */  jal        func_8007C400
/* 7D368 8007C768 02002821 */   addu      $a1, $s0, $zero
glabel L8007C76C
/* 7D36C 8007C76C 26310070 */  addiu      $s1, $s1, 0x70
.L8007C770:
/* 7D370 8007C770 26520001 */  addiu      $s2, $s2, 0x1
/* 7D374 8007C774 2A420010 */  slti       $v0, $s2, 0x10
/* 7D378 8007C778 1440FFD4 */  bnez       $v0, .L8007C6CC
/* 7D37C 8007C77C 261000F0 */   addiu     $s0, $s0, 0xF0
.L8007C780:
/* 7D380 8007C780 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7D384 8007C784 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7D388 8007C788 8FB20018 */  lw         $s2, 0x18($sp)
/* 7D38C 8007C78C 8FB10014 */  lw         $s1, 0x14($sp)
/* 7D390 8007C790 8FB00010 */  lw         $s0, 0x10($sp)
/* 7D394 8007C794 03E00008 */  jr         $ra
/* 7D398 8007C798 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007C79C
/* 7D39C 8007C79C 3C02802B */  lui        $v0, %hi(D_802B5B80)
/* 7D3A0 8007C7A0 24425B80 */  addiu      $v0, $v0, %lo(D_802B5B80)
/* 7D3A4 8007C7A4 C4400000 */  lwc1       $f0, 0x0($v0)
/* 7D3A8 8007C7A8 C4820060 */  lwc1       $f2, 0x60($a0)
/* 7D3AC 8007C7AC 46020002 */  mul.s      $f0, $f0, $f2
/* 7D3B0 8007C7B0 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7D3B4 8007C7B4 C4265B84 */  lwc1       $f6, %lo(D_802B5B84)($at)
/* 7D3B8 8007C7B8 C4820064 */  lwc1       $f2, 0x64($a0)
/* 7D3BC 8007C7BC 46023182 */  mul.s      $f6, $f6, $f2
/* 7D3C0 8007C7C0 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7D3C4 8007C7C4 C4245B88 */  lwc1       $f4, %lo(D_802B5B88)($at)
/* 7D3C8 8007C7C8 C4820068 */  lwc1       $f2, 0x68($a0)
/* 7D3CC 8007C7CC 46022102 */  mul.s      $f4, $f4, $f2
/* 7D3D0 8007C7D0 C488006C */  lwc1       $f8, 0x6C($a0)
/* 7D3D4 8007C7D4 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7D3D8 8007C7D8 C4225B8C */  lwc1       $f2, %lo(D_802B5B8C)($at)
/* 7D3DC 8007C7DC 46060001 */  sub.s      $f0, $f0, $f6
/* 7D3E0 8007C7E0 46081082 */  mul.s      $f2, $f2, $f8
/* 7D3E4 8007C7E4 46040001 */  sub.s      $f0, $f0, $f4
/* 7D3E8 8007C7E8 46020001 */  sub.s      $f0, $f0, $f2
/* 7D3EC 8007C7EC E4A00000 */  swc1       $f0, 0x0($a1)
/* 7D3F0 8007C7F0 C4400000 */  lwc1       $f0, 0x0($v0)
/* 7D3F4 8007C7F4 C4820064 */  lwc1       $f2, 0x64($a0)
/* 7D3F8 8007C7F8 46020002 */  mul.s      $f0, $f0, $f2
/* 7D3FC 8007C7FC 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7D400 8007C800 C4265B84 */  lwc1       $f6, %lo(D_802B5B84)($at)
/* 7D404 8007C804 C4820060 */  lwc1       $f2, 0x60($a0)
/* 7D408 8007C808 46023182 */  mul.s      $f6, $f6, $f2
/* 7D40C 8007C80C 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7D410 8007C810 C4245B88 */  lwc1       $f4, %lo(D_802B5B88)($at)
/* 7D414 8007C814 C482006C */  lwc1       $f2, 0x6C($a0)
/* 7D418 8007C818 46022102 */  mul.s      $f4, $f4, $f2
/* 7D41C 8007C81C C4880068 */  lwc1       $f8, 0x68($a0)
/* 7D420 8007C820 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7D424 8007C824 C4225B8C */  lwc1       $f2, %lo(D_802B5B8C)($at)
/* 7D428 8007C828 46060000 */  add.s      $f0, $f0, $f6
/* 7D42C 8007C82C 46081082 */  mul.s      $f2, $f2, $f8
/* 7D430 8007C830 46040000 */  add.s      $f0, $f0, $f4
/* 7D434 8007C834 46020001 */  sub.s      $f0, $f0, $f2
/* 7D438 8007C838 E4A00004 */  swc1       $f0, 0x4($a1)
/* 7D43C 8007C83C C4400000 */  lwc1       $f0, 0x0($v0)
/* 7D440 8007C840 C4820068 */  lwc1       $f2, 0x68($a0)
/* 7D444 8007C844 46020002 */  mul.s      $f0, $f0, $f2
/* 7D448 8007C848 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7D44C 8007C84C C4265B88 */  lwc1       $f6, %lo(D_802B5B88)($at)
/* 7D450 8007C850 C4820060 */  lwc1       $f2, 0x60($a0)
/* 7D454 8007C854 46023182 */  mul.s      $f6, $f6, $f2
/* 7D458 8007C858 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7D45C 8007C85C C4245B8C */  lwc1       $f4, %lo(D_802B5B8C)($at)
/* 7D460 8007C860 C4820064 */  lwc1       $f2, 0x64($a0)
/* 7D464 8007C864 46022102 */  mul.s      $f4, $f4, $f2
/* 7D468 8007C868 C488006C */  lwc1       $f8, 0x6C($a0)
/* 7D46C 8007C86C 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7D470 8007C870 C4225B84 */  lwc1       $f2, %lo(D_802B5B84)($at)
/* 7D474 8007C874 46060000 */  add.s      $f0, $f0, $f6
/* 7D478 8007C878 46081082 */  mul.s      $f2, $f2, $f8
/* 7D47C 8007C87C 46040000 */  add.s      $f0, $f0, $f4
/* 7D480 8007C880 46020001 */  sub.s      $f0, $f0, $f2
/* 7D484 8007C884 E4A00008 */  swc1       $f0, 0x8($a1)
/* 7D488 8007C888 C4400000 */  lwc1       $f0, 0x0($v0)
/* 7D48C 8007C88C C482006C */  lwc1       $f2, 0x6C($a0)
/* 7D490 8007C890 46020002 */  mul.s      $f0, $f0, $f2
/* 7D494 8007C894 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7D498 8007C898 C4265B8C */  lwc1       $f6, %lo(D_802B5B8C)($at)
/* 7D49C 8007C89C C4820060 */  lwc1       $f2, 0x60($a0)
/* 7D4A0 8007C8A0 46023182 */  mul.s      $f6, $f6, $f2
/* 7D4A4 8007C8A4 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7D4A8 8007C8A8 C4245B84 */  lwc1       $f4, %lo(D_802B5B84)($at)
/* 7D4AC 8007C8AC C4820068 */  lwc1       $f2, 0x68($a0)
/* 7D4B0 8007C8B0 46022102 */  mul.s      $f4, $f4, $f2
/* 7D4B4 8007C8B4 C4880064 */  lwc1       $f8, 0x64($a0)
/* 7D4B8 8007C8B8 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7D4BC 8007C8BC C4225B88 */  lwc1       $f2, %lo(D_802B5B88)($at)
/* 7D4C0 8007C8C0 46060000 */  add.s      $f0, $f0, $f6
/* 7D4C4 8007C8C4 46081082 */  mul.s      $f2, $f2, $f8
/* 7D4C8 8007C8C8 46040000 */  add.s      $f0, $f0, $f4
/* 7D4CC 8007C8CC 46020001 */  sub.s      $f0, $f0, $f2
/* 7D4D0 8007C8D0 03E00008 */  jr         $ra
/* 7D4D4 8007C8D4 E4A0000C */   swc1      $f0, 0xC($a1)

glabel func_8007C8D8
/* 7D4D8 8007C8D8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7D4DC 8007C8DC AFB10014 */  sw         $s1, 0x14($sp)
/* 7D4E0 8007C8E0 00808821 */  addu       $s1, $a0, $zero
/* 7D4E4 8007C8E4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 7D4E8 8007C8E8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7D4EC 8007C8EC AFB20018 */  sw         $s2, 0x18($sp)
/* 7D4F0 8007C8F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 7D4F4 8007C8F4 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 7D4F8 8007C8F8 D6200030 */  ldc1       $f0, 0x30($s1)
/* 7D4FC 8007C8FC D6220038 */  ldc1       $f2, 0x38($s1)
/* 7D500 8007C900 46200007 */  neg.d      $f0, $f0
/* 7D504 8007C904 46220002 */  mul.d      $f0, $f0, $f2
/* 7D508 8007C908 D6240058 */  ldc1       $f4, 0x58($s1)
/* 7D50C 8007C90C D6220040 */  ldc1       $f2, 0x40($s1)
/* 7D510 8007C910 46241082 */  mul.d      $f2, $f2, $f4
/* 7D514 8007C914 46220001 */  sub.d      $f0, $f0, $f2
/* 7D518 8007C918 3C10803F */  lui        $s0, %hi(D_803F5C38)
/* 7D51C 8007C91C 26105C38 */  addiu      $s0, $s0, %lo(D_803F5C38)
/* 7D520 8007C920 F6000000 */  sdc1       $f0, 0x0($s0)
/* 7D524 8007C924 D6200020 */  ldc1       $f0, 0x20($s1)
/* 7D528 8007C928 D6220038 */  ldc1       $f2, 0x38($s1)
/* 7D52C 8007C92C 46200007 */  neg.d      $f0, $f0
/* 7D530 8007C930 46220002 */  mul.d      $f0, $f0, $f2
/* 7D534 8007C934 D6240058 */  ldc1       $f4, 0x58($s1)
/* 7D538 8007C938 D6220050 */  ldc1       $f2, 0x50($s1)
/* 7D53C 8007C93C 46241082 */  mul.d      $f2, $f2, $f4
/* 7D540 8007C940 46220000 */  add.d      $f0, $f0, $f2
/* 7D544 8007C944 00A09821 */  addu       $s3, $a1, $zero
/* 7D548 8007C948 4487A000 */  mtc1       $a3, $f20
/* 7D54C 8007C94C 4486A800 */  mtc1       $a2, $f21
/* 7D550 8007C950 F600FFF0 */  sdc1       $f0, -0x10($s0)
/* 7D554 8007C954 0C022D13 */  jal        func_8008B44C
/* 7D558 8007C958 2604FFF0 */   addiu     $a0, $s0, -0x10
/* 7D55C 8007C95C D602FFF0 */  ldc1       $f2, -0x10($s0)
/* 7D560 8007C960 3C01800C */  lui        $at, %hi(D_800C6A30)
/* 7D564 8007C964 D4266A30 */  ldc1       $f6, %lo(D_800C6A30)($at)
/* 7D568 8007C968 46261082 */  mul.d      $f2, $f2, $f6
/* 7D56C 8007C96C D6200020 */  ldc1       $f0, 0x20($s1)
/* 7D570 8007C970 D6240038 */  ldc1       $f4, 0x38($s1)
/* 7D574 8007C974 46240002 */  mul.d      $f0, $f0, $f4
/* 7D578 8007C978 00000000 */  nop
/* 7D57C 8007C97C 46341082 */  mul.d      $f2, $f2, $f20
/* 7D580 8007C980 46201080 */  add.d      $f2, $f2, $f0
/* 7D584 8007C984 46341082 */  mul.d      $f2, $f2, $f20
/* 7D588 8007C988 D6600010 */  ldc1       $f0, 0x10($s3)
/* 7D58C 8007C98C 46220000 */  add.d      $f0, $f0, $f2
/* 7D590 8007C990 F6600010 */  sdc1       $f0, 0x10($s3)
/* 7D594 8007C994 D6000000 */  ldc1       $f0, 0x0($s0)
/* 7D598 8007C998 46260002 */  mul.d      $f0, $f0, $f6
/* 7D59C 8007C99C D6220030 */  ldc1       $f2, 0x30($s1)
/* 7D5A0 8007C9A0 D6240038 */  ldc1       $f4, 0x38($s1)
/* 7D5A4 8007C9A4 46241082 */  mul.d      $f2, $f2, $f4
/* 7D5A8 8007C9A8 00000000 */  nop
/* 7D5AC 8007C9AC 46340002 */  mul.d      $f0, $f0, $f20
/* 7D5B0 8007C9B0 46220000 */  add.d      $f0, $f0, $f2
/* 7D5B4 8007C9B4 46340002 */  mul.d      $f0, $f0, $f20
/* 7D5B8 8007C9B8 D6620020 */  ldc1       $f2, 0x20($s3)
/* 7D5BC 8007C9BC 3C01800C */  lui        $at, %hi(D_800C6A20)
/* 7D5C0 8007C9C0 D4246A20 */  ldc1       $f4, %lo(D_800C6A20)($at)
/* 7D5C4 8007C9C4 46201080 */  add.d      $f2, $f2, $f0
/* 7D5C8 8007C9C8 46342102 */  mul.d      $f4, $f4, $f20
/* 7D5CC 8007C9CC AE600018 */  sw         $zero, 0x18($s3)
/* 7D5D0 8007C9D0 AE60001C */  sw         $zero, 0x1C($s3)
/* 7D5D4 8007C9D4 F6620020 */  sdc1       $f2, 0x20($s3)
/* 7D5D8 8007C9D8 D6220058 */  ldc1       $f2, 0x58($s1)
/* 7D5DC 8007C9DC D6200040 */  ldc1       $f0, 0x40($s1)
/* 7D5E0 8007C9E0 46201082 */  mul.d      $f2, $f2, $f0
/* 7D5E4 8007C9E4 D6000000 */  ldc1       $f0, 0x0($s0)
/* 7D5E8 8007C9E8 46202002 */  mul.d      $f0, $f4, $f0
/* 7D5EC 8007C9EC 46201080 */  add.d      $f2, $f2, $f0
/* 7D5F0 8007C9F0 3C12802B */  lui        $s2, %hi(D_802B5B90)
/* 7D5F4 8007C9F4 26525B90 */  addiu      $s2, $s2, %lo(D_802B5B90)
/* 7D5F8 8007C9F8 F6420000 */  sdc1       $f2, 0x0($s2)
/* 7D5FC 8007C9FC D6200058 */  ldc1       $f0, 0x58($s1)
/* 7D600 8007CA00 D6220048 */  ldc1       $f2, 0x48($s1)
/* 7D604 8007CA04 46220002 */  mul.d      $f0, $f0, $f2
/* 7D608 8007CA08 F6400008 */  sdc1       $f0, 0x8($s2)
/* 7D60C 8007CA0C D6220058 */  ldc1       $f2, 0x58($s1)
/* 7D610 8007CA10 D6200050 */  ldc1       $f0, 0x50($s1)
/* 7D614 8007CA14 46201082 */  mul.d      $f2, $f2, $f0
/* 7D618 8007CA18 D600FFF0 */  ldc1       $f0, -0x10($s0)
/* 7D61C 8007CA1C 46202102 */  mul.d      $f4, $f4, $f0
/* 7D620 8007CA20 46241081 */  sub.d      $f2, $f2, $f4
/* 7D624 8007CA24 F6420010 */  sdc1       $f2, 0x10($s2)
/* 7D628 8007CA28 0C022CCC */  jal        func_8008B330
/* 7D62C 8007CA2C 02402021 */   addu      $a0, $s2, $zero
/* 7D630 8007CA30 44801000 */  mtc1       $zero, $f2
/* 7D634 8007CA34 44801800 */  mtc1       $zero, $f3
/* 7D638 8007CA38 00000000 */  nop
/* 7D63C 8007CA3C 46220032 */  c.eq.d     $f0, $f2
/* 7D640 8007CA40 00000000 */  nop
/* 7D644 8007CA44 4500000A */  bc1f       .L8007CA70
/* 7D648 8007CA48 00000000 */   nop
/* 7D64C 8007CA4C 8E220060 */  lw         $v0, 0x60($s1)
/* 7D650 8007CA50 8E230064 */  lw         $v1, 0x64($s1)
/* 7D654 8007CA54 8E240068 */  lw         $a0, 0x68($s1)
/* 7D658 8007CA58 8E25006C */  lw         $a1, 0x6C($s1)
/* 7D65C 8007CA5C AE620000 */  sw         $v0, 0x0($s3)
/* 7D660 8007CA60 AE630004 */  sw         $v1, 0x4($s3)
/* 7D664 8007CA64 AE640008 */  sw         $a0, 0x8($s3)
/* 7D668 8007CA68 0801F2BD */  j          .L8007CAF4
/* 7D66C 8007CA6C AE65000C */   sw        $a1, 0xC($s3)
.L8007CA70:
/* 7D670 8007CA70 3C01800D */  lui        $at, %hi(D_800D60D0)
/* 7D674 8007CA74 D42C60D0 */  ldc1       $f12, %lo(D_800D60D0)($at)
/* 7D678 8007CA78 462C0302 */  mul.d      $f12, $f0, $f12
/* 7D67C 8007CA7C 00000000 */  nop
/* 7D680 8007CA80 46346302 */  mul.d      $f12, $f12, $f20
/* 7D684 8007CA84 3C10802B */  lui        $s0, %hi(D_802B5B68)
/* 7D688 8007CA88 26105B68 */  addiu      $s0, $s0, %lo(D_802B5B68)
/* 7D68C 8007CA8C 0C022C03 */  jal        func_8008B00C
/* 7D690 8007CA90 02003021 */   addu      $a2, $s0, $zero
/* 7D694 8007CA94 D6480000 */  ldc1       $f8, 0x0($s2)
/* 7D698 8007CA98 D6020000 */  ldc1       $f2, 0x0($s0)
/* 7D69C 8007CA9C 46224202 */  mul.d      $f8, $f8, $f2
/* 7D6A0 8007CAA0 D6440008 */  ldc1       $f4, 0x8($s2)
/* 7D6A4 8007CAA4 46222102 */  mul.d      $f4, $f4, $f2
/* 7D6A8 8007CAA8 D6460010 */  ldc1       $f6, 0x10($s2)
/* 7D6AC 8007CAAC 46223182 */  mul.d      $f6, $f6, $f2
/* 7D6B0 8007CAB0 3C01802B */  lui        $at, %hi(D_802B5B70)
/* 7D6B4 8007CAB4 D4205B70 */  ldc1       $f0, %lo(D_802B5B70)($at)
/* 7D6B8 8007CAB8 02202021 */  addu       $a0, $s1, $zero
/* 7D6BC 8007CABC 46200020 */  cvt.s.d    $f0, $f0
/* 7D6C0 8007CAC0 3C01802B */  lui        $at, %hi(D_802B5B80)
/* 7D6C4 8007CAC4 E4205B80 */  swc1       $f0, %lo(D_802B5B80)($at)
/* 7D6C8 8007CAC8 46204220 */  cvt.s.d    $f8, $f8
/* 7D6CC 8007CACC 46202120 */  cvt.s.d    $f4, $f4
/* 7D6D0 8007CAD0 462031A0 */  cvt.s.d    $f6, $f6
/* 7D6D4 8007CAD4 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7D6D8 8007CAD8 E4285B84 */  swc1       $f8, %lo(D_802B5B84)($at)
/* 7D6DC 8007CADC 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7D6E0 8007CAE0 E4245B88 */  swc1       $f4, %lo(D_802B5B88)($at)
/* 7D6E4 8007CAE4 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7D6E8 8007CAE8 E4265B8C */  swc1       $f6, %lo(D_802B5B8C)($at)
/* 7D6EC 8007CAEC 0C01F1E7 */  jal        func_8007C79C
/* 7D6F0 8007CAF0 02602821 */   addu      $a1, $s3, $zero
.L8007CAF4:
/* 7D6F4 8007CAF4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7D6F8 8007CAF8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7D6FC 8007CAFC 8FB20018 */  lw         $s2, 0x18($sp)
/* 7D700 8007CB00 8FB10014 */  lw         $s1, 0x14($sp)
/* 7D704 8007CB04 8FB00010 */  lw         $s0, 0x10($sp)
/* 7D708 8007CB08 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 7D70C 8007CB0C 03E00008 */  jr         $ra
/* 7D710 8007CB10 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007CB14
/* 7D714 8007CB14 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7D718 8007CB18 D4226A10 */  ldc1       $f2, %lo(D_800C6A10)($at)
/* 7D71C 8007CB1C 44874000 */  mtc1       $a3, $f8
/* 7D720 8007CB20 44864800 */  mtc1       $a2, $f9
/* 7D724 8007CB24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7D728 8007CB28 AFB10014 */  sw         $s1, 0x14($sp)
/* 7D72C 8007CB2C 46281082 */  mul.d      $f2, $f2, $f8
/* 7D730 8007CB30 00808821 */  addu       $s1, $a0, $zero
/* 7D734 8007CB34 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7D738 8007CB38 AFB20018 */  sw         $s2, 0x18($sp)
/* 7D73C 8007CB3C AFB00010 */  sw         $s0, 0x10($sp)
/* 7D740 8007CB40 D6200038 */  ldc1       $f0, 0x38($s1)
/* 7D744 8007CB44 46220001 */  sub.d      $f0, $f0, $f2
/* 7D748 8007CB48 46280182 */  mul.d      $f6, $f0, $f8
/* 7D74C 8007CB4C D6220020 */  ldc1       $f2, 0x20($s1)
/* 7D750 8007CB50 46261082 */  mul.d      $f2, $f2, $f6
/* 7D754 8007CB54 00A09021 */  addu       $s2, $a1, $zero
/* 7D758 8007CB58 D6400010 */  ldc1       $f0, 0x10($s2)
/* 7D75C 8007CB5C 46220000 */  add.d      $f0, $f0, $f2
/* 7D760 8007CB60 F6400010 */  sdc1       $f0, 0x10($s2)
/* 7D764 8007CB64 D6200030 */  ldc1       $f0, 0x30($s1)
/* 7D768 8007CB68 46260002 */  mul.d      $f0, $f0, $f6
/* 7D76C 8007CB6C D6420020 */  ldc1       $f2, 0x20($s2)
/* 7D770 8007CB70 46201080 */  add.d      $f2, $f2, $f0
/* 7D774 8007CB74 3C01800D */  lui        $at, %hi(D_800D60D8)
/* 7D778 8007CB78 D42060D8 */  ldc1       $f0, %lo(D_800D60D8)($at)
/* 7D77C 8007CB7C AE400018 */  sw         $zero, 0x18($s2)
/* 7D780 8007CB80 AE40001C */  sw         $zero, 0x1C($s2)
/* 7D784 8007CB84 F6420020 */  sdc1       $f2, 0x20($s2)
/* 7D788 8007CB88 D6240058 */  ldc1       $f4, 0x58($s1)
/* 7D78C 8007CB8C 46202002 */  mul.d      $f0, $f4, $f0
/* 7D790 8007CB90 D62C0038 */  ldc1       $f12, 0x38($s1)
/* 7D794 8007CB94 4620603C */  c.lt.d     $f12, $f0
/* 7D798 8007CB98 00000000 */  nop
/* 7D79C 8007CB9C 4500000B */  bc1f       .L8007CBCC
/* 7D7A0 8007CBA0 00000000 */   nop
/* 7D7A4 8007CBA4 3C01800C */  lui        $at, %hi(D_800C69E8)
/* 7D7A8 8007CBA8 D42069E8 */  ldc1       $f0, %lo(D_800C69E8)($at)
/* 7D7AC 8007CBAC 3C01800D */  lui        $at, %hi(D_800D60E0)
/* 7D7B0 8007CBB0 D42260E0 */  ldc1       $f2, %lo(D_800D60E0)($at)
/* 7D7B4 8007CBB4 46220002 */  mul.d      $f0, $f0, $f2
/* 7D7B8 8007CBB8 00000000 */  nop
/* 7D7BC 8007CBBC 46280002 */  mul.d      $f0, $f0, $f8
/* 7D7C0 8007CBC0 46202001 */  sub.d      $f0, $f4, $f0
/* 7D7C4 8007CBC4 0801F305 */  j          .L8007CC14
/* 7D7C8 8007CBC8 46280002 */   mul.d     $f0, $f0, $f8
.L8007CBCC:
/* 7D7CC 8007CBCC 44800000 */  mtc1       $zero, $f0
/* 7D7D0 8007CBD0 44800800 */  mtc1       $zero, $f1
/* 7D7D4 8007CBD4 00000000 */  nop
/* 7D7D8 8007CBD8 46206032 */  c.eq.d     $f12, $f0
/* 7D7DC 8007CBDC 00000000 */  nop
/* 7D7E0 8007CBE0 00000000 */  nop
/* 7D7E4 8007CBE4 4502000A */  bc1fl      .L8007CC10
/* 7D7E8 8007CBE8 46262002 */   mul.d     $f0, $f4, $f6
/* 7D7EC 8007CBEC 8E220060 */  lw         $v0, 0x60($s1)
/* 7D7F0 8007CBF0 8E230064 */  lw         $v1, 0x64($s1)
/* 7D7F4 8007CBF4 8E240068 */  lw         $a0, 0x68($s1)
/* 7D7F8 8007CBF8 8E25006C */  lw         $a1, 0x6C($s1)
/* 7D7FC 8007CBFC AE420000 */  sw         $v0, 0x0($s2)
/* 7D800 8007CC00 AE430004 */  sw         $v1, 0x4($s2)
/* 7D804 8007CC04 AE440008 */  sw         $a0, 0x8($s2)
/* 7D808 8007CC08 0801F324 */  j          .L8007CC90
/* 7D80C 8007CC0C AE45000C */   sw        $a1, 0xC($s2)
.L8007CC10:
/* 7D810 8007CC10 462C0003 */  div.d      $f0, $f0, $f12
.L8007CC14:
/* 7D814 8007CC14 3C01800D */  lui        $at, %hi(D_800D60E8)
/* 7D818 8007CC18 D42C60E8 */  ldc1       $f12, %lo(D_800D60E8)($at)
/* 7D81C 8007CC1C 462C0302 */  mul.d      $f12, $f0, $f12
/* 7D820 8007CC20 3C10802B */  lui        $s0, %hi(D_802B5B68)
/* 7D824 8007CC24 26105B68 */  addiu      $s0, $s0, %lo(D_802B5B68)
/* 7D828 8007CC28 0C022C03 */  jal        func_8008B00C
/* 7D82C 8007CC2C 02003021 */   addu      $a2, $s0, $zero
/* 7D830 8007CC30 3C01802B */  lui        $at, %hi(D_802B5B70)
/* 7D834 8007CC34 D4205B70 */  ldc1       $f0, %lo(D_802B5B70)($at)
/* 7D838 8007CC38 46200020 */  cvt.s.d    $f0, $f0
/* 7D83C 8007CC3C 3C01802B */  lui        $at, %hi(D_802B5B80)
/* 7D840 8007CC40 E4205B80 */  swc1       $f0, %lo(D_802B5B80)($at)
/* 7D844 8007CC44 D6200040 */  ldc1       $f0, 0x40($s1)
/* 7D848 8007CC48 D6020000 */  ldc1       $f2, 0x0($s0)
/* 7D84C 8007CC4C 46220002 */  mul.d      $f0, $f0, $f2
/* 7D850 8007CC50 46200020 */  cvt.s.d    $f0, $f0
/* 7D854 8007CC54 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7D858 8007CC58 E4205B84 */  swc1       $f0, %lo(D_802B5B84)($at)
/* 7D85C 8007CC5C D6200048 */  ldc1       $f0, 0x48($s1)
/* 7D860 8007CC60 46220002 */  mul.d      $f0, $f0, $f2
/* 7D864 8007CC64 46200020 */  cvt.s.d    $f0, $f0
/* 7D868 8007CC68 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7D86C 8007CC6C E4205B88 */  swc1       $f0, %lo(D_802B5B88)($at)
/* 7D870 8007CC70 D6200050 */  ldc1       $f0, 0x50($s1)
/* 7D874 8007CC74 46220002 */  mul.d      $f0, $f0, $f2
/* 7D878 8007CC78 02202021 */  addu       $a0, $s1, $zero
/* 7D87C 8007CC7C 46200020 */  cvt.s.d    $f0, $f0
/* 7D880 8007CC80 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7D884 8007CC84 E4205B8C */  swc1       $f0, %lo(D_802B5B8C)($at)
/* 7D888 8007CC88 0C01F1E7 */  jal        func_8007C79C
/* 7D88C 8007CC8C 02402821 */   addu      $a1, $s2, $zero
.L8007CC90:
/* 7D890 8007CC90 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7D894 8007CC94 8FB20018 */  lw         $s2, 0x18($sp)
/* 7D898 8007CC98 8FB10014 */  lw         $s1, 0x14($sp)
/* 7D89C 8007CC9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7D8A0 8007CCA0 03E00008 */  jr         $ra
/* 7D8A4 8007CCA4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007CCA8
/* 7D8A8 8007CCA8 3C01800D */  lui        $at, %hi(D_800D60F0)
/* 7D8AC 8007CCAC D42460F0 */  ldc1       $f4, %lo(D_800D60F0)($at)
/* 7D8B0 8007CCB0 44876000 */  mtc1       $a3, $f12
/* 7D8B4 8007CCB4 44866800 */  mtc1       $a2, $f13
/* 7D8B8 8007CCB8 00000000 */  nop
/* 7D8BC 8007CCBC 46246082 */  mul.d      $f2, $f12, $f4
/* 7D8C0 8007CCC0 3C01800C */  lui        $at, %hi(D_800C69E8)
/* 7D8C4 8007CCC4 D42069E8 */  ldc1       $f0, %lo(D_800C69E8)($at)
/* 7D8C8 8007CCC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7D8CC 8007CCCC AFB10014 */  sw         $s1, 0x14($sp)
/* 7D8D0 8007CCD0 00808821 */  addu       $s1, $a0, $zero
/* 7D8D4 8007CCD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 7D8D8 8007CCD8 46201082 */  mul.d      $f2, $f2, $f0
/* 7D8DC 8007CCDC 00A09021 */  addu       $s2, $a1, $zero
/* 7D8E0 8007CCE0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7D8E4 8007CCE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 7D8E8 8007CCE8 AE400018 */  sw         $zero, 0x18($s2)
/* 7D8EC 8007CCEC AE40001C */  sw         $zero, 0x1C($s2)
/* 7D8F0 8007CCF0 D6200058 */  ldc1       $f0, 0x58($s1)
/* 7D8F4 8007CCF4 46220001 */  sub.d      $f0, $f0, $f2
/* 7D8F8 8007CCF8 46240002 */  mul.d      $f0, $f0, $f4
/* 7D8FC 8007CCFC 00000000 */  nop
/* 7D900 8007CD00 462C0302 */  mul.d      $f12, $f0, $f12
/* 7D904 8007CD04 3C10802B */  lui        $s0, %hi(D_802B5B68)
/* 7D908 8007CD08 26105B68 */  addiu      $s0, $s0, %lo(D_802B5B68)
/* 7D90C 8007CD0C 0C022C03 */  jal        func_8008B00C
/* 7D910 8007CD10 02003021 */   addu      $a2, $s0, $zero
/* 7D914 8007CD14 3C01802B */  lui        $at, %hi(D_802B5B70)
/* 7D918 8007CD18 D4205B70 */  ldc1       $f0, %lo(D_802B5B70)($at)
/* 7D91C 8007CD1C 3C02802B */  lui        $v0, %hi(D_802B5B80)
/* 7D920 8007CD20 24425B80 */  addiu      $v0, $v0, %lo(D_802B5B80)
/* 7D924 8007CD24 462001A0 */  cvt.s.d    $f6, $f0
/* 7D928 8007CD28 E4460000 */  swc1       $f6, 0x0($v0)
/* 7D92C 8007CD2C D6220048 */  ldc1       $f2, 0x48($s1)
/* 7D930 8007CD30 44800000 */  mtc1       $zero, $f0
/* 7D934 8007CD34 44800800 */  mtc1       $zero, $f1
/* 7D938 8007CD38 00000000 */  nop
/* 7D93C 8007CD3C 4622003E */  c.le.d     $f0, $f2
/* 7D940 8007CD40 D6040000 */  ldc1       $f4, 0x0($s0)
/* 7D944 8007CD44 00000000 */  nop
/* 7D948 8007CD48 45020001 */  bc1fl      .L8007CD50
/* 7D94C 8007CD4C 46202107 */   neg.d     $f4, $f4
.L8007CD50:
/* 7D950 8007CD50 46202120 */  cvt.s.d    $f4, $f4
/* 7D954 8007CD54 E4440008 */  swc1       $f4, 0x8($v0)
/* 7D958 8007CD58 C6200060 */  lwc1       $f0, 0x60($s1)
/* 7D95C 8007CD5C 46003002 */  mul.s      $f0, $f6, $f0
/* 7D960 8007CD60 C6220068 */  lwc1       $f2, 0x68($s1)
/* 7D964 8007CD64 46022102 */  mul.s      $f4, $f4, $f2
/* 7D968 8007CD68 46040001 */  sub.s      $f0, $f0, $f4
/* 7D96C 8007CD6C E6400000 */  swc1       $f0, 0x0($s2)
/* 7D970 8007CD70 C4440000 */  lwc1       $f4, 0x0($v0)
/* 7D974 8007CD74 C6200064 */  lwc1       $f0, 0x64($s1)
/* 7D978 8007CD78 46002102 */  mul.s      $f4, $f4, $f0
/* 7D97C 8007CD7C C622006C */  lwc1       $f2, 0x6C($s1)
/* 7D980 8007CD80 C4400008 */  lwc1       $f0, 0x8($v0)
/* 7D984 8007CD84 46020002 */  mul.s      $f0, $f0, $f2
/* 7D988 8007CD88 46002100 */  add.s      $f4, $f4, $f0
/* 7D98C 8007CD8C E6440004 */  swc1       $f4, 0x4($s2)
/* 7D990 8007CD90 C4440000 */  lwc1       $f4, 0x0($v0)
/* 7D994 8007CD94 C6200068 */  lwc1       $f0, 0x68($s1)
/* 7D998 8007CD98 46002102 */  mul.s      $f4, $f4, $f0
/* 7D99C 8007CD9C C6220060 */  lwc1       $f2, 0x60($s1)
/* 7D9A0 8007CDA0 C4400008 */  lwc1       $f0, 0x8($v0)
/* 7D9A4 8007CDA4 46020002 */  mul.s      $f0, $f0, $f2
/* 7D9A8 8007CDA8 46002100 */  add.s      $f4, $f4, $f0
/* 7D9AC 8007CDAC E6440008 */  swc1       $f4, 0x8($s2)
/* 7D9B0 8007CDB0 C4440000 */  lwc1       $f4, 0x0($v0)
/* 7D9B4 8007CDB4 C620006C */  lwc1       $f0, 0x6C($s1)
/* 7D9B8 8007CDB8 46002102 */  mul.s      $f4, $f4, $f0
/* 7D9BC 8007CDBC C6220064 */  lwc1       $f2, 0x64($s1)
/* 7D9C0 8007CDC0 C4400008 */  lwc1       $f0, 0x8($v0)
/* 7D9C4 8007CDC4 46020002 */  mul.s      $f0, $f0, $f2
/* 7D9C8 8007CDC8 46002101 */  sub.s      $f4, $f4, $f0
/* 7D9CC 8007CDCC E644000C */  swc1       $f4, 0xC($s2)
/* 7D9D0 8007CDD0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7D9D4 8007CDD4 8FB20018 */  lw         $s2, 0x18($sp)
/* 7D9D8 8007CDD8 8FB10014 */  lw         $s1, 0x14($sp)
/* 7D9DC 8007CDDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 7D9E0 8007CDE0 03E00008 */  jr         $ra
/* 7D9E4 8007CDE4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007CDE8
/* 7D9E8 8007CDE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7D9EC 8007CDEC AFB00010 */  sw         $s0, 0x10($sp)
/* 7D9F0 8007CDF0 00808021 */  addu       $s0, $a0, $zero
/* 7D9F4 8007CDF4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7D9F8 8007CDF8 AFB20018 */  sw         $s2, 0x18($sp)
/* 7D9FC 8007CDFC AFB10014 */  sw         $s1, 0x14($sp)
/* 7DA00 8007CE00 D6060038 */  ldc1       $f6, 0x38($s0)
/* 7DA04 8007CE04 44876000 */  mtc1       $a3, $f12
/* 7DA08 8007CE08 44866800 */  mtc1       $a2, $f13
/* 7DA0C 8007CE0C 00000000 */  nop
/* 7DA10 8007CE10 462C3182 */  mul.d      $f6, $f6, $f12
/* 7DA14 8007CE14 D6020020 */  ldc1       $f2, 0x20($s0)
/* 7DA18 8007CE18 46223082 */  mul.d      $f2, $f6, $f2
/* 7DA1C 8007CE1C 00A08821 */  addu       $s1, $a1, $zero
/* 7DA20 8007CE20 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 7DA24 8007CE24 D4246A08 */  ldc1       $f4, %lo(D_800C6A08)($at)
/* 7DA28 8007CE28 D6200010 */  ldc1       $f0, 0x10($s1)
/* 7DA2C 8007CE2C 462C2102 */  mul.d      $f4, $f4, $f12
/* 7DA30 8007CE30 46220000 */  add.d      $f0, $f0, $f2
/* 7DA34 8007CE34 F6200010 */  sdc1       $f0, 0x10($s1)
/* 7DA38 8007CE38 D6000030 */  ldc1       $f0, 0x30($s0)
/* 7DA3C 8007CE3C 46203002 */  mul.d      $f0, $f6, $f0
/* 7DA40 8007CE40 D6220020 */  ldc1       $f2, 0x20($s1)
/* 7DA44 8007CE44 462C2102 */  mul.d      $f4, $f4, $f12
/* 7DA48 8007CE48 46201080 */  add.d      $f2, $f2, $f0
/* 7DA4C 8007CE4C F6220020 */  sdc1       $f2, 0x20($s1)
/* 7DA50 8007CE50 D6000028 */  ldc1       $f0, 0x28($s0)
/* 7DA54 8007CE54 46203182 */  mul.d      $f6, $f6, $f0
/* 7DA58 8007CE58 46243180 */  add.d      $f6, $f6, $f4
/* 7DA5C 8007CE5C D6200018 */  ldc1       $f0, 0x18($s1)
/* 7DA60 8007CE60 46260000 */  add.d      $f0, $f0, $f6
/* 7DA64 8007CE64 3C01800D */  lui        $at, %hi(D_800D60F8)
/* 7DA68 8007CE68 D42260F8 */  ldc1       $f2, %lo(D_800D60F8)($at)
/* 7DA6C 8007CE6C F6200018 */  sdc1       $f0, 0x18($s1)
/* 7DA70 8007CE70 D6000058 */  ldc1       $f0, 0x58($s0)
/* 7DA74 8007CE74 46220002 */  mul.d      $f0, $f0, $f2
/* 7DA78 8007CE78 00000000 */  nop
/* 7DA7C 8007CE7C 462C0302 */  mul.d      $f12, $f0, $f12
/* 7DA80 8007CE80 3C12802B */  lui        $s2, %hi(D_802B5B68)
/* 7DA84 8007CE84 26525B68 */  addiu      $s2, $s2, %lo(D_802B5B68)
/* 7DA88 8007CE88 0C022C03 */  jal        func_8008B00C
/* 7DA8C 8007CE8C 02403021 */   addu      $a2, $s2, $zero
/* 7DA90 8007CE90 3C01802B */  lui        $at, %hi(D_802B5B70)
/* 7DA94 8007CE94 D4205B70 */  ldc1       $f0, %lo(D_802B5B70)($at)
/* 7DA98 8007CE98 46200020 */  cvt.s.d    $f0, $f0
/* 7DA9C 8007CE9C 3C01802B */  lui        $at, %hi(D_802B5B80)
/* 7DAA0 8007CEA0 E4205B80 */  swc1       $f0, %lo(D_802B5B80)($at)
/* 7DAA4 8007CEA4 D6000040 */  ldc1       $f0, 0x40($s0)
/* 7DAA8 8007CEA8 D6420000 */  ldc1       $f2, 0x0($s2)
/* 7DAAC 8007CEAC 46220002 */  mul.d      $f0, $f0, $f2
/* 7DAB0 8007CEB0 46200020 */  cvt.s.d    $f0, $f0
/* 7DAB4 8007CEB4 3C01802B */  lui        $at, %hi(D_802B5B84)
/* 7DAB8 8007CEB8 E4205B84 */  swc1       $f0, %lo(D_802B5B84)($at)
/* 7DABC 8007CEBC D6000048 */  ldc1       $f0, 0x48($s0)
/* 7DAC0 8007CEC0 46220002 */  mul.d      $f0, $f0, $f2
/* 7DAC4 8007CEC4 46200020 */  cvt.s.d    $f0, $f0
/* 7DAC8 8007CEC8 3C01802B */  lui        $at, %hi(D_802B5B88)
/* 7DACC 8007CECC E4205B88 */  swc1       $f0, %lo(D_802B5B88)($at)
/* 7DAD0 8007CED0 D6000050 */  ldc1       $f0, 0x50($s0)
/* 7DAD4 8007CED4 46220002 */  mul.d      $f0, $f0, $f2
/* 7DAD8 8007CED8 02002021 */  addu       $a0, $s0, $zero
/* 7DADC 8007CEDC 46200020 */  cvt.s.d    $f0, $f0
/* 7DAE0 8007CEE0 3C01802B */  lui        $at, %hi(D_802B5B8C)
/* 7DAE4 8007CEE4 E4205B8C */  swc1       $f0, %lo(D_802B5B8C)($at)
/* 7DAE8 8007CEE8 0C01F1E7 */  jal        func_8007C79C
/* 7DAEC 8007CEEC 02202821 */   addu      $a1, $s1, $zero
/* 7DAF0 8007CEF0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7DAF4 8007CEF4 8FB20018 */  lw         $s2, 0x18($sp)
/* 7DAF8 8007CEF8 8FB10014 */  lw         $s1, 0x14($sp)
/* 7DAFC 8007CEFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 7DB00 8007CF00 03E00008 */  jr         $ra
/* 7DB04 8007CF04 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8007CF08
/* 7DB08 8007CF08 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 7DB0C 8007CF0C F7B40040 */  sdc1       $f20, 0x40($sp)
/* 7DB10 8007CF10 4487A000 */  mtc1       $a3, $f20
/* 7DB14 8007CF14 4486A800 */  mtc1       $a2, $f21
/* 7DB18 8007CF18 AFB20020 */  sw         $s2, 0x20($sp)
/* 7DB1C 8007CF1C 00809021 */  addu       $s2, $a0, $zero
/* 7DB20 8007CF20 AFB40028 */  sw         $s4, 0x28($sp)
/* 7DB24 8007CF24 0000A021 */  addu       $s4, $zero, $zero
/* 7DB28 8007CF28 AFB30024 */  sw         $s3, 0x24($sp)
/* 7DB2C 8007CF2C 3C138031 */  lui        $s3, %hi(D_80312AB0)
/* 7DB30 8007CF30 26732AB0 */  addiu      $s3, $s3, %lo(D_80312AB0)
/* 7DB34 8007CF34 AFB60030 */  sw         $s6, 0x30($sp)
/* 7DB38 8007CF38 0000B021 */  addu       $s6, $zero, $zero
/* 7DB3C 8007CF3C AFB5002C */  sw         $s5, 0x2C($sp)
/* 7DB40 8007CF40 24150001 */  addiu      $s5, $zero, 0x1
/* 7DB44 8007CF44 AFB70034 */  sw         $s7, 0x34($sp)
/* 7DB48 8007CF48 3C17800D */  lui        $s7, %hi(jtbl_800D6100_main)
/* 7DB4C 8007CF4C 26F76100 */  addiu      $s7, $s7, %lo(jtbl_800D6100_main)
/* 7DB50 8007CF50 AFB00018 */  sw         $s0, 0x18($sp)
/* 7DB54 8007CF54 2670002B */  addiu      $s0, $s3, 0x2B
/* 7DB58 8007CF58 AFB1001C */  sw         $s1, 0x1C($sp)
/* 7DB5C 8007CF5C 26510008 */  addiu      $s1, $s2, 0x8
/* 7DB60 8007CF60 AFBF0038 */  sw         $ra, 0x38($sp)
.L8007CF64:
/* 7DB64 8007CF64 A2150000 */  sb         $s5, 0x0($s0)
/* 7DB68 8007CF68 82430000 */  lb         $v1, 0x0($s2)
/* 7DB6C 8007CF6C 8202FFFF */  lb         $v0, -0x1($s0)
/* 7DB70 8007CF70 14620003 */  bne        $v1, $v0, .L8007CF80
/* 7DB74 8007CF74 00602021 */   addu      $a0, $v1, $zero
/* 7DB78 8007CF78 0801F3E1 */  j          .L8007CF84
/* 7DB7C 8007CF7C A2000000 */   sb        $zero, 0x0($s0)
.L8007CF80:
/* 7DB80 8007CF80 A204FFFF */  sb         $a0, -0x1($s0)
.L8007CF84:
/* 7DB84 8007CF84 92420000 */  lbu        $v0, 0x0($s2)
/* 7DB88 8007CF88 2442FFFF */  addiu      $v0, $v0, -0x1
/* 7DB8C 8007CF8C 00021600 */  sll        $v0, $v0, 24
/* 7DB90 8007CF90 00021E03 */  sra        $v1, $v0, 24
/* 7DB94 8007CF94 2C620020 */  sltiu      $v0, $v1, 0x20
/* 7DB98 8007CF98 10400084 */  beqz       $v0, L8007D1AC
/* 7DB9C 8007CF9C 00031080 */   sll       $v0, $v1, 2
/* 7DBA0 8007CFA0 00571021 */  addu       $v0, $v0, $s7
/* 7DBA4 8007CFA4 8C420000 */  lw         $v0, 0x0($v0)
/* 7DBA8 8007CFA8 00400008 */  jr         $v0
/* 7DBAC 8007CFAC 00000000 */   nop
glabel L8007CFB0
/* 7DBB0 8007CFB0 AE00FFE5 */  sw         $zero, -0x1B($s0)
/* 7DBB4 8007CFB4 AE00FFE9 */  sw         $zero, -0x17($s0)
/* 7DBB8 8007CFB8 AE00FFED */  sw         $zero, -0x13($s0)
/* 7DBBC 8007CFBC AE00FFF1 */  sw         $zero, -0xF($s0)
/* 7DBC0 8007CFC0 AE00FFF5 */  sw         $zero, -0xB($s0)
/* 7DBC4 8007CFC4 AE00FFF9 */  sw         $zero, -0x7($s0)
/* 7DBC8 8007CFC8 0801F46C */  j          .L8007D1B0
/* 7DBCC 8007CFCC 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007CFD0
/* 7DBD0 8007CFD0 D6220000 */  ldc1       $f2, 0x0($s1)
/* 7DBD4 8007CFD4 D600FFE5 */  ldc1       $f0, -0x1B($s0)
/* 7DBD8 8007CFD8 46201032 */  c.eq.d     $f2, $f0
/* 7DBDC 8007CFDC 00000000 */  nop
/* 7DBE0 8007CFE0 00000000 */  nop
/* 7DBE4 8007CFE4 45020009 */  bc1fl      .L8007D00C
/* 7DBE8 8007CFE8 A2150000 */   sb        $s5, 0x0($s0)
/* 7DBEC 8007CFEC D6220010 */  ldc1       $f2, 0x10($s1)
/* 7DBF0 8007CFF0 D600FFF5 */  ldc1       $f0, -0xB($s0)
/* 7DBF4 8007CFF4 46201032 */  c.eq.d     $f2, $f0
/* 7DBF8 8007CFF8 00000000 */  nop
/* 7DBFC 8007CFFC 00000000 */  nop
/* 7DC00 8007D000 4503006B */  bc1tl      .L8007D1B0
/* 7DC04 8007D004 26310070 */   addiu     $s1, $s1, 0x70
/* 7DC08 8007D008 A2150000 */  sb         $s5, 0x0($s0)
.L8007D00C:
/* 7DC0C 8007D00C 8E220000 */  lw         $v0, 0x0($s1)
/* 7DC10 8007D010 8E230004 */  lw         $v1, 0x4($s1)
/* 7DC14 8007D014 8E240008 */  lw         $a0, 0x8($s1)
/* 7DC18 8007D018 8E25000C */  lw         $a1, 0xC($s1)
/* 7DC1C 8007D01C AE02FFE5 */  sw         $v0, -0x1B($s0)
/* 7DC20 8007D020 AE03FFE9 */  sw         $v1, -0x17($s0)
/* 7DC24 8007D024 AE04FFED */  sw         $a0, -0x13($s0)
/* 7DC28 8007D028 AE05FFF1 */  sw         $a1, -0xF($s0)
/* 7DC2C 8007D02C 8E220010 */  lw         $v0, 0x10($s1)
/* 7DC30 8007D030 8E230014 */  lw         $v1, 0x14($s1)
/* 7DC34 8007D034 AE02FFF5 */  sw         $v0, -0xB($s0)
/* 7DC38 8007D038 AE03FFF9 */  sw         $v1, -0x7($s0)
/* 7DC3C 8007D03C 8E220058 */  lw         $v0, 0x58($s1)
/* 7DC40 8007D040 8E23005C */  lw         $v1, 0x5C($s1)
/* 7DC44 8007D044 8E240060 */  lw         $a0, 0x60($s1)
/* 7DC48 8007D048 8E250064 */  lw         $a1, 0x64($s1)
/* 7DC4C 8007D04C AE620000 */  sw         $v0, 0x0($s3)
/* 7DC50 8007D050 AE630004 */  sw         $v1, 0x4($s3)
/* 7DC54 8007D054 AE640008 */  sw         $a0, 0x8($s3)
/* 7DC58 8007D058 AE65000C */  sw         $a1, 0xC($s3)
/* 7DC5C 8007D05C 0801F46C */  j          .L8007D1B0
/* 7DC60 8007D060 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007D064
/* 7DC64 8007D064 8E220000 */  lw         $v0, 0x0($s1)
/* 7DC68 8007D068 8E230004 */  lw         $v1, 0x4($s1)
/* 7DC6C 8007D06C 8E240008 */  lw         $a0, 0x8($s1)
/* 7DC70 8007D070 8E25000C */  lw         $a1, 0xC($s1)
/* 7DC74 8007D074 AE02FFE5 */  sw         $v0, -0x1B($s0)
/* 7DC78 8007D078 AE03FFE9 */  sw         $v1, -0x17($s0)
/* 7DC7C 8007D07C AE04FFED */  sw         $a0, -0x13($s0)
/* 7DC80 8007D080 AE05FFF1 */  sw         $a1, -0xF($s0)
/* 7DC84 8007D084 8E220010 */  lw         $v0, 0x10($s1)
/* 7DC88 8007D088 8E230014 */  lw         $v1, 0x14($s1)
/* 7DC8C 8007D08C AE02FFF5 */  sw         $v0, -0xB($s0)
/* 7DC90 8007D090 AE03FFF9 */  sw         $v1, -0x7($s0)
/* 7DC94 8007D094 24140001 */  addiu      $s4, $zero, 0x1
/* 7DC98 8007D098 02402021 */  addu       $a0, $s2, $zero
/* 7DC9C 8007D09C 4407A000 */  mfc1       $a3, $f20
/* 7DCA0 8007D0A0 4406A800 */  mfc1       $a2, $f21
/* 7DCA4 8007D0A4 02602821 */  addu       $a1, $s3, $zero
/* 7DCA8 8007D0A8 0C01F2C5 */  jal        func_8007CB14
/* 7DCAC 8007D0AC A2150000 */   sb        $s5, 0x0($s0)
/* 7DCB0 8007D0B0 0801F46C */  j          .L8007D1B0
/* 7DCB4 8007D0B4 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007D0B8
/* 7DCB8 8007D0B8 8E220000 */  lw         $v0, 0x0($s1)
/* 7DCBC 8007D0BC 8E230004 */  lw         $v1, 0x4($s1)
/* 7DCC0 8007D0C0 8E240008 */  lw         $a0, 0x8($s1)
/* 7DCC4 8007D0C4 8E25000C */  lw         $a1, 0xC($s1)
/* 7DCC8 8007D0C8 AE02FFE5 */  sw         $v0, -0x1B($s0)
/* 7DCCC 8007D0CC AE03FFE9 */  sw         $v1, -0x17($s0)
/* 7DCD0 8007D0D0 AE04FFED */  sw         $a0, -0x13($s0)
/* 7DCD4 8007D0D4 AE05FFF1 */  sw         $a1, -0xF($s0)
/* 7DCD8 8007D0D8 8E220010 */  lw         $v0, 0x10($s1)
/* 7DCDC 8007D0DC 8E230014 */  lw         $v1, 0x14($s1)
/* 7DCE0 8007D0E0 AE02FFF5 */  sw         $v0, -0xB($s0)
/* 7DCE4 8007D0E4 AE03FFF9 */  sw         $v1, -0x7($s0)
/* 7DCE8 8007D0E8 24140001 */  addiu      $s4, $zero, 0x1
/* 7DCEC 8007D0EC 02402021 */  addu       $a0, $s2, $zero
/* 7DCF0 8007D0F0 4407A000 */  mfc1       $a3, $f20
/* 7DCF4 8007D0F4 4406A800 */  mfc1       $a2, $f21
/* 7DCF8 8007D0F8 02602821 */  addu       $a1, $s3, $zero
/* 7DCFC 8007D0FC 0C01F236 */  jal        func_8007C8D8
/* 7DD00 8007D100 A2150000 */   sb        $s5, 0x0($s0)
/* 7DD04 8007D104 0801F46C */  j          .L8007D1B0
/* 7DD08 8007D108 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007D10C
/* 7DD0C 8007D10C 8E220000 */  lw         $v0, 0x0($s1)
/* 7DD10 8007D110 8E230004 */  lw         $v1, 0x4($s1)
/* 7DD14 8007D114 8E240008 */  lw         $a0, 0x8($s1)
/* 7DD18 8007D118 8E25000C */  lw         $a1, 0xC($s1)
/* 7DD1C 8007D11C AE02FFE5 */  sw         $v0, -0x1B($s0)
/* 7DD20 8007D120 AE03FFE9 */  sw         $v1, -0x17($s0)
/* 7DD24 8007D124 AE04FFED */  sw         $a0, -0x13($s0)
/* 7DD28 8007D128 AE05FFF1 */  sw         $a1, -0xF($s0)
/* 7DD2C 8007D12C 8E220010 */  lw         $v0, 0x10($s1)
/* 7DD30 8007D130 8E230014 */  lw         $v1, 0x14($s1)
/* 7DD34 8007D134 AE02FFF5 */  sw         $v0, -0xB($s0)
/* 7DD38 8007D138 AE03FFF9 */  sw         $v1, -0x7($s0)
/* 7DD3C 8007D13C 24140001 */  addiu      $s4, $zero, 0x1
/* 7DD40 8007D140 02402021 */  addu       $a0, $s2, $zero
/* 7DD44 8007D144 4407A000 */  mfc1       $a3, $f20
/* 7DD48 8007D148 4406A800 */  mfc1       $a2, $f21
/* 7DD4C 8007D14C 02602821 */  addu       $a1, $s3, $zero
/* 7DD50 8007D150 0C01F32A */  jal        func_8007CCA8
/* 7DD54 8007D154 A2150000 */   sb        $s5, 0x0($s0)
/* 7DD58 8007D158 0801F46C */  j          .L8007D1B0
/* 7DD5C 8007D15C 26310070 */   addiu     $s1, $s1, 0x70
glabel L8007D160
/* 7DD60 8007D160 8E220000 */  lw         $v0, 0x0($s1)
/* 7DD64 8007D164 8E230004 */  lw         $v1, 0x4($s1)
/* 7DD68 8007D168 8E240008 */  lw         $a0, 0x8($s1)
/* 7DD6C 8007D16C 8E25000C */  lw         $a1, 0xC($s1)
/* 7DD70 8007D170 AE02FFE5 */  sw         $v0, -0x1B($s0)
/* 7DD74 8007D174 AE03FFE9 */  sw         $v1, -0x17($s0)
/* 7DD78 8007D178 AE04FFED */  sw         $a0, -0x13($s0)
/* 7DD7C 8007D17C AE05FFF1 */  sw         $a1, -0xF($s0)
/* 7DD80 8007D180 8E220010 */  lw         $v0, 0x10($s1)
/* 7DD84 8007D184 8E230014 */  lw         $v1, 0x14($s1)
/* 7DD88 8007D188 AE02FFF5 */  sw         $v0, -0xB($s0)
/* 7DD8C 8007D18C AE03FFF9 */  sw         $v1, -0x7($s0)
/* 7DD90 8007D190 24140001 */  addiu      $s4, $zero, 0x1
/* 7DD94 8007D194 02402021 */  addu       $a0, $s2, $zero
/* 7DD98 8007D198 4407A000 */  mfc1       $a3, $f20
/* 7DD9C 8007D19C 4406A800 */  mfc1       $a2, $f21
/* 7DDA0 8007D1A0 02602821 */  addu       $a1, $s3, $zero
/* 7DDA4 8007D1A4 0C01F37A */  jal        func_8007CDE8
/* 7DDA8 8007D1A8 A2150000 */   sb        $s5, 0x0($s0)
glabel L8007D1AC
/* 7DDAC 8007D1AC 26310070 */  addiu      $s1, $s1, 0x70
.L8007D1B0:
/* 7DDB0 8007D1B0 26520070 */  addiu      $s2, $s2, 0x70
/* 7DDB4 8007D1B4 26100030 */  addiu      $s0, $s0, 0x30
/* 7DDB8 8007D1B8 26D60001 */  addiu      $s6, $s6, 0x1
/* 7DDBC 8007D1BC 2AC20010 */  slti       $v0, $s6, 0x10
/* 7DDC0 8007D1C0 1440FF68 */  bnez       $v0, .L8007CF64
/* 7DDC4 8007D1C4 26730030 */   addiu     $s3, $s3, 0x30
/* 7DDC8 8007D1C8 3C01800C */  lui        $at, %hi(D_800C6B88)
/* 7DDCC 8007D1CC A0346B88 */  sb         $s4, %lo(D_800C6B88)($at)
/* 7DDD0 8007D1D0 8FBF0038 */  lw         $ra, 0x38($sp)
/* 7DDD4 8007D1D4 8FB70034 */  lw         $s7, 0x34($sp)
/* 7DDD8 8007D1D8 8FB60030 */  lw         $s6, 0x30($sp)
/* 7DDDC 8007D1DC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 7DDE0 8007D1E0 8FB40028 */  lw         $s4, 0x28($sp)
/* 7DDE4 8007D1E4 8FB30024 */  lw         $s3, 0x24($sp)
/* 7DDE8 8007D1E8 8FB20020 */  lw         $s2, 0x20($sp)
/* 7DDEC 8007D1EC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 7DDF0 8007D1F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 7DDF4 8007D1F4 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 7DDF8 8007D1F8 03E00008 */  jr         $ra
/* 7DDFC 8007D1FC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8007D200
/* 7DE00 8007D200 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7DE04 8007D204 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 7DE08 8007D208 4480C000 */  mtc1       $zero, $f24
/* 7DE0C 8007D20C 4480C800 */  mtc1       $zero, $f25
/* 7DE10 8007D210 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 7DE14 8007D214 46206506 */  mov.d      $f20, $f12
/* 7DE18 8007D218 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 7DE1C 8007D21C 46207586 */  mov.d      $f22, $f14
/* 7DE20 8007D220 AFBF0020 */  sw         $ra, 0x20($sp)
/* 7DE24 8007D224 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7DE28 8007D228 AFB20018 */  sw         $s2, 0x18($sp)
/* 7DE2C 8007D22C AFB10014 */  sw         $s1, 0x14($sp)
/* 7DE30 8007D230 AFB00010 */  sw         $s0, 0x10($sp)
/* 7DE34 8007D234 0C01ED12 */  jal        func_8007B448
/* 7DE38 8007D238 4620C306 */   mov.d     $f12, $f24
/* 7DE3C 8007D23C 3C03802D */  lui        $v1, %hi(D_802D0C84)
/* 7DE40 8007D240 8C630C84 */  lw         $v1, %lo(D_802D0C84)($v1)
/* 7DE44 8007D244 000310C0 */  sll        $v0, $v1, 3
/* 7DE48 8007D248 00431023 */  subu       $v0, $v0, $v1
/* 7DE4C 8007D24C 3C03802C */  lui        $v1, %hi(D_802C6050)
/* 7DE50 8007D250 8C636050 */  lw         $v1, %lo(D_802C6050)($v1)
/* 7DE54 8007D254 3C01800D */  lui        $at, %hi(D_800D6180)
/* 7DE58 8007D258 D4206180 */  ldc1       $f0, %lo(D_800D6180)($at)
/* 7DE5C 8007D25C 00021100 */  sll        $v0, $v0, 4
/* 7DE60 8007D260 00623021 */  addu       $a2, $v1, $v0
/* 7DE64 8007D264 24020004 */  addiu      $v0, $zero, 0x4
/* 7DE68 8007D268 F4C00038 */  sdc1       $f0, 0x38($a2)
/* 7DE6C 8007D26C F4C00058 */  sdc1       $f0, 0x58($a2)
/* 7DE70 8007D270 4620B007 */  neg.d      $f0, $f22
/* 7DE74 8007D274 F4D40020 */  sdc1       $f20, 0x20($a2)
/* 7DE78 8007D278 F4D40050 */  sdc1       $f20, 0x50($a2)
/* 7DE7C 8007D27C F4D60030 */  sdc1       $f22, 0x30($a2)
/* 7DE80 8007D280 F4D80048 */  sdc1       $f24, 0x48($a2)
/* 7DE84 8007D284 A0C20000 */  sb         $v0, 0x0($a2)
/* 7DE88 8007D288 F4C00040 */  sdc1       $f0, 0x40($a2)
/* 7DE8C 8007D28C 0C01ECC1 */  jal        func_8007B304
/* 7DE90 8007D290 2412000D */   addiu     $s2, $zero, 0xD
/* 7DE94 8007D294 3C05802D */  lui        $a1, %hi(D_802D0BF0)
/* 7DE98 8007D298 8CA50BF0 */  lw         $a1, %lo(D_802D0BF0)($a1)
/* 7DE9C 8007D29C 3C04802D */  lui        $a0, %hi(D_802D0C84)
/* 7DEA0 8007D2A0 8C840C84 */  lw         $a0, %lo(D_802D0C84)($a0)
/* 7DEA4 8007D2A4 3C03802C */  lui        $v1, %hi(D_802C6050)
/* 7DEA8 8007D2A8 8C636050 */  lw         $v1, %lo(D_802C6050)($v1)
/* 7DEAC 8007D2AC 3C13802F */  lui        $s3, %hi(D_802EF79E)
/* 7DEB0 8007D2B0 2673F79E */  addiu      $s3, $s3, %lo(D_802EF79E)
/* 7DEB4 8007D2B4 3C11802F */  lui        $s1, %hi(D_802EF7E0)
/* 7DEB8 8007D2B8 2631F7E0 */  addiu      $s1, $s1, %lo(D_802EF7E0)
/* 7DEBC 8007D2BC 000510C0 */  sll        $v0, $a1, 3
/* 7DEC0 8007D2C0 00451023 */  subu       $v0, $v0, $a1
/* 7DEC4 8007D2C4 00021100 */  sll        $v0, $v0, 4
/* 7DEC8 8007D2C8 00621821 */  addu       $v1, $v1, $v0
/* 7DECC 8007D2CC 000410C0 */  sll        $v0, $a0, 3
/* 7DED0 8007D2D0 00441023 */  subu       $v0, $v0, $a0
/* 7DED4 8007D2D4 00021100 */  sll        $v0, $v0, 4
/* 7DED8 8007D2D8 00623021 */  addu       $a2, $v1, $v0
/* 7DEDC 8007D2DC 00041900 */  sll        $v1, $a0, 4
/* 7DEE0 8007D2E0 3C02802D */  lui        $v0, %hi(D_802D2228)
/* 7DEE4 8007D2E4 24422228 */  addiu      $v0, $v0, %lo(D_802D2228)
/* 7DEE8 8007D2E8 00621021 */  addu       $v0, $v1, $v0
/* 7DEEC 8007D2EC 3C01803F */  lui        $at, %hi(D_803EF89C)
/* 7DEF0 8007D2F0 AC22F89C */  sw         $v0, %lo(D_803EF89C)($at)
/* 7DEF4 8007D2F4 00041080 */  sll        $v0, $a0, 2
/* 7DEF8 8007D2F8 3C05800C */  lui        $a1, %hi(D_800C6990)
/* 7DEFC 8007D2FC 00A22821 */  addu       $a1, $a1, $v0
/* 7DF00 8007D300 8CA56990 */  lw         $a1, %lo(D_800C6990)($a1)
/* 7DF04 8007D304 00641823 */  subu       $v1, $v1, $a0
/* 7DF08 8007D308 3C01802F */  lui        $at, %hi(D_802F08D0)
/* 7DF0C 8007D30C A02408D0 */  sb         $a0, %lo(D_802F08D0)($at)
/* 7DF10 8007D310 82620000 */  lb         $v0, 0x0($s3)
/* 7DF14 8007D314 00031900 */  sll        $v1, $v1, 4
/* 7DF18 8007D318 00711821 */  addu       $v1, $v1, $s1
/* 7DF1C 8007D31C 3C01803F */  lui        $at, %hi(D_803ED09C)
/* 7DF20 8007D320 AC23D09C */  sw         $v1, %lo(D_803ED09C)($at)
/* 7DF24 8007D324 3C01802D */  lui        $at, %hi(D_802D0C60)
/* 7DF28 8007D328 10520003 */  beq        $v0, $s2, .L8007D338
/* 7DF2C 8007D32C AC250C60 */   sw        $a1, %lo(D_802D0C60)($at)
/* 7DF30 8007D330 0C01E568 */  jal        func_800795A0
/* 7DF34 8007D334 00C02021 */   addu      $a0, $a2, $zero
.L8007D338:
/* 7DF38 8007D338 3C02802D */  lui        $v0, %hi(D_802D0C84)
/* 7DF3C 8007D33C 8C420C84 */  lw         $v0, %lo(D_802D0C84)($v0)
/* 7DF40 8007D340 3C01800D */  lui        $at, %hi(D_800D6188)
/* 7DF44 8007D344 D4206188 */  ldc1       $f0, %lo(D_800D6188)($at)
/* 7DF48 8007D348 00028100 */  sll        $s0, $v0, 4
/* 7DF4C 8007D34C 02028023 */  subu       $s0, $s0, $v0
/* 7DF50 8007D350 00108100 */  sll        $s0, $s0, 4
/* 7DF54 8007D354 02118021 */  addu       $s0, $s0, $s1
/* 7DF58 8007D358 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7DF5C 8007D35C F4202FF0 */  sdc1       $f0, %lo(D_802D2FF0)($at)
/* 7DF60 8007D360 0C01E3B0 */  jal        func_80078EC0
/* 7DF64 8007D364 02002021 */   addu      $a0, $s0, $zero
/* 7DF68 8007D368 0C01E3CC */  jal        func_80078F30
/* 7DF6C 8007D36C 02002021 */   addu      $a0, $s0, $zero
/* 7DF70 8007D370 0C01E3EE */  jal        func_80078FB8
/* 7DF74 8007D374 02002021 */   addu      $a0, $s0, $zero
/* 7DF78 8007D378 0C01E41C */  jal        func_80079070
/* 7DF7C 8007D37C 02002021 */   addu      $a0, $s0, $zero
/* 7DF80 8007D380 82620000 */  lb         $v0, 0x0($s3)
/* 7DF84 8007D384 10520010 */  beq        $v0, $s2, .L8007D3C8
/* 7DF88 8007D388 00002021 */   addu      $a0, $zero, $zero
/* 7DF8C 8007D38C 3C03802D */  lui        $v1, %hi(D_802D0C60)
/* 7DF90 8007D390 8C630C60 */  lw         $v1, %lo(D_802D0C60)($v1)
.L8007D394:
/* 7DF94 8007D394 D4620000 */  ldc1       $f2, 0x0($v1)
/* 7DF98 8007D398 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7DF9C 8007D39C D4202FF0 */  ldc1       $f0, %lo(D_802D2FF0)($at)
/* 7DFA0 8007D3A0 4620103C */  c.lt.d     $f2, $f0
/* 7DFA4 8007D3A4 00000000 */  nop
/* 7DFA8 8007D3A8 00000000 */  nop
/* 7DFAC 8007D3AC 45000003 */  bc1f       .L8007D3BC
/* 7DFB0 8007D3B0 24840001 */   addiu     $a0, $a0, 0x1
/* 7DFB4 8007D3B4 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7DFB8 8007D3B8 F4222FF0 */  sdc1       $f2, %lo(D_802D2FF0)($at)
.L8007D3BC:
/* 7DFBC 8007D3BC 28820010 */  slti       $v0, $a0, 0x10
/* 7DFC0 8007D3C0 1440FFF4 */  bnez       $v0, .L8007D394
/* 7DFC4 8007D3C4 24630008 */   addiu     $v1, $v1, 0x8
.L8007D3C8:
/* 7DFC8 8007D3C8 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7DFCC 8007D3CC D4226A10 */  ldc1       $f2, %lo(D_800C6A10)($at)
/* 7DFD0 8007D3D0 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7DFD4 8007D3D4 D4242FF0 */  ldc1       $f4, %lo(D_802D2FF0)($at)
/* 7DFD8 8007D3D8 3C03802D */  lui        $v1, %hi(D_802D0C84)
/* 7DFDC 8007D3DC 8C630C84 */  lw         $v1, %lo(D_802D0C84)($v1)
/* 7DFE0 8007D3E0 3C04802C */  lui        $a0, %hi(D_802C6050)
/* 7DFE4 8007D3E4 8C846050 */  lw         $a0, %lo(D_802C6050)($a0)
/* 7DFE8 8007D3E8 46241082 */  mul.d      $f2, $f2, $f4
/* 7DFEC 8007D3EC 000310C0 */  sll        $v0, $v1, 3
/* 7DFF0 8007D3F0 00431023 */  subu       $v0, $v0, $v1
/* 7DFF4 8007D3F4 00021100 */  sll        $v0, $v0, 4
/* 7DFF8 8007D3F8 00441021 */  addu       $v0, $v0, $a0
/* 7DFFC 8007D3FC D4400038 */  ldc1       $f0, 0x38($v0)
/* 7E000 8007D400 46220001 */  sub.d      $f0, $f0, $f2
/* 7E004 8007D404 46240002 */  mul.d      $f0, $f0, $f4
/* 7E008 8007D408 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7E00C 8007D40C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7E010 8007D410 8FB20018 */  lw         $s2, 0x18($sp)
/* 7E014 8007D414 8FB10014 */  lw         $s1, 0x14($sp)
/* 7E018 8007D418 8FB00010 */  lw         $s0, 0x10($sp)
/* 7E01C 8007D41C D7B80038 */  ldc1       $f24, 0x38($sp)
/* 7E020 8007D420 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 7E024 8007D424 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 7E028 8007D428 03E00008 */  jr         $ra
/* 7E02C 8007D42C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8007D430
/* 7E030 8007D430 27BDFEE8 */  addiu      $sp, $sp, -0x118
/* 7E034 8007D434 AFB00100 */  sw         $s0, 0x100($sp)
/* 7E038 8007D438 00808021 */  addu       $s0, $a0, $zero
/* 7E03C 8007D43C AFB10104 */  sw         $s1, 0x104($sp)
/* 7E040 8007D440 00A08821 */  addu       $s1, $a1, $zero
/* 7E044 8007D444 F7B40110 */  sdc1       $f20, 0x110($sp)
/* 7E048 8007D448 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7E04C 8007D44C D4340980 */  ldc1       $f20, %lo(D_802D0980)($at)
/* 7E050 8007D450 AFBF0108 */  sw         $ra, 0x108($sp)
/* 7E054 8007D454 0C01CEB4 */  jal        func_80073AD0
/* 7E058 8007D458 27A50010 */   addiu     $a1, $sp, 0x10
/* 7E05C 8007D45C 82030000 */  lb         $v1, 0x0($s0)
/* 7E060 8007D460 24020008 */  addiu      $v0, $zero, 0x8
/* 7E064 8007D464 14620003 */  bne        $v1, $v0, .L8007D474
/* 7E068 8007D468 00000000 */   nop
/* 7E06C 8007D46C 0C01ECA4 */  jal        func_8007B290
/* 7E070 8007D470 27A40010 */   addiu     $a0, $sp, 0x10
.L8007D474:
/* 7E074 8007D474 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 7E078 8007D478 D4202FF0 */  ldc1       $f0, %lo(D_802D2FF0)($at)
/* 7E07C 8007D47C 93A200A0 */  lbu        $v0, 0xA0($sp)
/* 7E080 8007D480 AFA00080 */  sw         $zero, 0x80($sp)
/* 7E084 8007D484 AFA00084 */  sw         $zero, 0x84($sp)
/* 7E088 8007D488 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7E08C 8007D48C F4200980 */  sdc1       $f0, %lo(D_802D0980)($at)
/* 7E090 8007D490 A2220000 */  sb         $v0, 0x0($s1)
/* 7E094 8007D494 2442FFFF */  addiu      $v0, $v0, -0x1
/* 7E098 8007D498 00021600 */  sll        $v0, $v0, 24
/* 7E09C 8007D49C 00021E03 */  sra        $v1, $v0, 24
/* 7E0A0 8007D4A0 2C620020 */  sltiu      $v0, $v1, 0x20
/* 7E0A4 8007D4A4 1040001D */  beqz       $v0, L8007D51C
/* 7E0A8 8007D4A8 27A50010 */   addiu     $a1, $sp, 0x10
/* 7E0AC 8007D4AC 00031080 */  sll        $v0, $v1, 2
/* 7E0B0 8007D4B0 3C01800D */  lui        $at, %hi(jtbl_800D6190_main)
/* 7E0B4 8007D4B4 00220821 */  addu       $at, $at, $v0
/* 7E0B8 8007D4B8 8C226190 */  lw         $v0, %lo(jtbl_800D6190_main)($at)
/* 7E0BC 8007D4BC 00400008 */  jr         $v0
/* 7E0C0 8007D4C0 00000000 */   nop
glabel L8007D4C4
/* 7E0C4 8007D4C4 0C01EF05 */  jal        func_8007BC14
/* 7E0C8 8007D4C8 02202021 */   addu      $a0, $s1, $zero
/* 7E0CC 8007D4CC 0801F547 */  j          L8007D51C
/* 7E0D0 8007D4D0 00000000 */   nop
glabel L8007D4D4
/* 7E0D4 8007D4D4 0C01EF1A */  jal        func_8007BC68
/* 7E0D8 8007D4D8 02202021 */   addu      $a0, $s1, $zero
/* 7E0DC 8007D4DC 0801F547 */  j          L8007D51C
/* 7E0E0 8007D4E0 00000000 */   nop
glabel L8007D4E4
/* 7E0E4 8007D4E4 0C01EF3B */  jal        func_8007BCEC
/* 7E0E8 8007D4E8 02202021 */   addu      $a0, $s1, $zero
/* 7E0EC 8007D4EC 0801F547 */  j          L8007D51C
/* 7E0F0 8007D4F0 00000000 */   nop
glabel L8007D4F4
/* 7E0F4 8007D4F4 0C01EFDC */  jal        func_8007BF70
/* 7E0F8 8007D4F8 02202021 */   addu      $a0, $s1, $zero
/* 7E0FC 8007D4FC 0801F547 */  j          L8007D51C
/* 7E100 8007D500 00000000 */   nop
glabel L8007D504
/* 7E104 8007D504 0C01F08A */  jal        func_8007C228
/* 7E108 8007D508 02202021 */   addu      $a0, $s1, $zero
/* 7E10C 8007D50C 0801F547 */  j          L8007D51C
/* 7E110 8007D510 00000000 */   nop
glabel L8007D514
/* 7E114 8007D514 0C01F100 */  jal        func_8007C400
/* 7E118 8007D518 02202021 */   addu      $a0, $s1, $zero
glabel L8007D51C
/* 7E11C 8007D51C 3C01802D */  lui        $at, %hi(D_802D0980)
/* 7E120 8007D520 F4340980 */  sdc1       $f20, %lo(D_802D0980)($at)
/* 7E124 8007D524 8FBF0108 */  lw         $ra, 0x108($sp)
/* 7E128 8007D528 8FB10104 */  lw         $s1, 0x104($sp)
/* 7E12C 8007D52C 8FB00100 */  lw         $s0, 0x100($sp)
/* 7E130 8007D530 D7B40110 */  ldc1       $f20, 0x110($sp)
/* 7E134 8007D534 03E00008 */  jr         $ra
/* 7E138 8007D538 27BD0118 */   addiu     $sp, $sp, 0x118
/* 7E13C 8007D53C 00000000 */  nop
