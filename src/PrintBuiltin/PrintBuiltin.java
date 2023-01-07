package PrintBuiltin;

public class PrintBuiltin {
	public String str="\t.text\n" +
			"\t.file\t\"builtin.c\"\n" +
			"\t.globl\tf_print_1               # -- Begin function f_print_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\tf_print_1,@function\n" +
			"f_print_1:                              # @f_print_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tlw\ta1, -12(s0)\n" +
			"\tlui\ta0, %hi(.L.str)\n" +
			"\taddi\ta0, a0, %lo(.L.str)\n" +
			"\tcall\tprintf\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end0:\n" +
			"\t.size\tf_print_1, .Lfunc_end0-f_print_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\tf_println_1             # -- Begin function f_println_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\tf_println_1,@function\n" +
			"f_println_1:                            # @f_println_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tlw\ta1, -12(s0)\n" +
			"\tlui\ta0, %hi(.L.str.1)\n" +
			"\taddi\ta0, a0, %lo(.L.str.1)\n" +
			"\tcall\tprintf\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end1:\n" +
			"\t.size\tf_println_1, .Lfunc_end1-f_println_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\tf_printInt_1            # -- Begin function f_printInt_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\tf_printInt_1,@function\n" +
			"f_printInt_1:                           # @f_printInt_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tlw\ta1, -12(s0)\n" +
			"\tlui\ta0, %hi(.L.str.2)\n" +
			"\taddi\ta0, a0, %lo(.L.str.2)\n" +
			"\tcall\tprintf\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end2:\n" +
			"\t.size\tf_printInt_1, .Lfunc_end2-f_printInt_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\tf_printlnInt_1          # -- Begin function f_printlnInt_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\tf_printlnInt_1,@function\n" +
			"f_printlnInt_1:                         # @f_printlnInt_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tlw\ta1, -12(s0)\n" +
			"\tlui\ta0, %hi(.L.str.3)\n" +
			"\taddi\ta0, a0, %lo(.L.str.3)\n" +
			"\tcall\tprintf\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end3:\n" +
			"\t.size\tf_printlnInt_1, .Lfunc_end3-f_printlnInt_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\tf_getString_1           # -- Begin function f_getString_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\tf_getString_1,@function\n" +
			"f_getString_1:                          # @f_getString_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\taddi\ta0, zero, 100\n" +
			"\tcall\tmalloc\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tlw\ta1, -12(s0)\n" +
			"\tlui\ta0, %hi(.L.str)\n" +
			"\taddi\ta0, a0, %lo(.L.str)\n" +
			"\tcall\tscanf\n" +
			"\tlw\ta1, -12(s0)\n" +
			"\tsw\ta0, -16(s0)\n" +
			"\tmv\ta0, a1\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end4:\n" +
			"\t.size\tf_getString_1, .Lfunc_end4-f_getString_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\tf_getInt_1              # -- Begin function f_getInt_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\tf_getInt_1,@function\n" +
			"f_getInt_1:                             # @f_getInt_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tlui\ta0, %hi(.L.str.2)\n" +
			"\taddi\ta0, a0, %lo(.L.str.2)\n" +
			"\taddi\ta1, s0, -12\n" +
			"\tcall\tscanf\n" +
			"\tlw\ta1, -12(s0)\n" +
			"\tsw\ta0, -16(s0)\n" +
			"\tmv\ta0, a1\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end5:\n" +
			"\t.size\tf_getInt_1, .Lfunc_end5-f_getInt_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\tf_toString_1            # -- Begin function f_toString_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\tf_toString_1,@function\n" +
			"f_toString_1:                           # @f_toString_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -32\n" +
			"\tsw\tra, 28(sp)\n" +
			"\tsw\ts0, 24(sp)\n" +
			"\taddi\ts0, sp, 32\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\taddi\ta0, zero, 13\n" +
			"\tcall\tmalloc\n" +
			"\tsw\ta0, -16(s0)\n" +
			"\tlw\ta0, -16(s0)\n" +
			"\tlw\ta2, -12(s0)\n" +
			"\tlui\ta1, %hi(.L.str.2)\n" +
			"\taddi\ta1, a1, %lo(.L.str.2)\n" +
			"\tcall\tsprintf\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tsw\ta0, -20(s0)\n" +
			"\tmv\ta0, a1\n" +
			"\tlw\ts0, 24(sp)\n" +
			"\tlw\tra, 28(sp)\n" +
			"\taddi\tsp, sp, 32\n" +
			"\tret\n" +
			".Lfunc_end6:\n" +
			"\t.size\tf_toString_1, .Lfunc_end6-f_toString_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_stringcmp_eq_1         # -- Begin function _stringcmp_eq_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_stringcmp_eq_1,@function\n" +
			"_stringcmp_eq_1:                        # @_stringcmp_eq_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tcall\tstrcmp\n" +
			"\tseqz\ta0, a0\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end7:\n" +
			"\t.size\t_stringcmp_eq_1, .Lfunc_end7-_stringcmp_eq_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_stringcmp_neq_1        # -- Begin function _stringcmp_neq_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_stringcmp_neq_1,@function\n" +
			"_stringcmp_neq_1:                       # @_stringcmp_neq_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tcall\tstrcmp\n" +
			"\tsnez\ta0, a0\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end8:\n" +
			"\t.size\t_stringcmp_neq_1, .Lfunc_end8-_stringcmp_neq_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_stringcmp_less_1       # -- Begin function _stringcmp_less_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_stringcmp_less_1,@function\n" +
			"_stringcmp_less_1:                      # @_stringcmp_less_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tcall\tstrcmp\n" +
			"\tsrli\ta0, a0, 31\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end9:\n" +
			"\t.size\t_stringcmp_less_1, .Lfunc_end9-_stringcmp_less_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_stringcmp_greater_1    # -- Begin function _stringcmp_greater_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_stringcmp_greater_1,@function\n" +
			"_stringcmp_greater_1:                   # @_stringcmp_greater_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tcall\tstrcmp\n" +
			"\tmv\ta1, zero\n" +
			"\tslt\ta0, a1, a0\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end10:\n" +
			"\t.size\t_stringcmp_greater_1, .Lfunc_end10-_stringcmp_greater_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_stringcmp_leq_1        # -- Begin function _stringcmp_leq_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_stringcmp_leq_1,@function\n" +
			"_stringcmp_leq_1:                       # @_stringcmp_leq_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tcall\tstrcmp\n" +
			"\tslti\ta0, a0, 1\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end11:\n" +
			"\t.size\t_stringcmp_leq_1, .Lfunc_end11-_stringcmp_leq_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_stringcmp_geq_1        # -- Begin function _stringcmp_geq_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_stringcmp_geq_1,@function\n" +
			"_stringcmp_geq_1:                       # @_stringcmp_geq_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tcall\tstrcmp\n" +
			"\tnot\ta0, a0\n" +
			"\tsrli\ta0, a0, 31\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end12:\n" +
			"\t.size\t_stringcmp_geq_1, .Lfunc_end12-_stringcmp_geq_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_string_length_1        # -- Begin function _string_length_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_string_length_1,@function\n" +
			"_string_length_1:                       # @_string_length_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tmv\ta0, zero\n" +
			"\tsw\ta0, -16(s0)\n" +
			"\tj\t.LBB13_1\n" +
			".LBB13_1:                               # =>This Inner Loop Header: Depth=1\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tadd\ta0, a0, a1\n" +
			"\tlbu\ta0, 0(a0)\n" +
			"\tmv\ta1, zero\n" +
			"\tbeq\ta0, a1, .LBB13_3\n" +
			"\tj\t.LBB13_2\n" +
			".LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1\n" +
			"\tlw\ta0, -16(s0)\n" +
			"\taddi\ta0, a0, 1\n" +
			"\tsw\ta0, -16(s0)\n" +
			"\tj\t.LBB13_1\n" +
			".LBB13_3:\n" +
			"\tlw\ta0, -16(s0)\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end13:\n" +
			"\t.size\t_string_length_1, .Lfunc_end13-_string_length_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_string_merge_1         # -- Begin function _string_merge_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_string_merge_1,@function\n" +
			"_string_merge_1:                        # @_string_merge_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -32\n" +
			"\tsw\tra, 28(sp)\n" +
			"\tsw\ts0, 24(sp)\n" +
			"\taddi\ts0, sp, 32\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tcall\t_string_length_1\n" +
			"\tsw\ta0, -20(s0)\n" +
			"\tlw\ta0, -16(s0)\n" +
			"\tcall\t_string_length_1\n" +
			"\tsw\ta0, -24(s0)\n" +
			"\tlw\ta0, -20(s0)\n" +
			"\tlw\ta1, -24(s0)\n" +
			"\tadd\ta0, a0, a1\n" +
			"\taddi\ta0, a0, 1\n" +
			"\tcall\tmalloc\n" +
			"\tsw\ta0, -28(s0)\n" +
			"\tmv\ta0, zero\n" +
			"\tsw\ta0, -32(s0)\n" +
			"\tj\t.LBB14_1\n" +
			".LBB14_1:                               # =>This Inner Loop Header: Depth=1\n" +
			"\tlw\ta0, -32(s0)\n" +
			"\tlw\ta1, -20(s0)\n" +
			"\tbge\ta0, a1, .LBB14_4\n" +
			"\tj\t.LBB14_2\n" +
			".LBB14_2:                               #   in Loop: Header=BB14_1 Depth=1\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -32(s0)\n" +
			"\tadd\ta0, a0, a1\n" +
			"\tlb\ta0, 0(a0)\n" +
			"\tlw\ta2, -28(s0)\n" +
			"\tadd\ta1, a2, a1\n" +
			"\tsb\ta0, 0(a1)\n" +
			"\tj\t.LBB14_3\n" +
			".LBB14_3:                               #   in Loop: Header=BB14_1 Depth=1\n" +
			"\tlw\ta0, -32(s0)\n" +
			"\taddi\ta0, a0, 1\n" +
			"\tsw\ta0, -32(s0)\n" +
			"\tj\t.LBB14_1\n" +
			".LBB14_4:\n" +
			"\tmv\ta0, zero\n" +
			"\tsw\ta0, -32(s0)\n" +
			"\tj\t.LBB14_5\n" +
			".LBB14_5:                               # =>This Inner Loop Header: Depth=1\n" +
			"\tlw\ta0, -32(s0)\n" +
			"\tlw\ta1, -24(s0)\n" +
			"\tbge\ta0, a1, .LBB14_8\n" +
			"\tj\t.LBB14_6\n" +
			".LBB14_6:                               #   in Loop: Header=BB14_5 Depth=1\n" +
			"\tlw\ta0, -16(s0)\n" +
			"\tlw\ta1, -32(s0)\n" +
			"\tadd\ta0, a0, a1\n" +
			"\tlb\ta0, 0(a0)\n" +
			"\tlw\ta2, -28(s0)\n" +
			"\tlw\ta3, -20(s0)\n" +
			"\tadd\ta1, a3, a1\n" +
			"\tadd\ta1, a2, a1\n" +
			"\tsb\ta0, 0(a1)\n" +
			"\tj\t.LBB14_7\n" +
			".LBB14_7:                               #   in Loop: Header=BB14_5 Depth=1\n" +
			"\tlw\ta0, -32(s0)\n" +
			"\taddi\ta0, a0, 1\n" +
			"\tsw\ta0, -32(s0)\n" +
			"\tj\t.LBB14_5\n" +
			".LBB14_8:\n" +
			"\tlw\ta0, -28(s0)\n" +
			"\tlw\ta1, -20(s0)\n" +
			"\tlw\ta2, -24(s0)\n" +
			"\tadd\ta1, a1, a2\n" +
			"\tadd\ta0, a0, a1\n" +
			"\tmv\ta1, zero\n" +
			"\tsb\ta1, 0(a0)\n" +
			"\tlw\ta0, -28(s0)\n" +
			"\tlw\ts0, 24(sp)\n" +
			"\tlw\tra, 28(sp)\n" +
			"\taddi\tsp, sp, 32\n" +
			"\tret\n" +
			".Lfunc_end14:\n" +
			"\t.size\t_string_merge_1, .Lfunc_end14-_string_merge_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_heap_malloc_1          # -- Begin function _heap_malloc_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_heap_malloc_1,@function\n" +
			"_heap_malloc_1:                         # @_heap_malloc_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tcall\tmalloc\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end15:\n" +
			"\t.size\t_heap_malloc_1, .Lfunc_end15-_heap_malloc_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_string_substring_1     # -- Begin function _string_substring_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_string_substring_1,@function\n" +
			"_string_substring_1:                    # @_string_substring_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -32\n" +
			"\tsw\tra, 28(sp)\n" +
			"\tsw\ts0, 24(sp)\n" +
			"\taddi\ts0, sp, 32\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tsw\ta2, -20(s0)\n" +
			"\tlw\ta0, -20(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tsub\ta0, a0, a1\n" +
			"\taddi\ta0, a0, 1\n" +
			"\tcall\tmalloc\n" +
			"\tsw\ta0, -24(s0)\n" +
			"\tlw\ta0, -16(s0)\n" +
			"\tsw\ta0, -28(s0)\n" +
			"\tj\t.LBB16_1\n" +
			".LBB16_1:                               # =>This Inner Loop Header: Depth=1\n" +
			"\tlw\ta0, -28(s0)\n" +
			"\tlw\ta1, -20(s0)\n" +
			"\tbge\ta0, a1, .LBB16_4\n" +
			"\tj\t.LBB16_2\n" +
			".LBB16_2:                               #   in Loop: Header=BB16_1 Depth=1\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -28(s0)\n" +
			"\tadd\ta0, a0, a1\n" +
			"\tlb\ta0, 0(a0)\n" +
			"\tlw\ta2, -24(s0)\n" +
			"\tlw\ta3, -16(s0)\n" +
			"\tsub\ta1, a1, a3\n" +
			"\tadd\ta1, a2, a1\n" +
			"\tsb\ta0, 0(a1)\n" +
			"\tj\t.LBB16_3\n" +
			".LBB16_3:                               #   in Loop: Header=BB16_1 Depth=1\n" +
			"\tlw\ta0, -28(s0)\n" +
			"\taddi\ta0, a0, 1\n" +
			"\tsw\ta0, -28(s0)\n" +
			"\tj\t.LBB16_1\n" +
			".LBB16_4:\n" +
			"\tlw\ta0, -24(s0)\n" +
			"\tlw\ts0, 24(sp)\n" +
			"\tlw\tra, 28(sp)\n" +
			"\taddi\tsp, sp, 32\n" +
			"\tret\n" +
			".Lfunc_end16:\n" +
			"\t.size\t_string_substring_1, .Lfunc_end16-_string_substring_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_string_parseInt_1      # -- Begin function _string_parseInt_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_string_parseInt_1,@function\n" +
			"_string_parseInt_1:                     # @_string_parseInt_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -32\n" +
			"\tsw\tra, 28(sp)\n" +
			"\tsw\ts0, 24(sp)\n" +
			"\taddi\ts0, sp, 32\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tmv\ta0, zero\n" +
			"\tsw\ta0, -16(s0)\n" +
			"\tsw\ta0, -20(s0)\n" +
			"\tj\t.LBB17_1\n" +
			".LBB17_1:                               # =>This Inner Loop Header: Depth=1\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -20(s0)\n" +
			"\tadd\ta0, a0, a1\n" +
			"\tlbu\ta0, 0(a0)\n" +
			"\tmv\ta1, zero\n" +
			"\tbeq\ta0, a1, .LBB17_3\n" +
			"\tj\t.LBB17_2\n" +
			".LBB17_2:                               #   in Loop: Header=BB17_1 Depth=1\n" +
			"\tlw\ta0, -16(s0)\n" +
			"\taddi\ta1, zero, 10\n" +
			"\tmul\ta0, a0, a1\n" +
			"\tlw\ta1, -12(s0)\n" +
			"\tlw\ta2, -20(s0)\n" +
			"\tadd\ta1, a1, a2\n" +
			"\tlbu\ta1, 0(a1)\n" +
			"\tadd\ta0, a0, a1\n" +
			"\taddi\ta0, a0, -48\n" +
			"\tsw\ta0, -16(s0)\n" +
			"\tlw\ta0, -20(s0)\n" +
			"\taddi\ta0, a0, 1\n" +
			"\tsw\ta0, -20(s0)\n" +
			"\tj\t.LBB17_1\n" +
			".LBB17_3:\n" +
			"\tlw\ta0, -16(s0)\n" +
			"\tlw\ts0, 24(sp)\n" +
			"\tlw\tra, 28(sp)\n" +
			"\taddi\tsp, sp, 32\n" +
			"\tret\n" +
			".Lfunc_end17:\n" +
			"\t.size\t_string_parseInt_1, .Lfunc_end17-_string_parseInt_1\n" +
			"                                        # -- End function\n" +
			"\t.globl\t_string_ord_1           # -- Begin function _string_ord_1\n" +
			"\t.p2align\t2\n" +
			"\t.type\t_string_ord_1,@function\n" +
			"_string_ord_1:                          # @_string_ord_1\n" +
			"# %bb.0:\n" +
			"\taddi\tsp, sp, -16\n" +
			"\tsw\tra, 12(sp)\n" +
			"\tsw\ts0, 8(sp)\n" +
			"\taddi\ts0, sp, 16\n" +
			"\tsw\ta0, -12(s0)\n" +
			"\tsw\ta1, -16(s0)\n" +
			"\tlw\ta0, -12(s0)\n" +
			"\tlw\ta1, -16(s0)\n" +
			"\tadd\ta0, a0, a1\n" +
			"\tlbu\ta0, 0(a0)\n" +
			"\tlw\ts0, 8(sp)\n" +
			"\tlw\tra, 12(sp)\n" +
			"\taddi\tsp, sp, 16\n" +
			"\tret\n" +
			".Lfunc_end18:\n" +
			"\t.size\t_string_ord_1, .Lfunc_end18-_string_ord_1\n" +
			"                                        # -- End function\n" +
			"\t.type\t.L.str,@object          # @.str\n" +
			"\t.section\t.rodata.str1.1,\"aMS\",@progbits,1\n" +
			".L.str:\n" +
			"\t.asciz\t\"%s\"\n" +
			"\t.size\t.L.str, 3\n" +
			"\n" +
			"\t.type\t.L.str.1,@object        # @.str.1\n" +
			".L.str.1:\n" +
			"\t.asciz\t\"%s\\n\"\n" +
			"\t.size\t.L.str.1, 4\n" +
			"\n" +
			"\t.type\t.L.str.2,@object        # @.str.2\n" +
			".L.str.2:\n" +
			"\t.asciz\t\"%d\"\n" +
			"\t.size\t.L.str.2, 3\n" +
			"\n" +
			"\t.type\t.L.str.3,@object        # @.str.3\n" +
			".L.str.3:\n" +
			"\t.asciz\t\"%d\\n\"\n" +
			"\t.size\t.L.str.3, 4\n" +
			"\n" +
			"\t.ident\t\"clang version 10.0.0-4ubuntu1 \"\n" +
			"\t.section\t\".note.GNU-stack\",\"\",@progbits\n" +
			"\t.addrsig\n" +
			"\t.addrsig_sym printf\n" +
			"\t.addrsig_sym malloc\n" +
			"\t.addrsig_sym scanf\n" +
			"\t.addrsig_sym sprintf\n" +
			"\t.addrsig_sym strcmp\n" +
			"\t.addrsig_sym _string_length_1\n";
}
