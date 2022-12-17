target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@const_string_1=private unnamed_addr constant [1 x i8] c"\00",align 1

@a_addr_1=global i32* zeroinitializer, align 8

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
	%b_addr_1=alloca i32**,align 8
	%i_addr_1=alloca i32,align 4
	br label %normal_block_1
func_end_block_1:
	%load_1=load i32,i32* %funcReturn_addr_1,align 4
	ret i32 %load_1
normal_block_1:
	call void @_main_initial_1()
	%call_2=call i8* @_heap_malloc_1(i32 36)
	%bitCast_1=bitcast i8* %call_2 to i32*
	store i32 4,i32* %bitCast_1,align 4
	%gep_1=getelementptr inbounds i32,i32* %bitCast_1,i32 1
	%bitCast_2=bitcast i32* %gep_1 to i32**
	store i32** %bitCast_2,i32*** %b_addr_1,align 8
	%load_2=load i32**,i32*** %b_addr_1,align 8
	%gep_2=getelementptr inbounds i32*,i32** %load_2,i32 0
	%load_3=load i32*,i32** @a_addr_1,align 8
	store i32* %load_3,i32** %gep_2,align 8
	%load_4=load i32**,i32*** %b_addr_1,align 8
	%gep_3=getelementptr inbounds i32*,i32** %load_4,i32 1
	%load_5=load i32*,i32** @a_addr_1,align 8
	store i32* %load_5,i32** %gep_3,align 8
	%load_6=load i32**,i32*** %b_addr_1,align 8
	%gep_4=getelementptr inbounds i32*,i32** %load_6,i32 2
	%load_7=load i32*,i32** @a_addr_1,align 8
	store i32* %load_7,i32** %gep_4,align 8
	%load_8=load i32**,i32*** %b_addr_1,align 8
	%gep_5=getelementptr inbounds i32*,i32** %load_8,i32 3
	%load_9=load i32*,i32** @a_addr_1,align 8
	store i32* %load_9,i32** %gep_5,align 8
	%load_10=load i32**,i32*** %b_addr_1,align 8
	%bitCast_3=bitcast i32** %load_10 to i32*
	%gep_6=getelementptr inbounds i32,i32* %bitCast_3,i32 -1
	%load_11=load i32,i32* %gep_6,align 4
	%call_3=call i8* @f_toString_1(i32 %load_11)
	call void @f_println_1(i8* %call_3)
	store i32 0,i32* %i_addr_1,align 4
	br label %for_condition_block_1
for_condition_block_1:
	%load_12=load i32,i32* %i_addr_1,align 4
	%load_13=load i32**,i32*** %b_addr_1,align 8
	%gep_7=getelementptr inbounds i32*,i32** %load_13,i32 0
	%load_14=load i32*,i32** %gep_7,align 8
	%bitCast_4=bitcast i32* %load_14 to i32*
	%gep_8=getelementptr inbounds i32,i32* %bitCast_4,i32 -1
	%load_15=load i32,i32* %gep_8,align 4
	%icmp_1=icmp slt i32 %load_12,%load_15
	br i1 %icmp_1,label %for_body_block_1,label %normal_block_2
for_body_block_1:
	%load_16=load i32**,i32*** %b_addr_1,align 8
	%gep_9=getelementptr inbounds i32*,i32** %load_16,i32 0
	%load_17=load i32*,i32** %gep_9,align 8
	%load_18=load i32,i32* %i_addr_1,align 4
	%gep_10=getelementptr inbounds i32,i32* %load_17,i32 %load_18
	%call_5=call i32 @f_getInt_1()
	store i32 %call_5,i32* %gep_10,align 4
	br label %for_update_block_1
for_update_block_1:
	%load_19=load i32,i32* %i_addr_1,align 4
	%add_1=add i32 %load_19,1
	store i32 %add_1,i32* %i_addr_1,align 4
	br label %for_condition_block_1
normal_block_2:
	store i32 0,i32* %i_addr_1,align 4
	br label %for_condition_block_2
for_condition_block_2:
	%load_20=load i32,i32* %i_addr_1,align 4
	%load_21=load i32**,i32*** %b_addr_1,align 8
	%gep_11=getelementptr inbounds i32*,i32** %load_21,i32 1
	%load_22=load i32*,i32** %gep_11,align 8
	%bitCast_5=bitcast i32* %load_22 to i32*
	%gep_12=getelementptr inbounds i32,i32* %bitCast_5,i32 -1
	%load_23=load i32,i32* %gep_12,align 4
	%icmp_2=icmp slt i32 %load_20,%load_23
	br i1 %icmp_2,label %for_body_block_2,label %normal_block_3
for_body_block_2:
	%load_24=load i32**,i32*** %b_addr_1,align 8
	%gep_13=getelementptr inbounds i32*,i32** %load_24,i32 1
	%load_25=load i32*,i32** %gep_13,align 8
	%load_26=load i32,i32* %i_addr_1,align 4
	%gep_14=getelementptr inbounds i32,i32* %load_25,i32 %load_26
	%load_27=load i32,i32* %gep_14,align 4
	%call_6=call i8* @f_toString_1(i32 %load_27)
	call void @f_print_1(i8* %call_6)
	br label %for_update_block_2
for_update_block_2:
	%load_28=load i32,i32* %i_addr_1,align 4
	%add_2=add i32 %load_28,1
	store i32 %add_2,i32* %i_addr_1,align 4
	br label %for_condition_block_2
normal_block_3:
	%gep_15=getelementptr inbounds [1 x i8],[1 x i8]* @const_string_1,i32 0,i32 0
	call void @f_println_1(i8* %gep_15)
	store i32 0,i32* %i_addr_1,align 4
	br label %for_condition_block_3
for_condition_block_3:
	%load_29=load i32,i32* %i_addr_1,align 4
	%load_30=load i32**,i32*** %b_addr_1,align 8
	%gep_16=getelementptr inbounds i32*,i32** %load_30,i32 2
	%load_31=load i32*,i32** %gep_16,align 8
	%bitCast_6=bitcast i32* %load_31 to i32*
	%gep_17=getelementptr inbounds i32,i32* %bitCast_6,i32 -1
	%load_32=load i32,i32* %gep_17,align 4
	%icmp_3=icmp slt i32 %load_29,%load_32
	br i1 %icmp_3,label %for_body_block_3,label %normal_block_4
for_body_block_3:
	%load_33=load i32**,i32*** %b_addr_1,align 8
	%gep_18=getelementptr inbounds i32*,i32** %load_33,i32 2
	%load_34=load i32*,i32** %gep_18,align 8
	%load_35=load i32,i32* %i_addr_1,align 4
	%gep_19=getelementptr inbounds i32,i32* %load_34,i32 %load_35
	store i32 0,i32* %gep_19,align 4
	br label %for_update_block_3
for_update_block_3:
	%load_36=load i32,i32* %i_addr_1,align 4
	%add_3=add i32 %load_36,1
	store i32 %add_3,i32* %i_addr_1,align 4
	br label %for_condition_block_3
normal_block_4:
	store i32 0,i32* %i_addr_1,align 4
	br label %for_condition_block_4
for_condition_block_4:
	%load_37=load i32,i32* %i_addr_1,align 4
	%load_38=load i32**,i32*** %b_addr_1,align 8
	%gep_20=getelementptr inbounds i32*,i32** %load_38,i32 3
	%load_39=load i32*,i32** %gep_20,align 8
	%bitCast_7=bitcast i32* %load_39 to i32*
	%gep_21=getelementptr inbounds i32,i32* %bitCast_7,i32 -1
	%load_40=load i32,i32* %gep_21,align 4
	%icmp_4=icmp slt i32 %load_37,%load_40
	br i1 %icmp_4,label %for_body_block_4,label %normal_block_5
for_body_block_4:
	%load_41=load i32**,i32*** %b_addr_1,align 8
	%gep_22=getelementptr inbounds i32*,i32** %load_41,i32 3
	%load_42=load i32*,i32** %gep_22,align 8
	%load_43=load i32,i32* %i_addr_1,align 4
	%gep_23=getelementptr inbounds i32,i32* %load_42,i32 %load_43
	%load_44=load i32,i32* %gep_23,align 4
	%call_9=call i8* @f_toString_1(i32 %load_44)
	call void @f_print_1(i8* %call_9)
	br label %for_update_block_4
for_update_block_4:
	%load_45=load i32,i32* %i_addr_1,align 4
	%add_4=add i32 %load_45,1
	store i32 %add_4,i32* %i_addr_1,align 4
	br label %for_condition_block_4
normal_block_5:
	store i32 0,i32* %funcReturn_addr_1,align 4
	br label %func_end_block_1
normal_block_6:
	br label %func_end_block_1
}
define void @_main_initial_1(){
func_begin_block_2:
	br label %normal_block_7
func_end_block_2:
	ret void
normal_block_7:
	%call_11=call i8* @_heap_malloc_1(i32 20)
	%bitCast_8=bitcast i8* %call_11 to i32*
	store i32 4,i32* %bitCast_8,align 4
	%gep_24=getelementptr inbounds i32,i32* %bitCast_8,i32 1
	%bitCast_9=bitcast i32* %gep_24 to i32*
	%call_12=call i8* @_heap_malloc_1(i32 20)
	%bitCast_10=bitcast i8* %call_12 to i32*
	store i32 4,i32* %bitCast_10,align 4
	%gep_25=getelementptr inbounds i32,i32* %bitCast_10,i32 1
	%bitCast_11=bitcast i32* %gep_25 to i32*
	store i32* %bitCast_9,i32** @a_addr_1,align 8
	br label %func_end_block_2
}

