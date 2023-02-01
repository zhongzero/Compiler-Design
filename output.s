	.section	.text
	.globl	f_gcd_1
	.p2align	2
	.type	f_gcd_1,@function
f_gcd_1:
.func_begin_block_1:
	addi	sp,	sp,	-348
	sw		s0,	0(sp)
	addi	s0,	sp,	348
	sw		ra,	4(sp)
	sw		a0,	140(sp)
	sw		a1,	144(sp)
	sw		a2,	148(sp)
	sw		a3,	152(sp)
	sw		a4,	156(sp)
	sw		a5,	160(sp)
	sw		a6,	164(sp)
	sw		a7,	168(sp)
	lw		t2,	0(sp)
	lw		a0,	-4(t2)
	sw		a0,	172(sp)
	lw		a0,	-8(t2)
	sw		a0,	176(sp)
	lw		a0,	-12(t2)
	sw		a0,	180(sp)
	lw		a0,	-16(t2)
	sw		a0,	184(sp)
	lw		a0,	-20(t2)
	sw		a0,	188(sp)
	lw		a0,	-24(t2)
	sw		a0,	192(sp)
	lw		a0,	-28(t2)
	sw		a0,	196(sp)
	lw		a0,	-32(t2)
	sw		a0,	200(sp)
	lw		a0,	-36(t2)
	sw		a0,	204(sp)
	lw		a0,	-40(t2)
	sw		a0,	208(sp)
	lw		a0,	-44(t2)
	sw		a0,	212(sp)
	lw		a0,	-48(t2)
	sw		a0,	216(sp)
	lw		a0,	-52(t2)
	sw		a0,	220(sp)
	lw		a0,	-56(t2)
	sw		a0,	224(sp)
	lw		a0,	-60(t2)
	sw		a0,	228(sp)
	lw		a0,	-64(t2)
	sw		a0,	232(sp)
	lw		a0,	-68(t2)
	sw		a0,	236(sp)
	lw		a0,	-72(t2)
	sw		a0,	240(sp)
	lw		a0,	-76(t2)
	sw		a0,	244(sp)
	lw		a0,	-80(t2)
	sw		a0,	248(sp)
	lw		a0,	-84(t2)
	sw		a0,	252(sp)
	lw		a0,	-88(t2)
	sw		a0,	256(sp)
	lw		a0,	-92(t2)
	sw		a0,	260(sp)
	lw		t2,	-96(t2)
	sw		t2,	264(sp)
	sw		s1,	268(sp)
	sw		s2,	272(sp)
	sw		s3,	276(sp)
	sw		s4,	280(sp)
	sw		s5,	284(sp)
	sw		s6,	288(sp)
	sw		s7,	292(sp)
	sw		s8,	296(sp)
	sw		s9,	300(sp)
	sw		s10,	304(sp)
	sw		s11,	344(sp)
	addi	s10,	sp,	8
	addi	a0,	sp,	12
	addi	t2,	sp,	16
	sw		t2,	308(sp)
	addi	t2,	sp,	20
	sw		t2,	312(sp)
	addi	s7,	sp,	24
	addi	s11,	sp,	28
	addi	t6,	sp,	32
	addi	t2,	sp,	36
	sw		t2,	316(sp)
	addi	a6,	sp,	40
	addi	a1,	sp,	44
	addi	a7,	sp,	48
	addi	t2,	sp,	52
	sw		t2,	320(sp)
	addi	s3,	sp,	56
	addi	s1,	sp,	60
	addi	t2,	sp,	64
	sw		t2,	324(sp)
	addi	t3,	sp,	68
	addi	a4,	sp,	72
	addi	t2,	sp,	76
	sw		t2,	328(sp)
	addi	t1,	sp,	80
	addi	t5,	sp,	84
	addi	s9,	sp,	88
	addi	a5,	sp,	92
	addi	t2,	sp,	96
	addi	t4,	sp,	100
	addi	s8,	sp,	104
	addi	s4,	sp,	108
	sw		s4,	332(sp)
	addi	a2,	sp,	112
	addi	s4,	sp,	116
	sw		s4,	336(sp)
	addi	s4,	sp,	120
	addi	s6,	sp,	124
	addi	s5,	sp,	128
	addi	a3,	sp,	132
	sw		a3,	340(sp)
	addi	a3,	sp,	136
	j		.normal_block_1
.func_end_block_1:
	lw		a0,	0(s10)
	lw		s1,	268(sp)
	lw		s2,	272(sp)
	lw		s3,	276(sp)
	lw		s4,	280(sp)
	lw		s5,	284(sp)
	lw		s6,	288(sp)
	lw		s7,	292(sp)
	lw		s8,	296(sp)
	lw		s9,	300(sp)
	lw		s10,	304(sp)
	lw		s11,	344(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	348
	ret
.normal_block_1:
	lw		s2,	140(sp)
	sw		s2,	0(a0)
	lw		a0,	144(sp)
	lw		s2,	308(sp)
	sw		a0,	0(s2)
	lw		s2,	148(sp)
	lw		a0,	312(sp)
	sw		s2,	0(a0)
	lw		a0,	152(sp)
	sw		a0,	0(s7)
	lw		a0,	156(sp)
	sw		a0,	0(s11)
	lw		a0,	160(sp)
	sw		a0,	0(t6)
	lw		a0,	164(sp)
	lw		s7,	316(sp)
	sw		a0,	0(s7)
	lw		a0,	168(sp)
	sw		a0,	0(a6)
	lw		a0,	172(sp)
	sw		a0,	0(a1)
	lw		a0,	176(sp)
	sw		a0,	0(a7)
	lw		a0,	180(sp)
	lw		a7,	320(sp)
	sw		a0,	0(a7)
	lw		a0,	184(sp)
	sw		a0,	0(s3)
	lw		a0,	188(sp)
	sw		a0,	0(s1)
	lw		a7,	192(sp)
	lw		a0,	324(sp)
	sw		a7,	0(a0)
	lw		a0,	196(sp)
	sw		a0,	0(t3)
	lw		a0,	200(sp)
	sw		a0,	0(a4)
	lw		a7,	204(sp)
	lw		a0,	328(sp)
	sw		a7,	0(a0)
	lw		a0,	208(sp)
	sw		a0,	0(t1)
	lw		a0,	212(sp)
	sw		a0,	0(t5)
	lw		a0,	216(sp)
	sw		a0,	0(s9)
	lw		a0,	220(sp)
	sw		a0,	0(a5)
	lw		a0,	224(sp)
	sw		a0,	0(t2)
	lw		t2,	228(sp)
	sw		t2,	0(t4)
	lw		t2,	232(sp)
	sw		t2,	0(s8)
	lw		t2,	236(sp)
	lw		a0,	332(sp)
	sw		t2,	0(a0)
	lw		t2,	240(sp)
	sw		t2,	0(a2)
	lw		a0,	244(sp)
	lw		t2,	336(sp)
	sw		a0,	0(t2)
	lw		t2,	248(sp)
	sw		t2,	0(s4)
	lw		t2,	252(sp)
	sw		t2,	0(s6)
	lw		t2,	256(sp)
	sw		t2,	0(s5)
	lw		t2,	260(sp)
	lw		a0,	340(sp)
	sw		t2,	0(a0)
	lw		t2,	264(sp)
	sw		t2,	0(a3)
	lw		t2,	308(sp)
	lw		t2,	0(t2)
	sw		t2,	0(s10)
	j		.func_end_block_1
.normal_block_2:
	j		.func_end_block_1
	.size	f_gcd_1,	.-f_gcd_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-112
	sw		s0,	0(sp)
	addi	s0,	sp,	112
	sw		ra,	4(sp)
	sw		s2,	12(sp)
	addi	s2,	sp,	8
	j		.normal_block_3
.func_end_block_2:
	lw		a0,	0(s2)
	lw		s2,	12(sp)
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	112
	ret
.normal_block_3:
	call	_main_initial_1
	li		a0,	10
	li		a1,	1
	li		a2,	0
	li		a3,	2
	li		a4,	4
	li		a5,	6
	li		a6,	8
	li		a7,	10
	li		t2,	12
	sw		t2,	-4(s0)
	li		t2,	14
	sw		t2,	-8(s0)
	li		t2,	16
	sw		t2,	-12(s0)
	li		t2,	18
	sw		t2,	-16(s0)
	li		t2,	20
	sw		t2,	-20(s0)
	li		t2,	22
	sw		t2,	-24(s0)
	li		t2,	24
	sw		t2,	-28(s0)
	li		t2,	26
	sw		t2,	-32(s0)
	li		t2,	28
	sw		t2,	-36(s0)
	li		t2,	30
	sw		t2,	-40(s0)
	li		t2,	32
	sw		t2,	-44(s0)
	li		t2,	34
	sw		t2,	-48(s0)
	li		t2,	36
	sw		t2,	-52(s0)
	li		t2,	38
	sw		t2,	-56(s0)
	li		t2,	40
	sw		t2,	-60(s0)
	li		t2,	42
	sw		t2,	-64(s0)
	li		t2,	44
	sw		t2,	-68(s0)
	li		t2,	46
	sw		t2,	-72(s0)
	li		t2,	48
	sw		t2,	-76(s0)
	li		t2,	50
	sw		t2,	-80(s0)
	li		t2,	52
	sw		t2,	-84(s0)
	li		t2,	54
	sw		t2,	-88(s0)
	li		t2,	56
	sw		t2,	-92(s0)
	li		t2,	58
	sw		t2,	-96(s0)
	call	f_gcd_1
	li		t2,	1024
	add		a0,	a0,	t2
	call	f_toString_1
	call	f_println_1
	li		t2,	0
	sw		t2,	0(s2)
	j		.func_end_block_2
.normal_block_4:
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
	j		.normal_block_5
.func_end_block_3:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_5:
	j		.func_end_block_3
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata

