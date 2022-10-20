.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8009B660
/* 9C260 8009B660 3C01800D */  lui        $at, %hi(D_800D70C0)
/* 9C264 8009B664 D42070C0 */  ldc1       $f0, %lo(D_800D70C0)($at)
/* 9C268 8009B668 46206083 */  div.d      $f2, $f12, $f0
/* 9C26C 8009B66C 44800000 */  mtc1       $zero, $f0
/* 9C270 8009B670 44800800 */  mtc1       $zero, $f1
/* 9C274 8009B674 00000000 */  nop
/* 9C278 8009B678 462C003E */  c.le.d     $f0, $f12
/* 9C27C 8009B67C 3C01800D */  lui        $at, %hi(D_800D70C8)
/* 9C280 8009B680 D42070C8 */  ldc1       $f0, %lo(D_800D70C8)($at)
/* 9C284 8009B684 45020004 */  bc1fl      .L8009B698
/* 9C288 8009B688 46201000 */   add.d     $f0, $f2, $f0
/* 9C28C 8009B68C 3C01800D */  lui        $at, %hi(D_800D70D0)
/* 9C290 8009B690 D42070D0 */  ldc1       $f0, %lo(D_800D70D0)($at)
/* 9C294 8009B694 46201000 */  add.d      $f0, $f2, $f0
.L8009B698:
/* 9C298 8009B698 4620008D */  trunc.w.d  $f2, $f0
/* 9C29C 8009B69C 44031000 */  mfc1       $v1, $f2
/* 9C2A0 8009B6A0 00000000 */  nop
/* 9C2A4 8009B6A4 44830000 */  mtc1       $v1, $f0
/* 9C2A8 8009B6A8 00000000 */  nop
/* 9C2AC 8009B6AC 46800021 */  cvt.d.w    $f0, $f0
/* 9C2B0 8009B6B0 3C01800D */  lui        $at, %hi(D_800D70D8)
/* 9C2B4 8009B6B4 D42270D8 */  ldc1       $f2, %lo(D_800D70D8)($at)
/* 9C2B8 8009B6B8 46220002 */  mul.d      $f0, $f0, $f2
/* 9C2BC 8009B6BC 46206301 */  sub.d      $f12, $f12, $f0
/* 9C2C0 8009B6C0 462C6102 */  mul.d      $f4, $f12, $f12
/* 9C2C4 8009B6C4 00000000 */  nop
/* 9C2C8 8009B6C8 46242182 */  mul.d      $f6, $f4, $f4
/* 9C2CC 8009B6CC 3C01800D */  lui        $at, %hi(D_800D70E0)
/* 9C2D0 8009B6D0 D42070E0 */  ldc1       $f0, %lo(D_800D70E0)($at)
/* 9C2D4 8009B6D4 46202002 */  mul.d      $f0, $f4, $f0
/* 9C2D8 8009B6D8 3C01800D */  lui        $at, %hi(D_800D70E8)
/* 9C2DC 8009B6DC D42270E8 */  ldc1       $f2, %lo(D_800D70E8)($at)
/* 9C2E0 8009B6E0 46220000 */  add.d      $f0, $f0, $f2
/* 9C2E4 8009B6E4 46202002 */  mul.d      $f0, $f4, $f0
/* 9C2E8 8009B6E8 3C01800D */  lui        $at, %hi(D_800D70F0)
/* 9C2EC 8009B6EC D42270F0 */  ldc1       $f2, %lo(D_800D70F0)($at)
/* 9C2F0 8009B6F0 46220000 */  add.d      $f0, $f0, $f2
/* 9C2F4 8009B6F4 46202002 */  mul.d      $f0, $f4, $f0
/* 9C2F8 8009B6F8 3C01800D */  lui        $at, %hi(D_800D70F8)
/* 9C2FC 8009B6FC D42270F8 */  ldc1       $f2, %lo(D_800D70F8)($at)
/* 9C300 8009B700 46220000 */  add.d      $f0, $f0, $f2
/* 9C304 8009B704 46202002 */  mul.d      $f0, $f4, $f0
/* 9C308 8009B708 3C01800D */  lui        $at, %hi(D_800D7100)
/* 9C30C 8009B70C D4227100 */  ldc1       $f2, %lo(D_800D7100)($at)
/* 9C310 8009B710 46220000 */  add.d      $f0, $f0, $f2
/* 9C314 8009B714 46202002 */  mul.d      $f0, $f4, $f0
/* 9C318 8009B718 3C01800D */  lui        $at, %hi(D_800D7108)
/* 9C31C 8009B71C D4227108 */  ldc1       $f2, %lo(D_800D7108)($at)
/* 9C320 8009B720 46220000 */  add.d      $f0, $f0, $f2
/* 9C324 8009B724 46202002 */  mul.d      $f0, $f4, $f0
/* 9C328 8009B728 3C01800D */  lui        $at, %hi(D_800D7110)
/* 9C32C 8009B72C D4227110 */  ldc1       $f2, %lo(D_800D7110)($at)
/* 9C330 8009B730 46220000 */  add.d      $f0, $f0, $f2
/* 9C334 8009B734 46203182 */  mul.d      $f6, $f6, $f0
/* 9C338 8009B738 3C01800D */  lui        $at, %hi(D_800D7118)
/* 9C33C 8009B73C D4207118 */  ldc1       $f0, %lo(D_800D7118)($at)
/* 9C340 8009B740 46202103 */  div.d      $f4, $f4, $f0
/* 9C344 8009B744 3C01800D */  lui        $at, %hi(D_800D7120)
/* 9C348 8009B748 D4207120 */  ldc1       $f0, %lo(D_800D7120)($at)
/* 9C34C 8009B74C 46240301 */  sub.d      $f12, $f0, $f4
/* 9C350 8009B750 30620001 */  andi       $v0, $v1, 0x1
/* 9C354 8009B754 14400003 */  bnez       $v0, .L8009B764
/* 9C358 8009B758 46266300 */   add.d     $f12, $f12, $f6
/* 9C35C 8009B75C 08026DDA */  j          .L8009B768
/* 9C360 8009B760 46206006 */   mov.d     $f0, $f12
.L8009B764:
/* 9C364 8009B764 46206007 */  neg.d      $f0, $f12
.L8009B768:
/* 9C368 8009B768 03E00008 */  jr         $ra
/* 9C36C 8009B76C 00000000 */   nop

glabel func_8009B770
/* 9C370 8009B770 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9C374 8009B774 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9C378 8009B778 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 9C37C 8009B77C 46206506 */  mov.d      $f20, $f12
/* 9C380 8009B780 4620A085 */  abs.d      $f2, $f20
/* 9C384 8009B784 3C01800D */  lui        $at, %hi(D_800D7130)
/* 9C388 8009B788 D4207130 */  ldc1       $f0, %lo(D_800D7130)($at)
/* 9C38C 8009B78C 4622003C */  c.lt.d     $f0, $f2
/* 9C390 8009B790 00000000 */  nop
/* 9C394 8009B794 00000000 */  nop
/* 9C398 8009B798 45020005 */  bc1fl      .L8009B7B0
/* 9C39C 8009B79C 4634A082 */   mul.d     $f2, $f20, $f20
/* 9C3A0 8009B7A0 44800000 */  mtc1       $zero, $f0
/* 9C3A4 8009B7A4 44800800 */  mtc1       $zero, $f1
/* 9C3A8 8009B7A8 08026E08 */  j          .L8009B820
/* 9C3AC 8009B7AC 00000000 */   nop
.L8009B7B0:
/* 9C3B0 8009B7B0 46220301 */  sub.d      $f12, $f0, $f2
/* 9C3B4 8009B7B4 46206384 */  sqrt.d     $f14, $f12
/* 9C3B8 8009B7B8 462E7032 */  c.eq.d     $f14, $f14
/* 9C3BC 8009B7BC 00000000 */  nop
/* 9C3C0 8009B7C0 45010004 */  bc1t       .L8009B7D4
/* 9C3C4 8009B7C4 00000000 */   nop
/* 9C3C8 8009B7C8 0C026F44 */  jal        func_8009BD10
/* 9C3CC 8009B7CC 00000000 */   nop
/* 9C3D0 8009B7D0 46200386 */  mov.d      $f14, $f0
.L8009B7D4:
/* 9C3D4 8009B7D4 44800000 */  mtc1       $zero, $f0
/* 9C3D8 8009B7D8 44800800 */  mtc1       $zero, $f1
/* 9C3DC 8009B7DC 00000000 */  nop
/* 9C3E0 8009B7E0 46207032 */  c.eq.d     $f14, $f0
/* 9C3E4 8009B7E4 00000000 */  nop
/* 9C3E8 8009B7E8 45010007 */  bc1t       .L8009B808
/* 9C3EC 8009B7EC 00000000 */   nop
/* 9C3F0 8009B7F0 0C026E44 */  jal        func_8009B910
/* 9C3F4 8009B7F4 4620A306 */   mov.d     $f12, $f20
/* 9C3F8 8009B7F8 3C01800D */  lui        $at, %hi(D_800D7138)
/* 9C3FC 8009B7FC D4227138 */  ldc1       $f2, %lo(D_800D7138)($at)
/* 9C400 8009B800 08026E08 */  j          .L8009B820
/* 9C404 8009B804 46201001 */   sub.d     $f0, $f2, $f0
.L8009B808:
/* 9C408 8009B808 4634003C */  c.lt.d     $f0, $f20
/* 9C40C 8009B80C 00000000 */  nop
/* 9C410 8009B810 45010003 */  bc1t       .L8009B820
/* 9C414 8009B814 00000000 */   nop
/* 9C418 8009B818 3C01800D */  lui        $at, %hi(D_800D7140)
/* 9C41C 8009B81C D4207140 */  ldc1       $f0, %lo(D_800D7140)($at)
.L8009B820:
/* 9C420 8009B820 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C424 8009B824 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 9C428 8009B828 03E00008 */  jr         $ra
/* 9C42C 8009B82C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8009B830
/* 9C430 8009B830 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9C434 8009B834 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9C438 8009B838 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 9C43C 8009B83C 46206506 */  mov.d      $f20, $f12
/* 9C440 8009B840 4620A085 */  abs.d      $f2, $f20
/* 9C444 8009B844 3C01800D */  lui        $at, %hi(D_800D7150)
/* 9C448 8009B848 D4207150 */  ldc1       $f0, %lo(D_800D7150)($at)
/* 9C44C 8009B84C 4622003C */  c.lt.d     $f0, $f2
/* 9C450 8009B850 00000000 */  nop
/* 9C454 8009B854 00000000 */  nop
/* 9C458 8009B858 45020005 */  bc1fl      .L8009B870
/* 9C45C 8009B85C 4634A082 */   mul.d     $f2, $f20, $f20
/* 9C460 8009B860 44800000 */  mtc1       $zero, $f0
/* 9C464 8009B864 44800800 */  mtc1       $zero, $f1
/* 9C468 8009B868 08026E37 */  j          .L8009B8DC
/* 9C46C 8009B86C 00000000 */   nop
.L8009B870:
/* 9C470 8009B870 46220301 */  sub.d      $f12, $f0, $f2
/* 9C474 8009B874 46206384 */  sqrt.d     $f14, $f12
/* 9C478 8009B878 462E7032 */  c.eq.d     $f14, $f14
/* 9C47C 8009B87C 00000000 */  nop
/* 9C480 8009B880 45010004 */  bc1t       .L8009B894
/* 9C484 8009B884 00000000 */   nop
/* 9C488 8009B888 0C026F44 */  jal        func_8009BD10
/* 9C48C 8009B88C 00000000 */   nop
/* 9C490 8009B890 46200386 */  mov.d      $f14, $f0
.L8009B894:
/* 9C494 8009B894 44800000 */  mtc1       $zero, $f0
/* 9C498 8009B898 44800800 */  mtc1       $zero, $f1
/* 9C49C 8009B89C 00000000 */  nop
/* 9C4A0 8009B8A0 46207032 */  c.eq.d     $f14, $f0
/* 9C4A4 8009B8A4 00000000 */  nop
/* 9C4A8 8009B8A8 45010005 */  bc1t       .L8009B8C0
/* 9C4AC 8009B8AC 00000000 */   nop
/* 9C4B0 8009B8B0 0C026E44 */  jal        func_8009B910
/* 9C4B4 8009B8B4 4620A306 */   mov.d     $f12, $f20
/* 9C4B8 8009B8B8 08026E37 */  j          .L8009B8DC
/* 9C4BC 8009B8BC 00000000 */   nop
.L8009B8C0:
/* 9C4C0 8009B8C0 4634003C */  c.lt.d     $f0, $f20
/* 9C4C4 8009B8C4 3C01800D */  lui        $at, %hi(D_800D7158)
/* 9C4C8 8009B8C8 D4207158 */  ldc1       $f0, %lo(D_800D7158)($at)
/* 9C4CC 8009B8CC 45010003 */  bc1t       .L8009B8DC
/* 9C4D0 8009B8D0 00000000 */   nop
/* 9C4D4 8009B8D4 3C01800D */  lui        $at, %hi(D_800D7160)
/* 9C4D8 8009B8D8 D4207160 */  ldc1       $f0, %lo(D_800D7160)($at)
.L8009B8DC:
/* 9C4DC 8009B8DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9C4E0 8009B8E0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 9C4E4 8009B8E4 03E00008 */  jr         $ra
/* 9C4E8 8009B8E8 27BD0020 */   addiu     $sp, $sp, 0x20
/* 9C4EC 8009B8EC 00000000 */  nop