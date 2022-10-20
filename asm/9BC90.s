.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009B090
/* 9BC90 8009B090 00A6001A */  div        $zero, $a1, $a2
/* 9BC94 8009B094 14C00002 */  bnez       $a2, .L8009B0A0
/* 9BC98 8009B098 00000000 */   nop
/* 9BC9C 8009B09C 0007000D */  break      7
.L8009B0A0:
/* 9BCA0 8009B0A0 2401FFFF */  addiu      $at, $zero, -0x1
/* 9BCA4 8009B0A4 14C10004 */  bne        $a2, $at, .L8009B0B8
/* 9BCA8 8009B0A8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 9BCAC 8009B0AC 14A10002 */  bne        $a1, $at, .L8009B0B8
/* 9BCB0 8009B0B0 00000000 */   nop
/* 9BCB4 8009B0B4 0006000D */  break      6
.L8009B0B8:
/* 9BCB8 8009B0B8 00001812 */  mflo       $v1
/* 9BCBC 8009B0BC 00000000 */  nop
/* 9BCC0 8009B0C0 00000000 */  nop
/* 9BCC4 8009B0C4 00C30018 */  mult       $a2, $v1
/* 9BCC8 8009B0C8 00001012 */  mflo       $v0
/* 9BCCC 8009B0CC 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9BCD0 8009B0D0 00803821 */  addu       $a3, $a0, $zero
/* 9BCD4 8009B0D4 AFA30000 */  sw         $v1, 0x0($sp)
/* 9BCD8 8009B0D8 00A22823 */  subu       $a1, $a1, $v0
/* 9BCDC 8009B0DC 04610006 */  bgez       $v1, .L8009B0F8
/* 9BCE0 8009B0E0 AFA50004 */   sw        $a1, 0x4($sp)
/* 9BCE4 8009B0E4 18A00004 */  blez       $a1, .L8009B0F8
/* 9BCE8 8009B0E8 24620001 */   addiu     $v0, $v1, 0x1
/* 9BCEC 8009B0EC AFA20000 */  sw         $v0, 0x0($sp)
/* 9BCF0 8009B0F0 00A61023 */  subu       $v0, $a1, $a2
/* 9BCF4 8009B0F4 AFA20004 */  sw         $v0, 0x4($sp)
.L8009B0F8:
/* 9BCF8 8009B0F8 8FA20000 */  lw         $v0, 0x0($sp)
/* 9BCFC 8009B0FC 8FA30004 */  lw         $v1, 0x4($sp)
/* 9BD00 8009B100 ACE20000 */  sw         $v0, 0x0($a3)
/* 9BD04 8009B104 ACE30004 */  sw         $v1, 0x4($a3)
/* 9BD08 8009B108 00E01021 */  addu       $v0, $a3, $zero
/* 9BD0C 8009B10C 03E00008 */  jr         $ra
/* 9BD10 8009B110 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8009B114
/* 9BD14 8009B114 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9BD18 8009B118 AFB3002C */  sw         $s3, 0x2C($sp)
/* 9BD1C 8009B11C AFB20028 */  sw         $s2, 0x28($sp)
/* 9BD20 8009B120 8FB20048 */  lw         $s2, 0x48($sp)
/* 9BD24 8009B124 8FB3004C */  lw         $s3, 0x4C($sp)
/* 9BD28 8009B128 AFB40030 */  sw         $s4, 0x30($sp)
/* 9BD2C 8009B12C 0080A021 */  addu       $s4, $a0, $zero
/* 9BD30 8009B130 AFB10024 */  sw         $s1, 0x24($sp)
/* 9BD34 8009B134 AFB00020 */  sw         $s0, 0x20($sp)
/* 9BD38 8009B138 00C08021 */  addu       $s0, $a2, $zero
/* 9BD3C 8009B13C 00E08821 */  addu       $s1, $a3, $zero
/* 9BD40 8009B140 02002021 */  addu       $a0, $s0, $zero
/* 9BD44 8009B144 02202821 */  addu       $a1, $s1, $zero
/* 9BD48 8009B148 AFBF0034 */  sw         $ra, 0x34($sp)
/* 9BD4C 8009B14C 02403021 */  addu       $a2, $s2, $zero
/* 9BD50 8009B150 0C000D44 */  jal        func_80003510
/* 9BD54 8009B154 02603821 */   addu      $a3, $s3, $zero
/* 9BD58 8009B158 00403021 */  addu       $a2, $v0, $zero
/* 9BD5C 8009B15C 00603821 */  addu       $a3, $v1, $zero
/* 9BD60 8009B160 02670019 */  multu      $s3, $a3
/* 9BD64 8009B164 00001010 */  mfhi       $v0
/* 9BD68 8009B168 00001812 */  mflo       $v1
/* 9BD6C 8009B16C 00000000 */  nop
/* 9BD70 8009B170 00000000 */  nop
/* 9BD74 8009B174 02660018 */  mult       $s3, $a2
/* 9BD78 8009B178 00002012 */  mflo       $a0
/* 9BD7C 8009B17C 00000000 */  nop
/* 9BD80 8009B180 00000000 */  nop
/* 9BD84 8009B184 00F20018 */  mult       $a3, $s2
/* 9BD88 8009B188 00002812 */  mflo       $a1
/* 9BD8C 8009B18C AFA60010 */  sw         $a2, 0x10($sp)
/* 9BD90 8009B190 AFA70014 */  sw         $a3, 0x14($sp)
/* 9BD94 8009B194 00441021 */  addu       $v0, $v0, $a0
/* 9BD98 8009B198 8FA40010 */  lw         $a0, 0x10($sp)
/* 9BD9C 8009B19C 00451021 */  addu       $v0, $v0, $a1
/* 9BDA0 8009B1A0 0223282B */  sltu       $a1, $s1, $v1
/* 9BDA4 8009B1A4 02234823 */  subu       $t1, $s1, $v1
/* 9BDA8 8009B1A8 02024023 */  subu       $t0, $s0, $v0
/* 9BDAC 8009B1AC 01054023 */  subu       $t0, $t0, $a1
/* 9BDB0 8009B1B0 AFA80018 */  sw         $t0, 0x18($sp)
/* 9BDB4 8009B1B4 04810013 */  bgez       $a0, .L8009B204
/* 9BDB8 8009B1B8 AFA9001C */   sw        $t1, 0x1C($sp)
/* 9BDBC 8009B1BC 8FA20018 */  lw         $v0, 0x18($sp)
/* 9BDC0 8009B1C0 5C400006 */  bgtzl      $v0, .L8009B1DC
/* 9BDC4 8009B1C4 24E30001 */   addiu     $v1, $a3, 0x1
/* 9BDC8 8009B1C8 1440000E */  bnez       $v0, .L8009B204
/* 9BDCC 8009B1CC 00000000 */   nop
/* 9BDD0 8009B1D0 8FA2001C */  lw         $v0, 0x1C($sp)
/* 9BDD4 8009B1D4 1040000B */  beqz       $v0, .L8009B204
/* 9BDD8 8009B1D8 24E30001 */   addiu     $v1, $a3, 0x1
.L8009B1DC:
/* 9BDDC 8009B1DC 2C640001 */  sltiu      $a0, $v1, 0x1
/* 9BDE0 8009B1E0 00C41021 */  addu       $v0, $a2, $a0
/* 9BDE4 8009B1E4 AFA20010 */  sw         $v0, 0x10($sp)
/* 9BDE8 8009B1E8 AFA30014 */  sw         $v1, 0x14($sp)
/* 9BDEC 8009B1EC 0133202B */  sltu       $a0, $t1, $s3
/* 9BDF0 8009B1F0 01331823 */  subu       $v1, $t1, $s3
/* 9BDF4 8009B1F4 01121023 */  subu       $v0, $t0, $s2
/* 9BDF8 8009B1F8 00441023 */  subu       $v0, $v0, $a0
/* 9BDFC 8009B1FC AFA20018 */  sw         $v0, 0x18($sp)
/* 9BE00 8009B200 AFA3001C */  sw         $v1, 0x1C($sp)
.L8009B204:
/* 9BE04 8009B204 8FA20010 */  lw         $v0, 0x10($sp)
/* 9BE08 8009B208 8FA30014 */  lw         $v1, 0x14($sp)
/* 9BE0C 8009B20C 8FA40018 */  lw         $a0, 0x18($sp)
/* 9BE10 8009B210 8FA5001C */  lw         $a1, 0x1C($sp)
/* 9BE14 8009B214 AE820000 */  sw         $v0, 0x0($s4)
/* 9BE18 8009B218 AE830004 */  sw         $v1, 0x4($s4)
/* 9BE1C 8009B21C AE840008 */  sw         $a0, 0x8($s4)
/* 9BE20 8009B220 AE85000C */  sw         $a1, 0xC($s4)
/* 9BE24 8009B224 02801021 */  addu       $v0, $s4, $zero
/* 9BE28 8009B228 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9BE2C 8009B22C 8FB40030 */  lw         $s4, 0x30($sp)
/* 9BE30 8009B230 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9BE34 8009B234 8FB20028 */  lw         $s2, 0x28($sp)
/* 9BE38 8009B238 8FB10024 */  lw         $s1, 0x24($sp)
/* 9BE3C 8009B23C 8FB00020 */  lw         $s0, 0x20($sp)
/* 9BE40 8009B240 03E00008 */  jr         $ra
/* 9BE44 8009B244 27BD0038 */   addiu     $sp, $sp, 0x38
/* 9BE48 8009B248 00000000 */  nop
/* 9BE4C 8009B24C 00000000 */  nop
