.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8004A420
/* 4B020 8004A420 24020001 */  addiu      $v0, $zero, 0x1
/* 4B024 8004A424 3C01803F */  lui        $at, %hi(D_803ED3E0)
/* 4B028 8004A428 A020D3E0 */  sb         $zero, %lo(D_803ED3E0)($at)
/* 4B02C 8004A42C 3C01803F */  lui        $at, %hi(D_803ED3E2)
/* 4B030 8004A430 A022D3E2 */  sb         $v0, %lo(D_803ED3E2)($at)
/* 4B034 8004A434 3C01803F */  lui        $at, %hi(D_803ED3E3)
/* 4B038 8004A438 A022D3E3 */  sb         $v0, %lo(D_803ED3E3)($at)
/* 4B03C 8004A43C 3C01803F */  lui        $at, %hi(D_803ED3E1)
/* 4B040 8004A440 03E00008 */  jr         $ra
/* 4B044 8004A444 A022D3E1 */   sb        $v0, %lo(D_803ED3E1)($at)

glabel func_8004A448
/* 4B048 8004A448 3C04803F */  lui        $a0, %hi(D_803ED3DB)
/* 4B04C 8004A44C 9084D3DB */  lbu        $a0, %lo(D_803ED3DB)($a0)
/* 4B050 8004A450 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4B054 8004A454 AFB00010 */  sw         $s0, 0x10($sp)
/* 4B058 8004A458 00008021 */  addu       $s0, $zero, $zero
/* 4B05C 8004A45C 24020002 */  addiu      $v0, $zero, 0x2
/* 4B060 8004A460 10820003 */  beq        $a0, $v0, .L8004A470
/* 4B064 8004A464 AFBF0014 */   sw        $ra, 0x14($sp)
/* 4B068 8004A468 08012973 */  j          .L8004A5CC
/* 4B06C 8004A46C 24020001 */   addiu     $v0, $zero, 0x1
.L8004A470:
/* 4B070 8004A470 3C03803F */  lui        $v1, %hi(D_803ED3E1)
/* 4B074 8004A474 9063D3E1 */  lbu        $v1, %lo(D_803ED3E1)($v1)
/* 4B078 8004A478 24020001 */  addiu      $v0, $zero, 0x1
/* 4B07C 8004A47C 1062000B */  beq        $v1, $v0, .L8004A4AC
/* 4B080 8004A480 28620002 */   slti      $v0, $v1, 0x2
/* 4B084 8004A484 10400005 */  beqz       $v0, .L8004A49C
/* 4B088 8004A488 00000000 */   nop
/* 4B08C 8004A48C 5060000B */  beql       $v1, $zero, .L8004A4BC
/* 4B090 8004A490 24100004 */   addiu     $s0, $zero, 0x4
/* 4B094 8004A494 0801292D */  j          .L8004A4B4
/* 4B098 8004A498 00000000 */   nop
.L8004A49C:
/* 4B09C 8004A49C 50640007 */  beql       $v1, $a0, .L8004A4BC
/* 4B0A0 8004A4A0 24100010 */   addiu     $s0, $zero, 0x10
/* 4B0A4 8004A4A4 0801292D */  j          .L8004A4B4
/* 4B0A8 8004A4A8 00000000 */   nop
.L8004A4AC:
/* 4B0AC 8004A4AC 0801292F */  j          .L8004A4BC
/* 4B0B0 8004A4B0 24100008 */   addiu     $s0, $zero, 0x8
.L8004A4B4:
/* 4B0B4 8004A4B4 0C012908 */  jal        func_8004A420
/* 4B0B8 8004A4B8 00000000 */   nop
.L8004A4BC:
/* 4B0BC 8004A4BC 3C03803F */  lui        $v1, %hi(D_803ED3D0)
/* 4B0C0 8004A4C0 9063D3D0 */  lbu        $v1, %lo(D_803ED3D0)($v1)
/* 4B0C4 8004A4C4 3C04803F */  lui        $a0, %hi(D_803ED3DC)
/* 4B0C8 8004A4C8 9084D3DC */  lbu        $a0, %lo(D_803ED3DC)($a0)
/* 4B0CC 8004A4CC 3C05803F */  lui        $a1, %hi(D_803ED3DA)
/* 4B0D0 8004A4D0 90A5D3DA */  lbu        $a1, %lo(D_803ED3DA)($a1)
/* 4B0D4 8004A4D4 3C06803F */  lui        $a2, %hi(D_803ED3D6)
/* 4B0D8 8004A4D8 94C6D3D6 */  lhu        $a2, %lo(D_803ED3D6)($a2)
/* 4B0DC 8004A4DC 24020001 */  addiu      $v0, $zero, 0x1
/* 4B0E0 8004A4E0 3C01800C */  lui        $at, %hi(D_800C45B0)
/* 4B0E4 8004A4E4 AC2245B0 */  sw         $v0, %lo(D_800C45B0)($at)
/* 4B0E8 8004A4E8 02031023 */  subu       $v0, $s0, $v1
/* 4B0EC 8004A4EC 3C01800C */  lui        $at, %hi(D_800C45C4)
/* 4B0F0 8004A4F0 AC2245C4 */  sw         $v0, %lo(D_800C45C4)($at)
/* 4B0F4 8004A4F4 3C01800C */  lui        $at, %hi(D_800C45C8)
/* 4B0F8 8004A4F8 AC2345C8 */  sw         $v1, %lo(D_800C45C8)($at)
/* 4B0FC 8004A4FC 3C01800C */  lui        $at, %hi(D_800C45CC)
/* 4B100 8004A500 AC2445CC */  sw         $a0, %lo(D_800C45CC)($at)
/* 4B104 8004A504 3C01800C */  lui        $at, %hi(D_800C45D0)
/* 4B108 8004A508 AC2545D0 */  sw         $a1, %lo(D_800C45D0)($at)
/* 4B10C 8004A50C 3C01800C */  lui        $at, %hi(D_800C45D4)
/* 4B110 8004A510 0C0129FE */  jal        func_8004A7F8
/* 4B114 8004A514 AC2645D4 */   sw        $a2, %lo(D_800C45D4)($at)
/* 4B118 8004A518 3C02800C */  lui        $v0, %hi(D_800C45C4)
/* 4B11C 8004A51C 8C4245C4 */  lw         $v0, %lo(D_800C45C4)($v0)
/* 4B120 8004A520 3C03800C */  lui        $v1, %hi(D_800C45C8)
/* 4B124 8004A524 8C6345C8 */  lw         $v1, %lo(D_800C45C8)($v1)
/* 4B128 8004A528 00431021 */  addu       $v0, $v0, $v1
/* 4B12C 8004A52C 00021040 */  sll        $v0, $v0, 1
/* 4B130 8004A530 24420001 */  addiu      $v0, $v0, 0x1
/* 4B134 8004A534 18400013 */  blez       $v0, .L8004A584
/* 4B138 8004A538 2404FFFF */   addiu     $a0, $zero, -0x1
/* 4B13C 8004A53C 00001821 */  addu       $v1, $zero, $zero
/* 4B140 8004A540 00022900 */  sll        $a1, $v0, 4
.L8004A544:
/* 4B144 8004A544 3C01802D */  lui        $at, %hi(D_802CAF10)
/* 4B148 8004A548 00230821 */  addu       $at, $at, $v1
/* 4B14C 8004A54C AC24AF10 */  sw         $a0, %lo(D_802CAF10)($at)
/* 4B150 8004A550 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4B154 8004A554 00230821 */  addu       $at, $at, $v1
/* 4B158 8004A558 AC24AF18 */  sw         $a0, %lo(D_802CAF18)($at)
/* 4B15C 8004A55C 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4B160 8004A560 00230821 */  addu       $at, $at, $v1
/* 4B164 8004A564 AC24AF14 */  sw         $a0, %lo(D_802CAF14)($at)
/* 4B168 8004A568 3C01802D */  lui        $at, %hi(D_802CAF1C)
/* 4B16C 8004A56C 00230821 */  addu       $at, $at, $v1
/* 4B170 8004A570 AC24AF1C */  sw         $a0, %lo(D_802CAF1C)($at)
/* 4B174 8004A574 24630010 */  addiu      $v1, $v1, 0x10
/* 4B178 8004A578 0065102A */  slt        $v0, $v1, $a1
/* 4B17C 8004A57C 1440FFF1 */  bnez       $v0, .L8004A544
/* 4B180 8004A580 00000000 */   nop
.L8004A584:
/* 4B184 8004A584 0C012C8E */  jal        func_8004B238
/* 4B188 8004A588 00000000 */   nop
/* 4B18C 8004A58C 3C01800C */  lui        $at, %hi(D_800C45B8)
/* 4B190 8004A590 0C012AB5 */  jal        func_8004AAD4
/* 4B194 8004A594 AC2245B8 */   sw        $v0, %lo(D_800C45B8)($at)
/* 4B198 8004A598 00402021 */  addu       $a0, $v0, $zero
/* 4B19C 8004A59C 3C01802D */  lui        $at, %hi(D_802D1D18)
/* 4B1A0 8004A5A0 0C012C8C */  jal        func_8004B230
/* 4B1A4 8004A5A4 AC241D18 */   sw        $a0, %lo(D_802D1D18)($at)
/* 4B1A8 8004A5A8 3C04800C */  lui        $a0, %hi(D_800C45BC)
/* 4B1AC 8004A5AC 0C012ADE */  jal        func_8004AB78
/* 4B1B0 8004A5B0 8C8445BC */   lw        $a0, %lo(D_800C45BC)($a0)
/* 4B1B4 8004A5B4 24040005 */  addiu      $a0, $zero, 0x5
/* 4B1B8 8004A5B8 00002821 */  addu       $a1, $zero, $zero
/* 4B1BC 8004A5BC 00003021 */  addu       $a2, $zero, $zero
/* 4B1C0 8004A5C0 0C02235D */  jal        func_80088D74
/* 4B1C4 8004A5C4 24070001 */   addiu     $a3, $zero, 0x1
/* 4B1C8 8004A5C8 00001021 */  addu       $v0, $zero, $zero
.L8004A5CC:
/* 4B1CC 8004A5CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4B1D0 8004A5D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B1D4 8004A5D4 03E00008 */  jr         $ra
/* 4B1D8 8004A5D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004A5DC
/* 4B1DC 8004A5DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4B1E0 8004A5E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 4B1E4 8004A5E4 00809021 */  addu       $s2, $a0, $zero
/* 4B1E8 8004A5E8 3C04800C */  lui        $a0, %hi(D_800C45BC)
/* 4B1EC 8004A5EC 8C8445BC */  lw         $a0, %lo(D_800C45BC)($a0)
/* 4B1F0 8004A5F0 3C03800C */  lui        $v1, %hi(D_800C45CC)
/* 4B1F4 8004A5F4 8C6345CC */  lw         $v1, %lo(D_800C45CC)($v1)
/* 4B1F8 8004A5F8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 4B1FC 8004A5FC AFB3001C */  sw         $s3, 0x1C($sp)
/* 4B200 8004A600 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B204 8004A604 00048843 */  sra        $s1, $a0, 1
/* 4B208 8004A608 3A220001 */  xori       $v0, $s1, 0x1
/* 4B20C 8004A60C 2C450001 */  sltiu      $a1, $v0, 0x1
/* 4B210 8004A610 24020005 */  addiu      $v0, $zero, 0x5
/* 4B214 8004A614 1462000D */  bne        $v1, $v0, .L8004A64C
/* 4B218 8004A618 AFB00010 */   sw        $s0, 0x10($sp)
/* 4B21C 8004A61C 3C03802F */  lui        $v1, %hi(D_802EF77C)
/* 4B220 8004A620 8463F77C */  lh         $v1, %lo(D_802EF77C)($v1)
/* 4B224 8004A624 00041100 */  sll        $v0, $a0, 4
/* 4B228 8004A628 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4B22C 8004A62C 00220821 */  addu       $at, $at, $v0
/* 4B230 8004A630 AC23AF18 */  sw         $v1, %lo(D_802CAF18)($at)
/* 4B234 8004A634 3C02800C */  lui        $v0, %hi(D_800C45C0)
/* 4B238 8004A638 8C4245C0 */  lw         $v0, %lo(D_800C45C0)($v0)
/* 4B23C 8004A63C 3C03802F */  lui        $v1, %hi(D_802EF77E)
/* 4B240 8004A640 8463F77E */  lh         $v1, %lo(D_802EF77E)($v1)
/* 4B244 8004A644 0801299E */  j          .L8004A678
/* 4B248 8004A648 00021100 */   sll       $v0, $v0, 4
.L8004A64C:
/* 4B24C 8004A64C 3C03802F */  lui        $v1, %hi(D_802EF780)
/* 4B250 8004A650 8463F780 */  lh         $v1, %lo(D_802EF780)($v1)
/* 4B254 8004A654 00041100 */  sll        $v0, $a0, 4
/* 4B258 8004A658 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4B25C 8004A65C 00220821 */  addu       $at, $at, $v0
/* 4B260 8004A660 AC23AF18 */  sw         $v1, %lo(D_802CAF18)($at)
/* 4B264 8004A664 3C02800C */  lui        $v0, %hi(D_800C45C0)
/* 4B268 8004A668 8C4245C0 */  lw         $v0, %lo(D_800C45C0)($v0)
/* 4B26C 8004A66C 3C03802F */  lui        $v1, %hi(D_802EF782)
/* 4B270 8004A670 8463F782 */  lh         $v1, %lo(D_802EF782)($v1)
/* 4B274 8004A674 00021100 */  sll        $v0, $v0, 4
.L8004A678:
/* 4B278 8004A678 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4B27C 8004A67C 00220821 */  addu       $at, $at, $v0
/* 4B280 8004A680 AC23AF18 */  sw         $v1, %lo(D_802CAF18)($at)
/* 4B284 8004A684 3C13800C */  lui        $s3, %hi(D_800C45BC)
/* 4B288 8004A688 267345BC */  addiu      $s3, $s3, %lo(D_800C45BC)
/* 4B28C 8004A68C 00121880 */  sll        $v1, $s2, 2
/* 4B290 8004A690 00731821 */  addu       $v1, $v1, $s3
/* 4B294 8004A694 8C620000 */  lw         $v0, 0x0($v1)
/* 4B298 8004A698 00021100 */  sll        $v0, $v0, 4
/* 4B29C 8004A69C 3C01802D */  lui        $at, %hi(D_802CAF10)
/* 4B2A0 8004A6A0 00220821 */  addu       $at, $at, $v0
/* 4B2A4 8004A6A4 8C22AF10 */  lw         $v0, %lo(D_802CAF10)($at)
/* 4B2A8 8004A6A8 00112100 */  sll        $a0, $s1, 4
/* 4B2AC 8004A6AC 3C01802D */  lui        $at, %hi(D_802CAF10)
/* 4B2B0 8004A6B0 00240821 */  addu       $at, $at, $a0
/* 4B2B4 8004A6B4 AC22AF10 */  sw         $v0, %lo(D_802CAF10)($at)
/* 4B2B8 8004A6B8 8C620000 */  lw         $v0, 0x0($v1)
/* 4B2BC 8004A6BC 00021100 */  sll        $v0, $v0, 4
/* 4B2C0 8004A6C0 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4B2C4 8004A6C4 00220821 */  addu       $at, $at, $v0
/* 4B2C8 8004A6C8 8C22AF14 */  lw         $v0, %lo(D_802CAF14)($at)
/* 4B2CC 8004A6CC 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4B2D0 8004A6D0 00240821 */  addu       $at, $at, $a0
/* 4B2D4 8004A6D4 AC22AF14 */  sw         $v0, %lo(D_802CAF14)($at)
/* 4B2D8 8004A6D8 3C01802F */  lui        $at, %hi(D_802EF782)
/* 4B2DC 8004A6DC A420F782 */  sh         $zero, %lo(D_802EF782)($at)
/* 4B2E0 8004A6E0 3C01802F */  lui        $at, %hi(D_802EF780)
/* 4B2E4 8004A6E4 A420F780 */  sh         $zero, %lo(D_802EF780)($at)
/* 4B2E8 8004A6E8 3C01802F */  lui        $at, %hi(D_802EF77C)
/* 4B2EC 8004A6EC A420F77C */  sh         $zero, %lo(D_802EF77C)($at)
/* 4B2F0 8004A6F0 3C01802F */  lui        $at, %hi(D_802EF77E)
/* 4B2F4 8004A6F4 A420F77E */  sh         $zero, %lo(D_802EF77E)($at)
/* 4B2F8 8004A6F8 3C01802F */  lui        $at, %hi(D_802EF784)
/* 4B2FC 8004A6FC A420F784 */  sh         $zero, %lo(D_802EF784)($at)
/* 4B300 8004A700 3C01802F */  lui        $at, %hi(D_802EF786)
/* 4B304 8004A704 A420F786 */  sh         $zero, %lo(D_802EF786)($at)
/* 4B308 8004A708 3C01802F */  lui        $at, %hi(D_802EF79A)
/* 4B30C 8004A70C A020F79A */  sb         $zero, %lo(D_802EF79A)($at)
/* 4B310 8004A710 3C01802F */  lui        $at, %hi(D_802EF79B)
/* 4B314 8004A714 10A0000C */  beqz       $a1, .L8004A748
/* 4B318 8004A718 A020F79B */   sb        $zero, %lo(D_802EF79B)($at)
/* 4B31C 8004A71C 12400005 */  beqz       $s2, .L8004A734
/* 4B320 8004A720 00000000 */   nop
/* 4B324 8004A724 0C0186C4 */  jal        func_80061B10
/* 4B328 8004A728 00000000 */   nop
/* 4B32C 8004A72C 080129EC */  j          .L8004A7B0
/* 4B330 8004A730 00000000 */   nop
.L8004A734:
/* 4B334 8004A734 0C0186B0 */  jal        func_80061AC0
/* 4B338 8004A738 00000000 */   nop
/* 4B33C 8004A73C 3C01800C */  lui        $at, %hi(D_800C45B8)
/* 4B340 8004A740 080129EC */  j          .L8004A7B0
/* 4B344 8004A744 AC3145B8 */   sw        $s1, %lo(D_800C45B8)($at)
.L8004A748:
/* 4B348 8004A748 3C10800C */  lui        $s0, %hi(D_800C45B8)
/* 4B34C 8004A74C 8E1045B8 */  lw         $s0, %lo(D_800C45B8)($s0)
/* 4B350 8004A750 3C01800C */  lui        $at, %hi(D_800C45B8)
/* 4B354 8004A754 0C012B28 */  jal        func_8004ACA0
/* 4B358 8004A758 AC3145B8 */   sw        $s1, %lo(D_800C45B8)($at)
/* 4B35C 8004A75C 1640000F */  bnez       $s2, .L8004A79C
/* 4B360 8004A760 00000000 */   nop
/* 4B364 8004A764 0C012AB5 */  jal        func_8004AAD4
/* 4B368 8004A768 00000000 */   nop
/* 4B36C 8004A76C 3C01802D */  lui        $at, %hi(D_802D1D18)
/* 4B370 8004A770 AC221D18 */  sw         $v0, %lo(D_802D1D18)($at)
/* 4B374 8004A774 0C012C8C */  jal        func_8004B230
/* 4B378 8004A778 00402021 */   addu      $a0, $v0, $zero
/* 4B37C 8004A77C 8E640000 */  lw         $a0, 0x0($s3)
/* 4B380 8004A780 0C012ADE */  jal        func_8004AB78
/* 4B384 8004A784 00000000 */   nop
/* 4B388 8004A788 24040005 */  addiu      $a0, $zero, 0x5
/* 4B38C 8004A78C 00002821 */  addu       $a1, $zero, $zero
/* 4B390 8004A790 00003021 */  addu       $a2, $zero, $zero
/* 4B394 8004A794 080129F2 */  j          .L8004A7C8
/* 4B398 8004A798 24070001 */   addiu     $a3, $zero, 0x1
.L8004A79C:
/* 4B39C 8004A79C 0C0186C4 */  jal        func_80061B10
/* 4B3A0 8004A7A0 00000000 */   nop
/* 4B3A4 8004A7A4 3C01800C */  lui        $at, %hi(D_800C45B8)
/* 4B3A8 8004A7A8 0C012B5B */  jal        func_8004AD6C
/* 4B3AC 8004A7AC AC3045B8 */   sw        $s0, %lo(D_800C45B8)($at)
.L8004A7B0:
/* 4B3B0 8004A7B0 0C012D5E */  jal        func_8004B578
/* 4B3B4 8004A7B4 00000000 */   nop
/* 4B3B8 8004A7B8 24040005 */  addiu      $a0, $zero, 0x5
/* 4B3BC 8004A7BC 00002821 */  addu       $a1, $zero, $zero
/* 4B3C0 8004A7C0 00003021 */  addu       $a2, $zero, $zero
/* 4B3C4 8004A7C4 24070004 */  addiu      $a3, $zero, 0x4
.L8004A7C8:
/* 4B3C8 8004A7C8 0C02235D */  jal        func_80088D74
/* 4B3CC 8004A7CC 00000000 */   nop
/* 4B3D0 8004A7D0 24020001 */  addiu      $v0, $zero, 0x1
/* 4B3D4 8004A7D4 3C01802D */  lui        $at, %hi(D_802D0C64)
/* 4B3D8 8004A7D8 AC220C64 */  sw         $v0, %lo(D_802D0C64)($at)
/* 4B3DC 8004A7DC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4B3E0 8004A7E0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 4B3E4 8004A7E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 4B3E8 8004A7E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B3EC 8004A7EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B3F0 8004A7F0 03E00008 */  jr         $ra
/* 4B3F4 8004A7F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004A7F8
/* 4B3F8 8004A7F8 3C03800C */  lui        $v1, %hi(D_800C45CC)
/* 4B3FC 8004A7FC 8C6345CC */  lw         $v1, %lo(D_800C45CC)($v1)
/* 4B400 8004A800 24020005 */  addiu      $v0, $zero, 0x5
/* 4B404 8004A804 1462000F */  bne        $v1, $v0, .L8004A844
/* 4B408 8004A808 00000000 */   nop
/* 4B40C 8004A80C 3C02800C */  lui        $v0, %hi(D_800C45B4)
/* 4B410 8004A810 8C4245B4 */  lw         $v0, %lo(D_800C45B4)($v0)
/* 4B414 8004A814 10400004 */  beqz       $v0, .L8004A828
/* 4B418 8004A818 00000000 */   nop
/* 4B41C 8004A81C 3C03800C */  lui        $v1, %hi(D_800C45D4)
/* 4B420 8004A820 08012A2E */  j          .L8004A8B8
/* 4B424 8004A824 8C6345D4 */   lw        $v1, %lo(D_800C45D4)($v1)
.L8004A828:
/* 4B428 8004A828 3C02803F */  lui        $v0, %hi(D_803ED3E3)
/* 4B42C 8004A82C 9042D3E3 */  lbu        $v0, %lo(D_803ED3E3)($v0)
/* 4B430 8004A830 00021080 */  sll        $v0, $v0, 2
/* 4B434 8004A834 3C03800C */  lui        $v1, %hi(D_800C46A0)
/* 4B438 8004A838 00621821 */  addu       $v1, $v1, $v0
/* 4B43C 8004A83C 08012A2E */  j          .L8004A8B8
/* 4B440 8004A840 8C6346A0 */   lw        $v1, %lo(D_800C46A0)($v1)
.L8004A844:
/* 4B444 8004A844 3C02803F */  lui        $v0, %hi(D_803ED3E0)
/* 4B448 8004A848 9042D3E0 */  lbu        $v0, %lo(D_803ED3E0)($v0)
/* 4B44C 8004A84C 10400008 */  beqz       $v0, .L8004A870
/* 4B450 8004A850 00000000 */   nop
/* 4B454 8004A854 3C02800C */  lui        $v0, %hi(D_800C45D0)
/* 4B458 8004A858 8C4245D0 */  lw         $v0, %lo(D_800C45D0)($v0)
/* 4B45C 8004A85C 28420003 */  slti       $v0, $v0, 0x3
/* 4B460 8004A860 10400003 */  beqz       $v0, .L8004A870
/* 4B464 8004A864 24020003 */   addiu     $v0, $zero, 0x3
/* 4B468 8004A868 3C01800C */  lui        $at, %hi(D_800C45D0)
/* 4B46C 8004A86C AC2245D0 */  sw         $v0, %lo(D_800C45D0)($at)
.L8004A870:
/* 4B470 8004A870 3C02800C */  lui        $v0, %hi(D_800C45B4)
/* 4B474 8004A874 8C4245B4 */  lw         $v0, %lo(D_800C45B4)($v0)
/* 4B478 8004A878 10400004 */  beqz       $v0, .L8004A88C
/* 4B47C 8004A87C 00000000 */   nop
/* 4B480 8004A880 3C03800C */  lui        $v1, %hi(D_800C45D0)
/* 4B484 8004A884 08012A2E */  j          .L8004A8B8
/* 4B488 8004A888 8C6345D0 */   lw        $v1, %lo(D_800C45D0)($v1)
.L8004A88C:
/* 4B48C 8004A88C 3C02800C */  lui        $v0, %hi(D_800C45CC)
/* 4B490 8004A890 8C4245CC */  lw         $v0, %lo(D_800C45CC)($v0)
/* 4B494 8004A894 3C04800C */  lui        $a0, %hi(D_800C4660)
/* 4B498 8004A898 24844660 */  addiu      $a0, $a0, %lo(D_800C4660)
/* 4B49C 8004A89C 3C03803F */  lui        $v1, %hi(D_803ED3E3)
/* 4B4A0 8004A8A0 9063D3E3 */  lbu        $v1, %lo(D_803ED3E3)($v1)
/* 4B4A4 8004A8A4 00021100 */  sll        $v0, $v0, 4
/* 4B4A8 8004A8A8 00441021 */  addu       $v0, $v0, $a0
/* 4B4AC 8004A8AC 00031880 */  sll        $v1, $v1, 2
/* 4B4B0 8004A8B0 00621821 */  addu       $v1, $v1, $v0
/* 4B4B4 8004A8B4 8C630000 */  lw         $v1, 0x0($v1)
.L8004A8B8:
/* 4B4B8 8004A8B8 3C01800C */  lui        $at, %hi(D_800C45D4)
/* 4B4BC 8004A8BC 03E00008 */  jr         $ra
/* 4B4C0 8004A8C0 AC2345D4 */   sw        $v1, %lo(D_800C45D4)($at)

glabel func_8004A8C4
/* 4B4C4 8004A8C4 3C03802C */  lui        $v1, %hi(D_802C668C)
/* 4B4C8 8004A8C8 8C63668C */  lw         $v1, %lo(D_802C668C)($v1)
/* 4B4CC 8004A8CC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4B4D0 8004A8D0 AFB40020 */  sw         $s4, 0x20($sp)
/* 4B4D4 8004A8D4 0080A021 */  addu       $s4, $a0, $zero
/* 4B4D8 8004A8D8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 4B4DC 8004A8DC 24020001 */  addiu      $v0, $zero, 0x1
/* 4B4E0 8004A8E0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 4B4E4 8004A8E4 AFB20018 */  sw         $s2, 0x18($sp)
/* 4B4E8 8004A8E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B4EC 8004A8EC AFB00010 */  sw         $s0, 0x10($sp)
/* 4B4F0 8004A8F0 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* 4B4F4 8004A8F4 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 4B4F8 8004A8F8 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 4B4FC 8004A8FC F7B40028 */  sdc1       $f20, 0x28($sp)
/* 4B500 8004A900 14620005 */  bne        $v1, $v0, .L8004A918
/* 4B504 8004A904 00A09821 */   addu      $s3, $a1, $zero
/* 4B508 8004A908 3C12800C */  lui        $s2, %hi(D_800C45D4)
/* 4B50C 8004A90C 8E5245D4 */  lw         $s2, %lo(D_800C45D4)($s2)
/* 4B510 8004A910 08012A49 */  j          .L8004A924
/* 4B514 8004A914 00141100 */   sll       $v0, $s4, 4
.L8004A918:
/* 4B518 8004A918 3C12800C */  lui        $s2, %hi(D_800C45D0)
/* 4B51C 8004A91C 8E5245D0 */  lw         $s2, %lo(D_800C45D0)($s2)
/* 4B520 8004A920 00141100 */  sll        $v0, $s4, 4
.L8004A924:
/* 4B524 8004A924 3C03802D */  lui        $v1, %hi(D_802CAF10)
/* 4B528 8004A928 00621821 */  addu       $v1, $v1, $v0
/* 4B52C 8004A92C 8C63AF10 */  lw         $v1, %lo(D_802CAF10)($v1)
/* 4B530 8004A930 000310C0 */  sll        $v0, $v1, 3
/* 4B534 8004A934 00431021 */  addu       $v0, $v0, $v1
/* 4B538 8004A938 00021080 */  sll        $v0, $v0, 2
/* 4B53C 8004A93C 00431021 */  addu       $v0, $v0, $v1
/* 4B540 8004A940 00131900 */  sll        $v1, $s3, 4
/* 4B544 8004A944 3C01802D */  lui        $at, %hi(D_802CAF10)
/* 4B548 8004A948 00230821 */  addu       $at, $at, $v1
/* 4B54C 8004A94C 8C23AF10 */  lw         $v1, %lo(D_802CAF10)($at)
/* 4B550 8004A950 00021080 */  sll        $v0, $v0, 2
/* 4B554 8004A954 3C04800C */  lui        $a0, %hi(D_800BFC40)
/* 4B558 8004A958 00822021 */  addu       $a0, $a0, $v0
/* 4B55C 8004A95C 8C84FC40 */  lw         $a0, %lo(D_800BFC40)($a0)
/* 4B560 8004A960 000310C0 */  sll        $v0, $v1, 3
/* 4B564 8004A964 00431021 */  addu       $v0, $v0, $v1
/* 4B568 8004A968 00021080 */  sll        $v0, $v0, 2
/* 4B56C 8004A96C 00431021 */  addu       $v0, $v0, $v1
/* 4B570 8004A970 00021080 */  sll        $v0, $v0, 2
/* 4B574 8004A974 3C05800C */  lui        $a1, %hi(D_800BFC40)
/* 4B578 8004A978 00A22821 */  addu       $a1, $a1, $v0
/* 4B57C 8004A97C 8CA5FC40 */  lw         $a1, %lo(D_800BFC40)($a1)
/* 4B580 8004A980 0085102A */  slt        $v0, $a0, $a1
/* 4B584 8004A984 10400006 */  beqz       $v0, .L8004A9A0
/* 4B588 8004A988 02801821 */   addu      $v1, $s4, $zero
/* 4B58C 8004A98C 0260A021 */  addu       $s4, $s3, $zero
/* 4B590 8004A990 00609821 */  addu       $s3, $v1, $zero
/* 4B594 8004A994 00801021 */  addu       $v0, $a0, $zero
/* 4B598 8004A998 00A02021 */  addu       $a0, $a1, $zero
/* 4B59C 8004A99C 00402821 */  addu       $a1, $v0, $zero
.L8004A9A0:
/* 4B5A0 8004A9A0 3C02803F */  lui        $v0, %hi(D_803ED3E0)
/* 4B5A4 8004A9A4 9042D3E0 */  lbu        $v0, %lo(D_803ED3E0)($v0)
/* 4B5A8 8004A9A8 00008821 */  addu       $s1, $zero, $zero
/* 4B5AC 8004A9AC 10400005 */  beqz       $v0, .L8004A9C4
/* 4B5B0 8004A9B0 00008021 */   addu      $s0, $zero, $zero
/* 4B5B4 8004A9B4 00131100 */  sll        $v0, $s3, 4
/* 4B5B8 8004A9B8 3C10802D */  lui        $s0, %hi(D_802CAF1C)
/* 4B5BC 8004A9BC 02028021 */  addu       $s0, $s0, $v0
/* 4B5C0 8004A9C0 8E10AF1C */  lw         $s0, %lo(D_802CAF1C)($s0)
.L8004A9C4:
/* 4B5C4 8004A9C4 00101027 */  nor        $v0, $zero, $s0
/* 4B5C8 8004A9C8 0002102B */  sltu       $v0, $zero, $v0
/* 4B5CC 8004A9CC 00021023 */  negu       $v0, $v0
/* 4B5D0 8004A9D0 0C0220CC */  jal        func_80088330
/* 4B5D4 8004A9D4 02028024 */   and       $s0, $s0, $v0
/* 4B5D8 8004A9D8 3C01800D */  lui        $at, %hi(D_800D3A50)
/* 4B5DC 8004A9DC D4223A50 */  ldc1       $f2, %lo(D_800D3A50)($at)
/* 4B5E0 8004A9E0 46220502 */  mul.d      $f20, $f0, $f2
/* 4B5E4 8004A9E4 3C01800D */  lui        $at, %hi(D_800D3A58)
/* 4B5E8 8004A9E8 D4203A58 */  ldc1       $f0, %lo(D_800D3A58)($at)
/* 4B5EC 8004A9EC 4634003C */  c.lt.d     $f0, $f20
/* 4B5F0 8004A9F0 00000000 */  nop
/* 4B5F4 8004A9F4 00000000 */  nop
/* 4B5F8 8004A9F8 45030001 */  bc1tl      .L8004AA00
/* 4B5FC 8004A9FC 46200506 */   mov.d     $f20, $f0
.L8004AA00:
/* 4B600 8004AA00 0232102A */  slt        $v0, $s1, $s2
/* 4B604 8004AA04 0212182A */  slt        $v1, $s0, $s2
/* 4B608 8004AA08 00431024 */  and        $v0, $v0, $v1
/* 4B60C 8004AA0C 1040001A */  beqz       $v0, .L8004AA78
/* 4B610 8004AA10 02801021 */   addu      $v0, $s4, $zero
/* 4B614 8004AA14 3C01800D */  lui        $at, %hi(D_800D3A60)
/* 4B618 8004AA18 D43A3A60 */  ldc1       $f26, %lo(D_800D3A60)($at)
/* 4B61C 8004AA1C 3C01800D */  lui        $at, %hi(D_800D3A68)
/* 4B620 8004AA20 D4383A68 */  ldc1       $f24, %lo(D_800D3A68)($at)
/* 4B624 8004AA24 46201586 */  mov.d      $f22, $f2
.L8004AA28:
/* 4B628 8004AA28 0C022BC8 */  jal        func_8008AF20
/* 4B62C 8004AA2C 00000000 */   nop
/* 4B630 8004AA30 44820000 */  mtc1       $v0, $f0
/* 4B634 8004AA34 00000000 */  nop
/* 4B638 8004AA38 46800021 */  cvt.d.w    $f0, $f0
/* 4B63C 8004AA3C 04420001 */  bltzl      $v0, .L8004AA44
/* 4B640 8004AA40 463A0000 */   add.d     $f0, $f0, $f26
.L8004AA44:
/* 4B644 8004AA44 46380003 */  div.d      $f0, $f0, $f24
/* 4B648 8004AA48 46360002 */  mul.d      $f0, $f0, $f22
/* 4B64C 8004AA4C 4620A03E */  c.le.d     $f20, $f0
/* 4B650 8004AA50 00000000 */  nop
/* 4B654 8004AA54 00000000 */  nop
/* 4B658 8004AA58 45020002 */  bc1fl      .L8004AA64
/* 4B65C 8004AA5C 26310001 */   addiu     $s1, $s1, 0x1
/* 4B660 8004AA60 26100001 */  addiu      $s0, $s0, 0x1
.L8004AA64:
/* 4B664 8004AA64 0232102A */  slt        $v0, $s1, $s2
/* 4B668 8004AA68 0212182A */  slt        $v1, $s0, $s2
/* 4B66C 8004AA6C 00431024 */  and        $v0, $v0, $v1
/* 4B670 8004AA70 1440FFED */  bnez       $v0, .L8004AA28
/* 4B674 8004AA74 02801021 */   addu      $v0, $s4, $zero
.L8004AA78:
/* 4B678 8004AA78 00021900 */  sll        $v1, $v0, 4
/* 4B67C 8004AA7C 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4B680 8004AA80 00230821 */  addu       $at, $at, $v1
/* 4B684 8004AA84 AC31AF18 */  sw         $s1, %lo(D_802CAF18)($at)
/* 4B688 8004AA88 00131900 */  sll        $v1, $s3, 4
/* 4B68C 8004AA8C 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4B690 8004AA90 00230821 */  addu       $at, $at, $v1
/* 4B694 8004AA94 AC30AF18 */  sw         $s0, %lo(D_802CAF18)($at)
/* 4B698 8004AA98 0232182A */  slt        $v1, $s1, $s2
/* 4B69C 8004AA9C 54600001 */  bnel       $v1, $zero, .L8004AAA4
/* 4B6A0 8004AAA0 02601021 */   addu      $v0, $s3, $zero
.L8004AAA4:
/* 4B6A4 8004AAA4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 4B6A8 8004AAA8 8FB40020 */  lw         $s4, 0x20($sp)
/* 4B6AC 8004AAAC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 4B6B0 8004AAB0 8FB20018 */  lw         $s2, 0x18($sp)
/* 4B6B4 8004AAB4 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B6B8 8004AAB8 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B6BC 8004AABC D7BA0040 */  ldc1       $f26, 0x40($sp)
/* 4B6C0 8004AAC0 D7B80038 */  ldc1       $f24, 0x38($sp)
/* 4B6C4 8004AAC4 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 4B6C8 8004AAC8 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 4B6CC 8004AACC 03E00008 */  jr         $ra
/* 4B6D0 8004AAD0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8004AAD4
/* 4B6D4 8004AAD4 3C04800C */  lui        $a0, %hi(D_800C45B8)
/* 4B6D8 8004AAD8 8C8445B8 */  lw         $a0, %lo(D_800C45B8)($a0)
/* 4B6DC 8004AADC 00041100 */  sll        $v0, $a0, 4
/* 4B6E0 8004AAE0 3C03802D */  lui        $v1, %hi(D_802CAF18)
/* 4B6E4 8004AAE4 00621821 */  addu       $v1, $v1, $v0
/* 4B6E8 8004AAE8 8C63AF18 */  lw         $v1, %lo(D_802CAF18)($v1)
/* 4B6EC 8004AAEC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 4B6F0 8004AAF0 1062000A */  beq        $v1, $v0, .L8004AB1C
/* 4B6F4 8004AAF4 30820001 */   andi      $v0, $a0, 0x1
/* 4B6F8 8004AAF8 2403FFFF */  addiu      $v1, $zero, -0x1
/* 4B6FC 8004AAFC 00042043 */  sra        $a0, $a0, 1
.L8004AB00:
/* 4B700 8004AB00 00041100 */  sll        $v0, $a0, 4
/* 4B704 8004AB04 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4B708 8004AB08 00220821 */  addu       $at, $at, $v0
/* 4B70C 8004AB0C 8C22AF18 */  lw         $v0, %lo(D_802CAF18)($at)
/* 4B710 8004AB10 5443FFFB */  bnel       $v0, $v1, .L8004AB00
/* 4B714 8004AB14 00042043 */   sra       $a0, $a0, 1
/* 4B718 8004AB18 30820001 */  andi       $v0, $a0, 0x1
.L8004AB1C:
/* 4B71C 8004AB1C 14400002 */  bnez       $v0, .L8004AB28
/* 4B720 8004AB20 2482FFFF */   addiu     $v0, $a0, -0x1
/* 4B724 8004AB24 24820001 */  addiu      $v0, $a0, 0x1
.L8004AB28:
/* 4B728 8004AB28 3C01800C */  lui        $at, %hi(D_800C45C0)
/* 4B72C 8004AB2C AC2245C0 */  sw         $v0, %lo(D_800C45C0)($at)
/* 4B730 8004AB30 00021100 */  sll        $v0, $v0, 4
/* 4B734 8004AB34 3C01800C */  lui        $at, %hi(D_800C45BC)
/* 4B738 8004AB38 AC2445BC */  sw         $a0, %lo(D_800C45BC)($at)
/* 4B73C 8004AB3C 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4B740 8004AB40 00220821 */  addu       $at, $at, $v0
/* 4B744 8004AB44 03E00008 */  jr         $ra
/* 4B748 8004AB48 8C22AF14 */   lw        $v0, %lo(D_802CAF14)($at)

glabel func_8004AB4C
/* 4B74C 8004AB4C 24020001 */  addiu      $v0, $zero, 0x1
/* 4B750 8004AB50 03E00008 */  jr         $ra
/* 4B754 8004AB54 00821004 */   sllv      $v0, $v0, $a0

glabel func_8004AB58
/* 4B758 8004AB58 00042043 */  sra        $a0, $a0, 1
/* 4B75C 8004AB5C 18800004 */  blez       $a0, .L8004AB70
/* 4B760 8004AB60 00001021 */   addu      $v0, $zero, $zero
.L8004AB64:
/* 4B764 8004AB64 00042043 */  sra        $a0, $a0, 1
/* 4B768 8004AB68 1C80FFFE */  bgtz       $a0, .L8004AB64
/* 4B76C 8004AB6C 24420001 */   addiu     $v0, $v0, 0x1
.L8004AB70:
/* 4B770 8004AB70 03E00008 */  jr         $ra
/* 4B774 8004AB74 00000000 */   nop

glabel func_8004AB78
/* 4B778 8004AB78 3C02803F */  lui        $v0, %hi(D_803ED3E0)
/* 4B77C 8004AB7C 9042D3E0 */  lbu        $v0, %lo(D_803ED3E0)($v0)
/* 4B780 8004AB80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B784 8004AB84 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4B788 8004AB88 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B78C 8004AB8C 10400013 */  beqz       $v0, .L8004ABDC
/* 4B790 8004AB90 AFB00010 */   sw        $s0, 0x10($sp)
/* 4B794 8004AB94 0C012AD6 */  jal        func_8004AB58
/* 4B798 8004AB98 00000000 */   nop
/* 4B79C 8004AB9C 00408021 */  addu       $s0, $v0, $zero
/* 4B7A0 8004ABA0 0C012AD3 */  jal        func_8004AB4C
/* 4B7A4 8004ABA4 02002021 */   addu      $a0, $s0, $zero
/* 4B7A8 8004ABA8 26040001 */  addiu      $a0, $s0, 0x1
/* 4B7AC 8004ABAC 0C012AD3 */  jal        func_8004AB4C
/* 4B7B0 8004ABB0 00408021 */   addu      $s0, $v0, $zero
/* 4B7B4 8004ABB4 00408821 */  addu       $s1, $v0, $zero
/* 4B7B8 8004ABB8 0211102A */  slt        $v0, $s0, $s1
/* 4B7BC 8004ABBC 10400007 */  beqz       $v0, .L8004ABDC
/* 4B7C0 8004ABC0 02002021 */   addu      $a0, $s0, $zero
.L8004ABC4:
/* 4B7C4 8004ABC4 0C012AFC */  jal        func_8004ABF0
/* 4B7C8 8004ABC8 26050001 */   addiu     $a1, $s0, 0x1
/* 4B7CC 8004ABCC 26100002 */  addiu      $s0, $s0, 0x2
/* 4B7D0 8004ABD0 0211102A */  slt        $v0, $s0, $s1
/* 4B7D4 8004ABD4 1440FFFB */  bnez       $v0, .L8004ABC4
/* 4B7D8 8004ABD8 02002021 */   addu      $a0, $s0, $zero
.L8004ABDC:
/* 4B7DC 8004ABDC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4B7E0 8004ABE0 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B7E4 8004ABE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B7E8 8004ABE8 03E00008 */  jr         $ra
/* 4B7EC 8004ABEC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004ABF0
/* 4B7F0 8004ABF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4B7F4 8004ABF4 00042100 */  sll        $a0, $a0, 4
/* 4B7F8 8004ABF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4B7FC 8004ABFC AFB00010 */  sw         $s0, 0x10($sp)
/* 4B800 8004AC00 3C03802D */  lui        $v1, %hi(D_802CAF10)
/* 4B804 8004AC04 00641821 */  addu       $v1, $v1, $a0
/* 4B808 8004AC08 8C63AF10 */  lw         $v1, %lo(D_802CAF10)($v1)
/* 4B80C 8004AC0C 3C06800C */  lui        $a2, %hi(D_800C45CC)
/* 4B810 8004AC10 8CC645CC */  lw         $a2, %lo(D_800C45CC)($a2)
/* 4B814 8004AC14 000310C0 */  sll        $v0, $v1, 3
/* 4B818 8004AC18 00431021 */  addu       $v0, $v0, $v1
/* 4B81C 8004AC1C 00021080 */  sll        $v0, $v0, 2
/* 4B820 8004AC20 00431021 */  addu       $v0, $v0, $v1
/* 4B824 8004AC24 00021080 */  sll        $v0, $v0, 2
/* 4B828 8004AC28 3C03800C */  lui        $v1, %hi(D_800BFC40)
/* 4B82C 8004AC2C 00621821 */  addu       $v1, $v1, $v0
/* 4B830 8004AC30 8C63FC40 */  lw         $v1, %lo(D_800BFC40)($v1)
/* 4B834 8004AC34 00058100 */  sll        $s0, $a1, 4
/* 4B838 8004AC38 24020005 */  addiu      $v0, $zero, 0x5
/* 4B83C 8004AC3C 3C01802D */  lui        $at, %hi(D_802CAF1C)
/* 4B840 8004AC40 00240821 */  addu       $at, $at, $a0
/* 4B844 8004AC44 AC20AF1C */  sw         $zero, %lo(D_802CAF1C)($at)
/* 4B848 8004AC48 3C01802D */  lui        $at, %hi(D_802CAF1C)
/* 4B84C 8004AC4C 00300821 */  addu       $at, $at, $s0
/* 4B850 8004AC50 AC20AF1C */  sw         $zero, %lo(D_802CAF1C)($at)
/* 4B854 8004AC54 14C20006 */  bne        $a2, $v0, .L8004AC70
/* 4B858 8004AC58 00602021 */   addu      $a0, $v1, $zero
/* 4B85C 8004AC5C 3C07800C */  lui        $a3, %hi(D_800C45D4)
/* 4B860 8004AC60 8CE745D4 */  lw         $a3, %lo(D_800C45D4)($a3)
/* 4B864 8004AC64 00802821 */  addu       $a1, $a0, $zero
/* 4B868 8004AC68 08012B1F */  j          .L8004AC7C
/* 4B86C 8004AC6C 24060005 */   addiu     $a2, $zero, 0x5
.L8004AC70:
/* 4B870 8004AC70 3C07800C */  lui        $a3, %hi(D_800C45D0)
/* 4B874 8004AC74 8CE745D0 */  lw         $a3, %lo(D_800C45D0)($a3)
/* 4B878 8004AC78 00802821 */  addu       $a1, $a0, $zero
.L8004AC7C:
/* 4B87C 8004AC7C 0C0220EB */  jal        func_800883AC
/* 4B880 8004AC80 00000000 */   nop
/* 4B884 8004AC84 3C01802D */  lui        $at, %hi(D_802CAF1C)
/* 4B888 8004AC88 00300821 */  addu       $at, $at, $s0
/* 4B88C 8004AC8C AC22AF1C */  sw         $v0, %lo(D_802CAF1C)($at)
/* 4B890 8004AC90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4B894 8004AC94 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B898 8004AC98 03E00008 */  jr         $ra
/* 4B89C 8004AC9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004ACA0
/* 4B8A0 8004ACA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B8A4 8004ACA4 AFB20018 */  sw         $s2, 0x18($sp)
/* 4B8A8 8004ACA8 3C12800C */  lui        $s2, %hi(D_800C45BC)
/* 4B8AC 8004ACAC 8E5245BC */  lw         $s2, %lo(D_800C45BC)($s2)
/* 4B8B0 8004ACB0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 4B8B4 8004ACB4 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B8B8 8004ACB8 AFB00010 */  sw         $s0, 0x10($sp)
/* 4B8BC 8004ACBC 0C012AD6 */  jal        func_8004AB58
/* 4B8C0 8004ACC0 02402021 */   addu      $a0, $s2, $zero
/* 4B8C4 8004ACC4 00408021 */  addu       $s0, $v0, $zero
/* 4B8C8 8004ACC8 0C012AD3 */  jal        func_8004AB4C
/* 4B8CC 8004ACCC 02002021 */   addu      $a0, $s0, $zero
/* 4B8D0 8004ACD0 26040001 */  addiu      $a0, $s0, 0x1
/* 4B8D4 8004ACD4 0C012AD3 */  jal        func_8004AB4C
/* 4B8D8 8004ACD8 00408021 */   addu      $s0, $v0, $zero
/* 4B8DC 8004ACDC 00408821 */  addu       $s1, $v0, $zero
/* 4B8E0 8004ACE0 0211102A */  slt        $v0, $s0, $s1
/* 4B8E4 8004ACE4 1040001B */  beqz       $v0, .L8004AD54
/* 4B8E8 8004ACE8 00000000 */   nop
.L8004ACEC:
/* 4B8EC 8004ACEC 52120016 */  beql       $s0, $s2, .L8004AD48
/* 4B8F0 8004ACF0 26100002 */   addiu     $s0, $s0, 0x2
/* 4B8F4 8004ACF4 26050001 */  addiu      $a1, $s0, 0x1
/* 4B8F8 8004ACF8 50B20013 */  beql       $a1, $s2, .L8004AD48
/* 4B8FC 8004ACFC 26100002 */   addiu     $s0, $s0, 0x2
/* 4B900 8004AD00 0C012A31 */  jal        func_8004A8C4
/* 4B904 8004AD04 02002021 */   addu      $a0, $s0, $zero
/* 4B908 8004AD08 00022100 */  sll        $a0, $v0, 4
/* 4B90C 8004AD0C 3C03802D */  lui        $v1, %hi(D_802CAF10)
/* 4B910 8004AD10 00641821 */  addu       $v1, $v1, $a0
/* 4B914 8004AD14 8C63AF10 */  lw         $v1, %lo(D_802CAF10)($v1)
/* 4B918 8004AD18 00021043 */  sra        $v0, $v0, 1
/* 4B91C 8004AD1C 00021100 */  sll        $v0, $v0, 4
/* 4B920 8004AD20 3C01802D */  lui        $at, %hi(D_802CAF10)
/* 4B924 8004AD24 00220821 */  addu       $at, $at, $v0
/* 4B928 8004AD28 AC23AF10 */  sw         $v1, %lo(D_802CAF10)($at)
/* 4B92C 8004AD2C 3C03802D */  lui        $v1, %hi(D_802CAF14)
/* 4B930 8004AD30 00641821 */  addu       $v1, $v1, $a0
/* 4B934 8004AD34 8C63AF14 */  lw         $v1, %lo(D_802CAF14)($v1)
/* 4B938 8004AD38 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4B93C 8004AD3C 00220821 */  addu       $at, $at, $v0
/* 4B940 8004AD40 AC23AF14 */  sw         $v1, %lo(D_802CAF14)($at)
/* 4B944 8004AD44 26100002 */  addiu      $s0, $s0, 0x2
.L8004AD48:
/* 4B948 8004AD48 0211102A */  slt        $v0, $s0, $s1
/* 4B94C 8004AD4C 1440FFE7 */  bnez       $v0, .L8004ACEC
/* 4B950 8004AD50 00000000 */   nop
.L8004AD54:
/* 4B954 8004AD54 8FBF001C */  lw         $ra, 0x1C($sp)
/* 4B958 8004AD58 8FB20018 */  lw         $s2, 0x18($sp)
/* 4B95C 8004AD5C 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B960 8004AD60 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B964 8004AD64 03E00008 */  jr         $ra
/* 4B968 8004AD68 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004AD6C
/* 4B96C 8004AD6C 3C03802D */  lui        $v1, %hi(D_802CAF28)
/* 4B970 8004AD70 8C63AF28 */  lw         $v1, %lo(D_802CAF28)($v1)
/* 4B974 8004AD74 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4B978 8004AD78 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B97C 8004AD7C 24110001 */  addiu      $s1, $zero, 0x1
/* 4B980 8004AD80 2402FFFF */  addiu      $v0, $zero, -0x1
/* 4B984 8004AD84 AFBF0024 */  sw         $ra, 0x24($sp)
/* 4B988 8004AD88 AFB40020 */  sw         $s4, 0x20($sp)
/* 4B98C 8004AD8C AFB3001C */  sw         $s3, 0x1C($sp)
/* 4B990 8004AD90 AFB20018 */  sw         $s2, 0x18($sp)
/* 4B994 8004AD94 14620009 */  bne        $v1, $v0, .L8004ADBC
/* 4B998 8004AD98 AFB00010 */   sw        $s0, 0x10($sp)
/* 4B99C 8004AD9C 2403FFFF */  addiu      $v1, $zero, -0x1
/* 4B9A0 8004ADA0 00118840 */  sll        $s1, $s1, 1
.L8004ADA4:
/* 4B9A4 8004ADA4 00111100 */  sll        $v0, $s1, 4
/* 4B9A8 8004ADA8 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4B9AC 8004ADAC 00220821 */  addu       $at, $at, $v0
/* 4B9B0 8004ADB0 8C22AF18 */  lw         $v0, %lo(D_802CAF18)($at)
/* 4B9B4 8004ADB4 5043FFFB */  beql       $v0, $v1, .L8004ADA4
/* 4B9B8 8004ADB8 00118840 */   sll       $s1, $s1, 1
.L8004ADBC:
/* 4B9BC 8004ADBC 0C012AD6 */  jal        func_8004AB58
/* 4B9C0 8004ADC0 02202021 */   addu      $a0, $s1, $zero
/* 4B9C4 8004ADC4 2452FFFF */  addiu      $s2, $v0, -0x1
/* 4B9C8 8004ADC8 3C14800C */  lui        $s4, %hi(D_800C45BC)
/* 4B9CC 8004ADCC 269445BC */  addiu      $s4, $s4, %lo(D_800C45BC)
.L8004ADD0:
/* 4B9D0 8004ADD0 0C012AD3 */  jal        func_8004AB4C
/* 4B9D4 8004ADD4 02402021 */   addu      $a0, $s2, $zero
/* 4B9D8 8004ADD8 26440001 */  addiu      $a0, $s2, 0x1
/* 4B9DC 8004ADDC 0C012AD3 */  jal        func_8004AB4C
/* 4B9E0 8004ADE0 00408021 */   addu      $s0, $v0, $zero
/* 4B9E4 8004ADE4 02002021 */  addu       $a0, $s0, $zero
/* 4B9E8 8004ADE8 26030001 */  addiu      $v1, $s0, 0x1
/* 4B9EC 8004ADEC 00409821 */  addu       $s3, $v0, $zero
/* 4B9F0 8004ADF0 AE900000 */  sw         $s0, 0x0($s4)
/* 4B9F4 8004ADF4 0C012ADE */  jal        func_8004AB78
/* 4B9F8 8004ADF8 AE830004 */   sw        $v1, 0x4($s4)
/* 4B9FC 8004ADFC 02008821 */  addu       $s1, $s0, $zero
/* 4BA00 8004AE00 0233102A */  slt        $v0, $s1, $s3
/* 4BA04 8004AE04 5040001A */  beql       $v0, $zero, .L8004AE70
/* 4BA08 8004AE08 2652FFFF */   addiu     $s2, $s2, -0x1
.L8004AE0C:
/* 4BA0C 8004AE0C 02202021 */  addu       $a0, $s1, $zero
/* 4BA10 8004AE10 26300001 */  addiu      $s0, $s1, 0x1
/* 4BA14 8004AE14 0C012A31 */  jal        func_8004A8C4
/* 4BA18 8004AE18 02002821 */   addu      $a1, $s0, $zero
/* 4BA1C 8004AE1C 00021900 */  sll        $v1, $v0, 4
/* 4BA20 8004AE20 3C04802D */  lui        $a0, %hi(D_802CAF10)
/* 4BA24 8004AE24 00832021 */  addu       $a0, $a0, $v1
/* 4BA28 8004AE28 8C84AF10 */  lw         $a0, %lo(D_802CAF10)($a0)
/* 4BA2C 8004AE2C 00021043 */  sra        $v0, $v0, 1
/* 4BA30 8004AE30 00021100 */  sll        $v0, $v0, 4
/* 4BA34 8004AE34 3C01802D */  lui        $at, %hi(D_802CAF10)
/* 4BA38 8004AE38 00220821 */  addu       $at, $at, $v0
/* 4BA3C 8004AE3C AC24AF10 */  sw         $a0, %lo(D_802CAF10)($at)
/* 4BA40 8004AE40 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4BA44 8004AE44 00230821 */  addu       $at, $at, $v1
/* 4BA48 8004AE48 8C23AF14 */  lw         $v1, %lo(D_802CAF14)($at)
/* 4BA4C 8004AE4C 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4BA50 8004AE50 00220821 */  addu       $at, $at, $v0
/* 4BA54 8004AE54 AC23AF14 */  sw         $v1, %lo(D_802CAF14)($at)
/* 4BA58 8004AE58 AE910000 */  sw         $s1, 0x0($s4)
/* 4BA5C 8004AE5C 26310002 */  addiu      $s1, $s1, 0x2
/* 4BA60 8004AE60 0233102A */  slt        $v0, $s1, $s3
/* 4BA64 8004AE64 1440FFE9 */  bnez       $v0, .L8004AE0C
/* 4BA68 8004AE68 AE900004 */   sw        $s0, 0x4($s4)
/* 4BA6C 8004AE6C 2652FFFF */  addiu      $s2, $s2, -0x1
.L8004AE70:
/* 4BA70 8004AE70 1E40FFD7 */  bgtz       $s2, .L8004ADD0
/* 4BA74 8004AE74 00000000 */   nop
/* 4BA78 8004AE78 8FBF0024 */  lw         $ra, 0x24($sp)
/* 4BA7C 8004AE7C 8FB40020 */  lw         $s4, 0x20($sp)
/* 4BA80 8004AE80 8FB3001C */  lw         $s3, 0x1C($sp)
/* 4BA84 8004AE84 8FB20018 */  lw         $s2, 0x18($sp)
/* 4BA88 8004AE88 8FB10014 */  lw         $s1, 0x14($sp)
/* 4BA8C 8004AE8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 4BA90 8004AE90 03E00008 */  jr         $ra
/* 4BA94 8004AE94 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004AE98
/* 4BA98 8004AE98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4BA9C 8004AE9C AFB00010 */  sw         $s0, 0x10($sp)
/* 4BAA0 8004AEA0 00808021 */  addu       $s0, $a0, $zero
/* 4BAA4 8004AEA4 00B02823 */  subu       $a1, $a1, $s0
/* 4BAA8 8004AEA8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4BAAC 8004AEAC 4485A000 */  mtc1       $a1, $f20
/* 4BAB0 8004AEB0 00000000 */  nop
/* 4BAB4 8004AEB4 4680A521 */  cvt.d.w    $f20, $f20
/* 4BAB8 8004AEB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4BABC 8004AEBC 0C022BC8 */  jal        func_8008AF20
/* 4BAC0 8004AEC0 00000000 */   nop
/* 4BAC4 8004AEC4 44821000 */  mtc1       $v0, $f2
/* 4BAC8 8004AEC8 00000000 */  nop
/* 4BACC 8004AECC 04410004 */  bgez       $v0, .L8004AEE0
/* 4BAD0 8004AED0 468010A1 */   cvt.d.w   $f2, $f2
/* 4BAD4 8004AED4 3C01800D */  lui        $at, %hi(D_800D3A70)
/* 4BAD8 8004AED8 D4203A70 */  ldc1       $f0, %lo(D_800D3A70)($at)
/* 4BADC 8004AEDC 46201080 */  add.d      $f2, $f2, $f0
.L8004AEE0:
/* 4BAE0 8004AEE0 3C01800D */  lui        $at, %hi(D_800D3A78)
/* 4BAE4 8004AEE4 D4203A78 */  ldc1       $f0, %lo(D_800D3A78)($at)
/* 4BAE8 8004AEE8 46201003 */  div.d      $f0, $f2, $f0
/* 4BAEC 8004AEEC 46340002 */  mul.d      $f0, $f0, $f20
/* 4BAF0 8004AEF0 4620008D */  trunc.w.d  $f2, $f0
/* 4BAF4 8004AEF4 44021000 */  mfc1       $v0, $f2
/* 4BAF8 8004AEF8 00000000 */  nop
/* 4BAFC 8004AEFC 00501021 */  addu       $v0, $v0, $s0
/* 4BB00 8004AF00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4BB04 8004AF04 8FB00010 */  lw         $s0, 0x10($sp)
/* 4BB08 8004AF08 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4BB0C 8004AF0C 03E00008 */  jr         $ra
/* 4BB10 8004AF10 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004AF14
/* 4BB14 8004AF14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4BB18 8004AF18 240B0081 */  addiu      $t3, $zero, 0x81
/* 4BB1C 8004AF1C 24080001 */  addiu      $t0, $zero, 0x1
/* 4BB20 8004AF20 240A0082 */  addiu      $t2, $zero, 0x82
/* 4BB24 8004AF24 24030001 */  addiu      $v1, $zero, 0x1
.L8004AF28:
/* 4BB28 8004AF28 01681023 */  subu       $v0, $t3, $t0
/* 4BB2C 8004AF2C 18400048 */  blez       $v0, .L8004B050
/* 4BB30 8004AF30 00002021 */   addu      $a0, $zero, $zero
/* 4BB34 8004AF34 00404821 */  addu       $t1, $v0, $zero
/* 4BB38 8004AF38 00042900 */  sll        $a1, $a0, 4
.L8004AF3C:
/* 4BB3C 8004AF3C 24870001 */  addiu      $a3, $a0, 0x1
/* 4BB40 8004AF40 00073100 */  sll        $a2, $a3, 4
/* 4BB44 8004AF44 3C04802D */  lui        $a0, %hi(D_802D1160)
/* 4BB48 8004AF48 00852021 */  addu       $a0, $a0, $a1
/* 4BB4C 8004AF4C 8C841160 */  lw         $a0, %lo(D_802D1160)($a0)
/* 4BB50 8004AF50 3C02802D */  lui        $v0, %hi(D_802D1160)
/* 4BB54 8004AF54 00461021 */  addu       $v0, $v0, $a2
/* 4BB58 8004AF58 8C421160 */  lw         $v0, %lo(D_802D1160)($v0)
/* 4BB5C 8004AF5C 0082102A */  slt        $v0, $a0, $v0
/* 4BB60 8004AF60 50400038 */  beql       $v0, $zero, .L8004B044
/* 4BB64 8004AF64 00E02021 */   addu      $a0, $a3, $zero
/* 4BB68 8004AF68 AFA40000 */  sw         $a0, 0x0($sp)
/* 4BB6C 8004AF6C 3C02802D */  lui        $v0, %hi(D_802D1164)
/* 4BB70 8004AF70 00451021 */  addu       $v0, $v0, $a1
/* 4BB74 8004AF74 94421164 */  lhu        $v0, %lo(D_802D1164)($v0)
/* 4BB78 8004AF78 A7A20004 */  sh         $v0, 0x4($sp)
/* 4BB7C 8004AF7C 3C02802D */  lui        $v0, %hi(D_802D1168)
/* 4BB80 8004AF80 00451021 */  addu       $v0, $v0, $a1
/* 4BB84 8004AF84 8C421168 */  lw         $v0, %lo(D_802D1168)($v0)
/* 4BB88 8004AF88 AFA20008 */  sw         $v0, 0x8($sp)
/* 4BB8C 8004AF8C 3C02802D */  lui        $v0, %hi(D_802D116C)
/* 4BB90 8004AF90 00451021 */  addu       $v0, $v0, $a1
/* 4BB94 8004AF94 8C42116C */  lw         $v0, %lo(D_802D116C)($v0)
/* 4BB98 8004AF98 AFA2000C */  sw         $v0, 0xC($sp)
/* 4BB9C 8004AF9C 3C02802D */  lui        $v0, %hi(D_802D1160)
/* 4BBA0 8004AFA0 00461021 */  addu       $v0, $v0, $a2
/* 4BBA4 8004AFA4 8C421160 */  lw         $v0, %lo(D_802D1160)($v0)
/* 4BBA8 8004AFA8 3C01802D */  lui        $at, %hi(D_802D1160)
/* 4BBAC 8004AFAC 00250821 */  addu       $at, $at, $a1
/* 4BBB0 8004AFB0 AC221160 */  sw         $v0, %lo(D_802D1160)($at)
/* 4BBB4 8004AFB4 3C02802D */  lui        $v0, %hi(D_802D1164)
/* 4BBB8 8004AFB8 00461021 */  addu       $v0, $v0, $a2
/* 4BBBC 8004AFBC 94421164 */  lhu        $v0, %lo(D_802D1164)($v0)
/* 4BBC0 8004AFC0 3C01802D */  lui        $at, %hi(D_802D1164)
/* 4BBC4 8004AFC4 00250821 */  addu       $at, $at, $a1
/* 4BBC8 8004AFC8 A4221164 */  sh         $v0, %lo(D_802D1164)($at)
/* 4BBCC 8004AFCC 3C02802D */  lui        $v0, %hi(D_802D1168)
/* 4BBD0 8004AFD0 00461021 */  addu       $v0, $v0, $a2
/* 4BBD4 8004AFD4 8C421168 */  lw         $v0, %lo(D_802D1168)($v0)
/* 4BBD8 8004AFD8 3C01802D */  lui        $at, %hi(D_802D1168)
/* 4BBDC 8004AFDC 00250821 */  addu       $at, $at, $a1
/* 4BBE0 8004AFE0 AC221168 */  sw         $v0, %lo(D_802D1168)($at)
/* 4BBE4 8004AFE4 3C02802D */  lui        $v0, %hi(D_802D116C)
/* 4BBE8 8004AFE8 00461021 */  addu       $v0, $v0, $a2
/* 4BBEC 8004AFEC 8C42116C */  lw         $v0, %lo(D_802D116C)($v0)
/* 4BBF0 8004AFF0 3C01802D */  lui        $at, %hi(D_802D116C)
/* 4BBF4 8004AFF4 00250821 */  addu       $at, $at, $a1
/* 4BBF8 8004AFF8 AC22116C */  sw         $v0, %lo(D_802D116C)($at)
/* 4BBFC 8004AFFC 8FA20000 */  lw         $v0, 0x0($sp)
/* 4BC00 8004B000 3C01802D */  lui        $at, %hi(D_802D1160)
/* 4BC04 8004B004 00260821 */  addu       $at, $at, $a2
/* 4BC08 8004B008 AC221160 */  sw         $v0, %lo(D_802D1160)($at)
/* 4BC0C 8004B00C 97A20004 */  lhu        $v0, 0x4($sp)
/* 4BC10 8004B010 3C01802D */  lui        $at, %hi(D_802D1164)
/* 4BC14 8004B014 00260821 */  addu       $at, $at, $a2
/* 4BC18 8004B018 A4221164 */  sh         $v0, %lo(D_802D1164)($at)
/* 4BC1C 8004B01C 8FA20008 */  lw         $v0, 0x8($sp)
/* 4BC20 8004B020 3C01802D */  lui        $at, %hi(D_802D1168)
/* 4BC24 8004B024 00260821 */  addu       $at, $at, $a2
/* 4BC28 8004B028 AC221168 */  sw         $v0, %lo(D_802D1168)($at)
/* 4BC2C 8004B02C 8FA2000C */  lw         $v0, 0xC($sp)
/* 4BC30 8004B030 00001821 */  addu       $v1, $zero, $zero
/* 4BC34 8004B034 3C01802D */  lui        $at, %hi(D_802D116C)
/* 4BC38 8004B038 00260821 */  addu       $at, $at, $a2
/* 4BC3C 8004B03C AC22116C */  sw         $v0, %lo(D_802D116C)($at)
/* 4BC40 8004B040 00E02021 */  addu       $a0, $a3, $zero
.L8004B044:
/* 4BC44 8004B044 0089102A */  slt        $v0, $a0, $t1
/* 4BC48 8004B048 1440FFBC */  bnez       $v0, .L8004AF3C
/* 4BC4C 8004B04C 00042900 */   sll       $a1, $a0, 4
.L8004B050:
/* 4BC50 8004B050 25080001 */  addiu      $t0, $t0, 0x1
/* 4BC54 8004B054 010A102A */  slt        $v0, $t0, $t2
/* 4BC58 8004B058 2C630001 */  sltiu      $v1, $v1, 0x1
/* 4BC5C 8004B05C 00431024 */  and        $v0, $v0, $v1
/* 4BC60 8004B060 1440FFB1 */  bnez       $v0, .L8004AF28
/* 4BC64 8004B064 24030001 */   addiu     $v1, $zero, 0x1
/* 4BC68 8004B068 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4BC6C 8004B06C 03E00008 */  jr         $ra
/* 4BC70 8004B070 00000000 */   nop

glabel func_8004B074
/* 4BC74 8004B074 3C03800C */  lui        $v1, %hi(D_800C45C4)
/* 4BC78 8004B078 8C6345C4 */  lw         $v1, %lo(D_800C45C4)($v1)
/* 4BC7C 8004B07C 3C02800C */  lui        $v0, %hi(D_800C45C8)
/* 4BC80 8004B080 8C4245C8 */  lw         $v0, %lo(D_800C45C8)($v0)
/* 4BC84 8004B084 27BDFF38 */  addiu      $sp, $sp, -0xC8
/* 4BC88 8004B088 AFB400C0 */  sw         $s4, 0xC0($sp)
/* 4BC8C 8004B08C 0080A021 */  addu       $s4, $a0, $zero
/* 4BC90 8004B090 AFB000B0 */  sw         $s0, 0xB0($sp)
/* 4BC94 8004B094 00008021 */  addu       $s0, $zero, $zero
/* 4BC98 8004B098 AFBF00C4 */  sw         $ra, 0xC4($sp)
/* 4BC9C 8004B09C AFB300BC */  sw         $s3, 0xBC($sp)
/* 4BCA0 8004B0A0 AFB200B8 */  sw         $s2, 0xB8($sp)
/* 4BCA4 8004B0A4 00621821 */  addu       $v1, $v1, $v0
/* 4BCA8 8004B0A8 18600007 */  blez       $v1, .L8004B0C8
/* 4BCAC 8004B0AC AFB100B4 */   sw        $s1, 0xB4($sp)
/* 4BCB0 8004B0B0 27A40010 */  addiu      $a0, $sp, 0x10
.L8004B0B4:
/* 4BCB4 8004B0B4 AC800000 */  sw         $zero, 0x0($a0)
/* 4BCB8 8004B0B8 26100001 */  addiu      $s0, $s0, 0x1
/* 4BCBC 8004B0BC 0203102A */  slt        $v0, $s0, $v1
/* 4BCC0 8004B0C0 1440FFFC */  bnez       $v0, .L8004B0B4
/* 4BCC4 8004B0C4 24840004 */   addiu     $a0, $a0, 0x4
.L8004B0C8:
/* 4BCC8 8004B0C8 3C02800C */  lui        $v0, %hi(D_800C45C4)
/* 4BCCC 8004B0CC 8C4245C4 */  lw         $v0, %lo(D_800C45C4)($v0)
/* 4BCD0 8004B0D0 3C03800C */  lui        $v1, %hi(D_800C45C8)
/* 4BCD4 8004B0D4 8C6345C8 */  lw         $v1, %lo(D_800C45C8)($v1)
/* 4BCD8 8004B0D8 00431021 */  addu       $v0, $v0, $v1
/* 4BCDC 8004B0DC 1840001D */  blez       $v0, .L8004B154
/* 4BCE0 8004B0E0 00008021 */   addu      $s0, $zero, $zero
/* 4BCE4 8004B0E4 24130001 */  addiu      $s3, $zero, 0x1
/* 4BCE8 8004B0E8 27B20010 */  addiu      $s2, $sp, 0x10
/* 4BCEC 8004B0EC 02408821 */  addu       $s1, $s2, $zero
.L8004B0F0:
/* 4BCF0 8004B0F0 3C05800C */  lui        $a1, %hi(D_800C45C4)
/* 4BCF4 8004B0F4 8CA545C4 */  lw         $a1, %lo(D_800C45C4)($a1)
/* 4BCF8 8004B0F8 3C02800C */  lui        $v0, %hi(D_800C45C8)
/* 4BCFC 8004B0FC 8C4245C8 */  lw         $v0, %lo(D_800C45C8)($v0)
/* 4BD00 8004B100 00002021 */  addu       $a0, $zero, $zero
/* 4BD04 8004B104 00A22821 */  addu       $a1, $a1, $v0
/* 4BD08 8004B108 0C012BA6 */  jal        func_8004AE98
/* 4BD0C 8004B10C 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 4BD10 8004B110 00402021 */  addu       $a0, $v0, $zero
/* 4BD14 8004B114 00041080 */  sll        $v0, $a0, 2
/* 4BD18 8004B118 00521821 */  addu       $v1, $v0, $s2
/* 4BD1C 8004B11C 8C620000 */  lw         $v0, 0x0($v1)
/* 4BD20 8004B120 1440FFF3 */  bnez       $v0, .L8004B0F0
/* 4BD24 8004B124 00000000 */   nop
/* 4BD28 8004B128 3C02800C */  lui        $v0, %hi(D_800C45C4)
/* 4BD2C 8004B12C 8C4245C4 */  lw         $v0, %lo(D_800C45C4)($v0)
/* 4BD30 8004B130 AC730000 */  sw         $s3, 0x0($v1)
/* 4BD34 8004B134 3C03800C */  lui        $v1, %hi(D_800C45C8)
/* 4BD38 8004B138 8C6345C8 */  lw         $v1, %lo(D_800C45C8)($v1)
/* 4BD3C 8004B13C AE240040 */  sw         $a0, 0x40($s1)
/* 4BD40 8004B140 26100001 */  addiu      $s0, $s0, 0x1
/* 4BD44 8004B144 00431021 */  addu       $v0, $v0, $v1
/* 4BD48 8004B148 0202102A */  slt        $v0, $s0, $v0
/* 4BD4C 8004B14C 1440FFE8 */  bnez       $v0, .L8004B0F0
/* 4BD50 8004B150 26310004 */   addiu     $s1, $s1, 0x4
.L8004B154:
/* 4BD54 8004B154 3C06800C */  lui        $a2, %hi(D_800C45C4)
/* 4BD58 8004B158 8CC645C4 */  lw         $a2, %lo(D_800C45C4)($a2)
/* 4BD5C 8004B15C 3C05800C */  lui        $a1, %hi(D_800C45C8)
/* 4BD60 8004B160 8CA545C8 */  lw         $a1, %lo(D_800C45C8)($a1)
/* 4BD64 8004B164 00C51021 */  addu       $v0, $a2, $a1
/* 4BD68 8004B168 18400015 */  blez       $v0, .L8004B1C0
/* 4BD6C 8004B16C 00002021 */   addu      $a0, $zero, $zero
/* 4BD70 8004B170 24080001 */  addiu      $t0, $zero, 0x1
/* 4BD74 8004B174 27A7004C */  addiu      $a3, $sp, 0x4C
/* 4BD78 8004B178 27A30010 */  addiu      $v1, $sp, 0x10
.L8004B17C:
/* 4BD7C 8004B17C 8C620000 */  lw         $v0, 0x0($v1)
/* 4BD80 8004B180 54400007 */  bnel       $v0, $zero, .L8004B1A0
/* 4BD84 8004B184 24840001 */   addiu     $a0, $a0, 0x1
/* 4BD88 8004B188 00C51021 */  addu       $v0, $a2, $a1
/* 4BD8C 8004B18C 00021080 */  sll        $v0, $v0, 2
/* 4BD90 8004B190 00E21021 */  addu       $v0, $a3, $v0
/* 4BD94 8004B194 AC680000 */  sw         $t0, 0x0($v1)
/* 4BD98 8004B198 08012C70 */  j          .L8004B1C0
/* 4BD9C 8004B19C AC440000 */   sw        $a0, 0x0($v0)
.L8004B1A0:
/* 4BDA0 8004B1A0 3C06800C */  lui        $a2, %hi(D_800C45C4)
/* 4BDA4 8004B1A4 8CC645C4 */  lw         $a2, %lo(D_800C45C4)($a2)
/* 4BDA8 8004B1A8 3C05800C */  lui        $a1, %hi(D_800C45C8)
/* 4BDAC 8004B1AC 8CA545C8 */  lw         $a1, %lo(D_800C45C8)($a1)
/* 4BDB0 8004B1B0 00C51021 */  addu       $v0, $a2, $a1
/* 4BDB4 8004B1B4 0082102A */  slt        $v0, $a0, $v0
/* 4BDB8 8004B1B8 1440FFF0 */  bnez       $v0, .L8004B17C
/* 4BDBC 8004B1BC 24630004 */   addiu     $v1, $v1, 0x4
.L8004B1C0:
/* 4BDC0 8004B1C0 3C03800C */  lui        $v1, %hi(D_800C45C4)
/* 4BDC4 8004B1C4 8C6345C4 */  lw         $v1, %lo(D_800C45C4)($v1)
/* 4BDC8 8004B1C8 3C02800C */  lui        $v0, %hi(D_800C45C8)
/* 4BDCC 8004B1CC 8C4245C8 */  lw         $v0, %lo(D_800C45C8)($v0)
/* 4BDD0 8004B1D0 00621821 */  addu       $v1, $v1, $v0
/* 4BDD4 8004B1D4 1860000E */  blez       $v1, .L8004B210
/* 4BDD8 8004B1D8 00008021 */   addu      $s0, $zero, $zero
/* 4BDDC 8004B1DC 2406FFFF */  addiu      $a2, $zero, -0x1
/* 4BDE0 8004B1E0 02802021 */  addu       $a0, $s4, $zero
/* 4BDE4 8004B1E4 27A50010 */  addiu      $a1, $sp, 0x10
.L8004B1E8:
/* 4BDE8 8004B1E8 8C820000 */  lw         $v0, 0x0($a0)
/* 4BDEC 8004B1EC 14460005 */  bne        $v0, $a2, .L8004B204
/* 4BDF0 8004B1F0 26100001 */   addiu     $s0, $s0, 0x1
/* 4BDF4 8004B1F4 8CA20040 */  lw         $v0, 0x40($a1)
/* 4BDF8 8004B1F8 24A50004 */  addiu      $a1, $a1, 0x4
/* 4BDFC 8004B1FC 24420001 */  addiu      $v0, $v0, 0x1
/* 4BE00 8004B200 AC820000 */  sw         $v0, 0x0($a0)
.L8004B204:
/* 4BE04 8004B204 0203102A */  slt        $v0, $s0, $v1
/* 4BE08 8004B208 1440FFF7 */  bnez       $v0, .L8004B1E8
/* 4BE0C 8004B20C 24840004 */   addiu     $a0, $a0, 0x4
.L8004B210:
/* 4BE10 8004B210 8FBF00C4 */  lw         $ra, 0xC4($sp)
/* 4BE14 8004B214 8FB400C0 */  lw         $s4, 0xC0($sp)
/* 4BE18 8004B218 8FB300BC */  lw         $s3, 0xBC($sp)
/* 4BE1C 8004B21C 8FB200B8 */  lw         $s2, 0xB8($sp)
/* 4BE20 8004B220 8FB100B4 */  lw         $s1, 0xB4($sp)
/* 4BE24 8004B224 8FB000B0 */  lw         $s0, 0xB0($sp)
/* 4BE28 8004B228 03E00008 */  jr         $ra
/* 4BE2C 8004B22C 27BD00C8 */   addiu     $sp, $sp, 0xC8

glabel func_8004B230
/* 4BE30 8004B230 03E00008 */  jr         $ra
/* 4BE34 8004B234 00000000 */   nop

glabel func_8004B238
/* 4BE38 8004B238 3C02803F */  lui        $v0, %hi(D_803ED3DC)
/* 4BE3C 8004B23C 9042D3DC */  lbu        $v0, %lo(D_803ED3DC)($v0)
/* 4BE40 8004B240 3C04803F */  lui        $a0, %hi(D_803ED3D1)
/* 4BE44 8004B244 9084D3D1 */  lbu        $a0, %lo(D_803ED3D1)($a0)
/* 4BE48 8004B248 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 4BE4C 8004B24C AFBF0074 */  sw         $ra, 0x74($sp)
/* 4BE50 8004B250 AFB60070 */  sw         $s6, 0x70($sp)
/* 4BE54 8004B254 AFB5006C */  sw         $s5, 0x6C($sp)
/* 4BE58 8004B258 AFB40068 */  sw         $s4, 0x68($sp)
/* 4BE5C 8004B25C AFB30064 */  sw         $s3, 0x64($sp)
/* 4BE60 8004B260 AFB20060 */  sw         $s2, 0x60($sp)
/* 4BE64 8004B264 AFB1005C */  sw         $s1, 0x5C($sp)
/* 4BE68 8004B268 AFB00058 */  sw         $s0, 0x58($sp)
/* 4BE6C 8004B26C 00021880 */  sll        $v1, $v0, 2
/* 4BE70 8004B270 00621821 */  addu       $v1, $v1, $v0
/* 4BE74 8004B274 000318C0 */  sll        $v1, $v1, 3
/* 4BE78 8004B278 00041140 */  sll        $v0, $a0, 5
/* 4BE7C 8004B27C 00441023 */  subu       $v0, $v0, $a0
/* 4BE80 8004B280 00021100 */  sll        $v0, $v0, 4
/* 4BE84 8004B284 00621821 */  addu       $v1, $v1, $v0
/* 4BE88 8004B288 3C14803F */  lui        $s4, %hi(D_803ED430)
/* 4BE8C 8004B28C 0283A021 */  addu       $s4, $s4, $v1
/* 4BE90 8004B290 9694D430 */  lhu        $s4, %lo(D_803ED430)($s4)
/* 4BE94 8004B294 2682FC18 */  addiu      $v0, $s4, -0x3E8
/* 4BE98 8004B298 2C4205DD */  sltiu      $v0, $v0, 0x5DD
/* 4BE9C 8004B29C 14400002 */  bnez       $v0, .L8004B2A8
/* 4BEA0 8004B2A0 00008821 */   addu      $s1, $zero, $zero
/* 4BEA4 8004B2A4 241403E8 */  addiu      $s4, $zero, 0x3E8
.L8004B2A8:
/* 4BEA8 8004B2A8 00008021 */  addu       $s0, $zero, $zero
/* 4BEAC 8004B2AC 001010C0 */  sll        $v0, $s0, 3
.L8004B2B0:
/* 4BEB0 8004B2B0 00501021 */  addu       $v0, $v0, $s0
/* 4BEB4 8004B2B4 00021080 */  sll        $v0, $v0, 2
/* 4BEB8 8004B2B8 00501021 */  addu       $v0, $v0, $s0
/* 4BEBC 8004B2BC 00021080 */  sll        $v0, $v0, 2
/* 4BEC0 8004B2C0 3C04800C */  lui        $a0, %hi(D_800BFBB0)
/* 4BEC4 8004B2C4 00822021 */  addu       $a0, $a0, $v0
/* 4BEC8 8004B2C8 8C84FBB0 */  lw         $a0, %lo(D_800BFBB0)($a0)
/* 4BECC 8004B2CC 00101900 */  sll        $v1, $s0, 4
/* 4BED0 8004B2D0 3C01802D */  lui        $at, %hi(D_802D1168)
/* 4BED4 8004B2D4 00230821 */  addu       $at, $at, $v1
/* 4BED8 8004B2D8 AC241168 */  sw         $a0, %lo(D_802D1168)($at)
/* 4BEDC 8004B2DC 3C04800C */  lui        $a0, %hi(D_800BFC40)
/* 4BEE0 8004B2E0 00822021 */  addu       $a0, $a0, $v0
/* 4BEE4 8004B2E4 8C84FC40 */  lw         $a0, %lo(D_800BFC40)($a0)
/* 4BEE8 8004B2E8 26020001 */  addiu      $v0, $s0, 0x1
/* 4BEEC 8004B2EC 00408021 */  addu       $s0, $v0, $zero
/* 4BEF0 8004B2F0 2A020080 */  slti       $v0, $s0, 0x80
/* 4BEF4 8004B2F4 3C01802D */  lui        $at, %hi(D_802D1164)
/* 4BEF8 8004B2F8 00230821 */  addu       $at, $at, $v1
/* 4BEFC 8004B2FC A4301164 */  sh         $s0, %lo(D_802D1164)($at)
/* 4BF00 8004B300 3C01802D */  lui        $at, %hi(D_802D116C)
/* 4BF04 8004B304 00230821 */  addu       $at, $at, $v1
/* 4BF08 8004B308 AC20116C */  sw         $zero, %lo(D_802D116C)($at)
/* 4BF0C 8004B30C 3C01802D */  lui        $at, %hi(D_802D1160)
/* 4BF10 8004B310 00230821 */  addu       $at, $at, $v1
/* 4BF14 8004B314 AC241160 */  sw         $a0, %lo(D_802D1160)($at)
/* 4BF18 8004B318 1440FFE5 */  bnez       $v0, .L8004B2B0
/* 4BF1C 8004B31C 001010C0 */   sll       $v0, $s0, 3
/* 4BF20 8004B320 0C012BC5 */  jal        func_8004AF14
/* 4BF24 8004B324 00000000 */   nop
/* 4BF28 8004B328 3C03803F */  lui        $v1, %hi(D_803ED3E2)
/* 4BF2C 8004B32C 9063D3E2 */  lbu        $v1, %lo(D_803ED3E2)($v1)
/* 4BF30 8004B330 24020001 */  addiu      $v0, $zero, 0x1
/* 4BF34 8004B334 1062000B */  beq        $v1, $v0, .L8004B364
/* 4BF38 8004B338 28620002 */   slti      $v0, $v1, 0x2
/* 4BF3C 8004B33C 50400005 */  beql       $v0, $zero, .L8004B354
/* 4BF40 8004B340 24020002 */   addiu     $v0, $zero, 0x2
/* 4BF44 8004B344 50600008 */  beql       $v1, $zero, .L8004B368
/* 4BF48 8004B348 24110190 */   addiu     $s1, $zero, 0x190
/* 4BF4C 8004B34C 08012CDB */  j          .L8004B36C
/* 4BF50 8004B350 00009821 */   addu      $s3, $zero, $zero
.L8004B354:
/* 4BF54 8004B354 50620004 */  beql       $v1, $v0, .L8004B368
/* 4BF58 8004B358 24110320 */   addiu     $s1, $zero, 0x320
/* 4BF5C 8004B35C 08012CDB */  j          .L8004B36C
/* 4BF60 8004B360 00009821 */   addu      $s3, $zero, $zero
.L8004B364:
/* 4BF64 8004B364 24110258 */  addiu      $s1, $zero, 0x258
.L8004B368:
/* 4BF68 8004B368 00009821 */  addu       $s3, $zero, $zero
.L8004B36C:
/* 4BF6C 8004B36C 02912021 */  addu       $a0, $s4, $s1
/* 4BF70 8004B370 00001821 */  addu       $v1, $zero, $zero
.L8004B374:
/* 4BF74 8004B374 3C02802D */  lui        $v0, %hi(D_802D1160)
/* 4BF78 8004B378 00431021 */  addu       $v0, $v0, $v1
/* 4BF7C 8004B37C 8C421160 */  lw         $v0, %lo(D_802D1160)($v0)
/* 4BF80 8004B380 0082102A */  slt        $v0, $a0, $v0
/* 4BF84 8004B384 10400006 */  beqz       $v0, .L8004B3A0
/* 4BF88 8004B388 02609021 */   addu      $s2, $s3, $zero
/* 4BF8C 8004B38C 26730001 */  addiu      $s3, $s3, 0x1
/* 4BF90 8004B390 2A620081 */  slti       $v0, $s3, 0x81
/* 4BF94 8004B394 1440FFF7 */  bnez       $v0, .L8004B374
/* 4BF98 8004B398 24630010 */   addiu     $v1, $v1, 0x10
/* 4BF9C 8004B39C 02609021 */  addu       $s2, $s3, $zero
.L8004B3A0:
/* 4BFA0 8004B3A0 2A420081 */  slti       $v0, $s2, 0x81
/* 4BFA4 8004B3A4 1040000E */  beqz       $v0, .L8004B3E0
/* 4BFA8 8004B3A8 24020081 */   addiu     $v0, $zero, 0x81
/* 4BFAC 8004B3AC 02912023 */  subu       $a0, $s4, $s1
/* 4BFB0 8004B3B0 00121900 */  sll        $v1, $s2, 4
.L8004B3B4:
/* 4BFB4 8004B3B4 3C02802D */  lui        $v0, %hi(D_802D1160)
/* 4BFB8 8004B3B8 00431021 */  addu       $v0, $v0, $v1
/* 4BFBC 8004B3BC 8C421160 */  lw         $v0, %lo(D_802D1160)($v0)
/* 4BFC0 8004B3C0 0082102A */  slt        $v0, $a0, $v0
/* 4BFC4 8004B3C4 10400006 */  beqz       $v0, .L8004B3E0
/* 4BFC8 8004B3C8 24020081 */   addiu     $v0, $zero, 0x81
/* 4BFCC 8004B3CC 26520001 */  addiu      $s2, $s2, 0x1
/* 4BFD0 8004B3D0 2A420081 */  slti       $v0, $s2, 0x81
/* 4BFD4 8004B3D4 1440FFF7 */  bnez       $v0, .L8004B3B4
/* 4BFD8 8004B3D8 24630010 */   addiu     $v1, $v1, 0x10
/* 4BFDC 8004B3DC 24020081 */  addiu      $v0, $zero, 0x81
.L8004B3E0:
/* 4BFE0 8004B3E0 52420001 */  beql       $s2, $v0, .L8004B3E8
/* 4BFE4 8004B3E4 24120080 */   addiu     $s2, $zero, 0x80
.L8004B3E8:
/* 4BFE8 8004B3E8 3C04800C */  lui        $a0, %hi(D_800C45C4)
/* 4BFEC 8004B3EC 8C8445C4 */  lw         $a0, %lo(D_800C45C4)($a0)
/* 4BFF0 8004B3F0 3C03800C */  lui        $v1, %hi(D_800C45C8)
/* 4BFF4 8004B3F4 8C6345C8 */  lw         $v1, %lo(D_800C45C8)($v1)
/* 4BFF8 8004B3F8 02531023 */  subu       $v0, $s2, $s3
/* 4BFFC 8004B3FC 00832821 */  addu       $a1, $a0, $v1
/* 4C000 8004B400 0045102A */  slt        $v0, $v0, $a1
/* 4C004 8004B404 10400002 */  beqz       $v0, .L8004B410
/* 4C008 8004B408 2642FFFB */   addiu     $v0, $s2, -0x5
/* 4C00C 8004B40C 00459823 */  subu       $s3, $v0, $a1
.L8004B410:
/* 4C010 8004B410 00002021 */  addu       $a0, $zero, $zero
/* 4C014 8004B414 0C012BA6 */  jal        func_8004AE98
/* 4C018 8004B418 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 4C01C 8004B41C 3C03800C */  lui        $v1, %hi(D_800C45C4)
/* 4C020 8004B420 8C6345C4 */  lw         $v1, %lo(D_800C45C4)($v1)
/* 4C024 8004B424 3C04800C */  lui        $a0, %hi(D_800C45C8)
/* 4C028 8004B428 8C8445C8 */  lw         $a0, %lo(D_800C45C8)($a0)
/* 4C02C 8004B42C 00408821 */  addu       $s1, $v0, $zero
/* 4C030 8004B430 00641021 */  addu       $v0, $v1, $a0
/* 4C034 8004B434 18400040 */  blez       $v0, .L8004B538
/* 4C038 8004B438 00008021 */   addu      $s0, $zero, $zero
/* 4C03C 8004B43C 2414FFFF */  addiu      $s4, $zero, -0x1
/* 4C040 8004B440 24160001 */  addiu      $s6, $zero, 0x1
/* 4C044 8004B444 2415FFFE */  addiu      $s5, $zero, -0x2
.L8004B448:
/* 4C048 8004B448 56110011 */  bnel       $s0, $s1, .L8004B490
/* 4C04C 8004B44C 02602021 */   addu      $a0, $s3, $zero
/* 4C050 8004B450 02231021 */  addu       $v0, $s1, $v1
/* 4C054 8004B454 3C03803F */  lui        $v1, %hi(D_803ED3D1)
/* 4C058 8004B458 9063D3D1 */  lbu        $v1, %lo(D_803ED3D1)($v1)
/* 4C05C 8004B45C 00441021 */  addu       $v0, $v0, $a0
/* 4C060 8004B460 00021100 */  sll        $v0, $v0, 4
/* 4C064 8004B464 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4C068 8004B468 00220821 */  addu       $at, $at, $v0
/* 4C06C 8004B46C AC34AF14 */  sw         $s4, %lo(D_802CAF14)($at)
/* 4C070 8004B470 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4C074 8004B474 00220821 */  addu       $at, $at, $v0
/* 4C078 8004B478 AC34AF18 */  sw         $s4, %lo(D_802CAF18)($at)
/* 4C07C 8004B47C 3C01802D */  lui        $at, %hi(D_802CAF10)
/* 4C080 8004B480 00220821 */  addu       $at, $at, $v0
/* 4C084 8004B484 AC23AF10 */  sw         $v1, %lo(D_802CAF10)($at)
/* 4C088 8004B488 08012D46 */  j          .L8004B518
/* 4C08C 8004B48C 26300001 */   addiu     $s0, $s1, 0x1
.L8004B490:
/* 4C090 8004B490 0C012BA6 */  jal        func_8004AE98
/* 4C094 8004B494 02402821 */   addu      $a1, $s2, $zero
/* 4C098 8004B498 00022900 */  sll        $a1, $v0, 4
/* 4C09C 8004B49C 3C02802D */  lui        $v0, %hi(D_802D116C)
/* 4C0A0 8004B4A0 00451021 */  addu       $v0, $v0, $a1
/* 4C0A4 8004B4A4 8C42116C */  lw         $v0, %lo(D_802D116C)($v0)
/* 4C0A8 8004B4A8 1440001B */  bnez       $v0, .L8004B518
/* 4C0AC 8004B4AC 00000000 */   nop
/* 4C0B0 8004B4B0 3C02800C */  lui        $v0, %hi(D_800C45C4)
/* 4C0B4 8004B4B4 8C4245C4 */  lw         $v0, %lo(D_800C45C4)($v0)
/* 4C0B8 8004B4B8 3C03800C */  lui        $v1, %hi(D_800C45C8)
/* 4C0BC 8004B4BC 8C6345C8 */  lw         $v1, %lo(D_800C45C8)($v1)
/* 4C0C0 8004B4C0 3C04802D */  lui        $a0, %hi(D_802D1168)
/* 4C0C4 8004B4C4 00852021 */  addu       $a0, $a0, $a1
/* 4C0C8 8004B4C8 8C841168 */  lw         $a0, %lo(D_802D1168)($a0)
/* 4C0CC 8004B4CC 3C01802D */  lui        $at, %hi(D_802D116C)
/* 4C0D0 8004B4D0 00250821 */  addu       $at, $at, $a1
/* 4C0D4 8004B4D4 AC36116C */  sw         $s6, %lo(D_802D116C)($at)
/* 4C0D8 8004B4D8 02021021 */  addu       $v0, $s0, $v0
/* 4C0DC 8004B4DC 00431021 */  addu       $v0, $v0, $v1
/* 4C0E0 8004B4E0 00021100 */  sll        $v0, $v0, 4
/* 4C0E4 8004B4E4 3C01802D */  lui        $at, %hi(D_802CAF10)
/* 4C0E8 8004B4E8 00220821 */  addu       $at, $at, $v0
/* 4C0EC 8004B4EC AC24AF10 */  sw         $a0, %lo(D_802CAF10)($at)
/* 4C0F0 8004B4F0 3C03802D */  lui        $v1, %hi(D_802D1164)
/* 4C0F4 8004B4F4 00651821 */  addu       $v1, $v1, $a1
/* 4C0F8 8004B4F8 84631164 */  lh         $v1, %lo(D_802D1164)($v1)
/* 4C0FC 8004B4FC 26100001 */  addiu      $s0, $s0, 0x1
/* 4C100 8004B500 3C01802D */  lui        $at, %hi(D_802CAF18)
/* 4C104 8004B504 00220821 */  addu       $at, $at, $v0
/* 4C108 8004B508 AC35AF18 */  sw         $s5, %lo(D_802CAF18)($at)
/* 4C10C 8004B50C 3C01802D */  lui        $at, %hi(D_802CAF14)
/* 4C110 8004B510 00220821 */  addu       $at, $at, $v0
/* 4C114 8004B514 AC23AF14 */  sw         $v1, %lo(D_802CAF14)($at)
.L8004B518:
/* 4C118 8004B518 3C03800C */  lui        $v1, %hi(D_800C45C4)
/* 4C11C 8004B51C 8C6345C4 */  lw         $v1, %lo(D_800C45C4)($v1)
/* 4C120 8004B520 3C04800C */  lui        $a0, %hi(D_800C45C8)
/* 4C124 8004B524 8C8445C8 */  lw         $a0, %lo(D_800C45C8)($a0)
/* 4C128 8004B528 00641021 */  addu       $v0, $v1, $a0
/* 4C12C 8004B52C 0202102A */  slt        $v0, $s0, $v0
/* 4C130 8004B530 1440FFC5 */  bnez       $v0, .L8004B448
/* 4C134 8004B534 00000000 */   nop
.L8004B538:
/* 4C138 8004B538 3C02800C */  lui        $v0, %hi(D_800C45C4)
/* 4C13C 8004B53C 8C4245C4 */  lw         $v0, %lo(D_800C45C4)($v0)
/* 4C140 8004B540 3C03800C */  lui        $v1, %hi(D_800C45C8)
/* 4C144 8004B544 8C6345C8 */  lw         $v1, %lo(D_800C45C8)($v1)
/* 4C148 8004B548 00431021 */  addu       $v0, $v0, $v1
/* 4C14C 8004B54C 02221021 */  addu       $v0, $s1, $v0
/* 4C150 8004B550 8FBF0074 */  lw         $ra, 0x74($sp)
/* 4C154 8004B554 8FB60070 */  lw         $s6, 0x70($sp)
/* 4C158 8004B558 8FB5006C */  lw         $s5, 0x6C($sp)
/* 4C15C 8004B55C 8FB40068 */  lw         $s4, 0x68($sp)
/* 4C160 8004B560 8FB30064 */  lw         $s3, 0x64($sp)
/* 4C164 8004B564 8FB20060 */  lw         $s2, 0x60($sp)
/* 4C168 8004B568 8FB1005C */  lw         $s1, 0x5C($sp)
/* 4C16C 8004B56C 8FB00058 */  lw         $s0, 0x58($sp)
/* 4C170 8004B570 03E00008 */  jr         $ra
/* 4C174 8004B574 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8004B578
/* 4C178 8004B578 3C03802D */  lui        $v1, %hi(D_802CAF38)
/* 4C17C 8004B57C 8C63AF38 */  lw         $v1, %lo(D_802CAF38)($v1)
/* 4C180 8004B580 3C02802D */  lui        $v0, %hi(D_802CAF48)
/* 4C184 8004B584 8C42AF48 */  lw         $v0, %lo(D_802CAF48)($v0)
/* 4C188 8004B588 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4C18C 8004B58C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4C190 8004B590 0043102A */  slt        $v0, $v0, $v1
/* 4C194 8004B594 10400004 */  beqz       $v0, .L8004B5A8
/* 4C198 8004B598 AFB00010 */   sw        $s0, 0x10($sp)
/* 4C19C 8004B59C 24020002 */  addiu      $v0, $zero, 0x2
/* 4C1A0 8004B5A0 08012D6C */  j          .L8004B5B0
/* 4C1A4 8004B5A4 24030003 */   addiu     $v1, $zero, 0x3
.L8004B5A8:
/* 4C1A8 8004B5A8 24020003 */  addiu      $v0, $zero, 0x3
/* 4C1AC 8004B5AC 24030002 */  addiu      $v1, $zero, 0x2
.L8004B5B0:
/* 4C1B0 8004B5B0 00021100 */  sll        $v0, $v0, 4
/* 4C1B4 8004B5B4 3C05802D */  lui        $a1, %hi(D_802CAF10)
/* 4C1B8 8004B5B8 00A22821 */  addu       $a1, $a1, $v0
/* 4C1BC 8004B5BC 8CA5AF10 */  lw         $a1, %lo(D_802CAF10)($a1)
/* 4C1C0 8004B5C0 00031100 */  sll        $v0, $v1, 4
/* 4C1C4 8004B5C4 3C10802D */  lui        $s0, %hi(D_802CAF10)
/* 4C1C8 8004B5C8 02028021 */  addu       $s0, $s0, $v0
/* 4C1CC 8004B5CC 8E10AF10 */  lw         $s0, %lo(D_802CAF10)($s0)
/* 4C1D0 8004B5D0 28A20009 */  slti       $v0, $a1, 0x9
/* 4C1D4 8004B5D4 10400005 */  beqz       $v0, .L8004B5EC
/* 4C1D8 8004B5D8 24040002 */   addiu     $a0, $zero, 0x2
/* 4C1DC 8004B5DC 3C07800C */  lui        $a3, %hi(D_800C45CC)
/* 4C1E0 8004B5E0 8CE745CC */  lw         $a3, %lo(D_800C45CC)($a3)
/* 4C1E4 8004B5E4 0C021D14 */  jal        func_80087450
/* 4C1E8 8004B5E8 24060001 */   addiu     $a2, $zero, 0x1
.L8004B5EC:
/* 4C1EC 8004B5EC 2A020009 */  slti       $v0, $s0, 0x9
/* 4C1F0 8004B5F0 10400006 */  beqz       $v0, .L8004B60C
/* 4C1F4 8004B5F4 24040003 */   addiu     $a0, $zero, 0x3
/* 4C1F8 8004B5F8 3C07800C */  lui        $a3, %hi(D_800C45CC)
/* 4C1FC 8004B5FC 8CE745CC */  lw         $a3, %lo(D_800C45CC)($a3)
/* 4C200 8004B600 02002821 */  addu       $a1, $s0, $zero
/* 4C204 8004B604 0C021D14 */  jal        func_80087450
/* 4C208 8004B608 24060001 */   addiu     $a2, $zero, 0x1
.L8004B60C:
/* 4C20C 8004B60C 3C01800C */  lui        $at, %hi(D_800C45B0)
/* 4C210 8004B610 AC2045B0 */  sw         $zero, %lo(D_800C45B0)($at)
/* 4C214 8004B614 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4C218 8004B618 8FB00010 */  lw         $s0, 0x10($sp)
/* 4C21C 8004B61C 03E00008 */  jr         $ra
/* 4C220 8004B620 27BD0018 */   addiu     $sp, $sp, 0x18
/* 4C224 8004B624 00000000 */  nop
/* 4C228 8004B628 00000000 */  nop
/* 4C22C 8004B62C 00000000 */  nop
