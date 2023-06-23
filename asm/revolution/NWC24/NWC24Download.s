.include "macros.inc"

.section .data, "wa"
.balign 0x8
lbl_803b7ee0:
	.string "/shared2/wc24/nwc24dl.bin"
	.balign 4

.section .sdata, "wa"
.balign 0x8
DLFilePath:
	.incbin "baserom.dol", 0x3C7768, 0x4

.section .text, "ax"
.global NWC24iOpenDlTaskList
NWC24iOpenDlTaskList:
/* 8014A7A0 001456A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014A7A4 001456A4  7C 08 02 A6 */	mflr r0
/* 8014A7A8 001456A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014A7AC 001456AC  48 00 02 B1 */	bl NWC24iLoadDlHeader
/* 8014A7B0 001456B0  2C 03 00 00 */	cmpwi r3, 0
/* 8014A7B4 001456B4  41 80 00 28 */	blt lbl_8014A7DC
/* 8014A7B8 001456B8  38 60 00 00 */	li r3, 0
/* 8014A7BC 001456BC  4B FF FD DD */	bl NWC24iSynchronizeRtcCounter
/* 8014A7C0 001456C0  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014A7C4 001456C4  38 80 00 00 */	li r4, 0
/* 8014A7C8 001456C8  38 63 30 00 */	addi r3, r3, 0x3000
/* 8014A7CC 001456CC  48 00 00 29 */	bl NWC24iCheckHeaderConsistency
/* 8014A7D0 001456D0  2C 03 00 00 */	cmpwi r3, 0
/* 8014A7D4 001456D4  41 80 00 08 */	blt lbl_8014A7DC
/* 8014A7D8 001456D8  38 60 00 00 */	li r3, 0
lbl_8014A7DC:
/* 8014A7DC 001456DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014A7E0 001456E0  7C 08 03 A6 */	mtlr r0
/* 8014A7E4 001456E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8014A7E8 001456E8  4E 80 00 20 */	blr 

.global NWC24iCloseDlTaskList
NWC24iCloseDlTaskList:
/* 8014A7EC 001456EC  38 60 00 00 */	li r3, 0
/* 8014A7F0 001456F0  4E 80 00 20 */	blr 

.global NWC24iCheckHeaderConsistency
NWC24iCheckHeaderConsistency:
/* 8014A7F4 001456F4  94 21 FD 40 */	stwu r1, -0x2c0(r1)
/* 8014A7F8 001456F8  7C 08 02 A6 */	mflr r0
/* 8014A7FC 001456FC  90 01 02 C4 */	stw r0, 0x2c4(r1)
/* 8014A800 00145700  39 61 02 C0 */	addi r11, r1, 0x2c0
/* 8014A804 00145704  4B F6 75 3D */	bl _savegpr_26
/* 8014A808 00145708  3B E1 00 A8 */	addi r31, r1, 0xa8
/* 8014A80C 0014570C  7C 7C 1B 78 */	mr r28, r3
/* 8014A810 00145710  7C 9D 23 78 */	mr r29, r4
/* 8014A814 00145714  3B C0 00 00 */	li r30, 0
/* 8014A818 00145718  3F 60 00 01 */	lis r27, 1
/* 8014A81C 0014571C  48 00 02 14 */	b lbl_8014AA30
lbl_8014A820:
/* 8014A820 00145720  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014A824 00145724  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8014A828 00145728  A0 C3 30 10 */	lhz r6, 0x3010(r3)
/* 8014A82C 0014572C  38 A3 30 00 */	addi r5, r3, 0x3000
/* 8014A830 00145730  7C 00 30 40 */	cmplw r0, r6
/* 8014A834 00145734  40 80 00 0C */	bge lbl_8014A840
/* 8014A838 00145738  28 00 FF FF */	cmplwi r0, 0xffff
/* 8014A83C 0014573C  40 82 00 0C */	bne lbl_8014A848
lbl_8014A840:
/* 8014A840 00145740  38 80 FF FD */	li r4, -3
/* 8014A844 00145744  48 00 00 20 */	b lbl_8014A864
lbl_8014A848:
/* 8014A848 00145748  57 C0 23 36 */	rlwinm r0, r30, 4, 0xc, 0x1b
/* 8014A84C 0014574C  38 80 00 00 */	li r4, 0
/* 8014A850 00145750  7C 65 02 14 */	add r3, r5, r0
/* 8014A854 00145754  80 03 00 80 */	lwz r0, 0x80(r3)
/* 8014A858 00145758  2C 00 00 00 */	cmpwi r0, 0
/* 8014A85C 0014575C  40 82 00 08 */	bne lbl_8014A864
/* 8014A860 00145760  38 80 FF F3 */	li r4, -13
lbl_8014A864:
/* 8014A864 00145764  2C 04 00 00 */	cmpwi r4, 0
/* 8014A868 00145768  40 82 01 C4 */	bne lbl_8014AA2C
/* 8014A86C 0014576C  2C 1D 00 00 */	cmpwi r29, 0
/* 8014A870 00145770  41 82 01 BC */	beq lbl_8014AA2C
/* 8014A874 00145774  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8014A878 00145778  7C 00 30 40 */	cmplw r0, r6
/* 8014A87C 0014577C  40 80 00 0C */	bge lbl_8014A888
/* 8014A880 00145780  28 00 FF FF */	cmplwi r0, 0xffff
/* 8014A884 00145784  40 82 00 0C */	bne lbl_8014A890
lbl_8014A888:
/* 8014A888 00145788  38 60 FF FD */	li r3, -3
/* 8014A88C 0014578C  48 00 00 20 */	b lbl_8014A8AC
lbl_8014A890:
/* 8014A890 00145790  57 C0 23 36 */	rlwinm r0, r30, 4, 0xc, 0x1b
/* 8014A894 00145794  38 60 00 00 */	li r3, 0
/* 8014A898 00145798  7C 85 02 14 */	add r4, r5, r0
/* 8014A89C 0014579C  80 04 00 80 */	lwz r0, 0x80(r4)
/* 8014A8A0 001457A0  2C 00 00 00 */	cmpwi r0, 0
/* 8014A8A4 001457A4  40 82 00 08 */	bne lbl_8014A8AC
/* 8014A8A8 001457A8  38 60 FF F3 */	li r3, -13
lbl_8014A8AC:
/* 8014A8AC 001457AC  2C 03 00 00 */	cmpwi r3, 0
/* 8014A8B0 001457B0  40 80 00 08 */	bge lbl_8014A8B8
/* 8014A8B4 001457B4  48 00 00 78 */	b lbl_8014A92C
lbl_8014A8B8:
/* 8014A8B8 001457B8  80 8D 87 68 */	lwz r4, DLFilePath-_SDA_BASE_(r13)
/* 8014A8BC 001457BC  38 61 00 08 */	addi r3, r1, 8
/* 8014A8C0 001457C0  38 A0 00 0A */	li r5, 0xa
/* 8014A8C4 001457C4  4B FF 82 61 */	bl NWC24FOpen
/* 8014A8C8 001457C8  2C 03 00 00 */	cmpwi r3, 0
/* 8014A8CC 001457CC  40 80 00 08 */	bge lbl_8014A8D4
/* 8014A8D0 001457D0  48 00 00 5C */	b lbl_8014A92C
lbl_8014A8D4:
/* 8014A8D4 001457D4  57 C4 49 EC */	rlwinm r4, r30, 9, 7, 0x16
/* 8014A8D8 001457D8  38 61 00 08 */	addi r3, r1, 8
/* 8014A8DC 001457DC  38 84 08 00 */	addi r4, r4, 0x800
/* 8014A8E0 001457E0  38 A0 00 00 */	li r5, 0
/* 8014A8E4 001457E4  4B FF 87 25 */	bl NWC24FSeek
/* 8014A8E8 001457E8  2C 03 00 00 */	cmpwi r3, 0
/* 8014A8EC 001457EC  40 80 00 0C */	bge lbl_8014A8F8
/* 8014A8F0 001457F0  7C 7A 1B 78 */	mr r26, r3
/* 8014A8F4 001457F4  48 00 00 24 */	b lbl_8014A918
lbl_8014A8F8:
/* 8014A8F8 001457F8  7F E3 FB 78 */	mr r3, r31
/* 8014A8FC 001457FC  38 A1 00 08 */	addi r5, r1, 8
/* 8014A900 00145800  38 80 02 00 */	li r4, 0x200
/* 8014A904 00145804  4B FF 88 F1 */	bl NWC24FRead
/* 8014A908 00145808  2C 03 00 00 */	cmpwi r3, 0
/* 8014A90C 0014580C  3B 40 00 00 */	li r26, 0
/* 8014A910 00145810  40 80 00 08 */	bge lbl_8014A918
/* 8014A914 00145814  7C 7A 1B 78 */	mr r26, r3
lbl_8014A918:
/* 8014A918 00145818  38 61 00 08 */	addi r3, r1, 8
/* 8014A91C 0014581C  4B FF 85 59 */	bl NWC24FClose
/* 8014A920 00145820  2C 1A 00 00 */	cmpwi r26, 0
/* 8014A924 00145824  41 82 00 08 */	beq lbl_8014A92C
/* 8014A928 00145828  7F 43 D3 78 */	mr r3, r26
lbl_8014A92C:
/* 8014A92C 0014582C  2C 03 00 00 */	cmpwi r3, 0
/* 8014A930 00145830  40 80 00 74 */	bge lbl_8014A9A4
/* 8014A934 00145834  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014A938 00145838  2C 1F 00 00 */	cmpwi r31, 0
/* 8014A93C 0014583C  38 63 30 00 */	addi r3, r3, 0x3000
/* 8014A940 00145840  40 82 00 0C */	bne lbl_8014A94C
/* 8014A944 00145844  38 00 FF FD */	li r0, -3
/* 8014A948 00145848  48 00 00 38 */	b lbl_8014A980
lbl_8014A94C:
/* 8014A94C 0014584C  2C 03 00 00 */	cmpwi r3, 0
/* 8014A950 00145850  40 82 00 0C */	bne lbl_8014A95C
/* 8014A954 00145854  38 00 FF F7 */	li r0, -9
/* 8014A958 00145858  48 00 00 28 */	b lbl_8014A980
lbl_8014A95C:
/* 8014A95C 0014585C  A0 81 00 A8 */	lhz r4, 0xa8(r1)
/* 8014A960 00145860  28 04 FF FF */	cmplwi r4, 0xffff
/* 8014A964 00145864  41 82 00 18 */	beq lbl_8014A97C
/* 8014A968 00145868  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8014A96C 0014586C  7C 04 00 40 */	cmplw r4, r0
/* 8014A970 00145870  41 80 00 0C */	blt lbl_8014A97C
/* 8014A974 00145874  38 00 FF FD */	li r0, -3
/* 8014A978 00145878  48 00 00 08 */	b lbl_8014A980
lbl_8014A97C:
/* 8014A97C 0014587C  38 00 00 00 */	li r0, 0
lbl_8014A980:
/* 8014A980 00145880  2C 00 00 00 */	cmpwi r0, 0
/* 8014A984 00145884  40 82 00 A8 */	bne lbl_8014AA2C
/* 8014A988 00145888  7F E3 FB 78 */	mr r3, r31
/* 8014A98C 0014588C  48 00 01 C1 */	bl DeleteDlTask
/* 8014A990 00145890  2C 03 00 00 */	cmpwi r3, 0
/* 8014A994 00145894  41 80 00 98 */	blt lbl_8014AA2C
/* 8014A998 00145898  38 1B FF FF */	addi r0, r27, -1
/* 8014A99C 0014589C  B0 01 00 A8 */	sth r0, 0xa8(r1)
/* 8014A9A0 001458A0  48 00 00 8C */	b lbl_8014AA2C
lbl_8014A9A4:
/* 8014A9A4 001458A4  80 8D A0 90 */	lwz r4, NWC24WorkP-_SDA_BASE_(r13)
/* 8014A9A8 001458A8  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8014A9AC 001458AC  38 84 30 00 */	addi r4, r4, 0x3000
/* 8014A9B0 001458B0  A0 04 00 12 */	lhz r0, 0x12(r4)
/* 8014A9B4 001458B4  7C 03 00 40 */	cmplw r3, r0
/* 8014A9B8 001458B8  41 80 00 74 */	blt lbl_8014AA2C
/* 8014A9BC 001458BC  A8 01 00 C0 */	lha r0, 0xc0(r1)
/* 8014A9C0 001458C0  2C 00 00 00 */	cmpwi r0, 0
/* 8014A9C4 001458C4  40 82 00 68 */	bne lbl_8014AA2C
/* 8014A9C8 001458C8  2C 1F 00 00 */	cmpwi r31, 0
/* 8014A9CC 001458CC  40 82 00 0C */	bne lbl_8014A9D8
/* 8014A9D0 001458D0  38 00 FF FD */	li r0, -3
/* 8014A9D4 001458D4  48 00 00 38 */	b lbl_8014AA0C
lbl_8014A9D8:
/* 8014A9D8 001458D8  2C 04 00 00 */	cmpwi r4, 0
/* 8014A9DC 001458DC  40 82 00 0C */	bne lbl_8014A9E8
/* 8014A9E0 001458E0  38 00 FF F7 */	li r0, -9
/* 8014A9E4 001458E4  48 00 00 28 */	b lbl_8014AA0C
lbl_8014A9E8:
/* 8014A9E8 001458E8  A0 61 00 A8 */	lhz r3, 0xa8(r1)
/* 8014A9EC 001458EC  28 03 FF FF */	cmplwi r3, 0xffff
/* 8014A9F0 001458F0  41 82 00 18 */	beq lbl_8014AA08
/* 8014A9F4 001458F4  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 8014A9F8 001458F8  7C 03 00 40 */	cmplw r3, r0
/* 8014A9FC 001458FC  41 80 00 0C */	blt lbl_8014AA08
/* 8014AA00 00145900  38 00 FF FD */	li r0, -3
/* 8014AA04 00145904  48 00 00 08 */	b lbl_8014AA0C
lbl_8014AA08:
/* 8014AA08 00145908  38 00 00 00 */	li r0, 0
lbl_8014AA0C:
/* 8014AA0C 0014590C  2C 00 00 00 */	cmpwi r0, 0
/* 8014AA10 00145910  40 82 00 1C */	bne lbl_8014AA2C
/* 8014AA14 00145914  7F E3 FB 78 */	mr r3, r31
/* 8014AA18 00145918  48 00 01 35 */	bl DeleteDlTask
/* 8014AA1C 0014591C  2C 03 00 00 */	cmpwi r3, 0
/* 8014AA20 00145920  41 80 00 0C */	blt lbl_8014AA2C
/* 8014AA24 00145924  38 1B FF FF */	addi r0, r27, -1
/* 8014AA28 00145928  B0 01 00 A8 */	sth r0, 0xa8(r1)
lbl_8014AA2C:
/* 8014AA2C 0014592C  3B DE 00 01 */	addi r30, r30, 1
lbl_8014AA30:
/* 8014AA30 00145930  A0 1C 00 10 */	lhz r0, 0x10(r28)
/* 8014AA34 00145934  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 8014AA38 00145938  7C 03 00 40 */	cmplw r3, r0
/* 8014AA3C 0014593C  41 80 FD E4 */	blt lbl_8014A820
/* 8014AA40 00145940  39 61 02 C0 */	addi r11, r1, 0x2c0
/* 8014AA44 00145944  38 60 00 00 */	li r3, 0
/* 8014AA48 00145948  4B F6 73 45 */	bl _restgpr_26
/* 8014AA4C 0014594C  80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 8014AA50 00145950  7C 08 03 A6 */	mtlr r0
/* 8014AA54 00145954  38 21 02 C0 */	addi r1, r1, 0x2c0
/* 8014AA58 00145958  4E 80 00 20 */	blr 

.global NWC24iLoadDlHeader
NWC24iLoadDlHeader:
/* 8014AA5C 0014595C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8014AA60 00145960  7C 08 02 A6 */	mflr r0
/* 8014AA64 00145964  38 A0 00 02 */	li r5, 2
/* 8014AA68 00145968  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8014AA6C 0014596C  38 61 00 0C */	addi r3, r1, 0xc
/* 8014AA70 00145970  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8014AA74 00145974  3B E0 00 00 */	li r31, 0
/* 8014AA78 00145978  80 8D 87 68 */	lwz r4, DLFilePath-_SDA_BASE_(r13)
/* 8014AA7C 0014597C  93 E1 00 08 */	stw r31, 8(r1)
/* 8014AA80 00145980  4B FF 80 A5 */	bl NWC24FOpen
/* 8014AA84 00145984  2C 03 00 00 */	cmpwi r3, 0
/* 8014AA88 00145988  40 80 00 08 */	bge lbl_8014AA90
/* 8014AA8C 0014598C  48 00 00 AC */	b lbl_8014AB38
lbl_8014AA90:
/* 8014AA90 00145990  38 61 00 0C */	addi r3, r1, 0xc
/* 8014AA94 00145994  38 80 00 00 */	li r4, 0
/* 8014AA98 00145998  38 A0 00 00 */	li r5, 0
/* 8014AA9C 0014599C  4B FF 85 6D */	bl NWC24FSeek
/* 8014AAA0 001459A0  2C 03 00 00 */	cmpwi r3, 0
/* 8014AAA4 001459A4  40 80 00 08 */	bge lbl_8014AAAC
/* 8014AAA8 001459A8  48 00 00 28 */	b lbl_8014AAD0
lbl_8014AAAC:
/* 8014AAAC 001459AC  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014AAB0 001459B0  38 A1 00 0C */	addi r5, r1, 0xc
/* 8014AAB4 001459B4  38 80 08 00 */	li r4, 0x800
/* 8014AAB8 001459B8  38 63 30 00 */	addi r3, r3, 0x3000
/* 8014AABC 001459BC  4B FF 87 39 */	bl NWC24FRead
/* 8014AAC0 001459C0  2C 03 00 00 */	cmpwi r3, 0
/* 8014AAC4 001459C4  40 80 00 08 */	bge lbl_8014AACC
/* 8014AAC8 001459C8  7C 7F 1B 78 */	mr r31, r3
lbl_8014AACC:
/* 8014AACC 001459CC  7F E3 FB 78 */	mr r3, r31
lbl_8014AAD0:
/* 8014AAD0 001459D0  2C 03 00 00 */	cmpwi r3, 0
/* 8014AAD4 001459D4  40 80 00 08 */	bge lbl_8014AADC
/* 8014AAD8 001459D8  48 00 00 60 */	b lbl_8014AB38
lbl_8014AADC:
/* 8014AADC 001459DC  38 61 00 0C */	addi r3, r1, 0xc
/* 8014AAE0 001459E0  38 81 00 08 */	addi r4, r1, 8
/* 8014AAE4 001459E4  4B FF 8A B1 */	bl NWC24FGetLength
/* 8014AAE8 001459E8  2C 03 00 00 */	cmpwi r3, 0
/* 8014AAEC 001459EC  7C 7F 1B 78 */	mr r31, r3
/* 8014AAF0 001459F0  41 80 00 34 */	blt lbl_8014AB24
/* 8014AAF4 001459F4  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014AAF8 001459F8  A0 83 30 10 */	lhz r4, 0x3010(r3)
/* 8014AAFC 001459FC  28 04 00 01 */	cmplwi r4, 1
/* 8014AB00 00145A00  41 80 00 18 */	blt lbl_8014AB18
/* 8014AB04 00145A04  A0 03 30 12 */	lhz r0, 0x3012(r3)
/* 8014AB08 00145A08  28 00 00 01 */	cmplwi r0, 1
/* 8014AB0C 00145A0C  41 80 00 0C */	blt lbl_8014AB18
/* 8014AB10 00145A10  7C 04 00 40 */	cmplw r4, r0
/* 8014AB14 00145A14  40 80 00 0C */	bge lbl_8014AB20
lbl_8014AB18:
/* 8014AB18 00145A18  3B E0 FF F2 */	li r31, -14
/* 8014AB1C 00145A1C  48 00 00 08 */	b lbl_8014AB24
lbl_8014AB20:
/* 8014AB20 00145A20  3B E0 00 00 */	li r31, 0
lbl_8014AB24:
/* 8014AB24 00145A24  38 61 00 0C */	addi r3, r1, 0xc
/* 8014AB28 00145A28  4B FF 83 4D */	bl NWC24FClose
/* 8014AB2C 00145A2C  2C 1F 00 00 */	cmpwi r31, 0
/* 8014AB30 00145A30  41 82 00 08 */	beq lbl_8014AB38
/* 8014AB34 00145A34  7F E3 FB 78 */	mr r3, r31
lbl_8014AB38:
/* 8014AB38 00145A38  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8014AB3C 00145A3C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8014AB40 00145A40  7C 08 03 A6 */	mtlr r0
/* 8014AB44 00145A44  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8014AB48 00145A48  4E 80 00 20 */	blr 

.global DeleteDlTask
DeleteDlTask:
/* 8014AB4C 00145A4C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8014AB50 00145A50  7C 08 02 A6 */	mflr r0
/* 8014AB54 00145A54  38 A0 00 04 */	li r5, 4
/* 8014AB58 00145A58  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8014AB5C 00145A5C  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8014AB60 00145A60  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8014AB64 00145A64  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8014AB68 00145A68  7C 7D 1B 78 */	mr r29, r3
/* 8014AB6C 00145A6C  38 61 00 08 */	addi r3, r1, 8
/* 8014AB70 00145A70  80 8D 87 68 */	lwz r4, DLFilePath-_SDA_BASE_(r13)
/* 8014AB74 00145A74  4B FF 7F B1 */	bl NWC24FOpen
/* 8014AB78 00145A78  2C 03 00 00 */	cmpwi r3, 0
/* 8014AB7C 00145A7C  40 80 00 08 */	bge lbl_8014AB84
/* 8014AB80 00145A80  48 00 01 30 */	b lbl_8014ACB0
lbl_8014AB84:
/* 8014AB84 00145A84  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014AB88 00145A88  38 80 00 00 */	li r4, 0
/* 8014AB8C 00145A8C  A3 FD 00 00 */	lhz r31, 0(r29)
/* 8014AB90 00145A90  38 A0 02 00 */	li r5, 0x200
/* 8014AB94 00145A94  3B C3 38 00 */	addi r30, r3, 0x3800
/* 8014AB98 00145A98  7F C3 F3 78 */	mr r3, r30
/* 8014AB9C 00145A9C  4B EB 95 69 */	bl memset
/* 8014ABA0 00145AA0  38 60 00 FF */	li r3, 0xff
/* 8014ABA4 00145AA4  57 E0 23 36 */	rlwinm r0, r31, 4, 0xc, 0x1b
/* 8014ABA8 00145AA8  98 7E 00 02 */	stb r3, 2(r30)
/* 8014ABAC 00145AAC  38 80 00 00 */	li r4, 0
/* 8014ABB0 00145AB0  38 A0 00 10 */	li r5, 0x10
/* 8014ABB4 00145AB4  B3 FE 00 00 */	sth r31, 0(r30)
/* 8014ABB8 00145AB8  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014ABBC 00145ABC  7C 63 02 14 */	add r3, r3, r0
/* 8014ABC0 00145AC0  38 63 30 80 */	addi r3, r3, 0x3080
/* 8014ABC4 00145AC4  4B EB 95 41 */	bl memset
/* 8014ABC8 00145AC8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8014ABCC 00145ACC  38 61 00 08 */	addi r3, r1, 8
/* 8014ABD0 00145AD0  38 A0 00 00 */	li r5, 0
/* 8014ABD4 00145AD4  54 04 48 2C */	slwi r4, r0, 9
/* 8014ABD8 00145AD8  38 84 08 00 */	addi r4, r4, 0x800
/* 8014ABDC 00145ADC  4B FF 84 2D */	bl NWC24FSeek
/* 8014ABE0 00145AE0  2C 03 00 00 */	cmpwi r3, 0
/* 8014ABE4 00145AE4  40 80 00 08 */	bge lbl_8014ABEC
/* 8014ABE8 00145AE8  48 00 00 40 */	b lbl_8014AC28
lbl_8014ABEC:
/* 8014ABEC 00145AEC  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014ABF0 00145AF0  7F C4 F3 78 */	mr r4, r30
/* 8014ABF4 00145AF4  38 A0 02 00 */	li r5, 0x200
/* 8014ABF8 00145AF8  38 63 38 00 */	addi r3, r3, 0x3800
/* 8014ABFC 00145AFC  4B EB 94 05 */	bl memcpy
/* 8014AC00 00145B00  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014AC04 00145B04  38 A1 00 08 */	addi r5, r1, 8
/* 8014AC08 00145B08  38 80 02 00 */	li r4, 0x200
/* 8014AC0C 00145B0C  38 63 38 00 */	addi r3, r3, 0x3800
/* 8014AC10 00145B10  4B FF 87 B1 */	bl NWC24FWrite
/* 8014AC14 00145B14  2C 03 00 00 */	cmpwi r3, 0
/* 8014AC18 00145B18  38 00 00 00 */	li r0, 0
/* 8014AC1C 00145B1C  40 80 00 08 */	bge lbl_8014AC24
/* 8014AC20 00145B20  7C 60 1B 78 */	mr r0, r3
lbl_8014AC24:
/* 8014AC24 00145B24  7C 03 03 78 */	mr r3, r0
lbl_8014AC28:
/* 8014AC28 00145B28  2C 03 00 00 */	cmpwi r3, 0
/* 8014AC2C 00145B2C  7C 7E 1B 78 */	mr r30, r3
/* 8014AC30 00145B30  41 80 00 6C */	blt lbl_8014AC9C
/* 8014AC34 00145B34  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8014AC38 00145B38  38 80 00 00 */	li r4, 0
/* 8014AC3C 00145B3C  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014AC40 00145B40  38 A0 00 10 */	li r5, 0x10
/* 8014AC44 00145B44  54 00 20 36 */	slwi r0, r0, 4
/* 8014AC48 00145B48  7C 63 02 14 */	add r3, r3, r0
/* 8014AC4C 00145B4C  38 63 30 80 */	addi r3, r3, 0x3080
/* 8014AC50 00145B50  4B EB 94 B5 */	bl memset
/* 8014AC54 00145B54  38 61 00 08 */	addi r3, r1, 8
/* 8014AC58 00145B58  38 80 00 00 */	li r4, 0
/* 8014AC5C 00145B5C  38 A0 00 00 */	li r5, 0
/* 8014AC60 00145B60  4B FF 83 A9 */	bl NWC24FSeek
/* 8014AC64 00145B64  2C 03 00 00 */	cmpwi r3, 0
/* 8014AC68 00145B68  40 80 00 08 */	bge lbl_8014AC70
/* 8014AC6C 00145B6C  48 00 00 2C */	b lbl_8014AC98
lbl_8014AC70:
/* 8014AC70 00145B70  80 6D A0 90 */	lwz r3, NWC24WorkP-_SDA_BASE_(r13)
/* 8014AC74 00145B74  38 A1 00 08 */	addi r5, r1, 8
/* 8014AC78 00145B78  38 80 08 00 */	li r4, 0x800
/* 8014AC7C 00145B7C  38 63 30 00 */	addi r3, r3, 0x3000
/* 8014AC80 00145B80  4B FF 87 41 */	bl NWC24FWrite
/* 8014AC84 00145B84  2C 03 00 00 */	cmpwi r3, 0
/* 8014AC88 00145B88  38 00 00 00 */	li r0, 0
/* 8014AC8C 00145B8C  40 80 00 08 */	bge lbl_8014AC94
/* 8014AC90 00145B90  7C 60 1B 78 */	mr r0, r3
lbl_8014AC94:
/* 8014AC94 00145B94  7C 03 03 78 */	mr r3, r0
lbl_8014AC98:
/* 8014AC98 00145B98  7C 7E 1B 78 */	mr r30, r3
lbl_8014AC9C:
/* 8014AC9C 00145B9C  38 61 00 08 */	addi r3, r1, 8
/* 8014ACA0 00145BA0  4B FF 81 D5 */	bl NWC24FClose
/* 8014ACA4 00145BA4  2C 1E 00 00 */	cmpwi r30, 0
/* 8014ACA8 00145BA8  41 82 00 08 */	beq lbl_8014ACB0
/* 8014ACAC 00145BAC  7F C3 F3 78 */	mr r3, r30
lbl_8014ACB0:
/* 8014ACB0 00145BB0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8014ACB4 00145BB4  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8014ACB8 00145BB8  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8014ACBC 00145BBC  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8014ACC0 00145BC0  7C 08 03 A6 */	mtlr r0
/* 8014ACC4 00145BC4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8014ACC8 00145BC8  4E 80 00 20 */	blr 