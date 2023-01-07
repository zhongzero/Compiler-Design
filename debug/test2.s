	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -12
	addi	s0, sp, 12
	sw	ra, -8(s0)
	sw	s4, -12(s0)
	call	_GLOBAL_
	li	t6,1
	mv	s4,t6
	j	.for_condition_bb

.main_bb1:
	lw	s4, -12(s0)
	lw	ra, -8(s0)
	addi	sp, sp, 12
	lw	s0, -4(sp)
	ret

.for_condition_bb:
	la	t6,N_glo
	lw	t5, 0(t6)
	mv	t6,s4
	slt	t6, t5, t6
	xori	t6, t6, 1
	bne	t6,zero,.for_body_bb
	j	.main_bb2

.for_iter_bb:
	mv	t6,s4
	addi	t6, t6, 1
	mv	s4,t6
	j	.for_condition_bb

.for_body_bb:
	la	t6,b_glo
	lw	t5, 0(t6)
	mv	t6,s4
	li	t4,4
	mul	t6, t6, t4
	add	t6, t6, t5
	li	t5,1
	sw	t5, 0(t6)
	j	.for_iter_bb

.main_bb2:
	li	t6,2
	mv	s4,t6
	j	.for_condition_bb1

.for_condition_bb1:
	la	t6,N_glo
	lw	t5, 0(t6)
	mv	t6,s4
	slt	t6, t5, t6
	xori	t6, t6, 1
	bne	t6,zero,.for_body_bb1
	j	.main_bb3

.for_iter_bb1:
	mv	t6,s4
	addi	t6, t6, 1
	mv	s4,t6
	j	.for_condition_bb1

.for_body_bb1:
	la	t6,b_glo
	lw	t5, 0(t6)
	mv	t6,s4
	li	t4,4
	mul	t6, t6, t4
	add	t6, t6, t5
	lw	t6, 0(t6)
	bne	t6,zero,.if_then_bb
	j	.main_bb4

.main_bb3:
	li	a0,0
	j	.main_bb1

.if_then_bb:
	mv	a0,s4
	call	_f_toString
	call	_f_println
	j	.main_bb4

.main_bb4:
	j	.for_iter_bb1

	.size	main, .-main
			 # -- End function
	.globl	_global_var_init
	.p2align	1
	.type	_global_var_init,@function
_global_var_init:
.N_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -4
	addi	s0, sp, 4
	li	t6,15000
	la	t5,N_glo
	sw	t6, 0(t5)
	j	.N_bb1

.N_bb1:
	addi	sp, sp, 4
	lw	s0, -4(sp)
	ret

	.size	_global_var_init, .-_global_var_init
			 # -- End function
	.globl	_global_var_init1
	.p2align	1
	.type	_global_var_init1,@function
_global_var_init1:
.b_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -4
	addi	s0, sp, 4
	mv	s0,ra
	li	t5,15001
	li	t6,4
	mul	t6, t5, t6
	addi	a0, t6, 4
	call	_f__malloc
	li	t6,15001
	sw	t6, 0(a0)
	addi	t6, a0, 4
	la	t5,b_glo
	sw	t6, 0(t5)
	j	.b_bb1

.b_bb1:
	mv	ra,s0
	addi	sp, sp, 4
	lw	s0, -4(sp)
	ret

	.size	_global_var_init1, .-_global_var_init1
			 # -- End function
	.globl	_GLOBAL_
	.p2align	1
	.type	_GLOBAL_,@function
_GLOBAL_:
._GLOBAL__bb:
	sw	s0, -4(sp)
	addi	sp, sp, -4
	addi	s0, sp, 4
	mv	s0,ra
	call	_global_var_init
	call	_global_var_init1
	mv	ra,s0
	addi	sp, sp, 4
	lw	s0, -4(sp)
	ret

	.size	_GLOBAL_, .-_GLOBAL_
			 # -- End function
	.type	N_glo,@object
	.section	.bss
	.globl	N_glo
N_glo:
	.word	0
	.size	N_glo, 4
	.type	b_glo,@object
	.section	.bss
	.globl	b_glo
b_glo:
	.word	0
	.size	b_glo, 4