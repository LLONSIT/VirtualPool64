.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8008A7F0
/* 8B3F0 8008A7F0 3C02803F */  lui        $v0, %hi(D_803ED3DC)
/* 8B3F4 8008A7F4 9042D3DC */  lbu        $v0, %lo(D_803ED3DC)($v0)
/* 8B3F8 8008A7F8 00021080 */  sll        $v0, $v0, 2
/* 8B3FC 8008A7FC 3C05800D */  lui        $a1, %hi(D_800CD2D4)
/* 8B400 8008A800 00A22821 */  addu       $a1, $a1, $v0
/* 8B404 8008A804 8CA5D2D4 */  lw         $a1, %lo(D_800CD2D4)($a1)
/* 8B408 8008A808 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8B40C 8008A80C 3C04802C */  lui        $a0, %hi(D_802C2360)
/* 8B410 8008A810 24842360 */  addiu      $a0, $a0, %lo(D_802C2360)
/* 8B414 8008A814 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8B418 8008A818 0C026C94 */  jal        func_8009B250
/* 8B41C 8008A81C 00000000 */   nop
/* 8B420 8008A820 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8B424 8008A824 03E00008 */  jr         $ra
/* 8B428 8008A828 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008A82C
/* 8B42C 8008A82C 3C02802C */  lui        $v0, %hi(D_802C2360)
/* 8B430 8008A830 03E00008 */  jr         $ra
/* 8B434 8008A834 24422360 */   addiu     $v0, $v0, %lo(D_802C2360)

glabel func_8008A838
/* 8B438 8008A838 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8B43C 8008A83C AFB1001C */  sw         $s1, 0x1C($sp)
/* 8B440 8008A840 00808821 */  addu       $s1, $a0, $zero
/* 8B444 8008A844 AFB00018 */  sw         $s0, 0x18($sp)
/* 8B448 8008A848 00118040 */  sll        $s0, $s1, 1
/* 8B44C 8008A84C AFBF0020 */  sw         $ra, 0x20($sp)
/* 8B450 8008A850 3C01802C */  lui        $at, %hi(D_802C2360)
/* 8B454 8008A854 A0202360 */  sb         $zero, %lo(D_802C2360)($at)
/* 8B458 8008A858 0C001566 */  jal        func_80005598
/* 8B45C 8008A85C 240400B3 */   addiu     $a0, $zero, 0xB3
/* 8B460 8008A860 0C0015B7 */  jal        func_800056DC
/* 8B464 8008A864 240400B3 */   addiu     $a0, $zero, 0xB3
/* 8B468 8008A868 00402821 */  addu       $a1, $v0, $zero
/* 8B46C 8008A86C 10A00010 */  beqz       $a1, .L8008A8B0
/* 8B470 8008A870 2403FFFF */   addiu     $v1, $zero, -0x1
/* 8B474 8008A874 2610FFFF */  addiu      $s0, $s0, -0x1
.L8008A878:
/* 8B478 8008A878 1203000D */  beq        $s0, $v1, .L8008A8B0
/* 8B47C 8008A87C 00000000 */   nop
/* 8B480 8008A880 80A20000 */  lb         $v0, 0x0($a1)
/* 8B484 8008A884 10400004 */  beqz       $v0, .L8008A898
/* 8B488 8008A888 24A50001 */   addiu     $a1, $a1, 0x1
.L8008A88C:
/* 8B48C 8008A88C 80A20000 */  lb         $v0, 0x0($a1)
/* 8B490 8008A890 1440FFFE */  bnez       $v0, .L8008A88C
/* 8B494 8008A894 24A50001 */   addiu     $a1, $a1, 0x1
.L8008A898:
/* 8B498 8008A898 80A20000 */  lb         $v0, 0x0($a1)
/* 8B49C 8008A89C 0002102B */  sltu       $v0, $zero, $v0
/* 8B4A0 8008A8A0 00021023 */  negu       $v0, $v0
/* 8B4A4 8008A8A4 00A22824 */  and        $a1, $a1, $v0
/* 8B4A8 8008A8A8 54A0FFF3 */  bnel       $a1, $zero, .L8008A878
/* 8B4AC 8008A8AC 2610FFFF */   addiu     $s0, $s0, -0x1
.L8008A8B0:
/* 8B4B0 8008A8B0 3C04802C */  lui        $a0, %hi(D_802C2360)
/* 8B4B4 8008A8B4 24842360 */  addiu      $a0, $a0, %lo(D_802C2360)
/* 8B4B8 8008A8B8 0C026C94 */  jal        func_8009B250
/* 8B4BC 8008A8BC 263100B4 */   addiu     $s1, $s1, 0xB4
/* 8B4C0 8008A8C0 0C0015AF */  jal        func_800056BC
/* 8B4C4 8008A8C4 240400B3 */   addiu     $a0, $zero, 0xB3
/* 8B4C8 8008A8C8 0C001566 */  jal        func_80005598
/* 8B4CC 8008A8CC 02202021 */   addu      $a0, $s1, $zero
/* 8B4D0 8008A8D0 0C0015B7 */  jal        func_800056DC
/* 8B4D4 8008A8D4 02202021 */   addu      $a0, $s1, $zero
/* 8B4D8 8008A8D8 00403821 */  addu       $a3, $v0, $zero
/* 8B4DC 8008A8DC 3C088031 */  lui        $t0, %hi(D_803126D8)
/* 8B4E0 8008A8E0 250826D8 */  addiu      $t0, $t0, %lo(D_803126D8)
/* 8B4E4 8008A8E4 00E81025 */  or         $v0, $a3, $t0
/* 8B4E8 8008A8E8 30420003 */  andi       $v0, $v0, 0x3
/* 8B4EC 8008A8EC 10400017 */  beqz       $v0, .L8008A94C
/* 8B4F0 8008A8F0 00E03021 */   addu      $a2, $a3, $zero
/* 8B4F4 8008A8F4 24E901E0 */  addiu      $t1, $a3, 0x1E0
.L8008A8F8:
/* 8B4F8 8008A8F8 88C20000 */  lwl        $v0, 0x0($a2)
/* 8B4FC 8008A8FC 98C20003 */  lwr        $v0, 0x3($a2)
/* 8B500 8008A900 88C30004 */  lwl        $v1, 0x4($a2)
/* 8B504 8008A904 98C30007 */  lwr        $v1, 0x7($a2)
/* 8B508 8008A908 88C40008 */  lwl        $a0, 0x8($a2)
/* 8B50C 8008A90C 98C4000B */  lwr        $a0, 0xB($a2)
/* 8B510 8008A910 88C5000C */  lwl        $a1, 0xC($a2)
/* 8B514 8008A914 98C5000F */  lwr        $a1, 0xF($a2)
/* 8B518 8008A918 A9020000 */  swl        $v0, 0x0($t0)
/* 8B51C 8008A91C B9020003 */  swr        $v0, 0x3($t0)
/* 8B520 8008A920 A9030004 */  swl        $v1, 0x4($t0)
/* 8B524 8008A924 B9030007 */  swr        $v1, 0x7($t0)
/* 8B528 8008A928 A9040008 */  swl        $a0, 0x8($t0)
/* 8B52C 8008A92C B904000B */  swr        $a0, 0xB($t0)
/* 8B530 8008A930 A905000C */  swl        $a1, 0xC($t0)
/* 8B534 8008A934 B905000F */  swr        $a1, 0xF($t0)
/* 8B538 8008A938 24C60010 */  addiu      $a2, $a2, 0x10
/* 8B53C 8008A93C 14C9FFEE */  bne        $a2, $t1, .L8008A8F8
/* 8B540 8008A940 25080010 */   addiu     $t0, $t0, 0x10
/* 8B544 8008A944 08022A60 */  j          .L8008A980
/* 8B548 8008A948 24E701E0 */   addiu     $a3, $a3, 0x1E0
.L8008A94C:
/* 8B54C 8008A94C 24E901E0 */  addiu      $t1, $a3, 0x1E0
.L8008A950:
/* 8B550 8008A950 8CC20000 */  lw         $v0, 0x0($a2)
/* 8B554 8008A954 8CC30004 */  lw         $v1, 0x4($a2)
/* 8B558 8008A958 8CC40008 */  lw         $a0, 0x8($a2)
/* 8B55C 8008A95C 8CC5000C */  lw         $a1, 0xC($a2)
/* 8B560 8008A960 AD020000 */  sw         $v0, 0x0($t0)
/* 8B564 8008A964 AD030004 */  sw         $v1, 0x4($t0)
/* 8B568 8008A968 AD040008 */  sw         $a0, 0x8($t0)
/* 8B56C 8008A96C AD05000C */  sw         $a1, 0xC($t0)
/* 8B570 8008A970 24C60010 */  addiu      $a2, $a2, 0x10
/* 8B574 8008A974 14C9FFF6 */  bne        $a2, $t1, .L8008A950
/* 8B578 8008A978 25080010 */   addiu     $t0, $t0, 0x10
/* 8B57C 8008A97C 24E701E0 */  addiu      $a3, $a3, 0x1E0
.L8008A980:
/* 8B580 8008A980 3C08803F */  lui        $t0, %hi(D_803ED0B0)
/* 8B584 8008A984 2508D0B0 */  addiu      $t0, $t0, %lo(D_803ED0B0)
/* 8B588 8008A988 00E81025 */  or         $v0, $a3, $t0
/* 8B58C 8008A98C 30420003 */  andi       $v0, $v0, 0x3
/* 8B590 8008A990 10400017 */  beqz       $v0, .L8008A9F0
/* 8B594 8008A994 00E03021 */   addu      $a2, $a3, $zero
/* 8B598 8008A998 24E90300 */  addiu      $t1, $a3, 0x300
.L8008A99C:
/* 8B59C 8008A99C 88C20000 */  lwl        $v0, 0x0($a2)
/* 8B5A0 8008A9A0 98C20003 */  lwr        $v0, 0x3($a2)
/* 8B5A4 8008A9A4 88C30004 */  lwl        $v1, 0x4($a2)
/* 8B5A8 8008A9A8 98C30007 */  lwr        $v1, 0x7($a2)
/* 8B5AC 8008A9AC 88C40008 */  lwl        $a0, 0x8($a2)
/* 8B5B0 8008A9B0 98C4000B */  lwr        $a0, 0xB($a2)
/* 8B5B4 8008A9B4 88C5000C */  lwl        $a1, 0xC($a2)
/* 8B5B8 8008A9B8 98C5000F */  lwr        $a1, 0xF($a2)
/* 8B5BC 8008A9BC A9020000 */  swl        $v0, 0x0($t0)
/* 8B5C0 8008A9C0 B9020003 */  swr        $v0, 0x3($t0)
/* 8B5C4 8008A9C4 A9030004 */  swl        $v1, 0x4($t0)
/* 8B5C8 8008A9C8 B9030007 */  swr        $v1, 0x7($t0)
/* 8B5CC 8008A9CC A9040008 */  swl        $a0, 0x8($t0)
/* 8B5D0 8008A9D0 B904000B */  swr        $a0, 0xB($t0)
/* 8B5D4 8008A9D4 A905000C */  swl        $a1, 0xC($t0)
/* 8B5D8 8008A9D8 B905000F */  swr        $a1, 0xF($t0)
/* 8B5DC 8008A9DC 24C60010 */  addiu      $a2, $a2, 0x10
/* 8B5E0 8008A9E0 14C9FFEE */  bne        $a2, $t1, .L8008A99C
/* 8B5E4 8008A9E4 25080010 */   addiu     $t0, $t0, 0x10
/* 8B5E8 8008A9E8 08022A89 */  j          .L8008AA24
/* 8B5EC 8008A9EC 24E70300 */   addiu     $a3, $a3, 0x300
.L8008A9F0:
/* 8B5F0 8008A9F0 24E90300 */  addiu      $t1, $a3, 0x300
.L8008A9F4:
/* 8B5F4 8008A9F4 8CC20000 */  lw         $v0, 0x0($a2)
/* 8B5F8 8008A9F8 8CC30004 */  lw         $v1, 0x4($a2)
/* 8B5FC 8008A9FC 8CC40008 */  lw         $a0, 0x8($a2)
/* 8B600 8008AA00 8CC5000C */  lw         $a1, 0xC($a2)
/* 8B604 8008AA04 AD020000 */  sw         $v0, 0x0($t0)
/* 8B608 8008AA08 AD030004 */  sw         $v1, 0x4($t0)
/* 8B60C 8008AA0C AD040008 */  sw         $a0, 0x8($t0)
/* 8B610 8008AA10 AD05000C */  sw         $a1, 0xC($t0)
/* 8B614 8008AA14 24C60010 */  addiu      $a2, $a2, 0x10
/* 8B618 8008AA18 14C9FFF6 */  bne        $a2, $t1, .L8008A9F4
/* 8B61C 8008AA1C 25080010 */   addiu     $t0, $t0, 0x10
/* 8B620 8008AA20 24E70300 */  addiu      $a3, $a3, 0x300
.L8008AA24:
/* 8B624 8008AA24 D4E00000 */  ldc1       $f0, 0x0($a3)
/* 8B628 8008AA28 3C01800C */  lui        $at, %hi(D_800C6830)
/* 8B62C 8008AA2C F4206830 */  sdc1       $f0, %lo(D_800C6830)($at)
/* 8B630 8008AA30 D4E00008 */  ldc1       $f0, 0x8($a3)
/* 8B634 8008AA34 3C01802C */  lui        $at, %hi(D_802C6078)
/* 8B638 8008AA38 F4206078 */  sdc1       $f0, %lo(D_802C6078)($at)
/* 8B63C 8008AA3C D4E00010 */  ldc1       $f0, 0x10($a3)
/* 8B640 8008AA40 3C01802C */  lui        $at, %hi(D_802C7940)
/* 8B644 8008AA44 F4207940 */  sdc1       $f0, %lo(D_802C7940)($at)
/* 8B648 8008AA48 D4E00018 */  ldc1       $f0, 0x18($a3)
/* 8B64C 8008AA4C 3C01802C */  lui        $at, %hi(D_802C6080)
/* 8B650 8008AA50 F4206080 */  sdc1       $f0, %lo(D_802C6080)($at)
/* 8B654 8008AA54 D4E00020 */  ldc1       $f0, 0x20($a3)
/* 8B658 8008AA58 3C01802F */  lui        $at, %hi(D_802F08C8)
/* 8B65C 8008AA5C F42008C8 */  sdc1       $f0, %lo(D_802F08C8)($at)
/* 8B660 8008AA60 D4E00028 */  ldc1       $f0, 0x28($a3)
/* 8B664 8008AA64 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 8B668 8008AA68 F42069E0 */  sdc1       $f0, %lo(D_800C69E0)($at)
/* 8B66C 8008AA6C D4E00030 */  ldc1       $f0, 0x30($a3)
/* 8B670 8008AA70 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 8B674 8008AA74 F4206B50 */  sdc1       $f0, %lo(D_800C6B50)($at)
/* 8B678 8008AA78 8CE20038 */  lw         $v0, 0x38($a3)
/* 8B67C 8008AA7C 3C01802F */  lui        $at, %hi(D_802EF218)
/* 8B680 8008AA80 AC22F218 */  sw         $v0, %lo(D_802EF218)($at)
/* 8B684 8008AA84 84E20040 */  lh         $v0, 0x40($a3)
/* 8B688 8008AA88 8CE4003C */  lw         $a0, 0x3C($a3)
/* 8B68C 8008AA8C 3C01802C */  lui        $at, %hi(D_802C668C)
/* 8B690 8008AA90 AC22668C */  sw         $v0, %lo(D_802C668C)($at)
/* 8B694 8008AA94 84E20042 */  lh         $v0, 0x42($a3)
/* 8B698 8008AA98 3C01802F */  lui        $at, %hi(D_802F0920)
/* 8B69C 8008AA9C AC220920 */  sw         $v0, %lo(D_802F0920)($at)
/* 8B6A0 8008AAA0 84E20044 */  lh         $v0, 0x44($a3)
/* 8B6A4 8008AAA4 3C01802D */  lui        $at, %hi(D_802D1D18)
/* 8B6A8 8008AAA8 AC221D18 */  sw         $v0, %lo(D_802D1D18)($at)
/* 8B6AC 8008AAAC 84E20046 */  lh         $v0, 0x46($a3)
/* 8B6B0 8008AAB0 3C01802D */  lui        $at, %hi(D_802D0C84)
/* 8B6B4 8008AAB4 AC220C84 */  sw         $v0, %lo(D_802D0C84)($at)
/* 8B6B8 8008AAB8 84E20048 */  lh         $v0, 0x48($a3)
/* 8B6BC 8008AABC 00004021 */  addu       $t0, $zero, $zero
/* 8B6C0 8008AAC0 3C06800C */  lui        $a2, %hi(D_800C48C0)
/* 8B6C4 8008AAC4 24C648C0 */  addiu      $a2, $a2, %lo(D_800C48C0)
/* 8B6C8 8008AAC8 3C01802F */  lui        $at, %hi(D_802EF320)
/* 8B6CC 8008AACC AC22F320 */  sw         $v0, %lo(D_802EF320)($at)
/* 8B6D0 8008AAD0 84E3004A */  lh         $v1, 0x4A($a3)
/* 8B6D4 8008AAD4 00002821 */  addu       $a1, $zero, $zero
/* 8B6D8 8008AAD8 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8B6DC 8008AADC 3C018031 */  lui        $at, %hi(D_803128AF)
/* 8B6E0 8008AAE0 A02228AF */  sb         $v0, %lo(D_803128AF)($at)
/* 8B6E4 8008AAE4 3C018031 */  lui        $at, %hi(D_803128B0)
/* 8B6E8 8008AAE8 A02228B0 */  sb         $v0, %lo(D_803128B0)($at)
/* 8B6EC 8008AAEC 24020002 */  addiu      $v0, $zero, 0x2
/* 8B6F0 8008AAF0 3C018031 */  lui        $at, %hi(D_803128AE)
/* 8B6F4 8008AAF4 A02028AE */  sb         $zero, %lo(D_803128AE)($at)
/* 8B6F8 8008AAF8 3C018031 */  lui        $at, %hi(D_803128A2)
/* 8B6FC 8008AAFC A42028A2 */  sh         $zero, %lo(D_803128A2)($at)
/* 8B700 8008AB00 3C01802C */  lui        $at, %hi(D_802C7930)
/* 8B704 8008AB04 AC237930 */  sw         $v1, %lo(D_802C7930)($at)
/* 8B708 8008AB08 3C018031 */  lui        $at, %hi(D_80312888)
/* 8B70C 8008AB0C A4202888 */  sh         $zero, %lo(D_80312888)($at)
/* 8B710 8008AB10 3C018031 */  lui        $at, %hi(D_803128A6)
/* 8B714 8008AB14 A02228A6 */  sb         $v0, %lo(D_803128A6)($at)
/* 8B718 8008AB18 24020003 */  addiu      $v0, $zero, 0x3
/* 8B71C 8008AB1C 3C018031 */  lui        $at, %hi(D_8031288A)
/* 8B720 8008AB20 A420288A */  sh         $zero, %lo(D_8031288A)($at)
/* 8B724 8008AB24 3C018031 */  lui        $at, %hi(D_803128A7)
/* 8B728 8008AB28 A02228A7 */  sb         $v0, %lo(D_803128A7)($at)
/* 8B72C 8008AB2C 3C018031 */  lui        $at, %hi(D_803128A4)
/* 8B730 8008AB30 A02028A4 */  sb         $zero, %lo(D_803128A4)($at)
/* 8B734 8008AB34 3C018031 */  lui        $at, %hi(D_803128A5)
/* 8B738 8008AB38 A02028A5 */  sb         $zero, %lo(D_803128A5)($at)
.L8008AB3C:
/* 8B73C 8008AB3C 90C20000 */  lbu        $v0, 0x0($a2)
/* 8B740 8008AB40 24C60002 */  addiu      $a2, $a2, 0x2
/* 8B744 8008AB44 25080001 */  addiu      $t0, $t0, 0x1
/* 8B748 8008AB48 3C01803F */  lui        $at, %hi(D_803ED0D8)
/* 8B74C 8008AB4C 00250821 */  addu       $at, $at, $a1
/* 8B750 8008AB50 A022D0D8 */  sb         $v0, %lo(D_803ED0D8)($at)
/* 8B754 8008AB54 29020010 */  slti       $v0, $t0, 0x10
/* 8B758 8008AB58 1440FFF8 */  bnez       $v0, .L8008AB3C
/* 8B75C 8008AB5C 24A50030 */   addiu     $a1, $a1, 0x30
/* 8B760 8008AB60 3C018031 */  lui        $at, %hi(D_80312780)
/* 8B764 8008AB64 D4202780 */  ldc1       $f0, %lo(D_80312780)($at)
/* 8B768 8008AB68 3C01800D */  lui        $at, %hi(D_800D6970)
/* 8B76C 8008AB6C D4246970 */  ldc1       $f4, %lo(D_800D6970)($at)
/* 8B770 8008AB70 4620203C */  c.lt.d     $f4, $f0
/* 8B774 8008AB74 00000000 */  nop
/* 8B778 8008AB78 4500007F */  bc1f       .L8008AD78
/* 8B77C 8008AB7C 00000000 */   nop
/* 8B780 8008AB80 3C01800D */  lui        $at, %hi(D_800D6978)
/* 8B784 8008AB84 D4226978 */  ldc1       $f2, %lo(D_800D6978)($at)
/* 8B788 8008AB88 4622003C */  c.lt.d     $f0, $f2
/* 8B78C 8008AB8C 00000000 */  nop
/* 8B790 8008AB90 45000079 */  bc1f       .L8008AD78
/* 8B794 8008AB94 00000000 */   nop
/* 8B798 8008AB98 3C018031 */  lui        $at, %hi(D_80312788)
/* 8B79C 8008AB9C D4202788 */  ldc1       $f0, %lo(D_80312788)($at)
/* 8B7A0 8008ABA0 4620203C */  c.lt.d     $f4, $f0
/* 8B7A4 8008ABA4 00000000 */  nop
/* 8B7A8 8008ABA8 45000073 */  bc1f       .L8008AD78
/* 8B7AC 8008ABAC 00000000 */   nop
/* 8B7B0 8008ABB0 4622003C */  c.lt.d     $f0, $f2
/* 8B7B4 8008ABB4 00000000 */  nop
/* 8B7B8 8008ABB8 4500006F */  bc1f       .L8008AD78
/* 8B7BC 8008ABBC 00000000 */   nop
/* 8B7C0 8008ABC0 3C018031 */  lui        $at, %hi(D_80312790)
/* 8B7C4 8008ABC4 D4202790 */  ldc1       $f0, %lo(D_80312790)($at)
/* 8B7C8 8008ABC8 4620203C */  c.lt.d     $f4, $f0
/* 8B7CC 8008ABCC 00000000 */  nop
/* 8B7D0 8008ABD0 45000069 */  bc1f       .L8008AD78
/* 8B7D4 8008ABD4 00000000 */   nop
/* 8B7D8 8008ABD8 4622003C */  c.lt.d     $f0, $f2
/* 8B7DC 8008ABDC 00000000 */  nop
/* 8B7E0 8008ABE0 45000065 */  bc1f       .L8008AD78
/* 8B7E4 8008ABE4 00000000 */   nop
/* 8B7E8 8008ABE8 3C018031 */  lui        $at, %hi(D_803127A8)
/* 8B7EC 8008ABEC D42027A8 */  ldc1       $f0, %lo(D_803127A8)($at)
/* 8B7F0 8008ABF0 3C01800D */  lui        $at, %hi(D_800D6980)
/* 8B7F4 8008ABF4 D4246980 */  ldc1       $f4, %lo(D_800D6980)($at)
/* 8B7F8 8008ABF8 4620203C */  c.lt.d     $f4, $f0
/* 8B7FC 8008ABFC 00000000 */  nop
/* 8B800 8008AC00 4500005D */  bc1f       .L8008AD78
/* 8B804 8008AC04 00000000 */   nop
/* 8B808 8008AC08 3C01800D */  lui        $at, %hi(D_800D6988)
/* 8B80C 8008AC0C D4226988 */  ldc1       $f2, %lo(D_800D6988)($at)
/* 8B810 8008AC10 4622003C */  c.lt.d     $f0, $f2
/* 8B814 8008AC14 00000000 */  nop
/* 8B818 8008AC18 45000057 */  bc1f       .L8008AD78
/* 8B81C 8008AC1C 00000000 */   nop
/* 8B820 8008AC20 3C018031 */  lui        $at, %hi(D_803127B0)
/* 8B824 8008AC24 D42027B0 */  ldc1       $f0, %lo(D_803127B0)($at)
/* 8B828 8008AC28 4620203C */  c.lt.d     $f4, $f0
/* 8B82C 8008AC2C 00000000 */  nop
/* 8B830 8008AC30 45000051 */  bc1f       .L8008AD78
/* 8B834 8008AC34 00000000 */   nop
/* 8B838 8008AC38 4622003C */  c.lt.d     $f0, $f2
/* 8B83C 8008AC3C 00000000 */  nop
/* 8B840 8008AC40 4500004D */  bc1f       .L8008AD78
/* 8B844 8008AC44 00000000 */   nop
/* 8B848 8008AC48 3C018031 */  lui        $at, %hi(D_803127D0)
/* 8B84C 8008AC4C D42027D0 */  ldc1       $f0, %lo(D_803127D0)($at)
/* 8B850 8008AC50 4620203C */  c.lt.d     $f4, $f0
/* 8B854 8008AC54 00000000 */  nop
/* 8B858 8008AC58 45000047 */  bc1f       .L8008AD78
/* 8B85C 8008AC5C 00000000 */   nop
/* 8B860 8008AC60 4622003C */  c.lt.d     $f0, $f2
/* 8B864 8008AC64 00000000 */  nop
/* 8B868 8008AC68 45000043 */  bc1f       .L8008AD78
/* 8B86C 8008AC6C 00000000 */   nop
/* 8B870 8008AC70 3C018031 */  lui        $at, %hi(D_80312848)
/* 8B874 8008AC74 D4202848 */  ldc1       $f0, %lo(D_80312848)($at)
/* 8B878 8008AC78 3C01800D */  lui        $at, %hi(D_800D6990)
/* 8B87C 8008AC7C D4246990 */  ldc1       $f4, %lo(D_800D6990)($at)
/* 8B880 8008AC80 4620203C */  c.lt.d     $f4, $f0
/* 8B884 8008AC84 00000000 */  nop
/* 8B888 8008AC88 4500003B */  bc1f       .L8008AD78
/* 8B88C 8008AC8C 00000000 */   nop
/* 8B890 8008AC90 3C01800D */  lui        $at, %hi(D_800D6998)
/* 8B894 8008AC94 D4226998 */  ldc1       $f2, %lo(D_800D6998)($at)
/* 8B898 8008AC98 4622003C */  c.lt.d     $f0, $f2
/* 8B89C 8008AC9C 00000000 */  nop
/* 8B8A0 8008ACA0 45000035 */  bc1f       .L8008AD78
/* 8B8A4 8008ACA4 00000000 */   nop
/* 8B8A8 8008ACA8 3C018031 */  lui        $at, %hi(D_80312850)
/* 8B8AC 8008ACAC D4202850 */  ldc1       $f0, %lo(D_80312850)($at)
/* 8B8B0 8008ACB0 4620203C */  c.lt.d     $f4, $f0
/* 8B8B4 8008ACB4 00000000 */  nop
/* 8B8B8 8008ACB8 4500002F */  bc1f       .L8008AD78
/* 8B8BC 8008ACBC 00000000 */   nop
/* 8B8C0 8008ACC0 4622003C */  c.lt.d     $f0, $f2
/* 8B8C4 8008ACC4 00000000 */  nop
/* 8B8C8 8008ACC8 4500002B */  bc1f       .L8008AD78
/* 8B8CC 8008ACCC 00000000 */   nop
/* 8B8D0 8008ACD0 3C018031 */  lui        $at, %hi(D_80312858)
/* 8B8D4 8008ACD4 D4222858 */  ldc1       $f2, %lo(D_80312858)($at)
/* 8B8D8 8008ACD8 3C01800D */  lui        $at, %hi(D_800D69A0)
/* 8B8DC 8008ACDC D42069A0 */  ldc1       $f0, %lo(D_800D69A0)($at)
/* 8B8E0 8008ACE0 4622003C */  c.lt.d     $f0, $f2
/* 8B8E4 8008ACE4 00000000 */  nop
/* 8B8E8 8008ACE8 45000023 */  bc1f       .L8008AD78
/* 8B8EC 8008ACEC 00000000 */   nop
/* 8B8F0 8008ACF0 3C01800D */  lui        $at, %hi(D_800D69A8)
/* 8B8F4 8008ACF4 D42069A8 */  ldc1       $f0, %lo(D_800D69A8)($at)
/* 8B8F8 8008ACF8 4620103C */  c.lt.d     $f2, $f0
/* 8B8FC 8008ACFC 00000000 */  nop
/* 8B900 8008AD00 4500001D */  bc1f       .L8008AD78
/* 8B904 8008AD04 00000000 */   nop
/* 8B908 8008AD08 3C01800C */  lui        $at, %hi(D_800C68C8)
/* 8B90C 8008AD0C D42A68C8 */  ldc1       $f10, %lo(D_800C68C8)($at)
/* 8B910 8008AD10 3C01800C */  lui        $at, %hi(D_800C6878)
/* 8B914 8008AD14 D4206878 */  ldc1       $f0, %lo(D_800C6878)($at)
/* 8B918 8008AD18 3C01800C */  lui        $at, %hi(D_800C6880)
/* 8B91C 8008AD1C D4226880 */  ldc1       $f2, %lo(D_800C6880)($at)
/* 8B920 8008AD20 3C01800C */  lui        $at, %hi(D_800C68A0)
/* 8B924 8008AD24 D42668A0 */  ldc1       $f6, %lo(D_800C68A0)($at)
/* 8B928 8008AD28 46200007 */  neg.d      $f0, $f0
/* 8B92C 8008AD2C 3C01800C */  lui        $at, %hi(D_800C68D0)
/* 8B930 8008AD30 D42868D0 */  ldc1       $f8, %lo(D_800C68D0)($at)
/* 8B934 8008AD34 46201087 */  neg.d      $f2, $f2
/* 8B938 8008AD38 3C01800C */  lui        $at, %hi(D_800C68B8)
/* 8B93C 8008AD3C D42468B8 */  ldc1       $f4, %lo(D_800C68B8)($at)
/* 8B940 8008AD40 46203187 */  neg.d      $f6, $f6
/* 8B944 8008AD44 46202107 */  neg.d      $f4, $f4
/* 8B948 8008AD48 3C018031 */  lui        $at, %hi(D_80312848)
/* 8B94C 8008AD4C F42A2848 */  sdc1       $f10, %lo(D_80312848)($at)
/* 8B950 8008AD50 3C018031 */  lui        $at, %hi(D_80312850)
/* 8B954 8008AD54 F4282850 */  sdc1       $f8, %lo(D_80312850)($at)
/* 8B958 8008AD58 3C018031 */  lui        $at, %hi(D_803127A8)
/* 8B95C 8008AD5C F42027A8 */  sdc1       $f0, %lo(D_803127A8)($at)
/* 8B960 8008AD60 3C018031 */  lui        $at, %hi(D_803127B0)
/* 8B964 8008AD64 F42227B0 */  sdc1       $f2, %lo(D_803127B0)($at)
/* 8B968 8008AD68 3C018031 */  lui        $at, %hi(D_803127D0)
/* 8B96C 8008AD6C F42627D0 */  sdc1       $f6, %lo(D_803127D0)($at)
/* 8B970 8008AD70 3C018031 */  lui        $at, %hi(D_80312858)
/* 8B974 8008AD74 F4242858 */  sdc1       $f4, %lo(D_80312858)($at)
.L8008AD78:
/* 8B978 8008AD78 3C01800C */  lui        $at, %hi(D_800C6830)
/* 8B97C 8008AD7C D4206830 */  ldc1       $f0, %lo(D_800C6830)($at)
/* 8B980 8008AD80 3C01800D */  lui        $at, %hi(D_800D69B0)
/* 8B984 8008AD84 D42269B0 */  ldc1       $f2, %lo(D_800D69B0)($at)
/* 8B988 8008AD88 4620103E */  c.le.d     $f2, $f0
/* 8B98C 8008AD8C 00000000 */  nop
/* 8B990 8008AD90 45000003 */  bc1f       .L8008ADA0
/* 8B994 8008AD94 00000000 */   nop
/* 8B998 8008AD98 3C01800C */  lui        $at, %hi(D_800C6830)
/* 8B99C 8008AD9C F4226830 */  sdc1       $f2, %lo(D_800C6830)($at)
.L8008ADA0:
/* 8B9A0 8008ADA0 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 8B9A4 8008ADA4 D42069E0 */  ldc1       $f0, %lo(D_800C69E0)($at)
/* 8B9A8 8008ADA8 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 8B9AC 8008ADAC D4226B50 */  ldc1       $f2, %lo(D_800C6B50)($at)
/* 8B9B0 8008ADB0 44070000 */  mfc1       $a3, $f0
/* 8B9B4 8008ADB4 44060800 */  mfc1       $a2, $f1
/* 8B9B8 8008ADB8 0C01EB61 */  jal        func_8007AD84
/* 8B9BC 8008ADBC F7A20010 */   sdc1      $f2, 0x10($sp)
/* 8B9C0 8008ADC0 0C021A99 */  jal        func_80086A64
/* 8B9C4 8008ADC4 00000000 */   nop
/* 8B9C8 8008ADC8 24020001 */  addiu      $v0, $zero, 0x1
/* 8B9CC 8008ADCC 3C01800D */  lui        $at, %hi(D_800C9BB4)
/* 8B9D0 8008ADD0 AC229BB4 */  sw         $v0, %lo(D_800C9BB4)($at)
/* 8B9D4 8008ADD4 0C0015AF */  jal        func_800056BC
/* 8B9D8 8008ADD8 02202021 */   addu      $a0, $s1, $zero
/* 8B9DC 8008ADDC 24020001 */  addiu      $v0, $zero, 0x1
/* 8B9E0 8008ADE0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8B9E4 8008ADE4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 8B9E8 8008ADE8 8FB00018 */  lw         $s0, 0x18($sp)
/* 8B9EC 8008ADEC 03E00008 */  jr         $ra
/* 8B9F0 8008ADF0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8008ADF4
/* 8B9F4 8008ADF4 3C02800C */  lui        $v0, %hi(D_800C6B88)
/* 8B9F8 8008ADF8 80426B88 */  lb         $v0, %lo(D_800C6B88)($v0)
/* 8B9FC 8008ADFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8BA00 8008AE00 14400015 */  bnez       $v0, .L8008AE58
/* 8BA04 8008AE04 AFBF0010 */   sw        $ra, 0x10($sp)
/* 8BA08 8008AE08 0C022A0E */  jal        func_8008A838
/* 8BA0C 8008AE0C 00000000 */   nop
/* 8BA10 8008AE10 1040000F */  beqz       $v0, .L8008AE50
/* 8BA14 8008AE14 24020001 */   addiu     $v0, $zero, 0x1
/* 8BA18 8008AE18 0C014770 */  jal        func_80051DC0
/* 8BA1C 8008AE1C 00000000 */   nop
/* 8BA20 8008AE20 24040001 */  addiu      $a0, $zero, 0x1
/* 8BA24 8008AE24 24030001 */  addiu      $v1, $zero, 0x1
/* 8BA28 8008AE28 3C01802D */  lui        $at, %hi(D_802D2FB8)
/* 8BA2C 8008AE2C AC242FB8 */  sw         $a0, %lo(D_802D2FB8)($at)
/* 8BA30 8008AE30 3C01802F */  lui        $at, %hi(D_802F0C18)
/* 8BA34 8008AE34 AC240C18 */  sw         $a0, %lo(D_802F0C18)($at)
/* 8BA38 8008AE38 3C01800C */  lui        $at, %hi(D_800C6B8B)
/* 8BA3C 8008AE3C A0236B8B */  sb         $v1, %lo(D_800C6B8B)($at)
/* 8BA40 8008AE40 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 8BA44 8008AE44 AC2406E8 */  sw         $a0, %lo(D_802F06E8)($at)
/* 8BA48 8008AE48 08022B97 */  j          .L8008AE5C
/* 8BA4C 8008AE4C 24020001 */   addiu     $v0, $zero, 0x1
.L8008AE50:
/* 8BA50 8008AE50 3C01802D */  lui        $at, %hi(D_802D2FB8)
/* 8BA54 8008AE54 AC222FB8 */  sw         $v0, %lo(D_802D2FB8)($at)
.L8008AE58:
/* 8BA58 8008AE58 00001021 */  addu       $v0, $zero, $zero
.L8008AE5C:
/* 8BA5C 8008AE5C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8BA60 8008AE60 03E00008 */  jr         $ra
/* 8BA64 8008AE64 27BD0018 */   addiu     $sp, $sp, 0x18
/* 8BA68 8008AE68 00000000 */  nop
/* 8BA6C 8008AE6C 00000000 */  nop
