.include "macros.inc"

.section .sdata2, "a"
.balign 0x8
.global lbl_804C0A50
lbl_804C0A50:
	.long 0x43300000
    .long 0x00000000
.global lbl_804C0A58
lbl_804C0A58:
	.single 0e59.94 # NTSC framerate
.global lbl_804C0A5C
lbl_804C0A5C:
	.single 0e50.0 # PAL50 framerate

.section .rodata, "a"
.balign 0x8
# Not going to bother removing the .incbins here,
# it is an array of GXRenderModeObj objects.
.global gRMO_Ntsc_640x456IntDf_4x3__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Ntsc_640x456IntDf_4x3__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x3769A8, 0x3C
.global gRMO_Ntsc_640x456Prog_4x3__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Ntsc_640x456Prog_4x3__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x3769E4, 0x3C
.global gRMO_Pal50_640x456IntDf_4x3__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Pal50_640x456IntDf_4x3__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x376A20, 0x3C
.global gRMO_Pal60_640x456IntDf_4x3__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Pal60_640x456IntDf_4x3__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x376A5C, 0x3C
.global gRMO_Pal60_640x456Prog_4x3__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Pal60_640x456Prog_4x3__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x376A98, 0x3C
.global gRMO_Ntsc_640x456IntDf_16x9__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Ntsc_640x456IntDf_16x9__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x376AD4, 0x3C
.global gRMO_Ntsc_640x456Prog_16x9__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Ntsc_640x456Prog_16x9__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x376B10, 0x3C
.global gRMO_Pal50_640x456IntDf_16x9__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Pal50_640x456IntDf_16x9__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x376B4C, 0x3C
.global gRMO_Pal60_640x456IntDf_16x9__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Pal60_640x456IntDf_16x9__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x376B88, 0x3C
.global gRMO_Pal60_640x456Prog_16x9__22$$2unnamed$$2eggVideo_cpp$$2
gRMO_Pal60_640x456Prog_16x9__22$$2unnamed$$2eggVideo_cpp$$2:
    .incbin "baserom.dol", 0x376BC4, 0x3C
# String pool placed after the render objs
assertStrings:
.string "eggVideo.cpp"
.string "RenderMode is null"

.section .text, "ax"
.global initialize__Q23EGG5VideoFP16_GXRenderModeObj
initialize__Q23EGG5VideoFP16_GXRenderModeObj:
/* 800AA3A8 000A52A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AA3AC 000A52AC  7C 08 02 A6 */	mflr r0
/* 800AA3B0 000A52B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA3B4 000A52B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AA3B8 000A52B8  7C 9F 23 78 */	mr r31, r4
/* 800AA3BC 000A52BC  93 C1 00 08 */	stw r30, 8(r1)
/* 800AA3C0 000A52C0  7C 7E 1B 78 */	mr r30, r3
/* 800AA3C4 000A52C4  48 05 09 E5 */	bl VIInit
/* 800AA3C8 000A52C8  7F C3 F3 78 */	mr r3, r30
/* 800AA3CC 000A52CC  7F E4 FB 78 */	mr r4, r31
/* 800AA3D0 000A52D0  48 00 00 1D */	bl configure__Q23EGG5VideoFP16_GXRenderModeObj
/* 800AA3D4 000A52D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AA3D8 000A52D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AA3DC 000A52DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AA3E0 000A52E0  7C 08 03 A6 */	mtlr r0
/* 800AA3E4 000A52E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800AA3E8 000A52E8  4E 80 00 20 */	blr 

.global configure__Q23EGG5VideoFP16_GXRenderModeObj
configure__Q23EGG5VideoFP16_GXRenderModeObj:
/* 800AA3EC 000A52EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AA3F0 000A52F0  7C 08 02 A6 */	mflr r0
/* 800AA3F4 000A52F4  2C 04 00 00 */	cmpwi r4, 0
/* 800AA3F8 000A52F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AA3FC 000A52FC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 800AA400 000A5300  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800AA404 000A5304  7C 9F 23 78 */	mr r31, r4
/* 800AA408 000A5308  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800AA40C 000A530C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 800AA410 000A5310  93 81 00 08 */	stw r28, 8(r1)
/* 800AA414 000A5314  7C 7C 1B 78 */	mr r28, r3
/* 800AA418 000A5318  83 C3 00 00 */	lwz r30, 0(r3)
/* 800AA41C 000A531C  40 82 00 0C */	bne lbl_800AA428
/* 800AA420 000A5320  48 00 01 A1 */	bl getStandardRenderModeObj__Q23EGG5VideoFv
/* 800AA424 000A5324  7C 7F 1B 78 */	mr r31, r3
lbl_800AA428:
/* 800AA428 000A5328  80 1C 00 00 */	lwz r0, 0(r28)
/* 800AA42C 000A532C  7C 00 F8 40 */	cmplw r0, r31
/* 800AA430 000A5330  41 82 00 84 */	beq lbl_800AA4B4
/* 800AA434 000A5334  93 FC 00 00 */	stw r31, 0(r28)
/* 800AA438 000A5338  38 60 00 01 */	li r3, 1
/* 800AA43C 000A533C  48 05 1F C1 */	bl VISetBlack
/* 800AA440 000A5340  7F E3 FB 78 */	mr r3, r31
/* 800AA444 000A5344  48 05 13 49 */	bl VIConfigure
/* 800AA448 000A5348  48 05 1E 2D */	bl VIFlush
/* 800AA44C 000A534C  48 04 B1 D1 */	bl OSGetTick
/* 800AA450 000A5350  88 1C 00 04 */	lbz r0, 4(r28)
/* 800AA454 000A5354  90 7C 00 08 */	stw r3, 8(r28)
/* 800AA458 000A5358  60 00 00 01 */	ori r0, r0, 1
/* 800AA45C 000A535C  98 1C 00 04 */	stb r0, 4(r28)
/* 800AA460 000A5360  A3 9F 00 06 */	lhz r28, 6(r31)
/* 800AA464 000A5364  A3 BF 00 04 */	lhz r29, 4(r31)
/* 800AA468 000A5368  A0 9F 00 08 */	lhz r4, 8(r31)
/* 800AA46C 000A536C  7F 83 E3 78 */	mr r3, r28
/* 800AA470 000A5370  48 03 4C 39 */	bl GXGetYScaleFactor
/* 800AA474 000A5374  FF E0 08 90 */	fmr f31, f1
/* 800AA478 000A5378  7F 83 E3 78 */	mr r3, r28
/* 800AA47C 000A537C  48 03 4B A1 */	bl GXGetNumXfbLines
/* 800AA480 000A5380  7C 7F 1B 78 */	mr r31, r3
/* 800AA484 000A5384  7F A5 EB 78 */	mr r5, r29
/* 800AA488 000A5388  7F 86 E3 78 */	mr r6, r28
/* 800AA48C 000A538C  38 60 00 00 */	li r3, 0
/* 800AA490 000A5390  38 80 00 00 */	li r4, 0
/* 800AA494 000A5394  48 03 49 81 */	bl GXSetDispCopySrc
/* 800AA498 000A5398  7F A3 EB 78 */	mr r3, r29
/* 800AA49C 000A539C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 800AA4A0 000A53A0  48 03 49 F5 */	bl GXSetDispCopyDst
/* 800AA4A4 000A53A4  FC 20 F8 90 */	fmr f1, f31
/* 800AA4A8 000A53A8  48 03 4E 31 */	bl GXSetDispCopyYScale
/* 800AA4AC 000A53AC  48 05 0E 45 */	bl VIWaitForRetrace
/* 800AA4B0 000A53B0  48 05 0E 41 */	bl VIWaitForRetrace
lbl_800AA4B4:
/* 800AA4B4 000A53B4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 800AA4B8 000A53B8  7F C3 F3 78 */	mr r3, r30
/* 800AA4BC 000A53BC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800AA4C0 000A53C0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800AA4C4 000A53C4  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 800AA4C8 000A53C8  83 81 00 08 */	lwz r28, 8(r1)
/* 800AA4CC 000A53CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AA4D0 000A53D0  7C 08 03 A6 */	mtlr r0
/* 800AA4D4 000A53D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800AA4D8 000A53D8  4E 80 00 20 */	blr 

.global getTickPerVRetrace__Q23EGG5VideoFUl
getTickPerVRetrace__Q23EGG5VideoFUl:
/* 800AA4DC 000A53DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AA4E0 000A53E0  7C 08 02 A6 */	mflr r0
/* 800AA4E4 000A53E4  2C 03 00 03 */	cmpwi r3, 3
/* 800AA4E8 000A53E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA4EC 000A53EC  40 80 00 14 */	bge lbl_800AA500
/* 800AA4F0 000A53F0  2C 03 00 00 */	cmpwi r3, 0
/* 800AA4F4 000A53F4  41 82 00 10 */	beq lbl_800AA504
/* 800AA4F8 000A53F8  40 80 00 14 */	bge lbl_800AA50C
/* 800AA4FC 000A53FC  48 00 00 08 */	b lbl_800AA504
lbl_800AA500:
/* 800AA500 000A5400  2C 03 00 05 */	cmpwi r3, 5
lbl_800AA504:
/* 800AA504 000A5404  C0 42 90 38 */	lfs f2, lbl_804C0A58-_SDA2_BASE_(r2)
/* 800AA508 000A5408  48 00 00 08 */	b lbl_800AA510
lbl_800AA50C:
/* 800AA50C 000A540C  C0 42 90 3C */	lfs f2, lbl_804C0A5C-_SDA2_BASE_(r2)
lbl_800AA510:
/* 800AA510 000A5410  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 800AA514 000A5414  3C 00 43 30 */	lis r0, 0x4330
/* 800AA518 000A5418  80 63 00 F8 */	lwz r3, 0x800000F8@l(r3)
/* 800AA51C 000A541C  90 01 00 08 */	stw r0, 8(r1)
/* 800AA520 000A5420  54 60 F0 BE */	srwi r0, r3, 2
/* 800AA524 000A5424  C8 22 90 30 */	lfd f1, lbl_804C0A50-_SDA2_BASE_(r2)
/* 800AA528 000A5428  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AA52C 000A542C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AA530 000A5430  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AA534 000A5434  EC 20 10 24 */	fdivs f1, f0, f2
/* 800AA538 000A5438  48 00 76 E5 */	bl __cvt_fp2unsigned
/* 800AA53C 000A543C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AA540 000A5440  7C 08 03 A6 */	mtlr r0
/* 800AA544 000A5444  38 21 00 10 */	addi r1, r1, 0x10
/* 800AA548 000A5448  4E 80 00 20 */	blr 

.global getTickPerVRetrace__Q23EGG5VideoFv
getTickPerVRetrace__Q23EGG5VideoFv:
/* 800AA54C 000A544C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AA550 000A5450  7C 08 02 A6 */	mflr r0
/* 800AA554 000A5454  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA558 000A5458  48 05 1F B5 */	bl VIGetTvFormat
/* 800AA55C 000A545C  2C 03 00 03 */	cmpwi r3, 3
/* 800AA560 000A5460  40 80 00 14 */	bge lbl_800AA574
/* 800AA564 000A5464  2C 03 00 00 */	cmpwi r3, 0
/* 800AA568 000A5468  41 82 00 10 */	beq lbl_800AA578
/* 800AA56C 000A546C  40 80 00 14 */	bge lbl_800AA580
/* 800AA570 000A5470  48 00 00 08 */	b lbl_800AA578
lbl_800AA574:
/* 800AA574 000A5474  2C 03 00 05 */	cmpwi r3, 5
lbl_800AA578:
/* 800AA578 000A5478  C0 42 90 38 */	lfs f2, lbl_804C0A58-_SDA2_BASE_(r2)
/* 800AA57C 000A547C  48 00 00 08 */	b lbl_800AA584
lbl_800AA580:
/* 800AA580 000A5480  C0 42 90 3C */	lfs f2, lbl_804C0A5C-_SDA2_BASE_(r2)
lbl_800AA584:
/* 800AA584 000A5484  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 800AA588 000A5488  3C 00 43 30 */	lis r0, 0x4330
/* 800AA58C 000A548C  80 63 00 F8 */	lwz r3, 0x800000F8@l(r3)
/* 800AA590 000A5490  90 01 00 08 */	stw r0, 8(r1)
/* 800AA594 000A5494  54 60 F0 BE */	srwi r0, r3, 2
/* 800AA598 000A5498  C8 22 90 30 */	lfd f1, lbl_804C0A50-_SDA2_BASE_(r2)
/* 800AA59C 000A549C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AA5A0 000A54A0  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AA5A4 000A54A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AA5A8 000A54A8  EC 20 10 24 */	fdivs f1, f0, f2
/* 800AA5AC 000A54AC  48 00 76 71 */	bl __cvt_fp2unsigned
/* 800AA5B0 000A54B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AA5B4 000A54B4  7C 08 03 A6 */	mtlr r0
/* 800AA5B8 000A54B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800AA5BC 000A54BC  4E 80 00 20 */	blr 

.global getStandardRenderModeObj__Q23EGG5VideoFv
getStandardRenderModeObj__Q23EGG5VideoFv:
/* 800AA5C0 000A54C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AA5C4 000A54C4  7C 08 02 A6 */	mflr r0
/* 800AA5C8 000A54C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800AA5CC 000A54CC  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800AA5D0 000A54D0  3F E0 80 38 */	lis r31, gRMO_Ntsc_640x456IntDf_4x3__22$$2unnamed$$2eggVideo_cpp$$2@ha
/* 800AA5D4 000A54D4  3B FF A8 A8 */	addi r31, r31, gRMO_Ntsc_640x456IntDf_4x3__22$$2unnamed$$2eggVideo_cpp$$2@l
/* 800AA5D8 000A54D8  48 04 E5 25 */	bl SCGetProgressiveMode
/* 800AA5DC 000A54DC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800AA5E0 000A54E0  38 03 FF FF */	addi r0, r3, -1
/* 800AA5E4 000A54E4  7C 00 00 34 */	cntlzw r0, r0
/* 800AA5E8 000A54E8  54 1E D9 7E */	srwi r30, r0, 5
/* 800AA5EC 000A54EC  48 04 E4 45 */	bl SCGetEuRgb60Mode
/* 800AA5F0 000A54F0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800AA5F4 000A54F4  38 03 FF FF */	addi r0, r3, -1
/* 800AA5F8 000A54F8  7C 00 00 34 */	cntlzw r0, r0
/* 800AA5FC 000A54FC  54 1D D9 7E */	srwi r29, r0, 5
/* 800AA600 000A5500  48 04 E3 69 */	bl SCGetAspectRatio
/* 800AA604 000A5504  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800AA608 000A5508  7C 00 00 34 */	cntlzw r0, r0
/* 800AA60C 000A550C  54 1C D9 7E */	srwi r28, r0, 5
/* 800AA610 000A5510  48 05 1F BD */	bl VIGetDTVStatus
/* 800AA614 000A5514  38 03 FF FF */	addi r0, r3, -1
/* 800AA618 000A5518  7C 00 00 34 */	cntlzw r0, r0
/* 800AA61C 000A551C  54 1B D9 7E */	srwi r27, r0, 5
/* 800AA620 000A5520  48 05 1E ED */	bl VIGetTvFormat
/* 800AA624 000A5524  2C 03 00 01 */	cmpwi r3, 1
/* 800AA628 000A5528  41 82 00 28 */	beq lbl_800AA650
/* 800AA62C 000A552C  40 80 00 10 */	bge lbl_800AA63C
/* 800AA630 000A5530  2C 03 00 00 */	cmpwi r3, 0
/* 800AA634 000A5534  40 80 00 14 */	bge lbl_800AA648
/* 800AA638 000A5538  48 00 00 20 */	b lbl_800AA658
lbl_800AA63C:
/* 800AA63C 000A553C  2C 03 00 05 */	cmpwi r3, 5
/* 800AA640 000A5540  41 82 00 10 */	beq lbl_800AA650
/* 800AA644 000A5544  48 00 00 14 */	b lbl_800AA658
lbl_800AA648:
/* 800AA648 000A5548  38 00 00 01 */	li r0, 1
/* 800AA64C 000A554C  48 00 00 10 */	b lbl_800AA65C
lbl_800AA650:
/* 800AA650 000A5550  38 00 00 00 */	li r0, 0
/* 800AA654 000A5554  48 00 00 08 */	b lbl_800AA65C
lbl_800AA658:
/* 800AA658 000A5558  38 00 00 01 */	li r0, 1
lbl_800AA65C:
/* 800AA65C 000A555C  2C 1B 00 00 */	cmpwi r27, 0
/* 800AA660 000A5560  41 82 00 44 */	beq lbl_800AA6A4
/* 800AA664 000A5564  2C 1E 00 00 */	cmpwi r30, 0
/* 800AA668 000A5568  41 82 00 3C */	beq lbl_800AA6A4
/* 800AA66C 000A556C  2C 00 00 00 */	cmpwi r0, 0
/* 800AA670 000A5570  41 82 00 1C */	beq lbl_800AA68C
/* 800AA674 000A5574  2C 1C 00 00 */	cmpwi r28, 0
/* 800AA678 000A5578  41 82 00 0C */	beq lbl_800AA684
/* 800AA67C 000A557C  38 7F 00 3C */	addi r3, r31, 0x3c
/* 800AA680 000A5580  48 00 00 74 */	b lbl_800AA6F4
lbl_800AA684:
/* 800AA684 000A5584  38 7F 01 68 */	addi r3, r31, 0x168
/* 800AA688 000A5588  48 00 00 6C */	b lbl_800AA6F4
lbl_800AA68C:
/* 800AA68C 000A558C  2C 1C 00 00 */	cmpwi r28, 0
/* 800AA690 000A5590  41 82 00 0C */	beq lbl_800AA69C
/* 800AA694 000A5594  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 800AA698 000A5598  48 00 00 5C */	b lbl_800AA6F4
lbl_800AA69C:
/* 800AA69C 000A559C  38 7F 02 1C */	addi r3, r31, 0x21c
/* 800AA6A0 000A55A0  48 00 00 54 */	b lbl_800AA6F4
lbl_800AA6A4:
/* 800AA6A4 000A55A4  2C 00 00 00 */	cmpwi r0, 0
/* 800AA6A8 000A55A8  41 82 00 1C */	beq lbl_800AA6C4
/* 800AA6AC 000A55AC  2C 1C 00 00 */	cmpwi r28, 0
/* 800AA6B0 000A55B0  41 82 00 0C */	beq lbl_800AA6BC
/* 800AA6B4 000A55B4  38 7F 00 00 */	addi r3, r31, 0
/* 800AA6B8 000A55B8  48 00 00 3C */	b lbl_800AA6F4
lbl_800AA6BC:
/* 800AA6BC 000A55BC  38 7F 01 2C */	addi r3, r31, 0x12c
/* 800AA6C0 000A55C0  48 00 00 34 */	b lbl_800AA6F4
lbl_800AA6C4:
/* 800AA6C4 000A55C4  2C 1D 00 00 */	cmpwi r29, 0
/* 800AA6C8 000A55C8  41 82 00 1C */	beq lbl_800AA6E4
/* 800AA6CC 000A55CC  2C 1C 00 00 */	cmpwi r28, 0
/* 800AA6D0 000A55D0  41 82 00 0C */	beq lbl_800AA6DC
/* 800AA6D4 000A55D4  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 800AA6D8 000A55D8  48 00 00 1C */	b lbl_800AA6F4
lbl_800AA6DC:
/* 800AA6DC 000A55DC  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 800AA6E0 000A55E0  48 00 00 14 */	b lbl_800AA6F4
lbl_800AA6E4:
/* 800AA6E4 000A55E4  2C 1C 00 00 */	cmpwi r28, 0
/* 800AA6E8 000A55E8  38 7F 01 A4 */	addi r3, r31, 0x1a4
/* 800AA6EC 000A55EC  41 82 00 08 */	beq lbl_800AA6F4
/* 800AA6F0 000A55F0  38 7F 00 78 */	addi r3, r31, 0x78
lbl_800AA6F4:
/* 800AA6F4 000A55F4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800AA6F8 000A55F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AA6FC 000A55FC  7C 08 03 A6 */	mtlr r0
/* 800AA700 000A5600  38 21 00 20 */	addi r1, r1, 0x20
/* 800AA704 000A5604  4E 80 00 20 */	blr 
