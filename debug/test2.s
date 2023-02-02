	.section	.text
	.globl	f_compute_1
	.p2align	2
	.type	f_compute_1,@function
f_compute_1:
.func_begin_block_1:
	addi	sp,	sp,	-64
	sw		s0,	0(sp)
	addi	s0,	sp,	64
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
.normal_block_1:
	mv		t5,	a0
	addi	s1,	a0,	1
	addi	a1,	a0,	2
	addi	t1,	a0,	3
	addi	s9,	a0,	4
	addi	s3,	a0,	5
	sw		s3,	52(sp)
	addi	t6,	a0,	6
	addi	s10,	a0,	7
	addi	a7,	a0,	8
	addi	s4,	a0,	9
	addi	s3,	a0,	10
	sw		s3,	56(sp)
	addi	s6,	a0,	11
	addi	s3,	a0,	12
	addi	s11,	a0,	13
	addi	t4,	a0,	14
	addi	a4,	a0,	15
	addi	t2,	a0,	16
	addi	s2,	a0,	17
	addi	a5,	a0,	18
	addi	a2,	a0,	19
	addi	a6,	a0,	20
	addi	s8,	a0,	21
	addi	t3,	a0,	22
	sw		t3,	60(sp)
	addi	s5,	a0,	23
	addi	a3,	a0,	24
	li		a0,	0
	li		t3,	0
	li		t3,	0
	li		s7,	50
	slt		s7,	t3,	s7
	beqz	s7,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	add		a0,	a0,	t5
	add		a0,	a0,	s1
	add		a0,	a0,	a1
	add		a0,	a0,	t1
	add		s7,	a0,	s9
	lw		a0,	52(sp)
	add		a0,	s7,	a0
	add		a0,	a0,	t6
	add		a0,	a0,	s10
	add		a0,	a0,	a7
	add		a0,	a0,	s4
	lw		s7,	56(sp)
	add		a0,	a0,	s7
	add		a0,	a0,	s6
	add		a0,	a0,	s3
	add		a0,	a0,	s11
	add		a0,	a0,	t4
	add		a0,	a0,	a4
	add		a0,	a0,	t2
	add		a0,	a0,	s2
	add		a0,	a0,	a5
	add		a0,	a0,	a2
	add		a0,	a0,	a6
	add		s7,	a0,	s8
	lw		a0,	60(sp)
	add		s7,	s7,	a0
	mv		a0,	s5
	add		s7,	s7,	a0
	mv		a0,	a3
	add		a0,	s7,	a0
	add		a0,	a0,	t3
	li		s7,	1000000
	slt		s7,	a0,	s7
	seqz	s7,	s7,
	beqz	s7,	.normal_block_3
	li		s7,	1000000
	sub		a0,	a0,	s7
	j		.normal_block_3
.normal_block_2:
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
	addi	sp,	sp,	64
	ret
.normal_block_3:
	addi	t3,	t3,	1
	li		s7,	50
	slt		s7,	t3,	s7
	beqz	s7,	.normal_block_2
	j		.for_body_block_1
.normal_block_4:
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
	addi	sp,	sp,	64
	ret
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
	call	_main_initial_1
	li		a0,	0
	li		s8,	0
	li		s8,	0
	la		a4,	NUM_ITERATIONS_addr_1
	lw		a4,	0(a4)
	slt		a4,	s8,	a4
	beqz	a4,	.normal_block_6
	mv		s2,	a0
	mv		a0,	s8
	call	f_compute_1
	add		a0,	s2,	a0
	j		.for_update_block_2
.for_update_block_2:
	addi	s8,	s8,	1
	la		a4,	NUM_ITERATIONS_addr_1
	lw		a4,	0(a4)
	slt		a4,	s8,	a4
	beqz	a4,	.normal_block_6
	mv		s2,	a0
	mv		a0,	s8
	call	f_compute_1
	add		a0,	s2,	a0
	j		.for_update_block_2
.normal_block_6:
	call	f_printInt_1
	li		a0,	0
	lw		s2,	8(sp)
	lw		s8,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
.normal_block_7:
	lw		s2,	8(sp)
	lw		s8,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
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
	li		t4,	500000
	la		a4,	NUM_ITERATIONS_addr_1
	sw		t4,	0(a4)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.globl	NUM_ITERATIONS_addr_1
	.type	NUM_ITERATIONS_addr_1,@object
NUM_ITERATIONS_addr_1:
	.word	0
	.size	NUM_ITERATIONS_addr_1,	4

	.section	.rodata

