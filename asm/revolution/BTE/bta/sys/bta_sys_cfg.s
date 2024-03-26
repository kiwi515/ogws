.include "macros.inc"

.section .sdata, "wa"
.balign 0x8

.global p_bta_sys_cfg
p_bta_sys_cfg:
	.incbin "baserom.dol", 0x3C7578, 0x8
