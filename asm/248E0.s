.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80023CE0
/* 248E0 80023CE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 248E4 80023CE4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 248E8 80023CE8 0C01F550 */  jal        func_8007D540
/* 248EC 80023CEC 00000000 */   nop
/* 248F0 80023CF0 0C009018 */  jal        func_80024060
/* 248F4 80023CF4 00000000 */   nop
/* 248F8 80023CF8 0C009136 */  jal        func_800244D8
/* 248FC 80023CFC 00000000 */   nop
/* 24900 80023D00 0C009062 */  jal        func_80024188
/* 24904 80023D04 00000000 */   nop
/* 24908 80023D08 0C009138 */  jal        func_800244E0
/* 2490C 80023D0C 00000000 */   nop
/* 24910 80023D10 0C01F5E7 */  jal        func_8007D79C
/* 24914 80023D14 00000000 */   nop
/* 24918 80023D18 0C01F60A */  jal        func_8007D828
/* 2491C 80023D1C 00000000 */   nop
/* 24920 80023D20 0C008F54 */  jal        func_80023D50
/* 24924 80023D24 00000000 */   nop
/* 24928 80023D28 0C008FAA */  jal        func_80023EA8
/* 2492C 80023D2C 00000000 */   nop
/* 24930 80023D30 0C009CC3 */  jal        func_8002730C
/* 24934 80023D34 00000000 */   nop
/* 24938 80023D38 0C021A48 */  jal        func_80086920
/* 2493C 80023D3C 00000000 */   nop
/* 24940 80023D40 8FBF0010 */  lw         $ra, 0x10($sp)
/* 24944 80023D44 03E00008 */  jr         $ra
/* 24948 80023D48 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2494C 80023D4C 00000000 */  nop
