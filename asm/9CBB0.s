.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_8009BFB0
/* 9CBB0 8009BFB0 09000419 */  j          func_84001064
/* 9CBB4 8009BFB4 20010FC0 */   addi      $at, $zero, 0xFC0
/* 9CBB8 8009BFB8 8C220010 */  lw         $v0, 0x10($at)
/* 9CBBC 8009BFBC 20030F7F */  addi       $v1, $zero, 0xF7F
/* 9CBC0 8009BFC0 20071080 */  addi       $a3, $zero, 0x1080
/* 9CBC4 8009BFC4 40870000 */  mtc0       $a3, $0
/* 9CBC8 8009BFC8 40820800 */  mtc0       $v0, $1
/* 9CBCC 8009BFCC 40831000 */  mtc0       $v1, $2
.L8009BFD0:
/* 9CBD0 8009BFD0 40043000 */  mfc0       $a0, $6
/* 9CBD4 8009BFD4 1480FFFE */  bnez       $a0, .L8009BFD0
/* 9CBD8 8009BFD8 00000000 */   nop
/* 9CBDC 8009BFDC 0D00040F */  jal        func_8400103C
/* 9CBE0 8009BFE0 00000000 */   nop
/* 9CBE4 8009BFE4 00E00008 */  jr         $a3
/* 9CBE8 8009BFE8 40803800 */   mtc0      $zero, $7
.L8009BFEC:
/* 9CBEC 8009BFEC 40082000 */  mfc0       $t0, $4
/* 9CBF0 8009BFF0 31080080 */  andi       $t0, $t0, 0x80
/* 9CBF4 8009BFF4 15000002 */  bnez       $t0, .L8009C000
/* 9CBF8 8009BFF8 00000000 */   nop
/* 9CBFC 8009BFFC 03E00008 */  jr         $ra
.L8009C000:
/* 9CC00 8009C000 40803800 */   mtc0      $zero, $7
/* 9CC04 8009C004 34085200 */  ori        $t0, $zero, 0x5200
/* 9CC08 8009C008 40882000 */  mtc0       $t0, $4
/* 9CC0C 8009C00C 0000000D */  break      0
/* 9CC10 8009C010 00000000 */  nop
/* 9CC14 8009C014 8C220004 */  lw         $v0, 0x4($at)
/* 9CC18 8009C018 30420002 */  andi       $v0, $v0, 0x2
/* 9CC1C 8009C01C 10400007 */  beqz       $v0, .L8009C03C
/* 9CC20 8009C020 00000000 */   nop
/* 9CC24 8009C024 0D00040F */  jal        func_8400103C
/* 9CC28 8009C028 00000000 */   nop
/* 9CC2C 8009C02C 40025800 */  mfc0       $v0, $11
/* 9CC30 8009C030 30420100 */  andi       $v0, $v0, 0x100
/* 9CC34 8009C034 1C40FFED */  bgtz       $v0, .L8009BFEC
/* 9CC38 8009C038 00000000 */   nop
.L8009C03C:
/* 9CC3C 8009C03C 8C220018 */  lw         $v0, 0x18($at)
/* 9CC40 8009C040 8C23001C */  lw         $v1, 0x1C($at)
/* 9CC44 8009C044 2063FFFF */  addi       $v1, $v1, -0x1
.L8009C048:
/* 9CC48 8009C048 401E2800 */  mfc0       $fp, $5
/* 9CC4C 8009C04C 17C0FFFE */  bnez       $fp, .L8009C048
/* 9CC50 8009C050 00000000 */   nop
/* 9CC54 8009C054 40800000 */  mtc0       $zero, $0
/* 9CC58 8009C058 40820800 */  mtc0       $v0, $1
/* 9CC5C 8009C05C 40831000 */  mtc0       $v1, $2
.L8009C060:
/* 9CC60 8009C060 40043000 */  mfc0       $a0, $6
.L8009C064:
/* 9CC64 8009C064 1480FFFE */  bnez       $a0, .L8009C060
/* 9CC68 8009C068 00000000 */   nop
/* 9CC6C 8009C06C 0D00040F */  jal        func_8400103C
/* 9CC70 8009C070 00000000 */   nop
/* 9CC74 8009C074 09000402 */  j          func_84001008
/* 9CC78 8009C078 00000000 */   nop
/* 9CC7C 8009C07C 00000000 */  nop
D_8009C080:
/* 9CC80 8009C080 090005CC */  j          func_84001730
/* 9CC84 8009C084 201D0110 */   addi      $sp, $zero, 0x110
/* 9CC88 8009C088 0D0007F5 */  jal        func_84001FD4
/* 9CC8C 8009C08C 0016A020 */   add       $s4, $zero, $s6
/* 9CC90 8009C090 842200B8 */  lh         $v0, 0xB8($at)
/* 9CC94 8009C094 00400008 */  jr         $v0
/* 9CC98 8009C098 001915C2 */   srl       $v0, $t9, 23
/* 9CC9C 8009C09C 40022000 */  mfc0       $v0, $4
/* 9CCA0 8009C0A0 30420080 */  andi       $v0, $v0, 0x80
/* 9CCA4 8009C0A4 14400006 */  bnez       $v0, .L8009C0C0
/* 9CCA8 8009C0A8 84150026 */   lh        $s5, 0x26($zero)
/* 9CCAC 8009C0AC 179BFFED */  bne        $gp, $k1, .L8009C064
/* 9CCB0 8009C0B0 8F790000 */   lw        $t9, 0x0($k1)
/* 9CCB4 8009C0B4 09000432 */  j          func_840010C8
/* 9CCB8 8009C0B8 841F0104 */   lh        $ra, 0x104($zero)
/* 9CCBC 8009C0BC 841500B6 */  lh         $s5, 0xB6($zero)
.L8009C0C0:
/* 9CCC0 8009C0C0 0900043A */  j          func_840010E8
/* 9CCC4 8009C0C4 341E0020 */   ori       $fp, $zero, 0x20
/* 9CCC8 8009C0C8 201C0AE0 */  addi       $gp, $zero, 0xAE0
/* 9CCCC 8009C0CC 201409A0 */  addi       $s4, $zero, 0x9A0
/* 9CCD0 8009C0D0 001A9820 */  add        $s3, $zero, $k0
/* 9CCD4 8009C0D4 235A0140 */  addi       $k0, $k0, 0x140
/* 9CCD8 8009C0D8 2012013F */  addi       $s2, $zero, 0x13F
/* 9CCDC 8009C0DC 090007F5 */  j          func_84001FD4
/* 9CCE0 8009C0E0 201B09A0 */   addi      $k1, $zero, 0x9A0
/* 9CCE4 8009C0E4 001FA820 */  add        $s5, $zero, $ra
/* 9CCE8 8009C0E8 8FD30000 */  lw         $s3, 0x0($fp)
/* 9CCEC 8009C0EC 87D20004 */  lh         $s2, 0x4($fp)
/* 9CCF0 8009C0F0 0D0007F5 */  jal        func_84001FD4
/* 9CCF4 8009C0F4 87D40006 */   lh        $s4, 0x6($fp)
/* 9CCF8 8009C0F8 0D0007F1 */  jal        func_84001FC4
/* 9CCFC 8009C0FC 00000000 */   nop
/* 9CD00 8009C100 02A00008 */  jr         $s5
/* 9CD04 8009C104 00136582 */   srl       $t4, $s3, 22
/* 9CD08 8009C108 318C003C */  andi       $t4, $t4, 0x3C
/* 9CD0C 8009C10C 8D8C0160 */  lw         $t4, 0x160($t4)
/* 9CD10 8009C110 00139A00 */  sll        $s3, $s3, 8
/* 9CD14 8009C114 00139A02 */  srl        $s3, $s3, 8
/* 9CD18 8009C118 03E00008 */  jr         $ra
/* 9CD1C 8009C11C 026C9820 */   add       $s3, $s3, $t4
/* 9CD20 8009C120 001FA820 */  add        $s5, $zero, $ra
/* 9CD24 8009C124 8FB30018 */  lw         $s3, 0x18($sp)
/* 9CD28 8009C128 22F2F320 */  addi       $s2, $s7, -0xCE0
/* 9CD2C 8009C12C 8FB70044 */  lw         $s7, 0x44($sp)
/* 9CD30 8009C130 1A40001A */  blez       $s2, .L8009C19C
/* 9CD34 8009C134 0272A020 */   add       $s4, $s3, $s2
/* 9CD38 8009C138 02F4A022 */  sub        $s4, $s7, $s4
/* 9CD3C 8009C13C 06810008 */  bgez       $s4, .L8009C160
.L8009C140:
/* 9CD40 8009C140 40145800 */   mfc0      $s4, $11
/* 9CD44 8009C144 32940400 */  andi       $s4, $s4, 0x400
/* 9CD48 8009C148 1680FFFD */  bnez       $s4, .L8009C140
.L8009C14C:
/* 9CD4C 8009C14C 40175000 */   mfc0      $s7, $10
/* 9CD50 8009C150 8FB30040 */  lw         $s3, 0x40($sp)
/* 9CD54 8009C154 12F3FFFD */  beq        $s7, $s3, .L8009C14C
/* 9CD58 8009C158 00000000 */   nop
/* 9CD5C 8009C15C 40934000 */  mtc0       $s3, $8
.L8009C160:
/* 9CD60 8009C160 40175000 */  mfc0       $s7, $10
/* 9CD64 8009C164 0277A022 */  sub        $s4, $s3, $s7
/* 9CD68 8009C168 06810004 */  bgez       $s4, .L8009C17C
/* 9CD6C 8009C16C 0272A020 */   add       $s4, $s3, $s2
/* 9CD70 8009C170 0297A022 */  sub        $s4, $s4, $s7
/* 9CD74 8009C174 0681FFFA */  bgez       $s4, .L8009C160
/* 9CD78 8009C178 00000000 */   nop
.L8009C17C:
/* 9CD7C 8009C17C 0272B820 */  add        $s7, $s3, $s2
/* 9CD80 8009C180 2252FFFF */  addi       $s2, $s2, -0x1
/* 9CD84 8009C184 20140CE0 */  addi       $s4, $zero, 0xCE0
/* 9CD88 8009C188 0D0007F6 */  jal        func_84001FD8
/* 9CD8C 8009C18C 20110001 */   addi      $s1, $zero, 0x1
/* 9CD90 8009C190 0D0007F1 */  jal        func_84001FC4
/* 9CD94 8009C194 AFB70018 */   sw        $s7, 0x18($sp)
/* 9CD98 8009C198 40974800 */  mtc0       $s7, $9
.L8009C19C:
/* 9CD9C 8009C19C 02A00008 */  jr         $s5
/* 9CDA0 8009C1A0 20170CE0 */   addi      $s7, $zero, 0xCE0
/* 9CDA4 8009C1A4 304200FE */  andi       $v0, $v0, 0xFE
/* 9CDA8 8009C1A8 84420076 */  lh         $v0, 0x76($v0)
/* 9CDAC 8009C1AC 00400008 */  jr         $v0
/* 9CDB0 8009C1B0 9361FFFF */   lbu       $at, -0x1($k1)
/* 9CDB4 8009C1B4 841800BA */  lh         $t8, 0xBA($zero)
/* 9CDB8 8009C1B8 841F0396 */  lh         $ra, 0x396($zero)
/* 9CDBC 8009C1BC 9361FFFD */  lbu        $at, -0x3($k1)
/* 9CDC0 8009C1C0 9362FFFE */  lbu        $v0, -0x2($k1)
/* 9CDC4 8009C1C4 9363FFFF */  lbu        $v1, -0x1($k1)
/* 9CDC8 8009C1C8 9421031E */  lhu        $at, 0x31E($at)
/* 9CDCC 8009C1CC 9442031E */  lhu        $v0, 0x31E($v0)
/* 9CDD0 8009C1D0 9463031E */  lhu        $v1, 0x31E($v1)
/* 9CDD4 8009C1D4 03E00008 */  jr         $ra
/* 9CDD8 8009C1D8 20240000 */   addi      $a0, $at, 0x0
/* 9CDDC 8009C1DC 0D00046E */  jal        func_840011B8
