	.section	.text
	.globl	f_test_foo_1
	.p2align	2
	.type	f_test_foo_1,@function
f_test_foo_1:
.func_begin_block_1:
	addi	sp,	sp,	-20
	sw		s0,	0(sp)
	addi	s0,	sp,	20
	sw		ra,	4(sp)
	sw		s2,	8(sp)
	sw		s6,	12(sp)
	sw		s10,	16(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		s2,	8(sp)
	lw		s6,	12(sp)
	lw		s10,	16(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	20
	ret
.normal_block_1:
	li		a6,	0
	li		a7,	0
	li		a5,	0
	li		s2,	0
	mv		a4,	s2
	li		t5,	0
	li		t2,	0
	li		s2,	0
	li		t4,	0
	li		a2,	0
	li		a2,	0
	li		a2,	0
	li		a3,	0
	li		t1,	0
	li		t6,	0
	li		t1,	0
	li		t3,	0
	li		s10,	0
	li		s6,	0
	li		t3,	0
	li		s10,	0
	j		.for_condition_block_1
.for_condition_block_1:
	mv		t3,	s10
	slt		t3,	t3,	a0
	beqz	t3,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	li		s6,	0
	j		.for_condition_block_2
.for_update_block_1:
	li		t3,	1
	add		s10,	s10,	t3
	j		.for_condition_block_1
.normal_block_2:
	mv		a0,	a6
	j		.func_end_block_1
.for_condition_block_2:
	slt		t3,	s6,	a0
	beqz	t3,	.normal_block_3
	j		.for_body_block_2
.for_body_block_2:
	li		t3,	0
	j		.for_condition_block_3
.for_update_block_2:
	li		t3,	1
	add		s6,	s6,	t3
	j		.for_condition_block_2
.normal_block_3:
	j		.for_update_block_1
.for_condition_block_3:
	slt		t6,	t3,	a0
	beqz	t6,	.normal_block_4
	j		.for_body_block_3
.for_body_block_3:
	li		t6,	0
	j		.for_condition_block_4
.for_update_block_3:
	li		t6,	1
	add		t3,	t3,	t6
	j		.for_condition_block_3
.normal_block_4:
	j		.for_update_block_2
.for_condition_block_4:
	slt		a1,	t6,	a0
	beqz	a1,	.normal_block_5
	j		.for_body_block_4
.for_body_block_4:
	li		a1,	1
	add		a6,	a6,	a1
	li		a1,	1000000
	sgt		a1,	a6,	a1
	beqz	a1,	.normal_block_6
	j		.if_body_block_1
.for_update_block_4:
	li		a1,	1
	add		t6,	t6,	a1
	j		.for_condition_block_4
.normal_block_5:
	j		.for_update_block_3
.if_body_block_1:
	li		a1,	1000000
	sub		a6,	a6,	a1
	j		.normal_block_6
.normal_block_6:
	li		a1,	1000000
	sgt		a1,	s2,	a1
	beqz	a1,	.normal_block_7
	j		.if_body_block_2
.if_body_block_2:
	li		a1,	1000000
	sub		s2,	s2,	a1
	j		.normal_block_7
.normal_block_7:
	mv		s2,	a7
	li		a1,	1000000
	sgt		s2,	s2,	a1
	beqz	s2,	.normal_block_8
	j		.if_body_block_3
.if_body_block_3:
	li		s2,	1000000
	sub		a7,	a7,	s2
	j		.normal_block_8
.normal_block_8:
	li		s2,	1000000
	sgt		s2,	a5,	s2
	beqz	s2,	.normal_block_9
	j		.if_body_block_4
.if_body_block_4:
	li		s2,	1000000
	sub		a5,	a5,	s2
	j		.normal_block_9
.normal_block_9:
	li		s2,	1000000
	sgt		s2,	t2,	s2
	beqz	s2,	.normal_block_10
	j		.if_body_block_5
.if_body_block_5:
	mv		s2,	t2
	li		t2,	1000000
	sub		t2,	s2,	t2
	j		.normal_block_10
.normal_block_10:
	li		s2,	2
	add		a7,	a7,	s2
	li		s2,	3
	sgt		s2,	a6,	s2
	beqz	s2,	.normal_block_11
	j		.if_body_block_6
.if_body_block_6:
	add		s2,	a5,	a6
	li		a5,	10
	sub		s2,	s2,	a5
	mv		a5,	s2
	j		.normal_block_11
.normal_block_11:
	li		s2,	1
	add		a5,	a5,	s2
	add		s2,	a5,	a6
	mv		t2,	s2
	mv		s2,	t2
	add		a4,	s2,	a4
	add		s2,	a6,	a7
	add		a1,	s2,	a5
	mv		s2,	a4
	add		s2,	a1,	s2
	add		s2,	s2,	t5
	add		s2,	s2,	t2
	li		a1,	10
	sgt		a1,	s2,	a1
	beqz	a1,	.else_body_block_7
	j		.if_body_block_7
.if_body_block_7:
	li		a1,	1
	add		t4,	t4,	a1
	li		a1,	1
	add		a3,	a3,	a1
	li		a1,	1
	add		t1,	t1,	a1
	j		.normal_block_12
.else_body_block_7:
	li		a1,	1
	add		a6,	a6,	a1
	li		a1,	1
	add		a3,	a3,	a1
	li		a1,	1
	add		a2,	a2,	a1
	j		.normal_block_12
.normal_block_12:
	j		.for_update_block_4
.normal_block_13:
	j		.func_end_block_1
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
	mv		t4,	s8
	sw		t4,	8(sp)
	j		.normal_block_14
.func_end_block_2:
	mv		a0,	s8
	lw		s8,	8(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
	ret
.normal_block_14:
	call	_main_initial_1
	li		a0,	60
	call	f_test_foo_1
	call	f_printInt_1
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
	j		.normal_block_15
.func_end_block_3:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_15:
	j		.func_end_block_3
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata

