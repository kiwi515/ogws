.include "macros.inc"

.section .text, "ax"
.global WUD_DEBUGPrint
WUD_DEBUGPrint:
/* 8010354C 000FE44C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80103550 000FE450  40 86 00 24 */	bne cr1, lbl_80103574
/* 80103554 000FE454  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80103558 000FE458  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8010355C 000FE45C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80103560 000FE460  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80103564 000FE464  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80103568 000FE468  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8010356C 000FE46C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80103570 000FE470  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80103574:
/* 80103574 000FE474  90 61 00 08 */	stw r3, 8(r1)
/* 80103578 000FE478  90 81 00 0C */	stw r4, 0xc(r1)
/* 8010357C 000FE47C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80103580 000FE480  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80103584 000FE484  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80103588 000FE488  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8010358C 000FE48C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80103590 000FE490  91 41 00 24 */	stw r10, 0x24(r1)
/* 80103594 000FE494  38 21 00 70 */	addi r1, r1, 0x70
/* 80103598 000FE498  4E 80 00 20 */	blr 
