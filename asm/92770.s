.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80091B70
/* 92770 80091B70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 92774 80091B74 AFB00010 */  sw         $s0, 0x10($sp)
/* 92778 80091B78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9277C 80091B7C 0C0260E1 */  jal        func_80098384
/* 92780 80091B80 00808021 */   addu      $s0, $a0, $zero
/* 92784 80091B84 3C02802F */  lui        $v0, %hi(D_802F1C18)
/* 92788 80091B88 90421C18 */  lbu        $v0, %lo(D_802F1C18)($v0)
/* 9278C 80091B8C 1040000B */  beqz       $v0, .L80091BBC
/* 92790 80091B90 00000000 */   nop
/* 92794 80091B94 0C024798 */  jal        func_80091E60
/* 92798 80091B98 00002021 */   addu      $a0, $zero, $zero
/* 9279C 80091B9C 3C05802C */  lui        $a1, %hi(D_802C7990)
/* 927A0 80091BA0 24A57990 */  addiu      $a1, $a1, %lo(D_802C7990)
/* 927A4 80091BA4 0C025114 */  jal        func_80094450
/* 927A8 80091BA8 24040001 */   addiu     $a0, $zero, 0x1
/* 927AC 80091BAC 02002021 */  addu       $a0, $s0, $zero
/* 927B0 80091BB0 00002821 */  addu       $a1, $zero, $zero
/* 927B4 80091BB4 0C000B3C */  jal        osRecvMesg
/* 927B8 80091BB8 24060001 */   addiu     $a2, $zero, 0x1
.L80091BBC:
/* 927BC 80091BBC 3C05802C */  lui        $a1, %hi(D_802C7990)
/* 927C0 80091BC0 24A57990 */  addiu      $a1, $a1, %lo(D_802C7990)
/* 927C4 80091BC4 0C025114 */  jal        func_80094450
/* 927C8 80091BC8 00002021 */   addu      $a0, $zero, $zero
/* 927CC 80091BCC 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 927D0 80091BD0 A0201C18 */  sb         $zero, %lo(D_802F1C18)($at)
/* 927D4 80091BD4 0C0260FC */  jal        func_800983F0
/* 927D8 80091BD8 00408021 */   addu      $s0, $v0, $zero
/* 927DC 80091BDC 02001021 */  addu       $v0, $s0, $zero
/* 927E0 80091BE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 927E4 80091BE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 927E8 80091BE8 03E00008 */  jr         $ra
/* 927EC 80091BEC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80091BF0
/* 927F0 80091BF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 927F4 80091BF4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 927F8 80091BF8 00802821 */  addu       $a1, $a0, $zero
/* 927FC 80091BFC 0C02476B */  jal        func_80091DAC
/* 92800 80091C00 27A40010 */   addiu     $a0, $sp, 0x10
/* 92804 80091C04 8FBF0018 */  lw         $ra, 0x18($sp)
/* 92808 80091C08 03E00008 */  jr         $ra
/* 9280C 80091C0C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80091C10
/* 92810 80091C10 3C02800D */  lui        $v0, %hi(D_800C9DA0)
/* 92814 80091C14 8C429DA0 */  lw         $v0, %lo(D_800C9DA0)($v0)
/* 92818 80091C18 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 9281C 80091C1C AFB40070 */  sw         $s4, 0x70($sp)
/* 92820 80091C20 0080A021 */  addu       $s4, $a0, $zero
/* 92824 80091C24 AFB50074 */  sw         $s5, 0x74($sp)
/* 92828 80091C28 00A0A821 */  addu       $s5, $a1, $zero
/* 9282C 80091C2C AFB60078 */  sw         $s6, 0x78($sp)
/* 92830 80091C30 00C0B021 */  addu       $s6, $a2, $zero
/* 92834 80091C34 AFBF007C */  sw         $ra, 0x7C($sp)
/* 92838 80091C38 AFB3006C */  sw         $s3, 0x6C($sp)
/* 9283C 80091C3C AFB20068 */  sw         $s2, 0x68($sp)
/* 92840 80091C40 AFB10064 */  sw         $s1, 0x64($sp)
/* 92844 80091C44 10400003 */  beqz       $v0, .L80091C54
/* 92848 80091C48 AFB00060 */   sw        $s0, 0x60($sp)
/* 9284C 80091C4C 08024761 */  j          .L80091D84
/* 92850 80091C50 00001021 */   addu      $v0, $zero, $zero
.L80091C54:
/* 92854 80091C54 24020001 */  addiu      $v0, $zero, 0x1
/* 92858 80091C58 3C01800D */  lui        $at, %hi(D_800C9DA0)
/* 9285C 80091C5C 0C024034 */  jal        func_800900D0
/* 92860 80091C60 AC229DA0 */   sw        $v0, %lo(D_800C9DA0)($at)
/* 92864 80091C64 00409021 */  addu       $s2, $v0, $zero
/* 92868 80091C68 00609821 */  addu       $s3, $v1, $zero
/* 9286C 80091C6C 56400022 */  bnel       $s2, $zero, .L80091CF8
/* 92870 80091C70 24020004 */   addiu     $v0, $zero, 0x4
/* 92874 80091C74 16400007 */  bnez       $s2, .L80091C94
/* 92878 80091C78 27B10040 */   addiu     $s1, $sp, 0x40
/* 9287C 80091C7C 3C020165 */  lui        $v0, (0x165A0BB >> 16)
/* 92880 80091C80 3442A0BB */  ori        $v0, $v0, (0x165A0BB & 0xFFFF)
/* 92884 80091C84 0053102B */  sltu       $v0, $v0, $s3
/* 92888 80091C88 1440001B */  bnez       $v0, .L80091CF8
/* 9288C 80091C8C 24020004 */   addiu     $v0, $zero, 0x4
/* 92890 80091C90 27B10040 */  addiu      $s1, $sp, 0x40
.L80091C94:
/* 92894 80091C94 02202021 */  addu       $a0, $s1, $zero
/* 92898 80091C98 27B00058 */  addiu      $s0, $sp, 0x58
/* 9289C 80091C9C 02002821 */  addu       $a1, $s0, $zero
/* 928A0 80091CA0 0C0009FC */  jal        func_800027F0
/* 928A4 80091CA4 24060001 */   addiu     $a2, $zero, 0x1
/* 928A8 80091CA8 00004021 */  addu       $t0, $zero, $zero
/* 928AC 80091CAC 00004821 */  addu       $t1, $zero, $zero
/* 928B0 80091CB0 27A40020 */  addiu      $a0, $sp, 0x20
/* 928B4 80091CB4 24060000 */  addiu      $a2, $zero, 0x0
/* 928B8 80091CB8 3C070165 */  lui        $a3, (0x165A0BC >> 16)
/* 928BC 80091CBC 34E7A0BC */  ori        $a3, $a3, (0x165A0BC & 0xFFFF)
/* 928C0 80091CC0 00F3102B */  sltu       $v0, $a3, $s3
/* 928C4 80091CC4 00F33823 */  subu       $a3, $a3, $s3
/* 928C8 80091CC8 00D23023 */  subu       $a2, $a2, $s2
/* 928CC 80091CCC 00C23023 */  subu       $a2, $a2, $v0
/* 928D0 80091CD0 AFA80010 */  sw         $t0, 0x10($sp)
/* 928D4 80091CD4 AFA90014 */  sw         $t1, 0x14($sp)
/* 928D8 80091CD8 AFB10018 */  sw         $s1, 0x18($sp)
/* 928DC 80091CDC 0C02532C */  jal        func_80094CB0
/* 928E0 80091CE0 AFB0001C */   sw        $s0, 0x1C($sp)
/* 928E4 80091CE4 02202021 */  addu       $a0, $s1, $zero
/* 928E8 80091CE8 02002821 */  addu       $a1, $s0, $zero
/* 928EC 80091CEC 0C000B3C */  jal        osRecvMesg
/* 928F0 80091CF0 24060001 */   addiu     $a2, $zero, 0x1
/* 928F4 80091CF4 24020004 */  addiu      $v0, $zero, 0x4
.L80091CF8:
/* 928F8 80091CF8 3C01802D */  lui        $at, %hi(D_802D2A54)
/* 928FC 80091CFC A0222A54 */  sb         $v0, %lo(D_802D2A54)($at)
/* 92900 80091D00 0C024798 */  jal        func_80091E60
/* 92904 80091D04 00002021 */   addu      $a0, $zero, $zero
/* 92908 80091D08 24040001 */  addiu      $a0, $zero, 0x1
/* 9290C 80091D0C 3C11802C */  lui        $s1, %hi(D_802C7990)
/* 92910 80091D10 26317990 */  addiu      $s1, $s1, %lo(D_802C7990)
/* 92914 80091D14 0C025114 */  jal        func_80094450
/* 92918 80091D18 02202821 */   addu      $a1, $s1, $zero
/* 9291C 80091D1C 02802021 */  addu       $a0, $s4, $zero
/* 92920 80091D20 27B00058 */  addiu      $s0, $sp, 0x58
/* 92924 80091D24 02002821 */  addu       $a1, $s0, $zero
/* 92928 80091D28 0C000B3C */  jal        osRecvMesg
/* 9292C 80091D2C 24060001 */   addiu     $a2, $zero, 0x1
/* 92930 80091D30 00002021 */  addu       $a0, $zero, $zero
/* 92934 80091D34 0C025114 */  jal        func_80094450
/* 92938 80091D38 02202821 */   addu      $a1, $s1, $zero
/* 9293C 80091D3C 02802021 */  addu       $a0, $s4, $zero
/* 92940 80091D40 02002821 */  addu       $a1, $s0, $zero
/* 92944 80091D44 24060001 */  addiu      $a2, $zero, 0x1
/* 92948 80091D48 0C000B3C */  jal        osRecvMesg
/* 9294C 80091D4C 00408021 */   addu      $s0, $v0, $zero
/* 92950 80091D50 02A02021 */  addu       $a0, $s5, $zero
/* 92954 80091D54 0C02476B */  jal        func_80091DAC
/* 92958 80091D58 02C02821 */   addu      $a1, $s6, $zero
/* 9295C 80091D5C 3C01802F */  lui        $at, %hi(D_802F1C18)
/* 92960 80091D60 0C0260CC */  jal        func_80098330
/* 92964 80091D64 A0201C18 */   sb        $zero, %lo(D_802F1C18)($at)
/* 92968 80091D68 3C04803F */  lui        $a0, %hi(D_803F5BF8)
/* 9296C 80091D6C 24845BF8 */  addiu      $a0, $a0, %lo(D_803F5BF8)
/* 92970 80091D70 3C05802F */  lui        $a1, %hi(D_802F2204)
/* 92974 80091D74 24A52204 */  addiu      $a1, $a1, %lo(D_802F2204)
/* 92978 80091D78 0C0009FC */  jal        func_800027F0
/* 9297C 80091D7C 24060001 */   addiu     $a2, $zero, 0x1
/* 92980 80091D80 02001021 */  addu       $v0, $s0, $zero
.L80091D84:
/* 92984 80091D84 8FBF007C */  lw         $ra, 0x7C($sp)
/* 92988 80091D88 8FB60078 */  lw         $s6, 0x78($sp)
/* 9298C 80091D8C 8FB50074 */  lw         $s5, 0x74($sp)
/* 92990 80091D90 8FB40070 */  lw         $s4, 0x70($sp)
/* 92994 80091D94 8FB3006C */  lw         $s3, 0x6C($sp)
/* 92998 80091D98 8FB20068 */  lw         $s2, 0x68($sp)
/* 9299C 80091D9C 8FB10064 */  lw         $s1, 0x64($sp)
/* 929A0 80091DA0 8FB00060 */  lw         $s0, 0x60($sp)
/* 929A4 80091DA4 03E00008 */  jr         $ra
/* 929A8 80091DA8 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_80091DAC
/* 929AC 80091DAC 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 929B0 80091DB0 00805821 */  addu       $t3, $a0, $zero
/* 929B4 80091DB4 00A04821 */  addu       $t1, $a1, $zero
/* 929B8 80091DB8 00005021 */  addu       $t2, $zero, $zero
/* 929BC 80091DBC 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 929C0 80091DC0 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 929C4 80091DC4 3C08802C */  lui        $t0, %hi(D_802C7990)
/* 929C8 80091DC8 25087990 */  addiu      $t0, $t0, %lo(D_802C7990)
/* 929CC 80091DCC 18400021 */  blez       $v0, .L80091E54
/* 929D0 80091DD0 00003821 */   addu      $a3, $zero, $zero
/* 929D4 80091DD4 240C0001 */  addiu      $t4, $zero, 0x1
/* 929D8 80091DD8 24A60002 */  addiu      $a2, $a1, 0x2
.L80091DDC:
/* 929DC 80091DDC 89020000 */  lwl        $v0, 0x0($t0)
/* 929E0 80091DE0 99020003 */  lwr        $v0, 0x3($t0)
/* 929E4 80091DE4 89030004 */  lwl        $v1, 0x4($t0)
/* 929E8 80091DE8 99030007 */  lwr        $v1, 0x7($t0)
/* 929EC 80091DEC ABA20000 */  swl        $v0, 0x0($sp)
/* 929F0 80091DF0 BBA20003 */  swr        $v0, 0x3($sp)
/* 929F4 80091DF4 ABA30004 */  swl        $v1, 0x4($sp)
/* 929F8 80091DF8 BBA30007 */  swr        $v1, 0x7($sp)
/* 929FC 80091DFC 93A20002 */  lbu        $v0, 0x2($sp)
/* 92A00 80091E00 304200C0 */  andi       $v0, $v0, 0xC0
/* 92A04 80091E04 00021102 */  srl        $v0, $v0, 4
/* 92A08 80091E08 1440000A */  bnez       $v0, .L80091E34
/* 92A0C 80091E0C A0C20001 */   sb        $v0, 0x1($a2)
/* 92A10 80091E10 93A20005 */  lbu        $v0, 0x5($sp)
/* 92A14 80091E14 93A30004 */  lbu        $v1, 0x4($sp)
/* 92A18 80091E18 00021200 */  sll        $v0, $v0, 8
/* 92A1C 80091E1C 00621825 */  or         $v1, $v1, $v0
/* 92A20 80091E20 A5230000 */  sh         $v1, 0x0($t1)
/* 92A24 80091E24 93A30006 */  lbu        $v1, 0x6($sp)
/* 92A28 80091E28 00EC1004 */  sllv       $v0, $t4, $a3
/* 92A2C 80091E2C 01425025 */  or         $t2, $t2, $v0
/* 92A30 80091E30 A0C30000 */  sb         $v1, 0x0($a2)
.L80091E34:
/* 92A34 80091E34 24E70001 */  addiu      $a3, $a3, 0x1
/* 92A38 80091E38 25080008 */  addiu      $t0, $t0, 0x8
/* 92A3C 80091E3C 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 92A40 80091E40 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 92A44 80091E44 24C60004 */  addiu      $a2, $a2, 0x4
/* 92A48 80091E48 00E2102A */  slt        $v0, $a3, $v0
/* 92A4C 80091E4C 1440FFE3 */  bnez       $v0, .L80091DDC
/* 92A50 80091E50 25290004 */   addiu     $t1, $t1, 0x4
.L80091E54:
/* 92A54 80091E54 A16A0000 */  sb         $t2, 0x0($t3)
/* 92A58 80091E58 03E00008 */  jr         $ra
/* 92A5C 80091E5C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80091E60
/* 92A60 80091E60 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 92A64 80091E64 00802821 */  addu       $a1, $a0, $zero
/* 92A68 80091E68 2406000E */  addiu      $a2, $zero, 0xE
/* 92A6C 80091E6C 3C02802C */  lui        $v0, %hi(D_802C79C8)
/* 92A70 80091E70 244279C8 */  addiu      $v0, $v0, %lo(D_802C79C8)
.L80091E74:
/* 92A74 80091E74 AC400000 */  sw         $zero, 0x0($v0)
/* 92A78 80091E78 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 92A7C 80091E7C 04C1FFFD */  bgez       $a2, .L80091E74
/* 92A80 80091E80 2442FFFC */   addiu     $v0, $v0, -0x4
/* 92A84 80091E84 3C03802C */  lui        $v1, %hi(D_802C79CC)
/* 92A88 80091E88 246379CC */  addiu      $v1, $v1, %lo(D_802C79CC)
/* 92A8C 80091E8C 2467FFC4 */  addiu      $a3, $v1, -0x3C
/* 92A90 80091E90 3C04802D */  lui        $a0, %hi(D_802D2A54)
/* 92A94 80091E94 90842A54 */  lbu        $a0, %lo(D_802D2A54)($a0)
/* 92A98 80091E98 00003021 */  addu       $a2, $zero, $zero
/* 92A9C 80091E9C 24020001 */  addiu      $v0, $zero, 0x1
/* 92AA0 80091EA0 AC620000 */  sw         $v0, 0x0($v1)
/* 92AA4 80091EA4 240300FF */  addiu      $v1, $zero, 0xFF
/* 92AA8 80091EA8 24020001 */  addiu      $v0, $zero, 0x1
/* 92AAC 80091EAC A3A20001 */  sb         $v0, 0x1($sp)
/* 92AB0 80091EB0 24020003 */  addiu      $v0, $zero, 0x3
/* 92AB4 80091EB4 A3A30000 */  sb         $v1, 0x0($sp)
/* 92AB8 80091EB8 A3A20002 */  sb         $v0, 0x2($sp)
/* 92ABC 80091EBC A3A50003 */  sb         $a1, 0x3($sp)
/* 92AC0 80091EC0 A3A30004 */  sb         $v1, 0x4($sp)
/* 92AC4 80091EC4 A3A30005 */  sb         $v1, 0x5($sp)
/* 92AC8 80091EC8 A3A30006 */  sb         $v1, 0x6($sp)
/* 92ACC 80091ECC 1880000F */  blez       $a0, .L80091F0C
/* 92AD0 80091ED0 A3A30007 */   sb        $v1, 0x7($sp)
.L80091ED4:
/* 92AD4 80091ED4 8BA20000 */  lwl        $v0, 0x0($sp)
/* 92AD8 80091ED8 9BA20003 */  lwr        $v0, 0x3($sp)
/* 92ADC 80091EDC 8BA30004 */  lwl        $v1, 0x4($sp)
/* 92AE0 80091EE0 9BA30007 */  lwr        $v1, 0x7($sp)
/* 92AE4 80091EE4 A8E20000 */  swl        $v0, 0x0($a3)
/* 92AE8 80091EE8 B8E20003 */  swr        $v0, 0x3($a3)
/* 92AEC 80091EEC A8E30004 */  swl        $v1, 0x4($a3)
/* 92AF0 80091EF0 B8E30007 */  swr        $v1, 0x7($a3)
/* 92AF4 80091EF4 3C02802D */  lui        $v0, %hi(D_802D2A54)
/* 92AF8 80091EF8 90422A54 */  lbu        $v0, %lo(D_802D2A54)($v0)
/* 92AFC 80091EFC 24C60001 */  addiu      $a2, $a2, 0x1
/* 92B00 80091F00 00C2102A */  slt        $v0, $a2, $v0
/* 92B04 80091F04 1440FFF3 */  bnez       $v0, .L80091ED4
/* 92B08 80091F08 24E70008 */   addiu     $a3, $a3, 0x8
.L80091F0C:
/* 92B0C 80091F0C 240200FE */  addiu      $v0, $zero, 0xFE
/* 92B10 80091F10 A0E20000 */  sb         $v0, 0x0($a3)
/* 92B14 80091F14 03E00008 */  jr         $ra
/* 92B18 80091F18 27BD0010 */   addiu     $sp, $sp, 0x10
/* 92B1C 80091F1C 00000000 */  nop
