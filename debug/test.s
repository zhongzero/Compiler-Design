	.section	.text
	.globl	f_cd_1
	.p2align	2
	.type	f_cd_1,@function
f_cd_1:
.func_begin_block_1:
	addi	sp,	sp,	-64
	sw		s0,	0(sp)
	addi	s0,	sp,	64
	sw		ra,	4(sp)
	sw		s3,	32(sp)
	sw		s4,	36(sp)
	sw		s7,	40(sp)
	sw		s9,	44(sp)
	sw		s10,	48(sp)
	sw		s11,	52(sp)
	mv		a6,	a0
	mv		t1,	a1
	addi	s10,	sp,	8
	sw		s10,	56(sp)
	addi	s10,	sp,	12
	addi	s3,	sp,	16
	addi	s11,	sp,	20
	addi	s9,	sp,	24
	addi	t6,	sp,	28
	sw		t6,	60(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		a2,	56(sp)
	lw		a2,	0(a2)
	mv		a0,	a2
	lw		s3,	32(sp)
	lw		s4,	36(sp)
	lw		s7,	40(sp)
	lw		s9,	44(sp)
	lw		s10,	48(sp)
	lw		s11,	52(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	64
	ret
.normal_block_1:
	sw		a6,	0(s10)
	sw		t1,	0(s3)
	sw		a2,	0(s11)
	sw		a3,	0(s9)
	lw		a2,	60(sp)
	sw		a4,	0(a2)
	lw		t1,	0(s10)
	li		a2,	1
	xor		a2,	t1,	a2
	seqz	a2,	a2,
	beqz	a2,	.else_body_block_1
	j		.if_body_block_1
.if_body_block_1:
	lw		a2,	0(s3)
	la		s10,	const_string_1
	addi	s10,	s10,	0
	mv		a0,	s10
	mv		a1,	a2
	call	_string_merge_1
	mv		s10,	a0
	la		a2,	const_string_2
	addi	a2,	a2,	0
	mv		a0,	s10
	mv		a1,	a2
	call	_string_merge_1
	mv		s10,	a0
	lw		a2,	0(s9)
	mv		a0,	s10
	mv		a1,	a2
	call	_string_merge_1
	mv		a2,	a0
	mv		a0,	a2
	call	f_println_1
	lw		a2,	60(sp)
	lw		s10,	0(a2)
	li		a2,	1
	add		s10,	s10,	a2
	lw		a2,	60(sp)
	sw		s10,	0(a2)
	j		.normal_block_2
.else_body_block_1:
	lw		t1,	0(s10)
	li		a2,	1
	sub		a6,	t1,	a2
	lw		t1,	0(s3)
	lw		a2,	0(s9)
	lw		a3,	0(s11)
	lw		t6,	60(sp)
	lw		a4,	0(t6)
	mv		a0,	a6
	mv		a1,	t1
	call	f_cd_1
	mv		a2,	a0
	lw		t1,	60(sp)
	sw		a2,	0(t1)
	lw		t1,	0(s3)
	la		a2,	const_string_3
	addi	a2,	a2,	0
	mv		a0,	a2
	mv		a1,	t1
	call	_string_merge_1
	mv		a2,	a0
	la		t1,	const_string_4
	addi	t1,	t1,	0
	mv		a0,	a2
	mv		a1,	t1
	call	_string_merge_1
	mv		a2,	a0
	lw		t1,	0(s9)
	mv		a0,	a2
	mv		a1,	t1
	call	_string_merge_1
	mv		a2,	a0
	mv		a0,	a2
	call	f_println_1
	lw		a2,	0(s10)
	li		s10,	1
	sub		s10,	a2,	s10
	lw		t1,	0(s11)
	lw		a2,	0(s3)
	lw		a3,	0(s9)
	lw		s11,	60(sp)
	lw		a4,	0(s11)
	mv		a0,	s10
	mv		a1,	t1
	call	f_cd_1
	mv		s10,	a0
	lw		a2,	60(sp)
	sw		s10,	0(a2)
	lw		a2,	60(sp)
	lw		a2,	0(a2)
	li		s10,	1
	add		a2,	a2,	s10
	lw		s10,	60(sp)
	sw		a2,	0(s10)
	j		.normal_block_2
.normal_block_2:
	lw		a2,	60(sp)
	lw		a2,	0(a2)
	lw		s10,	56(sp)
	sw		a2,	0(s10)
	j		.func_end_block_1
.normal_block_3:
	j		.func_end_block_1
	.size	f_cd_1,	.-f_cd_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-56
	sw		s0,	0(sp)
	addi	s0,	sp,	56
	sw		ra,	4(sp)
	sw		s3,	32(sp)
	sw		s6,	36(sp)
	sw		s7,	40(sp)
	sw		s8,	44(sp)
	sw		s9,	48(sp)
	sw		s11,	52(sp)
	addi	s6,	sp,	8
	addi	s11,	sp,	12
	addi	s3,	sp,	16
	addi	s9,	sp,	20
	addi	s7,	sp,	24
	addi	s8,	sp,	28
	j		.normal_block_4
.func_end_block_2:
	lw		a2,	0(s6)
	mv		a0,	a2
	lw		s3,	32(sp)
	lw		s6,	36(sp)
	lw		s7,	40(sp)
	lw		s8,	44(sp)
	lw		s9,	48(sp)
	lw		s11,	52(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	56
	ret
.normal_block_4:
	call	_main_initial_1
	la		a2,	const_string_5
	addi	a2,	a2,	0
	sw		a2,	0(s11)
	la		a2,	const_string_6
	addi	a2,	a2,	0
	sw		a2,	0(s3)
	la		a2,	const_string_7
	addi	a2,	a2,	0
	sw		a2,	0(s9)
	call	f_getInt_1
	mv		a2,	a0
	sw		a2,	0(s7)
	lw		t1,	0(s7)
	lw		s11,	0(s11)
	lw		a2,	0(s3)
	lw		a3,	0(s9)
	mv		a0,	t1
	mv		a1,	s11
	li		a4,	0
	call	f_cd_1
	mv		a2,	a0
	sw		a2,	0(s8)
	lw		a2,	0(s8)
	mv		a0,	a2
	call	f_toString_1
	mv		a2,	a0
	mv		a0,	a2
	call	f_println_1
	li		a2,	0
	sw		a2,	0(s6)
	j		.func_end_block_2
.normal_block_5:
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
	j		.normal_block_6
.func_end_block_3:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_6:
	j		.func_end_block_3
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata
	.type	const_string_1,@object
const_string_1:
	.string	"move "
	.size	const_string_1,	7

	.type	const_string_2,@object
const_string_2:
	.string	" --> "
	.size	const_string_2,	7

	.type	const_string_3,@object
const_string_3:
	.string	"move "
	.size	const_string_3,	7

	.type	const_string_4,@object
const_string_4:
	.string	" --> "
	.size	const_string_4,	7

	.type	const_string_5,@object
const_string_5:
	.string	"A"
	.size	const_string_5,	3

	.type	const_string_6,@object
const_string_6:
	.string	"B"
	.size	const_string_6,	3

	.type	const_string_7,@object
const_string_7:
	.string	"C"
	.size	const_string_7,	3


