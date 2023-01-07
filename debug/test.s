	.section	.text
	.globl	f_gcd_1
	.p2align	2
	.type	f_gcd_1,@function
f_gcd_1:
.func_begin_block_1:
	addi	sp,	sp,	-524
	sw		s0,	0(sp)
	addi	s0,	sp,	524
	sw		ra,	4(sp)
	mv		t0,	a0
	sw		t0,	140(sp)
	mv		t0,	a1
	sw		t0,	144(sp)
	mv		t0,	a2
	sw		t0,	148(sp)
	lw		t0,	0(sp)
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t0,	-4(t1)
	sw		t0,	156(sp)
	lw		t1,	160(sp)
	lw		t0,	-8(t1)
	sw		t0,	164(sp)
	lw		t1,	168(sp)
	lw		t0,	-12(t1)
	sw		t0,	172(sp)
	lw		t1,	176(sp)
	lw		t0,	-16(t1)
	sw		t0,	180(sp)
	lw		t1,	184(sp)
	lw		t0,	-20(t1)
	sw		t0,	188(sp)
	lw		t1,	192(sp)
	lw		t0,	-24(t1)
	sw		t0,	196(sp)
	lw		t1,	200(sp)
	lw		t0,	-28(t1)
	sw		t0,	204(sp)
	lw		t1,	208(sp)
	lw		t0,	-32(t1)
	sw		t0,	212(sp)
	lw		t1,	216(sp)
	lw		t0,	-36(t1)
	sw		t0,	220(sp)
	lw		t1,	224(sp)
	lw		t0,	-40(t1)
	sw		t0,	228(sp)
	lw		t1,	232(sp)
	lw		t0,	-44(t1)
	sw		t0,	236(sp)
	lw		t1,	240(sp)
	lw		t0,	-48(t1)
	sw		t0,	244(sp)
	lw		t1,	248(sp)
	lw		t0,	-52(t1)
	sw		t0,	252(sp)
	lw		t1,	256(sp)
	lw		t0,	-56(t1)
	sw		t0,	260(sp)
	lw		t1,	264(sp)
	lw		t0,	-60(t1)
	sw		t0,	268(sp)
	lw		t1,	272(sp)
	lw		t0,	-64(t1)
	sw		t0,	276(sp)
	lw		t1,	280(sp)
	lw		t0,	-68(t1)
	sw		t0,	284(sp)
	lw		t1,	288(sp)
	lw		t0,	-72(t1)
	sw		t0,	292(sp)
	lw		t1,	296(sp)
	lw		t0,	-76(t1)
	sw		t0,	300(sp)
	lw		t1,	304(sp)
	lw		t0,	-80(t1)
	sw		t0,	308(sp)
	lw		t1,	312(sp)
	lw		t0,	-84(t1)
	sw		t0,	316(sp)
	lw		t1,	320(sp)
	lw		t0,	-88(t1)
	sw		t0,	324(sp)
	lw		t1,	328(sp)
	lw		t0,	-92(t1)
	sw		t0,	332(sp)
	lw		t1,	336(sp)
	lw		t0,	-96(t1)
	sw		t0,	340(sp)
	lw		t1,	344(sp)
	lw		t0,	-100(t1)
	sw		t0,	348(sp)
	lw		t1,	352(sp)
	lw		t0,	-104(t1)
	sw		t0,	356(sp)
	lw		t1,	360(sp)
	lw		t0,	-108(t1)
	sw		t0,	364(sp)
	lw		t1,	368(sp)
	lw		t0,	-112(t1)
	sw		t0,	372(sp)
	lw		t1,	376(sp)
	lw		t0,	-116(t1)
	sw		t0,	380(sp)
	addi	t0,	sp,	8
	sw		t0,	384(sp)
	addi	t0,	sp,	12
	sw		t0,	388(sp)
	addi	t0,	sp,	16
	sw		t0,	392(sp)
	addi	t0,	sp,	20
	sw		t0,	396(sp)
	addi	t0,	sp,	24
	sw		t0,	400(sp)
	addi	t0,	sp,	28
	sw		t0,	404(sp)
	addi	t0,	sp,	32
	sw		t0,	408(sp)
	addi	t0,	sp,	36
	sw		t0,	412(sp)
	addi	t0,	sp,	40
	sw		t0,	416(sp)
	addi	t0,	sp,	44
	sw		t0,	420(sp)
	addi	t0,	sp,	48
	sw		t0,	424(sp)
	addi	t0,	sp,	52
	sw		t0,	428(sp)
	addi	t0,	sp,	56
	sw		t0,	432(sp)
	addi	t0,	sp,	60
	sw		t0,	436(sp)
	addi	t0,	sp,	64
	sw		t0,	440(sp)
	addi	t0,	sp,	68
	sw		t0,	444(sp)
	addi	t0,	sp,	72
	sw		t0,	448(sp)
	addi	t0,	sp,	76
	sw		t0,	452(sp)
	addi	t0,	sp,	80
	sw		t0,	456(sp)
	addi	t0,	sp,	84
	sw		t0,	460(sp)
	addi	t0,	sp,	88
	sw		t0,	464(sp)
	addi	t0,	sp,	92
	sw		t0,	468(sp)
	addi	t0,	sp,	96
	sw		t0,	472(sp)
	addi	t0,	sp,	100
	sw		t0,	476(sp)
	addi	t0,	sp,	104
	sw		t0,	480(sp)
	addi	t0,	sp,	108
	sw		t0,	484(sp)
	addi	t0,	sp,	112
	sw		t0,	488(sp)
	addi	t0,	sp,	116
	sw		t0,	492(sp)
	addi	t0,	sp,	120
	sw		t0,	496(sp)
	addi	t0,	sp,	124
	sw		t0,	500(sp)
	addi	t0,	sp,	128
	sw		t0,	504(sp)
	addi	t0,	sp,	132
	sw		t0,	508(sp)
	addi	t0,	sp,	136
	sw		t0,	512(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		t1,	384(sp)
	lw		t0,	0(t1)
	sw		t0,	516(sp)
	lw		t1,	516(sp)
	mv		a0,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	524
	ret
.normal_block_1:
	lw		t1,	140(sp)
	lw		t2,	388(sp)
	sw		t1,	0(t2)
	lw		t1,	144(sp)
	lw		t2,	392(sp)
	sw		t1,	0(t2)
	lw		t1,	148(sp)
	lw		t2,	396(sp)
	sw		t1,	0(t2)
	lw		t1,	156(sp)
	lw		t2,	400(sp)
	sw		t1,	0(t2)
	lw		t1,	164(sp)
	lw		t2,	404(sp)
	sw		t1,	0(t2)
	lw		t1,	172(sp)
	lw		t2,	408(sp)
	sw		t1,	0(t2)
	lw		t1,	180(sp)
	lw		t2,	412(sp)
	sw		t1,	0(t2)
	lw		t1,	188(sp)
	lw		t2,	416(sp)
	sw		t1,	0(t2)
	lw		t1,	196(sp)
	lw		t2,	420(sp)
	sw		t1,	0(t2)
	lw		t1,	204(sp)
	lw		t2,	424(sp)
	sw		t1,	0(t2)
	lw		t1,	212(sp)
	lw		t2,	428(sp)
	sw		t1,	0(t2)
	lw		t1,	220(sp)
	lw		t2,	432(sp)
	sw		t1,	0(t2)
	lw		t1,	228(sp)
	lw		t2,	436(sp)
	sw		t1,	0(t2)
	lw		t1,	236(sp)
	lw		t2,	440(sp)
	sw		t1,	0(t2)
	lw		t1,	244(sp)
	lw		t2,	444(sp)
	sw		t1,	0(t2)
	lw		t1,	252(sp)
	lw		t2,	448(sp)
	sw		t1,	0(t2)
	lw		t1,	260(sp)
	lw		t2,	452(sp)
	sw		t1,	0(t2)
	lw		t1,	268(sp)
	lw		t2,	456(sp)
	sw		t1,	0(t2)
	lw		t1,	276(sp)
	lw		t2,	460(sp)
	sw		t1,	0(t2)
	lw		t1,	284(sp)
	lw		t2,	464(sp)
	sw		t1,	0(t2)
	lw		t1,	292(sp)
	lw		t2,	468(sp)
	sw		t1,	0(t2)
	lw		t1,	300(sp)
	lw		t2,	472(sp)
	sw		t1,	0(t2)
	lw		t1,	308(sp)
	lw		t2,	476(sp)
	sw		t1,	0(t2)
	lw		t1,	316(sp)
	lw		t2,	480(sp)
	sw		t1,	0(t2)
	lw		t1,	324(sp)
	lw		t2,	484(sp)
	sw		t1,	0(t2)
	lw		t1,	332(sp)
	lw		t2,	488(sp)
	sw		t1,	0(t2)
	lw		t1,	340(sp)
	lw		t2,	492(sp)
	sw		t1,	0(t2)
	lw		t1,	348(sp)
	lw		t2,	496(sp)
	sw		t1,	0(t2)
	lw		t1,	356(sp)
	lw		t2,	500(sp)
	sw		t1,	0(t2)
	lw		t1,	364(sp)
	lw		t2,	504(sp)
	sw		t1,	0(t2)
	lw		t1,	372(sp)
	lw		t2,	508(sp)
	sw		t1,	0(t2)
	lw		t1,	380(sp)
	lw		t2,	512(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	520(sp)
	lw		t1,	520(sp)
	lw		t2,	384(sp)
	sw		t1,	0(t2)
	j		.func_end_block_1
.normal_block_2:
	j		.func_end_block_1
	.size	f_gcd_1,	.-f_gcd_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-168
	sw		s0,	0(sp)
	addi	s0,	sp,	168
	sw		ra,	4(sp)
	addi	t0,	sp,	8
	sw		t0,	12(sp)
	j		.normal_block_3
.func_end_block_2:
	lw		t1,	12(sp)
	lw		t0,	0(t1)
	sw		t0,	16(sp)
	lw		t1,	16(sp)
	mv		a0,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	168
	ret
.normal_block_3:
	call	_main_initial_1
	li		t0,	10
	sw		t0,	20(sp)
	lw		t1,	20(sp)
	mv		a0,	t1
	li		t0,	1
	sw		t0,	24(sp)
	lw		t1,	24(sp)
	mv		a1,	t1
	li		t0,	0
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	mv		a2,	t1
	li		t0,	2
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	sw		t1,	-4(s0)
	li		t0,	4
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	sw		t1,	-8(s0)
	li		t0,	6
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	sw		t1,	-12(s0)
	li		t0,	8
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	sw		t1,	-16(s0)
	li		t0,	10
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	sw		t1,	-20(s0)
	li		t0,	12
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	sw		t1,	-24(s0)
	li		t0,	14
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	sw		t1,	-28(s0)
	li		t0,	16
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	sw		t1,	-32(s0)
	li		t0,	18
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	sw		t1,	-36(s0)
	li		t0,	20
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	sw		t1,	-40(s0)
	li		t0,	22
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	sw		t1,	-44(s0)
	li		t0,	24
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	sw		t1,	-48(s0)
	li		t0,	26
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	sw		t1,	-52(s0)
	li		t0,	28
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	sw		t1,	-56(s0)
	li		t0,	30
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	sw		t1,	-60(s0)
	li		t0,	32
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	sw		t1,	-64(s0)
	li		t0,	34
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	sw		t1,	-68(s0)
	li		t0,	36
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	sw		t1,	-72(s0)
	li		t0,	38
	sw		t0,	104(sp)
	lw		t1,	104(sp)
	sw		t1,	-76(s0)
	li		t0,	40
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	sw		t1,	-80(s0)
	li		t0,	42
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	sw		t1,	-84(s0)
	li		t0,	44
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	sw		t1,	-88(s0)
	li		t0,	46
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	sw		t1,	-92(s0)
	li		t0,	48
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	sw		t1,	-96(s0)
	li		t0,	50
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	sw		t1,	-100(s0)
	li		t0,	52
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	sw		t1,	-104(s0)
	li		t0,	54
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	sw		t1,	-108(s0)
	li		t0,	56
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	sw		t1,	-112(s0)
	li		t0,	58
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	sw		t1,	-116(s0)
	call	f_gcd_1
	mv		t0,	a0
	sw		t0,	148(sp)
	li		t0,	1024
	sw		t0,	152(sp)
	lw		t1,	148(sp)
	lw		t2,	152(sp)
	add		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	156(sp)
	mv		a0,	t1
	call	f_toString_1
	mv		t0,	a0
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	mv		a0,	t1
	call	f_println_1
	li		t0,	0
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
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

