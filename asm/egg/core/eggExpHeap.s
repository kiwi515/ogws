.include "macros.inc"

.section .data, "wa"
.balign 0x8
.global __vt__Q23EGG7ExpHeap
__vt__Q23EGG7ExpHeap:
    .long 0
    .long 0
    .long __dt__Q23EGG7ExpHeapFv
    .long getHeapKind__Q23EGG7ExpHeapCFv
    .long initAllocator__Q23EGG7ExpHeapFPQ23EGG9Allocatorl
    .long alloc__Q23EGG7ExpHeapFUll
    .long free__Q23EGG7ExpHeapFPv
    .long destroy__Q23EGG7ExpHeapFv
    .long resizeForMBlock__Q23EGG7ExpHeapFPvUl
    .long getAllocatableSize__Q23EGG7ExpHeapFl
    .long adjust__Q23EGG7ExpHeapFv
    .long 0

.section .text, "ax"
.global __dt__Q23EGG7ExpHeapFv
__dt__Q23EGG7ExpHeapFv:
/* 800A2620 0009D520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A2624 0009D524  7C 08 02 A6 */	mflr r0
/* 800A2628 0009D528  2C 03 00 00 */	cmpwi r3, 0
/* 800A262C 0009D52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A2630 0009D530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A2634 0009D534  7C 9F 23 78 */	mr r31, r4
/* 800A2638 0009D538  93 C1 00 08 */	stw r30, 8(r1)
/* 800A263C 0009D53C  7C 7E 1B 78 */	mr r30, r3
/* 800A2640 0009D540  41 82 00 38 */	beq lbl_800A2678
/* 800A2644 0009D544  3C 80 80 3A */	lis r4, __vt__Q23EGG7ExpHeap@ha
/* 800A2648 0009D548  38 84 80 B8 */	addi r4, r4, __vt__Q23EGG7ExpHeap@l
/* 800A264C 0009D54C  90 83 00 00 */	stw r4, 0(r3)
/* 800A2650 0009D550  48 00 0B 29 */	bl dispose__Q23EGG4HeapFv
/* 800A2654 0009D554  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800A2658 0009D558  48 04 42 F9 */	bl MEMDestroyExpHeap
/* 800A265C 0009D55C  7F C3 F3 78 */	mr r3, r30
/* 800A2660 0009D560  38 80 00 00 */	li r4, 0
/* 800A2664 0009D564  48 00 06 B9 */	bl __dt__Q23EGG4HeapFv
/* 800A2668 0009D568  2C 1F 00 00 */	cmpwi r31, 0
/* 800A266C 0009D56C  40 81 00 0C */	ble lbl_800A2678
/* 800A2670 0009D570  7F C3 F3 78 */	mr r3, r30
/* 800A2674 0009D574  48 00 0C 11 */	bl __dl__FPv
lbl_800A2678:
/* 800A2678 0009D578  7F C3 F3 78 */	mr r3, r30
/* 800A267C 0009D57C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A2680 0009D580  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A2684 0009D584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A2688 0009D588  7C 08 03 A6 */	mtlr r0
/* 800A268C 0009D58C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A2690 0009D590  4E 80 00 20 */	blr 

.global create__Q23EGG7ExpHeapFPvUlUs
create__Q23EGG7ExpHeapFPvUlUs:
/* 800A2694 0009D594  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A2698 0009D598  7C 08 02 A6 */	mflr r0
/* 800A269C 0009D59C  7C 83 22 14 */	add r4, r3, r4
/* 800A26A0 0009D5A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A26A4 0009D5A4  38 03 00 03 */	addi r0, r3, 3
/* 800A26A8 0009D5A8  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800A26AC 0009D5AC  7C 7D 1B 78 */	mr r29, r3
/* 800A26B0 0009D5B0  54 83 00 3A */	rlwinm r3, r4, 0, 0, 0x1d
/* 800A26B4 0009D5B4  54 1B 00 3A */	rlwinm r27, r0, 0, 0, 0x1d
/* 800A26B8 0009D5B8  7C 1B 18 40 */	cmplw r27, r3
/* 800A26BC 0009D5BC  3B C0 00 00 */	li r30, 0
/* 800A26C0 0009D5C0  41 81 00 10 */	bgt lbl_800A26D0
/* 800A26C4 0009D5C4  7C 9B 18 50 */	subf r4, r27, r3
/* 800A26C8 0009D5C8  28 04 00 38 */	cmplwi r4, 0x38
/* 800A26CC 0009D5CC  40 80 00 0C */	bge lbl_800A26D8
lbl_800A26D0:
/* 800A26D0 0009D5D0  38 60 00 00 */	li r3, 0
/* 800A26D4 0009D5D4  48 00 00 58 */	b lbl_800A272C
lbl_800A26D8:
/* 800A26D8 0009D5D8  38 7B 00 34 */	addi r3, r27, 0x34
/* 800A26DC 0009D5DC  38 84 FF CC */	addi r4, r4, -52
/* 800A26E0 0009D5E0  48 04 41 C1 */	bl MEMCreateExpHeapEx
/* 800A26E4 0009D5E4  2C 03 00 00 */	cmpwi r3, 0
/* 800A26E8 0009D5E8  7C 7C 1B 78 */	mr r28, r3
/* 800A26EC 0009D5EC  41 82 00 3C */	beq lbl_800A2728
/* 800A26F0 0009D5F0  7F 63 DB 78 */	mr r3, r27
/* 800A26F4 0009D5F4  48 00 09 05 */	bl findContainHeap__Q23EGG4HeapFPCv
/* 800A26F8 0009D5F8  2C 1B 00 00 */	cmpwi r27, 0
/* 800A26FC 0009D5FC  7C 7F 1B 78 */	mr r31, r3
/* 800A2700 0009D600  41 82 00 1C */	beq lbl_800A271C
/* 800A2704 0009D604  7F 63 DB 78 */	mr r3, r27
/* 800A2708 0009D608  7F 84 E3 78 */	mr r4, r28
/* 800A270C 0009D60C  48 00 05 61 */	bl __ct__Q23EGG4HeapFP12MEMiHeapHead
/* 800A2710 0009D610  3C 60 80 3A */	lis r3, __vt__Q23EGG7ExpHeap@ha
/* 800A2714 0009D614  38 63 80 B8 */	addi r3, r3, __vt__Q23EGG7ExpHeap@l
/* 800A2718 0009D618  90 7B 00 00 */	stw r3, 0(r27)
lbl_800A271C:
/* 800A271C 0009D61C  93 BB 00 14 */	stw r29, 0x14(r27)
/* 800A2720 0009D620  7F 7E DB 78 */	mr r30, r27
/* 800A2724 0009D624  93 FB 00 18 */	stw r31, 0x18(r27)
lbl_800A2728:
/* 800A2728 0009D628  7F C3 F3 78 */	mr r3, r30
lbl_800A272C:
/* 800A272C 0009D62C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800A2730 0009D630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A2734 0009D634  7C 08 03 A6 */	mtlr r0
/* 800A2738 0009D638  38 21 00 20 */	addi r1, r1, 0x20
/* 800A273C 0009D63C  4E 80 00 20 */	blr 

.global create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs
create__Q23EGG7ExpHeapFUlPQ23EGG4HeapUs:
/* 800A2740 0009D640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A2744 0009D644  7C 08 02 A6 */	mflr r0
/* 800A2748 0009D648  2C 04 00 00 */	cmpwi r4, 0
/* 800A274C 0009D64C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A2750 0009D650  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800A2754 0009D654  7C 7B 1B 78 */	mr r27, r3
/* 800A2758 0009D658  7C 9C 23 78 */	mr r28, r4
/* 800A275C 0009D65C  7C BD 2B 78 */	mr r29, r5
/* 800A2760 0009D660  3B E0 00 00 */	li r31, 0
/* 800A2764 0009D664  40 82 00 08 */	bne lbl_800A276C
/* 800A2768 0009D668  83 8D 99 28 */	lwz r28, sCurrentHeap__Q23EGG4Heap-_SDA_BASE_(r13)
lbl_800A276C:
/* 800A276C 0009D66C  3C 03 00 01 */	addis r0, r3, 1
/* 800A2770 0009D670  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A2774 0009D674  40 82 00 20 */	bne lbl_800A2794
/* 800A2778 0009D678  81 9C 00 00 */	lwz r12, 0(r28)
/* 800A277C 0009D67C  7F 83 E3 78 */	mr r3, r28
/* 800A2780 0009D680  38 80 00 04 */	li r4, 4
/* 800A2784 0009D684  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800A2788 0009D688  7D 89 03 A6 */	mtctr r12
/* 800A278C 0009D68C  4E 80 04 21 */	bctrl 
/* 800A2790 0009D690  7C 7B 1B 78 */	mr r27, r3
lbl_800A2794:
/* 800A2794 0009D694  81 9C 00 00 */	lwz r12, 0(r28)
/* 800A2798 0009D698  7F 83 E3 78 */	mr r3, r28
/* 800A279C 0009D69C  7F 64 DB 78 */	mr r4, r27
/* 800A27A0 0009D6A0  38 A0 00 04 */	li r5, 4
/* 800A27A4 0009D6A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800A27A8 0009D6A8  7D 89 03 A6 */	mtctr r12
/* 800A27AC 0009D6AC  4E 80 04 21 */	bctrl 
/* 800A27B0 0009D6B0  2C 03 00 00 */	cmpwi r3, 0
/* 800A27B4 0009D6B4  7C 7E 1B 78 */	mr r30, r3
/* 800A27B8 0009D6B8  41 82 00 3C */	beq lbl_800A27F4
/* 800A27BC 0009D6BC  7F 64 DB 78 */	mr r4, r27
/* 800A27C0 0009D6C0  7F A5 EB 78 */	mr r5, r29
/* 800A27C4 0009D6C4  4B FF FE D1 */	bl create__Q23EGG7ExpHeapFPvUlUs
/* 800A27C8 0009D6C8  2C 03 00 00 */	cmpwi r3, 0
/* 800A27CC 0009D6CC  7C 7F 1B 78 */	mr r31, r3
/* 800A27D0 0009D6D0  41 82 00 0C */	beq lbl_800A27DC
/* 800A27D4 0009D6D4  93 83 00 18 */	stw r28, 0x18(r3)
/* 800A27D8 0009D6D8  48 00 00 1C */	b lbl_800A27F4
lbl_800A27DC:
/* 800A27DC 0009D6DC  81 9C 00 00 */	lwz r12, 0(r28)
/* 800A27E0 0009D6E0  7F 83 E3 78 */	mr r3, r28
/* 800A27E4 0009D6E4  7F C4 F3 78 */	mr r4, r30
/* 800A27E8 0009D6E8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800A27EC 0009D6EC  7D 89 03 A6 */	mtctr r12
/* 800A27F0 0009D6F0  4E 80 04 21 */	bctrl 
lbl_800A27F4:
/* 800A27F4 0009D6F4  7F E3 FB 78 */	mr r3, r31
/* 800A27F8 0009D6F8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800A27FC 0009D6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A2800 0009D700  7C 08 03 A6 */	mtlr r0
/* 800A2804 0009D704  38 21 00 20 */	addi r1, r1, 0x20
/* 800A2808 0009D708  4E 80 00 20 */	blr 

.global destroy__Q23EGG7ExpHeapFv
destroy__Q23EGG7ExpHeapFv:
/* 800A280C 0009D70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A2810 0009D710  7C 08 02 A6 */	mflr r0
/* 800A2814 0009D714  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A2818 0009D718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A281C 0009D71C  93 C1 00 08 */	stw r30, 8(r1)
/* 800A2820 0009D720  7C 7E 1B 78 */	mr r30, r3
/* 800A2824 0009D724  48 00 07 85 */	bl findParentHeap__Q23EGG4HeapFv
/* 800A2828 0009D728  81 9E 00 00 */	lwz r12, 0(r30)
/* 800A282C 0009D72C  7C 7F 1B 78 */	mr r31, r3
/* 800A2830 0009D730  7F C3 F3 78 */	mr r3, r30
/* 800A2834 0009D734  38 80 FF FF */	li r4, -1
/* 800A2838 0009D738  81 8C 00 08 */	lwz r12, 8(r12)
/* 800A283C 0009D73C  7D 89 03 A6 */	mtctr r12
/* 800A2840 0009D740  4E 80 04 21 */	bctrl 
/* 800A2844 0009D744  2C 1F 00 00 */	cmpwi r31, 0
/* 800A2848 0009D748  41 82 00 1C */	beq lbl_800A2864
/* 800A284C 0009D74C  81 9F 00 00 */	lwz r12, 0(r31)
/* 800A2850 0009D750  7F E3 FB 78 */	mr r3, r31
/* 800A2854 0009D754  7F C4 F3 78 */	mr r4, r30
/* 800A2858 0009D758  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800A285C 0009D75C  7D 89 03 A6 */	mtctr r12
/* 800A2860 0009D760  4E 80 04 21 */	bctrl 
lbl_800A2864:
/* 800A2864 0009D764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A2868 0009D768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A286C 0009D76C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A2870 0009D770  7C 08 03 A6 */	mtlr r0
/* 800A2874 0009D774  38 21 00 10 */	addi r1, r1, 0x10
/* 800A2878 0009D778  4E 80 00 20 */	blr 

.global alloc__Q23EGG7ExpHeapFUll
alloc__Q23EGG7ExpHeapFUll:
/* 800A287C 0009D77C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800A2880 0009D780  48 04 41 00 */	b MEMAllocFromExpHeapEx

.global free__Q23EGG7ExpHeapFPv
free__Q23EGG7ExpHeapFPv:
/* 800A2884 0009D784  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800A2888 0009D788  48 04 43 94 */	b MEMFreeToExpHeap

.global resizeForMBlock__Q23EGG7ExpHeapFPvUl
resizeForMBlock__Q23EGG7ExpHeapFPvUl:
/* 800A288C 0009D78C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800A2890 0009D790  48 04 41 A0 */	b MEMResizeForMBlockExpHeap

.global getAllocatableSize__Q23EGG7ExpHeapFl
getAllocatableSize__Q23EGG7ExpHeapFl:
/* 800A2894 0009D794  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800A2898 0009D798  48 04 44 50 */	b MEMGetAllocatableSizeForExpHeapEx

.global adjust__Q23EGG7ExpHeapFv
adjust__Q23EGG7ExpHeapFv:
/* 800A289C 0009D79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A28A0 0009D7A0  7C 08 02 A6 */	mflr r0
/* 800A28A4 0009D7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A28A8 0009D7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A28AC 0009D7AC  93 C1 00 08 */	stw r30, 8(r1)
/* 800A28B0 0009D7B0  7C 7E 1B 78 */	mr r30, r3
/* 800A28B4 0009D7B4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800A28B8 0009D7B8  48 04 45 09 */	bl MEMAdjustExpHeap
/* 800A28BC 0009D7BC  3B E3 00 34 */	addi r31, r3, 0x34
/* 800A28C0 0009D7C0  28 1F 00 34 */	cmplwi r31, 0x34
/* 800A28C4 0009D7C4  40 81 00 30 */	ble lbl_800A28F4
/* 800A28C8 0009D7C8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 800A28CC 0009D7CC  2C 03 00 00 */	cmpwi r3, 0
/* 800A28D0 0009D7D0  41 82 00 24 */	beq lbl_800A28F4
/* 800A28D4 0009D7D4  81 83 00 00 */	lwz r12, 0(r3)
/* 800A28D8 0009D7D8  7F E5 FB 78 */	mr r5, r31
/* 800A28DC 0009D7DC  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 800A28E0 0009D7E0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800A28E4 0009D7E4  7D 89 03 A6 */	mtctr r12
/* 800A28E8 0009D7E8  4E 80 04 21 */	bctrl 
/* 800A28EC 0009D7EC  7F E3 FB 78 */	mr r3, r31
/* 800A28F0 0009D7F0  48 00 00 08 */	b lbl_800A28F8
lbl_800A28F4:
/* 800A28F4 0009D7F4  38 60 00 00 */	li r3, 0
lbl_800A28F8:
/* 800A28F8 0009D7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A28FC 0009D7FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A2900 0009D800  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A2904 0009D804  7C 08 03 A6 */	mtlr r0
/* 800A2908 0009D808  38 21 00 10 */	addi r1, r1, 0x10
/* 800A290C 0009D80C  4E 80 00 20 */	blr 

.global initAllocator__Q23EGG7ExpHeapFPQ23EGG9Allocatorl
initAllocator__Q23EGG7ExpHeapFPQ23EGG9Allocatorl:
/* 800A2910 0009D810  7C 66 1B 78 */	mr r6, r3
/* 800A2914 0009D814  7C 83 23 78 */	mr r3, r4
/* 800A2918 0009D818  80 86 00 10 */	lwz r4, 0x10(r6)
/* 800A291C 0009D81C  48 04 4B 90 */	b MEMInitAllocatorForExpHeap

.global getHeapKind__Q23EGG7ExpHeapCFv
getHeapKind__Q23EGG7ExpHeapCFv:
/* 800A2920 0009D820  38 60 00 01 */	li r3, 1
/* 800A2924 0009D824  4E 80 00 20 */	blr 
