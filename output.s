	.section	.text
	.globl	f_loop_1
	.p2align	2
	.type	f_loop_1,@function
f_loop_1:
.func_begin_block_1:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_1:
	li		a3,	123
	li		a2,	234
	li		a4,	345
	li		a6,	456
	li		t2,	567
	li		a0,	678
	li		a7,	789
	li		t4,	0
	li		t1,	0
	li		t6,	0
	li		a1,	0
	li		t3,	0
	li		t4,	0
	j		.for_condition_block_1
.for_condition_block_1:
	li		t1,	100
	slt		t1,	t4,	t1
	beqz	t1,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	add		t1,	a3,	a4
	sub		t1,	t1,	t2
	sub		a2,	t1,	a7
	li		t1,	0
	j		.for_condition_block_2
.for_update_block_1:
	li		t1,	1
	add		t4,	t4,	t1
	j		.for_condition_block_1
.normal_block_2:
	li		t4,	0
	j		.for_condition_block_6
.for_condition_block_2:
	li		t6,	100
	slt		t6,	t1,	t6
	beqz	t6,	.normal_block_3
	j		.for_body_block_2
.for_body_block_2:
	add		t6,	a2,	a6
	sub		t6,	t6,	a0
	sub		a4,	t6,	a3
	li		t6,	0
	j		.for_condition_block_3
.for_update_block_2:
	li		t6,	1
	add		t1,	t1,	t6
	j		.for_condition_block_2
.normal_block_3:
	j		.for_update_block_1
.for_condition_block_3:
	li		t3,	100
	slt		t3,	t6,	t3
	beqz	t3,	.normal_block_4
	j		.for_body_block_3
.for_body_block_3:
	add		a6,	a4,	t2
	sub		a6,	a6,	a7
	sub		a6,	a6,	a2
	li		a1,	0
	j		.for_condition_block_4
.for_update_block_3:
	li		t3,	1
	add		t6,	t6,	t3
	j		.for_condition_block_3
.normal_block_4:
	j		.for_update_block_2
.for_condition_block_4:
	li		t3,	10
	slt		t3,	a1,	t3
	beqz	t3,	.normal_block_5
	j		.for_body_block_4
.for_body_block_4:
	add		t2,	a6,	a0
	sub		t2,	t2,	a3
	sub		t2,	t2,	a4
	li		t3,	0
	j		.for_condition_block_5
.for_update_block_4:
	li		t3,	1
	add		a1,	a1,	t3
	j		.for_condition_block_4
.normal_block_5:
	j		.for_update_block_3
.for_condition_block_5:
	li		t5,	10
	slt		t5,	t3,	t5
	beqz	t5,	.normal_block_6
	j		.for_body_block_5
.for_body_block_5:
	add		a0,	t2,	a7
	sub		a0,	a0,	a2
	sub		a0,	a0,	a6
	j		.for_update_block_5
.for_update_block_5:
	li		t5,	1
	add		t3,	t3,	t5
	j		.for_condition_block_5
.normal_block_6:
	j		.for_update_block_4
.for_condition_block_6:
	li		t1,	10
	slt		t1,	t4,	t1
	beqz	t1,	.normal_block_7
	j		.for_body_block_6
.for_body_block_6:
	li		t1,	0
	j		.for_condition_block_7
.for_update_block_6:
	li		t1,	1
	add		t4,	t4,	t1
	j		.for_condition_block_6
.normal_block_7:
	j		.func_end_block_1
.for_condition_block_7:
	li		a6,	10
	slt		a6,	t1,	a6
	beqz	a6,	.normal_block_8
	j		.for_body_block_7
.for_body_block_7:
	li		t6,	0
	j		.for_condition_block_8
.for_update_block_7:
	li		a6,	1
	add		t1,	t1,	a6
	j		.for_condition_block_7
.normal_block_8:
	j		.for_update_block_6
.for_condition_block_8:
	li		a6,	10
	slt		a6,	t6,	a6
	beqz	a6,	.normal_block_9
	j		.for_body_block_8
.for_body_block_8:
	add		a6,	a4,	t2
	add		a6,	a6,	a7
	add		a6,	a6,	a2
	li		a1,	0
	j		.for_condition_block_9
.for_update_block_8:
	li		a6,	1
	add		t6,	t6,	a6
	j		.for_condition_block_8
.normal_block_9:
	j		.for_update_block_7
.for_condition_block_9:
	li		t3,	10
	slt		t3,	a1,	t3
	beqz	t3,	.normal_block_10
	j		.for_body_block_9
.for_body_block_9:
	add		t2,	a6,	a0
	add		t2,	t2,	a3
	add		t2,	t2,	a4
	j		.for_update_block_9
.for_update_block_9:
	li		t3,	1
	add		a1,	a1,	t3
	j		.for_condition_block_9
.normal_block_10:
	li		t3,	0
	j		.for_condition_block_10
.for_condition_block_10:
	li		a1,	10
	slt		a1,	t3,	a1
	beqz	a1,	.normal_block_11
	j		.for_body_block_10
.for_body_block_10:
	add		a0,	t2,	a7
	add		a0,	a0,	a2
	add		a0,	a0,	a6
	j		.for_update_block_10
.for_update_block_10:
	li		a1,	1
	add		t3,	t3,	a1
	j		.for_condition_block_10
.normal_block_11:
	j		.for_update_block_8
.normal_block_12:
	j		.func_end_block_1
	.size	f_loop_1,	.-f_loop_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-12
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		ra,	4(sp)
	j		.normal_block_13
.func_end_block_2:
	lw		a0,	8(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
	ret
.normal_block_13:
	call	_main_initial_1
	call	f_loop_1
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
	j		.normal_block_14
.func_end_block_3:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_14:
	j		.func_end_block_3
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata

