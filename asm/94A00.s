.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80093E00
/* 94A00 80093E00 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 94A04 80093E04 AFB60158 */  sw         $s6, 0x158($sp)
/* 94A08 80093E08 8FB60170 */  lw         $s6, 0x170($sp)
/* 94A0C 80093E0C AFB00140 */  sw         $s0, 0x140($sp)
/* 94A10 80093E10 00808021 */  addu       $s0, $a0, $zero
/* 94A14 80093E14 AFB50154 */  sw         $s5, 0x154($sp)
/* 94A18 80093E18 00A0A821 */  addu       $s5, $a1, $zero
/* 94A1C 80093E1C AFB10144 */  sw         $s1, 0x144($sp)
/* 94A20 80093E20 00E08821 */  addu       $s1, $a3, $zero
/* 94A24 80093E24 AFBF015C */  sw         $ra, 0x15C($sp)
/* 94A28 80093E28 AFB40150 */  sw         $s4, 0x150($sp)
/* 94A2C 80093E2C AFB3014C */  sw         $s3, 0x14C($sp)
/* 94A30 80093E30 AFB20148 */  sw         $s2, 0x148($sp)
/* 94A34 80093E34 8E020050 */  lw         $v0, 0x50($s0)
/* 94A38 80093E38 00151FC2 */  srl        $v1, $s5, 31
/* 94A3C 80093E3C 02A2102A */  slt        $v0, $s5, $v0
/* 94A40 80093E40 38420001 */  xori       $v0, $v0, 0x1
/* 94A44 80093E44 00431025 */  or         $v0, $v0, $v1
/* 94A48 80093E48 1440003F */  bnez       $v0, .L80093F48
/* 94A4C 80093E4C 00C0A021 */   addu      $s4, $a2, $zero
/* 94A50 80093E50 1AC0003D */  blez       $s6, .L80093F48
/* 94A54 80093E54 32C2001F */   andi      $v0, $s6, 0x1F
/* 94A58 80093E58 544000EC */  bnel       $v0, $zero, .L8009420C
/* 94A5C 80093E5C 24020005 */   addiu     $v0, $zero, 0x5
/* 94A60 80093E60 06200039 */  bltz       $s1, .L80093F48
/* 94A64 80093E64 3222001F */   andi      $v0, $s1, 0x1F
/* 94A68 80093E68 144000E8 */  bnez       $v0, .L8009420C
/* 94A6C 80093E6C 24020005 */   addiu     $v0, $zero, 0x5
/* 94A70 80093E70 8E020000 */  lw         $v0, 0x0($s0)
/* 94A74 80093E74 30420001 */  andi       $v0, $v0, 0x1
/* 94A78 80093E78 104000E4 */  beqz       $v0, .L8009420C
/* 94A7C 80093E7C 24020005 */   addiu     $v0, $zero, 0x5
/* 94A80 80093E80 0C026541 */  jal        func_80099504
/* 94A84 80093E84 02002021 */   addu      $a0, $s0, $zero
/* 94A88 80093E88 24030002 */  addiu      $v1, $zero, 0x2
/* 94A8C 80093E8C 104300DF */  beq        $v0, $v1, .L8009420C
/* 94A90 80093E90 24020002 */   addiu     $v0, $zero, 0x2
/* 94A94 80093E94 92020065 */  lbu        $v0, 0x65($s0)
/* 94A98 80093E98 10400006 */  beqz       $v0, .L80093EB4
/* 94A9C 80093E9C 02002021 */   addu      $a0, $s0, $zero
/* 94AA0 80093EA0 0C0250F8 */  jal        func_800943E0
/* 94AA4 80093EA4 00002821 */   addu      $a1, $zero, $zero
/* 94AA8 80093EA8 00401821 */  addu       $v1, $v0, $zero
/* 94AAC 80093EAC 146000D7 */  bnez       $v1, .L8009420C
/* 94AB0 80093EB0 00000000 */   nop
.L80093EB4:
/* 94AB4 80093EB4 8E040004 */  lw         $a0, 0x4($s0)
/* 94AB8 80093EB8 8E06005C */  lw         $a2, 0x5C($s0)
/* 94ABC 80093EBC 8E050008 */  lw         $a1, 0x8($s0)
/* 94AC0 80093EC0 27A70018 */  addiu      $a3, $sp, 0x18
/* 94AC4 80093EC4 00D53021 */  addu       $a2, $a2, $s5
/* 94AC8 80093EC8 0C026640 */  jal        func_80099900
/* 94ACC 80093ECC 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 94AD0 80093ED0 00401821 */  addu       $v1, $v0, $zero
/* 94AD4 80093ED4 146000CD */  bnez       $v1, .L8009420C
/* 94AD8 80093ED8 00000000 */   nop
/* 94ADC 80093EDC 97A2001C */  lhu        $v0, 0x1C($sp)
/* 94AE0 80093EE0 104000CA */  beqz       $v0, .L8009420C
/* 94AE4 80093EE4 24020005 */   addiu     $v0, $zero, 0x5
/* 94AE8 80093EE8 8FA20018 */  lw         $v0, 0x18($sp)
/* 94AEC 80093EEC 104000C7 */  beqz       $v0, .L8009420C
/* 94AF0 80093EF0 24020005 */   addiu     $v0, $zero, 0x5
/* 94AF4 80093EF4 97A2001E */  lhu        $v0, 0x1E($sp)
/* 94AF8 80093EF8 8E030060 */  lw         $v1, 0x60($s0)
/* 94AFC 80093EFC 0043102A */  slt        $v0, $v0, $v1
/* 94B00 80093F00 1440000D */  bnez       $v0, .L80093F38
/* 94B04 80093F04 00000000 */   nop
/* 94B08 80093F08 93A2001E */  lbu        $v0, 0x1E($sp)
/* 94B0C 80093F0C 92030064 */  lbu        $v1, 0x64($s0)
/* 94B10 80093F10 0043102B */  sltu       $v0, $v0, $v1
/* 94B14 80093F14 10400008 */  beqz       $v0, .L80093F38
/* 94B18 80093F18 00000000 */   nop
/* 94B1C 80093F1C 93A2001F */  lbu        $v0, 0x1F($sp)
/* 94B20 80093F20 2C430001 */  sltiu      $v1, $v0, 0x1
/* 94B24 80093F24 2C420080 */  sltiu      $v0, $v0, 0x80
/* 94B28 80093F28 38420001 */  xori       $v0, $v0, 0x1
/* 94B2C 80093F2C 00621825 */  or         $v1, $v1, $v0
/* 94B30 80093F30 50600007 */  beql       $v1, $zero, .L80093F50
/* 94B34 80093F34 328200FF */   andi      $v0, $s4, 0xFF
.L80093F38:
/* 94B38 80093F38 97A4001E */  lhu        $a0, 0x1E($sp)
/* 94B3C 80093F3C 24030001 */  addiu      $v1, $zero, 0x1
/* 94B40 80093F40 148300B2 */  bne        $a0, $v1, .L8009420C
/* 94B44 80093F44 24020003 */   addiu     $v0, $zero, 0x3
.L80093F48:
/* 94B48 80093F48 08025083 */  j          .L8009420C
/* 94B4C 80093F4C 24020005 */   addiu     $v0, $zero, 0x5
.L80093F50:
/* 94B50 80093F50 14400007 */  bnez       $v0, .L80093F70
/* 94B54 80093F54 240200FF */   addiu     $v0, $zero, 0xFF
/* 94B58 80093F58 93A20020 */  lbu        $v0, 0x20($sp)
/* 94B5C 80093F5C 30420002 */  andi       $v0, $v0, 0x2
/* 94B60 80093F60 14400003 */  bnez       $v0, .L80093F70
/* 94B64 80093F64 240200FF */   addiu     $v0, $zero, 0xFF
/* 94B68 80093F68 08025083 */  j          .L8009420C
/* 94B6C 80093F6C 24020006 */   addiu     $v0, $zero, 0x6
.L80093F70:
/* 94B70 80093F70 02203821 */  addu       $a3, $s1, $zero
/* 94B74 80093F74 04E10002 */  bgez       $a3, .L80093F80
/* 94B78 80093F78 A3A20138 */   sb        $v0, 0x138($sp)
/* 94B7C 80093F7C 24E7001F */  addiu      $a3, $a3, 0x1F
.L80093F80:
/* 94B80 80093F80 97A2001E */  lhu        $v0, 0x1E($sp)
/* 94B84 80093F84 00078943 */  sra        $s1, $a3, 5
/* 94B88 80093F88 A7A2013A */  sh         $v0, 0x13A($sp)
/* 94B8C 80093F8C 2A220008 */  slti       $v0, $s1, 0x8
/* 94B90 80093F90 1440002C */  bnez       $v0, .L80094044
/* 94B94 80093F94 02C01021 */   addu      $v0, $s6, $zero
/* 94B98 80093F98 27B20038 */  addiu      $s2, $sp, 0x38
/* 94B9C 80093F9C 24130001 */  addiu      $s3, $zero, 0x1
.L80093FA0:
/* 94BA0 80093FA0 93A3013A */  lbu        $v1, 0x13A($sp)
/* 94BA4 80093FA4 93A20138 */  lbu        $v0, 0x138($sp)
/* 94BA8 80093FA8 306700FF */  andi       $a3, $v1, 0xFF
/* 94BAC 80093FAC 10E20007 */  beq        $a3, $v0, .L80093FCC
/* 94BB0 80093FB0 02002021 */   addu      $a0, $s0, $zero
/* 94BB4 80093FB4 A3A30138 */  sb         $v1, 0x138($sp)
/* 94BB8 80093FB8 02402821 */  addu       $a1, $s2, $zero
/* 94BBC 80093FBC 0C02656F */  jal        func_800995BC
/* 94BC0 80093FC0 00003021 */   addu      $a2, $zero, $zero
/* 94BC4 80093FC4 1440001A */  bnez       $v0, .L80094030
/* 94BC8 80093FC8 00401821 */   addu      $v1, $v0, $zero
.L80093FCC:
/* 94BCC 80093FCC 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94BD0 80093FD0 00021040 */  sll        $v0, $v0, 1
/* 94BD4 80093FD4 00521021 */  addu       $v0, $v0, $s2
/* 94BD8 80093FD8 94430000 */  lhu        $v1, 0x0($v0)
/* 94BDC 80093FDC A7A3013A */  sh         $v1, 0x13A($sp)
/* 94BE0 80093FE0 8E020060 */  lw         $v0, 0x60($s0)
/* 94BE4 80093FE4 0062182A */  slt        $v1, $v1, $v0
/* 94BE8 80093FE8 1460000D */  bnez       $v1, .L80094020
/* 94BEC 80093FEC 00000000 */   nop
/* 94BF0 80093FF0 93A2013A */  lbu        $v0, 0x13A($sp)
/* 94BF4 80093FF4 92030064 */  lbu        $v1, 0x64($s0)
/* 94BF8 80093FF8 0043102B */  sltu       $v0, $v0, $v1
/* 94BFC 80093FFC 10400008 */  beqz       $v0, .L80094020
/* 94C00 80094000 00000000 */   nop
/* 94C04 80094004 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94C08 80094008 2C430001 */  sltiu      $v1, $v0, 0x1
/* 94C0C 8009400C 2C420080 */  sltiu      $v0, $v0, 0x80
/* 94C10 80094010 38420001 */  xori       $v0, $v0, 0x1
/* 94C14 80094014 00621825 */  or         $v1, $v1, $v0
/* 94C18 80094018 50600005 */  beql       $v1, $zero, .L80094030
/* 94C1C 8009401C 00001821 */   addu      $v1, $zero, $zero
.L80094020:
/* 94C20 80094020 97A2013A */  lhu        $v0, 0x13A($sp)
/* 94C24 80094024 14530002 */  bne        $v0, $s3, .L80094030
/* 94C28 80094028 24030003 */   addiu     $v1, $zero, 0x3
/* 94C2C 8009402C 24030005 */  addiu      $v1, $zero, 0x5
.L80094030:
/* 94C30 80094030 14600075 */  bnez       $v1, .L80094208
/* 94C34 80094034 2631FFF8 */   addiu     $s1, $s1, -0x8
/* 94C38 80094038 2A220008 */  slti       $v0, $s1, 0x8
/* 94C3C 8009403C 1040FFD8 */  beqz       $v0, .L80093FA0
/* 94C40 80094040 02C01021 */   addu      $v0, $s6, $zero
.L80094044:
/* 94C44 80094044 04420001 */  bltzl      $v0, .L8009404C
/* 94C48 80094048 2442001F */   addiu     $v0, $v0, 0x1F
.L8009404C:
/* 94C4C 8009404C 00029943 */  sra        $s3, $v0, 5
/* 94C50 80094050 8FB20174 */  lw         $s2, 0x174($sp)
/* 94C54 80094054 5A60004E */  blezl      $s3, .L80094190
/* 94C58 80094058 328300FF */   andi      $v1, $s4, 0xFF
/* 94C5C 8009405C 24160001 */  addiu      $s6, $zero, 0x1
.L80094060:
/* 94C60 80094060 24020008 */  addiu      $v0, $zero, 0x8
/* 94C64 80094064 16220028 */  bne        $s1, $v0, .L80094108
/* 94C68 80094068 00000000 */   nop
/* 94C6C 8009406C 93A3013A */  lbu        $v1, 0x13A($sp)
/* 94C70 80094070 93A20138 */  lbu        $v0, 0x138($sp)
/* 94C74 80094074 306700FF */  andi       $a3, $v1, 0xFF
/* 94C78 80094078 10E20008 */  beq        $a3, $v0, .L8009409C
/* 94C7C 8009407C 27B10038 */   addiu     $s1, $sp, 0x38
/* 94C80 80094080 A3A30138 */  sb         $v1, 0x138($sp)
/* 94C84 80094084 02002021 */  addu       $a0, $s0, $zero
/* 94C88 80094088 02202821 */  addu       $a1, $s1, $zero
/* 94C8C 8009408C 0C02656F */  jal        func_800995BC
/* 94C90 80094090 00003021 */   addu      $a2, $zero, $zero
/* 94C94 80094094 1440001A */  bnez       $v0, .L80094100
/* 94C98 80094098 00401821 */   addu      $v1, $v0, $zero
.L8009409C:
/* 94C9C 8009409C 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94CA0 800940A0 00021040 */  sll        $v0, $v0, 1
/* 94CA4 800940A4 00511021 */  addu       $v0, $v0, $s1
/* 94CA8 800940A8 94430000 */  lhu        $v1, 0x0($v0)
/* 94CAC 800940AC A7A3013A */  sh         $v1, 0x13A($sp)
/* 94CB0 800940B0 8E020060 */  lw         $v0, 0x60($s0)
/* 94CB4 800940B4 0062182A */  slt        $v1, $v1, $v0
/* 94CB8 800940B8 1460000D */  bnez       $v1, .L800940F0
/* 94CBC 800940BC 00000000 */   nop
/* 94CC0 800940C0 93A2013A */  lbu        $v0, 0x13A($sp)
/* 94CC4 800940C4 92030064 */  lbu        $v1, 0x64($s0)
/* 94CC8 800940C8 0043102B */  sltu       $v0, $v0, $v1
/* 94CCC 800940CC 10400008 */  beqz       $v0, .L800940F0
/* 94CD0 800940D0 00000000 */   nop
/* 94CD4 800940D4 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94CD8 800940D8 2C430001 */  sltiu      $v1, $v0, 0x1
/* 94CDC 800940DC 2C420080 */  sltiu      $v0, $v0, 0x80
/* 94CE0 800940E0 38420001 */  xori       $v0, $v0, 0x1
/* 94CE4 800940E4 00621825 */  or         $v1, $v1, $v0
/* 94CE8 800940E8 50600005 */  beql       $v1, $zero, .L80094100
/* 94CEC 800940EC 00001821 */   addu      $v1, $zero, $zero
.L800940F0:
/* 94CF0 800940F0 97A2013A */  lhu        $v0, 0x13A($sp)
/* 94CF4 800940F4 14560002 */  bne        $v0, $s6, .L80094100
/* 94CF8 800940F8 24030003 */   addiu     $v1, $zero, 0x3
/* 94CFC 800940FC 24030005 */  addiu      $v1, $zero, 0x5
.L80094100:
/* 94D00 80094100 14600041 */  bnez       $v1, .L80094208
/* 94D04 80094104 00008821 */   addu      $s1, $zero, $zero
.L80094108:
/* 94D08 80094108 92020065 */  lbu        $v0, 0x65($s0)
/* 94D0C 8009410C 93A5013A */  lbu        $a1, 0x13A($sp)
/* 94D10 80094110 10450006 */  beq        $v0, $a1, .L8009412C
/* 94D14 80094114 00000000 */   nop
/* 94D18 80094118 0C0250F8 */  jal        func_800943E0
/* 94D1C 8009411C 02002021 */   addu      $a0, $s0, $zero
/* 94D20 80094120 00401821 */  addu       $v1, $v0, $zero
/* 94D24 80094124 14600039 */  bnez       $v1, .L8009420C
/* 94D28 80094128 00601021 */   addu      $v0, $v1, $zero
.L8009412C:
/* 94D2C 8009412C 93A2013B */  lbu        $v0, 0x13B($sp)
/* 94D30 80094130 000210C0 */  sll        $v0, $v0, 3
/* 94D34 80094134 00513021 */  addu       $a2, $v0, $s1
/* 94D38 80094138 328200FF */  andi       $v0, $s4, 0xFF
/* 94D3C 8009413C 54400008 */  bnel       $v0, $zero, .L80094160
/* 94D40 80094140 AFA00010 */   sw        $zero, 0x10($sp)
/* 94D44 80094144 8E040004 */  lw         $a0, 0x4($s0)
/* 94D48 80094148 8E050008 */  lw         $a1, 0x8($s0)
/* 94D4C 8009414C 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 94D50 80094150 0C026640 */  jal        func_80099900
/* 94D54 80094154 02403821 */   addu      $a3, $s2, $zero
/* 94D58 80094158 0802505E */  j          .L80094178
/* 94D5C 8009415C 00401821 */   addu      $v1, $v0, $zero
.L80094160:
/* 94D60 80094160 8E040004 */  lw         $a0, 0x4($s0)
/* 94D64 80094164 8E050008 */  lw         $a1, 0x8($s0)
/* 94D68 80094168 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 94D6C 8009416C 0C0266B8 */  jal        func_80099AE0
/* 94D70 80094170 02403821 */   addu      $a3, $s2, $zero
/* 94D74 80094174 00401821 */  addu       $v1, $v0, $zero
.L80094178:
/* 94D78 80094178 14600023 */  bnez       $v1, .L80094208
/* 94D7C 8009417C 26520020 */   addiu     $s2, $s2, 0x20
/* 94D80 80094180 2673FFFF */  addiu      $s3, $s3, -0x1
/* 94D84 80094184 1E60FFB6 */  bgtz       $s3, .L80094060
/* 94D88 80094188 26310001 */   addiu     $s1, $s1, 0x1
/* 94D8C 8009418C 328300FF */  andi       $v1, $s4, 0xFF
.L80094190:
/* 94D90 80094190 24020001 */  addiu      $v0, $zero, 0x1
/* 94D94 80094194 1462001D */  bne        $v1, $v0, .L8009420C
/* 94D98 80094198 00001021 */   addu      $v0, $zero, $zero
/* 94D9C 8009419C 93A30020 */  lbu        $v1, 0x20($sp)
/* 94DA0 800941A0 30620002 */  andi       $v0, $v1, 0x2
/* 94DA4 800941A4 14400019 */  bnez       $v0, .L8009420C
/* 94DA8 800941A8 00001021 */   addu      $v0, $zero, $zero
/* 94DAC 800941AC 34620002 */  ori        $v0, $v1, 0x2
/* 94DB0 800941B0 A3A20020 */  sb         $v0, 0x20($sp)
/* 94DB4 800941B4 92020065 */  lbu        $v0, 0x65($s0)
/* 94DB8 800941B8 10400006 */  beqz       $v0, .L800941D4
/* 94DBC 800941BC 02002021 */   addu      $a0, $s0, $zero
/* 94DC0 800941C0 0C0250F8 */  jal        func_800943E0
/* 94DC4 800941C4 00002821 */   addu      $a1, $zero, $zero
/* 94DC8 800941C8 00401821 */  addu       $v1, $v0, $zero
/* 94DCC 800941CC 1460000F */  bnez       $v1, .L8009420C
/* 94DD0 800941D0 00000000 */   nop
.L800941D4:
/* 94DD4 800941D4 8E06005C */  lw         $a2, 0x5C($s0)
/* 94DD8 800941D8 AFA00010 */  sw         $zero, 0x10($sp)
/* 94DDC 800941DC 8E040004 */  lw         $a0, 0x4($s0)
/* 94DE0 800941E0 8E050008 */  lw         $a1, 0x8($s0)
/* 94DE4 800941E4 27A70018 */  addiu      $a3, $sp, 0x18
/* 94DE8 800941E8 00D53021 */  addu       $a2, $a2, $s5
/* 94DEC 800941EC 0C0266B8 */  jal        func_80099AE0
/* 94DF0 800941F0 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 94DF4 800941F4 00401821 */  addu       $v1, $v0, $zero
/* 94DF8 800941F8 50600004 */  beql       $v1, $zero, .L8009420C
/* 94DFC 800941FC 00001021 */   addu      $v0, $zero, $zero
/* 94E00 80094200 08025083 */  j          .L8009420C
/* 94E04 80094204 00000000 */   nop
.L80094208:
/* 94E08 80094208 00601021 */  addu       $v0, $v1, $zero
.L8009420C:
/* 94E0C 8009420C 8FBF015C */  lw         $ra, 0x15C($sp)
/* 94E10 80094210 8FB60158 */  lw         $s6, 0x158($sp)
/* 94E14 80094214 8FB50154 */  lw         $s5, 0x154($sp)
/* 94E18 80094218 8FB40150 */  lw         $s4, 0x150($sp)
/* 94E1C 8009421C 8FB3014C */  lw         $s3, 0x14C($sp)
/* 94E20 80094220 8FB20148 */  lw         $s2, 0x148($sp)
/* 94E24 80094224 8FB10144 */  lw         $s1, 0x144($sp)
/* 94E28 80094228 8FB00140 */  lw         $s0, 0x140($sp)
/* 94E2C 8009422C 03E00008 */  jr         $ra
/* 94E30 80094230 27BD0160 */   addiu     $sp, $sp, 0x160
/* 94E34 80094234 00000000 */  nop
/* 94E38 80094238 00000000 */  nop
/* 94E3C 8009423C 00000000 */  nop
