target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"



declare void @f_print_1(i8* %str_1)
declare void @f_println_1(i8* %str_2)
declare void @f_printInt_1(i32 %n_1)
declare void @f_printlnInt_1(i32 %n_2)
declare i8* @f_getString_1()
declare i32 @f_getInt_1()
declare i8* @f_toString_1(i32 %i_1)
declare i1 @_stringcmp_eq_1(i8* %str1_1,i8* %str2_1)
declare i1 @_stringcmp_neq_1(i8* %str1_2,i8* %str2_2)
declare i1 @_stringcmp_less_1(i8* %str1_3,i8* %str2_3)
declare i1 @_stringcmp_greater_1(i8* %str1_4,i8* %str2_4)
declare i1 @_stringcmp_leq_1(i8* %str1_5,i8* %str2_5)
declare i1 @_stringcmp_geq_1(i8* %str1_6,i8* %str2_6)
declare i8* @_string_merge_1(i8* %str1_7,i8* %str2_7)
declare i8* @_heap_malloc_1(i32 %n_3)
declare i32 @_string_length_1(i8* %str_3)
declare i8* @_string_substring_1(i8* %str_4,i32 %l_1,i32 %r_1)
declare i32 @_string_parseInt_1(i8* %str_5)
declare i32 @_string_ord_1(i8* %str_6,i32 %ord_1)

define i32 @f_gcd_1(i32 %x_1,i32 %y_1,i32 %j0_1,i32 %j1_1,i32 %j2_1,i32 %j3_1,i32 %j4_1,i32 %j5_1,i32 %j6_1,i32 %j7_1,i32 %j8_1,i32 %j9_1,i32 %j10_1,i32 %j11_1,i32 %j12_1,i32 %j13_1,i32 %j14_1,i32 %j15_1,i32 %j16_1,i32 %j17_1,i32 %j18_1,i32 %j19_1,i32 %j20_1,i32 %j21_1,i32 %j22_1,i32 %j23_1,i32 %j24_1,i32 %j25_1,i32 %j26_1,i32 %j27_1,i32 %j28_1,i32 %j29_1){
func_begin_block_1:
	%funcReturn_addr_1=alloca i32,align 4
	%x_addr_1=alloca i32,align 4
	%y_addr_1=alloca i32,align 4
	%j0_addr_1=alloca i32,align 4
	%j1_addr_1=alloca i32,align 4
	%j2_addr_1=alloca i32,align 4
	%j3_addr_1=alloca i32,align 4
	%j4_addr_1=alloca i32,align 4
	%j5_addr_1=alloca i32,align 4
	%j6_addr_1=alloca i32,align 4
	%j7_addr_1=alloca i32,align 4
	%j8_addr_1=alloca i32,align 4
	%j9_addr_1=alloca i32,align 4
	%j10_addr_1=alloca i32,align 4
	%j11_addr_1=alloca i32,align 4
	%j12_addr_1=alloca i32,align 4
	%j13_addr_1=alloca i32,align 4
	%j14_addr_1=alloca i32,align 4
	%j15_addr_1=alloca i32,align 4
	%j16_addr_1=alloca i32,align 4
	%j17_addr_1=alloca i32,align 4
	%j18_addr_1=alloca i32,align 4
	%j19_addr_1=alloca i32,align 4
	%j20_addr_1=alloca i32,align 4
	%j21_addr_1=alloca i32,align 4
	%j22_addr_1=alloca i32,align 4
	%j23_addr_1=alloca i32,align 4
	%j24_addr_1=alloca i32,align 4
	%j25_addr_1=alloca i32,align 4
	%j26_addr_1=alloca i32,align 4
	%j27_addr_1=alloca i32,align 4
	%j28_addr_1=alloca i32,align 4
	%j29_addr_1=alloca i32,align 4
	br label %normal_block_1
func_end_block_1:
	%load_1=load i32,i32* %funcReturn_addr_1,align 4
	ret i32 %load_1
normal_block_1:
	store i32 %x_1,i32* %x_addr_1,align 4
	store i32 %y_1,i32* %y_addr_1,align 4
	store i32 %j0_1,i32* %j0_addr_1,align 4
	store i32 %j1_1,i32* %j1_addr_1,align 4
	store i32 %j2_1,i32* %j2_addr_1,align 4
	store i32 %j3_1,i32* %j3_addr_1,align 4
	store i32 %j4_1,i32* %j4_addr_1,align 4
	store i32 %j5_1,i32* %j5_addr_1,align 4
	store i32 %j6_1,i32* %j6_addr_1,align 4
	store i32 %j7_1,i32* %j7_addr_1,align 4
	store i32 %j8_1,i32* %j8_addr_1,align 4
	store i32 %j9_1,i32* %j9_addr_1,align 4
	store i32 %j10_1,i32* %j10_addr_1,align 4
	store i32 %j11_1,i32* %j11_addr_1,align 4
	store i32 %j12_1,i32* %j12_addr_1,align 4
	store i32 %j13_1,i32* %j13_addr_1,align 4
	store i32 %j14_1,i32* %j14_addr_1,align 4
	store i32 %j15_1,i32* %j15_addr_1,align 4
	store i32 %j16_1,i32* %j16_addr_1,align 4
	store i32 %j17_1,i32* %j17_addr_1,align 4
	store i32 %j18_1,i32* %j18_addr_1,align 4
	store i32 %j19_1,i32* %j19_addr_1,align 4
	store i32 %j20_1,i32* %j20_addr_1,align 4
	store i32 %j21_1,i32* %j21_addr_1,align 4
	store i32 %j22_1,i32* %j22_addr_1,align 4
	store i32 %j23_1,i32* %j23_addr_1,align 4
	store i32 %j24_1,i32* %j24_addr_1,align 4
	store i32 %j25_1,i32* %j25_addr_1,align 4
	store i32 %j26_1,i32* %j26_addr_1,align 4
	store i32 %j27_1,i32* %j27_addr_1,align 4
	store i32 %j28_1,i32* %j28_addr_1,align 4
	store i32 %j29_1,i32* %j29_addr_1,align 4
	store i32 0,i32* %funcReturn_addr_1,align 4
	br label %func_end_block_1
normal_block_2:
	br label %func_end_block_1
}
define i32 @main(){
func_begin_block_2:
	%funcReturn_addr_2=alloca i32,align 4
	br label %normal_block_3
func_end_block_2:
	%load_2=load i32,i32* %funcReturn_addr_2,align 4
	ret i32 %load_2
normal_block_3:
	call void @_main_initial_1()
	%call_2=call i32 @f_gcd_1(i32 10,i32 1,i32 0,i32 2,i32 4,i32 6,i32 8,i32 10,i32 12,i32 14,i32 16,i32 18,i32 20,i32 22,i32 24,i32 26,i32 28,i32 30,i32 32,i32 34,i32 36,i32 38,i32 40,i32 42,i32 44,i32 46,i32 48,i32 50,i32 52,i32 54,i32 56,i32 58)
	%add_1=add i32 %call_2,1024
	%call_3=call i8* @f_toString_1(i32 %add_1)
	call void @f_println_1(i8* %call_3)
	store i32 0,i32* %funcReturn_addr_2,align 4
	br label %func_end_block_2
normal_block_4:
	br label %func_end_block_2
}
define void @_main_initial_1(){
func_begin_block_3:
	br label %normal_block_5
func_end_block_3:
	ret void
normal_block_5:
	br label %func_end_block_3
}

