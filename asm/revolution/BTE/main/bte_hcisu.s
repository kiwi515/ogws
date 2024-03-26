.include "macros.inc"

.section .sbss, "wa"
.balign 0x8
.global p_hcisu_if
p_hcisu_if:
	.skip 0x4
.global p_hcisu_cfg
p_hcisu_cfg:
	.skip 0x4

.section .text, "ax"
.global bte_hcisu_send
bte_hcisu_send:
/* 8010E338 00109238  B0 83 00 00 */	sth r4, 0(r3)
/* 8010E33C 0010923C  80 8D 9F 30 */	lwz r4, p_hcisu_if-_SDA_BASE_(r13)
/* 8010E340 00109240  2C 04 00 00 */	cmpwi r4, 0
/* 8010E344 00109244  41 82 00 10 */	beq lbl_8010E354
/* 8010E348 00109248  81 84 00 0C */	lwz r12, 0xc(r4)
/* 8010E34C 0010924C  7D 89 03 A6 */	mtctr r12
/* 8010E350 00109250  4E 80 04 20 */	bctr 
lbl_8010E354:
/* 8010E354 00109254  4B FF CF 9C */	b GKI_freebuf

.global bte_hcisu_task
bte_hcisu_task:
/* 8010E358 00109258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010E35C 0010925C  7C 08 02 A6 */	mflr r0
/* 8010E360 00109260  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010E364 00109264  80 6D 9F 30 */	lwz r3, p_hcisu_if-_SDA_BASE_(r13)
/* 8010E368 00109268  2C 03 00 00 */	cmpwi r3, 0
/* 8010E36C 0010926C  41 82 00 40 */	beq lbl_8010E3AC
/* 8010E370 00109270  81 83 00 00 */	lwz r12, 0(r3)
/* 8010E374 00109274  2C 0C 00 00 */	cmpwi r12, 0
/* 8010E378 00109278  41 82 00 18 */	beq lbl_8010E390
/* 8010E37C 0010927C  38 60 00 02 */	li r3, 2
/* 8010E380 00109280  38 80 00 01 */	li r4, 1
/* 8010E384 00109284  38 A0 08 00 */	li r5, 0x800
/* 8010E388 00109288  7D 89 03 A6 */	mtctr r12
/* 8010E38C 0010928C  4E 80 04 21 */	bctrl 
lbl_8010E390:
/* 8010E390 00109290  80 6D 9F 30 */	lwz r3, p_hcisu_if-_SDA_BASE_(r13)
/* 8010E394 00109294  81 83 00 04 */	lwz r12, 4(r3)
/* 8010E398 00109298  2C 0C 00 00 */	cmpwi r12, 0
/* 8010E39C 0010929C  41 82 00 10 */	beq lbl_8010E3AC
/* 8010E3A0 001092A0  80 6D 9F 34 */	lwz r3, p_hcisu_cfg-_SDA_BASE_(r13)
/* 8010E3A4 001092A4  7D 89 03 A6 */	mtctr r12
/* 8010E3A8 001092A8  4E 80 04 21 */	bctrl 
lbl_8010E3AC:
/* 8010E3AC 001092AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010E3B0 001092B0  7C 08 03 A6 */	mtlr r0
/* 8010E3B4 001092B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8010E3B8 001092B8  4E 80 00 20 */	blr 

.global bte_hcisu_close
bte_hcisu_close:
/* 8010E3BC 001092BC  80 6D 9F 30 */	lwz r3, p_hcisu_if-_SDA_BASE_(r13)
/* 8010E3C0 001092C0  2C 03 00 00 */	cmpwi r3, 0
/* 8010E3C4 001092C4  4D 82 00 20 */	beqlr 
/* 8010E3C8 001092C8  81 83 00 08 */	lwz r12, 8(r3)
/* 8010E3CC 001092CC  2C 0C 00 00 */	cmpwi r12, 0
/* 8010E3D0 001092D0  4D 82 00 20 */	beqlr 
/* 8010E3D4 001092D4  7D 89 03 A6 */	mtctr r12
/* 8010E3D8 001092D8  4E 80 04 20 */	bctr 
/* 8010E3DC 001092DC  4E 80 00 20 */	blr 

.global bta_ci_hci_msg_handler
bta_ci_hci_msg_handler:
/* 8010E3E0 001092E0  7C 65 1B 78 */	mr r5, r3
/* 8010E3E4 001092E4  38 60 00 02 */	li r3, 2
/* 8010E3E8 001092E8  38 80 00 00 */	li r4, 0
/* 8010E3EC 001092EC  4B FF D0 B8 */	b GKI_send_msg
