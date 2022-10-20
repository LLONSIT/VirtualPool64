.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000BA10
/* C610 8000BA10 03E00008 */  jr         $ra
/* C614 8000BA14 00000000 */   nop

glabel func_8000BA18
/* C618 8000BA18 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C61C 8000BA1C AFB00018 */  sw         $s0, 0x18($sp)
/* C620 8000BA20 00808021 */  addu       $s0, $a0, $zero
/* C624 8000BA24 AFB40028 */  sw         $s4, 0x28($sp)
/* C628 8000BA28 00A0A021 */  addu       $s4, $a1, $zero
/* C62C 8000BA2C AFB5002C */  sw         $s5, 0x2C($sp)
/* C630 8000BA30 00C0A821 */  addu       $s5, $a2, $zero
/* C634 8000BA34 AFB20020 */  sw         $s2, 0x20($sp)
/* C638 8000BA38 26120040 */  addiu      $s2, $s0, 0x40
/* C63C 8000BA3C 02402021 */  addu       $a0, $s2, $zero
/* C640 8000BA40 26050058 */  addiu      $a1, $s0, 0x58
/* C644 8000BA44 24060008 */  addiu      $a2, $zero, 0x8
/* C648 8000BA48 24020001 */  addiu      $v0, $zero, 0x1
/* C64C 8000BA4C AFBF0030 */  sw         $ra, 0x30($sp)
/* C650 8000BA50 AFB30024 */  sw         $s3, 0x24($sp)
/* C654 8000BA54 AFB1001C */  sw         $s1, 0x1C($sp)
/* C658 8000BA58 A6020000 */  sh         $v0, 0x0($s0)
/* C65C 8000BA5C 24020004 */  addiu      $v0, $zero, 0x4
/* C660 8000BA60 AE000274 */  sw         $zero, 0x274($s0)
/* C664 8000BA64 AE000278 */  sw         $zero, 0x278($s0)
/* C668 8000BA68 AE000260 */  sw         $zero, 0x260($s0)
/* C66C 8000BA6C AE00027C */  sw         $zero, 0x27C($s0)
/* C670 8000BA70 AE000264 */  sw         $zero, 0x264($s0)
/* C674 8000BA74 AE000268 */  sw         $zero, 0x268($s0)
/* C678 8000BA78 AE00026C */  sw         $zero, 0x26C($s0)
/* C67C 8000BA7C AE000270 */  sw         $zero, 0x270($s0)
/* C680 8000BA80 A6020020 */  sh         $v0, 0x20($s0)
/* C684 8000BA84 93B3004B */  lbu        $s3, 0x4B($sp)
/* C688 8000BA88 0C0009FC */  jal        func_800027F0
/* C68C 8000BA8C 00E08821 */   addu      $s1, $a3, $zero
/* C690 8000BA90 26040078 */  addiu      $a0, $s0, 0x78
/* C694 8000BA94 26050090 */  addiu      $a1, $s0, 0x90
/* C698 8000BA98 0C0009FC */  jal        func_800027F0
/* C69C 8000BA9C 24060008 */   addiu     $a2, $zero, 0x8
/* C6A0 8000BAA0 0C025140 */  jal        func_80094500
/* C6A4 8000BAA4 240400FE */   addiu     $a0, $zero, 0xFE
/* C6A8 8000BAA8 323100FF */  andi       $s1, $s1, 0xFF
/* C6AC 8000BAAC 00112080 */  sll        $a0, $s1, 2
/* C6B0 8000BAB0 00912021 */  addu       $a0, $a0, $s1
/* C6B4 8000BAB4 00042100 */  sll        $a0, $a0, 4
/* C6B8 8000BAB8 3C02800D */  lui        $v0, %hi(D_800C9DD0)
/* C6BC 8000BABC 24429DD0 */  addiu      $v0, $v0, %lo(D_800C9DD0)
/* C6C0 8000BAC0 0C02462C */  jal        func_800918B0
/* C6C4 8000BAC4 00822021 */   addu      $a0, $a0, $v0
/* C6C8 8000BAC8 0C0246C4 */  jal        func_80091B10
/* C6CC 8000BACC 24040001 */   addiu     $a0, $zero, 0x1
/* C6D0 8000BAD0 24040004 */  addiu      $a0, $zero, 0x4
/* C6D4 8000BAD4 02402821 */  addu       $a1, $s2, $zero
/* C6D8 8000BAD8 0C0006B0 */  jal        osSetEventMesg
/* C6DC 8000BADC 2406029B */   addiu     $a2, $zero, 0x29B
/* C6E0 8000BAE0 24040009 */  addiu      $a0, $zero, 0x9
/* C6E4 8000BAE4 02402821 */  addu       $a1, $s2, $zero
/* C6E8 8000BAE8 0C0006B0 */  jal        osSetEventMesg
/* C6EC 8000BAEC 2406029C */   addiu     $a2, $zero, 0x29C
/* C6F0 8000BAF0 2404000E */  addiu      $a0, $zero, 0xE
/* C6F4 8000BAF4 02402821 */  addu       $a1, $s2, $zero
/* C6F8 8000BAF8 0C0006B0 */  jal        osSetEventMesg
/* C6FC 8000BAFC 2406029D */   addiu     $a2, $zero, 0x29D
/* C700 8000BB00 02402021 */  addu       $a0, $s2, $zero
/* C704 8000BB04 2405029A */  addiu      $a1, $zero, 0x29A
/* C708 8000BB08 0C024614 */  jal        func_80091850
/* C70C 8000BB0C 02603021 */   addu      $a2, $s3, $zero
/* C710 8000BB10 261100B0 */  addiu      $s1, $s0, 0xB0
/* C714 8000BB14 02202021 */  addu       $a0, $s1, $zero
/* C718 8000BB18 24050004 */  addiu      $a1, $zero, 0x4
/* C71C 8000BB1C 3C068001 */  lui        $a2, %hi(func_8000BCFC)
/* C720 8000BB20 24C6BCFC */  addiu      $a2, $a2, %lo(func_8000BCFC)
/* C724 8000BB24 02003821 */  addu       $a3, $s0, $zero
/* C728 8000BB28 AFB40010 */  sw         $s4, 0x10($sp)
/* C72C 8000BB2C 0C000168 */  jal        osCreateThread
/* C730 8000BB30 AFB50014 */   sw        $s5, 0x14($sp)
/* C734 8000BB34 0C000254 */  jal        osStartThread
/* C738 8000BB38 02202021 */   addu      $a0, $s1, $zero
/* C73C 8000BB3C 8FBF0030 */  lw         $ra, 0x30($sp)
/* C740 8000BB40 8FB5002C */  lw         $s5, 0x2C($sp)
/* C744 8000BB44 8FB40028 */  lw         $s4, 0x28($sp)
/* C748 8000BB48 8FB30024 */  lw         $s3, 0x24($sp)
/* C74C 8000BB4C 8FB20020 */  lw         $s2, 0x20($sp)
/* C750 8000BB50 8FB1001C */  lw         $s1, 0x1C($sp)
/* C754 8000BB54 8FB00018 */  lw         $s0, 0x18($sp)
/* C758 8000BB58 03E00008 */  jr         $ra
/* C75C 8000BB5C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8000BB60
/* C760 8000BB60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C764 8000BB64 AFB20018 */  sw         $s2, 0x18($sp)
/* C768 8000BB68 00809021 */  addu       $s2, $a0, $zero
/* C76C 8000BB6C AFB00010 */  sw         $s0, 0x10($sp)
/* C770 8000BB70 00A08021 */  addu       $s0, $a1, $zero
/* C774 8000BB74 AFB10014 */  sw         $s1, 0x14($sp)
/* C778 8000BB78 00C08821 */  addu       $s1, $a2, $zero
/* C77C 8000BB7C AFBF001C */  sw         $ra, 0x1C($sp)
/* C780 8000BB80 0C000614 */  jal        func_80001850
/* C784 8000BB84 24040001 */   addiu     $a0, $zero, 0x1
/* C788 8000BB88 AE110004 */  sw         $s1, 0x4($s0)
/* C78C 8000BB8C 8E430260 */  lw         $v1, 0x260($s2)
/* C790 8000BB90 00402021 */  addu       $a0, $v0, $zero
/* C794 8000BB94 AE030000 */  sw         $v1, 0x0($s0)
/* C798 8000BB98 0C000614 */  jal        func_80001850
/* C79C 8000BB9C AE500260 */   sw        $s0, 0x260($s2)
/* C7A0 8000BBA0 8FBF001C */  lw         $ra, 0x1C($sp)
/* C7A4 8000BBA4 8FB20018 */  lw         $s2, 0x18($sp)
/* C7A8 8000BBA8 8FB10014 */  lw         $s1, 0x14($sp)
/* C7AC 8000BBAC 8FB00010 */  lw         $s0, 0x10($sp)
/* C7B0 8000BBB0 03E00008 */  jr         $ra
/* C7B4 8000BBB4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000BBB8
/* C7B8 8000BBB8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C7BC 8000BBBC AFB20018 */  sw         $s2, 0x18($sp)
/* C7C0 8000BBC0 00809021 */  addu       $s2, $a0, $zero
/* C7C4 8000BBC4 AFB3001C */  sw         $s3, 0x1C($sp)
/* C7C8 8000BBC8 00A09821 */  addu       $s3, $a1, $zero
/* C7CC 8000BBCC AFBF0020 */  sw         $ra, 0x20($sp)
/* C7D0 8000BBD0 AFB10014 */  sw         $s1, 0x14($sp)
/* C7D4 8000BBD4 AFB00010 */  sw         $s0, 0x10($sp)
/* C7D8 8000BBD8 8E500260 */  lw         $s0, 0x260($s2)
/* C7DC 8000BBDC 00008821 */  addu       $s1, $zero, $zero
/* C7E0 8000BBE0 0C000614 */  jal        func_80001850
/* C7E4 8000BBE4 24040001 */   addiu     $a0, $zero, 0x1
/* C7E8 8000BBE8 1200000E */  beqz       $s0, .L8000BC24
/* C7EC 8000BBEC 00402021 */   addu      $a0, $v0, $zero
.L8000BBF0:
/* C7F0 8000BBF0 56130009 */  bnel       $s0, $s3, .L8000BC18
/* C7F4 8000BBF4 02008821 */   addu      $s1, $s0, $zero
/* C7F8 8000BBF8 12200004 */  beqz       $s1, .L8000BC0C
/* C7FC 8000BBFC 00000000 */   nop
/* C800 8000BC00 8E020000 */  lw         $v0, 0x0($s0)
/* C804 8000BC04 08002F09 */  j          .L8000BC24
/* C808 8000BC08 AE220000 */   sw        $v0, 0x0($s1)
.L8000BC0C:
/* C80C 8000BC0C 8E020000 */  lw         $v0, 0x0($s0)
/* C810 8000BC10 08002F09 */  j          .L8000BC24
/* C814 8000BC14 AE420260 */   sw        $v0, 0x260($s2)
.L8000BC18:
/* C818 8000BC18 8E100000 */  lw         $s0, 0x0($s0)
/* C81C 8000BC1C 1600FFF4 */  bnez       $s0, .L8000BBF0
/* C820 8000BC20 00000000 */   nop
.L8000BC24:
/* C824 8000BC24 0C000614 */  jal        func_80001850
/* C828 8000BC28 00000000 */   nop
/* C82C 8000BC2C 8FBF0020 */  lw         $ra, 0x20($sp)
/* C830 8000BC30 8FB3001C */  lw         $s3, 0x1C($sp)
/* C834 8000BC34 8FB20018 */  lw         $s2, 0x18($sp)
/* C838 8000BC38 8FB10014 */  lw         $s1, 0x14($sp)
/* C83C 8000BC3C 8FB00010 */  lw         $s0, 0x10($sp)
/* C840 8000BC40 03E00008 */  jr         $ra
/* C844 8000BC44 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000BC48
/* C848 8000BC48 03E00008 */  jr         $ra
/* C84C 8000BC4C 24820078 */   addiu     $v0, $a0, 0x78

glabel func_8000BC50
/* C850 8000BC50 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C854 8000BC54 AFB00020 */  sw         $s0, 0x20($sp)
/* C858 8000BC58 00808021 */  addu       $s0, $a0, $zero
/* C85C 8000BC5C AFB10024 */  sw         $s1, 0x24($sp)
/* C860 8000BC60 2411FFFF */  addiu      $s1, $zero, -0x1
/* C864 8000BC64 AFBF0028 */  sw         $ra, 0x28($sp)
/* C868 8000BC68 AFA00014 */  sw         $zero, 0x14($sp)
/* C86C 8000BC6C AFA00018 */  sw         $zero, 0x18($sp)
/* C870 8000BC70 26040078 */  addiu      $a0, $s0, 0x78
.L8000BC74:
/* C874 8000BC74 27A50010 */  addiu      $a1, $sp, 0x10
/* C878 8000BC78 0C000B3C */  jal        osRecvMesg
/* C87C 8000BC7C 00003021 */   addu      $a2, $zero, $zero
/* C880 8000BC80 10510006 */  beq        $v0, $s1, .L8000BC9C
/* C884 8000BC84 00000000 */   nop
/* C888 8000BC88 8FA50010 */  lw         $a1, 0x10($sp)
/* C88C 8000BC8C 0C00308F */  jal        func_8000C23C
/* C890 8000BC90 02002021 */   addu      $a0, $s0, $zero
/* C894 8000BC94 08002F1D */  j          .L8000BC74
/* C898 8000BC98 26040078 */   addiu     $a0, $s0, 0x78
.L8000BC9C:
/* C89C 8000BC9C 8E020274 */  lw         $v0, 0x274($s0)
/* C8A0 8000BCA0 8E030278 */  lw         $v1, 0x278($s0)
/* C8A4 8000BCA4 2C420001 */  sltiu      $v0, $v0, 0x1
/* C8A8 8000BCA8 14600002 */  bnez       $v1, .L8000BCB4
/* C8AC 8000BCAC 00028840 */   sll       $s1, $v0, 1
/* C8B0 8000BCB0 36310001 */  ori        $s1, $s1, 0x1
.L8000BCB4:
/* C8B4 8000BCB4 24020003 */  addiu      $v0, $zero, 0x3
/* C8B8 8000BCB8 1622000B */  bne        $s1, $v0, .L8000BCE8
/* C8BC 8000BCBC 02002021 */   addu      $a0, $s0, $zero
/* C8C0 8000BCC0 27A50014 */  addiu      $a1, $sp, 0x14
/* C8C4 8000BCC4 27A60018 */  addiu      $a2, $sp, 0x18
/* C8C8 8000BCC8 0C0030EA */  jal        func_8000C3A8
/* C8CC 8000BCCC 24070003 */   addiu     $a3, $zero, 0x3
/* C8D0 8000BCD0 10510005 */  beq        $v0, $s1, .L8000BCE8
/* C8D4 8000BCD4 00000000 */   nop
/* C8D8 8000BCD8 8FA50014 */  lw         $a1, 0x14($sp)
/* C8DC 8000BCDC 8FA60018 */  lw         $a2, 0x18($sp)
/* C8E0 8000BCE0 0C0030A5 */  jal        func_8000C294
/* C8E4 8000BCE4 02002021 */   addu      $a0, $s0, $zero
.L8000BCE8:
/* C8E8 8000BCE8 8FBF0028 */  lw         $ra, 0x28($sp)
/* C8EC 8000BCEC 8FB10024 */  lw         $s1, 0x24($sp)
/* C8F0 8000BCF0 8FB00020 */  lw         $s0, 0x20($sp)
/* C8F4 8000BCF4 03E00008 */  jr         $ra
/* C8F8 8000BCF8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000BCFC
/* C8FC 8000BCFC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C900 8000BD00 AFB1001C */  sw         $s1, 0x1C($sp)
/* C904 8000BD04 00808821 */  addu       $s1, $a0, $zero
/* C908 8000BD08 AFB30024 */  sw         $s3, 0x24($sp)
/* C90C 8000BD0C 3C13800D */  lui        $s3, %hi(jtbl_800CD1B0_main)
/* C910 8000BD10 2673D1B0 */  addiu      $s3, $s3, %lo(jtbl_800CD1B0_main)
/* C914 8000BD14 AFB20020 */  sw         $s2, 0x20($sp)
/* C918 8000BD18 24120001 */  addiu      $s2, $zero, 0x1
/* C91C 8000BD1C AFBF0028 */  sw         $ra, 0x28($sp)
/* C920 8000BD20 AFB00018 */  sw         $s0, 0x18($sp)
/* C924 8000BD24 26240040 */  addiu      $a0, $s1, 0x40
.L8000BD28:
/* C928 8000BD28 27A50010 */  addiu      $a1, $sp, 0x10
/* C92C 8000BD2C 0C000B3C */  jal        osRecvMesg
/* C930 8000BD30 24060001 */   addiu     $a2, $zero, 0x1
/* C934 8000BD34 8FA40010 */  lw         $a0, 0x10($sp)
/* C938 8000BD38 3884029A */  xori       $a0, $a0, 0x29A
/* C93C 8000BD3C 0C0011F8 */  jal        func_800047E0
/* C940 8000BD40 2C840001 */   sltiu     $a0, $a0, 0x1
/* C944 8000BD44 8FA20010 */  lw         $v0, 0x10($sp)
/* C948 8000BD48 2443FD66 */  addiu      $v1, $v0, -0x29A
/* C94C 8000BD4C 2C620005 */  sltiu      $v0, $v1, 0x5
/* C950 8000BD50 5040FFF5 */  beql       $v0, $zero, .L8000BD28
/* C954 8000BD54 26240040 */   addiu     $a0, $s1, 0x40
/* C958 8000BD58 00031080 */  sll        $v0, $v1, 2
/* C95C 8000BD5C 00531021 */  addu       $v0, $v0, $s3
/* C960 8000BD60 8C420000 */  lw         $v0, 0x0($v0)
/* C964 8000BD64 00400008 */  jr         $v0
/* C968 8000BD68 00000000 */   nop
glabel L8000BD6C
/* C96C 8000BD6C 3C02800B */  lui        $v0, %hi(D_800AB1E0)
/* C970 8000BD70 8C42B1E0 */  lw         $v0, %lo(D_800AB1E0)($v0)
/* C974 8000BD74 5440FFEC */  bnel       $v0, $zero, .L8000BD28
/* C978 8000BD78 26240040 */   addiu     $a0, $s1, 0x40
/* C97C 8000BD7C 0C002F14 */  jal        func_8000BC50
/* C980 8000BD80 02202021 */   addu      $a0, $s1, $zero
/* C984 8000BD84 08002F4A */  j          .L8000BD28
/* C988 8000BD88 26240040 */   addiu     $a0, $s1, 0x40
glabel L8000BD8C
/* C98C 8000BD8C 3C02800B */  lui        $v0, %hi(D_800AB1E0)
/* C990 8000BD90 8C42B1E0 */  lw         $v0, %lo(D_800AB1E0)($v0)
/* C994 8000BD94 14400005 */  bnez       $v0, .L8000BDAC
/* C998 8000BD98 00000000 */   nop
/* C99C 8000BD9C 0C002F99 */  jal        func_8000BE64
/* C9A0 8000BDA0 02202021 */   addu      $a0, $s1, $zero
/* C9A4 8000BDA4 08002F4A */  j          .L8000BD28
/* C9A8 8000BDA8 26240040 */   addiu     $a0, $s1, 0x40
.L8000BDAC:
/* C9AC 8000BDAC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C9B0 8000BDB0 44816000 */  mtc1       $at, $f12
/* C9B4 8000BDB4 0C02469C */  jal        func_80091A70
/* C9B8 8000BDB8 00000000 */   nop
/* C9BC 8000BDBC 0C0246C4 */  jal        func_80091B10
/* C9C0 8000BDC0 24040001 */   addiu     $a0, $zero, 0x1
/* C9C4 8000BDC4 08002F4A */  j          .L8000BD28
/* C9C8 8000BDC8 26240040 */   addiu     $a0, $s1, 0x40
glabel L8000BDCC
/* C9CC 8000BDCC 3C02800B */  lui        $v0, %hi(D_800AB1E0)
/* C9D0 8000BDD0 8C42B1E0 */  lw         $v0, %lo(D_800AB1E0)($v0)
/* C9D4 8000BDD4 5440FFD4 */  bnel       $v0, $zero, .L8000BD28
/* C9D8 8000BDD8 26240040 */   addiu     $a0, $s1, 0x40
/* C9DC 8000BDDC 0C002FD9 */  jal        func_8000BF64
/* C9E0 8000BDE0 02202021 */   addu      $a0, $s1, $zero
/* C9E4 8000BDE4 08002F4A */  j          .L8000BD28
/* C9E8 8000BDE8 26240040 */   addiu     $a0, $s1, 0x40
glabel L8000BDEC
/* C9EC 8000BDEC 3C02800B */  lui        $v0, %hi(D_800AB1E0)
/* C9F0 8000BDF0 8C42B1E0 */  lw         $v0, %lo(D_800AB1E0)($v0)
/* C9F4 8000BDF4 5440FFCC */  bnel       $v0, $zero, .L8000BD28
/* C9F8 8000BDF8 26240040 */   addiu     $a0, $s1, 0x40
/* C9FC 8000BDFC 0C003023 */  jal        func_8000C08C
/* CA00 8000BE00 02202021 */   addu      $a0, $s1, $zero
/* CA04 8000BE04 08002F4A */  j          .L8000BD28
/* CA08 8000BE08 26240040 */   addiu     $a0, $s1, 0x40
glabel L8000BE0C
/* CA0C 8000BE0C 3C01800B */  lui        $at, %hi(D_800AB1E0)
/* CA10 8000BE10 0C0014E4 */  jal        func_80005390
/* CA14 8000BE14 AC32B1E0 */   sw        $s2, %lo(D_800AB1E0)($at)
/* CA18 8000BE18 8E300260 */  lw         $s0, 0x260($s1)
/* CA1C 8000BE1C 1200FFC2 */  beqz       $s0, .L8000BD28
/* CA20 8000BE20 26240040 */   addiu     $a0, $s1, 0x40
.L8000BE24:
/* CA24 8000BE24 8E040004 */  lw         $a0, 0x4($s0)
/* CA28 8000BE28 26250020 */  addiu      $a1, $s1, 0x20
/* CA2C 8000BE2C 0C000B9C */  jal        osSendMesg
/* CA30 8000BE30 00003021 */   addu      $a2, $zero, $zero
/* CA34 8000BE34 8E100000 */  lw         $s0, 0x0($s0)
/* CA38 8000BE38 1600FFFA */  bnez       $s0, .L8000BE24
/* CA3C 8000BE3C 26240040 */   addiu     $a0, $s1, 0x40
/* CA40 8000BE40 08002F4A */  j          .L8000BD28
/* CA44 8000BE44 00000000 */   nop
/* CA48 8000BE48 8FBF0028 */  lw         $ra, 0x28($sp)
/* CA4C 8000BE4C 8FB30024 */  lw         $s3, 0x24($sp)
/* CA50 8000BE50 8FB20020 */  lw         $s2, 0x20($sp)
/* CA54 8000BE54 8FB1001C */  lw         $s1, 0x1C($sp)
/* CA58 8000BE58 8FB00018 */  lw         $s0, 0x18($sp)
/* CA5C 8000BE5C 03E00008 */  jr         $ra
/* CA60 8000BE60 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000BE64
/* CA64 8000BE64 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CA68 8000BE68 AFB10024 */  sw         $s1, 0x24($sp)
/* CA6C 8000BE6C 00808821 */  addu       $s1, $a0, $zero
/* CA70 8000BE70 AFBF0028 */  sw         $ra, 0x28($sp)
/* CA74 8000BE74 AFB00020 */  sw         $s0, 0x20($sp)
/* CA78 8000BE78 8E22027C */  lw         $v0, 0x27C($s1)
/* CA7C 8000BE7C 2410FFFF */  addiu      $s0, $zero, -0x1
/* CA80 8000BE80 AFA00014 */  sw         $zero, 0x14($sp)
/* CA84 8000BE84 AFA00018 */  sw         $zero, 0x18($sp)
/* CA88 8000BE88 24420001 */  addiu      $v0, $v0, 0x1
/* CA8C 8000BE8C AE22027C */  sw         $v0, 0x27C($s1)
/* CA90 8000BE90 26240078 */  addiu      $a0, $s1, 0x78
.L8000BE94:
/* CA94 8000BE94 27A50010 */  addiu      $a1, $sp, 0x10
/* CA98 8000BE98 0C000B3C */  jal        osRecvMesg
/* CA9C 8000BE9C 00003021 */   addu      $a2, $zero, $zero
/* CAA0 8000BEA0 10500006 */  beq        $v0, $s0, .L8000BEBC
/* CAA4 8000BEA4 00000000 */   nop
/* CAA8 8000BEA8 8FA50010 */  lw         $a1, 0x10($sp)
/* CAAC 8000BEAC 0C00308F */  jal        func_8000C23C
/* CAB0 8000BEB0 02202021 */   addu      $a0, $s1, $zero
/* CAB4 8000BEB4 08002FA5 */  j          .L8000BE94
/* CAB8 8000BEB8 26240078 */   addiu     $a0, $s1, 0x78
.L8000BEBC:
/* CABC 8000BEBC 8E220280 */  lw         $v0, 0x280($s1)
/* CAC0 8000BEC0 10400008 */  beqz       $v0, .L8000BEE4
/* CAC4 8000BEC4 00000000 */   nop
/* CAC8 8000BEC8 8E220274 */  lw         $v0, 0x274($s1)
/* CACC 8000BECC 10400006 */  beqz       $v0, .L8000BEE8
/* CAD0 8000BED0 00000000 */   nop
/* CAD4 8000BED4 0C0030DC */  jal        func_8000C370
/* CAD8 8000BED8 02202021 */   addu      $a0, $s1, $zero
/* CADC 8000BEDC 08002FCA */  j          .L8000BF28
/* CAE0 8000BEE0 00000000 */   nop
.L8000BEE4:
/* CAE4 8000BEE4 8E220274 */  lw         $v0, 0x274($s1)
.L8000BEE8:
/* CAE8 8000BEE8 8E230278 */  lw         $v1, 0x278($s1)
/* CAEC 8000BEEC 2C420001 */  sltiu      $v0, $v0, 0x1
/* CAF0 8000BEF0 14600002 */  bnez       $v1, .L8000BEFC
/* CAF4 8000BEF4 00028040 */   sll       $s0, $v0, 1
/* CAF8 8000BEF8 36100001 */  ori        $s0, $s0, 0x1
.L8000BEFC:
/* CAFC 8000BEFC 02202021 */  addu       $a0, $s1, $zero
/* CB00 8000BF00 27A50014 */  addiu      $a1, $sp, 0x14
/* CB04 8000BF04 27A60018 */  addiu      $a2, $sp, 0x18
/* CB08 8000BF08 0C0030EA */  jal        func_8000C3A8
/* CB0C 8000BF0C 02003821 */   addu      $a3, $s0, $zero
/* CB10 8000BF10 10500005 */  beq        $v0, $s0, .L8000BF28
/* CB14 8000BF14 00000000 */   nop
/* CB18 8000BF18 8FA50014 */  lw         $a1, 0x14($sp)
/* CB1C 8000BF1C 8FA60018 */  lw         $a2, 0x18($sp)
/* CB20 8000BF20 0C0030A5 */  jal        func_8000C294
/* CB24 8000BF24 02202021 */   addu      $a0, $s1, $zero
.L8000BF28:
/* CB28 8000BF28 8E300260 */  lw         $s0, 0x260($s1)
/* CB2C 8000BF2C 12000008 */  beqz       $s0, .L8000BF50
/* CB30 8000BF30 00000000 */   nop
.L8000BF34:
/* CB34 8000BF34 8E040004 */  lw         $a0, 0x4($s0)
/* CB38 8000BF38 02202821 */  addu       $a1, $s1, $zero
/* CB3C 8000BF3C 0C000B9C */  jal        osSendMesg
/* CB40 8000BF40 00003021 */   addu      $a2, $zero, $zero
/* CB44 8000BF44 8E100000 */  lw         $s0, 0x0($s0)
/* CB48 8000BF48 1600FFFA */  bnez       $s0, .L8000BF34
/* CB4C 8000BF4C 00000000 */   nop
.L8000BF50:
/* CB50 8000BF50 8FBF0028 */  lw         $ra, 0x28($sp)
/* CB54 8000BF54 8FB10024 */  lw         $s1, 0x24($sp)
/* CB58 8000BF58 8FB00020 */  lw         $s0, 0x20($sp)
/* CB5C 8000BF5C 03E00008 */  jr         $ra
/* CB60 8000BF60 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000BF64
/* CB64 8000BF64 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CB68 8000BF68 AFB1001C */  sw         $s1, 0x1C($sp)
/* CB6C 8000BF6C 00808821 */  addu       $s1, $a0, $zero
/* CB70 8000BF70 AFBF0020 */  sw         $ra, 0x20($sp)
/* CB74 8000BF74 AFB00018 */  sw         $s0, 0x18($sp)
/* CB78 8000BF78 8E300274 */  lw         $s0, 0x274($s1)
/* CB7C 8000BF7C AE200274 */  sw         $zero, 0x274($s1)
/* CB80 8000BF80 8E020004 */  lw         $v0, 0x4($s0)
/* CB84 8000BF84 AFA00010 */  sw         $zero, 0x10($sp)
/* CB88 8000BF88 30420010 */  andi       $v0, $v0, 0x10
/* CB8C 8000BF8C 10400022 */  beqz       $v0, .L8000C018
/* CB90 8000BF90 AFA00014 */   sw        $zero, 0x14($sp)
/* CB94 8000BF94 0C0245E0 */  jal        func_80091780
/* CB98 8000BF98 26040010 */   addiu     $a0, $s0, 0x10
/* CB9C 8000BF9C 1040001F */  beqz       $v0, .L8000C01C
/* CBA0 8000BFA0 02202021 */   addu      $a0, $s1, $zero
/* CBA4 8000BFA4 8E020004 */  lw         $v0, 0x4($s0)
/* CBA8 8000BFA8 34420020 */  ori        $v0, $v0, 0x20
/* CBAC 8000BFAC 0C024034 */  jal        func_800900D0
/* CBB0 8000BFB0 AE020004 */   sw        $v0, 0x4($s0)
/* CBB4 8000BFB4 8E060058 */  lw         $a2, 0x58($s0)
/* CBB8 8000BFB8 8E07005C */  lw         $a3, 0x5C($s0)
/* CBBC 8000BFBC 8E040060 */  lw         $a0, 0x60($s0)
/* CBC0 8000BFC0 8E050064 */  lw         $a1, 0x64($s0)
/* CBC4 8000BFC4 8E080008 */  lw         $t0, 0x8($s0)
/* CBC8 8000BFC8 0067482B */  sltu       $t1, $v1, $a3
/* CBCC 8000BFCC 00671823 */  subu       $v1, $v1, $a3
/* CBD0 8000BFD0 00461023 */  subu       $v0, $v0, $a2
/* CBD4 8000BFD4 00491023 */  subu       $v0, $v0, $t1
/* CBD8 8000BFD8 00A32821 */  addu       $a1, $a1, $v1
/* CBDC 8000BFDC 00A3302B */  sltu       $a2, $a1, $v1
/* CBE0 8000BFE0 00822021 */  addu       $a0, $a0, $v0
/* CBE4 8000BFE4 00862021 */  addu       $a0, $a0, $a2
/* CBE8 8000BFE8 31080007 */  andi       $t0, $t0, 0x7
/* CBEC 8000BFEC 24020003 */  addiu      $v0, $zero, 0x3
/* CBF0 8000BFF0 AE040060 */  sw         $a0, 0x60($s0)
/* CBF4 8000BFF4 1502000F */  bne        $t0, $v0, .L8000C034
/* CBF8 8000BFF8 AE050064 */   sw        $a1, 0x64($s0)
/* CBFC 8000BFFC 8E220268 */  lw         $v0, 0x268($s1)
/* CC00 8000C000 AE020000 */  sw         $v0, 0x0($s0)
/* CC04 8000C004 8E220270 */  lw         $v0, 0x270($s1)
/* CC08 8000C008 1440000A */  bnez       $v0, .L8000C034
/* CC0C 8000C00C AE300268 */   sw        $s0, 0x268($s1)
/* CC10 8000C010 0800300D */  j          .L8000C034
/* CC14 8000C014 AE300270 */   sw        $s0, 0x270($s1)
.L8000C018:
/* CC18 8000C018 02202021 */  addu       $a0, $s1, $zero
.L8000C01C:
/* CC1C 8000C01C 8E020004 */  lw         $v0, 0x4($s0)
/* CC20 8000C020 02002821 */  addu       $a1, $s0, $zero
/* CC24 8000C024 2403FFFD */  addiu      $v1, $zero, -0x3
/* CC28 8000C028 00431024 */  and        $v0, $v0, $v1
/* CC2C 8000C02C 0C00305C */  jal        func_8000C170
/* CC30 8000C030 ACA20004 */   sw        $v0, 0x4($a1)
.L8000C034:
/* CC34 8000C034 8E220274 */  lw         $v0, 0x274($s1)
/* CC38 8000C038 8E230278 */  lw         $v1, 0x278($s1)
/* CC3C 8000C03C 2C420001 */  sltiu      $v0, $v0, 0x1
/* CC40 8000C040 14600002 */  bnez       $v1, .L8000C04C
/* CC44 8000C044 00028040 */   sll       $s0, $v0, 1
/* CC48 8000C048 36100001 */  ori        $s0, $s0, 0x1
.L8000C04C:
/* CC4C 8000C04C 02202021 */  addu       $a0, $s1, $zero
/* CC50 8000C050 27A50010 */  addiu      $a1, $sp, 0x10
/* CC54 8000C054 27A60014 */  addiu      $a2, $sp, 0x14
/* CC58 8000C058 0C0030EA */  jal        func_8000C3A8
/* CC5C 8000C05C 02003821 */   addu      $a3, $s0, $zero
/* CC60 8000C060 10500005 */  beq        $v0, $s0, .L8000C078
/* CC64 8000C064 00000000 */   nop
/* CC68 8000C068 8FA50010 */  lw         $a1, 0x10($sp)
/* CC6C 8000C06C 8FA60014 */  lw         $a2, 0x14($sp)
/* CC70 8000C070 0C0030A5 */  jal        func_8000C294
/* CC74 8000C074 02202021 */   addu      $a0, $s1, $zero
.L8000C078:
/* CC78 8000C078 8FBF0020 */  lw         $ra, 0x20($sp)
/* CC7C 8000C07C 8FB1001C */  lw         $s1, 0x1C($sp)
/* CC80 8000C080 8FB00018 */  lw         $s0, 0x18($sp)
/* CC84 8000C084 03E00008 */  jr         $ra
/* CC88 8000C088 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000C08C
/* CC8C 8000C08C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CC90 8000C090 AFB1001C */  sw         $s1, 0x1C($sp)
/* CC94 8000C094 00808821 */  addu       $s1, $a0, $zero
/* CC98 8000C098 AFBF0020 */  sw         $ra, 0x20($sp)
/* CC9C 8000C09C AFB00018 */  sw         $s0, 0x18($sp)
/* CCA0 8000C0A0 8E250278 */  lw         $a1, 0x278($s1)
/* CCA4 8000C0A4 AFA00010 */  sw         $zero, 0x10($sp)
/* CCA8 8000C0A8 AFA00014 */  sw         $zero, 0x14($sp)
/* CCAC 8000C0AC AE200278 */  sw         $zero, 0x278($s1)
/* CCB0 8000C0B0 8CA20004 */  lw         $v0, 0x4($a1)
/* CCB4 8000C0B4 2403FFFE */  addiu      $v1, $zero, -0x2
/* CCB8 8000C0B8 00431024 */  and        $v0, $v0, $v1
/* CCBC 8000C0BC 0C00305C */  jal        func_8000C170
/* CCC0 8000C0C0 ACA20004 */   sw        $v0, 0x4($a1)
/* CCC4 8000C0C4 8E220274 */  lw         $v0, 0x274($s1)
/* CCC8 8000C0C8 8E230278 */  lw         $v1, 0x278($s1)
/* CCCC 8000C0CC 2C420001 */  sltiu      $v0, $v0, 0x1
/* CCD0 8000C0D0 14600002 */  bnez       $v1, .L8000C0DC
/* CCD4 8000C0D4 00028040 */   sll       $s0, $v0, 1
/* CCD8 8000C0D8 36100001 */  ori        $s0, $s0, 0x1
.L8000C0DC:
/* CCDC 8000C0DC 02202021 */  addu       $a0, $s1, $zero
/* CCE0 8000C0E0 27A50010 */  addiu      $a1, $sp, 0x10
/* CCE4 8000C0E4 27A60014 */  addiu      $a2, $sp, 0x14
/* CCE8 8000C0E8 0C0030EA */  jal        func_8000C3A8
/* CCEC 8000C0EC 02003821 */   addu      $a3, $s0, $zero
/* CCF0 8000C0F0 10500005 */  beq        $v0, $s0, .L8000C108
/* CCF4 8000C0F4 00000000 */   nop
/* CCF8 8000C0F8 8FA50010 */  lw         $a1, 0x10($sp)
/* CCFC 8000C0FC 8FA60014 */  lw         $a2, 0x14($sp)
/* CD00 8000C100 0C0030A5 */  jal        func_8000C294
/* CD04 8000C104 02202021 */   addu      $a0, $s1, $zero
.L8000C108:
/* CD08 8000C108 8FBF0020 */  lw         $ra, 0x20($sp)
/* CD0C 8000C10C 8FB1001C */  lw         $s1, 0x1C($sp)
/* CD10 8000C110 8FB00018 */  lw         $s0, 0x18($sp)
/* CD14 8000C114 03E00008 */  jr         $ra
/* CD18 8000C118 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000C11C
/* CD1C 8000C11C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CD20 8000C120 AFB10014 */  sw         $s1, 0x14($sp)
/* CD24 8000C124 00808821 */  addu       $s1, $a0, $zero
/* CD28 8000C128 AFBF0018 */  sw         $ra, 0x18($sp)
/* CD2C 8000C12C 1220000A */  beqz       $s1, .L8000C158
/* CD30 8000C130 AFB00010 */   sw        $s0, 0x10($sp)
/* CD34 8000C134 0C0245F4 */  jal        func_800917D0
/* CD38 8000C138 00000000 */   nop
/* CD3C 8000C13C 0C024604 */  jal        func_80091810
/* CD40 8000C140 00408021 */   addu      $s0, $v0, $zero
/* CD44 8000C144 02028026 */  xor        $s0, $s0, $v0
/* CD48 8000C148 2E100001 */  sltiu      $s0, $s0, 0x1
/* CD4C 8000C14C 00108023 */  negu       $s0, $s0
/* CD50 8000C150 08003057 */  j          .L8000C15C
/* CD54 8000C154 02301024 */   and       $v0, $s1, $s0
.L8000C158:
/* CD58 8000C158 00001021 */  addu       $v0, $zero, $zero
.L8000C15C:
/* CD5C 8000C15C 8FBF0018 */  lw         $ra, 0x18($sp)
/* CD60 8000C160 8FB10014 */  lw         $s1, 0x14($sp)
/* CD64 8000C164 8FB00010 */  lw         $s0, 0x10($sp)
/* CD68 8000C168 03E00008 */  jr         $ra
/* CD6C 8000C16C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000C170
/* CD70 8000C170 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD74 8000C174 AFB00010 */  sw         $s0, 0x10($sp)
/* CD78 8000C178 00A08021 */  addu       $s0, $a1, $zero
/* CD7C 8000C17C AFBF0014 */  sw         $ra, 0x14($sp)
/* CD80 8000C180 8E020004 */  lw         $v0, 0x4($s0)
/* CD84 8000C184 30420003 */  andi       $v0, $v0, 0x3
/* CD88 8000C188 14400028 */  bnez       $v0, .L8000C22C
/* CD8C 8000C18C 00001021 */   addu      $v0, $zero, $zero
/* CD90 8000C190 0C024034 */  jal        func_800900D0
/* CD94 8000C194 00000000 */   nop
/* CD98 8000C198 8E040050 */  lw         $a0, 0x50($s0)
/* CD9C 8000C19C 8E080058 */  lw         $t0, 0x58($s0)
/* CDA0 8000C1A0 8E09005C */  lw         $t1, 0x5C($s0)
/* CDA4 8000C1A4 8E060060 */  lw         $a2, 0x60($s0)
/* CDA8 8000C1A8 8E070064 */  lw         $a3, 0x64($s0)
/* CDAC 8000C1AC 8E050054 */  lw         $a1, 0x54($s0)
/* CDB0 8000C1B0 0069502B */  sltu       $t2, $v1, $t1
/* CDB4 8000C1B4 00691823 */  subu       $v1, $v1, $t1
/* CDB8 8000C1B8 00481023 */  subu       $v0, $v0, $t0
/* CDBC 8000C1BC 004A1023 */  subu       $v0, $v0, $t2
/* CDC0 8000C1C0 00E33821 */  addu       $a3, $a3, $v1
/* CDC4 8000C1C4 00E3402B */  sltu       $t0, $a3, $v1
/* CDC8 8000C1C8 00C23021 */  addu       $a2, $a2, $v0
/* CDCC 8000C1CC 00C83021 */  addu       $a2, $a2, $t0
/* CDD0 8000C1D0 AE060060 */  sw         $a2, 0x60($s0)
/* CDD4 8000C1D4 AE070064 */  sw         $a3, 0x64($s0)
/* CDD8 8000C1D8 0C000B9C */  jal        osSendMesg
/* CDDC 8000C1DC 24060001 */   addiu     $a2, $zero, 0x1
/* CDE0 8000C1E0 8E030010 */  lw         $v1, 0x10($s0)
/* CDE4 8000C1E4 24020001 */  addiu      $v0, $zero, 0x1
/* CDE8 8000C1E8 14620010 */  bne        $v1, $v0, .L8000C22C
/* CDEC 8000C1EC 24030060 */   addiu     $v1, $zero, 0x60
/* CDF0 8000C1F0 8E020008 */  lw         $v0, 0x8($s0)
/* CDF4 8000C1F4 30420060 */  andi       $v0, $v0, 0x60
/* CDF8 8000C1F8 1443000C */  bne        $v0, $v1, .L8000C22C
/* CDFC 8000C1FC 24020001 */   addiu     $v0, $zero, 0x1
/* CE00 8000C200 3C02800B */  lui        $v0, %hi(D_800AB1EC)
/* CE04 8000C204 8C42B1EC */  lw         $v0, %lo(D_800AB1EC)($v0)
/* CE08 8000C208 10400005 */  beqz       $v0, .L8000C220
/* CE0C 8000C20C 00000000 */   nop
/* CE10 8000C210 0C0246C4 */  jal        func_80091B10
/* CE14 8000C214 00002021 */   addu      $a0, $zero, $zero
/* CE18 8000C218 3C01800B */  lui        $at, %hi(D_800AB1EC)
/* CE1C 8000C21C AC20B1EC */  sw         $zero, %lo(D_800AB1EC)($at)
.L8000C220:
/* CE20 8000C220 0C0246B0 */  jal        func_80091AC0
/* CE24 8000C224 8E04000C */   lw        $a0, 0xC($s0)
/* CE28 8000C228 24020001 */  addiu      $v0, $zero, 0x1
.L8000C22C:
/* CE2C 8000C22C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE30 8000C230 8FB00010 */  lw         $s0, 0x10($sp)
/* CE34 8000C234 03E00008 */  jr         $ra
/* CE38 8000C238 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C23C
/* CE3C 8000C23C 8CA30010 */  lw         $v1, 0x10($a1)
/* CE40 8000C240 24020002 */  addiu      $v0, $zero, 0x2
/* CE44 8000C244 14620009 */  bne        $v1, $v0, .L8000C26C
/* CE48 8000C248 00000000 */   nop
/* CE4C 8000C24C 8C82026C */  lw         $v0, 0x26C($a0)
/* CE50 8000C250 50400002 */  beql       $v0, $zero, .L8000C25C
/* CE54 8000C254 AC850264 */   sw        $a1, 0x264($a0)
/* CE58 8000C258 AC450000 */  sw         $a1, 0x0($v0)
.L8000C25C:
/* CE5C 8000C25C 24020001 */  addiu      $v0, $zero, 0x1
/* CE60 8000C260 AC85026C */  sw         $a1, 0x26C($a0)
/* CE64 8000C264 080030A0 */  j          .L8000C280
/* CE68 8000C268 AC820280 */   sw        $v0, 0x280($a0)
.L8000C26C:
/* CE6C 8000C26C 8C820270 */  lw         $v0, 0x270($a0)
/* CE70 8000C270 50400002 */  beql       $v0, $zero, .L8000C27C
/* CE74 8000C274 AC850268 */   sw        $a1, 0x268($a0)
/* CE78 8000C278 AC450000 */  sw         $a1, 0x0($v0)
.L8000C27C:
/* CE7C 8000C27C AC850270 */  sw         $a1, 0x270($a0)
.L8000C280:
/* CE80 8000C280 8CA20008 */  lw         $v0, 0x8($a1)
/* CE84 8000C284 ACA00000 */  sw         $zero, 0x0($a1)
/* CE88 8000C288 30420003 */  andi       $v0, $v0, 0x3
/* CE8C 8000C28C 03E00008 */  jr         $ra
/* CE90 8000C290 ACA20004 */   sw        $v0, 0x4($a1)

glabel func_8000C294
/* CE94 8000C294 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CE98 8000C298 AFB3001C */  sw         $s3, 0x1C($sp)
/* CE9C 8000C29C 00809821 */  addu       $s3, $a0, $zero
/* CEA0 8000C2A0 AFB10014 */  sw         $s1, 0x14($sp)
/* CEA4 8000C2A4 00A08821 */  addu       $s1, $a1, $zero
/* CEA8 8000C2A8 AFB20018 */  sw         $s2, 0x18($sp)
/* CEAC 8000C2AC 00C09021 */  addu       $s2, $a2, $zero
/* CEB0 8000C2B0 AFBF0020 */  sw         $ra, 0x20($sp)
/* CEB4 8000C2B4 12200016 */  beqz       $s1, .L8000C310
/* CEB8 8000C2B8 AFB00010 */   sw        $s0, 0x10($sp)
/* CEBC 8000C2BC 8E230010 */  lw         $v1, 0x10($s1)
/* CEC0 8000C2C0 24020002 */  addiu      $v0, $zero, 0x2
/* CEC4 8000C2C4 14620003 */  bne        $v1, $v0, .L8000C2D4
/* CEC8 8000C2C8 00000000 */   nop
/* CECC 8000C2CC 0C024028 */  jal        func_800900A0
/* CED0 8000C2D0 00000000 */   nop
.L8000C2D4:
/* CED4 8000C2D4 8E220004 */  lw         $v0, 0x4($s1)
/* CED8 8000C2D8 2403FFCF */  addiu      $v1, $zero, -0x31
/* CEDC 8000C2DC 00431024 */  and        $v0, $v0, $v1
/* CEE0 8000C2E0 0C024034 */  jal        func_800900D0
/* CEE4 8000C2E4 AE220004 */   sw        $v0, 0x4($s1)
/* CEE8 8000C2E8 26300010 */  addiu      $s0, $s1, 0x10
/* CEEC 8000C2EC AE220058 */  sw         $v0, 0x58($s1)
/* CEF0 8000C2F0 AE23005C */  sw         $v1, 0x5C($s1)
/* CEF4 8000C2F4 0C024548 */  jal        func_80091520
/* CEF8 8000C2F8 02002021 */   addu      $a0, $s0, $zero
/* CEFC 8000C2FC 0C0245CB */  jal        func_8009172C
/* CF00 8000C300 02002021 */   addu      $a0, $s0, $zero
/* CF04 8000C304 16320002 */  bne        $s1, $s2, .L8000C310
/* CF08 8000C308 AE710274 */   sw        $s1, 0x274($s3)
/* CF0C 8000C30C AE720278 */  sw         $s2, 0x278($s3)
.L8000C310:
/* CF10 8000C310 0012182B */  sltu       $v1, $zero, $s2
/* CF14 8000C314 02511026 */  xor        $v0, $s2, $s1
/* CF18 8000C318 0002102B */  sltu       $v0, $zero, $v0
/* CF1C 8000C31C 00621824 */  and        $v1, $v1, $v0
/* CF20 8000C320 1060000C */  beqz       $v1, .L8000C354
/* CF24 8000C324 00000000 */   nop
/* CF28 8000C328 8E42003C */  lw         $v0, 0x3C($s2)
/* CF2C 8000C32C 8E440038 */  lw         $a0, 0x38($s2)
/* CF30 8000C330 8C460000 */  lw         $a2, 0x0($v0)
/* CF34 8000C334 0C024520 */  jal        func_80091480
/* CF38 8000C338 8C470004 */   lw        $a3, 0x4($v0)
/* CF3C 8000C33C 24020001 */  addiu      $v0, $zero, 0x1
/* CF40 8000C340 3C01800B */  lui        $at, %hi(D_800AB1E4)
/* CF44 8000C344 AC22B1E4 */  sw         $v0, %lo(D_800AB1E4)($at)
/* CF48 8000C348 3C01800B */  lui        $at, %hi(D_800AB1E8)
/* CF4C 8000C34C AC20B1E8 */  sw         $zero, %lo(D_800AB1E8)($at)
/* CF50 8000C350 AE720278 */  sw         $s2, 0x278($s3)
.L8000C354:
/* CF54 8000C354 8FBF0020 */  lw         $ra, 0x20($sp)
/* CF58 8000C358 8FB3001C */  lw         $s3, 0x1C($sp)
/* CF5C 8000C35C 8FB20018 */  lw         $s2, 0x18($sp)
/* CF60 8000C360 8FB10014 */  lw         $s1, 0x14($sp)
/* CF64 8000C364 8FB00010 */  lw         $s0, 0x10($sp)
/* CF68 8000C368 03E00008 */  jr         $ra
/* CF6C 8000C36C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000C370
/* CF70 8000C370 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF74 8000C374 AFBF0010 */  sw         $ra, 0x10($sp)
/* CF78 8000C378 8C840274 */  lw         $a0, 0x274($a0)
/* CF7C 8000C37C 8C830010 */  lw         $v1, 0x10($a0)
/* CF80 8000C380 24020001 */  addiu      $v0, $zero, 0x1
/* CF84 8000C384 14620005 */  bne        $v1, $v0, .L8000C39C
/* CF88 8000C388 00000000 */   nop
/* CF8C 8000C38C 8C820004 */  lw         $v0, 0x4($a0)
/* CF90 8000C390 34420010 */  ori        $v0, $v0, 0x10
/* CF94 8000C394 0C0245D8 */  jal        func_80091760
/* CF98 8000C398 AC820004 */   sw        $v0, 0x4($a0)
.L8000C39C:
/* CF9C 8000C39C 8FBF0010 */  lw         $ra, 0x10($sp)
/* CFA0 8000C3A0 03E00008 */  jr         $ra
/* CFA4 8000C3A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C3A8
/* CFA8 8000C3A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CFAC 8000C3AC AFB20018 */  sw         $s2, 0x18($sp)
/* CFB0 8000C3B0 00809021 */  addu       $s2, $a0, $zero
/* CFB4 8000C3B4 AFB3001C */  sw         $s3, 0x1C($sp)
/* CFB8 8000C3B8 00A09821 */  addu       $s3, $a1, $zero
/* CFBC 8000C3BC AFB40020 */  sw         $s4, 0x20($sp)
/* CFC0 8000C3C0 00C0A021 */  addu       $s4, $a2, $zero
/* CFC4 8000C3C4 AFB00010 */  sw         $s0, 0x10($sp)
/* CFC8 8000C3C8 00E08021 */  addu       $s0, $a3, $zero
/* CFCC 8000C3CC AFB50024 */  sw         $s5, 0x24($sp)
/* CFD0 8000C3D0 AFBF0028 */  sw         $ra, 0x28($sp)
/* CFD4 8000C3D4 AFB10014 */  sw         $s1, 0x14($sp)
/* CFD8 8000C3D8 8E420280 */  lw         $v0, 0x280($s2)
/* CFDC 8000C3DC 8E510268 */  lw         $s1, 0x268($s2)
/* CFE0 8000C3E0 8E430264 */  lw         $v1, 0x264($s2)
/* CFE4 8000C3E4 10400014 */  beqz       $v0, .L8000C438
/* CFE8 8000C3E8 0200A821 */   addu      $s5, $s0, $zero
/* CFEC 8000C3EC 32020002 */  andi       $v0, $s0, 0x2
/* CFF0 8000C3F0 10400011 */  beqz       $v0, .L8000C438
/* CFF4 8000C3F4 00000000 */   nop
/* CFF8 8000C3F8 52200006 */  beql       $s1, $zero, .L8000C414
/* CFFC 8000C3FC AE630000 */   sw        $v1, 0x0($s3)
/* D000 8000C400 8E220008 */  lw         $v0, 0x8($s1)
/* D004 8000C404 30420010 */  andi       $v0, $v0, 0x10
/* D008 8000C408 54400041 */  bnel       $v0, $zero, .L8000C510
/* D00C 8000C40C AE710000 */   sw        $s1, 0x0($s3)
/* D010 8000C410 AE630000 */  sw         $v1, 0x0($s3)
.L8000C414:
/* D014 8000C414 8E420264 */  lw         $v0, 0x264($s2)
/* D018 8000C418 AE400280 */  sw         $zero, 0x280($s2)
/* D01C 8000C41C 8C430000 */  lw         $v1, 0x0($v0)
/* D020 8000C420 2402FFFD */  addiu      $v0, $zero, -0x3
/* D024 8000C424 02028024 */  and        $s0, $s0, $v0
/* D028 8000C428 14600049 */  bnez       $v1, L8000C550
/* D02C 8000C42C AE430264 */   sw        $v1, 0x264($s2)
/* D030 8000C430 08003154 */  j          L8000C550
/* D034 8000C434 AE40026C */   sw        $zero, 0x26C($s2)
.L8000C438:
/* D038 8000C438 0C003047 */  jal        func_8000C11C
/* D03C 8000C43C 02202021 */   addu      $a0, $s1, $zero
/* D040 8000C440 10400043 */  beqz       $v0, L8000C550
/* D044 8000C444 00000000 */   nop
/* D048 8000C448 8E220008 */  lw         $v0, 0x8($s1)
/* D04C 8000C44C 30420007 */  andi       $v0, $v0, 0x7
/* D050 8000C450 2443FFFF */  addiu      $v1, $v0, -0x1
/* D054 8000C454 2C620007 */  sltiu      $v0, $v1, 0x7
/* D058 8000C458 1040003D */  beqz       $v0, L8000C550
/* D05C 8000C45C 00031080 */   sll       $v0, $v1, 2
/* D060 8000C460 3C01800D */  lui        $at, %hi(jtbl_800CD1C8_main)
/* D064 8000C464 00220821 */  addu       $at, $at, $v0
/* D068 8000C468 8C22D1C8 */  lw         $v0, %lo(jtbl_800CD1C8_main)($at)
/* D06C 8000C46C 00400008 */  jr         $v0
/* D070 8000C470 00000000 */   nop
glabel L8000C474
/* D074 8000C474 8E220004 */  lw         $v0, 0x4($s1)
/* D078 8000C478 30420020 */  andi       $v0, $v0, 0x20
/* D07C 8000C47C 10400011 */  beqz       $v0, .L8000C4C4
/* D080 8000C480 32020002 */   andi      $v0, $s0, 0x2
/* D084 8000C484 10400032 */  beqz       $v0, L8000C550
/* D088 8000C488 2403FFFD */   addiu     $v1, $zero, -0x3
/* D08C 8000C48C AE710000 */  sw         $s1, 0x0($s3)
/* D090 8000C490 8E220004 */  lw         $v0, 0x4($s1)
/* D094 8000C494 30420001 */  andi       $v0, $v0, 0x1
/* D098 8000C498 10400004 */  beqz       $v0, .L8000C4AC
/* D09C 8000C49C 02038024 */   and       $s0, $s0, $v1
/* D0A0 8000C4A0 AE910000 */  sw         $s1, 0x0($s4)
/* D0A4 8000C4A4 2402FFFE */  addiu      $v0, $zero, -0x2
/* D0A8 8000C4A8 02028024 */  and        $s0, $s0, $v0
.L8000C4AC:
/* D0AC 8000C4AC 8E420268 */  lw         $v0, 0x268($s2)
/* D0B0 8000C4B0 8C420000 */  lw         $v0, 0x0($v0)
/* D0B4 8000C4B4 14400026 */  bnez       $v0, L8000C550
/* D0B8 8000C4B8 AE420268 */   sw        $v0, 0x268($s2)
/* D0BC 8000C4BC 08003154 */  j          L8000C550
/* D0C0 8000C4C0 AE400270 */   sw        $zero, 0x270($s2)
.L8000C4C4:
/* D0C4 8000C4C4 24020003 */  addiu      $v0, $zero, 0x3
/* D0C8 8000C4C8 16020021 */  bne        $s0, $v0, L8000C550
/* D0CC 8000C4CC 00000000 */   nop
/* D0D0 8000C4D0 AE910000 */  sw         $s1, 0x0($s4)
/* D0D4 8000C4D4 AE710000 */  sw         $s1, 0x0($s3)
/* D0D8 8000C4D8 8E420268 */  lw         $v0, 0x268($s2)
/* D0DC 8000C4DC 8C420000 */  lw         $v0, 0x0($v0)
/* D0E0 8000C4E0 00008021 */  addu       $s0, $zero, $zero
/* D0E4 8000C4E4 1440001A */  bnez       $v0, L8000C550
/* D0E8 8000C4E8 AE420268 */   sw        $v0, 0x268($s2)
/* D0EC 8000C4EC 08003154 */  j          L8000C550
/* D0F0 8000C4F0 AE400270 */   sw        $zero, 0x270($s2)
glabel L8000C4F4
/* D0F4 8000C4F4 8E230004 */  lw         $v1, 0x4($s1)
/* D0F8 8000C4F8 30620002 */  andi       $v0, $v1, 0x2
/* D0FC 8000C4FC 10400007 */  beqz       $v0, .L8000C51C
/* D100 8000C500 32020002 */   andi      $v0, $s0, 0x2
/* D104 8000C504 10400012 */  beqz       $v0, L8000C550
/* D108 8000C508 00000000 */   nop
/* D10C 8000C50C AE710000 */  sw         $s1, 0x0($s3)
.L8000C510:
/* D110 8000C510 2402FFFD */  addiu      $v0, $zero, -0x3
/* D114 8000C514 08003154 */  j          L8000C550
/* D118 8000C518 02028024 */   and       $s0, $s0, $v0
.L8000C51C:
/* D11C 8000C51C 30620001 */  andi       $v0, $v1, 0x1
/* D120 8000C520 1040000B */  beqz       $v0, L8000C550
/* D124 8000C524 32020001 */   andi      $v0, $s0, 0x1
/* D128 8000C528 10400009 */  beqz       $v0, L8000C550
/* D12C 8000C52C 00000000 */   nop
/* D130 8000C530 AE910000 */  sw         $s1, 0x0($s4)
/* D134 8000C534 8E420268 */  lw         $v0, 0x268($s2)
/* D138 8000C538 8C430000 */  lw         $v1, 0x0($v0)
/* D13C 8000C53C 2402FFFE */  addiu      $v0, $zero, -0x2
/* D140 8000C540 02028024 */  and        $s0, $s0, $v0
/* D144 8000C544 14600002 */  bnez       $v1, L8000C550
/* D148 8000C548 AE430268 */   sw        $v1, 0x268($s2)
/* D14C 8000C54C AE400270 */  sw         $zero, 0x270($s2)
glabel L8000C550
/* D150 8000C550 12150006 */  beq        $s0, $s5, .L8000C56C
/* D154 8000C554 02402021 */   addu      $a0, $s2, $zero
/* D158 8000C558 02602821 */  addu       $a1, $s3, $zero
/* D15C 8000C55C 02803021 */  addu       $a2, $s4, $zero
/* D160 8000C560 0C0030EA */  jal        func_8000C3A8
/* D164 8000C564 02003821 */   addu      $a3, $s0, $zero
/* D168 8000C568 00408021 */  addu       $s0, $v0, $zero
.L8000C56C:
/* D16C 8000C56C 02001021 */  addu       $v0, $s0, $zero
/* D170 8000C570 8FBF0028 */  lw         $ra, 0x28($sp)
/* D174 8000C574 8FB50024 */  lw         $s5, 0x24($sp)
/* D178 8000C578 8FB40020 */  lw         $s4, 0x20($sp)
/* D17C 8000C57C 8FB3001C */  lw         $s3, 0x1C($sp)
/* D180 8000C580 8FB20018 */  lw         $s2, 0x18($sp)
/* D184 8000C584 8FB10014 */  lw         $s1, 0x14($sp)
/* D188 8000C588 8FB00010 */  lw         $s0, 0x10($sp)
/* D18C 8000C58C 03E00008 */  jr         $ra
/* D190 8000C590 27BD0030 */   addiu     $sp, $sp, 0x30
/* D194 8000C594 00000000 */  nop
/* D198 8000C598 00000000 */  nop
/* D19C 8000C59C 00000000 */  nop
