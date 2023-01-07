	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_1:
	addi	sp,	sp,	-160
	sw		s0,	0(sp)
	addi	s0,	sp,	160
	sw		ra,	4(sp)
	addi	t0,	sp,	8
	sw		t0,	20(sp)
	addi	t0,	sp,	12
	sw		t0,	24(sp)
	addi	t0,	sp,	16
	sw		t0,	28(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	mv		a0,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	160
	ret
.normal_block_1:
	call	_main_initial_1
	li		t0,	1
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	la		t0,	N_addr_1
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	lw		t0,	0(t1)
	sw		t0,	48(sp)
	lw		t1,	40(sp)
	lw		t2,	48(sp)
	sgt		t0,	t1,	t2
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	seqz	t0,	t1,
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	beqz	t1,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	la		t0,	b_addr_1
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	li		t0,	4
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t2,	64(sp)
	mul		t0,	t1,	t2
	sw		t0,	68(sp)
	lw		t1,	60(sp)
	lw		t2,	68(sp)
	add		t0,	t1,	t2
	sw		t0,	72(sp)
	li		t0,	1
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t2,	72(sp)
	sw		t1,	0(t2)
	j		.for_update_block_1
.for_update_block_1:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	li		t0,	1
	sw		t0,	84(sp)
	lw		t1,	80(sp)
	lw		t2,	84(sp)
	add		t0,	t1,	t2
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_1
.normal_block_2:
	li		t0,	2
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_2
.for_condition_block_2:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	la		t0,	N_addr_1
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	96(sp)
	lw		t2,	104(sp)
	sgt		t0,	t1,	t2
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	seqz	t0,	t1,
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	beqz	t1,	.normal_block_3
	j		.for_body_block_2
.for_body_block_2:
	la		t0,	b_addr_1
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	li		t0,	4
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	lw		t2,	120(sp)
	mul		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	116(sp)
	lw		t2,	124(sp)
	add		t0,	t1,	t2
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	beqz	t1,	.normal_block_4
	j		.if_body_block_1
.for_update_block_2:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	li		t0,	1
	sw		t0,	140(sp)
	lw		t1,	136(sp)
	lw		t2,	140(sp)
	add		t0,	t1,	t2
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_2
.normal_block_3:
	li		t0,	0
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	j		.func_end_block_1
.if_body_block_1:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	mv		a0,	t1
	call	f_println_1
	j		.normal_block_4
.normal_block_4:
	j		.for_update_block_2
.normal_block_5:
	j		.func_end_block_1
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_2:
	addi	sp,	sp,	-68
	sw		s0,	0(sp)
	addi	s0,	sp,	68
	sw		ra,	4(sp)
	j		.normal_block_6
.func_end_block_2:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	68
	ret
.normal_block_6:
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

	.globl	GGGG_addr_1
	.type	GGGG_addr_1,@object
GGGG_addr_1:
	.word	0
	.size	GGGG_addr_1,	4

	.section	.rodata

