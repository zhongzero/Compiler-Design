	.section	.text
	.globl	f_compute_1
	.p2align	2
	.type	f_compute_1,@function
f_compute_1:
.func_begin_block_1:
	addi	sp,	sp,	-68
	sw		s0,	0(sp)
	addi	s0,	sp,	68
	sw		ra,	4(sp)
	sw		s1,	8(sp)
	sw		s2,	12(sp)
	sw		s3,	16(sp)
	sw		s4,	20(sp)
	sw		s5,	24(sp)
	sw		s6,	28(sp)
	sw		s7,	32(sp)
	sw		s8,	36(sp)
	sw		s9,	40(sp)
	sw		s10,	44(sp)
	sw		s11,	48(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		s1,	8(sp)
	lw		s2,	12(sp)
	lw		s3,	16(sp)
	lw		s4,	20(sp)
	lw		s5,	24(sp)
	lw		s6,	28(sp)
	lw		s7,	32(sp)
	lw		s8,	36(sp)
	lw		s9,	40(sp)
	lw		s10,	44(sp)
	lw		s11,	48(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	68
	ret
.normal_block_1:
	mv		s1,	a0
	li		s9,	1
	add		a6,	a0,	s9
	li		s9,	2
	add		t1,	a0,	s9
	li		s9,	3
	add		a4,	a0,	s9
	li		s9,	4
	add		s8,	a0,	s9
	li		s9,	5
	add		s9,	a0,	s9
	sw		s9,	52(sp)
	li		s9,	6
	add		t4,	a0,	s9
	li		s9,	7
	add		t5,	a0,	s9
	li		s9,	8
	add		a2,	a0,	s9
	li		s9,	9
	add		t6,	a0,	s9
	li		s9,	10
	add		s9,	a0,	s9
	sw		s9,	56(sp)
	li		s9,	11
	add		t3,	a0,	s9
	li		s9,	12
	add		s11,	a0,	s9
	li		s9,	13
	add		s4,	a0,	s9
	li		s9,	14
	add		t2,	a0,	s9
	li		s9,	15
	add		s9,	a0,	s9
	li		s3,	16
	add		s6,	a0,	s3
	li		s3,	17
	add		s2,	a0,	s3
	li		s3,	18
	add		a3,	a0,	s3
	li		s3,	19
	add		a1,	a0,	s3
	li		s3,	20
	add		a5,	a0,	s3
	li		s3,	21
	add		s3,	a0,	s3
	li		a7,	22
	add		a7,	a0,	a7
	sw		a7,	60(sp)
	li		a7,	23
	add		a7,	a0,	a7
	li		s10,	24
	add		s10,	a0,	s10
	sw		s10,	64(sp)
	li		a0,	0
	li		s10,	0
	li		s10,	0
	j		.for_condition_block_1
.for_condition_block_1:
	li		s5,	50
	slt		s5,	s10,	s5
	beqz	s5,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	add		a0,	a0,	s1
	add		a0,	a0,	a6
	add		a0,	a0,	t1
	add		a0,	a0,	a4
	add		s5,	a0,	s8
	lw		a0,	52(sp)
	add		a0,	s5,	a0
	add		a0,	a0,	t4
	add		a0,	a0,	t5
	add		a0,	a0,	a2
	add		s5,	a0,	t6
	lw		a0,	56(sp)
	add		a0,	s5,	a0
	add		a0,	a0,	t3
	add		a0,	a0,	s11
	add		a0,	a0,	s4
	add		a0,	a0,	t2
	add		a0,	a0,	s9
	add		a0,	a0,	s6
	add		a0,	a0,	s2
	add		a0,	a0,	a3
	add		a0,	a0,	a1
	add		a0,	a0,	a5
	add		s5,	a0,	s3
	lw		a0,	60(sp)
	add		a0,	s5,	a0
	add		s5,	a0,	a7
	lw		a0,	64(sp)
	add		a0,	s5,	a0
	add		a0,	a0,	s10
	li		s5,	1000000
	slt		s5,	a0,	s5
	seqz	s5,	s5,
	beqz	s5,	.normal_block_3
	j		.if_body_block_1
.for_update_block_1:
	li		s5,	1
	add		s10,	s10,	s5
	j		.for_condition_block_1
.normal_block_2:
	j		.func_end_block_1
.if_body_block_1:
	li		s5,	1000000
	sub		a0,	a0,	s5
	j		.normal_block_3
.normal_block_3:
	j		.for_update_block_1
.normal_block_4:
	j		.func_end_block_1
	.size	f_compute_1,	.-f_compute_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-16
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		ra,	4(sp)
	sw		s2,	8(sp)
	sw		s8,	12(sp)
	j		.normal_block_5
.func_end_block_2:
	lw		s2,	8(sp)
	lw		s8,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
.normal_block_5:
	call	_main_initial_1
	li		s2,	0
	li		s8,	0
	li		s8,	0
	j		.for_condition_block_2
.for_condition_block_2:
	la		a4,	NUM_ITERATIONS_addr_1
	lw		a4,	0(a4)
	slt		a4,	s8,	a4
	beqz	a4,	.normal_block_6
	j		.for_body_block_2
.for_body_block_2:
	mv		a0,	s8
	call	f_compute_1
	add		s2,	s2,	a0
	j		.for_update_block_2
.for_update_block_2:
	li		a4,	1
	add		s8,	s8,	a4
	j		.for_condition_block_2
.normal_block_6:
	mv		a0,	s2
	call	f_printInt_1
	li		a0,	0
	j		.func_end_block_2
.normal_block_7:
	j		.func_end_block_2
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_3:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	j		.normal_block_8
.func_end_block_3:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_8:
	li		t4,	500000
	la		a4,	NUM_ITERATIONS_addr_1
	sw		t4,	0(a4)
	j		.func_end_block_3
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.globl	NUM_ITERATIONS_addr_1
	.type	NUM_ITERATIONS_addr_1,@object
NUM_ITERATIONS_addr_1:
	.word	0
	.size	NUM_ITERATIONS_addr_1,	4

	.section	.rodata

