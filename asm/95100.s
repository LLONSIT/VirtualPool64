.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80094500
/* 95100 80094500 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 95104 80094504 AFB40028 */  sw         $s4, 0x28($sp)
/* 95108 80094508 3C14800D */  lui        $s4, %hi(D_800C9DB0)
/* 9510C 8009450C 26949DB0 */  addiu      $s4, $s4, %lo(D_800C9DB0)
/* 95110 80094510 AFBF002C */  sw         $ra, 0x2C($sp)
/* 95114 80094514 AFB30024 */  sw         $s3, 0x24($sp)
/* 95118 80094518 AFB20020 */  sw         $s2, 0x20($sp)
/* 9511C 8009451C AFB1001C */  sw         $s1, 0x1C($sp)
/* 95120 80094520 AFB00018 */  sw         $s0, 0x18($sp)
/* 95124 80094524 8E820000 */  lw         $v0, 0x0($s4)
/* 95128 80094528 14400055 */  bnez       $v0, .L80094680
/* 9512C 8009452C 00808821 */   addu      $s1, $a0, $zero
/* 95130 80094530 0C024058 */  jal        func_80090160
/* 95134 80094534 2412FFFF */   addiu     $s2, $zero, -0x1
/* 95138 80094538 3C13802C */  lui        $s3, %hi(D_802C5760)
/* 9513C 8009453C 26735760 */  addiu      $s3, $s3, %lo(D_802C5760)
/* 95140 80094540 02602021 */  addu       $a0, $s3, $zero
/* 95144 80094544 3C05802C */  lui        $a1, %hi(D_802C5778)
/* 95148 80094548 24A55778 */  addiu      $a1, $a1, %lo(D_802C5778)
/* 9514C 8009454C 3C01800D */  lui        $at, %hi(D_800C9DCC)
/* 95150 80094550 AC209DCC */  sw         $zero, %lo(D_800C9DCC)($at)
/* 95154 80094554 0C0009FC */  jal        func_800027F0
/* 95158 80094558 24060005 */   addiu     $a2, $zero, 0x5
/* 9515C 8009455C 24040007 */  addiu      $a0, $zero, 0x7
/* 95160 80094560 3C06802C */  lui        $a2, %hi(D_802C5790)
/* 95164 80094564 24C65790 */  addiu      $a2, $a2, %lo(D_802C5790)
/* 95168 80094568 2402000D */  addiu      $v0, $zero, 0xD
/* 9516C 8009456C 3C10802C */  lui        $s0, %hi(D_802C57A8)
/* 95170 80094570 261057A8 */  addiu      $s0, $s0, %lo(D_802C57A8)
/* 95174 80094574 A4C20000 */  sh         $v0, 0x0($a2)
/* 95178 80094578 2402000E */  addiu      $v0, $zero, 0xE
/* 9517C 8009457C 3C01802C */  lui        $at, %hi(D_802C5792)
/* 95180 80094580 A0205792 */  sb         $zero, %lo(D_802C5792)($at)
/* 95184 80094584 3C01802C */  lui        $at, %hi(D_802C5794)
/* 95188 80094588 AC205794 */  sw         $zero, %lo(D_802C5794)($at)
/* 9518C 8009458C A6020000 */  sh         $v0, 0x0($s0)
/* 95190 80094590 3C01802C */  lui        $at, %hi(D_802C57AA)
/* 95194 80094594 A02057AA */  sb         $zero, %lo(D_802C57AA)($at)
/* 95198 80094598 3C01802C */  lui        $at, %hi(D_802C57AC)
/* 9519C 8009459C AC2057AC */  sw         $zero, %lo(D_802C57AC)($at)
/* 951A0 800945A0 0C0006B0 */  jal        osSetEventMesg
/* 951A4 800945A4 02602821 */   addu      $a1, $s3, $zero
/* 951A8 800945A8 24040003 */  addiu      $a0, $zero, 0x3
/* 951AC 800945AC 02602821 */  addu       $a1, $s3, $zero
/* 951B0 800945B0 0C0006B0 */  jal        osSetEventMesg
/* 951B4 800945B4 02003021 */   addu      $a2, $s0, $zero
/* 951B8 800945B8 0C000A08 */  jal        func_80002820
/* 951BC 800945BC 00002021 */   addu      $a0, $zero, $zero
/* 951C0 800945C0 00401821 */  addu       $v1, $v0, $zero
/* 951C4 800945C4 0071102A */  slt        $v0, $v1, $s1
/* 951C8 800945C8 10400005 */  beqz       $v0, .L800945E0
/* 951CC 800945CC 00000000 */   nop
/* 951D0 800945D0 00609021 */  addu       $s2, $v1, $zero
/* 951D4 800945D4 00002021 */  addu       $a0, $zero, $zero
/* 951D8 800945D8 0C000220 */  jal        osSetThreadPri
/* 951DC 800945DC 02202821 */   addu      $a1, $s1, $zero
.L800945E0:
/* 951E0 800945E0 0C0005EC */  jal        func_800017B0
/* 951E4 800945E4 00000000 */   nop
/* 951E8 800945E8 3C10802C */  lui        $s0, %hi(D_802C45A8)
/* 951EC 800945EC 261045A8 */  addiu      $s0, $s0, %lo(D_802C45A8)
/* 951F0 800945F0 02002021 */  addu       $a0, $s0, $zero
/* 951F4 800945F4 00002821 */  addu       $a1, $zero, $zero
/* 951F8 800945F8 3C068009 */  lui        $a2, %hi(func_800946A0)
/* 951FC 800945FC 24C646A0 */  addiu      $a2, $a2, %lo(func_800946A0)
/* 95200 80094600 24030001 */  addiu      $v1, $zero, 0x1
/* 95204 80094604 AE830000 */  sw         $v1, 0x0($s4)
/* 95208 80094608 3C03802C */  lui        $v1, %hi(D_802C5760)
/* 9520C 8009460C 24635760 */  addiu      $v1, $v1, %lo(D_802C5760)
/* 95210 80094610 AFB10014 */  sw         $s1, 0x14($sp)
/* 95214 80094614 00408821 */  addu       $s1, $v0, $zero
/* 95218 80094618 02803821 */  addu       $a3, $s4, $zero
/* 9521C 8009461C 3C01800D */  lui        $at, %hi(D_800C9DB4)
/* 95220 80094620 AC309DB4 */  sw         $s0, %lo(D_800C9DB4)($at)
/* 95224 80094624 3C01800D */  lui        $at, %hi(D_800C9DB8)
/* 95228 80094628 AC339DB8 */  sw         $s3, %lo(D_800C9DB8)($at)
/* 9522C 8009462C 3C01800D */  lui        $at, %hi(D_800C9DBC)
/* 95230 80094630 AC339DBC */  sw         $s3, %lo(D_800C9DBC)($at)
/* 95234 80094634 3C01800D */  lui        $at, %hi(D_800C9DC0)
/* 95238 80094638 AC209DC0 */  sw         $zero, %lo(D_800C9DC0)($at)
/* 9523C 8009463C 3C01800D */  lui        $at, %hi(D_800C9DC4)
/* 95240 80094640 AC209DC4 */  sw         $zero, %lo(D_800C9DC4)($at)
/* 95244 80094644 3C01800D */  lui        $at, %hi(D_800C9DC8)
/* 95248 80094648 AC209DC8 */  sw         $zero, %lo(D_800C9DC8)($at)
/* 9524C 8009464C 0C000168 */  jal        osCreateThread
/* 95250 80094650 AFA30010 */   sw        $v1, 0x10($sp)
/* 95254 80094654 0C026084 */  jal        func_80098210
/* 95258 80094658 00000000 */   nop
/* 9525C 8009465C 0C000254 */  jal        osStartThread
/* 95260 80094660 02002021 */   addu      $a0, $s0, $zero
/* 95264 80094664 0C0005F4 */  jal        __osRestoreInt
/* 95268 80094668 02202021 */   addu      $a0, $s1, $zero
/* 9526C 8009466C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 95270 80094670 12420003 */  beq        $s2, $v0, .L80094680
/* 95274 80094674 00002021 */   addu      $a0, $zero, $zero
/* 95278 80094678 0C000220 */  jal        osSetThreadPri
/* 9527C 8009467C 02402821 */   addu      $a1, $s2, $zero
.L80094680:
/* 95280 80094680 8FBF002C */  lw         $ra, 0x2C($sp)
/* 95284 80094684 8FB40028 */  lw         $s4, 0x28($sp)
/* 95288 80094688 8FB30024 */  lw         $s3, 0x24($sp)
/* 9528C 8009468C 8FB20020 */  lw         $s2, 0x20($sp)
/* 95290 80094690 8FB1001C */  lw         $s1, 0x1C($sp)
/* 95294 80094694 8FB00018 */  lw         $s0, 0x18($sp)
/* 95298 80094698 03E00008 */  jr         $ra
/* 9529C 8009469C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800946A0
/* 952A0 800946A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 952A4 800946A4 AFB00018 */  sw         $s0, 0x18($sp)
/* 952A8 800946A8 00808021 */  addu       $s0, $a0, $zero
/* 952AC 800946AC AFBF002C */  sw         $ra, 0x2C($sp)
/* 952B0 800946B0 AFB40028 */  sw         $s4, 0x28($sp)
/* 952B4 800946B4 AFB30024 */  sw         $s3, 0x24($sp)
/* 952B8 800946B8 AFB20020 */  sw         $s2, 0x20($sp)
/* 952BC 800946BC AFB1001C */  sw         $s1, 0x1C($sp)
/* 952C0 800946C0 0C0260C8 */  jal        func_80098320
/* 952C4 800946C4 AFA00010 */   sw        $zero, 0x10($sp)
/* 952C8 800946C8 94420002 */  lhu        $v0, 0x2($v0)
/* 952CC 800946CC 3C01802C */  lui        $at, %hi(D_802C45A0)
/* 952D0 800946D0 A42245A0 */  sh         $v0, %lo(D_802C45A0)($at)
/* 952D4 800946D4 14400004 */  bnez       $v0, .L800946E8
/* 952D8 800946D8 00008821 */   addu      $s1, $zero, $zero
/* 952DC 800946DC 24020001 */  addiu      $v0, $zero, 0x1
/* 952E0 800946E0 3C01802C */  lui        $at, %hi(D_802C45A0)
/* 952E4 800946E4 A42245A0 */  sh         $v0, %lo(D_802C45A0)($at)
.L800946E8:
/* 952E8 800946E8 02009021 */  addu       $s2, $s0, $zero
/* 952EC 800946EC 2414000D */  addiu      $s4, $zero, 0xD
/* 952F0 800946F0 2413000E */  addiu      $s3, $zero, 0xE
.L800946F4:
/* 952F4 800946F4 8E44000C */  lw         $a0, 0xC($s2)
/* 952F8 800946F8 27A50010 */  addiu      $a1, $sp, 0x10
/* 952FC 800946FC 0C000B3C */  jal        osRecvMesg
/* 95300 80094700 24060001 */   addiu     $a2, $zero, 0x1
/* 95304 80094704 8FA20010 */  lw         $v0, 0x10($sp)
/* 95308 80094708 94420000 */  lhu        $v0, 0x0($v0)
/* 9530C 8009470C 10540005 */  beq        $v0, $s4, .L80094724
/* 95310 80094710 00000000 */   nop
/* 95314 80094714 1053003C */  beq        $v0, $s3, .L80094808
/* 95318 80094718 00000000 */   nop
/* 9531C 8009471C 080251BD */  j          .L800946F4
/* 95320 80094720 00000000 */   nop
.L80094724:
/* 95324 80094724 0C025210 */  jal        func_80094840
/* 95328 80094728 00000000 */   nop
/* 9532C 8009472C 3C02802C */  lui        $v0, %hi(D_802C45A0)
/* 95330 80094730 944245A0 */  lhu        $v0, %lo(D_802C45A0)($v0)
/* 95334 80094734 2442FFFF */  addiu      $v0, $v0, -0x1
/* 95338 80094738 3C01802C */  lui        $at, %hi(D_802C45A0)
/* 9533C 8009473C A42245A0 */  sh         $v0, %lo(D_802C45A0)($at)
/* 95340 80094740 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 95344 80094744 1440000C */  bnez       $v0, .L80094778
/* 95348 80094748 00000000 */   nop
/* 9534C 8009474C 0C0260C8 */  jal        func_80098320
/* 95350 80094750 00000000 */   nop
/* 95354 80094754 8C440010 */  lw         $a0, 0x10($v0)
/* 95358 80094758 10800004 */  beqz       $a0, .L8009476C
/* 9535C 8009475C 00408021 */   addu      $s0, $v0, $zero
/* 95360 80094760 8E050014 */  lw         $a1, 0x14($s0)
/* 95364 80094764 0C000B9C */  jal        osSendMesg
/* 95368 80094768 00003021 */   addu      $a2, $zero, $zero
.L8009476C:
/* 9536C 8009476C 96020002 */  lhu        $v0, 0x2($s0)
/* 95370 80094770 3C01802C */  lui        $at, %hi(D_802C45A0)
/* 95374 80094774 A42245A0 */  sh         $v0, %lo(D_802C45A0)($at)
.L80094778:
/* 95378 80094778 3C02802D */  lui        $v0, %hi(D_802D0BB0)
/* 9537C 8009477C 8C420BB0 */  lw         $v0, %lo(D_802D0BB0)($v0)
/* 95380 80094780 24420001 */  addiu      $v0, $v0, 0x1
/* 95384 80094784 3C01802D */  lui        $at, %hi(D_802D0BB0)
/* 95388 80094788 1220000A */  beqz       $s1, .L800947B4
/* 9538C 8009478C AC220BB0 */   sw        $v0, %lo(D_802D0BB0)($at)
/* 95390 80094790 0C0252D4 */  jal        func_80094B50
/* 95394 80094794 00008821 */   addu      $s1, $zero, $zero
/* 95398 80094798 00408021 */  addu       $s0, $v0, $zero
/* 9539C 8009479C 02001821 */  addu       $v1, $s0, $zero
/* 953A0 800947A0 00001021 */  addu       $v0, $zero, $zero
/* 953A4 800947A4 3C01802D */  lui        $at, %hi(D_802D2FC8)
/* 953A8 800947A8 AC222FC8 */  sw         $v0, %lo(D_802D2FC8)($at)
/* 953AC 800947AC 3C01802D */  lui        $at, %hi(D_802D2FCC)
/* 953B0 800947B0 AC232FCC */  sw         $v1, %lo(D_802D2FCC)($at)
.L800947B4:
/* 953B4 800947B4 3C10802C */  lui        $s0, %hi(D_802C6680)
/* 953B8 800947B8 0C0252D4 */  jal        func_80094B50
/* 953BC 800947BC 8E106680 */   lw        $s0, %lo(D_802C6680)($s0)
/* 953C0 800947C0 3C01802C */  lui        $at, %hi(D_802C6680)
/* 953C4 800947C4 AC226680 */  sw         $v0, %lo(D_802C6680)($at)
/* 953C8 800947C8 00508023 */  subu       $s0, $v0, $s0
/* 953CC 800947CC 3C02802D */  lui        $v0, %hi(D_802D2FC8)
/* 953D0 800947D0 8C422FC8 */  lw         $v0, %lo(D_802D2FC8)($v0)
/* 953D4 800947D4 3C03802D */  lui        $v1, %hi(D_802D2FCC)
/* 953D8 800947D8 8C632FCC */  lw         $v1, %lo(D_802D2FCC)($v1)
/* 953DC 800947DC 02002821 */  addu       $a1, $s0, $zero
/* 953E0 800947E0 00002021 */  addu       $a0, $zero, $zero
/* 953E4 800947E4 00651821 */  addu       $v1, $v1, $a1
/* 953E8 800947E8 0065302B */  sltu       $a2, $v1, $a1
/* 953EC 800947EC 00441021 */  addu       $v0, $v0, $a0
/* 953F0 800947F0 00461021 */  addu       $v0, $v0, $a2
/* 953F4 800947F4 3C01802D */  lui        $at, %hi(D_802D2FC8)
/* 953F8 800947F8 AC222FC8 */  sw         $v0, %lo(D_802D2FC8)($at)
/* 953FC 800947FC 3C01802D */  lui        $at, %hi(D_802D2FCC)
/* 95400 80094800 080251BD */  j          .L800946F4
/* 95404 80094804 AC232FCC */   sw        $v1, %lo(D_802D2FCC)($at)
.L80094808:
/* 95408 80094808 0C02406D */  jal        func_800901B4
/* 9540C 8009480C 00000000 */   nop
/* 95410 80094810 080251BD */  j          .L800946F4
/* 95414 80094814 00000000 */   nop
/* 95418 80094818 8FBF002C */  lw         $ra, 0x2C($sp)
/* 9541C 8009481C 8FB40028 */  lw         $s4, 0x28($sp)
/* 95420 80094820 8FB30024 */  lw         $s3, 0x24($sp)
/* 95424 80094824 8FB20020 */  lw         $s2, 0x20($sp)
/* 95428 80094828 8FB1001C */  lw         $s1, 0x1C($sp)
/* 9542C 8009482C 8FB00018 */  lw         $s0, 0x18($sp)
/* 95430 80094830 03E00008 */  jr         $ra
/* 95434 80094834 27BD0030 */   addiu     $sp, $sp, 0x30
/* 95438 80094838 00000000 */  nop
/* 9543C 8009483C 00000000 */  nop