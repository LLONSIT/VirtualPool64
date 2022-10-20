.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000C5A0
/* D1A0 8000C5A0 3C02800A */  lui        $v0, %hi(D_800A0E2C)
/* D1A4 8000C5A4 8C420E2C */  lw         $v0, %lo(D_800A0E2C)($v0)
/* D1A8 8000C5A8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* D1AC 8000C5AC 14400003 */  bnez       $v0, .L8000C5BC
/* D1B0 8000C5B0 AFBF0050 */   sw        $ra, 0x50($sp)
/* D1B4 8000C5B4 0C001566 */  jal        func_80005598
/* D1B8 8000C5B8 2404006F */   addiu     $a0, $zero, 0x6F
.L8000C5BC:
/* D1BC 8000C5BC 3C030002 */  lui        $v1, (0x28488 >> 16)
/* D1C0 8000C5C0 34638488 */  ori        $v1, $v1, (0x28488 & 0xFFFF)
/* D1C4 8000C5C4 2404006F */  addiu      $a0, $zero, 0x6F
/* D1C8 8000C5C8 24020018 */  addiu      $v0, $zero, 0x18
/* D1CC 8000C5CC AFA20014 */  sw         $v0, 0x14($sp)
/* D1D0 8000C5D0 2402000C */  addiu      $v0, $zero, 0xC
/* D1D4 8000C5D4 AFA2001C */  sw         $v0, 0x1C($sp)
/* D1D8 8000C5D8 3C02802F */  lui        $v0, %hi(D_802EF328)
/* D1DC 8000C5DC 2442F328 */  addiu      $v0, $v0, %lo(D_802EF328)
/* D1E0 8000C5E0 AFA20018 */  sw         $v0, 0x18($sp)
/* D1E4 8000C5E4 3C028027 */  lui        $v0, %hi(D_802758C0)
/* D1E8 8000C5E8 244258C0 */  addiu      $v0, $v0, %lo(D_802758C0)
/* D1EC 8000C5EC AFA00010 */  sw         $zero, 0x10($sp)
/* D1F0 8000C5F0 AFA20020 */  sw         $v0, 0x20($sp)
/* D1F4 8000C5F4 0C0015B7 */  jal        func_800056DC
/* D1F8 8000C5F8 AFA30024 */   sw        $v1, 0x24($sp)
/* D1FC 8000C5FC 3C03800A */  lui        $v1, %hi(D_800A0E34)
/* D200 8000C600 8C630E34 */  lw         $v1, %lo(D_800A0E34)($v1)
/* D204 8000C604 AFA20028 */  sw         $v0, 0x28($sp)
/* D208 8000C608 3C02800B */  lui        $v0, %hi(D_800AB8C8)
/* D20C 8000C60C 2442B8C8 */  addiu      $v0, $v0, %lo(D_800AB8C8)
/* D210 8000C610 AFA20030 */  sw         $v0, 0x30($sp)
/* D214 8000C614 3C02800B */  lui        $v0, %hi(D_800AB990)
/* D218 8000C618 2442B990 */  addiu      $v0, $v0, %lo(D_800AB990)
/* D21C 8000C61C AFA20034 */  sw         $v0, 0x34($sp)
/* D220 8000C620 24020100 */  addiu      $v0, $zero, 0x100
/* D224 8000C624 AFA20038 */  sw         $v0, 0x38($sp)
/* D228 8000C628 24025622 */  addiu      $v0, $zero, 0x5622
/* D22C 8000C62C AFA2003C */  sw         $v0, 0x3C($sp)
/* D230 8000C630 24021000 */  addiu      $v0, $zero, 0x1000
/* D234 8000C634 AFA20040 */  sw         $v0, 0x40($sp)
/* D238 8000C638 24020001 */  addiu      $v0, $zero, 0x1
/* D23C 8000C63C AFA20044 */  sw         $v0, 0x44($sp)
/* D240 8000C640 2402001A */  addiu      $v0, $zero, 0x1A
/* D244 8000C644 AFA20048 */  sw         $v0, 0x48($sp)
/* D248 8000C648 24020800 */  addiu      $v0, $zero, 0x800
/* D24C 8000C64C AFA2004C */  sw         $v0, 0x4C($sp)
/* D250 8000C650 0C0032B7 */  jal        func_8000CADC
/* D254 8000C654 AFA3002C */   sw        $v1, 0x2C($sp)
/* D258 8000C658 0C023052 */  jal        func_8008C148
/* D25C 8000C65C 27A40010 */   addiu     $a0, $sp, 0x10
/* D260 8000C660 24040003 */  addiu      $a0, $zero, 0x3
/* D264 8000C664 24027530 */  addiu      $v0, $zero, 0x7530
/* D268 8000C668 3C018027 */  lui        $at, %hi(D_802758B4)
/* D26C 8000C66C AC2258B4 */  sw         $v0, %lo(D_802758B4)($at)
/* D270 8000C670 3C018027 */  lui        $at, %hi(D_802758B0)
/* D274 8000C674 AC2258B0 */  sw         $v0, %lo(D_802758B0)($at)
/* D278 8000C678 0C02311B */  jal        func_8008C46C
/* D27C 8000C67C 24057530 */   addiu     $a1, $zero, 0x7530
/* D280 8000C680 24040003 */  addiu      $a0, $zero, 0x3
/* D284 8000C684 0C0231E8 */  jal        func_8008C7A0
/* D288 8000C688 00002821 */   addu      $a1, $zero, $zero
/* D28C 8000C68C 3C048001 */  lui        $a0, %hi(func_8000CA1C)
/* D290 8000C690 0C018F73 */  jal        func_80063DCC
/* D294 8000C694 2484CA1C */   addiu     $a0, $a0, %lo(func_8000CA1C)
/* D298 8000C698 8FBF0050 */  lw         $ra, 0x50($sp)
/* D29C 8000C69C 03E00008 */  jr         $ra
/* D2A0 8000C6A0 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8000C6A4
/* D2A4 8000C6A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D2A8 8000C6A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* D2AC 8000C6AC 0C0031B2 */  jal        func_8000C6C8
/* D2B0 8000C6B0 00000000 */   nop
/* D2B4 8000C6B4 0C0031C4 */  jal        func_8000C710
/* D2B8 8000C6B8 00000000 */   nop
/* D2BC 8000C6BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* D2C0 8000C6C0 03E00008 */  jr         $ra
/* D2C4 8000C6C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C6C8
/* D2C8 8000C6C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D2CC 8000C6CC AFBF0010 */  sw         $ra, 0x10($sp)
/* D2D0 8000C6D0 24040001 */  addiu      $a0, $zero, 0x1
/* D2D4 8000C6D4 0C0231E8 */  jal        func_8008C7A0
/* D2D8 8000C6D8 00002821 */   addu      $a1, $zero, $zero
/* D2DC 8000C6DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* D2E0 8000C6E0 03E00008 */  jr         $ra
/* D2E4 8000C6E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C6E8
/* D2E8 8000C6E8 3C04800B */  lui        $a0, %hi(D_800ABA5C)
/* D2EC 8000C6EC 8C84BA5C */  lw         $a0, %lo(D_800ABA5C)($a0)
/* D2F0 8000C6F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D2F4 8000C6F4 10800003 */  beqz       $a0, .L8000C704
/* D2F8 8000C6F8 AFBF0010 */   sw        $ra, 0x10($sp)
/* D2FC 8000C6FC 0C0031E1 */  jal        func_8000C784
/* D300 8000C700 00000000 */   nop
.L8000C704:
/* D304 8000C704 8FBF0010 */  lw         $ra, 0x10($sp)
/* D308 8000C708 03E00008 */  jr         $ra
/* D30C 8000C70C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C710
/* D310 8000C710 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D314 8000C714 24040002 */  addiu      $a0, $zero, 0x2
/* D318 8000C718 AFBF0010 */  sw         $ra, 0x10($sp)
/* D31C 8000C71C 0C0231E8 */  jal        func_8008C7A0
/* D320 8000C720 00002821 */   addu      $a1, $zero, $zero
/* D324 8000C724 3C02800B */  lui        $v0, %hi(D_800ABA64)
/* D328 8000C728 8C42BA64 */  lw         $v0, %lo(D_800ABA64)($v0)
/* D32C 8000C72C 10400006 */  beqz       $v0, .L8000C748
/* D330 8000C730 00000000 */   nop
.L8000C734:
/* D334 8000C734 3C04800B */  lui        $a0, %hi(D_800ABA64)
/* D338 8000C738 0C023243 */  jal        func_8008C90C
/* D33C 8000C73C 8C84BA64 */   lw        $a0, %lo(D_800ABA64)($a0)
/* D340 8000C740 1440FFFC */  bnez       $v0, .L8000C734
/* D344 8000C744 00000000 */   nop
.L8000C748:
/* D348 8000C748 3C04800B */  lui        $a0, %hi(D_800ABA60)
/* D34C 8000C74C 8C84BA60 */  lw         $a0, %lo(D_800ABA60)($a0)
/* D350 8000C750 10800005 */  beqz       $a0, .L8000C768
/* D354 8000C754 00000000 */   nop
/* D358 8000C758 0C0015AF */  jal        func_800056BC
/* D35C 8000C75C 00000000 */   nop
/* D360 8000C760 3C01800B */  lui        $at, %hi(D_800ABA60)
/* D364 8000C764 AC20BA60 */  sw         $zero, %lo(D_800ABA60)($at)
.L8000C768:
/* D368 8000C768 3C01800B */  lui        $at, %hi(D_800ABA60)
/* D36C 8000C76C AC20BA60 */  sw         $zero, %lo(D_800ABA60)($at)
/* D370 8000C770 3C01800B */  lui        $at, %hi(D_800ABA64)
/* D374 8000C774 AC20BA64 */  sw         $zero, %lo(D_800ABA64)($at)
/* D378 8000C778 8FBF0010 */  lw         $ra, 0x10($sp)
/* D37C 8000C77C 03E00008 */  jr         $ra
/* D380 8000C780 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C784
/* D384 8000C784 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D388 8000C788 3C03803F */  lui        $v1, %hi(D_803ED3D1)
/* D38C 8000C78C 2463D3D1 */  addiu      $v1, $v1, %lo(D_803ED3D1)
/* D390 8000C790 AFBF0014 */  sw         $ra, 0x14($sp)
/* D394 8000C794 AFB00010 */  sw         $s0, 0x10($sp)
/* D398 8000C798 90650000 */  lbu        $a1, 0x0($v1)
/* D39C 8000C79C 3C01800B */  lui        $at, %hi(D_800ABA5C)
/* D3A0 8000C7A0 AC24BA5C */  sw         $a0, %lo(D_800ABA5C)($at)
/* D3A4 8000C7A4 00051140 */  sll        $v0, $a1, 5
/* D3A8 8000C7A8 00451023 */  subu       $v0, $v0, $a1
/* D3AC 8000C7AC 00021100 */  sll        $v0, $v0, 4
/* D3B0 8000C7B0 00621821 */  addu       $v1, $v1, $v0
/* D3B4 8000C7B4 90630029 */  lbu        $v1, 0x29($v1)
/* D3B8 8000C7B8 24020001 */  addiu      $v0, $zero, 0x1
/* D3BC 8000C7BC 10620007 */  beq        $v1, $v0, .L8000C7DC
/* D3C0 8000C7C0 00808021 */   addu      $s0, $a0, $zero
/* D3C4 8000C7C4 10600006 */  beqz       $v1, .L8000C7E0
/* D3C8 8000C7C8 24020002 */   addiu     $v0, $zero, 0x2
/* D3CC 8000C7CC 10620035 */  beq        $v1, $v0, .L8000C8A4
/* D3D0 8000C7D0 00000000 */   nop
/* D3D4 8000C7D4 080031F8 */  j          .L8000C7E0
/* D3D8 8000C7D8 00000000 */   nop
.L8000C7DC:
/* D3DC 8000C7DC 26100019 */  addiu      $s0, $s0, 0x19
.L8000C7E0:
/* D3E0 8000C7E0 3C028027 */  lui        $v0, %hi(D_802758B0)
/* D3E4 8000C7E4 8C4258B0 */  lw         $v0, %lo(D_802758B0)($v0)
/* D3E8 8000C7E8 1040002E */  beqz       $v0, .L8000C8A4
/* D3EC 8000C7EC 00000000 */   nop
/* D3F0 8000C7F0 3C02800B */  lui        $v0, %hi(D_800ABA60)
/* D3F4 8000C7F4 8C42BA60 */  lw         $v0, %lo(D_800ABA60)($v0)
/* D3F8 8000C7F8 1050001B */  beq        $v0, $s0, .L8000C868
/* D3FC 8000C7FC 00000000 */   nop
/* D400 8000C800 0C0031C4 */  jal        func_8000C710
/* D404 8000C804 00000000 */   nop
/* D408 8000C808 0C0032D5 */  jal        func_8000CB54
/* D40C 8000C80C 02002021 */   addu      $a0, $s0, $zero
/* D410 8000C810 3C01800B */  lui        $at, %hi(D_800ABA58)
/* D414 8000C814 C422BA58 */  lwc1       $f2, %lo(D_800ABA58)($at)
/* D418 8000C818 3C018027 */  lui        $at, %hi(D_802758B0)
/* D41C 8000C81C C42058B0 */  lwc1       $f0, %lo(D_802758B0)($at)
/* D420 8000C820 46800020 */  cvt.s.w    $f0, $f0
/* D424 8000C824 46020002 */  mul.s      $f0, $f0, $f2
/* D428 8000C828 4600008D */  trunc.w.s  $f2, $f0
/* D42C 8000C82C 44051000 */  mfc1       $a1, $f2
/* D430 8000C830 00000000 */  nop
/* D434 8000C834 0C02311B */  jal        func_8008C46C
/* D438 8000C838 24040002 */   addiu     $a0, $zero, 0x2
/* D43C 8000C83C 0C001566 */  jal        func_80005598
/* D440 8000C840 02002021 */   addu      $a0, $s0, $zero
/* D444 8000C844 0C0015B7 */  jal        func_800056DC
/* D448 8000C848 02002021 */   addu      $a0, $s0, $zero
/* D44C 8000C84C 0C023126 */  jal        func_8008C498
/* D450 8000C850 00402021 */   addu      $a0, $v0, $zero
/* D454 8000C854 3C01800B */  lui        $at, %hi(D_800ABA64)
/* D458 8000C858 AC22BA64 */  sw         $v0, %lo(D_800ABA64)($at)
/* D45C 8000C85C 3C01800B */  lui        $at, %hi(D_800ABA60)
/* D460 8000C860 0800322B */  j          .L8000C8AC
/* D464 8000C864 AC30BA60 */   sw        $s0, %lo(D_800ABA60)($at)
.L8000C868:
/* D468 8000C868 3C04800B */  lui        $a0, %hi(D_800ABA64)
/* D46C 8000C86C 8C84BA64 */  lw         $a0, %lo(D_800ABA64)($a0)
/* D470 8000C870 1080000E */  beqz       $a0, .L8000C8AC
/* D474 8000C874 00000000 */   nop
/* D478 8000C878 0C023243 */  jal        func_8008C90C
/* D47C 8000C87C 00000000 */   nop
/* D480 8000C880 1440000A */  bnez       $v0, .L8000C8AC
/* D484 8000C884 00000000 */   nop
/* D488 8000C888 0C0015B7 */  jal        func_800056DC
/* D48C 8000C88C 02002021 */   addu      $a0, $s0, $zero
/* D490 8000C890 0C023126 */  jal        func_8008C498
/* D494 8000C894 00402021 */   addu      $a0, $v0, $zero
/* D498 8000C898 3C01800B */  lui        $at, %hi(D_800ABA64)
/* D49C 8000C89C 0800322B */  j          .L8000C8AC
/* D4A0 8000C8A0 AC22BA64 */   sw        $v0, %lo(D_800ABA64)($at)
.L8000C8A4:
/* D4A4 8000C8A4 0C0031C4 */  jal        func_8000C710
/* D4A8 8000C8A8 00000000 */   nop
.L8000C8AC:
/* D4AC 8000C8AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D4B0 8000C8B0 8FB00010 */  lw         $s0, 0x10($sp)
/* D4B4 8000C8B4 03E00008 */  jr         $ra
/* D4B8 8000C8B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C8BC
/* D4BC 8000C8BC 3C028027 */  lui        $v0, %hi(D_802758B4)
/* D4C0 8000C8C0 8C4258B4 */  lw         $v0, %lo(D_802758B4)($v0)
/* D4C4 8000C8C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D4C8 8000C8C8 1040000B */  beqz       $v0, .L8000C8F8
/* D4CC 8000C8CC AFBF0018 */   sw        $ra, 0x18($sp)
/* D4D0 8000C8D0 04A10005 */  bgez       $a1, .L8000C8E8
/* D4D4 8000C8D4 24020064 */   addiu     $v0, $zero, 0x64
/* D4D8 8000C8D8 0C02317B */  jal        func_8008C5EC
/* D4DC 8000C8DC 00000000 */   nop
/* D4E0 8000C8E0 0800323E */  j          .L8000C8F8
/* D4E4 8000C8E4 00000000 */   nop
.L8000C8E8:
/* D4E8 8000C8E8 AFA20010 */  sw         $v0, 0x10($sp)
/* D4EC 8000C8EC 24060080 */  addiu      $a2, $zero, 0x80
/* D4F0 8000C8F0 0C0231A6 */  jal        func_8008C698
/* D4F4 8000C8F4 00003821 */   addu      $a3, $zero, $zero
.L8000C8F8:
/* D4F8 8000C8F8 8FBF0018 */  lw         $ra, 0x18($sp)
/* D4FC 8000C8FC 03E00008 */  jr         $ra
/* D500 8000C900 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000C904
/* D504 8000C904 3C01800B */  lui        $at, %hi(D_800ABA58)
/* D508 8000C908 C422BA58 */  lwc1       $f2, %lo(D_800ABA58)($at)
/* D50C 8000C90C 44840000 */  mtc1       $a0, $f0
/* D510 8000C910 00000000 */  nop
/* D514 8000C914 46800020 */  cvt.s.w    $f0, $f0
/* D518 8000C918 46020002 */  mul.s      $f0, $f0, $f2
/* D51C 8000C91C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D520 8000C920 24040002 */  addiu      $a0, $zero, 0x2
/* D524 8000C924 AFBF0014 */  sw         $ra, 0x14($sp)
/* D528 8000C928 AFB00010 */  sw         $s0, 0x10($sp)
/* D52C 8000C92C 4600008D */  trunc.w.s  $f2, $f0
/* D530 8000C930 44101000 */  mfc1       $s0, $f2
/* D534 8000C934 00000000 */  nop
/* D538 8000C938 0C02311B */  jal        func_8008C46C
/* D53C 8000C93C 02002821 */   addu      $a1, $s0, $zero
/* D540 8000C940 3C028027 */  lui        $v0, %hi(D_802758B0)
/* D544 8000C944 8C4258B0 */  lw         $v0, %lo(D_802758B0)($v0)
/* D548 8000C948 2E030001 */  sltiu      $v1, $s0, 0x1
/* D54C 8000C94C 2C420001 */  sltiu      $v0, $v0, 0x1
/* D550 8000C950 00431025 */  or         $v0, $v0, $v1
/* D554 8000C954 10400004 */  beqz       $v0, .L8000C968
/* D558 8000C958 00000000 */   nop
/* D55C 8000C95C 3C018027 */  lui        $at, %hi(D_802758B0)
/* D560 8000C960 0C0031BA */  jal        func_8000C6E8
/* D564 8000C964 AC3058B0 */   sw        $s0, %lo(D_802758B0)($at)
.L8000C968:
/* D568 8000C968 3C018027 */  lui        $at, %hi(D_802758B0)
/* D56C 8000C96C AC3058B0 */  sw         $s0, %lo(D_802758B0)($at)
/* D570 8000C970 8FBF0014 */  lw         $ra, 0x14($sp)
/* D574 8000C974 8FB00010 */  lw         $s0, 0x10($sp)
/* D578 8000C978 03E00008 */  jr         $ra
/* D57C 8000C97C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C980
/* D580 8000C980 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D584 8000C984 00802821 */  addu       $a1, $a0, $zero
/* D588 8000C988 AFBF0010 */  sw         $ra, 0x10($sp)
/* D58C 8000C98C 3C018027 */  lui        $at, %hi(D_802758B4)
/* D590 8000C990 AC2558B4 */  sw         $a1, %lo(D_802758B4)($at)
/* D594 8000C994 0C02311B */  jal        func_8008C46C
/* D598 8000C998 24040001 */   addiu     $a0, $zero, 0x1
/* D59C 8000C99C 8FBF0010 */  lw         $ra, 0x10($sp)
/* D5A0 8000C9A0 03E00008 */  jr         $ra
/* D5A4 8000C9A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C9A8
/* D5A8 8000C9A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5AC 8000C9AC AFBF0010 */  sw         $ra, 0x10($sp)
/* D5B0 8000C9B0 0C0032B7 */  jal        func_8000CADC
/* D5B4 8000C9B4 00000000 */   nop
/* D5B8 8000C9B8 0C0031B2 */  jal        func_8000C6C8
/* D5BC 8000C9BC 00000000 */   nop
/* D5C0 8000C9C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* D5C4 8000C9C4 03E00008 */  jr         $ra
/* D5C8 8000C9C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C9CC
/* D5CC 8000C9CC 3C028027 */  lui        $v0, %hi(D_802758B4)
/* D5D0 8000C9D0 8C4258B4 */  lw         $v0, %lo(D_802758B4)($v0)
/* D5D4 8000C9D4 1040000F */  beqz       $v0, .L8000CA14
/* D5D8 8000C9D8 00000000 */   nop
/* D5DC 8000C9DC 3C05802A */  lui        $a1, %hi(D_8029E354)
/* D5E0 8000C9E0 8CA5E354 */  lw         $a1, %lo(D_8029E354)($a1)
/* D5E4 8000C9E4 10A0000B */  beqz       $a1, .L8000CA14
/* D5E8 8000C9E8 00000000 */   nop
/* D5EC 8000C9EC 8CA20008 */  lw         $v0, 0x8($a1)
/* D5F0 8000C9F0 3C03802A */  lui        $v1, %hi(D_8029E350)
/* D5F4 8000C9F4 8C63E350 */  lw         $v1, %lo(D_8029E350)($v1)
/* D5F8 8000C9F8 3C01802A */  lui        $at, %hi(D_8029E350)
/* D5FC 8000C9FC AC25E350 */  sw         $a1, %lo(D_8029E350)($at)
/* D600 8000CA00 ACA40000 */  sw         $a0, 0x0($a1)
/* D604 8000CA04 ACA60004 */  sw         $a2, 0x4($a1)
/* D608 8000CA08 3C01802A */  lui        $at, %hi(D_8029E354)
/* D60C 8000CA0C AC22E354 */  sw         $v0, %lo(D_8029E354)($at)
/* D610 8000CA10 ACA30008 */  sw         $v1, 0x8($a1)
.L8000CA14:
/* D614 8000CA14 03E00008 */  jr         $ra
/* D618 8000CA18 00000000 */   nop

glabel func_8000CA1C
/* D61C 8000CA1C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D620 8000CA20 AFB00010 */  sw         $s0, 0x10($sp)
/* D624 8000CA24 3C10802A */  lui        $s0, %hi(D_8029E350)
/* D628 8000CA28 8E10E350 */  lw         $s0, %lo(D_8029E350)($s0)
/* D62C 8000CA2C AFB3001C */  sw         $s3, 0x1C($sp)
/* D630 8000CA30 00809821 */  addu       $s3, $a0, $zero
/* D634 8000CA34 AFB40020 */  sw         $s4, 0x20($sp)
/* D638 8000CA38 00A0A021 */  addu       $s4, $a1, $zero
/* D63C 8000CA3C AFB20018 */  sw         $s2, 0x18($sp)
/* D640 8000CA40 00009021 */  addu       $s2, $zero, $zero
/* D644 8000CA44 AFBF0024 */  sw         $ra, 0x24($sp)
/* D648 8000CA48 1200001C */  beqz       $s0, .L8000CABC
/* D64C 8000CA4C AFB10014 */   sw        $s1, 0x14($sp)
.L8000CA50:
/* D650 8000CA50 12600004 */  beqz       $s3, .L8000CA64
/* D654 8000CA54 00000000 */   nop
/* D658 8000CA58 8E020004 */  lw         $v0, 0x4($s0)
/* D65C 8000CA5C 00541023 */  subu       $v0, $v0, $s4
/* D660 8000CA60 AE020004 */  sw         $v0, 0x4($s0)
.L8000CA64:
/* D664 8000CA64 8E020004 */  lw         $v0, 0x4($s0)
/* D668 8000CA68 18400004 */  blez       $v0, .L8000CA7C
/* D66C 8000CA6C 00000000 */   nop
/* D670 8000CA70 02009021 */  addu       $s2, $s0, $zero
/* D674 8000CA74 080032AD */  j          .L8000CAB4
/* D678 8000CA78 8E100008 */   lw        $s0, 0x8($s0)
.L8000CA7C:
/* D67C 8000CA7C 12400003 */  beqz       $s2, .L8000CA8C
/* D680 8000CA80 8E110008 */   lw        $s1, 0x8($s0)
/* D684 8000CA84 080032A5 */  j          .L8000CA94
/* D688 8000CA88 AE510008 */   sw        $s1, 0x8($s2)
.L8000CA8C:
/* D68C 8000CA8C 3C01802A */  lui        $at, %hi(D_8029E350)
/* D690 8000CA90 AC31E350 */  sw         $s1, %lo(D_8029E350)($at)
.L8000CA94:
/* D694 8000CA94 0C02317B */  jal        func_8008C5EC
/* D698 8000CA98 8E040000 */   lw        $a0, 0x0($s0)
/* D69C 8000CA9C 3C02802A */  lui        $v0, %hi(D_8029E354)
/* D6A0 8000CAA0 8C42E354 */  lw         $v0, %lo(D_8029E354)($v0)
/* D6A4 8000CAA4 3C01802A */  lui        $at, %hi(D_8029E354)
/* D6A8 8000CAA8 AC30E354 */  sw         $s0, %lo(D_8029E354)($at)
/* D6AC 8000CAAC AE020008 */  sw         $v0, 0x8($s0)
/* D6B0 8000CAB0 02208021 */  addu       $s0, $s1, $zero
.L8000CAB4:
/* D6B4 8000CAB4 1600FFE6 */  bnez       $s0, .L8000CA50
/* D6B8 8000CAB8 00000000 */   nop
.L8000CABC:
/* D6BC 8000CABC 8FBF0024 */  lw         $ra, 0x24($sp)
/* D6C0 8000CAC0 8FB40020 */  lw         $s4, 0x20($sp)
/* D6C4 8000CAC4 8FB3001C */  lw         $s3, 0x1C($sp)
/* D6C8 8000CAC8 8FB20018 */  lw         $s2, 0x18($sp)
/* D6CC 8000CACC 8FB10014 */  lw         $s1, 0x14($sp)
/* D6D0 8000CAD0 8FB00010 */  lw         $s0, 0x10($sp)
/* D6D4 8000CAD4 03E00008 */  jr         $ra
/* D6D8 8000CAD8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000CADC
/* D6DC 8000CADC 3C03802A */  lui        $v1, %hi(D_8029E344)
/* D6E0 8000CAE0 2463E344 */  addiu      $v1, $v1, %lo(D_8029E344)
/* D6E4 8000CAE4 2462FFF4 */  addiu      $v0, $v1, -0xC
/* D6E8 8000CAE8 3C01802A */  lui        $at, %hi(D_8029E354)
/* D6EC 8000CAEC AC23E354 */  sw         $v1, %lo(D_8029E354)($at)
/* D6F0 8000CAF0 2463FA0C */  addiu      $v1, $v1, -0x5F4
/* D6F4 8000CAF4 3C01802A */  lui        $at, %hi(D_8029E354)
/* D6F8 8000CAF8 AC22E354 */  sw         $v0, %lo(D_8029E354)($at)
/* D6FC 8000CAFC 0043102B */  sltu       $v0, $v0, $v1
/* D700 8000CB00 3C01802A */  lui        $at, %hi(D_8029E350)
/* D704 8000CB04 AC20E350 */  sw         $zero, %lo(D_8029E350)($at)
/* D708 8000CB08 3C01802A */  lui        $at, %hi(D_8029E34C)
/* D70C 8000CB0C 1440000C */  bnez       $v0, .L8000CB40
/* D710 8000CB10 AC20E34C */   sw        $zero, %lo(D_8029E34C)($at)
/* D714 8000CB14 00602021 */  addu       $a0, $v1, $zero
.L8000CB18:
/* D718 8000CB18 3C02802A */  lui        $v0, %hi(D_8029E354)
/* D71C 8000CB1C 8C42E354 */  lw         $v0, %lo(D_8029E354)($v0)
/* D720 8000CB20 2443000C */  addiu      $v1, $v0, 0xC
/* D724 8000CB24 AC430008 */  sw         $v1, 0x8($v0)
/* D728 8000CB28 2442FFF4 */  addiu      $v0, $v0, -0xC
/* D72C 8000CB2C 3C01802A */  lui        $at, %hi(D_8029E354)
/* D730 8000CB30 AC22E354 */  sw         $v0, %lo(D_8029E354)($at)
/* D734 8000CB34 0044102B */  sltu       $v0, $v0, $a0
/* D738 8000CB38 1040FFF7 */  beqz       $v0, .L8000CB18
/* D73C 8000CB3C 00000000 */   nop
.L8000CB40:
/* D740 8000CB40 3C02802A */  lui        $v0, %hi(D_8029DD50)
/* D744 8000CB44 2442DD50 */  addiu      $v0, $v0, %lo(D_8029DD50)
/* D748 8000CB48 3C01802A */  lui        $at, %hi(D_8029E354)
/* D74C 8000CB4C 03E00008 */  jr         $ra
/* D750 8000CB50 AC22E354 */   sw        $v0, %lo(D_8029E354)($at)

glabel func_8000CB54
/* D754 8000CB54 3C01800D */  lui        $at, %hi(D_800CD1F0)
/* D758 8000CB58 D422D1F0 */  ldc1       $f2, %lo(D_800CD1F0)($at)
/* D75C 8000CB5C 3C013F4C */  lui        $at, (0x3F4CCCCD >> 16)
/* D760 8000CB60 3421CCCD */  ori        $at, $at, (0x3F4CCCCD & 0xFFFF)
/* D764 8000CB64 44812000 */  mtc1       $at, $f4
/* D768 8000CB68 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* D76C 8000CB6C 44810000 */  mtc1       $at, $f0
/* D770 8000CB70 00002821 */  addu       $a1, $zero, $zero
/* D774 8000CB74 3C03800B */  lui        $v1, %hi(D_800ABA68)
/* D778 8000CB78 2463BA68 */  addiu      $v1, $v1, %lo(D_800ABA68)
/* D77C 8000CB7C 3C01800B */  lui        $at, %hi(D_800ABA58)
/* D780 8000CB80 E420BA58 */  swc1       $f0, %lo(D_800ABA58)($at)
.L8000CB84:
/* D784 8000CB84 3C01800B */  lui        $at, %hi(D_800ABA58)
/* D788 8000CB88 C420BA58 */  lwc1       $f0, %lo(D_800ABA58)($at)
/* D78C 8000CB8C 46000021 */  cvt.d.s    $f0, $f0
/* D790 8000CB90 46220032 */  c.eq.d     $f0, $f2
/* D794 8000CB94 00000000 */  nop
/* D798 8000CB98 4500000A */  bc1f       .L8000CBC4
/* D79C 8000CB9C 00000000 */   nop
/* D7A0 8000CBA0 8C620000 */  lw         $v0, 0x0($v1)
/* D7A4 8000CBA4 24420019 */  addiu      $v0, $v0, 0x19
/* D7A8 8000CBA8 14820003 */  bne        $a0, $v0, .L8000CBB8
/* D7AC 8000CBAC 24A50001 */   addiu     $a1, $a1, 0x1
/* D7B0 8000CBB0 3C01800B */  lui        $at, %hi(D_800ABA58)
/* D7B4 8000CBB4 E424BA58 */  swc1       $f4, %lo(D_800ABA58)($at)
.L8000CBB8:
/* D7B8 8000CBB8 2CA20007 */  sltiu      $v0, $a1, 0x7
/* D7BC 8000CBBC 1440FFF1 */  bnez       $v0, .L8000CB84
/* D7C0 8000CBC0 24630004 */   addiu     $v1, $v1, 0x4
.L8000CBC4:
/* D7C4 8000CBC4 03E00008 */  jr         $ra
/* D7C8 8000CBC8 00000000 */   nop
/* D7CC 8000CBCC 00000000 */  nop
