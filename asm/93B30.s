.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80092F30
/* 93B30 80092F30 27BDFB60 */  addiu      $sp, $sp, -0x4A0
/* 93B34 80092F34 AFB1047C */  sw         $s1, 0x47C($sp)
/* 93B38 80092F38 00808821 */  addu       $s1, $a0, $zero
/* 93B3C 80092F3C AFBE0498 */  sw         $fp, 0x498($sp)
/* 93B40 80092F40 0000F021 */  addu       $fp, $zero, $zero
/* 93B44 80092F44 AFB60490 */  sw         $s6, 0x490($sp)
/* 93B48 80092F48 241600FE */  addiu      $s6, $zero, 0xFE
/* 93B4C 80092F4C AFBF049C */  sw         $ra, 0x49C($sp)
/* 93B50 80092F50 AFB70494 */  sw         $s7, 0x494($sp)
/* 93B54 80092F54 AFB5048C */  sw         $s5, 0x48C($sp)
/* 93B58 80092F58 AFB40488 */  sw         $s4, 0x488($sp)
/* 93B5C 80092F5C AFB30484 */  sw         $s3, 0x484($sp)
/* 93B60 80092F60 AFB20480 */  sw         $s2, 0x480($sp)
/* 93B64 80092F64 0C026541 */  jal        func_80099504
/* 93B68 80092F68 AFB00478 */   sw        $s0, 0x478($sp)
/* 93B6C 80092F6C 00408021 */  addu       $s0, $v0, $zero
/* 93B70 80092F70 24020002 */  addiu      $v0, $zero, 0x2
/* 93B74 80092F74 16020004 */  bne        $s0, $v0, .L80092F88
/* 93B78 80092F78 00000000 */   nop
/* 93B7C 80092F7C 0C0264CE */  jal        func_80099338
/* 93B80 80092F80 02202021 */   addu      $a0, $s1, $zero
/* 93B84 80092F84 00408021 */  addu       $s0, $v0, $zero
.L80092F88:
/* 93B88 80092F88 12000003 */  beqz       $s0, .L80092F98
/* 93B8C 80092F8C 02202021 */   addu      $a0, $s1, $zero
.L80092F90:
/* 93B90 80092F90 08024CD8 */  j          .L80093360
/* 93B94 80092F94 02001021 */   addu      $v0, $s0, $zero
.L80092F98:
/* 93B98 80092F98 0C024CE4 */  jal        func_80093390
/* 93B9C 80092F9C 27A50258 */   addiu     $a1, $sp, 0x258
/* 93BA0 80092FA0 00408021 */  addu       $s0, $v0, $zero
/* 93BA4 80092FA4 160000EE */  bnez       $s0, .L80093360
/* 93BA8 80092FA8 00000000 */   nop
/* 93BAC 80092FAC 8E220050 */  lw         $v0, 0x50($s1)
/* 93BB0 80092FB0 0202102A */  slt        $v0, $s0, $v0
/* 93BB4 80092FB4 1040006B */  beqz       $v0, .L80093164
/* 93BB8 80092FB8 00009021 */   addu      $s2, $zero, $zero
/* 93BBC 80092FBC 27B70018 */  addiu      $s7, $sp, 0x18
.L80092FC0:
/* 93BC0 80092FC0 8E240004 */  lw         $a0, 0x4($s1)
/* 93BC4 80092FC4 8E26005C */  lw         $a2, 0x5C($s1)
/* 93BC8 80092FC8 8E250008 */  lw         $a1, 0x8($s1)
/* 93BCC 80092FCC 27A70218 */  addiu      $a3, $sp, 0x218
/* 93BD0 80092FD0 00D23021 */  addu       $a2, $a2, $s2
/* 93BD4 80092FD4 0C026640 */  jal        func_80099900
/* 93BD8 80092FD8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 93BDC 80092FDC 00408021 */  addu       $s0, $v0, $zero
/* 93BE0 80092FE0 160000DF */  bnez       $s0, .L80093360
/* 93BE4 80092FE4 02001021 */   addu      $v0, $s0, $zero
/* 93BE8 80092FE8 97A2021C */  lhu        $v0, 0x21C($sp)
/* 93BEC 80092FEC 14400006 */  bnez       $v0, .L80093008
/* 93BF0 80092FF0 00000000 */   nop
/* 93BF4 80092FF4 8FA20218 */  lw         $v0, 0x218($sp)
/* 93BF8 80092FF8 10400055 */  beqz       $v0, .L80093150
/* 93BFC 80092FFC 2405FFFF */   addiu     $a1, $zero, -0x1
/* 93C00 80093000 08024C38 */  j          .L800930E0
/* 93C04 80093004 00000000 */   nop
.L80093008:
/* 93C08 80093008 8FA20218 */  lw         $v0, 0x218($sp)
/* 93C0C 8009300C 14400003 */  bnez       $v0, .L8009301C
/* 93C10 80093010 00002821 */   addu      $a1, $zero, $zero
/* 93C14 80093014 08024C38 */  j          .L800930E0
/* 93C18 80093018 2405FFFF */   addiu     $a1, $zero, -0x1
.L8009301C:
/* 93C1C 8009301C 97B4021E */  lhu        $s4, 0x21E($sp)
/* 93C20 80093020 0000A821 */  addu       $s5, $zero, $zero
/* 93C24 80093024 8E220060 */  lw         $v0, 0x60($s1)
/* 93C28 80093028 08024C30 */  j          .L800930C0
/* 93C2C 8009302C 241300FF */   addiu     $s3, $zero, 0xFF
.L80093030:
/* 93C30 80093030 0002182B */  sltu       $v1, $zero, $v0
/* 93C34 80093034 2C420080 */  sltiu      $v0, $v0, 0x80
/* 93C38 80093038 00621824 */  and        $v1, $v1, $v0
/* 93C3C 8009303C 10600028 */  beqz       $v1, .L800930E0
/* 93C40 80093040 00041A02 */   srl       $v1, $a0, 8
/* 93C44 80093044 326200FF */  andi       $v0, $s3, 0xFF
/* 93C48 80093048 306700FF */  andi       $a3, $v1, 0xFF
/* 93C4C 8009304C 1047000F */  beq        $v0, $a3, .L8009308C
/* 93C50 80093050 32C200FF */   andi      $v0, $s6, 0xFF
/* 93C54 80093054 10470007 */  beq        $v0, $a3, .L80093074
/* 93C58 80093058 00609821 */   addu      $s3, $v1, $zero
/* 93C5C 8009305C 02202021 */  addu       $a0, $s1, $zero
/* 93C60 80093060 27A50118 */  addiu      $a1, $sp, 0x118
/* 93C64 80093064 0C02656F */  jal        func_800995BC
/* 93C68 80093068 00003021 */   addu      $a2, $zero, $zero
/* 93C6C 8009306C 00408021 */  addu       $s0, $v0, $zero
/* 93C70 80093070 0260B021 */  addu       $s6, $s3, $zero
.L80093074:
/* 93C74 80093074 0010182B */  sltu       $v1, $zero, $s0
/* 93C78 80093078 3A020003 */  xori       $v0, $s0, 0x3
/* 93C7C 8009307C 0002102B */  sltu       $v0, $zero, $v0
/* 93C80 80093080 00621824 */  and        $v1, $v1, $v0
/* 93C84 80093084 146000B6 */  bnez       $v1, .L80093360
/* 93C88 80093088 02001021 */   addu      $v0, $s0, $zero
.L8009308C:
/* 93C8C 8009308C 02202021 */  addu       $a0, $s1, $zero
/* 93C90 80093090 02802821 */  addu       $a1, $s4, $zero
/* 93C94 80093094 27A60258 */  addiu      $a2, $sp, 0x258
/* 93C98 80093098 0C024D3A */  jal        func_800934E8
/* 93C9C 8009309C 00052C00 */   sll       $a1, $a1, 16
/* 93CA0 800930A0 00552823 */  subu       $a1, $v0, $s5
/* 93CA4 800930A4 14A00014 */  bnez       $a1, .L800930F8
/* 93CA8 800930A8 328200FF */   andi      $v0, $s4, 0xFF
/* 93CAC 800930AC 00021040 */  sll        $v0, $v0, 1
/* 93CB0 800930B0 00571021 */  addu       $v0, $v0, $s7
/* 93CB4 800930B4 94540100 */  lhu        $s4, 0x100($v0)
/* 93CB8 800930B8 8E220060 */  lw         $v0, 0x60($s1)
/* 93CBC 800930BC 24150001 */  addiu      $s5, $zero, 0x1
.L800930C0:
/* 93CC0 800930C0 3284FFFF */  andi       $a0, $s4, 0xFFFF
/* 93CC4 800930C4 0082102A */  slt        $v0, $a0, $v0
/* 93CC8 800930C8 14400005 */  bnez       $v0, .L800930E0
/* 93CCC 800930CC 00041202 */   srl       $v0, $a0, 8
/* 93CD0 800930D0 92230064 */  lbu        $v1, 0x64($s1)
/* 93CD4 800930D4 0043102B */  sltu       $v0, $v0, $v1
/* 93CD8 800930D8 1440FFD5 */  bnez       $v0, .L80093030
/* 93CDC 800930DC 328200FF */   andi      $v0, $s4, 0xFF
.L800930E0:
/* 93CE0 800930E0 54A00006 */  bnel       $a1, $zero, .L800930FC
/* 93CE4 800930E4 27A40218 */   addiu     $a0, $sp, 0x218
/* 93CE8 800930E8 3283FFFF */  andi       $v1, $s4, 0xFFFF
/* 93CEC 800930EC 24020001 */  addiu      $v0, $zero, 0x1
/* 93CF0 800930F0 10620017 */  beq        $v1, $v0, .L80093150
/* 93CF4 800930F4 00000000 */   nop
.L800930F8:
/* 93CF8 800930F8 27A40218 */  addiu      $a0, $sp, 0x218
.L800930FC:
/* 93CFC 800930FC 0C00034C */  jal        _bzero
/* 93D00 80093100 24050020 */   addiu     $a1, $zero, 0x20
/* 93D04 80093104 92220065 */  lbu        $v0, 0x65($s1)
/* 93D08 80093108 10400006 */  beqz       $v0, .L80093124
/* 93D0C 8009310C 02202021 */   addu      $a0, $s1, $zero
/* 93D10 80093110 0C0250F8 */  jal        func_800943E0
/* 93D14 80093114 00002821 */   addu      $a1, $zero, $zero
/* 93D18 80093118 00408021 */  addu       $s0, $v0, $zero
/* 93D1C 8009311C 16000090 */  bnez       $s0, .L80093360
/* 93D20 80093120 02001021 */   addu      $v0, $s0, $zero
.L80093124:
/* 93D24 80093124 8E26005C */  lw         $a2, 0x5C($s1)
/* 93D28 80093128 AFA00010 */  sw         $zero, 0x10($sp)
/* 93D2C 8009312C 8E240004 */  lw         $a0, 0x4($s1)
/* 93D30 80093130 8E250008 */  lw         $a1, 0x8($s1)
/* 93D34 80093134 27A70218 */  addiu      $a3, $sp, 0x218
/* 93D38 80093138 00D23021 */  addu       $a2, $a2, $s2
/* 93D3C 8009313C 0C0266B8 */  jal        func_80099AE0
/* 93D40 80093140 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 93D44 80093144 00408021 */  addu       $s0, $v0, $zero
/* 93D48 80093148 1600FF91 */  bnez       $s0, .L80092F90
/* 93D4C 8009314C 27DE0001 */   addiu     $fp, $fp, 0x1
.L80093150:
/* 93D50 80093150 8E220050 */  lw         $v0, 0x50($s1)
/* 93D54 80093154 26520001 */  addiu      $s2, $s2, 0x1
/* 93D58 80093158 0242102A */  slt        $v0, $s2, $v0
/* 93D5C 8009315C 1440FF98 */  bnez       $v0, .L80092FC0
/* 93D60 80093160 00000000 */   nop
.L80093164:
/* 93D64 80093164 8E220050 */  lw         $v0, 0x50($s1)
/* 93D68 80093168 1840001D */  blez       $v0, .L800931E0
/* 93D6C 8009316C 00009021 */   addu      $s2, $zero, $zero
/* 93D70 80093170 27B30238 */  addiu      $s3, $sp, 0x238
.L80093174:
/* 93D74 80093174 8E240004 */  lw         $a0, 0x4($s1)
/* 93D78 80093178 8E26005C */  lw         $a2, 0x5C($s1)
/* 93D7C 8009317C 8E250008 */  lw         $a1, 0x8($s1)
/* 93D80 80093180 27A70218 */  addiu      $a3, $sp, 0x218
/* 93D84 80093184 00D23021 */  addu       $a2, $a2, $s2
/* 93D88 80093188 0C026640 */  jal        func_80099900
/* 93D8C 8009318C 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 93D90 80093190 00408021 */  addu       $s0, $v0, $zero
/* 93D94 80093194 16000072 */  bnez       $s0, .L80093360
/* 93D98 80093198 02001021 */   addu      $v0, $s0, $zero
/* 93D9C 8009319C 97A2021C */  lhu        $v0, 0x21C($sp)
/* 93DA0 800931A0 5040000A */  beql       $v0, $zero, .L800931CC
/* 93DA4 800931A4 A6600000 */   sh        $zero, 0x0($s3)
/* 93DA8 800931A8 8FA20218 */  lw         $v0, 0x218($sp)
/* 93DAC 800931AC 50400007 */  beql       $v0, $zero, .L800931CC
/* 93DB0 800931B0 A6600000 */   sh        $zero, 0x0($s3)
/* 93DB4 800931B4 97A3021E */  lhu        $v1, 0x21E($sp)
/* 93DB8 800931B8 96220062 */  lhu        $v0, 0x62($s1)
/* 93DBC 800931BC 0062102B */  sltu       $v0, $v1, $v0
/* 93DC0 800931C0 54400002 */  bnel       $v0, $zero, .L800931CC
/* 93DC4 800931C4 A6600000 */   sh        $zero, 0x0($s3)
/* 93DC8 800931C8 A6630000 */  sh         $v1, 0x0($s3)
.L800931CC:
/* 93DCC 800931CC 8E220050 */  lw         $v0, 0x50($s1)
/* 93DD0 800931D0 26520001 */  addiu      $s2, $s2, 0x1
/* 93DD4 800931D4 0242102A */  slt        $v0, $s2, $v0
/* 93DD8 800931D8 1440FFE6 */  bnez       $v0, .L80093174
/* 93DDC 800931DC 26730002 */   addiu     $s3, $s3, 0x2
.L800931E0:
/* 93DE0 800931E0 92220064 */  lbu        $v0, 0x64($s1)
/* 93DE4 800931E4 10400055 */  beqz       $v0, .L8009333C
/* 93DE8 800931E8 00009821 */   addu      $s3, $zero, $zero
/* 93DEC 800931EC 27B40018 */  addiu      $s4, $sp, 0x18
/* 93DF0 800931F0 27B60118 */  addiu      $s6, $sp, 0x118
/* 93DF4 800931F4 27B50238 */  addiu      $s5, $sp, 0x238
/* 93DF8 800931F8 02202021 */  addu       $a0, $s1, $zero
.L800931FC:
/* 93DFC 800931FC 27A50118 */  addiu      $a1, $sp, 0x118
/* 93E00 80093200 00003021 */  addu       $a2, $zero, $zero
/* 93E04 80093204 327200FF */  andi       $s2, $s3, 0xFF
/* 93E08 80093208 0C02656F */  jal        func_800995BC
/* 93E0C 8009320C 02403821 */   addu      $a3, $s2, $zero
/* 93E10 80093210 00408021 */  addu       $s0, $v0, $zero
/* 93E14 80093214 0010182B */  sltu       $v1, $zero, $s0
/* 93E18 80093218 3A020003 */  xori       $v0, $s0, 0x3
/* 93E1C 8009321C 0002102B */  sltu       $v0, $zero, $v0
/* 93E20 80093220 00621824 */  and        $v1, $v1, $v0
/* 93E24 80093224 5460004E */  bnel       $v1, $zero, .L80093360
/* 93E28 80093228 02001021 */   addu      $v0, $s0, $zero
/* 93E2C 8009322C 16400002 */  bnez       $s2, .L80093238
/* 93E30 80093230 24050001 */   addiu     $a1, $zero, 0x1
/* 93E34 80093234 8E250060 */  lw         $a1, 0x60($s1)
.L80093238:
/* 93E38 80093238 18A0000A */  blez       $a1, .L80093264
/* 93E3C 8009323C 00009021 */   addu      $s2, $zero, $zero
/* 93E40 80093240 02802021 */  addu       $a0, $s4, $zero
/* 93E44 80093244 02C01821 */  addu       $v1, $s6, $zero
.L80093248:
/* 93E48 80093248 94620000 */  lhu        $v0, 0x0($v1)
/* 93E4C 8009324C 24630002 */  addiu      $v1, $v1, 0x2
/* 93E50 80093250 26520001 */  addiu      $s2, $s2, 0x1
/* 93E54 80093254 A4820000 */  sh         $v0, 0x0($a0)
/* 93E58 80093258 0245102A */  slt        $v0, $s2, $a1
/* 93E5C 8009325C 1440FFFA */  bnez       $v0, .L80093248
/* 93E60 80093260 24840002 */   addiu     $a0, $a0, 0x2
.L80093264:
/* 93E64 80093264 2A420080 */  slti       $v0, $s2, 0x80
/* 93E68 80093268 10400008 */  beqz       $v0, .L8009328C
/* 93E6C 8009326C 00121040 */   sll       $v0, $s2, 1
/* 93E70 80093270 24040003 */  addiu      $a0, $zero, 0x3
/* 93E74 80093274 00541821 */  addu       $v1, $v0, $s4
.L80093278:
/* 93E78 80093278 A4640000 */  sh         $a0, 0x0($v1)
/* 93E7C 8009327C 26520001 */  addiu      $s2, $s2, 0x1
/* 93E80 80093280 2A420080 */  slti       $v0, $s2, 0x80
/* 93E84 80093284 1440FFFC */  bnez       $v0, .L80093278
/* 93E88 80093288 24630002 */   addiu     $v1, $v1, 0x2
.L8009328C:
/* 93E8C 8009328C 8E220050 */  lw         $v0, 0x50($s1)
/* 93E90 80093290 1840001D */  blez       $v0, .L80093308
/* 93E94 80093294 00009021 */   addu      $s2, $zero, $zero
/* 93E98 80093298 326800FF */  andi       $t0, $s3, 0xFF
/* 93E9C 8009329C 00003021 */  addu       $a2, $zero, $zero
/* 93EA0 800932A0 02A03821 */  addu       $a3, $s5, $zero
.L800932A4:
/* 93EA4 800932A4 90E20000 */  lbu        $v0, 0x0($a3)
/* 93EA8 800932A8 14480011 */  bne        $v0, $t0, .L800932F0
/* 93EAC 800932AC 02A02821 */   addu      $a1, $s5, $zero
.L800932B0:
/* 93EB0 800932B0 00A62021 */  addu       $a0, $a1, $a2
/* 93EB4 800932B4 94830000 */  lhu        $v1, 0x0($a0)
/* 93EB8 800932B8 96220062 */  lhu        $v0, 0x62($s1)
/* 93EBC 800932BC 0062182B */  sltu       $v1, $v1, $v0
/* 93EC0 800932C0 5460000C */  bnel       $v1, $zero, .L800932F4
/* 93EC4 800932C4 24C60002 */   addiu     $a2, $a2, 0x2
/* 93EC8 800932C8 90820001 */  lbu        $v0, 0x1($a0)
/* 93ECC 800932CC 00021040 */  sll        $v0, $v0, 1
/* 93ED0 800932D0 00541021 */  addu       $v0, $v0, $s4
/* 93ED4 800932D4 94430100 */  lhu        $v1, 0x100($v0)
/* 93ED8 800932D8 A4430000 */  sh         $v1, 0x0($v0)
/* 93EDC 800932DC 00D41021 */  addu       $v0, $a2, $s4
/* 93EE0 800932E0 A4430220 */  sh         $v1, 0x220($v0)
/* 93EE4 800932E4 90820000 */  lbu        $v0, 0x0($a0)
/* 93EE8 800932E8 1048FFF1 */  beq        $v0, $t0, .L800932B0
/* 93EEC 800932EC 00000000 */   nop
.L800932F0:
/* 93EF0 800932F0 24C60002 */  addiu      $a2, $a2, 0x2
.L800932F4:
/* 93EF4 800932F4 8E220050 */  lw         $v0, 0x50($s1)
/* 93EF8 800932F8 26520001 */  addiu      $s2, $s2, 0x1
/* 93EFC 800932FC 0242102A */  slt        $v0, $s2, $v0
/* 93F00 80093300 1440FFE8 */  bnez       $v0, .L800932A4
/* 93F04 80093304 24E70002 */   addiu     $a3, $a3, 0x2
.L80093308:
/* 93F08 80093308 02202021 */  addu       $a0, $s1, $zero
/* 93F0C 8009330C 27A50018 */  addiu      $a1, $sp, 0x18
/* 93F10 80093310 24060001 */  addiu      $a2, $zero, 0x1
/* 93F14 80093314 0C02656F */  jal        func_800995BC
/* 93F18 80093318 326700FF */   andi      $a3, $s3, 0xFF
/* 93F1C 8009331C 00408021 */  addu       $s0, $v0, $zero
/* 93F20 80093320 1600FF1B */  bnez       $s0, .L80092F90
/* 93F24 80093324 26730001 */   addiu     $s3, $s3, 0x1
/* 93F28 80093328 92230064 */  lbu        $v1, 0x64($s1)
/* 93F2C 8009332C 326200FF */  andi       $v0, $s3, 0xFF
/* 93F30 80093330 0043102B */  sltu       $v0, $v0, $v1
/* 93F34 80093334 1440FFB1 */  bnez       $v0, .L800931FC
/* 93F38 80093338 02202021 */   addu      $a0, $s1, $zero
.L8009333C:
/* 93F3C 8009333C 13C00004 */  beqz       $fp, .L80093350
/* 93F40 80093340 2403FFFD */   addiu     $v1, $zero, -0x3
/* 93F44 80093344 8E220000 */  lw         $v0, 0x0($s1)
/* 93F48 80093348 08024CD6 */  j          .L80093358
/* 93F4C 8009334C 34420002 */   ori       $v0, $v0, 0x2
.L80093350:
/* 93F50 80093350 8E220000 */  lw         $v0, 0x0($s1)
/* 93F54 80093354 00431024 */  and        $v0, $v0, $v1
.L80093358:
/* 93F58 80093358 AE220000 */  sw         $v0, 0x0($s1)
/* 93F5C 8009335C 00001021 */  addu       $v0, $zero, $zero
.L80093360:
/* 93F60 80093360 8FBF049C */  lw         $ra, 0x49C($sp)
/* 93F64 80093364 8FBE0498 */  lw         $fp, 0x498($sp)
/* 93F68 80093368 8FB70494 */  lw         $s7, 0x494($sp)
/* 93F6C 8009336C 8FB60490 */  lw         $s6, 0x490($sp)
/* 93F70 80093370 8FB5048C */  lw         $s5, 0x48C($sp)
/* 93F74 80093374 8FB40488 */  lw         $s4, 0x488($sp)
/* 93F78 80093378 8FB30484 */  lw         $s3, 0x484($sp)
/* 93F7C 8009337C 8FB20480 */  lw         $s2, 0x480($sp)
/* 93F80 80093380 8FB1047C */  lw         $s1, 0x47C($sp)
/* 93F84 80093384 8FB00478 */  lw         $s0, 0x478($sp)
/* 93F88 80093388 03E00008 */  jr         $ra
/* 93F8C 8009338C 27BD04A0 */   addiu     $sp, $sp, 0x4A0

glabel func_80093390
/* 93F90 80093390 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 93F94 80093394 AFB20118 */  sw         $s2, 0x118($sp)
/* 93F98 80093398 00809021 */  addu       $s2, $a0, $zero
/* 93F9C 8009339C AFB40120 */  sw         $s4, 0x120($sp)
/* 93FA0 800933A0 00A0A021 */  addu       $s4, $a1, $zero
/* 93FA4 800933A4 240500FF */  addiu      $a1, $zero, 0xFF
/* 93FA8 800933A8 268200FF */  addiu      $v0, $s4, 0xFF
/* 93FAC 800933AC AFBF012C */  sw         $ra, 0x12C($sp)
/* 93FB0 800933B0 AFB60128 */  sw         $s6, 0x128($sp)
/* 93FB4 800933B4 AFB50124 */  sw         $s5, 0x124($sp)
/* 93FB8 800933B8 AFB3011C */  sw         $s3, 0x11C($sp)
/* 93FBC 800933BC AFB10114 */  sw         $s1, 0x114($sp)
/* 93FC0 800933C0 AFB00110 */  sw         $s0, 0x110($sp)
.L800933C4:
/* 93FC4 800933C4 A0400101 */  sb         $zero, 0x101($v0)
/* 93FC8 800933C8 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 93FCC 800933CC 04A1FFFD */  bgez       $a1, .L800933C4
/* 93FD0 800933D0 2442FFFF */   addiu     $v0, $v0, -0x1
/* 93FD4 800933D4 240200FF */  addiu      $v0, $zero, 0xFF
/* 93FD8 800933D8 A2820100 */  sb         $v0, 0x100($s4)
/* 93FDC 800933DC 92420064 */  lbu        $v0, 0x64($s2)
/* 93FE0 800933E0 10400036 */  beqz       $v0, .L800934BC
/* 93FE4 800933E4 00009821 */   addu      $s3, $zero, $zero
/* 93FE8 800933E8 27B50010 */  addiu      $s5, $sp, 0x10
/* 93FEC 800933EC 24160001 */  addiu      $s6, $zero, 0x1
/* 93FF0 800933F0 327000FF */  andi       $s0, $s3, 0xFF
.L800933F4:
/* 93FF4 800933F4 16000002 */  bnez       $s0, .L80093400
/* 93FF8 800933F8 24110001 */   addiu     $s1, $zero, 0x1
/* 93FFC 800933FC 8E510060 */  lw         $s1, 0x60($s2)
.L80093400:
/* 94000 80093400 02402021 */  addu       $a0, $s2, $zero
/* 94004 80093404 27A50010 */  addiu      $a1, $sp, 0x10
/* 94008 80093408 00003021 */  addu       $a2, $zero, $zero
/* 9400C 8009340C 0C02656F */  jal        func_800995BC
/* 94010 80093410 02003821 */   addu      $a3, $s0, $zero
/* 94014 80093414 00402021 */  addu       $a0, $v0, $zero
/* 94018 80093418 0004182B */  sltu       $v1, $zero, $a0
/* 9401C 8009341C 38820003 */  xori       $v0, $a0, 0x3
/* 94020 80093420 0002102B */  sltu       $v0, $zero, $v0
/* 94024 80093424 00621824 */  and        $v1, $v1, $v0
/* 94028 80093428 14600025 */  bnez       $v1, .L800934C0
/* 9402C 8009342C 00801021 */   addu      $v0, $a0, $zero
/* 94030 80093430 02202821 */  addu       $a1, $s1, $zero
/* 94034 80093434 28A20080 */  slti       $v0, $a1, 0x80
/* 94038 80093438 1040001A */  beqz       $v0, .L800934A4
/* 9403C 8009343C 32020007 */   andi      $v0, $s0, 0x7
/* 94040 80093440 02003821 */  addu       $a3, $s0, $zero
/* 94044 80093444 00564004 */  sllv       $t0, $s6, $v0
/* 94048 80093448 00051040 */  sll        $v0, $a1, 1
/* 9404C 8009344C 00553021 */  addu       $a2, $v0, $s5
.L80093450:
/* 94050 80093450 94C40000 */  lhu        $a0, 0x0($a2)
/* 94054 80093454 8E420060 */  lw         $v0, 0x60($s2)
/* 94058 80093458 3083FFFF */  andi       $v1, $a0, 0xFFFF
/* 9405C 8009345C 0062102A */  slt        $v0, $v1, $v0
/* 94060 80093460 1440000D */  bnez       $v0, .L80093498
/* 94064 80093464 24A50001 */   addiu     $a1, $a1, 0x1
/* 94068 80093468 00031A02 */  srl        $v1, $v1, 8
/* 9406C 8009346C 1067000A */  beq        $v1, $a3, .L80093498
/* 94070 80093470 00000000 */   nop
/* 94074 80093474 308200FF */  andi       $v0, $a0, 0xFF
/* 94078 80093478 00021082 */  srl        $v0, $v0, 2
/* 9407C 8009347C 30630007 */  andi       $v1, $v1, 0x7
/* 94080 80093480 00031940 */  sll        $v1, $v1, 5
/* 94084 80093484 00431021 */  addu       $v0, $v0, $v1
/* 94088 80093488 02821021 */  addu       $v0, $s4, $v0
/* 9408C 8009348C 90430101 */  lbu        $v1, 0x101($v0)
/* 94090 80093490 00681825 */  or         $v1, $v1, $t0
/* 94094 80093494 A0430101 */  sb         $v1, 0x101($v0)
.L80093498:
/* 94098 80093498 28A20080 */  slti       $v0, $a1, 0x80
/* 9409C 8009349C 1440FFEC */  bnez       $v0, .L80093450
/* 940A0 800934A0 24C60002 */   addiu     $a2, $a2, 0x2
.L800934A4:
/* 940A4 800934A4 92430064 */  lbu        $v1, 0x64($s2)
/* 940A8 800934A8 26730001 */  addiu      $s3, $s3, 0x1
/* 940AC 800934AC 326200FF */  andi       $v0, $s3, 0xFF
/* 940B0 800934B0 0043102B */  sltu       $v0, $v0, $v1
/* 940B4 800934B4 1440FFCF */  bnez       $v0, .L800933F4
/* 940B8 800934B8 327000FF */   andi      $s0, $s3, 0xFF
.L800934BC:
/* 940BC 800934BC 00001021 */  addu       $v0, $zero, $zero
.L800934C0:
/* 940C0 800934C0 8FBF012C */  lw         $ra, 0x12C($sp)
/* 940C4 800934C4 8FB60128 */  lw         $s6, 0x128($sp)
/* 940C8 800934C8 8FB50124 */  lw         $s5, 0x124($sp)
/* 940CC 800934CC 8FB40120 */  lw         $s4, 0x120($sp)
/* 940D0 800934D0 8FB3011C */  lw         $s3, 0x11C($sp)
/* 940D4 800934D4 8FB20118 */  lw         $s2, 0x118($sp)
/* 940D8 800934D8 8FB10114 */  lw         $s1, 0x114($sp)
/* 940DC 800934DC 8FB00110 */  lw         $s0, 0x110($sp)
/* 940E0 800934E0 03E00008 */  jr         $ra
/* 940E4 800934E4 27BD0130 */   addiu     $sp, $sp, 0x130

glabel func_800934E8
/* 940E8 800934E8 00052C03 */  sra        $a1, $a1, 16
/* 940EC 800934EC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 940F0 800934F0 AFB40028 */  sw         $s4, 0x28($sp)
/* 940F4 800934F4 0080A021 */  addu       $s4, $a0, $zero
/* 940F8 800934F8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 940FC 800934FC 00C08821 */  addu       $s1, $a2, $zero
/* 94100 80093500 AFB20020 */  sw         $s2, 0x20($sp)
/* 94104 80093504 00009021 */  addu       $s2, $zero, $zero
/* 94108 80093508 AFB00018 */  sw         $s0, 0x18($sp)
/* 9410C 8009350C 00008021 */  addu       $s0, $zero, $zero
/* 94110 80093510 30A300FF */  andi       $v1, $a1, 0xFF
/* 94114 80093514 00031882 */  srl        $v1, $v1, 2
/* 94118 80093518 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 9411C 8009351C 00053202 */  srl        $a2, $a1, 8
/* 94120 80093520 30C20007 */  andi       $v0, $a2, 0x7
/* 94124 80093524 AFBF0038 */  sw         $ra, 0x38($sp)
/* 94128 80093528 AFB70034 */  sw         $s7, 0x34($sp)
/* 9412C 8009352C AFB60030 */  sw         $s6, 0x30($sp)
/* 94130 80093530 AFB5002C */  sw         $s5, 0x2C($sp)
/* 94134 80093534 AFB30024 */  sw         $s3, 0x24($sp)
/* 94138 80093538 92840064 */  lbu        $a0, 0x64($s4)
/* 9413C 8009353C 00021140 */  sll        $v0, $v0, 5
/* 94140 80093540 10800037 */  beqz       $a0, .L80093620
/* 94144 80093544 0062B821 */   addu      $s7, $v1, $v0
/* 94148 80093548 00A0A821 */  addu       $s5, $a1, $zero
/* 9414C 8009354C 00C0B021 */  addu       $s6, $a2, $zero
/* 94150 80093550 324700FF */  andi       $a3, $s2, 0xFF
.L80093554:
/* 94154 80093554 14E00002 */  bnez       $a3, .L80093560
/* 94158 80093558 24130001 */   addiu     $s3, $zero, 0x1
/* 9415C 8009355C 8E930060 */  lw         $s3, 0x60($s4)
.L80093560:
/* 94160 80093560 10F60007 */  beq        $a3, $s6, .L80093580
/* 94164 80093564 02371021 */   addu      $v0, $s1, $s7
/* 94168 80093568 90420101 */  lbu        $v0, 0x101($v0)
/* 9416C 8009356C 30E30007 */  andi       $v1, $a3, 0x7
/* 94170 80093570 00621007 */  srav       $v0, $v0, $v1
/* 94174 80093574 30420001 */  andi       $v0, $v0, 0x1
/* 94178 80093578 10400023 */  beqz       $v0, .L80093608
/* 9417C 8009357C 00000000 */   nop
.L80093580:
/* 94180 80093580 92220100 */  lbu        $v0, 0x100($s1)
/* 94184 80093584 10E2000C */  beq        $a3, $v0, .L800935B8
/* 94188 80093588 02802021 */   addu      $a0, $s4, $zero
/* 9418C 8009358C 02202821 */  addu       $a1, $s1, $zero
/* 94190 80093590 0C02656F */  jal        func_800995BC
/* 94194 80093594 00003021 */   addu      $a2, $zero, $zero
/* 94198 80093598 00402021 */  addu       $a0, $v0, $zero
/* 9419C 8009359C 0004182B */  sltu       $v1, $zero, $a0
/* 941A0 800935A0 38820003 */  xori       $v0, $a0, 0x3
/* 941A4 800935A4 0002102B */  sltu       $v0, $zero, $v0
/* 941A8 800935A8 00621824 */  and        $v1, $v1, $v0
/* 941AC 800935AC 1460001D */  bnez       $v1, .L80093624
/* 941B0 800935B0 00801021 */   addu      $v0, $a0, $zero
/* 941B4 800935B4 A2320100 */  sb         $s2, 0x100($s1)
.L800935B8:
/* 941B8 800935B8 02602821 */  addu       $a1, $s3, $zero
/* 941BC 800935BC 2A020002 */  slti       $v0, $s0, 0x2
/* 941C0 800935C0 28A30080 */  slti       $v1, $a1, 0x80
/* 941C4 800935C4 00431024 */  and        $v0, $v0, $v1
/* 941C8 800935C8 1040000C */  beqz       $v0, .L800935FC
/* 941CC 800935CC 00051040 */   sll       $v0, $a1, 1
/* 941D0 800935D0 00512021 */  addu       $a0, $v0, $s1
.L800935D4:
/* 941D4 800935D4 94820000 */  lhu        $v0, 0x0($a0)
/* 941D8 800935D8 24A50001 */  addiu      $a1, $a1, 0x1
/* 941DC 800935DC 28A30080 */  slti       $v1, $a1, 0x80
/* 941E0 800935E0 00551026 */  xor        $v0, $v0, $s5
/* 941E4 800935E4 2C420001 */  sltiu      $v0, $v0, 0x1
/* 941E8 800935E8 02028021 */  addu       $s0, $s0, $v0
/* 941EC 800935EC 2A020002 */  slti       $v0, $s0, 0x2
/* 941F0 800935F0 00431024 */  and        $v0, $v0, $v1
/* 941F4 800935F4 1440FFF7 */  bnez       $v0, .L800935D4
/* 941F8 800935F8 24840002 */   addiu     $a0, $a0, 0x2
.L800935FC:
/* 941FC 800935FC 2A020002 */  slti       $v0, $s0, 0x2
/* 94200 80093600 10400008 */  beqz       $v0, .L80093624
/* 94204 80093604 24020002 */   addiu     $v0, $zero, 0x2
.L80093608:
/* 94208 80093608 92830064 */  lbu        $v1, 0x64($s4)
/* 9420C 8009360C 26520001 */  addiu      $s2, $s2, 0x1
/* 94210 80093610 324200FF */  andi       $v0, $s2, 0xFF
/* 94214 80093614 0043102B */  sltu       $v0, $v0, $v1
/* 94218 80093618 1440FFCE */  bnez       $v0, .L80093554
/* 9421C 8009361C 324700FF */   andi      $a3, $s2, 0xFF
.L80093620:
/* 94220 80093620 02001021 */  addu       $v0, $s0, $zero
.L80093624:
/* 94224 80093624 8FBF0038 */  lw         $ra, 0x38($sp)
/* 94228 80093628 8FB70034 */  lw         $s7, 0x34($sp)
/* 9422C 8009362C 8FB60030 */  lw         $s6, 0x30($sp)
/* 94230 80093630 8FB5002C */  lw         $s5, 0x2C($sp)
/* 94234 80093634 8FB40028 */  lw         $s4, 0x28($sp)
/* 94238 80093638 8FB30024 */  lw         $s3, 0x24($sp)
/* 9423C 8009363C 8FB20020 */  lw         $s2, 0x20($sp)
/* 94240 80093640 8FB1001C */  lw         $s1, 0x1C($sp)
/* 94244 80093644 8FB00018 */  lw         $s0, 0x18($sp)
/* 94248 80093648 03E00008 */  jr         $ra
/* 9424C 8009364C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80093650
/* 94250 80093650 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* 94254 80093654 AFB10144 */  sw         $s1, 0x144($sp)
/* 94258 80093658 00808821 */  addu       $s1, $a0, $zero
/* 9425C 8009365C 8FA80170 */  lw         $t0, 0x170($sp)
/* 94260 80093660 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* 94264 80093664 2CA20001 */  sltiu      $v0, $a1, 0x1
/* 94268 80093668 2CC30001 */  sltiu      $v1, $a2, 0x1
/* 9426C 8009366C 00431025 */  or         $v0, $v0, $v1
/* 94270 80093670 AFBF0158 */  sw         $ra, 0x158($sp)
/* 94274 80093674 AFB50154 */  sw         $s5, 0x154($sp)
/* 94278 80093678 AFB40150 */  sw         $s4, 0x150($sp)
/* 9427C 8009367C AFB3014C */  sw         $s3, 0x14C($sp)
/* 94280 80093680 AFB20148 */  sw         $s2, 0x148($sp)
/* 94284 80093684 10400003 */  beqz       $v0, .L80093694
/* 94288 80093688 AFB00140 */   sw        $s0, 0x140($sp)
/* 9428C 8009368C 08024DF6 */  j          .L800937D8
/* 94290 80093690 24020005 */   addiu     $v0, $zero, 0x5
.L80093694:
/* 94294 80093694 02202021 */  addu       $a0, $s1, $zero
/* 94298 80093698 27A20138 */  addiu      $v0, $sp, 0x138
/* 9429C 8009369C AFA80010 */  sw         $t0, 0x10($sp)
/* 942A0 800936A0 0C025090 */  jal        func_80094240
/* 942A4 800936A4 AFA20014 */   sw        $v0, 0x14($sp)
/* 942A8 800936A8 1440004B */  bnez       $v0, .L800937D8
/* 942AC 800936AC 00000000 */   nop
/* 942B0 800936B0 92220065 */  lbu        $v0, 0x65($s1)
/* 942B4 800936B4 10400005 */  beqz       $v0, .L800936CC
/* 942B8 800936B8 02202021 */   addu      $a0, $s1, $zero
/* 942BC 800936BC 0C0250F8 */  jal        func_800943E0
/* 942C0 800936C0 00002821 */   addu      $a1, $zero, $zero
/* 942C4 800936C4 14400044 */  bnez       $v0, .L800937D8
/* 942C8 800936C8 00000000 */   nop
.L800936CC:
/* 942CC 800936CC 8E240004 */  lw         $a0, 0x4($s1)
/* 942D0 800936D0 8E26005C */  lw         $a2, 0x5C($s1)
/* 942D4 800936D4 8FA20138 */  lw         $v0, 0x138($sp)
/* 942D8 800936D8 8E250008 */  lw         $a1, 0x8($s1)
/* 942DC 800936DC 27A70118 */  addiu      $a3, $sp, 0x118
/* 942E0 800936E0 00C23021 */  addu       $a2, $a2, $v0
/* 942E4 800936E4 0C026640 */  jal        func_80099900
/* 942E8 800936E8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 942EC 800936EC 1440003A */  bnez       $v0, .L800937D8
/* 942F0 800936F0 00000000 */   nop
/* 942F4 800936F4 93B3011E */  lbu        $s3, 0x11E($sp)
/* 942F8 800936F8 92220064 */  lbu        $v0, 0x64($s1)
/* 942FC 800936FC 93B2011F */  lbu        $s2, 0x11F($sp)
/* 94300 80093700 327000FF */  andi       $s0, $s3, 0xFF
/* 94304 80093704 0202102B */  sltu       $v0, $s0, $v0
/* 94308 80093708 10400032 */  beqz       $v0, .L800937D4
/* 9430C 8009370C 27B4013C */   addiu     $s4, $sp, 0x13C
/* 94310 80093710 24150001 */  addiu      $s5, $zero, 0x1
/* 94314 80093714 02202021 */  addu       $a0, $s1, $zero
.L80093718:
/* 94318 80093718 27A50018 */  addiu      $a1, $sp, 0x18
/* 9431C 8009371C 00003021 */  addu       $a2, $zero, $zero
/* 94320 80093720 0C02656F */  jal        func_800995BC
/* 94324 80093724 02003821 */   addu      $a3, $s0, $zero
/* 94328 80093728 1440002B */  bnez       $v0, .L800937D8
/* 9432C 8009372C 02202021 */   addu      $a0, $s1, $zero
/* 94330 80093730 AFB40010 */  sw         $s4, 0x10($sp)
/* 94334 80093734 27A50018 */  addiu      $a1, $sp, 0x18
/* 94338 80093738 02403021 */  addu       $a2, $s2, $zero
/* 9433C 8009373C 0C024DFF */  jal        func_800937FC
/* 94340 80093740 02003821 */   addu      $a3, $s0, $zero
/* 94344 80093744 14400024 */  bnez       $v0, .L800937D8
/* 94348 80093748 02202021 */   addu      $a0, $s1, $zero
/* 9434C 8009374C 27A50018 */  addiu      $a1, $sp, 0x18
/* 94350 80093750 24060001 */  addiu      $a2, $zero, 0x1
/* 94354 80093754 0C02656F */  jal        func_800995BC
/* 94358 80093758 02003821 */   addu      $a3, $s0, $zero
/* 9435C 8009375C 1440001E */  bnez       $v0, .L800937D8
/* 94360 80093760 00000000 */   nop
/* 94364 80093764 97A2013C */  lhu        $v0, 0x13C($sp)
/* 94368 80093768 10550008 */  beq        $v0, $s5, .L8009378C
/* 9436C 8009376C 00000000 */   nop
/* 94370 80093770 93B3013C */  lbu        $s3, 0x13C($sp)
/* 94374 80093774 92220064 */  lbu        $v0, 0x64($s1)
/* 94378 80093778 93B2013D */  lbu        $s2, 0x13D($sp)
/* 9437C 8009377C 327000FF */  andi       $s0, $s3, 0xFF
/* 94380 80093780 0202102B */  sltu       $v0, $s0, $v0
/* 94384 80093784 1440FFE4 */  bnez       $v0, .L80093718
/* 94388 80093788 02202021 */   addu      $a0, $s1, $zero
.L8009378C:
/* 9438C 8009378C 92220064 */  lbu        $v0, 0x64($s1)
/* 94390 80093790 0262102B */  sltu       $v0, $s3, $v0
/* 94394 80093794 1040000F */  beqz       $v0, .L800937D4
/* 94398 80093798 27B00118 */   addiu     $s0, $sp, 0x118
/* 9439C 8009379C 02002021 */  addu       $a0, $s0, $zero
/* 943A0 800937A0 0C00034C */  jal        _bzero
/* 943A4 800937A4 24050020 */   addiu     $a1, $zero, 0x20
/* 943A8 800937A8 8E26005C */  lw         $a2, 0x5C($s1)
/* 943AC 800937AC 8FA20138 */  lw         $v0, 0x138($sp)
/* 943B0 800937B0 AFA00010 */  sw         $zero, 0x10($sp)
/* 943B4 800937B4 8E240004 */  lw         $a0, 0x4($s1)
/* 943B8 800937B8 8E250008 */  lw         $a1, 0x8($s1)
/* 943BC 800937BC 02003821 */  addu       $a3, $s0, $zero
/* 943C0 800937C0 00C23021 */  addu       $a2, $a2, $v0
/* 943C4 800937C4 0C0266B8 */  jal        func_80099AE0
/* 943C8 800937C8 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 943CC 800937CC 08024DF6 */  j          .L800937D8
/* 943D0 800937D0 00000000 */   nop
.L800937D4:
/* 943D4 800937D4 24020003 */  addiu      $v0, $zero, 0x3
.L800937D8:
/* 943D8 800937D8 8FBF0158 */  lw         $ra, 0x158($sp)
/* 943DC 800937DC 8FB50154 */  lw         $s5, 0x154($sp)
/* 943E0 800937E0 8FB40150 */  lw         $s4, 0x150($sp)
/* 943E4 800937E4 8FB3014C */  lw         $s3, 0x14C($sp)
/* 943E8 800937E8 8FB20148 */  lw         $s2, 0x148($sp)
/* 943EC 800937EC 8FB10144 */  lw         $s1, 0x144($sp)
/* 943F0 800937F0 8FB00140 */  lw         $s0, 0x140($sp)
/* 943F4 800937F4 03E00008 */  jr         $ra
/* 943F8 800937F8 27BD0160 */   addiu     $sp, $sp, 0x160

glabel func_800937FC
/* 943FC 800937FC 8FA90010 */  lw         $t1, 0x10($sp)
/* 94400 80093800 00071200 */  sll        $v0, $a3, 8
/* 94404 80093804 30C600FF */  andi       $a2, $a2, 0xFF
/* 94408 80093808 00461825 */  or         $v1, $v0, $a2
/* 9440C 8009380C 24080003 */  addiu      $t0, $zero, 0x3
/* 94410 80093810 30E700FF */  andi       $a3, $a3, 0xFF
/* 94414 80093814 00601021 */  addu       $v0, $v1, $zero
.L80093818:
/* 94418 80093818 304300FF */  andi       $v1, $v0, 0xFF
/* 9441C 8009381C 00031840 */  sll        $v1, $v1, 1
/* 94420 80093820 00651821 */  addu       $v1, $v1, $a1
/* 94424 80093824 94630000 */  lhu        $v1, 0x0($v1)
/* 94428 80093828 304200FF */  andi       $v0, $v0, 0xFF
/* 9442C 8009382C 00021040 */  sll        $v0, $v0, 1
/* 94430 80093830 00A21021 */  addu       $v0, $a1, $v0
/* 94434 80093834 A4480000 */  sh         $t0, 0x0($v0)
/* 94438 80093838 8C820060 */  lw         $v0, 0x60($a0)
/* 9443C 8009383C 3066FFFF */  andi       $a2, $v1, 0xFFFF
/* 94440 80093840 00C2102A */  slt        $v0, $a2, $v0
/* 94444 80093844 54400005 */  bnel       $v0, $zero, .L8009385C
/* 94448 80093848 A5230000 */   sh        $v1, 0x0($t1)
/* 9444C 8009384C 00061202 */  srl        $v0, $a2, 8
/* 94450 80093850 1047FFF1 */  beq        $v0, $a3, .L80093818
/* 94454 80093854 00601021 */   addu      $v0, $v1, $zero
/* 94458 80093858 A5230000 */  sh         $v1, 0x0($t1)
.L8009385C:
/* 9445C 8009385C 03E00008 */  jr         $ra
/* 94460 80093860 00001021 */   addu      $v0, $zero, $zero
/* 94464 80093864 00000000 */  nop
/* 94468 80093868 00000000 */  nop
/* 9446C 8009386C 00000000 */  nop
