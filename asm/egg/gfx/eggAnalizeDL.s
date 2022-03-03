.include "macros.inc"

.section .ctors, "a"
	.4byte __sinit_$$3eggAnalizeDL_cpp

.section .bss, "wa"
.balign 0x8
.global lbl_8040A660
lbl_8040A660:
	.skip 0xB0
.global lbl_8040A710
lbl_8040A710:
	.skip 0xD0
.global lbl_8040A7E0
lbl_8040A7E0:
	.skip 0x50

.section .rodata, "a"
.balign 0x8
.global lbl_80378DC0
lbl_80378DC0:
	.string "eggAnalizeDL.cpp"
    .string "vtxDesc"
    .string "vtxAttr"
    .string "i_idx >= nw4r::g3d::ResPrePrimDL::SIZE_GXVTXATTRFMTLIST"

.section .sbss, "wa"
.balign 0x8
.global lbl_804BEBD8
lbl_804BEBD8:
	.skip 0x8

.section .sdata2, "a"
.balign 0x8
.global lbl_804C0558
lbl_804C0558:
	.incbin "baserom.dol", 0x3C9198, 0x8
.global lbl_804C0560
lbl_804C0560:
	.incbin "baserom.dol", 0x3C91A0, 0x8
.global lbl_804C0568
lbl_804C0568:
	.incbin "baserom.dol", 0x3C91A8, 0x8
.global lbl_804C0570
lbl_804C0570:
	.byte 0x00, 0xFF, 0x01, 0x02
.global lbl_804C0574
lbl_804C0574:
	.byte 0x01
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x04
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00

.section .text, "ax"
.global func_800854F8
func_800854F8:
/* 800854F8 000803F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800854FC 000803FC  7C 08 02 A6 */	mflr r0
/* 80085500 00080400  90 01 00 24 */	stw r0, 0x24(r1)
/* 80085504 00080404  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80085508 00080408  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8008550C 0008040C  3F C0 80 41 */	lis r30, lbl_8040A660@ha
/* 80085510 00080410  3B DE A6 60 */	addi r30, r30, lbl_8040A660@l
/* 80085514 00080414  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80085518 00080418  7C 9D 23 78 */	mr r29, r4
/* 8008551C 0008041C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80085520 00080420  7C 7C 1B 78 */	mr r28, r3
/* 80085524 00080424  80 A4 00 00 */	lwz r5, 0(r4)
/* 80085528 00080428  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 8008552C 0008042C  38 85 00 24 */	addi r4, r5, 0x24
/* 80085530 00080430  2C 00 00 00 */	cmpwi r0, 0
/* 80085534 00080434  41 82 00 0C */	beq lbl_80085540
/* 80085538 00080438  7C A4 02 14 */	add r5, r4, r0
/* 8008553C 0008043C  48 00 00 08 */	b lbl_80085544
lbl_80085540:
/* 80085540 00080440  38 A0 00 00 */	li r5, 0
lbl_80085544:
/* 80085544 00080444  38 00 00 00 */	li r0, 0
/* 80085548 00080448  90 A3 00 00 */	stw r5, 0(r3)
/* 8008554C 0008044C  38 9E 00 00 */	addi r4, r30, 0
/* 80085550 00080450  90 A3 00 04 */	stw r5, 4(r3)
/* 80085554 00080454  98 03 00 08 */	stb r0, 8(r3)
/* 80085558 00080458  7F A3 EB 78 */	mr r3, r29
/* 8008555C 0008045C  4B FC E2 21 */	bl GXGetVtxDescv__Q34nw4r3g3d6ResShpCFP14_GXVtxDescList
/* 80085560 00080460  7C 7F 1B 78 */	mr r31, r3
/* 80085564 00080464  7F A3 EB 78 */	mr r3, r29
/* 80085568 00080468  38 9E 00 B0 */	addi r4, r30, 0xb0
/* 8008556C 0008046C  4B FC E4 15 */	bl GXGetVtxAttrFmtv__Q34nw4r3g3d6ResShpCFP17_GXVtxAttrFmtList
/* 80085570 00080470  2C 1F 00 00 */	cmpwi r31, 0
/* 80085574 00080474  7C 7F 1B 78 */	mr r31, r3
/* 80085578 00080478  40 82 00 1C */	bne lbl_80085594
/* 8008557C 0008047C  3C 60 80 38 */	lis r3, lbl_80378DC0@ha
/* 80085580 00080480  38 80 00 2D */	li r4, 0x2d
/* 80085584 00080484  38 63 8D C0 */	addi r3, r3, lbl_80378DC0@l
/* 80085588 00080488  38 A3 00 11 */	addi r5, r3, 0x11
/* 8008558C 0008048C  4C C6 31 82 */	crclr 6
/* 80085590 00080490  48 01 C9 79 */	bl system_halt
lbl_80085594:
/* 80085594 00080494  2C 1F 00 00 */	cmpwi r31, 0
/* 80085598 00080498  40 82 00 1C */	bne lbl_800855B4
/* 8008559C 0008049C  3C 60 80 38 */	lis r3, lbl_80378DC0@ha
/* 800855A0 000804A0  38 80 00 2E */	li r4, 0x2e
/* 800855A4 000804A4  38 63 8D C0 */	addi r3, r3, lbl_80378DC0@l
/* 800855A8 000804A8  38 A3 00 19 */	addi r5, r3, 0x19
/* 800855AC 000804AC  4C C6 31 82 */	crclr 6
/* 800855B0 000804B0  48 01 C9 59 */	bl system_halt
lbl_800855B4:
/* 800855B4 000804B4  3B E0 00 00 */	li r31, 0
/* 800855B8 000804B8  7F 83 E3 78 */	mr r3, r28
/* 800855BC 000804BC  9B FC 00 0A */	stb r31, 0xa(r28)
/* 800855C0 000804C0  9B FC 00 0B */	stb r31, 0xb(r28)
/* 800855C4 000804C4  B3 FC 00 0C */	sth r31, 0xc(r28)
/* 800855C8 000804C8  48 00 05 A1 */	bl func_80085B68
/* 800855CC 000804CC  7F A3 EB 78 */	mr r3, r29
/* 800855D0 000804D0  4B FC E6 1D */	bl GetResVtxPos__Q34nw4r3g3d6ResShpCFv
/* 800855D4 000804D4  90 61 00 08 */	stw r3, 8(r1)
/* 800855D8 000804D8  38 8D 98 58 */	addi r4, r13, lbl_804BEBD8-_SDA_BASE_
/* 800855DC 000804DC  38 61 00 08 */	addi r3, r1, 8
/* 800855E0 000804E0  38 AD 98 58 */	addi r5, r13, lbl_804BEBD8-_SDA_BASE_
/* 800855E4 000804E4  38 84 00 04 */	addi r4, r4, 4
/* 800855E8 000804E8  4B FD 11 B9 */	bl GetArray__Q34nw4r3g3d9ResVtxPosCFPPCvPUc
/* 800855EC 000804EC  38 9E 01 80 */	addi r4, r30, 0x180
/* 800855F0 000804F0  93 FE 01 80 */	stw r31, 0x180(r30)
/* 800855F4 000804F4  38 00 FF FF */	li r0, -1
/* 800855F8 000804F8  7F 83 E3 78 */	mr r3, r28
/* 800855FC 000804FC  B3 E4 00 34 */	sth r31, 0x34(r4)
/* 80085600 00080500  B0 04 00 04 */	sth r0, 4(r4)
/* 80085604 00080504  B0 04 00 18 */	sth r0, 0x18(r4)
/* 80085608 00080508  B0 04 00 06 */	sth r0, 6(r4)
/* 8008560C 0008050C  B0 04 00 1A */	sth r0, 0x1a(r4)
/* 80085610 00080510  B0 04 00 08 */	sth r0, 8(r4)
/* 80085614 00080514  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 80085618 00080518  B0 04 00 0A */	sth r0, 0xa(r4)
/* 8008561C 0008051C  B0 04 00 1E */	sth r0, 0x1e(r4)
/* 80085620 00080520  B0 04 00 0C */	sth r0, 0xc(r4)
/* 80085624 00080524  B0 04 00 20 */	sth r0, 0x20(r4)
/* 80085628 00080528  B0 04 00 0E */	sth r0, 0xe(r4)
/* 8008562C 0008052C  B0 04 00 22 */	sth r0, 0x22(r4)
/* 80085630 00080530  B0 04 00 10 */	sth r0, 0x10(r4)
/* 80085634 00080534  B0 04 00 24 */	sth r0, 0x24(r4)
/* 80085638 00080538  B0 04 00 12 */	sth r0, 0x12(r4)
/* 8008563C 0008053C  B0 04 00 26 */	sth r0, 0x26(r4)
/* 80085640 00080540  B0 04 00 14 */	sth r0, 0x14(r4)
/* 80085644 00080544  B0 04 00 28 */	sth r0, 0x28(r4)
/* 80085648 00080548  B0 04 00 16 */	sth r0, 0x16(r4)
/* 8008564C 0008054C  B0 04 00 2A */	sth r0, 0x2a(r4)
/* 80085650 00080550  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80085654 00080554  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80085658 00080558  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8008565C 0008055C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80085660 00080560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80085664 00080564  7C 08 03 A6 */	mtlr r0
/* 80085668 00080568  38 21 00 20 */	addi r1, r1, 0x20
/* 8008566C 0008056C  4E 80 00 20 */	blr 

.global func_80085670
func_80085670:
/* 80085670 00080570  3C C0 80 41 */	lis r6, lbl_8040A7E0@ha
/* 80085674 00080574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80085678 00080578  38 86 A7 E0 */	addi r4, r6, lbl_8040A7E0@l
/* 8008567C 0008057C  3C A0 43 30 */	lis r5, 0x4330
/* 80085680 00080580  A0 04 00 34 */	lhz r0, 0x34(r4)
/* 80085684 00080584  90 A1 00 08 */	stw r5, 8(r1)
/* 80085688 00080588  2C 00 00 00 */	cmpwi r0, 0
/* 8008568C 0008058C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80085690 00080590  41 82 03 5C */	beq lbl_800859EC
/* 80085694 00080594  38 00 00 04 */	li r0, 4
/* 80085698 00080598  90 06 A7 E0 */	stw r0, -0x5820(r6)
/* 8008569C 0008059C  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 800856A0 000805A0  80 C3 00 04 */	lwz r6, 4(r3)
/* 800856A4 000805A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800856A8 000805A8  41 82 00 34 */	beq lbl_800856DC
/* 800856AC 000805AC  88 06 00 00 */	lbz r0, 0(r6)
/* 800856B0 000805B0  3C A0 55 55 */	lis r5, 0x55555556@ha
/* 800856B4 000805B4  38 A5 55 56 */	addi r5, r5, 0x55555556@l
/* 800856B8 000805B8  38 C6 00 01 */	addi r6, r6, 1
/* 800856BC 000805BC  7C A5 00 96 */	mulhw r5, r5, r0
/* 800856C0 000805C0  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 800856C4 000805C4  7C 05 02 14 */	add r0, r5, r0
/* 800856C8 000805C8  54 00 08 3C */	slwi r0, r0, 1
/* 800856CC 000805CC  7C A4 02 14 */	add r5, r4, r0
/* 800856D0 000805D0  A8 05 00 04 */	lha r0, 4(r5)
/* 800856D4 000805D4  90 04 00 38 */	stw r0, 0x38(r4)
/* 800856D8 000805D8  48 00 00 0C */	b lbl_800856E4
lbl_800856DC:
/* 800856DC 000805DC  38 00 FF FF */	li r0, -1
/* 800856E0 000805E0  90 04 00 38 */	stw r0, 0x38(r4)
lbl_800856E4:
/* 800856E4 000805E4  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 800856E8 000805E8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800856EC 000805EC  41 82 02 C0 */	beq lbl_800859AC
/* 800856F0 000805F0  88 03 00 0B */	lbz r0, 0xb(r3)
/* 800856F4 000805F4  28 00 00 01 */	cmplwi r0, 1
/* 800856F8 000805F8  40 82 00 10 */	bne lbl_80085708
/* 800856FC 000805FC  88 06 00 00 */	lbz r0, 0(r6)
/* 80085700 00080600  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80085704 00080604  48 00 00 0C */	b lbl_80085710
lbl_80085708:
/* 80085708 00080608  A0 06 00 00 */	lhz r0, 0(r6)
/* 8008570C 0008060C  90 04 00 3C */	stw r0, 0x3c(r4)
lbl_80085710:
/* 80085710 00080610  88 AD 98 58 */	lbz r5, lbl_804BEBD8-_SDA_BASE_(r13)
/* 80085714 00080614  3C E0 80 41 */	lis r7, lbl_8040A710@ha
/* 80085718 00080618  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 8008571C 0008061C  38 E7 A7 10 */	addi r7, r7, lbl_8040A710@l
/* 80085720 00080620  81 07 00 08 */	lwz r8, 8(r7)
/* 80085724 00080624  38 CD 98 58 */	addi r6, r13, lbl_804BEBD8-_SDA_BASE_
/* 80085728 00080628  7C 05 01 D6 */	mullw r0, r5, r0
/* 8008572C 0008062C  80 A6 00 04 */	lwz r5, 4(r6)
/* 80085730 00080630  2C 08 00 02 */	cmpwi r8, 2
/* 80085734 00080634  88 E7 00 0C */	lbz r7, 0xc(r7)
/* 80085738 00080638  7C A5 02 14 */	add r5, r5, r0
/* 8008573C 0008063C  41 82 01 44 */	beq lbl_80085880
/* 80085740 00080640  40 80 00 14 */	bge lbl_80085754
/* 80085744 00080644  2C 08 00 00 */	cmpwi r8, 0
/* 80085748 00080648  41 82 00 1C */	beq lbl_80085764
/* 8008574C 0008064C  40 80 00 9C */	bge lbl_800857E8
/* 80085750 00080650  48 00 02 74 */	b lbl_800859C4
lbl_80085754:
/* 80085754 00080654  2C 08 00 04 */	cmpwi r8, 4
/* 80085758 00080658  41 82 02 38 */	beq lbl_80085990
/* 8008575C 0008065C  40 80 02 68 */	bge lbl_800859C4
/* 80085760 00080660  48 00 01 A4 */	b lbl_80085904
lbl_80085764:
/* 80085764 00080664  38 00 00 01 */	li r0, 1
/* 80085768 00080668  88 C5 00 00 */	lbz r6, 0(r5)
/* 8008576C 0008066C  7C 00 38 30 */	slw r0, r0, r7
/* 80085770 00080670  C8 82 8B 40 */	lfd f4, lbl_804C0560-_SDA2_BASE_(r2)
/* 80085774 00080674  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80085778 00080678  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8008577C 0008067C  C8 62 8B 48 */	lfd f3, lbl_804C0568-_SDA2_BASE_(r2)
/* 80085780 00080680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80085784 00080684  C8 21 00 08 */	lfd f1, 8(r1)
/* 80085788 00080688  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8008578C 0008068C  EC 41 20 28 */	fsubs f2, f1, f4
/* 80085790 00080690  EC 00 18 28 */	fsubs f0, f0, f3
/* 80085794 00080694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80085798 00080698  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8008579C 0008069C  EC 42 00 24 */	fdivs f2, f2, f0
/* 800857A0 000806A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800857A4 000806A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800857A8 000806A8  D0 44 00 40 */	stfs f2, 0x40(r4)
/* 800857AC 000806AC  EC 21 18 28 */	fsubs f1, f1, f3
/* 800857B0 000806B0  EC 00 18 28 */	fsubs f0, f0, f3
/* 800857B4 000806B4  88 05 00 01 */	lbz r0, 1(r5)
/* 800857B8 000806B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800857BC 000806BC  C8 41 00 08 */	lfd f2, 8(r1)
/* 800857C0 000806C0  EC 42 20 28 */	fsubs f2, f2, f4
/* 800857C4 000806C4  EC 22 08 24 */	fdivs f1, f2, f1
/* 800857C8 000806C8  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 800857CC 000806CC  88 05 00 02 */	lbz r0, 2(r5)
/* 800857D0 000806D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800857D4 000806D4  C8 21 00 08 */	lfd f1, 8(r1)
/* 800857D8 000806D8  EC 21 20 28 */	fsubs f1, f1, f4
/* 800857DC 000806DC  EC 01 00 24 */	fdivs f0, f1, f0
/* 800857E0 000806E0  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 800857E4 000806E4  48 00 01 E0 */	b lbl_800859C4
lbl_800857E8:
/* 800857E8 000806E8  88 05 00 00 */	lbz r0, 0(r5)
/* 800857EC 000806EC  38 C0 00 01 */	li r6, 1
/* 800857F0 000806F0  7C C7 38 30 */	slw r7, r6, r7
/* 800857F4 000806F4  C8 62 8B 48 */	lfd f3, lbl_804C0568-_SDA2_BASE_(r2)
/* 800857F8 000806F8  7C 00 07 74 */	extsb r0, r0
/* 800857FC 000806FC  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80085800 00080700  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 80085804 00080704  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80085808 00080708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008580C 0008070C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80085810 00080710  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80085814 00080714  EC 41 18 28 */	fsubs f2, f1, f3
/* 80085818 00080718  EC 00 18 28 */	fsubs f0, f0, f3
/* 8008581C 0008071C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80085820 00080720  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80085824 00080724  EC 42 00 24 */	fdivs f2, f2, f0
/* 80085828 00080728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008582C 0008072C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80085830 00080730  D0 44 00 40 */	stfs f2, 0x40(r4)
/* 80085834 00080734  EC 21 18 28 */	fsubs f1, f1, f3
/* 80085838 00080738  EC 00 18 28 */	fsubs f0, f0, f3
/* 8008583C 0008073C  88 05 00 01 */	lbz r0, 1(r5)
/* 80085840 00080740  7C 00 07 74 */	extsb r0, r0
/* 80085844 00080744  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80085848 00080748  90 01 00 0C */	stw r0, 0xc(r1)
/* 8008584C 0008074C  C8 41 00 08 */	lfd f2, 8(r1)
/* 80085850 00080750  EC 42 18 28 */	fsubs f2, f2, f3
/* 80085854 00080754  EC 22 08 24 */	fdivs f1, f2, f1
/* 80085858 00080758  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 8008585C 0008075C  88 05 00 02 */	lbz r0, 2(r5)
/* 80085860 00080760  7C 00 07 74 */	extsb r0, r0
/* 80085864 00080764  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80085868 00080768  90 01 00 0C */	stw r0, 0xc(r1)
/* 8008586C 0008076C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80085870 00080770  EC 21 18 28 */	fsubs f1, f1, f3
/* 80085874 00080774  EC 01 00 24 */	fdivs f0, f1, f0
/* 80085878 00080778  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 8008587C 0008077C  48 00 01 48 */	b lbl_800859C4
lbl_80085880:
/* 80085880 00080780  38 00 00 01 */	li r0, 1
/* 80085884 00080784  A0 C5 00 00 */	lhz r6, 0(r5)
/* 80085888 00080788  7C 00 38 30 */	slw r0, r0, r7
/* 8008588C 0008078C  C8 82 8B 40 */	lfd f4, lbl_804C0560-_SDA2_BASE_(r2)
/* 80085890 00080790  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80085894 00080794  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80085898 00080798  C8 62 8B 48 */	lfd f3, lbl_804C0568-_SDA2_BASE_(r2)
/* 8008589C 0008079C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800858A0 000807A0  C8 21 00 08 */	lfd f1, 8(r1)
/* 800858A4 000807A4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800858A8 000807A8  EC 41 20 28 */	fsubs f2, f1, f4
/* 800858AC 000807AC  EC 00 18 28 */	fsubs f0, f0, f3
/* 800858B0 000807B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800858B4 000807B4  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 800858B8 000807B8  EC 42 00 24 */	fdivs f2, f2, f0
/* 800858BC 000807BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800858C0 000807C0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800858C4 000807C4  D0 44 00 40 */	stfs f2, 0x40(r4)
/* 800858C8 000807C8  EC 21 18 28 */	fsubs f1, f1, f3
/* 800858CC 000807CC  EC 00 18 28 */	fsubs f0, f0, f3
/* 800858D0 000807D0  A0 05 00 01 */	lhz r0, 1(r5)
/* 800858D4 000807D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800858D8 000807D8  C8 41 00 08 */	lfd f2, 8(r1)
/* 800858DC 000807DC  EC 42 20 28 */	fsubs f2, f2, f4
/* 800858E0 000807E0  EC 22 08 24 */	fdivs f1, f2, f1
/* 800858E4 000807E4  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 800858E8 000807E8  A0 05 00 02 */	lhz r0, 2(r5)
/* 800858EC 000807EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800858F0 000807F0  C8 21 00 08 */	lfd f1, 8(r1)
/* 800858F4 000807F4  EC 21 20 28 */	fsubs f1, f1, f4
/* 800858F8 000807F8  EC 01 00 24 */	fdivs f0, f1, f0
/* 800858FC 000807FC  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 80085900 00080800  48 00 00 C4 */	b lbl_800859C4
lbl_80085904:
/* 80085904 00080804  38 C0 00 01 */	li r6, 1
/* 80085908 00080808  A8 05 00 00 */	lha r0, 0(r5)
/* 8008590C 0008080C  7C C7 38 30 */	slw r7, r6, r7
/* 80085910 00080810  C8 62 8B 48 */	lfd f3, lbl_804C0568-_SDA2_BASE_(r2)
/* 80085914 00080814  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 80085918 00080818  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 8008591C 0008081C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80085920 00080820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80085924 00080824  C8 21 00 08 */	lfd f1, 8(r1)
/* 80085928 00080828  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8008592C 0008082C  EC 41 18 28 */	fsubs f2, f1, f3
/* 80085930 00080830  EC 00 18 28 */	fsubs f0, f0, f3
/* 80085934 00080834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80085938 00080838  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8008593C 0008083C  EC 42 00 24 */	fdivs f2, f2, f0
/* 80085940 00080840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80085944 00080844  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80085948 00080848  D0 44 00 40 */	stfs f2, 0x40(r4)
/* 8008594C 0008084C  EC 21 18 28 */	fsubs f1, f1, f3
/* 80085950 00080850  EC 00 18 28 */	fsubs f0, f0, f3
/* 80085954 00080854  A8 05 00 01 */	lha r0, 1(r5)
/* 80085958 00080858  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8008595C 0008085C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80085960 00080860  C8 41 00 08 */	lfd f2, 8(r1)
/* 80085964 00080864  EC 42 18 28 */	fsubs f2, f2, f3
/* 80085968 00080868  EC 22 08 24 */	fdivs f1, f2, f1
/* 8008596C 0008086C  D0 24 00 44 */	stfs f1, 0x44(r4)
/* 80085970 00080870  A8 05 00 02 */	lha r0, 2(r5)
/* 80085974 00080874  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80085978 00080878  90 01 00 0C */	stw r0, 0xc(r1)
/* 8008597C 0008087C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80085980 00080880  EC 21 18 28 */	fsubs f1, f1, f3
/* 80085984 00080884  EC 01 00 24 */	fdivs f0, f1, f0
/* 80085988 00080888  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 8008598C 0008088C  48 00 00 38 */	b lbl_800859C4
lbl_80085990:
/* 80085990 00080890  C0 05 00 00 */	lfs f0, 0(r5)
/* 80085994 00080894  D0 04 00 40 */	stfs f0, 0x40(r4)
/* 80085998 00080898  C0 05 00 04 */	lfs f0, 4(r5)
/* 8008599C 0008089C  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 800859A0 000808A0  C0 05 00 08 */	lfs f0, 8(r5)
/* 800859A4 000808A4  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 800859A8 000808A8  48 00 00 1C */	b lbl_800859C4
lbl_800859AC:
/* 800859AC 000808AC  C0 02 8B 38 */	lfs f0, lbl_804C0558-_SDA2_BASE_(r2)
/* 800859B0 000808B0  38 00 FF FF */	li r0, -1
/* 800859B4 000808B4  90 04 00 3C */	stw r0, 0x3c(r4)
/* 800859B8 000808B8  D0 04 00 48 */	stfs f0, 0x48(r4)
/* 800859BC 000808BC  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 800859C0 000808C0  D0 04 00 40 */	stfs f0, 0x40(r4)
lbl_800859C4:
/* 800859C4 000808C4  3C A0 80 41 */	lis r5, lbl_8040A7E0@ha
/* 800859C8 000808C8  38 A5 A7 E0 */	addi r5, r5, lbl_8040A7E0@l
/* 800859CC 000808CC  A0 85 00 34 */	lhz r4, 0x34(r5)
/* 800859D0 000808D0  38 04 FF FF */	addi r0, r4, -1
/* 800859D4 000808D4  B0 05 00 34 */	sth r0, 0x34(r5)
/* 800859D8 000808D8  80 83 00 04 */	lwz r4, 4(r3)
/* 800859DC 000808DC  88 03 00 0A */	lbz r0, 0xa(r3)
/* 800859E0 000808E0  7C 04 02 14 */	add r0, r4, r0
/* 800859E4 000808E4  90 03 00 04 */	stw r0, 4(r3)
/* 800859E8 000808E8  48 00 01 70 */	b lbl_80085B58
lbl_800859EC:
/* 800859EC 000808EC  80 A3 00 04 */	lwz r5, 4(r3)
/* 800859F0 000808F0  88 05 00 00 */	lbz r0, 0(r5)
/* 800859F4 000808F4  2C 00 00 90 */	cmpwi r0, 0x90
/* 800859F8 000808F8  41 82 01 1C */	beq lbl_80085B14
/* 800859FC 000808FC  40 80 00 40 */	bge lbl_80085A3C
/* 80085A00 00080900  2C 00 00 28 */	cmpwi r0, 0x28
/* 80085A04 00080904  41 82 00 BC */	beq lbl_80085AC0
/* 80085A08 00080908  40 80 00 1C */	bge lbl_80085A24
/* 80085A0C 0008090C  2C 00 00 20 */	cmpwi r0, 0x20
/* 80085A10 00080910  41 82 00 68 */	beq lbl_80085A78
/* 80085A14 00080914  40 80 01 44 */	bge lbl_80085B58
/* 80085A18 00080918  2C 00 00 00 */	cmpwi r0, 0
/* 80085A1C 0008091C  41 82 01 34 */	beq lbl_80085B50
/* 80085A20 00080920  48 00 01 38 */	b lbl_80085B58
lbl_80085A24:
/* 80085A24 00080924  2C 00 00 80 */	cmpwi r0, 0x80
/* 80085A28 00080928  41 82 00 EC */	beq lbl_80085B14
/* 80085A2C 0008092C  40 80 01 2C */	bge lbl_80085B58
/* 80085A30 00080930  2C 00 00 30 */	cmpwi r0, 0x30
/* 80085A34 00080934  41 82 00 D4 */	beq lbl_80085B08
/* 80085A38 00080938  48 00 01 20 */	b lbl_80085B58
lbl_80085A3C:
/* 80085A3C 0008093C  2C 00 00 A8 */	cmpwi r0, 0xa8
/* 80085A40 00080940  41 82 00 D4 */	beq lbl_80085B14
/* 80085A44 00080944  40 80 00 1C */	bge lbl_80085A60
/* 80085A48 00080948  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 80085A4C 0008094C  41 82 00 C8 */	beq lbl_80085B14
/* 80085A50 00080950  40 80 01 08 */	bge lbl_80085B58
/* 80085A54 00080954  2C 00 00 98 */	cmpwi r0, 0x98
/* 80085A58 00080958  41 82 00 BC */	beq lbl_80085B14
/* 80085A5C 0008095C  48 00 00 FC */	b lbl_80085B58
lbl_80085A60:
/* 80085A60 00080960  2C 00 00 B8 */	cmpwi r0, 0xb8
/* 80085A64 00080964  41 82 00 B0 */	beq lbl_80085B14
/* 80085A68 00080968  40 80 00 F0 */	bge lbl_80085B58
/* 80085A6C 0008096C  2C 00 00 B0 */	cmpwi r0, 0xb0
/* 80085A70 00080970  41 82 00 A4 */	beq lbl_80085B14
/* 80085A74 00080974  48 00 00 E4 */	b lbl_80085B58
lbl_80085A78:
/* 80085A78 00080978  38 00 00 01 */	li r0, 1
/* 80085A7C 0008097C  3C A0 2A AB */	lis r5, 0x2AAAAAAB@ha
/* 80085A80 00080980  90 06 A7 E0 */	stw r0, -0x5820(r6)
/* 80085A84 00080984  38 A5 AA AB */	addi r5, r5, 0x2AAAAAAB@l
/* 80085A88 00080988  80 C3 00 04 */	lwz r6, 4(r3)
/* 80085A8C 0008098C  88 06 00 04 */	lbz r0, 4(r6)
/* 80085A90 00080990  88 C6 00 02 */	lbz r6, 2(r6)
/* 80085A94 00080994  7C 05 00 96 */	mulhw r0, r5, r0
/* 80085A98 00080998  7C 00 0E 70 */	srawi r0, r0, 1
/* 80085A9C 0008099C  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80085AA0 000809A0  7C 00 2A 14 */	add r0, r0, r5
/* 80085AA4 000809A4  54 00 08 3C */	slwi r0, r0, 1
/* 80085AA8 000809A8  7C 84 02 14 */	add r4, r4, r0
/* 80085AAC 000809AC  B0 C4 00 04 */	sth r6, 4(r4)
/* 80085AB0 000809B0  80 83 00 04 */	lwz r4, 4(r3)
/* 80085AB4 000809B4  38 04 00 05 */	addi r0, r4, 5
/* 80085AB8 000809B8  90 03 00 04 */	stw r0, 4(r3)
/* 80085ABC 000809BC  48 00 00 9C */	b lbl_80085B58
lbl_80085AC0:
/* 80085AC0 000809C0  38 00 00 02 */	li r0, 2
/* 80085AC4 000809C4  3C A0 38 E4 */	lis r5, 0x38E38E39@ha
/* 80085AC8 000809C8  90 06 A7 E0 */	stw r0, -0x5820(r6)
/* 80085ACC 000809CC  38 A5 8E 39 */	addi r5, r5, 0x38E38E39@l
/* 80085AD0 000809D0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80085AD4 000809D4  88 06 00 04 */	lbz r0, 4(r6)
/* 80085AD8 000809D8  88 C6 00 02 */	lbz r6, 2(r6)
/* 80085ADC 000809DC  7C 05 00 96 */	mulhw r0, r5, r0
/* 80085AE0 000809E0  7C 00 0E 70 */	srawi r0, r0, 1
/* 80085AE4 000809E4  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80085AE8 000809E8  7C 00 2A 14 */	add r0, r0, r5
/* 80085AEC 000809EC  54 00 08 3C */	slwi r0, r0, 1
/* 80085AF0 000809F0  7C 84 02 14 */	add r4, r4, r0
/* 80085AF4 000809F4  B0 C4 00 18 */	sth r6, 0x18(r4)
/* 80085AF8 000809F8  80 83 00 04 */	lwz r4, 4(r3)
/* 80085AFC 000809FC  38 04 00 05 */	addi r0, r4, 5
/* 80085B00 00080A00  90 03 00 04 */	stw r0, 4(r3)
/* 80085B04 00080A04  48 00 00 54 */	b lbl_80085B58
lbl_80085B08:
/* 80085B08 00080A08  38 05 00 05 */	addi r0, r5, 5
/* 80085B0C 00080A0C  90 03 00 04 */	stw r0, 4(r3)
/* 80085B10 00080A10  48 00 00 48 */	b lbl_80085B58
lbl_80085B14:
/* 80085B14 00080A14  3C 80 80 41 */	lis r4, lbl_8040A7E0@ha
/* 80085B18 00080A18  38 00 00 03 */	li r0, 3
/* 80085B1C 00080A1C  90 04 A7 E0 */	stw r0, lbl_8040A7E0@l(r4)
/* 80085B20 00080A20  38 A4 A7 E0 */	addi r5, r4, -22560
/* 80085B24 00080A24  80 83 00 04 */	lwz r4, 4(r3)
/* 80085B28 00080A28  88 04 00 00 */	lbz r0, 0(r4)
/* 80085B2C 00080A2C  98 05 00 30 */	stb r0, 0x30(r5)
/* 80085B30 00080A30  80 83 00 04 */	lwz r4, 4(r3)
/* 80085B34 00080A34  A0 04 00 01 */	lhz r0, 1(r4)
/* 80085B38 00080A38  B0 05 00 32 */	sth r0, 0x32(r5)
/* 80085B3C 00080A3C  B0 05 00 34 */	sth r0, 0x34(r5)
/* 80085B40 00080A40  80 83 00 04 */	lwz r4, 4(r3)
/* 80085B44 00080A44  38 04 00 03 */	addi r0, r4, 3
/* 80085B48 00080A48  90 03 00 04 */	stw r0, 4(r3)
/* 80085B4C 00080A4C  48 00 00 0C */	b lbl_80085B58
lbl_80085B50:
/* 80085B50 00080A50  38 00 00 05 */	li r0, 5
/* 80085B54 00080A54  90 06 A7 E0 */	stw r0, -0x5820(r6)
lbl_80085B58:
/* 80085B58 00080A58  3C 60 80 41 */	lis r3, lbl_8040A7E0@ha
/* 80085B5C 00080A5C  80 63 A7 E0 */	lwz r3, lbl_8040A7E0@l(r3)
/* 80085B60 00080A60  38 21 00 20 */	addi r1, r1, 0x20
/* 80085B64 00080A64  4E 80 00 20 */	blr 

.global func_80085B68
func_80085B68:
/* 80085B68 00080A68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80085B6C 00080A6C  7C 08 02 A6 */	mflr r0
/* 80085B70 00080A70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80085B74 00080A74  BE C1 00 08 */	stmw r22, 8(r1)
/* 80085B78 00080A78  3F 80 80 41 */	lis r28, lbl_8040A660@ha
/* 80085B7C 00080A7C  3F E0 80 41 */	lis r31, lbl_8040A710@ha
/* 80085B80 00080A80  7C 7A 1B 78 */	mr r26, r3
/* 80085B84 00080A84  3B 60 00 00 */	li r27, 0
/* 80085B88 00080A88  3B 9C A6 60 */	addi r28, r28, lbl_8040A660@l
/* 80085B8C 00080A8C  3B FF A7 10 */	addi r31, r31, lbl_8040A710@l
/* 80085B90 00080A90  3F C0 80 38 */	lis r30, 0x8038
/* 80085B94 00080A94  3A E2 8B 54 */	addi r23, r2, lbl_804C0574-_SDA2_BASE_
/* 80085B98 00080A98  3B A2 8B 50 */	addi r29, r2, lbl_804C0570-_SDA2_BASE_
/* 80085B9C 00080A9C  3B 00 00 01 */	li r24, 1
/* 80085BA0 00080AA0  48 00 00 BC */	b lbl_80085C5C
lbl_80085BA4:
/* 80085BA4 00080AA4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80085BA8 00080AA8  7C 7D 00 AE */	lbzx r3, r29, r0
/* 80085BAC 00080AAC  7C 63 07 74 */	extsb r3, r3
/* 80085BB0 00080AB0  2C 03 FF FF */	cmpwi r3, -1
/* 80085BB4 00080AB4  40 82 00 6C */	bne lbl_80085C20
/* 80085BB8 00080AB8  2C 1B 00 00 */	cmpwi r27, 0
/* 80085BBC 00080ABC  41 82 00 14 */	beq lbl_80085BD0
/* 80085BC0 00080AC0  2C 1B 00 01 */	cmpwi r27, 1
/* 80085BC4 00080AC4  41 80 00 14 */	blt lbl_80085BD8
/* 80085BC8 00080AC8  2C 1B 00 08 */	cmpwi r27, 8
/* 80085BCC 00080ACC  41 81 00 0C */	bgt lbl_80085BD8
lbl_80085BD0:
/* 80085BD0 00080AD0  38 60 00 01 */	li r3, 1
/* 80085BD4 00080AD4  48 00 00 4C */	b lbl_80085C20
lbl_80085BD8:
/* 80085BD8 00080AD8  3A C0 FF FF */	li r22, -1
/* 80085BDC 00080ADC  3B 20 FF F0 */	li r25, -16
/* 80085BE0 00080AE0  48 00 00 20 */	b lbl_80085C00
lbl_80085BE4:
/* 80085BE4 00080AE4  2C 16 00 0D */	cmpwi r22, 0xd
/* 80085BE8 00080AE8  40 80 00 18 */	bge lbl_80085C00
/* 80085BEC 00080AEC  38 7E 8D C0 */	addi r3, r30, -29248
/* 80085BF0 00080AF0  38 80 00 EC */	li r4, 0xec
/* 80085BF4 00080AF4  38 A3 00 21 */	addi r5, r3, 0x21
/* 80085BF8 00080AF8  4C C6 31 82 */	crclr 6
/* 80085BFC 00080AFC  48 01 C3 0D */	bl system_halt
lbl_80085C00:
/* 80085C00 00080B00  3B 39 00 10 */	addi r25, r25, 0x10
/* 80085C04 00080B04  3A D6 00 01 */	addi r22, r22, 1
/* 80085C08 00080B08  7C 1F C8 2E */	lwzx r0, r31, r25
/* 80085C0C 00080B0C  7C 1B 00 00 */	cmpw r27, r0
/* 80085C10 00080B10  40 82 FF D4 */	bne lbl_80085BE4
/* 80085C14 00080B14  7C 7F CA 14 */	add r3, r31, r25
/* 80085C18 00080B18  80 03 00 08 */	lwz r0, 8(r3)
/* 80085C1C 00080B1C  7C 77 00 AE */	lbzx r3, r23, r0
lbl_80085C20:
/* 80085C20 00080B20  2C 1B 00 09 */	cmpwi r27, 9
/* 80085C24 00080B24  41 82 00 08 */	beq lbl_80085C2C
/* 80085C28 00080B28  48 00 00 08 */	b lbl_80085C30
lbl_80085C2C:
/* 80085C2C 00080B2C  98 7A 00 0B */	stb r3, 0xb(r26)
lbl_80085C30:
/* 80085C30 00080B30  88 1A 00 0A */	lbz r0, 0xa(r26)
/* 80085C34 00080B34  2C 03 00 00 */	cmpwi r3, 0
/* 80085C38 00080B38  7C 00 1A 14 */	add r0, r0, r3
/* 80085C3C 00080B3C  98 1A 00 0A */	stb r0, 0xa(r26)
/* 80085C40 00080B40  41 82 00 14 */	beq lbl_80085C54
/* 80085C44 00080B44  A0 7A 00 0C */	lhz r3, 0xc(r26)
/* 80085C48 00080B48  7F 00 D8 30 */	slw r0, r24, r27
/* 80085C4C 00080B4C  7C 60 03 78 */	or r0, r3, r0
/* 80085C50 00080B50  B0 1A 00 0C */	sth r0, 0xc(r26)
lbl_80085C54:
/* 80085C54 00080B54  3B 9C 00 08 */	addi r28, r28, 8
/* 80085C58 00080B58  3B 7B 00 01 */	addi r27, r27, 1
lbl_80085C5C:
/* 80085C5C 00080B5C  80 1C 00 00 */	lwz r0, 0(r28)
/* 80085C60 00080B60  2C 00 00 FF */	cmpwi r0, 0xff
/* 80085C64 00080B64  40 82 FF 40 */	bne lbl_80085BA4
/* 80085C68 00080B68  BA C1 00 08 */	lmw r22, 8(r1)
/* 80085C6C 00080B6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80085C70 00080B70  7C 08 03 A6 */	mtlr r0
/* 80085C74 00080B74  38 21 00 30 */	addi r1, r1, 0x30
/* 80085C78 00080B78  4E 80 00 20 */	blr 

.global __sinit_$$3eggAnalizeDL_cpp
__sinit_$$3eggAnalizeDL_cpp:
/* 80085C7C 00080B7C  4E 80 00 20 */	blr 
