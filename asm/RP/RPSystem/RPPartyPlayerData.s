.include "macros.inc"

.section .text, "ax"
.global func_8018D6D0
func_8018D6D0:
/* 8018D6D0 001885D0  90 83 00 0C */	stw r4, 0xc(r3)
/* 8018D6D4 001885D4  4E 80 00 20 */	blr 

.global func_8018D6D8
func_8018D6D8:
/* 8018D6D8 001885D8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8018D6DC 001885DC  4E 80 00 20 */	blr 

.global func_8018D6E0
func_8018D6E0:
/* 8018D6E0 001885E0  89 64 00 00 */	lbz r11, 0(r4)
/* 8018D6E4 001885E4  89 44 00 01 */	lbz r10, 1(r4)
/* 8018D6E8 001885E8  89 24 00 02 */	lbz r9, 2(r4)
/* 8018D6EC 001885EC  89 04 00 03 */	lbz r8, 3(r4)
/* 8018D6F0 001885F0  88 E4 00 04 */	lbz r7, 4(r4)
/* 8018D6F4 001885F4  88 C4 00 05 */	lbz r6, 5(r4)
/* 8018D6F8 001885F8  88 A4 00 06 */	lbz r5, 6(r4)
/* 8018D6FC 001885FC  88 04 00 07 */	lbz r0, 7(r4)
/* 8018D700 00188600  99 63 00 04 */	stb r11, 4(r3)
/* 8018D704 00188604  99 43 00 05 */	stb r10, 5(r3)
/* 8018D708 00188608  99 23 00 06 */	stb r9, 6(r3)
/* 8018D70C 0018860C  99 03 00 07 */	stb r8, 7(r3)
/* 8018D710 00188610  98 E3 00 08 */	stb r7, 8(r3)
/* 8018D714 00188614  98 C3 00 09 */	stb r6, 9(r3)
/* 8018D718 00188618  98 A3 00 0A */	stb r5, 0xa(r3)
/* 8018D71C 0018861C  98 03 00 0B */	stb r0, 0xb(r3)
/* 8018D720 00188620  4E 80 00 20 */	blr 

.global func_8018D724
func_8018D724:
/* 8018D724 00188624  89 63 00 04 */	lbz r11, 4(r3)
/* 8018D728 00188628  89 43 00 05 */	lbz r10, 5(r3)
/* 8018D72C 0018862C  89 23 00 06 */	lbz r9, 6(r3)
/* 8018D730 00188630  89 03 00 07 */	lbz r8, 7(r3)
/* 8018D734 00188634  88 E3 00 08 */	lbz r7, 8(r3)
/* 8018D738 00188638  88 C3 00 09 */	lbz r6, 9(r3)
/* 8018D73C 0018863C  88 A3 00 0A */	lbz r5, 0xa(r3)
/* 8018D740 00188640  88 03 00 0B */	lbz r0, 0xb(r3)
/* 8018D744 00188644  99 64 00 00 */	stb r11, 0(r4)
/* 8018D748 00188648  99 44 00 01 */	stb r10, 1(r4)
/* 8018D74C 0018864C  99 24 00 02 */	stb r9, 2(r4)
/* 8018D750 00188650  99 04 00 03 */	stb r8, 3(r4)
/* 8018D754 00188654  98 E4 00 04 */	stb r7, 4(r4)
/* 8018D758 00188658  98 C4 00 05 */	stb r6, 5(r4)
/* 8018D75C 0018865C  98 A4 00 06 */	stb r5, 6(r4)
/* 8018D760 00188660  98 04 00 07 */	stb r0, 7(r4)
/* 8018D764 00188664  4E 80 00 20 */	blr 

.global func_8018D768
func_8018D768:
/* 8018D768 00188668  2C 04 00 00 */	cmpwi r4, 0
/* 8018D76C 0018866C  41 82 00 14 */	beq lbl_8018D780
/* 8018D770 00188670  80 03 00 00 */	lwz r0, 0(r3)
/* 8018D774 00188674  60 00 00 02 */	ori r0, r0, 2
/* 8018D778 00188678  90 03 00 00 */	stw r0, 0(r3)
/* 8018D77C 0018867C  4E 80 00 20 */	blr 
lbl_8018D780:
/* 8018D780 00188680  80 03 00 00 */	lwz r0, 0(r3)
/* 8018D784 00188684  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8018D788 00188688  90 03 00 00 */	stw r0, 0(r3)
/* 8018D78C 0018868C  4E 80 00 20 */	blr 

.global func_8018D790
func_8018D790:
/* 8018D790 00188690  80 03 00 00 */	lwz r0, 0(r3)
/* 8018D794 00188694  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 8018D798 00188698  4E 80 00 20 */	blr 

.global func_8018D79C
func_8018D79C:
/* 8018D79C 0018869C  38 A0 00 00 */	li r5, 0
/* 8018D7A0 001886A0  38 00 00 03 */	li r0, 3
/* 8018D7A4 001886A4  7C 66 1B 78 */	mr r6, r3
/* 8018D7A8 001886A8  90 A3 00 00 */	stw r5, 0(r3)
/* 8018D7AC 001886AC  38 E0 00 00 */	li r7, 0
/* 8018D7B0 001886B0  98 A3 00 04 */	stb r5, 4(r3)
/* 8018D7B4 001886B4  98 A3 00 05 */	stb r5, 5(r3)
/* 8018D7B8 001886B8  98 A3 00 06 */	stb r5, 6(r3)
/* 8018D7BC 001886BC  98 A3 00 07 */	stb r5, 7(r3)
/* 8018D7C0 001886C0  98 A3 00 08 */	stb r5, 8(r3)
/* 8018D7C4 001886C4  98 A3 00 09 */	stb r5, 9(r3)
/* 8018D7C8 001886C8  98 A3 00 0A */	stb r5, 0xa(r3)
/* 8018D7CC 001886CC  98 A3 00 0B */	stb r5, 0xb(r3)
/* 8018D7D0 001886D0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8018D7D4 001886D4  7C 09 03 A6 */	mtctr r0
lbl_8018D7D8:
/* 8018D7D8 001886D8  90 A6 00 10 */	stw r5, 0x10(r6)
/* 8018D7DC 001886DC  7C 83 3A 14 */	add r4, r3, r7
/* 8018D7E0 001886E0  38 E7 00 01 */	addi r7, r7, 1
/* 8018D7E4 001886E4  90 A6 00 14 */	stw r5, 0x14(r6)
/* 8018D7E8 001886E8  90 A6 00 18 */	stw r5, 0x18(r6)
/* 8018D7EC 001886EC  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 8018D7F0 001886F0  90 A6 00 20 */	stw r5, 0x20(r6)
/* 8018D7F4 001886F4  98 A4 00 C4 */	stb r5, 0xc4(r4)
/* 8018D7F8 001886F8  7C 83 3A 14 */	add r4, r3, r7
/* 8018D7FC 001886FC  38 E7 00 01 */	addi r7, r7, 1
/* 8018D800 00188700  90 A6 00 24 */	stw r5, 0x24(r6)
/* 8018D804 00188704  90 A6 00 28 */	stw r5, 0x28(r6)
/* 8018D808 00188708  90 A6 00 2C */	stw r5, 0x2c(r6)
/* 8018D80C 0018870C  90 A6 00 30 */	stw r5, 0x30(r6)
/* 8018D810 00188710  90 A6 00 34 */	stw r5, 0x34(r6)
/* 8018D814 00188714  98 A4 00 C4 */	stb r5, 0xc4(r4)
/* 8018D818 00188718  7C 83 3A 14 */	add r4, r3, r7
/* 8018D81C 0018871C  38 E7 00 01 */	addi r7, r7, 1
/* 8018D820 00188720  90 A6 00 38 */	stw r5, 0x38(r6)
/* 8018D824 00188724  90 A6 00 3C */	stw r5, 0x3c(r6)
/* 8018D828 00188728  90 A6 00 40 */	stw r5, 0x40(r6)
/* 8018D82C 0018872C  90 A6 00 44 */	stw r5, 0x44(r6)
/* 8018D830 00188730  90 A6 00 48 */	stw r5, 0x48(r6)
/* 8018D834 00188734  38 C6 00 3C */	addi r6, r6, 0x3c
/* 8018D838 00188738  98 A4 00 C4 */	stb r5, 0xc4(r4)
/* 8018D83C 0018873C  42 00 FF 9C */	bdnz lbl_8018D7D8
/* 8018D840 00188740  38 00 00 00 */	li r0, 0
/* 8018D844 00188744  98 03 00 CD */	stb r0, 0xcd(r3)
/* 8018D848 00188748  4E 80 00 20 */	blr 
