.include "macros.inc"

.section .bss, "wa"
.balign 0x8
DisplayListFifo:
	.skip 0x80
__savedGXdata:
	.skip 0x600
OldCPUFifo:
	.skip 0x80

.section .text, "ax"
.global GXBeginDisplayList
GXBeginDisplayList:
/* 800E2F78 000DDE78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E2F7C 000DDE7C  7C 08 02 A6 */	mflr r0
/* 800E2F80 000DDE80  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E2F84 000DDE84  39 61 00 20 */	addi r11, r1, 0x20
/* 800E2F88 000DDE88  4B FC ED BD */	bl _savegpr_27
/* 800E2F8C 000DDE8C  83 C2 96 48 */	lwz r30, __GXData-_SDA2_BASE_(r2)
/* 800E2F90 000DDE90  3F E0 80 41 */	lis r31, DisplayListFifo@ha
/* 800E2F94 000DDE94  3B FF 37 A0 */	addi r31, r31, DisplayListFifo@l
/* 800E2F98 000DDE98  7C 7B 1B 78 */	mr r27, r3
/* 800E2F9C 000DDE9C  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 800E2FA0 000DDEA0  7C 9C 23 78 */	mr r28, r4
/* 800E2FA4 000DDEA4  3B BF 00 00 */	addi r29, r31, 0
/* 800E2FA8 000DDEA8  2C 00 00 00 */	cmpwi r0, 0
/* 800E2FAC 000DDEAC  41 82 00 08 */	beq lbl_800E2FB4
/* 800E2FB0 000DDEB0  4B FF B8 AD */	bl __GXSetDirtyState
lbl_800E2FB4:
/* 800E2FB4 000DDEB4  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 800E2FB8 000DDEB8  2C 00 00 00 */	cmpwi r0, 0
/* 800E2FBC 000DDEBC  41 82 00 14 */	beq lbl_800E2FD0
/* 800E2FC0 000DDEC0  7F C4 F3 78 */	mr r4, r30
/* 800E2FC4 000DDEC4  38 7F 00 80 */	addi r3, r31, 0x80
/* 800E2FC8 000DDEC8  38 A0 06 00 */	li r5, 0x600
/* 800E2FCC 000DDECC  4B F2 10 35 */	bl memcpy
lbl_800E2FD0:
/* 800E2FD0 000DDED0  7C 7B E2 14 */	add r3, r27, r28
/* 800E2FD4 000DDED4  38 80 00 00 */	li r4, 0
/* 800E2FD8 000DDED8  38 A3 FF FC */	addi r5, r3, -4
/* 800E2FDC 000DDEDC  93 7D 00 00 */	stw r27, 0(r29)
/* 800E2FE0 000DDEE0  38 00 00 01 */	li r0, 1
/* 800E2FE4 000DDEE4  38 7F 06 80 */	addi r3, r31, 0x680
/* 800E2FE8 000DDEE8  90 BD 00 04 */	stw r5, 4(r29)
/* 800E2FEC 000DDEEC  93 9D 00 08 */	stw r28, 8(r29)
/* 800E2FF0 000DDEF0  90 9D 00 1C */	stw r4, 0x1c(r29)
/* 800E2FF4 000DDEF4  93 7D 00 14 */	stw r27, 0x14(r29)
/* 800E2FF8 000DDEF8  93 7D 00 18 */	stw r27, 0x18(r29)
/* 800E2FFC 000DDEFC  98 1E 05 F8 */	stb r0, 0x5f8(r30)
/* 800E3000 000DDF00  4B FF 98 F1 */	bl GXGetCPUFifo
/* 800E3004 000DDF04  38 7F 00 00 */	addi r3, r31, 0
/* 800E3008 000DDF08  4B FF 93 25 */	bl GXSetCPUFifo
/* 800E300C 000DDF0C  4B FF B0 89 */	bl GXResetWriteGatherPipe
/* 800E3010 000DDF10  39 61 00 20 */	addi r11, r1, 0x20
/* 800E3014 000DDF14  4B FC ED 7D */	bl _restgpr_27
/* 800E3018 000DDF18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E301C 000DDF1C  7C 08 03 A6 */	mtlr r0
/* 800E3020 000DDF20  38 21 00 20 */	addi r1, r1, 0x20
/* 800E3024 000DDF24  4E 80 00 20 */	blr 

.global GXEndDisplayList
GXEndDisplayList:
/* 800E3028 000DDF28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E302C 000DDF2C  7C 08 02 A6 */	mflr r0
/* 800E3030 000DDF30  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E3034 000DDF34  39 61 00 20 */	addi r11, r1, 0x20
/* 800E3038 000DDF38  4B FC ED 09 */	bl _savegpr_26
/* 800E303C 000DDF3C  3F C0 80 41 */	lis r30, DisplayListFifo@ha
/* 800E3040 000DDF40  3B DE 37 A0 */	addi r30, r30, DisplayListFifo@l
/* 800E3044 000DDF44  38 7E 00 00 */	addi r3, r30, 0
/* 800E3048 000DDF48  4B FF 98 A9 */	bl GXGetCPUFifo
/* 800E304C 000DDF4C  38 7E 00 00 */	addi r3, r30, 0
/* 800E3050 000DDF50  4B FF 99 E1 */	bl GXGetFifoWrap
/* 800E3054 000DDF54  7C 7F 1B 78 */	mr r31, r3
/* 800E3058 000DDF58  38 7E 06 80 */	addi r3, r30, 0x680
/* 800E305C 000DDF5C  4B FF 92 D1 */	bl GXSetCPUFifo
/* 800E3060 000DDF60  83 A2 96 48 */	lwz r29, __GXData-_SDA2_BASE_(r2)
/* 800E3064 000DDF64  88 1D 05 F9 */	lbz r0, 0x5f9(r29)
/* 800E3068 000DDF68  2C 00 00 00 */	cmpwi r0, 0
/* 800E306C 000DDF6C  41 82 00 30 */	beq lbl_800E309C
/* 800E3070 000DDF70  48 00 E8 51 */	bl OSDisableInterrupts
/* 800E3074 000DDF74  83 82 96 48 */	lwz r28, __GXData-_SDA2_BASE_(r2)
/* 800E3078 000DDF78  7C 7B 1B 78 */	mr r27, r3
/* 800E307C 000DDF7C  38 9E 00 80 */	addi r4, r30, 0x80
/* 800E3080 000DDF80  38 A0 06 00 */	li r5, 0x600
/* 800E3084 000DDF84  83 5C 00 08 */	lwz r26, 8(r28)
/* 800E3088 000DDF88  7F 83 E3 78 */	mr r3, r28
/* 800E308C 000DDF8C  4B F2 0F 75 */	bl memcpy
/* 800E3090 000DDF90  93 5C 00 08 */	stw r26, 8(r28)
/* 800E3094 000DDF94  7F 63 DB 78 */	mr r3, r27
/* 800E3098 000DDF98  48 00 E8 51 */	bl OSRestoreInterrupts
lbl_800E309C:
/* 800E309C 000DDF9C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800E30A0 000DDFA0  38 00 00 00 */	li r0, 0
/* 800E30A4 000DDFA4  98 1D 05 F8 */	stb r0, 0x5f8(r29)
/* 800E30A8 000DDFA8  40 82 00 10 */	bne lbl_800E30B8
/* 800E30AC 000DDFAC  38 7E 00 00 */	addi r3, r30, 0
/* 800E30B0 000DDFB0  4B FF 99 79 */	bl GXGetFifoCount
/* 800E30B4 000DDFB4  48 00 00 08 */	b lbl_800E30BC
lbl_800E30B8:
/* 800E30B8 000DDFB8  38 60 00 00 */	li r3, 0
lbl_800E30BC:
/* 800E30BC 000DDFBC  39 61 00 20 */	addi r11, r1, 0x20
/* 800E30C0 000DDFC0  4B FC EC CD */	bl _restgpr_26
/* 800E30C4 000DDFC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E30C8 000DDFC8  7C 08 03 A6 */	mtlr r0
/* 800E30CC 000DDFCC  38 21 00 20 */	addi r1, r1, 0x20
/* 800E30D0 000DDFD0  4E 80 00 20 */	blr 

.global GXCallDisplayList
GXCallDisplayList:
/* 800E30D4 000DDFD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E30D8 000DDFD8  7C 08 02 A6 */	mflr r0
/* 800E30DC 000DDFDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E30E0 000DDFE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E30E4 000DDFE4  83 E2 96 48 */	lwz r31, __GXData-_SDA2_BASE_(r2)
/* 800E30E8 000DDFE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E30EC 000DDFEC  7C 9E 23 78 */	mr r30, r4
/* 800E30F0 000DDFF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E30F4 000DDFF4  7C 7D 1B 78 */	mr r29, r3
/* 800E30F8 000DDFF8  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 800E30FC 000DDFFC  2C 00 00 00 */	cmpwi r0, 0
/* 800E3100 000DE000  41 82 00 08 */	beq lbl_800E3108
/* 800E3104 000DE004  4B FF B7 59 */	bl __GXSetDirtyState
lbl_800E3108:
/* 800E3108 000DE008  80 1F 00 00 */	lwz r0, 0(r31)
/* 800E310C 000DE00C  2C 00 00 00 */	cmpwi r0, 0
/* 800E3110 000DE010  40 82 00 08 */	bne lbl_800E3118
/* 800E3114 000DE014  4B FF BB 0D */	bl __GXSendFlushPrim
lbl_800E3118:
/* 800E3118 000DE018  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800E311C 000DE01C  38 00 00 40 */	li r0, 0x40
/* 800E3120 000DE020  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800E3124 000DE024  93 A3 80 00 */	stw r29, -0x8000(r3)
/* 800E3128 000DE028  93 C3 80 00 */	stw r30, -0x8000(r3)
/* 800E312C 000DE02C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E3130 000DE030  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E3134 000DE034  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E3138 000DE038  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E313C 000DE03C  7C 08 03 A6 */	mtlr r0
/* 800E3140 000DE040  38 21 00 20 */	addi r1, r1, 0x20
/* 800E3144 000DE044  4E 80 00 20 */	blr 