.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000DB40
/* E740 8000DB40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E744 8000DB44 AFBF0010 */  sw         $ra, 0x10($sp)
/* E748 8000DB48 24020002 */  addiu      $v0, $zero, 0x2
/* E74C 8000DB4C 10820017 */  beq        $a0, $v0, .L8000DBAC
/* E750 8000DB50 00001821 */   addu      $v1, $zero, $zero
/* E754 8000DB54 28820003 */  slti       $v0, $a0, 0x3
/* E758 8000DB58 10400005 */  beqz       $v0, .L8000DB70
/* E75C 8000DB5C 24020001 */   addiu     $v0, $zero, 0x1
/* E760 8000DB60 10820008 */  beq        $a0, $v0, .L8000DB84
/* E764 8000DB64 00052040 */   sll       $a0, $a1, 1
/* E768 8000DB68 080036FF */  j          .L8000DBFC
/* E76C 8000DB6C 00000000 */   nop
.L8000DB70:
/* E770 8000DB70 24020003 */  addiu      $v0, $zero, 0x3
/* E774 8000DB74 10820018 */  beq        $a0, $v0, .L8000DBD8
/* E778 8000DB78 00052040 */   sll       $a0, $a1, 1
/* E77C 8000DB7C 080036FF */  j          .L8000DBFC
/* E780 8000DB80 00000000 */   nop
.L8000DB84:
/* E784 8000DB84 00852021 */  addu       $a0, $a0, $a1
/* E788 8000DB88 00042080 */  sll        $a0, $a0, 2
/* E78C 8000DB8C 00852021 */  addu       $a0, $a0, $a1
/* E790 8000DB90 000420C0 */  sll        $a0, $a0, 3
/* E794 8000DB94 3C02802A */  lui        $v0, %hi(D_8029E370)
/* E798 8000DB98 2442E370 */  addiu      $v0, $v0, %lo(D_8029E370)
/* E79C 8000DB9C 0C001341 */  jal        func_80004D04
/* E7A0 8000DBA0 00822021 */   addu      $a0, $a0, $v0
/* E7A4 8000DBA4 080036FF */  j          .L8000DBFC
/* E7A8 8000DBA8 00401821 */   addu      $v1, $v0, $zero
.L8000DBAC:
/* E7AC 8000DBAC 00052040 */  sll        $a0, $a1, 1
/* E7B0 8000DBB0 00852021 */  addu       $a0, $a0, $a1
/* E7B4 8000DBB4 00042080 */  sll        $a0, $a0, 2
/* E7B8 8000DBB8 00852021 */  addu       $a0, $a0, $a1
/* E7BC 8000DBBC 000420C0 */  sll        $a0, $a0, 3
/* E7C0 8000DBC0 3C02802A */  lui        $v0, %hi(D_8029E370)
/* E7C4 8000DBC4 2442E370 */  addiu      $v0, $v0, %lo(D_8029E370)
/* E7C8 8000DBC8 0C001354 */  jal        func_80004D50
/* E7CC 8000DBCC 00822021 */   addu      $a0, $a0, $v0
/* E7D0 8000DBD0 080036FF */  j          .L8000DBFC
/* E7D4 8000DBD4 00401821 */   addu      $v1, $v0, $zero
.L8000DBD8:
/* E7D8 8000DBD8 00852021 */  addu       $a0, $a0, $a1
/* E7DC 8000DBDC 00042080 */  sll        $a0, $a0, 2
/* E7E0 8000DBE0 00852021 */  addu       $a0, $a0, $a1
/* E7E4 8000DBE4 000420C0 */  sll        $a0, $a0, 3
/* E7E8 8000DBE8 3C02802A */  lui        $v0, %hi(D_8029E370)
/* E7EC 8000DBEC 2442E370 */  addiu      $v0, $v0, %lo(D_8029E370)
/* E7F0 8000DBF0 0C001362 */  jal        func_80004D88
/* E7F4 8000DBF4 00822021 */   addu      $a0, $a0, $v0
/* E7F8 8000DBF8 00401821 */  addu       $v1, $v0, $zero
.L8000DBFC:
/* E7FC 8000DBFC 8FBF0010 */  lw         $ra, 0x10($sp)
/* E800 8000DC00 00601021 */  addu       $v0, $v1, $zero
/* E804 8000DC04 03E00008 */  jr         $ra
/* E808 8000DC08 27BD0018 */   addiu     $sp, $sp, 0x18
/* E80C 8000DC0C 00000000 */  nop
