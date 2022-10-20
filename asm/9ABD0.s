.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80099FD0
/* 9ABD0 80099FD0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 9ABD4 80099FD4 AFB20040 */  sw         $s2, 0x40($sp)
/* 9ABD8 80099FD8 00809021 */  addu       $s2, $a0, $zero
/* 9ABDC 80099FDC AFB70054 */  sw         $s7, 0x54($sp)
/* 9ABE0 80099FE0 00A0B821 */  addu       $s7, $a1, $zero
/* 9ABE4 80099FE4 AFB30044 */  sw         $s3, 0x44($sp)
/* 9ABE8 80099FE8 00009821 */  addu       $s3, $zero, $zero
/* 9ABEC 80099FEC AFB00038 */  sw         $s0, 0x38($sp)
/* 9ABF0 80099FF0 24100003 */  addiu      $s0, $zero, 0x3
/* 9ABF4 80099FF4 AFBF0058 */  sw         $ra, 0x58($sp)
/* 9ABF8 80099FF8 AFB60050 */  sw         $s6, 0x50($sp)
/* 9ABFC 80099FFC AFB5004C */  sw         $s5, 0x4C($sp)
/* 9AC00 8009A000 AFB40048 */  sw         $s4, 0x48($sp)
/* 9AC04 8009A004 0C0260E1 */  jal        func_80098384
/* 9AC08 8009A008 AFB1003C */   sw        $s1, 0x3C($sp)
/* 9AC0C 8009A00C 3C14803F */  lui        $s4, %hi(D_803F5AF0)
/* 9AC10 8009A010 26945AF0 */  addiu      $s4, $s4, %lo(D_803F5AF0)
/* 9AC14 8009A014 27B10020 */  addiu      $s1, $sp, 0x20
/* 9AC18 8009A018 27B50010 */  addiu      $s5, $sp, 0x10
.L8009A01C:
/* 9AC1C 8009A01C 0C026853 */  jal        func_8009A14C
/* 9AC20 8009A020 00002021 */   addu      $a0, $zero, $zero
/* 9AC24 8009A024 24040001 */  addiu      $a0, $zero, 0x1
/* 9AC28 8009A028 0C025114 */  jal        func_80094450
/* 9AC2C 8009A02C 02802821 */   addu      $a1, $s4, $zero
/* 9AC30 8009A030 02402021 */  addu       $a0, $s2, $zero
/* 9AC34 8009A034 02202821 */  addu       $a1, $s1, $zero
/* 9AC38 8009A038 0C000B3C */  jal        osRecvMesg
/* 9AC3C 8009A03C 24060001 */   addiu     $a2, $zero, 0x1
/* 9AC40 8009A040 00002021 */  addu       $a0, $zero, $zero
/* 9AC44 8009A044 0C025114 */  jal        func_80094450
/* 9AC48 8009A048 02802821 */   addu      $a1, $s4, $zero
/* 9AC4C 8009A04C 02402021 */  addu       $a0, $s2, $zero
/* 9AC50 8009A050 02202821 */  addu       $a1, $s1, $zero
/* 9AC54 8009A054 24060001 */  addiu      $a2, $zero, 0x1
/* 9AC58 8009A058 0C000B3C */  jal        osRecvMesg
/* 9AC5C 8009A05C 0040B021 */   addu      $s6, $v0, $zero
/* 9AC60 8009A060 27A40024 */  addiu      $a0, $sp, 0x24
/* 9AC64 8009A064 0C02687C */  jal        func_8009A1F0
/* 9AC68 8009A068 27A50010 */   addiu     $a1, $sp, 0x10
/* 9AC6C 8009A06C 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 9AC70 8009A070 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9AC74 8009A074 1840000C */  blez       $v0, .L8009A0A8
/* 9AC78 8009A078 00002021 */   addu      $a0, $zero, $zero
/* 9AC7C 8009A07C 00402821 */  addu       $a1, $v0, $zero
/* 9AC80 8009A080 02A01821 */  addu       $v1, $s5, $zero
.L8009A084:
/* 9AC84 8009A084 90620002 */  lbu        $v0, 0x2($v1)
/* 9AC88 8009A088 30420004 */  andi       $v0, $v0, 0x4
/* 9AC8C 8009A08C 54400003 */  bnel       $v0, $zero, .L8009A09C
/* 9AC90 8009A090 24840001 */   addiu     $a0, $a0, 0x1
/* 9AC94 8009A094 0802682A */  j          .L8009A0A8
/* 9AC98 8009A098 2610FFFF */   addiu     $s0, $s0, -0x1
.L8009A09C:
/* 9AC9C 8009A09C 0085102A */  slt        $v0, $a0, $a1
/* 9ACA0 8009A0A0 1440FFF8 */  bnez       $v0, .L8009A084
/* 9ACA4 8009A0A4 24630004 */   addiu     $v1, $v1, 0x4
.L8009A0A8:
/* 9ACA8 8009A0A8 3C03802D */  lui        $v1, %hi(D_802D2A54)
/* 9ACAC 8009A0AC 90632A54 */  lbu        $v1, %lo(D_802D2A54)($v1)
/* 9ACB0 8009A0B0 00831026 */  xor        $v0, $a0, $v1
/* 9ACB4 8009A0B4 0002102B */  sltu       $v0, $zero, $v0
/* 9ACB8 8009A0B8 00021023 */  negu       $v0, $v0
/* 9ACBC 8009A0BC 02028024 */  and        $s0, $s0, $v0
/* 9ACC0 8009A0C0 1E00FFD6 */  bgtz       $s0, .L8009A01C
/* 9ACC4 8009A0C4 00000000 */   nop
/* 9ACC8 8009A0C8 10600011 */  beqz       $v1, .L8009A110
/* 9ACCC 8009A0CC 00002021 */   addu      $a0, $zero, $zero
/* 9ACD0 8009A0D0 24060001 */  addiu      $a2, $zero, 0x1
/* 9ACD4 8009A0D4 00602821 */  addu       $a1, $v1, $zero
/* 9ACD8 8009A0D8 27A30010 */  addiu      $v1, $sp, 0x10
.L8009A0DC:
/* 9ACDC 8009A0DC 90620003 */  lbu        $v0, 0x3($v1)
/* 9ACE0 8009A0E0 54400008 */  bnel       $v0, $zero, .L8009A104
/* 9ACE4 8009A0E4 24840001 */   addiu     $a0, $a0, 0x1
/* 9ACE8 8009A0E8 90620002 */  lbu        $v0, 0x2($v1)
/* 9ACEC 8009A0EC 30420001 */  andi       $v0, $v0, 0x1
/* 9ACF0 8009A0F0 50400004 */  beql       $v0, $zero, .L8009A104
/* 9ACF4 8009A0F4 24840001 */   addiu     $a0, $a0, 0x1
/* 9ACF8 8009A0F8 00861004 */  sllv       $v0, $a2, $a0
/* 9ACFC 8009A0FC 02629825 */  or         $s3, $s3, $v0
/* 9AD00 8009A100 24840001 */  addiu      $a0, $a0, 0x1
.L8009A104:
/* 9AD04 8009A104 0085102A */  slt        $v0, $a0, $a1
/* 9AD08 8009A108 1440FFF4 */  bnez       $v0, .L8009A0DC
/* 9AD0C 8009A10C 24630004 */   addiu     $v1, $v1, 0x4
.L8009A110:
/* 9AD10 8009A110 0C0260FC */  jal        func_800983F0
/* 9AD14 8009A114 00000000 */   nop
/* 9AD18 8009A118 A2F30000 */  sb         $s3, 0x0($s7)
/* 9AD1C 8009A11C 02C01021 */  addu       $v0, $s6, $zero
/* 9AD20 8009A120 8FBF0058 */  lw         $ra, 0x58($sp)
/* 9AD24 8009A124 8FB70054 */  lw         $s7, 0x54($sp)
/* 9AD28 8009A128 8FB60050 */  lw         $s6, 0x50($sp)
/* 9AD2C 8009A12C 8FB5004C */  lw         $s5, 0x4C($sp)
/* 9AD30 8009A130 8FB40048 */  lw         $s4, 0x48($sp)
/* 9AD34 8009A134 8FB30044 */  lw         $s3, 0x44($sp)
/* 9AD38 8009A138 8FB20040 */  lw         $s2, 0x40($sp)
/* 9AD3C 8009A13C 8FB1003C */  lw         $s1, 0x3C($sp)
/* 9AD40 8009A140 8FB00038 */  lw         $s0, 0x38($sp)
/* 9AD44 8009A144 03E00008 */  jr         $ra
/* 9AD48 8009A148 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8009A14C
/* 9AD4C 8009A14C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9AD50 8009A150 3C05802D */  lui        $a1, %hi(D_802D2A54)
/* 9AD54 8009A154 90A52A54 */  lbu        $a1, %lo(D_802D2A54)($a1)
/* 9AD58 8009A158 3C07803F */  lui        $a3, %hi(D_803F5AF0)
/* 9AD5C 8009A15C 24E75AF0 */  addiu      $a3, $a3, %lo(D_803F5AF0)
/* 9AD60 8009A160 00003021 */  addu       $a2, $zero, $zero
/* 9AD64 8009A164 24020001 */  addiu      $v0, $zero, 0x1
/* 9AD68 8009A168 240300FF */  addiu      $v1, $zero, 0xFF
/* 9AD6C 8009A16C 3C01803F */  lui        $at, %hi(D_803F5B2C)
/* 9AD70 8009A170 AC225B2C */  sw         $v0, %lo(D_803F5B2C)($at)
/* 9AD74 8009A174 24020001 */  addiu      $v0, $zero, 0x1
/* 9AD78 8009A178 A3A20001 */  sb         $v0, 0x1($sp)
/* 9AD7C 8009A17C 24020003 */  addiu      $v0, $zero, 0x3
/* 9AD80 8009A180 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 9AD84 8009A184 A0241C18 */  sb         $a0, %lo(D_802F1C18)($at)
/* 9AD88 8009A188 A3A30000 */  sb         $v1, 0x0($sp)
/* 9AD8C 8009A18C A3A20002 */  sb         $v0, 0x2($sp)
/* 9AD90 8009A190 A3A40003 */  sb         $a0, 0x3($sp)
/* 9AD94 8009A194 A3A30004 */  sb         $v1, 0x4($sp)
/* 9AD98 8009A198 A3A30005 */  sb         $v1, 0x5($sp)
/* 9AD9C 8009A19C A3A30006 */  sb         $v1, 0x6($sp)
/* 9ADA0 8009A1A0 18A0000F */  blez       $a1, .L8009A1E0
/* 9ADA4 8009A1A4 A3A30007 */   sb        $v1, 0x7($sp)
.L8009A1A8:
/* 9ADA8 8009A1A8 8BA20000 */  lwl        $v0, 0x0($sp)
/* 9ADAC 8009A1AC 9BA20003 */  lwr        $v0, 0x3($sp)
/* 9ADB0 8009A1B0 8BA30004 */  lwl        $v1, 0x4($sp)
/* 9ADB4 8009A1B4 9BA30007 */  lwr        $v1, 0x7($sp)
/* 9ADB8 8009A1B8 A8E20000 */  swl        $v0, 0x0($a3)
/* 9ADBC 8009A1BC B8E20003 */  swr        $v0, 0x3($a3)
/* 9ADC0 8009A1C0 A8E30004 */  swl        $v1, 0x4($a3)
/* 9ADC4 8009A1C4 B8E30007 */  swr        $v1, 0x7($a3)
/* 9ADC8 8009A1C8 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 9ADCC 8009A1CC 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9ADD0 8009A1D0 24C60001 */  addiu      $a2, $a2, 0x1
/* 9ADD4 8009A1D4 00C2102A */  slt        $v0, $a2, $v0
/* 9ADD8 8009A1D8 1440FFF3 */  bnez       $v0, .L8009A1A8
/* 9ADDC 8009A1DC 24E70008 */   addiu     $a3, $a3, 0x8
.L8009A1E0:
/* 9ADE0 8009A1E0 240200FE */  addiu      $v0, $zero, 0xFE
/* 9ADE4 8009A1E4 A0E20000 */  sb         $v0, 0x0($a3)
/* 9ADE8 8009A1E8 03E00008 */  jr         $ra
/* 9ADEC 8009A1EC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8009A1F0
/* 9ADF0 8009A1F0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9ADF4 8009A1F4 00805821 */  addu       $t3, $a0, $zero
/* 9ADF8 8009A1F8 00A04821 */  addu       $t1, $a1, $zero
/* 9ADFC 8009A1FC 00005021 */  addu       $t2, $zero, $zero
/* 9AE00 8009A200 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 9AE04 8009A204 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9AE08 8009A208 3C08803F */  lui        $t0, %hi(D_803F5AF0)
/* 9AE0C 8009A20C 25085AF0 */  addiu      $t0, $t0, %lo(D_803F5AF0)
/* 9AE10 8009A210 18400021 */  blez       $v0, .L8009A298
/* 9AE14 8009A214 00003821 */   addu      $a3, $zero, $zero
/* 9AE18 8009A218 240C0001 */  addiu      $t4, $zero, 0x1
/* 9AE1C 8009A21C 24A60002 */  addiu      $a2, $a1, 0x2
.L8009A220:
/* 9AE20 8009A220 89020000 */  lwl        $v0, 0x0($t0)
/* 9AE24 8009A224 99020003 */  lwr        $v0, 0x3($t0)
/* 9AE28 8009A228 89030004 */  lwl        $v1, 0x4($t0)
/* 9AE2C 8009A22C 99030007 */  lwr        $v1, 0x7($t0)
/* 9AE30 8009A230 ABA20000 */  swl        $v0, 0x0($sp)
/* 9AE34 8009A234 BBA20003 */  swr        $v0, 0x3($sp)
/* 9AE38 8009A238 ABA30004 */  swl        $v1, 0x4($sp)
/* 9AE3C 8009A23C BBA30007 */  swr        $v1, 0x7($sp)
/* 9AE40 8009A240 93A20002 */  lbu        $v0, 0x2($sp)
/* 9AE44 8009A244 304200C0 */  andi       $v0, $v0, 0xC0
/* 9AE48 8009A248 00021102 */  srl        $v0, $v0, 4
/* 9AE4C 8009A24C 1440000A */  bnez       $v0, .L8009A278
/* 9AE50 8009A250 A0C20001 */   sb        $v0, 0x1($a2)
/* 9AE54 8009A254 93A20005 */  lbu        $v0, 0x5($sp)
/* 9AE58 8009A258 93A30004 */  lbu        $v1, 0x4($sp)
/* 9AE5C 8009A25C 00021200 */  sll        $v0, $v0, 8
/* 9AE60 8009A260 00621825 */  or         $v1, $v1, $v0
/* 9AE64 8009A264 A5230000 */  sh         $v1, 0x0($t1)
/* 9AE68 8009A268 93A30006 */  lbu        $v1, 0x6($sp)
/* 9AE6C 8009A26C 00EC1004 */  sllv       $v0, $t4, $a3
/* 9AE70 8009A270 01425025 */  or         $t2, $t2, $v0
/* 9AE74 8009A274 A0C30000 */  sb         $v1, 0x0($a2)
.L8009A278:
/* 9AE78 8009A278 24E70001 */  addiu      $a3, $a3, 0x1
/* 9AE7C 8009A27C 25080008 */  addiu      $t0, $t0, 0x8
/* 9AE80 8009A280 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 9AE84 8009A284 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 9AE88 8009A288 24C60004 */  addiu      $a2, $a2, 0x4
/* 9AE8C 8009A28C 00E2102A */  slt        $v0, $a3, $v0
/* 9AE90 8009A290 1440FFE3 */  bnez       $v0, .L8009A220
/* 9AE94 8009A294 25290004 */   addiu     $t1, $t1, 0x4
.L8009A298:
/* 9AE98 8009A298 A16A0000 */  sb         $t2, 0x0($t3)
/* 9AE9C 8009A29C 03E00008 */  jr         $ra
/* 9AEA0 8009A2A0 27BD0010 */   addiu     $sp, $sp, 0x10
/* 9AEA4 8009A2A4 00000000 */  nop
/* 9AEA8 8009A2A8 00000000 */  nop
/* 9AEAC 8009A2AC 00000000 */  nop
