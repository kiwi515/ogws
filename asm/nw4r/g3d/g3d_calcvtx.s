.include "macros.inc"

.section .sdata2, "a"
.global $$26816
$$26816:
	.single 0e0
	.balign 8

.section .text, "ax"
.global CalcVtx__Q24nw4r3g3dFQ34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjShpPPQ34nw4r3g3d13ResVtxPosDataPPQ34nw4r3g3d13ResVtxNrmDataPPQ34nw4r3g3d13ResVtxClrData
CalcVtx__Q24nw4r3g3dFQ34nw4r3g3d6ResMdlPQ34nw4r3g3d9AnmObjShpPPQ34nw4r3g3d13ResVtxPosDataPPQ34nw4r3g3d13ResVtxNrmDataPPQ34nw4r3g3d13ResVtxClrData:
/* 80078AD0 000739D0  94 21 FA 50 */	stwu r1, -0x5b0(r1)
/* 80078AD4 000739D4  7C 08 02 A6 */	mflr r0
/* 80078AD8 000739D8  90 01 05 B4 */	stw r0, 0x5b4(r1)
/* 80078ADC 000739DC  DB E1 05 A0 */	stfd f31, 0x5a0(r1)
/* 80078AE0 000739E0  F3 E1 05 A8 */	psq_st f31, 1448(r1), 0, qr0
/* 80078AE4 000739E4  39 61 05 A0 */	addi r11, r1, 0x5a0
/* 80078AE8 000739E8  48 03 92 29 */	bl _savegpr_14
/* 80078AEC 000739EC  7C 9A 23 78 */	mr r26, r4
/* 80078AF0 000739F0  7C BB 2B 78 */	mr r27, r5
/* 80078AF4 000739F4  7C DC 33 78 */	mr r28, r6
/* 80078AF8 000739F8  7C FD 3B 78 */	mr r29, r7
/* 80078AFC 000739FC  4B FD 9F 6D */	bl func_80052A68
/* 80078B00 00073A00  39 C1 03 68 */	addi r14, r1, 0x368
/* 80078B04 00073A04  3B 01 05 58 */	addi r24, r1, 0x558
/* 80078B08 00073A08  7C 8E C0 50 */	subf r4, r14, r24
/* 80078B0C 00073A0C  7C 77 1B 78 */	mr r23, r3
/* 80078B10 00073A10  38 A4 00 0F */	addi r5, r4, 0xf
/* 80078B14 00073A14  C3 E2 8A 48 */	lfs f31, $$26816-_SDA2_BASE_(r2)
/* 80078B18 00073A18  7C A0 26 70 */	srawi r0, r5, 4
/* 80078B1C 00073A1C  54 94 00 00 */	rlwinm r20, r4, 0, 0, 0
/* 80078B20 00073A20  7C 60 01 94 */	addze r3, r0
/* 80078B24 00073A24  54 B3 00 00 */	rlwinm r19, r5, 0, 0, 0
/* 80078B28 00073A28  3A A3 00 01 */	addi r21, r3, 1
/* 80078B2C 00073A2C  3A C1 04 D8 */	addi r22, r1, 0x4d8
/* 80078B30 00073A30  54 72 00 00 */	rlwinm r18, r3, 0, 0, 0
/* 80078B34 00073A34  3B E0 00 00 */	li r31, 0
/* 80078B38 00073A38  56 B1 00 00 */	rlwinm r17, r21, 0, 0, 0
/* 80078B3C 00073A3C  3B 20 00 00 */	li r25, 0
/* 80078B40 00073A40  48 00 07 60 */	b lbl_800792A0
lbl_80078B44:
/* 80078B44 00073A44  7F 43 D3 78 */	mr r3, r26
/* 80078B48 00073A48  7F E4 FB 78 */	mr r4, r31
/* 80078B4C 00073A4C  4B FE 90 21 */	bl TestExistence__Q34nw4r3g3d9AnmObjShpCFUl
/* 80078B50 00073A50  2C 03 00 00 */	cmpwi r3, 0
/* 80078B54 00073A54  41 82 07 44 */	beq lbl_80079298
/* 80078B58 00073A58  38 61 03 68 */	addi r3, r1, 0x368
/* 80078B5C 00073A5C  93 21 03 48 */	stw r25, 0x348(r1)
/* 80078B60 00073A60  7C 03 C0 40 */	cmplw r3, r24
/* 80078B64 00073A64  93 21 03 4C */	stw r25, 0x34c(r1)
/* 80078B68 00073A68  93 21 03 50 */	stw r25, 0x350(r1)
/* 80078B6C 00073A6C  93 21 03 58 */	stw r25, 0x358(r1)
/* 80078B70 00073A70  93 21 03 5C */	stw r25, 0x35c(r1)
/* 80078B74 00073A74  93 21 03 60 */	stw r25, 0x360(r1)
/* 80078B78 00073A78  40 80 01 20 */	bge lbl_80078C98
/* 80078B7C 00073A7C  2C 15 00 08 */	cmpwi r21, 8
/* 80078B80 00073A80  40 81 00 EC */	ble lbl_80078C6C
/* 80078B84 00073A84  7C 0E C0 40 */	cmplw r14, r24
/* 80078B88 00073A88  38 00 00 00 */	li r0, 0
/* 80078B8C 00073A8C  38 80 00 00 */	li r4, 0
/* 80078B90 00073A90  41 81 00 28 */	bgt lbl_80078BB8
/* 80078B94 00073A94  2C 14 00 00 */	cmpwi r20, 0
/* 80078B98 00073A98  38 A0 00 01 */	li r5, 1
/* 80078B9C 00073A9C  40 82 00 10 */	bne lbl_80078BAC
/* 80078BA0 00073AA0  2C 13 00 00 */	cmpwi r19, 0
/* 80078BA4 00073AA4  41 82 00 08 */	beq lbl_80078BAC
/* 80078BA8 00073AA8  38 A0 00 00 */	li r5, 0
lbl_80078BAC:
/* 80078BAC 00073AAC  2C 05 00 00 */	cmpwi r5, 0
/* 80078BB0 00073AB0  41 82 00 08 */	beq lbl_80078BB8
/* 80078BB4 00073AB4  38 80 00 01 */	li r4, 1
lbl_80078BB8:
/* 80078BB8 00073AB8  2C 04 00 00 */	cmpwi r4, 0
/* 80078BBC 00073ABC  41 82 00 28 */	beq lbl_80078BE4
/* 80078BC0 00073AC0  2C 12 00 00 */	cmpwi r18, 0
/* 80078BC4 00073AC4  38 80 00 01 */	li r4, 1
/* 80078BC8 00073AC8  40 82 00 10 */	bne lbl_80078BD8
/* 80078BCC 00073ACC  7C 12 88 00 */	cmpw r18, r17
/* 80078BD0 00073AD0  41 82 00 08 */	beq lbl_80078BD8
/* 80078BD4 00073AD4  38 80 00 00 */	li r4, 0
lbl_80078BD8:
/* 80078BD8 00073AD8  2C 04 00 00 */	cmpwi r4, 0
/* 80078BDC 00073ADC  41 82 00 08 */	beq lbl_80078BE4
/* 80078BE0 00073AE0  38 00 00 01 */	li r0, 1
lbl_80078BE4:
/* 80078BE4 00073AE4  2C 00 00 00 */	cmpwi r0, 0
/* 80078BE8 00073AE8  41 82 00 84 */	beq lbl_80078C6C
/* 80078BEC 00073AEC  38 16 00 7F */	addi r0, r22, 0x7f
/* 80078BF0 00073AF0  7C 03 00 50 */	subf r0, r3, r0
/* 80078BF4 00073AF4  54 00 C9 FE */	srwi r0, r0, 7
/* 80078BF8 00073AF8  7C 09 03 A6 */	mtctr r0
/* 80078BFC 00073AFC  7C 03 B0 40 */	cmplw r3, r22
/* 80078C00 00073B00  40 80 00 6C */	bge lbl_80078C6C
lbl_80078C04:
/* 80078C04 00073B04  93 23 00 00 */	stw r25, 0(r3)
/* 80078C08 00073B08  93 23 00 04 */	stw r25, 4(r3)
/* 80078C0C 00073B0C  93 23 00 08 */	stw r25, 8(r3)
/* 80078C10 00073B10  93 23 00 10 */	stw r25, 0x10(r3)
/* 80078C14 00073B14  93 23 00 14 */	stw r25, 0x14(r3)
/* 80078C18 00073B18  93 23 00 18 */	stw r25, 0x18(r3)
/* 80078C1C 00073B1C  93 23 00 20 */	stw r25, 0x20(r3)
/* 80078C20 00073B20  93 23 00 24 */	stw r25, 0x24(r3)
/* 80078C24 00073B24  93 23 00 28 */	stw r25, 0x28(r3)
/* 80078C28 00073B28  93 23 00 30 */	stw r25, 0x30(r3)
/* 80078C2C 00073B2C  93 23 00 34 */	stw r25, 0x34(r3)
/* 80078C30 00073B30  93 23 00 38 */	stw r25, 0x38(r3)
/* 80078C34 00073B34  93 23 00 40 */	stw r25, 0x40(r3)
/* 80078C38 00073B38  93 23 00 44 */	stw r25, 0x44(r3)
/* 80078C3C 00073B3C  93 23 00 48 */	stw r25, 0x48(r3)
/* 80078C40 00073B40  93 23 00 50 */	stw r25, 0x50(r3)
/* 80078C44 00073B44  93 23 00 54 */	stw r25, 0x54(r3)
/* 80078C48 00073B48  93 23 00 58 */	stw r25, 0x58(r3)
/* 80078C4C 00073B4C  93 23 00 60 */	stw r25, 0x60(r3)
/* 80078C50 00073B50  93 23 00 64 */	stw r25, 0x64(r3)
/* 80078C54 00073B54  93 23 00 68 */	stw r25, 0x68(r3)
/* 80078C58 00073B58  93 23 00 70 */	stw r25, 0x70(r3)
/* 80078C5C 00073B5C  93 23 00 74 */	stw r25, 0x74(r3)
/* 80078C60 00073B60  93 23 00 78 */	stw r25, 0x78(r3)
/* 80078C64 00073B64  38 63 00 80 */	addi r3, r3, 0x80
/* 80078C68 00073B68  42 00 FF 9C */	bdnz lbl_80078C04
lbl_80078C6C:
/* 80078C6C 00073B6C  38 18 00 0F */	addi r0, r24, 0xf
/* 80078C70 00073B70  7C 03 00 50 */	subf r0, r3, r0
/* 80078C74 00073B74  54 00 E1 3E */	srwi r0, r0, 4
/* 80078C78 00073B78  7C 09 03 A6 */	mtctr r0
/* 80078C7C 00073B7C  7C 03 C0 40 */	cmplw r3, r24
/* 80078C80 00073B80  40 80 00 18 */	bge lbl_80078C98
lbl_80078C84:
/* 80078C84 00073B84  93 23 00 00 */	stw r25, 0(r3)
/* 80078C88 00073B88  93 23 00 04 */	stw r25, 4(r3)
/* 80078C8C 00073B8C  93 23 00 08 */	stw r25, 8(r3)
/* 80078C90 00073B90  38 63 00 10 */	addi r3, r3, 0x10
/* 80078C94 00073B94  42 00 FF F0 */	bdnz lbl_80078C84
lbl_80078C98:
/* 80078C98 00073B98  81 9A 00 00 */	lwz r12, 0(r26)
/* 80078C9C 00073B9C  7F 43 D3 78 */	mr r3, r26
/* 80078CA0 00073BA0  7F E5 FB 78 */	mr r5, r31
/* 80078CA4 00073BA4  38 81 03 40 */	addi r4, r1, 0x340
/* 80078CA8 00073BA8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80078CAC 00073BAC  7D 89 03 A6 */	mtctr r12
/* 80078CB0 00073BB0  4E 80 04 21 */	bctrl 
/* 80078CB4 00073BB4  80 83 00 00 */	lwz r4, 0(r3)
/* 80078CB8 00073BB8  7C 7E 1B 78 */	mr r30, r3
/* 80078CBC 00073BBC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80078CC0 00073BC0  41 82 05 D8 */	beq lbl_80079298
/* 80078CC4 00073BC4  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80078CC8 00073BC8  41 82 02 14 */	beq lbl_80078EDC
/* 80078CCC 00073BCC  80 03 00 08 */	lwz r0, 8(r3)
/* 80078CD0 00073BD0  38 80 00 00 */	li r4, 0
/* 80078CD4 00073BD4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80078CD8 00073BD8  82 1B 00 00 */	lwz r16, 0(r27)
/* 80078CDC 00073BDC  80 10 00 08 */	lwz r0, 8(r16)
/* 80078CE0 00073BE0  2C 00 00 00 */	cmpwi r0, 0
/* 80078CE4 00073BE4  41 82 00 0C */	beq lbl_80078CF0
/* 80078CE8 00073BE8  7D F0 02 14 */	add r15, r16, r0
/* 80078CEC 00073BEC  48 00 00 08 */	b lbl_80078CF4
lbl_80078CF0:
/* 80078CF0 00073BF0  39 E0 00 00 */	li r15, 0
lbl_80078CF4:
/* 80078CF4 00073BF4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80078CF8 00073BF8  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80078CFC 00073BFC  41 82 00 28 */	beq lbl_80078D24
/* 80078D00 00073C00  38 61 00 20 */	addi r3, r1, 0x20
/* 80078D04 00073C04  38 81 00 1C */	addi r4, r1, 0x1c
/* 80078D08 00073C08  38 A1 00 0A */	addi r5, r1, 0xa
/* 80078D0C 00073C0C  4B FD DA 95 */	bl GetArray__Q34nw4r3g3d9ResVtxPosCFPPCvPUc
/* 80078D10 00073C10  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80078D14 00073C14  38 80 00 01 */	li r4, 1
/* 80078D18 00073C18  90 01 02 38 */	stw r0, 0x238(r1)
/* 80078D1C 00073C1C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80078D20 00073C20  D0 01 02 3C */	stfs f0, 0x23c(r1)
lbl_80078D24:
/* 80078D24 00073C24  54 80 18 38 */	slwi r0, r4, 3
/* 80078D28 00073C28  38 A1 02 38 */	addi r5, r1, 0x238
/* 80078D2C 00073C2C  7F C3 F3 78 */	mr r3, r30
/* 80078D30 00073C30  38 E0 00 00 */	li r7, 0
/* 80078D34 00073C34  7C A5 02 14 */	add r5, r5, r0
/* 80078D38 00073C38  48 00 00 48 */	b lbl_80078D80
lbl_80078D3C:
/* 80078D3C 00073C3C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80078D40 00073C40  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80078D44 00073C44  41 82 00 34 */	beq lbl_80078D78
/* 80078D48 00073C48  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 80078D4C 00073C4C  80 06 00 08 */	lwz r0, 8(r6)
/* 80078D50 00073C50  2C 00 00 00 */	cmpwi r0, 0
/* 80078D54 00073C54  41 82 00 0C */	beq lbl_80078D60
/* 80078D58 00073C58  7C 06 02 14 */	add r0, r6, r0
/* 80078D5C 00073C5C  48 00 00 08 */	b lbl_80078D64
lbl_80078D60:
/* 80078D60 00073C60  38 00 00 00 */	li r0, 0
lbl_80078D64:
/* 80078D64 00073C64  90 05 00 00 */	stw r0, 0(r5)
/* 80078D68 00073C68  38 84 00 01 */	addi r4, r4, 1
/* 80078D6C 00073C6C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80078D70 00073C70  D0 05 00 04 */	stfs f0, 4(r5)
/* 80078D74 00073C74  38 A5 00 08 */	addi r5, r5, 8
lbl_80078D78:
/* 80078D78 00073C78  38 63 00 10 */	addi r3, r3, 0x10
/* 80078D7C 00073C7C  38 E7 00 01 */	addi r7, r7, 1
lbl_80078D80:
/* 80078D80 00073C80  80 1E 00 04 */	lwz r0, 4(r30)
/* 80078D84 00073C84  7C 07 00 00 */	cmpw r7, r0
/* 80078D88 00073C88  41 80 FF B4 */	blt lbl_80078D3C
/* 80078D8C 00073C8C  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80078D90 00073C90  54 80 18 38 */	slwi r0, r4, 3
/* 80078D94 00073C94  38 61 02 38 */	addi r3, r1, 0x238
/* 80078D98 00073C98  A0 85 00 1E */	lhz r4, 0x1e(r5)
/* 80078D9C 00073C9C  7C 63 02 14 */	add r3, r3, r0
/* 80078DA0 00073CA0  1C 84 00 0C */	mulli r4, r4, 0xc
/* 80078DA4 00073CA4  7D 0F 22 14 */	add r8, r15, r4
/* 80078DA8 00073CA8  48 00 01 10 */	b lbl_80078EB8
lbl_80078DAC:
/* 80078DAC 00073CAC  80 E1 02 38 */	lwz r7, 0x238(r1)
/* 80078DB0 00073CB0  38 A1 02 40 */	addi r5, r1, 0x240
/* 80078DB4 00073CB4  38 C3 00 07 */	addi r6, r3, 7
/* 80078DB8 00073CB8  C0 41 02 3C */	lfs f2, 0x23c(r1)
/* 80078DBC 00073CBC  E0 07 00 00 */	psq_l f0, 0(r7), 0, qr0
/* 80078DC0 00073CC0  7C C5 30 50 */	subf r6, r5, r6
/* 80078DC4 00073CC4  E0 27 80 08 */	psq_l f1, 8(r7), 1, qr0
/* 80078DC8 00073CC8  38 07 00 0C */	addi r0, r7, 0xc
/* 80078DCC 00073CCC  7C 05 18 40 */	cmplw r5, r3
/* 80078DD0 00073CD0  10 00 00 B2 */	ps_mul f0, f0, f2
/* 80078DD4 00073CD4  10 21 00 B2 */	ps_mul f1, f1, f2
/* 80078DD8 00073CD8  90 01 02 38 */	stw r0, 0x238(r1)
/* 80078DDC 00073CDC  54 C6 E8 FE */	srwi r6, r6, 3
/* 80078DE0 00073CE0  40 80 00 CC */	bge lbl_80078EAC
/* 80078DE4 00073CE4  54 C0 F0 BF */	rlwinm. r0, r6, 0x1e, 2, 0x1f
/* 80078DE8 00073CE8  7C 09 03 A6 */	mtctr r0
/* 80078DEC 00073CEC  41 82 00 94 */	beq lbl_80078E80
lbl_80078DF0:
/* 80078DF0 00073CF0  80 E5 00 00 */	lwz r7, 0(r5)
/* 80078DF4 00073CF4  C0 45 00 04 */	lfs f2, 4(r5)
/* 80078DF8 00073CF8  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80078DFC 00073CFC  38 07 00 0C */	addi r0, r7, 0xc
/* 80078E00 00073D00  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80078E04 00073D04  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80078E08 00073D08  90 05 00 00 */	stw r0, 0(r5)
/* 80078E0C 00073D0C  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 80078E10 00073D10  80 E5 00 08 */	lwz r7, 8(r5)
/* 80078E14 00073D14  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 80078E18 00073D18  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80078E1C 00073D1C  38 07 00 0C */	addi r0, r7, 0xc
/* 80078E20 00073D20  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80078E24 00073D24  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80078E28 00073D28  90 05 00 08 */	stw r0, 8(r5)
/* 80078E2C 00073D2C  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 80078E30 00073D30  80 E5 00 10 */	lwz r7, 0x10(r5)
/* 80078E34 00073D34  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 80078E38 00073D38  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80078E3C 00073D3C  38 07 00 0C */	addi r0, r7, 0xc
/* 80078E40 00073D40  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80078E44 00073D44  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80078E48 00073D48  90 05 00 10 */	stw r0, 0x10(r5)
/* 80078E4C 00073D4C  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 80078E50 00073D50  80 E5 00 18 */	lwz r7, 0x18(r5)
/* 80078E54 00073D54  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 80078E58 00073D58  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80078E5C 00073D5C  38 07 00 0C */	addi r0, r7, 0xc
/* 80078E60 00073D60  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80078E64 00073D64  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80078E68 00073D68  90 05 00 18 */	stw r0, 0x18(r5)
/* 80078E6C 00073D6C  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 80078E70 00073D70  38 A5 00 20 */	addi r5, r5, 0x20
/* 80078E74 00073D74  42 00 FF 7C */	bdnz lbl_80078DF0
/* 80078E78 00073D78  70 C6 00 03 */	andi. r6, r6, 3
/* 80078E7C 00073D7C  41 82 00 30 */	beq lbl_80078EAC
lbl_80078E80:
/* 80078E80 00073D80  7C C9 03 A6 */	mtctr r6
lbl_80078E84:
/* 80078E84 00073D84  80 E5 00 00 */	lwz r7, 0(r5)
/* 80078E88 00073D88  C0 45 00 04 */	lfs f2, 4(r5)
/* 80078E8C 00073D8C  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80078E90 00073D90  38 07 00 0C */	addi r0, r7, 0xc
/* 80078E94 00073D94  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80078E98 00073D98  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80078E9C 00073D9C  90 05 00 00 */	stw r0, 0(r5)
/* 80078EA0 00073DA0  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 80078EA4 00073DA4  38 A5 00 08 */	addi r5, r5, 8
/* 80078EA8 00073DA8  42 00 FF DC */	bdnz lbl_80078E84
lbl_80078EAC:
/* 80078EAC 00073DAC  F0 0F 00 00 */	psq_st f0, 0(r15), 0, qr0
/* 80078EB0 00073DB0  F0 2F 80 08 */	psq_st f1, 8(r15), 1, qr0
/* 80078EB4 00073DB4  39 EF 00 0C */	addi r15, r15, 0xc
lbl_80078EB8:
/* 80078EB8 00073DB8  7C 0F 40 40 */	cmplw r15, r8
/* 80078EBC 00073DBC  41 80 FE F0 */	blt lbl_80078DAC
/* 80078EC0 00073DC0  80 10 00 08 */	lwz r0, 8(r16)
/* 80078EC4 00073DC4  2C 00 00 00 */	cmpwi r0, 0
/* 80078EC8 00073DC8  41 82 00 0C */	beq lbl_80078ED4
/* 80078ECC 00073DCC  7C 70 02 14 */	add r3, r16, r0
/* 80078ED0 00073DD0  48 00 00 08 */	b lbl_80078ED8
lbl_80078ED4:
/* 80078ED4 00073DD4  38 60 00 00 */	li r3, 0
lbl_80078ED8:
/* 80078ED8 00073DD8  48 07 52 89 */	bl DCStoreRange
lbl_80078EDC:
/* 80078EDC 00073DDC  80 1E 00 00 */	lwz r0, 0(r30)
/* 80078EE0 00073DE0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80078EE4 00073DE4  41 82 02 24 */	beq lbl_80079108
/* 80078EE8 00073DE8  2C 1C 00 00 */	cmpwi r28, 0
/* 80078EEC 00073DEC  41 82 02 1C */	beq lbl_80079108
/* 80078EF0 00073DF0  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80078EF4 00073DF4  38 60 00 00 */	li r3, 0
/* 80078EF8 00073DF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80078EFC 00073DFC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80078F00 00073E00  54 00 10 3A */	slwi r0, r0, 2
/* 80078F04 00073E04  7E 1C 00 2E */	lwzx r16, r28, r0
/* 80078F08 00073E08  80 10 00 08 */	lwz r0, 8(r16)
/* 80078F0C 00073E0C  2C 00 00 00 */	cmpwi r0, 0
/* 80078F10 00073E10  41 82 00 0C */	beq lbl_80078F1C
/* 80078F14 00073E14  7D F0 02 14 */	add r15, r16, r0
/* 80078F18 00073E18  48 00 00 08 */	b lbl_80078F20
lbl_80078F1C:
/* 80078F1C 00073E1C  39 E0 00 00 */	li r15, 0
lbl_80078F20:
/* 80078F20 00073E20  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80078F24 00073E24  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80078F28 00073E28  41 82 00 28 */	beq lbl_80078F50
/* 80078F2C 00073E2C  38 61 00 18 */	addi r3, r1, 0x18
/* 80078F30 00073E30  38 81 00 14 */	addi r4, r1, 0x14
/* 80078F34 00073E34  38 A1 00 09 */	addi r5, r1, 9
/* 80078F38 00073E38  4B FD D9 39 */	bl GetArray__Q34nw4r3g3d9ResVtxNrmCFPPCvPUc
/* 80078F3C 00073E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078F40 00073E40  38 60 00 01 */	li r3, 1
/* 80078F44 00073E44  90 01 01 30 */	stw r0, 0x130(r1)
/* 80078F48 00073E48  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80078F4C 00073E4C  D0 01 01 34 */	stfs f0, 0x134(r1)
lbl_80078F50:
/* 80078F50 00073E50  54 60 18 38 */	slwi r0, r3, 3
/* 80078F54 00073E54  38 A1 01 30 */	addi r5, r1, 0x130
/* 80078F58 00073E58  7F C4 F3 78 */	mr r4, r30
/* 80078F5C 00073E5C  38 E0 00 00 */	li r7, 0
/* 80078F60 00073E60  7C A5 02 14 */	add r5, r5, r0
/* 80078F64 00073E64  48 00 00 48 */	b lbl_80078FAC
lbl_80078F68:
/* 80078F68 00073E68  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80078F6C 00073E6C  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80078F70 00073E70  41 82 00 34 */	beq lbl_80078FA4
/* 80078F74 00073E74  80 C4 00 1C */	lwz r6, 0x1c(r4)
/* 80078F78 00073E78  80 06 00 08 */	lwz r0, 8(r6)
/* 80078F7C 00073E7C  2C 00 00 00 */	cmpwi r0, 0
/* 80078F80 00073E80  41 82 00 0C */	beq lbl_80078F8C
/* 80078F84 00073E84  7C 06 02 14 */	add r0, r6, r0
/* 80078F88 00073E88  48 00 00 08 */	b lbl_80078F90
lbl_80078F8C:
/* 80078F8C 00073E8C  38 00 00 00 */	li r0, 0
lbl_80078F90:
/* 80078F90 00073E90  90 05 00 00 */	stw r0, 0(r5)
/* 80078F94 00073E94  38 63 00 01 */	addi r3, r3, 1
/* 80078F98 00073E98  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80078F9C 00073E9C  D0 05 00 04 */	stfs f0, 4(r5)
/* 80078FA0 00073EA0  38 A5 00 08 */	addi r5, r5, 8
lbl_80078FA4:
/* 80078FA4 00073EA4  38 84 00 10 */	addi r4, r4, 0x10
/* 80078FA8 00073EA8  38 E7 00 01 */	addi r7, r7, 1
lbl_80078FAC:
/* 80078FAC 00073EAC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80078FB0 00073EB0  7C 07 00 00 */	cmpw r7, r0
/* 80078FB4 00073EB4  41 80 FF B4 */	blt lbl_80078F68
/* 80078FB8 00073EB8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80078FBC 00073EBC  54 60 18 38 */	slwi r0, r3, 3
/* 80078FC0 00073EC0  38 61 01 30 */	addi r3, r1, 0x130
/* 80078FC4 00073EC4  A0 84 00 1E */	lhz r4, 0x1e(r4)
/* 80078FC8 00073EC8  7C 63 02 14 */	add r3, r3, r0
/* 80078FCC 00073ECC  1C 84 00 0C */	mulli r4, r4, 0xc
/* 80078FD0 00073ED0  7D 0F 22 14 */	add r8, r15, r4
/* 80078FD4 00073ED4  48 00 01 10 */	b lbl_800790E4
lbl_80078FD8:
/* 80078FD8 00073ED8  80 E1 01 30 */	lwz r7, 0x130(r1)
/* 80078FDC 00073EDC  38 A1 01 38 */	addi r5, r1, 0x138
/* 80078FE0 00073EE0  38 C3 00 07 */	addi r6, r3, 7
/* 80078FE4 00073EE4  C0 41 01 34 */	lfs f2, 0x134(r1)
/* 80078FE8 00073EE8  E0 07 00 00 */	psq_l f0, 0(r7), 0, qr0
/* 80078FEC 00073EEC  7C C5 30 50 */	subf r6, r5, r6
/* 80078FF0 00073EF0  E0 27 80 08 */	psq_l f1, 8(r7), 1, qr0
/* 80078FF4 00073EF4  38 07 00 0C */	addi r0, r7, 0xc
/* 80078FF8 00073EF8  7C 05 18 40 */	cmplw r5, r3
/* 80078FFC 00073EFC  10 00 00 B2 */	ps_mul f0, f0, f2
/* 80079000 00073F00  10 21 00 B2 */	ps_mul f1, f1, f2
/* 80079004 00073F04  90 01 01 30 */	stw r0, 0x130(r1)
/* 80079008 00073F08  54 C6 E8 FE */	srwi r6, r6, 3
/* 8007900C 00073F0C  40 80 00 CC */	bge lbl_800790D8
/* 80079010 00073F10  54 C0 F0 BF */	rlwinm. r0, r6, 0x1e, 2, 0x1f
/* 80079014 00073F14  7C 09 03 A6 */	mtctr r0
/* 80079018 00073F18  41 82 00 94 */	beq lbl_800790AC
lbl_8007901C:
/* 8007901C 00073F1C  80 E5 00 00 */	lwz r7, 0(r5)
/* 80079020 00073F20  C0 45 00 04 */	lfs f2, 4(r5)
/* 80079024 00073F24  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80079028 00073F28  38 07 00 0C */	addi r0, r7, 0xc
/* 8007902C 00073F2C  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80079030 00073F30  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80079034 00073F34  90 05 00 00 */	stw r0, 0(r5)
/* 80079038 00073F38  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 8007903C 00073F3C  80 E5 00 08 */	lwz r7, 8(r5)
/* 80079040 00073F40  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 80079044 00073F44  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80079048 00073F48  38 07 00 0C */	addi r0, r7, 0xc
/* 8007904C 00073F4C  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80079050 00073F50  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80079054 00073F54  90 05 00 08 */	stw r0, 8(r5)
/* 80079058 00073F58  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 8007905C 00073F5C  80 E5 00 10 */	lwz r7, 0x10(r5)
/* 80079060 00073F60  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 80079064 00073F64  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80079068 00073F68  38 07 00 0C */	addi r0, r7, 0xc
/* 8007906C 00073F6C  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80079070 00073F70  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80079074 00073F74  90 05 00 10 */	stw r0, 0x10(r5)
/* 80079078 00073F78  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 8007907C 00073F7C  80 E5 00 18 */	lwz r7, 0x18(r5)
/* 80079080 00073F80  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 80079084 00073F84  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 80079088 00073F88  38 07 00 0C */	addi r0, r7, 0xc
/* 8007908C 00073F8C  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 80079090 00073F90  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80079094 00073F94  90 05 00 18 */	stw r0, 0x18(r5)
/* 80079098 00073F98  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 8007909C 00073F9C  38 A5 00 20 */	addi r5, r5, 0x20
/* 800790A0 00073FA0  42 00 FF 7C */	bdnz lbl_8007901C
/* 800790A4 00073FA4  70 C6 00 03 */	andi. r6, r6, 3
/* 800790A8 00073FA8  41 82 00 30 */	beq lbl_800790D8
lbl_800790AC:
/* 800790AC 00073FAC  7C C9 03 A6 */	mtctr r6
lbl_800790B0:
/* 800790B0 00073FB0  80 E5 00 00 */	lwz r7, 0(r5)
/* 800790B4 00073FB4  C0 45 00 04 */	lfs f2, 4(r5)
/* 800790B8 00073FB8  E0 67 00 00 */	psq_l f3, 0(r7), 0, qr0
/* 800790BC 00073FBC  38 07 00 0C */	addi r0, r7, 0xc
/* 800790C0 00073FC0  E0 87 80 08 */	psq_l f4, 8(r7), 1, qr0
/* 800790C4 00073FC4  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 800790C8 00073FC8  90 05 00 00 */	stw r0, 0(r5)
/* 800790CC 00073FCC  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 800790D0 00073FD0  38 A5 00 08 */	addi r5, r5, 8
/* 800790D4 00073FD4  42 00 FF DC */	bdnz lbl_800790B0
lbl_800790D8:
/* 800790D8 00073FD8  F0 0F 00 00 */	psq_st f0, 0(r15), 0, qr0
/* 800790DC 00073FDC  F0 2F 80 08 */	psq_st f1, 8(r15), 1, qr0
/* 800790E0 00073FE0  39 EF 00 0C */	addi r15, r15, 0xc
lbl_800790E4:
/* 800790E4 00073FE4  7C 0F 40 40 */	cmplw r15, r8
/* 800790E8 00073FE8  41 80 FE F0 */	blt lbl_80078FD8
/* 800790EC 00073FEC  80 10 00 08 */	lwz r0, 8(r16)
/* 800790F0 00073FF0  2C 00 00 00 */	cmpwi r0, 0
/* 800790F4 00073FF4  41 82 00 0C */	beq lbl_80079100
/* 800790F8 00073FF8  7C 70 02 14 */	add r3, r16, r0
/* 800790FC 00073FFC  48 00 00 08 */	b lbl_80079104
lbl_80079100:
/* 80079100 00074000  38 60 00 00 */	li r3, 0
lbl_80079104:
/* 80079104 00074004  48 07 50 5D */	bl DCStoreRange
lbl_80079108:
/* 80079108 00074008  80 1E 00 00 */	lwz r0, 0(r30)
/* 8007910C 0007400C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80079110 00074010  41 82 01 88 */	beq lbl_80079298
/* 80079114 00074014  2C 1D 00 00 */	cmpwi r29, 0
/* 80079118 00074018  41 82 01 80 */	beq lbl_80079298
/* 8007911C 0007401C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80079120 00074020  38 60 00 00 */	li r3, 0
/* 80079124 00074024  90 81 00 10 */	stw r4, 0x10(r1)
/* 80079128 00074028  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8007912C 0007402C  54 00 10 3A */	slwi r0, r0, 2
/* 80079130 00074030  7E 1D 00 2E */	lwzx r16, r29, r0
/* 80079134 00074034  80 10 00 08 */	lwz r0, 8(r16)
/* 80079138 00074038  2C 00 00 00 */	cmpwi r0, 0
/* 8007913C 0007403C  41 82 00 0C */	beq lbl_80079148
/* 80079140 00074040  7D F0 02 14 */	add r15, r16, r0
/* 80079144 00074044  48 00 00 08 */	b lbl_8007914C
lbl_80079148:
/* 80079148 00074048  39 E0 00 00 */	li r15, 0
lbl_8007914C:
/* 8007914C 0007404C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80079150 00074050  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80079154 00074054  41 82 00 28 */	beq lbl_8007917C
/* 80079158 00074058  38 61 00 10 */	addi r3, r1, 0x10
/* 8007915C 0007405C  38 81 00 0C */	addi r4, r1, 0xc
/* 80079160 00074060  38 A1 00 08 */	addi r5, r1, 8
/* 80079164 00074064  4B FD D7 E9 */	bl GetArray__Q34nw4r3g3d9ResVtxClrCFPPCvPUc
/* 80079168 00074068  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007916C 0007406C  38 60 00 01 */	li r3, 1
/* 80079170 00074070  90 01 00 28 */	stw r0, 0x28(r1)
/* 80079174 00074074  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80079178 00074078  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_8007917C:
/* 8007917C 0007407C  54 60 18 38 */	slwi r0, r3, 3
/* 80079180 00074080  38 A1 00 28 */	addi r5, r1, 0x28
/* 80079184 00074084  7F C4 F3 78 */	mr r4, r30
/* 80079188 00074088  38 E0 00 00 */	li r7, 0
/* 8007918C 0007408C  7C A5 02 14 */	add r5, r5, r0
/* 80079190 00074090  48 00 00 48 */	b lbl_800791D8
lbl_80079194:
/* 80079194 00074094  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80079198 00074098  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8007919C 0007409C  41 82 00 34 */	beq lbl_800791D0
/* 800791A0 000740A0  80 C4 00 20 */	lwz r6, 0x20(r4)
/* 800791A4 000740A4  80 06 00 08 */	lwz r0, 8(r6)
/* 800791A8 000740A8  2C 00 00 00 */	cmpwi r0, 0
/* 800791AC 000740AC  41 82 00 0C */	beq lbl_800791B8
/* 800791B0 000740B0  7C 06 02 14 */	add r0, r6, r0
/* 800791B4 000740B4  48 00 00 08 */	b lbl_800791BC
lbl_800791B8:
/* 800791B8 000740B8  38 00 00 00 */	li r0, 0
lbl_800791BC:
/* 800791BC 000740BC  90 05 00 00 */	stw r0, 0(r5)
/* 800791C0 000740C0  38 63 00 01 */	addi r3, r3, 1
/* 800791C4 000740C4  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 800791C8 000740C8  D0 05 00 04 */	stfs f0, 4(r5)
/* 800791CC 000740CC  38 A5 00 08 */	addi r5, r5, 8
lbl_800791D0:
/* 800791D0 000740D0  38 84 00 10 */	addi r4, r4, 0x10
/* 800791D4 000740D4  38 E7 00 01 */	addi r7, r7, 1
lbl_800791D8:
/* 800791D8 000740D8  80 1E 00 04 */	lwz r0, 4(r30)
/* 800791DC 000740DC  7C 07 00 00 */	cmpw r7, r0
/* 800791E0 000740E0  41 80 FF B4 */	blt lbl_80079194
/* 800791E4 000740E4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800791E8 000740E8  54 60 18 38 */	slwi r0, r3, 3
/* 800791EC 000740EC  38 61 00 28 */	addi r3, r1, 0x28
/* 800791F0 000740F0  A0 84 00 1E */	lhz r4, 0x1e(r4)
/* 800791F4 000740F4  7C 63 02 14 */	add r3, r3, r0
/* 800791F8 000740F8  54 84 10 3A */	slwi r4, r4, 2
/* 800791FC 000740FC  7C CF 22 14 */	add r6, r15, r4
/* 80079200 00074100  48 00 00 74 */	b lbl_80079274
lbl_80079204:
/* 80079204 00074104  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 80079208 00074108  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8007920C 0007410C  E0 05 20 00 */	psq_l f0, 0(r5), 0, qr2
/* 80079210 00074110  E0 25 20 02 */	psq_l f1, 2(r5), 0, qr2
/* 80079214 00074114  38 E1 00 30 */	addi r7, r1, 0x30
/* 80079218 00074118  38 03 00 07 */	addi r0, r3, 7
/* 8007921C 0007411C  38 A5 00 04 */	addi r5, r5, 4
/* 80079220 00074120  7C 07 00 50 */	subf r0, r7, r0
/* 80079224 00074124  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80079228 00074128  54 00 E8 FE */	srwi r0, r0, 3
/* 8007922C 0007412C  10 00 00 B2 */	ps_mul f0, f0, f2
/* 80079230 00074130  10 21 00 B2 */	ps_mul f1, f1, f2
/* 80079234 00074134  7C 09 03 A6 */	mtctr r0
/* 80079238 00074138  7C 07 18 40 */	cmplw r7, r3
/* 8007923C 0007413C  40 80 00 2C */	bge lbl_80079268
lbl_80079240:
/* 80079240 00074140  80 A7 00 00 */	lwz r5, 0(r7)
/* 80079244 00074144  C0 47 00 04 */	lfs f2, 4(r7)
/* 80079248 00074148  E0 65 20 00 */	psq_l f3, 0(r5), 0, qr2
/* 8007924C 0007414C  E0 85 20 02 */	psq_l f4, 2(r5), 0, qr2
/* 80079250 00074150  38 05 00 04 */	addi r0, r5, 4
/* 80079254 00074154  10 03 00 BA */	ps_madd f0, f3, f2, f0
/* 80079258 00074158  90 07 00 00 */	stw r0, 0(r7)
/* 8007925C 0007415C  10 24 08 BA */	ps_madd f1, f4, f2, f1
/* 80079260 00074160  38 E7 00 08 */	addi r7, r7, 8
/* 80079264 00074164  42 00 FF DC */	bdnz lbl_80079240
lbl_80079268:
/* 80079268 00074168  F0 0F 20 00 */	psq_st f0, 0(r15), 0, qr2
/* 8007926C 0007416C  F0 2F 20 02 */	psq_st f1, 2(r15), 0, qr2
/* 80079270 00074170  39 EF 00 04 */	addi r15, r15, 4
lbl_80079274:
/* 80079274 00074174  7C 0F 30 40 */	cmplw r15, r6
/* 80079278 00074178  41 80 FF 8C */	blt lbl_80079204
/* 8007927C 0007417C  80 10 00 08 */	lwz r0, 8(r16)
/* 80079280 00074180  2C 00 00 00 */	cmpwi r0, 0
/* 80079284 00074184  41 82 00 0C */	beq lbl_80079290
/* 80079288 00074188  7C 70 02 14 */	add r3, r16, r0
/* 8007928C 0007418C  48 00 00 08 */	b lbl_80079294
lbl_80079290:
/* 80079290 00074190  38 60 00 00 */	li r3, 0
lbl_80079294:
/* 80079294 00074194  48 07 4E CD */	bl DCStoreRange
lbl_80079298:
/* 80079298 00074198  3B 7B 00 04 */	addi r27, r27, 4
/* 8007929C 0007419C  3B FF 00 01 */	addi r31, r31, 1
lbl_800792A0:
/* 800792A0 000741A0  7C 1F B8 40 */	cmplw r31, r23
/* 800792A4 000741A4  41 80 F8 A0 */	blt lbl_80078B44
/* 800792A8 000741A8  E3 E1 05 A8 */	psq_l f31, 1448(r1), 0, qr0
/* 800792AC 000741AC  39 61 05 A0 */	addi r11, r1, 0x5a0
/* 800792B0 000741B0  CB E1 05 A0 */	lfd f31, 0x5a0(r1)
/* 800792B4 000741B4  48 03 8A A9 */	bl _restgpr_14
/* 800792B8 000741B8  80 01 05 B4 */	lwz r0, 0x5b4(r1)
/* 800792BC 000741BC  7C 08 03 A6 */	mtlr r0
/* 800792C0 000741C0  38 21 05 B0 */	addi r1, r1, 0x5b0
/* 800792C4 000741C4  4E 80 00 20 */	blr 