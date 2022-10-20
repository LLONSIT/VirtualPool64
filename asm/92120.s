.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091520
/* 92120 80091520 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 92124 80091524 AFB00010 */  sw         $s0, 0x10($sp)
/* 92128 80091528 00808021 */  addu       $s0, $a0, $zero
/* 9212C 8009152C AFB10014 */  sw         $s1, 0x14($sp)
/* 92130 80091530 3C11802C */  lui        $s1, %hi(D_802C4460)
/* 92134 80091534 26314460 */  addiu      $s1, $s1, %lo(D_802C4460)
/* 92138 80091538 02202821 */  addu       $a1, $s1, $zero
/* 9213C 8009153C AFBF0018 */  sw         $ra, 0x18($sp)
/* 92140 80091540 0C024854 */  jal        func_80092150
/* 92144 80091544 24060040 */   addiu     $a2, $zero, 0x40
/* 92148 80091548 3C04802C */  lui        $a0, %hi(D_802C4470)
/* 9214C 8009154C 8C844470 */  lw         $a0, %lo(D_802C4470)($a0)
/* 92150 80091550 10800005 */  beqz       $a0, .L80091568
/* 92154 80091554 00000000 */   nop
/* 92158 80091558 0C0006C8 */  jal        osVirtualToPhysical
/* 9215C 8009155C 00000000 */   nop
/* 92160 80091560 3C01802C */  lui        $at, %hi(D_802C4470)
/* 92164 80091564 AC224470 */  sw         $v0, %lo(D_802C4470)($at)
.L80091568:
/* 92168 80091568 3C04802C */  lui        $a0, %hi(D_802C4478)
/* 9216C 8009156C 8C844478 */  lw         $a0, %lo(D_802C4478)($a0)
/* 92170 80091570 10800005 */  beqz       $a0, .L80091588
/* 92174 80091574 00000000 */   nop
/* 92178 80091578 0C0006C8 */  jal        osVirtualToPhysical
/* 9217C 8009157C 00000000 */   nop
/* 92180 80091580 3C01802C */  lui        $at, %hi(D_802C4478)
/* 92184 80091584 AC224478 */  sw         $v0, %lo(D_802C4478)($at)
.L80091588:
/* 92188 80091588 3C04802C */  lui        $a0, %hi(D_802C4480)
/* 9218C 8009158C 8C844480 */  lw         $a0, %lo(D_802C4480)($a0)
/* 92190 80091590 10800005 */  beqz       $a0, .L800915A8
/* 92194 80091594 00000000 */   nop
/* 92198 80091598 0C0006C8 */  jal        osVirtualToPhysical
/* 9219C 8009159C 00000000 */   nop
/* 921A0 800915A0 3C01802C */  lui        $at, %hi(D_802C4480)
/* 921A4 800915A4 AC224480 */  sw         $v0, %lo(D_802C4480)($at)
.L800915A8:
/* 921A8 800915A8 3C04802C */  lui        $a0, %hi(D_802C4488)
/* 921AC 800915AC 8C844488 */  lw         $a0, %lo(D_802C4488)($a0)
/* 921B0 800915B0 10800005 */  beqz       $a0, .L800915C8
/* 921B4 800915B4 00000000 */   nop
/* 921B8 800915B8 0C0006C8 */  jal        osVirtualToPhysical
/* 921BC 800915BC 00000000 */   nop
/* 921C0 800915C0 3C01802C */  lui        $at, %hi(D_802C4488)
/* 921C4 800915C4 AC224488 */  sw         $v0, %lo(D_802C4488)($at)
.L800915C8:
/* 921C8 800915C8 3C04802C */  lui        $a0, %hi(D_802C448C)
/* 921CC 800915CC 8C84448C */  lw         $a0, %lo(D_802C448C)($a0)
/* 921D0 800915D0 10800005 */  beqz       $a0, .L800915E8
/* 921D4 800915D4 00000000 */   nop
/* 921D8 800915D8 0C0006C8 */  jal        osVirtualToPhysical
/* 921DC 800915DC 00000000 */   nop
/* 921E0 800915E0 3C01802C */  lui        $at, %hi(D_802C448C)
/* 921E4 800915E4 AC22448C */  sw         $v0, %lo(D_802C448C)($at)
.L800915E8:
/* 921E8 800915E8 3C04802C */  lui        $a0, %hi(D_802C4490)
/* 921EC 800915EC 8C844490 */  lw         $a0, %lo(D_802C4490)($a0)
/* 921F0 800915F0 10800005 */  beqz       $a0, .L80091608
/* 921F4 800915F4 00000000 */   nop
/* 921F8 800915F8 0C0006C8 */  jal        osVirtualToPhysical
/* 921FC 800915FC 00000000 */   nop
/* 92200 80091600 3C01802C */  lui        $at, %hi(D_802C4490)
/* 92204 80091604 AC224490 */  sw         $v0, %lo(D_802C4490)($at)
.L80091608:
/* 92208 80091608 3C04802C */  lui        $a0, %hi(D_802C4498)
/* 9220C 8009160C 8C844498 */  lw         $a0, %lo(D_802C4498)($a0)
/* 92210 80091610 10800005 */  beqz       $a0, .L80091628
/* 92214 80091614 00000000 */   nop
/* 92218 80091618 0C0006C8 */  jal        osVirtualToPhysical
/* 9221C 8009161C 00000000 */   nop
/* 92220 80091620 3C01802C */  lui        $at, %hi(D_802C4498)
/* 92224 80091624 AC224498 */  sw         $v0, %lo(D_802C4498)($at)
.L80091628:
/* 92228 80091628 3C02802C */  lui        $v0, %hi(D_802C4464)
/* 9222C 8009162C 8C424464 */  lw         $v0, %lo(D_802C4464)($v0)
/* 92230 80091630 30420001 */  andi       $v0, $v0, 0x1
/* 92234 80091634 10400019 */  beqz       $v0, .L8009169C
/* 92238 80091638 02202021 */   addu      $a0, $s1, $zero
/* 9223C 8009163C 3C02802C */  lui        $v0, %hi(D_802C4498)
/* 92240 80091640 8C424498 */  lw         $v0, %lo(D_802C4498)($v0)
/* 92244 80091644 3C03802C */  lui        $v1, %hi(D_802C449C)
/* 92248 80091648 8C63449C */  lw         $v1, %lo(D_802C449C)($v1)
/* 9224C 8009164C 3C01802C */  lui        $at, %hi(D_802C4478)
/* 92250 80091650 AC224478 */  sw         $v0, %lo(D_802C4478)($at)
/* 92254 80091654 3C01802C */  lui        $at, %hi(D_802C447C)
/* 92258 80091658 AC23447C */  sw         $v1, %lo(D_802C447C)($at)
/* 9225C 8009165C 8E020004 */  lw         $v0, 0x4($s0)
/* 92260 80091660 2403FFFE */  addiu      $v1, $zero, -0x2
/* 92264 80091664 00431024 */  and        $v0, $v0, $v1
/* 92268 80091668 AE020004 */  sw         $v0, 0x4($s0)
/* 9226C 8009166C 3C02802C */  lui        $v0, %hi(D_802C4464)
/* 92270 80091670 8C424464 */  lw         $v0, %lo(D_802C4464)($v0)
/* 92274 80091674 30420004 */  andi       $v0, $v0, 0x4
/* 92278 80091678 10400008 */  beqz       $v0, .L8009169C
/* 9227C 8009167C 3C03A000 */   lui       $v1, %hi(D_A0000000)
/* 92280 80091680 8E020038 */  lw         $v0, 0x38($s0)
/* 92284 80091684 24420BFC */  addiu      $v0, $v0, 0xBFC
/* 92288 80091688 00431025 */  or         $v0, $v0, $v1
/* 9228C 8009168C 8C420000 */  lw         $v0, %lo(D_A0000000)($v0)
/* 92290 80091690 3C01802C */  lui        $at, %hi(D_802C4470)
/* 92294 80091694 AC224470 */  sw         $v0, %lo(D_802C4470)($at)
/* 92298 80091698 02202021 */  addu       $a0, $s1, $zero
.L8009169C:
/* 9229C 8009169C 0C000644 */  jal        func_80001910
/* 922A0 800916A0 24050040 */   addiu     $a1, $zero, 0x40
/* 922A4 800916A4 0C026034 */  jal        func_800980D0
/* 922A8 800916A8 24042B00 */   addiu     $a0, $zero, 0x2B00
/* 922AC 800916AC 2410FFFF */  addiu      $s0, $zero, -0x1
/* 922B0 800916B0 3C040400 */  lui        $a0, (0x4001000 >> 16)
.L800916B4:
/* 922B4 800916B4 0C026038 */  jal        func_800980E0
/* 922B8 800916B8 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 922BC 800916BC 1050FFFD */  beq        $v0, $s0, .L800916B4
/* 922C0 800916C0 3C040400 */   lui       $a0, (0x4001000 >> 16)
/* 922C4 800916C4 2410FFFF */  addiu      $s0, $zero, -0x1
/* 922C8 800916C8 24040001 */  addiu      $a0, $zero, 0x1
.L800916CC:
/* 922CC 800916CC 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 922D0 800916D0 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 922D4 800916D4 02203021 */  addu       $a2, $s1, $zero
/* 922D8 800916D8 0C026044 */  jal        func_80098110
/* 922DC 800916DC 24070040 */   addiu     $a3, $zero, 0x40
/* 922E0 800916E0 1050FFFA */  beq        $v0, $s0, .L800916CC
/* 922E4 800916E4 24040001 */   addiu     $a0, $zero, 0x1
.L800916E8:
/* 922E8 800916E8 0C026028 */  jal        func_800980A0
/* 922EC 800916EC 00000000 */   nop
/* 922F0 800916F0 1440FFFD */  bnez       $v0, .L800916E8
/* 922F4 800916F4 24040001 */   addiu     $a0, $zero, 0x1
/* 922F8 800916F8 2410FFFF */  addiu      $s0, $zero, -0x1
.L800916FC:
/* 922FC 800916FC 8E260008 */  lw         $a2, 0x8($s1)
/* 92300 80091700 8E27000C */  lw         $a3, 0xC($s1)
/* 92304 80091704 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 92308 80091708 0C026044 */  jal        func_80098110
/* 9230C 8009170C 34A51000 */   ori       $a1, $a1, (0x4001000 & 0xFFFF)
/* 92310 80091710 1050FFFA */  beq        $v0, $s0, .L800916FC
/* 92314 80091714 24040001 */   addiu     $a0, $zero, 0x1
/* 92318 80091718 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9231C 8009171C 8FB10014 */  lw         $s1, 0x14($sp)
/* 92320 80091720 8FB00010 */  lw         $s0, 0x10($sp)
/* 92324 80091724 03E00008 */  jr         $ra
/* 92328 80091728 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8009172C
/* 9232C 8009172C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92330 80091730 AFBF0010 */  sw         $ra, 0x10($sp)
.L80091734:
/* 92334 80091734 0C026028 */  jal        func_800980A0
/* 92338 80091738 00000000 */   nop
/* 9233C 8009173C 1440FFFD */  bnez       $v0, .L80091734
/* 92340 80091740 00000000 */   nop
/* 92344 80091744 0C026034 */  jal        func_800980D0
/* 92348 80091748 24040125 */   addiu     $a0, $zero, 0x125
/* 9234C 8009174C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 92350 80091750 03E00008 */  jr         $ra
/* 92354 80091754 27BD0018 */   addiu     $sp, $sp, 0x18
/* 92358 80091758 00000000 */  nop
/* 9235C 8009175C 00000000 */  nop