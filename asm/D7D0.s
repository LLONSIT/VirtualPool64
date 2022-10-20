.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000CBD0
/* D7D0 8000CBD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D7D4 8000CBD4 AFB10014 */  sw         $s1, 0x14($sp)
/* D7D8 8000CBD8 00E08821 */  addu       $s1, $a3, $zero
/* D7DC 8000CBDC 00005821 */  addu       $t3, $zero, $zero
/* D7E0 8000CBE0 00005021 */  addu       $t2, $zero, $zero
/* D7E4 8000CBE4 24870004 */  addiu      $a3, $a0, 0x4
/* D7E8 8000CBE8 00C04821 */  addu       $t1, $a2, $zero
/* D7EC 8000CBEC AFBF0018 */  sw         $ra, 0x18($sp)
/* D7F0 8000CBF0 AFB00010 */  sw         $s0, 0x10($sp)
/* D7F4 8000CBF4 90830000 */  lbu        $v1, 0x0($a0)
/* D7F8 8000CBF8 24020001 */  addiu      $v0, $zero, 0x1
/* D7FC 8000CBFC 14620008 */  bne        $v1, $v0, .L8000CC20
/* D800 8000CC00 00856821 */   addu      $t5, $a0, $a1
/* D804 8000CC04 24B0FFFC */  addiu      $s0, $a1, -0x4
/* D808 8000CC08 00E02021 */  addu       $a0, $a3, $zero
/* D80C 8000CC0C 00C02821 */  addu       $a1, $a2, $zero
/* D810 8000CC10 0C024933 */  jal        func_800924CC
/* D814 8000CC14 02003021 */   addu      $a2, $s0, $zero
/* D818 8000CC18 08003338 */  j          .L8000CCE0
/* D81C 8000CC1C AE300000 */   sw        $s0, 0x0($s1)
.L8000CC20:
/* D820 8000CC20 10ED002E */  beq        $a3, $t5, .L8000CCDC
/* D824 8000CC24 01261023 */   subu      $v0, $t1, $a2
/* D828 8000CC28 3405FFFF */  ori        $a1, $zero, 0xFFFF
.L8000CC2C:
/* D82C 8000CC2C 3162FFFF */  andi       $v0, $t3, 0xFFFF
/* D830 8000CC30 14400009 */  bnez       $v0, .L8000CC58
/* D834 8000CC34 31420001 */   andi      $v0, $t2, 0x1
/* D838 8000CC38 90EA0000 */  lbu        $t2, 0x0($a3)
/* D83C 8000CC3C 24E70001 */  addiu      $a3, $a3, 0x1
/* D840 8000CC40 90E20000 */  lbu        $v0, 0x0($a3)
/* D844 8000CC44 24E70001 */  addiu      $a3, $a3, 0x1
/* D848 8000CC48 240B0010 */  addiu      $t3, $zero, 0x10
/* D84C 8000CC4C 00021200 */  sll        $v0, $v0, 8
/* D850 8000CC50 01425025 */  or         $t2, $t2, $v0
/* D854 8000CC54 31420001 */  andi       $v0, $t2, 0x1
.L8000CC58:
/* D858 8000CC58 10400018 */  beqz       $v0, .L8000CCBC
/* D85C 8000CC5C 00000000 */   nop
/* D860 8000CC60 90E20000 */  lbu        $v0, 0x0($a3)
/* D864 8000CC64 24E70001 */  addiu      $a3, $a3, 0x1
/* D868 8000CC68 90E40000 */  lbu        $a0, 0x0($a3)
/* D86C 8000CC6C 24E70001 */  addiu      $a3, $a3, 0x1
/* D870 8000CC70 304300F0 */  andi       $v1, $v0, 0xF0
/* D874 8000CC74 00031900 */  sll        $v1, $v1, 4
/* D878 8000CC78 00832025 */  or         $a0, $a0, $v1
/* D87C 8000CC7C 01244023 */  subu       $t0, $t1, $a0
/* D880 8000CC80 3042000F */  andi       $v0, $v0, 0xF
/* D884 8000CC84 24420001 */  addiu      $v0, $v0, 0x1
/* D888 8000CC88 10400010 */  beqz       $v0, .L8000CCCC
/* D88C 8000CC8C 00452021 */   addu      $a0, $v0, $a1
/* D890 8000CC90 340CFFFF */  ori        $t4, $zero, 0xFFFF
.L8000CC94:
/* D894 8000CC94 91030000 */  lbu        $v1, 0x0($t0)
/* D898 8000CC98 25080001 */  addiu      $t0, $t0, 0x1
/* D89C 8000CC9C 00801021 */  addu       $v0, $a0, $zero
/* D8A0 8000CCA0 008C2021 */  addu       $a0, $a0, $t4
/* D8A4 8000CCA4 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* D8A8 8000CCA8 A1230000 */  sb         $v1, 0x0($t1)
/* D8AC 8000CCAC 1440FFF9 */  bnez       $v0, .L8000CC94
/* D8B0 8000CCB0 25290001 */   addiu     $t1, $t1, 0x1
/* D8B4 8000CCB4 08003334 */  j          .L8000CCD0
/* D8B8 8000CCB8 000A5042 */   srl       $t2, $t2, 1
.L8000CCBC:
/* D8BC 8000CCBC 90E20000 */  lbu        $v0, 0x0($a3)
/* D8C0 8000CCC0 24E70001 */  addiu      $a3, $a3, 0x1
/* D8C4 8000CCC4 A1220000 */  sb         $v0, 0x0($t1)
/* D8C8 8000CCC8 25290001 */  addiu      $t1, $t1, 0x1
.L8000CCCC:
/* D8CC 8000CCCC 000A5042 */  srl        $t2, $t2, 1
.L8000CCD0:
/* D8D0 8000CCD0 14EDFFD6 */  bne        $a3, $t5, .L8000CC2C
/* D8D4 8000CCD4 256BFFFF */   addiu     $t3, $t3, -0x1
/* D8D8 8000CCD8 01261023 */  subu       $v0, $t1, $a2
.L8000CCDC:
/* D8DC 8000CCDC AE220000 */  sw         $v0, 0x0($s1)
.L8000CCE0:
/* D8E0 8000CCE0 8FBF0018 */  lw         $ra, 0x18($sp)
/* D8E4 8000CCE4 8FB10014 */  lw         $s1, 0x14($sp)
/* D8E8 8000CCE8 8FB00010 */  lw         $s0, 0x10($sp)
/* D8EC 8000CCEC 03E00008 */  jr         $ra
/* D8F0 8000CCF0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000CCF4
/* D8F4 8000CCF4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D8F8 8000CCF8 AFB10024 */  sw         $s1, 0x24($sp)
/* D8FC 8000CCFC 00808821 */  addu       $s1, $a0, $zero
/* D900 8000CD00 00C02021 */  addu       $a0, $a2, $zero
/* D904 8000CD04 00E03021 */  addu       $a2, $a3, $zero
/* D908 8000CD08 2CA20005 */  sltiu      $v0, $a1, 0x5
/* D90C 8000CD0C AFBF0028 */  sw         $ra, 0x28($sp)
/* D910 8000CD10 1040002C */  beqz       $v0, .L8000CDC4
/* D914 8000CD14 AFB00020 */   sw        $s0, 0x20($sp)
/* D918 8000CD18 00051080 */  sll        $v0, $a1, 2
/* D91C 8000CD1C 3C01800D */  lui        $at, %hi(jtbl_800CD200_main)
/* D920 8000CD20 00220821 */  addu       $at, $at, $v0
/* D924 8000CD24 8C22D200 */  lw         $v0, %lo(jtbl_800CD200_main)($at)
/* D928 8000CD28 00400008 */  jr         $v0
/* D92C 8000CD2C 00000000 */   nop
glabel L8000CD30
/* D930 8000CD30 0C001566 */  jal        func_80005598
/* D934 8000CD34 02202021 */   addu      $a0, $s1, $zero
/* D938 8000CD38 0C001566 */  jal        func_80005598
/* D93C 8000CD3C 2404002C */   addiu     $a0, $zero, 0x2C
/* D940 8000CD40 0C0015B7 */  jal        func_800056DC
/* D944 8000CD44 02202021 */   addu      $a0, $s1, $zero
/* D948 8000CD48 2404002C */  addiu      $a0, $zero, 0x2C
/* D94C 8000CD4C 0C0015B7 */  jal        func_800056DC
/* D950 8000CD50 00408021 */   addu      $s0, $v0, $zero
/* D954 8000CD54 02002021 */  addu       $a0, $s0, $zero
/* D958 8000CD58 00111900 */  sll        $v1, $s1, 4
/* D95C 8000CD5C 3C05800A */  lui        $a1, %hi(D_800A0738)
/* D960 8000CD60 00A32821 */  addu       $a1, $a1, $v1
/* D964 8000CD64 8CA50738 */  lw         $a1, %lo(D_800A0738)($a1)
/* D968 8000CD68 00403021 */  addu       $a2, $v0, $zero
/* D96C 8000CD6C 0C0032F4 */  jal        func_8000CBD0
/* D970 8000CD70 27A70018 */   addiu     $a3, $sp, 0x18
/* D974 8000CD74 0C0015AF */  jal        func_800056BC
/* D978 8000CD78 02202021 */   addu      $a0, $s1, $zero
/* D97C 8000CD7C 08003372 */  j          .L8000CDC8
/* D980 8000CD80 00001021 */   addu      $v0, $zero, $zero
glabel L8000CD84
/* D984 8000CD84 0C0015AF */  jal        func_800056BC
/* D988 8000CD88 2404002C */   addiu     $a0, $zero, 0x2C
/* D98C 8000CD8C 08003372 */  j          .L8000CDC8
/* D990 8000CD90 00001021 */   addu      $v0, $zero, $zero
glabel L8000CD94
/* D994 8000CD94 2405002C */  addiu      $a1, $zero, 0x2C
/* D998 8000CD98 00003821 */  addu       $a3, $zero, $zero
/* D99C 8000CD9C AFA00010 */  sw         $zero, 0x10($sp)
/* D9A0 8000CDA0 0C005A35 */  jal        func_800168D4
/* D9A4 8000CDA4 AFA00014 */   sw        $zero, 0x14($sp)
/* D9A8 8000CDA8 08003372 */  j          .L8000CDC8
/* D9AC 8000CDAC 00001021 */   addu      $v0, $zero, $zero
glabel L8000CDB0
/* D9B0 8000CDB0 3C020026 */  lui        $v0, (0x2625A0 >> 16)
/* D9B4 8000CDB4 08003372 */  j          .L8000CDC8
/* D9B8 8000CDB8 344225A0 */   ori       $v0, $v0, (0x2625A0 & 0xFFFF)
glabel L8000CDBC
/* D9BC 8000CDBC 08003372 */  j          .L8000CDC8
/* D9C0 8000CDC0 24020071 */   addiu     $v0, $zero, 0x71
.L8000CDC4:
/* D9C4 8000CDC4 00001021 */  addu       $v0, $zero, $zero
.L8000CDC8:
/* D9C8 8000CDC8 8FBF0028 */  lw         $ra, 0x28($sp)
/* D9CC 8000CDCC 8FB10024 */  lw         $s1, 0x24($sp)
/* D9D0 8000CDD0 8FB00020 */  lw         $s0, 0x20($sp)
/* D9D4 8000CDD4 03E00008 */  jr         $ra
/* D9D8 8000CDD8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000CDDC
/* D9DC 8000CDDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D9E0 8000CDE0 AFBF0010 */  sw         $ra, 0x10($sp)
/* D9E4 8000CDE4 00801821 */  addu       $v1, $a0, $zero
/* D9E8 8000CDE8 00A04021 */  addu       $t0, $a1, $zero
/* D9EC 8000CDEC 24020003 */  addiu      $v0, $zero, 0x3
/* D9F0 8000CDF0 10620007 */  beq        $v1, $v0, .L8000CE10
/* D9F4 8000CDF4 00C03821 */   addu      $a3, $a2, $zero
/* D9F8 8000CDF8 2404004B */  addiu      $a0, $zero, 0x4B
/* D9FC 8000CDFC 00602821 */  addu       $a1, $v1, $zero
/* DA00 8000CE00 0C00333D */  jal        func_8000CCF4
/* DA04 8000CE04 01003021 */   addu      $a2, $t0, $zero
/* DA08 8000CE08 08003386 */  j          .L8000CE18
/* DA0C 8000CE0C 00000000 */   nop
.L8000CE10:
/* DA10 8000CE10 3C020026 */  lui        $v0, (0x2625A0 >> 16)
/* DA14 8000CE14 344225A0 */  ori        $v0, $v0, (0x2625A0 & 0xFFFF)
.L8000CE18:
/* DA18 8000CE18 8FBF0010 */  lw         $ra, 0x10($sp)
/* DA1C 8000CE1C 03E00008 */  jr         $ra
/* DA20 8000CE20 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000CE24
/* DA24 8000CE24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA28 8000CE28 AFBF0010 */  sw         $ra, 0x10($sp)
/* DA2C 8000CE2C 00801821 */  addu       $v1, $a0, $zero
/* DA30 8000CE30 00A04021 */  addu       $t0, $a1, $zero
/* DA34 8000CE34 24020003 */  addiu      $v0, $zero, 0x3
/* DA38 8000CE38 1462000A */  bne        $v1, $v0, .L8000CE64
/* DA3C 8000CE3C 00C03821 */   addu      $a3, $a2, $zero
/* DA40 8000CE40 3C02800B */  lui        $v0, %hi(D_800ABA90)
/* DA44 8000CE44 8C42BA90 */  lw         $v0, %lo(D_800ABA90)($v0)
/* DA48 8000CE48 3C03001E */  lui        $v1, (0x1E8480 >> 16)
/* DA4C 8000CE4C 10400003 */  beqz       $v0, .L8000CE5C
/* DA50 8000CE50 34638480 */   ori       $v1, $v1, (0x1E8480 & 0xFFFF)
/* DA54 8000CE54 3C03002A */  lui        $v1, (0x2AB980 >> 16)
/* DA58 8000CE58 3463B980 */  ori        $v1, $v1, (0x2AB980 & 0xFFFF)
.L8000CE5C:
/* DA5C 8000CE5C 0800339D */  j          .L8000CE74
/* DA60 8000CE60 00601021 */   addu      $v0, $v1, $zero
.L8000CE64:
/* DA64 8000CE64 2404004C */  addiu      $a0, $zero, 0x4C
/* DA68 8000CE68 00602821 */  addu       $a1, $v1, $zero
/* DA6C 8000CE6C 0C00333D */  jal        func_8000CCF4
/* DA70 8000CE70 01003021 */   addu      $a2, $t0, $zero
.L8000CE74:
/* DA74 8000CE74 8FBF0010 */  lw         $ra, 0x10($sp)
/* DA78 8000CE78 03E00008 */  jr         $ra
/* DA7C 8000CE7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000CE80
/* DA80 8000CE80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DA84 8000CE84 AFBF0010 */  sw         $ra, 0x10($sp)
/* DA88 8000CE88 00801821 */  addu       $v1, $a0, $zero
/* DA8C 8000CE8C 00A04021 */  addu       $t0, $a1, $zero
/* DA90 8000CE90 24020003 */  addiu      $v0, $zero, 0x3
/* DA94 8000CE94 1462000A */  bne        $v1, $v0, .L8000CEC0
/* DA98 8000CE98 00C03821 */   addu      $a3, $a2, $zero
/* DA9C 8000CE9C 3C02800B */  lui        $v0, %hi(D_800ABA90)
/* DAA0 8000CEA0 8C42BA90 */  lw         $v0, %lo(D_800ABA90)($v0)
/* DAA4 8000CEA4 3C03001E */  lui        $v1, (0x1E8480 >> 16)
/* DAA8 8000CEA8 10400003 */  beqz       $v0, .L8000CEB8
/* DAAC 8000CEAC 34638480 */   ori       $v1, $v1, (0x1E8480 & 0xFFFF)
/* DAB0 8000CEB0 3C03002A */  lui        $v1, (0x2AB980 >> 16)
/* DAB4 8000CEB4 3463B980 */  ori        $v1, $v1, (0x2AB980 & 0xFFFF)
.L8000CEB8:
/* DAB8 8000CEB8 080033B4 */  j          .L8000CED0
/* DABC 8000CEBC 00601021 */   addu      $v0, $v1, $zero
.L8000CEC0:
/* DAC0 8000CEC0 24040048 */  addiu      $a0, $zero, 0x48
/* DAC4 8000CEC4 00602821 */  addu       $a1, $v1, $zero
/* DAC8 8000CEC8 0C00333D */  jal        func_8000CCF4
/* DACC 8000CECC 01003021 */   addu      $a2, $t0, $zero
.L8000CED0:
/* DAD0 8000CED0 8FBF0010 */  lw         $ra, 0x10($sp)
/* DAD4 8000CED4 03E00008 */  jr         $ra
/* DAD8 8000CED8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000CEDC
/* DADC 8000CEDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DAE0 8000CEE0 AFBF0010 */  sw         $ra, 0x10($sp)
/* DAE4 8000CEE4 00801821 */  addu       $v1, $a0, $zero
/* DAE8 8000CEE8 00A04021 */  addu       $t0, $a1, $zero
/* DAEC 8000CEEC 24020003 */  addiu      $v0, $zero, 0x3
/* DAF0 8000CEF0 1462000A */  bne        $v1, $v0, .L8000CF1C
/* DAF4 8000CEF4 00C03821 */   addu      $a3, $a2, $zero
/* DAF8 8000CEF8 3C02800B */  lui        $v0, %hi(D_800ABA90)
/* DAFC 8000CEFC 8C42BA90 */  lw         $v0, %lo(D_800ABA90)($v0)
/* DB00 8000CF00 3C030026 */  lui        $v1, (0x2625A0 >> 16)
/* DB04 8000CF04 10400003 */  beqz       $v0, .L8000CF14
/* DB08 8000CF08 346325A0 */   ori       $v1, $v1, (0x2625A0 & 0xFFFF)
/* DB0C 8000CF0C 3C030033 */  lui        $v1, (0x33E140 >> 16)
/* DB10 8000CF10 3463E140 */  ori        $v1, $v1, (0x33E140 & 0xFFFF)
.L8000CF14:
/* DB14 8000CF14 080033CB */  j          .L8000CF2C
/* DB18 8000CF18 00601021 */   addu      $v0, $v1, $zero
.L8000CF1C:
/* DB1C 8000CF1C 24040049 */  addiu      $a0, $zero, 0x49
/* DB20 8000CF20 00602821 */  addu       $a1, $v1, $zero
/* DB24 8000CF24 0C00333D */  jal        func_8000CCF4
/* DB28 8000CF28 01003021 */   addu      $a2, $t0, $zero
.L8000CF2C:
/* DB2C 8000CF2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* DB30 8000CF30 03E00008 */  jr         $ra
/* DB34 8000CF34 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000CF38
/* DB38 8000CF38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DB3C 8000CF3C AFBF0010 */  sw         $ra, 0x10($sp)
/* DB40 8000CF40 00801821 */  addu       $v1, $a0, $zero
/* DB44 8000CF44 00A04021 */  addu       $t0, $a1, $zero
/* DB48 8000CF48 24020003 */  addiu      $v0, $zero, 0x3
/* DB4C 8000CF4C 10620007 */  beq        $v1, $v0, .L8000CF6C
/* DB50 8000CF50 00C03821 */   addu      $a3, $a2, $zero
/* DB54 8000CF54 2404004A */  addiu      $a0, $zero, 0x4A
/* DB58 8000CF58 00602821 */  addu       $a1, $v1, $zero
/* DB5C 8000CF5C 0C00333D */  jal        func_8000CCF4
/* DB60 8000CF60 01003021 */   addu      $a2, $t0, $zero
/* DB64 8000CF64 080033DD */  j          .L8000CF74
/* DB68 8000CF68 00000000 */   nop
.L8000CF6C:
/* DB6C 8000CF6C 3C020063 */  lui        $v0, (0x632EA0 >> 16)
/* DB70 8000CF70 34422EA0 */  ori        $v0, $v0, (0x632EA0 & 0xFFFF)
.L8000CF74:
/* DB74 8000CF74 8FBF0010 */  lw         $ra, 0x10($sp)
/* DB78 8000CF78 03E00008 */  jr         $ra
/* DB7C 8000CF7C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000CF80
/* DB80 8000CF80 27BDFF88 */  addiu      $sp, $sp, -0x78
/* DB84 8000CF84 AFB7006C */  sw         $s7, 0x6C($sp)
/* DB88 8000CF88 8FB70088 */  lw         $s7, 0x88($sp)
/* DB8C 8000CF8C AFBE0070 */  sw         $fp, 0x70($sp)
/* DB90 8000CF90 8FBE008C */  lw         $fp, 0x8C($sp)
/* DB94 8000CF94 AFB50064 */  sw         $s5, 0x64($sp)
/* DB98 8000CF98 00A0A821 */  addu       $s5, $a1, $zero
/* DB9C 8000CF9C AFB40060 */  sw         $s4, 0x60($sp)
/* DBA0 8000CFA0 00C0A021 */  addu       $s4, $a2, $zero
/* DBA4 8000CFA4 AFB60068 */  sw         $s6, 0x68($sp)
/* DBA8 8000CFA8 00E0B021 */  addu       $s6, $a3, $zero
/* DBAC 8000CFAC 2C820005 */  sltiu      $v0, $a0, 0x5
/* DBB0 8000CFB0 AFBF0074 */  sw         $ra, 0x74($sp)
/* DBB4 8000CFB4 AFB3005C */  sw         $s3, 0x5C($sp)
/* DBB8 8000CFB8 AFB20058 */  sw         $s2, 0x58($sp)
/* DBBC 8000CFBC AFB10054 */  sw         $s1, 0x54($sp)
/* DBC0 8000CFC0 10400074 */  beqz       $v0, L8000D194
/* DBC4 8000CFC4 AFB00050 */   sw        $s0, 0x50($sp)
/* DBC8 8000CFC8 00041080 */  sll        $v0, $a0, 2
/* DBCC 8000CFCC 3C01800D */  lui        $at, %hi(jtbl_800CD218_main)
/* DBD0 8000CFD0 00220821 */  addu       $at, $at, $v0
/* DBD4 8000CFD4 8C22D218 */  lw         $v0, %lo(jtbl_800CD218_main)($at)
/* DBD8 8000CFD8 00400008 */  jr         $v0
/* DBDC 8000CFDC 00000000 */   nop
glabel L8000CFE0
/* DBE0 8000CFE0 3C060718 */  lui        $a2, (0x71818FF >> 16)
/* DBE4 8000CFE4 34C618FF */  ori        $a2, $a2, (0x71818FF & 0xFFFF)
/* DBE8 8000CFE8 3C021C40 */  lui        $v0, (0x1C4040FF >> 16)
/* DBEC 8000CFEC 3C05800D */  lui        $a1, %hi(D_800D07E0)
/* DBF0 8000CFF0 84A507E0 */  lh         $a1, %lo(D_800D07E0)($a1)
/* DBF4 8000CFF4 344240FF */  ori        $v0, $v0, (0x1C4040FF & 0xFFFF)
/* DBF8 8000CFF8 3C033070 */  lui        $v1, (0x307070FF >> 16)
/* DBFC 8000CFFC AFA60014 */  sw         $a2, 0x14($sp)
/* DC00 8000D000 3C06800D */  lui        $a2, %hi(D_800D07E2)
/* DC04 8000D004 84C607E2 */  lh         $a2, %lo(D_800D07E2)($a2)
/* DC08 8000D008 3C07800D */  lui        $a3, %hi(D_800D07E4)
/* DC0C 8000D00C 84E707E4 */  lh         $a3, %lo(D_800D07E4)($a3)
/* DC10 8000D010 3C13800D */  lui        $s3, %hi(D_800D07E6)
/* DC14 8000D014 867307E6 */  lh         $s3, %lo(D_800D07E6)($s3)
/* DC18 8000D018 346370FF */  ori        $v1, $v1, (0x307070FF & 0xFFFF)
/* DC1C 8000D01C 02A02021 */  addu       $a0, $s5, $zero
/* DC20 8000D020 AFA20018 */  sw         $v0, 0x18($sp)
/* DC24 8000D024 AFA3001C */  sw         $v1, 0x1C($sp)
/* DC28 8000D028 AFA20020 */  sw         $v0, 0x20($sp)
/* DC2C 8000D02C 00A08021 */  addu       $s0, $a1, $zero
/* DC30 8000D030 00E08821 */  addu       $s1, $a3, $zero
/* DC34 8000D034 00C09021 */  addu       $s2, $a2, $zero
/* DC38 8000D038 0C0018E7 */  jal        func_8000639C
/* DC3C 8000D03C AFB30010 */   sw        $s3, 0x10($sp)
/* DC40 8000D040 3C03F6C6 */  lui        $v1, (0xF6C68400 >> 16)
/* DC44 8000D044 34638400 */  ori        $v1, $v1, (0xF6C68400 & 0xFFFF)
/* DC48 8000D048 328200FF */  andi       $v0, $s4, 0xFF
/* DC4C 8000D04C 0043A025 */  or         $s4, $v0, $v1
/* DC50 8000D050 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* DC54 8000D054 02A02021 */  addu       $a0, $s5, $zero
/* DC58 8000D058 26100050 */  addiu      $s0, $s0, 0x50
/* DC5C 8000D05C 2631FFB0 */  addiu      $s1, $s1, -0x50
/* DC60 8000D060 26420026 */  addiu      $v0, $s2, 0x26
/* DC64 8000D064 26520044 */  addiu      $s2, $s2, 0x44
/* DC68 8000D068 A7A2002A */  sh         $v0, 0x2A($sp)
/* DC6C 8000D06C 24020003 */  addiu      $v0, $zero, 0x3
/* DC70 8000D070 A7B00028 */  sh         $s0, 0x28($sp)
/* DC74 8000D074 A7B1002C */  sh         $s1, 0x2C($sp)
/* DC78 8000D078 A7B2002E */  sh         $s2, 0x2E($sp)
/* DC7C 8000D07C AFA20010 */  sw         $v0, 0x10($sp)
/* DC80 8000D080 AFB40014 */  sw         $s4, 0x14($sp)
/* DC84 8000D084 AFB60018 */  sw         $s6, 0x18($sp)
/* DC88 8000D088 97A30028 */  lhu        $v1, 0x28($sp)
/* DC8C 8000D08C 97A2002C */  lhu        $v0, 0x2C($sp)
/* DC90 8000D090 24050001 */  addiu      $a1, $zero, 0x1
/* DC94 8000D094 97A6002A */  lhu        $a2, 0x2A($sp)
/* DC98 8000D098 3C10FFFF */  lui        $s0, (0xFFFF0000 >> 16)
/* DC9C 8000D09C 00031C00 */  sll        $v1, $v1, 16
/* DCA0 8000D0A0 00021400 */  sll        $v0, $v0, 16
/* DCA4 8000D0A4 00E23825 */  or         $a3, $a3, $v0
/* DCA8 8000D0A8 97A2002E */  lhu        $v0, 0x2E($sp)
/* DCAC 8000D0AC 00F03824 */  and        $a3, $a3, $s0
/* DCB0 8000D0B0 00663025 */  or         $a2, $v1, $a2
/* DCB4 8000D0B4 0C0055AE */  jal        func_800156B8
/* DCB8 8000D0B8 00E23825 */   or        $a3, $a3, $v0
/* DCBC 8000D0BC 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* DCC0 8000D0C0 97A2002A */  lhu        $v0, 0x2A($sp)
/* DCC4 8000D0C4 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* DCC8 8000D0C8 2673FFE3 */  addiu      $s3, $s3, -0x1D
/* DCCC 8000D0CC 02A02021 */  addu       $a0, $s5, $zero
/* DCD0 8000D0D0 A7B3002E */  sh         $s3, 0x2E($sp)
/* DCD4 8000D0D4 24420027 */  addiu      $v0, $v0, 0x27
/* DCD8 8000D0D8 A7A2002A */  sh         $v0, 0x2A($sp)
/* DCDC 8000D0DC 24020004 */  addiu      $v0, $zero, 0x4
/* DCE0 8000D0E0 AFA20010 */  sw         $v0, 0x10($sp)
/* DCE4 8000D0E4 AFB40014 */  sw         $s4, 0x14($sp)
/* DCE8 8000D0E8 AFB70018 */  sw         $s7, 0x18($sp)
/* DCEC 8000D0EC 97A30028 */  lhu        $v1, 0x28($sp)
/* DCF0 8000D0F0 24050001 */  addiu      $a1, $zero, 0x1
/* DCF4 8000D0F4 97A2002C */  lhu        $v0, 0x2C($sp)
/* DCF8 8000D0F8 00031C00 */  sll        $v1, $v1, 16
/* DCFC 8000D0FC 00C33025 */  or         $a2, $a2, $v1
/* DD00 8000D100 00D03024 */  and        $a2, $a2, $s0
/* DD04 8000D104 00021400 */  sll        $v0, $v0, 16
/* DD08 8000D108 00E23825 */  or         $a3, $a3, $v0
/* DD0C 8000D10C 97A2002A */  lhu        $v0, 0x2A($sp)
/* DD10 8000D110 97A3002E */  lhu        $v1, 0x2E($sp)
/* DD14 8000D114 00F03824 */  and        $a3, $a3, $s0
/* DD18 8000D118 00C23025 */  or         $a2, $a2, $v0
/* DD1C 8000D11C 0C0055AE */  jal        func_800156B8
/* DD20 8000D120 00E33825 */   or        $a3, $a3, $v1
/* DD24 8000D124 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* DD28 8000D128 30E7FFFF */  andi       $a3, $a3, 0xFFFF
/* DD2C 8000D12C 24020005 */  addiu      $v0, $zero, 0x5
/* DD30 8000D130 AFA20010 */  sw         $v0, 0x10($sp)
/* DD34 8000D134 AFB40014 */  sw         $s4, 0x14($sp)
/* DD38 8000D138 AFBE0018 */  sw         $fp, 0x18($sp)
/* DD3C 8000D13C 97A30028 */  lhu        $v1, 0x28($sp)
/* DD40 8000D140 02A02021 */  addu       $a0, $s5, $zero
/* DD44 8000D144 24050001 */  addiu      $a1, $zero, 0x1
/* DD48 8000D148 97A2002C */  lhu        $v0, 0x2C($sp)
/* DD4C 8000D14C 00031C00 */  sll        $v1, $v1, 16
/* DD50 8000D150 00C33025 */  or         $a2, $a2, $v1
/* DD54 8000D154 00D03024 */  and        $a2, $a2, $s0
/* DD58 8000D158 00021400 */  sll        $v0, $v0, 16
/* DD5C 8000D15C 00E23825 */  or         $a3, $a3, $v0
/* DD60 8000D160 97A2002A */  lhu        $v0, 0x2A($sp)
/* DD64 8000D164 97A3002E */  lhu        $v1, 0x2E($sp)
/* DD68 8000D168 00F03824 */  and        $a3, $a3, $s0
/* DD6C 8000D16C 00C23025 */  or         $a2, $a2, $v0
/* DD70 8000D170 0C0055AE */  jal        func_800156B8
/* DD74 8000D174 00E33825 */   or        $a3, $a3, $v1
/* DD78 8000D178 08003466 */  j          .L8000D198
/* DD7C 8000D17C 00001021 */   addu      $v0, $zero, $zero
glabel L8000D180
/* DD80 8000D180 3C02007B */  lui        $v0, (0x7B98A0 >> 16)
/* DD84 8000D184 08003466 */  j          .L8000D198
/* DD88 8000D188 344298A0 */   ori       $v0, $v0, (0x7B98A0 & 0xFFFF)
glabel L8000D18C
/* DD8C 8000D18C 08003466 */  j          .L8000D198
/* DD90 8000D190 24020072 */   addiu     $v0, $zero, 0x72
glabel L8000D194
/* DD94 8000D194 00001021 */  addu       $v0, $zero, $zero
.L8000D198:
/* DD98 8000D198 8FBF0074 */  lw         $ra, 0x74($sp)
/* DD9C 8000D19C 8FBE0070 */  lw         $fp, 0x70($sp)
/* DDA0 8000D1A0 8FB7006C */  lw         $s7, 0x6C($sp)
/* DDA4 8000D1A4 8FB60068 */  lw         $s6, 0x68($sp)
/* DDA8 8000D1A8 8FB50064 */  lw         $s5, 0x64($sp)
/* DDAC 8000D1AC 8FB40060 */  lw         $s4, 0x60($sp)
/* DDB0 8000D1B0 8FB3005C */  lw         $s3, 0x5C($sp)
/* DDB4 8000D1B4 8FB20058 */  lw         $s2, 0x58($sp)
/* DDB8 8000D1B8 8FB10054 */  lw         $s1, 0x54($sp)
/* DDBC 8000D1BC 8FB00050 */  lw         $s0, 0x50($sp)
/* DDC0 8000D1C0 03E00008 */  jr         $ra
/* DDC4 8000D1C4 27BD0078 */   addiu     $sp, $sp, 0x78

glabel L8000D1C8
/* DDC8 8000D1C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DDCC 8000D1CC 3C02800D */  lui        $v0, %hi(D_800D0120)
/* DDD0 8000D1D0 24420120 */  addiu      $v0, $v0, %lo(D_800D0120)
/* DDD4 8000D1D4 AFA20010 */  sw         $v0, 0x10($sp)
/* DDD8 8000D1D8 3C02800D */  lui        $v0, %hi(D_800D015C)
/* DDDC 8000D1DC 2442015C */  addiu      $v0, $v0, %lo(D_800D015C)
/* DDE0 8000D1E0 3C07800D */  lui        $a3, %hi(D_800D0110)
/* DDE4 8000D1E4 24E70110 */  addiu      $a3, $a3, %lo(D_800D0110)
/* DDE8 8000D1E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* DDEC 8000D1EC 0C0033E0 */  jal        func_8000CF80
/* DDF0 8000D1F0 AFA20014 */   sw        $v0, 0x14($sp)
/* DDF4 8000D1F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* DDF8 8000D1F8 03E00008 */  jr         $ra
/* DDFC 8000D1FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000D200
/* DE00 8000D200 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DE04 8000D204 3C02800D */  lui        $v0, %hi(D_800D0210)
/* DE08 8000D208 24420210 */  addiu      $v0, $v0, %lo(D_800D0210)
/* DE0C 8000D20C AFA20010 */  sw         $v0, 0x10($sp)
/* DE10 8000D210 3C02800D */  lui        $v0, %hi(D_800D0250)
/* DE14 8000D214 24420250 */  addiu      $v0, $v0, %lo(D_800D0250)
/* DE18 8000D218 3C07800D */  lui        $a3, %hi(D_800D01F8)
/* DE1C 8000D21C 24E701F8 */  addiu      $a3, $a3, %lo(D_800D01F8)
/* DE20 8000D220 AFBF0018 */  sw         $ra, 0x18($sp)
/* DE24 8000D224 0C0033E0 */  jal        func_8000CF80
/* DE28 8000D228 AFA20014 */   sw        $v0, 0x14($sp)
/* DE2C 8000D22C 8FBF0018 */  lw         $ra, 0x18($sp)
/* DE30 8000D230 03E00008 */  jr         $ra
/* DE34 8000D234 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000D238
/* DE38 8000D238 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DE3C 8000D23C 3C02800D */  lui        $v0, %hi(D_800D02FC)
/* DE40 8000D240 244202FC */  addiu      $v0, $v0, %lo(D_800D02FC)
/* DE44 8000D244 AFA20010 */  sw         $v0, 0x10($sp)
/* DE48 8000D248 3C02800D */  lui        $v0, %hi(D_800D0330)
/* DE4C 8000D24C 24420330 */  addiu      $v0, $v0, %lo(D_800D0330)
/* DE50 8000D250 3C07800D */  lui        $a3, %hi(D_800D02E8)
/* DE54 8000D254 24E702E8 */  addiu      $a3, $a3, %lo(D_800D02E8)
/* DE58 8000D258 AFBF0018 */  sw         $ra, 0x18($sp)
/* DE5C 8000D25C 0C0033E0 */  jal        func_8000CF80
/* DE60 8000D260 AFA20014 */   sw        $v0, 0x14($sp)
/* DE64 8000D264 8FBF0018 */  lw         $ra, 0x18($sp)
/* DE68 8000D268 03E00008 */  jr         $ra
/* DE6C 8000D26C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000D270
/* DE70 8000D270 03E00008 */  jr         $ra
/* DE74 8000D274 00000000 */   nop

glabel func_8000D278
/* DE78 8000D278 3C02800B */  lui        $v0, %hi(D_800ABA90)
/* DE7C 8000D27C 8C42BA90 */  lw         $v0, %lo(D_800ABA90)($v0)
/* DE80 8000D280 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* DE84 8000D284 AFBF0054 */  sw         $ra, 0x54($sp)
/* DE88 8000D288 AFBE0050 */  sw         $fp, 0x50($sp)
/* DE8C 8000D28C AFB7004C */  sw         $s7, 0x4C($sp)
/* DE90 8000D290 AFB60048 */  sw         $s6, 0x48($sp)
/* DE94 8000D294 AFB50044 */  sw         $s5, 0x44($sp)
/* DE98 8000D298 AFB40040 */  sw         $s4, 0x40($sp)
/* DE9C 8000D29C AFB3003C */  sw         $s3, 0x3C($sp)
/* DEA0 8000D2A0 AFB20038 */  sw         $s2, 0x38($sp)
/* DEA4 8000D2A4 AFB10034 */  sw         $s1, 0x34($sp)
/* DEA8 8000D2A8 AFB00030 */  sw         $s0, 0x30($sp)
/* DEAC 8000D2AC 2C420001 */  sltiu      $v0, $v0, 0x1
/* DEB0 8000D2B0 00021023 */  negu       $v0, $v0
/* DEB4 8000D2B4 0C01B57C */  jal        func_8006D5F0
/* DEB8 8000D2B8 30560003 */   andi      $s6, $v0, 0x3
/* DEBC 8000D2BC 3C03800D */  lui        $v1, %hi(D_800CD22C)
/* DEC0 8000D2C0 2463D22C */  addiu      $v1, $v1, %lo(D_800CD22C)
/* DEC4 8000D2C4 00161080 */  sll        $v0, $s6, 2
/* DEC8 8000D2C8 00438021 */  addu       $s0, $v0, $v1
/* DECC 8000D2CC 8E020000 */  lw         $v0, 0x0($s0)
/* DED0 8000D2D0 0000F021 */  addu       $fp, $zero, $zero
/* DED4 8000D2D4 104000C2 */  beqz       $v0, .L8000D5E0
/* DED8 8000D2D8 AFA0001C */   sw        $zero, 0x1C($sp)
/* DEDC 8000D2DC 02009821 */  addu       $s3, $s0, $zero
.L8000D2E0:
/* DEE0 8000D2E0 0C024034 */  jal        func_800900D0
/* DEE4 8000D2E4 00000000 */   nop
/* DEE8 8000D2E8 00022180 */  sll        $a0, $v0, 6
/* DEEC 8000D2EC 00033682 */  srl        $a2, $v1, 26
/* DEF0 8000D2F0 00862025 */  or         $a0, $a0, $a2
/* DEF4 8000D2F4 00032980 */  sll        $a1, $v1, 6
/* DEF8 8000D2F8 24060000 */  addiu      $a2, $zero, 0x0
/* DEFC 8000D2FC 0C000DA0 */  jal        func_80003680
/* DF00 8000D300 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* DF04 8000D304 3C04800B */  lui        $a0, %hi(D_800ABA90)
/* DF08 8000D308 8C84BA90 */  lw         $a0, %lo(D_800ABA90)($a0)
/* DF0C 8000D30C AFA20020 */  sw         $v0, 0x20($sp)
/* DF10 8000D310 AFA30024 */  sw         $v1, 0x24($sp)
/* DF14 8000D314 3AC20003 */  xori       $v0, $s6, 0x3
/* DF18 8000D318 2C420001 */  sltiu      $v0, $v0, 0x1
/* DF1C 8000D31C 0004202B */  sltu       $a0, $zero, $a0
/* DF20 8000D320 00822024 */  and        $a0, $a0, $v0
/* DF24 8000D324 10800004 */  beqz       $a0, .L8000D338
/* DF28 8000D328 00002021 */   addu      $a0, $zero, $zero
/* DF2C 8000D32C 26730004 */  addiu      $s3, $s3, 0x4
/* DF30 8000D330 0800356E */  j          .L8000D5B8
/* DF34 8000D334 26D60001 */   addiu     $s6, $s6, 0x1
.L8000D338:
/* DF38 8000D338 00002821 */  addu       $a1, $zero, $zero
/* DF3C 8000D33C 8E700000 */  lw         $s0, 0x0($s3)
/* DF40 8000D340 00003021 */  addu       $a2, $zero, $zero
/* DF44 8000D344 0200F809 */  jalr       $s0
/* DF48 8000D348 27DE0001 */   addiu     $fp, $fp, 0x1
/* DF4C 8000D34C 24040004 */  addiu      $a0, $zero, 0x4
/* DF50 8000D350 00002821 */  addu       $a1, $zero, $zero
/* DF54 8000D354 0200F809 */  jalr       $s0
/* DF58 8000D358 00003021 */   addu      $a2, $zero, $zero
/* DF5C 8000D35C 0C0031E1 */  jal        func_8000C784
/* DF60 8000D360 00402021 */   addu      $a0, $v0, $zero
/* DF64 8000D364 0C024034 */  jal        func_800900D0
/* DF68 8000D368 00000000 */   nop
/* DF6C 8000D36C 00022180 */  sll        $a0, $v0, 6
/* DF70 8000D370 00033682 */  srl        $a2, $v1, 26
/* DF74 8000D374 00862025 */  or         $a0, $a0, $a2
/* DF78 8000D378 00032980 */  sll        $a1, $v1, 6
/* DF7C 8000D37C 24060000 */  addiu      $a2, $zero, 0x0
/* DF80 8000D380 0C000DA0 */  jal        func_80003680
/* DF84 8000D384 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* DF88 8000D388 00403021 */  addu       $a2, $v0, $zero
/* DF8C 8000D38C 24080001 */  addiu      $t0, $zero, 0x1
/* DF90 8000D390 17C8000E */  bne        $fp, $t0, .L8000D3CC
/* DF94 8000D394 00603821 */   addu      $a3, $v1, $zero
/* DF98 8000D398 2402FFFF */  addiu      $v0, $zero, -0x1
/* DF9C 8000D39C 3C03FFFC */  lui        $v1, (0xFFFC1BE8 >> 16)
/* DFA0 8000D3A0 34631BE8 */  ori        $v1, $v1, (0xFFFC1BE8 & 0xFFFF)
/* DFA4 8000D3A4 00E34821 */  addu       $t1, $a3, $v1
/* DFA8 8000D3A8 0123202B */  sltu       $a0, $t1, $v1
/* DFAC 8000D3AC 00C24021 */  addu       $t0, $a2, $v0
/* DFB0 8000D3B0 01044021 */  addu       $t0, $t0, $a0
/* DFB4 8000D3B4 AFA80028 */  sw         $t0, 0x28($sp)
/* DFB8 8000D3B8 AFA9002C */  sw         $t1, 0x2C($sp)
/* DFBC 8000D3BC 080034F6 */  j          .L8000D3D8
/* DFC0 8000D3C0 0260B821 */   addu      $s7, $s3, $zero
.L8000D3C4:
/* DFC4 8000D3C4 08003567 */  j          .L8000D59C
/* DFC8 8000D3C8 AFA9001C */   sw        $t1, 0x1C($sp)
.L8000D3CC:
/* DFCC 8000D3CC AFA60028 */  sw         $a2, 0x28($sp)
/* DFD0 8000D3D0 AFA7002C */  sw         $a3, 0x2C($sp)
/* DFD4 8000D3D4 0260B821 */  addu       $s7, $s3, $zero
.L8000D3D8:
/* DFD8 8000D3D8 0C024034 */  jal        func_800900D0
/* DFDC 8000D3DC 2410FFFF */   addiu     $s0, $zero, -0x1
/* DFE0 8000D3E0 00022180 */  sll        $a0, $v0, 6
/* DFE4 8000D3E4 00033682 */  srl        $a2, $v1, 26
/* DFE8 8000D3E8 00862025 */  or         $a0, $a0, $a2
/* DFEC 8000D3EC 00032980 */  sll        $a1, $v1, 6
/* DFF0 8000D3F0 24060000 */  addiu      $a2, $zero, 0x0
/* DFF4 8000D3F4 0C000DA0 */  jal        func_80003680
/* DFF8 8000D3F8 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* DFFC 8000D3FC 0040A021 */  addu       $s4, $v0, $zero
/* E000 8000D400 0060A821 */  addu       $s5, $v1, $zero
/* E004 8000D404 24020003 */  addiu      $v0, $zero, 0x3
/* E008 8000D408 16C20013 */  bne        $s6, $v0, .L8000D458
/* E00C 8000D40C 00000000 */   nop
/* E010 8000D410 3C02800B */  lui        $v0, %hi(D_800ABA90)
/* E014 8000D414 8C42BA90 */  lw         $v0, %lo(D_800ABA90)($v0)
/* E018 8000D418 1440000F */  bnez       $v0, .L8000D458
/* E01C 8000D41C 00000000 */   nop
/* E020 8000D420 8FA80020 */  lw         $t0, 0x20($sp)
/* E024 8000D424 8FA90024 */  lw         $t1, 0x24($sp)
/* E028 8000D428 02A9102B */  sltu       $v0, $s5, $t1
/* E02C 8000D42C 02A92823 */  subu       $a1, $s5, $t1
/* E030 8000D430 02882023 */  subu       $a0, $s4, $t0
/* E034 8000D434 00822023 */  subu       $a0, $a0, $v0
/* E038 8000D438 14800007 */  bnez       $a0, .L8000D458
/* E03C 8000D43C 00000000 */   nop
/* E040 8000D440 1480000C */  bnez       $a0, .L8000D474
/* E044 8000D444 3C020016 */   lui       $v0, (0x16E360 >> 16)
/* E048 8000D448 3442E360 */  ori        $v0, $v0, (0x16E360 & 0xFFFF)
/* E04C 8000D44C 0045102B */  sltu       $v0, $v0, $a1
/* E050 8000D450 10400008 */  beqz       $v0, .L8000D474
/* E054 8000D454 00000000 */   nop
.L8000D458:
/* E058 8000D458 0C001123 */  jal        func_8000448C
/* E05C 8000D45C 00000000 */   nop
/* E060 8000D460 10400004 */  beqz       $v0, .L8000D474
/* E064 8000D464 00000000 */   nop
/* E068 8000D468 8C420000 */  lw         $v0, 0x0($v0)
/* E06C 8000D46C 1040FFD5 */  beqz       $v0, .L8000D3C4
/* E070 8000D470 24090001 */   addiu     $t1, $zero, 0x1
.L8000D474:
/* E074 8000D474 0C00111C */  jal        func_80004470
/* E078 8000D478 00000000 */   nop
/* E07C 8000D47C 8FA80028 */  lw         $t0, 0x28($sp)
/* E080 8000D480 8FA9002C */  lw         $t1, 0x2C($sp)
/* E084 8000D484 24060000 */  addiu      $a2, $zero, 0x0
/* E088 8000D488 240703E8 */  addiu      $a3, $zero, 0x3E8
/* E08C 8000D48C 02A9102B */  sltu       $v0, $s5, $t1
/* E090 8000D490 02A92823 */  subu       $a1, $s5, $t1
/* E094 8000D494 02882023 */  subu       $a0, $s4, $t0
/* E098 8000D498 0C000DA0 */  jal        func_80003680
/* E09C 8000D49C 00822023 */   subu      $a0, $a0, $v0
/* E0A0 8000D4A0 2EC20003 */  sltiu      $v0, $s6, 0x3
/* E0A4 8000D4A4 10400002 */  beqz       $v0, .L8000D4B0
/* E0A8 8000D4A8 00609021 */   addu      $s2, $v1, $zero
/* E0AC 8000D4AC 001290C3 */  sra        $s2, $s2, 3
.L8000D4B0:
/* E0B0 8000D4B0 2A420100 */  slti       $v0, $s2, 0x100
/* E0B4 8000D4B4 10400002 */  beqz       $v0, .L8000D4C0
/* E0B8 8000D4B8 240300FF */   addiu     $v1, $zero, 0xFF
/* E0BC 8000D4BC 02401821 */  addu       $v1, $s2, $zero
.L8000D4C0:
/* E0C0 8000D4C0 00609021 */  addu       $s2, $v1, $zero
/* E0C4 8000D4C4 52120022 */  beql       $s0, $s2, .L8000D550
/* E0C8 8000D4C8 24040003 */   addiu     $a0, $zero, 0x3
/* E0CC 8000D4CC 0C0017F0 */  jal        func_80005FC0
/* E0D0 8000D4D0 00128600 */   sll       $s0, $s2, 24
/* E0D4 8000D4D4 00408821 */  addu       $s1, $v0, $zero
/* E0D8 8000D4D8 02202021 */  addu       $a0, $s1, $zero
/* E0DC 8000D4DC 00121400 */  sll        $v0, $s2, 16
/* E0E0 8000D4E0 02028025 */  or         $s0, $s0, $v0
/* E0E4 8000D4E4 00121200 */  sll        $v0, $s2, 8
/* E0E8 8000D4E8 02028025 */  or         $s0, $s0, $v0
/* E0EC 8000D4EC 0C005689 */  jal        func_80015A24
/* E0F0 8000D4F0 02128025 */   or        $s0, $s0, $s2
/* E0F4 8000D4F4 24040002 */  addiu      $a0, $zero, 0x2
/* E0F8 8000D4F8 8EE20000 */  lw         $v0, 0x0($s7)
/* E0FC 8000D4FC 02202821 */  addu       $a1, $s1, $zero
/* E100 8000D500 0040F809 */  jalr       $v0
/* E104 8000D504 02003021 */   addu      $a2, $s0, $zero
/* E108 8000D508 0C005735 */  jal        func_80015CD4
/* E10C 8000D50C 02202021 */   addu      $a0, $s1, $zero
/* E110 8000D510 02202021 */  addu       $a0, $s1, $zero
/* E114 8000D514 24050001 */  addiu      $a1, $zero, 0x1
/* E118 8000D518 24060001 */  addiu      $a2, $zero, 0x1
/* E11C 8000D51C 3C07800A */  lui        $a3, %hi(D_8009C080)
/* E120 8000D520 24E7C080 */  addiu      $a3, $a3, %lo(D_8009C080)
/* E124 8000D524 3C02800D */  lui        $v0, %hi(D_800CB410)
/* E128 8000D528 2442B410 */  addiu      $v0, $v0, %lo(D_800CB410)
/* E12C 8000D52C 24090001 */  addiu      $t1, $zero, 0x1
/* E130 8000D530 AFA20010 */  sw         $v0, 0x10($sp)
/* E134 8000D534 0C001821 */  jal        func_80006084
/* E138 8000D538 AFA90014 */   sw        $t1, 0x14($sp)
/* E13C 8000D53C 0C0017FB */  jal        func_80005FEC
/* E140 8000D540 02202021 */   addu      $a0, $s1, $zero
/* E144 8000D544 0C000BF8 */  jal        osYieldThread
/* E148 8000D548 00000000 */   nop
/* E14C 8000D54C 24040003 */  addiu      $a0, $zero, 0x3
.L8000D550:
/* E150 8000D550 8EE20000 */  lw         $v0, 0x0($s7)
/* E154 8000D554 00002821 */  addu       $a1, $zero, $zero
/* E158 8000D558 0040F809 */  jalr       $v0
/* E15C 8000D55C 00003021 */   addu      $a2, $zero, $zero
/* E160 8000D560 8FA80020 */  lw         $t0, 0x20($sp)
/* E164 8000D564 8FA90024 */  lw         $t1, 0x24($sp)
/* E168 8000D568 00403821 */  addu       $a3, $v0, $zero
/* E16C 8000D56C 00003021 */  addu       $a2, $zero, $zero
/* E170 8000D570 02A9102B */  sltu       $v0, $s5, $t1
/* E174 8000D574 02A92823 */  subu       $a1, $s5, $t1
/* E178 8000D578 02882023 */  subu       $a0, $s4, $t0
/* E17C 8000D57C 00822023 */  subu       $a0, $a0, $v0
/* E180 8000D580 0086102B */  sltu       $v0, $a0, $a2
/* E184 8000D584 1440FF94 */  bnez       $v0, .L8000D3D8
/* E188 8000D588 00000000 */   nop
/* E18C 8000D58C 14C40003 */  bne        $a2, $a0, .L8000D59C
/* E190 8000D590 00A7102B */   sltu      $v0, $a1, $a3
/* E194 8000D594 1440FF90 */  bnez       $v0, .L8000D3D8
/* E198 8000D598 00000000 */   nop
.L8000D59C:
/* E19C 8000D59C 24040001 */  addiu      $a0, $zero, 0x1
/* E1A0 8000D5A0 00002821 */  addu       $a1, $zero, $zero
/* E1A4 8000D5A4 00003021 */  addu       $a2, $zero, $zero
/* E1A8 8000D5A8 8E620000 */  lw         $v0, 0x0($s3)
/* E1AC 8000D5AC 26730004 */  addiu      $s3, $s3, 0x4
/* E1B0 8000D5B0 0040F809 */  jalr       $v0
/* E1B4 8000D5B4 26D60001 */   addiu     $s6, $s6, 0x1
.L8000D5B8:
/* E1B8 8000D5B8 8E620000 */  lw         $v0, 0x0($s3)
/* E1BC 8000D5BC 10400008 */  beqz       $v0, .L8000D5E0
/* E1C0 8000D5C0 00000000 */   nop
/* E1C4 8000D5C4 8FA9001C */  lw         $t1, 0x1C($sp)
/* E1C8 8000D5C8 1120FF45 */  beqz       $t1, .L8000D2E0
/* E1CC 8000D5CC 00000000 */   nop
/* E1D0 8000D5D0 3C02800B */  lui        $v0, %hi(D_800ABA90)
/* E1D4 8000D5D4 8C42BA90 */  lw         $v0, %lo(D_800ABA90)($v0)
/* E1D8 8000D5D8 1040FF41 */  beqz       $v0, .L8000D2E0
/* E1DC 8000D5DC 00000000 */   nop
.L8000D5E0:
/* E1E0 8000D5E0 8FA8001C */  lw         $t0, 0x1C($sp)
/* E1E4 8000D5E4 24020014 */  addiu      $v0, $zero, 0x14
/* E1E8 8000D5E8 3C01803F */  lui        $at, %hi(D_803ED3C8)
/* E1EC 8000D5EC AC22D3C8 */  sw         $v0, %lo(D_803ED3C8)($at)
/* E1F0 8000D5F0 24020001 */  addiu      $v0, $zero, 0x1
/* E1F4 8000D5F4 3C01803F */  lui        $at, %hi(D_803ED3CC)
/* E1F8 8000D5F8 AC20D3CC */  sw         $zero, %lo(D_803ED3CC)($at)
/* E1FC 8000D5FC 3C01800B */  lui        $at, %hi(D_800ABA90)
/* E200 8000D600 AC22BA90 */  sw         $v0, %lo(D_800ABA90)($at)
/* E204 8000D604 11000002 */  beqz       $t0, .L8000D610
/* E208 8000D608 24030002 */   addiu     $v1, $zero, 0x2
/* E20C 8000D60C 24030001 */  addiu      $v1, $zero, 0x1
.L8000D610:
/* E210 8000D610 00601021 */  addu       $v0, $v1, $zero
/* E214 8000D614 8FBF0054 */  lw         $ra, 0x54($sp)
/* E218 8000D618 8FBE0050 */  lw         $fp, 0x50($sp)
/* E21C 8000D61C 8FB7004C */  lw         $s7, 0x4C($sp)
/* E220 8000D620 8FB60048 */  lw         $s6, 0x48($sp)
/* E224 8000D624 8FB50044 */  lw         $s5, 0x44($sp)
/* E228 8000D628 8FB40040 */  lw         $s4, 0x40($sp)
/* E22C 8000D62C 8FB3003C */  lw         $s3, 0x3C($sp)
/* E230 8000D630 8FB20038 */  lw         $s2, 0x38($sp)
/* E234 8000D634 8FB10034 */  lw         $s1, 0x34($sp)
/* E238 8000D638 8FB00030 */  lw         $s0, 0x30($sp)
/* E23C 8000D63C 03E00008 */  jr         $ra
/* E240 8000D640 27BD0058 */   addiu     $sp, $sp, 0x58
/* E244 8000D644 00000000 */  nop
/* E248 8000D648 00000000 */  nop
/* E24C 8000D64C 00000000 */  nop
