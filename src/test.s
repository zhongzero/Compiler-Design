	.section	.text
	.globl	f_qsort_1
	.p2align	2
	.type	f_qsort_1,@function
f_qsort_1:
.func_begin_block_2:
	addi	sp,	sp,	-32
	sw		s0,	0(sp)
	addi	s0,	sp,	32
	sw		ra,	4(sp)
	sw		s6,	16(sp)
	sw		s7,	20(sp)
	sw		s9,	24(sp)
	mv		t4,	a0
	mv		a5,	a1
	mv		s9,	a2
	addi	a2,	sp,	8
	sw		a2,	28(sp)
	addi	a2,	sp,	12
	j		.normal_block_2
.func_end_block_2:
	lw		s6,	16(sp)
	lw		s7,	20(sp)
	lw		s9,	24(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	32
	ret
.normal_block_2:
	lw		a6,	28(sp)
	sw		t4,	0(a6)
	slt		a6,	a5,	s9
	beqz	a6,	.normal_block_3
	j		.if_body_block_1
.if_body_block_1:
	mv		s7,	a5
	mv		t4,	s9
	lw		a6,	28(sp)
	lw		t2,	0(a6)
	li		a6,	4
	mul		a6,	a6,	a5
	add		a6,	t2,	a6
	lw		a6,	0(a6)
	sw		a6,	0(a2)
	j		.while_condition_block_1
.normal_block_3:
	j		.func_end_block_2
.while_condition_block_1:
	slt		a6,	s7,	t4
	beqz	a6,	.normal_block_4
	j		.while_body_block_1
.while_body_block_1:
	j		.while_condition_block_2
.normal_block_4:
	lw		a6,	28(sp)
	lw		t4,	0(a6)
	li		a6,	4
	mul		a6,	a6,	s7
	add		a6,	t4,	a6
	lw		a2,	0(a2)
	sw		a2,	0(a6)
	lw		a2,	28(sp)
	lw		t4,	0(a2)
	mv		a2,	s7
	li		a6,	1
	sub		a2,	a2,	a6
	mv		a0,	t4
	mv		a1,	a5
	call	f_qsort_1
	lw		a2,	28(sp)
	lw		a6,	0(a2)
	mv		a2,	s7
	li		a5,	1
	add		a5,	a2,	a5
	mv		a2,	s9
	mv		a0,	a6
	mv		a1,	a5
	call	f_qsort_1
	j		.normal_block_3
.while_condition_block_2:
	mv		a6,	s7
	slt		a6,	a6,	t4
	beqz	a6,	.short_circuit_else_body_block_1
	j		.short_circuit_if_body_block_1
.while_body_block_2:
	li		a6,	-1
	add		t4,	t4,	a6
	j		.while_condition_block_2
.normal_block_5:
	slt		a6,	s7,	t4
	beqz	a6,	.normal_block_6
	j		.if_body_block_2
.short_circuit_if_body_block_1:
	lw		a6,	28(sp)
	lw		a6,	0(a6)
	li		t2,	4
	mul		t2,	t2,	t4
	add		a6,	a6,	t2
	lw		a6,	0(a6)
	addi	a6,	a6,	8
	lw		a6,	0(a6)
	lw		t2,	0(a2)
	addi	t2,	t2,	8
	lw		t2,	0(t2)
	slt		a6,	a6,	t2
	seqz	a6,	a6,
	j		.short_circuit_end_block_1
.short_circuit_else_body_block_1:
	li		a6,	0
	j		.short_circuit_end_block_1
.short_circuit_end_block_1:
	beqz	a6,	.normal_block_5
	j		.while_body_block_2
.if_body_block_2:
	lw		a6,	28(sp)
	lw		t3,	0(a6)
	mv		a6,	s7
	li		t2,	4
	mul		t2,	t2,	a6
	add		t3,	t3,	t2
	lw		a6,	28(sp)
	lw		t2,	0(a6)
	li		a6,	4
	mul		a6,	a6,	t4
	add		a6,	t2,	a6
	lw		a6,	0(a6)
	sw		a6,	0(t3)
	li		a6,	1
	add		a6,	s7,	a6
	mv		s7,	a6
	j		.normal_block_6
.normal_block_6:
	j		.while_condition_block_3
.while_condition_block_3:
	slt		a6,	s7,	t4
	beqz	a6,	.short_circuit_else_body_block_2
	j		.short_circuit_if_body_block_2
.while_body_block_3:
	li		a6,	1
	add		s7,	s7,	a6
	j		.while_condition_block_3
.normal_block_7:
	mv		a6,	s7
	slt		a6,	a6,	t4
	beqz	a6,	.normal_block_8
	j		.if_body_block_3
.short_circuit_if_body_block_2:
	lw		a6,	28(sp)
	lw		a6,	0(a6)
	li		t2,	4
	mul		t2,	t2,	s7
	add		a6,	a6,	t2
	lw		a6,	0(a6)
	addi	a6,	a6,	8
	lw		t2,	0(a6)
	lw		a6,	0(a2)
	addi	a6,	a6,	8
	lw		a6,	0(a6)
	slt		a6,	t2,	a6
	j		.short_circuit_end_block_2
.short_circuit_else_body_block_2:
	li		a6,	0
	j		.short_circuit_end_block_2
.short_circuit_end_block_2:
	beqz	a6,	.normal_block_7
	j		.while_body_block_3
.if_body_block_3:
	lw		a6,	28(sp)
	lw		a6,	0(a6)
	li		t2,	4
	mul		t2,	t2,	t4
	add		t2,	a6,	t2
	lw		a6,	28(sp)
	lw		a6,	0(a6)
	li		t3,	4
	mul		t3,	t3,	s7
	add		a6,	a6,	t3
	lw		a6,	0(a6)
	sw		a6,	0(t2)
	li		a6,	-1
	add		t4,	t4,	a6
	j		.normal_block_8
.normal_block_8:
	j		.while_condition_block_1
	.size	f_qsort_1,	.-f_qsort_1

	.globl	f_init_1
	.p2align	2
	.type	f_init_1,@function
f_init_1:
.func_begin_block_3:
	addi	sp,	sp,	-12
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		ra,	4(sp)
	sw		s9,	8(sp)
	j		.normal_block_9
.func_end_block_3:
	lw		s9,	8(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
	ret
.normal_block_9:
	la		a2,	n_addr_1
	lw		s9,	0(a2)
	li		a2,	1
	add		s9,	s9,	a2
	li		a2,	4
	mul		a2,	a2,	s9
	li		a5,	4
	add		a2,	a2,	a5
	mv		a0,	a2
	call	_heap_malloc_1
	mv		a2,	a0
	sw		s9,	0(a2)
	addi	a2,	a2,	4
	la		s9,	fa_addr_1
	sw		a2,	0(s9)
	la		a2,	n_addr_1
	lw		s9,	0(a2)
	li		a2,	1
	add		s9,	s9,	a2
	li		a2,	4
	mul		a2,	a2,	s9
	li		a5,	4
	add		a2,	a2,	a5
	mv		a0,	a2
	call	_heap_malloc_1
	mv		a2,	a0
	sw		s9,	0(a2)
	addi	a2,	a2,	4
	la		s9,	rk_addr_1
	sw		a2,	0(s9)
	li		a2,	1
	j		.for_condition_block_1
.for_condition_block_1:
	la		s9,	n_addr_1
	lw		s9,	0(s9)
	sgt		s9,	a2,	s9
	seqz	s9,	s9,
	beqz	s9,	.normal_block_10
	j		.for_body_block_1
.for_body_block_1:
	la		s9,	fa_addr_1
	lw		s9,	0(s9)
	li		a5,	4
	mul		a5,	a5,	a2
	add		s9,	s9,	a5
	sw		a2,	0(s9)
	la		s9,	rk_addr_1
	lw		a5,	0(s9)
	li		s9,	4
	mul		s9,	s9,	a2
	add		a5,	a5,	s9
	li		s9,	1
	sw		s9,	0(a5)
	j		.for_update_block_1
.for_update_block_1:
	li		s9,	1
	add		a2,	a2,	s9
	j		.for_condition_block_1
.normal_block_10:
	j		.func_end_block_3
	.size	f_init_1,	.-f_init_1

	.globl	f_find_1
	.p2align	2
	.type	f_find_1,@function
f_find_1:
.func_begin_block_4:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	mv		a2,	a0
	j		.normal_block_11
.func_end_block_4:
	mv		a0,	a2
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_11:
	mv		a5,	a2
	la		a6,	fa_addr_1
	lw		t4,	0(a6)
	li		a6,	4
	mul		a6,	a6,	a2
	add		a6,	t4,	a6
	lw		a6,	0(a6)
	xor		a5,	a5,	a6
	seqz	a5,	a5,
	beqz	a5,	.normal_block_12
	j		.if_body_block_4
.if_body_block_4:
	j		.func_end_block_4
.normal_block_12:
	la		a5,	fa_addr_1
	lw		a5,	0(a5)
	li		a6,	4
	mul		a6,	a6,	a2
	add		a2,	a5,	a6
	lw		a2,	0(a2)
	mv		a0,	a2
	call	f_find_1
	mv		a2,	a0
	la		a5,	fa_addr_1
	lw		a5,	0(a5)
	li		a6,	4
	mul		a6,	a6,	a2
	add		a2,	a5,	a6
	lw		a2,	0(a2)
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
	addi	sp,	sp,	-16
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		ra,	4(sp)
	sw		s2,	8(sp)
	sw		s6,	12(sp)
	mv		s6,	a0
	mv		s2,	a1
	j		.normal_block_15
.func_end_block_5:
	mv		a0,	a2
	lw		s2,	8(sp)
	lw		s6,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
.normal_block_15:
	mv		a0,	s6
	call	f_find_1
	mv		s6,	a0
	mv		a0,	s2
	call	f_find_1
	mv		s2,	a0
	xor		a2,	s6,	s2
	seqz	a2,	a2,
	beqz	a2,	.normal_block_16
	j		.if_body_block_5
.if_body_block_5:
	li		a2,	0
	j		.func_end_block_5
.normal_block_16:
	la		a2,	rk_addr_1
	lw		a2,	0(a2)
	li		a5,	4
	mul		a5,	a5,	s6
	add		a2,	a2,	a5
	lw		a5,	0(a2)
	la		a2,	rk_addr_1
	lw		a2,	0(a2)
	li		a6,	4
	mul		a6,	a6,	s2
	add		a2,	a2,	a6
	lw		a2,	0(a2)
	sgt		a2,	a5,	a2
	beqz	a2,	.else_body_block_6
	j		.if_body_block_6
.normal_block_17:
	j		.normal_block_16
.if_body_block_6:
	la		a2,	fa_addr_1
	lw		a5,	0(a2)
	li		a2,	4
	mul		a2,	a2,	s2
	add		a2,	a5,	a2
	sw		s6,	0(a2)
	la		a2,	rk_addr_1
	lw		a2,	0(a2)
	li		a5,	4
	mul		a5,	a5,	s6
	add		a2,	a2,	a5
	la		a5,	rk_addr_1
	lw		a5,	0(a5)
	li		a6,	4
	mul		a6,	a6,	s6
	add		a5,	a5,	a6
	lw		a5,	0(a5)
	la		a6,	rk_addr_1
	lw		a6,	0(a6)
	li		t4,	4
	mul		t4,	t4,	s2
	add		a6,	a6,	t4
	lw		a6,	0(a6)
	add		a5,	a5,	a6
	sw		a5,	0(a2)
	j		.normal_block_18
.else_body_block_6:
	la		a2,	fa_addr_1
	lw		a2,	0(a2)
	li		a5,	4
	mul		a5,	a5,	s6
	add		a2,	a2,	a5
	sw		s2,	0(a2)
	la		a2,	rk_addr_1
	lw		a2,	0(a2)
	li		a5,	4
	mul		a5,	a5,	s2
	add		a2,	a2,	a5
	la		a5,	rk_addr_1
	lw		a5,	0(a5)
	li		a6,	4
	mul		a6,	a6,	s2
	add		a5,	a5,	a6
	lw		t4,	0(a5)
	la		a5,	rk_addr_1
	lw		a5,	0(a5)
	li		a6,	4
	mul		a6,	a6,	s6
	add		a5,	a5,	a6
	lw		a5,	0(a5)
	add		a5,	t4,	a5
	sw		a5,	0(a2)
	j		.normal_block_18
.normal_block_18:
	li		a2,	1
	j		.func_end_block_5
.normal_block_19:
	j		.func_end_block_5
	.size	f_union_1,	.-f_union_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_6:
	addi	sp,	sp,	-40
	sw		s0,	0(sp)
	addi	s0,	sp,	40
	sw		ra,	4(sp)
	sw		s3,	20(sp)
	sw		s4,	24(sp)
	sw		s8,	28(sp)
	sw		s9,	32(sp)
	sw		s10,	36(sp)
	addi	s10,	sp,	8
	addi	s3,	sp,	12
	addi	s9,	sp,	16
	j		.normal_block_20
.func_end_block_6:
	mv		a0,	a2
	lw		s3,	20(sp)
	lw		s4,	24(sp)
	lw		s8,	28(sp)
	lw		s9,	32(sp)
	lw		s10,	36(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	40
	ret
.normal_block_20:
	call	_main_initial_1
	call	f_getInt_1
	mv		a2,	a0
	la		s8,	n_addr_1
	sw		a2,	0(s8)
	call	f_getInt_1
	mv		s8,	a0
	la		a2,	m_addr_1
	sw		s8,	0(a2)
	la		a2,	m_addr_1
	lw		s8,	0(a2)
	li		a2,	8
	mul		a2,	a2,	s8
	li		s4,	4
	add		a2,	a2,	s4
	mv		a0,	a2
	call	_heap_malloc_1
	mv		a2,	a0
	sw		s8,	0(a2)
	addi	a2,	a2,	4
	la		s8,	e_addr_1
	sw		a2,	0(s8)
	li		s4,	0
	j		.for_condition_block_2
.for_condition_block_2:
	la		a2,	m_addr_1
	lw		a2,	0(a2)
	slt		a2,	s4,	a2
	beqz	a2,	.normal_block_21
	j		.for_body_block_2
.for_body_block_2:
	li		a2,	12
	mv		a0,	a2
	call	_heap_malloc_1
	mv		s8,	a0
	sw		s8,	0(s3)
	mv		a0,	s3
	call	class_constructor_Edge.Edge_1
	sw		s8,	0(s10)
	lw		a2,	0(s10)
	addi	s8,	a2,	0
	call	f_getInt_1
	mv		a2,	a0
	sw		a2,	0(s8)
	lw		a2,	0(s10)
	addi	s8,	a2,	4
	call	f_getInt_1
	mv		a2,	a0
	sw		a2,	0(s8)
	lw		a2,	0(s10)
	addi	s8,	a2,	8
	call	f_getInt_1
	mv		a2,	a0
	sw		a2,	0(s8)
	la		a2,	e_addr_1
	lw		s8,	0(a2)
	li		a2,	4
	mul		a2,	a2,	s4
	add		s8,	s8,	a2
	lw		a2,	0(s10)
	sw		a2,	0(s8)
	j		.for_update_block_2
.for_update_block_2:
	li		a2,	1
	add		s4,	s4,	a2
	j		.for_condition_block_2
.normal_block_21:
	la		a2,	e_addr_1
	lw		s8,	0(a2)
	la		a2,	m_addr_1
	lw		a2,	0(a2)
	li		s4,	1
	sub		a2,	a2,	s4
	mv		a0,	s8
	li		s8,	0
	mv		a1,	s8
	call	f_qsort_1
	call	f_init_1
	li		s4,	0
	li		s8,	0
	j		.while_condition_block_4
.while_condition_block_4:
	la		a2,	n_addr_1
	lw		a2,	0(a2)
	li		a5,	1
	sub		a2,	a2,	a5
	slt		a2,	s4,	a2
	beqz	a2,	.normal_block_22
	j		.while_body_block_4
.while_body_block_4:
	la		a2,	m_addr_1
	lw		a2,	0(a2)
	slt		a2,	s8,	a2
	seqz	a2,	a2,
	beqz	a2,	.normal_block_23
	j		.if_body_block_7
.normal_block_22:
	la		a2,	rk_addr_1
	lw		s8,	0(a2)
	li		a2,	1
	mv		a0,	a2
	call	f_find_1
	mv		a2,	a0
	li		s9,	4
	mul		s9,	s9,	a2
	add		a2,	s8,	s9
	lw		s8,	0(a2)
	la		a2,	n_addr_1
	lw		a2,	0(a2)
	xor		a2,	s8,	a2
	seqz	a2,	a2,
	beqz	a2,	.else_body_block_9
	j		.if_body_block_9
.if_body_block_7:
	li		a2,	-1
	mv		a0,	a2
	call	f_printInt_1
	li		a2,	0
	j		.func_end_block_6
.normal_block_23:
	la		a2,	e_addr_1
	lw		a5,	0(a2)
	li		a2,	4
	mul		a2,	a2,	s8
	add		a2,	a5,	a2
	lw		a2,	0(a2)
	sw		a2,	0(s9)
	li		a2,	1
	add		s8,	s8,	a2
	lw		a2,	0(s9)
	addi	a2,	a2,	0
	lw		a5,	0(a2)
	lw		a2,	0(s9)
	addi	a2,	a2,	4
	lw		a2,	0(a2)
	mv		a0,	a5
	mv		a1,	a2
	call	f_union_1
	mv		a2,	a0
	beqz	a2,	.normal_block_25
	j		.if_body_block_8
.normal_block_24:
	j		.normal_block_23
.if_body_block_8:
	li		a2,	1
	add		s4,	s4,	a2
	la		a2,	ans_addr_1
	lw		a2,	0(a2)
	lw		a5,	0(s9)
	addi	a5,	a5,	8
	lw		a5,	0(a5)
	add		a2,	a2,	a5
	la		a5,	ans_addr_1
	sw		a2,	0(a5)
	j		.normal_block_25
.normal_block_25:
	j		.while_condition_block_4
.if_body_block_9:
	la		a2,	ans_addr_1
	lw		a2,	0(a2)
	mv		a0,	a2
	call	f_printInt_1
	j		.normal_block_26
.else_body_block_9:
	li		a2,	-1
	mv		a0,	a2
	call	f_printInt_1
	j		.normal_block_26
.normal_block_26:
	li		a2,	0
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
	la		a5,	ans_addr_1
	sw		a2,	0(a5)
	li		a5,	0
	la		a2,	fa_addr_1
	sw		a5,	0(a2)
	li		a2,	0
	la		a5,	rk_addr_1
	sw		a2,	0(a5)
	li		a2,	0
	la		a5,	e_addr_1
	sw		a2,	0(a5)
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
	mv		a2,	a0
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

