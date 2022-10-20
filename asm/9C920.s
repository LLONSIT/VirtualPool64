.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009BD20
/* 9C920 8009BD20 0086C82A */  slt        $t9, $a0, $a2
/* 9C924 8009BD24 1720000A */  bnez       $t9, .L8009BD50
/* 9C928 8009BD28 00000000 */   nop
/* 9C92C 8009BD2C 1086000A */  beq        $a0, $a2, .L8009BD58
/* 9C930 8009BD30 00000000 */   nop
/* 9C934 8009BD34 00A7C82A */  slt        $t9, $a1, $a3
/* 9C938 8009BD38 17200005 */  bnez       $t9, .L8009BD50
/* 9C93C 8009BD3C 00000000 */   nop
/* 9C940 8009BD40 10A70005 */  beq        $a1, $a3, .L8009BD58
/* 9C944 8009BD44 00000000 */   nop
/* 9C948 8009BD48 03E00008 */  jr         $ra
/* 9C94C 8009BD4C 24020001 */   addiu     $v0, $zero, 0x1
.L8009BD50:
/* 9C950 8009BD50 03E00008 */  jr         $ra
/* 9C954 8009BD54 00421026 */   xor       $v0, $v0, $v0
.L8009BD58:
/* 9C958 8009BD58 03E00008 */  jr         $ra
/* 9C95C 8009BD5C 24020002 */   addiu     $v0, $zero, 0x2
/* 9C960 8009BD60 0086C82B */  sltu       $t9, $a0, $a2
/* 9C964 8009BD64 1720FFFA */  bnez       $t9, .L8009BD50
/* 9C968 8009BD68 00000000 */   nop
/* 9C96C 8009BD6C 14C4FFFA */  bne        $a2, $a0, .L8009BD58
/* 9C970 8009BD70 00000000 */   nop
/* 9C974 8009BD74 00A7C82B */  sltu       $t9, $a1, $a3
/* 9C978 8009BD78 1720FFF5 */  bnez       $t9, .L8009BD50
/* 9C97C 8009BD7C 00000000 */   nop
/* 9C980 8009BD80 14E5FFF5 */  bne        $a3, $a1, .L8009BD58
/* 9C984 8009BD84 00000000 */   nop
/* 9C988 8009BD88 03E00008 */  jr         $ra
/* 9C98C 8009BD8C 24020001 */   addiu     $v0, $zero, 0x1

glabel func_8009BD90
/* 9C990 8009BD90 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9C994 8009BD94 F7AC0000 */  sdc1       $f12, 0x0($sp)
/* 9C998 8009BD98 8FA40000 */  lw         $a0, 0x0($sp)
/* 9C99C 8009BD9C 8FA50004 */  lw         $a1, 0x4($sp)
/* 9C9A0 8009BDA0 27BD0008 */  addiu      $sp, $sp, 0x8
/* 9C9A4 8009BDA4 00801821 */  addu       $v1, $a0, $zero
/* 9C9A8 8009BDA8 00042502 */  srl        $a0, $a0, 20
/* 9C9AC 8009BDAC 308407FF */  andi       $a0, $a0, 0x7FF
/* 9C9B0 8009BDB0 2C9903FF */  sltiu      $t9, $a0, 0x3FF
/* 9C9B4 8009BDB4 1720003A */  bnez       $t9, .L8009BEA0
/* 9C9B8 8009BDB8 2484FC01 */   addiu     $a0, $a0, -0x3FF
/* 9C9BC 8009BDBC 2C990040 */  sltiu      $t9, $a0, 0x40
/* 9C9C0 8009BDC0 13200034 */  beqz       $t9, .L8009BE94
/* 9C9C4 8009BDC4 00000000 */   nop
/* 9C9C8 8009BDC8 00603021 */  addu       $a2, $v1, $zero
/* 9C9CC 8009BDCC 00A03821 */  addu       $a3, $a1, $zero
/* 9C9D0 8009BDD0 00601021 */  addu       $v0, $v1, $zero
/* 9C9D4 8009BDD4 3C19000F */  lui        $t9, (0xFFFFF >> 16)
/* 9C9D8 8009BDD8 3739FFFF */  ori        $t9, $t9, (0xFFFFF & 0xFFFF)
/* 9C9DC 8009BDDC 00591024 */  and        $v0, $v0, $t9
/* 9C9E0 8009BDE0 3C190010 */  lui        $t9, (0x100000 >> 16)
/* 9C9E4 8009BDE4 00591025 */  or         $v0, $v0, $t9
/* 9C9E8 8009BDE8 2C990034 */  sltiu      $t9, $a0, 0x34
/* 9C9EC 8009BDEC 1720000D */  bnez       $t9, .L8009BE24
/* 9C9F0 8009BDF0 2484FFCC */   addiu     $a0, $a0, -0x34
/* 9C9F4 8009BDF4 1080001B */  beqz       $a0, .L8009BE64
/* 9C9F8 8009BDF8 00000000 */   nop
/* 9C9FC 8009BDFC 00801821 */  addu       $v1, $a0, $zero
/* 9CA00 8009BE00 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 9CA04 8009BE04 00042023 */  negu       $a0, $a0
/* 9CA08 8009BE08 00E02821 */  addu       $a1, $a3, $zero
/* 9CA0C 8009BE0C 00852806 */  srlv       $a1, $a1, $a0
/* 9CA10 8009BE10 00602021 */  addu       $a0, $v1, $zero
/* 9CA14 8009BE14 00821004 */  sllv       $v0, $v0, $a0
/* 9CA18 8009BE18 00451025 */  or         $v0, $v0, $a1
/* 9CA1C 8009BE1C 08026F99 */  j          .L8009BE64
/* 9CA20 8009BE20 00873804 */   sllv      $a3, $a3, $a0
.L8009BE24:
/* 9CA24 8009BE24 00042023 */  negu       $a0, $a0
/* 9CA28 8009BE28 00801821 */  addu       $v1, $a0, $zero
/* 9CA2C 8009BE2C 2C990020 */  sltiu      $t9, $a0, 0x20
/* 9CA30 8009BE30 17200005 */  bnez       $t9, .L8009BE48
/* 9CA34 8009BE34 2484FFE0 */   addiu     $a0, $a0, -0x20
/* 9CA38 8009BE38 00403821 */  addu       $a3, $v0, $zero
/* 9CA3C 8009BE3C 00421026 */  xor        $v0, $v0, $v0
/* 9CA40 8009BE40 08026F99 */  j          .L8009BE64
/* 9CA44 8009BE44 00873806 */   srlv      $a3, $a3, $a0
.L8009BE48:
/* 9CA48 8009BE48 00042023 */  negu       $a0, $a0
/* 9CA4C 8009BE4C 00402821 */  addu       $a1, $v0, $zero
/* 9CA50 8009BE50 00852804 */  sllv       $a1, $a1, $a0
/* 9CA54 8009BE54 00602021 */  addu       $a0, $v1, $zero
/* 9CA58 8009BE58 00873806 */  srlv       $a3, $a3, $a0
/* 9CA5C 8009BE5C 00E53825 */  or         $a3, $a3, $a1
/* 9CA60 8009BE60 00821006 */  srlv       $v0, $v0, $a0
.L8009BE64:
/* 9CA64 8009BE64 3C198000 */  lui        $t9, (0x80000000 >> 16)
/* 9CA68 8009BE68 0326C824 */  and        $t9, $t9, $a2
/* 9CA6C 8009BE6C 13200007 */  beqz       $t9, .L8009BE8C
/* 9CA70 8009BE70 00000000 */   nop
/* 9CA74 8009BE74 2403FFFF */  addiu      $v1, $zero, -0x1
/* 9CA78 8009BE78 00E33826 */  xor        $a3, $a3, $v1
/* 9CA7C 8009BE7C 00431026 */  xor        $v0, $v0, $v1
/* 9CA80 8009BE80 24E70001 */  addiu      $a3, $a3, 0x1
/* 9CA84 8009BE84 2CF90001 */  sltiu      $t9, $a3, 0x1
/* 9CA88 8009BE88 00591021 */  addu       $v0, $v0, $t9
.L8009BE8C:
/* 9CA8C 8009BE8C 03E00008 */  jr         $ra
/* 9CA90 8009BE90 00E01821 */   addu      $v1, $a3, $zero
.L8009BE94:
/* 9CA94 8009BE94 24030000 */  addiu      $v1, $zero, 0x0
/* 9CA98 8009BE98 03E00008 */  jr         $ra
/* 9CA9C 8009BE9C 3C028000 */   lui       $v0, (0x80000000 >> 16)
.L8009BEA0:
/* 9CAA0 8009BEA0 00421026 */  xor        $v0, $v0, $v0
/* 9CAA4 8009BEA4 03E00008 */  jr         $ra
/* 9CAA8 8009BEA8 00631826 */   xor       $v1, $v1, $v1
/* 9CAAC 8009BEAC 00000000 */  nop
