.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800024D0
/* 30D0 800024D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 30D4 800024D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 30D8 800024D8 3C11803F */  lui        $s1, %hi(D_803ECFE4)
/* 30DC 800024DC 2631CFE4 */  addiu      $s1, $s1, %lo(D_803ECFE4)
/* 30E0 800024E0 26240010 */  addiu      $a0, $s1, 0x10
/* 30E4 800024E4 24030002 */  addiu      $v1, $zero, 0x2
/* 30E8 800024E8 3C02A500 */  lui        $v0, (0xA5000000 >> 16)
/* 30EC 800024EC AFBF0018 */  sw         $ra, 0x18($sp)
/* 30F0 800024F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 30F4 800024F4 A2230000 */  sb         $v1, 0x0($s1)
/* 30F8 800024F8 3C01803F */  lui        $at, %hi(D_803ECFEC)
/* 30FC 800024FC AC22CFEC */  sw         $v0, %lo(D_803ECFEC)($at)
/* 3100 80002500 24020003 */  addiu      $v0, $zero, 0x3
/* 3104 80002504 3C01803F */  lui        $at, %hi(D_803ECFE5)
/* 3108 80002508 A022CFE5 */  sb         $v0, %lo(D_803ECFE5)($at)
/* 310C 8000250C 24020006 */  addiu      $v0, $zero, 0x6
/* 3110 80002510 3C01803F */  lui        $at, %hi(D_803ECFE8)
/* 3114 80002514 A022CFE8 */  sb         $v0, %lo(D_803ECFE8)($at)
/* 3118 80002518 3C01803F */  lui        $at, %hi(D_803ECFE6)
/* 311C 8000251C A022CFE6 */  sb         $v0, %lo(D_803ECFE6)($at)
/* 3120 80002520 24020001 */  addiu      $v0, $zero, 0x1
/* 3124 80002524 3C01803F */  lui        $at, %hi(D_803ECFE7)
/* 3128 80002528 A023CFE7 */  sb         $v1, %lo(D_803ECFE7)($at)
/* 312C 8000252C 3C01803F */  lui        $at, %hi(D_803ECFE9)
/* 3130 80002530 A022CFE9 */  sb         $v0, %lo(D_803ECFE9)($at)
/* 3134 80002534 3C01803F */  lui        $at, %hi(D_803ECFF0)
/* 3138 80002538 AC20CFF0 */  sw         $zero, %lo(D_803ECFF0)($at)
/* 313C 8000253C 0C00034C */  jal        _bzero
/* 3140 80002540 24050060 */   addiu     $a1, $zero, 0x60
/* 3144 80002544 0C0005EC */  jal        func_800017B0
/* 3148 80002548 2630FFFC */   addiu     $s0, $s1, -0x4
/* 314C 8000254C 3C03800A */  lui        $v1, %hi(D_800A070C)
/* 3150 80002550 8C63070C */  lw         $v1, %lo(D_800A070C)($v1)
/* 3154 80002554 00402021 */  addu       $a0, $v0, $zero
/* 3158 80002558 3C01800A */  lui        $at, %hi(D_800A070C)
/* 315C 8000255C AC30070C */  sw         $s0, %lo(D_800A070C)($at)
/* 3160 80002560 3C01802D */  lui        $at, %hi(D_802D0C80)
/* 3164 80002564 AC300C80 */  sw         $s0, %lo(D_802D0C80)($at)
/* 3168 80002568 0C0005F4 */  jal        __osRestoreInt
/* 316C 8000256C AE23FFFC */   sw        $v1, -0x4($s1)
/* 3170 80002570 02001021 */  addu       $v0, $s0, $zero
/* 3174 80002574 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3178 80002578 8FB10014 */  lw         $s1, 0x14($sp)
/* 317C 8000257C 8FB00010 */  lw         $s0, 0x10($sp)
/* 3180 80002580 03E00008 */  jr         $ra
/* 3184 80002584 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3188 80002588 00000000 */  nop
/* 318C 8000258C 00000000 */  nop
