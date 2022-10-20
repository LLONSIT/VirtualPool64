.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000DC10
/* E810 8000DC10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E814 8000DC14 AFB7002C */  sw         $s7, 0x2C($sp)
/* E818 8000DC18 0000B821 */  addu       $s7, $zero, $zero
/* E81C 8000DC1C 24020001 */  addiu      $v0, $zero, 0x1
/* E820 8000DC20 AFB00010 */  sw         $s0, 0x10($sp)
/* E824 8000DC24 3C10802A */  lui        $s0, %hi(D_802A0510)
/* E828 8000DC28 26100510 */  addiu      $s0, $s0, %lo(D_802A0510)
/* E82C 8000DC2C 02002021 */  addu       $a0, $s0, $zero
/* E830 8000DC30 00002821 */  addu       $a1, $zero, $zero
/* E834 8000DC34 AFBF0034 */  sw         $ra, 0x34($sp)
/* E838 8000DC38 AFBE0030 */  sw         $fp, 0x30($sp)
/* E83C 8000DC3C AFB60028 */  sw         $s6, 0x28($sp)
/* E840 8000DC40 AFB50024 */  sw         $s5, 0x24($sp)
/* E844 8000DC44 AFB40020 */  sw         $s4, 0x20($sp)
/* E848 8000DC48 AFB3001C */  sw         $s3, 0x1C($sp)
/* E84C 8000DC4C AFB20018 */  sw         $s2, 0x18($sp)
/* E850 8000DC50 AFB10014 */  sw         $s1, 0x14($sp)
/* E854 8000DC54 3C01800B */  lui        $at, %hi(D_800ABADC)
/* E858 8000DC58 AC22BADC */  sw         $v0, %lo(D_800ABADC)($at)
/* E85C 8000DC5C 0C026D3C */  jal        func_8009B4F0
/* E860 8000DC60 240601A0 */   addiu     $a2, $zero, 0x1A0
/* E864 8000DC64 0C001112 */  jal        __osGetActiveQueue
/* E868 8000DC68 00000000 */   nop
/* E86C 8000DC6C 0040B021 */  addu       $s6, $v0, $zero
/* E870 8000DC70 16C00003 */  bnez       $s6, .L8000DC80
/* E874 8000DC74 00008821 */   addu      $s1, $zero, $zero
/* E878 8000DC78 08003755 */  j          .L8000DD54
/* E87C 8000DC7C 2402FFFC */   addiu     $v0, $zero, -0x4
.L8000DC80:
/* E880 8000DC80 0000A821 */  addu       $s5, $zero, $zero
/* E884 8000DC84 0200F021 */  addu       $fp, $s0, $zero
/* E888 8000DC88 03C0A021 */  addu       $s4, $fp, $zero
.L8000DC8C:
/* E88C 8000DC8C 02361007 */  srav       $v0, $s6, $s1
/* E890 8000DC90 30420001 */  andi       $v0, $v0, 0x1
/* E894 8000DC94 10400029 */  beqz       $v0, .L8000DD3C
/* E898 8000DC98 02802021 */   addu      $a0, $s4, $zero
/* E89C 8000DC9C 0C001262 */  jal        func_80004988
/* E8A0 8000DCA0 02202821 */   addu      $a1, $s1, $zero
/* E8A4 8000DCA4 00408021 */  addu       $s0, $v0, $zero
/* E8A8 8000DCA8 24070002 */  addiu      $a3, $zero, 0x2
/* E8AC 8000DCAC 1607000B */  bne        $s0, $a3, .L8000DCDC
/* E8B0 8000DCB0 00000000 */   nop
/* E8B4 8000DCB4 02A09021 */  addu       $s2, $s5, $zero
/* E8B8 8000DCB8 24130002 */  addiu      $s3, $zero, 0x2
.L8000DCBC:
/* E8BC 8000DCBC 0C00111C */  jal        func_80004470
/* E8C0 8000DCC0 00000000 */   nop
/* E8C4 8000DCC4 025E2021 */  addu       $a0, $s2, $fp
/* E8C8 8000DCC8 0C001262 */  jal        func_80004988
/* E8CC 8000DCCC 02202821 */   addu      $a1, $s1, $zero
/* E8D0 8000DCD0 00408021 */  addu       $s0, $v0, $zero
/* E8D4 8000DCD4 1213FFF9 */  beq        $s0, $s3, .L8000DCBC
/* E8D8 8000DCD8 00000000 */   nop
.L8000DCDC:
/* E8DC 8000DCDC 1600000B */  bnez       $s0, .L8000DD0C
/* E8E0 8000DCE0 24070001 */   addiu     $a3, $zero, 0x1
/* E8E4 8000DCE4 3C03800B */  lui        $v1, %hi(D_800ABAAC)
/* E8E8 8000DCE8 9063BAAC */  lbu        $v1, %lo(D_800ABAAC)($v1)
/* E8EC 8000DCEC 02271004 */  sllv       $v0, $a3, $s1
/* E8F0 8000DCF0 3C01800B */  lui        $at, %hi(D_800ABAA4)
/* E8F4 8000DCF4 AC27BAA4 */  sw         $a3, %lo(D_800ABAA4)($at)
/* E8F8 8000DCF8 00621825 */  or         $v1, $v1, $v0
/* E8FC 8000DCFC 3C01800B */  lui        $at, %hi(D_800ABAAC)
/* E900 8000DD00 A023BAAC */  sb         $v1, %lo(D_800ABAAC)($at)
/* E904 8000DD04 08003750 */  j          .L8000DD40
/* E908 8000DD08 26B50068 */   addiu     $s5, $s5, 0x68
.L8000DD0C:
/* E90C 8000DD0C 5620000C */  bnel       $s1, $zero, .L8000DD40
/* E910 8000DD10 26B50068 */   addiu     $s5, $s5, 0x68
/* E914 8000DD14 2407000A */  addiu      $a3, $zero, 0xA
/* E918 8000DD18 56070008 */  bnel       $s0, $a3, .L8000DD3C
/* E91C 8000DD1C 0200B821 */   addu      $s7, $s0, $zero
/* E920 8000DD20 3C04802A */  lui        $a0, %hi(D_802A0510)
/* E924 8000DD24 24840510 */  addiu      $a0, $a0, %lo(D_802A0510)
/* E928 8000DD28 0C001341 */  jal        func_80004D04
/* E92C 8000DD2C 00002821 */   addu      $a1, $zero, $zero
/* E930 8000DD30 50400001 */  beql       $v0, $zero, .L8000DD38
/* E934 8000DD34 2410FFFA */   addiu     $s0, $zero, -0x6
.L8000DD38:
/* E938 8000DD38 0200B821 */  addu       $s7, $s0, $zero
.L8000DD3C:
/* E93C 8000DD3C 26B50068 */  addiu      $s5, $s5, 0x68
.L8000DD40:
/* E940 8000DD40 26310001 */  addiu      $s1, $s1, 0x1
/* E944 8000DD44 2A220004 */  slti       $v0, $s1, 0x4
/* E948 8000DD48 1440FFD0 */  bnez       $v0, .L8000DC8C
/* E94C 8000DD4C 26940068 */   addiu     $s4, $s4, 0x68
/* E950 8000DD50 02E01021 */  addu       $v0, $s7, $zero
.L8000DD54:
/* E954 8000DD54 8FBF0034 */  lw         $ra, 0x34($sp)
/* E958 8000DD58 8FBE0030 */  lw         $fp, 0x30($sp)
/* E95C 8000DD5C 8FB7002C */  lw         $s7, 0x2C($sp)
/* E960 8000DD60 8FB60028 */  lw         $s6, 0x28($sp)
/* E964 8000DD64 8FB50024 */  lw         $s5, 0x24($sp)
/* E968 8000DD68 8FB40020 */  lw         $s4, 0x20($sp)
/* E96C 8000DD6C 8FB3001C */  lw         $s3, 0x1C($sp)
/* E970 8000DD70 8FB20018 */  lw         $s2, 0x18($sp)
/* E974 8000DD74 8FB10014 */  lw         $s1, 0x14($sp)
/* E978 8000DD78 8FB00010 */  lw         $s0, 0x10($sp)
/* E97C 8000DD7C 03E00008 */  jr         $ra
/* E980 8000DD80 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8000DD84
/* E984 8000DD84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E988 8000DD88 AFBF0010 */  sw         $ra, 0x10($sp)
/* E98C 8000DD8C 00041040 */  sll        $v0, $a0, 1
/* E990 8000DD90 00441021 */  addu       $v0, $v0, $a0
/* E994 8000DD94 00021080 */  sll        $v0, $v0, 2
/* E998 8000DD98 00441021 */  addu       $v0, $v0, $a0
/* E99C 8000DD9C 000210C0 */  sll        $v0, $v0, 3
/* E9A0 8000DDA0 3C04802A */  lui        $a0, %hi(D_802A0510)
/* E9A4 8000DDA4 24840510 */  addiu      $a0, $a0, %lo(D_802A0510)
/* E9A8 8000DDA8 0C001275 */  jal        func_800049D4
/* E9AC 8000DDAC 00442021 */   addu      $a0, $v0, $a0
/* E9B0 8000DDB0 8FBF0010 */  lw         $ra, 0x10($sp)
/* E9B4 8000DDB4 03E00008 */  jr         $ra
/* E9B8 8000DDB8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000DDBC
/* E9BC 8000DDBC 3C02800B */  lui        $v0, %hi(D_800ABADC)
/* E9C0 8000DDC0 8C42BADC */  lw         $v0, %lo(D_800ABADC)($v0)
/* E9C4 8000DDC4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E9C8 8000DDC8 AFB10024 */  sw         $s1, 0x24($sp)
/* E9CC 8000DDCC 00808821 */  addu       $s1, $a0, $zero
/* E9D0 8000DDD0 AFB3002C */  sw         $s3, 0x2C($sp)
/* E9D4 8000DDD4 00A09821 */  addu       $s3, $a1, $zero
/* E9D8 8000DDD8 AFB00020 */  sw         $s0, 0x20($sp)
/* E9DC 8000DDDC 00008021 */  addu       $s0, $zero, $zero
/* E9E0 8000DDE0 AFBF0030 */  sw         $ra, 0x30($sp)
/* E9E4 8000DDE4 AFB20028 */  sw         $s2, 0x28($sp)
/* E9E8 8000DDE8 10400005 */  beqz       $v0, .L8000DE00
/* E9EC 8000DDEC AFA00018 */   sw        $zero, 0x18($sp)
/* E9F0 8000DDF0 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* E9F4 8000DDF4 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* E9F8 8000DDF8 14400004 */  bnez       $v0, .L8000DE0C
/* E9FC 8000DDFC 00000000 */   nop
.L8000DE00:
/* EA00 8000DE00 0C003704 */  jal        func_8000DC10
/* EA04 8000DE04 00000000 */   nop
/* EA08 8000DE08 00408021 */  addu       $s0, $v0, $zero
.L8000DE0C:
/* EA0C 8000DE0C 16000025 */  bnez       $s0, .L8000DEA4
/* EA10 8000DE10 02001021 */   addu      $v0, $s0, $zero
/* EA14 8000DE14 00111040 */  sll        $v0, $s1, 1
/* EA18 8000DE18 00511021 */  addu       $v0, $v0, $s1
/* EA1C 8000DE1C 00021080 */  sll        $v0, $v0, 2
/* EA20 8000DE20 00511021 */  addu       $v0, $v0, $s1
/* EA24 8000DE24 000210C0 */  sll        $v0, $v0, 3
/* EA28 8000DE28 3C03802A */  lui        $v1, %hi(D_802A0510)
/* EA2C 8000DE2C 24630510 */  addiu      $v1, $v1, %lo(D_802A0510)
/* EA30 8000DE30 00439021 */  addu       $s2, $v0, $v1
/* EA34 8000DE34 02402021 */  addu       $a0, $s2, $zero
/* EA38 8000DE38 0C003BA7 */  jal        func_8000EE9C
/* EA3C 8000DE3C 27A50018 */   addiu     $a1, $sp, 0x18
/* EA40 8000DE40 00408021 */  addu       $s0, $v0, $zero
/* EA44 8000DE44 16000017 */  bnez       $s0, .L8000DEA4
/* EA48 8000DE48 02402021 */   addu      $a0, $s2, $zero
/* EA4C 8000DE4C 24020600 */  addiu      $v0, $zero, 0x600
/* EA50 8000DE50 02620018 */  mult       $s3, $v0
/* EA54 8000DE54 00003812 */  mflo       $a3
/* EA58 8000DE58 AFA20010 */  sw         $v0, 0x10($sp)
/* EA5C 8000DE5C 3C02802A */  lui        $v0, %hi(D_8029FF00)
/* EA60 8000DE60 2442FF00 */  addiu      $v0, $v0, %lo(D_8029FF00)
/* EA64 8000DE64 AFA20014 */  sw         $v0, 0x14($sp)
/* EA68 8000DE68 8FA50018 */  lw         $a1, 0x18($sp)
/* EA6C 8000DE6C 0C001282 */  jal        func_80004A08
/* EA70 8000DE70 00003021 */   addu      $a2, $zero, $zero
/* EA74 8000DE74 00408021 */  addu       $s0, $v0, $zero
/* EA78 8000DE78 56000006 */  bnel       $s0, $zero, .L8000DE94
/* EA7C 8000DE7C 2410FFFB */   addiu     $s0, $zero, -0x5
/* EA80 8000DE80 0C003BCB */  jal        func_8000EF2C
/* EA84 8000DE84 00000000 */   nop
/* EA88 8000DE88 14400006 */  bnez       $v0, .L8000DEA4
/* EA8C 8000DE8C 02001021 */   addu      $v0, $s0, $zero
/* EA90 8000DE90 2410FFFB */  addiu      $s0, $zero, -0x5
.L8000DE94:
/* EA94 8000DE94 02202021 */  addu       $a0, $s1, $zero
/* EA98 8000DE98 0C003A19 */  jal        func_8000E864
/* EA9C 8000DE9C 02602821 */   addu      $a1, $s3, $zero
/* EAA0 8000DEA0 02001021 */  addu       $v0, $s0, $zero
.L8000DEA4:
/* EAA4 8000DEA4 8FBF0030 */  lw         $ra, 0x30($sp)
/* EAA8 8000DEA8 8FB3002C */  lw         $s3, 0x2C($sp)
/* EAAC 8000DEAC 8FB20028 */  lw         $s2, 0x28($sp)
/* EAB0 8000DEB0 8FB10024 */  lw         $s1, 0x24($sp)
/* EAB4 8000DEB4 8FB00020 */  lw         $s0, 0x20($sp)
/* EAB8 8000DEB8 03E00008 */  jr         $ra
/* EABC 8000DEBC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8000DEC0
/* EAC0 8000DEC0 3C03800B */  lui        $v1, %hi(D_800ABADC)
/* EAC4 8000DEC4 8C63BADC */  lw         $v1, %lo(D_800ABADC)($v1)
/* EAC8 8000DEC8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* EACC 8000DECC AFB20030 */  sw         $s2, 0x30($sp)
/* EAD0 8000DED0 00809021 */  addu       $s2, $a0, $zero
/* EAD4 8000DED4 AFB1002C */  sw         $s1, 0x2C($sp)
/* EAD8 8000DED8 00008821 */  addu       $s1, $zero, $zero
/* EADC 8000DEDC AFB5003C */  sw         $s5, 0x3C($sp)
/* EAE0 8000DEE0 0000A821 */  addu       $s5, $zero, $zero
/* EAE4 8000DEE4 AFB40038 */  sw         $s4, 0x38($sp)
/* EAE8 8000DEE8 24140001 */  addiu      $s4, $zero, 0x1
/* EAEC 8000DEEC AFB30034 */  sw         $s3, 0x34($sp)
/* EAF0 8000DEF0 24130001 */  addiu      $s3, $zero, 0x1
/* EAF4 8000DEF4 24020010 */  addiu      $v0, $zero, 0x10
/* EAF8 8000DEF8 AFBF0040 */  sw         $ra, 0x40($sp)
/* EAFC 8000DEFC AFB00028 */  sw         $s0, 0x28($sp)
/* EB00 8000DF00 AFA00018 */  sw         $zero, 0x18($sp)
/* EB04 8000DF04 AFA2001C */  sw         $v0, 0x1C($sp)
/* EB08 8000DF08 AFA00020 */  sw         $zero, 0x20($sp)
/* EB0C 8000DF0C 10600005 */  beqz       $v1, .L8000DF24
/* EB10 8000DF10 AFA00024 */   sw        $zero, 0x24($sp)
/* EB14 8000DF14 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* EB18 8000DF18 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* EB1C 8000DF1C 14400004 */  bnez       $v0, .L8000DF30
/* EB20 8000DF20 00000000 */   nop
.L8000DF24:
/* EB24 8000DF24 0C003704 */  jal        func_8000DC10
/* EB28 8000DF28 00000000 */   nop
/* EB2C 8000DF2C 00408821 */  addu       $s1, $v0, $zero
.L8000DF30:
/* EB30 8000DF30 12200011 */  beqz       $s1, .L8000DF78
/* EB34 8000DF34 2402000A */   addiu     $v0, $zero, 0xA
/* EB38 8000DF38 16220081 */  bne        $s1, $v0, .L8000E140
/* EB3C 8000DF3C 02201021 */   addu      $v0, $s1, $zero
/* EB40 8000DF40 00122040 */  sll        $a0, $s2, 1
/* EB44 8000DF44 00922021 */  addu       $a0, $a0, $s2
/* EB48 8000DF48 00042080 */  sll        $a0, $a0, 2
/* EB4C 8000DF4C 00922021 */  addu       $a0, $a0, $s2
/* EB50 8000DF50 000420C0 */  sll        $a0, $a0, 3
/* EB54 8000DF54 3C02802A */  lui        $v0, %hi(D_802A0510)
/* EB58 8000DF58 24420510 */  addiu      $v0, $v0, %lo(D_802A0510)
/* EB5C 8000DF5C 00822021 */  addu       $a0, $a0, $v0
/* EB60 8000DF60 0C001341 */  jal        func_80004D04
/* EB64 8000DF64 02402821 */   addu      $a1, $s2, $zero
/* EB68 8000DF68 14400075 */  bnez       $v0, .L8000E140
/* EB6C 8000DF6C 02201021 */   addu      $v0, $s1, $zero
/* EB70 8000DF70 08003850 */  j          .L8000E140
/* EB74 8000DF74 2402FFFA */   addiu     $v0, $zero, -0x6
.L8000DF78:
/* EB78 8000DF78 00128040 */  sll        $s0, $s2, 1
/* EB7C 8000DF7C 02128021 */  addu       $s0, $s0, $s2
/* EB80 8000DF80 00108080 */  sll        $s0, $s0, 2
/* EB84 8000DF84 02128021 */  addu       $s0, $s0, $s2
/* EB88 8000DF88 001080C0 */  sll        $s0, $s0, 3
/* EB8C 8000DF8C 3C02802A */  lui        $v0, %hi(D_802A0510)
/* EB90 8000DF90 24420510 */  addiu      $v0, $v0, %lo(D_802A0510)
/* EB94 8000DF94 02028021 */  addu       $s0, $s0, $v0
/* EB98 8000DF98 02002021 */  addu       $a0, $s0, $zero
/* EB9C 8000DF9C 0C003BA7 */  jal        func_8000EE9C
/* EBA0 8000DFA0 27A50018 */   addiu     $a1, $sp, 0x18
/* EBA4 8000DFA4 00408821 */  addu       $s1, $v0, $zero
/* EBA8 8000DFA8 3A220009 */  xori       $v0, $s1, 0x9
/* EBAC 8000DFAC 0002102B */  sltu       $v0, $zero, $v0
/* EBB0 8000DFB0 0011182B */  sltu       $v1, $zero, $s1
/* EBB4 8000DFB4 00431024 */  and        $v0, $v0, $v1
/* EBB8 8000DFB8 2C420001 */  sltiu      $v0, $v0, 0x1
/* EBBC 8000DFBC 00021023 */  negu       $v0, $v0
/* EBC0 8000DFC0 02629824 */  and        $s3, $s3, $v0
/* EBC4 8000DFC4 02002021 */  addu       $a0, $s0, $zero
/* EBC8 8000DFC8 0C003B97 */  jal        func_8000EE5C
/* EBCC 8000DFCC 27A50018 */   addiu     $a1, $sp, 0x18
/* EBD0 8000DFD0 00408821 */  addu       $s1, $v0, $zero
/* EBD4 8000DFD4 3A220009 */  xori       $v0, $s1, 0x9
/* EBD8 8000DFD8 0002102B */  sltu       $v0, $zero, $v0
/* EBDC 8000DFDC 0011182B */  sltu       $v1, $zero, $s1
/* EBE0 8000DFE0 00431024 */  and        $v0, $v0, $v1
/* EBE4 8000DFE4 2C420001 */  sltiu      $v0, $v0, 0x1
/* EBE8 8000DFE8 00021023 */  negu       $v0, $v0
/* EBEC 8000DFEC 0282A024 */  and        $s4, $s4, $v0
/* EBF0 8000DFF0 2E830001 */  sltiu      $v1, $s4, 0x1
/* EBF4 8000DFF4 2E640001 */  sltiu      $a0, $s3, 0x1
/* EBF8 8000DFF8 00641024 */  and        $v0, $v1, $a0
/* EBFC 8000DFFC 10400003 */  beqz       $v0, .L8000E00C
/* EC00 8000E000 0013102B */   sltu      $v0, $zero, $s3
/* EC04 8000E004 0800380B */  j          .L8000E02C
/* EC08 8000E008 241517C0 */   addiu     $s5, $zero, 0x17C0
.L8000E00C:
/* EC0C 8000E00C 00621024 */  and        $v0, $v1, $v0
/* EC10 8000E010 10400003 */  beqz       $v0, .L8000E020
/* EC14 8000E014 0014102B */   sltu      $v0, $zero, $s4
/* EC18 8000E018 0800380B */  j          .L8000E02C
/* EC1C 8000E01C 241511C0 */   addiu     $s5, $zero, 0x11C0
.L8000E020:
/* EC20 8000E020 00441024 */  and        $v0, $v0, $a0
/* EC24 8000E024 54400001 */  bnel       $v0, $zero, .L8000E02C
/* EC28 8000E028 24150600 */   addiu     $s5, $zero, 0x600
.L8000E02C:
/* EC2C 8000E02C 2E820001 */  sltiu      $v0, $s4, 0x1
/* EC30 8000E030 2E630001 */  sltiu      $v1, $s3, 0x1
/* EC34 8000E034 00431025 */  or         $v0, $v0, $v1
/* EC38 8000E038 1040001E */  beqz       $v0, .L8000E0B4
/* EC3C 8000E03C 00121040 */   sll       $v0, $s2, 1
/* EC40 8000E040 00521021 */  addu       $v0, $v0, $s2
/* EC44 8000E044 00021080 */  sll        $v0, $v0, 2
/* EC48 8000E048 00521021 */  addu       $v0, $v0, $s2
/* EC4C 8000E04C 000210C0 */  sll        $v0, $v0, 3
/* EC50 8000E050 3C03802A */  lui        $v1, %hi(D_802A0510)
/* EC54 8000E054 24630510 */  addiu      $v1, $v1, %lo(D_802A0510)
/* EC58 8000E058 00438021 */  addu       $s0, $v0, $v1
/* EC5C 8000E05C 02002021 */  addu       $a0, $s0, $zero
/* EC60 8000E060 27A5001C */  addiu      $a1, $sp, 0x1C
/* EC64 8000E064 0C001307 */  jal        func_80004C1C
/* EC68 8000E068 27A60020 */   addiu     $a2, $sp, 0x20
/* EC6C 8000E06C 00408821 */  addu       $s1, $v0, $zero
/* EC70 8000E070 16200033 */  bnez       $s1, .L8000E140
/* EC74 8000E074 00000000 */   nop
/* EC78 8000E078 8FA30020 */  lw         $v1, 0x20($sp)
/* EC7C 8000E07C 8FA2001C */  lw         $v0, 0x1C($sp)
/* EC80 8000E080 14620003 */  bne        $v1, $v0, .L8000E090
/* EC84 8000E084 02002021 */   addu      $a0, $s0, $zero
/* EC88 8000E088 08003850 */  j          .L8000E140
/* EC8C 8000E08C 2402FFFF */   addiu     $v0, $zero, -0x1
.L8000E090:
/* EC90 8000E090 0C0012D9 */  jal        func_80004B64
/* EC94 8000E094 27A50024 */   addiu     $a1, $sp, 0x24
/* EC98 8000E098 00408821 */  addu       $s1, $v0, $zero
/* EC9C 8000E09C 16200028 */  bnez       $s1, .L8000E140
/* ECA0 8000E0A0 00000000 */   nop
/* ECA4 8000E0A4 8FA20024 */  lw         $v0, 0x24($sp)
/* ECA8 8000E0A8 0055102A */  slt        $v0, $v0, $s5
/* ECAC 8000E0AC 14400024 */  bnez       $v0, .L8000E140
/* ECB0 8000E0B0 2402FFFE */   addiu     $v0, $zero, -0x2
.L8000E0B4:
/* ECB4 8000E0B4 16800005 */  bnez       $s4, .L8000E0CC
/* ECB8 8000E0B8 241511C0 */   addiu     $s5, $zero, 0x11C0
/* ECBC 8000E0BC 0C003A5D */  jal        func_8000E974
/* ECC0 8000E0C0 02402021 */   addu      $a0, $s2, $zero
/* ECC4 8000E0C4 08003850 */  j          .L8000E140
/* ECC8 8000E0C8 00000000 */   nop
.L8000E0CC:
/* ECCC 8000E0CC 16200016 */  bnez       $s1, .L8000E128
/* ECD0 8000E0D0 00122040 */   sll       $a0, $s2, 1
/* ECD4 8000E0D4 00922021 */  addu       $a0, $a0, $s2
/* ECD8 8000E0D8 00042080 */  sll        $a0, $a0, 2
/* ECDC 8000E0DC 00922021 */  addu       $a0, $a0, $s2
/* ECE0 8000E0E0 000420C0 */  sll        $a0, $a0, 3
/* ECE4 8000E0E4 3C02802A */  lui        $v0, %hi(D_802A0510)
/* ECE8 8000E0E8 24420510 */  addiu      $v0, $v0, %lo(D_802A0510)
/* ECEC 8000E0EC 00822021 */  addu       $a0, $a0, $v0
/* ECF0 8000E0F0 3C02803F */  lui        $v0, %hi(D_803ED3C0)
/* ECF4 8000E0F4 2442D3C0 */  addiu      $v0, $v0, %lo(D_803ED3C0)
/* ECF8 8000E0F8 AFB50010 */  sw         $s5, 0x10($sp)
/* ECFC 8000E0FC AFA20014 */  sw         $v0, 0x14($sp)
/* ED00 8000E100 8FA50018 */  lw         $a1, 0x18($sp)
/* ED04 8000E104 00003021 */  addu       $a2, $zero, $zero
/* ED08 8000E108 0C001282 */  jal        func_80004A08
/* ED0C 8000E10C 00003821 */   addu      $a3, $zero, $zero
/* ED10 8000E110 14400005 */  bnez       $v0, .L8000E128
/* ED14 8000E114 00000000 */   nop
/* ED18 8000E118 0C003CA1 */  jal        func_8000F284
/* ED1C 8000E11C 00000000 */   nop
/* ED20 8000E120 14400007 */  bnez       $v0, .L8000E140
/* ED24 8000E124 00001021 */   addu      $v0, $zero, $zero
.L8000E128:
/* ED28 8000E128 8FA40018 */  lw         $a0, 0x18($sp)
/* ED2C 8000E12C 0C0039F9 */  jal        func_8000E7E4
/* ED30 8000E130 02402821 */   addu      $a1, $s2, $zero
/* ED34 8000E134 0C000E28 */  jal        func_800038A0
/* ED38 8000E138 00000000 */   nop
/* ED3C 8000E13C 2402FFFB */  addiu      $v0, $zero, -0x5
.L8000E140:
/* ED40 8000E140 8FBF0040 */  lw         $ra, 0x40($sp)
/* ED44 8000E144 8FB5003C */  lw         $s5, 0x3C($sp)
/* ED48 8000E148 8FB40038 */  lw         $s4, 0x38($sp)
/* ED4C 8000E14C 8FB30034 */  lw         $s3, 0x34($sp)
/* ED50 8000E150 8FB20030 */  lw         $s2, 0x30($sp)
/* ED54 8000E154 8FB1002C */  lw         $s1, 0x2C($sp)
/* ED58 8000E158 8FB00028 */  lw         $s0, 0x28($sp)
/* ED5C 8000E15C 03E00008 */  jr         $ra
/* ED60 8000E160 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8000E164
/* ED64 8000E164 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* ED68 8000E168 AFB1003C */  sw         $s1, 0x3C($sp)
/* ED6C 8000E16C 00808821 */  addu       $s1, $a0, $zero
/* ED70 8000E170 AFB00038 */  sw         $s0, 0x38($sp)
/* ED74 8000E174 00008021 */  addu       $s0, $zero, $zero
/* ED78 8000E178 AFBF005C */  sw         $ra, 0x5C($sp)
/* ED7C 8000E17C AFBE0058 */  sw         $fp, 0x58($sp)
/* ED80 8000E180 AFB70054 */  sw         $s7, 0x54($sp)
/* ED84 8000E184 AFB60050 */  sw         $s6, 0x50($sp)
/* ED88 8000E188 AFB5004C */  sw         $s5, 0x4C($sp)
/* ED8C 8000E18C AFB40048 */  sw         $s4, 0x48($sp)
/* ED90 8000E190 AFB30044 */  sw         $s3, 0x44($sp)
/* ED94 8000E194 AFB20040 */  sw         $s2, 0x40($sp)
/* ED98 8000E198 10A00004 */  beqz       $a1, .L8000E1AC
/* ED9C 8000E19C AFA60034 */   sw        $a2, 0x34($sp)
/* EDA0 8000E1A0 3C02802A */  lui        $v0, %hi(D_8029E510)
/* EDA4 8000E1A4 2442E510 */  addiu      $v0, $v0, %lo(D_8029E510)
/* EDA8 8000E1A8 ACA20000 */  sw         $v0, 0x0($a1)
.L8000E1AC:
/* EDAC 8000E1AC 3C02800B */  lui        $v0, %hi(D_800ABADC)
/* EDB0 8000E1B0 8C42BADC */  lw         $v0, %lo(D_800ABADC)($v0)
/* EDB4 8000E1B4 10400005 */  beqz       $v0, .L8000E1CC
/* EDB8 8000E1B8 00000000 */   nop
/* EDBC 8000E1BC 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* EDC0 8000E1C0 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* EDC4 8000E1C4 14400004 */  bnez       $v0, .L8000E1D8
/* EDC8 8000E1C8 00000000 */   nop
.L8000E1CC:
/* EDCC 8000E1CC 0C003704 */  jal        func_8000DC10
/* EDD0 8000E1D0 00000000 */   nop
/* EDD4 8000E1D4 00408021 */  addu       $s0, $v0, $zero
.L8000E1D8:
/* EDD8 8000E1D8 16000055 */  bnez       $s0, .L8000E330
/* EDDC 8000E1DC 00002821 */   addu      $a1, $zero, $zero
/* EDE0 8000E1E0 24150001 */  addiu      $s5, $zero, 0x1
/* EDE4 8000E1E4 00009021 */  addu       $s2, $zero, $zero
/* EDE8 8000E1E8 00111040 */  sll        $v0, $s1, 1
/* EDEC 8000E1EC 00511021 */  addu       $v0, $v0, $s1
/* EDF0 8000E1F0 00021080 */  sll        $v0, $v0, 2
/* EDF4 8000E1F4 00511021 */  addu       $v0, $v0, $s1
/* EDF8 8000E1F8 0002B8C0 */  sll        $s7, $v0, 3
/* EDFC 8000E1FC 3C16802A */  lui        $s6, %hi(D_8029E510)
/* EE00 8000E200 26D6E510 */  addiu      $s6, $s6, %lo(D_8029E510)
/* EE04 8000E204 26DE0010 */  addiu      $fp, $s6, 0x10
/* EE08 8000E208 26D30018 */  addiu      $s3, $s6, 0x18
/* EE0C 8000E20C 02C0A021 */  addu       $s4, $s6, $zero
/* EE10 8000E210 00008821 */  addu       $s1, $zero, $zero
.L8000E214:
/* EE14 8000E214 3C04802A */  lui        $a0, %hi(D_802A0510)
/* EE18 8000E218 24840510 */  addiu      $a0, $a0, %lo(D_802A0510)
/* EE1C 8000E21C 02E42021 */  addu       $a0, $s7, $a0
/* EE20 8000E220 02402821 */  addu       $a1, $s2, $zero
/* EE24 8000E224 0C0012A3 */  jal        func_80004A8C
/* EE28 8000E228 27A60010 */   addiu     $a2, $sp, 0x10
/* EE2C 8000E22C 14400032 */  bnez       $v0, .L8000E2F8
/* EE30 8000E230 02802021 */   addu      $a0, $s4, $zero
/* EE34 8000E234 AE720000 */  sw         $s2, 0x0($s3)
/* EE38 8000E238 8FA30014 */  lw         $v1, 0x14($sp)
/* EE3C 8000E23C 3C02800B */  lui        $v0, %hi(D_800ABAB0)
/* EE40 8000E240 8C42BAB0 */  lw         $v0, %lo(D_800ABAB0)($v0)
/* EE44 8000E244 14620007 */  bne        $v1, $v0, .L8000E264
/* EE48 8000E248 00002821 */   addu      $a1, $zero, $zero
/* EE4C 8000E24C 97A20018 */  lhu        $v0, 0x18($sp)
/* EE50 8000E250 3C03800B */  lui        $v1, %hi(D_800ABAAE)
/* EE54 8000E254 9463BAAE */  lhu        $v1, %lo(D_800ABAAE)($v1)
/* EE58 8000E258 00431026 */  xor        $v0, $v0, $v1
/* EE5C 8000E25C 2C420001 */  sltiu      $v0, $v0, 0x1
/* EE60 8000E260 00402821 */  addu       $a1, $v0, $zero
.L8000E264:
/* EE64 8000E264 02362021 */  addu       $a0, $s1, $s6
/* EE68 8000E268 3C01802A */  lui        $at, %hi(D_8029E52C)
/* EE6C 8000E26C 00310821 */  addu       $at, $at, $s1
/* EE70 8000E270 A025E52C */  sb         $a1, %lo(D_8029E52C)($at)
/* EE74 8000E274 8FA20010 */  lw         $v0, 0x10($sp)
/* EE78 8000E278 24050010 */  addiu      $a1, $zero, 0x10
/* EE7C 8000E27C 023E8021 */  addu       $s0, $s1, $fp
/* EE80 8000E280 3C01802A */  lui        $at, %hi(D_8029E524)
/* EE84 8000E284 00310821 */  addu       $at, $at, $s1
/* EE88 8000E288 AC22E524 */  sw         $v0, %lo(D_8029E524)($at)
/* EE8C 8000E28C 8BA2001E */  lwl        $v0, 0x1E($sp)
/* EE90 8000E290 9BA20021 */  lwr        $v0, 0x21($sp)
/* EE94 8000E294 8BA30022 */  lwl        $v1, 0x22($sp)
/* EE98 8000E298 9BA30025 */  lwr        $v1, 0x25($sp)
/* EE9C 8000E29C 8BA60026 */  lwl        $a2, 0x26($sp)
/* EEA0 8000E2A0 9BA60029 */  lwr        $a2, 0x29($sp)
/* EEA4 8000E2A4 8BA7002A */  lwl        $a3, 0x2A($sp)
/* EEA8 8000E2A8 9BA7002D */  lwr        $a3, 0x2D($sp)
/* EEAC 8000E2AC A8820000 */  swl        $v0, 0x0($a0)
/* EEB0 8000E2B0 B8820003 */  swr        $v0, 0x3($a0)
/* EEB4 8000E2B4 A8830004 */  swl        $v1, 0x4($a0)
/* EEB8 8000E2B8 B8830007 */  swr        $v1, 0x7($a0)
/* EEBC 8000E2BC A8860008 */  swl        $a2, 0x8($a0)
/* EEC0 8000E2C0 B886000B */  swr        $a2, 0xB($a0)
/* EEC4 8000E2C4 A887000C */  swl        $a3, 0xC($a0)
/* EEC8 8000E2C8 B887000F */  swr        $a3, 0xF($a0)
/* EECC 8000E2CC 8BA2001A */  lwl        $v0, 0x1A($sp)
/* EED0 8000E2D0 9BA2001D */  lwr        $v0, 0x1D($sp)
/* EED4 8000E2D4 AA020000 */  swl        $v0, 0x0($s0)
/* EED8 8000E2D8 BA020003 */  swr        $v0, 0x3($s0)
/* EEDC 8000E2DC 0C004152 */  jal        func_80010548
/* EEE0 8000E2E0 0000A821 */   addu      $s5, $zero, $zero
/* EEE4 8000E2E4 02002021 */  addu       $a0, $s0, $zero
/* EEE8 8000E2E8 0C004152 */  jal        func_80010548
/* EEEC 8000E2EC 24050004 */   addiu     $a1, $zero, 0x4
/* EEF0 8000E2F0 080038C3 */  j          .L8000E30C
/* EEF4 8000E2F4 26730020 */   addiu     $s3, $s3, 0x20
.L8000E2F8:
/* EEF8 8000E2F8 00002821 */  addu       $a1, $zero, $zero
/* EEFC 8000E2FC 0C026D3C */  jal        func_8009B4F0
/* EF00 8000E300 24060020 */   addiu     $a2, $zero, 0x20
/* EF04 8000E304 AE720000 */  sw         $s2, 0x0($s3)
/* EF08 8000E308 26730020 */  addiu      $s3, $s3, 0x20
.L8000E30C:
/* EF0C 8000E30C 26940020 */  addiu      $s4, $s4, 0x20
/* EF10 8000E310 26520001 */  addiu      $s2, $s2, 0x1
/* EF14 8000E314 2A420010 */  slti       $v0, $s2, 0x10
/* EF18 8000E318 1440FFBE */  bnez       $v0, .L8000E214
/* EF1C 8000E31C 26310020 */   addiu     $s1, $s1, 0x20
/* EF20 8000E320 8FA70034 */  lw         $a3, 0x34($sp)
/* EF24 8000E324 00001021 */  addu       $v0, $zero, $zero
/* EF28 8000E328 080038D1 */  j          .L8000E344
/* EF2C 8000E32C ACF50000 */   sw        $s5, 0x0($a3)
.L8000E330:
/* EF30 8000E330 3C04802A */  lui        $a0, %hi(D_8029E510)
/* EF34 8000E334 2484E510 */  addiu      $a0, $a0, %lo(D_8029E510)
/* EF38 8000E338 0C026D3C */  jal        func_8009B4F0
/* EF3C 8000E33C 24060200 */   addiu     $a2, $zero, 0x200
/* EF40 8000E340 02001021 */  addu       $v0, $s0, $zero
.L8000E344:
/* EF44 8000E344 8FBF005C */  lw         $ra, 0x5C($sp)
/* EF48 8000E348 8FBE0058 */  lw         $fp, 0x58($sp)
/* EF4C 8000E34C 8FB70054 */  lw         $s7, 0x54($sp)
/* EF50 8000E350 8FB60050 */  lw         $s6, 0x50($sp)
/* EF54 8000E354 8FB5004C */  lw         $s5, 0x4C($sp)
/* EF58 8000E358 8FB40048 */  lw         $s4, 0x48($sp)
/* EF5C 8000E35C 8FB30044 */  lw         $s3, 0x44($sp)
/* EF60 8000E360 8FB20040 */  lw         $s2, 0x40($sp)
/* EF64 8000E364 8FB1003C */  lw         $s1, 0x3C($sp)
/* EF68 8000E368 8FB00038 */  lw         $s0, 0x38($sp)
/* EF6C 8000E36C 03E00008 */  jr         $ra
/* EF70 8000E370 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8000E374
/* EF74 8000E374 27BDFF98 */  addiu      $sp, $sp, -0x68
/* EF78 8000E378 AFB60058 */  sw         $s6, 0x58($sp)
/* EF7C 8000E37C 0080B021 */  addu       $s6, $a0, $zero
/* EF80 8000E380 AFB00040 */  sw         $s0, 0x40($sp)
/* EF84 8000E384 00008021 */  addu       $s0, $zero, $zero
/* EF88 8000E388 AFBF0064 */  sw         $ra, 0x64($sp)
/* EF8C 8000E38C AFBE0060 */  sw         $fp, 0x60($sp)
/* EF90 8000E390 AFB7005C */  sw         $s7, 0x5C($sp)
/* EF94 8000E394 AFB50054 */  sw         $s5, 0x54($sp)
/* EF98 8000E398 AFB40050 */  sw         $s4, 0x50($sp)
/* EF9C 8000E39C AFB3004C */  sw         $s3, 0x4C($sp)
/* EFA0 8000E3A0 AFB20048 */  sw         $s2, 0x48($sp)
/* EFA4 8000E3A4 10A00004 */  beqz       $a1, .L8000E3B8
/* EFA8 8000E3A8 AFB10044 */   sw        $s1, 0x44($sp)
/* EFAC 8000E3AC 3C02802A */  lui        $v0, %hi(D_8029E710)
/* EFB0 8000E3B0 2442E710 */  addiu      $v0, $v0, %lo(D_8029E710)
/* EFB4 8000E3B4 ACA20000 */  sw         $v0, 0x0($a1)
.L8000E3B8:
/* EFB8 8000E3B8 3C02800B */  lui        $v0, %hi(D_800ABADC)
/* EFBC 8000E3BC 8C42BADC */  lw         $v0, %lo(D_800ABADC)($v0)
/* EFC0 8000E3C0 10400005 */  beqz       $v0, .L8000E3D8
/* EFC4 8000E3C4 00000000 */   nop
/* EFC8 8000E3C8 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* EFCC 8000E3CC 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* EFD0 8000E3D0 14400004 */  bnez       $v0, .L8000E3E4
/* EFD4 8000E3D4 00000000 */   nop
.L8000E3D8:
/* EFD8 8000E3D8 0C003704 */  jal        func_8000DC10
/* EFDC 8000E3DC 00000000 */   nop
/* EFE0 8000E3E0 00408021 */  addu       $s0, $v0, $zero
.L8000E3E4:
/* EFE4 8000E3E4 160000D2 */  bnez       $s0, .L8000E730
/* EFE8 8000E3E8 00161040 */   sll       $v0, $s6, 1
/* EFEC 8000E3EC 00561021 */  addu       $v0, $v0, $s6
/* EFF0 8000E3F0 00021080 */  sll        $v0, $v0, 2
/* EFF4 8000E3F4 00561021 */  addu       $v0, $v0, $s6
/* EFF8 8000E3F8 000290C0 */  sll        $s2, $v0, 3
/* EFFC 8000E3FC 3C02802A */  lui        $v0, %hi(D_802A0510)
/* F000 8000E400 24420510 */  addiu      $v0, $v0, %lo(D_802A0510)
/* F004 8000E404 02428821 */  addu       $s1, $s2, $v0
/* F008 8000E408 02202021 */  addu       $a0, $s1, $zero
/* F00C 8000E40C 3C05800B */  lui        $a1, %hi(D_800ABAAE)
/* F010 8000E410 94A5BAAE */  lhu        $a1, %lo(D_800ABAAE)($a1)
/* F014 8000E414 3C06800B */  lui        $a2, %hi(D_800ABAB0)
/* F018 8000E418 8CC6BAB0 */  lw         $a2, %lo(D_800ABAB0)($a2)
/* F01C 8000E41C 3C07800B */  lui        $a3, %hi(D_800ABAC4)
/* F020 8000E420 24E7BAC4 */  addiu      $a3, $a3, %lo(D_800ABAC4)
/* F024 8000E424 3C02800B */  lui        $v0, %hi(D_800ABAD8)
/* F028 8000E428 2442BAD8 */  addiu      $v0, $v0, %lo(D_800ABAD8)
/* F02C 8000E42C AFA20010 */  sw         $v0, 0x10($sp)
/* F030 8000E430 3C02800B */  lui        $v0, %hi(D_800ABAE4)
/* F034 8000E434 2442BAE4 */  addiu      $v0, $v0, %lo(D_800ABAE4)
/* F038 8000E438 0C0012B8 */  jal        func_80004AE0
/* F03C 8000E43C AFA20014 */   sw        $v0, 0x14($sp)
/* F040 8000E440 00408021 */  addu       $s0, $v0, $zero
/* F044 8000E444 160000BA */  bnez       $s0, .L8000E730
/* F048 8000E448 02202021 */   addu      $a0, $s1, $zero
/* F04C 8000E44C 3C05800B */  lui        $a1, %hi(D_800ABAE4)
/* F050 8000E450 8CA5BAE4 */  lw         $a1, %lo(D_800ABAE4)($a1)
/* F054 8000E454 0C0012A3 */  jal        func_80004A8C
/* F058 8000E458 27A60018 */   addiu     $a2, $sp, 0x18
/* F05C 8000E45C 00408021 */  addu       $s0, $v0, $zero
/* F060 8000E460 160000B3 */  bnez       $s0, .L8000E730
/* F064 8000E464 24170600 */   addiu     $s7, $zero, 0x600
/* F068 8000E468 8FA20018 */  lw         $v0, 0x18($sp)
/* F06C 8000E46C 0057001B */  divu       $zero, $v0, $s7
/* F070 8000E470 16E00002 */  bnez       $s7, .L8000E47C
/* F074 8000E474 00000000 */   nop
/* F078 8000E478 0007000D */  break      7
.L8000E47C:
/* F07C 8000E47C 0000A812 */  mflo       $s5
/* F080 8000E480 0215102A */  slt        $v0, $s0, $s5
/* F084 8000E484 00000000 */  nop
/* F088 8000E488 104000AE */  beqz       $v0, .L8000E744
/* F08C 8000E48C 00008821 */   addu      $s1, $zero, $zero
/* F090 8000E490 AFB2003C */  sw         $s2, 0x3C($sp)
/* F094 8000E494 3C1E802A */  lui        $fp, %hi(D_8029E710)
/* F098 8000E498 27DEE710 */  addiu      $fp, $fp, %lo(D_8029E710)
/* F09C 8000E49C 3C13802A */  lui        $s3, %hi(D_8029FF00)
/* F0A0 8000E4A0 2673FF00 */  addiu      $s3, $s3, %lo(D_8029FF00)
/* F0A4 8000E4A4 03C09021 */  addu       $s2, $fp, $zero
/* F0A8 8000E4A8 0000A021 */  addu       $s4, $zero, $zero
.L8000E4AC:
/* F0AC 8000E4AC 3C04802A */  lui        $a0, %hi(D_802A0510)
/* F0B0 8000E4B0 24840510 */  addiu      $a0, $a0, %lo(D_802A0510)
/* F0B4 8000E4B4 8FA9003C */  lw         $t1, 0x3C($sp)
/* F0B8 8000E4B8 3C05800B */  lui        $a1, %hi(D_800ABAE4)
/* F0BC 8000E4BC 8CA5BAE4 */  lw         $a1, %lo(D_800ABAE4)($a1)
/* F0C0 8000E4C0 00003021 */  addu       $a2, $zero, $zero
/* F0C4 8000E4C4 02803821 */  addu       $a3, $s4, $zero
/* F0C8 8000E4C8 AFB70010 */  sw         $s7, 0x10($sp)
/* F0CC 8000E4CC AFB30014 */  sw         $s3, 0x14($sp)
/* F0D0 8000E4D0 0C001282 */  jal        func_80004A08
/* F0D4 8000E4D4 01242021 */   addu      $a0, $t1, $a0
/* F0D8 8000E4D8 00408021 */  addu       $s0, $v0, $zero
/* F0DC 8000E4DC 1600009A */  bnez       $s0, .L8000E748
/* F0E0 8000E4E0 02001021 */   addu      $v0, $s0, $zero
/* F0E4 8000E4E4 82620008 */  lb         $v0, 0x8($s3)
/* F0E8 8000E4E8 1040007F */  beqz       $v0, .L8000E6E8
/* F0EC 8000E4EC 02402021 */   addu      $a0, $s2, $zero
/* F0F0 8000E4F0 0C003BB7 */  jal        func_8000EEDC
/* F0F4 8000E4F4 00000000 */   nop
/* F0F8 8000E4F8 10400074 */  beqz       $v0, .L8000E6CC
/* F0FC 8000E4FC 02203821 */   addu      $a3, $s1, $zero
/* F100 8000E500 92620378 */  lbu        $v0, 0x378($s3)
/* F104 8000E504 3C01802A */  lui        $at, %hi(D_8029E730)
/* F108 8000E508 00310821 */  addu       $at, $at, $s1
/* F10C 8000E50C A022E730 */  sb         $v0, %lo(D_8029E730)($at)
/* F110 8000E510 92620377 */  lbu        $v0, 0x377($s3)
/* F114 8000E514 3C01802A */  lui        $at, %hi(D_8029E731)
/* F118 8000E518 00310821 */  addu       $at, $at, $s1
/* F11C 8000E51C A022E731 */  sb         $v0, %lo(D_8029E731)($at)
/* F120 8000E520 9262036C */  lbu        $v0, 0x36C($s3)
/* F124 8000E524 00003021 */  addu       $a2, $zero, $zero
/* F128 8000E528 3C08802A */  lui        $t0, %hi(D_802A004C)
/* F12C 8000E52C 2508004C */  addiu      $t0, $t0, %lo(D_802A004C)
/* F130 8000E530 3C01802A */  lui        $at, %hi(D_8029E732)
/* F134 8000E534 00310821 */  addu       $at, $at, $s1
/* F138 8000E538 A022E732 */  sb         $v0, %lo(D_8029E732)($at)
/* F13C 8000E53C 8E620008 */  lw         $v0, 0x8($s3)
/* F140 8000E540 8E63000C */  lw         $v1, 0xC($s3)
/* F144 8000E544 8E640010 */  lw         $a0, 0x10($s3)
/* F148 8000E548 8E650014 */  lw         $a1, 0x14($s3)
/* F14C 8000E54C AE420000 */  sw         $v0, 0x0($s2)
/* F150 8000E550 AE430004 */  sw         $v1, 0x4($s2)
/* F154 8000E554 AE440008 */  sw         $a0, 0x8($s2)
/* F158 8000E558 AE45000C */  sw         $a1, 0xC($s2)
/* F15C 8000E55C 8E620018 */  lw         $v0, 0x18($s3)
/* F160 8000E560 8E63001C */  lw         $v1, 0x1C($s3)
/* F164 8000E564 8E640020 */  lw         $a0, 0x20($s3)
/* F168 8000E568 8E650024 */  lw         $a1, 0x24($s3)
/* F16C 8000E56C AE420010 */  sw         $v0, 0x10($s2)
/* F170 8000E570 AE430014 */  sw         $v1, 0x14($s2)
/* F174 8000E574 AE440018 */  sw         $a0, 0x18($s2)
/* F178 8000E578 AE45001C */  sw         $a1, 0x1C($s2)
.L8000E57C:
/* F17C 8000E57C 3C02802A */  lui        $v0, %hi(D_802A0048)
/* F180 8000E580 00461021 */  addu       $v0, $v0, $a2
/* F184 8000E584 90420048 */  lbu        $v0, %lo(D_802A0048)($v0)
/* F188 8000E588 3C01802A */  lui        $at, %hi(D_8029E750)
/* F18C 8000E58C 00270821 */  addu       $at, $at, $a3
/* F190 8000E590 A022E750 */  sb         $v0, %lo(D_8029E750)($at)
/* F194 8000E594 3C02802A */  lui        $v0, %hi(D_802A0049)
/* F198 8000E598 00461021 */  addu       $v0, $v0, $a2
/* F19C 8000E59C 90420049 */  lbu        $v0, %lo(D_802A0049)($v0)
/* F1A0 8000E5A0 3C01802A */  lui        $at, %hi(D_8029E751)
/* F1A4 8000E5A4 00270821 */  addu       $at, $at, $a3
/* F1A8 8000E5A8 A022E751 */  sb         $v0, %lo(D_8029E751)($at)
/* F1AC 8000E5AC 3C02802A */  lui        $v0, %hi(D_802A004A)
/* F1B0 8000E5B0 00461021 */  addu       $v0, $v0, $a2
/* F1B4 8000E5B4 9042004A */  lbu        $v0, %lo(D_802A004A)($v0)
/* F1B8 8000E5B8 3C09802A */  lui        $t1, %hi(D_8029E754)
/* F1BC 8000E5BC 2529E754 */  addiu      $t1, $t1, %lo(D_8029E754)
/* F1C0 8000E5C0 00E91821 */  addu       $v1, $a3, $t1
/* F1C4 8000E5C4 3C01802A */  lui        $at, %hi(D_8029E752)
/* F1C8 8000E5C8 00270821 */  addu       $at, $at, $a3
/* F1CC 8000E5CC A022E752 */  sb         $v0, %lo(D_8029E752)($at)
/* F1D0 8000E5D0 3C02802A */  lui        $v0, %hi(D_802A004B)
/* F1D4 8000E5D4 00461021 */  addu       $v0, $v0, $a2
/* F1D8 8000E5D8 9042004B */  lbu        $v0, %lo(D_802A004B)($v0)
/* F1DC 8000E5DC 01002021 */  addu       $a0, $t0, $zero
/* F1E0 8000E5E0 24650004 */  addiu      $a1, $v1, 0x4
/* F1E4 8000E5E4 3C01802A */  lui        $at, %hi(D_8029E753)
/* F1E8 8000E5E8 00270821 */  addu       $at, $at, $a3
/* F1EC 8000E5EC A022E753 */  sb         $v0, %lo(D_8029E753)($at)
.L8000E5F0:
/* F1F0 8000E5F0 90820000 */  lbu        $v0, 0x0($a0)
/* F1F4 8000E5F4 A0620000 */  sb         $v0, 0x0($v1)
/* F1F8 8000E5F8 24630001 */  addiu      $v1, $v1, 0x1
/* F1FC 8000E5FC 0065102A */  slt        $v0, $v1, $a1
/* F200 8000E600 1440FFFB */  bnez       $v0, .L8000E5F0
/* F204 8000E604 24840001 */   addiu     $a0, $a0, 0x1
/* F208 8000E608 3C01802A */  lui        $at, %hi(D_802A002C)
/* F20C 8000E60C 00260821 */  addu       $at, $at, $a2
/* F210 8000E610 C420002C */  lwc1       $f0, %lo(D_802A002C)($at)
/* F214 8000E614 3C01802A */  lui        $at, %hi(D_8029E734)
/* F218 8000E618 00270821 */  addu       $at, $at, $a3
/* F21C 8000E61C E420E734 */  swc1       $f0, %lo(D_8029E734)($at)
/* F220 8000E620 3C01802A */  lui        $at, %hi(D_802A0030)
/* F224 8000E624 00260821 */  addu       $at, $at, $a2
/* F228 8000E628 C4200030 */  lwc1       $f0, %lo(D_802A0030)($at)
/* F22C 8000E62C 3C01802A */  lui        $at, %hi(D_8029E738)
/* F230 8000E630 00270821 */  addu       $at, $at, $a3
/* F234 8000E634 E420E738 */  swc1       $f0, %lo(D_8029E738)($at)
/* F238 8000E638 3C01802A */  lui        $at, %hi(D_802A0034)
/* F23C 8000E63C 00260821 */  addu       $at, $at, $a2
/* F240 8000E640 C4200034 */  lwc1       $f0, %lo(D_802A0034)($at)
/* F244 8000E644 3C01802A */  lui        $at, %hi(D_8029E73C)
/* F248 8000E648 00270821 */  addu       $at, $at, $a3
/* F24C 8000E64C E420E73C */  swc1       $f0, %lo(D_8029E73C)($at)
/* F250 8000E650 3C01802A */  lui        $at, %hi(D_802A0038)
/* F254 8000E654 00260821 */  addu       $at, $at, $a2
/* F258 8000E658 C4200038 */  lwc1       $f0, %lo(D_802A0038)($at)
/* F25C 8000E65C 3C01802A */  lui        $at, %hi(D_8029E740)
/* F260 8000E660 00270821 */  addu       $at, $at, $a3
/* F264 8000E664 E420E740 */  swc1       $f0, %lo(D_8029E740)($at)
/* F268 8000E668 3C01802A */  lui        $at, %hi(D_802A003C)
/* F26C 8000E66C 00260821 */  addu       $at, $at, $a2
/* F270 8000E670 C420003C */  lwc1       $f0, %lo(D_802A003C)($at)
/* F274 8000E674 3C01802A */  lui        $at, %hi(D_8029E744)
/* F278 8000E678 00270821 */  addu       $at, $at, $a3
/* F27C 8000E67C E420E744 */  swc1       $f0, %lo(D_8029E744)($at)
/* F280 8000E680 3C01802A */  lui        $at, %hi(D_802A0040)
/* F284 8000E684 00260821 */  addu       $at, $at, $a2
/* F288 8000E688 C4200040 */  lwc1       $f0, %lo(D_802A0040)($at)
/* F28C 8000E68C 25080024 */  addiu      $t0, $t0, 0x24
/* F290 8000E690 3C01802A */  lui        $at, %hi(D_8029E748)
/* F294 8000E694 00270821 */  addu       $at, $at, $a3
/* F298 8000E698 E420E748 */  swc1       $f0, %lo(D_8029E748)($at)
/* F29C 8000E69C 3C01802A */  lui        $at, %hi(D_802A0044)
/* F2A0 8000E6A0 00260821 */  addu       $at, $at, $a2
/* F2A4 8000E6A4 C4200044 */  lwc1       $f0, %lo(D_802A0044)($at)
/* F2A8 8000E6A8 24C60024 */  addiu      $a2, $a2, 0x24
/* F2AC 8000E6AC 28C20240 */  slti       $v0, $a2, 0x240
/* F2B0 8000E6B0 3C01802A */  lui        $at, %hi(D_8029E74C)
/* F2B4 8000E6B4 00270821 */  addu       $at, $at, $a3
/* F2B8 8000E6B8 E420E74C */  swc1       $f0, %lo(D_8029E74C)($at)
/* F2BC 8000E6BC 1440FFAF */  bnez       $v0, .L8000E57C
/* F2C0 8000E6C0 24E70024 */   addiu     $a3, $a3, 0x24
/* F2C4 8000E6C4 080039BE */  j          .L8000E6F8
/* F2C8 8000E6C8 26520264 */   addiu     $s2, $s2, 0x264
.L8000E6CC:
/* F2CC 8000E6CC 3C04800B */  lui        $a0, %hi(D_800ABAE4)
/* F2D0 8000E6D0 8C84BAE4 */  lw         $a0, %lo(D_800ABAE4)($a0)
/* F2D4 8000E6D4 2410FFFB */  addiu      $s0, $zero, -0x5
/* F2D8 8000E6D8 0C0039F9 */  jal        func_8000E7E4
/* F2DC 8000E6DC 02C02821 */   addu      $a1, $s6, $zero
/* F2E0 8000E6E0 080039CA */  j          .L8000E728
/* F2E4 8000E6E4 00000000 */   nop
.L8000E6E8:
/* F2E8 8000E6E8 00002821 */  addu       $a1, $zero, $zero
/* F2EC 8000E6EC 0C026D3C */  jal        func_8009B4F0
/* F2F0 8000E6F0 24060264 */   addiu     $a2, $zero, 0x264
/* F2F4 8000E6F4 26520264 */  addiu      $s2, $s2, 0x264
.L8000E6F8:
/* F2F8 8000E6F8 26310264 */  addiu      $s1, $s1, 0x264
/* F2FC 8000E6FC 001510C0 */  sll        $v0, $s5, 3
/* F300 8000E700 00551021 */  addu       $v0, $v0, $s5
/* F304 8000E704 00021900 */  sll        $v1, $v0, 4
/* F308 8000E708 00431021 */  addu       $v0, $v0, $v1
/* F30C 8000E70C 00021080 */  sll        $v0, $v0, 2
/* F310 8000E710 005E1021 */  addu       $v0, $v0, $fp
/* F314 8000E714 0242102A */  slt        $v0, $s2, $v0
/* F318 8000E718 1440FF64 */  bnez       $v0, .L8000E4AC
/* F31C 8000E71C 0297A021 */   addu      $s4, $s4, $s7
/* F320 8000E720 080039D2 */  j          .L8000E748
/* F324 8000E724 02001021 */   addu      $v0, $s0, $zero
.L8000E728:
/* F328 8000E728 12000007 */  beqz       $s0, .L8000E748
/* F32C 8000E72C 02001021 */   addu      $v0, $s0, $zero
.L8000E730:
/* F330 8000E730 3C04802A */  lui        $a0, %hi(D_8029E710)
/* F334 8000E734 2484E710 */  addiu      $a0, $a0, %lo(D_8029E710)
/* F338 8000E738 00002821 */  addu       $a1, $zero, $zero
/* F33C 8000E73C 0C026D3C */  jal        func_8009B4F0
/* F340 8000E740 240617E8 */   addiu     $a2, $zero, 0x17E8
.L8000E744:
/* F344 8000E744 02001021 */  addu       $v0, $s0, $zero
.L8000E748:
/* F348 8000E748 8FBF0064 */  lw         $ra, 0x64($sp)
/* F34C 8000E74C 8FBE0060 */  lw         $fp, 0x60($sp)
/* F350 8000E750 8FB7005C */  lw         $s7, 0x5C($sp)
/* F354 8000E754 8FB60058 */  lw         $s6, 0x58($sp)
/* F358 8000E758 8FB50054 */  lw         $s5, 0x54($sp)
/* F35C 8000E75C 8FB40050 */  lw         $s4, 0x50($sp)
/* F360 8000E760 8FB3004C */  lw         $s3, 0x4C($sp)
/* F364 8000E764 8FB20048 */  lw         $s2, 0x48($sp)
/* F368 8000E768 8FB10044 */  lw         $s1, 0x44($sp)
/* F36C 8000E76C 8FB00040 */  lw         $s0, 0x40($sp)
/* F370 8000E770 03E00008 */  jr         $ra
/* F374 8000E774 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8000E778
/* F378 8000E778 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F37C 8000E77C AFB00018 */  sw         $s0, 0x18($sp)
/* F380 8000E780 00A08021 */  addu       $s0, $a1, $zero
/* F384 8000E784 00041040 */  sll        $v0, $a0, 1
/* F388 8000E788 00441021 */  addu       $v0, $v0, $a0
/* F38C 8000E78C 00021080 */  sll        $v0, $v0, 2
/* F390 8000E790 00441021 */  addu       $v0, $v0, $a0
/* F394 8000E794 000210C0 */  sll        $v0, $v0, 3
/* F398 8000E798 3C04802A */  lui        $a0, %hi(D_802A0510)
/* F39C 8000E79C 24840510 */  addiu      $a0, $a0, %lo(D_802A0510)
/* F3A0 8000E7A0 00442021 */  addu       $a0, $v0, $a0
/* F3A4 8000E7A4 27A50010 */  addiu      $a1, $sp, 0x10
/* F3A8 8000E7A8 AFBF001C */  sw         $ra, 0x1C($sp)
/* F3AC 8000E7AC 0C0012D9 */  jal        func_80004B64
/* F3B0 8000E7B0 AFA00010 */   sw        $zero, 0x10($sp)
/* F3B4 8000E7B4 14400007 */  bnez       $v0, .L8000E7D4
/* F3B8 8000E7B8 00000000 */   nop
/* F3BC 8000E7BC 8FA20010 */  lw         $v0, 0x10($sp)
/* F3C0 8000E7C0 04420001 */  bltzl      $v0, .L8000E7C8
/* F3C4 8000E7C4 244200FF */   addiu     $v0, $v0, 0xFF
.L8000E7C8:
/* F3C8 8000E7C8 00021203 */  sra        $v0, $v0, 8
/* F3CC 8000E7CC AE020000 */  sw         $v0, 0x0($s0)
/* F3D0 8000E7D0 00001021 */  addu       $v0, $zero, $zero
.L8000E7D4:
/* F3D4 8000E7D4 8FBF001C */  lw         $ra, 0x1C($sp)
/* F3D8 8000E7D8 8FB00018 */  lw         $s0, 0x18($sp)
/* F3DC 8000E7DC 03E00008 */  jr         $ra
/* F3E0 8000E7E0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000E7E4
/* F3E4 8000E7E4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* F3E8 8000E7E8 00803021 */  addu       $a2, $a0, $zero
/* F3EC 8000E7EC 28C20010 */  slti       $v0, $a2, 0x10
/* F3F0 8000E7F0 AFBF003C */  sw         $ra, 0x3C($sp)
/* F3F4 8000E7F4 14400003 */  bnez       $v0, .L8000E804
/* F3F8 8000E7F8 AFB00038 */   sw        $s0, 0x38($sp)
/* F3FC 8000E7FC 08003A15 */  j          .L8000E854
/* F400 8000E800 00001021 */   addu      $v0, $zero, $zero
.L8000E804:
/* F404 8000E804 00051040 */  sll        $v0, $a1, 1
/* F408 8000E808 00451021 */  addu       $v0, $v0, $a1
/* F40C 8000E80C 00021080 */  sll        $v0, $v0, 2
/* F410 8000E810 00451021 */  addu       $v0, $v0, $a1
/* F414 8000E814 000210C0 */  sll        $v0, $v0, 3
/* F418 8000E818 3C03802A */  lui        $v1, %hi(D_802A0510)
/* F41C 8000E81C 24630510 */  addiu      $v1, $v1, %lo(D_802A0510)
/* F420 8000E820 00438021 */  addu       $s0, $v0, $v1
/* F424 8000E824 02002021 */  addu       $a0, $s0, $zero
/* F428 8000E828 00C02821 */  addu       $a1, $a2, $zero
/* F42C 8000E82C 0C0012A3 */  jal        func_80004A8C
/* F430 8000E830 27A60018 */   addiu     $a2, $sp, 0x18
/* F434 8000E834 14400007 */  bnez       $v0, .L8000E854
/* F438 8000E838 02002021 */   addu      $a0, $s0, $zero
/* F43C 8000E83C 97A50020 */  lhu        $a1, 0x20($sp)
/* F440 8000E840 27A20022 */  addiu      $v0, $sp, 0x22
/* F444 8000E844 AFA20010 */  sw         $v0, 0x10($sp)
/* F448 8000E848 8FA6001C */  lw         $a2, 0x1C($sp)
/* F44C 8000E84C 0C0012EA */  jal        func_80004BA8
/* F450 8000E850 27A70026 */   addiu     $a3, $sp, 0x26
.L8000E854:
/* F454 8000E854 8FBF003C */  lw         $ra, 0x3C($sp)
/* F458 8000E858 8FB00038 */  lw         $s0, 0x38($sp)
/* F45C 8000E85C 03E00008 */  jr         $ra
/* F460 8000E860 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8000E864
/* F464 8000E864 3C02800B */  lui        $v0, %hi(D_800ABADC)
/* F468 8000E868 8C42BADC */  lw         $v0, %lo(D_800ABADC)($v0)
/* F46C 8000E86C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F470 8000E870 AFB00020 */  sw         $s0, 0x20($sp)
/* F474 8000E874 00808021 */  addu       $s0, $a0, $zero
/* F478 8000E878 AFB20028 */  sw         $s2, 0x28($sp)
/* F47C 8000E87C 00A09021 */  addu       $s2, $a1, $zero
/* F480 8000E880 00001821 */  addu       $v1, $zero, $zero
/* F484 8000E884 AFBF0030 */  sw         $ra, 0x30($sp)
/* F488 8000E888 AFB3002C */  sw         $s3, 0x2C($sp)
/* F48C 8000E88C AFB10024 */  sw         $s1, 0x24($sp)
/* F490 8000E890 10400005 */  beqz       $v0, .L8000E8A8
/* F494 8000E894 AFA00018 */   sw        $zero, 0x18($sp)
/* F498 8000E898 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* F49C 8000E89C 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* F4A0 8000E8A0 14400004 */  bnez       $v0, .L8000E8B4
/* F4A4 8000E8A4 00000000 */   nop
.L8000E8A8:
/* F4A8 8000E8A8 0C003704 */  jal        func_8000DC10
/* F4AC 8000E8AC 00000000 */   nop
/* F4B0 8000E8B0 00401821 */  addu       $v1, $v0, $zero
.L8000E8B4:
/* F4B4 8000E8B4 14600028 */  bnez       $v1, .L8000E958
/* F4B8 8000E8B8 00601021 */   addu      $v0, $v1, $zero
/* F4BC 8000E8BC 00101040 */  sll        $v0, $s0, 1
/* F4C0 8000E8C0 00501021 */  addu       $v0, $v0, $s0
/* F4C4 8000E8C4 00021080 */  sll        $v0, $v0, 2
/* F4C8 8000E8C8 00501021 */  addu       $v0, $v0, $s0
/* F4CC 8000E8CC 000210C0 */  sll        $v0, $v0, 3
/* F4D0 8000E8D0 3C03802A */  lui        $v1, %hi(D_802A0510)
/* F4D4 8000E8D4 24630510 */  addiu      $v1, $v1, %lo(D_802A0510)
/* F4D8 8000E8D8 00439821 */  addu       $s3, $v0, $v1
/* F4DC 8000E8DC 02602021 */  addu       $a0, $s3, $zero
/* F4E0 8000E8E0 0C003BA7 */  jal        func_8000EE9C
/* F4E4 8000E8E4 27A50018 */   addiu     $a1, $sp, 0x18
/* F4E8 8000E8E8 00401821 */  addu       $v1, $v0, $zero
/* F4EC 8000E8EC 1460001A */  bnez       $v1, .L8000E958
/* F4F0 8000E8F0 00601021 */   addu      $v0, $v1, $zero
/* F4F4 8000E8F4 001220C0 */  sll        $a0, $s2, 3
/* F4F8 8000E8F8 00922021 */  addu       $a0, $a0, $s2
/* F4FC 8000E8FC 00041100 */  sll        $v0, $a0, 4
/* F500 8000E900 00822021 */  addu       $a0, $a0, $v0
/* F504 8000E904 00042080 */  sll        $a0, $a0, 2
/* F508 8000E908 3C02802A */  lui        $v0, %hi(D_8029E710)
/* F50C 8000E90C 2442E710 */  addiu      $v0, $v0, %lo(D_8029E710)
/* F510 8000E910 00822021 */  addu       $a0, $a0, $v0
/* F514 8000E914 00002821 */  addu       $a1, $zero, $zero
/* F518 8000E918 24060264 */  addiu      $a2, $zero, 0x264
/* F51C 8000E91C 24110600 */  addiu      $s1, $zero, 0x600
/* F520 8000E920 02510018 */  mult       $s2, $s1
/* F524 8000E924 00009012 */  mflo       $s2
/* F528 8000E928 3C10802A */  lui        $s0, %hi(D_8029FF08)
/* F52C 8000E92C 2610FF08 */  addiu      $s0, $s0, %lo(D_8029FF08)
/* F530 8000E930 0C026D3C */  jal        func_8009B4F0
/* F534 8000E934 A2000000 */   sb        $zero, 0x0($s0)
/* F538 8000E938 02602021 */  addu       $a0, $s3, $zero
/* F53C 8000E93C 2610FFF8 */  addiu      $s0, $s0, -0x8
/* F540 8000E940 AFB10010 */  sw         $s1, 0x10($sp)
/* F544 8000E944 AFB00014 */  sw         $s0, 0x14($sp)
/* F548 8000E948 8FA50018 */  lw         $a1, 0x18($sp)
/* F54C 8000E94C 24060001 */  addiu      $a2, $zero, 0x1
/* F550 8000E950 0C001282 */  jal        func_80004A08
/* F554 8000E954 02403821 */   addu      $a3, $s2, $zero
.L8000E958:
/* F558 8000E958 8FBF0030 */  lw         $ra, 0x30($sp)
/* F55C 8000E95C 8FB3002C */  lw         $s3, 0x2C($sp)
/* F560 8000E960 8FB20028 */  lw         $s2, 0x28($sp)
/* F564 8000E964 8FB10024 */  lw         $s1, 0x24($sp)
/* F568 8000E968 8FB00020 */  lw         $s0, 0x20($sp)
/* F56C 8000E96C 03E00008 */  jr         $ra
/* F570 8000E970 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8000E974
/* F574 8000E974 3C02800B */  lui        $v0, %hi(D_800ABADC)
/* F578 8000E978 8C42BADC */  lw         $v0, %lo(D_800ABADC)($v0)
/* F57C 8000E97C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* F580 8000E980 AFB10044 */  sw         $s1, 0x44($sp)
/* F584 8000E984 00808821 */  addu       $s1, $a0, $zero
/* F588 8000E988 AFBF004C */  sw         $ra, 0x4C($sp)
/* F58C 8000E98C AFB20048 */  sw         $s2, 0x48($sp)
/* F590 8000E990 AFB00040 */  sw         $s0, 0x40($sp)
/* F594 8000E994 AFA00030 */  sw         $zero, 0x30($sp)
/* F598 8000E998 AFA00024 */  sw         $zero, 0x24($sp)
/* F59C 8000E99C AFA00028 */  sw         $zero, 0x28($sp)
/* F5A0 8000E9A0 AFA0002C */  sw         $zero, 0x2C($sp)
/* F5A4 8000E9A4 AFA00020 */  sw         $zero, 0x20($sp)
/* F5A8 8000E9A8 AFA00034 */  sw         $zero, 0x34($sp)
/* F5AC 8000E9AC 3C01800B */  lui        $at, %hi(D_800ABAE0)
/* F5B0 8000E9B0 AC20BAE0 */  sw         $zero, %lo(D_800ABAE0)($at)
/* F5B4 8000E9B4 10400005 */  beqz       $v0, .L8000E9CC
/* F5B8 8000E9B8 00002021 */   addu      $a0, $zero, $zero
/* F5BC 8000E9BC 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* F5C0 8000E9C0 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* F5C4 8000E9C4 14400004 */  bnez       $v0, .L8000E9D8
/* F5C8 8000E9C8 00000000 */   nop
.L8000E9CC:
/* F5CC 8000E9CC 0C003704 */  jal        func_8000DC10
/* F5D0 8000E9D0 00000000 */   nop
/* F5D4 8000E9D4 00402021 */  addu       $a0, $v0, $zero
.L8000E9D8:
/* F5D8 8000E9D8 14800074 */  bnez       $a0, .L8000EBAC
/* F5DC 8000E9DC 00801021 */   addu      $v0, $a0, $zero
/* F5E0 8000E9E0 00111040 */  sll        $v0, $s1, 1
/* F5E4 8000E9E4 00511021 */  addu       $v0, $v0, $s1
/* F5E8 8000E9E8 00021080 */  sll        $v0, $v0, 2
/* F5EC 8000E9EC 00511021 */  addu       $v0, $v0, $s1
/* F5F0 8000E9F0 000210C0 */  sll        $v0, $v0, 3
/* F5F4 8000E9F4 3C03802A */  lui        $v1, %hi(D_802A0510)
/* F5F8 8000E9F8 24630510 */  addiu      $v1, $v1, %lo(D_802A0510)
/* F5FC 8000E9FC 00438021 */  addu       $s0, $v0, $v1
/* F600 8000EA00 02002021 */  addu       $a0, $s0, $zero
/* F604 8000EA04 0C003B97 */  jal        func_8000EE5C
/* F608 8000EA08 27A50020 */   addiu     $a1, $sp, 0x20
/* F60C 8000EA0C 00402021 */  addu       $a0, $v0, $zero
/* F610 8000EA10 38820009 */  xori       $v0, $a0, 0x9
/* F614 8000EA14 2C420001 */  sltiu      $v0, $v0, 0x1
/* F618 8000EA18 2C830001 */  sltiu      $v1, $a0, 0x1
/* F61C 8000EA1C 00431025 */  or         $v0, $v0, $v1
/* F620 8000EA20 10400003 */  beqz       $v0, .L8000EA30
/* F624 8000EA24 24020001 */   addiu     $v0, $zero, 0x1
/* F628 8000EA28 3C01800B */  lui        $at, %hi(D_800ABAE0)
/* F62C 8000EA2C AC22BAE0 */  sw         $v0, %lo(D_800ABAE0)($at)
.L8000EA30:
/* F630 8000EA30 3C02800B */  lui        $v0, %hi(D_800ABAE0)
/* F634 8000EA34 8C42BAE0 */  lw         $v0, %lo(D_800ABAE0)($v0)
/* F638 8000EA38 1440004A */  bnez       $v0, .L8000EB64
/* F63C 8000EA3C 241211C0 */   addiu     $s2, $zero, 0x11C0
/* F640 8000EA40 02002021 */  addu       $a0, $s0, $zero
/* F644 8000EA44 27A50024 */  addiu      $a1, $sp, 0x24
/* F648 8000EA48 0C001307 */  jal        func_80004C1C
/* F64C 8000EA4C 27A60028 */   addiu     $a2, $sp, 0x28
/* F650 8000EA50 00402021 */  addu       $a0, $v0, $zero
/* F654 8000EA54 14800055 */  bnez       $a0, .L8000EBAC
/* F658 8000EA58 00000000 */   nop
/* F65C 8000EA5C 8FA30028 */  lw         $v1, 0x28($sp)
/* F660 8000EA60 8FA20024 */  lw         $v0, 0x24($sp)
/* F664 8000EA64 14620003 */  bne        $v1, $v0, .L8000EA74
/* F668 8000EA68 02002021 */   addu      $a0, $s0, $zero
/* F66C 8000EA6C 08003AEB */  j          .L8000EBAC
/* F670 8000EA70 2402FFFF */   addiu     $v0, $zero, -0x1
.L8000EA74:
/* F674 8000EA74 0C0012D9 */  jal        func_80004B64
/* F678 8000EA78 27A5002C */   addiu     $a1, $sp, 0x2C
/* F67C 8000EA7C 00402021 */  addu       $a0, $v0, $zero
/* F680 8000EA80 1480004A */  bnez       $a0, .L8000EBAC
/* F684 8000EA84 00000000 */   nop
/* F688 8000EA88 8FA2002C */  lw         $v0, 0x2C($sp)
/* F68C 8000EA8C 284211C0 */  slti       $v0, $v0, 0x11C0
/* F690 8000EA90 14400046 */  bnez       $v0, .L8000EBAC
/* F694 8000EA94 2402FFFE */   addiu     $v0, $zero, -0x2
/* F698 8000EA98 02202021 */  addu       $a0, $s1, $zero
/* F69C 8000EA9C 27A50030 */  addiu      $a1, $sp, 0x30
/* F6A0 8000EAA0 0C003859 */  jal        func_8000E164
/* F6A4 8000EAA4 27A60034 */   addiu     $a2, $sp, 0x34
/* F6A8 8000EAA8 8FA30034 */  lw         $v1, 0x34($sp)
/* F6AC 8000EAAC 14600003 */  bnez       $v1, .L8000EABC
/* F6B0 8000EAB0 00402021 */   addu      $a0, $v0, $zero
/* F6B4 8000EAB4 08003AC1 */  j          .L8000EB04
/* F6B8 8000EAB8 AFA00020 */   sw        $zero, 0x20($sp)
.L8000EABC:
/* F6BC 8000EABC 2C830001 */  sltiu      $v1, $a0, 0x1
/* F6C0 8000EAC0 38820005 */  xori       $v0, $a0, 0x5
/* F6C4 8000EAC4 2C420001 */  sltiu      $v0, $v0, 0x1
/* F6C8 8000EAC8 00621825 */  or         $v1, $v1, $v0
/* F6CC 8000EACC 5060000E */  beql       $v1, $zero, .L8000EB08
/* F6D0 8000EAD0 00112040 */   sll       $a0, $s1, 1
/* F6D4 8000EAD4 8FA20024 */  lw         $v0, 0x24($sp)
/* F6D8 8000EAD8 1840000A */  blez       $v0, .L8000EB04
/* F6DC 8000EADC 00001821 */   addu      $v1, $zero, $zero
/* F6E0 8000EAE0 00402821 */  addu       $a1, $v0, $zero
/* F6E4 8000EAE4 8FA40030 */  lw         $a0, 0x30($sp)
.L8000EAE8:
/* F6E8 8000EAE8 8C820014 */  lw         $v0, 0x14($a0)
/* F6EC 8000EAEC 50400005 */  beql       $v0, $zero, .L8000EB04
/* F6F0 8000EAF0 AFA30020 */   sw        $v1, 0x20($sp)
/* F6F4 8000EAF4 24630001 */  addiu      $v1, $v1, 0x1
/* F6F8 8000EAF8 0065102A */  slt        $v0, $v1, $a1
/* F6FC 8000EAFC 1440FFFA */  bnez       $v0, .L8000EAE8
/* F700 8000EB00 24840020 */   addiu     $a0, $a0, 0x20
.L8000EB04:
/* F704 8000EB04 00112040 */  sll        $a0, $s1, 1
.L8000EB08:
/* F708 8000EB08 00912021 */  addu       $a0, $a0, $s1
/* F70C 8000EB0C 00042080 */  sll        $a0, $a0, 2
/* F710 8000EB10 00912021 */  addu       $a0, $a0, $s1
/* F714 8000EB14 000420C0 */  sll        $a0, $a0, 3
/* F718 8000EB18 3C02802A */  lui        $v0, %hi(D_802A0510)
/* F71C 8000EB1C 24420510 */  addiu      $v0, $v0, %lo(D_802A0510)
/* F720 8000EB20 00822021 */  addu       $a0, $a0, $v0
/* F724 8000EB24 3C05800B */  lui        $a1, %hi(D_800ABAAE)
/* F728 8000EB28 94A5BAAE */  lhu        $a1, %lo(D_800ABAAE)($a1)
/* F72C 8000EB2C 3C06800B */  lui        $a2, %hi(D_800ABAB0)
/* F730 8000EB30 8CC6BAB0 */  lw         $a2, %lo(D_800ABAB0)($a2)
/* F734 8000EB34 3C07800B */  lui        $a3, %hi(D_800ABAB4)
/* F738 8000EB38 24E7BAB4 */  addiu      $a3, $a3, %lo(D_800ABAB4)
/* F73C 8000EB3C 3C02800B */  lui        $v0, %hi(D_800ABAD4)
/* F740 8000EB40 2442BAD4 */  addiu      $v0, $v0, %lo(D_800ABAD4)
/* F744 8000EB44 AFA20010 */  sw         $v0, 0x10($sp)
/* F748 8000EB48 27A20020 */  addiu      $v0, $sp, 0x20
/* F74C 8000EB4C AFB20014 */  sw         $s2, 0x14($sp)
/* F750 8000EB50 0C00131C */  jal        func_80004C70
/* F754 8000EB54 AFA20018 */   sw        $v0, 0x18($sp)
/* F758 8000EB58 00402021 */  addu       $a0, $v0, $zero
/* F75C 8000EB5C 14800013 */  bnez       $a0, .L8000EBAC
/* F760 8000EB60 00000000 */   nop
.L8000EB64:
/* F764 8000EB64 0C000EC6 */  jal        func_80003B18
/* F768 8000EB68 00000000 */   nop
/* F76C 8000EB6C 00112040 */  sll        $a0, $s1, 1
/* F770 8000EB70 00912021 */  addu       $a0, $a0, $s1
/* F774 8000EB74 00042080 */  sll        $a0, $a0, 2
/* F778 8000EB78 00912021 */  addu       $a0, $a0, $s1
/* F77C 8000EB7C 000420C0 */  sll        $a0, $a0, 3
/* F780 8000EB80 3C02802A */  lui        $v0, %hi(D_802A0510)
/* F784 8000EB84 24420510 */  addiu      $v0, $v0, %lo(D_802A0510)
/* F788 8000EB88 00822021 */  addu       $a0, $a0, $v0
/* F78C 8000EB8C 3C02803F */  lui        $v0, %hi(D_803ED3C0)
/* F790 8000EB90 2442D3C0 */  addiu      $v0, $v0, %lo(D_803ED3C0)
/* F794 8000EB94 AFB20010 */  sw         $s2, 0x10($sp)
/* F798 8000EB98 AFA20014 */  sw         $v0, 0x14($sp)
/* F79C 8000EB9C 8FA50020 */  lw         $a1, 0x20($sp)
/* F7A0 8000EBA0 24060001 */  addiu      $a2, $zero, 0x1
/* F7A4 8000EBA4 0C001282 */  jal        func_80004A08
/* F7A8 8000EBA8 00003821 */   addu      $a3, $zero, $zero
.L8000EBAC:
/* F7AC 8000EBAC 8FBF004C */  lw         $ra, 0x4C($sp)
/* F7B0 8000EBB0 8FB20048 */  lw         $s2, 0x48($sp)
/* F7B4 8000EBB4 8FB10044 */  lw         $s1, 0x44($sp)
/* F7B8 8000EBB8 8FB00040 */  lw         $s0, 0x40($sp)
/* F7BC 8000EBBC 03E00008 */  jr         $ra
/* F7C0 8000EBC0 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8000EBC4
/* F7C4 8000EBC4 3C02800B */  lui        $v0, %hi(D_800ABADC)
/* F7C8 8000EBC8 8C42BADC */  lw         $v0, %lo(D_800ABADC)($v0)
/* F7CC 8000EBCC 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* F7D0 8000EBD0 AFB40040 */  sw         $s4, 0x40($sp)
/* F7D4 8000EBD4 0080A021 */  addu       $s4, $a0, $zero
/* F7D8 8000EBD8 AFBE0050 */  sw         $fp, 0x50($sp)
/* F7DC 8000EBDC 00A0F021 */  addu       $fp, $a1, $zero
/* F7E0 8000EBE0 AFB60048 */  sw         $s6, 0x48($sp)
/* F7E4 8000EBE4 00C0B021 */  addu       $s6, $a2, $zero
/* F7E8 8000EBE8 AFBF0054 */  sw         $ra, 0x54($sp)
/* F7EC 8000EBEC AFB7004C */  sw         $s7, 0x4C($sp)
/* F7F0 8000EBF0 AFB50044 */  sw         $s5, 0x44($sp)
/* F7F4 8000EBF4 AFB3003C */  sw         $s3, 0x3C($sp)
/* F7F8 8000EBF8 AFB20038 */  sw         $s2, 0x38($sp)
/* F7FC 8000EBFC AFB10034 */  sw         $s1, 0x34($sp)
/* F800 8000EC00 AFB00030 */  sw         $s0, 0x30($sp)
/* F804 8000EC04 AFA00024 */  sw         $zero, 0x24($sp)
/* F808 8000EC08 AFA00028 */  sw         $zero, 0x28($sp)
/* F80C 8000EC0C AFA0002C */  sw         $zero, 0x2C($sp)
/* F810 8000EC10 AFA00020 */  sw         $zero, 0x20($sp)
/* F814 8000EC14 3C01800B */  lui        $at, %hi(D_800ABAE0)
/* F818 8000EC18 AC20BAE0 */  sw         $zero, %lo(D_800ABAE0)($at)
/* F81C 8000EC1C 10400005 */  beqz       $v0, .L8000EC34
/* F820 8000EC20 00001821 */   addu      $v1, $zero, $zero
/* F824 8000EC24 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* F828 8000EC28 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* F82C 8000EC2C 14400004 */  bnez       $v0, .L8000EC40
/* F830 8000EC30 00000000 */   nop
.L8000EC34:
/* F834 8000EC34 0C003704 */  jal        func_8000DC10
/* F838 8000EC38 00000000 */   nop
/* F83C 8000EC3C 00401821 */  addu       $v1, $v0, $zero
.L8000EC40:
/* F840 8000EC40 1460007A */  bnez       $v1, .L8000EE2C
/* F844 8000EC44 00601021 */   addu      $v0, $v1, $zero
/* F848 8000EC48 00141040 */  sll        $v0, $s4, 1
/* F84C 8000EC4C 00541021 */  addu       $v0, $v0, $s4
/* F850 8000EC50 00021080 */  sll        $v0, $v0, 2
/* F854 8000EC54 00541021 */  addu       $v0, $v0, $s4
/* F858 8000EC58 000288C0 */  sll        $s1, $v0, 3
/* F85C 8000EC5C 3C15802A */  lui        $s5, %hi(D_802A0510)
/* F860 8000EC60 26B50510 */  addiu      $s5, $s5, %lo(D_802A0510)
/* F864 8000EC64 02358021 */  addu       $s0, $s1, $s5
/* F868 8000EC68 02002021 */  addu       $a0, $s0, $zero
/* F86C 8000EC6C 0C003BA7 */  jal        func_8000EE9C
/* F870 8000EC70 27A50020 */   addiu     $a1, $sp, 0x20
/* F874 8000EC74 00401821 */  addu       $v1, $v0, $zero
/* F878 8000EC78 38620009 */  xori       $v0, $v1, 0x9
/* F87C 8000EC7C 2C420001 */  sltiu      $v0, $v0, 0x1
/* F880 8000EC80 2C630001 */  sltiu      $v1, $v1, 0x1
/* F884 8000EC84 00431025 */  or         $v0, $v0, $v1
/* F888 8000EC88 10400004 */  beqz       $v0, .L8000EC9C
/* F88C 8000EC8C 24170600 */   addiu     $s7, $zero, 0x600
/* F890 8000EC90 24020001 */  addiu      $v0, $zero, 0x1
/* F894 8000EC94 3C01800B */  lui        $at, %hi(D_800ABAE0)
/* F898 8000EC98 AC22BAE0 */  sw         $v0, %lo(D_800ABAE0)($at)
.L8000EC9C:
/* F89C 8000EC9C 3C02800B */  lui        $v0, %hi(D_800ABAE0)
/* F8A0 8000ECA0 8C42BAE0 */  lw         $v0, %lo(D_800ABAE0)($v0)
/* F8A4 8000ECA4 1440003E */  bnez       $v0, .L8000EDA0
/* F8A8 8000ECA8 001E1040 */   sll       $v0, $fp, 1
/* F8AC 8000ECAC 02002021 */  addu       $a0, $s0, $zero
/* F8B0 8000ECB0 27A50024 */  addiu      $a1, $sp, 0x24
/* F8B4 8000ECB4 0C001307 */  jal        func_80004C1C
/* F8B8 8000ECB8 27A60028 */   addiu     $a2, $sp, 0x28
/* F8BC 8000ECBC 00401821 */  addu       $v1, $v0, $zero
/* F8C0 8000ECC0 1460005A */  bnez       $v1, .L8000EE2C
/* F8C4 8000ECC4 00000000 */   nop
/* F8C8 8000ECC8 8FA30028 */  lw         $v1, 0x28($sp)
/* F8CC 8000ECCC 8FA20024 */  lw         $v0, 0x24($sp)
/* F8D0 8000ECD0 14620003 */  bne        $v1, $v0, .L8000ECE0
/* F8D4 8000ECD4 02002021 */   addu      $a0, $s0, $zero
/* F8D8 8000ECD8 08003B8B */  j          .L8000EE2C
/* F8DC 8000ECDC 2402FFFF */   addiu     $v0, $zero, -0x1
.L8000ECE0:
/* F8E0 8000ECE0 0C0012D9 */  jal        func_80004B64
/* F8E4 8000ECE4 27A5002C */   addiu     $a1, $sp, 0x2C
/* F8E8 8000ECE8 00401821 */  addu       $v1, $v0, $zero
/* F8EC 8000ECEC 1460004F */  bnez       $v1, .L8000EE2C
/* F8F0 8000ECF0 00000000 */   nop
/* F8F4 8000ECF4 8FA2002C */  lw         $v0, 0x2C($sp)
/* F8F8 8000ECF8 28420600 */  slti       $v0, $v0, 0x600
/* F8FC 8000ECFC 1440004B */  bnez       $v0, .L8000EE2C
/* F900 8000ED00 2402FFFE */   addiu     $v0, $zero, -0x2
/* F904 8000ED04 02002021 */  addu       $a0, $s0, $zero
/* F908 8000ED08 3C05800B */  lui        $a1, %hi(D_800ABAAE)
/* F90C 8000ED0C 94A5BAAE */  lhu        $a1, %lo(D_800ABAAE)($a1)
/* F910 8000ED10 3C06800B */  lui        $a2, %hi(D_800ABAB0)
/* F914 8000ED14 8CC6BAB0 */  lw         $a2, %lo(D_800ABAB0)($a2)
/* F918 8000ED18 3C07800B */  lui        $a3, %hi(D_800ABAB4)
/* F91C 8000ED1C 24E7BAB4 */  addiu      $a3, $a3, %lo(D_800ABAB4)
/* F920 8000ED20 3C02800B */  lui        $v0, %hi(D_800ABAD8)
/* F924 8000ED24 2442BAD8 */  addiu      $v0, $v0, %lo(D_800ABAD8)
/* F928 8000ED28 AFA20010 */  sw         $v0, 0x10($sp)
/* F92C 8000ED2C 24023C00 */  addiu      $v0, $zero, 0x3C00
/* F930 8000ED30 AFA20014 */  sw         $v0, 0x14($sp)
/* F934 8000ED34 27A20020 */  addiu      $v0, $sp, 0x20
/* F938 8000ED38 0C00131C */  jal        func_80004C70
/* F93C 8000ED3C AFA20018 */   sw        $v0, 0x18($sp)
/* F940 8000ED40 00401821 */  addu       $v1, $v0, $zero
/* F944 8000ED44 14600039 */  bnez       $v1, .L8000EE2C
/* F948 8000ED48 00008021 */   addu      $s0, $zero, $zero
/* F94C 8000ED4C 3C12802A */  lui        $s2, %hi(D_8029FF00)
/* F950 8000ED50 2652FF00 */  addiu      $s2, $s2, %lo(D_8029FF00)
/* F954 8000ED54 02209821 */  addu       $s3, $s1, $zero
/* F958 8000ED58 00008821 */  addu       $s1, $zero, $zero
/* F95C 8000ED5C 02402021 */  addu       $a0, $s2, $zero
.L8000ED60:
/* F960 8000ED60 00002821 */  addu       $a1, $zero, $zero
/* F964 8000ED64 0C026D3C */  jal        func_8009B4F0
/* F968 8000ED68 24060610 */   addiu     $a2, $zero, 0x610
/* F96C 8000ED6C 02752021 */  addu       $a0, $s3, $s5
/* F970 8000ED70 AFB70010 */  sw         $s7, 0x10($sp)
/* F974 8000ED74 AFB20014 */  sw         $s2, 0x14($sp)
/* F978 8000ED78 8FA50020 */  lw         $a1, 0x20($sp)
/* F97C 8000ED7C 24060001 */  addiu      $a2, $zero, 0x1
/* F980 8000ED80 02203821 */  addu       $a3, $s1, $zero
/* F984 8000ED84 26310600 */  addiu      $s1, $s1, 0x600
/* F988 8000ED88 0C001282 */  jal        func_80004A08
/* F98C 8000ED8C 26100001 */   addiu     $s0, $s0, 0x1
/* F990 8000ED90 2A02000A */  slti       $v0, $s0, 0xA
/* F994 8000ED94 1440FFF2 */  bnez       $v0, .L8000ED60
/* F998 8000ED98 02402021 */   addu      $a0, $s2, $zero
/* F99C 8000ED9C 001E1040 */  sll        $v0, $fp, 1
.L8000EDA0:
/* F9A0 8000EDA0 005E1021 */  addu       $v0, $v0, $fp
/* F9A4 8000EDA4 00028A40 */  sll        $s1, $v0, 9
/* F9A8 8000EDA8 00008021 */  addu       $s0, $zero, $zero
/* F9AC 8000EDAC 02C01821 */  addu       $v1, $s6, $zero
.L8000EDB0:
/* F9B0 8000EDB0 90620000 */  lbu        $v0, 0x0($v1)
/* F9B4 8000EDB4 3C01802A */  lui        $at, %hi(D_8029FF08)
/* F9B8 8000EDB8 00300821 */  addu       $at, $at, $s0
/* F9BC 8000EDBC A022FF08 */  sb         $v0, %lo(D_8029FF08)($at)
/* F9C0 8000EDC0 80620000 */  lb         $v0, 0x0($v1)
/* F9C4 8000EDC4 14400004 */  bnez       $v0, .L8000EDD8
/* F9C8 8000EDC8 26100001 */   addiu     $s0, $s0, 0x1
/* F9CC 8000EDCC 26C30020 */  addiu      $v1, $s6, 0x20
/* F9D0 8000EDD0 24100020 */  addiu      $s0, $zero, 0x20
/* F9D4 8000EDD4 26100001 */  addiu      $s0, $s0, 0x1
.L8000EDD8:
/* F9D8 8000EDD8 2A020020 */  slti       $v0, $s0, 0x20
/* F9DC 8000EDDC 1440FFF4 */  bnez       $v0, .L8000EDB0
/* F9E0 8000EDE0 24630001 */   addiu     $v1, $v1, 0x1
/* F9E4 8000EDE4 0C003C56 */  jal        func_8000F158
/* F9E8 8000EDE8 00000000 */   nop
/* F9EC 8000EDEC 00142040 */  sll        $a0, $s4, 1
/* F9F0 8000EDF0 00942021 */  addu       $a0, $a0, $s4
/* F9F4 8000EDF4 00042080 */  sll        $a0, $a0, 2
/* F9F8 8000EDF8 00942021 */  addu       $a0, $a0, $s4
/* F9FC 8000EDFC 000420C0 */  sll        $a0, $a0, 3
/* FA00 8000EE00 3C02802A */  lui        $v0, %hi(D_802A0510)
/* FA04 8000EE04 24420510 */  addiu      $v0, $v0, %lo(D_802A0510)
/* FA08 8000EE08 00822021 */  addu       $a0, $a0, $v0
/* FA0C 8000EE0C 3C02802A */  lui        $v0, %hi(D_8029FF00)
/* FA10 8000EE10 2442FF00 */  addiu      $v0, $v0, %lo(D_8029FF00)
/* FA14 8000EE14 AFB70010 */  sw         $s7, 0x10($sp)
/* FA18 8000EE18 AFA20014 */  sw         $v0, 0x14($sp)
/* FA1C 8000EE1C 8FA50020 */  lw         $a1, 0x20($sp)
/* FA20 8000EE20 24060001 */  addiu      $a2, $zero, 0x1
/* FA24 8000EE24 0C001282 */  jal        func_80004A08
/* FA28 8000EE28 02203821 */   addu      $a3, $s1, $zero
.L8000EE2C:
/* FA2C 8000EE2C 8FBF0054 */  lw         $ra, 0x54($sp)
/* FA30 8000EE30 8FBE0050 */  lw         $fp, 0x50($sp)
/* FA34 8000EE34 8FB7004C */  lw         $s7, 0x4C($sp)
/* FA38 8000EE38 8FB60048 */  lw         $s6, 0x48($sp)
/* FA3C 8000EE3C 8FB50044 */  lw         $s5, 0x44($sp)
/* FA40 8000EE40 8FB40040 */  lw         $s4, 0x40($sp)
/* FA44 8000EE44 8FB3003C */  lw         $s3, 0x3C($sp)
/* FA48 8000EE48 8FB20038 */  lw         $s2, 0x38($sp)
/* FA4C 8000EE4C 8FB10034 */  lw         $s1, 0x34($sp)
/* FA50 8000EE50 8FB00030 */  lw         $s0, 0x30($sp)
/* FA54 8000EE54 03E00008 */  jr         $ra
/* FA58 8000EE58 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8000EE5C
/* FA5C 8000EE5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FA60 8000EE60 AFA50014 */  sw         $a1, 0x14($sp)
/* FA64 8000EE64 3C05800B */  lui        $a1, %hi(D_800ABAAE)
/* FA68 8000EE68 94A5BAAE */  lhu        $a1, %lo(D_800ABAAE)($a1)
/* FA6C 8000EE6C 3C06800B */  lui        $a2, %hi(D_800ABAB0)
/* FA70 8000EE70 8CC6BAB0 */  lw         $a2, %lo(D_800ABAB0)($a2)
/* FA74 8000EE74 3C02800B */  lui        $v0, %hi(D_800ABAD4)
/* FA78 8000EE78 2442BAD4 */  addiu      $v0, $v0, %lo(D_800ABAD4)
/* FA7C 8000EE7C 3C07800B */  lui        $a3, %hi(D_800ABAB4)
/* FA80 8000EE80 24E7BAB4 */  addiu      $a3, $a3, %lo(D_800ABAB4)
/* FA84 8000EE84 AFBF0018 */  sw         $ra, 0x18($sp)
/* FA88 8000EE88 0C0012B8 */  jal        func_80004AE0
/* FA8C 8000EE8C AFA20010 */   sw        $v0, 0x10($sp)
/* FA90 8000EE90 8FBF0018 */  lw         $ra, 0x18($sp)
/* FA94 8000EE94 03E00008 */  jr         $ra
/* FA98 8000EE98 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000EE9C
/* FA9C 8000EE9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FAA0 8000EEA0 AFA50014 */  sw         $a1, 0x14($sp)
/* FAA4 8000EEA4 3C05800B */  lui        $a1, %hi(D_800ABAAE)
/* FAA8 8000EEA8 94A5BAAE */  lhu        $a1, %lo(D_800ABAAE)($a1)
/* FAAC 8000EEAC 3C06800B */  lui        $a2, %hi(D_800ABAB0)
/* FAB0 8000EEB0 8CC6BAB0 */  lw         $a2, %lo(D_800ABAB0)($a2)
/* FAB4 8000EEB4 3C02800B */  lui        $v0, %hi(D_800ABAD8)
/* FAB8 8000EEB8 2442BAD8 */  addiu      $v0, $v0, %lo(D_800ABAD8)
/* FABC 8000EEBC 3C07800B */  lui        $a3, %hi(D_800ABAC4)
/* FAC0 8000EEC0 24E7BAC4 */  addiu      $a3, $a3, %lo(D_800ABAC4)
/* FAC4 8000EEC4 AFBF0018 */  sw         $ra, 0x18($sp)
/* FAC8 8000EEC8 0C0012B8 */  jal        func_80004AE0
/* FACC 8000EECC AFA20010 */   sw        $v0, 0x10($sp)
/* FAD0 8000EED0 8FBF0018 */  lw         $ra, 0x18($sp)
/* FAD4 8000EED4 03E00008 */  jr         $ra
/* FAD8 8000EED8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000EEDC
/* FADC 8000EEDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FAE0 8000EEE0 3C05802A */  lui        $a1, %hi(D_8029FF04)
/* FAE4 8000EEE4 24A5FF04 */  addiu      $a1, $a1, %lo(D_8029FF04)
/* FAE8 8000EEE8 AFBF0010 */  sw         $ra, 0x10($sp)
/* FAEC 8000EEEC 8CA30000 */  lw         $v1, 0x0($a1)
/* FAF0 8000EEF0 3C020610 */  lui        $v0, (0x6105701 >> 16)
/* FAF4 8000EEF4 34425701 */  ori        $v0, $v0, (0x6105701 & 0xFFFF)
/* FAF8 8000EEF8 14620008 */  bne        $v1, $v0, .L8000EF1C
/* FAFC 8000EEFC 00002021 */   addu      $a0, $zero, $zero
/* FB00 8000EF00 00A02021 */  addu       $a0, $a1, $zero
/* FB04 8000EF04 0C000EB2 */  jal        func_80003AC8
/* FB08 8000EF08 240505FC */   addiu     $a1, $zero, 0x5FC
/* FB0C 8000EF0C 3C03802A */  lui        $v1, %hi(D_8029FF00)
/* FB10 8000EF10 8C63FF00 */  lw         $v1, %lo(D_8029FF00)($v1)
/* FB14 8000EF14 00621826 */  xor        $v1, $v1, $v0
/* FB18 8000EF18 2C640001 */  sltiu      $a0, $v1, 0x1
.L8000EF1C:
/* FB1C 8000EF1C 8FBF0010 */  lw         $ra, 0x10($sp)
/* FB20 8000EF20 00801021 */  addu       $v0, $a0, $zero
/* FB24 8000EF24 03E00008 */  jr         $ra
/* FB28 8000EF28 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000EF2C
/* FB2C 8000EF2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FB30 8000EF30 AFBF0018 */  sw         $ra, 0x18($sp)
/* FB34 8000EF34 0C003BB7 */  jal        func_8000EEDC
/* FB38 8000EF38 00000000 */   nop
/* FB3C 8000EF3C 10400083 */  beqz       $v0, .L8000F14C
/* FB40 8000EF40 00001021 */   addu      $v0, $zero, $zero
/* FB44 8000EF44 3C02803F */  lui        $v0, %hi(D_803ED3D0)
/* FB48 8000EF48 2442D3D0 */  addiu      $v0, $v0, %lo(D_803ED3D0)
/* FB4C 8000EF4C 3C06802A */  lui        $a2, %hi(D_802A026C)
/* FB50 8000EF50 24C6026C */  addiu      $a2, $a2, %lo(D_802A026C)
/* FB54 8000EF54 88C30000 */  lwl        $v1, 0x0($a2)
/* FB58 8000EF58 98C30003 */  lwr        $v1, 0x3($a2)
/* FB5C 8000EF5C 80C40004 */  lb         $a0, 0x4($a2)
/* FB60 8000EF60 A8430000 */  swl        $v1, 0x0($v0)
/* FB64 8000EF64 B8430003 */  swr        $v1, 0x3($v0)
/* FB68 8000EF68 A0440004 */  sb         $a0, 0x4($v0)
/* FB6C 8000EF6C 24060008 */  addiu      $a2, $zero, 0x8
/* FB70 8000EF70 24440001 */  addiu      $a0, $v0, 0x1
/* FB74 8000EF74 24450003 */  addiu      $a1, $v0, 0x3
.L8000EF78:
/* FB78 8000EF78 90820000 */  lbu        $v0, 0x0($a0)
/* FB7C 8000EF7C 00021940 */  sll        $v1, $v0, 5
/* FB80 8000EF80 00621823 */  subu       $v1, $v1, $v0
/* FB84 8000EF84 00031900 */  sll        $v1, $v1, 4
/* FB88 8000EF88 3C02803F */  lui        $v0, %hi(D_803ED5CE)
/* FB8C 8000EF8C 00431021 */  addu       $v0, $v0, $v1
/* FB90 8000EF90 8042D5CE */  lb         $v0, %lo(D_803ED5CE)($v0)
/* FB94 8000EF94 50400001 */  beql       $v0, $zero, .L8000EF9C
/* FB98 8000EF98 A0860000 */   sb        $a2, 0x0($a0)
.L8000EF9C:
/* FB9C 8000EF9C 24840001 */  addiu      $a0, $a0, 0x1
/* FBA0 8000EFA0 0085102A */  slt        $v0, $a0, $a1
/* FBA4 8000EFA4 1440FFF4 */  bnez       $v0, .L8000EF78
/* FBA8 8000EFA8 00000000 */   nop
/* FBAC 8000EFAC 3C05802A */  lui        $a1, %hi(D_802A0272)
/* FBB0 8000EFB0 24A50272 */  addiu      $a1, $a1, %lo(D_802A0272)
/* FBB4 8000EFB4 3C04803F */  lui        $a0, %hi(D_803ED3D6)
/* FBB8 8000EFB8 2484D3D6 */  addiu      $a0, $a0, %lo(D_803ED3D6)
/* FBBC 8000EFBC 88A20000 */  lwl        $v0, 0x0($a1)
/* FBC0 8000EFC0 98A20003 */  lwr        $v0, 0x3($a1)
/* FBC4 8000EFC4 88A30004 */  lwl        $v1, 0x4($a1)
/* FBC8 8000EFC8 98A30007 */  lwr        $v1, 0x7($a1)
/* FBCC 8000EFCC A8820000 */  swl        $v0, 0x0($a0)
/* FBD0 8000EFD0 B8820003 */  swr        $v0, 0x3($a0)
/* FBD4 8000EFD4 A8830004 */  swl        $v1, 0x4($a0)
/* FBD8 8000EFD8 B8830007 */  swr        $v1, 0x7($a0)
/* FBDC 8000EFDC 84A20008 */  lh         $v0, 0x8($a1)
/* FBE0 8000EFE0 A4820008 */  sh         $v0, 0x8($a0)
/* FBE4 8000EFE4 3C05802A */  lui        $a1, %hi(D_802A027C)
/* FBE8 8000EFE8 24A5027C */  addiu      $a1, $a1, %lo(D_802A027C)
/* FBEC 8000EFEC 3C04803F */  lui        $a0, %hi(D_803ED3E0)
/* FBF0 8000EFF0 2484D3E0 */  addiu      $a0, $a0, %lo(D_803ED3E0)
/* FBF4 8000EFF4 88A20000 */  lwl        $v0, 0x0($a1)
/* FBF8 8000EFF8 98A20003 */  lwr        $v0, 0x3($a1)
/* FBFC 8000EFFC A8820000 */  swl        $v0, 0x0($a0)
/* FC00 8000F000 B8820003 */  swr        $v0, 0x3($a0)
/* FC04 8000F004 3C05802A */  lui        $a1, %hi(D_802A0280)
/* FC08 8000F008 24A50280 */  addiu      $a1, $a1, %lo(D_802A0280)
/* FC0C 8000F00C 3C04803F */  lui        $a0, %hi(D_803ED3E4)
/* FC10 8000F010 2484D3E4 */  addiu      $a0, $a0, %lo(D_803ED3E4)
/* FC14 8000F014 88A20000 */  lwl        $v0, 0x0($a1)
/* FC18 8000F018 98A20003 */  lwr        $v0, 0x3($a1)
/* FC1C 8000F01C 88A30004 */  lwl        $v1, 0x4($a1)
/* FC20 8000F020 98A30007 */  lwr        $v1, 0x7($a1)
/* FC24 8000F024 A8820000 */  swl        $v0, 0x0($a0)
/* FC28 8000F028 B8820003 */  swr        $v0, 0x3($a0)
/* FC2C 8000F02C A8830004 */  swl        $v1, 0x4($a0)
/* FC30 8000F030 B8830007 */  swr        $v1, 0x7($a0)
/* FC34 8000F034 84A20008 */  lh         $v0, 0x8($a1)
/* FC38 8000F038 0C000EC6 */  jal        func_80003B18
/* FC3C 8000F03C A4820008 */   sh        $v0, 0x8($a0)
/* FC40 8000F040 0C003F05 */  jal        func_8000FC14
/* FC44 8000F044 00000000 */   nop
/* FC48 8000F048 0C0040F6 */  jal        func_800103D8
/* FC4C 8000F04C 00000000 */   nop
/* FC50 8000F050 0C003CEF */  jal        func_8000F3BC
/* FC54 8000F054 00000000 */   nop
/* FC58 8000F058 0C003D48 */  jal        func_8000F520
/* FC5C 8000F05C 00000000 */   nop
/* FC60 8000F060 00002821 */  addu       $a1, $zero, $zero
/* FC64 8000F064 3C04800C */  lui        $a0, %hi(D_800C48C0)
/* FC68 8000F068 248448C0 */  addiu      $a0, $a0, %lo(D_800C48C0)
/* FC6C 8000F06C 00001821 */  addu       $v1, $zero, $zero
/* FC70 8000F070 2402FFFF */  addiu      $v0, $zero, -0x1
/* FC74 8000F074 3C018031 */  lui        $at, %hi(D_803128AF)
/* FC78 8000F078 A02228AF */  sb         $v0, %lo(D_803128AF)($at)
/* FC7C 8000F07C 3C018031 */  lui        $at, %hi(D_803128B0)
/* FC80 8000F080 A02228B0 */  sb         $v0, %lo(D_803128B0)($at)
/* FC84 8000F084 24020002 */  addiu      $v0, $zero, 0x2
/* FC88 8000F088 3C018031 */  lui        $at, %hi(D_803128A6)
/* FC8C 8000F08C A02228A6 */  sb         $v0, %lo(D_803128A6)($at)
/* FC90 8000F090 24020003 */  addiu      $v0, $zero, 0x3
/* FC94 8000F094 3C018031 */  lui        $at, %hi(D_803128AE)
/* FC98 8000F098 A02028AE */  sb         $zero, %lo(D_803128AE)($at)
/* FC9C 8000F09C 3C018031 */  lui        $at, %hi(D_803128A2)
/* FCA0 8000F0A0 A42028A2 */  sh         $zero, %lo(D_803128A2)($at)
/* FCA4 8000F0A4 3C018031 */  lui        $at, %hi(D_80312888)
/* FCA8 8000F0A8 A4202888 */  sh         $zero, %lo(D_80312888)($at)
/* FCAC 8000F0AC 3C018031 */  lui        $at, %hi(D_8031288A)
/* FCB0 8000F0B0 A420288A */  sh         $zero, %lo(D_8031288A)($at)
/* FCB4 8000F0B4 3C018031 */  lui        $at, %hi(D_803128A7)
/* FCB8 8000F0B8 A02228A7 */  sb         $v0, %lo(D_803128A7)($at)
/* FCBC 8000F0BC 3C018031 */  lui        $at, %hi(D_803128A4)
/* FCC0 8000F0C0 A02028A4 */  sb         $zero, %lo(D_803128A4)($at)
/* FCC4 8000F0C4 3C018031 */  lui        $at, %hi(D_803128A5)
/* FCC8 8000F0C8 A02028A5 */  sb         $zero, %lo(D_803128A5)($at)
.L8000F0CC:
/* FCCC 8000F0CC 90820000 */  lbu        $v0, 0x0($a0)
/* FCD0 8000F0D0 24840002 */  addiu      $a0, $a0, 0x2
/* FCD4 8000F0D4 24A50001 */  addiu      $a1, $a1, 0x1
/* FCD8 8000F0D8 3C01803F */  lui        $at, %hi(D_803ED0D8)
/* FCDC 8000F0DC 00230821 */  addu       $at, $at, $v1
/* FCE0 8000F0E0 A022D0D8 */  sb         $v0, %lo(D_803ED0D8)($at)
/* FCE4 8000F0E4 28A20010 */  slti       $v0, $a1, 0x10
/* FCE8 8000F0E8 1440FFF8 */  bnez       $v0, .L8000F0CC
/* FCEC 8000F0EC 24630030 */   addiu     $v1, $v1, 0x30
/* FCF0 8000F0F0 3C01800C */  lui        $at, %hi(D_800C6B50)
/* FCF4 8000F0F4 D4226B50 */  ldc1       $f2, %lo(D_800C6B50)($at)
/* FCF8 8000F0F8 3C01800C */  lui        $at, %hi(D_800C69E0)
/* FCFC 8000F0FC D42069E0 */  ldc1       $f0, %lo(D_800C69E0)($at)
/* FD00 8000F100 3C04803F */  lui        $a0, %hi(D_803ED3E4)
/* FD04 8000F104 9484D3E4 */  lhu        $a0, %lo(D_803ED3E4)($a0)
/* FD08 8000F108 44070000 */  mfc1       $a3, $f0
/* FD0C 8000F10C 44060800 */  mfc1       $a2, $f1
/* FD10 8000F110 0C01EB61 */  jal        func_8007AD84
/* FD14 8000F114 F7A20010 */   sdc1      $f2, 0x10($sp)
/* FD18 8000F118 0C014770 */  jal        func_80051DC0
/* FD1C 8000F11C 00000000 */   nop
/* FD20 8000F120 24020001 */  addiu      $v0, $zero, 0x1
/* FD24 8000F124 24040001 */  addiu      $a0, $zero, 0x1
/* FD28 8000F128 24030001 */  addiu      $v1, $zero, 0x1
/* FD2C 8000F12C 3C01800D */  lui        $at, %hi(D_800C9BB4)
/* FD30 8000F130 AC249BB4 */  sw         $a0, %lo(D_800C9BB4)($at)
/* FD34 8000F134 3C01802F */  lui        $at, %hi(D_802F0C18)
/* FD38 8000F138 AC240C18 */  sw         $a0, %lo(D_802F0C18)($at)
/* FD3C 8000F13C 3C01800C */  lui        $at, %hi(D_800C6B8B)
/* FD40 8000F140 A0236B8B */  sb         $v1, %lo(D_800C6B8B)($at)
/* FD44 8000F144 3C01802F */  lui        $at, %hi(D_802F06E8)
/* FD48 8000F148 AC2406E8 */  sw         $a0, %lo(D_802F06E8)($at)
.L8000F14C:
/* FD4C 8000F14C 8FBF0018 */  lw         $ra, 0x18($sp)
/* FD50 8000F150 03E00008 */  jr         $ra
/* FD54 8000F154 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000F158
/* FD58 8000F158 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FD5C 8000F15C AFB00010 */  sw         $s0, 0x10($sp)
/* FD60 8000F160 3C10802A */  lui        $s0, %hi(D_802A026C)
/* FD64 8000F164 2610026C */  addiu      $s0, $s0, %lo(D_802A026C)
/* FD68 8000F168 AFBF0014 */  sw         $ra, 0x14($sp)
/* FD6C 8000F16C 3C05803F */  lui        $a1, %hi(D_803ED3D0)
/* FD70 8000F170 24A5D3D0 */  addiu      $a1, $a1, %lo(D_803ED3D0)
/* FD74 8000F174 88A20000 */  lwl        $v0, 0x0($a1)
/* FD78 8000F178 98A20003 */  lwr        $v0, 0x3($a1)
/* FD7C 8000F17C 80A30004 */  lb         $v1, 0x4($a1)
/* FD80 8000F180 AA020000 */  swl        $v0, 0x0($s0)
/* FD84 8000F184 BA020003 */  swr        $v0, 0x3($s0)
/* FD88 8000F188 A2030004 */  sb         $v1, 0x4($s0)
/* FD8C 8000F18C 3C05803F */  lui        $a1, %hi(D_803ED3D6)
/* FD90 8000F190 24A5D3D6 */  addiu      $a1, $a1, %lo(D_803ED3D6)
/* FD94 8000F194 3C04802A */  lui        $a0, %hi(D_802A0272)
/* FD98 8000F198 24840272 */  addiu      $a0, $a0, %lo(D_802A0272)
/* FD9C 8000F19C 88A20000 */  lwl        $v0, 0x0($a1)
/* FDA0 8000F1A0 98A20003 */  lwr        $v0, 0x3($a1)
/* FDA4 8000F1A4 88A30004 */  lwl        $v1, 0x4($a1)
/* FDA8 8000F1A8 98A30007 */  lwr        $v1, 0x7($a1)
/* FDAC 8000F1AC A8820000 */  swl        $v0, 0x0($a0)
/* FDB0 8000F1B0 B8820003 */  swr        $v0, 0x3($a0)
/* FDB4 8000F1B4 A8830004 */  swl        $v1, 0x4($a0)
/* FDB8 8000F1B8 B8830007 */  swr        $v1, 0x7($a0)
/* FDBC 8000F1BC 84A20008 */  lh         $v0, 0x8($a1)
/* FDC0 8000F1C0 A4820008 */  sh         $v0, 0x8($a0)
/* FDC4 8000F1C4 3C05803F */  lui        $a1, %hi(D_803ED3E0)
/* FDC8 8000F1C8 24A5D3E0 */  addiu      $a1, $a1, %lo(D_803ED3E0)
/* FDCC 8000F1CC 3C04802A */  lui        $a0, %hi(D_802A027C)
/* FDD0 8000F1D0 2484027C */  addiu      $a0, $a0, %lo(D_802A027C)
/* FDD4 8000F1D4 88A20000 */  lwl        $v0, 0x0($a1)
/* FDD8 8000F1D8 98A20003 */  lwr        $v0, 0x3($a1)
/* FDDC 8000F1DC A8820000 */  swl        $v0, 0x0($a0)
/* FDE0 8000F1E0 B8820003 */  swr        $v0, 0x3($a0)
/* FDE4 8000F1E4 3C05803F */  lui        $a1, %hi(D_803ED3E4)
/* FDE8 8000F1E8 24A5D3E4 */  addiu      $a1, $a1, %lo(D_803ED3E4)
/* FDEC 8000F1EC 3C04802A */  lui        $a0, %hi(D_802A0280)
/* FDF0 8000F1F0 24840280 */  addiu      $a0, $a0, %lo(D_802A0280)
/* FDF4 8000F1F4 88A20000 */  lwl        $v0, 0x0($a1)
/* FDF8 8000F1F8 98A20003 */  lwr        $v0, 0x3($a1)
/* FDFC 8000F1FC 88A30004 */  lwl        $v1, 0x4($a1)
/* FE00 8000F200 98A30007 */  lwr        $v1, 0x7($a1)
/* FE04 8000F204 A8820000 */  swl        $v0, 0x0($a0)
/* FE08 8000F208 B8820003 */  swr        $v0, 0x3($a0)
/* FE0C 8000F20C A8830004 */  swl        $v1, 0x4($a0)
/* FE10 8000F210 B8830007 */  swr        $v1, 0x7($a0)
/* FE14 8000F214 84A20008 */  lh         $v0, 0x8($a1)
/* FE18 8000F218 A4820008 */  sh         $v0, 0x8($a0)
/* FE1C 8000F21C 26040284 */  addiu      $a0, $s0, 0x284
/* FE20 8000F220 00002821 */  addu       $a1, $zero, $zero
/* FE24 8000F224 0C026D3C */  jal        func_8009B4F0
/* FE28 8000F228 2406001F */   addiu     $a2, $zero, 0x1F
/* FE2C 8000F22C 0C003D68 */  jal        func_8000F5A0
/* FE30 8000F230 00000000 */   nop
/* FE34 8000F234 0C00409A */  jal        func_80010268
/* FE38 8000F238 00000000 */   nop
/* FE3C 8000F23C 0C003CB6 */  jal        func_8000F2D8
/* FE40 8000F240 00000000 */   nop
/* FE44 8000F244 0C003D28 */  jal        func_8000F4A0
/* FE48 8000F248 00000000 */   nop
/* FE4C 8000F24C 2604FC98 */  addiu      $a0, $s0, -0x368
/* FE50 8000F250 24020610 */  addiu      $v0, $zero, 0x610
/* FE54 8000F254 A602FC98 */  sh         $v0, -0x368($s0)
/* FE58 8000F258 24025701 */  addiu      $v0, $zero, 0x5701
/* FE5C 8000F25C 3C01802A */  lui        $at, %hi(D_8029FF06)
/* FE60 8000F260 A422FF06 */  sh         $v0, %lo(D_8029FF06)($at)
/* FE64 8000F264 0C000EB2 */  jal        func_80003AC8
/* FE68 8000F268 240505FC */   addiu     $a1, $zero, 0x5FC
/* FE6C 8000F26C 3C01802A */  lui        $at, %hi(D_8029FF00)
/* FE70 8000F270 AC22FF00 */  sw         $v0, %lo(D_8029FF00)($at)
/* FE74 8000F274 8FBF0014 */  lw         $ra, 0x14($sp)
/* FE78 8000F278 8FB00010 */  lw         $s0, 0x10($sp)
/* FE7C 8000F27C 03E00008 */  jr         $ra
/* FE80 8000F280 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000F284
/* FE84 8000F284 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FE88 8000F288 AFBF0010 */  sw         $ra, 0x10($sp)
/* FE8C 8000F28C 0C000F50 */  jal        func_80003D40
/* FE90 8000F290 00000000 */   nop
/* FE94 8000F294 14400003 */  bnez       $v0, .L8000F2A4
/* FE98 8000F298 24020001 */   addiu     $v0, $zero, 0x1
/* FE9C 8000F29C 08003CB3 */  j          .L8000F2CC
/* FEA0 8000F2A0 00001021 */   addu      $v0, $zero, $zero
.L8000F2A4:
/* FEA4 8000F2A4 3C01803F */  lui        $at, %hi(D_803ED3C8)
/* FEA8 8000F2A8 AC20D3C8 */  sw         $zero, %lo(D_803ED3C8)($at)
/* FEAC 8000F2AC 3C01803F */  lui        $at, %hi(D_803ED3CC)
/* FEB0 8000F2B0 AC20D3CC */  sw         $zero, %lo(D_803ED3CC)($at)
/* FEB4 8000F2B4 3C01803F */  lui        $at, %hi(D_803ED3D0)
/* FEB8 8000F2B8 0C000EC6 */  jal        func_80003B18
/* FEBC 8000F2BC A022D3D0 */   sb        $v0, %lo(D_803ED3D0)($at)
/* FEC0 8000F2C0 0C000E6E */  jal        func_800039B8
/* FEC4 8000F2C4 00000000 */   nop
/* FEC8 8000F2C8 24020001 */  addiu      $v0, $zero, 0x1
.L8000F2CC:
/* FECC 8000F2CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* FED0 8000F2D0 03E00008 */  jr         $ra
/* FED4 8000F2D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000F2D8
/* FED8 8000F2D8 3C01800C */  lui        $at, %hi(D_800C6830)
/* FEDC 8000F2DC D4206830 */  ldc1       $f0, %lo(D_800C6830)($at)
/* FEE0 8000F2E0 3C01802C */  lui        $at, %hi(D_802C6078)
/* FEE4 8000F2E4 D4226078 */  ldc1       $f2, %lo(D_802C6078)($at)
/* FEE8 8000F2E8 3C01802C */  lui        $at, %hi(D_802C7940)
/* FEEC 8000F2EC D4247940 */  ldc1       $f4, %lo(D_802C7940)($at)
/* FEF0 8000F2F0 3C01802C */  lui        $at, %hi(D_802C6080)
/* FEF4 8000F2F4 D4266080 */  ldc1       $f6, %lo(D_802C6080)($at)
/* FEF8 8000F2F8 3C01802F */  lui        $at, %hi(D_802F08C8)
/* FEFC 8000F2FC D42808C8 */  ldc1       $f8, %lo(D_802F08C8)($at)
/* FF00 8000F300 3C01800C */  lui        $at, %hi(D_800C69E0)
/* FF04 8000F304 D42A69E0 */  ldc1       $f10, %lo(D_800C69E0)($at)
/* FF08 8000F308 3C01800C */  lui        $at, %hi(D_800C6B50)
/* FF0C 8000F30C D42C6B50 */  ldc1       $f12, %lo(D_800C6B50)($at)
/* FF10 8000F310 3C02802F */  lui        $v0, %hi(D_802F0920)
/* FF14 8000F314 8C420920 */  lw         $v0, %lo(D_802F0920)($v0)
/* FF18 8000F318 3C03802D */  lui        $v1, %hi(D_802D1D18)
/* FF1C 8000F31C 8C631D18 */  lw         $v1, %lo(D_802D1D18)($v1)
/* FF20 8000F320 3C04802D */  lui        $a0, %hi(D_802D0C84)
/* FF24 8000F324 8C840C84 */  lw         $a0, %lo(D_802D0C84)($a0)
/* FF28 8000F328 3C05802F */  lui        $a1, %hi(D_802EF320)
/* FF2C 8000F32C 8CA5F320 */  lw         $a1, %lo(D_802EF320)($a1)
/* FF30 8000F330 3C06802C */  lui        $a2, %hi(D_802C7930)
/* FF34 8000F334 8CC67930 */  lw         $a2, %lo(D_802C7930)($a2)
/* FF38 8000F338 3C07802D */  lui        $a3, %hi(D_802D0C64)
/* FF3C 8000F33C 8CE70C64 */  lw         $a3, %lo(D_802D0C64)($a3)
/* FF40 8000F340 3C08800C */  lui        $t0, %hi(D_800C45B8)
/* FF44 8000F344 8D0845B8 */  lw         $t0, %lo(D_800C45B8)($t0)
/* FF48 8000F348 3C01802A */  lui        $at, %hi(D_802A0290)
/* FF4C 8000F34C F4200290 */  sdc1       $f0, %lo(D_802A0290)($at)
/* FF50 8000F350 3C01802A */  lui        $at, %hi(D_802A0298)
/* FF54 8000F354 F4220298 */  sdc1       $f2, %lo(D_802A0298)($at)
/* FF58 8000F358 3C01802A */  lui        $at, %hi(D_802A02A0)
/* FF5C 8000F35C F42402A0 */  sdc1       $f4, %lo(D_802A02A0)($at)
/* FF60 8000F360 3C01802A */  lui        $at, %hi(D_802A02A8)
/* FF64 8000F364 F42602A8 */  sdc1       $f6, %lo(D_802A02A8)($at)
/* FF68 8000F368 3C01802A */  lui        $at, %hi(D_802A02B0)
/* FF6C 8000F36C F42802B0 */  sdc1       $f8, %lo(D_802A02B0)($at)
/* FF70 8000F370 3C01802A */  lui        $at, %hi(D_802A02B8)
/* FF74 8000F374 F42A02B8 */  sdc1       $f10, %lo(D_802A02B8)($at)
/* FF78 8000F378 3C01802A */  lui        $at, %hi(D_802A02C0)
/* FF7C 8000F37C F42C02C0 */  sdc1       $f12, %lo(D_802A02C0)($at)
/* FF80 8000F380 3C01802A */  lui        $at, %hi(D_802A02C8)
/* FF84 8000F384 A42202C8 */  sh         $v0, %lo(D_802A02C8)($at)
/* FF88 8000F388 3C01802A */  lui        $at, %hi(D_802A02CA)
/* FF8C 8000F38C A42302CA */  sh         $v1, %lo(D_802A02CA)($at)
/* FF90 8000F390 3C01802A */  lui        $at, %hi(D_802A02CC)
/* FF94 8000F394 A42402CC */  sh         $a0, %lo(D_802A02CC)($at)
/* FF98 8000F398 3C01802A */  lui        $at, %hi(D_802A02CE)
/* FF9C 8000F39C A42502CE */  sh         $a1, %lo(D_802A02CE)($at)
/* FFA0 8000F3A0 3C01802A */  lui        $at, %hi(D_802A02D0)
/* FFA4 8000F3A4 A42602D0 */  sh         $a2, %lo(D_802A02D0)($at)
/* FFA8 8000F3A8 3C01802A */  lui        $at, %hi(D_802A02D2)
/* FFAC 8000F3AC A42702D2 */  sh         $a3, %lo(D_802A02D2)($at)
/* FFB0 8000F3B0 3C01802A */  lui        $at, %hi(D_802A02D4)
/* FFB4 8000F3B4 03E00008 */  jr         $ra
/* FFB8 8000F3B8 AC2802D4 */   sw        $t0, %lo(D_802A02D4)($at)

glabel func_8000F3BC
/* FFBC 8000F3BC 3C01802A */  lui        $at, %hi(D_802A0290)
/* FFC0 8000F3C0 D4200290 */  ldc1       $f0, %lo(D_802A0290)($at)
/* FFC4 8000F3C4 3C01802A */  lui        $at, %hi(D_802A0298)
/* FFC8 8000F3C8 D4220298 */  ldc1       $f2, %lo(D_802A0298)($at)
/* FFCC 8000F3CC 3C01802A */  lui        $at, %hi(D_802A02A0)
/* FFD0 8000F3D0 D42402A0 */  ldc1       $f4, %lo(D_802A02A0)($at)
/* FFD4 8000F3D4 3C01802A */  lui        $at, %hi(D_802A02A8)
/* FFD8 8000F3D8 D42602A8 */  ldc1       $f6, %lo(D_802A02A8)($at)
/* FFDC 8000F3DC 3C01802A */  lui        $at, %hi(D_802A02B0)
/* FFE0 8000F3E0 D42802B0 */  ldc1       $f8, %lo(D_802A02B0)($at)
/* FFE4 8000F3E4 3C01802A */  lui        $at, %hi(D_802A02B8)
/* FFE8 8000F3E8 D42A02B8 */  ldc1       $f10, %lo(D_802A02B8)($at)
/* FFEC 8000F3EC 3C01802A */  lui        $at, %hi(D_802A02C0)
/* FFF0 8000F3F0 D42C02C0 */  ldc1       $f12, %lo(D_802A02C0)($at)
/* FFF4 8000F3F4 3C02802A */  lui        $v0, %hi(D_802A02C8)
/* FFF8 8000F3F8 844202C8 */  lh         $v0, %lo(D_802A02C8)($v0)
/* FFFC 8000F3FC 3C03802A */  lui        $v1, %hi(D_802A02CA)
/* 10000 8000F400 846302CA */  lh         $v1, %lo(D_802A02CA)($v1)
/* 10004 8000F404 3C04802A */  lui        $a0, %hi(D_802A02CC)
/* 10008 8000F408 848402CC */  lh         $a0, %lo(D_802A02CC)($a0)
/* 1000C 8000F40C 3C05802A */  lui        $a1, %hi(D_802A02CE)
/* 10010 8000F410 84A502CE */  lh         $a1, %lo(D_802A02CE)($a1)
/* 10014 8000F414 3C06802A */  lui        $a2, %hi(D_802A02D0)
/* 10018 8000F418 84C602D0 */  lh         $a2, %lo(D_802A02D0)($a2)
/* 1001C 8000F41C 3C07802A */  lui        $a3, %hi(D_802A02D2)
/* 10020 8000F420 84E702D2 */  lh         $a3, %lo(D_802A02D2)($a3)
/* 10024 8000F424 3C08802A */  lui        $t0, %hi(D_802A02D4)
/* 10028 8000F428 8D0802D4 */  lw         $t0, %lo(D_802A02D4)($t0)
/* 1002C 8000F42C 3C01800C */  lui        $at, %hi(D_800C6830)
/* 10030 8000F430 F4206830 */  sdc1       $f0, %lo(D_800C6830)($at)
/* 10034 8000F434 3C01802C */  lui        $at, %hi(D_802C6078)
/* 10038 8000F438 F4226078 */  sdc1       $f2, %lo(D_802C6078)($at)
/* 1003C 8000F43C 3C01802C */  lui        $at, %hi(D_802C7940)
/* 10040 8000F440 F4247940 */  sdc1       $f4, %lo(D_802C7940)($at)
/* 10044 8000F444 3C01802C */  lui        $at, %hi(D_802C6080)
/* 10048 8000F448 F4266080 */  sdc1       $f6, %lo(D_802C6080)($at)
/* 1004C 8000F44C 3C01802F */  lui        $at, %hi(D_802F08C8)
/* 10050 8000F450 F42808C8 */  sdc1       $f8, %lo(D_802F08C8)($at)
/* 10054 8000F454 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 10058 8000F458 F42A69E0 */  sdc1       $f10, %lo(D_800C69E0)($at)
/* 1005C 8000F45C 3C01800C */  lui        $at, %hi(D_800C6B50)
/* 10060 8000F460 F42C6B50 */  sdc1       $f12, %lo(D_800C6B50)($at)
/* 10064 8000F464 3C01802F */  lui        $at, %hi(D_802F0920)
/* 10068 8000F468 AC220920 */  sw         $v0, %lo(D_802F0920)($at)
/* 1006C 8000F46C 3C01802D */  lui        $at, %hi(D_802D1D18)
/* 10070 8000F470 AC231D18 */  sw         $v1, %lo(D_802D1D18)($at)
/* 10074 8000F474 3C01802D */  lui        $at, %hi(D_802D0C84)
/* 10078 8000F478 AC240C84 */  sw         $a0, %lo(D_802D0C84)($at)
/* 1007C 8000F47C 3C01802F */  lui        $at, %hi(D_802EF320)
/* 10080 8000F480 AC25F320 */  sw         $a1, %lo(D_802EF320)($at)
/* 10084 8000F484 3C01802C */  lui        $at, %hi(D_802C7930)
/* 10088 8000F488 AC267930 */  sw         $a2, %lo(D_802C7930)($at)
/* 1008C 8000F48C 3C01802D */  lui        $at, %hi(D_802D0C64)
/* 10090 8000F490 AC270C64 */  sw         $a3, %lo(D_802D0C64)($at)
/* 10094 8000F494 3C01800C */  lui        $at, %hi(D_800C45B8)
/* 10098 8000F498 03E00008 */  jr         $ra
/* 1009C 8000F49C AC2845B8 */   sw        $t0, %lo(D_800C45B8)($at)

glabel func_8000F4A0
/* 100A0 8000F4A0 00003021 */  addu       $a2, $zero, $zero
/* 100A4 8000F4A4 3C08802A */  lui        $t0, %hi(D_802A02D8)
/* 100A8 8000F4A8 250802D8 */  addiu      $t0, $t0, %lo(D_802A02D8)
/* 100AC 8000F4AC 3C07802D */  lui        $a3, %hi(D_802CAF10)
/* 100B0 8000F4B0 24E7AF10 */  addiu      $a3, $a3, %lo(D_802CAF10)
.L8000F4B4:
/* 100B4 8000F4B4 8CE20000 */  lw         $v0, 0x0($a3)
/* 100B8 8000F4B8 8CE30004 */  lw         $v1, 0x4($a3)
/* 100BC 8000F4BC 8CE40008 */  lw         $a0, 0x8($a3)
/* 100C0 8000F4C0 8CE5000C */  lw         $a1, 0xC($a3)
/* 100C4 8000F4C4 AD020000 */  sw         $v0, 0x0($t0)
/* 100C8 8000F4C8 AD030004 */  sw         $v1, 0x4($t0)
/* 100CC 8000F4CC AD040008 */  sw         $a0, 0x8($t0)
/* 100D0 8000F4D0 AD05000C */  sw         $a1, 0xC($t0)
/* 100D4 8000F4D4 25080010 */  addiu      $t0, $t0, 0x10
/* 100D8 8000F4D8 24C60001 */  addiu      $a2, $a2, 0x1
/* 100DC 8000F4DC 28C20020 */  slti       $v0, $a2, 0x20
/* 100E0 8000F4E0 1440FFF4 */  bnez       $v0, .L8000F4B4
/* 100E4 8000F4E4 24E70010 */   addiu     $a3, $a3, 0x10
/* 100E8 8000F4E8 00003021 */  addu       $a2, $zero, $zero
/* 100EC 8000F4EC 3C04802A */  lui        $a0, %hi(D_802A04E8)
/* 100F0 8000F4F0 248404E8 */  addiu      $a0, $a0, %lo(D_802A04E8)
/* 100F4 8000F4F4 3C03800C */  lui        $v1, %hi(D_800C45BC)
/* 100F8 8000F4F8 246345BC */  addiu      $v1, $v1, %lo(D_800C45BC)
.L8000F4FC:
/* 100FC 8000F4FC 8C620000 */  lw         $v0, 0x0($v1)
/* 10100 8000F500 24630004 */  addiu      $v1, $v1, 0x4
/* 10104 8000F504 24C60001 */  addiu      $a2, $a2, 0x1
/* 10108 8000F508 AC820000 */  sw         $v0, 0x0($a0)
/* 1010C 8000F50C 28C20002 */  slti       $v0, $a2, 0x2
/* 10110 8000F510 1440FFFA */  bnez       $v0, .L8000F4FC
/* 10114 8000F514 24840004 */   addiu     $a0, $a0, 0x4
/* 10118 8000F518 03E00008 */  jr         $ra
/* 1011C 8000F51C 00000000 */   nop

glabel func_8000F520
/* 10120 8000F520 00003021 */  addu       $a2, $zero, $zero
/* 10124 8000F524 3C08802D */  lui        $t0, %hi(D_802CAF10)
/* 10128 8000F528 2508AF10 */  addiu      $t0, $t0, %lo(D_802CAF10)
/* 1012C 8000F52C 3C07802A */  lui        $a3, %hi(D_802A02D8)
/* 10130 8000F530 24E702D8 */  addiu      $a3, $a3, %lo(D_802A02D8)
.L8000F534:
/* 10134 8000F534 8CE20000 */  lw         $v0, 0x0($a3)
/* 10138 8000F538 8CE30004 */  lw         $v1, 0x4($a3)
/* 1013C 8000F53C 8CE40008 */  lw         $a0, 0x8($a3)
/* 10140 8000F540 8CE5000C */  lw         $a1, 0xC($a3)
/* 10144 8000F544 AD020000 */  sw         $v0, 0x0($t0)
/* 10148 8000F548 AD030004 */  sw         $v1, 0x4($t0)
/* 1014C 8000F54C AD040008 */  sw         $a0, 0x8($t0)
/* 10150 8000F550 AD05000C */  sw         $a1, 0xC($t0)
/* 10154 8000F554 25080010 */  addiu      $t0, $t0, 0x10
/* 10158 8000F558 24C60001 */  addiu      $a2, $a2, 0x1
/* 1015C 8000F55C 28C20020 */  slti       $v0, $a2, 0x20
/* 10160 8000F560 1440FFF4 */  bnez       $v0, .L8000F534
/* 10164 8000F564 24E70010 */   addiu     $a3, $a3, 0x10
/* 10168 8000F568 00003021 */  addu       $a2, $zero, $zero
/* 1016C 8000F56C 3C04800C */  lui        $a0, %hi(D_800C45BC)
/* 10170 8000F570 248445BC */  addiu      $a0, $a0, %lo(D_800C45BC)
/* 10174 8000F574 3C03802A */  lui        $v1, %hi(D_802A04E8)
/* 10178 8000F578 246304E8 */  addiu      $v1, $v1, %lo(D_802A04E8)
.L8000F57C:
/* 1017C 8000F57C 8C620000 */  lw         $v0, 0x0($v1)
/* 10180 8000F580 24630004 */  addiu      $v1, $v1, 0x4
/* 10184 8000F584 24C60001 */  addiu      $a2, $a2, 0x1
/* 10188 8000F588 AC820000 */  sw         $v0, 0x0($a0)
/* 1018C 8000F58C 28C20002 */  slti       $v0, $a2, 0x2
/* 10190 8000F590 1440FFFA */  bnez       $v0, .L8000F57C
/* 10194 8000F594 24840004 */   addiu     $a0, $a0, 0x4
/* 10198 8000F598 03E00008 */  jr         $ra
/* 1019C 8000F59C 00000000 */   nop

glabel func_8000F5A0
/* 101A0 8000F5A0 3C01802F */  lui        $at, %hi(D_802EF5C8)
/* 101A4 8000F5A4 D420F5C8 */  ldc1       $f0, %lo(D_802EF5C8)($at)
/* 101A8 8000F5A8 3C01802F */  lui        $at, %hi(D_802EF5D8)
/* 101AC 8000F5AC D424F5D8 */  ldc1       $f4, %lo(D_802EF5D8)($at)
/* 101B0 8000F5B0 3C01802F */  lui        $at, %hi(D_802EF5E0)
/* 101B4 8000F5B4 D426F5E0 */  ldc1       $f6, %lo(D_802EF5E0)($at)
/* 101B8 8000F5B8 3C01802F */  lui        $at, %hi(D_802EF5E8)
/* 101BC 8000F5BC D428F5E8 */  ldc1       $f8, %lo(D_802EF5E8)($at)
/* 101C0 8000F5C0 3C01802F */  lui        $at, %hi(D_802EF5F0)
/* 101C4 8000F5C4 D42AF5F0 */  ldc1       $f10, %lo(D_802EF5F0)($at)
/* 101C8 8000F5C8 3C01802F */  lui        $at, %hi(D_802EF5F8)
/* 101CC 8000F5CC D42CF5F8 */  ldc1       $f12, %lo(D_802EF5F8)($at)
/* 101D0 8000F5D0 3C01802F */  lui        $at, %hi(D_802EF600)
/* 101D4 8000F5D4 D42EF600 */  ldc1       $f14, %lo(D_802EF600)($at)
/* 101D8 8000F5D8 3C01802F */  lui        $at, %hi(D_802EF608)
/* 101DC 8000F5DC D430F608 */  ldc1       $f16, %lo(D_802EF608)($at)
/* 101E0 8000F5E0 3C01802F */  lui        $at, %hi(D_802EF610)
/* 101E4 8000F5E4 D432F610 */  ldc1       $f18, %lo(D_802EF610)($at)
/* 101E8 8000F5E8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 101EC 8000F5EC F7B40010 */  sdc1       $f20, 0x10($sp)
/* 101F0 8000F5F0 3C01802F */  lui        $at, %hi(D_802EF618)
/* 101F4 8000F5F4 D434F618 */  ldc1       $f20, %lo(D_802EF618)($at)
/* 101F8 8000F5F8 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 101FC 8000F5FC 3C01802F */  lui        $at, %hi(D_802EF620)
/* 10200 8000F600 D436F620 */  ldc1       $f22, %lo(D_802EF620)($at)
/* 10204 8000F604 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 10208 8000F608 3C01802F */  lui        $at, %hi(D_802EF628)
/* 1020C 8000F60C D438F628 */  ldc1       $f24, %lo(D_802EF628)($at)
/* 10210 8000F610 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 10214 8000F614 3C01802F */  lui        $at, %hi(D_802EF630)
/* 10218 8000F618 D43AF630 */  ldc1       $f26, %lo(D_802EF630)($at)
/* 1021C 8000F61C F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 10220 8000F620 3C01802F */  lui        $at, %hi(D_802EF638)
/* 10224 8000F624 D43CF638 */  ldc1       $f28, %lo(D_802EF638)($at)
/* 10228 8000F628 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 1022C 8000F62C 3C01802F */  lui        $at, %hi(D_802EF718)
/* 10230 8000F630 D43EF718 */  ldc1       $f30, %lo(D_802EF718)($at)
/* 10234 8000F634 3C02802F */  lui        $v0, %hi(D_802EF720)
/* 10238 8000F638 8C42F720 */  lw         $v0, %lo(D_802EF720)($v0)
/* 1023C 8000F63C 3C03802F */  lui        $v1, %hi(D_802EF724)
/* 10240 8000F640 8C63F724 */  lw         $v1, %lo(D_802EF724)($v1)
/* 10244 8000F644 3C01802F */  lui        $at, %hi(D_802EF5D0)
/* 10248 8000F648 D422F5D0 */  ldc1       $f2, %lo(D_802EF5D0)($at)
/* 1024C 8000F64C AFB3000C */  sw         $s3, 0xC($sp)
/* 10250 8000F650 AFB20008 */  sw         $s2, 0x8($sp)
/* 10254 8000F654 AFB10004 */  sw         $s1, 0x4($sp)
/* 10258 8000F658 AFB00000 */  sw         $s0, 0x0($sp)
/* 1025C 8000F65C 46200020 */  cvt.s.d    $f0, $f0
/* 10260 8000F660 462010A0 */  cvt.s.d    $f2, $f2
/* 10264 8000F664 46202120 */  cvt.s.d    $f4, $f4
/* 10268 8000F668 462031A0 */  cvt.s.d    $f6, $f6
/* 1026C 8000F66C 46204220 */  cvt.s.d    $f8, $f8
/* 10270 8000F670 462052A0 */  cvt.s.d    $f10, $f10
/* 10274 8000F674 46206320 */  cvt.s.d    $f12, $f12
/* 10278 8000F678 462073A0 */  cvt.s.d    $f14, $f14
/* 1027C 8000F67C 46208420 */  cvt.s.d    $f16, $f16
/* 10280 8000F680 462094A0 */  cvt.s.d    $f18, $f18
/* 10284 8000F684 4620A520 */  cvt.s.d    $f20, $f20
/* 10288 8000F688 4620B5A0 */  cvt.s.d    $f22, $f22
/* 1028C 8000F68C 4620C620 */  cvt.s.d    $f24, $f24
/* 10290 8000F690 4620D6A0 */  cvt.s.d    $f26, $f26
/* 10294 8000F694 3C01802A */  lui        $at, %hi(D_8029FF2C)
/* 10298 8000F698 E422FF2C */  swc1       $f2, %lo(D_8029FF2C)($at)
/* 1029C 8000F69C 44831000 */  mtc1       $v1, $f2
/* 102A0 8000F6A0 44821800 */  mtc1       $v0, $f3
/* 102A4 8000F6A4 4620E720 */  cvt.s.d    $f28, $f28
/* 102A8 8000F6A8 462010A0 */  cvt.s.d    $f2, $f2
/* 102AC 8000F6AC 44021000 */  mfc1       $v0, $f2
/* 102B0 8000F6B0 4620F7A0 */  cvt.s.d    $f30, $f30
/* 102B4 8000F6B4 3C01802A */  lui        $at, %hi(D_8029FF28)
/* 102B8 8000F6B8 E420FF28 */  swc1       $f0, %lo(D_8029FF28)($at)
/* 102BC 8000F6BC 3C01802A */  lui        $at, %hi(D_8029FF30)
/* 102C0 8000F6C0 E424FF30 */  swc1       $f4, %lo(D_8029FF30)($at)
/* 102C4 8000F6C4 3C01802A */  lui        $at, %hi(D_8029FF34)
/* 102C8 8000F6C8 E426FF34 */  swc1       $f6, %lo(D_8029FF34)($at)
/* 102CC 8000F6CC 3C01802A */  lui        $at, %hi(D_8029FF38)
/* 102D0 8000F6D0 E428FF38 */  swc1       $f8, %lo(D_8029FF38)($at)
/* 102D4 8000F6D4 3C01802A */  lui        $at, %hi(D_8029FF3C)
/* 102D8 8000F6D8 E42AFF3C */  swc1       $f10, %lo(D_8029FF3C)($at)
/* 102DC 8000F6DC 3C01802A */  lui        $at, %hi(D_8029FF40)
/* 102E0 8000F6E0 E42CFF40 */  swc1       $f12, %lo(D_8029FF40)($at)
/* 102E4 8000F6E4 3C01802A */  lui        $at, %hi(D_8029FF44)
/* 102E8 8000F6E8 E42EFF44 */  swc1       $f14, %lo(D_8029FF44)($at)
/* 102EC 8000F6EC 3C01802A */  lui        $at, %hi(D_8029FF48)
/* 102F0 8000F6F0 E430FF48 */  swc1       $f16, %lo(D_8029FF48)($at)
/* 102F4 8000F6F4 3C01802A */  lui        $at, %hi(D_8029FF4C)
/* 102F8 8000F6F8 E432FF4C */  swc1       $f18, %lo(D_8029FF4C)($at)
/* 102FC 8000F6FC 3C01802A */  lui        $at, %hi(D_8029FF50)
/* 10300 8000F700 E434FF50 */  swc1       $f20, %lo(D_8029FF50)($at)
/* 10304 8000F704 3C01802A */  lui        $at, %hi(D_8029FF54)
/* 10308 8000F708 E436FF54 */  swc1       $f22, %lo(D_8029FF54)($at)
/* 1030C 8000F70C 3C01802A */  lui        $at, %hi(D_8029FF58)
/* 10310 8000F710 E438FF58 */  swc1       $f24, %lo(D_8029FF58)($at)
/* 10314 8000F714 3C01802A */  lui        $at, %hi(D_8029FF5C)
/* 10318 8000F718 E43AFF5C */  swc1       $f26, %lo(D_8029FF5C)($at)
/* 1031C 8000F71C 3C01802A */  lui        $at, %hi(D_8029FF60)
/* 10320 8000F720 E43CFF60 */  swc1       $f28, %lo(D_8029FF60)($at)
/* 10324 8000F724 3C01802A */  lui        $at, %hi(D_8029FF64)
/* 10328 8000F728 E43EFF64 */  swc1       $f30, %lo(D_8029FF64)($at)
/* 1032C 8000F72C 3C01802A */  lui        $at, %hi(D_8029FF68)
/* 10330 8000F730 AC22FF68 */  sw         $v0, %lo(D_8029FF68)($at)
/* 10334 8000F734 3C01802F */  lui        $at, %hi(D_802EF730)
/* 10338 8000F738 D420F730 */  ldc1       $f0, %lo(D_802EF730)($at)
/* 1033C 8000F73C 3C04802F */  lui        $a0, %hi(gPlayers_turn)
/* 10340 8000F740 9084F798 */  lbu        $a0, %lo(gPlayers_turn)($a0)
/* 10344 8000F744 3C05802F */  lui        $a1, %hi(D_802EF799)
/* 10348 8000F748 90A5F799 */  lbu        $a1, %lo(D_802EF799)($a1)
/* 1034C 8000F74C 3C06802F */  lui        $a2, %hi(D_802EF77C)
/* 10350 8000F750 94C6F77C */  lhu        $a2, %lo(D_802EF77C)($a2)
/* 10354 8000F754 3C07802F */  lui        $a3, %hi(D_802EF77E)
/* 10358 8000F758 94E7F77E */  lhu        $a3, %lo(D_802EF77E)($a3)
/* 1035C 8000F75C 3C08802F */  lui        $t0, %hi(D_802EF780)
/* 10360 8000F760 9508F780 */  lhu        $t0, %lo(D_802EF780)($t0)
/* 10364 8000F764 3C09802F */  lui        $t1, %hi(D_802EF782)
/* 10368 8000F768 9529F782 */  lhu        $t1, %lo(D_802EF782)($t1)
/* 1036C 8000F76C 3C0A802F */  lui        $t2, %hi(D_802EF784)
/* 10370 8000F770 954AF784 */  lhu        $t2, %lo(D_802EF784)($t2)
/* 10374 8000F774 3C0B802F */  lui        $t3, %hi(D_802EF786)
/* 10378 8000F778 956BF786 */  lhu        $t3, %lo(D_802EF786)($t3)
/* 1037C 8000F77C 3C0C802F */  lui        $t4, %hi(D_802EF788)
/* 10380 8000F780 958CF788 */  lhu        $t4, %lo(D_802EF788)($t4)
/* 10384 8000F784 3C0D802F */  lui        $t5, %hi(D_802EF78A)
/* 10388 8000F788 95ADF78A */  lhu        $t5, %lo(D_802EF78A)($t5)
/* 1038C 8000F78C 3C0E802F */  lui        $t6, %hi(D_802EF79A)
/* 10390 8000F790 91CEF79A */  lbu        $t6, %lo(D_802EF79A)($t6)
/* 10394 8000F794 3C0F802F */  lui        $t7, %hi(D_802EF79B)
/* 10398 8000F798 91EFF79B */  lbu        $t7, %lo(D_802EF79B)($t7)
/* 1039C 8000F79C 3C10802F */  lui        $s0, %hi(D_802EF79C)
/* 103A0 8000F7A0 9210F79C */  lbu        $s0, %lo(D_802EF79C)($s0)
/* 103A4 8000F7A4 3C11802F */  lui        $s1, %hi(D_802EF79D)
/* 103A8 8000F7A8 9231F79D */  lbu        $s1, %lo(D_802EF79D)($s1)
/* 103AC 8000F7AC 3C12802F */  lui        $s2, %hi(D_802EF78C)
/* 103B0 8000F7B0 9652F78C */  lhu        $s2, %lo(D_802EF78C)($s2)
/* 103B4 8000F7B4 3C13802F */  lui        $s3, %hi(D_802EF78E)
/* 103B8 8000F7B8 9673F78E */  lhu        $s3, %lo(D_802EF78E)($s3)
/* 103BC 8000F7BC 3C01802A */  lui        $at, %hi(D_8029FF6C)
/* 103C0 8000F7C0 AC22FF6C */  sw         $v0, %lo(D_8029FF6C)($at)
/* 103C4 8000F7C4 46200020 */  cvt.s.d    $f0, $f0
/* 103C8 8000F7C8 3C01802A */  lui        $at, %hi(D_8029FF70)
/* 103CC 8000F7CC E420FF70 */  swc1       $f0, %lo(D_8029FF70)($at)
/* 103D0 8000F7D0 3C01802A */  lui        $at, %hi(D_8029FF74)
/* 103D4 8000F7D4 A024FF74 */  sb         $a0, %lo(D_8029FF74)($at)
/* 103D8 8000F7D8 3C01802A */  lui        $at, %hi(D_8029FF75)
/* 103DC 8000F7DC A025FF75 */  sb         $a1, %lo(D_8029FF75)($at)
/* 103E0 8000F7E0 3C01802A */  lui        $at, %hi(D_8029FF76)
/* 103E4 8000F7E4 A426FF76 */  sh         $a2, %lo(D_8029FF76)($at)
/* 103E8 8000F7E8 3C01802A */  lui        $at, %hi(D_8029FF78)
/* 103EC 8000F7EC A427FF78 */  sh         $a3, %lo(D_8029FF78)($at)
/* 103F0 8000F7F0 3C01802A */  lui        $at, %hi(D_8029FF7A)
/* 103F4 8000F7F4 A428FF7A */  sh         $t0, %lo(D_8029FF7A)($at)
/* 103F8 8000F7F8 3C01802A */  lui        $at, %hi(D_8029FF7C)
/* 103FC 8000F7FC A429FF7C */  sh         $t1, %lo(D_8029FF7C)($at)
/* 10400 8000F800 3C01802A */  lui        $at, %hi(D_8029FF7E)
/* 10404 8000F804 A42AFF7E */  sh         $t2, %lo(D_8029FF7E)($at)
/* 10408 8000F808 3C01802A */  lui        $at, %hi(D_8029FF80)
/* 1040C 8000F80C A42BFF80 */  sh         $t3, %lo(D_8029FF80)($at)
/* 10410 8000F810 3C01802A */  lui        $at, %hi(D_8029FF82)
/* 10414 8000F814 A42CFF82 */  sh         $t4, %lo(D_8029FF82)($at)
/* 10418 8000F818 3C01802A */  lui        $at, %hi(D_8029FF84)
/* 1041C 8000F81C A42DFF84 */  sh         $t5, %lo(D_8029FF84)($at)
/* 10420 8000F820 3C01802A */  lui        $at, %hi(D_8029FF86)
/* 10424 8000F824 A02EFF86 */  sb         $t6, %lo(D_8029FF86)($at)
/* 10428 8000F828 3C01802A */  lui        $at, %hi(D_8029FF87)
/* 1042C 8000F82C A02FFF87 */  sb         $t7, %lo(D_8029FF87)($at)
/* 10430 8000F830 3C01802A */  lui        $at, %hi(D_8029FF88)
/* 10434 8000F834 A030FF88 */  sb         $s0, %lo(D_8029FF88)($at)
/* 10438 8000F838 3C01802A */  lui        $at, %hi(D_8029FF89)
/* 1043C 8000F83C A031FF89 */  sb         $s1, %lo(D_8029FF89)($at)
/* 10440 8000F840 3C01802A */  lui        $at, %hi(D_8029FF8A)
/* 10444 8000F844 A432FF8A */  sh         $s2, %lo(D_8029FF8A)($at)
/* 10448 8000F848 3C01802A */  lui        $at, %hi(D_8029FF8C)
/* 1044C 8000F84C A433FF8C */  sh         $s3, %lo(D_8029FF8C)($at)
/* 10450 8000F850 3C01802F */  lui        $at, %hi(D_802EF640)
/* 10454 8000F854 D420F640 */  ldc1       $f0, %lo(D_802EF640)($at)
/* 10458 8000F858 3C01802F */  lui        $at, %hi(D_802EF650)
/* 1045C 8000F85C D424F650 */  ldc1       $f4, %lo(D_802EF650)($at)
/* 10460 8000F860 3C01802F */  lui        $at, %hi(D_802EF658)
/* 10464 8000F864 D426F658 */  ldc1       $f6, %lo(D_802EF658)($at)
/* 10468 8000F868 3C01802F */  lui        $at, %hi(D_802EF660)
/* 1046C 8000F86C D428F660 */  ldc1       $f8, %lo(D_802EF660)($at)
/* 10470 8000F870 3C01802F */  lui        $at, %hi(D_802EF668)
/* 10474 8000F874 D42AF668 */  ldc1       $f10, %lo(D_802EF668)($at)
/* 10478 8000F878 3C01802F */  lui        $at, %hi(D_802EF670)
/* 1047C 8000F87C D42CF670 */  ldc1       $f12, %lo(D_802EF670)($at)
/* 10480 8000F880 3C01802F */  lui        $at, %hi(D_802EF678)
/* 10484 8000F884 D42EF678 */  ldc1       $f14, %lo(D_802EF678)($at)
/* 10488 8000F888 3C01802F */  lui        $at, %hi(D_802EF680)
/* 1048C 8000F88C D430F680 */  ldc1       $f16, %lo(D_802EF680)($at)
/* 10490 8000F890 3C01802F */  lui        $at, %hi(D_802EF688)
/* 10494 8000F894 D432F688 */  ldc1       $f18, %lo(D_802EF688)($at)
/* 10498 8000F898 3C01802F */  lui        $at, %hi(D_802EF690)
/* 1049C 8000F89C D434F690 */  ldc1       $f20, %lo(D_802EF690)($at)
/* 104A0 8000F8A0 3C01802F */  lui        $at, %hi(D_802EF698)
/* 104A4 8000F8A4 D436F698 */  ldc1       $f22, %lo(D_802EF698)($at)
/* 104A8 8000F8A8 3C01802F */  lui        $at, %hi(D_802EF6A0)
/* 104AC 8000F8AC D438F6A0 */  ldc1       $f24, %lo(D_802EF6A0)($at)
/* 104B0 8000F8B0 3C01802F */  lui        $at, %hi(D_802EF6A8)
/* 104B4 8000F8B4 D43AF6A8 */  ldc1       $f26, %lo(D_802EF6A8)($at)
/* 104B8 8000F8B8 3C01802F */  lui        $at, %hi(D_802EF6B0)
/* 104BC 8000F8BC D43CF6B0 */  ldc1       $f28, %lo(D_802EF6B0)($at)
/* 104C0 8000F8C0 3C01802F */  lui        $at, %hi(D_802EF6B8)
/* 104C4 8000F8C4 D43EF6B8 */  ldc1       $f30, %lo(D_802EF6B8)($at)
/* 104C8 8000F8C8 3C01802F */  lui        $at, %hi(D_802EF648)
/* 104CC 8000F8CC D422F648 */  ldc1       $f2, %lo(D_802EF648)($at)
/* 104D0 8000F8D0 3C02802F */  lui        $v0, %hi(D_802EF6C0)
/* 104D4 8000F8D4 8C42F6C0 */  lw         $v0, %lo(D_802EF6C0)($v0)
/* 104D8 8000F8D8 3C03802F */  lui        $v1, %hi(D_802EF6C4)
/* 104DC 8000F8DC 8C63F6C4 */  lw         $v1, %lo(D_802EF6C4)($v1)
/* 104E0 8000F8E0 46200020 */  cvt.s.d    $f0, $f0
/* 104E4 8000F8E4 462010A0 */  cvt.s.d    $f2, $f2
/* 104E8 8000F8E8 46202120 */  cvt.s.d    $f4, $f4
/* 104EC 8000F8EC 462031A0 */  cvt.s.d    $f6, $f6
/* 104F0 8000F8F0 46204220 */  cvt.s.d    $f8, $f8
/* 104F4 8000F8F4 462052A0 */  cvt.s.d    $f10, $f10
/* 104F8 8000F8F8 46206320 */  cvt.s.d    $f12, $f12
/* 104FC 8000F8FC 462073A0 */  cvt.s.d    $f14, $f14
/* 10500 8000F900 46208420 */  cvt.s.d    $f16, $f16
/* 10504 8000F904 462094A0 */  cvt.s.d    $f18, $f18
/* 10508 8000F908 4620A520 */  cvt.s.d    $f20, $f20
/* 1050C 8000F90C 4620B5A0 */  cvt.s.d    $f22, $f22
/* 10510 8000F910 4620C620 */  cvt.s.d    $f24, $f24
/* 10514 8000F914 3C01802A */  lui        $at, %hi(D_8029FF94)
/* 10518 8000F918 E422FF94 */  swc1       $f2, %lo(D_8029FF94)($at)
/* 1051C 8000F91C 44831000 */  mtc1       $v1, $f2
/* 10520 8000F920 44821800 */  mtc1       $v0, $f3
/* 10524 8000F924 4620D6A0 */  cvt.s.d    $f26, $f26
/* 10528 8000F928 3C01802A */  lui        $at, %hi(D_8029FF90)
/* 1052C 8000F92C E420FF90 */  swc1       $f0, %lo(D_8029FF90)($at)
/* 10530 8000F930 3C01802A */  lui        $at, %hi(D_8029FF98)
/* 10534 8000F934 E424FF98 */  swc1       $f4, %lo(D_8029FF98)($at)
/* 10538 8000F938 3C01802A */  lui        $at, %hi(D_8029FF9C)
/* 1053C 8000F93C E426FF9C */  swc1       $f6, %lo(D_8029FF9C)($at)
/* 10540 8000F940 462010A0 */  cvt.s.d    $f2, $f2
/* 10544 8000F944 44021000 */  mfc1       $v0, $f2
/* 10548 8000F948 3C01802F */  lui        $at, %hi(D_802EF738)
/* 1054C 8000F94C D422F738 */  ldc1       $f2, %lo(D_802EF738)($at)
/* 10550 8000F950 4620E720 */  cvt.s.d    $f28, $f28
/* 10554 8000F954 4620F7A0 */  cvt.s.d    $f30, $f30
/* 10558 8000F958 3C01802A */  lui        $at, %hi(D_8029FFA0)
/* 1055C 8000F95C E428FFA0 */  swc1       $f8, %lo(D_8029FFA0)($at)
/* 10560 8000F960 3C01802A */  lui        $at, %hi(D_8029FFA4)
/* 10564 8000F964 E42AFFA4 */  swc1       $f10, %lo(D_8029FFA4)($at)
/* 10568 8000F968 3C01802A */  lui        $at, %hi(D_8029FFA8)
/* 1056C 8000F96C E42CFFA8 */  swc1       $f12, %lo(D_8029FFA8)($at)
/* 10570 8000F970 3C01802A */  lui        $at, %hi(D_8029FFAC)
/* 10574 8000F974 E42EFFAC */  swc1       $f14, %lo(D_8029FFAC)($at)
/* 10578 8000F978 3C01802A */  lui        $at, %hi(D_8029FFB0)
/* 1057C 8000F97C E430FFB0 */  swc1       $f16, %lo(D_8029FFB0)($at)
/* 10580 8000F980 3C01802A */  lui        $at, %hi(D_8029FFB4)
/* 10584 8000F984 E432FFB4 */  swc1       $f18, %lo(D_8029FFB4)($at)
/* 10588 8000F988 3C01802A */  lui        $at, %hi(D_8029FFB8)
/* 1058C 8000F98C E434FFB8 */  swc1       $f20, %lo(D_8029FFB8)($at)
/* 10590 8000F990 3C01802A */  lui        $at, %hi(D_8029FFBC)
/* 10594 8000F994 E436FFBC */  swc1       $f22, %lo(D_8029FFBC)($at)
/* 10598 8000F998 3C01802A */  lui        $at, %hi(D_8029FFC0)
/* 1059C 8000F99C E438FFC0 */  swc1       $f24, %lo(D_8029FFC0)($at)
/* 105A0 8000F9A0 3C01802A */  lui        $at, %hi(D_8029FFC4)
/* 105A4 8000F9A4 E43AFFC4 */  swc1       $f26, %lo(D_8029FFC4)($at)
/* 105A8 8000F9A8 3C01802A */  lui        $at, %hi(D_8029FFC8)
/* 105AC 8000F9AC E43CFFC8 */  swc1       $f28, %lo(D_8029FFC8)($at)
/* 105B0 8000F9B0 3C01802A */  lui        $at, %hi(D_8029FFCC)
/* 105B4 8000F9B4 E43EFFCC */  swc1       $f30, %lo(D_8029FFCC)($at)
/* 105B8 8000F9B8 3C01802A */  lui        $at, %hi(D_8029FFD0)
/* 105BC 8000F9BC AC22FFD0 */  sw         $v0, %lo(D_8029FFD0)($at)
/* 105C0 8000F9C0 3C01802F */  lui        $at, %hi(D_802EF6C8)
/* 105C4 8000F9C4 D420F6C8 */  ldc1       $f0, %lo(D_802EF6C8)($at)
/* 105C8 8000F9C8 3C01802F */  lui        $at, %hi(D_802EF740)
/* 105CC 8000F9CC D424F740 */  ldc1       $f4, %lo(D_802EF740)($at)
/* 105D0 8000F9D0 3C01802F */  lui        $at, %hi(D_802EF748)
/* 105D4 8000F9D4 D426F748 */  ldc1       $f6, %lo(D_802EF748)($at)
/* 105D8 8000F9D8 3C01802F */  lui        $at, %hi(D_802EF750)
/* 105DC 8000F9DC D428F750 */  ldc1       $f8, %lo(D_802EF750)($at)
/* 105E0 8000F9E0 3C01802F */  lui        $at, %hi(D_802EF6D0)
/* 105E4 8000F9E4 D42AF6D0 */  ldc1       $f10, %lo(D_802EF6D0)($at)
/* 105E8 8000F9E8 3C01802F */  lui        $at, %hi(D_802EF6D8)
/* 105EC 8000F9EC D42CF6D8 */  ldc1       $f12, %lo(D_802EF6D8)($at)
/* 105F0 8000F9F0 3C01802F */  lui        $at, %hi(D_802EF6E0)
/* 105F4 8000F9F4 D42EF6E0 */  ldc1       $f14, %lo(D_802EF6E0)($at)
/* 105F8 8000F9F8 3C01802F */  lui        $at, %hi(D_802EF6E8)
/* 105FC 8000F9FC D430F6E8 */  ldc1       $f16, %lo(D_802EF6E8)($at)
/* 10600 8000FA00 3C01802F */  lui        $at, %hi(D_802EF6F0)
/* 10604 8000FA04 D432F6F0 */  ldc1       $f18, %lo(D_802EF6F0)($at)
/* 10608 8000FA08 3C01802F */  lui        $at, %hi(D_802EF6F8)
/* 1060C 8000FA0C D434F6F8 */  ldc1       $f20, %lo(D_802EF6F8)($at)
/* 10610 8000FA10 3C01802F */  lui        $at, %hi(D_802EF700)
/* 10614 8000FA14 D436F700 */  ldc1       $f22, %lo(D_802EF700)($at)
/* 10618 8000FA18 3C01802F */  lui        $at, %hi(D_802EF708)
/* 1061C 8000FA1C D438F708 */  ldc1       $f24, %lo(D_802EF708)($at)
/* 10620 8000FA20 3C01802F */  lui        $at, %hi(D_802EF710)
/* 10624 8000FA24 D43AF710 */  ldc1       $f26, %lo(D_802EF710)($at)
/* 10628 8000FA28 3C01802F */  lui        $at, %hi(D_802EF758)
/* 1062C 8000FA2C D43CF758 */  ldc1       $f28, %lo(D_802EF758)($at)
/* 10630 8000FA30 3C01802F */  lui        $at, %hi(D_802EF760)
/* 10634 8000FA34 D43EF760 */  ldc1       $f30, %lo(D_802EF760)($at)
/* 10638 8000FA38 3C02802F */  lui        $v0, %hi(D_802EF768)
/* 1063C 8000FA3C 8C42F768 */  lw         $v0, %lo(D_802EF768)($v0)
/* 10640 8000FA40 3C03802F */  lui        $v1, %hi(D_802EF76C)
/* 10644 8000FA44 8C63F76C */  lw         $v1, %lo(D_802EF76C)($v1)
/* 10648 8000FA48 462010A0 */  cvt.s.d    $f2, $f2
/* 1064C 8000FA4C 3C01802A */  lui        $at, %hi(D_8029FFD8)
/* 10650 8000FA50 E422FFD8 */  swc1       $f2, %lo(D_8029FFD8)($at)
/* 10654 8000FA54 46200020 */  cvt.s.d    $f0, $f0
/* 10658 8000FA58 46202120 */  cvt.s.d    $f4, $f4
/* 1065C 8000FA5C 462031A0 */  cvt.s.d    $f6, $f6
/* 10660 8000FA60 46204220 */  cvt.s.d    $f8, $f8
/* 10664 8000FA64 462052A0 */  cvt.s.d    $f10, $f10
/* 10668 8000FA68 46206320 */  cvt.s.d    $f12, $f12
/* 1066C 8000FA6C 462073A0 */  cvt.s.d    $f14, $f14
/* 10670 8000FA70 46208420 */  cvt.s.d    $f16, $f16
/* 10674 8000FA74 462094A0 */  cvt.s.d    $f18, $f18
/* 10678 8000FA78 4620A520 */  cvt.s.d    $f20, $f20
/* 1067C 8000FA7C 4620B5A0 */  cvt.s.d    $f22, $f22
/* 10680 8000FA80 4620C620 */  cvt.s.d    $f24, $f24
/* 10684 8000FA84 4620D6A0 */  cvt.s.d    $f26, $f26
/* 10688 8000FA88 44831000 */  mtc1       $v1, $f2
/* 1068C 8000FA8C 44821800 */  mtc1       $v0, $f3
/* 10690 8000FA90 4620E720 */  cvt.s.d    $f28, $f28
/* 10694 8000FA94 462010A0 */  cvt.s.d    $f2, $f2
/* 10698 8000FA98 44021000 */  mfc1       $v0, $f2
/* 1069C 8000FA9C 4620F7A0 */  cvt.s.d    $f30, $f30
/* 106A0 8000FAA0 3C01802A */  lui        $at, %hi(D_8029FFD4)
/* 106A4 8000FAA4 E420FFD4 */  swc1       $f0, %lo(D_8029FFD4)($at)
/* 106A8 8000FAA8 3C01802A */  lui        $at, %hi(D_8029FFDC)
/* 106AC 8000FAAC E424FFDC */  swc1       $f4, %lo(D_8029FFDC)($at)
/* 106B0 8000FAB0 3C01802A */  lui        $at, %hi(D_8029FFE0)
/* 106B4 8000FAB4 E426FFE0 */  swc1       $f6, %lo(D_8029FFE0)($at)
/* 106B8 8000FAB8 3C01802A */  lui        $at, %hi(D_8029FFE4)
/* 106BC 8000FABC E428FFE4 */  swc1       $f8, %lo(D_8029FFE4)($at)
/* 106C0 8000FAC0 3C01802A */  lui        $at, %hi(D_8029FFE8)
/* 106C4 8000FAC4 E42AFFE8 */  swc1       $f10, %lo(D_8029FFE8)($at)
/* 106C8 8000FAC8 3C01802A */  lui        $at, %hi(D_8029FFEC)
/* 106CC 8000FACC E42CFFEC */  swc1       $f12, %lo(D_8029FFEC)($at)
/* 106D0 8000FAD0 3C01802A */  lui        $at, %hi(D_8029FFF0)
/* 106D4 8000FAD4 E42EFFF0 */  swc1       $f14, %lo(D_8029FFF0)($at)
/* 106D8 8000FAD8 3C01802A */  lui        $at, %hi(D_8029FFF4)
/* 106DC 8000FADC E430FFF4 */  swc1       $f16, %lo(D_8029FFF4)($at)
/* 106E0 8000FAE0 3C01802A */  lui        $at, %hi(D_8029FFF8)
/* 106E4 8000FAE4 E432FFF8 */  swc1       $f18, %lo(D_8029FFF8)($at)
/* 106E8 8000FAE8 3C01802A */  lui        $at, %hi(D_8029FFFC)
/* 106EC 8000FAEC E434FFFC */  swc1       $f20, %lo(D_8029FFFC)($at)
/* 106F0 8000FAF0 3C01802A */  lui        $at, %hi(D_802A0000)
/* 106F4 8000FAF4 E4360000 */  swc1       $f22, %lo(D_802A0000)($at)
/* 106F8 8000FAF8 3C01802A */  lui        $at, %hi(D_802A0004)
/* 106FC 8000FAFC E4380004 */  swc1       $f24, %lo(D_802A0004)($at)
/* 10700 8000FB00 3C01802A */  lui        $at, %hi(D_802A0008)
/* 10704 8000FB04 E43A0008 */  swc1       $f26, %lo(D_802A0008)($at)
/* 10708 8000FB08 3C01802A */  lui        $at, %hi(D_802A000C)
/* 1070C 8000FB0C E43C000C */  swc1       $f28, %lo(D_802A000C)($at)
/* 10710 8000FB10 3C01802A */  lui        $at, %hi(D_802A0010)
/* 10714 8000FB14 E43E0010 */  swc1       $f30, %lo(D_802A0010)($at)
/* 10718 8000FB18 3C01802A */  lui        $at, %hi(D_802A0014)
/* 1071C 8000FB1C AC220014 */  sw         $v0, %lo(D_802A0014)($at)
/* 10720 8000FB20 3C01802F */  lui        $at, %hi(D_802EF770)
/* 10724 8000FB24 D420F770 */  ldc1       $f0, %lo(D_802EF770)($at)
/* 10728 8000FB28 3C02802F */  lui        $v0, %hi(D_802EF790)
/* 1072C 8000FB2C 9442F790 */  lhu        $v0, %lo(D_802EF790)($v0)
/* 10730 8000FB30 3C03802F */  lui        $v1, %hi(D_802EF79E)
/* 10734 8000FB34 9063F79E */  lbu        $v1, %lo(D_802EF79E)($v1)
/* 10738 8000FB38 3C04802F */  lui        $a0, %hi(D_802EF79F)
/* 1073C 8000FB3C 9084F79F */  lbu        $a0, %lo(D_802EF79F)($a0)
/* 10740 8000FB40 3C05802F */  lui        $a1, %hi(D_802EF7A0)
/* 10744 8000FB44 90A5F7A0 */  lbu        $a1, %lo(D_802EF7A0)($a1)
/* 10748 8000FB48 3C06802F */  lui        $a2, %hi(D_802EF794)
/* 1074C 8000FB4C 90C6F794 */  lbu        $a2, %lo(D_802EF794)($a2)
/* 10750 8000FB50 3C07802F */  lui        $a3, %hi(D_802EF795)
/* 10754 8000FB54 90E7F795 */  lbu        $a3, %lo(D_802EF795)($a3)
/* 10758 8000FB58 3C08802F */  lui        $t0, %hi(D_802EF792)
/* 1075C 8000FB5C 9508F792 */  lhu        $t0, %lo(D_802EF792)($t0)
/* 10760 8000FB60 3C09802F */  lui        $t1, %hi(D_802EF778)
/* 10764 8000FB64 9529F778 */  lhu        $t1, %lo(D_802EF778)($t1)
/* 10768 8000FB68 3C0A802F */  lui        $t2, %hi(D_802EF77A)
/* 1076C 8000FB6C 954AF77A */  lhu        $t2, %lo(D_802EF77A)($t2)
/* 10770 8000FB70 3C0B802F */  lui        $t3, %hi(D_802EF796)
/* 10774 8000FB74 916BF796 */  lbu        $t3, %lo(D_802EF796)($t3)
/* 10778 8000FB78 3C0C802F */  lui        $t4, %hi(D_802EF797)
/* 1077C 8000FB7C 918CF797 */  lbu        $t4, %lo(D_802EF797)($t4)
/* 10780 8000FB80 46200020 */  cvt.s.d    $f0, $f0
/* 10784 8000FB84 3C01802A */  lui        $at, %hi(D_802A0018)
/* 10788 8000FB88 E4200018 */  swc1       $f0, %lo(D_802A0018)($at)
/* 1078C 8000FB8C 3C01802A */  lui        $at, %hi(D_802A001C)
/* 10790 8000FB90 A422001C */  sh         $v0, %lo(D_802A001C)($at)
/* 10794 8000FB94 3C01802A */  lui        $at, %hi(D_802A001E)
/* 10798 8000FB98 A023001E */  sb         $v1, %lo(D_802A001E)($at)
/* 1079C 8000FB9C 3C01802A */  lui        $at, %hi(D_802A001F)
/* 107A0 8000FBA0 A024001F */  sb         $a0, %lo(D_802A001F)($at)
/* 107A4 8000FBA4 3C01802A */  lui        $at, %hi(D_802A0020)
/* 107A8 8000FBA8 A0250020 */  sb         $a1, %lo(D_802A0020)($at)
/* 107AC 8000FBAC 3C01802A */  lui        $at, %hi(D_802A0021)
/* 107B0 8000FBB0 A0260021 */  sb         $a2, %lo(D_802A0021)($at)
/* 107B4 8000FBB4 3C01802A */  lui        $at, %hi(D_802A0022)
/* 107B8 8000FBB8 A0270022 */  sb         $a3, %lo(D_802A0022)($at)
/* 107BC 8000FBBC 3C01802A */  lui        $at, %hi(D_802A0024)
/* 107C0 8000FBC0 A4280024 */  sh         $t0, %lo(D_802A0024)($at)
/* 107C4 8000FBC4 3C01802A */  lui        $at, %hi(D_802A0026)
/* 107C8 8000FBC8 A4290026 */  sh         $t1, %lo(D_802A0026)($at)
/* 107CC 8000FBCC 3C01802A */  lui        $at, %hi(D_802A0028)
/* 107D0 8000FBD0 A42A0028 */  sh         $t2, %lo(D_802A0028)($at)
/* 107D4 8000FBD4 3C01802A */  lui        $at, %hi(D_802A002A)
/* 107D8 8000FBD8 A02B002A */  sb         $t3, %lo(D_802A002A)($at)
/* 107DC 8000FBDC 3C01802A */  lui        $at, %hi(D_802A002B)
/* 107E0 8000FBE0 A02C002B */  sb         $t4, %lo(D_802A002B)($at)
/* 107E4 8000FBE4 8FB3000C */  lw         $s3, 0xC($sp)
/* 107E8 8000FBE8 8FB20008 */  lw         $s2, 0x8($sp)
/* 107EC 8000FBEC 8FB10004 */  lw         $s1, 0x4($sp)
/* 107F0 8000FBF0 8FB00000 */  lw         $s0, 0x0($sp)
/* 107F4 8000FBF4 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 107F8 8000FBF8 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 107FC 8000FBFC D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 10800 8000FC00 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 10804 8000FC04 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 10808 8000FC08 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 1080C 8000FC0C 03E00008 */  jr         $ra
/* 10810 8000FC10 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8000FC14
/* 10814 8000FC14 3C01802A */  lui        $at, %hi(D_8029FF28)
/* 10818 8000FC18 C420FF28 */  lwc1       $f0, %lo(D_8029FF28)($at)
/* 1081C 8000FC1C 3C01802A */  lui        $at, %hi(D_8029FF2C)
/* 10820 8000FC20 C422FF2C */  lwc1       $f2, %lo(D_8029FF2C)($at)
/* 10824 8000FC24 3C01802A */  lui        $at, %hi(D_8029FF34)
/* 10828 8000FC28 C426FF34 */  lwc1       $f6, %lo(D_8029FF34)($at)
/* 1082C 8000FC2C 3C01802A */  lui        $at, %hi(D_8029FF38)
/* 10830 8000FC30 C428FF38 */  lwc1       $f8, %lo(D_8029FF38)($at)
/* 10834 8000FC34 3C01802A */  lui        $at, %hi(D_8029FF3C)
/* 10838 8000FC38 C42AFF3C */  lwc1       $f10, %lo(D_8029FF3C)($at)
/* 1083C 8000FC3C 3C01802A */  lui        $at, %hi(D_8029FF40)
/* 10840 8000FC40 C42CFF40 */  lwc1       $f12, %lo(D_8029FF40)($at)
/* 10844 8000FC44 3C01802A */  lui        $at, %hi(D_8029FF44)
/* 10848 8000FC48 C42EFF44 */  lwc1       $f14, %lo(D_8029FF44)($at)
/* 1084C 8000FC4C 3C01802A */  lui        $at, %hi(D_8029FF48)
/* 10850 8000FC50 C430FF48 */  lwc1       $f16, %lo(D_8029FF48)($at)
/* 10854 8000FC54 3C01802A */  lui        $at, %hi(D_8029FF4C)
/* 10858 8000FC58 C432FF4C */  lwc1       $f18, %lo(D_8029FF4C)($at)
/* 1085C 8000FC5C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10860 8000FC60 F7B40008 */  sdc1       $f20, 0x8($sp)
/* 10864 8000FC64 3C01802A */  lui        $at, %hi(D_8029FF50)
/* 10868 8000FC68 C434FF50 */  lwc1       $f20, %lo(D_8029FF50)($at)
/* 1086C 8000FC6C F7B60010 */  sdc1       $f22, 0x10($sp)
/* 10870 8000FC70 3C01802A */  lui        $at, %hi(D_8029FF54)
/* 10874 8000FC74 C436FF54 */  lwc1       $f22, %lo(D_8029FF54)($at)
/* 10878 8000FC78 F7B80018 */  sdc1       $f24, 0x18($sp)
/* 1087C 8000FC7C 3C01802A */  lui        $at, %hi(D_8029FF58)
/* 10880 8000FC80 C438FF58 */  lwc1       $f24, %lo(D_8029FF58)($at)
/* 10884 8000FC84 F7BA0020 */  sdc1       $f26, 0x20($sp)
/* 10888 8000FC88 3C01802A */  lui        $at, %hi(D_8029FF5C)
/* 1088C 8000FC8C C43AFF5C */  lwc1       $f26, %lo(D_8029FF5C)($at)
/* 10890 8000FC90 F7BC0028 */  sdc1       $f28, 0x28($sp)
/* 10894 8000FC94 3C01802A */  lui        $at, %hi(D_8029FF60)
/* 10898 8000FC98 C43CFF60 */  lwc1       $f28, %lo(D_8029FF60)($at)
/* 1089C 8000FC9C F7BE0030 */  sdc1       $f30, 0x30($sp)
/* 108A0 8000FCA0 3C01802A */  lui        $at, %hi(D_8029FF64)
/* 108A4 8000FCA4 C43EFF64 */  lwc1       $f30, %lo(D_8029FF64)($at)
/* 108A8 8000FCA8 3C02802A */  lui        $v0, %hi(D_8029FF68)
/* 108AC 8000FCAC 8C42FF68 */  lw         $v0, %lo(D_8029FF68)($v0)
/* 108B0 8000FCB0 3C01802A */  lui        $at, %hi(D_8029FF30)
/* 108B4 8000FCB4 C424FF30 */  lwc1       $f4, %lo(D_8029FF30)($at)
/* 108B8 8000FCB8 AFB00000 */  sw         $s0, 0x0($sp)
/* 108BC 8000FCBC 46000021 */  cvt.d.s    $f0, $f0
/* 108C0 8000FCC0 460010A1 */  cvt.d.s    $f2, $f2
/* 108C4 8000FCC4 46002121 */  cvt.d.s    $f4, $f4
/* 108C8 8000FCC8 460031A1 */  cvt.d.s    $f6, $f6
/* 108CC 8000FCCC 46004221 */  cvt.d.s    $f8, $f8
/* 108D0 8000FCD0 460052A1 */  cvt.d.s    $f10, $f10
/* 108D4 8000FCD4 46006321 */  cvt.d.s    $f12, $f12
/* 108D8 8000FCD8 460073A1 */  cvt.d.s    $f14, $f14
/* 108DC 8000FCDC 46008421 */  cvt.d.s    $f16, $f16
/* 108E0 8000FCE0 460094A1 */  cvt.d.s    $f18, $f18
/* 108E4 8000FCE4 4600A521 */  cvt.d.s    $f20, $f20
/* 108E8 8000FCE8 4600B5A1 */  cvt.d.s    $f22, $f22
/* 108EC 8000FCEC 4600C621 */  cvt.d.s    $f24, $f24
/* 108F0 8000FCF0 4600D6A1 */  cvt.d.s    $f26, $f26
/* 108F4 8000FCF4 3C018031 */  lui        $at, %hi(D_803126E8)
/* 108F8 8000FCF8 F42426E8 */  sdc1       $f4, %lo(D_803126E8)($at)
/* 108FC 8000FCFC 44822000 */  mtc1       $v0, $f4
/* 10900 8000FD00 4600E721 */  cvt.d.s    $f28, $f28
/* 10904 8000FD04 46002121 */  cvt.d.s    $f4, $f4
/* 10908 8000FD08 44032000 */  mfc1       $v1, $f4
/* 1090C 8000FD0C 44022800 */  mfc1       $v0, $f5
/* 10910 8000FD10 4600F7A1 */  cvt.d.s    $f30, $f30
/* 10914 8000FD14 3C018031 */  lui        $at, %hi(D_803126D8)
/* 10918 8000FD18 F42026D8 */  sdc1       $f0, %lo(D_803126D8)($at)
/* 1091C 8000FD1C 3C018031 */  lui        $at, %hi(D_803126E0)
/* 10920 8000FD20 F42226E0 */  sdc1       $f2, %lo(D_803126E0)($at)
/* 10924 8000FD24 3C018031 */  lui        $at, %hi(D_803126F0)
/* 10928 8000FD28 F42626F0 */  sdc1       $f6, %lo(D_803126F0)($at)
/* 1092C 8000FD2C 3C018031 */  lui        $at, %hi(D_803126F8)
/* 10930 8000FD30 F42826F8 */  sdc1       $f8, %lo(D_803126F8)($at)
/* 10934 8000FD34 3C018031 */  lui        $at, %hi(D_80312700)
/* 10938 8000FD38 F42A2700 */  sdc1       $f10, %lo(D_80312700)($at)
/* 1093C 8000FD3C 3C018031 */  lui        $at, %hi(D_80312708)
/* 10940 8000FD40 F42C2708 */  sdc1       $f12, %lo(D_80312708)($at)
/* 10944 8000FD44 3C018031 */  lui        $at, %hi(D_80312710)
/* 10948 8000FD48 F42E2710 */  sdc1       $f14, %lo(D_80312710)($at)
/* 1094C 8000FD4C 3C018031 */  lui        $at, %hi(D_80312718)
/* 10950 8000FD50 F4302718 */  sdc1       $f16, %lo(D_80312718)($at)
/* 10954 8000FD54 3C018031 */  lui        $at, %hi(D_80312720)
/* 10958 8000FD58 F4322720 */  sdc1       $f18, %lo(D_80312720)($at)
/* 1095C 8000FD5C 3C018031 */  lui        $at, %hi(D_80312728)
/* 10960 8000FD60 F4342728 */  sdc1       $f20, %lo(D_80312728)($at)
/* 10964 8000FD64 3C018031 */  lui        $at, %hi(D_80312730)
/* 10968 8000FD68 F4362730 */  sdc1       $f22, %lo(D_80312730)($at)
/* 1096C 8000FD6C 3C018031 */  lui        $at, %hi(D_80312738)
/* 10970 8000FD70 F4382738 */  sdc1       $f24, %lo(D_80312738)($at)
/* 10974 8000FD74 3C018031 */  lui        $at, %hi(D_80312740)
/* 10978 8000FD78 F43A2740 */  sdc1       $f26, %lo(D_80312740)($at)
/* 1097C 8000FD7C 3C018031 */  lui        $at, %hi(D_80312748)
/* 10980 8000FD80 F43C2748 */  sdc1       $f28, %lo(D_80312748)($at)
/* 10984 8000FD84 3C018031 */  lui        $at, %hi(D_80312828)
/* 10988 8000FD88 F43E2828 */  sdc1       $f30, %lo(D_80312828)($at)
/* 1098C 8000FD8C 3C018031 */  lui        $at, %hi(D_80312830)
/* 10990 8000FD90 AC222830 */  sw         $v0, %lo(D_80312830)($at)
/* 10994 8000FD94 3C018031 */  lui        $at, %hi(D_80312834)
/* 10998 8000FD98 AC232834 */  sw         $v1, %lo(D_80312834)($at)
/* 1099C 8000FD9C 3C01802A */  lui        $at, %hi(D_8029FF6C)
/* 109A0 8000FDA0 C420FF6C */  lwc1       $f0, %lo(D_8029FF6C)($at)
/* 109A4 8000FDA4 3C01802A */  lui        $at, %hi(D_8029FF70)
/* 109A8 8000FDA8 C422FF70 */  lwc1       $f2, %lo(D_8029FF70)($at)
/* 109AC 8000FDAC 3C02802A */  lui        $v0, %hi(D_8029FF74)
/* 109B0 8000FDB0 9042FF74 */  lbu        $v0, %lo(D_8029FF74)($v0)
/* 109B4 8000FDB4 3C03802A */  lui        $v1, %hi(D_8029FF75)
/* 109B8 8000FDB8 9063FF75 */  lbu        $v1, %lo(D_8029FF75)($v1)
/* 109BC 8000FDBC 3C04802A */  lui        $a0, %hi(D_8029FF76)
/* 109C0 8000FDC0 9484FF76 */  lhu        $a0, %lo(D_8029FF76)($a0)
/* 109C4 8000FDC4 3C05802A */  lui        $a1, %hi(D_8029FF78)
/* 109C8 8000FDC8 94A5FF78 */  lhu        $a1, %lo(D_8029FF78)($a1)
/* 109CC 8000FDCC 3C06802A */  lui        $a2, %hi(D_8029FF7A)
/* 109D0 8000FDD0 94C6FF7A */  lhu        $a2, %lo(D_8029FF7A)($a2)
/* 109D4 8000FDD4 3C07802A */  lui        $a3, %hi(D_8029FF7C)
/* 109D8 8000FDD8 94E7FF7C */  lhu        $a3, %lo(D_8029FF7C)($a3)
/* 109DC 8000FDDC 3C08802A */  lui        $t0, %hi(D_8029FF7E)
/* 109E0 8000FDE0 9508FF7E */  lhu        $t0, %lo(D_8029FF7E)($t0)
/* 109E4 8000FDE4 3C09802A */  lui        $t1, %hi(D_8029FF80)
/* 109E8 8000FDE8 9529FF80 */  lhu        $t1, %lo(D_8029FF80)($t1)
/* 109EC 8000FDEC 3C0A802A */  lui        $t2, %hi(D_8029FF82)
/* 109F0 8000FDF0 954AFF82 */  lhu        $t2, %lo(D_8029FF82)($t2)
/* 109F4 8000FDF4 3C0B802A */  lui        $t3, %hi(D_8029FF84)
/* 109F8 8000FDF8 956BFF84 */  lhu        $t3, %lo(D_8029FF84)($t3)
/* 109FC 8000FDFC 3C0C802A */  lui        $t4, %hi(D_8029FF86)
/* 10A00 8000FE00 918CFF86 */  lbu        $t4, %lo(D_8029FF86)($t4)
/* 10A04 8000FE04 3C0D802A */  lui        $t5, %hi(D_8029FF87)
/* 10A08 8000FE08 91ADFF87 */  lbu        $t5, %lo(D_8029FF87)($t5)
/* 10A0C 8000FE0C 3C0E802A */  lui        $t6, %hi(D_8029FF88)
/* 10A10 8000FE10 91CEFF88 */  lbu        $t6, %lo(D_8029FF88)($t6)
/* 10A14 8000FE14 3C0F802A */  lui        $t7, %hi(D_8029FF89)
/* 10A18 8000FE18 91EFFF89 */  lbu        $t7, %lo(D_8029FF89)($t7)
/* 10A1C 8000FE1C 3C10802A */  lui        $s0, %hi(D_8029FF8A)
/* 10A20 8000FE20 9610FF8A */  lhu        $s0, %lo(D_8029FF8A)($s0)
/* 10A24 8000FE24 46000021 */  cvt.d.s    $f0, $f0
/* 10A28 8000FE28 460010A1 */  cvt.d.s    $f2, $f2
/* 10A2C 8000FE2C 3C018031 */  lui        $at, %hi(D_80312838)
/* 10A30 8000FE30 F4202838 */  sdc1       $f0, %lo(D_80312838)($at)
/* 10A34 8000FE34 3C018031 */  lui        $at, %hi(D_80312840)
/* 10A38 8000FE38 F4222840 */  sdc1       $f2, %lo(D_80312840)($at)
/* 10A3C 8000FE3C 3C018031 */  lui        $at, %hi(D_803128A8)
/* 10A40 8000FE40 A02228A8 */  sb         $v0, %lo(D_803128A8)($at)
/* 10A44 8000FE44 3C018031 */  lui        $at, %hi(D_803128A9)
/* 10A48 8000FE48 A02328A9 */  sb         $v1, %lo(D_803128A9)($at)
/* 10A4C 8000FE4C 3C018031 */  lui        $at, %hi(D_8031288C)
/* 10A50 8000FE50 A424288C */  sh         $a0, %lo(D_8031288C)($at)
/* 10A54 8000FE54 3C018031 */  lui        $at, %hi(D_8031288E)
/* 10A58 8000FE58 A425288E */  sh         $a1, %lo(D_8031288E)($at)
/* 10A5C 8000FE5C 3C018031 */  lui        $at, %hi(D_80312890)
/* 10A60 8000FE60 A4262890 */  sh         $a2, %lo(D_80312890)($at)
/* 10A64 8000FE64 3C018031 */  lui        $at, %hi(D_80312892)
/* 10A68 8000FE68 A4272892 */  sh         $a3, %lo(D_80312892)($at)
/* 10A6C 8000FE6C 3C018031 */  lui        $at, %hi(D_80312894)
/* 10A70 8000FE70 A4282894 */  sh         $t0, %lo(D_80312894)($at)
/* 10A74 8000FE74 3C018031 */  lui        $at, %hi(D_80312896)
/* 10A78 8000FE78 A4292896 */  sh         $t1, %lo(D_80312896)($at)
/* 10A7C 8000FE7C 3C018031 */  lui        $at, %hi(D_80312898)
/* 10A80 8000FE80 A42A2898 */  sh         $t2, %lo(D_80312898)($at)
/* 10A84 8000FE84 3C018031 */  lui        $at, %hi(D_8031289A)
/* 10A88 8000FE88 A42B289A */  sh         $t3, %lo(D_8031289A)($at)
/* 10A8C 8000FE8C 3C018031 */  lui        $at, %hi(D_803128AA)
/* 10A90 8000FE90 A02C28AA */  sb         $t4, %lo(D_803128AA)($at)
/* 10A94 8000FE94 3C018031 */  lui        $at, %hi(D_803128AB)
/* 10A98 8000FE98 A02D28AB */  sb         $t5, %lo(D_803128AB)($at)
/* 10A9C 8000FE9C 3C018031 */  lui        $at, %hi(D_803128AC)
/* 10AA0 8000FEA0 A02E28AC */  sb         $t6, %lo(D_803128AC)($at)
/* 10AA4 8000FEA4 3C018031 */  lui        $at, %hi(D_803128AD)
/* 10AA8 8000FEA8 A02F28AD */  sb         $t7, %lo(D_803128AD)($at)
/* 10AAC 8000FEAC 3C018031 */  lui        $at, %hi(D_8031289C)
/* 10AB0 8000FEB0 A430289C */  sh         $s0, %lo(D_8031289C)($at)
/* 10AB4 8000FEB4 3C02802A */  lui        $v0, %hi(D_8029FF8C)
/* 10AB8 8000FEB8 9442FF8C */  lhu        $v0, %lo(D_8029FF8C)($v0)
/* 10ABC 8000FEBC 3C01802A */  lui        $at, %hi(D_8029FF90)
/* 10AC0 8000FEC0 C420FF90 */  lwc1       $f0, %lo(D_8029FF90)($at)
/* 10AC4 8000FEC4 3C01802A */  lui        $at, %hi(D_8029FF94)
/* 10AC8 8000FEC8 C422FF94 */  lwc1       $f2, %lo(D_8029FF94)($at)
/* 10ACC 8000FECC 3C01802A */  lui        $at, %hi(D_8029FF9C)
/* 10AD0 8000FED0 C426FF9C */  lwc1       $f6, %lo(D_8029FF9C)($at)
/* 10AD4 8000FED4 3C01802A */  lui        $at, %hi(D_8029FFA0)
/* 10AD8 8000FED8 C428FFA0 */  lwc1       $f8, %lo(D_8029FFA0)($at)
/* 10ADC 8000FEDC 3C01802A */  lui        $at, %hi(D_8029FFA4)
/* 10AE0 8000FEE0 C42AFFA4 */  lwc1       $f10, %lo(D_8029FFA4)($at)
/* 10AE4 8000FEE4 3C01802A */  lui        $at, %hi(D_8029FFA8)
/* 10AE8 8000FEE8 C42CFFA8 */  lwc1       $f12, %lo(D_8029FFA8)($at)
/* 10AEC 8000FEEC 3C01802A */  lui        $at, %hi(D_8029FFAC)
/* 10AF0 8000FEF0 C42EFFAC */  lwc1       $f14, %lo(D_8029FFAC)($at)
/* 10AF4 8000FEF4 3C01802A */  lui        $at, %hi(D_8029FFB0)
/* 10AF8 8000FEF8 C430FFB0 */  lwc1       $f16, %lo(D_8029FFB0)($at)
/* 10AFC 8000FEFC 3C01802A */  lui        $at, %hi(D_8029FFB4)
/* 10B00 8000FF00 C432FFB4 */  lwc1       $f18, %lo(D_8029FFB4)($at)
/* 10B04 8000FF04 3C01802A */  lui        $at, %hi(D_8029FFB8)
/* 10B08 8000FF08 C434FFB8 */  lwc1       $f20, %lo(D_8029FFB8)($at)
/* 10B0C 8000FF0C 3C01802A */  lui        $at, %hi(D_8029FFBC)
/* 10B10 8000FF10 C436FFBC */  lwc1       $f22, %lo(D_8029FFBC)($at)
/* 10B14 8000FF14 3C01802A */  lui        $at, %hi(D_8029FFC0)
/* 10B18 8000FF18 C438FFC0 */  lwc1       $f24, %lo(D_8029FFC0)($at)
/* 10B1C 8000FF1C 3C01802A */  lui        $at, %hi(D_8029FFC4)
/* 10B20 8000FF20 C43AFFC4 */  lwc1       $f26, %lo(D_8029FFC4)($at)
/* 10B24 8000FF24 3C01802A */  lui        $at, %hi(D_8029FFC8)
/* 10B28 8000FF28 C43CFFC8 */  lwc1       $f28, %lo(D_8029FFC8)($at)
/* 10B2C 8000FF2C 3C01802A */  lui        $at, %hi(D_8029FFCC)
/* 10B30 8000FF30 C43EFFCC */  lwc1       $f30, %lo(D_8029FFCC)($at)
/* 10B34 8000FF34 3C01802A */  lui        $at, %hi(D_8029FF98)
/* 10B38 8000FF38 C424FF98 */  lwc1       $f4, %lo(D_8029FF98)($at)
/* 10B3C 8000FF3C 46000021 */  cvt.d.s    $f0, $f0
/* 10B40 8000FF40 460010A1 */  cvt.d.s    $f2, $f2
/* 10B44 8000FF44 46002121 */  cvt.d.s    $f4, $f4
/* 10B48 8000FF48 460031A1 */  cvt.d.s    $f6, $f6
/* 10B4C 8000FF4C 46004221 */  cvt.d.s    $f8, $f8
/* 10B50 8000FF50 460052A1 */  cvt.d.s    $f10, $f10
/* 10B54 8000FF54 46006321 */  cvt.d.s    $f12, $f12
/* 10B58 8000FF58 460073A1 */  cvt.d.s    $f14, $f14
/* 10B5C 8000FF5C 46008421 */  cvt.d.s    $f16, $f16
/* 10B60 8000FF60 460094A1 */  cvt.d.s    $f18, $f18
/* 10B64 8000FF64 4600A521 */  cvt.d.s    $f20, $f20
/* 10B68 8000FF68 4600B5A1 */  cvt.d.s    $f22, $f22
/* 10B6C 8000FF6C 4600C621 */  cvt.d.s    $f24, $f24
/* 10B70 8000FF70 4600D6A1 */  cvt.d.s    $f26, $f26
/* 10B74 8000FF74 4600E721 */  cvt.d.s    $f28, $f28
/* 10B78 8000FF78 4600F7A1 */  cvt.d.s    $f30, $f30
/* 10B7C 8000FF7C 3C018031 */  lui        $at, %hi(D_8031289E)
/* 10B80 8000FF80 A422289E */  sh         $v0, %lo(D_8031289E)($at)
/* 10B84 8000FF84 3C018031 */  lui        $at, %hi(D_80312750)
/* 10B88 8000FF88 F4202750 */  sdc1       $f0, %lo(D_80312750)($at)
/* 10B8C 8000FF8C 3C018031 */  lui        $at, %hi(D_80312758)
/* 10B90 8000FF90 F4222758 */  sdc1       $f2, %lo(D_80312758)($at)
/* 10B94 8000FF94 3C018031 */  lui        $at, %hi(D_80312760)
/* 10B98 8000FF98 F4242760 */  sdc1       $f4, %lo(D_80312760)($at)
/* 10B9C 8000FF9C 3C018031 */  lui        $at, %hi(D_80312768)
/* 10BA0 8000FFA0 F4262768 */  sdc1       $f6, %lo(D_80312768)($at)
/* 10BA4 8000FFA4 3C018031 */  lui        $at, %hi(D_80312770)
/* 10BA8 8000FFA8 F4282770 */  sdc1       $f8, %lo(D_80312770)($at)
/* 10BAC 8000FFAC 3C018031 */  lui        $at, %hi(D_80312778)
/* 10BB0 8000FFB0 F42A2778 */  sdc1       $f10, %lo(D_80312778)($at)
/* 10BB4 8000FFB4 3C018031 */  lui        $at, %hi(D_80312780)
/* 10BB8 8000FFB8 F42C2780 */  sdc1       $f12, %lo(D_80312780)($at)
/* 10BBC 8000FFBC 3C018031 */  lui        $at, %hi(D_80312788)
/* 10BC0 8000FFC0 F42E2788 */  sdc1       $f14, %lo(D_80312788)($at)
/* 10BC4 8000FFC4 3C018031 */  lui        $at, %hi(D_80312790)
/* 10BC8 8000FFC8 F4302790 */  sdc1       $f16, %lo(D_80312790)($at)
/* 10BCC 8000FFCC 3C018031 */  lui        $at, %hi(D_80312798)
/* 10BD0 8000FFD0 F4322798 */  sdc1       $f18, %lo(D_80312798)($at)
/* 10BD4 8000FFD4 3C018031 */  lui        $at, %hi(D_803127A0)
/* 10BD8 8000FFD8 F43427A0 */  sdc1       $f20, %lo(D_803127A0)($at)
/* 10BDC 8000FFDC 3C018031 */  lui        $at, %hi(D_803127A8)
/* 10BE0 8000FFE0 F43627A8 */  sdc1       $f22, %lo(D_803127A8)($at)
/* 10BE4 8000FFE4 3C018031 */  lui        $at, %hi(D_803127B0)
/* 10BE8 8000FFE8 F43827B0 */  sdc1       $f24, %lo(D_803127B0)($at)
/* 10BEC 8000FFEC 3C018031 */  lui        $at, %hi(D_803127B8)
/* 10BF0 8000FFF0 F43A27B8 */  sdc1       $f26, %lo(D_803127B8)($at)
/* 10BF4 8000FFF4 3C018031 */  lui        $at, %hi(D_803127C0)
/* 10BF8 8000FFF8 F43C27C0 */  sdc1       $f28, %lo(D_803127C0)($at)
/* 10BFC 8000FFFC 3C018031 */  lui        $at, %hi(D_803127C8)
/* 10C00 80010000 F43E27C8 */  sdc1       $f30, %lo(D_803127C8)($at)
/* 10C04 80010004 3C01802A */  lui        $at, %hi(D_8029FFD0)
/* 10C08 80010008 C420FFD0 */  lwc1       $f0, %lo(D_8029FFD0)($at)
/* 10C0C 8001000C 3C01802A */  lui        $at, %hi(D_8029FFD4)
/* 10C10 80010010 C422FFD4 */  lwc1       $f2, %lo(D_8029FFD4)($at)
/* 10C14 80010014 3C01802A */  lui        $at, %hi(D_8029FFDC)
/* 10C18 80010018 C426FFDC */  lwc1       $f6, %lo(D_8029FFDC)($at)
/* 10C1C 8001001C 3C01802A */  lui        $at, %hi(D_8029FFE0)
/* 10C20 80010020 C428FFE0 */  lwc1       $f8, %lo(D_8029FFE0)($at)
/* 10C24 80010024 3C01802A */  lui        $at, %hi(D_8029FFE4)
/* 10C28 80010028 C42AFFE4 */  lwc1       $f10, %lo(D_8029FFE4)($at)
/* 10C2C 8001002C 3C01802A */  lui        $at, %hi(D_8029FFE8)
/* 10C30 80010030 C42CFFE8 */  lwc1       $f12, %lo(D_8029FFE8)($at)
/* 10C34 80010034 3C01802A */  lui        $at, %hi(D_8029FFEC)
/* 10C38 80010038 C42EFFEC */  lwc1       $f14, %lo(D_8029FFEC)($at)
/* 10C3C 8001003C 3C01802A */  lui        $at, %hi(D_8029FFF0)
/* 10C40 80010040 C430FFF0 */  lwc1       $f16, %lo(D_8029FFF0)($at)
/* 10C44 80010044 3C01802A */  lui        $at, %hi(D_8029FFF4)
/* 10C48 80010048 C432FFF4 */  lwc1       $f18, %lo(D_8029FFF4)($at)
/* 10C4C 8001004C 3C01802A */  lui        $at, %hi(D_8029FFF8)
/* 10C50 80010050 C434FFF8 */  lwc1       $f20, %lo(D_8029FFF8)($at)
/* 10C54 80010054 3C01802A */  lui        $at, %hi(D_8029FFFC)
/* 10C58 80010058 C436FFFC */  lwc1       $f22, %lo(D_8029FFFC)($at)
/* 10C5C 8001005C 3C01802A */  lui        $at, %hi(D_802A0000)
/* 10C60 80010060 C4380000 */  lwc1       $f24, %lo(D_802A0000)($at)
/* 10C64 80010064 3C01802A */  lui        $at, %hi(D_802A0004)
/* 10C68 80010068 C43A0004 */  lwc1       $f26, %lo(D_802A0004)($at)
/* 10C6C 8001006C 3C01802A */  lui        $at, %hi(D_802A0008)
/* 10C70 80010070 C43C0008 */  lwc1       $f28, %lo(D_802A0008)($at)
/* 10C74 80010074 3C01802A */  lui        $at, %hi(D_802A000C)
/* 10C78 80010078 C43E000C */  lwc1       $f30, %lo(D_802A000C)($at)
/* 10C7C 8001007C 3C02802A */  lui        $v0, %hi(D_802A0010)
/* 10C80 80010080 8C420010 */  lw         $v0, %lo(D_802A0010)($v0)
/* 10C84 80010084 3C01802A */  lui        $at, %hi(D_8029FFD8)
/* 10C88 80010088 C424FFD8 */  lwc1       $f4, %lo(D_8029FFD8)($at)
/* 10C8C 8001008C 46000021 */  cvt.d.s    $f0, $f0
/* 10C90 80010090 460010A1 */  cvt.d.s    $f2, $f2
/* 10C94 80010094 46002121 */  cvt.d.s    $f4, $f4
/* 10C98 80010098 460031A1 */  cvt.d.s    $f6, $f6
/* 10C9C 8001009C 46004221 */  cvt.d.s    $f8, $f8
/* 10CA0 800100A0 460052A1 */  cvt.d.s    $f10, $f10
/* 10CA4 800100A4 46006321 */  cvt.d.s    $f12, $f12
/* 10CA8 800100A8 460073A1 */  cvt.d.s    $f14, $f14
/* 10CAC 800100AC 46008421 */  cvt.d.s    $f16, $f16
/* 10CB0 800100B0 460094A1 */  cvt.d.s    $f18, $f18
/* 10CB4 800100B4 4600A521 */  cvt.d.s    $f20, $f20
/* 10CB8 800100B8 4600B5A1 */  cvt.d.s    $f22, $f22
/* 10CBC 800100BC 4600C621 */  cvt.d.s    $f24, $f24
/* 10CC0 800100C0 4600D6A1 */  cvt.d.s    $f26, $f26
/* 10CC4 800100C4 3C018031 */  lui        $at, %hi(D_80312848)
/* 10CC8 800100C8 F4242848 */  sdc1       $f4, %lo(D_80312848)($at)
/* 10CCC 800100CC 44822000 */  mtc1       $v0, $f4
/* 10CD0 800100D0 4600E721 */  cvt.d.s    $f28, $f28
/* 10CD4 800100D4 46002121 */  cvt.d.s    $f4, $f4
/* 10CD8 800100D8 44032000 */  mfc1       $v1, $f4
/* 10CDC 800100DC 44022800 */  mfc1       $v0, $f5
/* 10CE0 800100E0 4600F7A1 */  cvt.d.s    $f30, $f30
/* 10CE4 800100E4 3C018031 */  lui        $at, %hi(D_803127D0)
/* 10CE8 800100E8 F42027D0 */  sdc1       $f0, %lo(D_803127D0)($at)
/* 10CEC 800100EC 3C018031 */  lui        $at, %hi(D_803127D8)
/* 10CF0 800100F0 F42227D8 */  sdc1       $f2, %lo(D_803127D8)($at)
/* 10CF4 800100F4 3C018031 */  lui        $at, %hi(D_80312850)
/* 10CF8 800100F8 F4262850 */  sdc1       $f6, %lo(D_80312850)($at)
/* 10CFC 800100FC 3C018031 */  lui        $at, %hi(D_80312858)
/* 10D00 80010100 F4282858 */  sdc1       $f8, %lo(D_80312858)($at)
/* 10D04 80010104 3C018031 */  lui        $at, %hi(D_80312860)
/* 10D08 80010108 F42A2860 */  sdc1       $f10, %lo(D_80312860)($at)
/* 10D0C 8001010C 3C018031 */  lui        $at, %hi(D_803127E0)
/* 10D10 80010110 F42C27E0 */  sdc1       $f12, %lo(D_803127E0)($at)
/* 10D14 80010114 3C018031 */  lui        $at, %hi(D_803127E8)
/* 10D18 80010118 F42E27E8 */  sdc1       $f14, %lo(D_803127E8)($at)
/* 10D1C 8001011C 3C018031 */  lui        $at, %hi(D_803127F0)
/* 10D20 80010120 F43027F0 */  sdc1       $f16, %lo(D_803127F0)($at)
/* 10D24 80010124 3C018031 */  lui        $at, %hi(D_803127F8)
/* 10D28 80010128 F43227F8 */  sdc1       $f18, %lo(D_803127F8)($at)
/* 10D2C 8001012C 3C018031 */  lui        $at, %hi(D_80312800)
/* 10D30 80010130 F4342800 */  sdc1       $f20, %lo(D_80312800)($at)
/* 10D34 80010134 3C018031 */  lui        $at, %hi(D_80312808)
/* 10D38 80010138 F4362808 */  sdc1       $f22, %lo(D_80312808)($at)
/* 10D3C 8001013C 3C018031 */  lui        $at, %hi(D_80312810)
/* 10D40 80010140 F4382810 */  sdc1       $f24, %lo(D_80312810)($at)
/* 10D44 80010144 3C018031 */  lui        $at, %hi(D_80312818)
/* 10D48 80010148 F43A2818 */  sdc1       $f26, %lo(D_80312818)($at)
/* 10D4C 8001014C 3C018031 */  lui        $at, %hi(D_80312820)
/* 10D50 80010150 F43C2820 */  sdc1       $f28, %lo(D_80312820)($at)
/* 10D54 80010154 3C018031 */  lui        $at, %hi(D_80312868)
/* 10D58 80010158 F43E2868 */  sdc1       $f30, %lo(D_80312868)($at)
/* 10D5C 8001015C 3C018031 */  lui        $at, %hi(D_80312870)
/* 10D60 80010160 AC222870 */  sw         $v0, %lo(D_80312870)($at)
/* 10D64 80010164 3C018031 */  lui        $at, %hi(D_80312874)
/* 10D68 80010168 AC232874 */  sw         $v1, %lo(D_80312874)($at)
/* 10D6C 8001016C 3C01802A */  lui        $at, %hi(D_802A0014)
/* 10D70 80010170 C4200014 */  lwc1       $f0, %lo(D_802A0014)($at)
/* 10D74 80010174 3C01802A */  lui        $at, %hi(D_802A0018)
/* 10D78 80010178 C4220018 */  lwc1       $f2, %lo(D_802A0018)($at)
/* 10D7C 8001017C 3C02802A */  lui        $v0, %hi(D_802A001C)
/* 10D80 80010180 9442001C */  lhu        $v0, %lo(D_802A001C)($v0)
/* 10D84 80010184 3C03802A */  lui        $v1, %hi(D_802A001E)
/* 10D88 80010188 9063001E */  lbu        $v1, %lo(D_802A001E)($v1)
/* 10D8C 8001018C 3C04802A */  lui        $a0, %hi(D_802A001F)
/* 10D90 80010190 9084001F */  lbu        $a0, %lo(D_802A001F)($a0)
/* 10D94 80010194 3C05802A */  lui        $a1, %hi(D_802A0020)
/* 10D98 80010198 90A50020 */  lbu        $a1, %lo(D_802A0020)($a1)
/* 10D9C 8001019C 3C06802A */  lui        $a2, %hi(D_802A0021)
/* 10DA0 800101A0 90C60021 */  lbu        $a2, %lo(D_802A0021)($a2)
/* 10DA4 800101A4 3C07802A */  lui        $a3, %hi(D_802A0022)
/* 10DA8 800101A8 90E70022 */  lbu        $a3, %lo(D_802A0022)($a3)
/* 10DAC 800101AC 3C08802A */  lui        $t0, %hi(D_802A0024)
/* 10DB0 800101B0 95080024 */  lhu        $t0, %lo(D_802A0024)($t0)
/* 10DB4 800101B4 3C09802A */  lui        $t1, %hi(D_802A0026)
/* 10DB8 800101B8 95290026 */  lhu        $t1, %lo(D_802A0026)($t1)
/* 10DBC 800101BC 3C0A802A */  lui        $t2, %hi(D_802A0028)
/* 10DC0 800101C0 954A0028 */  lhu        $t2, %lo(D_802A0028)($t2)
/* 10DC4 800101C4 3C0B802A */  lui        $t3, %hi(D_802A002A)
/* 10DC8 800101C8 916B002A */  lbu        $t3, %lo(D_802A002A)($t3)
/* 10DCC 800101CC 3C0C802A */  lui        $t4, %hi(D_802A002B)
/* 10DD0 800101D0 918C002B */  lbu        $t4, %lo(D_802A002B)($t4)
/* 10DD4 800101D4 46000021 */  cvt.d.s    $f0, $f0
/* 10DD8 800101D8 460010A1 */  cvt.d.s    $f2, $f2
/* 10DDC 800101DC 3C018031 */  lui        $at, %hi(D_80312878)
/* 10DE0 800101E0 F4202878 */  sdc1       $f0, %lo(D_80312878)($at)
/* 10DE4 800101E4 3C018031 */  lui        $at, %hi(D_80312880)
/* 10DE8 800101E8 F4222880 */  sdc1       $f2, %lo(D_80312880)($at)
/* 10DEC 800101EC 3C018031 */  lui        $at, %hi(D_803128A0)
/* 10DF0 800101F0 A42228A0 */  sh         $v0, %lo(D_803128A0)($at)
/* 10DF4 800101F4 3C018031 */  lui        $at, %hi(D_803128AE)
/* 10DF8 800101F8 A02328AE */  sb         $v1, %lo(D_803128AE)($at)
/* 10DFC 800101FC 3C018031 */  lui        $at, %hi(D_803128AF)
/* 10E00 80010200 A02428AF */  sb         $a0, %lo(D_803128AF)($at)
/* 10E04 80010204 3C018031 */  lui        $at, %hi(D_803128B0)
/* 10E08 80010208 A02528B0 */  sb         $a1, %lo(D_803128B0)($at)
/* 10E0C 8001020C 3C018031 */  lui        $at, %hi(D_803128A4)
/* 10E10 80010210 A02628A4 */  sb         $a2, %lo(D_803128A4)($at)
/* 10E14 80010214 3C018031 */  lui        $at, %hi(D_803128A5)
/* 10E18 80010218 A02728A5 */  sb         $a3, %lo(D_803128A5)($at)
/* 10E1C 8001021C 3C018031 */  lui        $at, %hi(D_803128A2)
/* 10E20 80010220 A42828A2 */  sh         $t0, %lo(D_803128A2)($at)
/* 10E24 80010224 3C018031 */  lui        $at, %hi(D_80312888)
/* 10E28 80010228 A4292888 */  sh         $t1, %lo(D_80312888)($at)
/* 10E2C 8001022C 3C018031 */  lui        $at, %hi(D_8031288A)
/* 10E30 80010230 A42A288A */  sh         $t2, %lo(D_8031288A)($at)
/* 10E34 80010234 3C018031 */  lui        $at, %hi(D_803128A6)
/* 10E38 80010238 A02B28A6 */  sb         $t3, %lo(D_803128A6)($at)
/* 10E3C 8001023C 3C018031 */  lui        $at, %hi(D_803128A7)
/* 10E40 80010240 A02C28A7 */  sb         $t4, %lo(D_803128A7)($at)
/* 10E44 80010244 8FB00000 */  lw         $s0, 0x0($sp)
/* 10E48 80010248 D7BE0030 */  ldc1       $f30, 0x30($sp)
/* 10E4C 8001024C D7BC0028 */  ldc1       $f28, 0x28($sp)
/* 10E50 80010250 D7BA0020 */  ldc1       $f26, 0x20($sp)
/* 10E54 80010254 D7B80018 */  ldc1       $f24, 0x18($sp)
/* 10E58 80010258 D7B60010 */  ldc1       $f22, 0x10($sp)
/* 10E5C 8001025C D7B40008 */  ldc1       $f20, 0x8($sp)
/* 10E60 80010260 03E00008 */  jr         $ra
/* 10E64 80010264 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80010268
/* 10E68 80010268 3C098031 */  lui        $t1, %hi(D_80312ADC)
/* 10E6C 8001026C 25292ADC */  addiu      $t1, $t1, %lo(D_80312ADC)
/* 10E70 80010270 00002821 */  addu       $a1, $zero, $zero
/* 10E74 80010274 3C08802A */  lui        $t0, %hi(D_802A004C)
/* 10E78 80010278 2508004C */  addiu      $t0, $t0, %lo(D_802A004C)
/* 10E7C 8001027C 00003021 */  addu       $a2, $zero, $zero
.L80010280:
/* 10E80 80010280 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 10E84 80010284 00250821 */  addu       $at, $at, $a1
/* 10E88 80010288 D4202AC0 */  ldc1       $f0, %lo(D_80312AC0)($at)
/* 10E8C 8001028C 46200020 */  cvt.s.d    $f0, $f0
/* 10E90 80010290 3C01802A */  lui        $at, %hi(D_802A002C)
/* 10E94 80010294 00260821 */  addu       $at, $at, $a2
/* 10E98 80010298 E420002C */  swc1       $f0, %lo(D_802A002C)($at)
/* 10E9C 8001029C 3C018031 */  lui        $at, %hi(D_80312AC8)
/* 10EA0 800102A0 00250821 */  addu       $at, $at, $a1
/* 10EA4 800102A4 D4202AC8 */  ldc1       $f0, %lo(D_80312AC8)($at)
/* 10EA8 800102A8 46200020 */  cvt.s.d    $f0, $f0
/* 10EAC 800102AC 3C01802A */  lui        $at, %hi(D_802A0030)
/* 10EB0 800102B0 00260821 */  addu       $at, $at, $a2
/* 10EB4 800102B4 E4200030 */  swc1       $f0, %lo(D_802A0030)($at)
/* 10EB8 800102B8 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 10EBC 800102BC 00250821 */  addu       $at, $at, $a1
/* 10EC0 800102C0 D4202AD0 */  ldc1       $f0, %lo(D_80312AD0)($at)
/* 10EC4 800102C4 46200020 */  cvt.s.d    $f0, $f0
/* 10EC8 800102C8 3C01802A */  lui        $at, %hi(D_802A0034)
/* 10ECC 800102CC 00260821 */  addu       $at, $at, $a2
/* 10ED0 800102D0 E4200034 */  swc1       $f0, %lo(D_802A0034)($at)
/* 10ED4 800102D4 3C018031 */  lui        $at, %hi(D_80312AB0)
/* 10ED8 800102D8 00250821 */  addu       $at, $at, $a1
/* 10EDC 800102DC C4202AB0 */  lwc1       $f0, %lo(D_80312AB0)($at)
/* 10EE0 800102E0 3C01802A */  lui        $at, %hi(D_802A0038)
/* 10EE4 800102E4 00260821 */  addu       $at, $at, $a2
/* 10EE8 800102E8 E4200038 */  swc1       $f0, %lo(D_802A0038)($at)
/* 10EEC 800102EC 3C018031 */  lui        $at, %hi(D_80312AB4)
/* 10EF0 800102F0 00250821 */  addu       $at, $at, $a1
/* 10EF4 800102F4 C4202AB4 */  lwc1       $f0, %lo(D_80312AB4)($at)
/* 10EF8 800102F8 3C01802A */  lui        $at, %hi(D_802A003C)
/* 10EFC 800102FC 00260821 */  addu       $at, $at, $a2
/* 10F00 80010300 E420003C */  swc1       $f0, %lo(D_802A003C)($at)
/* 10F04 80010304 3C018031 */  lui        $at, %hi(D_80312AB8)
/* 10F08 80010308 00250821 */  addu       $at, $at, $a1
/* 10F0C 8001030C C4202AB8 */  lwc1       $f0, %lo(D_80312AB8)($at)
/* 10F10 80010310 3C01802A */  lui        $at, %hi(D_802A0040)
/* 10F14 80010314 00260821 */  addu       $at, $at, $a2
/* 10F18 80010318 E4200040 */  swc1       $f0, %lo(D_802A0040)($at)
/* 10F1C 8001031C 3C018031 */  lui        $at, %hi(D_80312ABC)
/* 10F20 80010320 00250821 */  addu       $at, $at, $a1
/* 10F24 80010324 C4202ABC */  lwc1       $f0, %lo(D_80312ABC)($at)
/* 10F28 80010328 3C01802A */  lui        $at, %hi(D_802A0044)
/* 10F2C 8001032C 00260821 */  addu       $at, $at, $a2
/* 10F30 80010330 E4200044 */  swc1       $f0, %lo(D_802A0044)($at)
/* 10F34 80010334 3C028031 */  lui        $v0, %hi(D_80312AD8)
/* 10F38 80010338 00451021 */  addu       $v0, $v0, $a1
/* 10F3C 8001033C 90422AD8 */  lbu        $v0, %lo(D_80312AD8)($v0)
/* 10F40 80010340 3C01802A */  lui        $at, %hi(D_802A0048)
/* 10F44 80010344 00260821 */  addu       $at, $at, $a2
/* 10F48 80010348 A0220048 */  sb         $v0, %lo(D_802A0048)($at)
/* 10F4C 8001034C 3C028031 */  lui        $v0, %hi(D_80312AD9)
/* 10F50 80010350 00451021 */  addu       $v0, $v0, $a1
/* 10F54 80010354 90422AD9 */  lbu        $v0, %lo(D_80312AD9)($v0)
/* 10F58 80010358 3C01802A */  lui        $at, %hi(D_802A0049)
/* 10F5C 8001035C 00260821 */  addu       $at, $at, $a2
/* 10F60 80010360 A0220049 */  sb         $v0, %lo(D_802A0049)($at)
/* 10F64 80010364 3C028031 */  lui        $v0, %hi(D_80312ADA)
/* 10F68 80010368 00451021 */  addu       $v0, $v0, $a1
/* 10F6C 8001036C 90422ADA */  lbu        $v0, %lo(D_80312ADA)($v0)
/* 10F70 80010370 01002021 */  addu       $a0, $t0, $zero
/* 10F74 80010374 3C01802A */  lui        $at, %hi(D_802A004A)
/* 10F78 80010378 00260821 */  addu       $at, $at, $a2
/* 10F7C 8001037C A022004A */  sb         $v0, %lo(D_802A004A)($at)
/* 10F80 80010380 3C028031 */  lui        $v0, %hi(D_80312ADB)
/* 10F84 80010384 00451021 */  addu       $v0, $v0, $a1
/* 10F88 80010388 90422ADB */  lbu        $v0, %lo(D_80312ADB)($v0)
/* 10F8C 8001038C 01201821 */  addu       $v1, $t1, $zero
/* 10F90 80010390 25070004 */  addiu      $a3, $t0, 0x4
/* 10F94 80010394 3C01802A */  lui        $at, %hi(D_802A004B)
/* 10F98 80010398 00260821 */  addu       $at, $at, $a2
/* 10F9C 8001039C A022004B */  sb         $v0, %lo(D_802A004B)($at)
.L800103A0:
/* 10FA0 800103A0 90620000 */  lbu        $v0, 0x0($v1)
/* 10FA4 800103A4 A0820000 */  sb         $v0, 0x0($a0)
/* 10FA8 800103A8 24840001 */  addiu      $a0, $a0, 0x1
/* 10FAC 800103AC 0087102A */  slt        $v0, $a0, $a3
/* 10FB0 800103B0 1440FFFB */  bnez       $v0, .L800103A0
/* 10FB4 800103B4 24630001 */   addiu     $v1, $v1, 0x1
/* 10FB8 800103B8 25290030 */  addiu      $t1, $t1, 0x30
/* 10FBC 800103BC 24A50030 */  addiu      $a1, $a1, 0x30
/* 10FC0 800103C0 25080024 */  addiu      $t0, $t0, 0x24
/* 10FC4 800103C4 28A20300 */  slti       $v0, $a1, 0x300
/* 10FC8 800103C8 1440FFAD */  bnez       $v0, .L80010280
/* 10FCC 800103CC 24C60024 */   addiu     $a2, $a2, 0x24
/* 10FD0 800103D0 03E00008 */  jr         $ra
/* 10FD4 800103D4 00000000 */   nop

glabel func_800103D8
/* 10FD8 800103D8 3C09802A */  lui        $t1, %hi(D_802A004C)
/* 10FDC 800103DC 2529004C */  addiu      $t1, $t1, %lo(D_802A004C)
/* 10FE0 800103E0 00002821 */  addu       $a1, $zero, $zero
/* 10FE4 800103E4 3C08803F */  lui        $t0, %hi(D_803ED0DC)
/* 10FE8 800103E8 2508D0DC */  addiu      $t0, $t0, %lo(D_803ED0DC)
/* 10FEC 800103EC 00003021 */  addu       $a2, $zero, $zero
.L800103F0:
/* 10FF0 800103F0 3C01802A */  lui        $at, %hi(D_802A002C)
/* 10FF4 800103F4 00250821 */  addu       $at, $at, $a1
/* 10FF8 800103F8 C420002C */  lwc1       $f0, %lo(D_802A002C)($at)
/* 10FFC 800103FC 46000021 */  cvt.d.s    $f0, $f0
/* 11000 80010400 3C01803F */  lui        $at, %hi(D_803ED0C0)
/* 11004 80010404 00260821 */  addu       $at, $at, $a2
/* 11008 80010408 F420D0C0 */  sdc1       $f0, %lo(D_803ED0C0)($at)
/* 1100C 8001040C 3C01802A */  lui        $at, %hi(D_802A0030)
/* 11010 80010410 00250821 */  addu       $at, $at, $a1
/* 11014 80010414 C4200030 */  lwc1       $f0, %lo(D_802A0030)($at)
/* 11018 80010418 46000021 */  cvt.d.s    $f0, $f0
/* 1101C 8001041C 3C01803F */  lui        $at, %hi(D_803ED0C8)
/* 11020 80010420 00260821 */  addu       $at, $at, $a2
/* 11024 80010424 F420D0C8 */  sdc1       $f0, %lo(D_803ED0C8)($at)
/* 11028 80010428 3C01802A */  lui        $at, %hi(D_802A0034)
/* 1102C 8001042C 00250821 */  addu       $at, $at, $a1
/* 11030 80010430 C4200034 */  lwc1       $f0, %lo(D_802A0034)($at)
/* 11034 80010434 46000021 */  cvt.d.s    $f0, $f0
/* 11038 80010438 3C01803F */  lui        $at, %hi(D_803ED0D0)
/* 1103C 8001043C 00260821 */  addu       $at, $at, $a2
/* 11040 80010440 F420D0D0 */  sdc1       $f0, %lo(D_803ED0D0)($at)
/* 11044 80010444 3C01802A */  lui        $at, %hi(D_802A0038)
/* 11048 80010448 00250821 */  addu       $at, $at, $a1
/* 1104C 8001044C C4200038 */  lwc1       $f0, %lo(D_802A0038)($at)
/* 11050 80010450 3C01803F */  lui        $at, %hi(D_803ED0B0)
/* 11054 80010454 00260821 */  addu       $at, $at, $a2
/* 11058 80010458 E420D0B0 */  swc1       $f0, %lo(D_803ED0B0)($at)
/* 1105C 8001045C 3C01802A */  lui        $at, %hi(D_802A003C)
/* 11060 80010460 00250821 */  addu       $at, $at, $a1
/* 11064 80010464 C420003C */  lwc1       $f0, %lo(D_802A003C)($at)
/* 11068 80010468 3C01803F */  lui        $at, %hi(D_803ED0B4)
/* 1106C 8001046C 00260821 */  addu       $at, $at, $a2
/* 11070 80010470 E420D0B4 */  swc1       $f0, %lo(D_803ED0B4)($at)
/* 11074 80010474 3C01802A */  lui        $at, %hi(D_802A0040)
/* 11078 80010478 00250821 */  addu       $at, $at, $a1
/* 1107C 8001047C C4200040 */  lwc1       $f0, %lo(D_802A0040)($at)
/* 11080 80010480 3C01803F */  lui        $at, %hi(D_803ED0B8)
/* 11084 80010484 00260821 */  addu       $at, $at, $a2
/* 11088 80010488 E420D0B8 */  swc1       $f0, %lo(D_803ED0B8)($at)
/* 1108C 8001048C 3C01802A */  lui        $at, %hi(D_802A0044)
/* 11090 80010490 00250821 */  addu       $at, $at, $a1
/* 11094 80010494 C4200044 */  lwc1       $f0, %lo(D_802A0044)($at)
/* 11098 80010498 3C01803F */  lui        $at, %hi(D_803ED0BC)
/* 1109C 8001049C 00260821 */  addu       $at, $at, $a2
/* 110A0 800104A0 E420D0BC */  swc1       $f0, %lo(D_803ED0BC)($at)
/* 110A4 800104A4 3C02802A */  lui        $v0, %hi(D_802A0048)
/* 110A8 800104A8 00451021 */  addu       $v0, $v0, $a1
/* 110AC 800104AC 90420048 */  lbu        $v0, %lo(D_802A0048)($v0)
/* 110B0 800104B0 3C01803F */  lui        $at, %hi(D_803ED0D8)
/* 110B4 800104B4 00260821 */  addu       $at, $at, $a2
/* 110B8 800104B8 A022D0D8 */  sb         $v0, %lo(D_803ED0D8)($at)
/* 110BC 800104BC 3C02802A */  lui        $v0, %hi(D_802A0049)
/* 110C0 800104C0 00451021 */  addu       $v0, $v0, $a1
/* 110C4 800104C4 90420049 */  lbu        $v0, %lo(D_802A0049)($v0)
/* 110C8 800104C8 3C01803F */  lui        $at, %hi(D_803ED0D9)
/* 110CC 800104CC 00260821 */  addu       $at, $at, $a2
/* 110D0 800104D0 A022D0D9 */  sb         $v0, %lo(D_803ED0D9)($at)
/* 110D4 800104D4 3C02802A */  lui        $v0, %hi(D_802A004A)
/* 110D8 800104D8 00451021 */  addu       $v0, $v0, $a1
/* 110DC 800104DC 9042004A */  lbu        $v0, %lo(D_802A004A)($v0)
/* 110E0 800104E0 01002021 */  addu       $a0, $t0, $zero
/* 110E4 800104E4 3C01803F */  lui        $at, %hi(D_803ED0DA)
/* 110E8 800104E8 00260821 */  addu       $at, $at, $a2
/* 110EC 800104EC A022D0DA */  sb         $v0, %lo(D_803ED0DA)($at)
/* 110F0 800104F0 3C02802A */  lui        $v0, %hi(D_802A004B)
/* 110F4 800104F4 00451021 */  addu       $v0, $v0, $a1
/* 110F8 800104F8 9042004B */  lbu        $v0, %lo(D_802A004B)($v0)
/* 110FC 800104FC 01201821 */  addu       $v1, $t1, $zero
/* 11100 80010500 25070004 */  addiu      $a3, $t0, 0x4
/* 11104 80010504 3C01803F */  lui        $at, %hi(D_803ED0DB)
/* 11108 80010508 00260821 */  addu       $at, $at, $a2
/* 1110C 8001050C A022D0DB */  sb         $v0, %lo(D_803ED0DB)($at)
.L80010510:
/* 11110 80010510 90620000 */  lbu        $v0, 0x0($v1)
/* 11114 80010514 A0820000 */  sb         $v0, 0x0($a0)
/* 11118 80010518 24840001 */  addiu      $a0, $a0, 0x1
/* 1111C 8001051C 0087102A */  slt        $v0, $a0, $a3
/* 11120 80010520 1440FFFB */  bnez       $v0, .L80010510
/* 11124 80010524 24630001 */   addiu     $v1, $v1, 0x1
/* 11128 80010528 25290024 */  addiu      $t1, $t1, 0x24
/* 1112C 8001052C 24A50024 */  addiu      $a1, $a1, 0x24
/* 11130 80010530 25080030 */  addiu      $t0, $t0, 0x30
/* 11134 80010534 28A20240 */  slti       $v0, $a1, 0x240
/* 11138 80010538 1440FFAD */  bnez       $v0, .L800103F0
/* 1113C 8001053C 24C60030 */   addiu     $a2, $a2, 0x30
/* 11140 80010540 03E00008 */  jr         $ra
/* 11144 80010544 00000000 */   nop

glabel func_80010548
/* 11148 80010548 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1114C 8001054C 10A00014 */  beqz       $a1, .L800105A0
/* 11150 80010550 24A6FFFF */   addiu     $a2, $a1, -0x1
/* 11154 80010554 2405FFFF */  addiu      $a1, $zero, -0x1
.L80010558:
/* 11158 80010558 90830000 */  lbu        $v1, 0x0($a0)
/* 1115C 8001055C 2462FFF1 */  addiu      $v0, $v1, -0xF
/* 11160 80010560 2C420033 */  sltiu      $v0, $v0, 0x33
/* 11164 80010564 10400007 */  beqz       $v0, .L80010584
/* 11168 80010568 00031600 */   sll       $v0, $v1, 24
/* 1116C 8001056C 00021603 */  sra        $v0, $v0, 24
/* 11170 80010570 3C01800D */  lui        $at, %hi(D_800CD291)
/* 11174 80010574 00220821 */  addu       $at, $at, $v0
/* 11178 80010578 9022D291 */  lbu        $v0, %lo(D_800CD291)($at)
/* 1117C 8001057C 08004165 */  j          .L80010594
/* 11180 80010580 A0820000 */   sb        $v0, 0x0($a0)
.L80010584:
/* 11184 80010584 0003102B */  sltu       $v0, $zero, $v1
/* 11188 80010588 00021023 */  negu       $v0, $v0
/* 1118C 8001058C 3042002A */  andi       $v0, $v0, 0x2A
/* 11190 80010590 A0820000 */  sb         $v0, 0x0($a0)
.L80010594:
/* 11194 80010594 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 11198 80010598 14C5FFEF */  bne        $a2, $a1, .L80010558
/* 1119C 8001059C 24840001 */   addiu     $a0, $a0, 0x1
.L800105A0:
/* 111A0 800105A0 27BD0008 */  addiu      $sp, $sp, 0x8
/* 111A4 800105A4 03E00008 */  jr         $ra
/* 111A8 800105A8 00000000 */   nop
/* 111AC 800105AC 00000000 */  nop
