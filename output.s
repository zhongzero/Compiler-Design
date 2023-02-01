	.section	.text
	.globl	f_loop_1
	.p2align	2
	.type	f_loop_1,@function
f_loop_1:
.func_begin_block_1:
	addi	sp,	sp,	-16
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		ra,	4(sp)
	sw		s9,	12(sp)
	addi	s9,	sp,	8
	j		.normal_block_1
.func_end_block_1:
	mv		a0,	a4
	lw		s9,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
.normal_block_1:
	li		a5,	40004
	mv		a0,	a5
	call	_heap_malloc_1
	mv		a5,	a0
	li		t6,	10000
	sw		t6,	0(a5)
	addi	a5,	a5,	4
	sw		a5,	0(s9)
	li		t4,	0
	j		.for_condition_block_1
.for_condition_block_1:
	li		a5,	10
	slt		a5,	t4,	a5
	beqz	a5,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	li		a5,	0
	j		.for_condition_block_2
.for_update_block_1:
	li		a5,	1
	add		t4,	t4,	a5
	j		.for_condition_block_1
.normal_block_2:
	li		a4,	0
	li		t4,	0
	j		.for_condition_block_5
.for_condition_block_2:
	li		t6,	10
	slt		t6,	a5,	t6
	beqz	t6,	.normal_block_3
	j		.for_body_block_2
.for_body_block_2:
	li		a2,	0
	j		.for_condition_block_3
.for_update_block_2:
	li		t6,	1
	add		a5,	a5,	t6
	j		.for_condition_block_2
.normal_block_3:
	j		.for_update_block_1
.for_condition_block_3:
	li		t6,	10
	slt		t6,	a2,	t6
	beqz	t6,	.normal_block_4
	j		.for_body_block_3
.for_body_block_3:
	li		t6,	0
	j		.for_condition_block_4
.for_update_block_3:
	li		t6,	1
	add		a2,	a2,	t6
	j		.for_condition_block_3
.normal_block_4:
	j		.for_update_block_2
.for_condition_block_4:
	li		a4,	10
	slt		a4,	t6,	a4
	beqz	a4,	.normal_block_5
	j		.for_body_block_4
.for_body_block_4:
	lw		t3,	0(s9)
	li		a4,	1000
	mul		a7,	t4,	a4
	li		a4,	100
	mul		a4,	a5,	a4
	add		a7,	a7,	a4
	li		a4,	10
	mul		a4,	a2,	a4
	add		a4,	a7,	a4
	add		a7,	a4,	t6
	li		a4,	4
	mul		a4,	a4,	a7
	add		a4,	t3,	a4
	add		t3,	t4,	t6
	sw		t3,	0(a4)
	lw		t3,	0(s9)
	li		a4,	10
	mul		a4,	t4,	a4
	li		a7,	5
	mul		a7,	a5,	a7
	add		a4,	a4,	a7
	li		a7,	4
	mul		a7,	a7,	a4
	add		t2,	t3,	a7
	lw		a4,	0(s9)
	li		t3,	10
	mul		a7,	t4,	t3
	li		t3,	5
	mul		t3,	a5,	t3
	add		a7,	a7,	t3
	li		t3,	4
	mul		t3,	t3,	a7
	add		a4,	a4,	t3
	lw		a4,	0(a4)
	sw		a4,	0(t2)
	j		.for_update_block_4
.for_update_block_4:
	li		a4,	1
	add		t6,	t6,	a4
	j		.for_condition_block_4
.normal_block_5:
	j		.for_update_block_3
.for_condition_block_5:
	li		a5,	10
	slt		a5,	t4,	a5
	beqz	a5,	.normal_block_6
	j		.for_body_block_5
.for_body_block_5:
	li		a5,	0
	j		.for_condition_block_6
.for_update_block_5:
	li		a5,	1
	add		t4,	t4,	a5
	j		.for_condition_block_5
.normal_block_6:
	j		.func_end_block_1
.for_condition_block_6:
	li		t6,	10
	slt		t6,	a5,	t6
	beqz	t6,	.normal_block_7
	j		.for_body_block_6
.for_body_block_6:
	li		a2,	0
	j		.for_condition_block_7
.for_update_block_6:
	li		t6,	1
	add		a5,	a5,	t6
	j		.for_condition_block_6
.normal_block_7:
	j		.for_update_block_5
.for_condition_block_7:
	li		t6,	10
	slt		t6,	a2,	t6
	beqz	t6,	.normal_block_8
	j		.for_body_block_7
.for_body_block_7:
	li		t6,	0
	j		.for_condition_block_8
.for_update_block_7:
	li		t6,	1
	add		a2,	a2,	t6
	j		.for_condition_block_7
.normal_block_8:
	j		.for_update_block_6
.for_condition_block_8:
	li		t3,	10
	slt		t3,	t6,	t3
	beqz	t3,	.normal_block_9
	j		.for_body_block_8
.for_body_block_8:
	li		t3,	1
	and		t3,	t6,	t3
	li		a7,	1
	xor		t3,	t3,	a7
	seqz	t3,	t3,
	beqz	t3,	.else_body_block_1
	j		.if_body_block_1
.for_update_block_8:
	li		t3,	1
	add		t6,	t6,	t3
	j		.for_condition_block_8
.normal_block_9:
	j		.for_update_block_7
.if_body_block_1:
	lw		a7,	0(s9)
	li		t3,	1000
	mul		t2,	t4,	t3
	li		t3,	100
	mul		t3,	a5,	t3
	add		t2,	t2,	t3
	li		t3,	10
	mul		t3,	a2,	t3
	add		t3,	t2,	t3
	add		t2,	t3,	t6
	li		t3,	4
	mul		t3,	t3,	t2
	add		t3,	a7,	t3
	lw		t3,	0(t3)
	add		a4,	a4,	t3
	j		.normal_block_10
.else_body_block_1:
	lw		a7,	0(s9)
	li		t3,	1000
	mul		t2,	t4,	t3
	li		t3,	100
	mul		t3,	a5,	t3
	add		t2,	t2,	t3
	li		t3,	10
	mul		t3,	a2,	t3
	add		t3,	t2,	t3
	add		t3,	t3,	t6
	li		t2,	4
	mul		t2,	t2,	t3
	add		t3,	a7,	t2
	lw		t3,	0(t3)
	sub		a4,	a4,	t3
	j		.normal_block_10
.normal_block_10:
	j		.for_update_block_8
.normal_block_11:
	j		.func_end_block_1
	.size	f_loop_1,	.-f_loop_1

	.globl	f_compute_1
	.p2align	2
	.type	f_compute_1,@function
f_compute_1:
.func_begin_block_2:
	addi	sp,	sp,	-20
	sw		s0,	0(sp)
	addi	s0,	sp,	20
	sw		ra,	4(sp)
	sw		s2,	8(sp)
	sw		s9,	12(sp)
	sw		s11,	16(sp)
	mv		s2,	a0
	j		.normal_block_12
.func_end_block_2:
	mv		a0,	s11
	lw		s2,	8(sp)
	lw		s9,	12(sp)
	lw		s11,	16(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	20
	ret
.normal_block_12:
	li		s9,	0
	li		s11,	0
	j		.while_condition_block_1
.while_condition_block_1:
	sgt		a5,	s9,	s2
	seqz	a5,	a5,
	beqz	a5,	.normal_block_13
	j		.while_body_block_1
.while_body_block_1:
	call	f_loop_1
	mv		a5,	a0
	li		t6,	5000
	sgt		t6,	a5,	t6
	beqz	t6,	.normal_block_14
	j		.if_body_block_2
.normal_block_13:
	j		.func_end_block_2
.if_body_block_2:
	li		t6,	5000
	sub		a5,	a5,	t6
	j		.normal_block_14
.normal_block_14:
	add		s11,	s11,	a5
	li		a5,	5000
	sgt		a5,	s11,	a5
	beqz	a5,	.normal_block_15
	j		.if_body_block_3
.if_body_block_3:
	li		a5,	5000
	sub		s11,	s11,	a5
	j		.normal_block_15
.normal_block_15:
	li		a5,	1
	add		s9,	s9,	a5
	j		.while_condition_block_1
.normal_block_16:
	j		.func_end_block_2
	.size	f_compute_1,	.-f_compute_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_3:
	addi	sp,	sp,	-12
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		ra,	4(sp)
	mv		a5,	s11
	sw		a5,	8(sp)
	j		.normal_block_17
.func_end_block_3:
	mv		a0,	s11
	lw		s11,	8(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
	ret
.normal_block_17:
	call	_main_initial_1
	li		a5,	20
	mv		a0,	a5
	call	f_compute_1
	mv		a5,	a0
	mv		a0,	a5
	call	f_printInt_1
	j		.func_end_block_3
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_4:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	j		.normal_block_18
.func_end_block_4:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_18:
	j		.func_end_block_4
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata

