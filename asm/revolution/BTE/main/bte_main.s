.include "macros.inc"

.section .bss, "wa"
.balign 0x8
	.skip 0x10 # COMPILER ALIGN
.global __BTUInterruptHandlerStack
__BTUInterruptHandlerStack:
	.skip 0x1000
.global _bte_alarm
_bte_alarm:
	.skip 0x30

.section .sbss, "wa"
.balign 0x8
.global bte_target_mode
bte_target_mode:
	.skip 0x4
.global _bte_app_info
_bte_app_info:
	.skip 0x4

.section .sdata, "wa"
.balign 0x8
.global bte_hcisu_h2_cfg
bte_hcisu_h2_cfg:
	.incbin "baserom.dol", 0x3C7588, 0x8

.section .text, "ax"
.global BTUInterruptHandler
BTUInterruptHandler:
/* 8010E580 00109480  3C 80 80 47 */	lis r4, __BTUInterruptHandlerStack@ha
/* 8010E584 00109484  3C 60 80 11 */	lis r3, btu_task_msg_handler@ha
/* 8010E588 00109488  38 84 BC 60 */	addi r4, r4, __BTUInterruptHandlerStack@l
/* 8010E58C 0010948C  38 63 E7 18 */	addi r3, r3, btu_task_msg_handler@l
/* 8010E590 00109490  38 84 10 00 */	addi r4, r4, 0x1000
/* 8010E594 00109494  4B FE 05 A8 */	b OSSwitchFiber

.global BTA_Init
BTA_Init:
/* 8010E598 00109498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010E59C 0010949C  7C 08 02 A6 */	mflr r0
/* 8010E5A0 001094A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010E5A4 001094A4  38 00 00 00 */	li r0, 0
/* 8010E5A8 001094A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010E5AC 001094AC  90 0D 9F 3C */	stw r0, _bte_app_info@sda21(r13)
/* 8010E5B0 001094B0  4B FF DF 75 */	bl GKI_init
/* 8010E5B4 001094B4  4B FF E1 65 */	bl GKI_enable
/* 8010E5B8 001094B8  48 01 1B 15 */	bl BTE_Init
/* 8010E5BC 001094BC  3C 80 80 38 */	lis r4, hcisu_h2@ha
/* 8010E5C0 001094C0  38 0D 85 88 */	addi r0, r13, bte_hcisu_h2_cfg@sda21
/* 8010E5C4 001094C4  38 84 C6 58 */	addi r4, r4, hcisu_h2@l
/* 8010E5C8 001094C8  90 0D 9F 34 */	stw r0, p_hcisu_cfg@sda21(r13)
/* 8010E5CC 001094CC  38 60 00 00 */	li r3, 0
/* 8010E5D0 001094D0  90 8D 9F 30 */	stw r4, p_hcisu_if@sda21(r13)
/* 8010E5D4 001094D4  4B FF FD 85 */	bl bte_hcisu_task
/* 8010E5D8 001094D8  48 00 00 0C */	b lbl_8010E5E4
lbl_8010E5DC:
/* 8010E5DC 001094DC  38 60 00 64 */	li r3, 0x64
/* 8010E5E0 001094E0  4B FF E0 89 */	bl GKI_delay
lbl_8010E5E4:
/* 8010E5E4 001094E4  80 0D 85 30 */	lwz r0, wait4hci@sda21(r13)
/* 8010E5E8 001094E8  2C 00 00 00 */	cmpwi r0, 0
/* 8010E5EC 001094EC  40 82 FF F0 */	bne lbl_8010E5DC
/* 8010E5F0 001094F0  48 00 00 E9 */	bl btu_task_init
/* 8010E5F4 001094F4  3F E0 80 47 */	lis r31, _bte_alarm@ha
/* 8010E5F8 001094F8  38 7F CC 60 */	addi r3, r31, _bte_alarm@l
/* 8010E5FC 001094FC  4B FD EB 19 */	bl OSCreateAlarm
/* 8010E600 00109500  4B FE 70 05 */	bl OSGetTime
/* 8010E604 00109504  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8010E608 00109508  3D 20 80 11 */	lis r9, BTUInterruptHandler@ha
/* 8010E60C 0010950C  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 8010E610 00109510  3C C0 10 62 */	lis r6, 0x10624DD3@ha
/* 8010E614 00109514  7C 65 1B 78 */	mr r5, r3
/* 8010E618 00109518  39 29 E5 80 */	addi r9, r9, BTUInterruptHandler@l
/* 8010E61C 0010951C  38 66 4D D3 */	addi r3, r6, 0x10624DD3@l
/* 8010E620 00109520  54 00 F0 BE */	srwi r0, r0, 2
/* 8010E624 00109524  7C 03 00 16 */	mulhwu r0, r3, r0
/* 8010E628 00109528  7C 86 23 78 */	mr r6, r4
/* 8010E62C 0010952C  38 7F CC 60 */	addi r3, r31, -13216
/* 8010E630 00109530  38 E0 00 00 */	li r7, 0
/* 8010E634 00109534  54 08 D9 7C */	rlwinm r8, r0, 0x1b, 5, 0x1e
/* 8010E638 00109538  4B FD ED AD */	bl OSSetPeriodicAlarm
/* 8010E63C 0010953C  38 60 00 00 */	li r3, 0
/* 8010E640 00109540  4B FF E0 1D */	bl GKI_run
/* 8010E644 00109544  48 00 00 0C */	b lbl_8010E650
lbl_8010E648:
/* 8010E648 00109548  38 60 07 D0 */	li r3, 0x7d0
/* 8010E64C 0010954C  4B FF E0 1D */	bl GKI_delay
lbl_8010E650:
/* 8010E650 00109550  48 00 30 65 */	bl BTA_DmIsDeviceUp
/* 8010E654 00109554  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010E658 00109558  41 82 FF F0 */	beq lbl_8010E648
/* 8010E65C 0010955C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010E660 00109560  38 60 00 00 */	li r3, 0
/* 8010E664 00109564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010E668 00109568  7C 08 03 A6 */	mtlr r0
/* 8010E66C 0010956C  38 21 00 10 */	addi r1, r1, 0x10
/* 8010E670 00109570  4E 80 00 20 */	blr 

.global BTA_CleanUp
BTA_CleanUp:
/* 8010E674 00109574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010E678 00109578  7C 08 02 A6 */	mflr r0
/* 8010E67C 0010957C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010E680 00109580  90 6D 9F 3C */	stw r3, _bte_app_info@sda21(r13)
/* 8010E684 00109584  3C 60 80 47 */	lis r3, _bte_alarm@ha
/* 8010E688 00109588  38 63 CC 60 */	addi r3, r3, _bte_alarm@l
/* 8010E68C 0010958C  4B FD ED DD */	bl OSCancelAlarm
/* 8010E690 00109590  4B FF FD 2D */	bl bte_hcisu_close
/* 8010E694 00109594  4B FF DF 21 */	bl GKI_shutdown
/* 8010E698 00109598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010E69C 0010959C  7C 08 03 A6 */	mtlr r0
/* 8010E6A0 001095A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8010E6A4 001095A4  4E 80 00 20 */	blr 

.global bta_usb_close_evt
bta_usb_close_evt:
/* 8010E6A8 001095A8  81 8D 9F 3C */	lwz r12, _bte_app_info@sda21(r13)
/* 8010E6AC 001095AC  2C 0C 00 00 */	cmpwi r12, 0
/* 8010E6B0 001095B0  4D 82 00 20 */	beqlr 
/* 8010E6B4 001095B4  7C 60 07 75 */	extsb. r0, r3
/* 8010E6B8 001095B8  41 80 00 10 */	blt lbl_8010E6C8
/* 8010E6BC 001095BC  38 60 00 00 */	li r3, 0
/* 8010E6C0 001095C0  7D 89 03 A6 */	mtctr r12
/* 8010E6C4 001095C4  4E 80 04 20 */	bctr 
lbl_8010E6C8:
/* 8010E6C8 001095C8  38 60 00 01 */	li r3, 1
/* 8010E6CC 001095CC  7D 89 03 A6 */	mtctr r12
/* 8010E6D0 001095D0  4E 80 04 20 */	bctr 
/* 8010E6D4 001095D4  4E 80 00 20 */	blr 
