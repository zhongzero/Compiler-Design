target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@const_string_1=private unnamed_addr constant [4 x i8] c"<< \00",align 1
@const_string_2=private unnamed_addr constant [2 x i8] c"(\00",align 1
@const_string_3=private unnamed_addr constant [3 x i8] c") \00",align 1
@const_string_4=private unnamed_addr constant [2 x i8] c" \00",align 1
@const_string_5=private unnamed_addr constant [4 x i8] c">> \00",align 1

@n_addr_1=global i32 zeroinitializer, align 4
@p_addr_1=global i32 zeroinitializer, align 4
@k_addr_1=global i32 zeroinitializer, align 4
@i_addr_1=global i32 zeroinitializer, align 4

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
	call void @_main_initial_1()
	%call_2=call i32 @f_getInt_1()
	store i32 %call_2,i32* @n_addr_1,align 4
	%call_3=call i32 @f_getInt_1()
	store i32 %call_3,i32* @p_addr_1,align 4
	%call_4=call i32 @f_getInt_1()
	store i32 %call_4,i32* @k_addr_1,align 4
	%load_2=load i32,i32* @p_addr_1,align 4
	%load_3=load i32,i32* @k_addr_1,align 4
	%sub_1=sub i32 %load_2,%load_3
	%icmp_1=icmp sgt i32 %sub_1,1
	br i1 %icmp_1,label %if_body_block_1,label %normal_block_1
func_end_block_1:
	%load_1=load i32,i32* %funcReturn_addr_1,align 4
	ret i32 %load_1
if_body_block_1:
	%gep_1=getelementptr inbounds [4 x i8],[4 x i8]* @const_string_1,i32 0,i32 0
	call void @f_print_1(i8* %gep_1)
	br label %normal_block_1
normal_block_1:
	%load_4=load i32,i32* @p_addr_1,align 4
	%load_5=load i32,i32* @k_addr_1,align 4
	%sub_2=sub i32 %load_4,%load_5
	store i32 %sub_2,i32* @i_addr_1,align 4
	br label %for_condition_block_1
for_condition_block_1:
	%load_6=load i32,i32* @i_addr_1,align 4
	%load_7=load i32,i32* @p_addr_1,align 4
	%load_8=load i32,i32* @k_addr_1,align 4
	%add_1=add i32 %load_7,%load_8
	%icmp_2=icmp sle i32 %load_6,%add_1
	br i1 %icmp_2,label %for_body_block_1,label %normal_block_2
for_body_block_1:
	%load_9=load i32,i32* @i_addr_1,align 4
	%icmp_3=icmp sle i32 1,%load_9
	%shortCircuit_addr_1=alloca i1,align 1
	br i1 %icmp_3,label %short_circuit_if_body_block_1,label %short_circuit_else_body_block_1
for_update_block_1:
	%load_17=load i32,i32* @i_addr_1,align 4
	%add_2=add i32 %load_17,1
	store i32 %add_2,i32* @i_addr_1,align 4
	br label %for_condition_block_1
normal_block_2:
	%load_18=load i32,i32* @p_addr_1,align 4
	%load_19=load i32,i32* @k_addr_1,align 4
	%add_3=add i32 %load_18,%load_19
	%load_20=load i32,i32* @n_addr_1,align 4
	%icmp_6=icmp slt i32 %add_3,%load_20
	br i1 %icmp_6,label %if_body_block_4,label %normal_block_5
if_body_block_2:
	%load_13=load i32,i32* @i_addr_1,align 4
	%load_14=load i32,i32* @p_addr_1,align 4
	%icmp_5=icmp eq i32 %load_13,%load_14
	br i1 %icmp_5,label %if_body_block_3,label %else_body_block_3
normal_block_3:
	br label %for_update_block_1
short_circuit_if_body_block_1:
	%load_10=load i32,i32* @i_addr_1,align 4
	%load_11=load i32,i32* @n_addr_1,align 4
	%icmp_4=icmp sle i32 %load_10,%load_11
	store i1 %icmp_4,i1* %shortCircuit_addr_1,align 1
	br label %short_circuit_end_block_1
short_circuit_else_body_block_1:
	store i1 0,i1* %shortCircuit_addr_1,align 1
	br label %short_circuit_end_block_1
short_circuit_end_block_1:
	%load_12=load i1,i1* %shortCircuit_addr_1,align 1
	br i1 %load_12,label %if_body_block_2,label %normal_block_3
if_body_block_3:
	%gep_2=getelementptr inbounds [2 x i8],[2 x i8]* @const_string_2,i32 0,i32 0
	call void @f_print_1(i8* %gep_2)
	%load_15=load i32,i32* @i_addr_1,align 4
	%call_7=call i8* @f_toString_1(i32 %load_15)
	call void @f_print_1(i8* %call_7)
	%gep_3=getelementptr inbounds [3 x i8],[3 x i8]* @const_string_3,i32 0,i32 0
	call void @f_print_1(i8* %gep_3)
	br label %normal_block_4
else_body_block_3:
	%load_16=load i32,i32* @i_addr_1,align 4
	call void @f_printInt_1(i32 %load_16)
	%gep_4=getelementptr inbounds [2 x i8],[2 x i8]* @const_string_4,i32 0,i32 0
	call void @f_print_1(i8* %gep_4)
	br label %normal_block_4
normal_block_4:
	br label %normal_block_3
if_body_block_4:
	%gep_5=getelementptr inbounds [4 x i8],[4 x i8]* @const_string_5,i32 0,i32 0
	call void @f_print_1(i8* %gep_5)
	br label %normal_block_5
normal_block_5:
	store i32 0,i32* %funcReturn_addr_1,align 4
	br label %func_end_block_1
normal_block_6:
	br label %func_end_block_1
}
define void @_main_initial_1(){
func_begin_block_2:
	br label %func_end_block_2
func_end_block_2:
	ret void
}

