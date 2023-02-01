	.section	.text
	.globl	f_partition_1
	.p2align	2
	.type	f_partition_1,@function
f_partition_1:
.func_begin_block_1:
	addi	sp,	sp,	-44
	sw		s0,	0(sp)
	addi	s0,	sp,	44
	sw		ra,	4(sp)
	addi	t2,	sp,	8
	addi	a7,	sp,	12
	addi	t3,	sp,	16
	addi	t5,	sp,	20
	addi	t1,	sp,	24
	addi	a4,	sp,	28
	addi	a6,	sp,	32
	addi	a5,	sp,	36
	addi	t6,	sp,	40
	j		.normal_block_1
.func_end_block_1:
	lw		a0,	0(t2)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	44
	ret
.normal_block_1:
	sw		a0,	0(a7)
	sw		a1,	0(t3)
	sw		a2,	0(t5)
	lw		a2,	0(a7)
	lw		a0,	0(t5)
	li		a1,	4
	mul		a1,	a1,	a0
	add		a2,	a2,	a1
	lw		a2,	0(a2)
	sw		a2,	0(t1)
	lw		a1,	0(t3)
	li		a2,	1
	sub		a2,	a1,	a2
	sw		a2,	0(a4)
	lw		a2,	0(t3)
	sw		a2,	0(a6)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		a1,	0(a6)
	lw		a2,	0(t5)
	slt		a2,	a1,	a2
	beqz	a2,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	lw		a1,	0(a7)
	lw		a2,	0(a6)
	li		a0,	4
	mul		a0,	a0,	a2
	add		a2,	a1,	a0
	lw		a1,	0(a2)
	lw		a2,	0(t1)
	sgt		a2,	a1,	a2
	seqz	a2,	a2,
	beqz	a2,	.normal_block_3
	j		.if_body_block_1
.for_update_block_1:
	lw		a2,	0(a6)
	li		a1,	1
	add		a2,	a2,	a1
	sw		a2,	0(a6)
	j		.for_condition_block_1
.normal_block_2:
	lw		t1,	0(a7)
	lw		a1,	0(a4)
	li		a2,	1
	add		a1,	a1,	a2
	li		a2,	4
	mul		a2,	a2,	a1
	add		a2,	t1,	a2
	lw		a2,	0(a2)
	sw		a2,	0(t6)
	lw		a1,	0(a7)
	lw		t1,	0(a4)
	li		a2,	1
	add		t1,	t1,	a2
	li		a2,	4
	mul		a2,	a2,	t1
	add		t1,	a1,	a2
	lw		a1,	0(a7)
	lw		a6,	0(t5)
	li		a2,	4
	mul		a2,	a2,	a6
	add		a2,	a1,	a2
	lw		a2,	0(a2)
	sw		a2,	0(t1)
	lw		a7,	0(a7)
	lw		t5,	0(t5)
	li		a2,	4
	mul		a2,	a2,	t5
	add		a7,	a7,	a2
	lw		t5,	0(t6)
	sw		t5,	0(a7)
	lw		a7,	0(a4)
	li		t5,	1
	add		a7,	a7,	t5
	sw		a7,	0(t2)
	j		.func_end_block_1
.if_body_block_1:
	lw		a2,	0(a4)
	li		a1,	1
	add		a2,	a2,	a1
	sw		a2,	0(a4)
	lw		a2,	0(a7)
	lw		a0,	0(a4)
	li		a1,	4
	mul		a1,	a1,	a0
	add		a2,	a2,	a1
	lw		a2,	0(a2)
	sw		a2,	0(a5)
	lw		a1,	0(a7)
	lw		a0,	0(a4)
	li		a2,	4
	mul		a2,	a2,	a0
	add		t3,	a1,	a2
	lw		a1,	0(a7)
	lw		a0,	0(a6)
	li		a2,	4
	mul		a2,	a2,	a0
	add		a2,	a1,	a2
	lw		a2,	0(a2)
	sw		a2,	0(t3)
	lw		a1,	0(a7)
	lw		a2,	0(a6)
	li		a0,	4
	mul		a0,	a0,	a2
	add		a1,	a1,	a0
	lw		a2,	0(a5)
	sw		a2,	0(a1)
	j		.normal_block_3
.normal_block_3:
	j		.for_update_block_1
.normal_block_4:
	j		.func_end_block_1
	.size	f_partition_1,	.-f_partition_1

	.globl	f_quick_sort_1
	.p2align	2
	.type	f_quick_sort_1,@function
f_quick_sort_1:
.func_begin_block_2:
	addi	sp,	sp,	-40
	sw		s0,	0(sp)
	addi	s0,	sp,	40
	sw		ra,	4(sp)
	sw		s1,	24(sp)
	sw		s5,	28(sp)
	sw		s6,	32(sp)
	sw		s9,	36(sp)
	addi	s6,	sp,	8
	addi	s9,	sp,	12
	addi	s1,	sp,	16
	addi	s5,	sp,	20
	j		.normal_block_5
.func_end_block_2:
	lw		s1,	24(sp)
	lw		s5,	28(sp)
	lw		s6,	32(sp)
	lw		s9,	36(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	40
	ret
.normal_block_5:
	sw		a0,	0(s6)
	sw		a1,	0(s9)
	sw		a2,	0(s1)
	lw		t5,	0(s9)
	lw		a7,	0(s1)
	slt		a7,	t5,	a7
	seqz	a7,	a7,
	beqz	a7,	.normal_block_6
	j		.if_body_block_2
.if_body_block_2:
	j		.func_end_block_2
.normal_block_6:
	lw		a0,	0(s6)
	lw		a1,	0(s9)
	lw		a2,	0(s1)
	call	f_partition_1
	sw		a0,	0(s5)
	lw		a0,	0(s6)
	lw		a1,	0(s9)
	lw		t5,	0(s5)
	li		a7,	1
	sub		a2,	t5,	a7
	call	f_quick_sort_1
	lw		a0,	0(s6)
	lw		t5,	0(s5)
	li		a7,	1
	add		a1,	t5,	a7
	lw		a2,	0(s1)
	call	f_quick_sort_1
	j		.func_end_block_2
.normal_block_7:
	j		.normal_block_6
	.size	f_quick_sort_1,	.-f_quick_sort_1

	.globl	f_quick_sort_inf_1
	.p2align	2
	.type	f_quick_sort_inf_1,@function
f_quick_sort_inf_1:
.func_begin_block_3:
	addi	sp,	sp,	-12
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		ra,	4(sp)
	addi	a7,	sp,	8
	j		.normal_block_8
.func_end_block_3:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
	ret
.normal_block_8:
	sw		a0,	0(a7)
	lw		a0,	0(a7)
	lw		a7,	0(a7)
	addi	a7,	a7,	-4
	lw		a7,	0(a7)
	li		t5,	1
	sub		a2,	a7,	t5
	li		a1,	0
	call	f_quick_sort_1
	j		.func_end_block_3
	.size	f_quick_sort_inf_1,	.-f_quick_sort_inf_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_4:
	addi	sp,	sp,	-44
	sw		s0,	0(sp)
	addi	s0,	sp,	44
	sw		ra,	4(sp)
	sw		s3,	24(sp)
	sw		s4,	28(sp)
	sw		s5,	32(sp)
	sw		s9,	36(sp)
	sw		s10,	40(sp)
	addi	s9,	sp,	8
	addi	s4,	sp,	12
	addi	s5,	sp,	16
	addi	s10,	sp,	20
	j		.normal_block_9
.func_end_block_4:
	lw		a0,	0(s9)
	lw		s3,	24(sp)
	lw		s4,	28(sp)
	lw		s5,	32(sp)
	lw		s9,	36(sp)
	lw		s10,	40(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	44
	ret
.normal_block_9:
	call	_main_initial_1
	call	f_getInt_1
	sw		a0,	0(s4)
	lw		s3,	0(s4)
	li		a7,	4
	mul		t5,	a7,	s3
	li		a7,	4
	add		a0,	t5,	a7
	call	_heap_malloc_1
	sw		s3,	0(a0)
	addi	a7,	a0,	4
	sw		a7,	0(s5)
	li		a7,	0
	sw		a7,	0(s10)
	j		.for_condition_block_2
.for_condition_block_2:
	lw		a7,	0(s10)
	lw		t5,	0(s4)
	slt		a7,	a7,	t5
	beqz	a7,	.normal_block_10
	j		.for_body_block_2
.for_body_block_2:
	lw		a2,	0(s5)
	lw		t5,	0(s10)
	li		a7,	4
	mul		a7,	a7,	t5
	add		s3,	a2,	a7
	call	f_getInt_1
	sw		a0,	0(s3)
	j		.for_update_block_2
.for_update_block_2:
	lw		a7,	0(s10)
	li		t5,	1
	add		a7,	a7,	t5
	sw		a7,	0(s10)
	j		.for_condition_block_2
.normal_block_10:
	lw		a0,	0(s5)
	call	f_quick_sort_inf_1
	li		a7,	0
	sw		a7,	0(s10)
	j		.for_condition_block_3
.for_condition_block_3:
	lw		t5,	0(s10)
	lw		a7,	0(s4)
	slt		a7,	t5,	a7
	beqz	a7,	.normal_block_11
	j		.for_body_block_3
.for_body_block_3:
	lw		t5,	0(s5)
	lw		a2,	0(s10)
	li		a7,	4
	mul		a7,	a7,	a2
	add		a7,	t5,	a7
	lw		a0,	0(a7)
	call	f_toString_1
	la		a7,	const_string_1
	addi	a1,	a7,	0
	call	_string_merge_1
	call	f_print_1
	j		.for_update_block_3
.for_update_block_3:
	lw		a7,	0(s10)
	li		t5,	1
	add		a7,	a7,	t5
	sw		a7,	0(s10)
	j		.for_condition_block_3
.normal_block_11:
	la		a7,	const_string_2
	addi	a0,	a7,	0
	call	f_println_1
	li		a7,	0
	sw		a7,	0(s9)
	j		.func_end_block_4
.normal_block_12:
	j		.func_end_block_4
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_5:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	j		.normal_block_13
.func_end_block_5:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_13:
	j		.func_end_block_5
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata
	.type	const_string_1,@object
const_string_1:
	.string	" "
	.size	const_string_1,	3

	.type	const_string_2,@object
const_string_2:
	.string	""
	.size	const_string_2,	2


