	.section	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_1:
	addi	sp,	sp,	-20
	sw		s0,	0(sp)
	addi	s0,	sp,	20
	sw		ra,	4(sp)
	mv		calleesaveVreg___0_,	s2
	mv		calleesaveVreg___1_,	s3
	mv		calleesaveVreg___2_,	s4
	mv		calleesaveVreg___3_,	s5
	mv		calleesaveVreg___4_,	s6
	mv		calleesaveVreg___5_,	s7
	mv		calleesaveVreg___6_,	s8
	mv		calleesaveVreg___7_,	s9
	mv		calleesaveVreg___8_,	s10
	mv		calleesaveVreg___9_,	s11
	addi	funcReturn_addr_1_0_,	sp,	8
	addi	b_addr_1_0_,	sp,	12
	addi	i_addr_1_0_,	sp,	16
	j		.normal_block_1
.func_end_block_1:
	lw		load_1_0_,	0(funcReturn_addr_1_0_)
	mv		a0,	load_1_0_
	mv		s2,	calleesaveVreg___0_
	mv		s3,	calleesaveVreg___1_
	mv		s4,	calleesaveVreg___2_
	mv		s5,	calleesaveVreg___3_
	mv		s6,	calleesaveVreg___4_
	mv		s7,	calleesaveVreg___5_
	mv		s8,	calleesaveVreg___6_
	mv		s9,	calleesaveVreg___7_
	mv		s10,	calleesaveVreg___8_
	mv		s11,	calleesaveVreg___9_
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	20
	ret
.normal_block_1:
	call	_main_initial_1
	li		const___0_,	36
	mv		a0,	const___0_
	call	_heap_malloc_1
	mv		call_2_0_,	a0
	mv		bitCast_1_0_,	call_2_0_
	li		const___1_,	4
	sw		const___1_,	0(bitCast_1_0_)
	addi	gep_1_0_,	bitCast_1_0_,	4
	mv		bitCast_2_0_,	gep_1_0_
	sw		bitCast_2_0_,	0(b_addr_1_0_)
	lw		load_2_0_,	0(b_addr_1_0_)
	addi	gep_2_0_,	load_2_0_,	0
	la		const___2_,	a_addr_1
	lw		load_3_0_,	0(const___2_)
	sw		load_3_0_,	0(gep_2_0_)
	lw		load_4_0_,	0(b_addr_1_0_)
	addi	gep_3_0_,	load_4_0_,	4
	la		const___3_,	a_addr_1
	lw		load_5_0_,	0(const___3_)
	sw		load_5_0_,	0(gep_3_0_)
	lw		load_6_0_,	0(b_addr_1_0_)
	addi	gep_4_0_,	load_6_0_,	8
	la		const___4_,	a_addr_1
	lw		load_7_0_,	0(const___4_)
	sw		load_7_0_,	0(gep_4_0_)
	lw		load_8_0_,	0(b_addr_1_0_)
	addi	gep_5_0_,	load_8_0_,	12
	la		const___5_,	a_addr_1
	lw		load_9_0_,	0(const___5_)
	sw		load_9_0_,	0(gep_5_0_)
	lw		load_10_0_,	0(b_addr_1_0_)
	mv		bitCast_3_0_,	load_10_0_
	addi	gep_6_0_,	bitCast_3_0_,	-4
	lw		load_11_0_,	0(gep_6_0_)
	mv		a0,	load_11_0_
	call	f_toString_1
	mv		call_3_0_,	a0
	mv		a0,	call_3_0_
	call	f_println_1
	li		const___6_,	0
	sw		const___6_,	0(i_addr_1_0_)
	j		.for_condition_block_1
.for_condition_block_1:
	lw		load_12_0_,	0(i_addr_1_0_)
	lw		load_13_0_,	0(b_addr_1_0_)
	addi	gep_7_0_,	load_13_0_,	0
	lw		load_14_0_,	0(gep_7_0_)
	mv		bitCast_4_0_,	load_14_0_
	addi	gep_8_0_,	bitCast_4_0_,	-4
	lw		load_15_0_,	0(gep_8_0_)
	slt		icmp_1_0_,	load_12_0_,	load_15_0_
	beqz	icmp_1_0_,	.normal_block_2
	j		.for_body_block_1
.for_body_block_1:
	lw		load_16_0_,	0(b_addr_1_0_)
	addi	gep_9_0_,	load_16_0_,	0
	lw		load_17_0_,	0(gep_9_0_)
	lw		load_18_0_,	0(i_addr_1_0_)
	li		const4___0_,	4
	mul		const4___0_,	const4___0_,	load_18_0_
	add		gep_10_0_,	load_17_0_,	const4___0_
	call	f_getInt_1
	mv		call_5_0_,	a0
	sw		call_5_0_,	0(gep_10_0_)
	j		.for_update_block_1
.for_update_block_1:
	lw		load_19_0_,	0(i_addr_1_0_)
	li		const___7_,	1
	add		add_1_0_,	load_19_0_,	const___7_
	sw		add_1_0_,	0(i_addr_1_0_)
	j		.for_condition_block_1
.normal_block_2:
	li		const___8_,	0
	sw		const___8_,	0(i_addr_1_0_)
	j		.for_condition_block_2
.for_condition_block_2:
	lw		load_20_0_,	0(i_addr_1_0_)
	lw		load_21_0_,	0(b_addr_1_0_)
	addi	gep_11_0_,	load_21_0_,	4
	lw		load_22_0_,	0(gep_11_0_)
	mv		bitCast_5_0_,	load_22_0_
	addi	gep_12_0_,	bitCast_5_0_,	-4
	lw		load_23_0_,	0(gep_12_0_)
	slt		icmp_2_0_,	load_20_0_,	load_23_0_
	beqz	icmp_2_0_,	.normal_block_3
	j		.for_body_block_2
.for_body_block_2:
	lw		load_24_0_,	0(b_addr_1_0_)
	addi	gep_13_0_,	load_24_0_,	4
	lw		load_25_0_,	0(gep_13_0_)
	lw		load_26_0_,	0(i_addr_1_0_)
	li		const4___1_,	4
	mul		const4___1_,	const4___1_,	load_26_0_
	add		gep_14_0_,	load_25_0_,	const4___1_
	lw		load_27_0_,	0(gep_14_0_)
	mv		a0,	load_27_0_
	call	f_toString_1
	mv		call_6_0_,	a0
	mv		a0,	call_6_0_
	call	f_print_1
	j		.for_update_block_2
.for_update_block_2:
	lw		load_28_0_,	0(i_addr_1_0_)
	li		const___9_,	1
	add		add_2_0_,	load_28_0_,	const___9_
	sw		add_2_0_,	0(i_addr_1_0_)
	j		.for_condition_block_2
.normal_block_3:
	li		const___10_,	0
	sw		const___10_,	0(funcReturn_addr_1_0_)
	j		.func_end_block_1
.normal_block_4:
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
	mv		calleesaveVreg___10_,	s2
	mv		calleesaveVreg___11_,	s3
	mv		calleesaveVreg___12_,	s4
	mv		calleesaveVreg___13_,	s5
	mv		calleesaveVreg___14_,	s6
	mv		calleesaveVreg___15_,	s7
	mv		calleesaveVreg___16_,	s8
	mv		calleesaveVreg___17_,	s9
	mv		calleesaveVreg___18_,	s10
	mv		calleesaveVreg___19_,	s11
	j		.normal_block_5
.func_end_block_2:
	mv		s2,	calleesaveVreg___10_
	mv		s3,	calleesaveVreg___11_
	mv		s4,	calleesaveVreg___12_
	mv		s5,	calleesaveVreg___13_
	mv		s6,	calleesaveVreg___14_
	mv		s7,	calleesaveVreg___15_
	mv		s8,	calleesaveVreg___16_
	mv		s9,	calleesaveVreg___17_
	mv		s10,	calleesaveVreg___18_
	mv		s11,	calleesaveVreg___19_
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_5:
	li		const___11_,	20
	mv		a0,	const___11_
	call	_heap_malloc_1
	mv		call_8_0_,	a0
	mv		bitCast_6_0_,	call_8_0_
	li		const___12_,	4
	sw		const___12_,	0(bitCast_6_0_)
	addi	gep_15_0_,	bitCast_6_0_,	4
	mv		bitCast_7_0_,	gep_15_0_
	li		const___13_,	20
	mv		a0,	const___13_
	call	_heap_malloc_1
	mv		call_9_0_,	a0
	mv		bitCast_8_0_,	call_9_0_
	li		const___14_,	4
	sw		const___14_,	0(bitCast_8_0_)
	addi	gep_16_0_,	bitCast_8_0_,	4
	mv		bitCast_9_0_,	gep_16_0_
	la		const___15_,	a_addr_1
	sw		bitCast_7_0_,	0(const___15_)
	j		.func_end_block_2
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.globl	a_addr_1
	.type	a_addr_1,@object
a_addr_1:
	.word	0
	.size	a_addr_1,	4

	.section	.rodata

