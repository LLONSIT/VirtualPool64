.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8002F440
/* 30040 8002F440 3C01802B */  lui        $at, %hi(D_802AB880)
/* 30044 8002F444 D424B880 */  ldc1       $f4, %lo(D_802AB880)($at)
/* 30048 8002F448 46242102 */  mul.d      $f4, $f4, $f4
/* 3004C 8002F44C 3C01802B */  lui        $at, %hi(D_802AB8A0)
/* 30050 8002F450 D420B8A0 */  ldc1       $f0, %lo(D_802AB8A0)($at)
/* 30054 8002F454 3C01800D */  lui        $at, %hi(D_800D1608)
/* 30058 8002F458 D4221608 */  ldc1       $f2, %lo(D_800D1608)($at)
/* 3005C 8002F45C 46220002 */  mul.d      $f0, $f0, $f2
/* 30060 8002F460 3C01802B */  lui        $at, %hi(D_802AB888)
/* 30064 8002F464 D422B888 */  ldc1       $f2, %lo(D_802AB888)($at)
/* 30068 8002F468 46220002 */  mul.d      $f0, $f0, $f2
/* 3006C 8002F46C 46202301 */  sub.d      $f12, $f4, $f0
/* 30070 8002F470 44800000 */  mtc1       $zero, $f0
/* 30074 8002F474 44800800 */  mtc1       $zero, $f1
/* 30078 8002F478 00000000 */  nop
/* 3007C 8002F47C 4620603C */  c.lt.d     $f12, $f0
/* 30080 8002F480 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 30084 8002F484 00000000 */  nop
/* 30088 8002F488 45000006 */  bc1f       .L8002F4A4
/* 3008C 8002F48C AFBF0010 */   sw        $ra, 0x10($sp)
/* 30090 8002F490 3C01800D */  lui        $at, %hi(D_800D1600)
/* 30094 8002F494 D4201600 */  ldc1       $f0, %lo(D_800D1600)($at)
/* 30098 8002F498 3C01802B */  lui        $at, %hi(D_802AB8C8)
/* 3009C 8002F49C 0800BD45 */  j          .L8002F514
/* 300A0 8002F4A0 F420B8C8 */   sdc1      $f0, %lo(D_802AB8C8)($at)
.L8002F4A4:
/* 300A4 8002F4A4 46206084 */  sqrt.d     $f2, $f12
/* 300A8 8002F4A8 46221032 */  c.eq.d     $f2, $f2
/* 300AC 8002F4AC 00000000 */  nop
/* 300B0 8002F4B0 45010004 */  bc1t       .L8002F4C4
/* 300B4 8002F4B4 00000000 */   nop
/* 300B8 8002F4B8 0C026F44 */  jal        func_8009BD10
/* 300BC 8002F4BC 00000000 */   nop
/* 300C0 8002F4C0 46200086 */  mov.d      $f2, $f0
.L8002F4C4:
/* 300C4 8002F4C4 3C01802B */  lui        $at, %hi(D_802AB880)
/* 300C8 8002F4C8 D420B880 */  ldc1       $f0, %lo(D_802AB880)($at)
/* 300CC 8002F4CC 46201306 */  mov.d      $f12, $f2
/* 300D0 8002F4D0 462C0080 */  add.d      $f2, $f0, $f12
/* 300D4 8002F4D4 3C01802B */  lui        $at, %hi(D_802AB8A0)
/* 300D8 8002F4D8 D424B8A0 */  ldc1       $f4, %lo(D_802AB8A0)($at)
/* 300DC 8002F4DC 46201087 */  neg.d      $f2, $f2
/* 300E0 8002F4E0 46241083 */  div.d      $f2, $f2, $f4
/* 300E4 8002F4E4 462C0001 */  sub.d      $f0, $f0, $f12
/* 300E8 8002F4E8 46200007 */  neg.d      $f0, $f0
/* 300EC 8002F4EC 46240003 */  div.d      $f0, $f0, $f4
/* 300F0 8002F4F0 4622003C */  c.lt.d     $f0, $f2
/* 300F4 8002F4F4 3C01802B */  lui        $at, %hi(D_802AB8C0)
/* 300F8 8002F4F8 F422B8C0 */  sdc1       $f2, %lo(D_802AB8C0)($at)
/* 300FC 8002F4FC 3C01802B */  lui        $at, %hi(D_802AB8C8)
/* 30100 8002F500 F420B8C8 */  sdc1       $f0, %lo(D_802AB8C8)($at)
/* 30104 8002F504 45000005 */  bc1f       .L8002F51C
/* 30108 8002F508 00000000 */   nop
/* 3010C 8002F50C 3C01802B */  lui        $at, %hi(D_802AB8C8)
/* 30110 8002F510 F422B8C8 */  sdc1       $f2, %lo(D_802AB8C8)($at)
.L8002F514:
/* 30114 8002F514 3C01802B */  lui        $at, %hi(D_802AB8C0)
/* 30118 8002F518 F420B8C0 */  sdc1       $f0, %lo(D_802AB8C0)($at)
.L8002F51C:
/* 3011C 8002F51C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 30120 8002F520 03E00008 */  jr         $ra
/* 30124 8002F524 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002F528
/* 30128 8002F528 D48C0000 */  ldc1       $f12, 0x0($a0)
/* 3012C 8002F52C 24840008 */  addiu      $a0, $a0, 0x8
/* 30130 8002F530 D48A0000 */  ldc1       $f10, 0x0($a0)
/* 30134 8002F534 24840008 */  addiu      $a0, $a0, 0x8
/* 30138 8002F538 D4800000 */  ldc1       $f0, 0x0($a0)
/* 3013C 8002F53C 24840008 */  addiu      $a0, $a0, 0x8
/* 30140 8002F540 D4880008 */  ldc1       $f8, 0x8($a0)
/* 30144 8002F544 3C01800D */  lui        $at, %hi(D_800D1610)
/* 30148 8002F548 D4241610 */  ldc1       $f4, %lo(D_800D1610)($at)
/* 3014C 8002F54C D4860000 */  ldc1       $f6, 0x0($a0)
/* 30150 8002F550 46244102 */  mul.d      $f4, $f8, $f4
/* 30154 8002F554 3C01800D */  lui        $at, %hi(D_800D1618)
/* 30158 8002F558 D4221618 */  ldc1       $f2, %lo(D_800D1618)($at)
/* 3015C 8002F55C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 30160 8002F560 AFBF0010 */  sw         $ra, 0x10($sp)
/* 30164 8002F564 3C01802B */  lui        $at, %hi(D_802AB870)
/* 30168 8002F568 AC26B870 */  sw         $a2, %lo(D_802AB870)($at)
/* 3016C 8002F56C 3C01802B */  lui        $at, %hi(D_802AB874)
/* 30170 8002F570 AC27B874 */  sw         $a3, %lo(D_802AB874)($at)
/* 30174 8002F574 3C01802B */  lui        $at, %hi(D_802AB888)
/* 30178 8002F578 F420B888 */  sdc1       $f0, %lo(D_802AB888)($at)
/* 3017C 8002F57C 46200000 */  add.d      $f0, $f0, $f0
/* 30180 8002F580 46223082 */  mul.d      $f2, $f6, $f2
/* 30184 8002F584 3C01802B */  lui        $at, %hi(D_802AB898)
/* 30188 8002F588 F42CB898 */  sdc1       $f12, %lo(D_802AB898)($at)
/* 3018C 8002F58C 3C01802B */  lui        $at, %hi(D_802AB890)
/* 30190 8002F590 F42AB890 */  sdc1       $f10, %lo(D_802AB890)($at)
/* 30194 8002F594 3C01802B */  lui        $at, %hi(D_802AB880)
/* 30198 8002F598 F426B880 */  sdc1       $f6, %lo(D_802AB880)($at)
/* 3019C 8002F59C 3C01802B */  lui        $at, %hi(D_802AB878)
/* 301A0 8002F5A0 F428B878 */  sdc1       $f8, %lo(D_802AB878)($at)
/* 301A4 8002F5A4 3C01802B */  lui        $at, %hi(D_802AB8B8)
/* 301A8 8002F5A8 F42AB8B8 */  sdc1       $f10, %lo(D_802AB8B8)($at)
/* 301AC 8002F5AC 3C01802B */  lui        $at, %hi(D_802AB8B0)
/* 301B0 8002F5B0 F420B8B0 */  sdc1       $f0, %lo(D_802AB8B0)($at)
/* 301B4 8002F5B4 3C01802B */  lui        $at, %hi(D_802AB8A0)
/* 301B8 8002F5B8 F424B8A0 */  sdc1       $f4, %lo(D_802AB8A0)($at)
/* 301BC 8002F5BC 3C01802B */  lui        $at, %hi(D_802AB8A8)
/* 301C0 8002F5C0 0C00BD10 */  jal        func_8002F440
/* 301C4 8002F5C4 F422B8A8 */   sdc1      $f2, %lo(D_802AB8A8)($at)
/* 301C8 8002F5C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 301CC 8002F5CC 03E00008 */  jr         $ra
/* 301D0 8002F5D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002F5D4
/* 301D4 8002F5D4 3C01802B */  lui        $at, %hi(D_802AB8C0)
/* 301D8 8002F5D8 D420B8C0 */  ldc1       $f0, %lo(D_802AB8C0)($at)
/* 301DC 8002F5DC 44802000 */  mtc1       $zero, $f4
/* 301E0 8002F5E0 44802800 */  mtc1       $zero, $f5
/* 301E4 8002F5E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 301E8 8002F5E8 F7BA0018 */  sdc1       $f26, 0x18($sp)
/* 301EC 8002F5EC F7B80010 */  sdc1       $f24, 0x10($sp)
/* 301F0 8002F5F0 4624003C */  c.lt.d     $f0, $f4
/* 301F4 8002F5F4 F7B60008 */  sdc1       $f22, 0x8($sp)
/* 301F8 8002F5F8 F7B40000 */  sdc1       $f20, 0x0($sp)
/* 301FC 8002F5FC 4500000D */  bc1f       .L8002F634
/* 30200 8002F600 46200086 */   mov.d     $f2, $f0
/* 30204 8002F604 3C01800D */  lui        $at, %hi(D_800D1620)
/* 30208 8002F608 D4221620 */  ldc1       $f2, %lo(D_800D1620)($at)
/* 3020C 8002F60C 46220032 */  c.eq.d     $f0, $f2
/* 30210 8002F610 00000000 */  nop
/* 30214 8002F614 00000000 */  nop
/* 30218 8002F618 45000050 */  bc1f       .L8002F75C
/* 3021C 8002F61C 46201006 */   mov.d     $f0, $f2
/* 30220 8002F620 0800BD8D */  j          .L8002F634
/* 30224 8002F624 46202086 */   mov.d     $f2, $f4
.L8002F628:
/* 30228 8002F628 3C01800D */  lui        $at, %hi(D_800D1620)
/* 3022C 8002F62C 0800BDD7 */  j          .L8002F75C
/* 30230 8002F630 D4201620 */   ldc1      $f0, %lo(D_800D1620)($at)
.L8002F634:
/* 30234 8002F634 3C01802B */  lui        $at, %hi(D_802AB878)
/* 30238 8002F638 D432B878 */  ldc1       $f18, %lo(D_802AB878)($at)
/* 3023C 8002F63C 46229002 */  mul.d      $f0, $f18, $f2
/* 30240 8002F640 3C01802B */  lui        $at, %hi(D_802AB880)
/* 30244 8002F644 D430B880 */  ldc1       $f16, %lo(D_802AB880)($at)
/* 30248 8002F648 46300000 */  add.d      $f0, $f0, $f16
/* 3024C 8002F64C 46220002 */  mul.d      $f0, $f0, $f2
/* 30250 8002F650 3C01802B */  lui        $at, %hi(D_802AB888)
/* 30254 8002F654 D42EB888 */  ldc1       $f14, %lo(D_802AB888)($at)
/* 30258 8002F658 462E0000 */  add.d      $f0, $f0, $f14
/* 3025C 8002F65C 46220002 */  mul.d      $f0, $f0, $f2
/* 30260 8002F660 3C01802B */  lui        $at, %hi(D_802AB890)
/* 30264 8002F664 D428B890 */  ldc1       $f8, %lo(D_802AB890)($at)
/* 30268 8002F668 46280000 */  add.d      $f0, $f0, $f8
/* 3026C 8002F66C 46220002 */  mul.d      $f0, $f0, $f2
/* 30270 8002F670 3C01802B */  lui        $at, %hi(D_802AB898)
/* 30274 8002F674 D426B898 */  ldc1       $f6, %lo(D_802AB898)($at)
/* 30278 8002F678 46260100 */  add.d      $f4, $f0, $f6
/* 3027C 8002F67C 3C01800D */  lui        $at, %hi(D_800D1628)
/* 30280 8002F680 D42A1628 */  ldc1       $f10, %lo(D_800D1628)($at)
/* 30284 8002F684 46202005 */  abs.d      $f0, $f4
/* 30288 8002F688 462A003E */  c.le.d     $f0, $f10
/* 3028C 8002F68C 00000000 */  nop
/* 30290 8002F690 00000000 */  nop
/* 30294 8002F694 45010031 */  bc1t       .L8002F75C
/* 30298 8002F698 46201006 */   mov.d     $f0, $f2
/* 3029C 8002F69C 3C01802B */  lui        $at, %hi(D_802AB8A0)
/* 302A0 8002F6A0 D43AB8A0 */  ldc1       $f26, %lo(D_802AB8A0)($at)
/* 302A4 8002F6A4 3C01802B */  lui        $at, %hi(D_802AB8A8)
/* 302A8 8002F6A8 D438B8A8 */  ldc1       $f24, %lo(D_802AB8A8)($at)
/* 302AC 8002F6AC 3C01802B */  lui        $at, %hi(D_802AB8B0)
/* 302B0 8002F6B0 D436B8B0 */  ldc1       $f22, %lo(D_802AB8B0)($at)
/* 302B4 8002F6B4 3C01802B */  lui        $at, %hi(D_802AB8B8)
/* 302B8 8002F6B8 D434B8B8 */  ldc1       $f20, %lo(D_802AB8B8)($at)
/* 302BC 8002F6BC 44806000 */  mtc1       $zero, $f12
/* 302C0 8002F6C0 44806800 */  mtc1       $zero, $f13
/* 302C4 8002F6C4 4622D002 */  mul.d      $f0, $f26, $f2
.L8002F6C8:
/* 302C8 8002F6C8 46380000 */  add.d      $f0, $f0, $f24
/* 302CC 8002F6CC 46220002 */  mul.d      $f0, $f0, $f2
/* 302D0 8002F6D0 46360000 */  add.d      $f0, $f0, $f22
/* 302D4 8002F6D4 46220002 */  mul.d      $f0, $f0, $f2
/* 302D8 8002F6D8 46340000 */  add.d      $f0, $f0, $f20
/* 302DC 8002F6DC 462C003E */  c.le.d     $f0, $f12
/* 302E0 8002F6E0 00000000 */  nop
/* 302E4 8002F6E4 4501FFD0 */  bc1t       .L8002F628
/* 302E8 8002F6E8 00000000 */   nop
/* 302EC 8002F6EC 46202003 */  div.d      $f0, $f4, $f0
/* 302F0 8002F6F0 46201081 */  sub.d      $f2, $f2, $f0
/* 302F4 8002F6F4 462C103C */  c.lt.d     $f2, $f12
/* 302F8 8002F6F8 00000000 */  nop
/* 302FC 8002F6FC 4501FFCA */  bc1t       .L8002F628
/* 30300 8002F700 00000000 */   nop
/* 30304 8002F704 46200005 */  abs.d      $f0, $f0
/* 30308 8002F708 462A003C */  c.lt.d     $f0, $f10
/* 3030C 8002F70C 00000000 */  nop
/* 30310 8002F710 00000000 */  nop
/* 30314 8002F714 45010011 */  bc1t       .L8002F75C
/* 30318 8002F718 46201006 */   mov.d     $f0, $f2
/* 3031C 8002F71C 00000000 */  nop
/* 30320 8002F720 46229002 */  mul.d      $f0, $f18, $f2
/* 30324 8002F724 46300000 */  add.d      $f0, $f0, $f16
/* 30328 8002F728 46220002 */  mul.d      $f0, $f0, $f2
/* 3032C 8002F72C 462E0000 */  add.d      $f0, $f0, $f14
/* 30330 8002F730 46220002 */  mul.d      $f0, $f0, $f2
/* 30334 8002F734 46280000 */  add.d      $f0, $f0, $f8
/* 30338 8002F738 46220002 */  mul.d      $f0, $f0, $f2
/* 3033C 8002F73C 46260100 */  add.d      $f4, $f0, $f6
/* 30340 8002F740 46202005 */  abs.d      $f0, $f4
/* 30344 8002F744 462A003E */  c.le.d     $f0, $f10
/* 30348 8002F748 00000000 */  nop
/* 3034C 8002F74C 00000000 */  nop
/* 30350 8002F750 4502FFDD */  bc1fl      .L8002F6C8
/* 30354 8002F754 4622D002 */   mul.d     $f0, $f26, $f2
/* 30358 8002F758 46201006 */  mov.d      $f0, $f2
.L8002F75C:
/* 3035C 8002F75C D7BA0018 */  ldc1       $f26, 0x18($sp)
/* 30360 8002F760 D7B80010 */  ldc1       $f24, 0x10($sp)
/* 30364 8002F764 D7B60008 */  ldc1       $f22, 0x8($sp)
/* 30368 8002F768 D7B40000 */  ldc1       $f20, 0x0($sp)
/* 3036C 8002F76C 03E00008 */  jr         $ra
/* 30370 8002F770 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002F774
/* 30374 8002F774 3C01802B */  lui        $at, %hi(D_802AB8C8)
/* 30378 8002F778 D422B8C8 */  ldc1       $f2, %lo(D_802AB8C8)($at)
/* 3037C 8002F77C 44806000 */  mtc1       $zero, $f12
/* 30380 8002F780 44806800 */  mtc1       $zero, $f13
/* 30384 8002F784 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 30388 8002F788 F7BA0018 */  sdc1       $f26, 0x18($sp)
/* 3038C 8002F78C F7B80010 */  sdc1       $f24, 0x10($sp)
/* 30390 8002F790 462C103C */  c.lt.d     $f2, $f12
/* 30394 8002F794 F7B60008 */  sdc1       $f22, 0x8($sp)
/* 30398 8002F798 F7B40000 */  sdc1       $f20, 0x0($sp)
/* 3039C 8002F79C 45000004 */  bc1f       .L8002F7B0
/* 303A0 8002F7A0 00000000 */   nop
.L8002F7A4:
/* 303A4 8002F7A4 3C01800D */  lui        $at, %hi(D_800D1630)
/* 303A8 8002F7A8 0800BE34 */  j          .L8002F8D0
/* 303AC 8002F7AC D4201630 */   ldc1      $f0, %lo(D_800D1630)($at)
.L8002F7B0:
/* 303B0 8002F7B0 3C01802B */  lui        $at, %hi(D_802AB878)
/* 303B4 8002F7B4 D432B878 */  ldc1       $f18, %lo(D_802AB878)($at)
/* 303B8 8002F7B8 46229002 */  mul.d      $f0, $f18, $f2
/* 303BC 8002F7BC 3C01802B */  lui        $at, %hi(D_802AB880)
/* 303C0 8002F7C0 D430B880 */  ldc1       $f16, %lo(D_802AB880)($at)
/* 303C4 8002F7C4 46300000 */  add.d      $f0, $f0, $f16
/* 303C8 8002F7C8 46220002 */  mul.d      $f0, $f0, $f2
/* 303CC 8002F7CC 3C01802B */  lui        $at, %hi(D_802AB888)
/* 303D0 8002F7D0 D42EB888 */  ldc1       $f14, %lo(D_802AB888)($at)
/* 303D4 8002F7D4 462E0000 */  add.d      $f0, $f0, $f14
/* 303D8 8002F7D8 46220002 */  mul.d      $f0, $f0, $f2
/* 303DC 8002F7DC 3C01802B */  lui        $at, %hi(D_802AB890)
/* 303E0 8002F7E0 D428B890 */  ldc1       $f8, %lo(D_802AB890)($at)
/* 303E4 8002F7E4 46280000 */  add.d      $f0, $f0, $f8
/* 303E8 8002F7E8 46220002 */  mul.d      $f0, $f0, $f2
/* 303EC 8002F7EC 3C01802B */  lui        $at, %hi(D_802AB898)
/* 303F0 8002F7F0 D426B898 */  ldc1       $f6, %lo(D_802AB898)($at)
/* 303F4 8002F7F4 46260100 */  add.d      $f4, $f0, $f6
/* 303F8 8002F7F8 3C01800D */  lui        $at, %hi(D_800D1638)
/* 303FC 8002F7FC D42A1638 */  ldc1       $f10, %lo(D_800D1638)($at)
/* 30400 8002F800 46202005 */  abs.d      $f0, $f4
/* 30404 8002F804 462A003E */  c.le.d     $f0, $f10
/* 30408 8002F808 00000000 */  nop
/* 3040C 8002F80C 00000000 */  nop
/* 30410 8002F810 4501002F */  bc1t       .L8002F8D0
/* 30414 8002F814 46201006 */   mov.d     $f0, $f2
/* 30418 8002F818 3C01802B */  lui        $at, %hi(D_802AB8A0)
/* 3041C 8002F81C D43AB8A0 */  ldc1       $f26, %lo(D_802AB8A0)($at)
/* 30420 8002F820 3C01802B */  lui        $at, %hi(D_802AB8A8)
/* 30424 8002F824 D438B8A8 */  ldc1       $f24, %lo(D_802AB8A8)($at)
/* 30428 8002F828 3C01802B */  lui        $at, %hi(D_802AB8B0)
/* 3042C 8002F82C D436B8B0 */  ldc1       $f22, %lo(D_802AB8B0)($at)
/* 30430 8002F830 3C01802B */  lui        $at, %hi(D_802AB8B8)
/* 30434 8002F834 D434B8B8 */  ldc1       $f20, %lo(D_802AB8B8)($at)
/* 30438 8002F838 4622D002 */  mul.d      $f0, $f26, $f2
.L8002F83C:
/* 3043C 8002F83C 46380000 */  add.d      $f0, $f0, $f24
/* 30440 8002F840 46220002 */  mul.d      $f0, $f0, $f2
/* 30444 8002F844 46360000 */  add.d      $f0, $f0, $f22
/* 30448 8002F848 46220002 */  mul.d      $f0, $f0, $f2
/* 3044C 8002F84C 46340000 */  add.d      $f0, $f0, $f20
/* 30450 8002F850 4620603E */  c.le.d     $f12, $f0
/* 30454 8002F854 00000000 */  nop
/* 30458 8002F858 4501FFD2 */  bc1t       .L8002F7A4
/* 3045C 8002F85C 00000000 */   nop
/* 30460 8002F860 46202003 */  div.d      $f0, $f4, $f0
/* 30464 8002F864 46201081 */  sub.d      $f2, $f2, $f0
/* 30468 8002F868 462C103C */  c.lt.d     $f2, $f12
/* 3046C 8002F86C 00000000 */  nop
/* 30470 8002F870 4501FFCC */  bc1t       .L8002F7A4
/* 30474 8002F874 00000000 */   nop
/* 30478 8002F878 46200005 */  abs.d      $f0, $f0
/* 3047C 8002F87C 462A003C */  c.lt.d     $f0, $f10
/* 30480 8002F880 00000000 */  nop
/* 30484 8002F884 00000000 */  nop
/* 30488 8002F888 45010011 */  bc1t       .L8002F8D0
/* 3048C 8002F88C 46201006 */   mov.d     $f0, $f2
/* 30490 8002F890 00000000 */  nop
/* 30494 8002F894 46229002 */  mul.d      $f0, $f18, $f2
/* 30498 8002F898 46300000 */  add.d      $f0, $f0, $f16
/* 3049C 8002F89C 46220002 */  mul.d      $f0, $f0, $f2
/* 304A0 8002F8A0 462E0000 */  add.d      $f0, $f0, $f14
/* 304A4 8002F8A4 46220002 */  mul.d      $f0, $f0, $f2
/* 304A8 8002F8A8 46280000 */  add.d      $f0, $f0, $f8
/* 304AC 8002F8AC 46220002 */  mul.d      $f0, $f0, $f2
/* 304B0 8002F8B0 46260100 */  add.d      $f4, $f0, $f6
/* 304B4 8002F8B4 46202005 */  abs.d      $f0, $f4
/* 304B8 8002F8B8 462A003E */  c.le.d     $f0, $f10
/* 304BC 8002F8BC 00000000 */  nop
/* 304C0 8002F8C0 00000000 */  nop
/* 304C4 8002F8C4 4502FFDD */  bc1fl      .L8002F83C
/* 304C8 8002F8C8 4622D002 */   mul.d     $f0, $f26, $f2
/* 304CC 8002F8CC 46201006 */  mov.d      $f0, $f2
.L8002F8D0:
/* 304D0 8002F8D0 D7BA0018 */  ldc1       $f26, 0x18($sp)
/* 304D4 8002F8D4 D7B80010 */  ldc1       $f24, 0x10($sp)
/* 304D8 8002F8D8 D7B60008 */  ldc1       $f22, 0x8($sp)
/* 304DC 8002F8DC D7B40000 */  ldc1       $f20, 0x0($sp)
/* 304E0 8002F8E0 03E00008 */  jr         $ra
/* 304E4 8002F8E4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002F8E8
/* 304E8 8002F8E8 3C01802B */  lui        $at, %hi(D_802AB870)
/* 304EC 8002F8EC D422B870 */  ldc1       $f2, %lo(D_802AB870)($at)
/* 304F0 8002F8F0 3C01802B */  lui        $at, %hi(D_802AB878)
/* 304F4 8002F8F4 D432B878 */  ldc1       $f18, %lo(D_802AB878)($at)
/* 304F8 8002F8F8 46229002 */  mul.d      $f0, $f18, $f2
/* 304FC 8002F8FC 3C01802B */  lui        $at, %hi(D_802AB880)
/* 30500 8002F900 D430B880 */  ldc1       $f16, %lo(D_802AB880)($at)
/* 30504 8002F904 46300000 */  add.d      $f0, $f0, $f16
/* 30508 8002F908 46220002 */  mul.d      $f0, $f0, $f2
/* 3050C 8002F90C 3C01802B */  lui        $at, %hi(D_802AB888)
/* 30510 8002F910 D42EB888 */  ldc1       $f14, %lo(D_802AB888)($at)
/* 30514 8002F914 462E0000 */  add.d      $f0, $f0, $f14
/* 30518 8002F918 46220002 */  mul.d      $f0, $f0, $f2
/* 3051C 8002F91C 3C01802B */  lui        $at, %hi(D_802AB890)
/* 30520 8002F920 D42AB890 */  ldc1       $f10, %lo(D_802AB890)($at)
/* 30524 8002F924 462A0000 */  add.d      $f0, $f0, $f10
/* 30528 8002F928 46220002 */  mul.d      $f0, $f0, $f2
/* 3052C 8002F92C 3C01802B */  lui        $at, %hi(D_802AB898)
/* 30530 8002F930 D428B898 */  ldc1       $f8, %lo(D_802AB898)($at)
/* 30534 8002F934 3C01800D */  lui        $at, %hi(D_800D1648)
/* 30538 8002F938 D42C1648 */  ldc1       $f12, %lo(D_800D1648)($at)
/* 3053C 8002F93C 46280100 */  add.d      $f4, $f0, $f8
/* 30540 8002F940 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 30544 8002F944 F7BA0018 */  sdc1       $f26, 0x18($sp)
/* 30548 8002F948 46202005 */  abs.d      $f0, $f4
/* 3054C 8002F94C F7B80010 */  sdc1       $f24, 0x10($sp)
/* 30550 8002F950 462C003E */  c.le.d     $f0, $f12
/* 30554 8002F954 F7B60008 */  sdc1       $f22, 0x8($sp)
/* 30558 8002F958 F7B40000 */  sdc1       $f20, 0x0($sp)
/* 3055C 8002F95C 45010036 */  bc1t       .L8002FA38
/* 30560 8002F960 46201006 */   mov.d     $f0, $f2
/* 30564 8002F964 44803000 */  mtc1       $zero, $f6
/* 30568 8002F968 44803800 */  mtc1       $zero, $f7
/* 3056C 8002F96C 3C01802B */  lui        $at, %hi(D_802AB8A0)
/* 30570 8002F970 D43AB8A0 */  ldc1       $f26, %lo(D_802AB8A0)($at)
/* 30574 8002F974 3C01802B */  lui        $at, %hi(D_802AB8A8)
/* 30578 8002F978 D438B8A8 */  ldc1       $f24, %lo(D_802AB8A8)($at)
/* 3057C 8002F97C 3C01802B */  lui        $at, %hi(D_802AB8B0)
/* 30580 8002F980 D436B8B0 */  ldc1       $f22, %lo(D_802AB8B0)($at)
/* 30584 8002F984 3C01802B */  lui        $at, %hi(D_802AB8B8)
/* 30588 8002F988 D434B8B8 */  ldc1       $f20, %lo(D_802AB8B8)($at)
.L8002F98C:
/* 3058C 8002F98C 4626203C */  c.lt.d     $f4, $f6
/* 30590 8002F990 00000000 */  nop
/* 30594 8002F994 45010011 */  bc1t       .L8002F9DC
/* 30598 8002F998 00000000 */   nop
/* 3059C 8002F99C 4622D002 */  mul.d      $f0, $f26, $f2
/* 305A0 8002F9A0 46380000 */  add.d      $f0, $f0, $f24
/* 305A4 8002F9A4 46220002 */  mul.d      $f0, $f0, $f2
/* 305A8 8002F9A8 46360000 */  add.d      $f0, $f0, $f22
/* 305AC 8002F9AC 46220002 */  mul.d      $f0, $f0, $f2
/* 305B0 8002F9B0 46340000 */  add.d      $f0, $f0, $f20
/* 305B4 8002F9B4 4626003E */  c.le.d     $f0, $f6
/* 305B8 8002F9B8 00000000 */  nop
/* 305BC 8002F9BC 45010007 */  bc1t       .L8002F9DC
/* 305C0 8002F9C0 00000000 */   nop
/* 305C4 8002F9C4 46202003 */  div.d      $f0, $f4, $f0
/* 305C8 8002F9C8 46201081 */  sub.d      $f2, $f2, $f0
/* 305CC 8002F9CC 4626103C */  c.lt.d     $f2, $f6
/* 305D0 8002F9D0 00000000 */  nop
/* 305D4 8002F9D4 45000004 */  bc1f       .L8002F9E8
/* 305D8 8002F9D8 00000000 */   nop
.L8002F9DC:
/* 305DC 8002F9DC 3C01800D */  lui        $at, %hi(D_800D1640)
/* 305E0 8002F9E0 0800BE8E */  j          .L8002FA38
/* 305E4 8002F9E4 D4201640 */   ldc1      $f0, %lo(D_800D1640)($at)
.L8002F9E8:
/* 305E8 8002F9E8 462C003C */  c.lt.d     $f0, $f12
/* 305EC 8002F9EC 00000000 */  nop
/* 305F0 8002F9F0 00000000 */  nop
/* 305F4 8002F9F4 45010010 */  bc1t       .L8002FA38
/* 305F8 8002F9F8 46201006 */   mov.d     $f0, $f2
/* 305FC 8002F9FC 00000000 */  nop
/* 30600 8002FA00 46229002 */  mul.d      $f0, $f18, $f2
/* 30604 8002FA04 46300000 */  add.d      $f0, $f0, $f16
/* 30608 8002FA08 46220002 */  mul.d      $f0, $f0, $f2
/* 3060C 8002FA0C 462E0000 */  add.d      $f0, $f0, $f14
/* 30610 8002FA10 46220002 */  mul.d      $f0, $f0, $f2
/* 30614 8002FA14 462A0000 */  add.d      $f0, $f0, $f10
/* 30618 8002FA18 46220002 */  mul.d      $f0, $f0, $f2
/* 3061C 8002FA1C 46280100 */  add.d      $f4, $f0, $f8
/* 30620 8002FA20 46202005 */  abs.d      $f0, $f4
/* 30624 8002FA24 462C003E */  c.le.d     $f0, $f12
/* 30628 8002FA28 00000000 */  nop
/* 3062C 8002FA2C 00000000 */  nop
/* 30630 8002FA30 4500FFD6 */  bc1f       .L8002F98C
/* 30634 8002FA34 46201006 */   mov.d     $f0, $f2
.L8002FA38:
/* 30638 8002FA38 D7BA0018 */  ldc1       $f26, 0x18($sp)
/* 3063C 8002FA3C D7B80010 */  ldc1       $f24, 0x10($sp)
/* 30640 8002FA40 D7B60008 */  ldc1       $f22, 0x8($sp)
/* 30644 8002FA44 D7B40000 */  ldc1       $f20, 0x0($sp)
/* 30648 8002FA48 03E00008 */  jr         $ra
/* 3064C 8002FA4C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002FA50
/* 30650 8002FA50 44801000 */  mtc1       $zero, $f2
/* 30654 8002FA54 44801800 */  mtc1       $zero, $f3
/* 30658 8002FA58 3C01802B */  lui        $at, %hi(D_802AB878)
/* 3065C 8002FA5C D432B878 */  ldc1       $f18, %lo(D_802AB878)($at)
/* 30660 8002FA60 46229002 */  mul.d      $f0, $f18, $f2
/* 30664 8002FA64 3C01802B */  lui        $at, %hi(D_802AB880)
/* 30668 8002FA68 D430B880 */  ldc1       $f16, %lo(D_802AB880)($at)
/* 3066C 8002FA6C 46300000 */  add.d      $f0, $f0, $f16
/* 30670 8002FA70 46220002 */  mul.d      $f0, $f0, $f2
/* 30674 8002FA74 3C01802B */  lui        $at, %hi(D_802AB888)
/* 30678 8002FA78 D42EB888 */  ldc1       $f14, %lo(D_802AB888)($at)
/* 3067C 8002FA7C 462E0000 */  add.d      $f0, $f0, $f14
/* 30680 8002FA80 46220002 */  mul.d      $f0, $f0, $f2
/* 30684 8002FA84 3C01802B */  lui        $at, %hi(D_802AB890)
/* 30688 8002FA88 D428B890 */  ldc1       $f8, %lo(D_802AB890)($at)
/* 3068C 8002FA8C 46280000 */  add.d      $f0, $f0, $f8
/* 30690 8002FA90 46220002 */  mul.d      $f0, $f0, $f2
/* 30694 8002FA94 3C01802B */  lui        $at, %hi(D_802AB898)
/* 30698 8002FA98 D426B898 */  ldc1       $f6, %lo(D_802AB898)($at)
/* 3069C 8002FA9C 3C01800D */  lui        $at, %hi(D_800D1658)
/* 306A0 8002FAA0 D42A1658 */  ldc1       $f10, %lo(D_800D1658)($at)
/* 306A4 8002FAA4 46260100 */  add.d      $f4, $f0, $f6
/* 306A8 8002FAA8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 306AC 8002FAAC F7BC0020 */  sdc1       $f28, 0x20($sp)
/* 306B0 8002FAB0 F7BA0018 */  sdc1       $f26, 0x18($sp)
/* 306B4 8002FAB4 46202005 */  abs.d      $f0, $f4
/* 306B8 8002FAB8 F7B80010 */  sdc1       $f24, 0x10($sp)
/* 306BC 8002FABC 462A003E */  c.le.d     $f0, $f10
/* 306C0 8002FAC0 F7B60008 */  sdc1       $f22, 0x8($sp)
/* 306C4 8002FAC4 F7B40000 */  sdc1       $f20, 0x0($sp)
/* 306C8 8002FAC8 45010039 */  bc1t       .L8002FBB0
/* 306CC 8002FACC 46201006 */   mov.d     $f0, $f2
/* 306D0 8002FAD0 3C01802B */  lui        $at, %hi(D_802AB8A0)
/* 306D4 8002FAD4 D43CB8A0 */  ldc1       $f28, %lo(D_802AB8A0)($at)
/* 306D8 8002FAD8 3C01802B */  lui        $at, %hi(D_802AB8A8)
/* 306DC 8002FADC D43AB8A8 */  ldc1       $f26, %lo(D_802AB8A8)($at)
/* 306E0 8002FAE0 3C01802B */  lui        $at, %hi(D_802AB8B0)
/* 306E4 8002FAE4 D438B8B0 */  ldc1       $f24, %lo(D_802AB8B0)($at)
/* 306E8 8002FAE8 3C01802B */  lui        $at, %hi(D_802AB8B8)
/* 306EC 8002FAEC D436B8B8 */  ldc1       $f22, %lo(D_802AB8B8)($at)
/* 306F0 8002FAF0 46201306 */  mov.d      $f12, $f2
/* 306F4 8002FAF4 3C01802B */  lui        $at, %hi(D_802AB870)
/* 306F8 8002FAF8 D434B870 */  ldc1       $f20, %lo(D_802AB870)($at)
/* 306FC 8002FAFC 4622E002 */  mul.d      $f0, $f28, $f2
.L8002FB00:
/* 30700 8002FB00 463A0000 */  add.d      $f0, $f0, $f26
/* 30704 8002FB04 46220002 */  mul.d      $f0, $f0, $f2
/* 30708 8002FB08 46380000 */  add.d      $f0, $f0, $f24
/* 3070C 8002FB0C 46220002 */  mul.d      $f0, $f0, $f2
/* 30710 8002FB10 46360000 */  add.d      $f0, $f0, $f22
/* 30714 8002FB14 4620603E */  c.le.d     $f12, $f0
/* 30718 8002FB18 00000000 */  nop
/* 3071C 8002FB1C 4501000C */  bc1t       .L8002FB50
/* 30720 8002FB20 00000000 */   nop
/* 30724 8002FB24 46202003 */  div.d      $f0, $f4, $f0
/* 30728 8002FB28 46201081 */  sub.d      $f2, $f2, $f0
/* 3072C 8002FB2C 462C103C */  c.lt.d     $f2, $f12
/* 30730 8002FB30 00000000 */  nop
/* 30734 8002FB34 45010006 */  bc1t       .L8002FB50
/* 30738 8002FB38 00000000 */   nop
/* 3073C 8002FB3C 4622A03C */  c.lt.d     $f20, $f2
/* 30740 8002FB40 00000000 */  nop
/* 30744 8002FB44 00000000 */  nop
/* 30748 8002FB48 45020004 */  bc1fl      .L8002FB5C
/* 3074C 8002FB4C 46200005 */   abs.d     $f0, $f0
.L8002FB50:
/* 30750 8002FB50 3C01800D */  lui        $at, %hi(D_800D1650)
/* 30754 8002FB54 0800BEEC */  j          .L8002FBB0
/* 30758 8002FB58 D4201650 */   ldc1      $f0, %lo(D_800D1650)($at)
.L8002FB5C:
/* 3075C 8002FB5C 462A003C */  c.lt.d     $f0, $f10
/* 30760 8002FB60 00000000 */  nop
/* 30764 8002FB64 00000000 */  nop
/* 30768 8002FB68 45010011 */  bc1t       .L8002FBB0
/* 3076C 8002FB6C 46201006 */   mov.d     $f0, $f2
/* 30770 8002FB70 00000000 */  nop
/* 30774 8002FB74 46229002 */  mul.d      $f0, $f18, $f2
/* 30778 8002FB78 46300000 */  add.d      $f0, $f0, $f16
/* 3077C 8002FB7C 46220002 */  mul.d      $f0, $f0, $f2
/* 30780 8002FB80 462E0000 */  add.d      $f0, $f0, $f14
/* 30784 8002FB84 46220002 */  mul.d      $f0, $f0, $f2
/* 30788 8002FB88 46280000 */  add.d      $f0, $f0, $f8
/* 3078C 8002FB8C 46220002 */  mul.d      $f0, $f0, $f2
/* 30790 8002FB90 46260100 */  add.d      $f4, $f0, $f6
/* 30794 8002FB94 46202005 */  abs.d      $f0, $f4
/* 30798 8002FB98 462A003E */  c.le.d     $f0, $f10
/* 3079C 8002FB9C 00000000 */  nop
/* 307A0 8002FBA0 00000000 */  nop
/* 307A4 8002FBA4 4502FFD6 */  bc1fl      .L8002FB00
/* 307A8 8002FBA8 4622E002 */   mul.d     $f0, $f28, $f2
/* 307AC 8002FBAC 46201006 */  mov.d      $f0, $f2
.L8002FBB0:
/* 307B0 8002FBB0 D7BC0020 */  ldc1       $f28, 0x20($sp)
/* 307B4 8002FBB4 D7BA0018 */  ldc1       $f26, 0x18($sp)
/* 307B8 8002FBB8 D7B80010 */  ldc1       $f24, 0x10($sp)
/* 307BC 8002FBBC D7B60008 */  ldc1       $f22, 0x8($sp)
/* 307C0 8002FBC0 D7B40000 */  ldc1       $f20, 0x0($sp)
/* 307C4 8002FBC4 03E00008 */  jr         $ra
/* 307C8 8002FBC8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002FBCC
/* 307CC 8002FBCC 3C01802B */  lui        $at, %hi(D_802AB8C8)
/* 307D0 8002FBD0 D424B8C8 */  ldc1       $f4, %lo(D_802AB8C8)($at)
/* 307D4 8002FBD4 3C01802B */  lui        $at, %hi(D_802AB870)
/* 307D8 8002FBD8 D420B870 */  ldc1       $f0, %lo(D_802AB870)($at)
/* 307DC 8002FBDC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 307E0 8002FBE0 F7BA0018 */  sdc1       $f26, 0x18($sp)
/* 307E4 8002FBE4 F7B80010 */  sdc1       $f24, 0x10($sp)
/* 307E8 8002FBE8 4624003C */  c.lt.d     $f0, $f4
/* 307EC 8002FBEC F7B60008 */  sdc1       $f22, 0x8($sp)
/* 307F0 8002FBF0 F7B40000 */  sdc1       $f20, 0x0($sp)
/* 307F4 8002FBF4 4500001D */  bc1f       .L8002FC6C
/* 307F8 8002FBF8 00000000 */   nop
/* 307FC 8002FBFC 3C01802B */  lui        $at, %hi(D_802AB878)
/* 30800 8002FC00 D420B878 */  ldc1       $f0, %lo(D_802AB878)($at)
/* 30804 8002FC04 46240002 */  mul.d      $f0, $f0, $f4
/* 30808 8002FC08 3C01802B */  lui        $at, %hi(D_802AB880)
/* 3080C 8002FC0C D422B880 */  ldc1       $f2, %lo(D_802AB880)($at)
/* 30810 8002FC10 46220000 */  add.d      $f0, $f0, $f2
/* 30814 8002FC14 46240002 */  mul.d      $f0, $f0, $f4
/* 30818 8002FC18 3C01802B */  lui        $at, %hi(D_802AB888)
/* 3081C 8002FC1C D422B888 */  ldc1       $f2, %lo(D_802AB888)($at)
/* 30820 8002FC20 46220000 */  add.d      $f0, $f0, $f2
/* 30824 8002FC24 46240002 */  mul.d      $f0, $f0, $f4
/* 30828 8002FC28 3C01802B */  lui        $at, %hi(D_802AB890)
/* 3082C 8002FC2C D422B890 */  ldc1       $f2, %lo(D_802AB890)($at)
/* 30830 8002FC30 46220000 */  add.d      $f0, $f0, $f2
/* 30834 8002FC34 46240002 */  mul.d      $f0, $f0, $f4
/* 30838 8002FC38 3C01802B */  lui        $at, %hi(D_802AB898)
/* 3083C 8002FC3C D422B898 */  ldc1       $f2, %lo(D_802AB898)($at)
/* 30840 8002FC40 46220080 */  add.d      $f2, $f0, $f2
/* 30844 8002FC44 44800000 */  mtc1       $zero, $f0
/* 30848 8002FC48 44800800 */  mtc1       $zero, $f1
/* 3084C 8002FC4C 00000000 */  nop
/* 30850 8002FC50 4622003C */  c.lt.d     $f0, $f2
/* 30854 8002FC54 00000000 */  nop
/* 30858 8002FC58 45000004 */  bc1f       .L8002FC6C
/* 3085C 8002FC5C 00000000 */   nop
.L8002FC60:
/* 30860 8002FC60 3C01800D */  lui        $at, %hi(D_800D1660)
/* 30864 8002FC64 0800BF60 */  j          .L8002FD80
/* 30868 8002FC68 D4201660 */   ldc1      $f0, %lo(D_800D1660)($at)
.L8002FC6C:
/* 3086C 8002FC6C 3C01802B */  lui        $at, %hi(D_802AB878)
/* 30870 8002FC70 D430B878 */  ldc1       $f16, %lo(D_802AB878)($at)
/* 30874 8002FC74 46248002 */  mul.d      $f0, $f16, $f4
/* 30878 8002FC78 3C01802B */  lui        $at, %hi(D_802AB880)
/* 3087C 8002FC7C D42EB880 */  ldc1       $f14, %lo(D_802AB880)($at)
/* 30880 8002FC80 462E0000 */  add.d      $f0, $f0, $f14
/* 30884 8002FC84 46240002 */  mul.d      $f0, $f0, $f4
/* 30888 8002FC88 3C01802B */  lui        $at, %hi(D_802AB888)
/* 3088C 8002FC8C D42CB888 */  ldc1       $f12, %lo(D_802AB888)($at)
/* 30890 8002FC90 462C0000 */  add.d      $f0, $f0, $f12
/* 30894 8002FC94 46240002 */  mul.d      $f0, $f0, $f4
/* 30898 8002FC98 3C01802B */  lui        $at, %hi(D_802AB890)
/* 3089C 8002FC9C D42AB890 */  ldc1       $f10, %lo(D_802AB890)($at)
/* 308A0 8002FCA0 462A0000 */  add.d      $f0, $f0, $f10
/* 308A4 8002FCA4 46240002 */  mul.d      $f0, $f0, $f4
/* 308A8 8002FCA8 3C01802B */  lui        $at, %hi(D_802AB898)
/* 308AC 8002FCAC D426B898 */  ldc1       $f6, %lo(D_802AB898)($at)
/* 308B0 8002FCB0 46260080 */  add.d      $f2, $f0, $f6
/* 308B4 8002FCB4 3C01800D */  lui        $at, %hi(D_800D1668)
/* 308B8 8002FCB8 D4281668 */  ldc1       $f8, %lo(D_800D1668)($at)
/* 308BC 8002FCBC 46201005 */  abs.d      $f0, $f2
/* 308C0 8002FCC0 4628003E */  c.le.d     $f0, $f8
/* 308C4 8002FCC4 00000000 */  nop
/* 308C8 8002FCC8 00000000 */  nop
/* 308CC 8002FCCC 4501002C */  bc1t       .L8002FD80
/* 308D0 8002FCD0 46202006 */   mov.d     $f0, $f4
/* 308D4 8002FCD4 3C01802B */  lui        $at, %hi(D_802AB8A0)
/* 308D8 8002FCD8 D438B8A0 */  ldc1       $f24, %lo(D_802AB8A0)($at)
/* 308DC 8002FCDC 3C01802B */  lui        $at, %hi(D_802AB8A8)
/* 308E0 8002FCE0 D436B8A8 */  ldc1       $f22, %lo(D_802AB8A8)($at)
/* 308E4 8002FCE4 3C01802B */  lui        $at, %hi(D_802AB8B0)
/* 308E8 8002FCE8 D434B8B0 */  ldc1       $f20, %lo(D_802AB8B0)($at)
/* 308EC 8002FCEC 3C01802B */  lui        $at, %hi(D_802AB8B8)
/* 308F0 8002FCF0 D432B8B8 */  ldc1       $f18, %lo(D_802AB8B8)($at)
/* 308F4 8002FCF4 4480D000 */  mtc1       $zero, $f26
/* 308F8 8002FCF8 4480D800 */  mtc1       $zero, $f27
/* 308FC 8002FCFC 4624C002 */  mul.d      $f0, $f24, $f4
.L8002FD00:
/* 30900 8002FD00 46360000 */  add.d      $f0, $f0, $f22
/* 30904 8002FD04 46240002 */  mul.d      $f0, $f0, $f4
/* 30908 8002FD08 46340000 */  add.d      $f0, $f0, $f20
/* 3090C 8002FD0C 46240002 */  mul.d      $f0, $f0, $f4
/* 30910 8002FD10 46320000 */  add.d      $f0, $f0, $f18
/* 30914 8002FD14 4620D03E */  c.le.d     $f26, $f0
/* 30918 8002FD18 00000000 */  nop
/* 3091C 8002FD1C 4501FFD0 */  bc1t       .L8002FC60
/* 30920 8002FD20 00000000 */   nop
/* 30924 8002FD24 46201083 */  div.d      $f2, $f2, $f0
/* 30928 8002FD28 46201005 */  abs.d      $f0, $f2
/* 3092C 8002FD2C 4628003C */  c.lt.d     $f0, $f8
/* 30930 8002FD30 00000000 */  nop
/* 30934 8002FD34 00000000 */  nop
/* 30938 8002FD38 45010010 */  bc1t       .L8002FD7C
/* 3093C 8002FD3C 46222101 */   sub.d     $f4, $f4, $f2
/* 30940 8002FD40 00000000 */  nop
/* 30944 8002FD44 46248002 */  mul.d      $f0, $f16, $f4
/* 30948 8002FD48 462E0000 */  add.d      $f0, $f0, $f14
/* 3094C 8002FD4C 46240002 */  mul.d      $f0, $f0, $f4
/* 30950 8002FD50 462C0000 */  add.d      $f0, $f0, $f12
/* 30954 8002FD54 46240002 */  mul.d      $f0, $f0, $f4
/* 30958 8002FD58 462A0000 */  add.d      $f0, $f0, $f10
/* 3095C 8002FD5C 46240002 */  mul.d      $f0, $f0, $f4
/* 30960 8002FD60 46260080 */  add.d      $f2, $f0, $f6
/* 30964 8002FD64 46201005 */  abs.d      $f0, $f2
/* 30968 8002FD68 4628003E */  c.le.d     $f0, $f8
/* 3096C 8002FD6C 00000000 */  nop
/* 30970 8002FD70 00000000 */  nop
/* 30974 8002FD74 4502FFE2 */  bc1fl      .L8002FD00
/* 30978 8002FD78 4624C002 */   mul.d     $f0, $f24, $f4
.L8002FD7C:
/* 3097C 8002FD7C 46202006 */  mov.d      $f0, $f4
.L8002FD80:
/* 30980 8002FD80 D7BA0018 */  ldc1       $f26, 0x18($sp)
/* 30984 8002FD84 D7B80010 */  ldc1       $f24, 0x10($sp)
/* 30988 8002FD88 D7B60008 */  ldc1       $f22, 0x8($sp)
/* 3098C 8002FD8C D7B40000 */  ldc1       $f20, 0x0($sp)
/* 30990 8002FD90 03E00008 */  jr         $ra
/* 30994 8002FD94 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002FD98
/* 30998 8002FD98 3C01802B */  lui        $at, %hi(D_802AB898)
/* 3099C 8002FD9C D420B898 */  ldc1       $f0, %lo(D_802AB898)($at)
/* 309A0 8002FDA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 309A4 8002FDA4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 309A8 8002FDA8 4480A000 */  mtc1       $zero, $f20
/* 309AC 8002FDAC 4480A800 */  mtc1       $zero, $f21
/* 309B0 8002FDB0 00000000 */  nop
/* 309B4 8002FDB4 4634003E */  c.le.d     $f0, $f20
/* 309B8 8002FDB8 00000000 */  nop
/* 309BC 8002FDBC 00000000 */  nop
/* 309C0 8002FDC0 45000004 */  bc1f       .L8002FDD4
/* 309C4 8002FDC4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 309C8 8002FDC8 3C01800D */  lui        $at, %hi(D_800D1670)
/* 309CC 8002FDCC 0800BF93 */  j          .L8002FE4C
/* 309D0 8002FDD0 D4201670 */   ldc1      $f0, %lo(D_800D1670)($at)
.L8002FDD4:
/* 309D4 8002FDD4 3C01802B */  lui        $at, %hi(D_802AB8C0)
/* 309D8 8002FDD8 D422B8C0 */  ldc1       $f2, %lo(D_802AB8C0)($at)
/* 309DC 8002FDDC 3C01800D */  lui        $at, %hi(D_800D1678)
/* 309E0 8002FDE0 D4201678 */  ldc1       $f0, %lo(D_800D1678)($at)
/* 309E4 8002FDE4 46201032 */  c.eq.d     $f2, $f0
/* 309E8 8002FDE8 00000000 */  nop
/* 309EC 8002FDEC 45000005 */  bc1f       .L8002FE04
/* 309F0 8002FDF0 00000000 */   nop
/* 309F4 8002FDF4 0C00BE94 */  jal        func_8002FA50
/* 309F8 8002FDF8 00000000 */   nop
/* 309FC 8002FDFC 0800BF93 */  j          .L8002FE4C
/* 30A00 8002FE00 00000000 */   nop
.L8002FE04:
/* 30A04 8002FE04 3C01802B */  lui        $at, %hi(D_802AB8B8)
/* 30A08 8002FE08 D420B8B8 */  ldc1       $f0, %lo(D_802AB8B8)($at)
/* 30A0C 8002FE0C 4634003C */  c.lt.d     $f0, $f20
/* 30A10 8002FE10 00000000 */  nop
/* 30A14 8002FE14 4500000B */  bc1f       .L8002FE44
/* 30A18 8002FE18 00000000 */   nop
/* 30A1C 8002FE1C 4622A03C */  c.lt.d     $f20, $f2
/* 30A20 8002FE20 00000000 */  nop
/* 30A24 8002FE24 45000007 */  bc1f       .L8002FE44
/* 30A28 8002FE28 00000000 */   nop
/* 30A2C 8002FE2C 0C00BE94 */  jal        func_8002FA50
/* 30A30 8002FE30 00000000 */   nop
/* 30A34 8002FE34 4634003C */  c.lt.d     $f0, $f20
/* 30A38 8002FE38 00000000 */  nop
/* 30A3C 8002FE3C 45000003 */  bc1f       .L8002FE4C
/* 30A40 8002FE40 00000000 */   nop
.L8002FE44:
/* 30A44 8002FE44 0C00BEF3 */  jal        func_8002FBCC
/* 30A48 8002FE48 00000000 */   nop
.L8002FE4C:
/* 30A4C 8002FE4C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 30A50 8002FE50 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 30A54 8002FE54 03E00008 */  jr         $ra
/* 30A58 8002FE58 27BD0020 */   addiu     $sp, $sp, 0x20
/* 30A5C 8002FE5C 00000000 */  nop
