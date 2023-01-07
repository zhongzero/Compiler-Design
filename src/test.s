	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_1:
	addi	sp,	sp,	-368
	sw		s0,	0(sp)
	addi	s0,	sp,	368
	sw		ra,	4(sp)
	addi	t0,	sp,	8
	sw		t0,	24(sp)
	addi	t0,	sp,	12
	sw		t0,	28(sp)
	addi	t0,	sp,	16
	sw		t0,	32(sp)
	addi	t0,	sp,	20
	sw		t0,	36(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		a0,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	368
	ret
.normal_block_1:
	call	_main_initial_1
	li		t0,	1
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	la		t0,	N_addr_1
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	48(sp)
	lw		t2,	56(sp)
	sgt		t0,	t1,	t2
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	seqz	t0,	t1,
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	beqz	t1,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	la		t0,	b_addr_1
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	68(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	li		t0,	4
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t2,	72(sp)
	mul		t0,	t1,	t2
	sw		t0,	76(sp)
	lw		t1,	68(sp)
	lw		t2,	76(sp)
	add		t0,	t1,	t2
	sw		t0,	80(sp)
	li		t0,	1
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.for_update_block_1
.for_update_block_1:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	li		t0,	1
	sw		t0,	92(sp)
	lw		t1,	88(sp)
	lw		t2,	92(sp)
	add		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_1
.normal_block_2:
	li		t0,	2
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_2
.for_condition_block_2:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	la		t0,	N_addr_1
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t0,	0(t1)
	sw		t0,	112(sp)
	lw		t1,	104(sp)
	lw		t2,	112(sp)
	sgt		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	seqz	t0,	t1,
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	beqz	t1,	.normal_block_3
	j		.for_body_block_2
.for_body_block_2:
	la		t0,	b_addr_1
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	li		t0,	4
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	lw		t2,	128(sp)
	mul		t0,	t1,	t2
	sw		t0,	132(sp)
	lw		t1,	124(sp)
	lw		t2,	132(sp)
	add		t0,	t1,	t2
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	beqz	t1,	.normal_block_4
	j		.if_body_block_1
.for_update_block_2:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	li		t0,	1
	sw		t0,	148(sp)
	lw		t1,	144(sp)
	lw		t2,	148(sp)
	add		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_2
.normal_block_3:
	la		t0,	resultCount_addr_1
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	sw		t0,	164(sp)
	la		t0,	const_string_2
	sw		t0,	168(sp)
	lw		t1,	168(sp)
	addi	t0,	t1,	0
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	mv		a0,	t1
	lw		t1,	164(sp)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	mv		a0,	t1
	call	f_println_1
	li		t0,	0
	sw		t0,	180(sp)
	lw		t1,	180(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	j		.func_end_block_1
.if_body_block_1:
	li		t0,	2
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	li		t0,	3
	sw		t0,	192(sp)
	lw		t1,	188(sp)
	lw		t2,	192(sp)
	sgt		t0,	t1,	t2
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	beqz	t1,	.short_circuit_else_body_block_1
	j		.short_circuit_if_body_block_1
.normal_block_4:
	j		.for_update_block_2
.if_body_block_2:
	la		t0,	resultCount_addr_1
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	li		t0,	1
	sw		t0,	208(sp)
	lw		t1,	204(sp)
	lw		t2,	208(sp)
	add		t0,	t1,	t2
	sw		t0,	212(sp)
	la		t0,	resultCount_addr_1
	sw		t0,	216(sp)
	lw		t1,	212(sp)
	lw		t2,	216(sp)
	sw		t1,	0(t2)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	li		t0,	2
	sw		t0,	224(sp)
	lw		t1,	220(sp)
	lw		t2,	224(sp)
	sub		t0,	t1,	t2
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	sw		t0,	232(sp)
	la		t0,	const_string_1
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	addi	t0,	t1,	0
	sw		t0,	240(sp)
	lw		t1,	232(sp)
	mv		a0,	t1
	lw		t1,	240(sp)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	sw		t0,	244(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	sw		t0,	252(sp)
	lw		t1,	244(sp)
	mv		a0,	t1
	lw		t1,	252(sp)
	mv		a1,	t1
	call	_string_merge_1
	mv		t0,	a0
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	mv		a0,	t1
	call	f_println_1
	j		.normal_block_5
.normal_block_5:
	j		.while_condition_block_1
.short_circuit_if_body_block_1:
	la		t0,	b_addr_1
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	lw		t0,	0(t1)
	sw		t0,	264(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	li		t0,	2
	sw		t0,	272(sp)
	lw		t1,	268(sp)
	lw		t2,	272(sp)
	sub		t0,	t1,	t2
	sw		t0,	276(sp)
	li		t0,	4
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	lw		t2,	276(sp)
	mul		t0,	t1,	t2
	sw		t0,	280(sp)
	lw		t1,	264(sp)
	lw		t2,	280(sp)
	add		t0,	t1,	t2
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	lw		t1,	288(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.short_circuit_end_block_1
.short_circuit_else_body_block_1:
	li		t0,	0
	sw		t0,	292(sp)
	lw		t1,	292(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.short_circuit_end_block_1
.short_circuit_end_block_1:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	beqz	t1,	.normal_block_5
	j		.if_body_block_2
.while_condition_block_1:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	300(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	304(sp)
	lw		t1,	300(sp)
	lw		t2,	304(sp)
	mul		t0,	t1,	t2
	sw		t0,	308(sp)
	la		t0,	N_addr_1
	sw		t0,	312(sp)
	lw		t1,	312(sp)
	lw		t0,	0(t1)
	sw		t0,	316(sp)
	lw		t1,	308(sp)
	lw		t2,	316(sp)
	sgt		t0,	t1,	t2
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	seqz	t0,	t1,
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	beqz	t1,	.normal_block_6
	j		.while_body_block_1
.while_body_block_1:
	la		t0,	b_addr_1
	sw		t0,	324(sp)
	lw		t1,	324(sp)
	lw		t0,	0(t1)
	sw		t0,	328(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	332(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	336(sp)
	lw		t1,	332(sp)
	lw		t2,	336(sp)
	mul		t0,	t1,	t2
	sw		t0,	340(sp)
	li		t0,	4
	sw		t0,	344(sp)
	lw		t1,	344(sp)
	lw		t2,	340(sp)
	mul		t0,	t1,	t2
	sw		t0,	344(sp)
	lw		t1,	328(sp)
	lw		t2,	344(sp)
	add		t0,	t1,	t2
	sw		t0,	348(sp)
	li		t0,	0
	sw		t0,	352(sp)
	lw		t1,	352(sp)
	lw		t2,	348(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	356(sp)
	li		t0,	1
	sw		t0,	360(sp)
	lw		t1,	356(sp)
	lw		t2,	360(sp)
	add		t0,	t1,	t2
	sw		t0,	364(sp)
	lw		t1,	364(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.while_condition_block_1
.normal_block_6:
	j		.normal_block_4
.normal_block_7:
	j		.func_end_block_1
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_2:
	addi	sp,	sp,	-76
	sw		s0,	0(sp)
	addi	s0,	sp,	76
	sw		ra,	4(sp)
	j		.normal_block_8
.func_end_block_2:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	76
	ret
.normal_block_8:
	li		t0,	15000
	sw		t0,	8(sp)
	la		t0,	N_addr_1
	sw		t0,	12(sp)
	lw		t1,	8(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	li		t0,	15005
	sw		t0,	16(sp)
	lw		t1,	16(sp)
	mv		a0,	t1
	call	_heap_malloc_1
	mv		t0,	a0
	sw		t0,	20(sp)
	lw		t1,	20(sp)
	mv		t0,	t1
	sw		t0,	24(sp)
	li		t0,	15001
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	addi	t0,	t1,	4
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	mv		t0,	t1
	sw		t0,	36(sp)
	li		t0,	15005
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		a0,	t1
	call	_heap_malloc_1
	mv		t0,	a0
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		t0,	t1
	sw		t0,	48(sp)
	li		t0,	15001
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	lw		t1,	48(sp)
	addi	t0,	t1,	4
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	mv		t0,	t1
	sw		t0,	60(sp)
	la		t0,	b_addr_1
	sw		t0,	64(sp)
	lw		t1,	36(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	68(sp)
	la		t0,	resultCount_addr_1
	sw		t0,	72(sp)
	lw		t1,	68(sp)
	lw		t2,	72(sp)
	sw		t1,	0(t2)
	j		.func_end_block_2
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.globl	N_addr_1
	.type	N_addr_1,@object
N_addr_1:
	.word	0
	.size	N_addr_1,	4

	.globl	b_addr_1
	.type	b_addr_1,@object
b_addr_1:
	.word	0
	.size	b_addr_1,	4

	.globl	resultCount_addr_1
	.type	resultCount_addr_1,@object
resultCount_addr_1:
	.word	0
	.size	resultCount_addr_1,	4

	.section	.rodata
	.type	const_string_1,@object
const_string_1:
	.string	" "
	.size	const_string_1,	3

	.type	const_string_2,@object
const_string_2:
	.string	"Total: "
	.size	const_string_2,	9


