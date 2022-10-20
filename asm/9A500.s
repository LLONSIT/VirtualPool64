.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80099900
/* 9A500 80099900 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9A504 80099904 AFB50024 */  sw         $s5, 0x24($sp)
/* 9A508 80099908 0080A821 */  addu       $s5, $a0, $zero
/* 9A50C 8009990C AFB20018 */  sw         $s2, 0x18($sp)
/* 9A510 80099910 00A09021 */  addu       $s2, $a1, $zero
/* 9A514 80099914 AFB00010 */  sw         $s0, 0x10($sp)
/* 9A518 80099918 00008021 */  addu       $s0, $zero, $zero
/* 9A51C 8009991C AFB7002C */  sw         $s7, 0x2C($sp)
/* 9A520 80099920 00E0B821 */  addu       $s7, $a3, $zero
/* 9A524 80099924 AFB40020 */  sw         $s4, 0x20($sp)
/* 9A528 80099928 00C0A021 */  addu       $s4, $a2, $zero
/* 9A52C 8009992C AFBF0030 */  sw         $ra, 0x30($sp)
/* 9A530 80099930 AFB60028 */  sw         $s6, 0x28($sp)
/* 9A534 80099934 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9A538 80099938 0C0260E1 */  jal        func_80098384
/* 9A53C 8009993C AFB10014 */   sw        $s1, 0x14($sp)
/* 9A540 80099940 3C02802F */  lui        $v0, %hi(D_802F1C18)
/* 9A544 80099944 90421C18 */  lbu        $v0, %lo(D_802F1C18)($v0)
/* 9A548 80099948 3C11803F */  lui        $s1, %hi(D_803F5AF0)
/* 9A54C 8009994C 26315AF0 */  addiu      $s1, $s1, %lo(D_803F5AF0)
/* 9A550 80099950 24130002 */  addiu      $s3, $zero, 0x2
/* 9A554 80099954 14530005 */  bne        $v0, $s3, .L8009996C
/* 9A558 80099958 24020002 */   addiu     $v0, $zero, 0x2
/* 9A55C 8009995C 3C02800D */  lui        $v0, %hi(D_800CB3D0)
/* 9A560 80099960 8C42B3D0 */  lw         $v0, %lo(D_800CB3D0)($v0)
/* 9A564 80099964 1052001C */  beq        $v0, $s2, .L800999D8
/* 9A568 80099968 24020002 */   addiu     $v0, $zero, 0x2
.L8009996C:
/* 9A56C 8009996C 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 9A570 80099970 A0221C18 */  sb         $v0, %lo(D_802F1C18)($at)
/* 9A574 80099974 0212102A */  slt        $v0, $s0, $s2
/* 9A578 80099978 3C01800D */  lui        $at, %hi(D_800CB3D0)
/* 9A57C 8009997C AC32B3D0 */  sw         $s2, %lo(D_800CB3D0)($at)
/* 9A580 80099980 10400006 */  beqz       $v0, .L8009999C
/* 9A584 80099984 00001821 */   addu      $v1, $zero, $zero
.L80099988:
/* 9A588 80099988 A2200000 */  sb         $zero, 0x0($s1)
/* 9A58C 8009998C 24630001 */  addiu      $v1, $v1, 0x1
/* 9A590 80099990 0072102A */  slt        $v0, $v1, $s2
/* 9A594 80099994 1440FFFC */  bnez       $v0, .L80099988
/* 9A598 80099998 26310001 */   addiu     $s1, $s1, 0x1
.L8009999C:
/* 9A59C 8009999C 24020001 */  addiu      $v0, $zero, 0x1
/* 9A5A0 800999A0 240300FF */  addiu      $v1, $zero, 0xFF
/* 9A5A4 800999A4 3C01803F */  lui        $at, %hi(D_803F5B2C)
/* 9A5A8 800999A8 AC225B2C */  sw         $v0, %lo(D_803F5B2C)($at)
/* 9A5AC 800999AC 24020003 */  addiu      $v0, $zero, 0x3
/* 9A5B0 800999B0 A2220001 */  sb         $v0, 0x1($s1)
/* 9A5B4 800999B4 24020021 */  addiu      $v0, $zero, 0x21
/* 9A5B8 800999B8 A2220002 */  sb         $v0, 0x2($s1)
/* 9A5BC 800999BC 24020002 */  addiu      $v0, $zero, 0x2
/* 9A5C0 800999C0 A2220003 */  sb         $v0, 0x3($s1)
/* 9A5C4 800999C4 240200FE */  addiu      $v0, $zero, 0xFE
/* 9A5C8 800999C8 A2230000 */  sb         $v1, 0x0($s1)
/* 9A5CC 800999CC A2230026 */  sb         $v1, 0x26($s1)
/* 9A5D0 800999D0 08026677 */  j          .L800999DC
/* 9A5D4 800999D4 A2220027 */   sb        $v0, 0x27($s1)
.L800999D8:
/* 9A5D8 800999D8 02518821 */  addu       $s1, $s2, $s1
.L800999DC:
/* 9A5DC 800999DC 3284FFFF */  andi       $a0, $s4, 0xFFFF
/* 9A5E0 800999E0 000410C2 */  srl        $v0, $a0, 3
/* 9A5E4 800999E4 0C026738 */  jal        func_80099CE0
/* 9A5E8 800999E8 A2220004 */   sb        $v0, 0x4($s1)
/* 9A5EC 800999EC 24040001 */  addiu      $a0, $zero, 0x1
/* 9A5F0 800999F0 3C05803F */  lui        $a1, %hi(D_803F5AF0)
/* 9A5F4 800999F4 24A55AF0 */  addiu      $a1, $a1, %lo(D_803F5AF0)
/* 9A5F8 800999F8 00141940 */  sll        $v1, $s4, 5
/* 9A5FC 800999FC 00431025 */  or         $v0, $v0, $v1
/* 9A600 80099A00 0C025114 */  jal        func_80094450
/* 9A604 80099A04 A2220005 */   sb        $v0, 0x5($s1)
/* 9A608 80099A08 02A02021 */  addu       $a0, $s5, $zero
/* 9A60C 80099A0C 00002821 */  addu       $a1, $zero, $zero
/* 9A610 80099A10 0C000B3C */  jal        osRecvMesg
/* 9A614 80099A14 24060001 */   addiu     $a2, $zero, 0x1
/* 9A618 80099A18 26340006 */  addiu      $s4, $s1, 0x6
/* 9A61C 80099A1C 24160004 */  addiu      $s6, $zero, 0x4
.L80099A20:
/* 9A620 80099A20 3C05803F */  lui        $a1, %hi(D_803F5AF0)
/* 9A624 80099A24 24A55AF0 */  addiu      $a1, $a1, %lo(D_803F5AF0)
/* 9A628 80099A28 0C025114 */  jal        func_80094450
/* 9A62C 80099A2C 00002021 */   addu      $a0, $zero, $zero
/* 9A630 80099A30 02A02021 */  addu       $a0, $s5, $zero
/* 9A634 80099A34 00002821 */  addu       $a1, $zero, $zero
/* 9A638 80099A38 0C000B3C */  jal        osRecvMesg
/* 9A63C 80099A3C 24060001 */   addiu     $a2, $zero, 0x1
/* 9A640 80099A40 92220002 */  lbu        $v0, 0x2($s1)
/* 9A644 80099A44 304200C0 */  andi       $v0, $v0, 0xC0
/* 9A648 80099A48 00028102 */  srl        $s0, $v0, 4
/* 9A64C 80099A4C 56000012 */  bnel       $s0, $zero, .L80099A98
/* 9A650 80099A50 24100001 */   addiu     $s0, $zero, 0x1
/* 9A654 80099A54 0C026753 */  jal        func_80099D4C
/* 9A658 80099A58 02802021 */   addu      $a0, $s4, $zero
/* 9A65C 80099A5C 92230026 */  lbu        $v1, 0x26($s1)
/* 9A660 80099A60 304200FF */  andi       $v0, $v0, 0xFF
/* 9A664 80099A64 10430008 */  beq        $v0, $v1, .L80099A88
/* 9A668 80099A68 02A02021 */   addu      $a0, $s5, $zero
/* 9A66C 80099A6C 0C026774 */  jal        func_80099DD0
/* 9A670 80099A70 02402821 */   addu      $a1, $s2, $zero
/* 9A674 80099A74 00408021 */  addu       $s0, $v0, $zero
/* 9A678 80099A78 1600000B */  bnez       $s0, .L80099AA8
/* 9A67C 80099A7C 00000000 */   nop
/* 9A680 80099A80 080266A6 */  j          .L80099A98
/* 9A684 80099A84 24100004 */   addiu     $s0, $zero, 0x4
.L80099A88:
/* 9A688 80099A88 02802021 */  addu       $a0, $s4, $zero
/* 9A68C 80099A8C 02E02821 */  addu       $a1, $s7, $zero
/* 9A690 80099A90 0C024854 */  jal        func_80092150
/* 9A694 80099A94 24060020 */   addiu     $a2, $zero, 0x20
.L80099A98:
/* 9A698 80099A98 16160003 */  bne        $s0, $s6, .L80099AA8
/* 9A69C 80099A9C 02601021 */   addu      $v0, $s3, $zero
/* 9A6A0 80099AA0 0441FFDF */  bgez       $v0, .L80099A20
/* 9A6A4 80099AA4 2673FFFF */   addiu     $s3, $s3, -0x1
.L80099AA8:
/* 9A6A8 80099AA8 0C0260FC */  jal        func_800983F0
/* 9A6AC 80099AAC 00000000 */   nop
/* 9A6B0 80099AB0 02001021 */  addu       $v0, $s0, $zero
/* 9A6B4 80099AB4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 9A6B8 80099AB8 8FB7002C */  lw         $s7, 0x2C($sp)
/* 9A6BC 80099ABC 8FB60028 */  lw         $s6, 0x28($sp)
/* 9A6C0 80099AC0 8FB50024 */  lw         $s5, 0x24($sp)
/* 9A6C4 80099AC4 8FB40020 */  lw         $s4, 0x20($sp)
/* 9A6C8 80099AC8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9A6CC 80099ACC 8FB20018 */  lw         $s2, 0x18($sp)
/* 9A6D0 80099AD0 8FB10014 */  lw         $s1, 0x14($sp)
/* 9A6D4 80099AD4 8FB00010 */  lw         $s0, 0x10($sp)
/* 9A6D8 80099AD8 03E00008 */  jr         $ra
/* 9A6DC 80099ADC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80099AE0
/* 9A6E0 80099AE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9A6E4 80099AE4 8FA20048 */  lw         $v0, 0x48($sp)
/* 9A6E8 80099AE8 AFB40028 */  sw         $s4, 0x28($sp)
/* 9A6EC 80099AEC 0080A021 */  addu       $s4, $a0, $zero
/* 9A6F0 80099AF0 AFB20020 */  sw         $s2, 0x20($sp)
/* 9A6F4 80099AF4 00A09021 */  addu       $s2, $a1, $zero
/* 9A6F8 80099AF8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 9A6FC 80099AFC 3C11803F */  lui        $s1, %hi(D_803F5AF0)
/* 9A700 80099B00 26315AF0 */  addiu      $s1, $s1, %lo(D_803F5AF0)
/* 9A704 80099B04 AFB30024 */  sw         $s3, 0x24($sp)
/* 9A708 80099B08 24130002 */  addiu      $s3, $zero, 0x2
/* 9A70C 80099B0C AFB5002C */  sw         $s5, 0x2C($sp)
/* 9A710 80099B10 00E0A821 */  addu       $s5, $a3, $zero
/* 9A714 80099B14 AFB00018 */  sw         $s0, 0x18($sp)
/* 9A718 80099B18 00C08021 */  addu       $s0, $a2, $zero
/* 9A71C 80099B1C 3204FFFF */  andi       $a0, $s0, 0xFFFF
/* 9A720 80099B20 2C830007 */  sltiu      $v1, $a0, 0x7
/* 9A724 80099B24 AFBF0034 */  sw         $ra, 0x34($sp)
/* 9A728 80099B28 38420001 */  xori       $v0, $v0, 0x1
/* 9A72C 80099B2C 0002102B */  sltu       $v0, $zero, $v0
/* 9A730 80099B30 00431024 */  and        $v0, $v0, $v1
/* 9A734 80099B34 10400003 */  beqz       $v0, .L80099B44
/* 9A738 80099B38 AFB60030 */   sw        $s6, 0x30($sp)
/* 9A73C 80099B3C 1480005C */  bnez       $a0, .L80099CB0
/* 9A740 80099B40 00001021 */   addu      $v0, $zero, $zero
.L80099B44:
/* 9A744 80099B44 0C0260E1 */  jal        func_80098384
/* 9A748 80099B48 00000000 */   nop
/* 9A74C 80099B4C 3C03802F */  lui        $v1, %hi(D_802F1C18)
/* 9A750 80099B50 90631C18 */  lbu        $v1, %lo(D_802F1C18)($v1)
/* 9A754 80099B54 24020003 */  addiu      $v0, $zero, 0x3
/* 9A758 80099B58 14620005 */  bne        $v1, $v0, .L80099B70
/* 9A75C 80099B5C 24020003 */   addiu     $v0, $zero, 0x3
/* 9A760 80099B60 3C02800D */  lui        $v0, %hi(D_800CB3D0)
/* 9A764 80099B64 8C42B3D0 */  lw         $v0, %lo(D_800CB3D0)($v0)
/* 9A768 80099B68 1052001B */  beq        $v0, $s2, .L80099BD8
/* 9A76C 80099B6C 24020003 */   addiu     $v0, $zero, 0x3
.L80099B70:
/* 9A770 80099B70 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 9A774 80099B74 A0221C18 */  sb         $v0, %lo(D_802F1C18)($at)
/* 9A778 80099B78 3C01800D */  lui        $at, %hi(D_800CB3D0)
/* 9A77C 80099B7C AC32B3D0 */  sw         $s2, %lo(D_800CB3D0)($at)
/* 9A780 80099B80 1A400006 */  blez       $s2, .L80099B9C
/* 9A784 80099B84 00001821 */   addu      $v1, $zero, $zero
.L80099B88:
/* 9A788 80099B88 A2200000 */  sb         $zero, 0x0($s1)
/* 9A78C 80099B8C 24630001 */  addiu      $v1, $v1, 0x1
/* 9A790 80099B90 0072102A */  slt        $v0, $v1, $s2
/* 9A794 80099B94 1440FFFC */  bnez       $v0, .L80099B88
/* 9A798 80099B98 26310001 */   addiu     $s1, $s1, 0x1
.L80099B9C:
/* 9A79C 80099B9C 24020001 */  addiu      $v0, $zero, 0x1
/* 9A7A0 80099BA0 240300FF */  addiu      $v1, $zero, 0xFF
/* 9A7A4 80099BA4 3C01803F */  lui        $at, %hi(D_803F5B2C)
/* 9A7A8 80099BA8 AC225B2C */  sw         $v0, %lo(D_803F5B2C)($at)
/* 9A7AC 80099BAC 24020023 */  addiu      $v0, $zero, 0x23
/* 9A7B0 80099BB0 A2220001 */  sb         $v0, 0x1($s1)
/* 9A7B4 80099BB4 24020001 */  addiu      $v0, $zero, 0x1
/* 9A7B8 80099BB8 A2220002 */  sb         $v0, 0x2($s1)
/* 9A7BC 80099BBC 24020003 */  addiu      $v0, $zero, 0x3
/* 9A7C0 80099BC0 A2220003 */  sb         $v0, 0x3($s1)
/* 9A7C4 80099BC4 240200FE */  addiu      $v0, $zero, 0xFE
/* 9A7C8 80099BC8 A2230000 */  sb         $v1, 0x0($s1)
/* 9A7CC 80099BCC A2230026 */  sb         $v1, 0x26($s1)
/* 9A7D0 80099BD0 080266F7 */  j          .L80099BDC
/* 9A7D4 80099BD4 A2220027 */   sb        $v0, 0x27($s1)
.L80099BD8:
/* 9A7D8 80099BD8 02328821 */  addu       $s1, $s1, $s2
.L80099BDC:
/* 9A7DC 80099BDC 3204FFFF */  andi       $a0, $s0, 0xFFFF
/* 9A7E0 80099BE0 000410C2 */  srl        $v0, $a0, 3
/* 9A7E4 80099BE4 0C026738 */  jal        func_80099CE0
/* 9A7E8 80099BE8 A2220004 */   sb        $v0, 0x4($s1)
/* 9A7EC 80099BEC 02A02021 */  addu       $a0, $s5, $zero
/* 9A7F0 80099BF0 26250006 */  addiu      $a1, $s1, 0x6
/* 9A7F4 80099BF4 24060020 */  addiu      $a2, $zero, 0x20
/* 9A7F8 80099BF8 00101940 */  sll        $v1, $s0, 5
/* 9A7FC 80099BFC 00431025 */  or         $v0, $v0, $v1
/* 9A800 80099C00 0C024854 */  jal        func_80092150
/* 9A804 80099C04 A2220005 */   sb        $v0, 0x5($s1)
/* 9A808 80099C08 3C05803F */  lui        $a1, %hi(D_803F5AF0)
/* 9A80C 80099C0C 24A55AF0 */  addiu      $a1, $a1, %lo(D_803F5AF0)
/* 9A810 80099C10 0C025114 */  jal        func_80094450
/* 9A814 80099C14 24040001 */   addiu     $a0, $zero, 0x1
/* 9A818 80099C18 0C026753 */  jal        func_80099D4C
/* 9A81C 80099C1C 02A02021 */   addu      $a0, $s5, $zero
/* 9A820 80099C20 02802021 */  addu       $a0, $s4, $zero
/* 9A824 80099C24 00002821 */  addu       $a1, $zero, $zero
/* 9A828 80099C28 24060001 */  addiu      $a2, $zero, 0x1
/* 9A82C 80099C2C 0C000B3C */  jal        osRecvMesg
/* 9A830 80099C30 00408021 */   addu      $s0, $v0, $zero
/* 9A834 80099C34 321500FF */  andi       $s5, $s0, 0xFF
/* 9A838 80099C38 24160004 */  addiu      $s6, $zero, 0x4
.L80099C3C:
/* 9A83C 80099C3C 3C05803F */  lui        $a1, %hi(D_803F5AF0)
/* 9A840 80099C40 24A55AF0 */  addiu      $a1, $a1, %lo(D_803F5AF0)
/* 9A844 80099C44 0C025114 */  jal        func_80094450
/* 9A848 80099C48 00002021 */   addu      $a0, $zero, $zero
/* 9A84C 80099C4C 02802021 */  addu       $a0, $s4, $zero
/* 9A850 80099C50 00002821 */  addu       $a1, $zero, $zero
/* 9A854 80099C54 0C000B3C */  jal        osRecvMesg
/* 9A858 80099C58 24060001 */   addiu     $a2, $zero, 0x1
/* 9A85C 80099C5C 92220002 */  lbu        $v0, 0x2($s1)
/* 9A860 80099C60 304200C0 */  andi       $v0, $v0, 0xC0
/* 9A864 80099C64 00028102 */  srl        $s0, $v0, 4
/* 9A868 80099C68 5600000A */  bnel       $s0, $zero, .L80099C94
/* 9A86C 80099C6C 24100001 */   addiu     $s0, $zero, 0x1
/* 9A870 80099C70 92220026 */  lbu        $v0, 0x26($s1)
/* 9A874 80099C74 12A20007 */  beq        $s5, $v0, .L80099C94
/* 9A878 80099C78 02802021 */   addu      $a0, $s4, $zero
/* 9A87C 80099C7C 0C026774 */  jal        func_80099DD0
/* 9A880 80099C80 02402821 */   addu      $a1, $s2, $zero
/* 9A884 80099C84 00408021 */  addu       $s0, $v0, $zero
/* 9A888 80099C88 16000006 */  bnez       $s0, .L80099CA4
/* 9A88C 80099C8C 00000000 */   nop
/* 9A890 80099C90 24100004 */  addiu      $s0, $zero, 0x4
.L80099C94:
/* 9A894 80099C94 16160003 */  bne        $s0, $s6, .L80099CA4
/* 9A898 80099C98 02601021 */   addu      $v0, $s3, $zero
/* 9A89C 80099C9C 0441FFE7 */  bgez       $v0, .L80099C3C
/* 9A8A0 80099CA0 2673FFFF */   addiu     $s3, $s3, -0x1
.L80099CA4:
/* 9A8A4 80099CA4 0C0260FC */  jal        func_800983F0
/* 9A8A8 80099CA8 00000000 */   nop
/* 9A8AC 80099CAC 02001021 */  addu       $v0, $s0, $zero
.L80099CB0:
/* 9A8B0 80099CB0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9A8B4 80099CB4 8FB60030 */  lw         $s6, 0x30($sp)
/* 9A8B8 80099CB8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 9A8BC 80099CBC 8FB40028 */  lw         $s4, 0x28($sp)
/* 9A8C0 80099CC0 8FB30024 */  lw         $s3, 0x24($sp)
/* 9A8C4 80099CC4 8FB20020 */  lw         $s2, 0x20($sp)
/* 9A8C8 80099CC8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 9A8CC 80099CCC 8FB00018 */  lw         $s0, 0x18($sp)
/* 9A8D0 80099CD0 03E00008 */  jr         $ra
/* 9A8D4 80099CD4 27BD0038 */   addiu     $sp, $sp, 0x38
/* 9A8D8 80099CD8 00000000 */  nop
/* 9A8DC 80099CDC 00000000 */  nop
