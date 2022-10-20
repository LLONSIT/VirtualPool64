.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800496D0
/* 4A2D0 800496D0 03E00008 */  jr         $ra
/* 4A2D4 800496D4 00000000 */   nop

glabel func_800496D8
/* 4A2D8 800496D8 3C02803F */  lui        $v0, %hi(D_803ED3DB)
/* 4A2DC 800496DC 9042D3DB */  lbu        $v0, %lo(D_803ED3DB)($v0)
/* 4A2E0 800496E0 10400005 */  beqz       $v0, .L800496F8
/* 4A2E4 800496E4 24020004 */   addiu     $v0, $zero, 0x4
/* 4A2E8 800496E8 3C03802F */  lui        $v1, %hi(D_802F0920)
/* 4A2EC 800496EC 8C630920 */  lw         $v1, %lo(D_802F0920)($v1)
/* 4A2F0 800496F0 14620010 */  bne        $v1, $v0, .L80049734
/* 4A2F4 800496F4 00000000 */   nop
.L800496F8:
/* 4A2F8 800496F8 3C04802D */  lui        $a0, %hi(D_802D0C4C)
/* 4A2FC 800496FC 8C840C4C */  lw         $a0, %lo(D_802D0C4C)($a0)
/* 4A300 80049700 3C025555 */  lui        $v0, (0x55555556 >> 16)
/* 4A304 80049704 34425556 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
/* 4A308 80049708 24840001 */  addiu      $a0, $a0, 0x1
/* 4A30C 8004970C 00820018 */  mult       $a0, $v0
/* 4A310 80049710 00041FC3 */  sra        $v1, $a0, 31
/* 4A314 80049714 00002810 */  mfhi       $a1
/* 4A318 80049718 00A31823 */  subu       $v1, $a1, $v1
/* 4A31C 8004971C 00031040 */  sll        $v0, $v1, 1
/* 4A320 80049720 00431021 */  addu       $v0, $v0, $v1
/* 4A324 80049724 00822023 */  subu       $a0, $a0, $v0
/* 4A328 80049728 3C01802D */  lui        $at, %hi(D_802D0C4C)
/* 4A32C 8004972C 080125D4 */  j          .L80049750
/* 4A330 80049730 AC240C4C */   sw        $a0, %lo(D_802D0C4C)($at)
.L80049734:
/* 4A334 80049734 3C02802D */  lui        $v0, %hi(D_802D0C4C)
/* 4A338 80049738 8C420C4C */  lw         $v0, %lo(D_802D0C4C)($v0)
/* 4A33C 8004973C 38420002 */  xori       $v0, $v0, 0x2
/* 4A340 80049740 0002102B */  sltu       $v0, $zero, $v0
/* 4A344 80049744 00021040 */  sll        $v0, $v0, 1
/* 4A348 80049748 3C01802D */  lui        $at, %hi(D_802D0C4C)
/* 4A34C 8004974C AC220C4C */  sw         $v0, %lo(D_802D0C4C)($at)
.L80049750:
/* 4A350 80049750 3C02802D */  lui        $v0, %hi(D_802D0C4C)
/* 4A354 80049754 8C420C4C */  lw         $v0, %lo(D_802D0C4C)($v0)
/* 4A358 80049758 3C03800C */  lui        $v1, %hi(D_800C6B88)
/* 4A35C 8004975C 80636B88 */  lb         $v1, %lo(D_800C6B88)($v1)
/* 4A360 80049760 3C01803F */  lui        $at, %hi(D_803ED060)
/* 4A364 80049764 AC22D060 */  sw         $v0, %lo(D_803ED060)($at)
/* 4A368 80049768 14600007 */  bnez       $v1, .L80049788
/* 4A36C 8004976C 24020003 */   addiu     $v0, $zero, 0x3
/* 4A370 80049770 3C03802C */  lui        $v1, %hi(D_802C7930)
/* 4A374 80049774 8C637930 */  lw         $v1, %lo(D_802C7930)($v1)
/* 4A378 80049778 10620003 */  beq        $v1, $v0, .L80049788
/* 4A37C 8004977C 24020001 */   addiu     $v0, $zero, 0x1
/* 4A380 80049780 3C01802F */  lui        $at, %hi(D_802F06E8)
/* 4A384 80049784 AC2206E8 */  sw         $v0, %lo(D_802F06E8)($at)
.L80049788:
/* 4A388 80049788 03E00008 */  jr         $ra
/* 4A38C 8004978C 00000000 */   nop

glabel func_80049790
/* 4A390 80049790 00003021 */  addu       $a2, $zero, $zero
/* 4A394 80049794 24080010 */  addiu      $t0, $zero, 0x10
/* 4A398 80049798 3C01800D */  lui        $at, %hi(D_800D3A30)
/* 4A39C 8004979C D4263A30 */  ldc1       $f6, %lo(D_800D3A30)($at)
/* 4A3A0 800497A0 00003821 */  addu       $a3, $zero, $zero
.L800497A4:
/* 4A3A4 800497A4 3C028031 */  lui        $v0, %hi(D_80312ADA)
/* 4A3A8 800497A8 00471021 */  addu       $v0, $v0, $a3
/* 4A3AC 800497AC 80422ADA */  lb         $v0, %lo(D_80312ADA)($v0)
/* 4A3B0 800497B0 50480026 */  beql       $v0, $t0, .L8004984C
/* 4A3B4 800497B4 24C60001 */   addiu     $a2, $a2, 0x1
/* 4A3B8 800497B8 00002021 */  addu       $a0, $zero, $zero
/* 4A3BC 800497BC 00E02821 */  addu       $a1, $a3, $zero
/* 4A3C0 800497C0 00001821 */  addu       $v1, $zero, $zero
.L800497C4:
/* 4A3C4 800497C4 5086001D */  beql       $a0, $a2, .L8004983C
/* 4A3C8 800497C8 24840001 */   addiu     $a0, $a0, 0x1
/* 4A3CC 800497CC 3C028031 */  lui        $v0, %hi(D_80312ADA)
/* 4A3D0 800497D0 00431021 */  addu       $v0, $v0, $v1
/* 4A3D4 800497D4 80422ADA */  lb         $v0, %lo(D_80312ADA)($v0)
/* 4A3D8 800497D8 50480018 */  beql       $v0, $t0, .L8004983C
/* 4A3DC 800497DC 24840001 */   addiu     $a0, $a0, 0x1
/* 4A3E0 800497E0 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 4A3E4 800497E4 00230821 */  addu       $at, $at, $v1
/* 4A3E8 800497E8 D4222AC0 */  ldc1       $f2, %lo(D_80312AC0)($at)
/* 4A3EC 800497EC 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 4A3F0 800497F0 00250821 */  addu       $at, $at, $a1
/* 4A3F4 800497F4 D4202AC0 */  ldc1       $f0, %lo(D_80312AC0)($at)
/* 4A3F8 800497F8 46201081 */  sub.d      $f2, $f2, $f0
/* 4A3FC 800497FC 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 4A400 80049800 00250821 */  addu       $at, $at, $a1
/* 4A404 80049804 D4242AD0 */  ldc1       $f4, %lo(D_80312AD0)($at)
/* 4A408 80049808 46221082 */  mul.d      $f2, $f2, $f2
/* 4A40C 8004980C 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 4A410 80049810 00230821 */  addu       $at, $at, $v1
/* 4A414 80049814 D4202AD0 */  ldc1       $f0, %lo(D_80312AD0)($at)
/* 4A418 80049818 46240001 */  sub.d      $f0, $f0, $f4
/* 4A41C 8004981C 46200002 */  mul.d      $f0, $f0, $f0
/* 4A420 80049820 46201080 */  add.d      $f2, $f2, $f0
/* 4A424 80049824 4626103C */  c.lt.d     $f2, $f6
/* 4A428 80049828 00000000 */  nop
/* 4A42C 8004982C 00000000 */  nop
/* 4A430 80049830 4501000A */  bc1t       .L8004985C
/* 4A434 80049834 24020001 */   addiu     $v0, $zero, 0x1
/* 4A438 80049838 24840001 */  addiu      $a0, $a0, 0x1
.L8004983C:
/* 4A43C 8004983C 28820010 */  slti       $v0, $a0, 0x10
/* 4A440 80049840 1440FFE0 */  bnez       $v0, .L800497C4
/* 4A444 80049844 24630030 */   addiu     $v1, $v1, 0x30
/* 4A448 80049848 24C60001 */  addiu      $a2, $a2, 0x1
.L8004984C:
/* 4A44C 8004984C 28C20010 */  slti       $v0, $a2, 0x10
/* 4A450 80049850 1440FFD4 */  bnez       $v0, .L800497A4
/* 4A454 80049854 24E70030 */   addiu     $a3, $a3, 0x30
/* 4A458 80049858 00001021 */  addu       $v0, $zero, $zero
.L8004985C:
/* 4A45C 8004985C 03E00008 */  jr         $ra
/* 4A460 80049860 00000000 */   nop

glabel func_80049864
/* 4A464 80049864 3C02802D */  lui        $v0, %hi(D_802D0C4C)
/* 4A468 80049868 8C420C4C */  lw         $v0, %lo(D_802D0C4C)($v0)
/* 4A46C 8004986C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4A470 80049870 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4A474 80049874 AFB10014 */  sw         $s1, 0x14($sp)
/* 4A478 80049878 10400073 */  beqz       $v0, .L80049A48
/* 4A47C 8004987C AFB00010 */   sw        $s0, 0x10($sp)
/* 4A480 80049880 3C02800C */  lui        $v0, %hi(D_800C6B88)
/* 4A484 80049884 80426B88 */  lb         $v0, %lo(D_800C6B88)($v0)
/* 4A488 80049888 1440006F */  bnez       $v0, .L80049A48
/* 4A48C 8004988C 24020002 */   addiu     $v0, $zero, 0x2
/* 4A490 80049890 3C03802F */  lui        $v1, %hi(D_802F0920)
/* 4A494 80049894 8C630920 */  lw         $v1, %lo(D_802F0920)($v1)
/* 4A498 80049898 14620005 */  bne        $v1, $v0, .L800498B0
/* 4A49C 8004989C 00000000 */   nop
/* 4A4A0 800498A0 3C02802F */  lui        $v0, %hi(gPlayers_turn)
/* 4A4A4 800498A4 8042F798 */  lb         $v0, %lo(gPlayers_turn)($v0)
/* 4A4A8 800498A8 14400067 */  bnez       $v0, .L80049A48
/* 4A4AC 800498AC 00000000 */   nop
.L800498B0:
/* 4A4B0 800498B0 0C0125E4 */  jal        func_80049790
/* 4A4B4 800498B4 00000000 */   nop
/* 4A4B8 800498B8 14400063 */  bnez       $v0, .L80049A48
/* 4A4BC 800498BC 00000000 */   nop
/* 4A4C0 800498C0 3C01802D */  lui        $at, %hi(D_802D0BCC)
/* 4A4C4 800498C4 AC200BCC */  sw         $zero, %lo(D_802D0BCC)($at)
/* 4A4C8 800498C8 3C01802F */  lui        $at, %hi(D_802F06F4)
/* 4A4CC 800498CC AC2006F4 */  sw         $zero, %lo(D_802F06F4)($at)
/* 4A4D0 800498D0 3C01802D */  lui        $at, %hi(D_802D0BC0)
/* 4A4D4 800498D4 AC200BC0 */  sw         $zero, %lo(D_802D0BC0)($at)
/* 4A4D8 800498D8 3C01803F */  lui        $at, %hi(D_803F5B38)
/* 4A4DC 800498DC AC205B38 */  sw         $zero, %lo(D_803F5B38)($at)
/* 4A4E0 800498E0 3C01802F */  lui        $at, %hi(D_802F2640)
/* 4A4E4 800498E4 AC202640 */  sw         $zero, %lo(D_802F2640)($at)
/* 4A4E8 800498E8 3C01802B */  lui        $at, %hi(D_802AD83D)
/* 4A4EC 800498EC A020D83D */  sb         $zero, %lo(D_802AD83D)($at)
/* 4A4F0 800498F0 0C01EDCA */  jal        func_8007B728
/* 4A4F4 800498F4 00008021 */   addu      $s0, $zero, $zero
/* 4A4F8 800498F8 3C02802D */  lui        $v0, %hi(D_802D0BF0)
/* 4A4FC 800498FC 8C420BF0 */  lw         $v0, %lo(D_802D0BF0)($v0)
/* 4A500 80049900 3C04802C */  lui        $a0, %hi(D_802C6050)
/* 4A504 80049904 8C846050 */  lw         $a0, %lo(D_802C6050)($a0)
/* 4A508 80049908 3C01802B */  lui        $at, %hi(D_802AD828)
/* 4A50C 8004990C AC20D828 */  sw         $zero, %lo(D_802AD828)($at)
/* 4A510 80049910 3C01802B */  lui        $at, %hi(D_802AD82C)
/* 4A514 80049914 AC20D82C */  sw         $zero, %lo(D_802AD82C)($at)
/* 4A518 80049918 000218C0 */  sll        $v1, $v0, 3
/* 4A51C 8004991C 00621823 */  subu       $v1, $v1, $v0
/* 4A520 80049920 00031900 */  sll        $v1, $v1, 4
/* 4A524 80049924 00838821 */  addu       $s1, $a0, $v1
.L80049928:
/* 4A528 80049928 02202021 */  addu       $a0, $s1, $zero
/* 4A52C 8004992C 0C012857 */  jal        func_8004A15C
/* 4A530 80049930 02002821 */   addu      $a1, $s0, $zero
/* 4A534 80049934 26100001 */  addiu      $s0, $s0, 0x1
/* 4A538 80049938 2A020010 */  slti       $v0, $s0, 0x10
/* 4A53C 8004993C 1440FFFA */  bnez       $v0, .L80049928
/* 4A540 80049940 26310070 */   addiu     $s1, $s1, 0x70
/* 4A544 80049944 3C01802F */  lui        $at, %hi(D_802EF140)
/* 4A548 80049948 D422F140 */  ldc1       $f2, %lo(D_802EF140)($at)
/* 4A54C 8004994C 3C01800D */  lui        $at, %hi(D_800D3A38)
/* 4A550 80049950 D4203A38 */  ldc1       $f0, %lo(D_800D3A38)($at)
/* 4A554 80049954 4620103E */  c.le.d     $f2, $f0
/* 4A558 80049958 00000000 */  nop
/* 4A55C 8004995C 45000005 */  bc1f       .L80049974
/* 4A560 80049960 00000000 */   nop
/* 4A564 80049964 3C02803F */  lui        $v0, %hi(D_803EF720)
/* 4A568 80049968 8C42F720 */  lw         $v0, %lo(D_803EF720)($v0)
/* 4A56C 8004996C 14400003 */  bnez       $v0, .L8004997C
/* 4A570 80049970 24100001 */   addiu     $s0, $zero, 0x1
.L80049974:
/* 4A574 80049974 0C00253D */  jal        func_800094F4
/* 4A578 80049978 24100001 */   addiu     $s0, $zero, 0x1
.L8004997C:
/* 4A57C 8004997C 24110002 */  addiu      $s1, $zero, 0x2
.L80049980:
/* 4A580 80049980 0C01EE46 */  jal        func_8007B918
/* 4A584 80049984 00000000 */   nop
/* 4A588 80049988 3C02802D */  lui        $v0, %hi(D_802D0BF4)
/* 4A58C 8004998C 8C420BF4 */  lw         $v0, %lo(D_802D0BF4)($v0)
/* 4A590 80049990 10400029 */  beqz       $v0, .L80049A38
/* 4A594 80049994 00000000 */   nop
/* 4A598 80049998 3C01800C */  lui        $at, %hi(D_800C6B89)
/* 4A59C 8004999C A0306B89 */  sb         $s0, %lo(D_800C6B89)($at)
/* 4A5A0 800499A0 3C01800C */  lui        $at, %hi(D_800C6B8A)
/* 4A5A4 800499A4 0C0185F6 */  jal        func_800617D8
/* 4A5A8 800499A8 A0306B8A */   sb        $s0, %lo(D_800C6B8A)($at)
/* 4A5AC 800499AC 3C01802B */  lui        $at, %hi(D_802AD828)
/* 4A5B0 800499B0 D422D828 */  ldc1       $f2, %lo(D_802AD828)($at)
/* 4A5B4 800499B4 3C01802D */  lui        $at, %hi(D_802D2FF0)
/* 4A5B8 800499B8 D4202FF0 */  ldc1       $f0, %lo(D_802D2FF0)($at)
/* 4A5BC 800499BC 46201080 */  add.d      $f2, $f2, $f0
/* 4A5C0 800499C0 3C01800C */  lui        $at, %hi(D_800C6B8A)
/* 4A5C4 800499C4 A0206B8A */  sb         $zero, %lo(D_800C6B8A)($at)
/* 4A5C8 800499C8 3C01800C */  lui        $at, %hi(D_800C6B89)
/* 4A5CC 800499CC A0206B89 */  sb         $zero, %lo(D_800C6B89)($at)
/* 4A5D0 800499D0 3C01802B */  lui        $at, %hi(D_802AD828)
/* 4A5D4 800499D4 0C0128A1 */  jal        func_8004A284
/* 4A5D8 800499D8 F422D828 */   sdc1      $f2, %lo(D_802AD828)($at)
/* 4A5DC 800499DC 3C02802B */  lui        $v0, %hi(D_802AD83D)
/* 4A5E0 800499E0 9042D83D */  lbu        $v0, %lo(D_802AD83D)($v0)
/* 4A5E4 800499E4 3C03802D */  lui        $v1, %hi(D_802D0C4C)
/* 4A5E8 800499E8 8C630C4C */  lw         $v1, %lo(D_802D0C4C)($v1)
/* 4A5EC 800499EC 24440001 */  addiu      $a0, $v0, 0x1
/* 4A5F0 800499F0 3C01802B */  lui        $at, %hi(D_802AD83D)
/* 4A5F4 800499F4 A024D83D */  sb         $a0, %lo(D_802AD83D)($at)
/* 4A5F8 800499F8 14710005 */  bne        $v1, $s1, .L80049A10
/* 4A5FC 800499FC 00041600 */   sll       $v0, $a0, 24
/* 4A600 80049A00 3C02802D */  lui        $v0, %hi(D_802D0BCC)
/* 4A604 80049A04 8C420BCC */  lw         $v0, %lo(D_802D0BCC)($v0)
/* 4A608 80049A08 1440000B */  bnez       $v0, .L80049A38
/* 4A60C 80049A0C 00041600 */   sll       $v0, $a0, 24
.L80049A10:
/* 4A610 80049A10 00021603 */  sra        $v0, $v0, 24
/* 4A614 80049A14 28420014 */  slti       $v0, $v0, 0x14
/* 4A618 80049A18 1440FFD9 */  bnez       $v0, .L80049980
/* 4A61C 80049A1C 00000000 */   nop
/* 4A620 80049A20 0C01CB53 */  jal        func_80072D4C
/* 4A624 80049A24 00000000 */   nop
/* 4A628 80049A28 14400007 */  bnez       $v0, .L80049A48
/* 4A62C 80049A2C 00000000 */   nop
/* 4A630 80049A30 08012660 */  j          .L80049980
/* 4A634 80049A34 00000000 */   nop
.L80049A38:
/* 4A638 80049A38 0C01EE77 */  jal        func_8007B9DC
/* 4A63C 80049A3C 00000000 */   nop
/* 4A640 80049A40 0C0128A1 */  jal        func_8004A284
/* 4A644 80049A44 00000000 */   nop
.L80049A48:
/* 4A648 80049A48 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4A64C 80049A4C 8FB10014 */  lw         $s1, 0x14($sp)
/* 4A650 80049A50 8FB00010 */  lw         $s0, 0x10($sp)
/* 4A654 80049A54 03E00008 */  jr         $ra
/* 4A658 80049A58 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80049A5C
/* 4A65C 80049A5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4A660 80049A60 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4A664 80049A64 0C0026BB */  jal        func_80009AEC
/* 4A668 80049A68 00000000 */   nop
/* 4A66C 80049A6C 10400006 */  beqz       $v0, .L80049A88
/* 4A670 80049A70 00000000 */   nop
/* 4A674 80049A74 3C04802B */  lui        $a0, %hi(D_802AD7F0)
/* 4A678 80049A78 2484D7F0 */  addiu      $a0, $a0, %lo(D_802AD7F0)
/* 4A67C 80049A7C 3C05802B */  lui        $a1, %hi(D_802AD808)
/* 4A680 80049A80 0C008A99 */  jal        func_80022A64
/* 4A684 80049A84 24A5D808 */   addiu     $a1, $a1, %lo(D_802AD808)
.L80049A88:
/* 4A688 80049A88 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4A68C 80049A8C 03E00008 */  jr         $ra
/* 4A690 80049A90 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80049A94
/* 4A694 80049A94 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4A698 80049A98 AFB00010 */  sw         $s0, 0x10($sp)
/* 4A69C 80049A9C 00048040 */  sll        $s0, $a0, 1
/* 4A6A0 80049AA0 02048021 */  addu       $s0, $s0, $a0
/* 4A6A4 80049AA4 00108140 */  sll        $s0, $s0, 5
/* 4A6A8 80049AA8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4A6AC 80049AAC AFB10014 */  sw         $s1, 0x14($sp)
/* 4A6B0 80049AB0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4A6B4 80049AB4 3C01802B */  lui        $at, %hi(D_802AD218)
/* 4A6B8 80049AB8 00300821 */  addu       $at, $at, $s0
/* 4A6BC 80049ABC D420D218 */  ldc1       $f0, %lo(D_802AD218)($at)
/* 4A6C0 80049AC0 3C01802B */  lui        $at, %hi(D_802AD210)
/* 4A6C4 80049AC4 00300821 */  addu       $at, $at, $s0
/* 4A6C8 80049AC8 D422D210 */  ldc1       $f2, %lo(D_802AD210)($at)
/* 4A6CC 80049ACC 46200007 */  neg.d      $f0, $f0
/* 4A6D0 80049AD0 46220002 */  mul.d      $f0, $f0, $f2
/* 4A6D4 80049AD4 3C01802B */  lui        $at, %hi(D_802AD230)
/* 4A6D8 80049AD8 00300821 */  addu       $at, $at, $s0
/* 4A6DC 80049ADC D424D230 */  ldc1       $f4, %lo(D_802AD230)($at)
/* 4A6E0 80049AE0 3C01802B */  lui        $at, %hi(D_802AD248)
/* 4A6E4 80049AE4 00300821 */  addu       $at, $at, $s0
/* 4A6E8 80049AE8 D422D248 */  ldc1       $f2, %lo(D_802AD248)($at)
/* 4A6EC 80049AEC 46241082 */  mul.d      $f2, $f2, $f4
/* 4A6F0 80049AF0 46220000 */  add.d      $f0, $f0, $f2
/* 4A6F4 80049AF4 3C11803F */  lui        $s1, %hi(D_803F5C28)
/* 4A6F8 80049AF8 26315C28 */  addiu      $s1, $s1, %lo(D_803F5C28)
/* 4A6FC 80049AFC F6200000 */  sdc1       $f0, 0x0($s1)
/* 4A700 80049B00 3C01802B */  lui        $at, %hi(D_802AD228)
/* 4A704 80049B04 00300821 */  addu       $at, $at, $s0
/* 4A708 80049B08 D420D228 */  ldc1       $f0, %lo(D_802AD228)($at)
/* 4A70C 80049B0C 3C01802B */  lui        $at, %hi(D_802AD210)
/* 4A710 80049B10 00300821 */  addu       $at, $at, $s0
/* 4A714 80049B14 D422D210 */  ldc1       $f2, %lo(D_802AD210)($at)
/* 4A718 80049B18 46200007 */  neg.d      $f0, $f0
/* 4A71C 80049B1C 46220002 */  mul.d      $f0, $f0, $f2
/* 4A720 80049B20 3C01802B */  lui        $at, %hi(D_802AD230)
/* 4A724 80049B24 00300821 */  addu       $at, $at, $s0
/* 4A728 80049B28 D424D230 */  ldc1       $f4, %lo(D_802AD230)($at)
/* 4A72C 80049B2C 3C01802B */  lui        $at, %hi(D_802AD238)
/* 4A730 80049B30 00300821 */  addu       $at, $at, $s0
/* 4A734 80049B34 D422D238 */  ldc1       $f2, %lo(D_802AD238)($at)
/* 4A738 80049B38 46241082 */  mul.d      $f2, $f2, $f4
/* 4A73C 80049B3C 46220001 */  sub.d      $f0, $f0, $f2
/* 4A740 80049B40 4487A000 */  mtc1       $a3, $f20
/* 4A744 80049B44 4486A800 */  mtc1       $a2, $f21
/* 4A748 80049B48 3C01803F */  lui        $at, %hi(D_803F5C38)
/* 4A74C 80049B4C F4205C38 */  sdc1       $f0, %lo(D_803F5C38)($at)
/* 4A750 80049B50 0C022D13 */  jal        func_8008B44C
/* 4A754 80049B54 02202021 */   addu      $a0, $s1, $zero
/* 4A758 80049B58 D6220000 */  ldc1       $f2, 0x0($s1)
/* 4A75C 80049B5C 3C01800C */  lui        $at, %hi(D_800C6A30)
/* 4A760 80049B60 D4266A30 */  ldc1       $f6, %lo(D_800C6A30)($at)
/* 4A764 80049B64 46261082 */  mul.d      $f2, $f2, $f6
/* 4A768 80049B68 3C01802B */  lui        $at, %hi(D_802AD218)
/* 4A76C 80049B6C 00300821 */  addu       $at, $at, $s0
/* 4A770 80049B70 D420D218 */  ldc1       $f0, %lo(D_802AD218)($at)
/* 4A774 80049B74 3C01802B */  lui        $at, %hi(D_802AD210)
/* 4A778 80049B78 00300821 */  addu       $at, $at, $s0
/* 4A77C 80049B7C D424D210 */  ldc1       $f4, %lo(D_802AD210)($at)
/* 4A780 80049B80 46240002 */  mul.d      $f0, $f0, $f4
/* 4A784 80049B84 00000000 */  nop
/* 4A788 80049B88 46341082 */  mul.d      $f2, $f2, $f20
/* 4A78C 80049B8C 46201080 */  add.d      $f2, $f2, $f0
/* 4A790 80049B90 46341082 */  mul.d      $f2, $f2, $f20
/* 4A794 80049B94 3C01803F */  lui        $at, %hi(D_803F5C38)
/* 4A798 80049B98 D4245C38 */  ldc1       $f4, %lo(D_803F5C38)($at)
/* 4A79C 80049B9C 46262102 */  mul.d      $f4, $f4, $f6
/* 4A7A0 80049BA0 3C01802B */  lui        $at, %hi(D_802AD1F8)
/* 4A7A4 80049BA4 00300821 */  addu       $at, $at, $s0
/* 4A7A8 80049BA8 D420D1F8 */  ldc1       $f0, %lo(D_802AD1F8)($at)
/* 4A7AC 80049BAC 46220000 */  add.d      $f0, $f0, $f2
/* 4A7B0 80049BB0 46342102 */  mul.d      $f4, $f4, $f20
/* 4A7B4 80049BB4 3C01802B */  lui        $at, %hi(D_802AD810)
/* 4A7B8 80049BB8 AC20D810 */  sw         $zero, %lo(D_802AD810)($at)
/* 4A7BC 80049BBC 3C01802B */  lui        $at, %hi(D_802AD814)
/* 4A7C0 80049BC0 AC20D814 */  sw         $zero, %lo(D_802AD814)($at)
/* 4A7C4 80049BC4 3C01802B */  lui        $at, %hi(D_802AD808)
/* 4A7C8 80049BC8 F420D808 */  sdc1       $f0, %lo(D_802AD808)($at)
/* 4A7CC 80049BCC 3C01802B */  lui        $at, %hi(D_802AD228)
/* 4A7D0 80049BD0 00300821 */  addu       $at, $at, $s0
/* 4A7D4 80049BD4 D420D228 */  ldc1       $f0, %lo(D_802AD228)($at)
/* 4A7D8 80049BD8 3C01802B */  lui        $at, %hi(D_802AD210)
/* 4A7DC 80049BDC 00300821 */  addu       $at, $at, $s0
/* 4A7E0 80049BE0 D422D210 */  ldc1       $f2, %lo(D_802AD210)($at)
/* 4A7E4 80049BE4 46220002 */  mul.d      $f0, $f0, $f2
/* 4A7E8 80049BE8 46202100 */  add.d      $f4, $f4, $f0
/* 4A7EC 80049BEC 46342102 */  mul.d      $f4, $f4, $f20
/* 4A7F0 80049BF0 3C01802B */  lui        $at, %hi(D_802AD208)
/* 4A7F4 80049BF4 00300821 */  addu       $at, $at, $s0
/* 4A7F8 80049BF8 D420D208 */  ldc1       $f0, %lo(D_802AD208)($at)
/* 4A7FC 80049BFC 46240000 */  add.d      $f0, $f0, $f4
/* 4A800 80049C00 3C01802B */  lui        $at, %hi(D_802AD818)
/* 4A804 80049C04 F420D818 */  sdc1       $f0, %lo(D_802AD818)($at)
/* 4A808 80049C08 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4A80C 80049C0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 4A810 80049C10 8FB00010 */  lw         $s0, 0x10($sp)
/* 4A814 80049C14 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4A818 80049C18 03E00008 */  jr         $ra
/* 4A81C 80049C1C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80049C20
/* 4A820 80049C20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4A824 80049C24 AFB40020 */  sw         $s4, 0x20($sp)
/* 4A828 80049C28 00A0A021 */  addu       $s4, $a1, $zero
/* 4A82C 80049C2C 00141040 */  sll        $v0, $s4, 1
/* 4A830 80049C30 00541021 */  addu       $v0, $v0, $s4
/* 4A834 80049C34 00021140 */  sll        $v0, $v0, 5
/* 4A838 80049C38 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4A83C 80049C3C AFB50024 */  sw         $s5, 0x24($sp)
/* 4A840 80049C40 AFB3001C */  sw         $s3, 0x1C($sp)
/* 4A844 80049C44 AFB20018 */  sw         $s2, 0x18($sp)
/* 4A848 80049C48 AFB10014 */  sw         $s1, 0x14($sp)
/* 4A84C 80049C4C AFB00010 */  sw         $s0, 0x10($sp)
/* 4A850 80049C50 3C01802B */  lui        $at, %hi(D_802AD1F8)
/* 4A854 80049C54 00220821 */  addu       $at, $at, $v0
/* 4A858 80049C58 D422D1F8 */  ldc1       $f2, %lo(D_802AD1F8)($at)
/* 4A85C 80049C5C 0080A821 */  addu       $s5, $a0, $zero
/* 4A860 80049C60 3C04802B */  lui        $a0, %hi(D_802AD7F0)
/* 4A864 80049C64 2484D7F0 */  addiu      $a0, $a0, %lo(D_802AD7F0)
/* 4A868 80049C68 3C01802B */  lui        $at, %hi(D_802AD7F8)
/* 4A86C 80049C6C AC20D7F8 */  sw         $zero, %lo(D_802AD7F8)($at)
/* 4A870 80049C70 3C01802B */  lui        $at, %hi(D_802AD7FC)
/* 4A874 80049C74 AC20D7FC */  sw         $zero, %lo(D_802AD7FC)($at)
/* 4A878 80049C78 F4820000 */  sdc1       $f2, 0x0($a0)
/* 4A87C 80049C7C 3C01802B */  lui        $at, %hi(D_802AD208)
/* 4A880 80049C80 00220821 */  addu       $at, $at, $v0
/* 4A884 80049C84 D424D208 */  ldc1       $f4, %lo(D_802AD208)($at)
/* 4A888 80049C88 3C01802B */  lui        $at, %hi(D_802AD800)
/* 4A88C 80049C8C F424D800 */  sdc1       $f4, %lo(D_802AD800)($at)
/* 4A890 80049C90 D6A00008 */  ldc1       $f0, 0x8($s5)
/* 4A894 80049C94 46201081 */  sub.d      $f2, $f2, $f0
/* 4A898 80049C98 D6A60018 */  ldc1       $f6, 0x18($s5)
/* 4A89C 80049C9C 3C01802B */  lui        $at, %hi(D_802AD828)
/* 4A8A0 80049CA0 D428D828 */  ldc1       $f8, %lo(D_802AD828)($at)
/* 4A8A4 80049CA4 46262101 */  sub.d      $f4, $f4, $f6
/* 4A8A8 80049CA8 3C01802B */  lui        $at, %hi(D_802AD1F0)
/* 4A8AC 80049CAC 00220821 */  addu       $at, $at, $v0
/* 4A8B0 80049CB0 D420D1F0 */  ldc1       $f0, %lo(D_802AD1F0)($at)
/* 4A8B4 80049CB4 46204201 */  sub.d      $f8, $f8, $f0
/* 4A8B8 80049CB8 3C01800D */  lui        $at, %hi(D_800D3A40)
/* 4A8BC 80049CBC D4203A40 */  ldc1       $f0, %lo(D_800D3A40)($at)
/* 4A8C0 80049CC0 46201085 */  abs.d      $f2, $f2
/* 4A8C4 80049CC4 46204002 */  mul.d      $f0, $f8, $f0
/* 4A8C8 80049CC8 46202105 */  abs.d      $f4, $f4
/* 4A8CC 80049CCC 46241080 */  add.d      $f2, $f2, $f4
/* 4A8D0 80049CD0 46201080 */  add.d      $f2, $f2, $f0
/* 4A8D4 80049CD4 24020001 */  addiu      $v0, $zero, 0x1
/* 4A8D8 80049CD8 3C01802B */  lui        $at, %hi(D_802AD83C)
/* 4A8DC 80049CDC A022D83C */  sb         $v0, %lo(D_802AD83C)($at)
/* 4A8E0 80049CE0 3C01802B */  lui        $at, %hi(D_802AD830)
/* 4A8E4 80049CE4 F428D830 */  sdc1       $f8, %lo(D_802AD830)($at)
/* 4A8E8 80049CE8 4620100D */  trunc.w.d  $f0, $f2
/* 4A8EC 80049CEC 44020000 */  mfc1       $v0, $f0
/* 4A8F0 80049CF0 3C01802B */  lui        $at, %hi(D_802AD820)
/* 4A8F4 80049CF4 AC22D820 */  sw         $v0, %lo(D_802AD820)($at)
/* 4A8F8 80049CF8 14400003 */  bnez       $v0, .L80049D08
/* 4A8FC 80049CFC 24020001 */   addiu     $v0, $zero, 0x1
/* 4A900 80049D00 3C01802B */  lui        $at, %hi(D_802AD820)
/* 4A904 80049D04 AC22D820 */  sw         $v0, %lo(D_802AD820)($at)
.L80049D08:
/* 4A908 80049D08 3C10802B */  lui        $s0, %hi(D_802AD820)
/* 4A90C 80049D0C 8E10D820 */  lw         $s0, %lo(D_802AD820)($s0)
/* 4A910 80049D10 2610FFFF */  addiu      $s0, $s0, -0x1
/* 4A914 80049D14 12000020 */  beqz       $s0, .L80049D98
/* 4A918 80049D18 24110001 */   addiu     $s1, $zero, 0x1
/* 4A91C 80049D1C 00809821 */  addu       $s3, $a0, $zero
/* 4A920 80049D20 3C12802B */  lui        $s2, %hi(D_802AD808)
/* 4A924 80049D24 2652D808 */  addiu      $s2, $s2, %lo(D_802AD808)
.L80049D28:
/* 4A928 80049D28 3C01802B */  lui        $at, %hi(D_802AD830)
/* 4A92C 80049D2C D422D830 */  ldc1       $f2, %lo(D_802AD830)($at)
/* 4A930 80049D30 44910000 */  mtc1       $s1, $f0
/* 4A934 80049D34 00000000 */  nop
/* 4A938 80049D38 46800021 */  cvt.d.w    $f0, $f0
/* 4A93C 80049D3C 46201082 */  mul.d      $f2, $f2, $f0
/* 4A940 80049D40 3C01802B */  lui        $at, %hi(D_802AD820)
/* 4A944 80049D44 C420D820 */  lwc1       $f0, %lo(D_802AD820)($at)
/* 4A948 80049D48 46800021 */  cvt.d.w    $f0, $f0
/* 4A94C 80049D4C 46201083 */  div.d      $f2, $f2, $f0
/* 4A950 80049D50 44071000 */  mfc1       $a3, $f2
/* 4A954 80049D54 44061800 */  mfc1       $a2, $f3
/* 4A958 80049D58 00000000 */  nop
/* 4A95C 80049D5C 0C0126A5 */  jal        func_80049A94
/* 4A960 80049D60 02802021 */   addu      $a0, $s4, $zero
/* 4A964 80049D64 0C012697 */  jal        func_80049A5C
/* 4A968 80049D68 26310001 */   addiu     $s1, $s1, 0x1
/* 4A96C 80049D6C D6400000 */  ldc1       $f0, 0x0($s2)
/* 4A970 80049D70 D6420010 */  ldc1       $f2, 0x10($s2)
/* 4A974 80049D74 3C02802B */  lui        $v0, %hi(D_802AD83C)
/* 4A978 80049D78 9042D83C */  lbu        $v0, %lo(D_802AD83C)($v0)
/* 4A97C 80049D7C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 4A980 80049D80 38420001 */  xori       $v0, $v0, 0x1
/* 4A984 80049D84 F6600000 */  sdc1       $f0, 0x0($s3)
/* 4A988 80049D88 F6620010 */  sdc1       $f2, 0x10($s3)
/* 4A98C 80049D8C 3C01802B */  lui        $at, %hi(D_802AD83C)
/* 4A990 80049D90 1600FFE5 */  bnez       $s0, .L80049D28
/* 4A994 80049D94 A022D83C */   sb        $v0, %lo(D_802AD83C)($at)
.L80049D98:
/* 4A998 80049D98 D6A00008 */  ldc1       $f0, 0x8($s5)
/* 4A99C 80049D9C 3C01802B */  lui        $at, %hi(D_802AD810)
/* 4A9A0 80049DA0 AC20D810 */  sw         $zero, %lo(D_802AD810)($at)
/* 4A9A4 80049DA4 3C01802B */  lui        $at, %hi(D_802AD814)
/* 4A9A8 80049DA8 AC20D814 */  sw         $zero, %lo(D_802AD814)($at)
/* 4A9AC 80049DAC 3C01802B */  lui        $at, %hi(D_802AD808)
/* 4A9B0 80049DB0 F420D808 */  sdc1       $f0, %lo(D_802AD808)($at)
/* 4A9B4 80049DB4 D6A00018 */  ldc1       $f0, 0x18($s5)
/* 4A9B8 80049DB8 3C01802B */  lui        $at, %hi(D_802AD818)
/* 4A9BC 80049DBC 0C012697 */  jal        func_80049A5C
/* 4A9C0 80049DC0 F420D818 */   sdc1      $f0, %lo(D_802AD818)($at)
/* 4A9C4 80049DC4 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4A9C8 80049DC8 8FB50024 */  lw         $s5, 0x24($sp)
/* 4A9CC 80049DCC 8FB40020 */  lw         $s4, 0x20($sp)
/* 4A9D0 80049DD0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 4A9D4 80049DD4 8FB20018 */  lw         $s2, 0x18($sp)
/* 4A9D8 80049DD8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4A9DC 80049DDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4A9E0 80049DE0 03E00008 */  jr         $ra
/* 4A9E4 80049DE4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80049DE8
/* 4A9E8 80049DE8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4A9EC 80049DEC AFB3001C */  sw         $s3, 0x1C($sp)
/* 4A9F0 80049DF0 00809821 */  addu       $s3, $a0, $zero
/* 4A9F4 80049DF4 24020001 */  addiu      $v0, $zero, 0x1
/* 4A9F8 80049DF8 3C01802B */  lui        $at, %hi(D_802AD83C)
/* 4A9FC 80049DFC A022D83C */  sb         $v0, %lo(D_802AD83C)($at)
/* 4AA00 80049E00 00051040 */  sll        $v0, $a1, 1
/* 4AA04 80049E04 00451021 */  addu       $v0, $v0, $a1
/* 4AA08 80049E08 00023940 */  sll        $a3, $v0, 5
/* 4AA0C 80049E0C 3C02802B */  lui        $v0, %hi(D_802AD7F0)
/* 4AA10 80049E10 2442D7F0 */  addiu      $v0, $v0, %lo(D_802AD7F0)
/* 4AA14 80049E14 AFBF0020 */  sw         $ra, 0x20($sp)
/* 4AA18 80049E18 AFB20018 */  sw         $s2, 0x18($sp)
/* 4AA1C 80049E1C AFB10014 */  sw         $s1, 0x14($sp)
/* 4AA20 80049E20 AFB00010 */  sw         $s0, 0x10($sp)
/* 4AA24 80049E24 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 4AA28 80049E28 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 4AA2C 80049E2C 3C03802B */  lui        $v1, %hi(D_802AD1F8)
/* 4AA30 80049E30 00671821 */  addu       $v1, $v1, $a3
/* 4AA34 80049E34 8C63D1F8 */  lw         $v1, %lo(D_802AD1F8)($v1)
/* 4AA38 80049E38 3C04802B */  lui        $a0, %hi(D_802AD1FC)
/* 4AA3C 80049E3C 00872021 */  addu       $a0, $a0, $a3
/* 4AA40 80049E40 8C84D1FC */  lw         $a0, %lo(D_802AD1FC)($a0)
/* 4AA44 80049E44 3C05802B */  lui        $a1, %hi(D_802AD200)
/* 4AA48 80049E48 00A72821 */  addu       $a1, $a1, $a3
/* 4AA4C 80049E4C 8CA5D200 */  lw         $a1, %lo(D_802AD200)($a1)
/* 4AA50 80049E50 3C06802B */  lui        $a2, %hi(D_802AD204)
/* 4AA54 80049E54 00C73021 */  addu       $a2, $a2, $a3
/* 4AA58 80049E58 8CC6D204 */  lw         $a2, %lo(D_802AD204)($a2)
/* 4AA5C 80049E5C AC430000 */  sw         $v1, 0x0($v0)
/* 4AA60 80049E60 AC440004 */  sw         $a0, 0x4($v0)
/* 4AA64 80049E64 AC450008 */  sw         $a1, 0x8($v0)
/* 4AA68 80049E68 AC46000C */  sw         $a2, 0xC($v0)
/* 4AA6C 80049E6C 3C03802B */  lui        $v1, %hi(D_802AD208)
/* 4AA70 80049E70 00671821 */  addu       $v1, $v1, $a3
/* 4AA74 80049E74 8C63D208 */  lw         $v1, %lo(D_802AD208)($v1)
/* 4AA78 80049E78 3C04802B */  lui        $a0, %hi(D_802AD20C)
/* 4AA7C 80049E7C 00872021 */  addu       $a0, $a0, $a3
/* 4AA80 80049E80 8C84D20C */  lw         $a0, %lo(D_802AD20C)($a0)
/* 4AA84 80049E84 AC430010 */  sw         $v1, 0x10($v0)
/* 4AA88 80049E88 AC440014 */  sw         $a0, 0x14($v0)
/* 4AA8C 80049E8C D4420000 */  ldc1       $f2, 0x0($v0)
/* 4AA90 80049E90 D6600008 */  ldc1       $f0, 0x8($s3)
/* 4AA94 80049E94 3C01802B */  lui        $at, %hi(D_802AD7F8)
/* 4AA98 80049E98 D424D7F8 */  ldc1       $f4, %lo(D_802AD7F8)($at)
/* 4AA9C 80049E9C 46201081 */  sub.d      $f2, $f2, $f0
/* 4AAA0 80049EA0 D6600010 */  ldc1       $f0, 0x10($s3)
/* 4AAA4 80049EA4 46202101 */  sub.d      $f4, $f4, $f0
/* 4AAA8 80049EA8 46201085 */  abs.d      $f2, $f2
/* 4AAAC 80049EAC 46202105 */  abs.d      $f4, $f4
/* 4AAB0 80049EB0 3C01802B */  lui        $at, %hi(D_802AD828)
/* 4AAB4 80049EB4 D426D828 */  ldc1       $f6, %lo(D_802AD828)($at)
/* 4AAB8 80049EB8 46241080 */  add.d      $f2, $f2, $f4
/* 4AABC 80049EBC 3C01802B */  lui        $at, %hi(D_802AD1F0)
/* 4AAC0 80049EC0 00270821 */  addu       $at, $at, $a3
/* 4AAC4 80049EC4 D424D1F0 */  ldc1       $f4, %lo(D_802AD1F0)($at)
/* 4AAC8 80049EC8 3C01802B */  lui        $at, %hi(D_802AD800)
/* 4AACC 80049ECC D420D800 */  ldc1       $f0, %lo(D_802AD800)($at)
/* 4AAD0 80049ED0 46243201 */  sub.d      $f8, $f6, $f4
/* 4AAD4 80049ED4 D6660018 */  ldc1       $f6, 0x18($s3)
/* 4AAD8 80049ED8 3C01800D */  lui        $at, %hi(D_800D3A48)
/* 4AADC 80049EDC D4243A48 */  ldc1       $f4, %lo(D_800D3A48)($at)
/* 4AAE0 80049EE0 46260001 */  sub.d      $f0, $f0, $f6
/* 4AAE4 80049EE4 46244102 */  mul.d      $f4, $f8, $f4
/* 4AAE8 80049EE8 46200005 */  abs.d      $f0, $f0
/* 4AAEC 80049EEC 46201080 */  add.d      $f2, $f2, $f0
/* 4AAF0 80049EF0 46241080 */  add.d      $f2, $f2, $f4
/* 4AAF4 80049EF4 3C01802B */  lui        $at, %hi(D_802AD830)
/* 4AAF8 80049EF8 F428D830 */  sdc1       $f8, %lo(D_802AD830)($at)
/* 4AAFC 80049EFC 4620100D */  trunc.w.d  $f0, $f2
/* 4AB00 80049F00 44020000 */  mfc1       $v0, $f0
/* 4AB04 80049F04 3C01802B */  lui        $at, %hi(D_802AD820)
/* 4AB08 80049F08 AC22D820 */  sw         $v0, %lo(D_802AD820)($at)
/* 4AB0C 80049F0C 28420007 */  slti       $v0, $v0, 0x7
/* 4AB10 80049F10 10400003 */  beqz       $v0, .L80049F20
/* 4AB14 80049F14 24020006 */   addiu     $v0, $zero, 0x6
/* 4AB18 80049F18 3C01802B */  lui        $at, %hi(D_802AD820)
/* 4AB1C 80049F1C AC22D820 */  sw         $v0, %lo(D_802AD820)($at)
.L80049F20:
/* 4AB20 80049F20 3C02802B */  lui        $v0, %hi(D_802AD820)
/* 4AB24 80049F24 8C42D820 */  lw         $v0, %lo(D_802AD820)($v0)
/* 4AB28 80049F28 4480A000 */  mtc1       $zero, $f20
/* 4AB2C 80049F2C 4480A800 */  mtc1       $zero, $f21
/* 4AB30 80049F30 2451FFFF */  addiu      $s1, $v0, -0x1
/* 4AB34 80049F34 44820000 */  mtc1       $v0, $f0
/* 4AB38 80049F38 00000000 */  nop
/* 4AB3C 80049F3C 46800021 */  cvt.d.w    $f0, $f0
/* 4AB40 80049F40 12200047 */  beqz       $s1, .L8004A060
/* 4AB44 80049F44 46204583 */   div.d     $f22, $f8, $f0
/* 4AB48 80049F48 3C12802B */  lui        $s2, %hi(D_802AD808)
/* 4AB4C 80049F4C 2652D808 */  addiu      $s2, $s2, %lo(D_802AD808)
/* 4AB50 80049F50 00E08021 */  addu       $s0, $a3, $zero
.L80049F54:
/* 4AB54 80049F54 3C01802B */  lui        $at, %hi(D_802AD218)
/* 4AB58 80049F58 00300821 */  addu       $at, $at, $s0
/* 4AB5C 80049F5C D422D218 */  ldc1       $f2, %lo(D_802AD218)($at)
/* 4AB60 80049F60 3C01802B */  lui        $at, %hi(D_802AD210)
/* 4AB64 80049F64 00300821 */  addu       $at, $at, $s0
/* 4AB68 80049F68 D420D210 */  ldc1       $f0, %lo(D_802AD210)($at)
/* 4AB6C 80049F6C 46201082 */  mul.d      $f2, $f2, $f0
/* 4AB70 80049F70 4636A500 */  add.d      $f20, $f20, $f22
/* 4AB74 80049F74 46341082 */  mul.d      $f2, $f2, $f20
/* 4AB78 80049F78 3C01802B */  lui        $at, %hi(D_802AD1F8)
/* 4AB7C 80049F7C 00300821 */  addu       $at, $at, $s0
/* 4AB80 80049F80 D420D1F8 */  ldc1       $f0, %lo(D_802AD1F8)($at)
/* 4AB84 80049F84 46220000 */  add.d      $f0, $f0, $f2
/* 4AB88 80049F88 F6400000 */  sdc1       $f0, 0x0($s2)
/* 4AB8C 80049F8C 3C01802B */  lui        $at, %hi(D_802AD220)
/* 4AB90 80049F90 00300821 */  addu       $at, $at, $s0
/* 4AB94 80049F94 D422D220 */  ldc1       $f2, %lo(D_802AD220)($at)
/* 4AB98 80049F98 3C01802B */  lui        $at, %hi(D_802AD210)
/* 4AB9C 80049F9C 00300821 */  addu       $at, $at, $s0
/* 4ABA0 80049FA0 D420D210 */  ldc1       $f0, %lo(D_802AD210)($at)
/* 4ABA4 80049FA4 46201082 */  mul.d      $f2, $f2, $f0
/* 4ABA8 80049FA8 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 4ABAC 80049FAC D4206A08 */  ldc1       $f0, %lo(D_800C6A08)($at)
/* 4ABB0 80049FB0 46340002 */  mul.d      $f0, $f0, $f20
/* 4ABB4 80049FB4 46201080 */  add.d      $f2, $f2, $f0
/* 4ABB8 80049FB8 46341082 */  mul.d      $f2, $f2, $f20
/* 4ABBC 80049FBC 3C01802B */  lui        $at, %hi(D_802AD200)
/* 4ABC0 80049FC0 00300821 */  addu       $at, $at, $s0
/* 4ABC4 80049FC4 D420D200 */  ldc1       $f0, %lo(D_802AD200)($at)
/* 4ABC8 80049FC8 46220000 */  add.d      $f0, $f0, $f2
/* 4ABCC 80049FCC F6400008 */  sdc1       $f0, 0x8($s2)
/* 4ABD0 80049FD0 3C01802B */  lui        $at, %hi(D_802AD228)
/* 4ABD4 80049FD4 00300821 */  addu       $at, $at, $s0
/* 4ABD8 80049FD8 D422D228 */  ldc1       $f2, %lo(D_802AD228)($at)
/* 4ABDC 80049FDC 3C01802B */  lui        $at, %hi(D_802AD210)
/* 4ABE0 80049FE0 00300821 */  addu       $at, $at, $s0
/* 4ABE4 80049FE4 D420D210 */  ldc1       $f0, %lo(D_802AD210)($at)
/* 4ABE8 80049FE8 46201082 */  mul.d      $f2, $f2, $f0
/* 4ABEC 80049FEC 00000000 */  nop
/* 4ABF0 80049FF0 46341082 */  mul.d      $f2, $f2, $f20
/* 4ABF4 80049FF4 3C01802B */  lui        $at, %hi(D_802AD208)
/* 4ABF8 80049FF8 00300821 */  addu       $at, $at, $s0
/* 4ABFC 80049FFC D420D208 */  ldc1       $f0, %lo(D_802AD208)($at)
/* 4AC00 8004A000 46220000 */  add.d      $f0, $f0, $f2
/* 4AC04 8004A004 F6400010 */  sdc1       $f0, 0x10($s2)
/* 4AC08 8004A008 0C012697 */  jal        func_80049A5C
/* 4AC0C 8004A00C 2631FFFF */   addiu     $s1, $s1, -0x1
/* 4AC10 8004A010 3C02802B */  lui        $v0, %hi(D_802AD83C)
/* 4AC14 8004A014 9042D83C */  lbu        $v0, %lo(D_802AD83C)($v0)
/* 4AC18 8004A018 3C06802B */  lui        $a2, %hi(D_802AD7F0)
/* 4AC1C 8004A01C 24C6D7F0 */  addiu      $a2, $a2, %lo(D_802AD7F0)
/* 4AC20 8004A020 8E430000 */  lw         $v1, 0x0($s2)
/* 4AC24 8004A024 8E440004 */  lw         $a0, 0x4($s2)
/* 4AC28 8004A028 8E450008 */  lw         $a1, 0x8($s2)
/* 4AC2C 8004A02C ACC30000 */  sw         $v1, 0x0($a2)
/* 4AC30 8004A030 ACC40004 */  sw         $a0, 0x4($a2)
/* 4AC34 8004A034 ACC50008 */  sw         $a1, 0x8($a2)
/* 4AC38 8004A038 8E43000C */  lw         $v1, 0xC($s2)
/* 4AC3C 8004A03C 8E440010 */  lw         $a0, 0x10($s2)
/* 4AC40 8004A040 8E450014 */  lw         $a1, 0x14($s2)
/* 4AC44 8004A044 ACC3000C */  sw         $v1, 0xC($a2)
/* 4AC48 8004A048 ACC40010 */  sw         $a0, 0x10($a2)
/* 4AC4C 8004A04C ACC50014 */  sw         $a1, 0x14($a2)
/* 4AC50 8004A050 38420001 */  xori       $v0, $v0, 0x1
/* 4AC54 8004A054 3C01802B */  lui        $at, %hi(D_802AD83C)
/* 4AC58 8004A058 1620FFBE */  bnez       $s1, .L80049F54
/* 4AC5C 8004A05C A022D83C */   sb        $v0, %lo(D_802AD83C)($at)
.L8004A060:
/* 4AC60 8004A060 82630000 */  lb         $v1, 0x0($s3)
/* 4AC64 8004A064 24020010 */  addiu      $v0, $zero, 0x10
/* 4AC68 8004A068 10620010 */  beq        $v1, $v0, .L8004A0AC
/* 4AC6C 8004A06C 00000000 */   nop
/* 4AC70 8004A070 3C05802B */  lui        $a1, %hi(D_802AD808)
/* 4AC74 8004A074 24A5D808 */  addiu      $a1, $a1, %lo(D_802AD808)
/* 4AC78 8004A078 8E620008 */  lw         $v0, 0x8($s3)
/* 4AC7C 8004A07C 8E63000C */  lw         $v1, 0xC($s3)
/* 4AC80 8004A080 8E640010 */  lw         $a0, 0x10($s3)
/* 4AC84 8004A084 ACA20000 */  sw         $v0, 0x0($a1)
/* 4AC88 8004A088 ACA30004 */  sw         $v1, 0x4($a1)
/* 4AC8C 8004A08C ACA40008 */  sw         $a0, 0x8($a1)
/* 4AC90 8004A090 8E620014 */  lw         $v0, 0x14($s3)
/* 4AC94 8004A094 8E630018 */  lw         $v1, 0x18($s3)
/* 4AC98 8004A098 8E64001C */  lw         $a0, 0x1C($s3)
/* 4AC9C 8004A09C ACA2000C */  sw         $v0, 0xC($a1)
/* 4ACA0 8004A0A0 ACA30010 */  sw         $v1, 0x10($a1)
/* 4ACA4 8004A0A4 0C012697 */  jal        func_80049A5C
/* 4ACA8 8004A0A8 ACA40014 */   sw        $a0, 0x14($a1)
.L8004A0AC:
/* 4ACAC 8004A0AC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4ACB0 8004A0B0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 4ACB4 8004A0B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 4ACB8 8004A0B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4ACBC 8004A0BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4ACC0 8004A0C0 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 4ACC4 8004A0C4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 4ACC8 8004A0C8 03E00008 */  jr         $ra
/* 4ACCC 8004A0CC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8004A0D0
/* 4ACD0 8004A0D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4ACD4 8004A0D4 00051040 */  sll        $v0, $a1, 1
/* 4ACD8 8004A0D8 00451021 */  addu       $v0, $v0, $a1
/* 4ACDC 8004A0DC 00021140 */  sll        $v0, $v0, 5
/* 4ACE0 8004A0E0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4ACE4 8004A0E4 3C01802B */  lui        $at, %hi(D_802AD1F8)
/* 4ACE8 8004A0E8 00220821 */  addu       $at, $at, $v0
/* 4ACEC 8004A0EC D420D1F8 */  ldc1       $f0, %lo(D_802AD1F8)($at)
/* 4ACF0 8004A0F0 3C01802B */  lui        $at, %hi(D_802AD7F8)
/* 4ACF4 8004A0F4 AC20D7F8 */  sw         $zero, %lo(D_802AD7F8)($at)
/* 4ACF8 8004A0F8 3C01802B */  lui        $at, %hi(D_802AD7FC)
/* 4ACFC 8004A0FC AC20D7FC */  sw         $zero, %lo(D_802AD7FC)($at)
/* 4AD00 8004A100 3C01802B */  lui        $at, %hi(D_802AD7F0)
/* 4AD04 8004A104 F420D7F0 */  sdc1       $f0, %lo(D_802AD7F0)($at)
/* 4AD08 8004A108 3C01802B */  lui        $at, %hi(D_802AD208)
/* 4AD0C 8004A10C 00220821 */  addu       $at, $at, $v0
/* 4AD10 8004A110 D420D208 */  ldc1       $f0, %lo(D_802AD208)($at)
/* 4AD14 8004A114 3C01802B */  lui        $at, %hi(D_802AD800)
/* 4AD18 8004A118 F420D800 */  sdc1       $f0, %lo(D_802AD800)($at)
/* 4AD1C 8004A11C D4800008 */  ldc1       $f0, 0x8($a0)
/* 4AD20 8004A120 3C01802B */  lui        $at, %hi(D_802AD810)
/* 4AD24 8004A124 AC20D810 */  sw         $zero, %lo(D_802AD810)($at)
/* 4AD28 8004A128 3C01802B */  lui        $at, %hi(D_802AD814)
/* 4AD2C 8004A12C AC20D814 */  sw         $zero, %lo(D_802AD814)($at)
/* 4AD30 8004A130 3C01802B */  lui        $at, %hi(D_802AD808)
/* 4AD34 8004A134 F420D808 */  sdc1       $f0, %lo(D_802AD808)($at)
/* 4AD38 8004A138 D4800018 */  ldc1       $f0, 0x18($a0)
/* 4AD3C 8004A13C 3C01802B */  lui        $at, %hi(D_802AD83C)
/* 4AD40 8004A140 A020D83C */  sb         $zero, %lo(D_802AD83C)($at)
/* 4AD44 8004A144 3C01802B */  lui        $at, %hi(D_802AD818)
/* 4AD48 8004A148 0C012697 */  jal        func_80049A5C
/* 4AD4C 8004A14C F420D818 */   sdc1      $f0, %lo(D_802AD818)($at)
/* 4AD50 8004A150 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4AD54 8004A154 03E00008 */  jr         $ra
/* 4AD58 8004A158 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004A15C
/* 4AD5C 8004A15C 00051040 */  sll        $v0, $a1, 1
/* 4AD60 8004A160 3C01802B */  lui        $at, %hi(D_802AD828)
/* 4AD64 8004A164 D420D828 */  ldc1       $f0, %lo(D_802AD828)($at)
/* 4AD68 8004A168 00451021 */  addu       $v0, $v0, $a1
/* 4AD6C 8004A16C 00021140 */  sll        $v0, $v0, 5
/* 4AD70 8004A170 3C01802B */  lui        $at, %hi(D_802AD1F0)
/* 4AD74 8004A174 00220821 */  addu       $at, $at, $v0
/* 4AD78 8004A178 F420D1F0 */  sdc1       $f0, %lo(D_802AD1F0)($at)
/* 4AD7C 8004A17C D4800008 */  ldc1       $f0, 0x8($a0)
/* 4AD80 8004A180 3C01802B */  lui        $at, %hi(D_802AD1F8)
/* 4AD84 8004A184 00220821 */  addu       $at, $at, $v0
/* 4AD88 8004A188 F420D1F8 */  sdc1       $f0, %lo(D_802AD1F8)($at)
/* 4AD8C 8004A18C D4800010 */  ldc1       $f0, 0x10($a0)
/* 4AD90 8004A190 3C01802B */  lui        $at, %hi(D_802AD200)
/* 4AD94 8004A194 00220821 */  addu       $at, $at, $v0
/* 4AD98 8004A198 F420D200 */  sdc1       $f0, %lo(D_802AD200)($at)
/* 4AD9C 8004A19C D4800018 */  ldc1       $f0, 0x18($a0)
/* 4ADA0 8004A1A0 3C01802B */  lui        $at, %hi(D_802AD208)
/* 4ADA4 8004A1A4 00220821 */  addu       $at, $at, $v0
/* 4ADA8 8004A1A8 F420D208 */  sdc1       $f0, %lo(D_802AD208)($at)
/* 4ADAC 8004A1AC D4800038 */  ldc1       $f0, 0x38($a0)
/* 4ADB0 8004A1B0 3C01802B */  lui        $at, %hi(D_802AD210)
/* 4ADB4 8004A1B4 00220821 */  addu       $at, $at, $v0
/* 4ADB8 8004A1B8 F420D210 */  sdc1       $f0, %lo(D_802AD210)($at)
/* 4ADBC 8004A1BC D4800020 */  ldc1       $f0, 0x20($a0)
/* 4ADC0 8004A1C0 3C01802B */  lui        $at, %hi(D_802AD218)
/* 4ADC4 8004A1C4 00220821 */  addu       $at, $at, $v0
/* 4ADC8 8004A1C8 F420D218 */  sdc1       $f0, %lo(D_802AD218)($at)
/* 4ADCC 8004A1CC D4800028 */  ldc1       $f0, 0x28($a0)
/* 4ADD0 8004A1D0 3C01802B */  lui        $at, %hi(D_802AD220)
/* 4ADD4 8004A1D4 00220821 */  addu       $at, $at, $v0
/* 4ADD8 8004A1D8 F420D220 */  sdc1       $f0, %lo(D_802AD220)($at)
/* 4ADDC 8004A1DC D4800030 */  ldc1       $f0, 0x30($a0)
/* 4ADE0 8004A1E0 3C01802B */  lui        $at, %hi(D_802AD228)
/* 4ADE4 8004A1E4 00220821 */  addu       $at, $at, $v0
/* 4ADE8 8004A1E8 F420D228 */  sdc1       $f0, %lo(D_802AD228)($at)
/* 4ADEC 8004A1EC D4800058 */  ldc1       $f0, 0x58($a0)
/* 4ADF0 8004A1F0 3C01802B */  lui        $at, %hi(D_802AD230)
/* 4ADF4 8004A1F4 00220821 */  addu       $at, $at, $v0
/* 4ADF8 8004A1F8 F420D230 */  sdc1       $f0, %lo(D_802AD230)($at)
/* 4ADFC 8004A1FC D4800040 */  ldc1       $f0, 0x40($a0)
/* 4AE00 8004A200 3C01802B */  lui        $at, %hi(D_802AD238)
/* 4AE04 8004A204 00220821 */  addu       $at, $at, $v0
/* 4AE08 8004A208 F420D238 */  sdc1       $f0, %lo(D_802AD238)($at)
/* 4AE0C 8004A20C D4800048 */  ldc1       $f0, 0x48($a0)
/* 4AE10 8004A210 3C01802B */  lui        $at, %hi(D_802AD240)
/* 4AE14 8004A214 00220821 */  addu       $at, $at, $v0
/* 4AE18 8004A218 F420D240 */  sdc1       $f0, %lo(D_802AD240)($at)
/* 4AE1C 8004A21C D4800050 */  ldc1       $f0, 0x50($a0)
/* 4AE20 8004A220 3C01802B */  lui        $at, %hi(D_802AD248)
/* 4AE24 8004A224 00220821 */  addu       $at, $at, $v0
/* 4AE28 8004A228 03E00008 */  jr         $ra
/* 4AE2C 8004A22C F420D248 */   sdc1      $f0, %lo(D_802AD248)($at)

glabel func_8004A230
/* 4AE30 8004A230 3C02802D */  lui        $v0, %hi(D_802D0BF4)
/* 4AE34 8004A234 8C420BF4 */  lw         $v0, %lo(D_802D0BF4)($v0)
/* 4AE38 8004A238 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 4AE3C 8004A23C 1840000E */  blez       $v0, .L8004A278
/* 4AE40 8004A240 00001821 */   addu      $v1, $zero, $zero
/* 4AE44 8004A244 3C06802B */  lui        $a2, %hi(D_802AD838)
/* 4AE48 8004A248 8CC6D838 */  lw         $a2, %lo(D_802AD838)($a2)
/* 4AE4C 8004A24C 00402821 */  addu       $a1, $v0, $zero
/* 4AE50 8004A250 3C048031 */  lui        $a0, %hi(D_803128D0)
/* 4AE54 8004A254 248428D0 */  addiu      $a0, $a0, %lo(D_803128D0)
.L8004A258:
/* 4AE58 8004A258 8C820000 */  lw         $v0, 0x0($a0)
/* 4AE5C 8004A25C 14460003 */  bne        $v0, $a2, .L8004A26C
/* 4AE60 8004A260 24630001 */   addiu     $v1, $v1, 0x1
/* 4AE64 8004A264 0801289F */  j          .L8004A27C
/* 4AE68 8004A268 24020001 */   addiu     $v0, $zero, 0x1
.L8004A26C:
/* 4AE6C 8004A26C 0065102A */  slt        $v0, $v1, $a1
/* 4AE70 8004A270 1440FFF9 */  bnez       $v0, .L8004A258
/* 4AE74 8004A274 24840004 */   addiu     $a0, $a0, 0x4
.L8004A278:
/* 4AE78 8004A278 00001021 */  addu       $v0, $zero, $zero
.L8004A27C:
/* 4AE7C 8004A27C 03E00008 */  jr         $ra
/* 4AE80 8004A280 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8004A284
/* 4AE84 8004A284 3C03802D */  lui        $v1, %hi(D_802D0BF0)
/* 4AE88 8004A288 8C630BF0 */  lw         $v1, %lo(D_802D0BF0)($v1)
/* 4AE8C 8004A28C 3C04802C */  lui        $a0, %hi(D_802C6050)
/* 4AE90 8004A290 8C846050 */  lw         $a0, %lo(D_802C6050)($a0)
/* 4AE94 8004A294 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4AE98 8004A298 AFBF0028 */  sw         $ra, 0x28($sp)
/* 4AE9C 8004A29C AFB30024 */  sw         $s3, 0x24($sp)
/* 4AEA0 8004A2A0 AFB20020 */  sw         $s2, 0x20($sp)
/* 4AEA4 8004A2A4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 4AEA8 8004A2A8 AFB00018 */  sw         $s0, 0x18($sp)
/* 4AEAC 8004A2AC 000310C0 */  sll        $v0, $v1, 3
/* 4AEB0 8004A2B0 00431023 */  subu       $v0, $v0, $v1
/* 4AEB4 8004A2B4 00021100 */  sll        $v0, $v0, 4
/* 4AEB8 8004A2B8 2463FFF0 */  addiu      $v1, $v1, -0x10
/* 4AEBC 8004A2BC 04610002 */  bgez       $v1, .L8004A2C8
/* 4AEC0 8004A2C0 00828821 */   addu      $s1, $a0, $v0
/* 4AEC4 8004A2C4 24030FF0 */  addiu      $v1, $zero, 0xFF0
.L8004A2C8:
/* 4AEC8 8004A2C8 000310C0 */  sll        $v0, $v1, 3
/* 4AECC 8004A2CC 00431023 */  subu       $v0, $v0, $v1
/* 4AED0 8004A2D0 00021100 */  sll        $v0, $v0, 4
/* 4AED4 8004A2D4 00829021 */  addu       $s2, $a0, $v0
/* 4AED8 8004A2D8 3C01802B */  lui        $at, %hi(D_802AD838)
/* 4AEDC 8004A2DC AC20D838 */  sw         $zero, %lo(D_802AD838)($at)
/* 4AEE0 8004A2E0 00008021 */  addu       $s0, $zero, $zero
/* 4AEE4 8004A2E4 24130002 */  addiu      $s3, $zero, 0x2
.L8004A2E8:
/* 4AEE8 8004A2E8 0C0026BB */  jal        func_80009AEC
/* 4AEEC 8004A2EC 00000000 */   nop
/* 4AEF0 8004A2F0 10400042 */  beqz       $v0, .L8004A3FC
/* 4AEF4 8004A2F4 00000000 */   nop
/* 4AEF8 8004A2F8 3C02802D */  lui        $v0, %hi(D_802D0C4C)
/* 4AEFC 8004A2FC 8C420C4C */  lw         $v0, %lo(D_802D0C4C)($v0)
/* 4AF00 8004A300 14530004 */  bne        $v0, $s3, .L8004A314
/* 4AF04 8004A304 3C0200C0 */   lui       $v0, (0xC0C0C0 >> 16)
/* 4AF08 8004A308 3442C0C0 */  ori        $v0, $v0, (0xC0C0C0 & 0xFFFF)
/* 4AF0C 8004A30C 080128CD */  j          .L8004A334
/* 4AF10 8004A310 AFA20010 */   sw        $v0, 0x10($sp)
.L8004A314:
/* 4AF14 8004A314 3C04802B */  lui        $a0, %hi(D_802AD838)
/* 4AF18 8004A318 8C84D838 */  lw         $a0, %lo(D_802AD838)($a0)
/* 4AF1C 8004A31C 28820009 */  slti       $v0, $a0, 0x9
/* 4AF20 8004A320 50400001 */  beql       $v0, $zero, .L8004A328
/* 4AF24 8004A324 2484FFF8 */   addiu     $a0, $a0, -0x8
.L8004A328:
/* 4AF28 8004A328 27A50010 */  addiu      $a1, $sp, 0x10
/* 4AF2C 8004A32C 0C012ECC */  jal        func_8004BB30
/* 4AF30 8004A330 27A60014 */   addiu     $a2, $sp, 0x14
.L8004A334:
/* 4AF34 8004A334 8FA40010 */  lw         $a0, 0x10($sp)
/* 4AF38 8004A338 00042200 */  sll        $a0, $a0, 8
/* 4AF3C 8004A33C 0C00218F */  jal        func_8000863C
/* 4AF40 8004A340 348400C0 */   ori       $a0, $a0, 0xC0
/* 4AF44 8004A344 92420000 */  lbu        $v0, 0x0($s2)
/* 4AF48 8004A348 30420013 */  andi       $v0, $v0, 0x13
/* 4AF4C 8004A34C 14400017 */  bnez       $v0, .L8004A3AC
/* 4AF50 8004A350 00000000 */   nop
/* 4AF54 8004A354 0C01288C */  jal        func_8004A230
/* 4AF58 8004A358 00000000 */   nop
/* 4AF5C 8004A35C 10400019 */  beqz       $v0, .L8004A3C4
/* 4AF60 8004A360 24020004 */   addiu     $v0, $zero, 0x4
/* 4AF64 8004A364 82430000 */  lb         $v1, 0x0($s2)
/* 4AF68 8004A368 14620006 */  bne        $v1, $v0, .L8004A384
/* 4AF6C 8004A36C 24020020 */   addiu     $v0, $zero, 0x20
/* 4AF70 8004A370 02202021 */  addu       $a0, $s1, $zero
/* 4AF74 8004A374 0C012834 */  jal        func_8004A0D0
/* 4AF78 8004A378 02002821 */   addu      $a1, $s0, $zero
/* 4AF7C 8004A37C 080128EF */  j          .L8004A3BC
/* 4AF80 8004A380 02202021 */   addu      $a0, $s1, $zero
.L8004A384:
/* 4AF84 8004A384 14620005 */  bne        $v1, $v0, .L8004A39C
/* 4AF88 8004A388 02202021 */   addu      $a0, $s1, $zero
/* 4AF8C 8004A38C 0C01277A */  jal        func_80049DE8
/* 4AF90 8004A390 02002821 */   addu      $a1, $s0, $zero
/* 4AF94 8004A394 080128EF */  j          .L8004A3BC
/* 4AF98 8004A398 02202021 */   addu      $a0, $s1, $zero
.L8004A39C:
/* 4AF9C 8004A39C 0C012708 */  jal        func_80049C20
/* 4AFA0 8004A3A0 02002821 */   addu      $a1, $s0, $zero
/* 4AFA4 8004A3A4 080128EF */  j          .L8004A3BC
/* 4AFA8 8004A3A8 02202021 */   addu      $a0, $s1, $zero
.L8004A3AC:
/* 4AFAC 8004A3AC 92220000 */  lbu        $v0, 0x0($s1)
/* 4AFB0 8004A3B0 3042002C */  andi       $v0, $v0, 0x2C
/* 4AFB4 8004A3B4 10400003 */  beqz       $v0, .L8004A3C4
/* 4AFB8 8004A3B8 02202021 */   addu      $a0, $s1, $zero
.L8004A3BC:
/* 4AFBC 8004A3BC 0C012857 */  jal        func_8004A15C
/* 4AFC0 8004A3C0 02002821 */   addu      $a1, $s0, $zero
.L8004A3C4:
/* 4AFC4 8004A3C4 26310070 */  addiu      $s1, $s1, 0x70
/* 4AFC8 8004A3C8 3C02802B */  lui        $v0, %hi(D_802AD838)
/* 4AFCC 8004A3CC 8C42D838 */  lw         $v0, %lo(D_802AD838)($v0)
/* 4AFD0 8004A3D0 3C03802D */  lui        $v1, %hi(D_802D0C4C)
/* 4AFD4 8004A3D4 8C630C4C */  lw         $v1, %lo(D_802D0C4C)($v1)
/* 4AFD8 8004A3D8 24420001 */  addiu      $v0, $v0, 0x1
/* 4AFDC 8004A3DC 3C01802B */  lui        $at, %hi(D_802AD838)
/* 4AFE0 8004A3E0 AC22D838 */  sw         $v0, %lo(D_802AD838)($at)
/* 4AFE4 8004A3E4 10730005 */  beq        $v1, $s3, .L8004A3FC
/* 4AFE8 8004A3E8 26520070 */   addiu     $s2, $s2, 0x70
/* 4AFEC 8004A3EC 26100001 */  addiu      $s0, $s0, 0x1
/* 4AFF0 8004A3F0 2A020010 */  slti       $v0, $s0, 0x10
/* 4AFF4 8004A3F4 1440FFBC */  bnez       $v0, .L8004A2E8
/* 4AFF8 8004A3F8 00000000 */   nop
.L8004A3FC:
/* 4AFFC 8004A3FC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 4B000 8004A400 8FB30024 */  lw         $s3, 0x24($sp)
/* 4B004 8004A404 8FB20020 */  lw         $s2, 0x20($sp)
/* 4B008 8004A408 8FB1001C */  lw         $s1, 0x1C($sp)
/* 4B00C 8004A40C 8FB00018 */  lw         $s0, 0x18($sp)
/* 4B010 8004A410 03E00008 */  jr         $ra
/* 4B014 8004A414 27BD0030 */   addiu     $sp, $sp, 0x30
/* 4B018 8004A418 00000000 */  nop
/* 4B01C 8004A41C 00000000 */  nop
