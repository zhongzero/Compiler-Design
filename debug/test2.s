	.text
	.globl	_f_F
	.p2align	1
	.type	_f_F,@function
_f_F:
._f_F_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -16
	addi	s0, sp, 16
	sw	ra, -12(s0)
	sw	s2, -8(s0)
	sw	s3, -16(s0)
	slt t3,	t1,	t2
	mv	s2,a0
	mv	s3,a1
	call	_f_G
	add	a0, s2, s3
	j	._f_F_bb1

._f_F_bb1:
	lw	s2, -8(s0)
	lw	s3, -16(s0)
	lw	ra, -12(s0)
	addi	sp, sp, 16
	lw	s0, -4(sp)
	ret

	.size	_f_F, .-_f_F
			 # -- End function
	.globl	_f_G
	.p2align	1
	.type	_f_G,@function
_f_G:
._f_G_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -4
	addi	s0, sp, 4
	j	._f_G_bb1

._f_G_bb1:
	addi	sp, sp, 4
	lw	s0, -4(sp)
	ret

	.size	_f_G, .-_f_G
			 # -- End function
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -4
	addi	s0, sp, 4
	mv	s0,ra
	call	_GLOBAL_
	li	a0,1
	li	a1,2
	call	_f_F
	call	_f_printInt
	la	a0,_str
	call	_f_println
	li	a0,0
	j	.main_bb1

.main_bb1:
	mv	ra,s0
	addi	sp, sp, 4
	lw	s0, -4(sp)
	ret

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
	.globl	_global_var_init1
	.p2align	1
	.type	_global_var_init1,@function
_global_var_init1:
.sss_bb:
	sw	s0, -4(sp)
	addi	sp, sp, -4
	addi	s0, sp, 4
	li	t6,3
	la	t5,sss_glo
	sw	t6, 0(t5)
	j	.sss_bb1

.sss_bb1:
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
	.section	.rodata
	.type	_str,@object
_str:
	.string	"2333"
	.size	_str, 5
	.type	a_glo,@object
	.section	.bss
	.globl	a_glo
a_glo:
	.word	0
	.size	a_glo, 4
	.type	sss_glo,@object
	.section	.bss
	.globl	sss_glo
sss_glo:
	.word	0
	.size	sss_glo, 4