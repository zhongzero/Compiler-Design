	.section	.text
	.globl	f_test_foo_1
	.p2align	2
	.type	f_test_foo_1,@function
f_test_foo_1:
.func_begin_block_1:
	addi	sp,	sp,	-24
	sw		s0,	0(sp)
	addi	s0,	sp,	24
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
	addi	sp,	sp,	24
	ret
.normal_block_1:
	li		s2,	0
	sw		s2,	20(sp)
	li		s2,	0
	li		t5,	0
	li		t6,	0
	li		t1,	0
	li		a4,	0
	li		t4,	0
	li		a5,	0
	li		a2,	0
	li		a2,	0
	li		a3,	0
	li		t2,	0
	li		a2,	0
	li		t3,	0
	li		s6,	0
	li		a2,	0
	li		s10,	0
	li		a2,	0
	li		a7,	0
	li		s10,	0
	j		.for_condition_block_1
.for_condition_block_1:
	slt		a2,	s10,	a0
	beqz	a2,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	li		a2,	0
	j		.for_condition_block_2
.for_update_block_1:
	li		a2,	1
	add		s10,	s10,	a2
	j		.for_condition_block_1
.normal_block_2:
	lw		a0,	20(sp)
	j		.func_end_block_1
.for_condition_block_2:
	slt		t3,	a2,	a0
	beqz	t3,	.normal_block_3
	j		.for_body_block_2
.for_body_block_2:
	li		a7,	0
	j		.for_condition_block_3
.for_update_block_2:
	li		t3,	1
	add		a2,	a2,	t3
	j		.for_condition_block_2
.normal_block_3:
	j		.for_update_block_1
.for_condition_block_3:
	slt		t3,	a7,	a0
	beqz	t3,	.normal_block_4
	j		.for_body_block_3
.for_body_block_3:
	li		t3,	0
	j		.for_condition_block_4
.for_update_block_3:
	li		t3,	1
	add		a7,	a7,	t3
	j		.for_condition_block_3
.normal_block_4:
	j		.for_update_block_2
.for_condition_block_4:
	slt		a6,	t3,	a0
	beqz	a6,	.normal_block_5
	j		.for_body_block_4
.for_body_block_4:
	lw		a6,	20(sp)
	li		a1,	1
	add		a6,	a6,	a1
	sw		a6,	20(sp)
	lw		a6,	20(sp)
	li		a1,	1000000
	sgt		a6,	a6,	a1
	beqz	a6,	.normal_block_6
	j		.if_body_block_1
.for_update_block_4:
	li		a6,	1
	add		t3,	t3,	a6
	j		.for_condition_block_4
.normal_block_5:
	j		.for_update_block_3
.if_body_block_1:
	lw		a6,	20(sp)
	li		a1,	1000000
	sub		a6,	a6,	a1
	sw		a6,	20(sp)
	j		.normal_block_6
.normal_block_6:
	li		a6,	1000000
	sgt		a6,	t4,	a6
	beqz	a6,	.normal_block_7
	j		.if_body_block_2
.if_body_block_2:
	li		a6,	1000000
	sub		t4,	t4,	a6
	j		.normal_block_7
.normal_block_7:
	li		t4,	1000000
	sgt		t4,	s2,	t4
	beqz	t4,	.normal_block_8
	j		.if_body_block_3
.if_body_block_3:
	li		t4,	1000000
	sub		s2,	s2,	t4
	j		.normal_block_8
.normal_block_8:
	li		t4,	1000000
	sgt		t4,	t5,	t4
	beqz	t4,	.normal_block_9
	j		.if_body_block_4
.if_body_block_4:
	li		t4,	1000000
	sub		t5,	t5,	t4
	j		.normal_block_9
.normal_block_9:
	li		t4,	1000000
	sgt		t4,	a4,	t4
	beqz	t4,	.normal_block_10
	j		.if_body_block_5
.if_body_block_5:
	li		t4,	1000000
	sub		a4,	a4,	t4
	j		.normal_block_10
.normal_block_10:
	li		t4,	2
	add		s2,	s2,	t4
	lw		t4,	20(sp)
	li		a4,	3
	sgt		t4,	t4,	a4
	beqz	t4,	.normal_block_11
	j		.if_body_block_6
.if_body_block_6:
	lw		t4,	20(sp)
	add		t4,	t5,	t4
	li		t5,	10
	sub		t5,	t4,	t5
	j		.normal_block_11
.normal_block_11:
	li		t4,	1
	add		t5,	t5,	t4
	lw		t4,	20(sp)
	add		a4,	t5,	t4
	add		t6,	a4,	t6
	lw		t4,	20(sp)
	add		t4,	t4,	s2
	add		t4,	t4,	t5
	add		t4,	t4,	t6
	add		t4,	t4,	t1
	add		t4,	t4,	a4
	li		a6,	10
	sgt		a6,	t4,	a6
	beqz	a6,	.else_body_block_7
	j		.if_body_block_7
.if_body_block_7:
	li		a6,	1
	add		a5,	a5,	a6
	li		a6,	1
	add		t2,	t2,	a6
	li		a6,	1
	add		s6,	s6,	a6
	j		.normal_block_12
.else_body_block_7:
	lw		a6,	20(sp)
	li		a1,	1
	add		a6,	a6,	a1
	sw		a6,	20(sp)
	li		a6,	1
	add		t2,	t2,	a6
	li		a6,	1
	add		a3,	a3,	a6
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

