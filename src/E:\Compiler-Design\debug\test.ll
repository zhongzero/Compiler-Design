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
	%i_addr_1=alloca i32,align 4
	%j_addr_1=alloca i32,align 4
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
	store i32 0,i32* %i_addr_1,align 4
	br label %for_condition_block_1
for_condition_block_1:
	%load_2=load i32,i32* %i_addr_1,align 4
	%icmp_1=icmp sle i32 %load_2,10
	br i1 %icmp_1,label %for_body_block_1,label %normal_block_2
for_body_block_1:
	%load_3=load i32,i32* %j0_addr_1,align 4
	%load_4=load i32,i32* %j1_addr_1,align 4
	%add_1=add i32 %load_3,%load_4
	%load_5=load i32,i32* %j2_addr_1,align 4
	%add_2=add i32 %add_1,%load_5
	%load_6=load i32,i32* %j3_addr_1,align 4
	%add_3=add i32 %add_2,%load_6
	%load_7=load i32,i32* %j4_addr_1,align 4
	%add_4=add i32 %add_3,%load_7
	%load_8=load i32,i32* %j5_addr_1,align 4
	%add_5=add i32 %add_4,%load_8
	%load_9=load i32,i32* %j6_addr_1,align 4
	%add_6=add i32 %add_5,%load_9
	%load_10=load i32,i32* %j7_addr_1,align 4
	%add_7=add i32 %add_6,%load_10
	%load_11=load i32,i32* %j8_addr_1,align 4
	%add_8=add i32 %add_7,%load_11
	%load_12=load i32,i32* %j9_addr_1,align 4
	%add_9=add i32 %add_8,%load_12
	%load_13=load i32,i32* %j10_addr_1,align 4
	%add_10=add i32 %add_9,%load_13
	%load_14=load i32,i32* %j11_addr_1,align 4
	%add_11=add i32 %add_10,%load_14
	%load_15=load i32,i32* %j12_addr_1,align 4
	%add_12=add i32 %add_11,%load_15
	%load_16=load i32,i32* %j13_addr_1,align 4
	%add_13=add i32 %add_12,%load_16
	%load_17=load i32,i32* %j14_addr_1,align 4
	%add_14=add i32 %add_13,%load_17
	%load_18=load i32,i32* %j15_addr_1,align 4
	%add_15=add i32 %add_14,%load_18
	%load_19=load i32,i32* %j16_addr_1,align 4
	%add_16=add i32 %add_15,%load_19
	%load_20=load i32,i32* %j17_addr_1,align 4
	%add_17=add i32 %add_16,%load_20
	%load_21=load i32,i32* %j18_addr_1,align 4
	%add_18=add i32 %add_17,%load_21
	%load_22=load i32,i32* %j19_addr_1,align 4
	%add_19=add i32 %add_18,%load_22
	%load_23=load i32,i32* %j20_addr_1,align 4
	%add_20=add i32 %add_19,%load_23
	%load_24=load i32,i32* %j21_addr_1,align 4
	%add_21=add i32 %add_20,%load_24
	%load_25=load i32,i32* %j22_addr_1,align 4
	%add_22=add i32 %add_21,%load_25
	%load_26=load i32,i32* %j23_addr_1,align 4
	%add_23=add i32 %add_22,%load_26
	%load_27=load i32,i32* %j24_addr_1,align 4
	%add_24=add i32 %add_23,%load_27
	%load_28=load i32,i32* %j25_addr_1,align 4
	%add_25=add i32 %add_24,%load_28
	%load_29=load i32,i32* %j26_addr_1,align 4
	%add_26=add i32 %add_25,%load_29
	%load_30=load i32,i32* %j27_addr_1,align 4
	%add_27=add i32 %add_26,%load_30
	%load_31=load i32,i32* %j28_addr_1,align 4
	%add_28=add i32 %add_27,%load_31
	%load_32=load i32,i32* %j29_addr_1,align 4
	%add_29=add i32 %add_28,%load_32
	%srem_1=srem i32 %add_29,100
	store i32 %srem_1,i32* %j_addr_1,align 4
	br label %for_update_block_1
for_update_block_1:
	%load_33=load i32,i32* %i_addr_1,align 4
	%add_30=add i32 %load_33,1
	store i32 %add_30,i32* %i_addr_1,align 4
	br label %for_condition_block_1
normal_block_2:
	%load_34=load i32,i32* %x_addr_1,align 4
	%load_35=load i32,i32* %y_addr_1,align 4
	%srem_2=srem i32 %load_34,%load_35
	%icmp_2=icmp eq i32 %srem_2,0
	br i1 %icmp_2,label %if_body_block_1,label %else_body_block_1
if_body_block_1:
	%load_36=load i32,i32* %y_addr_1,align 4
	store i32 %load_36,i32* %funcReturn_addr_1,align 4
	br label %func_end_block_1
else_body_block_1:
	%load_37=load i32,i32* %y_addr_1,align 4
	%load_38=load i32,i32* %x_addr_1,align 4
	%load_39=load i32,i32* %y_addr_1,align 4
	%srem_3=srem i32 %load_38,%load_39
	%load_40=load i32,i32* %j_addr_1,align 4
	%call_1=call i32 @f_gcd_1(i32 10,i32 68,i32 0,i32 2,i32 4,i32 6,i32 8,i32 10,i32 12,i32 14,i32 16,i32 18,i32 20,i32 22,i32 24,i32 26,i32 28,i32 30,i32 32,i32 34,i32 36,i32 38,i32 40,i32 42,i32 44,i32 46,i32 48,i32 50,i32 52,i32 54,i32 56,i32 58)
	%load_41=load i32,i32* %j2_addr_1,align 4
	%load_42=load i32,i32* %j3_addr_1,align 4
	%load_43=load i32,i32* %j4_addr_1,align 4
	%load_44=load i32,i32* %j5_addr_1,align 4
	%load_45=load i32,i32* %j6_addr_1,align 4
	%load_46=load i32,i32* %j7_addr_1,align 4
	%load_47=load i32,i32* %j8_addr_1,align 4
	%load_48=load i32,i32* %j9_addr_1,align 4
	%load_49=load i32,i32* %j10_addr_1,align 4
	%load_50=load i32,i32* %j11_addr_1,align 4
	%load_51=load i32,i32* %j12_addr_1,align 4
	%load_52=load i32,i32* %j13_addr_1,align 4
	%load_53=load i32,i32* %j14_addr_1,align 4
	%load_54=load i32,i32* %j15_addr_1,align 4
	%load_55=load i32,i32* %j16_addr_1,align 4
	%load_56=load i32,i32* %j17_addr_1,align 4
	%load_57=load i32,i32* %j18_addr_1,align 4
	%load_58=load i32,i32* %j19_addr_1,align 4
	%load_59=load i32,i32* %j20_addr_1,align 4
	%load_60=load i32,i32* %j21_addr_1,align 4
	%load_61=load i32,i32* %j22_addr_1,align 4
	%load_62=load i32,i32* %j23_addr_1,align 4
	%load_63=load i32,i32* %j24_addr_1,align 4
	%load_64=load i32,i32* %j25_addr_1,align 4
	%load_65=load i32,i32* %j26_addr_1,align 4
	%load_66=load i32,i32* %j27_addr_1,align 4
	%load_67=load i32,i32* %j28_addr_1,align 4
	%load_68=load i32,i32* %j29_addr_1,align 4
	%call_2=call i32 @f_gcd1_1(i32 %load_37,i32 %srem_3,i32 %load_40,i32 %call_1,i32 %load_41,i32 %load_42,i32 %load_43,i32 %load_44,i32 %load_45,i32 %load_46,i32 %load_47,i32 %load_48,i32 %load_49,i32 %load_50,i32 %load_51,i32 %load_52,i32 %load_53,i32 %load_54,i32 %load_55,i32 %load_56,i32 %load_57,i32 %load_58,i32 %load_59,i32 %load_60,i32 %load_61,i32 %load_62,i32 %load_63,i32 %load_64,i32 %load_65,i32 %load_66,i32 %load_67,i32 %load_68)
	store i32 %call_2,i32* %funcReturn_addr_1,align 4
	br label %func_end_block_1
normal_block_3:
	br label %func_end_block_1
normal_block_4:
	br label %normal_block_3
normal_block_5:
	br label %normal_block_3
}
define i32 @f_gcd1_1(i32 %x_2,i32 %y_2,i32 %j0_2,i32 %j1_2,i32 %j2_2,i32 %j3_2,i32 %j4_2,i32 %j5_2,i32 %j6_2,i32 %j7_2,i32 %j8_2,i32 %j9_2,i32 %j10_2,i32 %j11_2,i32 %j12_2,i32 %j13_2,i32 %j14_2,i32 %j15_2,i32 %j16_2,i32 %j17_2,i32 %j18_2,i32 %j19_2,i32 %j20_2,i32 %j21_2,i32 %j22_2,i32 %j23_2,i32 %j24_2,i32 %j25_2,i32 %j26_2,i32 %j27_2,i32 %j28_2,i32 %j29_2){
func_begin_block_2:
	%funcReturn_addr_2=alloca i32,align 4
	%x_addr_2=alloca i32,align 4
	%y_addr_2=alloca i32,align 4
	%j0_addr_2=alloca i32,align 4
	%j1_addr_2=alloca i32,align 4
	%j2_addr_2=alloca i32,align 4
	%j3_addr_2=alloca i32,align 4
	%j4_addr_2=alloca i32,align 4
	%j5_addr_2=alloca i32,align 4
	%j6_addr_2=alloca i32,align 4
	%j7_addr_2=alloca i32,align 4
	%j8_addr_2=alloca i32,align 4
	%j9_addr_2=alloca i32,align 4
	%j10_addr_2=alloca i32,align 4
	%j11_addr_2=alloca i32,align 4
	%j12_addr_2=alloca i32,align 4
	%j13_addr_2=alloca i32,align 4
	%j14_addr_2=alloca i32,align 4
	%j15_addr_2=alloca i32,align 4
	%j16_addr_2=alloca i32,align 4
	%j17_addr_2=alloca i32,align 4
	%j18_addr_2=alloca i32,align 4
	%j19_addr_2=alloca i32,align 4
	%j20_addr_2=alloca i32,align 4
	%j21_addr_2=alloca i32,align 4
	%j22_addr_2=alloca i32,align 4
	%j23_addr_2=alloca i32,align 4
	%j24_addr_2=alloca i32,align 4
	%j25_addr_2=alloca i32,align 4
	%j26_addr_2=alloca i32,align 4
	%j27_addr_2=alloca i32,align 4
	%j28_addr_2=alloca i32,align 4
	%j29_addr_2=alloca i32,align 4
	%j_addr_2=alloca i32,align 4
	br label %normal_block_6
func_end_block_2:
	%load_69=load i32,i32* %funcReturn_addr_2,align 4
	ret i32 %load_69
normal_block_6:
	store i32 %x_2,i32* %x_addr_2,align 4
	store i32 %y_2,i32* %y_addr_2,align 4
	store i32 %j0_2,i32* %j0_addr_2,align 4
	store i32 %j1_2,i32* %j1_addr_2,align 4
	store i32 %j2_2,i32* %j2_addr_2,align 4
	store i32 %j3_2,i32* %j3_addr_2,align 4
	store i32 %j4_2,i32* %j4_addr_2,align 4
	store i32 %j5_2,i32* %j5_addr_2,align 4
	store i32 %j6_2,i32* %j6_addr_2,align 4
	store i32 %j7_2,i32* %j7_addr_2,align 4
	store i32 %j8_2,i32* %j8_addr_2,align 4
	store i32 %j9_2,i32* %j9_addr_2,align 4
	store i32 %j10_2,i32* %j10_addr_2,align 4
	store i32 %j11_2,i32* %j11_addr_2,align 4
	store i32 %j12_2,i32* %j12_addr_2,align 4
	store i32 %j13_2,i32* %j13_addr_2,align 4
	store i32 %j14_2,i32* %j14_addr_2,align 4
	store i32 %j15_2,i32* %j15_addr_2,align 4
	store i32 %j16_2,i32* %j16_addr_2,align 4
	store i32 %j17_2,i32* %j17_addr_2,align 4
	store i32 %j18_2,i32* %j18_addr_2,align 4
	store i32 %j19_2,i32* %j19_addr_2,align 4
	store i32 %j20_2,i32* %j20_addr_2,align 4
	store i32 %j21_2,i32* %j21_addr_2,align 4
	store i32 %j22_2,i32* %j22_addr_2,align 4
	store i32 %j23_2,i32* %j23_addr_2,align 4
	store i32 %j24_2,i32* %j24_addr_2,align 4
	store i32 %j25_2,i32* %j25_addr_2,align 4
	store i32 %j26_2,i32* %j26_addr_2,align 4
	store i32 %j27_2,i32* %j27_addr_2,align 4
	store i32 %j28_2,i32* %j28_addr_2,align 4
	store i32 %j29_2,i32* %j29_addr_2,align 4
	%load_70=load i32,i32* %j0_addr_2,align 4
	%load_71=load i32,i32* %j1_addr_2,align 4
	%add_31=add i32 %load_70,%load_71
	%load_72=load i32,i32* %j2_addr_2,align 4
	%add_32=add i32 %add_31,%load_72
	%load_73=load i32,i32* %j3_addr_2,align 4
	%add_33=add i32 %add_32,%load_73
	%load_74=load i32,i32* %j4_addr_2,align 4
	%add_34=add i32 %add_33,%load_74
	%load_75=load i32,i32* %j5_addr_2,align 4
	%add_35=add i32 %add_34,%load_75
	%load_76=load i32,i32* %j6_addr_2,align 4
	%add_36=add i32 %add_35,%load_76
	%load_77=load i32,i32* %j7_addr_2,align 4
	%add_37=add i32 %add_36,%load_77
	%load_78=load i32,i32* %j8_addr_2,align 4
	%add_38=add i32 %add_37,%load_78
	%load_79=load i32,i32* %j9_addr_2,align 4
	%add_39=add i32 %add_38,%load_79
	%load_80=load i32,i32* %j10_addr_2,align 4
	%add_40=add i32 %add_39,%load_80
	%load_81=load i32,i32* %j11_addr_2,align 4
	%add_41=add i32 %add_40,%load_81
	%load_82=load i32,i32* %j12_addr_2,align 4
	%add_42=add i32 %add_41,%load_82
	%load_83=load i32,i32* %j13_addr_2,align 4
	%add_43=add i32 %add_42,%load_83
	%load_84=load i32,i32* %j14_addr_2,align 4
	%add_44=add i32 %add_43,%load_84
	%load_85=load i32,i32* %j15_addr_2,align 4
	%add_45=add i32 %add_44,%load_85
	%load_86=load i32,i32* %j16_addr_2,align 4
	%add_46=add i32 %add_45,%load_86
	%load_87=load i32,i32* %j17_addr_2,align 4
	%add_47=add i32 %add_46,%load_87
	%load_88=load i32,i32* %j18_addr_2,align 4
	%add_48=add i32 %add_47,%load_88
	%load_89=load i32,i32* %j19_addr_2,align 4
	%add_49=add i32 %add_48,%load_89
	%load_90=load i32,i32* %j20_addr_2,align 4
	%add_50=add i32 %add_49,%load_90
	%load_91=load i32,i32* %j21_addr_2,align 4
	%add_51=add i32 %add_50,%load_91
	%load_92=load i32,i32* %j22_addr_2,align 4
	%add_52=add i32 %add_51,%load_92
	%load_93=load i32,i32* %j23_addr_2,align 4
	%add_53=add i32 %add_52,%load_93
	%load_94=load i32,i32* %j24_addr_2,align 4
	%add_54=add i32 %add_53,%load_94
	%load_95=load i32,i32* %j25_addr_2,align 4
	%add_55=add i32 %add_54,%load_95
	%load_96=load i32,i32* %j26_addr_2,align 4
	%add_56=add i32 %add_55,%load_96
	%load_97=load i32,i32* %j27_addr_2,align 4
	%add_57=add i32 %add_56,%load_97
	%load_98=load i32,i32* %j28_addr_2,align 4
	%add_58=add i32 %add_57,%load_98
	%load_99=load i32,i32* %j29_addr_2,align 4
	%add_59=add i32 %add_58,%load_99
	%srem_4=srem i32 %add_59,100
	store i32 %srem_4,i32* %j_addr_2,align 4
	%load_100=load i32,i32* %x_addr_2,align 4
	%load_101=load i32,i32* %y_addr_2,align 4
	%srem_5=srem i32 %load_100,%load_101
	%icmp_3=icmp eq i32 %srem_5,0
	br i1 %icmp_3,label %if_body_block_2,label %else_body_block_2
if_body_block_2:
	%load_102=load i32,i32* %y_addr_2,align 4
	store i32 %load_102,i32* %funcReturn_addr_2,align 4
	br label %func_end_block_2
else_body_block_2:
	%load_103=load i32,i32* %y_addr_2,align 4
	%load_104=load i32,i32* %x_addr_2,align 4
	%load_105=load i32,i32* %y_addr_2,align 4
	%srem_6=srem i32 %load_104,%load_105
	%load_106=load i32,i32* %j_addr_2,align 4
	%load_107=load i32,i32* %j1_addr_2,align 4
	%load_108=load i32,i32* %j2_addr_2,align 4
	%load_109=load i32,i32* %j3_addr_2,align 4
	%load_110=load i32,i32* %j4_addr_2,align 4
	%load_111=load i32,i32* %j5_addr_2,align 4
	%load_112=load i32,i32* %j6_addr_2,align 4
	%load_113=load i32,i32* %j7_addr_2,align 4
	%load_114=load i32,i32* %j8_addr_2,align 4
	%load_115=load i32,i32* %j9_addr_2,align 4
	%load_116=load i32,i32* %j10_addr_2,align 4
	%load_117=load i32,i32* %j11_addr_2,align 4
	%load_118=load i32,i32* %j12_addr_2,align 4
	%load_119=load i32,i32* %j13_addr_2,align 4
	%load_120=load i32,i32* %j14_addr_2,align 4
	%load_121=load i32,i32* %j15_addr_2,align 4
	%load_122=load i32,i32* %j16_addr_2,align 4
	%load_123=load i32,i32* %j17_addr_2,align 4
	%load_124=load i32,i32* %j18_addr_2,align 4
	%load_125=load i32,i32* %j19_addr_2,align 4
	%load_126=load i32,i32* %j20_addr_2,align 4
	%load_127=load i32,i32* %j21_addr_2,align 4
	%load_128=load i32,i32* %j22_addr_2,align 4
	%load_129=load i32,i32* %j23_addr_2,align 4
	%load_130=load i32,i32* %j24_addr_2,align 4
	%load_131=load i32,i32* %j25_addr_2,align 4
	%load_132=load i32,i32* %j26_addr_2,align 4
	%load_133=load i32,i32* %j27_addr_2,align 4
	%load_134=load i32,i32* %j28_addr_2,align 4
	%load_135=load i32,i32* %j29_addr_2,align 4
	%call_3=call i32 @f_gcd2_1(i32 %load_103,i32 %srem_6,i32 %load_106,i32 %load_107,i32 %load_108,i32 %load_109,i32 %load_110,i32 %load_111,i32 %load_112,i32 %load_113,i32 %load_114,i32 %load_115,i32 %load_116,i32 %load_117,i32 %load_118,i32 %load_119,i32 %load_120,i32 %load_121,i32 %load_122,i32 %load_123,i32 %load_124,i32 %load_125,i32 %load_126,i32 %load_127,i32 %load_128,i32 %load_129,i32 %load_130,i32 %load_131,i32 %load_132,i32 %load_133,i32 %load_134,i32 %load_135)
	store i32 %call_3,i32* %funcReturn_addr_2,align 4
	br label %func_end_block_2
normal_block_7:
	br label %func_end_block_2
normal_block_8:
	br label %normal_block_7
normal_block_9:
	br label %normal_block_7
}
define i32 @f_gcd2_1(i32 %x_3,i32 %y_3,i32 %j0_3,i32 %j1_3,i32 %j2_3,i32 %j3_3,i32 %j4_3,i32 %j5_3,i32 %j6_3,i32 %j7_3,i32 %j8_3,i32 %j9_3,i32 %j10_3,i32 %j11_3,i32 %j12_3,i32 %j13_3,i32 %j14_3,i32 %j15_3,i32 %j16_3,i32 %j17_3,i32 %j18_3,i32 %j19_3,i32 %j20_3,i32 %j21_3,i32 %j22_3,i32 %j23_3,i32 %j24_3,i32 %j25_3,i32 %j26_3,i32 %j27_3,i32 %j28_3,i32 %j29_3){
func_begin_block_3:
	%funcReturn_addr_3=alloca i32,align 4
	%x_addr_3=alloca i32,align 4
	%y_addr_3=alloca i32,align 4
	%j0_addr_3=alloca i32,align 4
	%j1_addr_3=alloca i32,align 4
	%j2_addr_3=alloca i32,align 4
	%j3_addr_3=alloca i32,align 4
	%j4_addr_3=alloca i32,align 4
	%j5_addr_3=alloca i32,align 4
	%j6_addr_3=alloca i32,align 4
	%j7_addr_3=alloca i32,align 4
	%j8_addr_3=alloca i32,align 4
	%j9_addr_3=alloca i32,align 4
	%j10_addr_3=alloca i32,align 4
	%j11_addr_3=alloca i32,align 4
	%j12_addr_3=alloca i32,align 4
	%j13_addr_3=alloca i32,align 4
	%j14_addr_3=alloca i32,align 4
	%j15_addr_3=alloca i32,align 4
	%j16_addr_3=alloca i32,align 4
	%j17_addr_3=alloca i32,align 4
	%j18_addr_3=alloca i32,align 4
	%j19_addr_3=alloca i32,align 4
	%j20_addr_3=alloca i32,align 4
	%j21_addr_3=alloca i32,align 4
	%j22_addr_3=alloca i32,align 4
	%j23_addr_3=alloca i32,align 4
	%j24_addr_3=alloca i32,align 4
	%j25_addr_3=alloca i32,align 4
	%j26_addr_3=alloca i32,align 4
	%j27_addr_3=alloca i32,align 4
	%j28_addr_3=alloca i32,align 4
	%j29_addr_3=alloca i32,align 4
	%j_addr_3=alloca i32,align 4
	br label %normal_block_10
func_end_block_3:
	%load_136=load i32,i32* %funcReturn_addr_3,align 4
	ret i32 %load_136
normal_block_10:
	store i32 %x_3,i32* %x_addr_3,align 4
	store i32 %y_3,i32* %y_addr_3,align 4
	store i32 %j0_3,i32* %j0_addr_3,align 4
	store i32 %j1_3,i32* %j1_addr_3,align 4
	store i32 %j2_3,i32* %j2_addr_3,align 4
	store i32 %j3_3,i32* %j3_addr_3,align 4
	store i32 %j4_3,i32* %j4_addr_3,align 4
	store i32 %j5_3,i32* %j5_addr_3,align 4
	store i32 %j6_3,i32* %j6_addr_3,align 4
	store i32 %j7_3,i32* %j7_addr_3,align 4
	store i32 %j8_3,i32* %j8_addr_3,align 4
	store i32 %j9_3,i32* %j9_addr_3,align 4
	store i32 %j10_3,i32* %j10_addr_3,align 4
	store i32 %j11_3,i32* %j11_addr_3,align 4
	store i32 %j12_3,i32* %j12_addr_3,align 4
	store i32 %j13_3,i32* %j13_addr_3,align 4
	store i32 %j14_3,i32* %j14_addr_3,align 4
	store i32 %j15_3,i32* %j15_addr_3,align 4
	store i32 %j16_3,i32* %j16_addr_3,align 4
	store i32 %j17_3,i32* %j17_addr_3,align 4
	store i32 %j18_3,i32* %j18_addr_3,align 4
	store i32 %j19_3,i32* %j19_addr_3,align 4
	store i32 %j20_3,i32* %j20_addr_3,align 4
	store i32 %j21_3,i32* %j21_addr_3,align 4
	store i32 %j22_3,i32* %j22_addr_3,align 4
	store i32 %j23_3,i32* %j23_addr_3,align 4
	store i32 %j24_3,i32* %j24_addr_3,align 4
	store i32 %j25_3,i32* %j25_addr_3,align 4
	store i32 %j26_3,i32* %j26_addr_3,align 4
	store i32 %j27_3,i32* %j27_addr_3,align 4
	store i32 %j28_3,i32* %j28_addr_3,align 4
	store i32 %j29_3,i32* %j29_addr_3,align 4
	%load_137=load i32,i32* %j0_addr_3,align 4
	%load_138=load i32,i32* %j1_addr_3,align 4
	%add_60=add i32 %load_137,%load_138
	%load_139=load i32,i32* %j2_addr_3,align 4
	%add_61=add i32 %add_60,%load_139
	%load_140=load i32,i32* %j3_addr_3,align 4
	%add_62=add i32 %add_61,%load_140
	%load_141=load i32,i32* %j4_addr_3,align 4
	%add_63=add i32 %add_62,%load_141
	%load_142=load i32,i32* %j5_addr_3,align 4
	%add_64=add i32 %add_63,%load_142
	%load_143=load i32,i32* %j6_addr_3,align 4
	%add_65=add i32 %add_64,%load_143
	%load_144=load i32,i32* %j7_addr_3,align 4
	%add_66=add i32 %add_65,%load_144
	%load_145=load i32,i32* %j8_addr_3,align 4
	%add_67=add i32 %add_66,%load_145
	%load_146=load i32,i32* %j9_addr_3,align 4
	%add_68=add i32 %add_67,%load_146
	%load_147=load i32,i32* %j10_addr_3,align 4
	%add_69=add i32 %add_68,%load_147
	%load_148=load i32,i32* %j11_addr_3,align 4
	%add_70=add i32 %add_69,%load_148
	%load_149=load i32,i32* %j12_addr_3,align 4
	%add_71=add i32 %add_70,%load_149
	%load_150=load i32,i32* %j13_addr_3,align 4
	%add_72=add i32 %add_71,%load_150
	%load_151=load i32,i32* %j14_addr_3,align 4
	%add_73=add i32 %add_72,%load_151
	%load_152=load i32,i32* %j15_addr_3,align 4
	%add_74=add i32 %add_73,%load_152
	%load_153=load i32,i32* %j16_addr_3,align 4
	%add_75=add i32 %add_74,%load_153
	%load_154=load i32,i32* %j17_addr_3,align 4
	%add_76=add i32 %add_75,%load_154
	%load_155=load i32,i32* %j18_addr_3,align 4
	%add_77=add i32 %add_76,%load_155
	%load_156=load i32,i32* %j19_addr_3,align 4
	%add_78=add i32 %add_77,%load_156
	%load_157=load i32,i32* %j20_addr_3,align 4
	%add_79=add i32 %add_78,%load_157
	%load_158=load i32,i32* %j21_addr_3,align 4
	%add_80=add i32 %add_79,%load_158
	%load_159=load i32,i32* %j22_addr_3,align 4
	%add_81=add i32 %add_80,%load_159
	%load_160=load i32,i32* %j23_addr_3,align 4
	%add_82=add i32 %add_81,%load_160
	%load_161=load i32,i32* %j24_addr_3,align 4
	%add_83=add i32 %add_82,%load_161
	%load_162=load i32,i32* %j25_addr_3,align 4
	%add_84=add i32 %add_83,%load_162
	%load_163=load i32,i32* %j26_addr_3,align 4
	%add_85=add i32 %add_84,%load_163
	%load_164=load i32,i32* %j27_addr_3,align 4
	%add_86=add i32 %add_85,%load_164
	%load_165=load i32,i32* %j28_addr_3,align 4
	%add_87=add i32 %add_86,%load_165
	%load_166=load i32,i32* %j29_addr_3,align 4
	%add_88=add i32 %add_87,%load_166
	%srem_7=srem i32 %add_88,100
	store i32 %srem_7,i32* %j_addr_3,align 4
	%load_167=load i32,i32* %x_addr_3,align 4
	%load_168=load i32,i32* %y_addr_3,align 4
	%srem_8=srem i32 %load_167,%load_168
	%icmp_4=icmp eq i32 %srem_8,0
	br i1 %icmp_4,label %if_body_block_3,label %else_body_block_3
if_body_block_3:
	%load_169=load i32,i32* %y_addr_3,align 4
	store i32 %load_169,i32* %funcReturn_addr_3,align 4
	br label %func_end_block_3
else_body_block_3:
	%load_170=load i32,i32* %y_addr_3,align 4
	%load_171=load i32,i32* %x_addr_3,align 4
	%load_172=load i32,i32* %y_addr_3,align 4
	%srem_9=srem i32 %load_171,%load_172
	%load_173=load i32,i32* %j0_addr_3,align 4
	%load_174=load i32,i32* %j1_addr_3,align 4
	%load_175=load i32,i32* %j2_addr_3,align 4
	%load_176=load i32,i32* %j3_addr_3,align 4
	%load_177=load i32,i32* %j4_addr_3,align 4
	%load_178=load i32,i32* %j5_addr_3,align 4
	%load_179=load i32,i32* %j6_addr_3,align 4
	%load_180=load i32,i32* %j7_addr_3,align 4
	%load_181=load i32,i32* %j8_addr_3,align 4
	%load_182=load i32,i32* %j9_addr_3,align 4
	%load_183=load i32,i32* %j10_addr_3,align 4
	%load_184=load i32,i32* %j11_addr_3,align 4
	%load_185=load i32,i32* %j12_addr_3,align 4
	%load_186=load i32,i32* %j13_addr_3,align 4
	%load_187=load i32,i32* %j14_addr_3,align 4
	%load_188=load i32,i32* %j15_addr_3,align 4
	%load_189=load i32,i32* %j16_addr_3,align 4
	%load_190=load i32,i32* %j17_addr_3,align 4
	%load_191=load i32,i32* %j18_addr_3,align 4
	%load_192=load i32,i32* %j19_addr_3,align 4
	%load_193=load i32,i32* %j20_addr_3,align 4
	%load_194=load i32,i32* %j21_addr_3,align 4
	%load_195=load i32,i32* %j22_addr_3,align 4
	%load_196=load i32,i32* %j23_addr_3,align 4
	%load_197=load i32,i32* %j24_addr_3,align 4
	%load_198=load i32,i32* %j25_addr_3,align 4
	%load_199=load i32,i32* %j26_addr_3,align 4
	%load_200=load i32,i32* %j27_addr_3,align 4
	%load_201=load i32,i32* %j28_addr_3,align 4
	%load_202=load i32,i32* %j29_addr_3,align 4
	%call_4=call i32 @f_gcd_1(i32 %load_170,i32 %srem_9,i32 %load_173,i32 %load_174,i32 %load_175,i32 %load_176,i32 %load_177,i32 %load_178,i32 %load_179,i32 %load_180,i32 %load_181,i32 %load_182,i32 %load_183,i32 %load_184,i32 %load_185,i32 %load_186,i32 %load_187,i32 %load_188,i32 %load_189,i32 %load_190,i32 %load_191,i32 %load_192,i32 %load_193,i32 %load_194,i32 %load_195,i32 %load_196,i32 %load_197,i32 %load_198,i32 %load_199,i32 %load_200,i32 %load_201,i32 %load_202)
	store i32 %call_4,i32* %funcReturn_addr_3,align 4
	br label %func_end_block_3
normal_block_11:
	br label %func_end_block_3
normal_block_12:
	br label %normal_block_11
normal_block_13:
	br label %normal_block_11
}
define i32 @main(){
func_begin_block_4:
	%funcReturn_addr_4=alloca i32,align 4
	br label %normal_block_14
func_end_block_4:
	%load_203=load i32,i32* %funcReturn_addr_4,align 4
	ret i32 %load_203
normal_block_14:
	call void @_main_initial_1()
	%call_6=call i32 @f_gcd_1(i32 10,i32 1,i32 0,i32 2,i32 4,i32 6,i32 8,i32 10,i32 12,i32 14,i32 16,i32 18,i32 20,i32 22,i32 24,i32 26,i32 28,i32 30,i32 32,i32 34,i32 36,i32 38,i32 40,i32 42,i32 44,i32 46,i32 48,i32 50,i32 52,i32 54,i32 56,i32 58)
	%add_89=add i32 %call_6,1024
	%call_7=call i8* @f_toString_1(i32 %add_89)
	call void @f_println_1(i8* %call_7)
	store i32 0,i32* %funcReturn_addr_4,align 4
	br label %func_end_block_4
normal_block_15:
	br label %func_end_block_4
}
define void @_main_initial_1(){
func_begin_block_5:
	br label %normal_block_16
func_end_block_5:
	ret void
normal_block_16:
	br label %func_end_block_5
}

