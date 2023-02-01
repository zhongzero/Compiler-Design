	.section	.text
	.globl	f_getHash_1
	.p2align	2
	.type	f_getHash_1,@function
f_getHash_1:
.func_begin_block_2:
	addi	sp,	sp,	-16
	sw		s0,	0(sp)
	addi	s0,	sp,	16
	sw		ra,	4(sp)
	addi	a7,	sp,	8
	addi	a5,	sp,	12
	j		.normal_block_2
.func_end_block_2:
	lw		a0,	0(a7)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	16
	ret
.normal_block_2:
	sw		a0,	0(a5)
	lw		a5,	0(a5)
	li		a2,	237
	mul		a2,	a5,	a2
	la		a5,	hashsize_addr_1
	lw		a5,	0(a5)
	rem		a5,	a2,	a5
	sw		a5,	0(a7)
	j		.func_end_block_2
.normal_block_3:
	j		.func_end_block_2
	.size	f_getHash_1,	.-f_getHash_1

	.globl	f_put_1
	.p2align	2
	.type	f_put_1,@function
f_put_1:
.func_begin_block_3:
	addi	sp,	sp,	-56
	sw		s0,	0(sp)
	addi	s0,	sp,	56
	sw		ra,	4(sp)
	sw		s1,	32(sp)
	sw		s3,	36(sp)
	sw		s4,	40(sp)
	sw		s6,	44(sp)
	sw		s7,	48(sp)
	sw		s9,	52(sp)
	addi	s9,	sp,	8
	addi	s1,	sp,	12
	addi	s6,	sp,	16
	addi	s4,	sp,	20
	addi	s3,	sp,	24
	addi	s7,	sp,	28
	j		.normal_block_4
.func_end_block_3:
	lw		s1,	32(sp)
	lw		s3,	36(sp)
	lw		s4,	40(sp)
	lw		s6,	44(sp)
	lw		s7,	48(sp)
	lw		s9,	52(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	56
	ret
.normal_block_4:
	sw		a0,	0(s9)
	sw		a1,	0(s1)
	li		a5,	0
	sw		a5,	0(s4)
	lw		a0,	0(s9)
	call	f_getHash_1
	sw		a0,	0(s6)
	la		a5,	table_addr_1
	lw		a5,	0(a5)
	lw		a2,	0(s6)
	li		a7,	4
	mul		a7,	a7,	a2
	add		a5,	a5,	a7
	lw		a5,	0(a5)
	li		a7,	0
	xor		a5,	a5,	a7
	seqz	a5,	a5,
	beqz	a5,	.normal_block_5
	j		.if_body_block_1
.if_body_block_1:
	la		a5,	table_addr_1
	lw		a2,	0(a5)
	lw		a5,	0(s6)
	li		a7,	4
	mul		a7,	a7,	a5
	add		s4,	a2,	a7
	li		a0,	16
	call	_heap_malloc_1
	mv		s7,	a0
	sw		s7,	0(s3)
	mv		a0,	s3
	call	class_constructor_node.node_1
	sw		s7,	0(s4)
	la		a5,	table_addr_1
	lw		a7,	0(a5)
	lw		a2,	0(s6)
	li		a5,	4
	mul		a5,	a5,	a2
	add		a5,	a7,	a5
	lw		a5,	0(a5)
	addi	a7,	a5,	0
	lw		a5,	0(s9)
	sw		a5,	0(a7)
	la		a5,	table_addr_1
	lw		a5,	0(a5)
	lw		a7,	0(s6)
	li		a2,	4
	mul		a2,	a2,	a7
	add		a5,	a5,	a2
	lw		a5,	0(a5)
	addi	a7,	a5,	4
	lw		a5,	0(s1)
	sw		a5,	0(a7)
	la		a5,	table_addr_1
	lw		a5,	0(a5)
	lw		a7,	0(s6)
	li		a2,	4
	mul		a2,	a2,	a7
	add		a5,	a5,	a2
	lw		a5,	0(a5)
	addi	a7,	a5,	8
	li		a5,	0
	sw		a5,	0(a7)
	j		.func_end_block_3
.normal_block_5:
	la		a5,	table_addr_1
	lw		a7,	0(a5)
	lw		a5,	0(s6)
	li		a2,	4
	mul		a2,	a2,	a5
	add		a5,	a7,	a2
	lw		a5,	0(a5)
	sw		a5,	0(s4)
	j		.while_condition_block_1
.normal_block_6:
	j		.normal_block_5
.while_condition_block_1:
	lw		a5,	0(s4)
	addi	a5,	a5,	0
	lw		a7,	0(a5)
	lw		a5,	0(s9)
	xor		a5,	a7,	a5
	snez	a5,	a5,
	beqz	a5,	.normal_block_7
	j		.while_body_block_1
.while_body_block_1:
	lw		a5,	0(s4)
	addi	a5,	a5,	8
	lw		a7,	0(a5)
	li		a5,	0
	xor		a5,	a7,	a5
	seqz	a5,	a5,
	beqz	a5,	.normal_block_8
	j		.if_body_block_2
.normal_block_7:
	lw		a5,	0(s4)
	addi	a5,	a5,	4
	lw		a7,	0(s1)
	sw		a7,	0(a5)
	j		.func_end_block_3
.if_body_block_2:
	lw		a5,	0(s4)
	addi	s3,	a5,	8
	li		a0,	16
	call	_heap_malloc_1
	mv		s6,	a0
	sw		s6,	0(s7)
	mv		a0,	s7
	call	class_constructor_node.node_1
	sw		s6,	0(s3)
	lw		a5,	0(s4)
	addi	a5,	a5,	8
	lw		a5,	0(a5)
	addi	a5,	a5,	0
	lw		a7,	0(s9)
	sw		a7,	0(a5)
	lw		a5,	0(s4)
	addi	a5,	a5,	8
	lw		a5,	0(a5)
	addi	a7,	a5,	8
	li		a5,	0
	sw		a5,	0(a7)
	j		.normal_block_8
.normal_block_8:
	lw		a5,	0(s4)
	addi	a5,	a5,	8
	lw		a5,	0(a5)
	sw		a5,	0(s4)
	j		.while_condition_block_1
	.size	f_put_1,	.-f_put_1

	.globl	f_get_1
	.p2align	2
	.type	f_get_1,@function
f_get_1:
.func_begin_block_4:
	addi	sp,	sp,	-36
	sw		s0,	0(sp)
	addi	s0,	sp,	36
	sw		ra,	4(sp)
	sw		s4,	20(sp)
	sw		s7,	24(sp)
	sw		s9,	28(sp)
	sw		s11,	32(sp)
	addi	s9,	sp,	8
	addi	s7,	sp,	12
	addi	s4,	sp,	16
	j		.normal_block_9
.func_end_block_4:
	lw		a0,	0(s9)
	lw		s4,	20(sp)
	lw		s7,	24(sp)
	lw		s9,	28(sp)
	lw		s11,	32(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	36
	ret
.normal_block_9:
	sw		a0,	0(s7)
	li		a5,	0
	sw		a5,	0(s4)
	la		a5,	table_addr_1
	lw		s11,	0(a5)
	lw		a0,	0(s7)
	call	f_getHash_1
	li		a5,	4
	mul		a5,	a5,	a0
	add		a5,	s11,	a5
	lw		a5,	0(a5)
	sw		a5,	0(s4)
	j		.while_condition_block_2
.while_condition_block_2:
	lw		a5,	0(s4)
	addi	a5,	a5,	0
	lw		a5,	0(a5)
	lw		a7,	0(s7)
	xor		a5,	a5,	a7
	snez	a5,	a5,
	beqz	a5,	.normal_block_10
	j		.while_body_block_2
.while_body_block_2:
	lw		a5,	0(s4)
	addi	a5,	a5,	8
	lw		a5,	0(a5)
	sw		a5,	0(s4)
	j		.while_condition_block_2
.normal_block_10:
	lw		a5,	0(s4)
	addi	a5,	a5,	4
	lw		a5,	0(a5)
	sw		a5,	0(s9)
	j		.func_end_block_4
.normal_block_11:
	j		.func_end_block_4
	.size	f_get_1,	.-f_get_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_5:
	addi	sp,	sp,	-28
	sw		s0,	0(sp)
	addi	s0,	sp,	28
	sw		ra,	4(sp)
	sw		s1,	16(sp)
	sw		s5,	20(sp)
	sw		s8,	24(sp)
	addi	s1,	sp,	8
	addi	s8,	sp,	12
	j		.normal_block_12
.func_end_block_5:
	lw		a0,	0(s1)
	lw		s1,	16(sp)
	lw		s5,	20(sp)
	lw		s8,	24(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	28
	ret
.normal_block_12:
	call	_main_initial_1
	li		a0,	804
	call	_heap_malloc_1
	li		a5,	100
	sw		a5,	0(a0)
	addi	a5,	a0,	4
	la		a7,	table_addr_1
	sw		a5,	0(a7)
	li		a5,	0
	sw		a5,	0(s8)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		a5,	0(s8)
	la		a7,	hashsize_addr_1
	lw		a7,	0(a7)
	slt		a5,	a5,	a7
	beqz	a5,	.normal_block_13
	j		.for_body_block_1
.for_body_block_1:
	la		a5,	table_addr_1
	lw		a5,	0(a5)
	lw		a7,	0(s8)
	li		a2,	4
	mul		a2,	a2,	a7
	add		a5,	a5,	a2
	li		a7,	0
	sw		a7,	0(a5)
	j		.for_update_block_1
.for_update_block_1:
	lw		a5,	0(s8)
	li		a7,	1
	add		a5,	a5,	a7
	sw		a5,	0(s8)
	j		.for_condition_block_1
.normal_block_13:
	li		a5,	0
	sw		a5,	0(s8)
	j		.for_condition_block_2
.for_condition_block_2:
	lw		a5,	0(s8)
	li		a7,	1000
	slt		a5,	a5,	a7
	beqz	a5,	.normal_block_14
	j		.for_body_block_2
.for_body_block_2:
	lw		a0,	0(s8)
	lw		a1,	0(s8)
	call	f_put_1
	j		.for_update_block_2
.for_update_block_2:
	lw		a5,	0(s8)
	li		a7,	1
	add		a5,	a5,	a7
	sw		a5,	0(s8)
	j		.for_condition_block_2
.normal_block_14:
	li		a5,	0
	sw		a5,	0(s8)
	j		.for_condition_block_3
.for_condition_block_3:
	lw		a7,	0(s8)
	li		a5,	1000
	slt		a5,	a7,	a5
	beqz	a5,	.normal_block_15
	j		.for_body_block_3
.for_body_block_3:
	lw		a0,	0(s8)
	call	f_toString_1
	la		a5,	const_string_1
	addi	a1,	a5,	0
	call	_string_merge_1
	mv		s5,	a0
	lw		a0,	0(s8)
	call	f_get_1
	call	f_toString_1
	mv		a1,	a0
	mv		a0,	s5
	call	_string_merge_1
	call	f_println_1
	j		.for_update_block_3
.for_update_block_3:
	lw		a5,	0(s8)
	li		a7,	1
	add		a5,	a5,	a7
	sw		a5,	0(s8)
	j		.for_condition_block_3
.normal_block_15:
	li		a5,	0
	sw		a5,	0(s1)
	j		.func_end_block_5
.normal_block_16:
	j		.func_end_block_5
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_6:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	j		.normal_block_17
.func_end_block_6:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_17:
	li		a5,	100
	la		a7,	hashsize_addr_1
	sw		a5,	0(a7)
	li		a7,	0
	la		a5,	table_addr_1
	sw		a7,	0(a5)
	j		.func_end_block_6
	.size	_main_initial_1,	.-_main_initial_1

	.globl	class_constructor_node.node_1
	.p2align	2
	.type	class_constructor_node.node_1,@function
class_constructor_node.node_1:
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
	.size	class_constructor_node.node_1,	.-class_constructor_node.node_1

	.section	.bss
	.globl	hashsize_addr_1
	.type	hashsize_addr_1,@object
hashsize_addr_1:
	.word	0
	.size	hashsize_addr_1,	4

	.globl	table_addr_1
	.type	table_addr_1,@object
table_addr_1:
	.word	0
	.size	table_addr_1,	4

	.section	.rodata
	.type	const_string_1,@object
const_string_1:
	.string	" "
	.size	const_string_1,	3


