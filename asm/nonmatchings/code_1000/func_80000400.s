.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

# Handwritten function
glabel func_80000400
/* 1000 80000400 3C08800D */  lui        $t0, %hi(D_800D7240)
/* 1004 80000404 25087240 */  addiu      $t0, $t0, %lo(D_800D7240)
/* 1008 80000408 3C090032 */  lui        $t1, %hi(D_31F9B0)
/* 100C 8000040C 2529F9B0 */  addiu      $t1, $t1, %lo(D_31F9B0)
.L80000410:
/* 1010 80000410 AD000000 */  sw         $zero, 0x0($t0)
/* 1014 80000414 AD000004 */  sw         $zero, 0x4($t0)
/* 1018 80000418 21080008 */  addi       $t0, $t0, 0x8
/* 101C 8000041C 2129FFF8 */  addi       $t1, $t1, -0x8
/* 1020 80000420 1520FFFB */  bnez       $t1, .L80000410
/* 1024 80000424 00000000 */   nop
/* 1028 80000428 3C0A8000 */  lui        $t2, %hi(func_800004B8)
/* 102C 8000042C 254A04B8 */  addiu      $t2, $t2, %lo(func_800004B8)
/* 1030 80000430 3C1D802D */  lui        $sp, %hi(D_802CAF08)
/* 1034 80000434 01400008 */  jr         $t2
/* 1038 80000438 27BDAF08 */   addiu     $sp, $sp, %lo(D_802CAF08)
/* 103C 8000043C 00000000 */  nop
/* 1040 80000440 00000000 */  nop
/* 1044 80000444 00000000 */  nop
/* 1048 80000448 00000000 */  nop
/* 104C 8000044C 00000000 */  nop
glabel func_80000450
/* 1050 80000450 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1054 80000454 3C02000D */  lui        $v0, %hi(D_D7E40)
/* 1058 80000458 24427E40 */  addiu      $v0, $v0, %lo(D_D7E40)
/* 105C 8000045C 3C030000 */  lui        $v1, %hi(D_1050)
/* 1060 80000460 24631050 */  addiu      $v1, $v1, %lo(D_1050)
/* 1064 80000464 00433823 */  subu       $a3, $v0, $v1
/* 1068 80000468 3C03000F */  lui        $v1, (0xFFFB0 >> 16)
/* 106C 8000046C 3463FFB0 */  ori        $v1, $v1, (0xFFFB0 & 0xFFFF)
/* 1070 80000470 0067102B */  sltu       $v0, $v1, $a3
/* 1074 80000474 1040000D */  beqz       $v0, .L800004AC
/* 1078 80000478 AFBF0010 */   sw        $ra, 0x10($sp)
/* 107C 8000047C 00002021 */  addu       $a0, $zero, $zero
/* 1080 80000480 3C050010 */  lui        $a1, %hi(D_101000)
/* 1084 80000484 24A51000 */  addiu      $a1, $a1, %lo(D_101000)
/* 1088 80000488 3C068010 */  lui        $a2, %hi(D_80100400)
/* 108C 8000048C 24C60400 */  addiu      $a2, $a2, %lo(D_80100400)
/* 1090 80000490 0C000318 */  jal        osPiRawStartDma
/* 1094 80000494 00E33823 */   subu      $a3, $a3, $v1
.L80000498:
/* 1098 80000498 0C0002EC */  jal        func_80000BB0
/* 109C 8000049C 00000000 */   nop
/* 10A0 800004A0 30420001 */  andi       $v0, $v0, 0x1
/* 10A4 800004A4 1440FFFC */  bnez       $v0, .L80000498
/* 10A8 800004A8 00000000 */   nop
.L800004AC:
/* 10AC 800004AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10B0 800004B0 03E00008 */  jr         $ra
/* 10B4 800004B4 27BD0018 */   addiu     $sp, $sp, 0x18
