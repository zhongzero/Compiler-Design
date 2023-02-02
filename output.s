	.section	.text
	.globl	f_test_foo_1
	.p2align	2
	.type	f_test_foo_1,@function
f_test_foo_1:
.func_begin_block_1:
	addi	sp,	sp,	-16
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		ra,	4(sp)
	sw		s1,	8(sp)
	sw		s6,	12(sp)
	j		.normal_block_1
.normal_block_1:
	li		t3,	0
	li		a1,	0
	li		a6,	0
	li		a4,	0
	mv		a2,	a4
	li		t4,	0
	li		t0,	0
	li		t5,	0
	li		a4,	0
	li		s1,	0
	li		s1,	0
	li		a3,	0
	li		s1,	0
	li		t1,	0
	li		a7,	0
	li		t1,	0
	li		a7,	0
	li		a5,	0
	li		t2,	0
	li		a7,	0
	mv		s6,	a7
	li		a5,	0
	mv		a7,	a5
	slt		a7,	a7,	a0
	beqz	a7,	.normal_block_2
	li		t2,	0
	slt		a7,	t2,	a0
	beqz	a7,	.normal_block_3
	li		a7,	0
	mv		s6,	a7
	slt		a7,	s6,	a0
	beqz	a7,	.normal_block_4
	li		a7,	0
	slt		t6,	a7,	a0
	beqz	t6,	.normal_block_5
	addi	t3,	t3,	1
	li		t6,	1000000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_6
	li		t6,	1000000
	sub		t3,	t3,	t6
	j		.normal_block_6
.normal_block_2:
	mv		a0,	t3
	lw		s1,	8(sp)
	lw		s6,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
.normal_block_3:
	addi	a5,	a5,	1
	mv		a7,	a5
	slt		a7,	a7,	a0
	beqz	a7,	.normal_block_2
	li		t2,	0
	slt		a7,	t2,	a0
	beqz	a7,	.normal_block_3
	li		a7,	0
	mv		s6,	a7
	slt		a7,	s6,	a0
	beqz	a7,	.normal_block_4
	li		a7,	0
	slt		t6,	a7,	a0
	beqz	t6,	.normal_block_5
	addi	t3,	t3,	1
	li		t6,	1000000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_6
	li		t6,	1000000
	sub		t3,	t3,	t6
	j		.normal_block_6
.normal_block_4:
	addi	t2,	t2,	1
	slt		a7,	t2,	a0
	beqz	a7,	.normal_block_3
	li		a7,	0
	mv		s6,	a7
	slt		a7,	s6,	a0
	beqz	a7,	.normal_block_4
	li		a7,	0
	slt		t6,	a7,	a0
	beqz	t6,	.normal_block_5
	addi	t3,	t3,	1
	li		t6,	1000000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_6
	li		t6,	1000000
	sub		t3,	t3,	t6
	j		.normal_block_6
.normal_block_5:
	mv		a7,	s6
	addi	s6,	a7,	1
	slt		a7,	s6,	a0
	beqz	a7,	.normal_block_4
	li		a7,	0
	slt		t6,	a7,	a0
	beqz	t6,	.normal_block_5
	addi	t3,	t3,	1
	li		t6,	1000000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_6
	li		t6,	1000000
	sub		t3,	t3,	t6
	j		.normal_block_6
.normal_block_6:
	li		t6,	1000000
	sgt		t6,	t5,	t6
	beqz	t6,	.normal_block_7
	li		t6,	1000000
	sub		t5,	t5,	t6
	j		.normal_block_7
.normal_block_7:
	li		t5,	1000000
	sgt		t5,	a1,	t5
	beqz	t5,	.normal_block_8
	li		t5,	1000000
	sub		a1,	a1,	t5
	j		.normal_block_8
.normal_block_8:
	li		t5,	1000000
	sgt		t5,	a6,	t5
	beqz	t5,	.normal_block_9
	li		t5,	1000000
	sub		a6,	a6,	t5
	j		.normal_block_9
.normal_block_9:
	li		t5,	1000000
	sgt		t5,	t0,	t5
	beqz	t5,	.normal_block_10
	li		t5,	1000000
	sub		t0,	t0,	t5
	j		.normal_block_10
.normal_block_10:
	addi	a1,	a1,	2
	li		t0,	3
	sgt		t0,	t3,	t0
	beqz	t0,	.normal_block_11
	add		t0,	a6,	t3
	addi	t0,	t0,	10
	mv		a6,	t0
	j		.normal_block_11
.normal_block_11:
	addi	a6,	a6,	1
	add		t0,	a6,	t3
	add		a2,	t0,	a2
	add		t5,	t3,	a1
	add		t5,	t5,	a6
	add		t5,	t5,	a2
	add		t5,	t5,	t4
	add		t5,	t5,	t0
	li		t6,	10
	sgt		t6,	t5,	t6
	beqz	t6,	.else_body_block_7
	addi	a4,	a4,	1
	addi	s1,	s1,	1
	addi	t1,	t1,	1
	addi	a7,	a7,	1
	slt		t6,	a7,	a0
	beqz	t6,	.normal_block_5
	addi	t3,	t3,	1
	li		t6,	1000000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_6
	li		t6,	1000000
	sub		t3,	t3,	t6
	j		.normal_block_6
.else_body_block_7:
	addi	t3,	t3,	1
	addi	s1,	s1,	1
	addi	a3,	a3,	1
	addi	a7,	a7,	1
	slt		t6,	a7,	a0
	beqz	t6,	.normal_block_5
	addi	t3,	t3,	1
	li		t6,	1000000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_6
	li		t6,	1000000
	sub		t3,	t3,	t6
	j		.normal_block_6
.normal_block_13:
	lw		s1,	8(sp)
	lw		s6,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
	.size	f_test_foo_1,	.-f_test_foo_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-12
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		ra,	4(sp)
	mv		t3,	s8
	sw		t3,	8(sp)
	call	_main_initial_1
	li		a0,	60
	call	f_test_foo_1
	call	f_printInt_1
	mv		a0,	s8
	lw		s8,	8(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
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
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata

