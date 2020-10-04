.include "macros.inc"

.section .text, "ax"  # 0x800076E0 - 0x80355080 

.global InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound
InsertSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound:
/* 800393D8 000342D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800393DC 000342DC  7C 08 02 A6 */	mflr r0
/* 800393E0 000342E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800393E4 000342E4  38 03 00 04 */	addi r0, r3, 4
/* 800393E8 000342E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800393EC 000342EC  7C 9F 23 78 */	mr r31, r4
/* 800393F0 000342F0  38 81 00 08 */	addi r4, r1, 8
/* 800393F4 000342F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800393F8 000342F8  7C 7E 1B 78 */	mr r30, r3
/* 800393FC 000342FC  38 BF 00 D0 */	addi r5, r31, 0xd0
/* 80039400 00034300  90 01 00 08 */	stw r0, 8(r1)
/* 80039404 00034304  4B FC E6 89 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80039408 00034308  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8003940C 0003430C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80039410 00034310  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80039414 00034314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80039418 00034318  7C 08 03 A6 */	mtlr r0
/* 8003941C 0003431C  38 21 00 20 */	addi r1, r1, 0x20
/* 80039420 00034320  4E 80 00 20 */	blr 

.global RemoveSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound
RemoveSoundList__Q44nw4r3snd6detail19ExternalSoundPlayerFPQ44nw4r3snd6detail10BasicSound:
/* 80039424 00034324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039428 00034328  7C 08 02 A6 */	mflr r0
/* 8003942C 0003432C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039430 00034330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80039434 00034334  7C 9F 23 78 */	mr r31, r4
/* 80039438 00034338  38 84 00 D0 */	addi r4, r4, 0xd0
/* 8003943C 0003433C  4B FC E6 7D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80039440 00034340  38 00 00 00 */	li r0, 0
/* 80039444 00034344  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80039448 00034348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003944C 0003434C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039450 00034350  7C 08 03 A6 */	mtlr r0
/* 80039454 00034354  38 21 00 10 */	addi r1, r1, 0x10
/* 80039458 00034358  4E 80 00 20 */	blr 

.global GetLowestPrioritySound__Q44nw4r3snd6detail19ExternalSoundPlayerFv
GetLowestPrioritySound__Q44nw4r3snd6detail19ExternalSoundPlayerFv:
/* 8003945C 0003435C  80 83 00 04 */	lwz r4, 4(r3)
/* 80039460 00034360  38 03 00 04 */	addi r0, r3, 4
/* 80039464 00034364  39 00 00 80 */	li r8, 0x80
/* 80039468 00034368  38 60 00 00 */	li r3, 0
/* 8003946C 0003436C  48 00 00 40 */	b lbl_800394AC
lbl_80039470:
/* 80039470 00034370  88 C4 FF A4 */	lbz r6, -0x5c(r4)
/* 80039474 00034374  38 E4 FF 30 */	addi r7, r4, -208
/* 80039478 00034378  80 A4 FF 70 */	lwz r5, -0x90(r4)
/* 8003947C 0003437C  7C C6 2A 14 */	add r6, r6, r5
/* 80039480 00034380  2C 06 00 7F */	cmpwi r6, 0x7f
/* 80039484 00034384  40 81 00 0C */	ble lbl_80039490
/* 80039488 00034388  38 A0 00 7F */	li r5, 0x7f
/* 8003948C 0003438C  48 00 00 0C */	b lbl_80039498
lbl_80039490:
/* 80039490 00034390  7C C5 FE 70 */	srawi r5, r6, 0x1f
/* 80039494 00034394  7C C5 28 78 */	andc r5, r6, r5
lbl_80039498:
/* 80039498 00034398  7C 08 28 00 */	cmpw r8, r5
/* 8003949C 0003439C  40 81 00 0C */	ble lbl_800394A8
/* 800394A0 000343A0  7C E3 3B 78 */	mr r3, r7
/* 800394A4 000343A4  7C A8 2B 78 */	mr r8, r5
lbl_800394A8:
/* 800394A8 000343A8  80 84 00 00 */	lwz r4, 0(r4)
lbl_800394AC:
/* 800394AC 000343AC  7C 04 00 40 */	cmplw r4, r0
/* 800394B0 000343B0  40 82 FF C0 */	bne lbl_80039470
/* 800394B4 000343B4  4E 80 00 20 */	blr 
