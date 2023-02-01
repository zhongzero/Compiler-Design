	.section	.text
	.globl	f_qsort_1
	.p2align	2
	.type	f_qsort_1,@function
f_qsort_1:
.func_begin_block_2:
	addi	sp,	sp,	-56
	sw		s0,	0(sp)
	addi	s0,	sp,	56
	sw		ra,	4(sp)
	sw		s1,	40(sp)
	sw		s7,	44(sp)
	sw		s11,	48(sp)
	addi	s7,	sp,	8
	addi	a7,	sp,	12
	addi	t2,	sp,	16
	sw		t2,	52(sp)
	addi	s1,	sp,	20
	addi	a4,	sp,	24
	addi	t1,	sp,	28
	addi	t2,	sp,	32
	addi	s11,	sp,	36
	j		.normal_block_2
.func_end_block_2:
	lw		s1,	40(sp)
	lw		s7,	44(sp)
	lw		s11,	48(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	56
	ret
.normal_block_2:
	sw		a0,	0(s7)
	sw		a1,	0(a7)
	lw		a1,	52(sp)
	sw		a2,	0(a1)
	lw		a3,	0(a7)
	lw		a1,	52(sp)
	lw		a1,	0(a1)
	slt		a1,	a3,	a1
	beqz	a1,	.normal_block_3
	j		.if_body_block_1
.if_body_block_1:
	lw		a1,	0(a7)
	sw		a1,	0(s1)
	lw		a1,	52(sp)
	lw		a1,	0(a1)
	sw		a1,	0(a4)
	lw		a1,	0(s7)
	lw		a6,	0(a7)
	li		a3,	4
	mul		a3,	a3,	a6
	add		a1,	a1,	a3
	lw		a1,	0(a1)
	sw		a1,	0(t1)
	j		.while_condition_block_1
.normal_block_3:
	j		.func_end_block_2
.while_condition_block_1:
	lw		a3,	0(s1)
	lw		a1,	0(a4)
	slt		a1,	a3,	a1
	beqz	a1,	.normal_block_4
	j		.while_body_block_1
.while_body_block_1:
	j		.while_condition_block_2
.normal_block_4:
	lw		t2,	0(s7)
	lw		a4,	0(s1)
	li		a1,	4
	mul		a1,	a1,	a4
	add		a1,	t2,	a1
	lw		t2,	0(t1)
	sw		t2,	0(a1)
	lw		a0,	0(s7)
	lw		a1,	0(a7)
	lw		t2,	0(s1)
	li		a7,	1
	sub		a2,	t2,	a7
	call	f_qsort_1
	lw		a0,	0(s7)
	lw		t2,	0(s1)
	li		a7,	1
	add		a1,	t2,	a7
	lw		a7,	52(sp)
	lw		a2,	0(a7)
	call	f_qsort_1
	j		.normal_block_3
.while_condition_block_2:
	lw		a3,	0(s1)
	lw		a1,	0(a4)
	slt		a1,	a3,	a1
	beqz	a1,	.short_circuit_else_body_block_1
	j		.short_circuit_if_body_block_1
.while_body_block_2:
	lw		a1,	0(a4)
	li		a3,	-1
	add		a1,	a1,	a3
	sw		a1,	0(a4)
	j		.while_condition_block_2
.normal_block_5:
	lw		a1,	0(s1)
	lw		a3,	0(a4)
	slt		a1,	a1,	a3
	beqz	a1,	.normal_block_6
	j		.if_body_block_2
.short_circuit_if_body_block_1:
	lw		a3,	0(s7)
	lw		a6,	0(a4)
	li		a1,	4
	mul		a1,	a1,	a6
	add		a1,	a3,	a1
	lw		a1,	0(a1)
	addi	a1,	a1,	8
	lw		a3,	0(a1)
	lw		a1,	0(t1)
	addi	a1,	a1,	8
	lw		a1,	0(a1)
	slt		a1,	a3,	a1
	seqz	a1,	a1,
	sw		a1,	0(t2)
	j		.short_circuit_end_block_1
.short_circuit_else_body_block_1:
	li		a1,	0
	sw		a1,	0(t2)
	j		.short_circuit_end_block_1
.short_circuit_end_block_1:
	lw		a1,	0(t2)
	beqz	a1,	.normal_block_5
	j		.while_body_block_2
.if_body_block_2:
	lw		a3,	0(s7)
	lw		a6,	0(s1)
	li		a1,	4
	mul		a1,	a1,	a6
	add		a2,	a3,	a1
	lw		a3,	0(s7)
	lw		a6,	0(a4)
	li		a1,	4
	mul		a1,	a1,	a6
	add		a1,	a3,	a1
	lw		a1,	0(a1)
	sw		a1,	0(a2)
	lw		a3,	0(s1)
	li		a1,	1
	add		a1,	a3,	a1
	sw		a1,	0(s1)
	j		.normal_block_6
.normal_block_6:
	j		.while_condition_block_3
.while_condition_block_3:
	lw		a3,	0(s1)
	lw		a1,	0(a4)
	slt		a1,	a3,	a1
	beqz	a1,	.short_circuit_else_body_block_2
	j		.short_circuit_if_body_block_2
.while_body_block_3:
	lw		a1,	0(s1)
	li		a3,	1
	add		a1,	a1,	a3
	sw		a1,	0(s1)
	j		.while_condition_block_3
.normal_block_7:
	lw		a1,	0(s1)
	lw		a3,	0(a4)
	slt		a1,	a1,	a3
	beqz	a1,	.normal_block_8
	j		.if_body_block_3
.short_circuit_if_body_block_2:
	lw		a1,	0(s7)
	lw		a6,	0(s1)
	li		a3,	4
	mul		a3,	a3,	a6
	add		a1,	a1,	a3
	lw		a1,	0(a1)
	addi	a1,	a1,	8
	lw		a3,	0(a1)
	lw		a1,	0(t1)
	addi	a1,	a1,	8
	lw		a1,	0(a1)
	slt		a1,	a3,	a1
	sw		a1,	0(s11)
	j		.short_circuit_end_block_2
.short_circuit_else_body_block_2:
	li		a1,	0
	sw		a1,	0(s11)
	j		.short_circuit_end_block_2
.short_circuit_end_block_2:
	lw		a1,	0(s11)
	beqz	a1,	.normal_block_7
	j		.while_body_block_3
.if_body_block_3:
	lw		a6,	0(s7)
	lw		a1,	0(a4)
	li		a3,	4
	mul		a3,	a3,	a1
	add		a2,	a6,	a3
	lw		a1,	0(s7)
	lw		a6,	0(s1)
	li		a3,	4
	mul		a3,	a3,	a6
	add		a1,	a1,	a3
	lw		a1,	0(a1)
	sw		a1,	0(a2)
	lw		a3,	0(a4)
	li		a1,	-1
	add		a1,	a3,	a1
	sw		a1,	0(a4)
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
	sw		s2,	12(sp)
	sw		s8,	16(sp)
	addi	s2,	sp,	8
	j		.normal_block_9
.func_end_block_3:
	lw		s2,	12(sp)
	lw		s8,	16(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	20
	ret
.normal_block_9:
	la		a7,	n_addr_1
	lw		t2,	0(a7)
	li		a7,	1
	add		s8,	t2,	a7
	li		a7,	4
	mul		t2,	a7,	s8
	li		a7,	4
	add		a0,	t2,	a7
	call	_heap_malloc_1
	sw		s8,	0(a0)
	addi	a7,	a0,	4
	la		t2,	fa_addr_1
	sw		a7,	0(t2)
	la		a7,	n_addr_1
	lw		t2,	0(a7)
	li		a7,	1
	add		s8,	t2,	a7
	li		a7,	4
	mul		t2,	a7,	s8
	li		a7,	4
	add		a0,	t2,	a7
	call	_heap_malloc_1
	sw		s8,	0(a0)
	addi	a7,	a0,	4
	la		t2,	rk_addr_1
	sw		a7,	0(t2)
	li		a7,	1
	sw		a7,	0(s2)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		t2,	0(s2)
	la		a7,	n_addr_1
	lw		a7,	0(a7)
	sgt		a7,	t2,	a7
	seqz	a7,	a7,
	beqz	a7,	.normal_block_10
	j		.for_body_block_1
.for_body_block_1:
	la		a7,	fa_addr_1
	lw		t2,	0(a7)
	lw		a1,	0(s2)
	li		a7,	4
	mul		a7,	a7,	a1
	add		t2,	t2,	a7
	lw		a7,	0(s2)
	sw		a7,	0(t2)
	la		a7,	rk_addr_1
	lw		t2,	0(a7)
	lw		a7,	0(s2)
	li		a1,	4
	mul		a1,	a1,	a7
	add		a7,	t2,	a1
	li		t2,	1
	sw		t2,	0(a7)
	j		.for_update_block_1
.for_update_block_1:
	lw		a7,	0(s2)
	li		t2,	1
	add		a7,	a7,	t2
	sw		a7,	0(s2)
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
	sw		s10,	20(sp)
	addi	s1,	sp,	8
	addi	s10,	sp,	12
	j		.normal_block_11
.func_end_block_4:
	lw		a0,	0(s1)
	lw		s1,	16(sp)
	lw		s10,	20(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	24
	ret
.normal_block_11:
	sw		a0,	0(s10)
	lw		a7,	0(s10)
	la		t2,	fa_addr_1
	lw		t2,	0(t2)
	lw		a1,	0(s10)
	li		t1,	4
	mul		t1,	t1,	a1
	add		t2,	t2,	t1
	lw		t2,	0(t2)
	xor		a7,	a7,	t2
	seqz	a7,	a7,
	beqz	a7,	.normal_block_12
	j		.if_body_block_4
.if_body_block_4:
	lw		a7,	0(s10)
	sw		a7,	0(s1)
	j		.func_end_block_4
.normal_block_12:
	la		a7,	fa_addr_1
	lw		a7,	0(a7)
	lw		a1,	0(s10)
	li		t2,	4
	mul		t2,	t2,	a1
	add		a7,	a7,	t2
	lw		a0,	0(a7)
	call	f_find_1
	sw		a0,	0(s10)
	la		a7,	fa_addr_1
	lw		t2,	0(a7)
	lw		a1,	0(s10)
	li		a7,	4
	mul		a7,	a7,	a1
	add		a7,	t2,	a7
	lw		a7,	0(a7)
	sw		a7,	0(s1)
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
	sw		s1,	20(sp)
	sw		s2,	24(sp)
	sw		s4,	28(sp)
	addi	s2,	sp,	8
	addi	s4,	sp,	12
	addi	s1,	sp,	16
	j		.normal_block_15
.func_end_block_5:
	lw		a0,	0(s2)
	lw		s1,	20(sp)
	lw		s2,	24(sp)
	lw		s4,	28(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	32
	ret
.normal_block_15:
	sw		a0,	0(s4)
	sw		a1,	0(s1)
	lw		a0,	0(s4)
	call	f_find_1
	sw		a0,	0(s4)
	lw		a0,	0(s1)
	call	f_find_1
	sw		a0,	0(s1)
	lw		t2,	0(s4)
	lw		a7,	0(s1)
	xor		a7,	t2,	a7
	seqz	a7,	a7,
	beqz	a7,	.normal_block_16
	j		.if_body_block_5
.if_body_block_5:
	li		a7,	0
	sw		a7,	0(s2)
	j		.func_end_block_5
.normal_block_16:
	la		a7,	rk_addr_1
	lw		t2,	0(a7)
	lw		a7,	0(s4)
	li		a1,	4
	mul		a1,	a1,	a7
	add		a7,	t2,	a1
	lw		a7,	0(a7)
	la		t2,	rk_addr_1
	lw		t2,	0(t2)
	lw		t1,	0(s1)
	li		a1,	4
	mul		a1,	a1,	t1
	add		t2,	t2,	a1
	lw		t2,	0(t2)
	sgt		a7,	a7,	t2
	beqz	a7,	.else_body_block_6
	j		.if_body_block_6
.normal_block_17:
	j		.normal_block_16
.if_body_block_6:
	la		a7,	fa_addr_1
	lw		a1,	0(a7)
	lw		a7,	0(s1)
	li		t2,	4
	mul		t2,	t2,	a7
	add		t2,	a1,	t2
	lw		a7,	0(s4)
	sw		a7,	0(t2)
	la		a7,	rk_addr_1
	lw		a7,	0(a7)
	lw		t2,	0(s4)
	li		a1,	4
	mul		a1,	a1,	t2
	add		t2,	a7,	a1
	la		a7,	rk_addr_1
	lw		a1,	0(a7)
	lw		a7,	0(s4)
	li		t1,	4
	mul		t1,	t1,	a7
	add		a7,	a1,	t1
	lw		a4,	0(a7)
	la		a7,	rk_addr_1
	lw		a1,	0(a7)
	lw		t1,	0(s1)
	li		a7,	4
	mul		a7,	a7,	t1
	add		a7,	a1,	a7
	lw		a7,	0(a7)
	add		a7,	a4,	a7
	sw		a7,	0(t2)
	j		.normal_block_18
.else_body_block_6:
	la		a7,	fa_addr_1
	lw		a1,	0(a7)
	lw		t2,	0(s4)
	li		a7,	4
	mul		a7,	a7,	t2
	add		a7,	a1,	a7
	lw		t2,	0(s1)
	sw		t2,	0(a7)
	la		a7,	rk_addr_1
	lw		t2,	0(a7)
	lw		a7,	0(s1)
	li		a1,	4
	mul		a1,	a1,	a7
	add		t1,	t2,	a1
	la		a7,	rk_addr_1
	lw		t2,	0(a7)
	lw		a1,	0(s1)
	li		a7,	4
	mul		a7,	a7,	a1
	add		a7,	t2,	a7
	lw		t2,	0(a7)
	la		a7,	rk_addr_1
	lw		a1,	0(a7)
	lw		a7,	0(s4)
	li		a4,	4
	mul		a4,	a4,	a7
	add		a7,	a1,	a4
	lw		a7,	0(a7)
	add		a7,	t2,	a7
	sw		a7,	0(t1)
	j		.normal_block_18
.normal_block_18:
	li		a7,	1
	sw		a7,	0(s2)
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
	sw		s1,	32(sp)
	sw		s3,	36(sp)
	sw		s4,	40(sp)
	sw		s6,	44(sp)
	sw		s7,	48(sp)
	sw		s8,	52(sp)
	sw		s10,	56(sp)
	addi	s6,	sp,	8
	addi	s7,	sp,	12
	addi	s4,	sp,	16
	addi	s10,	sp,	20
	addi	s1,	sp,	24
	addi	s3,	sp,	28
	j		.normal_block_20
.func_end_block_6:
	lw		a0,	0(s6)
	lw		s1,	32(sp)
	lw		s3,	36(sp)
	lw		s4,	40(sp)
	lw		s6,	44(sp)
	lw		s7,	48(sp)
	lw		s8,	52(sp)
	lw		s10,	56(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	60
	ret
.normal_block_20:
	call	_main_initial_1
	call	f_getInt_1
	la		a7,	n_addr_1
	sw		a0,	0(a7)
	call	f_getInt_1
	la		a7,	m_addr_1
	sw		a0,	0(a7)
	la		a7,	m_addr_1
	lw		s8,	0(a7)
	li		a7,	8
	mul		a7,	a7,	s8
	li		t2,	4
	add		a0,	a7,	t2
	call	_heap_malloc_1
	sw		s8,	0(a0)
	addi	a7,	a0,	4
	la		t2,	e_addr_1
	sw		a7,	0(t2)
	li		a7,	0
	sw		a7,	0(s7)
	j		.for_condition_block_2
.for_condition_block_2:
	lw		a7,	0(s7)
	la		t2,	m_addr_1
	lw		t2,	0(t2)
	slt		a7,	a7,	t2
	beqz	a7,	.normal_block_21
	j		.for_body_block_2
.for_body_block_2:
	li		a0,	12
	call	_heap_malloc_1
	mv		s8,	a0
	sw		s8,	0(s10)
	mv		a0,	s10
	call	class_constructor_Edge.Edge_1
	sw		s8,	0(s4)
	lw		a7,	0(s4)
	addi	s8,	a7,	0
	call	f_getInt_1
	sw		a0,	0(s8)
	lw		a7,	0(s4)
	addi	s8,	a7,	4
	call	f_getInt_1
	sw		a0,	0(s8)
	lw		a7,	0(s4)
	addi	s8,	a7,	8
	call	f_getInt_1
	sw		a0,	0(s8)
	la		a7,	e_addr_1
	lw		a7,	0(a7)
	lw		t2,	0(s7)
	li		a1,	4
	mul		a1,	a1,	t2
	add		t2,	a7,	a1
	lw		a7,	0(s4)
	sw		a7,	0(t2)
	j		.for_update_block_2
.for_update_block_2:
	lw		t2,	0(s7)
	li		a7,	1
	add		a7,	t2,	a7
	sw		a7,	0(s7)
	j		.for_condition_block_2
.normal_block_21:
	la		a7,	e_addr_1
	lw		a0,	0(a7)
	la		a7,	m_addr_1
	lw		a7,	0(a7)
	li		t2,	1
	sub		a2,	a7,	t2
	li		a1,	0
	call	f_qsort_1
	call	f_init_1
	li		a7,	0
	sw		a7,	0(s7)
	li		a7,	0
	sw		a7,	0(s1)
	j		.while_condition_block_4
.while_condition_block_4:
	lw		t2,	0(s7)
	la		a7,	n_addr_1
	lw		a1,	0(a7)
	li		a7,	1
	sub		a7,	a1,	a7
	slt		a7,	t2,	a7
	beqz	a7,	.normal_block_22
	j		.while_body_block_4
.while_body_block_4:
	lw		a7,	0(s1)
	la		t2,	m_addr_1
	lw		t2,	0(t2)
	slt		a7,	a7,	t2
	seqz	a7,	a7,
	beqz	a7,	.normal_block_23
	j		.if_body_block_7
.normal_block_22:
	la		a7,	rk_addr_1
	lw		s8,	0(a7)
	li		a0,	1
	call	f_find_1
	li		a7,	4
	mul		a7,	a7,	a0
	add		a7,	s8,	a7
	lw		t2,	0(a7)
	la		a7,	n_addr_1
	lw		a7,	0(a7)
	xor		a7,	t2,	a7
	seqz	a7,	a7,
	beqz	a7,	.else_body_block_9
	j		.if_body_block_9
.if_body_block_7:
	li		a0,	-1
	call	f_printInt_1
	li		a7,	0
	sw		a7,	0(s6)
	j		.func_end_block_6
.normal_block_23:
	la		a7,	e_addr_1
	lw		t2,	0(a7)
	lw		a1,	0(s1)
	li		a7,	4
	mul		a7,	a7,	a1
	add		a7,	t2,	a7
	lw		a7,	0(a7)
	sw		a7,	0(s3)
	lw		a7,	0(s1)
	li		t2,	1
	add		a7,	a7,	t2
	sw		a7,	0(s1)
	lw		a7,	0(s3)
	addi	a7,	a7,	0
	lw		a0,	0(a7)
	lw		a7,	0(s3)
	addi	a7,	a7,	4
	lw		a1,	0(a7)
	call	f_union_1
	beqz	a0,	.normal_block_25
	j		.if_body_block_8
.normal_block_24:
	j		.normal_block_23
.if_body_block_8:
	lw		a7,	0(s7)
	li		t2,	1
	add		a7,	a7,	t2
	sw		a7,	0(s7)
	la		a7,	ans_addr_1
	lw		a7,	0(a7)
	lw		t2,	0(s3)
	addi	t2,	t2,	8
	lw		t2,	0(t2)
	add		t2,	a7,	t2
	la		a7,	ans_addr_1
	sw		t2,	0(a7)
	j		.normal_block_25
.normal_block_25:
	j		.while_condition_block_4
.if_body_block_9:
	la		a7,	ans_addr_1
	lw		a0,	0(a7)
	call	f_printInt_1
	j		.normal_block_26
.else_body_block_9:
	li		a0,	-1
	call	f_printInt_1
	j		.normal_block_26
.normal_block_26:
	li		a7,	0
	sw		a7,	0(s6)
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
	li		t2,	0
	la		a7,	ans_addr_1
	sw		t2,	0(a7)
	li		t2,	0
	la		a7,	fa_addr_1
	sw		t2,	0(a7)
	li		t2,	0
	la		a7,	rk_addr_1
	sw		t2,	0(a7)
	li		t2,	0
	la		a7,	e_addr_1
	sw		t2,	0(a7)
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

