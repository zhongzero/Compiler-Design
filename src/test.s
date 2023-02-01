	.section	.text
	.globl	f_cd_1
	.p2align	2
	.type	f_cd_1,@function
f_cd_1:
.func_begin_block_1:
	addi	sp,	sp,	-56
	sw		s0,	0(sp)
	addi	s0,	sp,	56
	sw		ra,	4(sp)
	mv		t3,	a0
	mv		t5,	a1
	sw		s2,	32(sp)
	sw		s3,	36(sp)
	sw		s4,	40(sp)
	sw		s5,	44(sp)
	sw		s8,	48(sp)
	mv		s9,	s3
	sw		s10,	52(sp)
	mv		s11,	s3
	addi	s10,	sp,	8
	addi	s2,	sp,	12
	addi	s8,	sp,	16
	addi	s3,	sp,	20
	addi	s5,	sp,	24
	addi	s4,	sp,	28
	j		.normal_block_1
.func_end_block_1:
	lw		s3,	0(s10)
	mv		a0,	s3
	lw		s2,	32(sp)
	lw		s3,	36(sp)
	lw		s4,	40(sp)
	lw		s5,	44(sp)
	lw		s8,	48(sp)
	mv		s3,	s9
	lw		s10,	52(sp)
	mv		s3,	s11
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	56
	ret
.normal_block_1:
	sw		t3,	0(s2)
	sw		t5,	0(s8)
	sw		a2,	0(s3)
	sw		a3,	0(s5)
	sw		a4,	0(s4)
	lw		t3,	0(s2)
	li		t5,	1
	xor		t3,	t3,	t5
	seqz	t3,	t3,
	beqz	t3,	.else_body_block_1
	j		.if_body_block_1
.if_body_block_1:
	lw		t3,	0(s8)
	la		s3,	const_string_1
	addi	s3,	s3,	0
	mv		a0,	s3
	mv		a1,	t3
	call	_string_merge_1
	mv		s3,	a0
	la		t3,	const_string_2
	addi	t3,	t3,	0
	mv		a0,	s3
	mv		a1,	t3
	call	_string_merge_1
	mv		s3,	a0
	lw		t3,	0(s5)
	mv		a0,	s3
	mv		a1,	t3
	call	_string_merge_1
	mv		s3,	a0
	mv		a0,	s3
	call	f_println_1
	lw		s3,	0(s4)
	li		t3,	1
	add		s3,	s3,	t3
	sw		s3,	0(s4)
	j		.normal_block_2
.else_body_block_1:
	lw		t3,	0(s2)
	li		t5,	1
	sub		t3,	t3,	t5
	lw		t5,	0(s8)
	lw		a2,	0(s5)
	lw		a3,	0(s3)
	lw		a4,	0(s4)
	mv		a0,	t3
	mv		a1,	t5
	call	f_cd_1
	mv		t3,	a0
	sw		t3,	0(s4)
	lw		t5,	0(s8)
	la		t3,	const_string_3
	addi	t3,	t3,	0
	mv		a0,	t3
	mv		a1,	t5
	call	_string_merge_1
	mv		t3,	a0
	la		t5,	const_string_4
	addi	t5,	t5,	0
	mv		a0,	t3
	mv		a1,	t5
	call	_string_merge_1
	mv		t5,	a0
	lw		t3,	0(s5)
	mv		a0,	t5
	mv		a1,	t3
	call	_string_merge_1
	mv		t3,	a0
	mv		a0,	t3
	call	f_println_1
	lw		t3,	0(s2)
	li		t5,	1
	sub		t3,	t3,	t5
	lw		s3,	0(s3)
	lw		a2,	0(s8)
	lw		a3,	0(s5)
	lw		a4,	0(s4)
	mv		a0,	t3
	mv		a1,	s3
	call	f_cd_1
	mv		s3,	a0
	sw		s3,	0(s4)
	lw		t3,	0(s4)
	li		s3,	1
	add		s3,	t3,	s3
	sw		s3,	0(s4)
	j		.normal_block_2
.normal_block_2:
	lw		s3,	0(s4)
	sw		s3,	0(s10)
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
	sw		s4,	36(sp)
	sw		s6,	40(sp)
	sw		s7,	44(sp)
	sw		s8,	48(sp)
	sw		s10,	52(sp)
	addi	s3,	sp,	8
	addi	s7,	sp,	12
	addi	s4,	sp,	16
	addi	s8,	sp,	20
	addi	s10,	sp,	24
	addi	s6,	sp,	28
	j		.normal_block_4
.func_end_block_2:
	lw		s3,	0(s3)
	mv		a0,	s3
	lw		s3,	32(sp)
	lw		s4,	36(sp)
	lw		s6,	40(sp)
	lw		s7,	44(sp)
	lw		s8,	48(sp)
	lw		s10,	52(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	56
	ret
.normal_block_4:
	call	_main_initial_1
	la		t3,	const_string_5
	addi	t3,	t3,	0
	sw		t3,	0(s7)
	la		t3,	const_string_6
	addi	t3,	t3,	0
	sw		t3,	0(s4)
	la		t3,	const_string_7
	addi	t3,	t3,	0
	sw		t3,	0(s8)
	call	f_getInt_1
	mv		t3,	a0
	sw		t3,	0(s10)
	lw		t3,	0(s10)
	lw		t5,	0(s7)
	lw		a2,	0(s4)
	lw		a3,	0(s8)
	mv		a0,	t3
	mv		a1,	t5
	li		a4,	0
	call	f_cd_1
	mv		t3,	a0
	sw		t3,	0(s6)
	lw		t3,	0(s6)
	mv		a0,	t3
	call	f_toString_1
	mv		t3,	a0
	mv		a0,	t3
	call	f_println_1
	li		t3,	0
	sw		t3,	0(s3)
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


