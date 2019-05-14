; ModuleID = 'lobject.c'
source_filename = "lobject.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i64 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%union.StackValue = type { %struct.TValue }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.UpVal*, %struct.UpVal** }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.BuffFS = type { %struct.lua_State*, i32, i32, [400 x i8] }

@luaO_ceillog2.log_2 = internal unnamed_addr constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 16
@luai_ctype_ = external hidden local_unnamed_addr constant [257 x i8], align 16
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"invalid option '%%%c' to 'lua_pushfstring'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".xXnN\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1

; Function Attrs: norecurse nounwind readnone uwtable
define hidden i32 @luaO_int2fb(i32) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %32, label %3

; <label>:3:                                      ; preds = %1
  %4 = icmp ugt i32 %0, 127
  br i1 %4, label %5, label %13

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i32 [ %11, %6 ], [ 0, %5 ]
  %8 = phi i32 [ %10, %6 ], [ %0, %5 ]
  %9 = add i32 %8, 15
  %10 = lshr i32 %9, 4
  %11 = add nuw nsw i32 %7, 4
  %12 = icmp ugt i32 %9, 2047
  br i1 %12, label %6, label %13

; <label>:13:                                     ; preds = %6, %3
  %14 = phi i32 [ %0, %3 ], [ %10, %6 ]
  %15 = phi i32 [ 0, %3 ], [ %11, %6 ]
  %16 = icmp ugt i32 %14, 15
  br i1 %16, label %17, label %25

; <label>:17:                                     ; preds = %13
  br label %18

; <label>:18:                                     ; preds = %17, %18
  %19 = phi i32 [ %23, %18 ], [ %15, %17 ]
  %20 = phi i32 [ %22, %18 ], [ %14, %17 ]
  %21 = add i32 %20, 1
  %22 = lshr i32 %21, 1
  %23 = add nuw nsw i32 %19, 1
  %24 = icmp ugt i32 %21, 31
  br i1 %24, label %18, label %25

; <label>:25:                                     ; preds = %18, %13
  %26 = phi i32 [ %14, %13 ], [ %22, %18 ]
  %27 = phi i32 [ %15, %13 ], [ %23, %18 ]
  %28 = shl i32 %27, 3
  %29 = add i32 %28, 8
  %30 = add nsw i32 %26, -8
  %31 = or i32 %29, %30
  br label %32

; <label>:32:                                     ; preds = %1, %25
  %33 = phi i32 [ %31, %25 ], [ %0, %1 ]
  ret i32 %33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind readnone uwtable
define hidden i32 @luaO_fb2int(i32) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 8
  br i1 %2, label %9, label %3

; <label>:3:                                      ; preds = %1
  %4 = and i32 %0, 7
  %5 = or i32 %4, 8
  %6 = lshr i32 %0, 3
  %7 = add nsw i32 %6, -1
  %8 = shl i32 %5, %7
  br label %9

; <label>:9:                                      ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ %0, %1 ]
  ret i32 %10
}

; Function Attrs: norecurse nounwind readnone uwtable
define hidden i32 @luaO_ceillog2(i32) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  %3 = icmp ugt i32 %2, 255
  br i1 %3, label %4, label %11

; <label>:4:                                      ; preds = %1
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i32 [ %8, %5 ], [ 0, %4 ]
  %7 = phi i32 [ %9, %5 ], [ %2, %4 ]
  %8 = add nuw nsw i32 %6, 8
  %9 = lshr i32 %7, 8
  %10 = icmp ugt i32 %7, 65535
  br i1 %10, label %5, label %11

; <label>:11:                                     ; preds = %5, %1
  %12 = phi i32 [ %2, %1 ], [ %9, %5 ]
  %13 = phi i32 [ 0, %1 ], [ %8, %5 ]
  %14 = zext i32 %12 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @luaO_ceillog2.log_2, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1, !tbaa !2
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %13, %17
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue* nocapture) local_unnamed_addr #2 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  switch i32 %1, label %71 [
    i32 7, label %8
    i32 8, label %8
    i32 9, label %8
    i32 10, label %8
    i32 11, label %8
    i32 13, label %8
    i32 5, label %40
    i32 4, label %40
  ]

; <label>:8:                                      ; preds = %5, %5, %5, %5, %5, %5
  %9 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #9
  %10 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !5
  %13 = icmp eq i8 %12, 35
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %8
  %15 = bitcast %struct.TValue* %2 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !2
  store i64 %16, i64* %6, align 8, !tbaa !7
  br label %20

; <label>:17:                                     ; preds = %8
  %18 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2, i64* nonnull %6, i32 0) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

; <label>:20:                                     ; preds = %17, %14
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !5
  %23 = icmp eq i8 %22, 35
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %20
  %25 = bitcast %struct.TValue* %3 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !2
  store i64 %26, i64* %7, align 8, !tbaa !7
  br label %32

; <label>:27:                                     ; preds = %20
  %28 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %3, i64* nonnull %7, i32 0) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* %7, align 8, !tbaa !7
  br label %32

; <label>:32:                                     ; preds = %30, %24
  %33 = phi i64 [ %31, %30 ], [ %26, %24 ]
  %34 = load i64, i64* %6, align 8, !tbaa !7
  %35 = call fastcc i64 @intarith(%struct.lua_State* %0, i32 %1, i64 %34, i64 %33)
  %36 = bitcast %struct.TValue* %4 to i64*
  store i64 %35, i64* %36, align 8, !tbaa !2
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %37, align 8, !tbaa !5
  br label %38

; <label>:38:                                     ; preds = %17, %27, %32
  %39 = phi i32 [ 1, %32 ], [ 0, %27 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  br label %126

; <label>:40:                                     ; preds = %5, %5
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %42 = load i8, i8* %41, align 8, !tbaa !5
  switch i8 %42, label %126 [
    i8 19, label %43
    i8 35, label %46
  ]

; <label>:43:                                     ; preds = %40
  %44 = bitcast %struct.TValue* %2 to double*
  %45 = load double, double* %44, align 8, !tbaa !2
  br label %50

; <label>:46:                                     ; preds = %40
  %47 = bitcast %struct.TValue* %2 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !2
  %49 = sitofp i64 %48 to double
  br label %50

; <label>:50:                                     ; preds = %43, %46
  %51 = phi double [ %45, %43 ], [ %49, %46 ]
  %52 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %53 = load i8, i8* %52, align 8, !tbaa !5
  switch i8 %53, label %126 [
    i8 19, label %54
    i8 35, label %57
  ]

; <label>:54:                                     ; preds = %50
  %55 = bitcast %struct.TValue* %3 to double*
  %56 = load double, double* %55, align 8, !tbaa !2
  br label %61

; <label>:57:                                     ; preds = %50
  %58 = bitcast %struct.TValue* %3 to i64*
  %59 = load i64, i64* %58, align 8, !tbaa !2
  %60 = sitofp i64 %59 to double
  br label %61

; <label>:61:                                     ; preds = %54, %57
  %62 = phi double [ %56, %54 ], [ %60, %57 ]
  switch i32 %1, label %67 [
    i32 4, label %65
    i32 5, label %63
  ]

; <label>:63:                                     ; preds = %61
  %64 = fdiv fast double %51, %62
  br label %67

; <label>:65:                                     ; preds = %61
  %66 = tail call fast double @llvm.pow.f64(double %51, double %62) #9
  br label %67

; <label>:67:                                     ; preds = %61, %63, %65
  %68 = phi double [ %66, %65 ], [ %64, %63 ], [ 0.000000e+00, %61 ]
  %69 = bitcast %struct.TValue* %4 to double*
  store double %68, double* %69, align 8, !tbaa !2
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %70, align 8, !tbaa !5
  br label %126

; <label>:71:                                     ; preds = %5
  %72 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %73 = load i8, i8* %72, align 8, !tbaa !5
  switch i8 %73, label %126 [
    i8 35, label %74
    i8 19, label %86
  ]

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %76 = load i8, i8* %75, align 8, !tbaa !5
  %77 = icmp eq i8 %76, 35
  %78 = bitcast %struct.TValue* %2 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !2
  br i1 %77, label %80, label %91

; <label>:80:                                     ; preds = %74
  %81 = bitcast %struct.TValue* %3 to i64*
  %82 = load i64, i64* %81, align 8, !tbaa !2
  %83 = tail call fastcc i64 @intarith(%struct.lua_State* %0, i32 %1, i64 %79, i64 %82)
  %84 = bitcast %struct.TValue* %4 to i64*
  store i64 %83, i64* %84, align 8, !tbaa !2
  %85 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %85, align 8, !tbaa !5
  br label %126

; <label>:86:                                     ; preds = %71
  %87 = bitcast %struct.TValue* %2 to double*
  %88 = load double, double* %87, align 8, !tbaa !2
  %89 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %90 = load i8, i8* %89, align 8, !tbaa !5
  br label %93

; <label>:91:                                     ; preds = %74
  %92 = sitofp i64 %79 to double
  br label %93

; <label>:93:                                     ; preds = %86, %91
  %94 = phi i8 [ %90, %86 ], [ %76, %91 ]
  %95 = phi double [ %88, %86 ], [ %92, %91 ]
  switch i8 %94, label %126 [
    i8 19, label %96
    i8 35, label %99
  ]

; <label>:96:                                     ; preds = %93
  %97 = bitcast %struct.TValue* %3 to double*
  %98 = load double, double* %97, align 8, !tbaa !2
  br label %103

; <label>:99:                                     ; preds = %93
  %100 = bitcast %struct.TValue* %3 to i64*
  %101 = load i64, i64* %100, align 8, !tbaa !2
  %102 = sitofp i64 %101 to double
  br label %103

; <label>:103:                                    ; preds = %96, %99
  %104 = phi double [ %98, %96 ], [ %102, %99 ]
  switch i32 %1, label %122 [
    i32 0, label %105
    i32 1, label %107
    i32 2, label %109
    i32 5, label %111
    i32 4, label %113
    i32 6, label %115
    i32 12, label %118
    i32 3, label %120
  ]

; <label>:105:                                    ; preds = %103
  %106 = fadd fast double %104, %95
  br label %122

; <label>:107:                                    ; preds = %103
  %108 = fsub fast double %95, %104
  br label %122

; <label>:109:                                    ; preds = %103
  %110 = fmul fast double %104, %95
  br label %122

; <label>:111:                                    ; preds = %103
  %112 = fdiv fast double %95, %104
  br label %122

; <label>:113:                                    ; preds = %103
  %114 = tail call fast double @llvm.pow.f64(double %95, double %104) #9
  br label %122

; <label>:115:                                    ; preds = %103
  %116 = fdiv fast double %95, %104
  %117 = tail call fast double @llvm.floor.f64(double %116) #9
  br label %122

; <label>:118:                                    ; preds = %103
  %119 = fsub fast double -0.000000e+00, %95
  br label %122

; <label>:120:                                    ; preds = %103
  %121 = tail call fast double @luaV_modf(%struct.lua_State* %0, double %95, double %104) #9
  br label %122

; <label>:122:                                    ; preds = %103, %105, %107, %109, %111, %113, %115, %118, %120
  %123 = phi double [ %121, %120 ], [ %119, %118 ], [ %117, %115 ], [ %114, %113 ], [ %112, %111 ], [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ 0.000000e+00, %103 ]
  %124 = bitcast %struct.TValue* %4 to double*
  store double %123, double* %124, align 8, !tbaa !2
  %125 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %125, align 8, !tbaa !5
  br label %126

; <label>:126:                                    ; preds = %71, %80, %122, %93, %67, %50, %40, %38
  %127 = phi i32 [ %39, %38 ], [ 1, %67 ], [ 0, %50 ], [ 0, %40 ], [ 1, %80 ], [ 1, %122 ], [ 0, %93 ], [ 0, %71 ]
  ret i32 %127
}

declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @intarith(%struct.lua_State*, i32, i64, i64) unnamed_addr #2 {
  switch i32 %1, label %30 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 6, label %13
    i32 7, label %15
    i32 8, label %17
    i32 9, label %19
    i32 10, label %21
    i32 11, label %23
    i32 12, label %26
    i32 13, label %28
  ]

; <label>:5:                                      ; preds = %4
  %6 = add i64 %3, %2
  br label %30

; <label>:7:                                      ; preds = %4
  %8 = sub i64 %2, %3
  br label %30

; <label>:9:                                      ; preds = %4
  %10 = mul i64 %3, %2
  br label %30

; <label>:11:                                     ; preds = %4
  %12 = tail call i64 @luaV_mod(%struct.lua_State* %0, i64 %2, i64 %3) #9
  br label %30

; <label>:13:                                     ; preds = %4
  %14 = tail call i64 @luaV_idiv(%struct.lua_State* %0, i64 %2, i64 %3) #9
  br label %30

; <label>:15:                                     ; preds = %4
  %16 = and i64 %3, %2
  br label %30

; <label>:17:                                     ; preds = %4
  %18 = or i64 %3, %2
  br label %30

; <label>:19:                                     ; preds = %4
  %20 = xor i64 %3, %2
  br label %30

; <label>:21:                                     ; preds = %4
  %22 = tail call i64 @luaV_shiftl(i64 %2, i64 %3) #9
  br label %30

; <label>:23:                                     ; preds = %4
  %24 = sub nsw i64 0, %3
  %25 = tail call i64 @luaV_shiftl(i64 %2, i64 %24) #9
  br label %30

; <label>:26:                                     ; preds = %4
  %27 = sub i64 0, %2
  br label %30

; <label>:28:                                     ; preds = %4
  %29 = xor i64 %2, -1
  br label %30

; <label>:30:                                     ; preds = %4, %28, %26, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %31 = phi i64 [ %29, %28 ], [ %27, %26 ], [ %25, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ 0, %4 ]
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define hidden void @luaO_arith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %union.StackValue*) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 0, i32 0
  %7 = tail call i32 @luaO_rawarith(%struct.lua_State* %0, i32 %1, %struct.TValue* %2, %struct.TValue* %3, %struct.TValue* %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %5
  %10 = add nsw i32 %1, 6
  tail call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2, %struct.TValue* %3, %union.StackValue* %4, i32 %10) #9
  br label %11

; <label>:11:                                     ; preds = %5, %9
  ret void
}

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) local_unnamed_addr #3

; Function Attrs: norecurse nounwind readnone uwtable
define hidden i32 @luaO_hexavalue(i32) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, 1
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %3
  %5 = load i8, i8* %4, align 1, !tbaa !2
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  %8 = add nsw i32 %0, -48
  %9 = or i32 %0, 32
  %10 = add nsw i32 %9, -87
  %11 = select i1 %7, i32 %10, i32 %8
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define hidden i64 @luaO_str2num(i8*, %struct.TValue* nocapture) local_unnamed_addr #2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [201 x i8], align 16
  br label %6

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i8* [ %0, %2 ], [ %15, %6 ]
  %8 = load i8, i8* %7, align 1, !tbaa !2
  %9 = zext i8 %8 to i64
  %10 = add nuw nsw i64 %9, 1
  %11 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !2
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  %15 = getelementptr inbounds i8, i8* %7, i64 1
  br i1 %14, label %16, label %6

; <label>:16:                                     ; preds = %6
  switch i8 %8, label %19 [
    i8 45, label %17
    i8 43, label %18
  ]

; <label>:17:                                     ; preds = %16
  br label %19

; <label>:18:                                     ; preds = %16
  br label %19

; <label>:19:                                     ; preds = %18, %17, %16
  %20 = phi i8* [ %7, %16 ], [ %15, %18 ], [ %15, %17 ]
  %21 = phi i32 [ 0, %16 ], [ 0, %18 ], [ 1, %17 ]
  %22 = load i8, i8* %20, align 1, !tbaa !2
  %23 = icmp eq i8 %22, 48
  br i1 %23, label %24, label %63

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds i8, i8* %20, i64 1
  %26 = load i8, i8* %25, align 1, !tbaa !2
  switch i8 %26, label %63 [
    i8 120, label %27
    i8 88, label %27
  ]

; <label>:27:                                     ; preds = %24, %24
  %28 = getelementptr inbounds i8, i8* %20, i64 2
  %29 = load i8, i8* %28, align 1, !tbaa !2
  %30 = zext i8 %29 to i64
  %31 = add nuw nsw i64 %30, 1
  %32 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1, !tbaa !2
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %95, label %36

; <label>:36:                                     ; preds = %27
  br label %37

; <label>:37:                                     ; preds = %36, %37
  %38 = phi i8 [ %56, %37 ], [ %29, %36 ]
  %39 = phi i64 [ %54, %37 ], [ 0, %36 ]
  %40 = phi i8* [ %55, %37 ], [ %28, %36 ]
  %41 = shl i64 %39, 4
  %42 = sext i8 %38 to i32
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !2
  %47 = and i8 %46, 2
  %48 = icmp eq i8 %47, 0
  %49 = add nsw i32 %42, -48
  %50 = or i32 %42, 32
  %51 = add nsw i32 %50, -87
  %52 = select i1 %48, i32 %51, i32 %49
  %53 = sext i32 %52 to i64
  %54 = add i64 %41, %53
  %55 = getelementptr inbounds i8, i8* %40, i64 1
  %56 = load i8, i8* %55, align 1, !tbaa !2
  %57 = zext i8 %56 to i64
  %58 = add nuw nsw i64 %57, 1
  %59 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1, !tbaa !2
  %61 = and i8 %60, 16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %95, label %37

; <label>:63:                                     ; preds = %24, %19
  %64 = zext i8 %22 to i64
  %65 = add nuw nsw i64 %64, 1
  %66 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1, !tbaa !2
  %68 = and i8 %67, 2
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %95, label %70

; <label>:70:                                     ; preds = %63
  %71 = add nuw nsw i32 %21, 7
  br label %72

; <label>:72:                                     ; preds = %83, %70
  %73 = phi i8 [ %22, %70 ], [ %88, %83 ]
  %74 = phi i64 [ 0, %70 ], [ %86, %83 ]
  %75 = phi i8* [ %20, %70 ], [ %87, %83 ]
  %76 = sext i8 %73 to i32
  %77 = add nsw i32 %76, -48
  %78 = icmp ugt i64 %74, 922337203685477579
  br i1 %78, label %79, label %83

; <label>:79:                                     ; preds = %72
  %80 = icmp ne i64 %74, 922337203685477580
  %81 = icmp sgt i32 %77, %71
  %82 = or i1 %80, %81
  br i1 %82, label %127, label %83

; <label>:83:                                     ; preds = %79, %72
  %84 = mul i64 %74, 10
  %85 = sext i32 %77 to i64
  %86 = add i64 %84, %85
  %87 = getelementptr inbounds i8, i8* %75, i64 1
  %88 = load i8, i8* %87, align 1, !tbaa !2
  %89 = zext i8 %88 to i64
  %90 = add nuw nsw i64 %89, 1
  %91 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1, !tbaa !2
  %93 = and i8 %92, 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %72

; <label>:95:                                     ; preds = %37, %83, %63, %27
  %96 = phi i8 [ %67, %63 ], [ %33, %27 ], [ %92, %83 ], [ %60, %37 ]
  %97 = phi i8 [ %22, %63 ], [ %29, %27 ], [ %88, %83 ], [ %56, %37 ]
  %98 = phi i8* [ %20, %63 ], [ %28, %27 ], [ %87, %83 ], [ %55, %37 ]
  %99 = phi i32 [ 1, %63 ], [ 1, %27 ], [ 0, %83 ], [ 0, %37 ]
  %100 = phi i64 [ 0, %63 ], [ 0, %27 ], [ %86, %83 ], [ %54, %37 ]
  %101 = and i8 %96, 8
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %114, label %103

; <label>:103:                                    ; preds = %95
  br label %104

; <label>:104:                                    ; preds = %103, %104
  %105 = phi i8* [ %106, %104 ], [ %98, %103 ]
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1, !tbaa !2
  %108 = zext i8 %107 to i64
  %109 = add nuw nsw i64 %108, 1
  %110 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1, !tbaa !2
  %112 = and i8 %111, 8
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %104

; <label>:114:                                    ; preds = %104, %95
  %115 = phi i8 [ %97, %95 ], [ %107, %104 ]
  %116 = phi i8* [ %98, %95 ], [ %106, %104 ]
  %117 = icmp ne i32 %99, 0
  %118 = icmp ne i8 %115, 0
  %119 = or i1 %118, %117
  %120 = icmp eq i8* %116, null
  %121 = or i1 %119, %120
  br i1 %121, label %127, label %122

; <label>:122:                                    ; preds = %114
  %123 = icmp eq i32 %21, 0
  %124 = sub i64 0, %100
  %125 = select i1 %123, i64 %100, i64 %124
  %126 = bitcast %struct.TValue* %1 to i64*
  store i64 %125, i64* %126, align 8, !tbaa !2
  br label %224

; <label>:127:                                    ; preds = %79, %114
  %128 = tail call i8* @strpbrk(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11
  %129 = icmp eq i8* %128, null
  br i1 %129, label %134, label %130

; <label>:130:                                    ; preds = %127
  %131 = load i8, i8* %128, align 1, !tbaa !2
  %132 = or i8 %131, 32
  %133 = icmp eq i8 %132, 110
  br i1 %133, label %232, label %134

; <label>:134:                                    ; preds = %130, %127
  %135 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %135) #9
  %136 = call fast double @strtod(i8* %0, i8** nonnull %4) #9
  %137 = load i8*, i8** %4, align 8, !tbaa !9
  %138 = icmp eq i8* %137, %0
  br i1 %138, label %164, label %139

; <label>:139:                                    ; preds = %134
  %140 = load i8, i8* %137, align 1, !tbaa !2
  %141 = zext i8 %140 to i64
  %142 = add nuw nsw i64 %141, 1
  %143 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1, !tbaa !2
  %145 = and i8 %144, 8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %159, label %147

; <label>:147:                                    ; preds = %139
  br label %148

; <label>:148:                                    ; preds = %147, %148
  %149 = phi i8* [ %150, %148 ], [ %137, %147 ]
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1, !tbaa !2
  %152 = zext i8 %151 to i64
  %153 = add nuw nsw i64 %152, 1
  %154 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1, !tbaa !2
  %156 = and i8 %155, 8
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %148

; <label>:158:                                    ; preds = %148
  store i8* %150, i8** %4, align 8, !tbaa !9
  br label %159

; <label>:159:                                    ; preds = %158, %139
  %160 = phi i8* [ %150, %158 ], [ %137, %139 ]
  %161 = phi i8 [ %151, %158 ], [ %140, %139 ]
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %135) #9
  br label %220

; <label>:164:                                    ; preds = %159, %134
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %135) #9
  %165 = getelementptr inbounds [201 x i8], [201 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 201, i8* nonnull %165) #9
  %166 = tail call i8* @strchr(i8* %0, i32 46) #11
  %167 = tail call i64 @strlen(i8* %0) #11
  %168 = icmp ugt i64 %167, 200
  %169 = icmp eq i8* %166, null
  %170 = or i1 %169, %168
  br i1 %170, label %219, label %171

; <label>:171:                                    ; preds = %164
  %172 = call i8* @strcpy(i8* nonnull %165, i8* %0) #9
  %173 = call %struct.lconv* @localeconv() #9
  %174 = getelementptr inbounds %struct.lconv, %struct.lconv* %173, i64 0, i32 0
  %175 = load i8*, i8** %174, align 8, !tbaa !11
  %176 = load i8, i8* %175, align 1, !tbaa !2
  %177 = ptrtoint i8* %166 to i64
  %178 = ptrtoint i8* %0 to i64
  %179 = sub i64 %177, %178
  %180 = getelementptr inbounds [201 x i8], [201 x i8]* %5, i64 0, i64 %179
  store i8 %176, i8* %180, align 1, !tbaa !2
  %181 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %181) #9
  %182 = call fast double @strtod(i8* nonnull %165, i8** nonnull %3) #9
  %183 = load i8*, i8** %3, align 8, !tbaa !9
  %184 = icmp eq i8* %183, %165
  br i1 %184, label %210, label %185

; <label>:185:                                    ; preds = %171
  %186 = load i8, i8* %183, align 1, !tbaa !2
  %187 = zext i8 %186 to i64
  %188 = add nuw nsw i64 %187, 1
  %189 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %188
  %190 = load i8, i8* %189, align 1, !tbaa !2
  %191 = and i8 %190, 8
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %205, label %193

; <label>:193:                                    ; preds = %185
  br label %194

; <label>:194:                                    ; preds = %193, %194
  %195 = phi i8* [ %196, %194 ], [ %183, %193 ]
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = load i8, i8* %196, align 1, !tbaa !2
  %198 = zext i8 %197 to i64
  %199 = add nuw nsw i64 %198, 1
  %200 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %199
  %201 = load i8, i8* %200, align 1, !tbaa !2
  %202 = and i8 %201, 8
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %194

; <label>:204:                                    ; preds = %194
  store i8* %196, i8** %3, align 8, !tbaa !9
  br label %205

; <label>:205:                                    ; preds = %204, %185
  %206 = phi i8* [ %196, %204 ], [ %183, %185 ]
  %207 = phi i8 [ %197, %204 ], [ %186, %185 ]
  %208 = icmp eq i8 %207, 0
  %209 = select i1 %208, i8* %206, i8* null
  br label %210

; <label>:210:                                    ; preds = %205, %171
  %211 = phi i8* [ null, %171 ], [ %209, %205 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %181) #9
  %212 = icmp eq i8* %211, null
  %213 = ptrtoint i8* %211 to i64
  %214 = ptrtoint [201 x i8]* %5 to i64
  %215 = sub i64 %213, %214
  %216 = getelementptr inbounds i8, i8* %0, i64 %215
  call void @llvm.lifetime.end.p0i8(i64 201, i8* nonnull %165) #9
  %217 = icmp eq i8* %216, null
  %218 = or i1 %212, %217
  br i1 %218, label %232, label %220

; <label>:219:                                    ; preds = %164
  call void @llvm.lifetime.end.p0i8(i64 201, i8* nonnull %165) #9
  br label %232

; <label>:220:                                    ; preds = %210, %163
  %221 = phi i8* [ %160, %163 ], [ %216, %210 ]
  %222 = phi double [ %136, %163 ], [ %182, %210 ]
  %223 = bitcast %struct.TValue* %1 to double*
  store double %222, double* %223, align 8, !tbaa !2
  br label %224

; <label>:224:                                    ; preds = %220, %122
  %225 = phi i8 [ 19, %220 ], [ 35, %122 ]
  %226 = phi i8* [ %221, %220 ], [ %116, %122 ]
  %227 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  store i8 %225, i8* %227, align 8, !tbaa !5
  %228 = ptrtoint i8* %226 to i64
  %229 = ptrtoint i8* %0 to i64
  %230 = sub i64 1, %229
  %231 = add i64 %230, %228
  br label %232

; <label>:232:                                    ; preds = %210, %130, %219, %224
  %233 = phi i64 [ %231, %224 ], [ 0, %219 ], [ 0, %130 ], [ 0, %210 ]
  ret i64 %233
}

; Function Attrs: norecurse nounwind uwtable
define hidden i32 @luaO_utf8esc(i8* nocapture, i64) local_unnamed_addr #4 {
  %3 = icmp ult i64 %1, 128
  br i1 %3, label %28, label %4

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %12, %5 ], [ 1, %4 ]
  %7 = phi i64 [ %15, %5 ], [ %1, %4 ]
  %8 = phi i32 [ %16, %5 ], [ 63, %4 ]
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 63
  %11 = or i8 %10, -128
  %12 = add nuw i64 %6, 1
  %13 = sub nsw i64 8, %6
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  store i8 %11, i8* %14, align 1, !tbaa !2
  %15 = lshr i64 %7, 6
  %16 = lshr i32 %8, 1
  %17 = zext i32 %16 to i64
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %5, label %19

; <label>:19:                                     ; preds = %5
  %20 = trunc i64 %12 to i32
  %21 = and i32 %8, 254
  %22 = xor i32 %21, 254
  %23 = zext i32 %22 to i64
  %24 = or i64 %15, %23
  %25 = shl i64 %6, 32
  %26 = sub i64 30064771072, %25
  %27 = ashr exact i64 %26, 32
  br label %28

; <label>:28:                                     ; preds = %2, %19
  %29 = phi i64 [ %27, %19 ], [ 7, %2 ]
  %30 = phi i64 [ %24, %19 ], [ %1, %2 ]
  %31 = phi i32 [ %20, %19 ], [ 1, %2 ]
  %32 = trunc i64 %30 to i8
  %33 = getelementptr inbounds i8, i8* %0, i64 %29
  store i8 %32, i8* %33, align 1, !tbaa !2
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue* nocapture) local_unnamed_addr #2 {
  %3 = alloca [50 x i8], align 16
  %4 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %4) #9
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !5
  %7 = icmp eq i8 %6, 35
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = bitcast %struct.TValue* %1 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !2
  %11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %10) #9
  %12 = sext i32 %11 to i64
  br label %31

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.TValue* %1 to double*
  %15 = load double, double* %14, align 8, !tbaa !2
  %16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double %15) #9
  %17 = sext i32 %16 to i64
  %18 = call i64 @strspn(i8* nonnull %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #11
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

; <label>:22:                                     ; preds = %13
  %23 = tail call %struct.lconv* @localeconv() #9
  %24 = getelementptr inbounds %struct.lconv, %struct.lconv* %23, i64 0, i32 0
  %25 = load i8*, i8** %24, align 8, !tbaa !11
  %26 = load i8, i8* %25, align 1, !tbaa !2
  %27 = add nsw i64 %17, 1
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %17
  store i8 %26, i8* %28, align 1, !tbaa !2
  %29 = add nsw i64 %17, 2
  %30 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 %27
  store i8 48, i8* %30, align 1, !tbaa !2
  br label %31

; <label>:31:                                     ; preds = %8, %13, %22
  %32 = phi i64 [ %12, %8 ], [ %29, %22 ], [ %17, %13 ]
  %33 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %4, i64 %32) #9
  %34 = bitcast %struct.TValue* %1 to %struct.TString**
  store %struct.TString* %33, %struct.TString** %34, align 8, !tbaa !2
  %35 = getelementptr inbounds %struct.TString, %struct.TString* %33, i64 0, i32 1
  %36 = load i8, i8* %35, align 8, !tbaa !13
  %37 = or i8 %36, 64
  store i8 %37, i8* %5, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %4) #9
  ret void
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden nonnull i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2 {
  %4 = alloca %struct.BuffFS, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca [8 x i8], align 1
  %9 = bitcast %struct.BuffFS* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %9) #9
  %10 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 2
  store i32 0, i32* %10, align 4, !tbaa !16
  %11 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 1
  store i32 0, i32* %11, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %12, align 8, !tbaa !19
  %13 = call i8* @strchr(i8* %1, i32 37) #11
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 0
  br label %289

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %19 = bitcast %struct.TValue* %5 to i8*
  %20 = bitcast %struct.TValue* %6 to i8*
  %21 = bitcast %struct.TValue* %7 to i8*
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %26 = bitcast %struct.TValue* %5 to i64*
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %28 = bitcast %struct.TValue* %6 to i64*
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %30 = bitcast %struct.TValue* %7 to i64*
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %32 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 0
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 7
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 8
  br label %35

; <label>:35:                                     ; preds = %17, %285
  %36 = phi i8* [ %13, %17 ], [ %287, %285 ]
  %37 = phi i8* [ %1, %17 ], [ %286, %285 ]
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %37, i64 %40)
  %41 = getelementptr inbounds i8, i8* %36, i64 1
  %42 = load i8, i8* %41, align 1, !tbaa !2
  %43 = sext i8 %42 to i32
  switch i32 %43, label %283 [
    i32 115, label %44
    i32 99, label %62
    i32 100, label %108
    i32 73, label %124
    i32 102, label %139
    i32 112, label %154
    i32 85, label %203
    i32 37, label %252
  ]

; <label>:44:                                     ; preds = %35
  %45 = load i32, i32* %18, align 8
  %46 = icmp ult i32 %45, 41
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %24, align 8
  %49 = sext i32 %45 to i64
  %50 = getelementptr i8, i8* %48, i64 %49
  %51 = add i32 %45, 8
  store i32 %51, i32* %18, align 8
  br label %55

; <label>:52:                                     ; preds = %44
  %53 = load i8*, i8** %25, align 8
  %54 = getelementptr i8, i8* %53, i64 8
  store i8* %54, i8** %25, align 8
  br label %55

; <label>:55:                                     ; preds = %52, %47
  %56 = phi i8* [ %50, %47 ], [ %53, %52 ]
  %57 = bitcast i8* %56 to i8**
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  %60 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %58
  %61 = call i64 @strlen(i8* %60) #11
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %60, i64 %61)
  br label %285

; <label>:62:                                     ; preds = %35
  %63 = load i32, i32* %18, align 8
  %64 = icmp ult i32 %63, 41
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %62
  %66 = load i8*, i8** %24, align 8
  %67 = sext i32 %63 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  %69 = add i32 %63, 8
  store i32 %69, i32* %18, align 8
  br label %73

; <label>:70:                                     ; preds = %62
  %71 = load i8*, i8** %25, align 8
  %72 = getelementptr i8, i8* %71, i64 8
  store i8* %72, i8** %25, align 8
  br label %73

; <label>:73:                                     ; preds = %70, %65
  %74 = phi i8* [ %68, %65 ], [ %71, %70 ]
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i32, i32* %10, align 4, !tbaa !16
  %79 = icmp eq i32 %78, 400
  br i1 %79, label %80, label %103

; <label>:80:                                     ; preds = %73
  %81 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !19
  %82 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i64 0, i32 6
  %83 = bitcast %union.StackValue** %82 to %struct.TValue**
  %84 = load %struct.TValue*, %struct.TValue** %83, align 8, !tbaa !20
  %85 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %81, i8* nonnull %32, i64 400) #9
  %86 = bitcast %struct.TValue* %84 to %struct.TString**
  store %struct.TString* %85, %struct.TString** %86, align 8, !tbaa !2
  %87 = getelementptr inbounds %struct.TString, %struct.TString* %85, i64 0, i32 1
  %88 = load i8, i8* %87, align 8, !tbaa !13
  %89 = or i8 %88, 64
  %90 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i64 0, i32 1
  store i8 %89, i8* %90, align 8, !tbaa !5
  %91 = load %union.StackValue*, %union.StackValue** %82, align 8, !tbaa !20
  %92 = getelementptr inbounds %union.StackValue, %union.StackValue* %91, i64 1
  store %union.StackValue* %92, %union.StackValue** %82, align 8, !tbaa !20
  %93 = load i32, i32* %11, align 8, !tbaa !18
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 8, !tbaa !18
  %95 = icmp sgt i32 %93, 0
  br i1 %95, label %96, label %102

; <label>:96:                                     ; preds = %80
  %97 = getelementptr inbounds %union.StackValue, %union.StackValue* %91, i64 3
  %98 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %81, i64 0, i32 10
  %99 = load %union.StackValue*, %union.StackValue** %98, align 8, !tbaa !25
  %100 = icmp ugt %union.StackValue* %97, %99
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %96
  call void @luaV_concat(%struct.lua_State* nonnull %81, i32 %94) #9
  store i32 1, i32* %11, align 8, !tbaa !18
  br label %102

; <label>:102:                                    ; preds = %101, %96, %80
  store i32 0, i32* %10, align 4, !tbaa !16
  br label %103

; <label>:103:                                    ; preds = %73, %102
  %104 = phi i32 [ 0, %102 ], [ %78, %73 ]
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 %105
  store i8 %77, i8* %106, align 1
  %107 = add i32 %104, 1
  store i32 %107, i32* %10, align 4, !tbaa !16
  br label %285

; <label>:108:                                    ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #9
  %109 = load i32, i32* %18, align 8
  %110 = icmp ult i32 %109, 41
  br i1 %110, label %111, label %116

; <label>:111:                                    ; preds = %108
  %112 = load i8*, i8** %24, align 8
  %113 = sext i32 %109 to i64
  %114 = getelementptr i8, i8* %112, i64 %113
  %115 = add i32 %109, 8
  store i32 %115, i32* %18, align 8
  br label %119

; <label>:116:                                    ; preds = %108
  %117 = load i8*, i8** %25, align 8
  %118 = getelementptr i8, i8* %117, i64 8
  store i8* %118, i8** %25, align 8
  br label %119

; <label>:119:                                    ; preds = %116, %111
  %120 = phi i8* [ %114, %111 ], [ %117, %116 ]
  %121 = bitcast i8* %120 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %26, align 8, !tbaa !2
  store i8 35, i8* %27, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #9
  br label %285

; <label>:124:                                    ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #9
  %125 = load i32, i32* %18, align 8
  %126 = icmp ult i32 %125, 41
  br i1 %126, label %127, label %132

; <label>:127:                                    ; preds = %124
  %128 = load i8*, i8** %24, align 8
  %129 = sext i32 %125 to i64
  %130 = getelementptr i8, i8* %128, i64 %129
  %131 = add i32 %125, 8
  store i32 %131, i32* %18, align 8
  br label %135

; <label>:132:                                    ; preds = %124
  %133 = load i8*, i8** %25, align 8
  %134 = getelementptr i8, i8* %133, i64 8
  store i8* %134, i8** %25, align 8
  br label %135

; <label>:135:                                    ; preds = %132, %127
  %136 = phi i8* [ %130, %127 ], [ %133, %132 ]
  %137 = bitcast i8* %136 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %28, align 8, !tbaa !2
  store i8 35, i8* %29, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #9
  br label %285

; <label>:139:                                    ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #9
  %140 = load i32, i32* %22, align 4
  %141 = icmp ult i32 %140, 161
  br i1 %141, label %142, label %147

; <label>:142:                                    ; preds = %139
  %143 = load i8*, i8** %24, align 8
  %144 = sext i32 %140 to i64
  %145 = getelementptr i8, i8* %143, i64 %144
  %146 = add i32 %140, 16
  store i32 %146, i32* %22, align 4
  br label %150

; <label>:147:                                    ; preds = %139
  %148 = load i8*, i8** %25, align 8
  %149 = getelementptr i8, i8* %148, i64 8
  store i8* %149, i8** %25, align 8
  br label %150

; <label>:150:                                    ; preds = %147, %142
  %151 = phi i8* [ %145, %142 ], [ %148, %147 ]
  %152 = bitcast i8* %151 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %30, align 8, !tbaa !2
  store i8 19, i8* %31, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #9
  br label %285

; <label>:154:                                    ; preds = %35
  %155 = load i32, i32* %10, align 4, !tbaa !16
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 400, %156
  %158 = icmp ult i64 %157, 32
  br i1 %158, label %159, label %182

; <label>:159:                                    ; preds = %154
  %160 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !19
  %161 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %160, i64 0, i32 6
  %162 = bitcast %union.StackValue** %161 to %struct.TValue**
  %163 = load %struct.TValue*, %struct.TValue** %162, align 8, !tbaa !20
  %164 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %160, i8* nonnull %32, i64 %156) #9
  %165 = bitcast %struct.TValue* %163 to %struct.TString**
  store %struct.TString* %164, %struct.TString** %165, align 8, !tbaa !2
  %166 = getelementptr inbounds %struct.TString, %struct.TString* %164, i64 0, i32 1
  %167 = load i8, i8* %166, align 8, !tbaa !13
  %168 = or i8 %167, 64
  %169 = getelementptr inbounds %struct.TValue, %struct.TValue* %163, i64 0, i32 1
  store i8 %168, i8* %169, align 8, !tbaa !5
  %170 = load %union.StackValue*, %union.StackValue** %161, align 8, !tbaa !20
  %171 = getelementptr inbounds %union.StackValue, %union.StackValue* %170, i64 1
  store %union.StackValue* %171, %union.StackValue** %161, align 8, !tbaa !20
  %172 = load i32, i32* %11, align 8, !tbaa !18
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 8, !tbaa !18
  %174 = icmp sgt i32 %172, 0
  br i1 %174, label %175, label %181

; <label>:175:                                    ; preds = %159
  %176 = getelementptr inbounds %union.StackValue, %union.StackValue* %170, i64 3
  %177 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %160, i64 0, i32 10
  %178 = load %union.StackValue*, %union.StackValue** %177, align 8, !tbaa !25
  %179 = icmp ugt %union.StackValue* %176, %178
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %175
  call void @luaV_concat(%struct.lua_State* nonnull %160, i32 %173) #9
  store i32 1, i32* %11, align 8, !tbaa !18
  br label %181

; <label>:181:                                    ; preds = %180, %175, %159
  store i32 0, i32* %10, align 4, !tbaa !16
  br label %182

; <label>:182:                                    ; preds = %154, %181
  %183 = phi i32 [ 0, %181 ], [ %155, %154 ]
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 %184
  %186 = load i32, i32* %18, align 8
  %187 = icmp ult i32 %186, 41
  br i1 %187, label %188, label %193

; <label>:188:                                    ; preds = %182
  %189 = load i8*, i8** %24, align 8
  %190 = sext i32 %186 to i64
  %191 = getelementptr i8, i8* %189, i64 %190
  %192 = add i32 %186, 8
  store i32 %192, i32* %18, align 8
  br label %196

; <label>:193:                                    ; preds = %182
  %194 = load i8*, i8** %25, align 8
  %195 = getelementptr i8, i8* %194, i64 8
  store i8* %195, i8** %25, align 8
  br label %196

; <label>:196:                                    ; preds = %193, %188
  %197 = phi i8* [ %191, %188 ], [ %194, %193 ]
  %198 = bitcast i8* %197 to i8**
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %185, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %199) #9
  %201 = load i32, i32* %10, align 4, !tbaa !16
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %10, align 4, !tbaa !16
  br label %285

; <label>:203:                                    ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #9
  %204 = load i32, i32* %18, align 8
  %205 = icmp ult i32 %204, 41
  br i1 %205, label %206, label %211

; <label>:206:                                    ; preds = %203
  %207 = load i8*, i8** %24, align 8
  %208 = sext i32 %204 to i64
  %209 = getelementptr i8, i8* %207, i64 %208
  %210 = add i32 %204, 8
  store i32 %210, i32* %18, align 8
  br label %214

; <label>:211:                                    ; preds = %203
  %212 = load i8*, i8** %25, align 8
  %213 = getelementptr i8, i8* %212, i64 8
  store i8* %213, i8** %25, align 8
  br label %214

; <label>:214:                                    ; preds = %211, %206
  %215 = phi i8* [ %209, %206 ], [ %212, %211 ]
  %216 = bitcast i8* %215 to i64*
  %217 = load i64, i64* %216, align 8
  %218 = icmp ult i64 %217, 128
  br i1 %218, label %220, label %219

; <label>:219:                                    ; preds = %214
  br label %222

; <label>:220:                                    ; preds = %214
  %221 = trunc i64 %217 to i8
  store i8 %221, i8* %33, align 1, !tbaa !2
  br label %246

; <label>:222:                                    ; preds = %219, %222
  %223 = phi i64 [ %229, %222 ], [ 1, %219 ]
  %224 = phi i64 [ %232, %222 ], [ %217, %219 ]
  %225 = phi i32 [ %233, %222 ], [ 63, %219 ]
  %226 = trunc i64 %224 to i8
  %227 = and i8 %226, 63
  %228 = or i8 %227, -128
  %229 = add nuw i64 %223, 1
  %230 = sub nsw i64 8, %223
  %231 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %230
  store i8 %228, i8* %231, align 1, !tbaa !2
  %232 = lshr i64 %224, 6
  %233 = lshr i32 %225, 1
  %234 = zext i32 %233 to i64
  %235 = icmp ugt i64 %232, %234
  br i1 %235, label %222, label %236

; <label>:236:                                    ; preds = %222
  %237 = and i32 %225, 254
  %238 = xor i32 %237, 254
  %239 = zext i32 %238 to i64
  %240 = or i64 %232, %239
  %241 = trunc i64 %240 to i8
  %242 = shl i64 %223, 32
  %243 = sub i64 30064771072, %242
  %244 = ashr exact i64 %243, 32
  %245 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %244
  store i8 %241, i8* %245, align 1, !tbaa !2
  br label %246

; <label>:246:                                    ; preds = %220, %236
  %247 = phi i64 [ 1, %220 ], [ %229, %236 ]
  %248 = shl i64 %247, 32
  %249 = ashr exact i64 %248, 32
  %250 = sub nsw i64 0, %249
  %251 = getelementptr inbounds i8, i8* %34, i64 %250
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* nonnull %251, i64 %249)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #9
  br label %285

; <label>:252:                                    ; preds = %35
  %253 = load i32, i32* %10, align 4, !tbaa !16
  %254 = icmp eq i32 %253, 400
  br i1 %254, label %255, label %278

; <label>:255:                                    ; preds = %252
  %256 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !19
  %257 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %256, i64 0, i32 6
  %258 = bitcast %union.StackValue** %257 to %struct.TValue**
  %259 = load %struct.TValue*, %struct.TValue** %258, align 8, !tbaa !20
  %260 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %256, i8* nonnull %32, i64 400) #9
  %261 = bitcast %struct.TValue* %259 to %struct.TString**
  store %struct.TString* %260, %struct.TString** %261, align 8, !tbaa !2
  %262 = getelementptr inbounds %struct.TString, %struct.TString* %260, i64 0, i32 1
  %263 = load i8, i8* %262, align 8, !tbaa !13
  %264 = or i8 %263, 64
  %265 = getelementptr inbounds %struct.TValue, %struct.TValue* %259, i64 0, i32 1
  store i8 %264, i8* %265, align 8, !tbaa !5
  %266 = load %union.StackValue*, %union.StackValue** %257, align 8, !tbaa !20
  %267 = getelementptr inbounds %union.StackValue, %union.StackValue* %266, i64 1
  store %union.StackValue* %267, %union.StackValue** %257, align 8, !tbaa !20
  %268 = load i32, i32* %11, align 8, !tbaa !18
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %11, align 8, !tbaa !18
  %270 = icmp sgt i32 %268, 0
  br i1 %270, label %271, label %277

; <label>:271:                                    ; preds = %255
  %272 = getelementptr inbounds %union.StackValue, %union.StackValue* %266, i64 3
  %273 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %256, i64 0, i32 10
  %274 = load %union.StackValue*, %union.StackValue** %273, align 8, !tbaa !25
  %275 = icmp ugt %union.StackValue* %272, %274
  br i1 %275, label %276, label %277

; <label>:276:                                    ; preds = %271
  call void @luaV_concat(%struct.lua_State* nonnull %256, i32 %269) #9
  store i32 1, i32* %11, align 8, !tbaa !18
  br label %277

; <label>:277:                                    ; preds = %276, %271, %255
  store i32 0, i32* %10, align 4, !tbaa !16
  br label %278

; <label>:278:                                    ; preds = %252, %277
  %279 = phi i32 [ 0, %277 ], [ %253, %252 ]
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 %280
  store i8 37, i8* %281, align 1
  %282 = add i32 %279, 1
  store i32 %282, i32* %10, align 4, !tbaa !16
  br label %285

; <label>:283:                                    ; preds = %35
  %284 = sext i8 %42 to i32
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %284) #12
  unreachable

; <label>:285:                                    ; preds = %278, %246, %196, %150, %135, %119, %103, %55
  %286 = getelementptr inbounds i8, i8* %36, i64 2
  %287 = call i8* @strchr(i8* nonnull %286, i32 37) #11
  %288 = icmp eq i8* %287, null
  br i1 %288, label %289, label %35

; <label>:289:                                    ; preds = %285, %15
  %290 = phi i8* [ %16, %15 ], [ %32, %285 ]
  %291 = phi i8* [ %1, %15 ], [ %286, %285 ]
  %292 = call i64 @strlen(i8* %291) #11
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %291, i64 %292)
  %293 = load i32, i32* %10, align 4, !tbaa !16
  %294 = sext i32 %293 to i64
  %295 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !tbaa !19
  %296 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %295, i64 0, i32 6
  %297 = bitcast %union.StackValue** %296 to %struct.TValue**
  %298 = load %struct.TValue*, %struct.TValue** %297, align 8, !tbaa !20
  %299 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %295, i8* nonnull %290, i64 %294) #9
  %300 = bitcast %struct.TValue* %298 to %struct.TString**
  store %struct.TString* %299, %struct.TString** %300, align 8, !tbaa !2
  %301 = getelementptr inbounds %struct.TString, %struct.TString* %299, i64 0, i32 1
  %302 = load i8, i8* %301, align 8, !tbaa !13
  %303 = or i8 %302, 64
  %304 = getelementptr inbounds %struct.TValue, %struct.TValue* %298, i64 0, i32 1
  store i8 %303, i8* %304, align 8, !tbaa !5
  %305 = load %union.StackValue*, %union.StackValue** %296, align 8, !tbaa !20
  %306 = getelementptr inbounds %union.StackValue, %union.StackValue* %305, i64 1
  store %union.StackValue* %306, %union.StackValue** %296, align 8, !tbaa !20
  %307 = load i32, i32* %11, align 8, !tbaa !18
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %11, align 8, !tbaa !18
  %309 = icmp sgt i32 %307, 0
  br i1 %309, label %310, label %316

; <label>:310:                                    ; preds = %289
  %311 = getelementptr inbounds %union.StackValue, %union.StackValue* %305, i64 3
  %312 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %295, i64 0, i32 10
  %313 = load %union.StackValue*, %union.StackValue** %312, align 8, !tbaa !25
  %314 = icmp ugt %union.StackValue* %311, %313
  br i1 %314, label %315, label %317

; <label>:315:                                    ; preds = %310
  call void @luaV_concat(%struct.lua_State* nonnull %295, i32 %308) #9
  store i32 1, i32* %11, align 8, !tbaa !18
  store i32 0, i32* %10, align 4, !tbaa !16
  br label %318

; <label>:316:                                    ; preds = %289
  store i32 0, i32* %10, align 4, !tbaa !16
  br label %318

; <label>:317:                                    ; preds = %310
  store i32 0, i32* %10, align 4, !tbaa !16
  call void @luaV_concat(%struct.lua_State* %0, i32 %308) #9
  br label %318

; <label>:318:                                    ; preds = %316, %315, %317
  %319 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %320 = load %union.StackValue*, %union.StackValue** %319, align 8, !tbaa !20
  %321 = getelementptr inbounds %union.StackValue, %union.StackValue* %320, i64 -1, i32 0, i32 0, i32 0
  %322 = bitcast %struct.GCObject** %321 to i8**
  %323 = load i8*, i8** %322, align 8, !tbaa !2
  %324 = getelementptr inbounds i8, i8* %323, i64 24
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %9) #9
  ret i8* %324
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @addstr2buff(%struct.BuffFS*, i8*, i64) unnamed_addr #2 {
  %4 = icmp ult i64 %2, 401
  br i1 %4, label %5, label %44

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !16
  %8 = sext i32 %7 to i64
  %9 = sub nsw i64 400, %8
  %10 = icmp ult i64 %9, %2
  br i1 %10, label %11, label %37

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 0
  %13 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 0
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i64 0, i32 6
  %16 = bitcast %union.StackValue** %15 to %struct.TValue**
  %17 = load %struct.TValue*, %struct.TValue** %16, align 8, !tbaa !20
  %18 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %14, i8* nonnull %12, i64 %8) #9
  %19 = bitcast %struct.TValue* %17 to %struct.TString**
  store %struct.TString* %18, %struct.TString** %19, align 8, !tbaa !2
  %20 = getelementptr inbounds %struct.TString, %struct.TString* %18, i64 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !13
  %22 = or i8 %21, 64
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i64 0, i32 1
  store i8 %22, i8* %23, align 8, !tbaa !5
  %24 = load %union.StackValue*, %union.StackValue** %15, align 8, !tbaa !20
  %25 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 1
  store %union.StackValue* %25, %union.StackValue** %15, align 8, !tbaa !20
  %26 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 1
  %27 = load i32, i32* %26, align 8, !tbaa !18
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8, !tbaa !18
  %29 = icmp sgt i32 %27, 0
  br i1 %29, label %30, label %36

; <label>:30:                                     ; preds = %11
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %24, i64 3
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i64 0, i32 10
  %33 = load %union.StackValue*, %union.StackValue** %32, align 8, !tbaa !25
  %34 = icmp ugt %union.StackValue* %31, %33
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %30
  tail call void @luaV_concat(%struct.lua_State* nonnull %14, i32 %28) #9
  store i32 1, i32* %26, align 8, !tbaa !18
  br label %36

; <label>:36:                                     ; preds = %35, %30, %11
  store i32 0, i32* %6, align 4, !tbaa !16
  br label %37

; <label>:37:                                     ; preds = %5, %36
  %38 = phi i32 [ 0, %36 ], [ %7, %5 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 %39
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %40, i8* %1, i64 %2, i32 1, i1 false)
  %41 = load i32, i32* %6, align 4, !tbaa !16
  %42 = trunc i64 %2 to i32
  %43 = add i32 %41, %42
  store i32 %43, i32* %6, align 4, !tbaa !16
  br label %94

; <label>:44:                                     ; preds = %3
  %45 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 0
  %46 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %47 = load i32, i32* %46, align 4, !tbaa !16
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 0
  %50 = load %struct.lua_State*, %struct.lua_State** %49, align 8, !tbaa !19
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i64 0, i32 6
  %52 = bitcast %union.StackValue** %51 to %struct.TValue**
  %53 = load %struct.TValue*, %struct.TValue** %52, align 8, !tbaa !20
  %54 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %50, i8* nonnull %45, i64 %48) #9
  %55 = bitcast %struct.TValue* %53 to %struct.TString**
  store %struct.TString* %54, %struct.TString** %55, align 8, !tbaa !2
  %56 = getelementptr inbounds %struct.TString, %struct.TString* %54, i64 0, i32 1
  %57 = load i8, i8* %56, align 8, !tbaa !13
  %58 = or i8 %57, 64
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %53, i64 0, i32 1
  store i8 %58, i8* %59, align 8, !tbaa !5
  %60 = load %union.StackValue*, %union.StackValue** %51, align 8, !tbaa !20
  %61 = getelementptr inbounds %union.StackValue, %union.StackValue* %60, i64 1
  store %union.StackValue* %61, %union.StackValue** %51, align 8, !tbaa !20
  %62 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 1
  %63 = load i32, i32* %62, align 8, !tbaa !18
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8, !tbaa !18
  %65 = icmp sgt i32 %63, 0
  br i1 %65, label %66, label %72

; <label>:66:                                     ; preds = %44
  %67 = getelementptr inbounds %union.StackValue, %union.StackValue* %60, i64 3
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i64 0, i32 10
  %69 = load %union.StackValue*, %union.StackValue** %68, align 8, !tbaa !25
  %70 = icmp ugt %union.StackValue* %67, %69
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %66
  tail call void @luaV_concat(%struct.lua_State* nonnull %50, i32 %64) #9
  store i32 1, i32* %62, align 8, !tbaa !18
  br label %72

; <label>:72:                                     ; preds = %44, %66, %71
  store i32 0, i32* %46, align 4, !tbaa !16
  %73 = load %struct.lua_State*, %struct.lua_State** %49, align 8, !tbaa !19
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i64 0, i32 6
  %75 = bitcast %union.StackValue** %74 to %struct.TValue**
  %76 = load %struct.TValue*, %struct.TValue** %75, align 8, !tbaa !20
  %77 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %73, i8* %1, i64 %2) #9
  %78 = bitcast %struct.TValue* %76 to %struct.TString**
  store %struct.TString* %77, %struct.TString** %78, align 8, !tbaa !2
  %79 = getelementptr inbounds %struct.TString, %struct.TString* %77, i64 0, i32 1
  %80 = load i8, i8* %79, align 8, !tbaa !13
  %81 = or i8 %80, 64
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %76, i64 0, i32 1
  store i8 %81, i8* %82, align 8, !tbaa !5
  %83 = load %union.StackValue*, %union.StackValue** %74, align 8, !tbaa !20
  %84 = getelementptr inbounds %union.StackValue, %union.StackValue* %83, i64 1
  store %union.StackValue* %84, %union.StackValue** %74, align 8, !tbaa !20
  %85 = load i32, i32* %62, align 8, !tbaa !18
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %62, align 8, !tbaa !18
  %87 = icmp sgt i32 %85, 0
  br i1 %87, label %88, label %94

; <label>:88:                                     ; preds = %72
  %89 = getelementptr inbounds %union.StackValue, %union.StackValue* %83, i64 3
  %90 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i64 0, i32 10
  %91 = load %union.StackValue*, %union.StackValue** %90, align 8, !tbaa !25
  %92 = icmp ugt %union.StackValue* %89, %91
  br i1 %92, label %93, label %94

; <label>:93:                                     ; preds = %88
  tail call void @luaV_concat(%struct.lua_State* nonnull %73, i32 %86) #9
  store i32 1, i32* %62, align 8, !tbaa !18
  br label %94

; <label>:94:                                     ; preds = %93, %88, %72, %37
  ret void
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @addnum2buff(%struct.BuffFS*, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !16
  %5 = sext i32 %4 to i64
  %6 = sub nsw i64 400, %5
  %7 = icmp ult i64 %6, 50
  br i1 %7, label %8, label %34

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 0
  %10 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 0
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i64 0, i32 6
  %13 = bitcast %union.StackValue** %12 to %struct.TValue**
  %14 = load %struct.TValue*, %struct.TValue** %13, align 8, !tbaa !20
  %15 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %11, i8* nonnull %9, i64 %5) #9
  %16 = bitcast %struct.TValue* %14 to %struct.TString**
  store %struct.TString* %15, %struct.TString** %16, align 8, !tbaa !2
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %15, i64 0, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !13
  %19 = or i8 %18, 64
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %14, i64 0, i32 1
  store i8 %19, i8* %20, align 8, !tbaa !5
  %21 = load %union.StackValue*, %union.StackValue** %12, align 8, !tbaa !20
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 1
  store %union.StackValue* %22, %union.StackValue** %12, align 8, !tbaa !20
  %23 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 1
  %24 = load i32, i32* %23, align 8, !tbaa !18
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8, !tbaa !18
  %26 = icmp sgt i32 %24, 0
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %8
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %21, i64 3
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %11, i64 0, i32 10
  %30 = load %union.StackValue*, %union.StackValue** %29, align 8, !tbaa !25
  %31 = icmp ugt %union.StackValue* %28, %30
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %27
  tail call void @luaV_concat(%struct.lua_State* nonnull %11, i32 %25) #9
  store i32 1, i32* %23, align 8, !tbaa !18
  br label %33

; <label>:33:                                     ; preds = %32, %27, %8
  store i32 0, i32* %3, align 4, !tbaa !16
  br label %34

; <label>:34:                                     ; preds = %2, %33
  %35 = phi i32 [ 0, %33 ], [ %4, %2 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 %36
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %39 = load i8, i8* %38, align 8, !tbaa !5
  %40 = icmp eq i8 %39, 35
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %34
  %42 = bitcast %struct.TValue* %1 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !2
  %44 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %37, i64 50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %43) #9
  br label %63

; <label>:45:                                     ; preds = %34
  %46 = bitcast %struct.TValue* %1 to double*
  %47 = load double, double* %46, align 8, !tbaa !2
  %48 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %37, i64 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double %47) #9
  %49 = sext i32 %48 to i64
  %50 = tail call i64 @strspn(i8* nonnull %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #11
  %51 = getelementptr inbounds i8, i8* %37, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %63

; <label>:54:                                     ; preds = %45
  %55 = tail call %struct.lconv* @localeconv() #9
  %56 = getelementptr inbounds %struct.lconv, %struct.lconv* %55, i64 0, i32 0
  %57 = load i8*, i8** %56, align 8, !tbaa !11
  %58 = load i8, i8* %57, align 1, !tbaa !2
  %59 = add nsw i64 %49, 1
  %60 = getelementptr inbounds i8, i8* %37, i64 %49
  store i8 %58, i8* %60, align 1, !tbaa !2
  %61 = add i32 %48, 2
  %62 = getelementptr inbounds i8, i8* %37, i64 %59
  store i8 48, i8* %62, align 1, !tbaa !2
  br label %63

; <label>:63:                                     ; preds = %41, %45, %54
  %64 = phi i32 [ %44, %41 ], [ %61, %54 ], [ %48, %45 ]
  %65 = load i32, i32* %3, align 4, !tbaa !16
  %66 = add i32 %65, %64
  store i32 %66, i32* %3, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #8

declare hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden nonnull i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %6 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %5)
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9
  ret i8* %6
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind uwtable
define hidden void @luaO_chunkid(i8* nocapture, i8*, i64) local_unnamed_addr #2 {
  %4 = load i8, i8* %1, align 1, !tbaa !2
  switch i8 %4, label %20 [
    i8 61, label %5
    i8 64, label %11
  ]

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i64 %2, 61
  %7 = getelementptr inbounds i8, i8* %1, i64 1
  br i1 %6, label %8, label %9

; <label>:8:                                      ; preds = %5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* nonnull %7, i64 %2, i32 1, i1 false)
  br label %39

; <label>:9:                                      ; preds = %5
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* nonnull %7, i64 59, i32 1, i1 false)
  %10 = getelementptr inbounds i8, i8* %0, i64 59
  store i8 0, i8* %10, align 1, !tbaa !2
  br label %39

; <label>:11:                                     ; preds = %3
  %12 = icmp ult i64 %2, 61
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds i8, i8* %1, i64 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* nonnull %14, i64 %2, i32 1, i1 false)
  br label %39

; <label>:15:                                     ; preds = %11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 3, i32 1, i1 false)
  %16 = getelementptr inbounds i8, i8* %0, i64 3
  %17 = getelementptr inbounds i8, i8* %1, i64 1
  %18 = getelementptr inbounds i8, i8* %17, i64 %2
  %19 = getelementptr inbounds i8, i8* %18, i64 -57
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %16, i8* nonnull %19, i64 57, i32 1, i1 false)
  br label %39

; <label>:20:                                     ; preds = %3
  %21 = tail call i8* @strchr(i8* nonnull %1, i32 10) #11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 9, i32 1, i1 false)
  %22 = getelementptr inbounds i8, i8* %0, i64 9
  %23 = icmp ult i64 %2, 45
  %24 = icmp eq i8* %21, null
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %20
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %22, i8* nonnull %1, i64 %2, i32 1, i1 false)
  %27 = getelementptr inbounds i8, i8* %22, i64 %2
  br label %37

; <label>:28:                                     ; preds = %20
  %29 = ptrtoint i8* %21 to i64
  %30 = ptrtoint i8* %1 to i64
  %31 = sub i64 %29, %30
  %32 = select i1 %24, i64 %2, i64 %31
  %33 = icmp ult i64 %32, 45
  %34 = select i1 %33, i64 %32, i64 45
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %22, i8* nonnull %1, i64 %34, i32 1, i1 false)
  %35 = getelementptr inbounds i8, i8* %22, i64 %34
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 3, i32 1, i1 false)
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  br label %37

; <label>:37:                                     ; preds = %28, %26
  %38 = phi i8* [ %27, %26 ], [ %36, %28 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 3, i32 1, i1 false)
  br label %39

; <label>:39:                                     ; preds = %37, %15, %13, %8, %9
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

declare hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) local_unnamed_addr #3

declare hidden i64 @luaV_idiv(%struct.lua_State*, i64, i64) local_unnamed_addr #3

declare hidden i64 @luaV_shiftl(i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare double @llvm.pow.f64(double, double) #10

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #10

declare hidden double @luaV_modf(%struct.lua_State*, double, double) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #7

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #7

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone speculatable }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !3, i64 8}
!6 = !{!"TValue", !3, i64 0, !3, i64 8}
!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !3, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"lconv", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !3, i64 80, !3, i64 81, !3, i64 82, !3, i64 83, !3, i64 84, !3, i64 85, !3, i64 86, !3, i64 87, !3, i64 88, !3, i64 89, !3, i64 90, !3, i64 91, !3, i64 92, !3, i64 93}
!13 = !{!14, !3, i64 8}
!14 = !{!"TString", !10, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !15, i64 12, !3, i64 16}
!15 = !{!"int", !3, i64 0}
!16 = !{!17, !15, i64 12}
!17 = !{!"BuffFS", !10, i64 0, !15, i64 8, !15, i64 12, !3, i64 16}
!18 = !{!17, !15, i64 8}
!19 = !{!17, !10, i64 0}
!20 = !{!21, !10, i64 16}
!21 = !{!"lua_State", !10, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !22, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !23, i64 96, !10, i64 160, !24, i64 168, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192}
!22 = !{!"short", !3, i64 0}
!23 = !{!"CallInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !3, i64 32, !3, i64 56, !22, i64 60, !22, i64 62}
!24 = !{!"long", !3, i64 0}
!25 = !{!21, !10, i64 48}
