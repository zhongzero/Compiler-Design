	.section	.text
	.globl	f_abs_1
	.p2align	2
	.type	f_abs_1,@function
f_abs_1:
.func_begin_block_1:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	mv		a4,	a0
	j		.normal_block_1
.func_end_block_1:
	mv		a0,	a4
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_1:
	li		t5,	0
	sgt		t5,	a4,	t5
	beqz	t5,	.normal_block_2
	j		.if_body_block_1
.if_body_block_1:
	j		.func_end_block_1
.normal_block_2:
	li		t5,	0
	sub		a4,	t5,	a4
	j		.func_end_block_1
.normal_block_3:
	j		.normal_block_2
.normal_block_4:
	j		.func_end_block_1
	.size	f_abs_1,	.-f_abs_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-12
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		ra,	4(sp)
	sw		s8,	8(sp)
	j		.normal_block_5
.func_end_block_2:
	mv		a0,	a4
	lw		s8,	8(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
	ret
.normal_block_5:
	call	_main_initial_1
	li		t5,	0
	la		a4,	i_addr_1
	sw		t5,	0(a4)
	j		.for_condition_block_1
.for_condition_block_1:
	la		a4,	i_addr_1
	lw		t5,	0(a4)
	li		a4,	5
	slt		a4,	t5,	a4
	beqz	a4,	.normal_block_6
	j		.for_body_block_1
.for_body_block_1:
	li		t5,	0
	la		a4,	j_addr_1
	sw		t5,	0(a4)
	j		.for_condition_block_2
.for_update_block_1:
	la		a4,	i_addr_1
	lw		t5,	0(a4)
	li		a4,	1
	add		t5,	t5,	a4
	la		a4,	i_addr_1
	sw		t5,	0(a4)
	j		.for_condition_block_1
.normal_block_6:
	la		a4,	r_addr_1
	lw		a4,	0(a4)
	li		t5,	2
	sub		a4,	t5,	a4
	mv		a0,	a4
	call	f_abs_1
	mv		s8,	a0
	la		a4,	c_addr_1
	lw		a4,	0(a4)
	li		t5,	2
	sub		a4,	t5,	a4
	mv		a0,	a4
	call	f_abs_1
	mv		a4,	a0
	add		a4,	s8,	a4
	mv		a0,	a4
	call	f_printInt_1
	li		a4,	0
	j		.func_end_block_2
.for_condition_block_2:
	la		a4,	j_addr_1
	lw		t5,	0(a4)
	li		a4,	5
	slt		a4,	t5,	a4
	beqz	a4,	.normal_block_7
	j		.for_body_block_2
.for_body_block_2:
	call	f_getInt_1
	mv		t5,	a0
	la		a4,	n_addr_1
	sw		t5,	0(a4)
	la		a4,	n_addr_1
	lw		a4,	0(a4)
	li		t5,	1
	xor		a4,	a4,	t5
	seqz	a4,	a4,
	beqz	a4,	.normal_block_8
	j		.if_body_block_2
.for_update_block_2:
	la		a4,	j_addr_1
	lw		a4,	0(a4)
	li		t5,	1
	add		a4,	a4,	t5
	la		t5,	j_addr_1
	sw		a4,	0(t5)
	j		.for_condition_block_2
.normal_block_7:
	j		.for_update_block_1
.if_body_block_2:
	la		a4,	i_addr_1
	lw		t5,	0(a4)
	la		a4,	r_addr_1
	sw		t5,	0(a4)
	la		a4,	j_addr_1
	lw		a4,	0(a4)
	la		t5,	c_addr_1
	sw		a4,	0(t5)
	j		.normal_block_8
.normal_block_8:
	j		.for_update_block_2
.normal_block_9:
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
	j		.normal_block_10
.func_end_block_3:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_10:
	j		.func_end_block_3
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.globl	n_addr_1
	.type	n_addr_1,@object
n_addr_1:
	.word	0
	.size	n_addr_1,	4

	.globl	r_addr_1
	.type	r_addr_1,@object
r_addr_1:
	.word	0
	.size	r_addr_1,	4

	.globl	c_addr_1
	.type	c_addr_1,@object
c_addr_1:
	.word	0
	.size	c_addr_1,	4

	.globl	i_addr_1
	.type	i_addr_1,@object
i_addr_1:
	.word	0
	.size	i_addr_1,	4

	.globl	j_addr_1
	.type	j_addr_1,@object
j_addr_1:
	.word	0
	.size	j_addr_1,	4

	.section	.rodata

