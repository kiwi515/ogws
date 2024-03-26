.include "macros.inc"

.section .bss, "wa"
.balign 0x8
.global btu_cb
btu_cb:
	.skip 0x88

.section .sdata, "wa"
.balign 0x8
.global btu_count
btu_count:
	.incbin "baserom.dol", 0x3C7590, 0x4
.global execute_btu
execute_btu:
	.incbin "baserom.dol", 0x3C7594, 0x4

.section .sbss, "wa"
.balign 0x8
.global _btu_g_count
_btu_g_count:
	.skip 0x4
.global _btu_last_timer_tick
_btu_last_timer_tick:
	.skip 0x4

.section .text, "ax"
.global btu_task_init
btu_task_init:
/* 8010E6D8 001095D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010E6DC 001095DC  7C 08 02 A6 */	mflr r0
/* 8010E6E0 001095E0  38 60 00 01 */	li r3, 1
/* 8010E6E4 001095E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010E6E8 001095E8  38 00 00 00 */	li r0, 0
/* 8010E6EC 001095EC  98 6D 85 90 */	stb r3, btu_count-_SDA_BASE_(r13)
/* 8010E6F0 001095F0  90 6D 85 94 */	stw r3, execute_btu-_SDA_BASE_(r13)
/* 8010E6F4 001095F4  90 0D 9F 40 */	stw r0, _btu_g_count-_SDA_BASE_(r13)
/* 8010E6F8 001095F8  90 0D 9F 44 */	stw r0, _btu_last_timer_tick-_SDA_BASE_(r13)
/* 8010E6FC 001095FC  48 01 19 A5 */	bl btu_init_core
/* 8010E700 00109600  4B FF FC F1 */	bl BTE_InitStack
/* 8010E704 00109604  48 00 07 4D */	bl bta_sys_init
/* 8010E708 00109608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010E70C 0010960C  7C 08 03 A6 */	mtlr r0
/* 8010E710 00109610  38 21 00 10 */	addi r1, r1, 0x10
/* 8010E714 00109614  4E 80 00 20 */	blr 

.global btu_task_msg_handler
btu_task_msg_handler:
/* 8010E718 00109618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010E71C 0010961C  7C 08 02 A6 */	mflr r0
/* 8010E720 00109620  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010E724 00109624  39 61 00 20 */	addi r11, r1, 0x20
/* 8010E728 00109628  4B FA 36 19 */	bl _savegpr_26
/* 8010E72C 0010962C  3B C0 00 00 */	li r30, 0
/* 8010E730 00109630  4B FE 6E D5 */	bl OSGetTime
/* 8010E734 00109634  80 6D 9F 40 */	lwz r3, _btu_g_count-_SDA_BASE_(r13)
/* 8010E738 00109638  38 03 00 01 */	addi r0, r3, 1
/* 8010E73C 0010963C  90 0D 9F 40 */	stw r0, _btu_g_count-_SDA_BASE_(r13)
/* 8010E740 00109640  4B FF DF FD */	bl GKI_disable
/* 8010E744 00109644  80 0D 85 94 */	lwz r0, execute_btu-_SDA_BASE_(r13)
/* 8010E748 00109648  2C 00 00 00 */	cmpwi r0, 0
/* 8010E74C 0010964C  41 82 00 18 */	beq lbl_8010E764
/* 8010E750 00109650  38 60 00 00 */	li r3, 0
/* 8010E754 00109654  38 00 00 01 */	li r0, 1
/* 8010E758 00109658  90 6D 85 94 */	stw r3, execute_btu-_SDA_BASE_(r13)
/* 8010E75C 0010965C  98 0D 85 90 */	stb r0, btu_count-_SDA_BASE_(r13)
/* 8010E760 00109660  48 00 00 18 */	b lbl_8010E778
lbl_8010E764:
/* 8010E764 00109664  88 6D 85 90 */	lbz r3, btu_count-_SDA_BASE_(r13)
/* 8010E768 00109668  38 03 00 01 */	addi r0, r3, 1
/* 8010E76C 0010966C  98 0D 85 90 */	stb r0, btu_count-_SDA_BASE_(r13)
/* 8010E770 00109670  4B FF DF A9 */	bl GKI_enable
/* 8010E774 00109674  48 00 03 18 */	b lbl_8010EA8C
lbl_8010E778:
/* 8010E778 00109678  4B FF DF A1 */	bl GKI_enable
/* 8010E77C 0010967C  80 6D 9F 44 */	lwz r3, _btu_last_timer_tick-_SDA_BASE_(r13)
/* 8010E780 00109680  3B E0 00 05 */	li r31, 5
/* 8010E784 00109684  80 8D 9F 40 */	lwz r4, _btu_g_count-_SDA_BASE_(r13)
/* 8010E788 00109688  38 03 01 F4 */	addi r0, r3, 0x1f4
/* 8010E78C 0010968C  7C 04 00 40 */	cmplw r4, r0
/* 8010E790 00109690  40 81 00 0C */	ble lbl_8010E79C
/* 8010E794 00109694  90 8D 9F 44 */	stw r4, _btu_last_timer_tick-_SDA_BASE_(r13)
/* 8010E798 00109698  63 FF 00 30 */	ori r31, r31, 0x30
lbl_8010E79C:
/* 8010E79C 0010969C  3C 60 80 47 */	lis r3, btu_cb@ha
/* 8010E7A0 001096A0  3B A3 CC 90 */	addi r29, r3, btu_cb@l
/* 8010E7A4 001096A4  48 00 02 D8 */	b lbl_8010EA7C
lbl_8010E7A8:
/* 8010E7A8 001096A8  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8010E7AC 001096AC  3B C0 00 01 */	li r30, 1
/* 8010E7B0 001096B0  41 82 01 10 */	beq lbl_8010E8C0
/* 8010E7B4 001096B4  48 00 00 F8 */	b lbl_8010E8AC
lbl_8010E7B8:
/* 8010E7B8 001096B8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8010E7BC 001096BC  3B C0 00 00 */	li r30, 0
/* 8010E7C0 001096C0  54 1C 04 2E */	rlwinm r28, r0, 0, 0x10, 0x17
/* 8010E7C4 001096C4  2C 1C 12 00 */	cmpwi r28, 0x1200
/* 8010E7C8 001096C8  41 82 00 50 */	beq lbl_8010E818
/* 8010E7CC 001096CC  40 80 00 1C */	bge lbl_8010E7E8
/* 8010E7D0 001096D0  2C 1C 11 00 */	cmpwi r28, 0x1100
/* 8010E7D4 001096D4  41 82 00 2C */	beq lbl_8010E800
/* 8010E7D8 001096D8  40 80 00 6C */	bge lbl_8010E844
/* 8010E7DC 001096DC  2C 1C 10 00 */	cmpwi r28, 0x1000
/* 8010E7E0 001096E0  41 82 00 44 */	beq lbl_8010E824
/* 8010E7E4 001096E4  48 00 00 60 */	b lbl_8010E844
lbl_8010E7E8:
/* 8010E7E8 001096E8  2C 1C 19 00 */	cmpwi r28, 0x1900
/* 8010E7EC 001096EC  41 82 00 20 */	beq lbl_8010E80C
/* 8010E7F0 001096F0  40 80 00 54 */	bge lbl_8010E844
/* 8010E7F4 001096F4  2C 1C 16 00 */	cmpwi r28, 0x1600
/* 8010E7F8 001096F8  41 82 00 40 */	beq lbl_8010E838
/* 8010E7FC 001096FC  48 00 00 48 */	b lbl_8010E844
lbl_8010E800:
/* 8010E800 00109700  7F 63 DB 78 */	mr r3, r27
/* 8010E804 00109704  48 01 B9 3D */	bl l2c_rcv_acl_data
/* 8010E808 00109708  48 00 00 A4 */	b lbl_8010E8AC
lbl_8010E80C:
/* 8010E80C 0010970C  7F 63 DB 78 */	mr r3, r27
/* 8010E810 00109710  48 01 B6 FD */	bl l2c_link_segments_xmitted
/* 8010E814 00109714  48 00 00 98 */	b lbl_8010E8AC
lbl_8010E818:
/* 8010E818 00109718  7F 63 DB 78 */	mr r3, r27
/* 8010E81C 0010971C  48 00 D2 5D */	bl btm_route_sco_data
/* 8010E820 00109720  48 00 00 8C */	b lbl_8010E8AC
lbl_8010E824:
/* 8010E824 00109724  7F 63 DB 78 */	mr r3, r27
/* 8010E828 00109728  48 01 06 1D */	bl btu_hcif_process_event
/* 8010E82C 0010972C  7F 63 DB 78 */	mr r3, r27
/* 8010E830 00109730  4B FF CA C1 */	bl GKI_freebuf
/* 8010E834 00109734  48 00 00 78 */	b lbl_8010E8AC
lbl_8010E838:
/* 8010E838 00109738  7F 63 DB 78 */	mr r3, r27
/* 8010E83C 0010973C  48 01 0B C1 */	bl btu_hcif_send_cmd
/* 8010E840 00109740  48 00 00 6C */	b lbl_8010E8AC
lbl_8010E844:
/* 8010E844 00109744  3B 40 00 00 */	li r26, 0
/* 8010E848 00109748  38 80 00 00 */	li r4, 0
/* 8010E84C 0010974C  48 00 00 3C */	b lbl_8010E888
lbl_8010E850:
/* 8010E850 00109750  57 40 1D 78 */	rlwinm r0, r26, 3, 0x15, 0x1c
/* 8010E854 00109754  7C 7D 02 14 */	add r3, r29, r0
/* 8010E858 00109758  81 83 00 14 */	lwz r12, 0x14(r3)
/* 8010E85C 0010975C  2C 8C 00 00 */	cmpwi cr1, r12, 0
/* 8010E860 00109760  41 86 00 24 */	beq cr1, lbl_8010E884
/* 8010E864 00109764  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8010E868 00109768  7C 1C 00 40 */	cmplw r28, r0
/* 8010E86C 0010976C  40 82 00 18 */	bne lbl_8010E884
/* 8010E870 00109770  41 86 00 14 */	beq cr1, lbl_8010E884
/* 8010E874 00109774  7F 63 DB 78 */	mr r3, r27
/* 8010E878 00109778  7D 89 03 A6 */	mtctr r12
/* 8010E87C 0010977C  4E 80 04 21 */	bctrl 
/* 8010E880 00109780  38 80 00 01 */	li r4, 1
lbl_8010E884:
/* 8010E884 00109784  3B 5A 00 01 */	addi r26, r26, 1
lbl_8010E888:
/* 8010E888 00109788  2C 04 00 00 */	cmpwi r4, 0
/* 8010E88C 0010978C  40 82 00 10 */	bne lbl_8010E89C
/* 8010E890 00109790  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8010E894 00109794  28 00 00 06 */	cmplwi r0, 6
/* 8010E898 00109798  41 80 FF B8 */	blt lbl_8010E850
lbl_8010E89C:
/* 8010E89C 0010979C  2C 04 00 00 */	cmpwi r4, 0
/* 8010E8A0 001097A0  40 82 00 0C */	bne lbl_8010E8AC
/* 8010E8A4 001097A4  7F 63 DB 78 */	mr r3, r27
/* 8010E8A8 001097A8  4B FF CA 49 */	bl GKI_freebuf
lbl_8010E8AC:
/* 8010E8AC 001097AC  38 60 00 00 */	li r3, 0
/* 8010E8B0 001097B0  4B FF CD B1 */	bl GKI_read_mbox
/* 8010E8B4 001097B4  2C 03 00 00 */	cmpwi r3, 0
/* 8010E8B8 001097B8  7C 7B 1B 78 */	mr r27, r3
/* 8010E8BC 001097BC  40 82 FE FC */	bne lbl_8010E7B8
lbl_8010E8C0:
/* 8010E8C0 001097C0  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 8010E8C4 001097C4  41 82 01 78 */	beq lbl_8010EA3C
/* 8010E8C8 001097C8  38 7D 00 40 */	addi r3, r29, 0x40
/* 8010E8CC 001097CC  38 80 00 01 */	li r4, 1
/* 8010E8D0 001097D0  4B FF D9 B9 */	bl GKI_update_timer_list
/* 8010E8D4 001097D4  57 E0 07 34 */	rlwinm r0, r31, 0, 0x1c, 0x1a
/* 8010E8D8 001097D8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 8010E8DC 001097DC  48 00 01 48 */	b lbl_8010EA24
lbl_8010E8E0:
/* 8010E8E0 001097E0  7F 84 E3 78 */	mr r4, r28
/* 8010E8E4 001097E4  38 7D 00 40 */	addi r3, r29, 0x40
/* 8010E8E8 001097E8  3B C0 00 00 */	li r30, 0
/* 8010E8EC 001097EC  4B FF DB 15 */	bl GKI_remove_from_timer_list
/* 8010E8F0 001097F0  A0 1C 00 14 */	lhz r0, 0x14(r28)
/* 8010E8F4 001097F4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8010E8F8 001097F8  41 82 00 94 */	beq lbl_8010E98C
/* 8010E8FC 001097FC  40 80 00 30 */	bge lbl_8010E92C
/* 8010E900 00109800  2C 00 00 05 */	cmpwi r0, 5
/* 8010E904 00109804  41 82 00 7C */	beq lbl_8010E980
/* 8010E908 00109808  40 80 00 14 */	bge lbl_8010E91C
/* 8010E90C 0010980C  2C 00 00 01 */	cmpwi r0, 1
/* 8010E910 00109810  41 82 00 4C */	beq lbl_8010E95C
/* 8010E914 00109814  40 80 00 60 */	bge lbl_8010E974
/* 8010E918 00109818  48 00 00 B8 */	b lbl_8010E9D0
lbl_8010E91C:
/* 8010E91C 0010981C  2C 00 00 08 */	cmpwi r0, 8
/* 8010E920 00109820  41 82 00 74 */	beq lbl_8010E994
/* 8010E924 00109824  40 80 00 44 */	bge lbl_8010E968
/* 8010E928 00109828  48 00 00 A8 */	b lbl_8010E9D0
lbl_8010E92C:
/* 8010E92C 0010982C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 8010E930 00109830  41 82 00 78 */	beq lbl_8010E9A8
/* 8010E934 00109834  40 80 00 1C */	bge lbl_8010E950
/* 8010E938 00109838  2C 00 00 16 */	cmpwi r0, 0x16
/* 8010E93C 0010983C  41 82 00 80 */	beq lbl_8010E9BC
/* 8010E940 00109840  40 80 00 90 */	bge lbl_8010E9D0
/* 8010E944 00109844  2C 00 00 0D */	cmpwi r0, 0xd
/* 8010E948 00109848  40 80 00 88 */	bge lbl_8010E9D0
/* 8010E94C 0010984C  48 00 00 50 */	b lbl_8010E99C
lbl_8010E950:
/* 8010E950 00109850  2C 00 00 42 */	cmpwi r0, 0x42
/* 8010E954 00109854  41 82 00 5C */	beq lbl_8010E9B0
/* 8010E958 00109858  48 00 00 78 */	b lbl_8010E9D0
lbl_8010E95C:
/* 8010E95C 0010985C  7F 83 E3 78 */	mr r3, r28
/* 8010E960 00109860  48 00 88 45 */	bl btm_dev_timeout
/* 8010E964 00109864  48 00 00 C0 */	b lbl_8010EA24
lbl_8010E968:
/* 8010E968 00109868  7F 83 E3 78 */	mr r3, r28
/* 8010E96C 0010986C  48 00 73 2D */	bl btm_acl_timeout
/* 8010E970 00109870  48 00 00 B4 */	b lbl_8010EA24
lbl_8010E974:
/* 8010E974 00109874  7F 83 E3 78 */	mr r3, r28
/* 8010E978 00109878  48 01 C5 69 */	bl l2c_process_timeout
/* 8010E97C 0010987C  48 00 00 A8 */	b lbl_8010EA24
lbl_8010E980:
/* 8010E980 00109880  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8010E984 00109884  48 02 82 BD */	bl sdp_conn_timeout
/* 8010E988 00109888  48 00 00 9C */	b lbl_8010EA24
lbl_8010E98C:
/* 8010E98C 0010988C  48 00 B9 8D */	bl btm_inq_rmt_name_failed
/* 8010E990 00109890  48 00 00 94 */	b lbl_8010EA24
lbl_8010E994:
/* 8010E994 00109894  48 00 9F 29 */	bl btm_discovery_timeout
/* 8010E998 00109898  48 00 00 8C */	b lbl_8010EA24
lbl_8010E99C:
/* 8010E99C 0010989C  7F 83 E3 78 */	mr r3, r28
/* 8010E9A0 001098A0  48 02 46 FD */	bl rfcomm_process_timeout
/* 8010E9A4 001098A4  48 00 00 80 */	b lbl_8010EA24
lbl_8010E9A8:
/* 8010E9A8 001098A8  48 01 14 C1 */	bl btu_hcif_cmd_timeout
/* 8010E9AC 001098AC  48 00 00 78 */	b lbl_8010EA24
lbl_8010E9B0:
/* 8010E9B0 001098B0  7F 83 E3 78 */	mr r3, r28
/* 8010E9B4 001098B4  48 01 69 89 */	bl hidh_proc_repage_timeout
/* 8010E9B8 001098B8  48 00 00 6C */	b lbl_8010EA24
lbl_8010E9BC:
/* 8010E9BC 001098BC  81 9C 00 10 */	lwz r12, 0x10(r28)
/* 8010E9C0 001098C0  7F 83 E3 78 */	mr r3, r28
/* 8010E9C4 001098C4  7D 89 03 A6 */	mtctr r12
/* 8010E9C8 001098C8  4E 80 04 21 */	bctrl 
/* 8010E9CC 001098CC  48 00 00 58 */	b lbl_8010EA24
lbl_8010E9D0:
/* 8010E9D0 001098D0  3B 60 00 00 */	li r27, 0
/* 8010E9D4 001098D4  38 80 00 00 */	li r4, 0
/* 8010E9D8 001098D8  48 00 00 38 */	b lbl_8010EA10
lbl_8010E9DC:
/* 8010E9DC 001098DC  57 60 1D 78 */	rlwinm r0, r27, 3, 0x15, 0x1c
/* 8010E9E0 001098E0  7C 7D 02 14 */	add r3, r29, r0
/* 8010E9E4 001098E4  81 83 00 04 */	lwz r12, 4(r3)
/* 8010E9E8 001098E8  2C 0C 00 00 */	cmpwi r12, 0
/* 8010E9EC 001098EC  41 82 00 20 */	beq lbl_8010EA0C
/* 8010E9F0 001098F0  80 03 00 00 */	lwz r0, 0(r3)
/* 8010E9F4 001098F4  7C 00 E0 40 */	cmplw r0, r28
/* 8010E9F8 001098F8  40 82 00 14 */	bne lbl_8010EA0C
/* 8010E9FC 001098FC  7F 83 E3 78 */	mr r3, r28
/* 8010EA00 00109900  7D 89 03 A6 */	mtctr r12
/* 8010EA04 00109904  4E 80 04 21 */	bctrl 
/* 8010EA08 00109908  38 80 00 01 */	li r4, 1
lbl_8010EA0C:
/* 8010EA0C 0010990C  3B 7B 00 01 */	addi r27, r27, 1
lbl_8010EA10:
/* 8010EA10 00109910  2C 04 00 00 */	cmpwi r4, 0
/* 8010EA14 00109914  40 82 00 10 */	bne lbl_8010EA24
/* 8010EA18 00109918  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 8010EA1C 0010991C  28 00 00 02 */	cmplwi r0, 2
/* 8010EA20 00109920  41 80 FF BC */	blt lbl_8010E9DC
lbl_8010EA24:
/* 8010EA24 00109924  83 9D 00 40 */	lwz r28, 0x40(r29)
/* 8010EA28 00109928  2C 1C 00 00 */	cmpwi r28, 0
/* 8010EA2C 0010992C  41 82 00 10 */	beq lbl_8010EA3C
/* 8010EA30 00109930  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 8010EA34 00109934  2C 00 00 00 */	cmpwi r0, 0
/* 8010EA38 00109938  41 82 FE A8 */	beq lbl_8010E8E0
lbl_8010EA3C:
/* 8010EA3C 0010993C  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8010EA40 00109940  41 82 00 20 */	beq lbl_8010EA60
/* 8010EA44 00109944  48 00 00 0C */	b lbl_8010EA50
lbl_8010EA48:
/* 8010EA48 00109948  3B C0 00 00 */	li r30, 0
/* 8010EA4C 0010994C  48 00 04 69 */	bl bta_sys_event
lbl_8010EA50:
/* 8010EA50 00109950  38 60 00 02 */	li r3, 2
/* 8010EA54 00109954  4B FF CC 0D */	bl GKI_read_mbox
/* 8010EA58 00109958  2C 03 00 00 */	cmpwi r3, 0
/* 8010EA5C 0010995C  40 82 FF EC */	bne lbl_8010EA48
lbl_8010EA60:
/* 8010EA60 00109960  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 8010EA64 00109964  41 82 00 10 */	beq lbl_8010EA74
/* 8010EA68 00109968  57 E0 06 F2 */	rlwinm r0, r31, 0, 0x1b, 0x19
/* 8010EA6C 0010996C  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 8010EA70 00109970  48 00 05 31 */	bl bta_sys_timer_update
lbl_8010EA74:
/* 8010EA74 00109974  57 E0 04 21 */	rlwinm. r0, r31, 0, 0x10, 0x10
/* 8010EA78 00109978  40 82 00 0C */	bne lbl_8010EA84
lbl_8010EA7C:
/* 8010EA7C 0010997C  2C 1E 00 00 */	cmpwi r30, 0
/* 8010EA80 00109980  41 82 FD 28 */	beq lbl_8010E7A8
lbl_8010EA84:
/* 8010EA84 00109984  38 00 00 01 */	li r0, 1
/* 8010EA88 00109988  90 0D 85 94 */	stw r0, execute_btu-_SDA_BASE_(r13)
lbl_8010EA8C:
/* 8010EA8C 0010998C  39 61 00 20 */	addi r11, r1, 0x20
/* 8010EA90 00109990  4B FA 32 FD */	bl _restgpr_26
/* 8010EA94 00109994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010EA98 00109998  7C 08 03 A6 */	mtlr r0
/* 8010EA9C 0010999C  38 21 00 20 */	addi r1, r1, 0x20
/* 8010EAA0 001099A0  4E 80 00 20 */	blr 

.global btu_start_timer
btu_start_timer:
/* 8010EAA4 001099A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010EAA8 001099A8  7C 08 02 A6 */	mflr r0
/* 8010EAAC 001099AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010EAB0 001099B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010EAB4 001099B4  3F E0 80 47 */	lis r31, btu_cb@ha
/* 8010EAB8 001099B8  3B FF CC 90 */	addi r31, r31, btu_cb@l
/* 8010EABC 001099BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010EAC0 001099C0  7C BE 2B 78 */	mr r30, r5
/* 8010EAC4 001099C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8010EAC8 001099C8  7C 9D 23 78 */	mr r29, r4
/* 8010EACC 001099CC  93 81 00 10 */	stw r28, 0x10(r1)
/* 8010EAD0 001099D0  7C 7C 1B 78 */	mr r28, r3
/* 8010EAD4 001099D4  7F 84 E3 78 */	mr r4, r28
/* 8010EAD8 001099D8  38 7F 00 40 */	addi r3, r31, 0x40
/* 8010EADC 001099DC  4B FF D9 25 */	bl GKI_remove_from_timer_list
/* 8010EAE0 001099E0  B3 BC 00 14 */	sth r29, 0x14(r28)
/* 8010EAE4 001099E4  7F 84 E3 78 */	mr r4, r28
/* 8010EAE8 001099E8  38 7F 00 40 */	addi r3, r31, 0x40
/* 8010EAEC 001099EC  93 DC 00 0C */	stw r30, 0xc(r28)
/* 8010EAF0 001099F0  4B FF D8 25 */	bl GKI_add_to_timer_list
/* 8010EAF4 001099F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010EAF8 001099F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010EAFC 001099FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010EB00 00109A00  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8010EB04 00109A04  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8010EB08 00109A08  7C 08 03 A6 */	mtlr r0
/* 8010EB0C 00109A0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8010EB10 00109A10  4E 80 00 20 */	blr 

.global btu_stop_timer
btu_stop_timer:
/* 8010EB14 00109A14  3C A0 80 47 */	lis r5, btu_cb@ha
/* 8010EB18 00109A18  7C 64 1B 78 */	mr r4, r3
/* 8010EB1C 00109A1C  38 A5 CC 90 */	addi r5, r5, btu_cb@l
/* 8010EB20 00109A20  38 65 00 40 */	addi r3, r5, 0x40
/* 8010EB24 00109A24  4B FF D8 DC */	b GKI_remove_from_timer_list
