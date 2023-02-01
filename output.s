	.section	.text
	.globl	f_qsort_1
	.p2align	2
	.type	f_qsort_1,@function
f_qsort_1:
.func_begin_block_2:
	addi	sp,	sp,	-60
	sw		s0,	0(sp)
	addi	s0,	sp,	60
	sw		ra,	4(sp)
	sw		s2,	40(sp)
	sw		s3,	44(sp)
	sw		s5,	48(sp)
	sw		s10,	52(sp)
	addi	s2,	sp,	8
	addi	a3,	sp,	12
	addi	a4,	sp,	16
	sw		a4,	56(sp)
	addi	s5,	sp,	20
	addi	a4,	sp,	24
	addi	s10,	sp,	28
	addi	s3,	sp,	32
	addi	t5,	sp,	36
	j		.normal_block_2
.func_end_block_2:
	lw		s2,	40(sp)
	lw		s3,	44(sp)
	lw		s5,	48(sp)
	lw		s10,	52(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	60
	ret
.normal_block_2:
	sw		a0,	0(s2)
	sw		a1,	0(a3)
	lw		t6,	56(sp)
	sw		a2,	0(t6)
	lw		t6,	0(a3)
	lw		a2,	56(sp)
	lw		a2,	0(a2)
	slt		a2,	t6,	a2
	beqz	a2,	.normal_block_3
	j		.if_body_block_1
.if_body_block_1:
	lw		a2,	0(a3)
	sw		a2,	0(s5)
	lw		a2,	56(sp)
	lw		a2,	0(a2)
	sw		a2,	0(a4)
	lw		t6,	0(s2)
	lw		a7,	0(a3)
	li		a2,	4
	mul		a2,	a2,	a7
	add		a2,	t6,	a2
	lw		a2,	0(a2)
	sw		a2,	0(s10)
	j		.while_condition_block_1
.normal_block_3:
	j		.func_end_block_2
.while_condition_block_1:
	lw		a2,	0(s5)
	lw		t6,	0(a4)
	slt		a2,	a2,	t6
	beqz	a2,	.normal_block_4
	j		.while_body_block_1
.while_body_block_1:
	j		.while_condition_block_2
.normal_block_4:
	lw		a4,	0(s2)
	lw		s3,	0(s5)
	li		a2,	4
	mul		a2,	a2,	s3
	add		a4,	a4,	a2
	lw		a2,	0(s10)
	sw		a2,	0(a4)
	lw		a0,	0(s2)
	lw		a1,	0(a3)
	lw		a4,	0(s5)
	li		a2,	1
	sub		a2,	a4,	a2
	call	f_qsort_1
	lw		a0,	0(s2)
	lw		a4,	0(s5)
	li		a2,	1
	add		a1,	a4,	a2
	lw		a4,	56(sp)
	lw		a2,	0(a4)
	call	f_qsort_1
	j		.normal_block_3
.while_condition_block_2:
	lw		a2,	0(s5)
	lw		t6,	0(a4)
	slt		a2,	a2,	t6
	beqz	a2,	.short_circuit_else_body_block_1
	j		.short_circuit_if_body_block_1
.while_body_block_2:
	lw		t6,	0(a4)
	li		a2,	-1
	add		a2,	t6,	a2
	sw		a2,	0(a4)
	j		.while_condition_block_2
.normal_block_5:
	lw		t6,	0(s5)
	lw		a2,	0(a4)
	slt		a2,	t6,	a2
	beqz	a2,	.normal_block_6
	j		.if_body_block_2
.short_circuit_if_body_block_1:
	lw		t6,	0(s2)
	lw		a7,	0(a4)
	li		a2,	4
	mul		a2,	a2,	a7
	add		a2,	t6,	a2
	lw		a2,	0(a2)
	addi	a2,	a2,	8
	lw		t6,	0(a2)
	lw		a2,	0(s10)
	addi	a2,	a2,	8
	lw		a2,	0(a2)
	slt		a2,	t6,	a2
	seqz	a2,	a2,
	sw		a2,	0(s3)
	j		.short_circuit_end_block_1
.short_circuit_else_body_block_1:
	li		a2,	0
	sw		a2,	0(s3)
	j		.short_circuit_end_block_1
.short_circuit_end_block_1:
	lw		a2,	0(s3)
	beqz	a2,	.normal_block_5
	j		.while_body_block_2
.if_body_block_2:
	lw		a7,	0(s2)
	lw		t6,	0(s5)
	li		a2,	4
	mul		a2,	a2,	t6
	add		a2,	a7,	a2
	lw		a7,	0(s2)
	lw		t6,	0(a4)
	li		a5,	4
	mul		a5,	a5,	t6
	add		t6,	a7,	a5
	lw		t6,	0(t6)
	sw		t6,	0(a2)
	lw		a2,	0(s5)
	li		t6,	1
	add		a2,	a2,	t6
	sw		a2,	0(s5)
	j		.normal_block_6
.normal_block_6:
	j		.while_condition_block_3
.while_condition_block_3:
	lw		t6,	0(s5)
	lw		a2,	0(a4)
	slt		a2,	t6,	a2
	beqz	a2,	.short_circuit_else_body_block_2
	j		.short_circuit_if_body_block_2
.while_body_block_3:
	lw		a2,	0(s5)
	li		t6,	1
	add		a2,	a2,	t6
	sw		a2,	0(s5)
	j		.while_condition_block_3
.normal_block_7:
	lw		a2,	0(s5)
	lw		t6,	0(a4)
	slt		a2,	a2,	t6
	beqz	a2,	.normal_block_8
	j		.if_body_block_3
.short_circuit_if_body_block_2:
	lw		a2,	0(s2)
	lw		a7,	0(s5)
	li		t6,	4
	mul		t6,	t6,	a7
	add		a2,	a2,	t6
	lw		a2,	0(a2)
	addi	a2,	a2,	8
	lw		t6,	0(a2)
	lw		a2,	0(s10)
	addi	a2,	a2,	8
	lw		a2,	0(a2)
	slt		a2,	t6,	a2
	sw		a2,	0(t5)
	j		.short_circuit_end_block_2
.short_circuit_else_body_block_2:
	li		a2,	0
	sw		a2,	0(t5)
	j		.short_circuit_end_block_2
.short_circuit_end_block_2:
	lw		a2,	0(t5)
	beqz	a2,	.normal_block_7
	j		.while_body_block_3
.if_body_block_3:
	lw		a7,	0(s2)
	lw		a2,	0(a4)
	li		t6,	4
	mul		t6,	t6,	a2
	add		a7,	a7,	t6
	lw		a2,	0(s2)
	lw		t6,	0(s5)
	li		a5,	4
	mul		a5,	a5,	t6
	add		a2,	a2,	a5
	lw		a2,	0(a2)
	sw		a2,	0(a7)
	lw		a2,	0(a4)
	li		t6,	-1
	add		a2,	a2,	t6
	sw		a2,	0(a4)
	j		.normal_block_8
.normal_block_8:
	j		.while_condition_block_1
	.size	f_qsort_1,	.-f_qsort_1

	.globl	f_init_1
	.p2align	2
	.type	f_init_1,@function
f_init_1:
.func_begin_block_3:
	addi	sp,	sp,	-20
	sw		s0,	0(sp)
	addi	s0,	sp,	20
	sw		ra,	4(sp)
	sw		s1,	12(sp)
	sw		s7,	16(sp)
	addi	s7,	sp,	8
	j		.normal_block_9
.func_end_block_3:
	lw		s1,	12(sp)
	lw		s7,	16(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	20
	ret
.normal_block_9:
	la		a4,	n_addr_1
	lw		a2,	0(a4)
	li		a4,	1
	add		s1,	a2,	a4
	li		a4,	4
	mul		a4,	a4,	s1
	li		a2,	4
	add		a0,	a4,	a2
	call	_heap_malloc_1
	sw		s1,	0(a0)
	addi	a4,	a0,	4
	la		a2,	fa_addr_1
	sw		a4,	0(a2)
	la		a4,	n_addr_1
	lw		a4,	0(a4)
	li		a2,	1
	add		s1,	a4,	a2
	li		a4,	4
	mul		a2,	a4,	s1
	li		a4,	4
	add		a0,	a2,	a4
	call	_heap_malloc_1
	sw		s1,	0(a0)
	addi	a4,	a0,	4
	la		a2,	rk_addr_1
	sw		a4,	0(a2)
	li		a4,	1
	sw		a4,	0(s7)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		a2,	0(s7)
	la		a4,	n_addr_1
	lw		a4,	0(a4)
	sgt		a4,	a2,	a4
	seqz	a4,	a4,
	beqz	a4,	.normal_block_10
	j		.for_body_block_1
.for_body_block_1:
	la		a4,	fa_addr_1
	lw		a2,	0(a4)
	lw		a4,	0(s7)
	li		a3,	4
	mul		a3,	a3,	a4
	add		a2,	a2,	a3
	lw		a4,	0(s7)
	sw		a4,	0(a2)
	la		a4,	rk_addr_1
	lw		a3,	0(a4)
	lw		a4,	0(s7)
	li		a2,	4
	mul		a2,	a2,	a4
	add		a4,	a3,	a2
	li		a2,	1
	sw		a2,	0(a4)
	j		.for_update_block_1
.for_update_block_1:
	lw		a2,	0(s7)
	li		a4,	1
	add		a4,	a2,	a4
	sw		a4,	0(s7)
	j		.for_condition_block_1
.normal_block_10:
	j		.func_end_block_3
	.size	f_init_1,	.-f_init_1

	.globl	f_find_1
	.p2align	2
	.type	f_find_1,@function
f_find_1:
.func_begin_block_4:
	addi	sp,	sp,	-24
	sw		s0,	0(sp)
	addi	s0,	sp,	24
	sw		ra,	4(sp)
	sw		s1,	16(sp)
	sw		s7,	20(sp)
	addi	s1,	sp,	8
	addi	s7,	sp,	12
	j		.normal_block_11
.func_end_block_4:
	lw		a0,	0(s1)
	lw		s1,	16(sp)
	lw		s7,	20(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	24
	ret
.normal_block_11:
	sw		a0,	0(s7)
	lw		a2,	0(s7)
	la		a4,	fa_addr_1
	lw		a3,	0(a4)
	lw		t5,	0(s7)
	li		a4,	4
	mul		a4,	a4,	t5
	add		a4,	a3,	a4
	lw		a4,	0(a4)
	xor		a4,	a2,	a4
	seqz	a4,	a4,
	beqz	a4,	.normal_block_12
	j		.if_body_block_4
.if_body_block_4:
	lw		a4,	0(s7)
	sw		a4,	0(s1)
	j		.func_end_block_4
.normal_block_12:
	la		a4,	fa_addr_1
	lw		a3,	0(a4)
	lw		a4,	0(s7)
	li		a2,	4
	mul		a2,	a2,	a4
	add		a4,	a3,	a2
	lw		a0,	0(a4)
	call	f_find_1
	sw		a0,	0(s7)
	la		a4,	fa_addr_1
	lw		a2,	0(a4)
	lw		s7,	0(s7)
	li		a4,	4
	mul		a4,	a4,	s7
	add		a4,	a2,	a4
	lw		a4,	0(a4)
	sw		a4,	0(s1)
	j		.func_end_block_4
.normal_block_13:
	j		.normal_block_12
.normal_block_14:
	j		.func_end_block_4
	.size	f_find_1,	.-f_find_1

	.globl	f_union_1
	.p2align	2
	.type	f_union_1,@function
f_union_1:
.func_begin_block_5:
	addi	sp,	sp,	-32
	sw		s0,	0(sp)
	addi	s0,	sp,	32
	sw		ra,	4(sp)
	sw		s2,	20(sp)
	sw		s4,	24(sp)
	sw		s7,	28(sp)
	addi	s7,	sp,	8
	addi	s4,	sp,	12
	addi	s2,	sp,	16
	j		.normal_block_15
.func_end_block_5:
	lw		a0,	0(s7)
	lw		s2,	20(sp)
	lw		s4,	24(sp)
	lw		s7,	28(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	32
	ret
.normal_block_15:
	sw		a0,	0(s4)
	sw		a1,	0(s2)
	lw		a0,	0(s4)
	call	f_find_1
	sw		a0,	0(s4)
	lw		a0,	0(s2)
	call	f_find_1
	sw		a0,	0(s2)
	lw		a2,	0(s4)
	lw		a4,	0(s2)
	xor		a4,	a2,	a4
	seqz	a4,	a4,
	beqz	a4,	.normal_block_16
	j		.if_body_block_5
.if_body_block_5:
	li		a4,	0
	sw		a4,	0(s7)
	j		.func_end_block_5
.normal_block_16:
	la		a4,	rk_addr_1
	lw		a2,	0(a4)
	lw		a4,	0(s4)
	li		a3,	4
	mul		a3,	a3,	a4
	add		a4,	a2,	a3
	lw		t5,	0(a4)
	la		a4,	rk_addr_1
	lw		a3,	0(a4)
	lw		a4,	0(s2)
	li		a2,	4
	mul		a2,	a2,	a4
	add		a4,	a3,	a2
	lw		a4,	0(a4)
	sgt		a4,	t5,	a4
	beqz	a4,	.else_body_block_6
	j		.if_body_block_6
.normal_block_17:
	j		.normal_block_16
.if_body_block_6:
	la		a4,	fa_addr_1
	lw		a3,	0(a4)
	lw		a2,	0(s2)
	li		a4,	4
	mul		a4,	a4,	a2
	add		a2,	a3,	a4
	lw		a4,	0(s4)
	sw		a4,	0(a2)
	la		a4,	rk_addr_1
	lw		a4,	0(a4)
	lw		a2,	0(s4)
	li		a3,	4
	mul		a3,	a3,	a2
	add		a4,	a4,	a3
	la		a2,	rk_addr_1
	lw		a3,	0(a2)
	lw		s4,	0(s4)
	li		a2,	4
	mul		a2,	a2,	s4
	add		a2,	a3,	a2
	lw		t5,	0(a2)
	la		a2,	rk_addr_1
	lw		a3,	0(a2)
	lw		s4,	0(s2)
	li		a2,	4
	mul		a2,	a2,	s4
	add		a2,	a3,	a2
	lw		a2,	0(a2)
	add		a2,	t5,	a2
	sw		a2,	0(a4)
	j		.normal_block_18
.else_body_block_6:
	la		a4,	fa_addr_1
	lw		a4,	0(a4)
	lw		a3,	0(s4)
	li		a2,	4
	mul		a2,	a2,	a3
	add		a2,	a4,	a2
	lw		a4,	0(s2)
	sw		a4,	0(a2)
	la		a4,	rk_addr_1
	lw		a2,	0(a4)
	lw		a4,	0(s2)
	li		a3,	4
	mul		a3,	a3,	a4
	add		a4,	a2,	a3
	la		a2,	rk_addr_1
	lw		a3,	0(a2)
	lw		a2,	0(s2)
	li		t5,	4
	mul		t5,	t5,	a2
	add		a2,	a3,	t5
	lw		a2,	0(a2)
	la		a3,	rk_addr_1
	lw		a3,	0(a3)
	lw		s4,	0(s4)
	li		t5,	4
	mul		t5,	t5,	s4
	add		s4,	a3,	t5
	lw		s4,	0(s4)
	add		a2,	a2,	s4
	sw		a2,	0(a4)
	j		.normal_block_18
.normal_block_18:
	li		a4,	1
	sw		a4,	0(s7)
	j		.func_end_block_5
.normal_block_19:
	j		.func_end_block_5
	.size	f_union_1,	.-f_union_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_6:
	addi	sp,	sp,	-60
	sw		s0,	0(sp)
	addi	s0,	sp,	60
	sw		ra,	4(sp)
	sw		s2,	32(sp)
	sw		s3,	36(sp)
	sw		s4,	40(sp)
	sw		s5,	44(sp)
	sw		s6,	48(sp)
	sw		s7,	52(sp)
	sw		s10,	56(sp)
	addi	s3,	sp,	8
	addi	s10,	sp,	12
	addi	s5,	sp,	16
	addi	s2,	sp,	20
	addi	s4,	sp,	24
	addi	s7,	sp,	28
	j		.normal_block_20
.func_end_block_6:
	lw		a0,	0(s3)
	lw		s2,	32(sp)
	lw		s3,	36(sp)
	lw		s4,	40(sp)
	lw		s5,	44(sp)
	lw		s6,	48(sp)
	lw		s7,	52(sp)
	lw		s10,	56(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	60
	ret
.normal_block_20:
	call	_main_initial_1
	call	f_getInt_1
	la		a4,	n_addr_1
	sw		a0,	0(a4)
	call	f_getInt_1
	la		a4,	m_addr_1
	sw		a0,	0(a4)
	la		a4,	m_addr_1
	lw		s6,	0(a4)
	li		a4,	8
	mul		a2,	a4,	s6
	li		a4,	4
	add		a0,	a2,	a4
	call	_heap_malloc_1
	sw		s6,	0(a0)
	addi	a4,	a0,	4
	la		a2,	e_addr_1
	sw		a4,	0(a2)
	li		a4,	0
	sw		a4,	0(s10)
	j		.for_condition_block_2
.for_condition_block_2:
	lw		a2,	0(s10)
	la		a4,	m_addr_1
	lw		a4,	0(a4)
	slt		a4,	a2,	a4
	beqz	a4,	.normal_block_21
	j		.for_body_block_2
.for_body_block_2:
	li		a0,	12
	call	_heap_malloc_1
	mv		s6,	a0
	sw		s6,	0(s2)
	mv		a0,	s2
	call	class_constructor_Edge.Edge_1
	sw		s6,	0(s5)
	lw		a4,	0(s5)
	addi	s6,	a4,	0
	call	f_getInt_1
	sw		a0,	0(s6)
	lw		a4,	0(s5)
	addi	s6,	a4,	4
	call	f_getInt_1
	sw		a0,	0(s6)
	lw		a4,	0(s5)
	addi	s6,	a4,	8
	call	f_getInt_1
	sw		a0,	0(s6)
	la		a4,	e_addr_1
	lw		a2,	0(a4)
	lw		a3,	0(s10)
	li		a4,	4
	mul		a4,	a4,	a3
	add		a2,	a2,	a4
	lw		a4,	0(s5)
	sw		a4,	0(a2)
	j		.for_update_block_2
.for_update_block_2:
	lw		a2,	0(s10)
	li		a4,	1
	add		a4,	a2,	a4
	sw		a4,	0(s10)
	j		.for_condition_block_2
.normal_block_21:
	la		a4,	e_addr_1
	lw		a0,	0(a4)
	la		a4,	m_addr_1
	lw		a2,	0(a4)
	li		a4,	1
	sub		a2,	a2,	a4
	li		a1,	0
	call	f_qsort_1
	call	f_init_1
	li		a4,	0
	sw		a4,	0(s10)
	li		a4,	0
	sw		a4,	0(s4)
	j		.while_condition_block_4
.while_condition_block_4:
	lw		a2,	0(s10)
	la		a4,	n_addr_1
	lw		a3,	0(a4)
	li		a4,	1
	sub		a4,	a3,	a4
	slt		a4,	a2,	a4
	beqz	a4,	.normal_block_22
	j		.while_body_block_4
.while_body_block_4:
	lw		a2,	0(s4)
	la		a4,	m_addr_1
	lw		a4,	0(a4)
	slt		a4,	a2,	a4
	seqz	a4,	a4,
	beqz	a4,	.normal_block_23
	j		.if_body_block_7
.normal_block_22:
	la		a4,	rk_addr_1
	lw		s7,	0(a4)
	li		a0,	1
	call	f_find_1
	li		a4,	4
	mul		a4,	a4,	a0
	add		a4,	s7,	a4
	lw		a4,	0(a4)
	la		s7,	n_addr_1
	lw		s7,	0(s7)
	xor		a4,	a4,	s7
	seqz	a4,	a4,
	beqz	a4,	.else_body_block_9
	j		.if_body_block_9
.if_body_block_7:
	li		a0,	-1
	call	f_printInt_1
	li		a4,	0
	sw		a4,	0(s3)
	j		.func_end_block_6
.normal_block_23:
	la		a4,	e_addr_1
	lw		a3,	0(a4)
	lw		a2,	0(s4)
	li		a4,	4
	mul		a4,	a4,	a2
	add		a4,	a3,	a4
	lw		a4,	0(a4)
	sw		a4,	0(s7)
	lw		a2,	0(s4)
	li		a4,	1
	add		a4,	a2,	a4
	sw		a4,	0(s4)
	lw		a4,	0(s7)
	addi	a4,	a4,	0
	lw		a0,	0(a4)
	lw		a4,	0(s7)
	addi	a4,	a4,	4
	lw		a1,	0(a4)
	call	f_union_1
	beqz	a0,	.normal_block_25
	j		.if_body_block_8
.normal_block_24:
	j		.normal_block_23
.if_body_block_8:
	lw		a2,	0(s10)
	li		a4,	1
	add		a4,	a2,	a4
	sw		a4,	0(s10)
	la		a4,	ans_addr_1
	lw		a4,	0(a4)
	lw		a2,	0(s7)
	addi	a2,	a2,	8
	lw		a2,	0(a2)
	add		a4,	a4,	a2
	la		a2,	ans_addr_1
	sw		a4,	0(a2)
	j		.normal_block_25
.normal_block_25:
	j		.while_condition_block_4
.if_body_block_9:
	la		a4,	ans_addr_1
	lw		a0,	0(a4)
	call	f_printInt_1
	j		.normal_block_26
.else_body_block_9:
	li		a0,	-1
	call	f_printInt_1
	j		.normal_block_26
.normal_block_26:
	li		a4,	0
	sw		a4,	0(s3)
	j		.func_end_block_6
.normal_block_27:
	j		.func_end_block_6
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_7:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	j		.normal_block_28
.func_end_block_7:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_28:
	li		a2,	0
	la		a4,	ans_addr_1
	sw		a2,	0(a4)
	li		a2,	0
	la		a4,	fa_addr_1
	sw		a2,	0(a4)
	li		a2,	0
	la		a4,	rk_addr_1
	sw		a2,	0(a4)
	li		a4,	0
	la		a2,	e_addr_1
	sw		a4,	0(a2)
	j		.func_end_block_7
	.size	_main_initial_1,	.-_main_initial_1

	.globl	class_constructor_Edge.Edge_1
	.p2align	2
	.type	class_constructor_Edge.Edge_1,@function
class_constructor_Edge.Edge_1:
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
	j		.func_end_block_1
	.size	class_constructor_Edge.Edge_1,	.-class_constructor_Edge.Edge_1

	.section	.bss
	.globl	n_addr_1
	.type	n_addr_1,@object
n_addr_1:
	.word	0
	.size	n_addr_1,	4

	.globl	m_addr_1
	.type	m_addr_1,@object
m_addr_1:
	.word	0
	.size	m_addr_1,	4

	.globl	ans_addr_1
	.type	ans_addr_1,@object
ans_addr_1:
	.word	0
	.size	ans_addr_1,	4

	.globl	fa_addr_1
	.type	fa_addr_1,@object
fa_addr_1:
	.word	0
	.size	fa_addr_1,	4

	.globl	rk_addr_1
	.type	rk_addr_1,@object
rk_addr_1:
	.word	0
	.size	rk_addr_1,	4

	.globl	e_addr_1
	.type	e_addr_1,@object
e_addr_1:
	.word	0
	.size	e_addr_1,	4

	.section	.rodata

