.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8007D540
/* 7E140 8007D540 3C01800D */  lui        $at, %hi(D_800D6210)
/* 7E144 8007D544 D4206210 */  ldc1       $f0, %lo(D_800D6210)($at)
/* 7E148 8007D548 3C01802C */  lui        $at, %hi(D_802C6080)
/* 7E14C 8007D54C D4246080 */  ldc1       $f4, %lo(D_802C6080)($at)
/* 7E150 8007D550 3C01800D */  lui        $at, %hi(D_800D6218)
/* 7E154 8007D554 D4226218 */  ldc1       $f2, %lo(D_800D6218)($at)
/* 7E158 8007D558 3C01802C */  lui        $at, %hi(D_802C6078)
/* 7E15C 8007D55C D4286078 */  ldc1       $f8, %lo(D_802C6078)($at)
/* 7E160 8007D560 3C01800D */  lui        $at, %hi(D_800D6220)
/* 7E164 8007D564 D4266220 */  ldc1       $f6, %lo(D_800D6220)($at)
/* 7E168 8007D568 3C01800D */  lui        $at, %hi(D_800D6228)
/* 7E16C 8007D56C D42A6228 */  ldc1       $f10, %lo(D_800D6228)($at)
/* 7E170 8007D570 3C01800D */  lui        $at, %hi(D_800D6230)
/* 7E174 8007D574 D42E6230 */  ldc1       $f14, %lo(D_800D6230)($at)
/* 7E178 8007D578 00002021 */  addu       $a0, $zero, $zero
/* 7E17C 8007D57C 00001821 */  addu       $v1, $zero, $zero
/* 7E180 8007D580 3C01802F */  lui        $at, %hi(D_802F0930)
/* 7E184 8007D584 AC200930 */  sw         $zero, %lo(D_802F0930)($at)
/* 7E188 8007D588 3C01802F */  lui        $at, %hi(D_802F0934)
/* 7E18C 8007D58C AC200934 */  sw         $zero, %lo(D_802F0934)($at)
/* 7E190 8007D590 3C01802F */  lui        $at, %hi(D_802F0948)
/* 7E194 8007D594 AC200948 */  sw         $zero, %lo(D_802F0948)($at)
/* 7E198 8007D598 3C01802F */  lui        $at, %hi(D_802F094C)
/* 7E19C 8007D59C AC20094C */  sw         $zero, %lo(D_802F094C)($at)
/* 7E1A0 8007D5A0 3C01802F */  lui        $at, %hi(D_802F0960)
/* 7E1A4 8007D5A4 AC200960 */  sw         $zero, %lo(D_802F0960)($at)
/* 7E1A8 8007D5A8 3C01802F */  lui        $at, %hi(D_802F0964)
/* 7E1AC 8007D5AC AC200964 */  sw         $zero, %lo(D_802F0964)($at)
/* 7E1B0 8007D5B0 3C01802F */  lui        $at, %hi(D_802F0978)
/* 7E1B4 8007D5B4 AC200978 */  sw         $zero, %lo(D_802F0978)($at)
/* 7E1B8 8007D5B8 3C01802F */  lui        $at, %hi(D_802F097C)
/* 7E1BC 8007D5BC AC20097C */  sw         $zero, %lo(D_802F097C)($at)
/* 7E1C0 8007D5C0 3C01802F */  lui        $at, %hi(D_802F0990)
/* 7E1C4 8007D5C4 AC200990 */  sw         $zero, %lo(D_802F0990)($at)
/* 7E1C8 8007D5C8 3C01802F */  lui        $at, %hi(D_802F0994)
/* 7E1CC 8007D5CC AC200994 */  sw         $zero, %lo(D_802F0994)($at)
/* 7E1D0 8007D5D0 3C01802F */  lui        $at, %hi(D_802F09A8)
/* 7E1D4 8007D5D4 AC2009A8 */  sw         $zero, %lo(D_802F09A8)($at)
/* 7E1D8 8007D5D8 3C01802F */  lui        $at, %hi(D_802F09AC)
/* 7E1DC 8007D5DC AC2009AC */  sw         $zero, %lo(D_802F09AC)($at)
/* 7E1E0 8007D5E0 3C01802F */  lui        $at, %hi(D_802F09C0)
/* 7E1E4 8007D5E4 AC2009C0 */  sw         $zero, %lo(D_802F09C0)($at)
/* 7E1E8 8007D5E8 3C01802F */  lui        $at, %hi(D_802F09C4)
/* 7E1EC 8007D5EC AC2009C4 */  sw         $zero, %lo(D_802F09C4)($at)
/* 7E1F0 8007D5F0 3C01802F */  lui        $at, %hi(D_802F09D8)
/* 7E1F4 8007D5F4 AC2009D8 */  sw         $zero, %lo(D_802F09D8)($at)
/* 7E1F8 8007D5F8 3C01802F */  lui        $at, %hi(D_802F09DC)
/* 7E1FC 8007D5FC AC2009DC */  sw         $zero, %lo(D_802F09DC)($at)
/* 7E200 8007D600 3C01802F */  lui        $at, %hi(D_802F09F0)
/* 7E204 8007D604 AC2009F0 */  sw         $zero, %lo(D_802F09F0)($at)
/* 7E208 8007D608 3C01802F */  lui        $at, %hi(D_802F09F4)
/* 7E20C 8007D60C AC2009F4 */  sw         $zero, %lo(D_802F09F4)($at)
/* 7E210 8007D610 46264300 */  add.d      $f12, $f8, $f6
/* 7E214 8007D614 3C01802F */  lui        $at, %hi(D_802F0928)
/* 7E218 8007D618 F4200928 */  sdc1       $f0, %lo(D_802F0928)($at)
/* 7E21C 8007D61C 3C01802F */  lui        $at, %hi(D_802F0940)
/* 7E220 8007D620 F4200940 */  sdc1       $f0, %lo(D_802F0940)($at)
/* 7E224 8007D624 3C01802F */  lui        $at, %hi(D_802F0988)
/* 7E228 8007D628 F4200988 */  sdc1       $f0, %lo(D_802F0988)($at)
/* 7E22C 8007D62C 3C01802F */  lui        $at, %hi(D_802F09B8)
/* 7E230 8007D630 F42009B8 */  sdc1       $f0, %lo(D_802F09B8)($at)
/* 7E234 8007D634 46204000 */  add.d      $f0, $f8, $f0
/* 7E238 8007D638 3C01802F */  lui        $at, %hi(D_802F0A08)
/* 7E23C 8007D63C AC200A08 */  sw         $zero, %lo(D_802F0A08)($at)
/* 7E240 8007D640 3C01802F */  lui        $at, %hi(D_802F0A0C)
/* 7E244 8007D644 AC200A0C */  sw         $zero, %lo(D_802F0A0C)($at)
/* 7E248 8007D648 3C01802F */  lui        $at, %hi(D_802F0938)
/* 7E24C 8007D64C F4240938 */  sdc1       $f4, %lo(D_802F0938)($at)
/* 7E250 8007D650 3C01802F */  lui        $at, %hi(D_802F0968)
/* 7E254 8007D654 F4240968 */  sdc1       $f4, %lo(D_802F0968)($at)
/* 7E258 8007D658 46202107 */  neg.d      $f4, $f4
/* 7E25C 8007D65C 3C01802F */  lui        $at, %hi(D_802F09B0)
/* 7E260 8007D660 F42609B0 */  sdc1       $f6, %lo(D_802F09B0)($at)
/* 7E264 8007D664 3C01802F */  lui        $at, %hi(D_802F0A10)
/* 7E268 8007D668 F4260A10 */  sdc1       $f6, %lo(D_802F0A10)($at)
/* 7E26C 8007D66C 46285181 */  sub.d      $f6, $f10, $f8
/* 7E270 8007D670 3C01802F */  lui        $at, %hi(D_802F0958)
/* 7E274 8007D674 F4220958 */  sdc1       $f2, %lo(D_802F0958)($at)
/* 7E278 8007D678 3C01802F */  lui        $at, %hi(D_802F0970)
/* 7E27C 8007D67C F4220970 */  sdc1       $f2, %lo(D_802F0970)($at)
/* 7E280 8007D680 3C01802F */  lui        $at, %hi(D_802F09E8)
/* 7E284 8007D684 F42209E8 */  sdc1       $f2, %lo(D_802F09E8)($at)
/* 7E288 8007D688 3C01802F */  lui        $at, %hi(D_802F0A18)
/* 7E28C 8007D68C F4220A18 */  sdc1       $f2, %lo(D_802F0A18)($at)
/* 7E290 8007D690 46281081 */  sub.d      $f2, $f2, $f8
/* 7E294 8007D694 3C01802F */  lui        $at, %hi(D_802F09E0)
/* 7E298 8007D698 F42A09E0 */  sdc1       $f10, %lo(D_802F09E0)($at)
/* 7E29C 8007D69C 3C01802F */  lui        $at, %hi(D_802F0950)
/* 7E2A0 8007D6A0 F4240950 */  sdc1       $f4, %lo(D_802F0950)($at)
/* 7E2A4 8007D6A4 3C01802F */  lui        $at, %hi(D_802F0980)
/* 7E2A8 8007D6A8 F4240980 */  sdc1       $f4, %lo(D_802F0980)($at)
/* 7E2AC 8007D6AC 3C01802F */  lui        $at, %hi(D_802F0998)
/* 7E2B0 8007D6B0 F42C0998 */  sdc1       $f12, %lo(D_802F0998)($at)
/* 7E2B4 8007D6B4 3C01802F */  lui        $at, %hi(D_802F09A0)
/* 7E2B8 8007D6B8 F42009A0 */  sdc1       $f0, %lo(D_802F09A0)($at)
/* 7E2BC 8007D6BC 3C01802F */  lui        $at, %hi(D_802F09C8)
/* 7E2C0 8007D6C0 F42609C8 */  sdc1       $f6, %lo(D_802F09C8)($at)
/* 7E2C4 8007D6C4 3C01802F */  lui        $at, %hi(D_802F09D0)
/* 7E2C8 8007D6C8 F42009D0 */  sdc1       $f0, %lo(D_802F09D0)($at)
/* 7E2CC 8007D6CC 3C01802F */  lui        $at, %hi(D_802F09F8)
/* 7E2D0 8007D6D0 F42C09F8 */  sdc1       $f12, %lo(D_802F09F8)($at)
/* 7E2D4 8007D6D4 3C01802F */  lui        $at, %hi(D_802F0A00)
/* 7E2D8 8007D6D8 F4220A00 */  sdc1       $f2, %lo(D_802F0A00)($at)
/* 7E2DC 8007D6DC 3C01802F */  lui        $at, %hi(D_802F0A20)
/* 7E2E0 8007D6E0 AC200A20 */  sw         $zero, %lo(D_802F0A20)($at)
/* 7E2E4 8007D6E4 3C01802F */  lui        $at, %hi(D_802F0A24)
/* 7E2E8 8007D6E8 AC200A24 */  sw         $zero, %lo(D_802F0A24)($at)
/* 7E2EC 8007D6EC 3C01802F */  lui        $at, %hi(D_802F0A28)
/* 7E2F0 8007D6F0 F4260A28 */  sdc1       $f6, %lo(D_802F0A28)($at)
/* 7E2F4 8007D6F4 3C01802F */  lui        $at, %hi(D_802F0A30)
/* 7E2F8 8007D6F8 F4220A30 */  sdc1       $f2, %lo(D_802F0A30)($at)
/* 7E2FC 8007D6FC 3C01802F */  lui        $at, %hi(D_802F0A38)
/* 7E300 8007D700 AC200A38 */  sw         $zero, %lo(D_802F0A38)($at)
/* 7E304 8007D704 3C01802F */  lui        $at, %hi(D_802F0A3C)
/* 7E308 8007D708 AC200A3C */  sw         $zero, %lo(D_802F0A3C)($at)
/* 7E30C 8007D70C 3C01802F */  lui        $at, %hi(D_802F0A40)
/* 7E310 8007D710 F42A0A40 */  sdc1       $f10, %lo(D_802F0A40)($at)
/* 7E314 8007D714 3C01802D */  lui        $at, %hi(D_802D2638)
/* 7E318 8007D718 F42E2638 */  sdc1       $f14, %lo(D_802D2638)($at)
.L8007D71C:
/* 7E31C 8007D71C 3C01800C */  lui        $at, %hi(D_800C6D30)
/* 7E320 8007D720 00230821 */  addu       $at, $at, $v1
/* 7E324 8007D724 D4246D30 */  ldc1       $f4, %lo(D_800C6D30)($at)
/* 7E328 8007D728 3C01802F */  lui        $at, %hi(D_802F0928)
/* 7E32C 8007D72C 00230821 */  addu       $at, $at, $v1
/* 7E330 8007D730 D4200928 */  ldc1       $f0, %lo(D_802F0928)($at)
/* 7E334 8007D734 3C01800C */  lui        $at, %hi(D_800C6D40)
/* 7E338 8007D738 00230821 */  addu       $at, $at, $v1
/* 7E33C 8007D73C D4226D40 */  ldc1       $f2, %lo(D_800C6D40)($at)
/* 7E340 8007D740 46202100 */  add.d      $f4, $f4, $f0
/* 7E344 8007D744 3C01802F */  lui        $at, %hi(D_802F0938)
/* 7E348 8007D748 00230821 */  addu       $at, $at, $v1
/* 7E34C 8007D74C D4200938 */  ldc1       $f0, %lo(D_802F0938)($at)
/* 7E350 8007D750 24840001 */  addiu      $a0, $a0, 0x1
/* 7E354 8007D754 46201080 */  add.d      $f2, $f2, $f0
/* 7E358 8007D758 2882000C */  slti       $v0, $a0, 0xC
/* 7E35C 8007D75C 3C01803F */  lui        $at, %hi(D_803EE900)
/* 7E360 8007D760 00230821 */  addu       $at, $at, $v1
/* 7E364 8007D764 AC20E900 */  sw         $zero, %lo(D_803EE900)($at)
/* 7E368 8007D768 3C01803F */  lui        $at, %hi(D_803EE904)
/* 7E36C 8007D76C 00230821 */  addu       $at, $at, $v1
/* 7E370 8007D770 AC20E904 */  sw         $zero, %lo(D_803EE904)($at)
/* 7E374 8007D774 3C01803F */  lui        $at, %hi(D_803EE8F8)
/* 7E378 8007D778 00230821 */  addu       $at, $at, $v1
/* 7E37C 8007D77C F424E8F8 */  sdc1       $f4, %lo(D_803EE8F8)($at)
/* 7E380 8007D780 3C01803F */  lui        $at, %hi(D_803EE908)
/* 7E384 8007D784 00230821 */  addu       $at, $at, $v1
/* 7E388 8007D788 F422E908 */  sdc1       $f2, %lo(D_803EE908)($at)
/* 7E38C 8007D78C 1440FFE3 */  bnez       $v0, .L8007D71C
/* 7E390 8007D790 24630018 */   addiu     $v1, $v1, 0x18
/* 7E394 8007D794 03E00008 */  jr         $ra
/* 7E398 8007D798 00000000 */   nop

glabel func_8007D79C
/* 7E39C 8007D79C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7E3A0 8007D7A0 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 7E3A4 8007D7A4 4480A000 */  mtc1       $zero, $f20
/* 7E3A8 8007D7A8 4480A800 */  mtc1       $zero, $f21
/* 7E3AC 8007D7AC F7B60038 */  sdc1       $f22, 0x38($sp)
/* 7E3B0 8007D7B0 3C01800D */  lui        $at, %hi(D_800D6238)
/* 7E3B4 8007D7B4 D4366238 */  ldc1       $f22, %lo(D_800D6238)($at)
/* 7E3B8 8007D7B8 AFB00020 */  sw         $s0, 0x20($sp)
/* 7E3BC 8007D7BC 3C10802F */  lui        $s0, %hi(D_802F2160)
/* 7E3C0 8007D7C0 26102160 */  addiu      $s0, $s0, %lo(D_802F2160)
/* 7E3C4 8007D7C4 AFB10024 */  sw         $s1, 0x24($sp)
/* 7E3C8 8007D7C8 00008821 */  addu       $s1, $zero, $zero
/* 7E3CC 8007D7CC AFBF0028 */  sw         $ra, 0x28($sp)
.L8007D7D0:
/* 7E3D0 8007D7D0 4620A306 */  mov.d      $f12, $f20
/* 7E3D4 8007D7D4 0C022C03 */  jal        func_8008B00C
/* 7E3D8 8007D7D8 27A60010 */   addiu     $a2, $sp, 0x10
/* 7E3DC 8007D7DC D7A00018 */  ldc1       $f0, 0x18($sp)
/* 7E3E0 8007D7E0 26310001 */  addiu      $s1, $s1, 0x1
/* 7E3E4 8007D7E4 2A220014 */  slti       $v0, $s1, 0x14
/* 7E3E8 8007D7E8 46200020 */  cvt.s.d    $f0, $f0
/* 7E3EC 8007D7EC E6000000 */  swc1       $f0, 0x0($s0)
/* 7E3F0 8007D7F0 D7A00010 */  ldc1       $f0, 0x10($sp)
/* 7E3F4 8007D7F4 4636A500 */  add.d      $f20, $f20, $f22
/* 7E3F8 8007D7F8 26100004 */  addiu      $s0, $s0, 0x4
/* 7E3FC 8007D7FC 46200020 */  cvt.s.d    $f0, $f0
/* 7E400 8007D800 E6000000 */  swc1       $f0, 0x0($s0)
/* 7E404 8007D804 1440FFF2 */  bnez       $v0, .L8007D7D0
/* 7E408 8007D808 26100004 */   addiu     $s0, $s0, 0x4
/* 7E40C 8007D80C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 7E410 8007D810 8FB10024 */  lw         $s1, 0x24($sp)
/* 7E414 8007D814 8FB00020 */  lw         $s0, 0x20($sp)
/* 7E418 8007D818 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 7E41C 8007D81C D7B40030 */  ldc1       $f20, 0x30($sp)
/* 7E420 8007D820 03E00008 */  jr         $ra
/* 7E424 8007D824 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8007D828
/* 7E428 8007D828 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 7E42C 8007D82C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 7E430 8007D830 3C01800D */  lui        $at, %hi(D_800D6240)
/* 7E434 8007D834 D4346240 */  ldc1       $f20, %lo(D_800D6240)($at)
/* 7E438 8007D838 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 7E43C 8007D83C 3C01800D */  lui        $at, %hi(D_800D6248)
/* 7E440 8007D840 D4386248 */  ldc1       $f24, %lo(D_800D6248)($at)
/* 7E444 8007D844 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 7E448 8007D848 3C01800D */  lui        $at, %hi(D_800D6250)
/* 7E44C 8007D84C D4366250 */  ldc1       $f22, %lo(D_800D6250)($at)
/* 7E450 8007D850 F7BC0050 */  sdc1       $f28, 0x50($sp)
/* 7E454 8007D854 3C01800D */  lui        $at, %hi(D_800D6258)
/* 7E458 8007D858 D43C6258 */  ldc1       $f28, %lo(D_800D6258)($at)
/* 7E45C 8007D85C F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 7E460 8007D860 3C01800D */  lui        $at, %hi(D_800D6260)
/* 7E464 8007D864 D43A6260 */  ldc1       $f26, %lo(D_800D6260)($at)
/* 7E468 8007D868 AFB00020 */  sw         $s0, 0x20($sp)
/* 7E46C 8007D86C 3C10802D */  lui        $s0, %hi(D_802D2E78)
/* 7E470 8007D870 26102E78 */  addiu      $s0, $s0, %lo(D_802D2E78)
/* 7E474 8007D874 AFB10024 */  sw         $s1, 0x24($sp)
/* 7E478 8007D878 00008821 */  addu       $s1, $zero, $zero
/* 7E47C 8007D87C AFBF0028 */  sw         $ra, 0x28($sp)
.L8007D880:
/* 7E480 8007D880 4620A306 */  mov.d      $f12, $f20
/* 7E484 8007D884 0C022C03 */  jal        func_8008B00C
/* 7E488 8007D888 27A60010 */   addiu     $a2, $sp, 0x10
/* 7E48C 8007D88C D7A00018 */  ldc1       $f0, 0x18($sp)
/* 7E490 8007D890 46380002 */  mul.d      $f0, $f0, $f24
/* 7E494 8007D894 46360003 */  div.d      $f0, $f0, $f22
/* 7E498 8007D898 F6000000 */  sdc1       $f0, 0x0($s0)
/* 7E49C 8007D89C D7A00010 */  ldc1       $f0, 0x10($sp)
/* 7E4A0 8007D8A0 46380002 */  mul.d      $f0, $f0, $f24
/* 7E4A4 8007D8A4 46360003 */  div.d      $f0, $f0, $f22
/* 7E4A8 8007D8A8 463C0000 */  add.d      $f0, $f0, $f28
/* 7E4AC 8007D8AC 26310001 */  addiu      $s1, $s1, 0x1
/* 7E4B0 8007D8B0 2A220014 */  slti       $v0, $s1, 0x14
/* 7E4B4 8007D8B4 463AA500 */  add.d      $f20, $f20, $f26
/* 7E4B8 8007D8B8 26100008 */  addiu      $s0, $s0, 0x8
/* 7E4BC 8007D8BC F6000000 */  sdc1       $f0, 0x0($s0)
/* 7E4C0 8007D8C0 1440FFEF */  bnez       $v0, .L8007D880
/* 7E4C4 8007D8C4 26100008 */   addiu     $s0, $s0, 0x8
/* 7E4C8 8007D8C8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 7E4CC 8007D8CC 8FB10024 */  lw         $s1, 0x24($sp)
/* 7E4D0 8007D8D0 8FB00020 */  lw         $s0, 0x20($sp)
/* 7E4D4 8007D8D4 D7BC0050 */  ldc1       $f28, 0x50($sp)
/* 7E4D8 8007D8D8 D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 7E4DC 8007D8DC D7B80040 */  ldc1       $f24, 0x40($sp)
/* 7E4E0 8007D8E0 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 7E4E4 8007D8E4 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 7E4E8 8007D8E8 03E00008 */  jr         $ra
/* 7E4EC 8007D8EC 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8007D8F0
/* 7E4F0 8007D8F0 D4820008 */  ldc1       $f2, 0x8($a0)
/* 7E4F4 8007D8F4 3C01800D */  lui        $at, %hi(D_800D6268)
/* 7E4F8 8007D8F8 D4206268 */  ldc1       $f0, %lo(D_800D6268)($at)
/* 7E4FC 8007D8FC 4622003C */  c.lt.d     $f0, $f2
/* 7E500 8007D900 00000000 */  nop
/* 7E504 8007D904 00000000 */  nop
/* 7E508 8007D908 45000007 */  bc1f       .L8007D928
/* 7E50C 8007D90C 27BDFFF0 */   addiu     $sp, $sp, -0x10
/* 7E510 8007D910 3C01800D */  lui        $at, %hi(D_800D6270)
/* 7E514 8007D914 D4206270 */  ldc1       $f0, %lo(D_800D6270)($at)
/* 7E518 8007D918 46201080 */  add.d      $f2, $f2, $f0
/* 7E51C 8007D91C 46220003 */  div.d      $f0, $f0, $f2
/* 7E520 8007D920 0801F64D */  j          .L8007D934
/* 7E524 8007D924 46200120 */   cvt.s.d   $f4, $f0
.L8007D928:
/* 7E528 8007D928 3C013FE6 */  lui        $at, (0x3FE66666 >> 16)
/* 7E52C 8007D92C 34216666 */  ori        $at, $at, (0x3FE66666 & 0xFFFF)
/* 7E530 8007D930 44812000 */  mtc1       $at, $f4
.L8007D934:
/* 7E534 8007D934 D4820000 */  ldc1       $f2, 0x0($a0)
/* 7E538 8007D938 462010A0 */  cvt.s.d    $f2, $f2
/* 7E53C 8007D93C E7A20000 */  swc1       $f2, 0x0($sp)
/* 7E540 8007D940 D4800008 */  ldc1       $f0, 0x8($a0)
/* 7E544 8007D944 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7E548 8007D948 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7E54C 8007D94C 3C02802B */  lui        $v0, %hi(D_802B5BC0)
/* 7E550 8007D950 24425BC0 */  addiu      $v0, $v0, %lo(D_802B5BC0)
/* 7E554 8007D954 46200020 */  cvt.s.d    $f0, $f0
/* 7E558 8007D958 E7A00004 */  swc1       $f0, 0x4($sp)
/* 7E55C 8007D95C D4800010 */  ldc1       $f0, 0x10($a0)
/* 7E560 8007D960 000318C0 */  sll        $v1, $v1, 3
/* 7E564 8007D964 00621821 */  addu       $v1, $v1, $v0
/* 7E568 8007D968 46200020 */  cvt.s.d    $f0, $f0
/* 7E56C 8007D96C E7A00008 */  swc1       $f0, 0x8($sp)
/* 7E570 8007D970 E4620000 */  swc1       $f2, 0x0($v1)
/* 7E574 8007D974 C7A00008 */  lwc1       $f0, 0x8($sp)
/* 7E578 8007D978 3C02802F */  lui        $v0, %hi(D_802F2160)
/* 7E57C 8007D97C 24422160 */  addiu      $v0, $v0, %lo(D_802F2160)
/* 7E580 8007D980 24040014 */  addiu      $a0, $zero, 0x14
/* 7E584 8007D984 E4600004 */  swc1       $f0, 0x4($v1)
.L8007D988:
/* 7E588 8007D988 C4420000 */  lwc1       $f2, 0x0($v0)
/* 7E58C 8007D98C 46022082 */  mul.s      $f2, $f4, $f2
/* 7E590 8007D990 C7A00000 */  lwc1       $f0, 0x0($sp)
/* 7E594 8007D994 46001080 */  add.s      $f2, $f2, $f0
/* 7E598 8007D998 24630008 */  addiu      $v1, $v1, 0x8
/* 7E59C 8007D99C 24420004 */  addiu      $v0, $v0, 0x4
/* 7E5A0 8007D9A0 E4620000 */  swc1       $f2, 0x0($v1)
/* 7E5A4 8007D9A4 C4420000 */  lwc1       $f2, 0x0($v0)
/* 7E5A8 8007D9A8 46022082 */  mul.s      $f2, $f4, $f2
/* 7E5AC 8007D9AC C7A00008 */  lwc1       $f0, 0x8($sp)
/* 7E5B0 8007D9B0 46001080 */  add.s      $f2, $f2, $f0
/* 7E5B4 8007D9B4 2484FFFF */  addiu      $a0, $a0, -0x1
/* 7E5B8 8007D9B8 24420004 */  addiu      $v0, $v0, 0x4
/* 7E5BC 8007D9BC 1480FFF2 */  bnez       $a0, .L8007D988
/* 7E5C0 8007D9C0 E4620004 */   swc1      $f2, 0x4($v1)
/* 7E5C4 8007D9C4 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7E5C8 8007D9C8 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7E5CC 8007D9CC 24420015 */  addiu      $v0, $v0, 0x15
/* 7E5D0 8007D9D0 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7E5D4 8007D9D4 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7E5D8 8007D9D8 03E00008 */  jr         $ra
/* 7E5DC 8007D9DC 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8007D9E0
/* 7E5E0 8007D9E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7E5E4 8007D9E4 AFB20018 */  sw         $s2, 0x18($sp)
/* 7E5E8 8007D9E8 24120010 */  addiu      $s2, $zero, 0x10
/* 7E5EC 8007D9EC AFB10014 */  sw         $s1, 0x14($sp)
/* 7E5F0 8007D9F0 3C118031 */  lui        $s1, %hi(D_80312AB0)
/* 7E5F4 8007D9F4 26312AB0 */  addiu      $s1, $s1, %lo(D_80312AB0)
/* 7E5F8 8007D9F8 AFB40020 */  sw         $s4, 0x20($sp)
/* 7E5FC 8007D9FC 24140010 */  addiu      $s4, $zero, 0x10
/* 7E600 8007DA00 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7E604 8007DA04 02209821 */  addu       $s3, $s1, $zero
/* 7E608 8007DA08 AFB00010 */  sw         $s0, 0x10($sp)
/* 7E60C 8007DA0C 26300010 */  addiu      $s0, $s1, 0x10
/* 7E610 8007DA10 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7E614 8007DA14 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7E618 8007DA18 AC207BC0 */  sw         $zero, %lo(D_802B7BC0)($at)
.L8007DA1C:
/* 7E61C 8007DA1C 8202001A */  lb         $v0, 0x1A($s0)
/* 7E620 8007DA20 1054000F */  beq        $v0, $s4, .L8007DA60
/* 7E624 8007DA24 02331023 */   subu      $v0, $s1, $s3
/* 7E628 8007DA28 00022880 */  sll        $a1, $v0, 2
/* 7E62C 8007DA2C 00A22821 */  addu       $a1, $a1, $v0
/* 7E630 8007DA30 00051100 */  sll        $v0, $a1, 4
/* 7E634 8007DA34 00A22821 */  addu       $a1, $a1, $v0
/* 7E638 8007DA38 00051200 */  sll        $v0, $a1, 8
/* 7E63C 8007DA3C 00A22821 */  addu       $a1, $a1, $v0
/* 7E640 8007DA40 00051400 */  sll        $v0, $a1, 16
/* 7E644 8007DA44 00A22821 */  addu       $a1, $a1, $v0
/* 7E648 8007DA48 00052823 */  negu       $a1, $a1
/* 7E64C 8007DA4C 02002021 */  addu       $a0, $s0, $zero
/* 7E650 8007DA50 0C01F63C */  jal        func_8007D8F0
/* 7E654 8007DA54 00052903 */   sra       $a1, $a1, 4
/* 7E658 8007DA58 0801F69E */  j          .L8007DA78
/* 7E65C 8007DA5C 26100030 */   addiu     $s0, $s0, 0x30
.L8007DA60:
/* 7E660 8007DA60 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7E664 8007DA64 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7E668 8007DA68 24420015 */  addiu      $v0, $v0, 0x15
/* 7E66C 8007DA6C 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7E670 8007DA70 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7E674 8007DA74 26100030 */  addiu      $s0, $s0, 0x30
.L8007DA78:
/* 7E678 8007DA78 2652FFFF */  addiu      $s2, $s2, -0x1
/* 7E67C 8007DA7C 1640FFE7 */  bnez       $s2, .L8007DA1C
/* 7E680 8007DA80 26310030 */   addiu     $s1, $s1, 0x30
/* 7E684 8007DA84 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7E688 8007DA88 8FB40020 */  lw         $s4, 0x20($sp)
/* 7E68C 8007DA8C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7E690 8007DA90 8FB20018 */  lw         $s2, 0x18($sp)
/* 7E694 8007DA94 8FB10014 */  lw         $s1, 0x14($sp)
/* 7E698 8007DA98 8FB00010 */  lw         $s0, 0x10($sp)
/* 7E69C 8007DA9C 03E00008 */  jr         $ra
/* 7E6A0 8007DAA0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007DAA4
/* 7E6A4 8007DAA4 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7E6A8 8007DAA8 3C06802B */  lui        $a2, %hi(D_802B7BC8)
/* 7E6AC 8007DAAC 24C67BC8 */  addiu      $a2, $a2, %lo(D_802B7BC8)
/* 7E6B0 8007DAB0 3C07802B */  lui        $a3, %hi(D_802B7BF8)
/* 7E6B4 8007DAB4 24E77BF8 */  addiu      $a3, $a3, %lo(D_802B7BF8)
/* 7E6B8 8007DAB8 3C05802B */  lui        $a1, %hi(D_802B7BC0)
/* 7E6BC 8007DABC 8CA57BC0 */  lw         $a1, %lo(D_802B7BC0)($a1)
/* 7E6C0 8007DAC0 00805021 */  addu       $t2, $a0, $zero
/* 7E6C4 8007DAC4 3C04802C */  lui        $a0, %hi(D_802BA440)
/* 7E6C8 8007DAC8 8C84A440 */  lw         $a0, %lo(D_802BA440)($a0)
/* 7E6CC 8007DACC 3C09802B */  lui        $t1, %hi(D_802B5BC0)
/* 7E6D0 8007DAD0 25295BC0 */  addiu      $t1, $t1, %lo(D_802B5BC0)
/* 7E6D4 8007DAD4 3C01802C */  lui        $at, %hi(D_802BA964)
/* 7E6D8 8007DAD8 C420A964 */  lwc1       $f0, %lo(D_802BA964)($at)
/* 7E6DC 8007DADC 46800020 */  cvt.s.w    $f0, $f0
/* 7E6E0 8007DAE0 00041080 */  sll        $v0, $a0, 2
/* 7E6E4 8007DAE4 01421021 */  addu       $v0, $t2, $v0
/* 7E6E8 8007DAE8 8C43FFFC */  lw         $v1, -0x4($v0)
/* 7E6EC 8007DAEC 000528C0 */  sll        $a1, $a1, 3
/* 7E6F0 8007DAF0 3C02802C */  lui        $v0, %hi(D_802BA960)
/* 7E6F4 8007DAF4 8C42A960 */  lw         $v0, %lo(D_802BA960)($v0)
/* 7E6F8 8007DAF8 000318C0 */  sll        $v1, $v1, 3
/* 7E6FC 8007DAFC 00694021 */  addu       $t0, $v1, $t1
/* 7E700 8007DB00 00021080 */  sll        $v0, $v0, 2
/* 7E704 8007DB04 00481021 */  addu       $v0, $v0, $t0
/* 7E708 8007DB08 C4420000 */  lwc1       $f2, 0x0($v0)
/* 7E70C 8007DB0C 00A92821 */  addu       $a1, $a1, $t1
/* 7E710 8007DB10 248BFFFF */  addiu      $t3, $a0, -0x1
/* 7E714 8007DB14 10800080 */  beqz       $a0, .L8007DD18
/* 7E718 8007DB18 46020182 */   mul.s     $f6, $f0, $f2
/* 7E71C 8007DB1C 01207821 */  addu       $t7, $t1, $zero
/* 7E720 8007DB20 240E0001 */  addiu      $t6, $zero, 0x1
/* 7E724 8007DB24 240D0002 */  addiu      $t5, $zero, 0x2
/* 7E728 8007DB28 240C0003 */  addiu      $t4, $zero, 0x3
/* 7E72C 8007DB2C 3C01800D */  lui        $at, %hi(D_800D6278)
/* 7E730 8007DB30 D42C6278 */  ldc1       $f12, %lo(D_800D6278)($at)
.L8007DB34:
/* 7E734 8007DB34 8D440000 */  lw         $a0, 0x0($t2)
/* 7E738 8007DB38 3C03802C */  lui        $v1, %hi(D_802BA960)
/* 7E73C 8007DB3C 8C63A960 */  lw         $v1, %lo(D_802BA960)($v1)
/* 7E740 8007DB40 000410C0 */  sll        $v0, $a0, 3
/* 7E744 8007DB44 004F4821 */  addu       $t1, $v0, $t7
/* 7E748 8007DB48 00031880 */  sll        $v1, $v1, 2
/* 7E74C 8007DB4C 00691821 */  addu       $v1, $v1, $t1
/* 7E750 8007DB50 C4620000 */  lwc1       $f2, 0x0($v1)
/* 7E754 8007DB54 3C01802C */  lui        $at, %hi(D_802BA964)
/* 7E758 8007DB58 C420A964 */  lwc1       $f0, %lo(D_802BA964)($at)
/* 7E75C 8007DB5C 46800020 */  cvt.s.w    $f0, $f0
/* 7E760 8007DB60 46020282 */  mul.s      $f10, $f0, $f2
/* 7E764 8007DB64 3C01802C */  lui        $at, %hi(D_802BA968)
/* 7E768 8007DB68 D422A968 */  ldc1       $f2, %lo(D_802BA968)($at)
/* 7E76C 8007DB6C 46005121 */  cvt.d.s    $f4, $f10
/* 7E770 8007DB70 4624103C */  c.lt.d     $f2, $f4
/* 7E774 8007DB74 00000000 */  nop
/* 7E778 8007DB78 00000000 */  nop
/* 7E77C 8007DB7C 45000002 */  bc1f       .L8007DB88
/* 7E780 8007DB80 00001021 */   addu      $v0, $zero, $zero
/* 7E784 8007DB84 24020002 */  addiu      $v0, $zero, 0x2
.L8007DB88:
/* 7E788 8007DB88 46003021 */  cvt.d.s    $f0, $f6
/* 7E78C 8007DB8C 4620103C */  c.lt.d     $f2, $f0
/* 7E790 8007DB90 00000000 */  nop
/* 7E794 8007DB94 00000000 */  nop
/* 7E798 8007DB98 45010002 */  bc1t       .L8007DBA4
/* 7E79C 8007DB9C 24030001 */   addiu     $v1, $zero, 0x1
/* 7E7A0 8007DBA0 00001821 */  addu       $v1, $zero, $zero
.L8007DBA4:
/* 7E7A4 8007DBA4 00621825 */  or         $v1, $v1, $v0
/* 7E7A8 8007DBA8 106E000F */  beq        $v1, $t6, .L8007DBE8
/* 7E7AC 8007DBAC 28620002 */   slti      $v0, $v1, 0x2
/* 7E7B0 8007DBB0 10400005 */  beqz       $v0, .L8007DBC8
/* 7E7B4 8007DBB4 00000000 */   nop
/* 7E7B8 8007DBB8 50600050 */  beql       $v1, $zero, .L8007DCFC
/* 7E7BC 8007DBBC ACC40000 */   sw        $a0, 0x0($a2)
/* 7E7C0 8007DBC0 0801F741 */  j          .L8007DD04
/* 7E7C4 8007DBC4 01204021 */   addu      $t0, $t1, $zero
.L8007DBC8:
/* 7E7C8 8007DBC8 506D002B */  beql       $v1, $t5, .L8007DC78
/* 7E7CC 8007DBCC 460A3001 */   sub.s     $f0, $f6, $f10
/* 7E7D0 8007DBD0 506C0003 */  beql       $v1, $t4, .L8007DBE0
/* 7E7D4 8007DBD4 ACE40000 */   sw        $a0, 0x0($a3)
/* 7E7D8 8007DBD8 0801F741 */  j          .L8007DD04
/* 7E7DC 8007DBDC 01204021 */   addu      $t0, $t1, $zero
.L8007DBE0:
/* 7E7E0 8007DBE0 0801F740 */  j          .L8007DD00
/* 7E7E4 8007DBE4 24E70004 */   addiu     $a3, $a3, 0x4
.L8007DBE8:
/* 7E7E8 8007DBE8 460A3001 */  sub.s      $f0, $f6, $f10
/* 7E7EC 8007DBEC 46241081 */  sub.d      $f2, $f2, $f4
/* 7E7F0 8007DBF0 46000021 */  cvt.d.s    $f0, $f0
/* 7E7F4 8007DBF4 46201083 */  div.d      $f2, $f2, $f0
/* 7E7F8 8007DBF8 C5040000 */  lwc1       $f4, 0x0($t0)
/* 7E7FC 8007DBFC 462011A0 */  cvt.s.d    $f6, $f2
/* 7E800 8007DC00 46043102 */  mul.s      $f4, $f6, $f4
/* 7E804 8007DC04 46003021 */  cvt.d.s    $f0, $f6
/* 7E808 8007DC08 46206001 */  sub.d      $f0, $f12, $f0
/* 7E80C 8007DC0C C5220000 */  lwc1       $f2, 0x0($t1)
/* 7E810 8007DC10 46200220 */  cvt.s.d    $f8, $f0
/* 7E814 8007DC14 46024082 */  mul.s      $f2, $f8, $f2
/* 7E818 8007DC18 46022100 */  add.s      $f4, $f4, $f2
/* 7E81C 8007DC1C E4A40000 */  swc1       $f4, 0x0($a1)
/* 7E820 8007DC20 C5020004 */  lwc1       $f2, 0x4($t0)
/* 7E824 8007DC24 46023082 */  mul.s      $f2, $f6, $f2
/* 7E828 8007DC28 C5200004 */  lwc1       $f0, 0x4($t1)
/* 7E82C 8007DC2C 46004002 */  mul.s      $f0, $f8, $f0
/* 7E830 8007DC30 46001080 */  add.s      $f2, $f2, $f0
/* 7E834 8007DC34 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7E838 8007DC38 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7E83C 8007DC3C E4A20004 */  swc1       $f2, 0x4($a1)
/* 7E840 8007DC40 ACC20000 */  sw         $v0, 0x0($a2)
/* 7E844 8007DC44 8D420000 */  lw         $v0, 0x0($t2)
/* 7E848 8007DC48 24C60004 */  addiu      $a2, $a2, 0x4
/* 7E84C 8007DC4C ACC20000 */  sw         $v0, 0x0($a2)
/* 7E850 8007DC50 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7E854 8007DC54 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7E858 8007DC58 24A50008 */  addiu      $a1, $a1, 0x8
/* 7E85C 8007DC5C 24C60004 */  addiu      $a2, $a2, 0x4
/* 7E860 8007DC60 24620001 */  addiu      $v0, $v1, 0x1
/* 7E864 8007DC64 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7E868 8007DC68 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7E86C 8007DC6C ACE30000 */  sw         $v1, 0x0($a3)
/* 7E870 8007DC70 0801F740 */  j          .L8007DD00
/* 7E874 8007DC74 24E70004 */   addiu     $a3, $a3, 0x4
.L8007DC78:
/* 7E878 8007DC78 46241081 */  sub.d      $f2, $f2, $f4
/* 7E87C 8007DC7C 46000021 */  cvt.d.s    $f0, $f0
/* 7E880 8007DC80 46201083 */  div.d      $f2, $f2, $f0
/* 7E884 8007DC84 C5040000 */  lwc1       $f4, 0x0($t0)
/* 7E888 8007DC88 462011A0 */  cvt.s.d    $f6, $f2
/* 7E88C 8007DC8C 46043102 */  mul.s      $f4, $f6, $f4
/* 7E890 8007DC90 46003021 */  cvt.d.s    $f0, $f6
/* 7E894 8007DC94 46206001 */  sub.d      $f0, $f12, $f0
/* 7E898 8007DC98 C5220000 */  lwc1       $f2, 0x0($t1)
/* 7E89C 8007DC9C 46200220 */  cvt.s.d    $f8, $f0
/* 7E8A0 8007DCA0 46024082 */  mul.s      $f2, $f8, $f2
/* 7E8A4 8007DCA4 46022100 */  add.s      $f4, $f4, $f2
/* 7E8A8 8007DCA8 E4A40000 */  swc1       $f4, 0x0($a1)
/* 7E8AC 8007DCAC C5020004 */  lwc1       $f2, 0x4($t0)
/* 7E8B0 8007DCB0 46023082 */  mul.s      $f2, $f6, $f2
/* 7E8B4 8007DCB4 C5200004 */  lwc1       $f0, 0x4($t1)
/* 7E8B8 8007DCB8 46004002 */  mul.s      $f0, $f8, $f0
/* 7E8BC 8007DCBC 46001080 */  add.s      $f2, $f2, $f0
/* 7E8C0 8007DCC0 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7E8C4 8007DCC4 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7E8C8 8007DCC8 E4A20004 */  swc1       $f2, 0x4($a1)
/* 7E8CC 8007DCCC ACE20000 */  sw         $v0, 0x0($a3)
/* 7E8D0 8007DCD0 8D420000 */  lw         $v0, 0x0($t2)
/* 7E8D4 8007DCD4 24E70004 */  addiu      $a3, $a3, 0x4
/* 7E8D8 8007DCD8 ACE20000 */  sw         $v0, 0x0($a3)
/* 7E8DC 8007DCDC 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7E8E0 8007DCE0 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7E8E4 8007DCE4 24A50008 */  addiu      $a1, $a1, 0x8
/* 7E8E8 8007DCE8 24E70004 */  addiu      $a3, $a3, 0x4
/* 7E8EC 8007DCEC 24620001 */  addiu      $v0, $v1, 0x1
/* 7E8F0 8007DCF0 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7E8F4 8007DCF4 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7E8F8 8007DCF8 ACC30000 */  sw         $v1, 0x0($a2)
.L8007DCFC:
/* 7E8FC 8007DCFC 24C60004 */  addiu      $a2, $a2, 0x4
.L8007DD00:
/* 7E900 8007DD00 01204021 */  addu       $t0, $t1, $zero
.L8007DD04:
/* 7E904 8007DD04 46005186 */  mov.s      $f6, $f10
/* 7E908 8007DD08 256BFFFF */  addiu      $t3, $t3, -0x1
/* 7E90C 8007DD0C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 7E910 8007DD10 1562FF88 */  bne        $t3, $v0, .L8007DB34
/* 7E914 8007DD14 254A0004 */   addiu     $t2, $t2, 0x4
.L8007DD18:
/* 7E918 8007DD18 3C02802B */  lui        $v0, %hi(D_802B7BC8)
/* 7E91C 8007DD1C 24427BC8 */  addiu      $v0, $v0, %lo(D_802B7BC8)
/* 7E920 8007DD20 00C21023 */  subu       $v0, $a2, $v0
/* 7E924 8007DD24 00021083 */  sra        $v0, $v0, 2
/* 7E928 8007DD28 3C01802C */  lui        $at, %hi(D_802BA440)
/* 7E92C 8007DD2C AC22A440 */  sw         $v0, %lo(D_802BA440)($at)
/* 7E930 8007DD30 3C02802B */  lui        $v0, %hi(D_802B7BF8)
/* 7E934 8007DD34 24427BF8 */  addiu      $v0, $v0, %lo(D_802B7BF8)
/* 7E938 8007DD38 00E21023 */  subu       $v0, $a3, $v0
/* 7E93C 8007DD3C 00021083 */  sra        $v0, $v0, 2
/* 7E940 8007DD40 3C01802C */  lui        $at, %hi(D_802BA44C)
/* 7E944 8007DD44 AC22A44C */  sw         $v0, %lo(D_802BA44C)($at)
/* 7E948 8007DD48 03E00008 */  jr         $ra
/* 7E94C 8007DD4C 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8007DD50
/* 7E950 8007DD50 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 7E954 8007DD54 3C06802B */  lui        $a2, %hi(D_802B7C18)
/* 7E958 8007DD58 24C67C18 */  addiu      $a2, $a2, %lo(D_802B7C18)
/* 7E95C 8007DD5C 3C04802B */  lui        $a0, %hi(D_802B7BC0)
/* 7E960 8007DD60 8C847BC0 */  lw         $a0, %lo(D_802B7BC0)($a0)
/* 7E964 8007DD64 3C0A802B */  lui        $t2, %hi(D_802B7BF8)
/* 7E968 8007DD68 254A7BF8 */  addiu      $t2, $t2, %lo(D_802B7BF8)
/* 7E96C 8007DD6C 3C05802C */  lui        $a1, %hi(D_802BA44C)
/* 7E970 8007DD70 8CA5A44C */  lw         $a1, %lo(D_802BA44C)($a1)
/* 7E974 8007DD74 3C08802B */  lui        $t0, %hi(D_802B5BC0)
/* 7E978 8007DD78 25085BC0 */  addiu      $t0, $t0, %lo(D_802B5BC0)
/* 7E97C 8007DD7C 3C01802C */  lui        $at, %hi(D_802BA964)
/* 7E980 8007DD80 C420A964 */  lwc1       $f0, %lo(D_802BA964)($at)
/* 7E984 8007DD84 46800020 */  cvt.s.w    $f0, $f0
/* 7E988 8007DD88 00051080 */  sll        $v0, $a1, 2
/* 7E98C 8007DD8C 3C03802B */  lui        $v1, %hi(D_802B7BF4)
/* 7E990 8007DD90 00621821 */  addu       $v1, $v1, $v0
/* 7E994 8007DD94 8C637BF4 */  lw         $v1, %lo(D_802B7BF4)($v1)
/* 7E998 8007DD98 000420C0 */  sll        $a0, $a0, 3
/* 7E99C 8007DD9C 3C02802C */  lui        $v0, %hi(D_802BA960)
/* 7E9A0 8007DDA0 8C42A960 */  lw         $v0, %lo(D_802BA960)($v0)
/* 7E9A4 8007DDA4 000318C0 */  sll        $v1, $v1, 3
/* 7E9A8 8007DDA8 00683821 */  addu       $a3, $v1, $t0
/* 7E9AC 8007DDAC 00021080 */  sll        $v0, $v0, 2
/* 7E9B0 8007DDB0 00471021 */  addu       $v0, $v0, $a3
/* 7E9B4 8007DDB4 C4420000 */  lwc1       $f2, 0x0($v0)
/* 7E9B8 8007DDB8 00882021 */  addu       $a0, $a0, $t0
/* 7E9BC 8007DDBC 24A9FFFF */  addiu      $t1, $a1, -0x1
/* 7E9C0 8007DDC0 10A0006F */  beqz       $a1, .L8007DF80
/* 7E9C4 8007DDC4 46020182 */   mul.s     $f6, $f0, $f2
/* 7E9C8 8007DDC8 01007021 */  addu       $t6, $t0, $zero
/* 7E9CC 8007DDCC 240D0001 */  addiu      $t5, $zero, 0x1
/* 7E9D0 8007DDD0 240C0002 */  addiu      $t4, $zero, 0x2
/* 7E9D4 8007DDD4 3C01800D */  lui        $at, %hi(D_800D6280)
/* 7E9D8 8007DDD8 D42C6280 */  ldc1       $f12, %lo(D_800D6280)($at)
/* 7E9DC 8007DDDC 240BFFFF */  addiu      $t3, $zero, -0x1
.L8007DDE0:
/* 7E9E0 8007DDE0 8D480000 */  lw         $t0, 0x0($t2)
/* 7E9E4 8007DDE4 3C03802C */  lui        $v1, %hi(D_802BA960)
/* 7E9E8 8007DDE8 8C63A960 */  lw         $v1, %lo(D_802BA960)($v1)
/* 7E9EC 8007DDEC 000810C0 */  sll        $v0, $t0, 3
/* 7E9F0 8007DDF0 004E2821 */  addu       $a1, $v0, $t6
/* 7E9F4 8007DDF4 00031880 */  sll        $v1, $v1, 2
/* 7E9F8 8007DDF8 00651821 */  addu       $v1, $v1, $a1
/* 7E9FC 8007DDFC C4620000 */  lwc1       $f2, 0x0($v1)
/* 7EA00 8007DE00 3C01802C */  lui        $at, %hi(D_802BA964)
/* 7EA04 8007DE04 C420A964 */  lwc1       $f0, %lo(D_802BA964)($at)
/* 7EA08 8007DE08 46800020 */  cvt.s.w    $f0, $f0
/* 7EA0C 8007DE0C 46020282 */  mul.s      $f10, $f0, $f2
/* 7EA10 8007DE10 3C01802C */  lui        $at, %hi(D_802BA970)
/* 7EA14 8007DE14 D422A970 */  ldc1       $f2, %lo(D_802BA970)($at)
/* 7EA18 8007DE18 46005121 */  cvt.d.s    $f4, $f10
/* 7EA1C 8007DE1C 4624103C */  c.lt.d     $f2, $f4
/* 7EA20 8007DE20 00000000 */  nop
/* 7EA24 8007DE24 00000000 */  nop
/* 7EA28 8007DE28 45000002 */  bc1f       .L8007DE34
/* 7EA2C 8007DE2C 00001021 */   addu      $v0, $zero, $zero
/* 7EA30 8007DE30 24020002 */  addiu      $v0, $zero, 0x2
.L8007DE34:
/* 7EA34 8007DE34 46003021 */  cvt.d.s    $f0, $f6
/* 7EA38 8007DE38 4620103C */  c.lt.d     $f2, $f0
/* 7EA3C 8007DE3C 00000000 */  nop
/* 7EA40 8007DE40 00000000 */  nop
/* 7EA44 8007DE44 45010002 */  bc1t       .L8007DE50
/* 7EA48 8007DE48 24030001 */   addiu     $v1, $zero, 0x1
/* 7EA4C 8007DE4C 00001821 */  addu       $v1, $zero, $zero
.L8007DE50:
/* 7EA50 8007DE50 00621825 */  or         $v1, $v1, $v0
/* 7EA54 8007DE54 106D000B */  beq        $v1, $t5, .L8007DE84
/* 7EA58 8007DE58 28620002 */   slti      $v0, $v1, 0x2
/* 7EA5C 8007DE5C 10400005 */  beqz       $v0, .L8007DE74
/* 7EA60 8007DE60 00000000 */   nop
/* 7EA64 8007DE64 50600040 */  beql       $v1, $zero, .L8007DF68
/* 7EA68 8007DE68 ACC80000 */   sw        $t0, 0x0($a2)
/* 7EA6C 8007DE6C 0801F7DC */  j          .L8007DF70
/* 7EA70 8007DE70 00A03821 */   addu      $a3, $a1, $zero
.L8007DE74:
/* 7EA74 8007DE74 506C0022 */  beql       $v1, $t4, .L8007DF00
/* 7EA78 8007DE78 460A3001 */   sub.s     $f0, $f6, $f10
/* 7EA7C 8007DE7C 0801F7DC */  j          .L8007DF70
/* 7EA80 8007DE80 00A03821 */   addu      $a3, $a1, $zero
.L8007DE84:
/* 7EA84 8007DE84 460A3001 */  sub.s      $f0, $f6, $f10
/* 7EA88 8007DE88 46241081 */  sub.d      $f2, $f2, $f4
/* 7EA8C 8007DE8C 46000021 */  cvt.d.s    $f0, $f0
/* 7EA90 8007DE90 46201083 */  div.d      $f2, $f2, $f0
/* 7EA94 8007DE94 C4E40000 */  lwc1       $f4, 0x0($a3)
/* 7EA98 8007DE98 462011A0 */  cvt.s.d    $f6, $f2
/* 7EA9C 8007DE9C 46043102 */  mul.s      $f4, $f6, $f4
/* 7EAA0 8007DEA0 46003021 */  cvt.d.s    $f0, $f6
/* 7EAA4 8007DEA4 46206001 */  sub.d      $f0, $f12, $f0
/* 7EAA8 8007DEA8 C4A20000 */  lwc1       $f2, 0x0($a1)
/* 7EAAC 8007DEAC 46200220 */  cvt.s.d    $f8, $f0
/* 7EAB0 8007DEB0 46024082 */  mul.s      $f2, $f8, $f2
/* 7EAB4 8007DEB4 46022100 */  add.s      $f4, $f4, $f2
/* 7EAB8 8007DEB8 E4840000 */  swc1       $f4, 0x0($a0)
/* 7EABC 8007DEBC C4E20004 */  lwc1       $f2, 0x4($a3)
/* 7EAC0 8007DEC0 46023082 */  mul.s      $f2, $f6, $f2
/* 7EAC4 8007DEC4 C4A00004 */  lwc1       $f0, 0x4($a1)
/* 7EAC8 8007DEC8 46004002 */  mul.s      $f0, $f8, $f0
/* 7EACC 8007DECC 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7EAD0 8007DED0 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7EAD4 8007DED4 46001080 */  add.s      $f2, $f2, $f0
/* 7EAD8 8007DED8 24620001 */  addiu      $v0, $v1, 0x1
/* 7EADC 8007DEDC 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7EAE0 8007DEE0 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7EAE4 8007DEE4 E4820004 */  swc1       $f2, 0x4($a0)
/* 7EAE8 8007DEE8 ACC30000 */  sw         $v1, 0x0($a2)
/* 7EAEC 8007DEEC 8D420000 */  lw         $v0, 0x0($t2)
/* 7EAF0 8007DEF0 24840008 */  addiu      $a0, $a0, 0x8
/* 7EAF4 8007DEF4 24C60004 */  addiu      $a2, $a2, 0x4
/* 7EAF8 8007DEF8 0801F7DA */  j          .L8007DF68
/* 7EAFC 8007DEFC ACC20000 */   sw        $v0, 0x0($a2)
.L8007DF00:
/* 7EB00 8007DF00 46241081 */  sub.d      $f2, $f2, $f4
/* 7EB04 8007DF04 46000021 */  cvt.d.s    $f0, $f0
/* 7EB08 8007DF08 46201083 */  div.d      $f2, $f2, $f0
/* 7EB0C 8007DF0C C4E40000 */  lwc1       $f4, 0x0($a3)
/* 7EB10 8007DF10 462011A0 */  cvt.s.d    $f6, $f2
/* 7EB14 8007DF14 46043102 */  mul.s      $f4, $f6, $f4
/* 7EB18 8007DF18 46003021 */  cvt.d.s    $f0, $f6
/* 7EB1C 8007DF1C 46206001 */  sub.d      $f0, $f12, $f0
/* 7EB20 8007DF20 C4A20000 */  lwc1       $f2, 0x0($a1)
/* 7EB24 8007DF24 46200220 */  cvt.s.d    $f8, $f0
/* 7EB28 8007DF28 46024082 */  mul.s      $f2, $f8, $f2
/* 7EB2C 8007DF2C 46022100 */  add.s      $f4, $f4, $f2
/* 7EB30 8007DF30 E4840000 */  swc1       $f4, 0x0($a0)
/* 7EB34 8007DF34 C4E20004 */  lwc1       $f2, 0x4($a3)
/* 7EB38 8007DF38 46023082 */  mul.s      $f2, $f6, $f2
/* 7EB3C 8007DF3C C4A00004 */  lwc1       $f0, 0x4($a1)
/* 7EB40 8007DF40 46004002 */  mul.s      $f0, $f8, $f0
/* 7EB44 8007DF44 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7EB48 8007DF48 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7EB4C 8007DF4C 46001080 */  add.s      $f2, $f2, $f0
/* 7EB50 8007DF50 24620001 */  addiu      $v0, $v1, 0x1
/* 7EB54 8007DF54 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7EB58 8007DF58 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7EB5C 8007DF5C E4820004 */  swc1       $f2, 0x4($a0)
/* 7EB60 8007DF60 24840008 */  addiu      $a0, $a0, 0x8
/* 7EB64 8007DF64 ACC30000 */  sw         $v1, 0x0($a2)
.L8007DF68:
/* 7EB68 8007DF68 24C60004 */  addiu      $a2, $a2, 0x4
/* 7EB6C 8007DF6C 00A03821 */  addu       $a3, $a1, $zero
.L8007DF70:
/* 7EB70 8007DF70 46005186 */  mov.s      $f6, $f10
/* 7EB74 8007DF74 2529FFFF */  addiu      $t1, $t1, -0x1
/* 7EB78 8007DF78 152BFF99 */  bne        $t1, $t3, .L8007DDE0
/* 7EB7C 8007DF7C 254A0004 */   addiu     $t2, $t2, 0x4
.L8007DF80:
/* 7EB80 8007DF80 3C02802B */  lui        $v0, %hi(D_802B7C18)
/* 7EB84 8007DF84 24427C18 */  addiu      $v0, $v0, %lo(D_802B7C18)
/* 7EB88 8007DF88 00C21023 */  subu       $v0, $a2, $v0
/* 7EB8C 8007DF8C 00021083 */  sra        $v0, $v0, 2
/* 7EB90 8007DF90 3C01802C */  lui        $at, %hi(D_802BA450)
/* 7EB94 8007DF94 AC22A450 */  sw         $v0, %lo(D_802BA450)($at)
/* 7EB98 8007DF98 03E00008 */  jr         $ra
/* 7EB9C 8007DF9C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8007DFA0
/* 7EBA0 8007DFA0 3C06802C */  lui        $a2, %hi(D_802BA450)
/* 7EBA4 8007DFA4 8CC6A450 */  lw         $a2, %lo(D_802BA450)($a2)
/* 7EBA8 8007DFA8 10C000B8 */  beqz       $a2, .L8007E28C
/* 7EBAC 8007DFAC 27BDFFF0 */   addiu     $sp, $sp, -0x10
/* 7EBB0 8007DFB0 00061080 */  sll        $v0, $a2, 2
/* 7EBB4 8007DFB4 3C01802B */  lui        $at, %hi(D_802B7C14)
/* 7EBB8 8007DFB8 00220821 */  addu       $at, $at, $v0
/* 7EBBC 8007DFBC 8C227C14 */  lw         $v0, %lo(D_802B7C14)($at)
/* 7EBC0 8007DFC0 3C03802C */  lui        $v1, %hi(D_802BA978)
/* 7EBC4 8007DFC4 8C63A978 */  lw         $v1, %lo(D_802BA978)($v1)
/* 7EBC8 8007DFC8 3C09802B */  lui        $t1, %hi(D_802B5BC0)
/* 7EBCC 8007DFCC 25295BC0 */  addiu      $t1, $t1, %lo(D_802B5BC0)
/* 7EBD0 8007DFD0 000210C0 */  sll        $v0, $v0, 3
/* 7EBD4 8007DFD4 00494021 */  addu       $t0, $v0, $t1
/* 7EBD8 8007DFD8 246CFFFF */  addiu      $t4, $v1, -0x1
/* 7EBDC 8007DFDC C5000000 */  lwc1       $f0, 0x0($t0)
/* 7EBE0 8007DFE0 000C1940 */  sll        $v1, $t4, 5
/* 7EBE4 8007DFE4 3C01800C */  lui        $at, %hi(D_800C7088)
/* 7EBE8 8007DFE8 00230821 */  addu       $at, $at, $v1
/* 7EBEC 8007DFEC D4227088 */  ldc1       $f2, %lo(D_800C7088)($at)
/* 7EBF0 8007DFF0 46000021 */  cvt.d.s    $f0, $f0
/* 7EBF4 8007DFF4 46220002 */  mul.d      $f0, $f0, $f2
/* 7EBF8 8007DFF8 C5020004 */  lwc1       $f2, 0x4($t0)
/* 7EBFC 8007DFFC 3C01800C */  lui        $at, %hi(D_800C7090)
/* 7EC00 8007E000 00230821 */  addu       $at, $at, $v1
/* 7EC04 8007E004 D4247090 */  ldc1       $f4, %lo(D_800C7090)($at)
/* 7EC08 8007E008 460010A1 */  cvt.d.s    $f2, $f2
/* 7EC0C 8007E00C 46241082 */  mul.d      $f2, $f2, $f4
/* 7EC10 8007E010 3C04802B */  lui        $a0, %hi(D_802B7BF8)
/* 7EC14 8007E014 24847BF8 */  addiu      $a0, $a0, %lo(D_802B7BF8)
/* 7EC18 8007E018 3C05802B */  lui        $a1, %hi(D_802B7BD8)
/* 7EC1C 8007E01C 24A57BD8 */  addiu      $a1, $a1, %lo(D_802B7BD8)
/* 7EC20 8007E020 3C0A802B */  lui        $t2, %hi(D_802B7C18)
/* 7EC24 8007E024 254A7C18 */  addiu      $t2, $t2, %lo(D_802B7C18)
/* 7EC28 8007E028 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7EC2C 8007E02C 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7EC30 8007E030 46220000 */  add.d      $f0, $f0, $f2
/* 7EC34 8007E034 24CBFFFF */  addiu      $t3, $a2, -0x1
/* 7EC38 8007E038 000210C0 */  sll        $v0, $v0, 3
/* 7EC3C 8007E03C 00493821 */  addu       $a3, $v0, $t1
/* 7EC40 8007E040 10C00086 */  beqz       $a2, .L8007E25C
/* 7EC44 8007E044 462001A0 */   cvt.s.d   $f6, $f0
/* 7EC48 8007E048 01207021 */  addu       $t6, $t1, $zero
/* 7EC4C 8007E04C 00606821 */  addu       $t5, $v1, $zero
/* 7EC50 8007E050 3C03802D */  lui        $v1, %hi(D_802D2AD0)
/* 7EC54 8007E054 24632AD0 */  addiu      $v1, $v1, %lo(D_802D2AD0)
/* 7EC58 8007E058 000C1100 */  sll        $v0, $t4, 4
/* 7EC5C 8007E05C 00436021 */  addu       $t4, $v0, $v1
/* 7EC60 8007E060 3C01800D */  lui        $at, %hi(D_800D6288)
/* 7EC64 8007E064 D42E6288 */  ldc1       $f14, %lo(D_800D6288)($at)
.L8007E068:
/* 7EC68 8007E068 8D460000 */  lw         $a2, 0x0($t2)
/* 7EC6C 8007E06C 000610C0 */  sll        $v0, $a2, 3
/* 7EC70 8007E070 004E4821 */  addu       $t1, $v0, $t6
/* 7EC74 8007E074 C52A0000 */  lwc1       $f10, 0x0($t1)
/* 7EC78 8007E078 3C01800C */  lui        $at, %hi(D_800C7088)
/* 7EC7C 8007E07C 002D0821 */  addu       $at, $at, $t5
/* 7EC80 8007E080 D4207088 */  ldc1       $f0, %lo(D_800C7088)($at)
/* 7EC84 8007E084 460050A1 */  cvt.d.s    $f2, $f10
/* 7EC88 8007E088 46201082 */  mul.d      $f2, $f2, $f0
/* 7EC8C 8007E08C C5200004 */  lwc1       $f0, 0x4($t1)
/* 7EC90 8007E090 3C01800C */  lui        $at, %hi(D_800C7090)
/* 7EC94 8007E094 002D0821 */  addu       $at, $at, $t5
/* 7EC98 8007E098 D4247090 */  ldc1       $f4, %lo(D_800C7090)($at)
/* 7EC9C 8007E09C 46000021 */  cvt.d.s    $f0, $f0
/* 7ECA0 8007E0A0 46240002 */  mul.d      $f0, $f0, $f4
/* 7ECA4 8007E0A4 46201080 */  add.d      $f2, $f2, $f0
/* 7ECA8 8007E0A8 D5840000 */  ldc1       $f4, 0x0($t4)
/* 7ECAC 8007E0AC 46201320 */  cvt.s.d    $f12, $f2
/* 7ECB0 8007E0B0 460060A1 */  cvt.d.s    $f2, $f12
/* 7ECB4 8007E0B4 4622203C */  c.lt.d     $f4, $f2
/* 7ECB8 8007E0B8 00000000 */  nop
/* 7ECBC 8007E0BC 00000000 */  nop
/* 7ECC0 8007E0C0 45000002 */  bc1f       .L8007E0CC
/* 7ECC4 8007E0C4 00001021 */   addu      $v0, $zero, $zero
/* 7ECC8 8007E0C8 24020002 */  addiu      $v0, $zero, 0x2
.L8007E0CC:
/* 7ECCC 8007E0CC 46003021 */  cvt.d.s    $f0, $f6
/* 7ECD0 8007E0D0 4620203C */  c.lt.d     $f4, $f0
/* 7ECD4 8007E0D4 00000000 */  nop
/* 7ECD8 8007E0D8 00000000 */  nop
/* 7ECDC 8007E0DC 45010002 */  bc1t       .L8007E0E8
/* 7ECE0 8007E0E0 24030001 */   addiu     $v1, $zero, 0x1
/* 7ECE4 8007E0E4 00001821 */  addu       $v1, $zero, $zero
.L8007E0E8:
/* 7ECE8 8007E0E8 00621825 */  or         $v1, $v1, $v0
/* 7ECEC 8007E0EC 24020001 */  addiu      $v0, $zero, 0x1
/* 7ECF0 8007E0F0 1062000F */  beq        $v1, $v0, .L8007E130
/* 7ECF4 8007E0F4 28620002 */   slti      $v0, $v1, 0x2
/* 7ECF8 8007E0F8 50400005 */  beql       $v0, $zero, .L8007E110
/* 7ECFC 8007E0FC 24020002 */   addiu     $v0, $zero, 0x2
/* 7ED00 8007E100 5060004F */  beql       $v1, $zero, .L8007E240
/* 7ED04 8007E104 AC860000 */   sw        $a2, 0x0($a0)
/* 7ED08 8007E108 0801F892 */  j          .L8007E248
/* 7ED0C 8007E10C 01204021 */   addu      $t0, $t1, $zero
.L8007E110:
/* 7ED10 8007E110 1062002A */  beq        $v1, $v0, .L8007E1BC
/* 7ED14 8007E114 24020003 */   addiu     $v0, $zero, 0x3
/* 7ED18 8007E118 50620003 */  beql       $v1, $v0, .L8007E128
/* 7ED1C 8007E11C ACA60000 */   sw        $a2, 0x0($a1)
/* 7ED20 8007E120 0801F892 */  j          .L8007E248
/* 7ED24 8007E124 01204021 */   addu      $t0, $t1, $zero
.L8007E128:
/* 7ED28 8007E128 0801F891 */  j          .L8007E244
/* 7ED2C 8007E12C 24A50004 */   addiu     $a1, $a1, 0x4
.L8007E130:
/* 7ED30 8007E130 460C3001 */  sub.s      $f0, $f6, $f12
/* 7ED34 8007E134 46222081 */  sub.d      $f2, $f4, $f2
/* 7ED38 8007E138 46000021 */  cvt.d.s    $f0, $f0
/* 7ED3C 8007E13C 46201083 */  div.d      $f2, $f2, $f0
/* 7ED40 8007E140 C5040000 */  lwc1       $f4, 0x0($t0)
/* 7ED44 8007E144 462011A0 */  cvt.s.d    $f6, $f2
/* 7ED48 8007E148 46043102 */  mul.s      $f4, $f6, $f4
/* 7ED4C 8007E14C 46003021 */  cvt.d.s    $f0, $f6
/* 7ED50 8007E150 46207001 */  sub.d      $f0, $f14, $f0
/* 7ED54 8007E154 46200220 */  cvt.s.d    $f8, $f0
/* 7ED58 8007E158 460A4002 */  mul.s      $f0, $f8, $f10
/* 7ED5C 8007E15C 46002100 */  add.s      $f4, $f4, $f0
/* 7ED60 8007E160 E4E40000 */  swc1       $f4, 0x0($a3)
/* 7ED64 8007E164 C5020004 */  lwc1       $f2, 0x4($t0)
/* 7ED68 8007E168 46023082 */  mul.s      $f2, $f6, $f2
/* 7ED6C 8007E16C C5200004 */  lwc1       $f0, 0x4($t1)
/* 7ED70 8007E170 46004002 */  mul.s      $f0, $f8, $f0
/* 7ED74 8007E174 46001080 */  add.s      $f2, $f2, $f0
/* 7ED78 8007E178 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7ED7C 8007E17C 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7ED80 8007E180 E4E20004 */  swc1       $f2, 0x4($a3)
/* 7ED84 8007E184 AC820000 */  sw         $v0, 0x0($a0)
/* 7ED88 8007E188 8D420000 */  lw         $v0, 0x0($t2)
/* 7ED8C 8007E18C 24840004 */  addiu      $a0, $a0, 0x4
/* 7ED90 8007E190 AC820000 */  sw         $v0, 0x0($a0)
/* 7ED94 8007E194 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7ED98 8007E198 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7ED9C 8007E19C 24E70008 */  addiu      $a3, $a3, 0x8
/* 7EDA0 8007E1A0 24840004 */  addiu      $a0, $a0, 0x4
/* 7EDA4 8007E1A4 24620001 */  addiu      $v0, $v1, 0x1
/* 7EDA8 8007E1A8 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7EDAC 8007E1AC AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7EDB0 8007E1B0 ACA30000 */  sw         $v1, 0x0($a1)
/* 7EDB4 8007E1B4 0801F891 */  j          .L8007E244
/* 7EDB8 8007E1B8 24A50004 */   addiu     $a1, $a1, 0x4
.L8007E1BC:
/* 7EDBC 8007E1BC 460C3001 */  sub.s      $f0, $f6, $f12
/* 7EDC0 8007E1C0 46222081 */  sub.d      $f2, $f4, $f2
/* 7EDC4 8007E1C4 46000021 */  cvt.d.s    $f0, $f0
/* 7EDC8 8007E1C8 46201083 */  div.d      $f2, $f2, $f0
/* 7EDCC 8007E1CC C5040000 */  lwc1       $f4, 0x0($t0)
/* 7EDD0 8007E1D0 462011A0 */  cvt.s.d    $f6, $f2
/* 7EDD4 8007E1D4 46043102 */  mul.s      $f4, $f6, $f4
/* 7EDD8 8007E1D8 46003021 */  cvt.d.s    $f0, $f6
/* 7EDDC 8007E1DC 46207001 */  sub.d      $f0, $f14, $f0
/* 7EDE0 8007E1E0 46200220 */  cvt.s.d    $f8, $f0
/* 7EDE4 8007E1E4 460A4002 */  mul.s      $f0, $f8, $f10
/* 7EDE8 8007E1E8 46002100 */  add.s      $f4, $f4, $f0
/* 7EDEC 8007E1EC E4E40000 */  swc1       $f4, 0x0($a3)
/* 7EDF0 8007E1F0 C5020004 */  lwc1       $f2, 0x4($t0)
/* 7EDF4 8007E1F4 46023082 */  mul.s      $f2, $f6, $f2
/* 7EDF8 8007E1F8 C5200004 */  lwc1       $f0, 0x4($t1)
/* 7EDFC 8007E1FC 46004002 */  mul.s      $f0, $f8, $f0
/* 7EE00 8007E200 46001080 */  add.s      $f2, $f2, $f0
/* 7EE04 8007E204 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7EE08 8007E208 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7EE0C 8007E20C E4E20004 */  swc1       $f2, 0x4($a3)
/* 7EE10 8007E210 ACA20000 */  sw         $v0, 0x0($a1)
/* 7EE14 8007E214 8D420000 */  lw         $v0, 0x0($t2)
/* 7EE18 8007E218 24A50004 */  addiu      $a1, $a1, 0x4
/* 7EE1C 8007E21C ACA20000 */  sw         $v0, 0x0($a1)
/* 7EE20 8007E220 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7EE24 8007E224 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7EE28 8007E228 24E70008 */  addiu      $a3, $a3, 0x8
/* 7EE2C 8007E22C 24A50004 */  addiu      $a1, $a1, 0x4
/* 7EE30 8007E230 24620001 */  addiu      $v0, $v1, 0x1
/* 7EE34 8007E234 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7EE38 8007E238 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7EE3C 8007E23C AC830000 */  sw         $v1, 0x0($a0)
.L8007E240:
/* 7EE40 8007E240 24840004 */  addiu      $a0, $a0, 0x4
.L8007E244:
/* 7EE44 8007E244 01204021 */  addu       $t0, $t1, $zero
.L8007E248:
/* 7EE48 8007E248 46006186 */  mov.s      $f6, $f12
/* 7EE4C 8007E24C 256BFFFF */  addiu      $t3, $t3, -0x1
/* 7EE50 8007E250 2402FFFF */  addiu      $v0, $zero, -0x1
/* 7EE54 8007E254 1562FF84 */  bne        $t3, $v0, .L8007E068
/* 7EE58 8007E258 254A0004 */   addiu     $t2, $t2, 0x4
.L8007E25C:
/* 7EE5C 8007E25C 3C02802B */  lui        $v0, %hi(D_802B7BF8)
/* 7EE60 8007E260 24427BF8 */  addiu      $v0, $v0, %lo(D_802B7BF8)
/* 7EE64 8007E264 00821023 */  subu       $v0, $a0, $v0
/* 7EE68 8007E268 00021083 */  sra        $v0, $v0, 2
/* 7EE6C 8007E26C 3C01802C */  lui        $at, %hi(D_802BA44C)
/* 7EE70 8007E270 AC22A44C */  sw         $v0, %lo(D_802BA44C)($at)
/* 7EE74 8007E274 3C02802B */  lui        $v0, %hi(D_802B7BD8)
/* 7EE78 8007E278 24427BD8 */  addiu      $v0, $v0, %lo(D_802B7BD8)
/* 7EE7C 8007E27C 00A21023 */  subu       $v0, $a1, $v0
/* 7EE80 8007E280 00021083 */  sra        $v0, $v0, 2
/* 7EE84 8007E284 3C01802C */  lui        $at, %hi(D_802BA444)
/* 7EE88 8007E288 AC22A444 */  sw         $v0, %lo(D_802BA444)($at)
.L8007E28C:
/* 7EE8C 8007E28C 03E00008 */  jr         $ra
/* 7EE90 8007E290 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8007E294
/* 7EE94 8007E294 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 7EE98 8007E298 3C0C802C */  lui        $t4, %hi(D_802BA44C)
/* 7EE9C 8007E29C 8D8CA44C */  lw         $t4, %lo(D_802BA44C)($t4)
/* 7EEA0 8007E2A0 00807821 */  addu       $t7, $a0, $zero
/* 7EEA4 8007E2A4 118000CB */  beqz       $t4, .L8007E5D4
/* 7EEA8 8007E2A8 00A0C021 */   addu      $t8, $a1, $zero
/* 7EEAC 8007E2AC 000C1080 */  sll        $v0, $t4, 2
/* 7EEB0 8007E2B0 3C01802B */  lui        $at, %hi(D_802B7BF4)
/* 7EEB4 8007E2B4 00220821 */  addu       $at, $at, $v0
/* 7EEB8 8007E2B8 8C227BF4 */  lw         $v0, %lo(D_802B7BF4)($at)
/* 7EEBC 8007E2BC 3C03802C */  lui        $v1, %hi(D_802BA978)
/* 7EEC0 8007E2C0 8C63A978 */  lw         $v1, %lo(D_802BA978)($v1)
/* 7EEC4 8007E2C4 3C0D802B */  lui        $t5, %hi(D_802B5BC0)
/* 7EEC8 8007E2C8 25AD5BC0 */  addiu      $t5, $t5, %lo(D_802B5BC0)
/* 7EECC 8007E2CC 000210C0 */  sll        $v0, $v0, 3
/* 7EED0 8007E2D0 004D4021 */  addu       $t0, $v0, $t5
/* 7EED4 8007E2D4 2463FFFF */  addiu      $v1, $v1, -0x1
/* 7EED8 8007E2D8 00031840 */  sll        $v1, $v1, 1
/* 7EEDC 8007E2DC 246E0001 */  addiu      $t6, $v1, 0x1
/* 7EEE0 8007E2E0 C5020000 */  lwc1       $f2, 0x0($t0)
/* 7EEE4 8007E2E4 000E4900 */  sll        $t1, $t6, 4
/* 7EEE8 8007E2E8 3C01800C */  lui        $at, %hi(D_800C7088)
/* 7EEEC 8007E2EC 00290821 */  addu       $at, $at, $t1
/* 7EEF0 8007E2F0 D4207088 */  ldc1       $f0, %lo(D_800C7088)($at)
/* 7EEF4 8007E2F4 460010A1 */  cvt.d.s    $f2, $f2
/* 7EEF8 8007E2F8 46201082 */  mul.d      $f2, $f2, $f0
/* 7EEFC 8007E2FC 000F2080 */  sll        $a0, $t7, 2
/* 7EF00 8007E300 008F2021 */  addu       $a0, $a0, $t7
/* 7EF04 8007E304 C5000004 */  lwc1       $f0, 0x4($t0)
/* 7EF08 8007E308 3C01800C */  lui        $at, %hi(D_800C7090)
/* 7EF0C 8007E30C 00290821 */  addu       $at, $at, $t1
/* 7EF10 8007E310 D4247090 */  ldc1       $f4, %lo(D_800C7090)($at)
/* 7EF14 8007E314 000421C0 */  sll        $a0, $a0, 7
/* 7EF18 8007E318 46000021 */  cvt.d.s    $f0, $f0
/* 7EF1C 8007E31C 46240002 */  mul.d      $f0, $f0, $f4
/* 7EF20 8007E320 3C07802B */  lui        $a3, %hi(D_802B7BE8)
/* 7EF24 8007E324 24E77BE8 */  addiu      $a3, $a3, %lo(D_802B7BE8)
/* 7EF28 8007E328 3C0A802B */  lui        $t2, %hi(D_802B7BF8)
/* 7EF2C 8007E32C 254A7BF8 */  addiu      $t2, $t2, %lo(D_802B7BF8)
/* 7EF30 8007E330 00181140 */  sll        $v0, $t8, 5
/* 7EF34 8007E334 3C03802B */  lui        $v1, %hi(D_802B7C40)
/* 7EF38 8007E338 24637C40 */  addiu      $v1, $v1, %lo(D_802B7C40)
/* 7EF3C 8007E33C 00431021 */  addu       $v0, $v0, $v1
/* 7EF40 8007E340 00823021 */  addu       $a2, $a0, $v0
/* 7EF44 8007E344 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7EF48 8007E348 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7EF4C 8007E34C 46201080 */  add.d      $f2, $f2, $f0
/* 7EF50 8007E350 258BFFFF */  addiu      $t3, $t4, -0x1
/* 7EF54 8007E354 000210C0 */  sll        $v0, $v0, 3
/* 7EF58 8007E358 004D2821 */  addu       $a1, $v0, $t5
/* 7EF5C 8007E35C 11800086 */  beqz       $t4, .L8007E578
/* 7EF60 8007E360 462011A0 */   cvt.s.d   $f6, $f2
/* 7EF64 8007E364 01A0C821 */  addu       $t9, $t5, $zero
/* 7EF68 8007E368 01206021 */  addu       $t4, $t1, $zero
/* 7EF6C 8007E36C 3C03802D */  lui        $v1, %hi(D_802D2AD0)
/* 7EF70 8007E370 24632AD0 */  addiu      $v1, $v1, %lo(D_802D2AD0)
/* 7EF74 8007E374 000E10C0 */  sll        $v0, $t6, 3
/* 7EF78 8007E378 00436821 */  addu       $t5, $v0, $v1
/* 7EF7C 8007E37C 3C01800D */  lui        $at, %hi(D_800D6290)
/* 7EF80 8007E380 D42E6290 */  ldc1       $f14, %lo(D_800D6290)($at)
.L8007E384:
/* 7EF84 8007E384 8D440000 */  lw         $a0, 0x0($t2)
/* 7EF88 8007E388 000410C0 */  sll        $v0, $a0, 3
/* 7EF8C 8007E38C 00594821 */  addu       $t1, $v0, $t9
/* 7EF90 8007E390 C52A0000 */  lwc1       $f10, 0x0($t1)
/* 7EF94 8007E394 3C01800C */  lui        $at, %hi(D_800C7088)
/* 7EF98 8007E398 002C0821 */  addu       $at, $at, $t4
/* 7EF9C 8007E39C D4207088 */  ldc1       $f0, %lo(D_800C7088)($at)
/* 7EFA0 8007E3A0 460050A1 */  cvt.d.s    $f2, $f10
/* 7EFA4 8007E3A4 46201082 */  mul.d      $f2, $f2, $f0
/* 7EFA8 8007E3A8 C5200004 */  lwc1       $f0, 0x4($t1)
/* 7EFAC 8007E3AC 3C01800C */  lui        $at, %hi(D_800C7090)
/* 7EFB0 8007E3B0 002C0821 */  addu       $at, $at, $t4
/* 7EFB4 8007E3B4 D4247090 */  ldc1       $f4, %lo(D_800C7090)($at)
/* 7EFB8 8007E3B8 46000021 */  cvt.d.s    $f0, $f0
/* 7EFBC 8007E3BC 46240002 */  mul.d      $f0, $f0, $f4
/* 7EFC0 8007E3C0 46201080 */  add.d      $f2, $f2, $f0
/* 7EFC4 8007E3C4 D5A40000 */  ldc1       $f4, 0x0($t5)
/* 7EFC8 8007E3C8 46201320 */  cvt.s.d    $f12, $f2
/* 7EFCC 8007E3CC 460060A1 */  cvt.d.s    $f2, $f12
/* 7EFD0 8007E3D0 4622203C */  c.lt.d     $f4, $f2
/* 7EFD4 8007E3D4 00000000 */  nop
/* 7EFD8 8007E3D8 00000000 */  nop
/* 7EFDC 8007E3DC 45000002 */  bc1f       .L8007E3E8
/* 7EFE0 8007E3E0 00001021 */   addu      $v0, $zero, $zero
/* 7EFE4 8007E3E4 24020002 */  addiu      $v0, $zero, 0x2
.L8007E3E8:
/* 7EFE8 8007E3E8 46003021 */  cvt.d.s    $f0, $f6
/* 7EFEC 8007E3EC 4620203C */  c.lt.d     $f4, $f0
/* 7EFF0 8007E3F0 00000000 */  nop
/* 7EFF4 8007E3F4 00000000 */  nop
/* 7EFF8 8007E3F8 45010002 */  bc1t       .L8007E404
/* 7EFFC 8007E3FC 24030001 */   addiu     $v1, $zero, 0x1
/* 7F000 8007E400 00001821 */  addu       $v1, $zero, $zero
.L8007E404:
/* 7F004 8007E404 00621825 */  or         $v1, $v1, $v0
/* 7F008 8007E408 24020001 */  addiu      $v0, $zero, 0x1
/* 7F00C 8007E40C 1062000F */  beq        $v1, $v0, .L8007E44C
/* 7F010 8007E410 28620002 */   slti      $v0, $v1, 0x2
/* 7F014 8007E414 50400005 */  beql       $v0, $zero, .L8007E42C
/* 7F018 8007E418 24020002 */   addiu     $v0, $zero, 0x2
/* 7F01C 8007E41C 5060004F */  beql       $v1, $zero, .L8007E55C
/* 7F020 8007E420 ACC40000 */   sw        $a0, 0x0($a2)
/* 7F024 8007E424 0801F959 */  j          .L8007E564
/* 7F028 8007E428 01204021 */   addu      $t0, $t1, $zero
.L8007E42C:
/* 7F02C 8007E42C 1062002A */  beq        $v1, $v0, .L8007E4D8
/* 7F030 8007E430 24020003 */   addiu     $v0, $zero, 0x3
/* 7F034 8007E434 50620003 */  beql       $v1, $v0, .L8007E444
/* 7F038 8007E438 ACE40000 */   sw        $a0, 0x0($a3)
/* 7F03C 8007E43C 0801F959 */  j          .L8007E564
/* 7F040 8007E440 01204021 */   addu      $t0, $t1, $zero
.L8007E444:
/* 7F044 8007E444 0801F958 */  j          .L8007E560
/* 7F048 8007E448 24E70004 */   addiu     $a3, $a3, 0x4
.L8007E44C:
/* 7F04C 8007E44C 460C3001 */  sub.s      $f0, $f6, $f12
/* 7F050 8007E450 46222081 */  sub.d      $f2, $f4, $f2
/* 7F054 8007E454 46000021 */  cvt.d.s    $f0, $f0
/* 7F058 8007E458 46201083 */  div.d      $f2, $f2, $f0
/* 7F05C 8007E45C C5040000 */  lwc1       $f4, 0x0($t0)
/* 7F060 8007E460 462011A0 */  cvt.s.d    $f6, $f2
/* 7F064 8007E464 46043102 */  mul.s      $f4, $f6, $f4
/* 7F068 8007E468 46003021 */  cvt.d.s    $f0, $f6
/* 7F06C 8007E46C 46207001 */  sub.d      $f0, $f14, $f0
/* 7F070 8007E470 46200220 */  cvt.s.d    $f8, $f0
/* 7F074 8007E474 460A4002 */  mul.s      $f0, $f8, $f10
/* 7F078 8007E478 46002100 */  add.s      $f4, $f4, $f0
/* 7F07C 8007E47C E4A40000 */  swc1       $f4, 0x0($a1)
/* 7F080 8007E480 C5020004 */  lwc1       $f2, 0x4($t0)
/* 7F084 8007E484 46023082 */  mul.s      $f2, $f6, $f2
/* 7F088 8007E488 C5200004 */  lwc1       $f0, 0x4($t1)
/* 7F08C 8007E48C 46004002 */  mul.s      $f0, $f8, $f0
/* 7F090 8007E490 46001080 */  add.s      $f2, $f2, $f0
/* 7F094 8007E494 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7F098 8007E498 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7F09C 8007E49C E4A20004 */  swc1       $f2, 0x4($a1)
/* 7F0A0 8007E4A0 ACC20000 */  sw         $v0, 0x0($a2)
/* 7F0A4 8007E4A4 8D420000 */  lw         $v0, 0x0($t2)
/* 7F0A8 8007E4A8 24C60004 */  addiu      $a2, $a2, 0x4
/* 7F0AC 8007E4AC ACC20000 */  sw         $v0, 0x0($a2)
/* 7F0B0 8007E4B0 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7F0B4 8007E4B4 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7F0B8 8007E4B8 24A50008 */  addiu      $a1, $a1, 0x8
/* 7F0BC 8007E4BC 24C60004 */  addiu      $a2, $a2, 0x4
/* 7F0C0 8007E4C0 24620001 */  addiu      $v0, $v1, 0x1
/* 7F0C4 8007E4C4 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7F0C8 8007E4C8 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7F0CC 8007E4CC ACE30000 */  sw         $v1, 0x0($a3)
/* 7F0D0 8007E4D0 0801F958 */  j          .L8007E560
/* 7F0D4 8007E4D4 24E70004 */   addiu     $a3, $a3, 0x4
.L8007E4D8:
/* 7F0D8 8007E4D8 460C3001 */  sub.s      $f0, $f6, $f12
/* 7F0DC 8007E4DC 46222081 */  sub.d      $f2, $f4, $f2
/* 7F0E0 8007E4E0 46000021 */  cvt.d.s    $f0, $f0
/* 7F0E4 8007E4E4 46201083 */  div.d      $f2, $f2, $f0
/* 7F0E8 8007E4E8 C5040000 */  lwc1       $f4, 0x0($t0)
/* 7F0EC 8007E4EC 462011A0 */  cvt.s.d    $f6, $f2
/* 7F0F0 8007E4F0 46043102 */  mul.s      $f4, $f6, $f4
/* 7F0F4 8007E4F4 46003021 */  cvt.d.s    $f0, $f6
/* 7F0F8 8007E4F8 46207001 */  sub.d      $f0, $f14, $f0
/* 7F0FC 8007E4FC 46200220 */  cvt.s.d    $f8, $f0
/* 7F100 8007E500 460A4002 */  mul.s      $f0, $f8, $f10
/* 7F104 8007E504 46002100 */  add.s      $f4, $f4, $f0
/* 7F108 8007E508 E4A40000 */  swc1       $f4, 0x0($a1)
/* 7F10C 8007E50C C5020004 */  lwc1       $f2, 0x4($t0)
/* 7F110 8007E510 46023082 */  mul.s      $f2, $f6, $f2
/* 7F114 8007E514 C5200004 */  lwc1       $f0, 0x4($t1)
/* 7F118 8007E518 46004002 */  mul.s      $f0, $f8, $f0
/* 7F11C 8007E51C 46001080 */  add.s      $f2, $f2, $f0
/* 7F120 8007E520 3C02802B */  lui        $v0, %hi(D_802B7BC0)
/* 7F124 8007E524 8C427BC0 */  lw         $v0, %lo(D_802B7BC0)($v0)
/* 7F128 8007E528 E4A20004 */  swc1       $f2, 0x4($a1)
/* 7F12C 8007E52C ACE20000 */  sw         $v0, 0x0($a3)
/* 7F130 8007E530 8D420000 */  lw         $v0, 0x0($t2)
/* 7F134 8007E534 24E70004 */  addiu      $a3, $a3, 0x4
/* 7F138 8007E538 ACE20000 */  sw         $v0, 0x0($a3)
/* 7F13C 8007E53C 3C03802B */  lui        $v1, %hi(D_802B7BC0)
/* 7F140 8007E540 8C637BC0 */  lw         $v1, %lo(D_802B7BC0)($v1)
/* 7F144 8007E544 24A50008 */  addiu      $a1, $a1, 0x8
/* 7F148 8007E548 24E70004 */  addiu      $a3, $a3, 0x4
/* 7F14C 8007E54C 24620001 */  addiu      $v0, $v1, 0x1
/* 7F150 8007E550 3C01802B */  lui        $at, %hi(D_802B7BC0)
/* 7F154 8007E554 AC227BC0 */  sw         $v0, %lo(D_802B7BC0)($at)
/* 7F158 8007E558 ACC30000 */  sw         $v1, 0x0($a2)
.L8007E55C:
/* 7F15C 8007E55C 24C60004 */  addiu      $a2, $a2, 0x4
.L8007E560:
/* 7F160 8007E560 01204021 */  addu       $t0, $t1, $zero
.L8007E564:
/* 7F164 8007E564 46006186 */  mov.s      $f6, $f12
/* 7F168 8007E568 256BFFFF */  addiu      $t3, $t3, -0x1
/* 7F16C 8007E56C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 7F170 8007E570 1562FF84 */  bne        $t3, $v0, .L8007E384
/* 7F174 8007E574 254A0004 */   addiu     $t2, $t2, 0x4
.L8007E578:
/* 7F178 8007E578 3C04802C */  lui        $a0, %hi(D_802BA460)
/* 7F17C 8007E57C 2484A460 */  addiu      $a0, $a0, %lo(D_802BA460)
/* 7F180 8007E580 000F1080 */  sll        $v0, $t7, 2
/* 7F184 8007E584 004F1021 */  addu       $v0, $v0, $t7
/* 7F188 8007E588 00021900 */  sll        $v1, $v0, 4
/* 7F18C 8007E58C 00641821 */  addu       $v1, $v1, $a0
/* 7F190 8007E590 00182880 */  sll        $a1, $t8, 2
/* 7F194 8007E594 00A32821 */  addu       $a1, $a1, $v1
/* 7F198 8007E598 000211C0 */  sll        $v0, $v0, 7
/* 7F19C 8007E59C 00181940 */  sll        $v1, $t8, 5
/* 7F1A0 8007E5A0 3C04802B */  lui        $a0, %hi(D_802B7C40)
/* 7F1A4 8007E5A4 24847C40 */  addiu      $a0, $a0, %lo(D_802B7C40)
/* 7F1A8 8007E5A8 00641821 */  addu       $v1, $v1, $a0
/* 7F1AC 8007E5AC 00431021 */  addu       $v0, $v0, $v1
/* 7F1B0 8007E5B0 00C21023 */  subu       $v0, $a2, $v0
/* 7F1B4 8007E5B4 00021083 */  sra        $v0, $v0, 2
/* 7F1B8 8007E5B8 ACA20000 */  sw         $v0, 0x0($a1)
/* 7F1BC 8007E5BC 3C02802B */  lui        $v0, %hi(D_802B7BE8)
/* 7F1C0 8007E5C0 24427BE8 */  addiu      $v0, $v0, %lo(D_802B7BE8)
/* 7F1C4 8007E5C4 00E21023 */  subu       $v0, $a3, $v0
/* 7F1C8 8007E5C8 00021083 */  sra        $v0, $v0, 2
/* 7F1CC 8007E5CC 3C01802C */  lui        $at, %hi(D_802BA448)
/* 7F1D0 8007E5D0 AC22A448 */  sw         $v0, %lo(D_802BA448)($at)
.L8007E5D4:
/* 7F1D4 8007E5D4 03E00008 */  jr         $ra
/* 7F1D8 8007E5D8 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8007E5DC
/* 7F1DC 8007E5DC D4800000 */  ldc1       $f0, 0x0($a0)
/* 7F1E0 8007E5E0 3C01800D */  lui        $at, %hi(D_800D6298)
/* 7F1E4 8007E5E4 D4226298 */  ldc1       $f2, %lo(D_800D6298)($at)
/* 7F1E8 8007E5E8 46220101 */  sub.d      $f4, $f0, $f2
/* 7F1EC 8007E5EC 46200007 */  neg.d      $f0, $f0
/* 7F1F0 8007E5F0 46220001 */  sub.d      $f0, $f0, $f2
/* 7F1F4 8007E5F4 4620203C */  c.lt.d     $f4, $f0
/* 7F1F8 8007E5F8 00000000 */  nop
/* 7F1FC 8007E5FC 00000000 */  nop
/* 7F200 8007E600 45000003 */  bc1f       .L8007E610
/* 7F204 8007E604 24030003 */   addiu     $v1, $zero, 0x3
/* 7F208 8007E608 46200106 */  mov.d      $f4, $f0
/* 7F20C 8007E60C 24030002 */  addiu      $v1, $zero, 0x2
.L8007E610:
/* 7F210 8007E610 D4860010 */  ldc1       $f6, 0x10($a0)
/* 7F214 8007E614 3C01800D */  lui        $at, %hi(D_800D62A0)
/* 7F218 8007E618 D42262A0 */  ldc1       $f2, %lo(D_800D62A0)($at)
/* 7F21C 8007E61C 46223001 */  sub.d      $f0, $f6, $f2
/* 7F220 8007E620 4620203C */  c.lt.d     $f4, $f0
/* 7F224 8007E624 00000000 */  nop
/* 7F228 8007E628 00000000 */  nop
/* 7F22C 8007E62C 45020004 */  bc1fl      .L8007E640
/* 7F230 8007E630 46203007 */   neg.d     $f0, $f6
/* 7F234 8007E634 46200106 */  mov.d      $f4, $f0
/* 7F238 8007E638 24030005 */  addiu      $v1, $zero, 0x5
/* 7F23C 8007E63C 46203007 */  neg.d      $f0, $f6
.L8007E640:
/* 7F240 8007E640 46220001 */  sub.d      $f0, $f0, $f2
/* 7F244 8007E644 4620203C */  c.lt.d     $f4, $f0
/* 7F248 8007E648 00000000 */  nop
/* 7F24C 8007E64C 45000003 */  bc1f       .L8007E65C
/* 7F250 8007E650 00000000 */   nop
/* 7F254 8007E654 46200106 */  mov.d      $f4, $f0
/* 7F258 8007E658 24030001 */  addiu      $v1, $zero, 0x1
.L8007E65C:
/* 7F25C 8007E65C 3C01800D */  lui        $at, %hi(D_800D62A8)
/* 7F260 8007E660 D42262A8 */  ldc1       $f2, %lo(D_800D62A8)($at)
/* 7F264 8007E664 46222000 */  add.d      $f0, $f4, $f2
/* 7F268 8007E668 44804000 */  mtc1       $zero, $f8
/* 7F26C 8007E66C 44804800 */  mtc1       $zero, $f9
/* 7F270 8007E670 00000000 */  nop
/* 7F274 8007E674 4628003C */  c.lt.d     $f0, $f8
/* 7F278 8007E678 00000000 */  nop
/* 7F27C 8007E67C 00000000 */  nop
/* 7F280 8007E680 4501001E */  bc1t       .L8007E6FC
/* 7F284 8007E684 2402FFFF */   addiu     $v0, $zero, -0x1
/* 7F288 8007E688 46222081 */  sub.d      $f2, $f4, $f2
/* 7F28C 8007E68C 3C01800D */  lui        $at, %hi(D_800D62B0)
/* 7F290 8007E690 D42062B0 */  ldc1       $f0, %lo(D_800D62B0)($at)
/* 7F294 8007E694 4622003C */  c.lt.d     $f0, $f2
/* 7F298 8007E698 00000000 */  nop
/* 7F29C 8007E69C 00000000 */  nop
/* 7F2A0 8007E6A0 45010016 */  bc1t       .L8007E6FC
/* 7F2A4 8007E6A4 00001021 */   addu      $v0, $zero, $zero
/* 7F2A8 8007E6A8 24020003 */  addiu      $v0, $zero, 0x3
/* 7F2AC 8007E6AC 54620007 */  bnel       $v1, $v0, .L8007E6CC
/* 7F2B0 8007E6B0 24020002 */   addiu     $v0, $zero, 0x2
/* 7F2B4 8007E6B4 4626403C */  c.lt.d     $f8, $f6
/* 7F2B8 8007E6B8 00000000 */  nop
/* 7F2BC 8007E6BC 00000000 */  nop
/* 7F2C0 8007E6C0 45030001 */  bc1tl      .L8007E6C8
/* 7F2C4 8007E6C4 24030006 */   addiu     $v1, $zero, 0x6
.L8007E6C8:
/* 7F2C8 8007E6C8 24020002 */  addiu      $v0, $zero, 0x2
.L8007E6CC:
/* 7F2CC 8007E6CC 5462000B */  bnel       $v1, $v0, .L8007E6FC
/* 7F2D0 8007E6D0 00601021 */   addu      $v0, $v1, $zero
/* 7F2D4 8007E6D4 D4820010 */  ldc1       $f2, 0x10($a0)
/* 7F2D8 8007E6D8 44800000 */  mtc1       $zero, $f0
/* 7F2DC 8007E6DC 44800800 */  mtc1       $zero, $f1
/* 7F2E0 8007E6E0 00000000 */  nop
/* 7F2E4 8007E6E4 4622003C */  c.lt.d     $f0, $f2
/* 7F2E8 8007E6E8 00000000 */  nop
/* 7F2EC 8007E6EC 00000000 */  nop
/* 7F2F0 8007E6F0 45030001 */  bc1tl      .L8007E6F8
/* 7F2F4 8007E6F4 24030004 */   addiu     $v1, $zero, 0x4
.L8007E6F8:
/* 7F2F8 8007E6F8 00601021 */  addu       $v0, $v1, $zero
.L8007E6FC:
/* 7F2FC 8007E6FC 03E00008 */  jr         $ra
/* 7F300 8007E700 00000000 */   nop

glabel func_8007E704
/* 7F304 8007E704 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* 7F308 8007E708 AFB400F0 */  sw         $s4, 0xF0($sp)
/* 7F30C 8007E70C 0080A021 */  addu       $s4, $a0, $zero
/* 7F310 8007E710 00141040 */  sll        $v0, $s4, 1
/* 7F314 8007E714 00541021 */  addu       $v0, $v0, $s4
/* 7F318 8007E718 00022900 */  sll        $a1, $v0, 4
/* 7F31C 8007E71C AFBF0104 */  sw         $ra, 0x104($sp)
/* 7F320 8007E720 AFBE0100 */  sw         $fp, 0x100($sp)
/* 7F324 8007E724 AFB700FC */  sw         $s7, 0xFC($sp)
/* 7F328 8007E728 AFB600F8 */  sw         $s6, 0xF8($sp)
/* 7F32C 8007E72C AFB500F4 */  sw         $s5, 0xF4($sp)
/* 7F330 8007E730 AFB300EC */  sw         $s3, 0xEC($sp)
/* 7F334 8007E734 AFB200E8 */  sw         $s2, 0xE8($sp)
/* 7F338 8007E738 AFB100E4 */  sw         $s1, 0xE4($sp)
/* 7F33C 8007E73C AFB000E0 */  sw         $s0, 0xE0($sp)
/* 7F340 8007E740 3C038031 */  lui        $v1, %hi(D_80312ADA)
/* 7F344 8007E744 00651821 */  addu       $v1, $v1, $a1
/* 7F348 8007E748 80632ADA */  lb         $v1, %lo(D_80312ADA)($v1)
/* 7F34C 8007E74C 24020010 */  addiu      $v0, $zero, 0x10
/* 7F350 8007E750 10620128 */  beq        $v1, $v0, .L8007EBF4
/* 7F354 8007E754 00000000 */   nop
/* 7F358 8007E758 3C048031 */  lui        $a0, %hi(D_80312AC0)
/* 7F35C 8007E75C 24842AC0 */  addiu      $a0, $a0, %lo(D_80312AC0)
/* 7F360 8007E760 0C01F977 */  jal        func_8007E5DC
/* 7F364 8007E764 00A42021 */   addu      $a0, $a1, $a0
/* 7F368 8007E768 3C01802C */  lui        $at, %hi(D_802BA978)
/* 7F36C 8007E76C AC22A978 */  sw         $v0, %lo(D_802BA978)($at)
/* 7F370 8007E770 10400120 */  beqz       $v0, .L8007EBF4
/* 7F374 8007E774 00141080 */   sll       $v0, $s4, 2
/* 7F378 8007E778 3C04803F */  lui        $a0, %hi(D_803F5AD8)
/* 7F37C 8007E77C 8C845AD8 */  lw         $a0, %lo(D_803F5AD8)($a0)
/* 7F380 8007E780 00541021 */  addu       $v0, $v0, $s4
/* 7F384 8007E784 00021080 */  sll        $v0, $v0, 2
/* 7F388 8007E788 0054A821 */  addu       $s5, $v0, $s4
/* 7F38C 8007E78C 0C00222A */  jal        func_800088A8
/* 7F390 8007E790 00042200 */   sll       $a0, $a0, 8
/* 7F394 8007E794 3C02802C */  lui        $v0, %hi(D_802BA978)
/* 7F398 8007E798 8C42A978 */  lw         $v0, %lo(D_802BA978)($v0)
/* 7F39C 8007E79C 24430001 */  addiu      $v1, $v0, 0x1
/* 7F3A0 8007E7A0 2C620008 */  sltiu      $v0, $v1, 0x8
/* 7F3A4 8007E7A4 1040002D */  beqz       $v0, L8007E85C
/* 7F3A8 8007E7A8 00031080 */   sll       $v0, $v1, 2
/* 7F3AC 8007E7AC 3C01800D */  lui        $at, %hi(jtbl_800D62B8_main)
/* 7F3B0 8007E7B0 00220821 */  addu       $at, $at, $v0
/* 7F3B4 8007E7B4 8C2262B8 */  lw         $v0, %lo(jtbl_800D62B8_main)($at)
/* 7F3B8 8007E7B8 00400008 */  jr         $v0
/* 7F3BC 8007E7BC 00000000 */   nop
glabel L8007E7C0
/* 7F3C0 8007E7C0 3C01800D */  lui        $at, %hi(D_800D62D8)
/* 7F3C4 8007E7C4 D42062D8 */  ldc1       $f0, %lo(D_800D62D8)($at)
/* 7F3C8 8007E7C8 3C01800D */  lui        $at, %hi(D_800D62E0)
/* 7F3CC 8007E7CC D42262E0 */  ldc1       $f2, %lo(D_800D62E0)($at)
/* 7F3D0 8007E7D0 3C01802C */  lui        $at, %hi(D_802BA960)
/* 7F3D4 8007E7D4 AC20A960 */  sw         $zero, %lo(D_802BA960)($at)
/* 7F3D8 8007E7D8 0801FA11 */  j          .L8007E844
/* 7F3DC 8007E7DC 24020001 */   addiu     $v0, $zero, 0x1
glabel L8007E7E0
/* 7F3E0 8007E7E0 3C01800D */  lui        $at, %hi(D_800D62E8)
/* 7F3E4 8007E7E4 D42062E8 */  ldc1       $f0, %lo(D_800D62E8)($at)
/* 7F3E8 8007E7E8 3C01800D */  lui        $at, %hi(D_800D62F0)
/* 7F3EC 8007E7EC D42262F0 */  ldc1       $f2, %lo(D_800D62F0)($at)
/* 7F3F0 8007E7F0 3C01802C */  lui        $at, %hi(D_802BA960)
/* 7F3F4 8007E7F4 AC20A960 */  sw         $zero, %lo(D_802BA960)($at)
/* 7F3F8 8007E7F8 0801FA11 */  j          .L8007E844
/* 7F3FC 8007E7FC 2402FFFF */   addiu     $v0, $zero, -0x1
glabel L8007E800
/* 7F400 8007E800 3C01800D */  lui        $at, %hi(D_800D62F8)
/* 7F404 8007E804 D42062F8 */  ldc1       $f0, %lo(D_800D62F8)($at)
/* 7F408 8007E808 3C01800D */  lui        $at, %hi(D_800D6300)
/* 7F40C 8007E80C D4226300 */  ldc1       $f2, %lo(D_800D6300)($at)
/* 7F410 8007E810 24020002 */  addiu      $v0, $zero, 0x2
/* 7F414 8007E814 3C01802C */  lui        $at, %hi(D_802BA960)
/* 7F418 8007E818 AC22A960 */  sw         $v0, %lo(D_802BA960)($at)
/* 7F41C 8007E81C 0801FA11 */  j          .L8007E844
/* 7F420 8007E820 24020001 */   addiu     $v0, $zero, 0x1
glabel L8007E824
/* 7F424 8007E824 3C01800D */  lui        $at, %hi(D_800D6308)
/* 7F428 8007E828 D4206308 */  ldc1       $f0, %lo(D_800D6308)($at)
/* 7F42C 8007E82C 3C01800D */  lui        $at, %hi(D_800D6310)
/* 7F430 8007E830 D4226310 */  ldc1       $f2, %lo(D_800D6310)($at)
/* 7F434 8007E834 24020002 */  addiu      $v0, $zero, 0x2
/* 7F438 8007E838 3C01802C */  lui        $at, %hi(D_802BA960)
/* 7F43C 8007E83C AC22A960 */  sw         $v0, %lo(D_802BA960)($at)
/* 7F440 8007E840 2402FFFF */  addiu      $v0, $zero, -0x1
.L8007E844:
/* 7F444 8007E844 3C01802C */  lui        $at, %hi(D_802BA964)
/* 7F448 8007E848 AC22A964 */  sw         $v0, %lo(D_802BA964)($at)
/* 7F44C 8007E84C 3C01802C */  lui        $at, %hi(D_802BA968)
/* 7F450 8007E850 F420A968 */  sdc1       $f0, %lo(D_802BA968)($at)
/* 7F454 8007E854 3C01802C */  lui        $at, %hi(D_802BA970)
/* 7F458 8007E858 F422A970 */  sdc1       $f2, %lo(D_802BA970)($at)
glabel L8007E85C
/* 7F45C 8007E85C 3C03802C */  lui        $v1, %hi(D_802BA978)
/* 7F460 8007E860 8C63A978 */  lw         $v1, %lo(D_802BA978)($v1)
/* 7F464 8007E864 2402FFFF */  addiu      $v0, $zero, -0x1
/* 7F468 8007E868 14620020 */  bne        $v1, $v0, .L8007E8EC
/* 7F46C 8007E86C 00008021 */   addu      $s0, $zero, $zero
/* 7F470 8007E870 24060020 */  addiu      $a2, $zero, 0x20
/* 7F474 8007E874 3C014200 */  lui        $at, (0x42000000 >> 16)
/* 7F478 8007E878 44812000 */  mtc1       $at, $f4
/* 7F47C 8007E87C 27A40010 */  addiu      $a0, $sp, 0x10
/* 7F480 8007E880 001518C0 */  sll        $v1, $s5, 3
/* 7F484 8007E884 3C02802B */  lui        $v0, %hi(D_802B5BC0)
/* 7F488 8007E888 24425BC0 */  addiu      $v0, $v0, %lo(D_802B5BC0)
/* 7F48C 8007E88C 00622821 */  addu       $a1, $v1, $v0
.L8007E890:
/* 7F490 8007E890 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 7F494 8007E894 46040002 */  mul.s      $f0, $f0, $f4
/* 7F498 8007E898 A4860002 */  sh         $a2, 0x2($a0)
/* 7F49C 8007E89C 4600008D */  trunc.w.s  $f2, $f0
/* 7F4A0 8007E8A0 44021000 */  mfc1       $v0, $f2
/* 7F4A4 8007E8A4 00000000 */  nop
/* 7F4A8 8007E8A8 A4820000 */  sh         $v0, 0x0($a0)
/* 7F4AC 8007E8AC C4A00004 */  lwc1       $f0, 0x4($a1)
/* 7F4B0 8007E8B0 46040002 */  mul.s      $f0, $f0, $f4
/* 7F4B4 8007E8B4 26100001 */  addiu      $s0, $s0, 0x1
/* 7F4B8 8007E8B8 24A50008 */  addiu      $a1, $a1, 0x8
/* 7F4BC 8007E8BC 4600008D */  trunc.w.s  $f2, $f0
/* 7F4C0 8007E8C0 44021000 */  mfc1       $v0, $f2
/* 7F4C4 8007E8C4 00000000 */  nop
/* 7F4C8 8007E8C8 A4820004 */  sh         $v0, 0x4($a0)
/* 7F4CC 8007E8CC 2A020015 */  slti       $v0, $s0, 0x15
/* 7F4D0 8007E8D0 1440FFEF */  bnez       $v0, .L8007E890
/* 7F4D4 8007E8D4 24840006 */   addiu     $a0, $a0, 0x6
/* 7F4D8 8007E8D8 27A40010 */  addiu      $a0, $sp, 0x10
/* 7F4DC 8007E8DC 0C002235 */  jal        func_800088D4
/* 7F4E0 8007E8E0 24050015 */   addiu     $a1, $zero, 0x15
/* 7F4E4 8007E8E4 0801FAFD */  j          .L8007EBF4
/* 7F4E8 8007E8E8 00000000 */   nop
.L8007E8EC:
/* 7F4EC 8007E8EC 2417FFFF */  addiu      $s7, $zero, -0x1
/* 7F4F0 8007E8F0 26BE0014 */  addiu      $fp, $s5, 0x14
/* 7F4F4 8007E8F4 3C16802B */  lui        $s6, %hi(D_802B5BC0)
/* 7F4F8 8007E8F8 26D65BC0 */  addiu      $s6, $s6, %lo(D_802B5BC0)
/* 7F4FC 8007E8FC 26B30001 */  addiu      $s3, $s5, 0x1
/* 7F500 8007E900 02A09021 */  addu       $s2, $s5, $zero
/* 7F504 8007E904 3C03802C */  lui        $v1, %hi(D_802BA460)
/* 7F508 8007E908 2463A460 */  addiu      $v1, $v1, %lo(D_802BA460)
/* 7F50C 8007E90C 00141080 */  sll        $v0, $s4, 2
/* 7F510 8007E910 00541021 */  addu       $v0, $v0, $s4
/* 7F514 8007E914 00021100 */  sll        $v0, $v0, 4
/* 7F518 8007E918 00438821 */  addu       $s1, $v0, $v1
.L8007E91C:
/* 7F51C 8007E91C 3C03802C */  lui        $v1, %hi(D_802BA978)
/* 7F520 8007E920 8C63A978 */  lw         $v1, %lo(D_802BA978)($v1)
/* 7F524 8007E924 24020003 */  addiu      $v0, $zero, 0x3
/* 7F528 8007E928 3C01802C */  lui        $at, %hi(D_802BA440)
/* 7F52C 8007E92C AC22A440 */  sw         $v0, %lo(D_802BA440)($at)
/* 7F530 8007E930 3C01802C */  lui        $at, %hi(D_802BA444)
/* 7F534 8007E934 AC20A444 */  sw         $zero, %lo(D_802BA444)($at)
/* 7F538 8007E938 3C01802C */  lui        $at, %hi(D_802BA448)
/* 7F53C 8007E93C 1077001F */  beq        $v1, $s7, .L8007E9BC
/* 7F540 8007E940 AC20A448 */   sw        $zero, %lo(D_802BA448)($at)
/* 7F544 8007E944 12000003 */  beqz       $s0, .L8007E954
/* 7F548 8007E948 AFB500D0 */   sw        $s5, 0xD0($sp)
/* 7F54C 8007E94C 0801FA56 */  j          .L8007E958
/* 7F550 8007E950 AFB200D4 */   sw        $s2, 0xD4($sp)
.L8007E954:
/* 7F554 8007E954 AFBE00D4 */  sw         $fp, 0xD4($sp)
.L8007E958:
/* 7F558 8007E958 27A400D0 */  addiu      $a0, $sp, 0xD0
/* 7F55C 8007E95C 0C01F6A9 */  jal        func_8007DAA4
/* 7F560 8007E960 AFB300D8 */   sw        $s3, 0xD8($sp)
/* 7F564 8007E964 3C02802C */  lui        $v0, %hi(D_802BA44C)
/* 7F568 8007E968 8C42A44C */  lw         $v0, %lo(D_802BA44C)($v0)
/* 7F56C 8007E96C 5040001D */  beql       $v0, $zero, .L8007E9E4
/* 7F570 8007E970 AE200000 */   sw        $zero, 0x0($s1)
/* 7F574 8007E974 0C01F754 */  jal        func_8007DD50
/* 7F578 8007E978 00000000 */   nop
/* 7F57C 8007E97C 3C02802C */  lui        $v0, %hi(D_802BA450)
/* 7F580 8007E980 8C42A450 */  lw         $v0, %lo(D_802BA450)($v0)
/* 7F584 8007E984 50400017 */  beql       $v0, $zero, .L8007E9E4
/* 7F588 8007E988 AE200000 */   sw        $zero, 0x0($s1)
/* 7F58C 8007E98C 0C01F7E8 */  jal        func_8007DFA0
/* 7F590 8007E990 00000000 */   nop
/* 7F594 8007E994 3C02802C */  lui        $v0, %hi(D_802BA44C)
/* 7F598 8007E998 8C42A44C */  lw         $v0, %lo(D_802BA44C)($v0)
/* 7F59C 8007E99C 10400005 */  beqz       $v0, .L8007E9B4
/* 7F5A0 8007E9A0 02802021 */   addu      $a0, $s4, $zero
/* 7F5A4 8007E9A4 0C01F8A5 */  jal        func_8007E294
/* 7F5A8 8007E9A8 02002821 */   addu      $a1, $s0, $zero
/* 7F5AC 8007E9AC 0801FA79 */  j          .L8007E9E4
/* 7F5B0 8007E9B0 00000000 */   nop
.L8007E9B4:
/* 7F5B4 8007E9B4 0801FA79 */  j          .L8007E9E4
/* 7F5B8 8007E9B8 AE200000 */   sw        $zero, 0x0($s1)
.L8007E9BC:
/* 7F5BC 8007E9BC 3C01802B */  lui        $at, %hi(D_802B7BC8)
/* 7F5C0 8007E9C0 12000004 */  beqz       $s0, .L8007E9D4
/* 7F5C4 8007E9C4 AC357BC8 */   sw        $s5, %lo(D_802B7BC8)($at)
/* 7F5C8 8007E9C8 3C01802B */  lui        $at, %hi(D_802B7BCC)
/* 7F5CC 8007E9CC 0801FA77 */  j          .L8007E9DC
/* 7F5D0 8007E9D0 AC327BCC */   sw        $s2, %lo(D_802B7BCC)($at)
.L8007E9D4:
/* 7F5D4 8007E9D4 3C01802B */  lui        $at, %hi(D_802B7BCC)
/* 7F5D8 8007E9D8 AC3E7BCC */  sw         $fp, %lo(D_802B7BCC)($at)
.L8007E9DC:
/* 7F5DC 8007E9DC 3C01802B */  lui        $at, %hi(D_802B7BD0)
/* 7F5E0 8007E9E0 AC337BD0 */  sw         $s3, %lo(D_802B7BD0)($at)
.L8007E9E4:
/* 7F5E4 8007E9E4 3C05802C */  lui        $a1, %hi(D_802BA440)
/* 7F5E8 8007E9E8 8CA5A440 */  lw         $a1, %lo(D_802BA440)($a1)
/* 7F5EC 8007E9EC 10A00027 */  beqz       $a1, .L8007EA8C
/* 7F5F0 8007E9F0 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 7F5F4 8007E9F4 3C08802B */  lui        $t0, %hi(D_802B7BC8)
/* 7F5F8 8007E9F8 25087BC8 */  addiu      $t0, $t0, %lo(D_802B7BC8)
/* 7F5FC 8007E9FC 10B7001C */  beq        $a1, $s7, .L8007EA70
/* 7F600 8007EA00 27A60010 */   addiu     $a2, $sp, 0x10
/* 7F604 8007EA04 3C01802D */  lui        $at, %hi(D_802D2ACC)
/* 7F608 8007EA08 C4242ACC */  lwc1       $f4, %lo(D_802D2ACC)($at)
/* 7F60C 8007EA0C 240AFFFF */  addiu      $t2, $zero, -0x1
/* 7F610 8007EA10 27A70014 */  addiu      $a3, $sp, 0x14
/* 7F614 8007EA14 4600200D */  trunc.w.s  $f0, $f4
/* 7F618 8007EA18 44090000 */  mfc1       $t1, $f0
.L8007EA1C:
/* 7F61C 8007EA1C 8D020000 */  lw         $v0, 0x0($t0)
/* 7F620 8007EA20 000210C0 */  sll        $v0, $v0, 3
/* 7F624 8007EA24 00562021 */  addu       $a0, $v0, $s6
/* 7F628 8007EA28 C4800000 */  lwc1       $f0, 0x0($a0)
/* 7F62C 8007EA2C 46002002 */  mul.s      $f0, $f4, $f0
/* 7F630 8007EA30 4600008D */  trunc.w.s  $f2, $f0
/* 7F634 8007EA34 44021000 */  mfc1       $v0, $f2
/* 7F638 8007EA38 00000000 */  nop
/* 7F63C 8007EA3C A4C20000 */  sh         $v0, 0x0($a2)
/* 7F640 8007EA40 A4E9FFFE */  sh         $t1, -0x2($a3)
/* 7F644 8007EA44 C4800004 */  lwc1       $f0, 0x4($a0)
/* 7F648 8007EA48 46002002 */  mul.s      $f0, $f4, $f0
/* 7F64C 8007EA4C 25080004 */  addiu      $t0, $t0, 0x4
/* 7F650 8007EA50 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 7F654 8007EA54 24C60006 */  addiu      $a2, $a2, 0x6
/* 7F658 8007EA58 4600008D */  trunc.w.s  $f2, $f0
/* 7F65C 8007EA5C 44021000 */  mfc1       $v0, $f2
/* 7F660 8007EA60 00000000 */  nop
/* 7F664 8007EA64 A4E20000 */  sh         $v0, 0x0($a3)
/* 7F668 8007EA68 14AAFFEC */  bne        $a1, $t2, .L8007EA1C
/* 7F66C 8007EA6C 24E70006 */   addiu     $a3, $a3, 0x6
.L8007EA70:
/* 7F670 8007EA70 3C05802C */  lui        $a1, %hi(D_802BA440)
/* 7F674 8007EA74 8CA5A440 */  lw         $a1, %lo(D_802BA440)($a1)
/* 7F678 8007EA78 28A20003 */  slti       $v0, $a1, 0x3
/* 7F67C 8007EA7C 14400003 */  bnez       $v0, .L8007EA8C
/* 7F680 8007EA80 00000000 */   nop
/* 7F684 8007EA84 0C002235 */  jal        func_800088D4
/* 7F688 8007EA88 27A40010 */   addiu     $a0, $sp, 0x10
.L8007EA8C:
/* 7F68C 8007EA8C 3C05802C */  lui        $a1, %hi(D_802BA444)
/* 7F690 8007EA90 8CA5A444 */  lw         $a1, %lo(D_802BA444)($a1)
/* 7F694 8007EA94 10A00027 */  beqz       $a1, .L8007EB34
/* 7F698 8007EA98 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 7F69C 8007EA9C 3C08802B */  lui        $t0, %hi(D_802B7BD8)
/* 7F6A0 8007EAA0 25087BD8 */  addiu      $t0, $t0, %lo(D_802B7BD8)
/* 7F6A4 8007EAA4 10B7001C */  beq        $a1, $s7, .L8007EB18
/* 7F6A8 8007EAA8 27A60010 */   addiu     $a2, $sp, 0x10
/* 7F6AC 8007EAAC 3C01802D */  lui        $at, %hi(D_802D2ACC)
/* 7F6B0 8007EAB0 C4242ACC */  lwc1       $f4, %lo(D_802D2ACC)($at)
/* 7F6B4 8007EAB4 240AFFFF */  addiu      $t2, $zero, -0x1
/* 7F6B8 8007EAB8 27A70014 */  addiu      $a3, $sp, 0x14
/* 7F6BC 8007EABC 4600200D */  trunc.w.s  $f0, $f4
/* 7F6C0 8007EAC0 44090000 */  mfc1       $t1, $f0
.L8007EAC4:
/* 7F6C4 8007EAC4 8D020000 */  lw         $v0, 0x0($t0)
/* 7F6C8 8007EAC8 000210C0 */  sll        $v0, $v0, 3
/* 7F6CC 8007EACC 00562021 */  addu       $a0, $v0, $s6
/* 7F6D0 8007EAD0 C4800000 */  lwc1       $f0, 0x0($a0)
/* 7F6D4 8007EAD4 46002002 */  mul.s      $f0, $f4, $f0
/* 7F6D8 8007EAD8 4600008D */  trunc.w.s  $f2, $f0
/* 7F6DC 8007EADC 44021000 */  mfc1       $v0, $f2
/* 7F6E0 8007EAE0 00000000 */  nop
/* 7F6E4 8007EAE4 A4C20000 */  sh         $v0, 0x0($a2)
/* 7F6E8 8007EAE8 A4E9FFFE */  sh         $t1, -0x2($a3)
/* 7F6EC 8007EAEC C4800004 */  lwc1       $f0, 0x4($a0)
/* 7F6F0 8007EAF0 46002002 */  mul.s      $f0, $f4, $f0
/* 7F6F4 8007EAF4 25080004 */  addiu      $t0, $t0, 0x4
/* 7F6F8 8007EAF8 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 7F6FC 8007EAFC 24C60006 */  addiu      $a2, $a2, 0x6
/* 7F700 8007EB00 4600008D */  trunc.w.s  $f2, $f0
/* 7F704 8007EB04 44021000 */  mfc1       $v0, $f2
/* 7F708 8007EB08 00000000 */  nop
/* 7F70C 8007EB0C A4E20000 */  sh         $v0, 0x0($a3)
/* 7F710 8007EB10 14AAFFEC */  bne        $a1, $t2, .L8007EAC4
/* 7F714 8007EB14 24E70006 */   addiu     $a3, $a3, 0x6
.L8007EB18:
/* 7F718 8007EB18 3C05802C */  lui        $a1, %hi(D_802BA444)
/* 7F71C 8007EB1C 8CA5A444 */  lw         $a1, %lo(D_802BA444)($a1)
/* 7F720 8007EB20 28A20003 */  slti       $v0, $a1, 0x3
/* 7F724 8007EB24 14400003 */  bnez       $v0, .L8007EB34
/* 7F728 8007EB28 00000000 */   nop
/* 7F72C 8007EB2C 0C002235 */  jal        func_800088D4
/* 7F730 8007EB30 27A40010 */   addiu     $a0, $sp, 0x10
.L8007EB34:
/* 7F734 8007EB34 3C05802C */  lui        $a1, %hi(D_802BA448)
/* 7F738 8007EB38 8CA5A448 */  lw         $a1, %lo(D_802BA448)($a1)
/* 7F73C 8007EB3C 10A00027 */  beqz       $a1, .L8007EBDC
/* 7F740 8007EB40 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 7F744 8007EB44 3C08802B */  lui        $t0, %hi(D_802B7BE8)
/* 7F748 8007EB48 25087BE8 */  addiu      $t0, $t0, %lo(D_802B7BE8)
/* 7F74C 8007EB4C 10B7001C */  beq        $a1, $s7, .L8007EBC0
/* 7F750 8007EB50 27A60010 */   addiu     $a2, $sp, 0x10
/* 7F754 8007EB54 3C01802D */  lui        $at, %hi(D_802D2ACC)
/* 7F758 8007EB58 C4242ACC */  lwc1       $f4, %lo(D_802D2ACC)($at)
/* 7F75C 8007EB5C 240AFFFF */  addiu      $t2, $zero, -0x1
/* 7F760 8007EB60 27A70014 */  addiu      $a3, $sp, 0x14
/* 7F764 8007EB64 4600200D */  trunc.w.s  $f0, $f4
/* 7F768 8007EB68 44090000 */  mfc1       $t1, $f0
.L8007EB6C:
/* 7F76C 8007EB6C 8D020000 */  lw         $v0, 0x0($t0)
/* 7F770 8007EB70 000210C0 */  sll        $v0, $v0, 3
/* 7F774 8007EB74 00562021 */  addu       $a0, $v0, $s6
/* 7F778 8007EB78 C4800000 */  lwc1       $f0, 0x0($a0)
/* 7F77C 8007EB7C 46002002 */  mul.s      $f0, $f4, $f0
/* 7F780 8007EB80 4600008D */  trunc.w.s  $f2, $f0
/* 7F784 8007EB84 44021000 */  mfc1       $v0, $f2
/* 7F788 8007EB88 00000000 */  nop
/* 7F78C 8007EB8C A4C20000 */  sh         $v0, 0x0($a2)
/* 7F790 8007EB90 A4E9FFFE */  sh         $t1, -0x2($a3)
/* 7F794 8007EB94 C4800004 */  lwc1       $f0, 0x4($a0)
/* 7F798 8007EB98 46002002 */  mul.s      $f0, $f4, $f0
/* 7F79C 8007EB9C 25080004 */  addiu      $t0, $t0, 0x4
/* 7F7A0 8007EBA0 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 7F7A4 8007EBA4 24C60006 */  addiu      $a2, $a2, 0x6
/* 7F7A8 8007EBA8 4600008D */  trunc.w.s  $f2, $f0
/* 7F7AC 8007EBAC 44021000 */  mfc1       $v0, $f2
/* 7F7B0 8007EBB0 00000000 */  nop
/* 7F7B4 8007EBB4 A4E20000 */  sh         $v0, 0x0($a3)
/* 7F7B8 8007EBB8 14AAFFEC */  bne        $a1, $t2, .L8007EB6C
/* 7F7BC 8007EBBC 24E70006 */   addiu     $a3, $a3, 0x6
.L8007EBC0:
/* 7F7C0 8007EBC0 3C05802C */  lui        $a1, %hi(D_802BA448)
/* 7F7C4 8007EBC4 8CA5A448 */  lw         $a1, %lo(D_802BA448)($a1)
/* 7F7C8 8007EBC8 28A20003 */  slti       $v0, $a1, 0x3
/* 7F7CC 8007EBCC 54400004 */  bnel       $v0, $zero, .L8007EBE0
/* 7F7D0 8007EBD0 26730001 */   addiu     $s3, $s3, 0x1
/* 7F7D4 8007EBD4 0C002235 */  jal        func_800088D4
/* 7F7D8 8007EBD8 27A40010 */   addiu     $a0, $sp, 0x10
.L8007EBDC:
/* 7F7DC 8007EBDC 26730001 */  addiu      $s3, $s3, 0x1
.L8007EBE0:
/* 7F7E0 8007EBE0 26520001 */  addiu      $s2, $s2, 0x1
/* 7F7E4 8007EBE4 26100001 */  addiu      $s0, $s0, 0x1
/* 7F7E8 8007EBE8 2A020014 */  slti       $v0, $s0, 0x14
/* 7F7EC 8007EBEC 1440FF4B */  bnez       $v0, .L8007E91C
/* 7F7F0 8007EBF0 26310004 */   addiu     $s1, $s1, 0x4
.L8007EBF4:
/* 7F7F4 8007EBF4 8FBF0104 */  lw         $ra, 0x104($sp)
/* 7F7F8 8007EBF8 8FBE0100 */  lw         $fp, 0x100($sp)
/* 7F7FC 8007EBFC 8FB700FC */  lw         $s7, 0xFC($sp)
/* 7F800 8007EC00 8FB600F8 */  lw         $s6, 0xF8($sp)
/* 7F804 8007EC04 8FB500F4 */  lw         $s5, 0xF4($sp)
/* 7F808 8007EC08 8FB400F0 */  lw         $s4, 0xF0($sp)
/* 7F80C 8007EC0C 8FB300EC */  lw         $s3, 0xEC($sp)
/* 7F810 8007EC10 8FB200E8 */  lw         $s2, 0xE8($sp)
/* 7F814 8007EC14 8FB100E4 */  lw         $s1, 0xE4($sp)
/* 7F818 8007EC18 8FB000E0 */  lw         $s0, 0xE0($sp)
/* 7F81C 8007EC1C 03E00008 */  jr         $ra
/* 7F820 8007EC20 27BD0108 */   addiu     $sp, $sp, 0x108

glabel func_8007EC24
/* 7F824 8007EC24 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* 7F828 8007EC28 AFB200D8 */  sw         $s2, 0xD8($sp)
/* 7F82C 8007EC2C 00809021 */  addu       $s2, $a0, $zero
/* 7F830 8007EC30 00122040 */  sll        $a0, $s2, 1
/* 7F834 8007EC34 00922021 */  addu       $a0, $a0, $s2
/* 7F838 8007EC38 00042100 */  sll        $a0, $a0, 4
/* 7F83C 8007EC3C 3C028031 */  lui        $v0, %hi(D_80312AC0)
/* 7F840 8007EC40 24422AC0 */  addiu      $v0, $v0, %lo(D_80312AC0)
/* 7F844 8007EC44 AFBF00E0 */  sw         $ra, 0xE0($sp)
/* 7F848 8007EC48 AFB300DC */  sw         $s3, 0xDC($sp)
/* 7F84C 8007EC4C AFB100D4 */  sw         $s1, 0xD4($sp)
/* 7F850 8007EC50 AFB000D0 */  sw         $s0, 0xD0($sp)
/* 7F854 8007EC54 F7BA0100 */  sdc1       $f26, 0x100($sp)
/* 7F858 8007EC58 F7B800F8 */  sdc1       $f24, 0xF8($sp)
/* 7F85C 8007EC5C F7B600F0 */  sdc1       $f22, 0xF0($sp)
/* 7F860 8007EC60 F7B400E8 */  sdc1       $f20, 0xE8($sp)
/* 7F864 8007EC64 0C01F977 */  jal        func_8007E5DC
/* 7F868 8007EC68 00822021 */   addu      $a0, $a0, $v0
/* 7F86C 8007EC6C 3C04803F */  lui        $a0, %hi(D_803F5AD8)
/* 7F870 8007EC70 8C845AD8 */  lw         $a0, %lo(D_803F5AD8)($a0)
/* 7F874 8007EC74 4480A000 */  mtc1       $zero, $f20
/* 7F878 8007EC78 00408021 */  addu       $s0, $v0, $zero
/* 7F87C 8007EC7C 4600A606 */  mov.s      $f24, $f20
/* 7F880 8007EC80 4600A686 */  mov.s      $f26, $f20
/* 7F884 8007EC84 4600A586 */  mov.s      $f22, $f20
/* 7F888 8007EC88 0C00222A */  jal        func_800088A8
/* 7F88C 8007EC8C 00042200 */   sll       $a0, $a0, 8
/* 7F890 8007EC90 2E020007 */  sltiu      $v0, $s0, 0x7
/* 7F894 8007EC94 10400045 */  beqz       $v0, .L8007EDAC
/* 7F898 8007EC98 00101080 */   sll       $v0, $s0, 2
/* 7F89C 8007EC9C 3C01800D */  lui        $at, %hi(jtbl_800D6318_main)
/* 7F8A0 8007ECA0 00220821 */  addu       $at, $at, $v0
/* 7F8A4 8007ECA4 8C226318 */  lw         $v0, %lo(jtbl_800D6318_main)($at)
/* 7F8A8 8007ECA8 00400008 */  jr         $v0
/* 7F8AC 8007ECAC 00000000 */   nop
glabel L8007ECB0
/* 7F8B0 8007ECB0 2603FFFF */  addiu      $v1, $s0, -0x1
/* 7F8B4 8007ECB4 00031040 */  sll        $v0, $v1, 1
/* 7F8B8 8007ECB8 00431021 */  addu       $v0, $v0, $v1
/* 7F8BC 8007ECBC 000210C0 */  sll        $v0, $v0, 3
/* 7F8C0 8007ECC0 3C01802F */  lui        $at, %hi(D_802EF148)
/* 7F8C4 8007ECC4 D422F148 */  ldc1       $f2, %lo(D_802EF148)($at)
/* 7F8C8 8007ECC8 3C01800C */  lui        $at, %hi(D_800C7148)
/* 7F8CC 8007ECCC 00220821 */  addu       $at, $at, $v0
/* 7F8D0 8007ECD0 D4287148 */  ldc1       $f8, %lo(D_800C7148)($at)
/* 7F8D4 8007ECD4 46281082 */  mul.d      $f2, $f2, $f8
/* 7F8D8 8007ECD8 3C01802F */  lui        $at, %hi(D_802EF140)
/* 7F8DC 8007ECDC D420F140 */  ldc1       $f0, %lo(D_802EF140)($at)
/* 7F8E0 8007ECE0 3C01800C */  lui        $at, %hi(D_800C7150)
/* 7F8E4 8007ECE4 00220821 */  addu       $at, $at, $v0
/* 7F8E8 8007ECE8 D4267150 */  ldc1       $f6, %lo(D_800C7150)($at)
/* 7F8EC 8007ECEC 46260002 */  mul.d      $f0, $f0, $f6
/* 7F8F0 8007ECF0 46201080 */  add.d      $f2, $f2, $f0
/* 7F8F4 8007ECF4 3C01800C */  lui        $at, %hi(D_800C7158)
/* 7F8F8 8007ECF8 00220821 */  addu       $at, $at, $v0
/* 7F8FC 8007ECFC D4247158 */  ldc1       $f4, %lo(D_800C7158)($at)
/* 7F900 8007ED00 4624103C */  c.lt.d     $f2, $f4
/* 7F904 8007ED04 00000000 */  nop
/* 7F908 8007ED08 4501006B */  bc1t       L8007EEB8
/* 7F90C 8007ED0C 00000000 */   nop
/* 7F910 8007ED10 3C01800D */  lui        $at, %hi(D_800D6338)
/* 7F914 8007ED14 D4206338 */  ldc1       $f0, %lo(D_800D6338)($at)
/* 7F918 8007ED18 46260003 */  div.d      $f0, $f0, $f6
/* 7F91C 8007ED1C 46204520 */  cvt.s.d    $f20, $f8
/* 7F920 8007ED20 4480B000 */  mtc1       $zero, $f22
/* 7F924 8007ED24 00000000 */  nop
/* 7F928 8007ED28 0801FB6A */  j          .L8007EDA8
/* 7F92C 8007ED2C 46202620 */   cvt.s.d   $f24, $f4
glabel L8007ED30
/* 7F930 8007ED30 2603FFFF */  addiu      $v1, $s0, -0x1
/* 7F934 8007ED34 00031040 */  sll        $v0, $v1, 1
/* 7F938 8007ED38 00431021 */  addu       $v0, $v0, $v1
/* 7F93C 8007ED3C 000210C0 */  sll        $v0, $v0, 3
/* 7F940 8007ED40 3C01802F */  lui        $at, %hi(D_802EF138)
/* 7F944 8007ED44 D422F138 */  ldc1       $f2, %lo(D_802EF138)($at)
/* 7F948 8007ED48 3C01800C */  lui        $at, %hi(D_800C7148)
/* 7F94C 8007ED4C 00220821 */  addu       $at, $at, $v0
/* 7F950 8007ED50 D4287148 */  ldc1       $f8, %lo(D_800C7148)($at)
/* 7F954 8007ED54 46281082 */  mul.d      $f2, $f2, $f8
/* 7F958 8007ED58 3C01802F */  lui        $at, %hi(D_802EF140)
/* 7F95C 8007ED5C D420F140 */  ldc1       $f0, %lo(D_802EF140)($at)
/* 7F960 8007ED60 3C01800C */  lui        $at, %hi(D_800C7150)
/* 7F964 8007ED64 00220821 */  addu       $at, $at, $v0
/* 7F968 8007ED68 D4267150 */  ldc1       $f6, %lo(D_800C7150)($at)
/* 7F96C 8007ED6C 46260002 */  mul.d      $f0, $f0, $f6
/* 7F970 8007ED70 46201080 */  add.d      $f2, $f2, $f0
/* 7F974 8007ED74 3C01800C */  lui        $at, %hi(D_800C7158)
/* 7F978 8007ED78 00220821 */  addu       $at, $at, $v0
/* 7F97C 8007ED7C D4247158 */  ldc1       $f4, %lo(D_800C7158)($at)
/* 7F980 8007ED80 4624103C */  c.lt.d     $f2, $f4
/* 7F984 8007ED84 00000000 */  nop
/* 7F988 8007ED88 4501004B */  bc1t       L8007EEB8
/* 7F98C 8007ED8C 00000000 */   nop
/* 7F990 8007ED90 3C01800D */  lui        $at, %hi(D_800D6340)
/* 7F994 8007ED94 D4206340 */  ldc1       $f0, %lo(D_800D6340)($at)
/* 7F998 8007ED98 46260003 */  div.d      $f0, $f0, $f6
/* 7F99C 8007ED9C 462045A0 */  cvt.s.d    $f22, $f8
/* 7F9A0 8007EDA0 46202620 */  cvt.s.d    $f24, $f4
/* 7F9A4 8007EDA4 4480A000 */  mtc1       $zero, $f20
.L8007EDA8:
/* 7F9A8 8007EDA8 462006A0 */  cvt.s.d    $f26, $f0
.L8007EDAC:
/* 7F9AC 8007EDAC 00008821 */  addu       $s1, $zero, $zero
/* 7F9B0 8007EDB0 00121080 */  sll        $v0, $s2, 2
/* 7F9B4 8007EDB4 00521021 */  addu       $v0, $v0, $s2
/* 7F9B8 8007EDB8 000299C0 */  sll        $s3, $v0, 7
/* 7F9BC 8007EDBC 3C12802B */  lui        $s2, %hi(D_802B5BC0)
/* 7F9C0 8007EDC0 26525BC0 */  addiu      $s2, $s2, %lo(D_802B5BC0)
/* 7F9C4 8007EDC4 3C03802C */  lui        $v1, %hi(D_802BA460)
/* 7F9C8 8007EDC8 2463A460 */  addiu      $v1, $v1, %lo(D_802BA460)
/* 7F9CC 8007EDCC 00021100 */  sll        $v0, $v0, 4
/* 7F9D0 8007EDD0 00438021 */  addu       $s0, $v0, $v1
.L8007EDD4:
/* 7F9D4 8007EDD4 8E050000 */  lw         $a1, 0x0($s0)
/* 7F9D8 8007EDD8 10A00033 */  beqz       $a1, .L8007EEA8
/* 7F9DC 8007EDDC 00111140 */   sll       $v0, $s1, 5
/* 7F9E0 8007EDE0 3C03802B */  lui        $v1, %hi(D_802B7C40)
/* 7F9E4 8007EDE4 24637C40 */  addiu      $v1, $v1, %lo(D_802B7C40)
/* 7F9E8 8007EDE8 00431021 */  addu       $v0, $v0, $v1
/* 7F9EC 8007EDEC 02624021 */  addu       $t0, $s3, $v0
/* 7F9F0 8007EDF0 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 7F9F4 8007EDF4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 7F9F8 8007EDF8 10A20025 */  beq        $a1, $v0, .L8007EE90
/* 7F9FC 8007EDFC 27A70010 */   addiu     $a3, $sp, 0x10
/* 7FA00 8007EE00 3C01802D */  lui        $at, %hi(D_802D2ACC)
/* 7FA04 8007EE04 C4242ACC */  lwc1       $f4, %lo(D_802D2ACC)($at)
/* 7FA08 8007EE08 2409FFFF */  addiu      $t1, $zero, -0x1
/* 7FA0C 8007EE0C 27A60014 */  addiu      $a2, $sp, 0x14
/* 7FA10 8007EE10 461A2182 */  mul.s      $f6, $f4, $f26
.L8007EE14:
/* 7FA14 8007EE14 8D030000 */  lw         $v1, 0x0($t0)
/* 7FA18 8007EE18 000318C0 */  sll        $v1, $v1, 3
/* 7FA1C 8007EE1C 00721821 */  addu       $v1, $v1, $s2
/* 7FA20 8007EE20 C4600000 */  lwc1       $f0, 0x0($v1)
/* 7FA24 8007EE24 46002002 */  mul.s      $f0, $f4, $f0
/* 7FA28 8007EE28 4600008D */  trunc.w.s  $f2, $f0
/* 7FA2C 8007EE2C 44021000 */  mfc1       $v0, $f2
/* 7FA30 8007EE30 00000000 */  nop
/* 7FA34 8007EE34 A4E20000 */  sh         $v0, 0x0($a3)
/* 7FA38 8007EE38 C4600000 */  lwc1       $f0, 0x0($v1)
/* 7FA3C 8007EE3C 4600B002 */  mul.s      $f0, $f22, $f0
/* 7FA40 8007EE40 C4620004 */  lwc1       $f2, 0x4($v1)
/* 7FA44 8007EE44 4602A082 */  mul.s      $f2, $f20, $f2
/* 7FA48 8007EE48 4600C001 */  sub.s      $f0, $f24, $f0
/* 7FA4C 8007EE4C 46020001 */  sub.s      $f0, $f0, $f2
/* 7FA50 8007EE50 46003002 */  mul.s      $f0, $f6, $f0
/* 7FA54 8007EE54 4600008D */  trunc.w.s  $f2, $f0
/* 7FA58 8007EE58 44021000 */  mfc1       $v0, $f2
/* 7FA5C 8007EE5C 00000000 */  nop
/* 7FA60 8007EE60 A4C2FFFE */  sh         $v0, -0x2($a2)
/* 7FA64 8007EE64 C4600004 */  lwc1       $f0, 0x4($v1)
/* 7FA68 8007EE68 46002002 */  mul.s      $f0, $f4, $f0
/* 7FA6C 8007EE6C 25080004 */  addiu      $t0, $t0, 0x4
/* 7FA70 8007EE70 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 7FA74 8007EE74 24E70006 */  addiu      $a3, $a3, 0x6
/* 7FA78 8007EE78 4600008D */  trunc.w.s  $f2, $f0
/* 7FA7C 8007EE7C 44021000 */  mfc1       $v0, $f2
/* 7FA80 8007EE80 00000000 */  nop
/* 7FA84 8007EE84 A4C20000 */  sh         $v0, 0x0($a2)
/* 7FA88 8007EE88 14A9FFE2 */  bne        $a1, $t1, .L8007EE14
/* 7FA8C 8007EE8C 24C60006 */   addiu     $a2, $a2, 0x6
.L8007EE90:
/* 7FA90 8007EE90 8E050000 */  lw         $a1, 0x0($s0)
/* 7FA94 8007EE94 28A20003 */  slti       $v0, $a1, 0x3
/* 7FA98 8007EE98 54400004 */  bnel       $v0, $zero, .L8007EEAC
/* 7FA9C 8007EE9C 26310001 */   addiu     $s1, $s1, 0x1
/* 7FAA0 8007EEA0 0C002235 */  jal        func_800088D4
/* 7FAA4 8007EEA4 27A40010 */   addiu     $a0, $sp, 0x10
.L8007EEA8:
/* 7FAA8 8007EEA8 26310001 */  addiu      $s1, $s1, 0x1
.L8007EEAC:
/* 7FAAC 8007EEAC 2A220014 */  slti       $v0, $s1, 0x14
/* 7FAB0 8007EEB0 1440FFC8 */  bnez       $v0, .L8007EDD4
/* 7FAB4 8007EEB4 26100004 */   addiu     $s0, $s0, 0x4
glabel L8007EEB8
/* 7FAB8 8007EEB8 8FBF00E0 */  lw         $ra, 0xE0($sp)
/* 7FABC 8007EEBC 8FB300DC */  lw         $s3, 0xDC($sp)
/* 7FAC0 8007EEC0 8FB200D8 */  lw         $s2, 0xD8($sp)
/* 7FAC4 8007EEC4 8FB100D4 */  lw         $s1, 0xD4($sp)
/* 7FAC8 8007EEC8 8FB000D0 */  lw         $s0, 0xD0($sp)
/* 7FACC 8007EECC D7BA0100 */  ldc1       $f26, 0x100($sp)
/* 7FAD0 8007EED0 D7B800F8 */  ldc1       $f24, 0xF8($sp)
/* 7FAD4 8007EED4 D7B600F0 */  ldc1       $f22, 0xF0($sp)
/* 7FAD8 8007EED8 D7B400E8 */  ldc1       $f20, 0xE8($sp)
/* 7FADC 8007EEDC 03E00008 */  jr         $ra
/* 7FAE0 8007EEE0 27BD0108 */   addiu     $sp, $sp, 0x108
/* 7FAE4 8007EEE4 00000000 */  nop
/* 7FAE8 8007EEE8 00000000 */  nop
/* 7FAEC 8007EEEC 00000000 */  nop
