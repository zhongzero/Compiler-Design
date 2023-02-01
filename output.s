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
	mv		s1,	s11
	sw		s2,	32(sp)
	sw		s3,	36(sp)
	sw		s4,	40(sp)
	sw		s5,	44(sp)
	sw		s6,	48(sp)
	sw		s8,	52(sp)
	mv		s9,	s11
	addi	s4,	sp,	8
	addi	s2,	sp,	12
	addi	s6,	sp,	16
	addi	s8,	sp,	20
	addi	s3,	sp,	24
	addi	s5,	sp,	28
	j		.normal_block_1
.func_end_block_1:
	lw		a0,	0(s4)
	mv		s11,	s1
	lw		s2,	32(sp)
	lw		s3,	36(sp)
	lw		s4,	40(sp)
	lw		s5,	44(sp)
	lw		s6,	48(sp)
	lw		s8,	52(sp)
	mv		s11,	s9
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	56
	ret
.normal_block_1:
	sw		a0,	0(s2)
	sw		a1,	0(s6)
	sw		a2,	0(s8)
	sw		a3,	0(s3)
	sw		a4,	0(s5)
	lw		t4,	0(s2)
	li		t6,	1
	xor		t6,	t4,	t6
	seqz	t6,	t6,
	beqz	t6,	.else_body_block_1
	j		.if_body_block_1
.if_body_block_1:
	lw		a1,	0(s6)
	la		t6,	const_string_1
	addi	a0,	t6,	0
	call	_string_merge_1
	la		t6,	const_string_2
	addi	a1,	t6,	0
	call	_string_merge_1
	lw		a1,	0(s3)
	call	_string_merge_1
	call	f_println_1
	lw		t4,	0(s5)
	li		t6,	1
	add		t6,	t4,	t6
	sw		t6,	0(s5)
	j		.normal_block_2
.else_body_block_1:
	lw		t4,	0(s2)
	li		t6,	1
	sub		a0,	t4,	t6
	lw		a1,	0(s6)
	lw		a2,	0(s3)
	lw		a3,	0(s8)
	lw		a4,	0(s5)
	call	f_cd_1
	sw		a0,	0(s5)
	lw		a1,	0(s6)
	la		t6,	const_string_3
	addi	a0,	t6,	0
	call	_string_merge_1
	la		t6,	const_string_4
	addi	a1,	t6,	0
	call	_string_merge_1
	lw		a1,	0(s3)
	call	_string_merge_1
	call	f_println_1
	lw		t4,	0(s2)
	li		t6,	1
	sub		a0,	t4,	t6
	lw		a1,	0(s8)
	lw		a2,	0(s6)
	lw		a3,	0(s3)
	lw		a4,	0(s5)
	call	f_cd_1
	sw		a0,	0(s5)
	lw		t4,	0(s5)
	li		t6,	1
	add		t6,	t4,	t6
	sw		t6,	0(s5)
	j		.normal_block_2
.normal_block_2:
	lw		s5,	0(s5)
	sw		s5,	0(s4)
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
	sw		s8,	44(sp)
	sw		s10,	48(sp)
	sw		s11,	52(sp)
	addi	s11,	sp,	8
	addi	s8,	sp,	12
	addi	s3,	sp,	16
	addi	s6,	sp,	20
	addi	s4,	sp,	24
	addi	s10,	sp,	28
	j		.normal_block_4
.func_end_block_2:
	lw		a0,	0(s11)
	lw		s3,	32(sp)
	lw		s4,	36(sp)
	lw		s6,	40(sp)
	lw		s8,	44(sp)
	lw		s10,	48(sp)
	lw		s11,	52(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	56
	ret
.normal_block_4:
	call	_main_initial_1
	la		t6,	const_string_5
	addi	t6,	t6,	0
	sw		t6,	0(s8)
	la		t6,	const_string_6
	addi	t6,	t6,	0
	sw		t6,	0(s3)
	la		t6,	const_string_7
	addi	t6,	t6,	0
	sw		t6,	0(s6)
	call	f_getInt_1
	sw		a0,	0(s4)
	lw		a0,	0(s4)
	lw		a1,	0(s8)
	lw		a2,	0(s3)
	lw		a3,	0(s6)
	li		a4,	0
	call	f_cd_1
	sw		a0,	0(s10)
	lw		a0,	0(s10)
	call	f_toString_1
	call	f_println_1
	li		t6,	0
	sw		t6,	0(s11)
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


