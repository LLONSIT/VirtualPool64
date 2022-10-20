.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009BEB0
/* 9CAB0 8009BEB0 00A01821 */  addu       $v1, $a1, $zero
/* 9CAB4 8009BEB4 00801021 */  addu       $v0, $a0, $zero
/* 9CAB8 8009BEB8 00852025 */  or         $a0, $a0, $a1
/* 9CABC 8009BEBC 14800007 */  bnez       $a0, .L8009BEDC
/* 9CAC0 8009BEC0 00000000 */   nop
/* 9CAC4 8009BEC4 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9CAC8 8009BEC8 AFA20000 */  sw         $v0, 0x0($sp)
/* 9CACC 8009BECC AFA30004 */  sw         $v1, 0x4($sp)
/* 9CAD0 8009BED0 D7A00000 */  ldc1       $f0, 0x0($sp)
/* 9CAD4 8009BED4 03E00008 */  jr         $ra
/* 9CAD8 8009BED8 27BD0008 */   addiu     $sp, $sp, 0x8
.L8009BEDC:
/* 9CADC 8009BEDC 00C63026 */  xor        $a2, $a2, $a2
/* 9CAE0 8009BEE0 3C048000 */  lui        $a0, (0x80000000 >> 16)
/* 9CAE4 8009BEE4 0082C824 */  and        $t9, $a0, $v0
/* 9CAE8 8009BEE8 13200008 */  beqz       $t9, .L8009BF0C
/* 9CAEC 8009BEEC 00000000 */   nop
/* 9CAF0 8009BEF0 2407FFFF */  addiu      $a3, $zero, -0x1
/* 9CAF4 8009BEF4 00671826 */  xor        $v1, $v1, $a3
/* 9CAF8 8009BEF8 00471026 */  xor        $v0, $v0, $a3
/* 9CAFC 8009BEFC 24630001 */  addiu      $v1, $v1, 0x1
/* 9CB00 8009BF00 2C790001 */  sltiu      $t9, $v1, 0x1
/* 9CB04 8009BF04 00591021 */  addu       $v0, $v0, $t9
/* 9CB08 8009BF08 00803021 */  addu       $a2, $a0, $zero
.L8009BF0C:
/* 9CB0C 8009BF0C 00842026 */  xor        $a0, $a0, $a0
/* 9CB10 8009BF10 3C19FFE0 */  lui        $t9, (0xFFE00000 >> 16)
/* 9CB14 8009BF14 0322C824 */  and        $t9, $t9, $v0
/* 9CB18 8009BF18 1320000C */  beqz       $t9, .L8009BF4C
/* 9CB1C 8009BF1C 00000000 */   nop
.L8009BF20:
/* 9CB20 8009BF20 0002CFC0 */  sll        $t9, $v0, 31
/* 9CB24 8009BF24 00031842 */  srl        $v1, $v1, 1
/* 9CB28 8009BF28 00791825 */  or         $v1, $v1, $t9
/* 9CB2C 8009BF2C 00021042 */  srl        $v0, $v0, 1
/* 9CB30 8009BF30 24840001 */  addiu      $a0, $a0, 0x1
/* 9CB34 8009BF34 3C19FFE0 */  lui        $t9, (0xFFE00000 >> 16)
/* 9CB38 8009BF38 0322C824 */  and        $t9, $t9, $v0
/* 9CB3C 8009BF3C 1720FFF8 */  bnez       $t9, .L8009BF20
/* 9CB40 8009BF40 00000000 */   nop
/* 9CB44 8009BF44 08026FDD */  j          .L8009BF74
/* 9CB48 8009BF48 00000000 */   nop
.L8009BF4C:
/* 9CB4C 8009BF4C 3C190010 */  lui        $t9, (0x100000 >> 16)
/* 9CB50 8009BF50 0322C824 */  and        $t9, $t9, $v0
/* 9CB54 8009BF54 17200007 */  bnez       $t9, .L8009BF74
/* 9CB58 8009BF58 00000000 */   nop
/* 9CB5C 8009BF5C 0003CFC2 */  srl        $t9, $v1, 31
/* 9CB60 8009BF60 00021040 */  sll        $v0, $v0, 1
/* 9CB64 8009BF64 00591025 */  or         $v0, $v0, $t9
/* 9CB68 8009BF68 00031840 */  sll        $v1, $v1, 1
/* 9CB6C 8009BF6C 08026FD3 */  j          .L8009BF4C
/* 9CB70 8009BF70 2484FFFF */   addiu     $a0, $a0, -0x1
.L8009BF74:
/* 9CB74 8009BF74 3C19000F */  lui        $t9, (0xFFFFF >> 16)
/* 9CB78 8009BF78 3739FFFF */  ori        $t9, $t9, (0xFFFFF & 0xFFFF)
/* 9CB7C 8009BF7C 00591024 */  and        $v0, $v0, $t9
/* 9CB80 8009BF80 00461025 */  or         $v0, $v0, $a2
/* 9CB84 8009BF84 24840433 */  addiu      $a0, $a0, 0x433
/* 9CB88 8009BF88 00042500 */  sll        $a0, $a0, 20
/* 9CB8C 8009BF8C 00441025 */  or         $v0, $v0, $a0
/* 9CB90 8009BF90 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 9CB94 8009BF94 AFA20000 */  sw         $v0, 0x0($sp)
/* 9CB98 8009BF98 AFA30004 */  sw         $v1, 0x4($sp)
/* 9CB9C 8009BF9C D7A00000 */  ldc1       $f0, 0x0($sp)
/* 9CBA0 8009BFA0 03E00008 */  jr         $ra
/* 9CBA4 8009BFA4 27BD0008 */   addiu     $sp, $sp, 0x8
/* 9CBA8 8009BFA8 00000000 */  nop
/* 9CBAC 8009BFAC 00000000 */  nop
