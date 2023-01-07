target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"


@N_addr_1=global i32 zeroinitializer, align 4
@b_addr_1=global i1* zeroinitializer, align 8
@GGGG_addr_1=global i1 zeroinitializer, align 1

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

define i32 @main(){
func_begin_block_1:
	%funcReturn_addr_1=alloca i32,align 4
	%FFFF_addr_1=alloca i1,align 1
	%i_addr_1=alloca i32,align 4
	br label %normal_block_1
func_end_block_1:
	%load_1=load i32,i32* %funcReturn_addr_1,align 4
	ret i32 %load_1
normal_block_1:
	call void @_main_initial_1()
	store i32 1,i32* %i_addr_1,align 4
	br label %for_condition_block_1
for_condition_block_1:
	%load_2=load i32,i32* %i_addr_1,align 4
	%load_3=load i32,i32* @N_addr_1,align 4
	%icmp_1=icmp sle i32 %load_2,%load_3
	br i1 %icmp_1,label %for_body_block_1,label %normal_block_2
for_body_block_1:
	%load_4=load i1*,i1** @b_addr_1,align 8
	%load_5=load i32,i32* %i_addr_1,align 4
	%gep_1=getelementptr inbounds i1,i1* %load_4,i32 %load_5
	store i1 1,i1* %gep_1,align 1
	br label %for_update_block_1
for_update_block_1:
	%load_6=load i32,i32* %i_addr_1,align 4
	%add_1=add i32 %load_6,1
	store i32 %add_1,i32* %i_addr_1,align 4
	br label %for_condition_block_1
normal_block_2:
	store i32 2,i32* %i_addr_1,align 4
	br label %for_condition_block_2
for_condition_block_2:
	%load_7=load i32,i32* %i_addr_1,align 4
	%load_8=load i32,i32* @N_addr_1,align 4
	%icmp_2=icmp sle i32 %load_7,%load_8
	br i1 %icmp_2,label %for_body_block_2,label %normal_block_3
for_body_block_2:
	%load_9=load i1*,i1** @b_addr_1,align 8
	%load_10=load i32,i32* %i_addr_1,align 4
	%gep_2=getelementptr inbounds i1,i1* %load_9,i32 %load_10
	%load_11=load i1,i1* %gep_2,align 1
	br i1 %load_11,label %if_body_block_1,label %normal_block_4
for_update_block_2:
	%load_13=load i32,i32* %i_addr_1,align 4
	%add_2=add i32 %load_13,1
	store i32 %add_2,i32* %i_addr_1,align 4
	br label %for_condition_block_2
normal_block_3:
	store i32 0,i32* %funcReturn_addr_1,align 4
	br label %func_end_block_1
if_body_block_1:
	%load_12=load i32,i32* %i_addr_1,align 4
	%call_2=call i8* @f_toString_1(i32 %load_12)
	call void @f_println_1(i8* %call_2)
	br label %normal_block_4
normal_block_4:
	br label %for_update_block_2
normal_block_5:
	br label %func_end_block_1
}
define void @_main_initial_1(){
func_begin_block_2:
	br label %normal_block_6
func_end_block_2:
	ret void
normal_block_6:
	store i32 15000,i32* @N_addr_1,align 4
	%call_4=call i8* @_heap_malloc_1(i32 15005)
	%bitCast_1=bitcast i8* %call_4 to i32*
	store i32 15001,i32* %bitCast_1,align 4
	%gep_3=getelementptr inbounds i32,i32* %bitCast_1,i32 1
	%bitCast_2=bitcast i32* %gep_3 to i1*
	%call_5=call i8* @_heap_malloc_1(i32 15005)
	%bitCast_3=bitcast i8* %call_5 to i32*
	store i32 15001,i32* %bitCast_3,align 4
	%gep_4=getelementptr inbounds i32,i32* %bitCast_3,i32 1
	%bitCast_4=bitcast i32* %gep_4 to i1*
	store i1* %bitCast_2,i1** @b_addr_1,align 8
	br label %func_end_block_2
}

