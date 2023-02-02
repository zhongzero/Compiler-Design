	.section	.text
	.globl	f_tak_1
	.p2align	2
	.type	f_tak_1,@function
f_tak_1:
.func_begin_block_1:
	addi	sp,	sp,	-28
	sw		s0,	0(sp)
	addi	s0,	sp,	28
	sw		ra,	4(sp)
	sw		s1,	8(sp)
	sw		s3,	12(sp)
	sw		s6,	16(sp)
	sw		s8,	20(sp)
	sw		s9,	24(sp)
	mv		s8,	a0
	mv		s3,	a1
	mv		s1,	a2
	slt		a0,	s3,	s8
	beqz	a0,	.else_body_block_1
	j		.if_body_block_1
.if_body_block_1:
	li		a0,	1
	sub		a0,	s8,	a0
	mv		a2,	s1
	mv		a1,	s3
	call	f_tak_1
	mv		s9,	a0
	li		a0,	1
	sub		a0,	s3,	a0
	mv		a2,	s8
	mv		a1,	s1
	call	f_tak_1
	mv		s6,	a0
	li		a0,	1
	sub		a0,	s1,	a0
	mv		a1,	s8
	mv		a2,	s3
	call	f_tak_1
	mv		a2,	a0
	mv		a0,	s9
	mv		a1,	s6
	call	f_tak_1
	addi	s1,	a0,	1
	mv		a0,	s1
	lw		s1,	8(sp)
	lw		s3,	12(sp)
	lw		s6,	16(sp)
	lw		s8,	20(sp)
	lw		s9,	24(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	28
	ret
.else_body_block_1:
	mv		a0,	s1
	lw		s1,	8(sp)
	lw		s3,	12(sp)
	lw		s6,	16(sp)
	lw		s8,	20(sp)
	lw		s9,	24(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	28
	ret
.normal_block_3:
	mv		a0,	s1
	lw		s1,	8(sp)
	lw		s3,	12(sp)
	lw		s6,	16(sp)
	lw		s8,	20(sp)
	lw		s9,	24(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	28
	ret
.normal_block_4:
	mv		a0,	s1
	lw		s1,	8(sp)
	lw		s3,	12(sp)
	lw		s6,	16(sp)
	lw		s8,	20(sp)
	lw		s9,	24(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	28
	ret
	.size	f_tak_1,	.-f_tak_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	call	_main_initial_1
	li		a0,	18
	li		a1,	12
	li		a2,	6
	call	f_tak_1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_6:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
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
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata

