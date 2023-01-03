; ModuleID = 'link.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%Edge = type { i32, i32, i32 }

@n_addr_1 = global i32 0, align 4
@m_addr_1 = global i32 0, align 4
@ans_addr_1 = global i32 0, align 4
@fa_addr_1 = global i32* null, align 8
@rk_addr_1 = global i32* null, align 8
@e_addr_1 = global %Edge** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

define void @f_qsort_1(%Edge** %e_1, i32 %l_1, i32 %r_1) {
func_begin_block_2:
  %e_addr_2 = alloca %Edge**, align 8
  %l_addr_1 = alloca i32, align 4
  %r_addr_1 = alloca i32, align 4
  %i_addr_1 = alloca i32, align 4
  %j_addr_1 = alloca i32, align 4
  %x_addr_1 = alloca %Edge*, align 8
  %shortCircuit_addr_1 = alloca i1, align 1
  %shortCircuit_addr_2 = alloca i1, align 1
  br label %normal_block_2

func_end_block_2:                                 ; preds = %normal_block_3
  ret void

normal_block_2:                                   ; preds = %func_begin_block_2
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
  br label %func_end_block_2

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
func_begin_block_3:
  %i_addr_2 = alloca i32, align 4
  br label %normal_block_9

func_end_block_3:                                 ; preds = %normal_block_10
  ret void

normal_block_9:                                   ; preds = %func_begin_block_3
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
  br label %func_end_block_3
}

define i32 @f_find_1(i32 %x_1) {
func_begin_block_4:
  %funcReturn_addr_1 = alloca i32, align 4
  %x_addr_2 = alloca i32, align 4
  br label %normal_block_11

func_end_block_4:                                 ; preds = %normal_block_14, %normal_block_12, %if_body_block_4
  %load_65 = load i32, i32* %funcReturn_addr_1, align 4
  ret i32 %load_65

normal_block_11:                                  ; preds = %func_begin_block_4
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
  br label %func_end_block_4

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
  br label %func_end_block_4

normal_block_13:                                  ; No predecessors!
  br label %normal_block_12

normal_block_14:                                  ; No predecessors!
  br label %func_end_block_4
}

define i1 @f_union_1(i32 %x_2, i32 %y_1) {
func_begin_block_5:
  %funcReturn_addr_2 = alloca i1, align 1
  %x_addr_3 = alloca i32, align 4
  %y_addr_1 = alloca i32, align 4
  br label %normal_block_15

func_end_block_5:                                 ; preds = %normal_block_19, %normal_block_18, %if_body_block_5
  %load_77 = load i1, i1* %funcReturn_addr_2, align 1
  ret i1 %load_77

normal_block_15:                                  ; preds = %func_begin_block_5
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
  br label %func_end_block_5

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
  br label %func_end_block_5

normal_block_19:                                  ; No predecessors!
  br label %func_end_block_5
}

define i32 @main() {
func_begin_block_6:
  %funcReturn_addr_3 = alloca i32, align 4
  %i_addr_3 = alloca i32, align 4
  %ed_addr_1 = alloca %Edge*, align 8
  %classptr_addr_1 = alloca %Edge*, align 8
  %j_addr_2 = alloca i32, align 4
  %ed_addr_2 = alloca %Edge*, align 8
  br label %normal_block_20

func_end_block_6:                                 ; preds = %normal_block_27, %normal_block_26, %if_body_block_7
  %load_110 = load i32, i32* %funcReturn_addr_3, align 4
  ret i32 %load_110

normal_block_20:                                  ; preds = %func_begin_block_6
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
  br label %func_end_block_6

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
  br label %func_end_block_6

normal_block_27:                                  ; No predecessors!
  br label %func_end_block_6
}

define void @_main_initial_1() {
func_begin_block_7:
  br label %normal_block_28

func_end_block_7:                                 ; preds = %normal_block_28
  ret void

normal_block_28:                                  ; preds = %func_begin_block_7
  store i32 0, i32* @ans_addr_1, align 4
  store i32* null, i32** @fa_addr_1, align 8
  store i32* null, i32** @rk_addr_1, align 8
  store %Edge** null, %Edge*** @e_addr_1, align 8
  br label %func_end_block_7
}

define void @class_constructor_Edge.Edge_1(%Edge** %this_1) {
func_begin_block_1:
  br label %normal_block_1

func_end_block_1:                                 ; preds = %normal_block_1
  ret void

normal_block_1:                                   ; preds = %func_begin_block_1
  br label %func_end_block_1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_print_1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_println_1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_printInt_1(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_printlnInt_1(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f_getString_1() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @malloc(i64 100)
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = load i8*, i8** %1, align 8
  ret i8* %5
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_getInt_1() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @f_toString_1(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @malloc(i64 13)
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  %8 = load i8*, i8** %3, align 8
  ret i8* %8
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @_stringcmp_eq_1(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @_stringcmp_neq_1(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6)
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @_stringcmp_less_1(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6)
  %8 = icmp slt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @_stringcmp_greater_1(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6)
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @_stringcmp_leq_1(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6)
  %8 = icmp sle i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @_stringcmp_geq_1(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6)
  %8 = icmp sge i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_string_length_1(i8* %0) #0 {
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_string_merge_1(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @_string_length_1(i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @_string_length_1(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %33, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 %28, i8* %32, align 1
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %19

36:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 %46, i8* %52, align 1
  br label %53

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %37

56:                                               ; preds = %37
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %7, align 8
  ret i8* %63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_heap_malloc_1(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = call i8* @malloc(i64 %4)
  ret i8* %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_string_substring_1(i8* %0, i32 %1, i32 %2) #0 {
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
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %32, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  store i8 %25, i8* %31, align 1
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i8*, i8** %7, align 8
  ret i8* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_string_parseInt_1(i8* %0) #0 {
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
define dso_local i32 @_string_ord_1(i8* %0, i32 %1) #0 {
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
