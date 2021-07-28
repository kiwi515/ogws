.include "macros.inc"

.section .sdata2, "a"
.global lbl_804C0438
lbl_804C0438:
	.single 0e0
.global lbl_804C043C
lbl_804C043C:
	.single 0e1
.global lbl_804C0440
lbl_804C0440:
	.single 0e0.5
.global lbl_804C0444
lbl_804C0444:
	.byte 0xFF
.global lbl_804C0445
lbl_804C0445:
	.byte 0xFF
.global lbl_804C0446
lbl_804C0446:
	.byte 0xFF
.global lbl_804C0447
lbl_804C0447:
	.byte 0xFF
.global lbl_804C0448
lbl_804C0448:
	.byte 0xFF
.global lbl_804C0449
lbl_804C0449:
	.byte 0xFF
.global lbl_804C044A
lbl_804C044A:
	.byte 0xFF
.global lbl_804C044B
lbl_804C044B:
	.byte 0xFF
.global lbl_804C044C
lbl_804C044C:
	.single 0e4000000
.global lbl_804C0450
lbl_804C0450:
	.single 0e-1
.global lbl_804C0454
lbl_804C0454:
	.single 0e90
.global lbl_804C0458
lbl_804C0458:
	.single 0e10
.global lbl_804C045C
lbl_804C045C:
	.single 0e8
.global lbl_804C0460
lbl_804C0460:
	.single 0e-7
	.balign 8

.section .text, "ax"
.global Clear__Q34nw4r3g3d8LightObjFv
Clear__Q34nw4r3g3d8LightObjFv:
/* 8007809C 00072F9C  38 00 00 00 */	li r0, 0
/* 800780A0 00072FA0  38 80 00 40 */	li r4, 0x40
/* 800780A4 00072FA4  90 03 00 00 */	stw r0, 0(r3)
/* 800780A8 00072FA8  38 63 00 04 */	addi r3, r3, 4
/* 800780AC 00072FAC  4B FE BF 54 */	b ZeroMemory32ByteBlocks__Q34nw4r3g3d6detailFPvUl

.global InitLightColor__Q34nw4r3g3d8LightObjF8_GXColor
InitLightColor__Q34nw4r3g3d8LightObjF8_GXColor:
/* 800780B0 00072FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800780B4 00072FB4  7C 08 02 A6 */	mflr r0
/* 800780B8 00072FB8  88 E4 00 00 */	lbz r7, 0(r4)
/* 800780BC 00072FBC  38 63 00 04 */	addi r3, r3, 4
/* 800780C0 00072FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800780C4 00072FC4  88 C4 00 01 */	lbz r6, 1(r4)
/* 800780C8 00072FC8  88 A4 00 02 */	lbz r5, 2(r4)
/* 800780CC 00072FCC  88 04 00 03 */	lbz r0, 3(r4)
/* 800780D0 00072FD0  38 81 00 08 */	addi r4, r1, 8
/* 800780D4 00072FD4  98 E1 00 08 */	stb r7, 8(r1)
/* 800780D8 00072FD8  98 C1 00 09 */	stb r6, 9(r1)
/* 800780DC 00072FDC  98 A1 00 0A */	stb r5, 0xa(r1)
/* 800780E0 00072FE0  98 01 00 0B */	stb r0, 0xb(r1)
/* 800780E4 00072FE4  48 06 7C 0D */	bl GXInitLightColor
/* 800780E8 00072FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800780EC 00072FEC  7C 08 03 A6 */	mtlr r0
/* 800780F0 00072FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 800780F4 00072FF4  4E 80 00 20 */	blr 

.global InitLightPos__Q34nw4r3g3d8LightObjFfff
InitLightPos__Q34nw4r3g3d8LightObjFfff:
/* 800780F8 00072FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800780FC 00072FFC  7C 08 02 A6 */	mflr r0
/* 80078100 00073000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078104 00073004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078108 00073008  7C 7F 1B 78 */	mr r31, r3
/* 8007810C 0007300C  38 63 00 04 */	addi r3, r3, 4
/* 80078110 00073010  48 06 7A 65 */	bl GXInitLightPos
/* 80078114 00073014  80 1F 00 00 */	lwz r0, 0(r31)
/* 80078118 00073018  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8007811C 0007301C  90 1F 00 00 */	stw r0, 0(r31)
/* 80078120 00073020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078124 00073024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078128 00073028  7C 08 03 A6 */	mtlr r0
/* 8007812C 0007302C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078130 00073030  4E 80 00 20 */	blr 

.global InitLightDir__Q34nw4r3g3d8LightObjFfff
InitLightDir__Q34nw4r3g3d8LightObjFfff:
/* 80078134 00073034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078138 00073038  7C 08 02 A6 */	mflr r0
/* 8007813C 0007303C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078140 00073040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078144 00073044  7C 7F 1B 78 */	mr r31, r3
/* 80078148 00073048  38 63 00 04 */	addi r3, r3, 4
/* 8007814C 0007304C  48 06 7A 55 */	bl GXInitLightDir
/* 80078150 00073050  80 1F 00 00 */	lwz r0, 0(r31)
/* 80078154 00073054  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80078158 00073058  60 00 00 01 */	ori r0, r0, 1
/* 8007815C 0007305C  90 1F 00 00 */	stw r0, 0(r31)
/* 80078160 00073060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078164 00073064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078168 00073068  7C 08 03 A6 */	mtlr r0
/* 8007816C 0007306C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078170 00073070  4E 80 00 20 */	blr 

.global InitLightSpot__Q34nw4r3g3d8LightObjFf9_GXSpotFn
InitLightSpot__Q34nw4r3g3d8LightObjFf9_GXSpotFn:
/* 80078174 00073074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078178 00073078  7C 08 02 A6 */	mflr r0
/* 8007817C 0007307C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078180 00073080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078184 00073084  7C 7F 1B 78 */	mr r31, r3
/* 80078188 00073088  38 63 00 04 */	addi r3, r3, 4
/* 8007818C 0007308C  48 06 77 91 */	bl GXInitLightSpot
/* 80078190 00073090  80 1F 00 00 */	lwz r0, 0(r31)
/* 80078194 00073094  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80078198 00073098  60 00 00 01 */	ori r0, r0, 1
/* 8007819C 0007309C  90 1F 00 00 */	stw r0, 0(r31)
/* 800781A0 000730A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800781A4 000730A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800781A8 000730A8  7C 08 03 A6 */	mtlr r0
/* 800781AC 000730AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800781B0 000730B0  4E 80 00 20 */	blr 

.global InitLightAttnA__Q34nw4r3g3d8LightObjFfff
InitLightAttnA__Q34nw4r3g3d8LightObjFfff:
/* 800781B4 000730B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800781B8 000730B8  7C 08 02 A6 */	mflr r0
/* 800781BC 000730BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800781C0 000730C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800781C4 000730C4  7C 7F 1B 78 */	mr r31, r3
/* 800781C8 000730C8  38 63 00 04 */	addi r3, r3, 4
/* 800781CC 000730CC  48 06 77 31 */	bl GXInitLightAttnA
/* 800781D0 000730D0  80 1F 00 00 */	lwz r0, 0(r31)
/* 800781D4 000730D4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800781D8 000730D8  60 00 00 01 */	ori r0, r0, 1
/* 800781DC 000730DC  90 1F 00 00 */	stw r0, 0(r31)
/* 800781E0 000730E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800781E4 000730E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800781E8 000730E8  7C 08 03 A6 */	mtlr r0
/* 800781EC 000730EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800781F0 000730F0  4E 80 00 20 */	blr 

.global InitLightDistAttn__Q34nw4r3g3d8LightObjFff13_GXDistAttnFn
InitLightDistAttn__Q34nw4r3g3d8LightObjFff13_GXDistAttnFn:
/* 800781F4 000730F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800781F8 000730F8  7C 08 02 A6 */	mflr r0
/* 800781FC 000730FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078200 00073100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078204 00073104  7C 7F 1B 78 */	mr r31, r3
/* 80078208 00073108  38 63 00 04 */	addi r3, r3, 4
/* 8007820C 0007310C  48 06 78 99 */	bl GXInitLightDistAttn
/* 80078210 00073110  80 1F 00 00 */	lwz r0, 0(r31)
/* 80078214 00073114  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80078218 00073118  60 00 00 01 */	ori r0, r0, 1
/* 8007821C 0007311C  90 1F 00 00 */	stw r0, 0(r31)
/* 80078220 00073120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078224 00073124  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078228 00073128  7C 08 03 A6 */	mtlr r0
/* 8007822C 0007312C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078230 00073130  4E 80 00 20 */	blr 

.global InitLightAttnK__Q34nw4r3g3d8LightObjFfff
InitLightAttnK__Q34nw4r3g3d8LightObjFfff:
/* 80078234 00073134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078238 00073138  7C 08 02 A6 */	mflr r0
/* 8007823C 0007313C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078240 00073140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078244 00073144  7C 7F 1B 78 */	mr r31, r3
/* 80078248 00073148  38 63 00 04 */	addi r3, r3, 4
/* 8007824C 0007314C  48 06 76 C1 */	bl GXInitLightAttnK
/* 80078250 00073150  80 1F 00 00 */	lwz r0, 0(r31)
/* 80078254 00073154  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80078258 00073158  60 00 00 01 */	ori r0, r0, 1
/* 8007825C 0007315C  90 1F 00 00 */	stw r0, 0(r31)
/* 80078260 00073160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078264 00073164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078268 00073168  7C 08 03 A6 */	mtlr r0
/* 8007826C 0007316C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078270 00073170  4E 80 00 20 */	blr 

.global InitLightShininess__Q34nw4r3g3d8LightObjFf
InitLightShininess__Q34nw4r3g3d8LightObjFf:
/* 80078274 00073174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078278 00073178  7C 08 02 A6 */	mflr r0
/* 8007827C 0007317C  FC 80 08 90 */	fmr f4, f1
/* 80078280 00073180  C0 02 8A 20 */	lfs f0, lbl_804C0440-_SDA2_BASE_(r2)
/* 80078284 00073184  C0 22 8A 18 */	lfs f1, lbl_804C0438-_SDA2_BASE_(r2)
/* 80078288 00073188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007828C 0007318C  EC 84 00 32 */	fmuls f4, f4, f0
/* 80078290 00073190  C0 62 8A 1C */	lfs f3, lbl_804C043C-_SDA2_BASE_(r2)
/* 80078294 00073194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078298 00073198  7C 7F 1B 78 */	mr r31, r3
/* 8007829C 0007319C  FC 40 08 90 */	fmr f2, f1
/* 800782A0 000731A0  38 63 00 04 */	addi r3, r3, 4
/* 800782A4 000731A4  FC A0 08 90 */	fmr f5, f1
/* 800782A8 000731A8  EC C3 20 28 */	fsubs f6, f3, f4
/* 800782AC 000731AC  48 06 76 35 */	bl GXInitLightAttn
/* 800782B0 000731B0  80 1F 00 00 */	lwz r0, 0(r31)
/* 800782B4 000731B4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800782B8 000731B8  60 00 00 02 */	ori r0, r0, 2
/* 800782BC 000731BC  90 1F 00 00 */	stw r0, 0(r31)
/* 800782C0 000731C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800782C4 000731C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800782C8 000731C8  7C 08 03 A6 */	mtlr r0
/* 800782CC 000731CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800782D0 000731D0  4E 80 00 20 */	blr 

.global GetLightPos__Q34nw4r3g3d8LightObjCFPQ34nw4r4math4VEC3
GetLightPos__Q34nw4r3g3d8LightObjCFPQ34nw4r4math4VEC3:
/* 800782D4 000731D4  2C 04 00 00 */	cmpwi r4, 0
/* 800782D8 000731D8  4D 82 00 20 */	beqlr 
/* 800782DC 000731DC  38 63 00 04 */	addi r3, r3, 4
/* 800782E0 000731E0  38 A4 00 04 */	addi r5, r4, 4
/* 800782E4 000731E4  38 C4 00 08 */	addi r6, r4, 8
/* 800782E8 000731E8  48 06 78 9C */	b GXGetLightPos
/* 800782EC 000731EC  4E 80 00 20 */	blr 

.global GetLightDir__Q34nw4r3g3d8LightObjCFPQ34nw4r4math4VEC3
GetLightDir__Q34nw4r3g3d8LightObjCFPQ34nw4r4math4VEC3:
/* 800782F0 000731F0  2C 04 00 00 */	cmpwi r4, 0
/* 800782F4 000731F4  4D 82 00 20 */	beqlr 
/* 800782F8 000731F8  38 63 00 04 */	addi r3, r3, 4
/* 800782FC 000731FC  38 A4 00 04 */	addi r5, r4, 4
/* 80078300 00073200  38 C4 00 08 */	addi r6, r4, 8
/* 80078304 00073204  48 06 78 B8 */	b GXGetLightDir
/* 80078308 00073208  4E 80 00 20 */	blr 

.global __ct__Q34nw4r3g3d12LightSettingFPQ34nw4r3g3d8LightObjPQ34nw4r3g3d11AmbLightObjUlPQ34nw4r3g3d12LightSetDataUl
__ct__Q34nw4r3g3d12LightSettingFPQ34nw4r3g3d8LightObjPQ34nw4r3g3d11AmbLightObjUlPQ34nw4r3g3d12LightSetDataUl:
/* 8007830C 0007320C  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80078310 00073210  7C 08 02 A6 */	mflr r0
/* 80078314 00073214  90 01 01 64 */	stw r0, 0x164(r1)
/* 80078318 00073218  39 61 01 60 */	addi r11, r1, 0x160
/* 8007831C 0007321C  48 03 9A 19 */	bl _savegpr_23
/* 80078320 00073220  B0 C3 00 00 */	sth r6, 0(r3)
/* 80078324 00073224  7C 7F 1B 78 */	mr r31, r3
/* 80078328 00073228  39 40 00 00 */	li r10, 0
/* 8007832C 0007322C  39 20 00 00 */	li r9, 0
/* 80078330 00073230  B1 03 00 02 */	sth r8, 2(r3)
/* 80078334 00073234  38 C0 FF FF */	li r6, -1
/* 80078338 00073238  90 83 00 04 */	stw r4, 4(r3)
/* 8007833C 0007323C  90 A3 00 08 */	stw r5, 8(r3)
/* 80078340 00073240  90 E3 00 0C */	stw r7, 0xc(r3)
/* 80078344 00073244  48 00 00 38 */	b lbl_8007837C
lbl_80078348:
/* 80078348 00073248  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8007834C 0007324C  39 4A 00 01 */	addi r10, r10, 1
/* 80078350 00073250  7C 80 4A 14 */	add r4, r0, r9
/* 80078354 00073254  98 C4 00 08 */	stb r6, 8(r4)
/* 80078358 00073258  7C C9 01 AE */	stbx r6, r9, r0
/* 8007835C 0007325C  39 29 00 0C */	addi r9, r9, 0xc
/* 80078360 00073260  98 C4 00 01 */	stb r6, 1(r4)
/* 80078364 00073264  98 C4 00 02 */	stb r6, 2(r4)
/* 80078368 00073268  98 C4 00 03 */	stb r6, 3(r4)
/* 8007836C 0007326C  98 C4 00 04 */	stb r6, 4(r4)
/* 80078370 00073270  98 C4 00 05 */	stb r6, 5(r4)
/* 80078374 00073274  98 C4 00 06 */	stb r6, 6(r4)
/* 80078378 00073278  98 C4 00 07 */	stb r6, 7(r4)
lbl_8007837C:
/* 8007837C 0007327C  A0 03 00 02 */	lhz r0, 2(r3)
/* 80078380 00073280  7C 0A 00 40 */	cmplw r10, r0
/* 80078384 00073284  41 80 FF C4 */	blt lbl_80078348
/* 80078388 00073288  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8007838C 0007328C  3B A0 00 00 */	li r29, 0
/* 80078390 00073290  38 C0 00 02 */	li r6, 2
/* 80078394 00073294  38 00 FF FF */	li r0, -1
/* 80078398 00073298  9B A4 00 00 */	stb r29, 0(r4)
/* 8007839C 0007329C  38 80 00 40 */	li r4, 0x40
/* 800783A0 000732A0  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 800783A4 000732A4  98 C5 00 01 */	stb r6, 1(r5)
/* 800783A8 000732A8  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 800783AC 000732AC  38 61 00 EC */	addi r3, r1, 0xec
/* 800783B0 000732B0  98 05 00 08 */	stb r0, 8(r5)
/* 800783B4 000732B4  89 62 8A 24 */	lbz r11, lbl_804C0444-_SDA2_BASE_(r2)
/* 800783B8 000732B8  89 42 8A 25 */	lbz r10, lbl_804C0445-_SDA2_BASE_(r2)
/* 800783BC 000732BC  89 22 8A 26 */	lbz r9, lbl_804C0446-_SDA2_BASE_(r2)
/* 800783C0 000732C0  89 02 8A 27 */	lbz r8, lbl_804C0447-_SDA2_BASE_(r2)
/* 800783C4 000732C4  88 E2 8A 28 */	lbz r7, lbl_804C0448-_SDA2_BASE_(r2)
/* 800783C8 000732C8  88 C2 8A 29 */	lbz r6, lbl_804C0449-_SDA2_BASE_(r2)
/* 800783CC 000732CC  88 A2 8A 2A */	lbz r5, lbl_804C044A-_SDA2_BASE_(r2)
/* 800783D0 000732D0  88 02 8A 2B */	lbz r0, lbl_804C044B-_SDA2_BASE_(r2)
/* 800783D4 000732D4  99 61 00 18 */	stb r11, 0x18(r1)
/* 800783D8 000732D8  99 41 00 19 */	stb r10, 0x19(r1)
/* 800783DC 000732DC  99 21 00 1A */	stb r9, 0x1a(r1)
/* 800783E0 000732E0  99 01 00 1B */	stb r8, 0x1b(r1)
/* 800783E4 000732E4  98 E1 00 14 */	stb r7, 0x14(r1)
/* 800783E8 000732E8  98 C1 00 15 */	stb r6, 0x15(r1)
/* 800783EC 000732EC  98 A1 00 16 */	stb r5, 0x16(r1)
/* 800783F0 000732F0  98 01 00 17 */	stb r0, 0x17(r1)
/* 800783F4 000732F4  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 800783F8 000732F8  93 A1 00 60 */	stw r29, 0x60(r1)
/* 800783FC 000732FC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80078400 00073300  93 A1 00 E8 */	stw r29, 0xe8(r1)
/* 80078404 00073304  4B FE BB FD */	bl ZeroMemory32ByteBlocks__Q34nw4r3g3d6detailFPvUl
/* 80078408 00073308  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8007840C 0007330C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80078410 00073310  38 80 00 40 */	li r4, 0x40
/* 80078414 00073314  4B FE BB ED */	bl ZeroMemory32ByteBlocks__Q34nw4r3g3d6detailFPvUl
/* 80078418 00073318  93 A1 00 60 */	stw r29, 0x60(r1)
/* 8007841C 0007331C  38 61 00 64 */	addi r3, r1, 0x64
/* 80078420 00073320  38 80 00 40 */	li r4, 0x40
/* 80078424 00073324  4B FE BB DD */	bl ZeroMemory32ByteBlocks__Q34nw4r3g3d6detailFPvUl
/* 80078428 00073328  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8007842C 0007332C  38 61 00 20 */	addi r3, r1, 0x20
/* 80078430 00073330  38 80 00 40 */	li r4, 0x40
/* 80078434 00073334  4B FE BB CD */	bl ZeroMemory32ByteBlocks__Q34nw4r3g3d6detailFPvUl
/* 80078438 00073338  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8007843C 0007333C  38 61 00 EC */	addi r3, r1, 0xec
/* 80078440 00073340  38 81 00 10 */	addi r4, r1, 0x10
/* 80078444 00073344  90 01 00 10 */	stw r0, 0x10(r1)
/* 80078448 00073348  48 06 78 A9 */	bl GXInitLightColor
/* 8007844C 0007334C  C0 22 8A 2C */	lfs f1, lbl_804C044C-_SDA2_BASE_(r2)
/* 80078450 00073350  38 61 00 EC */	addi r3, r1, 0xec
/* 80078454 00073354  FC 40 08 90 */	fmr f2, f1
/* 80078458 00073358  FC 60 08 90 */	fmr f3, f1
/* 8007845C 0007335C  48 06 77 19 */	bl GXInitLightPos
/* 80078460 00073360  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 80078464 00073364  38 61 00 EC */	addi r3, r1, 0xec
/* 80078468 00073368  C0 22 8A 18 */	lfs f1, lbl_804C0438-_SDA2_BASE_(r2)
/* 8007846C 0007336C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80078470 00073370  C0 42 8A 30 */	lfs f2, lbl_804C0450-_SDA2_BASE_(r2)
/* 80078474 00073374  FC 60 08 90 */	fmr f3, f1
/* 80078478 00073378  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8007847C 0007337C  48 06 77 25 */	bl GXInitLightDir
/* 80078480 00073380  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 80078484 00073384  38 61 00 EC */	addi r3, r1, 0xec
/* 80078488 00073388  C0 22 8A 34 */	lfs f1, lbl_804C0454-_SDA2_BASE_(r2)
/* 8007848C 0007338C  38 80 00 00 */	li r4, 0
/* 80078490 00073390  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80078494 00073394  60 00 00 01 */	ori r0, r0, 1
/* 80078498 00073398  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8007849C 0007339C  48 06 74 81 */	bl GXInitLightSpot
/* 800784A0 000733A0  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 800784A4 000733A4  38 61 00 EC */	addi r3, r1, 0xec
/* 800784A8 000733A8  C0 22 8A 38 */	lfs f1, lbl_804C0458-_SDA2_BASE_(r2)
/* 800784AC 000733AC  38 80 00 00 */	li r4, 0
/* 800784B0 000733B0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800784B4 000733B4  C0 42 8A 20 */	lfs f2, lbl_804C0440-_SDA2_BASE_(r2)
/* 800784B8 000733B8  60 00 00 01 */	ori r0, r0, 1
/* 800784BC 000733BC  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 800784C0 000733C0  48 06 75 E5 */	bl GXInitLightDistAttn
/* 800784C4 000733C4  80 A1 00 E8 */	lwz r5, 0xe8(r1)
/* 800784C8 000733C8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800784CC 000733CC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800784D0 000733D0  38 81 00 0C */	addi r4, r1, 0xc
/* 800784D4 000733D4  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 800784D8 000733D8  60 A5 00 05 */	ori r5, r5, 5
/* 800784DC 000733DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800784E0 000733E0  90 A1 00 E8 */	stw r5, 0xe8(r1)
/* 800784E4 000733E4  48 06 78 0D */	bl GXInitLightColor
/* 800784E8 000733E8  C0 22 8A 2C */	lfs f1, lbl_804C044C-_SDA2_BASE_(r2)
/* 800784EC 000733EC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800784F0 000733F0  FC 40 08 90 */	fmr f2, f1
/* 800784F4 000733F4  FC 60 08 90 */	fmr f3, f1
/* 800784F8 000733F8  48 06 76 7D */	bl GXInitLightPos
/* 800784FC 000733FC  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 80078500 00073400  38 61 00 64 */	addi r3, r1, 0x64
/* 80078504 00073404  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80078508 00073408  38 81 00 08 */	addi r4, r1, 8
/* 8007850C 0007340C  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 80078510 00073410  60 A5 00 04 */	ori r5, r5, 4
/* 80078514 00073414  90 01 00 08 */	stw r0, 8(r1)
/* 80078518 00073418  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 8007851C 0007341C  48 06 77 D5 */	bl GXInitLightColor
/* 80078520 00073420  C0 22 8A 2C */	lfs f1, lbl_804C044C-_SDA2_BASE_(r2)
/* 80078524 00073424  38 61 00 64 */	addi r3, r1, 0x64
/* 80078528 00073428  FC 40 08 90 */	fmr f2, f1
/* 8007852C 0007342C  FC 60 08 90 */	fmr f3, f1
/* 80078530 00073430  48 06 76 45 */	bl GXInitLightPos
/* 80078534 00073434  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80078538 00073438  38 61 00 64 */	addi r3, r1, 0x64
/* 8007853C 0007343C  C0 22 8A 18 */	lfs f1, lbl_804C0438-_SDA2_BASE_(r2)
/* 80078540 00073440  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80078544 00073444  C0 42 8A 30 */	lfs f2, lbl_804C0450-_SDA2_BASE_(r2)
/* 80078548 00073448  FC 60 08 90 */	fmr f3, f1
/* 8007854C 0007344C  90 01 00 60 */	stw r0, 0x60(r1)
/* 80078550 00073450  48 06 76 51 */	bl GXInitLightDir
/* 80078554 00073454  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80078558 00073458  38 61 00 64 */	addi r3, r1, 0x64
/* 8007855C 0007345C  C0 22 8A 18 */	lfs f1, lbl_804C0438-_SDA2_BASE_(r2)
/* 80078560 00073460  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80078564 00073464  C0 62 8A 1C */	lfs f3, lbl_804C043C-_SDA2_BASE_(r2)
/* 80078568 00073468  60 00 00 0A */	ori r0, r0, 0xa
/* 8007856C 0007346C  FC 40 08 90 */	fmr f2, f1
/* 80078570 00073470  FC A0 08 90 */	fmr f5, f1
/* 80078574 00073474  90 01 00 60 */	stw r0, 0x60(r1)
/* 80078578 00073478  C0 82 8A 3C */	lfs f4, lbl_804C045C-_SDA2_BASE_(r2)
/* 8007857C 0007347C  C0 C2 8A 40 */	lfs f6, lbl_804C0460-_SDA2_BASE_(r2)
/* 80078580 00073480  48 06 73 61 */	bl GXInitLightAttn
/* 80078584 00073484  80 61 00 60 */	lwz r3, 0x60(r1)
/* 80078588 00073488  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8007858C 0007348C  54 63 00 3C */	rlwinm r3, r3, 0, 0, 0x1e
/* 80078590 00073490  60 63 00 06 */	ori r3, r3, 6
/* 80078594 00073494  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80078598 00073498  90 61 00 60 */	stw r3, 0x60(r1)
/* 8007859C 0007349C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800785A0 000734A0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 800785A4 000734A4  2C 00 00 00 */	cmpwi r0, 0
/* 800785A8 000734A8  41 82 00 50 */	beq lbl_800785F8
/* 800785AC 000734AC  80 DF 00 04 */	lwz r6, 4(r31)
/* 800785B0 000734B0  38 01 00 E8 */	addi r0, r1, 0xe8
/* 800785B4 000734B4  7C 06 00 40 */	cmplw r6, r0
/* 800785B8 000734B8  41 82 00 1C */	beq lbl_800785D4
/* 800785BC 000734BC  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 800785C0 000734C0  38 66 00 04 */	addi r3, r6, 4
/* 800785C4 000734C4  38 81 00 EC */	addi r4, r1, 0xec
/* 800785C8 000734C8  38 A0 00 40 */	li r5, 0x40
/* 800785CC 000734CC  90 06 00 00 */	stw r0, 0(r6)
/* 800785D0 000734D0  4B FE B9 55 */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
lbl_800785D4:
/* 800785D4 000734D4  80 9F 00 08 */	lwz r4, 8(r31)
/* 800785D8 000734D8  88 61 00 14 */	lbz r3, 0x14(r1)
/* 800785DC 000734DC  88 01 00 15 */	lbz r0, 0x15(r1)
/* 800785E0 000734E0  98 64 00 00 */	stb r3, 0(r4)
/* 800785E4 000734E4  88 61 00 16 */	lbz r3, 0x16(r1)
/* 800785E8 000734E8  98 04 00 01 */	stb r0, 1(r4)
/* 800785EC 000734EC  88 01 00 17 */	lbz r0, 0x17(r1)
/* 800785F0 000734F0  98 64 00 02 */	stb r3, 2(r4)
/* 800785F4 000734F4  98 04 00 03 */	stb r0, 3(r4)
lbl_800785F8:
/* 800785F8 000734F8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 800785FC 000734FC  28 00 00 01 */	cmplwi r0, 1
/* 80078600 00073500  40 81 00 54 */	ble lbl_80078654
/* 80078604 00073504  80 7F 00 04 */	lwz r3, 4(r31)
/* 80078608 00073508  38 01 00 A4 */	addi r0, r1, 0xa4
/* 8007860C 0007350C  38 C3 00 44 */	addi r6, r3, 0x44
/* 80078610 00073510  7C 06 00 40 */	cmplw r6, r0
/* 80078614 00073514  41 82 00 1C */	beq lbl_80078630
/* 80078618 00073518  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8007861C 0007351C  38 66 00 04 */	addi r3, r6, 4
/* 80078620 00073520  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80078624 00073524  38 A0 00 40 */	li r5, 0x40
/* 80078628 00073528  90 06 00 00 */	stw r0, 0(r6)
/* 8007862C 0007352C  4B FE B8 F9 */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
lbl_80078630:
/* 80078630 00073530  80 9F 00 08 */	lwz r4, 8(r31)
/* 80078634 00073534  88 61 00 14 */	lbz r3, 0x14(r1)
/* 80078638 00073538  88 01 00 15 */	lbz r0, 0x15(r1)
/* 8007863C 0007353C  98 64 00 04 */	stb r3, 4(r4)
/* 80078640 00073540  88 61 00 16 */	lbz r3, 0x16(r1)
/* 80078644 00073544  98 04 00 05 */	stb r0, 5(r4)
/* 80078648 00073548  88 01 00 17 */	lbz r0, 0x17(r1)
/* 8007864C 0007354C  98 64 00 06 */	stb r3, 6(r4)
/* 80078650 00073550  98 04 00 07 */	stb r0, 7(r4)
lbl_80078654:
/* 80078654 00073554  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80078658 00073558  28 00 00 02 */	cmplwi r0, 2
/* 8007865C 0007355C  40 81 00 54 */	ble lbl_800786B0
/* 80078660 00073560  80 7F 00 04 */	lwz r3, 4(r31)
/* 80078664 00073564  38 01 00 60 */	addi r0, r1, 0x60
/* 80078668 00073568  38 C3 00 88 */	addi r6, r3, 0x88
/* 8007866C 0007356C  7C 06 00 40 */	cmplw r6, r0
/* 80078670 00073570  41 82 00 1C */	beq lbl_8007868C
/* 80078674 00073574  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80078678 00073578  38 66 00 04 */	addi r3, r6, 4
/* 8007867C 0007357C  38 81 00 64 */	addi r4, r1, 0x64
/* 80078680 00073580  38 A0 00 40 */	li r5, 0x40
/* 80078684 00073584  90 06 00 00 */	stw r0, 0(r6)
/* 80078688 00073588  4B FE B8 9D */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
lbl_8007868C:
/* 8007868C 0007358C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80078690 00073590  88 61 00 14 */	lbz r3, 0x14(r1)
/* 80078694 00073594  88 01 00 15 */	lbz r0, 0x15(r1)
/* 80078698 00073598  98 64 00 08 */	stb r3, 8(r4)
/* 8007869C 0007359C  88 61 00 16 */	lbz r3, 0x16(r1)
/* 800786A0 000735A0  98 04 00 09 */	stb r0, 9(r4)
/* 800786A4 000735A4  88 01 00 17 */	lbz r0, 0x17(r1)
/* 800786A8 000735A8  98 64 00 0A */	stb r3, 0xa(r4)
/* 800786AC 000735AC  98 04 00 0B */	stb r0, 0xb(r4)
lbl_800786B0:
/* 800786B0 000735B0  8B 41 00 15 */	lbz r26, 0x15(r1)
/* 800786B4 000735B4  3B A1 00 1C */	addi r29, r1, 0x1c
/* 800786B8 000735B8  8B 21 00 16 */	lbz r25, 0x16(r1)
/* 800786BC 000735BC  3A E0 00 03 */	li r23, 3
/* 800786C0 000735C0  8B 01 00 17 */	lbz r24, 0x17(r1)
/* 800786C4 000735C4  3B 80 00 CC */	li r28, 0xcc
/* 800786C8 000735C8  8B C1 00 14 */	lbz r30, 0x14(r1)
/* 800786CC 000735CC  3B 60 00 0C */	li r27, 0xc
/* 800786D0 000735D0  48 00 00 50 */	b lbl_80078720
lbl_800786D4:
/* 800786D4 000735D4  80 1F 00 04 */	lwz r0, 4(r31)
/* 800786D8 000735D8  7C C0 E2 14 */	add r6, r0, r28
/* 800786DC 000735DC  7C 06 E8 40 */	cmplw r6, r29
/* 800786E0 000735E0  41 82 00 1C */	beq lbl_800786FC
/* 800786E4 000735E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800786E8 000735E8  38 66 00 04 */	addi r3, r6, 4
/* 800786EC 000735EC  38 81 00 20 */	addi r4, r1, 0x20
/* 800786F0 000735F0  38 A0 00 40 */	li r5, 0x40
/* 800786F4 000735F4  90 06 00 00 */	stw r0, 0(r6)
/* 800786F8 000735F8  4B FE B8 2D */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
lbl_800786FC:
/* 800786FC 000735FC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80078700 00073600  3B 9C 00 44 */	addi r28, r28, 0x44
/* 80078704 00073604  3A F7 00 01 */	addi r23, r23, 1
/* 80078708 00073608  7F DB 01 AE */	stbx r30, r27, r0
/* 8007870C 0007360C  7C 60 DA 14 */	add r3, r0, r27
/* 80078710 00073610  3B 7B 00 04 */	addi r27, r27, 4
/* 80078714 00073614  9B 43 00 01 */	stb r26, 1(r3)
/* 80078718 00073618  9B 23 00 02 */	stb r25, 2(r3)
/* 8007871C 0007361C  9B 03 00 03 */	stb r24, 3(r3)
lbl_80078720:
/* 80078720 00073620  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80078724 00073624  7C 17 00 40 */	cmplw r23, r0
/* 80078728 00073628  41 80 FF AC */	blt lbl_800786D4
/* 8007872C 0007362C  39 61 01 60 */	addi r11, r1, 0x160
/* 80078730 00073630  7F E3 FB 78 */	mr r3, r31
/* 80078734 00073634  48 03 96 4D */	bl _restgpr_23
/* 80078738 00073638  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8007873C 0007363C  7C 08 03 A6 */	mtlr r0
/* 80078740 00073640  38 21 01 60 */	addi r1, r1, 0x160
/* 80078744 00073644  4E 80 00 20 */	blr 

.global Import__Q34nw4r3g3d12LightSettingFRCQ34nw4r3g3d12LightSetting
Import__Q34nw4r3g3d12LightSettingFRCQ34nw4r3g3d12LightSetting:
/* 80078748 00073648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007874C 0007364C  7C 08 02 A6 */	mflr r0
/* 80078750 00073650  90 01 00 24 */	stw r0, 0x24(r1)
/* 80078754 00073654  39 61 00 20 */	addi r11, r1, 0x20
/* 80078758 00073658  48 03 95 ED */	bl _savegpr_27
/* 8007875C 0007365C  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80078760 00073660  7C 7B 1B 78 */	mr r27, r3
/* 80078764 00073664  A0 04 00 00 */	lhz r0, 0(r4)
/* 80078768 00073668  7C 9C 23 78 */	mr r28, r4
/* 8007876C 0007366C  7C 05 00 40 */	cmplw r5, r0
/* 80078770 00073670  41 80 00 14 */	blt lbl_80078784
/* 80078774 00073674  A0 63 00 02 */	lhz r3, 2(r3)
/* 80078778 00073678  A0 04 00 02 */	lhz r0, 2(r4)
/* 8007877C 0007367C  7C 03 00 40 */	cmplw r3, r0
/* 80078780 00073680  40 80 00 0C */	bge lbl_8007878C
lbl_80078784:
/* 80078784 00073684  38 60 00 00 */	li r3, 0
/* 80078788 00073688  48 00 01 38 */	b lbl_800788C0
lbl_8007878C:
/* 8007878C 0007368C  3B A0 00 00 */	li r29, 0
/* 80078790 00073690  3B E0 00 00 */	li r31, 0
/* 80078794 00073694  3B C0 00 00 */	li r30, 0
/* 80078798 00073698  48 00 00 88 */	b lbl_80078820
lbl_8007879C:
/* 8007879C 0007369C  80 1C 00 04 */	lwz r0, 4(r28)
/* 800787A0 000736A0  7C 7F 00 2E */	lwzx r3, r31, r0
/* 800787A4 000736A4  7C A0 FA 14 */	add r5, r0, r31
/* 800787A8 000736A8  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 800787AC 000736AC  41 82 00 2C */	beq lbl_800787D8
/* 800787B0 000736B0  80 1B 00 04 */	lwz r0, 4(r27)
/* 800787B4 000736B4  7C 80 FA 14 */	add r4, r0, r31
/* 800787B8 000736B8  7C 04 28 40 */	cmplw r4, r5
/* 800787BC 000736BC  41 82 00 2C */	beq lbl_800787E8
/* 800787C0 000736C0  90 64 00 00 */	stw r3, 0(r4)
/* 800787C4 000736C4  38 64 00 04 */	addi r3, r4, 4
/* 800787C8 000736C8  38 85 00 04 */	addi r4, r5, 4
/* 800787CC 000736CC  38 A0 00 40 */	li r5, 0x40
/* 800787D0 000736D0  4B FE B7 55 */	bl Copy32ByteBlocks__Q34nw4r3g3d6detailFPvPCvUl
/* 800787D4 000736D4  48 00 00 14 */	b lbl_800787E8
lbl_800787D8:
/* 800787D8 000736D8  80 7B 00 04 */	lwz r3, 4(r27)
/* 800787DC 000736DC  7C 03 F8 2E */	lwzx r0, r3, r31
/* 800787E0 000736E0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800787E4 000736E4  7C 03 F9 2E */	stwx r0, r3, r31
lbl_800787E8:
/* 800787E8 000736E8  80 1C 00 08 */	lwz r0, 8(r28)
/* 800787EC 000736EC  3B FF 00 44 */	addi r31, r31, 0x44
/* 800787F0 000736F0  80 7B 00 08 */	lwz r3, 8(r27)
/* 800787F4 000736F4  3B BD 00 01 */	addi r29, r29, 1
/* 800787F8 000736F8  7C 80 F2 14 */	add r4, r0, r30
/* 800787FC 000736FC  7C 1E 00 AE */	lbzx r0, r30, r0
/* 80078800 00073700  7C 03 F1 EE */	stbux r0, r3, r30
/* 80078804 00073704  3B DE 00 04 */	addi r30, r30, 4
/* 80078808 00073708  88 04 00 01 */	lbz r0, 1(r4)
/* 8007880C 0007370C  98 03 00 01 */	stb r0, 1(r3)
/* 80078810 00073710  88 04 00 02 */	lbz r0, 2(r4)
/* 80078814 00073714  98 03 00 02 */	stb r0, 2(r3)
/* 80078818 00073718  88 04 00 03 */	lbz r0, 3(r4)
/* 8007881C 0007371C  98 03 00 03 */	stb r0, 3(r3)
lbl_80078820:
/* 80078820 00073720  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80078824 00073724  7C 1D 00 40 */	cmplw r29, r0
/* 80078828 00073728  41 80 FF 74 */	blt lbl_8007879C
/* 8007882C 0007372C  38 E0 00 00 */	li r7, 0
/* 80078830 00073730  38 C0 00 00 */	li r6, 0
/* 80078834 00073734  48 00 00 7C */	b lbl_800788B0
lbl_80078838:
/* 80078838 00073738  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 8007883C 0007373C  38 E7 00 01 */	addi r7, r7, 1
/* 80078840 00073740  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 80078844 00073744  7C A3 32 14 */	add r5, r3, r6
/* 80078848 00073748  7C 63 30 AE */	lbzx r3, r3, r6
/* 8007884C 0007374C  7C 80 32 14 */	add r4, r0, r6
/* 80078850 00073750  88 05 00 01 */	lbz r0, 1(r5)
/* 80078854 00073754  38 C6 00 0C */	addi r6, r6, 0xc
/* 80078858 00073758  98 64 00 00 */	stb r3, 0(r4)
/* 8007885C 0007375C  98 04 00 01 */	stb r0, 1(r4)
/* 80078860 00073760  88 65 00 02 */	lbz r3, 2(r5)
/* 80078864 00073764  88 05 00 03 */	lbz r0, 3(r5)
/* 80078868 00073768  98 64 00 02 */	stb r3, 2(r4)
/* 8007886C 0007376C  98 04 00 03 */	stb r0, 3(r4)
/* 80078870 00073770  88 65 00 04 */	lbz r3, 4(r5)
/* 80078874 00073774  88 05 00 05 */	lbz r0, 5(r5)
/* 80078878 00073778  98 64 00 04 */	stb r3, 4(r4)
/* 8007887C 0007377C  98 04 00 05 */	stb r0, 5(r4)
/* 80078880 00073780  88 65 00 06 */	lbz r3, 6(r5)
/* 80078884 00073784  88 05 00 07 */	lbz r0, 7(r5)
/* 80078888 00073788  98 64 00 06 */	stb r3, 6(r4)
/* 8007888C 0007378C  98 04 00 07 */	stb r0, 7(r4)
/* 80078890 00073790  88 05 00 08 */	lbz r0, 8(r5)
/* 80078894 00073794  98 04 00 08 */	stb r0, 8(r4)
/* 80078898 00073798  88 05 00 09 */	lbz r0, 9(r5)
/* 8007889C 0007379C  98 04 00 09 */	stb r0, 9(r4)
/* 800788A0 000737A0  88 05 00 0A */	lbz r0, 0xa(r5)
/* 800788A4 000737A4  98 04 00 0A */	stb r0, 0xa(r4)
/* 800788A8 000737A8  88 05 00 0B */	lbz r0, 0xb(r5)
/* 800788AC 000737AC  98 04 00 0B */	stb r0, 0xb(r4)
lbl_800788B0:
/* 800788B0 000737B0  A0 1C 00 02 */	lhz r0, 2(r28)
/* 800788B4 000737B4  7C 07 00 40 */	cmplw r7, r0
/* 800788B8 000737B8  41 80 FF 80 */	blt lbl_80078838
/* 800788BC 000737BC  38 60 00 01 */	li r3, 1
lbl_800788C0:
/* 800788C0 000737C0  39 61 00 20 */	addi r11, r1, 0x20
/* 800788C4 000737C4  48 03 94 CD */	bl _restgpr_27
/* 800788C8 000737C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800788CC 000737CC  7C 08 03 A6 */	mtlr r0
/* 800788D0 000737D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800788D4 000737D4  4E 80 00 20 */	blr 

.global ApplyViewMtx__Q34nw4r3g3d12LightSettingFRCQ34nw4r4math5MTX34Ul
ApplyViewMtx__Q34nw4r3g3d12LightSettingFRCQ34nw4r4math5MTX34Ul:
/* 800788D8 000737D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800788DC 000737DC  7C 08 02 A6 */	mflr r0
/* 800788E0 000737E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800788E4 000737E4  39 61 00 40 */	addi r11, r1, 0x40
/* 800788E8 000737E8  48 03 94 5D */	bl _savegpr_27
/* 800788EC 000737EC  90 A1 00 08 */	stw r5, 8(r1)
/* 800788F0 000737F0  7C 9C 23 78 */	mr r28, r4
/* 800788F4 000737F4  7C 7B 1B 78 */	mr r27, r3
/* 800788F8 000737F8  38 81 00 08 */	addi r4, r1, 8
/* 800788FC 000737FC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80078900 00073800  7C 05 00 40 */	cmplw r5, r0
/* 80078904 00073804  90 01 00 0C */	stw r0, 0xc(r1)
/* 80078908 00073808  40 80 00 08 */	bge lbl_80078910
/* 8007890C 0007380C  38 81 00 0C */	addi r4, r1, 0xc
lbl_80078910:
/* 80078910 00073810  80 04 00 00 */	lwz r0, 0(r4)
/* 80078914 00073814  3B A0 00 00 */	li r29, 0
/* 80078918 00073818  3B E0 00 00 */	li r31, 0
/* 8007891C 0007381C  90 01 00 08 */	stw r0, 8(r1)
/* 80078920 00073820  48 00 00 B4 */	b lbl_800789D4
lbl_80078924:
/* 80078924 00073824  80 1B 00 04 */	lwz r0, 4(r27)
/* 80078928 00073828  7F C0 FA 14 */	add r30, r0, r31
/* 8007892C 0007382C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80078930 00073830  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80078934 00073834  41 82 00 98 */	beq lbl_800789CC
/* 80078938 00073838  38 7E 00 04 */	addi r3, r30, 4
/* 8007893C 0007383C  38 81 00 10 */	addi r4, r1, 0x10
/* 80078940 00073840  38 A1 00 14 */	addi r5, r1, 0x14
/* 80078944 00073844  38 C1 00 18 */	addi r6, r1, 0x18
/* 80078948 00073848  48 06 72 75 */	bl GXGetLightDir
/* 8007894C 0007384C  38 61 00 10 */	addi r3, r1, 0x10
/* 80078950 00073850  7F 84 E3 78 */	mr r4, r28
/* 80078954 00073854  7C 65 1B 78 */	mr r5, r3
/* 80078958 00073858  4B FB 77 89 */	bl VEC3TransformNormal__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
/* 8007895C 0007385C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80078960 00073860  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80078964 00073864  41 82 00 1C */	beq lbl_80078980
/* 80078968 00073868  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8007896C 0007386C  38 7E 00 04 */	addi r3, r30, 4
/* 80078970 00073870  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80078974 00073874  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80078978 00073878  48 06 72 6D */	bl GXInitSpecularDir
/* 8007897C 0007387C  48 00 00 50 */	b lbl_800789CC
lbl_80078980:
/* 80078980 00073880  38 7E 00 04 */	addi r3, r30, 4
/* 80078984 00073884  38 81 00 1C */	addi r4, r1, 0x1c
/* 80078988 00073888  38 A1 00 20 */	addi r5, r1, 0x20
/* 8007898C 0007388C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80078990 00073890  48 06 71 F5 */	bl GXGetLightPos
/* 80078994 00073894  38 81 00 1C */	addi r4, r1, 0x1c
/* 80078998 00073898  7F 83 E3 78 */	mr r3, r28
/* 8007899C 0007389C  7C 85 23 78 */	mr r5, r4
/* 800789A0 000738A0  48 06 F8 C1 */	bl PSMTXMultVec
/* 800789A4 000738A4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 800789A8 000738A8  38 7E 00 04 */	addi r3, r30, 4
/* 800789AC 000738AC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 800789B0 000738B0  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 800789B4 000738B4  48 06 71 C1 */	bl GXInitLightPos
/* 800789B8 000738B8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800789BC 000738BC  38 7E 00 04 */	addi r3, r30, 4
/* 800789C0 000738C0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 800789C4 000738C4  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 800789C8 000738C8  48 06 71 D9 */	bl GXInitLightDir
lbl_800789CC:
/* 800789CC 000738CC  3B FF 00 44 */	addi r31, r31, 0x44
/* 800789D0 000738D0  3B BD 00 01 */	addi r29, r29, 1
lbl_800789D4:
/* 800789D4 000738D4  80 01 00 08 */	lwz r0, 8(r1)
/* 800789D8 000738D8  7C 1D 00 40 */	cmplw r29, r0
/* 800789DC 000738DC  41 80 FF 48 */	blt lbl_80078924
/* 800789E0 000738E0  39 61 00 40 */	addi r11, r1, 0x40
/* 800789E4 000738E4  48 03 93 AD */	bl _restgpr_27
/* 800789E8 000738E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800789EC 000738EC  7C 08 03 A6 */	mtlr r0
/* 800789F0 000738F0  38 21 00 40 */	addi r1, r1, 0x40
/* 800789F4 000738F4  4E 80 00 20 */	blr 

.global SelectLightObj__Q34nw4r3g3d8LightSetFUli
SelectLightObj__Q34nw4r3g3d8LightSetFUli:
/* 800789F8 000738F8  80 E3 00 00 */	lwz r7, 0(r3)
/* 800789FC 000738FC  38 C0 00 00 */	li r6, 0
/* 80078A00 00073900  2C 07 00 00 */	cmpwi r7, 0
/* 80078A04 00073904  41 82 00 14 */	beq lbl_80078A18
/* 80078A08 00073908  80 03 00 04 */	lwz r0, 4(r3)
/* 80078A0C 0007390C  2C 00 00 00 */	cmpwi r0, 0
/* 80078A10 00073910  41 82 00 08 */	beq lbl_80078A18
/* 80078A14 00073914  38 C0 00 01 */	li r6, 1
lbl_80078A18:
/* 80078A18 00073918  2C 06 00 00 */	cmpwi r6, 0
/* 80078A1C 0007391C  41 82 00 44 */	beq lbl_80078A60
/* 80078A20 00073920  28 04 00 08 */	cmplwi r4, 8
/* 80078A24 00073924  40 80 00 3C */	bge lbl_80078A60
/* 80078A28 00073928  2C 05 00 00 */	cmpwi r5, 0
/* 80078A2C 0007392C  40 80 00 18 */	bge lbl_80078A44
/* 80078A30 00073930  80 A3 00 04 */	lwz r5, 4(r3)
/* 80078A34 00073934  38 00 FF FF */	li r0, -1
/* 80078A38 00073938  38 60 00 01 */	li r3, 1
/* 80078A3C 0007393C  7C 05 21 AE */	stbx r0, r5, r4
/* 80078A40 00073940  4E 80 00 20 */	blr 
lbl_80078A44:
/* 80078A44 00073944  A0 07 00 00 */	lhz r0, 0(r7)
/* 80078A48 00073948  7C 05 00 00 */	cmpw r5, r0
/* 80078A4C 0007394C  40 80 00 14 */	bge lbl_80078A60
/* 80078A50 00073950  80 C3 00 04 */	lwz r6, 4(r3)
/* 80078A54 00073954  38 60 00 01 */	li r3, 1
/* 80078A58 00073958  7C A6 21 AE */	stbx r5, r6, r4
/* 80078A5C 0007395C  4E 80 00 20 */	blr 
lbl_80078A60:
/* 80078A60 00073960  38 60 00 00 */	li r3, 0
/* 80078A64 00073964  4E 80 00 20 */	blr 

.global SelectAmbLightObj__Q34nw4r3g3d8LightSetFi
SelectAmbLightObj__Q34nw4r3g3d8LightSetFi:
/* 80078A68 00073968  80 C3 00 00 */	lwz r6, 0(r3)
/* 80078A6C 0007396C  38 A0 00 00 */	li r5, 0
/* 80078A70 00073970  2C 06 00 00 */	cmpwi r6, 0
/* 80078A74 00073974  41 82 00 14 */	beq lbl_80078A88
/* 80078A78 00073978  80 03 00 04 */	lwz r0, 4(r3)
/* 80078A7C 0007397C  2C 00 00 00 */	cmpwi r0, 0
/* 80078A80 00073980  41 82 00 08 */	beq lbl_80078A88
/* 80078A84 00073984  38 A0 00 01 */	li r5, 1
lbl_80078A88:
/* 80078A88 00073988  2C 05 00 00 */	cmpwi r5, 0
/* 80078A8C 0007398C  41 82 00 3C */	beq lbl_80078AC8
/* 80078A90 00073990  2C 04 00 00 */	cmpwi r4, 0
/* 80078A94 00073994  40 80 00 18 */	bge lbl_80078AAC
/* 80078A98 00073998  80 83 00 04 */	lwz r4, 4(r3)
/* 80078A9C 0007399C  38 00 FF FF */	li r0, -1
/* 80078AA0 000739A0  38 60 00 01 */	li r3, 1
/* 80078AA4 000739A4  98 04 00 08 */	stb r0, 8(r4)
/* 80078AA8 000739A8  4E 80 00 20 */	blr 
lbl_80078AAC:
/* 80078AAC 000739AC  A0 06 00 00 */	lhz r0, 0(r6)
/* 80078AB0 000739B0  7C 04 00 00 */	cmpw r4, r0
/* 80078AB4 000739B4  40 80 00 14 */	bge lbl_80078AC8
/* 80078AB8 000739B8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80078ABC 000739BC  38 60 00 01 */	li r3, 1
/* 80078AC0 000739C0  98 85 00 08 */	stb r4, 8(r5)
/* 80078AC4 000739C4  4E 80 00 20 */	blr 
lbl_80078AC8:
/* 80078AC8 000739C8  38 60 00 00 */	li r3, 0
/* 80078ACC 000739CC  4E 80 00 20 */	blr 
