	.section	.text
	.globl	f_qsort_1
	.p2align	2
	.type	f_qsort_1,@function
f_qsort_1:
.func_begin_block_2:
	addi	sp,	sp,	-468
	sw		s0,	0(sp)
	addi	s0,	sp,	468
	sw		ra,	4(sp)
	mv		t0,	a0
	sw		t0,	40(sp)
	mv		t0,	a1
	sw		t0,	44(sp)
	mv		t0,	a2
	sw		t0,	48(sp)
	addi	t0,	sp,	8
	sw		t0,	52(sp)
	addi	t0,	sp,	12
	sw		t0,	56(sp)
	addi	t0,	sp,	16
	sw		t0,	60(sp)
	addi	t0,	sp,	20
	sw		t0,	64(sp)
	addi	t0,	sp,	24
	sw		t0,	68(sp)
	addi	t0,	sp,	28
	sw		t0,	72(sp)
	addi	t0,	sp,	32
	sw		t0,	76(sp)
	addi	t0,	sp,	36
	sw		t0,	80(sp)
	j		.normal_block_2
.func_end_block_2:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	468
	ret
.normal_block_2:
	lw		t1,	40(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	lw		t1,	44(sp)
	lw		t2,	56(sp)
	sw		t1,	0(t2)
	lw		t1,	48(sp)
	lw		t2,	60(sp)
	sw		t1,	0(t2)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	84(sp)
	lw		t2,	88(sp)
	slt		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	beqz	t1,	.normal_block_3
	j		.if_body_block_1
.if_body_block_1:
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t2,	68(sp)
	sw		t1,	0(t2)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	li		t0,	4
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t2,	108(sp)
	mul		t0,	t1,	t2
	sw		t0,	112(sp)
	lw		t1,	104(sp)
	lw		t2,	112(sp)
	add		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t2,	72(sp)
	sw		t1,	0(t2)
	j		.while_condition_block_1
.normal_block_3:
	j		.func_end_block_2
.while_condition_block_1:
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	128(sp)
	lw		t1,	124(sp)
	lw		t2,	128(sp)
	slt		t0,	t1,	t2
	sw		t0,	132(sp)
	lw		t1,	132(sp)
	beqz	t1,	.normal_block_4
	j		.while_body_block_1
.while_body_block_1:
	j		.while_condition_block_2
.normal_block_4:
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	140(sp)
	li		t0,	4
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	lw		t2,	140(sp)
	mul		t0,	t1,	t2
	sw		t0,	144(sp)
	lw		t1,	136(sp)
	lw		t2,	144(sp)
	add		t0,	t1,	t2
	sw		t0,	148(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	148(sp)
	sw		t1,	0(t2)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	156(sp)
	lw		t1,	56(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	li		t0,	1
	sw		t0,	168(sp)
	lw		t1,	164(sp)
	lw		t2,	168(sp)
	sub		t0,	t1,	t2
	sw		t0,	172(sp)
	lw		t1,	156(sp)
	mv		a0,	t1
	lw		t1,	160(sp)
	mv		a1,	t1
	lw		t1,	172(sp)
	mv		a2,	t1
	call	f_qsort_1
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	180(sp)
	li		t0,	1
	sw		t0,	184(sp)
	lw		t1,	180(sp)
	lw		t2,	184(sp)
	add		t0,	t1,	t2
	sw		t0,	188(sp)
	lw		t1,	60(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	lw		t1,	176(sp)
	mv		a0,	t1
	lw		t1,	188(sp)
	mv		a1,	t1
	lw		t1,	192(sp)
	mv		a2,	t1
	call	f_qsort_1
	j		.normal_block_3
.while_condition_block_2:
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	196(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	lw		t1,	196(sp)
	lw		t2,	200(sp)
	slt		t0,	t1,	t2
	sw		t0,	204(sp)
	lw		t1,	204(sp)
	beqz	t1,	.short_circuit_else_body_block_1
	j		.short_circuit_if_body_block_1
.while_body_block_2:
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	li		t0,	-1
	sw		t0,	212(sp)
	lw		t1,	208(sp)
	lw		t2,	212(sp)
	add		t0,	t1,	t2
	sw		t0,	216(sp)
	lw		t1,	216(sp)
	lw		t2,	68(sp)
	sw		t1,	0(t2)
	j		.while_condition_block_2
.normal_block_5:
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	220(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	224(sp)
	lw		t1,	220(sp)
	lw		t2,	224(sp)
	slt		t0,	t1,	t2
	sw		t0,	228(sp)
	lw		t1,	228(sp)
	beqz	t1,	.normal_block_6
	j		.if_body_block_2
.short_circuit_if_body_block_1:
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	li		t0,	4
	sw		t0,	240(sp)
	lw		t1,	240(sp)
	lw		t2,	236(sp)
	mul		t0,	t1,	t2
	sw		t0,	240(sp)
	lw		t1,	232(sp)
	lw		t2,	240(sp)
	add		t0,	t1,	t2
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t0,	0(t1)
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	addi	t0,	t1,	8
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	addi	t0,	t1,	8
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	lw		t1,	256(sp)
	lw		t2,	268(sp)
	slt		t0,	t1,	t2
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	seqz	t0,	t1,
	sw		t0,	272(sp)
	lw		t1,	272(sp)
	lw		t2,	76(sp)
	sw		t1,	0(t2)
	j		.short_circuit_end_block_1
.short_circuit_else_body_block_1:
	li		t0,	0
	sw		t0,	276(sp)
	lw		t1,	276(sp)
	lw		t2,	76(sp)
	sw		t1,	0(t2)
	j		.short_circuit_end_block_1
.short_circuit_end_block_1:
	lw		t1,	76(sp)
	lw		t0,	0(t1)
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	beqz	t1,	.normal_block_5
	j		.while_body_block_2
.if_body_block_2:
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	li		t0,	4
	sw		t0,	292(sp)
	lw		t1,	292(sp)
	lw		t2,	288(sp)
	mul		t0,	t1,	t2
	sw		t0,	292(sp)
	lw		t1,	284(sp)
	lw		t2,	292(sp)
	add		t0,	t1,	t2
	sw		t0,	296(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	300(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	304(sp)
	li		t0,	4
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	lw		t2,	304(sp)
	mul		t0,	t1,	t2
	sw		t0,	308(sp)
	lw		t1,	300(sp)
	lw		t2,	308(sp)
	add		t0,	t1,	t2
	sw		t0,	312(sp)
	lw		t1,	312(sp)
	lw		t0,	0(t1)
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	lw		t2,	296(sp)
	sw		t1,	0(t2)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	320(sp)
	li		t0,	1
	sw		t0,	324(sp)
	lw		t1,	320(sp)
	lw		t2,	324(sp)
	add		t0,	t1,	t2
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	j		.normal_block_6
.normal_block_6:
	j		.while_condition_block_3
.while_condition_block_3:
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	332(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	336(sp)
	lw		t1,	332(sp)
	lw		t2,	336(sp)
	slt		t0,	t1,	t2
	sw		t0,	340(sp)
	lw		t1,	340(sp)
	beqz	t1,	.short_circuit_else_body_block_2
	j		.short_circuit_if_body_block_2
.while_body_block_3:
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	344(sp)
	li		t0,	1
	sw		t0,	348(sp)
	lw		t1,	344(sp)
	lw		t2,	348(sp)
	add		t0,	t1,	t2
	sw		t0,	352(sp)
	lw		t1,	352(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	j		.while_condition_block_3
.normal_block_7:
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	356(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	360(sp)
	lw		t1,	356(sp)
	lw		t2,	360(sp)
	slt		t0,	t1,	t2
	sw		t0,	364(sp)
	lw		t1,	364(sp)
	beqz	t1,	.normal_block_8
	j		.if_body_block_3
.short_circuit_if_body_block_2:
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	368(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	372(sp)
	li		t0,	4
	sw		t0,	376(sp)
	lw		t1,	376(sp)
	lw		t2,	372(sp)
	mul		t0,	t1,	t2
	sw		t0,	376(sp)
	lw		t1,	368(sp)
	lw		t2,	376(sp)
	add		t0,	t1,	t2
	sw		t0,	380(sp)
	lw		t1,	380(sp)
	lw		t0,	0(t1)
	sw		t0,	384(sp)
	lw		t1,	384(sp)
	addi	t0,	t1,	8
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	lw		t0,	0(t1)
	sw		t0,	392(sp)
	lw		t1,	72(sp)
	lw		t0,	0(t1)
	sw		t0,	396(sp)
	lw		t1,	396(sp)
	addi	t0,	t1,	8
	sw		t0,	400(sp)
	lw		t1,	400(sp)
	lw		t0,	0(t1)
	sw		t0,	404(sp)
	lw		t1,	392(sp)
	lw		t2,	404(sp)
	slt		t0,	t1,	t2
	sw		t0,	408(sp)
	lw		t1,	408(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.short_circuit_end_block_2
.short_circuit_else_body_block_2:
	li		t0,	0
	sw		t0,	412(sp)
	lw		t1,	412(sp)
	lw		t2,	80(sp)
	sw		t1,	0(t2)
	j		.short_circuit_end_block_2
.short_circuit_end_block_2:
	lw		t1,	80(sp)
	lw		t0,	0(t1)
	sw		t0,	416(sp)
	lw		t1,	416(sp)
	beqz	t1,	.normal_block_7
	j		.while_body_block_3
.if_body_block_3:
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	420(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	424(sp)
	li		t0,	4
	sw		t0,	428(sp)
	lw		t1,	428(sp)
	lw		t2,	424(sp)
	mul		t0,	t1,	t2
	sw		t0,	428(sp)
	lw		t1,	420(sp)
	lw		t2,	428(sp)
	add		t0,	t1,	t2
	sw		t0,	432(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	436(sp)
	lw		t1,	64(sp)
	lw		t0,	0(t1)
	sw		t0,	440(sp)
	li		t0,	4
	sw		t0,	444(sp)
	lw		t1,	444(sp)
	lw		t2,	440(sp)
	mul		t0,	t1,	t2
	sw		t0,	444(sp)
	lw		t1,	436(sp)
	lw		t2,	444(sp)
	add		t0,	t1,	t2
	sw		t0,	448(sp)
	lw		t1,	448(sp)
	lw		t0,	0(t1)
	sw		t0,	452(sp)
	lw		t1,	452(sp)
	lw		t2,	432(sp)
	sw		t1,	0(t2)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	456(sp)
	li		t0,	-1
	sw		t0,	460(sp)
	lw		t1,	456(sp)
	lw		t2,	460(sp)
	add		t0,	t1,	t2
	sw		t0,	464(sp)
	lw		t1,	464(sp)
	lw		t2,	68(sp)
	sw		t1,	0(t2)
	j		.normal_block_8
.normal_block_8:
	j		.while_condition_block_1
	.size	f_qsort_1,	.-f_qsort_1

	.globl	f_init_1
	.p2align	2
	.type	f_init_1,@function
f_init_1:
.func_begin_block_3:
	addi	sp,	sp,	-200
	sw		s0,	0(sp)
	addi	s0,	sp,	200
	sw		ra,	4(sp)
	addi	t0,	sp,	8
	sw		t0,	12(sp)
	j		.normal_block_9
.func_end_block_3:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	200
	ret
.normal_block_9:
	la		t0,	n_addr_1
	sw		t0,	16(sp)
	lw		t1,	16(sp)
	lw		t0,	0(t1)
	sw		t0,	20(sp)
	li		t0,	1
	sw		t0,	24(sp)
	lw		t1,	20(sp)
	lw		t2,	24(sp)
	add		t0,	t1,	t2
	sw		t0,	28(sp)
	li		t0,	4
	sw		t0,	32(sp)
	lw		t1,	32(sp)
	lw		t2,	28(sp)
	mul		t0,	t1,	t2
	sw		t0,	36(sp)
	li		t0,	4
	sw		t0,	40(sp)
	lw		t1,	36(sp)
	lw		t2,	40(sp)
	add		t0,	t1,	t2
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	call	_heap_malloc_1
	mv		t0,	a0
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	mv		t0,	t1
	sw		t0,	52(sp)
	lw		t1,	28(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	lw		t1,	52(sp)
	addi	t0,	t1,	4
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	mv		t0,	t1
	sw		t0,	60(sp)
	la		t0,	fa_addr_1
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	la		t0,	n_addr_1
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	li		t0,	1
	sw		t0,	76(sp)
	lw		t1,	72(sp)
	lw		t2,	76(sp)
	add		t0,	t1,	t2
	sw		t0,	80(sp)
	li		t0,	4
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t2,	80(sp)
	mul		t0,	t1,	t2
	sw		t0,	88(sp)
	li		t0,	4
	sw		t0,	92(sp)
	lw		t1,	88(sp)
	lw		t2,	92(sp)
	add		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	mv		a0,	t1
	call	_heap_malloc_1
	mv		t0,	a0
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		t0,	t1
	sw		t0,	104(sp)
	lw		t1,	80(sp)
	lw		t2,	104(sp)
	sw		t1,	0(t2)
	lw		t1,	104(sp)
	addi	t0,	t1,	4
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	mv		t0,	t1
	sw		t0,	112(sp)
	la		t0,	rk_addr_1
	sw		t0,	116(sp)
	lw		t1,	112(sp)
	lw		t2,	116(sp)
	sw		t1,	0(t2)
	li		t0,	1
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		t1,	12(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	la		t0,	n_addr_1
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	124(sp)
	lw		t2,	132(sp)
	sgt		t0,	t1,	t2
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	seqz	t0,	t1,
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	beqz	t1,	.normal_block_10
	j		.for_body_block_1
.for_body_block_1:
	la		t0,	fa_addr_1
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t0,	0(t1)
	sw		t0,	144(sp)
	lw		t1,	12(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	li		t0,	4
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t2,	148(sp)
	mul		t0,	t1,	t2
	sw		t0,	152(sp)
	lw		t1,	144(sp)
	lw		t2,	152(sp)
	add		t0,	t1,	t2
	sw		t0,	156(sp)
	lw		t1,	12(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t2,	156(sp)
	sw		t1,	0(t2)
	la		t0,	rk_addr_1
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t0,	0(t1)
	sw		t0,	168(sp)
	lw		t1,	12(sp)
	lw		t0,	0(t1)
	sw		t0,	172(sp)
	li		t0,	4
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	lw		t2,	172(sp)
	mul		t0,	t1,	t2
	sw		t0,	176(sp)
	lw		t1,	168(sp)
	lw		t2,	176(sp)
	add		t0,	t1,	t2
	sw		t0,	180(sp)
	li		t0,	1
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	180(sp)
	sw		t1,	0(t2)
	j		.for_update_block_1
.for_update_block_1:
	lw		t1,	12(sp)
	lw		t0,	0(t1)
	sw		t0,	188(sp)
	li		t0,	1
	sw		t0,	192(sp)
	lw		t1,	188(sp)
	lw		t2,	192(sp)
	add		t0,	t1,	t2
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_1
.normal_block_10:
	j		.func_end_block_3
	.size	f_init_1,	.-f_init_1

	.globl	f_find_1
	.p2align	2
	.type	f_find_1,@function
f_find_1:
.func_begin_block_4:
	addi	sp,	sp,	-120
	sw		s0,	0(sp)
	addi	s0,	sp,	120
	sw		ra,	4(sp)
	mv		t0,	a0
	sw		t0,	16(sp)
	addi	t0,	sp,	8
	sw		t0,	20(sp)
	addi	t0,	sp,	12
	sw		t0,	24(sp)
	j		.normal_block_11
.func_end_block_4:
	lw		t1,	20(sp)
	lw		t0,	0(t1)
	sw		t0,	28(sp)
	lw		t1,	28(sp)
	mv		a0,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	120
	ret
.normal_block_11:
	lw		t1,	16(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	32(sp)
	la		t0,	fa_addr_1
	sw		t0,	36(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	li		t0,	4
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t2,	44(sp)
	mul		t0,	t1,	t2
	sw		t0,	48(sp)
	lw		t1,	40(sp)
	lw		t2,	48(sp)
	add		t0,	t1,	t2
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	32(sp)
	lw		t2,	56(sp)
	xor		t0,	t1,	t2
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	seqz	t0,	t1,
	sw		t0,	60(sp)
	lw		t1,	60(sp)
	beqz	t1,	.normal_block_12
	j		.if_body_block_4
.if_body_block_4:
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	64(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	j		.func_end_block_4
.normal_block_12:
	la		t0,	fa_addr_1
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	lw		t0,	0(t1)
	sw		t0,	72(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	76(sp)
	li		t0,	4
	sw		t0,	80(sp)
	lw		t1,	80(sp)
	lw		t2,	76(sp)
	mul		t0,	t1,	t2
	sw		t0,	80(sp)
	lw		t1,	72(sp)
	lw		t2,	80(sp)
	add		t0,	t1,	t2
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t0,	0(t1)
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	mv		a0,	t1
	call	f_find_1
	mv		t0,	a0
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t2,	24(sp)
	sw		t1,	0(t2)
	la		t0,	fa_addr_1
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	lw		t0,	0(t1)
	sw		t0,	100(sp)
	lw		t1,	24(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	li		t0,	4
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	lw		t2,	104(sp)
	mul		t0,	t1,	t2
	sw		t0,	108(sp)
	lw		t1,	100(sp)
	lw		t2,	108(sp)
	add		t0,	t1,	t2
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t0,	0(t1)
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
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
	addi	sp,	sp,	-324
	sw		s0,	0(sp)
	addi	s0,	sp,	324
	sw		ra,	4(sp)
	mv		t0,	a0
	sw		t0,	20(sp)
	mv		t0,	a1
	sw		t0,	24(sp)
	addi	t0,	sp,	8
	sw		t0,	28(sp)
	addi	t0,	sp,	12
	sw		t0,	32(sp)
	addi	t0,	sp,	16
	sw		t0,	36(sp)
	j		.normal_block_15
.func_end_block_5:
	lw		t1,	28(sp)
	lw		t0,	0(t1)
	sw		t0,	40(sp)
	lw		t1,	40(sp)
	mv		a0,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	324
	ret
.normal_block_15:
	lw		t1,	20(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	24(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	44(sp)
	lw		t1,	44(sp)
	mv		a0,	t1
	call	f_find_1
	mv		t0,	a0
	sw		t0,	48(sp)
	lw		t1,	48(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	52(sp)
	lw		t1,	52(sp)
	mv		a0,	t1
	call	f_find_1
	mv		t0,	a0
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	60(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	xor		t0,	t1,	t2
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	seqz	t0,	t1,
	sw		t0,	68(sp)
	lw		t1,	68(sp)
	beqz	t1,	.normal_block_16
	j		.if_body_block_5
.if_body_block_5:
	li		t0,	0
	sw		t0,	72(sp)
	lw		t1,	72(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.func_end_block_5
.normal_block_16:
	la		t0,	rk_addr_1
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	84(sp)
	li		t0,	4
	sw		t0,	88(sp)
	lw		t1,	88(sp)
	lw		t2,	84(sp)
	mul		t0,	t1,	t2
	sw		t0,	88(sp)
	lw		t1,	80(sp)
	lw		t2,	88(sp)
	add		t0,	t1,	t2
	sw		t0,	92(sp)
	lw		t1,	92(sp)
	lw		t0,	0(t1)
	sw		t0,	96(sp)
	la		t0,	rk_addr_1
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	lw		t0,	0(t1)
	sw		t0,	104(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	108(sp)
	li		t0,	4
	sw		t0,	112(sp)
	lw		t1,	112(sp)
	lw		t2,	108(sp)
	mul		t0,	t1,	t2
	sw		t0,	112(sp)
	lw		t1,	104(sp)
	lw		t2,	112(sp)
	add		t0,	t1,	t2
	sw		t0,	116(sp)
	lw		t1,	116(sp)
	lw		t0,	0(t1)
	sw		t0,	120(sp)
	lw		t1,	96(sp)
	lw		t2,	120(sp)
	sgt		t0,	t1,	t2
	sw		t0,	124(sp)
	lw		t1,	124(sp)
	beqz	t1,	.else_body_block_6
	j		.if_body_block_6
.normal_block_17:
	j		.normal_block_16
.if_body_block_6:
	la		t0,	fa_addr_1
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	136(sp)
	li		t0,	4
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	lw		t2,	136(sp)
	mul		t0,	t1,	t2
	sw		t0,	140(sp)
	lw		t1,	132(sp)
	lw		t2,	140(sp)
	add		t0,	t1,	t2
	sw		t0,	144(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	lw		t2,	144(sp)
	sw		t1,	0(t2)
	la		t0,	rk_addr_1
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	lw		t0,	0(t1)
	sw		t0,	156(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	160(sp)
	li		t0,	4
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	lw		t2,	160(sp)
	mul		t0,	t1,	t2
	sw		t0,	164(sp)
	lw		t1,	156(sp)
	lw		t2,	164(sp)
	add		t0,	t1,	t2
	sw		t0,	168(sp)
	la		t0,	rk_addr_1
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	180(sp)
	li		t0,	4
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	180(sp)
	mul		t0,	t1,	t2
	sw		t0,	184(sp)
	lw		t1,	176(sp)
	lw		t2,	184(sp)
	add		t0,	t1,	t2
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	la		t0,	rk_addr_1
	sw		t0,	196(sp)
	lw		t1,	196(sp)
	lw		t0,	0(t1)
	sw		t0,	200(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	204(sp)
	li		t0,	4
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	lw		t2,	204(sp)
	mul		t0,	t1,	t2
	sw		t0,	208(sp)
	lw		t1,	200(sp)
	lw		t2,	208(sp)
	add		t0,	t1,	t2
	sw		t0,	212(sp)
	lw		t1,	212(sp)
	lw		t0,	0(t1)
	sw		t0,	216(sp)
	lw		t1,	192(sp)
	lw		t2,	216(sp)
	add		t0,	t1,	t2
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	lw		t2,	168(sp)
	sw		t1,	0(t2)
	j		.normal_block_18
.else_body_block_6:
	la		t0,	fa_addr_1
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	232(sp)
	li		t0,	4
	sw		t0,	236(sp)
	lw		t1,	236(sp)
	lw		t2,	232(sp)
	mul		t0,	t1,	t2
	sw		t0,	236(sp)
	lw		t1,	228(sp)
	lw		t2,	236(sp)
	add		t0,	t1,	t2
	sw		t0,	240(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	244(sp)
	lw		t1,	244(sp)
	lw		t2,	240(sp)
	sw		t1,	0(t2)
	la		t0,	rk_addr_1
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	lw		t0,	0(t1)
	sw		t0,	252(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	256(sp)
	li		t0,	4
	sw		t0,	260(sp)
	lw		t1,	260(sp)
	lw		t2,	256(sp)
	mul		t0,	t1,	t2
	sw		t0,	260(sp)
	lw		t1,	252(sp)
	lw		t2,	260(sp)
	add		t0,	t1,	t2
	sw		t0,	264(sp)
	la		t0,	rk_addr_1
	sw		t0,	268(sp)
	lw		t1,	268(sp)
	lw		t0,	0(t1)
	sw		t0,	272(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	276(sp)
	li		t0,	4
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	lw		t2,	276(sp)
	mul		t0,	t1,	t2
	sw		t0,	280(sp)
	lw		t1,	272(sp)
	lw		t2,	280(sp)
	add		t0,	t1,	t2
	sw		t0,	284(sp)
	lw		t1,	284(sp)
	lw		t0,	0(t1)
	sw		t0,	288(sp)
	la		t0,	rk_addr_1
	sw		t0,	292(sp)
	lw		t1,	292(sp)
	lw		t0,	0(t1)
	sw		t0,	296(sp)
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	300(sp)
	li		t0,	4
	sw		t0,	304(sp)
	lw		t1,	304(sp)
	lw		t2,	300(sp)
	mul		t0,	t1,	t2
	sw		t0,	304(sp)
	lw		t1,	296(sp)
	lw		t2,	304(sp)
	add		t0,	t1,	t2
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	lw		t0,	0(t1)
	sw		t0,	312(sp)
	lw		t1,	288(sp)
	lw		t2,	312(sp)
	add		t0,	t1,	t2
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	lw		t2,	264(sp)
	sw		t1,	0(t2)
	j		.normal_block_18
.normal_block_18:
	li		t0,	1
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	j		.func_end_block_5
.normal_block_19:
	j		.func_end_block_5
	.size	f_union_1,	.-f_union_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_6:
	addi	sp,	sp,	-468
	sw		s0,	0(sp)
	addi	s0,	sp,	468
	sw		ra,	4(sp)
	addi	t0,	sp,	8
	sw		t0,	32(sp)
	addi	t0,	sp,	12
	sw		t0,	36(sp)
	addi	t0,	sp,	16
	sw		t0,	40(sp)
	addi	t0,	sp,	20
	sw		t0,	44(sp)
	addi	t0,	sp,	24
	sw		t0,	48(sp)
	addi	t0,	sp,	28
	sw		t0,	52(sp)
	j		.normal_block_20
.func_end_block_6:
	lw		t1,	32(sp)
	lw		t0,	0(t1)
	sw		t0,	56(sp)
	lw		t1,	56(sp)
	mv		a0,	t1
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	468
	ret
.normal_block_20:
	call	_main_initial_1
	call	f_getInt_1
	mv		t0,	a0
	sw		t0,	60(sp)
	la		t0,	n_addr_1
	sw		t0,	64(sp)
	lw		t1,	60(sp)
	lw		t2,	64(sp)
	sw		t1,	0(t2)
	call	f_getInt_1
	mv		t0,	a0
	sw		t0,	68(sp)
	la		t0,	m_addr_1
	sw		t0,	72(sp)
	lw		t1,	68(sp)
	lw		t2,	72(sp)
	sw		t1,	0(t2)
	la		t0,	m_addr_1
	sw		t0,	76(sp)
	lw		t1,	76(sp)
	lw		t0,	0(t1)
	sw		t0,	80(sp)
	li		t0,	8
	sw		t0,	84(sp)
	lw		t1,	84(sp)
	lw		t2,	80(sp)
	mul		t0,	t1,	t2
	sw		t0,	88(sp)
	li		t0,	4
	sw		t0,	92(sp)
	lw		t1,	88(sp)
	lw		t2,	92(sp)
	add		t0,	t1,	t2
	sw		t0,	96(sp)
	lw		t1,	96(sp)
	mv		a0,	t1
	call	_heap_malloc_1
	mv		t0,	a0
	sw		t0,	100(sp)
	lw		t1,	100(sp)
	mv		t0,	t1
	sw		t0,	104(sp)
	lw		t1,	80(sp)
	lw		t2,	104(sp)
	sw		t1,	0(t2)
	lw		t1,	104(sp)
	addi	t0,	t1,	4
	sw		t0,	108(sp)
	lw		t1,	108(sp)
	mv		t0,	t1
	sw		t0,	112(sp)
	la		t0,	e_addr_1
	sw		t0,	116(sp)
	lw		t1,	112(sp)
	lw		t2,	116(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	120(sp)
	lw		t1,	120(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_2
.for_condition_block_2:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	124(sp)
	la		t0,	m_addr_1
	sw		t0,	128(sp)
	lw		t1,	128(sp)
	lw		t0,	0(t1)
	sw		t0,	132(sp)
	lw		t1,	124(sp)
	lw		t2,	132(sp)
	slt		t0,	t1,	t2
	sw		t0,	136(sp)
	lw		t1,	136(sp)
	beqz	t1,	.normal_block_21
	j		.for_body_block_2
.for_body_block_2:
	li		t0,	12
	sw		t0,	140(sp)
	lw		t1,	140(sp)
	mv		a0,	t1
	call	_heap_malloc_1
	mv		t0,	a0
	sw		t0,	144(sp)
	lw		t1,	144(sp)
	mv		t0,	t1
	sw		t0,	148(sp)
	lw		t1,	148(sp)
	lw		t2,	44(sp)
	sw		t1,	0(t2)
	lw		t1,	44(sp)
	mv		a0,	t1
	call	class_constructor_Edge.Edge_1
	lw		t1,	148(sp)
	lw		t2,	40(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	152(sp)
	lw		t1,	152(sp)
	addi	t0,	t1,	0
	sw		t0,	156(sp)
	call	f_getInt_1
	mv		t0,	a0
	sw		t0,	160(sp)
	lw		t1,	160(sp)
	lw		t2,	156(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	164(sp)
	lw		t1,	164(sp)
	addi	t0,	t1,	4
	sw		t0,	168(sp)
	call	f_getInt_1
	mv		t0,	a0
	sw		t0,	172(sp)
	lw		t1,	172(sp)
	lw		t2,	168(sp)
	sw		t1,	0(t2)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	176(sp)
	lw		t1,	176(sp)
	addi	t0,	t1,	8
	sw		t0,	180(sp)
	call	f_getInt_1
	mv		t0,	a0
	sw		t0,	184(sp)
	lw		t1,	184(sp)
	lw		t2,	180(sp)
	sw		t1,	0(t2)
	la		t0,	e_addr_1
	sw		t0,	188(sp)
	lw		t1,	188(sp)
	lw		t0,	0(t1)
	sw		t0,	192(sp)
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	196(sp)
	li		t0,	4
	sw		t0,	200(sp)
	lw		t1,	200(sp)
	lw		t2,	196(sp)
	mul		t0,	t1,	t2
	sw		t0,	200(sp)
	lw		t1,	192(sp)
	lw		t2,	200(sp)
	add		t0,	t1,	t2
	sw		t0,	204(sp)
	lw		t1,	40(sp)
	lw		t0,	0(t1)
	sw		t0,	208(sp)
	lw		t1,	208(sp)
	lw		t2,	204(sp)
	sw		t1,	0(t2)
	j		.for_update_block_2
.for_update_block_2:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	212(sp)
	li		t0,	1
	sw		t0,	216(sp)
	lw		t1,	212(sp)
	lw		t2,	216(sp)
	add		t0,	t1,	t2
	sw		t0,	220(sp)
	lw		t1,	220(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.for_condition_block_2
.normal_block_21:
	la		t0,	e_addr_1
	sw		t0,	224(sp)
	lw		t1,	224(sp)
	lw		t0,	0(t1)
	sw		t0,	228(sp)
	la		t0,	m_addr_1
	sw		t0,	232(sp)
	lw		t1,	232(sp)
	lw		t0,	0(t1)
	sw		t0,	236(sp)
	li		t0,	1
	sw		t0,	240(sp)
	lw		t1,	236(sp)
	lw		t2,	240(sp)
	sub		t0,	t1,	t2
	sw		t0,	244(sp)
	lw		t1,	228(sp)
	mv		a0,	t1
	li		t0,	0
	sw		t0,	248(sp)
	lw		t1,	248(sp)
	mv		a1,	t1
	lw		t1,	244(sp)
	mv		a2,	t1
	call	f_qsort_1
	call	f_init_1
	li		t0,	0
	sw		t0,	252(sp)
	lw		t1,	252(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	256(sp)
	lw		t1,	256(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	j		.while_condition_block_4
.while_condition_block_4:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	260(sp)
	la		t0,	n_addr_1
	sw		t0,	264(sp)
	lw		t1,	264(sp)
	lw		t0,	0(t1)
	sw		t0,	268(sp)
	li		t0,	1
	sw		t0,	272(sp)
	lw		t1,	268(sp)
	lw		t2,	272(sp)
	sub		t0,	t1,	t2
	sw		t0,	276(sp)
	lw		t1,	260(sp)
	lw		t2,	276(sp)
	slt		t0,	t1,	t2
	sw		t0,	280(sp)
	lw		t1,	280(sp)
	beqz	t1,	.normal_block_22
	j		.while_body_block_4
.while_body_block_4:
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	284(sp)
	la		t0,	m_addr_1
	sw		t0,	288(sp)
	lw		t1,	288(sp)
	lw		t0,	0(t1)
	sw		t0,	292(sp)
	lw		t1,	284(sp)
	lw		t2,	292(sp)
	slt		t0,	t1,	t2
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	seqz	t0,	t1,
	sw		t0,	296(sp)
	lw		t1,	296(sp)
	beqz	t1,	.normal_block_23
	j		.if_body_block_7
.normal_block_22:
	la		t0,	rk_addr_1
	sw		t0,	300(sp)
	lw		t1,	300(sp)
	lw		t0,	0(t1)
	sw		t0,	304(sp)
	li		t0,	1
	sw		t0,	308(sp)
	lw		t1,	308(sp)
	mv		a0,	t1
	call	f_find_1
	mv		t0,	a0
	sw		t0,	312(sp)
	li		t0,	4
	sw		t0,	316(sp)
	lw		t1,	316(sp)
	lw		t2,	312(sp)
	mul		t0,	t1,	t2
	sw		t0,	316(sp)
	lw		t1,	304(sp)
	lw		t2,	316(sp)
	add		t0,	t1,	t2
	sw		t0,	320(sp)
	lw		t1,	320(sp)
	lw		t0,	0(t1)
	sw		t0,	324(sp)
	la		t0,	n_addr_1
	sw		t0,	328(sp)
	lw		t1,	328(sp)
	lw		t0,	0(t1)
	sw		t0,	332(sp)
	lw		t1,	324(sp)
	lw		t2,	332(sp)
	xor		t0,	t1,	t2
	sw		t0,	336(sp)
	lw		t1,	336(sp)
	seqz	t0,	t1,
	sw		t0,	336(sp)
	lw		t1,	336(sp)
	beqz	t1,	.else_body_block_9
	j		.if_body_block_9
.if_body_block_7:
	li		t0,	-1
	sw		t0,	340(sp)
	lw		t1,	340(sp)
	mv		a0,	t1
	call	f_printInt_1
	li		t0,	0
	sw		t0,	344(sp)
	lw		t1,	344(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.func_end_block_6
.normal_block_23:
	la		t0,	e_addr_1
	sw		t0,	348(sp)
	lw		t1,	348(sp)
	lw		t0,	0(t1)
	sw		t0,	352(sp)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	356(sp)
	li		t0,	4
	sw		t0,	360(sp)
	lw		t1,	360(sp)
	lw		t2,	356(sp)
	mul		t0,	t1,	t2
	sw		t0,	360(sp)
	lw		t1,	352(sp)
	lw		t2,	360(sp)
	add		t0,	t1,	t2
	sw		t0,	364(sp)
	lw		t1,	364(sp)
	lw		t0,	0(t1)
	sw		t0,	368(sp)
	lw		t1,	368(sp)
	lw		t2,	52(sp)
	sw		t1,	0(t2)
	lw		t1,	48(sp)
	lw		t0,	0(t1)
	sw		t0,	372(sp)
	li		t0,	1
	sw		t0,	376(sp)
	lw		t1,	372(sp)
	lw		t2,	376(sp)
	add		t0,	t1,	t2
	sw		t0,	380(sp)
	lw		t1,	380(sp)
	lw		t2,	48(sp)
	sw		t1,	0(t2)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	384(sp)
	lw		t1,	384(sp)
	addi	t0,	t1,	0
	sw		t0,	388(sp)
	lw		t1,	388(sp)
	lw		t0,	0(t1)
	sw		t0,	392(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	396(sp)
	lw		t1,	396(sp)
	addi	t0,	t1,	4
	sw		t0,	400(sp)
	lw		t1,	400(sp)
	lw		t0,	0(t1)
	sw		t0,	404(sp)
	lw		t1,	392(sp)
	mv		a0,	t1
	lw		t1,	404(sp)
	mv		a1,	t1
	call	f_union_1
	mv		t0,	a0
	sw		t0,	408(sp)
	lw		t1,	408(sp)
	beqz	t1,	.normal_block_25
	j		.if_body_block_8
.normal_block_24:
	j		.normal_block_23
.if_body_block_8:
	lw		t1,	36(sp)
	lw		t0,	0(t1)
	sw		t0,	412(sp)
	li		t0,	1
	sw		t0,	416(sp)
	lw		t1,	412(sp)
	lw		t2,	416(sp)
	add		t0,	t1,	t2
	sw		t0,	420(sp)
	lw		t1,	420(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	la		t0,	ans_addr_1
	sw		t0,	424(sp)
	lw		t1,	424(sp)
	lw		t0,	0(t1)
	sw		t0,	428(sp)
	lw		t1,	52(sp)
	lw		t0,	0(t1)
	sw		t0,	432(sp)
	lw		t1,	432(sp)
	addi	t0,	t1,	8
	sw		t0,	436(sp)
	lw		t1,	436(sp)
	lw		t0,	0(t1)
	sw		t0,	440(sp)
	lw		t1,	428(sp)
	lw		t2,	440(sp)
	add		t0,	t1,	t2
	sw		t0,	444(sp)
	la		t0,	ans_addr_1
	sw		t0,	448(sp)
	lw		t1,	444(sp)
	lw		t2,	448(sp)
	sw		t1,	0(t2)
	j		.normal_block_25
.normal_block_25:
	j		.while_condition_block_4
.if_body_block_9:
	la		t0,	ans_addr_1
	sw		t0,	452(sp)
	lw		t1,	452(sp)
	lw		t0,	0(t1)
	sw		t0,	456(sp)
	lw		t1,	456(sp)
	mv		a0,	t1
	call	f_printInt_1
	j		.normal_block_26
.else_body_block_9:
	li		t0,	-1
	sw		t0,	460(sp)
	lw		t1,	460(sp)
	mv		a0,	t1
	call	f_printInt_1
	j		.normal_block_26
.normal_block_26:
	li		t0,	0
	sw		t0,	464(sp)
	lw		t1,	464(sp)
	lw		t2,	32(sp)
	sw		t1,	0(t2)
	j		.func_end_block_6
.normal_block_27:
	j		.func_end_block_6
	.size	main,	.-main

	.globl	_main_initial_1
	.p2align	2
	.type	_main_initial_1,@function
_main_initial_1:
.func_begin_block_7:
	addi	sp,	sp,	-40
	sw		s0,	0(sp)
	addi	s0,	sp,	40
	sw		ra,	4(sp)
	j		.normal_block_28
.func_end_block_7:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	40
	ret
.normal_block_28:
	li		t0,	0
	sw		t0,	8(sp)
	la		t0,	ans_addr_1
	sw		t0,	12(sp)
	lw		t1,	8(sp)
	lw		t2,	12(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	16(sp)
	la		t0,	fa_addr_1
	sw		t0,	20(sp)
	lw		t1,	16(sp)
	lw		t2,	20(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	24(sp)
	la		t0,	rk_addr_1
	sw		t0,	28(sp)
	lw		t1,	24(sp)
	lw		t2,	28(sp)
	sw		t1,	0(t2)
	li		t0,	0
	sw		t0,	32(sp)
	la		t0,	e_addr_1
	sw		t0,	36(sp)
	lw		t1,	32(sp)
	lw		t2,	36(sp)
	sw		t1,	0(t2)
	j		.func_end_block_7
	.size	_main_initial_1,	.-_main_initial_1

	.globl	class_constructor_Edge.Edge_1
	.p2align	2
	.type	class_constructor_Edge.Edge_1,@function
class_constructor_Edge.Edge_1:
.func_begin_block_1:
	addi	sp,	sp,	-12
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		ra,	4(sp)
	mv		t0,	a0
	sw		t0,	8(sp)
	j		.normal_block_1
.func_end_block_1:
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
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

