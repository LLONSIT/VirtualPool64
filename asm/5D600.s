.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8005CA00
/* 5D600 8005CA00 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 5D604 8005CA04 F7B40000 */  sdc1       $f20, 0x0($sp)
/* 5D608 8005CA08 3C01800C */  lui        $at, %hi(D_800C6708)
/* 5D60C 8005CA0C D4346708 */  ldc1       $f20, %lo(D_800C6708)($at)
/* 5D610 8005CA10 3C01800C */  lui        $at, %hi(D_800C66E8)
/* 5D614 8005CA14 D42666E8 */  ldc1       $f6, %lo(D_800C66E8)($at)
/* 5D618 8005CA18 F7B60008 */  sdc1       $f22, 0x8($sp)
/* 5D61C 8005CA1C 3C01800C */  lui        $at, %hi(D_800C6710)
/* 5D620 8005CA20 D4366710 */  ldc1       $f22, %lo(D_800C6710)($at)
/* 5D624 8005CA24 4626A481 */  sub.d      $f18, $f20, $f6
/* 5D628 8005CA28 3C01800C */  lui        $at, %hi(D_800C66F0)
/* 5D62C 8005CA2C D42466F0 */  ldc1       $f4, %lo(D_800C66F0)($at)
/* 5D630 8005CA30 3C01800C */  lui        $at, %hi(D_800C66F8)
/* 5D634 8005CA34 D42866F8 */  ldc1       $f8, %lo(D_800C66F8)($at)
/* 5D638 8005CA38 4624B401 */  sub.d      $f16, $f22, $f4
/* 5D63C 8005CA3C 3C01800C */  lui        $at, %hi(D_800C6718)
/* 5D640 8005CA40 D4226718 */  ldc1       $f2, %lo(D_800C6718)($at)
/* 5D644 8005CA44 3C01800C */  lui        $at, %hi(D_800C6700)
/* 5D648 8005CA48 D42A6700 */  ldc1       $f10, %lo(D_800C6700)($at)
/* 5D64C 8005CA4C 46224381 */  sub.d      $f14, $f8, $f2
/* 5D650 8005CA50 3C01800C */  lui        $at, %hi(D_800C6720)
/* 5D654 8005CA54 D4206720 */  ldc1       $f0, %lo(D_800C6720)($at)
/* 5D658 8005CA58 46205301 */  sub.d      $f12, $f10, $f0
/* 5D65C 8005CA5C 46283181 */  sub.d      $f6, $f6, $f8
/* 5D660 8005CA60 462A2101 */  sub.d      $f4, $f4, $f10
/* 5D664 8005CA64 46341081 */  sub.d      $f2, $f2, $f20
/* 5D668 8005CA68 46360001 */  sub.d      $f0, $f0, $f22
/* 5D66C 8005CA6C 3C01803F */  lui        $at, %hi(D_803EE5A0)
/* 5D670 8005CA70 F432E5A0 */  sdc1       $f18, %lo(D_803EE5A0)($at)
/* 5D674 8005CA74 3C01803F */  lui        $at, %hi(D_803EE5A8)
/* 5D678 8005CA78 F430E5A8 */  sdc1       $f16, %lo(D_803EE5A8)($at)
/* 5D67C 8005CA7C 3C01803F */  lui        $at, %hi(D_803EE5B0)
/* 5D680 8005CA80 F42EE5B0 */  sdc1       $f14, %lo(D_803EE5B0)($at)
/* 5D684 8005CA84 3C01803F */  lui        $at, %hi(D_803EE5B8)
/* 5D688 8005CA88 F42CE5B8 */  sdc1       $f12, %lo(D_803EE5B8)($at)
/* 5D68C 8005CA8C 3C01803F */  lui        $at, %hi(D_803EE5C0)
/* 5D690 8005CA90 F432E5C0 */  sdc1       $f18, %lo(D_803EE5C0)($at)
/* 5D694 8005CA94 3C01803F */  lui        $at, %hi(D_803EE5C8)
/* 5D698 8005CA98 F430E5C8 */  sdc1       $f16, %lo(D_803EE5C8)($at)
/* 5D69C 8005CA9C 3C01803F */  lui        $at, %hi(D_803EE5D0)
/* 5D6A0 8005CAA0 F42EE5D0 */  sdc1       $f14, %lo(D_803EE5D0)($at)
/* 5D6A4 8005CAA4 3C01803F */  lui        $at, %hi(D_803EE5D8)
/* 5D6A8 8005CAA8 F42CE5D8 */  sdc1       $f12, %lo(D_803EE5D8)($at)
/* 5D6AC 8005CAAC 3C01803F */  lui        $at, %hi(D_803EE5E0)
/* 5D6B0 8005CAB0 F426E5E0 */  sdc1       $f6, %lo(D_803EE5E0)($at)
/* 5D6B4 8005CAB4 3C01803F */  lui        $at, %hi(D_803EE5E8)
/* 5D6B8 8005CAB8 F424E5E8 */  sdc1       $f4, %lo(D_803EE5E8)($at)
/* 5D6BC 8005CABC 3C01803F */  lui        $at, %hi(D_803EE5F0)
/* 5D6C0 8005CAC0 F422E5F0 */  sdc1       $f2, %lo(D_803EE5F0)($at)
/* 5D6C4 8005CAC4 3C01803F */  lui        $at, %hi(D_803EE5F8)
/* 5D6C8 8005CAC8 F420E5F8 */  sdc1       $f0, %lo(D_803EE5F8)($at)
/* 5D6CC 8005CACC D7B60008 */  ldc1       $f22, 0x8($sp)
/* 5D6D0 8005CAD0 D7B40000 */  ldc1       $f20, 0x0($sp)
/* 5D6D4 8005CAD4 03E00008 */  jr         $ra
/* 5D6D8 8005CAD8 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8005CADC
/* 5D6DC 8005CADC 3C02800C */  lui        $v0, %hi(D_800C6760)
/* 5D6E0 8005CAE0 8C426760 */  lw         $v0, %lo(D_800C6760)($v0)
/* 5D6E4 8005CAE4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5D6E8 8005CAE8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5D6EC 8005CAEC AFB10014 */  sw         $s1, 0x14($sp)
/* 5D6F0 8005CAF0 AFB00010 */  sw         $s0, 0x10($sp)
/* 5D6F4 8005CAF4 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 5D6F8 8005CAF8 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 5D6FC 8005CAFC F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 5D700 8005CB00 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 5D704 8005CB04 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 5D708 8005CB08 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 5D70C 8005CB0C 10400004 */  beqz       $v0, .L8005CB20
/* 5D710 8005CB10 00008821 */   addu      $s1, $zero, $zero
/* 5D714 8005CB14 3C01800C */  lui        $at, %hi(D_800C6760)
/* 5D718 8005CB18 0C017280 */  jal        func_8005CA00
/* 5D71C 8005CB1C AC206760 */   sw        $zero, %lo(D_800C6760)($at)
.L8005CB20:
/* 5D720 8005CB20 3C10803F */  lui        $s0, %hi(D_803EE5A0)
/* 5D724 8005CB24 2610E5A0 */  addiu      $s0, $s0, %lo(D_803EE5A0)
.L8005CB28:
/* 5D728 8005CB28 0C022CF3 */  jal        func_8008B3CC
/* 5D72C 8005CB2C 02002021 */   addu      $a0, $s0, $zero
/* 5D730 8005CB30 26310001 */  addiu      $s1, $s1, 0x1
/* 5D734 8005CB34 2A220006 */  slti       $v0, $s1, 0x6
/* 5D738 8005CB38 1440FFFB */  bnez       $v0, .L8005CB28
/* 5D73C 8005CB3C 26100010 */   addiu     $s0, $s0, 0x10
/* 5D740 8005CB40 3C01802C */  lui        $at, %hi(D_802C6078)
/* 5D744 8005CB44 D4226078 */  ldc1       $f2, %lo(D_802C6078)($at)
/* 5D748 8005CB48 3C01800D */  lui        $at, %hi(D_800D4790)
/* 5D74C 8005CB4C D4264790 */  ldc1       $f6, %lo(D_800D4790)($at)
/* 5D750 8005CB50 46261182 */  mul.d      $f6, $f2, $f6
/* 5D754 8005CB54 3C01800D */  lui        $at, %hi(D_800D4798)
/* 5D758 8005CB58 D4204798 */  ldc1       $f0, %lo(D_800D4798)($at)
/* 5D75C 8005CB5C 46203183 */  div.d      $f6, $f6, $f0
/* 5D760 8005CB60 3C01802C */  lui        $at, %hi(D_802C6080)
/* 5D764 8005CB64 D4286080 */  ldc1       $f8, %lo(D_802C6080)($at)
/* 5D768 8005CB68 3C01800D */  lui        $at, %hi(D_800D47A0)
/* 5D76C 8005CB6C D42447A0 */  ldc1       $f4, %lo(D_800D47A0)($at)
/* 5D770 8005CB70 46244102 */  mul.d      $f4, $f8, $f4
/* 5D774 8005CB74 46261081 */  sub.d      $f2, $f2, $f6
/* 5D778 8005CB78 3C01800D */  lui        $at, %hi(D_800D47A8)
/* 5D77C 8005CB7C D43047A8 */  ldc1       $f16, %lo(D_800D47A8)($at)
/* 5D780 8005CB80 3C01800D */  lui        $at, %hi(D_800D47B0)
/* 5D784 8005CB84 D42047B0 */  ldc1       $f0, %lo(D_800D47B0)($at)
/* 5D788 8005CB88 46301400 */  add.d      $f16, $f2, $f16
/* 5D78C 8005CB8C 3C01800D */  lui        $at, %hi(D_800D47B8)
/* 5D790 8005CB90 D43247B8 */  ldc1       $f18, %lo(D_800D47B8)($at)
/* 5D794 8005CB94 46202103 */  div.d      $f4, $f4, $f0
/* 5D798 8005CB98 46321480 */  add.d      $f18, $f2, $f18
/* 5D79C 8005CB9C 3C01800D */  lui        $at, %hi(D_800D47C0)
/* 5D7A0 8005CBA0 D43847C0 */  ldc1       $f24, %lo(D_800D47C0)($at)
/* 5D7A4 8005CBA4 4622C601 */  sub.d      $f24, $f24, $f2
/* 5D7A8 8005CBA8 3C01800D */  lui        $at, %hi(D_800D47C8)
/* 5D7AC 8005CBAC D42C47C8 */  ldc1       $f12, %lo(D_800D47C8)($at)
/* 5D7B0 8005CBB0 3C01800D */  lui        $at, %hi(D_800D47D0)
/* 5D7B4 8005CBB4 D42A47D0 */  ldc1       $f10, %lo(D_800D47D0)($at)
/* 5D7B8 8005CBB8 46226301 */  sub.d      $f12, $f12, $f2
/* 5D7BC 8005CBBC 3C01800D */  lui        $at, %hi(D_800D47D8)
/* 5D7C0 8005CBC0 D43A47D8 */  ldc1       $f26, %lo(D_800D47D8)($at)
/* 5D7C4 8005CBC4 3C01800D */  lui        $at, %hi(D_800D47E0)
/* 5D7C8 8005CBC8 D43C47E0 */  ldc1       $f28, %lo(D_800D47E0)($at)
/* 5D7CC 8005CBCC 3C01800D */  lui        $at, %hi(D_800D47E8)
/* 5D7D0 8005CBD0 D43447E8 */  ldc1       $f20, %lo(D_800D47E8)($at)
/* 5D7D4 8005CBD4 4622D681 */  sub.d      $f26, $f26, $f2
/* 5D7D8 8005CBD8 3C01800D */  lui        $at, %hi(D_800D47F0)
/* 5D7DC 8005CBDC D43647F0 */  ldc1       $f22, %lo(D_800D47F0)($at)
/* 5D7E0 8005CBE0 3C01800D */  lui        $at, %hi(D_800D47F8)
/* 5D7E4 8005CBE4 D42E47F8 */  ldc1       $f14, %lo(D_800D47F8)($at)
/* 5D7E8 8005CBE8 3C01800D */  lui        $at, %hi(D_800D4800)
/* 5D7EC 8005CBEC 8C244800 */  lw         $a0, %lo(D_800D4800)($at)
/* 5D7F0 8005CBF0 8C254804 */  lw         $a1, %lo(D_800D4804)($at)
/* 5D7F4 8005CBF4 46341500 */  add.d      $f20, $f2, $f20
/* 5D7F8 8005CBF8 3C01800D */  lui        $at, %hi(D_800D4808)
/* 5D7FC 8005CBFC 8C224808 */  lw         $v0, %lo(D_800D4808)($at)
/* 5D800 8005CC00 8C23480C */  lw         $v1, %lo(D_800D480C)($at)
/* 5D804 8005CC04 3C01800D */  lui        $at, %hi(D_800D4810)
/* 5D808 8005CC08 D4204810 */  ldc1       $f0, %lo(D_800D4810)($at)
/* 5D80C 8005CC0C 3C01800D */  lui        $at, %hi(D_800D4818)
/* 5D810 8005CC10 D4264818 */  ldc1       $f6, %lo(D_800D4818)($at)
/* 5D814 8005CC14 46227381 */  sub.d      $f14, $f14, $f2
/* 5D818 8005CC18 4485F000 */  mtc1       $a1, $f30
/* 5D81C 8005CC1C 4484F800 */  mtc1       $a0, $f31
/* 5D820 8005CC20 3C01802B */  lui        $at, %hi(D_802AEB40)
/* 5D824 8005CC24 F422EB40 */  sdc1       $f2, %lo(D_802AEB40)($at)
/* 5D828 8005CC28 463E1080 */  add.d      $f2, $f2, $f30
/* 5D82C 8005CC2C 3C01800D */  lui        $at, %hi(D_800D4820)
/* 5D830 8005CC30 D43E4820 */  ldc1       $f30, %lo(D_800D4820)($at)
/* 5D834 8005CC34 3C01802B */  lui        $at, %hi(D_802AEB50)
/* 5D838 8005CC38 F42AEB50 */  sdc1       $f10, %lo(D_802AEB50)($at)
/* 5D83C 8005CC3C 3C01802B */  lui        $at, %hi(D_802AEB80)
/* 5D840 8005CC40 F42AEB80 */  sdc1       $f10, %lo(D_802AEB80)($at)
/* 5D844 8005CC44 3C01802B */  lui        $at, %hi(D_802AEBA0)
/* 5D848 8005CC48 F43CEBA0 */  sdc1       $f28, %lo(D_802AEBA0)($at)
/* 5D84C 8005CC4C 3C01802B */  lui        $at, %hi(D_802AEBB0)
/* 5D850 8005CC50 F43CEBB0 */  sdc1       $f28, %lo(D_802AEBB0)($at)
/* 5D854 8005CC54 3C01802B */  lui        $at, %hi(D_802AEBD8)
/* 5D858 8005CC58 F436EBD8 */  sdc1       $f22, %lo(D_802AEBD8)($at)
/* 5D85C 8005CC5C 3C01802B */  lui        $at, %hi(D_802AEBE0)
/* 5D860 8005CC60 F42AEBE0 */  sdc1       $f10, %lo(D_802AEBE0)($at)
/* 5D864 8005CC64 3C01802B */  lui        $at, %hi(D_802AEBF0)
/* 5D868 8005CC68 F42AEBF0 */  sdc1       $f10, %lo(D_802AEBF0)($at)
/* 5D86C 8005CC6C 3C01802B */  lui        $at, %hi(D_802AEB68)
/* 5D870 8005CC70 F420EB68 */  sdc1       $f0, %lo(D_802AEB68)($at)
/* 5D874 8005CC74 46244201 */  sub.d      $f8, $f8, $f4
/* 5D878 8005CC78 3C01802B */  lui        $at, %hi(D_802AEB78)
/* 5D87C 8005CC7C F420EB78 */  sdc1       $f0, %lo(D_802AEB78)($at)
/* 5D880 8005CC80 3C01802B */  lui        $at, %hi(D_802AEB98)
/* 5D884 8005CC84 F420EB98 */  sdc1       $f0, %lo(D_802AEB98)($at)
/* 5D888 8005CC88 3C01802B */  lui        $at, %hi(D_802AEBC8)
/* 5D88C 8005CC8C F420EBC8 */  sdc1       $f0, %lo(D_802AEBC8)($at)
/* 5D890 8005CC90 463E4001 */  sub.d      $f0, $f8, $f30
/* 5D894 8005CC94 3C01802B */  lui        $at, %hi(D_802AEC08)
/* 5D898 8005CC98 F436EC08 */  sdc1       $f22, %lo(D_802AEC08)($at)
/* 5D89C 8005CC9C 3C01802B */  lui        $at, %hi(D_802AEC10)
/* 5D8A0 8005CCA0 F43CEC10 */  sdc1       $f28, %lo(D_802AEC10)($at)
/* 5D8A4 8005CCA4 3C01802B */  lui        $at, %hi(D_802AEB48)
/* 5D8A8 8005CCA8 F428EB48 */  sdc1       $f8, %lo(D_802AEB48)($at)
/* 5D8AC 8005CCAC 46204207 */  neg.d      $f8, $f8
/* 5D8B0 8005CCB0 3C01802B */  lui        $at, %hi(D_802AEC28)
/* 5D8B4 8005CCB4 F436EC28 */  sdc1       $f22, %lo(D_802AEC28)($at)
/* 5D8B8 8005CCB8 463E4200 */  add.d      $f8, $f8, $f30
/* 5D8BC 8005CCBC 3C01802B */  lui        $at, %hi(D_802AEB58)
/* 5D8C0 8005CCC0 F430EB58 */  sdc1       $f16, %lo(D_802AEB58)($at)
/* 5D8C4 8005CCC4 3C01802B */  lui        $at, %hi(D_802AEB60)
/* 5D8C8 8005CCC8 F432EB60 */  sdc1       $f18, %lo(D_802AEB60)($at)
/* 5D8CC 8005CCCC 3C01802B */  lui        $at, %hi(D_802AEB70)
/* 5D8D0 8005CCD0 F438EB70 */  sdc1       $f24, %lo(D_802AEB70)($at)
/* 5D8D4 8005CCD4 3C01802B */  lui        $at, %hi(D_802AEB88)
/* 5D8D8 8005CCD8 F42CEB88 */  sdc1       $f12, %lo(D_802AEB88)($at)
/* 5D8DC 8005CCDC 3C01802B */  lui        $at, %hi(D_802AEB90)
/* 5D8E0 8005CCE0 F43AEB90 */  sdc1       $f26, %lo(D_802AEB90)($at)
/* 5D8E4 8005CCE4 3C01802B */  lui        $at, %hi(D_802AEBA8)
/* 5D8E8 8005CCE8 F430EBA8 */  sdc1       $f16, %lo(D_802AEBA8)($at)
/* 5D8EC 8005CCEC 3C01802B */  lui        $at, %hi(D_802AEBB8)
/* 5D8F0 8005CCF0 F42CEBB8 */  sdc1       $f12, %lo(D_802AEBB8)($at)
/* 5D8F4 8005CCF4 3C01802B */  lui        $at, %hi(D_802AEBC0)
/* 5D8F8 8005CCF8 F434EBC0 */  sdc1       $f20, %lo(D_802AEBC0)($at)
/* 5D8FC 8005CCFC 3C01802B */  lui        $at, %hi(D_802AEBD0)
/* 5D900 8005CD00 F432EBD0 */  sdc1       $f18, %lo(D_802AEBD0)($at)
/* 5D904 8005CD04 3C01802B */  lui        $at, %hi(D_802AEBE8)
/* 5D908 8005CD08 F42EEBE8 */  sdc1       $f14, %lo(D_802AEBE8)($at)
/* 5D90C 8005CD0C 3C01802B */  lui        $at, %hi(D_802AEBF8)
/* 5D910 8005CD10 F422EBF8 */  sdc1       $f2, %lo(D_802AEBF8)($at)
/* 5D914 8005CD14 3C01802B */  lui        $at, %hi(D_802AEC00)
/* 5D918 8005CD18 F438EC00 */  sdc1       $f24, %lo(D_802AEC00)($at)
/* 5D91C 8005CD1C 3C01802B */  lui        $at, %hi(D_802AEC18)
/* 5D920 8005CD20 F42EEC18 */  sdc1       $f14, %lo(D_802AEC18)($at)
/* 5D924 8005CD24 3C01802B */  lui        $at, %hi(D_802AEC20)
/* 5D928 8005CD28 F43AEC20 */  sdc1       $f26, %lo(D_802AEC20)($at)
/* 5D92C 8005CD2C 3C01802B */  lui        $at, %hi(D_802AEC30)
/* 5D930 8005CD30 F434EC30 */  sdc1       $f20, %lo(D_802AEC30)($at)
/* 5D934 8005CD34 3C01802B */  lui        $at, %hi(D_802AEC38)
/* 5D938 8005CD38 F436EC38 */  sdc1       $f22, %lo(D_802AEC38)($at)
/* 5D93C 8005CD3C 3C01802B */  lui        $at, %hi(D_802AEC40)
/* 5D940 8005CD40 F43CEC40 */  sdc1       $f28, %lo(D_802AEC40)($at)
/* 5D944 8005CD44 3C01802B */  lui        $at, %hi(D_802AEC48)
/* 5D948 8005CD48 F422EC48 */  sdc1       $f2, %lo(D_802AEC48)($at)
/* 5D94C 8005CD4C 3C01802B */  lui        $at, %hi(D_802AEC50)
/* 5D950 8005CD50 F426EC50 */  sdc1       $f6, %lo(D_802AEC50)($at)
/* 5D954 8005CD54 3C01802B */  lui        $at, %hi(D_802AEC60)
/* 5D958 8005CD58 F426EC60 */  sdc1       $f6, %lo(D_802AEC60)($at)
/* 5D95C 8005CD5C 3C01802B */  lui        $at, %hi(D_802AEC70)
/* 5D960 8005CD60 AC22EC70 */  sw         $v0, %lo(D_802AEC70)($at)
/* 5D964 8005CD64 3C01802B */  lui        $at, %hi(D_802AEC74)
/* 5D968 8005CD68 AC23EC74 */  sw         $v1, %lo(D_802AEC74)($at)
/* 5D96C 8005CD6C 3C01802B */  lui        $at, %hi(D_802AEC80)
/* 5D970 8005CD70 AC22EC80 */  sw         $v0, %lo(D_802AEC80)($at)
/* 5D974 8005CD74 3C01802B */  lui        $at, %hi(D_802AEC84)
/* 5D978 8005CD78 AC23EC84 */  sw         $v1, %lo(D_802AEC84)($at)
/* 5D97C 8005CD7C 3C01802B */  lui        $at, %hi(D_802AEC58)
/* 5D980 8005CD80 F420EC58 */  sdc1       $f0, %lo(D_802AEC58)($at)
/* 5D984 8005CD84 3C01802B */  lui        $at, %hi(D_802AEC88)
/* 5D988 8005CD88 F420EC88 */  sdc1       $f0, %lo(D_802AEC88)($at)
/* 5D98C 8005CD8C 3C01802B */  lui        $at, %hi(D_802AEC68)
/* 5D990 8005CD90 F428EC68 */  sdc1       $f8, %lo(D_802AEC68)($at)
/* 5D994 8005CD94 3C01802B */  lui        $at, %hi(D_802AEC78)
/* 5D998 8005CD98 F428EC78 */  sdc1       $f8, %lo(D_802AEC78)($at)
/* 5D99C 8005CD9C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5D9A0 8005CDA0 8FB10014 */  lw         $s1, 0x14($sp)
/* 5D9A4 8005CDA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 5D9A8 8005CDA8 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 5D9AC 8005CDAC D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 5D9B0 8005CDB0 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 5D9B4 8005CDB4 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 5D9B8 8005CDB8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 5D9BC 8005CDBC D7B40020 */  ldc1       $f20, 0x20($sp)
/* 5D9C0 8005CDC0 03E00008 */  jr         $ra
/* 5D9C4 8005CDC4 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8005CDC8
/* 5D9C8 8005CDC8 00003021 */  addu       $a2, $zero, $zero
/* 5D9CC 8005CDCC 24070010 */  addiu      $a3, $zero, 0x10
/* 5D9D0 8005CDD0 3C01800D */  lui        $at, %hi(D_800D4828)
/* 5D9D4 8005CDD4 D4224828 */  ldc1       $f2, %lo(D_800D4828)($at)
/* 5D9D8 8005CDD8 3C04803F */  lui        $a0, %hi(D_803F59E0)
/* 5D9DC 8005CDDC 248459E0 */  addiu      $a0, $a0, %lo(D_803F59E0)
/* 5D9E0 8005CDE0 2485FFF8 */  addiu      $a1, $a0, -0x8
/* 5D9E4 8005CDE4 00001821 */  addu       $v1, $zero, $zero
.L8005CDE8:
/* 5D9E8 8005CDE8 3C028031 */  lui        $v0, %hi(D_80312ADA)
/* 5D9EC 8005CDEC 00431021 */  addu       $v0, $v0, $v1
/* 5D9F0 8005CDF0 80422ADA */  lb         $v0, %lo(D_80312ADA)($v0)
/* 5D9F4 8005CDF4 14470005 */  bne        $v0, $a3, .L8005CE0C
/* 5D9F8 8005CDF8 00000000 */   nop
/* 5D9FC 8005CDFC F4A20000 */  sdc1       $f2, 0x0($a1)
/* 5DA00 8005CE00 F4820000 */  sdc1       $f2, 0x0($a0)
/* 5DA04 8005CE04 0801738C */  j          .L8005CE30
/* 5DA08 8005CE08 24840010 */   addiu     $a0, $a0, 0x10
.L8005CE0C:
/* 5DA0C 8005CE0C 3C018031 */  lui        $at, %hi(D_80312AC0)
/* 5DA10 8005CE10 00230821 */  addu       $at, $at, $v1
/* 5DA14 8005CE14 D4202AC0 */  ldc1       $f0, %lo(D_80312AC0)($at)
/* 5DA18 8005CE18 F4A00000 */  sdc1       $f0, 0x0($a1)
/* 5DA1C 8005CE1C 3C018031 */  lui        $at, %hi(D_80312AD0)
/* 5DA20 8005CE20 00230821 */  addu       $at, $at, $v1
/* 5DA24 8005CE24 D4202AD0 */  ldc1       $f0, %lo(D_80312AD0)($at)
/* 5DA28 8005CE28 F4800000 */  sdc1       $f0, 0x0($a0)
/* 5DA2C 8005CE2C 24840010 */  addiu      $a0, $a0, 0x10
.L8005CE30:
/* 5DA30 8005CE30 24A50010 */  addiu      $a1, $a1, 0x10
/* 5DA34 8005CE34 24C60001 */  addiu      $a2, $a2, 0x1
/* 5DA38 8005CE38 28C20010 */  slti       $v0, $a2, 0x10
/* 5DA3C 8005CE3C 1440FFEA */  bnez       $v0, .L8005CDE8
/* 5DA40 8005CE40 24630030 */   addiu     $v1, $v1, 0x30
/* 5DA44 8005CE44 03E00008 */  jr         $ra
/* 5DA48 8005CE48 00000000 */   nop

glabel func_8005CE4C
/* 5DA4C 8005CE4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DA50 8005CE50 00052900 */  sll        $a1, $a1, 4
/* 5DA54 8005CE54 00042100 */  sll        $a0, $a0, 4
/* 5DA58 8005CE58 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5DA5C 8005CE5C 3C01800C */  lui        $at, %hi(D_800C66E8)
/* 5DA60 8005CE60 00250821 */  addu       $at, $at, $a1
/* 5DA64 8005CE64 D42266E8 */  ldc1       $f2, %lo(D_800C66E8)($at)
/* 5DA68 8005CE68 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5DA6C 8005CE6C 00240821 */  addu       $at, $at, $a0
/* 5DA70 8005CE70 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5DA74 8005CE74 46201081 */  sub.d      $f2, $f2, $f0
/* 5DA78 8005CE78 3C01800C */  lui        $at, %hi(D_800C66F0)
/* 5DA7C 8005CE7C 00250821 */  addu       $at, $at, $a1
/* 5DA80 8005CE80 D42C66F0 */  ldc1       $f12, %lo(D_800C66F0)($at)
/* 5DA84 8005CE84 46221082 */  mul.d      $f2, $f2, $f2
/* 5DA88 8005CE88 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5DA8C 8005CE8C 00240821 */  addu       $at, $at, $a0
/* 5DA90 8005CE90 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5DA94 8005CE94 46206301 */  sub.d      $f12, $f12, $f0
/* 5DA98 8005CE98 462C6302 */  mul.d      $f12, $f12, $f12
/* 5DA9C 8005CE9C 0C022BA9 */  jal        func_8008AEA4
/* 5DAA0 8005CEA0 462C1300 */   add.d     $f12, $f2, $f12
/* 5DAA4 8005CEA4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5DAA8 8005CEA8 03E00008 */  jr         $ra
/* 5DAAC 8005CEAC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005CEB0
/* 5DAB0 8005CEB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DAB4 8005CEB4 00052900 */  sll        $a1, $a1, 4
/* 5DAB8 8005CEB8 00042100 */  sll        $a0, $a0, 4
/* 5DABC 8005CEBC AFBF0010 */  sw         $ra, 0x10($sp)
/* 5DAC0 8005CEC0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5DAC4 8005CEC4 00250821 */  addu       $at, $at, $a1
/* 5DAC8 8005CEC8 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5DACC 8005CECC 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5DAD0 8005CED0 00240821 */  addu       $at, $at, $a0
/* 5DAD4 8005CED4 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5DAD8 8005CED8 46201081 */  sub.d      $f2, $f2, $f0
/* 5DADC 8005CEDC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5DAE0 8005CEE0 00250821 */  addu       $at, $at, $a1
/* 5DAE4 8005CEE4 D42C59E0 */  ldc1       $f12, %lo(D_803F59E0)($at)
/* 5DAE8 8005CEE8 46221082 */  mul.d      $f2, $f2, $f2
/* 5DAEC 8005CEEC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5DAF0 8005CEF0 00240821 */  addu       $at, $at, $a0
/* 5DAF4 8005CEF4 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5DAF8 8005CEF8 46206301 */  sub.d      $f12, $f12, $f0
/* 5DAFC 8005CEFC 462C6302 */  mul.d      $f12, $f12, $f12
/* 5DB00 8005CF00 0C022BA9 */  jal        func_8008AEA4
/* 5DB04 8005CF04 462C1300 */   add.d     $f12, $f2, $f12
/* 5DB08 8005CF08 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5DB0C 8005CF0C 03E00008 */  jr         $ra
/* 5DB10 8005CF10 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005CF14
/* 5DB14 8005CF14 00041100 */  sll        $v0, $a0, 4
/* 5DB18 8005CF18 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5DB1C 8005CF1C 00220821 */  addu       $at, $at, $v0
/* 5DB20 8005CF20 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5DB24 8005CF24 44800000 */  mtc1       $zero, $f0
/* 5DB28 8005CF28 44800800 */  mtc1       $zero, $f1
/* 5DB2C 8005CF2C 00000000 */  nop
/* 5DB30 8005CF30 4620103C */  c.lt.d     $f2, $f0
/* 5DB34 8005CF34 00000000 */  nop
/* 5DB38 8005CF38 00000000 */  nop
/* 5DB3C 8005CF3C 45000005 */  bc1f       .L8005CF54
/* 5DB40 8005CF40 24030001 */   addiu     $v1, $zero, 0x1
/* 5DB44 8005CF44 3C01800D */  lui        $at, %hi(D_800D4830)
/* 5DB48 8005CF48 D4204830 */  ldc1       $f0, %lo(D_800D4830)($at)
/* 5DB4C 8005CF4C 080173DA */  j          .L8005CF68
/* 5DB50 8005CF50 46201100 */   add.d     $f4, $f2, $f0
.L8005CF54:
/* 5DB54 8005CF54 3C01800D */  lui        $at, %hi(D_800D4838)
/* 5DB58 8005CF58 D4204838 */  ldc1       $f0, %lo(D_800D4838)($at)
/* 5DB5C 8005CF5C 24030002 */  addiu      $v1, $zero, 0x2
/* 5DB60 8005CF60 46220101 */  sub.d      $f4, $f0, $f2
/* 5DB64 8005CF64 00041100 */  sll        $v0, $a0, 4
.L8005CF68:
/* 5DB68 8005CF68 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5DB6C 8005CF6C 00220821 */  addu       $at, $at, $v0
/* 5DB70 8005CF70 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5DB74 8005CF74 44800000 */  mtc1       $zero, $f0
/* 5DB78 8005CF78 44800800 */  mtc1       $zero, $f1
/* 5DB7C 8005CF7C 00000000 */  nop
/* 5DB80 8005CF80 4620103C */  c.lt.d     $f2, $f0
/* 5DB84 8005CF84 00000000 */  nop
/* 5DB88 8005CF88 00000000 */  nop
/* 5DB8C 8005CF8C 45000005 */  bc1f       .L8005CFA4
/* 5DB90 8005CF90 24020003 */   addiu     $v0, $zero, 0x3
/* 5DB94 8005CF94 3C01800D */  lui        $at, %hi(D_800D4840)
/* 5DB98 8005CF98 D4204840 */  ldc1       $f0, %lo(D_800D4840)($at)
/* 5DB9C 8005CF9C 080173ED */  j          .L8005CFB4
/* 5DBA0 8005CFA0 46201000 */   add.d     $f0, $f2, $f0
.L8005CFA4:
/* 5DBA4 8005CFA4 3C01800D */  lui        $at, %hi(D_800D4848)
/* 5DBA8 8005CFA8 D4204848 */  ldc1       $f0, %lo(D_800D4848)($at)
/* 5DBAC 8005CFAC 24020004 */  addiu      $v0, $zero, 0x4
/* 5DBB0 8005CFB0 46220001 */  sub.d      $f0, $f0, $f2
.L8005CFB4:
/* 5DBB4 8005CFB4 4624003C */  c.lt.d     $f0, $f4
/* 5DBB8 8005CFB8 00000000 */  nop
/* 5DBBC 8005CFBC 45000005 */  bc1f       .L8005CFD4
/* 5DBC0 8005CFC0 00000000 */   nop
/* 5DBC4 8005CFC4 3C01802D */  lui        $at, %hi(D_802D1A30)
/* 5DBC8 8005CFC8 AC221A30 */  sw         $v0, %lo(D_802D1A30)($at)
/* 5DBCC 8005CFCC 080173F7 */  j          .L8005CFDC
/* 5DBD0 8005CFD0 46200106 */   mov.d     $f4, $f0
.L8005CFD4:
/* 5DBD4 8005CFD4 3C01802D */  lui        $at, %hi(D_802D1A30)
/* 5DBD8 8005CFD8 AC231A30 */  sw         $v1, %lo(D_802D1A30)($at)
.L8005CFDC:
/* 5DBDC 8005CFDC 03E00008 */  jr         $ra
/* 5DBE0 8005CFE0 46202006 */   mov.d     $f0, $f4

glabel func_8005CFE4
/* 5DBE4 8005CFE4 3C01800D */  lui        $at, %hi(D_800D4850)
/* 5DBE8 8005CFE8 D4204850 */  ldc1       $f0, %lo(D_800D4850)($at)
/* 5DBEC 8005CFEC 46206082 */  mul.d      $f2, $f12, $f0
/* 5DBF0 8005CFF0 3C01800C */  lui        $at, %hi(D_800C69E0)
/* 5DBF4 8005CFF4 D42C69E0 */  ldc1       $f12, %lo(D_800C69E0)($at)
/* 5DBF8 8005CFF8 462C1082 */  mul.d      $f2, $f2, $f12
/* 5DBFC 8005CFFC 3C01800D */  lui        $at, %hi(D_800D4858)
/* 5DC00 8005D000 D4204858 */  ldc1       $f0, %lo(D_800D4858)($at)
/* 5DC04 8005D004 46206302 */  mul.d      $f12, $f12, $f0
/* 5DC08 8005D008 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 5DC0C 8005D00C D42469F8 */  ldc1       $f4, %lo(D_800C69F8)($at)
/* 5DC10 8005D010 3C01800D */  lui        $at, %hi(D_800D4860)
/* 5DC14 8005D014 D4204860 */  ldc1       $f0, %lo(D_800D4860)($at)
/* 5DC18 8005D018 46202002 */  mul.d      $f0, $f4, $f0
/* 5DC1C 8005D01C 00000000 */  nop
/* 5DC20 8005D020 46241082 */  mul.d      $f2, $f2, $f4
/* 5DC24 8005D024 46206300 */  add.d      $f12, $f12, $f0
/* 5DC28 8005D028 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DC2C 8005D02C AFBF0010 */  sw         $ra, 0x10($sp)
/* 5DC30 8005D030 0C022BA9 */  jal        func_8008AEA4
/* 5DC34 8005D034 462C1303 */   div.d     $f12, $f2, $f12
/* 5DC38 8005D038 3C01800D */  lui        $at, %hi(D_800D4868)
/* 5DC3C 8005D03C D4224868 */  ldc1       $f2, %lo(D_800D4868)($at)
/* 5DC40 8005D040 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5DC44 8005D044 46220002 */  mul.d      $f0, $f0, $f2
/* 5DC48 8005D048 03E00008 */  jr         $ra
/* 5DC4C 8005D04C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005D050
/* 5DC50 8005D050 D4800078 */  ldc1       $f0, 0x78($a0)
/* 5DC54 8005D054 44871000 */  mtc1       $a3, $f2
/* 5DC58 8005D058 44861800 */  mtc1       $a2, $f3
/* 5DC5C 8005D05C 00000000 */  nop
/* 5DC60 8005D060 03E00008 */  jr         $ra
/* 5DC64 8005D064 46201003 */   div.d     $f0, $f2, $f0

glabel func_8005D068
/* 5DC68 8005D068 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DC6C 8005D06C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DC70 8005D070 AFB00010 */  sw         $s0, 0x10($sp)
/* 5DC74 8005D074 80A200A2 */  lb         $v0, 0xA2($a1)
/* 5DC78 8005D078 D4A20040 */  ldc1       $f2, 0x40($a1)
/* 5DC7C 8005D07C 00021100 */  sll        $v0, $v0, 4
/* 5DC80 8005D080 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5DC84 8005D084 00220821 */  addu       $at, $at, $v0
/* 5DC88 8005D088 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5DC8C 8005D08C 46220001 */  sub.d      $f0, $f0, $f2
/* 5DC90 8005D090 3C10802B */  lui        $s0, %hi(D_802AED20)
/* 5DC94 8005D094 2610ED20 */  addiu      $s0, $s0, %lo(D_802AED20)
/* 5DC98 8005D098 F6000000 */  sdc1       $f0, 0x0($s0)
/* 5DC9C 8005D09C 80A200A2 */  lb         $v0, 0xA2($a1)
/* 5DCA0 8005D0A0 D4A20048 */  ldc1       $f2, 0x48($a1)
/* 5DCA4 8005D0A4 00021100 */  sll        $v0, $v0, 4
/* 5DCA8 8005D0A8 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5DCAC 8005D0AC 00220821 */  addu       $at, $at, $v0
/* 5DCB0 8005D0B0 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5DCB4 8005D0B4 46220001 */  sub.d      $f0, $f0, $f2
/* 5DCB8 8005D0B8 24840020 */  addiu      $a0, $a0, 0x20
/* 5DCBC 8005D0BC 3C01802B */  lui        $at, %hi(D_802AED28)
/* 5DCC0 8005D0C0 F420ED28 */  sdc1       $f0, %lo(D_802AED28)($at)
/* 5DCC4 8005D0C4 0C022C7C */  jal        func_8008B1F0
/* 5DCC8 8005D0C8 02002821 */   addu      $a1, $s0, $zero
/* 5DCCC 8005D0CC 00000000 */  nop
/* 5DCD0 8005D0D0 46200102 */  mul.d      $f4, $f0, $f0
/* 5DCD4 8005D0D4 D6020000 */  ldc1       $f2, 0x0($s0)
/* 5DCD8 8005D0D8 46221082 */  mul.d      $f2, $f2, $f2
/* 5DCDC 8005D0DC 3C01802B */  lui        $at, %hi(D_802AED28)
/* 5DCE0 8005D0E0 D42CED28 */  ldc1       $f12, %lo(D_802AED28)($at)
/* 5DCE4 8005D0E4 3C01800D */  lui        $at, %hi(D_800D4870)
/* 5DCE8 8005D0E8 D4264870 */  ldc1       $f6, %lo(D_800D4870)($at)
/* 5DCEC 8005D0EC 462C6302 */  mul.d      $f12, $f12, $f12
/* 5DCF0 8005D0F0 46262100 */  add.d      $f4, $f4, $f6
/* 5DCF4 8005D0F4 46222101 */  sub.d      $f4, $f4, $f2
/* 5DCF8 8005D0F8 3C01802B */  lui        $at, %hi(D_802AED70)
/* 5DCFC 8005D0FC F420ED70 */  sdc1       $f0, %lo(D_802AED70)($at)
/* 5DD00 8005D100 0C022BA9 */  jal        func_8008AEA4
/* 5DD04 8005D104 462C2301 */   sub.d     $f12, $f4, $f12
/* 5DD08 8005D108 3C01802B */  lui        $at, %hi(D_802AED70)
/* 5DD0C 8005D10C D422ED70 */  ldc1       $f2, %lo(D_802AED70)($at)
/* 5DD10 8005D110 46201001 */  sub.d      $f0, $f2, $f0
/* 5DD14 8005D114 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DD18 8005D118 8FB00010 */  lw         $s0, 0x10($sp)
/* 5DD1C 8005D11C 03E00008 */  jr         $ra
/* 5DD20 8005D120 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005D124
/* 5DD24 8005D124 3C01802F */  lui        $at, %hi(D_802EF130)
/* 5DD28 8005D128 D420F130 */  ldc1       $f0, %lo(D_802EF130)($at)
/* 5DD2C 8005D12C 462E0002 */  mul.d      $f0, $f0, $f14
/* 5DD30 8005D130 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DD34 8005D134 8FA20028 */  lw         $v0, 0x28($sp)
/* 5DD38 8005D138 AFB00010 */  sw         $s0, 0x10($sp)
/* 5DD3C 8005D13C 8FB0002C */  lw         $s0, 0x2C($sp)
/* 5DD40 8005D140 462E7382 */  mul.d      $f14, $f14, $f14
/* 5DD44 8005D144 462C6300 */  add.d      $f12, $f12, $f12
/* 5DD48 8005D148 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DD4C 8005D14C F4400000 */  sdc1       $f0, 0x0($v0)
/* 5DD50 8005D150 3C01800C */  lui        $at, %hi(D_800C6A28)
/* 5DD54 8005D154 D4206A28 */  ldc1       $f0, %lo(D_800C6A28)($at)
/* 5DD58 8005D158 46206302 */  mul.d      $f12, $f12, $f0
/* 5DD5C 8005D15C 0C022BA9 */  jal        func_8008AEA4
/* 5DD60 8005D160 462C7300 */   add.d     $f12, $f14, $f12
/* 5DD64 8005D164 F6000000 */  sdc1       $f0, 0x0($s0)
/* 5DD68 8005D168 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DD6C 8005D16C 8FB00010 */  lw         $s0, 0x10($sp)
/* 5DD70 8005D170 03E00008 */  jr         $ra
/* 5DD74 8005D174 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005D178
/* 5DD78 8005D178 D7A40010 */  ldc1       $f4, 0x10($sp)
/* 5DD7C 8005D17C 46247101 */  sub.d      $f4, $f14, $f4
/* 5DD80 8005D180 462E2103 */  div.d      $f4, $f4, $f14
/* 5DD84 8005D184 3C01800D */  lui        $at, %hi(D_800D4878)
/* 5DD88 8005D188 D4204878 */  ldc1       $f0, %lo(D_800D4878)($at)
/* 5DD8C 8005D18C 46206302 */  mul.d      $f12, $f12, $f0
/* 5DD90 8005D190 462E6303 */  div.d      $f12, $f12, $f14
/* 5DD94 8005D194 46242082 */  mul.d      $f2, $f4, $f4
/* 5DD98 8005D198 00000000 */  nop
/* 5DD9C 8005D19C 462C6002 */  mul.d      $f0, $f12, $f12
/* 5DDA0 8005D1A0 46220000 */  add.d      $f0, $f0, $f2
/* 5DDA4 8005D1A4 3C01800D */  lui        $at, %hi(D_800D4880)
/* 5DDA8 8005D1A8 D4224880 */  ldc1       $f2, %lo(D_800D4880)($at)
/* 5DDAC 8005D1AC 46220002 */  mul.d      $f0, $f0, $f2
/* 5DDB0 8005D1B0 00000000 */  nop
/* 5DDB4 8005D1B4 462E0002 */  mul.d      $f0, $f0, $f14
/* 5DDB8 8005D1B8 8FA20018 */  lw         $v0, 0x18($sp)
/* 5DDBC 8005D1BC 8FA3001C */  lw         $v1, 0x1C($sp)
/* 5DDC0 8005D1C0 8FA40020 */  lw         $a0, 0x20($sp)
/* 5DDC4 8005D1C4 462E0000 */  add.d      $f0, $f0, $f14
/* 5DDC8 8005D1C8 3C01802B */  lui        $at, %hi(D_802AED68)
/* 5DDCC 8005D1CC F42EED68 */  sdc1       $f14, %lo(D_802AED68)($at)
/* 5DDD0 8005D1D0 3C01802B */  lui        $at, %hi(D_802AED60)
/* 5DDD4 8005D1D4 F424ED60 */  sdc1       $f4, %lo(D_802AED60)($at)
/* 5DDD8 8005D1D8 3C01802B */  lui        $at, %hi(D_802AED58)
/* 5DDDC 8005D1DC F42CED58 */  sdc1       $f12, %lo(D_802AED58)($at)
/* 5DDE0 8005D1E0 F4400000 */  sdc1       $f0, 0x0($v0)
/* 5DDE4 8005D1E4 3C01802B */  lui        $at, %hi(D_802AED58)
/* 5DDE8 8005D1E8 D420ED58 */  ldc1       $f0, %lo(D_802AED58)($at)
/* 5DDEC 8005D1EC F4600000 */  sdc1       $f0, 0x0($v1)
/* 5DDF0 8005D1F0 3C01802B */  lui        $at, %hi(D_802AED60)
/* 5DDF4 8005D1F4 D420ED60 */  ldc1       $f0, %lo(D_802AED60)($at)
/* 5DDF8 8005D1F8 03E00008 */  jr         $ra
/* 5DDFC 8005D1FC F4800000 */   sdc1      $f0, 0x0($a0)

glabel func_8005D200
/* 5DE00 8005D200 3C01802F */  lui        $at, %hi(D_802EF130)
/* 5DE04 8005D204 D422F130 */  ldc1       $f2, %lo(D_802EF130)($at)
/* 5DE08 8005D208 3C01800D */  lui        $at, %hi(D_800D4888)
/* 5DE0C 8005D20C D4204888 */  ldc1       $f0, %lo(D_800D4888)($at)
/* 5DE10 8005D210 46201082 */  mul.d      $f2, $f2, $f0
/* 5DE14 8005D214 3C01800D */  lui        $at, %hi(D_800D4890)
/* 5DE18 8005D218 D4204890 */  ldc1       $f0, %lo(D_800D4890)($at)
/* 5DE1C 8005D21C 46206002 */  mul.d      $f0, $f12, $f0
/* 5DE20 8005D220 3C01800C */  lui        $at, %hi(D_800C69F8)
/* 5DE24 8005D224 D42C69F8 */  ldc1       $f12, %lo(D_800C69F8)($at)
/* 5DE28 8005D228 462C0302 */  mul.d      $f12, $f0, $f12
/* 5DE2C 8005D22C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5DE30 8005D230 AFB00010 */  sw         $s0, 0x10($sp)
/* 5DE34 8005D234 00C08021 */  addu       $s0, $a2, $zero
/* 5DE38 8005D238 AFB10014 */  sw         $s1, 0x14($sp)
/* 5DE3C 8005D23C AFBF0018 */  sw         $ra, 0x18($sp)
/* 5DE40 8005D240 3C01802B */  lui        $at, %hi(D_802AED58)
/* 5DE44 8005D244 F422ED58 */  sdc1       $f2, %lo(D_802AED58)($at)
/* 5DE48 8005D248 0C022BA9 */  jal        func_8008AEA4
/* 5DE4C 8005D24C 00E08821 */   addu      $s1, $a3, $zero
/* 5DE50 8005D250 3C01802B */  lui        $at, %hi(D_802AED58)
/* 5DE54 8005D254 D422ED58 */  ldc1       $f2, %lo(D_802AED58)($at)
/* 5DE58 8005D258 46221082 */  mul.d      $f2, $f2, $f2
/* 5DE5C 8005D25C 3C01800D */  lui        $at, %hi(D_800D4898)
/* 5DE60 8005D260 D4244898 */  ldc1       $f4, %lo(D_800D4898)($at)
/* 5DE64 8005D264 46241080 */  add.d      $f2, $f2, $f4
/* 5DE68 8005D268 3C01800D */  lui        $at, %hi(D_800D48A0)
/* 5DE6C 8005D26C D42448A0 */  ldc1       $f4, %lo(D_800D48A0)($at)
/* 5DE70 8005D270 46241082 */  mul.d      $f2, $f2, $f4
/* 5DE74 8005D274 00000000 */  nop
/* 5DE78 8005D278 46201082 */  mul.d      $f2, $f2, $f0
/* 5DE7C 8005D27C 46201080 */  add.d      $f2, $f2, $f0
/* 5DE80 8005D280 F6020000 */  sdc1       $f2, 0x0($s0)
/* 5DE84 8005D284 3C01802B */  lui        $at, %hi(D_802AED58)
/* 5DE88 8005D288 D420ED58 */  ldc1       $f0, %lo(D_802AED58)($at)
/* 5DE8C 8005D28C F6200000 */  sdc1       $f0, 0x0($s1)
/* 5DE90 8005D290 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5DE94 8005D294 8FB10014 */  lw         $s1, 0x14($sp)
/* 5DE98 8005D298 8FB00010 */  lw         $s0, 0x10($sp)
/* 5DE9C 8005D29C 03E00008 */  jr         $ra
/* 5DEA0 8005D2A0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005D2A4
/* 5DEA4 8005D2A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5DEA8 8005D2A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 5DEAC 8005D2AC 3C10802B */  lui        $s0, %hi(D_802AECB0)
/* 5DEB0 8005D2B0 2610ECB0 */  addiu      $s0, $s0, %lo(D_802AECB0)
/* 5DEB4 8005D2B4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5DEB8 8005D2B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 5DEBC 8005D2BC F7B40020 */  sdc1       $f20, 0x20($sp)
/* 5DEC0 8005D2C0 D6020000 */  ldc1       $f2, 0x0($s0)
/* 5DEC4 8005D2C4 46221082 */  mul.d      $f2, $f2, $f2
/* 5DEC8 8005D2C8 D6000008 */  ldc1       $f0, 0x8($s0)
/* 5DECC 8005D2CC 46200002 */  mul.d      $f0, $f0, $f0
/* 5DED0 8005D2D0 46201500 */  add.d      $f20, $f2, $f0
/* 5DED4 8005D2D4 3C01800D */  lui        $at, %hi(D_800D48A8)
/* 5DED8 8005D2D8 D42048A8 */  ldc1       $f0, %lo(D_800D48A8)($at)
/* 5DEDC 8005D2DC 4620A03C */  c.lt.d     $f20, $f0
/* 5DEE0 8005D2E0 00000000 */  nop
/* 5DEE4 8005D2E4 00000000 */  nop
/* 5DEE8 8005D2E8 45030001 */  bc1tl      .L8005D2F0
/* 5DEEC 8005D2EC 46200506 */   mov.d     $f20, $f0
.L8005D2F0:
/* 5DEF0 8005D2F0 0C022BA9 */  jal        func_8008AEA4
/* 5DEF4 8005D2F4 4620A301 */   sub.d     $f12, $f20, $f0
/* 5DEF8 8005D2F8 3C01802B */  lui        $at, %hi(D_802AED48)
/* 5DEFC 8005D2FC F420ED48 */  sdc1       $f0, %lo(D_802AED48)($at)
/* 5DF00 8005D300 0C022BA9 */  jal        func_8008AEA4
/* 5DF04 8005D304 4620A306 */   mov.d     $f12, $f20
/* 5DF08 8005D308 3C01802B */  lui        $at, %hi(D_802AED48)
/* 5DF0C 8005D30C D42CED48 */  ldc1       $f12, %lo(D_802AED48)($at)
/* 5DF10 8005D310 D6040000 */  ldc1       $f4, 0x0($s0)
/* 5DF14 8005D314 46246402 */  mul.d      $f16, $f12, $f4
/* 5DF18 8005D318 D6020008 */  ldc1       $f2, 0x8($s0)
/* 5DF1C 8005D31C 46221380 */  add.d      $f14, $f2, $f2
/* 5DF20 8005D320 462E8281 */  sub.d      $f10, $f16, $f14
/* 5DF24 8005D324 3C01800D */  lui        $at, %hi(D_800D48B0)
/* 5DF28 8005D328 D42648B0 */  ldc1       $f6, %lo(D_800D48B0)($at)
/* 5DF2C 8005D32C 46265282 */  mul.d      $f10, $f10, $f6
/* 5DF30 8005D330 46205283 */  div.d      $f10, $f10, $f0
/* 5DF34 8005D334 462E8200 */  add.d      $f8, $f16, $f14
/* 5DF38 8005D338 46264202 */  mul.d      $f8, $f8, $f6
/* 5DF3C 8005D33C 46204203 */  div.d      $f8, $f8, $f0
/* 5DF40 8005D340 46226402 */  mul.d      $f16, $f12, $f2
/* 5DF44 8005D344 46242380 */  add.d      $f14, $f4, $f4
/* 5DF48 8005D348 462E8101 */  sub.d      $f4, $f16, $f14
/* 5DF4C 8005D34C 46262102 */  mul.d      $f4, $f4, $f6
/* 5DF50 8005D350 46202103 */  div.d      $f4, $f4, $f0
/* 5DF54 8005D354 462E8080 */  add.d      $f2, $f16, $f14
/* 5DF58 8005D358 46261082 */  mul.d      $f2, $f2, $f6
/* 5DF5C 8005D35C 46201083 */  div.d      $f2, $f2, $f0
/* 5DF60 8005D360 3C10802B */  lui        $s0, %hi(D_802AECD0)
/* 5DF64 8005D364 2610ECD0 */  addiu      $s0, $s0, %lo(D_802AECD0)
/* 5DF68 8005D368 3C11802B */  lui        $s1, %hi(D_802AECC0)
/* 5DF6C 8005D36C 2631ECC0 */  addiu      $s1, $s1, %lo(D_802AECC0)
/* 5DF70 8005D370 3C01802B */  lui        $at, %hi(D_802AED40)
/* 5DF74 8005D374 F420ED40 */  sdc1       $f0, %lo(D_802AED40)($at)
/* 5DF78 8005D378 F60A0000 */  sdc1       $f10, 0x0($s0)
/* 5DF7C 8005D37C F6280000 */  sdc1       $f8, 0x0($s1)
/* 5DF80 8005D380 3C01802B */  lui        $at, %hi(D_802AECC8)
/* 5DF84 8005D384 F424ECC8 */  sdc1       $f4, %lo(D_802AECC8)($at)
/* 5DF88 8005D388 F6020008 */  sdc1       $f2, 0x8($s0)
/* 5DF8C 8005D38C 0C022CF3 */  jal        func_8008B3CC
/* 5DF90 8005D390 02002021 */   addu      $a0, $s0, $zero
/* 5DF94 8005D394 0C022CF3 */  jal        func_8008B3CC
/* 5DF98 8005D398 02202021 */   addu      $a0, $s1, $zero
/* 5DF9C 8005D39C 3C06802F */  lui        $a2, %hi(D_802F1908)
/* 5DFA0 8005D3A0 24C61908 */  addiu      $a2, $a2, %lo(D_802F1908)
/* 5DFA4 8005D3A4 D4D00000 */  ldc1       $f16, 0x0($a2)
/* 5DFA8 8005D3A8 3C01802B */  lui        $at, %hi(D_802AECC8)
/* 5DFAC 8005D3AC D434ECC8 */  ldc1       $f20, %lo(D_802AECC8)($at)
/* 5DFB0 8005D3B0 46348082 */  mul.d      $f2, $f16, $f20
/* 5DFB4 8005D3B4 3C01802F */  lui        $at, %hi(D_802F1910)
/* 5DFB8 8005D3B8 D42E1910 */  ldc1       $f14, %lo(D_802F1910)($at)
/* 5DFBC 8005D3BC D6320000 */  ldc1       $f18, 0x0($s1)
/* 5DFC0 8005D3C0 46327002 */  mul.d      $f0, $f14, $f18
/* 5DFC4 8005D3C4 46201081 */  sub.d      $f2, $f2, $f0
/* 5DFC8 8005D3C8 44805000 */  mtc1       $zero, $f10
/* 5DFCC 8005D3CC 44805800 */  mtc1       $zero, $f11
/* 5DFD0 8005D3D0 00000000 */  nop
/* 5DFD4 8005D3D4 4622503E */  c.le.d     $f10, $f2
/* 5DFD8 8005D3D8 00000000 */  nop
/* 5DFDC 8005D3DC 00000000 */  nop
/* 5DFE0 8005D3E0 45010038 */  bc1t       .L8005D4C4
/* 5DFE4 8005D3E4 00001021 */   addu      $v0, $zero, $zero
/* 5DFE8 8005D3E8 3C01802D */  lui        $at, %hi(D_802D2650)
/* 5DFEC 8005D3EC D42C2650 */  ldc1       $f12, %lo(D_802D2650)($at)
/* 5DFF0 8005D3F0 D6060000 */  ldc1       $f6, 0x0($s0)
/* 5DFF4 8005D3F4 46266082 */  mul.d      $f2, $f12, $f6
/* 5DFF8 8005D3F8 3C01802D */  lui        $at, %hi(D_802D2648)
/* 5DFFC 8005D3FC D4282648 */  ldc1       $f8, %lo(D_802D2648)($at)
/* 5E000 8005D400 D6040008 */  ldc1       $f4, 0x8($s0)
/* 5E004 8005D404 46244002 */  mul.d      $f0, $f8, $f4
/* 5E008 8005D408 46201081 */  sub.d      $f2, $f2, $f0
/* 5E00C 8005D40C 4622503E */  c.le.d     $f10, $f2
/* 5E010 8005D410 00000000 */  nop
/* 5E014 8005D414 00000000 */  nop
/* 5E018 8005D418 45020003 */  bc1fl      .L8005D428
/* 5E01C 8005D41C 46248002 */   mul.d     $f0, $f16, $f4
/* 5E020 8005D420 08017531 */  j          .L8005D4C4
/* 5E024 8005D424 00000000 */   nop
.L8005D428:
/* 5E028 8005D428 00000000 */  nop
/* 5E02C 8005D42C 46267082 */  mul.d      $f2, $f14, $f6
/* 5E030 8005D430 46220001 */  sub.d      $f0, $f0, $f2
/* 5E034 8005D434 462A003C */  c.lt.d     $f0, $f10
/* 5E038 8005D438 00000000 */  nop
/* 5E03C 8005D43C 00000000 */  nop
/* 5E040 8005D440 4502000F */  bc1fl      .L8005D480
/* 5E044 8005D444 46344002 */   mul.d     $f0, $f8, $f20
/* 5E048 8005D448 8E020000 */  lw         $v0, 0x0($s0)
/* 5E04C 8005D44C 8E030004 */  lw         $v1, 0x4($s0)
/* 5E050 8005D450 8E040008 */  lw         $a0, 0x8($s0)
/* 5E054 8005D454 8E05000C */  lw         $a1, 0xC($s0)
/* 5E058 8005D458 3C01802D */  lui        $at, %hi(D_802D2648)
/* 5E05C 8005D45C AC222648 */  sw         $v0, %lo(D_802D2648)($at)
/* 5E060 8005D460 3C01802D */  lui        $at, %hi(D_802D264C)
/* 5E064 8005D464 AC23264C */  sw         $v1, %lo(D_802D264C)($at)
/* 5E068 8005D468 3C01802D */  lui        $at, %hi(D_802D2650)
/* 5E06C 8005D46C AC242650 */  sw         $a0, %lo(D_802D2650)($at)
/* 5E070 8005D470 3C01802D */  lui        $at, %hi(D_802D2654)
/* 5E074 8005D474 AC252654 */  sw         $a1, %lo(D_802D2654)($at)
/* 5E078 8005D478 08017531 */  j          .L8005D4C4
/* 5E07C 8005D47C 24020001 */   addiu     $v0, $zero, 0x1
.L8005D480:
/* 5E080 8005D480 00000000 */  nop
/* 5E084 8005D484 46326082 */  mul.d      $f2, $f12, $f18
/* 5E088 8005D488 46220001 */  sub.d      $f0, $f0, $f2
/* 5E08C 8005D48C 462A003C */  c.lt.d     $f0, $f10
/* 5E090 8005D490 00000000 */  nop
/* 5E094 8005D494 00000000 */  nop
/* 5E098 8005D498 4501000A */  bc1t       .L8005D4C4
/* 5E09C 8005D49C 24020002 */   addiu     $v0, $zero, 0x2
/* 5E0A0 8005D4A0 8E220000 */  lw         $v0, 0x0($s1)
/* 5E0A4 8005D4A4 8E230004 */  lw         $v1, 0x4($s1)
/* 5E0A8 8005D4A8 8E240008 */  lw         $a0, 0x8($s1)
/* 5E0AC 8005D4AC 8E25000C */  lw         $a1, 0xC($s1)
/* 5E0B0 8005D4B0 ACC20000 */  sw         $v0, 0x0($a2)
/* 5E0B4 8005D4B4 ACC30004 */  sw         $v1, 0x4($a2)
/* 5E0B8 8005D4B8 ACC40008 */  sw         $a0, 0x8($a2)
/* 5E0BC 8005D4BC ACC5000C */  sw         $a1, 0xC($a2)
/* 5E0C0 8005D4C0 24020001 */  addiu      $v0, $zero, 0x1
.L8005D4C4:
/* 5E0C4 8005D4C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5E0C8 8005D4C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 5E0CC 8005D4CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 5E0D0 8005D4D0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 5E0D4 8005D4D4 03E00008 */  jr         $ra
/* 5E0D8 8005D4D8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005D4DC
/* 5E0DC 8005D4DC D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E0E0 8005D4E0 3C01800D */  lui        $at, %hi(D_800D48B8)
/* 5E0E4 8005D4E4 D42048B8 */  ldc1       $f0, %lo(D_800D48B8)($at)
/* 5E0E8 8005D4E8 4622003E */  c.le.d     $f0, $f2
/* 5E0EC 8005D4EC 00000000 */  nop
/* 5E0F0 8005D4F0 00000000 */  nop
/* 5E0F4 8005D4F4 45010010 */  bc1t       .L8005D538
/* 5E0F8 8005D4F8 24020001 */   addiu     $v0, $zero, 0x1
/* 5E0FC 8005D4FC 3C01800D */  lui        $at, %hi(D_800D48C0)
/* 5E100 8005D500 D42048C0 */  ldc1       $f0, %lo(D_800D48C0)($at)
/* 5E104 8005D504 4622003E */  c.le.d     $f0, $f2
/* 5E108 8005D508 00000000 */  nop
/* 5E10C 8005D50C 00000000 */  nop
/* 5E110 8005D510 45030009 */  bc1tl      .L8005D538
/* 5E114 8005D514 00001021 */   addu      $v0, $zero, $zero
/* 5E118 8005D518 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E11C 8005D51C 3C01800D */  lui        $at, %hi(D_800D48C8)
/* 5E120 8005D520 D42048C8 */  ldc1       $f0, %lo(D_800D48C8)($at)
/* 5E124 8005D524 4622003C */  c.lt.d     $f0, $f2
/* 5E128 8005D528 00000000 */  nop
/* 5E12C 8005D52C 00000000 */  nop
/* 5E130 8005D530 45020001 */  bc1fl      .L8005D538
/* 5E134 8005D534 00001021 */   addu      $v0, $zero, $zero
.L8005D538:
/* 5E138 8005D538 03E00008 */  jr         $ra
/* 5E13C 8005D53C 00000000 */   nop

glabel func_8005D540
/* 5E140 8005D540 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E144 8005D544 3C01800D */  lui        $at, %hi(D_800D48D0)
/* 5E148 8005D548 D42048D0 */  ldc1       $f0, %lo(D_800D48D0)($at)
/* 5E14C 8005D54C 4620103E */  c.le.d     $f2, $f0
/* 5E150 8005D550 00000000 */  nop
/* 5E154 8005D554 00000000 */  nop
/* 5E158 8005D558 45010010 */  bc1t       .L8005D59C
/* 5E15C 8005D55C 24020001 */   addiu     $v0, $zero, 0x1
/* 5E160 8005D560 3C01800D */  lui        $at, %hi(D_800D48D8)
/* 5E164 8005D564 D42048D8 */  ldc1       $f0, %lo(D_800D48D8)($at)
/* 5E168 8005D568 4620103E */  c.le.d     $f2, $f0
/* 5E16C 8005D56C 00000000 */  nop
/* 5E170 8005D570 00000000 */  nop
/* 5E174 8005D574 45030009 */  bc1tl      .L8005D59C
/* 5E178 8005D578 00001021 */   addu      $v0, $zero, $zero
/* 5E17C 8005D57C D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E180 8005D580 3C01800D */  lui        $at, %hi(D_800D48E0)
/* 5E184 8005D584 D42048E0 */  ldc1       $f0, %lo(D_800D48E0)($at)
/* 5E188 8005D588 4622003C */  c.lt.d     $f0, $f2
/* 5E18C 8005D58C 00000000 */  nop
/* 5E190 8005D590 00000000 */  nop
/* 5E194 8005D594 45020001 */  bc1fl      .L8005D59C
/* 5E198 8005D598 00001021 */   addu      $v0, $zero, $zero
.L8005D59C:
/* 5E19C 8005D59C 03E00008 */  jr         $ra
/* 5E1A0 8005D5A0 00000000 */   nop

glabel func_8005D5A4
/* 5E1A4 8005D5A4 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E1A8 8005D5A8 3C01800D */  lui        $at, %hi(D_800D48E8)
/* 5E1AC 8005D5AC D42048E8 */  ldc1       $f0, %lo(D_800D48E8)($at)
/* 5E1B0 8005D5B0 4622003E */  c.le.d     $f0, $f2
/* 5E1B4 8005D5B4 00000000 */  nop
/* 5E1B8 8005D5B8 00000000 */  nop
/* 5E1BC 8005D5BC 45010010 */  bc1t       .L8005D600
/* 5E1C0 8005D5C0 24020001 */   addiu     $v0, $zero, 0x1
/* 5E1C4 8005D5C4 3C01800D */  lui        $at, %hi(D_800D48F0)
/* 5E1C8 8005D5C8 D42048F0 */  ldc1       $f0, %lo(D_800D48F0)($at)
/* 5E1CC 8005D5CC 4622003E */  c.le.d     $f0, $f2
/* 5E1D0 8005D5D0 00000000 */  nop
/* 5E1D4 8005D5D4 00000000 */  nop
/* 5E1D8 8005D5D8 45030009 */  bc1tl      .L8005D600
/* 5E1DC 8005D5DC 00001021 */   addu      $v0, $zero, $zero
/* 5E1E0 8005D5E0 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E1E4 8005D5E4 3C01800D */  lui        $at, %hi(D_800D48F8)
/* 5E1E8 8005D5E8 D42048F8 */  ldc1       $f0, %lo(D_800D48F8)($at)
/* 5E1EC 8005D5EC 4620103C */  c.lt.d     $f2, $f0
/* 5E1F0 8005D5F0 00000000 */  nop
/* 5E1F4 8005D5F4 00000000 */  nop
/* 5E1F8 8005D5F8 45020001 */  bc1fl      .L8005D600
/* 5E1FC 8005D5FC 00001021 */   addu      $v0, $zero, $zero
.L8005D600:
/* 5E200 8005D600 03E00008 */  jr         $ra
/* 5E204 8005D604 00000000 */   nop

glabel func_8005D608
/* 5E208 8005D608 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E20C 8005D60C 3C01800D */  lui        $at, %hi(D_800D4900)
/* 5E210 8005D610 D4204900 */  ldc1       $f0, %lo(D_800D4900)($at)
/* 5E214 8005D614 4620103E */  c.le.d     $f2, $f0
/* 5E218 8005D618 00000000 */  nop
/* 5E21C 8005D61C 00000000 */  nop
/* 5E220 8005D620 45010010 */  bc1t       .L8005D664
/* 5E224 8005D624 24020001 */   addiu     $v0, $zero, 0x1
/* 5E228 8005D628 3C01800D */  lui        $at, %hi(D_800D4908)
/* 5E22C 8005D62C D4204908 */  ldc1       $f0, %lo(D_800D4908)($at)
/* 5E230 8005D630 4620103E */  c.le.d     $f2, $f0
/* 5E234 8005D634 00000000 */  nop
/* 5E238 8005D638 00000000 */  nop
/* 5E23C 8005D63C 45030009 */  bc1tl      .L8005D664
/* 5E240 8005D640 00001021 */   addu      $v0, $zero, $zero
/* 5E244 8005D644 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E248 8005D648 3C01800D */  lui        $at, %hi(D_800D4910)
/* 5E24C 8005D64C D4204910 */  ldc1       $f0, %lo(D_800D4910)($at)
/* 5E250 8005D650 4620103C */  c.lt.d     $f2, $f0
/* 5E254 8005D654 00000000 */  nop
/* 5E258 8005D658 00000000 */  nop
/* 5E25C 8005D65C 45020001 */  bc1fl      .L8005D664
/* 5E260 8005D660 00001021 */   addu      $v0, $zero, $zero
.L8005D664:
/* 5E264 8005D664 03E00008 */  jr         $ra
/* 5E268 8005D668 00000000 */   nop

glabel func_8005D66C
/* 5E26C 8005D66C D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E270 8005D670 3C01800D */  lui        $at, %hi(D_800D4918)
/* 5E274 8005D674 D4204918 */  ldc1       $f0, %lo(D_800D4918)($at)
/* 5E278 8005D678 4622003E */  c.le.d     $f0, $f2
/* 5E27C 8005D67C 00000000 */  nop
/* 5E280 8005D680 00000000 */  nop
/* 5E284 8005D684 45010026 */  bc1t       .L8005D720
/* 5E288 8005D688 24020001 */   addiu     $v0, $zero, 0x1
/* 5E28C 8005D68C D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E290 8005D690 3C01800D */  lui        $at, %hi(D_800D4920)
/* 5E294 8005D694 D4204920 */  ldc1       $f0, %lo(D_800D4920)($at)
/* 5E298 8005D698 4620103C */  c.lt.d     $f2, $f0
/* 5E29C 8005D69C 00000000 */  nop
/* 5E2A0 8005D6A0 45000008 */  bc1f       .L8005D6C4
/* 5E2A4 8005D6A4 00000000 */   nop
/* 5E2A8 8005D6A8 3C01800D */  lui        $at, %hi(D_800D4928)
/* 5E2AC 8005D6AC D4204928 */  ldc1       $f0, %lo(D_800D4928)($at)
/* 5E2B0 8005D6B0 4622003E */  c.le.d     $f0, $f2
/* 5E2B4 8005D6B4 00000000 */  nop
/* 5E2B8 8005D6B8 00000000 */  nop
/* 5E2BC 8005D6BC 45010018 */  bc1t       .L8005D720
/* 5E2C0 8005D6C0 00001021 */   addu      $v0, $zero, $zero
.L8005D6C4:
/* 5E2C4 8005D6C4 D4840000 */  ldc1       $f4, 0x0($a0)
/* 5E2C8 8005D6C8 3C01800D */  lui        $at, %hi(D_800D4930)
/* 5E2CC 8005D6CC D4204930 */  ldc1       $f0, %lo(D_800D4930)($at)
/* 5E2D0 8005D6D0 4620203C */  c.lt.d     $f4, $f0
/* 5E2D4 8005D6D4 00000000 */  nop
/* 5E2D8 8005D6D8 45000003 */  bc1f       .L8005D6E8
/* 5E2DC 8005D6DC 00000000 */   nop
/* 5E2E0 8005D6E0 080175C8 */  j          .L8005D720
/* 5E2E4 8005D6E4 24020001 */   addiu     $v0, $zero, 0x1
.L8005D6E8:
/* 5E2E8 8005D6E8 D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E2EC 8005D6EC 3C01800D */  lui        $at, %hi(D_800D4938)
/* 5E2F0 8005D6F0 D4224938 */  ldc1       $f2, %lo(D_800D4938)($at)
/* 5E2F4 8005D6F4 46200005 */  abs.d      $f0, $f0
/* 5E2F8 8005D6F8 46220002 */  mul.d      $f0, $f0, $f2
/* 5E2FC 8005D6FC 3C01800D */  lui        $at, %hi(D_800D4940)
/* 5E300 8005D700 D4224940 */  ldc1       $f2, %lo(D_800D4940)($at)
/* 5E304 8005D704 46222080 */  add.d      $f2, $f4, $f2
/* 5E308 8005D708 4620103C */  c.lt.d     $f2, $f0
/* 5E30C 8005D70C 00000000 */  nop
/* 5E310 8005D710 00000000 */  nop
/* 5E314 8005D714 45010002 */  bc1t       .L8005D720
/* 5E318 8005D718 24020001 */   addiu     $v0, $zero, 0x1
/* 5E31C 8005D71C 00001021 */  addu       $v0, $zero, $zero
.L8005D720:
/* 5E320 8005D720 03E00008 */  jr         $ra
/* 5E324 8005D724 00000000 */   nop

glabel func_8005D728
/* 5E328 8005D728 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E32C 8005D72C 3C01800D */  lui        $at, %hi(D_800D4948)
/* 5E330 8005D730 D4204948 */  ldc1       $f0, %lo(D_800D4948)($at)
/* 5E334 8005D734 4620103E */  c.le.d     $f2, $f0
/* 5E338 8005D738 00000000 */  nop
/* 5E33C 8005D73C 00000000 */  nop
/* 5E340 8005D740 45010026 */  bc1t       .L8005D7DC
/* 5E344 8005D744 24020001 */   addiu     $v0, $zero, 0x1
/* 5E348 8005D748 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E34C 8005D74C 3C01800D */  lui        $at, %hi(D_800D4950)
/* 5E350 8005D750 D4204950 */  ldc1       $f0, %lo(D_800D4950)($at)
/* 5E354 8005D754 4620103C */  c.lt.d     $f2, $f0
/* 5E358 8005D758 00000000 */  nop
/* 5E35C 8005D75C 45000008 */  bc1f       .L8005D780
/* 5E360 8005D760 00000000 */   nop
/* 5E364 8005D764 3C01800D */  lui        $at, %hi(D_800D4958)
/* 5E368 8005D768 D4204958 */  ldc1       $f0, %lo(D_800D4958)($at)
/* 5E36C 8005D76C 4622003E */  c.le.d     $f0, $f2
/* 5E370 8005D770 00000000 */  nop
/* 5E374 8005D774 00000000 */  nop
/* 5E378 8005D778 45010018 */  bc1t       .L8005D7DC
/* 5E37C 8005D77C 00001021 */   addu      $v0, $zero, $zero
.L8005D780:
/* 5E380 8005D780 D4840000 */  ldc1       $f4, 0x0($a0)
/* 5E384 8005D784 3C01800D */  lui        $at, %hi(D_800D4960)
/* 5E388 8005D788 D4204960 */  ldc1       $f0, %lo(D_800D4960)($at)
/* 5E38C 8005D78C 4624003E */  c.le.d     $f0, $f4
/* 5E390 8005D790 00000000 */  nop
/* 5E394 8005D794 45000003 */  bc1f       .L8005D7A4
/* 5E398 8005D798 00000000 */   nop
/* 5E39C 8005D79C 080175F7 */  j          .L8005D7DC
/* 5E3A0 8005D7A0 24020001 */   addiu     $v0, $zero, 0x1
.L8005D7A4:
/* 5E3A4 8005D7A4 D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E3A8 8005D7A8 3C01800D */  lui        $at, %hi(D_800D4968)
/* 5E3AC 8005D7AC D4224968 */  ldc1       $f2, %lo(D_800D4968)($at)
/* 5E3B0 8005D7B0 46200005 */  abs.d      $f0, $f0
/* 5E3B4 8005D7B4 46220002 */  mul.d      $f0, $f0, $f2
/* 5E3B8 8005D7B8 3C01800D */  lui        $at, %hi(D_800D4970)
/* 5E3BC 8005D7BC D4224970 */  ldc1       $f2, %lo(D_800D4970)($at)
/* 5E3C0 8005D7C0 46241081 */  sub.d      $f2, $f2, $f4
/* 5E3C4 8005D7C4 4620103C */  c.lt.d     $f2, $f0
/* 5E3C8 8005D7C8 00000000 */  nop
/* 5E3CC 8005D7CC 00000000 */  nop
/* 5E3D0 8005D7D0 45010002 */  bc1t       .L8005D7DC
/* 5E3D4 8005D7D4 24020001 */   addiu     $v0, $zero, 0x1
/* 5E3D8 8005D7D8 00001021 */  addu       $v0, $zero, $zero
.L8005D7DC:
/* 5E3DC 8005D7DC 03E00008 */  jr         $ra
/* 5E3E0 8005D7E0 00000000 */   nop

glabel func_8005D7E4
/* 5E3E4 8005D7E4 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E3E8 8005D7E8 3C01800D */  lui        $at, %hi(D_800D4978)
/* 5E3EC 8005D7EC D4204978 */  ldc1       $f0, %lo(D_800D4978)($at)
/* 5E3F0 8005D7F0 46220101 */  sub.d      $f4, $f0, $f2
/* 5E3F4 8005D7F4 44803000 */  mtc1       $zero, $f6
/* 5E3F8 8005D7F8 44803800 */  mtc1       $zero, $f7
/* 5E3FC 8005D7FC 00000000 */  nop
/* 5E400 8005D800 4624303C */  c.lt.d     $f6, $f4
/* 5E404 8005D804 00000000 */  nop
/* 5E408 8005D808 4500000B */  bc1f       .L8005D838
/* 5E40C 8005D80C 00000000 */   nop
/* 5E410 8005D810 3C03802F */  lui        $v1, %hi(D_802F1908)
/* 5E414 8005D814 24631908 */  addiu      $v1, $v1, %lo(D_802F1908)
/* 5E418 8005D818 D4620000 */  ldc1       $f2, 0x0($v1)
/* 5E41C 8005D81C 3C02802D */  lui        $v0, %hi(D_802D2648)
/* 5E420 8005D820 24422648 */  addiu      $v0, $v0, %lo(D_802D2648)
/* 5E424 8005D824 46241081 */  sub.d      $f2, $f2, $f4
/* 5E428 8005D828 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5E42C 8005D82C 46240001 */  sub.d      $f0, $f0, $f4
/* 5E430 8005D830 F4620000 */  sdc1       $f2, 0x0($v1)
/* 5E434 8005D834 F4400000 */  sdc1       $f0, 0x0($v0)
.L8005D838:
/* 5E438 8005D838 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E43C 8005D83C 3C01800D */  lui        $at, %hi(D_800D4980)
/* 5E440 8005D840 D4204980 */  ldc1       $f0, %lo(D_800D4980)($at)
/* 5E444 8005D844 46220101 */  sub.d      $f4, $f0, $f2
/* 5E448 8005D848 4624303C */  c.lt.d     $f6, $f4
/* 5E44C 8005D84C 00000000 */  nop
/* 5E450 8005D850 4500000B */  bc1f       .L8005D880
/* 5E454 8005D854 00000000 */   nop
/* 5E458 8005D858 3C03802F */  lui        $v1, %hi(D_802F1910)
/* 5E45C 8005D85C 24631910 */  addiu      $v1, $v1, %lo(D_802F1910)
/* 5E460 8005D860 D4620000 */  ldc1       $f2, 0x0($v1)
/* 5E464 8005D864 3C02802D */  lui        $v0, %hi(D_802D2650)
/* 5E468 8005D868 24422650 */  addiu      $v0, $v0, %lo(D_802D2650)
/* 5E46C 8005D86C 46241081 */  sub.d      $f2, $f2, $f4
/* 5E470 8005D870 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5E474 8005D874 46240001 */  sub.d      $f0, $f0, $f4
/* 5E478 8005D878 F4620000 */  sdc1       $f2, 0x0($v1)
/* 5E47C 8005D87C F4400000 */  sdc1       $f0, 0x0($v0)
.L8005D880:
/* 5E480 8005D880 3C03802D */  lui        $v1, %hi(D_802D2648)
/* 5E484 8005D884 24632648 */  addiu      $v1, $v1, %lo(D_802D2648)
/* 5E488 8005D888 D4600000 */  ldc1       $f0, 0x0($v1)
/* 5E48C 8005D88C D4640008 */  ldc1       $f4, 0x8($v1)
/* 5E490 8005D890 4620203C */  c.lt.d     $f4, $f0
/* 5E494 8005D894 00000000 */  nop
/* 5E498 8005D898 00000000 */  nop
/* 5E49C 8005D89C 4500000C */  bc1f       .L8005D8D0
/* 5E4A0 8005D8A0 24020001 */   addiu     $v0, $zero, 0x1
/* 5E4A4 8005D8A4 D4A00020 */  ldc1       $f0, 0x20($a1)
/* 5E4A8 8005D8A8 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E4AC 8005D8AC 46220001 */  sub.d      $f0, $f0, $f2
/* 5E4B0 8005D8B0 F4600000 */  sdc1       $f0, 0x0($v1)
/* 5E4B4 8005D8B4 D4A20028 */  ldc1       $f2, 0x28($a1)
/* 5E4B8 8005D8B8 D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E4BC 8005D8BC 46201081 */  sub.d      $f2, $f2, $f0
/* 5E4C0 8005D8C0 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5E4C4 8005D8C4 A022ED8C */  sb         $v0, %lo(D_802AED8C)($at)
/* 5E4C8 8005D8C8 08017660 */  j          .L8005D980
/* 5E4CC 8005D8CC F4620008 */   sdc1      $f2, 0x8($v1)
.L8005D8D0:
/* 5E4D0 8005D8D0 3C06802F */  lui        $a2, %hi(D_802F1908)
/* 5E4D4 8005D8D4 24C61908 */  addiu      $a2, $a2, %lo(D_802F1908)
/* 5E4D8 8005D8D8 D4C20000 */  ldc1       $f2, 0x0($a2)
/* 5E4DC 8005D8DC D4C00008 */  ldc1       $f0, 0x8($a2)
/* 5E4E0 8005D8E0 4620103C */  c.lt.d     $f2, $f0
/* 5E4E4 8005D8E4 00000000 */  nop
/* 5E4E8 8005D8E8 00000000 */  nop
/* 5E4EC 8005D8EC 4500000C */  bc1f       .L8005D920
/* 5E4F0 8005D8F0 24020003 */   addiu     $v0, $zero, 0x3
/* 5E4F4 8005D8F4 D4A00030 */  ldc1       $f0, 0x30($a1)
/* 5E4F8 8005D8F8 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E4FC 8005D8FC 46220001 */  sub.d      $f0, $f0, $f2
/* 5E500 8005D900 F4C00000 */  sdc1       $f0, 0x0($a2)
/* 5E504 8005D904 D4A20038 */  ldc1       $f2, 0x38($a1)
/* 5E508 8005D908 D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E50C 8005D90C 46201081 */  sub.d      $f2, $f2, $f0
/* 5E510 8005D910 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5E514 8005D914 A022ED8C */  sb         $v0, %lo(D_802AED8C)($at)
/* 5E518 8005D918 08017660 */  j          .L8005D980
/* 5E51C 8005D91C F4C20008 */   sdc1      $f2, 0x8($a2)
.L8005D920:
/* 5E520 8005D920 4624303C */  c.lt.d     $f6, $f4
/* 5E524 8005D924 00000000 */  nop
/* 5E528 8005D928 45000015 */  bc1f       .L8005D980
/* 5E52C 8005D92C 00000000 */   nop
/* 5E530 8005D930 4622303C */  c.lt.d     $f6, $f2
/* 5E534 8005D934 00000000 */  nop
/* 5E538 8005D938 45000011 */  bc1f       .L8005D980
/* 5E53C 8005D93C 00000000 */   nop
/* 5E540 8005D940 D4A00020 */  ldc1       $f0, 0x20($a1)
/* 5E544 8005D944 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E548 8005D948 46220001 */  sub.d      $f0, $f0, $f2
/* 5E54C 8005D94C F4600000 */  sdc1       $f0, 0x0($v1)
/* 5E550 8005D950 D4A00028 */  ldc1       $f0, 0x28($a1)
/* 5E554 8005D954 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E558 8005D958 46220001 */  sub.d      $f0, $f0, $f2
/* 5E55C 8005D95C F4600008 */  sdc1       $f0, 0x8($v1)
/* 5E560 8005D960 D4A00030 */  ldc1       $f0, 0x30($a1)
/* 5E564 8005D964 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E568 8005D968 46220001 */  sub.d      $f0, $f0, $f2
/* 5E56C 8005D96C F4C00000 */  sdc1       $f0, 0x0($a2)
/* 5E570 8005D970 D4A00038 */  ldc1       $f0, 0x38($a1)
/* 5E574 8005D974 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E578 8005D978 46220001 */  sub.d      $f0, $f0, $f2
/* 5E57C 8005D97C F4C00008 */  sdc1       $f0, 0x8($a2)
.L8005D980:
/* 5E580 8005D980 03E00008 */  jr         $ra
/* 5E584 8005D984 00000000 */   nop

glabel func_8005D988
/* 5E588 8005D988 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E58C 8005D98C 3C01800D */  lui        $at, %hi(D_800D4988)
/* 5E590 8005D990 D4204988 */  ldc1       $f0, %lo(D_800D4988)($at)
/* 5E594 8005D994 46201101 */  sub.d      $f4, $f2, $f0
/* 5E598 8005D998 44804000 */  mtc1       $zero, $f8
/* 5E59C 8005D99C 44804800 */  mtc1       $zero, $f9
/* 5E5A0 8005D9A0 00000000 */  nop
/* 5E5A4 8005D9A4 4624403C */  c.lt.d     $f8, $f4
/* 5E5A8 8005D9A8 00000000 */  nop
/* 5E5AC 8005D9AC 4500000B */  bc1f       .L8005D9DC
/* 5E5B0 8005D9B0 00000000 */   nop
/* 5E5B4 8005D9B4 3C03802F */  lui        $v1, %hi(D_802F1908)
/* 5E5B8 8005D9B8 24631908 */  addiu      $v1, $v1, %lo(D_802F1908)
/* 5E5BC 8005D9BC D4620000 */  ldc1       $f2, 0x0($v1)
/* 5E5C0 8005D9C0 3C02802D */  lui        $v0, %hi(D_802D2648)
/* 5E5C4 8005D9C4 24422648 */  addiu      $v0, $v0, %lo(D_802D2648)
/* 5E5C8 8005D9C8 46241080 */  add.d      $f2, $f2, $f4
/* 5E5CC 8005D9CC D4400000 */  ldc1       $f0, 0x0($v0)
/* 5E5D0 8005D9D0 46240000 */  add.d      $f0, $f0, $f4
/* 5E5D4 8005D9D4 F4620000 */  sdc1       $f2, 0x0($v1)
/* 5E5D8 8005D9D8 F4400000 */  sdc1       $f0, 0x0($v0)
.L8005D9DC:
/* 5E5DC 8005D9DC D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E5E0 8005D9E0 3C01800D */  lui        $at, %hi(D_800D4990)
/* 5E5E4 8005D9E4 D4204990 */  ldc1       $f0, %lo(D_800D4990)($at)
/* 5E5E8 8005D9E8 46220101 */  sub.d      $f4, $f0, $f2
/* 5E5EC 8005D9EC 4624403C */  c.lt.d     $f8, $f4
/* 5E5F0 8005D9F0 00000000 */  nop
/* 5E5F4 8005D9F4 4500000B */  bc1f       .L8005DA24
/* 5E5F8 8005D9F8 00000000 */   nop
/* 5E5FC 8005D9FC 3C03802F */  lui        $v1, %hi(D_802F1910)
/* 5E600 8005DA00 24631910 */  addiu      $v1, $v1, %lo(D_802F1910)
/* 5E604 8005DA04 D4620000 */  ldc1       $f2, 0x0($v1)
/* 5E608 8005DA08 3C02802D */  lui        $v0, %hi(D_802D2650)
/* 5E60C 8005DA0C 24422650 */  addiu      $v0, $v0, %lo(D_802D2650)
/* 5E610 8005DA10 46241081 */  sub.d      $f2, $f2, $f4
/* 5E614 8005DA14 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5E618 8005DA18 46240001 */  sub.d      $f0, $f0, $f4
/* 5E61C 8005DA1C F4620000 */  sdc1       $f2, 0x0($v1)
/* 5E620 8005DA20 F4400000 */  sdc1       $f0, 0x0($v0)
.L8005DA24:
/* 5E624 8005DA24 3C06802D */  lui        $a2, %hi(D_802D2650)
/* 5E628 8005DA28 24C62650 */  addiu      $a2, $a2, %lo(D_802D2650)
/* 5E62C 8005DA2C D4C00000 */  ldc1       $f0, 0x0($a2)
/* 5E630 8005DA30 3C01802D */  lui        $at, %hi(D_802D2648)
/* 5E634 8005DA34 D4262648 */  ldc1       $f6, %lo(D_802D2648)($at)
/* 5E638 8005DA38 46200007 */  neg.d      $f0, $f0
/* 5E63C 8005DA3C 4626003C */  c.lt.d     $f0, $f6
/* 5E640 8005DA40 00000000 */  nop
/* 5E644 8005DA44 00000000 */  nop
/* 5E648 8005DA48 4500000D */  bc1f       .L8005DA80
/* 5E64C 8005DA4C 24020003 */   addiu     $v0, $zero, 0x3
/* 5E650 8005DA50 D4A00020 */  ldc1       $f0, 0x20($a1)
/* 5E654 8005DA54 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E658 8005DA58 46220001 */  sub.d      $f0, $f0, $f2
/* 5E65C 8005DA5C 3C01802D */  lui        $at, %hi(D_802D2648)
/* 5E660 8005DA60 F4202648 */  sdc1       $f0, %lo(D_802D2648)($at)
/* 5E664 8005DA64 D4A20028 */  ldc1       $f2, 0x28($a1)
/* 5E668 8005DA68 D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E66C 8005DA6C 46201081 */  sub.d      $f2, $f2, $f0
/* 5E670 8005DA70 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5E674 8005DA74 A022ED8C */  sb         $v0, %lo(D_802AED8C)($at)
/* 5E678 8005DA78 080176CE */  j          .L8005DB38
/* 5E67C 8005DA7C F4C20000 */   sdc1      $f2, 0x0($a2)
.L8005DA80:
/* 5E680 8005DA80 3C03802F */  lui        $v1, %hi(D_802F1910)
/* 5E684 8005DA84 24631910 */  addiu      $v1, $v1, %lo(D_802F1910)
/* 5E688 8005DA88 D4640000 */  ldc1       $f4, 0x0($v1)
/* 5E68C 8005DA8C D462FFF8 */  ldc1       $f2, -0x8($v1)
/* 5E690 8005DA90 46202007 */  neg.d      $f0, $f4
/* 5E694 8005DA94 4620103C */  c.lt.d     $f2, $f0
/* 5E698 8005DA98 00000000 */  nop
/* 5E69C 8005DA9C 00000000 */  nop
/* 5E6A0 8005DAA0 4500000C */  bc1f       .L8005DAD4
/* 5E6A4 8005DAA4 24020002 */   addiu     $v0, $zero, 0x2
/* 5E6A8 8005DAA8 D4A00030 */  ldc1       $f0, 0x30($a1)
/* 5E6AC 8005DAAC D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E6B0 8005DAB0 46220001 */  sub.d      $f0, $f0, $f2
/* 5E6B4 8005DAB4 F460FFF8 */  sdc1       $f0, -0x8($v1)
/* 5E6B8 8005DAB8 D4A20038 */  ldc1       $f2, 0x38($a1)
/* 5E6BC 8005DABC D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E6C0 8005DAC0 46201081 */  sub.d      $f2, $f2, $f0
/* 5E6C4 8005DAC4 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5E6C8 8005DAC8 A022ED8C */  sb         $v0, %lo(D_802AED8C)($at)
/* 5E6CC 8005DACC 080176CE */  j          .L8005DB38
/* 5E6D0 8005DAD0 F4620000 */   sdc1      $f2, 0x0($v1)
.L8005DAD4:
/* 5E6D4 8005DAD4 4628303C */  c.lt.d     $f6, $f8
/* 5E6D8 8005DAD8 00000000 */  nop
/* 5E6DC 8005DADC 45000016 */  bc1f       .L8005DB38
/* 5E6E0 8005DAE0 00000000 */   nop
/* 5E6E4 8005DAE4 4624403C */  c.lt.d     $f8, $f4
/* 5E6E8 8005DAE8 00000000 */  nop
/* 5E6EC 8005DAEC 45000012 */  bc1f       .L8005DB38
/* 5E6F0 8005DAF0 00000000 */   nop
/* 5E6F4 8005DAF4 D4A00020 */  ldc1       $f0, 0x20($a1)
/* 5E6F8 8005DAF8 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E6FC 8005DAFC 46220001 */  sub.d      $f0, $f0, $f2
/* 5E700 8005DB00 3C01802D */  lui        $at, %hi(D_802D2648)
/* 5E704 8005DB04 F4202648 */  sdc1       $f0, %lo(D_802D2648)($at)
/* 5E708 8005DB08 D4A00028 */  ldc1       $f0, 0x28($a1)
/* 5E70C 8005DB0C D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E710 8005DB10 46220001 */  sub.d      $f0, $f0, $f2
/* 5E714 8005DB14 F4C00000 */  sdc1       $f0, 0x0($a2)
/* 5E718 8005DB18 D4A00030 */  ldc1       $f0, 0x30($a1)
/* 5E71C 8005DB1C D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E720 8005DB20 46220001 */  sub.d      $f0, $f0, $f2
/* 5E724 8005DB24 F460FFF8 */  sdc1       $f0, -0x8($v1)
/* 5E728 8005DB28 D4A00038 */  ldc1       $f0, 0x38($a1)
/* 5E72C 8005DB2C D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E730 8005DB30 46220001 */  sub.d      $f0, $f0, $f2
/* 5E734 8005DB34 F4600000 */  sdc1       $f0, 0x0($v1)
.L8005DB38:
/* 5E738 8005DB38 03E00008 */  jr         $ra
/* 5E73C 8005DB3C 00000000 */   nop

glabel func_8005DB40
/* 5E740 8005DB40 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E744 8005DB44 3C01800D */  lui        $at, %hi(D_800D4998)
/* 5E748 8005DB48 D4204998 */  ldc1       $f0, %lo(D_800D4998)($at)
/* 5E74C 8005DB4C 46220101 */  sub.d      $f4, $f0, $f2
/* 5E750 8005DB50 44803000 */  mtc1       $zero, $f6
/* 5E754 8005DB54 44803800 */  mtc1       $zero, $f7
/* 5E758 8005DB58 00000000 */  nop
/* 5E75C 8005DB5C 4624303C */  c.lt.d     $f6, $f4
/* 5E760 8005DB60 00000000 */  nop
/* 5E764 8005DB64 4500000B */  bc1f       .L8005DB94
/* 5E768 8005DB68 00000000 */   nop
/* 5E76C 8005DB6C 3C03802F */  lui        $v1, %hi(D_802F1908)
/* 5E770 8005DB70 24631908 */  addiu      $v1, $v1, %lo(D_802F1908)
/* 5E774 8005DB74 D4620000 */  ldc1       $f2, 0x0($v1)
/* 5E778 8005DB78 3C02802D */  lui        $v0, %hi(D_802D2648)
/* 5E77C 8005DB7C 24422648 */  addiu      $v0, $v0, %lo(D_802D2648)
/* 5E780 8005DB80 46241081 */  sub.d      $f2, $f2, $f4
/* 5E784 8005DB84 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5E788 8005DB88 46240001 */  sub.d      $f0, $f0, $f4
/* 5E78C 8005DB8C F4620000 */  sdc1       $f2, 0x0($v1)
/* 5E790 8005DB90 F4400000 */  sdc1       $f0, 0x0($v0)
.L8005DB94:
/* 5E794 8005DB94 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E798 8005DB98 3C01800D */  lui        $at, %hi(D_800D49A0)
/* 5E79C 8005DB9C D42049A0 */  ldc1       $f0, %lo(D_800D49A0)($at)
/* 5E7A0 8005DBA0 46201101 */  sub.d      $f4, $f2, $f0
/* 5E7A4 8005DBA4 4624303C */  c.lt.d     $f6, $f4
/* 5E7A8 8005DBA8 00000000 */  nop
/* 5E7AC 8005DBAC 4500000B */  bc1f       .L8005DBDC
/* 5E7B0 8005DBB0 00000000 */   nop
/* 5E7B4 8005DBB4 3C03802F */  lui        $v1, %hi(D_802F1910)
/* 5E7B8 8005DBB8 24631910 */  addiu      $v1, $v1, %lo(D_802F1910)
/* 5E7BC 8005DBBC D4620000 */  ldc1       $f2, 0x0($v1)
/* 5E7C0 8005DBC0 3C02802D */  lui        $v0, %hi(D_802D2650)
/* 5E7C4 8005DBC4 24422650 */  addiu      $v0, $v0, %lo(D_802D2650)
/* 5E7C8 8005DBC8 46241080 */  add.d      $f2, $f2, $f4
/* 5E7CC 8005DBCC D4400000 */  ldc1       $f0, 0x0($v0)
/* 5E7D0 8005DBD0 46240000 */  add.d      $f0, $f0, $f4
/* 5E7D4 8005DBD4 F4620000 */  sdc1       $f2, 0x0($v1)
/* 5E7D8 8005DBD8 F4400000 */  sdc1       $f0, 0x0($v0)
.L8005DBDC:
/* 5E7DC 8005DBDC 3C03802D */  lui        $v1, %hi(D_802D2648)
/* 5E7E0 8005DBE0 24632648 */  addiu      $v1, $v1, %lo(D_802D2648)
/* 5E7E4 8005DBE4 D4640000 */  ldc1       $f4, 0x0($v1)
/* 5E7E8 8005DBE8 D4620008 */  ldc1       $f2, 0x8($v1)
/* 5E7EC 8005DBEC 46202007 */  neg.d      $f0, $f4
/* 5E7F0 8005DBF0 4620103C */  c.lt.d     $f2, $f0
/* 5E7F4 8005DBF4 00000000 */  nop
/* 5E7F8 8005DBF8 00000000 */  nop
/* 5E7FC 8005DBFC 4500000C */  bc1f       .L8005DC30
/* 5E800 8005DC00 24020004 */   addiu     $v0, $zero, 0x4
/* 5E804 8005DC04 D4A00020 */  ldc1       $f0, 0x20($a1)
/* 5E808 8005DC08 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E80C 8005DC0C 46220001 */  sub.d      $f0, $f0, $f2
/* 5E810 8005DC10 F4600000 */  sdc1       $f0, 0x0($v1)
/* 5E814 8005DC14 D4A20028 */  ldc1       $f2, 0x28($a1)
/* 5E818 8005DC18 D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E81C 8005DC1C 46201081 */  sub.d      $f2, $f2, $f0
/* 5E820 8005DC20 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5E824 8005DC24 A022ED8C */  sb         $v0, %lo(D_802AED8C)($at)
/* 5E828 8005DC28 08017739 */  j          .L8005DCE4
/* 5E82C 8005DC2C F4620008 */   sdc1      $f2, 0x8($v1)
.L8005DC30:
/* 5E830 8005DC30 3C06802F */  lui        $a2, %hi(D_802F1908)
/* 5E834 8005DC34 24C61908 */  addiu      $a2, $a2, %lo(D_802F1908)
/* 5E838 8005DC38 D4C00000 */  ldc1       $f0, 0x0($a2)
/* 5E83C 8005DC3C D4C20008 */  ldc1       $f2, 0x8($a2)
/* 5E840 8005DC40 46200007 */  neg.d      $f0, $f0
/* 5E844 8005DC44 4622003C */  c.lt.d     $f0, $f2
/* 5E848 8005DC48 00000000 */  nop
/* 5E84C 8005DC4C 00000000 */  nop
/* 5E850 8005DC50 4500000C */  bc1f       .L8005DC84
/* 5E854 8005DC54 24020001 */   addiu     $v0, $zero, 0x1
/* 5E858 8005DC58 D4A00030 */  ldc1       $f0, 0x30($a1)
/* 5E85C 8005DC5C D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E860 8005DC60 46220001 */  sub.d      $f0, $f0, $f2
/* 5E864 8005DC64 F4C00000 */  sdc1       $f0, 0x0($a2)
/* 5E868 8005DC68 D4A20038 */  ldc1       $f2, 0x38($a1)
/* 5E86C 8005DC6C D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E870 8005DC70 46201081 */  sub.d      $f2, $f2, $f0
/* 5E874 8005DC74 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5E878 8005DC78 A022ED8C */  sb         $v0, %lo(D_802AED8C)($at)
/* 5E87C 8005DC7C 08017739 */  j          .L8005DCE4
/* 5E880 8005DC80 F4C20008 */   sdc1      $f2, 0x8($a2)
.L8005DC84:
/* 5E884 8005DC84 4624303C */  c.lt.d     $f6, $f4
/* 5E888 8005DC88 00000000 */  nop
/* 5E88C 8005DC8C 45000015 */  bc1f       .L8005DCE4
/* 5E890 8005DC90 00000000 */   nop
/* 5E894 8005DC94 4626103C */  c.lt.d     $f2, $f6
/* 5E898 8005DC98 00000000 */  nop
/* 5E89C 8005DC9C 45000011 */  bc1f       .L8005DCE4
/* 5E8A0 8005DCA0 00000000 */   nop
/* 5E8A4 8005DCA4 D4A00020 */  ldc1       $f0, 0x20($a1)
/* 5E8A8 8005DCA8 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E8AC 8005DCAC 46220001 */  sub.d      $f0, $f0, $f2
/* 5E8B0 8005DCB0 F4600000 */  sdc1       $f0, 0x0($v1)
/* 5E8B4 8005DCB4 D4A00028 */  ldc1       $f0, 0x28($a1)
/* 5E8B8 8005DCB8 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E8BC 8005DCBC 46220001 */  sub.d      $f0, $f0, $f2
/* 5E8C0 8005DCC0 F4600008 */  sdc1       $f0, 0x8($v1)
/* 5E8C4 8005DCC4 D4A00030 */  ldc1       $f0, 0x30($a1)
/* 5E8C8 8005DCC8 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E8CC 8005DCCC 46220001 */  sub.d      $f0, $f0, $f2
/* 5E8D0 8005DCD0 F4C00000 */  sdc1       $f0, 0x0($a2)
/* 5E8D4 8005DCD4 D4A00038 */  ldc1       $f0, 0x38($a1)
/* 5E8D8 8005DCD8 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E8DC 8005DCDC 46220001 */  sub.d      $f0, $f0, $f2
/* 5E8E0 8005DCE0 F4C00008 */  sdc1       $f0, 0x8($a2)
.L8005DCE4:
/* 5E8E4 8005DCE4 03E00008 */  jr         $ra
/* 5E8E8 8005DCE8 00000000 */   nop

glabel func_8005DCEC
/* 5E8EC 8005DCEC D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E8F0 8005DCF0 3C01800D */  lui        $at, %hi(D_800D49A8)
/* 5E8F4 8005DCF4 D42049A8 */  ldc1       $f0, %lo(D_800D49A8)($at)
/* 5E8F8 8005DCF8 46201101 */  sub.d      $f4, $f2, $f0
/* 5E8FC 8005DCFC 44803000 */  mtc1       $zero, $f6
/* 5E900 8005DD00 44803800 */  mtc1       $zero, $f7
/* 5E904 8005DD04 00000000 */  nop
/* 5E908 8005DD08 4624303C */  c.lt.d     $f6, $f4
/* 5E90C 8005DD0C 00000000 */  nop
/* 5E910 8005DD10 4500000B */  bc1f       .L8005DD40
/* 5E914 8005DD14 00000000 */   nop
/* 5E918 8005DD18 3C03802F */  lui        $v1, %hi(D_802F1908)
/* 5E91C 8005DD1C 24631908 */  addiu      $v1, $v1, %lo(D_802F1908)
/* 5E920 8005DD20 D4620000 */  ldc1       $f2, 0x0($v1)
/* 5E924 8005DD24 3C02802D */  lui        $v0, %hi(D_802D2648)
/* 5E928 8005DD28 24422648 */  addiu      $v0, $v0, %lo(D_802D2648)
/* 5E92C 8005DD2C 46241080 */  add.d      $f2, $f2, $f4
/* 5E930 8005DD30 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5E934 8005DD34 46240000 */  add.d      $f0, $f0, $f4
/* 5E938 8005DD38 F4620000 */  sdc1       $f2, 0x0($v1)
/* 5E93C 8005DD3C F4400000 */  sdc1       $f0, 0x0($v0)
.L8005DD40:
/* 5E940 8005DD40 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5E944 8005DD44 3C01800D */  lui        $at, %hi(D_800D49B0)
/* 5E948 8005DD48 D42049B0 */  ldc1       $f0, %lo(D_800D49B0)($at)
/* 5E94C 8005DD4C 46201101 */  sub.d      $f4, $f2, $f0
/* 5E950 8005DD50 4624303C */  c.lt.d     $f6, $f4
/* 5E954 8005DD54 00000000 */  nop
/* 5E958 8005DD58 4500000B */  bc1f       .L8005DD88
/* 5E95C 8005DD5C 00000000 */   nop
/* 5E960 8005DD60 3C03802F */  lui        $v1, %hi(D_802F1910)
/* 5E964 8005DD64 24631910 */  addiu      $v1, $v1, %lo(D_802F1910)
/* 5E968 8005DD68 D4620000 */  ldc1       $f2, 0x0($v1)
/* 5E96C 8005DD6C 3C02802D */  lui        $v0, %hi(D_802D2650)
/* 5E970 8005DD70 24422650 */  addiu      $v0, $v0, %lo(D_802D2650)
/* 5E974 8005DD74 46241080 */  add.d      $f2, $f2, $f4
/* 5E978 8005DD78 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5E97C 8005DD7C 46240000 */  add.d      $f0, $f0, $f4
/* 5E980 8005DD80 F4620000 */  sdc1       $f2, 0x0($v1)
/* 5E984 8005DD84 F4400000 */  sdc1       $f0, 0x0($v0)
.L8005DD88:
/* 5E988 8005DD88 3C03802D */  lui        $v1, %hi(D_802D2648)
/* 5E98C 8005DD8C 24632648 */  addiu      $v1, $v1, %lo(D_802D2648)
/* 5E990 8005DD90 D4600000 */  ldc1       $f0, 0x0($v1)
/* 5E994 8005DD94 D4640008 */  ldc1       $f4, 0x8($v1)
/* 5E998 8005DD98 4624003C */  c.lt.d     $f0, $f4
/* 5E99C 8005DD9C 00000000 */  nop
/* 5E9A0 8005DDA0 00000000 */  nop
/* 5E9A4 8005DDA4 4500000C */  bc1f       .L8005DDD8
/* 5E9A8 8005DDA8 24020002 */   addiu     $v0, $zero, 0x2
/* 5E9AC 8005DDAC D4A00020 */  ldc1       $f0, 0x20($a1)
/* 5E9B0 8005DDB0 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5E9B4 8005DDB4 46220001 */  sub.d      $f0, $f0, $f2
/* 5E9B8 8005DDB8 F4600000 */  sdc1       $f0, 0x0($v1)
/* 5E9BC 8005DDBC D4A20028 */  ldc1       $f2, 0x28($a1)
/* 5E9C0 8005DDC0 D4800008 */  ldc1       $f0, 0x8($a0)
/* 5E9C4 8005DDC4 46201081 */  sub.d      $f2, $f2, $f0
/* 5E9C8 8005DDC8 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5E9CC 8005DDCC A022ED8C */  sb         $v0, %lo(D_802AED8C)($at)
/* 5E9D0 8005DDD0 080177A2 */  j          .L8005DE88
/* 5E9D4 8005DDD4 F4620008 */   sdc1      $f2, 0x8($v1)
.L8005DDD8:
/* 5E9D8 8005DDD8 3C06802F */  lui        $a2, %hi(D_802F1908)
/* 5E9DC 8005DDDC 24C61908 */  addiu      $a2, $a2, %lo(D_802F1908)
/* 5E9E0 8005DDE0 D4C20000 */  ldc1       $f2, 0x0($a2)
/* 5E9E4 8005DDE4 D4C00008 */  ldc1       $f0, 0x8($a2)
/* 5E9E8 8005DDE8 4622003C */  c.lt.d     $f0, $f2
/* 5E9EC 8005DDEC 00000000 */  nop
/* 5E9F0 8005DDF0 00000000 */  nop
/* 5E9F4 8005DDF4 4500000C */  bc1f       .L8005DE28
/* 5E9F8 8005DDF8 24020004 */   addiu     $v0, $zero, 0x4
/* 5E9FC 8005DDFC D4A00030 */  ldc1       $f0, 0x30($a1)
/* 5EA00 8005DE00 D4820000 */  ldc1       $f2, 0x0($a0)
/* 5EA04 8005DE04 46220001 */  sub.d      $f0, $f0, $f2
/* 5EA08 8005DE08 F4C00000 */  sdc1       $f0, 0x0($a2)
/* 5EA0C 8005DE0C D4A20038 */  ldc1       $f2, 0x38($a1)
/* 5EA10 8005DE10 D4800008 */  ldc1       $f0, 0x8($a0)
/* 5EA14 8005DE14 46201081 */  sub.d      $f2, $f2, $f0
/* 5EA18 8005DE18 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5EA1C 8005DE1C A022ED8C */  sb         $v0, %lo(D_802AED8C)($at)
/* 5EA20 8005DE20 080177A2 */  j          .L8005DE88
/* 5EA24 8005DE24 F4C20008 */   sdc1      $f2, 0x8($a2)
.L8005DE28:
/* 5EA28 8005DE28 4626203C */  c.lt.d     $f4, $f6
/* 5EA2C 8005DE2C 00000000 */  nop
/* 5EA30 8005DE30 45000015 */  bc1f       .L8005DE88
/* 5EA34 8005DE34 00000000 */   nop
/* 5EA38 8005DE38 4626103C */  c.lt.d     $f2, $f6
/* 5EA3C 8005DE3C 00000000 */  nop
/* 5EA40 8005DE40 45000011 */  bc1f       .L8005DE88
/* 5EA44 8005DE44 00000000 */   nop
/* 5EA48 8005DE48 D4A00020 */  ldc1       $f0, 0x20($a1)
/* 5EA4C 8005DE4C D4820000 */  ldc1       $f2, 0x0($a0)
/* 5EA50 8005DE50 46220001 */  sub.d      $f0, $f0, $f2
/* 5EA54 8005DE54 F4600000 */  sdc1       $f0, 0x0($v1)
/* 5EA58 8005DE58 D4A00028 */  ldc1       $f0, 0x28($a1)
/* 5EA5C 8005DE5C D4820008 */  ldc1       $f2, 0x8($a0)
/* 5EA60 8005DE60 46220001 */  sub.d      $f0, $f0, $f2
/* 5EA64 8005DE64 F4600008 */  sdc1       $f0, 0x8($v1)
/* 5EA68 8005DE68 D4A00030 */  ldc1       $f0, 0x30($a1)
/* 5EA6C 8005DE6C D4820000 */  ldc1       $f2, 0x0($a0)
/* 5EA70 8005DE70 46220001 */  sub.d      $f0, $f0, $f2
/* 5EA74 8005DE74 F4C00000 */  sdc1       $f0, 0x0($a2)
/* 5EA78 8005DE78 D4A00038 */  ldc1       $f0, 0x38($a1)
/* 5EA7C 8005DE7C D4820008 */  ldc1       $f2, 0x8($a0)
/* 5EA80 8005DE80 46220001 */  sub.d      $f0, $f0, $f2
/* 5EA84 8005DE84 F4C00008 */  sdc1       $f0, 0x8($a2)
.L8005DE88:
/* 5EA88 8005DE88 03E00008 */  jr         $ra
/* 5EA8C 8005DE8C 00000000 */   nop

glabel func_8005DE90
/* 5EA90 8005DE90 D4800000 */  ldc1       $f0, 0x0($a0)
/* 5EA94 8005DE94 3C01800D */  lui        $at, %hi(D_800D49B8)
/* 5EA98 8005DE98 D42249B8 */  ldc1       $f2, %lo(D_800D49B8)($at)
/* 5EA9C 8005DE9C 46201101 */  sub.d      $f4, $f2, $f0
/* 5EAA0 8005DEA0 44800000 */  mtc1       $zero, $f0
/* 5EAA4 8005DEA4 44800800 */  mtc1       $zero, $f1
/* 5EAA8 8005DEA8 00000000 */  nop
/* 5EAAC 8005DEAC 4624003C */  c.lt.d     $f0, $f4
/* 5EAB0 8005DEB0 00000000 */  nop
/* 5EAB4 8005DEB4 4500000B */  bc1f       .L8005DEE4
/* 5EAB8 8005DEB8 00000000 */   nop
/* 5EABC 8005DEBC 3C03802F */  lui        $v1, %hi(D_802F1908)
/* 5EAC0 8005DEC0 24631908 */  addiu      $v1, $v1, %lo(D_802F1908)
/* 5EAC4 8005DEC4 D4620000 */  ldc1       $f2, 0x0($v1)
/* 5EAC8 8005DEC8 3C02802D */  lui        $v0, %hi(D_802D2648)
/* 5EACC 8005DECC 24422648 */  addiu      $v0, $v0, %lo(D_802D2648)
/* 5EAD0 8005DED0 46241081 */  sub.d      $f2, $f2, $f4
/* 5EAD4 8005DED4 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5EAD8 8005DED8 46240001 */  sub.d      $f0, $f0, $f4
/* 5EADC 8005DEDC F4620000 */  sdc1       $f2, 0x0($v1)
/* 5EAE0 8005DEE0 F4400000 */  sdc1       $f0, 0x0($v0)
.L8005DEE4:
/* 5EAE4 8005DEE4 03E00008 */  jr         $ra
/* 5EAE8 8005DEE8 00000000 */   nop

glabel func_8005DEEC
/* 5EAEC 8005DEEC D4800000 */  ldc1       $f0, 0x0($a0)
/* 5EAF0 8005DEF0 3C01800D */  lui        $at, %hi(D_800D49C0)
/* 5EAF4 8005DEF4 D42249C0 */  ldc1       $f2, %lo(D_800D49C0)($at)
/* 5EAF8 8005DEF8 46220101 */  sub.d      $f4, $f0, $f2
/* 5EAFC 8005DEFC 44800000 */  mtc1       $zero, $f0
/* 5EB00 8005DF00 44800800 */  mtc1       $zero, $f1
/* 5EB04 8005DF04 00000000 */  nop
/* 5EB08 8005DF08 4624003C */  c.lt.d     $f0, $f4
/* 5EB0C 8005DF0C 00000000 */  nop
/* 5EB10 8005DF10 4500000B */  bc1f       .L8005DF40
/* 5EB14 8005DF14 00000000 */   nop
/* 5EB18 8005DF18 3C03802F */  lui        $v1, %hi(D_802F1908)
/* 5EB1C 8005DF1C 24631908 */  addiu      $v1, $v1, %lo(D_802F1908)
/* 5EB20 8005DF20 D4620000 */  ldc1       $f2, 0x0($v1)
/* 5EB24 8005DF24 3C02802D */  lui        $v0, %hi(D_802D2648)
/* 5EB28 8005DF28 24422648 */  addiu      $v0, $v0, %lo(D_802D2648)
/* 5EB2C 8005DF2C 46241080 */  add.d      $f2, $f2, $f4
/* 5EB30 8005DF30 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5EB34 8005DF34 46240000 */  add.d      $f0, $f0, $f4
/* 5EB38 8005DF38 F4620000 */  sdc1       $f2, 0x0($v1)
/* 5EB3C 8005DF3C F4400000 */  sdc1       $f0, 0x0($v0)
.L8005DF40:
/* 5EB40 8005DF40 03E00008 */  jr         $ra
/* 5EB44 8005DF44 00000000 */   nop

glabel func_8005DF48
/* 5EB48 8005DF48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5EB4C 8005DF4C 00042100 */  sll        $a0, $a0, 4
/* 5EB50 8005DF50 3C02803F */  lui        $v0, %hi(D_803F59D8)
/* 5EB54 8005DF54 244259D8 */  addiu      $v0, $v0, %lo(D_803F59D8)
/* 5EB58 8005DF58 AFB20018 */  sw         $s2, 0x18($sp)
/* 5EB5C 8005DF5C 00829021 */  addu       $s2, $a0, $v0
/* 5EB60 8005DF60 AFBF001C */  sw         $ra, 0x1C($sp)
/* 5EB64 8005DF64 AFB10014 */  sw         $s1, 0x14($sp)
/* 5EB68 8005DF68 AFB00010 */  sw         $s0, 0x10($sp)
/* 5EB6C 8005DF6C D6400000 */  ldc1       $f0, 0x0($s2)
/* 5EB70 8005DF70 3C01800D */  lui        $at, %hi(D_800D49C8)
/* 5EB74 8005DF74 D42249C8 */  ldc1       $f2, %lo(D_800D49C8)($at)
/* 5EB78 8005DF78 46200005 */  abs.d      $f0, $f0
/* 5EB7C 8005DF7C 4622003C */  c.lt.d     $f0, $f2
/* 5EB80 8005DF80 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5EB84 8005DF84 A020ED8C */  sb         $zero, %lo(D_802AED8C)($at)
/* 5EB88 8005DF88 45000011 */  bc1f       .L8005DFD0
/* 5EB8C 8005DF8C 00A08021 */   addu      $s0, $a1, $zero
/* 5EB90 8005DF90 D6400008 */  ldc1       $f0, 0x8($s2)
/* 5EB94 8005DF94 3C01800D */  lui        $at, %hi(D_800D49D0)
/* 5EB98 8005DF98 D42249D0 */  ldc1       $f2, %lo(D_800D49D0)($at)
/* 5EB9C 8005DF9C 46200005 */  abs.d      $f0, $f0
/* 5EBA0 8005DFA0 4622003C */  c.lt.d     $f0, $f2
/* 5EBA4 8005DFA4 00000000 */  nop
/* 5EBA8 8005DFA8 00000000 */  nop
/* 5EBAC 8005DFAC 45000008 */  bc1f       .L8005DFD0
/* 5EBB0 8005DFB0 00101080 */   sll       $v0, $s0, 2
/* 5EBB4 8005DFB4 3C01800C */  lui        $at, %hi(D_800C6764)
/* 5EBB8 8005DFB8 00220821 */  addu       $at, $at, $v0
/* 5EBBC 8005DFBC 8C226764 */  lw         $v0, %lo(D_800C6764)($at)
/* 5EBC0 8005DFC0 0040F809 */  jalr       $v0
/* 5EBC4 8005DFC4 02402021 */   addu      $a0, $s2, $zero
/* 5EBC8 8005DFC8 14400025 */  bnez       $v0, .L8005E060
/* 5EBCC 8005DFCC 24020001 */   addiu     $v0, $zero, 0x1
.L8005DFD0:
/* 5EBD0 8005DFD0 00101080 */  sll        $v0, $s0, 2
/* 5EBD4 8005DFD4 3C05800C */  lui        $a1, %hi(D_800C6748)
/* 5EBD8 8005DFD8 00A22821 */  addu       $a1, $a1, $v0
/* 5EBDC 8005DFDC 8CA56748 */  lw         $a1, %lo(D_800C6748)($a1)
/* 5EBE0 8005DFE0 D6420000 */  ldc1       $f2, 0x0($s2)
/* 5EBE4 8005DFE4 D4A00000 */  ldc1       $f0, 0x0($a1)
/* 5EBE8 8005DFE8 46220001 */  sub.d      $f0, $f0, $f2
/* 5EBEC 8005DFEC 3C11802D */  lui        $s1, %hi(D_802D2648)
/* 5EBF0 8005DFF0 26312648 */  addiu      $s1, $s1, %lo(D_802D2648)
/* 5EBF4 8005DFF4 F6200000 */  sdc1       $f0, 0x0($s1)
/* 5EBF8 8005DFF8 D4A00008 */  ldc1       $f0, 0x8($a1)
/* 5EBFC 8005DFFC D6420008 */  ldc1       $f2, 0x8($s2)
/* 5EC00 8005E000 46220001 */  sub.d      $f0, $f0, $f2
/* 5EC04 8005E004 3C01802D */  lui        $at, %hi(D_802D2650)
/* 5EC08 8005E008 F4202650 */  sdc1       $f0, %lo(D_802D2650)($at)
/* 5EC0C 8005E00C D4A00010 */  ldc1       $f0, 0x10($a1)
/* 5EC10 8005E010 D6420000 */  ldc1       $f2, 0x0($s2)
/* 5EC14 8005E014 46220001 */  sub.d      $f0, $f0, $f2
/* 5EC18 8005E018 3C10802F */  lui        $s0, %hi(D_802F1908)
/* 5EC1C 8005E01C 26101908 */  addiu      $s0, $s0, %lo(D_802F1908)
/* 5EC20 8005E020 F6000000 */  sdc1       $f0, 0x0($s0)
/* 5EC24 8005E024 D4A00018 */  ldc1       $f0, 0x18($a1)
/* 5EC28 8005E028 D6420008 */  ldc1       $f2, 0x8($s2)
/* 5EC2C 8005E02C 46220001 */  sub.d      $f0, $f0, $f2
/* 5EC30 8005E030 3C01802F */  lui        $at, %hi(D_802F1910)
/* 5EC34 8005E034 F4201910 */  sdc1       $f0, %lo(D_802F1910)($at)
/* 5EC38 8005E038 3C01800C */  lui        $at, %hi(D_800C677C)
/* 5EC3C 8005E03C 00220821 */  addu       $at, $at, $v0
/* 5EC40 8005E040 8C22677C */  lw         $v0, %lo(D_800C677C)($at)
/* 5EC44 8005E044 0040F809 */  jalr       $v0
/* 5EC48 8005E048 02402021 */   addu      $a0, $s2, $zero
/* 5EC4C 8005E04C 0C022CF3 */  jal        func_8008B3CC
/* 5EC50 8005E050 02002021 */   addu      $a0, $s0, $zero
/* 5EC54 8005E054 0C022CF3 */  jal        func_8008B3CC
/* 5EC58 8005E058 02202021 */   addu      $a0, $s1, $zero
/* 5EC5C 8005E05C 00001021 */  addu       $v0, $zero, $zero
.L8005E060:
/* 5EC60 8005E060 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5EC64 8005E064 8FB20018 */  lw         $s2, 0x18($sp)
/* 5EC68 8005E068 8FB10014 */  lw         $s1, 0x14($sp)
/* 5EC6C 8005E06C 8FB00010 */  lw         $s0, 0x10($sp)
/* 5EC70 8005E070 03E00008 */  jr         $ra
/* 5EC74 8005E074 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005E078
/* 5EC78 8005E078 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5EC7C 8005E07C AFBF0018 */  sw         $ra, 0x18($sp)
/* 5EC80 8005E080 AFB10014 */  sw         $s1, 0x14($sp)
/* 5EC84 8005E084 AFB00010 */  sw         $s0, 0x10($sp)
/* 5EC88 8005E088 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 5EC8C 8005E08C D4A80000 */  ldc1       $f8, 0x0($a1)
/* 5EC90 8005E090 3C01802B */  lui        $at, %hi(D_802AECE0)
/* 5EC94 8005E094 D422ECE0 */  ldc1       $f2, %lo(D_802AECE0)($at)
/* 5EC98 8005E098 3C11802F */  lui        $s1, %hi(D_802F1908)
/* 5EC9C 8005E09C 26311908 */  addiu      $s1, $s1, %lo(D_802F1908)
/* 5ECA0 8005E0A0 46224081 */  sub.d      $f2, $f8, $f2
/* 5ECA4 8005E0A4 D6200000 */  ldc1       $f0, 0x0($s1)
/* 5ECA8 8005E0A8 D4A60008 */  ldc1       $f6, 0x8($a1)
/* 5ECAC 8005E0AC 46201082 */  mul.d      $f2, $f2, $f0
/* 5ECB0 8005E0B0 3C01802B */  lui        $at, %hi(D_802AECE8)
/* 5ECB4 8005E0B4 D420ECE8 */  ldc1       $f0, %lo(D_802AECE8)($at)
/* 5ECB8 8005E0B8 46203001 */  sub.d      $f0, $f6, $f0
/* 5ECBC 8005E0BC D6240008 */  ldc1       $f4, 0x8($s1)
/* 5ECC0 8005E0C0 46240002 */  mul.d      $f0, $f0, $f4
/* 5ECC4 8005E0C4 46201080 */  add.d      $f2, $f2, $f0
/* 5ECC8 8005E0C8 44805000 */  mtc1       $zero, $f10
/* 5ECCC 8005E0CC 44805800 */  mtc1       $zero, $f11
/* 5ECD0 8005E0D0 00000000 */  nop
/* 5ECD4 8005E0D4 4622503E */  c.le.d     $f10, $f2
/* 5ECD8 8005E0D8 00000000 */  nop
/* 5ECDC 8005E0DC 45000041 */  bc1f       .L8005E1E4
/* 5ECE0 8005E0E0 00000000 */   nop
/* 5ECE4 8005E0E4 3C01802B */  lui        $at, %hi(D_802AECF0)
/* 5ECE8 8005E0E8 D422ECF0 */  ldc1       $f2, %lo(D_802AECF0)($at)
/* 5ECEC 8005E0EC 3C10802D */  lui        $s0, %hi(D_802D2648)
/* 5ECF0 8005E0F0 26102648 */  addiu      $s0, $s0, %lo(D_802D2648)
/* 5ECF4 8005E0F4 46224081 */  sub.d      $f2, $f8, $f2
/* 5ECF8 8005E0F8 D6000000 */  ldc1       $f0, 0x0($s0)
/* 5ECFC 8005E0FC 46201082 */  mul.d      $f2, $f2, $f0
/* 5ED00 8005E100 3C01802B */  lui        $at, %hi(D_802AECF8)
/* 5ED04 8005E104 D420ECF8 */  ldc1       $f0, %lo(D_802AECF8)($at)
/* 5ED08 8005E108 46203001 */  sub.d      $f0, $f6, $f0
/* 5ED0C 8005E10C D6040008 */  ldc1       $f4, 0x8($s0)
/* 5ED10 8005E110 46240002 */  mul.d      $f0, $f0, $f4
/* 5ED14 8005E114 46201080 */  add.d      $f2, $f2, $f0
/* 5ED18 8005E118 4622503E */  c.le.d     $f10, $f2
/* 5ED1C 8005E11C 00000000 */  nop
/* 5ED20 8005E120 00000000 */  nop
/* 5ED24 8005E124 45010070 */  bc1t       .L8005E2E8
/* 5ED28 8005E128 00001021 */   addu      $v0, $zero, $zero
/* 5ED2C 8005E12C D4800000 */  ldc1       $f0, 0x0($a0)
/* 5ED30 8005E130 46204001 */  sub.d      $f0, $f8, $f0
/* 5ED34 8005E134 3C11802B */  lui        $s1, %hi(D_802AECB0)
/* 5ED38 8005E138 2631ECB0 */  addiu      $s1, $s1, %lo(D_802AECB0)
/* 5ED3C 8005E13C F6200000 */  sdc1       $f0, 0x0($s1)
/* 5ED40 8005E140 D4A40008 */  ldc1       $f4, 0x8($a1)
/* 5ED44 8005E144 46200002 */  mul.d      $f0, $f0, $f0
/* 5ED48 8005E148 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5ED4C 8005E14C 46222101 */  sub.d      $f4, $f4, $f2
/* 5ED50 8005E150 46242082 */  mul.d      $f2, $f4, $f4
/* 5ED54 8005E154 46220500 */  add.d      $f20, $f0, $f2
/* 5ED58 8005E158 3C01800D */  lui        $at, %hi(D_800D49D8)
/* 5ED5C 8005E15C D42049D8 */  ldc1       $f0, %lo(D_800D49D8)($at)
/* 5ED60 8005E160 4620A03C */  c.lt.d     $f20, $f0
/* 5ED64 8005E164 3C01802B */  lui        $at, %hi(D_802AECB8)
/* 5ED68 8005E168 F424ECB8 */  sdc1       $f4, %lo(D_802AECB8)($at)
/* 5ED6C 8005E16C 45030001 */  bc1tl      .L8005E174
/* 5ED70 8005E170 46200506 */   mov.d     $f20, $f0
.L8005E174:
/* 5ED74 8005E174 0C022BA9 */  jal        func_8008AEA4
/* 5ED78 8005E178 4620A301 */   sub.d     $f12, $f20, $f0
/* 5ED7C 8005E17C 3C01802B */  lui        $at, %hi(D_802AED48)
/* 5ED80 8005E180 F420ED48 */  sdc1       $f0, %lo(D_802AED48)($at)
/* 5ED84 8005E184 0C022BA9 */  jal        func_8008AEA4
/* 5ED88 8005E188 4620A306 */   mov.d     $f12, $f20
/* 5ED8C 8005E18C 3C01802B */  lui        $at, %hi(D_802AED48)
/* 5ED90 8005E190 D424ED48 */  ldc1       $f4, %lo(D_802AED48)($at)
/* 5ED94 8005E194 D6280000 */  ldc1       $f8, 0x0($s1)
/* 5ED98 8005E198 46282282 */  mul.d      $f10, $f4, $f8
/* 5ED9C 8005E19C 3C01802B */  lui        $at, %hi(D_802AECB8)
/* 5EDA0 8005E1A0 D426ECB8 */  ldc1       $f6, %lo(D_802AECB8)($at)
/* 5EDA4 8005E1A4 46263080 */  add.d      $f2, $f6, $f6
/* 5EDA8 8005E1A8 462A1080 */  add.d      $f2, $f2, $f10
/* 5EDAC 8005E1AC 3C01800D */  lui        $at, %hi(D_800D49E0)
/* 5EDB0 8005E1B0 D42A49E0 */  ldc1       $f10, %lo(D_800D49E0)($at)
/* 5EDB4 8005E1B4 462A1082 */  mul.d      $f2, $f2, $f10
/* 5EDB8 8005E1B8 46201083 */  div.d      $f2, $f2, $f0
/* 5EDBC 8005E1BC 46262102 */  mul.d      $f4, $f4, $f6
/* 5EDC0 8005E1C0 46284200 */  add.d      $f8, $f8, $f8
/* 5EDC4 8005E1C4 46282101 */  sub.d      $f4, $f4, $f8
/* 5EDC8 8005E1C8 462A2102 */  mul.d      $f4, $f4, $f10
/* 5EDCC 8005E1CC 02002021 */  addu       $a0, $s0, $zero
/* 5EDD0 8005E1D0 3C01802B */  lui        $at, %hi(D_802AED40)
/* 5EDD4 8005E1D4 F420ED40 */  sdc1       $f0, %lo(D_802AED40)($at)
/* 5EDD8 8005E1D8 F4820000 */  sdc1       $f2, 0x0($a0)
/* 5EDDC 8005E1DC 080178B7 */  j          .L8005E2DC
/* 5EDE0 8005E1E0 46202103 */   div.d     $f4, $f4, $f0
.L8005E1E4:
/* 5EDE4 8005E1E4 3C01802B */  lui        $at, %hi(D_802AECF0)
/* 5EDE8 8005E1E8 D422ECF0 */  ldc1       $f2, %lo(D_802AECF0)($at)
/* 5EDEC 8005E1EC 46224081 */  sub.d      $f2, $f8, $f2
/* 5EDF0 8005E1F0 3C01802D */  lui        $at, %hi(D_802D2648)
/* 5EDF4 8005E1F4 D4202648 */  ldc1       $f0, %lo(D_802D2648)($at)
/* 5EDF8 8005E1F8 46201082 */  mul.d      $f2, $f2, $f0
/* 5EDFC 8005E1FC 3C01802B */  lui        $at, %hi(D_802AECF8)
/* 5EE00 8005E200 D420ECF8 */  ldc1       $f0, %lo(D_802AECF8)($at)
/* 5EE04 8005E204 46203001 */  sub.d      $f0, $f6, $f0
/* 5EE08 8005E208 3C01802D */  lui        $at, %hi(D_802D2650)
/* 5EE0C 8005E20C D4242650 */  ldc1       $f4, %lo(D_802D2650)($at)
/* 5EE10 8005E210 46240002 */  mul.d      $f0, $f0, $f4
/* 5EE14 8005E214 46201080 */  add.d      $f2, $f2, $f0
/* 5EE18 8005E218 462A103C */  c.lt.d     $f2, $f10
/* 5EE1C 8005E21C 00000000 */  nop
/* 5EE20 8005E220 00000000 */  nop
/* 5EE24 8005E224 45010030 */  bc1t       .L8005E2E8
/* 5EE28 8005E228 24020001 */   addiu     $v0, $zero, 0x1
/* 5EE2C 8005E22C D4800000 */  ldc1       $f0, 0x0($a0)
/* 5EE30 8005E230 46204001 */  sub.d      $f0, $f8, $f0
/* 5EE34 8005E234 3C10802B */  lui        $s0, %hi(D_802AECB0)
/* 5EE38 8005E238 2610ECB0 */  addiu      $s0, $s0, %lo(D_802AECB0)
/* 5EE3C 8005E23C F6000000 */  sdc1       $f0, 0x0($s0)
/* 5EE40 8005E240 D4A40008 */  ldc1       $f4, 0x8($a1)
/* 5EE44 8005E244 46200002 */  mul.d      $f0, $f0, $f0
/* 5EE48 8005E248 D4820008 */  ldc1       $f2, 0x8($a0)
/* 5EE4C 8005E24C 46222101 */  sub.d      $f4, $f4, $f2
/* 5EE50 8005E250 46242082 */  mul.d      $f2, $f4, $f4
/* 5EE54 8005E254 46220500 */  add.d      $f20, $f0, $f2
/* 5EE58 8005E258 3C01800D */  lui        $at, %hi(D_800D49E8)
/* 5EE5C 8005E25C D42049E8 */  ldc1       $f0, %lo(D_800D49E8)($at)
/* 5EE60 8005E260 4620A03C */  c.lt.d     $f20, $f0
/* 5EE64 8005E264 F6040008 */  sdc1       $f4, 0x8($s0)
/* 5EE68 8005E268 00000000 */  nop
/* 5EE6C 8005E26C 45030001 */  bc1tl      .L8005E274
/* 5EE70 8005E270 46200506 */   mov.d     $f20, $f0
.L8005E274:
/* 5EE74 8005E274 0C022BA9 */  jal        func_8008AEA4
/* 5EE78 8005E278 4620A301 */   sub.d     $f12, $f20, $f0
/* 5EE7C 8005E27C 3C01802B */  lui        $at, %hi(D_802AED48)
/* 5EE80 8005E280 F420ED48 */  sdc1       $f0, %lo(D_802AED48)($at)
/* 5EE84 8005E284 0C022BA9 */  jal        func_8008AEA4
/* 5EE88 8005E288 4620A306 */   mov.d     $f12, $f20
/* 5EE8C 8005E28C 3C01802B */  lui        $at, %hi(D_802AED48)
/* 5EE90 8005E290 D424ED48 */  ldc1       $f4, %lo(D_802AED48)($at)
/* 5EE94 8005E294 D60A0000 */  ldc1       $f10, 0x0($s0)
/* 5EE98 8005E298 462A2182 */  mul.d      $f6, $f4, $f10
/* 5EE9C 8005E29C D6080008 */  ldc1       $f8, 0x8($s0)
/* 5EEA0 8005E2A0 46284080 */  add.d      $f2, $f8, $f8
/* 5EEA4 8005E2A4 46223181 */  sub.d      $f6, $f6, $f2
/* 5EEA8 8005E2A8 3C01800D */  lui        $at, %hi(D_800D49F0)
/* 5EEAC 8005E2AC D42249F0 */  ldc1       $f2, %lo(D_800D49F0)($at)
/* 5EEB0 8005E2B0 46223182 */  mul.d      $f6, $f6, $f2
/* 5EEB4 8005E2B4 46203183 */  div.d      $f6, $f6, $f0
/* 5EEB8 8005E2B8 46282102 */  mul.d      $f4, $f4, $f8
/* 5EEBC 8005E2BC 462A5280 */  add.d      $f10, $f10, $f10
/* 5EEC0 8005E2C0 462A2100 */  add.d      $f4, $f4, $f10
/* 5EEC4 8005E2C4 46222102 */  mul.d      $f4, $f4, $f2
/* 5EEC8 8005E2C8 46202103 */  div.d      $f4, $f4, $f0
/* 5EECC 8005E2CC 02202021 */  addu       $a0, $s1, $zero
/* 5EED0 8005E2D0 3C01802B */  lui        $at, %hi(D_802AED40)
/* 5EED4 8005E2D4 F420ED40 */  sdc1       $f0, %lo(D_802AED40)($at)
/* 5EED8 8005E2D8 F4860000 */  sdc1       $f6, 0x0($a0)
.L8005E2DC:
/* 5EEDC 8005E2DC 0C022CF3 */  jal        func_8008B3CC
/* 5EEE0 8005E2E0 F4840008 */   sdc1      $f4, 0x8($a0)
/* 5EEE4 8005E2E4 00001021 */  addu       $v0, $zero, $zero
.L8005E2E8:
/* 5EEE8 8005E2E8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5EEEC 8005E2EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 5EEF0 8005E2F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 5EEF4 8005E2F4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 5EEF8 8005E2F8 03E00008 */  jr         $ra
/* 5EEFC 8005E2FC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005E300
/* 5EF00 8005E300 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5EF04 8005E304 AFBF001C */  sw         $ra, 0x1C($sp)
/* 5EF08 8005E308 AFB20018 */  sw         $s2, 0x18($sp)
/* 5EF0C 8005E30C AFB10014 */  sw         $s1, 0x14($sp)
/* 5EF10 8005E310 AFB00010 */  sw         $s0, 0x10($sp)
/* 5EF14 8005E314 D4C00000 */  ldc1       $f0, 0x0($a2)
/* 5EF18 8005E318 3C01800D */  lui        $at, %hi(D_800D49F8)
/* 5EF1C 8005E31C D42C49F8 */  ldc1       $f12, %lo(D_800D49F8)($at)
/* 5EF20 8005E320 462C0002 */  mul.d      $f0, $f0, $f12
/* 5EF24 8005E324 00058900 */  sll        $s1, $a1, 4
/* 5EF28 8005E328 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5EF2C 8005E32C 00310821 */  addu       $at, $at, $s1
/* 5EF30 8005E330 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5EF34 8005E334 3C01800D */  lui        $at, %hi(D_800D4A00)
/* 5EF38 8005E338 D42A4A00 */  ldc1       $f10, %lo(D_800D4A00)($at)
/* 5EF3C 8005E33C 46220000 */  add.d      $f0, $f0, $f2
/* 5EF40 8005E340 3C02802B */  lui        $v0, %hi(D_802AECE0)
/* 5EF44 8005E344 2442ECE0 */  addiu      $v0, $v0, %lo(D_802AECE0)
/* 5EF48 8005E348 3C01802B */  lui        $at, %hi(D_802AED80)
/* 5EF4C 8005E34C AC24ED80 */  sw         $a0, %lo(D_802AED80)($at)
/* 5EF50 8005E350 462A003C */  c.lt.d     $f0, $f10
/* 5EF54 8005E354 3C01802B */  lui        $at, %hi(D_802AED84)
/* 5EF58 8005E358 AC25ED84 */  sw         $a1, %lo(D_802AED84)($at)
/* 5EF5C 8005E35C F4400000 */  sdc1       $f0, 0x0($v0)
/* 5EF60 8005E360 45000002 */  bc1f       .L8005E36C
/* 5EF64 8005E364 00000000 */   nop
/* 5EF68 8005E368 F44A0000 */  sdc1       $f10, 0x0($v0)
.L8005E36C:
/* 5EF6C 8005E36C D4400000 */  ldc1       $f0, 0x0($v0)
/* 5EF70 8005E370 3C01800D */  lui        $at, %hi(D_800D4A08)
/* 5EF74 8005E374 D4284A08 */  ldc1       $f8, %lo(D_800D4A08)($at)
/* 5EF78 8005E378 4620403C */  c.lt.d     $f8, $f0
/* 5EF7C 8005E37C 00000000 */  nop
/* 5EF80 8005E380 00000000 */  nop
/* 5EF84 8005E384 45000003 */  bc1f       .L8005E394
/* 5EF88 8005E388 00048100 */   sll       $s0, $a0, 4
/* 5EF8C 8005E38C F4480000 */  sdc1       $f8, 0x0($v0)
/* 5EF90 8005E390 D4400000 */  ldc1       $f0, 0x0($v0)
.L8005E394:
/* 5EF94 8005E394 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5EF98 8005E398 00300821 */  addu       $at, $at, $s0
/* 5EF9C 8005E39C D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5EFA0 8005E3A0 46220001 */  sub.d      $f0, $f0, $f2
/* 5EFA4 8005E3A4 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 5EFA8 8005E3A8 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 5EFAC 8005E3AC F4800000 */  sdc1       $f0, 0x0($a0)
/* 5EFB0 8005E3B0 D4C00008 */  ldc1       $f0, 0x8($a2)
/* 5EFB4 8005E3B4 462C0002 */  mul.d      $f0, $f0, $f12
/* 5EFB8 8005E3B8 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5EFBC 8005E3BC 00310821 */  addu       $at, $at, $s1
/* 5EFC0 8005E3C0 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5EFC4 8005E3C4 46220000 */  add.d      $f0, $f0, $f2
/* 5EFC8 8005E3C8 3C01800D */  lui        $at, %hi(D_800D4A10)
/* 5EFCC 8005E3CC D4264A10 */  ldc1       $f6, %lo(D_800D4A10)($at)
/* 5EFD0 8005E3D0 4626003C */  c.lt.d     $f0, $f6
/* 5EFD4 8005E3D4 3C01802B */  lui        $at, %hi(D_802AECE8)
/* 5EFD8 8005E3D8 F420ECE8 */  sdc1       $f0, %lo(D_802AECE8)($at)
/* 5EFDC 8005E3DC 45000003 */  bc1f       .L8005E3EC
/* 5EFE0 8005E3E0 00000000 */   nop
/* 5EFE4 8005E3E4 3C01802B */  lui        $at, %hi(D_802AECE8)
/* 5EFE8 8005E3E8 F426ECE8 */  sdc1       $f6, %lo(D_802AECE8)($at)
.L8005E3EC:
/* 5EFEC 8005E3EC 3C01802B */  lui        $at, %hi(D_802AECE8)
/* 5EFF0 8005E3F0 D420ECE8 */  ldc1       $f0, %lo(D_802AECE8)($at)
/* 5EFF4 8005E3F4 3C01800D */  lui        $at, %hi(D_800D4A18)
/* 5EFF8 8005E3F8 D4244A18 */  ldc1       $f4, %lo(D_800D4A18)($at)
/* 5EFFC 8005E3FC 4620203C */  c.lt.d     $f4, $f0
/* 5F000 8005E400 00000000 */  nop
/* 5F004 8005E404 45000005 */  bc1f       .L8005E41C
/* 5F008 8005E408 00000000 */   nop
/* 5F00C 8005E40C 3C01802B */  lui        $at, %hi(D_802AECE8)
/* 5F010 8005E410 F424ECE8 */  sdc1       $f4, %lo(D_802AECE8)($at)
/* 5F014 8005E414 3C01802B */  lui        $at, %hi(D_802AECE8)
/* 5F018 8005E418 D420ECE8 */  ldc1       $f0, %lo(D_802AECE8)($at)
.L8005E41C:
/* 5F01C 8005E41C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F020 8005E420 00300821 */  addu       $at, $at, $s0
/* 5F024 8005E424 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5F028 8005E428 46220001 */  sub.d      $f0, $f0, $f2
/* 5F02C 8005E42C 3C01802F */  lui        $at, %hi(D_802F1910)
/* 5F030 8005E430 F4201910 */  sdc1       $f0, %lo(D_802F1910)($at)
/* 5F034 8005E434 D4C00010 */  ldc1       $f0, 0x10($a2)
/* 5F038 8005E438 462C0002 */  mul.d      $f0, $f0, $f12
/* 5F03C 8005E43C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F040 8005E440 00310821 */  addu       $at, $at, $s1
/* 5F044 8005E444 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5F048 8005E448 46220000 */  add.d      $f0, $f0, $f2
/* 5F04C 8005E44C 462A003C */  c.lt.d     $f0, $f10
/* 5F050 8005E450 3C02802B */  lui        $v0, %hi(D_802AECF0)
/* 5F054 8005E454 2442ECF0 */  addiu      $v0, $v0, %lo(D_802AECF0)
/* 5F058 8005E458 F4400000 */  sdc1       $f0, 0x0($v0)
/* 5F05C 8005E45C 45000002 */  bc1f       .L8005E468
/* 5F060 8005E460 00000000 */   nop
/* 5F064 8005E464 F44A0000 */  sdc1       $f10, 0x0($v0)
.L8005E468:
/* 5F068 8005E468 D4400000 */  ldc1       $f0, 0x0($v0)
/* 5F06C 8005E46C 4620403C */  c.lt.d     $f8, $f0
/* 5F070 8005E470 00000000 */  nop
/* 5F074 8005E474 45000003 */  bc1f       .L8005E484
/* 5F078 8005E478 00000000 */   nop
/* 5F07C 8005E47C F4480000 */  sdc1       $f8, 0x0($v0)
/* 5F080 8005E480 D4400000 */  ldc1       $f0, 0x0($v0)
.L8005E484:
/* 5F084 8005E484 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F088 8005E488 00300821 */  addu       $at, $at, $s0
/* 5F08C 8005E48C D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5F090 8005E490 46220001 */  sub.d      $f0, $f0, $f2
/* 5F094 8005E494 3C12802D */  lui        $s2, %hi(D_802D2648)
/* 5F098 8005E498 26522648 */  addiu      $s2, $s2, %lo(D_802D2648)
/* 5F09C 8005E49C F6400000 */  sdc1       $f0, 0x0($s2)
/* 5F0A0 8005E4A0 D4C00018 */  ldc1       $f0, 0x18($a2)
/* 5F0A4 8005E4A4 462C0002 */  mul.d      $f0, $f0, $f12
/* 5F0A8 8005E4A8 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F0AC 8005E4AC 00310821 */  addu       $at, $at, $s1
/* 5F0B0 8005E4B0 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5F0B4 8005E4B4 46220000 */  add.d      $f0, $f0, $f2
/* 5F0B8 8005E4B8 4626003C */  c.lt.d     $f0, $f6
/* 5F0BC 8005E4BC 3C01802B */  lui        $at, %hi(D_802AECF8)
/* 5F0C0 8005E4C0 F420ECF8 */  sdc1       $f0, %lo(D_802AECF8)($at)
/* 5F0C4 8005E4C4 45000003 */  bc1f       .L8005E4D4
/* 5F0C8 8005E4C8 00000000 */   nop
/* 5F0CC 8005E4CC 3C01802B */  lui        $at, %hi(D_802AECF8)
/* 5F0D0 8005E4D0 F426ECF8 */  sdc1       $f6, %lo(D_802AECF8)($at)
.L8005E4D4:
/* 5F0D4 8005E4D4 3C01802B */  lui        $at, %hi(D_802AECF8)
/* 5F0D8 8005E4D8 D420ECF8 */  ldc1       $f0, %lo(D_802AECF8)($at)
/* 5F0DC 8005E4DC 4620203C */  c.lt.d     $f4, $f0
/* 5F0E0 8005E4E0 00000000 */  nop
/* 5F0E4 8005E4E4 45000005 */  bc1f       .L8005E4FC
/* 5F0E8 8005E4E8 00000000 */   nop
/* 5F0EC 8005E4EC 3C01802B */  lui        $at, %hi(D_802AECF8)
/* 5F0F0 8005E4F0 F424ECF8 */  sdc1       $f4, %lo(D_802AECF8)($at)
/* 5F0F4 8005E4F4 3C01802B */  lui        $at, %hi(D_802AECF8)
/* 5F0F8 8005E4F8 D420ECF8 */  ldc1       $f0, %lo(D_802AECF8)($at)
.L8005E4FC:
/* 5F0FC 8005E4FC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F100 8005E500 00300821 */  addu       $at, $at, $s0
/* 5F104 8005E504 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5F108 8005E508 46220001 */  sub.d      $f0, $f0, $f2
/* 5F10C 8005E50C 3C01802D */  lui        $at, %hi(D_802D2650)
/* 5F110 8005E510 0C022CF3 */  jal        func_8008B3CC
/* 5F114 8005E514 F4202650 */   sdc1      $f0, %lo(D_802D2650)($at)
/* 5F118 8005E518 0C022CF3 */  jal        func_8008B3CC
/* 5F11C 8005E51C 02402021 */   addu      $a0, $s2, $zero
/* 5F120 8005E520 3C05803F */  lui        $a1, %hi(D_803F59D8)
/* 5F124 8005E524 24A559D8 */  addiu      $a1, $a1, %lo(D_803F59D8)
/* 5F128 8005E528 02052021 */  addu       $a0, $s0, $a1
/* 5F12C 8005E52C 0C01781E */  jal        func_8005E078
/* 5F130 8005E530 02252821 */   addu      $a1, $s1, $a1
/* 5F134 8005E534 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5F138 8005E538 8FB20018 */  lw         $s2, 0x18($sp)
/* 5F13C 8005E53C 8FB10014 */  lw         $s1, 0x14($sp)
/* 5F140 8005E540 8FB00010 */  lw         $s0, 0x10($sp)
/* 5F144 8005E544 03E00008 */  jr         $ra
/* 5F148 8005E548 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005E54C
/* 5F14C 8005E54C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5F150 8005E550 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 5F154 8005E554 3C01800D */  lui        $at, %hi(D_800D4A20)
/* 5F158 8005E558 D4364A20 */  ldc1       $f22, %lo(D_800D4A20)($at)
/* 5F15C 8005E55C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 5F160 8005E560 4480A000 */  mtc1       $zero, $f20
/* 5F164 8005E564 4480A800 */  mtc1       $zero, $f21
/* 5F168 8005E568 AFB10014 */  sw         $s1, 0x14($sp)
/* 5F16C 8005E56C 24110001 */  addiu      $s1, $zero, 0x1
/* 5F170 8005E570 AFB20018 */  sw         $s2, 0x18($sp)
/* 5F174 8005E574 3C12802B */  lui        $s2, %hi(D_802AECB0)
/* 5F178 8005E578 2652ECB0 */  addiu      $s2, $s2, %lo(D_802AECB0)
/* 5F17C 8005E57C 00041900 */  sll        $v1, $a0, 4
/* 5F180 8005E580 AFBF0028 */  sw         $ra, 0x28($sp)
/* 5F184 8005E584 AFB50024 */  sw         $s5, 0x24($sp)
/* 5F188 8005E588 AFB40020 */  sw         $s4, 0x20($sp)
/* 5F18C 8005E58C AFB3001C */  sw         $s3, 0x1C($sp)
/* 5F190 8005E590 AFB00010 */  sw         $s0, 0x10($sp)
/* 5F194 8005E594 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F198 8005E598 00230821 */  addu       $at, $at, $v1
/* 5F19C 8005E59C D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5F1A0 8005E5A0 3C02802B */  lui        $v0, %hi(D_802AED00)
/* 5F1A4 8005E5A4 2442ED00 */  addiu      $v0, $v0, %lo(D_802AED00)
/* 5F1A8 8005E5A8 00409821 */  addu       $s3, $v0, $zero
/* 5F1AC 8005E5AC F6600000 */  sdc1       $f0, 0x0($s3)
/* 5F1B0 8005E5B0 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F1B4 8005E5B4 00230821 */  addu       $at, $at, $v1
/* 5F1B8 8005E5B8 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5F1BC 8005E5BC 24140002 */  addiu      $s4, $zero, 0x2
/* 5F1C0 8005E5C0 24100010 */  addiu      $s0, $zero, 0x10
/* 5F1C4 8005E5C4 3C01802B */  lui        $at, %hi(D_802AED8C)
/* 5F1C8 8005E5C8 A025ED8C */  sb         $a1, %lo(D_802AED8C)($at)
/* 5F1CC 8005E5CC 3C01802B */  lui        $at, %hi(D_802AED80)
/* 5F1D0 8005E5D0 AC24ED80 */  sw         $a0, %lo(D_802AED80)($at)
/* 5F1D4 8005E5D4 3C01802B */  lui        $at, %hi(D_802AED08)
/* 5F1D8 8005E5D8 F420ED08 */  sdc1       $f0, %lo(D_802AED08)($at)
.L8005E5DC:
/* 5F1DC 8005E5DC 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F1E0 8005E5E0 00300821 */  addu       $at, $at, $s0
/* 5F1E4 8005E5E4 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5F1E8 8005E5E8 46361032 */  c.eq.d     $f2, $f22
/* 5F1EC 8005E5EC 00000000 */  nop
/* 5F1F0 8005E5F0 00000000 */  nop
/* 5F1F4 8005E5F4 45030023 */  bc1tl      .L8005E684
/* 5F1F8 8005E5F8 26310001 */   addiu     $s1, $s1, 0x1
/* 5F1FC 8005E5FC 3C02802B */  lui        $v0, %hi(D_802AED80)
/* 5F200 8005E600 8C42ED80 */  lw         $v0, %lo(D_802AED80)($v0)
/* 5F204 8005E604 5222001F */  beql       $s1, $v0, .L8005E684
/* 5F208 8005E608 26310001 */   addiu     $s1, $s1, 0x1
/* 5F20C 8005E60C D6600000 */  ldc1       $f0, 0x0($s3)
/* 5F210 8005E610 46201001 */  sub.d      $f0, $f2, $f0
/* 5F214 8005E614 F6400000 */  sdc1       $f0, 0x0($s2)
/* 5F218 8005E618 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F21C 8005E61C 00300821 */  addu       $at, $at, $s0
/* 5F220 8005E620 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5F224 8005E624 D6600008 */  ldc1       $f0, 0x8($s3)
/* 5F228 8005E628 46201081 */  sub.d      $f2, $f2, $f0
/* 5F22C 8005E62C 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 5F230 8005E630 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 5F234 8005E634 F6420008 */  sdc1       $f2, 0x8($s2)
/* 5F238 8005E638 0C022C7C */  jal        func_8008B1F0
/* 5F23C 8005E63C 02402821 */   addu      $a1, $s2, $zero
/* 5F240 8005E640 4620A03E */  c.le.d     $f20, $f0
/* 5F244 8005E644 00000000 */  nop
/* 5F248 8005E648 4501000A */  bc1t       .L8005E674
/* 5F24C 8005E64C 00000000 */   nop
/* 5F250 8005E650 3C04802D */  lui        $a0, %hi(D_802D2648)
/* 5F254 8005E654 24842648 */  addiu      $a0, $a0, %lo(D_802D2648)
/* 5F258 8005E658 0C022C7C */  jal        func_8008B1F0
/* 5F25C 8005E65C 02402821 */   addu      $a1, $s2, $zero
/* 5F260 8005E660 4620A03E */  c.le.d     $f20, $f0
/* 5F264 8005E664 00000000 */  nop
/* 5F268 8005E668 00000000 */  nop
/* 5F26C 8005E66C 45020005 */  bc1fl      .L8005E684
/* 5F270 8005E670 26310001 */   addiu     $s1, $s1, 0x1
.L8005E674:
/* 5F274 8005E674 0C0174A9 */  jal        func_8005D2A4
/* 5F278 8005E678 00000000 */   nop
/* 5F27C 8005E67C 1054000A */  beq        $v0, $s4, .L8005E6A8
/* 5F280 8005E680 26310001 */   addiu     $s1, $s1, 0x1
.L8005E684:
/* 5F284 8005E684 2A220010 */  slti       $v0, $s1, 0x10
/* 5F288 8005E688 1440FFD4 */  bnez       $v0, .L8005E5DC
/* 5F28C 8005E68C 26100010 */   addiu     $s0, $s0, 0x10
/* 5F290 8005E690 3C02802B */  lui        $v0, %hi(D_802AED8C)
/* 5F294 8005E694 8042ED8C */  lb         $v0, %lo(D_802AED8C)($v0)
/* 5F298 8005E698 54400005 */  bnel       $v0, $zero, .L8005E6B0
/* 5F29C 8005E69C 24110001 */   addiu     $s1, $zero, 0x1
/* 5F2A0 8005E6A0 08017A11 */  j          .L8005E844
/* 5F2A4 8005E6A4 00001021 */   addu      $v0, $zero, $zero
.L8005E6A8:
/* 5F2A8 8005E6A8 08017A11 */  j          .L8005E844
/* 5F2AC 8005E6AC 24020001 */   addiu     $v0, $zero, 0x1
.L8005E6B0:
/* 5F2B0 8005E6B0 24150002 */  addiu      $s5, $zero, 0x2
/* 5F2B4 8005E6B4 3C10802B */  lui        $s0, %hi(D_802AECB0)
/* 5F2B8 8005E6B8 2610ECB0 */  addiu      $s0, $s0, %lo(D_802AECB0)
/* 5F2BC 8005E6BC 3C13802B */  lui        $s3, %hi(D_802AED00)
/* 5F2C0 8005E6C0 2673ED00 */  addiu      $s3, $s3, %lo(D_802AED00)
/* 5F2C4 8005E6C4 4480A000 */  mtc1       $zero, $f20
/* 5F2C8 8005E6C8 4480A800 */  mtc1       $zero, $f21
/* 5F2CC 8005E6CC 3C12803F */  lui        $s2, %hi(D_803F59F0)
/* 5F2D0 8005E6D0 265259F0 */  addiu      $s2, $s2, %lo(D_803F59F0)
/* 5F2D4 8005E6D4 24140010 */  addiu      $s4, $zero, 0x10
.L8005E6D8:
/* 5F2D8 8005E6D8 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F2DC 8005E6DC 00340821 */  addu       $at, $at, $s4
/* 5F2E0 8005E6E0 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5F2E4 8005E6E4 3C01800D */  lui        $at, %hi(D_800D4A28)
/* 5F2E8 8005E6E8 D4204A28 */  ldc1       $f0, %lo(D_800D4A28)($at)
/* 5F2EC 8005E6EC 46201032 */  c.eq.d     $f2, $f0
/* 5F2F0 8005E6F0 00000000 */  nop
/* 5F2F4 8005E6F4 00000000 */  nop
/* 5F2F8 8005E6F8 4503004D */  bc1tl      .L8005E830
/* 5F2FC 8005E6FC 26520010 */   addiu     $s2, $s2, 0x10
/* 5F300 8005E700 3C02802B */  lui        $v0, %hi(D_802AED80)
/* 5F304 8005E704 8C42ED80 */  lw         $v0, %lo(D_802AED80)($v0)
/* 5F308 8005E708 52220049 */  beql       $s1, $v0, .L8005E830
/* 5F30C 8005E70C 26520010 */   addiu     $s2, $s2, 0x10
/* 5F310 8005E710 3C03802B */  lui        $v1, %hi(D_802AED8C)
/* 5F314 8005E714 8063ED8C */  lb         $v1, %lo(D_802AED8C)($v1)
/* 5F318 8005E718 10750016 */  beq        $v1, $s5, .L8005E774
/* 5F31C 8005E71C 28620003 */   slti      $v0, $v1, 0x3
/* 5F320 8005E720 10400005 */  beqz       $v0, .L8005E738
/* 5F324 8005E724 24020001 */   addiu     $v0, $zero, 0x1
/* 5F328 8005E728 1062000A */  beq        $v1, $v0, .L8005E754
/* 5F32C 8005E72C 00000000 */   nop
/* 5F330 8005E730 080179F7 */  j          .L8005E7DC
/* 5F334 8005E734 00000000 */   nop
.L8005E738:
/* 5F338 8005E738 24020003 */  addiu      $v0, $zero, 0x3
/* 5F33C 8005E73C 10620015 */  beq        $v1, $v0, .L8005E794
/* 5F340 8005E740 24020004 */   addiu     $v0, $zero, 0x4
/* 5F344 8005E744 1062001B */  beq        $v1, $v0, .L8005E7B4
/* 5F348 8005E748 00000000 */   nop
/* 5F34C 8005E74C 080179F7 */  j          .L8005E7DC
/* 5F350 8005E750 00000000 */   nop
.L8005E754:
/* 5F354 8005E754 3C01800D */  lui        $at, %hi(D_800D4A30)
/* 5F358 8005E758 D4204A30 */  ldc1       $f0, %lo(D_800D4A30)($at)
/* 5F35C 8005E75C 46220001 */  sub.d      $f0, $f0, $f2
/* 5F360 8005E760 D6620000 */  ldc1       $f2, 0x0($s3)
/* 5F364 8005E764 46220001 */  sub.d      $f0, $f0, $f2
/* 5F368 8005E768 F6000000 */  sdc1       $f0, 0x0($s0)
/* 5F36C 8005E76C 080179F4 */  j          .L8005E7D0
/* 5F370 8005E770 D6400000 */   ldc1      $f0, 0x0($s2)
.L8005E774:
/* 5F374 8005E774 3C01800D */  lui        $at, %hi(D_800D4A38)
/* 5F378 8005E778 D4204A38 */  ldc1       $f0, %lo(D_800D4A38)($at)
/* 5F37C 8005E77C 46220001 */  sub.d      $f0, $f0, $f2
/* 5F380 8005E780 D6620000 */  ldc1       $f2, 0x0($s3)
/* 5F384 8005E784 46220001 */  sub.d      $f0, $f0, $f2
/* 5F388 8005E788 F6000000 */  sdc1       $f0, 0x0($s0)
/* 5F38C 8005E78C 080179F4 */  j          .L8005E7D0
/* 5F390 8005E790 D6400000 */   ldc1      $f0, 0x0($s2)
.L8005E794:
/* 5F394 8005E794 D6600000 */  ldc1       $f0, 0x0($s3)
/* 5F398 8005E798 46201001 */  sub.d      $f0, $f2, $f0
/* 5F39C 8005E79C F6000000 */  sdc1       $f0, 0x0($s0)
/* 5F3A0 8005E7A0 D6420000 */  ldc1       $f2, 0x0($s2)
/* 5F3A4 8005E7A4 3C01800D */  lui        $at, %hi(D_800D4A40)
/* 5F3A8 8005E7A8 D4204A40 */  ldc1       $f0, %lo(D_800D4A40)($at)
/* 5F3AC 8005E7AC 080179F4 */  j          .L8005E7D0
/* 5F3B0 8005E7B0 46220001 */   sub.d     $f0, $f0, $f2
.L8005E7B4:
/* 5F3B4 8005E7B4 D6600000 */  ldc1       $f0, 0x0($s3)
/* 5F3B8 8005E7B8 46201001 */  sub.d      $f0, $f2, $f0
/* 5F3BC 8005E7BC F6000000 */  sdc1       $f0, 0x0($s0)
/* 5F3C0 8005E7C0 D6420000 */  ldc1       $f2, 0x0($s2)
/* 5F3C4 8005E7C4 3C01800D */  lui        $at, %hi(D_800D4A48)
/* 5F3C8 8005E7C8 D4204A48 */  ldc1       $f0, %lo(D_800D4A48)($at)
/* 5F3CC 8005E7CC 46220001 */  sub.d      $f0, $f0, $f2
.L8005E7D0:
/* 5F3D0 8005E7D0 D6620008 */  ldc1       $f2, 0x8($s3)
/* 5F3D4 8005E7D4 46220001 */  sub.d      $f0, $f0, $f2
/* 5F3D8 8005E7D8 F6000008 */  sdc1       $f0, 0x8($s0)
.L8005E7DC:
/* 5F3DC 8005E7DC 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 5F3E0 8005E7E0 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 5F3E4 8005E7E4 0C022C7C */  jal        func_8008B1F0
/* 5F3E8 8005E7E8 02002821 */   addu      $a1, $s0, $zero
/* 5F3EC 8005E7EC 4620A03E */  c.le.d     $f20, $f0
/* 5F3F0 8005E7F0 00000000 */  nop
/* 5F3F4 8005E7F4 4501000A */  bc1t       .L8005E820
/* 5F3F8 8005E7F8 00000000 */   nop
/* 5F3FC 8005E7FC 3C04802D */  lui        $a0, %hi(D_802D2648)
/* 5F400 8005E800 24842648 */  addiu      $a0, $a0, %lo(D_802D2648)
/* 5F404 8005E804 0C022C7C */  jal        func_8008B1F0
/* 5F408 8005E808 02002821 */   addu      $a1, $s0, $zero
/* 5F40C 8005E80C 4620A03E */  c.le.d     $f20, $f0
/* 5F410 8005E810 00000000 */  nop
/* 5F414 8005E814 00000000 */  nop
/* 5F418 8005E818 45020005 */  bc1fl      .L8005E830
/* 5F41C 8005E81C 26520010 */   addiu     $s2, $s2, 0x10
.L8005E820:
/* 5F420 8005E820 0C0174A9 */  jal        func_8005D2A4
/* 5F424 8005E824 00000000 */   nop
/* 5F428 8005E828 1055FF9F */  beq        $v0, $s5, .L8005E6A8
/* 5F42C 8005E82C 26520010 */   addiu     $s2, $s2, 0x10
.L8005E830:
/* 5F430 8005E830 26310001 */  addiu      $s1, $s1, 0x1
/* 5F434 8005E834 2A220010 */  slti       $v0, $s1, 0x10
/* 5F438 8005E838 1440FFA7 */  bnez       $v0, .L8005E6D8
/* 5F43C 8005E83C 26940010 */   addiu     $s4, $s4, 0x10
/* 5F440 8005E840 00001021 */  addu       $v0, $zero, $zero
.L8005E844:
/* 5F444 8005E844 8FBF0028 */  lw         $ra, 0x28($sp)
/* 5F448 8005E848 8FB50024 */  lw         $s5, 0x24($sp)
/* 5F44C 8005E84C 8FB40020 */  lw         $s4, 0x20($sp)
/* 5F450 8005E850 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5F454 8005E854 8FB20018 */  lw         $s2, 0x18($sp)
/* 5F458 8005E858 8FB10014 */  lw         $s1, 0x14($sp)
/* 5F45C 8005E85C 8FB00010 */  lw         $s0, 0x10($sp)
/* 5F460 8005E860 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 5F464 8005E864 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 5F468 8005E868 03E00008 */  jr         $ra
/* 5F46C 8005E86C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8005E870
/* 5F470 8005E870 3C01802F */  lui        $at, %hi(D_802F1908)
/* 5F474 8005E874 D4241908 */  ldc1       $f4, %lo(D_802F1908)($at)
/* 5F478 8005E878 3C01802D */  lui        $at, %hi(D_802D2648)
/* 5F47C 8005E87C D4202648 */  ldc1       $f0, %lo(D_802D2648)($at)
/* 5F480 8005E880 46202100 */  add.d      $f4, $f4, $f0
/* 5F484 8005E884 3C01800D */  lui        $at, %hi(D_800D4A50)
/* 5F488 8005E888 D4264A50 */  ldc1       $f6, %lo(D_800D4A50)($at)
/* 5F48C 8005E88C 3C01802D */  lui        $at, %hi(D_802D2650)
/* 5F490 8005E890 D4222650 */  ldc1       $f2, %lo(D_802D2650)($at)
/* 5F494 8005E894 46262102 */  mul.d      $f4, $f4, $f6
/* 5F498 8005E898 3C01802F */  lui        $at, %hi(D_802F1910)
/* 5F49C 8005E89C D4201910 */  ldc1       $f0, %lo(D_802F1910)($at)
/* 5F4A0 8005E8A0 46220000 */  add.d      $f0, $f0, $f2
/* 5F4A4 8005E8A4 46260002 */  mul.d      $f0, $f0, $f6
/* 5F4A8 8005E8A8 00051100 */  sll        $v0, $a1, 4
/* 5F4AC 8005E8AC 00041900 */  sll        $v1, $a0, 4
/* 5F4B0 8005E8B0 3C01802B */  lui        $at, %hi(D_802AED10)
/* 5F4B4 8005E8B4 F424ED10 */  sdc1       $f4, %lo(D_802AED10)($at)
/* 5F4B8 8005E8B8 3C01802B */  lui        $at, %hi(D_802AED18)
/* 5F4BC 8005E8BC F420ED18 */  sdc1       $f0, %lo(D_802AED18)($at)
/* 5F4C0 8005E8C0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F4C4 8005E8C4 00220821 */  addu       $at, $at, $v0
/* 5F4C8 8005E8C8 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5F4CC 8005E8CC 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F4D0 8005E8D0 00230821 */  addu       $at, $at, $v1
/* 5F4D4 8005E8D4 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5F4D8 8005E8D8 46201081 */  sub.d      $f2, $f2, $f0
/* 5F4DC 8005E8DC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F4E0 8005E8E0 00230821 */  addu       $at, $at, $v1
/* 5F4E4 8005E8E4 D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 5F4E8 8005E8E8 46221082 */  mul.d      $f2, $f2, $f2
/* 5F4EC 8005E8EC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F4F0 8005E8F0 00220821 */  addu       $at, $at, $v0
/* 5F4F4 8005E8F4 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5F4F8 8005E8F8 46240001 */  sub.d      $f0, $f0, $f4
/* 5F4FC 8005E8FC 46200002 */  mul.d      $f0, $f0, $f0
/* 5F500 8005E900 46201080 */  add.d      $f2, $f2, $f0
/* 5F504 8005E904 3C01800D */  lui        $at, %hi(D_800D4A58)
/* 5F508 8005E908 D4204A58 */  ldc1       $f0, %lo(D_800D4A58)($at)
/* 5F50C 8005E90C 46201080 */  add.d      $f2, $f2, $f0
/* 5F510 8005E910 3C01802B */  lui        $at, %hi(D_802AED80)
/* 5F514 8005E914 AC24ED80 */  sw         $a0, %lo(D_802AED80)($at)
/* 5F518 8005E918 3C01802B */  lui        $at, %hi(D_802AED84)
/* 5F51C 8005E91C AC25ED84 */  sw         $a1, %lo(D_802AED84)($at)
/* 5F520 8005E920 3C01802B */  lui        $at, %hi(D_802AED38)
/* 5F524 8005E924 03E00008 */  jr         $ra
/* 5F528 8005E928 F422ED38 */   sdc1      $f2, %lo(D_802AED38)($at)

glabel func_8005E92C
/* 5F52C 8005E92C 00041100 */  sll        $v0, $a0, 4
/* 5F530 8005E930 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F534 8005E934 00220821 */  addu       $at, $at, $v0
/* 5F538 8005E938 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5F53C 8005E93C 3C01800D */  lui        $at, %hi(D_800D4A60)
/* 5F540 8005E940 D4204A60 */  ldc1       $f0, %lo(D_800D4A60)($at)
/* 5F544 8005E944 46201032 */  c.eq.d     $f2, $f0
/* 5F548 8005E948 00000000 */  nop
/* 5F54C 8005E94C 00000000 */  nop
/* 5F550 8005E950 4501000A */  bc1t       .L8005E97C
/* 5F554 8005E954 00001021 */   addu      $v0, $zero, $zero
/* 5F558 8005E958 3C02802B */  lui        $v0, %hi(D_802AED80)
/* 5F55C 8005E95C 8C42ED80 */  lw         $v0, %lo(D_802AED80)($v0)
/* 5F560 8005E960 10820006 */  beq        $a0, $v0, .L8005E97C
/* 5F564 8005E964 00001021 */   addu      $v0, $zero, $zero
/* 5F568 8005E968 3C02802B */  lui        $v0, %hi(D_802AED84)
/* 5F56C 8005E96C 8C42ED84 */  lw         $v0, %lo(D_802AED84)($v0)
/* 5F570 8005E970 14820002 */  bne        $a0, $v0, .L8005E97C
/* 5F574 8005E974 24020001 */   addiu     $v0, $zero, 0x1
/* 5F578 8005E978 00001021 */  addu       $v0, $zero, $zero
.L8005E97C:
/* 5F57C 8005E97C 03E00008 */  jr         $ra
/* 5F580 8005E980 00000000 */   nop

glabel func_8005E984
/* 5F584 8005E984 3C01802B */  lui        $at, %hi(D_802AED38)
/* 5F588 8005E988 D420ED38 */  ldc1       $f0, %lo(D_802AED38)($at)
/* 5F58C 8005E98C 462C003E */  c.le.d     $f0, $f12
/* 5F590 8005E990 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5F594 8005E994 00000000 */  nop
/* 5F598 8005E998 45010012 */  bc1t       .L8005E9E4
/* 5F59C 8005E99C AFBF0010 */   sw        $ra, 0x10($sp)
/* 5F5A0 8005E9A0 3C04802B */  lui        $a0, %hi(D_802AED10)
/* 5F5A4 8005E9A4 2484ED10 */  addiu      $a0, $a0, %lo(D_802AED10)
/* 5F5A8 8005E9A8 3C05802B */  lui        $a1, %hi(D_802AECB0)
/* 5F5AC 8005E9AC 0C022C7C */  jal        func_8008B1F0
/* 5F5B0 8005E9B0 24A5ECB0 */   addiu     $a1, $a1, %lo(D_802AECB0)
/* 5F5B4 8005E9B4 44801000 */  mtc1       $zero, $f2
/* 5F5B8 8005E9B8 44801800 */  mtc1       $zero, $f3
/* 5F5BC 8005E9BC 00000000 */  nop
/* 5F5C0 8005E9C0 4622003C */  c.lt.d     $f0, $f2
/* 5F5C4 8005E9C4 00000000 */  nop
/* 5F5C8 8005E9C8 00000000 */  nop
/* 5F5CC 8005E9CC 45010006 */  bc1t       .L8005E9E8
/* 5F5D0 8005E9D0 00001021 */   addu      $v0, $zero, $zero
/* 5F5D4 8005E9D4 0C0174A9 */  jal        func_8005D2A4
/* 5F5D8 8005E9D8 00000000 */   nop
/* 5F5DC 8005E9DC 08017A7A */  j          .L8005E9E8
/* 5F5E0 8005E9E0 00000000 */   nop
.L8005E9E4:
/* 5F5E4 8005E9E4 00001021 */  addu       $v0, $zero, $zero
.L8005E9E8:
/* 5F5E8 8005E9E8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5F5EC 8005E9EC 03E00008 */  jr         $ra
/* 5F5F0 8005E9F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005E9F4
/* 5F5F4 8005E9F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F5F8 8005E9F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 5F5FC 8005E9FC 00808021 */  addu       $s0, $a0, $zero
/* 5F600 8005EA00 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5F604 8005EA04 00009821 */  addu       $s3, $zero, $zero
/* 5F608 8005EA08 AFBF002C */  sw         $ra, 0x2C($sp)
/* 5F60C 8005EA0C AFB60028 */  sw         $s6, 0x28($sp)
/* 5F610 8005EA10 AFB50024 */  sw         $s5, 0x24($sp)
/* 5F614 8005EA14 AFB40020 */  sw         $s4, 0x20($sp)
/* 5F618 8005EA18 AFB20018 */  sw         $s2, 0x18($sp)
/* 5F61C 8005EA1C 0C017A1C */  jal        func_8005E870
/* 5F620 8005EA20 AFB10014 */   sw        $s1, 0x14($sp)
/* 5F624 8005EA24 24110001 */  addiu      $s1, $zero, 0x1
/* 5F628 8005EA28 3C14802B */  lui        $s4, %hi(D_802AECB0)
/* 5F62C 8005EA2C 2694ECB0 */  addiu      $s4, $s4, %lo(D_802AECB0)
/* 5F630 8005EA30 00109100 */  sll        $s2, $s0, 4
/* 5F634 8005EA34 3C168031 */  lui        $s6, %hi(D_80312A28)
/* 5F638 8005EA38 26D62A28 */  addiu      $s6, $s6, %lo(D_80312A28)
/* 5F63C 8005EA3C 24150002 */  addiu      $s5, $zero, 0x2
/* 5F640 8005EA40 24100010 */  addiu      $s0, $zero, 0x10
/* 5F644 8005EA44 3C01802D */  lui        $at, %hi(D_802D2640)
/* 5F648 8005EA48 AC202640 */  sw         $zero, %lo(D_802D2640)($at)
.L8005EA4C:
/* 5F64C 8005EA4C 0C017A4B */  jal        func_8005E92C
/* 5F650 8005EA50 02202021 */   addu      $a0, $s1, $zero
/* 5F654 8005EA54 50400028 */  beql       $v0, $zero, .L8005EAF8
/* 5F658 8005EA58 26310001 */   addiu     $s1, $s1, 0x1
/* 5F65C 8005EA5C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F660 8005EA60 00300821 */  addu       $at, $at, $s0
/* 5F664 8005EA64 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5F668 8005EA68 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F66C 8005EA6C 00320821 */  addu       $at, $at, $s2
/* 5F670 8005EA70 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5F674 8005EA74 46201081 */  sub.d      $f2, $f2, $f0
/* 5F678 8005EA78 F6820000 */  sdc1       $f2, 0x0($s4)
/* 5F67C 8005EA7C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F680 8005EA80 00300821 */  addu       $at, $at, $s0
/* 5F684 8005EA84 D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 5F688 8005EA88 46221082 */  mul.d      $f2, $f2, $f2
/* 5F68C 8005EA8C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F690 8005EA90 00320821 */  addu       $at, $at, $s2
/* 5F694 8005EA94 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5F698 8005EA98 46202101 */  sub.d      $f4, $f4, $f0
/* 5F69C 8005EA9C 46242302 */  mul.d      $f12, $f4, $f4
/* 5F6A0 8005EAA0 F6840008 */  sdc1       $f4, 0x8($s4)
/* 5F6A4 8005EAA4 0C017A61 */  jal        func_8005E984
/* 5F6A8 8005EAA8 462C1300 */   add.d     $f12, $f2, $f12
/* 5F6AC 8005EAAC 00402021 */  addu       $a0, $v0, $zero
/* 5F6B0 8005EAB0 50800011 */  beql       $a0, $zero, .L8005EAF8
/* 5F6B4 8005EAB4 26310001 */   addiu     $s1, $s1, 0x1
/* 5F6B8 8005EAB8 3C02802D */  lui        $v0, %hi(D_802D2640)
/* 5F6BC 8005EABC 8C422640 */  lw         $v0, %lo(D_802D2640)($v0)
/* 5F6C0 8005EAC0 24430001 */  addiu      $v1, $v0, 0x1
/* 5F6C4 8005EAC4 00021080 */  sll        $v0, $v0, 2
/* 5F6C8 8005EAC8 00561021 */  addu       $v0, $v0, $s6
/* 5F6CC 8005EACC 3C01802D */  lui        $at, %hi(D_802D2640)
/* 5F6D0 8005EAD0 AC232640 */  sw         $v1, %lo(D_802D2640)($at)
/* 5F6D4 8005EAD4 14950007 */  bne        $a0, $s5, .L8005EAF4
/* 5F6D8 8005EAD8 AC510000 */   sw        $s1, 0x0($v0)
/* 5F6DC 8005EADC 3C02800C */  lui        $v0, %hi(D_800C66E0)
/* 5F6E0 8005EAE0 8C4266E0 */  lw         $v0, %lo(D_800C66E0)($v0)
/* 5F6E4 8005EAE4 14400003 */  bnez       $v0, .L8005EAF4
/* 5F6E8 8005EAE8 24130001 */   addiu     $s3, $zero, 0x1
/* 5F6EC 8005EAEC 08017AC2 */  j          .L8005EB08
/* 5F6F0 8005EAF0 24020001 */   addiu     $v0, $zero, 0x1
.L8005EAF4:
/* 5F6F4 8005EAF4 26310001 */  addiu      $s1, $s1, 0x1
.L8005EAF8:
/* 5F6F8 8005EAF8 2A220010 */  slti       $v0, $s1, 0x10
/* 5F6FC 8005EAFC 1440FFD3 */  bnez       $v0, .L8005EA4C
/* 5F700 8005EB00 26100010 */   addiu     $s0, $s0, 0x10
/* 5F704 8005EB04 02601021 */  addu       $v0, $s3, $zero
.L8005EB08:
/* 5F708 8005EB08 8FBF002C */  lw         $ra, 0x2C($sp)
/* 5F70C 8005EB0C 8FB60028 */  lw         $s6, 0x28($sp)
/* 5F710 8005EB10 8FB50024 */  lw         $s5, 0x24($sp)
/* 5F714 8005EB14 8FB40020 */  lw         $s4, 0x20($sp)
/* 5F718 8005EB18 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5F71C 8005EB1C 8FB20018 */  lw         $s2, 0x18($sp)
/* 5F720 8005EB20 8FB10014 */  lw         $s1, 0x14($sp)
/* 5F724 8005EB24 8FB00010 */  lw         $s0, 0x10($sp)
/* 5F728 8005EB28 03E00008 */  jr         $ra
/* 5F72C 8005EB2C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005EB30
/* 5F730 8005EB30 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F734 8005EB34 AFB00010 */  sw         $s0, 0x10($sp)
/* 5F738 8005EB38 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5F73C 8005EB3C AFB40020 */  sw         $s4, 0x20($sp)
/* 5F740 8005EB40 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5F744 8005EB44 AFB20018 */  sw         $s2, 0x18($sp)
/* 5F748 8005EB48 AFB10014 */  sw         $s1, 0x14($sp)
/* 5F74C 8005EB4C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 5F750 8005EB50 0C017A1C */  jal        func_8005E870
/* 5F754 8005EB54 00808021 */   addu      $s0, $a0, $zero
/* 5F758 8005EB58 24110001 */  addiu      $s1, $zero, 0x1
/* 5F75C 8005EB5C 3C13802B */  lui        $s3, %hi(D_802AECB0)
/* 5F760 8005EB60 2673ECB0 */  addiu      $s3, $s3, %lo(D_802AECB0)
/* 5F764 8005EB64 3C01800D */  lui        $at, %hi(D_800D4A68)
/* 5F768 8005EB68 D4344A68 */  ldc1       $f20, %lo(D_800D4A68)($at)
/* 5F76C 8005EB6C 00109100 */  sll        $s2, $s0, 4
/* 5F770 8005EB70 24140002 */  addiu      $s4, $zero, 0x2
/* 5F774 8005EB74 24100010 */  addiu      $s0, $zero, 0x10
.L8005EB78:
/* 5F778 8005EB78 0C017A4B */  jal        func_8005E92C
/* 5F77C 8005EB7C 02202021 */   addu      $a0, $s1, $zero
/* 5F780 8005EB80 5040001C */  beql       $v0, $zero, .L8005EBF4
/* 5F784 8005EB84 26310001 */   addiu     $s1, $s1, 0x1
/* 5F788 8005EB88 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F78C 8005EB8C 00300821 */  addu       $at, $at, $s0
/* 5F790 8005EB90 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5F794 8005EB94 46341001 */  sub.d      $f0, $f2, $f20
/* 5F798 8005EB98 46200000 */  add.d      $f0, $f0, $f0
/* 5F79C 8005EB9C 46201081 */  sub.d      $f2, $f2, $f0
/* 5F7A0 8005EBA0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F7A4 8005EBA4 00320821 */  addu       $at, $at, $s2
/* 5F7A8 8005EBA8 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5F7AC 8005EBAC 46201081 */  sub.d      $f2, $f2, $f0
/* 5F7B0 8005EBB0 F6620000 */  sdc1       $f2, 0x0($s3)
/* 5F7B4 8005EBB4 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F7B8 8005EBB8 00300821 */  addu       $at, $at, $s0
/* 5F7BC 8005EBBC D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 5F7C0 8005EBC0 46221082 */  mul.d      $f2, $f2, $f2
/* 5F7C4 8005EBC4 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F7C8 8005EBC8 00320821 */  addu       $at, $at, $s2
/* 5F7CC 8005EBCC D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5F7D0 8005EBD0 46202101 */  sub.d      $f4, $f4, $f0
/* 5F7D4 8005EBD4 46242302 */  mul.d      $f12, $f4, $f4
/* 5F7D8 8005EBD8 F6640008 */  sdc1       $f4, 0x8($s3)
/* 5F7DC 8005EBDC 0C017A61 */  jal        func_8005E984
/* 5F7E0 8005EBE0 462C1300 */   add.d     $f12, $f2, $f12
/* 5F7E4 8005EBE4 14540003 */  bne        $v0, $s4, .L8005EBF4
/* 5F7E8 8005EBE8 26310001 */   addiu     $s1, $s1, 0x1
/* 5F7EC 8005EBEC 08017B01 */  j          .L8005EC04
/* 5F7F0 8005EBF0 24020001 */   addiu     $v0, $zero, 0x1
.L8005EBF4:
/* 5F7F4 8005EBF4 2A220010 */  slti       $v0, $s1, 0x10
/* 5F7F8 8005EBF8 1440FFDF */  bnez       $v0, .L8005EB78
/* 5F7FC 8005EBFC 26100010 */   addiu     $s0, $s0, 0x10
/* 5F800 8005EC00 00001021 */  addu       $v0, $zero, $zero
.L8005EC04:
/* 5F804 8005EC04 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5F808 8005EC08 8FB40020 */  lw         $s4, 0x20($sp)
/* 5F80C 8005EC0C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5F810 8005EC10 8FB20018 */  lw         $s2, 0x18($sp)
/* 5F814 8005EC14 8FB10014 */  lw         $s1, 0x14($sp)
/* 5F818 8005EC18 8FB00010 */  lw         $s0, 0x10($sp)
/* 5F81C 8005EC1C D7B40028 */  ldc1       $f20, 0x28($sp)
/* 5F820 8005EC20 03E00008 */  jr         $ra
/* 5F824 8005EC24 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005EC28
/* 5F828 8005EC28 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F82C 8005EC2C AFB00010 */  sw         $s0, 0x10($sp)
/* 5F830 8005EC30 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5F834 8005EC34 AFB40020 */  sw         $s4, 0x20($sp)
/* 5F838 8005EC38 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5F83C 8005EC3C AFB20018 */  sw         $s2, 0x18($sp)
/* 5F840 8005EC40 AFB10014 */  sw         $s1, 0x14($sp)
/* 5F844 8005EC44 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 5F848 8005EC48 0C017A1C */  jal        func_8005E870
/* 5F84C 8005EC4C 00808021 */   addu      $s0, $a0, $zero
/* 5F850 8005EC50 24110001 */  addiu      $s1, $zero, 0x1
/* 5F854 8005EC54 3C13802B */  lui        $s3, %hi(D_802AECB0)
/* 5F858 8005EC58 2673ECB0 */  addiu      $s3, $s3, %lo(D_802AECB0)
/* 5F85C 8005EC5C 3C01800D */  lui        $at, %hi(D_800D4A70)
/* 5F860 8005EC60 D4344A70 */  ldc1       $f20, %lo(D_800D4A70)($at)
/* 5F864 8005EC64 00109100 */  sll        $s2, $s0, 4
/* 5F868 8005EC68 24140002 */  addiu      $s4, $zero, 0x2
/* 5F86C 8005EC6C 24100010 */  addiu      $s0, $zero, 0x10
.L8005EC70:
/* 5F870 8005EC70 0C017A4B */  jal        func_8005E92C
/* 5F874 8005EC74 02202021 */   addu      $a0, $s1, $zero
/* 5F878 8005EC78 5040001C */  beql       $v0, $zero, .L8005ECEC
/* 5F87C 8005EC7C 26310001 */   addiu     $s1, $s1, 0x1
/* 5F880 8005EC80 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F884 8005EC84 00300821 */  addu       $at, $at, $s0
/* 5F888 8005EC88 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5F88C 8005EC8C 4620A301 */  sub.d      $f12, $f20, $f0
/* 5F890 8005EC90 462C6300 */  add.d      $f12, $f12, $f12
/* 5F894 8005EC94 46206300 */  add.d      $f12, $f12, $f0
/* 5F898 8005EC98 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F89C 8005EC9C 00320821 */  addu       $at, $at, $s2
/* 5F8A0 8005ECA0 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5F8A4 8005ECA4 46206301 */  sub.d      $f12, $f12, $f0
/* 5F8A8 8005ECA8 F66C0000 */  sdc1       $f12, 0x0($s3)
/* 5F8AC 8005ECAC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F8B0 8005ECB0 00300821 */  addu       $at, $at, $s0
/* 5F8B4 8005ECB4 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5F8B8 8005ECB8 462C6302 */  mul.d      $f12, $f12, $f12
/* 5F8BC 8005ECBC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F8C0 8005ECC0 00320821 */  addu       $at, $at, $s2
/* 5F8C4 8005ECC4 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5F8C8 8005ECC8 46201081 */  sub.d      $f2, $f2, $f0
/* 5F8CC 8005ECCC 46221002 */  mul.d      $f0, $f2, $f2
/* 5F8D0 8005ECD0 F6620008 */  sdc1       $f2, 0x8($s3)
/* 5F8D4 8005ECD4 0C017A61 */  jal        func_8005E984
/* 5F8D8 8005ECD8 46206300 */   add.d     $f12, $f12, $f0
/* 5F8DC 8005ECDC 14540003 */  bne        $v0, $s4, .L8005ECEC
/* 5F8E0 8005ECE0 26310001 */   addiu     $s1, $s1, 0x1
/* 5F8E4 8005ECE4 08017B3F */  j          .L8005ECFC
/* 5F8E8 8005ECE8 24020001 */   addiu     $v0, $zero, 0x1
.L8005ECEC:
/* 5F8EC 8005ECEC 2A220010 */  slti       $v0, $s1, 0x10
/* 5F8F0 8005ECF0 1440FFDF */  bnez       $v0, .L8005EC70
/* 5F8F4 8005ECF4 26100010 */   addiu     $s0, $s0, 0x10
/* 5F8F8 8005ECF8 00001021 */  addu       $v0, $zero, $zero
.L8005ECFC:
/* 5F8FC 8005ECFC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5F900 8005ED00 8FB40020 */  lw         $s4, 0x20($sp)
/* 5F904 8005ED04 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5F908 8005ED08 8FB20018 */  lw         $s2, 0x18($sp)
/* 5F90C 8005ED0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 5F910 8005ED10 8FB00010 */  lw         $s0, 0x10($sp)
/* 5F914 8005ED14 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 5F918 8005ED18 03E00008 */  jr         $ra
/* 5F91C 8005ED1C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005ED20
/* 5F920 8005ED20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F924 8005ED24 AFB00010 */  sw         $s0, 0x10($sp)
/* 5F928 8005ED28 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5F92C 8005ED2C AFB40020 */  sw         $s4, 0x20($sp)
/* 5F930 8005ED30 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5F934 8005ED34 AFB20018 */  sw         $s2, 0x18($sp)
/* 5F938 8005ED38 AFB10014 */  sw         $s1, 0x14($sp)
/* 5F93C 8005ED3C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 5F940 8005ED40 0C017A1C */  jal        func_8005E870
/* 5F944 8005ED44 00808021 */   addu      $s0, $a0, $zero
/* 5F948 8005ED48 24110001 */  addiu      $s1, $zero, 0x1
/* 5F94C 8005ED4C 3C13802B */  lui        $s3, %hi(D_802AECB0)
/* 5F950 8005ED50 2673ECB0 */  addiu      $s3, $s3, %lo(D_802AECB0)
/* 5F954 8005ED54 00109100 */  sll        $s2, $s0, 4
/* 5F958 8005ED58 3C01800D */  lui        $at, %hi(D_800D4A78)
/* 5F95C 8005ED5C D4344A78 */  ldc1       $f20, %lo(D_800D4A78)($at)
/* 5F960 8005ED60 24140002 */  addiu      $s4, $zero, 0x2
/* 5F964 8005ED64 24100010 */  addiu      $s0, $zero, 0x10
.L8005ED68:
/* 5F968 8005ED68 0C017A4B */  jal        func_8005E92C
/* 5F96C 8005ED6C 02202021 */   addu      $a0, $s1, $zero
/* 5F970 8005ED70 5040001C */  beql       $v0, $zero, .L8005EDE4
/* 5F974 8005ED74 26310001 */   addiu     $s1, $s1, 0x1
/* 5F978 8005ED78 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F97C 8005ED7C 00300821 */  addu       $at, $at, $s0
/* 5F980 8005ED80 D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 5F984 8005ED84 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5F988 8005ED88 00320821 */  addu       $at, $at, $s2
/* 5F98C 8005ED8C D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5F990 8005ED90 46202101 */  sub.d      $f4, $f4, $f0
/* 5F994 8005ED94 F6640000 */  sdc1       $f4, 0x0($s3)
/* 5F998 8005ED98 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F99C 8005ED9C 00300821 */  addu       $at, $at, $s0
/* 5F9A0 8005EDA0 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5F9A4 8005EDA4 46341001 */  sub.d      $f0, $f2, $f20
/* 5F9A8 8005EDA8 46200000 */  add.d      $f0, $f0, $f0
/* 5F9AC 8005EDAC 46242102 */  mul.d      $f4, $f4, $f4
/* 5F9B0 8005EDB0 46201081 */  sub.d      $f2, $f2, $f0
/* 5F9B4 8005EDB4 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5F9B8 8005EDB8 00320821 */  addu       $at, $at, $s2
/* 5F9BC 8005EDBC D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5F9C0 8005EDC0 46201081 */  sub.d      $f2, $f2, $f0
/* 5F9C4 8005EDC4 46221302 */  mul.d      $f12, $f2, $f2
/* 5F9C8 8005EDC8 F6620008 */  sdc1       $f2, 0x8($s3)
/* 5F9CC 8005EDCC 0C017A61 */  jal        func_8005E984
/* 5F9D0 8005EDD0 462C2300 */   add.d     $f12, $f4, $f12
/* 5F9D4 8005EDD4 14540003 */  bne        $v0, $s4, .L8005EDE4
/* 5F9D8 8005EDD8 26310001 */   addiu     $s1, $s1, 0x1
/* 5F9DC 8005EDDC 08017B7D */  j          .L8005EDF4
/* 5F9E0 8005EDE0 24020001 */   addiu     $v0, $zero, 0x1
.L8005EDE4:
/* 5F9E4 8005EDE4 2A220010 */  slti       $v0, $s1, 0x10
/* 5F9E8 8005EDE8 1440FFDF */  bnez       $v0, .L8005ED68
/* 5F9EC 8005EDEC 26100010 */   addiu     $s0, $s0, 0x10
/* 5F9F0 8005EDF0 00001021 */  addu       $v0, $zero, $zero
.L8005EDF4:
/* 5F9F4 8005EDF4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5F9F8 8005EDF8 8FB40020 */  lw         $s4, 0x20($sp)
/* 5F9FC 8005EDFC 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5FA00 8005EE00 8FB20018 */  lw         $s2, 0x18($sp)
/* 5FA04 8005EE04 8FB10014 */  lw         $s1, 0x14($sp)
/* 5FA08 8005EE08 8FB00010 */  lw         $s0, 0x10($sp)
/* 5FA0C 8005EE0C D7B40028 */  ldc1       $f20, 0x28($sp)
/* 5FA10 8005EE10 03E00008 */  jr         $ra
/* 5FA14 8005EE14 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005EE18
/* 5FA18 8005EE18 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5FA1C 8005EE1C AFB00010 */  sw         $s0, 0x10($sp)
/* 5FA20 8005EE20 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5FA24 8005EE24 AFB40020 */  sw         $s4, 0x20($sp)
/* 5FA28 8005EE28 AFB3001C */  sw         $s3, 0x1C($sp)
/* 5FA2C 8005EE2C AFB20018 */  sw         $s2, 0x18($sp)
/* 5FA30 8005EE30 AFB10014 */  sw         $s1, 0x14($sp)
/* 5FA34 8005EE34 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 5FA38 8005EE38 0C017A1C */  jal        func_8005E870
/* 5FA3C 8005EE3C 00808021 */   addu      $s0, $a0, $zero
/* 5FA40 8005EE40 24110001 */  addiu      $s1, $zero, 0x1
/* 5FA44 8005EE44 3C13802B */  lui        $s3, %hi(D_802AECB0)
/* 5FA48 8005EE48 2673ECB0 */  addiu      $s3, $s3, %lo(D_802AECB0)
/* 5FA4C 8005EE4C 00109100 */  sll        $s2, $s0, 4
/* 5FA50 8005EE50 3C01800D */  lui        $at, %hi(D_800D4A80)
/* 5FA54 8005EE54 D4344A80 */  ldc1       $f20, %lo(D_800D4A80)($at)
/* 5FA58 8005EE58 24140002 */  addiu      $s4, $zero, 0x2
/* 5FA5C 8005EE5C 24100010 */  addiu      $s0, $zero, 0x10
.L8005EE60:
/* 5FA60 8005EE60 0C017A4B */  jal        func_8005E92C
/* 5FA64 8005EE64 02202021 */   addu      $a0, $s1, $zero
/* 5FA68 8005EE68 5040001C */  beql       $v0, $zero, .L8005EEDC
/* 5FA6C 8005EE6C 26310001 */   addiu     $s1, $s1, 0x1
/* 5FA70 8005EE70 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FA74 8005EE74 00300821 */  addu       $at, $at, $s0
/* 5FA78 8005EE78 D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 5FA7C 8005EE7C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FA80 8005EE80 00320821 */  addu       $at, $at, $s2
/* 5FA84 8005EE84 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5FA88 8005EE88 46202101 */  sub.d      $f4, $f4, $f0
/* 5FA8C 8005EE8C F6640000 */  sdc1       $f4, 0x0($s3)
/* 5FA90 8005EE90 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FA94 8005EE94 00300821 */  addu       $at, $at, $s0
/* 5FA98 8005EE98 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5FA9C 8005EE9C 4622A001 */  sub.d      $f0, $f20, $f2
/* 5FAA0 8005EEA0 46200000 */  add.d      $f0, $f0, $f0
/* 5FAA4 8005EEA4 46242102 */  mul.d      $f4, $f4, $f4
/* 5FAA8 8005EEA8 46220000 */  add.d      $f0, $f0, $f2
/* 5FAAC 8005EEAC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FAB0 8005EEB0 00320821 */  addu       $at, $at, $s2
/* 5FAB4 8005EEB4 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5FAB8 8005EEB8 46220001 */  sub.d      $f0, $f0, $f2
/* 5FABC 8005EEBC 46200302 */  mul.d      $f12, $f0, $f0
/* 5FAC0 8005EEC0 F6600008 */  sdc1       $f0, 0x8($s3)
/* 5FAC4 8005EEC4 0C017A61 */  jal        func_8005E984
/* 5FAC8 8005EEC8 462C2300 */   add.d     $f12, $f4, $f12
/* 5FACC 8005EECC 14540003 */  bne        $v0, $s4, .L8005EEDC
/* 5FAD0 8005EED0 26310001 */   addiu     $s1, $s1, 0x1
/* 5FAD4 8005EED4 08017BBB */  j          .L8005EEEC
/* 5FAD8 8005EED8 24020001 */   addiu     $v0, $zero, 0x1
.L8005EEDC:
/* 5FADC 8005EEDC 2A220010 */  slti       $v0, $s1, 0x10
/* 5FAE0 8005EEE0 1440FFDF */  bnez       $v0, .L8005EE60
/* 5FAE4 8005EEE4 26100010 */   addiu     $s0, $s0, 0x10
/* 5FAE8 8005EEE8 00001021 */  addu       $v0, $zero, $zero
.L8005EEEC:
/* 5FAEC 8005EEEC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5FAF0 8005EEF0 8FB40020 */  lw         $s4, 0x20($sp)
/* 5FAF4 8005EEF4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5FAF8 8005EEF8 8FB20018 */  lw         $s2, 0x18($sp)
/* 5FAFC 8005EEFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 5FB00 8005EF00 8FB00010 */  lw         $s0, 0x10($sp)
/* 5FB04 8005EF04 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 5FB08 8005EF08 03E00008 */  jr         $ra
/* 5FB0C 8005EF0C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005EF10
/* 5FB10 8005EF10 3C01802D */  lui        $at, %hi(D_802D0BA0)
/* 5FB14 8005EF14 D4240BA0 */  ldc1       $f4, %lo(D_802D0BA0)($at)
/* 5FB18 8005EF18 00041900 */  sll        $v1, $a0, 4
/* 5FB1C 8005EF1C 46242000 */  add.d      $f0, $f4, $f4
/* 5FB20 8005EF20 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FB24 8005EF24 00230821 */  addu       $at, $at, $v1
/* 5FB28 8005EF28 D42659D8 */  ldc1       $f6, %lo(D_803F59D8)($at)
/* 5FB2C 8005EF2C 46260080 */  add.d      $f2, $f0, $f6
/* 5FB30 8005EF30 3C01800D */  lui        $at, %hi(D_800D4A88)
/* 5FB34 8005EF34 D42A4A88 */  ldc1       $f10, %lo(D_800D4A88)($at)
/* 5FB38 8005EF38 3C01800D */  lui        $at, %hi(D_800D4A90)
/* 5FB3C 8005EF3C D4204A90 */  ldc1       $f0, %lo(D_800D4A90)($at)
/* 5FB40 8005EF40 4622503C */  c.lt.d     $f10, $f2
/* 5FB44 8005EF44 3C01802B */  lui        $at, %hi(D_802AED30)
/* 5FB48 8005EF48 F420ED30 */  sdc1       $f0, %lo(D_802AED30)($at)
/* 5FB4C 8005EF4C 4501005A */  bc1t       .L8005F0B8
/* 5FB50 8005EF50 00000000 */   nop
/* 5FB54 8005EF54 3C01800D */  lui        $at, %hi(D_800D4A98)
/* 5FB58 8005EF58 D4284A98 */  ldc1       $f8, %lo(D_800D4A98)($at)
/* 5FB5C 8005EF5C 4628103C */  c.lt.d     $f2, $f8
/* 5FB60 8005EF60 00000000 */  nop
/* 5FB64 8005EF64 45010054 */  bc1t       .L8005F0B8
/* 5FB68 8005EF68 00000000 */   nop
/* 5FB6C 8005EF6C 3C01802D */  lui        $at, %hi(D_802D0BA8)
/* 5FB70 8005EF70 D4200BA8 */  ldc1       $f0, %lo(D_802D0BA8)($at)
/* 5FB74 8005EF74 46200000 */  add.d      $f0, $f0, $f0
/* 5FB78 8005EF78 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FB7C 8005EF7C 00230821 */  addu       $at, $at, $v1
/* 5FB80 8005EF80 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5FB84 8005EF84 46220080 */  add.d      $f2, $f0, $f2
/* 5FB88 8005EF88 3C01800D */  lui        $at, %hi(D_800D4AA0)
/* 5FB8C 8005EF8C D4204AA0 */  ldc1       $f0, %lo(D_800D4AA0)($at)
/* 5FB90 8005EF90 4622003C */  c.lt.d     $f0, $f2
/* 5FB94 8005EF94 00000000 */  nop
/* 5FB98 8005EF98 45010047 */  bc1t       .L8005F0B8
/* 5FB9C 8005EF9C 00000000 */   nop
/* 5FBA0 8005EFA0 3C01800D */  lui        $at, %hi(D_800D4AA8)
/* 5FBA4 8005EFA4 D4204AA8 */  ldc1       $f0, %lo(D_800D4AA8)($at)
/* 5FBA8 8005EFA8 4620103C */  c.lt.d     $f2, $f0
/* 5FBAC 8005EFAC 00000000 */  nop
/* 5FBB0 8005EFB0 45010041 */  bc1t       .L8005F0B8
/* 5FBB4 8005EFB4 00000000 */   nop
/* 5FBB8 8005EFB8 44800000 */  mtc1       $zero, $f0
/* 5FBBC 8005EFBC 44800800 */  mtc1       $zero, $f1
/* 5FBC0 8005EFC0 00000000 */  nop
/* 5FBC4 8005EFC4 4624003C */  c.lt.d     $f0, $f4
/* 5FBC8 8005EFC8 00000000 */  nop
/* 5FBCC 8005EFCC 45000008 */  bc1f       .L8005EFF0
/* 5FBD0 8005EFD0 00000000 */   nop
/* 5FBD4 8005EFD4 46265081 */  sub.d      $f2, $f10, $f6
/* 5FBD8 8005EFD8 4620103C */  c.lt.d     $f2, $f0
/* 5FBDC 8005EFDC 00000000 */  nop
/* 5FBE0 8005EFE0 45010044 */  bc1t       .L8005F0F4
/* 5FBE4 8005EFE4 00000000 */   nop
/* 5FBE8 8005EFE8 08017C07 */  j          .L8005F01C
/* 5FBEC 8005EFEC 46241003 */   div.d     $f0, $f2, $f4
.L8005EFF0:
/* 5FBF0 8005EFF0 4620203C */  c.lt.d     $f4, $f0
/* 5FBF4 8005EFF4 00000000 */  nop
/* 5FBF8 8005EFF8 4500000A */  bc1f       .L8005F024
/* 5FBFC 8005EFFC 00000000 */   nop
/* 5FC00 8005F000 46283081 */  sub.d      $f2, $f6, $f8
/* 5FC04 8005F004 4620103C */  c.lt.d     $f2, $f0
/* 5FC08 8005F008 00000000 */  nop
/* 5FC0C 8005F00C 45010039 */  bc1t       .L8005F0F4
/* 5FC10 8005F010 00000000 */   nop
/* 5FC14 8005F014 46201007 */  neg.d      $f0, $f2
/* 5FC18 8005F018 46240003 */  div.d      $f0, $f0, $f4
.L8005F01C:
/* 5FC1C 8005F01C 3C01802B */  lui        $at, %hi(D_802AED30)
/* 5FC20 8005F020 F420ED30 */  sdc1       $f0, %lo(D_802AED30)($at)
.L8005F024:
/* 5FC24 8005F024 3C01802D */  lui        $at, %hi(D_802D0BA8)
/* 5FC28 8005F028 D4240BA8 */  ldc1       $f4, %lo(D_802D0BA8)($at)
/* 5FC2C 8005F02C 44803000 */  mtc1       $zero, $f6
/* 5FC30 8005F030 44803800 */  mtc1       $zero, $f7
/* 5FC34 8005F034 00000000 */  nop
/* 5FC38 8005F038 4624303C */  c.lt.d     $f6, $f4
/* 5FC3C 8005F03C 00000000 */  nop
/* 5FC40 8005F040 00000000 */  nop
/* 5FC44 8005F044 4500000D */  bc1f       .L8005F07C
/* 5FC48 8005F048 00041100 */   sll       $v0, $a0, 4
/* 5FC4C 8005F04C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FC50 8005F050 00220821 */  addu       $at, $at, $v0
/* 5FC54 8005F054 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5FC58 8005F058 3C01800D */  lui        $at, %hi(D_800D4AB0)
/* 5FC5C 8005F05C D4204AB0 */  ldc1       $f0, %lo(D_800D4AB0)($at)
/* 5FC60 8005F060 46220081 */  sub.d      $f2, $f0, $f2
/* 5FC64 8005F064 4626103C */  c.lt.d     $f2, $f6
/* 5FC68 8005F068 00000000 */  nop
/* 5FC6C 8005F06C 45010012 */  bc1t       .L8005F0B8
/* 5FC70 8005F070 00000000 */   nop
/* 5FC74 8005F074 08017C33 */  j          .L8005F0CC
/* 5FC78 8005F078 46241083 */   div.d     $f2, $f2, $f4
.L8005F07C:
/* 5FC7C 8005F07C 4626203C */  c.lt.d     $f4, $f6
/* 5FC80 8005F080 00000000 */  nop
/* 5FC84 8005F084 45000019 */  bc1f       .L8005F0EC
/* 5FC88 8005F088 00000000 */   nop
/* 5FC8C 8005F08C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FC90 8005F090 00220821 */  addu       $at, $at, $v0
/* 5FC94 8005F094 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5FC98 8005F098 3C01800D */  lui        $at, %hi(D_800D4AB8)
/* 5FC9C 8005F09C D4204AB8 */  ldc1       $f0, %lo(D_800D4AB8)($at)
/* 5FCA0 8005F0A0 46201081 */  sub.d      $f2, $f2, $f0
/* 5FCA4 8005F0A4 4626103C */  c.lt.d     $f2, $f6
/* 5FCA8 8005F0A8 00000000 */  nop
/* 5FCAC 8005F0AC 00000000 */  nop
/* 5FCB0 8005F0B0 45020005 */  bc1fl      .L8005F0C8
/* 5FCB4 8005F0B4 46202007 */   neg.d     $f0, $f4
.L8005F0B8:
/* 5FCB8 8005F0B8 44800000 */  mtc1       $zero, $f0
/* 5FCBC 8005F0BC 44800800 */  mtc1       $zero, $f1
/* 5FCC0 8005F0C0 08017C3D */  j          .L8005F0F4
/* 5FCC4 8005F0C4 00000000 */   nop
.L8005F0C8:
/* 5FCC8 8005F0C8 46201083 */  div.d      $f2, $f2, $f0
.L8005F0CC:
/* 5FCCC 8005F0CC 3C01802B */  lui        $at, %hi(D_802AED30)
/* 5FCD0 8005F0D0 D420ED30 */  ldc1       $f0, %lo(D_802AED30)($at)
/* 5FCD4 8005F0D4 4620103C */  c.lt.d     $f2, $f0
/* 5FCD8 8005F0D8 00000000 */  nop
/* 5FCDC 8005F0DC 45000005 */  bc1f       .L8005F0F4
/* 5FCE0 8005F0E0 00000000 */   nop
/* 5FCE4 8005F0E4 3C01802B */  lui        $at, %hi(D_802AED30)
/* 5FCE8 8005F0E8 F422ED30 */  sdc1       $f2, %lo(D_802AED30)($at)
.L8005F0EC:
/* 5FCEC 8005F0EC 3C01802B */  lui        $at, %hi(D_802AED30)
/* 5FCF0 8005F0F0 D420ED30 */  ldc1       $f0, %lo(D_802AED30)($at)
.L8005F0F4:
/* 5FCF4 8005F0F4 03E00008 */  jr         $ra
/* 5FCF8 8005F0F8 00000000 */   nop

glabel func_8005F0FC
/* 5FCFC 8005F0FC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5FD00 8005F100 AFB3002C */  sw         $s3, 0x2C($sp)
/* 5FD04 8005F104 AFBF0034 */  sw         $ra, 0x34($sp)
/* 5FD08 8005F108 AFB40030 */  sw         $s4, 0x30($sp)
/* 5FD0C 8005F10C AFB20028 */  sw         $s2, 0x28($sp)
/* 5FD10 8005F110 AFB10024 */  sw         $s1, 0x24($sp)
/* 5FD14 8005F114 AFB00020 */  sw         $s0, 0x20($sp)
/* 5FD18 8005F118 F7B80048 */  sdc1       $f24, 0x48($sp)
/* 5FD1C 8005F11C F7B60040 */  sdc1       $f22, 0x40($sp)
/* 5FD20 8005F120 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 5FD24 8005F124 0C017BC4 */  jal        func_8005EF10
/* 5FD28 8005F128 00809821 */   addu      $s3, $a0, $zero
/* 5FD2C 8005F12C 3C01800D */  lui        $at, %hi(D_800D4AC0)
/* 5FD30 8005F130 D4224AC0 */  ldc1       $f2, %lo(D_800D4AC0)($at)
/* 5FD34 8005F134 4622003C */  c.lt.d     $f0, $f2
/* 5FD38 8005F138 3C01802B */  lui        $at, %hi(D_802AED50)
/* 5FD3C 8005F13C F420ED50 */  sdc1       $f0, %lo(D_802AED50)($at)
/* 5FD40 8005F140 4501005B */  bc1t       .L8005F2B0
/* 5FD44 8005F144 24120001 */   addiu     $s2, $zero, 0x1
/* 5FD48 8005F148 3C01800D */  lui        $at, %hi(D_800D4AC8)
/* 5FD4C 8005F14C D4384AC8 */  ldc1       $f24, %lo(D_800D4AC8)($at)
/* 5FD50 8005F150 00138900 */  sll        $s1, $s3, 4
/* 5FD54 8005F154 3C14802D */  lui        $s4, %hi(D_802D0BA0)
/* 5FD58 8005F158 26940BA0 */  addiu      $s4, $s4, %lo(D_802D0BA0)
/* 5FD5C 8005F15C 46201586 */  mov.d      $f22, $f2
/* 5FD60 8005F160 24100010 */  addiu      $s0, $zero, 0x10
.L8005F164:
/* 5FD64 8005F164 12530048 */  beq        $s2, $s3, .L8005F288
/* 5FD68 8005F168 00000000 */   nop
/* 5FD6C 8005F16C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FD70 8005F170 00300821 */  addu       $at, $at, $s0
/* 5FD74 8005F174 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5FD78 8005F178 46381032 */  c.eq.d     $f2, $f24
/* 5FD7C 8005F17C 00000000 */  nop
/* 5FD80 8005F180 00000000 */  nop
/* 5FD84 8005F184 45010040 */  bc1t       .L8005F288
/* 5FD88 8005F188 27A40010 */   addiu     $a0, $sp, 0x10
/* 5FD8C 8005F18C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FD90 8005F190 00310821 */  addu       $at, $at, $s1
/* 5FD94 8005F194 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5FD98 8005F198 46201001 */  sub.d      $f0, $f2, $f0
/* 5FD9C 8005F19C F7A00010 */  sdc1       $f0, 0x10($sp)
/* 5FDA0 8005F1A0 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FDA4 8005F1A4 00300821 */  addu       $at, $at, $s0
/* 5FDA8 8005F1A8 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5FDAC 8005F1AC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FDB0 8005F1B0 00310821 */  addu       $at, $at, $s1
/* 5FDB4 8005F1B4 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5FDB8 8005F1B8 46201081 */  sub.d      $f2, $f2, $f0
/* 5FDBC 8005F1BC F7A20018 */  sdc1       $f2, 0x18($sp)
/* 5FDC0 8005F1C0 0C022C7C */  jal        func_8008B1F0
/* 5FDC4 8005F1C4 02802821 */   addu      $a1, $s4, $zero
/* 5FDC8 8005F1C8 44801000 */  mtc1       $zero, $f2
/* 5FDCC 8005F1CC 44801800 */  mtc1       $zero, $f3
/* 5FDD0 8005F1D0 46200186 */  mov.d      $f6, $f0
/* 5FDD4 8005F1D4 4626103E */  c.le.d     $f2, $f6
/* 5FDD8 8005F1D8 00000000 */  nop
/* 5FDDC 8005F1DC 4500002A */  bc1f       .L8005F288
/* 5FDE0 8005F1E0 00000000 */   nop
/* 5FDE4 8005F1E4 46363501 */  sub.d      $f20, $f6, $f22
/* 5FDE8 8005F1E8 3C01802B */  lui        $at, %hi(D_802AED50)
/* 5FDEC 8005F1EC D420ED50 */  ldc1       $f0, %lo(D_802AED50)($at)
/* 5FDF0 8005F1F0 4620A03C */  c.lt.d     $f20, $f0
/* 5FDF4 8005F1F4 00000000 */  nop
/* 5FDF8 8005F1F8 00000000 */  nop
/* 5FDFC 8005F1FC 45000024 */  bc1f       .L8005F290
/* 5FE00 8005F200 27A40010 */   addiu     $a0, $sp, 0x10
/* 5FE04 8005F204 D6800000 */  ldc1       $f0, 0x0($s4)
/* 5FE08 8005F208 46260002 */  mul.d      $f0, $f0, $f6
/* 5FE0C 8005F20C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FE10 8005F210 00310821 */  addu       $at, $at, $s1
/* 5FE14 8005F214 D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 5FE18 8005F218 3C01802D */  lui        $at, %hi(D_802D0BA8)
/* 5FE1C 8005F21C D4220BA8 */  ldc1       $f2, %lo(D_802D0BA8)($at)
/* 5FE20 8005F220 46240000 */  add.d      $f0, $f0, $f4
/* 5FE24 8005F224 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FE28 8005F228 00300821 */  addu       $at, $at, $s0
/* 5FE2C 8005F22C D42459D8 */  ldc1       $f4, %lo(D_803F59D8)($at)
/* 5FE30 8005F230 46261082 */  mul.d      $f2, $f2, $f6
/* 5FE34 8005F234 46240001 */  sub.d      $f0, $f0, $f4
/* 5FE38 8005F238 F7A00010 */  sdc1       $f0, 0x10($sp)
/* 5FE3C 8005F23C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FE40 8005F240 00310821 */  addu       $at, $at, $s1
/* 5FE44 8005F244 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5FE48 8005F248 46201080 */  add.d      $f2, $f2, $f0
/* 5FE4C 8005F24C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FE50 8005F250 00300821 */  addu       $at, $at, $s0
/* 5FE54 8005F254 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5FE58 8005F258 46201081 */  sub.d      $f2, $f2, $f0
/* 5FE5C 8005F25C F7A20018 */  sdc1       $f2, 0x18($sp)
/* 5FE60 8005F260 0C022C7C */  jal        func_8008B1F0
/* 5FE64 8005F264 00802821 */   addu      $a1, $a0, $zero
/* 5FE68 8005F268 3C01800D */  lui        $at, %hi(D_800D4AD0)
/* 5FE6C 8005F26C D4224AD0 */  ldc1       $f2, %lo(D_800D4AD0)($at)
/* 5FE70 8005F270 4622003C */  c.lt.d     $f0, $f2
/* 5FE74 8005F274 00000000 */  nop
/* 5FE78 8005F278 45000003 */  bc1f       .L8005F288
/* 5FE7C 8005F27C 00000000 */   nop
/* 5FE80 8005F280 3C01802B */  lui        $at, %hi(D_802AED50)
/* 5FE84 8005F284 F434ED50 */  sdc1       $f20, %lo(D_802AED50)($at)
.L8005F288:
/* 5FE88 8005F288 3C01802B */  lui        $at, %hi(D_802AED50)
/* 5FE8C 8005F28C D420ED50 */  ldc1       $f0, %lo(D_802AED50)($at)
.L8005F290:
/* 5FE90 8005F290 4636003C */  c.lt.d     $f0, $f22
/* 5FE94 8005F294 00000000 */  nop
/* 5FE98 8005F298 00000000 */  nop
/* 5FE9C 8005F29C 45010004 */  bc1t       .L8005F2B0
/* 5FEA0 8005F2A0 26520001 */   addiu     $s2, $s2, 0x1
/* 5FEA4 8005F2A4 2A420010 */  slti       $v0, $s2, 0x10
/* 5FEA8 8005F2A8 1440FFAE */  bnez       $v0, .L8005F164
/* 5FEAC 8005F2AC 26100010 */   addiu     $s0, $s0, 0x10
.L8005F2B0:
/* 5FEB0 8005F2B0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 5FEB4 8005F2B4 8FB40030 */  lw         $s4, 0x30($sp)
/* 5FEB8 8005F2B8 8FB3002C */  lw         $s3, 0x2C($sp)
/* 5FEBC 8005F2BC 8FB20028 */  lw         $s2, 0x28($sp)
/* 5FEC0 8005F2C0 8FB10024 */  lw         $s1, 0x24($sp)
/* 5FEC4 8005F2C4 8FB00020 */  lw         $s0, 0x20($sp)
/* 5FEC8 8005F2C8 D7B80048 */  ldc1       $f24, 0x48($sp)
/* 5FECC 8005F2CC D7B60040 */  ldc1       $f22, 0x40($sp)
/* 5FED0 8005F2D0 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 5FED4 8005F2D4 03E00008 */  jr         $ra
/* 5FED8 8005F2D8 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8005F2DC
/* 5FEDC 8005F2DC 00052900 */  sll        $a1, $a1, 4
/* 5FEE0 8005F2E0 00042100 */  sll        $a0, $a0, 4
/* 5FEE4 8005F2E4 3C01800C */  lui        $at, %hi(D_800C66E8)
/* 5FEE8 8005F2E8 00250821 */  addu       $at, $at, $a1
/* 5FEEC 8005F2EC D42066E8 */  ldc1       $f0, %lo(D_800C66E8)($at)
/* 5FEF0 8005F2F0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FEF4 8005F2F4 00240821 */  addu       $at, $at, $a0
/* 5FEF8 8005F2F8 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5FEFC 8005F2FC 46220001 */  sub.d      $f0, $f0, $f2
/* 5FF00 8005F300 3C01802C */  lui        $at, %hi(D_802C6088)
/* 5FF04 8005F304 F4206088 */  sdc1       $f0, %lo(D_802C6088)($at)
/* 5FF08 8005F308 3C01800C */  lui        $at, %hi(D_800C66F0)
/* 5FF0C 8005F30C 00250821 */  addu       $at, $at, $a1
/* 5FF10 8005F310 D42066F0 */  ldc1       $f0, %lo(D_800C66F0)($at)
/* 5FF14 8005F314 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FF18 8005F318 00240821 */  addu       $at, $at, $a0
/* 5FF1C 8005F31C D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5FF20 8005F320 46220001 */  sub.d      $f0, $f0, $f2
/* 5FF24 8005F324 3C01802C */  lui        $at, %hi(D_802C6090)
/* 5FF28 8005F328 03E00008 */  jr         $ra
/* 5FF2C 8005F32C F4206090 */   sdc1      $f0, %lo(D_802C6090)($at)

glabel func_8005F330
/* 5FF30 8005F330 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5FF34 8005F334 00052900 */  sll        $a1, $a1, 4
/* 5FF38 8005F338 00041100 */  sll        $v0, $a0, 4
/* 5FF3C 8005F33C AFBF0010 */  sw         $ra, 0x10($sp)
/* 5FF40 8005F340 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FF44 8005F344 00250821 */  addu       $at, $at, $a1
/* 5FF48 8005F348 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5FF4C 8005F34C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FF50 8005F350 00220821 */  addu       $at, $at, $v0
/* 5FF54 8005F354 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5FF58 8005F358 46220001 */  sub.d      $f0, $f0, $f2
/* 5FF5C 8005F35C 3C04802D */  lui        $a0, %hi(D_802D2E40)
/* 5FF60 8005F360 24842E40 */  addiu      $a0, $a0, %lo(D_802D2E40)
/* 5FF64 8005F364 F4800000 */  sdc1       $f0, 0x0($a0)
/* 5FF68 8005F368 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FF6C 8005F36C 00250821 */  addu       $at, $at, $a1
/* 5FF70 8005F370 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 5FF74 8005F374 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 5FF78 8005F378 00220821 */  addu       $at, $at, $v0
/* 5FF7C 8005F37C D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 5FF80 8005F380 46220001 */  sub.d      $f0, $f0, $f2
/* 5FF84 8005F384 3C01802D */  lui        $at, %hi(D_802D2E48)
/* 5FF88 8005F388 0C022CF3 */  jal        func_8008B3CC
/* 5FF8C 8005F38C F4202E48 */   sdc1      $f0, %lo(D_802D2E48)($at)
/* 5FF90 8005F390 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5FF94 8005F394 03E00008 */  jr         $ra
/* 5FF98 8005F398 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8005F39C
/* 5FF9C 8005F39C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5FFA0 8005F3A0 AFB3002C */  sw         $s3, 0x2C($sp)
/* 5FFA4 8005F3A4 00809821 */  addu       $s3, $a0, $zero
/* 5FFA8 8005F3A8 AFB40030 */  sw         $s4, 0x30($sp)
/* 5FFAC 8005F3AC 00A0A021 */  addu       $s4, $a1, $zero
/* 5FFB0 8005F3B0 00141100 */  sll        $v0, $s4, 4
/* 5FFB4 8005F3B4 00131900 */  sll        $v1, $s3, 4
/* 5FFB8 8005F3B8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 5FFBC 8005F3BC AFB20028 */  sw         $s2, 0x28($sp)
/* 5FFC0 8005F3C0 AFB10024 */  sw         $s1, 0x24($sp)
/* 5FFC4 8005F3C4 AFB00020 */  sw         $s0, 0x20($sp)
/* 5FFC8 8005F3C8 F7B80048 */  sdc1       $f24, 0x48($sp)
/* 5FFCC 8005F3CC F7B60040 */  sdc1       $f22, 0x40($sp)
/* 5FFD0 8005F3D0 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 5FFD4 8005F3D4 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FFD8 8005F3D8 00220821 */  addu       $at, $at, $v0
/* 5FFDC 8005F3DC D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 5FFE0 8005F3E0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 5FFE4 8005F3E4 00230821 */  addu       $at, $at, $v1
/* 5FFE8 8005F3E8 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 5FFEC 8005F3EC 46220001 */  sub.d      $f0, $f0, $f2
/* 5FFF0 8005F3F0 3C12802D */  lui        $s2, %hi(D_802D2E40)
/* 5FFF4 8005F3F4 26522E40 */  addiu      $s2, $s2, %lo(D_802D2E40)
/* 5FFF8 8005F3F8 F6400000 */  sdc1       $f0, 0x0($s2)
/* 5FFFC 8005F3FC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60000 8005F400 00220821 */  addu       $at, $at, $v0
/* 60004 8005F404 D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 60008 8005F408 46200002 */  mul.d      $f0, $f0, $f0
/* 6000C 8005F40C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60010 8005F410 00230821 */  addu       $at, $at, $v1
/* 60014 8005F414 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 60018 8005F418 46222101 */  sub.d      $f4, $f4, $f2
/* 6001C 8005F41C 46242082 */  mul.d      $f2, $f4, $f4
/* 60020 8005F420 46220500 */  add.d      $f20, $f0, $f2
/* 60024 8005F424 3C01800D */  lui        $at, %hi(D_800D4AD8)
/* 60028 8005F428 D4204AD8 */  ldc1       $f0, %lo(D_800D4AD8)($at)
/* 6002C 8005F42C 4487C000 */  mtc1       $a3, $f24
/* 60030 8005F430 4486C800 */  mtc1       $a2, $f25
/* 60034 8005F434 4620A03C */  c.lt.d     $f20, $f0
/* 60038 8005F438 F6440008 */  sdc1       $f4, 0x8($s2)
/* 6003C 8005F43C D7B60060 */  ldc1       $f22, 0x60($sp)
/* 60040 8005F440 45030001 */  bc1tl      .L8005F448
/* 60044 8005F444 46200506 */   mov.d     $f20, $f0
.L8005F448:
/* 60048 8005F448 0C022BA9 */  jal        func_8008AEA4
/* 6004C 8005F44C 4620A301 */   sub.d     $f12, $f20, $f0
/* 60050 8005F450 3C01802B */  lui        $at, %hi(D_802AED48)
/* 60054 8005F454 F420ED48 */  sdc1       $f0, %lo(D_802AED48)($at)
/* 60058 8005F458 0C022BA9 */  jal        func_8008AEA4
/* 6005C 8005F45C 4620A306 */   mov.d     $f12, $f20
/* 60060 8005F460 3C01802B */  lui        $at, %hi(D_802AED48)
/* 60064 8005F464 D42CED48 */  ldc1       $f12, %lo(D_802AED48)($at)
/* 60068 8005F468 D6440000 */  ldc1       $f4, 0x0($s2)
/* 6006C 8005F46C 46246402 */  mul.d      $f16, $f12, $f4
/* 60070 8005F470 D6420008 */  ldc1       $f2, 0x8($s2)
/* 60074 8005F474 46221380 */  add.d      $f14, $f2, $f2
/* 60078 8005F478 462E8281 */  sub.d      $f10, $f16, $f14
/* 6007C 8005F47C 3C01800D */  lui        $at, %hi(D_800D4AE0)
/* 60080 8005F480 D4264AE0 */  ldc1       $f6, %lo(D_800D4AE0)($at)
/* 60084 8005F484 46265282 */  mul.d      $f10, $f10, $f6
/* 60088 8005F488 46205283 */  div.d      $f10, $f10, $f0
/* 6008C 8005F48C 462E8200 */  add.d      $f8, $f16, $f14
/* 60090 8005F490 46264202 */  mul.d      $f8, $f8, $f6
/* 60094 8005F494 46204203 */  div.d      $f8, $f8, $f0
/* 60098 8005F498 46226402 */  mul.d      $f16, $f12, $f2
/* 6009C 8005F49C 46242380 */  add.d      $f14, $f4, $f4
/* 600A0 8005F4A0 462E8101 */  sub.d      $f4, $f16, $f14
/* 600A4 8005F4A4 46262102 */  mul.d      $f4, $f4, $f6
/* 600A8 8005F4A8 46202103 */  div.d      $f4, $f4, $f0
/* 600AC 8005F4AC 462E8080 */  add.d      $f2, $f16, $f14
/* 600B0 8005F4B0 46261082 */  mul.d      $f2, $f2, $f6
/* 600B4 8005F4B4 46201083 */  div.d      $f2, $f2, $f0
/* 600B8 8005F4B8 3C11802D */  lui        $s1, %hi(D_802D2648)
/* 600BC 8005F4BC 26312648 */  addiu      $s1, $s1, %lo(D_802D2648)
/* 600C0 8005F4C0 3C10802F */  lui        $s0, %hi(D_802F1908)
/* 600C4 8005F4C4 26101908 */  addiu      $s0, $s0, %lo(D_802F1908)
/* 600C8 8005F4C8 3C01802B */  lui        $at, %hi(D_802AED40)
/* 600CC 8005F4CC F420ED40 */  sdc1       $f0, %lo(D_802AED40)($at)
/* 600D0 8005F4D0 F60A0000 */  sdc1       $f10, 0x0($s0)
/* 600D4 8005F4D4 F6280000 */  sdc1       $f8, 0x0($s1)
/* 600D8 8005F4D8 3C01802D */  lui        $at, %hi(D_802D2650)
/* 600DC 8005F4DC F4242650 */  sdc1       $f4, %lo(D_802D2650)($at)
/* 600E0 8005F4E0 F6020008 */  sdc1       $f2, 0x8($s0)
/* 600E4 8005F4E4 0C022CF3 */  jal        func_8008B3CC
/* 600E8 8005F4E8 02202021 */   addu      $a0, $s1, $zero
/* 600EC 8005F4EC 0C022CF3 */  jal        func_8008B3CC
/* 600F0 8005F4F0 02002021 */   addu      $a0, $s0, $zero
/* 600F4 8005F4F4 44800000 */  mtc1       $zero, $f0
/* 600F8 8005F4F8 44800800 */  mtc1       $zero, $f1
/* 600FC 8005F4FC 00000000 */  nop
/* 60100 8005F500 4638003C */  c.lt.d     $f0, $f24
/* 60104 8005F504 00000000 */  nop
/* 60108 8005F508 45000008 */  bc1f       .L8005F52C
/* 6010C 8005F50C 00000000 */   nop
/* 60110 8005F510 D6240000 */  ldc1       $f4, 0x0($s1)
/* 60114 8005F514 3C01802B */  lui        $at, %hi(D_802AED48)
/* 60118 8005F518 D420ED48 */  ldc1       $f0, %lo(D_802AED48)($at)
/* 6011C 8005F51C 3C01802D */  lui        $at, %hi(D_802D2650)
/* 60120 8005F520 D4222650 */  ldc1       $f2, %lo(D_802D2650)($at)
/* 60124 8005F524 08017D50 */  j          .L8005F540
/* 60128 8005F528 46202102 */   mul.d     $f4, $f4, $f0
.L8005F52C:
/* 6012C 8005F52C D6040000 */  ldc1       $f4, 0x0($s0)
/* 60130 8005F530 3C01802B */  lui        $at, %hi(D_802AED48)
/* 60134 8005F534 D420ED48 */  ldc1       $f0, %lo(D_802AED48)($at)
/* 60138 8005F538 46202102 */  mul.d      $f4, $f4, $f0
/* 6013C 8005F53C D6020008 */  ldc1       $f2, 0x8($s0)
.L8005F540:
/* 60140 8005F540 00000000 */  nop
/* 60144 8005F544 46201082 */  mul.d      $f2, $f2, $f0
/* 60148 8005F548 D6400000 */  ldc1       $f0, 0x0($s2)
/* 6014C 8005F54C 46202101 */  sub.d      $f4, $f4, $f0
/* 60150 8005F550 D6400008 */  ldc1       $f0, 0x8($s2)
/* 60154 8005F554 46201081 */  sub.d      $f2, $f2, $f0
/* 60158 8005F558 F7A40010 */  sdc1       $f4, 0x10($sp)
/* 6015C 8005F55C F7A20018 */  sdc1       $f2, 0x18($sp)
/* 60160 8005F560 0C022CF3 */  jal        func_8008B3CC
/* 60164 8005F564 27A40010 */   addiu     $a0, $sp, 0x10
/* 60168 8005F568 D7A00010 */  ldc1       $f0, 0x10($sp)
/* 6016C 8005F56C 4620C085 */  abs.d      $f2, $f24
/* 60170 8005F570 46220002 */  mul.d      $f0, $f0, $f2
/* 60174 8005F574 D7A40018 */  ldc1       $f4, 0x18($sp)
/* 60178 8005F578 3C10802D */  lui        $s0, %hi(D_802D2E40)
/* 6017C 8005F57C 26102E40 */  addiu      $s0, $s0, %lo(D_802D2E40)
/* 60180 8005F580 46222102 */  mul.d      $f4, $f4, $f2
/* 60184 8005F584 D6020000 */  ldc1       $f2, 0x0($s0)
/* 60188 8005F588 46201080 */  add.d      $f2, $f2, $f0
/* 6018C 8005F58C 46221182 */  mul.d      $f6, $f2, $f2
/* 60190 8005F590 3C01802D */  lui        $at, %hi(D_802D2E48)
/* 60194 8005F594 D4202E48 */  ldc1       $f0, %lo(D_802D2E48)($at)
/* 60198 8005F598 46240000 */  add.d      $f0, $f0, $f4
/* 6019C 8005F59C 46200102 */  mul.d      $f4, $f0, $f0
/* 601A0 8005F5A0 00000000 */  nop
/* 601A4 8005F5A4 4636B302 */  mul.d      $f12, $f22, $f22
/* 601A8 8005F5A8 46243500 */  add.d      $f20, $f6, $f4
/* 601AC 8005F5AC F6020000 */  sdc1       $f2, 0x0($s0)
/* 601B0 8005F5B0 3C01802D */  lui        $at, %hi(D_802D2E48)
/* 601B4 8005F5B4 F4202E48 */  sdc1       $f0, %lo(D_802D2E48)($at)
/* 601B8 8005F5B8 0C022BA9 */  jal        func_8008AEA4
/* 601BC 8005F5BC 462CA301 */   sub.d     $f12, $f20, $f12
/* 601C0 8005F5C0 3C01802B */  lui        $at, %hi(D_802AED48)
/* 601C4 8005F5C4 F420ED48 */  sdc1       $f0, %lo(D_802AED48)($at)
/* 601C8 8005F5C8 0C022BA9 */  jal        func_8008AEA4
/* 601CC 8005F5CC 4620A306 */   mov.d     $f12, $f20
/* 601D0 8005F5D0 3C01802B */  lui        $at, %hi(D_802AED48)
/* 601D4 8005F5D4 D424ED48 */  ldc1       $f4, %lo(D_802AED48)($at)
/* 601D8 8005F5D8 D60C0000 */  ldc1       $f12, 0x0($s0)
/* 601DC 8005F5DC 462C2402 */  mul.d      $f16, $f4, $f12
/* 601E0 8005F5E0 3C01802D */  lui        $at, %hi(D_802D2E48)
/* 601E4 8005F5E4 D4222E48 */  ldc1       $f2, %lo(D_802D2E48)($at)
/* 601E8 8005F5E8 4622B382 */  mul.d      $f14, $f22, $f2
/* 601EC 8005F5EC 462E8281 */  sub.d      $f10, $f16, $f14
/* 601F0 8005F5F0 3C01800D */  lui        $at, %hi(D_800D4AE8)
/* 601F4 8005F5F4 D4264AE8 */  ldc1       $f6, %lo(D_800D4AE8)($at)
/* 601F8 8005F5F8 46265282 */  mul.d      $f10, $f10, $f6
/* 601FC 8005F5FC 46205283 */  div.d      $f10, $f10, $f0
/* 60200 8005F600 462E8200 */  add.d      $f8, $f16, $f14
/* 60204 8005F604 46264202 */  mul.d      $f8, $f8, $f6
/* 60208 8005F608 46204203 */  div.d      $f8, $f8, $f0
/* 6020C 8005F60C 46222402 */  mul.d      $f16, $f4, $f2
/* 60210 8005F610 00000000 */  nop
/* 60214 8005F614 462CB382 */  mul.d      $f14, $f22, $f12
/* 60218 8005F618 462E8101 */  sub.d      $f4, $f16, $f14
/* 6021C 8005F61C 46262102 */  mul.d      $f4, $f4, $f6
/* 60220 8005F620 46202103 */  div.d      $f4, $f4, $f0
/* 60224 8005F624 462E8080 */  add.d      $f2, $f16, $f14
/* 60228 8005F628 46261082 */  mul.d      $f2, $f2, $f6
/* 6022C 8005F62C 46201083 */  div.d      $f2, $f2, $f0
/* 60230 8005F630 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 60234 8005F634 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 60238 8005F638 3C10802D */  lui        $s0, %hi(D_802D2648)
/* 6023C 8005F63C 26102648 */  addiu      $s0, $s0, %lo(D_802D2648)
/* 60240 8005F640 3C01802B */  lui        $at, %hi(D_802AED40)
/* 60244 8005F644 F420ED40 */  sdc1       $f0, %lo(D_802AED40)($at)
/* 60248 8005F648 F48A0000 */  sdc1       $f10, 0x0($a0)
/* 6024C 8005F64C F6080000 */  sdc1       $f8, 0x0($s0)
/* 60250 8005F650 3C01802D */  lui        $at, %hi(D_802D2650)
/* 60254 8005F654 F4242650 */  sdc1       $f4, %lo(D_802D2650)($at)
/* 60258 8005F658 3C01802F */  lui        $at, %hi(D_802F1910)
/* 6025C 8005F65C 0C022CF3 */  jal        func_8008B3CC
/* 60260 8005F660 F4221910 */   sdc1      $f2, %lo(D_802F1910)($at)
/* 60264 8005F664 0C022CF3 */  jal        func_8008B3CC
/* 60268 8005F668 02002021 */   addu      $a0, $s0, $zero
/* 6026C 8005F66C 02602021 */  addu       $a0, $s3, $zero
/* 60270 8005F670 0C017A7D */  jal        func_8005E9F4
/* 60274 8005F674 02802821 */   addu      $a1, $s4, $zero
/* 60278 8005F678 8FBF0034 */  lw         $ra, 0x34($sp)
/* 6027C 8005F67C 8FB40030 */  lw         $s4, 0x30($sp)
/* 60280 8005F680 8FB3002C */  lw         $s3, 0x2C($sp)
/* 60284 8005F684 8FB20028 */  lw         $s2, 0x28($sp)
/* 60288 8005F688 8FB10024 */  lw         $s1, 0x24($sp)
/* 6028C 8005F68C 8FB00020 */  lw         $s0, 0x20($sp)
/* 60290 8005F690 D7B80048 */  ldc1       $f24, 0x48($sp)
/* 60294 8005F694 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 60298 8005F698 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 6029C 8005F69C 03E00008 */  jr         $ra
/* 602A0 8005F6A0 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8005F6A4
/* 602A4 8005F6A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 602A8 8005F6A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 602AC 8005F6AC 00808821 */  addu       $s1, $a0, $zero
/* 602B0 8005F6B0 AFB20018 */  sw         $s2, 0x18($sp)
/* 602B4 8005F6B4 00A09021 */  addu       $s2, $a1, $zero
/* 602B8 8005F6B8 00121100 */  sll        $v0, $s2, 4
/* 602BC 8005F6BC 00111900 */  sll        $v1, $s1, 4
/* 602C0 8005F6C0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 602C4 8005F6C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 602C8 8005F6C8 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 602CC 8005F6CC 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 602D0 8005F6D0 00220821 */  addu       $at, $at, $v0
/* 602D4 8005F6D4 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 602D8 8005F6D8 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 602DC 8005F6DC 00230821 */  addu       $at, $at, $v1
/* 602E0 8005F6E0 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 602E4 8005F6E4 46220001 */  sub.d      $f0, $f0, $f2
/* 602E8 8005F6E8 3C10802D */  lui        $s0, %hi(D_802D2E40)
/* 602EC 8005F6EC 26102E40 */  addiu      $s0, $s0, %lo(D_802D2E40)
/* 602F0 8005F6F0 F6000000 */  sdc1       $f0, 0x0($s0)
/* 602F4 8005F6F4 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 602F8 8005F6F8 00220821 */  addu       $at, $at, $v0
/* 602FC 8005F6FC D42459E0 */  ldc1       $f4, %lo(D_803F59E0)($at)
/* 60300 8005F700 46200002 */  mul.d      $f0, $f0, $f0
/* 60304 8005F704 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60308 8005F708 00230821 */  addu       $at, $at, $v1
/* 6030C 8005F70C D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 60310 8005F710 46222101 */  sub.d      $f4, $f4, $f2
/* 60314 8005F714 46242082 */  mul.d      $f2, $f4, $f4
/* 60318 8005F718 46220500 */  add.d      $f20, $f0, $f2
/* 6031C 8005F71C 3C01800D */  lui        $at, %hi(D_800D4AF0)
/* 60320 8005F720 D4204AF0 */  ldc1       $f0, %lo(D_800D4AF0)($at)
/* 60324 8005F724 4620A03C */  c.lt.d     $f20, $f0
/* 60328 8005F728 F6040008 */  sdc1       $f4, 0x8($s0)
/* 6032C 8005F72C 00000000 */  nop
/* 60330 8005F730 45030001 */  bc1tl      .L8005F738
/* 60334 8005F734 46200506 */   mov.d     $f20, $f0
.L8005F738:
/* 60338 8005F738 0C022BA9 */  jal        func_8008AEA4
/* 6033C 8005F73C 4620A301 */   sub.d     $f12, $f20, $f0
/* 60340 8005F740 3C01802B */  lui        $at, %hi(D_802AED48)
/* 60344 8005F744 F420ED48 */  sdc1       $f0, %lo(D_802AED48)($at)
/* 60348 8005F748 0C022BA9 */  jal        func_8008AEA4
/* 6034C 8005F74C 4620A306 */   mov.d     $f12, $f20
/* 60350 8005F750 3C01802B */  lui        $at, %hi(D_802AED48)
/* 60354 8005F754 D42CED48 */  ldc1       $f12, %lo(D_802AED48)($at)
/* 60358 8005F758 D6040000 */  ldc1       $f4, 0x0($s0)
/* 6035C 8005F75C 46246402 */  mul.d      $f16, $f12, $f4
/* 60360 8005F760 D6020008 */  ldc1       $f2, 0x8($s0)
/* 60364 8005F764 46221380 */  add.d      $f14, $f2, $f2
/* 60368 8005F768 462E8281 */  sub.d      $f10, $f16, $f14
/* 6036C 8005F76C 3C01800D */  lui        $at, %hi(D_800D4AF8)
/* 60370 8005F770 D4264AF8 */  ldc1       $f6, %lo(D_800D4AF8)($at)
/* 60374 8005F774 46265282 */  mul.d      $f10, $f10, $f6
/* 60378 8005F778 46205283 */  div.d      $f10, $f10, $f0
/* 6037C 8005F77C 462E8200 */  add.d      $f8, $f16, $f14
/* 60380 8005F780 46264202 */  mul.d      $f8, $f8, $f6
/* 60384 8005F784 46204203 */  div.d      $f8, $f8, $f0
/* 60388 8005F788 46226402 */  mul.d      $f16, $f12, $f2
/* 6038C 8005F78C 46242380 */  add.d      $f14, $f4, $f4
/* 60390 8005F790 462E8101 */  sub.d      $f4, $f16, $f14
/* 60394 8005F794 46262102 */  mul.d      $f4, $f4, $f6
/* 60398 8005F798 46202103 */  div.d      $f4, $f4, $f0
/* 6039C 8005F79C 462E8080 */  add.d      $f2, $f16, $f14
/* 603A0 8005F7A0 46261082 */  mul.d      $f2, $f2, $f6
/* 603A4 8005F7A4 46201083 */  div.d      $f2, $f2, $f0
/* 603A8 8005F7A8 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 603AC 8005F7AC 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 603B0 8005F7B0 3C10802D */  lui        $s0, %hi(D_802D2648)
/* 603B4 8005F7B4 26102648 */  addiu      $s0, $s0, %lo(D_802D2648)
/* 603B8 8005F7B8 3C01802B */  lui        $at, %hi(D_802AED40)
/* 603BC 8005F7BC F420ED40 */  sdc1       $f0, %lo(D_802AED40)($at)
/* 603C0 8005F7C0 F48A0000 */  sdc1       $f10, 0x0($a0)
/* 603C4 8005F7C4 F6080000 */  sdc1       $f8, 0x0($s0)
/* 603C8 8005F7C8 3C01802D */  lui        $at, %hi(D_802D2650)
/* 603CC 8005F7CC F4242650 */  sdc1       $f4, %lo(D_802D2650)($at)
/* 603D0 8005F7D0 3C01802F */  lui        $at, %hi(D_802F1910)
/* 603D4 8005F7D4 0C022CF3 */  jal        func_8008B3CC
/* 603D8 8005F7D8 F4221910 */   sdc1      $f2, %lo(D_802F1910)($at)
/* 603DC 8005F7DC 0C022CF3 */  jal        func_8008B3CC
/* 603E0 8005F7E0 02002021 */   addu      $a0, $s0, $zero
/* 603E4 8005F7E4 02202021 */  addu       $a0, $s1, $zero
/* 603E8 8005F7E8 0C017A7D */  jal        func_8005E9F4
/* 603EC 8005F7EC 02402821 */   addu      $a1, $s2, $zero
/* 603F0 8005F7F0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 603F4 8005F7F4 8FB20018 */  lw         $s2, 0x18($sp)
/* 603F8 8005F7F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 603FC 8005F7FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 60400 8005F800 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 60404 8005F804 03E00008 */  jr         $ra
/* 60408 8005F808 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005F80C
/* 6040C 8005F80C 3C03802D */  lui        $v1, %hi(D_802D2E38)
/* 60410 8005F810 8C632E38 */  lw         $v1, %lo(D_802D2E38)($v1)
/* 60414 8005F814 3C01800D */  lui        $at, %hi(D_800D4B00)
/* 60418 8005F818 D4204B00 */  ldc1       $f0, %lo(D_800D4B00)($at)
/* 6041C 8005F81C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 60420 8005F820 AFBF001C */  sw         $ra, 0x1C($sp)
/* 60424 8005F824 AFB00018 */  sw         $s0, 0x18($sp)
/* 60428 8005F828 00031100 */  sll        $v0, $v1, 4
/* 6042C 8005F82C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60430 8005F830 00220821 */  addu       $at, $at, $v0
/* 60434 8005F834 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 60438 8005F838 00031880 */  sll        $v1, $v1, 2
/* 6043C 8005F83C 2402003F */  addiu      $v0, $zero, 0x3F
/* 60440 8005F840 46201032 */  c.eq.d     $f2, $f0
/* 60444 8005F844 3C01803F */  lui        $at, %hi(D_803F5CC0)
/* 60448 8005F848 00230821 */  addu       $at, $at, $v1
/* 6044C 8005F84C AC225CC0 */  sw         $v0, %lo(D_803F5CC0)($at)
/* 60450 8005F850 3C02803F */  lui        $v0, %hi(D_803F5CC0)
/* 60454 8005F854 24425CC0 */  addiu      $v0, $v0, %lo(D_803F5CC0)
/* 60458 8005F858 4501004A */  bc1t       .L8005F984
/* 6045C 8005F85C 00408021 */   addu      $s0, $v0, $zero
/* 60460 8005F860 24020001 */  addiu      $v0, $zero, 0x1
/* 60464 8005F864 3C01802D */  lui        $at, %hi(D_802D1150)
/* 60468 8005F868 AC201150 */  sw         $zero, %lo(D_802D1150)($at)
/* 6046C 8005F86C 3C01802F */  lui        $at, %hi(D_802F1904)
/* 60470 8005F870 AC221904 */  sw         $v0, %lo(D_802F1904)($at)
.L8005F874:
/* 60474 8005F874 3C04802D */  lui        $a0, %hi(D_802D2E38)
/* 60478 8005F878 8C842E38 */  lw         $a0, %lo(D_802D2E38)($a0)
/* 6047C 8005F87C 3C05802D */  lui        $a1, %hi(D_802D1150)
/* 60480 8005F880 0C0177D2 */  jal        func_8005DF48
/* 60484 8005F884 8CA51150 */   lw        $a1, %lo(D_802D1150)($a1)
/* 60488 8005F888 1440002D */  bnez       $v0, .L8005F940
/* 6048C 8005F88C 00000000 */   nop
/* 60490 8005F890 3C04802D */  lui        $a0, %hi(D_802D2E38)
/* 60494 8005F894 8C842E38 */  lw         $a0, %lo(D_802D2E38)($a0)
/* 60498 8005F898 3C05802B */  lui        $a1, %hi(D_802AED8C)
/* 6049C 8005F89C 0C017953 */  jal        func_8005E54C
/* 604A0 8005F8A0 80A5ED8C */   lb        $a1, %lo(D_802AED8C)($a1)
/* 604A4 8005F8A4 14400026 */  bnez       $v0, .L8005F940
/* 604A8 8005F8A8 00000000 */   nop
/* 604AC 8005F8AC 3C02802D */  lui        $v0, %hi(D_802D2E38)
/* 604B0 8005F8B0 8C422E38 */  lw         $v0, %lo(D_802D2E38)($v0)
/* 604B4 8005F8B4 3C04802F */  lui        $a0, %hi(D_802F1904)
/* 604B8 8005F8B8 8C841904 */  lw         $a0, %lo(D_802F1904)($a0)
/* 604BC 8005F8BC 00021080 */  sll        $v0, $v0, 2
/* 604C0 8005F8C0 00501021 */  addu       $v0, $v0, $s0
/* 604C4 8005F8C4 8C430000 */  lw         $v1, 0x0($v0)
/* 604C8 8005F8C8 3C05802C */  lui        $a1, %hi(D_802C6064)
/* 604CC 8005F8CC 8CA56064 */  lw         $a1, %lo(D_802C6064)($a1)
/* 604D0 8005F8D0 00641826 */  xor        $v1, $v1, $a0
/* 604D4 8005F8D4 AC430000 */  sw         $v1, 0x0($v0)
/* 604D8 8005F8D8 3C02802F */  lui        $v0, %hi(D_802F1908)
/* 604DC 8005F8DC 8C421908 */  lw         $v0, %lo(D_802F1908)($v0)
/* 604E0 8005F8E0 3C03802F */  lui        $v1, %hi(D_802F190C)
/* 604E4 8005F8E4 8C63190C */  lw         $v1, %lo(D_802F190C)($v1)
/* 604E8 8005F8E8 3C04802F */  lui        $a0, %hi(D_802F1910)
/* 604EC 8005F8EC 8C841910 */  lw         $a0, %lo(D_802F1910)($a0)
/* 604F0 8005F8F0 3C06802F */  lui        $a2, %hi(D_802F1914)
/* 604F4 8005F8F4 8CC61914 */  lw         $a2, %lo(D_802F1914)($a2)
/* 604F8 8005F8F8 ACA20010 */  sw         $v0, 0x10($a1)
/* 604FC 8005F8FC ACA30014 */  sw         $v1, 0x14($a1)
/* 60500 8005F900 ACA40018 */  sw         $a0, 0x18($a1)
/* 60504 8005F904 ACA6001C */  sw         $a2, 0x1C($a1)
/* 60508 8005F908 3C02802C */  lui        $v0, %hi(D_802C6064)
/* 6050C 8005F90C 8C426064 */  lw         $v0, %lo(D_802C6064)($v0)
/* 60510 8005F910 3C03802D */  lui        $v1, %hi(D_802D2648)
/* 60514 8005F914 8C632648 */  lw         $v1, %lo(D_802D2648)($v1)
/* 60518 8005F918 3C04802D */  lui        $a0, %hi(D_802D264C)
/* 6051C 8005F91C 8C84264C */  lw         $a0, %lo(D_802D264C)($a0)
/* 60520 8005F920 3C05802D */  lui        $a1, %hi(D_802D2650)
/* 60524 8005F924 8CA52650 */  lw         $a1, %lo(D_802D2650)($a1)
/* 60528 8005F928 3C06802D */  lui        $a2, %hi(D_802D2654)
/* 6052C 8005F92C 8CC62654 */  lw         $a2, %lo(D_802D2654)($a2)
/* 60530 8005F930 AC430000 */  sw         $v1, 0x0($v0)
/* 60534 8005F934 AC440004 */  sw         $a0, 0x4($v0)
/* 60538 8005F938 AC450008 */  sw         $a1, 0x8($v0)
/* 6053C 8005F93C AC46000C */  sw         $a2, 0xC($v0)
.L8005F940:
/* 60540 8005F940 3C02802D */  lui        $v0, %hi(D_802D1150)
/* 60544 8005F944 8C421150 */  lw         $v0, %lo(D_802D1150)($v0)
/* 60548 8005F948 3C03802F */  lui        $v1, %hi(D_802F1904)
/* 6054C 8005F94C 8C631904 */  lw         $v1, %lo(D_802F1904)($v1)
/* 60550 8005F950 3C04802C */  lui        $a0, %hi(D_802C6064)
/* 60554 8005F954 8C846064 */  lw         $a0, %lo(D_802C6064)($a0)
/* 60558 8005F958 24420001 */  addiu      $v0, $v0, 0x1
/* 6055C 8005F95C 00031840 */  sll        $v1, $v1, 1
/* 60560 8005F960 24840020 */  addiu      $a0, $a0, 0x20
/* 60564 8005F964 3C01802D */  lui        $at, %hi(D_802D1150)
/* 60568 8005F968 AC221150 */  sw         $v0, %lo(D_802D1150)($at)
/* 6056C 8005F96C 28420006 */  slti       $v0, $v0, 0x6
/* 60570 8005F970 3C01802F */  lui        $at, %hi(D_802F1904)
/* 60574 8005F974 AC231904 */  sw         $v1, %lo(D_802F1904)($at)
/* 60578 8005F978 3C01802C */  lui        $at, %hi(D_802C6064)
/* 6057C 8005F97C 1440FFBD */  bnez       $v0, .L8005F874
/* 60580 8005F980 AC246064 */   sw        $a0, %lo(D_802C6064)($at)
.L8005F984:
/* 60584 8005F984 8FBF001C */  lw         $ra, 0x1C($sp)
/* 60588 8005F988 8FB00018 */  lw         $s0, 0x18($sp)
/* 6058C 8005F98C 03E00008 */  jr         $ra
/* 60590 8005F990 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005F994
/* 60594 8005F994 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 60598 8005F998 3C01800D */  lui        $at, %hi(D_800D4B08)
/* 6059C 8005F99C D4204B08 */  ldc1       $f0, %lo(D_800D4B08)($at)
/* 605A0 8005F9A0 00802821 */  addu       $a1, $a0, $zero
/* 605A4 8005F9A4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 605A8 8005F9A8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 605AC 8005F9AC AFB20018 */  sw         $s2, 0x18($sp)
/* 605B0 8005F9B0 AFB10014 */  sw         $s1, 0x14($sp)
/* 605B4 8005F9B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 605B8 8005F9B8 3C01802B */  lui        $at, %hi(D_802AED88)
/* 605BC 8005F9BC AC25ED88 */  sw         $a1, %lo(D_802AED88)($at)
/* 605C0 8005F9C0 3C01802B */  lui        $at, %hi(D_802AED78)
/* 605C4 8005F9C4 F420ED78 */  sdc1       $f0, %lo(D_802AED78)($at)
/* 605C8 8005F9C8 0C017CCC */  jal        func_8005F330
/* 605CC 8005F9CC 00002021 */   addu      $a0, $zero, $zero
/* 605D0 8005F9D0 3C04802B */  lui        $a0, %hi(D_802AED88)
/* 605D4 8005F9D4 8C84ED88 */  lw         $a0, %lo(D_802AED88)($a0)
/* 605D8 8005F9D8 3C11802F */  lui        $s1, %hi(D_802EF7A8)
/* 605DC 8005F9DC 2631F7A8 */  addiu      $s1, $s1, %lo(D_802EF7A8)
/* 605E0 8005F9E0 3C05802D */  lui        $a1, %hi(D_802D2E38)
/* 605E4 8005F9E4 8CA52E38 */  lw         $a1, %lo(D_802D2E38)($a1)
/* 605E8 8005F9E8 3C10802D */  lui        $s0, %hi(D_802D2E40)
/* 605EC 8005F9EC 26102E40 */  addiu      $s0, $s0, %lo(D_802D2E40)
/* 605F0 8005F9F0 8E020000 */  lw         $v0, 0x0($s0)
/* 605F4 8005F9F4 8E030004 */  lw         $v1, 0x4($s0)
/* 605F8 8005F9F8 8E060008 */  lw         $a2, 0x8($s0)
/* 605FC 8005F9FC 8E07000C */  lw         $a3, 0xC($s0)
/* 60600 8005FA00 AE220000 */  sw         $v0, 0x0($s1)
/* 60604 8005FA04 AE230004 */  sw         $v1, 0x4($s1)
/* 60608 8005FA08 AE260008 */  sw         $a2, 0x8($s1)
/* 6060C 8005FA0C AE27000C */  sw         $a3, 0xC($s1)
/* 60610 8005FA10 3C03803F */  lui        $v1, %hi(D_803EEB20)
/* 60614 8005FA14 2463EB20 */  addiu      $v1, $v1, %lo(D_803EEB20)
/* 60618 8005FA18 00051040 */  sll        $v0, $a1, 1
/* 6061C 8005FA1C 00451021 */  addu       $v0, $v0, $a1
/* 60620 8005FA20 00021180 */  sll        $v0, $v0, 6
/* 60624 8005FA24 00431021 */  addu       $v0, $v0, $v1
/* 60628 8005FA28 3C018031 */  lui        $at, %hi(D_80312A68)
/* 6062C 8005FA2C AC252A68 */  sw         $a1, %lo(D_80312A68)($at)
/* 60630 8005FA30 3C01802C */  lui        $at, %hi(D_802C6064)
/* 60634 8005FA34 0C017CCC */  jal        func_8005F330
/* 60638 8005FA38 AC226064 */   sw        $v0, %lo(D_802C6064)($at)
/* 6063C 8005FA3C 02202021 */  addu       $a0, $s1, $zero
/* 60640 8005FA40 0C022C7C */  jal        func_8008B1F0
/* 60644 8005FA44 02002821 */   addu      $a1, $s0, $zero
/* 60648 8005FA48 44801000 */  mtc1       $zero, $f2
/* 6064C 8005FA4C 44801800 */  mtc1       $zero, $f3
/* 60650 8005FA50 00000000 */  nop
/* 60654 8005FA54 4622003C */  c.lt.d     $f0, $f2
/* 60658 8005FA58 00000000 */  nop
/* 6065C 8005FA5C 00000000 */  nop
/* 60660 8005FA60 45010072 */  bc1t       .L8005FC2C
/* 60664 8005FA64 24020001 */   addiu     $v0, $zero, 0x1
/* 60668 8005FA68 3C13803F */  lui        $s3, %hi(D_803F5CC0)
/* 6066C 8005FA6C 26735CC0 */  addiu      $s3, $s3, %lo(D_803F5CC0)
/* 60670 8005FA70 3C10802B */  lui        $s0, %hi(D_802AECA0)
/* 60674 8005FA74 2610ECA0 */  addiu      $s0, $s0, %lo(D_802AECA0)
/* 60678 8005FA78 3C12802F */  lui        $s2, %hi(D_802F1908)
/* 6067C 8005FA7C 26521908 */  addiu      $s2, $s2, %lo(D_802F1908)
/* 60680 8005FA80 3C11802D */  lui        $s1, %hi(D_802D2648)
/* 60684 8005FA84 26312648 */  addiu      $s1, $s1, %lo(D_802D2648)
/* 60688 8005FA88 3C01802D */  lui        $at, %hi(D_802D1150)
/* 6068C 8005FA8C AC201150 */  sw         $zero, %lo(D_802D1150)($at)
/* 60690 8005FA90 3C01802F */  lui        $at, %hi(D_802F1904)
/* 60694 8005FA94 AC221904 */  sw         $v0, %lo(D_802F1904)($at)
.L8005FA98:
/* 60698 8005FA98 3C048031 */  lui        $a0, %hi(D_80312A68)
/* 6069C 8005FA9C 8C842A68 */  lw         $a0, %lo(D_80312A68)($a0)
/* 606A0 8005FAA0 3C03802F */  lui        $v1, %hi(D_802F1904)
/* 606A4 8005FAA4 8C631904 */  lw         $v1, %lo(D_802F1904)($v1)
/* 606A8 8005FAA8 00041080 */  sll        $v0, $a0, 2
/* 606AC 8005FAAC 00531021 */  addu       $v0, $v0, $s3
/* 606B0 8005FAB0 8C420000 */  lw         $v0, 0x0($v0)
/* 606B4 8005FAB4 00431024 */  and        $v0, $v0, $v1
/* 606B8 8005FAB8 1440004B */  bnez       $v0, .L8005FBE8
/* 606BC 8005FABC 00000000 */   nop
/* 606C0 8005FAC0 3C05802D */  lui        $a1, %hi(D_802D1150)
/* 606C4 8005FAC4 0C017CB7 */  jal        func_8005F2DC
/* 606C8 8005FAC8 8CA51150 */   lw        $a1, %lo(D_802D1150)($a1)
/* 606CC 8005FACC 3C04802D */  lui        $a0, %hi(D_802D2E40)
/* 606D0 8005FAD0 24842E40 */  addiu      $a0, $a0, %lo(D_802D2E40)
/* 606D4 8005FAD4 3C05802C */  lui        $a1, %hi(D_802C6088)
/* 606D8 8005FAD8 0C022C7C */  jal        func_8008B1F0
/* 606DC 8005FADC 24A56088 */   addiu     $a1, $a1, %lo(D_802C6088)
/* 606E0 8005FAE0 44801000 */  mtc1       $zero, $f2
/* 606E4 8005FAE4 44801800 */  mtc1       $zero, $f3
/* 606E8 8005FAE8 00000000 */  nop
/* 606EC 8005FAEC 4620103E */  c.le.d     $f2, $f0
/* 606F0 8005FAF0 00000000 */  nop
/* 606F4 8005FAF4 4500003C */  bc1f       .L8005FBE8
/* 606F8 8005FAF8 00000000 */   nop
/* 606FC 8005FAFC 3C04802B */  lui        $a0, %hi(D_802AED88)
/* 60700 8005FB00 8C84ED88 */  lw         $a0, %lo(D_802AED88)($a0)
/* 60704 8005FB04 3C058031 */  lui        $a1, %hi(D_80312A68)
/* 60708 8005FB08 8CA52A68 */  lw         $a1, %lo(D_80312A68)($a1)
/* 6070C 8005FB0C 3C06802C */  lui        $a2, %hi(D_802C6064)
/* 60710 8005FB10 0C0178C0 */  jal        func_8005E300
/* 60714 8005FB14 8CC66064 */   lw        $a2, %lo(D_802C6064)($a2)
/* 60718 8005FB18 14400033 */  bnez       $v0, .L8005FBE8
/* 6071C 8005FB1C 00000000 */   nop
/* 60720 8005FB20 3C04802B */  lui        $a0, %hi(D_802AED88)
/* 60724 8005FB24 8C84ED88 */  lw         $a0, %lo(D_802AED88)($a0)
/* 60728 8005FB28 3C058031 */  lui        $a1, %hi(D_80312A68)
/* 6072C 8005FB2C 0C017A7D */  jal        func_8005E9F4
/* 60730 8005FB30 8CA52A68 */   lw        $a1, %lo(D_80312A68)($a1)
/* 60734 8005FB34 1440002C */  bnez       $v0, .L8005FBE8
/* 60738 8005FB38 00000000 */   nop
/* 6073C 8005FB3C 8E420000 */  lw         $v0, 0x0($s2)
/* 60740 8005FB40 8E430004 */  lw         $v1, 0x4($s2)
/* 60744 8005FB44 8E440008 */  lw         $a0, 0x8($s2)
/* 60748 8005FB48 8E45000C */  lw         $a1, 0xC($s2)
/* 6074C 8005FB4C AE020000 */  sw         $v0, 0x0($s0)
/* 60750 8005FB50 AE030004 */  sw         $v1, 0x4($s0)
/* 60754 8005FB54 AE040008 */  sw         $a0, 0x8($s0)
/* 60758 8005FB58 AE05000C */  sw         $a1, 0xC($s0)
/* 6075C 8005FB5C 8E220000 */  lw         $v0, 0x0($s1)
/* 60760 8005FB60 8E230004 */  lw         $v1, 0x4($s1)
/* 60764 8005FB64 8E240008 */  lw         $a0, 0x8($s1)
/* 60768 8005FB68 8E25000C */  lw         $a1, 0xC($s1)
/* 6076C 8005FB6C AE02FFF0 */  sw         $v0, -0x10($s0)
/* 60770 8005FB70 AE03FFF4 */  sw         $v1, -0xC($s0)
/* 60774 8005FB74 AE04FFF8 */  sw         $a0, -0x8($s0)
/* 60778 8005FB78 AE05FFFC */  sw         $a1, -0x4($s0)
/* 6077C 8005FB7C 3C05802B */  lui        $a1, %hi(D_802AED88)
/* 60780 8005FB80 8CA5ED88 */  lw         $a1, %lo(D_802AED88)($a1)
/* 60784 8005FB84 00002021 */  addu       $a0, $zero, $zero
/* 60788 8005FB88 0C0178C0 */  jal        func_8005E300
/* 6078C 8005FB8C 2606FFF0 */   addiu     $a2, $s0, -0x10
/* 60790 8005FB90 14400015 */  bnez       $v0, .L8005FBE8
/* 60794 8005FB94 00000000 */   nop
/* 60798 8005FB98 3C05802B */  lui        $a1, %hi(D_802AED88)
/* 6079C 8005FB9C 8CA5ED88 */  lw         $a1, %lo(D_802AED88)($a1)
/* 607A0 8005FBA0 0C017A7D */  jal        func_8005E9F4
/* 607A4 8005FBA4 00002021 */   addu      $a0, $zero, $zero
/* 607A8 8005FBA8 1440000F */  bnez       $v0, .L8005FBE8
/* 607AC 8005FBAC 02402021 */   addu      $a0, $s2, $zero
/* 607B0 8005FBB0 0C022C7C */  jal        func_8008B1F0
/* 607B4 8005FBB4 02202821 */   addu      $a1, $s1, $zero
/* 607B8 8005FBB8 3C01802B */  lui        $at, %hi(D_802AED78)
/* 607BC 8005FBBC D422ED78 */  ldc1       $f2, %lo(D_802AED78)($at)
/* 607C0 8005FBC0 4622003C */  c.lt.d     $f0, $f2
/* 607C4 8005FBC4 00000000 */  nop
/* 607C8 8005FBC8 45000007 */  bc1f       .L8005FBE8
/* 607CC 8005FBCC 00000000 */   nop
/* 607D0 8005FBD0 3C02802D */  lui        $v0, %hi(D_802D1150)
/* 607D4 8005FBD4 8C421150 */  lw         $v0, %lo(D_802D1150)($v0)
/* 607D8 8005FBD8 3C01802B */  lui        $at, %hi(D_802AED78)
/* 607DC 8005FBDC F420ED78 */  sdc1       $f0, %lo(D_802AED78)($at)
/* 607E0 8005FBE0 3C01803F */  lui        $at, %hi(D_803F40B8)
/* 607E4 8005FBE4 AC2240B8 */  sw         $v0, %lo(D_803F40B8)($at)
.L8005FBE8:
/* 607E8 8005FBE8 3C02802D */  lui        $v0, %hi(D_802D1150)
/* 607EC 8005FBEC 8C421150 */  lw         $v0, %lo(D_802D1150)($v0)
/* 607F0 8005FBF0 3C03802F */  lui        $v1, %hi(D_802F1904)
/* 607F4 8005FBF4 8C631904 */  lw         $v1, %lo(D_802F1904)($v1)
/* 607F8 8005FBF8 3C04802C */  lui        $a0, %hi(D_802C6064)
/* 607FC 8005FBFC 8C846064 */  lw         $a0, %lo(D_802C6064)($a0)
/* 60800 8005FC00 24420001 */  addiu      $v0, $v0, 0x1
/* 60804 8005FC04 00031840 */  sll        $v1, $v1, 1
/* 60808 8005FC08 24840020 */  addiu      $a0, $a0, 0x20
/* 6080C 8005FC0C 3C01802D */  lui        $at, %hi(D_802D1150)
/* 60810 8005FC10 AC221150 */  sw         $v0, %lo(D_802D1150)($at)
/* 60814 8005FC14 28420006 */  slti       $v0, $v0, 0x6
/* 60818 8005FC18 3C01802F */  lui        $at, %hi(D_802F1904)
/* 6081C 8005FC1C AC231904 */  sw         $v1, %lo(D_802F1904)($at)
/* 60820 8005FC20 3C01802C */  lui        $at, %hi(D_802C6064)
/* 60824 8005FC24 1440FF9C */  bnez       $v0, .L8005FA98
/* 60828 8005FC28 AC246064 */   sw        $a0, %lo(D_802C6064)($at)
.L8005FC2C:
/* 6082C 8005FC2C 3C01802B */  lui        $at, %hi(D_802AED78)
/* 60830 8005FC30 D420ED78 */  ldc1       $f0, %lo(D_802AED78)($at)
/* 60834 8005FC34 8FBF0020 */  lw         $ra, 0x20($sp)
/* 60838 8005FC38 8FB3001C */  lw         $s3, 0x1C($sp)
/* 6083C 8005FC3C 8FB20018 */  lw         $s2, 0x18($sp)
/* 60840 8005FC40 8FB10014 */  lw         $s1, 0x14($sp)
/* 60844 8005FC44 8FB00010 */  lw         $s0, 0x10($sp)
/* 60848 8005FC48 03E00008 */  jr         $ra
/* 6084C 8005FC4C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005FC50
/* 60850 8005FC50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 60854 8005FC54 AFB00020 */  sw         $s0, 0x20($sp)
/* 60858 8005FC58 00A08021 */  addu       $s0, $a1, $zero
/* 6085C 8005FC5C AFBF0028 */  sw         $ra, 0x28($sp)
/* 60860 8005FC60 AFB10024 */  sw         $s1, 0x24($sp)
/* 60864 8005FC64 D6000010 */  ldc1       $f0, 0x10($s0)
/* 60868 8005FC68 D6020000 */  ldc1       $f2, 0x0($s0)
/* 6086C 8005FC6C 46220000 */  add.d      $f0, $f0, $f2
/* 60870 8005FC70 3C01800D */  lui        $at, %hi(D_800D4B10)
/* 60874 8005FC74 D4244B10 */  ldc1       $f4, %lo(D_800D4B10)($at)
/* 60878 8005FC78 46240002 */  mul.d      $f0, $f0, $f4
/* 6087C 8005FC7C F7A00010 */  sdc1       $f0, 0x10($sp)
/* 60880 8005FC80 D6000018 */  ldc1       $f0, 0x18($s0)
/* 60884 8005FC84 D6020008 */  ldc1       $f2, 0x8($s0)
/* 60888 8005FC88 46220000 */  add.d      $f0, $f0, $f2
/* 6088C 8005FC8C 46240002 */  mul.d      $f0, $f0, $f4
/* 60890 8005FC90 00808821 */  addu       $s1, $a0, $zero
/* 60894 8005FC94 3C05802D */  lui        $a1, %hi(D_802D2E40)
/* 60898 8005FC98 24A52E40 */  addiu      $a1, $a1, %lo(D_802D2E40)
/* 6089C 8005FC9C F7A00018 */  sdc1       $f0, 0x18($sp)
/* 608A0 8005FCA0 0C022C7C */  jal        func_8008B1F0
/* 608A4 8005FCA4 27A40010 */   addiu     $a0, $sp, 0x10
/* 608A8 8005FCA8 44801000 */  mtc1       $zero, $f2
/* 608AC 8005FCAC 44801800 */  mtc1       $zero, $f3
/* 608B0 8005FCB0 00000000 */  nop
/* 608B4 8005FCB4 4622003C */  c.lt.d     $f0, $f2
/* 608B8 8005FCB8 3C01802F */  lui        $at, %hi(D_802F0CF0)
/* 608BC 8005FCBC F4200CF0 */  sdc1       $f0, %lo(D_802F0CF0)($at)
/* 608C0 8005FCC0 4501000A */  bc1t       .L8005FCEC
/* 608C4 8005FCC4 24020001 */   addiu     $v0, $zero, 0x1
/* 608C8 8005FCC8 00002021 */  addu       $a0, $zero, $zero
/* 608CC 8005FCCC 02202821 */  addu       $a1, $s1, $zero
/* 608D0 8005FCD0 0C0178C0 */  jal        func_8005E300
/* 608D4 8005FCD4 02003021 */   addu      $a2, $s0, $zero
/* 608D8 8005FCD8 14400004 */  bnez       $v0, .L8005FCEC
/* 608DC 8005FCDC 24020001 */   addiu     $v0, $zero, 0x1
/* 608E0 8005FCE0 00002021 */  addu       $a0, $zero, $zero
/* 608E4 8005FCE4 0C017A7D */  jal        func_8005E9F4
/* 608E8 8005FCE8 02202821 */   addu      $a1, $s1, $zero
.L8005FCEC:
/* 608EC 8005FCEC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 608F0 8005FCF0 8FB10024 */  lw         $s1, 0x24($sp)
/* 608F4 8005FCF4 8FB00020 */  lw         $s0, 0x20($sp)
/* 608F8 8005FCF8 03E00008 */  jr         $ra
/* 608FC 8005FCFC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005FD00
/* 60900 8005FD00 3C05802D */  lui        $a1, %hi(D_802D2E38)
/* 60904 8005FD04 8CA52E38 */  lw         $a1, %lo(D_802D2E38)($a1)
/* 60908 8005FD08 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6090C 8005FD0C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 60910 8005FD10 3C01800D */  lui        $at, %hi(D_800D4B18)
/* 60914 8005FD14 D4344B18 */  ldc1       $f20, %lo(D_800D4B18)($at)
/* 60918 8005FD18 3C01800D */  lui        $at, %hi(D_800D4B20)
/* 6091C 8005FD1C D4204B20 */  ldc1       $f0, %lo(D_800D4B20)($at)
/* 60920 8005FD20 AFB40020 */  sw         $s4, 0x20($sp)
/* 60924 8005FD24 3C14803F */  lui        $s4, %hi(D_803F5CC0)
/* 60928 8005FD28 26945CC0 */  addiu      $s4, $s4, %lo(D_803F5CC0)
/* 6092C 8005FD2C AFB3001C */  sw         $s3, 0x1C($sp)
/* 60930 8005FD30 3C13802F */  lui        $s3, %hi(D_802F1908)
/* 60934 8005FD34 26731908 */  addiu      $s3, $s3, %lo(D_802F1908)
/* 60938 8005FD38 AFB20018 */  sw         $s2, 0x18($sp)
/* 6093C 8005FD3C 3C12802D */  lui        $s2, %hi(D_802D2648)
/* 60940 8005FD40 26522648 */  addiu      $s2, $s2, %lo(D_802D2648)
/* 60944 8005FD44 AFBF0024 */  sw         $ra, 0x24($sp)
/* 60948 8005FD48 AFB10014 */  sw         $s1, 0x14($sp)
/* 6094C 8005FD4C AFB00010 */  sw         $s0, 0x10($sp)
/* 60950 8005FD50 3C01803F */  lui        $at, %hi(D_803EEA48)
/* 60954 8005FD54 F420EA48 */  sdc1       $f0, %lo(D_803EEA48)($at)
/* 60958 8005FD58 3C01803F */  lui        $at, %hi(D_803F5B30)
/* 6095C 8005FD5C F4205B30 */  sdc1       $f0, %lo(D_803F5B30)($at)
/* 60960 8005FD60 0C017CCC */  jal        func_8005F330
/* 60964 8005FD64 00002021 */   addu      $a0, $zero, $zero
/* 60968 8005FD68 3C03802D */  lui        $v1, %hi(D_802D2E38)
/* 6096C 8005FD6C 8C632E38 */  lw         $v1, %lo(D_802D2E38)($v1)
/* 60970 8005FD70 3C10802F */  lui        $s0, %hi(D_802F0A58)
/* 60974 8005FD74 26100A58 */  addiu      $s0, $s0, %lo(D_802F0A58)
/* 60978 8005FD78 3C11802D */  lui        $s1, %hi(D_802D0C70)
/* 6097C 8005FD7C 26310C70 */  addiu      $s1, $s1, %lo(D_802D0C70)
/* 60980 8005FD80 24020001 */  addiu      $v0, $zero, 0x1
/* 60984 8005FD84 3C01802D */  lui        $at, %hi(D_802D1150)
/* 60988 8005FD88 AC201150 */  sw         $zero, %lo(D_802D1150)($at)
/* 6098C 8005FD8C 3C01802F */  lui        $at, %hi(D_802F1904)
/* 60990 8005FD90 AC221904 */  sw         $v0, %lo(D_802F1904)($at)
/* 60994 8005FD94 00031040 */  sll        $v0, $v1, 1
/* 60998 8005FD98 00431021 */  addu       $v0, $v0, $v1
/* 6099C 8005FD9C 00021180 */  sll        $v0, $v0, 6
/* 609A0 8005FDA0 3C03803F */  lui        $v1, %hi(D_803EEB20)
/* 609A4 8005FDA4 2463EB20 */  addiu      $v1, $v1, %lo(D_803EEB20)
/* 609A8 8005FDA8 00431021 */  addu       $v0, $v0, $v1
/* 609AC 8005FDAC 3C01802C */  lui        $at, %hi(D_802C6064)
/* 609B0 8005FDB0 AC226064 */  sw         $v0, %lo(D_802C6064)($at)
.L8005FDB4:
/* 609B4 8005FDB4 3C04802D */  lui        $a0, %hi(D_802D2E38)
/* 609B8 8005FDB8 8C842E38 */  lw         $a0, %lo(D_802D2E38)($a0)
/* 609BC 8005FDBC 3C03802F */  lui        $v1, %hi(D_802F1904)
/* 609C0 8005FDC0 8C631904 */  lw         $v1, %lo(D_802F1904)($v1)
/* 609C4 8005FDC4 00041080 */  sll        $v0, $a0, 2
/* 609C8 8005FDC8 00541021 */  addu       $v0, $v0, $s4
/* 609CC 8005FDCC 8C420000 */  lw         $v0, 0x0($v0)
/* 609D0 8005FDD0 00431024 */  and        $v0, $v0, $v1
/* 609D4 8005FDD4 14400061 */  bnez       $v0, .L8005FF5C
/* 609D8 8005FDD8 00000000 */   nop
/* 609DC 8005FDDC 3C05802D */  lui        $a1, %hi(D_802D1150)
/* 609E0 8005FDE0 0C017CB7 */  jal        func_8005F2DC
/* 609E4 8005FDE4 8CA51150 */   lw        $a1, %lo(D_802D1150)($a1)
/* 609E8 8005FDE8 3C04802D */  lui        $a0, %hi(D_802D2E38)
/* 609EC 8005FDEC 8C842E38 */  lw         $a0, %lo(D_802D2E38)($a0)
/* 609F0 8005FDF0 3C05802C */  lui        $a1, %hi(D_802C6064)
/* 609F4 8005FDF4 0C017F14 */  jal        func_8005FC50
/* 609F8 8005FDF8 8CA56064 */   lw        $a1, %lo(D_802C6064)($a1)
/* 609FC 8005FDFC 14400057 */  bnez       $v0, .L8005FF5C
/* 60A00 8005FE00 02602021 */   addu      $a0, $s3, $zero
/* 60A04 8005FE04 0C022C7C */  jal        func_8008B1F0
/* 60A08 8005FE08 02402821 */   addu      $a1, $s2, $zero
/* 60A0C 8005FE0C 3C01803F */  lui        $at, %hi(D_803EEA48)
/* 60A10 8005FE10 D42AEA48 */  ldc1       $f10, %lo(D_803EEA48)($at)
/* 60A14 8005FE14 46200206 */  mov.d      $f8, $f0
/* 60A18 8005FE18 462A403C */  c.lt.d     $f8, $f10
/* 60A1C 8005FE1C 00000000 */  nop
/* 60A20 8005FE20 4500002F */  bc1f       .L8005FEE0
/* 60A24 8005FE24 00000000 */   nop
/* 60A28 8005FE28 D6640000 */  ldc1       $f4, 0x0($s3)
/* 60A2C 8005FE2C D6400000 */  ldc1       $f0, 0x0($s2)
/* 60A30 8005FE30 46202100 */  add.d      $f4, $f4, $f0
/* 60A34 8005FE34 8E020000 */  lw         $v0, 0x0($s0)
/* 60A38 8005FE38 8E030004 */  lw         $v1, 0x4($s0)
/* 60A3C 8005FE3C 8E040008 */  lw         $a0, 0x8($s0)
/* 60A40 8005FE40 8E05000C */  lw         $a1, 0xC($s0)
/* 60A44 8005FE44 3C01802D */  lui        $at, %hi(D_802D0C70)
/* 60A48 8005FE48 AC220C70 */  sw         $v0, %lo(D_802D0C70)($at)
/* 60A4C 8005FE4C 3C01802D */  lui        $at, %hi(D_802D0C74)
/* 60A50 8005FE50 AC230C74 */  sw         $v1, %lo(D_802D0C74)($at)
/* 60A54 8005FE54 3C01802D */  lui        $at, %hi(D_802D0C78)
/* 60A58 8005FE58 AC240C78 */  sw         $a0, %lo(D_802D0C78)($at)
/* 60A5C 8005FE5C 3C01802D */  lui        $at, %hi(D_802D0C7C)
/* 60A60 8005FE60 AC250C7C */  sw         $a1, %lo(D_802D0C7C)($at)
/* 60A64 8005FE64 3C01802F */  lui        $at, %hi(D_802F1910)
/* 60A68 8005FE68 D4221910 */  ldc1       $f2, %lo(D_802F1910)($at)
/* 60A6C 8005FE6C 46342102 */  mul.d      $f4, $f4, $f20
/* 60A70 8005FE70 3C01802D */  lui        $at, %hi(D_802D2650)
/* 60A74 8005FE74 D4202650 */  ldc1       $f0, %lo(D_802D2650)($at)
/* 60A78 8005FE78 3C03803F */  lui        $v1, %hi(D_803ED088)
/* 60A7C 8005FE7C 8C63D088 */  lw         $v1, %lo(D_803ED088)($v1)
/* 60A80 8005FE80 3C01803F */  lui        $at, %hi(D_803EEA50)
/* 60A84 8005FE84 D426EA50 */  ldc1       $f6, %lo(D_803EEA50)($at)
/* 60A88 8005FE88 46201080 */  add.d      $f2, $f2, $f0
/* 60A8C 8005FE8C 3C02802D */  lui        $v0, %hi(D_802D1150)
/* 60A90 8005FE90 8C421150 */  lw         $v0, %lo(D_802D1150)($v0)
/* 60A94 8005FE94 3C01802F */  lui        $at, %hi(D_802F0CF0)
/* 60A98 8005FE98 D4200CF0 */  ldc1       $f0, %lo(D_802F0CF0)($at)
/* 60A9C 8005FE9C 46341082 */  mul.d      $f2, $f2, $f20
/* 60AA0 8005FEA0 3C01803F */  lui        $at, %hi(D_803F5B30)
/* 60AA4 8005FEA4 F42A5B30 */  sdc1       $f10, %lo(D_803F5B30)($at)
/* 60AA8 8005FEA8 3C01803F */  lui        $at, %hi(D_803EEA48)
/* 60AAC 8005FEAC F428EA48 */  sdc1       $f8, %lo(D_803EEA48)($at)
/* 60AB0 8005FEB0 3C01802C */  lui        $at, %hi(D_802C76B0)
/* 60AB4 8005FEB4 AC2376B0 */  sw         $v1, %lo(D_802C76B0)($at)
/* 60AB8 8005FEB8 3C01803F */  lui        $at, %hi(D_803EEB08)
/* 60ABC 8005FEBC F426EB08 */  sdc1       $f6, %lo(D_803EEB08)($at)
/* 60AC0 8005FEC0 3C01803F */  lui        $at, %hi(D_803ED088)
/* 60AC4 8005FEC4 AC22D088 */  sw         $v0, %lo(D_803ED088)($at)
/* 60AC8 8005FEC8 3C01803F */  lui        $at, %hi(D_803EEA50)
/* 60ACC 8005FECC F420EA50 */  sdc1       $f0, %lo(D_803EEA50)($at)
/* 60AD0 8005FED0 F6040000 */  sdc1       $f4, 0x0($s0)
/* 60AD4 8005FED4 F6020008 */  sdc1       $f2, 0x8($s0)
/* 60AD8 8005FED8 08017FD5 */  j          .L8005FF54
/* 60ADC 8005FEDC 02002021 */   addu      $a0, $s0, $zero
.L8005FEE0:
/* 60AE0 8005FEE0 3C01803F */  lui        $at, %hi(D_803F5B30)
/* 60AE4 8005FEE4 D4205B30 */  ldc1       $f0, %lo(D_803F5B30)($at)
/* 60AE8 8005FEE8 4620403C */  c.lt.d     $f8, $f0
/* 60AEC 8005FEEC 00000000 */  nop
/* 60AF0 8005FEF0 00000000 */  nop
/* 60AF4 8005FEF4 45000019 */  bc1f       .L8005FF5C
/* 60AF8 8005FEF8 02202021 */   addu      $a0, $s1, $zero
/* 60AFC 8005FEFC D6640000 */  ldc1       $f4, 0x0($s3)
/* 60B00 8005FF00 D6400000 */  ldc1       $f0, 0x0($s2)
/* 60B04 8005FF04 46202100 */  add.d      $f4, $f4, $f0
/* 60B08 8005FF08 3C01802F */  lui        $at, %hi(D_802F1910)
/* 60B0C 8005FF0C D4221910 */  ldc1       $f2, %lo(D_802F1910)($at)
/* 60B10 8005FF10 46342102 */  mul.d      $f4, $f4, $f20
/* 60B14 8005FF14 3C01802D */  lui        $at, %hi(D_802D2650)
/* 60B18 8005FF18 D4202650 */  ldc1       $f0, %lo(D_802D2650)($at)
/* 60B1C 8005FF1C 46201080 */  add.d      $f2, $f2, $f0
/* 60B20 8005FF20 3C02802D */  lui        $v0, %hi(D_802D1150)
/* 60B24 8005FF24 8C421150 */  lw         $v0, %lo(D_802D1150)($v0)
/* 60B28 8005FF28 46341082 */  mul.d      $f2, $f2, $f20
/* 60B2C 8005FF2C 3C01802F */  lui        $at, %hi(D_802F0CF0)
/* 60B30 8005FF30 D4200CF0 */  ldc1       $f0, %lo(D_802F0CF0)($at)
/* 60B34 8005FF34 3C01803F */  lui        $at, %hi(D_803F5B30)
/* 60B38 8005FF38 F4285B30 */  sdc1       $f8, %lo(D_803F5B30)($at)
/* 60B3C 8005FF3C 3C01802C */  lui        $at, %hi(D_802C76B0)
/* 60B40 8005FF40 AC2276B0 */  sw         $v0, %lo(D_802C76B0)($at)
/* 60B44 8005FF44 3C01803F */  lui        $at, %hi(D_803EEB08)
/* 60B48 8005FF48 F420EB08 */  sdc1       $f0, %lo(D_803EEB08)($at)
/* 60B4C 8005FF4C F6240000 */  sdc1       $f4, 0x0($s1)
/* 60B50 8005FF50 F6220008 */  sdc1       $f2, 0x8($s1)
.L8005FF54:
/* 60B54 8005FF54 0C022CF3 */  jal        func_8008B3CC
/* 60B58 8005FF58 00000000 */   nop
.L8005FF5C:
/* 60B5C 8005FF5C 3C02802D */  lui        $v0, %hi(D_802D1150)
/* 60B60 8005FF60 8C421150 */  lw         $v0, %lo(D_802D1150)($v0)
/* 60B64 8005FF64 3C03802F */  lui        $v1, %hi(D_802F1904)
/* 60B68 8005FF68 8C631904 */  lw         $v1, %lo(D_802F1904)($v1)
/* 60B6C 8005FF6C 3C04802C */  lui        $a0, %hi(D_802C6064)
/* 60B70 8005FF70 8C846064 */  lw         $a0, %lo(D_802C6064)($a0)
/* 60B74 8005FF74 24420001 */  addiu      $v0, $v0, 0x1
/* 60B78 8005FF78 00031840 */  sll        $v1, $v1, 1
/* 60B7C 8005FF7C 24840020 */  addiu      $a0, $a0, 0x20
/* 60B80 8005FF80 3C01802D */  lui        $at, %hi(D_802D1150)
/* 60B84 8005FF84 AC221150 */  sw         $v0, %lo(D_802D1150)($at)
/* 60B88 8005FF88 28420006 */  slti       $v0, $v0, 0x6
/* 60B8C 8005FF8C 3C01802F */  lui        $at, %hi(D_802F1904)
/* 60B90 8005FF90 AC231904 */  sw         $v1, %lo(D_802F1904)($at)
/* 60B94 8005FF94 3C01802C */  lui        $at, %hi(D_802C6064)
/* 60B98 8005FF98 1440FF86 */  bnez       $v0, .L8005FDB4
/* 60B9C 8005FF9C AC246064 */   sw        $a0, %lo(D_802C6064)($at)
/* 60BA0 8005FFA0 3C01803F */  lui        $at, %hi(D_803EEA48)
/* 60BA4 8005FFA4 D422EA48 */  ldc1       $f2, %lo(D_803EEA48)($at)
/* 60BA8 8005FFA8 3C01800D */  lui        $at, %hi(D_800D4B28)
/* 60BAC 8005FFAC D4204B28 */  ldc1       $f0, %lo(D_800D4B28)($at)
/* 60BB0 8005FFB0 46201032 */  c.eq.d     $f2, $f0
/* 60BB4 8005FFB4 00000000 */  nop
/* 60BB8 8005FFB8 00000000 */  nop
/* 60BBC 8005FFBC 45010002 */  bc1t       .L8005FFC8
/* 60BC0 8005FFC0 24020001 */   addiu     $v0, $zero, 0x1
/* 60BC4 8005FFC4 00001021 */  addu       $v0, $zero, $zero
.L8005FFC8:
/* 60BC8 8005FFC8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 60BCC 8005FFCC 8FB40020 */  lw         $s4, 0x20($sp)
/* 60BD0 8005FFD0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 60BD4 8005FFD4 8FB20018 */  lw         $s2, 0x18($sp)
/* 60BD8 8005FFD8 8FB10014 */  lw         $s1, 0x14($sp)
/* 60BDC 8005FFDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 60BE0 8005FFE0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 60BE4 8005FFE4 03E00008 */  jr         $ra
/* 60BE8 8005FFE8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005FFEC
/* 60BEC 8005FFEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60BF0 8005FFF0 AFB00010 */  sw         $s0, 0x10($sp)
/* 60BF4 8005FFF4 3C10803F */  lui        $s0, %hi(D_803EEBE0)
/* 60BF8 8005FFF8 2610EBE0 */  addiu      $s0, $s0, %lo(D_803EEBE0)
/* 60BFC 8005FFFC 24020001 */  addiu      $v0, $zero, 0x1
/* 60C00 80060000 AFBF0014 */  sw         $ra, 0x14($sp)
/* 60C04 80060004 3C01802D */  lui        $at, %hi(D_802D2E38)
/* 60C08 80060008 AC222E38 */  sw         $v0, %lo(D_802D2E38)($at)
.L8006000C:
/* 60C0C 8006000C 3C01802C */  lui        $at, %hi(D_802C6064)
/* 60C10 80060010 AC306064 */  sw         $s0, %lo(D_802C6064)($at)
/* 60C14 80060014 0C017E03 */  jal        func_8005F80C
/* 60C18 80060018 261000C0 */   addiu     $s0, $s0, 0xC0
/* 60C1C 8006001C 3C02802D */  lui        $v0, %hi(D_802D2E38)
/* 60C20 80060020 8C422E38 */  lw         $v0, %lo(D_802D2E38)($v0)
/* 60C24 80060024 24420001 */  addiu      $v0, $v0, 0x1
/* 60C28 80060028 3C01802D */  lui        $at, %hi(D_802D2E38)
/* 60C2C 8006002C AC222E38 */  sw         $v0, %lo(D_802D2E38)($at)
/* 60C30 80060030 28420010 */  slti       $v0, $v0, 0x10
/* 60C34 80060034 1440FFF5 */  bnez       $v0, .L8006000C
/* 60C38 80060038 00000000 */   nop
/* 60C3C 8006003C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 60C40 80060040 8FB00010 */  lw         $s0, 0x10($sp)
/* 60C44 80060044 03E00008 */  jr         $ra
/* 60C48 80060048 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8006004C
/* 60C4C 8006004C D4820008 */  ldc1       $f2, 0x8($a0)
/* 60C50 80060050 3C01800D */  lui        $at, %hi(D_800D4B30)
/* 60C54 80060054 D4204B30 */  ldc1       $f0, %lo(D_800D4B30)($at)
/* 60C58 80060058 4620103C */  c.lt.d     $f2, $f0
/* 60C5C 8006005C 00000000 */  nop
/* 60C60 80060060 00000000 */  nop
/* 60C64 80060064 4501002A */  bc1t       .L80060110
/* 60C68 80060068 00001021 */   addu      $v0, $zero, $zero
/* 60C6C 8006006C 3C01800D */  lui        $at, %hi(D_800D4B38)
/* 60C70 80060070 D4204B38 */  ldc1       $f0, %lo(D_800D4B38)($at)
/* 60C74 80060074 4622003C */  c.lt.d     $f0, $f2
/* 60C78 80060078 00000000 */  nop
/* 60C7C 8006007C 45010024 */  bc1t       .L80060110
/* 60C80 80060080 00000000 */   nop
/* 60C84 80060084 4622003E */  c.le.d     $f0, $f2
/* 60C88 80060088 00000000 */  nop
/* 60C8C 8006008C 4500000F */  bc1f       .L800600CC
/* 60C90 80060090 00000000 */   nop
/* 60C94 80060094 D4820000 */  ldc1       $f2, 0x0($a0)
/* 60C98 80060098 3C01800D */  lui        $at, %hi(D_800D4B40)
/* 60C9C 8006009C D4204B40 */  ldc1       $f0, %lo(D_800D4B40)($at)
/* 60CA0 800600A0 4622003C */  c.lt.d     $f0, $f2
/* 60CA4 800600A4 00000000 */  nop
/* 60CA8 800600A8 45010019 */  bc1t       .L80060110
/* 60CAC 800600AC 00000000 */   nop
/* 60CB0 800600B0 3C01800D */  lui        $at, %hi(D_800D4B48)
/* 60CB4 800600B4 D4204B48 */  ldc1       $f0, %lo(D_800D4B48)($at)
/* 60CB8 800600B8 4620103C */  c.lt.d     $f2, $f0
/* 60CBC 800600BC 00000000 */  nop
/* 60CC0 800600C0 45010013 */  bc1t       .L80060110
/* 60CC4 800600C4 00000000 */   nop
/* 60CC8 800600C8 D4820008 */  ldc1       $f2, 0x8($a0)
.L800600CC:
/* 60CCC 800600CC 3C01800C */  lui        $at, %hi(D_800C6C38)
/* 60CD0 800600D0 D4206C38 */  ldc1       $f0, %lo(D_800C6C38)($at)
/* 60CD4 800600D4 46201081 */  sub.d      $f2, $f2, $f0
/* 60CD8 800600D8 3C01800D */  lui        $at, %hi(D_800D4B50)
/* 60CDC 800600DC D4244B50 */  ldc1       $f4, %lo(D_800D4B50)($at)
/* 60CE0 800600E0 D4800000 */  ldc1       $f0, 0x0($a0)
/* 60CE4 800600E4 46241082 */  mul.d      $f2, $f2, $f4
/* 60CE8 800600E8 3C01800D */  lui        $at, %hi(D_800D4B58)
/* 60CEC 800600EC D4244B58 */  ldc1       $f4, %lo(D_800D4B58)($at)
/* 60CF0 800600F0 46200005 */  abs.d      $f0, $f0
/* 60CF4 800600F4 46240001 */  sub.d      $f0, $f0, $f4
/* 60CF8 800600F8 4622003C */  c.lt.d     $f0, $f2
/* 60CFC 800600FC 00000000 */  nop
/* 60D00 80060100 00000000 */  nop
/* 60D04 80060104 45010002 */  bc1t       .L80060110
/* 60D08 80060108 00001021 */   addu      $v0, $zero, $zero
/* 60D0C 8006010C 24020001 */  addiu      $v0, $zero, 0x1
.L80060110:
/* 60D10 80060110 03E00008 */  jr         $ra
/* 60D14 80060114 00000000 */   nop

glabel func_80060118
/* 60D18 80060118 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 60D1C 8006011C AFB00010 */  sw         $s0, 0x10($sp)
/* 60D20 80060120 00048100 */  sll        $s0, $a0, 4
/* 60D24 80060124 AFBF001C */  sw         $ra, 0x1C($sp)
/* 60D28 80060128 AFB20018 */  sw         $s2, 0x18($sp)
/* 60D2C 8006012C AFB10014 */  sw         $s1, 0x14($sp)
/* 60D30 80060130 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 60D34 80060134 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60D38 80060138 00300821 */  addu       $at, $at, $s0
/* 60D3C 8006013C D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 60D40 80060140 3C01800D */  lui        $at, %hi(D_800D4B60)
/* 60D44 80060144 D4344B60 */  ldc1       $f20, %lo(D_800D4B60)($at)
/* 60D48 80060148 46340000 */  add.d      $f0, $f0, $f20
/* 60D4C 8006014C 46200007 */  neg.d      $f0, $f0
/* 60D50 80060150 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60D54 80060154 00300821 */  addu       $at, $at, $s0
/* 60D58 80060158 0C0177D2 */  jal        func_8005DF48
/* 60D5C 8006015C F42059D8 */   sdc1      $f0, %lo(D_803F59D8)($at)
/* 60D60 80060160 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 60D64 80060164 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 60D68 80060168 D4800000 */  ldc1       $f0, 0x0($a0)
/* 60D6C 8006016C 46200000 */  add.d      $f0, $f0, $f0
/* 60D70 80060170 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60D74 80060174 00300821 */  addu       $at, $at, $s0
/* 60D78 80060178 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 60D7C 8006017C 46201081 */  sub.d      $f2, $f2, $f0
/* 60D80 80060180 3C01802F */  lui        $at, %hi(D_802F1910)
/* 60D84 80060184 D4201910 */  ldc1       $f0, %lo(D_802F1910)($at)
/* 60D88 80060188 3C02802B */  lui        $v0, %hi(D_802AED90)
/* 60D8C 8006018C 2442ED90 */  addiu      $v0, $v0, %lo(D_802AED90)
/* 60D90 80060190 46200000 */  add.d      $f0, $f0, $f0
/* 60D94 80060194 F4420000 */  sdc1       $f2, 0x0($v0)
/* 60D98 80060198 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60D9C 8006019C 00300821 */  addu       $at, $at, $s0
/* 60DA0 800601A0 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 60DA4 800601A4 3C12802D */  lui        $s2, %hi(D_802D2648)
/* 60DA8 800601A8 26522648 */  addiu      $s2, $s2, %lo(D_802D2648)
/* 60DAC 800601AC 46201081 */  sub.d      $f2, $f2, $f0
/* 60DB0 800601B0 D6400000 */  ldc1       $f0, 0x0($s2)
/* 60DB4 800601B4 46200000 */  add.d      $f0, $f0, $f0
/* 60DB8 800601B8 3C01802B */  lui        $at, %hi(D_802AED98)
/* 60DBC 800601BC F422ED98 */  sdc1       $f2, %lo(D_802AED98)($at)
/* 60DC0 800601C0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60DC4 800601C4 00300821 */  addu       $at, $at, $s0
/* 60DC8 800601C8 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 60DCC 800601CC 46201081 */  sub.d      $f2, $f2, $f0
/* 60DD0 800601D0 3C01802D */  lui        $at, %hi(D_802D2650)
/* 60DD4 800601D4 D4242650 */  ldc1       $f4, %lo(D_802D2650)($at)
/* 60DD8 800601D8 3C11802B */  lui        $s1, %hi(D_802AEDA0)
/* 60DDC 800601DC 2631EDA0 */  addiu      $s1, $s1, %lo(D_802AEDA0)
/* 60DE0 800601E0 46242100 */  add.d      $f4, $f4, $f4
/* 60DE4 800601E4 F6220000 */  sdc1       $f2, 0x0($s1)
/* 60DE8 800601E8 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60DEC 800601EC 00300821 */  addu       $at, $at, $s0
/* 60DF0 800601F0 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 60DF4 800601F4 46240001 */  sub.d      $f0, $f0, $f4
/* 60DF8 800601F8 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 60DFC 800601FC F420EDA8 */  sdc1       $f0, %lo(D_802AEDA8)($at)
/* 60E00 80060200 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60E04 80060204 00300821 */  addu       $at, $at, $s0
/* 60E08 80060208 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 60E0C 8006020C 46200007 */  neg.d      $f0, $f0
/* 60E10 80060210 46340001 */  sub.d      $f0, $f0, $f20
/* 60E14 80060214 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60E18 80060218 00300821 */  addu       $at, $at, $s0
/* 60E1C 8006021C F42059D8 */  sdc1       $f0, %lo(D_803F59D8)($at)
/* 60E20 80060220 3C01802B */  lui        $at, %hi(D_802AED98)
/* 60E24 80060224 D426ED98 */  ldc1       $f6, %lo(D_802AED98)($at)
/* 60E28 80060228 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60E2C 8006022C D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 60E30 80060230 46203181 */  sub.d      $f6, $f6, $f0
/* 60E34 80060234 D4420000 */  ldc1       $f2, 0x0($v0)
/* 60E38 80060238 46201087 */  neg.d      $f2, $f2
/* 60E3C 8006023C 46341081 */  sub.d      $f2, $f2, $f20
/* 60E40 80060240 D6240000 */  ldc1       $f4, 0x0($s1)
/* 60E44 80060244 46202107 */  neg.d      $f4, $f4
/* 60E48 80060248 3C10803F */  lui        $s0, %hi(D_803F59D8)
/* 60E4C 8006024C 261059D8 */  addiu      $s0, $s0, %lo(D_803F59D8)
/* 60E50 80060250 46342101 */  sub.d      $f4, $f4, $f20
/* 60E54 80060254 D6000000 */  ldc1       $f0, 0x0($s0)
/* 60E58 80060258 46201001 */  sub.d      $f0, $f2, $f0
/* 60E5C 8006025C 3C01802F */  lui        $at, %hi(D_802F1910)
/* 60E60 80060260 F4261910 */  sdc1       $f6, %lo(D_802F1910)($at)
/* 60E64 80060264 F4420000 */  sdc1       $f2, 0x0($v0)
/* 60E68 80060268 F6240000 */  sdc1       $f4, 0x0($s1)
/* 60E6C 8006026C 0C022CF3 */  jal        func_8008B3CC
/* 60E70 80060270 F4800000 */   sdc1      $f0, 0x0($a0)
/* 60E74 80060274 D6240000 */  ldc1       $f4, 0x0($s1)
/* 60E78 80060278 D6000000 */  ldc1       $f0, 0x0($s0)
/* 60E7C 8006027C 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 60E80 80060280 D422EDA8 */  ldc1       $f2, %lo(D_802AEDA8)($at)
/* 60E84 80060284 46202101 */  sub.d      $f4, $f4, $f0
/* 60E88 80060288 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60E8C 8006028C D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 60E90 80060290 46201081 */  sub.d      $f2, $f2, $f0
/* 60E94 80060294 02402021 */  addu       $a0, $s2, $zero
/* 60E98 80060298 F4840000 */  sdc1       $f4, 0x0($a0)
/* 60E9C 8006029C 3C01802D */  lui        $at, %hi(D_802D2650)
/* 60EA0 800602A0 0C022CF3 */  jal        func_8008B3CC
/* 60EA4 800602A4 F4222650 */   sdc1      $f2, %lo(D_802D2650)($at)
/* 60EA8 800602A8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 60EAC 800602AC 8FB20018 */  lw         $s2, 0x18($sp)
/* 60EB0 800602B0 8FB10014 */  lw         $s1, 0x14($sp)
/* 60EB4 800602B4 8FB00010 */  lw         $s0, 0x10($sp)
/* 60EB8 800602B8 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 60EBC 800602BC 03E00008 */  jr         $ra
/* 60EC0 800602C0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800602C4
/* 60EC4 800602C4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 60EC8 800602C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 60ECC 800602CC 00048100 */  sll        $s0, $a0, 4
/* 60ED0 800602D0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 60ED4 800602D4 AFB20018 */  sw         $s2, 0x18($sp)
/* 60ED8 800602D8 AFB10014 */  sw         $s1, 0x14($sp)
/* 60EDC 800602DC F7B40020 */  sdc1       $f20, 0x20($sp)
/* 60EE0 800602E0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60EE4 800602E4 00300821 */  addu       $at, $at, $s0
/* 60EE8 800602E8 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 60EEC 800602EC 3C01800D */  lui        $at, %hi(D_800D4B68)
/* 60EF0 800602F0 D4344B68 */  ldc1       $f20, %lo(D_800D4B68)($at)
/* 60EF4 800602F4 46340001 */  sub.d      $f0, $f0, $f20
/* 60EF8 800602F8 46200007 */  neg.d      $f0, $f0
/* 60EFC 800602FC 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60F00 80060300 00300821 */  addu       $at, $at, $s0
/* 60F04 80060304 0C0177D2 */  jal        func_8005DF48
/* 60F08 80060308 F42059D8 */   sdc1      $f0, %lo(D_803F59D8)($at)
/* 60F0C 8006030C 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 60F10 80060310 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 60F14 80060314 D4800000 */  ldc1       $f0, 0x0($a0)
/* 60F18 80060318 46200000 */  add.d      $f0, $f0, $f0
/* 60F1C 8006031C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60F20 80060320 00300821 */  addu       $at, $at, $s0
/* 60F24 80060324 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 60F28 80060328 46201081 */  sub.d      $f2, $f2, $f0
/* 60F2C 8006032C 3C01802F */  lui        $at, %hi(D_802F1910)
/* 60F30 80060330 D4201910 */  ldc1       $f0, %lo(D_802F1910)($at)
/* 60F34 80060334 3C02802B */  lui        $v0, %hi(D_802AED90)
/* 60F38 80060338 2442ED90 */  addiu      $v0, $v0, %lo(D_802AED90)
/* 60F3C 8006033C 46200000 */  add.d      $f0, $f0, $f0
/* 60F40 80060340 F4420000 */  sdc1       $f2, 0x0($v0)
/* 60F44 80060344 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60F48 80060348 00300821 */  addu       $at, $at, $s0
/* 60F4C 8006034C D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 60F50 80060350 3C12802D */  lui        $s2, %hi(D_802D2648)
/* 60F54 80060354 26522648 */  addiu      $s2, $s2, %lo(D_802D2648)
/* 60F58 80060358 46201081 */  sub.d      $f2, $f2, $f0
/* 60F5C 8006035C D6400000 */  ldc1       $f0, 0x0($s2)
/* 60F60 80060360 46200000 */  add.d      $f0, $f0, $f0
/* 60F64 80060364 3C01802B */  lui        $at, %hi(D_802AED98)
/* 60F68 80060368 F422ED98 */  sdc1       $f2, %lo(D_802AED98)($at)
/* 60F6C 8006036C 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60F70 80060370 00300821 */  addu       $at, $at, $s0
/* 60F74 80060374 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 60F78 80060378 46201081 */  sub.d      $f2, $f2, $f0
/* 60F7C 8006037C 3C01802D */  lui        $at, %hi(D_802D2650)
/* 60F80 80060380 D4242650 */  ldc1       $f4, %lo(D_802D2650)($at)
/* 60F84 80060384 3C11802B */  lui        $s1, %hi(D_802AEDA0)
/* 60F88 80060388 2631EDA0 */  addiu      $s1, $s1, %lo(D_802AEDA0)
/* 60F8C 8006038C 46242100 */  add.d      $f4, $f4, $f4
/* 60F90 80060390 F6220000 */  sdc1       $f2, 0x0($s1)
/* 60F94 80060394 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60F98 80060398 00300821 */  addu       $at, $at, $s0
/* 60F9C 8006039C D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 60FA0 800603A0 46240001 */  sub.d      $f0, $f0, $f4
/* 60FA4 800603A4 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 60FA8 800603A8 F420EDA8 */  sdc1       $f0, %lo(D_802AEDA8)($at)
/* 60FAC 800603AC 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60FB0 800603B0 00300821 */  addu       $at, $at, $s0
/* 60FB4 800603B4 D42059D8 */  ldc1       $f0, %lo(D_803F59D8)($at)
/* 60FB8 800603B8 46200007 */  neg.d      $f0, $f0
/* 60FBC 800603BC 46340000 */  add.d      $f0, $f0, $f20
/* 60FC0 800603C0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 60FC4 800603C4 00300821 */  addu       $at, $at, $s0
/* 60FC8 800603C8 F42059D8 */  sdc1       $f0, %lo(D_803F59D8)($at)
/* 60FCC 800603CC 3C01802B */  lui        $at, %hi(D_802AED98)
/* 60FD0 800603D0 D426ED98 */  ldc1       $f6, %lo(D_802AED98)($at)
/* 60FD4 800603D4 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 60FD8 800603D8 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 60FDC 800603DC 46203181 */  sub.d      $f6, $f6, $f0
/* 60FE0 800603E0 D4420000 */  ldc1       $f2, 0x0($v0)
/* 60FE4 800603E4 46201087 */  neg.d      $f2, $f2
/* 60FE8 800603E8 46341080 */  add.d      $f2, $f2, $f20
/* 60FEC 800603EC D6240000 */  ldc1       $f4, 0x0($s1)
/* 60FF0 800603F0 46202107 */  neg.d      $f4, $f4
/* 60FF4 800603F4 3C10803F */  lui        $s0, %hi(D_803F59D8)
/* 60FF8 800603F8 261059D8 */  addiu      $s0, $s0, %lo(D_803F59D8)
/* 60FFC 800603FC 46342100 */  add.d      $f4, $f4, $f20
/* 61000 80060400 D6000000 */  ldc1       $f0, 0x0($s0)
/* 61004 80060404 46201001 */  sub.d      $f0, $f2, $f0
/* 61008 80060408 3C01802F */  lui        $at, %hi(D_802F1910)
/* 6100C 8006040C F4261910 */  sdc1       $f6, %lo(D_802F1910)($at)
/* 61010 80060410 F4420000 */  sdc1       $f2, 0x0($v0)
/* 61014 80060414 F6240000 */  sdc1       $f4, 0x0($s1)
/* 61018 80060418 0C022CF3 */  jal        func_8008B3CC
/* 6101C 8006041C F4800000 */   sdc1      $f0, 0x0($a0)
/* 61020 80060420 D6240000 */  ldc1       $f4, 0x0($s1)
/* 61024 80060424 D6000000 */  ldc1       $f0, 0x0($s0)
/* 61028 80060428 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 6102C 8006042C D422EDA8 */  ldc1       $f2, %lo(D_802AEDA8)($at)
/* 61030 80060430 46202101 */  sub.d      $f4, $f4, $f0
/* 61034 80060434 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61038 80060438 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 6103C 8006043C 46201081 */  sub.d      $f2, $f2, $f0
/* 61040 80060440 02402021 */  addu       $a0, $s2, $zero
/* 61044 80060444 F4840000 */  sdc1       $f4, 0x0($a0)
/* 61048 80060448 3C01802D */  lui        $at, %hi(D_802D2650)
/* 6104C 8006044C 0C022CF3 */  jal        func_8008B3CC
/* 61050 80060450 F4222650 */   sdc1      $f2, %lo(D_802D2650)($at)
/* 61054 80060454 8FBF001C */  lw         $ra, 0x1C($sp)
/* 61058 80060458 8FB20018 */  lw         $s2, 0x18($sp)
/* 6105C 8006045C 8FB10014 */  lw         $s1, 0x14($sp)
/* 61060 80060460 8FB00010 */  lw         $s0, 0x10($sp)
/* 61064 80060464 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 61068 80060468 03E00008 */  jr         $ra
/* 6106C 8006046C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80060470
/* 61070 80060470 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 61074 80060474 AFB00010 */  sw         $s0, 0x10($sp)
/* 61078 80060478 00048100 */  sll        $s0, $a0, 4
/* 6107C 8006047C AFBF001C */  sw         $ra, 0x1C($sp)
/* 61080 80060480 AFB20018 */  sw         $s2, 0x18($sp)
/* 61084 80060484 AFB10014 */  sw         $s1, 0x14($sp)
/* 61088 80060488 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 6108C 8006048C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61090 80060490 00300821 */  addu       $at, $at, $s0
/* 61094 80060494 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 61098 80060498 3C01800D */  lui        $at, %hi(D_800D4B70)
/* 6109C 8006049C D4344B70 */  ldc1       $f20, %lo(D_800D4B70)($at)
/* 610A0 800604A0 46340000 */  add.d      $f0, $f0, $f20
/* 610A4 800604A4 46200007 */  neg.d      $f0, $f0
/* 610A8 800604A8 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 610AC 800604AC 00300821 */  addu       $at, $at, $s0
/* 610B0 800604B0 0C0177D2 */  jal        func_8005DF48
/* 610B4 800604B4 F42059E0 */   sdc1      $f0, %lo(D_803F59E0)($at)
/* 610B8 800604B8 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 610BC 800604BC 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 610C0 800604C0 D4800000 */  ldc1       $f0, 0x0($a0)
/* 610C4 800604C4 46200000 */  add.d      $f0, $f0, $f0
/* 610C8 800604C8 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 610CC 800604CC 00300821 */  addu       $at, $at, $s0
/* 610D0 800604D0 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 610D4 800604D4 46201081 */  sub.d      $f2, $f2, $f0
/* 610D8 800604D8 3C01802F */  lui        $at, %hi(D_802F1910)
/* 610DC 800604DC D4201910 */  ldc1       $f0, %lo(D_802F1910)($at)
/* 610E0 800604E0 3C02802B */  lui        $v0, %hi(D_802AED90)
/* 610E4 800604E4 2442ED90 */  addiu      $v0, $v0, %lo(D_802AED90)
/* 610E8 800604E8 46200000 */  add.d      $f0, $f0, $f0
/* 610EC 800604EC F4420000 */  sdc1       $f2, 0x0($v0)
/* 610F0 800604F0 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 610F4 800604F4 00300821 */  addu       $at, $at, $s0
/* 610F8 800604F8 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 610FC 800604FC 3C12802D */  lui        $s2, %hi(D_802D2648)
/* 61100 80060500 26522648 */  addiu      $s2, $s2, %lo(D_802D2648)
/* 61104 80060504 46201081 */  sub.d      $f2, $f2, $f0
/* 61108 80060508 D6400000 */  ldc1       $f0, 0x0($s2)
/* 6110C 8006050C 46200000 */  add.d      $f0, $f0, $f0
/* 61110 80060510 3C01802B */  lui        $at, %hi(D_802AED98)
/* 61114 80060514 F422ED98 */  sdc1       $f2, %lo(D_802AED98)($at)
/* 61118 80060518 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 6111C 8006051C 00300821 */  addu       $at, $at, $s0
/* 61120 80060520 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 61124 80060524 46201081 */  sub.d      $f2, $f2, $f0
/* 61128 80060528 3C01802D */  lui        $at, %hi(D_802D2650)
/* 6112C 8006052C D4242650 */  ldc1       $f4, %lo(D_802D2650)($at)
/* 61130 80060530 3C11802B */  lui        $s1, %hi(D_802AEDA0)
/* 61134 80060534 2631EDA0 */  addiu      $s1, $s1, %lo(D_802AEDA0)
/* 61138 80060538 46242100 */  add.d      $f4, $f4, $f4
/* 6113C 8006053C F6220000 */  sdc1       $f2, 0x0($s1)
/* 61140 80060540 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61144 80060544 00300821 */  addu       $at, $at, $s0
/* 61148 80060548 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 6114C 8006054C 46240001 */  sub.d      $f0, $f0, $f4
/* 61150 80060550 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 61154 80060554 F420EDA8 */  sdc1       $f0, %lo(D_802AEDA8)($at)
/* 61158 80060558 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 6115C 8006055C 00300821 */  addu       $at, $at, $s0
/* 61160 80060560 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 61164 80060564 46200007 */  neg.d      $f0, $f0
/* 61168 80060568 46340001 */  sub.d      $f0, $f0, $f20
/* 6116C 8006056C 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61170 80060570 00300821 */  addu       $at, $at, $s0
/* 61174 80060574 F42059E0 */  sdc1       $f0, %lo(D_803F59E0)($at)
/* 61178 80060578 3C10803F */  lui        $s0, %hi(D_803F59D8)
/* 6117C 8006057C 261059D8 */  addiu      $s0, $s0, %lo(D_803F59D8)
/* 61180 80060580 D4420000 */  ldc1       $f2, 0x0($v0)
/* 61184 80060584 D6000000 */  ldc1       $f0, 0x0($s0)
/* 61188 80060588 46201081 */  sub.d      $f2, $f2, $f0
/* 6118C 8006058C 3C01802B */  lui        $at, %hi(D_802AED98)
/* 61190 80060590 D424ED98 */  ldc1       $f4, %lo(D_802AED98)($at)
/* 61194 80060594 46202107 */  neg.d      $f4, $f4
/* 61198 80060598 46342101 */  sub.d      $f4, $f4, $f20
/* 6119C 8006059C 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 611A0 800605A0 D426EDA8 */  ldc1       $f6, %lo(D_802AEDA8)($at)
/* 611A4 800605A4 46203187 */  neg.d      $f6, $f6
/* 611A8 800605A8 46343181 */  sub.d      $f6, $f6, $f20
/* 611AC 800605AC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 611B0 800605B0 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 611B4 800605B4 46202001 */  sub.d      $f0, $f4, $f0
/* 611B8 800605B8 F4820000 */  sdc1       $f2, 0x0($a0)
/* 611BC 800605BC 3C01802B */  lui        $at, %hi(D_802AED98)
/* 611C0 800605C0 F424ED98 */  sdc1       $f4, %lo(D_802AED98)($at)
/* 611C4 800605C4 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 611C8 800605C8 F426EDA8 */  sdc1       $f6, %lo(D_802AEDA8)($at)
/* 611CC 800605CC 3C01802F */  lui        $at, %hi(D_802F1910)
/* 611D0 800605D0 0C022CF3 */  jal        func_8008B3CC
/* 611D4 800605D4 F4201910 */   sdc1      $f0, %lo(D_802F1910)($at)
/* 611D8 800605D8 D6240000 */  ldc1       $f4, 0x0($s1)
/* 611DC 800605DC D6000000 */  ldc1       $f0, 0x0($s0)
/* 611E0 800605E0 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 611E4 800605E4 D422EDA8 */  ldc1       $f2, %lo(D_802AEDA8)($at)
/* 611E8 800605E8 46202101 */  sub.d      $f4, $f4, $f0
/* 611EC 800605EC 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 611F0 800605F0 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 611F4 800605F4 46201081 */  sub.d      $f2, $f2, $f0
/* 611F8 800605F8 02402021 */  addu       $a0, $s2, $zero
/* 611FC 800605FC F4840000 */  sdc1       $f4, 0x0($a0)
/* 61200 80060600 3C01802D */  lui        $at, %hi(D_802D2650)
/* 61204 80060604 0C022CF3 */  jal        func_8008B3CC
/* 61208 80060608 F4222650 */   sdc1      $f2, %lo(D_802D2650)($at)
/* 6120C 8006060C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 61210 80060610 8FB20018 */  lw         $s2, 0x18($sp)
/* 61214 80060614 8FB10014 */  lw         $s1, 0x14($sp)
/* 61218 80060618 8FB00010 */  lw         $s0, 0x10($sp)
/* 6121C 8006061C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 61220 80060620 03E00008 */  jr         $ra
/* 61224 80060624 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80060628
/* 61228 80060628 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6122C 8006062C AFB00010 */  sw         $s0, 0x10($sp)
/* 61230 80060630 00048100 */  sll        $s0, $a0, 4
/* 61234 80060634 AFBF001C */  sw         $ra, 0x1C($sp)
/* 61238 80060638 AFB20018 */  sw         $s2, 0x18($sp)
/* 6123C 8006063C AFB10014 */  sw         $s1, 0x14($sp)
/* 61240 80060640 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 61244 80060644 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61248 80060648 00300821 */  addu       $at, $at, $s0
/* 6124C 8006064C D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 61250 80060650 3C01800D */  lui        $at, %hi(D_800D4B78)
/* 61254 80060654 D4344B78 */  ldc1       $f20, %lo(D_800D4B78)($at)
/* 61258 80060658 46340001 */  sub.d      $f0, $f0, $f20
/* 6125C 8006065C 46200007 */  neg.d      $f0, $f0
/* 61260 80060660 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61264 80060664 00300821 */  addu       $at, $at, $s0
/* 61268 80060668 0C0177D2 */  jal        func_8005DF48
/* 6126C 8006066C F42059E0 */   sdc1      $f0, %lo(D_803F59E0)($at)
/* 61270 80060670 3C04802F */  lui        $a0, %hi(D_802F1908)
/* 61274 80060674 24841908 */  addiu      $a0, $a0, %lo(D_802F1908)
/* 61278 80060678 D4800000 */  ldc1       $f0, 0x0($a0)
/* 6127C 8006067C 46200000 */  add.d      $f0, $f0, $f0
/* 61280 80060680 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 61284 80060684 00300821 */  addu       $at, $at, $s0
/* 61288 80060688 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 6128C 8006068C 46201081 */  sub.d      $f2, $f2, $f0
/* 61290 80060690 3C01802F */  lui        $at, %hi(D_802F1910)
/* 61294 80060694 D4201910 */  ldc1       $f0, %lo(D_802F1910)($at)
/* 61298 80060698 3C02802B */  lui        $v0, %hi(D_802AED90)
/* 6129C 8006069C 2442ED90 */  addiu      $v0, $v0, %lo(D_802AED90)
/* 612A0 800606A0 46200000 */  add.d      $f0, $f0, $f0
/* 612A4 800606A4 F4420000 */  sdc1       $f2, 0x0($v0)
/* 612A8 800606A8 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 612AC 800606AC 00300821 */  addu       $at, $at, $s0
/* 612B0 800606B0 D42259E0 */  ldc1       $f2, %lo(D_803F59E0)($at)
/* 612B4 800606B4 3C12802D */  lui        $s2, %hi(D_802D2648)
/* 612B8 800606B8 26522648 */  addiu      $s2, $s2, %lo(D_802D2648)
/* 612BC 800606BC 46201081 */  sub.d      $f2, $f2, $f0
/* 612C0 800606C0 D6400000 */  ldc1       $f0, 0x0($s2)
/* 612C4 800606C4 46200000 */  add.d      $f0, $f0, $f0
/* 612C8 800606C8 3C01802B */  lui        $at, %hi(D_802AED98)
/* 612CC 800606CC F422ED98 */  sdc1       $f2, %lo(D_802AED98)($at)
/* 612D0 800606D0 3C01803F */  lui        $at, %hi(D_803F59D8)
/* 612D4 800606D4 00300821 */  addu       $at, $at, $s0
/* 612D8 800606D8 D42259D8 */  ldc1       $f2, %lo(D_803F59D8)($at)
/* 612DC 800606DC 46201081 */  sub.d      $f2, $f2, $f0
/* 612E0 800606E0 3C01802D */  lui        $at, %hi(D_802D2650)
/* 612E4 800606E4 D4242650 */  ldc1       $f4, %lo(D_802D2650)($at)
/* 612E8 800606E8 3C11802B */  lui        $s1, %hi(D_802AEDA0)
/* 612EC 800606EC 2631EDA0 */  addiu      $s1, $s1, %lo(D_802AEDA0)
/* 612F0 800606F0 46242100 */  add.d      $f4, $f4, $f4
/* 612F4 800606F4 F6220000 */  sdc1       $f2, 0x0($s1)
/* 612F8 800606F8 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 612FC 800606FC 00300821 */  addu       $at, $at, $s0
/* 61300 80060700 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 61304 80060704 46240001 */  sub.d      $f0, $f0, $f4
/* 61308 80060708 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 6130C 8006070C F420EDA8 */  sdc1       $f0, %lo(D_802AEDA8)($at)
/* 61310 80060710 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61314 80060714 00300821 */  addu       $at, $at, $s0
/* 61318 80060718 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 6131C 8006071C 46200007 */  neg.d      $f0, $f0
/* 61320 80060720 46340000 */  add.d      $f0, $f0, $f20
/* 61324 80060724 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61328 80060728 00300821 */  addu       $at, $at, $s0
/* 6132C 8006072C F42059E0 */  sdc1       $f0, %lo(D_803F59E0)($at)
/* 61330 80060730 3C10803F */  lui        $s0, %hi(D_803F59D8)
/* 61334 80060734 261059D8 */  addiu      $s0, $s0, %lo(D_803F59D8)
/* 61338 80060738 D4420000 */  ldc1       $f2, 0x0($v0)
/* 6133C 8006073C D6000000 */  ldc1       $f0, 0x0($s0)
/* 61340 80060740 46201081 */  sub.d      $f2, $f2, $f0
/* 61344 80060744 3C01802B */  lui        $at, %hi(D_802AED98)
/* 61348 80060748 D424ED98 */  ldc1       $f4, %lo(D_802AED98)($at)
/* 6134C 8006074C 46202107 */  neg.d      $f4, $f4
/* 61350 80060750 46342100 */  add.d      $f4, $f4, $f20
/* 61354 80060754 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 61358 80060758 D426EDA8 */  ldc1       $f6, %lo(D_802AEDA8)($at)
/* 6135C 8006075C 46203187 */  neg.d      $f6, $f6
/* 61360 80060760 46343180 */  add.d      $f6, $f6, $f20
/* 61364 80060764 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 61368 80060768 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 6136C 8006076C 46202001 */  sub.d      $f0, $f4, $f0
/* 61370 80060770 F4820000 */  sdc1       $f2, 0x0($a0)
/* 61374 80060774 3C01802B */  lui        $at, %hi(D_802AED98)
/* 61378 80060778 F424ED98 */  sdc1       $f4, %lo(D_802AED98)($at)
/* 6137C 8006077C 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 61380 80060780 F426EDA8 */  sdc1       $f6, %lo(D_802AEDA8)($at)
/* 61384 80060784 3C01802F */  lui        $at, %hi(D_802F1910)
/* 61388 80060788 0C022CF3 */  jal        func_8008B3CC
/* 6138C 8006078C F4201910 */   sdc1      $f0, %lo(D_802F1910)($at)
/* 61390 80060790 D6240000 */  ldc1       $f4, 0x0($s1)
/* 61394 80060794 D6000000 */  ldc1       $f0, 0x0($s0)
/* 61398 80060798 3C01802B */  lui        $at, %hi(D_802AEDA8)
/* 6139C 8006079C D422EDA8 */  ldc1       $f2, %lo(D_802AEDA8)($at)
/* 613A0 800607A0 46202101 */  sub.d      $f4, $f4, $f0
/* 613A4 800607A4 3C01803F */  lui        $at, %hi(D_803F59E0)
/* 613A8 800607A8 D42059E0 */  ldc1       $f0, %lo(D_803F59E0)($at)
/* 613AC 800607AC 46201081 */  sub.d      $f2, $f2, $f0
/* 613B0 800607B0 02402021 */  addu       $a0, $s2, $zero
/* 613B4 800607B4 F4840000 */  sdc1       $f4, 0x0($a0)
/* 613B8 800607B8 3C01802D */  lui        $at, %hi(D_802D2650)
/* 613BC 800607BC 0C022CF3 */  jal        func_8008B3CC
/* 613C0 800607C0 F4222650 */   sdc1      $f2, %lo(D_802D2650)($at)
/* 613C4 800607C4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 613C8 800607C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 613CC 800607CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 613D0 800607D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 613D4 800607D4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 613D8 800607D8 03E00008 */  jr         $ra
/* 613DC 800607DC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800607E0
/* 613E0 800607E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 613E4 800607E4 00052880 */  sll        $a1, $a1, 2
/* 613E8 800607E8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 613EC 800607EC 3C02800C */  lui        $v0, %hi(D_800C6794)
/* 613F0 800607F0 00451021 */  addu       $v0, $v0, $a1
/* 613F4 800607F4 8C426794 */  lw         $v0, %lo(D_800C6794)($v0)
/* 613F8 800607F8 0040F809 */  jalr       $v0
/* 613FC 800607FC 00C02821 */   addu      $a1, $a2, $zero
/* 61400 80060800 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61404 80060804 03E00008 */  jr         $ra
/* 61408 80060808 27BD0018 */   addiu     $sp, $sp, 0x18
/* 6140C 8006080C 00000000 */  nop
