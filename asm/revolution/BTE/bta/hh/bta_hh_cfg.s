.include "macros.inc"

.section .sdata, "wa"
.balign 0x8
p_devt_list:
	.incbin "baserom.dol", 0x3C7568, 0x8
.global p_bta_hh_cfg
p_bta_hh_cfg:
	.incbin "baserom.dol", 0x3C7570, 0x8


.section .rodata, "a"
.balign 0x8
.global bta_hh_cfg
bta_hh_cfg:
	.incbin "baserom.dol", 0x378800, 0x10