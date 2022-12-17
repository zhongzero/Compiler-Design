	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -20
	addi	s0, sp, 20
	sw	ra, -12(s0)
	sw	s3, -8(s0)
	sw	s4, -16(s0)
	sw	s5, -20(s0)
	call	_GLOBAL_
	li	t5,4
	li	t6,8
	mul	t6, t5, t6
	addi	a0, t6, 4
	call	_f__malloc
	li	t6,4
	sw	t6, 0(a0)
	addi	s5, a0, 4
	la	t6,a_glo
	lw	t5, 0(t6)
	addi	t6, s5, 0
	sw	t5, 0(t6)
	la	t6,a_glo
	lw	t5, 0(t6)
	addi	t6, s5, 8
	sw	t5, 0(t6)
	la	t6,a_glo
	lw	t5, 0(t6)
	addi	t6, s5, 16
	sw	t5, 0(t6)
	la	t6,a_glo
	lw	t5, 0(t6)
	addi	t6, s5, 24
	sw	t5, 0(t6)
	addi	t6, s5, -4
	lw	a0, 0(t6)
	call	_f_toString
	call	_f_println
	li	s4,0
	j	.for_condition_bb

.main_bb1:
	lw	s3, -8(s0)
	lw	s4, -16(s0)
	lw	s5, -20(s0)
	lw	ra, -12(s0)
	addi	sp, sp, 20
	lw	s0, -4(sp)
	ret

.for_condition_bb:
	addi	t6, s5, 0
	lw	t6, 0(t6)
	addi	t6, t6, -4
	lw	t6, 0(t6)
	slt	t6, s4, t6
	bne	t6,zero,.for_body_bb
	j	.main_bb2

.for_iter_bb:
	addi	s4, s4, 1
	j	.for_condition_bb

.for_body_bb:
	call	_f_getInt
	addi	t6, s5, 0
	lw	t5, 0(t6)
	li	t6,4
	mul	t6, s4, t6
	add	t6, t6, t5
	sw	a0, 0(t6)
	j	.for_iter_bb

.main_bb2:
	li	s4,0
	j	.for_condition_bb1

.for_condition_bb1:
	addi	t6, s5, 8
	lw	t6, 0(t6)
	addi	t6, t6, -4
	lw	t6, 0(t6)
	slt	t6, s4, t6
	bne	t6,zero,.for_body_bb1
	j	.main_bb3

.for_iter_bb1:
	addi	s4, s4, 1
	j	.for_condition_bb1

.for_body_bb1:
	addi	t6, s5, 8
	lw	t6, 0(t6)
	li	t5,4
	mul	t5, s4, t5
	add	t6, t5, t6
	lw	a0, 0(t6)
	call	_f_toString
	call	_f_print
	j	.for_iter_bb1

.main_bb3:
	la	a0,_str
	call	_f_println
	li	s4,0
	j	.for_condition_bb2

.for_condition_bb2:
	addi	t6, s5, 16
	lw	t6, 0(t6)
	addi	t6, t6, -4
	lw	t6, 0(t6)
	slt	t6, s4, t6
	bne	t6,zero,.for_body_bb2
	j	.main_bb4

.for_iter_bb2:
	addi	s4, s4, 1
	j	.for_condition_bb2

.for_body_bb2:
	addi	t6, s5, 16
	lw	t6, 0(t6)
	li	t5,4
	mul	t5, s4, t5
	add	t6, t5, t6
	li	t5,0
	sw	t5, 0(t6)
	j	.for_iter_bb2

.main_bb4:
	li	s4,0
	j	.for_condition_bb3

.for_condition_bb3:
	addi	t6, s5, 24
	lw	t6, 0(t6)
	addi	t6, t6, -4
	lw	t6, 0(t6)
	slt	t6, s4, t6
	bne	t6,zero,.for_body_bb3
	j	.main_bb5

.for_iter_bb3:
	addi	s4, s4, 1
	j	.for_condition_bb3

.for_body_bb3:
	addi	t6, s5, 24
	lw	t6, 0(t6)
	li	t5,4
	mul	t5, s4, t5
	add	t6, t5, t6
	lw	a0, 0(t6)
	call	_f_toString
	call	_f_print
	j	.for_iter_bb3

.main_bb5:
	li	a0,0
	j	.main_bb1

	.size	main, .-main
			 # -- End function
	.globl	_global_var_init
	.p2align	1
	.type	_global_var_init,@function
_global_var_init:
.a_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -4
	addi	s0, sp, 4
	mv	s0,ra
	li	t5,4
	li	t6,4
	mul	t6, t5, t6
	addi	a0, t6, 4
	call	_f__malloc
	li	t6,4
	sw	t6, 0(a0)
	addi	t6, a0, 4
	la	t5,a_glo
	sw	t6, 0(t5)
	j	.a_bb1

.a_bb1:
	mv	ra,s0
	addi	sp, sp, 4
	lw	s0, -4(sp)
	ret

	.size	_global_var_init, .-_global_var_init
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
	mv	ra,s0
	addi	sp, sp, 4
	lw	s0, -4(sp)
	ret
	.size	_GLOBAL_, .-_GLOBAL_
			 # -- End function

	.type	_str,@object
	.section	.rodata
_str:
	.string	"233"
	.size	_str, 4

	.type	a_glo,@object
	.section	.bss
	.globl	a_glo
a_glo:
	.word	0
	.size	a_glo, 4