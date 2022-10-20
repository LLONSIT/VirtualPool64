.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8008B7D0
/* 8C3D0 8008B7D0 00001021 */  addu       $v0, $zero, $zero
/* 8C3D4 8008B7D4 AC800034 */  sw         $zero, 0x34($a0)
/* 8C3D8 8008B7D8 AC800030 */  sw         $zero, 0x30($a0)
/* 8C3DC 8008B7DC AC800070 */  sw         $zero, 0x70($a0)
/* 8C3E0 8008B7E0 A480009E */  sh         $zero, 0x9E($a0)
/* 8C3E4 8008B7E4 03E00008 */  jr         $ra
/* 8C3E8 8008B7E8 AC800040 */   sw        $zero, 0x40($a0)

glabel func_8008B7EC
/* 8C3EC 8008B7EC 90A60000 */  lbu        $a2, 0x0($a1)
/* 8C3F0 8008B7F0 30C20080 */  andi       $v0, $a2, 0x80
/* 8C3F4 8008B7F4 10400006 */  beqz       $v0, .L8008B810
/* 8C3F8 8008B7F8 24A50001 */   addiu     $a1, $a1, 0x1
/* 8C3FC 8008B7FC 90A30000 */  lbu        $v1, 0x0($a1)
/* 8C400 8008B800 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C404 8008B804 30C2007F */  andi       $v0, $a2, 0x7F
/* 8C408 8008B808 00021200 */  sll        $v0, $v0, 8
/* 8C40C 8008B80C 00623025 */  or         $a2, $v1, $v0
.L8008B810:
/* 8C410 8008B810 A48600A6 */  sh         $a2, 0xA6($a0)
/* 8C414 8008B814 03E00008 */  jr         $ra
/* 8C418 8008B818 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008B81C
/* 8C41C 8008B81C 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C420 8008B820 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C424 8008B824 10400003 */  beqz       $v0, .L8008B834
/* 8C428 8008B828 A08200B0 */   sb        $v0, 0xB0($a0)
/* 8C42C 8008B82C C4800028 */  lwc1       $f0, 0x28($a0)
/* 8C430 8008B830 E480004C */  swc1       $f0, 0x4C($a0)
.L8008B834:
/* 8C434 8008B834 03E00008 */  jr         $ra
/* 8C438 8008B838 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008B83C
/* 8C43C 8008B83C A08000B0 */  sb         $zero, 0xB0($a0)
/* 8C440 8008B840 03E00008 */  jr         $ra
/* 8C444 8008B844 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008B848
/* 8C448 8008B848 90A60000 */  lbu        $a2, 0x0($a1)
/* 8C44C 8008B84C 14C00002 */  bnez       $a2, .L8008B858
/* 8C450 8008B850 24A50001 */   addiu     $a1, $a1, 0x1
/* 8C454 8008B854 24060001 */  addiu      $a2, $zero, 0x1
.L8008B858:
/* 8C458 8008B858 24020400 */  addiu      $v0, $zero, 0x400
/* 8C45C 8008B85C 0046001A */  div        $zero, $v0, $a2
/* 8C460 8008B860 14C00002 */  bnez       $a2, .L8008B86C
/* 8C464 8008B864 00000000 */   nop
/* 8C468 8008B868 0007000D */  break      7
.L8008B86C:
/* 8C46C 8008B86C 2401FFFF */  addiu      $at, $zero, -0x1
/* 8C470 8008B870 14C10004 */  bne        $a2, $at, .L8008B884
/* 8C474 8008B874 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 8C478 8008B878 14410002 */  bne        $v0, $at, .L8008B884
/* 8C47C 8008B87C 00000000 */   nop
/* 8C480 8008B880 0006000D */  break      6
.L8008B884:
/* 8C484 8008B884 00001012 */  mflo       $v0
/* 8C488 8008B888 A08600B7 */  sb         $a2, 0xB7($a0)
/* 8C48C 8008B88C AC820060 */  sw         $v0, 0x60($a0)
/* 8C490 8008B890 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C494 8008B894 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C498 8008B898 A08200B8 */  sb         $v0, 0xB8($a0)
/* 8C49C 8008B89C 90A60000 */  lbu        $a2, 0x0($a1)
/* 8C4A0 8008B8A0 3C01800D */  lui        $at, %hi(D_800D69F0)
/* 8C4A4 8008B8A4 D42469F0 */  ldc1       $f4, %lo(D_800D69F0)($at)
/* 8C4A8 8008B8A8 44861000 */  mtc1       $a2, $f2
/* 8C4AC 8008B8AC 00000000 */  nop
/* 8C4B0 8008B8B0 468010A0 */  cvt.s.w    $f2, $f2
/* 8C4B4 8008B8B4 460010A1 */  cvt.d.s    $f2, $f2
/* 8C4B8 8008B8B8 46222083 */  div.d      $f2, $f4, $f2
/* 8C4BC 8008B8BC 908200B8 */  lbu        $v0, 0xB8($a0)
/* 8C4C0 8008B8C0 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C4C4 8008B8C4 A08600BE */  sb         $a2, 0xBE($a0)
/* 8C4C8 8008B8C8 90A30000 */  lbu        $v1, 0x0($a1)
/* 8C4CC 8008B8CC 00621023 */  subu       $v0, $v1, $v0
/* 8C4D0 8008B8D0 44820000 */  mtc1       $v0, $f0
/* 8C4D4 8008B8D4 00000000 */  nop
/* 8C4D8 8008B8D8 46800020 */  cvt.s.w    $f0, $f0
/* 8C4DC 8008B8DC 46000021 */  cvt.d.s    $f0, $f0
/* 8C4E0 8008B8E0 46201082 */  mul.d      $f2, $f2, $f0
/* 8C4E4 8008B8E4 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C4E8 8008B8E8 A08300B9 */  sb         $v1, 0xB9($a0)
/* 8C4EC 8008B8EC 462010A0 */  cvt.s.d    $f2, $f2
/* 8C4F0 8008B8F0 E4820054 */  swc1       $f2, 0x54($a0)
/* 8C4F4 8008B8F4 90A60000 */  lbu        $a2, 0x0($a1)
/* 8C4F8 8008B8F8 44861000 */  mtc1       $a2, $f2
/* 8C4FC 8008B8FC 00000000 */  nop
/* 8C500 8008B900 468010A0 */  cvt.s.w    $f2, $f2
/* 8C504 8008B904 460010A1 */  cvt.d.s    $f2, $f2
/* 8C508 8008B908 46222083 */  div.d      $f2, $f4, $f2
/* 8C50C 8008B90C 908200B9 */  lbu        $v0, 0xB9($a0)
/* 8C510 8008B910 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C514 8008B914 A08600BF */  sb         $a2, 0xBF($a0)
/* 8C518 8008B918 90A30000 */  lbu        $v1, 0x0($a1)
/* 8C51C 8008B91C 00621023 */  subu       $v0, $v1, $v0
/* 8C520 8008B920 44820000 */  mtc1       $v0, $f0
/* 8C524 8008B924 00000000 */  nop
/* 8C528 8008B928 46800020 */  cvt.s.w    $f0, $f0
/* 8C52C 8008B92C 46000021 */  cvt.d.s    $f0, $f0
/* 8C530 8008B930 46201082 */  mul.d      $f2, $f2, $f0
/* 8C534 8008B934 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C538 8008B938 A08300BA */  sb         $v1, 0xBA($a0)
/* 8C53C 8008B93C 462010A0 */  cvt.s.d    $f2, $f2
/* 8C540 8008B940 E4820058 */  swc1       $f2, 0x58($a0)
/* 8C544 8008B944 90A60000 */  lbu        $a2, 0x0($a1)
/* 8C548 8008B948 44860000 */  mtc1       $a2, $f0
/* 8C54C 8008B94C 00000000 */  nop
/* 8C550 8008B950 46800020 */  cvt.s.w    $f0, $f0
/* 8C554 8008B954 46000021 */  cvt.d.s    $f0, $f0
/* 8C558 8008B958 46202103 */  div.d      $f4, $f4, $f0
/* 8C55C 8008B95C 24A20001 */  addiu      $v0, $a1, 0x1
/* 8C560 8008B960 A08600C0 */  sb         $a2, 0xC0($a0)
/* 8C564 8008B964 46202120 */  cvt.s.d    $f4, $f4
/* 8C568 8008B968 03E00008 */  jr         $ra
/* 8C56C 8008B96C E484005C */   swc1      $f4, 0x5C($a0)

glabel func_8008B970
/* 8C570 8008B970 00804021 */  addu       $t0, $a0, $zero
/* 8C574 8008B974 90A30000 */  lbu        $v1, 0x0($a1)
/* 8C578 8008B978 3C048888 */  lui        $a0, (0x88888889 >> 16)
/* 8C57C 8008B97C 34848889 */  ori        $a0, $a0, (0x88888889 & 0xFFFF)
/* 8C580 8008B980 00031040 */  sll        $v0, $v1, 1
/* 8C584 8008B984 00431021 */  addu       $v0, $v0, $v1
/* 8C588 8008B988 00021340 */  sll        $v0, $v0, 13
/* 8C58C 8008B98C 00440018 */  mult       $v0, $a0
/* 8C590 8008B990 3C04802C */  lui        $a0, %hi(D_802C23DC)
/* 8C594 8008B994 8C8423DC */  lw         $a0, %lo(D_802C23DC)($a0)
/* 8C598 8008B998 00005810 */  mfhi       $t3
/* 8C59C 8008B99C 01621821 */  addu       $v1, $t3, $v0
/* 8C5A0 8008B9A0 00031983 */  sra        $v1, $v1, 6
/* 8C5A4 8008B9A4 000217C3 */  sra        $v0, $v0, 31
/* 8C5A8 8008B9A8 00621823 */  subu       $v1, $v1, $v0
/* 8C5AC 8008B9AC 0064001A */  div        $zero, $v1, $a0
/* 8C5B0 8008B9B0 14800002 */  bnez       $a0, .L8008B9BC
/* 8C5B4 8008B9B4 00000000 */   nop
/* 8C5B8 8008B9B8 0007000D */  break      7
.L8008B9BC:
/* 8C5BC 8008B9BC 2401FFFF */  addiu      $at, $zero, -0x1
/* 8C5C0 8008B9C0 14810004 */  bne        $a0, $at, .L8008B9D4
/* 8C5C4 8008B9C4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 8C5C8 8008B9C8 14610002 */  bne        $v1, $at, .L8008B9D4
/* 8C5CC 8008B9CC 00000000 */   nop
/* 8C5D0 8008B9D0 0006000D */  break      6
.L8008B9D4:
/* 8C5D4 8008B9D4 00003812 */  mflo       $a3
/* 8C5D8 8008B9D8 85020090 */  lh         $v0, 0x90($t0)
/* 8C5DC 8008B9DC 00000000 */  nop
/* 8C5E0 8008B9E0 00E20018 */  mult       $a3, $v0
/* 8C5E4 8008B9E4 00001012 */  mflo       $v0
/* 8C5E8 8008B9E8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8C5EC 8008B9EC 9503009E */  lhu        $v1, 0x9E($t0)
/* 8C5F0 8008B9F0 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C5F4 8008B9F4 10600003 */  beqz       $v1, .L8008BA04
/* 8C5F8 8008B9F8 000251C3 */   sra       $t2, $v0, 7
/* 8C5FC 8008B9FC 08022E92 */  j          .L8008BA48
/* 8C600 8008BA00 A5070094 */   sh        $a3, 0x94($t0)
.L8008BA04:
/* 8C604 8008BA04 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8C608 8008BA08 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8C60C 8008BA0C 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8C610 8008BA10 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8C614 8008BA14 1840000C */  blez       $v0, .L8008BA48
/* 8C618 8008BA18 00003021 */   addu      $a2, $zero, $zero
/* 8C61C 8008BA1C 00404821 */  addu       $t1, $v0, $zero
/* 8C620 8008BA20 24640094 */  addiu      $a0, $v1, 0x94
.L8008BA24:
/* 8C624 8008BA24 8C83FFDC */  lw         $v1, -0x24($a0)
/* 8C628 8008BA28 8D020070 */  lw         $v0, 0x70($t0)
/* 8C62C 8008BA2C 14620003 */  bne        $v1, $v0, .L8008BA3C
/* 8C630 8008BA30 24C60001 */   addiu     $a2, $a2, 0x1
/* 8C634 8008BA34 A487000C */  sh         $a3, 0xC($a0)
/* 8C638 8008BA38 A48A0000 */  sh         $t2, 0x0($a0)
.L8008BA3C:
/* 8C63C 8008BA3C 00C9102A */  slt        $v0, $a2, $t1
/* 8C640 8008BA40 1440FFF8 */  bnez       $v0, .L8008BA24
/* 8C644 8008BA44 24840120 */   addiu     $a0, $a0, 0x120
.L8008BA48:
/* 8C648 8008BA48 00A01021 */  addu       $v0, $a1, $zero
/* 8C64C 8008BA4C 03E00008 */  jr         $ra
/* 8C650 8008BA50 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008BA54
/* 8C654 8008BA54 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C658 8008BA58 A48000AA */  sh         $zero, 0xAA($a0)
/* 8C65C 8008BA5C A48200AC */  sh         $v0, 0xAC($a0)
/* 8C660 8008BA60 03E00008 */  jr         $ra
/* 8C664 8008BA64 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008BA68
/* 8C668 8008BA68 90A30000 */  lbu        $v1, 0x0($a1)
/* 8C66C 8008BA6C 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C670 8008BA70 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C674 8008BA74 A48000AC */  sh         $zero, 0xAC($a0)
/* 8C678 8008BA78 00031A00 */  sll        $v1, $v1, 8
/* 8C67C 8008BA7C 00431025 */  or         $v0, $v0, $v1
/* 8C680 8008BA80 A48200AA */  sh         $v0, 0xAA($a0)
/* 8C684 8008BA84 03E00008 */  jr         $ra
/* 8C688 8008BA88 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008BA8C
/* 8C68C 8008BA8C 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C690 8008BA90 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C694 8008BA94 A08200AE */  sb         $v0, 0xAE($a0)
/* 8C698 8008BA98 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C69C 8008BA9C 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C6A0 8008BAA0 A08200CD */  sb         $v0, 0xCD($a0)
/* 8C6A4 8008BAA4 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C6A8 8008BAA8 3C01800D */  lui        $at, %hi(D_800D69F8)
/* 8C6AC 8008BAAC D42269F8 */  ldc1       $f2, %lo(D_800D69F8)($at)
/* 8C6B0 8008BAB0 44820000 */  mtc1       $v0, $f0
/* 8C6B4 8008BAB4 00000000 */  nop
/* 8C6B8 8008BAB8 46800020 */  cvt.s.w    $f0, $f0
/* 8C6BC 8008BABC 46000021 */  cvt.d.s    $f0, $f0
/* 8C6C0 8008BAC0 46220003 */  div.d      $f0, $f0, $f2
/* 8C6C4 8008BAC4 24A20001 */  addiu      $v0, $a1, 0x1
/* 8C6C8 8008BAC8 46200020 */  cvt.s.d    $f0, $f0
/* 8C6CC 8008BACC 03E00008 */  jr         $ra
/* 8C6D0 8008BAD0 E480001C */   swc1      $f0, 0x1C($a0)

glabel func_8008BAD4
/* 8C6D4 8008BAD4 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C6D8 8008BAD8 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C6DC 8008BADC A08200AE */  sb         $v0, 0xAE($a0)
/* 8C6E0 8008BAE0 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C6E4 8008BAE4 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C6E8 8008BAE8 A08200CD */  sb         $v0, 0xCD($a0)
/* 8C6EC 8008BAEC 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C6F0 8008BAF0 3C01800D */  lui        $at, %hi(D_800D6A00)
/* 8C6F4 8008BAF4 D4226A00 */  ldc1       $f2, %lo(D_800D6A00)($at)
/* 8C6F8 8008BAF8 44820000 */  mtc1       $v0, $f0
/* 8C6FC 8008BAFC 00000000 */  nop
/* 8C700 8008BB00 46800020 */  cvt.s.w    $f0, $f0
/* 8C704 8008BB04 46000007 */  neg.s      $f0, $f0
/* 8C708 8008BB08 46000021 */  cvt.d.s    $f0, $f0
/* 8C70C 8008BB0C 46220003 */  div.d      $f0, $f0, $f2
/* 8C710 8008BB10 24A20001 */  addiu      $v0, $a1, 0x1
/* 8C714 8008BB14 46200020 */  cvt.s.d    $f0, $f0
/* 8C718 8008BB18 03E00008 */  jr         $ra
/* 8C71C 8008BB1C E480001C */   swc1      $f0, 0x1C($a0)

glabel func_8008BB20
/* 8C720 8008BB20 00A01021 */  addu       $v0, $a1, $zero
/* 8C724 8008BB24 A08000CD */  sb         $zero, 0xCD($a0)
/* 8C728 8008BB28 03E00008 */  jr         $ra
/* 8C72C 8008BB2C AC800064 */   sw        $zero, 0x64($a0)

glabel func_8008BB30
/* 8C730 8008BB30 90A30000 */  lbu        $v1, 0x0($a1)
/* 8C734 8008BB34 306200FF */  andi       $v0, $v1, 0xFF
/* 8C738 8008BB38 2C420080 */  sltiu      $v0, $v0, 0x80
/* 8C73C 8008BB3C 10400003 */  beqz       $v0, .L8008BB4C
/* 8C740 8008BB40 24A50001 */   addiu     $a1, $a1, 0x1
/* 8C744 8008BB44 08022EDA */  j          .L8008BB68
/* 8C748 8008BB48 A48300A4 */   sh        $v1, 0xA4($a0)
.L8008BB4C:
/* 8C74C 8008BB4C 3062007F */  andi       $v0, $v1, 0x7F
/* 8C750 8008BB50 00021200 */  sll        $v0, $v0, 8
/* 8C754 8008BB54 A48200A4 */  sh         $v0, 0xA4($a0)
/* 8C758 8008BB58 90A30000 */  lbu        $v1, 0x0($a1)
/* 8C75C 8008BB5C 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C760 8008BB60 00431021 */  addu       $v0, $v0, $v1
/* 8C764 8008BB64 A48200A4 */  sh         $v0, 0xA4($a0)
.L8008BB68:
/* 8C768 8008BB68 03E00008 */  jr         $ra
/* 8C76C 8008BB6C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BB70
/* 8C770 8008BB70 24020001 */  addiu      $v0, $zero, 0x1
/* 8C774 8008BB74 A08200AF */  sb         $v0, 0xAF($a0)
/* 8C778 8008BB78 03E00008 */  jr         $ra
/* 8C77C 8008BB7C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BB80
/* 8C780 8008BB80 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C784 8008BB84 A08200B1 */  sb         $v0, 0xB1($a0)
/* 8C788 8008BB88 03E00008 */  jr         $ra
/* 8C78C 8008BB8C 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008BB90
/* 8C790 8008BB90 24020001 */  addiu      $v0, $zero, 0x1
/* 8C794 8008BB94 A08200B2 */  sb         $v0, 0xB2($a0)
/* 8C798 8008BB98 03E00008 */  jr         $ra
/* 8C79C 8008BB9C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BBA0
/* 8C7A0 8008BBA0 90A30000 */  lbu        $v1, 0x0($a1)
/* 8C7A4 8008BBA4 30620080 */  andi       $v0, $v1, 0x80
/* 8C7A8 8008BBA8 10400003 */  beqz       $v0, .L8008BBB8
/* 8C7AC 8008BBAC 24A50001 */   addiu     $a1, $a1, 0x1
/* 8C7B0 8008BBB0 2402FF00 */  addiu      $v0, $zero, -0x100
/* 8C7B4 8008BBB4 00621825 */  or         $v1, $v1, $v0
.L8008BBB8:
/* 8C7B8 8008BBB8 3C01800D */  lui        $at, %hi(D_800D6A08)
/* 8C7BC 8008BBBC D4226A08 */  ldc1       $f2, %lo(D_800D6A08)($at)
/* 8C7C0 8008BBC0 44830000 */  mtc1       $v1, $f0
/* 8C7C4 8008BBC4 00000000 */  nop
/* 8C7C8 8008BBC8 46800020 */  cvt.s.w    $f0, $f0
/* 8C7CC 8008BBCC 46000021 */  cvt.d.s    $f0, $f0
/* 8C7D0 8008BBD0 46220003 */  div.d      $f0, $f0, $f2
/* 8C7D4 8008BBD4 C4840088 */  lwc1       $f4, 0x88($a0)
/* 8C7D8 8008BBD8 C482002C */  lwc1       $f2, 0x2C($a0)
/* 8C7DC 8008BBDC 46041081 */  sub.s      $f2, $f2, $f4
/* 8C7E0 8008BBE0 46200020 */  cvt.s.d    $f0, $f0
/* 8C7E4 8008BBE4 46001080 */  add.s      $f2, $f2, $f0
/* 8C7E8 8008BBE8 00A01021 */  addu       $v0, $a1, $zero
/* 8C7EC 8008BBEC E4800088 */  swc1       $f0, 0x88($a0)
/* 8C7F0 8008BBF0 03E00008 */  jr         $ra
/* 8C7F4 8008BBF4 E482002C */   swc1      $f2, 0x2C($a0)

glabel func_8008BBF8
/* 8C7F8 8008BBF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C7FC 8008BBFC AFB00010 */  sw         $s0, 0x10($sp)
/* 8C800 8008BC00 00A08021 */  addu       $s0, $a1, $zero
/* 8C804 8008BC04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C808 8008BC08 92030000 */  lbu        $v1, 0x0($s0)
/* 8C80C 8008BC0C 30620080 */  andi       $v0, $v1, 0x80
/* 8C810 8008BC10 10400006 */  beqz       $v0, .L8008BC2C
/* 8C814 8008BC14 26100001 */   addiu     $s0, $s0, 0x1
/* 8C818 8008BC18 3063007F */  andi       $v1, $v1, 0x7F
/* 8C81C 8008BC1C 92020000 */  lbu        $v0, 0x0($s0)
/* 8C820 8008BC20 00031A00 */  sll        $v1, $v1, 8
/* 8C824 8008BC24 26100001 */  addiu      $s0, $s0, 0x1
/* 8C828 8008BC28 00621825 */  or         $v1, $v1, $v0
.L8008BC2C:
/* 8C82C 8008BC2C 8C820070 */  lw         $v0, 0x70($a0)
/* 8C830 8008BC30 8C420010 */  lw         $v0, 0x10($v0)
/* 8C834 8008BC34 000328C0 */  sll        $a1, $v1, 3
/* 8C838 8008BC38 00A32823 */  subu       $a1, $a1, $v1
/* 8C83C 8008BC3C 0C022E12 */  jal        func_8008B848
/* 8C840 8008BC40 00452821 */   addu      $a1, $v0, $a1
/* 8C844 8008BC44 02001021 */  addu       $v0, $s0, $zero
/* 8C848 8008BC48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C84C 8008BC4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C850 8008BC50 03E00008 */  jr         $ra
/* 8C854 8008BC54 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008BC58
/* 8C858 8008BC58 24020001 */  addiu      $v0, $zero, 0x1
/* 8C85C 8008BC5C A08200CE */  sb         $v0, 0xCE($a0)
/* 8C860 8008BC60 03E00008 */  jr         $ra
/* 8C864 8008BC64 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BC68
/* 8C868 8008BC68 A08000CE */  sb         $zero, 0xCE($a0)
/* 8C86C 8008BC6C 03E00008 */  jr         $ra
/* 8C870 8008BC70 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BC74
/* 8C874 8008BC74 24020001 */  addiu      $v0, $zero, 0x1
/* 8C878 8008BC78 A08200CF */  sb         $v0, 0xCF($a0)
/* 8C87C 8008BC7C 03E00008 */  jr         $ra
/* 8C880 8008BC80 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BC84
/* 8C884 8008BC84 A08000CF */  sb         $zero, 0xCF($a0)
/* 8C888 8008BC88 03E00008 */  jr         $ra
/* 8C88C 8008BC8C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BC90
/* 8C890 8008BC90 00803021 */  addu       $a2, $a0, $zero
/* 8C894 8008BC94 90C700D3 */  lbu        $a3, 0xD3($a2)
/* 8C898 8008BC98 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C89C 8008BC9C 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 8C8A0 8008BCA0 44810000 */  mtc1       $at, $f0
/* 8C8A4 8008BCA4 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C8A8 8008BCA8 00C72021 */  addu       $a0, $a2, $a3
/* 8C8AC 8008BCAC A0820114 */  sb         $v0, 0x114($a0)
/* 8C8B0 8008BCB0 00071080 */  sll        $v0, $a3, 2
/* 8C8B4 8008BCB4 00461021 */  addu       $v0, $v0, $a2
/* 8C8B8 8008BCB8 AC4500D4 */  sw         $a1, 0xD4($v0)
/* 8C8BC 8008BCBC 8CC30034 */  lw         $v1, 0x34($a2)
/* 8C8C0 8008BCC0 AC4300E4 */  sw         $v1, 0xE4($v0)
/* 8C8C4 8008BCC4 8CC30030 */  lw         $v1, 0x30($a2)
/* 8C8C8 8008BCC8 AC4300F4 */  sw         $v1, 0xF4($v0)
/* 8C8CC 8008BCCC 90C200B4 */  lbu        $v0, 0xB4($a2)
/* 8C8D0 8008BCD0 A0820118 */  sb         $v0, 0x118($a0)
/* 8C8D4 8008BCD4 C4C2006C */  lwc1       $f2, 0x6C($a2)
/* 8C8D8 8008BCD8 4602003E */  c.le.s     $f0, $f2
/* 8C8DC 8008BCDC 00000000 */  nop
/* 8C8E0 8008BCE0 00000000 */  nop
/* 8C8E4 8008BCE4 45010006 */  bc1t       .L8008BD00
/* 8C8E8 8008BCE8 2484011C */   addiu     $a0, $a0, 0x11C
/* 8C8EC 8008BCEC 4600100D */  trunc.w.s  $f0, $f2
/* 8C8F0 8008BCF0 44030000 */  mfc1       $v1, $f0
/* 8C8F4 8008BCF4 00000000 */  nop
/* 8C8F8 8008BCF8 08022F46 */  j          .L8008BD18
/* 8C8FC 8008BCFC A0830000 */   sb        $v1, 0x0($a0)
.L8008BD00:
/* 8C900 8008BD00 46001001 */  sub.s      $f0, $f2, $f0
/* 8C904 8008BD04 4600008D */  trunc.w.s  $f2, $f0
/* 8C908 8008BD08 44031000 */  mfc1       $v1, $f2
/* 8C90C 8008BD0C 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 8C910 8008BD10 00621825 */  or         $v1, $v1, $v0
/* 8C914 8008BD14 A0830000 */  sb         $v1, 0x0($a0)
.L8008BD18:
/* 8C918 8008BD18 94C3009A */  lhu        $v1, 0x9A($a2)
/* 8C91C 8008BD1C 00071040 */  sll        $v0, $a3, 1
/* 8C920 8008BD20 00461021 */  addu       $v0, $v0, $a2
/* 8C924 8008BD24 A4430104 */  sh         $v1, 0x104($v0)
/* 8C928 8008BD28 94C3009C */  lhu        $v1, 0x9C($a2)
/* 8C92C 8008BD2C A443010C */  sh         $v1, 0x10C($v0)
/* 8C930 8008BD30 90C200D3 */  lbu        $v0, 0xD3($a2)
/* 8C934 8008BD34 24420001 */  addiu      $v0, $v0, 0x1
/* 8C938 8008BD38 A0C200D3 */  sb         $v0, 0xD3($a2)
/* 8C93C 8008BD3C 03E00008 */  jr         $ra
/* 8C940 8008BD40 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BD44
/* 8C944 8008BD44 908200D3 */  lbu        $v0, 0xD3($a0)
/* 8C948 8008BD48 2446FFFF */  addiu      $a2, $v0, -0x1
/* 8C94C 8008BD4C 00864021 */  addu       $t0, $a0, $a2
/* 8C950 8008BD50 91070114 */  lbu        $a3, 0x114($t0)
/* 8C954 8008BD54 240200FF */  addiu      $v0, $zero, 0xFF
/* 8C958 8008BD58 30E300FF */  andi       $v1, $a3, 0xFF
/* 8C95C 8008BD5C 10620007 */  beq        $v1, $v0, .L8008BD7C
/* 8C960 8008BD60 24E2FFFF */   addiu     $v0, $a3, -0x1
/* 8C964 8008BD64 A1020114 */  sb         $v0, 0x114($t0)
/* 8C968 8008BD68 304200FF */  andi       $v0, $v0, 0xFF
/* 8C96C 8008BD6C 14400003 */  bnez       $v0, .L8008BD7C
/* 8C970 8008BD70 00000000 */   nop
/* 8C974 8008BD74 A08600D3 */  sb         $a2, 0xD3($a0)
/* 8C978 8008BD78 2406FFFF */  addiu      $a2, $zero, -0x1
.L8008BD7C:
/* 8C97C 8008BD7C 04C0001A */  bltz       $a2, .L8008BDE8
/* 8C980 8008BD80 00000000 */   nop
/* 8C984 8008BD84 00061080 */  sll        $v0, $a2, 2
/* 8C988 8008BD88 00441021 */  addu       $v0, $v0, $a0
/* 8C98C 8008BD8C 8C4300E4 */  lw         $v1, 0xE4($v0)
/* 8C990 8008BD90 8C4500D4 */  lw         $a1, 0xD4($v0)
/* 8C994 8008BD94 AC830034 */  sw         $v1, 0x34($a0)
/* 8C998 8008BD98 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 8C99C 8008BD9C 00861821 */  addu       $v1, $a0, $a2
/* 8C9A0 8008BDA0 AC820030 */  sw         $v0, 0x30($a0)
/* 8C9A4 8008BDA4 90620118 */  lbu        $v0, 0x118($v1)
/* 8C9A8 8008BDA8 A08200B4 */  sb         $v0, 0xB4($a0)
/* 8C9AC 8008BDAC 9062011C */  lbu        $v0, 0x11C($v1)
/* 8C9B0 8008BDB0 C4820068 */  lwc1       $f2, 0x68($a0)
/* 8C9B4 8008BDB4 44820000 */  mtc1       $v0, $f0
/* 8C9B8 8008BDB8 00000000 */  nop
/* 8C9BC 8008BDBC 46800020 */  cvt.s.w    $f0, $f0
/* 8C9C0 8008BDC0 00061040 */  sll        $v0, $a2, 1
/* 8C9C4 8008BDC4 E480006C */  swc1       $f0, 0x6C($a0)
/* 8C9C8 8008BDC8 C480006C */  lwc1       $f0, 0x6C($a0)
/* 8C9CC 8008BDCC 00441021 */  addu       $v0, $v0, $a0
/* 8C9D0 8008BDD0 94430104 */  lhu        $v1, 0x104($v0)
/* 8C9D4 8008BDD4 46020002 */  mul.s      $f0, $f0, $f2
/* 8C9D8 8008BDD8 A483009A */  sh         $v1, 0x9A($a0)
/* 8C9DC 8008BDDC 9442010C */  lhu        $v0, 0x10C($v0)
/* 8C9E0 8008BDE0 A482009C */  sh         $v0, 0x9C($a0)
/* 8C9E4 8008BDE4 E4800020 */  swc1       $f0, 0x20($a0)
.L8008BDE8:
/* 8C9E8 8008BDE8 03E00008 */  jr         $ra
/* 8C9EC 8008BDEC 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BDF0
/* 8C9F0 8008BDF0 90A20000 */  lbu        $v0, 0x0($a1)
/* 8C9F4 8008BDF4 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C9F8 8008BDF8 A08200D0 */  sb         $v0, 0xD0($a0)
/* 8C9FC 8008BDFC 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CA00 8008BE00 24A50001 */  addiu      $a1, $a1, 0x1
/* 8CA04 8008BE04 A08200C6 */  sb         $v0, 0xC6($a0)
/* 8CA08 8008BE08 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CA0C 8008BE0C A08200C7 */  sb         $v0, 0xC7($a0)
/* 8CA10 8008BE10 03E00008 */  jr         $ra
/* 8CA14 8008BE14 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008BE18
/* 8CA18 8008BE18 A08000C6 */  sb         $zero, 0xC6($a0)
/* 8CA1C 8008BE1C 03E00008 */  jr         $ra
/* 8CA20 8008BE20 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BE24
/* 8CA24 8008BE24 24020001 */  addiu      $v0, $zero, 0x1
/* 8CA28 8008BE28 A08200CA */  sb         $v0, 0xCA($a0)
/* 8CA2C 8008BE2C 03E00008 */  jr         $ra
/* 8CA30 8008BE30 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BE34
/* 8CA34 8008BE34 A08000CA */  sb         $zero, 0xCA($a0)
/* 8CA38 8008BE38 03E00008 */  jr         $ra
/* 8CA3C 8008BE3C 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BE40
/* 8CA40 8008BE40 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CA44 8008BE44 A08000CA */  sb         $zero, 0xCA($a0)
/* 8CA48 8008BE48 A08200CB */  sb         $v0, 0xCB($a0)
/* 8CA4C 8008BE4C 03E00008 */  jr         $ra
/* 8CA50 8008BE50 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008BE54
/* 8CA54 8008BE54 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CA58 8008BE58 00021042 */  srl        $v0, $v0, 1
/* 8CA5C 8008BE5C A08200B5 */  sb         $v0, 0xB5($a0)
/* 8CA60 8008BE60 03E00008 */  jr         $ra
/* 8CA64 8008BE64 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008BE68
/* 8CA68 8008BE68 03E00008 */  jr         $ra
/* 8CA6C 8008BE6C 24A20002 */   addiu     $v0, $a1, 0x2

glabel func_8008BE70
/* 8CA70 8008BE70 8C830070 */  lw         $v1, 0x70($a0)
/* 8CA74 8008BE74 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CA78 8008BE78 8C660014 */  lw         $a2, 0x14($v1)
/* 8CA7C 8008BE7C 00021080 */  sll        $v0, $v0, 2
/* 8CA80 8008BE80 00461021 */  addu       $v0, $v0, $a2
/* 8CA84 8008BE84 8C420000 */  lw         $v0, 0x0($v0)
/* 8CA88 8008BE88 00621821 */  addu       $v1, $v1, $v0
/* 8CA8C 8008BE8C 24A20001 */  addiu      $v0, $a1, 0x1
/* 8CA90 8008BE90 03E00008 */  jr         $ra
/* 8CA94 8008BE94 AC83007C */   sw        $v1, 0x7C($a0)

glabel func_8008BE98
/* 8CA98 8008BE98 AC80007C */  sw         $zero, 0x7C($a0)
/* 8CA9C 8008BE9C 03E00008 */  jr         $ra
/* 8CAA0 8008BEA0 00A01021 */   addu      $v0, $a1, $zero

glabel func_8008BEA4
/* 8CAA4 8008BEA4 03E00008 */  jr         $ra
/* 8CAA8 8008BEA8 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008BEAC
/* 8CAAC 8008BEAC 90A60000 */  lbu        $a2, 0x0($a1)
/* 8CAB0 8008BEB0 24A50001 */  addiu      $a1, $a1, 0x1
/* 8CAB4 8008BEB4 90A90000 */  lbu        $t1, 0x0($a1)
/* 8CAB8 8008BEB8 24A50001 */  addiu      $a1, $a1, 0x1
/* 8CABC 8008BEBC 90A70000 */  lbu        $a3, 0x0($a1)
/* 8CAC0 8008BEC0 24A50001 */  addiu      $a1, $a1, 0x1
/* 8CAC4 8008BEC4 90A30000 */  lbu        $v1, 0x0($a1)
/* 8CAC8 8008BEC8 8C820084 */  lw         $v0, 0x84($a0)
/* 8CACC 8008BECC 24A50001 */  addiu      $a1, $a1, 0x1
/* 8CAD0 8008BED0 24080001 */  addiu      $t0, $zero, 0x1
/* 8CAD4 8008BED4 A488009A */  sh         $t0, 0x9A($a0)
/* 8CAD8 8008BED8 00073A00 */  sll        $a3, $a3, 8
/* 8CADC 8008BEDC 00E33821 */  addu       $a3, $a3, $v1
/* 8CAE0 8008BEE0 00471021 */  addu       $v0, $v0, $a3
/* 8CAE4 8008BEE4 AC820034 */  sw         $v0, 0x34($a0)
/* 8CAE8 8008BEE8 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CAEC 8008BEEC 90A50001 */  lbu        $a1, 0x1($a1)
/* 8CAF0 8008BEF0 8C830080 */  lw         $v1, 0x80($a0)
/* 8CAF4 8008BEF4 00063200 */  sll        $a2, $a2, 8
/* 8CAF8 8008BEF8 00C93021 */  addu       $a2, $a2, $t1
/* 8CAFC 8008BEFC A488009C */  sh         $t0, 0x9C($a0)
/* 8CB00 8008BF00 00023A00 */  sll        $a3, $v0, 8
/* 8CB04 8008BF04 8C820078 */  lw         $v0, 0x78($a0)
/* 8CB08 8008BF08 00E53821 */  addu       $a3, $a3, $a1
/* 8CB0C 8008BF0C 00671821 */  addu       $v1, $v1, $a3
/* 8CB10 8008BF10 AC830030 */  sw         $v1, 0x30($a0)
/* 8CB14 8008BF14 03E00008 */  jr         $ra
/* 8CB18 8008BF18 00461021 */   addu      $v0, $v0, $a2

glabel func_8008BF1C
/* 8CB1C 8008BF1C 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CB20 8008BF20 A08200C2 */  sb         $v0, 0xC2($a0)
/* 8CB24 8008BF24 03E00008 */  jr         $ra
/* 8CB28 8008BF28 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008BF2C
/* 8CB2C 8008BF2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CB30 8008BF30 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CB34 8008BF34 00808821 */  addu       $s1, $a0, $zero
/* 8CB38 8008BF38 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CB3C 8008BF3C 00A08021 */  addu       $s0, $a1, $zero
/* 8CB40 8008BF40 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8CB44 8008BF44 92040000 */  lbu        $a0, 0x0($s0)
/* 8CB48 8008BF48 0C0237D0 */  jal        func_8008DF40
/* 8CB4C 8008BF4C 26100001 */   addiu     $s0, $s0, 0x1
/* 8CB50 8008BF50 00401821 */  addu       $v1, $v0, $zero
/* 8CB54 8008BF54 A22300B1 */  sb         $v1, 0xB1($s1)
/* 8CB58 8008BF58 92040000 */  lbu        $a0, 0x0($s0)
/* 8CB5C 8008BF5C 26020001 */  addiu      $v0, $s0, 0x1
/* 8CB60 8008BF60 00641821 */  addu       $v1, $v1, $a0
/* 8CB64 8008BF64 A22300B1 */  sb         $v1, 0xB1($s1)
/* 8CB68 8008BF68 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CB6C 8008BF6C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CB70 8008BF70 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CB74 8008BF74 03E00008 */  jr         $ra
/* 8CB78 8008BF78 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008BF7C
/* 8CB7C 8008BF7C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CB80 8008BF80 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CB84 8008BF84 00808821 */  addu       $s1, $a0, $zero
/* 8CB88 8008BF88 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CB8C 8008BF8C 00A08021 */  addu       $s0, $a1, $zero
/* 8CB90 8008BF90 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8CB94 8008BF94 92040000 */  lbu        $a0, 0x0($s0)
/* 8CB98 8008BF98 0C0237D0 */  jal        func_8008DF40
/* 8CB9C 8008BF9C 26100001 */   addiu     $s0, $s0, 0x1
/* 8CBA0 8008BFA0 00401821 */  addu       $v1, $v0, $zero
/* 8CBA4 8008BFA4 A22300B4 */  sb         $v1, 0xB4($s1)
/* 8CBA8 8008BFA8 92040000 */  lbu        $a0, 0x0($s0)
/* 8CBAC 8008BFAC 26020001 */  addiu      $v0, $s0, 0x1
/* 8CBB0 8008BFB0 00641821 */  addu       $v1, $v1, $a0
/* 8CBB4 8008BFB4 A22300B4 */  sb         $v1, 0xB4($s1)
/* 8CBB8 8008BFB8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CBBC 8008BFBC 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CBC0 8008BFC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CBC4 8008BFC4 03E00008 */  jr         $ra
/* 8CBC8 8008BFC8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008BFCC
/* 8CBCC 8008BFCC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8CBD0 8008BFD0 AFB10014 */  sw         $s1, 0x14($sp)
/* 8CBD4 8008BFD4 00808821 */  addu       $s1, $a0, $zero
/* 8CBD8 8008BFD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8CBDC 8008BFDC 00A08021 */  addu       $s0, $a1, $zero
/* 8CBE0 8008BFE0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8CBE4 8008BFE4 92040000 */  lbu        $a0, 0x0($s0)
/* 8CBE8 8008BFE8 0C0237D0 */  jal        func_8008DF40
/* 8CBEC 8008BFEC 26100001 */   addiu     $s0, $s0, 0x1
/* 8CBF0 8008BFF0 00401821 */  addu       $v1, $v0, $zero
/* 8CBF4 8008BFF4 A22300B5 */  sb         $v1, 0xB5($s1)
/* 8CBF8 8008BFF8 92040000 */  lbu        $a0, 0x0($s0)
/* 8CBFC 8008BFFC 26020001 */  addiu      $v0, $s0, 0x1
/* 8CC00 8008C000 00641821 */  addu       $v1, $v1, $a0
/* 8CC04 8008C004 A22300B5 */  sb         $v1, 0xB5($s1)
/* 8CC08 8008C008 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8CC0C 8008C00C 8FB10014 */  lw         $s1, 0x14($sp)
/* 8CC10 8008C010 8FB00010 */  lw         $s0, 0x10($sp)
/* 8CC14 8008C014 03E00008 */  jr         $ra
/* 8CC18 8008C018 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008C01C
/* 8CC1C 8008C01C 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CC20 8008C020 A08200B4 */  sb         $v0, 0xB4($a0)
/* 8CC24 8008C024 03E00008 */  jr         $ra
/* 8CC28 8008C028 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008C02C
/* 8CC2C 8008C02C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8CC30 8008C030 AFB00020 */  sw         $s0, 0x20($sp)
/* 8CC34 8008C034 00808021 */  addu       $s0, $a0, $zero
/* 8CC38 8008C038 AFB10024 */  sw         $s1, 0x24($sp)
/* 8CC3C 8008C03C 00A08821 */  addu       $s1, $a1, $zero
/* 8CC40 8008C040 AFBF0028 */  sw         $ra, 0x28($sp)
/* 8CC44 8008C044 92240000 */  lbu        $a0, 0x0($s1)
/* 8CC48 8008C048 28820080 */  slti       $v0, $a0, 0x80
/* 8CC4C 8008C04C 14400006 */  bnez       $v0, .L8008C068
/* 8CC50 8008C050 26310001 */   addiu     $s1, $s1, 0x1
/* 8CC54 8008C054 92230000 */  lbu        $v1, 0x0($s1)
/* 8CC58 8008C058 26310001 */  addiu      $s1, $s1, 0x1
/* 8CC5C 8008C05C 3082007F */  andi       $v0, $a0, 0x7F
/* 8CC60 8008C060 00021200 */  sll        $v0, $v0, 8
/* 8CC64 8008C064 00432021 */  addu       $a0, $v0, $v1
.L8008C068:
/* 8CC68 8008C068 920500B4 */  lbu        $a1, 0xB4($s0)
/* 8CC6C 8008C06C 8E030044 */  lw         $v1, 0x44($s0)
/* 8CC70 8008C070 920600B5 */  lbu        $a2, 0xB5($s0)
/* 8CC74 8008C074 00003821 */  addu       $a3, $zero, $zero
/* 8CC78 8008C078 24620001 */  addiu      $v0, $v1, 0x1
/* 8CC7C 8008C07C AE020044 */  sw         $v0, 0x44($s0)
/* 8CC80 8008C080 0C0231A6 */  jal        func_8008C698
/* 8CC84 8008C084 AFA30010 */   sw        $v1, 0x10($sp)
/* 8CC88 8008C088 8E030044 */  lw         $v1, 0x44($s0)
/* 8CC8C 8008C08C 00402821 */  addu       $a1, $v0, $zero
/* 8CC90 8008C090 2463FFFF */  addiu      $v1, $v1, -0x1
/* 8CC94 8008C094 10A00013 */  beqz       $a1, .L8008C0E4
/* 8CC98 8008C098 AE030044 */   sw        $v1, 0x44($s0)
/* 8CC9C 8008C09C 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8CCA0 8008C0A0 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8CCA4 8008C0A4 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8CCA8 8008C0A8 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8CCAC 8008C0AC 1840000D */  blez       $v0, .L8008C0E4
/* 8CCB0 8008C0B0 00002021 */   addu      $a0, $zero, $zero
/* 8CCB4 8008C0B4 00403021 */  addu       $a2, $v0, $zero
/* 8CCB8 8008C0B8 24630074 */  addiu      $v1, $v1, 0x74
.L8008C0BC:
/* 8CCBC 8008C0BC 8C62FFCC */  lw         $v0, -0x34($v1)
/* 8CCC0 8008C0C0 14450005 */  bne        $v0, $a1, .L8008C0D8
/* 8CCC4 8008C0C4 24840001 */   addiu     $a0, $a0, 0x1
/* 8CCC8 8008C0C8 8E020040 */  lw         $v0, 0x40($s0)
/* 8CCCC 8008C0CC AC62FFCC */  sw         $v0, -0x34($v1)
/* 8CCD0 8008C0D0 8E020074 */  lw         $v0, 0x74($s0)
/* 8CCD4 8008C0D4 AC620000 */  sw         $v0, 0x0($v1)
.L8008C0D8:
/* 8CCD8 8008C0D8 0086102A */  slt        $v0, $a0, $a2
/* 8CCDC 8008C0DC 1440FFF7 */  bnez       $v0, .L8008C0BC
/* 8CCE0 8008C0E0 24630120 */   addiu     $v1, $v1, 0x120
.L8008C0E4:
/* 8CCE4 8008C0E4 02201021 */  addu       $v0, $s1, $zero
/* 8CCE8 8008C0E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8CCEC 8008C0EC 8FB10024 */  lw         $s1, 0x24($sp)
/* 8CCF0 8008C0F0 8FB00020 */  lw         $s0, 0x20($sp)
/* 8CCF4 8008C0F4 03E00008 */  jr         $ra
/* 8CCF8 8008C0F8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8008C0FC
/* 8CCFC 8008C0FC C482006C */  lwc1       $f2, 0x6C($a0)
/* 8CD00 8008C100 46021082 */  mul.s      $f2, $f2, $f2
/* 8CD04 8008C104 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CD08 8008C108 3C01800D */  lui        $at, %hi(D_800D6A10)
/* 8CD0C 8008C10C D4246A10 */  ldc1       $f4, %lo(D_800D6A10)($at)
/* 8CD10 8008C110 44820000 */  mtc1       $v0, $f0
/* 8CD14 8008C114 00000000 */  nop
/* 8CD18 8008C118 46800020 */  cvt.s.w    $f0, $f0
/* 8CD1C 8008C11C 46000021 */  cvt.d.s    $f0, $f0
/* 8CD20 8008C120 46240002 */  mul.d      $f0, $f0, $f4
/* 8CD24 8008C124 24A20001 */  addiu      $v0, $a1, 0x1
/* 8CD28 8008C128 E4820020 */  swc1       $f2, 0x20($a0)
/* 8CD2C 8008C12C 46200020 */  cvt.s.d    $f0, $f0
/* 8CD30 8008C130 03E00008 */  jr         $ra
/* 8CD34 8008C134 E4800068 */   swc1      $f0, 0x68($a0)

glabel func_8008C138
/* 8CD38 8008C138 90A20000 */  lbu        $v0, 0x0($a1)
/* 8CD3C 8008C13C A08200CC */  sb         $v0, 0xCC($a0)
/* 8CD40 8008C140 03E00008 */  jr         $ra
/* 8CD44 8008C144 24A20001 */   addiu     $v0, $a1, 0x1

glabel func_8008C148
/* 8CD48 8008C148 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 8CD4C 8008C14C AFB20070 */  sw         $s2, 0x70($sp)
/* 8CD50 8008C150 00809021 */  addu       $s2, $a0, $zero
/* 8CD54 8008C154 AFBF0078 */  sw         $ra, 0x78($sp)
/* 8CD58 8008C158 AFB30074 */  sw         $s3, 0x74($sp)
/* 8CD5C 8008C15C AFB1006C */  sw         $s1, 0x6C($sp)
/* 8CD60 8008C160 AFB00068 */  sw         $s0, 0x68($sp)
/* 8CD64 8008C164 8E420000 */  lw         $v0, 0x0($s2)
/* 8CD68 8008C168 8E430004 */  lw         $v1, 0x4($s2)
/* 8CD6C 8008C16C 8E440020 */  lw         $a0, 0x20($s2)
/* 8CD70 8008C170 8E450024 */  lw         $a1, 0x24($s2)
/* 8CD74 8008C174 3C068000 */  lui        $a2, %hi(osTvType)
/* 8CD78 8008C178 8CC60300 */  lw         $a2, %lo(osTvType)($a2)
/* 8CD7C 8008C17C 3C018031 */  lui        $at, %hi(D_803128C4)
/* 8CD80 8008C180 AC2228C4 */  sw         $v0, %lo(D_803128C4)($at)
/* 8CD84 8008C184 3C01802C */  lui        $at, %hi(D_802C23C8)
/* 8CD88 8008C188 AC2323C8 */  sw         $v1, %lo(D_802C23C8)($at)
/* 8CD8C 8008C18C 3C01802C */  lui        $at, %hi(D_802C23D4)
/* 8CD90 8008C190 AC2423D4 */  sw         $a0, %lo(D_802C23D4)($at)
/* 8CD94 8008C194 3C01802C */  lui        $at, %hi(D_802C23D8)
/* 8CD98 8008C198 AC2523D8 */  sw         $a1, %lo(D_802C23D8)($at)
/* 8CD9C 8008C19C 14C00002 */  bnez       $a2, .L8008C1A8
/* 8CDA0 8008C1A0 2402003C */   addiu     $v0, $zero, 0x3C
/* 8CDA4 8008C1A4 24020032 */  addiu      $v0, $zero, 0x32
.L8008C1A8:
/* 8CDA8 8008C1A8 3C01802C */  lui        $at, %hi(D_802C23DC)
/* 8CDAC 8008C1AC AC2223DC */  sw         $v0, %lo(D_802C23DC)($at)
/* 8CDB0 8008C1B0 3C03802C */  lui        $v1, %hi(D_802C23DC)
/* 8CDB4 8008C1B4 8C6323DC */  lw         $v1, %lo(D_802C23DC)($v1)
/* 8CDB8 8008C1B8 3C02000F */  lui        $v0, (0xF4240 >> 16)
/* 8CDBC 8008C1BC 34424240 */  ori        $v0, $v0, (0xF4240 & 0xFFFF)
/* 8CDC0 8008C1C0 0043001A */  div        $zero, $v0, $v1
/* 8CDC4 8008C1C4 14600002 */  bnez       $v1, .L8008C1D0
/* 8CDC8 8008C1C8 00000000 */   nop
/* 8CDCC 8008C1CC 0007000D */  break      7
.L8008C1D0:
/* 8CDD0 8008C1D0 2401FFFF */  addiu      $at, $zero, -0x1
/* 8CDD4 8008C1D4 14610004 */  bne        $v1, $at, .L8008C1E8
/* 8CDD8 8008C1D8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 8CDDC 8008C1DC 14410002 */  bne        $v0, $at, .L8008C1E8
/* 8CDE0 8008C1E0 00000000 */   nop
/* 8CDE4 8008C1E4 0006000D */  break      6
.L8008C1E8:
/* 8CDE8 8008C1E8 00001012 */  mflo       $v0
/* 8CDEC 8008C1EC 8E440010 */  lw         $a0, 0x10($s2)
/* 8CDF0 8008C1F0 8E460014 */  lw         $a2, 0x14($s2)
/* 8CDF4 8008C1F4 3C01802C */  lui        $at, %hi(D_802C23E0)
/* 8CDF8 8008C1F8 AC2223E0 */  sw         $v0, %lo(D_802C23E0)($at)
/* 8CDFC 8008C1FC 0C0238A2 */  jal        func_8008E288
/* 8CE00 8008C200 00002821 */   addu      $a1, $zero, $zero
/* 8CE04 8008C204 8E450010 */  lw         $a1, 0x10($s2)
/* 8CE08 8008C208 8E460014 */  lw         $a2, 0x14($s2)
/* 8CE0C 8008C20C 3C10802C */  lui        $s0, %hi(D_802C23B8)
/* 8CE10 8008C210 261023B8 */  addiu      $s0, $s0, %lo(D_802C23B8)
/* 8CE14 8008C214 0C024144 */  jal        func_80090510
/* 8CE18 8008C218 02002021 */   addu      $a0, $s0, $zero
/* 8CE1C 8008C21C 00002021 */  addu       $a0, $zero, $zero
/* 8CE20 8008C220 00002821 */  addu       $a1, $zero, $zero
/* 8CE24 8008C224 3C03802C */  lui        $v1, %hi(D_802C23C8)
/* 8CE28 8008C228 8C6323C8 */  lw         $v1, %lo(D_802C23C8)($v1)
/* 8CE2C 8008C22C 02003021 */  addu       $a2, $s0, $zero
/* 8CE30 8008C230 24070001 */  addiu      $a3, $zero, 0x1
/* 8CE34 8008C234 000310C0 */  sll        $v0, $v1, 3
/* 8CE38 8008C238 00431023 */  subu       $v0, $v0, $v1
/* 8CE3C 8008C23C 00021080 */  sll        $v0, $v0, 2
/* 8CE40 8008C240 0C024154 */  jal        func_80090550
/* 8CE44 8008C244 AFA20010 */   sw        $v0, 0x10($sp)
/* 8CE48 8008C248 00002021 */  addu       $a0, $zero, $zero
/* 8CE4C 8008C24C 00002821 */  addu       $a1, $zero, $zero
/* 8CE50 8008C250 3C03802C */  lui        $v1, %hi(D_802C23C8)
/* 8CE54 8008C254 8C6323C8 */  lw         $v1, %lo(D_802C23C8)($v1)
/* 8CE58 8008C258 02003021 */  addu       $a2, $s0, $zero
/* 8CE5C 8008C25C 24070001 */  addiu      $a3, $zero, 0x1
/* 8CE60 8008C260 3C01802C */  lui        $at, %hi(D_802C23CC)
/* 8CE64 8008C264 AC2223CC */  sw         $v0, %lo(D_802C23CC)($at)
/* 8CE68 8008C268 000310C0 */  sll        $v0, $v1, 3
/* 8CE6C 8008C26C 00431021 */  addu       $v0, $v0, $v1
/* 8CE70 8008C270 00021140 */  sll        $v0, $v0, 5
/* 8CE74 8008C274 0C024154 */  jal        func_80090550
/* 8CE78 8008C278 AFA20010 */   sw        $v0, 0x10($sp)
/* 8CE7C 8008C27C 3C04802C */  lui        $a0, %hi(D_802C23CC)
/* 8CE80 8008C280 8C8423CC */  lw         $a0, %lo(D_802C23CC)($a0)
/* 8CE84 8008C284 3C03802C */  lui        $v1, %hi(D_802C23C8)
/* 8CE88 8008C288 8C6323C8 */  lw         $v1, %lo(D_802C23C8)($v1)
/* 8CE8C 8008C28C 00002821 */  addu       $a1, $zero, $zero
/* 8CE90 8008C290 3C01802C */  lui        $at, %hi(D_802C23D0)
/* 8CE94 8008C294 AC2223D0 */  sw         $v0, %lo(D_802C23D0)($at)
/* 8CE98 8008C298 000330C0 */  sll        $a2, $v1, 3
/* 8CE9C 8008C29C 00C33023 */  subu       $a2, $a2, $v1
/* 8CEA0 8008C2A0 0C0238A2 */  jal        func_8008E288
/* 8CEA4 8008C2A4 00063080 */   sll       $a2, $a2, 2
/* 8CEA8 8008C2A8 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8CEAC 8008C2AC 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8CEB0 8008C2B0 3C04802C */  lui        $a0, %hi(D_802C23D0)
/* 8CEB4 8008C2B4 8C8423D0 */  lw         $a0, %lo(D_802C23D0)($a0)
/* 8CEB8 8008C2B8 00002821 */  addu       $a1, $zero, $zero
/* 8CEBC 8008C2BC 000230C0 */  sll        $a2, $v0, 3
/* 8CEC0 8008C2C0 00C23021 */  addu       $a2, $a2, $v0
/* 8CEC4 8008C2C4 0C0238A2 */  jal        func_8008E288
/* 8CEC8 8008C2C8 00063140 */   sll       $a2, $a2, 5
/* 8CECC 8008C2CC 8E440018 */  lw         $a0, 0x18($s2)
/* 8CED0 8008C2D0 8E45001C */  lw         $a1, 0x1C($s2)
/* 8CED4 8008C2D4 0C02376A */  jal        func_8008DDA8
/* 8CED8 8008C2D8 00008821 */   addu      $s1, $zero, $zero
/* 8CEDC 8008C2DC 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8CEE0 8008C2E0 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8CEE4 8008C2E4 8E480018 */  lw         $t0, 0x18($s2)
/* 8CEE8 8008C2E8 AFA20028 */  sw         $v0, 0x28($sp)
/* 8CEEC 8008C2EC AFA2002C */  sw         $v0, 0x2C($sp)
/* 8CEF0 8008C2F0 8E430028 */  lw         $v1, 0x28($s2)
/* 8CEF4 8008C2F4 24020002 */  addiu      $v0, $zero, 0x2
/* 8CEF8 8008C2F8 AFA00038 */  sw         $zero, 0x38($sp)
/* 8CEFC 8008C2FC A3A20044 */  sb         $v0, 0x44($sp)
/* 8CF00 8008C300 AFA00040 */  sw         $zero, 0x40($sp)
/* 8CF04 8008C304 AFB0003C */  sw         $s0, 0x3C($sp)
/* 8CF08 8008C308 AFA30030 */  sw         $v1, 0x30($sp)
/* 8CF0C 8008C30C 8E42002C */  lw         $v0, 0x2C($s2)
/* 8CF10 8008C310 AFA20050 */  sw         $v0, 0x50($sp)
/* 8CF14 8008C314 8E420034 */  lw         $v0, 0x34($s2)
/* 8CF18 8008C318 AFA20054 */  sw         $v0, 0x54($sp)
/* 8CF1C 8008C31C 8E420030 */  lw         $v0, 0x30($s2)
/* 8CF20 8008C320 AFA20058 */  sw         $v0, 0x58($sp)
/* 8CF24 8008C324 8E420038 */  lw         $v0, 0x38($s2)
/* 8CF28 8008C328 AFA20010 */  sw         $v0, 0x10($sp)
/* 8CF2C 8008C32C 3C02802C */  lui        $v0, %hi(D_802C23DC)
/* 8CF30 8008C330 8C4223DC */  lw         $v0, %lo(D_802C23DC)($v0)
/* 8CF34 8008C334 8E43003C */  lw         $v1, 0x3C($s2)
/* 8CF38 8008C338 AFA20018 */  sw         $v0, 0x18($sp)
/* 8CF3C 8008C33C AFA30014 */  sw         $v1, 0x14($sp)
/* 8CF40 8008C340 8E440008 */  lw         $a0, 0x8($s2)
/* 8CF44 8008C344 8E46000C */  lw         $a2, 0xC($s2)
/* 8CF48 8008C348 27A50028 */  addiu      $a1, $sp, 0x28
/* 8CF4C 8008C34C 3C01802C */  lui        $at, %hi(D_802C23F0)
/* 8CF50 8008C350 AC2823F0 */  sw         $t0, %lo(D_802C23F0)($at)
/* 8CF54 8008C354 3C01802C */  lui        $at, %hi(D_802C23F4)
/* 8CF58 8008C358 AC2823F4 */  sw         $t0, %lo(D_802C23F4)($at)
/* 8CF5C 8008C35C 0C0238E4 */  jal        func_8008E390
/* 8CF60 8008C360 27A70050 */   addiu     $a3, $sp, 0x50
/* 8CF64 8008C364 24040003 */  addiu      $a0, $zero, 0x3
/* 8CF68 8008C368 0C02311B */  jal        func_8008C46C
/* 8CF6C 8008C36C 24057FFF */   addiu     $a1, $zero, 0x7FFF
/* 8CF70 8008C370 3C031234 */  lui        $v1, (0x12345678 >> 16)
/* 8CF74 8008C374 34635678 */  ori        $v1, $v1, (0x12345678 & 0xFFFF)
/* 8CF78 8008C378 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8CF7C 8008C37C 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8CF80 8008C380 3C05802C */  lui        $a1, %hi(D_802C23A0)
/* 8CF84 8008C384 24A523A0 */  addiu      $a1, $a1, %lo(D_802C23A0)
/* 8CF88 8008C388 24020001 */  addiu      $v0, $zero, 0x1
/* 8CF8C 8008C38C 3C01802C */  lui        $at, %hi(D_802C23E8)
/* 8CF90 8008C390 AC2223E8 */  sw         $v0, %lo(D_802C23E8)($at)
/* 8CF94 8008C394 3C028009 */  lui        $v0, %hi(func_8008CD10)
/* 8CF98 8008C398 2442CD10 */  addiu      $v0, $v0, %lo(func_8008CD10)
/* 8CF9C 8008C39C 3C01802C */  lui        $at, %hi(D_802C23EC)
/* 8CFA0 8008C3A0 AC2323EC */  sw         $v1, %lo(D_802C23EC)($at)
/* 8CFA4 8008C3A4 ACA00000 */  sw         $zero, 0x0($a1)
/* 8CFA8 8008C3A8 3C01802C */  lui        $at, %hi(D_802C23A8)
/* 8CFAC 8008C3AC AC2223A8 */  sw         $v0, %lo(D_802C23A8)($at)
/* 8CFB0 8008C3B0 3C01802C */  lui        $at, %hi(D_802C23A4)
/* 8CFB4 8008C3B4 0C024310 */  jal        func_80090C40
/* 8CFB8 8008C3B8 AC2523A4 */   sw        $a1, %lo(D_802C23A4)($at)
/* 8CFBC 8008C3BC 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8CFC0 8008C3C0 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8CFC4 8008C3C4 1840001D */  blez       $v0, .L8008C43C
/* 8CFC8 8008C3C8 00000000 */   nop
/* 8CFCC 8008C3CC 00009821 */  addu       $s3, $zero, $zero
/* 8CFD0 8008C3D0 00008021 */  addu       $s0, $zero, $zero
.L8008C3D4:
/* 8CFD4 8008C3D4 3C02802C */  lui        $v0, %hi(D_802C23D0)
/* 8CFD8 8008C3D8 8C4223D0 */  lw         $v0, %lo(D_802C23D0)($v0)
/* 8CFDC 8008C3DC 02021021 */  addu       $v0, $s0, $v0
/* 8CFE0 8008C3E0 A04000C1 */  sb         $zero, 0xC1($v0)
/* 8CFE4 8008C3E4 3C04802C */  lui        $a0, %hi(D_802C23D0)
/* 8CFE8 8008C3E8 8C8423D0 */  lw         $a0, %lo(D_802C23D0)($a0)
/* 8CFEC 8008C3EC 26310001 */  addiu      $s1, $s1, 0x1
/* 8CFF0 8008C3F0 0C0237F5 */  jal        func_8008DFD4
/* 8CFF4 8008C3F4 00902021 */   addu      $a0, $a0, $s0
/* 8CFF8 8008C3F8 A3A00024 */  sb         $zero, 0x24($sp)
/* 8CFFC 8008C3FC 8E42000C */  lw         $v0, 0xC($s2)
/* 8D000 8008C400 3C05802C */  lui        $a1, %hi(D_802C23CC)
/* 8D004 8008C404 8CA523CC */  lw         $a1, %lo(D_802C23CC)($a1)
/* 8D008 8008C408 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8D00C 8008C40C 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8D010 8008C410 27A60020 */  addiu      $a2, $sp, 0x20
/* 8D014 8008C414 A7A00022 */  sh         $zero, 0x22($sp)
/* 8D018 8008C418 00B32821 */  addu       $a1, $a1, $s3
/* 8D01C 8008C41C 0C024324 */  jal        func_80090C90
/* 8D020 8008C420 A7A20020 */   sh        $v0, 0x20($sp)
/* 8D024 8008C424 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D028 8008C428 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D02C 8008C42C 26100120 */  addiu      $s0, $s0, 0x120
/* 8D030 8008C430 0222102A */  slt        $v0, $s1, $v0
/* 8D034 8008C434 1440FFE7 */  bnez       $v0, .L8008C3D4
/* 8D038 8008C438 2673001C */   addiu     $s3, $s3, 0x1C
.L8008C43C:
/* 8D03C 8008C43C 3C03802C */  lui        $v1, %hi(D_802C23BC)
/* 8D040 8008C440 8C6323BC */  lw         $v1, %lo(D_802C23BC)($v1)
/* 8D044 8008C444 3C02802C */  lui        $v0, %hi(D_802C23B8)
/* 8D048 8008C448 8C4223B8 */  lw         $v0, %lo(D_802C23B8)($v0)
/* 8D04C 8008C44C 00621023 */  subu       $v0, $v1, $v0
/* 8D050 8008C450 8FBF0078 */  lw         $ra, 0x78($sp)
/* 8D054 8008C454 8FB30074 */  lw         $s3, 0x74($sp)
/* 8D058 8008C458 8FB20070 */  lw         $s2, 0x70($sp)
/* 8D05C 8008C45C 8FB1006C */  lw         $s1, 0x6C($sp)
/* 8D060 8008C460 8FB00068 */  lw         $s0, 0x68($sp)
/* 8D064 8008C464 03E00008 */  jr         $ra
/* 8D068 8008C468 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_8008C46C
/* 8D06C 8008C46C 30820001 */  andi       $v0, $a0, 0x1
/* 8D070 8008C470 10400003 */  beqz       $v0, .L8008C480
/* 8D074 8008C474 30820002 */   andi      $v0, $a0, 0x2
/* 8D078 8008C478 3C01802C */  lui        $at, %hi(D_802C23E4)
/* 8D07C 8008C47C A42523E4 */  sh         $a1, %lo(D_802C23E4)($at)
.L8008C480:
/* 8D080 8008C480 10400003 */  beqz       $v0, .L8008C490
/* 8D084 8008C484 00000000 */   nop
/* 8D088 8008C488 3C01802C */  lui        $at, %hi(D_802C23E6)
/* 8D08C 8008C48C A42523E6 */  sh         $a1, %lo(D_802C23E6)($at)
.L8008C490:
/* 8D090 8008C490 03E00008 */  jr         $ra
/* 8D094 8008C494 00000000 */   nop

glabel func_8008C498
/* 8D098 8008C498 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8D09C 8008C49C AFB1001C */  sw         $s1, 0x1C($sp)
/* 8D0A0 8008C4A0 00808821 */  addu       $s1, $a0, $zero
/* 8D0A4 8008C4A4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 8D0A8 8008C4A8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 8D0AC 8008C4AC AFB40028 */  sw         $s4, 0x28($sp)
/* 8D0B0 8008C4B0 AFB30024 */  sw         $s3, 0x24($sp)
/* 8D0B4 8008C4B4 AFB20020 */  sw         $s2, 0x20($sp)
/* 8D0B8 8008C4B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 8D0BC 8008C4BC 8E220004 */  lw         $v0, 0x4($s1)
/* 8D0C0 8008C4C0 8E340000 */  lw         $s4, 0x0($s1)
/* 8D0C4 8008C4C4 2C420400 */  sltiu      $v0, $v0, 0x400
/* 8D0C8 8008C4C8 10400010 */  beqz       $v0, .L8008C50C
/* 8D0CC 8008C4CC 26240004 */   addiu     $a0, $s1, 0x4
/* 8D0D0 8008C4D0 02202821 */  addu       $a1, $s1, $zero
/* 8D0D4 8008C4D4 0C0238AD */  jal        func_8008E2B4
/* 8D0D8 8008C4D8 24060005 */   addiu     $a2, $zero, 0x5
/* 8D0DC 8008C4DC 8E240004 */  lw         $a0, 0x4($s1)
/* 8D0E0 8008C4E0 02202821 */  addu       $a1, $s1, $zero
/* 8D0E4 8008C4E4 0C0238AD */  jal        func_8008E2B4
/* 8D0E8 8008C4E8 02803021 */   addu      $a2, $s4, $zero
/* 8D0EC 8008C4EC 8E240008 */  lw         $a0, 0x8($s1)
/* 8D0F0 8008C4F0 02202821 */  addu       $a1, $s1, $zero
/* 8D0F4 8008C4F4 0C0238AD */  jal        func_8008E2B4
/* 8D0F8 8008C4F8 02803021 */   addu      $a2, $s4, $zero
/* 8D0FC 8008C4FC 8E24000C */  lw         $a0, 0xC($s1)
/* 8D100 8008C500 02202821 */  addu       $a1, $s1, $zero
/* 8D104 8008C504 0C0238AD */  jal        func_8008E2B4
/* 8D108 8008C508 02803021 */   addu      $a2, $s4, $zero
.L8008C50C:
/* 8D10C 8008C50C 3C03802C */  lui        $v1, %hi(D_802C23E8)
/* 8D110 8008C510 8C6323E8 */  lw         $v1, %lo(D_802C23E8)($v1)
/* 8D114 8008C514 00009821 */  addu       $s3, $zero, $zero
/* 8D118 8008C518 24620001 */  addiu      $v0, $v1, 0x1
/* 8D11C 8008C51C 3C01802C */  lui        $at, %hi(D_802C23E8)
/* 8D120 8008C520 AC2223E8 */  sw         $v0, %lo(D_802C23E8)($at)
/* 8D124 8008C524 1A800027 */  blez       $s4, .L8008C5C4
/* 8D128 8008C528 0060A821 */   addu      $s5, $v1, $zero
.L8008C52C:
/* 8D12C 8008C52C 8E220004 */  lw         $v0, 0x4($s1)
/* 8D130 8008C530 00139080 */  sll        $s2, $s3, 2
/* 8D134 8008C534 02421021 */  addu       $v0, $s2, $v0
/* 8D138 8008C538 8C420000 */  lw         $v0, 0x0($v0)
/* 8D13C 8008C53C 5040001E */  beql       $v0, $zero, .L8008C5B8
/* 8D140 8008C540 26730001 */   addiu     $s3, $s3, 0x1
/* 8D144 8008C544 02202021 */  addu       $a0, $s1, $zero
/* 8D148 8008C548 0C023842 */  jal        func_8008E108
/* 8D14C 8008C54C 02602821 */   addu      $a1, $s3, $zero
/* 8D150 8008C550 000218C0 */  sll        $v1, $v0, 3
/* 8D154 8008C554 3C10802C */  lui        $s0, %hi(D_802C23D0)
/* 8D158 8008C558 8E1023D0 */  lw         $s0, %lo(D_802C23D0)($s0)
/* 8D15C 8008C55C 00621821 */  addu       $v1, $v1, $v0
/* 8D160 8008C560 00031940 */  sll        $v1, $v1, 5
/* 8D164 8008C564 02038021 */  addu       $s0, $s0, $v1
/* 8D168 8008C568 0C0237F5 */  jal        func_8008DFD4
/* 8D16C 8008C56C 02002021 */   addu      $a0, $s0, $zero
/* 8D170 8008C570 AE110070 */  sw         $s1, 0x70($s0)
/* 8D174 8008C574 8E220008 */  lw         $v0, 0x8($s1)
/* 8D178 8008C578 02421021 */  addu       $v0, $s2, $v0
/* 8D17C 8008C57C 8C420000 */  lw         $v0, 0x0($v0)
/* 8D180 8008C580 AE020084 */  sw         $v0, 0x84($s0)
/* 8D184 8008C584 AE020034 */  sw         $v0, 0x34($s0)
/* 8D188 8008C588 8E22000C */  lw         $v0, 0xC($s1)
/* 8D18C 8008C58C 02421021 */  addu       $v0, $s2, $v0
/* 8D190 8008C590 8C420000 */  lw         $v0, 0x0($v0)
/* 8D194 8008C594 AE020080 */  sw         $v0, 0x80($s0)
/* 8D198 8008C598 AE020030 */  sw         $v0, 0x30($s0)
/* 8D19C 8008C59C 8E220004 */  lw         $v0, 0x4($s1)
/* 8D1A0 8008C5A0 02421021 */  addu       $v0, $s2, $v0
/* 8D1A4 8008C5A4 8C420000 */  lw         $v0, 0x0($v0)
/* 8D1A8 8008C5A8 AE150040 */  sw         $s5, 0x40($s0)
/* 8D1AC 8008C5AC AE020078 */  sw         $v0, 0x78($s0)
/* 8D1B0 8008C5B0 AE020000 */  sw         $v0, 0x0($s0)
/* 8D1B4 8008C5B4 26730001 */  addiu      $s3, $s3, 0x1
.L8008C5B8:
/* 8D1B8 8008C5B8 0274102A */  slt        $v0, $s3, $s4
/* 8D1BC 8008C5BC 1440FFDB */  bnez       $v0, .L8008C52C
/* 8D1C0 8008C5C0 00000000 */   nop
.L8008C5C4:
/* 8D1C4 8008C5C4 02A01021 */  addu       $v0, $s5, $zero
/* 8D1C8 8008C5C8 8FBF0030 */  lw         $ra, 0x30($sp)
/* 8D1CC 8008C5CC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 8D1D0 8008C5D0 8FB40028 */  lw         $s4, 0x28($sp)
/* 8D1D4 8008C5D4 8FB30024 */  lw         $s3, 0x24($sp)
/* 8D1D8 8008C5D8 8FB20020 */  lw         $s2, 0x20($sp)
/* 8D1DC 8008C5DC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 8D1E0 8008C5E0 8FB00018 */  lw         $s0, 0x18($sp)
/* 8D1E4 8008C5E4 03E00008 */  jr         $ra
/* 8D1E8 8008C5E8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8008C5EC
/* 8D1EC 8008C5EC 00802821 */  addu       $a1, $a0, $zero
/* 8D1F0 8008C5F0 3C03802C */  lui        $v1, %hi(D_802C23D8)
/* 8D1F4 8008C5F4 8C6323D8 */  lw         $v1, %lo(D_802C23D8)($v1)
/* 8D1F8 8008C5F8 3C04802C */  lui        $a0, %hi(D_802C23D0)
/* 8D1FC 8008C5FC 8C8423D0 */  lw         $a0, %lo(D_802C23D0)($a0)
/* 8D200 8008C600 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8D204 8008C604 00051080 */  sll        $v0, $a1, 2
/* 8D208 8008C608 AFBF0020 */  sw         $ra, 0x20($sp)
/* 8D20C 8008C60C 00431021 */  addu       $v0, $v0, $v1
/* 8D210 8008C610 8C480000 */  lw         $t0, 0x0($v0)
/* 8D214 8008C614 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D218 8008C618 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D21C 8008C61C 00003021 */  addu       $a2, $zero, $zero
/* 8D220 8008C620 18400011 */  blez       $v0, .L8008C668
/* 8D224 8008C624 25070001 */   addiu     $a3, $t0, 0x1
/* 8D228 8008C628 00404821 */  addu       $t1, $v0, $zero
.L8008C62C:
/* 8D22C 8008C62C 8C820000 */  lw         $v0, 0x0($a0)
/* 8D230 8008C630 50400013 */  beql       $v0, $zero, .L8008C680
/* 8D234 8008C634 AFA80010 */   sw        $t0, 0x10($sp)
/* 8D238 8008C638 9482009E */  lhu        $v0, 0x9E($a0)
/* 8D23C 8008C63C 10400007 */  beqz       $v0, .L8008C65C
/* 8D240 8008C640 24C60001 */   addiu     $a2, $a2, 0x1
/* 8D244 8008C644 8C830044 */  lw         $v1, 0x44($a0)
/* 8D248 8008C648 0067102A */  slt        $v0, $v1, $a3
/* 8D24C 8008C64C 10400003 */  beqz       $v0, .L8008C65C
/* 8D250 8008C650 00000000 */   nop
/* 8D254 8008C654 00603821 */  addu       $a3, $v1, $zero
/* 8D258 8008C658 00805021 */  addu       $t2, $a0, $zero
.L8008C65C:
/* 8D25C 8008C65C 00C9102A */  slt        $v0, $a2, $t1
/* 8D260 8008C660 1440FFF2 */  bnez       $v0, .L8008C62C
/* 8D264 8008C664 24840120 */   addiu     $a0, $a0, 0x120
.L8008C668:
/* 8D268 8008C668 00E8102A */  slt        $v0, $a3, $t0
/* 8D26C 8008C66C 54400003 */  bnel       $v0, $zero, .L8008C67C
/* 8D270 8008C670 AFA80010 */   sw        $t0, 0x10($sp)
/* 8D274 8008C674 080231A3 */  j          .L8008C68C
/* 8D278 8008C678 00001021 */   addu      $v0, $zero, $zero
.L8008C67C:
/* 8D27C 8008C67C 01402021 */  addu       $a0, $t2, $zero
.L8008C680:
/* 8D280 8008C680 24060080 */  addiu      $a2, $zero, 0x80
/* 8D284 8008C684 0C0238BB */  jal        func_8008E2EC
/* 8D288 8008C688 24070080 */   addiu     $a3, $zero, 0x80
.L8008C68C:
/* 8D28C 8008C68C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 8D290 8008C690 03E00008 */  jr         $ra
/* 8D294 8008C694 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8008C698
/* 8D298 8008C698 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8D29C 8008C69C 00804821 */  addu       $t1, $a0, $zero
/* 8D2A0 8008C6A0 00A05021 */  addu       $t2, $a1, $zero
/* 8D2A4 8008C6A4 8FA80040 */  lw         $t0, 0x40($sp)
/* 8D2A8 8008C6A8 00C05821 */  addu       $t3, $a2, $zero
/* 8D2AC 8008C6AC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8D2B0 8008C6B0 15020006 */  bne        $t0, $v0, .L8008C6CC
/* 8D2B4 8008C6B4 AFBF0028 */   sw        $ra, 0x28($sp)
/* 8D2B8 8008C6B8 3C03802C */  lui        $v1, %hi(D_802C23D8)
/* 8D2BC 8008C6BC 8C6323D8 */  lw         $v1, %lo(D_802C23D8)($v1)
/* 8D2C0 8008C6C0 00091080 */  sll        $v0, $t1, 2
/* 8D2C4 8008C6C4 00431021 */  addu       $v0, $v0, $v1
/* 8D2C8 8008C6C8 8C480000 */  lw         $t0, 0x0($v0)
.L8008C6CC:
/* 8D2CC 8008C6CC 10E0000F */  beqz       $a3, .L8008C70C
/* 8D2D0 8008C6D0 25060001 */   addiu     $a2, $t0, 0x1
/* 8D2D4 8008C6D4 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D2D8 8008C6D8 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D2DC 8008C6DC 3C04802C */  lui        $a0, %hi(D_802C23D0)
/* 8D2E0 8008C6E0 8C8423D0 */  lw         $a0, %lo(D_802C23D0)($a0)
/* 8D2E4 8008C6E4 1840000D */  blez       $v0, .L8008C71C
/* 8D2E8 8008C6E8 00002821 */   addu      $a1, $zero, $zero
/* 8D2EC 8008C6EC 00401821 */  addu       $v1, $v0, $zero
.L8008C6F0:
/* 8D2F0 8008C6F0 9482009E */  lhu        $v0, 0x9E($a0)
/* 8D2F4 8008C6F4 10490020 */  beq        $v0, $t1, .L8008C778
/* 8D2F8 8008C6F8 24A50001 */   addiu     $a1, $a1, 0x1
/* 8D2FC 8008C6FC 00A3102A */  slt        $v0, $a1, $v1
/* 8D300 8008C700 1440FFFB */  bnez       $v0, .L8008C6F0
/* 8D304 8008C704 24840120 */   addiu     $a0, $a0, 0x120
/* 8D308 8008C708 25060001 */  addiu      $a2, $t0, 0x1
.L8008C70C:
/* 8D30C 8008C70C 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D310 8008C710 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D314 8008C714 3C04802C */  lui        $a0, %hi(D_802C23D0)
/* 8D318 8008C718 8C8423D0 */  lw         $a0, %lo(D_802C23D0)($a0)
.L8008C71C:
/* 8D31C 8008C71C 18400011 */  blez       $v0, .L8008C764
/* 8D320 8008C720 00002821 */   addu      $a1, $zero, $zero
/* 8D324 8008C724 00403821 */  addu       $a3, $v0, $zero
.L8008C728:
/* 8D328 8008C728 8C820000 */  lw         $v0, 0x0($a0)
/* 8D32C 8008C72C 50400015 */  beql       $v0, $zero, .L8008C784
/* 8D330 8008C730 AFA80010 */   sw        $t0, 0x10($sp)
/* 8D334 8008C734 9482009E */  lhu        $v0, 0x9E($a0)
/* 8D338 8008C738 10400007 */  beqz       $v0, .L8008C758
/* 8D33C 8008C73C 24A50001 */   addiu     $a1, $a1, 0x1
/* 8D340 8008C740 8C830044 */  lw         $v1, 0x44($a0)
/* 8D344 8008C744 0066102A */  slt        $v0, $v1, $a2
/* 8D348 8008C748 10400003 */  beqz       $v0, .L8008C758
/* 8D34C 8008C74C 00000000 */   nop
/* 8D350 8008C750 00603021 */  addu       $a2, $v1, $zero
/* 8D354 8008C754 00806021 */  addu       $t4, $a0, $zero
.L8008C758:
/* 8D358 8008C758 00A7102A */  slt        $v0, $a1, $a3
/* 8D35C 8008C75C 1440FFF2 */  bnez       $v0, .L8008C728
/* 8D360 8008C760 24840120 */   addiu     $a0, $a0, 0x120
.L8008C764:
/* 8D364 8008C764 00C8102A */  slt        $v0, $a2, $t0
/* 8D368 8008C768 54400005 */  bnel       $v0, $zero, .L8008C780
/* 8D36C 8008C76C AFA80010 */   sw        $t0, 0x10($sp)
/* 8D370 8008C770 080231E5 */  j          .L8008C794
/* 8D374 8008C774 00001021 */   addu      $v0, $zero, $zero
.L8008C778:
/* 8D378 8008C778 080231E1 */  j          .L8008C784
/* 8D37C 8008C77C AFA80010 */   sw        $t0, 0x10($sp)
.L8008C780:
/* 8D380 8008C780 01802021 */  addu       $a0, $t4, $zero
.L8008C784:
/* 8D384 8008C784 01202821 */  addu       $a1, $t1, $zero
/* 8D388 8008C788 01403021 */  addu       $a2, $t2, $zero
/* 8D38C 8008C78C 0C0238BB */  jal        func_8008E2EC
/* 8D390 8008C790 01603821 */   addu      $a3, $t3, $zero
.L8008C794:
/* 8D394 8008C794 8FBF0028 */  lw         $ra, 0x28($sp)
/* 8D398 8008C798 03E00008 */  jr         $ra
/* 8D39C 8008C79C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8008C7A0
/* 8D3A0 8008C7A0 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8D3A4 8008C7A4 14A00002 */  bnez       $a1, .L8008C7B0
/* 8D3A8 8008C7A8 00A04821 */   addu      $t1, $a1, $zero
/* 8D3AC 8008C7AC 24050001 */  addiu      $a1, $zero, 0x1
.L8008C7B0:
/* 8D3B0 8008C7B0 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D3B4 8008C7B4 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D3B8 8008C7B8 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D3BC 8008C7BC 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D3C0 8008C7C0 18400014 */  blez       $v0, .L8008C814
/* 8D3C4 8008C7C4 00003021 */   addu      $a2, $zero, $zero
/* 8D3C8 8008C7C8 30880001 */  andi       $t0, $a0, 0x1
/* 8D3CC 8008C7CC 30840002 */  andi       $a0, $a0, 0x2
/* 8D3D0 8008C7D0 00403821 */  addu       $a3, $v0, $zero
/* 8D3D4 8008C7D4 24630018 */  addiu      $v1, $v1, 0x18
.L8008C7D8:
/* 8D3D8 8008C7D8 94620086 */  lhu        $v0, 0x86($v1)
/* 8D3DC 8008C7DC 10400005 */  beqz       $v0, .L8008C7F4
/* 8D3E0 8008C7E0 00000000 */   nop
/* 8D3E4 8008C7E4 55000006 */  bnel       $t0, $zero, .L8008C800
/* 8D3E8 8008C7E8 AC69FFF4 */   sw        $t1, -0xC($v1)
/* 8D3EC 8008C7EC 08023202 */  j          .L8008C808
/* 8D3F0 8008C7F0 24C60001 */   addiu     $a2, $a2, 0x1
.L8008C7F4:
/* 8D3F4 8008C7F4 50800004 */  beql       $a0, $zero, .L8008C808
/* 8D3F8 8008C7F8 24C60001 */   addiu     $a2, $a2, 0x1
/* 8D3FC 8008C7FC AC69FFF4 */  sw         $t1, -0xC($v1)
.L8008C800:
/* 8D400 8008C800 AC650000 */  sw         $a1, 0x0($v1)
/* 8D404 8008C804 24C60001 */  addiu      $a2, $a2, 0x1
.L8008C808:
/* 8D408 8008C808 00C7102A */  slt        $v0, $a2, $a3
/* 8D40C 8008C80C 1440FFF2 */  bnez       $v0, .L8008C7D8
/* 8D410 8008C810 24630120 */   addiu     $v1, $v1, 0x120
.L8008C814:
/* 8D414 8008C814 27BD0008 */  addiu      $sp, $sp, 0x8
/* 8D418 8008C818 03E00008 */  jr         $ra
/* 8D41C 8008C81C 00000000 */   nop

glabel func_8008C820
/* 8D420 8008C820 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8D424 8008C824 00003021 */  addu       $a2, $zero, $zero
/* 8D428 8008C828 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D42C 8008C82C 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D430 8008C830 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D434 8008C834 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D438 8008C838 18400015 */  blez       $v0, .L8008C890
/* 8D43C 8008C83C 00002821 */   addu      $a1, $zero, $zero
/* 8D440 8008C840 30880001 */  andi       $t0, $a0, 0x1
/* 8D444 8008C844 30840002 */  andi       $a0, $a0, 0x2
/* 8D448 8008C848 00403821 */  addu       $a3, $v0, $zero
.L8008C84C:
/* 8D44C 8008C84C 8C620000 */  lw         $v0, 0x0($v1)
/* 8D450 8008C850 5040000C */  beql       $v0, $zero, .L8008C884
/* 8D454 8008C854 24C60001 */   addiu     $a2, $a2, 0x1
/* 8D458 8008C858 9462009E */  lhu        $v0, 0x9E($v1)
/* 8D45C 8008C85C 10400005 */  beqz       $v0, .L8008C874
/* 8D460 8008C860 00000000 */   nop
/* 8D464 8008C864 55000006 */  bnel       $t0, $zero, .L8008C880
/* 8D468 8008C868 24A50001 */   addiu     $a1, $a1, 0x1
/* 8D46C 8008C86C 08023221 */  j          .L8008C884
/* 8D470 8008C870 24C60001 */   addiu     $a2, $a2, 0x1
.L8008C874:
/* 8D474 8008C874 50800003 */  beql       $a0, $zero, .L8008C884
/* 8D478 8008C878 24C60001 */   addiu     $a2, $a2, 0x1
/* 8D47C 8008C87C 24A50001 */  addiu      $a1, $a1, 0x1
.L8008C880:
/* 8D480 8008C880 24C60001 */  addiu      $a2, $a2, 0x1
.L8008C884:
/* 8D484 8008C884 00C7102A */  slt        $v0, $a2, $a3
/* 8D488 8008C888 1440FFF0 */  bnez       $v0, .L8008C84C
/* 8D48C 8008C88C 24630120 */   addiu     $v1, $v1, 0x120
.L8008C890:
/* 8D490 8008C890 00A01021 */  addu       $v0, $a1, $zero
/* 8D494 8008C894 03E00008 */  jr         $ra
/* 8D498 8008C898 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008C89C
/* 8D49C 8008C89C 14800003 */  bnez       $a0, .L8008C8AC
/* 8D4A0 8008C8A0 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 8D4A4 8008C8A4 08023241 */  j          .L8008C904
/* 8D4A8 8008C8A8 00001021 */   addu      $v0, $zero, $zero
.L8008C8AC:
/* 8D4AC 8008C8AC 00A04021 */  addu       $t0, $a1, $zero
/* 8D4B0 8008C8B0 51000001 */  beql       $t0, $zero, .L8008C8B8
/* 8D4B4 8008C8B4 24080001 */   addiu     $t0, $zero, 0x1
.L8008C8B8:
/* 8D4B8 8008C8B8 00003821 */  addu       $a3, $zero, $zero
/* 8D4BC 8008C8BC 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D4C0 8008C8C0 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D4C4 8008C8C4 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D4C8 8008C8C8 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D4CC 8008C8CC 1840000C */  blez       $v0, .L8008C900
/* 8D4D0 8008C8D0 00003021 */   addu      $a2, $zero, $zero
/* 8D4D4 8008C8D4 00404821 */  addu       $t1, $v0, $zero
/* 8D4D8 8008C8D8 24630018 */  addiu      $v1, $v1, 0x18
.L8008C8DC:
/* 8D4DC 8008C8DC 8C620028 */  lw         $v0, 0x28($v1)
/* 8D4E0 8008C8E0 14440004 */  bne        $v0, $a0, .L8008C8F4
/* 8D4E4 8008C8E4 24E70001 */   addiu     $a3, $a3, 0x1
/* 8D4E8 8008C8E8 24C60001 */  addiu      $a2, $a2, 0x1
/* 8D4EC 8008C8EC AC65FFF4 */  sw         $a1, -0xC($v1)
/* 8D4F0 8008C8F0 AC680000 */  sw         $t0, 0x0($v1)
.L8008C8F4:
/* 8D4F4 8008C8F4 00E9102A */  slt        $v0, $a3, $t1
/* 8D4F8 8008C8F8 1440FFF8 */  bnez       $v0, .L8008C8DC
/* 8D4FC 8008C8FC 24630120 */   addiu     $v1, $v1, 0x120
.L8008C900:
/* 8D500 8008C900 00C01021 */  addu       $v0, $a2, $zero
.L8008C904:
/* 8D504 8008C904 03E00008 */  jr         $ra
/* 8D508 8008C908 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008C90C
/* 8D50C 8008C90C 14800003 */  bnez       $a0, .L8008C91C
/* 8D510 8008C910 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 8D514 8008C914 08023257 */  j          .L8008C95C
/* 8D518 8008C918 00001021 */   addu      $v0, $zero, $zero
.L8008C91C:
/* 8D51C 8008C91C 00003021 */  addu       $a2, $zero, $zero
/* 8D520 8008C920 3C07802C */  lui        $a3, %hi(D_802C23C8)
/* 8D524 8008C924 8CE723C8 */  lw         $a3, %lo(D_802C23C8)($a3)
/* 8D528 8008C928 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D52C 8008C92C 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D530 8008C930 18E00009 */  blez       $a3, .L8008C958
/* 8D534 8008C934 00002821 */   addu      $a1, $zero, $zero
.L8008C938:
/* 8D538 8008C938 8C620040 */  lw         $v0, 0x40($v1)
/* 8D53C 8008C93C 24C60001 */  addiu      $a2, $a2, 0x1
/* 8D540 8008C940 00441026 */  xor        $v0, $v0, $a0
/* 8D544 8008C944 2C420001 */  sltiu      $v0, $v0, 0x1
/* 8D548 8008C948 00A22821 */  addu       $a1, $a1, $v0
/* 8D54C 8008C94C 00C7102A */  slt        $v0, $a2, $a3
/* 8D550 8008C950 1440FFF9 */  bnez       $v0, .L8008C938
/* 8D554 8008C954 24630120 */   addiu     $v1, $v1, 0x120
.L8008C958:
/* 8D558 8008C958 00A01021 */  addu       $v0, $a1, $zero
.L8008C95C:
/* 8D55C 8008C95C 03E00008 */  jr         $ra
/* 8D560 8008C960 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008C964
/* 8D564 8008C964 14800003 */  bnez       $a0, .L8008C974
/* 8D568 8008C968 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 8D56C 8008C96C 0802326F */  j          .L8008C9BC
/* 8D570 8008C970 00001021 */   addu      $v0, $zero, $zero
.L8008C974:
/* 8D574 8008C974 00003821 */  addu       $a3, $zero, $zero
/* 8D578 8008C978 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D57C 8008C97C 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D580 8008C980 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D584 8008C984 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D588 8008C988 1840000B */  blez       $v0, .L8008C9B8
/* 8D58C 8008C98C 00003021 */   addu      $a2, $zero, $zero
/* 8D590 8008C990 00404021 */  addu       $t0, $v0, $zero
/* 8D594 8008C994 24630096 */  addiu      $v1, $v1, 0x96
.L8008C998:
/* 8D598 8008C998 8C62FFAA */  lw         $v0, -0x56($v1)
/* 8D59C 8008C99C 14440003 */  bne        $v0, $a0, .L8008C9AC
/* 8D5A0 8008C9A0 24E70001 */   addiu     $a3, $a3, 0x1
/* 8D5A4 8008C9A4 A4650000 */  sh         $a1, 0x0($v1)
/* 8D5A8 8008C9A8 24C60001 */  addiu      $a2, $a2, 0x1
.L8008C9AC:
/* 8D5AC 8008C9AC 00E8102A */  slt        $v0, $a3, $t0
/* 8D5B0 8008C9B0 1440FFF9 */  bnez       $v0, .L8008C998
/* 8D5B4 8008C9B4 24630120 */   addiu     $v1, $v1, 0x120
.L8008C9B8:
/* 8D5B8 8008C9B8 00C01021 */  addu       $v0, $a2, $zero
.L8008C9BC:
/* 8D5BC 8008C9BC 03E00008 */  jr         $ra
/* 8D5C0 8008C9C0 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008C9C4
/* 8D5C4 8008C9C4 14800003 */  bnez       $a0, .L8008C9D4
/* 8D5C8 8008C9C8 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 8D5CC 8008C9CC 0802328B */  j          .L8008CA2C
/* 8D5D0 8008C9D0 00001021 */   addu      $v0, $zero, $zero
.L8008C9D4:
/* 8D5D4 8008C9D4 00003821 */  addu       $a3, $zero, $zero
/* 8D5D8 8008C9D8 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D5DC 8008C9DC 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D5E0 8008C9E0 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D5E4 8008C9E4 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D5E8 8008C9E8 1840000F */  blez       $v0, .L8008CA28
/* 8D5EC 8008C9EC 00003021 */   addu      $a2, $zero, $zero
/* 8D5F0 8008C9F0 240800FF */  addiu      $t0, $zero, 0xFF
/* 8D5F4 8008C9F4 246300B6 */  addiu      $v1, $v1, 0xB6
.L8008C9F8:
/* 8D5F8 8008C9F8 8C62FF8A */  lw         $v0, -0x76($v1)
/* 8D5FC 8008C9FC 14440004 */  bne        $v0, $a0, .L8008CA10
/* 8D600 8008CA00 00000000 */   nop
/* 8D604 8008CA04 24C60001 */  addiu      $a2, $a2, 0x1
/* 8D608 8008CA08 A465FFF2 */  sh         $a1, -0xE($v1)
/* 8D60C 8008CA0C A0680000 */  sb         $t0, 0x0($v1)
.L8008CA10:
/* 8D610 8008CA10 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D614 8008CA14 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D618 8008CA18 24E70001 */  addiu      $a3, $a3, 0x1
/* 8D61C 8008CA1C 00E2102A */  slt        $v0, $a3, $v0
/* 8D620 8008CA20 1440FFF5 */  bnez       $v0, .L8008C9F8
/* 8D624 8008CA24 24630120 */   addiu     $v1, $v1, 0x120
.L8008CA28:
/* 8D628 8008CA28 00C01021 */  addu       $v0, $a2, $zero
.L8008CA2C:
/* 8D62C 8008CA2C 03E00008 */  jr         $ra
/* 8D630 8008CA30 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008CA34
/* 8D634 8008CA34 44851000 */  mtc1       $a1, $f2
/* 8D638 8008CA38 00000000 */  nop
/* 8D63C 8008CA3C 14800003 */  bnez       $a0, .L8008CA4C
/* 8D640 8008CA40 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 8D644 8008CA44 080232A7 */  j          .L8008CA9C
/* 8D648 8008CA48 00001021 */   addu      $v0, $zero, $zero
.L8008CA4C:
/* 8D64C 8008CA4C 00003021 */  addu       $a2, $zero, $zero
/* 8D650 8008CA50 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D654 8008CA54 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D658 8008CA58 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D65C 8008CA5C 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D660 8008CA60 1840000D */  blez       $v0, .L8008CA98
/* 8D664 8008CA64 00002821 */   addu      $a1, $zero, $zero
/* 8D668 8008CA68 00403821 */  addu       $a3, $v0, $zero
/* 8D66C 8008CA6C 2463002C */  addiu      $v1, $v1, 0x2C
.L8008CA70:
/* 8D670 8008CA70 8C620014 */  lw         $v0, 0x14($v1)
/* 8D674 8008CA74 14440005 */  bne        $v0, $a0, .L8008CA8C
/* 8D678 8008CA78 24C60001 */   addiu     $a2, $a2, 0x1
/* 8D67C 8008CA7C C460005C */  lwc1       $f0, 0x5C($v1)
/* 8D680 8008CA80 46001000 */  add.s      $f0, $f2, $f0
/* 8D684 8008CA84 24A50001 */  addiu      $a1, $a1, 0x1
/* 8D688 8008CA88 E4600000 */  swc1       $f0, 0x0($v1)
.L8008CA8C:
/* 8D68C 8008CA8C 00C7102A */  slt        $v0, $a2, $a3
/* 8D690 8008CA90 1440FFF7 */  bnez       $v0, .L8008CA70
/* 8D694 8008CA94 24630120 */   addiu     $v1, $v1, 0x120
.L8008CA98:
/* 8D698 8008CA98 00A01021 */  addu       $v0, $a1, $zero
.L8008CA9C:
/* 8D69C 8008CA9C 03E00008 */  jr         $ra
/* 8D6A0 8008CAA0 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008CAA4
/* 8D6A4 8008CAA4 14800003 */  bnez       $a0, .L8008CAB4
/* 8D6A8 8008CAA8 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 8D6AC 8008CAAC 080232CA */  j          .L8008CB28
/* 8D6B0 8008CAB0 00001021 */   addu      $v0, $zero, $zero
.L8008CAB4:
/* 8D6B4 8008CAB4 1CA00003 */  bgtz       $a1, .L8008CAC4
/* 8D6B8 8008CAB8 28A20101 */   slti      $v0, $a1, 0x101
/* 8D6BC 8008CABC 080232B3 */  j          .L8008CACC
/* 8D6C0 8008CAC0 24050001 */   addiu     $a1, $zero, 0x1
.L8008CAC4:
/* 8D6C4 8008CAC4 50400001 */  beql       $v0, $zero, .L8008CACC
/* 8D6C8 8008CAC8 24050100 */   addiu     $a1, $zero, 0x100
.L8008CACC:
/* 8D6CC 8008CACC 00003821 */  addu       $a3, $zero, $zero
/* 8D6D0 8008CAD0 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D6D4 8008CAD4 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D6D8 8008CAD8 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D6DC 8008CADC 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D6E0 8008CAE0 18400010 */  blez       $v0, .L8008CB24
/* 8D6E4 8008CAE4 00003021 */   addu      $a2, $zero, $zero
/* 8D6E8 8008CAE8 00404021 */  addu       $t0, $v0, $zero
/* 8D6EC 8008CAEC 24630094 */  addiu      $v1, $v1, 0x94
.L8008CAF0:
/* 8D6F0 8008CAF0 8C62FFAC */  lw         $v0, -0x54($v1)
/* 8D6F4 8008CAF4 14440008 */  bne        $v0, $a0, .L8008CB18
/* 8D6F8 8008CAF8 24E70001 */   addiu     $a3, $a3, 0x1
/* 8D6FC 8008CAFC 9462000C */  lhu        $v0, 0xC($v1)
/* 8D700 8008CB00 00450018 */  mult       $v0, $a1
/* 8D704 8008CB04 00001012 */  mflo       $v0
/* 8D708 8008CB08 24C60001 */  addiu      $a2, $a2, 0x1
/* 8D70C 8008CB0C A465FFFC */  sh         $a1, -0x4($v1)
/* 8D710 8008CB10 000211C3 */  sra        $v0, $v0, 7
/* 8D714 8008CB14 A4620000 */  sh         $v0, 0x0($v1)
.L8008CB18:
/* 8D718 8008CB18 00E8102A */  slt        $v0, $a3, $t0
/* 8D71C 8008CB1C 1440FFF4 */  bnez       $v0, .L8008CAF0
/* 8D720 8008CB20 24630120 */   addiu     $v1, $v1, 0x120
.L8008CB24:
/* 8D724 8008CB24 00C01021 */  addu       $v0, $a2, $zero
.L8008CB28:
/* 8D728 8008CB28 03E00008 */  jr         $ra
/* 8D72C 8008CB2C 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008CB30
/* 8D730 8008CB30 14800003 */  bnez       $a0, .L8008CB40
/* 8D734 8008CB34 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 8D738 8008CB38 080232EC */  j          .L8008CBB0
/* 8D73C 8008CB3C 00001021 */   addu      $v0, $zero, $zero
.L8008CB40:
/* 8D740 8008CB40 04A10003 */  bgez       $a1, .L8008CB50
/* 8D744 8008CB44 28A20080 */   slti      $v0, $a1, 0x80
/* 8D748 8008CB48 080232D6 */  j          .L8008CB58
/* 8D74C 8008CB4C 00002821 */   addu      $a1, $zero, $zero
.L8008CB50:
/* 8D750 8008CB50 50400001 */  beql       $v0, $zero, .L8008CB58
/* 8D754 8008CB54 2405007F */   addiu     $a1, $zero, 0x7F
.L8008CB58:
/* 8D758 8008CB58 00003821 */  addu       $a3, $zero, $zero
/* 8D75C 8008CB5C 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D760 8008CB60 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D764 8008CB64 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8D768 8008CB68 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8D76C 8008CB6C 1840000F */  blez       $v0, .L8008CBAC
/* 8D770 8008CB70 00003021 */   addu      $a2, $zero, $zero
/* 8D774 8008CB74 240800FF */  addiu      $t0, $zero, 0xFF
/* 8D778 8008CB78 246300C4 */  addiu      $v1, $v1, 0xC4
.L8008CB7C:
/* 8D77C 8008CB7C 8C62FF7C */  lw         $v0, -0x84($v1)
/* 8D780 8008CB80 14440004 */  bne        $v0, $a0, .L8008CB94
/* 8D784 8008CB84 00000000 */   nop
/* 8D788 8008CB88 24C60001 */  addiu      $a2, $a2, 0x1
/* 8D78C 8008CB8C A065FFFF */  sb         $a1, -0x1($v1)
/* 8D790 8008CB90 A0680000 */  sb         $t0, 0x0($v1)
.L8008CB94:
/* 8D794 8008CB94 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D798 8008CB98 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D79C 8008CB9C 24E70001 */  addiu      $a3, $a3, 0x1
/* 8D7A0 8008CBA0 00E2102A */  slt        $v0, $a3, $v0
/* 8D7A4 8008CBA4 1440FFF5 */  bnez       $v0, .L8008CB7C
/* 8D7A8 8008CBA8 24630120 */   addiu     $v1, $v1, 0x120
.L8008CBAC:
/* 8D7AC 8008CBAC 00C01021 */  addu       $v0, $a2, $zero
.L8008CBB0:
/* 8D7B0 8008CBB0 03E00008 */  jr         $ra
/* 8D7B4 8008CBB4 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008CBB8
/* 8D7B8 8008CBB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D7BC 8008CBBC AFBF0010 */  sw         $ra, 0x10($sp)
/* 8D7C0 8008CBC0 0C02376A */  jal        func_8008DDA8
/* 8D7C4 8008CBC4 00000000 */   nop
/* 8D7C8 8008CBC8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8D7CC 8008CBCC 03E00008 */  jr         $ra
/* 8D7D0 8008CBD0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008CBD4
/* 8D7D4 8008CBD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D7D8 8008CBD8 10800006 */  beqz       $a0, .L8008CBF4
/* 8D7DC 8008CBDC AFBF0010 */   sw        $ra, 0x10($sp)
/* 8D7E0 8008CBE0 8C820010 */  lw         $v0, 0x10($a0)
/* 8D7E4 8008CBE4 04410003 */  bgez       $v0, .L8008CBF4
/* 8D7E8 8008CBE8 00000000 */   nop
/* 8D7EC 8008CBEC 3C01802C */  lui        $at, %hi(D_802C23F0)
/* 8D7F0 8008CBF0 AC2423F0 */  sw         $a0, %lo(D_802C23F0)($at)
.L8008CBF4:
/* 8D7F4 8008CBF4 0C023126 */  jal        func_8008C498
/* 8D7F8 8008CBF8 00A02021 */   addu      $a0, $a1, $zero
/* 8D7FC 8008CBFC 3C03802C */  lui        $v1, %hi(D_802C23F4)
/* 8D800 8008CC00 8C6323F4 */  lw         $v1, %lo(D_802C23F4)($v1)
/* 8D804 8008CC04 3C01802C */  lui        $at, %hi(D_802C23F0)
/* 8D808 8008CC08 AC2323F0 */  sw         $v1, %lo(D_802C23F0)($at)
/* 8D80C 8008CC0C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8D810 8008CC10 03E00008 */  jr         $ra
/* 8D814 8008CC14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008CC18
/* 8D818 8008CC18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8D81C 8008CC1C 10800006 */  beqz       $a0, .L8008CC38
/* 8D820 8008CC20 AFBF0010 */   sw        $ra, 0x10($sp)
/* 8D824 8008CC24 8C820010 */  lw         $v0, 0x10($a0)
/* 8D828 8008CC28 04410003 */  bgez       $v0, .L8008CC38
/* 8D82C 8008CC2C 00000000 */   nop
/* 8D830 8008CC30 3C01802C */  lui        $at, %hi(D_802C23F0)
/* 8D834 8008CC34 AC2423F0 */  sw         $a0, %lo(D_802C23F0)($at)
.L8008CC38:
/* 8D838 8008CC38 0C02317B */  jal        func_8008C5EC
/* 8D83C 8008CC3C 00A02021 */   addu      $a0, $a1, $zero
/* 8D840 8008CC40 3C03802C */  lui        $v1, %hi(D_802C23F4)
/* 8D844 8008CC44 8C6323F4 */  lw         $v1, %lo(D_802C23F4)($v1)
/* 8D848 8008CC48 3C01802C */  lui        $at, %hi(D_802C23F0)
/* 8D84C 8008CC4C AC2323F0 */  sw         $v1, %lo(D_802C23F0)($at)
/* 8D850 8008CC50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8D854 8008CC54 03E00008 */  jr         $ra
/* 8D858 8008CC58 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008CC5C
/* 8D85C 8008CC5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8D860 8008CC60 8FA30034 */  lw         $v1, 0x34($sp)
/* 8D864 8008CC64 10800006 */  beqz       $a0, .L8008CC80
/* 8D868 8008CC68 AFBF0018 */   sw        $ra, 0x18($sp)
/* 8D86C 8008CC6C 8C820010 */  lw         $v0, 0x10($a0)
/* 8D870 8008CC70 04430004 */  bgezl      $v0, .L8008CC84
/* 8D874 8008CC74 00A02021 */   addu      $a0, $a1, $zero
/* 8D878 8008CC78 3C01802C */  lui        $at, %hi(D_802C23F0)
/* 8D87C 8008CC7C AC2423F0 */  sw         $a0, %lo(D_802C23F0)($at)
.L8008CC80:
/* 8D880 8008CC80 00A02021 */  addu       $a0, $a1, $zero
.L8008CC84:
/* 8D884 8008CC84 00C02821 */  addu       $a1, $a2, $zero
/* 8D888 8008CC88 00E03021 */  addu       $a2, $a3, $zero
/* 8D88C 8008CC8C 8FA70030 */  lw         $a3, 0x30($sp)
/* 8D890 8008CC90 0C0231A6 */  jal        func_8008C698
/* 8D894 8008CC94 AFA30010 */   sw        $v1, 0x10($sp)
/* 8D898 8008CC98 3C03802C */  lui        $v1, %hi(D_802C23F4)
/* 8D89C 8008CC9C 8C6323F4 */  lw         $v1, %lo(D_802C23F4)($v1)
/* 8D8A0 8008CCA0 3C01802C */  lui        $at, %hi(D_802C23F0)
/* 8D8A4 8008CCA4 AC2323F0 */  sw         $v1, %lo(D_802C23F0)($at)
/* 8D8A8 8008CCA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8D8AC 8008CCAC 03E00008 */  jr         $ra
/* 8D8B0 8008CCB0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008CCB4
/* 8D8B4 8008CCB4 14800006 */  bnez       $a0, .L8008CCD0
/* 8D8B8 8008CCB8 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 8D8BC 8008CCBC 08023342 */  j          .L8008CD08
/* 8D8C0 8008CCC0 00001021 */   addu      $v0, $zero, $zero
.L8008CCC4:
/* 8D8C4 8008CCC4 8CA20074 */  lw         $v0, 0x74($a1)
/* 8D8C8 8008CCC8 08023342 */  j          .L8008CD08
/* 8D8CC 8008CCCC 00000000 */   nop
.L8008CCD0:
/* 8D8D0 8008CCD0 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D8D4 8008CCD4 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D8D8 8008CCD8 3C05802C */  lui        $a1, %hi(D_802C23D0)
/* 8D8DC 8008CCDC 8CA523D0 */  lw         $a1, %lo(D_802C23D0)($a1)
/* 8D8E0 8008CCE0 18400008 */  blez       $v0, .L8008CD04
/* 8D8E4 8008CCE4 00001821 */   addu      $v1, $zero, $zero
/* 8D8E8 8008CCE8 00403021 */  addu       $a2, $v0, $zero
.L8008CCEC:
/* 8D8EC 8008CCEC 8CA20040 */  lw         $v0, 0x40($a1)
/* 8D8F0 8008CCF0 1044FFF4 */  beq        $v0, $a0, .L8008CCC4
/* 8D8F4 8008CCF4 24630001 */   addiu     $v1, $v1, 0x1
/* 8D8F8 8008CCF8 0066102A */  slt        $v0, $v1, $a2
/* 8D8FC 8008CCFC 1440FFFB */  bnez       $v0, .L8008CCEC
/* 8D900 8008CD00 24A50120 */   addiu     $a1, $a1, 0x120
.L8008CD04:
/* 8D904 8008CD04 00001021 */  addu       $v0, $zero, $zero
.L8008CD08:
/* 8D908 8008CD08 03E00008 */  jr         $ra
/* 8D90C 8008CD0C 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8008CD10
/* 8D910 8008CD10 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8D914 8008CD14 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8D918 8008CD18 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8D91C 8008CD1C AFB1001C */  sw         $s1, 0x1C($sp)
/* 8D920 8008CD20 3C11802C */  lui        $s1, %hi(D_802C23D0)
/* 8D924 8008CD24 8E3123D0 */  lw         $s1, %lo(D_802C23D0)($s1)
/* 8D928 8008CD28 AFB20020 */  sw         $s2, 0x20($sp)
/* 8D92C 8008CD2C AFBF002C */  sw         $ra, 0x2C($sp)
/* 8D930 8008CD30 AFB40028 */  sw         $s4, 0x28($sp)
/* 8D934 8008CD34 AFB30024 */  sw         $s3, 0x24($sp)
/* 8D938 8008CD38 AFB00018 */  sw         $s0, 0x18($sp)
/* 8D93C 8008CD3C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 8D940 8008CD40 18400080 */  blez       $v0, .L8008CF44
/* 8D944 8008CD44 00009021 */   addu      $s2, $zero, $zero
/* 8D948 8008CD48 2414FFFF */  addiu      $s4, $zero, -0x1
/* 8D94C 8008CD4C 263000A2 */  addiu      $s0, $s1, 0xA2
/* 8D950 8008CD50 00009821 */  addu       $s3, $zero, $zero
.L8008CD54:
/* 8D954 8008CD54 8E220000 */  lw         $v0, 0x0($s1)
/* 8D958 8008CD58 50400073 */  beql       $v0, $zero, .L8008CF28
/* 8D95C 8008CD5C 2673001C */   addiu     $s3, $s3, 0x1C
/* 8D960 8008CD60 8E02FF62 */  lw         $v0, -0x9E($s0)
/* 8D964 8008CD64 10400003 */  beqz       $v0, .L8008CD74
/* 8D968 8008CD68 02202021 */   addu      $a0, $s1, $zero
/* 8D96C 8008CD6C 0C0234C1 */  jal        func_8008D304
/* 8D970 8008CD70 02402821 */   addu      $a1, $s2, $zero
.L8008CD74:
/* 8D974 8008CD74 9603FFF2 */  lhu        $v1, -0xE($s0)
/* 8D978 8008CD78 8E02FF66 */  lw         $v0, -0x9A($s0)
/* 8D97C 8008CD7C 9604FFF0 */  lhu        $a0, -0x10($s0)
/* 8D980 8008CD80 00431821 */  addu       $v1, $v0, $v1
/* 8D984 8008CD84 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 8D988 8008CD88 10820012 */  beq        $a0, $v0, .L8008CDD4
/* 8D98C 8008CD8C AE03FF66 */   sw        $v1, -0x9A($s0)
/* 8D990 8008CD90 8E02FF96 */  lw         $v0, -0x6A($s0)
/* 8D994 8008CD94 0043102B */  sltu       $v0, $v0, $v1
/* 8D998 8008CD98 1040000B */  beqz       $v0, .L8008CDC8
/* 8D99C 8008CD9C 00000000 */   nop
.L8008CDA0:
/* 8D9A0 8008CDA0 8E220000 */  lw         $v0, 0x0($s1)
/* 8D9A4 8008CDA4 1040005F */  beqz       $v0, .L8008CF24
/* 8D9A8 8008CDA8 02202021 */   addu      $a0, $s1, $zero
/* 8D9AC 8008CDAC 0C0233DC */  jal        func_8008CF70
/* 8D9B0 8008CDB0 02402821 */   addu      $a1, $s2, $zero
/* 8D9B4 8008CDB4 8E02FF96 */  lw         $v0, -0x6A($s0)
/* 8D9B8 8008CDB8 8E03FF66 */  lw         $v1, -0x9A($s0)
/* 8D9BC 8008CDBC 0043102B */  sltu       $v0, $v0, $v1
/* 8D9C0 8008CDC0 1440FFF7 */  bnez       $v0, .L8008CDA0
/* 8D9C4 8008CDC4 00000000 */   nop
.L8008CDC8:
/* 8D9C8 8008CDC8 8E220000 */  lw         $v0, 0x0($s1)
/* 8D9CC 8008CDCC 50400056 */  beql       $v0, $zero, .L8008CF28
/* 8D9D0 8008CDD0 2673001C */   addiu     $s3, $s3, 0x1C
.L8008CDD4:
/* 8D9D4 8008CDD4 8E02FF92 */  lw         $v0, -0x6E($s0)
/* 8D9D8 8008CDD8 10400008 */  beqz       $v0, .L8008CDFC
/* 8D9DC 8008CDDC 00000000 */   nop
/* 8D9E0 8008CDE0 8E02FF72 */  lw         $v0, -0x8E($s0)
/* 8D9E4 8008CDE4 8E03FF66 */  lw         $v1, -0x9A($s0)
/* 8D9E8 8008CDE8 0043102B */  sltu       $v0, $v0, $v1
/* 8D9EC 8008CDEC 10400003 */  beqz       $v0, .L8008CDFC
/* 8D9F0 8008CDF0 00000000 */   nop
/* 8D9F4 8008CDF4 0C02368F */  jal        func_8008DA3C
/* 8D9F8 8008CDF8 02202021 */   addu      $a0, $s1, $zero
.L8008CDFC:
/* 8D9FC 8008CDFC 8E02FF8E */  lw         $v0, -0x72($s0)
/* 8DA00 8008CE00 10400008 */  beqz       $v0, .L8008CE24
/* 8DA04 8008CE04 00000000 */   nop
/* 8DA08 8008CE08 8E02FF72 */  lw         $v0, -0x8E($s0)
/* 8DA0C 8008CE0C 8E03FF66 */  lw         $v1, -0x9A($s0)
/* 8DA10 8008CE10 0043102B */  sltu       $v0, $v0, $v1
/* 8DA14 8008CE14 10400003 */  beqz       $v0, .L8008CE24
/* 8DA18 8008CE18 00000000 */   nop
/* 8DA1C 8008CE1C 0C0236C0 */  jal        func_8008DB00
/* 8DA20 8008CE20 02202021 */   addu      $a0, $s1, $zero
.L8008CE24:
/* 8DA24 8008CE24 8E02FF6A */  lw         $v0, -0x96($s0)
/* 8DA28 8008CE28 10540011 */  beq        $v0, $s4, .L8008CE70
/* 8DA2C 8008CE2C 2442FFFF */   addiu     $v0, $v0, -0x1
/* 8DA30 8008CE30 1454000F */  bne        $v0, $s4, .L8008CE70
/* 8DA34 8008CE34 AE02FF6A */   sw        $v0, -0x96($s0)
/* 8DA38 8008CE38 02202021 */  addu       $a0, $s1, $zero
/* 8DA3C 8008CE3C 0C022DF4 */  jal        func_8008B7D0
/* 8DA40 8008CE40 00002821 */   addu      $a1, $zero, $zero
/* 8DA44 8008CE44 AE220000 */  sw         $v0, 0x0($s1)
/* 8DA48 8008CE48 9202001F */  lbu        $v0, 0x1F($s0)
/* 8DA4C 8008CE4C 10400030 */  beqz       $v0, .L8008CF10
/* 8DA50 8008CE50 00000000 */   nop
/* 8DA54 8008CE54 A200001F */  sb         $zero, 0x1F($s0)
/* 8DA58 8008CE58 3C05802C */  lui        $a1, %hi(D_802C23CC)
/* 8DA5C 8008CE5C 8CA523CC */  lw         $a1, %lo(D_802C23CC)($a1)
/* 8DA60 8008CE60 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8DA64 8008CE64 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8DA68 8008CE68 0C02439C */  jal        func_80090E70
/* 8DA6C 8008CE6C 00B32821 */   addu      $a1, $a1, $s3
.L8008CE70:
/* 8DA70 8008CE70 9202001F */  lbu        $v0, 0x1F($s0)
/* 8DA74 8008CE74 10400026 */  beqz       $v0, .L8008CF10
/* 8DA78 8008CE78 00000000 */   nop
/* 8DA7C 8008CE7C 92020019 */  lbu        $v0, 0x19($s0)
/* 8DA80 8008CE80 10400003 */  beqz       $v0, .L8008CE90
/* 8DA84 8008CE84 00000000 */   nop
/* 8DA88 8008CE88 0C0235A7 */  jal        func_8008D69C
/* 8DA8C 8008CE8C 02202021 */   addu      $a0, $s1, $zero
.L8008CE90:
/* 8DA90 8008CE90 9202002A */  lbu        $v0, 0x2A($s0)
/* 8DA94 8008CE94 10400008 */  beqz       $v0, .L8008CEB8
/* 8DA98 8008CE98 00000000 */   nop
/* 8DA9C 8008CE9C 8E02FFEA */  lw         $v0, -0x16($s0)
/* 8DAA0 8008CEA0 8E03FF66 */  lw         $v1, -0x9A($s0)
/* 8DAA4 8008CEA4 0043102B */  sltu       $v0, $v0, $v1
/* 8DAA8 8008CEA8 10400003 */  beqz       $v0, .L8008CEB8
/* 8DAAC 8008CEAC 00000000 */   nop
/* 8DAB0 8008CEB0 0C02362B */  jal        func_8008D8AC
/* 8DAB4 8008CEB4 02202021 */   addu      $a0, $s1, $zero
.L8008CEB8:
/* 8DAB8 8008CEB8 9202002B */  lbu        $v0, 0x2B($s0)
/* 8DABC 8008CEBC 10400004 */  beqz       $v0, .L8008CED0
/* 8DAC0 8008CEC0 C614FF8A */   lwc1      $f20, -0x76($s0)
/* 8DAC4 8008CEC4 0C02366F */  jal        func_8008D9BC
/* 8DAC8 8008CEC8 02202021 */   addu      $a0, $s1, $zero
/* 8DACC 8008CECC 4600A500 */  add.s      $f20, $f20, $f0
.L8008CED0:
/* 8DAD0 8008CED0 92020024 */  lbu        $v0, 0x24($s0)
/* 8DAD4 8008CED4 10400004 */  beqz       $v0, .L8008CEE8
/* 8DAD8 8008CED8 00000000 */   nop
/* 8DADC 8008CEDC 0C023659 */  jal        func_8008D964
/* 8DAE0 8008CEE0 02202021 */   addu      $a0, $s1, $zero
/* 8DAE4 8008CEE4 4600A500 */  add.s      $f20, $f20, $f0
.L8008CEE8:
/* 8DAE8 8008CEE8 8E02FF62 */  lw         $v0, -0x9E($s0)
/* 8DAEC 8008CEEC 14400008 */  bnez       $v0, .L8008CF10
/* 8DAF0 8008CEF0 02202021 */   addu      $a0, $s1, $zero
/* 8DAF4 8008CEF4 4406A000 */  mfc1       $a2, $f20
/* 8DAF8 8008CEF8 00000000 */  nop
/* 8DAFC 8008CEFC 0C02353D */  jal        func_8008D4F4
/* 8DB00 8008CF00 02402821 */   addu      $a1, $s2, $zero
/* 8DB04 8008CF04 02202021 */  addu       $a0, $s1, $zero
/* 8DB08 8008CF08 0C0234E4 */  jal        func_8008D390
/* 8DB0C 8008CF0C 02402821 */   addu      $a1, $s2, $zero
.L8008CF10:
/* 8DB10 8008CF10 8E02FF66 */  lw         $v0, -0x9A($s0)
/* 8DB14 8008CF14 8E03FF9A */  lw         $v1, -0x66($s0)
/* 8DB18 8008CF18 00431023 */  subu       $v0, $v0, $v1
/* 8DB1C 8008CF1C 00021202 */  srl        $v0, $v0, 8
/* 8DB20 8008CF20 A6020000 */  sh         $v0, 0x0($s0)
.L8008CF24:
/* 8DB24 8008CF24 2673001C */  addiu      $s3, $s3, 0x1C
.L8008CF28:
/* 8DB28 8008CF28 26520001 */  addiu      $s2, $s2, 0x1
/* 8DB2C 8008CF2C 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8DB30 8008CF30 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8DB34 8008CF34 26100120 */  addiu      $s0, $s0, 0x120
/* 8DB38 8008CF38 0242102A */  slt        $v0, $s2, $v0
/* 8DB3C 8008CF3C 1440FF85 */  bnez       $v0, .L8008CD54
/* 8DB40 8008CF40 26310120 */   addiu     $s1, $s1, 0x120
.L8008CF44:
/* 8DB44 8008CF44 3C02802C */  lui        $v0, %hi(D_802C23E0)
/* 8DB48 8008CF48 8C4223E0 */  lw         $v0, %lo(D_802C23E0)($v0)
/* 8DB4C 8008CF4C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 8DB50 8008CF50 8FB40028 */  lw         $s4, 0x28($sp)
/* 8DB54 8008CF54 8FB30024 */  lw         $s3, 0x24($sp)
/* 8DB58 8008CF58 8FB20020 */  lw         $s2, 0x20($sp)
/* 8DB5C 8008CF5C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 8DB60 8008CF60 8FB00018 */  lw         $s0, 0x18($sp)
/* 8DB64 8008CF64 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 8DB68 8008CF68 03E00008 */  jr         $ra
/* 8DB6C 8008CF6C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8008CF70
/* 8DB70 8008CF70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8DB74 8008CF74 AFB20018 */  sw         $s2, 0x18($sp)
/* 8DB78 8008CF78 00809021 */  addu       $s2, $a0, $zero
/* 8DB7C 8008CF7C AFB3001C */  sw         $s3, 0x1C($sp)
/* 8DB80 8008CF80 00A09821 */  addu       $s3, $a1, $zero
/* 8DB84 8008CF84 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8DB88 8008CF88 AFB40020 */  sw         $s4, 0x20($sp)
/* 8DB8C 8008CF8C AFB10014 */  sw         $s1, 0x14($sp)
/* 8DB90 8008CF90 AFB00010 */  sw         $s0, 0x10($sp)
/* 8DB94 8008CF94 8E450000 */  lw         $a1, 0x0($s2)
/* 8DB98 8008CF98 50A000BD */  beql       $a1, $zero, .L8008D290
/* 8DB9C 8008CF9C AE450000 */   sw        $a1, 0x0($s2)
.L8008CFA0:
/* 8DBA0 8008CFA0 90A40000 */  lbu        $a0, 0x0($a1)
/* 8DBA4 8008CFA4 308200FF */  andi       $v0, $a0, 0xFF
/* 8DBA8 8008CFA8 2C420080 */  sltiu      $v0, $v0, 0x80
/* 8DBAC 8008CFAC 1440000B */  bnez       $v0, .L8008CFDC
/* 8DBB0 8008CFB0 3082007F */   andi      $v0, $a0, 0x7F
/* 8DBB4 8008CFB4 00021080 */  sll        $v0, $v0, 2
/* 8DBB8 8008CFB8 3C01800D */  lui        $at, %hi(D_800C9C90)
/* 8DBBC 8008CFBC 00220821 */  addu       $at, $at, $v0
/* 8DBC0 8008CFC0 8C229C90 */  lw         $v0, %lo(D_800C9C90)($at)
/* 8DBC4 8008CFC4 02402021 */  addu       $a0, $s2, $zero
/* 8DBC8 8008CFC8 0040F809 */  jalr       $v0
/* 8DBCC 8008CFCC 24A50001 */   addiu     $a1, $a1, 0x1
/* 8DBD0 8008CFD0 00402821 */  addu       $a1, $v0, $zero
/* 8DBD4 8008CFD4 14A0FFF2 */  bnez       $a1, .L8008CFA0
/* 8DBD8 8008CFD8 00000000 */   nop
.L8008CFDC:
/* 8DBDC 8008CFDC 10A000AC */  beqz       $a1, .L8008D290
/* 8DBE0 8008CFE0 AE450000 */   sw        $a1, 0x0($s2)
/* 8DBE4 8008CFE4 C640004C */  lwc1       $f0, 0x4C($s2)
/* 8DBE8 8008CFE8 8E440000 */  lw         $a0, 0x0($s2)
/* 8DBEC 8008CFEC 924300CA */  lbu        $v1, 0xCA($s2)
/* 8DBF0 8008CFF0 24820001 */  addiu      $v0, $a0, 0x1
/* 8DBF4 8008CFF4 E6400048 */  swc1       $f0, 0x48($s2)
/* 8DBF8 8008CFF8 AE420000 */  sw         $v0, 0x0($s2)
/* 8DBFC 8008CFFC 90900000 */  lbu        $s0, 0x0($a0)
/* 8DC00 8008D000 10600005 */  beqz       $v1, .L8008D018
/* 8DC04 8008D004 24820002 */   addiu     $v0, $a0, 0x2
/* 8DC08 8008D008 AE420000 */  sw         $v0, 0x0($s2)
/* 8DC0C 8008D00C 90820001 */  lbu        $v0, 0x1($a0)
/* 8DC10 8008D010 08023408 */  j          .L8008D020
/* 8DC14 8008D014 A24200B3 */   sb        $v0, 0xB3($s2)
.L8008D018:
/* 8DC18 8008D018 924200CB */  lbu        $v0, 0xCB($s2)
/* 8DC1C 8008D01C A24200B3 */  sb         $v0, 0xB3($s2)
.L8008D020:
/* 8DC20 8008D020 964300A4 */  lhu        $v1, 0xA4($s2)
/* 8DC24 8008D024 1060000F */  beqz       $v1, .L8008D064
/* 8DC28 8008D028 00000000 */   nop
/* 8DC2C 8008D02C 924200AF */  lbu        $v0, 0xAF($s2)
/* 8DC30 8008D030 5040001C */  beql       $v0, $zero, .L8008D0A4
/* 8DC34 8008D034 A6430092 */   sh        $v1, 0x92($s2)
/* 8DC38 8008D038 8E430000 */  lw         $v1, 0x0($s2)
/* 8DC3C 8008D03C A24000AF */  sb         $zero, 0xAF($s2)
/* 8DC40 8008D040 24620001 */  addiu      $v0, $v1, 0x1
/* 8DC44 8008D044 AE420000 */  sw         $v0, 0x0($s2)
/* 8DC48 8008D048 90640000 */  lbu        $a0, 0x0($v1)
/* 8DC4C 8008D04C 308200FF */  andi       $v0, $a0, 0xFF
/* 8DC50 8008D050 2C420080 */  sltiu      $v0, $v0, 0x80
/* 8DC54 8008D054 54400013 */  bnel       $v0, $zero, .L8008D0A4
/* 8DC58 8008D058 A6440092 */   sh        $a0, 0x92($s2)
/* 8DC5C 8008D05C 08023423 */  j          .L8008D08C
/* 8DC60 8008D060 24620002 */   addiu     $v0, $v1, 0x2
.L8008D064:
/* 8DC64 8008D064 8E430000 */  lw         $v1, 0x0($s2)
/* 8DC68 8008D068 24620001 */  addiu      $v0, $v1, 0x1
/* 8DC6C 8008D06C AE420000 */  sw         $v0, 0x0($s2)
/* 8DC70 8008D070 90640000 */  lbu        $a0, 0x0($v1)
/* 8DC74 8008D074 308200FF */  andi       $v0, $a0, 0xFF
/* 8DC78 8008D078 2C420080 */  sltiu      $v0, $v0, 0x80
/* 8DC7C 8008D07C 10400003 */  beqz       $v0, .L8008D08C
/* 8DC80 8008D080 24620002 */   addiu     $v0, $v1, 0x2
/* 8DC84 8008D084 08023429 */  j          .L8008D0A4
/* 8DC88 8008D088 A6440092 */   sh        $a0, 0x92($s2)
.L8008D08C:
/* 8DC8C 8008D08C AE420000 */  sw         $v0, 0x0($s2)
/* 8DC90 8008D090 90630001 */  lbu        $v1, 0x1($v1)
/* 8DC94 8008D094 3082007F */  andi       $v0, $a0, 0x7F
/* 8DC98 8008D098 00021200 */  sll        $v0, $v0, 8
/* 8DC9C 8008D09C 00621821 */  addu       $v1, $v1, $v0
/* 8DCA0 8008D0A0 A6430092 */  sh         $v1, 0x92($s2)
.L8008D0A4:
/* 8DCA4 8008D0A4 8E420038 */  lw         $v0, 0x38($s2)
/* 8DCA8 8008D0A8 8E430038 */  lw         $v1, 0x38($s2)
/* 8DCAC 8008D0AC 924400C7 */  lbu        $a0, 0xC7($s2)
/* 8DCB0 8008D0B0 AE42003C */  sw         $v0, 0x3C($s2)
/* 8DCB4 8008D0B4 96420092 */  lhu        $v0, 0x92($s2)
/* 8DCB8 8008D0B8 A64000A2 */  sh         $zero, 0xA2($s2)
/* 8DCBC 8008D0BC A24000C9 */  sb         $zero, 0xC9($s2)
/* 8DCC0 8008D0C0 A24400C8 */  sb         $a0, 0xC8($s2)
/* 8DCC4 8008D0C4 00021200 */  sll        $v0, $v0, 8
/* 8DCC8 8008D0C8 00621821 */  addu       $v1, $v1, $v0
/* 8DCCC 8008D0CC 24020060 */  addiu      $v0, $zero, 0x60
/* 8DCD0 8008D0D0 12020063 */  beq        $s0, $v0, .L8008D260
/* 8DCD4 8008D0D4 AE430038 */   sw        $v1, 0x38($s2)
/* 8DCD8 8008D0D8 8E42007C */  lw         $v0, 0x7C($s2)
/* 8DCDC 8008D0DC 8E540074 */  lw         $s4, 0x74($s2)
/* 8DCE0 8008D0E0 10400016 */  beqz       $v0, .L8008D13C
/* 8DCE4 8008D0E4 02402021 */   addu      $a0, $s2, $zero
/* 8DCE8 8008D0E8 00108080 */  sll        $s0, $s0, 2
/* 8DCEC 8008D0EC 02021021 */  addu       $v0, $s0, $v0
/* 8DCF0 8008D0F0 90430000 */  lbu        $v1, 0x0($v0)
/* 8DCF4 8008D0F4 8E42007C */  lw         $v0, 0x7C($s2)
/* 8DCF8 8008D0F8 02021021 */  addu       $v0, $s0, $v0
/* 8DCFC 8008D0FC A64300A6 */  sh         $v1, 0xA6($s2)
/* 8DD00 8008D100 90420002 */  lbu        $v0, 0x2($v0)
/* 8DD04 8008D104 8E43007C */  lw         $v1, 0x7C($s2)
/* 8DD08 8008D108 8E450070 */  lw         $a1, 0x70($s2)
/* 8DD0C 8008D10C 00021042 */  srl        $v0, $v0, 1
/* 8DD10 8008D110 02031821 */  addu       $v1, $s0, $v1
/* 8DD14 8008D114 A24200B5 */  sb         $v0, 0xB5($s2)
/* 8DD18 8008D118 90620001 */  lbu        $v0, 0x1($v1)
/* 8DD1C 8008D11C 8CA30010 */  lw         $v1, 0x10($a1)
/* 8DD20 8008D120 000228C0 */  sll        $a1, $v0, 3
/* 8DD24 8008D124 00A22823 */  subu       $a1, $a1, $v0
/* 8DD28 8008D128 0C022E12 */  jal        func_8008B848
/* 8DD2C 8008D12C 00652821 */   addu      $a1, $v1, $a1
/* 8DD30 8008D130 8E42007C */  lw         $v0, 0x7C($s2)
/* 8DD34 8008D134 02028021 */  addu       $s0, $s0, $v0
/* 8DD38 8008D138 92100003 */  lbu        $s0, 0x3($s0)
.L8008D13C:
/* 8DD3C 8008D13C 924200CE */  lbu        $v0, 0xCE($s2)
/* 8DD40 8008D140 14400003 */  bnez       $v0, .L8008D150
/* 8DD44 8008D144 00000000 */   nop
/* 8DD48 8008D148 0C02358D */  jal        func_8008D634
/* 8DD4C 8008D14C 02402021 */   addu      $a0, $s2, $zero
.L8008D150:
/* 8DD50 8008D150 924200CC */  lbu        $v0, 0xCC($s2)
/* 8DD54 8008D154 10400003 */  beqz       $v0, .L8008D164
/* 8DD58 8008D158 00000000 */   nop
/* 8DD5C 8008D15C 0C023624 */  jal        func_8008D890
/* 8DD60 8008D160 02402021 */   addu      $a0, $s2, $zero
.L8008D164:
/* 8DD64 8008D164 924200CF */  lbu        $v0, 0xCF($s2)
/* 8DD68 8008D168 965100A6 */  lhu        $s1, 0xA6($s2)
/* 8DD6C 8008D16C 1440001B */  bnez       $v0, .L8008D1DC
/* 8DD70 8008D170 00111080 */   sll       $v0, $s1, 2
/* 8DD74 8008D174 8E83002C */  lw         $v1, 0x2C($s4)
/* 8DD78 8008D178 00431021 */  addu       $v0, $v0, $v1
/* 8DD7C 8008D17C 8C420000 */  lw         $v0, 0x0($v0)
/* 8DD80 8008D180 924300C1 */  lbu        $v1, 0xC1($s2)
/* 8DD84 8008D184 10600012 */  beqz       $v1, .L8008D1D0
/* 8DD88 8008D188 AE420004 */   sw        $v0, 0x4($s2)
/* 8DD8C 8008D18C 96420098 */  lhu        $v0, 0x98($s2)
/* 8DD90 8008D190 1040000F */  beqz       $v0, .L8008D1D0
/* 8DD94 8008D194 00003021 */   addu      $a2, $zero, $zero
/* 8DD98 8008D198 3C07802C */  lui        $a3, %hi(D_802C23E0)
/* 8DD9C 8008D19C 8CE723E0 */  lw         $a3, %lo(D_802C23E0)($a3)
/* 8DDA0 8008D1A0 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8DDA4 8008D1A4 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8DDA8 8008D1A8 001328C0 */  sll        $a1, $s3, 3
/* 8DDAC 8008D1AC 3C02802C */  lui        $v0, %hi(D_802C23CC)
/* 8DDB0 8008D1B0 8C4223CC */  lw         $v0, %lo(D_802C23CC)($v0)
/* 8DDB4 8008D1B4 00B32823 */  subu       $a1, $a1, $s3
/* 8DDB8 8008D1B8 00052880 */  sll        $a1, $a1, 2
/* 8DDBC 8008D1BC A6400098 */  sh         $zero, 0x98($s2)
/* 8DDC0 8008D1C0 0C024408 */  jal        func_80091020
/* 8DDC4 8008D1C4 00452821 */   addu      $a1, $v0, $a1
/* 8DDC8 8008D1C8 08023477 */  j          .L8008D1DC
/* 8DDCC 8008D1CC 00000000 */   nop
.L8008D1D0:
/* 8DDD0 8008D1D0 02402021 */  addu       $a0, $s2, $zero
/* 8DDD4 8008D1D4 0C0234C1 */  jal        func_8008D304
/* 8DDD8 8008D1D8 02602821 */   addu      $a1, $s3, $zero
.L8008D1DC:
/* 8DDDC 8008D1DC 8E830028 */  lw         $v1, 0x28($s4)
/* 8DDE0 8008D1E0 00111080 */  sll        $v0, $s1, 2
/* 8DDE4 8008D1E4 00431021 */  addu       $v0, $v0, $v1
/* 8DDE8 8008D1E8 C4420000 */  lwc1       $f2, 0x0($v0)
/* 8DDEC 8008D1EC 44900000 */  mtc1       $s0, $f0
/* 8DDF0 8008D1F0 00000000 */  nop
/* 8DDF4 8008D1F4 46800020 */  cvt.s.w    $f0, $f0
/* 8DDF8 8008D1F8 924500C2 */  lbu        $a1, 0xC2($s2)
/* 8DDFC 8008D1FC 46020000 */  add.s      $f0, $f0, $f2
/* 8DE00 8008D200 924200C4 */  lbu        $v0, 0xC4($s2)
/* 8DE04 8008D204 30A300FF */  andi       $v1, $a1, 0xFF
/* 8DE08 8008D208 10620036 */  beq        $v1, $v0, .L8008D2E4
/* 8DE0C 8008D20C E6400028 */   swc1      $f0, 0x28($s2)
/* 8DE10 8008D210 924600C3 */  lbu        $a2, 0xC3($s2)
/* 8DE14 8008D214 24020080 */  addiu      $v0, $zero, 0x80
/* 8DE18 8008D218 00461023 */  subu       $v0, $v0, $a2
/* 8DE1C 8008D21C 00430018 */  mult       $v0, $v1
/* 8DE20 8008D220 00001012 */  mflo       $v0
/* 8DE24 8008D224 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8DE28 8008D228 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8DE2C 8008D22C A24500C4 */  sb         $a1, 0xC4($s2)
/* 8DE30 8008D230 001328C0 */  sll        $a1, $s3, 3
/* 8DE34 8008D234 3C03802C */  lui        $v1, %hi(D_802C23CC)
/* 8DE38 8008D238 8C6323CC */  lw         $v1, %lo(D_802C23CC)($v1)
/* 8DE3C 8008D23C 00B32823 */  subu       $a1, $a1, $s3
/* 8DE40 8008D240 00052880 */  sll        $a1, $a1, 2
/* 8DE44 8008D244 00652821 */  addu       $a1, $v1, $a1
/* 8DE48 8008D248 000211C3 */  sra        $v0, $v0, 7
/* 8DE4C 8008D24C 00C23021 */  addu       $a2, $a2, $v0
/* 8DE50 8008D250 0C024438 */  jal        func_800910E0
/* 8DE54 8008D254 30C600FF */   andi      $a2, $a2, 0xFF
/* 8DE58 8008D258 080234B9 */  j          .L8008D2E4
/* 8DE5C 8008D25C 00000000 */   nop
.L8008D260:
/* 8DE60 8008D260 924200BB */  lbu        $v0, 0xBB($s2)
/* 8DE64 8008D264 2C420004 */  sltiu      $v0, $v0, 0x4
/* 8DE68 8008D268 1040001E */  beqz       $v0, .L8008D2E4
/* 8DE6C 8008D26C 24020004 */   addiu     $v0, $zero, 0x4
/* 8DE70 8008D270 8E430008 */  lw         $v1, 0x8($s2)
/* 8DE74 8008D274 924400BC */  lbu        $a0, 0xBC($s2)
/* 8DE78 8008D278 A24200BB */  sb         $v0, 0xBB($s2)
/* 8DE7C 8008D27C 24020001 */  addiu      $v0, $zero, 0x1
/* 8DE80 8008D280 A24200BD */  sb         $v0, 0xBD($s2)
/* 8DE84 8008D284 AE430050 */  sw         $v1, 0x50($s2)
/* 8DE88 8008D288 080234B9 */  j          .L8008D2E4
/* 8DE8C 8008D28C A24400C5 */   sb        $a0, 0xC5($s2)
.L8008D290:
/* 8DE90 8008D290 924200C1 */  lbu        $v0, 0xC1($s2)
/* 8DE94 8008D294 10400013 */  beqz       $v0, .L8008D2E4
/* 8DE98 8008D298 00003021 */   addu      $a2, $zero, $zero
/* 8DE9C 8008D29C 3C11802D */  lui        $s1, %hi(D_802CACB0)
/* 8DEA0 8008D2A0 2631ACB0 */  addiu      $s1, $s1, %lo(D_802CACB0)
/* 8DEA4 8008D2A4 02202021 */  addu       $a0, $s1, $zero
/* 8DEA8 8008D2A8 A24000C1 */  sb         $zero, 0xC1($s2)
/* 8DEAC 8008D2AC 3C07802C */  lui        $a3, %hi(D_802C23E0)
/* 8DEB0 8008D2B0 8CE723E0 */  lw         $a3, %lo(D_802C23E0)($a3)
/* 8DEB4 8008D2B4 001380C0 */  sll        $s0, $s3, 3
/* 8DEB8 8008D2B8 3C05802C */  lui        $a1, %hi(D_802C23CC)
/* 8DEBC 8008D2BC 8CA523CC */  lw         $a1, %lo(D_802C23CC)($a1)
/* 8DEC0 8008D2C0 02138023 */  subu       $s0, $s0, $s3
/* 8DEC4 8008D2C4 00108080 */  sll        $s0, $s0, 2
/* 8DEC8 8008D2C8 0C024408 */  jal        func_80091020
/* 8DECC 8008D2CC 00B02821 */   addu      $a1, $a1, $s0
/* 8DED0 8008D2D0 3C05802C */  lui        $a1, %hi(D_802C23CC)
/* 8DED4 8008D2D4 8CA523CC */  lw         $a1, %lo(D_802C23CC)($a1)
/* 8DED8 8008D2D8 02202021 */  addu       $a0, $s1, $zero
/* 8DEDC 8008D2DC 0C02439C */  jal        func_80090E70
/* 8DEE0 8008D2E0 00B02821 */   addu      $a1, $a1, $s0
.L8008D2E4:
/* 8DEE4 8008D2E4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 8DEE8 8008D2E8 8FB40020 */  lw         $s4, 0x20($sp)
/* 8DEEC 8008D2EC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8DEF0 8008D2F0 8FB20018 */  lw         $s2, 0x18($sp)
/* 8DEF4 8008D2F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 8DEF8 8008D2F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8DEFC 8008D2FC 03E00008 */  jr         $ra
/* 8DF00 8008D300 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8008D304
/* 8DF04 8008D304 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DF08 8008D308 AFB10014 */  sw         $s1, 0x14($sp)
/* 8DF0C 8008D30C 00808821 */  addu       $s1, $a0, $zero
/* 8DF10 8008D310 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8DF14 8008D314 AFB00010 */  sw         $s0, 0x10($sp)
/* 8DF18 8008D318 922200C1 */  lbu        $v0, 0xC1($s1)
/* 8DF1C 8008D31C 1040000A */  beqz       $v0, .L8008D348
/* 8DF20 8008D320 00A08021 */   addu      $s0, $a1, $zero
/* 8DF24 8008D324 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8DF28 8008D328 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8DF2C 8008D32C 001028C0 */  sll        $a1, $s0, 3
/* 8DF30 8008D330 3C02802C */  lui        $v0, %hi(D_802C23CC)
/* 8DF34 8008D334 8C4223CC */  lw         $v0, %lo(D_802C23CC)($v0)
/* 8DF38 8008D338 00B02823 */  subu       $a1, $a1, $s0
/* 8DF3C 8008D33C 00052880 */  sll        $a1, $a1, 2
/* 8DF40 8008D340 0C02439C */  jal        func_80090E70
/* 8DF44 8008D344 00452821 */   addu      $a1, $v0, $a1
.L8008D348:
/* 8DF48 8008D348 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8DF4C 8008D34C 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8DF50 8008D350 24020001 */  addiu      $v0, $zero, 0x1
/* 8DF54 8008D354 001028C0 */  sll        $a1, $s0, 3
/* 8DF58 8008D358 00B02823 */  subu       $a1, $a1, $s0
/* 8DF5C 8008D35C A22200C1 */  sb         $v0, 0xC1($s1)
/* 8DF60 8008D360 3C02802C */  lui        $v0, %hi(D_802C23CC)
/* 8DF64 8008D364 8C4223CC */  lw         $v0, %lo(D_802C23CC)($v0)
/* 8DF68 8008D368 8E260004 */  lw         $a2, 0x4($s1)
/* 8DF6C 8008D36C 00052880 */  sll        $a1, $a1, 2
/* 8DF70 8008D370 0C0243BC */  jal        func_80090EF0
/* 8DF74 8008D374 00452821 */   addu      $a1, $v0, $a1
/* 8DF78 8008D378 AE200004 */  sw         $zero, 0x4($s1)
/* 8DF7C 8008D37C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8DF80 8008D380 8FB10014 */  lw         $s1, 0x14($sp)
/* 8DF84 8008D384 8FB00010 */  lw         $s0, 0x10($sp)
/* 8DF88 8008D388 03E00008 */  jr         $ra
/* 8DF8C 8008D38C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008D390
/* 8DF90 8008D390 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DF94 8008D394 AFB00010 */  sw         $s0, 0x10($sp)
/* 8DF98 8008D398 00808021 */  addu       $s0, $a0, $zero
/* 8DF9C 8008D39C AFBF0018 */  sw         $ra, 0x18($sp)
/* 8DFA0 8008D3A0 AFB10014 */  sw         $s1, 0x14($sp)
/* 8DFA4 8008D3A4 920200B4 */  lbu        $v0, 0xB4($s0)
/* 8DFA8 8008D3A8 920300BC */  lbu        $v1, 0xBC($s0)
/* 8DFAC 8008D3AC 00430018 */  mult       $v0, $v1
/* 8DFB0 8008D3B0 00001012 */  mflo       $v0
/* 8DFB4 8008D3B4 920300B3 */  lbu        $v1, 0xB3($s0)
/* 8DFB8 8008D3B8 00000000 */  nop
/* 8DFBC 8008D3BC 00430018 */  mult       $v0, $v1
/* 8DFC0 8008D3C0 00001012 */  mflo       $v0
/* 8DFC4 8008D3C4 86030096 */  lh         $v1, 0x96($s0)
/* 8DFC8 8008D3C8 00000000 */  nop
/* 8DFCC 8008D3CC 00430018 */  mult       $v0, $v1
/* 8DFD0 8008D3D0 00001012 */  mflo       $v0
/* 8DFD4 8008D3D4 00021B42 */  srl        $v1, $v0, 13
/* 8DFD8 8008D3D8 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 8DFDC 8008D3DC 0043102B */  sltu       $v0, $v0, $v1
/* 8DFE0 8008D3E0 10400002 */  beqz       $v0, .L8008D3EC
/* 8DFE4 8008D3E4 00A08821 */   addu      $s1, $a1, $zero
/* 8DFE8 8008D3E8 24037FFF */  addiu      $v1, $zero, 0x7FFF
.L8008D3EC:
/* 8DFEC 8008D3EC 9602009E */  lhu        $v0, 0x9E($s0)
/* 8DFF0 8008D3F0 14400004 */  bnez       $v0, .L8008D404
/* 8DFF4 8008D3F4 00000000 */   nop
/* 8DFF8 8008D3F8 3C02802C */  lui        $v0, %hi(D_802C23E6)
/* 8DFFC 8008D3FC 08023503 */  j          .L8008D40C
/* 8E000 8008D400 944223E6 */   lhu       $v0, %lo(D_802C23E6)($v0)
.L8008D404:
/* 8E004 8008D404 3C02802C */  lui        $v0, %hi(D_802C23E4)
/* 8E008 8008D408 944223E4 */  lhu        $v0, %lo(D_802C23E4)($v0)
.L8008D40C:
/* 8E00C 8008D40C 00000000 */  nop
/* 8E010 8008D410 00620018 */  mult       $v1, $v0
/* 8E014 8008D414 00001812 */  mflo       $v1
/* 8E018 8008D418 8E04000C */  lw         $a0, 0xC($s0)
/* 8E01C 8008D41C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8E020 8008D420 1082000B */  beq        $a0, $v0, .L8008D450
/* 8E024 8008D424 00031BC2 */   srl       $v1, $v1, 15
/* 8E028 8008D428 00000000 */  nop
/* 8E02C 8008D42C 00640018 */  mult       $v1, $a0
/* 8E030 8008D430 00001812 */  mflo       $v1
/* 8E034 8008D434 8E020018 */  lw         $v0, 0x18($s0)
/* 8E038 8008D438 00000000 */  nop
/* 8E03C 8008D43C 0062001B */  divu       $zero, $v1, $v0
/* 8E040 8008D440 14400002 */  bnez       $v0, .L8008D44C
/* 8E044 8008D444 00000000 */   nop
/* 8E048 8008D448 0007000D */  break      7
.L8008D44C:
/* 8E04C 8008D44C 00001812 */  mflo       $v1
.L8008D450:
/* 8E050 8008D450 96020098 */  lhu        $v0, 0x98($s0)
/* 8E054 8008D454 00000000 */  nop
/* 8E058 8008D458 1062000E */  beq        $v1, $v0, .L8008D494
/* 8E05C 8008D45C 00033400 */   sll       $a2, $v1, 16
/* 8E060 8008D460 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8E064 8008D464 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8E068 8008D468 00063403 */  sra        $a2, $a2, 16
/* 8E06C 8008D46C 001128C0 */  sll        $a1, $s1, 3
/* 8E070 8008D470 3C02802C */  lui        $v0, %hi(D_802C23CC)
/* 8E074 8008D474 8C4223CC */  lw         $v0, %lo(D_802C23CC)($v0)
/* 8E078 8008D478 3C07802C */  lui        $a3, %hi(D_802C23E0)
/* 8E07C 8008D47C 8CE723E0 */  lw         $a3, %lo(D_802C23E0)($a3)
/* 8E080 8008D480 00B12823 */  subu       $a1, $a1, $s1
/* 8E084 8008D484 00052880 */  sll        $a1, $a1, 2
/* 8E088 8008D488 A6030098 */  sh         $v1, 0x98($s0)
/* 8E08C 8008D48C 0C024408 */  jal        func_80091020
/* 8E090 8008D490 00452821 */   addu      $a1, $v0, $a1
.L8008D494:
/* 8E094 8008D494 920300B5 */  lbu        $v1, 0xB5($s0)
/* 8E098 8008D498 920200B6 */  lbu        $v0, 0xB6($s0)
/* 8E09C 8008D49C 10620010 */  beq        $v1, $v0, .L8008D4E0
/* 8E0A0 8008D4A0 001128C0 */   sll       $a1, $s1, 3
/* 8E0A4 8008D4A4 860200A8 */  lh         $v0, 0xA8($s0)
/* 8E0A8 8008D4A8 00620018 */  mult       $v1, $v0
/* 8E0AC 8008D4AC 00001012 */  mflo       $v0
/* 8E0B0 8008D4B0 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8E0B4 8008D4B4 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8E0B8 8008D4B8 000211C3 */  sra        $v0, $v0, 7
/* 8E0BC 8008D4BC 3043007F */  andi       $v1, $v0, 0x7F
/* 8E0C0 8008D4C0 00603021 */  addu       $a2, $v1, $zero
/* 8E0C4 8008D4C4 A20600B6 */  sb         $a2, 0xB6($s0)
/* 8E0C8 8008D4C8 3C02802C */  lui        $v0, %hi(D_802C23CC)
/* 8E0CC 8008D4CC 8C4223CC */  lw         $v0, %lo(D_802C23CC)($v0)
/* 8E0D0 8008D4D0 00B12823 */  subu       $a1, $a1, $s1
/* 8E0D4 8008D4D4 00052880 */  sll        $a1, $a1, 2
/* 8E0D8 8008D4D8 0C02445C */  jal        func_80091170
/* 8E0DC 8008D4DC 00452821 */   addu      $a1, $v0, $a1
.L8008D4E0:
/* 8E0E0 8008D4E0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8E0E4 8008D4E4 8FB10014 */  lw         $s1, 0x14($sp)
/* 8E0E8 8008D4E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 8E0EC 8008D4EC 03E00008 */  jr         $ra
/* 8E0F0 8008D4F0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008D4F4
/* 8E0F4 8008D4F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8E0F8 8008D4F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8E0FC 8008D4FC 00808021 */  addu       $s0, $a0, $zero
/* 8E100 8008D500 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8E104 8008D504 AFB10014 */  sw         $s1, 0x14($sp)
/* 8E108 8008D508 920200B0 */  lbu        $v0, 0xB0($s0)
/* 8E10C 8008D50C C6060028 */  lwc1       $f6, 0x28($s0)
/* 8E110 8008D510 44864000 */  mtc1       $a2, $f8
/* 8E114 8008D514 304300FF */  andi       $v1, $v0, 0xFF
/* 8E118 8008D518 10600011 */  beqz       $v1, .L8008D560
/* 8E11C 8008D51C 00A08821 */   addu      $s1, $a1, $zero
/* 8E120 8008D520 960400A2 */  lhu        $a0, 0xA2($s0)
/* 8E124 8008D524 0044102B */  sltu       $v0, $v0, $a0
/* 8E128 8008D528 5440000D */  bnel       $v0, $zero, .L8008D560
/* 8E12C 8008D52C E606004C */   swc1      $f6, 0x4C($s0)
/* 8E130 8008D530 C6040048 */  lwc1       $f4, 0x48($s0)
/* 8E134 8008D534 46043001 */  sub.s      $f0, $f6, $f4
/* 8E138 8008D538 44831000 */  mtc1       $v1, $f2
/* 8E13C 8008D53C 00000000 */  nop
/* 8E140 8008D540 468010A0 */  cvt.s.w    $f2, $f2
/* 8E144 8008D544 46020003 */  div.s      $f0, $f0, $f2
/* 8E148 8008D548 44841000 */  mtc1       $a0, $f2
/* 8E14C 8008D54C 00000000 */  nop
/* 8E150 8008D550 468010A0 */  cvt.s.w    $f2, $f2
/* 8E154 8008D554 46020002 */  mul.s      $f0, $f0, $f2
/* 8E158 8008D558 46002180 */  add.s      $f6, $f4, $f0
/* 8E15C 8008D55C E606004C */  swc1       $f6, 0x4C($s0)
.L8008D560:
/* 8E160 8008D560 920400B2 */  lbu        $a0, 0xB2($s0)
/* 8E164 8008D564 820300B1 */  lb         $v1, 0xB1($s0)
/* 8E168 8008D568 24020001 */  addiu      $v0, $zero, 0x1
/* 8E16C 8008D56C 00441023 */  subu       $v0, $v0, $a0
/* 8E170 8008D570 00620018 */  mult       $v1, $v0
/* 8E174 8008D574 00001812 */  mflo       $v1
/* 8E178 8008D578 C6000020 */  lwc1       $f0, 0x20($s0)
/* 8E17C 8008D57C 46004000 */  add.s      $f0, $f8, $f0
/* 8E180 8008D580 44831000 */  mtc1       $v1, $f2
/* 8E184 8008D584 00000000 */  nop
/* 8E188 8008D588 468010A0 */  cvt.s.w    $f2, $f2
/* 8E18C 8008D58C 46020000 */  add.s      $f0, $f0, $f2
/* 8E190 8008D590 46003180 */  add.s      $f6, $f6, $f0
/* 8E194 8008D594 C6000024 */  lwc1       $f0, 0x24($s0)
/* 8E198 8008D598 46003032 */  c.eq.s     $f6, $f0
/* 8E19C 8008D59C 00000000 */  nop
/* 8E1A0 8008D5A0 00000000 */  nop
/* 8E1A4 8008D5A4 4501001E */  bc1t       .L8008D620
/* 8E1A8 8008D5A8 A20000B2 */   sb        $zero, 0xB2($s0)
/* 8E1AC 8008D5AC 3C01800D */  lui        $at, %hi(D_800D6A18)
/* 8E1B0 8008D5B0 D4206A18 */  ldc1       $f0, %lo(D_800D6A18)($at)
/* 8E1B4 8008D5B4 46003321 */  cvt.d.s    $f12, $f6
/* 8E1B8 8008D5B8 46206302 */  mul.d      $f12, $f12, $f0
/* 8E1BC 8008D5BC E6060024 */  swc1       $f6, 0x24($s0)
/* 8E1C0 8008D5C0 0C023705 */  jal        func_8008DC14
/* 8E1C4 8008D5C4 46206320 */   cvt.s.d   $f12, $f12
/* 8E1C8 8008D5C8 3C01800D */  lui        $at, %hi(D_800D6A20)
/* 8E1CC 8008D5CC D4226A20 */  ldc1       $f2, %lo(D_800D6A20)($at)
/* 8E1D0 8008D5D0 46000186 */  mov.s      $f6, $f0
/* 8E1D4 8008D5D4 46003021 */  cvt.d.s    $f0, $f6
/* 8E1D8 8008D5D8 4620103C */  c.lt.d     $f2, $f0
/* 8E1DC 8008D5DC 00000000 */  nop
/* 8E1E0 8008D5E0 00000000 */  nop
/* 8E1E4 8008D5E4 45000004 */  bc1f       .L8008D5F8
/* 8E1E8 8008D5E8 001128C0 */   sll       $a1, $s1, 3
/* 8E1EC 8008D5EC 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 8E1F0 8008D5F0 44813000 */  mtc1       $at, $f6
/* 8E1F4 8008D5F4 A20000B3 */  sb         $zero, 0xB3($s0)
.L8008D5F8:
/* 8E1F8 8008D5F8 00B12823 */  subu       $a1, $a1, $s1
/* 8E1FC 8008D5FC 00052880 */  sll        $a1, $a1, 2
/* 8E200 8008D600 3C02802C */  lui        $v0, %hi(D_802C23CC)
/* 8E204 8008D604 8C4223CC */  lw         $v0, %lo(D_802C23CC)($v0)
/* 8E208 8008D608 3C04802D */  lui        $a0, %hi(D_802CACB0)
/* 8E20C 8008D60C 2484ACB0 */  addiu      $a0, $a0, %lo(D_802CACB0)
/* 8E210 8008D610 44063000 */  mfc1       $a2, $f6
/* 8E214 8008D614 00000000 */  nop
/* 8E218 8008D618 0C0243E4 */  jal        func_80090F90
/* 8E21C 8008D61C 00452821 */   addu      $a1, $v0, $a1
.L8008D620:
/* 8E220 8008D620 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8E224 8008D624 8FB10014 */  lw         $s1, 0x14($sp)
/* 8E228 8008D628 8FB00010 */  lw         $s0, 0x10($sp)
/* 8E22C 8008D62C 03E00008 */  jr         $ra
/* 8E230 8008D630 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008D634
/* 8E234 8008D634 00802821 */  addu       $a1, $a0, $zero
/* 8E238 8008D638 94A30092 */  lhu        $v1, 0x92($a1)
/* 8E23C 8008D63C 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 8E240 8008D640 5062000D */  beql       $v1, $v0, .L8008D678
/* 8E244 8008D644 3C027FFF */   lui       $v0, (0x7FFFFFFF >> 16)
/* 8E248 8008D648 94A300AA */  lhu        $v1, 0xAA($a1)
/* 8E24C 8008D64C 10600004 */  beqz       $v1, .L8008D660
/* 8E250 8008D650 00031A00 */   sll       $v1, $v1, 8
/* 8E254 8008D654 8CA2003C */  lw         $v0, 0x3C($a1)
/* 8E258 8008D658 0802359F */  j          .L8008D67C
/* 8E25C 8008D65C 00431021 */   addu      $v0, $v0, $v1
.L8008D660:
/* 8E260 8008D660 94A200AC */  lhu        $v0, 0xAC($a1)
/* 8E264 8008D664 8CA30038 */  lw         $v1, 0x38($a1)
/* 8E268 8008D668 00021200 */  sll        $v0, $v0, 8
/* 8E26C 8008D66C 00621823 */  subu       $v1, $v1, $v0
/* 8E270 8008D670 080235A0 */  j          .L8008D680
/* 8E274 8008D674 ACA30050 */   sw        $v1, 0x50($a1)
.L8008D678:
/* 8E278 8008D678 3442FFFF */  ori        $v0, $v0, (0x7FFFFFFF & 0xFFFF)
.L8008D67C:
/* 8E27C 8008D67C ACA20050 */  sw         $v0, 0x50($a1)
.L8008D680:
/* 8E280 8008D680 90A200B8 */  lbu        $v0, 0xB8($a1)
/* 8E284 8008D684 90A400B7 */  lbu        $a0, 0xB7($a1)
/* 8E288 8008D688 24030001 */  addiu      $v1, $zero, 0x1
/* 8E28C 8008D68C A0A300BB */  sb         $v1, 0xBB($a1)
/* 8E290 8008D690 A0A200BC */  sb         $v0, 0xBC($a1)
/* 8E294 8008D694 03E00008 */  jr         $ra
/* 8E298 8008D698 A0A400BD */   sb        $a0, 0xBD($a1)

glabel func_8008D69C
/* 8E29C 8008D69C 00802821 */  addu       $a1, $a0, $zero
/* 8E2A0 8008D6A0 8CA20008 */  lw         $v0, 0x8($a1)
/* 8E2A4 8008D6A4 8CA30050 */  lw         $v1, 0x50($a1)
/* 8E2A8 8008D6A8 0043102B */  sltu       $v0, $v0, $v1
/* 8E2AC 8008D6AC 1440000A */  bnez       $v0, .L8008D6D8
/* 8E2B0 8008D6B0 00000000 */   nop
/* 8E2B4 8008D6B4 90A200BB */  lbu        $v0, 0xBB($a1)
/* 8E2B8 8008D6B8 2C420004 */  sltiu      $v0, $v0, 0x4
/* 8E2BC 8008D6BC 10400006 */  beqz       $v0, .L8008D6D8
/* 8E2C0 8008D6C0 24030004 */   addiu     $v1, $zero, 0x4
/* 8E2C4 8008D6C4 90A200BC */  lbu        $v0, 0xBC($a1)
/* 8E2C8 8008D6C8 A0A300BB */  sb         $v1, 0xBB($a1)
/* 8E2CC 8008D6CC 24030001 */  addiu      $v1, $zero, 0x1
/* 8E2D0 8008D6D0 A0A300BD */  sb         $v1, 0xBD($a1)
/* 8E2D4 8008D6D4 A0A200C5 */  sb         $v0, 0xC5($a1)
.L8008D6D8:
/* 8E2D8 8008D6D8 90A200BD */  lbu        $v0, 0xBD($a1)
/* 8E2DC 8008D6DC 2442FFFF */  addiu      $v0, $v0, -0x1
/* 8E2E0 8008D6E0 A0A200BD */  sb         $v0, 0xBD($a1)
/* 8E2E4 8008D6E4 304200FF */  andi       $v0, $v0, 0xFF
/* 8E2E8 8008D6E8 14400067 */  bnez       $v0, .L8008D888
/* 8E2EC 8008D6EC 00000000 */   nop
/* 8E2F0 8008D6F0 90A600BB */  lbu        $a2, 0xBB($a1)
/* 8E2F4 8008D6F4 90A200B7 */  lbu        $v0, 0xB7($a1)
/* 8E2F8 8008D6F8 30C300FF */  andi       $v1, $a2, 0xFF
/* 8E2FC 8008D6FC A0A200BD */  sb         $v0, 0xBD($a1)
/* 8E300 8008D700 24020002 */  addiu      $v0, $zero, 0x2
/* 8E304 8008D704 10620024 */  beq        $v1, $v0, .L8008D798
/* 8E308 8008D708 28620003 */   slti      $v0, $v1, 0x3
/* 8E30C 8008D70C 10400005 */  beqz       $v0, .L8008D724
/* 8E310 8008D710 24020001 */   addiu     $v0, $zero, 0x1
/* 8E314 8008D714 1062000A */  beq        $v1, $v0, .L8008D740
/* 8E318 8008D718 00000000 */   nop
/* 8E31C 8008D71C 08023622 */  j          .L8008D888
/* 8E320 8008D720 00000000 */   nop
.L8008D724:
/* 8E324 8008D724 24020003 */  addiu      $v0, $zero, 0x3
/* 8E328 8008D728 10620057 */  beq        $v1, $v0, .L8008D888
/* 8E32C 8008D72C 24020004 */   addiu     $v0, $zero, 0x4
/* 8E330 8008D730 10620037 */  beq        $v1, $v0, .L8008D810
/* 8E334 8008D734 00000000 */   nop
/* 8E338 8008D738 08023622 */  j          .L8008D888
/* 8E33C 8008D73C 00000000 */   nop
.L8008D740:
/* 8E340 8008D740 8CA20008 */  lw         $v0, 0x8($a1)
/* 8E344 8008D744 8CA3003C */  lw         $v1, 0x3C($a1)
/* 8E348 8008D748 8CA40060 */  lw         $a0, 0x60($a1)
/* 8E34C 8008D74C 00431023 */  subu       $v0, $v0, $v1
/* 8E350 8008D750 00021202 */  srl        $v0, $v0, 8
/* 8E354 8008D754 00440018 */  mult       $v0, $a0
/* 8E358 8008D758 00001012 */  mflo       $v0
/* 8E35C 8008D75C 90A300BE */  lbu        $v1, 0xBE($a1)
/* 8E360 8008D760 00021282 */  srl        $v0, $v0, 10
/* 8E364 8008D764 0043182A */  slt        $v1, $v0, $v1
/* 8E368 8008D768 10600008 */  beqz       $v1, .L8008D78C
/* 8E36C 8008D76C 00000000 */   nop
/* 8E370 8008D770 C4A00054 */  lwc1       $f0, 0x54($a1)
/* 8E374 8008D774 44821000 */  mtc1       $v0, $f2
/* 8E378 8008D778 00000000 */  nop
/* 8E37C 8008D77C 468010A0 */  cvt.s.w    $f2, $f2
/* 8E380 8008D780 90A200B8 */  lbu        $v0, 0xB8($a1)
/* 8E384 8008D784 080235FA */  j          .L8008D7E8
/* 8E388 8008D788 46020002 */   mul.s     $f0, $f0, $f2
.L8008D78C:
/* 8E38C 8008D78C 90A300B9 */  lbu        $v1, 0xB9($a1)
/* 8E390 8008D790 08023601 */  j          .L8008D804
/* 8E394 8008D794 24C20001 */   addiu     $v0, $a2, 0x1
.L8008D798:
/* 8E398 8008D798 8CA20008 */  lw         $v0, 0x8($a1)
/* 8E39C 8008D79C 8CA3003C */  lw         $v1, 0x3C($a1)
/* 8E3A0 8008D7A0 00431023 */  subu       $v0, $v0, $v1
/* 8E3A4 8008D7A4 90A300BE */  lbu        $v1, 0xBE($a1)
/* 8E3A8 8008D7A8 8CA40060 */  lw         $a0, 0x60($a1)
/* 8E3AC 8008D7AC 00021202 */  srl        $v0, $v0, 8
/* 8E3B0 8008D7B0 00431023 */  subu       $v0, $v0, $v1
/* 8E3B4 8008D7B4 00440018 */  mult       $v0, $a0
/* 8E3B8 8008D7B8 00001012 */  mflo       $v0
/* 8E3BC 8008D7BC 90A300BF */  lbu        $v1, 0xBF($a1)
/* 8E3C0 8008D7C0 00021282 */  srl        $v0, $v0, 10
/* 8E3C4 8008D7C4 0043182A */  slt        $v1, $v0, $v1
/* 8E3C8 8008D7C8 5060000D */  beql       $v1, $zero, .L8008D800
/* 8E3CC 8008D7CC 24C20001 */   addiu     $v0, $a2, 0x1
/* 8E3D0 8008D7D0 C4A00058 */  lwc1       $f0, 0x58($a1)
/* 8E3D4 8008D7D4 44821000 */  mtc1       $v0, $f2
/* 8E3D8 8008D7D8 00000000 */  nop
/* 8E3DC 8008D7DC 468010A0 */  cvt.s.w    $f2, $f2
/* 8E3E0 8008D7E0 46020002 */  mul.s      $f0, $f0, $f2
/* 8E3E4 8008D7E4 90A200B9 */  lbu        $v0, 0xB9($a1)
.L8008D7E8:
/* 8E3E8 8008D7E8 4600008D */  trunc.w.s  $f2, $f0
/* 8E3EC 8008D7EC 44031000 */  mfc1       $v1, $f2
/* 8E3F0 8008D7F0 00000000 */  nop
/* 8E3F4 8008D7F4 00431021 */  addu       $v0, $v0, $v1
/* 8E3F8 8008D7F8 08023622 */  j          .L8008D888
/* 8E3FC 8008D7FC A0A200BC */   sb        $v0, 0xBC($a1)
.L8008D800:
/* 8E400 8008D800 90A300BA */  lbu        $v1, 0xBA($a1)
.L8008D804:
/* 8E404 8008D804 A0A200BB */  sb         $v0, 0xBB($a1)
/* 8E408 8008D808 08023622 */  j          .L8008D888
/* 8E40C 8008D80C A0A300BC */   sb        $v1, 0xBC($a1)
.L8008D810:
/* 8E410 8008D810 8CA20008 */  lw         $v0, 0x8($a1)
/* 8E414 8008D814 8CA30050 */  lw         $v1, 0x50($a1)
/* 8E418 8008D818 8CA40060 */  lw         $a0, 0x60($a1)
/* 8E41C 8008D81C 00431023 */  subu       $v0, $v0, $v1
/* 8E420 8008D820 00021202 */  srl        $v0, $v0, 8
/* 8E424 8008D824 00440018 */  mult       $v0, $a0
/* 8E428 8008D828 00001012 */  mflo       $v0
/* 8E42C 8008D82C 90A300C0 */  lbu        $v1, 0xC0($a1)
/* 8E430 8008D830 00021282 */  srl        $v0, $v0, 10
/* 8E434 8008D834 0043182A */  slt        $v1, $v0, $v1
/* 8E438 8008D838 50600011 */  beql       $v1, $zero, .L8008D880
/* 8E43C 8008D83C 24C20001 */   addiu     $v0, $a2, 0x1
/* 8E440 8008D840 C4A0005C */  lwc1       $f0, 0x5C($a1)
/* 8E444 8008D844 44821000 */  mtc1       $v0, $f2
/* 8E448 8008D848 00000000 */  nop
/* 8E44C 8008D84C 468010A0 */  cvt.s.w    $f2, $f2
/* 8E450 8008D850 46020002 */  mul.s      $f0, $f0, $f2
/* 8E454 8008D854 90A200C5 */  lbu        $v0, 0xC5($a1)
/* 8E458 8008D858 44821000 */  mtc1       $v0, $f2
/* 8E45C 8008D85C 00000000 */  nop
/* 8E460 8008D860 468010A0 */  cvt.s.w    $f2, $f2
/* 8E464 8008D864 46020002 */  mul.s      $f0, $f0, $f2
/* 8E468 8008D868 4600008D */  trunc.w.s  $f2, $f0
/* 8E46C 8008D86C 44031000 */  mfc1       $v1, $f2
/* 8E470 8008D870 00000000 */  nop
/* 8E474 8008D874 00431023 */  subu       $v0, $v0, $v1
/* 8E478 8008D878 08023622 */  j          .L8008D888
/* 8E47C 8008D87C A0A200BC */   sb        $v0, 0xBC($a1)
.L8008D880:
/* 8E480 8008D880 A0A200BB */  sb         $v0, 0xBB($a1)
/* 8E484 8008D884 A0A000BC */  sb         $zero, 0xBC($a1)
.L8008D888:
/* 8E488 8008D888 03E00008 */  jr         $ra
/* 8E48C 8008D88C 00000000 */   nop

glabel func_8008D890
/* 8E490 8008D890 8C83003C */  lw         $v1, 0x3C($a0)
/* 8E494 8008D894 908200B5 */  lbu        $v0, 0xB5($a0)
/* 8E498 8008D898 A08000D1 */  sb         $zero, 0xD1($a0)
/* 8E49C 8008D89C 30420040 */  andi       $v0, $v0, 0x40
/* 8E4A0 8008D8A0 AC83008C */  sw         $v1, 0x8C($a0)
/* 8E4A4 8008D8A4 03E00008 */  jr         $ra
/* 8E4A8 8008D8A8 A08200D2 */   sb        $v0, 0xD2($a0)

glabel func_8008D8AC
/* 8E4AC 8008D8AC 908600CC */  lbu        $a2, 0xCC($a0)
/* 8E4B0 8008D8B0 2408007F */  addiu      $t0, $zero, 0x7F
/* 8E4B4 8008D8B4 24070001 */  addiu      $a3, $zero, 0x1
.L8008D8B8:
/* 8E4B8 8008D8B8 908200D1 */  lbu        $v0, 0xD1($a0)
/* 8E4BC 8008D8BC 8C83008C */  lw         $v1, 0x8C($a0)
/* 8E4C0 8008D8C0 00462821 */  addu       $a1, $v0, $a2
/* 8E4C4 8008D8C4 24630100 */  addiu      $v1, $v1, 0x100
/* 8E4C8 8008D8C8 2CA20040 */  sltiu      $v0, $a1, 0x40
/* 8E4CC 8008D8CC 10400003 */  beqz       $v0, .L8008D8DC
/* 8E4D0 8008D8D0 AC83008C */   sw        $v1, 0x8C($a0)
/* 8E4D4 8008D8D4 08023652 */  j          .L8008D948
/* 8E4D8 8008D8D8 A08500D1 */   sb        $a1, 0xD1($a0)
.L8008D8DC:
/* 8E4DC 8008D8DC 908300D2 */  lbu        $v1, 0xD2($a0)
/* 8E4E0 8008D8E0 30A2003F */  andi       $v0, $a1, 0x3F
/* 8E4E4 8008D8E4 00052982 */  srl        $a1, $a1, 6
/* 8E4E8 8008D8E8 1460000B */  bnez       $v1, .L8008D918
/* 8E4EC 8008D8EC A08200D1 */   sb        $v0, 0xD1($a0)
/* 8E4F0 8008D8F0 908200B5 */  lbu        $v0, 0xB5($a0)
/* 8E4F4 8008D8F4 00451021 */  addu       $v0, $v0, $a1
/* 8E4F8 8008D8F8 A08200B5 */  sb         $v0, 0xB5($a0)
/* 8E4FC 8008D8FC 304200FF */  andi       $v0, $v0, 0xFF
/* 8E500 8008D900 2C420080 */  sltiu      $v0, $v0, 0x80
/* 8E504 8008D904 14400010 */  bnez       $v0, .L8008D948
/* 8E508 8008D908 00000000 */   nop
/* 8E50C 8008D90C A08800B5 */  sb         $t0, 0xB5($a0)
/* 8E510 8008D910 08023652 */  j          .L8008D948
/* 8E514 8008D914 A08700D2 */   sb        $a3, 0xD2($a0)
.L8008D918:
/* 8E518 8008D918 908200B5 */  lbu        $v0, 0xB5($a0)
/* 8E51C 8008D91C 00451023 */  subu       $v0, $v0, $a1
/* 8E520 8008D920 A08200B5 */  sb         $v0, 0xB5($a0)
/* 8E524 8008D924 304200FF */  andi       $v0, $v0, 0xFF
/* 8E528 8008D928 2C430080 */  sltiu      $v1, $v0, 0x80
/* 8E52C 8008D92C 38630001 */  xori       $v1, $v1, 0x1
/* 8E530 8008D930 2C420001 */  sltiu      $v0, $v0, 0x1
/* 8E534 8008D934 00621825 */  or         $v1, $v1, $v0
/* 8E538 8008D938 10600003 */  beqz       $v1, .L8008D948
/* 8E53C 8008D93C 00000000 */   nop
/* 8E540 8008D940 A08000B5 */  sb         $zero, 0xB5($a0)
/* 8E544 8008D944 A08000D2 */  sb         $zero, 0xD2($a0)
.L8008D948:
/* 8E548 8008D948 8C82008C */  lw         $v0, 0x8C($a0)
/* 8E54C 8008D94C 8C830008 */  lw         $v1, 0x8($a0)
/* 8E550 8008D950 0043102B */  sltu       $v0, $v0, $v1
/* 8E554 8008D954 1440FFD8 */  bnez       $v0, .L8008D8B8
/* 8E558 8008D958 00000000 */   nop
/* 8E55C 8008D95C 03E00008 */  jr         $ra
/* 8E560 8008D960 00000000 */   nop

glabel func_8008D964
/* 8E564 8008D964 908200C8 */  lbu        $v0, 0xC8($a0)
/* 8E568 8008D968 2442FFFF */  addiu      $v0, $v0, -0x1
/* 8E56C 8008D96C A08200C8 */  sb         $v0, 0xC8($a0)
/* 8E570 8008D970 304200FF */  andi       $v0, $v0, 0xFF
/* 8E574 8008D974 1440000C */  bnez       $v0, .L8008D9A8
/* 8E578 8008D978 00000000 */   nop
/* 8E57C 8008D97C 808200C9 */  lb         $v0, 0xC9($a0)
/* 8E580 8008D980 14400006 */  bnez       $v0, .L8008D99C
/* 8E584 8008D984 00000000 */   nop
/* 8E588 8008D988 908200D0 */  lbu        $v0, 0xD0($a0)
/* 8E58C 8008D98C 908300C6 */  lbu        $v1, 0xC6($a0)
/* 8E590 8008D990 A08200C9 */  sb         $v0, 0xC9($a0)
/* 8E594 8008D994 0802366A */  j          .L8008D9A8
/* 8E598 8008D998 A08300C8 */   sb        $v1, 0xC8($a0)
.L8008D99C:
/* 8E59C 8008D99C 908200C7 */  lbu        $v0, 0xC7($a0)
/* 8E5A0 8008D9A0 A08000C9 */  sb         $zero, 0xC9($a0)
/* 8E5A4 8008D9A4 A08200C8 */  sb         $v0, 0xC8($a0)
.L8008D9A8:
/* 8E5A8 8008D9A8 808200C9 */  lb         $v0, 0xC9($a0)
/* 8E5AC 8008D9AC 44820000 */  mtc1       $v0, $f0
/* 8E5B0 8008D9B0 00000000 */  nop
/* 8E5B4 8008D9B4 03E00008 */  jr         $ra
/* 8E5B8 8008D9B8 46800020 */   cvt.s.w   $f0, $f0

glabel func_8008D9BC
/* 8E5BC 8008D9BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E5C0 8008D9C0 AFB00010 */  sw         $s0, 0x10($sp)
/* 8E5C4 8008D9C4 00808021 */  addu       $s0, $a0, $zero
/* 8E5C8 8008D9C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E5CC 8008D9CC 960300A2 */  lhu        $v1, 0xA2($s0)
/* 8E5D0 8008D9D0 920200AE */  lbu        $v0, 0xAE($s0)
/* 8E5D4 8008D9D4 00621823 */  subu       $v1, $v1, $v0
/* 8E5D8 8008D9D8 18600013 */  blez       $v1, .L8008DA28
/* 8E5DC 8008D9DC 00000000 */   nop
/* 8E5E0 8008D9E0 920200CD */  lbu        $v0, 0xCD($s0)
/* 8E5E4 8008D9E4 44836000 */  mtc1       $v1, $f12
/* 8E5E8 8008D9E8 00000000 */  nop
/* 8E5EC 8008D9EC 46806320 */  cvt.s.w    $f12, $f12
/* 8E5F0 8008D9F0 44820000 */  mtc1       $v0, $f0
/* 8E5F4 8008D9F4 00000000 */  nop
/* 8E5F8 8008D9F8 46800020 */  cvt.s.w    $f0, $f0
/* 8E5FC 8008D9FC 46006303 */  div.s      $f12, $f12, $f0
/* 8E600 8008DA00 460C6300 */  add.s      $f12, $f12, $f12
/* 8E604 8008DA04 3C01800D */  lui        $at, %hi(D_800D6A28)
/* 8E608 8008DA08 D4206A28 */  ldc1       $f0, %lo(D_800D6A28)($at)
/* 8E60C 8008DA0C 46006321 */  cvt.d.s    $f12, $f12
/* 8E610 8008DA10 46206302 */  mul.d      $f12, $f12, $f0
/* 8E614 8008DA14 0C023F88 */  jal        func_8008FE20
/* 8E618 8008DA18 46206320 */   cvt.s.d   $f12, $f12
/* 8E61C 8008DA1C C602001C */  lwc1       $f2, 0x1C($s0)
/* 8E620 8008DA20 46020002 */  mul.s      $f0, $f0, $f2
/* 8E624 8008DA24 E6000064 */  swc1       $f0, 0x64($s0)
.L8008DA28:
/* 8E628 8008DA28 C6000064 */  lwc1       $f0, 0x64($s0)
/* 8E62C 8008DA2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E630 8008DA30 8FB00010 */  lw         $s0, 0x10($sp)
/* 8E634 8008DA34 03E00008 */  jr         $ra
/* 8E638 8008DA38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8008DA3C
/* 8E63C 8008DA3C 00803021 */  addu       $a2, $a0, $zero
/* 8E640 8008DA40 24070001 */  addiu      $a3, $zero, 0x1
.L8008DA44:
/* 8E644 8008DA44 94C3009A */  lhu        $v1, 0x9A($a2)
/* 8E648 8008DA48 8CC20010 */  lw         $v0, 0x10($a2)
/* 8E64C 8008DA4C 2463FFFF */  addiu      $v1, $v1, -0x1
/* 8E650 8008DA50 24420100 */  addiu      $v0, $v0, 0x100
/* 8E654 8008DA54 A4C3009A */  sh         $v1, 0x9A($a2)
/* 8E658 8008DA58 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 8E65C 8008DA5C 14600021 */  bnez       $v1, .L8008DAE4
/* 8E660 8008DA60 ACC20010 */   sw        $v0, 0x10($a2)
/* 8E664 8008DA64 8CC30034 */  lw         $v1, 0x34($a2)
/* 8E668 8008DA68 24620001 */  addiu      $v0, $v1, 0x1
/* 8E66C 8008DA6C ACC20034 */  sw         $v0, 0x34($a2)
/* 8E670 8008DA70 90650000 */  lbu        $a1, 0x0($v1)
/* 8E674 8008DA74 30A200FF */  andi       $v0, $a1, 0xFF
/* 8E678 8008DA78 2C420080 */  sltiu      $v0, $v0, 0x80
/* 8E67C 8008DA7C 54400018 */  bnel       $v0, $zero, .L8008DAE0
/* 8E680 8008DA80 A0C500B4 */   sb        $a1, 0xB4($a2)
/* 8E684 8008DA84 8CC30034 */  lw         $v1, 0x34($a2)
/* 8E688 8008DA88 30A2007F */  andi       $v0, $a1, 0x7F
/* 8E68C 8008DA8C A0C200B4 */  sb         $v0, 0xB4($a2)
/* 8E690 8008DA90 24620001 */  addiu      $v0, $v1, 0x1
/* 8E694 8008DA94 ACC20034 */  sw         $v0, 0x34($a2)
/* 8E698 8008DA98 90650000 */  lbu        $a1, 0x0($v1)
/* 8E69C 8008DA9C 30A200FF */  andi       $v0, $a1, 0xFF
/* 8E6A0 8008DAA0 2C420080 */  sltiu      $v0, $v0, 0x80
/* 8E6A4 8008DAA4 1440000C */  bnez       $v0, .L8008DAD8
/* 8E6A8 8008DAA8 24A20002 */   addiu     $v0, $a1, 0x2
/* 8E6AC 8008DAAC 8CC40034 */  lw         $a0, 0x34($a2)
/* 8E6B0 8008DAB0 30A3007F */  andi       $v1, $a1, 0x7F
/* 8E6B4 8008DAB4 00031A00 */  sll        $v1, $v1, 8
/* 8E6B8 8008DAB8 A4C3009A */  sh         $v1, 0x9A($a2)
/* 8E6BC 8008DABC 24820001 */  addiu      $v0, $a0, 0x1
/* 8E6C0 8008DAC0 ACC20034 */  sw         $v0, 0x34($a2)
/* 8E6C4 8008DAC4 90820000 */  lbu        $v0, 0x0($a0)
/* 8E6C8 8008DAC8 24630002 */  addiu      $v1, $v1, 0x2
/* 8E6CC 8008DACC 00431021 */  addu       $v0, $v0, $v1
/* 8E6D0 8008DAD0 080236B9 */  j          .L8008DAE4
/* 8E6D4 8008DAD4 A4C2009A */   sh        $v0, 0x9A($a2)
.L8008DAD8:
/* 8E6D8 8008DAD8 080236B9 */  j          .L8008DAE4
/* 8E6DC 8008DADC A4C2009A */   sh        $v0, 0x9A($a2)
.L8008DAE0:
/* 8E6E0 8008DAE0 A4C7009A */  sh         $a3, 0x9A($a2)
.L8008DAE4:
/* 8E6E4 8008DAE4 8CC20010 */  lw         $v0, 0x10($a2)
/* 8E6E8 8008DAE8 8CC30008 */  lw         $v1, 0x8($a2)
/* 8E6EC 8008DAEC 0043102B */  sltu       $v0, $v0, $v1
/* 8E6F0 8008DAF0 1440FFD4 */  bnez       $v0, .L8008DA44
/* 8E6F4 8008DAF4 00000000 */   nop
/* 8E6F8 8008DAF8 03E00008 */  jr         $ra
/* 8E6FC 8008DAFC 00000000 */   nop

glabel func_8008DB00
/* 8E700 8008DB00 00802821 */  addu       $a1, $a0, $zero
/* 8E704 8008DB04 3C01800D */  lui        $at, %hi(D_800D6A30)
/* 8E708 8008DB08 D4246A30 */  ldc1       $f4, %lo(D_800D6A30)($at)
/* 8E70C 8008DB0C 24060001 */  addiu      $a2, $zero, 0x1
.L8008DB10:
/* 8E710 8008DB10 94A3009C */  lhu        $v1, 0x9C($a1)
/* 8E714 8008DB14 8CA20014 */  lw         $v0, 0x14($a1)
/* 8E718 8008DB18 2463FFFF */  addiu      $v1, $v1, -0x1
/* 8E71C 8008DB1C 24420100 */  addiu      $v0, $v0, 0x100
/* 8E720 8008DB20 A4A3009C */  sh         $v1, 0x9C($a1)
/* 8E724 8008DB24 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 8E728 8008DB28 14600033 */  bnez       $v1, .L8008DBF8
/* 8E72C 8008DB2C ACA20014 */   sw        $v0, 0x14($a1)
/* 8E730 8008DB30 8CA20030 */  lw         $v0, 0x30($a1)
/* 8E734 8008DB34 24430001 */  addiu      $v1, $v0, 0x1
/* 8E738 8008DB38 ACA30030 */  sw         $v1, 0x30($a1)
/* 8E73C 8008DB3C 90430000 */  lbu        $v1, 0x0($v0)
/* 8E740 8008DB40 306400FF */  andi       $a0, $v1, 0xFF
/* 8E744 8008DB44 2C820080 */  sltiu      $v0, $a0, 0x80
/* 8E748 8008DB48 14400020 */  bnez       $v0, .L8008DBCC
/* 8E74C 8008DB4C 3062007F */   andi      $v0, $v1, 0x7F
/* 8E750 8008DB50 44820000 */  mtc1       $v0, $f0
/* 8E754 8008DB54 00000000 */  nop
/* 8E758 8008DB58 46800020 */  cvt.s.w    $f0, $f0
/* 8E75C 8008DB5C 46000021 */  cvt.d.s    $f0, $f0
/* 8E760 8008DB60 46240001 */  sub.d      $f0, $f0, $f4
/* 8E764 8008DB64 C4A20068 */  lwc1       $f2, 0x68($a1)
/* 8E768 8008DB68 46200020 */  cvt.s.d    $f0, $f0
/* 8E76C 8008DB6C 46020082 */  mul.s      $f2, $f0, $f2
/* 8E770 8008DB70 8CA30030 */  lw         $v1, 0x30($a1)
/* 8E774 8008DB74 24620001 */  addiu      $v0, $v1, 0x1
/* 8E778 8008DB78 ACA20030 */  sw         $v0, 0x30($a1)
/* 8E77C 8008DB7C E4A0006C */  swc1       $f0, 0x6C($a1)
/* 8E780 8008DB80 E4A20020 */  swc1       $f2, 0x20($a1)
/* 8E784 8008DB84 90630000 */  lbu        $v1, 0x0($v1)
/* 8E788 8008DB88 306200FF */  andi       $v0, $v1, 0xFF
/* 8E78C 8008DB8C 2C420080 */  sltiu      $v0, $v0, 0x80
/* 8E790 8008DB90 1440000C */  bnez       $v0, .L8008DBC4
/* 8E794 8008DB94 24620002 */   addiu     $v0, $v1, 0x2
/* 8E798 8008DB98 8CA40030 */  lw         $a0, 0x30($a1)
/* 8E79C 8008DB9C 3063007F */  andi       $v1, $v1, 0x7F
/* 8E7A0 8008DBA0 00031A00 */  sll        $v1, $v1, 8
/* 8E7A4 8008DBA4 A4A3009C */  sh         $v1, 0x9C($a1)
/* 8E7A8 8008DBA8 24820001 */  addiu      $v0, $a0, 0x1
/* 8E7AC 8008DBAC ACA20030 */  sw         $v0, 0x30($a1)
/* 8E7B0 8008DBB0 90820000 */  lbu        $v0, 0x0($a0)
/* 8E7B4 8008DBB4 24630002 */  addiu      $v1, $v1, 0x2
/* 8E7B8 8008DBB8 00431021 */  addu       $v0, $v0, $v1
/* 8E7BC 8008DBBC 080236FE */  j          .L8008DBF8
/* 8E7C0 8008DBC0 A4A2009C */   sh        $v0, 0x9C($a1)
.L8008DBC4:
/* 8E7C4 8008DBC4 080236FE */  j          .L8008DBF8
/* 8E7C8 8008DBC8 A4A2009C */   sh        $v0, 0x9C($a1)
.L8008DBCC:
/* 8E7CC 8008DBCC 44840000 */  mtc1       $a0, $f0
/* 8E7D0 8008DBD0 00000000 */  nop
/* 8E7D4 8008DBD4 46800020 */  cvt.s.w    $f0, $f0
/* 8E7D8 8008DBD8 46000021 */  cvt.d.s    $f0, $f0
/* 8E7DC 8008DBDC 46240001 */  sub.d      $f0, $f0, $f4
/* 8E7E0 8008DBE0 C4A20068 */  lwc1       $f2, 0x68($a1)
/* 8E7E4 8008DBE4 46200020 */  cvt.s.d    $f0, $f0
/* 8E7E8 8008DBE8 46020082 */  mul.s      $f2, $f0, $f2
/* 8E7EC 8008DBEC A4A6009C */  sh         $a2, 0x9C($a1)
/* 8E7F0 8008DBF0 E4A0006C */  swc1       $f0, 0x6C($a1)
/* 8E7F4 8008DBF4 E4A20020 */  swc1       $f2, 0x20($a1)
.L8008DBF8:
/* 8E7F8 8008DBF8 8CA20014 */  lw         $v0, 0x14($a1)
/* 8E7FC 8008DBFC 8CA30008 */  lw         $v1, 0x8($a1)
/* 8E800 8008DC00 0043102B */  sltu       $v0, $v0, $v1
/* 8E804 8008DC04 1440FFC2 */  bnez       $v0, .L8008DB10
/* 8E808 8008DC08 00000000 */   nop
/* 8E80C 8008DC0C 03E00008 */  jr         $ra
/* 8E810 8008DC10 00000000 */   nop

glabel func_8008DC14
/* 8E814 8008DC14 44800000 */  mtc1       $zero, $f0
/* 8E818 8008DC18 46006186 */  mov.s      $f6, $f12
/* 8E81C 8008DC1C 46003032 */  c.eq.s     $f6, $f0
/* 8E820 8008DC20 00000000 */  nop
/* 8E824 8008DC24 45000005 */  bc1f       .L8008DC3C
/* 8E828 8008DC28 00000000 */   nop
/* 8E82C 8008DC2C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 8E830 8008DC30 44810000 */  mtc1       $at, $f0
/* 8E834 8008DC34 08023768 */  j          .L8008DDA0
/* 8E838 8008DC38 00000000 */   nop
.L8008DC3C:
/* 8E83C 8008DC3C 4606003C */  c.lt.s     $f0, $f6
/* 8E840 8008DC40 00000000 */  nop
/* 8E844 8008DC44 00000000 */  nop
/* 8E848 8008DC48 4503002D */  bc1tl      .L8008DD00
/* 8E84C 8008DC4C 46063402 */   mul.s     $f16, $f6, $f6
/* 8E850 8008DC50 46003187 */  neg.s      $f6, $f6
/* 8E854 8008DC54 46063402 */  mul.s      $f16, $f6, $f6
/* 8E858 8008DC58 3C01800D */  lui        $at, %hi(D_800D6A38)
/* 8E85C 8008DC5C D4206A38 */  ldc1       $f0, %lo(D_800D6A38)($at)
/* 8E860 8008DC60 460030A1 */  cvt.d.s    $f2, $f6
/* 8E864 8008DC64 46201082 */  mul.d      $f2, $f2, $f0
/* 8E868 8008DC68 3C01800D */  lui        $at, %hi(D_800D6A40)
/* 8E86C 8008DC6C D4206A40 */  ldc1       $f0, %lo(D_800D6A40)($at)
/* 8E870 8008DC70 460083A1 */  cvt.d.s    $f14, $f16
/* 8E874 8008DC74 46207382 */  mul.d      $f14, $f14, $f0
/* 8E878 8008DC78 00000000 */  nop
/* 8E87C 8008DC7C 46068202 */  mul.s      $f8, $f16, $f6
/* 8E880 8008DC80 00000000 */  nop
/* 8E884 8008DC84 46108102 */  mul.s      $f4, $f16, $f16
/* 8E888 8008DC88 3C01800D */  lui        $at, %hi(D_800D6A48)
/* 8E88C 8008DC8C D4206A48 */  ldc1       $f0, %lo(D_800D6A48)($at)
/* 8E890 8008DC90 46004221 */  cvt.d.s    $f8, $f8
/* 8E894 8008DC94 46204202 */  mul.d      $f8, $f8, $f0
/* 8E898 8008DC98 3C01800D */  lui        $at, %hi(D_800D6A50)
/* 8E89C 8008DC9C D4206A50 */  ldc1       $f0, %lo(D_800D6A50)($at)
/* 8E8A0 8008DCA0 46002321 */  cvt.d.s    $f12, $f4
/* 8E8A4 8008DCA4 46206302 */  mul.d      $f12, $f12, $f0
/* 8E8A8 8008DCA8 00000000 */  nop
/* 8E8AC 8008DCAC 46062182 */  mul.s      $f6, $f4, $f6
/* 8E8B0 8008DCB0 00000000 */  nop
/* 8E8B4 8008DCB4 46102102 */  mul.s      $f4, $f4, $f16
/* 8E8B8 8008DCB8 3C01800D */  lui        $at, %hi(D_800D6A58)
/* 8E8BC 8008DCBC D4206A58 */  ldc1       $f0, %lo(D_800D6A58)($at)
/* 8E8C0 8008DCC0 3C01800D */  lui        $at, %hi(D_800D6A60)
/* 8E8C4 8008DCC4 D42A6A60 */  ldc1       $f10, %lo(D_800D6A60)($at)
/* 8E8C8 8008DCC8 46201080 */  add.d      $f2, $f2, $f0
/* 8E8CC 8008DCCC 460031A1 */  cvt.d.s    $f6, $f6
/* 8E8D0 8008DCD0 462A3182 */  mul.d      $f6, $f6, $f10
/* 8E8D4 8008DCD4 462E1080 */  add.d      $f2, $f2, $f14
/* 8E8D8 8008DCD8 46281080 */  add.d      $f2, $f2, $f8
/* 8E8DC 8008DCDC 3C01800D */  lui        $at, %hi(D_800D6A68)
/* 8E8E0 8008DCE0 D4286A68 */  ldc1       $f8, %lo(D_800D6A68)($at)
/* 8E8E4 8008DCE4 46002121 */  cvt.d.s    $f4, $f4
/* 8E8E8 8008DCE8 46282102 */  mul.d      $f4, $f4, $f8
/* 8E8EC 8008DCEC 462C1080 */  add.d      $f2, $f2, $f12
/* 8E8F0 8008DCF0 46261080 */  add.d      $f2, $f2, $f6
/* 8E8F4 8008DCF4 46241080 */  add.d      $f2, $f2, $f4
/* 8E8F8 8008DCF8 08023767 */  j          .L8008DD9C
/* 8E8FC 8008DCFC 46220003 */   div.d     $f0, $f0, $f2
.L8008DD00:
/* 8E900 8008DD00 3C01800D */  lui        $at, %hi(D_800D6A70)
/* 8E904 8008DD04 D4226A70 */  ldc1       $f2, %lo(D_800D6A70)($at)
/* 8E908 8008DD08 46003021 */  cvt.d.s    $f0, $f6
/* 8E90C 8008DD0C 46220002 */  mul.d      $f0, $f0, $f2
/* 8E910 8008DD10 3C01800D */  lui        $at, %hi(D_800D6A78)
/* 8E914 8008DD14 D4226A78 */  ldc1       $f2, %lo(D_800D6A78)($at)
/* 8E918 8008DD18 46008321 */  cvt.d.s    $f12, $f16
/* 8E91C 8008DD1C 46226302 */  mul.d      $f12, $f12, $f2
/* 8E920 8008DD20 00000000 */  nop
/* 8E924 8008DD24 46068202 */  mul.s      $f8, $f16, $f6
/* 8E928 8008DD28 3C01800D */  lui        $at, %hi(D_800D6A80)
/* 8E92C 8008DD2C D4226A80 */  ldc1       $f2, %lo(D_800D6A80)($at)
/* 8E930 8008DD30 46004221 */  cvt.d.s    $f8, $f8
/* 8E934 8008DD34 46224202 */  mul.d      $f8, $f8, $f2
/* 8E938 8008DD38 00000000 */  nop
/* 8E93C 8008DD3C 46108082 */  mul.s      $f2, $f16, $f16
/* 8E940 8008DD40 3C01800D */  lui        $at, %hi(D_800D6A88)
/* 8E944 8008DD44 D4246A88 */  ldc1       $f4, %lo(D_800D6A88)($at)
/* 8E948 8008DD48 460012A1 */  cvt.d.s    $f10, $f2
/* 8E94C 8008DD4C 46245282 */  mul.d      $f10, $f10, $f4
/* 8E950 8008DD50 00000000 */  nop
/* 8E954 8008DD54 46061182 */  mul.s      $f6, $f2, $f6
/* 8E958 8008DD58 3C01800D */  lui        $at, %hi(D_800D6A90)
/* 8E95C 8008DD5C D4246A90 */  ldc1       $f4, %lo(D_800D6A90)($at)
/* 8E960 8008DD60 46101082 */  mul.s      $f2, $f2, $f16
/* 8E964 8008DD64 46240000 */  add.d      $f0, $f0, $f4
/* 8E968 8008DD68 3C01800D */  lui        $at, %hi(D_800D6A98)
/* 8E96C 8008DD6C D4246A98 */  ldc1       $f4, %lo(D_800D6A98)($at)
/* 8E970 8008DD70 460031A1 */  cvt.d.s    $f6, $f6
/* 8E974 8008DD74 46243182 */  mul.d      $f6, $f6, $f4
/* 8E978 8008DD78 462C0000 */  add.d      $f0, $f0, $f12
/* 8E97C 8008DD7C 3C01800D */  lui        $at, %hi(D_800D6AA0)
/* 8E980 8008DD80 D4246AA0 */  ldc1       $f4, %lo(D_800D6AA0)($at)
/* 8E984 8008DD84 46280000 */  add.d      $f0, $f0, $f8
/* 8E988 8008DD88 460010A1 */  cvt.d.s    $f2, $f2
/* 8E98C 8008DD8C 46241082 */  mul.d      $f2, $f2, $f4
/* 8E990 8008DD90 462A0000 */  add.d      $f0, $f0, $f10
/* 8E994 8008DD94 46260000 */  add.d      $f0, $f0, $f6
/* 8E998 8008DD98 46220000 */  add.d      $f0, $f0, $f2
.L8008DD9C:
/* 8E99C 8008DD9C 46200020 */  cvt.s.d    $f0, $f0
.L8008DDA0:
/* 8E9A0 8008DDA0 03E00008 */  jr         $ra
/* 8E9A4 8008DDA4 00000000 */   nop

glabel func_8008DDA8
/* 8E9A8 8008DDA8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 8E9AC 8008DDAC AFB10024 */  sw         $s1, 0x24($sp)
/* 8E9B0 8008DDB0 00808821 */  addu       $s1, $a0, $zero
/* 8E9B4 8008DDB4 AFB00020 */  sw         $s0, 0x20($sp)
/* 8E9B8 8008DDB8 02208021 */  addu       $s0, $s1, $zero
/* 8E9BC 8008DDBC AFBF002C */  sw         $ra, 0x2C($sp)
/* 8E9C0 8008DDC0 AFB20028 */  sw         $s2, 0x28($sp)
/* 8E9C4 8008DDC4 8E020010 */  lw         $v0, 0x10($s0)
/* 8E9C8 8008DDC8 00A09021 */  addu       $s2, $a1, $zero
/* 8E9CC 8008DDCC 04400056 */  bltz       $v0, .L8008DF28
/* 8E9D0 8008DDD0 3C038000 */   lui       $v1, (0x80000000 >> 16)
/* 8E9D4 8008DDD4 26040024 */  addiu      $a0, $s0, 0x24
/* 8E9D8 8008DDD8 02002821 */  addu       $a1, $s0, $zero
/* 8E9DC 8008DDDC 24060003 */  addiu      $a2, $zero, 0x3
/* 8E9E0 8008DDE0 00431025 */  or         $v0, $v0, $v1
/* 8E9E4 8008DDE4 0C0238AD */  jal        func_8008E2B4
/* 8E9E8 8008DDE8 AE020010 */   sw        $v0, 0x10($s0)
/* 8E9EC 8008DDEC 8E04002C */  lw         $a0, 0x2C($s0)
/* 8E9F0 8008DDF0 8E060020 */  lw         $a2, 0x20($s0)
/* 8E9F4 8008DDF4 0C0238AD */  jal        func_8008E2B4
/* 8E9F8 8008DDF8 02002821 */   addu      $a1, $s0, $zero
/* 8E9FC 8008DDFC 8E020020 */  lw         $v0, 0x20($s0)
/* 8EA00 8008DE00 18400047 */  blez       $v0, .L8008DF20
/* 8EA04 8008DE04 00003021 */   addu      $a2, $zero, $zero
/* 8EA08 8008DE08 3C01800D */  lui        $at, %hi(D_800D6AA8)
/* 8EA0C 8008DE0C D4246AA8 */  ldc1       $f4, %lo(D_800D6AA8)($at)
/* 8EA10 8008DE10 3C07FF00 */  lui        $a3, (0xFF000000 >> 16)
/* 8EA14 8008DE14 24080001 */  addiu      $t0, $zero, 0x1
/* 8EA18 8008DE18 00002821 */  addu       $a1, $zero, $zero
.L8008DE1C:
/* 8EA1C 8008DE1C 8E020028 */  lw         $v0, 0x28($s0)
/* 8EA20 8008DE20 00452021 */  addu       $a0, $v0, $a1
/* 8EA24 8008DE24 90830000 */  lbu        $v1, 0x0($a0)
/* 8EA28 8008DE28 30620080 */  andi       $v0, $v1, 0x80
/* 8EA2C 8008DE2C 10400002 */  beqz       $v0, .L8008DE38
/* 8EA30 8008DE30 306200FF */   andi      $v0, $v1, 0xFF
/* 8EA34 8008DE34 2442FF00 */  addiu      $v0, $v0, -0x100
.L8008DE38:
/* 8EA38 8008DE38 44821000 */  mtc1       $v0, $f2
/* 8EA3C 8008DE3C 00000000 */  nop
/* 8EA40 8008DE40 468010A0 */  cvt.s.w    $f2, $f2
/* 8EA44 8008DE44 46001021 */  cvt.d.s    $f0, $f2
/* 8EA48 8008DE48 46240003 */  div.d      $f0, $f0, $f4
/* 8EA4C 8008DE4C 46200020 */  cvt.s.d    $f0, $f0
/* 8EA50 8008DE50 E4800000 */  swc1       $f0, 0x0($a0)
/* 8EA54 8008DE54 8E020024 */  lw         $v0, 0x24($s0)
/* 8EA58 8008DE58 00461021 */  addu       $v0, $v0, $a2
/* 8EA5C 8008DE5C 90420000 */  lbu        $v0, 0x0($v0)
/* 8EA60 8008DE60 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 8EA64 8008DE64 00401821 */  addu       $v1, $v0, $zero
/* 8EA68 8008DE68 30420080 */  andi       $v0, $v0, 0x80
/* 8EA6C 8008DE6C 10400002 */  beqz       $v0, .L8008DE78
/* 8EA70 8008DE70 306200FF */   andi      $v0, $v1, 0xFF
/* 8EA74 8008DE74 2442FF00 */  addiu      $v0, $v0, -0x100
.L8008DE78:
/* 8EA78 8008DE78 44821000 */  mtc1       $v0, $f2
/* 8EA7C 8008DE7C 00000000 */  nop
/* 8EA80 8008DE80 468010A0 */  cvt.s.w    $f2, $f2
/* 8EA84 8008DE84 C4800000 */  lwc1       $f0, 0x0($a0)
/* 8EA88 8008DE88 46020000 */  add.s      $f0, $f0, $f2
/* 8EA8C 8008DE8C E4800000 */  swc1       $f0, 0x0($a0)
/* 8EA90 8008DE90 8E02002C */  lw         $v0, 0x2C($s0)
/* 8EA94 8008DE94 00A21021 */  addu       $v0, $a1, $v0
/* 8EA98 8008DE98 8C440000 */  lw         $a0, 0x0($v0)
/* 8EA9C 8008DE9C 90820009 */  lbu        $v0, 0x9($a0)
/* 8EAA0 8008DEA0 1440001A */  bnez       $v0, .L8008DF0C
/* 8EAA4 8008DEA4 00000000 */   nop
/* 8EAA8 8008DEA8 8C830000 */  lw         $v1, 0x0($a0)
/* 8EAAC 8008DEAC 00671024 */  and        $v0, $v1, $a3
/* 8EAB0 8008DEB0 10470002 */  beq        $v0, $a3, .L8008DEBC
/* 8EAB4 8008DEB4 00721821 */   addu      $v1, $v1, $s2
/* 8EAB8 8008DEB8 AC830000 */  sw         $v1, 0x0($a0)
.L8008DEBC:
/* 8EABC 8008DEBC 8E02002C */  lw         $v0, 0x2C($s0)
/* 8EAC0 8008DEC0 00A21021 */  addu       $v0, $a1, $v0
/* 8EAC4 8008DEC4 8C420000 */  lw         $v0, 0x0($v0)
/* 8EAC8 8008DEC8 A0480009 */  sb         $t0, 0x9($v0)
/* 8EACC 8008DECC 8E02002C */  lw         $v0, 0x2C($s0)
/* 8EAD0 8008DED0 00A21021 */  addu       $v0, $a1, $v0
/* 8EAD4 8008DED4 8C430000 */  lw         $v1, 0x0($v0)
/* 8EAD8 8008DED8 8C62000C */  lw         $v0, 0xC($v1)
/* 8EADC 8008DEDC 10400002 */  beqz       $v0, .L8008DEE8
/* 8EAE0 8008DEE0 00511021 */   addu      $v0, $v0, $s1
/* 8EAE4 8008DEE4 AC62000C */  sw         $v0, 0xC($v1)
.L8008DEE8:
/* 8EAE8 8008DEE8 8E02002C */  lw         $v0, 0x2C($s0)
/* 8EAEC 8008DEEC 00A21021 */  addu       $v0, $a1, $v0
/* 8EAF0 8008DEF0 8C430000 */  lw         $v1, 0x0($v0)
/* 8EAF4 8008DEF4 90620008 */  lbu        $v0, 0x8($v1)
/* 8EAF8 8008DEF8 14400004 */  bnez       $v0, .L8008DF0C
/* 8EAFC 8008DEFC 00000000 */   nop
/* 8EB00 8008DF00 8C620010 */  lw         $v0, 0x10($v1)
/* 8EB04 8008DF04 00511021 */  addu       $v0, $v0, $s1
/* 8EB08 8008DF08 AC620010 */  sw         $v0, 0x10($v1)
.L8008DF0C:
/* 8EB0C 8008DF0C 8E020020 */  lw         $v0, 0x20($s0)
/* 8EB10 8008DF10 24C60001 */  addiu      $a2, $a2, 0x1
/* 8EB14 8008DF14 00C2102A */  slt        $v0, $a2, $v0
/* 8EB18 8008DF18 1440FFC0 */  bnez       $v0, .L8008DE1C
/* 8EB1C 8008DF1C 24A50004 */   addiu     $a1, $a1, 0x4
.L8008DF20:
/* 8EB20 8008DF20 0C024028 */  jal        func_800900A0
/* 8EB24 8008DF24 00000000 */   nop
.L8008DF28:
/* 8EB28 8008DF28 8FBF002C */  lw         $ra, 0x2C($sp)
/* 8EB2C 8008DF2C 8FB20028 */  lw         $s2, 0x28($sp)
/* 8EB30 8008DF30 8FB10024 */  lw         $s1, 0x24($sp)
/* 8EB34 8008DF34 8FB00020 */  lw         $s0, 0x20($sp)
/* 8EB38 8008DF38 03E00008 */  jr         $ra
/* 8EB3C 8008DF3C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8008DF40
/* 8EB40 8008DF40 00003021 */  addu       $a2, $zero, $zero
/* 8EB44 8008DF44 3C074800 */  lui        $a3, (0x48000000 >> 16)
/* 8EB48 8008DF48 3C080800 */  lui        $t0, (0x8000000 >> 16)
.L8008DF4C:
/* 8EB4C 8008DF4C 3C02802C */  lui        $v0, %hi(D_802C23EC)
/* 8EB50 8008DF50 8C4223EC */  lw         $v0, %lo(D_802C23EC)($v0)
/* 8EB54 8008DF54 00022840 */  sll        $a1, $v0, 1
/* 8EB58 8008DF58 00471024 */  and        $v0, $v0, $a3
/* 8EB5C 8008DF5C 00471826 */  xor        $v1, $v0, $a3
/* 8EB60 8008DF60 2C630001 */  sltiu      $v1, $v1, 0x1
/* 8EB64 8008DF64 00481026 */  xor        $v0, $v0, $t0
/* 8EB68 8008DF68 2C420001 */  sltiu      $v0, $v0, 0x1
/* 8EB6C 8008DF6C 00621825 */  or         $v1, $v1, $v0
/* 8EB70 8008DF70 3C01802C */  lui        $at, %hi(D_802C23EC)
/* 8EB74 8008DF74 AC2523EC */  sw         $a1, %lo(D_802C23EC)($at)
/* 8EB78 8008DF78 10600004 */  beqz       $v1, .L8008DF8C
/* 8EB7C 8008DF7C 24C60001 */   addiu     $a2, $a2, 0x1
/* 8EB80 8008DF80 34A20001 */  ori        $v0, $a1, 0x1
/* 8EB84 8008DF84 3C01802C */  lui        $at, %hi(D_802C23EC)
/* 8EB88 8008DF88 AC2223EC */  sw         $v0, %lo(D_802C23EC)($at)
.L8008DF8C:
/* 8EB8C 8008DF8C 28C20008 */  slti       $v0, $a2, 0x8
/* 8EB90 8008DF90 1440FFEE */  bnez       $v0, .L8008DF4C
/* 8EB94 8008DF94 00000000 */   nop
/* 8EB98 8008DF98 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 8EB9C 8008DF9C 44810000 */  mtc1       $at, $f0
/* 8EBA0 8008DFA0 3C01802C */  lui        $at, %hi(D_802C23EC)
/* 8EBA4 8008DFA4 C42223EC */  lwc1       $f2, %lo(D_802C23EC)($at)
/* 8EBA8 8008DFA8 468010A0 */  cvt.s.w    $f2, $f2
/* 8EBAC 8008DFAC 46001083 */  div.s      $f2, $f2, $f0
/* 8EBB0 8008DFB0 46001083 */  div.s      $f2, $f2, $f0
/* 8EBB4 8008DFB4 44840000 */  mtc1       $a0, $f0
/* 8EBB8 8008DFB8 00000000 */  nop
/* 8EBBC 8008DFBC 46800020 */  cvt.s.w    $f0, $f0
/* 8EBC0 8008DFC0 46020002 */  mul.s      $f0, $f0, $f2
/* 8EBC4 8008DFC4 4600008D */  trunc.w.s  $f2, $f0
/* 8EBC8 8008DFC8 44021000 */  mfc1       $v0, $f2
/* 8EBCC 8008DFCC 03E00008 */  jr         $ra
/* 8EBD0 8008DFD0 00000000 */   nop

glabel func_8008DFD4
/* 8EBD4 8008DFD4 00803021 */  addu       $a2, $a0, $zero
/* 8EBD8 8008DFD8 90C700C1 */  lbu        $a3, 0xC1($a2)
/* 8EBDC 8008DFDC 00001821 */  addu       $v1, $zero, $zero
/* 8EBE0 8008DFE0 ACC00000 */  sw         $zero, 0x0($a2)
.L8008DFE4:
/* 8EBE4 8008DFE4 A0800000 */  sb         $zero, 0x0($a0)
/* 8EBE8 8008DFE8 24630001 */  addiu      $v1, $v1, 0x1
/* 8EBEC 8008DFEC 2C620120 */  sltiu      $v0, $v1, 0x120
/* 8EBF0 8008DFF0 1440FFFC */  bnez       $v0, .L8008DFE4
/* 8EBF4 8008DFF4 24840001 */   addiu     $a0, $a0, 0x1
/* 8EBF8 8008DFF8 240500FF */  addiu      $a1, $zero, 0xFF
/* 8EBFC 8008DFFC A0C500C4 */  sb         $a1, 0xC4($a2)
/* 8EC00 8008E000 A0C500B6 */  sb         $a1, 0xB6($a2)
/* 8EC04 8008E004 3C02802C */  lui        $v0, %hi(D_802C23DC)
/* 8EC08 8008E008 8C4223DC */  lw         $v0, %lo(D_802C23DC)($v0)
/* 8EC0C 8008E00C 24046000 */  addiu      $a0, $zero, 0x6000
/* 8EC10 8008E010 0082001A */  div        $zero, $a0, $v0
/* 8EC14 8008E014 14400002 */  bnez       $v0, .L8008E020
/* 8EC18 8008E018 00000000 */   nop
/* 8EC1C 8008E01C 0007000D */  break      7
.L8008E020:
/* 8EC20 8008E020 2401FFFF */  addiu      $at, $zero, -0x1
/* 8EC24 8008E024 14410004 */  bne        $v0, $at, .L8008E038
/* 8EC28 8008E028 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 8EC2C 8008E02C 14810002 */  bne        $a0, $at, .L8008E038
/* 8EC30 8008E030 00000000 */   nop
/* 8EC34 8008E034 0006000D */  break      6
.L8008E038:
/* 8EC38 8008E038 00002012 */  mflo       $a0
/* 8EC3C 8008E03C 3C0142C7 */  lui        $at, (0x42C7CCCD >> 16)
/* 8EC40 8008E040 3421CCCD */  ori        $at, $at, (0x42C7CCCD & 0xFFFF)
/* 8EC44 8008E044 44810000 */  mtc1       $at, $f0
/* 8EC48 8008E048 3C013D00 */  lui        $at, (0x3D000000 >> 16)
/* 8EC4C 8008E04C 44811000 */  mtc1       $at, $f2
/* 8EC50 8008E050 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 8EC54 8008E054 44812000 */  mtc1       $at, $f4
/* 8EC58 8008E058 3C013B80 */  lui        $at, (0x3B808081 >> 16)
/* 8EC5C 8008E05C 34218081 */  ori        $at, $at, (0x3B808081 & 0xFFFF)
/* 8EC60 8008E060 44813000 */  mtc1       $at, $f6
/* 8EC64 8008E064 3C013D88 */  lui        $at, (0x3D888889 >> 16)
/* 8EC68 8008E068 34218889 */  ori        $at, $at, (0x3D888889 & 0xFFFF)
/* 8EC6C 8008E06C 44814000 */  mtc1       $at, $f8
/* 8EC70 8008E070 2403007F */  addiu      $v1, $zero, 0x7F
/* 8EC74 8008E074 A0C000CA */  sb         $zero, 0xCA($a2)
/* 8EC78 8008E078 A0C300CB */  sb         $v1, 0xCB($a2)
/* 8EC7C 8008E07C A0C300B4 */  sb         $v1, 0xB4($a2)
/* 8EC80 8008E080 A0C300B9 */  sb         $v1, 0xB9($a2)
/* 8EC84 8008E084 A0C500BF */  sb         $a1, 0xBF($a2)
/* 8EC88 8008E088 A0C300BA */  sb         $v1, 0xBA($a2)
/* 8EC8C 8008E08C 24020040 */  addiu      $v0, $zero, 0x40
/* 8EC90 8008E090 A0C200B5 */  sb         $v0, 0xB5($a2)
/* 8EC94 8008E094 24020001 */  addiu      $v0, $zero, 0x1
/* 8EC98 8008E098 A0C200B7 */  sb         $v0, 0xB7($a2)
/* 8EC9C 8008E09C A0C200BE */  sb         $v0, 0xBE($a2)
/* 8ECA0 8008E0A0 2402000F */  addiu      $v0, $zero, 0xF
/* 8ECA4 8008E0A4 A0C200C0 */  sb         $v0, 0xC0($a2)
/* 8ECA8 8008E0A8 3C03802C */  lui        $v1, %hi(D_802C23F0)
/* 8ECAC 8008E0AC 8C6323F0 */  lw         $v1, %lo(D_802C23F0)($v1)
/* 8ECB0 8008E0B0 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 8ECB4 8008E0B4 A4C20098 */  sh         $v0, 0x98($a2)
/* 8ECB8 8008E0B8 24020001 */  addiu      $v0, $zero, 0x1
/* 8ECBC 8008E0BC A4C20092 */  sh         $v0, 0x92($a2)
/* 8ECC0 8008E0C0 A4C2009A */  sh         $v0, 0x9A($a2)
/* 8ECC4 8008E0C4 A4C2009C */  sh         $v0, 0x9C($a2)
/* 8ECC8 8008E0C8 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8ECCC 8008E0CC ACC2000C */  sw         $v0, 0xC($a2)
/* 8ECD0 8008E0D0 24020080 */  addiu      $v0, $zero, 0x80
/* 8ECD4 8008E0D4 A4C20096 */  sh         $v0, 0x96($a2)
/* 8ECD8 8008E0D8 A4C200A8 */  sh         $v0, 0xA8($a2)
/* 8ECDC 8008E0DC A4C20090 */  sh         $v0, 0x90($a2)
/* 8ECE0 8008E0E0 A0C700C1 */  sb         $a3, 0xC1($a2)
/* 8ECE4 8008E0E4 E4C00024 */  swc1       $f0, 0x24($a2)
/* 8ECE8 8008E0E8 E4C20068 */  swc1       $f2, 0x68($a2)
/* 8ECEC 8008E0EC E4C40054 */  swc1       $f4, 0x54($a2)
/* 8ECF0 8008E0F0 E4C60058 */  swc1       $f6, 0x58($a2)
/* 8ECF4 8008E0F4 E4C8005C */  swc1       $f8, 0x5C($a2)
/* 8ECF8 8008E0F8 ACC30074 */  sw         $v1, 0x74($a2)
/* 8ECFC 8008E0FC A4C400A0 */  sh         $a0, 0xA0($a2)
/* 8ED00 8008E100 03E00008 */  jr         $ra
/* 8ED04 8008E104 A4C40094 */   sh        $a0, 0x94($a2)

glabel func_8008E108
/* 8ED08 8008E108 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8ED0C 8008E10C 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8ED10 8008E110 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8ED14 8008E114 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8ED18 8008E118 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8ED1C 8008E11C 1840000B */  blez       $v0, .L8008E14C
/* 8ED20 8008E120 00003021 */   addu      $a2, $zero, $zero
/* 8ED24 8008E124 00403821 */  addu       $a3, $v0, $zero
.L8008E128:
/* 8ED28 8008E128 8C620000 */  lw         $v0, 0x0($v1)
/* 8ED2C 8008E12C 10400054 */  beqz       $v0, .L8008E280
/* 8ED30 8008E130 00C01021 */   addu      $v0, $a2, $zero
/* 8ED34 8008E134 24C60001 */  addiu      $a2, $a2, 0x1
/* 8ED38 8008E138 00C7102A */  slt        $v0, $a2, $a3
/* 8ED3C 8008E13C 1440FFFA */  bnez       $v0, .L8008E128
/* 8ED40 8008E140 24630120 */   addiu     $v1, $v1, 0x120
/* 8ED44 8008E144 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8ED48 8008E148 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
.L8008E14C:
/* 8ED4C 8008E14C 3C097FFF */  lui        $t1, (0x7FFFFFFF >> 16)
/* 8ED50 8008E150 3529FFFF */  ori        $t1, $t1, (0x7FFFFFFF & 0xFFFF)
/* 8ED54 8008E154 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8ED58 8008E158 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8ED5C 8008E15C 2408FFFF */  addiu      $t0, $zero, -0x1
/* 8ED60 8008E160 18400010 */  blez       $v0, .L8008E1A4
/* 8ED64 8008E164 00003021 */   addu      $a2, $zero, $zero
/* 8ED68 8008E168 00405021 */  addu       $t2, $v0, $zero
/* 8ED6C 8008E16C 24670044 */  addiu      $a3, $v1, 0x44
.L8008E170:
/* 8ED70 8008E170 94E2005A */  lhu        $v0, 0x5A($a3)
/* 8ED74 8008E174 50400008 */  beql       $v0, $zero, .L8008E198
/* 8ED78 8008E178 24C60001 */   addiu     $a2, $a2, 0x1
/* 8ED7C 8008E17C 8CE30000 */  lw         $v1, 0x0($a3)
/* 8ED80 8008E180 0123102A */  slt        $v0, $t1, $v1
/* 8ED84 8008E184 54400004 */  bnel       $v0, $zero, .L8008E198
/* 8ED88 8008E188 24C60001 */   addiu     $a2, $a2, 0x1
/* 8ED8C 8008E18C 00604821 */  addu       $t1, $v1, $zero
/* 8ED90 8008E190 00C04021 */  addu       $t0, $a2, $zero
/* 8ED94 8008E194 24C60001 */  addiu      $a2, $a2, 0x1
.L8008E198:
/* 8ED98 8008E198 00CA102A */  slt        $v0, $a2, $t2
/* 8ED9C 8008E19C 1440FFF4 */  bnez       $v0, .L8008E170
/* 8EDA0 8008E1A0 24E70120 */   addiu     $a3, $a3, 0x120
.L8008E1A4:
/* 8EDA4 8008E1A4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8EDA8 8008E1A8 15020035 */  bne        $t0, $v0, .L8008E280
/* 8EDAC 8008E1AC 01001021 */   addu      $v0, $t0, $zero
/* 8EDB0 8008E1B0 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8EDB4 8008E1B4 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8EDB8 8008E1B8 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8EDBC 8008E1BC 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
/* 8EDC0 8008E1C0 18400010 */  blez       $v0, .L8008E204
/* 8EDC4 8008E1C4 00003021 */   addu      $a2, $zero, $zero
/* 8EDC8 8008E1C8 9468009E */  lhu        $t0, 0x9E($v1)
/* 8EDCC 8008E1CC 00403821 */  addu       $a3, $v0, $zero
.L8008E1D0:
/* 8EDD0 8008E1D0 55000005 */  bnel       $t0, $zero, .L8008E1E8
/* 8EDD4 8008E1D4 24C60001 */   addiu     $a2, $a2, 0x1
/* 8EDD8 8008E1D8 8C620070 */  lw         $v0, 0x70($v1)
/* 8EDDC 8008E1DC 14440028 */  bne        $v0, $a0, .L8008E280
/* 8EDE0 8008E1E0 00C01021 */   addu      $v0, $a2, $zero
/* 8EDE4 8008E1E4 24C60001 */  addiu      $a2, $a2, 0x1
.L8008E1E8:
/* 8EDE8 8008E1E8 00C7102A */  slt        $v0, $a2, $a3
/* 8EDEC 8008E1EC 1440FFF8 */  bnez       $v0, .L8008E1D0
/* 8EDF0 8008E1F0 00000000 */   nop
/* 8EDF4 8008E1F4 3C02802C */  lui        $v0, %hi(D_802C23C8)
/* 8EDF8 8008E1F8 8C4223C8 */  lw         $v0, %lo(D_802C23C8)($v0)
/* 8EDFC 8008E1FC 3C03802C */  lui        $v1, %hi(D_802C23D0)
/* 8EE00 8008E200 8C6323D0 */  lw         $v1, %lo(D_802C23D0)($v1)
.L8008E204:
/* 8EE04 8008E204 18400011 */  blez       $v0, .L8008E24C
/* 8EE08 8008E208 00003021 */   addu      $a2, $zero, $zero
/* 8EE0C 8008E20C 00054880 */  sll        $t1, $a1, 2
/* 8EE10 8008E210 00404021 */  addu       $t0, $v0, $zero
/* 8EE14 8008E214 24670078 */  addiu      $a3, $v1, 0x78
.L8008E218:
/* 8EE18 8008E218 8CE2FFF8 */  lw         $v0, -0x8($a3)
/* 8EE1C 8008E21C 54440008 */  bnel       $v0, $a0, .L8008E240
/* 8EE20 8008E220 24C60001 */   addiu     $a2, $a2, 0x1
/* 8EE24 8008E224 8C820004 */  lw         $v0, 0x4($a0)
/* 8EE28 8008E228 01221021 */  addu       $v0, $t1, $v0
/* 8EE2C 8008E22C 8C430000 */  lw         $v1, 0x0($v0)
/* 8EE30 8008E230 8CE20000 */  lw         $v0, 0x0($a3)
/* 8EE34 8008E234 10620012 */  beq        $v1, $v0, .L8008E280
/* 8EE38 8008E238 00C01021 */   addu      $v0, $a2, $zero
/* 8EE3C 8008E23C 24C60001 */  addiu      $a2, $a2, 0x1
.L8008E240:
/* 8EE40 8008E240 00C8102A */  slt        $v0, $a2, $t0
/* 8EE44 8008E244 1440FFF4 */  bnez       $v0, .L8008E218
/* 8EE48 8008E248 24E70120 */   addiu     $a3, $a3, 0x120
.L8008E24C:
/* 8EE4C 8008E24C 3C03802C */  lui        $v1, %hi(D_802C23C8)
/* 8EE50 8008E250 8C6323C8 */  lw         $v1, %lo(D_802C23C8)($v1)
/* 8EE54 8008E254 00A3001A */  div        $zero, $a1, $v1
/* 8EE58 8008E258 14600002 */  bnez       $v1, .L8008E264
/* 8EE5C 8008E25C 00000000 */   nop
/* 8EE60 8008E260 0007000D */  break      7
.L8008E264:
/* 8EE64 8008E264 2401FFFF */  addiu      $at, $zero, -0x1
/* 8EE68 8008E268 14610004 */  bne        $v1, $at, .L8008E27C
/* 8EE6C 8008E26C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 8EE70 8008E270 14A10002 */  bne        $a1, $at, .L8008E27C
/* 8EE74 8008E274 00000000 */   nop
/* 8EE78 8008E278 0006000D */  break      6
.L8008E27C:
/* 8EE7C 8008E27C 00001010 */  mfhi       $v0
.L8008E280:
/* 8EE80 8008E280 03E00008 */  jr         $ra
/* 8EE84 8008E284 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8008E288
/* 8EE88 8008E288 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8EE8C 8008E28C 10C00006 */  beqz       $a2, .L8008E2A8
/* 8EE90 8008E290 24C2FFFF */   addiu     $v0, $a2, -0x1
/* 8EE94 8008E294 2403FFFF */  addiu      $v1, $zero, -0x1
.L8008E298:
/* 8EE98 8008E298 A0850000 */  sb         $a1, 0x0($a0)
/* 8EE9C 8008E29C 2442FFFF */  addiu      $v0, $v0, -0x1
/* 8EEA0 8008E2A0 1443FFFD */  bne        $v0, $v1, .L8008E298
/* 8EEA4 8008E2A4 24840001 */   addiu     $a0, $a0, 0x1
.L8008E2A8:
/* 8EEA8 8008E2A8 27BD0008 */  addiu      $sp, $sp, 0x8
/* 8EEAC 8008E2AC 03E00008 */  jr         $ra
/* 8EEB0 8008E2B0 00000000 */   nop

glabel func_8008E2B4
/* 8EEB4 8008E2B4 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 8EEB8 8008E2B8 18C00009 */  blez       $a2, .L8008E2E0
/* 8EEBC 8008E2BC 00001821 */   addu      $v1, $zero, $zero
.L8008E2C0:
/* 8EEC0 8008E2C0 8C820000 */  lw         $v0, 0x0($a0)
/* 8EEC4 8008E2C4 10400003 */  beqz       $v0, .L8008E2D4
/* 8EEC8 8008E2C8 24630001 */   addiu     $v1, $v1, 0x1
/* 8EECC 8008E2CC 00451021 */  addu       $v0, $v0, $a1
/* 8EED0 8008E2D0 AC820000 */  sw         $v0, 0x0($a0)
.L8008E2D4:
/* 8EED4 8008E2D4 0066102A */  slt        $v0, $v1, $a2
/* 8EED8 8008E2D8 1440FFF9 */  bnez       $v0, .L8008E2C0
/* 8EEDC 8008E2DC 24840004 */   addiu     $a0, $a0, 0x4
.L8008E2E0:
/* 8EEE0 8008E2E0 27BD0008 */  addiu      $sp, $sp, 0x8
/* 8EEE4 8008E2E4 03E00008 */  jr         $ra
/* 8EEE8 8008E2E8 00000000 */   nop

glabel func_8008E2EC
/* 8EEEC 8008E2EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 8EEF0 8008E2F0 AFB40020 */  sw         $s4, 0x20($sp)
/* 8EEF4 8008E2F4 8FB40038 */  lw         $s4, 0x38($sp)
/* 8EEF8 8008E2F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 8EEFC 8008E2FC 00808021 */  addu       $s0, $a0, $zero
/* 8EF00 8008E300 AFB10014 */  sw         $s1, 0x14($sp)
/* 8EF04 8008E304 00A08821 */  addu       $s1, $a1, $zero
/* 8EF08 8008E308 AFB20018 */  sw         $s2, 0x18($sp)
/* 8EF0C 8008E30C 00C09021 */  addu       $s2, $a2, $zero
/* 8EF10 8008E310 AFB3001C */  sw         $s3, 0x1C($sp)
/* 8EF14 8008E314 AFBF0024 */  sw         $ra, 0x24($sp)
/* 8EF18 8008E318 0C0237F5 */  jal        func_8008DFD4
/* 8EF1C 8008E31C 00E09821 */   addu      $s3, $a3, $zero
/* 8EF20 8008E320 3C02802C */  lui        $v0, %hi(D_802C23E8)
/* 8EF24 8008E324 8C4223E8 */  lw         $v0, %lo(D_802C23E8)($v0)
/* 8EF28 8008E328 3C03802C */  lui        $v1, %hi(D_802C23D4)
/* 8EF2C 8008E32C 8C6323D4 */  lw         $v1, %lo(D_802C23D4)($v1)
/* 8EF30 8008E330 A611009E */  sh         $s1, 0x9E($s0)
/* 8EF34 8008E334 00118880 */  sll        $s1, $s1, 2
/* 8EF38 8008E338 A6120096 */  sh         $s2, 0x96($s0)
/* 8EF3C 8008E33C A61300A8 */  sh         $s3, 0xA8($s0)
/* 8EF40 8008E340 02238821 */  addu       $s1, $s1, $v1
/* 8EF44 8008E344 AE020040 */  sw         $v0, 0x40($s0)
/* 8EF48 8008E348 AE140044 */  sw         $s4, 0x44($s0)
/* 8EF4C 8008E34C 8E230000 */  lw         $v1, 0x0($s1)
/* 8EF50 8008E350 24420001 */  addiu      $v0, $v0, 0x1
/* 8EF54 8008E354 3C01802C */  lui        $at, %hi(D_802C23E8)
/* 8EF58 8008E358 AC2223E8 */  sw         $v0, %lo(D_802C23E8)($at)
/* 8EF5C 8008E35C 8E020040 */  lw         $v0, 0x40($s0)
/* 8EF60 8008E360 AE030078 */  sw         $v1, 0x78($s0)
/* 8EF64 8008E364 AE030000 */  sw         $v1, 0x0($s0)
/* 8EF68 8008E368 8FBF0024 */  lw         $ra, 0x24($sp)
/* 8EF6C 8008E36C 8FB40020 */  lw         $s4, 0x20($sp)
/* 8EF70 8008E370 8FB3001C */  lw         $s3, 0x1C($sp)
/* 8EF74 8008E374 8FB20018 */  lw         $s2, 0x18($sp)
/* 8EF78 8008E378 8FB10014 */  lw         $s1, 0x14($sp)
/* 8EF7C 8008E37C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8EF80 8008E380 03E00008 */  jr         $ra
/* 8EF84 8008E384 27BD0028 */   addiu     $sp, $sp, 0x28
/* 8EF88 8008E388 00000000 */  nop
/* 8EF8C 8008E38C 00000000 */  nop
