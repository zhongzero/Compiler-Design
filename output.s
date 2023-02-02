	.section	.text
	.globl	f_foo_compute_1
	.p2align	2
	.type	f_foo_compute_1,@function
f_foo_compute_1:
.func_begin_block_1:
	addi	sp,	sp,	-8
	sw		s0,	0(sp)
	addi	s0,	sp,	8
	sw		ra,	4(sp)
	li		t1,	0
	li		t4,	0
	li		t6,	0
	li		a6,	0
	li		a2,	0
	li		a4,	0
	li		t3,	0
	li		a7,	0
	li		a3,	0
	li		a7,	0
	slt		t4,	a7,	a0
	beqz	t4,	.normal_block_2
	li		a3,	0
	slt		t4,	a3,	a1
	beqz	t4,	.normal_block_3
	mv		t1,	a7
	mv		t4,	a3
	add		t6,	t1,	t4
	sub		a6,	t4,	t1
	mul		a2,	t6,	a6
	add		a4,	a4,	a2
	sub		a4,	a4,	a6
	add		t6,	a4,	t6
	sub		t4,	t6,	t4
	add		t4,	t4,	t1
	sub		t4,	t4,	a7
	add		a4,	t4,	a3
	li		t4,	0
	slt		t6,	t4,	a4
	beqz	t6,	.normal_block_4
	mul		t3,	t3,	t4
	li		t6,	10000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_5
	li		t6,	10000
	sub		t3,	t3,	t6
	j		.normal_block_5
.normal_block_2:
	add		t3,	t3,	a4
	li		t4,	0
	sub		a0,	t4,	t3
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_3:
	addi	a7,	a7,	1
	slt		t4,	a7,	a0
	beqz	t4,	.normal_block_2
	li		a3,	0
	slt		t4,	a3,	a1
	beqz	t4,	.normal_block_3
	mv		t1,	a7
	mv		t4,	a3
	add		t6,	t1,	t4
	sub		a6,	t4,	t1
	mul		a2,	t6,	a6
	add		a4,	a4,	a2
	sub		a4,	a4,	a6
	add		t6,	a4,	t6
	sub		t4,	t6,	t4
	add		t4,	t4,	t1
	sub		t4,	t4,	a7
	add		a4,	t4,	a3
	li		t4,	0
	slt		t6,	t4,	a4
	beqz	t6,	.normal_block_4
	mul		t3,	t3,	t4
	li		t6,	10000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_5
	li		t6,	10000
	sub		t3,	t3,	t6
	j		.normal_block_5
.normal_block_4:
	addi	a3,	a3,	1
	slt		t4,	a3,	a1
	beqz	t4,	.normal_block_3
	mv		t1,	a7
	mv		t4,	a3
	add		t6,	t1,	t4
	sub		a6,	t4,	t1
	mul		a2,	t6,	a6
	add		a4,	a4,	a2
	sub		a4,	a4,	a6
	add		t6,	a4,	t6
	sub		t4,	t6,	t4
	add		t4,	t4,	t1
	sub		t4,	t4,	a7
	add		a4,	t4,	a3
	li		t4,	0
	slt		t6,	t4,	a4
	beqz	t6,	.normal_block_4
	mul		t3,	t3,	t4
	li		t6,	10000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_5
	li		t6,	10000
	sub		t3,	t3,	t6
	j		.normal_block_5
.normal_block_5:
	addi	t4,	t4,	1
	slt		t6,	t4,	a4
	beqz	t6,	.normal_block_4
	mul		t3,	t3,	t4
	li		t6,	10000
	sgt		t6,	t3,	t6
	beqz	t6,	.normal_block_5
	li		t6,	10000
	sub		t3,	t3,	t6
	j		.normal_block_5
.normal_block_6:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
	.size	f_foo_compute_1,	.-f_foo_compute_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-20
	sw		s0,	0(sp)
	addi	s0,	sp,	20
	sw		ra,	4(sp)
	sw		s1,	8(sp)
	sw		s11,	12(sp)
	call	_main_initial_1
	li		s11,	10
	li		s1,	0
	li		s1,	0
	slt		t4,	s1,	s11
	beqz	t4,	.normal_block_8
	addi	a0,	s1,	50
	li		t4,	50
	sub		a1,	s1,	t4
	call	f_foo_compute_1
	call	f_printInt_1
	j		.for_update_block_4
.for_update_block_4:
	addi	s1,	s1,	1
	slt		t4,	s1,	s11
	beqz	t4,	.normal_block_8
	addi	a0,	s1,	50
	li		t4,	50
	sub		a1,	s1,	t4
	call	f_foo_compute_1
	call	f_printInt_1
	j		.for_update_block_4
.normal_block_8:
	lw		a0,	16(sp)
	lw		s1,	8(sp)
	lw		s11,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	20
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

