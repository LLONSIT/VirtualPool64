.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091FC0
/* 92BC0 80091FC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 92BC4 80091FC4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 92BC8 80091FC8 3C11803F */  lui        $s1, %hi(D_803F5C4C)
/* 92BCC 80091FCC 26315C4C */  addiu      $s1, $s1, %lo(D_803F5C4C)
/* 92BD0 80091FD0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 92BD4 80091FD4 AFB00018 */  sw         $s0, 0x18($sp)
/* 92BD8 80091FD8 8E220000 */  lw         $v0, 0x0($s1)
/* 92BDC 80091FDC 3C03B000 */  lui        $v1, (0xB0000000 >> 16)
/* 92BE0 80091FE0 10430025 */  beq        $v0, $v1, .L80092078
/* 92BE4 80091FE4 AFA00010 */   sw        $zero, 0x10($sp)
/* 92BE8 80091FE8 00002021 */  addu       $a0, $zero, $zero
/* 92BEC 80091FEC 27A50010 */  addiu      $a1, $sp, 0x10
/* 92BF0 80091FF0 3C01803F */  lui        $at, %hi(D_803F5C44)
/* 92BF4 80091FF4 A0205C44 */  sb         $zero, %lo(D_803F5C44)($at)
/* 92BF8 80091FF8 0C0002F0 */  jal        osPiRawReadIo
/* 92BFC 80091FFC AE230000 */   sw        $v1, 0x0($s1)
/* 92C00 80092000 8FA30010 */  lw         $v1, 0x10($sp)
/* 92C04 80092004 26240008 */  addiu      $a0, $s1, 0x8
/* 92C08 80092008 3C01803F */  lui        $at, %hi(D_803F5C49)
/* 92C0C 8009200C A0205C49 */  sb         $zero, %lo(D_803F5C49)($at)
/* 92C10 80092010 3C01803F */  lui        $at, %hi(D_803F5C50)
/* 92C14 80092014 AC205C50 */  sw         $zero, %lo(D_803F5C50)($at)
/* 92C18 80092018 00031202 */  srl        $v0, $v1, 8
/* 92C1C 8009201C 3C01803F */  lui        $at, %hi(D_803F5C48)
/* 92C20 80092020 A0225C48 */  sb         $v0, %lo(D_803F5C48)($at)
/* 92C24 80092024 00031402 */  srl        $v0, $v1, 16
/* 92C28 80092028 3042000F */  andi       $v0, $v0, 0xF
/* 92C2C 8009202C 3C01803F */  lui        $at, %hi(D_803F5C45)
/* 92C30 80092030 A0235C45 */  sb         $v1, %lo(D_803F5C45)($at)
/* 92C34 80092034 00031D02 */  srl        $v1, $v1, 20
/* 92C38 80092038 3063000F */  andi       $v1, $v1, 0xF
/* 92C3C 8009203C 3C01803F */  lui        $at, %hi(D_803F5C46)
/* 92C40 80092040 A0225C46 */  sb         $v0, %lo(D_803F5C46)($at)
/* 92C44 80092044 3C01803F */  lui        $at, %hi(D_803F5C47)
/* 92C48 80092048 A0235C47 */  sb         $v1, %lo(D_803F5C47)($at)
/* 92C4C 8009204C 0C00034C */  jal        _bzero
/* 92C50 80092050 24050060 */   addiu     $a1, $zero, 0x60
/* 92C54 80092054 0C0005EC */  jal        func_800017B0
/* 92C58 80092058 2630FFF4 */   addiu     $s0, $s1, -0xC
/* 92C5C 8009205C 3C03800A */  lui        $v1, %hi(D_800A070C)
/* 92C60 80092060 8C63070C */  lw         $v1, %lo(D_800A070C)($v1)
/* 92C64 80092064 00402021 */  addu       $a0, $v0, $zero
/* 92C68 80092068 3C01800A */  lui        $at, %hi(D_800A070C)
/* 92C6C 8009206C AC30070C */  sw         $s0, %lo(D_800A070C)($at)
/* 92C70 80092070 0C0005F4 */  jal        __osRestoreInt
/* 92C74 80092074 AE23FFF4 */   sw        $v1, -0xC($s1)
.L80092078:
/* 92C78 80092078 3C02803F */  lui        $v0, %hi(D_803F5C40)
/* 92C7C 8009207C 24425C40 */  addiu      $v0, $v0, %lo(D_803F5C40)
/* 92C80 80092080 8FBF0020 */  lw         $ra, 0x20($sp)
/* 92C84 80092084 8FB1001C */  lw         $s1, 0x1C($sp)
/* 92C88 80092088 8FB00018 */  lw         $s0, 0x18($sp)
/* 92C8C 8009208C 03E00008 */  jr         $ra
/* 92C90 80092090 27BD0028 */   addiu     $sp, $sp, 0x28
/* 92C94 80092094 00000000 */  nop
/* 92C98 80092098 00000000 */  nop
/* 92C9C 8009209C 00000000 */  nop
