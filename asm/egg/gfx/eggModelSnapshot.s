.include "macros.inc"

.section .text, "ax"

.global func_80096550
func_80096550:
/* 80096550 00091450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80096554 00091454  7C 08 02 A6 */	mflr r0
/* 80096558 00091458  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009655C 0009145C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80096560 00091460  7C FF 3B 78 */	mr r31, r7
/* 80096564 00091464  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80096568 00091468  7C BE 2B 78 */	mr r30, r5
/* 8009656C 0009146C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80096570 00091470  7C 9D 23 78 */	mr r29, r4
/* 80096574 00091474  93 81 00 10 */	stw r28, 0x10(r1)
/* 80096578 00091478  7C 7C 1B 78 */	mr r28, r3
/* 8009657C 0009147C  4B FF 00 E1 */	bl __ct__Q23EGG10CpuTextureFUsUs9_GXTexFmt
/* 80096580 00091480  C0 02 8D 68 */	lfs f0, lbl_804C0788-_SDA2_BASE_(r2)
/* 80096584 00091484  3C 60 80 39 */	lis r3, lbl_80397C30@ha
/* 80096588 00091488  38 00 00 00 */	li r0, 0
/* 8009658C 0009148C  2C 1F 00 00 */	cmpwi r31, 0
/* 80096590 00091490  38 63 7C 30 */	addi r3, r3, lbl_80397C30@l
/* 80096594 00091494  B3 FC 00 2C */	sth r31, 0x2c(r28)
/* 80096598 00091498  90 7C 00 14 */	stw r3, 0x14(r28)
/* 8009659C 0009149C  B3 BC 00 2E */	sth r29, 0x2e(r28)
/* 800965A0 000914A0  B3 DC 00 30 */	sth r30, 0x30(r28)
/* 800965A4 000914A4  98 1C 00 34 */	stb r0, 0x34(r28)
/* 800965A8 000914A8  90 1C 00 38 */	stw r0, 0x38(r28)
/* 800965AC 000914AC  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 800965B0 000914B0  D0 1C 00 50 */	stfs f0, 0x50(r28)
/* 800965B4 000914B4  D0 1C 00 54 */	stfs f0, 0x54(r28)
/* 800965B8 000914B8  D0 1C 00 58 */	stfs f0, 0x58(r28)
/* 800965BC 000914BC  D0 1C 00 5C */	stfs f0, 0x5c(r28)
/* 800965C0 000914C0  D0 1C 00 60 */	stfs f0, 0x60(r28)
/* 800965C4 000914C4  D0 1C 00 64 */	stfs f0, 0x64(r28)
/* 800965C8 000914C8  D0 1C 00 68 */	stfs f0, 0x68(r28)
/* 800965CC 000914CC  D0 1C 00 6C */	stfs f0, 0x6c(r28)
/* 800965D0 000914D0  40 82 00 1C */	bne lbl_800965EC
/* 800965D4 000914D4  3C 60 80 38 */	lis r3, lbl_80379AD8@ha
/* 800965D8 000914D8  38 80 00 25 */	li r4, 0x25
/* 800965DC 000914DC  38 63 9A D8 */	addi r3, r3, lbl_80379AD8@l
/* 800965E0 000914E0  38 A3 00 15 */	addi r5, r3, 0x15
/* 800965E4 000914E4  4C C6 31 82 */	crclr 6
/* 800965E8 000914E8  48 00 B9 21 */	bl system_halt
lbl_800965EC:
/* 800965EC 000914EC  81 9C 00 14 */	lwz r12, 0x14(r28)
/* 800965F0 000914F0  7F 83 E3 78 */	mr r3, r28
/* 800965F4 000914F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800965F8 000914F8  7D 89 03 A6 */	mtctr r12
/* 800965FC 000914FC  4E 80 04 21 */	bctrl 
/* 80096600 00091500  7F 83 E3 78 */	mr r3, r28
/* 80096604 00091504  4B FF 0C 61 */	bl allocTexBufferAndHeader__Q23EGG10CpuTextureFv
/* 80096608 00091508  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 8009660C 0009150C  48 00 CC 55 */	bl __nwa__FUl
/* 80096610 00091510  C0 02 8D 68 */	lfs f0, lbl_804C0788-_SDA2_BASE_(r2)
/* 80096614 00091514  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80096618 00091518  7F 83 E3 78 */	mr r3, r28
/* 8009661C 0009151C  D0 1C 00 44 */	stfs f0, 0x44(r28)
/* 80096620 00091520  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80096624 00091524  D0 1C 00 4C */	stfs f0, 0x4c(r28)
/* 80096628 00091528  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 8009662C 0009152C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80096630 00091530  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80096634 00091534  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80096638 00091538  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8009663C 0009153C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80096640 00091540  7C 08 03 A6 */	mtlr r0
/* 80096644 00091544  38 21 00 20 */	addi r1, r1, 0x20
/* 80096648 00091548  4E 80 00 20 */	blr 

.global func_8009664C
func_8009664C:
/* 8009664C 0009154C  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80096650 00091550  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80096654 00091554  7D 89 03 A6 */	mtctr r12
/* 80096658 00091558  4E 80 04 20 */	bctr 
/* 8009665C 0009155C  38 A0 00 00 */	li r5, 0
/* 80096660 00091560  C0 02 8D 6C */	lfs f0, lbl_804C078C-_SDA2_BASE_(r2)
/* 80096664 00091564  B0 A3 00 32 */	sth r5, 0x32(r3)
/* 80096668 00091568  38 E0 00 00 */	li r7, 0
/* 8009666C 0009156C  38 C0 00 00 */	li r6, 0
/* 80096670 00091570  48 00 00 2C */	b lbl_8009669C
lbl_80096674:
/* 80096674 00091574  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 80096678 00091578  38 E7 00 01 */	addi r7, r7, 1
/* 8009667C 0009157C  7C A4 31 2E */	stwx r5, r4, r6
/* 80096680 00091580  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80096684 00091584  7C 80 32 14 */	add r4, r0, r6
/* 80096688 00091588  D0 04 00 04 */	stfs f0, 4(r4)
/* 8009668C 0009158C  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80096690 00091590  7C 80 32 14 */	add r4, r0, r6
/* 80096694 00091594  38 C6 00 0C */	addi r6, r6, 0xc
/* 80096698 00091598  98 A4 00 08 */	stb r5, 8(r4)
lbl_8009669C:
/* 8009669C 0009159C  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 800966A0 000915A0  7C 07 00 00 */	cmpw r7, r0
/* 800966A4 000915A4  41 80 FF D0 */	blt lbl_80096674
/* 800966A8 000915A8  4E 80 00 20 */	blr 

.global func_800966AC
func_800966AC:
/* 800966AC 000915AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800966B0 000915B0  7C 08 02 A6 */	mflr r0
/* 800966B4 000915B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800966B8 000915B8  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 800966BC 000915BC  FF E0 08 90 */	fmr f31, f1
/* 800966C0 000915C0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800966C4 000915C4  7C 7F 1B 78 */	mr r31, r3
/* 800966C8 000915C8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800966CC 000915CC  7C 9E 23 78 */	mr r30, r4
/* 800966D0 000915D0  A0 A3 00 32 */	lhz r5, 0x32(r3)
/* 800966D4 000915D4  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 800966D8 000915D8  7C 05 00 40 */	cmplw r5, r0
/* 800966DC 000915DC  41 80 00 1C */	blt lbl_800966F8
/* 800966E0 000915E0  3C 60 80 38 */	lis r3, lbl_80379AD8@ha
/* 800966E4 000915E4  38 80 00 53 */	li r4, 0x53
/* 800966E8 000915E8  38 63 9A D8 */	addi r3, r3, lbl_80379AD8@l
/* 800966EC 000915EC  38 A3 00 20 */	addi r5, r3, 0x20
/* 800966F0 000915F0  4C C6 31 82 */	crclr 6
/* 800966F4 000915F4  48 00 B8 15 */	bl system_halt
lbl_800966F8:
/* 800966F8 000915F8  2C 1E 00 00 */	cmpwi r30, 0
/* 800966FC 000915FC  40 82 00 1C */	bne lbl_80096718
/* 80096700 00091600  3C 60 80 38 */	lis r3, lbl_80379AD8@ha
/* 80096704 00091604  38 80 00 54 */	li r4, 0x54
/* 80096708 00091608  38 63 9A D8 */	addi r3, r3, lbl_80379AD8@l
/* 8009670C 0009160C  38 A3 00 34 */	addi r5, r3, 0x34
/* 80096710 00091610  4C C6 31 82 */	crclr 6
/* 80096714 00091614  48 00 B7 F5 */	bl system_halt
lbl_80096718:
/* 80096718 00091618  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8009671C 0009161C  2C 00 00 00 */	cmpwi r0, 0
/* 80096720 00091620  40 82 00 1C */	bne lbl_8009673C
/* 80096724 00091624  3C 60 80 38 */	lis r3, lbl_80379AD8@ha
/* 80096728 00091628  38 80 00 55 */	li r4, 0x55
/* 8009672C 0009162C  38 63 9A D8 */	addi r3, r3, lbl_80379AD8@l
/* 80096730 00091630  38 A3 00 3B */	addi r5, r3, 0x3b
/* 80096734 00091634  4C C6 31 82 */	crclr 6
/* 80096738 00091638  48 00 B7 D1 */	bl system_halt
lbl_8009673C:
/* 8009673C 0009163C  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 80096740 00091640  38 80 00 00 */	li r4, 0
/* 80096744 00091644  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80096748 00091648  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8009674C 0009164C  7F C3 01 2E */	stwx r30, r3, r0
/* 80096750 00091650  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 80096754 00091654  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80096758 00091658  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8009675C 0009165C  7C 63 02 14 */	add r3, r3, r0
/* 80096760 00091660  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80096764 00091664  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 80096768 00091668  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8009676C 0009166C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80096770 00091670  7C 63 02 14 */	add r3, r3, r0
/* 80096774 00091674  98 83 00 08 */	stb r4, 8(r3)
/* 80096778 00091678  A0 7F 00 32 */	lhz r3, 0x32(r31)
/* 8009677C 0009167C  38 03 00 01 */	addi r0, r3, 1
/* 80096780 00091680  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 80096784 00091684  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80096788 00091688  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8009678C 0009168C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80096790 00091690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80096794 00091694  7C 08 03 A6 */	mtlr r0
/* 80096798 00091698  38 21 00 20 */	addi r1, r1, 0x20
/* 8009679C 0009169C  4E 80 00 20 */	blr 

.global func_800967A0
func_800967A0:
/* 800967A0 000916A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800967A4 000916A4  7C 08 02 A6 */	mflr r0
/* 800967A8 000916A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 800967AC 000916AC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800967B0 000916B0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 800967B4 000916B4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 800967B8 000916B8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 800967BC 000916BC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 800967C0 000916C0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 800967C4 000916C4  39 61 00 40 */	addi r11, r1, 0x40
/* 800967C8 000916C8  48 01 B5 75 */	bl _savegpr_25
/* 800967CC 000916CC  A0 03 00 32 */	lhz r0, 0x32(r3)
/* 800967D0 000916D0  FF E0 08 90 */	fmr f31, f1
/* 800967D4 000916D4  7C 79 1B 78 */	mr r25, r3
/* 800967D8 000916D8  2C 00 00 00 */	cmpwi r0, 0
/* 800967DC 000916DC  41 82 01 94 */	beq lbl_80096970
/* 800967E0 000916E0  88 03 00 34 */	lbz r0, 0x34(r3)
/* 800967E4 000916E4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800967E8 000916E8  41 82 00 24 */	beq lbl_8009680C
/* 800967EC 000916EC  C0 63 00 5C */	lfs f3, 0x5c(r3)
/* 800967F0 000916F0  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 800967F4 000916F4  C0 23 00 64 */	lfs f1, 0x64(r3)
/* 800967F8 000916F8  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 800967FC 000916FC  D0 63 00 50 */	stfs f3, 0x50(r3)
/* 80096800 00091700  D0 43 00 54 */	stfs f2, 0x54(r3)
/* 80096804 00091704  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 80096808 00091708  D0 03 00 68 */	stfs f0, 0x68(r3)
lbl_8009680C:
/* 8009680C 0009170C  C3 C2 8D 70 */	lfs f30, lbl_804C0790-_SDA2_BASE_(r2)
/* 80096810 00091710  3B 40 00 00 */	li r26, 0
/* 80096814 00091714  C3 A2 8D 68 */	lfs f29, lbl_804C0788-_SDA2_BASE_(r2)
/* 80096818 00091718  3B 60 00 00 */	li r27, 0
/* 8009681C 0009171C  3F A0 80 38 */	lis r29, 0x8038
/* 80096820 00091720  3F C0 80 39 */	lis r30, 0x8039
/* 80096824 00091724  3F E0 80 39 */	lis r31, 0x8039
/* 80096828 00091728  48 00 01 2C */	b lbl_80096954
lbl_8009682C:
/* 8009682C 0009172C  80 79 00 3C */	lwz r3, 0x3c(r25)
/* 80096830 00091730  7F 83 D8 2E */	lwzx r28, r3, r27
/* 80096834 00091734  2C 1C 00 00 */	cmpwi r28, 0
/* 80096838 00091738  40 82 00 18 */	bne lbl_80096850
/* 8009683C 0009173C  38 7D 9A D8 */	addi r3, r29, -25896
/* 80096840 00091740  38 80 00 75 */	li r4, 0x75
/* 80096844 00091744  38 A3 00 34 */	addi r5, r3, 0x34
/* 80096848 00091748  4C C6 31 82 */	crclr 6
/* 8009684C 0009174C  48 00 B6 BD */	bl system_halt
lbl_80096850:
/* 80096850 00091750  83 9C 00 0C */	lwz r28, 0xc(r28)
/* 80096854 00091754  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80096858 00091758  2C 00 00 00 */	cmpwi r0, 0
/* 8009685C 0009175C  40 82 00 18 */	bne lbl_80096874
/* 80096860 00091760  38 7E 7C 5C */	addi r3, r30, 0x7c5c
/* 80096864 00091764  38 BF 7C 50 */	addi r5, r31, 0x7c50
/* 80096868 00091768  38 80 00 63 */	li r4, 0x63
/* 8009686C 0009176C  4C C6 31 82 */	crclr 6
/* 80096870 00091770  48 00 B6 99 */	bl system_halt
lbl_80096874:
/* 80096874 00091774  2C 1A 00 00 */	cmpwi r26, 0
/* 80096878 00091778  83 9C 00 10 */	lwz r28, 0x10(r28)
/* 8009687C 0009177C  40 81 00 A4 */	ble lbl_80096920
/* 80096880 00091780  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80096884 00091784  38 61 00 08 */	addi r3, r1, 8
/* 80096888 00091788  C0 19 00 58 */	lfs f0, 0x58(r25)
/* 8009688C 0009178C  C0 7C 00 08 */	lfs f3, 8(r28)
/* 80096890 00091790  EC 81 00 28 */	fsubs f4, f1, f0
/* 80096894 00091794  C0 59 00 54 */	lfs f2, 0x54(r25)
/* 80096898 00091798  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8009689C 0009179C  C0 19 00 50 */	lfs f0, 0x50(r25)
/* 800968A0 000917A0  EC 43 10 28 */	fsubs f2, f3, f2
/* 800968A4 000917A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800968A8 000917A8  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 800968AC 000917AC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800968B0 000917B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 800968B4 000917B4  48 05 1C A5 */	bl PSVECMag
/* 800968B8 000917B8  C0 5C 00 00 */	lfs f2, 0(r28)
/* 800968BC 000917BC  C0 19 00 68 */	lfs f0, 0x68(r25)
/* 800968C0 000917C0  EC 41 10 2A */	fadds f2, f1, f2
/* 800968C4 000917C4  EC 82 00 28 */	fsubs f4, f2, f0
/* 800968C8 000917C8  FC 04 E8 40 */	fcmpo cr0, f4, f29
/* 800968CC 000917CC  40 81 00 80 */	ble lbl_8009694C
/* 800968D0 000917D0  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 800968D4 000917D4  EC 84 07 B2 */	fmuls f4, f4, f30
/* 800968D8 000917D8  40 81 00 38 */	ble lbl_80096910
/* 800968DC 000917DC  EC A4 08 24 */	fdivs f5, f4, f1
/* 800968E0 000917E0  C0 61 00 08 */	lfs f3, 8(r1)
/* 800968E4 000917E4  C0 59 00 50 */	lfs f2, 0x50(r25)
/* 800968E8 000917E8  C0 39 00 54 */	lfs f1, 0x54(r25)
/* 800968EC 000917EC  C0 19 00 58 */	lfs f0, 0x58(r25)
/* 800968F0 000917F0  EC 43 11 7A */	fmadds f2, f3, f5, f2
/* 800968F4 000917F4  D0 59 00 50 */	stfs f2, 0x50(r25)
/* 800968F8 000917F8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 800968FC 000917FC  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 80096900 00091800  D0 39 00 54 */	stfs f1, 0x54(r25)
/* 80096904 00091804  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80096908 00091808  EC 01 01 7A */	fmadds f0, f1, f5, f0
/* 8009690C 0009180C  D0 19 00 58 */	stfs f0, 0x58(r25)
lbl_80096910:
/* 80096910 00091810  C0 19 00 68 */	lfs f0, 0x68(r25)
/* 80096914 00091814  EC 00 20 2A */	fadds f0, f0, f4
/* 80096918 00091818  D0 19 00 68 */	stfs f0, 0x68(r25)
/* 8009691C 0009181C  48 00 00 30 */	b lbl_8009694C
lbl_80096920:
/* 80096920 00091820  88 19 00 34 */	lbz r0, 0x34(r25)
/* 80096924 00091824  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80096928 00091828  40 82 00 24 */	bne lbl_8009694C
/* 8009692C 0009182C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80096930 00091830  D0 19 00 50 */	stfs f0, 0x50(r25)
/* 80096934 00091834  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80096938 00091838  D0 19 00 54 */	stfs f0, 0x54(r25)
/* 8009693C 0009183C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80096940 00091840  D0 19 00 58 */	stfs f0, 0x58(r25)
/* 80096944 00091844  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80096948 00091848  D0 19 00 68 */	stfs f0, 0x68(r25)
lbl_8009694C:
/* 8009694C 0009184C  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80096950 00091850  3B 5A 00 01 */	addi r26, r26, 1
lbl_80096954:
/* 80096954 00091854  A0 19 00 32 */	lhz r0, 0x32(r25)
/* 80096958 00091858  7C 1A 00 00 */	cmpw r26, r0
/* 8009695C 0009185C  41 80 FE D0 */	blt lbl_8009682C
/* 80096960 00091860  C0 19 00 68 */	lfs f0, 0x68(r25)
/* 80096964 00091864  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80096968 00091868  D0 19 00 68 */	stfs f0, 0x68(r25)
/* 8009696C 0009186C  48 00 00 18 */	b lbl_80096984
lbl_80096970:
/* 80096970 00091870  C0 02 8D 68 */	lfs f0, lbl_804C0788-_SDA2_BASE_(r2)
/* 80096974 00091874  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80096978 00091878  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 8009697C 0009187C  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80096980 00091880  D0 03 00 50 */	stfs f0, 0x50(r3)
lbl_80096984:
/* 80096984 00091884  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80096988 00091888  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8009698C 0009188C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80096990 00091890  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80096994 00091894  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80096998 00091898  39 61 00 40 */	addi r11, r1, 0x40
/* 8009699C 0009189C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800969A0 000918A0  48 01 B3 E9 */	bl _restgpr_25
/* 800969A4 000918A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800969A8 000918A8  7C 08 03 A6 */	mtlr r0
/* 800969AC 000918AC  38 21 00 70 */	addi r1, r1, 0x70
/* 800969B0 000918B0  4E 80 00 20 */	blr 
/* 800969B4 000918B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800969B8 000918B8  7C 08 02 A6 */	mflr r0
/* 800969BC 000918BC  2C 03 00 00 */	cmpwi r3, 0
/* 800969C0 000918C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800969C4 000918C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800969C8 000918C8  7C 7F 1B 78 */	mr r31, r3
/* 800969CC 000918CC  41 82 00 10 */	beq lbl_800969DC
/* 800969D0 000918D0  2C 04 00 00 */	cmpwi r4, 0
/* 800969D4 000918D4  40 81 00 08 */	ble lbl_800969DC
/* 800969D8 000918D8  48 00 C8 AD */	bl __dl__FPv
lbl_800969DC:
/* 800969DC 000918DC  7F E3 FB 78 */	mr r3, r31
/* 800969E0 000918E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800969E4 000918E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800969E8 000918E8  7C 08 03 A6 */	mtlr r0
/* 800969EC 000918EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800969F0 000918F0  4E 80 00 20 */	blr 
