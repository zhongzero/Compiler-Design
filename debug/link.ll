; ModuleID = 'link.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%Edge = type { i32, i32, i32 }
%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

$_ZSt4swapIcENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_ = comdat any

@n_addr_1 = global i32 0, align 4
@m_addr_1 = global i32 0, align 4
@ans_addr_1 = global i32 0, align 4
@fa_addr_1 = global i32* null, align 8
@rk_addr_1 = global i32* null, align 8
@e_addr_1 = global %Edge** null, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_builtin.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8

define void @f_qsort_1(%Edge** %e_1, i32 %l_1, i32 %r_1) {
func_begin_block_1:
  %e_addr_2 = alloca %Edge**, align 8
  %l_addr_1 = alloca i32, align 4
  %r_addr_1 = alloca i32, align 4
  %i_addr_1 = alloca i32, align 4
  %j_addr_1 = alloca i32, align 4
  %x_addr_1 = alloca %Edge*, align 8
  %shortCircuit_addr_1 = alloca i1, align 1
  %shortCircuit_addr_2 = alloca i1, align 1
  br label %normal_block_2

func_end_block_1:                                 ; preds = %normal_block_3
  ret void

normal_block_2:                                   ; preds = %func_begin_block_1
  store %Edge** %e_1, %Edge*** %e_addr_2, align 8
  store i32 %l_1, i32* %l_addr_1, align 4
  store i32 %r_1, i32* %r_addr_1, align 4
  %load_1 = load i32, i32* %l_addr_1, align 4
  %load_2 = load i32, i32* %r_addr_1, align 4
  %icmp_1 = icmp slt i32 %load_1, %load_2
  br i1 %icmp_1, label %if_body_block_1, label %normal_block_3

if_body_block_1:                                  ; preds = %normal_block_2
  %load_3 = load i32, i32* %l_addr_1, align 4
  store i32 %load_3, i32* %i_addr_1, align 4
  %load_4 = load i32, i32* %r_addr_1, align 4
  store i32 %load_4, i32* %j_addr_1, align 4
  %load_5 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_6 = load i32, i32* %l_addr_1, align 4
  %gep_1 = getelementptr inbounds %Edge*, %Edge** %load_5, i32 %load_6
  %load_7 = load %Edge*, %Edge** %gep_1, align 8
  store %Edge* %load_7, %Edge** %x_addr_1, align 8
  br label %while_condition_block_1

normal_block_3:                                   ; preds = %normal_block_4, %normal_block_2
  br label %func_end_block_1

while_condition_block_1:                          ; preds = %normal_block_8, %if_body_block_1
  %load_8 = load i32, i32* %i_addr_1, align 4
  %load_9 = load i32, i32* %j_addr_1, align 4
  %icmp_2 = icmp slt i32 %load_8, %load_9
  br i1 %icmp_2, label %while_body_block_1, label %normal_block_4

while_body_block_1:                               ; preds = %while_condition_block_1
  br label %while_condition_block_2

normal_block_4:                                   ; preds = %while_condition_block_1
  %load_46 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_47 = load i32, i32* %i_addr_1, align 4
  %gep_12 = getelementptr inbounds %Edge*, %Edge** %load_46, i32 %load_47
  %load_48 = load %Edge*, %Edge** %x_addr_1, align 8
  store %Edge* %load_48, %Edge** %gep_12, align 8
  %load_49 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_50 = load i32, i32* %l_addr_1, align 4
  %load_51 = load i32, i32* %i_addr_1, align 4
  %sub_1 = sub i32 %load_51, 1
  call void @f_qsort_1(%Edge** %load_49, i32 %load_50, i32 %sub_1)
  %load_52 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_53 = load i32, i32* %i_addr_1, align 4
  %add_5 = add i32 %load_53, 1
  %load_54 = load i32, i32* %r_addr_1, align 4
  call void @f_qsort_1(%Edge** %load_52, i32 %add_5, i32 %load_54)
  br label %normal_block_3

while_condition_block_2:                          ; preds = %while_body_block_2, %while_body_block_1
  %load_10 = load i32, i32* %i_addr_1, align 4
  %load_11 = load i32, i32* %j_addr_1, align 4
  %icmp_3 = icmp slt i32 %load_10, %load_11
  br i1 %icmp_3, label %short_circuit_if_body_block_1, label %short_circuit_else_body_block_1

while_body_block_2:                               ; preds = %short_circuit_end_block_1
  %load_19 = load i32, i32* %j_addr_1, align 4
  %add_1 = add i32 %load_19, -1
  store i32 %add_1, i32* %j_addr_1, align 4
  br label %while_condition_block_2

normal_block_5:                                   ; preds = %short_circuit_end_block_1
  %load_20 = load i32, i32* %i_addr_1, align 4
  %load_21 = load i32, i32* %j_addr_1, align 4
  %icmp_5 = icmp slt i32 %load_20, %load_21
  br i1 %icmp_5, label %if_body_block_2, label %normal_block_6

short_circuit_if_body_block_1:                    ; preds = %while_condition_block_2
  %load_12 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_13 = load i32, i32* %j_addr_1, align 4
  %gep_2 = getelementptr inbounds %Edge*, %Edge** %load_12, i32 %load_13
  %load_14 = load %Edge*, %Edge** %gep_2, align 8
  %gep_3 = getelementptr inbounds %Edge, %Edge* %load_14, i32 0, i32 2
  %load_15 = load i32, i32* %gep_3, align 4
  %load_16 = load %Edge*, %Edge** %x_addr_1, align 8
  %gep_4 = getelementptr inbounds %Edge, %Edge* %load_16, i32 0, i32 2
  %load_17 = load i32, i32* %gep_4, align 4
  %icmp_4 = icmp sge i32 %load_15, %load_17
  store i1 %icmp_4, i1* %shortCircuit_addr_1, align 1
  br label %short_circuit_end_block_1

short_circuit_else_body_block_1:                  ; preds = %while_condition_block_2
  store i1 false, i1* %shortCircuit_addr_1, align 1
  br label %short_circuit_end_block_1

short_circuit_end_block_1:                        ; preds = %short_circuit_else_body_block_1, %short_circuit_if_body_block_1
  %load_18 = load i1, i1* %shortCircuit_addr_1, align 1
  br i1 %load_18, label %while_body_block_2, label %normal_block_5

if_body_block_2:                                  ; preds = %normal_block_5
  %load_22 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_23 = load i32, i32* %i_addr_1, align 4
  %gep_5 = getelementptr inbounds %Edge*, %Edge** %load_22, i32 %load_23
  %load_24 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_25 = load i32, i32* %j_addr_1, align 4
  %gep_6 = getelementptr inbounds %Edge*, %Edge** %load_24, i32 %load_25
  %load_26 = load %Edge*, %Edge** %gep_6, align 8
  store %Edge* %load_26, %Edge** %gep_5, align 8
  %load_27 = load i32, i32* %i_addr_1, align 4
  %add_2 = add i32 %load_27, 1
  store i32 %add_2, i32* %i_addr_1, align 4
  br label %normal_block_6

normal_block_6:                                   ; preds = %if_body_block_2, %normal_block_5
  br label %while_condition_block_3

while_condition_block_3:                          ; preds = %while_body_block_3, %normal_block_6
  %load_28 = load i32, i32* %i_addr_1, align 4
  %load_29 = load i32, i32* %j_addr_1, align 4
  %icmp_6 = icmp slt i32 %load_28, %load_29
  br i1 %icmp_6, label %short_circuit_if_body_block_2, label %short_circuit_else_body_block_2

while_body_block_3:                               ; preds = %short_circuit_end_block_2
  %load_37 = load i32, i32* %i_addr_1, align 4
  %add_3 = add i32 %load_37, 1
  store i32 %add_3, i32* %i_addr_1, align 4
  br label %while_condition_block_3

normal_block_7:                                   ; preds = %short_circuit_end_block_2
  %load_38 = load i32, i32* %i_addr_1, align 4
  %load_39 = load i32, i32* %j_addr_1, align 4
  %icmp_8 = icmp slt i32 %load_38, %load_39
  br i1 %icmp_8, label %if_body_block_3, label %normal_block_8

short_circuit_if_body_block_2:                    ; preds = %while_condition_block_3
  %load_30 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_31 = load i32, i32* %i_addr_1, align 4
  %gep_7 = getelementptr inbounds %Edge*, %Edge** %load_30, i32 %load_31
  %load_32 = load %Edge*, %Edge** %gep_7, align 8
  %gep_8 = getelementptr inbounds %Edge, %Edge* %load_32, i32 0, i32 2
  %load_33 = load i32, i32* %gep_8, align 4
  %load_34 = load %Edge*, %Edge** %x_addr_1, align 8
  %gep_9 = getelementptr inbounds %Edge, %Edge* %load_34, i32 0, i32 2
  %load_35 = load i32, i32* %gep_9, align 4
  %icmp_7 = icmp slt i32 %load_33, %load_35
  store i1 %icmp_7, i1* %shortCircuit_addr_2, align 1
  br label %short_circuit_end_block_2

short_circuit_else_body_block_2:                  ; preds = %while_condition_block_3
  store i1 false, i1* %shortCircuit_addr_2, align 1
  br label %short_circuit_end_block_2

short_circuit_end_block_2:                        ; preds = %short_circuit_else_body_block_2, %short_circuit_if_body_block_2
  %load_36 = load i1, i1* %shortCircuit_addr_2, align 1
  br i1 %load_36, label %while_body_block_3, label %normal_block_7

if_body_block_3:                                  ; preds = %normal_block_7
  %load_40 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_41 = load i32, i32* %j_addr_1, align 4
  %gep_10 = getelementptr inbounds %Edge*, %Edge** %load_40, i32 %load_41
  %load_42 = load %Edge**, %Edge*** %e_addr_2, align 8
  %load_43 = load i32, i32* %i_addr_1, align 4
  %gep_11 = getelementptr inbounds %Edge*, %Edge** %load_42, i32 %load_43
  %load_44 = load %Edge*, %Edge** %gep_11, align 8
  store %Edge* %load_44, %Edge** %gep_10, align 8
  %load_45 = load i32, i32* %j_addr_1, align 4
  %add_4 = add i32 %load_45, -1
  store i32 %add_4, i32* %j_addr_1, align 4
  br label %normal_block_8

normal_block_8:                                   ; preds = %if_body_block_3, %normal_block_7
  br label %while_condition_block_1
}

define void @f_init_1() {
func_begin_block_2:
  %i_addr_2 = alloca i32, align 4
  br label %normal_block_9

func_end_block_2:                                 ; preds = %normal_block_10
  ret void

normal_block_9:                                   ; preds = %func_begin_block_2
  %load_55 = load i32, i32* @n_addr_1, align 4
  %add_6 = add i32 %load_55, 1
  %mul_1 = mul i32 4, %add_6
  %add_7 = add i32 %mul_1, 4
  %call_3 = call i8* @_heap_malloc_1(i32 %add_7)
  %bitCast_1 = bitcast i8* %call_3 to i32*
  store i32 %add_6, i32* %bitCast_1, align 4
  %gep_13 = getelementptr inbounds i32, i32* %bitCast_1, i32 1
  %bitCast_2 = bitcast i32* %gep_13 to i32*
  store i32* %bitCast_2, i32** @fa_addr_1, align 8
  %load_56 = load i32, i32* @n_addr_1, align 4
  %add_8 = add i32 %load_56, 1
  %mul_2 = mul i32 4, %add_8
  %add_9 = add i32 %mul_2, 4
  %call_4 = call i8* @_heap_malloc_1(i32 %add_9)
  %bitCast_3 = bitcast i8* %call_4 to i32*
  store i32 %add_8, i32* %bitCast_3, align 4
  %gep_14 = getelementptr inbounds i32, i32* %bitCast_3, i32 1
  %bitCast_4 = bitcast i32* %gep_14 to i32*
  store i32* %bitCast_4, i32** @rk_addr_1, align 8
  store i32 1, i32* %i_addr_2, align 4
  br label %for_condition_block_1

for_condition_block_1:                            ; preds = %for_update_block_1, %normal_block_9
  %load_57 = load i32, i32* %i_addr_2, align 4
  %load_58 = load i32, i32* @n_addr_1, align 4
  %icmp_9 = icmp sle i32 %load_57, %load_58
  br i1 %icmp_9, label %for_body_block_1, label %normal_block_10

for_body_block_1:                                 ; preds = %for_condition_block_1
  %load_59 = load i32*, i32** @fa_addr_1, align 8
  %load_60 = load i32, i32* %i_addr_2, align 4
  %gep_15 = getelementptr inbounds i32, i32* %load_59, i32 %load_60
  %load_61 = load i32, i32* %i_addr_2, align 4
  store i32 %load_61, i32* %gep_15, align 4
  %load_62 = load i32*, i32** @rk_addr_1, align 8
  %load_63 = load i32, i32* %i_addr_2, align 4
  %gep_16 = getelementptr inbounds i32, i32* %load_62, i32 %load_63
  store i32 1, i32* %gep_16, align 4
  br label %for_update_block_1

for_update_block_1:                               ; preds = %for_body_block_1
  %load_64 = load i32, i32* %i_addr_2, align 4
  %add_10 = add i32 %load_64, 1
  store i32 %add_10, i32* %i_addr_2, align 4
  br label %for_condition_block_1

normal_block_10:                                  ; preds = %for_condition_block_1
  br label %func_end_block_2
}

define i32 @f_find_1(i32 %x_1) {
func_begin_block_3:
  %funcReturn_addr_1 = alloca i32, align 4
  %x_addr_2 = alloca i32, align 4
  br label %normal_block_11

func_end_block_3:                                 ; preds = %normal_block_14, %normal_block_12, %if_body_block_4
  %load_65 = load i32, i32* %funcReturn_addr_1, align 4
  ret i32 %load_65

normal_block_11:                                  ; preds = %func_begin_block_3
  store i32 %x_1, i32* %x_addr_2, align 4
  %load_66 = load i32, i32* %x_addr_2, align 4
  %load_67 = load i32*, i32** @fa_addr_1, align 8
  %load_68 = load i32, i32* %x_addr_2, align 4
  %gep_17 = getelementptr inbounds i32, i32* %load_67, i32 %load_68
  %load_69 = load i32, i32* %gep_17, align 4
  %icmp_10 = icmp eq i32 %load_66, %load_69
  br i1 %icmp_10, label %if_body_block_4, label %normal_block_12

if_body_block_4:                                  ; preds = %normal_block_11
  %load_70 = load i32, i32* %x_addr_2, align 4
  store i32 %load_70, i32* %funcReturn_addr_1, align 4
  br label %func_end_block_3

normal_block_12:                                  ; preds = %normal_block_13, %normal_block_11
  %load_71 = load i32*, i32** @fa_addr_1, align 8
  %load_72 = load i32, i32* %x_addr_2, align 4
  %gep_18 = getelementptr inbounds i32, i32* %load_71, i32 %load_72
  %load_73 = load i32, i32* %gep_18, align 4
  %call_5 = call i32 @f_find_1(i32 %load_73)
  store i32 %call_5, i32* %x_addr_2, align 4
  %load_74 = load i32*, i32** @fa_addr_1, align 8
  %load_75 = load i32, i32* %x_addr_2, align 4
  %gep_19 = getelementptr inbounds i32, i32* %load_74, i32 %load_75
  %load_76 = load i32, i32* %gep_19, align 4
  store i32 %load_76, i32* %funcReturn_addr_1, align 4
  br label %func_end_block_3

normal_block_13:                                  ; No predecessors!
  br label %normal_block_12

normal_block_14:                                  ; No predecessors!
  br label %func_end_block_3
}

define i1 @f_union_1(i32 %x_2, i32 %y_1) {
func_begin_block_4:
  %funcReturn_addr_2 = alloca i1, align 1
  %x_addr_3 = alloca i32, align 4
  %y_addr_1 = alloca i32, align 4
  br label %normal_block_15

func_end_block_4:                                 ; preds = %normal_block_19, %normal_block_18, %if_body_block_5
  %load_77 = load i1, i1* %funcReturn_addr_2, align 1
  ret i1 %load_77

normal_block_15:                                  ; preds = %func_begin_block_4
  store i32 %x_2, i32* %x_addr_3, align 4
  store i32 %y_1, i32* %y_addr_1, align 4
  %load_78 = load i32, i32* %x_addr_3, align 4
  %call_6 = call i32 @f_find_1(i32 %load_78)
  store i32 %call_6, i32* %x_addr_3, align 4
  %load_79 = load i32, i32* %y_addr_1, align 4
  %call_7 = call i32 @f_find_1(i32 %load_79)
  store i32 %call_7, i32* %y_addr_1, align 4
  %load_80 = load i32, i32* %x_addr_3, align 4
  %load_81 = load i32, i32* %y_addr_1, align 4
  %icmp_11 = icmp eq i32 %load_80, %load_81
  br i1 %icmp_11, label %if_body_block_5, label %normal_block_16

if_body_block_5:                                  ; preds = %normal_block_15
  store i1 false, i1* %funcReturn_addr_2, align 1
  br label %func_end_block_4

normal_block_16:                                  ; preds = %normal_block_17, %normal_block_15
  %load_82 = load i32*, i32** @rk_addr_1, align 8
  %load_83 = load i32, i32* %x_addr_3, align 4
  %gep_20 = getelementptr inbounds i32, i32* %load_82, i32 %load_83
  %load_84 = load i32, i32* %gep_20, align 4
  %load_85 = load i32*, i32** @rk_addr_1, align 8
  %load_86 = load i32, i32* %y_addr_1, align 4
  %gep_21 = getelementptr inbounds i32, i32* %load_85, i32 %load_86
  %load_87 = load i32, i32* %gep_21, align 4
  %icmp_12 = icmp sgt i32 %load_84, %load_87
  br i1 %icmp_12, label %if_body_block_6, label %else_body_block_6

normal_block_17:                                  ; No predecessors!
  br label %normal_block_16

if_body_block_6:                                  ; preds = %normal_block_16
  %load_88 = load i32*, i32** @fa_addr_1, align 8
  %load_89 = load i32, i32* %y_addr_1, align 4
  %gep_22 = getelementptr inbounds i32, i32* %load_88, i32 %load_89
  %load_90 = load i32, i32* %x_addr_3, align 4
  store i32 %load_90, i32* %gep_22, align 4
  %load_91 = load i32*, i32** @rk_addr_1, align 8
  %load_92 = load i32, i32* %x_addr_3, align 4
  %gep_23 = getelementptr inbounds i32, i32* %load_91, i32 %load_92
  %load_93 = load i32*, i32** @rk_addr_1, align 8
  %load_94 = load i32, i32* %x_addr_3, align 4
  %gep_24 = getelementptr inbounds i32, i32* %load_93, i32 %load_94
  %load_95 = load i32, i32* %gep_24, align 4
  %load_96 = load i32*, i32** @rk_addr_1, align 8
  %load_97 = load i32, i32* %y_addr_1, align 4
  %gep_25 = getelementptr inbounds i32, i32* %load_96, i32 %load_97
  %load_98 = load i32, i32* %gep_25, align 4
  %add_11 = add i32 %load_95, %load_98
  store i32 %add_11, i32* %gep_23, align 4
  br label %normal_block_18

else_body_block_6:                                ; preds = %normal_block_16
  %load_99 = load i32*, i32** @fa_addr_1, align 8
  %load_100 = load i32, i32* %x_addr_3, align 4
  %gep_26 = getelementptr inbounds i32, i32* %load_99, i32 %load_100
  %load_101 = load i32, i32* %y_addr_1, align 4
  store i32 %load_101, i32* %gep_26, align 4
  %load_102 = load i32*, i32** @rk_addr_1, align 8
  %load_103 = load i32, i32* %y_addr_1, align 4
  %gep_27 = getelementptr inbounds i32, i32* %load_102, i32 %load_103
  %load_104 = load i32*, i32** @rk_addr_1, align 8
  %load_105 = load i32, i32* %y_addr_1, align 4
  %gep_28 = getelementptr inbounds i32, i32* %load_104, i32 %load_105
  %load_106 = load i32, i32* %gep_28, align 4
  %load_107 = load i32*, i32** @rk_addr_1, align 8
  %load_108 = load i32, i32* %x_addr_3, align 4
  %gep_29 = getelementptr inbounds i32, i32* %load_107, i32 %load_108
  %load_109 = load i32, i32* %gep_29, align 4
  %add_12 = add i32 %load_106, %load_109
  store i32 %add_12, i32* %gep_27, align 4
  br label %normal_block_18

normal_block_18:                                  ; preds = %else_body_block_6, %if_body_block_6
  store i1 true, i1* %funcReturn_addr_2, align 1
  br label %func_end_block_4

normal_block_19:                                  ; No predecessors!
  br label %func_end_block_4
}

define i32 @main() {
func_begin_block_5:
  %funcReturn_addr_3 = alloca i32, align 4
  %i_addr_3 = alloca i32, align 4
  %ed_addr_1 = alloca %Edge*, align 8
  %classptr_addr_1 = alloca %Edge*, align 8
  %j_addr_2 = alloca i32, align 4
  %ed_addr_2 = alloca %Edge*, align 8
  br label %normal_block_20

func_end_block_5:                                 ; preds = %normal_block_27, %normal_block_26, %if_body_block_7
  %load_110 = load i32, i32* %funcReturn_addr_3, align 4
  ret i32 %load_110

normal_block_20:                                  ; preds = %func_begin_block_5
  call void @_main_initial_1()
  %call_9 = call i32 @f_getInt_1()
  store i32 %call_9, i32* @n_addr_1, align 4
  %call_10 = call i32 @f_getInt_1()
  store i32 %call_10, i32* @m_addr_1, align 4
  %load_111 = load i32, i32* @m_addr_1, align 4
  %mul_3 = mul i32 8, %load_111
  %add_13 = add i32 %mul_3, 4
  %call_11 = call i8* @_heap_malloc_1(i32 %add_13)
  %bitCast_5 = bitcast i8* %call_11 to i32*
  store i32 %load_111, i32* %bitCast_5, align 4
  %gep_30 = getelementptr inbounds i32, i32* %bitCast_5, i32 1
  %bitCast_6 = bitcast i32* %gep_30 to %Edge**
  store %Edge** %bitCast_6, %Edge*** @e_addr_1, align 8
  store i32 0, i32* %i_addr_3, align 4
  br label %for_condition_block_2

for_condition_block_2:                            ; preds = %for_update_block_2, %normal_block_20
  %load_112 = load i32, i32* %i_addr_3, align 4
  %load_113 = load i32, i32* @m_addr_1, align 4
  %icmp_13 = icmp slt i32 %load_112, %load_113
  br i1 %icmp_13, label %for_body_block_2, label %normal_block_21

for_body_block_2:                                 ; preds = %for_condition_block_2
  %call_12 = call i8* @_heap_malloc_1(i32 12)
  %bitCast_7 = bitcast i8* %call_12 to %Edge*
  store %Edge* %bitCast_7, %Edge** %classptr_addr_1, align 8
  call void @class_constructor_Edge.Edge_1(%Edge** %classptr_addr_1)
  store %Edge* %bitCast_7, %Edge** %ed_addr_1, align 8
  %load_114 = load %Edge*, %Edge** %ed_addr_1, align 8
  %gep_31 = getelementptr inbounds %Edge, %Edge* %load_114, i32 0, i32 0
  %call_14 = call i32 @f_getInt_1()
  store i32 %call_14, i32* %gep_31, align 4
  %load_115 = load %Edge*, %Edge** %ed_addr_1, align 8
  %gep_32 = getelementptr inbounds %Edge, %Edge* %load_115, i32 0, i32 1
  %call_15 = call i32 @f_getInt_1()
  store i32 %call_15, i32* %gep_32, align 4
  %load_116 = load %Edge*, %Edge** %ed_addr_1, align 8
  %gep_33 = getelementptr inbounds %Edge, %Edge* %load_116, i32 0, i32 2
  %call_16 = call i32 @f_getInt_1()
  store i32 %call_16, i32* %gep_33, align 4
  %load_117 = load %Edge**, %Edge*** @e_addr_1, align 8
  %load_118 = load i32, i32* %i_addr_3, align 4
  %gep_34 = getelementptr inbounds %Edge*, %Edge** %load_117, i32 %load_118
  %load_119 = load %Edge*, %Edge** %ed_addr_1, align 8
  store %Edge* %load_119, %Edge** %gep_34, align 8
  br label %for_update_block_2

for_update_block_2:                               ; preds = %for_body_block_2
  %load_120 = load i32, i32* %i_addr_3, align 4
  %add_14 = add i32 %load_120, 1
  store i32 %add_14, i32* %i_addr_3, align 4
  br label %for_condition_block_2

normal_block_21:                                  ; preds = %for_condition_block_2
  %load_121 = load %Edge**, %Edge*** @e_addr_1, align 8
  %load_122 = load i32, i32* @m_addr_1, align 4
  %sub_2 = sub i32 %load_122, 1
  call void @f_qsort_1(%Edge** %load_121, i32 0, i32 %sub_2)
  call void @f_init_1()
  store i32 0, i32* %i_addr_3, align 4
  store i32 0, i32* %j_addr_2, align 4
  br label %while_condition_block_4

while_condition_block_4:                          ; preds = %normal_block_25, %normal_block_21
  %load_123 = load i32, i32* %i_addr_3, align 4
  %load_124 = load i32, i32* @n_addr_1, align 4
  %sub_3 = sub i32 %load_124, 1
  %icmp_14 = icmp slt i32 %load_123, %sub_3
  br i1 %icmp_14, label %while_body_block_4, label %normal_block_22

while_body_block_4:                               ; preds = %while_condition_block_4
  %load_125 = load i32, i32* %j_addr_2, align 4
  %load_126 = load i32, i32* @m_addr_1, align 4
  %icmp_15 = icmp sge i32 %load_125, %load_126
  br i1 %icmp_15, label %if_body_block_7, label %normal_block_23

normal_block_22:                                  ; preds = %while_condition_block_4
  %load_139 = load i32*, i32** @rk_addr_1, align 8
  %call_21 = call i32 @f_find_1(i32 1)
  %gep_39 = getelementptr inbounds i32, i32* %load_139, i32 %call_21
  %load_140 = load i32, i32* %gep_39, align 4
  %load_141 = load i32, i32* @n_addr_1, align 4
  %icmp_16 = icmp eq i32 %load_140, %load_141
  br i1 %icmp_16, label %if_body_block_9, label %else_body_block_9

if_body_block_7:                                  ; preds = %while_body_block_4
  call void @f_printInt_1(i32 -1)
  store i32 0, i32* %funcReturn_addr_3, align 4
  br label %func_end_block_5

normal_block_23:                                  ; preds = %normal_block_24, %while_body_block_4
  %load_127 = load %Edge**, %Edge*** @e_addr_1, align 8
  %load_128 = load i32, i32* %j_addr_2, align 4
  %gep_35 = getelementptr inbounds %Edge*, %Edge** %load_127, i32 %load_128
  %load_129 = load %Edge*, %Edge** %gep_35, align 8
  store %Edge* %load_129, %Edge** %ed_addr_2, align 8
  %load_130 = load i32, i32* %j_addr_2, align 4
  %add_15 = add i32 %load_130, 1
  store i32 %add_15, i32* %j_addr_2, align 4
  %load_131 = load %Edge*, %Edge** %ed_addr_2, align 8
  %gep_36 = getelementptr inbounds %Edge, %Edge* %load_131, i32 0, i32 0
  %load_132 = load i32, i32* %gep_36, align 4
  %load_133 = load %Edge*, %Edge** %ed_addr_2, align 8
  %gep_37 = getelementptr inbounds %Edge, %Edge* %load_133, i32 0, i32 1
  %load_134 = load i32, i32* %gep_37, align 4
  %call_20 = call i1 @f_union_1(i32 %load_132, i32 %load_134)
  br i1 %call_20, label %if_body_block_8, label %normal_block_25

normal_block_24:                                  ; No predecessors!
  br label %normal_block_23

if_body_block_8:                                  ; preds = %normal_block_23
  %load_135 = load i32, i32* %i_addr_3, align 4
  %add_16 = add i32 %load_135, 1
  store i32 %add_16, i32* %i_addr_3, align 4
  %load_136 = load i32, i32* @ans_addr_1, align 4
  %load_137 = load %Edge*, %Edge** %ed_addr_2, align 8
  %gep_38 = getelementptr inbounds %Edge, %Edge* %load_137, i32 0, i32 2
  %load_138 = load i32, i32* %gep_38, align 4
  %add_17 = add i32 %load_136, %load_138
  store i32 %add_17, i32* @ans_addr_1, align 4
  br label %normal_block_25

normal_block_25:                                  ; preds = %if_body_block_8, %normal_block_23
  br label %while_condition_block_4

if_body_block_9:                                  ; preds = %normal_block_22
  %load_142 = load i32, i32* @ans_addr_1, align 4
  call void @f_printInt_1(i32 %load_142)
  br label %normal_block_26

else_body_block_9:                                ; preds = %normal_block_22
  call void @f_printInt_1(i32 -1)
  br label %normal_block_26

normal_block_26:                                  ; preds = %else_body_block_9, %if_body_block_9
  store i32 0, i32* %funcReturn_addr_3, align 4
  br label %func_end_block_5

normal_block_27:                                  ; No predecessors!
  br label %func_end_block_5
}

define void @_main_initial_1() {
func_begin_block_6:
  br label %normal_block_28

func_end_block_6:                                 ; preds = %normal_block_28
  ret void

normal_block_28:                                  ; preds = %func_begin_block_6
  store i32 0, i32* @ans_addr_1, align 4
  store i32* null, i32** @fa_addr_1, align 8
  store i32* null, i32** @rk_addr_1, align 8
  store %Edge** null, %Edge*** @e_addr_1, align 8
  br label %func_end_block_6
}

define void @class_constructor_Edge.Edge_1(%Edge** %this_1) {
normal_block_1:
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_builtin.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline optnone uwtable
define dso_local void @f_print_1(i8* %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline optnone uwtable
define dso_local void @f_println_1(i8* %0) #4 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @f_printInt_1(i32 %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local void @f_printlnInt_1(i32 %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @f_getString_1() #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %"class.std::__cxx11::basic_string", align 8
  %2 = alloca i8*
  %3 = alloca i32
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %1) #3
  %6 = invoke dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_istream"* dereferenceable(280) @_ZSt3cin, %"class.std::__cxx11::basic_string"* dereferenceable(32) %1)
          to label %7 unwind label %19

7:                                                ; preds = %0
  %8 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %1) #3
  %9 = call i64 @strlen(i8* %8) #8
  %10 = add i64 %9, 1
  %11 = invoke i8* @_Znam(i64 %10) #9
          to label %12 unwind label %19

12:                                               ; preds = %7
  store i8* %11, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %1) #3
  %15 = call i8* @strcpy(i8* %13, i8* %14) #3
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %1) #3
  ret i8* %18

19:                                               ; preds = %7, %0
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %2, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %3, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %1) #3
  br label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  resume { i8*, i32 } %27
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

declare dso_local dereferenceable(280) %"class.std::basic_istream"* @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_istream"* dereferenceable(280), %"class.std::__cxx11::basic_string"* dereferenceable(32)) #1

; Function Attrs: nounwind
declare dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"*) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znam(i64) #6

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"*) unnamed_addr #2

; Function Attrs: noinline optnone uwtable
define dso_local i32 @f_getInt_1() #4 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline optnone uwtable
define dso_local i8* @f_toString_1(i32 %0) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*
  %8 = alloca i32
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* %4) #3
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = invoke i8* @_Znam(i64 2) #9
          to label %17 unwind label %24

17:                                               ; preds = %15
  store i8* %16, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 48, i8* %19, align 1
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8* %23, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %89

24:                                               ; preds = %53, %50, %38, %15
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %7, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %8, align 4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %4) #3
  br label %91

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %44, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = srem i32 %39, 10
  %41 = add nsw i32 %40, 48
  %42 = trunc i32 %41 to i8
  %43 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(%"class.std::__cxx11::basic_string"* %4, i8 signext %42)
          to label %44 unwind label %24

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = sdiv i32 %45, 10
  store i32 %46, i32* %3, align 4
  br label %35

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = invoke dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(%"class.std::__cxx11::basic_string"* %4, i8 signext 45)
          to label %52 unwind label %24

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %47
  %54 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %4) #3
  %55 = call i64 @strlen(i8* %54) #8
  %56 = add i64 %55, 1
  %57 = invoke i8* @_Znam(i64 %56) #9
          to label %58 unwind label %24

58:                                               ; preds = %53
  store i8* %57, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* %4) #3
  %61 = call i8* @strcpy(i8* %59, i8* %60) #3
  %62 = load i8*, i8** %10, align 8
  %63 = call i64 @strlen(i8* %62) #8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sdiv i32 %66, 2
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %83, %58
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %76, i64 %81
  call void @_ZSt4swapIcENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i8* dereferenceable(1) %75, i8* dereferenceable(1) %82) #3
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %12, align 4
  br label %68

86:                                               ; preds = %68
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8* %88, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %4) #3
  %90 = load i8*, i8** %2, align 8
  ret i8* %90

91:                                               ; preds = %24
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = insertvalue { i8*, i32 } undef, i8* %92, 0
  %95 = insertvalue { i8*, i32 } %94, i32 %93, 1
  resume { i8*, i32 } %95
}

declare dso_local dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(%"class.std::__cxx11::basic_string"*, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt4swapIcENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i8* dereferenceable(1) %0, i8* dereferenceable(1) %1) #7 comdat {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call dereferenceable(1) i8* @_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_(i8* dereferenceable(1) %6) #3
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %5, align 1
  %9 = load i8*, i8** %4, align 8
  %10 = call dereferenceable(1) i8* @_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_(i8* dereferenceable(1) %9) #3
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** %3, align 8
  store i8 %11, i8* %12, align 1
  %13 = call dereferenceable(1) i8* @_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_(i8* dereferenceable(1) %5) #3
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %4, align 8
  store i8 %14, i8* %15, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local dereferenceable(1) i8* @_ZSt4moveIRcEONSt16remove_referenceIT_E4typeEOS2_(i8* dereferenceable(1) %0) #7 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_stringcmp_eq_1(i8* %0, i8* %1) #7 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #8
  %8 = icmp eq i32 %7, 0
  ret i1 %8
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_stringcmp_neq_1(i8* %0, i8* %1) #7 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #8
  %8 = icmp ne i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_stringcmp_less_1(i8* %0, i8* %1) #7 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #8
  %8 = icmp slt i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_stringcmp_greater_1(i8* %0, i8* %1) #7 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #8
  %8 = icmp sgt i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_stringcmp_leq_1(i8* %0, i8* %1) #7 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #8
  %8 = icmp sle i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @_stringcmp_geq_1(i8* %0, i8* %1) #7 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #8
  %8 = icmp sge i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_string_length_1(i8* %0) #7 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %4

15:                                               ; preds = %4
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_string_merge_1(i8* %0, i8* %1) #4 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @_string_length_1(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @_string_length_1(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = call i8* @_Znam(i64 %18) #9
  store i8* %19, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %34, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %20

37:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  store i8 %47, i8* %53, align 1
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %38

57:                                               ; preds = %38
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %7, align 8
  ret i8* %64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_heap_malloc_1(i32 %0) #7 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = call noalias i8* @malloc(i64 %4) #3
  ret i8* %5
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline optnone uwtable
define dso_local i8* @_string_substring_1(i8* %0, i32 %1, i32 %2) #4 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = call i8* @_Znam(i64 %12) #9
  store i8* %13, i8** %7, align 8
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %31, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8 %24, i8* %30, align 1
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load i8*, i8** %7, align 8
  ret i8* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_string_parseInt_1(i8* %0) #7 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %13, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %5
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 10
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %15, %21
  %23 = sub nsw i32 %22, 48
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %5

26:                                               ; preds = %5
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_string_ord_1(i8* %0, i32 %1) #7 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  ret i32 %10
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { builtin }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
