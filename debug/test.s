	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_1:
	addi	sp,	sp,	-24
	sw		s0,	0(sp)
	addi	s0,	sp,	24
	sw		ra,	4(sp)
	addi	t0,	sp,	8
	sw		t0,	12(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		t1,	12(sp)
	lw		t0,	0(t1)
	sw		t0,	16(sp)
	lw		t1,	16(sp)
	mv		a0,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	24
	ret
.normal_block_1:
	call	_main_initial_1
	li		t0,	0
	sw		t0,	20(sp)
	lw		t1,	20(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	j		.func_end_block_1
.normal_block_2:
	j		.func_end_block_1
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_2:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	j		.normal_block_3
.func_end_block_2:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_3:
	j		.func_end_block_2
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata