	.section	.text
	.globl	f_cd_1
	.p2align	2
	.type	f_cd_1,@function
f_cd_1:
.func_begin_block_1:
	addi	sp,	sp,	-32
	sw		s0,	0(sp)
	addi	s0,	sp,	32
	sw		ra,	4(sp)
	mv		d_1_0_,	a0
	mv		a_1_0_,	a1
	mv		b_1_0_,	a2
	mv		c_1_0_,	a3
	mv		sum_1_0_,	a4
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
	addi	d_addr_1_0_,	sp,	12
	addi	a_addr_1_0_,	sp,	16
	addi	b_addr_1_0_,	sp,	20
	addi	c_addr_1_0_,	sp,	24
	addi	sum_addr_1_0_,	sp,	28
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
	addi	sp,	sp,	32
	ret
.normal_block_1:
	sw		d_1_0_,	0(d_addr_1_0_)
	sw		a_1_0_,	0(a_addr_1_0_)
	sw		b_1_0_,	0(b_addr_1_0_)
	sw		c_1_0_,	0(c_addr_1_0_)
	sw		sum_1_0_,	0(sum_addr_1_0_)
	lw		load_2_0_,	0(d_addr_1_0_)
	li		const___0_,	1
	xor		icmp_1_0_,	load_2_0_,	const___0_
	seqz	icmp_1_0_,	icmp_1_0_,
	beqz	icmp_1_0_,	.else_body_block_1
	j		.if_body_block_1
.if_body_block_1:
	lw		load_3_0_,	0(a_addr_1_0_)
	la		const___1_,	const_string_1
	addi	gep_1_0_,	const___1_,	0
	mv		a0,	gep_1_0_
	mv		a1,	load_3_0_
	call	_string_merge_1
	mv		call_1_0_,	a0
	la		const___2_,	const_string_2
	addi	gep_2_0_,	const___2_,	0
	mv		a0,	call_1_0_
	mv		a1,	gep_2_0_
	call	_string_merge_1
	mv		call_2_0_,	a0
	lw		load_4_0_,	0(c_addr_1_0_)
	mv		a0,	call_2_0_
	mv		a1,	load_4_0_
	call	_string_merge_1
	mv		call_3_0_,	a0
	mv		a0,	call_3_0_
	call	f_println_1
	lw		load_5_0_,	0(sum_addr_1_0_)
	li		const___3_,	1
	add		add_1_0_,	load_5_0_,	const___3_
	sw		add_1_0_,	0(sum_addr_1_0_)
	j		.normal_block_2
.else_body_block_1:
	lw		load_6_0_,	0(d_addr_1_0_)
	li		const___4_,	1
	sub		sub_1_0_,	load_6_0_,	const___4_
	lw		load_7_0_,	0(a_addr_1_0_)
	lw		load_8_0_,	0(c_addr_1_0_)
	lw		load_9_0_,	0(b_addr_1_0_)
	lw		load_10_0_,	0(sum_addr_1_0_)
	mv		a0,	sub_1_0_
	mv		a1,	load_7_0_
	mv		a2,	load_8_0_
	mv		a3,	load_9_0_
	mv		a4,	load_10_0_
	call	f_cd_1
	mv		call_5_0_,	a0
	sw		call_5_0_,	0(sum_addr_1_0_)
	lw		load_11_0_,	0(a_addr_1_0_)
	la		const___5_,	const_string_3
	addi	gep_3_0_,	const___5_,	0
	mv		a0,	gep_3_0_
	mv		a1,	load_11_0_
	call	_string_merge_1
	mv		call_6_0_,	a0
	la		const___6_,	const_string_4
	addi	gep_4_0_,	const___6_,	0
	mv		a0,	call_6_0_
	mv		a1,	gep_4_0_
	call	_string_merge_1
	mv		call_7_0_,	a0
	lw		load_12_0_,	0(c_addr_1_0_)
	mv		a0,	call_7_0_
	mv		a1,	load_12_0_
	call	_string_merge_1
	mv		call_8_0_,	a0
	mv		a0,	call_8_0_
	call	f_println_1
	lw		load_13_0_,	0(d_addr_1_0_)
	li		const___7_,	1
	sub		sub_2_0_,	load_13_0_,	const___7_
	lw		load_14_0_,	0(b_addr_1_0_)
	lw		load_15_0_,	0(a_addr_1_0_)
	lw		load_16_0_,	0(c_addr_1_0_)
	lw		load_17_0_,	0(sum_addr_1_0_)
	mv		a0,	sub_2_0_
	mv		a1,	load_14_0_
	mv		a2,	load_15_0_
	mv		a3,	load_16_0_
	mv		a4,	load_17_0_
	call	f_cd_1
	mv		call_10_0_,	a0
	sw		call_10_0_,	0(sum_addr_1_0_)
	lw		load_18_0_,	0(sum_addr_1_0_)
	li		const___8_,	1
	add		add_2_0_,	load_18_0_,	const___8_
	sw		add_2_0_,	0(sum_addr_1_0_)
	j		.normal_block_2
.normal_block_2:
	lw		load_19_0_,	0(sum_addr_1_0_)
	sw		load_19_0_,	0(funcReturn_addr_1_0_)
	j		.func_end_block_1
.normal_block_3:
	j		.func_end_block_1
	.size	f_cd_1,	.-f_cd_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-32
	sw		s0,	0(sp)
	addi	s0,	sp,	32
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
	addi	funcReturn_addr_2_0_,	sp,	8
	addi	a_addr_2_0_,	sp,	12
	addi	b_addr_2_0_,	sp,	16
	addi	c_addr_2_0_,	sp,	20
	addi	d_addr_2_0_,	sp,	24
	addi	sum_addr_2_0_,	sp,	28
	j		.normal_block_4
.func_end_block_2:
	lw		load_20_0_,	0(funcReturn_addr_2_0_)
	mv		a0,	load_20_0_
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
	addi	sp,	sp,	32
	ret
.normal_block_4:
	call	_main_initial_1
	la		const___9_,	const_string_5
	addi	gep_5_0_,	const___9_,	0
	sw		gep_5_0_,	0(a_addr_2_0_)
	la		const___10_,	const_string_6
	addi	gep_6_0_,	const___10_,	0
	sw		gep_6_0_,	0(b_addr_2_0_)
	la		const___11_,	const_string_7
	addi	gep_7_0_,	const___11_,	0
	sw		gep_7_0_,	0(c_addr_2_0_)
	call	f_getInt_1
	mv		call_12_0_,	a0
	sw		call_12_0_,	0(d_addr_2_0_)
	lw		load_21_0_,	0(d_addr_2_0_)
	lw		load_22_0_,	0(a_addr_2_0_)
	lw		load_23_0_,	0(b_addr_2_0_)
	lw		load_24_0_,	0(c_addr_2_0_)
	mv		a0,	load_21_0_
	mv		a1,	load_22_0_
	mv		a2,	load_23_0_
	mv		a3,	load_24_0_
	li		const___12_,	0
	mv		a4,	const___12_
	call	f_cd_1
	mv		call_13_0_,	a0
	sw		call_13_0_,	0(sum_addr_2_0_)
	lw		load_25_0_,	0(sum_addr_2_0_)
	mv		a0,	load_25_0_
	call	f_toString_1
	mv		call_14_0_,	a0
	mv		a0,	call_14_0_
	call	f_println_1
	li		const___13_,	0
	sw		const___13_,	0(funcReturn_addr_2_0_)
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
	mv		calleesaveVreg___20_,	s2
	mv		calleesaveVreg___21_,	s3
	mv		calleesaveVreg___22_,	s4
	mv		calleesaveVreg___23_,	s5
	mv		calleesaveVreg___24_,	s6
	mv		calleesaveVreg___25_,	s7
	mv		calleesaveVreg___26_,	s8
	mv		calleesaveVreg___27_,	s9
	mv		calleesaveVreg___28_,	s10
	mv		calleesaveVreg___29_,	s11
	j		.normal_block_6
.func_end_block_3:
	mv		s2,	calleesaveVreg___20_
	mv		s3,	calleesaveVreg___21_
	mv		s4,	calleesaveVreg___22_
	mv		s5,	calleesaveVreg___23_
	mv		s6,	calleesaveVreg___24_
	mv		s7,	calleesaveVreg___25_
	mv		s8,	calleesaveVreg___26_
	mv		s9,	calleesaveVreg___27_
	mv		s10,	calleesaveVreg___28_
	mv		s11,	calleesaveVreg___29_
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


