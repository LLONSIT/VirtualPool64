.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000D650
/* E250 8000D650 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E254 8000D654 AFBF0014 */  sw         $ra, 0x14($sp)
/* E258 8000D658 AFB00010 */  sw         $s0, 0x10($sp)
/* E25C 8000D65C 3C01802A */  lui        $at, %hi(D_8029E368)
/* E260 8000D660 AC20E368 */  sw         $zero, %lo(D_8029E368)($at)
/* E264 8000D664 3C01802A */  lui        $at, %hi(D_8029E364)
/* E268 8000D668 AC20E364 */  sw         $zero, %lo(D_8029E364)($at)
/* E26C 8000D66C 3C01802A */  lui        $at, %hi(D_8029E360)
/* E270 8000D670 AC20E360 */  sw         $zero, %lo(D_8029E360)($at)
/* E274 8000D674 3C01800B */  lui        $at, %hi(D_800ABAA0)
/* E278 8000D678 AC20BAA0 */  sw         $zero, %lo(D_800ABAA0)($at)
/* E27C 8000D67C 0C001139 */  jal        func_800044E4
/* E280 8000D680 00002021 */   addu      $a0, $zero, $zero
/* E284 8000D684 30421000 */  andi       $v0, $v0, 0x1000
/* E288 8000D688 1040000E */  beqz       $v0, .L8000D6C4
/* E28C 8000D68C 2404000F */   addiu     $a0, $zero, 0xF
/* E290 8000D690 3C058002 */  lui        $a1, %hi(func_8001F3B0)
/* E294 8000D694 24A5F3B0 */  addiu      $a1, $a1, %lo(func_8001F3B0)
/* E298 8000D698 00003021 */  addu       $a2, $zero, $zero
/* E29C 8000D69C 3C108001 */  lui        $s0, %hi(func_8001102C)
/* E2A0 8000D6A0 2610102C */  addiu      $s0, $s0, %lo(func_8001102C)
/* E2A4 8000D6A4 0C0043C3 */  jal        func_80010F0C
/* E2A8 8000D6A8 02003821 */   addu      $a3, $s0, $zero
/* E2AC 8000D6AC 2404000F */  addiu      $a0, $zero, 0xF
/* E2B0 8000D6B0 3C058002 */  lui        $a1, %hi(func_8001F514)
/* E2B4 8000D6B4 24A5F514 */  addiu      $a1, $a1, %lo(func_8001F514)
/* E2B8 8000D6B8 00003021 */  addu       $a2, $zero, $zero
/* E2BC 8000D6BC 0C0043C3 */  jal        func_80010F0C
/* E2C0 8000D6C0 02003821 */   addu      $a3, $s0, $zero
.L8000D6C4:
/* E2C4 8000D6C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* E2C8 8000D6C8 8FB00010 */  lw         $s0, 0x10($sp)
/* E2CC 8000D6CC 03E00008 */  jr         $ra
/* E2D0 8000D6D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000D6D4
/* E2D4 8000D6D4 3C01802A */  lui        $at, %hi(D_8029E360)
/* E2D8 8000D6D8 AC24E360 */  sw         $a0, %lo(D_8029E360)($at)
/* E2DC 8000D6DC 3C01802A */  lui        $at, %hi(D_8029E364)
/* E2E0 8000D6E0 03E00008 */  jr         $ra
/* E2E4 8000D6E4 AC25E364 */   sw        $a1, %lo(D_8029E364)($at)

glabel func_8000D6E8
/* E2E8 8000D6E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E2EC 8000D6EC AFBF0018 */  sw         $ra, 0x18($sp)
/* E2F0 8000D6F0 3C03803F */  lui        $v1, %hi(D_803ED3CC)
/* E2F4 8000D6F4 8C63D3CC */  lw         $v1, %lo(D_803ED3CC)($v1)
/* E2F8 8000D6F8 2C620013 */  sltiu      $v0, $v1, 0x13
/* E2FC 8000D6FC 10400006 */  beqz       $v0, .L8000D718
/* E300 8000D700 00031080 */   sll       $v0, $v1, 2
/* E304 8000D704 3C01800D */  lui        $at, %hi(jtbl_800CD250_main)
/* E308 8000D708 00220821 */  addu       $at, $at, $v0
/* E30C 8000D70C 8C22D250 */  lw         $v0, %lo(jtbl_800CD250_main)($at)
/* E310 8000D710 00400008 */  jr         $v0
/* E314 8000D714 00000000 */   nop
.L8000D718:
/* E318 8000D718 0C000E28 */  jal        func_800038A0
/* E31C 8000D71C 00000000 */   nop
glabel L8000D720
/* E320 8000D720 0C0042BC */  jal        func_80010AF0
/* E324 8000D724 2404FFFF */   addiu     $a0, $zero, -0x1
/* E328 8000D728 3C02802A */  lui        $v0, %hi(D_8029E368)
/* E32C 8000D72C 8C42E368 */  lw         $v0, %lo(D_8029E368)($v0)
/* E330 8000D730 14400007 */  bnez       $v0, .L8000D750
/* E334 8000D734 24020014 */   addiu     $v0, $zero, 0x14
/* E338 8000D738 0C007CBF */  jal        func_8001F2FC
/* E33C 8000D73C 00000000 */   nop
/* E340 8000D740 24020001 */  addiu      $v0, $zero, 0x1
/* E344 8000D744 3C01802A */  lui        $at, %hi(D_8029E368)
/* E348 8000D748 080035E1 */  j          .L8000D784
/* E34C 8000D74C AC22E368 */   sw        $v0, %lo(D_8029E368)($at)
.L8000D750:
/* E350 8000D750 3C03803F */  lui        $v1, %hi(D_803ED3C8)
/* E354 8000D754 8C63D3C8 */  lw         $v1, %lo(D_803ED3C8)($v1)
/* E358 8000D758 1062000A */  beq        $v1, $v0, .L8000D784
/* E35C 8000D75C 00000000 */   nop
/* E360 8000D760 3C03803F */  lui        $v1, %hi(D_803ED3DB)
/* E364 8000D764 9063D3DB */  lbu        $v1, %lo(D_803ED3DB)($v1)
/* E368 8000D768 28620004 */  slti       $v0, $v1, 0x4
/* E36C 8000D76C 10400005 */  beqz       $v0, .L8000D784
/* E370 8000D770 28620002 */   slti      $v0, $v1, 0x2
/* E374 8000D774 14400003 */  bnez       $v0, .L8000D784
/* E378 8000D778 00000000 */   nop
/* E37C 8000D77C 0C007CDA */  jal        func_8001F368
/* E380 8000D780 00000000 */   nop
.L8000D784:
/* E384 8000D784 0C001091 */  jal        osViExtendVStart
/* E388 8000D788 00002021 */   addu      $a0, $zero, $zero
/* E38C 8000D78C 0C0031E1 */  jal        func_8000C784
/* E390 8000D790 24040073 */   addiu     $a0, $zero, 0x73
/* E394 8000D794 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E398 8000D798 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E39C 8000D79C 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E3A0 8000D7A0 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E3A4 8000D7A4 3C078001 */  lui        $a3, %hi(func_8001102C)
/* E3A8 8000D7A8 24E7102C */  addiu      $a3, $a3, %lo(func_8001102C)
/* E3AC 8000D7AC 0C0043C3 */  jal        func_80010F0C
/* E3B0 8000D7B0 24040007 */   addiu     $a0, $zero, 0x7
/* E3B4 8000D7B4 24020001 */  addiu      $v0, $zero, 0x1
/* E3B8 8000D7B8 3C01803F */  lui        $at, %hi(D_803ED3CC)
/* E3BC 8000D7BC AC22D3CC */  sw         $v0, %lo(D_803ED3CC)($at)
/* E3C0 8000D7C0 0C0031E1 */  jal        func_8000C784
/* E3C4 8000D7C4 24040074 */   addiu     $a0, $zero, 0x74
/* E3C8 8000D7C8 080036AA */  j          .L8000DAA8
/* E3CC 8000D7CC 00000000 */   nop
glabel L8000D7D0
/* E3D0 8000D7D0 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E3D4 8000D7D4 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E3D8 8000D7D8 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E3DC 8000D7DC 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E3E0 8000D7E0 0800364A */  j          .L8000D928
/* E3E4 8000D7E4 2404001B */   addiu     $a0, $zero, 0x1B
glabel L8000D7E8
/* E3E8 8000D7E8 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E3EC 8000D7EC 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E3F0 8000D7F0 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E3F4 8000D7F4 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E3F8 8000D7F8 0800364A */  j          .L8000D928
/* E3FC 8000D7FC 24040023 */   addiu     $a0, $zero, 0x23
glabel L8000D800
/* E400 8000D800 0C0072C3 */  jal        func_8001CB0C
/* E404 8000D804 00000000 */   nop
/* E408 8000D808 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E40C 8000D80C 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E410 8000D810 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E414 8000D814 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E418 8000D818 0800364A */  j          .L8000D928
/* E41C 8000D81C 00002021 */   addu      $a0, $zero, $zero
glabel L8000D820
/* E420 8000D820 0C0072E6 */  jal        func_8001CB98
/* E424 8000D824 00000000 */   nop
/* E428 8000D828 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E42C 8000D82C 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E430 8000D830 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E434 8000D834 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E438 8000D838 0800364A */  j          .L8000D928
/* E43C 8000D83C 00002021 */   addu      $a0, $zero, $zero
glabel L8000D840
/* E440 8000D840 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E444 8000D844 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E448 8000D848 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E44C 8000D84C 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E450 8000D850 3C078001 */  lui        $a3, %hi(func_8001102C)
/* E454 8000D854 24E7102C */  addiu      $a3, $a3, %lo(func_8001102C)
/* E458 8000D858 0C0043C3 */  jal        func_80010F0C
/* E45C 8000D85C 24040015 */   addiu     $a0, $zero, 0x15
/* E460 8000D860 3C03803F */  lui        $v1, %hi(D_803ED3C8)
/* E464 8000D864 8C63D3C8 */  lw         $v1, %lo(D_803ED3C8)($v1)
/* E468 8000D868 24020004 */  addiu      $v0, $zero, 0x4
/* E46C 8000D86C 1462008E */  bne        $v1, $v0, .L8000DAA8
/* E470 8000D870 00000000 */   nop
/* E474 8000D874 3C01803F */  lui        $at, %hi(D_803ED3CC)
/* E478 8000D878 080036AA */  j          .L8000DAA8
/* E47C 8000D87C AC20D3CC */   sw        $zero, %lo(D_803ED3CC)($at)
glabel L8000D880
/* E480 8000D880 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E484 8000D884 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E488 8000D888 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E48C 8000D88C 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E490 8000D890 08003664 */  j          .L8000D990
/* E494 8000D894 24040020 */   addiu     $a0, $zero, 0x20
glabel L8000D898
/* E498 8000D898 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E49C 8000D89C 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E4A0 8000D8A0 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E4A4 8000D8A4 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E4A8 8000D8A8 08003664 */  j          .L8000D990
/* E4AC 8000D8AC 24040005 */   addiu     $a0, $zero, 0x5
glabel L8000D8B0
/* E4B0 8000D8B0 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E4B4 8000D8B4 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E4B8 8000D8B8 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E4BC 8000D8BC 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E4C0 8000D8C0 0800364A */  j          .L8000D928
/* E4C4 8000D8C4 24040027 */   addiu     $a0, $zero, 0x27
glabel L8000D8C8
/* E4C8 8000D8C8 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E4CC 8000D8CC 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E4D0 8000D8D0 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E4D4 8000D8D4 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E4D8 8000D8D8 08003664 */  j          .L8000D990
/* E4DC 8000D8DC 24040028 */   addiu     $a0, $zero, 0x28
glabel L8000D8E0
/* E4E0 8000D8E0 3C06800D */  lui        $a2, %hi(D_800CE22C)
/* E4E4 8000D8E4 24C6E22C */  addiu      $a2, $a2, %lo(D_800CE22C)
/* E4E8 8000D8E8 3C04802A */  lui        $a0, %hi(D_8029E360)
/* E4EC 8000D8EC 8C84E360 */  lw         $a0, %lo(D_8029E360)($a0)
/* E4F0 8000D8F0 3C05802A */  lui        $a1, %hi(D_8029E364)
/* E4F4 8000D8F4 8CA5E364 */  lw         $a1, %lo(D_8029E364)($a1)
/* E4F8 8000D8F8 00003821 */  addu       $a3, $zero, $zero
/* E4FC 8000D8FC 3C028001 */  lui        $v0, %hi(func_80010FC8)
/* E500 8000D900 24420FC8 */  addiu      $v0, $v0, %lo(func_80010FC8)
/* E504 8000D904 0C004EDF */  jal        func_80013B7C
/* E508 8000D908 AFA20010 */   sw        $v0, 0x10($sp)
/* E50C 8000D90C 080036AA */  j          .L8000DAA8
/* E510 8000D910 00000000 */   nop
glabel L8000D914
/* E514 8000D914 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E518 8000D918 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E51C 8000D91C 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E520 8000D920 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E524 8000D924 24040025 */  addiu      $a0, $zero, 0x25
.L8000D928:
/* E528 8000D928 3C078001 */  lui        $a3, %hi(func_80010FC8)
/* E52C 8000D92C 0C0043C3 */  jal        func_80010F0C
/* E530 8000D930 24E70FC8 */   addiu     $a3, $a3, %lo(func_80010FC8)
/* E534 8000D934 080036AA */  j          .L8000DAA8
/* E538 8000D938 00000000 */   nop
glabel L8000D93C
/* E53C 8000D93C 3C028001 */  lui        $v0, %hi(func_80010FC8)
/* E540 8000D940 24420FC8 */  addiu      $v0, $v0, %lo(func_80010FC8)
/* E544 8000D944 3C04800D */  lui        $a0, %hi(D_800CFE38)
/* E548 8000D948 2484FE38 */  addiu      $a0, $a0, %lo(D_800CFE38)
/* E54C 8000D94C 3C05800D */  lui        $a1, %hi(D_800CFE1C)
/* E550 8000D950 24A5FE1C */  addiu      $a1, $a1, %lo(D_800CFE1C)
/* E554 8000D954 3C06800D */  lui        $a2, %hi(D_800CFE0C)
/* E558 8000D958 24C6FE0C */  addiu      $a2, $a2, %lo(D_800CFE0C)
/* E55C 8000D95C 3C07800D */  lui        $a3, %hi(D_800CFDF8)
/* E560 8000D960 24E7FDF8 */  addiu      $a3, $a3, %lo(D_800CFDF8)
/* E564 8000D964 0C004EDF */  jal        func_80013B7C
/* E568 8000D968 AFA20010 */   sw        $v0, 0x10($sp)
/* E56C 8000D96C 1040004E */  beqz       $v0, .L8000DAA8
/* E570 8000D970 00000000 */   nop
/* E574 8000D974 080036A8 */  j          .L8000DAA0
/* E578 8000D978 2402000B */   addiu     $v0, $zero, 0xB
glabel L8000D97C
/* E57C 8000D97C 3C05802A */  lui        $a1, %hi(D_8029E360)
/* E580 8000D980 8CA5E360 */  lw         $a1, %lo(D_8029E360)($a1)
/* E584 8000D984 3C06802A */  lui        $a2, %hi(D_8029E364)
/* E588 8000D988 8CC6E364 */  lw         $a2, %lo(D_8029E364)($a2)
/* E58C 8000D98C 24040029 */  addiu      $a0, $zero, 0x29
.L8000D990:
/* E590 8000D990 3C078001 */  lui        $a3, %hi(func_8001102C)
/* E594 8000D994 0C0043C3 */  jal        func_80010F0C
/* E598 8000D998 24E7102C */   addiu     $a3, $a3, %lo(func_8001102C)
/* E59C 8000D99C 080036AA */  j          .L8000DAA8
/* E5A0 8000D9A0 00000000 */   nop
glabel L8000D9A4
/* E5A4 8000D9A4 3C028001 */  lui        $v0, %hi(func_80010FC8)
/* E5A8 8000D9A8 24420FC8 */  addiu      $v0, $v0, %lo(func_80010FC8)
/* E5AC 8000D9AC 3C04800D */  lui        $a0, %hi(D_800CFF00)
/* E5B0 8000D9B0 2484FF00 */  addiu      $a0, $a0, %lo(D_800CFF00)
/* E5B4 8000D9B4 3C05800D */  lui        $a1, %hi(D_800CFEF0)
/* E5B8 8000D9B8 24A5FEF0 */  addiu      $a1, $a1, %lo(D_800CFEF0)
/* E5BC 8000D9BC 3C06800D */  lui        $a2, %hi(D_800CFE0C)
/* E5C0 8000D9C0 24C6FE0C */  addiu      $a2, $a2, %lo(D_800CFE0C)
/* E5C4 8000D9C4 3C07800D */  lui        $a3, %hi(D_800CFDF8)
/* E5C8 8000D9C8 24E7FDF8 */  addiu      $a3, $a3, %lo(D_800CFDF8)
/* E5CC 8000D9CC 0C004EDF */  jal        func_80013B7C
/* E5D0 8000D9D0 AFA20010 */   sw        $v0, 0x10($sp)
/* E5D4 8000D9D4 50400032 */  beql       $v0, $zero, .L8000DAA0
/* E5D8 8000D9D8 2402000A */   addiu     $v0, $zero, 0xA
/* E5DC 8000D9DC 080036A8 */  j          .L8000DAA0
/* E5E0 8000D9E0 2402000B */   addiu     $v0, $zero, 0xB
glabel L8000D9E4
/* E5E4 8000D9E4 3C028001 */  lui        $v0, %hi(func_80010FC8)
/* E5E8 8000D9E8 24420FC8 */  addiu      $v0, $v0, %lo(func_80010FC8)
/* E5EC 8000D9EC 3C04800D */  lui        $a0, %hi(D_800CFF78)
/* E5F0 8000D9F0 2484FF78 */  addiu      $a0, $a0, %lo(D_800CFF78)
/* E5F4 8000D9F4 3C05800D */  lui        $a1, %hi(D_800CFF68)
/* E5F8 8000D9F8 24A5FF68 */  addiu      $a1, $a1, %lo(D_800CFF68)
/* E5FC 8000D9FC 3C06800D */  lui        $a2, %hi(D_800CFE0C)
/* E600 8000DA00 24C6FE0C */  addiu      $a2, $a2, %lo(D_800CFE0C)
/* E604 8000DA04 3C07800D */  lui        $a3, %hi(D_800CFDF8)
/* E608 8000DA08 24E7FDF8 */  addiu      $a3, $a3, %lo(D_800CFDF8)
/* E60C 8000DA0C 0C004EDF */  jal        func_80013B7C
/* E610 8000DA10 AFA20010 */   sw        $v0, 0x10($sp)
/* E614 8000DA14 10400024 */  beqz       $v0, .L8000DAA8
/* E618 8000DA18 00000000 */   nop
/* E61C 8000DA1C 080036A8 */  j          .L8000DAA0
/* E620 8000DA20 24020015 */   addiu     $v0, $zero, 0x15
glabel L8000DA24
/* E624 8000DA24 3C028001 */  lui        $v0, %hi(func_80010FC8)
/* E628 8000DA28 24420FC8 */  addiu      $v0, $v0, %lo(func_80010FC8)
/* E62C 8000DA2C 3C04800D */  lui        $a0, %hi(D_800CFFE0)
/* E630 8000DA30 2484FFE0 */  addiu      $a0, $a0, %lo(D_800CFFE0)
/* E634 8000DA34 3C05800D */  lui        $a1, %hi(D_800CFFD8)
/* E638 8000DA38 24A5FFD8 */  addiu      $a1, $a1, %lo(D_800CFFD8)
/* E63C 8000DA3C 3C06800D */  lui        $a2, %hi(D_800CFFC8)
/* E640 8000DA40 24C6FFC8 */  addiu      $a2, $a2, %lo(D_800CFFC8)
/* E644 8000DA44 3C07800D */  lui        $a3, %hi(D_800CFFBC)
/* E648 8000DA48 24E7FFBC */  addiu      $a3, $a3, %lo(D_800CFFBC)
/* E64C 8000DA4C 0C004EDF */  jal        func_80013B7C
/* E650 8000DA50 AFA20010 */   sw        $v0, 0x10($sp)
/* E654 8000DA54 10400014 */  beqz       $v0, .L8000DAA8
/* E658 8000DA58 00000000 */   nop
/* E65C 8000DA5C 080036A8 */  j          .L8000DAA0
/* E660 8000DA60 2402000A */   addiu     $v0, $zero, 0xA
glabel L8000DA64
/* E664 8000DA64 3C028001 */  lui        $v0, %hi(func_80010FC8)
/* E668 8000DA68 24420FC8 */  addiu      $v0, $v0, %lo(func_80010FC8)
/* E66C 8000DA6C 3C04800D */  lui        $a0, %hi(D_800D0040)
/* E670 8000DA70 24840040 */  addiu      $a0, $a0, %lo(D_800D0040)
/* E674 8000DA74 3C05800D */  lui        $a1, %hi(D_800D0038)
/* E678 8000DA78 24A50038 */  addiu      $a1, $a1, %lo(D_800D0038)
/* E67C 8000DA7C 3C06800D */  lui        $a2, %hi(D_800D00F0)
/* E680 8000DA80 24C600F0 */  addiu      $a2, $a2, %lo(D_800D00F0)
/* E684 8000DA84 3C07800D */  lui        $a3, %hi(D_800D0100)
/* E688 8000DA88 24E70100 */  addiu      $a3, $a3, %lo(D_800D0100)
/* E68C 8000DA8C 0C004EDF */  jal        func_80013B7C
/* E690 8000DA90 AFA20010 */   sw        $v0, 0x10($sp)
/* E694 8000DA94 10400004 */  beqz       $v0, .L8000DAA8
/* E698 8000DA98 00000000 */   nop
/* E69C 8000DA9C 24020007 */  addiu      $v0, $zero, 0x7
.L8000DAA0:
/* E6A0 8000DAA0 3C01803F */  lui        $at, %hi(D_803ED3C8)
/* E6A4 8000DAA4 AC22D3C8 */  sw         $v0, %lo(D_803ED3C8)($at)
.L8000DAA8:
/* E6A8 8000DAA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* E6AC 8000DAAC 24020002 */  addiu      $v0, $zero, 0x2
/* E6B0 8000DAB0 03E00008 */  jr         $ra
/* E6B4 8000DAB4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000DAB8
/* E6B8 8000DAB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E6BC 8000DABC AFB00010 */  sw         $s0, 0x10($sp)
/* E6C0 8000DAC0 00808021 */  addu       $s0, $a0, $zero
/* E6C4 8000DAC4 1600000A */  bnez       $s0, .L8000DAF0
/* E6C8 8000DAC8 AFBF0014 */   sw        $ra, 0x14($sp)
/* E6CC 8000DACC 2404000F */  addiu      $a0, $zero, 0xF
/* E6D0 8000DAD0 3C058002 */  lui        $a1, %hi(func_8001F3B0)
/* E6D4 8000DAD4 24A5F3B0 */  addiu      $a1, $a1, %lo(func_8001F3B0)
/* E6D8 8000DAD8 3C078001 */  lui        $a3, %hi(func_80010FC8)
/* E6DC 8000DADC 24E70FC8 */  addiu      $a3, $a3, %lo(func_80010FC8)
/* E6E0 8000DAE0 0C0043C3 */  jal        func_80010F0C
/* E6E4 8000DAE4 00003021 */   addu      $a2, $zero, $zero
/* E6E8 8000DAE8 080036C9 */  j          .L8000DB24
/* E6EC 8000DAEC 24020001 */   addiu     $v0, $zero, 0x1
.L8000DAF0:
/* E6F0 8000DAF0 0C0042B9 */  jal        func_80010AE4
/* E6F4 8000DAF4 00000000 */   nop
/* E6F8 8000DAF8 24030001 */  addiu      $v1, $zero, 0x1
/* E6FC 8000DAFC 14430004 */  bne        $v0, $v1, .L8000DB10
/* E700 8000DB00 24040013 */   addiu     $a0, $zero, 0x13
/* E704 8000DB04 0C0042BC */  jal        func_80010AF0
/* E708 8000DB08 00002021 */   addu      $a0, $zero, $zero
/* E70C 8000DB0C 24040013 */  addiu      $a0, $zero, 0x13
.L8000DB10:
/* E710 8000DB10 02002821 */  addu       $a1, $s0, $zero
/* E714 8000DB14 3C078001 */  lui        $a3, %hi(func_80010FC8)
/* E718 8000DB18 24E70FC8 */  addiu      $a3, $a3, %lo(func_80010FC8)
/* E71C 8000DB1C 0C0043C3 */  jal        func_80010F0C
/* E720 8000DB20 00003021 */   addu      $a2, $zero, $zero
.L8000DB24:
/* E724 8000DB24 8FBF0014 */  lw         $ra, 0x14($sp)
/* E728 8000DB28 8FB00010 */  lw         $s0, 0x10($sp)
/* E72C 8000DB2C 03E00008 */  jr         $ra
/* E730 8000DB30 27BD0018 */   addiu     $sp, $sp, 0x18
/* E734 8000DB34 00000000 */  nop
/* E738 8000DB38 00000000 */  nop
/* E73C 8000DB3C 00000000 */  nop
