.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80002590
/* 3190 80002590 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3194 80002594 AFB30024 */  sw         $s3, 0x24($sp)
/* 3198 80002598 00809821 */  addu       $s3, $a0, $zero
/* 319C 8000259C AFB5002C */  sw         $s5, 0x2C($sp)
/* 31A0 800025A0 00A0A821 */  addu       $s5, $a1, $zero
/* 31A4 800025A4 AFB40028 */  sw         $s4, 0x28($sp)
/* 31A8 800025A8 3C14800A */  lui        $s4, %hi(D_800A06F0)
/* 31AC 800025AC 269406F0 */  addiu      $s4, $s4, %lo(D_800A06F0)
/* 31B0 800025B0 AFBF0030 */  sw         $ra, 0x30($sp)
/* 31B4 800025B4 AFB20020 */  sw         $s2, 0x20($sp)
/* 31B8 800025B8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 31BC 800025BC AFB00018 */  sw         $s0, 0x18($sp)
/* 31C0 800025C0 8E820000 */  lw         $v0, 0x0($s4)
/* 31C4 800025C4 00C08021 */  addu       $s0, $a2, $zero
/* 31C8 800025C8 14400050 */  bnez       $v0, .L8000270C
/* 31CC 800025CC 00E08821 */   addu      $s1, $a3, $zero
/* 31D0 800025D0 0C0009CC */  jal        func_80002730
/* 31D4 800025D4 00000000 */   nop
/* 31D8 800025D8 02A02021 */  addu       $a0, $s5, $zero
/* 31DC 800025DC 02002821 */  addu       $a1, $s0, $zero
/* 31E0 800025E0 0C0009FC */  jal        func_800027F0
/* 31E4 800025E4 02203021 */   addu      $a2, $s1, $zero
/* 31E8 800025E8 3C10800E */  lui        $s0, %hi(D_800DA050)
/* 31EC 800025EC 2610A050 */  addiu      $s0, $s0, %lo(D_800DA050)
/* 31F0 800025F0 02002021 */  addu       $a0, $s0, $zero
/* 31F4 800025F4 3C05800E */  lui        $a1, %hi(D_800DA068)
/* 31F8 800025F8 24A5A068 */  addiu      $a1, $a1, %lo(D_800DA068)
/* 31FC 800025FC 0C0009FC */  jal        func_800027F0
/* 3200 80002600 24060001 */   addiu     $a2, $zero, 0x1
/* 3204 80002604 3C02800A */  lui        $v0, %hi(D_800A0720)
/* 3208 80002608 8C420720 */  lw         $v0, %lo(D_800A0720)($v0)
/* 320C 8000260C 54400004 */  bnel       $v0, $zero, .L80002620
/* 3210 80002610 24040008 */   addiu     $a0, $zero, 0x8
/* 3214 80002614 0C000B00 */  jal        __osSiCreateAccessQueue
/* 3218 80002618 00000000 */   nop
/* 321C 8000261C 24040008 */  addiu      $a0, $zero, 0x8
.L80002620:
/* 3220 80002620 02002821 */  addu       $a1, $s0, $zero
/* 3224 80002624 3C062222 */  lui        $a2, (0x22222222 >> 16)
/* 3228 80002628 0C0006B0 */  jal        osSetEventMesg
/* 322C 8000262C 34C62222 */   ori       $a2, $a2, (0x22222222 & 0xFFFF)
/* 3230 80002630 2412FFFF */  addiu      $s2, $zero, -0x1
/* 3234 80002634 0C000A08 */  jal        func_80002820
/* 3238 80002638 00002021 */   addu      $a0, $zero, $zero
/* 323C 8000263C 00401821 */  addu       $v1, $v0, $zero
/* 3240 80002640 0073102A */  slt        $v0, $v1, $s3
/* 3244 80002644 10400005 */  beqz       $v0, .L8000265C
/* 3248 80002648 00000000 */   nop
/* 324C 8000264C 00609021 */  addu       $s2, $v1, $zero
/* 3250 80002650 00002021 */  addu       $a0, $zero, $zero
/* 3254 80002654 0C000220 */  jal        osSetThreadPri
/* 3258 80002658 02602821 */   addu      $a1, $s3, $zero
.L8000265C:
/* 325C 8000265C 0C0005EC */  jal        func_800017B0
/* 3260 80002660 00000000 */   nop
/* 3264 80002664 3C11800E */  lui        $s1, %hi(D_800D8EA0)
/* 3268 80002668 26318EA0 */  addiu      $s1, $s1, %lo(D_800D8EA0)
/* 326C 8000266C 02202021 */  addu       $a0, $s1, $zero
/* 3270 80002670 00002821 */  addu       $a1, $zero, $zero
/* 3274 80002674 3C068000 */  lui        $a2, %hi(__osDevMgrMain)
/* 3278 80002678 24C62840 */  addiu      $a2, $a2, %lo(__osDevMgrMain)
/* 327C 8000267C 24030001 */  addiu      $v1, $zero, 0x1
/* 3280 80002680 AE830000 */  sw         $v1, 0x0($s4)
/* 3284 80002684 3C03802F */  lui        $v1, %hi(D_802EF7B8)
/* 3288 80002688 2463F7B8 */  addiu      $v1, $v1, %lo(D_802EF7B8)
/* 328C 8000268C 3C01800A */  lui        $at, %hi(D_800A0700)
/* 3290 80002690 AC230700 */  sw         $v1, %lo(D_800A0700)($at)
/* 3294 80002694 3C038000 */  lui        $v1, %hi(osPiRawStartDma)
/* 3298 80002698 24630C60 */  addiu      $v1, $v1, %lo(osPiRawStartDma)
/* 329C 8000269C 3C01800A */  lui        $at, %hi(D_800A0704)
/* 32A0 800026A0 AC230704 */  sw         $v1, %lo(D_800A0704)($at)
/* 32A4 800026A4 3C038000 */  lui        $v1, %hi(osEPiRawStartDma)
/* 32A8 800026A8 24632300 */  addiu      $v1, $v1, %lo(osEPiRawStartDma)
/* 32AC 800026AC 3C01800A */  lui        $at, %hi(D_800A0708)
/* 32B0 800026B0 AC230708 */  sw         $v1, %lo(D_800A0708)($at)
/* 32B4 800026B4 3C03800E */  lui        $v1, %hi(D_800DA050)
/* 32B8 800026B8 2463A050 */  addiu      $v1, $v1, %lo(D_800DA050)
/* 32BC 800026BC 3C01800A */  lui        $at, %hi(D_800A06FC)
/* 32C0 800026C0 AC3006FC */  sw         $s0, %lo(D_800A06FC)($at)
/* 32C4 800026C4 00408021 */  addu       $s0, $v0, $zero
/* 32C8 800026C8 02803821 */  addu       $a3, $s4, $zero
/* 32CC 800026CC 3C01800A */  lui        $at, %hi(D_800A06F4)
/* 32D0 800026D0 AC3106F4 */  sw         $s1, %lo(D_800A06F4)($at)
/* 32D4 800026D4 3C01800A */  lui        $at, %hi(D_800A06F8)
/* 32D8 800026D8 AC3506F8 */  sw         $s5, %lo(D_800A06F8)($at)
/* 32DC 800026DC AFA30010 */  sw         $v1, 0x10($sp)
/* 32E0 800026E0 0C000168 */  jal        osCreateThread
/* 32E4 800026E4 AFB30014 */   sw        $s3, 0x14($sp)
/* 32E8 800026E8 0C000254 */  jal        osStartThread
/* 32EC 800026EC 02202021 */   addu      $a0, $s1, $zero
/* 32F0 800026F0 0C0005F4 */  jal        __osRestoreInt
/* 32F4 800026F4 02002021 */   addu      $a0, $s0, $zero
/* 32F8 800026F8 2402FFFF */  addiu      $v0, $zero, -0x1
/* 32FC 800026FC 12420003 */  beq        $s2, $v0, .L8000270C
/* 3300 80002700 00002021 */   addu      $a0, $zero, $zero
/* 3304 80002704 0C000220 */  jal        osSetThreadPri
/* 3308 80002708 02402821 */   addu      $a1, $s2, $zero
.L8000270C:
/* 330C 8000270C 8FBF0030 */  lw         $ra, 0x30($sp)
/* 3310 80002710 8FB5002C */  lw         $s5, 0x2C($sp)
/* 3314 80002714 8FB40028 */  lw         $s4, 0x28($sp)
/* 3318 80002718 8FB30024 */  lw         $s3, 0x24($sp)
/* 331C 8000271C 8FB20020 */  lw         $s2, 0x20($sp)
/* 3320 80002720 8FB1001C */  lw         $s1, 0x1C($sp)
/* 3324 80002724 8FB00018 */  lw         $s0, 0x18($sp)
/* 3328 80002728 03E00008 */  jr         $ra
/* 332C 8000272C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80002730
/* 3330 80002730 3C05A460 */  lui        $a1, (0xA4600014 >> 16)
/* 3334 80002734 34A50014 */  ori        $a1, $a1, (0xA4600014 & 0xFFFF)
/* 3338 80002738 3C06A460 */  lui        $a2, (0xA4600018 >> 16)
/* 333C 8000273C 34C60018 */  ori        $a2, $a2, (0xA4600018 & 0xFFFF)
/* 3340 80002740 3C07A460 */  lui        $a3, (0xA460001C >> 16)
/* 3344 80002744 34E7001C */  ori        $a3, $a3, (0xA460001C & 0xFFFF)
/* 3348 80002748 3C08A460 */  lui        $t0, (0xA4600020 >> 16)
/* 334C 8000274C 35080020 */  ori        $t0, $t0, (0xA4600020 & 0xFFFF)
/* 3350 80002750 3C09A460 */  lui        $t1, (0xA4600024 >> 16)
/* 3354 80002754 35290024 */  ori        $t1, $t1, (0xA4600024 & 0xFFFF)
/* 3358 80002758 3C04A460 */  lui        $a0, (0xA4600028 >> 16)
/* 335C 8000275C 34840028 */  ori        $a0, $a0, (0xA4600028 & 0xFFFF)
/* 3360 80002760 3C03A460 */  lui        $v1, (0xA460002C >> 16)
/* 3364 80002764 3463002C */  ori        $v1, $v1, (0xA460002C & 0xFFFF)
/* 3368 80002768 3C02A460 */  lui        $v0, (0xA4600030 >> 16)
/* 336C 8000276C 34420030 */  ori        $v0, $v0, (0xA4600030 & 0xFFFF)
/* 3370 80002770 8CA50000 */  lw         $a1, 0x0($a1)
/* 3374 80002774 8CC60000 */  lw         $a2, 0x0($a2)
/* 3378 80002778 8CE70000 */  lw         $a3, 0x0($a3)
/* 337C 8000277C 8D080000 */  lw         $t0, 0x0($t0)
/* 3380 80002780 8D290000 */  lw         $t1, 0x0($t1)
/* 3384 80002784 8C840000 */  lw         $a0, 0x0($a0)
/* 3388 80002788 8C630000 */  lw         $v1, 0x0($v1)
/* 338C 8000278C 8C4A0000 */  lw         $t2, 0x0($v0)
/* 3390 80002790 24020001 */  addiu      $v0, $zero, 0x1
/* 3394 80002794 3C01803F */  lui        $at, %hi(D_803EF831)
/* 3398 80002798 A020F831 */  sb         $zero, %lo(D_803EF831)($at)
/* 339C 8000279C 3C01802D */  lui        $at, %hi(D_802D2A61)
/* 33A0 800027A0 A0222A61 */  sb         $v0, %lo(D_802D2A61)($at)
/* 33A4 800027A4 3C01803F */  lui        $at, %hi(D_803EF82D)
/* 33A8 800027A8 A025F82D */  sb         $a1, %lo(D_803EF82D)($at)
/* 33AC 800027AC 3C01803F */  lui        $at, %hi(D_803EF830)
/* 33B0 800027B0 A026F830 */  sb         $a2, %lo(D_803EF830)($at)
/* 33B4 800027B4 3C01803F */  lui        $at, %hi(D_803EF82E)
/* 33B8 800027B8 A027F82E */  sb         $a3, %lo(D_803EF82E)($at)
/* 33BC 800027BC 3C01803F */  lui        $at, %hi(D_803EF82F)
/* 33C0 800027C0 A028F82F */  sb         $t0, %lo(D_803EF82F)($at)
/* 33C4 800027C4 3C01802D */  lui        $at, %hi(D_802D2A5D)
/* 33C8 800027C8 A0292A5D */  sb         $t1, %lo(D_802D2A5D)($at)
/* 33CC 800027CC 3C01802D */  lui        $at, %hi(D_802D2A60)
/* 33D0 800027D0 A0242A60 */  sb         $a0, %lo(D_802D2A60)($at)
/* 33D4 800027D4 3C01802D */  lui        $at, %hi(D_802D2A5E)
/* 33D8 800027D8 A0232A5E */  sb         $v1, %lo(D_802D2A5E)($at)
/* 33DC 800027DC 3C01802D */  lui        $at, %hi(D_802D2A5F)
/* 33E0 800027E0 03E00008 */  jr         $ra
/* 33E4 800027E4 A02A2A5F */   sb        $t2, %lo(D_802D2A5F)($at)
/* 33E8 800027E8 00000000 */  nop
/* 33EC 800027EC 00000000 */  nop
