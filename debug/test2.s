	.section	.text
	.globl	f_gcd_1
	.p2align	2
	.type	f_gcd_1,@function
f_gcd_1:
.func_begin_block_1:
	addi	sp,	sp,	-140
	sw		s0,	0(sp)
	addi	s0,	sp,	140
	sw		ra,	4(sp)
	mv		x_1_0_,	a0
	mv		y_1_0_,	a1
	mv		j0_1_0_,	a2
	mv		j1_1_0_,	a3
	mv		j2_1_0_,	a4
	mv		j3_1_0_,	a5
	mv		j4_1_0_,	a6
	mv		j5_1_0_,	a7
	lw		pres0_0_,	0(sp)
	lw		j6_1_0_,	-4(pres0_0_)
	lw		j7_1_0_,	-8(pres0_0_)
	lw		j8_1_0_,	-12(pres0_0_)
	lw		j9_1_0_,	-16(pres0_0_)
	lw		j10_1_0_,	-20(pres0_0_)
	lw		j11_1_0_,	-24(pres0_0_)
	lw		j12_1_0_,	-28(pres0_0_)
	lw		j13_1_0_,	-32(pres0_0_)
	lw		j14_1_0_,	-36(pres0_0_)
	lw		j15_1_0_,	-40(pres0_0_)
	lw		j16_1_0_,	-44(pres0_0_)
	lw		j17_1_0_,	-48(pres0_0_)
	lw		j18_1_0_,	-52(pres0_0_)
	lw		j19_1_0_,	-56(pres0_0_)
	lw		j20_1_0_,	-60(pres0_0_)
	lw		j21_1_0_,	-64(pres0_0_)
	lw		j22_1_0_,	-68(pres0_0_)
	lw		j23_1_0_,	-72(pres0_0_)
	lw		j24_1_0_,	-76(pres0_0_)
	lw		j25_1_0_,	-80(pres0_0_)
	lw		j26_1_0_,	-84(pres0_0_)
	lw		j27_1_0_,	-88(pres0_0_)
	lw		j28_1_0_,	-92(pres0_0_)
	lw		j29_1_0_,	-96(pres0_0_)
	mv		calleesaveVreg___0_,	s1
	mv		calleesaveVreg___1_,	s2
	mv		calleesaveVreg___2_,	s3
	mv		calleesaveVreg___3_,	s4
	mv		calleesaveVreg___4_,	s5
	mv		calleesaveVreg___5_,	s6
	mv		calleesaveVreg___6_,	s7
	mv		calleesaveVreg___7_,	s8
	mv		calleesaveVreg___8_,	s9
	mv		calleesaveVreg___9_,	s10
	mv		calleesaveVreg___10_,	s11
	addi	funcReturn_addr_1_0_,	sp,	8
	addi	x_addr_1_0_,	sp,	12
	addi	y_addr_1_0_,	sp,	16
	addi	j0_addr_1_0_,	sp,	20
	addi	j1_addr_1_0_,	sp,	24
	addi	j2_addr_1_0_,	sp,	28
	addi	j3_addr_1_0_,	sp,	32
	addi	j4_addr_1_0_,	sp,	36
	addi	j5_addr_1_0_,	sp,	40
	addi	j6_addr_1_0_,	sp,	44
	addi	j7_addr_1_0_,	sp,	48
	addi	j8_addr_1_0_,	sp,	52
	addi	j9_addr_1_0_,	sp,	56
	addi	j10_addr_1_0_,	sp,	60
	addi	j11_addr_1_0_,	sp,	64
	addi	j12_addr_1_0_,	sp,	68
	addi	j13_addr_1_0_,	sp,	72
	addi	j14_addr_1_0_,	sp,	76
	addi	j15_addr_1_0_,	sp,	80
	addi	j16_addr_1_0_,	sp,	84
	addi	j17_addr_1_0_,	sp,	88
	addi	j18_addr_1_0_,	sp,	92
	addi	j19_addr_1_0_,	sp,	96
	addi	j20_addr_1_0_,	sp,	100
	addi	j21_addr_1_0_,	sp,	104
	addi	j22_addr_1_0_,	sp,	108
	addi	j23_addr_1_0_,	sp,	112
	addi	j24_addr_1_0_,	sp,	116
	addi	j25_addr_1_0_,	sp,	120
	addi	j26_addr_1_0_,	sp,	124
	addi	j27_addr_1_0_,	sp,	128
	addi	j28_addr_1_0_,	sp,	132
	addi	j29_addr_1_0_,	sp,	136
	j		.normal_block_1
.func_end_block_1:
	lw		load_1_0_,	0(funcReturn_addr_1_0_)
	mv		a0,	load_1_0_
	mv		s1,	calleesaveVreg___0_
	mv		s2,	calleesaveVreg___1_
	mv		s3,	calleesaveVreg___2_
	mv		s4,	calleesaveVreg___3_
	mv		s5,	calleesaveVreg___4_
	mv		s6,	calleesaveVreg___5_
	mv		s7,	calleesaveVreg___6_
	mv		s8,	calleesaveVreg___7_
	mv		s9,	calleesaveVreg___8_
	mv		s10,	calleesaveVreg___9_
	mv		s11,	calleesaveVreg___10_
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	140
	ret
.normal_block_1:
	sw		x_1_0_,	0(x_addr_1_0_)
	sw		y_1_0_,	0(y_addr_1_0_)
	sw		j0_1_0_,	0(j0_addr_1_0_)
	sw		j1_1_0_,	0(j1_addr_1_0_)
	sw		j2_1_0_,	0(j2_addr_1_0_)
	sw		j3_1_0_,	0(j3_addr_1_0_)
	sw		j4_1_0_,	0(j4_addr_1_0_)
	sw		j5_1_0_,	0(j5_addr_1_0_)
	sw		j6_1_0_,	0(j6_addr_1_0_)
	sw		j7_1_0_,	0(j7_addr_1_0_)
	sw		j8_1_0_,	0(j8_addr_1_0_)
	sw		j9_1_0_,	0(j9_addr_1_0_)
	sw		j10_1_0_,	0(j10_addr_1_0_)
	sw		j11_1_0_,	0(j11_addr_1_0_)
	sw		j12_1_0_,	0(j12_addr_1_0_)
	sw		j13_1_0_,	0(j13_addr_1_0_)
	sw		j14_1_0_,	0(j14_addr_1_0_)
	sw		j15_1_0_,	0(j15_addr_1_0_)
	sw		j16_1_0_,	0(j16_addr_1_0_)
	sw		j17_1_0_,	0(j17_addr_1_0_)
	sw		j18_1_0_,	0(j18_addr_1_0_)
	sw		j19_1_0_,	0(j19_addr_1_0_)
	sw		j20_1_0_,	0(j20_addr_1_0_)
	sw		j21_1_0_,	0(j21_addr_1_0_)
	sw		j22_1_0_,	0(j22_addr_1_0_)
	sw		j23_1_0_,	0(j23_addr_1_0_)
	sw		j24_1_0_,	0(j24_addr_1_0_)
	sw		j25_1_0_,	0(j25_addr_1_0_)
	sw		j26_1_0_,	0(j26_addr_1_0_)
	sw		j27_1_0_,	0(j27_addr_1_0_)
	sw		j28_1_0_,	0(j28_addr_1_0_)
	sw		j29_1_0_,	0(j29_addr_1_0_)
	lw		load_2_0_,	0(y_addr_1_0_)
	sw		load_2_0_,	0(funcReturn_addr_1_0_)
	j		.func_end_block_1
.normal_block_2:
	j		.func_end_block_1
	.size	f_gcd_1,	.-f_gcd_1

	.globl	main
	.p2align	2
	.type	main,@function
main:
.func_begin_block_2:
	addi	sp,	sp,	-12
	sw		s0,	0(sp)
	addi	s0,	sp,	12
	sw		ra,	4(sp)
	mv		calleesaveVreg___11_,	s1
	mv		calleesaveVreg___12_,	s2
	mv		calleesaveVreg___13_,	s3
	mv		calleesaveVreg___14_,	s4
	mv		calleesaveVreg___15_,	s5
	mv		calleesaveVreg___16_,	s6
	mv		calleesaveVreg___17_,	s7
	mv		calleesaveVreg___18_,	s8
	mv		calleesaveVreg___19_,	s9
	mv		calleesaveVreg___20_,	s10
	mv		calleesaveVreg___21_,	s11
	addi	funcReturn_addr_2_0_,	sp,	8
	j		.normal_block_3
.func_end_block_2:
	lw		load_3_0_,	0(funcReturn_addr_2_0_)
	mv		a0,	load_3_0_
	mv		s1,	calleesaveVreg___11_
	mv		s2,	calleesaveVreg___12_
	mv		s3,	calleesaveVreg___13_
	mv		s4,	calleesaveVreg___14_
	mv		s5,	calleesaveVreg___15_
	mv		s6,	calleesaveVreg___16_
	mv		s7,	calleesaveVreg___17_
	mv		s8,	calleesaveVreg___18_
	mv		s9,	calleesaveVreg___19_
	mv		s10,	calleesaveVreg___20_
	mv		s11,	calleesaveVreg___21_
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	12
	ret
.normal_block_3:
	call	_main_initial_1
	li		const___0_,	10
	mv		a0,	const___0_
	li		const___1_,	1
	mv		a1,	const___1_
	li		const___2_,	0
	mv		a2,	const___2_
	li		const___3_,	2
	mv		a3,	const___3_
	li		const___4_,	4
	mv		a4,	const___4_
	li		const___5_,	6
	mv		a5,	const___5_
	li		const___6_,	8
	mv		a6,	const___6_
	li		const___7_,	10
	mv		a7,	const___7_
	li		const___8_,	12
	sw		const___8_,	-4(s0)
	li		const___9_,	14
	sw		const___9_,	-8(s0)
	li		const___10_,	16
	sw		const___10_,	-12(s0)
	li		const___11_,	18
	sw		const___11_,	-16(s0)
	li		const___12_,	20
	sw		const___12_,	-20(s0)
	li		const___13_,	22
	sw		const___13_,	-24(s0)
	li		const___14_,	24
	sw		const___14_,	-28(s0)
	li		const___15_,	26
	sw		const___15_,	-32(s0)
	li		const___16_,	28
	sw		const___16_,	-36(s0)
	li		const___17_,	30
	sw		const___17_,	-40(s0)
	li		const___18_,	32
	sw		const___18_,	-44(s0)
	li		const___19_,	34
	sw		const___19_,	-48(s0)
	li		const___20_,	36
	sw		const___20_,	-52(s0)
	li		const___21_,	38
	sw		const___21_,	-56(s0)
	li		const___22_,	40
	sw		const___22_,	-60(s0)
	li		const___23_,	42
	sw		const___23_,	-64(s0)
	li		const___24_,	44
	sw		const___24_,	-68(s0)
	li		const___25_,	46
	sw		const___25_,	-72(s0)
	li		const___26_,	48
	sw		const___26_,	-76(s0)
	li		const___27_,	50
	sw		const___27_,	-80(s0)
	li		const___28_,	52
	sw		const___28_,	-84(s0)
	li		const___29_,	54
	sw		const___29_,	-88(s0)
	li		const___30_,	56
	sw		const___30_,	-92(s0)
	li		const___31_,	58
	sw		const___31_,	-96(s0)
	call	f_gcd_1
	mv		call_2_0_,	a0
	li		const___32_,	1024
	add		add_1_0_,	call_2_0_,	const___32_
	mv		a0,	add_1_0_
	call	f_toString_1
	mv		call_3_0_,	a0
	mv		a0,	call_3_0_
	call	f_println_1
	li		const___33_,	0
	sw		const___33_,	0(funcReturn_addr_2_0_)
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
	mv		calleesaveVreg___22_,	s1
	mv		calleesaveVreg___23_,	s2
	mv		calleesaveVreg___24_,	s3
	mv		calleesaveVreg___25_,	s4
	mv		calleesaveVreg___26_,	s5
	mv		calleesaveVreg___27_,	s6
	mv		calleesaveVreg___28_,	s7
	mv		calleesaveVreg___29_,	s8
	mv		calleesaveVreg___30_,	s9
	mv		calleesaveVreg___31_,	s10
	mv		calleesaveVreg___32_,	s11
	j		.normal_block_5
.func_end_block_3:
	mv		s1,	calleesaveVreg___22_
	mv		s2,	calleesaveVreg___23_
	mv		s3,	calleesaveVreg___24_
	mv		s4,	calleesaveVreg___25_
	mv		s5,	calleesaveVreg___26_
	mv		s6,	calleesaveVreg___27_
	mv		s7,	calleesaveVreg___28_
	mv		s8,	calleesaveVreg___29_
	mv		s9,	calleesaveVreg___30_
	mv		s10,	calleesaveVreg___31_
	mv		s11,	calleesaveVreg___32_
	lw		s0,	0(sp)
	lw		ra,	4(sp)
	addi	sp,	sp,	8
	ret
.normal_block_5:
	j		.func_end_block_3
	.size	_main_initial_1,	.-_main_initial_1

	.section	.bss
	.section	.rodata

