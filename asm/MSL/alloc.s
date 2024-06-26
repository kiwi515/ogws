.include "macros.inc"

.section .bss, "wa"
.balign 0x8
.global protopool$343
protopool$343:
	.skip 0x338

.section .rodata, "a"
.balign 0x8
.global fix_pool_sizes
fix_pool_sizes:
	.incbin "baserom.dol", 0x3773E0, 0x18

.section .sbss, "wa"
.balign 0x8
.global init$344
init$344:
	.skip 0x8

.section .text, "ax"
.global Block_link
Block_link:
/* 800B2414 000AD314  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B2418 000AD318  7C 08 02 A6 */	mflr r0
/* 800B241C 000AD31C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2420 000AD320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B2424 000AD324  93 C1 00 08 */	stw r30, 8(r1)
/* 800B2428 000AD328  7C 7E 1B 78 */	mr r30, r3
/* 800B242C 000AD32C  80 A4 00 00 */	lwz r5, 0(r4)
/* 800B2430 000AD330  54 A0 07 FA */	rlwinm r0, r5, 0, 0x1f, 0x1d
/* 800B2434 000AD334  54 A6 00 38 */	rlwinm r6, r5, 0, 0, 0x1c
/* 800B2438 000AD338  90 04 00 00 */	stw r0, 0(r4)
/* 800B243C 000AD33C  7C A4 32 14 */	add r5, r4, r6
/* 800B2440 000AD340  7C 04 30 2E */	lwzx r0, r4, r6
/* 800B2444 000AD344  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800B2448 000AD348  7C 04 31 2E */	stwx r0, r4, r6
/* 800B244C 000AD34C  90 C5 FF FC */	stw r6, -4(r5)
/* 800B2450 000AD350  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800B2454 000AD354  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 800B2458 000AD358  7F E3 02 14 */	add r31, r3, r0
/* 800B245C 000AD35C  84 7F FF FC */	lwzu r3, -4(r31)
/* 800B2460 000AD360  2C 03 00 00 */	cmpwi r3, 0
/* 800B2464 000AD364  41 82 00 C0 */	beq lbl_800B2524
/* 800B2468 000AD368  80 A3 00 08 */	lwz r5, 8(r3)
/* 800B246C 000AD36C  7C 83 23 78 */	mr r3, r4
/* 800B2470 000AD370  90 A4 00 08 */	stw r5, 8(r4)
/* 800B2474 000AD374  90 85 00 0C */	stw r4, 0xc(r5)
/* 800B2478 000AD378  80 1F 00 00 */	lwz r0, 0(r31)
/* 800B247C 000AD37C  90 04 00 0C */	stw r0, 0xc(r4)
/* 800B2480 000AD380  80 BF 00 00 */	lwz r5, 0(r31)
/* 800B2484 000AD384  90 85 00 08 */	stw r4, 8(r5)
/* 800B2488 000AD388  90 9F 00 00 */	stw r4, 0(r31)
/* 800B248C 000AD38C  80 04 00 00 */	lwz r0, 0(r4)
/* 800B2490 000AD390  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B2494 000AD394  40 82 00 80 */	bne lbl_800B2514
/* 800B2498 000AD398  80 C4 FF FC */	lwz r6, -4(r4)
/* 800B249C 000AD39C  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 800B24A0 000AD3A0  41 82 00 08 */	beq lbl_800B24A8
/* 800B24A4 000AD3A4  48 00 00 70 */	b lbl_800B2514
lbl_800B24A8:
/* 800B24A8 000AD3A8  7C 66 20 50 */	subf r3, r6, r4
/* 800B24AC 000AD3AC  80 03 00 00 */	lwz r0, 0(r3)
/* 800B24B0 000AD3B0  54 05 07 7E */	clrlwi r5, r0, 0x1d
/* 800B24B4 000AD3B4  90 A3 00 00 */	stw r5, 0(r3)
/* 800B24B8 000AD3B8  80 04 00 00 */	lwz r0, 0(r4)
/* 800B24BC 000AD3BC  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 800B24C0 000AD3C0  7C 06 02 14 */	add r0, r6, r0
/* 800B24C4 000AD3C4  50 05 00 38 */	rlwimi r5, r0, 0, 0, 0x1c
/* 800B24C8 000AD3C8  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 800B24CC 000AD3CC  90 A3 00 00 */	stw r5, 0(r3)
/* 800B24D0 000AD3D0  40 82 00 18 */	bne lbl_800B24E8
/* 800B24D4 000AD3D4  80 04 00 00 */	lwz r0, 0(r4)
/* 800B24D8 000AD3D8  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 800B24DC 000AD3DC  7C 06 02 14 */	add r0, r6, r0
/* 800B24E0 000AD3E0  7C A3 02 14 */	add r5, r3, r0
/* 800B24E4 000AD3E4  90 05 FF FC */	stw r0, -4(r5)
lbl_800B24E8:
/* 800B24E8 000AD3E8  80 BF 00 00 */	lwz r5, 0(r31)
/* 800B24EC 000AD3EC  7C 05 20 40 */	cmplw r5, r4
/* 800B24F0 000AD3F0  40 82 00 0C */	bne lbl_800B24FC
/* 800B24F4 000AD3F4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 800B24F8 000AD3F8  90 1F 00 00 */	stw r0, 0(r31)
lbl_800B24FC:
/* 800B24FC 000AD3FC  80 04 00 08 */	lwz r0, 8(r4)
/* 800B2500 000AD400  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 800B2504 000AD404  90 05 00 08 */	stw r0, 8(r5)
/* 800B2508 000AD408  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 800B250C 000AD40C  80 85 00 08 */	lwz r4, 8(r5)
/* 800B2510 000AD410  90 A4 00 0C */	stw r5, 0xc(r4)
lbl_800B2514:
/* 800B2514 000AD414  90 7F 00 00 */	stw r3, 0(r31)
/* 800B2518 000AD418  7F E4 FB 78 */	mr r4, r31
/* 800B251C 000AD41C  48 00 00 49 */	bl SubBlock_merge_next
/* 800B2520 000AD420  48 00 00 10 */	b lbl_800B2530
lbl_800B2524:
/* 800B2524 000AD424  90 9F 00 00 */	stw r4, 0(r31)
/* 800B2528 000AD428  90 84 00 08 */	stw r4, 8(r4)
/* 800B252C 000AD42C  90 84 00 0C */	stw r4, 0xc(r4)
lbl_800B2530:
/* 800B2530 000AD430  80 7F 00 00 */	lwz r3, 0(r31)
/* 800B2534 000AD434  80 1E 00 08 */	lwz r0, 8(r30)
/* 800B2538 000AD438  80 63 00 00 */	lwz r3, 0(r3)
/* 800B253C 000AD43C  54 63 00 38 */	rlwinm r3, r3, 0, 0, 0x1c
/* 800B2540 000AD440  7C 00 18 40 */	cmplw r0, r3
/* 800B2544 000AD444  40 80 00 08 */	bge lbl_800B254C
/* 800B2548 000AD448  90 7E 00 08 */	stw r3, 8(r30)
lbl_800B254C:
/* 800B254C 000AD44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B2550 000AD450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B2554 000AD454  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B2558 000AD458  7C 08 03 A6 */	mtlr r0
/* 800B255C 000AD45C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B2560 000AD460  4E 80 00 20 */	blr 

.global SubBlock_merge_next
SubBlock_merge_next:
/* 800B2564 000AD464  80 A3 00 00 */	lwz r5, 0(r3)
/* 800B2568 000AD468  54 A7 00 38 */	rlwinm r7, r5, 0, 0, 0x1c
/* 800B256C 000AD46C  7C C3 38 2E */	lwzx r6, r3, r7
/* 800B2570 000AD470  7D 03 3A 14 */	add r8, r3, r7
/* 800B2574 000AD474  54 C0 07 BD */	rlwinm. r0, r6, 0, 0x1e, 0x1e
/* 800B2578 000AD478  4C 82 00 20 */	bnelr 
/* 800B257C 000AD47C  54 C0 00 38 */	rlwinm r0, r6, 0, 0, 0x1c
/* 800B2580 000AD480  54 A5 07 7E */	clrlwi r5, r5, 0x1d
/* 800B2584 000AD484  7C C7 02 14 */	add r6, r7, r0
/* 800B2588 000AD488  50 C5 00 38 */	rlwimi r5, r6, 0, 0, 0x1c
/* 800B258C 000AD48C  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 800B2590 000AD490  90 A3 00 00 */	stw r5, 0(r3)
/* 800B2594 000AD494  40 82 00 0C */	bne lbl_800B25A0
/* 800B2598 000AD498  7C A3 32 14 */	add r5, r3, r6
/* 800B259C 000AD49C  90 C5 FF FC */	stw r6, -4(r5)
lbl_800B25A0:
/* 800B25A0 000AD4A0  80 03 00 00 */	lwz r0, 0(r3)
/* 800B25A4 000AD4A4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B25A8 000AD4A8  40 82 00 14 */	bne lbl_800B25BC
/* 800B25AC 000AD4AC  7C 03 30 2E */	lwzx r0, r3, r6
/* 800B25B0 000AD4B0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800B25B4 000AD4B4  7C 03 31 2E */	stwx r0, r3, r6
/* 800B25B8 000AD4B8  48 00 00 10 */	b lbl_800B25C8
lbl_800B25BC:
/* 800B25BC 000AD4BC  7C 03 30 2E */	lwzx r0, r3, r6
/* 800B25C0 000AD4C0  60 00 00 04 */	ori r0, r0, 4
/* 800B25C4 000AD4C4  7C 03 31 2E */	stwx r0, r3, r6
lbl_800B25C8:
/* 800B25C8 000AD4C8  80 64 00 00 */	lwz r3, 0(r4)
/* 800B25CC 000AD4CC  7C 03 40 40 */	cmplw r3, r8
/* 800B25D0 000AD4D0  40 82 00 0C */	bne lbl_800B25DC
/* 800B25D4 000AD4D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800B25D8 000AD4D8  90 04 00 00 */	stw r0, 0(r4)
lbl_800B25DC:
/* 800B25DC 000AD4DC  80 04 00 00 */	lwz r0, 0(r4)
/* 800B25E0 000AD4E0  7C 00 40 40 */	cmplw r0, r8
/* 800B25E4 000AD4E4  40 82 00 0C */	bne lbl_800B25F0
/* 800B25E8 000AD4E8  38 00 00 00 */	li r0, 0
/* 800B25EC 000AD4EC  90 04 00 00 */	stw r0, 0(r4)
lbl_800B25F0:
/* 800B25F0 000AD4F0  80 08 00 08 */	lwz r0, 8(r8)
/* 800B25F4 000AD4F4  80 68 00 0C */	lwz r3, 0xc(r8)
/* 800B25F8 000AD4F8  90 03 00 08 */	stw r0, 8(r3)
/* 800B25FC 000AD4FC  80 08 00 0C */	lwz r0, 0xc(r8)
/* 800B2600 000AD500  80 68 00 08 */	lwz r3, 8(r8)
/* 800B2604 000AD504  90 03 00 0C */	stw r0, 0xc(r3)
/* 800B2608 000AD508  4E 80 00 20 */	blr 

.global deallocate_from_fixed_pools
deallocate_from_fixed_pools:
/* 800B260C 000AD50C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B2610 000AD510  7C 08 02 A6 */	mflr r0
/* 800B2614 000AD514  3C C0 80 38 */	lis r6, fix_pool_sizes@ha
/* 800B2618 000AD518  38 E0 00 00 */	li r7, 0
/* 800B261C 000AD51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2620 000AD520  38 C6 B2 E0 */	addi r6, r6, fix_pool_sizes@l
/* 800B2624 000AD524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B2628 000AD528  7C 7F 1B 78 */	mr r31, r3
/* 800B262C 000AD52C  93 C1 00 08 */	stw r30, 8(r1)
/* 800B2630 000AD530  48 00 00 0C */	b lbl_800B263C
lbl_800B2634:
/* 800B2634 000AD534  38 C6 00 04 */	addi r6, r6, 4
/* 800B2638 000AD538  38 E7 00 01 */	addi r7, r7, 1
lbl_800B263C:
/* 800B263C 000AD53C  80 06 00 00 */	lwz r0, 0(r6)
/* 800B2640 000AD540  7C 05 00 40 */	cmplw r5, r0
/* 800B2644 000AD544  41 81 FF F0 */	bgt lbl_800B2634
/* 800B2648 000AD548  38 C4 FF FC */	addi r6, r4, -4
/* 800B264C 000AD54C  80 84 FF FC */	lwz r4, -4(r4)
/* 800B2650 000AD550  54 E0 18 38 */	slwi r0, r7, 3
/* 800B2654 000AD554  7C 63 02 14 */	add r3, r3, r0
/* 800B2658 000AD558  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B265C 000AD55C  2C 00 00 00 */	cmpwi r0, 0
/* 800B2660 000AD560  40 82 00 6C */	bne lbl_800B26CC
/* 800B2664 000AD564  80 A3 00 08 */	lwz r5, 8(r3)
/* 800B2668 000AD568  7C 05 20 40 */	cmplw r5, r4
/* 800B266C 000AD56C  41 82 00 60 */	beq lbl_800B26CC
/* 800B2670 000AD570  80 03 00 04 */	lwz r0, 4(r3)
/* 800B2674 000AD574  7C 00 20 40 */	cmplw r0, r4
/* 800B2678 000AD578  40 82 00 1C */	bne lbl_800B2694
/* 800B267C 000AD57C  80 05 00 00 */	lwz r0, 0(r5)
/* 800B2680 000AD580  90 03 00 08 */	stw r0, 8(r3)
/* 800B2684 000AD584  80 A3 00 04 */	lwz r5, 4(r3)
/* 800B2688 000AD588  80 05 00 00 */	lwz r0, 0(r5)
/* 800B268C 000AD58C  90 03 00 04 */	stw r0, 4(r3)
/* 800B2690 000AD590  48 00 00 3C */	b lbl_800B26CC
lbl_800B2694:
/* 800B2694 000AD594  80 04 00 04 */	lwz r0, 4(r4)
/* 800B2698 000AD598  80 A4 00 00 */	lwz r5, 0(r4)
/* 800B269C 000AD59C  90 05 00 04 */	stw r0, 4(r5)
/* 800B26A0 000AD5A0  80 04 00 00 */	lwz r0, 0(r4)
/* 800B26A4 000AD5A4  80 A4 00 04 */	lwz r5, 4(r4)
/* 800B26A8 000AD5A8  90 05 00 00 */	stw r0, 0(r5)
/* 800B26AC 000AD5AC  80 A3 00 08 */	lwz r5, 8(r3)
/* 800B26B0 000AD5B0  90 A4 00 04 */	stw r5, 4(r4)
/* 800B26B4 000AD5B4  80 A5 00 00 */	lwz r5, 0(r5)
/* 800B26B8 000AD5B8  90 A4 00 00 */	stw r5, 0(r4)
/* 800B26BC 000AD5BC  90 85 00 04 */	stw r4, 4(r5)
/* 800B26C0 000AD5C0  80 A4 00 04 */	lwz r5, 4(r4)
/* 800B26C4 000AD5C4  90 85 00 00 */	stw r4, 0(r5)
/* 800B26C8 000AD5C8  90 83 00 08 */	stw r4, 8(r3)
lbl_800B26CC:
/* 800B26CC 000AD5CC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800B26D0 000AD5D0  90 06 00 04 */	stw r0, 4(r6)
/* 800B26D4 000AD5D4  90 C4 00 0C */	stw r6, 0xc(r4)
/* 800B26D8 000AD5D8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800B26DC 000AD5DC  34 00 FF FF */	addic. r0, r0, -1
/* 800B26E0 000AD5E0  90 04 00 10 */	stw r0, 0x10(r4)
/* 800B26E4 000AD5E4  40 82 00 FC */	bne lbl_800B27E0
/* 800B26E8 000AD5E8  80 03 00 08 */	lwz r0, 8(r3)
/* 800B26EC 000AD5EC  7C 00 20 40 */	cmplw r0, r4
/* 800B26F0 000AD5F0  40 82 00 0C */	bne lbl_800B26FC
/* 800B26F4 000AD5F4  80 04 00 04 */	lwz r0, 4(r4)
/* 800B26F8 000AD5F8  90 03 00 08 */	stw r0, 8(r3)
lbl_800B26FC:
/* 800B26FC 000AD5FC  80 03 00 04 */	lwz r0, 4(r3)
/* 800B2700 000AD600  7C 00 20 40 */	cmplw r0, r4
/* 800B2704 000AD604  40 82 00 0C */	bne lbl_800B2710
/* 800B2708 000AD608  80 04 00 00 */	lwz r0, 0(r4)
/* 800B270C 000AD60C  90 03 00 04 */	stw r0, 4(r3)
lbl_800B2710:
/* 800B2710 000AD610  80 04 00 04 */	lwz r0, 4(r4)
/* 800B2714 000AD614  80 A4 00 00 */	lwz r5, 0(r4)
/* 800B2718 000AD618  90 05 00 04 */	stw r0, 4(r5)
/* 800B271C 000AD61C  80 04 00 00 */	lwz r0, 0(r4)
/* 800B2720 000AD620  80 A4 00 04 */	lwz r5, 4(r4)
/* 800B2724 000AD624  90 05 00 00 */	stw r0, 0(r5)
/* 800B2728 000AD628  80 03 00 08 */	lwz r0, 8(r3)
/* 800B272C 000AD62C  7C 00 20 40 */	cmplw r0, r4
/* 800B2730 000AD630  40 82 00 0C */	bne lbl_800B273C
/* 800B2734 000AD634  38 00 00 00 */	li r0, 0
/* 800B2738 000AD638  90 03 00 08 */	stw r0, 8(r3)
lbl_800B273C:
/* 800B273C 000AD63C  80 03 00 04 */	lwz r0, 4(r3)
/* 800B2740 000AD640  7C 00 20 40 */	cmplw r0, r4
/* 800B2744 000AD644  40 82 00 0C */	bne lbl_800B2750
/* 800B2748 000AD648  38 00 00 00 */	li r0, 0
/* 800B274C 000AD64C  90 03 00 04 */	stw r0, 4(r3)
lbl_800B2750:
/* 800B2750 000AD650  38 84 FF F8 */	addi r4, r4, -8
/* 800B2754 000AD654  80 04 00 04 */	lwz r0, 4(r4)
/* 800B2758 000AD658  54 1E 00 3C */	rlwinm r30, r0, 0, 0, 0x1e
/* 800B275C 000AD65C  7F C3 F3 78 */	mr r3, r30
/* 800B2760 000AD660  4B FF FC B5 */	bl Block_link
/* 800B2764 000AD664  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800B2768 000AD668  38 A0 00 00 */	li r5, 0
/* 800B276C 000AD66C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800B2770 000AD670  40 82 00 20 */	bne lbl_800B2790
/* 800B2774 000AD674  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800B2778 000AD678  54 64 00 38 */	rlwinm r4, r3, 0, 0, 0x1c
/* 800B277C 000AD67C  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 800B2780 000AD680  38 03 FF E8 */	addi r0, r3, -24
/* 800B2784 000AD684  7C 04 00 40 */	cmplw r4, r0
/* 800B2788 000AD688  40 82 00 08 */	bne lbl_800B2790
/* 800B278C 000AD68C  38 A0 00 01 */	li r5, 1
lbl_800B2790:
/* 800B2790 000AD690  2C 05 00 00 */	cmpwi r5, 0
/* 800B2794 000AD694  41 82 00 4C */	beq lbl_800B27E0
/* 800B2798 000AD698  80 9E 00 04 */	lwz r4, 4(r30)
/* 800B279C 000AD69C  7C 04 F0 40 */	cmplw r4, r30
/* 800B27A0 000AD6A0  40 82 00 08 */	bne lbl_800B27A8
/* 800B27A4 000AD6A4  38 80 00 00 */	li r4, 0
lbl_800B27A8:
/* 800B27A8 000AD6A8  80 1F 00 00 */	lwz r0, 0(r31)
/* 800B27AC 000AD6AC  7C 00 F0 40 */	cmplw r0, r30
/* 800B27B0 000AD6B0  40 82 00 08 */	bne lbl_800B27B8
/* 800B27B4 000AD6B4  90 9F 00 00 */	stw r4, 0(r31)
lbl_800B27B8:
/* 800B27B8 000AD6B8  2C 04 00 00 */	cmpwi r4, 0
/* 800B27BC 000AD6BC  41 82 00 10 */	beq lbl_800B27CC
/* 800B27C0 000AD6C0  80 7E 00 00 */	lwz r3, 0(r30)
/* 800B27C4 000AD6C4  90 64 00 00 */	stw r3, 0(r4)
/* 800B27C8 000AD6C8  90 83 00 04 */	stw r4, 4(r3)
lbl_800B27CC:
/* 800B27CC 000AD6CC  38 00 00 00 */	li r0, 0
/* 800B27D0 000AD6D0  7F C3 F3 78 */	mr r3, r30
/* 800B27D4 000AD6D4  90 1E 00 04 */	stw r0, 4(r30)
/* 800B27D8 000AD6D8  90 1E 00 00 */	stw r0, 0(r30)
/* 800B27DC 000AD6DC  4B FF FB 81 */	bl __sys_free
lbl_800B27E0:
/* 800B27E0 000AD6E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B27E4 000AD6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B27E8 000AD6E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B27EC 000AD6EC  7C 08 03 A6 */	mtlr r0
/* 800B27F0 000AD6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800B27F4 000AD6F4  4E 80 00 20 */	blr 

.global free
free:
/* 800B27F8 000AD6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B27FC 000AD6FC  7C 08 02 A6 */	mflr r0
/* 800B2800 000AD700  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2804 000AD704  88 0D 99 E0 */	lbz r0, init$344-_SDA_BASE_(r13)
/* 800B2808 000AD708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B280C 000AD70C  7C 7F 1B 78 */	mr r31, r3
/* 800B2810 000AD710  2C 00 00 00 */	cmpwi r0, 0
/* 800B2814 000AD714  93 C1 00 08 */	stw r30, 8(r1)
/* 800B2818 000AD718  40 82 00 20 */	bne lbl_800B2838
/* 800B281C 000AD71C  3C 60 80 41 */	lis r3, protopool$343@ha
/* 800B2820 000AD720  38 80 00 00 */	li r4, 0
/* 800B2824 000AD724  38 63 B9 60 */	addi r3, r3, protopool$343@l
/* 800B2828 000AD728  38 A0 00 34 */	li r5, 0x34
/* 800B282C 000AD72C  4B F5 18 D9 */	bl memset
/* 800B2830 000AD730  38 00 00 01 */	li r0, 1
/* 800B2834 000AD734  98 0D 99 E0 */	stb r0, init$344-_SDA_BASE_(r13)
lbl_800B2838:
/* 800B2838 000AD738  2C 1F 00 00 */	cmpwi r31, 0
/* 800B283C 000AD73C  3F C0 80 41 */	lis r30, protopool$343@ha
/* 800B2840 000AD740  3B DE B9 60 */	addi r30, r30, protopool$343@l
/* 800B2844 000AD744  41 82 00 CC */	beq lbl_800B2910
/* 800B2848 000AD748  80 7F FF FC */	lwz r3, -4(r31)
/* 800B284C 000AD74C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800B2850 000AD750  40 82 00 0C */	bne lbl_800B285C
/* 800B2854 000AD754  80 A3 00 08 */	lwz r5, 8(r3)
/* 800B2858 000AD758  48 00 00 10 */	b lbl_800B2868
lbl_800B285C:
/* 800B285C 000AD75C  80 1F FF F8 */	lwz r0, -8(r31)
/* 800B2860 000AD760  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 800B2864 000AD764  38 A3 FF F8 */	addi r5, r3, -8
lbl_800B2868:
/* 800B2868 000AD768  28 05 00 44 */	cmplwi r5, 0x44
/* 800B286C 000AD76C  41 81 00 14 */	bgt lbl_800B2880
/* 800B2870 000AD770  7F C3 F3 78 */	mr r3, r30
/* 800B2874 000AD774  7F E4 FB 78 */	mr r4, r31
/* 800B2878 000AD778  4B FF FD 95 */	bl deallocate_from_fixed_pools
/* 800B287C 000AD77C  48 00 00 94 */	b lbl_800B2910
lbl_800B2880:
/* 800B2880 000AD780  80 1F FF FC */	lwz r0, -4(r31)
/* 800B2884 000AD784  38 9F FF F8 */	addi r4, r31, -8
/* 800B2888 000AD788  54 1F 00 3C */	rlwinm r31, r0, 0, 0, 0x1e
/* 800B288C 000AD78C  7F E3 FB 78 */	mr r3, r31
/* 800B2890 000AD790  4B FF FB 85 */	bl Block_link
/* 800B2894 000AD794  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800B2898 000AD798  38 A0 00 00 */	li r5, 0
/* 800B289C 000AD79C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800B28A0 000AD7A0  40 82 00 20 */	bne lbl_800B28C0
/* 800B28A4 000AD7A4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800B28A8 000AD7A8  54 64 00 38 */	rlwinm r4, r3, 0, 0, 0x1c
/* 800B28AC 000AD7AC  54 03 00 38 */	rlwinm r3, r0, 0, 0, 0x1c
/* 800B28B0 000AD7B0  38 03 FF E8 */	addi r0, r3, -24
/* 800B28B4 000AD7B4  7C 04 00 40 */	cmplw r4, r0
/* 800B28B8 000AD7B8  40 82 00 08 */	bne lbl_800B28C0
/* 800B28BC 000AD7BC  38 A0 00 01 */	li r5, 1
lbl_800B28C0:
/* 800B28C0 000AD7C0  2C 05 00 00 */	cmpwi r5, 0
/* 800B28C4 000AD7C4  41 82 00 4C */	beq lbl_800B2910
/* 800B28C8 000AD7C8  80 9F 00 04 */	lwz r4, 4(r31)
/* 800B28CC 000AD7CC  7C 04 F8 40 */	cmplw r4, r31
/* 800B28D0 000AD7D0  40 82 00 08 */	bne lbl_800B28D8
/* 800B28D4 000AD7D4  38 80 00 00 */	li r4, 0
lbl_800B28D8:
/* 800B28D8 000AD7D8  80 1E 00 00 */	lwz r0, 0(r30)
/* 800B28DC 000AD7DC  7C 00 F8 40 */	cmplw r0, r31
/* 800B28E0 000AD7E0  40 82 00 08 */	bne lbl_800B28E8
/* 800B28E4 000AD7E4  90 9E 00 00 */	stw r4, 0(r30)
lbl_800B28E8:
/* 800B28E8 000AD7E8  2C 04 00 00 */	cmpwi r4, 0
/* 800B28EC 000AD7EC  41 82 00 10 */	beq lbl_800B28FC
/* 800B28F0 000AD7F0  80 7F 00 00 */	lwz r3, 0(r31)
/* 800B28F4 000AD7F4  90 64 00 00 */	stw r3, 0(r4)
/* 800B28F8 000AD7F8  90 83 00 04 */	stw r4, 4(r3)
lbl_800B28FC:
/* 800B28FC 000AD7FC  38 00 00 00 */	li r0, 0
/* 800B2900 000AD800  7F E3 FB 78 */	mr r3, r31
/* 800B2904 000AD804  90 1F 00 04 */	stw r0, 4(r31)
/* 800B2908 000AD808  90 1F 00 00 */	stw r0, 0(r31)
/* 800B290C 000AD80C  4B FF FA 51 */	bl __sys_free
lbl_800B2910:
/* 800B2910 000AD810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B2914 000AD814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B2918 000AD818  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B291C 000AD81C  7C 08 03 A6 */	mtlr r0
/* 800B2920 000AD820  38 21 00 10 */	addi r1, r1, 0x10
/* 800B2924 000AD824  4E 80 00 20 */	blr 
