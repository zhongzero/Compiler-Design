target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"


@n_addr_1=global i32 zeroinitializer, align 4
@r_addr_1=global i32 zeroinitializer, align 4
@c_addr_1=global i32 zeroinitializer, align 4
@i_addr_1=global i32 zeroinitializer, align 4
@j_addr_1=global i32 zeroinitializer, align 4

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

define i32 @f_abs_1(i32 %c_1){
func_begin_block_1:
	%funcReturn_addr_1=alloca i32,align 4
	%c_addr_2=alloca i32,align 4
	br label %normal_block_1
func_end_block_1:
	%load_1=load i32,i32* %funcReturn_addr_1,align 4
	ret i32 %load_1
normal_block_1:
	store i32 %c_1,i32* %c_addr_2,align 4
	%load_2=load i32,i32* %c_addr_2,align 4
	%icmp_1=icmp sgt i32 %load_2,0
	br i1 %icmp_1,label %if_body_block_1,label %normal_block_2
if_body_block_1:
	%load_3=load i32,i32* %c_addr_2,align 4
	store i32 %load_3,i32* %funcReturn_addr_1,align 4
	br label %func_end_block_1
normal_block_2:
	%load_4=load i32,i32* %c_addr_2,align 4
	%sub_1=sub i32 0,%load_4
	store i32 %sub_1,i32* %funcReturn_addr_1,align 4
	br label %func_end_block_1
normal_block_3:
	br label %normal_block_2
normal_block_4:
	br label %func_end_block_1
}
define i32 @main(){
func_begin_block_2:
	%funcReturn_addr_2=alloca i32,align 4
	br label %normal_block_5
func_end_block_2:
	%load_5=load i32,i32* %funcReturn_addr_2,align 4
	ret i32 %load_5
normal_block_5:
	call void @_main_initial_1()
	store i32 0,i32* @i_addr_1,align 4
	br label %for_condition_block_1
for_condition_block_1:
	%load_6=load i32,i32* @i_addr_1,align 4
	%icmp_2=icmp slt i32 %load_6,5
	br i1 %icmp_2,label %for_body_block_1,label %normal_block_6
for_body_block_1:
	store i32 0,i32* @j_addr_1,align 4
	br label %for_condition_block_2
for_update_block_1:
	%load_12=load i32,i32* @i_addr_1,align 4
	%add_2=add i32 %load_12,1
	store i32 %add_2,i32* @i_addr_1,align 4
	br label %for_condition_block_1
normal_block_6:
	%load_13=load i32,i32* @r_addr_1,align 4
	%sub_2=sub i32 2,%load_13
	%call_3=call i32 @f_abs_1(i32 %sub_2)
	%load_14=load i32,i32* @c_addr_1,align 4
	%sub_3=sub i32 2,%load_14
	%call_4=call i32 @f_abs_1(i32 %sub_3)
	%add_3=add i32 %call_3,%call_4
	call void @f_printInt_1(i32 %add_3)
	store i32 0,i32* %funcReturn_addr_2,align 4
	br label %func_end_block_2
for_condition_block_2:
	%load_7=load i32,i32* @j_addr_1,align 4
	%icmp_3=icmp slt i32 %load_7,5
	br i1 %icmp_3,label %for_body_block_2,label %normal_block_7
for_body_block_2:
	%call_2=call i32 @f_getInt_1()
	store i32 %call_2,i32* @n_addr_1,align 4
	%load_8=load i32,i32* @n_addr_1,align 4
	%icmp_4=icmp eq i32 %load_8,1
	br i1 %icmp_4,label %if_body_block_2,label %normal_block_8
for_update_block_2:
	%load_11=load i32,i32* @j_addr_1,align 4
	%add_1=add i32 %load_11,1
	store i32 %add_1,i32* @j_addr_1,align 4
	br label %for_condition_block_2
normal_block_7:
	br label %for_update_block_1
if_body_block_2:
	%load_9=load i32,i32* @i_addr_1,align 4
	store i32 %load_9,i32* @r_addr_1,align 4
	%load_10=load i32,i32* @j_addr_1,align 4
	store i32 %load_10,i32* @c_addr_1,align 4
	br label %normal_block_8
normal_block_8:
	br label %for_update_block_2
normal_block_9:
	br label %func_end_block_2
}
define void @_main_initial_1(){
func_begin_block_3:
	br label %normal_block_10
func_end_block_3:
	ret void
normal_block_10:
	br label %func_end_block_3
}

