.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80079B90
/* 7A790 80079B90 3C01800C */  lui        $at, %hi(D_800C6A88)
/* 7A794 80079B94 D4206A88 */  ldc1       $f0, %lo(D_800C6A88)($at)
/* 7A798 80079B98 46206001 */  sub.d      $f0, $f12, $f0
/* 7A79C 80079B9C 3C01800C */  lui        $at, %hi(D_800C6A90)
/* 7A7A0 80079BA0 D42C6A90 */  ldc1       $f12, %lo(D_800C6A90)($at)
/* 7A7A4 80079BA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A7A8 80079BA8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7A7AC 80079BAC 0C026E3C */  jal        func_8009B8F0
/* 7A7B0 80079BB0 462C0302 */   mul.d     $f12, $f0, $f12
/* 7A7B4 80079BB4 3C01800C */  lui        $at, %hi(D_800C6A80)
/* 7A7B8 80079BB8 D4226A80 */  ldc1       $f2, %lo(D_800C6A80)($at)
/* 7A7BC 80079BBC 46201082 */  mul.d      $f2, $f2, $f0
/* 7A7C0 80079BC0 3C01800C */  lui        $at, %hi(D_800C6A98)
/* 7A7C4 80079BC4 D4206A98 */  ldc1       $f0, %lo(D_800C6A98)($at)
/* 7A7C8 80079BC8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7A7CC 80079BCC 46201000 */  add.d      $f0, $f2, $f0
/* 7A7D0 80079BD0 03E00008 */  jr         $ra
/* 7A7D4 80079BD4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80079BD8
/* 7A7D8 80079BD8 3C01800C */  lui        $at, %hi(D_800C6AA8)
/* 7A7DC 80079BDC D4206AA8 */  ldc1       $f0, %lo(D_800C6AA8)($at)
/* 7A7E0 80079BE0 462C0002 */  mul.d      $f0, $f0, $f12
/* 7A7E4 80079BE4 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7A7E8 80079BE8 D4226AA0 */  ldc1       $f2, %lo(D_800C6AA0)($at)
/* 7A7EC 80079BEC 03E00008 */  jr         $ra
/* 7A7F0 80079BF0 46201000 */   add.d     $f0, $f2, $f0

glabel func_80079BF4
/* 7A7F4 80079BF4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7A7F8 80079BF8 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 7A7FC 80079BFC 46206586 */  mov.d      $f22, $f12
/* 7A800 80079C00 D4CC0010 */  ldc1       $f12, 0x10($a2)
/* 7A804 80079C04 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 7A808 80079C08 D4F40008 */  ldc1       $f20, 0x8($a3)
/* 7A80C 80079C0C 46346082 */  mul.d      $f2, $f12, $f20
/* 7A810 80079C10 44800000 */  mtc1       $zero, $f0
/* 7A814 80079C14 44800800 */  mtc1       $zero, $f1
/* 7A818 80079C18 00000000 */  nop
/* 7A81C 80079C1C 4622003C */  c.lt.d     $f0, $f2
/* 7A820 80079C20 00000000 */  nop
/* 7A824 80079C24 00000000 */  nop
/* 7A828 80079C28 4501001C */  bc1t       .L80079C9C
/* 7A82C 80079C2C AFBF0010 */   sw        $ra, 0x10($sp)
/* 7A830 80079C30 0C01E6E4 */  jal        func_80079B90
/* 7A834 80079C34 46206305 */   abs.d     $f12, $f12
/* 7A838 80079C38 4620A305 */  abs.d      $f12, $f20
/* 7A83C 80079C3C 0C01E6E4 */  jal        func_80079B90
/* 7A840 80079C40 46200506 */   mov.d     $f20, $f0
/* 7A844 80079C44 3C01800C */  lui        $at, %hi(D_800C6AC8)
/* 7A848 80079C48 D4246AC8 */  ldc1       $f4, %lo(D_800C6AC8)($at)
/* 7A84C 80079C4C 4624A501 */  sub.d      $f20, $f20, $f4
/* 7A850 80079C50 3C01800C */  lui        $at, %hi(D_800C6AC0)
/* 7A854 80079C54 D4226AC0 */  ldc1       $f2, %lo(D_800C6AC0)($at)
/* 7A858 80079C58 46341082 */  mul.d      $f2, $f2, $f20
/* 7A85C 80079C5C 46240001 */  sub.d      $f0, $f0, $f4
/* 7A860 80079C60 46201082 */  mul.d      $f2, $f2, $f0
/* 7A864 80079C64 3C01800C */  lui        $at, %hi(D_800C6AE0)
/* 7A868 80079C68 D4206AE0 */  ldc1       $f0, %lo(D_800C6AE0)($at)
/* 7A86C 80079C6C 46360002 */  mul.d      $f0, $f0, $f22
/* 7A870 80079C70 3C01800C */  lui        $at, %hi(D_800C6AD0)
/* 7A874 80079C74 D4246AD0 */  ldc1       $f4, %lo(D_800C6AD0)($at)
/* 7A878 80079C78 46222102 */  mul.d      $f4, $f4, $f2
/* 7A87C 80079C7C 3C01800C */  lui        $at, %hi(D_800C6AD8)
/* 7A880 80079C80 D4226AD8 */  ldc1       $f2, %lo(D_800C6AD8)($at)
/* 7A884 80079C84 46201080 */  add.d      $f2, $f2, $f0
/* 7A888 80079C88 3C01800D */  lui        $at, %hi(D_800D5940)
/* 7A88C 80079C8C D4205940 */  ldc1       $f0, %lo(D_800D5940)($at)
/* 7A890 80079C90 46240001 */  sub.d      $f0, $f0, $f4
/* 7A894 80079C94 0801E72D */  j          .L80079CB4
/* 7A898 80079C98 46201002 */   mul.d     $f0, $f2, $f0
.L80079C9C:
/* 7A89C 80079C9C 3C01800C */  lui        $at, %hi(D_800C6AB8)
/* 7A8A0 80079CA0 D4206AB8 */  ldc1       $f0, %lo(D_800C6AB8)($at)
/* 7A8A4 80079CA4 46360002 */  mul.d      $f0, $f0, $f22
/* 7A8A8 80079CA8 3C01800C */  lui        $at, %hi(D_800C6AB0)
/* 7A8AC 80079CAC D4226AB0 */  ldc1       $f2, %lo(D_800C6AB0)($at)
/* 7A8B0 80079CB0 46201000 */  add.d      $f0, $f2, $f0
.L80079CB4:
/* 7A8B4 80079CB4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7A8B8 80079CB8 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 7A8BC 80079CBC D7B40018 */  ldc1       $f20, 0x18($sp)
/* 7A8C0 80079CC0 03E00008 */  jr         $ra
/* 7A8C4 80079CC4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80079CC8
/* 7A8C8 80079CC8 3C01800C */  lui        $at, %hi(D_800C6AF0)
/* 7A8CC 80079CCC D4206AF0 */  ldc1       $f0, %lo(D_800C6AF0)($at)
/* 7A8D0 80079CD0 462C0002 */  mul.d      $f0, $f0, $f12
/* 7A8D4 80079CD4 3C01800C */  lui        $at, %hi(D_800C6AE8)
/* 7A8D8 80079CD8 D4226AE8 */  ldc1       $f2, %lo(D_800C6AE8)($at)
/* 7A8DC 80079CDC 03E00008 */  jr         $ra
/* 7A8E0 80079CE0 46201000 */   add.d     $f0, $f2, $f0

glabel func_80079CE4
/* 7A8E4 80079CE4 3C01800C */  lui        $at, %hi(D_800C6B00)
/* 7A8E8 80079CE8 D4206B00 */  ldc1       $f0, %lo(D_800C6B00)($at)
/* 7A8EC 80079CEC 462C0002 */  mul.d      $f0, $f0, $f12
/* 7A8F0 80079CF0 3C01800C */  lui        $at, %hi(D_800C6AF8)
/* 7A8F4 80079CF4 D4226AF8 */  ldc1       $f2, %lo(D_800C6AF8)($at)
/* 7A8F8 80079CF8 03E00008 */  jr         $ra
/* 7A8FC 80079CFC 46201000 */   add.d     $f0, $f2, $f0

glabel func_80079D00
/* 7A900 80079D00 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7A904 80079D04 AFB00010 */  sw         $s0, 0x10($sp)
/* 7A908 80079D08 00808021 */  addu       $s0, $a0, $zero
/* 7A90C 80079D0C D6040000 */  ldc1       $f4, 0x0($s0)
/* 7A910 80079D10 3C01800D */  lui        $at, %hi(D_800D5948)
/* 7A914 80079D14 D4205948 */  ldc1       $f0, %lo(D_800D5948)($at)
/* 7A918 80079D18 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7A91C 80079D1C 4480A000 */  mtc1       $zero, $f20
/* 7A920 80079D20 4480A800 */  mtc1       $zero, $f21
/* 7A924 80079D24 AFB10014 */  sw         $s1, 0x14($sp)
/* 7A928 80079D28 46202305 */  abs.d      $f12, $f4
/* 7A92C 80079D2C 462C003C */  c.lt.d     $f0, $f12
/* 7A930 80079D30 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7A934 80079D34 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 7A938 80079D38 45000024 */  bc1f       .L80079DCC
/* 7A93C 80079D3C 00A08821 */   addu      $s1, $a1, $zero
/* 7A940 80079D40 00000000 */  nop
/* 7A944 80079D44 46242102 */  mul.d      $f4, $f4, $f4
/* 7A948 80079D48 D6000008 */  ldc1       $f0, 0x8($s0)
/* 7A94C 80079D4C 46200002 */  mul.d      $f0, $f0, $f0
/* 7A950 80079D50 D6140010 */  ldc1       $f20, 0x10($s0)
/* 7A954 80079D54 4634A082 */  mul.d      $f2, $f20, $f20
/* 7A958 80079D58 46202000 */  add.d      $f0, $f4, $f0
/* 7A95C 80079D5C 46220000 */  add.d      $f0, $f0, $f2
/* 7A960 80079D60 46202583 */  div.d      $f22, $f4, $f0
/* 7A964 80079D64 4636B002 */  mul.d      $f0, $f22, $f22
/* 7A968 80079D68 00000000 */  nop
/* 7A96C 80079D6C 46360002 */  mul.d      $f0, $f0, $f22
/* 7A970 80079D70 00000000 */  nop
/* 7A974 80079D74 46360002 */  mul.d      $f0, $f0, $f22
/* 7A978 80079D78 00000000 */  nop
/* 7A97C 80079D7C 46360002 */  mul.d      $f0, $f0, $f22
/* 7A980 80079D80 0C026EB8 */  jal        func_8009BAE0
/* 7A984 80079D84 4620B582 */   mul.d     $f22, $f22, $f0
/* 7A988 80079D88 3C01800D */  lui        $at, %hi(D_800D5950)
/* 7A98C 80079D8C D4225950 */  ldc1       $f2, %lo(D_800D5950)($at)
/* 7A990 80079D90 46220303 */  div.d      $f12, $f0, $f2
/* 7A994 80079D94 4636B582 */  mul.d      $f22, $f22, $f22
/* 7A998 80079D98 00000000 */  nop
/* 7A99C 80079D9C 462C6002 */  mul.d      $f0, $f12, $f12
/* 7A9A0 80079DA0 00000000 */  nop
/* 7A9A4 80079DA4 462C0002 */  mul.d      $f0, $f0, $f12
/* 7A9A8 80079DA8 00000000 */  nop
/* 7A9AC 80079DAC 46206302 */  mul.d      $f12, $f12, $f0
/* 7A9B0 80079DB0 00000000 */  nop
/* 7A9B4 80079DB4 46366302 */  mul.d      $f12, $f12, $f22
/* 7A9B8 80079DB8 3C01800D */  lui        $at, %hi(D_800D5958)
/* 7A9BC 80079DBC D4205958 */  ldc1       $f0, %lo(D_800D5958)($at)
/* 7A9C0 80079DC0 46206002 */  mul.d      $f0, $f12, $f0
/* 7A9C4 80079DC4 00000000 */  nop
/* 7A9C8 80079DC8 46340502 */  mul.d      $f20, $f0, $f20
.L80079DCC:
/* 7A9CC 80079DCC D6200008 */  ldc1       $f0, 0x8($s1)
/* 7A9D0 80079DD0 3C01800D */  lui        $at, %hi(D_800D5960)
/* 7A9D4 80079DD4 D4225960 */  ldc1       $f2, %lo(D_800D5960)($at)
/* 7A9D8 80079DD8 46200585 */  abs.d      $f22, $f0
/* 7A9DC 80079DDC 4622B03C */  c.lt.d     $f22, $f2
/* 7A9E0 80079DE0 00000000 */  nop
/* 7A9E4 80079DE4 45000005 */  bc1f       .L80079DFC
/* 7A9E8 80079DE8 00000000 */   nop
/* 7A9EC 80079DEC 44806000 */  mtc1       $zero, $f12
/* 7A9F0 80079DF0 44806800 */  mtc1       $zero, $f13
/* 7A9F4 80079DF4 0801E78F */  j          .L80079E3C
/* 7A9F8 80079DF8 00000000 */   nop
.L80079DFC:
/* 7A9FC 80079DFC D60C0010 */  ldc1       $f12, 0x10($s0)
/* 7AA00 80079E00 0C01E6E4 */  jal        func_80079B90
/* 7AA04 80079E04 46206305 */   abs.d     $f12, $f12
/* 7AA08 80079E08 3C01800D */  lui        $at, %hi(D_800D5968)
/* 7AA0C 80079E0C D42C5968 */  ldc1       $f12, %lo(D_800D5968)($at)
/* 7AA10 80079E10 462CB302 */  mul.d      $f12, $f22, $f12
/* 7AA14 80079E14 0C026EB8 */  jal        func_8009BAE0
/* 7AA18 80079E18 46200586 */   mov.d     $f22, $f0
/* 7AA1C 80079E1C 3C01800D */  lui        $at, %hi(D_800D5970)
/* 7AA20 80079E20 D4225970 */  ldc1       $f2, %lo(D_800D5970)($at)
/* 7AA24 80079E24 4622B081 */  sub.d      $f2, $f22, $f2
/* 7AA28 80079E28 3C01800D */  lui        $at, %hi(D_800D5978)
/* 7AA2C 80079E2C D4245978 */  ldc1       $f4, %lo(D_800D5978)($at)
/* 7AA30 80079E30 46241082 */  mul.d      $f2, $f2, $f4
/* 7AA34 80079E34 00000000 */  nop
/* 7AA38 80079E38 46201302 */  mul.d      $f12, $f2, $f0
.L80079E3C:
/* 7AA3C 80079E3C D6040010 */  ldc1       $f4, 0x10($s0)
/* 7AA40 80079E40 D6200008 */  ldc1       $f0, 0x8($s1)
/* 7AA44 80079E44 46202002 */  mul.d      $f0, $f4, $f0
/* 7AA48 80079E48 44801000 */  mtc1       $zero, $f2
/* 7AA4C 80079E4C 44801800 */  mtc1       $zero, $f3
/* 7AA50 80079E50 00000000 */  nop
/* 7AA54 80079E54 4622003C */  c.lt.d     $f0, $f2
/* 7AA58 80079E58 3C01800D */  lui        $at, %hi(D_800D5980)
/* 7AA5C 80079E5C D4205980 */  ldc1       $f0, %lo(D_800D5980)($at)
/* 7AA60 80079E60 45020004 */  bc1fl      .L80079E74
/* 7AA64 80079E64 46206002 */   mul.d     $f0, $f12, $f0
/* 7AA68 80079E68 3C01800D */  lui        $at, %hi(D_800D5988)
/* 7AA6C 80079E6C D4205988 */  ldc1       $f0, %lo(D_800D5988)($at)
/* 7AA70 80079E70 46206002 */  mul.d      $f0, $f12, $f0
.L80079E74:
/* 7AA74 80079E74 00000000 */  nop
/* 7AA78 80079E78 46240002 */  mul.d      $f0, $f0, $f4
/* 7AA7C 80079E7C 4620A500 */  add.d      $f20, $f20, $f0
/* 7AA80 80079E80 4620A006 */  mov.d      $f0, $f20
/* 7AA84 80079E84 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7AA88 80079E88 8FB10014 */  lw         $s1, 0x14($sp)
/* 7AA8C 80079E8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 7AA90 80079E90 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 7AA94 80079E94 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7AA98 80079E98 03E00008 */  jr         $ra
/* 7AA9C 80079E9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80079EA0
/* 7AAA0 80079EA0 3C01800C */  lui        $at, %hi(D_800C6B20)
/* 7AAA4 80079EA4 D4206B20 */  ldc1       $f0, %lo(D_800C6B20)($at)
/* 7AAA8 80079EA8 46206086 */  mov.d      $f2, $f12
/* 7AAAC 80079EAC 4620103C */  c.lt.d     $f2, $f0
/* 7AAB0 80079EB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7AAB4 80079EB4 00000000 */  nop
/* 7AAB8 80079EB8 4501000C */  bc1t       .L80079EEC
/* 7AABC 80079EBC AFBF0010 */   sw        $ra, 0x10($sp)
/* 7AAC0 80079EC0 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7AAC4 80079EC4 D42C6B18 */  ldc1       $f12, %lo(D_800C6B18)($at)
/* 7AAC8 80079EC8 0C026EB8 */  jal        func_8009BAE0
/* 7AACC 80079ECC 46226302 */   mul.d     $f12, $f12, $f2
/* 7AAD0 80079ED0 3C01800C */  lui        $at, %hi(D_800C6B10)
/* 7AAD4 80079ED4 D4226B10 */  ldc1       $f2, %lo(D_800C6B10)($at)
/* 7AAD8 80079ED8 46201082 */  mul.d      $f2, $f2, $f0
/* 7AADC 80079EDC 3C01800C */  lui        $at, %hi(D_800C6B08)
/* 7AAE0 80079EE0 D4206B08 */  ldc1       $f0, %lo(D_800C6B08)($at)
/* 7AAE4 80079EE4 0801E7BD */  j          .L80079EF4
/* 7AAE8 80079EE8 46220000 */   add.d     $f0, $f0, $f2
.L80079EEC:
/* 7AAEC 80079EEC 44800000 */  mtc1       $zero, $f0
/* 7AAF0 80079EF0 44800800 */  mtc1       $zero, $f1
.L80079EF4:
/* 7AAF4 80079EF4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7AAF8 80079EF8 03E00008 */  jr         $ra
/* 7AAFC 80079EFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80079F00
/* 7AB00 80079F00 3C01800C */  lui        $at, %hi(D_800C6B40)
/* 7AB04 80079F04 D4206B40 */  ldc1       $f0, %lo(D_800C6B40)($at)
/* 7AB08 80079F08 46206086 */  mov.d      $f2, $f12
/* 7AB0C 80079F0C 4620103C */  c.lt.d     $f2, $f0
/* 7AB10 80079F10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7AB14 80079F14 00000000 */  nop
/* 7AB18 80079F18 4501000C */  bc1t       .L80079F4C
/* 7AB1C 80079F1C AFBF0010 */   sw        $ra, 0x10($sp)
/* 7AB20 80079F20 3C01800C */  lui        $at, %hi(D_800C6B38)
/* 7AB24 80079F24 D42C6B38 */  ldc1       $f12, %lo(D_800C6B38)($at)
/* 7AB28 80079F28 0C026EB8 */  jal        func_8009BAE0
/* 7AB2C 80079F2C 46226302 */   mul.d     $f12, $f12, $f2
/* 7AB30 80079F30 3C01800C */  lui        $at, %hi(D_800C6B30)
/* 7AB34 80079F34 D4226B30 */  ldc1       $f2, %lo(D_800C6B30)($at)
/* 7AB38 80079F38 46201082 */  mul.d      $f2, $f2, $f0
/* 7AB3C 80079F3C 3C01800C */  lui        $at, %hi(D_800C6B28)
/* 7AB40 80079F40 D4206B28 */  ldc1       $f0, %lo(D_800C6B28)($at)
/* 7AB44 80079F44 0801E7D5 */  j          .L80079F54
/* 7AB48 80079F48 46220000 */   add.d     $f0, $f0, $f2
.L80079F4C:
/* 7AB4C 80079F4C 3C01800C */  lui        $at, %hi(D_800C6B28)
/* 7AB50 80079F50 D4206B28 */  ldc1       $f0, %lo(D_800C6B28)($at)
.L80079F54:
/* 7AB54 80079F54 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7AB58 80079F58 03E00008 */  jr         $ra
/* 7AB5C 80079F5C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80079F60
/* 7AB60 80079F60 3C01800D */  lui        $at, %hi(D_800D5990)
/* 7AB64 80079F64 D4205990 */  ldc1       $f0, %lo(D_800D5990)($at)
/* 7AB68 80079F68 46206302 */  mul.d      $f12, $f12, $f0
/* 7AB6C 80079F6C 3C01800D */  lui        $at, %hi(D_800D5998)
/* 7AB70 80079F70 D4205998 */  ldc1       $f0, %lo(D_800D5998)($at)
/* 7AB74 80079F74 03E00008 */  jr         $ra
/* 7AB78 80079F78 462C0001 */   sub.d     $f0, $f0, $f12

glabel func_80079F7C
/* 7AB7C 80079F7C 3C01800D */  lui        $at, %hi(D_800D59A0)
/* 7AB80 80079F80 D42059A0 */  ldc1       $f0, %lo(D_800D59A0)($at)
/* 7AB84 80079F84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7AB88 80079F88 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7AB8C 80079F8C 0C026EFC */  jal        func_8009BBF0
/* 7AB90 80079F90 46206302 */   mul.d     $f12, $f12, $f0
/* 7AB94 80079F94 3C01800D */  lui        $at, %hi(D_800D59A8)
/* 7AB98 80079F98 D42259A8 */  ldc1       $f2, %lo(D_800D59A8)($at)
/* 7AB9C 80079F9C 46220002 */  mul.d      $f0, $f0, $f2
/* 7ABA0 80079FA0 3C01800D */  lui        $at, %hi(D_800D59B0)
/* 7ABA4 80079FA4 D42259B0 */  ldc1       $f2, %lo(D_800D59B0)($at)
/* 7ABA8 80079FA8 46220000 */  add.d      $f0, $f0, $f2
/* 7ABAC 80079FAC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7ABB0 80079FB0 46220002 */  mul.d      $f0, $f0, $f2
/* 7ABB4 80079FB4 03E00008 */  jr         $ra
/* 7ABB8 80079FB8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80079FBC
/* 7ABBC 80079FBC 3C01800D */  lui        $at, %hi(D_800D59B8)
/* 7ABC0 80079FC0 D42C59B8 */  ldc1       $f12, %lo(D_800D59B8)($at)
/* 7ABC4 80079FC4 3C01800D */  lui        $at, %hi(D_800D59C0)
/* 7ABC8 80079FC8 D42059C0 */  ldc1       $f0, %lo(D_800D59C0)($at)
/* 7ABCC 80079FCC 3C01800D */  lui        $at, %hi(D_800D59C8)
/* 7ABD0 80079FD0 D42259C8 */  ldc1       $f2, %lo(D_800D59C8)($at)
/* 7ABD4 80079FD4 3C01800D */  lui        $at, %hi(D_800D59D0)
/* 7ABD8 80079FD8 D42459D0 */  ldc1       $f4, %lo(D_800D59D0)($at)
/* 7ABDC 80079FDC 3C01800D */  lui        $at, %hi(D_800D59D8)
/* 7ABE0 80079FE0 D42659D8 */  ldc1       $f6, %lo(D_800D59D8)($at)
/* 7ABE4 80079FE4 3C01800D */  lui        $at, %hi(D_800D59E0)
/* 7ABE8 80079FE8 D42859E0 */  ldc1       $f8, %lo(D_800D59E0)($at)
/* 7ABEC 80079FEC 3C01800D */  lui        $at, %hi(D_800D59E8)
/* 7ABF0 80079FF0 D42A59E8 */  ldc1       $f10, %lo(D_800D59E8)($at)
/* 7ABF4 80079FF4 3C01800D */  lui        $at, %hi(D_800D59F0)
/* 7ABF8 80079FF8 D42E59F0 */  ldc1       $f14, %lo(D_800D59F0)($at)
/* 7ABFC 80079FFC 3C01800D */  lui        $at, %hi(D_800D59F8)
/* 7AC00 8007A000 D43059F8 */  ldc1       $f16, %lo(D_800D59F8)($at)
/* 7AC04 8007A004 3C01800D */  lui        $at, %hi(D_800D5A00)
/* 7AC08 8007A008 D4325A00 */  ldc1       $f18, %lo(D_800D5A00)($at)
/* 7AC0C 8007A00C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7AC10 8007A010 F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 7AC14 8007A014 3C01800D */  lui        $at, %hi(D_800D5A08)
/* 7AC18 8007A018 D43A5A08 */  ldc1       $f26, %lo(D_800D5A08)($at)
/* 7AC1C 8007A01C F7BC0050 */  sdc1       $f28, 0x50($sp)
/* 7AC20 8007A020 3C01800D */  lui        $at, %hi(D_800D5A10)
/* 7AC24 8007A024 D43C5A10 */  ldc1       $f28, %lo(D_800D5A10)($at)
/* 7AC28 8007A028 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 7AC2C 8007A02C 3C01800D */  lui        $at, %hi(D_800D5A18)
/* 7AC30 8007A030 D4385A18 */  ldc1       $f24, %lo(D_800D5A18)($at)
/* 7AC34 8007A034 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 7AC38 8007A038 3C01800D */  lui        $at, %hi(D_800D5A20)
/* 7AC3C 8007A03C D4365A20 */  ldc1       $f22, %lo(D_800D5A20)($at)
/* 7AC40 8007A040 AFB50024 */  sw         $s5, 0x24($sp)
/* 7AC44 8007A044 AFB40020 */  sw         $s4, 0x20($sp)
/* 7AC48 8007A048 3C01800D */  lui        $at, %hi(D_800D5A28)
/* 7AC4C 8007A04C 8C345A28 */  lw         $s4, %lo(D_800D5A28)($at)
/* 7AC50 8007A050 8C355A2C */  lw         $s5, %lo(D_800D5A2C)($at)
/* 7AC54 8007A054 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 7AC58 8007A058 3C01800D */  lui        $at, %hi(D_800D5A30)
/* 7AC5C 8007A05C D4345A30 */  ldc1       $f20, %lo(D_800D5A30)($at)
/* 7AC60 8007A060 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7AC64 8007A064 AFB20018 */  sw         $s2, 0x18($sp)
/* 7AC68 8007A068 3C01800D */  lui        $at, %hi(D_800D5A38)
/* 7AC6C 8007A06C 8C325A38 */  lw         $s2, %lo(D_800D5A38)($at)
/* 7AC70 8007A070 8C335A3C */  lw         $s3, %lo(D_800D5A3C)($at)
/* 7AC74 8007A074 F7BE0058 */  sdc1       $f30, 0x58($sp)
/* 7AC78 8007A078 3C01800D */  lui        $at, %hi(D_800D5A40)
/* 7AC7C 8007A07C D43E5A40 */  ldc1       $f30, %lo(D_800D5A40)($at)
/* 7AC80 8007A080 3C01800D */  lui        $at, %hi(D_800D5A48)
/* 7AC84 8007A084 8C225A48 */  lw         $v0, %lo(D_800D5A48)($at)
/* 7AC88 8007A088 8C235A4C */  lw         $v1, %lo(D_800D5A4C)($at)
/* 7AC8C 8007A08C 3C01800D */  lui        $at, %hi(D_800D5A50)
/* 7AC90 8007A090 8C245A50 */  lw         $a0, %lo(D_800D5A50)($at)
/* 7AC94 8007A094 8C255A54 */  lw         $a1, %lo(D_800D5A54)($at)
/* 7AC98 8007A098 AFB10014 */  sw         $s1, 0x14($sp)
/* 7AC9C 8007A09C AFB00010 */  sw         $s0, 0x10($sp)
/* 7ACA0 8007A0A0 3C01800D */  lui        $at, %hi(D_800D5A58)
/* 7ACA4 8007A0A4 8C305A58 */  lw         $s0, %lo(D_800D5A58)($at)
/* 7ACA8 8007A0A8 8C315A5C */  lw         $s1, %lo(D_800D5A5C)($at)
/* 7ACAC 8007A0AC 3C01800D */  lui        $at, %hi(D_800D5A60)
/* 7ACB0 8007A0B0 8C265A60 */  lw         $a2, %lo(D_800D5A60)($at)
/* 7ACB4 8007A0B4 8C275A64 */  lw         $a3, %lo(D_800D5A64)($at)
/* 7ACB8 8007A0B8 3C01800D */  lui        $at, %hi(D_800D5A68)
/* 7ACBC 8007A0BC 8C285A68 */  lw         $t0, %lo(D_800D5A68)($at)
/* 7ACC0 8007A0C0 8C295A6C */  lw         $t1, %lo(D_800D5A6C)($at)
/* 7ACC4 8007A0C4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 7ACC8 8007A0C8 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7ACCC 8007A0CC F42069E0 */  sdc1       $f0, %lo(D_800C69E0)($at)
/* 7ACD0 8007A0D0 3C01800C */  lui        $at, %hi(D_800C69E8)
/* 7ACD4 8007A0D4 F42269E8 */  sdc1       $f2, %lo(D_800C69E8)($at)
/* 7ACD8 8007A0D8 3C01800C */  lui        $at, %hi(D_800C69F0)
/* 7ACDC 8007A0DC F42469F0 */  sdc1       $f4, %lo(D_800C69F0)($at)
/* 7ACE0 8007A0E0 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 7ACE4 8007A0E4 F42669F8 */  sdc1       $f6, %lo(D_800C69F8)($at)
/* 7ACE8 8007A0E8 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 7ACEC 8007A0EC F4286A00 */  sdc1       $f8, %lo(D_800C6A00)($at)
/* 7ACF0 8007A0F0 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 7ACF4 8007A0F4 F42A6A08 */  sdc1       $f10, %lo(D_800C6A08)($at)
/* 7ACF8 8007A0F8 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7ACFC 8007A0FC F42E6A10 */  sdc1       $f14, %lo(D_800C6A10)($at)
/* 7AD00 8007A100 3C01800C */  lui        $at, %hi(D_800C6A18)
/* 7AD04 8007A104 F4306A18 */  sdc1       $f16, %lo(D_800C6A18)($at)
/* 7AD08 8007A108 3C01800C */  lui        $at, %hi(D_800C6A20)
/* 7AD0C 8007A10C F4326A20 */  sdc1       $f18, %lo(D_800C6A20)($at)
/* 7AD10 8007A110 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 7AD14 8007A114 F43A6A28 */  sdc1       $f26, %lo(D_800C6A28)($at)
/* 7AD18 8007A118 3C01800C */  lui        $at, %hi(D_800C6A30)
/* 7AD1C 8007A11C F43C6A30 */  sdc1       $f28, %lo(D_800C6A30)($at)
/* 7AD20 8007A120 3C01800C */  lui        $at, %hi(D_800C6A58)
/* 7AD24 8007A124 F4386A58 */  sdc1       $f24, %lo(D_800C6A58)($at)
/* 7AD28 8007A128 3C01800C */  lui        $at, %hi(D_800C6A60)
/* 7AD2C 8007A12C F4366A60 */  sdc1       $f22, %lo(D_800C6A60)($at)
/* 7AD30 8007A130 3C01800C */  lui        $at, %hi(D_800C6A68)
/* 7AD34 8007A134 AC346A68 */  sw         $s4, %lo(D_800C6A68)($at)
/* 7AD38 8007A138 3C01800C */  lui        $at, %hi(D_800C6A6C)
/* 7AD3C 8007A13C AC356A6C */  sw         $s5, %lo(D_800C6A6C)($at)
/* 7AD40 8007A140 3C01800C */  lui        $at, %hi(D_800C6A70)
/* 7AD44 8007A144 F4346A70 */  sdc1       $f20, %lo(D_800C6A70)($at)
/* 7AD48 8007A148 3C01800C */  lui        $at, %hi(D_800C6A78)
/* 7AD4C 8007A14C AC326A78 */  sw         $s2, %lo(D_800C6A78)($at)
/* 7AD50 8007A150 3C01800C */  lui        $at, %hi(D_800C6A7C)
/* 7AD54 8007A154 AC336A7C */  sw         $s3, %lo(D_800C6A7C)($at)
/* 7AD58 8007A158 3C01800C */  lui        $at, %hi(D_800C6A80)
/* 7AD5C 8007A15C F43E6A80 */  sdc1       $f30, %lo(D_800C6A80)($at)
/* 7AD60 8007A160 3C01800C */  lui        $at, %hi(D_800C6A88)
/* 7AD64 8007A164 AC226A88 */  sw         $v0, %lo(D_800C6A88)($at)
/* 7AD68 8007A168 3C01800C */  lui        $at, %hi(D_800C6A8C)
/* 7AD6C 8007A16C AC236A8C */  sw         $v1, %lo(D_800C6A8C)($at)
/* 7AD70 8007A170 3C01800C */  lui        $at, %hi(D_800C6A90)
/* 7AD74 8007A174 F4386A90 */  sdc1       $f24, %lo(D_800C6A90)($at)
/* 7AD78 8007A178 3C01800C */  lui        $at, %hi(D_800C6A98)
/* 7AD7C 8007A17C AC246A98 */  sw         $a0, %lo(D_800C6A98)($at)
/* 7AD80 8007A180 3C01800C */  lui        $at, %hi(D_800C6A9C)
/* 7AD84 8007A184 AC256A9C */  sw         $a1, %lo(D_800C6A9C)($at)
/* 7AD88 8007A188 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7AD8C 8007A18C AC306AA0 */  sw         $s0, %lo(D_800C6AA0)($at)
/* 7AD90 8007A190 3C01800C */  lui        $at, %hi(D_800C6AA4)
/* 7AD94 8007A194 AC316AA4 */  sw         $s1, %lo(D_800C6AA4)($at)
/* 7AD98 8007A198 3C01800C */  lui        $at, %hi(D_800C6AA8)
/* 7AD9C 8007A19C AC266AA8 */  sw         $a2, %lo(D_800C6AA8)($at)
/* 7ADA0 8007A1A0 3C01800C */  lui        $at, %hi(D_800C6AAC)
/* 7ADA4 8007A1A4 AC276AAC */  sw         $a3, %lo(D_800C6AAC)($at)
/* 7ADA8 8007A1A8 3C01800C */  lui        $at, %hi(D_800C6AB0)
/* 7ADAC 8007A1AC F4346AB0 */  sdc1       $f20, %lo(D_800C6AB0)($at)
/* 7ADB0 8007A1B0 3C01800C */  lui        $at, %hi(D_800C6AB8)
/* 7ADB4 8007A1B4 AC286AB8 */  sw         $t0, %lo(D_800C6AB8)($at)
/* 7ADB8 8007A1B8 3C01800C */  lui        $at, %hi(D_800C6ABC)
/* 7ADBC 8007A1BC 0C01E6E4 */  jal        func_80079B90
/* 7ADC0 8007A1C0 AC296ABC */   sw        $t1, %lo(D_800C6ABC)($at)
/* 7ADC4 8007A1C4 3C01800D */  lui        $at, %hi(D_800D5A70)
/* 7ADC8 8007A1C8 D4225A70 */  ldc1       $f2, %lo(D_800D5A70)($at)
/* 7ADCC 8007A1CC 46201083 */  div.d      $f2, $f2, $f0
/* 7ADD0 8007A1D0 46221082 */  mul.d      $f2, $f2, $f2
/* 7ADD4 8007A1D4 44806000 */  mtc1       $zero, $f12
/* 7ADD8 8007A1D8 44806800 */  mtc1       $zero, $f13
/* 7ADDC 8007A1DC 3C01800C */  lui        $at, %hi(D_800C6AC0)
/* 7ADE0 8007A1E0 0C01E6E4 */  jal        func_80079B90
/* 7ADE4 8007A1E4 F4226AC0 */   sdc1      $f2, %lo(D_800C6AC0)($at)
/* 7ADE8 8007A1E8 3C01800D */  lui        $at, %hi(D_800D5A78)
/* 7ADEC 8007A1EC D42C5A78 */  ldc1       $f12, %lo(D_800D5A78)($at)
/* 7ADF0 8007A1F0 3C01800D */  lui        $at, %hi(D_800D5A80)
/* 7ADF4 8007A1F4 D4225A80 */  ldc1       $f2, %lo(D_800D5A80)($at)
/* 7ADF8 8007A1F8 3C01800D */  lui        $at, %hi(D_800D5A88)
/* 7ADFC 8007A1FC D4245A88 */  ldc1       $f4, %lo(D_800D5A88)($at)
/* 7AE00 8007A200 3C01800D */  lui        $at, %hi(D_800D5A90)
/* 7AE04 8007A204 D4265A90 */  ldc1       $f6, %lo(D_800D5A90)($at)
/* 7AE08 8007A208 3C01800D */  lui        $at, %hi(D_800D5A98)
/* 7AE0C 8007A20C D4285A98 */  ldc1       $f8, %lo(D_800D5A98)($at)
/* 7AE10 8007A210 3C01800C */  lui        $at, %hi(D_800C6AC8)
/* 7AE14 8007A214 F4206AC8 */  sdc1       $f0, %lo(D_800C6AC8)($at)
/* 7AE18 8007A218 3C01800C */  lui        $at, %hi(D_800C6AD0)
/* 7AE1C 8007A21C AC306AD0 */  sw         $s0, %lo(D_800C6AD0)($at)
/* 7AE20 8007A220 3C01800C */  lui        $at, %hi(D_800C6AD4)
/* 7AE24 8007A224 AC316AD4 */  sw         $s1, %lo(D_800C6AD4)($at)
/* 7AE28 8007A228 3C01800C */  lui        $at, %hi(D_800C6AD8)
/* 7AE2C 8007A22C F4366AD8 */  sdc1       $f22, %lo(D_800C6AD8)($at)
/* 7AE30 8007A230 3C01800C */  lui        $at, %hi(D_800C6AE8)
/* 7AE34 8007A234 F4366AE8 */  sdc1       $f22, %lo(D_800C6AE8)($at)
/* 7AE38 8007A238 3C01800C */  lui        $at, %hi(D_800C6AF0)
/* 7AE3C 8007A23C F4386AF0 */  sdc1       $f24, %lo(D_800C6AF0)($at)
/* 7AE40 8007A240 3C01800C */  lui        $at, %hi(D_800C6B10)
/* 7AE44 8007A244 AC346B10 */  sw         $s4, %lo(D_800C6B10)($at)
/* 7AE48 8007A248 3C01800C */  lui        $at, %hi(D_800C6B14)
/* 7AE4C 8007A24C AC356B14 */  sw         $s5, %lo(D_800C6B14)($at)
/* 7AE50 8007A250 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7AE54 8007A254 AC326B18 */  sw         $s2, %lo(D_800C6B18)($at)
/* 7AE58 8007A258 3C01800C */  lui        $at, %hi(D_800C6B1C)
/* 7AE5C 8007A25C AC336B1C */  sw         $s3, %lo(D_800C6B1C)($at)
/* 7AE60 8007A260 3C01800C */  lui        $at, %hi(D_800C6AE0)
/* 7AE64 8007A264 F4226AE0 */  sdc1       $f2, %lo(D_800C6AE0)($at)
/* 7AE68 8007A268 3C01800C */  lui        $at, %hi(D_800C6AF8)
/* 7AE6C 8007A26C F4246AF8 */  sdc1       $f4, %lo(D_800C6AF8)($at)
/* 7AE70 8007A270 3C01800C */  lui        $at, %hi(D_800C6B00)
/* 7AE74 8007A274 F4266B00 */  sdc1       $f6, %lo(D_800C6B00)($at)
/* 7AE78 8007A278 3C01800C */  lui        $at, %hi(D_800C6B08)
/* 7AE7C 8007A27C 0C026EFC */  jal        func_8009BBF0
/* 7AE80 8007A280 F4286B08 */   sdc1      $f8, %lo(D_800C6B08)($at)
/* 7AE84 8007A284 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7AE88 8007A288 D4226B18 */  ldc1       $f2, %lo(D_800C6B18)($at)
/* 7AE8C 8007A28C 46220003 */  div.d      $f0, $f0, $f2
/* 7AE90 8007A290 3C01800D */  lui        $at, %hi(D_800D5AA0)
/* 7AE94 8007A294 D4245AA0 */  ldc1       $f4, %lo(D_800D5AA0)($at)
/* 7AE98 8007A298 3C01800D */  lui        $at, %hi(D_800D5AA8)
/* 7AE9C 8007A29C D4225AA8 */  ldc1       $f2, %lo(D_800D5AA8)($at)
/* 7AEA0 8007A2A0 3C01800C */  lui        $at, %hi(D_800C6B28)
/* 7AEA4 8007A2A4 F4346B28 */  sdc1       $f20, %lo(D_800C6B28)($at)
/* 7AEA8 8007A2A8 3C01800C */  lui        $at, %hi(D_800C6B38)
/* 7AEAC 8007A2AC F4346B38 */  sdc1       $f20, %lo(D_800C6B38)($at)
/* 7AEB0 8007A2B0 3C01800C */  lui        $at, %hi(D_800C6B40)
/* 7AEB4 8007A2B4 F4246B40 */  sdc1       $f4, %lo(D_800C6B40)($at)
/* 7AEB8 8007A2B8 3C01800C */  lui        $at, %hi(D_800C6B30)
/* 7AEBC 8007A2BC F4226B30 */  sdc1       $f2, %lo(D_800C6B30)($at)
/* 7AEC0 8007A2C0 3C01800C */  lui        $at, %hi(D_800C6B20)
/* 7AEC4 8007A2C4 F4206B20 */  sdc1       $f0, %lo(D_800C6B20)($at)
/* 7AEC8 8007A2C8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 7AECC 8007A2CC 8FB50024 */  lw         $s5, 0x24($sp)
/* 7AED0 8007A2D0 8FB40020 */  lw         $s4, 0x20($sp)
/* 7AED4 8007A2D4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7AED8 8007A2D8 8FB20018 */  lw         $s2, 0x18($sp)
/* 7AEDC 8007A2DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 7AEE0 8007A2E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 7AEE4 8007A2E4 D7BE0058 */  ldc1       $f30, 0x58($sp)
/* 7AEE8 8007A2E8 D7BC0050 */  ldc1       $f28, 0x50($sp)
/* 7AEEC 8007A2EC D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 7AEF0 8007A2F0 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 7AEF4 8007A2F4 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 7AEF8 8007A2F8 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 7AEFC 8007A2FC 03E00008 */  jr         $ra
/* 7AF00 8007A300 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8007A304
/* 7AF04 8007A304 3C01800D */  lui        $at, %hi(D_800D5AC0)
/* 7AF08 8007A308 D42C5AC0 */  ldc1       $f12, %lo(D_800D5AC0)($at)
/* 7AF0C 8007A30C 3C01800D */  lui        $at, %hi(D_800D5AC8)
/* 7AF10 8007A310 D4205AC8 */  ldc1       $f0, %lo(D_800D5AC8)($at)
/* 7AF14 8007A314 3C01800D */  lui        $at, %hi(D_800D5AD0)
/* 7AF18 8007A318 D4225AD0 */  ldc1       $f2, %lo(D_800D5AD0)($at)
/* 7AF1C 8007A31C 3C01800D */  lui        $at, %hi(D_800D5AD8)
/* 7AF20 8007A320 D4245AD8 */  ldc1       $f4, %lo(D_800D5AD8)($at)
/* 7AF24 8007A324 3C01800D */  lui        $at, %hi(D_800D5AE0)
/* 7AF28 8007A328 D4265AE0 */  ldc1       $f6, %lo(D_800D5AE0)($at)
/* 7AF2C 8007A32C 3C01800D */  lui        $at, %hi(D_800D5AE8)
/* 7AF30 8007A330 D4285AE8 */  ldc1       $f8, %lo(D_800D5AE8)($at)
/* 7AF34 8007A334 3C01800D */  lui        $at, %hi(D_800D5AF0)
/* 7AF38 8007A338 D42A5AF0 */  ldc1       $f10, %lo(D_800D5AF0)($at)
/* 7AF3C 8007A33C 3C01800D */  lui        $at, %hi(D_800D5AF8)
/* 7AF40 8007A340 D42E5AF8 */  ldc1       $f14, %lo(D_800D5AF8)($at)
/* 7AF44 8007A344 3C01800D */  lui        $at, %hi(D_800D5B00)
/* 7AF48 8007A348 D4305B00 */  ldc1       $f16, %lo(D_800D5B00)($at)
/* 7AF4C 8007A34C 3C01800D */  lui        $at, %hi(D_800D5B08)
/* 7AF50 8007A350 D4325B08 */  ldc1       $f18, %lo(D_800D5B08)($at)
/* 7AF54 8007A354 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7AF58 8007A358 F7B80040 */  sdc1       $f24, 0x40($sp)
/* 7AF5C 8007A35C 3C01800D */  lui        $at, %hi(D_800D5B10)
/* 7AF60 8007A360 D4385B10 */  ldc1       $f24, %lo(D_800D5B10)($at)
/* 7AF64 8007A364 F7BA0048 */  sdc1       $f26, 0x48($sp)
/* 7AF68 8007A368 3C01800D */  lui        $at, %hi(D_800D5B18)
/* 7AF6C 8007A36C D43A5B18 */  ldc1       $f26, %lo(D_800D5B18)($at)
/* 7AF70 8007A370 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 7AF74 8007A374 3C01800D */  lui        $at, %hi(D_800D5B20)
/* 7AF78 8007A378 D4365B20 */  ldc1       $f22, %lo(D_800D5B20)($at)
/* 7AF7C 8007A37C AFB10014 */  sw         $s1, 0x14($sp)
/* 7AF80 8007A380 AFB00010 */  sw         $s0, 0x10($sp)
/* 7AF84 8007A384 3C01800D */  lui        $at, %hi(D_800D5B28)
/* 7AF88 8007A388 8C305B28 */  lw         $s0, %lo(D_800D5B28)($at)
/* 7AF8C 8007A38C 8C315B2C */  lw         $s1, %lo(D_800D5B2C)($at)
/* 7AF90 8007A390 AFB50024 */  sw         $s5, 0x24($sp)
/* 7AF94 8007A394 AFB40020 */  sw         $s4, 0x20($sp)
/* 7AF98 8007A398 3C01800D */  lui        $at, %hi(D_800D5B30)
/* 7AF9C 8007A39C 8C345B30 */  lw         $s4, %lo(D_800D5B30)($at)
/* 7AFA0 8007A3A0 8C355B34 */  lw         $s5, %lo(D_800D5B34)($at)
/* 7AFA4 8007A3A4 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 7AFA8 8007A3A8 3C01800D */  lui        $at, %hi(D_800D5B38)
/* 7AFAC 8007A3AC D4345B38 */  ldc1       $f20, %lo(D_800D5B38)($at)
/* 7AFB0 8007A3B0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7AFB4 8007A3B4 AFB20018 */  sw         $s2, 0x18($sp)
/* 7AFB8 8007A3B8 3C01800D */  lui        $at, %hi(D_800D5B40)
/* 7AFBC 8007A3BC 8C325B40 */  lw         $s2, %lo(D_800D5B40)($at)
/* 7AFC0 8007A3C0 8C335B44 */  lw         $s3, %lo(D_800D5B44)($at)
/* 7AFC4 8007A3C4 F7BC0050 */  sdc1       $f28, 0x50($sp)
/* 7AFC8 8007A3C8 3C01800D */  lui        $at, %hi(D_800D5B48)
/* 7AFCC 8007A3CC D43C5B48 */  ldc1       $f28, %lo(D_800D5B48)($at)
/* 7AFD0 8007A3D0 F7BE0058 */  sdc1       $f30, 0x58($sp)
/* 7AFD4 8007A3D4 3C01800D */  lui        $at, %hi(D_800D5B50)
/* 7AFD8 8007A3D8 D43E5B50 */  ldc1       $f30, %lo(D_800D5B50)($at)
/* 7AFDC 8007A3DC 3C01800D */  lui        $at, %hi(D_800D5B58)
/* 7AFE0 8007A3E0 8C225B58 */  lw         $v0, %lo(D_800D5B58)($at)
/* 7AFE4 8007A3E4 8C235B5C */  lw         $v1, %lo(D_800D5B5C)($at)
/* 7AFE8 8007A3E8 3C01800D */  lui        $at, %hi(D_800D5B60)
/* 7AFEC 8007A3EC 8C245B60 */  lw         $a0, %lo(D_800D5B60)($at)
/* 7AFF0 8007A3F0 8C255B64 */  lw         $a1, %lo(D_800D5B64)($at)
/* 7AFF4 8007A3F4 3C01800D */  lui        $at, %hi(D_800D5B68)
/* 7AFF8 8007A3F8 8C265B68 */  lw         $a2, %lo(D_800D5B68)($at)
/* 7AFFC 8007A3FC 8C275B6C */  lw         $a3, %lo(D_800D5B6C)($at)
/* 7B000 8007A400 3C01800D */  lui        $at, %hi(D_800D5B70)
/* 7B004 8007A404 8C285B70 */  lw         $t0, %lo(D_800D5B70)($at)
/* 7B008 8007A408 8C295B74 */  lw         $t1, %lo(D_800D5B74)($at)
/* 7B00C 8007A40C AFBF0028 */  sw         $ra, 0x28($sp)
/* 7B010 8007A410 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7B014 8007A414 F42069E0 */  sdc1       $f0, %lo(D_800C69E0)($at)
/* 7B018 8007A418 3C01800C */  lui        $at, %hi(D_800C69E8)
/* 7B01C 8007A41C F42269E8 */  sdc1       $f2, %lo(D_800C69E8)($at)
/* 7B020 8007A420 3C01800C */  lui        $at, %hi(D_800C69F0)
/* 7B024 8007A424 F42469F0 */  sdc1       $f4, %lo(D_800C69F0)($at)
/* 7B028 8007A428 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 7B02C 8007A42C F42669F8 */  sdc1       $f6, %lo(D_800C69F8)($at)
/* 7B030 8007A430 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 7B034 8007A434 F4286A00 */  sdc1       $f8, %lo(D_800C6A00)($at)
/* 7B038 8007A438 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 7B03C 8007A43C F42A6A08 */  sdc1       $f10, %lo(D_800C6A08)($at)
/* 7B040 8007A440 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7B044 8007A444 F42E6A10 */  sdc1       $f14, %lo(D_800C6A10)($at)
/* 7B048 8007A448 3C01800C */  lui        $at, %hi(D_800C6A18)
/* 7B04C 8007A44C F4306A18 */  sdc1       $f16, %lo(D_800C6A18)($at)
/* 7B050 8007A450 3C01800C */  lui        $at, %hi(D_800C6A20)
/* 7B054 8007A454 F4326A20 */  sdc1       $f18, %lo(D_800C6A20)($at)
/* 7B058 8007A458 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 7B05C 8007A45C F4386A28 */  sdc1       $f24, %lo(D_800C6A28)($at)
/* 7B060 8007A460 3C01800C */  lui        $at, %hi(D_800C6A30)
/* 7B064 8007A464 F43A6A30 */  sdc1       $f26, %lo(D_800C6A30)($at)
/* 7B068 8007A468 3C01800C */  lui        $at, %hi(D_800C6A58)
/* 7B06C 8007A46C F4366A58 */  sdc1       $f22, %lo(D_800C6A58)($at)
/* 7B070 8007A470 3C01800C */  lui        $at, %hi(D_800C6A60)
/* 7B074 8007A474 AC306A60 */  sw         $s0, %lo(D_800C6A60)($at)
/* 7B078 8007A478 3C01800C */  lui        $at, %hi(D_800C6A64)
/* 7B07C 8007A47C AC316A64 */  sw         $s1, %lo(D_800C6A64)($at)
/* 7B080 8007A480 3C01800C */  lui        $at, %hi(D_800C6A68)
/* 7B084 8007A484 AC346A68 */  sw         $s4, %lo(D_800C6A68)($at)
/* 7B088 8007A488 3C01800C */  lui        $at, %hi(D_800C6A6C)
/* 7B08C 8007A48C AC356A6C */  sw         $s5, %lo(D_800C6A6C)($at)
/* 7B090 8007A490 3C01800C */  lui        $at, %hi(D_800C6A70)
/* 7B094 8007A494 F4346A70 */  sdc1       $f20, %lo(D_800C6A70)($at)
/* 7B098 8007A498 3C01800C */  lui        $at, %hi(D_800C6A78)
/* 7B09C 8007A49C AC326A78 */  sw         $s2, %lo(D_800C6A78)($at)
/* 7B0A0 8007A4A0 3C01800C */  lui        $at, %hi(D_800C6A7C)
/* 7B0A4 8007A4A4 AC336A7C */  sw         $s3, %lo(D_800C6A7C)($at)
/* 7B0A8 8007A4A8 3C01800C */  lui        $at, %hi(D_800C6A80)
/* 7B0AC 8007A4AC F43C6A80 */  sdc1       $f28, %lo(D_800C6A80)($at)
/* 7B0B0 8007A4B0 3C01800C */  lui        $at, %hi(D_800C6A88)
/* 7B0B4 8007A4B4 F43E6A88 */  sdc1       $f30, %lo(D_800C6A88)($at)
/* 7B0B8 8007A4B8 3C01800C */  lui        $at, %hi(D_800C6A90)
/* 7B0BC 8007A4BC F4366A90 */  sdc1       $f22, %lo(D_800C6A90)($at)
/* 7B0C0 8007A4C0 3C01800C */  lui        $at, %hi(D_800C6A98)
/* 7B0C4 8007A4C4 AC226A98 */  sw         $v0, %lo(D_800C6A98)($at)
/* 7B0C8 8007A4C8 3C01800C */  lui        $at, %hi(D_800C6A9C)
/* 7B0CC 8007A4CC AC236A9C */  sw         $v1, %lo(D_800C6A9C)($at)
/* 7B0D0 8007A4D0 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7B0D4 8007A4D4 AC246AA0 */  sw         $a0, %lo(D_800C6AA0)($at)
/* 7B0D8 8007A4D8 3C01800C */  lui        $at, %hi(D_800C6AA4)
/* 7B0DC 8007A4DC AC256AA4 */  sw         $a1, %lo(D_800C6AA4)($at)
/* 7B0E0 8007A4E0 3C01800C */  lui        $at, %hi(D_800C6AA8)
/* 7B0E4 8007A4E4 AC266AA8 */  sw         $a2, %lo(D_800C6AA8)($at)
/* 7B0E8 8007A4E8 3C01800C */  lui        $at, %hi(D_800C6AAC)
/* 7B0EC 8007A4EC AC276AAC */  sw         $a3, %lo(D_800C6AAC)($at)
/* 7B0F0 8007A4F0 3C01800C */  lui        $at, %hi(D_800C6AB0)
/* 7B0F4 8007A4F4 F4346AB0 */  sdc1       $f20, %lo(D_800C6AB0)($at)
/* 7B0F8 8007A4F8 3C01800C */  lui        $at, %hi(D_800C6AB8)
/* 7B0FC 8007A4FC AC286AB8 */  sw         $t0, %lo(D_800C6AB8)($at)
/* 7B100 8007A500 3C01800C */  lui        $at, %hi(D_800C6ABC)
/* 7B104 8007A504 0C01E6E4 */  jal        func_80079B90
/* 7B108 8007A508 AC296ABC */   sw        $t1, %lo(D_800C6ABC)($at)
/* 7B10C 8007A50C 3C01800D */  lui        $at, %hi(D_800D5B78)
/* 7B110 8007A510 D4225B78 */  ldc1       $f2, %lo(D_800D5B78)($at)
/* 7B114 8007A514 46201083 */  div.d      $f2, $f2, $f0
/* 7B118 8007A518 46221082 */  mul.d      $f2, $f2, $f2
/* 7B11C 8007A51C 44806000 */  mtc1       $zero, $f12
/* 7B120 8007A520 44806800 */  mtc1       $zero, $f13
/* 7B124 8007A524 3C01800C */  lui        $at, %hi(D_800C6AC0)
/* 7B128 8007A528 0C01E6E4 */  jal        func_80079B90
/* 7B12C 8007A52C F4226AC0 */   sdc1      $f2, %lo(D_800C6AC0)($at)
/* 7B130 8007A530 3C01800D */  lui        $at, %hi(D_800D5B80)
/* 7B134 8007A534 D42C5B80 */  ldc1       $f12, %lo(D_800D5B80)($at)
/* 7B138 8007A538 3C01800D */  lui        $at, %hi(D_800D5B88)
/* 7B13C 8007A53C D4225B88 */  ldc1       $f2, %lo(D_800D5B88)($at)
/* 7B140 8007A540 3C01800D */  lui        $at, %hi(D_800D5B90)
/* 7B144 8007A544 D4245B90 */  ldc1       $f4, %lo(D_800D5B90)($at)
/* 7B148 8007A548 3C01800D */  lui        $at, %hi(D_800D5B98)
/* 7B14C 8007A54C D4265B98 */  ldc1       $f6, %lo(D_800D5B98)($at)
/* 7B150 8007A550 3C01800D */  lui        $at, %hi(D_800D5BA0)
/* 7B154 8007A554 D4285BA0 */  ldc1       $f8, %lo(D_800D5BA0)($at)
/* 7B158 8007A558 3C01800D */  lui        $at, %hi(D_800D5BA8)
/* 7B15C 8007A55C D42A5BA8 */  ldc1       $f10, %lo(D_800D5BA8)($at)
/* 7B160 8007A560 3C01800D */  lui        $at, %hi(D_800D5BB0)
/* 7B164 8007A564 D42E5BB0 */  ldc1       $f14, %lo(D_800D5BB0)($at)
/* 7B168 8007A568 3C01800C */  lui        $at, %hi(D_800C6AC8)
/* 7B16C 8007A56C F4206AC8 */  sdc1       $f0, %lo(D_800C6AC8)($at)
/* 7B170 8007A570 3C01800C */  lui        $at, %hi(D_800C6AE8)
/* 7B174 8007A574 AC306AE8 */  sw         $s0, %lo(D_800C6AE8)($at)
/* 7B178 8007A578 3C01800C */  lui        $at, %hi(D_800C6AEC)
/* 7B17C 8007A57C AC316AEC */  sw         $s1, %lo(D_800C6AEC)($at)
/* 7B180 8007A580 3C01800C */  lui        $at, %hi(D_800C6AF0)
/* 7B184 8007A584 F4366AF0 */  sdc1       $f22, %lo(D_800C6AF0)($at)
/* 7B188 8007A588 3C01800C */  lui        $at, %hi(D_800C6B10)
/* 7B18C 8007A58C AC346B10 */  sw         $s4, %lo(D_800C6B10)($at)
/* 7B190 8007A590 3C01800C */  lui        $at, %hi(D_800C6B14)
/* 7B194 8007A594 AC356B14 */  sw         $s5, %lo(D_800C6B14)($at)
/* 7B198 8007A598 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7B19C 8007A59C AC326B18 */  sw         $s2, %lo(D_800C6B18)($at)
/* 7B1A0 8007A5A0 3C01800C */  lui        $at, %hi(D_800C6B1C)
/* 7B1A4 8007A5A4 AC336B1C */  sw         $s3, %lo(D_800C6B1C)($at)
/* 7B1A8 8007A5A8 3C01800C */  lui        $at, %hi(D_800C6AD0)
/* 7B1AC 8007A5AC F4226AD0 */  sdc1       $f2, %lo(D_800C6AD0)($at)
/* 7B1B0 8007A5B0 3C01800C */  lui        $at, %hi(D_800C6AD8)
/* 7B1B4 8007A5B4 F4246AD8 */  sdc1       $f4, %lo(D_800C6AD8)($at)
/* 7B1B8 8007A5B8 3C01800C */  lui        $at, %hi(D_800C6AE0)
/* 7B1BC 8007A5BC F4266AE0 */  sdc1       $f6, %lo(D_800C6AE0)($at)
/* 7B1C0 8007A5C0 3C01800C */  lui        $at, %hi(D_800C6AF8)
/* 7B1C4 8007A5C4 F4286AF8 */  sdc1       $f8, %lo(D_800C6AF8)($at)
/* 7B1C8 8007A5C8 3C01800C */  lui        $at, %hi(D_800C6B00)
/* 7B1CC 8007A5CC F42A6B00 */  sdc1       $f10, %lo(D_800C6B00)($at)
/* 7B1D0 8007A5D0 3C01800C */  lui        $at, %hi(D_800C6B08)
/* 7B1D4 8007A5D4 0C026EFC */  jal        func_8009BBF0
/* 7B1D8 8007A5D8 F42E6B08 */   sdc1      $f14, %lo(D_800C6B08)($at)
/* 7B1DC 8007A5DC 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7B1E0 8007A5E0 D4226B18 */  ldc1       $f2, %lo(D_800C6B18)($at)
/* 7B1E4 8007A5E4 46220003 */  div.d      $f0, $f0, $f2
/* 7B1E8 8007A5E8 3C01800D */  lui        $at, %hi(D_800D5BB8)
/* 7B1EC 8007A5EC D4245BB8 */  ldc1       $f4, %lo(D_800D5BB8)($at)
/* 7B1F0 8007A5F0 3C01800D */  lui        $at, %hi(D_800D5BC0)
/* 7B1F4 8007A5F4 D4225BC0 */  ldc1       $f2, %lo(D_800D5BC0)($at)
/* 7B1F8 8007A5F8 3C01800C */  lui        $at, %hi(D_800C6B28)
/* 7B1FC 8007A5FC F4346B28 */  sdc1       $f20, %lo(D_800C6B28)($at)
/* 7B200 8007A600 3C01800C */  lui        $at, %hi(D_800C6B38)
/* 7B204 8007A604 F4346B38 */  sdc1       $f20, %lo(D_800C6B38)($at)
/* 7B208 8007A608 3C01800C */  lui        $at, %hi(D_800C6B40)
/* 7B20C 8007A60C F4246B40 */  sdc1       $f4, %lo(D_800C6B40)($at)
/* 7B210 8007A610 3C01800C */  lui        $at, %hi(D_800C6B30)
/* 7B214 8007A614 F4226B30 */  sdc1       $f2, %lo(D_800C6B30)($at)
/* 7B218 8007A618 3C01800C */  lui        $at, %hi(D_800C6B20)
/* 7B21C 8007A61C F4206B20 */  sdc1       $f0, %lo(D_800C6B20)($at)
/* 7B220 8007A620 8FBF0028 */  lw         $ra, 0x28($sp)
/* 7B224 8007A624 8FB50024 */  lw         $s5, 0x24($sp)
/* 7B228 8007A628 8FB40020 */  lw         $s4, 0x20($sp)
/* 7B22C 8007A62C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7B230 8007A630 8FB20018 */  lw         $s2, 0x18($sp)
/* 7B234 8007A634 8FB10014 */  lw         $s1, 0x14($sp)
/* 7B238 8007A638 8FB00010 */  lw         $s0, 0x10($sp)
/* 7B23C 8007A63C D7BE0058 */  ldc1       $f30, 0x58($sp)
/* 7B240 8007A640 D7BC0050 */  ldc1       $f28, 0x50($sp)
/* 7B244 8007A644 D7BA0048 */  ldc1       $f26, 0x48($sp)
/* 7B248 8007A648 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 7B24C 8007A64C D7B60038 */  ldc1       $f22, 0x38($sp)
/* 7B250 8007A650 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 7B254 8007A654 03E00008 */  jr         $ra
/* 7B258 8007A658 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8007A65C
/* 7B25C 8007A65C 3C01800D */  lui        $at, %hi(D_800D5BD8)
/* 7B260 8007A660 D42C5BD8 */  ldc1       $f12, %lo(D_800D5BD8)($at)
/* 7B264 8007A664 3C01800D */  lui        $at, %hi(D_800D5BE0)
/* 7B268 8007A668 D4225BE0 */  ldc1       $f2, %lo(D_800D5BE0)($at)
/* 7B26C 8007A66C 3C01800D */  lui        $at, %hi(D_800D5BE8)
/* 7B270 8007A670 D4245BE8 */  ldc1       $f4, %lo(D_800D5BE8)($at)
/* 7B274 8007A674 3C01800D */  lui        $at, %hi(D_800D5BF0)
/* 7B278 8007A678 D4265BF0 */  ldc1       $f6, %lo(D_800D5BF0)($at)
/* 7B27C 8007A67C 3C01800D */  lui        $at, %hi(D_800D5BF8)
/* 7B280 8007A680 D4285BF8 */  ldc1       $f8, %lo(D_800D5BF8)($at)
/* 7B284 8007A684 3C01800D */  lui        $at, %hi(D_800D5C00)
/* 7B288 8007A688 D42A5C00 */  ldc1       $f10, %lo(D_800D5C00)($at)
/* 7B28C 8007A68C 3C01800D */  lui        $at, %hi(D_800D5C08)
/* 7B290 8007A690 D42E5C08 */  ldc1       $f14, %lo(D_800D5C08)($at)
/* 7B294 8007A694 3C01800D */  lui        $at, %hi(D_800D5C10)
/* 7B298 8007A698 D4305C10 */  ldc1       $f16, %lo(D_800D5C10)($at)
/* 7B29C 8007A69C 3C01800D */  lui        $at, %hi(D_800D5C18)
/* 7B2A0 8007A6A0 D4325C18 */  ldc1       $f18, %lo(D_800D5C18)($at)
/* 7B2A4 8007A6A4 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 7B2A8 8007A6A8 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 7B2AC 8007A6AC 3C01800D */  lui        $at, %hi(D_800D5C20)
/* 7B2B0 8007A6B0 D4365C20 */  ldc1       $f22, %lo(D_800D5C20)($at)
/* 7B2B4 8007A6B4 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 7B2B8 8007A6B8 3C01800D */  lui        $at, %hi(D_800D5C28)
/* 7B2BC 8007A6BC D4385C28 */  ldc1       $f24, %lo(D_800D5C28)($at)
/* 7B2C0 8007A6C0 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* 7B2C4 8007A6C4 3C01800D */  lui        $at, %hi(D_800D5C30)
/* 7B2C8 8007A6C8 D43A5C30 */  ldc1       $f26, %lo(D_800D5C30)($at)
/* 7B2CC 8007A6CC 3C01800D */  lui        $at, %hi(D_800D5C38)
/* 7B2D0 8007A6D0 D4205C38 */  ldc1       $f0, %lo(D_800D5C38)($at)
/* 7B2D4 8007A6D4 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* 7B2D8 8007A6D8 3C01800D */  lui        $at, %hi(D_800D5C40)
/* 7B2DC 8007A6DC D43C5C40 */  ldc1       $f28, %lo(D_800D5C40)($at)
/* 7B2E0 8007A6E0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7B2E4 8007A6E4 AFB20018 */  sw         $s2, 0x18($sp)
/* 7B2E8 8007A6E8 3C01800D */  lui        $at, %hi(D_800D5C48)
/* 7B2EC 8007A6EC 8C325C48 */  lw         $s2, %lo(D_800D5C48)($at)
/* 7B2F0 8007A6F0 8C335C4C */  lw         $s3, %lo(D_800D5C4C)($at)
/* 7B2F4 8007A6F4 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 7B2F8 8007A6F8 3C01800D */  lui        $at, %hi(D_800D5C50)
/* 7B2FC 8007A6FC D4345C50 */  ldc1       $f20, %lo(D_800D5C50)($at)
/* 7B300 8007A700 AFB10014 */  sw         $s1, 0x14($sp)
/* 7B304 8007A704 AFB00010 */  sw         $s0, 0x10($sp)
/* 7B308 8007A708 3C01800D */  lui        $at, %hi(D_800D5C58)
/* 7B30C 8007A70C 8C305C58 */  lw         $s0, %lo(D_800D5C58)($at)
/* 7B310 8007A710 8C315C5C */  lw         $s1, %lo(D_800D5C5C)($at)
/* 7B314 8007A714 F7BE0050 */  sdc1       $f30, 0x50($sp)
/* 7B318 8007A718 3C01800D */  lui        $at, %hi(D_800D5C60)
/* 7B31C 8007A71C D43E5C60 */  ldc1       $f30, %lo(D_800D5C60)($at)
/* 7B320 8007A720 3C01800D */  lui        $at, %hi(D_800D5C68)
/* 7B324 8007A724 8C225C68 */  lw         $v0, %lo(D_800D5C68)($at)
/* 7B328 8007A728 8C235C6C */  lw         $v1, %lo(D_800D5C6C)($at)
/* 7B32C 8007A72C 3C01800D */  lui        $at, %hi(D_800D5C70)
/* 7B330 8007A730 8C245C70 */  lw         $a0, %lo(D_800D5C70)($at)
/* 7B334 8007A734 8C255C74 */  lw         $a1, %lo(D_800D5C74)($at)
/* 7B338 8007A738 3C01800D */  lui        $at, %hi(D_800D5C78)
/* 7B33C 8007A73C 8C265C78 */  lw         $a2, %lo(D_800D5C78)($at)
/* 7B340 8007A740 8C275C7C */  lw         $a3, %lo(D_800D5C7C)($at)
/* 7B344 8007A744 3C01800D */  lui        $at, %hi(D_800D5C80)
/* 7B348 8007A748 8C285C80 */  lw         $t0, %lo(D_800D5C80)($at)
/* 7B34C 8007A74C 8C295C84 */  lw         $t1, %lo(D_800D5C84)($at)
/* 7B350 8007A750 3C01800D */  lui        $at, %hi(D_800D5C88)
/* 7B354 8007A754 8C2A5C88 */  lw         $t2, %lo(D_800D5C88)($at)
/* 7B358 8007A758 8C2B5C8C */  lw         $t3, %lo(D_800D5C8C)($at)
/* 7B35C 8007A75C 3C01800D */  lui        $at, %hi(D_800D5C90)
/* 7B360 8007A760 8C2C5C90 */  lw         $t4, %lo(D_800D5C90)($at)
/* 7B364 8007A764 8C2D5C94 */  lw         $t5, %lo(D_800D5C94)($at)
/* 7B368 8007A768 AFBF0020 */  sw         $ra, 0x20($sp)
/* 7B36C 8007A76C 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7B370 8007A770 F42269E0 */  sdc1       $f2, %lo(D_800C69E0)($at)
/* 7B374 8007A774 3C01800C */  lui        $at, %hi(D_800C69E8)
/* 7B378 8007A778 F42469E8 */  sdc1       $f4, %lo(D_800C69E8)($at)
/* 7B37C 8007A77C 3C01800C */  lui        $at, %hi(D_800C69F0)
/* 7B380 8007A780 F42669F0 */  sdc1       $f6, %lo(D_800C69F0)($at)
/* 7B384 8007A784 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 7B388 8007A788 F42869F8 */  sdc1       $f8, %lo(D_800C69F8)($at)
/* 7B38C 8007A78C 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 7B390 8007A790 F42A6A00 */  sdc1       $f10, %lo(D_800C6A00)($at)
/* 7B394 8007A794 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 7B398 8007A798 F42E6A08 */  sdc1       $f14, %lo(D_800C6A08)($at)
/* 7B39C 8007A79C 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7B3A0 8007A7A0 F4306A10 */  sdc1       $f16, %lo(D_800C6A10)($at)
/* 7B3A4 8007A7A4 3C01800C */  lui        $at, %hi(D_800C6A18)
/* 7B3A8 8007A7A8 F4326A18 */  sdc1       $f18, %lo(D_800C6A18)($at)
/* 7B3AC 8007A7AC 3C01800C */  lui        $at, %hi(D_800C6A20)
/* 7B3B0 8007A7B0 F4366A20 */  sdc1       $f22, %lo(D_800C6A20)($at)
/* 7B3B4 8007A7B4 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 7B3B8 8007A7B8 F4386A28 */  sdc1       $f24, %lo(D_800C6A28)($at)
/* 7B3BC 8007A7BC 3C01800C */  lui        $at, %hi(D_800C6A30)
/* 7B3C0 8007A7C0 F43A6A30 */  sdc1       $f26, %lo(D_800C6A30)($at)
/* 7B3C4 8007A7C4 3C01800C */  lui        $at, %hi(D_800C6A58)
/* 7B3C8 8007A7C8 F4206A58 */  sdc1       $f0, %lo(D_800C6A58)($at)
/* 7B3CC 8007A7CC 3C01800C */  lui        $at, %hi(D_800C6A60)
/* 7B3D0 8007A7D0 F43C6A60 */  sdc1       $f28, %lo(D_800C6A60)($at)
/* 7B3D4 8007A7D4 3C01800C */  lui        $at, %hi(D_800C6A68)
/* 7B3D8 8007A7D8 AC326A68 */  sw         $s2, %lo(D_800C6A68)($at)
/* 7B3DC 8007A7DC 3C01800C */  lui        $at, %hi(D_800C6A6C)
/* 7B3E0 8007A7E0 AC336A6C */  sw         $s3, %lo(D_800C6A6C)($at)
/* 7B3E4 8007A7E4 3C01800C */  lui        $at, %hi(D_800C6A70)
/* 7B3E8 8007A7E8 F4346A70 */  sdc1       $f20, %lo(D_800C6A70)($at)
/* 7B3EC 8007A7EC 3C01800C */  lui        $at, %hi(D_800C6A78)
/* 7B3F0 8007A7F0 AC306A78 */  sw         $s0, %lo(D_800C6A78)($at)
/* 7B3F4 8007A7F4 3C01800C */  lui        $at, %hi(D_800C6A7C)
/* 7B3F8 8007A7F8 AC316A7C */  sw         $s1, %lo(D_800C6A7C)($at)
/* 7B3FC 8007A7FC 3C01800C */  lui        $at, %hi(D_800C6A80)
/* 7B400 8007A800 F43E6A80 */  sdc1       $f30, %lo(D_800C6A80)($at)
/* 7B404 8007A804 3C01800C */  lui        $at, %hi(D_800C6A88)
/* 7B408 8007A808 AC226A88 */  sw         $v0, %lo(D_800C6A88)($at)
/* 7B40C 8007A80C 3C01800C */  lui        $at, %hi(D_800C6A8C)
/* 7B410 8007A810 AC236A8C */  sw         $v1, %lo(D_800C6A8C)($at)
/* 7B414 8007A814 3C01800C */  lui        $at, %hi(D_800C6A90)
/* 7B418 8007A818 F4206A90 */  sdc1       $f0, %lo(D_800C6A90)($at)
/* 7B41C 8007A81C 3C01800C */  lui        $at, %hi(D_800C6A98)
/* 7B420 8007A820 AC246A98 */  sw         $a0, %lo(D_800C6A98)($at)
/* 7B424 8007A824 3C01800C */  lui        $at, %hi(D_800C6A9C)
/* 7B428 8007A828 AC256A9C */  sw         $a1, %lo(D_800C6A9C)($at)
/* 7B42C 8007A82C 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7B430 8007A830 AC266AA0 */  sw         $a2, %lo(D_800C6AA0)($at)
/* 7B434 8007A834 3C01800C */  lui        $at, %hi(D_800C6AA4)
/* 7B438 8007A838 AC276AA4 */  sw         $a3, %lo(D_800C6AA4)($at)
/* 7B43C 8007A83C 3C01800C */  lui        $at, %hi(D_800C6AA8)
/* 7B440 8007A840 AC286AA8 */  sw         $t0, %lo(D_800C6AA8)($at)
/* 7B444 8007A844 3C01800C */  lui        $at, %hi(D_800C6AAC)
/* 7B448 8007A848 AC296AAC */  sw         $t1, %lo(D_800C6AAC)($at)
/* 7B44C 8007A84C 3C01800C */  lui        $at, %hi(D_800C6AB0)
/* 7B450 8007A850 AC2A6AB0 */  sw         $t2, %lo(D_800C6AB0)($at)
/* 7B454 8007A854 3C01800C */  lui        $at, %hi(D_800C6AB4)
/* 7B458 8007A858 AC2B6AB4 */  sw         $t3, %lo(D_800C6AB4)($at)
/* 7B45C 8007A85C 3C01800C */  lui        $at, %hi(D_800C6AB8)
/* 7B460 8007A860 AC2C6AB8 */  sw         $t4, %lo(D_800C6AB8)($at)
/* 7B464 8007A864 3C01800C */  lui        $at, %hi(D_800C6ABC)
/* 7B468 8007A868 0C01E6E4 */  jal        func_80079B90
/* 7B46C 8007A86C AC2D6ABC */   sw        $t5, %lo(D_800C6ABC)($at)
/* 7B470 8007A870 3C01800D */  lui        $at, %hi(D_800D5C98)
/* 7B474 8007A874 D4225C98 */  ldc1       $f2, %lo(D_800D5C98)($at)
/* 7B478 8007A878 46201083 */  div.d      $f2, $f2, $f0
/* 7B47C 8007A87C 46221082 */  mul.d      $f2, $f2, $f2
/* 7B480 8007A880 44806000 */  mtc1       $zero, $f12
/* 7B484 8007A884 44806800 */  mtc1       $zero, $f13
/* 7B488 8007A888 3C01800C */  lui        $at, %hi(D_800C6AC0)
/* 7B48C 8007A88C 0C01E6E4 */  jal        func_80079B90
/* 7B490 8007A890 F4226AC0 */   sdc1      $f2, %lo(D_800C6AC0)($at)
/* 7B494 8007A894 3C01800D */  lui        $at, %hi(D_800D5CA0)
/* 7B498 8007A898 D42C5CA0 */  ldc1       $f12, %lo(D_800D5CA0)($at)
/* 7B49C 8007A89C 3C01800D */  lui        $at, %hi(D_800D5CA8)
/* 7B4A0 8007A8A0 D4245CA8 */  ldc1       $f4, %lo(D_800D5CA8)($at)
/* 7B4A4 8007A8A4 3C01800D */  lui        $at, %hi(D_800D5CB0)
/* 7B4A8 8007A8A8 D4225CB0 */  ldc1       $f2, %lo(D_800D5CB0)($at)
/* 7B4AC 8007A8AC 3C01800D */  lui        $at, %hi(D_800D5CB8)
/* 7B4B0 8007A8B0 D4265CB8 */  ldc1       $f6, %lo(D_800D5CB8)($at)
/* 7B4B4 8007A8B4 3C01800D */  lui        $at, %hi(D_800D5CC0)
/* 7B4B8 8007A8B8 D4285CC0 */  ldc1       $f8, %lo(D_800D5CC0)($at)
/* 7B4BC 8007A8BC 3C01800D */  lui        $at, %hi(D_800D5CC8)
/* 7B4C0 8007A8C0 D42A5CC8 */  ldc1       $f10, %lo(D_800D5CC8)($at)
/* 7B4C4 8007A8C4 3C01800D */  lui        $at, %hi(D_800D5CD0)
/* 7B4C8 8007A8C8 D42E5CD0 */  ldc1       $f14, %lo(D_800D5CD0)($at)
/* 7B4CC 8007A8CC 3C01800D */  lui        $at, %hi(D_800D5CD8)
/* 7B4D0 8007A8D0 D4305CD8 */  ldc1       $f16, %lo(D_800D5CD8)($at)
/* 7B4D4 8007A8D4 3C01800C */  lui        $at, %hi(D_800C6AC8)
/* 7B4D8 8007A8D8 F4206AC8 */  sdc1       $f0, %lo(D_800C6AC8)($at)
/* 7B4DC 8007A8DC 3C01800C */  lui        $at, %hi(D_800C6B10)
/* 7B4E0 8007A8E0 AC326B10 */  sw         $s2, %lo(D_800C6B10)($at)
/* 7B4E4 8007A8E4 3C01800C */  lui        $at, %hi(D_800C6B14)
/* 7B4E8 8007A8E8 AC336B14 */  sw         $s3, %lo(D_800C6B14)($at)
/* 7B4EC 8007A8EC 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7B4F0 8007A8F0 AC306B18 */  sw         $s0, %lo(D_800C6B18)($at)
/* 7B4F4 8007A8F4 3C01800C */  lui        $at, %hi(D_800C6B1C)
/* 7B4F8 8007A8F8 AC316B1C */  sw         $s1, %lo(D_800C6B1C)($at)
/* 7B4FC 8007A8FC 3C01800C */  lui        $at, %hi(D_800C6AD0)
/* 7B500 8007A900 F4246AD0 */  sdc1       $f4, %lo(D_800C6AD0)($at)
/* 7B504 8007A904 3C01800C */  lui        $at, %hi(D_800C6AD8)
/* 7B508 8007A908 F4226AD8 */  sdc1       $f2, %lo(D_800C6AD8)($at)
/* 7B50C 8007A90C 3C01800C */  lui        $at, %hi(D_800C6AE0)
/* 7B510 8007A910 F4266AE0 */  sdc1       $f6, %lo(D_800C6AE0)($at)
/* 7B514 8007A914 3C01800C */  lui        $at, %hi(D_800C6AE8)
/* 7B518 8007A918 F4226AE8 */  sdc1       $f2, %lo(D_800C6AE8)($at)
/* 7B51C 8007A91C 3C01800C */  lui        $at, %hi(D_800C6AF0)
/* 7B520 8007A920 F4286AF0 */  sdc1       $f8, %lo(D_800C6AF0)($at)
/* 7B524 8007A924 3C01800C */  lui        $at, %hi(D_800C6AF8)
/* 7B528 8007A928 F42A6AF8 */  sdc1       $f10, %lo(D_800C6AF8)($at)
/* 7B52C 8007A92C 3C01800C */  lui        $at, %hi(D_800C6B00)
/* 7B530 8007A930 F42E6B00 */  sdc1       $f14, %lo(D_800C6B00)($at)
/* 7B534 8007A934 3C01800C */  lui        $at, %hi(D_800C6B08)
/* 7B538 8007A938 0C026EFC */  jal        func_8009BBF0
/* 7B53C 8007A93C F4306B08 */   sdc1      $f16, %lo(D_800C6B08)($at)
/* 7B540 8007A940 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7B544 8007A944 D4226B18 */  ldc1       $f2, %lo(D_800C6B18)($at)
/* 7B548 8007A948 46220003 */  div.d      $f0, $f0, $f2
/* 7B54C 8007A94C 3C01800D */  lui        $at, %hi(D_800D5CE0)
/* 7B550 8007A950 D4245CE0 */  ldc1       $f4, %lo(D_800D5CE0)($at)
/* 7B554 8007A954 3C01800D */  lui        $at, %hi(D_800D5CE8)
/* 7B558 8007A958 D4225CE8 */  ldc1       $f2, %lo(D_800D5CE8)($at)
/* 7B55C 8007A95C 3C01800C */  lui        $at, %hi(D_800C6B28)
/* 7B560 8007A960 F4346B28 */  sdc1       $f20, %lo(D_800C6B28)($at)
/* 7B564 8007A964 3C01800C */  lui        $at, %hi(D_800C6B38)
/* 7B568 8007A968 F4346B38 */  sdc1       $f20, %lo(D_800C6B38)($at)
/* 7B56C 8007A96C 3C01800C */  lui        $at, %hi(D_800C6B40)
/* 7B570 8007A970 F4246B40 */  sdc1       $f4, %lo(D_800C6B40)($at)
/* 7B574 8007A974 3C01800C */  lui        $at, %hi(D_800C6B30)
/* 7B578 8007A978 F4226B30 */  sdc1       $f2, %lo(D_800C6B30)($at)
/* 7B57C 8007A97C 3C01800C */  lui        $at, %hi(D_800C6B20)
/* 7B580 8007A980 F4206B20 */  sdc1       $f0, %lo(D_800C6B20)($at)
/* 7B584 8007A984 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7B588 8007A988 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7B58C 8007A98C 8FB20018 */  lw         $s2, 0x18($sp)
/* 7B590 8007A990 8FB10014 */  lw         $s1, 0x14($sp)
/* 7B594 8007A994 8FB00010 */  lw         $s0, 0x10($sp)
/* 7B598 8007A998 D7BE0050 */  ldc1       $f30, 0x50($sp)
/* 7B59C 8007A99C D7BC0048 */  ldc1       $f28, 0x48($sp)
/* 7B5A0 8007A9A0 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* 7B5A4 8007A9A4 D7B80038 */  ldc1       $f24, 0x38($sp)
/* 7B5A8 8007A9A8 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 7B5AC 8007A9AC D7B40028 */  ldc1       $f20, 0x28($sp)
/* 7B5B0 8007A9B0 03E00008 */  jr         $ra
/* 7B5B4 8007A9B4 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8007A9B8
/* 7B5B8 8007A9B8 3C01800D */  lui        $at, %hi(D_800D5D00)
/* 7B5BC 8007A9BC 8C265D00 */  lw         $a2, %lo(D_800D5D00)($at)
/* 7B5C0 8007A9C0 8C275D04 */  lw         $a3, %lo(D_800D5D04)($at)
/* 7B5C4 8007A9C4 3C01800D */  lui        $at, %hi(D_800D5D08)
/* 7B5C8 8007A9C8 D4225D08 */  ldc1       $f2, %lo(D_800D5D08)($at)
/* 7B5CC 8007A9CC 3C01800D */  lui        $at, %hi(D_800D5D10)
/* 7B5D0 8007A9D0 D4245D10 */  ldc1       $f4, %lo(D_800D5D10)($at)
/* 7B5D4 8007A9D4 3C01800D */  lui        $at, %hi(D_800D5D18)
/* 7B5D8 8007A9D8 D42C5D18 */  ldc1       $f12, %lo(D_800D5D18)($at)
/* 7B5DC 8007A9DC 3C01800D */  lui        $at, %hi(D_800D5D20)
/* 7B5E0 8007A9E0 D4265D20 */  ldc1       $f6, %lo(D_800D5D20)($at)
/* 7B5E4 8007A9E4 3C01800D */  lui        $at, %hi(D_800D5D28)
/* 7B5E8 8007A9E8 D4285D28 */  ldc1       $f8, %lo(D_800D5D28)($at)
/* 7B5EC 8007A9EC 3C01800D */  lui        $at, %hi(D_800D5D30)
/* 7B5F0 8007A9F0 D42A5D30 */  ldc1       $f10, %lo(D_800D5D30)($at)
/* 7B5F4 8007A9F4 3C01800D */  lui        $at, %hi(D_800D5D38)
/* 7B5F8 8007A9F8 D42E5D38 */  ldc1       $f14, %lo(D_800D5D38)($at)
/* 7B5FC 8007A9FC 3C01800D */  lui        $at, %hi(D_800D5D40)
/* 7B600 8007AA00 D4305D40 */  ldc1       $f16, %lo(D_800D5D40)($at)
/* 7B604 8007AA04 3C01800D */  lui        $at, %hi(D_800D5D48)
/* 7B608 8007AA08 D4325D48 */  ldc1       $f18, %lo(D_800D5D48)($at)
/* 7B60C 8007AA0C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 7B610 8007AA10 F7B80038 */  sdc1       $f24, 0x38($sp)
/* 7B614 8007AA14 3C01800D */  lui        $at, %hi(D_800D5D50)
/* 7B618 8007AA18 D4385D50 */  ldc1       $f24, %lo(D_800D5D50)($at)
/* 7B61C 8007AA1C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 7B620 8007AA20 3C01800D */  lui        $at, %hi(D_800D5D58)
/* 7B624 8007AA24 D4345D58 */  ldc1       $f20, %lo(D_800D5D58)($at)
/* 7B628 8007AA28 3C01800D */  lui        $at, %hi(D_800D5D60)
/* 7B62C 8007AA2C D4205D60 */  ldc1       $f0, %lo(D_800D5D60)($at)
/* 7B630 8007AA30 AFB3001C */  sw         $s3, 0x1C($sp)
/* 7B634 8007AA34 AFB20018 */  sw         $s2, 0x18($sp)
/* 7B638 8007AA38 3C01800D */  lui        $at, %hi(D_800D5D68)
/* 7B63C 8007AA3C 8C325D68 */  lw         $s2, %lo(D_800D5D68)($at)
/* 7B640 8007AA40 8C335D6C */  lw         $s3, %lo(D_800D5D6C)($at)
/* 7B644 8007AA44 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 7B648 8007AA48 3C01800D */  lui        $at, %hi(D_800D5D70)
/* 7B64C 8007AA4C D4365D70 */  ldc1       $f22, %lo(D_800D5D70)($at)
/* 7B650 8007AA50 AFB10014 */  sw         $s1, 0x14($sp)
/* 7B654 8007AA54 AFB00010 */  sw         $s0, 0x10($sp)
/* 7B658 8007AA58 3C01800D */  lui        $at, %hi(D_800D5D78)
/* 7B65C 8007AA5C 8C305D78 */  lw         $s0, %lo(D_800D5D78)($at)
/* 7B660 8007AA60 8C315D7C */  lw         $s1, %lo(D_800D5D7C)($at)
/* 7B664 8007AA64 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* 7B668 8007AA68 3C01800D */  lui        $at, %hi(D_800D5D80)
/* 7B66C 8007AA6C D43A5D80 */  ldc1       $f26, %lo(D_800D5D80)($at)
/* 7B670 8007AA70 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* 7B674 8007AA74 3C01800D */  lui        $at, %hi(D_800D5D88)
/* 7B678 8007AA78 D43C5D88 */  ldc1       $f28, %lo(D_800D5D88)($at)
/* 7B67C 8007AA7C F7BE0050 */  sdc1       $f30, 0x50($sp)
/* 7B680 8007AA80 3C01800D */  lui        $at, %hi(D_800D5D90)
/* 7B684 8007AA84 D43E5D90 */  ldc1       $f30, %lo(D_800D5D90)($at)
/* 7B688 8007AA88 3C01800D */  lui        $at, %hi(D_800D5D98)
/* 7B68C 8007AA8C 8C225D98 */  lw         $v0, %lo(D_800D5D98)($at)
/* 7B690 8007AA90 8C235D9C */  lw         $v1, %lo(D_800D5D9C)($at)
/* 7B694 8007AA94 3C01800D */  lui        $at, %hi(D_800D5DA0)
/* 7B698 8007AA98 8C245DA0 */  lw         $a0, %lo(D_800D5DA0)($at)
/* 7B69C 8007AA9C 8C255DA4 */  lw         $a1, %lo(D_800D5DA4)($at)
/* 7B6A0 8007AAA0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 7B6A4 8007AAA4 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7B6A8 8007AAA8 AC2669E0 */  sw         $a2, %lo(D_800C69E0)($at)
/* 7B6AC 8007AAAC 3C01800C */  lui        $at, %hi(D_800C69E4)
/* 7B6B0 8007AAB0 AC2769E4 */  sw         $a3, %lo(D_800C69E4)($at)
/* 7B6B4 8007AAB4 3C01800C */  lui        $at, %hi(D_800C69E8)
/* 7B6B8 8007AAB8 F42269E8 */  sdc1       $f2, %lo(D_800C69E8)($at)
/* 7B6BC 8007AABC 3C01800C */  lui        $at, %hi(D_800C69F0)
/* 7B6C0 8007AAC0 F42469F0 */  sdc1       $f4, %lo(D_800C69F0)($at)
/* 7B6C4 8007AAC4 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 7B6C8 8007AAC8 F42C69F8 */  sdc1       $f12, %lo(D_800C69F8)($at)
/* 7B6CC 8007AACC 3C01800C */  lui        $at, %hi(D_800C6A00)
/* 7B6D0 8007AAD0 F4266A00 */  sdc1       $f6, %lo(D_800C6A00)($at)
/* 7B6D4 8007AAD4 3C01800C */  lui        $at, %hi(D_800C6A08)
/* 7B6D8 8007AAD8 F4286A08 */  sdc1       $f8, %lo(D_800C6A08)($at)
/* 7B6DC 8007AADC 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7B6E0 8007AAE0 F42A6A10 */  sdc1       $f10, %lo(D_800C6A10)($at)
/* 7B6E4 8007AAE4 3C01800C */  lui        $at, %hi(D_800C6A18)
/* 7B6E8 8007AAE8 F42E6A18 */  sdc1       $f14, %lo(D_800C6A18)($at)
/* 7B6EC 8007AAEC 3C01800C */  lui        $at, %hi(D_800C6A20)
/* 7B6F0 8007AAF0 F4306A20 */  sdc1       $f16, %lo(D_800C6A20)($at)
/* 7B6F4 8007AAF4 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 7B6F8 8007AAF8 F4326A28 */  sdc1       $f18, %lo(D_800C6A28)($at)
/* 7B6FC 8007AAFC 3C01800C */  lui        $at, %hi(D_800C6A30)
/* 7B700 8007AB00 F4386A30 */  sdc1       $f24, %lo(D_800C6A30)($at)
/* 7B704 8007AB04 3C01800C */  lui        $at, %hi(D_800C6A58)
/* 7B708 8007AB08 F4346A58 */  sdc1       $f20, %lo(D_800C6A58)($at)
/* 7B70C 8007AB0C 3C01800C */  lui        $at, %hi(D_800C6A60)
/* 7B710 8007AB10 F4206A60 */  sdc1       $f0, %lo(D_800C6A60)($at)
/* 7B714 8007AB14 3C01800C */  lui        $at, %hi(D_800C6A68)
/* 7B718 8007AB18 AC326A68 */  sw         $s2, %lo(D_800C6A68)($at)
/* 7B71C 8007AB1C 3C01800C */  lui        $at, %hi(D_800C6A6C)
/* 7B720 8007AB20 AC336A6C */  sw         $s3, %lo(D_800C6A6C)($at)
/* 7B724 8007AB24 3C01800C */  lui        $at, %hi(D_800C6A70)
/* 7B728 8007AB28 F4366A70 */  sdc1       $f22, %lo(D_800C6A70)($at)
/* 7B72C 8007AB2C 3C01800C */  lui        $at, %hi(D_800C6A78)
/* 7B730 8007AB30 AC306A78 */  sw         $s0, %lo(D_800C6A78)($at)
/* 7B734 8007AB34 3C01800C */  lui        $at, %hi(D_800C6A7C)
/* 7B738 8007AB38 AC316A7C */  sw         $s1, %lo(D_800C6A7C)($at)
/* 7B73C 8007AB3C 3C01800C */  lui        $at, %hi(D_800C6A80)
/* 7B740 8007AB40 AC266A80 */  sw         $a2, %lo(D_800C6A80)($at)
/* 7B744 8007AB44 3C01800C */  lui        $at, %hi(D_800C6A84)
/* 7B748 8007AB48 AC276A84 */  sw         $a3, %lo(D_800C6A84)($at)
/* 7B74C 8007AB4C 3C01800C */  lui        $at, %hi(D_800C6A88)
/* 7B750 8007AB50 F43A6A88 */  sdc1       $f26, %lo(D_800C6A88)($at)
/* 7B754 8007AB54 3C01800C */  lui        $at, %hi(D_800C6A90)
/* 7B758 8007AB58 F4346A90 */  sdc1       $f20, %lo(D_800C6A90)($at)
/* 7B75C 8007AB5C 3C01800C */  lui        $at, %hi(D_800C6A98)
/* 7B760 8007AB60 F43C6A98 */  sdc1       $f28, %lo(D_800C6A98)($at)
/* 7B764 8007AB64 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7B768 8007AB68 F43E6AA0 */  sdc1       $f30, %lo(D_800C6AA0)($at)
/* 7B76C 8007AB6C 3C01800C */  lui        $at, %hi(D_800C6AA8)
/* 7B770 8007AB70 AC226AA8 */  sw         $v0, %lo(D_800C6AA8)($at)
/* 7B774 8007AB74 3C01800C */  lui        $at, %hi(D_800C6AAC)
/* 7B778 8007AB78 AC236AAC */  sw         $v1, %lo(D_800C6AAC)($at)
/* 7B77C 8007AB7C 3C01800C */  lui        $at, %hi(D_800C6AB0)
/* 7B780 8007AB80 F4206AB0 */  sdc1       $f0, %lo(D_800C6AB0)($at)
/* 7B784 8007AB84 3C01800C */  lui        $at, %hi(D_800C6AB8)
/* 7B788 8007AB88 AC246AB8 */  sw         $a0, %lo(D_800C6AB8)($at)
/* 7B78C 8007AB8C 3C01800C */  lui        $at, %hi(D_800C6ABC)
/* 7B790 8007AB90 0C01E6E4 */  jal        func_80079B90
/* 7B794 8007AB94 AC256ABC */   sw        $a1, %lo(D_800C6ABC)($at)
/* 7B798 8007AB98 3C01800D */  lui        $at, %hi(D_800D5DA8)
/* 7B79C 8007AB9C D4225DA8 */  ldc1       $f2, %lo(D_800D5DA8)($at)
/* 7B7A0 8007ABA0 46201083 */  div.d      $f2, $f2, $f0
/* 7B7A4 8007ABA4 46221082 */  mul.d      $f2, $f2, $f2
/* 7B7A8 8007ABA8 44806000 */  mtc1       $zero, $f12
/* 7B7AC 8007ABAC 44806800 */  mtc1       $zero, $f13
/* 7B7B0 8007ABB0 3C01800C */  lui        $at, %hi(D_800C6AC0)
/* 7B7B4 8007ABB4 0C01E6E4 */  jal        func_80079B90
/* 7B7B8 8007ABB8 F4226AC0 */   sdc1      $f2, %lo(D_800C6AC0)($at)
/* 7B7BC 8007ABBC 3C01800D */  lui        $at, %hi(D_800D5DB0)
/* 7B7C0 8007ABC0 D42C5DB0 */  ldc1       $f12, %lo(D_800D5DB0)($at)
/* 7B7C4 8007ABC4 3C01800D */  lui        $at, %hi(D_800D5DB8)
/* 7B7C8 8007ABC8 D4225DB8 */  ldc1       $f2, %lo(D_800D5DB8)($at)
/* 7B7CC 8007ABCC 3C01800D */  lui        $at, %hi(D_800D5DC0)
/* 7B7D0 8007ABD0 D4245DC0 */  ldc1       $f4, %lo(D_800D5DC0)($at)
/* 7B7D4 8007ABD4 3C01800D */  lui        $at, %hi(D_800D5DC8)
/* 7B7D8 8007ABD8 D4265DC8 */  ldc1       $f6, %lo(D_800D5DC8)($at)
/* 7B7DC 8007ABDC 3C01800D */  lui        $at, %hi(D_800D5DD0)
/* 7B7E0 8007ABE0 D4285DD0 */  ldc1       $f8, %lo(D_800D5DD0)($at)
/* 7B7E4 8007ABE4 3C01800D */  lui        $at, %hi(D_800D5DD8)
/* 7B7E8 8007ABE8 D42A5DD8 */  ldc1       $f10, %lo(D_800D5DD8)($at)
/* 7B7EC 8007ABEC 3C01800D */  lui        $at, %hi(D_800D5DE0)
/* 7B7F0 8007ABF0 D42E5DE0 */  ldc1       $f14, %lo(D_800D5DE0)($at)
/* 7B7F4 8007ABF4 3C01800C */  lui        $at, %hi(D_800C6AC8)
/* 7B7F8 8007ABF8 F4206AC8 */  sdc1       $f0, %lo(D_800C6AC8)($at)
/* 7B7FC 8007ABFC 3C01800C */  lui        $at, %hi(D_800C6AD8)
/* 7B800 8007AC00 F4346AD8 */  sdc1       $f20, %lo(D_800C6AD8)($at)
/* 7B804 8007AC04 3C01800C */  lui        $at, %hi(D_800C6AE8)
/* 7B808 8007AC08 F4346AE8 */  sdc1       $f20, %lo(D_800C6AE8)($at)
/* 7B80C 8007AC0C 3C01800C */  lui        $at, %hi(D_800C6B10)
/* 7B810 8007AC10 AC326B10 */  sw         $s2, %lo(D_800C6B10)($at)
/* 7B814 8007AC14 3C01800C */  lui        $at, %hi(D_800C6B14)
/* 7B818 8007AC18 AC336B14 */  sw         $s3, %lo(D_800C6B14)($at)
/* 7B81C 8007AC1C 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7B820 8007AC20 AC306B18 */  sw         $s0, %lo(D_800C6B18)($at)
/* 7B824 8007AC24 3C01800C */  lui        $at, %hi(D_800C6B1C)
/* 7B828 8007AC28 AC316B1C */  sw         $s1, %lo(D_800C6B1C)($at)
/* 7B82C 8007AC2C 3C01800C */  lui        $at, %hi(D_800C6AD0)
/* 7B830 8007AC30 F4226AD0 */  sdc1       $f2, %lo(D_800C6AD0)($at)
/* 7B834 8007AC34 3C01800C */  lui        $at, %hi(D_800C6AE0)
/* 7B838 8007AC38 F4246AE0 */  sdc1       $f4, %lo(D_800C6AE0)($at)
/* 7B83C 8007AC3C 3C01800C */  lui        $at, %hi(D_800C6AF0)
/* 7B840 8007AC40 F4266AF0 */  sdc1       $f6, %lo(D_800C6AF0)($at)
/* 7B844 8007AC44 3C01800C */  lui        $at, %hi(D_800C6AF8)
/* 7B848 8007AC48 F4286AF8 */  sdc1       $f8, %lo(D_800C6AF8)($at)
/* 7B84C 8007AC4C 3C01800C */  lui        $at, %hi(D_800C6B00)
/* 7B850 8007AC50 F42A6B00 */  sdc1       $f10, %lo(D_800C6B00)($at)
/* 7B854 8007AC54 3C01800C */  lui        $at, %hi(D_800C6B08)
/* 7B858 8007AC58 0C026EFC */  jal        func_8009BBF0
/* 7B85C 8007AC5C F42E6B08 */   sdc1      $f14, %lo(D_800C6B08)($at)
/* 7B860 8007AC60 3C01800C */  lui        $at, %hi(D_800C6B18)
/* 7B864 8007AC64 D4226B18 */  ldc1       $f2, %lo(D_800C6B18)($at)
/* 7B868 8007AC68 46220003 */  div.d      $f0, $f0, $f2
/* 7B86C 8007AC6C 3C01800D */  lui        $at, %hi(D_800D5DE8)
/* 7B870 8007AC70 D4245DE8 */  ldc1       $f4, %lo(D_800D5DE8)($at)
/* 7B874 8007AC74 3C01800D */  lui        $at, %hi(D_800D5DF0)
/* 7B878 8007AC78 D4225DF0 */  ldc1       $f2, %lo(D_800D5DF0)($at)
/* 7B87C 8007AC7C 3C01800C */  lui        $at, %hi(D_800C6B28)
/* 7B880 8007AC80 F4366B28 */  sdc1       $f22, %lo(D_800C6B28)($at)
/* 7B884 8007AC84 3C01800C */  lui        $at, %hi(D_800C6B38)
/* 7B888 8007AC88 F4366B38 */  sdc1       $f22, %lo(D_800C6B38)($at)
/* 7B88C 8007AC8C 3C01800C */  lui        $at, %hi(D_800C6B40)
/* 7B890 8007AC90 F4246B40 */  sdc1       $f4, %lo(D_800C6B40)($at)
/* 7B894 8007AC94 3C01800C */  lui        $at, %hi(D_800C6B30)
/* 7B898 8007AC98 F4226B30 */  sdc1       $f2, %lo(D_800C6B30)($at)
/* 7B89C 8007AC9C 3C01800C */  lui        $at, %hi(D_800C6B20)
/* 7B8A0 8007ACA0 F4206B20 */  sdc1       $f0, %lo(D_800C6B20)($at)
/* 7B8A4 8007ACA4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 7B8A8 8007ACA8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 7B8AC 8007ACAC 8FB20018 */  lw         $s2, 0x18($sp)
/* 7B8B0 8007ACB0 8FB10014 */  lw         $s1, 0x14($sp)
/* 7B8B4 8007ACB4 8FB00010 */  lw         $s0, 0x10($sp)
/* 7B8B8 8007ACB8 D7BE0050 */  ldc1       $f30, 0x50($sp)
/* 7B8BC 8007ACBC D7BC0048 */  ldc1       $f28, 0x48($sp)
/* 7B8C0 8007ACC0 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* 7B8C4 8007ACC4 D7B80038 */  ldc1       $f24, 0x38($sp)
/* 7B8C8 8007ACC8 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 7B8CC 8007ACCC D7B40028 */  ldc1       $f20, 0x28($sp)
/* 7B8D0 8007ACD0 03E00008 */  jr         $ra
/* 7B8D4 8007ACD4 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8007ACD8
/* 7B8D8 8007ACD8 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 7B8DC 8007ACDC D4226B50 */  ldc1       $f2, %lo(D_800C6B50)($at)
/* 7B8E0 8007ACE0 3C01800D */  lui        $at, %hi(D_800D5DF8)
/* 7B8E4 8007ACE4 D4205DF8 */  ldc1       $f0, %lo(D_800D5DF8)($at)
/* 7B8E8 8007ACE8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7B8EC 8007ACEC F7B40018 */  sdc1       $f20, 0x18($sp)
/* 7B8F0 8007ACF0 46206506 */  mov.d      $f20, $f12
/* 7B8F4 8007ACF4 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 7B8F8 8007ACF8 4620103C */  c.lt.d     $f2, $f0
/* 7B8FC 8007ACFC 46207586 */  mov.d      $f22, $f14
/* 7B900 8007AD00 00000000 */  nop
/* 7B904 8007AD04 45000005 */  bc1f       .L8007AD1C
/* 7B908 8007AD08 AFBF0010 */   sw        $ra, 0x10($sp)
/* 7B90C 8007AD0C 0C01E8C1 */  jal        func_8007A304
/* 7B910 8007AD10 00000000 */   nop
/* 7B914 8007AD14 0801EB53 */  j          .L8007AD4C
/* 7B918 8007AD18 00000000 */   nop
.L8007AD1C:
/* 7B91C 8007AD1C 3C01800D */  lui        $at, %hi(D_800D5E00)
/* 7B920 8007AD20 D4205E00 */  ldc1       $f0, %lo(D_800D5E00)($at)
/* 7B924 8007AD24 4622003C */  c.lt.d     $f0, $f2
/* 7B928 8007AD28 00000000 */  nop
/* 7B92C 8007AD2C 45000005 */  bc1f       .L8007AD44
/* 7B930 8007AD30 00000000 */   nop
/* 7B934 8007AD34 0C01EA6E */  jal        func_8007A9B8
/* 7B938 8007AD38 00000000 */   nop
/* 7B93C 8007AD3C 0801EB53 */  j          .L8007AD4C
/* 7B940 8007AD40 00000000 */   nop
.L8007AD44:
/* 7B944 8007AD44 0C01E997 */  jal        func_8007A65C
/* 7B948 8007AD48 00000000 */   nop
.L8007AD4C:
/* 7B94C 8007AD4C 3C01800D */  lui        $at, %hi(D_800D5E08)
/* 7B950 8007AD50 D4205E08 */  ldc1       $f0, %lo(D_800D5E08)($at)
/* 7B954 8007AD54 4620A002 */  mul.d      $f0, $f20, $f0
/* 7B958 8007AD58 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7B95C 8007AD5C F43469E0 */  sdc1       $f20, %lo(D_800C69E0)($at)
/* 7B960 8007AD60 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7B964 8007AD64 F4366AA0 */  sdc1       $f22, %lo(D_800C6AA0)($at)
/* 7B968 8007AD68 3C01800C */  lui        $at, %hi(D_800C6A10)
/* 7B96C 8007AD6C F4206A10 */  sdc1       $f0, %lo(D_800C6A10)($at)
/* 7B970 8007AD70 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7B974 8007AD74 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 7B978 8007AD78 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 7B97C 8007AD7C 03E00008 */  jr         $ra
/* 7B980 8007AD80 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8007AD84
/* 7B984 8007AD84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B988 8007AD88 24840001 */  addiu      $a0, $a0, 0x1
/* 7B98C 8007AD8C 44876000 */  mtc1       $a3, $f12
/* 7B990 8007AD90 44866800 */  mtc1       $a2, $f13
/* 7B994 8007AD94 2C820005 */  sltiu      $v0, $a0, 0x5
/* 7B998 8007AD98 10400019 */  beqz       $v0, .L8007AE00
/* 7B99C 8007AD9C AFBF0010 */   sw        $ra, 0x10($sp)
/* 7B9A0 8007ADA0 00041080 */  sll        $v0, $a0, 2
/* 7B9A4 8007ADA4 3C01800D */  lui        $at, %hi(jtbl_800D5E10_main)
/* 7B9A8 8007ADA8 00220821 */  addu       $at, $at, $v0
/* 7B9AC 8007ADAC 8C225E10 */  lw         $v0, %lo(jtbl_800D5E10_main)($at)
/* 7B9B0 8007ADB0 00400008 */  jr         $v0
/* 7B9B4 8007ADB4 00000000 */   nop
glabel L8007ADB8
/* 7B9B8 8007ADB8 0C01E7EF */  jal        func_80079FBC
/* 7B9BC 8007ADBC 00000000 */   nop
/* 7B9C0 8007ADC0 0801EB80 */  j          .L8007AE00
/* 7B9C4 8007ADC4 00000000 */   nop
glabel L8007ADC8
/* 7B9C8 8007ADC8 0C01E8C1 */  jal        func_8007A304
/* 7B9CC 8007ADCC 00000000 */   nop
/* 7B9D0 8007ADD0 0801EB80 */  j          .L8007AE00
/* 7B9D4 8007ADD4 00000000 */   nop
glabel L8007ADD8
/* 7B9D8 8007ADD8 0C01E997 */  jal        func_8007A65C
/* 7B9DC 8007ADDC 00000000 */   nop
/* 7B9E0 8007ADE0 0801EB80 */  j          .L8007AE00
/* 7B9E4 8007ADE4 00000000 */   nop
glabel L8007ADE8
/* 7B9E8 8007ADE8 0C01EA6E */  jal        func_8007A9B8
/* 7B9EC 8007ADEC 00000000 */   nop
/* 7B9F0 8007ADF0 0801EB80 */  j          .L8007AE00
/* 7B9F4 8007ADF4 00000000 */   nop
glabel L8007ADF8
/* 7B9F8 8007ADF8 0C01EB36 */  jal        func_8007ACD8
/* 7B9FC 8007ADFC D7AE0028 */   ldc1      $f14, 0x28($sp)
.L8007AE00:
/* 7BA00 8007AE00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7BA04 8007AE04 03E00008 */  jr         $ra
/* 7BA08 8007AE08 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007AE0C
/* 7BA0C 8007AE0C 3C01802F */  lui        $at, %hi(D_802F08C8)
/* 7BA10 8007AE10 D42C08C8 */  ldc1       $f12, %lo(D_802F08C8)($at)
/* 7BA14 8007AE14 3C01800D */  lui        $at, %hi(D_800D5E28)
/* 7BA18 8007AE18 D4225E28 */  ldc1       $f2, %lo(D_800D5E28)($at)
/* 7BA1C 8007AE1C 46226200 */  add.d      $f8, $f12, $f2
/* 7BA20 8007AE20 3C01802C */  lui        $at, %hi(D_802C6080)
/* 7BA24 8007AE24 D4206080 */  ldc1       $f0, %lo(D_802C6080)($at)
/* 7BA28 8007AE28 46204201 */  sub.d      $f8, $f8, $f0
/* 7BA2C 8007AE2C 46224203 */  div.d      $f8, $f8, $f2
/* 7BA30 8007AE30 3C01800D */  lui        $at, %hi(D_800D5E30)
/* 7BA34 8007AE34 D4265E30 */  ldc1       $f6, %lo(D_800D5E30)($at)
/* 7BA38 8007AE38 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7BA3C 8007AE3C D42069E0 */  ldc1       $f0, %lo(D_800C69E0)($at)
/* 7BA40 8007AE40 46203181 */  sub.d      $f6, $f6, $f0
/* 7BA44 8007AE44 3C01800D */  lui        $at, %hi(D_800D5E38)
/* 7BA48 8007AE48 D42A5E38 */  ldc1       $f10, %lo(D_800D5E38)($at)
/* 7BA4C 8007AE4C 462A3182 */  mul.d      $f6, $f6, $f10
/* 7BA50 8007AE50 3C01800D */  lui        $at, %hi(D_800D5E40)
/* 7BA54 8007AE54 D4205E40 */  ldc1       $f0, %lo(D_800D5E40)($at)
/* 7BA58 8007AE58 46203183 */  div.d      $f6, $f6, $f0
/* 7BA5C 8007AE5C 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7BA60 8007AE60 D4246AA0 */  ldc1       $f4, %lo(D_800C6AA0)($at)
/* 7BA64 8007AE64 3C01800D */  lui        $at, %hi(D_800D5E48)
/* 7BA68 8007AE68 D4205E48 */  ldc1       $f0, %lo(D_800D5E48)($at)
/* 7BA6C 8007AE6C 46202101 */  sub.d      $f4, $f4, $f0
/* 7BA70 8007AE70 462A2102 */  mul.d      $f4, $f4, $f10
/* 7BA74 8007AE74 3C01800D */  lui        $at, %hi(D_800D5E50)
/* 7BA78 8007AE78 D4205E50 */  ldc1       $f0, %lo(D_800D5E50)($at)
/* 7BA7C 8007AE7C 46202103 */  div.d      $f4, $f4, $f0
/* 7BA80 8007AE80 3C01800D */  lui        $at, %hi(D_800D5E58)
/* 7BA84 8007AE84 D4205E58 */  ldc1       $f0, %lo(D_800D5E58)($at)
/* 7BA88 8007AE88 462C0001 */  sub.d      $f0, $f0, $f12
/* 7BA8C 8007AE8C 3C01800D */  lui        $at, %hi(D_800D5E60)
/* 7BA90 8007AE90 D4225E60 */  ldc1       $f2, %lo(D_800D5E60)($at)
/* 7BA94 8007AE94 46220000 */  add.d      $f0, $f0, $f2
/* 7BA98 8007AE98 462A0002 */  mul.d      $f0, $f0, $f10
/* 7BA9C 8007AE9C 00000000 */  nop
/* 7BAA0 8007AEA0 462A4202 */  mul.d      $f8, $f8, $f10
/* 7BAA4 8007AEA4 4620008D */  trunc.w.d  $f2, $f0
/* 7BAA8 8007AEA8 44021000 */  mfc1       $v0, $f2
/* 7BAAC 8007AEAC 3C01803F */  lui        $at, %hi(D_803ED3EC)
/* 7BAB0 8007AEB0 A422D3EC */  sh         $v0, %lo(D_803ED3EC)($at)
/* 7BAB4 8007AEB4 4620300D */  trunc.w.d  $f0, $f6
/* 7BAB8 8007AEB8 44020000 */  mfc1       $v0, $f0
/* 7BABC 8007AEBC 3C01803F */  lui        $at, %hi(D_803ED3E6)
/* 7BAC0 8007AEC0 A422D3E6 */  sh         $v0, %lo(D_803ED3E6)($at)
/* 7BAC4 8007AEC4 4620200D */  trunc.w.d  $f0, $f4
/* 7BAC8 8007AEC8 44020000 */  mfc1       $v0, $f0
/* 7BACC 8007AECC 3C01803F */  lui        $at, %hi(D_803ED3E8)
/* 7BAD0 8007AED0 A422D3E8 */  sh         $v0, %lo(D_803ED3E8)($at)
/* 7BAD4 8007AED4 4620400D */  trunc.w.d  $f0, $f8
/* 7BAD8 8007AED8 44020000 */  mfc1       $v0, $f0
/* 7BADC 8007AEDC 3C01803F */  lui        $at, %hi(D_803ED3EA)
/* 7BAE0 8007AEE0 03E00008 */  jr         $ra
/* 7BAE4 8007AEE4 A422D3EA */   sh        $v0, %lo(D_803ED3EA)($at)

glabel func_8007AEE8
/* 7BAE8 8007AEE8 3C01800D */  lui        $at, %hi(D_800D5E68)
/* 7BAEC 8007AEEC D42C5E68 */  ldc1       $f12, %lo(D_800D5E68)($at)
/* 7BAF0 8007AEF0 46206384 */  sqrt.d     $f14, $f12
/* 7BAF4 8007AEF4 3C02803F */  lui        $v0, %hi(D_803ED3E6)
/* 7BAF8 8007AEF8 9442D3E6 */  lhu        $v0, %lo(D_803ED3E6)($v0)
/* 7BAFC 8007AEFC 44821000 */  mtc1       $v0, $f2
/* 7BB00 8007AF00 00000000 */  nop
/* 7BB04 8007AF04 468010A1 */  cvt.d.w    $f2, $f2
/* 7BB08 8007AF08 3C02803F */  lui        $v0, %hi(D_803ED3E8)
/* 7BB0C 8007AF0C 9442D3E8 */  lhu        $v0, %lo(D_803ED3E8)($v0)
/* 7BB10 8007AF10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7BB14 8007AF14 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 7BB18 8007AF18 44822000 */  mtc1       $v0, $f4
/* 7BB1C 8007AF1C 00000000 */  nop
/* 7BB20 8007AF20 46802121 */  cvt.d.w    $f4, $f4
/* 7BB24 8007AF24 3C02803F */  lui        $v0, %hi(D_803ED3EC)
/* 7BB28 8007AF28 9442D3EC */  lhu        $v0, %lo(D_803ED3EC)($v0)
/* 7BB2C 8007AF2C 3C01800D */  lui        $at, %hi(D_800D5E70)
/* 7BB30 8007AF30 D4365E70 */  ldc1       $f22, %lo(D_800D5E70)($at)
/* 7BB34 8007AF34 44824000 */  mtc1       $v0, $f8
/* 7BB38 8007AF38 00000000 */  nop
/* 7BB3C 8007AF3C 46804221 */  cvt.d.w    $f8, $f8
/* 7BB40 8007AF40 46364203 */  div.d      $f8, $f8, $f22
/* 7BB44 8007AF44 3C01800D */  lui        $at, %hi(D_800D5E78)
/* 7BB48 8007AF48 D4205E78 */  ldc1       $f0, %lo(D_800D5E78)($at)
/* 7BB4C 8007AF4C 46201082 */  mul.d      $f2, $f2, $f0
/* 7BB50 8007AF50 46361083 */  div.d      $f2, $f2, $f22
/* 7BB54 8007AF54 3C01800D */  lui        $at, %hi(D_800D5E80)
/* 7BB58 8007AF58 D4205E80 */  ldc1       $f0, %lo(D_800D5E80)($at)
/* 7BB5C 8007AF5C 46202102 */  mul.d      $f4, $f4, $f0
/* 7BB60 8007AF60 46362103 */  div.d      $f4, $f4, $f22
/* 7BB64 8007AF64 3C02803F */  lui        $v0, %hi(D_803ED3EA)
/* 7BB68 8007AF68 9442D3EA */  lhu        $v0, %lo(D_803ED3EA)($v0)
/* 7BB6C 8007AF6C 3C01800D */  lui        $at, %hi(D_800D5E88)
/* 7BB70 8007AF70 D4205E88 */  ldc1       $f0, %lo(D_800D5E88)($at)
/* 7BB74 8007AF74 44823000 */  mtc1       $v0, $f6
/* 7BB78 8007AF78 00000000 */  nop
/* 7BB7C 8007AF7C 468031A1 */  cvt.d.w    $f6, $f6
/* 7BB80 8007AF80 46203182 */  mul.d      $f6, $f6, $f0
/* 7BB84 8007AF84 46363183 */  div.d      $f6, $f6, $f22
/* 7BB88 8007AF88 3C01800D */  lui        $at, %hi(D_800D5E90)
/* 7BB8C 8007AF8C D42A5E90 */  ldc1       $f10, %lo(D_800D5E90)($at)
/* 7BB90 8007AF90 46225281 */  sub.d      $f10, $f10, $f2
/* 7BB94 8007AF94 3C01800D */  lui        $at, %hi(D_800D5E98)
/* 7BB98 8007AF98 D4205E98 */  ldc1       $f0, %lo(D_800D5E98)($at)
/* 7BB9C 8007AF9C 46202100 */  add.d      $f4, $f4, $f0
/* 7BBA0 8007AFA0 3C01800D */  lui        $at, %hi(D_800D5EA0)
/* 7BBA4 8007AFA4 D4205EA0 */  ldc1       $f0, %lo(D_800D5EA0)($at)
/* 7BBA8 8007AFA8 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7BBAC 8007AFAC 46204501 */  sub.d      $f20, $f8, $f0
/* 7BBB0 8007AFB0 3C01800D */  lui        $at, %hi(D_800D5EA8)
/* 7BBB4 8007AFB4 D4205EA8 */  ldc1       $f0, %lo(D_800D5EA8)($at)
/* 7BBB8 8007AFB8 46340001 */  sub.d      $f0, $f0, $f20
/* 7BBBC 8007AFBC 3C01800D */  lui        $at, %hi(D_800D5EB0)
/* 7BBC0 8007AFC0 D4225EB0 */  ldc1       $f2, %lo(D_800D5EB0)($at)
/* 7BBC4 8007AFC4 46341081 */  sub.d      $f2, $f2, $f20
/* 7BBC8 8007AFC8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 7BBCC 8007AFCC 46261081 */  sub.d      $f2, $f2, $f6
/* 7BBD0 8007AFD0 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7BBD4 8007AFD4 F42A69E0 */  sdc1       $f10, %lo(D_800C69E0)($at)
/* 7BBD8 8007AFD8 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 7BBDC 8007AFDC F4246B50 */  sdc1       $f4, %lo(D_800C6B50)($at)
/* 7BBE0 8007AFE0 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7BBE4 8007AFE4 F4246AA0 */  sdc1       $f4, %lo(D_800C6AA0)($at)
/* 7BBE8 8007AFE8 462E7032 */  c.eq.d     $f14, $f14
/* 7BBEC 8007AFEC 3C01802F */  lui        $at, %hi(D_802F08C8)
/* 7BBF0 8007AFF0 F42008C8 */  sdc1       $f0, %lo(D_802F08C8)($at)
/* 7BBF4 8007AFF4 3C01802C */  lui        $at, %hi(D_802C6080)
/* 7BBF8 8007AFF8 F4226080 */  sdc1       $f2, %lo(D_802C6080)($at)
/* 7BBFC 8007AFFC 45010004 */  bc1t       .L8007B010
/* 7BC00 8007B000 00000000 */   nop
/* 7BC04 8007B004 0C026F44 */  jal        func_8009BD10
/* 7BC08 8007B008 00000000 */   nop
/* 7BC0C 8007B00C 46200386 */  mov.d      $f14, $f0
.L8007B010:
/* 7BC10 8007B010 3C02803F */  lui        $v0, %hi(D_803ED3EA)
/* 7BC14 8007B014 9442D3EA */  lhu        $v0, %lo(D_803ED3EA)($v0)
/* 7BC18 8007B018 3C01800D */  lui        $at, %hi(D_800D5EB8)
/* 7BC1C 8007B01C D4205EB8 */  ldc1       $f0, %lo(D_800D5EB8)($at)
/* 7BC20 8007B020 44821000 */  mtc1       $v0, $f2
/* 7BC24 8007B024 00000000 */  nop
/* 7BC28 8007B028 468010A1 */  cvt.d.w    $f2, $f2
/* 7BC2C 8007B02C 46201082 */  mul.d      $f2, $f2, $f0
/* 7BC30 8007B030 46361083 */  div.d      $f2, $f2, $f22
/* 7BC34 8007B034 462EA102 */  mul.d      $f4, $f20, $f14
/* 7BC38 8007B038 3C01800D */  lui        $at, %hi(D_800D5EC0)
/* 7BC3C 8007B03C D4265EC0 */  ldc1       $f6, %lo(D_800D5EC0)($at)
/* 7BC40 8007B040 46243181 */  sub.d      $f6, $f6, $f4
/* 7BC44 8007B044 3C01800D */  lui        $at, %hi(D_800D5EC8)
/* 7BC48 8007B048 D4205EC8 */  ldc1       $f0, %lo(D_800D5EC8)($at)
/* 7BC4C 8007B04C 3C04803F */  lui        $a0, %hi(D_803ED3E4)
/* 7BC50 8007B050 9484D3E4 */  lhu        $a0, %lo(D_803ED3E4)($a0)
/* 7BC54 8007B054 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7BC58 8007B058 D42869E0 */  ldc1       $f8, %lo(D_800C69E0)($at)
/* 7BC5C 8007B05C 46240001 */  sub.d      $f0, $f0, $f4
/* 7BC60 8007B060 44074000 */  mfc1       $a3, $f8
/* 7BC64 8007B064 44064800 */  mfc1       $a2, $f9
/* 7BC68 8007B068 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 7BC6C 8007B06C D4246B50 */  ldc1       $f4, %lo(D_800C6B50)($at)
/* 7BC70 8007B070 46220001 */  sub.d      $f0, $f0, $f2
/* 7BC74 8007B074 F7A40010 */  sdc1       $f4, 0x10($sp)
/* 7BC78 8007B078 3C01802C */  lui        $at, %hi(D_802C7940)
/* 7BC7C 8007B07C F4267940 */  sdc1       $f6, %lo(D_802C7940)($at)
/* 7BC80 8007B080 3C01802C */  lui        $at, %hi(D_802C6078)
/* 7BC84 8007B084 0C01EB61 */  jal        func_8007AD84
/* 7BC88 8007B088 F4206078 */   sdc1      $f0, %lo(D_802C6078)($at)
/* 7BC8C 8007B08C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 7BC90 8007B090 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 7BC94 8007B094 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 7BC98 8007B098 03E00008 */  jr         $ra
/* 7BC9C 8007B09C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8007B0A0
/* 7BCA0 8007B0A0 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 7BCA4 8007B0A4 D4226B50 */  ldc1       $f2, %lo(D_800C6B50)($at)
/* 7BCA8 8007B0A8 3C01800D */  lui        $at, %hi(D_800D5ED0)
/* 7BCAC 8007B0AC D4205ED0 */  ldc1       $f0, %lo(D_800D5ED0)($at)
/* 7BCB0 8007B0B0 4620103C */  c.lt.d     $f2, $f0
/* 7BCB4 8007B0B4 00000000 */  nop
/* 7BCB8 8007B0B8 45000003 */  bc1f       .L8007B0C8
/* 7BCBC 8007B0BC 00000000 */   nop
/* 7BCC0 8007B0C0 0801EC3A */  j          .L8007B0E8
/* 7BCC4 8007B0C4 00001021 */   addu      $v0, $zero, $zero
.L8007B0C8:
/* 7BCC8 8007B0C8 3C01800D */  lui        $at, %hi(D_800D5ED8)
/* 7BCCC 8007B0CC D4205ED8 */  ldc1       $f0, %lo(D_800D5ED8)($at)
/* 7BCD0 8007B0D0 4622003C */  c.lt.d     $f0, $f2
/* 7BCD4 8007B0D4 00000000 */  nop
/* 7BCD8 8007B0D8 00000000 */  nop
/* 7BCDC 8007B0DC 45000002 */  bc1f       .L8007B0E8
/* 7BCE0 8007B0E0 24020001 */   addiu     $v0, $zero, 0x1
/* 7BCE4 8007B0E4 24020002 */  addiu      $v0, $zero, 0x2
.L8007B0E8:
/* 7BCE8 8007B0E8 03E00008 */  jr         $ra
/* 7BCEC 8007B0EC 00000000 */   nop

glabel func_8007B0F0
/* 7BCF0 8007B0F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BCF4 8007B0F4 24020001 */  addiu      $v0, $zero, 0x1
/* 7BCF8 8007B0F8 10820019 */  beq        $a0, $v0, .L8007B160
/* 7BCFC 8007B0FC AFBF0010 */   sw        $ra, 0x10($sp)
/* 7BD00 8007B100 28820002 */  slti       $v0, $a0, 0x2
/* 7BD04 8007B104 50400005 */  beql       $v0, $zero, .L8007B11C
/* 7BD08 8007B108 24020002 */   addiu     $v0, $zero, 0x2
/* 7BD0C 8007B10C 10800007 */  beqz       $a0, .L8007B12C
/* 7BD10 8007B110 00000000 */   nop
/* 7BD14 8007B114 0801EC7D */  j          .L8007B1F4
/* 7BD18 8007B118 00000000 */   nop
.L8007B11C:
/* 7BD1C 8007B11C 1082001D */  beq        $a0, $v0, .L8007B194
/* 7BD20 8007B120 00000000 */   nop
/* 7BD24 8007B124 0801EC7D */  j          .L8007B1F4
/* 7BD28 8007B128 00000000 */   nop
.L8007B12C:
/* 7BD2C 8007B12C 3C01800D */  lui        $at, %hi(D_800D5F40)
/* 7BD30 8007B130 D4205F40 */  ldc1       $f0, %lo(D_800D5F40)($at)
/* 7BD34 8007B134 3C01800D */  lui        $at, %hi(D_800D5F48)
/* 7BD38 8007B138 D4225F48 */  ldc1       $f2, %lo(D_800D5F48)($at)
/* 7BD3C 8007B13C 3C01800D */  lui        $at, %hi(D_800D5F50)
/* 7BD40 8007B140 D4245F50 */  ldc1       $f4, %lo(D_800D5F50)($at)
/* 7BD44 8007B144 3C01800D */  lui        $at, %hi(D_800D5F58)
/* 7BD48 8007B148 D4265F58 */  ldc1       $f6, %lo(D_800D5F58)($at)
/* 7BD4C 8007B14C 3C01800D */  lui        $at, %hi(D_800D5F60)
/* 7BD50 8007B150 D4285F60 */  ldc1       $f8, %lo(D_800D5F60)($at)
/* 7BD54 8007B154 3C01800D */  lui        $at, %hi(D_800D5F68)
/* 7BD58 8007B158 0801EC71 */  j          .L8007B1C4
/* 7BD5C 8007B15C D42A5F68 */   ldc1      $f10, %lo(D_800D5F68)($at)
.L8007B160:
/* 7BD60 8007B160 3C01800D */  lui        $at, %hi(D_800D5F70)
/* 7BD64 8007B164 D4205F70 */  ldc1       $f0, %lo(D_800D5F70)($at)
/* 7BD68 8007B168 3C01800D */  lui        $at, %hi(D_800D5F78)
/* 7BD6C 8007B16C D4225F78 */  ldc1       $f2, %lo(D_800D5F78)($at)
/* 7BD70 8007B170 3C01800D */  lui        $at, %hi(D_800D5F80)
/* 7BD74 8007B174 D4245F80 */  ldc1       $f4, %lo(D_800D5F80)($at)
/* 7BD78 8007B178 3C01800D */  lui        $at, %hi(D_800D5F88)
/* 7BD7C 8007B17C D4265F88 */  ldc1       $f6, %lo(D_800D5F88)($at)
/* 7BD80 8007B180 3C01800D */  lui        $at, %hi(D_800D5F90)
/* 7BD84 8007B184 D4285F90 */  ldc1       $f8, %lo(D_800D5F90)($at)
/* 7BD88 8007B188 3C01800D */  lui        $at, %hi(D_800D5F98)
/* 7BD8C 8007B18C 0801EC71 */  j          .L8007B1C4
/* 7BD90 8007B190 D42A5F98 */   ldc1      $f10, %lo(D_800D5F98)($at)
.L8007B194:
/* 7BD94 8007B194 3C01800D */  lui        $at, %hi(D_800D5FA0)
/* 7BD98 8007B198 D4205FA0 */  ldc1       $f0, %lo(D_800D5FA0)($at)
/* 7BD9C 8007B19C 3C01800D */  lui        $at, %hi(D_800D5FA8)
/* 7BDA0 8007B1A0 D4225FA8 */  ldc1       $f2, %lo(D_800D5FA8)($at)
/* 7BDA4 8007B1A4 3C01800D */  lui        $at, %hi(D_800D5FB0)
/* 7BDA8 8007B1A8 D4245FB0 */  ldc1       $f4, %lo(D_800D5FB0)($at)
/* 7BDAC 8007B1AC 3C01800D */  lui        $at, %hi(D_800D5FB8)
/* 7BDB0 8007B1B0 D4265FB8 */  ldc1       $f6, %lo(D_800D5FB8)($at)
/* 7BDB4 8007B1B4 3C01800D */  lui        $at, %hi(D_800D5FC0)
/* 7BDB8 8007B1B8 D4285FC0 */  ldc1       $f8, %lo(D_800D5FC0)($at)
/* 7BDBC 8007B1BC 3C01800D */  lui        $at, %hi(D_800D5FC8)
/* 7BDC0 8007B1C0 D42A5FC8 */  ldc1       $f10, %lo(D_800D5FC8)($at)
.L8007B1C4:
/* 7BDC4 8007B1C4 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 7BDC8 8007B1C8 F42069E0 */  sdc1       $f0, %lo(D_800C69E0)($at)
/* 7BDCC 8007B1CC 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 7BDD0 8007B1D0 F4226B50 */  sdc1       $f2, %lo(D_800C6B50)($at)
/* 7BDD4 8007B1D4 3C01802C */  lui        $at, %hi(D_802C6080)
/* 7BDD8 8007B1D8 F4246080 */  sdc1       $f4, %lo(D_802C6080)($at)
/* 7BDDC 8007B1DC 3C01802F */  lui        $at, %hi(D_802F08C8)
/* 7BDE0 8007B1E0 F42608C8 */  sdc1       $f6, %lo(D_802F08C8)($at)
/* 7BDE4 8007B1E4 3C01802C */  lui        $at, %hi(D_802C6078)
/* 7BDE8 8007B1E8 F4286078 */  sdc1       $f8, %lo(D_802C6078)($at)
/* 7BDEC 8007B1EC 3C01802C */  lui        $at, %hi(D_802C7940)
/* 7BDF0 8007B1F0 F42A7940 */  sdc1       $f10, %lo(D_802C7940)($at)
.L8007B1F4:
/* 7BDF4 8007B1F4 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 7BDF8 8007B1F8 D4206B50 */  ldc1       $f0, %lo(D_800C6B50)($at)
/* 7BDFC 8007B1FC 3C01800C */  lui        $at, %hi(D_800C6AA0)
/* 7BE00 8007B200 0C01EB83 */  jal        func_8007AE0C
/* 7BE04 8007B204 F4206AA0 */   sdc1      $f0, %lo(D_800C6AA0)($at)
/* 7BE08 8007B208 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7BE0C 8007B20C 03E00008 */  jr         $ra
/* 7BE10 8007B210 27BD0018 */   addiu     $sp, $sp, 0x18
/* 7BE14 8007B214 00000000 */  nop
/* 7BE18 8007B218 00000000 */  nop
/* 7BE1C 8007B21C 00000000 */  nop
