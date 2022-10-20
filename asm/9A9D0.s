.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80099DD0
/* 9A9D0 80099DD0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9A9D4 80099DD4 AFB20028 */  sw         $s2, 0x28($sp)
/* 9A9D8 80099DD8 00809021 */  addu       $s2, $a0, $zero
/* 9A9DC 80099DDC AFB3002C */  sw         $s3, 0x2C($sp)
/* 9A9E0 80099DE0 00A09821 */  addu       $s3, $a1, $zero
/* 9A9E4 80099DE4 240200FA */  addiu      $v0, $zero, 0xFA
/* 9A9E8 80099DE8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 9A9EC 80099DEC AFB10024 */  sw         $s1, 0x24($sp)
/* 9A9F0 80099DF0 AFB00020 */  sw         $s0, 0x20($sp)
/* 9A9F4 80099DF4 3C01800D */  lui        $at, %hi(D_800CB3C4)
/* 9A9F8 80099DF8 A022B3C4 */  sb         $v0, %lo(D_800CB3C4)($at)
/* 9A9FC 80099DFC 0C0267AF */  jal        func_80099EBC
/* 9AA00 80099E00 02602021 */   addu      $a0, $s3, $zero
/* 9AA04 80099E04 24040001 */  addiu      $a0, $zero, 0x1
/* 9AA08 80099E08 3C11803F */  lui        $s1, %hi(D_803F5AF0)
/* 9AA0C 80099E0C 26315AF0 */  addiu      $s1, $s1, %lo(D_803F5AF0)
/* 9AA10 80099E10 0C025114 */  jal        func_80094450
/* 9AA14 80099E14 02202821 */   addu      $a1, $s1, $zero
/* 9AA18 80099E18 02402021 */  addu       $a0, $s2, $zero
/* 9AA1C 80099E1C 27B00018 */  addiu      $s0, $sp, 0x18
/* 9AA20 80099E20 02002821 */  addu       $a1, $s0, $zero
/* 9AA24 80099E24 0C000B3C */  jal        osRecvMesg
/* 9AA28 80099E28 24060001 */   addiu     $a2, $zero, 0x1
/* 9AA2C 80099E2C 00002021 */  addu       $a0, $zero, $zero
/* 9AA30 80099E30 0C025114 */  jal        func_80094450
/* 9AA34 80099E34 02202821 */   addu      $a1, $s1, $zero
/* 9AA38 80099E38 02402021 */  addu       $a0, $s2, $zero
/* 9AA3C 80099E3C 02002821 */  addu       $a1, $s0, $zero
/* 9AA40 80099E40 24060001 */  addiu      $a2, $zero, 0x1
/* 9AA44 80099E44 0C000B3C */  jal        osRecvMesg
/* 9AA48 80099E48 00408021 */   addu      $s0, $v0, $zero
/* 9AA4C 80099E4C 02602021 */  addu       $a0, $s3, $zero
/* 9AA50 80099E50 0C0267D3 */  jal        func_80099F4C
/* 9AA54 80099E54 27A50010 */   addiu     $a1, $sp, 0x10
/* 9AA58 80099E58 93A30012 */  lbu        $v1, 0x12($sp)
/* 9AA5C 80099E5C 30620001 */  andi       $v0, $v1, 0x1
/* 9AA60 80099E60 10400003 */  beqz       $v0, .L80099E70
/* 9AA64 80099E64 30620002 */   andi      $v0, $v1, 0x2
/* 9AA68 80099E68 1440000D */  bnez       $v0, .L80099EA0
/* 9AA6C 80099E6C 24020002 */   addiu     $v0, $zero, 0x2
.L80099E70:
/* 9AA70 80099E70 97A20012 */  lhu        $v0, 0x12($sp)
/* 9AA74 80099E74 24030100 */  addiu      $v1, $zero, 0x100
/* 9AA78 80099E78 304201FF */  andi       $v0, $v0, 0x1FF
/* 9AA7C 80099E7C 10430003 */  beq        $v0, $v1, .L80099E8C
/* 9AA80 80099E80 00000000 */   nop
/* 9AA84 80099E84 080267A8 */  j          .L80099EA0
/* 9AA88 80099E88 24020001 */   addiu     $v0, $zero, 0x1
.L80099E8C:
/* 9AA8C 80099E8C 93A30012 */  lbu        $v1, 0x12($sp)
/* 9AA90 80099E90 30630004 */  andi       $v1, $v1, 0x4
/* 9AA94 80099E94 14600002 */  bnez       $v1, .L80099EA0
/* 9AA98 80099E98 24020004 */   addiu     $v0, $zero, 0x4
/* 9AA9C 80099E9C 02001021 */  addu       $v0, $s0, $zero
.L80099EA0:
/* 9AAA0 80099EA0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 9AAA4 80099EA4 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9AAA8 80099EA8 8FB20028 */  lw         $s2, 0x28($sp)
/* 9AAAC 80099EAC 8FB10024 */  lw         $s1, 0x24($sp)
/* 9AAB0 80099EB0 8FB00020 */  lw         $s0, 0x20($sp)
/* 9AAB4 80099EB4 03E00008 */  jr         $ra
/* 9AAB8 80099EB8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80099EBC
/* 9AABC 80099EBC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9AAC0 80099EC0 3C03803F */  lui        $v1, %hi(D_803F5B2C)
/* 9AAC4 80099EC4 24635B2C */  addiu      $v1, $v1, %lo(D_803F5B2C)
/* 9AAC8 80099EC8 2466FFC4 */  addiu      $a2, $v1, -0x3C
/* 9AACC 80099ECC 00002821 */  addu       $a1, $zero, $zero
/* 9AAD0 80099ED0 24020001 */  addiu      $v0, $zero, 0x1
/* 9AAD4 80099ED4 AC620000 */  sw         $v0, 0x0($v1)
/* 9AAD8 80099ED8 24020001 */  addiu      $v0, $zero, 0x1
/* 9AADC 80099EDC A3A20000 */  sb         $v0, 0x0($sp)
/* 9AAE0 80099EE0 24020003 */  addiu      $v0, $zero, 0x3
/* 9AAE4 80099EE4 A3A20001 */  sb         $v0, 0x1($sp)
/* 9AAE8 80099EE8 240200FF */  addiu      $v0, $zero, 0xFF
/* 9AAEC 80099EEC 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 9AAF0 80099EF0 A0201C18 */  sb         $zero, %lo(D_802F1C18)($at)
/* 9AAF4 80099EF4 A3A00002 */  sb         $zero, 0x2($sp)
/* 9AAF8 80099EF8 A3A20003 */  sb         $v0, 0x3($sp)
/* 9AAFC 80099EFC A3A20004 */  sb         $v0, 0x4($sp)
/* 9AB00 80099F00 18800006 */  blez       $a0, .L80099F1C
/* 9AB04 80099F04 A3A20005 */   sb        $v0, 0x5($sp)
.L80099F08:
/* 9AB08 80099F08 A0C00000 */  sb         $zero, 0x0($a2)
/* 9AB0C 80099F0C 24A50001 */  addiu      $a1, $a1, 0x1
/* 9AB10 80099F10 00A4102A */  slt        $v0, $a1, $a0
/* 9AB14 80099F14 1440FFFC */  bnez       $v0, .L80099F08
/* 9AB18 80099F18 24C60001 */   addiu     $a2, $a2, 0x1
.L80099F1C:
/* 9AB1C 80099F1C 8BA20000 */  lwl        $v0, 0x0($sp)
/* 9AB20 80099F20 9BA20003 */  lwr        $v0, 0x3($sp)
/* 9AB24 80099F24 83A30004 */  lb         $v1, 0x4($sp)
/* 9AB28 80099F28 83A40005 */  lb         $a0, 0x5($sp)
/* 9AB2C 80099F2C A8C20000 */  swl        $v0, 0x0($a2)
/* 9AB30 80099F30 B8C20003 */  swr        $v0, 0x3($a2)
/* 9AB34 80099F34 A0C30004 */  sb         $v1, 0x4($a2)
/* 9AB38 80099F38 A0C40005 */  sb         $a0, 0x5($a2)
/* 9AB3C 80099F3C 240200FE */  addiu      $v0, $zero, 0xFE
/* 9AB40 80099F40 A0C20006 */  sb         $v0, 0x6($a2)
/* 9AB44 80099F44 03E00008 */  jr         $ra
/* 9AB48 80099F48 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80099F4C
/* 9AB4C 80099F4C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 9AB50 80099F50 00A03821 */  addu       $a3, $a1, $zero
/* 9AB54 80099F54 3C06803F */  lui        $a2, %hi(D_803F5AF0)
/* 9AB58 80099F58 24C65AF0 */  addiu      $a2, $a2, %lo(D_803F5AF0)
/* 9AB5C 80099F5C 18800005 */  blez       $a0, .L80099F74
/* 9AB60 80099F60 00001821 */   addu      $v1, $zero, $zero
.L80099F64:
/* 9AB64 80099F64 24630001 */  addiu      $v1, $v1, 0x1
/* 9AB68 80099F68 0064102A */  slt        $v0, $v1, $a0
/* 9AB6C 80099F6C 1440FFFD */  bnez       $v0, .L80099F64
/* 9AB70 80099F70 24C60001 */   addiu     $a2, $a2, 0x1
.L80099F74:
/* 9AB74 80099F74 88C20000 */  lwl        $v0, 0x0($a2)
/* 9AB78 80099F78 98C20003 */  lwr        $v0, 0x3($a2)
/* 9AB7C 80099F7C 80C30004 */  lb         $v1, 0x4($a2)
/* 9AB80 80099F80 80C40005 */  lb         $a0, 0x5($a2)
/* 9AB84 80099F84 ABA20000 */  swl        $v0, 0x0($sp)
/* 9AB88 80099F88 BBA20003 */  swr        $v0, 0x3($sp)
/* 9AB8C 80099F8C A3A30004 */  sb         $v1, 0x4($sp)
/* 9AB90 80099F90 A3A40005 */  sb         $a0, 0x5($sp)
/* 9AB94 80099F94 93A20001 */  lbu        $v0, 0x1($sp)
/* 9AB98 80099F98 304200C0 */  andi       $v0, $v0, 0xC0
/* 9AB9C 80099F9C 00021102 */  srl        $v0, $v0, 4
/* 9ABA0 80099FA0 14400008 */  bnez       $v0, .L80099FC4
/* 9ABA4 80099FA4 A0E20003 */   sb        $v0, 0x3($a3)
/* 9ABA8 80099FA8 93A20004 */  lbu        $v0, 0x4($sp)
/* 9ABAC 80099FAC 93A30003 */  lbu        $v1, 0x3($sp)
/* 9ABB0 80099FB0 00021200 */  sll        $v0, $v0, 8
/* 9ABB4 80099FB4 00621825 */  or         $v1, $v1, $v0
/* 9ABB8 80099FB8 A4E30000 */  sh         $v1, 0x0($a3)
/* 9ABBC 80099FBC 93A20005 */  lbu        $v0, 0x5($sp)
/* 9ABC0 80099FC0 A0E20002 */  sb         $v0, 0x2($a3)
.L80099FC4:
/* 9ABC4 80099FC4 03E00008 */  jr         $ra
/* 9ABC8 80099FC8 27BD0010 */   addiu     $sp, $sp, 0x10
/* 9ABCC 80099FCC 00000000 */  nop
