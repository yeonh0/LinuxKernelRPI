
vmlinux:     file format elf64-littleaarch64


Disassembly of section .text:

ffffffc080d06ca8 <schedule>:
ffffffc080d06ca8:	d503201f 	nop
ffffffc080d06cac:	d503201f 	nop
ffffffc080d06cb0:	d503233f 	paciasp
ffffffc080d06cb4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
ffffffc080d06cb8:	910003fd 	mov	x29, sp
ffffffc080d06cbc:	a90153f3 	stp	x19, x20, [sp, #16]
ffffffc080d06cc0:	d5384114 	mrs	x20, sp_el0
ffffffc080d06cc4:	b9401a80 	ldr	w0, [x20, #24]
ffffffc080d06cc8:	34000160 	cbz	w0, ffffffc080d06cf4 <schedule+0x4c>
ffffffc080d06ccc:	b9402e80 	ldr	w0, [x20, #44]
ffffffc080d06cd0:	721c041f 	tst	w0, #0x30
ffffffc080d06cd4:	540003a1 	b.ne	ffffffc080d06d48 <schedule+0xa0>  // b.any
ffffffc080d06cd8:	d5384100 	mrs	x0, sp_el0
ffffffc080d06cdc:	b9401800 	ldr	w0, [x0, #24]
ffffffc080d06ce0:	376004e0 	tbnz	w0, #12, ffffffc080d06d7c <schedule+0xd4>
ffffffc080d06ce4:	f9445280 	ldr	x0, [x20, #2208]
ffffffc080d06ce8:	b4000060 	cbz	x0, ffffffc080d06cf4 <schedule+0x4c>
ffffffc080d06cec:	52800021 	mov	w1, #0x1                   	// #1
ffffffc080d06cf0:	97e50214 	bl	ffffffc080647540 <__blk_flush_plug>
ffffffc080d06cf4:	d5384113 	mrs	x19, sp_el0
ffffffc080d06cf8:	b9400a60 	ldr	w0, [x19, #8]
ffffffc080d06cfc:	11000400 	add	w0, w0, #0x1
ffffffc080d06d00:	b9000a60 	str	w0, [x19, #8]
ffffffc080d06d04:	52800000 	mov	w0, #0x0                   	// #0
ffffffc080d06d08:	97fffc90 	bl	ffffffc080d05f48 <__schedule>
ffffffc080d06d0c:	b9400a60 	ldr	w0, [x19, #8]
ffffffc080d06d10:	51000400 	sub	w0, w0, #0x1
ffffffc080d06d14:	b9000a60 	str	w0, [x19, #8]
ffffffc080d06d18:	f9400260 	ldr	x0, [x19]
ffffffc080d06d1c:	370ffee0 	tbnz	w0, #1, ffffffc080d06cf8 <schedule+0x50>
ffffffc080d06d20:	b9402e80 	ldr	w0, [x20, #44]
ffffffc080d06d24:	721c041f 	tst	w0, #0x30
ffffffc080d06d28:	54000080 	b.eq	ffffffc080d06d38 <schedule+0x90>  // b.none
ffffffc080d06d2c:	36280160 	tbz	w0, #5, ffffffc080d06d58 <schedule+0xb0>
ffffffc080d06d30:	aa1403e0 	mov	x0, x20
ffffffc080d06d34:	97cebe7b 	bl	ffffffc0800b6720 <wq_worker_running>
ffffffc080d06d38:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffffc080d06d3c:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffffc080d06d40:	d50323bf 	autiasp
ffffffc080d06d44:	d65f03c0 	ret
ffffffc080d06d48:	36280140 	tbz	w0, #5, ffffffc080d06d70 <schedule+0xc8>
ffffffc080d06d4c:	aa1403e0 	mov	x0, x20
ffffffc080d06d50:	97cebe9e 	bl	ffffffc0800b67c8 <wq_worker_sleeping>
ffffffc080d06d54:	17ffffe1 	b	ffffffc080d06cd8 <schedule+0x30>
ffffffc080d06d58:	aa1403e0 	mov	x0, x20
ffffffc080d06d5c:	97e67d51 	bl	ffffffc0806a62a0 <io_wq_worker_running>
ffffffc080d06d60:	a94153f3 	ldp	x19, x20, [sp, #16]
ffffffc080d06d64:	a8c27bfd 	ldp	x29, x30, [sp], #32
ffffffc080d06d68:	d50323bf 	autiasp
ffffffc080d06d6c:	d65f03c0 	ret
ffffffc080d06d70:	aa1403e0 	mov	x0, x20
ffffffc080d06d74:	97e67d75 	bl	ffffffc0806a6348 <io_wq_worker_sleeping>
ffffffc080d06d78:	17ffffd8 	b	ffffffc080d06cd8 <schedule+0x30>
ffffffc080d06d7c:	d00058a1 	adrp	x1, ffffffc08181c000 <event_class_ma_op+0x8>
ffffffc080d06d80:	91019821 	add	x1, x1, #0x66
ffffffc080d06d84:	39401820 	ldrb	w0, [x1, #6]
ffffffc080d06d88:	35fffae0 	cbnz	w0, ffffffc080d06ce4 <schedule+0x3c>
ffffffc080d06d8c:	52800022 	mov	w2, #0x1                   	// #1
ffffffc080d06d90:	f0001840 	adrp	x0, ffffffc081011000 <kallsyms_seqs_of_names+0x53138>
ffffffc080d06d94:	91354000 	add	x0, x0, #0xd50
ffffffc080d06d98:	39001822 	strb	w2, [x1, #6]
ffffffc080d06d9c:	97ce209d 	bl	ffffffc08008f010 <__warn_printk>
ffffffc080d06da0:	d4210000 	brk	#0x800
ffffffc080d06da4:	17ffffd0 	b	ffffffc080d06ce4 <schedule+0x3c>
ffffffc080d06da8:	d503201f 	nop
ffffffc080d06dac:	d503201f 	nop
