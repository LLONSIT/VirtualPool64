.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8001D9E0
/* 1E5E0 8001D9E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1E5E4 8001D9E4 AFB40020 */  sw         $s4, 0x20($sp)
/* 1E5E8 8001D9E8 0080A021 */  addu       $s4, $a0, $zero
/* 1E5EC 8001D9EC AFB20018 */  sw         $s2, 0x18($sp)
/* 1E5F0 8001D9F0 00A09021 */  addu       $s2, $a1, $zero
/* 1E5F4 8001D9F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1E5F8 8001D9F8 00C08021 */  addu       $s0, $a2, $zero
/* 1E5FC 8001D9FC 240400A3 */  addiu      $a0, $zero, 0xA3
/* 1E600 8001DA00 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1E604 8001DA04 AFB50024 */  sw         $s5, 0x24($sp)
/* 1E608 8001DA08 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1E60C 8001DA0C 0C0015B7 */  jal        func_800056DC
/* 1E610 8001DA10 AFB10014 */   sw        $s1, 0x14($sp)
/* 1E614 8001DA14 0040A821 */  addu       $s5, $v0, $zero
/* 1E618 8001DA18 24020009 */  addiu      $v0, $zero, 0x9
/* 1E61C 8001DA1C 1642007B */  bne        $s2, $v0, .L8001DC0C
/* 1E620 8001DA20 A2A00000 */   sb        $zero, 0x0($s5)
/* 1E624 8001DA24 24020001 */  addiu      $v0, $zero, 0x1
/* 1E628 8001DA28 12020012 */  beq        $s0, $v0, .L8001DA74
/* 1E62C 8001DA2C 02A08821 */   addu      $s1, $s5, $zero
/* 1E630 8001DA30 2A020002 */  slti       $v0, $s0, 0x2
/* 1E634 8001DA34 50400005 */  beql       $v0, $zero, .L8001DA4C
/* 1E638 8001DA38 24020002 */   addiu     $v0, $zero, 0x2
/* 1E63C 8001DA3C 52000009 */  beql       $s0, $zero, .L8001DA64
/* 1E640 8001DA40 02A02021 */   addu      $a0, $s5, $zero
/* 1E644 8001DA44 080076B8 */  j          .L8001DAE0
/* 1E648 8001DA48 00008021 */   addu      $s0, $zero, $zero
.L8001DA4C:
/* 1E64C 8001DA4C 12020012 */  beq        $s0, $v0, .L8001DA98
/* 1E650 8001DA50 24020003 */   addiu     $v0, $zero, 0x3
/* 1E654 8001DA54 5202001C */  beql       $s0, $v0, .L8001DAC8
/* 1E658 8001DA58 02A02021 */   addu      $a0, $s5, $zero
/* 1E65C 8001DA5C 080076B8 */  j          .L8001DAE0
/* 1E660 8001DA60 00008021 */   addu      $s0, $zero, $zero
.L8001DA64:
/* 1E664 8001DA64 3C05800D */  lui        $a1, %hi(D_800CEC40)
/* 1E668 8001DA68 24A5EC40 */  addiu      $a1, $a1, %lo(D_800CEC40)
/* 1E66C 8001DA6C 0800778E */  j          .L8001DE38
/* 1E670 8001DA70 268601DE */   addiu     $a2, $s4, 0x1DE
.L8001DA74:
/* 1E674 8001DA74 3C06802A */  lui        $a2, %hi(D_802A1580)
/* 1E678 8001DA78 8CC61580 */  lw         $a2, %lo(D_802A1580)($a2)
/* 1E67C 8001DA7C 02A02021 */  addu       $a0, $s5, $zero
/* 1E680 8001DA80 3C05800D */  lui        $a1, %hi(D_800CEC64)
/* 1E684 8001DA84 24A5EC64 */  addiu      $a1, $a1, %lo(D_800CEC64)
/* 1E688 8001DA88 0C024940 */  jal        func_80092500
/* 1E68C 8001DA8C 24C60001 */   addiu     $a2, $a2, 0x1
/* 1E690 8001DA90 080076AB */  j          .L8001DAAC
/* 1E694 8001DA94 02A28821 */   addu      $s1, $s5, $v0
.L8001DA98:
/* 1E698 8001DA98 3C05800D */  lui        $a1, %hi(D_800CEC74)
/* 1E69C 8001DA9C 24A5EC74 */  addiu      $a1, $a1, %lo(D_800CEC74)
/* 1E6A0 8001DAA0 0C024940 */  jal        func_80092500
/* 1E6A4 8001DAA4 02A02021 */   addu      $a0, $s5, $zero
/* 1E6A8 8001DAA8 02A28821 */  addu       $s1, $s5, $v0
.L8001DAAC:
/* 1E6AC 8001DAAC 02202021 */  addu       $a0, $s1, $zero
/* 1E6B0 8001DAB0 3C05800D */  lui        $a1, %hi(D_800D0C10)
/* 1E6B4 8001DAB4 24A50C10 */  addiu      $a1, $a1, %lo(D_800D0C10)
/* 1E6B8 8001DAB8 0C024940 */  jal        func_80092500
/* 1E6BC 8001DABC 268601DE */   addiu     $a2, $s4, 0x1DE
/* 1E6C0 8001DAC0 080076B7 */  j          .L8001DADC
/* 1E6C4 8001DAC4 02228821 */   addu      $s1, $s1, $v0
.L8001DAC8:
/* 1E6C8 8001DAC8 3C05800D */  lui        $a1, %hi(D_800D0C10)
/* 1E6CC 8001DACC 24A50C10 */  addiu      $a1, $a1, %lo(D_800D0C10)
/* 1E6D0 8001DAD0 0C024940 */  jal        func_80092500
/* 1E6D4 8001DAD4 268601DE */   addiu     $a2, $s4, 0x1DE
/* 1E6D8 8001DAD8 02A28821 */  addu       $s1, $s5, $v0
.L8001DADC:
/* 1E6DC 8001DADC 00008021 */  addu       $s0, $zero, $zero
.L8001DAE0:
/* 1E6E0 8001DAE0 00001821 */  addu       $v1, $zero, $zero
/* 1E6E4 8001DAE4 02802021 */  addu       $a0, $s4, $zero
.L8001DAE8:
/* 1E6E8 8001DAE8 94820042 */  lhu        $v0, 0x42($a0)
/* 1E6EC 8001DAEC 24630001 */  addiu      $v1, $v1, 0x1
/* 1E6F0 8001DAF0 02028021 */  addu       $s0, $s0, $v0
/* 1E6F4 8001DAF4 28620009 */  slti       $v0, $v1, 0x9
/* 1E6F8 8001DAF8 1440FFFB */  bnez       $v0, .L8001DAE8
/* 1E6FC 8001DAFC 24840028 */   addiu     $a0, $a0, 0x28
/* 1E700 8001DB00 02009021 */  addu       $s2, $s0, $zero
/* 1E704 8001DB04 02202021 */  addu       $a0, $s1, $zero
/* 1E708 8001DB08 3C05800D */  lui        $a1, %hi(D_800CECA8)
/* 1E70C 8001DB0C 24A5ECA8 */  addiu      $a1, $a1, %lo(D_800CECA8)
/* 1E710 8001DB10 0C024940 */  jal        func_80092500
/* 1E714 8001DB14 02403021 */   addu      $a2, $s2, $zero
/* 1E718 8001DB18 02228821 */  addu       $s1, $s1, $v0
/* 1E71C 8001DB1C 00008021 */  addu       $s0, $zero, $zero
/* 1E720 8001DB20 00001821 */  addu       $v1, $zero, $zero
/* 1E724 8001DB24 02802021 */  addu       $a0, $s4, $zero
.L8001DB28:
/* 1E728 8001DB28 94820044 */  lhu        $v0, 0x44($a0)
/* 1E72C 8001DB2C 24630001 */  addiu      $v1, $v1, 0x1
/* 1E730 8001DB30 02028021 */  addu       $s0, $s0, $v0
/* 1E734 8001DB34 28620009 */  slti       $v0, $v1, 0x9
/* 1E738 8001DB38 1440FFFB */  bnez       $v0, .L8001DB28
/* 1E73C 8001DB3C 24840028 */   addiu     $a0, $a0, 0x28
/* 1E740 8001DB40 02202021 */  addu       $a0, $s1, $zero
/* 1E744 8001DB44 3C05800D */  lui        $a1, %hi(D_800CECB4)
/* 1E748 8001DB48 24A5ECB4 */  addiu      $a1, $a1, %lo(D_800CECB4)
/* 1E74C 8001DB4C 0C024940 */  jal        func_80092500
/* 1E750 8001DB50 02003021 */   addu      $a2, $s0, $zero
/* 1E754 8001DB54 02228821 */  addu       $s1, $s1, $v0
/* 1E758 8001DB58 02202021 */  addu       $a0, $s1, $zero
/* 1E75C 8001DB5C 3C05800D */  lui        $a1, %hi(D_800CECC0)
/* 1E760 8001DB60 24A5ECC0 */  addiu      $a1, $a1, %lo(D_800CECC0)
/* 1E764 8001DB64 0C024940 */  jal        func_80092500
/* 1E768 8001DB68 02503023 */   subu      $a2, $s2, $s0
/* 1E76C 8001DB6C 02228821 */  addu       $s1, $s1, $v0
/* 1E770 8001DB70 00008021 */  addu       $s0, $zero, $zero
/* 1E774 8001DB74 00001821 */  addu       $v1, $zero, $zero
/* 1E778 8001DB78 02802021 */  addu       $a0, $s4, $zero
.L8001DB7C:
/* 1E77C 8001DB7C 8C82004C */  lw         $v0, 0x4C($a0)
/* 1E780 8001DB80 24630001 */  addiu      $v1, $v1, 0x1
/* 1E784 8001DB84 02028021 */  addu       $s0, $s0, $v0
/* 1E788 8001DB88 28620009 */  slti       $v0, $v1, 0x9
/* 1E78C 8001DB8C 1440FFFB */  bnez       $v0, .L8001DB7C
/* 1E790 8001DB90 24840028 */   addiu     $a0, $a0, 0x28
/* 1E794 8001DB94 02009021 */  addu       $s2, $s0, $zero
/* 1E798 8001DB98 00008021 */  addu       $s0, $zero, $zero
/* 1E79C 8001DB9C 00001821 */  addu       $v1, $zero, $zero
/* 1E7A0 8001DBA0 02802021 */  addu       $a0, $s4, $zero
.L8001DBA4:
/* 1E7A4 8001DBA4 8C820050 */  lw         $v0, 0x50($a0)
/* 1E7A8 8001DBA8 24630001 */  addiu      $v1, $v1, 0x1
/* 1E7AC 8001DBAC 02028021 */  addu       $s0, $s0, $v0
/* 1E7B0 8001DBB0 28620009 */  slti       $v0, $v1, 0x9
/* 1E7B4 8001DBB4 1440FFFB */  bnez       $v0, .L8001DBA4
/* 1E7B8 8001DBB8 24840028 */   addiu     $a0, $a0, 0x28
/* 1E7BC 8001DBBC 12400009 */  beqz       $s2, .L8001DBE4
/* 1E7C0 8001DBC0 00000000 */   nop
/* 1E7C4 8001DBC4 44901000 */  mtc1       $s0, $f2
/* 1E7C8 8001DBC8 00000000 */  nop
/* 1E7CC 8001DBCC 468010A1 */  cvt.d.w    $f2, $f2
/* 1E7D0 8001DBD0 44920000 */  mtc1       $s2, $f0
/* 1E7D4 8001DBD4 00000000 */  nop
/* 1E7D8 8001DBD8 46800021 */  cvt.d.w    $f0, $f0
/* 1E7DC 8001DBDC 080076FB */  j          .L8001DBEC
/* 1E7E0 8001DBE0 46201083 */   div.d     $f2, $f2, $f0
.L8001DBE4:
/* 1E7E4 8001DBE4 3C01800D */  lui        $at, %hi(D_800D0C18)
/* 1E7E8 8001DBE8 D4220C18 */  ldc1       $f2, %lo(D_800D0C18)($at)
.L8001DBEC:
/* 1E7EC 8001DBEC 44071000 */  mfc1       $a3, $f2
/* 1E7F0 8001DBF0 44061800 */  mfc1       $a2, $f3
/* 1E7F4 8001DBF4 3C05800D */  lui        $a1, %hi(D_800CECE0)
/* 1E7F8 8001DBF8 24A5ECE0 */  addiu      $a1, $a1, %lo(D_800CECE0)
/* 1E7FC 8001DBFC 0C024940 */  jal        func_80092500
/* 1E800 8001DC00 02202021 */   addu      $a0, $s1, $zero
/* 1E804 8001DC04 08007791 */  j          .L8001DE44
/* 1E808 8001DC08 02A01021 */   addu      $v0, $s5, $zero
.L8001DC0C:
/* 1E80C 8001DC0C 00121080 */  sll        $v0, $s2, 2
/* 1E810 8001DC10 00521021 */  addu       $v0, $v0, $s2
/* 1E814 8001DC14 000210C0 */  sll        $v0, $v0, 3
/* 1E818 8001DC18 02828021 */  addu       $s0, $s4, $v0
/* 1E81C 8001DC1C 96060040 */  lhu        $a2, 0x40($s0)
/* 1E820 8001DC20 3C05800D */  lui        $a1, %hi(D_800CECF4)
/* 1E824 8001DC24 24A5ECF4 */  addiu      $a1, $a1, %lo(D_800CECF4)
/* 1E828 8001DC28 0C024940 */  jal        func_80092500
/* 1E82C 8001DC2C 02A02021 */   addu      $a0, $s5, $zero
/* 1E830 8001DC30 02A28821 */  addu       $s1, $s5, $v0
/* 1E834 8001DC34 96060042 */  lhu        $a2, 0x42($s0)
/* 1E838 8001DC38 3C05800D */  lui        $a1, %hi(D_800CED04)
/* 1E83C 8001DC3C 24A5ED04 */  addiu      $a1, $a1, %lo(D_800CED04)
/* 1E840 8001DC40 0C024940 */  jal        func_80092500
/* 1E844 8001DC44 02202021 */   addu      $a0, $s1, $zero
/* 1E848 8001DC48 02228821 */  addu       $s1, $s1, $v0
/* 1E84C 8001DC4C 96060044 */  lhu        $a2, 0x44($s0)
/* 1E850 8001DC50 3C05800D */  lui        $a1, %hi(D_800CED18)
/* 1E854 8001DC54 24A5ED18 */  addiu      $a1, $a1, %lo(D_800CED18)
/* 1E858 8001DC58 0C024940 */  jal        func_80092500
/* 1E85C 8001DC5C 02202021 */   addu      $a0, $s1, $zero
/* 1E860 8001DC60 02228821 */  addu       $s1, $s1, $v0
/* 1E864 8001DC64 3C05800D */  lui        $a1, %hi(D_800CED28)
/* 1E868 8001DC68 24A5ED28 */  addiu      $a1, $a1, %lo(D_800CED28)
/* 1E86C 8001DC6C 0C024940 */  jal        func_80092500
/* 1E870 8001DC70 02202021 */   addu      $a0, $s1, $zero
/* 1E874 8001DC74 8E03004C */  lw         $v1, 0x4C($s0)
/* 1E878 8001DC78 24130006 */  addiu      $s3, $zero, 0x6
/* 1E87C 8001DC7C 10600013 */  beqz       $v1, .L8001DCCC
/* 1E880 8001DC80 02228821 */   addu      $s1, $s1, $v0
/* 1E884 8001DC84 8E020050 */  lw         $v0, 0x50($s0)
/* 1E888 8001DC88 44822000 */  mtc1       $v0, $f4
/* 1E88C 8001DC8C 00000000 */  nop
/* 1E890 8001DC90 04410004 */  bgez       $v0, .L8001DCA4
/* 1E894 8001DC94 46802121 */   cvt.d.w   $f4, $f4
/* 1E898 8001DC98 3C01800D */  lui        $at, %hi(D_800D0C20)
/* 1E89C 8001DC9C D4200C20 */  ldc1       $f0, %lo(D_800D0C20)($at)
/* 1E8A0 8001DCA0 46202100 */  add.d      $f4, $f4, $f0
.L8001DCA4:
/* 1E8A4 8001DCA4 44831000 */  mtc1       $v1, $f2
/* 1E8A8 8001DCA8 00000000 */  nop
/* 1E8AC 8001DCAC 468010A1 */  cvt.d.w    $f2, $f2
/* 1E8B0 8001DCB0 04630009 */  bgezl      $v1, .L8001DCD8
/* 1E8B4 8001DCB4 46222003 */   div.d     $f0, $f4, $f2
/* 1E8B8 8001DCB8 3C01800D */  lui        $at, %hi(D_800D0C28)
/* 1E8BC 8001DCBC D4200C28 */  ldc1       $f0, %lo(D_800D0C28)($at)
/* 1E8C0 8001DCC0 46201080 */  add.d      $f2, $f2, $f0
/* 1E8C4 8001DCC4 08007735 */  j          .L8001DCD4
/* 1E8C8 8001DCC8 46222003 */   div.d     $f0, $f4, $f2
.L8001DCCC:
/* 1E8CC 8001DCCC 44800000 */  mtc1       $zero, $f0
/* 1E8D0 8001DCD0 44800800 */  mtc1       $zero, $f1
.L8001DCD4:
/* 1E8D4 8001DCD4 00000000 */  nop
.L8001DCD8:
/* 1E8D8 8001DCD8 44070000 */  mfc1       $a3, $f0
/* 1E8DC 8001DCDC 44060800 */  mfc1       $a2, $f1
/* 1E8E0 8001DCE0 3C05800D */  lui        $a1, %hi(D_800CED40)
/* 1E8E4 8001DCE4 24A5ED40 */  addiu      $a1, $a1, %lo(D_800CED40)
/* 1E8E8 8001DCE8 0C024940 */  jal        func_80092500
/* 1E8EC 8001DCEC 02202021 */   addu      $a0, $s1, $zero
/* 1E8F0 8001DCF0 00121880 */  sll        $v1, $s2, 2
/* 1E8F4 8001DCF4 00721821 */  addu       $v1, $v1, $s2
/* 1E8F8 8001DCF8 000318C0 */  sll        $v1, $v1, 3
/* 1E8FC 8001DCFC 02832021 */  addu       $a0, $s4, $v1
/* 1E900 8001DD00 8C830058 */  lw         $v1, 0x58($a0)
/* 1E904 8001DD04 10600013 */  beqz       $v1, .L8001DD54
/* 1E908 8001DD08 02228821 */   addu      $s1, $s1, $v0
/* 1E90C 8001DD0C 8C820050 */  lw         $v0, 0x50($a0)
/* 1E910 8001DD10 44822000 */  mtc1       $v0, $f4
/* 1E914 8001DD14 00000000 */  nop
/* 1E918 8001DD18 04410004 */  bgez       $v0, .L8001DD2C
/* 1E91C 8001DD1C 46802121 */   cvt.d.w   $f4, $f4
/* 1E920 8001DD20 3C01800D */  lui        $at, %hi(D_800D0C30)
/* 1E924 8001DD24 D4200C30 */  ldc1       $f0, %lo(D_800D0C30)($at)
/* 1E928 8001DD28 46202100 */  add.d      $f4, $f4, $f0
.L8001DD2C:
/* 1E92C 8001DD2C 44831000 */  mtc1       $v1, $f2
/* 1E930 8001DD30 00000000 */  nop
/* 1E934 8001DD34 468010A1 */  cvt.d.w    $f2, $f2
/* 1E938 8001DD38 04630009 */  bgezl      $v1, .L8001DD60
/* 1E93C 8001DD3C 46222003 */   div.d     $f0, $f4, $f2
/* 1E940 8001DD40 3C01800D */  lui        $at, %hi(D_800D0C38)
/* 1E944 8001DD44 D4200C38 */  ldc1       $f0, %lo(D_800D0C38)($at)
/* 1E948 8001DD48 46201080 */  add.d      $f2, $f2, $f0
/* 1E94C 8001DD4C 08007757 */  j          .L8001DD5C
/* 1E950 8001DD50 46222003 */   div.d     $f0, $f4, $f2
.L8001DD54:
/* 1E954 8001DD54 44800000 */  mtc1       $zero, $f0
/* 1E958 8001DD58 44800800 */  mtc1       $zero, $f1
.L8001DD5C:
/* 1E95C 8001DD5C 00000000 */  nop
.L8001DD60:
/* 1E960 8001DD60 44070000 */  mfc1       $a3, $f0
/* 1E964 8001DD64 44060800 */  mfc1       $a2, $f1
/* 1E968 8001DD68 3C05800D */  lui        $a1, %hi(D_800CED54)
/* 1E96C 8001DD6C 24A5ED54 */  addiu      $a1, $a1, %lo(D_800CED54)
/* 1E970 8001DD70 0C024940 */  jal        func_80092500
/* 1E974 8001DD74 02202021 */   addu      $a0, $s1, $zero
/* 1E978 8001DD78 02228821 */  addu       $s1, $s1, $v0
/* 1E97C 8001DD7C 2E420007 */  sltiu      $v0, $s2, 0x7
/* 1E980 8001DD80 1040002F */  beqz       $v0, L8001DE40
/* 1E984 8001DD84 00121080 */   sll       $v0, $s2, 2
/* 1E988 8001DD88 3C01800D */  lui        $at, %hi(jtbl_800D0C40_main)
/* 1E98C 8001DD8C 00220821 */  addu       $at, $at, $v0
/* 1E990 8001DD90 8C220C40 */  lw         $v0, %lo(jtbl_800D0C40_main)($at)
/* 1E994 8001DD94 00400008 */  jr         $v0
/* 1E998 8001DD98 00000000 */   nop
glabel L8001DD9C
/* 1E99C 8001DD9C 26730001 */  addiu      $s3, $s3, 0x1
glabel L8001DDA0
/* 1E9A0 8001DDA0 26730001 */  addiu      $s3, $s3, 0x1
glabel L8001DDA4
/* 1E9A4 8001DDA4 26730002 */  addiu      $s3, $s3, 0x2
glabel L8001DDA8
/* 1E9A8 8001DDA8 02202021 */  addu       $a0, $s1, $zero
/* 1E9AC 8001DDAC 00128080 */  sll        $s0, $s2, 2
/* 1E9B0 8001DDB0 02128021 */  addu       $s0, $s0, $s2
/* 1E9B4 8001DDB4 001080C0 */  sll        $s0, $s0, 3
/* 1E9B8 8001DDB8 02908021 */  addu       $s0, $s4, $s0
/* 1E9BC 8001DDBC 8E07005C */  lw         $a3, 0x5C($s0)
/* 1E9C0 8001DDC0 3C05800D */  lui        $a1, %hi(D_800CED68)
/* 1E9C4 8001DDC4 24A5ED68 */  addiu      $a1, $a1, %lo(D_800CED68)
/* 1E9C8 8001DDC8 0C024940 */  jal        func_80092500
/* 1E9CC 8001DDCC 02603021 */   addu      $a2, $s3, $zero
/* 1E9D0 8001DDD0 02222021 */  addu       $a0, $s1, $v0
/* 1E9D4 8001DDD4 8E070060 */  lw         $a3, 0x60($s0)
/* 1E9D8 8001DDD8 3C05800D */  lui        $a1, %hi(D_800CED80)
/* 1E9DC 8001DDDC 24A5ED80 */  addiu      $a1, $a1, %lo(D_800CED80)
/* 1E9E0 8001DDE0 0C024940 */  jal        func_80092500
/* 1E9E4 8001DDE4 02603021 */   addu      $a2, $s3, $zero
/* 1E9E8 8001DDE8 08007791 */  j          .L8001DE44
/* 1E9EC 8001DDEC 02A01021 */   addu      $v0, $s5, $zero
glabel L8001DDF0
/* 1E9F0 8001DDF0 3C05800D */  lui        $a1, %hi(D_800CED94)
/* 1E9F4 8001DDF4 24A5ED94 */  addiu      $a1, $a1, %lo(D_800CED94)
/* 1E9F8 8001DDF8 0C024940 */  jal        func_80092500
/* 1E9FC 8001DDFC 02202021 */   addu      $a0, $s1, $zero
/* 1EA00 8001DE00 02228821 */  addu       $s1, $s1, $v0
/* 1EA04 8001DE04 00128080 */  sll        $s0, $s2, 2
/* 1EA08 8001DE08 02128021 */  addu       $s0, $s0, $s2
/* 1EA0C 8001DE0C 001080C0 */  sll        $s0, $s0, 3
/* 1EA10 8001DE10 02908021 */  addu       $s0, $s4, $s0
/* 1EA14 8001DE14 8E060050 */  lw         $a2, 0x50($s0)
/* 1EA18 8001DE18 3C05800D */  lui        $a1, %hi(D_800CEDA4)
/* 1EA1C 8001DE1C 24A5EDA4 */  addiu      $a1, $a1, %lo(D_800CEDA4)
/* 1EA20 8001DE20 0C024940 */  jal        func_80092500
/* 1EA24 8001DE24 02202021 */   addu      $a0, $s1, $zero
/* 1EA28 8001DE28 8E06004C */  lw         $a2, 0x4C($s0)
/* 1EA2C 8001DE2C 02222021 */  addu       $a0, $s1, $v0
/* 1EA30 8001DE30 3C05800D */  lui        $a1, %hi(D_800CEDB4)
/* 1EA34 8001DE34 24A5EDB4 */  addiu      $a1, $a1, %lo(D_800CEDB4)
.L8001DE38:
/* 1EA38 8001DE38 0C024940 */  jal        func_80092500
/* 1EA3C 8001DE3C 00000000 */   nop
glabel L8001DE40
/* 1EA40 8001DE40 02A01021 */  addu       $v0, $s5, $zero
.L8001DE44:
/* 1EA44 8001DE44 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1EA48 8001DE48 8FB50024 */  lw         $s5, 0x24($sp)
/* 1EA4C 8001DE4C 8FB40020 */  lw         $s4, 0x20($sp)
/* 1EA50 8001DE50 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1EA54 8001DE54 8FB20018 */  lw         $s2, 0x18($sp)
/* 1EA58 8001DE58 8FB10014 */  lw         $s1, 0x14($sp)
/* 1EA5C 8001DE5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1EA60 8001DE60 03E00008 */  jr         $ra
/* 1EA64 8001DE64 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001DE68
/* 1EA68 8001DE68 3C04802A */  lui        $a0, %hi(D_802A1580)
/* 1EA6C 8001DE6C 8C841580 */  lw         $a0, %lo(D_802A1580)($a0)
/* 1EA70 8001DE70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1EA74 8001DE74 AFB00018 */  sw         $s0, 0x18($sp)
/* 1EA78 8001DE78 3C10800B */  lui        $s0, %hi(D_800B5940)
/* 1EA7C 8001DE7C 8E105940 */  lw         $s0, %lo(D_800B5940)($s0)
/* 1EA80 8001DE80 3C05803F */  lui        $a1, %hi(D_803ED3D0)
/* 1EA84 8001DE84 90A5D3D0 */  lbu        $a1, %lo(D_803ED3D0)($a1)
/* 1EA88 8001DE88 AFB20020 */  sw         $s2, 0x20($sp)
/* 1EA8C 8001DE8C 3C12800B */  lui        $s2, %hi(D_800B5928)
/* 1EA90 8001DE90 26525928 */  addiu      $s2, $s2, %lo(D_800B5928)
/* 1EA94 8001DE94 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1EA98 8001DE98 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1EA9C 8001DE9C 3C06803F */  lui        $a2, %hi(D_803ED3D1)
/* 1EAA0 8001DEA0 00C43021 */  addu       $a2, $a2, $a0
/* 1EAA4 8001DEA4 90C6D3D1 */  lbu        $a2, %lo(D_803ED3D1)($a2)
/* 1EAA8 8001DEA8 3C03803F */  lui        $v1, %hi(D_803ED3F0)
/* 1EAAC 8001DEAC 2463D3F0 */  addiu      $v1, $v1, %lo(D_803ED3F0)
/* 1EAB0 8001DEB0 0085202A */  slt        $a0, $a0, $a1
/* 1EAB4 8001DEB4 00061140 */  sll        $v0, $a2, 5
/* 1EAB8 8001DEB8 00461023 */  subu       $v0, $v0, $a2
/* 1EABC 8001DEBC 00021100 */  sll        $v0, $v0, 4
/* 1EAC0 8001DEC0 10800016 */  beqz       $a0, .L8001DF1C
/* 1EAC4 8001DEC4 00438821 */   addu      $s1, $v0, $v1
/* 1EAC8 8001DEC8 2CC20008 */  sltiu      $v0, $a2, 0x8
/* 1EACC 8001DECC 10400013 */  beqz       $v0, .L8001DF1C
/* 1EAD0 8001DED0 00000000 */   nop
/* 1EAD4 8001DED4 822201DE */  lb         $v0, 0x1DE($s1)
/* 1EAD8 8001DED8 10400010 */  beqz       $v0, .L8001DF1C
/* 1EADC 8001DEDC 3C03E0E0 */   lui       $v1, (0xE0E0E0FF >> 16)
/* 1EAE0 8001DEE0 3463E0FF */  ori        $v1, $v1, (0xE0E0E0FF & 0xFFFF)
/* 1EAE4 8001DEE4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1EAE8 8001DEE8 3C01800B */  lui        $at, %hi(D_800B5858)
/* 1EAEC 8001DEEC AC225858 */  sw         $v0, %lo(D_800B5858)($at)
/* 1EAF0 8001DEF0 3C01800B */  lui        $at, %hi(D_800B5848)
/* 1EAF4 8001DEF4 AC235848 */  sw         $v1, %lo(D_800B5848)($at)
/* 1EAF8 8001DEF8 3C01800B */  lui        $at, %hi(D_800B589C)
/* 1EAFC 8001DEFC AC22589C */  sw         $v0, %lo(D_800B589C)($at)
/* 1EB00 8001DF00 3C01800B */  lui        $at, %hi(D_800B588C)
/* 1EB04 8001DF04 AC23588C */  sw         $v1, %lo(D_800B588C)($at)
/* 1EB08 8001DF08 3C01800B */  lui        $at, %hi(D_800B58E0)
/* 1EB0C 8001DF0C AC2258E0 */  sw         $v0, %lo(D_800B58E0)($at)
/* 1EB10 8001DF10 3C01800B */  lui        $at, %hi(D_800B58D0)
/* 1EB14 8001DF14 080077D3 */  j          .L8001DF4C
/* 1EB18 8001DF18 AC2358D0 */   sw        $v1, %lo(D_800B58D0)($at)
.L8001DF1C:
/* 1EB1C 8001DF1C 3C01800B */  lui        $at, %hi(D_800B5848)
/* 1EB20 8001DF20 AC205848 */  sw         $zero, %lo(D_800B5848)($at)
/* 1EB24 8001DF24 3C01800B */  lui        $at, %hi(D_800B5858)
/* 1EB28 8001DF28 AC205858 */  sw         $zero, %lo(D_800B5858)($at)
/* 1EB2C 8001DF2C 3C01800B */  lui        $at, %hi(D_800B588C)
/* 1EB30 8001DF30 AC20588C */  sw         $zero, %lo(D_800B588C)($at)
/* 1EB34 8001DF34 3C01800B */  lui        $at, %hi(D_800B589C)
/* 1EB38 8001DF38 AC20589C */  sw         $zero, %lo(D_800B589C)($at)
/* 1EB3C 8001DF3C 3C01800B */  lui        $at, %hi(D_800B58D0)
/* 1EB40 8001DF40 AC2058D0 */  sw         $zero, %lo(D_800B58D0)($at)
/* 1EB44 8001DF44 3C01800B */  lui        $at, %hi(D_800B58E0)
/* 1EB48 8001DF48 AC2058E0 */  sw         $zero, %lo(D_800B58E0)($at)
.L8001DF4C:
/* 1EB4C 8001DF4C 12400088 */  beqz       $s2, .L8001E170
/* 1EB50 8001DF50 00000000 */   nop
/* 1EB54 8001DF54 0C0042AA */  jal        func_80010AA8
/* 1EB58 8001DF58 00000000 */   nop
/* 1EB5C 8001DF5C 14520084 */  bne        $v0, $s2, .L8001E170
/* 1EB60 8001DF60 00000000 */   nop
/* 1EB64 8001DF64 3C02800B */  lui        $v0, %hi(D_800B5574)
/* 1EB68 8001DF68 24425574 */  addiu      $v0, $v0, %lo(D_800B5574)
/* 1EB6C 8001DF6C 16020019 */  bne        $s0, $v0, .L8001DFD4
/* 1EB70 8001DF70 00000000 */   nop
/* 1EB74 8001DF74 3C02802A */  lui        $v0, %hi(D_802A1580)
/* 1EB78 8001DF78 8C421580 */  lw         $v0, %lo(D_802A1580)($v0)
/* 1EB7C 8001DF7C 10400004 */  beqz       $v0, .L8001DF90
/* 1EB80 8001DF80 00000000 */   nop
/* 1EB84 8001DF84 3C02800D */  lui        $v0, %hi(D_800CEC08)
/* 1EB88 8001DF88 080077E6 */  j          .L8001DF98
/* 1EB8C 8001DF8C 2442EC08 */   addiu     $v0, $v0, %lo(D_800CEC08)
.L8001DF90:
/* 1EB90 8001DF90 3C02800D */  lui        $v0, %hi(D_800CEBB4)
/* 1EB94 8001DF94 2442EBB4 */  addiu      $v0, $v0, %lo(D_800CEBB4)
.L8001DF98:
/* 1EB98 8001DF98 3C01800B */  lui        $at, %hi(D_800B57FC)
/* 1EB9C 8001DF9C AC2257FC */  sw         $v0, %lo(D_800B57FC)($at)
/* 1EBA0 8001DFA0 3C01800B */  lui        $at, %hi(D_800B5848)
/* 1EBA4 8001DFA4 AC205848 */  sw         $zero, %lo(D_800B5848)($at)
/* 1EBA8 8001DFA8 3C01800B */  lui        $at, %hi(D_800B5858)
/* 1EBAC 8001DFAC AC205858 */  sw         $zero, %lo(D_800B5858)($at)
/* 1EBB0 8001DFB0 3C01800B */  lui        $at, %hi(D_800B588C)
/* 1EBB4 8001DFB4 AC20588C */  sw         $zero, %lo(D_800B588C)($at)
/* 1EBB8 8001DFB8 3C01800B */  lui        $at, %hi(D_800B589C)
/* 1EBBC 8001DFBC AC20589C */  sw         $zero, %lo(D_800B589C)($at)
/* 1EBC0 8001DFC0 3C01800B */  lui        $at, %hi(D_800B58D0)
/* 1EBC4 8001DFC4 AC2058D0 */  sw         $zero, %lo(D_800B58D0)($at)
/* 1EBC8 8001DFC8 3C01800B */  lui        $at, %hi(D_800B58E0)
/* 1EBCC 8001DFCC 0800785E */  j          .L8001E178
/* 1EBD0 8001DFD0 AC2058E0 */   sw        $zero, %lo(D_800B58E0)($at)
.L8001DFD4:
/* 1EBD4 8001DFD4 3C02800B */  lui        $v0, %hi(D_800B581C)
/* 1EBD8 8001DFD8 2442581C */  addiu      $v0, $v0, %lo(D_800B581C)
/* 1EBDC 8001DFDC 16020004 */  bne        $s0, $v0, .L8001DFF0
/* 1EBE0 8001DFE0 02202021 */   addu      $a0, $s1, $zero
/* 1EBE4 8001DFE4 24050009 */  addiu      $a1, $zero, 0x9
/* 1EBE8 8001DFE8 08007808 */  j          .L8001E020
/* 1EBEC 8001DFEC 00003021 */   addu      $a2, $zero, $zero
.L8001DFF0:
/* 1EBF0 8001DFF0 3C02800B */  lui        $v0, %hi(D_800B5860)
/* 1EBF4 8001DFF4 24425860 */  addiu      $v0, $v0, %lo(D_800B5860)
/* 1EBF8 8001DFF8 16020003 */  bne        $s0, $v0, .L8001E008
/* 1EBFC 8001DFFC 24050009 */   addiu     $a1, $zero, 0x9
/* 1EC00 8001E000 08007808 */  j          .L8001E020
/* 1EC04 8001E004 24060001 */   addiu     $a2, $zero, 0x1
.L8001E008:
/* 1EC08 8001E008 3C02800B */  lui        $v0, %hi(D_800B58A4)
/* 1EC0C 8001E00C 244258A4 */  addiu      $v0, $v0, %lo(D_800B58A4)
/* 1EC10 8001E010 16020008 */  bne        $s0, $v0, .L8001E034
/* 1EC14 8001E014 02202021 */   addu      $a0, $s1, $zero
/* 1EC18 8001E018 24050009 */  addiu      $a1, $zero, 0x9
/* 1EC1C 8001E01C 24060002 */  addiu      $a2, $zero, 0x2
.L8001E020:
/* 1EC20 8001E020 0C007678 */  jal        func_8001D9E0
/* 1EC24 8001E024 00000000 */   nop
/* 1EC28 8001E028 3C01800B */  lui        $at, %hi(D_800B57FC)
/* 1EC2C 8001E02C 0800785E */  j          .L8001E178
/* 1EC30 8001E030 AC2257FC */   sw        $v0, %lo(D_800B57FC)($at)
.L8001E034:
/* 1EC34 8001E034 3C02800B */  lui        $v0, %hi(D_800B55B8)
/* 1EC38 8001E038 244255B8 */  addiu      $v0, $v0, %lo(D_800B55B8)
/* 1EC3C 8001E03C 1202001D */  beq        $s0, $v0, .L8001E0B4
/* 1EC40 8001E040 00000000 */   nop
/* 1EC44 8001E044 3C02800B */  lui        $v0, %hi(D_800B55FC)
/* 1EC48 8001E048 244255FC */  addiu      $v0, $v0, %lo(D_800B55FC)
/* 1EC4C 8001E04C 12020019 */  beq        $s0, $v0, .L8001E0B4
/* 1EC50 8001E050 00000000 */   nop
/* 1EC54 8001E054 3C02800B */  lui        $v0, %hi(D_800B5640)
/* 1EC58 8001E058 24425640 */  addiu      $v0, $v0, %lo(D_800B5640)
/* 1EC5C 8001E05C 12020015 */  beq        $s0, $v0, .L8001E0B4
/* 1EC60 8001E060 00000000 */   nop
/* 1EC64 8001E064 3C02800B */  lui        $v0, %hi(D_800B5684)
/* 1EC68 8001E068 24425684 */  addiu      $v0, $v0, %lo(D_800B5684)
/* 1EC6C 8001E06C 12020011 */  beq        $s0, $v0, .L8001E0B4
/* 1EC70 8001E070 00000000 */   nop
/* 1EC74 8001E074 3C02800B */  lui        $v0, %hi(D_800B56C8)
/* 1EC78 8001E078 244256C8 */  addiu      $v0, $v0, %lo(D_800B56C8)
/* 1EC7C 8001E07C 1202000D */  beq        $s0, $v0, .L8001E0B4
/* 1EC80 8001E080 00000000 */   nop
/* 1EC84 8001E084 3C02800B */  lui        $v0, %hi(D_800B570C)
/* 1EC88 8001E088 2442570C */  addiu      $v0, $v0, %lo(D_800B570C)
/* 1EC8C 8001E08C 12020009 */  beq        $s0, $v0, .L8001E0B4
/* 1EC90 8001E090 00000000 */   nop
/* 1EC94 8001E094 3C02800B */  lui        $v0, %hi(D_800B5750)
/* 1EC98 8001E098 24425750 */  addiu      $v0, $v0, %lo(D_800B5750)
/* 1EC9C 8001E09C 12020005 */  beq        $s0, $v0, .L8001E0B4
/* 1ECA0 8001E0A0 00000000 */   nop
/* 1ECA4 8001E0A4 3C02800B */  lui        $v0, %hi(D_800B5794)
/* 1ECA8 8001E0A8 24425794 */  addiu      $v0, $v0, %lo(D_800B5794)
/* 1ECAC 8001E0AC 16020032 */  bne        $s0, $v0, .L8001E178
/* 1ECB0 8001E0B0 00000000 */   nop
.L8001E0B4:
/* 1ECB4 8001E0B4 8E030040 */  lw         $v1, 0x40($s0)
/* 1ECB8 8001E0B8 00031140 */  sll        $v0, $v1, 5
/* 1ECBC 8001E0BC 00431023 */  subu       $v0, $v0, $v1
/* 1ECC0 8001E0C0 00021100 */  sll        $v0, $v0, 4
/* 1ECC4 8001E0C4 3C03803F */  lui        $v1, %hi(D_803ED3F0)
/* 1ECC8 8001E0C8 2463D3F0 */  addiu      $v1, $v1, %lo(D_803ED3F0)
/* 1ECCC 8001E0CC 00432021 */  addu       $a0, $v0, $v1
/* 1ECD0 8001E0D0 808201DE */  lb         $v0, 0x1DE($a0)
/* 1ECD4 8001E0D4 14400012 */  bnez       $v0, .L8001E120
/* 1ECD8 8001E0D8 24050009 */   addiu     $a1, $zero, 0x9
/* 1ECDC 8001E0DC 3C02800D */  lui        $v0, %hi(D_800CEC7C)
/* 1ECE0 8001E0E0 2442EC7C */  addiu      $v0, $v0, %lo(D_800CEC7C)
/* 1ECE4 8001E0E4 3C01800B */  lui        $at, %hi(D_800B5848)
/* 1ECE8 8001E0E8 AC205848 */  sw         $zero, %lo(D_800B5848)($at)
/* 1ECEC 8001E0EC 3C01800B */  lui        $at, %hi(D_800B5858)
/* 1ECF0 8001E0F0 AC205858 */  sw         $zero, %lo(D_800B5858)($at)
/* 1ECF4 8001E0F4 3C01800B */  lui        $at, %hi(D_800B588C)
/* 1ECF8 8001E0F8 AC20588C */  sw         $zero, %lo(D_800B588C)($at)
/* 1ECFC 8001E0FC 3C01800B */  lui        $at, %hi(D_800B589C)
/* 1ED00 8001E100 AC20589C */  sw         $zero, %lo(D_800B589C)($at)
/* 1ED04 8001E104 3C01800B */  lui        $at, %hi(D_800B58D0)
/* 1ED08 8001E108 AC2058D0 */  sw         $zero, %lo(D_800B58D0)($at)
/* 1ED0C 8001E10C 3C01800B */  lui        $at, %hi(D_800B58E0)
/* 1ED10 8001E110 AC2058E0 */  sw         $zero, %lo(D_800B58E0)($at)
/* 1ED14 8001E114 3C01800B */  lui        $at, %hi(D_800B57FC)
/* 1ED18 8001E118 0800785E */  j          .L8001E178
/* 1ED1C 8001E11C AC2257FC */   sw        $v0, %lo(D_800B57FC)($at)
.L8001E120:
/* 1ED20 8001E120 0C007678 */  jal        func_8001D9E0
/* 1ED24 8001E124 24060003 */   addiu     $a2, $zero, 0x3
/* 1ED28 8001E128 3C03E0E0 */  lui        $v1, (0xE0E0E0FF >> 16)
/* 1ED2C 8001E12C 3463E0FF */  ori        $v1, $v1, (0xE0E0E0FF & 0xFFFF)
/* 1ED30 8001E130 3C01800B */  lui        $at, %hi(D_800B57FC)
/* 1ED34 8001E134 AC2257FC */  sw         $v0, %lo(D_800B57FC)($at)
/* 1ED38 8001E138 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1ED3C 8001E13C 3C01800B */  lui        $at, %hi(D_800B5858)
/* 1ED40 8001E140 AC225858 */  sw         $v0, %lo(D_800B5858)($at)
/* 1ED44 8001E144 3C01800B */  lui        $at, %hi(D_800B5848)
/* 1ED48 8001E148 AC235848 */  sw         $v1, %lo(D_800B5848)($at)
/* 1ED4C 8001E14C 3C01800B */  lui        $at, %hi(D_800B589C)
/* 1ED50 8001E150 AC22589C */  sw         $v0, %lo(D_800B589C)($at)
/* 1ED54 8001E154 3C01800B */  lui        $at, %hi(D_800B588C)
/* 1ED58 8001E158 AC23588C */  sw         $v1, %lo(D_800B588C)($at)
/* 1ED5C 8001E15C 3C01800B */  lui        $at, %hi(D_800B58E0)
/* 1ED60 8001E160 AC2258E0 */  sw         $v0, %lo(D_800B58E0)($at)
/* 1ED64 8001E164 3C01800B */  lui        $at, %hi(D_800B58D0)
/* 1ED68 8001E168 0800785E */  j          .L8001E178
/* 1ED6C 8001E16C AC2358D0 */   sw        $v1, %lo(D_800B58D0)($at)
.L8001E170:
/* 1ED70 8001E170 3C01800B */  lui        $at, %hi(D_800B57FC)
/* 1ED74 8001E174 AC2057FC */  sw         $zero, %lo(D_800B57FC)($at)
.L8001E178:
/* 1ED78 8001E178 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1ED7C 8001E17C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1ED80 8001E180 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1ED84 8001E184 8FB00018 */  lw         $s0, 0x18($sp)
/* 1ED88 8001E188 03E00008 */  jr         $ra
/* 1ED8C 8001E18C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001E190
/* 1ED90 8001E190 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1ED94 8001E194 AFB00010 */  sw         $s0, 0x10($sp)
/* 1ED98 8001E198 00808021 */  addu       $s0, $a0, $zero
/* 1ED9C 8001E19C AFB10014 */  sw         $s1, 0x14($sp)
/* 1EDA0 8001E1A0 00A08821 */  addu       $s1, $a1, $zero
/* 1EDA4 8001E1A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1EDA8 8001E1A8 00C09021 */  addu       $s2, $a2, $zero
/* 1EDAC 8001E1AC AFB40020 */  sw         $s4, 0x20($sp)
/* 1EDB0 8001E1B0 00E0A021 */  addu       $s4, $a3, $zero
/* 1EDB4 8001E1B4 24020086 */  addiu      $v0, $zero, 0x86
/* 1EDB8 8001E1B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1EDBC 8001E1BC 12220006 */  beq        $s1, $v0, .L8001E1D8
/* 1EDC0 8001E1C0 AFB3001C */   sw        $s3, 0x1C($sp)
/* 1EDC4 8001E1C4 2402008D */  addiu      $v0, $zero, 0x8D
/* 1EDC8 8001E1C8 1222002D */  beq        $s1, $v0, .L8001E280
/* 1EDCC 8001E1CC 32428000 */   andi      $v0, $s2, 0x8000
/* 1EDD0 8001E1D0 080078B3 */  j          .L8001E2CC
/* 1EDD4 8001E1D4 02002021 */   addu      $a0, $s0, $zero
.L8001E1D8:
/* 1EDD8 8001E1D8 8E02003C */  lw         $v0, 0x3C($s0)
/* 1EDDC 8001E1DC 14400003 */  bnez       $v0, .L8001E1EC
/* 1EDE0 8001E1E0 8E13002C */   lw        $s3, 0x2C($s0)
/* 1EDE4 8001E1E4 1260001F */  beqz       $s3, .L8001E264
/* 1EDE8 8001E1E8 02002021 */   addu      $a0, $s0, $zero
.L8001E1EC:
/* 1EDEC 8001E1EC 3C04803F */  lui        $a0, %hi(D_803ED3D0)
/* 1EDF0 8001E1F0 2484D3D0 */  addiu      $a0, $a0, %lo(D_803ED3D0)
/* 1EDF4 8001E1F4 90820000 */  lbu        $v0, 0x0($a0)
/* 1EDF8 8001E1F8 3C03802A */  lui        $v1, %hi(D_802A1580)
/* 1EDFC 8001E1FC 8C631580 */  lw         $v1, %lo(D_802A1580)($v1)
/* 1EE00 8001E200 0062102A */  slt        $v0, $v1, $v0
/* 1EE04 8001E204 10400016 */  beqz       $v0, .L8001E260
/* 1EE08 8001E208 00831021 */   addu      $v0, $a0, $v1
/* 1EE0C 8001E20C 90430001 */  lbu        $v1, 0x1($v0)
/* 1EE10 8001E210 24020008 */  addiu      $v0, $zero, 0x8
/* 1EE14 8001E214 54620013 */  bnel       $v1, $v0, .L8001E264
/* 1EE18 8001E218 02002021 */   addu      $a0, $s0, $zero
/* 1EE1C 8001E21C 8E02000C */  lw         $v0, 0xC($s0)
/* 1EE20 8001E220 1040000E */  beqz       $v0, .L8001E25C
/* 1EE24 8001E224 2403FFFF */   addiu     $v1, $zero, -0x1
/* 1EE28 8001E228 0C0042AA */  jal        func_80010AA8
/* 1EE2C 8001E22C 00000000 */   nop
/* 1EE30 8001E230 8E03000C */  lw         $v1, 0xC($s0)
/* 1EE34 8001E234 54430009 */  bnel       $v0, $v1, .L8001E25C
/* 1EE38 8001E238 2403FFFF */   addiu     $v1, $zero, -0x1
/* 1EE3C 8001E23C 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 1EE40 8001E240 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 1EE44 8001E244 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 1EE48 8001E248 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 1EE4C 8001E24C 00021E00 */  sll        $v1, $v0, 24
/* 1EE50 8001E250 00021200 */  sll        $v0, $v0, 8
/* 1EE54 8001E254 00441025 */  or         $v0, $v0, $a0
/* 1EE58 8001E258 00621825 */  or         $v1, $v1, $v0
.L8001E25C:
/* 1EE5C 8001E25C AE03002C */  sw         $v1, 0x2C($s0)
.L8001E260:
/* 1EE60 8001E260 02002021 */  addu       $a0, $s0, $zero
.L8001E264:
/* 1EE64 8001E264 02202821 */  addu       $a1, $s1, $zero
/* 1EE68 8001E268 02403021 */  addu       $a2, $s2, $zero
/* 1EE6C 8001E26C 0C00487F */  jal        func_800121FC
/* 1EE70 8001E270 02803821 */   addu      $a3, $s4, $zero
/* 1EE74 8001E274 AE13002C */  sw         $s3, 0x2C($s0)
/* 1EE78 8001E278 080078B7 */  j          .L8001E2DC
/* 1EE7C 8001E27C 00001021 */   addu      $v0, $zero, $zero
.L8001E280:
/* 1EE80 8001E280 10400012 */  beqz       $v0, .L8001E2CC
/* 1EE84 8001E284 02002021 */   addu      $a0, $s0, $zero
/* 1EE88 8001E288 3C04802A */  lui        $a0, %hi(D_802A1580)
/* 1EE8C 8001E28C 8C841580 */  lw         $a0, %lo(D_802A1580)($a0)
/* 1EE90 8001E290 3C02803F */  lui        $v0, %hi(D_803ED3D0)
/* 1EE94 8001E294 2442D3D0 */  addiu      $v0, $v0, %lo(D_803ED3D0)
/* 1EE98 8001E298 24830001 */  addiu      $v1, $a0, 0x1
/* 1EE9C 8001E29C A0430000 */  sb         $v1, 0x0($v0)
/* 1EEA0 8001E2A0 24420001 */  addiu      $v0, $v0, 0x1
/* 1EEA4 8001E2A4 00822021 */  addu       $a0, $a0, $v0
/* 1EEA8 8001E2A8 24020008 */  addiu      $v0, $zero, 0x8
/* 1EEAC 8001E2AC A0820000 */  sb         $v0, 0x0($a0)
/* 1EEB0 8001E2B0 3C05802A */  lui        $a1, %hi(D_802A1580)
/* 1EEB4 8001E2B4 8CA51580 */  lw         $a1, %lo(D_802A1580)($a1)
/* 1EEB8 8001E2B8 8E04000C */  lw         $a0, 0xC($s0)
/* 1EEBC 8001E2BC 0C004204 */  jal        func_80010810
/* 1EEC0 8001E2C0 24A50001 */   addiu     $a1, $a1, 0x1
/* 1EEC4 8001E2C4 080078B7 */  j          .L8001E2DC
/* 1EEC8 8001E2C8 24020001 */   addiu     $v0, $zero, 0x1
.L8001E2CC:
/* 1EECC 8001E2CC 02202821 */  addu       $a1, $s1, $zero
/* 1EED0 8001E2D0 02403021 */  addu       $a2, $s2, $zero
/* 1EED4 8001E2D4 0C00487F */  jal        func_800121FC
/* 1EED8 8001E2D8 02803821 */   addu      $a3, $s4, $zero
.L8001E2DC:
/* 1EEDC 8001E2DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1EEE0 8001E2E0 8FB40020 */  lw         $s4, 0x20($sp)
/* 1EEE4 8001E2E4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1EEE8 8001E2E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1EEEC 8001E2EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1EEF0 8001E2F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1EEF4 8001E2F4 03E00008 */  jr         $ra
/* 1EEF8 8001E2F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001E2FC
/* 1EEFC 8001E2FC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1EF00 8001E300 AFB00010 */  sw         $s0, 0x10($sp)
/* 1EF04 8001E304 00808021 */  addu       $s0, $a0, $zero
/* 1EF08 8001E308 AFB10014 */  sw         $s1, 0x14($sp)
/* 1EF0C 8001E30C 00A08821 */  addu       $s1, $a1, $zero
/* 1EF10 8001E310 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1EF14 8001E314 00C09821 */  addu       $s3, $a2, $zero
/* 1EF18 8001E318 AFB40020 */  sw         $s4, 0x20($sp)
/* 1EF1C 8001E31C 00E0A021 */  addu       $s4, $a3, $zero
/* 1EF20 8001E320 24020086 */  addiu      $v0, $zero, 0x86
/* 1EF24 8001E324 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1EF28 8001E328 AFB50024 */  sw         $s5, 0x24($sp)
/* 1EF2C 8001E32C 1222000D */  beq        $s1, $v0, .L8001E364
/* 1EF30 8001E330 AFB20018 */   sw        $s2, 0x18($sp)
/* 1EF34 8001E334 2E220087 */  sltiu      $v0, $s1, 0x87
/* 1EF38 8001E338 10400005 */  beqz       $v0, .L8001E350
/* 1EF3C 8001E33C 24020085 */   addiu     $v0, $zero, 0x85
/* 1EF40 8001E340 12220042 */  beq        $s1, $v0, .L8001E44C
/* 1EF44 8001E344 02002021 */   addu      $a0, $s0, $zero
/* 1EF48 8001E348 0800794E */  j          .L8001E538
/* 1EF4C 8001E34C 00000000 */   nop
.L8001E350:
/* 1EF50 8001E350 2402008D */  addiu      $v0, $zero, 0x8D
/* 1EF54 8001E354 1222004B */  beq        $s1, $v0, .L8001E484
/* 1EF58 8001E358 32628000 */   andi      $v0, $s3, 0x8000
/* 1EF5C 8001E35C 0800794E */  j          .L8001E538
/* 1EF60 8001E360 02002021 */   addu      $a0, $s0, $zero
.L8001E364:
/* 1EF64 8001E364 8E120024 */  lw         $s2, 0x24($s0)
/* 1EF68 8001E368 82420000 */  lb         $v0, 0x0($s2)
/* 1EF6C 8001E36C 14400004 */  bnez       $v0, .L8001E380
/* 1EF70 8001E370 8E15002C */   lw        $s5, 0x2C($s0)
/* 1EF74 8001E374 3C02800D */  lui        $v0, %hi(D_800CEBA4)
/* 1EF78 8001E378 2442EBA4 */  addiu      $v0, $v0, %lo(D_800CEBA4)
/* 1EF7C 8001E37C AE020024 */  sw         $v0, 0x24($s0)
.L8001E380:
/* 1EF80 8001E380 3C02802A */  lui        $v0, %hi(D_802A1580)
/* 1EF84 8001E384 8C421580 */  lw         $v0, %lo(D_802A1580)($v0)
/* 1EF88 8001E388 10400008 */  beqz       $v0, .L8001E3AC
/* 1EF8C 8001E38C 00000000 */   nop
/* 1EF90 8001E390 3C03803F */  lui        $v1, %hi(D_803ED3D1)
/* 1EF94 8001E394 9063D3D1 */  lbu        $v1, %lo(D_803ED3D1)($v1)
/* 1EF98 8001E398 8E020040 */  lw         $v0, 0x40($s0)
/* 1EF9C 8001E39C 14620003 */  bne        $v1, $v0, .L8001E3AC
/* 1EFA0 8001E3A0 3402FFFF */   ori       $v0, $zero, 0xFFFF
/* 1EFA4 8001E3A4 0800790A */  j          .L8001E428
/* 1EFA8 8001E3A8 AE02002C */   sw        $v0, 0x2C($s0)
.L8001E3AC:
/* 1EFAC 8001E3AC 8E02003C */  lw         $v0, 0x3C($s0)
/* 1EFB0 8001E3B0 14400004 */  bnez       $v0, .L8001E3C4
/* 1EFB4 8001E3B4 00000000 */   nop
/* 1EFB8 8001E3B8 8E02002C */  lw         $v0, 0x2C($s0)
/* 1EFBC 8001E3BC 1040001B */  beqz       $v0, .L8001E42C
/* 1EFC0 8001E3C0 02002021 */   addu      $a0, $s0, $zero
.L8001E3C4:
/* 1EFC4 8001E3C4 3C02802A */  lui        $v0, %hi(D_802A1580)
/* 1EFC8 8001E3C8 8C421580 */  lw         $v0, %lo(D_802A1580)($v0)
/* 1EFCC 8001E3CC 3C03803F */  lui        $v1, %hi(D_803ED3D1)
/* 1EFD0 8001E3D0 00621821 */  addu       $v1, $v1, $v0
/* 1EFD4 8001E3D4 9063D3D1 */  lbu        $v1, %lo(D_803ED3D1)($v1)
/* 1EFD8 8001E3D8 8E020040 */  lw         $v0, 0x40($s0)
/* 1EFDC 8001E3DC 14620013 */  bne        $v1, $v0, .L8001E42C
/* 1EFE0 8001E3E0 02002021 */   addu      $a0, $s0, $zero
/* 1EFE4 8001E3E4 8E02000C */  lw         $v0, 0xC($s0)
/* 1EFE8 8001E3E8 1040000E */  beqz       $v0, .L8001E424
/* 1EFEC 8001E3EC 2403FFFF */   addiu     $v1, $zero, -0x1
/* 1EFF0 8001E3F0 0C0042AA */  jal        func_80010AA8
/* 1EFF4 8001E3F4 00000000 */   nop
/* 1EFF8 8001E3F8 8E03000C */  lw         $v1, 0xC($s0)
/* 1EFFC 8001E3FC 54430009 */  bnel       $v0, $v1, .L8001E424
/* 1F000 8001E400 2403FFFF */   addiu     $v1, $zero, -0x1
/* 1F004 8001E404 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 1F008 8001E408 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 1F00C 8001E40C 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 1F010 8001E410 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 1F014 8001E414 00021E00 */  sll        $v1, $v0, 24
/* 1F018 8001E418 00021200 */  sll        $v0, $v0, 8
/* 1F01C 8001E41C 00441025 */  or         $v0, $v0, $a0
/* 1F020 8001E420 00621825 */  or         $v1, $v1, $v0
.L8001E424:
/* 1F024 8001E424 AE03002C */  sw         $v1, 0x2C($s0)
.L8001E428:
/* 1F028 8001E428 02002021 */  addu       $a0, $s0, $zero
.L8001E42C:
/* 1F02C 8001E42C 02202821 */  addu       $a1, $s1, $zero
/* 1F030 8001E430 02603021 */  addu       $a2, $s3, $zero
/* 1F034 8001E434 0C00487F */  jal        func_800121FC
/* 1F038 8001E438 02803821 */   addu      $a3, $s4, $zero
/* 1F03C 8001E43C 00001021 */  addu       $v0, $zero, $zero
/* 1F040 8001E440 AE15002C */  sw         $s5, 0x2C($s0)
/* 1F044 8001E444 08007952 */  j          .L8001E548
/* 1F048 8001E448 AE120024 */   sw        $s2, 0x24($s0)
.L8001E44C:
/* 1F04C 8001E44C 8E120024 */  lw         $s2, 0x24($s0)
/* 1F050 8001E450 82420000 */  lb         $v0, 0x0($s2)
/* 1F054 8001E454 14400038 */  bnez       $v0, .L8001E538
/* 1F058 8001E458 00000000 */   nop
/* 1F05C 8001E45C 24050085 */  addiu      $a1, $zero, 0x85
/* 1F060 8001E460 02603021 */  addu       $a2, $s3, $zero
/* 1F064 8001E464 02803821 */  addu       $a3, $s4, $zero
/* 1F068 8001E468 3C02800D */  lui        $v0, %hi(D_800CEBA4)
/* 1F06C 8001E46C 2442EBA4 */  addiu      $v0, $v0, %lo(D_800CEBA4)
/* 1F070 8001E470 0C00487F */  jal        func_800121FC
/* 1F074 8001E474 AE020024 */   sw        $v0, 0x24($s0)
/* 1F078 8001E478 24020001 */  addiu      $v0, $zero, 0x1
/* 1F07C 8001E47C 08007952 */  j          .L8001E548
/* 1F080 8001E480 AE120024 */   sw        $s2, 0x24($s0)
.L8001E484:
/* 1F084 8001E484 1040002C */  beqz       $v0, .L8001E538
/* 1F088 8001E488 02002021 */   addu      $a0, $s0, $zero
/* 1F08C 8001E48C 3C04802A */  lui        $a0, %hi(D_802A1580)
/* 1F090 8001E490 8C841580 */  lw         $a0, %lo(D_802A1580)($a0)
/* 1F094 8001E494 10800006 */  beqz       $a0, .L8001E4B0
/* 1F098 8001E498 00000000 */   nop
/* 1F09C 8001E49C 3C03803F */  lui        $v1, %hi(D_803ED3D1)
/* 1F0A0 8001E4A0 9063D3D1 */  lbu        $v1, %lo(D_803ED3D1)($v1)
/* 1F0A4 8001E4A4 8E020040 */  lw         $v0, 0x40($s0)
/* 1F0A8 8001E4A8 10620027 */  beq        $v1, $v0, .L8001E548
/* 1F0AC 8001E4AC 24020001 */   addiu     $v0, $zero, 0x1
.L8001E4B0:
/* 1F0B0 8001E4B0 3C02803F */  lui        $v0, %hi(D_803ED3D0)
/* 1F0B4 8001E4B4 2442D3D0 */  addiu      $v0, $v0, %lo(D_803ED3D0)
/* 1F0B8 8001E4B8 24830001 */  addiu      $v1, $a0, 0x1
/* 1F0BC 8001E4BC A0430000 */  sb         $v1, 0x0($v0)
/* 1F0C0 8001E4C0 8E030040 */  lw         $v1, 0x40($s0)
/* 1F0C4 8001E4C4 24420001 */  addiu      $v0, $v0, 0x1
/* 1F0C8 8001E4C8 00821021 */  addu       $v0, $a0, $v0
/* 1F0CC 8001E4CC A0430000 */  sb         $v1, 0x0($v0)
/* 1F0D0 8001E4D0 8E020024 */  lw         $v0, 0x24($s0)
/* 1F0D4 8001E4D4 80420000 */  lb         $v0, 0x0($v0)
/* 1F0D8 8001E4D8 14400006 */  bnez       $v0, .L8001E4F4
/* 1F0DC 8001E4DC 24040006 */   addiu     $a0, $zero, 0x6
/* 1F0E0 8001E4E0 02002821 */  addu       $a1, $s0, $zero
/* 1F0E4 8001E4E4 0C0041BA */  jal        func_800106E8
/* 1F0E8 8001E4E8 2406000F */   addiu     $a2, $zero, 0xF
.L8001E4EC:
/* 1F0EC 8001E4EC 08007952 */  j          .L8001E548
/* 1F0F0 8001E4F0 24020001 */   addiu     $v0, $zero, 0x1
.L8001E4F4:
/* 1F0F4 8001E4F4 0C00779A */  jal        func_8001DE68
/* 1F0F8 8001E4F8 00000000 */   nop
/* 1F0FC 8001E4FC 8E04000C */  lw         $a0, 0xC($s0)
/* 1F100 8001E500 8E060020 */  lw         $a2, 0x20($s0)
/* 1F104 8001E504 8C820000 */  lw         $v0, 0x0($a0)
/* 1F108 8001E508 24050007 */  addiu      $a1, $zero, 0x7
/* 1F10C 8001E50C 0040F809 */  jalr       $v0
/* 1F110 8001E510 00003821 */   addu      $a3, $zero, $zero
/* 1F114 8001E514 8E060020 */  lw         $a2, 0x20($s0)
/* 1F118 8001E518 10C0FFF4 */  beqz       $a2, .L8001E4EC
/* 1F11C 8001E51C 24050010 */   addiu     $a1, $zero, 0x10
/* 1F120 8001E520 8CC4000C */  lw         $a0, 0xC($a2)
/* 1F124 8001E524 8C820000 */  lw         $v0, 0x0($a0)
/* 1F128 8001E528 0040F809 */  jalr       $v0
/* 1F12C 8001E52C 00003821 */   addu      $a3, $zero, $zero
/* 1F130 8001E530 08007952 */  j          .L8001E548
/* 1F134 8001E534 24020001 */   addiu     $v0, $zero, 0x1
.L8001E538:
/* 1F138 8001E538 02202821 */  addu       $a1, $s1, $zero
/* 1F13C 8001E53C 02603021 */  addu       $a2, $s3, $zero
/* 1F140 8001E540 0C00487F */  jal        func_800121FC
/* 1F144 8001E544 02803821 */   addu      $a3, $s4, $zero
.L8001E548:
/* 1F148 8001E548 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1F14C 8001E54C 8FB50024 */  lw         $s5, 0x24($sp)
/* 1F150 8001E550 8FB40020 */  lw         $s4, 0x20($sp)
/* 1F154 8001E554 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1F158 8001E558 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F15C 8001E55C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F160 8001E560 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F164 8001E564 03E00008 */  jr         $ra
/* 1F168 8001E568 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001E56C
/* 1F16C 8001E56C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1F170 8001E570 AFB00020 */  sw         $s0, 0x20($sp)
/* 1F174 8001E574 00808021 */  addu       $s0, $a0, $zero
/* 1F178 8001E578 AFB10024 */  sw         $s1, 0x24($sp)
/* 1F17C 8001E57C 00A08821 */  addu       $s1, $a1, $zero
/* 1F180 8001E580 AFB20028 */  sw         $s2, 0x28($sp)
/* 1F184 8001E584 00C09021 */  addu       $s2, $a2, $zero
/* 1F188 8001E588 AFB3002C */  sw         $s3, 0x2C($sp)
/* 1F18C 8001E58C 00E09821 */  addu       $s3, $a3, $zero
/* 1F190 8001E590 2E220010 */  sltiu      $v0, $s1, 0x10
/* 1F194 8001E594 104000BB */  beqz       $v0, L8001E884
/* 1F198 8001E598 AFBF0030 */   sw        $ra, 0x30($sp)
/* 1F19C 8001E59C 00111080 */  sll        $v0, $s1, 2
/* 1F1A0 8001E5A0 3C01800D */  lui        $at, %hi(jtbl_800D0C68_main)
/* 1F1A4 8001E5A4 00220821 */  addu       $at, $at, $v0
/* 1F1A8 8001E5A8 8C220C68 */  lw         $v0, %lo(jtbl_800D0C68_main)($at)
/* 1F1AC 8001E5AC 00400008 */  jr         $v0
/* 1F1B0 8001E5B0 00000000 */   nop
glabel L8001E5B4
/* 1F1B4 8001E5B4 0C00779A */  jal        func_8001DE68
/* 1F1B8 8001E5B8 00000000 */   nop
/* 1F1BC 8001E5BC 02002021 */  addu       $a0, $s0, $zero
/* 1F1C0 8001E5C0 02202821 */  addu       $a1, $s1, $zero
/* 1F1C4 8001E5C4 02403021 */  addu       $a2, $s2, $zero
/* 1F1C8 8001E5C8 0C0045DC */  jal        func_80011770
/* 1F1CC 8001E5CC 02603821 */   addu      $a3, $s3, $zero
/* 1F1D0 8001E5D0 0C00779A */  jal        func_8001DE68
/* 1F1D4 8001E5D4 00408021 */   addu      $s0, $v0, $zero
/* 1F1D8 8001E5D8 08007A26 */  j          .L8001E898
/* 1F1DC 8001E5DC 02001021 */   addu      $v0, $s0, $zero
glabel L8001E5E0
/* 1F1E0 8001E5E0 3C01800B */  lui        $at, %hi(D_800B57FC)
/* 1F1E4 8001E5E4 AC2057FC */  sw         $zero, %lo(D_800B57FC)($at)
/* 1F1E8 8001E5E8 08007A22 */  j          .L8001E888
/* 1F1EC 8001E5EC 02002021 */   addu      $a0, $s0, $zero
glabel L8001E5F0
/* 1F1F0 8001E5F0 0C000ED9 */  jal        func_80003B64
/* 1F1F4 8001E5F4 00000000 */   nop
/* 1F1F8 8001E5F8 3C04803F */  lui        $a0, %hi(D_803ED3D2)
/* 1F1FC 8001E5FC 2484D3D2 */  addiu      $a0, $a0, %lo(D_803ED3D2)
/* 1F200 8001E600 90830000 */  lbu        $v1, 0x0($a0)
/* 1F204 8001E604 3C02803F */  lui        $v0, %hi(D_803ED3D1)
/* 1F208 8001E608 9042D3D1 */  lbu        $v0, %lo(D_803ED3D1)($v0)
/* 1F20C 8001E60C 14620002 */  bne        $v1, $v0, .L8001E618
/* 1F210 8001E610 24020008 */   addiu     $v0, $zero, 0x8
/* 1F214 8001E614 A0820000 */  sb         $v0, 0x0($a0)
.L8001E618:
/* 1F218 8001E618 0C001566 */  jal        func_80005598
/* 1F21C 8001E61C 240400A3 */   addiu     $a0, $zero, 0xA3
/* 1F220 8001E620 2642FFFF */  addiu      $v0, $s2, -0x1
/* 1F224 8001E624 3C01802A */  lui        $at, %hi(D_802A1580)
/* 1F228 8001E628 10400004 */  beqz       $v0, .L8001E63C
/* 1F22C 8001E62C AC221580 */   sw        $v0, %lo(D_802A1580)($at)
/* 1F230 8001E630 3C02800D */  lui        $v0, %hi(D_800CEB64)
/* 1F234 8001E634 08007991 */  j          .L8001E644
/* 1F238 8001E638 2442EB64 */   addiu     $v0, $v0, %lo(D_800CEB64)
.L8001E63C:
/* 1F23C 8001E63C 3C02800D */  lui        $v0, %hi(D_800CEB54)
/* 1F240 8001E640 2442EB54 */  addiu      $v0, $v0, %lo(D_800CEB54)
.L8001E644:
/* 1F244 8001E644 3C01800B */  lui        $at, %hi(D_800B54CC)
/* 1F248 8001E648 AC2254CC */  sw         $v0, %lo(D_800B54CC)($at)
/* 1F24C 8001E64C 02002021 */  addu       $a0, $s0, $zero
/* 1F250 8001E650 02202821 */  addu       $a1, $s1, $zero
/* 1F254 8001E654 02403021 */  addu       $a2, $s2, $zero
/* 1F258 8001E658 0C0045DC */  jal        func_80011770
/* 1F25C 8001E65C 02603821 */   addu      $a3, $s3, $zero
/* 1F260 8001E660 0C00779A */  jal        func_8001DE68
/* 1F264 8001E664 00000000 */   nop
/* 1F268 8001E668 3C02802A */  lui        $v0, %hi(D_802A1580)
/* 1F26C 8001E66C 8C421580 */  lw         $v0, %lo(D_802A1580)($v0)
/* 1F270 8001E670 3C03803F */  lui        $v1, %hi(D_803ED3D1)
/* 1F274 8001E674 00621821 */  addu       $v1, $v1, $v0
/* 1F278 8001E678 9063D3D1 */  lbu        $v1, %lo(D_803ED3D1)($v1)
/* 1F27C 8001E67C 3C04803F */  lui        $a0, %hi(D_803ED3D1)
/* 1F280 8001E680 2484D3D1 */  addiu      $a0, $a0, %lo(D_803ED3D1)
/* 1F284 8001E684 2C620008 */  sltiu      $v0, $v1, 0x8
/* 1F288 8001E688 5040000F */  beql       $v0, $zero, .L8001E6C8
/* 1F28C 8001E68C 02002021 */   addu      $a0, $s0, $zero
/* 1F290 8001E690 00031140 */  sll        $v0, $v1, 5
/* 1F294 8001E694 00431023 */  subu       $v0, $v0, $v1
/* 1F298 8001E698 00021100 */  sll        $v0, $v0, 4
/* 1F29C 8001E69C 00821021 */  addu       $v0, $a0, $v0
/* 1F2A0 8001E6A0 804201FD */  lb         $v0, 0x1FD($v0)
/* 1F2A4 8001E6A4 10400008 */  beqz       $v0, .L8001E6C8
/* 1F2A8 8001E6A8 02002021 */   addu      $a0, $s0, $zero
/* 1F2AC 8001E6AC 00031080 */  sll        $v0, $v1, 2
/* 1F2B0 8001E6B0 3C06800B */  lui        $a2, %hi(D_800B58E8)
/* 1F2B4 8001E6B4 00C23021 */  addu       $a2, $a2, $v0
/* 1F2B8 8001E6B8 8CC658E8 */  lw         $a2, %lo(D_800B58E8)($a2)
/* 1F2BC 8001E6BC 8C820000 */  lw         $v0, 0x0($a0)
/* 1F2C0 8001E6C0 080079B6 */  j          .L8001E6D8
/* 1F2C4 8001E6C4 24050007 */   addiu     $a1, $zero, 0x7
.L8001E6C8:
/* 1F2C8 8001E6C8 24050007 */  addiu      $a1, $zero, 0x7
.L8001E6CC:
/* 1F2CC 8001E6CC 8C820000 */  lw         $v0, 0x0($a0)
/* 1F2D0 8001E6D0 3C06800B */  lui        $a2, %hi(D_800B5574)
/* 1F2D4 8001E6D4 24C65574 */  addiu      $a2, $a2, %lo(D_800B5574)
.L8001E6D8:
/* 1F2D8 8001E6D8 0040F809 */  jalr       $v0
/* 1F2DC 8001E6DC 00003821 */   addu      $a3, $zero, $zero
.L8001E6E0:
/* 1F2E0 8001E6E0 08007A26 */  j          .L8001E898
/* 1F2E4 8001E6E4 24020001 */   addiu     $v0, $zero, 0x1
glabel L8001E6E8
/* 1F2E8 8001E6E8 0C0015AF */  jal        func_800056BC
/* 1F2EC 8001E6EC 240400A3 */   addiu     $a0, $zero, 0xA3
/* 1F2F0 8001E6F0 08007A22 */  j          .L8001E888
/* 1F2F4 8001E6F4 02002021 */   addu      $a0, $s0, $zero
glabel L8001E6F8
/* 1F2F8 8001E6F8 24020002 */  addiu      $v0, $zero, 0x2
/* 1F2FC 8001E6FC 12420028 */  beq        $s2, $v0, .L8001E7A0
/* 1F300 8001E700 24020006 */   addiu     $v0, $zero, 0x6
/* 1F304 8001E704 16420037 */  bne        $s2, $v0, .L8001E7E4
/* 1F308 8001E708 00000000 */   nop
/* 1F30C 8001E70C 1260001E */  beqz       $s3, .L8001E788
/* 1F310 8001E710 24020008 */   addiu     $v0, $zero, 0x8
/* 1F314 8001E714 0C00779A */  jal        func_8001DE68
/* 1F318 8001E718 00000000 */   nop
/* 1F31C 8001E71C 3C02802A */  lui        $v0, %hi(D_802A1580)
/* 1F320 8001E720 8C421580 */  lw         $v0, %lo(D_802A1580)($v0)
/* 1F324 8001E724 3C04803F */  lui        $a0, %hi(D_803ED3D1)
/* 1F328 8001E728 00822021 */  addu       $a0, $a0, $v0
/* 1F32C 8001E72C 9084D3D1 */  lbu        $a0, %lo(D_803ED3D1)($a0)
/* 1F330 8001E730 0C000F8D */  jal        func_80003E34
/* 1F334 8001E734 00002821 */   addu      $a1, $zero, $zero
/* 1F338 8001E738 3C02800B */  lui        $v0, %hi(D_800B586C)
/* 1F33C 8001E73C 8C42586C */  lw         $v0, %lo(D_800B586C)($v0)
/* 1F340 8001E740 3C06800B */  lui        $a2, %hi(D_800B586C)
/* 1F344 8001E744 24C6586C */  addiu      $a2, $a2, %lo(D_800B586C)
/* 1F348 8001E748 8CC40000 */  lw         $a0, 0x0($a2)
/* 1F34C 8001E74C 24050007 */  addiu      $a1, $zero, 0x7
/* 1F350 8001E750 8C420000 */  lw         $v0, 0x0($v0)
/* 1F354 8001E754 24C6FFF4 */  addiu      $a2, $a2, -0xC
/* 1F358 8001E758 0040F809 */  jalr       $v0
/* 1F35C 8001E75C 00003821 */   addu      $a3, $zero, $zero
/* 1F360 8001E760 3C02800B */  lui        $v0, %hi(D_800ABAA4)
/* 1F364 8001E764 8C42BAA4 */  lw         $v0, %lo(D_800ABAA4)($v0)
/* 1F368 8001E768 1040FFDD */  beqz       $v0, .L8001E6E0
/* 1F36C 8001E76C 2404000F */   addiu     $a0, $zero, 0xF
/* 1F370 8001E770 3C058002 */  lui        $a1, %hi(func_8001F400)
/* 1F374 8001E774 24A5F400 */  addiu      $a1, $a1, %lo(func_8001F400)
/* 1F378 8001E778 0C0041BA */  jal        func_800106E8
/* 1F37C 8001E77C 00003021 */   addu      $a2, $zero, $zero
/* 1F380 8001E780 08007A26 */  j          .L8001E898
/* 1F384 8001E784 24020001 */   addiu     $v0, $zero, 0x1
.L8001E788:
/* 1F388 8001E788 3C03802A */  lui        $v1, %hi(D_802A1580)
/* 1F38C 8001E78C 8C631580 */  lw         $v1, %lo(D_802A1580)($v1)
/* 1F390 8001E790 3C01803F */  lui        $at, %hi(D_803ED3D1)
/* 1F394 8001E794 00230821 */  addu       $at, $at, $v1
/* 1F398 8001E798 080079F9 */  j          .L8001E7E4
/* 1F39C 8001E79C A022D3D1 */   sb        $v0, %lo(D_803ED3D1)($at)
.L8001E7A0:
/* 1F3A0 8001E7A0 12600010 */  beqz       $s3, .L8001E7E4
/* 1F3A4 8001E7A4 00000000 */   nop
/* 1F3A8 8001E7A8 3C02802A */  lui        $v0, %hi(D_802A1580)
/* 1F3AC 8001E7AC 8C421580 */  lw         $v0, %lo(D_802A1580)($v0)
/* 1F3B0 8001E7B0 3C04803F */  lui        $a0, %hi(D_803ED3D1)
/* 1F3B4 8001E7B4 00822021 */  addu       $a0, $a0, $v0
/* 1F3B8 8001E7B8 0C000F7F */  jal        func_80003DFC
/* 1F3BC 8001E7BC 9084D3D1 */   lbu       $a0, %lo(D_803ED3D1)($a0)
/* 1F3C0 8001E7C0 02002021 */  addu       $a0, $s0, $zero
/* 1F3C4 8001E7C4 3C03802A */  lui        $v1, %hi(D_802A1580)
/* 1F3C8 8001E7C8 8C631580 */  lw         $v1, %lo(D_802A1580)($v1)
/* 1F3CC 8001E7CC 24020008 */  addiu      $v0, $zero, 0x8
/* 1F3D0 8001E7D0 3C01803F */  lui        $at, %hi(D_803ED3D1)
/* 1F3D4 8001E7D4 00230821 */  addu       $at, $at, $v1
/* 1F3D8 8001E7D8 A022D3D1 */  sb         $v0, %lo(D_803ED3D1)($at)
/* 1F3DC 8001E7DC 080079B3 */  j          .L8001E6CC
/* 1F3E0 8001E7E0 24050007 */   addiu     $a1, $zero, 0x7
.L8001E7E4:
/* 1F3E4 8001E7E4 0C00779A */  jal        func_8001DE68
/* 1F3E8 8001E7E8 00000000 */   nop
/* 1F3EC 8001E7EC 08007A26 */  j          .L8001E898
/* 1F3F0 8001E7F0 24020001 */   addiu     $v0, $zero, 0x1
glabel L8001E7F4
/* 1F3F4 8001E7F4 8E030018 */  lw         $v1, 0x18($s0)
/* 1F3F8 8001E7F8 3C02800B */  lui        $v0, %hi(D_800B5860)
/* 1F3FC 8001E7FC 24425860 */  addiu      $v0, $v0, %lo(D_800B5860)
/* 1F400 8001E800 14620007 */  bne        $v1, $v0, .L8001E820
/* 1F404 8001E804 02002021 */   addu      $a0, $s0, $zero
/* 1F408 8001E808 3C05802A */  lui        $a1, %hi(D_802A1580)
/* 1F40C 8001E80C 8CA51580 */  lw         $a1, %lo(D_802A1580)($a1)
/* 1F410 8001E810 0C004204 */  jal        func_80010810
/* 1F414 8001E814 24A50001 */   addiu     $a1, $a1, 0x1
/* 1F418 8001E818 08007A26 */  j          .L8001E898
/* 1F41C 8001E81C 24020001 */   addiu     $v0, $zero, 0x1
.L8001E820:
/* 1F420 8001E820 3C02800B */  lui        $v0, %hi(D_800B581C)
/* 1F424 8001E824 2442581C */  addiu      $v0, $v0, %lo(D_800B581C)
/* 1F428 8001E828 14620007 */  bne        $v1, $v0, .L8001E848
/* 1F42C 8001E82C 24040005 */   addiu     $a0, $zero, 0x5
/* 1F430 8001E830 3C02802A */  lui        $v0, %hi(D_802A1580)
/* 1F434 8001E834 8C421580 */  lw         $v0, %lo(D_802A1580)($v0)
/* 1F438 8001E838 3C05803F */  lui        $a1, %hi(D_803ED3D1)
/* 1F43C 8001E83C 00A22821 */  addu       $a1, $a1, $v0
/* 1F440 8001E840 08007A18 */  j          .L8001E860
/* 1F444 8001E844 90A5D3D1 */   lbu       $a1, %lo(D_803ED3D1)($a1)
.L8001E848:
/* 1F448 8001E848 3C02800B */  lui        $v0, %hi(D_800B58A4)
/* 1F44C 8001E84C 244258A4 */  addiu      $v0, $v0, %lo(D_800B58A4)
/* 1F450 8001E850 14620011 */  bne        $v1, $v0, .L8001E898
/* 1F454 8001E854 24020001 */   addiu     $v0, $zero, 0x1
/* 1F458 8001E858 24040002 */  addiu      $a0, $zero, 0x2
/* 1F45C 8001E85C 00002821 */  addu       $a1, $zero, $zero
.L8001E860:
/* 1F460 8001E860 0C0041BA */  jal        func_800106E8
/* 1F464 8001E864 00003021 */   addu      $a2, $zero, $zero
/* 1F468 8001E868 08007A26 */  j          .L8001E898
/* 1F46C 8001E86C 24020001 */   addiu     $v0, $zero, 0x1
glabel L8001E870
/* 1F470 8001E870 02002021 */  addu       $a0, $s0, $zero
/* 1F474 8001E874 0C004204 */  jal        func_80010810
/* 1F478 8001E878 00002821 */   addu      $a1, $zero, $zero
/* 1F47C 8001E87C 08007A26 */  j          .L8001E898
/* 1F480 8001E880 24020001 */   addiu     $v0, $zero, 0x1
glabel L8001E884
/* 1F484 8001E884 02002021 */  addu       $a0, $s0, $zero
.L8001E888:
/* 1F488 8001E888 02202821 */  addu       $a1, $s1, $zero
/* 1F48C 8001E88C 02403021 */  addu       $a2, $s2, $zero
/* 1F490 8001E890 0C0045DC */  jal        func_80011770
/* 1F494 8001E894 02603821 */   addu      $a3, $s3, $zero
.L8001E898:
/* 1F498 8001E898 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1F49C 8001E89C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 1F4A0 8001E8A0 8FB20028 */  lw         $s2, 0x28($sp)
/* 1F4A4 8001E8A4 8FB10024 */  lw         $s1, 0x24($sp)
/* 1F4A8 8001E8A8 8FB00020 */  lw         $s0, 0x20($sp)
/* 1F4AC 8001E8AC 03E00008 */  jr         $ra
/* 1F4B0 8001E8B0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8001E8B4
/* 1F4B4 8001E8B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F4B8 8001E8B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F4BC 8001E8BC 00808021 */  addu       $s0, $a0, $zero
/* 1F4C0 8001E8C0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F4C4 8001E8C4 00A08821 */  addu       $s1, $a1, $zero
/* 1F4C8 8001E8C8 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F4CC 8001E8CC 00C09021 */  addu       $s2, $a2, $zero
/* 1F4D0 8001E8D0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1F4D4 8001E8D4 00E09821 */  addu       $s3, $a3, $zero
/* 1F4D8 8001E8D8 24020080 */  addiu      $v0, $zero, 0x80
/* 1F4DC 8001E8DC 12220006 */  beq        $s1, $v0, .L8001E8F8
/* 1F4E0 8001E8E0 AFBF0020 */   sw        $ra, 0x20($sp)
/* 1F4E4 8001E8E4 2402008D */  addiu      $v0, $zero, 0x8D
/* 1F4E8 8001E8E8 1222000A */  beq        $s1, $v0, .L8001E914
/* 1F4EC 8001E8EC 32428000 */   andi      $v0, $s2, 0x8000
/* 1F4F0 8001E8F0 08007A59 */  j          .L8001E964
/* 1F4F4 8001E8F4 02002021 */   addu      $a0, $s0, $zero
.L8001E8F8:
/* 1F4F8 8001E8F8 8E020040 */  lw         $v0, 0x40($s0)
/* 1F4FC 8001E8FC 00021080 */  sll        $v0, $v0, 2
/* 1F500 8001E900 3C01800D */  lui        $at, %hi(D_800CD3F8)
/* 1F504 8001E904 00220821 */  addu       $at, $at, $v0
/* 1F508 8001E908 8C22D3F8 */  lw         $v0, %lo(D_800CD3F8)($at)
/* 1F50C 8001E90C 08007A58 */  j          .L8001E960
/* 1F510 8001E910 AE020024 */   sw        $v0, 0x24($s0)
.L8001E914:
/* 1F514 8001E914 10400012 */  beqz       $v0, .L8001E960
/* 1F518 8001E918 24050010 */   addiu     $a1, $zero, 0x10
/* 1F51C 8001E91C 8E04000C */  lw         $a0, 0xC($s0)
/* 1F520 8001E920 8C820000 */  lw         $v0, 0x0($a0)
/* 1F524 8001E924 02003021 */  addu       $a2, $s0, $zero
/* 1F528 8001E928 0040F809 */  jalr       $v0
/* 1F52C 8001E92C 00003821 */   addu      $a3, $zero, $zero
/* 1F530 8001E930 3C04803F */  lui        $a0, %hi(D_803ED3D3)
/* 1F534 8001E934 2484D3D3 */  addiu      $a0, $a0, %lo(D_803ED3D3)
/* 1F538 8001E938 90830000 */  lbu        $v1, 0x0($a0)
/* 1F53C 8001E93C 2462FFF7 */  addiu      $v0, $v1, -0x9
/* 1F540 8001E940 04420001 */  bltzl      $v0, .L8001E948
/* 1F544 8001E944 24620006 */   addiu     $v0, $v1, 0x6
.L8001E948:
/* 1F548 8001E948 8E030040 */  lw         $v1, 0x40($s0)
/* 1F54C 8001E94C 00021103 */  sra        $v0, $v0, 4
/* 1F550 8001E950 10430003 */  beq        $v0, $v1, .L8001E960
/* 1F554 8001E954 00031100 */   sll       $v0, $v1, 4
/* 1F558 8001E958 24420009 */  addiu      $v0, $v0, 0x9
/* 1F55C 8001E95C A0820000 */  sb         $v0, 0x0($a0)
.L8001E960:
/* 1F560 8001E960 02002021 */  addu       $a0, $s0, $zero
.L8001E964:
/* 1F564 8001E964 02202821 */  addu       $a1, $s1, $zero
/* 1F568 8001E968 02403021 */  addu       $a2, $s2, $zero
/* 1F56C 8001E96C 0C00487F */  jal        func_800121FC
/* 1F570 8001E970 02603821 */   addu      $a3, $s3, $zero
/* 1F574 8001E974 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1F578 8001E978 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1F57C 8001E97C 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F580 8001E980 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F584 8001E984 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F588 8001E988 03E00008 */  jr         $ra
/* 1F58C 8001E98C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001E990
/* 1F590 8001E990 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1F594 8001E994 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F598 8001E998 00808821 */  addu       $s1, $a0, $zero
/* 1F59C 8001E99C AFB00010 */  sw         $s0, 0x10($sp)
/* 1F5A0 8001E9A0 00A08021 */  addu       $s0, $a1, $zero
/* 1F5A4 8001E9A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F5A8 8001E9A8 00C09021 */  addu       $s2, $a2, $zero
/* 1F5AC 8001E9AC AFB3001C */  sw         $s3, 0x1C($sp)
/* 1F5B0 8001E9B0 00E09821 */  addu       $s3, $a3, $zero
/* 1F5B4 8001E9B4 2402000B */  addiu      $v0, $zero, 0xB
/* 1F5B8 8001E9B8 1202002C */  beq        $s0, $v0, .L8001EA6C
/* 1F5BC 8001E9BC AFBF0020 */   sw        $ra, 0x20($sp)
/* 1F5C0 8001E9C0 2E02000C */  sltiu      $v0, $s0, 0xC
/* 1F5C4 8001E9C4 50400005 */  beql       $v0, $zero, .L8001E9DC
/* 1F5C8 8001E9C8 2402000C */   addiu     $v0, $zero, 0xC
/* 1F5CC 8001E9CC 12000009 */  beqz       $s0, .L8001E9F4
/* 1F5D0 8001E9D0 02202021 */   addu      $a0, $s1, $zero
/* 1F5D4 8001E9D4 08007AA7 */  j          .L8001EA9C
/* 1F5D8 8001E9D8 00000000 */   nop
.L8001E9DC:
/* 1F5DC 8001E9DC 12020029 */  beq        $s0, $v0, .L8001EA84
/* 1F5E0 8001E9E0 2402000F */   addiu     $v0, $zero, 0xF
/* 1F5E4 8001E9E4 1202001B */  beq        $s0, $v0, .L8001EA54
/* 1F5E8 8001E9E8 24020004 */   addiu     $v0, $zero, 0x4
/* 1F5EC 8001E9EC 08007AA7 */  j          .L8001EA9C
/* 1F5F0 8001E9F0 02202021 */   addu      $a0, $s1, $zero
.L8001E9F4:
/* 1F5F4 8001E9F4 0C000ED9 */  jal        func_80003B64
/* 1F5F8 8001E9F8 00000000 */   nop
/* 1F5FC 8001E9FC 02202021 */  addu       $a0, $s1, $zero
/* 1F600 8001EA00 00002821 */  addu       $a1, $zero, $zero
/* 1F604 8001EA04 02403021 */  addu       $a2, $s2, $zero
/* 1F608 8001EA08 0C0045DC */  jal        func_80011770
/* 1F60C 8001EA0C 02603821 */   addu      $a3, $s3, $zero
/* 1F610 8001EA10 3C03803F */  lui        $v1, %hi(D_803ED3D3)
/* 1F614 8001EA14 9063D3D3 */  lbu        $v1, %lo(D_803ED3D3)($v1)
/* 1F618 8001EA18 2462FFF7 */  addiu      $v0, $v1, -0x9
/* 1F61C 8001EA1C 04420001 */  bltzl      $v0, .L8001EA24
/* 1F620 8001EA20 24620006 */   addiu     $v0, $v1, 0x6
.L8001EA24:
/* 1F624 8001EA24 02202021 */  addu       $a0, $s1, $zero
/* 1F628 8001EA28 00021103 */  sra        $v0, $v0, 4
/* 1F62C 8001EA2C 00021080 */  sll        $v0, $v0, 2
/* 1F630 8001EA30 3C06800B */  lui        $a2, %hi(D_800B5BC4)
/* 1F634 8001EA34 00C23021 */  addu       $a2, $a2, $v0
/* 1F638 8001EA38 8CC65BC4 */  lw         $a2, %lo(D_800B5BC4)($a2)
/* 1F63C 8001EA3C 8C820000 */  lw         $v0, 0x0($a0)
/* 1F640 8001EA40 24050007 */  addiu      $a1, $zero, 0x7
/* 1F644 8001EA44 0040F809 */  jalr       $v0
/* 1F648 8001EA48 00003821 */   addu      $a3, $zero, $zero
/* 1F64C 8001EA4C 08007AAB */  j          .L8001EAAC
/* 1F650 8001EA50 24020001 */   addiu     $v0, $zero, 0x1
.L8001EA54:
/* 1F654 8001EA54 16420011 */  bne        $s2, $v0, .L8001EA9C
/* 1F658 8001EA58 02202021 */   addu      $a0, $s1, $zero
/* 1F65C 8001EA5C 1260000F */  beqz       $s3, .L8001EA9C
/* 1F660 8001EA60 24050001 */   addiu     $a1, $zero, 0x1
/* 1F664 8001EA64 08007AA3 */  j          .L8001EA8C
/* 1F668 8001EA68 00000000 */   nop
.L8001EA6C:
/* 1F66C 8001EA6C 24040004 */  addiu      $a0, $zero, 0x4
/* 1F670 8001EA70 00002821 */  addu       $a1, $zero, $zero
/* 1F674 8001EA74 0C0041BA */  jal        func_800106E8
/* 1F678 8001EA78 00003021 */   addu      $a2, $zero, $zero
/* 1F67C 8001EA7C 08007AA7 */  j          .L8001EA9C
/* 1F680 8001EA80 02202021 */   addu      $a0, $s1, $zero
.L8001EA84:
/* 1F684 8001EA84 02202021 */  addu       $a0, $s1, $zero
/* 1F688 8001EA88 00002821 */  addu       $a1, $zero, $zero
.L8001EA8C:
/* 1F68C 8001EA8C 0C004204 */  jal        func_80010810
/* 1F690 8001EA90 00000000 */   nop
/* 1F694 8001EA94 08007AAB */  j          .L8001EAAC
/* 1F698 8001EA98 24020001 */   addiu     $v0, $zero, 0x1
.L8001EA9C:
/* 1F69C 8001EA9C 02002821 */  addu       $a1, $s0, $zero
/* 1F6A0 8001EAA0 02403021 */  addu       $a2, $s2, $zero
/* 1F6A4 8001EAA4 0C0045DC */  jal        func_80011770
/* 1F6A8 8001EAA8 02603821 */   addu      $a3, $s3, $zero
.L8001EAAC:
/* 1F6AC 8001EAAC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1F6B0 8001EAB0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1F6B4 8001EAB4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F6B8 8001EAB8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F6BC 8001EABC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F6C0 8001EAC0 03E00008 */  jr         $ra
/* 1F6C4 8001EAC4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001EAC8
/* 1F6C8 8001EAC8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1F6CC 8001EACC AFB10014 */  sw         $s1, 0x14($sp)
/* 1F6D0 8001EAD0 00808821 */  addu       $s1, $a0, $zero
/* 1F6D4 8001EAD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F6D8 8001EAD8 00A09021 */  addu       $s2, $a1, $zero
/* 1F6DC 8001EADC AFB50024 */  sw         $s5, 0x24($sp)
/* 1F6E0 8001EAE0 00C0A821 */  addu       $s5, $a2, $zero
/* 1F6E4 8001EAE4 AFB60028 */  sw         $s6, 0x28($sp)
/* 1F6E8 8001EAE8 00E0B021 */  addu       $s6, $a3, $zero
/* 1F6EC 8001EAEC 2402008A */  addiu      $v0, $zero, 0x8A
/* 1F6F0 8001EAF0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 1F6F4 8001EAF4 AFB40020 */  sw         $s4, 0x20($sp)
/* 1F6F8 8001EAF8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1F6FC 8001EAFC 1242000D */  beq        $s2, $v0, .L8001EB34
/* 1F700 8001EB00 AFB00010 */   sw        $s0, 0x10($sp)
/* 1F704 8001EB04 2E42008B */  sltiu      $v0, $s2, 0x8B
/* 1F708 8001EB08 10400005 */  beqz       $v0, .L8001EB20
/* 1F70C 8001EB0C 24020086 */   addiu     $v0, $zero, 0x86
/* 1F710 8001EB10 12420031 */  beq        $s2, $v0, .L8001EBD8
/* 1F714 8001EB14 02202021 */   addu      $a0, $s1, $zero
/* 1F718 8001EB18 08007AFF */  j          .L8001EBFC
/* 1F71C 8001EB1C 00000000 */   nop
.L8001EB20:
/* 1F720 8001EB20 2402008D */  addiu      $v0, $zero, 0x8D
/* 1F724 8001EB24 12420022 */  beq        $s2, $v0, .L8001EBB0
/* 1F728 8001EB28 32A28000 */   andi      $v0, $s5, 0x8000
/* 1F72C 8001EB2C 08007AFF */  j          .L8001EBFC
/* 1F730 8001EB30 02202021 */   addu      $a0, $s1, $zero
.L8001EB34:
/* 1F734 8001EB34 8E22000C */  lw         $v0, 0xC($s1)
/* 1F738 8001EB38 8E230040 */  lw         $v1, 0x40($s1)
/* 1F73C 8001EB3C 8C420030 */  lw         $v0, 0x30($v0)
/* 1F740 8001EB40 240400A3 */  addiu      $a0, $zero, 0xA3
/* 1F744 8001EB44 00629821 */  addu       $s3, $v1, $v0
/* 1F748 8001EB48 2670FFF7 */  addiu      $s0, $s3, -0x9
/* 1F74C 8001EB4C 001010C0 */  sll        $v0, $s0, 3
/* 1F750 8001EB50 00501021 */  addu       $v0, $v0, $s0
/* 1F754 8001EB54 00021080 */  sll        $v0, $v0, 2
/* 1F758 8001EB58 00501021 */  addu       $v0, $v0, $s0
/* 1F75C 8001EB5C 00021080 */  sll        $v0, $v0, 2
/* 1F760 8001EB60 3C03800C */  lui        $v1, %hi(D_800BFBB0)
/* 1F764 8001EB64 2463FBB0 */  addiu      $v1, $v1, %lo(D_800BFBB0)
/* 1F768 8001EB68 0C0015B7 */  jal        func_800056DC
/* 1F76C 8001EB6C 0043A021 */   addu      $s4, $v0, $v1
/* 1F770 8001EB70 00402021 */  addu       $a0, $v0, $zero
/* 1F774 8001EB74 3C01800B */  lui        $at, %hi(D_800B5D10)
/* 1F778 8001EB78 AC245D10 */  sw         $a0, %lo(D_800B5D10)($at)
/* 1F77C 8001EB7C 06020001 */  bltzl      $s0, .L8001EB84
/* 1F780 8001EB80 26700006 */   addiu     $s0, $s3, 0x6
.L8001EB84:
/* 1F784 8001EB84 00101103 */  sra        $v0, $s0, 4
/* 1F788 8001EB88 00021080 */  sll        $v0, $v0, 2
/* 1F78C 8001EB8C 3C06800D */  lui        $a2, %hi(D_800CD3F8)
/* 1F790 8001EB90 00C23021 */  addu       $a2, $a2, $v0
/* 1F794 8001EB94 8CC6D3F8 */  lw         $a2, %lo(D_800CD3F8)($a2)
/* 1F798 8001EB98 8E870090 */  lw         $a3, 0x90($s4)
/* 1F79C 8001EB9C 3C05800D */  lui        $a1, %hi(D_800CEE04)
/* 1F7A0 8001EBA0 0C024940 */  jal        func_80092500
/* 1F7A4 8001EBA4 24A5EE04 */   addiu     $a1, $a1, %lo(D_800CEE04)
/* 1F7A8 8001EBA8 08007AFF */  j          .L8001EBFC
/* 1F7AC 8001EBAC 02202021 */   addu      $a0, $s1, $zero
.L8001EBB0:
/* 1F7B0 8001EBB0 10400012 */  beqz       $v0, .L8001EBFC
/* 1F7B4 8001EBB4 02202021 */   addu      $a0, $s1, $zero
/* 1F7B8 8001EBB8 8E22000C */  lw         $v0, 0xC($s1)
/* 1F7BC 8001EBBC 8E230040 */  lw         $v1, 0x40($s1)
/* 1F7C0 8001EBC0 8C420030 */  lw         $v0, 0x30($v0)
/* 1F7C4 8001EBC4 00431021 */  addu       $v0, $v0, $v1
/* 1F7C8 8001EBC8 3C01803F */  lui        $at, %hi(D_803ED3D3)
/* 1F7CC 8001EBCC A022D3D3 */  sb         $v0, %lo(D_803ED3D3)($at)
/* 1F7D0 8001EBD0 08007B00 */  j          .L8001EC00
/* 1F7D4 8001EBD4 02402821 */   addu      $a1, $s2, $zero
.L8001EBD8:
/* 1F7D8 8001EBD8 8E22000C */  lw         $v0, 0xC($s1)
/* 1F7DC 8001EBDC 8E230040 */  lw         $v1, 0x40($s1)
/* 1F7E0 8001EBE0 8C420030 */  lw         $v0, 0x30($v0)
/* 1F7E4 8001EBE4 00431021 */  addu       $v0, $v0, $v1
/* 1F7E8 8001EBE8 00021080 */  sll        $v0, $v0, 2
/* 1F7EC 8001EBEC 3C01800D */  lui        $at, %hi(D_800CD478)
/* 1F7F0 8001EBF0 00220821 */  addu       $at, $at, $v0
/* 1F7F4 8001EBF4 8C22D478 */  lw         $v0, %lo(D_800CD478)($at)
/* 1F7F8 8001EBF8 AE220024 */  sw         $v0, 0x24($s1)
.L8001EBFC:
/* 1F7FC 8001EBFC 02402821 */  addu       $a1, $s2, $zero
.L8001EC00:
/* 1F800 8001EC00 02A03021 */  addu       $a2, $s5, $zero
/* 1F804 8001EC04 0C00487F */  jal        func_800121FC
/* 1F808 8001EC08 02C03821 */   addu      $a3, $s6, $zero
/* 1F80C 8001EC0C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1F810 8001EC10 8FB60028 */  lw         $s6, 0x28($sp)
/* 1F814 8001EC14 8FB50024 */  lw         $s5, 0x24($sp)
/* 1F818 8001EC18 8FB40020 */  lw         $s4, 0x20($sp)
/* 1F81C 8001EC1C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1F820 8001EC20 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F824 8001EC24 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F828 8001EC28 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F82C 8001EC2C 03E00008 */  jr         $ra
/* 1F830 8001EC30 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001EC34
/* 1F834 8001EC34 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1F838 8001EC38 AFB00038 */  sw         $s0, 0x38($sp)
/* 1F83C 8001EC3C 00808021 */  addu       $s0, $a0, $zero
/* 1F840 8001EC40 AFB1003C */  sw         $s1, 0x3C($sp)
/* 1F844 8001EC44 00C08821 */  addu       $s1, $a2, $zero
/* 1F848 8001EC48 24020086 */  addiu      $v0, $zero, 0x86
/* 1F84C 8001EC4C 10A20006 */  beq        $a1, $v0, .L8001EC68
/* 1F850 8001EC50 AFBF0040 */   sw        $ra, 0x40($sp)
/* 1F854 8001EC54 2402008A */  addiu      $v0, $zero, 0x8A
/* 1F858 8001EC58 10A20075 */  beq        $a1, $v0, .L8001EE30
/* 1F85C 8001EC5C 02002021 */   addu      $a0, $s0, $zero
/* 1F860 8001EC60 08007BB0 */  j          .L8001EEC0
/* 1F864 8001EC64 00000000 */   nop
.L8001EC68:
/* 1F868 8001EC68 8E020040 */  lw         $v0, 0x40($s0)
/* 1F86C 8001EC6C 0441000F */  bgez       $v0, .L8001ECAC
/* 1F870 8001EC70 00000000 */   nop
/* 1F874 8001EC74 8E02000C */  lw         $v0, 0xC($s0)
/* 1F878 8001EC78 3C04803F */  lui        $a0, %hi(D_803ED3D3)
/* 1F87C 8001EC7C 9084D3D3 */  lbu        $a0, %lo(D_803ED3D3)($a0)
/* 1F880 8001EC80 8C420030 */  lw         $v0, 0x30($v0)
/* 1F884 8001EC84 2483FFF7 */  addiu      $v1, $a0, -0x9
/* 1F888 8001EC88 2442FFF6 */  addiu      $v0, $v0, -0xA
/* 1F88C 8001EC8C 04610002 */  bgez       $v1, .L8001EC98
/* 1F890 8001EC90 00022902 */   srl       $a1, $v0, 4
/* 1F894 8001EC94 24830006 */  addiu      $v1, $a0, 0x6
.L8001EC98:
/* 1F898 8001EC98 00031103 */  sra        $v0, $v1, 4
/* 1F89C 8001EC9C 10A2000F */  beq        $a1, $v0, .L8001ECDC
/* 1F8A0 8001ECA0 24020001 */   addiu     $v0, $zero, 0x1
/* 1F8A4 8001ECA4 08007BB2 */  j          .L8001EEC8
/* 1F8A8 8001ECA8 00000000 */   nop
.L8001ECAC:
/* 1F8AC 8001ECAC 8E02000C */  lw         $v0, 0xC($s0)
/* 1F8B0 8001ECB0 3C04803F */  lui        $a0, %hi(D_803ED3D3)
/* 1F8B4 8001ECB4 9084D3D3 */  lbu        $a0, %lo(D_803ED3D3)($a0)
/* 1F8B8 8001ECB8 8C420030 */  lw         $v0, 0x30($v0)
/* 1F8BC 8001ECBC 2483FFF7 */  addiu      $v1, $a0, -0x9
/* 1F8C0 8001ECC0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1F8C4 8001ECC4 04610002 */  bgez       $v1, .L8001ECD0
/* 1F8C8 8001ECC8 00022902 */   srl       $a1, $v0, 4
/* 1F8CC 8001ECCC 24830006 */  addiu      $v1, $a0, 0x6
.L8001ECD0:
/* 1F8D0 8001ECD0 00031103 */  sra        $v0, $v1, 4
/* 1F8D4 8001ECD4 14A2007C */  bne        $a1, $v0, .L8001EEC8
/* 1F8D8 8001ECD8 24020001 */   addiu     $v0, $zero, 0x1
.L8001ECDC:
/* 1F8DC 8001ECDC 8E02000C */  lw         $v0, 0xC($s0)
/* 1F8E0 8001ECE0 10400079 */  beqz       $v0, .L8001EEC8
/* 1F8E4 8001ECE4 24020001 */   addiu     $v0, $zero, 0x1
/* 1F8E8 8001ECE8 0C0042AA */  jal        func_80010AA8
/* 1F8EC 8001ECEC 00000000 */   nop
/* 1F8F0 8001ECF0 8E03000C */  lw         $v1, 0xC($s0)
/* 1F8F4 8001ECF4 14430074 */  bne        $v0, $v1, .L8001EEC8
/* 1F8F8 8001ECF8 24020001 */   addiu     $v0, $zero, 0x1
/* 1F8FC 8001ECFC 96020004 */  lhu        $v0, 0x4($s0)
/* 1F900 8001ED00 A7A20018 */  sh         $v0, 0x18($sp)
/* 1F904 8001ED04 96020006 */  lhu        $v0, 0x6($s0)
/* 1F908 8001ED08 A7A2001A */  sh         $v0, 0x1A($sp)
/* 1F90C 8001ED0C 8E020038 */  lw         $v0, 0x38($s0)
/* 1F910 8001ED10 0C005C85 */  jal        func_80017214
/* 1F914 8001ED14 8C440000 */   lw        $a0, 0x0($v0)
/* 1F918 8001ED18 96030004 */  lhu        $v1, 0x4($s0)
/* 1F91C 8001ED1C 00621821 */  addu       $v1, $v1, $v0
/* 1F920 8001ED20 A7A3001C */  sh         $v1, 0x1C($sp)
/* 1F924 8001ED24 8E020038 */  lw         $v0, 0x38($s0)
/* 1F928 8001ED28 0C005C8D */  jal        func_80017234
/* 1F92C 8001ED2C 8C440000 */   lw        $a0, 0x0($v0)
/* 1F930 8001ED30 96060006 */  lhu        $a2, 0x6($s0)
/* 1F934 8001ED34 00C23021 */  addu       $a2, $a2, $v0
/* 1F938 8001ED38 A7A6001E */  sh         $a2, 0x1E($sp)
/* 1F93C 8001ED3C 86030004 */  lh         $v1, 0x4($s0)
/* 1F940 8001ED40 86020008 */  lh         $v0, 0x8($s0)
/* 1F944 8001ED44 87A5001C */  lh         $a1, 0x1C($sp)
/* 1F948 8001ED48 87A70018 */  lh         $a3, 0x18($sp)
/* 1F94C 8001ED4C 00621821 */  addu       $v1, $v1, $v0
/* 1F950 8001ED50 000317C2 */  srl        $v0, $v1, 31
/* 1F954 8001ED54 00621821 */  addu       $v1, $v1, $v0
/* 1F958 8001ED58 00031843 */  sra        $v1, $v1, 1
/* 1F95C 8001ED5C 00A71023 */  subu       $v0, $a1, $a3
/* 1F960 8001ED60 000227C2 */  srl        $a0, $v0, 31
/* 1F964 8001ED64 00441021 */  addu       $v0, $v0, $a0
/* 1F968 8001ED68 00021043 */  sra        $v0, $v0, 1
/* 1F96C 8001ED6C 00621823 */  subu       $v1, $v1, $v0
/* 1F970 8001ED70 00A32821 */  addu       $a1, $a1, $v1
/* 1F974 8001ED74 00A72823 */  subu       $a1, $a1, $a3
/* 1F978 8001ED78 A7A5001C */  sh         $a1, 0x1C($sp)
/* 1F97C 8001ED7C A7A30018 */  sh         $v1, 0x18($sp)
/* 1F980 8001ED80 86030006 */  lh         $v1, 0x6($s0)
/* 1F984 8001ED84 8602000A */  lh         $v0, 0xA($s0)
/* 1F988 8001ED88 87A5001A */  lh         $a1, 0x1A($sp)
/* 1F98C 8001ED8C 00621821 */  addu       $v1, $v1, $v0
/* 1F990 8001ED90 000317C2 */  srl        $v0, $v1, 31
/* 1F994 8001ED94 00621821 */  addu       $v1, $v1, $v0
/* 1F998 8001ED98 00031843 */  sra        $v1, $v1, 1
/* 1F99C 8001ED9C 00061400 */  sll        $v0, $a2, 16
/* 1F9A0 8001EDA0 00021403 */  sra        $v0, $v0, 16
/* 1F9A4 8001EDA4 00451023 */  subu       $v0, $v0, $a1
/* 1F9A8 8001EDA8 000227C2 */  srl        $a0, $v0, 31
/* 1F9AC 8001EDAC 00441021 */  addu       $v0, $v0, $a0
/* 1F9B0 8001EDB0 00021043 */  sra        $v0, $v0, 1
/* 1F9B4 8001EDB4 00621823 */  subu       $v1, $v1, $v0
/* 1F9B8 8001EDB8 00C33021 */  addu       $a2, $a2, $v1
/* 1F9BC 8001EDBC 00C53023 */  subu       $a2, $a2, $a1
/* 1F9C0 8001EDC0 A7A6001E */  sh         $a2, 0x1E($sp)
/* 1F9C4 8001EDC4 A7A3001A */  sh         $v1, 0x1A($sp)
/* 1F9C8 8001EDC8 8E02000C */  lw         $v0, 0xC($s0)
/* 1F9CC 8001EDCC 1040000E */  beqz       $v0, .L8001EE08
/* 1F9D0 8001EDD0 2406FFFF */   addiu     $a2, $zero, -0x1
/* 1F9D4 8001EDD4 0C0042AA */  jal        func_80010AA8
/* 1F9D8 8001EDD8 00000000 */   nop
/* 1F9DC 8001EDDC 8E03000C */  lw         $v1, 0xC($s0)
/* 1F9E0 8001EDE0 14430009 */  bne        $v0, $v1, .L8001EE08
/* 1F9E4 8001EDE4 2406FFFF */   addiu     $a2, $zero, -0x1
/* 1F9E8 8001EDE8 3C02800B */  lui        $v0, %hi(D_800ABB07)
/* 1F9EC 8001EDEC 9042BB07 */  lbu        $v0, %lo(D_800ABB07)($v0)
/* 1F9F0 8001EDF0 3C0400C0 */  lui        $a0, (0xC000FF >> 16)
/* 1F9F4 8001EDF4 348400FF */  ori        $a0, $a0, (0xC000FF & 0xFFFF)
/* 1F9F8 8001EDF8 00021E00 */  sll        $v1, $v0, 24
/* 1F9FC 8001EDFC 00021200 */  sll        $v0, $v0, 8
/* 1FA00 8001EE00 00441025 */  or         $v0, $v0, $a0
/* 1FA04 8001EE04 00623025 */  or         $a2, $v1, $v0
.L8001EE08:
/* 1FA08 8001EE08 8E020038 */  lw         $v0, 0x38($s0)
/* 1FA0C 8001EE0C 87A70018 */  lh         $a3, 0x18($sp)
/* 1FA10 8001EE10 8C450000 */  lw         $a1, 0x0($v0)
/* 1FA14 8001EE14 87A2001A */  lh         $v0, 0x1A($sp)
/* 1FA18 8001EE18 02202021 */  addu       $a0, $s1, $zero
/* 1FA1C 8001EE1C AFA00014 */  sw         $zero, 0x14($sp)
/* 1FA20 8001EE20 0C005A35 */  jal        func_800168D4
/* 1FA24 8001EE24 AFA20010 */   sw        $v0, 0x10($sp)
/* 1FA28 8001EE28 08007BB2 */  j          .L8001EEC8
/* 1FA2C 8001EE2C 24020001 */   addiu     $v0, $zero, 0x1
.L8001EE30:
/* 1FA30 8001EE30 8E020040 */  lw         $v0, 0x40($s0)
/* 1FA34 8001EE34 0441000F */  bgez       $v0, .L8001EE74
/* 1FA38 8001EE38 00000000 */   nop
/* 1FA3C 8001EE3C 8E02000C */  lw         $v0, 0xC($s0)
/* 1FA40 8001EE40 3C04803F */  lui        $a0, %hi(D_803ED3D3)
/* 1FA44 8001EE44 9084D3D3 */  lbu        $a0, %lo(D_803ED3D3)($a0)
/* 1FA48 8001EE48 8C420030 */  lw         $v0, 0x30($v0)
/* 1FA4C 8001EE4C 2483FFF7 */  addiu      $v1, $a0, -0x9
/* 1FA50 8001EE50 2442FFF6 */  addiu      $v0, $v0, -0xA
/* 1FA54 8001EE54 04610002 */  bgez       $v1, .L8001EE60
/* 1FA58 8001EE58 00022902 */   srl       $a1, $v0, 4
/* 1FA5C 8001EE5C 24830006 */  addiu      $v1, $a0, 0x6
.L8001EE60:
/* 1FA60 8001EE60 00031103 */  sra        $v0, $v1, 4
/* 1FA64 8001EE64 10A2000F */  beq        $a1, $v0, .L8001EEA4
/* 1FA68 8001EE68 00000000 */   nop
/* 1FA6C 8001EE6C 08007BB2 */  j          .L8001EEC8
/* 1FA70 8001EE70 00001021 */   addu      $v0, $zero, $zero
.L8001EE74:
/* 1FA74 8001EE74 8E02000C */  lw         $v0, 0xC($s0)
/* 1FA78 8001EE78 3C04803F */  lui        $a0, %hi(D_803ED3D3)
/* 1FA7C 8001EE7C 9084D3D3 */  lbu        $a0, %lo(D_803ED3D3)($a0)
/* 1FA80 8001EE80 8C420030 */  lw         $v0, 0x30($v0)
/* 1FA84 8001EE84 2483FFF7 */  addiu      $v1, $a0, -0x9
/* 1FA88 8001EE88 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1FA8C 8001EE8C 04610002 */  bgez       $v1, .L8001EE98
/* 1FA90 8001EE90 00022902 */   srl       $a1, $v0, 4
/* 1FA94 8001EE94 24830006 */  addiu      $v1, $a0, 0x6
.L8001EE98:
/* 1FA98 8001EE98 00031103 */  sra        $v0, $v1, 4
/* 1FA9C 8001EE9C 54A2000A */  bnel       $a1, $v0, .L8001EEC8
/* 1FAA0 8001EEA0 00001021 */   addu      $v0, $zero, $zero
.L8001EEA4:
/* 1FAA4 8001EEA4 8E02000C */  lw         $v0, 0xC($s0)
/* 1FAA8 8001EEA8 8E040040 */  lw         $a0, 0x40($s0)
/* 1FAAC 8001EEAC 8C430030 */  lw         $v1, 0x30($v0)
/* 1FAB0 8001EEB0 00641821 */  addu       $v1, $v1, $a0
/* 1FAB4 8001EEB4 AC430030 */  sw         $v1, 0x30($v0)
/* 1FAB8 8001EEB8 08007BB2 */  j          .L8001EEC8
/* 1FABC 8001EEBC 00001021 */   addu      $v0, $zero, $zero
.L8001EEC0:
/* 1FAC0 8001EEC0 0C00487F */  jal        func_800121FC
/* 1FAC4 8001EEC4 02203021 */   addu      $a2, $s1, $zero
.L8001EEC8:
/* 1FAC8 8001EEC8 8FBF0040 */  lw         $ra, 0x40($sp)
/* 1FACC 8001EECC 8FB1003C */  lw         $s1, 0x3C($sp)
/* 1FAD0 8001EED0 8FB00038 */  lw         $s0, 0x38($sp)
/* 1FAD4 8001EED4 03E00008 */  jr         $ra
/* 1FAD8 8001EED8 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8001EEDC
/* 1FADC 8001EEDC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1FAE0 8001EEE0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FAE4 8001EEE4 00808821 */  addu       $s1, $a0, $zero
/* 1FAE8 8001EEE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FAEC 8001EEEC 00A08021 */  addu       $s0, $a1, $zero
/* 1FAF0 8001EEF0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1FAF4 8001EEF4 00C09021 */  addu       $s2, $a2, $zero
/* 1FAF8 8001EEF8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1FAFC 8001EEFC 00E09821 */  addu       $s3, $a3, $zero
/* 1FB00 8001EF00 24020001 */  addiu      $v0, $zero, 0x1
/* 1FB04 8001EF04 1202002D */  beq        $s0, $v0, .L8001EFBC
/* 1FB08 8001EF08 AFBF0020 */   sw        $ra, 0x20($sp)
/* 1FB0C 8001EF0C 12000008 */  beqz       $s0, .L8001EF30
/* 1FB10 8001EF10 00000000 */   nop
/* 1FB14 8001EF14 2402000B */  addiu      $v0, $zero, 0xB
/* 1FB18 8001EF18 1202002C */  beq        $s0, $v0, .L8001EFCC
/* 1FB1C 8001EF1C 2402000C */   addiu     $v0, $zero, 0xC
/* 1FB20 8001EF20 1202002D */  beq        $s0, $v0, .L8001EFD8
/* 1FB24 8001EF24 02202021 */   addu      $a0, $s1, $zero
/* 1FB28 8001EF28 08007BFC */  j          .L8001EFF0
/* 1FB2C 8001EF2C 02002821 */   addu      $a1, $s0, $zero
.L8001EF30:
/* 1FB30 8001EF30 0C000ED9 */  jal        func_80003B64
/* 1FB34 8001EF34 00000000 */   nop
/* 1FB38 8001EF38 0C001566 */  jal        func_80005598
/* 1FB3C 8001EF3C 240400A3 */   addiu     $a0, $zero, 0xA3
/* 1FB40 8001EF40 0C0015B7 */  jal        func_800056DC
/* 1FB44 8001EF44 240400A3 */   addiu     $a0, $zero, 0xA3
/* 1FB48 8001EF48 02202021 */  addu       $a0, $s1, $zero
/* 1FB4C 8001EF4C 02002821 */  addu       $a1, $s0, $zero
/* 1FB50 8001EF50 3C10803F */  lui        $s0, %hi(D_803ED3D3)
/* 1FB54 8001EF54 2610D3D3 */  addiu      $s0, $s0, %lo(D_803ED3D3)
/* 1FB58 8001EF58 92030000 */  lbu        $v1, 0x0($s0)
/* 1FB5C 8001EF5C 02403021 */  addu       $a2, $s2, $zero
/* 1FB60 8001EF60 02603821 */  addu       $a3, $s3, $zero
/* 1FB64 8001EF64 3C01800B */  lui        $at, %hi(D_800B5D10)
/* 1FB68 8001EF68 AC225D10 */  sw         $v0, %lo(D_800B5D10)($at)
/* 1FB6C 8001EF6C 2402FFF8 */  addiu      $v0, $zero, -0x8
/* 1FB70 8001EF70 2463FFF7 */  addiu      $v1, $v1, -0x9
/* 1FB74 8001EF74 00621824 */  and        $v1, $v1, $v0
/* 1FB78 8001EF78 24630009 */  addiu      $v1, $v1, 0x9
/* 1FB7C 8001EF7C 0C0045DC */  jal        func_80011770
/* 1FB80 8001EF80 AE230030 */   sw        $v1, 0x30($s1)
/* 1FB84 8001EF84 92020000 */  lbu        $v0, 0x0($s0)
/* 1FB88 8001EF88 02202021 */  addu       $a0, $s1, $zero
/* 1FB8C 8001EF8C 2442FFF7 */  addiu      $v0, $v0, -0x9
/* 1FB90 8001EF90 30420007 */  andi       $v0, $v0, 0x7
/* 1FB94 8001EF94 00021080 */  sll        $v0, $v0, 2
/* 1FB98 8001EF98 3C06800B */  lui        $a2, %hi(D_800B5F94)
/* 1FB9C 8001EF9C 00C23021 */  addu       $a2, $a2, $v0
/* 1FBA0 8001EFA0 8CC65F94 */  lw         $a2, %lo(D_800B5F94)($a2)
/* 1FBA4 8001EFA4 8C820000 */  lw         $v0, 0x0($a0)
/* 1FBA8 8001EFA8 24050007 */  addiu      $a1, $zero, 0x7
/* 1FBAC 8001EFAC 0040F809 */  jalr       $v0
/* 1FBB0 8001EFB0 00003821 */   addu      $a3, $zero, $zero
/* 1FBB4 8001EFB4 08007BFF */  j          .L8001EFFC
/* 1FBB8 8001EFB8 24020001 */   addiu     $v0, $zero, 0x1
.L8001EFBC:
/* 1FBBC 8001EFBC 0C0015AF */  jal        func_800056BC
/* 1FBC0 8001EFC0 240400A3 */   addiu     $a0, $zero, 0xA3
/* 1FBC4 8001EFC4 08007BFB */  j          .L8001EFEC
/* 1FBC8 8001EFC8 02202021 */   addu      $a0, $s1, $zero
.L8001EFCC:
/* 1FBCC 8001EFCC 02202021 */  addu       $a0, $s1, $zero
/* 1FBD0 8001EFD0 08007BF7 */  j          .L8001EFDC
/* 1FBD4 8001EFD4 24050001 */   addiu     $a1, $zero, 0x1
.L8001EFD8:
/* 1FBD8 8001EFD8 00002821 */  addu       $a1, $zero, $zero
.L8001EFDC:
/* 1FBDC 8001EFDC 0C004204 */  jal        func_80010810
/* 1FBE0 8001EFE0 00000000 */   nop
/* 1FBE4 8001EFE4 08007BFF */  j          .L8001EFFC
/* 1FBE8 8001EFE8 24020001 */   addiu     $v0, $zero, 0x1
.L8001EFEC:
/* 1FBEC 8001EFEC 02002821 */  addu       $a1, $s0, $zero
.L8001EFF0:
/* 1FBF0 8001EFF0 02403021 */  addu       $a2, $s2, $zero
/* 1FBF4 8001EFF4 0C0045DC */  jal        func_80011770
/* 1FBF8 8001EFF8 02603821 */   addu      $a3, $s3, $zero
.L8001EFFC:
/* 1FBFC 8001EFFC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1FC00 8001F000 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1FC04 8001F004 8FB20018 */  lw         $s2, 0x18($sp)
/* 1FC08 8001F008 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FC0C 8001F00C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FC10 8001F010 03E00008 */  jr         $ra
/* 1FC14 8001F014 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001F018
/* 1FC18 8001F018 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1FC1C 8001F01C AFB00010 */  sw         $s0, 0x10($sp)
/* 1FC20 8001F020 00808021 */  addu       $s0, $a0, $zero
/* 1FC24 8001F024 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1FC28 8001F028 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1FC2C 8001F02C AFB20018 */  sw         $s2, 0x18($sp)
/* 1FC30 8001F030 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FC34 8001F034 8E02000C */  lw         $v0, 0xC($s0)
/* 1FC38 8001F038 00A08821 */  addu       $s1, $a1, $zero
/* 1FC3C 8001F03C 8C430030 */  lw         $v1, 0x30($v0)
/* 1FC40 8001F040 00C09021 */  addu       $s2, $a2, $zero
/* 1FC44 8001F044 00031140 */  sll        $v0, $v1, 5
/* 1FC48 8001F048 00431023 */  subu       $v0, $v0, $v1
/* 1FC4C 8001F04C 00021100 */  sll        $v0, $v0, 4
/* 1FC50 8001F050 3C03803F */  lui        $v1, %hi(D_803ED3F0)
/* 1FC54 8001F054 2463D3F0 */  addiu      $v1, $v1, %lo(D_803ED3F0)
/* 1FC58 8001F058 00432021 */  addu       $a0, $v0, $v1
/* 1FC5C 8001F05C 24020080 */  addiu      $v0, $zero, 0x80
/* 1FC60 8001F060 12220006 */  beq        $s1, $v0, .L8001F07C
/* 1FC64 8001F064 00E09821 */   addu      $s3, $a3, $zero
/* 1FC68 8001F068 2402008A */  addiu      $v0, $zero, 0x8A
/* 1FC6C 8001F06C 1222000A */  beq        $s1, $v0, .L8001F098
/* 1FC70 8001F070 00000000 */   nop
/* 1FC74 8001F074 08007C30 */  j          .L8001F0C0
/* 1FC78 8001F078 02002021 */   addu      $a0, $s0, $zero
.L8001F07C:
/* 1FC7C 8001F07C 8E020040 */  lw         $v0, 0x40($s0)
/* 1FC80 8001F080 00021080 */  sll        $v0, $v0, 2
/* 1FC84 8001F084 3C01800D */  lui        $at, %hi(D_800CD2D4)
/* 1FC88 8001F088 00220821 */  addu       $at, $at, $v0
/* 1FC8C 8001F08C 8C22D2D4 */  lw         $v0, %lo(D_800CD2D4)($at)
/* 1FC90 8001F090 08007C2F */  j          .L8001F0BC
/* 1FC94 8001F094 AE020024 */   sw        $v0, 0x24($s0)
.L8001F098:
/* 1FC98 8001F098 8E020040 */  lw         $v0, 0x40($s0)
/* 1FC9C 8001F09C 3C06800B */  lui        $a2, %hi(D_800B6088)
/* 1FCA0 8001F0A0 8CC66088 */  lw         $a2, %lo(D_800B6088)($a2)
/* 1FCA4 8001F0A4 3C01800B */  lui        $at, %hi(D_800B6040)
/* 1FCA8 8001F0A8 AC226040 */  sw         $v0, %lo(D_800B6040)($at)
/* 1FCAC 8001F0AC 0C007678 */  jal        func_8001D9E0
/* 1FCB0 8001F0B0 8E050040 */   lw        $a1, 0x40($s0)
/* 1FCB4 8001F0B4 3C01800B */  lui        $at, %hi(D_800B6068)
/* 1FCB8 8001F0B8 AC226068 */  sw         $v0, %lo(D_800B6068)($at)
.L8001F0BC:
/* 1FCBC 8001F0BC 02002021 */  addu       $a0, $s0, $zero
.L8001F0C0:
/* 1FCC0 8001F0C0 02202821 */  addu       $a1, $s1, $zero
/* 1FCC4 8001F0C4 02403021 */  addu       $a2, $s2, $zero
/* 1FCC8 8001F0C8 0C00487F */  jal        func_800121FC
/* 1FCCC 8001F0CC 02603821 */   addu      $a3, $s3, $zero
/* 1FCD0 8001F0D0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1FCD4 8001F0D4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1FCD8 8001F0D8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1FCDC 8001F0DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FCE0 8001F0E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FCE4 8001F0E4 03E00008 */  jr         $ra
/* 1FCE8 8001F0E8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001F0EC
/* 1FCEC 8001F0EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1FCF0 8001F0F0 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FCF4 8001F0F4 00808821 */  addu       $s1, $a0, $zero
/* 1FCF8 8001F0F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FCFC 8001F0FC 00A08021 */  addu       $s0, $a1, $zero
/* 1FD00 8001F100 AFB20018 */  sw         $s2, 0x18($sp)
/* 1FD04 8001F104 00C09021 */  addu       $s2, $a2, $zero
/* 1FD08 8001F108 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1FD0C 8001F10C 00E09821 */  addu       $s3, $a3, $zero
/* 1FD10 8001F110 24020001 */  addiu      $v0, $zero, 0x1
/* 1FD14 8001F114 12020021 */  beq        $s0, $v0, .L8001F19C
/* 1FD18 8001F118 AFBF0020 */   sw        $ra, 0x20($sp)
/* 1FD1C 8001F11C 12000008 */  beqz       $s0, .L8001F140
/* 1FD20 8001F120 00000000 */   nop
/* 1FD24 8001F124 2E02000D */  sltiu      $v0, $s0, 0xD
/* 1FD28 8001F128 10400024 */  beqz       $v0, .L8001F1BC
/* 1FD2C 8001F12C 2E02000B */   sltiu     $v0, $s0, 0xB
/* 1FD30 8001F130 14400023 */  bnez       $v0, .L8001F1C0
/* 1FD34 8001F134 02202021 */   addu      $a0, $s1, $zero
/* 1FD38 8001F138 08007C6B */  j          .L8001F1AC
/* 1FD3C 8001F13C 00000000 */   nop
.L8001F140:
/* 1FD40 8001F140 0C000ED9 */  jal        func_80003B64
/* 1FD44 8001F144 00000000 */   nop
/* 1FD48 8001F148 240400A3 */  addiu      $a0, $zero, 0xA3
/* 1FD4C 8001F14C 0C001566 */  jal        func_80005598
/* 1FD50 8001F150 AE320030 */   sw        $s2, 0x30($s1)
/* 1FD54 8001F154 02202021 */  addu       $a0, $s1, $zero
/* 1FD58 8001F158 02002821 */  addu       $a1, $s0, $zero
/* 1FD5C 8001F15C 02403021 */  addu       $a2, $s2, $zero
/* 1FD60 8001F160 0C0045DC */  jal        func_80011770
/* 1FD64 8001F164 02603821 */   addu      $a3, $s3, $zero
/* 1FD68 8001F168 3C02803F */  lui        $v0, %hi(D_803ED3DC)
/* 1FD6C 8001F16C 9042D3DC */  lbu        $v0, %lo(D_803ED3DC)($v0)
/* 1FD70 8001F170 00021080 */  sll        $v0, $v0, 2
/* 1FD74 8001F174 3C06800B */  lui        $a2, %hi(D_800B6378)
/* 1FD78 8001F178 00C23021 */  addu       $a2, $a2, $v0
/* 1FD7C 8001F17C 8CC66378 */  lw         $a2, %lo(D_800B6378)($a2)
/* 1FD80 8001F180 8CC4000C */  lw         $a0, 0xC($a2)
/* 1FD84 8001F184 8C820000 */  lw         $v0, 0x0($a0)
/* 1FD88 8001F188 24050007 */  addiu      $a1, $zero, 0x7
/* 1FD8C 8001F18C 0040F809 */  jalr       $v0
/* 1FD90 8001F190 00003821 */   addu      $a3, $zero, $zero
/* 1FD94 8001F194 08007C74 */  j          .L8001F1D0
/* 1FD98 8001F198 24020001 */   addiu     $v0, $zero, 0x1
.L8001F19C:
/* 1FD9C 8001F19C 0C0015AF */  jal        func_800056BC
/* 1FDA0 8001F1A0 240400A3 */   addiu     $a0, $zero, 0xA3
/* 1FDA4 8001F1A4 08007C70 */  j          .L8001F1C0
/* 1FDA8 8001F1A8 02202021 */   addu      $a0, $s1, $zero
.L8001F1AC:
/* 1FDAC 8001F1AC 0C004204 */  jal        func_80010810
/* 1FDB0 8001F1B0 00002821 */   addu      $a1, $zero, $zero
/* 1FDB4 8001F1B4 08007C74 */  j          .L8001F1D0
/* 1FDB8 8001F1B8 24020001 */   addiu     $v0, $zero, 0x1
.L8001F1BC:
/* 1FDBC 8001F1BC 02202021 */  addu       $a0, $s1, $zero
.L8001F1C0:
/* 1FDC0 8001F1C0 02002821 */  addu       $a1, $s0, $zero
/* 1FDC4 8001F1C4 02403021 */  addu       $a2, $s2, $zero
/* 1FDC8 8001F1C8 0C0045DC */  jal        func_80011770
/* 1FDCC 8001F1CC 02603821 */   addu      $a3, $s3, $zero
.L8001F1D0:
/* 1FDD0 8001F1D0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1FDD4 8001F1D4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1FDD8 8001F1D8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1FDDC 8001F1DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FDE0 8001F1E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FDE4 8001F1E4 03E00008 */  jr         $ra
/* 1FDE8 8001F1E8 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1FDEC 8001F1EC 00000000 */  nop
