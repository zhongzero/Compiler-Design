	.text
	.file	"builtin.c"
	.globl	f_print_1               # -- Begin function f_print_1
	.p2align	2
	.type	f_print_1,@function
f_print_1:                              # @f_print_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	f_print_1, .Lfunc_end0-f_print_1
                                        # -- End function
	.globl	f_println_1             # -- Begin function f_println_1
	.p2align	2
	.type	f_println_1,@function
f_println_1:                            # @f_println_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	f_println_1, .Lfunc_end1-f_println_1
                                        # -- End function
	.globl	f_printInt_1            # -- Begin function f_printInt_1
	.p2align	2
	.type	f_printInt_1,@function
f_printInt_1:                           # @f_printInt_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	f_printInt_1, .Lfunc_end2-f_printInt_1
                                        # -- End function
	.globl	f_printlnInt_1          # -- Begin function f_printlnInt_1
	.p2align	2
	.type	f_printlnInt_1,@function
f_printlnInt_1:                         # @f_printlnInt_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	f_printlnInt_1, .Lfunc_end3-f_printlnInt_1
                                        # -- End function
	.globl	f_getString_1           # -- Begin function f_getString_1
	.p2align	2
	.type	f_getString_1,@function
f_getString_1:                          # @f_getString_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	addi	a0, zero, 100
	call	malloc
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	scanf
	lw	a1, -12(s0)
	sw	a0, -16(s0)
	mv	a0, a1
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	f_getString_1, .Lfunc_end4-f_getString_1
                                        # -- End function
	.globl	f_getInt_1              # -- Begin function f_getInt_1
	.p2align	2
	.type	f_getInt_1,@function
f_getInt_1:                             # @f_getInt_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	addi	a1, s0, -12
	call	scanf
	lw	a1, -12(s0)
	sw	a0, -16(s0)
	mv	a0, a1
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	f_getInt_1, .Lfunc_end5-f_getInt_1
                                        # -- End function
	.globl	f_toString_1            # -- Begin function f_toString_1
	.p2align	2
	.type	f_toString_1,@function
f_toString_1:                           # @f_toString_1
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	addi	a0, zero, 13
	call	malloc
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	a2, -12(s0)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	call	sprintf
	lw	a1, -16(s0)
	sw	a0, -20(s0)
	mv	a0, a1
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end6:
	.size	f_toString_1, .Lfunc_end6-f_toString_1
                                        # -- End function
	.globl	_stringcmp_eq_1         # -- Begin function _stringcmp_eq_1
	.p2align	2
	.type	_stringcmp_eq_1,@function
_stringcmp_eq_1:                        # @_stringcmp_eq_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	call	strcmp
	seqz	a0, a0
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end7:
	.size	_stringcmp_eq_1, .Lfunc_end7-_stringcmp_eq_1
                                        # -- End function
	.globl	_stringcmp_neq_1        # -- Begin function _stringcmp_neq_1
	.p2align	2
	.type	_stringcmp_neq_1,@function
_stringcmp_neq_1:                       # @_stringcmp_neq_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	call	strcmp
	snez	a0, a0
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end8:
	.size	_stringcmp_neq_1, .Lfunc_end8-_stringcmp_neq_1
                                        # -- End function
	.globl	_stringcmp_less_1       # -- Begin function _stringcmp_less_1
	.p2align	2
	.type	_stringcmp_less_1,@function
_stringcmp_less_1:                      # @_stringcmp_less_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	call	strcmp
	srli	a0, a0, 31
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end9:
	.size	_stringcmp_less_1, .Lfunc_end9-_stringcmp_less_1
                                        # -- End function
	.globl	_stringcmp_greater_1    # -- Begin function _stringcmp_greater_1
	.p2align	2
	.type	_stringcmp_greater_1,@function
_stringcmp_greater_1:                   # @_stringcmp_greater_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	call	strcmp
	mv	a1, zero
	slt	a0, a1, a0
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end10:
	.size	_stringcmp_greater_1, .Lfunc_end10-_stringcmp_greater_1
                                        # -- End function
	.globl	_stringcmp_leq_1        # -- Begin function _stringcmp_leq_1
	.p2align	2
	.type	_stringcmp_leq_1,@function
_stringcmp_leq_1:                       # @_stringcmp_leq_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	call	strcmp
	slti	a0, a0, 1
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end11:
	.size	_stringcmp_leq_1, .Lfunc_end11-_stringcmp_leq_1
                                        # -- End function
	.globl	_stringcmp_geq_1        # -- Begin function _stringcmp_geq_1
	.p2align	2
	.type	_stringcmp_geq_1,@function
_stringcmp_geq_1:                       # @_stringcmp_geq_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	call	strcmp
	not	a0, a0
	srli	a0, a0, 31
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end12:
	.size	_stringcmp_geq_1, .Lfunc_end12-_stringcmp_geq_1
                                        # -- End function
	.globl	_string_length_1        # -- Begin function _string_length_1
	.p2align	2
	.type	_string_length_1,@function
_string_length_1:                       # @_string_length_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	mv	a0, zero
	sw	a0, -16(s0)
	j	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB13_3
	j	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB13_1
.LBB13_3:
	lw	a0, -16(s0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end13:
	.size	_string_length_1, .Lfunc_end13-_string_length_1
                                        # -- End function
	.globl	_string_merge_1         # -- Begin function _string_merge_1
	.p2align	2
	.type	_string_merge_1,@function
_string_merge_1:                        # @_string_merge_1
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	call	_string_length_1
	sw	a0, -20(s0)
	lw	a0, -16(s0)
	call	_string_length_1
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	addi	a0, a0, 1
	call	malloc
	sw	a0, -28(s0)
	mv	a0, zero
	sw	a0, -32(s0)
	j	.LBB14_1
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	lw	a1, -20(s0)
	bge	a0, a1, .LBB14_4
	j	.LBB14_2
.LBB14_2:                               #   in Loop: Header=BB14_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -32(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	a2, -28(s0)
	add	a1, a2, a1
	sb	a0, 0(a1)
	j	.LBB14_3
.LBB14_3:                               #   in Loop: Header=BB14_1 Depth=1
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB14_1
.LBB14_4:
	mv	a0, zero
	sw	a0, -32(s0)
	j	.LBB14_5
.LBB14_5:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	lw	a1, -24(s0)
	bge	a0, a1, .LBB14_8
	j	.LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_5 Depth=1
	lw	a0, -16(s0)
	lw	a1, -32(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	a2, -28(s0)
	lw	a3, -20(s0)
	add	a1, a3, a1
	add	a1, a2, a1
	sb	a0, 0(a1)
	j	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_5 Depth=1
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB14_5
.LBB14_8:
	lw	a0, -28(s0)
	lw	a1, -20(s0)
	lw	a2, -24(s0)
	add	a1, a1, a2
	add	a0, a0, a1
	mv	a1, zero
	sb	a1, 0(a0)
	lw	a0, -28(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end14:
	.size	_string_merge_1, .Lfunc_end14-_string_merge_1
                                        # -- End function
	.globl	_heap_malloc_1          # -- Begin function _heap_malloc_1
	.p2align	2
	.type	_heap_malloc_1,@function
_heap_malloc_1:                         # @_heap_malloc_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	call	malloc
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end15:
	.size	_heap_malloc_1, .Lfunc_end15-_heap_malloc_1
                                        # -- End function
	.globl	_string_substring_1     # -- Begin function _string_substring_1
	.p2align	2
	.type	_string_substring_1,@function
_string_substring_1:                    # @_string_substring_1
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -20(s0)
	lw	a1, -16(s0)
	sub	a0, a0, a1
	addi	a0, a0, 1
	call	malloc
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	j	.LBB16_1
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lw	a1, -20(s0)
	bge	a0, a1, .LBB16_4
	j	.LBB16_2
.LBB16_2:                               #   in Loop: Header=BB16_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	a2, -24(s0)
	lw	a3, -16(s0)
	sub	a1, a1, a3
	add	a1, a2, a1
	sb	a0, 0(a1)
	j	.LBB16_3
.LBB16_3:                               #   in Loop: Header=BB16_1 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB16_1
.LBB16_4:
	lw	a0, -24(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end16:
	.size	_string_substring_1, .Lfunc_end16-_string_substring_1
                                        # -- End function
	.globl	_string_parseInt_1      # -- Begin function _string_parseInt_1
	.p2align	2
	.type	_string_parseInt_1,@function
_string_parseInt_1:                     # @_string_parseInt_1
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	addi	s0, sp, 32
	sw	a0, -12(s0)
	mv	a0, zero
	sw	a0, -16(s0)
	sw	a0, -20(s0)
	j	.LBB17_1
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB17_3
	j	.LBB17_2
.LBB17_2:                               #   in Loop: Header=BB17_1 Depth=1
	lw	a0, -16(s0)
	addi	a1, zero, 10
	mul	a0, a0, a1
	lw	a1, -12(s0)
	lw	a2, -20(s0)
	add	a1, a1, a2
	lbu	a1, 0(a1)
	add	a0, a0, a1
	addi	a0, a0, -48
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB17_1
.LBB17_3:
	lw	a0, -16(s0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end17:
	.size	_string_parseInt_1, .Lfunc_end17-_string_parseInt_1
                                        # -- End function
	.globl	_string_ord_1           # -- Begin function _string_ord_1
	.p2align	2
	.type	_string_ord_1,@function
_string_ord_1:                          # @_string_ord_1
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end18:
	.size	_string_ord_1, .Lfunc_end18-_string_ord_1
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d\n"
	.size	.L.str.3, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym malloc
	.addrsig_sym scanf
	.addrsig_sym sprintf
	.addrsig_sym strcmp
	.addrsig_sym _string_length_1

