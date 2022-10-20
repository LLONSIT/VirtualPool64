.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80096090
/* 96C90 80096090 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 96C94 80096094 AFB40030 */  sw         $s4, 0x30($sp)
/* 96C98 80096098 00A0A021 */  addu       $s4, $a1, $zero
/* 96C9C 8009609C AFB3002C */  sw         $s3, 0x2C($sp)
/* 96CA0 800960A0 00C09821 */  addu       $s3, $a2, $zero
/* 96CA4 800960A4 AFB50034 */  sw         $s5, 0x34($sp)
/* 96CA8 800960A8 00E0A821 */  addu       $s5, $a3, $zero
/* 96CAC 800960AC 8FA60050 */  lw         $a2, 0x50($sp)
/* 96CB0 800960B0 3C030200 */  lui        $v1, (0x20006C0 >> 16)
/* 96CB4 800960B4 346306C0 */  ori        $v1, $v1, (0x20006C0 & 0xFFFF)
/* 96CB8 800960B8 3C050200 */  lui        $a1, (0x2000800 >> 16)
/* 96CBC 800960BC 34A50800 */  ori        $a1, $a1, (0x2000800 & 0xFFFF)
/* 96CC0 800960C0 AFB20028 */  sw         $s2, 0x28($sp)
/* 96CC4 800960C4 00809021 */  addu       $s2, $a0, $zero
/* 96CC8 800960C8 AFBF0038 */  sw         $ra, 0x38($sp)
/* 96CCC 800960CC AFB10024 */  sw         $s1, 0x24($sp)
/* 96CD0 800960D0 AFB00020 */  sw         $s0, 0x20($sp)
/* 96CD4 800960D4 8E44001C */  lw         $a0, 0x1C($s2)
/* 96CD8 800960D8 00C01021 */  addu       $v0, $a2, $zero
/* 96CDC 800960DC 24C60008 */  addiu      $a2, $a2, 0x8
/* 96CE0 800960E0 AC430000 */  sw         $v1, 0x0($v0)
/* 96CE4 800960E4 00131840 */  sll        $v1, $s3, 1
/* 96CE8 800960E8 AC430004 */  sw         $v1, 0x4($v0)
/* 96CEC 800960EC 00C01021 */  addu       $v0, $a2, $zero
/* 96CF0 800960F0 AC450000 */  sw         $a1, 0x0($v0)
/* 96CF4 800960F4 AC430004 */  sw         $v1, 0x4($v0)
/* 96CF8 800960F8 8E420014 */  lw         $v0, 0x14($s2)
/* 96CFC 800960FC 00008821 */  addu       $s1, $zero, $zero
/* 96D00 80096100 18400010 */  blez       $v0, .L80096144
/* 96D04 80096104 24C60008 */   addiu     $a2, $a2, 0x8
/* 96D08 80096108 00808021 */  addu       $s0, $a0, $zero
.L8009610C:
/* 96D0C 8009610C 8E020000 */  lw         $v0, 0x0($s0)
/* 96D10 80096110 AFA60010 */  sw         $a2, 0x10($sp)
/* 96D14 80096114 8E040000 */  lw         $a0, 0x0($s0)
/* 96D18 80096118 26100004 */  addiu      $s0, $s0, 0x4
/* 96D1C 8009611C 02802821 */  addu       $a1, $s4, $zero
/* 96D20 80096120 8C420004 */  lw         $v0, 0x4($v0)
/* 96D24 80096124 02603021 */  addu       $a2, $s3, $zero
/* 96D28 80096128 0040F809 */  jalr       $v0
/* 96D2C 8009612C 02A03821 */   addu      $a3, $s5, $zero
/* 96D30 80096130 8E430014 */  lw         $v1, 0x14($s2)
/* 96D34 80096134 26310001 */  addiu      $s1, $s1, 0x1
/* 96D38 80096138 0223182A */  slt        $v1, $s1, $v1
/* 96D3C 8009613C 1460FFF3 */  bnez       $v1, .L8009610C
/* 96D40 80096140 00403021 */   addu      $a2, $v0, $zero
.L80096144:
/* 96D44 80096144 00C01021 */  addu       $v0, $a2, $zero
/* 96D48 80096148 8FBF0038 */  lw         $ra, 0x38($sp)
/* 96D4C 8009614C 8FB50034 */  lw         $s5, 0x34($sp)
/* 96D50 80096150 8FB40030 */  lw         $s4, 0x30($sp)
/* 96D54 80096154 8FB3002C */  lw         $s3, 0x2C($sp)
/* 96D58 80096158 8FB20028 */  lw         $s2, 0x28($sp)
/* 96D5C 8009615C 8FB10024 */  lw         $s1, 0x24($sp)
/* 96D60 80096160 8FB00020 */  lw         $s0, 0x20($sp)
/* 96D64 80096164 03E00008 */  jr         $ra
/* 96D68 80096168 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8009616C
/* 96D6C 8009616C 8C87001C */  lw         $a3, 0x1C($a0)
/* 96D70 80096170 24020002 */  addiu      $v0, $zero, 0x2
/* 96D74 80096174 14A20007 */  bne        $a1, $v0, .L80096194
/* 96D78 80096178 00000000 */   nop
/* 96D7C 8009617C 8C820014 */  lw         $v0, 0x14($a0)
/* 96D80 80096180 24430001 */  addiu      $v1, $v0, 0x1
/* 96D84 80096184 00021080 */  sll        $v0, $v0, 2
/* 96D88 80096188 00471021 */  addu       $v0, $v0, $a3
/* 96D8C 8009618C AC830014 */  sw         $v1, 0x14($a0)
/* 96D90 80096190 AC460000 */  sw         $a2, 0x0($v0)
.L80096194:
/* 96D94 80096194 03E00008 */  jr         $ra
/* 96D98 80096198 00001021 */   addu      $v0, $zero, $zero
/* 96D9C 8009619C 00000000 */  nop
