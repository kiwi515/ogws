.include "macros.inc"

.section .text, "ax"

.global Draw1Mat1ShpDirectly__Q24nw4r3g3dFQ34nw4r3g3d6ResMatQ34nw4r3g3d6ResShpPCQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34UlPQ34nw4r3g3d16Draw1Mat1ShpSwapPQ44nw4r3g3d8G3DState8IndMtxOp
Draw1Mat1ShpDirectly__Q24nw4r3g3dFQ34nw4r3g3d6ResMatQ34nw4r3g3d6ResShpPCQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34UlPQ34nw4r3g3d16Draw1Mat1ShpSwapPQ44nw4r3g3d8G3DState8IndMtxOp:
/* 80067B38 00062A38  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80067B3C 00062A3C  7C 08 02 A6 */	mflr r0
/* 80067B40 00062A40  90 01 01 64 */	stw r0, 0x164(r1)
/* 80067B44 00062A44  39 61 01 60 */	addi r11, r1, 0x160
/* 80067B48 00062A48  48 04 A1 F5 */	bl _savegpr_25
/* 80067B4C 00062A4C  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 80067B50 00062A50  7C 79 1B 78 */	mr r25, r3
/* 80067B54 00062A54  7C 9A 23 78 */	mr r26, r4
/* 80067B58 00062A58  7C BB 2B 78 */	mr r27, r5
/* 80067B5C 00062A5C  7C DC 33 78 */	mr r28, r6
/* 80067B60 00062A60  7C FD 3B 78 */	mr r29, r7
/* 80067B64 00062A64  7D 1E 43 78 */	mr r30, r8
/* 80067B68 00062A68  7D 3F 4B 78 */	mr r31, r9
/* 80067B6C 00062A6C  40 82 00 10 */	bne lbl_80067B7C
/* 80067B70 00062A70  38 60 00 00 */	li r3, 0
/* 80067B74 00062A74  48 08 69 19 */	bl LCQueueWait
/* 80067B78 00062A78  48 0A 2E D9 */	bl PPCSync
lbl_80067B7C:
/* 80067B7C 00062A7C  80 19 00 00 */	lwz r0, 0(r25)
/* 80067B80 00062A80  2C 00 00 00 */	cmpwi r0, 0
/* 80067B84 00062A84  41 82 03 E8 */	beq lbl_80067F6C
/* 80067B88 00062A88  38 00 00 00 */	li r0, 0
/* 80067B8C 00062A8C  2C 1E 00 00 */	cmpwi r30, 0
/* 80067B90 00062A90  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80067B94 00062A94  41 82 00 10 */	beq lbl_80067BA4
/* 80067B98 00062A98  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80067B9C 00062A9C  2C 00 00 00 */	cmpwi r0, 0
/* 80067BA0 00062AA0  40 82 00 14 */	bne lbl_80067BB4
lbl_80067BA4:
/* 80067BA4 00062AA4  80 79 00 00 */	lwz r3, 0(r25)
/* 80067BA8 00062AA8  38 03 00 1C */	addi r0, r3, 0x1c
/* 80067BAC 00062AAC  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80067BB0 00062AB0  48 00 00 0C */	b lbl_80067BBC
lbl_80067BB4:
/* 80067BB4 00062AB4  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80067BB8 00062AB8  90 01 00 A0 */	stw r0, 0xa0(r1)
lbl_80067BBC:
/* 80067BBC 00062ABC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80067BC0 00062AC0  4B FE D3 91 */	bl GetFogIdx__Q34nw4r3g3d10ResMatMiscCFv
/* 80067BC4 00062AC4  4B FF F2 B9 */	bl LoadFog__Q34nw4r3g3d8G3DStateFi
/* 80067BC8 00062AC8  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 80067BCC 00062ACC  38 61 00 84 */	addi r3, r1, 0x84
/* 80067BD0 00062AD0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80067BD4 00062AD4  4B FF D4 C1 */	bl LoadResMatMisc__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d10ResMatMisc
/* 80067BD8 00062AD8  2C 1E 00 00 */	cmpwi r30, 0
/* 80067BDC 00062ADC  41 82 00 10 */	beq lbl_80067BEC
/* 80067BE0 00062AE0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80067BE4 00062AE4  2C 00 00 00 */	cmpwi r0, 0
/* 80067BE8 00062AE8  40 82 00 1C */	bne lbl_80067C04
lbl_80067BEC:
/* 80067BEC 00062AEC  80 99 00 00 */	lwz r4, 0(r25)
/* 80067BF0 00062AF0  38 61 00 80 */	addi r3, r1, 0x80
/* 80067BF4 00062AF4  38 04 01 40 */	addi r0, r4, 0x140
/* 80067BF8 00062AF8  90 01 00 80 */	stw r0, 0x80(r1)
/* 80067BFC 00062AFC  4B FF D7 71 */	bl LoadResTlutObj__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d10ResTlutObj
/* 80067C00 00062B00  48 00 00 14 */	b lbl_80067C14
lbl_80067C04:
/* 80067C04 00062B04  80 1E 00 04 */	lwz r0, 4(r30)
/* 80067C08 00062B08  38 61 00 7C */	addi r3, r1, 0x7c
/* 80067C0C 00062B0C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80067C10 00062B10  4B FF D7 5D */	bl LoadResTlutObj__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d10ResTlutObj
lbl_80067C14:
/* 80067C14 00062B14  2C 1E 00 00 */	cmpwi r30, 0
/* 80067C18 00062B18  41 82 00 10 */	beq lbl_80067C28
/* 80067C1C 00062B1C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80067C20 00062B20  2C 00 00 00 */	cmpwi r0, 0
/* 80067C24 00062B24  40 82 00 1C */	bne lbl_80067C40
lbl_80067C28:
/* 80067C28 00062B28  80 99 00 00 */	lwz r4, 0(r25)
/* 80067C2C 00062B2C  38 61 00 78 */	addi r3, r1, 0x78
/* 80067C30 00062B30  38 04 00 3C */	addi r0, r4, 0x3c
/* 80067C34 00062B34  90 01 00 78 */	stw r0, 0x78(r1)
/* 80067C38 00062B38  4B FF D4 CD */	bl LoadResTexObj__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d9ResTexObj
/* 80067C3C 00062B3C  48 00 00 14 */	b lbl_80067C50
lbl_80067C40:
/* 80067C40 00062B40  80 1E 00 00 */	lwz r0, 0(r30)
/* 80067C44 00062B44  38 61 00 74 */	addi r3, r1, 0x74
/* 80067C48 00062B48  90 01 00 74 */	stw r0, 0x74(r1)
/* 80067C4C 00062B4C  4B FF D4 B9 */	bl LoadResTexObj__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d9ResTexObj
lbl_80067C50:
/* 80067C50 00062B50  2C 1E 00 00 */	cmpwi r30, 0
/* 80067C54 00062B54  41 82 00 10 */	beq lbl_80067C64
/* 80067C58 00062B58  80 1E 00 08 */	lwz r0, 8(r30)
/* 80067C5C 00062B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80067C60 00062B60  40 82 00 1C */	bne lbl_80067C7C
lbl_80067C64:
/* 80067C64 00062B64  80 99 00 00 */	lwz r4, 0(r25)
/* 80067C68 00062B68  38 61 00 70 */	addi r3, r1, 0x70
/* 80067C6C 00062B6C  38 04 00 14 */	addi r0, r4, 0x14
/* 80067C70 00062B70  90 01 00 70 */	stw r0, 0x70(r1)
/* 80067C74 00062B74  4B FF D8 45 */	bl LoadResGenMode__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d10ResGenMode
/* 80067C78 00062B78  48 00 00 14 */	b lbl_80067C8C
lbl_80067C7C:
/* 80067C7C 00062B7C  80 1E 00 08 */	lwz r0, 8(r30)
/* 80067C80 00062B80  38 61 00 6C */	addi r3, r1, 0x6c
/* 80067C84 00062B84  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80067C88 00062B88  4B FF D8 31 */	bl LoadResGenMode__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d10ResGenMode
lbl_80067C8C:
/* 80067C8C 00062B8C  2C 1E 00 00 */	cmpwi r30, 0
/* 80067C90 00062B90  41 82 00 10 */	beq lbl_80067CA0
/* 80067C94 00062B94  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80067C98 00062B98  2C 00 00 00 */	cmpwi r0, 0
/* 80067C9C 00062B9C  40 82 00 1C */	bne lbl_80067CB8
lbl_80067CA0:
/* 80067CA0 00062BA0  7F 23 CB 78 */	mr r3, r25
/* 80067CA4 00062BA4  4B FE E7 AD */	bl GetResTev__Q34nw4r3g3d6ResMatFv
/* 80067CA8 00062BA8  90 61 00 68 */	stw r3, 0x68(r1)
/* 80067CAC 00062BAC  38 61 00 68 */	addi r3, r1, 0x68
/* 80067CB0 00062BB0  4B FF D9 D5 */	bl LoadResTev__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d6ResTev
/* 80067CB4 00062BB4  48 00 00 14 */	b lbl_80067CC8
lbl_80067CB8:
/* 80067CB8 00062BB8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80067CBC 00062BBC  38 61 00 64 */	addi r3, r1, 0x64
/* 80067CC0 00062BC0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80067CC4 00062BC4  4B FF D9 C1 */	bl LoadResTev__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d6ResTev
lbl_80067CC8:
/* 80067CC8 00062BC8  2C 1E 00 00 */	cmpwi r30, 0
/* 80067CCC 00062BCC  41 82 00 10 */	beq lbl_80067CDC
/* 80067CD0 00062BD0  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80067CD4 00062BD4  2C 00 00 00 */	cmpwi r0, 0
/* 80067CD8 00062BD8  40 82 00 30 */	bne lbl_80067D08
lbl_80067CDC:
/* 80067CDC 00062BDC  80 79 00 00 */	lwz r3, 0(r25)
/* 80067CE0 00062BE0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80067CE4 00062BE4  2C 00 00 00 */	cmpwi r0, 0
/* 80067CE8 00062BE8  41 82 00 0C */	beq lbl_80067CF4
/* 80067CEC 00062BEC  7C 03 02 14 */	add r0, r3, r0
/* 80067CF0 00062BF0  48 00 00 08 */	b lbl_80067CF8
lbl_80067CF4:
/* 80067CF4 00062BF4  38 00 00 00 */	li r0, 0
lbl_80067CF8:
/* 80067CF8 00062BF8  90 01 00 60 */	stw r0, 0x60(r1)
/* 80067CFC 00062BFC  38 61 00 60 */	addi r3, r1, 0x60
/* 80067D00 00062C00  4B FF DB 95 */	bl LoadResMatPix__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d9ResMatPix
/* 80067D04 00062C04  48 00 00 14 */	b lbl_80067D18
lbl_80067D08:
/* 80067D08 00062C08  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80067D0C 00062C0C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80067D10 00062C10  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80067D14 00062C14  4B FF DB 81 */	bl LoadResMatPix__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d9ResMatPix
lbl_80067D18:
/* 80067D18 00062C18  2C 1E 00 00 */	cmpwi r30, 0
/* 80067D1C 00062C1C  41 82 00 10 */	beq lbl_80067D2C
/* 80067D20 00062C20  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80067D24 00062C24  2C 00 00 00 */	cmpwi r0, 0
/* 80067D28 00062C28  40 82 00 34 */	bne lbl_80067D5C
lbl_80067D2C:
/* 80067D2C 00062C2C  80 79 00 00 */	lwz r3, 0(r25)
/* 80067D30 00062C30  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80067D34 00062C34  2C 00 00 00 */	cmpwi r0, 0
/* 80067D38 00062C38  41 82 00 0C */	beq lbl_80067D44
/* 80067D3C 00062C3C  7C 63 02 14 */	add r3, r3, r0
/* 80067D40 00062C40  48 00 00 08 */	b lbl_80067D48
lbl_80067D44:
/* 80067D44 00062C44  38 60 00 00 */	li r3, 0
lbl_80067D48:
/* 80067D48 00062C48  38 03 00 20 */	addi r0, r3, 0x20
/* 80067D4C 00062C4C  38 61 00 58 */	addi r3, r1, 0x58
/* 80067D50 00062C50  90 01 00 58 */	stw r0, 0x58(r1)
/* 80067D54 00062C54  4B FF DB ED */	bl LoadResMatTevColor__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d14ResMatTevColor
/* 80067D58 00062C58  48 00 00 14 */	b lbl_80067D6C
lbl_80067D5C:
/* 80067D5C 00062C5C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80067D60 00062C60  38 61 00 54 */	addi r3, r1, 0x54
/* 80067D64 00062C64  90 01 00 54 */	stw r0, 0x54(r1)
/* 80067D68 00062C68  4B FF DB D9 */	bl LoadResMatTevColor__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d14ResMatTevColor
lbl_80067D6C:
/* 80067D6C 00062C6C  2C 1E 00 00 */	cmpwi r30, 0
/* 80067D70 00062C70  41 82 00 10 */	beq lbl_80067D80
/* 80067D74 00062C74  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80067D78 00062C78  2C 00 00 00 */	cmpwi r0, 0
/* 80067D7C 00062C7C  40 82 00 70 */	bne lbl_80067DEC
lbl_80067D80:
/* 80067D80 00062C80  2C 1F 00 00 */	cmpwi r31, 0
/* 80067D84 00062C84  41 82 00 38 */	beq lbl_80067DBC
/* 80067D88 00062C88  80 79 00 00 */	lwz r3, 0(r25)
/* 80067D8C 00062C8C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80067D90 00062C90  2C 00 00 00 */	cmpwi r0, 0
/* 80067D94 00062C94  41 82 00 0C */	beq lbl_80067DA0
/* 80067D98 00062C98  7C 63 02 14 */	add r3, r3, r0
/* 80067D9C 00062C9C  48 00 00 08 */	b lbl_80067DA4
lbl_80067DA0:
/* 80067DA0 00062CA0  38 60 00 00 */	li r3, 0
lbl_80067DA4:
/* 80067DA4 00062CA4  38 03 00 A0 */	addi r0, r3, 0xa0
/* 80067DA8 00062CA8  7F E4 FB 78 */	mr r4, r31
/* 80067DAC 00062CAC  90 01 00 50 */	stw r0, 0x50(r1)
/* 80067DB0 00062CB0  38 61 00 50 */	addi r3, r1, 0x50
/* 80067DB4 00062CB4  4B FF DC F1 */	bl LoadResMatIndMtxAndScale__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d20ResMatIndMtxAndScaleRQ44nw4r3g3d8G3DState8IndMtxOp
/* 80067DB8 00062CB8  48 00 00 64 */	b lbl_80067E1C
lbl_80067DBC:
/* 80067DBC 00062CBC  80 79 00 00 */	lwz r3, 0(r25)
/* 80067DC0 00062CC0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80067DC4 00062CC4  2C 00 00 00 */	cmpwi r0, 0
/* 80067DC8 00062CC8  41 82 00 0C */	beq lbl_80067DD4
/* 80067DCC 00062CCC  7C 63 02 14 */	add r3, r3, r0
/* 80067DD0 00062CD0  48 00 00 08 */	b lbl_80067DD8
lbl_80067DD4:
/* 80067DD4 00062CD4  38 60 00 00 */	li r3, 0
lbl_80067DD8:
/* 80067DD8 00062CD8  38 03 00 A0 */	addi r0, r3, 0xa0
/* 80067DDC 00062CDC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80067DE0 00062CE0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80067DE4 00062CE4  4B FF DC 09 */	bl LoadResMatIndMtxAndScale__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d20ResMatIndMtxAndScale
/* 80067DE8 00062CE8  48 00 00 34 */	b lbl_80067E1C
lbl_80067DEC:
/* 80067DEC 00062CEC  2C 1F 00 00 */	cmpwi r31, 0
/* 80067DF0 00062CF0  41 82 00 1C */	beq lbl_80067E0C
/* 80067DF4 00062CF4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80067DF8 00062CF8  7F E4 FB 78 */	mr r4, r31
/* 80067DFC 00062CFC  38 61 00 48 */	addi r3, r1, 0x48
/* 80067E00 00062D00  90 01 00 48 */	stw r0, 0x48(r1)
/* 80067E04 00062D04  4B FF DC A1 */	bl LoadResMatIndMtxAndScale__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d20ResMatIndMtxAndScaleRQ44nw4r3g3d8G3DState8IndMtxOp
/* 80067E08 00062D08  48 00 00 14 */	b lbl_80067E1C
lbl_80067E0C:
/* 80067E0C 00062D0C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80067E10 00062D10  38 61 00 44 */	addi r3, r1, 0x44
/* 80067E14 00062D14  90 01 00 44 */	stw r0, 0x44(r1)
/* 80067E18 00062D18  4B FF DB D5 */	bl LoadResMatIndMtxAndScale__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d20ResMatIndMtxAndScale
lbl_80067E1C:
/* 80067E1C 00062D1C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80067E20 00062D20  4B FE D1 11 */	bl GetLightSetIdx__Q34nw4r3g3d10ResMatMiscCFv
/* 80067E24 00062D24  38 81 00 9C */	addi r4, r1, 0x9c
/* 80067E28 00062D28  38 A1 00 98 */	addi r5, r1, 0x98
/* 80067E2C 00062D2C  38 C1 00 94 */	addi r6, r1, 0x94
/* 80067E30 00062D30  38 E1 00 90 */	addi r7, r1, 0x90
/* 80067E34 00062D34  39 01 00 88 */	addi r8, r1, 0x88
/* 80067E38 00062D38  4B FF F1 45 */	bl LoadLightSet__Q34nw4r3g3d8G3DStateFiPUlPUlPUlPUlPQ34nw4r3g3d11AmbLightObj
/* 80067E3C 00062D3C  88 A1 00 88 */	lbz r5, 0x88(r1)
/* 80067E40 00062D40  2C 1E 00 00 */	cmpwi r30, 0
/* 80067E44 00062D44  88 81 00 89 */	lbz r4, 0x89(r1)
/* 80067E48 00062D48  88 61 00 8A */	lbz r3, 0x8a(r1)
/* 80067E4C 00062D4C  88 01 00 8B */	lbz r0, 0x8b(r1)
/* 80067E50 00062D50  98 A1 00 8C */	stb r5, 0x8c(r1)
/* 80067E54 00062D54  98 81 00 8D */	stb r4, 0x8d(r1)
/* 80067E58 00062D58  98 61 00 8E */	stb r3, 0x8e(r1)
/* 80067E5C 00062D5C  98 01 00 8F */	stb r0, 0x8f(r1)
/* 80067E60 00062D60  41 82 00 10 */	beq lbl_80067E70
/* 80067E64 00062D64  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80067E68 00062D68  2C 00 00 00 */	cmpwi r0, 0
/* 80067E6C 00062D6C  40 82 00 3C */	bne lbl_80067EA8
lbl_80067E70:
/* 80067E70 00062D70  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80067E74 00062D74  57 A9 EF FE */	rlwinm r9, r29, 0x1d, 0x1f, 0x1f
/* 80067E78 00062D78  80 81 00 9C */	lwz r4, 0x9c(r1)
/* 80067E7C 00062D7C  38 61 00 40 */	addi r3, r1, 0x40
/* 80067E80 00062D80  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80067E84 00062D84  39 01 00 3C */	addi r8, r1, 0x3c
/* 80067E88 00062D88  80 A1 00 98 */	lwz r5, 0x98(r1)
/* 80067E8C 00062D8C  80 F9 00 00 */	lwz r7, 0(r25)
/* 80067E90 00062D90  80 C1 00 94 */	lwz r6, 0x94(r1)
/* 80067E94 00062D94  38 07 03 EC */	addi r0, r7, 0x3ec
/* 80067E98 00062D98  80 E1 00 90 */	lwz r7, 0x90(r1)
/* 80067E9C 00062D9C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80067EA0 00062DA0  4B FF DD D5 */	bl LoadResMatChan__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d10ResMatChanUlUlUlUl8_GXColorb
/* 80067EA4 00062DA4  48 00 00 34 */	b lbl_80067ED8
lbl_80067EA8:
/* 80067EA8 00062DA8  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80067EAC 00062DAC  57 A9 EF FE */	rlwinm r9, r29, 0x1d, 0x1f, 0x1f
/* 80067EB0 00062DB0  80 81 00 9C */	lwz r4, 0x9c(r1)
/* 80067EB4 00062DB4  38 61 00 38 */	addi r3, r1, 0x38
/* 80067EB8 00062DB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80067EBC 00062DBC  39 01 00 34 */	addi r8, r1, 0x34
/* 80067EC0 00062DC0  80 A1 00 98 */	lwz r5, 0x98(r1)
/* 80067EC4 00062DC4  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80067EC8 00062DC8  80 C1 00 94 */	lwz r6, 0x94(r1)
/* 80067ECC 00062DCC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80067ED0 00062DD0  80 E1 00 90 */	lwz r7, 0x90(r1)
/* 80067ED4 00062DD4  4B FF DD A1 */	bl LoadResMatChan__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d10ResMatChanUlUlUlUl8_GXColorb
lbl_80067ED8:
/* 80067ED8 00062DD8  2C 1E 00 00 */	cmpwi r30, 0
/* 80067EDC 00062DDC  41 82 00 10 */	beq lbl_80067EEC
/* 80067EE0 00062DE0  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80067EE4 00062DE4  2C 00 00 00 */	cmpwi r0, 0
/* 80067EE8 00062DE8  40 82 00 34 */	bne lbl_80067F1C
lbl_80067EEC:
/* 80067EEC 00062DEC  80 79 00 00 */	lwz r3, 0(r25)
/* 80067EF0 00062DF0  80 03 00 38 */	lwz r0, 0x38(r3)
/* 80067EF4 00062DF4  2C 00 00 00 */	cmpwi r0, 0
/* 80067EF8 00062DF8  41 82 00 0C */	beq lbl_80067F04
/* 80067EFC 00062DFC  7C 63 02 14 */	add r3, r3, r0
/* 80067F00 00062E00  48 00 00 08 */	b lbl_80067F08
lbl_80067F04:
/* 80067F04 00062E04  38 60 00 00 */	li r3, 0
lbl_80067F08:
/* 80067F08 00062E08  38 03 00 E0 */	addi r0, r3, 0xe0
/* 80067F0C 00062E0C  38 61 00 30 */	addi r3, r1, 0x30
/* 80067F10 00062E10  90 01 00 30 */	stw r0, 0x30(r1)
/* 80067F14 00062E14  4B FF E4 8D */	bl LoadResMatTexCoordGen__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d17ResMatTexCoordGen
/* 80067F18 00062E18  48 00 00 14 */	b lbl_80067F2C
lbl_80067F1C:
/* 80067F1C 00062E1C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 80067F20 00062E20  38 61 00 2C */	addi r3, r1, 0x2c
/* 80067F24 00062E24  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80067F28 00062E28  4B FF E4 79 */	bl LoadResMatTexCoordGen__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d17ResMatTexCoordGen
lbl_80067F2C:
/* 80067F2C 00062E2C  2C 1E 00 00 */	cmpwi r30, 0
/* 80067F30 00062E30  41 82 00 10 */	beq lbl_80067F40
/* 80067F34 00062E34  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80067F38 00062E38  2C 00 00 00 */	cmpwi r0, 0
/* 80067F3C 00062E3C  40 82 00 1C */	bne lbl_80067F58
lbl_80067F40:
/* 80067F40 00062E40  80 99 00 00 */	lwz r4, 0(r25)
/* 80067F44 00062E44  38 61 00 28 */	addi r3, r1, 0x28
/* 80067F48 00062E48  38 04 01 A4 */	addi r0, r4, 0x1a4
/* 80067F4C 00062E4C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80067F50 00062E50  4B FF E4 E1 */	bl LoadResTexSrt__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d9ResTexSrt
/* 80067F54 00062E54  48 00 00 74 */	b lbl_80067FC8
lbl_80067F58:
/* 80067F58 00062E58  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80067F5C 00062E5C  38 61 00 24 */	addi r3, r1, 0x24
/* 80067F60 00062E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80067F64 00062E64  4B FF E4 CD */	bl LoadResTexSrt__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d9ResTexSrt
/* 80067F68 00062E68  48 00 00 60 */	b lbl_80067FC8
lbl_80067F6C:
/* 80067F6C 00062E6C  2C 1F 00 00 */	cmpwi r31, 0
/* 80067F70 00062E70  41 82 00 58 */	beq lbl_80067FC8
/* 80067F74 00062E74  2C 1E 00 00 */	cmpwi r30, 0
/* 80067F78 00062E78  41 82 00 10 */	beq lbl_80067F88
/* 80067F7C 00062E7C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80067F80 00062E80  2C 00 00 00 */	cmpwi r0, 0
/* 80067F84 00062E84  40 82 00 30 */	bne lbl_80067FB4
lbl_80067F88:
/* 80067F88 00062E88  38 00 00 00 */	li r0, 0
/* 80067F8C 00062E8C  7F E3 FB 78 */	mr r3, r31
/* 80067F90 00062E90  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80067F94 00062E94  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80067F98 00062E98  81 9F 00 00 */	lwz r12, 0(r31)
/* 80067F9C 00062E9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80067FA0 00062EA0  7D 89 03 A6 */	mtctr r12
/* 80067FA4 00062EA4  4E 80 04 21 */	bctrl 
/* 80067FA8 00062EA8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80067FAC 00062EAC  4B FF CA 89 */	bl FifoSend__Q44nw4r3g3d8G3DState13IndTexMtxInfoCFv
/* 80067FB0 00062EB0  48 00 00 18 */	b lbl_80067FC8
lbl_80067FB4:
/* 80067FB4 00062EB4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80067FB8 00062EB8  7F E4 FB 78 */	mr r4, r31
/* 80067FBC 00062EBC  38 61 00 20 */	addi r3, r1, 0x20
/* 80067FC0 00062EC0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80067FC4 00062EC4  4B FF DA E1 */	bl LoadResMatIndMtxAndScale__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d20ResMatIndMtxAndScaleRQ44nw4r3g3d8G3DState8IndMtxOp
lbl_80067FC8:
/* 80067FC8 00062EC8  80 7A 00 00 */	lwz r3, 0(r26)
/* 80067FCC 00062ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80067FD0 00062ED0  41 82 01 18 */	beq lbl_800680E8
/* 80067FD4 00062ED4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80067FD8 00062ED8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80067FDC 00062EDC  40 82 01 0C */	bne lbl_800680E8
/* 80067FE0 00062EE0  57 A0 07 BD */	rlwinm. r0, r29, 0, 0x1e, 0x1e
/* 80067FE4 00062EE4  40 82 00 D4 */	bne lbl_800680B8
/* 80067FE8 00062EE8  80 1A 00 00 */	lwz r0, 0(r26)
/* 80067FEC 00062EEC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80067FF0 00062EF0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80067FF4 00062EF4  4B FF E6 E9 */	bl LoadResShpPrePrimitive__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d6ResShp
/* 80067FF8 00062EF8  2C 1E 00 00 */	cmpwi r30, 0
/* 80067FFC 00062EFC  41 82 00 BC */	beq lbl_800680B8
/* 80068000 00062F00  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 80068004 00062F04  2C 05 00 00 */	cmpwi r5, 0
/* 80068008 00062F08  41 82 00 20 */	beq lbl_80068028
/* 8006800C 00062F0C  80 9A 00 00 */	lwz r4, 0(r26)
/* 80068010 00062F10  38 61 00 18 */	addi r3, r1, 0x18
/* 80068014 00062F14  A8 04 00 48 */	lha r0, 0x48(r4)
/* 80068018 00062F18  54 00 10 3A */	slwi r0, r0, 2
/* 8006801C 00062F1C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80068020 00062F20  90 01 00 18 */	stw r0, 0x18(r1)
/* 80068024 00062F24  4B FE E7 49 */	bl SetArray__Q34nw4r3g3d9ResVtxPosFv
lbl_80068028:
/* 80068028 00062F28  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 8006802C 00062F2C  2C 04 00 00 */	cmpwi r4, 0
/* 80068030 00062F30  41 82 00 28 */	beq lbl_80068058
/* 80068034 00062F34  80 7A 00 00 */	lwz r3, 0(r26)
/* 80068038 00062F38  A8 03 00 4A */	lha r0, 0x4a(r3)
/* 8006803C 00062F3C  2C 00 00 00 */	cmpwi r0, 0
/* 80068040 00062F40  41 80 00 18 */	blt lbl_80068058
/* 80068044 00062F44  54 00 10 3A */	slwi r0, r0, 2
/* 80068048 00062F48  38 61 00 14 */	addi r3, r1, 0x14
/* 8006804C 00062F4C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80068050 00062F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80068054 00062F54  4B FE E7 E9 */	bl SetArray__Q34nw4r3g3d9ResVtxNrmFv
lbl_80068058:
/* 80068058 00062F58  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 8006805C 00062F5C  2C 04 00 00 */	cmpwi r4, 0
/* 80068060 00062F60  41 82 00 58 */	beq lbl_800680B8
/* 80068064 00062F64  80 7A 00 00 */	lwz r3, 0(r26)
/* 80068068 00062F68  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 8006806C 00062F6C  2C 00 00 00 */	cmpwi r0, 0
/* 80068070 00062F70  41 80 00 1C */	blt lbl_8006808C
/* 80068074 00062F74  54 00 10 3A */	slwi r0, r0, 2
/* 80068078 00062F78  38 61 00 10 */	addi r3, r1, 0x10
/* 8006807C 00062F7C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80068080 00062F80  38 80 00 0B */	li r4, 0xb
/* 80068084 00062F84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80068088 00062F88  4B FE E8 85 */	bl SetArray__Q34nw4r3g3d9ResVtxClrF7_GXAttr
lbl_8006808C:
/* 8006808C 00062F8C  80 7A 00 00 */	lwz r3, 0(r26)
/* 80068090 00062F90  A8 03 00 4E */	lha r0, 0x4e(r3)
/* 80068094 00062F94  2C 00 00 00 */	cmpwi r0, 0
/* 80068098 00062F98  41 80 00 20 */	blt lbl_800680B8
/* 8006809C 00062F9C  80 BE 00 34 */	lwz r5, 0x34(r30)
/* 800680A0 00062FA0  54 00 10 3A */	slwi r0, r0, 2
/* 800680A4 00062FA4  38 61 00 0C */	addi r3, r1, 0xc
/* 800680A8 00062FA8  38 80 00 0C */	li r4, 0xc
/* 800680AC 00062FAC  7C 05 00 2E */	lwzx r0, r5, r0
/* 800680B0 00062FB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800680B4 00062FB4  4B FE E8 59 */	bl SetArray__Q34nw4r3g3d9ResVtxClrF7_GXAttr
lbl_800680B8:
/* 800680B8 00062FB8  57 A0 07 7B */	rlwinm. r0, r29, 0, 0x1d, 0x1d
/* 800680BC 00062FBC  41 82 00 14 */	beq lbl_800680D0
/* 800680C0 00062FC0  38 60 00 01 */	li r3, 1
/* 800680C4 00062FC4  4B FF B6 79 */	bl GDSetCullMode__Q34nw4r3g3d4fifoF11_GXCullMode
/* 800680C8 00062FC8  38 60 00 10 */	li r3, 0x10
/* 800680CC 00062FCC  4B FF F2 D1 */	bl Invalidate__Q34nw4r3g3d8G3DStateFUl
lbl_800680D0:
/* 800680D0 00062FD0  80 1A 00 00 */	lwz r0, 0(r26)
/* 800680D4 00062FD4  7F 64 DB 78 */	mr r4, r27
/* 800680D8 00062FD8  7F 85 E3 78 */	mr r5, r28
/* 800680DC 00062FDC  38 61 00 08 */	addi r3, r1, 8
/* 800680E0 00062FE0  90 01 00 08 */	stw r0, 8(r1)
/* 800680E4 00062FE4  4B FF E7 9D */	bl LoadResShpPrimitive__Q34nw4r3g3d8G3DStateFQ34nw4r3g3d6ResShpPCQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34
lbl_800680E8:
/* 800680E8 00062FE8  39 61 01 60 */	addi r11, r1, 0x160
/* 800680EC 00062FEC  48 04 9C 9D */	bl _restgpr_25
/* 800680F0 00062FF0  80 01 01 64 */	lwz r0, 0x164(r1)
/* 800680F4 00062FF4  7C 08 03 A6 */	mtlr r0
/* 800680F8 00062FF8  38 21 01 60 */	addi r1, r1, 0x160
/* 800680FC 00062FFC  4E 80 00 20 */	blr 
