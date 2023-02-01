	.section	.text
	.globl	f_loop_1
	.p2align	2
	.type	f_loop_1,@function
f_loop_1:
.func_begin_block_1:
	addi	sp,	sp,	-64
	sw		s0,	0(sp)
	addi	s0,	sp,	64
	sw		ra,	4(sp)
	sw		s1,	36(sp)
	sw		s2,	40(sp)
	sw		s3,	44(sp)
	sw		s4,	48(sp)
	sw		s5,	52(sp)
	sw		s8,	56(sp)
	sw		s11,	60(sp)
	addi	s2,	sp,	8
	addi	s5,	sp,	12
	addi	s8,	sp,	16
	addi	s1,	sp,	20
	addi	s3,	sp,	24
	addi	s4,	sp,	28
	addi	s11,	sp,	32
	j		.normal_block_1
.func_end_block_1:
	lw		a0,	0(s2)
	lw		s1,	36(sp)
	lw		s2,	40(sp)
	lw		s3,	44(sp)
	lw		s4,	48(sp)
	lw		s5,	52(sp)
	lw		s8,	56(sp)
	lw		s11,	60(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	64
	ret
.normal_block_1:
	li		a0,	40004
	call	_heap_malloc_1
	li		a2,	10000
	sw		a2,	0(a0)
	addi	a2,	a0,	4
	sw		a2,	0(s5)
	li		a2,	0
	sw		a2,	0(s8)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		t3,	0(s8)
	li		a2,	10
	slt		a2,	t3,	a2
	beqz	a2,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	li		a2,	0
	sw		a2,	0(s1)
	j		.for_condition_block_2
.for_update_block_1:
	lw		t3,	0(s8)
	li		a2,	1
	add		a2,	t3,	a2
	sw		a2,	0(s8)
	j		.for_condition_block_1
.normal_block_2:
	li		a2,	0
	sw		a2,	0(s11)
	li		a2,	0
	sw		a2,	0(s8)
	j		.for_condition_block_5
.for_condition_block_2:
	lw		t3,	0(s1)
	li		a2,	10
	slt		a2,	t3,	a2
	beqz	a2,	.normal_block_3
	j		.for_body_block_2
.for_body_block_2:
	li		a2,	0
	sw		a2,	0(s3)
	j		.for_condition_block_3
.for_update_block_2:
	lw		t3,	0(s1)
	li		a2,	1
	add		a2,	t3,	a2
	sw		a2,	0(s1)
	j		.for_condition_block_2
.normal_block_3:
	j		.for_update_block_1
.for_condition_block_3:
	lw		a2,	0(s3)
	li		t3,	10
	slt		a2,	a2,	t3
	beqz	a2,	.normal_block_4
	j		.for_body_block_3
.for_body_block_3:
	li		a2,	0
	sw		a2,	0(s4)
	j		.for_condition_block_4
.for_update_block_3:
	lw		a2,	0(s3)
	li		t3,	1
	add		a2,	a2,	t3
	sw		a2,	0(s3)
	j		.for_condition_block_3
.normal_block_4:
	j		.for_update_block_2
.for_condition_block_4:
	lw		t3,	0(s4)
	li		a2,	10
	slt		a2,	t3,	a2
	beqz	a2,	.normal_block_5
	j		.for_body_block_4
.for_body_block_4:
	lw		a2,	0(s5)
	lw		t2,	0(s8)
	li		t3,	1000
	mul		t2,	t2,	t3
	lw		t3,	0(s1)
	li		a0,	100
	mul		t3,	t3,	a0
	add		t3,	t2,	t3
	lw		t2,	0(s3)
	li		a0,	10
	mul		t2,	t2,	a0
	add		t3,	t3,	t2
	lw		t2,	0(s4)
	add		t3,	t3,	t2
	li		t2,	4
	mul		t2,	t2,	t3
	add		a2,	a2,	t2
	lw		t2,	0(s8)
	lw		t3,	0(s4)
	add		t3,	t2,	t3
	sw		t3,	0(a2)
	lw		t3,	0(s5)
	lw		t2,	0(s8)
	li		a2,	10
	mul		t2,	t2,	a2
	lw		a2,	0(s1)
	li		a0,	5
	mul		a2,	a2,	a0
	add		a2,	t2,	a2
	li		t2,	4
	mul		t2,	t2,	a2
	add		t3,	t3,	t2
	lw		a0,	0(s5)
	lw		a2,	0(s8)
	li		t2,	10
	mul		t2,	a2,	t2
	lw		t5,	0(s1)
	li		a2,	5
	mul		a2,	t5,	a2
	add		a2,	t2,	a2
	li		t2,	4
	mul		t2,	t2,	a2
	add		a2,	a0,	t2
	lw		a2,	0(a2)
	sw		a2,	0(t3)
	j		.for_update_block_4
.for_update_block_4:
	lw		t3,	0(s4)
	li		a2,	1
	add		a2,	t3,	a2
	sw		a2,	0(s4)
	j		.for_condition_block_4
.normal_block_5:
	j		.for_update_block_3
.for_condition_block_5:
	lw		a2,	0(s8)
	li		t3,	10
	slt		a2,	a2,	t3
	beqz	a2,	.normal_block_6
	j		.for_body_block_5
.for_body_block_5:
	li		a2,	0
	sw		a2,	0(s1)
	j		.for_condition_block_6
.for_update_block_5:
	lw		a2,	0(s8)
	li		t3,	1
	add		a2,	a2,	t3
	sw		a2,	0(s8)
	j		.for_condition_block_5
.normal_block_6:
	lw		a2,	0(s11)
	sw		a2,	0(s2)
	j		.func_end_block_1
.for_condition_block_6:
	lw		a2,	0(s1)
	li		t3,	10
	slt		a2,	a2,	t3
	beqz	a2,	.normal_block_7
	j		.for_body_block_6
.for_body_block_6:
	li		a2,	0
	sw		a2,	0(s3)
	j		.for_condition_block_7
.for_update_block_6:
	lw		a2,	0(s1)
	li		t3,	1
	add		a2,	a2,	t3
	sw		a2,	0(s1)
	j		.for_condition_block_6
.normal_block_7:
	j		.for_update_block_5
.for_condition_block_7:
	lw		a2,	0(s3)
	li		t3,	10
	slt		a2,	a2,	t3
	beqz	a2,	.normal_block_8
	j		.for_body_block_7
.for_body_block_7:
	li		a2,	0
	sw		a2,	0(s4)
	j		.for_condition_block_8
.for_update_block_7:
	lw		t3,	0(s3)
	li		a2,	1
	add		a2,	t3,	a2
	sw		a2,	0(s3)
	j		.for_condition_block_7
.normal_block_8:
	j		.for_update_block_6
.for_condition_block_8:
	lw		t3,	0(s4)
	li		a2,	10
	slt		a2,	t3,	a2
	beqz	a2,	.normal_block_9
	j		.for_body_block_8
.for_body_block_8:
	lw		t3,	0(s4)
	li		a2,	1
	and		a2,	t3,	a2
	li		t3,	1
	xor		a2,	a2,	t3
	seqz	a2,	a2,
	beqz	a2,	.else_body_block_1
	j		.if_body_block_1
.for_update_block_8:
	lw		t3,	0(s4)
	li		a2,	1
	add		a2,	t3,	a2
	sw		a2,	0(s4)
	j		.for_condition_block_8
.normal_block_9:
	j		.for_update_block_7
.if_body_block_1:
	lw		t3,	0(s11)
	lw		a2,	0(s5)
	lw		t2,	0(s8)
	li		a0,	1000
	mul		t5,	t2,	a0
	lw		a0,	0(s1)
	li		t2,	100
	mul		t2,	a0,	t2
	add		a0,	t5,	t2
	lw		t2,	0(s3)
	li		t5,	10
	mul		t2,	t2,	t5
	add		t2,	a0,	t2
	lw		a0,	0(s4)
	add		t2,	t2,	a0
	li		a0,	4
	mul		a0,	a0,	t2
	add		a2,	a2,	a0
	lw		a2,	0(a2)
	add		a2,	t3,	a2
	sw		a2,	0(s11)
	j		.normal_block_10
.else_body_block_1:
	lw		t3,	0(s11)
	lw		a2,	0(s5)
	lw		t2,	0(s8)
	li		a0,	1000
	mul		a0,	t2,	a0
	lw		t2,	0(s1)
	li		t5,	100
	mul		t2,	t2,	t5
	add		t2,	a0,	t2
	lw		a0,	0(s3)
	li		t5,	10
	mul		a0,	a0,	t5
	add		a0,	t2,	a0
	lw		t2,	0(s4)
	add		a0,	a0,	t2
	li		t2,	4
	mul		t2,	t2,	a0
	add		a2,	a2,	t2
	lw		a2,	0(a2)
	sub		a2,	t3,	a2
	sw		a2,	0(s11)
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
	addi	sp,	sp,	-48
	sw		s0,	0(sp)
	addi	s0,	sp,	48
	sw		ra,	4(sp)
	sw		s2,	28(sp)
	sw		s4,	32(sp)
	sw		s6,	36(sp)
	sw		s10,	40(sp)
	sw		s11,	44(sp)
	addi	s11,	sp,	8
	addi	s6,	sp,	12
	addi	s2,	sp,	16
	addi	s10,	sp,	20
	addi	s4,	sp,	24
	j		.normal_block_12
.func_end_block_2:
	lw		a0,	0(s11)
	lw		s2,	28(sp)
	lw		s4,	32(sp)
	lw		s6,	36(sp)
	lw		s10,	40(sp)
	lw		s11,	44(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	48
	ret
.normal_block_12:
	sw		a0,	0(s6)
	li		a2,	0
	sw		a2,	0(s2)
	li		a2,	0
	sw		a2,	0(s10)
	j		.while_condition_block_1
.while_condition_block_1:
	lw		a2,	0(s2)
	lw		t3,	0(s6)
	sgt		a2,	a2,	t3
	seqz	a2,	a2,
	beqz	a2,	.normal_block_13
	j		.while_body_block_1
.while_body_block_1:
	call	f_loop_1
	sw		a0,	0(s4)
	lw		t3,	0(s4)
	li		a2,	5000
	sgt		a2,	t3,	a2
	beqz	a2,	.normal_block_14
	j		.if_body_block_2
.normal_block_13:
	lw		a2,	0(s10)
	sw		a2,	0(s11)
	j		.func_end_block_2
.if_body_block_2:
	lw		t3,	0(s4)
	li		a2,	5000
	sub		a2,	t3,	a2
	sw		a2,	0(s4)
	j		.normal_block_14
.normal_block_14:
	lw		t3,	0(s10)
	lw		a2,	0(s4)
	add		a2,	t3,	a2
	sw		a2,	0(s10)
	lw		a2,	0(s10)
	li		t3,	5000
	sgt		a2,	a2,	t3
	beqz	a2,	.normal_block_15
	j		.if_body_block_3
.if_body_block_3:
	lw		a2,	0(s10)
	li		t3,	5000
	sub		a2,	a2,	t3
	sw		a2,	0(s10)
	j		.normal_block_15
.normal_block_15:
	lw		t3,	0(s2)
	li		a2,	1
	add		a2,	t3,	a2
	sw		a2,	0(s2)
	j		.while_condition_block_1
.normal_block_16:
	j		.func_end_block_2
	.size	f_compute_1,	.-f_compute_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_3:
	addi	sp,	sp,	-16
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		ra,	4(sp)
	sw		s1,	12(sp)
	addi	s1,	sp,	8
	j		.normal_block_17
.func_end_block_3:
	lw		a0,	0(s1)
	lw		s1,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
.normal_block_17:
	call	_main_initial_1
	li		a0,	20
	call	f_compute_1
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

