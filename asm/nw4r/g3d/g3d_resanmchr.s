.include "macros.inc"

.section .sdata2, "a"
.global lbl_804C0248
lbl_804C0248:
	.single 0e0
.global lbl_804C024C
lbl_804C024C:
	.single 0e1
.global lbl_804C0250
lbl_804C0250:
	.single 0e2
.global lbl_804C0254
lbl_804C0254:
	.single 0e3
.global lbl_804C0258
lbl_804C0258:
	.single 0e0.7111111
	.balign 8
.global lbl_804C0260
lbl_804C0260:
	.long 0x43300000
	.long 0x00000000
.global lbl_804C0268
lbl_804C0268:
	.single 0e1.40625
.global lbl_804C026C
lbl_804C026C:
	.single 0e90
.global lbl_804C0270
lbl_804C0270:
	.single 0e-90
	.balign 8

.section .rodata, "a"

# gGetAnmResultTable__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@

.global gGetAnmResultTable__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2
gGetAnmResultTable__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2:
    .long GetAnmResult___Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
    .long GetAnmResult_S__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
    .long GetAnmResult_R__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
    .long GetAnmResult_SR__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
    .long GetAnmResult_T__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
    .long GetAnmResult_ST__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
    .long GetAnmResult_RT__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
    .long GetAnmResult_SRT__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf

.section .text, "ax"
# GetAnmScale__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
.global GetAnmScale__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
GetAnmScale__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf:
/* 80057CC4 00052BC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80057CC8 00052BC8  7C 08 02 A6 */	mflr r0
/* 80057CCC 00052BCC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80057CD0 00052BD0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80057CD4 00052BD4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80057CD8 00052BD8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80057CDC 00052BDC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80057CE0 00052BE0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80057CE4 00052BE4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80057CE8 00052BE8  3C 00 04 00 */	lis r0, 0x400
/* 80057CEC 00052BEC  FF A0 08 90 */	fmr f29, f1
/* 80057CF0 00052BF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80057CF4 00052BF4  83 E4 00 04 */	lwz r31, 4(r4)
/* 80057CF8 00052BF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80057CFC 00052BFC  7C BE 2B 78 */	mr r30, r5
/* 80057D00 00052C00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80057D04 00052C04  7C 9D 23 78 */	mr r29, r4
/* 80057D08 00052C08  93 81 00 10 */	stw r28, 0x10(r1)
/* 80057D0C 00052C0C  7C 7C 1B 78 */	mr r28, r3
/* 80057D10 00052C10  57 E3 01 4C */	rlwinm r3, r31, 0, 5, 6
/* 80057D14 00052C14  7C 03 00 00 */	cmpw r3, r0
/* 80057D18 00052C18  41 82 00 F0 */	beq lbl_80057E08
/* 80057D1C 00052C1C  40 80 00 20 */	bge lbl_80057D3C
/* 80057D20 00052C20  3C 00 02 00 */	lis r0, 0x200
/* 80057D24 00052C24  7C 03 00 00 */	cmpw r3, r0
/* 80057D28 00052C28  41 82 00 50 */	beq lbl_80057D78
/* 80057D2C 00052C2C  40 80 01 FC */	bge lbl_80057F28
/* 80057D30 00052C30  2C 03 00 00 */	cmpwi r3, 0
/* 80057D34 00052C34  41 82 00 18 */	beq lbl_80057D4C
/* 80057D38 00052C38  48 00 01 F0 */	b lbl_80057F28
lbl_80057D3C:
/* 80057D3C 00052C3C  3C 00 06 00 */	lis r0, 0x600
/* 80057D40 00052C40  7C 03 00 00 */	cmpw r3, r0
/* 80057D44 00052C44  41 82 01 54 */	beq lbl_80057E98
/* 80057D48 00052C48  48 00 01 E0 */	b lbl_80057F28
lbl_80057D4C:
/* 80057D4C 00052C4C  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80057D50 00052C50  C3 E5 00 00 */	lfs f31, 0(r5)
/* 80057D54 00052C54  3B C5 00 04 */	addi r30, r5, 4
/* 80057D58 00052C58  41 82 00 10 */	beq lbl_80057D68
/* 80057D5C 00052C5C  FF C0 F8 90 */	fmr f30, f31
/* 80057D60 00052C60  FC 20 F8 90 */	fmr f1, f31
/* 80057D64 00052C64  48 00 01 D0 */	b lbl_80057F34
lbl_80057D68:
/* 80057D68 00052C68  C3 DE 00 00 */	lfs f30, 0(r30)
/* 80057D6C 00052C6C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80057D70 00052C70  3B DE 00 08 */	addi r30, r30, 8
/* 80057D74 00052C74  48 00 01 C0 */	b lbl_80057F34
lbl_80057D78:
/* 80057D78 00052C78  57 E0 04 A5 */	rlwinm. r0, r31, 0, 0x12, 0x12
/* 80057D7C 00052C7C  7F C3 F3 78 */	mr r3, r30
/* 80057D80 00052C80  3B C5 00 04 */	addi r30, r5, 4
/* 80057D84 00052C84  41 82 00 0C */	beq lbl_80057D90
/* 80057D88 00052C88  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057D8C 00052C8C  48 00 00 10 */	b lbl_80057D9C
lbl_80057D90:
/* 80057D90 00052C90  80 03 00 00 */	lwz r0, 0(r3)
/* 80057D94 00052C94  7C 60 22 14 */	add r3, r0, r4
/* 80057D98 00052C98  48 00 04 81 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80057D9C:
/* 80057D9C 00052C9C  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80057DA0 00052CA0  FF E0 08 90 */	fmr f31, f1
/* 80057DA4 00052CA4  41 82 00 0C */	beq lbl_80057DB0
/* 80057DA8 00052CA8  FF C0 08 90 */	fmr f30, f1
/* 80057DAC 00052CAC  48 00 01 88 */	b lbl_80057F34
lbl_80057DB0:
/* 80057DB0 00052CB0  57 E0 04 63 */	rlwinm. r0, r31, 0, 0x11, 0x11
/* 80057DB4 00052CB4  7F C3 F3 78 */	mr r3, r30
/* 80057DB8 00052CB8  3B DE 00 04 */	addi r30, r30, 4
/* 80057DBC 00052CBC  41 82 00 0C */	beq lbl_80057DC8
/* 80057DC0 00052CC0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057DC4 00052CC4  48 00 00 14 */	b lbl_80057DD8
lbl_80057DC8:
/* 80057DC8 00052CC8  80 03 00 00 */	lwz r0, 0(r3)
/* 80057DCC 00052CCC  FC 20 E8 90 */	fmr f1, f29
/* 80057DD0 00052CD0  7C 60 EA 14 */	add r3, r0, r29
/* 80057DD4 00052CD4  48 00 04 45 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80057DD8:
/* 80057DD8 00052CD8  57 E0 04 21 */	rlwinm. r0, r31, 0, 0x10, 0x10
/* 80057DDC 00052CDC  FF C0 08 90 */	fmr f30, f1
/* 80057DE0 00052CE0  7F C3 F3 78 */	mr r3, r30
/* 80057DE4 00052CE4  3B DE 00 04 */	addi r30, r30, 4
/* 80057DE8 00052CE8  41 82 00 0C */	beq lbl_80057DF4
/* 80057DEC 00052CEC  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057DF0 00052CF0  48 00 01 44 */	b lbl_80057F34
lbl_80057DF4:
/* 80057DF4 00052CF4  80 03 00 00 */	lwz r0, 0(r3)
/* 80057DF8 00052CF8  FC 20 E8 90 */	fmr f1, f29
/* 80057DFC 00052CFC  7C 60 EA 14 */	add r3, r0, r29
/* 80057E00 00052D00  48 00 04 19 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
/* 80057E04 00052D04  48 00 01 30 */	b lbl_80057F34
lbl_80057E08:
/* 80057E08 00052D08  57 E0 04 A5 */	rlwinm. r0, r31, 0, 0x12, 0x12
/* 80057E0C 00052D0C  7F C3 F3 78 */	mr r3, r30
/* 80057E10 00052D10  3B C5 00 04 */	addi r30, r5, 4
/* 80057E14 00052D14  41 82 00 0C */	beq lbl_80057E20
/* 80057E18 00052D18  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057E1C 00052D1C  48 00 00 10 */	b lbl_80057E2C
lbl_80057E20:
/* 80057E20 00052D20  80 03 00 00 */	lwz r0, 0(r3)
/* 80057E24 00052D24  7C 60 22 14 */	add r3, r0, r4
/* 80057E28 00052D28  48 00 02 81 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80057E2C:
/* 80057E2C 00052D2C  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80057E30 00052D30  FF E0 08 90 */	fmr f31, f1
/* 80057E34 00052D34  41 82 00 0C */	beq lbl_80057E40
/* 80057E38 00052D38  FF C0 08 90 */	fmr f30, f1
/* 80057E3C 00052D3C  48 00 00 F8 */	b lbl_80057F34
lbl_80057E40:
/* 80057E40 00052D40  57 E0 04 63 */	rlwinm. r0, r31, 0, 0x11, 0x11
/* 80057E44 00052D44  7F C3 F3 78 */	mr r3, r30
/* 80057E48 00052D48  3B DE 00 04 */	addi r30, r30, 4
/* 80057E4C 00052D4C  41 82 00 0C */	beq lbl_80057E58
/* 80057E50 00052D50  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057E54 00052D54  48 00 00 14 */	b lbl_80057E68
lbl_80057E58:
/* 80057E58 00052D58  80 03 00 00 */	lwz r0, 0(r3)
/* 80057E5C 00052D5C  FC 20 E8 90 */	fmr f1, f29
/* 80057E60 00052D60  7C 60 EA 14 */	add r3, r0, r29
/* 80057E64 00052D64  48 00 02 45 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80057E68:
/* 80057E68 00052D68  57 E0 04 21 */	rlwinm. r0, r31, 0, 0x10, 0x10
/* 80057E6C 00052D6C  FF C0 08 90 */	fmr f30, f1
/* 80057E70 00052D70  7F C3 F3 78 */	mr r3, r30
/* 80057E74 00052D74  3B DE 00 04 */	addi r30, r30, 4
/* 80057E78 00052D78  41 82 00 0C */	beq lbl_80057E84
/* 80057E7C 00052D7C  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057E80 00052D80  48 00 00 B4 */	b lbl_80057F34
lbl_80057E84:
/* 80057E84 00052D84  80 03 00 00 */	lwz r0, 0(r3)
/* 80057E88 00052D88  FC 20 E8 90 */	fmr f1, f29
/* 80057E8C 00052D8C  7C 60 EA 14 */	add r3, r0, r29
/* 80057E90 00052D90  48 00 02 19 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
/* 80057E94 00052D94  48 00 00 A0 */	b lbl_80057F34
lbl_80057E98:
/* 80057E98 00052D98  57 E0 04 A5 */	rlwinm. r0, r31, 0, 0x12, 0x12
/* 80057E9C 00052D9C  7F C3 F3 78 */	mr r3, r30
/* 80057EA0 00052DA0  3B C5 00 04 */	addi r30, r5, 4
/* 80057EA4 00052DA4  41 82 00 0C */	beq lbl_80057EB0
/* 80057EA8 00052DA8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057EAC 00052DAC  48 00 00 10 */	b lbl_80057EBC
lbl_80057EB0:
/* 80057EB0 00052DB0  80 03 00 00 */	lwz r0, 0(r3)
/* 80057EB4 00052DB4  7C 60 22 14 */	add r3, r0, r4
/* 80057EB8 00052DB8  48 00 00 C5 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80057EBC:
/* 80057EBC 00052DBC  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 80057EC0 00052DC0  FF E0 08 90 */	fmr f31, f1
/* 80057EC4 00052DC4  41 82 00 0C */	beq lbl_80057ED0
/* 80057EC8 00052DC8  FF C0 08 90 */	fmr f30, f1
/* 80057ECC 00052DCC  48 00 00 68 */	b lbl_80057F34
lbl_80057ED0:
/* 80057ED0 00052DD0  57 E0 04 63 */	rlwinm. r0, r31, 0, 0x11, 0x11
/* 80057ED4 00052DD4  7F C3 F3 78 */	mr r3, r30
/* 80057ED8 00052DD8  3B DE 00 04 */	addi r30, r30, 4
/* 80057EDC 00052DDC  41 82 00 0C */	beq lbl_80057EE8
/* 80057EE0 00052DE0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057EE4 00052DE4  48 00 00 14 */	b lbl_80057EF8
lbl_80057EE8:
/* 80057EE8 00052DE8  80 03 00 00 */	lwz r0, 0(r3)
/* 80057EEC 00052DEC  FC 20 E8 90 */	fmr f1, f29
/* 80057EF0 00052DF0  7C 60 EA 14 */	add r3, r0, r29
/* 80057EF4 00052DF4  48 00 00 89 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80057EF8:
/* 80057EF8 00052DF8  57 E0 04 21 */	rlwinm. r0, r31, 0, 0x10, 0x10
/* 80057EFC 00052DFC  FF C0 08 90 */	fmr f30, f1
/* 80057F00 00052E00  7F C3 F3 78 */	mr r3, r30
/* 80057F04 00052E04  3B DE 00 04 */	addi r30, r30, 4
/* 80057F08 00052E08  41 82 00 0C */	beq lbl_80057F14
/* 80057F0C 00052E0C  C0 23 00 00 */	lfs f1, 0(r3)
/* 80057F10 00052E10  48 00 00 24 */	b lbl_80057F34
lbl_80057F14:
/* 80057F14 00052E14  80 03 00 00 */	lwz r0, 0(r3)
/* 80057F18 00052E18  FC 20 E8 90 */	fmr f1, f29
/* 80057F1C 00052E1C  7C 60 EA 14 */	add r3, r0, r29
/* 80057F20 00052E20  48 00 00 5D */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
/* 80057F24 00052E24  48 00 00 10 */	b lbl_80057F34
lbl_80057F28:
/* 80057F28 00052E28  C3 E2 88 28 */	lfs f31, lbl_804C0248-_SDA2_BASE_(r2)
/* 80057F2C 00052E2C  FF C0 F8 90 */	fmr f30, f31
/* 80057F30 00052E30  FC 20 F8 90 */	fmr f1, f31
lbl_80057F34:
/* 80057F34 00052E34  D3 FC 00 00 */	stfs f31, 0(r28)
/* 80057F38 00052E38  7F C3 F3 78 */	mr r3, r30
/* 80057F3C 00052E3C  D3 DC 00 04 */	stfs f30, 4(r28)
/* 80057F40 00052E40  D0 3C 00 08 */	stfs f1, 8(r28)
/* 80057F44 00052E44  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80057F48 00052E48  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80057F4C 00052E4C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80057F50 00052E50  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80057F54 00052E54  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 80057F58 00052E58  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80057F5C 00052E5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80057F60 00052E60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80057F64 00052E64  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80057F68 00052E68  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80057F6C 00052E6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80057F70 00052E70  7C 08 03 A6 */	mtlr r0
/* 80057F74 00052E74  38 21 00 50 */	addi r1, r1, 0x50
/* 80057F78 00052E78  4E 80 00 20 */	blr 

# CalcAnimationFVS<Q44nw4r3g3d27@unnamed@g3d_resanmchr_cpp@46CAnmFmtTraits<Q34nw4r3g3d18ResAnmChrFVS96Data>>__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
.global CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f:
/* 80057F7C 00052E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80057F80 00052E80  38 A3 00 08 */	addi r5, r3, 8
/* 80057F84 00052E84  A0 C3 00 00 */	lhz r6, 0(r3)
/* 80057F88 00052E88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80057F8C 00052E8C  38 06 FF FF */	addi r0, r6, -1
/* 80057F90 00052E90  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80057F94 00052E94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80057F98 00052E98  7C 83 02 14 */	add r4, r3, r0
/* 80057F9C 00052E9C  38 84 00 08 */	addi r4, r4, 8
/* 80057FA0 00052EA0  4C 40 13 82 */	cror 2, 0, 2
/* 80057FA4 00052EA4  40 82 00 0C */	bne lbl_80057FB0
/* 80057FA8 00052EA8  C0 25 00 04 */	lfs f1, 4(r5)
/* 80057FAC 00052EAC  48 00 00 F4 */	b lbl_800580A0
lbl_80057FB0:
/* 80057FB0 00052EB0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80057FB4 00052EB4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80057FB8 00052EB8  4C 40 13 82 */	cror 2, 0, 2
/* 80057FBC 00052EBC  40 82 00 0C */	bne lbl_80057FC8
/* 80057FC0 00052EC0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80057FC4 00052EC4  48 00 00 DC */	b lbl_800580A0
lbl_80057FC8:
/* 80057FC8 00052EC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80057FCC 00052ECC  B0 C1 00 08 */	sth r6, 8(r1)
/* 80057FD0 00052ED0  EC 61 00 28 */	fsubs f3, f1, f0
/* 80057FD4 00052ED4  E0 41 B0 08 */	psq_l f2, 8(r1), 1, qr3
/* 80057FD8 00052ED8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80057FDC 00052EDC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80057FE0 00052EE0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80057FE4 00052EE4  F0 01 B0 0C */	psq_st f0, 12(r1), 1, qr3
/* 80057FE8 00052EE8  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80057FEC 00052EEC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80057FF0 00052EF0  7C 63 02 14 */	add r3, r3, r0
/* 80057FF4 00052EF4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80057FF8 00052EF8  38 83 00 08 */	addi r4, r3, 8
/* 80057FFC 00052EFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80058000 00052F00  40 80 00 14 */	bge lbl_80058014
lbl_80058004:
/* 80058004 00052F04  C4 04 FF F4 */	lfsu f0, -0xc(r4)
/* 80058008 00052F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005800C 00052F0C  41 80 FF F8 */	blt lbl_80058004
/* 80058010 00052F10  48 00 00 18 */	b lbl_80058028
lbl_80058014:
/* 80058014 00052F14  C4 04 00 0C */	lfsu f0, 0xc(r4)
/* 80058018 00052F18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8005801C 00052F1C  4C 40 13 82 */	cror 2, 0, 2
/* 80058020 00052F20  41 82 FF F4 */	beq lbl_80058014
/* 80058024 00052F24  38 84 FF F4 */	addi r4, r4, -12
lbl_80058028:
/* 80058028 00052F28  C0 04 00 00 */	lfs f0, 0(r4)
/* 8005802C 00052F2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80058030 00052F30  40 82 00 0C */	bne lbl_8005803C
/* 80058034 00052F34  C0 24 00 04 */	lfs f1, 4(r4)
/* 80058038 00052F38  48 00 00 68 */	b lbl_800580A0
lbl_8005803C:
/* 8005803C 00052F3C  ED 41 00 28 */	fsubs f10, f1, f0
/* 80058040 00052F40  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80058044 00052F44  C0 E4 00 04 */	lfs f7, 4(r4)
/* 80058048 00052F48  ED 61 00 28 */	fsubs f11, f1, f0
/* 8005804C 00052F4C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80058050 00052F50  C0 42 88 30 */	lfs f2, lbl_804C0250-_SDA2_BASE_(r2)
/* 80058054 00052F54  C0 22 88 34 */	lfs f1, lbl_804C0254-_SDA2_BASE_(r2)
/* 80058058 00052F58  EC 07 00 28 */	fsubs f0, f7, f0
/* 8005805C 00052F5C  EC C0 58 30 */	fres f6, f11
/* 80058060 00052F60  C1 24 00 14 */	lfs f9, 0x14(r4)
/* 80058064 00052F64  C0 82 88 2C */	lfs f4, lbl_804C024C-_SDA2_BASE_(r2)
/* 80058068 00052F68  C1 04 00 08 */	lfs f8, 8(r4)
/* 8005806C 00052F6C  10 A6 30 2A */	ps_add f5, f6, f6
/* 80058070 00052F70  10 66 01 B2 */	ps_mul f3, f6, f6
/* 80058074 00052F74  10 CB 28 FC */	ps_nmsub f6, f11, f3, f5
/* 80058078 00052F78  EC 6A 01 B2 */	fmuls f3, f10, f6
/* 8005807C 00052F7C  EC AA 21 B8 */	fmsubs f5, f10, f6, f4
/* 80058080 00052F80  EC 22 08 F8 */	fmsubs f1, f2, f3, f1
/* 80058084 00052F84  EC 43 02 72 */	fmuls f2, f3, f9
/* 80058088 00052F88  EC 8A 01 72 */	fmuls f4, f10, f5
/* 8005808C 00052F8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80058090 00052F90  EC 25 12 3A */	fmadds f1, f5, f8, f2
/* 80058094 00052F94  EC 03 00 32 */	fmuls f0, f3, f0
/* 80058098 00052F98  EC 03 38 3A */	fmadds f0, f3, f0, f7
/* 8005809C 00052F9C  EC 24 00 7A */	fmadds f1, f4, f1, f0
lbl_800580A0:
/* 800580A0 00052FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 800580A4 00052FA4  4E 80 00 20 */	blr 

# CalcAnimationFVS<Q44nw4r3g3d27@unnamed@g3d_resanmchr_cpp@46CAnmFmtTraits<Q34nw4r3g3d18ResAnmChrFVS48Data>>__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
.global CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f:
/* 800580A8 00052FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800580AC 00052FAC  38 A3 00 10 */	addi r5, r3, 0x10
/* 800580B0 00052FB0  A0 C3 00 00 */	lhz r6, 0(r3)
/* 800580B4 00052FB4  38 06 FF FF */	addi r0, r6, -1
/* 800580B8 00052FB8  1C 00 00 06 */	mulli r0, r0, 6
/* 800580BC 00052FBC  7C 83 02 14 */	add r4, r3, r0
/* 800580C0 00052FC0  38 84 00 10 */	addi r4, r4, 0x10
/* 800580C4 00052FC4  E0 05 E0 00 */	psq_l f0, 0(r5), 1, qr6
/* 800580C8 00052FC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800580CC 00052FCC  4C 40 13 82 */	cror 2, 0, 2
/* 800580D0 00052FD0  40 82 00 18 */	bne lbl_800580E8
/* 800580D4 00052FD4  E0 45 B0 02 */	psq_l f2, 2(r5), 1, qr3
/* 800580D8 00052FD8  C0 23 00 08 */	lfs f1, 8(r3)
/* 800580DC 00052FDC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800580E0 00052FE0  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 800580E4 00052FE4  48 00 01 2C */	b lbl_80058210
lbl_800580E8:
/* 800580E8 00052FE8  E0 04 E0 00 */	psq_l f0, 0(r4), 1, qr6
/* 800580EC 00052FEC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800580F0 00052FF0  4C 40 13 82 */	cror 2, 0, 2
/* 800580F4 00052FF4  40 82 00 18 */	bne lbl_8005810C
/* 800580F8 00052FF8  E0 44 B0 02 */	psq_l f2, 2(r4), 1, qr3
/* 800580FC 00052FFC  C0 23 00 08 */	lfs f1, 8(r3)
/* 80058100 00053000  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80058104 00053004  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 80058108 00053008  48 00 01 08 */	b lbl_80058210
lbl_8005810C:
/* 8005810C 0005300C  E0 05 E0 00 */	psq_l f0, 0(r5), 1, qr6
/* 80058110 00053010  B0 C1 00 0A */	sth r6, 0xa(r1)
/* 80058114 00053014  EC 61 00 28 */	fsubs f3, f1, f0
/* 80058118 00053018  E0 41 B0 0A */	psq_l f2, 10(r1), 1, qr3
/* 8005811C 0005301C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80058120 00053020  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80058124 00053024  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80058128 00053028  F0 01 B0 0C */	psq_st f0, 12(r1), 1, qr3
/* 8005812C 0005302C  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80058130 00053030  1C 00 00 06 */	mulli r0, r0, 6
/* 80058134 00053034  7C 83 02 14 */	add r4, r3, r0
/* 80058138 00053038  38 A4 00 10 */	addi r5, r4, 0x10
/* 8005813C 0005303C  F0 21 E0 08 */	psq_st f1, 8(r1), 1, qr6
/* 80058140 00053040  A8 81 00 08 */	lha r4, 8(r1)
/* 80058144 00053044  A8 05 00 00 */	lha r0, 0(r5)
/* 80058148 00053048  A8 C1 00 08 */	lha r6, 8(r1)
/* 8005814C 0005304C  7C 04 00 00 */	cmpw r4, r0
/* 80058150 00053050  40 80 00 14 */	bge lbl_80058164
lbl_80058154:
/* 80058154 00053054  AC 05 FF FA */	lhau r0, -6(r5)
/* 80058158 00053058  7C 06 00 00 */	cmpw r6, r0
/* 8005815C 0005305C  41 80 FF F8 */	blt lbl_80058154
/* 80058160 00053060  48 00 00 14 */	b lbl_80058174
lbl_80058164:
/* 80058164 00053064  AC 05 00 06 */	lhau r0, 6(r5)
/* 80058168 00053068  7C 00 30 00 */	cmpw r0, r6
/* 8005816C 0005306C  40 81 FF F8 */	ble lbl_80058164
/* 80058170 00053070  38 A5 FF FA */	addi r5, r5, -6
lbl_80058174:
/* 80058174 00053074  E0 05 E0 00 */	psq_l f0, 0(r5), 1, qr6
/* 80058178 00053078  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8005817C 0005307C  40 82 00 18 */	bne lbl_80058194
/* 80058180 00053080  E0 45 B0 02 */	psq_l f2, 2(r5), 1, qr3
/* 80058184 00053084  C0 23 00 08 */	lfs f1, 8(r3)
/* 80058188 00053088  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8005818C 0005308C  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 80058190 00053090  48 00 00 80 */	b lbl_80058210
lbl_80058194:
/* 80058194 00053094  38 85 00 06 */	addi r4, r5, 6
/* 80058198 00053098  E0 65 B0 02 */	psq_l f3, 2(r5), 1, qr3
/* 8005819C 0005309C  C0 43 00 08 */	lfs f2, 8(r3)
/* 800581A0 000530A0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800581A4 000530A4  EC A2 00 FA */	fmadds f5, f2, f3, f0
/* 800581A8 000530A8  E0 C5 F0 04 */	psq_l f6, 4(r5), 1, qr7
/* 800581AC 000530AC  E0 64 B0 02 */	psq_l f3, 2(r4), 1, qr3
/* 800581B0 000530B0  EC 02 00 FA */	fmadds f0, f2, f3, f0
/* 800581B4 000530B4  E0 E4 F0 04 */	psq_l f7, 4(r4), 1, qr7
/* 800581B8 000530B8  E0 65 E0 00 */	psq_l f3, 0(r5), 1, qr6
/* 800581BC 000530BC  E0 84 E0 00 */	psq_l f4, 0(r4), 1, qr6
/* 800581C0 000530C0  ED 41 18 28 */	fsubs f10, f1, f3
/* 800581C4 000530C4  C0 42 88 30 */	lfs f2, lbl_804C0250-_SDA2_BASE_(r2)
/* 800581C8 000530C8  ED 64 18 28 */	fsubs f11, f4, f3
/* 800581CC 000530CC  C0 22 88 34 */	lfs f1, lbl_804C0254-_SDA2_BASE_(r2)
/* 800581D0 000530D0  EC 05 00 28 */	fsubs f0, f5, f0
/* 800581D4 000530D4  C0 82 88 2C */	lfs f4, lbl_804C024C-_SDA2_BASE_(r2)
/* 800581D8 000530D8  ED 20 58 30 */	fres f9, f11
/* 800581DC 000530DC  11 09 48 2A */	ps_add f8, f9, f9
/* 800581E0 000530E0  10 69 02 72 */	ps_mul f3, f9, f9
/* 800581E4 000530E4  11 2B 40 FC */	ps_nmsub f9, f11, f3, f8
/* 800581E8 000530E8  EC 6A 02 72 */	fmuls f3, f10, f9
/* 800581EC 000530EC  ED 0A 22 78 */	fmsubs f8, f10, f9, f4
/* 800581F0 000530F0  EC 22 08 F8 */	fmsubs f1, f2, f3, f1
/* 800581F4 000530F4  EC 43 01 F2 */	fmuls f2, f3, f7
/* 800581F8 000530F8  EC 8A 02 32 */	fmuls f4, f10, f8
/* 800581FC 000530FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80058200 00053100  EC 28 11 BA */	fmadds f1, f8, f6, f2
/* 80058204 00053104  EC 03 00 32 */	fmuls f0, f3, f0
/* 80058208 00053108  EC 03 28 3A */	fmadds f0, f3, f0, f5
/* 8005820C 0005310C  EC 24 00 7A */	fmadds f1, f4, f1, f0
lbl_80058210:
/* 80058210 00053110  38 21 00 10 */	addi r1, r1, 0x10
/* 80058214 00053114  4E 80 00 20 */	blr 

# CalcAnimationFVS<Q44nw4r3g3d27@unnamed@g3d_resanmchr_cpp@46CAnmFmtTraits<Q34nw4r3g3d18ResAnmChrFVS32Data>>__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
.global CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f:
/* 80058218 00053118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005821C 0005311C  38 A3 00 10 */	addi r5, r3, 0x10
/* 80058220 00053120  A0 C3 00 00 */	lhz r6, 0(r3)
/* 80058224 00053124  38 06 FF FF */	addi r0, r6, -1
/* 80058228 00053128  54 00 10 3A */	slwi r0, r0, 2
/* 8005822C 0005312C  7C 83 02 14 */	add r4, r3, r0
/* 80058230 00053130  38 84 00 10 */	addi r4, r4, 0x10
/* 80058234 00053134  E0 05 A0 00 */	psq_l f0, 0(r5), 1, qr2
/* 80058238 00053138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005823C 0005313C  4C 40 13 82 */	cror 2, 0, 2
/* 80058240 00053140  40 82 00 24 */	bne lbl_80058264
/* 80058244 00053144  80 05 00 00 */	lwz r0, 0(r5)
/* 80058248 00053148  54 00 A5 3E */	rlwinm r0, r0, 0x14, 0x14, 0x1f
/* 8005824C 0005314C  B0 01 00 16 */	sth r0, 0x16(r1)
/* 80058250 00053150  E0 41 B0 16 */	psq_l f2, 22(r1), 1, qr3
/* 80058254 00053154  C0 23 00 08 */	lfs f1, 8(r3)
/* 80058258 00053158  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8005825C 0005315C  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 80058260 00053160  48 00 01 70 */	b lbl_800583D0
lbl_80058264:
/* 80058264 00053164  E0 04 A0 00 */	psq_l f0, 0(r4), 1, qr2
/* 80058268 00053168  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8005826C 0005316C  4C 40 13 82 */	cror 2, 0, 2
/* 80058270 00053170  40 82 00 24 */	bne lbl_80058294
/* 80058274 00053174  80 04 00 00 */	lwz r0, 0(r4)
/* 80058278 00053178  54 00 A5 3E */	rlwinm r0, r0, 0x14, 0x14, 0x1f
/* 8005827C 0005317C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80058280 00053180  E0 41 B0 14 */	psq_l f2, 20(r1), 1, qr3
/* 80058284 00053184  C0 23 00 08 */	lfs f1, 8(r3)
/* 80058288 00053188  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8005828C 0005318C  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 80058290 00053190  48 00 01 40 */	b lbl_800583D0
lbl_80058294:
/* 80058294 00053194  E0 05 A0 00 */	psq_l f0, 0(r5), 1, qr2
/* 80058298 00053198  B0 C1 00 12 */	sth r6, 0x12(r1)
/* 8005829C 0005319C  EC 61 00 28 */	fsubs f3, f1, f0
/* 800582A0 000531A0  E0 41 B0 12 */	psq_l f2, 18(r1), 1, qr3
/* 800582A4 000531A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 800582A8 000531A8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800582AC 000531AC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800582B0 000531B0  F0 01 B0 1C */	psq_st f0, 28(r1), 1, qr3
/* 800582B4 000531B4  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 800582B8 000531B8  54 00 10 3A */	slwi r0, r0, 2
/* 800582BC 000531BC  7C 83 02 14 */	add r4, r3, r0
/* 800582C0 000531C0  38 C4 00 10 */	addi r6, r4, 0x10
/* 800582C4 000531C4  F0 21 A0 18 */	psq_st f1, 24(r1), 1, qr2
/* 800582C8 000531C8  88 81 00 18 */	lbz r4, 0x18(r1)
/* 800582CC 000531CC  88 06 00 00 */	lbz r0, 0(r6)
/* 800582D0 000531D0  7C 04 00 40 */	cmplw r4, r0
/* 800582D4 000531D4  40 80 00 14 */	bge lbl_800582E8
lbl_800582D8:
/* 800582D8 000531D8  8C 06 FF FC */	lbzu r0, -4(r6)
/* 800582DC 000531DC  7C 04 00 40 */	cmplw r4, r0
/* 800582E0 000531E0  41 80 FF F8 */	blt lbl_800582D8
/* 800582E4 000531E4  48 00 00 14 */	b lbl_800582F8
lbl_800582E8:
/* 800582E8 000531E8  8C 06 00 04 */	lbzu r0, 4(r6)
/* 800582EC 000531EC  7C 00 20 40 */	cmplw r0, r4
/* 800582F0 000531F0  40 81 FF F8 */	ble lbl_800582E8
/* 800582F4 000531F4  38 C6 FF FC */	addi r6, r6, -4
lbl_800582F8:
/* 800582F8 000531F8  E0 06 A0 00 */	psq_l f0, 0(r6), 1, qr2
/* 800582FC 000531FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80058300 00053200  40 82 00 24 */	bne lbl_80058324
/* 80058304 00053204  80 06 00 00 */	lwz r0, 0(r6)
/* 80058308 00053208  54 00 A5 3E */	rlwinm r0, r0, 0x14, 0x14, 0x1f
/* 8005830C 0005320C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80058310 00053210  E0 41 B0 10 */	psq_l f2, 16(r1), 1, qr3
/* 80058314 00053214  C0 23 00 08 */	lfs f1, 8(r3)
/* 80058318 00053218  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8005831C 0005321C  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 80058320 00053220  48 00 00 B0 */	b lbl_800583D0
lbl_80058324:
/* 80058324 00053224  80 86 00 00 */	lwz r4, 0(r6)
/* 80058328 00053228  38 A6 00 04 */	addi r5, r6, 4
/* 8005832C 0005322C  54 80 A5 3E */	rlwinm r0, r4, 0x14, 0x14, 0x1f
/* 80058330 00053230  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80058334 00053234  E0 61 B0 0E */	psq_l f3, 14(r1), 1, qr3
/* 80058338 00053238  54 80 A0 16 */	slwi r0, r4, 0x14
/* 8005833C 0005323C  C0 43 00 08 */	lfs f2, 8(r3)
/* 80058340 00053240  7C 00 A6 70 */	srawi r0, r0, 0x14
/* 80058344 00053244  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80058348 00053248  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8005834C 0005324C  EC A2 00 FA */	fmadds f5, f2, f3, f0
/* 80058350 00053250  E0 C1 E0 0C */	psq_l f6, 12(r1), 1, qr6
/* 80058354 00053254  80 66 00 04 */	lwz r3, 4(r6)
/* 80058358 00053258  54 60 A5 3E */	rlwinm r0, r3, 0x14, 0x14, 0x1f
/* 8005835C 0005325C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80058360 00053260  E0 61 B0 0A */	psq_l f3, 10(r1), 1, qr3
/* 80058364 00053264  54 60 A0 16 */	slwi r0, r3, 0x14
/* 80058368 00053268  7C 00 A6 70 */	srawi r0, r0, 0x14
/* 8005836C 0005326C  B0 01 00 08 */	sth r0, 8(r1)
/* 80058370 00053270  EC 02 00 FA */	fmadds f0, f2, f3, f0
/* 80058374 00053274  E0 E1 E0 08 */	psq_l f7, 8(r1), 1, qr6
/* 80058378 00053278  E0 66 A0 00 */	psq_l f3, 0(r6), 1, qr2
/* 8005837C 0005327C  E0 85 A0 00 */	psq_l f4, 0(r5), 1, qr2
/* 80058380 00053280  EC 05 00 28 */	fsubs f0, f5, f0
/* 80058384 00053284  ED 41 18 28 */	fsubs f10, f1, f3
/* 80058388 00053288  C0 42 88 30 */	lfs f2, lbl_804C0250-_SDA2_BASE_(r2)
/* 8005838C 0005328C  ED 64 18 28 */	fsubs f11, f4, f3
/* 80058390 00053290  C0 22 88 34 */	lfs f1, lbl_804C0254-_SDA2_BASE_(r2)
/* 80058394 00053294  C0 82 88 2C */	lfs f4, lbl_804C024C-_SDA2_BASE_(r2)
/* 80058398 00053298  ED 20 58 30 */	fres f9, f11
/* 8005839C 0005329C  11 09 48 2A */	ps_add f8, f9, f9
/* 800583A0 000532A0  10 69 02 72 */	ps_mul f3, f9, f9
/* 800583A4 000532A4  11 2B 40 FC */	ps_nmsub f9, f11, f3, f8
/* 800583A8 000532A8  EC 6A 02 72 */	fmuls f3, f10, f9
/* 800583AC 000532AC  ED 0A 22 78 */	fmsubs f8, f10, f9, f4
/* 800583B0 000532B0  EC 22 08 F8 */	fmsubs f1, f2, f3, f1
/* 800583B4 000532B4  EC 43 01 F2 */	fmuls f2, f3, f7
/* 800583B8 000532B8  EC 8A 02 32 */	fmuls f4, f10, f8
/* 800583BC 000532BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800583C0 000532C0  EC 28 11 BA */	fmadds f1, f8, f6, f2
/* 800583C4 000532C4  EC 03 00 32 */	fmuls f0, f3, f0
/* 800583C8 000532C8  EC 03 28 3A */	fmadds f0, f3, f0, f5
/* 800583CC 000532CC  EC 24 00 7A */	fmadds f1, f4, f1, f0
lbl_800583D0:
/* 800583D0 000532D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800583D4 000532D4  4E 80 00 20 */	blr 

# GetAnmRotation__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3RCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
.global GetAnmRotation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3RCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
GetAnmRotation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3RCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf:
/* 800583D8 000532D8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800583DC 000532DC  7C 08 02 A6 */	mflr r0
/* 800583E0 000532E0  90 01 00 94 */	stw r0, 0x94(r1)
/* 800583E4 000532E4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 800583E8 000532E8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 800583EC 000532EC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 800583F0 000532F0  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 800583F4 000532F4  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 800583F8 000532F8  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 800583FC 000532FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80058400 00053300  48 05 99 45 */	bl _savegpr_27
/* 80058404 00053304  83 E6 00 04 */	lwz r31, 4(r6)
/* 80058408 00053308  3D 20 43 30 */	lis r9, 0x4330
/* 8005840C 0005330C  3C 00 18 00 */	lis r0, 0x1800
/* 80058410 00053310  FF A0 08 90 */	fmr f29, f1
/* 80058414 00053314  57 E8 00 88 */	rlwinm r8, r31, 0, 2, 4
/* 80058418 00053318  91 21 00 30 */	stw r9, 0x30(r1)
/* 8005841C 0005331C  7C 08 00 00 */	cmpw r8, r0
/* 80058420 00053320  7C 7B 1B 78 */	mr r27, r3
/* 80058424 00053324  91 21 00 38 */	stw r9, 0x38(r1)
/* 80058428 00053328  7C 9C 23 78 */	mr r28, r4
/* 8005842C 0005332C  7C DD 33 78 */	mr r29, r6
/* 80058430 00053330  7C FE 3B 78 */	mr r30, r7
/* 80058434 00053334  41 82 01 80 */	beq lbl_800585B4
/* 80058438 00053338  40 80 00 30 */	bge lbl_80058468
/* 8005843C 0005333C  3C 00 08 00 */	lis r0, 0x800
/* 80058440 00053340  7C 08 00 00 */	cmpw r8, r0
/* 80058444 00053344  41 82 00 68 */	beq lbl_800584AC
/* 80058448 00053348  40 80 00 10 */	bge lbl_80058458
/* 8005844C 0005334C  2C 08 00 00 */	cmpwi r8, 0
/* 80058450 00053350  41 82 00 48 */	beq lbl_80058498
/* 80058454 00053354  48 00 09 7C */	b lbl_80058DD0
lbl_80058458:
/* 80058458 00053358  3C 00 10 00 */	lis r0, 0x1000
/* 8005845C 0005335C  7C 08 00 00 */	cmpw r8, r0
/* 80058460 00053360  41 82 00 D0 */	beq lbl_80058530
/* 80058464 00053364  48 00 09 6C */	b lbl_80058DD0
lbl_80058468:
/* 80058468 00053368  3C 00 28 00 */	lis r0, 0x2800
/* 8005846C 0005336C  7C 08 00 00 */	cmpw r8, r0
/* 80058470 00053370  41 82 04 AC */	beq lbl_8005891C
/* 80058474 00053374  40 80 00 14 */	bge lbl_80058488
/* 80058478 00053378  3C 00 20 00 */	lis r0, 0x2000
/* 8005847C 0005337C  7C 08 00 00 */	cmpw r8, r0
/* 80058480 00053380  41 82 01 B8 */	beq lbl_80058638
/* 80058484 00053384  48 00 09 4C */	b lbl_80058DD0
lbl_80058488:
/* 80058488 00053388  3C 00 30 00 */	lis r0, 0x3000
/* 8005848C 0005338C  7C 08 00 00 */	cmpw r8, r0
/* 80058490 00053390  41 82 07 88 */	beq lbl_80058C18
/* 80058494 00053394  48 00 09 3C */	b lbl_80058DD0
lbl_80058498:
/* 80058498 00053398  C3 E7 00 00 */	lfs f31, 0(r7)
/* 8005849C 0005339C  3B C7 00 0C */	addi r30, r7, 0xc
/* 800584A0 000533A0  C3 C7 00 04 */	lfs f30, 4(r7)
/* 800584A4 000533A4  C3 A7 00 08 */	lfs f29, 8(r7)
/* 800584A8 000533A8  48 00 09 34 */	b lbl_80058DDC
lbl_800584AC:
/* 800584AC 000533AC  57 E0 03 DF */	rlwinm. r0, r31, 0, 0xf, 0xf
/* 800584B0 000533B0  7F C3 F3 78 */	mr r3, r30
/* 800584B4 000533B4  3B C7 00 04 */	addi r30, r7, 4
/* 800584B8 000533B8  41 82 00 0C */	beq lbl_800584C4
/* 800584BC 000533BC  C0 23 00 00 */	lfs f1, 0(r3)
/* 800584C0 000533C0  48 00 00 10 */	b lbl_800584D0
lbl_800584C4:
/* 800584C4 000533C4  80 03 00 00 */	lwz r0, 0(r3)
/* 800584C8 000533C8  7C 60 32 14 */	add r3, r0, r6
/* 800584CC 000533CC  4B FF FD 4D */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_800584D0:
/* 800584D0 000533D0  57 E0 03 9D */	rlwinm. r0, r31, 0, 0xe, 0xe
/* 800584D4 000533D4  FF E0 08 90 */	fmr f31, f1
/* 800584D8 000533D8  7F C3 F3 78 */	mr r3, r30
/* 800584DC 000533DC  3B DE 00 04 */	addi r30, r30, 4
/* 800584E0 000533E0  41 82 00 0C */	beq lbl_800584EC
/* 800584E4 000533E4  C0 23 00 00 */	lfs f1, 0(r3)
/* 800584E8 000533E8  48 00 00 14 */	b lbl_800584FC
lbl_800584EC:
/* 800584EC 000533EC  80 03 00 00 */	lwz r0, 0(r3)
/* 800584F0 000533F0  FC 20 E8 90 */	fmr f1, f29
/* 800584F4 000533F4  7C 60 EA 14 */	add r3, r0, r29
/* 800584F8 000533F8  4B FF FD 21 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_800584FC:
/* 800584FC 000533FC  57 E0 03 5B */	rlwinm. r0, r31, 0, 0xd, 0xd
/* 80058500 00053400  FF C0 08 90 */	fmr f30, f1
/* 80058504 00053404  7F C3 F3 78 */	mr r3, r30
/* 80058508 00053408  3B DE 00 04 */	addi r30, r30, 4
/* 8005850C 0005340C  41 82 00 0C */	beq lbl_80058518
/* 80058510 00053410  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058514 00053414  48 00 00 14 */	b lbl_80058528
lbl_80058518:
/* 80058518 00053418  80 03 00 00 */	lwz r0, 0(r3)
/* 8005851C 0005341C  FC 20 E8 90 */	fmr f1, f29
/* 80058520 00053420  7C 60 EA 14 */	add r3, r0, r29
/* 80058524 00053424  4B FF FC F5 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058528:
/* 80058528 00053428  FF A0 08 90 */	fmr f29, f1
/* 8005852C 0005342C  48 00 08 B0 */	b lbl_80058DDC
lbl_80058530:
/* 80058530 00053430  57 E0 03 DF */	rlwinm. r0, r31, 0, 0xf, 0xf
/* 80058534 00053434  7F C3 F3 78 */	mr r3, r30
/* 80058538 00053438  3B C7 00 04 */	addi r30, r7, 4
/* 8005853C 0005343C  41 82 00 0C */	beq lbl_80058548
/* 80058540 00053440  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058544 00053444  48 00 00 10 */	b lbl_80058554
lbl_80058548:
/* 80058548 00053448  80 03 00 00 */	lwz r0, 0(r3)
/* 8005854C 0005344C  7C 60 32 14 */	add r3, r0, r6
/* 80058550 00053450  4B FF FB 59 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058554:
/* 80058554 00053454  57 E0 03 9D */	rlwinm. r0, r31, 0, 0xe, 0xe
/* 80058558 00053458  FF E0 08 90 */	fmr f31, f1
/* 8005855C 0005345C  7F C3 F3 78 */	mr r3, r30
/* 80058560 00053460  3B DE 00 04 */	addi r30, r30, 4
/* 80058564 00053464  41 82 00 0C */	beq lbl_80058570
/* 80058568 00053468  C0 23 00 00 */	lfs f1, 0(r3)
/* 8005856C 0005346C  48 00 00 14 */	b lbl_80058580
lbl_80058570:
/* 80058570 00053470  80 03 00 00 */	lwz r0, 0(r3)
/* 80058574 00053474  FC 20 E8 90 */	fmr f1, f29
/* 80058578 00053478  7C 60 EA 14 */	add r3, r0, r29
/* 8005857C 0005347C  4B FF FB 2D */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058580:
/* 80058580 00053480  57 E0 03 5B */	rlwinm. r0, r31, 0, 0xd, 0xd
/* 80058584 00053484  FF C0 08 90 */	fmr f30, f1
/* 80058588 00053488  7F C3 F3 78 */	mr r3, r30
/* 8005858C 0005348C  3B DE 00 04 */	addi r30, r30, 4
/* 80058590 00053490  41 82 00 0C */	beq lbl_8005859C
/* 80058594 00053494  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058598 00053498  48 00 00 14 */	b lbl_800585AC
lbl_8005859C:
/* 8005859C 0005349C  80 03 00 00 */	lwz r0, 0(r3)
/* 800585A0 000534A0  FC 20 E8 90 */	fmr f1, f29
/* 800585A4 000534A4  7C 60 EA 14 */	add r3, r0, r29
/* 800585A8 000534A8  4B FF FB 01 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_800585AC:
/* 800585AC 000534AC  FF A0 08 90 */	fmr f29, f1
/* 800585B0 000534B0  48 00 08 2C */	b lbl_80058DDC
lbl_800585B4:
/* 800585B4 000534B4  57 E0 03 DF */	rlwinm. r0, r31, 0, 0xf, 0xf
/* 800585B8 000534B8  7F C3 F3 78 */	mr r3, r30
/* 800585BC 000534BC  3B C7 00 04 */	addi r30, r7, 4
/* 800585C0 000534C0  41 82 00 0C */	beq lbl_800585CC
/* 800585C4 000534C4  C0 23 00 00 */	lfs f1, 0(r3)
/* 800585C8 000534C8  48 00 00 10 */	b lbl_800585D8
lbl_800585CC:
/* 800585CC 000534CC  80 03 00 00 */	lwz r0, 0(r3)
/* 800585D0 000534D0  7C 60 32 14 */	add r3, r0, r6
/* 800585D4 000534D4  4B FF F9 A9 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_800585D8:
/* 800585D8 000534D8  57 E0 03 9D */	rlwinm. r0, r31, 0, 0xe, 0xe
/* 800585DC 000534DC  FF E0 08 90 */	fmr f31, f1
/* 800585E0 000534E0  7F C3 F3 78 */	mr r3, r30
/* 800585E4 000534E4  3B DE 00 04 */	addi r30, r30, 4
/* 800585E8 000534E8  41 82 00 0C */	beq lbl_800585F4
/* 800585EC 000534EC  C0 23 00 00 */	lfs f1, 0(r3)
/* 800585F0 000534F0  48 00 00 14 */	b lbl_80058604
lbl_800585F4:
/* 800585F4 000534F4  80 03 00 00 */	lwz r0, 0(r3)
/* 800585F8 000534F8  FC 20 E8 90 */	fmr f1, f29
/* 800585FC 000534FC  7C 60 EA 14 */	add r3, r0, r29
/* 80058600 00053500  4B FF F9 7D */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058604:
/* 80058604 00053504  57 E0 03 5B */	rlwinm. r0, r31, 0, 0xd, 0xd
/* 80058608 00053508  FF C0 08 90 */	fmr f30, f1
/* 8005860C 0005350C  7F C3 F3 78 */	mr r3, r30
/* 80058610 00053510  3B DE 00 04 */	addi r30, r30, 4
/* 80058614 00053514  41 82 00 0C */	beq lbl_80058620
/* 80058618 00053518  C0 23 00 00 */	lfs f1, 0(r3)
/* 8005861C 0005351C  48 00 00 14 */	b lbl_80058630
lbl_80058620:
/* 80058620 00053520  80 03 00 00 */	lwz r0, 0(r3)
/* 80058624 00053524  FC 20 E8 90 */	fmr f1, f29
/* 80058628 00053528  7C 60 EA 14 */	add r3, r0, r29
/* 8005862C 0005352C  4B FF F9 51 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058630:
/* 80058630 00053530  FF A0 08 90 */	fmr f29, f1
/* 80058634 00053534  48 00 07 A8 */	b lbl_80058DDC
lbl_80058638:
/* 80058638 00053538  57 E0 03 DF */	rlwinm. r0, r31, 0, 0xf, 0xf
/* 8005863C 0005353C  7F C3 F3 78 */	mr r3, r30
/* 80058640 00053540  A0 05 00 00 */	lhz r0, 0(r5)
/* 80058644 00053544  3B C7 00 04 */	addi r30, r7, 4
/* 80058648 00053548  41 82 00 0C */	beq lbl_80058654
/* 8005864C 0005354C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80058650 00053550  48 00 00 E0 */	b lbl_80058730
lbl_80058654:
/* 80058654 00053554  80 63 00 00 */	lwz r3, 0(r3)
/* 80058658 00053558  7C 83 32 14 */	add r4, r3, r6
/* 8005865C 0005355C  F3 A1 B0 28 */	psq_st f29, 40(r1), 1, qr3
/* 80058660 00053560  C0 C2 88 28 */	lfs f6, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058664 00053564  A0 A1 00 28 */	lhz r5, 0x28(r1)
/* 80058668 00053568  FC 1D 30 40 */	fcmpo cr0, f29, f6
/* 8005866C 0005356C  4C 40 13 82 */	cror 2, 0, 2
/* 80058670 00053570  40 82 00 28 */	bne lbl_80058698
/* 80058674 00053574  88 64 00 08 */	lbz r3, 8(r4)
/* 80058678 00053578  C8 82 88 40 */	lfd f4, lbl_804C0260-_SDA2_BASE_(r2)
/* 8005867C 0005357C  90 61 00 34 */	stw r3, 0x34(r1)
/* 80058680 00053580  C0 44 00 00 */	lfs f2, 0(r4)
/* 80058684 00053584  C8 61 00 30 */	lfd f3, 0x30(r1)
/* 80058688 00053588  C0 04 00 04 */	lfs f0, 4(r4)
/* 8005868C 0005358C  EC 63 20 28 */	fsubs f3, f3, f4
/* 80058690 00053590  EF E2 00 FA */	fmadds f31, f2, f3, f0
/* 80058694 00053594  48 00 00 9C */	b lbl_80058730
lbl_80058698:
/* 80058698 00053598  7C 00 28 40 */	cmplw r0, r5
/* 8005869C 0005359C  41 81 00 2C */	bgt lbl_800586C8
/* 800586A0 000535A0  7C 64 02 14 */	add r3, r4, r0
/* 800586A4 000535A4  C8 82 88 40 */	lfd f4, lbl_804C0260-_SDA2_BASE_(r2)
/* 800586A8 000535A8  88 63 00 08 */	lbz r3, 8(r3)
/* 800586AC 000535AC  C0 44 00 00 */	lfs f2, 0(r4)
/* 800586B0 000535B0  90 61 00 3C */	stw r3, 0x3c(r1)
/* 800586B4 000535B4  C0 04 00 04 */	lfs f0, 4(r4)
/* 800586B8 000535B8  C8 61 00 38 */	lfd f3, 0x38(r1)
/* 800586BC 000535BC  EC 63 20 28 */	fsubs f3, f3, f4
/* 800586C0 000535C0  EF E2 00 FA */	fmadds f31, f2, f3, f0
/* 800586C4 000535C4  48 00 00 6C */	b lbl_80058730
lbl_800586C8:
/* 800586C8 000535C8  90 A1 00 34 */	stw r5, 0x34(r1)
/* 800586CC 000535CC  7C 64 2A 14 */	add r3, r4, r5
/* 800586D0 000535D0  88 63 00 08 */	lbz r3, 8(r3)
/* 800586D4 000535D4  C8 A2 88 40 */	lfd f5, lbl_804C0260-_SDA2_BASE_(r2)
/* 800586D8 000535D8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800586DC 000535DC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 800586E0 000535E0  EC 80 28 28 */	fsubs f4, f0, f5
/* 800586E4 000535E4  C0 64 00 00 */	lfs f3, 0(r4)
/* 800586E8 000535E8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 800586EC 000535EC  C0 44 00 04 */	lfs f2, 4(r4)
/* 800586F0 000535F0  EC 9D 20 28 */	fsubs f4, f29, f4
/* 800586F4 000535F4  EC 00 28 28 */	fsubs f0, f0, f5
/* 800586F8 000535F8  FC 06 20 00 */	fcmpu cr0, f6, f4
/* 800586FC 000535FC  EF E3 10 3A */	fmadds f31, f3, f0, f2
/* 80058700 00053600  40 82 00 08 */	bne lbl_80058708
/* 80058704 00053604  48 00 00 2C */	b lbl_80058730
lbl_80058708:
/* 80058708 00053608  38 65 00 01 */	addi r3, r5, 1
/* 8005870C 0005360C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80058710 00053610  7C 64 1A 14 */	add r3, r4, r3
/* 80058714 00053614  88 63 00 08 */	lbz r3, 8(r3)
/* 80058718 00053618  90 61 00 34 */	stw r3, 0x34(r1)
/* 8005871C 0005361C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80058720 00053620  EC 00 28 28 */	fsubs f0, f0, f5
/* 80058724 00053624  EC 03 10 3A */	fmadds f0, f3, f0, f2
/* 80058728 00053628  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8005872C 0005362C  EF E4 F8 3A */	fmadds f31, f4, f0, f31
lbl_80058730:
/* 80058730 00053630  57 E3 03 9D */	rlwinm. r3, r31, 0, 0xe, 0xe
/* 80058734 00053634  7F C3 F3 78 */	mr r3, r30
/* 80058738 00053638  3B DE 00 04 */	addi r30, r30, 4
/* 8005873C 0005363C  41 82 00 0C */	beq lbl_80058748
/* 80058740 00053640  C3 C3 00 00 */	lfs f30, 0(r3)
/* 80058744 00053644  48 00 00 E0 */	b lbl_80058824
lbl_80058748:
/* 80058748 00053648  80 63 00 00 */	lwz r3, 0(r3)
/* 8005874C 0005364C  7C 83 32 14 */	add r4, r3, r6
/* 80058750 00053650  F0 21 B0 24 */	psq_st f1, 36(r1), 1, qr3
/* 80058754 00053654  C0 C2 88 28 */	lfs f6, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058758 00053658  A0 A1 00 24 */	lhz r5, 0x24(r1)
/* 8005875C 0005365C  FC 01 30 40 */	fcmpo cr0, f1, f6
/* 80058760 00053660  4C 40 13 82 */	cror 2, 0, 2
/* 80058764 00053664  40 82 00 28 */	bne lbl_8005878C
/* 80058768 00053668  88 64 00 08 */	lbz r3, 8(r4)
/* 8005876C 0005366C  C8 82 88 40 */	lfd f4, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058770 00053670  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80058774 00053674  C0 44 00 00 */	lfs f2, 0(r4)
/* 80058778 00053678  C8 61 00 38 */	lfd f3, 0x38(r1)
/* 8005877C 0005367C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80058780 00053680  EC 63 20 28 */	fsubs f3, f3, f4
/* 80058784 00053684  EF C2 00 FA */	fmadds f30, f2, f3, f0
/* 80058788 00053688  48 00 00 9C */	b lbl_80058824
lbl_8005878C:
/* 8005878C 0005368C  7C 00 28 40 */	cmplw r0, r5
/* 80058790 00053690  41 81 00 2C */	bgt lbl_800587BC
/* 80058794 00053694  7C 64 02 14 */	add r3, r4, r0
/* 80058798 00053698  C8 82 88 40 */	lfd f4, lbl_804C0260-_SDA2_BASE_(r2)
/* 8005879C 0005369C  88 63 00 08 */	lbz r3, 8(r3)
/* 800587A0 000536A0  C0 44 00 00 */	lfs f2, 0(r4)
/* 800587A4 000536A4  90 61 00 34 */	stw r3, 0x34(r1)
/* 800587A8 000536A8  C0 04 00 04 */	lfs f0, 4(r4)
/* 800587AC 000536AC  C8 61 00 30 */	lfd f3, 0x30(r1)
/* 800587B0 000536B0  EC 63 20 28 */	fsubs f3, f3, f4
/* 800587B4 000536B4  EF C2 00 FA */	fmadds f30, f2, f3, f0
/* 800587B8 000536B8  48 00 00 6C */	b lbl_80058824
lbl_800587BC:
/* 800587BC 000536BC  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 800587C0 000536C0  7C 64 2A 14 */	add r3, r4, r5
/* 800587C4 000536C4  88 63 00 08 */	lbz r3, 8(r3)
/* 800587C8 000536C8  C8 A2 88 40 */	lfd f5, lbl_804C0260-_SDA2_BASE_(r2)
/* 800587CC 000536CC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 800587D0 000536D0  90 61 00 34 */	stw r3, 0x34(r1)
/* 800587D4 000536D4  EC 80 28 28 */	fsubs f4, f0, f5
/* 800587D8 000536D8  C0 64 00 00 */	lfs f3, 0(r4)
/* 800587DC 000536DC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800587E0 000536E0  C0 44 00 04 */	lfs f2, 4(r4)
/* 800587E4 000536E4  EC 81 20 28 */	fsubs f4, f1, f4
/* 800587E8 000536E8  EC 00 28 28 */	fsubs f0, f0, f5
/* 800587EC 000536EC  FC 06 20 00 */	fcmpu cr0, f6, f4
/* 800587F0 000536F0  EF C3 10 3A */	fmadds f30, f3, f0, f2
/* 800587F4 000536F4  40 82 00 08 */	bne lbl_800587FC
/* 800587F8 000536F8  48 00 00 2C */	b lbl_80058824
lbl_800587FC:
/* 800587FC 000536FC  38 65 00 01 */	addi r3, r5, 1
/* 80058800 00053700  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80058804 00053704  7C 64 1A 14 */	add r3, r4, r3
/* 80058808 00053708  88 63 00 08 */	lbz r3, 8(r3)
/* 8005880C 0005370C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80058810 00053710  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80058814 00053714  EC 00 28 28 */	fsubs f0, f0, f5
/* 80058818 00053718  EC 03 10 3A */	fmadds f0, f3, f0, f2
/* 8005881C 0005371C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80058820 00053720  EF C4 F0 3A */	fmadds f30, f4, f0, f30
lbl_80058824:
/* 80058824 00053724  57 E3 03 5B */	rlwinm. r3, r31, 0, 0xd, 0xd
/* 80058828 00053728  7F C3 F3 78 */	mr r3, r30
/* 8005882C 0005372C  3B DE 00 04 */	addi r30, r30, 4
/* 80058830 00053730  41 82 00 0C */	beq lbl_8005883C
/* 80058834 00053734  C3 A3 00 00 */	lfs f29, 0(r3)
/* 80058838 00053738  48 00 05 A4 */	b lbl_80058DDC
lbl_8005883C:
/* 8005883C 0005373C  80 63 00 00 */	lwz r3, 0(r3)
/* 80058840 00053740  7C 83 32 14 */	add r4, r3, r6
/* 80058844 00053744  F0 21 B0 20 */	psq_st f1, 32(r1), 1, qr3
/* 80058848 00053748  C0 C2 88 28 */	lfs f6, lbl_804C0248-_SDA2_BASE_(r2)
/* 8005884C 0005374C  A0 A1 00 20 */	lhz r5, 0x20(r1)
/* 80058850 00053750  FC 01 30 40 */	fcmpo cr0, f1, f6
/* 80058854 00053754  4C 40 13 82 */	cror 2, 0, 2
/* 80058858 00053758  40 82 00 28 */	bne lbl_80058880
/* 8005885C 0005375C  88 04 00 08 */	lbz r0, 8(r4)
/* 80058860 00053760  C8 62 88 40 */	lfd f3, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058864 00053764  90 01 00 34 */	stw r0, 0x34(r1)
/* 80058868 00053768  C0 24 00 00 */	lfs f1, 0(r4)
/* 8005886C 0005376C  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 80058870 00053770  C0 04 00 04 */	lfs f0, 4(r4)
/* 80058874 00053774  EC 42 18 28 */	fsubs f2, f2, f3
/* 80058878 00053778  EF A1 00 BA */	fmadds f29, f1, f2, f0
/* 8005887C 0005377C  48 00 05 60 */	b lbl_80058DDC
lbl_80058880:
/* 80058880 00053780  7C 00 28 40 */	cmplw r0, r5
/* 80058884 00053784  41 81 00 2C */	bgt lbl_800588B0
/* 80058888 00053788  7C 64 02 14 */	add r3, r4, r0
/* 8005888C 0005378C  C8 62 88 40 */	lfd f3, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058890 00053790  88 03 00 08 */	lbz r0, 8(r3)
/* 80058894 00053794  C0 24 00 00 */	lfs f1, 0(r4)
/* 80058898 00053798  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8005889C 0005379C  C0 04 00 04 */	lfs f0, 4(r4)
/* 800588A0 000537A0  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 800588A4 000537A4  EC 42 18 28 */	fsubs f2, f2, f3
/* 800588A8 000537A8  EF A1 00 BA */	fmadds f29, f1, f2, f0
/* 800588AC 000537AC  48 00 05 30 */	b lbl_80058DDC
lbl_800588B0:
/* 800588B0 000537B0  90 A1 00 34 */	stw r5, 0x34(r1)
/* 800588B4 000537B4  7C 64 2A 14 */	add r3, r4, r5
/* 800588B8 000537B8  88 03 00 08 */	lbz r0, 8(r3)
/* 800588BC 000537BC  C8 A2 88 40 */	lfd f5, lbl_804C0260-_SDA2_BASE_(r2)
/* 800588C0 000537C0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800588C4 000537C4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800588C8 000537C8  EC 80 28 28 */	fsubs f4, f0, f5
/* 800588CC 000537CC  C0 64 00 00 */	lfs f3, 0(r4)
/* 800588D0 000537D0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 800588D4 000537D4  C0 44 00 04 */	lfs f2, 4(r4)
/* 800588D8 000537D8  EC 21 20 28 */	fsubs f1, f1, f4
/* 800588DC 000537DC  EC 00 28 28 */	fsubs f0, f0, f5
/* 800588E0 000537E0  FC 06 08 00 */	fcmpu cr0, f6, f1
/* 800588E4 000537E4  EF A3 10 3A */	fmadds f29, f3, f0, f2
/* 800588E8 000537E8  40 82 00 08 */	bne lbl_800588F0
/* 800588EC 000537EC  48 00 04 F0 */	b lbl_80058DDC
lbl_800588F0:
/* 800588F0 000537F0  38 05 00 01 */	addi r0, r5, 1
/* 800588F4 000537F4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800588F8 000537F8  7C 64 02 14 */	add r3, r4, r0
/* 800588FC 000537FC  88 03 00 08 */	lbz r0, 8(r3)
/* 80058900 00053800  90 01 00 34 */	stw r0, 0x34(r1)
/* 80058904 00053804  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80058908 00053808  EC 00 28 28 */	fsubs f0, f0, f5
/* 8005890C 0005380C  EC 03 10 3A */	fmadds f0, f3, f0, f2
/* 80058910 00053810  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80058914 00053814  EF A1 E8 3A */	fmadds f29, f1, f0, f29
/* 80058918 00053818  48 00 04 C4 */	b lbl_80058DDC
lbl_8005891C:
/* 8005891C 0005381C  57 E0 03 DF */	rlwinm. r0, r31, 0, 0xf, 0xf
/* 80058920 00053820  7F C3 F3 78 */	mr r3, r30
/* 80058924 00053824  A0 05 00 00 */	lhz r0, 0(r5)
/* 80058928 00053828  3B C7 00 04 */	addi r30, r7, 4
/* 8005892C 0005382C  41 82 00 0C */	beq lbl_80058938
/* 80058930 00053830  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80058934 00053834  48 00 00 E8 */	b lbl_80058A1C
lbl_80058938:
/* 80058938 00053838  80 63 00 00 */	lwz r3, 0(r3)
/* 8005893C 0005383C  7C 83 32 14 */	add r4, r3, r6
/* 80058940 00053840  F3 A1 B0 1C */	psq_st f29, 28(r1), 1, qr3
/* 80058944 00053844  C0 C2 88 28 */	lfs f6, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058948 00053848  A0 A1 00 1C */	lhz r5, 0x1c(r1)
/* 8005894C 0005384C  FC 1D 30 40 */	fcmpo cr0, f29, f6
/* 80058950 00053850  4C 40 13 82 */	cror 2, 0, 2
/* 80058954 00053854  40 82 00 28 */	bne lbl_8005897C
/* 80058958 00053858  A0 64 00 08 */	lhz r3, 8(r4)
/* 8005895C 0005385C  C8 82 88 40 */	lfd f4, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058960 00053860  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80058964 00053864  C0 44 00 00 */	lfs f2, 0(r4)
/* 80058968 00053868  C8 61 00 38 */	lfd f3, 0x38(r1)
/* 8005896C 0005386C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80058970 00053870  EC 63 20 28 */	fsubs f3, f3, f4
/* 80058974 00053874  EF E2 00 FA */	fmadds f31, f2, f3, f0
/* 80058978 00053878  48 00 00 A4 */	b lbl_80058A1C
lbl_8005897C:
/* 8005897C 0005387C  7C 00 28 40 */	cmplw r0, r5
/* 80058980 00053880  41 81 00 30 */	bgt lbl_800589B0
/* 80058984 00053884  54 03 0B FC */	rlwinm r3, r0, 1, 0xf, 0x1e
/* 80058988 00053888  C8 82 88 40 */	lfd f4, lbl_804C0260-_SDA2_BASE_(r2)
/* 8005898C 0005388C  7C 64 1A 14 */	add r3, r4, r3
/* 80058990 00053890  C0 44 00 00 */	lfs f2, 0(r4)
/* 80058994 00053894  A0 63 00 08 */	lhz r3, 8(r3)
/* 80058998 00053898  C0 04 00 04 */	lfs f0, 4(r4)
/* 8005899C 0005389C  90 61 00 34 */	stw r3, 0x34(r1)
/* 800589A0 000538A0  C8 61 00 30 */	lfd f3, 0x30(r1)
/* 800589A4 000538A4  EC 63 20 28 */	fsubs f3, f3, f4
/* 800589A8 000538A8  EF E2 00 FA */	fmadds f31, f2, f3, f0
/* 800589AC 000538AC  48 00 00 70 */	b lbl_80058A1C
lbl_800589B0:
/* 800589B0 000538B0  54 A3 0B FC */	rlwinm r3, r5, 1, 0xf, 0x1e
/* 800589B4 000538B4  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 800589B8 000538B8  7C 64 1A 14 */	add r3, r4, r3
/* 800589BC 000538BC  C8 A2 88 40 */	lfd f5, lbl_804C0260-_SDA2_BASE_(r2)
/* 800589C0 000538C0  A0 63 00 08 */	lhz r3, 8(r3)
/* 800589C4 000538C4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 800589C8 000538C8  90 61 00 34 */	stw r3, 0x34(r1)
/* 800589CC 000538CC  EC 80 28 28 */	fsubs f4, f0, f5
/* 800589D0 000538D0  C0 64 00 00 */	lfs f3, 0(r4)
/* 800589D4 000538D4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800589D8 000538D8  C0 44 00 04 */	lfs f2, 4(r4)
/* 800589DC 000538DC  EC 9D 20 28 */	fsubs f4, f29, f4
/* 800589E0 000538E0  EC 00 28 28 */	fsubs f0, f0, f5
/* 800589E4 000538E4  FC 06 20 00 */	fcmpu cr0, f6, f4
/* 800589E8 000538E8  EF E3 10 3A */	fmadds f31, f3, f0, f2
/* 800589EC 000538EC  40 82 00 08 */	bne lbl_800589F4
/* 800589F0 000538F0  48 00 00 2C */	b lbl_80058A1C
lbl_800589F4:
/* 800589F4 000538F4  38 65 00 01 */	addi r3, r5, 1
/* 800589F8 000538F8  54 63 0B FC */	rlwinm r3, r3, 1, 0xf, 0x1e
/* 800589FC 000538FC  7C 64 1A 14 */	add r3, r4, r3
/* 80058A00 00053900  A0 63 00 08 */	lhz r3, 8(r3)
/* 80058A04 00053904  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80058A08 00053908  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80058A0C 0005390C  EC 00 28 28 */	fsubs f0, f0, f5
/* 80058A10 00053910  EC 03 10 3A */	fmadds f0, f3, f0, f2
/* 80058A14 00053914  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80058A18 00053918  EF E4 F8 3A */	fmadds f31, f4, f0, f31
lbl_80058A1C:
/* 80058A1C 0005391C  57 E3 03 9D */	rlwinm. r3, r31, 0, 0xe, 0xe
/* 80058A20 00053920  7F C3 F3 78 */	mr r3, r30
/* 80058A24 00053924  3B DE 00 04 */	addi r30, r30, 4
/* 80058A28 00053928  41 82 00 0C */	beq lbl_80058A34
/* 80058A2C 0005392C  C3 C3 00 00 */	lfs f30, 0(r3)
/* 80058A30 00053930  48 00 00 E8 */	b lbl_80058B18
lbl_80058A34:
/* 80058A34 00053934  80 63 00 00 */	lwz r3, 0(r3)
/* 80058A38 00053938  7C 83 32 14 */	add r4, r3, r6
/* 80058A3C 0005393C  F0 21 B0 18 */	psq_st f1, 24(r1), 1, qr3
/* 80058A40 00053940  C0 C2 88 28 */	lfs f6, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058A44 00053944  A0 A1 00 18 */	lhz r5, 0x18(r1)
/* 80058A48 00053948  FC 01 30 40 */	fcmpo cr0, f1, f6
/* 80058A4C 0005394C  4C 40 13 82 */	cror 2, 0, 2
/* 80058A50 00053950  40 82 00 28 */	bne lbl_80058A78
/* 80058A54 00053954  A0 64 00 08 */	lhz r3, 8(r4)
/* 80058A58 00053958  C8 82 88 40 */	lfd f4, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058A5C 0005395C  90 61 00 34 */	stw r3, 0x34(r1)
/* 80058A60 00053960  C0 44 00 00 */	lfs f2, 0(r4)
/* 80058A64 00053964  C8 61 00 30 */	lfd f3, 0x30(r1)
/* 80058A68 00053968  C0 04 00 04 */	lfs f0, 4(r4)
/* 80058A6C 0005396C  EC 63 20 28 */	fsubs f3, f3, f4
/* 80058A70 00053970  EF C2 00 FA */	fmadds f30, f2, f3, f0
/* 80058A74 00053974  48 00 00 A4 */	b lbl_80058B18
lbl_80058A78:
/* 80058A78 00053978  7C 00 28 40 */	cmplw r0, r5
/* 80058A7C 0005397C  41 81 00 30 */	bgt lbl_80058AAC
/* 80058A80 00053980  54 03 0B FC */	rlwinm r3, r0, 1, 0xf, 0x1e
/* 80058A84 00053984  C8 82 88 40 */	lfd f4, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058A88 00053988  7C 64 1A 14 */	add r3, r4, r3
/* 80058A8C 0005398C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80058A90 00053990  A0 63 00 08 */	lhz r3, 8(r3)
/* 80058A94 00053994  C0 04 00 04 */	lfs f0, 4(r4)
/* 80058A98 00053998  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80058A9C 0005399C  C8 61 00 38 */	lfd f3, 0x38(r1)
/* 80058AA0 000539A0  EC 63 20 28 */	fsubs f3, f3, f4
/* 80058AA4 000539A4  EF C2 00 FA */	fmadds f30, f2, f3, f0
/* 80058AA8 000539A8  48 00 00 70 */	b lbl_80058B18
lbl_80058AAC:
/* 80058AAC 000539AC  54 A3 0B FC */	rlwinm r3, r5, 1, 0xf, 0x1e
/* 80058AB0 000539B0  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80058AB4 000539B4  7C 64 1A 14 */	add r3, r4, r3
/* 80058AB8 000539B8  C8 A2 88 40 */	lfd f5, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058ABC 000539BC  A0 63 00 08 */	lhz r3, 8(r3)
/* 80058AC0 000539C0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80058AC4 000539C4  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80058AC8 000539C8  EC 80 28 28 */	fsubs f4, f0, f5
/* 80058ACC 000539CC  C0 64 00 00 */	lfs f3, 0(r4)
/* 80058AD0 000539D0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80058AD4 000539D4  C0 44 00 04 */	lfs f2, 4(r4)
/* 80058AD8 000539D8  EC 81 20 28 */	fsubs f4, f1, f4
/* 80058ADC 000539DC  EC 00 28 28 */	fsubs f0, f0, f5
/* 80058AE0 000539E0  FC 06 20 00 */	fcmpu cr0, f6, f4
/* 80058AE4 000539E4  EF C3 10 3A */	fmadds f30, f3, f0, f2
/* 80058AE8 000539E8  40 82 00 08 */	bne lbl_80058AF0
/* 80058AEC 000539EC  48 00 00 2C */	b lbl_80058B18
lbl_80058AF0:
/* 80058AF0 000539F0  38 65 00 01 */	addi r3, r5, 1
/* 80058AF4 000539F4  54 63 0B FC */	rlwinm r3, r3, 1, 0xf, 0x1e
/* 80058AF8 000539F8  7C 64 1A 14 */	add r3, r4, r3
/* 80058AFC 000539FC  A0 63 00 08 */	lhz r3, 8(r3)
/* 80058B00 00053A00  90 61 00 34 */	stw r3, 0x34(r1)
/* 80058B04 00053A04  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80058B08 00053A08  EC 00 28 28 */	fsubs f0, f0, f5
/* 80058B0C 00053A0C  EC 03 10 3A */	fmadds f0, f3, f0, f2
/* 80058B10 00053A10  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80058B14 00053A14  EF C4 F0 3A */	fmadds f30, f4, f0, f30
lbl_80058B18:
/* 80058B18 00053A18  57 E3 03 5B */	rlwinm. r3, r31, 0, 0xd, 0xd
/* 80058B1C 00053A1C  7F C3 F3 78 */	mr r3, r30
/* 80058B20 00053A20  3B DE 00 04 */	addi r30, r30, 4
/* 80058B24 00053A24  41 82 00 0C */	beq lbl_80058B30
/* 80058B28 00053A28  C3 A3 00 00 */	lfs f29, 0(r3)
/* 80058B2C 00053A2C  48 00 02 B0 */	b lbl_80058DDC
lbl_80058B30:
/* 80058B30 00053A30  80 63 00 00 */	lwz r3, 0(r3)
/* 80058B34 00053A34  7C 83 32 14 */	add r4, r3, r6
/* 80058B38 00053A38  F0 21 B0 14 */	psq_st f1, 20(r1), 1, qr3
/* 80058B3C 00053A3C  C0 C2 88 28 */	lfs f6, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058B40 00053A40  A0 A1 00 14 */	lhz r5, 0x14(r1)
/* 80058B44 00053A44  FC 01 30 40 */	fcmpo cr0, f1, f6
/* 80058B48 00053A48  4C 40 13 82 */	cror 2, 0, 2
/* 80058B4C 00053A4C  40 82 00 28 */	bne lbl_80058B74
/* 80058B50 00053A50  A0 04 00 08 */	lhz r0, 8(r4)
/* 80058B54 00053A54  C8 62 88 40 */	lfd f3, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058B58 00053A58  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80058B5C 00053A5C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80058B60 00053A60  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 80058B64 00053A64  C0 04 00 04 */	lfs f0, 4(r4)
/* 80058B68 00053A68  EC 42 18 28 */	fsubs f2, f2, f3
/* 80058B6C 00053A6C  EF A1 00 BA */	fmadds f29, f1, f2, f0
/* 80058B70 00053A70  48 00 02 6C */	b lbl_80058DDC
lbl_80058B74:
/* 80058B74 00053A74  7C 00 28 40 */	cmplw r0, r5
/* 80058B78 00053A78  41 81 00 30 */	bgt lbl_80058BA8
/* 80058B7C 00053A7C  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80058B80 00053A80  C8 62 88 40 */	lfd f3, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058B84 00053A84  7C 64 02 14 */	add r3, r4, r0
/* 80058B88 00053A88  C0 24 00 00 */	lfs f1, 0(r4)
/* 80058B8C 00053A8C  A0 03 00 08 */	lhz r0, 8(r3)
/* 80058B90 00053A90  C0 04 00 04 */	lfs f0, 4(r4)
/* 80058B94 00053A94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80058B98 00053A98  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 80058B9C 00053A9C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80058BA0 00053AA0  EF A1 00 BA */	fmadds f29, f1, f2, f0
/* 80058BA4 00053AA4  48 00 02 38 */	b lbl_80058DDC
lbl_80058BA8:
/* 80058BA8 00053AA8  54 A0 0B FC */	rlwinm r0, r5, 1, 0xf, 0x1e
/* 80058BAC 00053AAC  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80058BB0 00053AB0  7C 64 02 14 */	add r3, r4, r0
/* 80058BB4 00053AB4  C8 A2 88 40 */	lfd f5, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058BB8 00053AB8  A0 03 00 08 */	lhz r0, 8(r3)
/* 80058BBC 00053ABC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80058BC0 00053AC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80058BC4 00053AC4  EC 80 28 28 */	fsubs f4, f0, f5
/* 80058BC8 00053AC8  C0 64 00 00 */	lfs f3, 0(r4)
/* 80058BCC 00053ACC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80058BD0 00053AD0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80058BD4 00053AD4  EC 21 20 28 */	fsubs f1, f1, f4
/* 80058BD8 00053AD8  EC 00 28 28 */	fsubs f0, f0, f5
/* 80058BDC 00053ADC  FC 06 08 00 */	fcmpu cr0, f6, f1
/* 80058BE0 00053AE0  EF A3 10 3A */	fmadds f29, f3, f0, f2
/* 80058BE4 00053AE4  40 82 00 08 */	bne lbl_80058BEC
/* 80058BE8 00053AE8  48 00 01 F4 */	b lbl_80058DDC
lbl_80058BEC:
/* 80058BEC 00053AEC  38 05 00 01 */	addi r0, r5, 1
/* 80058BF0 00053AF0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80058BF4 00053AF4  7C 64 02 14 */	add r3, r4, r0
/* 80058BF8 00053AF8  A0 03 00 08 */	lhz r0, 8(r3)
/* 80058BFC 00053AFC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80058C00 00053B00  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80058C04 00053B04  EC 00 28 28 */	fsubs f0, f0, f5
/* 80058C08 00053B08  EC 03 10 3A */	fmadds f0, f3, f0, f2
/* 80058C0C 00053B0C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80058C10 00053B10  EF A1 E8 3A */	fmadds f29, f1, f0, f29
/* 80058C14 00053B14  48 00 01 C8 */	b lbl_80058DDC
lbl_80058C18:
/* 80058C18 00053B18  57 E0 03 DF */	rlwinm. r0, r31, 0, 0xf, 0xf
/* 80058C1C 00053B1C  7F C3 F3 78 */	mr r3, r30
/* 80058C20 00053B20  A0 05 00 00 */	lhz r0, 0(r5)
/* 80058C24 00053B24  3B C7 00 04 */	addi r30, r7, 4
/* 80058C28 00053B28  41 82 00 0C */	beq lbl_80058C34
/* 80058C2C 00053B2C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80058C30 00053B30  48 00 00 7C */	b lbl_80058CAC
lbl_80058C34:
/* 80058C34 00053B34  80 63 00 00 */	lwz r3, 0(r3)
/* 80058C38 00053B38  7C 83 32 14 */	add r4, r3, r6
/* 80058C3C 00053B3C  F3 A1 B0 10 */	psq_st f29, 16(r1), 1, qr3
/* 80058C40 00053B40  C0 62 88 28 */	lfs f3, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058C44 00053B44  A0 A1 00 10 */	lhz r5, 0x10(r1)
/* 80058C48 00053B48  FC 1D 18 40 */	fcmpo cr0, f29, f3
/* 80058C4C 00053B4C  4C 40 13 82 */	cror 2, 0, 2
/* 80058C50 00053B50  40 82 00 0C */	bne lbl_80058C5C
/* 80058C54 00053B54  C3 E4 00 00 */	lfs f31, 0(r4)
/* 80058C58 00053B58  48 00 00 54 */	b lbl_80058CAC
lbl_80058C5C:
/* 80058C5C 00053B5C  7C 00 28 40 */	cmplw r0, r5
/* 80058C60 00053B60  41 81 00 10 */	bgt lbl_80058C70
/* 80058C64 00053B64  54 03 13 BA */	rlwinm r3, r0, 2, 0xe, 0x1d
/* 80058C68 00053B68  7F E4 1C 2E */	lfsx f31, r4, r3
/* 80058C6C 00053B6C  48 00 00 40 */	b lbl_80058CAC
lbl_80058C70:
/* 80058C70 00053B70  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80058C74 00053B74  54 A3 13 BA */	rlwinm r3, r5, 2, 0xe, 0x1d
/* 80058C78 00053B78  C8 42 88 40 */	lfd f2, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058C7C 00053B7C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80058C80 00053B80  7F E4 1C 2E */	lfsx f31, r4, r3
/* 80058C84 00053B84  EC 00 10 28 */	fsubs f0, f0, f2
/* 80058C88 00053B88  EC 5D 00 28 */	fsubs f2, f29, f0
/* 80058C8C 00053B8C  FC 03 10 00 */	fcmpu cr0, f3, f2
/* 80058C90 00053B90  40 82 00 08 */	bne lbl_80058C98
/* 80058C94 00053B94  48 00 00 18 */	b lbl_80058CAC
lbl_80058C98:
/* 80058C98 00053B98  38 65 00 01 */	addi r3, r5, 1
/* 80058C9C 00053B9C  54 63 13 BA */	rlwinm r3, r3, 2, 0xe, 0x1d
/* 80058CA0 00053BA0  7C 04 1C 2E */	lfsx f0, r4, r3
/* 80058CA4 00053BA4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80058CA8 00053BA8  EF E2 F8 3A */	fmadds f31, f2, f0, f31
lbl_80058CAC:
/* 80058CAC 00053BAC  57 E3 03 9D */	rlwinm. r3, r31, 0, 0xe, 0xe
/* 80058CB0 00053BB0  7F C3 F3 78 */	mr r3, r30
/* 80058CB4 00053BB4  3B DE 00 04 */	addi r30, r30, 4
/* 80058CB8 00053BB8  41 82 00 0C */	beq lbl_80058CC4
/* 80058CBC 00053BBC  C3 C3 00 00 */	lfs f30, 0(r3)
/* 80058CC0 00053BC0  48 00 00 7C */	b lbl_80058D3C
lbl_80058CC4:
/* 80058CC4 00053BC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80058CC8 00053BC8  7C 83 32 14 */	add r4, r3, r6
/* 80058CCC 00053BCC  F0 21 B0 0C */	psq_st f1, 12(r1), 1, qr3
/* 80058CD0 00053BD0  C0 62 88 28 */	lfs f3, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058CD4 00053BD4  A0 A1 00 0C */	lhz r5, 0xc(r1)
/* 80058CD8 00053BD8  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80058CDC 00053BDC  4C 40 13 82 */	cror 2, 0, 2
/* 80058CE0 00053BE0  40 82 00 0C */	bne lbl_80058CEC
/* 80058CE4 00053BE4  C3 C4 00 00 */	lfs f30, 0(r4)
/* 80058CE8 00053BE8  48 00 00 54 */	b lbl_80058D3C
lbl_80058CEC:
/* 80058CEC 00053BEC  7C 00 28 40 */	cmplw r0, r5
/* 80058CF0 00053BF0  41 81 00 10 */	bgt lbl_80058D00
/* 80058CF4 00053BF4  54 03 13 BA */	rlwinm r3, r0, 2, 0xe, 0x1d
/* 80058CF8 00053BF8  7F C4 1C 2E */	lfsx f30, r4, r3
/* 80058CFC 00053BFC  48 00 00 40 */	b lbl_80058D3C
lbl_80058D00:
/* 80058D00 00053C00  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80058D04 00053C04  54 A3 13 BA */	rlwinm r3, r5, 2, 0xe, 0x1d
/* 80058D08 00053C08  C8 42 88 40 */	lfd f2, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058D0C 00053C0C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80058D10 00053C10  7F C4 1C 2E */	lfsx f30, r4, r3
/* 80058D14 00053C14  EC 00 10 28 */	fsubs f0, f0, f2
/* 80058D18 00053C18  EC 41 00 28 */	fsubs f2, f1, f0
/* 80058D1C 00053C1C  FC 03 10 00 */	fcmpu cr0, f3, f2
/* 80058D20 00053C20  40 82 00 08 */	bne lbl_80058D28
/* 80058D24 00053C24  48 00 00 18 */	b lbl_80058D3C
lbl_80058D28:
/* 80058D28 00053C28  38 65 00 01 */	addi r3, r5, 1
/* 80058D2C 00053C2C  54 63 13 BA */	rlwinm r3, r3, 2, 0xe, 0x1d
/* 80058D30 00053C30  7C 04 1C 2E */	lfsx f0, r4, r3
/* 80058D34 00053C34  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80058D38 00053C38  EF C2 F0 3A */	fmadds f30, f2, f0, f30
lbl_80058D3C:
/* 80058D3C 00053C3C  57 E3 03 5B */	rlwinm. r3, r31, 0, 0xd, 0xd
/* 80058D40 00053C40  7F C3 F3 78 */	mr r3, r30
/* 80058D44 00053C44  3B DE 00 04 */	addi r30, r30, 4
/* 80058D48 00053C48  41 82 00 0C */	beq lbl_80058D54
/* 80058D4C 00053C4C  C3 A3 00 00 */	lfs f29, 0(r3)
/* 80058D50 00053C50  48 00 00 8C */	b lbl_80058DDC
lbl_80058D54:
/* 80058D54 00053C54  80 63 00 00 */	lwz r3, 0(r3)
/* 80058D58 00053C58  7C 63 32 14 */	add r3, r3, r6
/* 80058D5C 00053C5C  F0 21 B0 08 */	psq_st f1, 8(r1), 1, qr3
/* 80058D60 00053C60  C0 62 88 28 */	lfs f3, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058D64 00053C64  A0 81 00 08 */	lhz r4, 8(r1)
/* 80058D68 00053C68  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80058D6C 00053C6C  4C 40 13 82 */	cror 2, 0, 2
/* 80058D70 00053C70  40 82 00 0C */	bne lbl_80058D7C
/* 80058D74 00053C74  C3 A3 00 00 */	lfs f29, 0(r3)
/* 80058D78 00053C78  48 00 00 64 */	b lbl_80058DDC
lbl_80058D7C:
/* 80058D7C 00053C7C  7C 00 20 40 */	cmplw r0, r4
/* 80058D80 00053C80  41 81 00 10 */	bgt lbl_80058D90
/* 80058D84 00053C84  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80058D88 00053C88  7F A3 04 2E */	lfsx f29, r3, r0
/* 80058D8C 00053C8C  48 00 00 50 */	b lbl_80058DDC
lbl_80058D90:
/* 80058D90 00053C90  90 81 00 34 */	stw r4, 0x34(r1)
/* 80058D94 00053C94  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 80058D98 00053C98  C8 42 88 40 */	lfd f2, lbl_804C0260-_SDA2_BASE_(r2)
/* 80058D9C 00053C9C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80058DA0 00053CA0  7F A3 04 2E */	lfsx f29, r3, r0
/* 80058DA4 00053CA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80058DA8 00053CA8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80058DAC 00053CAC  FC 03 08 00 */	fcmpu cr0, f3, f1
/* 80058DB0 00053CB0  40 82 00 08 */	bne lbl_80058DB8
/* 80058DB4 00053CB4  48 00 00 28 */	b lbl_80058DDC
lbl_80058DB8:
/* 80058DB8 00053CB8  38 04 00 01 */	addi r0, r4, 1
/* 80058DBC 00053CBC  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80058DC0 00053CC0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80058DC4 00053CC4  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80058DC8 00053CC8  EF A1 E8 3A */	fmadds f29, f1, f0, f29
/* 80058DCC 00053CCC  48 00 00 10 */	b lbl_80058DDC
lbl_80058DD0:
/* 80058DD0 00053CD0  C3 E2 88 28 */	lfs f31, lbl_804C0248-_SDA2_BASE_(r2)
/* 80058DD4 00053CD4  FF C0 F8 90 */	fmr f30, f31
/* 80058DD8 00053CD8  FF A0 F8 90 */	fmr f29, f31
lbl_80058DDC:
/* 80058DDC 00053CDC  C0 02 88 38 */	lfs f0, lbl_804C0258-_SDA2_BASE_(r2)
/* 80058DE0 00053CE0  7F 63 DB 78 */	mr r3, r27
/* 80058DE4 00053CE4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80058DE8 00053CE8  EC 40 07 B2 */	fmuls f2, f0, f30
/* 80058DEC 00053CEC  EC 60 07 72 */	fmuls f3, f0, f29
/* 80058DF0 00053CF0  4B FD 71 A5 */	bl MTX34RotXYZFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34fff
/* 80058DF4 00053CF4  D3 FC 00 00 */	stfs f31, 0(r28)
/* 80058DF8 00053CF8  7F C3 F3 78 */	mr r3, r30
/* 80058DFC 00053CFC  D3 DC 00 04 */	stfs f30, 4(r28)
/* 80058E00 00053D00  D3 BC 00 08 */	stfs f29, 8(r28)
/* 80058E04 00053D04  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80058E08 00053D08  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80058E0C 00053D0C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 80058E10 00053D10  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80058E14 00053D14  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 80058E18 00053D18  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80058E1C 00053D1C  39 61 00 60 */	addi r11, r1, 0x60
/* 80058E20 00053D20  48 05 8F 71 */	bl _restgpr_27
/* 80058E24 00053D24  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80058E28 00053D28  7C 08 03 A6 */	mtlr r0
/* 80058E2C 00053D2C  38 21 00 90 */	addi r1, r1, 0x90
/* 80058E30 00053D30  4E 80 00 20 */	blr 

# GetAnmTranslation__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
.global GetAnmTranslation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
GetAnmTranslation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf:
/* 80058E34 00053D34  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80058E38 00053D38  7C 08 02 A6 */	mflr r0
/* 80058E3C 00053D3C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80058E40 00053D40  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80058E44 00053D44  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80058E48 00053D48  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80058E4C 00053D4C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80058E50 00053D50  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80058E54 00053D54  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80058E58 00053D58  FF A0 08 90 */	fmr f29, f1
/* 80058E5C 00053D5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80058E60 00053D60  83 E4 00 04 */	lwz r31, 4(r4)
/* 80058E64 00053D64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80058E68 00053D68  7C BE 2B 78 */	mr r30, r5
/* 80058E6C 00053D6C  57 E6 00 03 */	rlwinm. r6, r31, 0, 0, 1
/* 80058E70 00053D70  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80058E74 00053D74  7C 9D 23 78 */	mr r29, r4
/* 80058E78 00053D78  93 81 00 10 */	stw r28, 0x10(r1)
/* 80058E7C 00053D7C  7C 7C 1B 78 */	mr r28, r3
/* 80058E80 00053D80  41 82 00 3C */	beq lbl_80058EBC
/* 80058E84 00053D84  40 80 00 28 */	bge lbl_80058EAC
/* 80058E88 00053D88  3C 00 C0 00 */	lis r0, 0xc000
/* 80058E8C 00053D8C  7C 06 00 00 */	cmpw r6, r0
/* 80058E90 00053D90  41 82 01 40 */	beq lbl_80058FD0
/* 80058E94 00053D94  40 80 01 BC */	bge lbl_80059050
/* 80058E98 00053D98  3C 60 80 00 */	lis r3, 0x80000001@ha
/* 80058E9C 00053D9C  38 03 00 01 */	addi r0, r3, 0x80000001@l
/* 80058EA0 00053DA0  7C 06 00 00 */	cmpw r6, r0
/* 80058EA4 00053DA4  40 80 01 AC */	bge lbl_80059050
/* 80058EA8 00053DA8  48 00 00 A8 */	b lbl_80058F50
lbl_80058EAC:
/* 80058EAC 00053DAC  3C 00 40 00 */	lis r0, 0x4000
/* 80058EB0 00053DB0  7C 06 00 00 */	cmpw r6, r0
/* 80058EB4 00053DB4  41 82 00 1C */	beq lbl_80058ED0
/* 80058EB8 00053DB8  48 00 01 98 */	b lbl_80059050
lbl_80058EBC:
/* 80058EBC 00053DBC  C3 E5 00 00 */	lfs f31, 0(r5)
/* 80058EC0 00053DC0  3B C5 00 0C */	addi r30, r5, 0xc
/* 80058EC4 00053DC4  C3 C5 00 04 */	lfs f30, 4(r5)
/* 80058EC8 00053DC8  C0 25 00 08 */	lfs f1, 8(r5)
/* 80058ECC 00053DCC  48 00 01 90 */	b lbl_8005905C
lbl_80058ED0:
/* 80058ED0 00053DD0  57 E0 03 19 */	rlwinm. r0, r31, 0, 0xc, 0xc
/* 80058ED4 00053DD4  7F C3 F3 78 */	mr r3, r30
/* 80058ED8 00053DD8  3B C5 00 04 */	addi r30, r5, 4
/* 80058EDC 00053DDC  41 82 00 0C */	beq lbl_80058EE8
/* 80058EE0 00053DE0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058EE4 00053DE4  48 00 00 10 */	b lbl_80058EF4
lbl_80058EE8:
/* 80058EE8 00053DE8  80 03 00 00 */	lwz r0, 0(r3)
/* 80058EEC 00053DEC  7C 60 22 14 */	add r3, r0, r4
/* 80058EF0 00053DF0  4B FF F3 29 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058EF4:
/* 80058EF4 00053DF4  57 E0 02 D7 */	rlwinm. r0, r31, 0, 0xb, 0xb
/* 80058EF8 00053DF8  FF E0 08 90 */	fmr f31, f1
/* 80058EFC 00053DFC  7F C3 F3 78 */	mr r3, r30
/* 80058F00 00053E00  3B DE 00 04 */	addi r30, r30, 4
/* 80058F04 00053E04  41 82 00 0C */	beq lbl_80058F10
/* 80058F08 00053E08  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058F0C 00053E0C  48 00 00 14 */	b lbl_80058F20
lbl_80058F10:
/* 80058F10 00053E10  80 03 00 00 */	lwz r0, 0(r3)
/* 80058F14 00053E14  FC 20 E8 90 */	fmr f1, f29
/* 80058F18 00053E18  7C 60 EA 14 */	add r3, r0, r29
/* 80058F1C 00053E1C  4B FF F2 FD */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058F20:
/* 80058F20 00053E20  57 E0 02 95 */	rlwinm. r0, r31, 0, 0xa, 0xa
/* 80058F24 00053E24  FF C0 08 90 */	fmr f30, f1
/* 80058F28 00053E28  7F C3 F3 78 */	mr r3, r30
/* 80058F2C 00053E2C  3B DE 00 04 */	addi r30, r30, 4
/* 80058F30 00053E30  41 82 00 0C */	beq lbl_80058F3C
/* 80058F34 00053E34  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058F38 00053E38  48 00 01 24 */	b lbl_8005905C
lbl_80058F3C:
/* 80058F3C 00053E3C  80 03 00 00 */	lwz r0, 0(r3)
/* 80058F40 00053E40  FC 20 E8 90 */	fmr f1, f29
/* 80058F44 00053E44  7C 60 EA 14 */	add r3, r0, r29
/* 80058F48 00053E48  4B FF F2 D1 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS32Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
/* 80058F4C 00053E4C  48 00 01 10 */	b lbl_8005905C
lbl_80058F50:
/* 80058F50 00053E50  57 E0 03 19 */	rlwinm. r0, r31, 0, 0xc, 0xc
/* 80058F54 00053E54  7F C3 F3 78 */	mr r3, r30
/* 80058F58 00053E58  3B C5 00 04 */	addi r30, r5, 4
/* 80058F5C 00053E5C  41 82 00 0C */	beq lbl_80058F68
/* 80058F60 00053E60  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058F64 00053E64  48 00 00 10 */	b lbl_80058F74
lbl_80058F68:
/* 80058F68 00053E68  80 03 00 00 */	lwz r0, 0(r3)
/* 80058F6C 00053E6C  7C 60 22 14 */	add r3, r0, r4
/* 80058F70 00053E70  4B FF F1 39 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058F74:
/* 80058F74 00053E74  57 E0 02 D7 */	rlwinm. r0, r31, 0, 0xb, 0xb
/* 80058F78 00053E78  FF E0 08 90 */	fmr f31, f1
/* 80058F7C 00053E7C  7F C3 F3 78 */	mr r3, r30
/* 80058F80 00053E80  3B DE 00 04 */	addi r30, r30, 4
/* 80058F84 00053E84  41 82 00 0C */	beq lbl_80058F90
/* 80058F88 00053E88  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058F8C 00053E8C  48 00 00 14 */	b lbl_80058FA0
lbl_80058F90:
/* 80058F90 00053E90  80 03 00 00 */	lwz r0, 0(r3)
/* 80058F94 00053E94  FC 20 E8 90 */	fmr f1, f29
/* 80058F98 00053E98  7C 60 EA 14 */	add r3, r0, r29
/* 80058F9C 00053E9C  4B FF F1 0D */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058FA0:
/* 80058FA0 00053EA0  57 E0 02 95 */	rlwinm. r0, r31, 0, 0xa, 0xa
/* 80058FA4 00053EA4  FF C0 08 90 */	fmr f30, f1
/* 80058FA8 00053EA8  7F C3 F3 78 */	mr r3, r30
/* 80058FAC 00053EAC  3B DE 00 04 */	addi r30, r30, 4
/* 80058FB0 00053EB0  41 82 00 0C */	beq lbl_80058FBC
/* 80058FB4 00053EB4  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058FB8 00053EB8  48 00 00 A4 */	b lbl_8005905C
lbl_80058FBC:
/* 80058FBC 00053EBC  80 03 00 00 */	lwz r0, 0(r3)
/* 80058FC0 00053EC0  FC 20 E8 90 */	fmr f1, f29
/* 80058FC4 00053EC4  7C 60 EA 14 */	add r3, r0, r29
/* 80058FC8 00053EC8  4B FF F0 E1 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS48Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
/* 80058FCC 00053ECC  48 00 00 90 */	b lbl_8005905C
lbl_80058FD0:
/* 80058FD0 00053ED0  57 E0 03 19 */	rlwinm. r0, r31, 0, 0xc, 0xc
/* 80058FD4 00053ED4  7F C3 F3 78 */	mr r3, r30
/* 80058FD8 00053ED8  3B C5 00 04 */	addi r30, r5, 4
/* 80058FDC 00053EDC  41 82 00 0C */	beq lbl_80058FE8
/* 80058FE0 00053EE0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80058FE4 00053EE4  48 00 00 10 */	b lbl_80058FF4
lbl_80058FE8:
/* 80058FE8 00053EE8  80 03 00 00 */	lwz r0, 0(r3)
/* 80058FEC 00053EEC  7C 60 22 14 */	add r3, r0, r4
/* 80058FF0 00053EF0  4B FF EF 8D */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80058FF4:
/* 80058FF4 00053EF4  57 E0 02 D7 */	rlwinm. r0, r31, 0, 0xb, 0xb
/* 80058FF8 00053EF8  FF E0 08 90 */	fmr f31, f1
/* 80058FFC 00053EFC  7F C3 F3 78 */	mr r3, r30
/* 80059000 00053F00  3B DE 00 04 */	addi r30, r30, 4
/* 80059004 00053F04  41 82 00 0C */	beq lbl_80059010
/* 80059008 00053F08  C0 23 00 00 */	lfs f1, 0(r3)
/* 8005900C 00053F0C  48 00 00 14 */	b lbl_80059020
lbl_80059010:
/* 80059010 00053F10  80 03 00 00 */	lwz r0, 0(r3)
/* 80059014 00053F14  FC 20 E8 90 */	fmr f1, f29
/* 80059018 00053F18  7C 60 EA 14 */	add r3, r0, r29
/* 8005901C 00053F1C  4B FF EF 61 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
lbl_80059020:
/* 80059020 00053F20  57 E0 02 95 */	rlwinm. r0, r31, 0, 0xa, 0xa
/* 80059024 00053F24  FF C0 08 90 */	fmr f30, f1
/* 80059028 00053F28  7F C3 F3 78 */	mr r3, r30
/* 8005902C 00053F2C  3B DE 00 04 */	addi r30, r30, 4
/* 80059030 00053F30  41 82 00 0C */	beq lbl_8005903C
/* 80059034 00053F34  C0 23 00 00 */	lfs f1, 0(r3)
/* 80059038 00053F38  48 00 00 24 */	b lbl_8005905C
lbl_8005903C:
/* 8005903C 00053F3C  80 03 00 00 */	lwz r0, 0(r3)
/* 80059040 00053F40  FC 20 E8 90 */	fmr f1, f29
/* 80059044 00053F44  7C 60 EA 14 */	add r3, r0, r29
/* 80059048 00053F48  4B FF EF 35 */	bl CalcAnimationFVS$$0Q44nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$246CAnmFmtTraits$$0Q34nw4r3g3d18ResAnmChrFVS96Data$$1$$1__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPCQ34nw4r3g3d16ResAnmChrFVSDataf_f
/* 8005904C 00053F4C  48 00 00 10 */	b lbl_8005905C
lbl_80059050:
/* 80059050 00053F50  C3 E2 88 28 */	lfs f31, lbl_804C0248-_SDA2_BASE_(r2)
/* 80059054 00053F54  FF C0 F8 90 */	fmr f30, f31
/* 80059058 00053F58  FC 20 F8 90 */	fmr f1, f31
lbl_8005905C:
/* 8005905C 00053F5C  D3 FC 00 00 */	stfs f31, 0(r28)
/* 80059060 00053F60  7F C3 F3 78 */	mr r3, r30
/* 80059064 00053F64  D3 DC 00 04 */	stfs f30, 4(r28)
/* 80059068 00053F68  D0 3C 00 08 */	stfs f1, 8(r28)
/* 8005906C 00053F6C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80059070 00053F70  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80059074 00053F74  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80059078 00053F78  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8005907C 00053F7C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 80059080 00053F80  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80059084 00053F84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80059088 00053F88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8005908C 00053F8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80059090 00053F90  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80059094 00053F94  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80059098 00053F98  7C 08 03 A6 */	mtlr r0
/* 8005909C 00053F9C  38 21 00 50 */	addi r1, r1, 0x50
/* 800590A0 00053FA0  4E 80 00 20 */	blr 

# GetAnmResult___Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
.global GetAnmResult___Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
GetAnmResult___Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf:
/* 800590A4 00053FA4  C0 02 88 2C */	lfs f0, lbl_804C024C-_SDA2_BASE_(r2)
/* 800590A8 00053FA8  D0 03 00 04 */	stfs f0, 4(r3)
/* 800590AC 00053FAC  D0 03 00 08 */	stfs f0, 8(r3)
/* 800590B0 00053FB0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800590B4 00053FB4  38 63 00 1C */	addi r3, r3, 0x1c
/* 800590B8 00053FB8  48 08 E5 40 */	b PSMTXIdentity

# GetAnmResult_T__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
.global GetAnmResult_T__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
GetAnmResult_T__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf:
/* 800590BC 00053FBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800590C0 00053FC0  7C 08 02 A6 */	mflr r0
/* 800590C4 00053FC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800590C8 00053FC8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800590CC 00053FCC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 800590D0 00053FD0  FF E0 08 90 */	fmr f31, f1
/* 800590D4 00053FD4  C0 02 88 2C */	lfs f0, lbl_804C024C-_SDA2_BASE_(r2)
/* 800590D8 00053FD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800590DC 00053FDC  7C BF 2B 78 */	mr r31, r5
/* 800590E0 00053FE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800590E4 00053FE4  7C 7E 1B 78 */	mr r30, r3
/* 800590E8 00053FE8  D0 03 00 04 */	stfs f0, 4(r3)
/* 800590EC 00053FEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 800590F0 00053FF0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800590F4 00053FF4  38 63 00 1C */	addi r3, r3, 0x1c
/* 800590F8 00053FF8  48 08 E5 01 */	bl PSMTXIdentity
/* 800590FC 00053FFC  FC 20 F8 90 */	fmr f1, f31
/* 80059100 00054000  7F E4 FB 78 */	mr r4, r31
/* 80059104 00054004  38 61 00 08 */	addi r3, r1, 8
/* 80059108 00054008  38 BF 00 08 */	addi r5, r31, 8
/* 8005910C 0005400C  4B FF FD 29 */	bl GetAnmTranslation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 80059110 00054010  C0 01 00 08 */	lfs f0, 8(r1)
/* 80059114 00054014  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 80059118 00054018  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8005911C 0005401C  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80059120 00054020  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80059124 00054024  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 80059128 00054028  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8005912C 0005402C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80059130 00054030  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80059134 00054034  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80059138 00054038  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8005913C 0005403C  7C 08 03 A6 */	mtlr r0
/* 80059140 00054040  38 21 00 30 */	addi r1, r1, 0x30
/* 80059144 00054044  4E 80 00 20 */	blr 

# GetAnmResult_R__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
.global GetAnmResult_R__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
GetAnmResult_R__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf:
/* 80059148 00054048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005914C 0005404C  7C 08 02 A6 */	mflr r0
/* 80059150 00054050  7C A6 2B 78 */	mr r6, r5
/* 80059154 00054054  7C 85 23 78 */	mr r5, r4
/* 80059158 00054058  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005915C 0005405C  38 83 00 10 */	addi r4, r3, 0x10
/* 80059160 00054060  C0 02 88 2C */	lfs f0, lbl_804C024C-_SDA2_BASE_(r2)
/* 80059164 00054064  38 E6 00 08 */	addi r7, r6, 8
/* 80059168 00054068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005916C 0005406C  7C 7F 1B 78 */	mr r31, r3
/* 80059170 00054070  D0 03 00 04 */	stfs f0, 4(r3)
/* 80059174 00054074  D0 03 00 08 */	stfs f0, 8(r3)
/* 80059178 00054078  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8005917C 0005407C  38 63 00 1C */	addi r3, r3, 0x1c
/* 80059180 00054080  4B FF F2 59 */	bl GetAnmRotation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3RCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 80059184 00054084  80 1F 00 00 */	lwz r0, 0(r31)
/* 80059188 00054088  C0 02 88 28 */	lfs f0, lbl_804C0248-_SDA2_BASE_(r2)
/* 8005918C 0005408C  64 00 80 00 */	oris r0, r0, 0x8000
/* 80059190 00054090  90 1F 00 00 */	stw r0, 0(r31)
/* 80059194 00054094  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80059198 00054098  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8005919C 0005409C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 800591A0 000540A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800591A4 000540A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800591A8 000540A8  7C 08 03 A6 */	mtlr r0
/* 800591AC 000540AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800591B0 000540B0  4E 80 00 20 */	blr 

# GetAnmResult_S__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
.global GetAnmResult_S__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
GetAnmResult_S__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf:
/* 800591B4 000540B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800591B8 000540B8  7C 08 02 A6 */	mflr r0
/* 800591BC 000540BC  7C A4 2B 78 */	mr r4, r5
/* 800591C0 000540C0  38 A5 00 08 */	addi r5, r5, 8
/* 800591C4 000540C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800591C8 000540C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800591CC 000540CC  7C 7F 1B 78 */	mr r31, r3
/* 800591D0 000540D0  38 63 00 04 */	addi r3, r3, 4
/* 800591D4 000540D4  4B FF EA F1 */	bl GetAnmScale__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 800591D8 000540D8  38 7F 00 1C */	addi r3, r31, 0x1c
/* 800591DC 000540DC  48 08 E4 1D */	bl PSMTXIdentity
/* 800591E0 000540E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800591E4 000540E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800591E8 000540E8  7C 08 03 A6 */	mtlr r0
/* 800591EC 000540EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800591F0 000540F0  4E 80 00 20 */	blr 

# GetAnmResult_RT__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
.global GetAnmResult_RT__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
GetAnmResult_RT__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf:
/* 800591F4 000540F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800591F8 000540F8  7C 08 02 A6 */	mflr r0
/* 800591FC 000540FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80059200 00054100  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80059204 00054104  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80059208 00054108  FF E0 08 90 */	fmr f31, f1
/* 8005920C 0005410C  C0 02 88 2C */	lfs f0, lbl_804C024C-_SDA2_BASE_(r2)
/* 80059210 00054110  38 E5 00 08 */	addi r7, r5, 8
/* 80059214 00054114  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80059218 00054118  7C BF 2B 78 */	mr r31, r5
/* 8005921C 0005411C  7C 85 23 78 */	mr r5, r4
/* 80059220 00054120  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80059224 00054124  7C 7E 1B 78 */	mr r30, r3
/* 80059228 00054128  7F E6 FB 78 */	mr r6, r31
/* 8005922C 0005412C  38 83 00 10 */	addi r4, r3, 0x10
/* 80059230 00054130  D0 03 00 04 */	stfs f0, 4(r3)
/* 80059234 00054134  D0 03 00 08 */	stfs f0, 8(r3)
/* 80059238 00054138  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8005923C 0005413C  38 63 00 1C */	addi r3, r3, 0x1c
/* 80059240 00054140  4B FF F1 99 */	bl GetAnmRotation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3RCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 80059244 00054144  80 1E 00 00 */	lwz r0, 0(r30)
/* 80059248 00054148  7C 65 1B 78 */	mr r5, r3
/* 8005924C 0005414C  FC 20 F8 90 */	fmr f1, f31
/* 80059250 00054150  7F E4 FB 78 */	mr r4, r31
/* 80059254 00054154  64 00 80 00 */	oris r0, r0, 0x8000
/* 80059258 00054158  38 61 00 08 */	addi r3, r1, 8
/* 8005925C 0005415C  90 1E 00 00 */	stw r0, 0(r30)
/* 80059260 00054160  4B FF FB D5 */	bl GetAnmTranslation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 80059264 00054164  C0 01 00 08 */	lfs f0, 8(r1)
/* 80059268 00054168  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8005926C 0005416C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80059270 00054170  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80059274 00054174  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80059278 00054178  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8005927C 0005417C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80059280 00054180  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80059284 00054184  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80059288 00054188  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8005928C 0005418C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80059290 00054190  7C 08 03 A6 */	mtlr r0
/* 80059294 00054194  38 21 00 30 */	addi r1, r1, 0x30
/* 80059298 00054198  4E 80 00 20 */	blr 

# GetAnmResult_SR__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
.global GetAnmResult_SR__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
GetAnmResult_SR__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf:
/* 8005929C 0005419C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800592A0 000541A0  7C 08 02 A6 */	mflr r0
/* 800592A4 000541A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800592A8 000541A8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800592AC 000541AC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 800592B0 000541B0  FF E0 08 90 */	fmr f31, f1
/* 800592B4 000541B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800592B8 000541B8  7C BF 2B 78 */	mr r31, r5
/* 800592BC 000541BC  38 A5 00 08 */	addi r5, r5, 8
/* 800592C0 000541C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800592C4 000541C4  7C 9E 23 78 */	mr r30, r4
/* 800592C8 000541C8  7F E4 FB 78 */	mr r4, r31
/* 800592CC 000541CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800592D0 000541D0  7C 7D 1B 78 */	mr r29, r3
/* 800592D4 000541D4  38 63 00 04 */	addi r3, r3, 4
/* 800592D8 000541D8  4B FF E9 ED */	bl GetAnmScale__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 800592DC 000541DC  FC 20 F8 90 */	fmr f1, f31
/* 800592E0 000541E0  7C 67 1B 78 */	mr r7, r3
/* 800592E4 000541E4  7F C5 F3 78 */	mr r5, r30
/* 800592E8 000541E8  7F E6 FB 78 */	mr r6, r31
/* 800592EC 000541EC  38 7D 00 1C */	addi r3, r29, 0x1c
/* 800592F0 000541F0  38 9D 00 10 */	addi r4, r29, 0x10
/* 800592F4 000541F4  4B FF F0 E5 */	bl GetAnmRotation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3RCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 800592F8 000541F8  80 1D 00 00 */	lwz r0, 0(r29)
/* 800592FC 000541FC  C0 02 88 28 */	lfs f0, lbl_804C0248-_SDA2_BASE_(r2)
/* 80059300 00054200  64 00 80 00 */	oris r0, r0, 0x8000
/* 80059304 00054204  90 1D 00 00 */	stw r0, 0(r29)
/* 80059308 00054208  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8005930C 0005420C  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80059310 00054210  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80059314 00054214  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80059318 00054218  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8005931C 0005421C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80059320 00054220  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80059324 00054224  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80059328 00054228  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8005932C 0005422C  7C 08 03 A6 */	mtlr r0
/* 80059330 00054230  38 21 00 30 */	addi r1, r1, 0x30
/* 80059334 00054234  4E 80 00 20 */	blr 

# GetAnmResult_ST__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
.global GetAnmResult_ST__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
GetAnmResult_ST__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf:
/* 80059338 00054238  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8005933C 0005423C  7C 08 02 A6 */	mflr r0
/* 80059340 00054240  90 01 00 44 */	stw r0, 0x44(r1)
/* 80059344 00054244  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80059348 00054248  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8005934C 0005424C  FF E0 08 90 */	fmr f31, f1
/* 80059350 00054250  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80059354 00054254  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80059358 00054258  7C BE 2B 78 */	mr r30, r5
/* 8005935C 0005425C  7F C4 F3 78 */	mr r4, r30
/* 80059360 00054260  38 A5 00 08 */	addi r5, r5, 8
/* 80059364 00054264  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80059368 00054268  7C 7D 1B 78 */	mr r29, r3
/* 8005936C 0005426C  38 63 00 04 */	addi r3, r3, 4
/* 80059370 00054270  4B FF E9 55 */	bl GetAnmScale__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 80059374 00054274  7C 7F 1B 78 */	mr r31, r3
/* 80059378 00054278  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8005937C 0005427C  48 08 E2 7D */	bl PSMTXIdentity
/* 80059380 00054280  FC 20 F8 90 */	fmr f1, f31
/* 80059384 00054284  7F C4 F3 78 */	mr r4, r30
/* 80059388 00054288  7F E5 FB 78 */	mr r5, r31
/* 8005938C 0005428C  38 61 00 08 */	addi r3, r1, 8
/* 80059390 00054290  4B FF FA A5 */	bl GetAnmTranslation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 80059394 00054294  C0 01 00 08 */	lfs f0, 8(r1)
/* 80059398 00054298  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 8005939C 0005429C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800593A0 000542A0  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 800593A4 000542A4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800593A8 000542A8  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 800593AC 000542AC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800593B0 000542B0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800593B4 000542B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800593B8 000542B8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800593BC 000542BC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800593C0 000542C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800593C4 000542C4  7C 08 03 A6 */	mtlr r0
/* 800593C8 000542C8  38 21 00 40 */	addi r1, r1, 0x40
/* 800593CC 000542CC  4E 80 00 20 */	blr 

# GetAnmResult_SRT__Q34nw4r3g3d27@unnamed@g3d_resanmchr_cpp@FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
.global GetAnmResult_SRT__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf
GetAnmResult_SRT__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r3g3d12ChrAnmResultRCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataf:
/* 800593D0 000542D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800593D4 000542D4  7C 08 02 A6 */	mflr r0
/* 800593D8 000542D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800593DC 000542DC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800593E0 000542E0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800593E4 000542E4  FF E0 08 90 */	fmr f31, f1
/* 800593E8 000542E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800593EC 000542EC  7C BF 2B 78 */	mr r31, r5
/* 800593F0 000542F0  38 A5 00 08 */	addi r5, r5, 8
/* 800593F4 000542F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800593F8 000542F8  7C 9E 23 78 */	mr r30, r4
/* 800593FC 000542FC  7F E4 FB 78 */	mr r4, r31
/* 80059400 00054300  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80059404 00054304  7C 7D 1B 78 */	mr r29, r3
/* 80059408 00054308  38 63 00 04 */	addi r3, r3, 4
/* 8005940C 0005430C  4B FF E8 B9 */	bl GetAnmScale__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 80059410 00054310  FC 20 F8 90 */	fmr f1, f31
/* 80059414 00054314  7C 67 1B 78 */	mr r7, r3
/* 80059418 00054318  7F C5 F3 78 */	mr r5, r30
/* 8005941C 0005431C  7F E6 FB 78 */	mr r6, r31
/* 80059420 00054320  38 7D 00 1C */	addi r3, r29, 0x1c
/* 80059424 00054324  38 9D 00 10 */	addi r4, r29, 0x10
/* 80059428 00054328  4B FF EF B1 */	bl GetAnmRotation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math5MTX34PQ34nw4r4math4VEC3RCQ34nw4r3g3d17ResAnmChrInfoDataPCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 8005942C 0005432C  FC 20 F8 90 */	fmr f1, f31
/* 80059430 00054330  7C 65 1B 78 */	mr r5, r3
/* 80059434 00054334  7F E4 FB 78 */	mr r4, r31
/* 80059438 00054338  38 61 00 08 */	addi r3, r1, 8
/* 8005943C 0005433C  4B FF F9 F9 */	bl GetAnmTranslation__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2FPQ34nw4r4math4VEC3PCQ34nw4r3g3d17ResAnmChrNodeDataPCQ44nw4r3g3d17ResAnmChrNodeData7AnmDataf
/* 80059440 00054340  80 1D 00 00 */	lwz r0, 0(r29)
/* 80059444 00054344  64 00 80 00 */	oris r0, r0, 0x8000
/* 80059448 00054348  90 1D 00 00 */	stw r0, 0(r29)
/* 8005944C 0005434C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80059450 00054350  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80059454 00054354  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80059458 00054358  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 8005945C 0005435C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80059460 00054360  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80059464 00054364  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80059468 00054368  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8005946C 0005436C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80059470 00054370  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80059474 00054374  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80059478 00054378  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8005947C 0005437C  7C 08 03 A6 */	mtlr r0
/* 80059480 00054380  38 21 00 40 */	addi r1, r1, 0x40
/* 80059484 00054384  4E 80 00 20 */	blr 

.global GetAnmResult__Q34nw4r3g3d9ResAnmChrCFPQ34nw4r3g3d12ChrAnmResultUlf
GetAnmResult__Q34nw4r3g3d9ResAnmChrCFPQ34nw4r3g3d12ChrAnmResultUlf:
/* 80059488 00054388  80 C3 00 00 */	lwz r6, 0(r3)
/* 8005948C 0005438C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80059490 00054390  2C 00 00 00 */	cmpwi r0, 0
/* 80059494 00054394  41 82 00 0C */	beq lbl_800594A0
/* 80059498 00054398  7C 06 02 14 */	add r0, r6, r0
/* 8005949C 0005439C  48 00 00 08 */	b lbl_800594A4
lbl_800594A0:
/* 800594A0 000543A0  38 00 00 00 */	li r0, 0
lbl_800594A4:
/* 800594A4 000543A4  2C 00 00 00 */	cmpwi r0, 0
/* 800594A8 000543A8  41 82 00 2C */	beq lbl_800594D4
/* 800594AC 000543AC  38 A5 00 01 */	addi r5, r5, 1
/* 800594B0 000543B0  54 A5 20 36 */	slwi r5, r5, 4
/* 800594B4 000543B4  7C A0 2A 14 */	add r5, r0, r5
/* 800594B8 000543B8  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 800594BC 000543BC  2C 05 00 00 */	cmpwi r5, 0
/* 800594C0 000543C0  41 82 00 0C */	beq lbl_800594CC
/* 800594C4 000543C4  7C A0 2A 14 */	add r5, r0, r5
/* 800594C8 000543C8  48 00 00 10 */	b lbl_800594D8
lbl_800594CC:
/* 800594CC 000543CC  38 A0 00 00 */	li r5, 0
/* 800594D0 000543D0  48 00 00 08 */	b lbl_800594D8
lbl_800594D4:
/* 800594D4 000543D4  38 A0 00 00 */	li r5, 0
lbl_800594D8:
/* 800594D8 000543D8  81 05 00 04 */	lwz r8, 4(r5)
/* 800594DC 000543DC  3C C0 80 38 */	lis r6, gGetAnmResultTable__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2@ha
/* 800594E0 000543E0  80 E3 00 00 */	lwz r7, 0(r3)
/* 800594E4 000543E4  38 C6 80 A8 */	addi r6, r6, gGetAnmResultTable__Q34nw4r3g3d27$$2unnamed$$2g3d_resanmchr_cpp$$2@l
/* 800594E8 000543E8  55 00 66 FA */	rlwinm r0, r8, 0xc, 0x1b, 0x1d
/* 800594EC 000543EC  55 03 04 FE */	clrlwi r3, r8, 0x13
/* 800594F0 000543F0  7D 86 00 2E */	lwzx r12, r6, r0
/* 800594F4 000543F4  90 64 00 00 */	stw r3, 0(r4)
/* 800594F8 000543F8  7C 83 23 78 */	mr r3, r4
/* 800594FC 000543FC  38 87 00 1C */	addi r4, r7, 0x1c
/* 80059500 00054400  7D 89 03 A6 */	mtctr r12
/* 80059504 00054404  4E 80 04 20 */	bctr 

.global func_80059508
func_80059508:
/* 80059508 00054408  80 03 00 00 */	lwz r0, 0(r3)
/* 8005950C 0005440C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80059510 00054410  41 82 00 18 */	beq lbl_80059528
/* 80059514 00054414  C0 02 88 2C */	lfs f0, lbl_804C024C-_SDA2_BASE_(r2)
/* 80059518 00054418  D0 04 00 00 */	stfs f0, 0(r4)
/* 8005951C 0005441C  D0 04 00 04 */	stfs f0, 4(r4)
/* 80059520 00054420  D0 04 00 08 */	stfs f0, 8(r4)
/* 80059524 00054424  4E 80 00 20 */	blr 
lbl_80059528:
/* 80059528 00054428  C0 43 00 04 */	lfs f2, 4(r3)
/* 8005952C 0005442C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80059530 00054430  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80059534 00054434  D0 44 00 00 */	stfs f2, 0(r4)
/* 80059538 00054438  D0 24 00 04 */	stfs f1, 4(r4)
/* 8005953C 0005443C  D0 04 00 08 */	stfs f0, 8(r4)
/* 80059540 00054440  4E 80 00 20 */	blr 

.global func_80059544
func_80059544:
/* 80059544 00054444  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80059548 00054448  7C 08 02 A6 */	mflr r0
/* 8005954C 0005444C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80059550 00054450  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80059554 00054454  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80059558 00054458  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8005955C 0005445C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 80059560 00054460  80 A3 00 00 */	lwz r5, 0(r3)
/* 80059564 00054464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80059568 00054468  7C 9F 23 78 */	mr r31, r4
/* 8005956C 0005446C  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 80059570 00054470  93 C1 00 08 */	stw r30, 8(r1)
/* 80059574 00054474  7C 7E 1B 78 */	mr r30, r3
/* 80059578 00054478  41 82 00 1C */	beq lbl_80059594
/* 8005957C 0005447C  C0 02 88 28 */	lfs f0, lbl_804C0248-_SDA2_BASE_(r2)
/* 80059580 00054480  38 60 00 01 */	li r3, 1
/* 80059584 00054484  D0 04 00 00 */	stfs f0, 0(r4)
/* 80059588 00054488  D0 04 00 04 */	stfs f0, 4(r4)
/* 8005958C 0005448C  D0 04 00 08 */	stfs f0, 8(r4)
/* 80059590 00054490  48 00 01 20 */	b lbl_800596B0
lbl_80059594:
/* 80059594 00054494  54 A0 00 01 */	rlwinm. r0, r5, 0, 0, 0
/* 80059598 00054498  41 82 00 24 */	beq lbl_800595BC
/* 8005959C 0005449C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 800595A0 000544A0  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 800595A4 000544A4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 800595A8 000544A8  38 60 00 01 */	li r3, 1
/* 800595AC 000544AC  D0 44 00 00 */	stfs f2, 0(r4)
/* 800595B0 000544B0  D0 24 00 04 */	stfs f1, 4(r4)
/* 800595B4 000544B4  D0 04 00 08 */	stfs f0, 8(r4)
/* 800595B8 000544B8  48 00 00 F8 */	b lbl_800596B0
lbl_800595BC:
/* 800595BC 000544BC  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 800595C0 000544C0  C0 02 88 2C */	lfs f0, lbl_804C024C-_SDA2_BASE_(r2)
/* 800595C4 000544C4  C3 E2 88 28 */	lfs f31, lbl_804C0248-_SDA2_BASE_(r2)
/* 800595C8 000544C8  EF C1 00 7C */	fnmsubs f30, f1, f1, f0
/* 800595CC 000544CC  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 800595D0 000544D0  4C 40 13 82 */	cror 2, 0, 2
/* 800595D4 000544D4  40 82 00 08 */	bne lbl_800595DC
/* 800595D8 000544D8  48 00 00 10 */	b lbl_800595E8
lbl_800595DC:
/* 800595DC 000544DC  FC 20 F0 90 */	fmr f1, f30
/* 800595E0 000544E0  4B FD 62 95 */	bl FrSqrt__Q24nw4r4mathFf
/* 800595E4 000544E4  EF FE 00 72 */	fmuls f31, f30, f1
lbl_800595E8:
/* 800595E8 000544E8  C0 02 88 28 */	lfs f0, lbl_804C0248-_SDA2_BASE_(r2)
/* 800595EC 000544EC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 800595F0 000544F0  40 82 00 6C */	bne lbl_8005965C
/* 800595F4 000544F4  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 800595F8 000544F8  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 800595FC 000544FC  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80059600 00054500  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80059604 00054504  EC 43 10 2A */	fadds f2, f3, f2
/* 80059608 00054508  EC 21 00 2A */	fadds f1, f1, f0
/* 8005960C 0005450C  4B FD 65 29 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 80059610 00054510  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80059614 00054514  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80059618 00054518  C0 82 88 48 */	lfs f4, lbl_804C0268-_SDA2_BASE_(r2)
/* 8005961C 0005451C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80059620 00054520  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 80059624 00054524  EC A4 00 72 */	fmuls f5, f4, f1
/* 80059628 00054528  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8005962C 0005452C  C0 82 88 4C */	lfs f4, lbl_804C026C-_SDA2_BASE_(r2)
/* 80059630 00054530  EC 23 00 2A */	fadds f1, f3, f0
/* 80059634 00054534  C0 62 88 50 */	lfs f3, lbl_804C0270-_SDA2_BASE_(r2)
/* 80059638 00054538  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8005963C 0005453C  D0 BF 00 00 */	stfs f5, 0(r31)
/* 80059640 00054540  FC 00 20 EE */	fsel f0, f0, f3, f4
/* 80059644 00054544  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80059648 00054548  4B FD 64 ED */	bl Atan2FIdx__Q24nw4r4mathFff
/* 8005964C 0005454C  C0 02 88 48 */	lfs f0, lbl_804C0268-_SDA2_BASE_(r2)
/* 80059650 00054550  EC 00 00 72 */	fmuls f0, f0, f1
/* 80059654 00054554  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80059658 00054558  48 00 00 54 */	b lbl_800596AC
lbl_8005965C:
/* 8005965C 0005455C  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80059660 00054560  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80059664 00054564  4B FD 64 D1 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 80059668 00054568  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8005966C 0005456C  FC 40 F8 90 */	fmr f2, f31
/* 80059670 00054570  C0 62 88 48 */	lfs f3, lbl_804C0268-_SDA2_BASE_(r2)
/* 80059674 00054574  FC 00 00 50 */	fneg f0, f0
/* 80059678 00054578  EC 63 00 72 */	fmuls f3, f3, f1
/* 8005967C 0005457C  FC 20 00 90 */	fmr f1, f0
/* 80059680 00054580  D0 7F 00 00 */	stfs f3, 0(r31)
/* 80059684 00054584  4B FD 64 B1 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 80059688 00054588  C0 02 88 48 */	lfs f0, lbl_804C0268-_SDA2_BASE_(r2)
/* 8005968C 0005458C  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80059690 00054590  EC 00 00 72 */	fmuls f0, f0, f1
/* 80059694 00054594  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80059698 00054598  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8005969C 0005459C  4B FD 64 99 */	bl Atan2FIdx__Q24nw4r4mathFff
/* 800596A0 000545A0  C0 02 88 48 */	lfs f0, lbl_804C0268-_SDA2_BASE_(r2)
/* 800596A4 000545A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 800596A8 000545A8  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_800596AC:
/* 800596AC 000545AC  38 60 00 00 */	li r3, 0
lbl_800596B0:
/* 800596B0 000545B0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 800596B4 000545B4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800596B8 000545B8  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 800596BC 000545BC  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 800596C0 000545C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800596C4 000545C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800596C8 000545C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800596CC 000545CC  7C 08 03 A6 */	mtlr r0
/* 800596D0 000545D0  38 21 00 30 */	addi r1, r1, 0x30
/* 800596D4 000545D4  4E 80 00 20 */	blr 

.global func_800596D8
func_800596D8:
/* 800596D8 000545D8  80 03 00 00 */	lwz r0, 0(r3)
/* 800596DC 000545DC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800596E0 000545E0  41 82 00 18 */	beq lbl_800596F8
/* 800596E4 000545E4  C0 02 88 28 */	lfs f0, lbl_804C0248-_SDA2_BASE_(r2)
/* 800596E8 000545E8  D0 04 00 00 */	stfs f0, 0(r4)
/* 800596EC 000545EC  D0 04 00 04 */	stfs f0, 4(r4)
/* 800596F0 000545F0  D0 04 00 08 */	stfs f0, 8(r4)
/* 800596F4 000545F4  4E 80 00 20 */	blr 
lbl_800596F8:
/* 800596F8 000545F8  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 800596FC 000545FC  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 80059700 00054600  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80059704 00054604  D0 44 00 00 */	stfs f2, 0(r4)
/* 80059708 00054608  D0 24 00 04 */	stfs f1, 4(r4)
/* 8005970C 0005460C  D0 04 00 08 */	stfs f0, 8(r4)
/* 80059710 00054610  4E 80 00 20 */	blr 

.global GetRotTrans__Q34nw4r3g3d12ChrAnmResultCFPQ34nw4r4math5MTX34
GetRotTrans__Q34nw4r3g3d12ChrAnmResultCFPQ34nw4r4math5MTX34:
/* 80059714 00054614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80059718 00054618  7C 08 02 A6 */	mflr r0
/* 8005971C 0005461C  80 A3 00 00 */	lwz r5, 0(r3)
/* 80059720 00054620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80059724 00054624  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 80059728 00054628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005972C 0005462C  7C 9F 23 78 */	mr r31, r4
/* 80059730 00054630  93 C1 00 08 */	stw r30, 8(r1)
/* 80059734 00054634  7C 7E 1B 78 */	mr r30, r3
/* 80059738 00054638  41 82 00 3C */	beq lbl_80059774
/* 8005973C 0005463C  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 80059740 00054640  41 82 00 10 */	beq lbl_80059750
/* 80059744 00054644  7F E3 FB 78 */	mr r3, r31
/* 80059748 00054648  48 08 DE B1 */	bl PSMTXIdentity
/* 8005974C 0005464C  48 00 00 54 */	b lbl_800597A0
lbl_80059750:
/* 80059750 00054650  7F E3 FB 78 */	mr r3, r31
/* 80059754 00054654  48 08 DE A5 */	bl PSMTXIdentity
/* 80059758 00054658  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8005975C 0005465C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80059760 00054660  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80059764 00054664  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 80059768 00054668  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 8005976C 0005466C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80059770 00054670  48 00 00 30 */	b lbl_800597A0
lbl_80059774:
/* 80059774 00054674  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 80059778 00054678  41 82 00 20 */	beq lbl_80059798
/* 8005977C 0005467C  38 63 00 1C */	addi r3, r3, 0x1c
/* 80059780 00054680  48 08 DE A5 */	bl PSMTXCopy
/* 80059784 00054684  C0 02 88 28 */	lfs f0, lbl_804C0248-_SDA2_BASE_(r2)
/* 80059788 00054688  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8005978C 0005468C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80059790 00054690  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80059794 00054694  48 00 00 0C */	b lbl_800597A0
lbl_80059798:
/* 80059798 00054698  38 63 00 1C */	addi r3, r3, 0x1c
/* 8005979C 0005469C  48 08 DE 89 */	bl PSMTXCopy
lbl_800597A0:
/* 800597A0 000546A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800597A4 000546A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800597A8 000546A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800597AC 000546AC  7C 08 03 A6 */	mtlr r0
/* 800597B0 000546B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800597B4 000546B4  4E 80 00 20 */	blr 

.global func_800597B8
func_800597B8:
/* 800597B8 000546B8  C0 22 88 2C */	lfs f1, lbl_804C024C-_SDA2_BASE_(r2)
/* 800597BC 000546BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 800597C0 000546C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800597C4 000546C4  40 82 00 3C */	bne lbl_80059800
/* 800597C8 000546C8  C0 04 00 04 */	lfs f0, 4(r4)
/* 800597CC 000546CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800597D0 000546D0  40 82 00 30 */	bne lbl_80059800
/* 800597D4 000546D4  C0 04 00 08 */	lfs f0, 8(r4)
/* 800597D8 000546D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800597DC 000546DC  40 82 00 24 */	bne lbl_80059800
/* 800597E0 000546E0  80 03 00 00 */	lwz r0, 0(r3)
/* 800597E4 000546E4  60 05 00 18 */	ori r5, r0, 0x18
/* 800597E8 000546E8  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 800597EC 000546EC  90 A3 00 00 */	stw r5, 0(r3)
/* 800597F0 000546F0  41 82 00 44 */	beq lbl_80059834
/* 800597F4 000546F4  60 A0 00 02 */	ori r0, r5, 2
/* 800597F8 000546F8  90 03 00 00 */	stw r0, 0(r3)
/* 800597FC 000546FC  48 00 00 38 */	b lbl_80059834
lbl_80059800:
/* 80059800 00054700  80 A3 00 00 */	lwz r5, 0(r3)
/* 80059804 00054704  38 00 FF E5 */	li r0, -27
/* 80059808 00054708  C0 04 00 00 */	lfs f0, 0(r4)
/* 8005980C 0005470C  C0 24 00 04 */	lfs f1, 4(r4)
/* 80059810 00054710  7C A0 00 38 */	and r0, r5, r0
/* 80059814 00054714  90 03 00 00 */	stw r0, 0(r3)
/* 80059818 00054718  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8005981C 0005471C  40 82 00 18 */	bne lbl_80059834
/* 80059820 00054720  C0 04 00 08 */	lfs f0, 8(r4)
/* 80059824 00054724  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80059828 00054728  40 82 00 0C */	bne lbl_80059834
/* 8005982C 0005472C  60 00 00 10 */	ori r0, r0, 0x10
/* 80059830 00054730  90 03 00 00 */	stw r0, 0(r3)
lbl_80059834:
/* 80059834 00054734  C0 44 00 00 */	lfs f2, 0(r4)
/* 80059838 00054738  C0 24 00 04 */	lfs f1, 4(r4)
/* 8005983C 0005473C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80059840 00054740  D0 43 00 04 */	stfs f2, 4(r3)
/* 80059844 00054744  D0 23 00 08 */	stfs f1, 8(r3)
/* 80059848 00054748  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8005984C 0005474C  4E 80 00 20 */	blr 

.global SetRotTrans__Q34nw4r3g3d12ChrAnmResultFPCQ34nw4r4math5MTX34
SetRotTrans__Q34nw4r3g3d12ChrAnmResultFPCQ34nw4r4math5MTX34:
/* 80059850 00054750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80059854 00054754  7C 08 02 A6 */	mflr r0
/* 80059858 00054758  C0 42 88 2C */	lfs f2, lbl_804C024C-_SDA2_BASE_(r2)
/* 8005985C 0005475C  38 A0 00 00 */	li r5, 0
/* 80059860 00054760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80059864 00054764  38 00 00 00 */	li r0, 0
/* 80059868 00054768  C0 04 00 00 */	lfs f0, 0(r4)
/* 8005986C 0005476C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80059870 00054770  7C 7F 1B 78 */	mr r31, r3
/* 80059874 00054774  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80059878 00054778  40 82 00 60 */	bne lbl_800598D8
/* 8005987C 0005477C  C0 22 88 28 */	lfs f1, lbl_804C0248-_SDA2_BASE_(r2)
/* 80059880 00054780  C0 04 00 04 */	lfs f0, 4(r4)
/* 80059884 00054784  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80059888 00054788  40 82 00 50 */	bne lbl_800598D8
/* 8005988C 0005478C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80059890 00054790  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80059894 00054794  40 82 00 44 */	bne lbl_800598D8
/* 80059898 00054798  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8005989C 0005479C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800598A0 000547A0  40 82 00 38 */	bne lbl_800598D8
/* 800598A4 000547A4  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 800598A8 000547A8  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 800598AC 000547AC  40 82 00 2C */	bne lbl_800598D8
/* 800598B0 000547B0  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 800598B4 000547B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800598B8 000547B8  40 82 00 20 */	bne lbl_800598D8
/* 800598BC 000547BC  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 800598C0 000547C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800598C4 000547C4  40 82 00 14 */	bne lbl_800598D8
/* 800598C8 000547C8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 800598CC 000547CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800598D0 000547D0  40 82 00 08 */	bne lbl_800598D8
/* 800598D4 000547D4  38 00 00 01 */	li r0, 1
lbl_800598D8:
/* 800598D8 000547D8  2C 00 00 00 */	cmpwi r0, 0
/* 800598DC 000547DC  41 82 00 18 */	beq lbl_800598F4
/* 800598E0 000547E0  C0 22 88 2C */	lfs f1, lbl_804C024C-_SDA2_BASE_(r2)
/* 800598E4 000547E4  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 800598E8 000547E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800598EC 000547EC  40 82 00 08 */	bne lbl_800598F4
/* 800598F0 000547F0  38 A0 00 01 */	li r5, 1
lbl_800598F4:
/* 800598F4 000547F4  C0 22 88 28 */	lfs f1, lbl_804C0248-_SDA2_BASE_(r2)
/* 800598F8 000547F8  38 C0 00 00 */	li r6, 0
/* 800598FC 000547FC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80059900 00054800  38 00 00 00 */	li r0, 0
/* 80059904 00054804  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80059908 00054808  40 82 00 14 */	bne lbl_8005991C
/* 8005990C 0005480C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80059910 00054810  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80059914 00054814  40 82 00 08 */	bne lbl_8005991C
/* 80059918 00054818  38 00 00 01 */	li r0, 1
lbl_8005991C:
/* 8005991C 0005481C  2C 00 00 00 */	cmpwi r0, 0
/* 80059920 00054820  41 82 00 18 */	beq lbl_80059938
/* 80059924 00054824  C0 22 88 28 */	lfs f1, lbl_804C0248-_SDA2_BASE_(r2)
/* 80059928 00054828  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 8005992C 0005482C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80059930 00054830  40 82 00 08 */	bne lbl_80059938
/* 80059934 00054834  38 C0 00 01 */	li r6, 1
lbl_80059938:
/* 80059938 00054838  2C 05 00 00 */	cmpwi r5, 0
/* 8005993C 0005483C  41 82 00 44 */	beq lbl_80059980
/* 80059940 00054840  2C 06 00 00 */	cmpwi r6, 0
/* 80059944 00054844  41 82 00 24 */	beq lbl_80059968
/* 80059948 00054848  80 03 00 00 */	lwz r0, 0(r3)
/* 8005994C 0005484C  60 05 00 64 */	ori r5, r0, 0x64
/* 80059950 00054850  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 80059954 00054854  90 A3 00 00 */	stw r5, 0(r3)
/* 80059958 00054858  41 82 00 58 */	beq lbl_800599B0
/* 8005995C 0005485C  60 A0 00 02 */	ori r0, r5, 2
/* 80059960 00054860  90 03 00 00 */	stw r0, 0(r3)
/* 80059964 00054864  48 00 00 4C */	b lbl_800599B0
lbl_80059968:
/* 80059968 00054868  80 A3 00 00 */	lwz r5, 0(r3)
/* 8005996C 0005486C  38 00 FF B9 */	li r0, -71
/* 80059970 00054870  60 A5 00 20 */	ori r5, r5, 0x20
/* 80059974 00054874  7C A0 00 38 */	and r0, r5, r0
/* 80059978 00054878  90 03 00 00 */	stw r0, 0(r3)
/* 8005997C 0005487C  48 00 00 34 */	b lbl_800599B0
lbl_80059980:
/* 80059980 00054880  2C 06 00 00 */	cmpwi r6, 0
/* 80059984 00054884  41 82 00 1C */	beq lbl_800599A0
/* 80059988 00054888  80 A3 00 00 */	lwz r5, 0(r3)
/* 8005998C 0005488C  38 00 FF D9 */	li r0, -39
/* 80059990 00054890  60 A5 00 40 */	ori r5, r5, 0x40
/* 80059994 00054894  7C A0 00 38 */	and r0, r5, r0
/* 80059998 00054898  90 03 00 00 */	stw r0, 0(r3)
/* 8005999C 0005489C  48 00 00 14 */	b lbl_800599B0
lbl_800599A0:
/* 800599A0 000548A0  80 A3 00 00 */	lwz r5, 0(r3)
/* 800599A4 000548A4  38 00 FF 99 */	li r0, -103
/* 800599A8 000548A8  7C A0 00 38 */	and r0, r5, r0
/* 800599AC 000548AC  90 03 00 00 */	stw r0, 0(r3)
lbl_800599B0:
/* 800599B0 000548B0  7C 83 23 78 */	mr r3, r4
/* 800599B4 000548B4  38 9F 00 1C */	addi r4, r31, 0x1c
/* 800599B8 000548B8  48 08 DC 6D */	bl PSMTXCopy
/* 800599BC 000548BC  80 1F 00 00 */	lwz r0, 0(r31)
/* 800599C0 000548C0  54 00 00 7E */	clrlwi r0, r0, 1
/* 800599C4 000548C4  90 1F 00 00 */	stw r0, 0(r31)
/* 800599C8 000548C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800599CC 000548CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800599D0 000548D0  7C 08 03 A6 */	mtlr r0
/* 800599D4 000548D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800599D8 000548D8  4E 80 00 20 */	blr 
