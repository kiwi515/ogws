.include "macros.inc"

.section .bss, "wa"
.balign 0x8
.global _wmb
_wmb:
	.skip 0x50

.section .text, "ax"
.global ResultCallback
ResultCallback:
/* 800D7578 000D2478  1C C3 00 14 */	mulli r6, r3, 0x14
/* 800D757C 000D247C  3C A0 80 41 */	lis r5, _wmb@ha
/* 800D7580 000D2480  38 00 00 00 */	li r0, 0
/* 800D7584 000D2484  38 A5 2D 40 */	addi r5, r5, _wmb@l
/* 800D7588 000D2488  7C 05 31 2E */	stwx r0, r5, r6
/* 800D758C 000D248C  7C A5 32 14 */	add r5, r5, r6
/* 800D7590 000D2490  81 85 00 10 */	lwz r12, 0x10(r5)
/* 800D7594 000D2494  2C 0C 00 00 */	cmpwi r12, 0
/* 800D7598 000D2498  90 05 00 10 */	stw r0, 0x10(r5)
/* 800D759C 000D249C  4D 82 00 20 */	beqlr 
/* 800D75A0 000D24A0  7D 89 03 A6 */	mtctr r12
/* 800D75A4 000D24A4  4E 80 04 20 */	bctr 
/* 800D75A8 000D24A8  4E 80 00 20 */	blr 

.global WPADReadFaceData
WPADReadFaceData:
/* 800D75AC 000D24AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D75B0 000D24B0  7C 08 02 A6 */	mflr r0
/* 800D75B4 000D24B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D75B8 000D24B8  39 61 00 30 */	addi r11, r1, 0x30
/* 800D75BC 000D24BC  4B FD A7 81 */	bl _savegpr_25
/* 800D75C0 000D24C0  3D 00 80 41 */	lis r8, _wpdcb@ha
/* 800D75C4 000D24C4  54 60 10 3A */	slwi r0, r3, 2
/* 800D75C8 000D24C8  39 08 F6 30 */	addi r8, r8, _wpdcb@l
/* 800D75CC 000D24CC  7C 79 1B 78 */	mr r25, r3
/* 800D75D0 000D24D0  7F C8 00 2E */	lwzx r30, r8, r0
/* 800D75D4 000D24D4  7C 9A 23 78 */	mr r26, r4
/* 800D75D8 000D24D8  7C BB 2B 78 */	mr r27, r5
/* 800D75DC 000D24DC  7C DC 33 78 */	mr r28, r6
/* 800D75E0 000D24E0  7C FD 3B 78 */	mr r29, r7
/* 800D75E4 000D24E4  48 01 A2 DD */	bl OSDisableInterrupts
/* 800D75E8 000D24E8  83 FE 08 BC */	lwz r31, 0x8bc(r30)
/* 800D75EC 000D24EC  80 1E 08 DC */	lwz r0, 0x8dc(r30)
/* 800D75F0 000D24F0  2C 1F FF FF */	cmpwi r31, -1
/* 800D75F4 000D24F4  41 82 00 60 */	beq lbl_800D7654
/* 800D75F8 000D24F8  2C 00 00 00 */	cmpwi r0, 0
/* 800D75FC 000D24FC  40 82 00 0C */	bne lbl_800D7608
/* 800D7600 000D2500  3B E0 FF FE */	li r31, -2
/* 800D7604 000D2504  48 00 00 50 */	b lbl_800D7654
lbl_800D7608:
/* 800D7608 000D2508  1C 19 00 14 */	mulli r0, r25, 0x14
/* 800D760C 000D250C  3C 80 80 41 */	lis r4, _wmb@ha
/* 800D7610 000D2510  38 84 2D 40 */	addi r4, r4, _wmb@l
/* 800D7614 000D2514  7C 04 00 6E */	lwzux r0, r4, r0
/* 800D7618 000D2518  2C 00 00 00 */	cmpwi r0, 0
/* 800D761C 000D251C  40 82 00 34 */	bne lbl_800D7650
/* 800D7620 000D2520  38 00 00 01 */	li r0, 1
/* 800D7624 000D2524  90 04 00 00 */	stw r0, 0(r4)
/* 800D7628 000D2528  93 A4 00 10 */	stw r29, 0x10(r4)
/* 800D762C 000D252C  48 01 A2 BD */	bl OSRestoreInterrupts
/* 800D7630 000D2530  3C E0 80 0D */	lis r7, ResultCallback@ha
/* 800D7634 000D2534  7F 23 CB 78 */	mr r3, r25
/* 800D7638 000D2538  7F 44 D3 78 */	mr r4, r26
/* 800D763C 000D253C  7F 65 DB 78 */	mr r5, r27
/* 800D7640 000D2540  38 DC 0F CA */	addi r6, r28, 0xfca
/* 800D7644 000D2544  38 E7 75 78 */	addi r7, r7, ResultCallback@l
/* 800D7648 000D2548  48 00 00 49 */	bl WPADReadMemoryAsync
/* 800D764C 000D254C  48 00 00 2C */	b lbl_800D7678
lbl_800D7650:
/* 800D7650 000D2550  3B E0 FF FE */	li r31, -2
lbl_800D7654:
/* 800D7654 000D2554  48 01 A2 95 */	bl OSRestoreInterrupts
/* 800D7658 000D2558  2C 1D 00 00 */	cmpwi r29, 0
/* 800D765C 000D255C  41 82 00 18 */	beq lbl_800D7674
/* 800D7660 000D2560  7F AC EB 78 */	mr r12, r29
/* 800D7664 000D2564  7F 23 CB 78 */	mr r3, r25
/* 800D7668 000D2568  7F E4 FB 78 */	mr r4, r31
/* 800D766C 000D256C  7D 89 03 A6 */	mtctr r12
/* 800D7670 000D2570  4E 80 04 21 */	bctrl 
lbl_800D7674:
/* 800D7674 000D2574  7F E3 FB 78 */	mr r3, r31
lbl_800D7678:
/* 800D7678 000D2578  39 61 00 30 */	addi r11, r1, 0x30
/* 800D767C 000D257C  4B FD A7 0D */	bl _restgpr_25
/* 800D7680 000D2580  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D7684 000D2584  7C 08 03 A6 */	mtlr r0
/* 800D7688 000D2588  38 21 00 30 */	addi r1, r1, 0x30
/* 800D768C 000D258C  4E 80 00 20 */	blr 

.global WPADReadMemoryAsync
WPADReadMemoryAsync:
/* 800D7690 000D2590  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D7694 000D2594  7C 08 02 A6 */	mflr r0
/* 800D7698 000D2598  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D769C 000D259C  39 61 00 30 */	addi r11, r1, 0x30
/* 800D76A0 000D25A0  4B FD A6 99 */	bl _savegpr_24
/* 800D76A4 000D25A4  3D 00 80 41 */	lis r8, _wpdcb@ha
/* 800D76A8 000D25A8  54 60 10 3A */	slwi r0, r3, 2
/* 800D76AC 000D25AC  39 08 F6 30 */	addi r8, r8, _wpdcb@l
/* 800D76B0 000D25B0  7C 78 1B 78 */	mr r24, r3
/* 800D76B4 000D25B4  7F E8 00 2E */	lwzx r31, r8, r0
/* 800D76B8 000D25B8  7C 99 23 78 */	mr r25, r4
/* 800D76BC 000D25BC  7C BA 2B 78 */	mr r26, r5
/* 800D76C0 000D25C0  7C DB 33 78 */	mr r27, r6
/* 800D76C4 000D25C4  7C FC 3B 78 */	mr r28, r7
/* 800D76C8 000D25C8  48 01 A1 F9 */	bl OSDisableInterrupts
/* 800D76CC 000D25CC  83 BF 08 BC */	lwz r29, 0x8bc(r31)
/* 800D76D0 000D25D0  83 DF 08 DC */	lwz r30, 0x8dc(r31)
/* 800D76D4 000D25D4  48 01 A2 15 */	bl OSRestoreInterrupts
/* 800D76D8 000D25D8  2C 1D FF FF */	cmpwi r29, -1
/* 800D76DC 000D25DC  41 82 00 40 */	beq lbl_800D771C
/* 800D76E0 000D25E0  2C 1E 00 00 */	cmpwi r30, 0
/* 800D76E4 000D25E4  40 82 00 0C */	bne lbl_800D76F0
/* 800D76E8 000D25E8  3B A0 FF FE */	li r29, -2
/* 800D76EC 000D25EC  48 00 00 30 */	b lbl_800D771C
lbl_800D76F0:
/* 800D76F0 000D25F0  7F 24 CB 78 */	mr r4, r25
/* 800D76F4 000D25F4  7F 45 D3 78 */	mr r5, r26
/* 800D76F8 000D25F8  7F 66 DB 78 */	mr r6, r27
/* 800D76FC 000D25FC  7F 87 E3 78 */	mr r7, r28
/* 800D7700 000D2600  38 7F 01 60 */	addi r3, r31, 0x160
/* 800D7704 000D2604  4B FF A1 0D */	bl WPADiSendReadData
/* 800D7708 000D2608  7C 83 00 D0 */	neg r4, r3
/* 800D770C 000D260C  38 00 FF FE */	li r0, -2
/* 800D7710 000D2610  7C 83 1B 78 */	or r3, r4, r3
/* 800D7714 000D2614  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 800D7718 000D2618  7C 1D 18 78 */	andc r29, r0, r3
lbl_800D771C:
/* 800D771C 000D261C  2C 1D 00 00 */	cmpwi r29, 0
/* 800D7720 000D2620  41 82 00 20 */	beq lbl_800D7740
/* 800D7724 000D2624  2C 1C 00 00 */	cmpwi r28, 0
/* 800D7728 000D2628  41 82 00 18 */	beq lbl_800D7740
/* 800D772C 000D262C  7F 8C E3 78 */	mr r12, r28
/* 800D7730 000D2630  7F 03 C3 78 */	mr r3, r24
/* 800D7734 000D2634  7F A4 EB 78 */	mr r4, r29
/* 800D7738 000D2638  7D 89 03 A6 */	mtctr r12
/* 800D773C 000D263C  4E 80 04 21 */	bctrl 
lbl_800D7740:
/* 800D7740 000D2640  39 61 00 30 */	addi r11, r1, 0x30
/* 800D7744 000D2644  7F A3 EB 78 */	mr r3, r29
/* 800D7748 000D2648  4B FD A6 3D */	bl _restgpr_24
/* 800D774C 000D264C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D7750 000D2650  7C 08 03 A6 */	mtlr r0
/* 800D7754 000D2654  38 21 00 30 */	addi r1, r1, 0x30
/* 800D7758 000D2658  4E 80 00 20 */	blr 
