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
	li		t1,	123
	li		t6,	234
	li		t3,	345
	li		a6,	456
	li		a7,	567
	li		a0,	678
	li		a2,	789
	li		a3,	0
	li		t2,	0
	li		t4,	0
	li		a1,	0
	li		a4,	0
	li		a3,	0
	li		t2,	100
	slt		t2,	a3,	t2
	beqz	t2,	.normal_block_2
	add		t6,	t1,	t3
	sub		t6,	t6,	a7
	sub		t6,	t6,	a2
	li		t2,	0
	li		a4,	100
	slt		a4,	t2,	a4
	beqz	a4,	.normal_block_3
	add		a4,	t6,	a6
	sub		a4,	a4,	a0
	sub		t3,	a4,	t1
	li		t4,	0
	li		a4,	100
	slt		a4,	t4,	a4
	beqz	a4,	.normal_block_4
	add		a6,	t3,	a7
	sub		a6,	a6,	a2
	sub		a6,	a6,	t6
	li		a1,	0
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_5
	add		a4,	a6,	a0
	sub		a4,	a4,	t1
	sub		a7,	a4,	t3
	li		a4,	0
	li		t5,	10
	slt		t5,	a4,	t5
	beqz	t5,	.normal_block_6
	add		a0,	a7,	a2
	sub		a0,	a0,	t6
	sub		a0,	a0,	a6
	j		.for_update_block_5
.normal_block_2:
	li		a3,	0
	li		a6,	10
	slt		a6,	a3,	a6
	beqz	a6,	.normal_block_7
	li		t2,	0
	li		a6,	10
	slt		a6,	t2,	a6
	beqz	a6,	.normal_block_8
	li		t4,	0
	li		a6,	10
	slt		a6,	t4,	a6
	beqz	a6,	.normal_block_9
	add		a6,	t3,	a7
	add		a6,	a6,	a2
	add		a6,	a6,	t6
	li		a1,	0
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_10
	add		a4,	a6,	a0
	add		a4,	a4,	t1
	add		a7,	a4,	t3
	j		.for_update_block_9
.normal_block_3:
	addi	a3,	a3,	1
	li		t2,	100
	slt		t2,	a3,	t2
	beqz	t2,	.normal_block_2
	add		t6,	t1,	t3
	sub		t6,	t6,	a7
	sub		t6,	t6,	a2
	li		t2,	0
	li		a4,	100
	slt		a4,	t2,	a4
	beqz	a4,	.normal_block_3
	add		a4,	t6,	a6
	sub		a4,	a4,	a0
	sub		t3,	a4,	t1
	li		t4,	0
	li		a4,	100
	slt		a4,	t4,	a4
	beqz	a4,	.normal_block_4
	add		a6,	t3,	a7
	sub		a6,	a6,	a2
	sub		a6,	a6,	t6
	li		a1,	0
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_5
	add		a4,	a6,	a0
	sub		a4,	a4,	t1
	sub		a7,	a4,	t3
	li		a4,	0
	li		t5,	10
	slt		t5,	a4,	t5
	beqz	t5,	.normal_block_6
	add		a0,	a7,	a2
	sub		a0,	a0,	t6
	sub		a0,	a0,	a6
	j		.for_update_block_5
.normal_block_4:
	addi	t2,	t2,	1
	li		a4,	100
	slt		a4,	t2,	a4
	beqz	a4,	.normal_block_3
	add		a4,	t6,	a6
	sub		a4,	a4,	a0
	sub		t3,	a4,	t1
	li		t4,	0
	li		a4,	100
	slt		a4,	t4,	a4
	beqz	a4,	.normal_block_4
	add		a6,	t3,	a7
	sub		a6,	a6,	a2
	sub		a6,	a6,	t6
	li		a1,	0
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_5
	add		a4,	a6,	a0
	sub		a4,	a4,	t1
	sub		a7,	a4,	t3
	li		a4,	0
	li		t5,	10
	slt		t5,	a4,	t5
	beqz	t5,	.normal_block_6
	add		a0,	a7,	a2
	sub		a0,	a0,	t6
	sub		a0,	a0,	a6
	j		.for_update_block_5
.normal_block_5:
	addi	t4,	t4,	1
	li		a4,	100
	slt		a4,	t4,	a4
	beqz	a4,	.normal_block_4
	add		a6,	t3,	a7
	sub		a6,	a6,	a2
	sub		a6,	a6,	t6
	li		a1,	0
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_5
	add		a4,	a6,	a0
	sub		a4,	a4,	t1
	sub		a7,	a4,	t3
	li		a4,	0
	li		t5,	10
	slt		t5,	a4,	t5
	beqz	t5,	.normal_block_6
	add		a0,	a7,	a2
	sub		a0,	a0,	t6
	sub		a0,	a0,	a6
	j		.for_update_block_5
.for_update_block_5:
	addi	a4,	a4,	1
	li		t5,	10
	slt		t5,	a4,	t5
	beqz	t5,	.normal_block_6
	add		a0,	a7,	a2
	sub		a0,	a0,	t6
	sub		a0,	a0,	a6
	j		.for_update_block_5
.normal_block_6:
	addi	a1,	a1,	1
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_5
	add		a4,	a6,	a0
	sub		a4,	a4,	t1
	sub		a7,	a4,	t3
	li		a4,	0
	li		t5,	10
	slt		t5,	a4,	t5
	beqz	t5,	.normal_block_6
	add		a0,	a7,	a2
	sub		a0,	a0,	t6
	sub		a0,	a0,	a6
	j		.for_update_block_5
.normal_block_7:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_8:
	addi	a3,	a3,	1
	li		a6,	10
	slt		a6,	a3,	a6
	beqz	a6,	.normal_block_7
	li		t2,	0
	li		a6,	10
	slt		a6,	t2,	a6
	beqz	a6,	.normal_block_8
	li		t4,	0
	li		a6,	10
	slt		a6,	t4,	a6
	beqz	a6,	.normal_block_9
	add		a6,	t3,	a7
	add		a6,	a6,	a2
	add		a6,	a6,	t6
	li		a1,	0
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_10
	add		a4,	a6,	a0
	add		a4,	a4,	t1
	add		a7,	a4,	t3
	j		.for_update_block_9
.normal_block_9:
	addi	t2,	t2,	1
	li		a6,	10
	slt		a6,	t2,	a6
	beqz	a6,	.normal_block_8
	li		t4,	0
	li		a6,	10
	slt		a6,	t4,	a6
	beqz	a6,	.normal_block_9
	add		a6,	t3,	a7
	add		a6,	a6,	a2
	add		a6,	a6,	t6
	li		a1,	0
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_10
	add		a4,	a6,	a0
	add		a4,	a4,	t1
	add		a7,	a4,	t3
	j		.for_update_block_9
.for_update_block_9:
	addi	a1,	a1,	1
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_10
	add		a4,	a6,	a0
	add		a4,	a4,	t1
	add		a7,	a4,	t3
	j		.for_update_block_9
.normal_block_10:
	li		a4,	0
	li		a1,	10
	slt		a1,	a4,	a1
	beqz	a1,	.normal_block_11
	add		a0,	a7,	a2
	add		a0,	a0,	t6
	add		a0,	a0,	a6
	j		.for_update_block_10
.for_update_block_10:
	addi	a4,	a4,	1
	li		a1,	10
	slt		a1,	a4,	a1
	beqz	a1,	.normal_block_11
	add		a0,	a7,	a2
	add		a0,	a0,	t6
	add		a0,	a0,	a6
	j		.for_update_block_10
.normal_block_11:
	addi	t4,	t4,	1
	li		a6,	10
	slt		a6,	t4,	a6
	beqz	a6,	.normal_block_9
	add		a6,	t3,	a7
	add		a6,	a6,	a2
	add		a6,	a6,	t6
	li		a1,	0
	li		a4,	10
	slt		a4,	a1,	a4
	beqz	a4,	.normal_block_10
	add		a4,	a6,	a0
	add		a4,	a4,	t1
	add		a7,	a4,	t3
	j		.for_update_block_9
.normal_block_12:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
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
	call	_main_initial_1
	call	f_loop_1
	call	f_printInt_1
	lw		a0,	8(sp)
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

