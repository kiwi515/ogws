.include "macros.inc"

.section .text, "ax"  # 0x800076E0 - 0x80355080 

.global __ct__Q44nw4r3snd6detail13WsdFileReaderFPCv
__ct__Q44nw4r3snd6detail13WsdFileReaderFPCv:
/* 8004F270 0004A170  80 A4 00 00 */	lwz r5, 0(r4)
/* 8004F274 0004A174  38 C0 00 00 */	li r6, 0
/* 8004F278 0004A178  90 C3 00 00 */	stw r6, 0(r3)
/* 8004F27C 0004A17C  3C 05 AD A9 */	addis r0, r5, 0xada9
/* 8004F280 0004A180  28 00 53 44 */	cmplwi r0, 0x5344
/* 8004F284 0004A184  90 C3 00 04 */	stw r6, 4(r3)
/* 8004F288 0004A188  90 C3 00 08 */	stw r6, 8(r3)
/* 8004F28C 0004A18C  41 82 00 0C */	beq lbl_8004F298
/* 8004F290 0004A190  38 00 00 00 */	li r0, 0
/* 8004F294 0004A194  48 00 00 30 */	b lbl_8004F2C4
lbl_8004F298:
/* 8004F298 0004A198  A0 C4 00 06 */	lhz r6, 6(r4)
/* 8004F29C 0004A19C  28 06 01 00 */	cmplwi r6, 0x100
/* 8004F2A0 0004A1A0  40 80 00 0C */	bge lbl_8004F2AC
/* 8004F2A4 0004A1A4  38 00 00 00 */	li r0, 0
/* 8004F2A8 0004A1A8  48 00 00 1C */	b lbl_8004F2C4
lbl_8004F2AC:
/* 8004F2AC 0004A1AC  20 06 01 02 */	subfic r0, r6, 0x102
/* 8004F2B0 0004A1B0  38 A0 01 02 */	li r5, 0x102
/* 8004F2B4 0004A1B4  7C A5 33 38 */	orc r5, r5, r6
/* 8004F2B8 0004A1B8  54 00 F8 7E */	srwi r0, r0, 1
/* 8004F2BC 0004A1BC  7C 00 28 50 */	subf r0, r0, r5
/* 8004F2C0 0004A1C0  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_8004F2C4:
/* 8004F2C4 0004A1C4  2C 00 00 00 */	cmpwi r0, 0
/* 8004F2C8 0004A1C8  4D 82 00 20 */	beqlr 
/* 8004F2CC 0004A1CC  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8004F2D0 0004A1D0  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8004F2D4 0004A1D4  7C A5 22 14 */	add r5, r5, r4
/* 8004F2D8 0004A1D8  90 83 00 00 */	stw r4, 0(r3)
/* 8004F2DC 0004A1DC  7C 00 22 14 */	add r0, r0, r4
/* 8004F2E0 0004A1E0  90 A3 00 04 */	stw r5, 4(r3)
/* 8004F2E4 0004A1E4  90 03 00 08 */	stw r0, 8(r3)
/* 8004F2E8 0004A1E8  4E 80 00 20 */	blr 

.global ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi
ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi:
/* 8004F2EC 0004A1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004F2F0 0004A1F0  7C 08 02 A6 */	mflr r0
/* 8004F2F4 0004A1F4  80 C3 00 04 */	lwz r6, 4(r3)
/* 8004F2F8 0004A1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004F2FC 0004A1FC  54 A0 18 38 */	slwi r0, r5, 3
/* 8004F300 0004A200  38 A6 00 08 */	addi r5, r6, 8
/* 8004F304 0004A204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004F308 0004A208  7C 9F 23 78 */	mr r31, r4
/* 8004F30C 0004A20C  7C 86 02 14 */	add r4, r6, r0
/* 8004F310 0004A210  93 C1 00 08 */	stw r30, 8(r1)
/* 8004F314 0004A214  7C 7E 1B 78 */	mr r30, r3
/* 8004F318 0004A218  88 64 00 0C */	lbz r3, 0xc(r4)
/* 8004F31C 0004A21C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8004F320 0004A220  4B FF F9 5D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8004F324 0004A224  7C 64 1B 78 */	mr r4, r3
/* 8004F328 0004A228  80 BE 00 04 */	lwz r5, 4(r30)
/* 8004F32C 0004A22C  88 63 00 00 */	lbz r3, 0(r3)
/* 8004F330 0004A230  80 84 00 04 */	lwz r4, 4(r4)
/* 8004F334 0004A234  38 A5 00 08 */	addi r5, r5, 8
/* 8004F338 0004A238  4B FF F9 45 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8004F33C 0004A23C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8004F340 0004A240  A0 04 00 06 */	lhz r0, 6(r4)
/* 8004F344 0004A244  28 00 01 02 */	cmplwi r0, 0x102
/* 8004F348 0004A248  40 82 00 40 */	bne lbl_8004F388
/* 8004F34C 0004A24C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8004F350 0004A250  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8004F354 0004A254  88 03 00 04 */	lbz r0, 4(r3)
/* 8004F358 0004A258  98 1F 00 04 */	stb r0, 4(r31)
/* 8004F35C 0004A25C  88 03 00 05 */	lbz r0, 5(r3)
/* 8004F360 0004A260  98 1F 00 05 */	stb r0, 5(r31)
/* 8004F364 0004A264  88 03 00 06 */	lbz r0, 6(r3)
/* 8004F368 0004A268  98 1F 00 06 */	stb r0, 6(r31)
/* 8004F36C 0004A26C  88 03 00 07 */	lbz r0, 7(r3)
/* 8004F370 0004A270  98 1F 00 07 */	stb r0, 7(r31)
/* 8004F374 0004A274  88 03 00 08 */	lbz r0, 8(r3)
/* 8004F378 0004A278  98 1F 00 08 */	stb r0, 8(r31)
/* 8004F37C 0004A27C  88 03 00 09 */	lbz r0, 9(r3)
/* 8004F380 0004A280  98 1F 00 09 */	stb r0, 9(r31)
/* 8004F384 0004A284  48 00 00 6C */	b lbl_8004F3F0
lbl_8004F388:
/* 8004F388 0004A288  28 00 01 01 */	cmplwi r0, 0x101
/* 8004F38C 0004A28C  40 82 00 38 */	bne lbl_8004F3C4
/* 8004F390 0004A290  C0 03 00 00 */	lfs f0, 0(r3)
/* 8004F394 0004A294  38 80 00 00 */	li r4, 0
/* 8004F398 0004A298  38 00 00 7F */	li r0, 0x7f
/* 8004F39C 0004A29C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8004F3A0 0004A2A0  88 A3 00 04 */	lbz r5, 4(r3)
/* 8004F3A4 0004A2A4  98 BF 00 04 */	stb r5, 4(r31)
/* 8004F3A8 0004A2A8  88 63 00 05 */	lbz r3, 5(r3)
/* 8004F3AC 0004A2AC  98 7F 00 05 */	stb r3, 5(r31)
/* 8004F3B0 0004A2B0  98 9F 00 06 */	stb r4, 6(r31)
/* 8004F3B4 0004A2B4  98 9F 00 07 */	stb r4, 7(r31)
/* 8004F3B8 0004A2B8  98 9F 00 08 */	stb r4, 8(r31)
/* 8004F3BC 0004A2BC  98 1F 00 09 */	stb r0, 9(r31)
/* 8004F3C0 0004A2C0  48 00 00 30 */	b lbl_8004F3F0
lbl_8004F3C4:
/* 8004F3C4 0004A2C4  C0 02 87 88 */	lfs f0, lbl_804C01A8-_SDA2_BASE_(r2)
/* 8004F3C8 0004A2C8  38 60 00 00 */	li r3, 0
/* 8004F3CC 0004A2CC  38 80 00 40 */	li r4, 0x40
/* 8004F3D0 0004A2D0  38 00 00 7F */	li r0, 0x7f
/* 8004F3D4 0004A2D4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8004F3D8 0004A2D8  98 9F 00 04 */	stb r4, 4(r31)
/* 8004F3DC 0004A2DC  98 7F 00 05 */	stb r3, 5(r31)
/* 8004F3E0 0004A2E0  98 7F 00 06 */	stb r3, 6(r31)
/* 8004F3E4 0004A2E4  98 7F 00 07 */	stb r3, 7(r31)
/* 8004F3E8 0004A2E8  98 7F 00 08 */	stb r3, 8(r31)
/* 8004F3EC 0004A2EC  98 1F 00 09 */	stb r0, 9(r31)
lbl_8004F3F0:
/* 8004F3F0 0004A2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004F3F4 0004A2F4  38 60 00 01 */	li r3, 1
/* 8004F3F8 0004A2F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004F3FC 0004A2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004F400 0004A300  7C 08 03 A6 */	mtlr r0
/* 8004F404 0004A304  38 21 00 10 */	addi r1, r1, 0x10
/* 8004F408 0004A308  4E 80 00 20 */	blr 

.global ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii
ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii:
/* 8004F40C 0004A30C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004F410 0004A310  7C 08 02 A6 */	mflr r0
/* 8004F414 0004A314  80 E3 00 04 */	lwz r7, 4(r3)
/* 8004F418 0004A318  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004F41C 0004A31C  54 A0 18 38 */	slwi r0, r5, 3
/* 8004F420 0004A320  38 A7 00 08 */	addi r5, r7, 8
/* 8004F424 0004A324  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004F428 0004A328  7C 9F 23 78 */	mr r31, r4
/* 8004F42C 0004A32C  7C 87 02 14 */	add r4, r7, r0
/* 8004F430 0004A330  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8004F434 0004A334  7C DE 33 78 */	mr r30, r6
/* 8004F438 0004A338  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8004F43C 0004A33C  7C 7D 1B 78 */	mr r29, r3
/* 8004F440 0004A340  88 64 00 0C */	lbz r3, 0xc(r4)
/* 8004F444 0004A344  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8004F448 0004A348  4B FF F8 35 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8004F44C 0004A34C  7C 64 1B 78 */	mr r4, r3
/* 8004F450 0004A350  80 BD 00 04 */	lwz r5, 4(r29)
/* 8004F454 0004A354  88 63 00 10 */	lbz r3, 0x10(r3)
/* 8004F458 0004A358  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8004F45C 0004A35C  38 A5 00 08 */	addi r5, r5, 8
/* 8004F460 0004A360  4B FF F8 1D */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8004F464 0004A364  57 C0 18 38 */	slwi r0, r30, 3
/* 8004F468 0004A368  80 9D 00 04 */	lwz r4, 4(r29)
/* 8004F46C 0004A36C  7C C3 02 14 */	add r6, r3, r0
/* 8004F470 0004A370  38 A4 00 08 */	addi r5, r4, 8
/* 8004F474 0004A374  88 66 00 04 */	lbz r3, 4(r6)
/* 8004F478 0004A378  80 86 00 08 */	lwz r4, 8(r6)
/* 8004F47C 0004A37C  4B FF F8 01 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8004F480 0004A380  80 03 00 00 */	lwz r0, 0(r3)
/* 8004F484 0004A384  80 9D 00 00 */	lwz r4, 0(r29)
/* 8004F488 0004A388  90 1F 00 00 */	stw r0, 0(r31)
/* 8004F48C 0004A38C  88 03 00 04 */	lbz r0, 4(r3)
/* 8004F490 0004A390  98 1F 00 04 */	stb r0, 4(r31)
/* 8004F494 0004A394  88 03 00 05 */	lbz r0, 5(r3)
/* 8004F498 0004A398  98 1F 00 05 */	stb r0, 5(r31)
/* 8004F49C 0004A39C  88 03 00 06 */	lbz r0, 6(r3)
/* 8004F4A0 0004A3A0  98 1F 00 06 */	stb r0, 6(r31)
/* 8004F4A4 0004A3A4  88 03 00 07 */	lbz r0, 7(r3)
/* 8004F4A8 0004A3A8  98 1F 00 07 */	stb r0, 7(r31)
/* 8004F4AC 0004A3AC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8004F4B0 0004A3B0  98 1F 00 08 */	stb r0, 8(r31)
/* 8004F4B4 0004A3B4  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8004F4B8 0004A3B8  98 1F 00 0B */	stb r0, 0xb(r31)
/* 8004F4BC 0004A3BC  A0 04 00 06 */	lhz r0, 6(r4)
/* 8004F4C0 0004A3C0  28 00 01 01 */	cmplwi r0, 0x101
/* 8004F4C4 0004A3C4  41 80 00 20 */	blt lbl_8004F4E4
/* 8004F4C8 0004A3C8  88 03 00 0E */	lbz r0, 0xe(r3)
/* 8004F4CC 0004A3CC  98 1F 00 09 */	stb r0, 9(r31)
/* 8004F4D0 0004A3D0  88 03 00 0F */	lbz r0, 0xf(r3)
/* 8004F4D4 0004A3D4  98 1F 00 0A */	stb r0, 0xa(r31)
/* 8004F4D8 0004A3D8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8004F4DC 0004A3DC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8004F4E0 0004A3E0  48 00 00 1C */	b lbl_8004F4FC
lbl_8004F4E4:
/* 8004F4E4 0004A3E4  C0 02 87 88 */	lfs f0, lbl_804C01A8-_SDA2_BASE_(r2)
/* 8004F4E8 0004A3E8  38 60 00 40 */	li r3, 0x40
/* 8004F4EC 0004A3EC  38 00 00 00 */	li r0, 0
/* 8004F4F0 0004A3F0  98 7F 00 09 */	stb r3, 9(r31)
/* 8004F4F4 0004A3F4  98 1F 00 0A */	stb r0, 0xa(r31)
/* 8004F4F8 0004A3F8  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8004F4FC:
/* 8004F4FC 0004A3FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004F500 0004A400  38 60 00 01 */	li r3, 1
/* 8004F504 0004A404  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004F508 0004A408  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8004F50C 0004A40C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004F510 0004A410  7C 08 03 A6 */	mtlr r0
/* 8004F514 0004A414  38 21 00 20 */	addi r1, r1, 0x20
/* 8004F518 0004A418  4E 80 00 20 */	blr 

.global ReadWaveParam__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveDataPCv
ReadWaveParam__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveDataPCv:
/* 8004F51C 0004A41C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004F520 0004A420  7C 08 02 A6 */	mflr r0
/* 8004F524 0004A424  80 E3 00 00 */	lwz r7, 0(r3)
/* 8004F528 0004A428  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004F52C 0004A42C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004F530 0004A430  7C DF 33 78 */	mr r31, r6
/* 8004F534 0004A434  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8004F538 0004A438  7C BE 2B 78 */	mr r30, r5
/* 8004F53C 0004A43C  A0 07 00 06 */	lhz r0, 6(r7)
/* 8004F540 0004A440  28 00 01 00 */	cmplwi r0, 0x100
/* 8004F544 0004A444  40 82 00 1C */	bne lbl_8004F560
/* 8004F548 0004A448  80 A3 00 08 */	lwz r5, 8(r3)
/* 8004F54C 0004A44C  54 80 10 3A */	slwi r0, r4, 2
/* 8004F550 0004A450  7C 65 02 14 */	add r3, r5, r0
/* 8004F554 0004A454  80 03 00 08 */	lwz r0, 8(r3)
/* 8004F558 0004A458  7C 80 2A 14 */	add r4, r0, r5
/* 8004F55C 0004A45C  48 00 00 2C */	b lbl_8004F588
lbl_8004F560:
/* 8004F560 0004A460  80 A3 00 08 */	lwz r5, 8(r3)
/* 8004F564 0004A464  80 05 00 08 */	lwz r0, 8(r5)
/* 8004F568 0004A468  7C 04 00 40 */	cmplw r4, r0
/* 8004F56C 0004A46C  41 80 00 0C */	blt lbl_8004F578
/* 8004F570 0004A470  38 60 00 00 */	li r3, 0
/* 8004F574 0004A474  48 00 00 2C */	b lbl_8004F5A0
lbl_8004F578:
/* 8004F578 0004A478  54 80 10 3A */	slwi r0, r4, 2
/* 8004F57C 0004A47C  7C 65 02 14 */	add r3, r5, r0
/* 8004F580 0004A480  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8004F584 0004A484  7C 80 2A 14 */	add r4, r0, r5
lbl_8004F588:
/* 8004F588 0004A488  38 61 00 08 */	addi r3, r1, 8
/* 8004F58C 0004A48C  4B FF F7 15 */	bl __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile8WaveInfo
/* 8004F590 0004A490  7F C4 F3 78 */	mr r4, r30
/* 8004F594 0004A494  7F E5 FB 78 */	mr r5, r31
/* 8004F598 0004A498  38 61 00 08 */	addi r3, r1, 8
/* 8004F59C 0004A49C  4B FF F7 0D */	bl ReadWaveParam__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveDataPCv
lbl_8004F5A0:
/* 8004F5A0 0004A4A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004F5A4 0004A4A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004F5A8 0004A4A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004F5AC 0004A4AC  7C 08 03 A6 */	mtlr r0
/* 8004F5B0 0004A4B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8004F5B4 0004A4B4  4E 80 00 20 */	blr 
