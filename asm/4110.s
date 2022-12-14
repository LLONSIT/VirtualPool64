.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80003510
/* 4110 80003510 3C088000 */  lui        $t0, (0x80000000 >> 16)
/* 4114 80003514 00801821 */  addu       $v1, $a0, $zero
/* 4118 80003518 00661826 */  xor        $v1, $v1, $a2
/* 411C 8000351C 0104C824 */  and        $t9, $t0, $a0
/* 4120 80003520 13200007 */  beqz       $t9, .L80003540
/* 4124 80003524 00000000 */   nop
/* 4128 80003528 2409FFFF */  addiu      $t1, $zero, -0x1
/* 412C 8000352C 00A92826 */  xor        $a1, $a1, $t1
/* 4130 80003530 00892026 */  xor        $a0, $a0, $t1
/* 4134 80003534 24A50001 */  addiu      $a1, $a1, 0x1
/* 4138 80003538 2CB90001 */  sltiu      $t9, $a1, 0x1
/* 413C 8000353C 00992021 */  addu       $a0, $a0, $t9
.L80003540:
/* 4140 80003540 0106C824 */  and        $t9, $t0, $a2
/* 4144 80003544 13200007 */  beqz       $t9, .L80003564
/* 4148 80003548 00000000 */   nop
/* 414C 8000354C 2409FFFF */  addiu      $t1, $zero, -0x1
/* 4150 80003550 00E93826 */  xor        $a3, $a3, $t1
/* 4154 80003554 00C93026 */  xor        $a2, $a2, $t1
/* 4158 80003558 24E70001 */  addiu      $a3, $a3, 0x1
/* 415C 8000355C 2CF90001 */  sltiu      $t9, $a3, 0x1
/* 4160 80003560 00D93021 */  addu       $a2, $a2, $t9
.L80003564:
/* 4164 80003564 00681824 */  and        $v1, $v1, $t0
/* 4168 80003568 10600045 */  beqz       $v1, func_80003680
/* 416C 8000356C 00000000 */   nop
/* 4170 80003570 14C00006 */  bnez       $a2, .L8000358C
/* 4174 80003574 00000000 */   nop
/* 4178 80003578 03E06821 */  addu       $t5, $ra, $zero
/* 417C 8000357C 0C000D11 */  jal        func_80003444
/* 4180 80003580 00000000 */   nop
/* 4184 80003584 08000D67 */  j          .L8000359C
/* 4188 80003588 01A0F821 */   addu      $ra, $t5, $zero
.L8000358C:
/* 418C 8000358C 03E06821 */  addu       $t5, $ra, $zero
/* 4190 80003590 0C000CD2 */  jal        func_80003348
/* 4194 80003594 00000000 */   nop
/* 4198 80003598 01A0F821 */  addu       $ra, $t5, $zero
.L8000359C:
/* 419C 8000359C 2407FFFF */  addiu      $a3, $zero, -0x1
/* 41A0 800035A0 00671826 */  xor        $v1, $v1, $a3
/* 41A4 800035A4 00471026 */  xor        $v0, $v0, $a3
/* 41A8 800035A8 24630001 */  addiu      $v1, $v1, 0x1
/* 41AC 800035AC 2C790001 */  sltiu      $t9, $v1, 0x1
/* 41B0 800035B0 03E00008 */  jr         $ra
/* 41B4 800035B4 00591021 */   addu      $v0, $v0, $t9
/* 41B8 800035B8 00000000 */  nop
/* 41BC 800035BC 00000000 */  nop
/* 41C0 800035C0 3C088000 */  lui        $t0, (0x80000000 >> 16)
/* 41C4 800035C4 00801821 */  addu       $v1, $a0, $zero
/* 41C8 800035C8 0104C824 */  and        $t9, $t0, $a0
/* 41CC 800035CC 13200007 */  beqz       $t9, .L800035EC
/* 41D0 800035D0 00000000 */   nop
/* 41D4 800035D4 2409FFFF */  addiu      $t1, $zero, -0x1
/* 41D8 800035D8 00A92826 */  xor        $a1, $a1, $t1
/* 41DC 800035DC 00892026 */  xor        $a0, $a0, $t1
/* 41E0 800035E0 24A50001 */  addiu      $a1, $a1, 0x1
/* 41E4 800035E4 2CB90001 */  sltiu      $t9, $a1, 0x1
/* 41E8 800035E8 00992021 */  addu       $a0, $a0, $t9
.L800035EC:
/* 41EC 800035EC 0106C824 */  and        $t9, $t0, $a2
/* 41F0 800035F0 13200007 */  beqz       $t9, .L80003610
/* 41F4 800035F4 00000000 */   nop
/* 41F8 800035F8 2409FFFF */  addiu      $t1, $zero, -0x1
/* 41FC 800035FC 00E93826 */  xor        $a3, $a3, $t1
/* 4200 80003600 00C93026 */  xor        $a2, $a2, $t1
/* 4204 80003604 24E70001 */  addiu      $a3, $a3, 0x1
/* 4208 80003608 2CF90001 */  sltiu      $t9, $a3, 0x1
/* 420C 8000360C 00D93021 */  addu       $a2, $a2, $t9
.L80003610:
/* 4210 80003610 00681824 */  and        $v1, $v1, $t0
/* 4214 80003614 10600022 */  beqz       $v1, .L800036A0
/* 4218 80003618 00000000 */   nop
/* 421C 8000361C 14C00008 */  bnez       $a2, .L80003640
/* 4220 80003620 00000000 */   nop
/* 4224 80003624 03E06821 */  addu       $t5, $ra, $zero
/* 4228 80003628 0C000D11 */  jal        func_80003444
/* 422C 8000362C 00000000 */   nop
/* 4230 80003630 01A0F821 */  addu       $ra, $t5, $zero
/* 4234 80003634 01201821 */  addu       $v1, $t1, $zero
/* 4238 80003638 08000D96 */  j          .L80003658
/* 423C 8000363C 00421026 */   xor       $v0, $v0, $v0
.L80003640:
/* 4240 80003640 03E06821 */  addu       $t5, $ra, $zero
/* 4244 80003644 0C000CD2 */  jal        func_80003348
/* 4248 80003648 00000000 */   nop
/* 424C 8000364C 01A0F821 */  addu       $ra, $t5, $zero
/* 4250 80003650 00A01821 */  addu       $v1, $a1, $zero
/* 4254 80003654 00801021 */  addu       $v0, $a0, $zero
.L80003658:
/* 4258 80003658 2407FFFF */  addiu      $a3, $zero, -0x1
/* 425C 8000365C 00671826 */  xor        $v1, $v1, $a3
/* 4260 80003660 00471026 */  xor        $v0, $v0, $a3
/* 4264 80003664 24630001 */  addiu      $v1, $v1, 0x1
/* 4268 80003668 2C790001 */  sltiu      $t9, $v1, 0x1
/* 426C 8000366C 03E00008 */  jr         $ra
/* 4270 80003670 00591021 */   addu      $v0, $v0, $t9
/* 4274 80003674 00000000 */  nop
/* 4278 80003678 00000000 */  nop
/* 427C 8000367C 00000000 */  nop

glabel func_80003680
/* 4280 80003680 14C00003 */  bnez       $a2, .L80003690
/* 4284 80003684 00000000 */   nop
/* 4288 80003688 08000D11 */  j          func_80003444
/* 428C 8000368C 00000000 */   nop
.L80003690:
/* 4290 80003690 08000CD2 */  j          func_80003348
/* 4294 80003694 00000000 */   nop
/* 4298 80003698 00000000 */  nop
/* 429C 8000369C 00000000 */  nop
glabel .L800036A0
/* 42A0 800036A0 14C00008 */  bnez       $a2, .L800036C4
/* 42A4 800036A4 00000000 */   nop
/* 42A8 800036A8 03E06821 */  addu       $t5, $ra, $zero
/* 42AC 800036AC 0C000D11 */  jal        func_80003444
/* 42B0 800036B0 00000000 */   nop
/* 42B4 800036B4 01A0F821 */  addu       $ra, $t5, $zero
/* 42B8 800036B8 01201821 */  addu       $v1, $t1, $zero
/* 42BC 800036BC 03E00008 */  jr         $ra
/* 42C0 800036C0 00421026 */   xor       $v0, $v0, $v0
.L800036C4:
/* 42C4 800036C4 03E06821 */  addu       $t5, $ra, $zero
/* 42C8 800036C8 0C000CD2 */  jal        func_80003348
/* 42CC 800036CC 00000000 */   nop
/* 42D0 800036D0 01A0F821 */  addu       $ra, $t5, $zero
/* 42D4 800036D4 00A01821 */  addu       $v1, $a1, $zero
/* 42D8 800036D8 03E00008 */  jr         $ra
/* 42DC 800036DC 00801021 */   addu      $v0, $a0, $zero
glabel func_800036E0
/* 42E0 800036E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42E4 800036E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 42E8 800036E8 3C04802D */  lui        $a0, %hi(D_802D0BE8)
/* 42EC 800036EC 24840BE8 */  addiu      $a0, $a0, %lo(D_802D0BE8)
/* 42F0 800036F0 00002821 */  addu       $a1, $zero, $zero
/* 42F4 800036F4 0C026D3C */  jal        func_8009B4F0
/* 42F8 800036F8 24060008 */   addiu     $a2, $zero, 0x8
/* 42FC 800036FC 3C048031 */  lui        $a0, %hi(D_80312DC0)
/* 4300 80003700 24842DC0 */  addiu      $a0, $a0, %lo(D_80312DC0)
/* 4304 80003704 00002821 */  addu       $a1, $zero, $zero
/* 4308 80003708 3C06000D */  lui        $a2, (0xD8DB0 >> 16)
/* 430C 8000370C 0C026D3C */  jal        func_8009B4F0
/* 4310 80003710 34C68DB0 */   ori       $a2, $a2, (0xD8DB0 & 0xFFFF)
/* 4314 80003714 3C04802E */  lui        $a0, %hi(D_802D83F0)
/* 4318 80003718 248483F0 */  addiu      $a0, $a0, %lo(D_802D83F0)
/* 431C 8000371C 00002821 */  addu       $a1, $zero, $zero
/* 4320 80003720 3C060001 */  lui        $a2, (0x16D40 >> 16)
/* 4324 80003724 0C026D3C */  jal        func_8009B4F0
/* 4328 80003728 34C66D40 */   ori       $a2, $a2, (0x16D40 & 0xFFFF)
/* 432C 8000372C 3C04802D */  lui        $a0, %hi(D_802D30A0)
/* 4330 80003730 248430A0 */  addiu      $a0, $a0, %lo(D_802D30A0)
/* 4334 80003734 00002821 */  addu       $a1, $zero, $zero
/* 4338 80003738 0C026D3C */  jal        func_8009B4F0
/* 433C 8000373C 24065340 */   addiu     $a2, $zero, 0x5340
/* 4340 80003740 3C04803F */  lui        $a0, %hi(D_803EF920)
/* 4344 80003744 2484F920 */  addiu      $a0, $a0, %lo(D_803EF920)
/* 4348 80003748 00002821 */  addu       $a1, $zero, $zero
/* 434C 8000374C 0C026D3C */  jal        func_8009B4F0
/* 4350 80003750 24064798 */   addiu     $a2, $zero, 0x4798
/* 4354 80003754 3C04802D */  lui        $a0, %hi(D_802CB170)
/* 4358 80003758 2484B170 */  addiu      $a0, $a0, %lo(D_802CB170)
/* 435C 8000375C 00002821 */  addu       $a1, $zero, $zero
/* 4360 80003760 0C026D3C */  jal        func_8009B4F0
/* 4364 80003764 24065800 */   addiu     $a2, $zero, 0x5800
/* 4368 80003768 8FBF0010 */  lw         $ra, 0x10($sp)
/* 436C 8000376C 03E00008 */  jr         $ra
/* 4370 80003770 27BD0018 */   addiu     $sp, $sp, 0x18
/* 4374 80003774 00000000 */  nop
/* 4378 80003778 00000000 */  nop
/* 437C 8000377C 00000000 */  nop
