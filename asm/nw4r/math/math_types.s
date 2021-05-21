.include "macros.inc"

.section .sdata2, "a"  # 0x804BFA20 - 0x804C69E0

.balign 0x8

lbl_804BFEF0: .single 0e0
lbl_804BFEF4: .single 0e1
lbl_804BFEF8: .single 0e0.024543693

.section .text, "ax"  # 0x800076E0 - 0x80355080 

.global VEC3Maximize__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3
VEC3Maximize__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3:
/* 8002FCDC 0002ABDC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8002FCE0 0002ABE0  C0 25 00 00 */	lfs f1, 0(r5)
/* 8002FCE4 0002ABE4  EC 40 08 28 */	fsubs f2, f0, f1
/* 8002FCE8 0002ABE8  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 8002FCEC 0002ABEC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8002FCF0 0002ABF0  C0 25 00 04 */	lfs f1, 4(r5)
/* 8002FCF4 0002ABF4  EC 40 08 28 */	fsubs f2, f0, f1
/* 8002FCF8 0002ABF8  D0 63 00 00 */	stfs f3, 0(r3)
/* 8002FCFC 0002ABFC  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 8002FD00 0002AC00  C0 04 00 08 */	lfs f0, 8(r4)
/* 8002FD04 0002AC04  C0 25 00 08 */	lfs f1, 8(r5)
/* 8002FD08 0002AC08  EC 40 08 28 */	fsubs f2, f0, f1
/* 8002FD0C 0002AC0C  D0 63 00 04 */	stfs f3, 4(r3)
/* 8002FD10 0002AC10  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 8002FD14 0002AC14  D0 63 00 08 */	stfs f3, 8(r3)
/* 8002FD18 0002AC18  4E 80 00 20 */	blr 

.global VEC3Minimize__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3
VEC3Minimize__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3PCQ34nw4r4math4VEC3:
/* 8002FD1C 0002AC1C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8002FD20 0002AC20  C0 25 00 00 */	lfs f1, 0(r5)
/* 8002FD24 0002AC24  EC 41 00 28 */	fsubs f2, f1, f0
/* 8002FD28 0002AC28  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 8002FD2C 0002AC2C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8002FD30 0002AC30  C0 25 00 04 */	lfs f1, 4(r5)
/* 8002FD34 0002AC34  EC 41 00 28 */	fsubs f2, f1, f0
/* 8002FD38 0002AC38  D0 63 00 00 */	stfs f3, 0(r3)
/* 8002FD3C 0002AC3C  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 8002FD40 0002AC40  C0 04 00 08 */	lfs f0, 8(r4)
/* 8002FD44 0002AC44  C0 25 00 08 */	lfs f1, 8(r5)
/* 8002FD48 0002AC48  EC 41 00 28 */	fsubs f2, f1, f0
/* 8002FD4C 0002AC4C  D0 63 00 04 */	stfs f3, 4(r3)
/* 8002FD50 0002AC50  FC 62 08 2E */	fsel f3, f2, f0, f1
/* 8002FD54 0002AC54  D0 63 00 08 */	stfs f3, 8(r3)
/* 8002FD58 0002AC58  4E 80 00 20 */	blr 

.global MTX33Identity__Q24nw4r4mathFPQ34nw4r4math5MTX33
MTX33Identity__Q24nw4r4mathFPQ34nw4r4math5MTX33:
/* 8002FD5C 0002AC5C  C0 02 84 D0 */	lfs f0, lbl_804BFEF0-_SDA2_BASE_(r2)
/* 8002FD60 0002AC60  C0 22 84 D4 */	lfs f1, lbl_804BFEF4-_SDA2_BASE_(r2)
/* 8002FD64 0002AC64  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 8002FD68 0002AC68  10 41 04 20 */	ps_merge00 f2, f1, f0
/* 8002FD6C 0002AC6C  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8002FD70 0002AC70  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 8002FD74 0002AC74  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 8002FD78 0002AC78  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8002FD7C 0002AC7C  4E 80 00 20 */	blr 

.global MTX34ToMTX33__Q24nw4r4mathFPQ34nw4r4math5MTX33PCQ34nw4r4math5MTX34
MTX34ToMTX33__Q24nw4r4mathFPQ34nw4r4math5MTX33PCQ34nw4r4math5MTX34:
/* 8002FD80 0002AC80  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 8002FD84 0002AC84  E0 24 00 08 */	psq_l f1, 8(r4), 0, qr0
/* 8002FD88 0002AC88  E0 44 00 10 */	psq_l f2, 16(r4), 0, qr0
/* 8002FD8C 0002AC8C  E0 64 00 18 */	psq_l f3, 24(r4), 0, qr0
/* 8002FD90 0002AC90  E0 84 00 20 */	psq_l f4, 32(r4), 0, qr0
/* 8002FD94 0002AC94  E0 A4 00 28 */	psq_l f5, 40(r4), 0, qr0
/* 8002FD98 0002AC98  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 8002FD9C 0002AC9C  F0 23 80 08 */	psq_st f1, 8(r3), 1, qr0
/* 8002FDA0 0002ACA0  F0 43 00 0C */	psq_st f2, 12(r3), 0, qr0
/* 8002FDA4 0002ACA4  F0 63 80 14 */	psq_st f3, 20(r3), 1, qr0
/* 8002FDA8 0002ACA8  F0 83 00 18 */	psq_st f4, 24(r3), 0, qr0
/* 8002FDAC 0002ACAC  F0 A3 80 20 */	psq_st f5, 32(r3), 1, qr0
/* 8002FDB0 0002ACB0  4E 80 00 20 */	blr 

.global MTX34InvTranspose__Q24nw4r4mathFPQ34nw4r4math5MTX33PCQ34nw4r4math5MTX34
MTX34InvTranspose__Q24nw4r4mathFPQ34nw4r4math5MTX33PCQ34nw4r4math5MTX34:
/* 8002FDB4 0002ACB4  E0 04 80 00 */	psq_l f0, 0(r4), 1, qr0
/* 8002FDB8 0002ACB8  E0 24 00 04 */	psq_l f1, 4(r4), 0, qr0
/* 8002FDBC 0002ACBC  E0 44 80 10 */	psq_l f2, 16(r4), 1, qr0
/* 8002FDC0 0002ACC0  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 8002FDC4 0002ACC4  E0 64 00 14 */	psq_l f3, 20(r4), 0, qr0
/* 8002FDC8 0002ACC8  E0 84 80 20 */	psq_l f4, 32(r4), 1, qr0
/* 8002FDCC 0002ACCC  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 8002FDD0 0002ACD0  E0 A4 00 24 */	psq_l f5, 36(r4), 0, qr0
/* 8002FDD4 0002ACD4  11 63 01 B2 */	ps_mul f11, f3, f6
/* 8002FDD8 0002ACD8  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 8002FDDC 0002ACDC  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 8002FDE0 0002ACE0  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 8002FDE4 0002ACE4  11 81 02 32 */	ps_mul f12, f1, f8
/* 8002FDE8 0002ACE8  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 8002FDEC 0002ACEC  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 8002FDF0 0002ACF0  11 43 01 32 */	ps_mul f10, f3, f4
/* 8002FDF4 0002ACF4  11 20 01 72 */	ps_mul f9, f0, f5
/* 8002FDF8 0002ACF8  11 01 00 B2 */	ps_mul f8, f1, f2
/* 8002FDFC 0002ACFC  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 8002FE00 0002AD00  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 8002FE04 0002AD04  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 8002FE08 0002AD08  10 E0 03 72 */	ps_mul f7, f0, f13
/* 8002FE0C 0002AD0C  10 21 08 28 */	ps_sub f1, f1, f1
/* 8002FE10 0002AD10  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 8002FE14 0002AD14  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 8002FE18 0002AD18  10 07 08 40 */	ps_cmpo0 cr0, f7, f1
/* 8002FE1C 0002AD1C  40 82 00 0C */	bne lbl_8002FE28
/* 8002FE20 0002AD20  38 60 00 00 */	li r3, 0
/* 8002FE24 0002AD24  4E 80 00 20 */	blr 
lbl_8002FE28:
/* 8002FE28 0002AD28  EC 00 38 30 */	fres f0, f7
/* 8002FE2C 0002AD2C  10 C0 00 2A */	ps_add f6, f0, f0
/* 8002FE30 0002AD30  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8002FE34 0002AD34  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8002FE38 0002AD38  10 C0 00 2A */	ps_add f6, f0, f0
/* 8002FE3C 0002AD3C  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8002FE40 0002AD40  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8002FE44 0002AD44  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 8002FE48 0002AD48  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 8002FE4C 0002AD4C  F1 A3 00 00 */	psq_st f13, 0(r3), 0, qr0
/* 8002FE50 0002AD50  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 8002FE54 0002AD54  F1 83 00 0C */	psq_st f12, 12(r3), 0, qr0
/* 8002FE58 0002AD58  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 8002FE5C 0002AD5C  F1 63 00 18 */	psq_st f11, 24(r3), 0, qr0
/* 8002FE60 0002AD60  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 8002FE64 0002AD64  F1 43 80 08 */	psq_st f10, 8(r3), 1, qr0
/* 8002FE68 0002AD68  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 8002FE6C 0002AD6C  F1 23 80 14 */	psq_st f9, 20(r3), 1, qr0
/* 8002FE70 0002AD70  F1 03 80 20 */	psq_st f8, 32(r3), 1, qr0
/* 8002FE74 0002AD74  38 60 00 01 */	li r3, 1
/* 8002FE78 0002AD78  4E 80 00 20 */	blr 

.global MTX34Zero__Q24nw4r4mathFPQ34nw4r4math5MTX34
MTX34Zero__Q24nw4r4mathFPQ34nw4r4math5MTX34:
/* 8002FE7C 0002AD7C  C0 02 84 D0 */	lfs f0, lbl_804BFEF0-_SDA2_BASE_(r2)
/* 8002FE80 0002AD80  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 8002FE84 0002AD84  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 8002FE88 0002AD88  F0 03 00 10 */	psq_st f0, 16(r3), 0, qr0
/* 8002FE8C 0002AD8C  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8002FE90 0002AD90  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8002FE94 0002AD94  F0 03 00 28 */	psq_st f0, 40(r3), 0, qr0
/* 8002FE98 0002AD98  4E 80 00 20 */	blr 

.global MTX34Scale__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
MTX34Scale__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3:
/* 8002FE9C 0002AD9C  E0 05 00 00 */	psq_l f0, 0(r5), 0, qr0
/* 8002FEA0 0002ADA0  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 8002FEA4 0002ADA4  E0 84 00 10 */	psq_l f4, 16(r4), 0, qr0
/* 8002FEA8 0002ADA8  E0 A4 00 20 */	psq_l f5, 32(r4), 0, qr0
/* 8002FEAC 0002ADAC  10 42 00 32 */	ps_mul f2, f2, f0
/* 8002FEB0 0002ADB0  10 84 00 32 */	ps_mul f4, f4, f0
/* 8002FEB4 0002ADB4  E0 25 80 08 */	psq_l f1, 8(r5), 1, qr0
/* 8002FEB8 0002ADB8  10 A5 00 32 */	ps_mul f5, f5, f0
/* 8002FEBC 0002ADBC  E0 64 00 08 */	psq_l f3, 8(r4), 0, qr0
/* 8002FEC0 0002ADC0  E0 04 00 18 */	psq_l f0, 24(r4), 0, qr0
/* 8002FEC4 0002ADC4  E0 C4 00 28 */	psq_l f6, 40(r4), 0, qr0
/* 8002FEC8 0002ADC8  10 63 00 72 */	ps_mul f3, f3, f1
/* 8002FECC 0002ADCC  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 8002FED0 0002ADD0  10 00 00 72 */	ps_mul f0, f0, f1
/* 8002FED4 0002ADD4  10 C6 00 72 */	ps_mul f6, f6, f1
/* 8002FED8 0002ADD8  F0 83 00 10 */	psq_st f4, 16(r3), 0, qr0
/* 8002FEDC 0002ADDC  F0 63 00 08 */	psq_st f3, 8(r3), 0, qr0
/* 8002FEE0 0002ADE0  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 8002FEE4 0002ADE4  F0 A3 00 20 */	psq_st f5, 32(r3), 0, qr0
/* 8002FEE8 0002ADE8  F0 C3 00 28 */	psq_st f6, 40(r3), 0, qr0
/* 8002FEEC 0002ADEC  4E 80 00 20 */	blr 

.global MTX34Trans__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
MTX34Trans__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3:
/* 8002FEF0 0002ADF0  E0 44 00 00 */	psq_l f2, 0(r4), 0, qr0
/* 8002FEF4 0002ADF4  E0 05 00 00 */	psq_l f0, 0(r5), 0, qr0
/* 8002FEF8 0002ADF8  E0 64 00 08 */	psq_l f3, 8(r4), 0, qr0
/* 8002FEFC 0002ADFC  E0 84 00 10 */	psq_l f4, 16(r4), 0, qr0
/* 8002FF00 0002AE00  11 02 00 32 */	ps_mul f8, f2, f0
/* 8002FF04 0002AE04  E0 25 80 08 */	psq_l f1, 8(r5), 1, qr0
/* 8002FF08 0002AE08  E0 A4 00 18 */	psq_l f5, 24(r4), 0, qr0
/* 8002FF0C 0002AE0C  11 23 40 7A */	ps_madd f9, f3, f1, f8
/* 8002FF10 0002AE10  E0 C4 00 20 */	psq_l f6, 32(r4), 0, qr0
/* 8002FF14 0002AE14  11 04 00 32 */	ps_mul f8, f4, f0
/* 8002FF18 0002AE18  E0 E4 00 28 */	psq_l f7, 40(r4), 0, qr0
/* 8002FF1C 0002AE1C  F0 63 00 08 */	psq_st f3, 8(r3), 0, qr0
/* 8002FF20 0002AE20  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 8002FF24 0002AE24  11 25 40 7A */	ps_madd f9, f5, f1, f8
/* 8002FF28 0002AE28  F0 A3 00 18 */	psq_st f5, 24(r3), 0, qr0
/* 8002FF2C 0002AE2C  11 06 00 32 */	ps_mul f8, f6, f0
/* 8002FF30 0002AE30  F1 43 80 0C */	psq_st f10, 12(r3), 1, qr0
/* 8002FF34 0002AE34  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 8002FF38 0002AE38  11 27 40 7A */	ps_madd f9, f7, f1, f8
/* 8002FF3C 0002AE3C  F0 E3 00 28 */	psq_st f7, 40(r3), 0, qr0
/* 8002FF40 0002AE40  F1 43 80 1C */	psq_st f10, 28(r3), 1, qr0
/* 8002FF44 0002AE44  11 49 4A 94 */	ps_sum0 f10, f9, f10, f9
/* 8002FF48 0002AE48  F0 43 00 00 */	psq_st f2, 0(r3), 0, qr0
/* 8002FF4C 0002AE4C  F0 83 00 10 */	psq_st f4, 16(r3), 0, qr0
/* 8002FF50 0002AE50  F0 C3 00 20 */	psq_st f6, 32(r3), 0, qr0
/* 8002FF54 0002AE54  F1 43 80 2C */	psq_st f10, 44(r3), 1, qr0
/* 8002FF58 0002AE58  4E 80 00 20 */	blr 

.global MTX34RotAxisFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3f
MTX34RotAxisFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3f:
/* 8002FF5C 0002AE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002FF60 0002AE60  7C 08 02 A6 */	mflr r0
/* 8002FF64 0002AE64  C0 02 84 D8 */	lfs f0, lbl_804BFEF8-_SDA2_BASE_(r2)
/* 8002FF68 0002AE68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002FF6C 0002AE6C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8002FF70 0002AE70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002FF74 0002AE74  7C 7F 1B 78 */	mr r31, r3
/* 8002FF78 0002AE78  48 0B 7D 31 */	bl PSMTXRotAxisRad
/* 8002FF7C 0002AE7C  7F E3 FB 78 */	mr r3, r31
/* 8002FF80 0002AE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002FF84 0002AE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002FF88 0002AE88  7C 08 03 A6 */	mtlr r0
/* 8002FF8C 0002AE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002FF90 0002AE90  4E 80 00 20 */	blr 

.global MTX34RotXYZFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34fff
MTX34RotXYZFIdx__Q24nw4r4mathFPQ34nw4r4math5MTX34fff:
/* 8002FF94 0002AE94  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8002FF98 0002AE98  7C 08 02 A6 */	mflr r0
/* 8002FF9C 0002AE9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8002FFA0 0002AEA0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8002FFA4 0002AEA4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8002FFA8 0002AEA8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8002FFAC 0002AEAC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 8002FFB0 0002AEB0  FF C0 10 90 */	fmr f30, f2
/* 8002FFB4 0002AEB4  FF E0 18 90 */	fmr f31, f3
/* 8002FFB8 0002AEB8  38 81 00 18 */	addi r4, r1, 0x18
/* 8002FFBC 0002AEBC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8002FFC0 0002AEC0  7C 7F 1B 78 */	mr r31, r3
/* 8002FFC4 0002AEC4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8002FFC8 0002AEC8  4B FF F9 99 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 8002FFCC 0002AECC  FC 20 F0 90 */	fmr f1, f30
/* 8002FFD0 0002AED0  38 61 00 14 */	addi r3, r1, 0x14
/* 8002FFD4 0002AED4  38 81 00 10 */	addi r4, r1, 0x10
/* 8002FFD8 0002AED8  4B FF F9 89 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 8002FFDC 0002AEDC  FC 20 F8 90 */	fmr f1, f31
/* 8002FFE0 0002AEE0  38 61 00 0C */	addi r3, r1, 0xc
/* 8002FFE4 0002AEE4  38 81 00 08 */	addi r4, r1, 8
/* 8002FFE8 0002AEE8  4B FF F9 79 */	bl SinCosFIdx__Q24nw4r4mathFPfPff
/* 8002FFEC 0002AEEC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8002FFF0 0002AEF0  7F E3 FB 78 */	mr r3, r31
/* 8002FFF4 0002AEF4  C0 02 84 D0 */	lfs f0, lbl_804BFEF0-_SDA2_BASE_(r2)
/* 8002FFF8 0002AEF8  FC 20 08 50 */	fneg f1, f1
/* 8002FFFC 0002AEFC  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80030000 0002AF00  C0 41 00 08 */	lfs f2, 8(r1)
/* 80030004 0002AF04  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80030008 0002AF08  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003000C 0002AF0C  D0 3F 00 00 */	stfs f1, 0(r31)
/* 80030010 0002AF10  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80030014 0002AF14  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80030018 0002AF18  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003001C 0002AF1C  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 80030020 0002AF20  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80030024 0002AF24  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80030028 0002AF28  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003002C 0002AF2C  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 80030030 0002AF30  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80030034 0002AF34  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80030038 0002AF38  EC 22 00 72 */	fmuls f1, f2, f1
/* 8003003C 0002AF3C  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 80030040 0002AF40  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80030044 0002AF44  C0 21 00 08 */	lfs f1, 8(r1)
/* 80030048 0002AF48  C0 81 00 18 */	lfs f4, 0x18(r1)
/* 8003004C 0002AF4C  EC A2 00 72 */	fmuls f5, f2, f1
/* 80030050 0002AF50  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80030054 0002AF54  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80030058 0002AF58  EC 44 00 F2 */	fmuls f2, f4, f3
/* 8003005C 0002AF5C  EC 25 00 72 */	fmuls f1, f5, f1
/* 80030060 0002AF60  EC 21 10 28 */	fsubs f1, f1, f2
/* 80030064 0002AF64  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80030068 0002AF68  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8003006C 0002AF6C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80030070 0002AF70  EC 21 28 28 */	fsubs f1, f1, f5
/* 80030074 0002AF74  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80030078 0002AF78  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8003007C 0002AF7C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80030080 0002AF80  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 80030084 0002AF84  EC A2 00 72 */	fmuls f5, f2, f1
/* 80030088 0002AF88  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8003008C 0002AF8C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80030090 0002AF90  EC 44 00 F2 */	fmuls f2, f4, f3
/* 80030094 0002AF94  EC 25 00 72 */	fmuls f1, f5, f1
/* 80030098 0002AF98  EC 22 08 2A */	fadds f1, f2, f1
/* 8003009C 0002AF9C  D0 3F 00 08 */	stfs f1, 8(r31)
/* 800300A0 0002AFA0  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800300A4 0002AFA4  EC 22 00 72 */	fmuls f1, f2, f1
/* 800300A8 0002AFA8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 800300AC 0002AFAC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 800300B0 0002AFB0  EC 25 08 2A */	fadds f1, f5, f1
/* 800300B4 0002AFB4  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 800300B8 0002AFB8  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 800300BC 0002AFBC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 800300C0 0002AFC0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800300C4 0002AFC4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 800300C8 0002AFC8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800300CC 0002AFCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800300D0 0002AFD0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800300D4 0002AFD4  7C 08 03 A6 */	mtlr r0
/* 800300D8 0002AFD8  38 21 00 50 */	addi r1, r1, 0x50
/* 800300DC 0002AFDC  4E 80 00 20 */	blr 

.global VEC3TransformNormal__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3
VEC3TransformNormal__Q24nw4r4mathFPQ34nw4r4math4VEC3PCQ34nw4r4math5MTX34PCQ34nw4r4math4VEC3:
/* 800300E0 0002AFE0  C0 64 00 00 */	lfs f3, 0(r4)
/* 800300E4 0002AFE4  C0 45 00 00 */	lfs f2, 0(r5)
/* 800300E8 0002AFE8  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 800300EC 0002AFEC  EC E3 00 B2 */	fmuls f7, f3, f2
/* 800300F0 0002AFF0  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 800300F4 0002AFF4  EC 81 00 B2 */	fmuls f4, f1, f2
/* 800300F8 0002AFF8  C0 64 00 04 */	lfs f3, 4(r4)
/* 800300FC 0002AFFC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80030100 0002B000  C0 A5 00 04 */	lfs f5, 4(r5)
/* 80030104 0002B004  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80030108 0002B008  EC C3 01 72 */	fmuls f6, f3, f5
/* 8003010C 0002B00C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 80030110 0002B010  EC 00 01 72 */	fmuls f0, f0, f5
/* 80030114 0002B014  C1 04 00 08 */	lfs f8, 8(r4)
/* 80030118 0002B018  EC 62 01 72 */	fmuls f3, f2, f5
/* 8003011C 0002B01C  C1 25 00 08 */	lfs f9, 8(r5)
/* 80030120 0002B020  C0 A4 00 18 */	lfs f5, 0x18(r4)
/* 80030124 0002B024  EC C7 30 2A */	fadds f6, f7, f6
/* 80030128 0002B028  C0 44 00 28 */	lfs f2, 0x28(r4)
/* 8003012C 0002B02C  ED 08 02 72 */	fmuls f8, f8, f9
/* 80030130 0002B030  EC 64 18 2A */	fadds f3, f4, f3
/* 80030134 0002B034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80030138 0002B038  EC A5 02 72 */	fmuls f5, f5, f9
/* 8003013C 0002B03C  EC 88 30 2A */	fadds f4, f8, f6
/* 80030140 0002B040  EC 42 02 72 */	fmuls f2, f2, f9
/* 80030144 0002B044  EC 65 18 2A */	fadds f3, f5, f3
/* 80030148 0002B048  EC 01 00 2A */	fadds f0, f1, f0
/* 8003014C 0002B04C  D0 81 00 08 */	stfs f4, 8(r1)
/* 80030150 0002B050  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80030154 0002B054  EC 02 00 2A */	fadds f0, f2, f0
/* 80030158 0002B058  D0 83 00 00 */	stfs f4, 0(r3)
/* 8003015C 0002B05C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80030160 0002B060  D0 63 00 04 */	stfs f3, 4(r3)
/* 80030164 0002B064  D0 03 00 08 */	stfs f0, 8(r3)
/* 80030168 0002B068  38 21 00 20 */	addi r1, r1, 0x20
/* 8003016C 0002B06C  4E 80 00 20 */	blr 

.global MTX44Identity__Q24nw4r4mathFPQ34nw4r4math5MTX44
MTX44Identity__Q24nw4r4mathFPQ34nw4r4math5MTX44:
/* 80030170 0002B070  C0 02 84 D0 */	lfs f0, lbl_804BFEF0-_SDA2_BASE_(r2)
/* 80030174 0002B074  C0 22 84 D4 */	lfs f1, lbl_804BFEF4-_SDA2_BASE_(r2)
/* 80030178 0002B078  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 8003017C 0002B07C  10 40 0C 60 */	ps_merge01 f2, f0, f1
/* 80030180 0002B080  10 21 04 A0 */	ps_merge10 f1, f1, f0
/* 80030184 0002B084  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 80030188 0002B088  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8003018C 0002B08C  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 80030190 0002B090  F0 23 00 00 */	psq_st f1, 0(r3), 0, qr0
/* 80030194 0002B094  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 80030198 0002B098  F0 03 00 30 */	psq_st f0, 48(r3), 0, qr0
/* 8003019C 0002B09C  F0 43 00 38 */	psq_st f2, 56(r3), 0, qr0
/* 800301A0 0002B0A0  4E 80 00 20 */	blr 

.global MTX44Copy__Q24nw4r4mathFPQ34nw4r4math5MTX44PCQ34nw4r4math5MTX44
MTX44Copy__Q24nw4r4mathFPQ34nw4r4math5MTX44PCQ34nw4r4math5MTX44:
/* 800301A4 0002B0A4  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 800301A8 0002B0A8  E0 24 00 08 */	psq_l f1, 8(r4), 0, qr0
/* 800301AC 0002B0AC  E0 44 00 10 */	psq_l f2, 16(r4), 0, qr0
/* 800301B0 0002B0B0  E0 64 00 18 */	psq_l f3, 24(r4), 0, qr0
/* 800301B4 0002B0B4  E0 84 00 20 */	psq_l f4, 32(r4), 0, qr0
/* 800301B8 0002B0B8  E0 A4 00 28 */	psq_l f5, 40(r4), 0, qr0
/* 800301BC 0002B0BC  E0 C4 00 30 */	psq_l f6, 48(r4), 0, qr0
/* 800301C0 0002B0C0  E0 E4 00 38 */	psq_l f7, 56(r4), 0, qr0
/* 800301C4 0002B0C4  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 800301C8 0002B0C8  F0 23 00 08 */	psq_st f1, 8(r3), 0, qr0
/* 800301CC 0002B0CC  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 800301D0 0002B0D0  F0 63 00 18 */	psq_st f3, 24(r3), 0, qr0
/* 800301D4 0002B0D4  F0 83 00 20 */	psq_st f4, 32(r3), 0, qr0
/* 800301D8 0002B0D8  F0 A3 00 28 */	psq_st f5, 40(r3), 0, qr0
/* 800301DC 0002B0DC  F0 C3 00 30 */	psq_st f6, 48(r3), 0, qr0
/* 800301E0 0002B0E0  F0 E3 00 38 */	psq_st f7, 56(r3), 0, qr0
/* 800301E4 0002B0E4  4E 80 00 20 */	blr 
