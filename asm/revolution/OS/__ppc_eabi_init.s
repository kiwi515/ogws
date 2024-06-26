.include "macros.inc"

.section .init, "ax"
.global __init_hardware
__init_hardware:
/* 800063C8 000024C8  7C 00 00 A6 */	mfmsr r0
/* 800063CC 000024CC  60 00 20 00 */	ori r0, r0, 0x2000
/* 800063D0 000024D0  7C 00 01 24 */	mtmsr r0
/* 800063D4 000024D4  7F E8 02 A6 */	mflr r31
/* 800063D8 000024D8  48 0E 6C 05 */	bl __OSPSInit
/* 800063DC 000024DC  48 0E 59 AD */	bl __OSFPRInit
/* 800063E0 000024E0  48 0E 82 09 */	bl __OSCacheInit
/* 800063E4 000024E4  7F E8 03 A6 */	mtlr r31
/* 800063E8 000024E8  4E 80 00 20 */	blr 

.global __flush_cache
__flush_cache:
/* 800063EC 000024EC  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 800063F0 000024F0  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 800063F4 000024F4  7C A5 18 38 */	and r5, r5, r3
/* 800063F8 000024F8  7C 65 18 50 */	subf r3, r5, r3
/* 800063FC 000024FC  7C 84 1A 14 */	add r4, r4, r3
lbl_80006400:
/* 80006400 00002500  7C 00 28 6C */	dcbst 0, r5
/* 80006404 00002504  7C 00 04 AC */	sync 0
/* 80006408 00002508  7C 00 2F AC */	icbi 0, r5
/* 8000640C 0000250C  30 A5 00 08 */	addic r5, r5, 8
/* 80006410 00002510  34 84 FF F8 */	addic. r4, r4, -8
/* 80006414 00002514  40 80 FF EC */	bge lbl_80006400
/* 80006418 00002518  4C 00 01 2C */	isync 
/* 8000641C 0000251C  4E 80 00 20 */	blr 

.section .text, "ax"
.global __init_user
__init_user:
/* 800F6F50 000F1E50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6F54 000F1E54  7C 08 02 A6 */	mflr r0
/* 800F6F58 000F1E58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6F5C 000F1E5C  48 00 00 15 */	bl __init_cpp
/* 800F6F60 000F1E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6F64 000F1E64  7C 08 03 A6 */	mtlr r0
/* 800F6F68 000F1E68  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6F6C 000F1E6C  4E 80 00 20 */	blr 

.global __init_cpp
__init_cpp:
/* 800F6F70 000F1E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6F74 000F1E74  7C 08 02 A6 */	mflr r0
/* 800F6F78 000F1E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6F7C 000F1E7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6F80 000F1E80  3F E0 80 35 */	lis r31, global_ctors@ha
/* 800F6F84 000F1E84  3B FF 50 80 */	addi r31, r31, global_ctors@l
/* 800F6F88 000F1E88  48 00 00 10 */	b lbl_800F6F98
lbl_800F6F8C:
/* 800F6F8C 000F1E8C  7D 89 03 A6 */	mtctr r12
/* 800F6F90 000F1E90  4E 80 04 21 */	bctrl 
/* 800F6F94 000F1E94  3B FF 00 04 */	addi r31, r31, 4
lbl_800F6F98:
/* 800F6F98 000F1E98  81 9F 00 00 */	lwz r12, 0(r31)
/* 800F6F9C 000F1E9C  2C 0C 00 00 */	cmpwi r12, 0
/* 800F6FA0 000F1EA0  40 82 FF EC */	bne lbl_800F6F8C
/* 800F6FA4 000F1EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6FA8 000F1EA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6FAC 000F1EAC  7C 08 03 A6 */	mtlr r0
/* 800F6FB0 000F1EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6FB4 000F1EB4  4E 80 00 20 */	blr 

.global exit
exit:
/* 800F6FB8 000F1EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6FBC 000F1EBC  7C 08 02 A6 */	mflr r0
/* 800F6FC0 000F1EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6FC4 000F1EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6FC8 000F1EC8  3F E0 80 35 */	lis r31, global_dtors@ha
/* 800F6FCC 000F1ECC  3B FF 52 60 */	addi r31, r31, global_dtors@l
/* 800F6FD0 000F1ED0  48 00 00 10 */	b lbl_800F6FE0
lbl_800F6FD4:
/* 800F6FD4 000F1ED4  7D 89 03 A6 */	mtctr r12
/* 800F6FD8 000F1ED8  4E 80 04 21 */	bctrl 
/* 800F6FDC 000F1EDC  3B FF 00 04 */	addi r31, r31, 4
lbl_800F6FE0:
/* 800F6FE0 000F1EE0  81 9F 00 00 */	lwz r12, 0(r31)
/* 800F6FE4 000F1EE4  2C 0C 00 00 */	cmpwi r12, 0
/* 800F6FE8 000F1EE8  40 82 FF EC */	bne lbl_800F6FD4
/* 800F6FEC 000F1EEC  48 01 3A 6D */	bl PPCHalt
/* 800F6FF0 000F1EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6FF4 000F1EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6FF8 000F1EF8  7C 08 03 A6 */	mtlr r0
/* 800F6FFC 000F1EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7000 000F1F00  4E 80 00 20 */	blr 
