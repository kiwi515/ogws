.include "macros.inc"

.section .sdata, "wa"
.balign 0x8
lbl_804BD9A8:
	.string "TPL.c"
    .balign 4

.section .data, "wa"
.balign 0x8
lbl_803B7298:
	.string "invalid version number for texture palette"
    .balign 4

.section .text, "ax"
.global TPLBind
TPLBind:
/* 8014163C 0013C53C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141640 0013C540  7C 08 02 A6 */	mflr r0
/* 80141644 0013C544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80141648 0013C548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014164C 0013C54C  7C 7F 1B 78 */	mr r31, r3
/* 80141650 0013C550  80 83 00 00 */	lwz r4, 0(r3)
/* 80141654 0013C554  3C 04 FF E0 */	addis r0, r4, 0xffe0
/* 80141658 0013C558  28 00 AF 30 */	cmplwi r0, 0xaf30
/* 8014165C 0013C55C  41 82 00 1C */	beq lbl_80141678
/* 80141660 0013C560  3C A0 80 3B */	lis r5, lbl_803B7298@ha
/* 80141664 0013C564  38 6D 86 28 */	addi r3, r13, lbl_804BD9A8-_SDA_BASE_
/* 80141668 0013C568  38 A5 72 98 */	addi r5, r5, lbl_803B7298@l
/* 8014166C 0013C56C  38 80 00 19 */	li r4, 0x19
/* 80141670 0013C570  4C C6 31 82 */	crclr 6
/* 80141674 0013C574  4B FA D9 35 */	bl OSPanic
lbl_80141678:
/* 80141678 0013C578  80 1F 00 08 */	lwz r0, 8(r31)
/* 8014167C 0013C57C  38 60 00 00 */	li r3, 0
/* 80141680 0013C580  38 A0 00 01 */	li r5, 1
/* 80141684 0013C584  7C 00 FA 14 */	add r0, r0, r31
/* 80141688 0013C588  90 1F 00 08 */	stw r0, 8(r31)
/* 8014168C 0013C58C  48 00 00 A0 */	b lbl_8014172C
lbl_80141690:
/* 80141690 0013C590  80 9F 00 08 */	lwz r4, 8(r31)
/* 80141694 0013C594  54 66 1B 78 */	rlwinm r6, r3, 3, 0xd, 0x1c
/* 80141698 0013C598  7C 04 30 2E */	lwzx r0, r4, r6
/* 8014169C 0013C59C  2C 00 00 00 */	cmpwi r0, 0
/* 801416A0 0013C5A0  41 82 00 38 */	beq lbl_801416D8
/* 801416A4 0013C5A4  7C 1F 02 14 */	add r0, r31, r0
/* 801416A8 0013C5A8  7C 04 31 2E */	stwx r0, r4, r6
/* 801416AC 0013C5AC  80 9F 00 08 */	lwz r4, 8(r31)
/* 801416B0 0013C5B0  7C 84 30 2E */	lwzx r4, r4, r6
/* 801416B4 0013C5B4  88 04 00 23 */	lbz r0, 0x23(r4)
/* 801416B8 0013C5B8  2C 00 00 00 */	cmpwi r0, 0
/* 801416BC 0013C5BC  40 82 00 1C */	bne lbl_801416D8
/* 801416C0 0013C5C0  80 04 00 08 */	lwz r0, 8(r4)
/* 801416C4 0013C5C4  7C 1F 02 14 */	add r0, r31, r0
/* 801416C8 0013C5C8  90 04 00 08 */	stw r0, 8(r4)
/* 801416CC 0013C5CC  80 9F 00 08 */	lwz r4, 8(r31)
/* 801416D0 0013C5D0  7C 84 30 2E */	lwzx r4, r4, r6
/* 801416D4 0013C5D4  98 A4 00 23 */	stb r5, 0x23(r4)
lbl_801416D8:
/* 801416D8 0013C5D8  80 1F 00 08 */	lwz r0, 8(r31)
/* 801416DC 0013C5DC  7C 80 32 14 */	add r4, r0, r6
/* 801416E0 0013C5E0  80 04 00 04 */	lwz r0, 4(r4)
/* 801416E4 0013C5E4  2C 00 00 00 */	cmpwi r0, 0
/* 801416E8 0013C5E8  41 82 00 40 */	beq lbl_80141728
/* 801416EC 0013C5EC  7C 1F 02 14 */	add r0, r31, r0
/* 801416F0 0013C5F0  90 04 00 04 */	stw r0, 4(r4)
/* 801416F4 0013C5F4  80 1F 00 08 */	lwz r0, 8(r31)
/* 801416F8 0013C5F8  7C 80 32 14 */	add r4, r0, r6
/* 801416FC 0013C5FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80141700 0013C600  88 04 00 02 */	lbz r0, 2(r4)
/* 80141704 0013C604  2C 00 00 00 */	cmpwi r0, 0
/* 80141708 0013C608  40 82 00 20 */	bne lbl_80141728
/* 8014170C 0013C60C  80 04 00 08 */	lwz r0, 8(r4)
/* 80141710 0013C610  7C 1F 02 14 */	add r0, r31, r0
/* 80141714 0013C614  90 04 00 08 */	stw r0, 8(r4)
/* 80141718 0013C618  80 1F 00 08 */	lwz r0, 8(r31)
/* 8014171C 0013C61C  7C 80 32 14 */	add r4, r0, r6
/* 80141720 0013C620  80 84 00 04 */	lwz r4, 4(r4)
/* 80141724 0013C624  98 A4 00 02 */	stb r5, 2(r4)
lbl_80141728:
/* 80141728 0013C628  38 63 00 01 */	addi r3, r3, 1
lbl_8014172C:
/* 8014172C 0013C62C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80141730 0013C630  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80141734 0013C634  7C 04 00 40 */	cmplw r4, r0
/* 80141738 0013C638  41 80 FF 58 */	blt lbl_80141690
/* 8014173C 0013C63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141740 0013C640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80141744 0013C644  7C 08 03 A6 */	mtlr r0
/* 80141748 0013C648  38 21 00 10 */	addi r1, r1, 0x10
/* 8014174C 0013C64C  4E 80 00 20 */	blr 

.global TPLGet
TPLGet:
/* 80141750 0013C650  80 A3 00 04 */	lwz r5, 4(r3)
/* 80141754 0013C654  80 63 00 08 */	lwz r3, 8(r3)
/* 80141758 0013C658  7C 04 2B 96 */	divwu r0, r4, r5
/* 8014175C 0013C65C  7C 00 29 D6 */	mullw r0, r0, r5
/* 80141760 0013C660  7C 00 20 50 */	subf r0, r0, r4
/* 80141764 0013C664  54 00 18 38 */	slwi r0, r0, 3
/* 80141768 0013C668  7C 63 02 14 */	add r3, r3, r0
/* 8014176C 0013C66C  4E 80 00 20 */	blr 
