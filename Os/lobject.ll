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
@.str.2 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"invalid option '%%%c' to 'lua_pushfstring'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c".xXnN\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1

; Function Attrs: norecurse nounwind optsize readnone uwtable
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

; Function Attrs: norecurse nounwind optsize readnone uwtable
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

; Function Attrs: norecurse nounwind optsize readnone uwtable
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

; Function Attrs: nounwind optsize uwtable
define hidden i32 @luaO_rawarith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %struct.TValue* nocapture) local_unnamed_addr #2 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  switch i32 %1, label %66 [
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
  %18 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2, i64* nonnull %6, i32 0) #11
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
  %28 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %3, i64* nonnull %7, i32 0) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* %7, align 8, !tbaa !7
  br label %32

; <label>:32:                                     ; preds = %30, %24
  %33 = phi i64 [ %31, %30 ], [ %26, %24 ]
  %34 = load i64, i64* %6, align 8, !tbaa !7
  %35 = call fastcc i64 @intarith(%struct.lua_State* %0, i32 %1, i64 %34, i64 %33) #12
  %36 = bitcast %struct.TValue* %4 to i64*
  store i64 %35, i64* %36, align 8, !tbaa !2
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %37, align 8, !tbaa !5
  br label %38

; <label>:38:                                     ; preds = %17, %27, %32
  %39 = phi i32 [ 1, %32 ], [ 0, %27 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  br label %103

; <label>:40:                                     ; preds = %5, %5
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %42 = load i8, i8* %41, align 8, !tbaa !5
  switch i8 %42, label %103 [
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
  switch i8 %53, label %103 [
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
  %63 = tail call fastcc double @numarith(%struct.lua_State* %0, i32 %1, double %51, double %62) #12
  %64 = bitcast %struct.TValue* %4 to double*
  store double %63, double* %64, align 8, !tbaa !2
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %65, align 8, !tbaa !5
  br label %103

; <label>:66:                                     ; preds = %5
  %67 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %68 = load i8, i8* %67, align 8, !tbaa !5
  switch i8 %68, label %103 [
    i8 35, label %69
    i8 19, label %81
  ]

; <label>:69:                                     ; preds = %66
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %71 = load i8, i8* %70, align 8, !tbaa !5
  %72 = icmp eq i8 %71, 35
  %73 = bitcast %struct.TValue* %2 to i64*
  %74 = load i64, i64* %73, align 8, !tbaa !2
  br i1 %72, label %75, label %86

; <label>:75:                                     ; preds = %69
  %76 = bitcast %struct.TValue* %3 to i64*
  %77 = load i64, i64* %76, align 8, !tbaa !2
  %78 = tail call fastcc i64 @intarith(%struct.lua_State* %0, i32 %1, i64 %74, i64 %77) #12
  %79 = bitcast %struct.TValue* %4 to i64*
  store i64 %78, i64* %79, align 8, !tbaa !2
  %80 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %80, align 8, !tbaa !5
  br label %103

; <label>:81:                                     ; preds = %66
  %82 = bitcast %struct.TValue* %2 to double*
  %83 = load double, double* %82, align 8, !tbaa !2
  %84 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !5
  br label %88

; <label>:86:                                     ; preds = %69
  %87 = sitofp i64 %74 to double
  br label %88

; <label>:88:                                     ; preds = %81, %86
  %89 = phi i8 [ %85, %81 ], [ %71, %86 ]
  %90 = phi double [ %83, %81 ], [ %87, %86 ]
  switch i8 %89, label %103 [
    i8 19, label %91
    i8 35, label %94
  ]

; <label>:91:                                     ; preds = %88
  %92 = bitcast %struct.TValue* %3 to double*
  %93 = load double, double* %92, align 8, !tbaa !2
  br label %98

; <label>:94:                                     ; preds = %88
  %95 = bitcast %struct.TValue* %3 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !2
  %97 = sitofp i64 %96 to double
  br label %98

; <label>:98:                                     ; preds = %91, %94
  %99 = phi double [ %93, %91 ], [ %97, %94 ]
  %100 = tail call fastcc double @numarith(%struct.lua_State* %0, i32 %1, double %90, double %99) #12
  %101 = bitcast %struct.TValue* %4 to double*
  store double %100, double* %101, align 8, !tbaa !2
  %102 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %102, align 8, !tbaa !5
  br label %103

; <label>:103:                                    ; preds = %66, %75, %98, %88, %61, %50, %40, %38
  %104 = phi i32 [ %39, %38 ], [ 1, %61 ], [ 0, %50 ], [ 0, %40 ], [ 1, %75 ], [ 1, %98 ], [ 0, %88 ], [ 0, %66 ]
  ret i32 %104
}

; Function Attrs: optsize
declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
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
  %12 = tail call i64 @luaV_mod(%struct.lua_State* %0, i64 %2, i64 %3) #11
  br label %30

; <label>:13:                                     ; preds = %4
  %14 = tail call i64 @luaV_idiv(%struct.lua_State* %0, i64 %2, i64 %3) #11
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
  %22 = tail call i64 @luaV_shiftl(i64 %2, i64 %3) #11
  br label %30

; <label>:23:                                     ; preds = %4
  %24 = sub nsw i64 0, %3
  %25 = tail call i64 @luaV_shiftl(i64 %2, i64 %24) #11
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

; Function Attrs: nounwind optsize uwtable
define internal fastcc double @numarith(%struct.lua_State*, i32, double, double) unnamed_addr #2 {
  switch i32 %1, label %22 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 5, label %11
    i32 4, label %13
    i32 6, label %15
    i32 12, label %18
    i32 3, label %20
  ]

; <label>:5:                                      ; preds = %4
  %6 = fadd double %2, %3
  br label %22

; <label>:7:                                      ; preds = %4
  %8 = fsub double %2, %3
  br label %22

; <label>:9:                                      ; preds = %4
  %10 = fmul double %2, %3
  br label %22

; <label>:11:                                     ; preds = %4
  %12 = fdiv double %2, %3
  br label %22

; <label>:13:                                     ; preds = %4
  %14 = tail call double @pow(double %2, double %3) #11
  br label %22

; <label>:15:                                     ; preds = %4
  %16 = fdiv double %2, %3
  %17 = tail call double @llvm.floor.f64(double %16)
  br label %22

; <label>:18:                                     ; preds = %4
  %19 = fsub double -0.000000e+00, %2
  br label %22

; <label>:20:                                     ; preds = %4
  %21 = tail call double @luaV_modf(%struct.lua_State* %0, double %2, double %3) #11
  br label %22

; <label>:22:                                     ; preds = %4, %20, %18, %15, %13, %11, %9, %7, %5
  %23 = phi double [ %21, %20 ], [ %19, %18 ], [ %17, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ 0.000000e+00, %4 ]
  ret double %23
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaO_arith(%struct.lua_State*, i32, %struct.TValue*, %struct.TValue*, %union.StackValue*) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 0, i32 0
  %7 = tail call i32 @luaO_rawarith(%struct.lua_State* %0, i32 %1, %struct.TValue* %2, %struct.TValue* %3, %struct.TValue* %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %5
  %10 = add nsw i32 %1, 6
  tail call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2, %struct.TValue* %3, %union.StackValue* %4, i32 %10) #11
  br label %11

; <label>:11:                                     ; preds = %5, %9
  ret void
}

; Function Attrs: optsize
declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) local_unnamed_addr #3

; Function Attrs: norecurse nounwind optsize readnone uwtable
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

; Function Attrs: nounwind optsize uwtable
define hidden i64 @luaO_str2num(i8*, %struct.TValue* nocapture) local_unnamed_addr #2 {
  %3 = alloca [201 x i8], align 16
  %4 = alloca double, align 8
  %5 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
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
  br i1 %82, label %126, label %83

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
  br i1 %121, label %126, label %122

; <label>:122:                                    ; preds = %114
  %123 = icmp eq i32 %21, 0
  %124 = sub i64 0, %100
  %125 = select i1 %123, i64 %100, i64 %124
  br label %166

; <label>:126:                                    ; preds = %79, %114
  %127 = tail call i8* @strpbrk(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #13
  %128 = icmp eq i8* %127, null
  br i1 %128, label %133, label %129

; <label>:129:                                    ; preds = %126
  %130 = load i8, i8* %127, align 1, !tbaa !2
  %131 = or i8 %130, 32
  %132 = icmp eq i8 %131, 110
  br i1 %132, label %176, label %133

; <label>:133:                                    ; preds = %129, %126
  %134 = call fastcc i8* @l_str2dloc(i8* %0, double* nonnull %4) #11
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %162

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds [201 x i8], [201 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 201, i8* nonnull %137) #9
  %138 = tail call i8* @strchr(i8* %0, i32 46) #13
  %139 = tail call i64 @strlen(i8* %0) #13
  %140 = icmp ugt i64 %139, 200
  %141 = icmp eq i8* %138, null
  %142 = or i1 %141, %140
  br i1 %142, label %161, label %143

; <label>:143:                                    ; preds = %136
  %144 = call i8* @strcpy(i8* nonnull %137, i8* %0) #11
  %145 = call %struct.lconv* @localeconv() #11
  %146 = getelementptr inbounds %struct.lconv, %struct.lconv* %145, i64 0, i32 0
  %147 = load i8*, i8** %146, align 8, !tbaa !9
  %148 = load i8, i8* %147, align 1, !tbaa !2
  %149 = ptrtoint i8* %138 to i64
  %150 = ptrtoint i8* %0 to i64
  %151 = sub i64 %149, %150
  %152 = getelementptr inbounds [201 x i8], [201 x i8]* %3, i64 0, i64 %151
  store i8 %148, i8* %152, align 1, !tbaa !2
  %153 = call fastcc i8* @l_str2dloc(i8* nonnull %137, double* nonnull %4) #11
  %154 = icmp eq i8* %153, null
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint [201 x i8]* %3 to i64
  %157 = sub i64 %155, %156
  %158 = getelementptr inbounds i8, i8* %0, i64 %157
  call void @llvm.lifetime.end.p0i8(i64 201, i8* nonnull %137) #9
  %159 = icmp eq i8* %158, null
  %160 = or i1 %154, %159
  br i1 %160, label %176, label %162

; <label>:161:                                    ; preds = %136
  call void @llvm.lifetime.end.p0i8(i64 201, i8* nonnull %137) #9
  br label %176

; <label>:162:                                    ; preds = %143, %133
  %163 = phi i8* [ %134, %133 ], [ %158, %143 ]
  %164 = bitcast double* %4 to i64*
  %165 = load i64, i64* %164, align 8, !tbaa !12
  br label %166

; <label>:166:                                    ; preds = %162, %122
  %167 = phi i64 [ %165, %162 ], [ %125, %122 ]
  %168 = phi i8 [ 19, %162 ], [ 35, %122 ]
  %169 = phi i8* [ %163, %162 ], [ %116, %122 ]
  %170 = bitcast %struct.TValue* %1 to i64*
  store i64 %167, i64* %170, align 8, !tbaa !2
  %171 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  store i8 %168, i8* %171, align 8, !tbaa !5
  %172 = ptrtoint i8* %169 to i64
  %173 = ptrtoint i8* %0 to i64
  %174 = sub i64 1, %173
  %175 = add i64 %174, %172
  br label %176

; <label>:176:                                    ; preds = %143, %129, %161, %166
  %177 = phi i64 [ %175, %166 ], [ 0, %161 ], [ 0, %129 ], [ 0, %143 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  ret i64 %177
}

; Function Attrs: norecurse nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
define hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue* nocapture) local_unnamed_addr #2 {
  %3 = alloca [50 x i8], align 16
  %4 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 50, i8* nonnull %4) #9
  %5 = call fastcc i64 @tostringbuff(%struct.TValue* %1, i8* nonnull %4) #12
  %6 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %4, i64 %5) #11
  %7 = bitcast %struct.TValue* %1 to %struct.TString**
  store %struct.TString* %6, %struct.TString** %7, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.TString, %struct.TString* %6, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !14
  %10 = or i8 %9, 64
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  store i8 %10, i8* %11, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @tostringbuff(%struct.TValue* nocapture readonly, i8* nocapture) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !5
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.TValue* %0 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !2
  %9 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %8) #11
  %10 = sext i32 %9 to i64
  br label %29

; <label>:11:                                     ; preds = %2
  %12 = bitcast %struct.TValue* %0 to double*
  %13 = load double, double* %12, align 8, !tbaa !2
  %14 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double %13) #11
  %15 = sext i32 %14 to i64
  %16 = tail call i64 @strspn(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #13
  %17 = getelementptr inbounds i8, i8* %1, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %11
  %21 = tail call %struct.lconv* @localeconv() #11
  %22 = getelementptr inbounds %struct.lconv, %struct.lconv* %21, i64 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !9
  %24 = load i8, i8* %23, align 1, !tbaa !2
  %25 = add nsw i64 %15, 1
  %26 = getelementptr inbounds i8, i8* %1, i64 %15
  store i8 %24, i8* %26, align 1, !tbaa !2
  %27 = add nsw i64 %15, 2
  %28 = getelementptr inbounds i8, i8* %1, i64 %25
  store i8 48, i8* %28, align 1, !tbaa !2
  br label %29

; <label>:29:                                     ; preds = %11, %20, %6
  %30 = phi i64 [ %10, %6 ], [ %27, %20 ], [ %15, %11 ]
  ret i64 %30
}

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define hidden nonnull i8* @luaO_pushvfstring(%struct.lua_State*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2 {
  %4 = alloca %struct.BuffFS, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = alloca [8 x i8], align 1
  %10 = bitcast %struct.BuffFS* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 416, i8* nonnull %10) #9
  %11 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 2
  store i32 0, i32* %11, align 4, !tbaa !17
  %12 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 1
  store i32 0, i32* %12, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %13, align 8, !tbaa !20
  %14 = call i8* @strchr(i8* %1, i32 37) #13
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 0
  br label %216

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %20 = bitcast %struct.TValue* %6 to i8*
  %21 = bitcast %struct.TValue* %7 to i8*
  %22 = bitcast %struct.TValue* %8 to i8*
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %27 = bitcast %struct.TValue* %6 to i64*
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %29 = bitcast %struct.TValue* %7 to i64*
  %30 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %31 = bitcast %struct.TValue* %8 to i64*
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  %33 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 0
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 8
  br label %35

; <label>:35:                                     ; preds = %18, %212
  %36 = phi i8* [ %14, %18 ], [ %214, %212 ]
  %37 = phi i8* [ %1, %18 ], [ %213, %212 ]
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %37, i64 %40) #12
  %41 = getelementptr inbounds i8, i8* %36, i64 1
  %42 = load i8, i8* %41, align 1, !tbaa !2
  %43 = sext i8 %42 to i32
  switch i32 %43, label %210 [
    i32 115, label %44
    i32 99, label %62
    i32 100, label %78
    i32 73, label %107
    i32 102, label %135
    i32 112, label %163
    i32 85, label %190
    i32 37, label %209
  ]

; <label>:44:                                     ; preds = %35
  %45 = load i32, i32* %19, align 8
  %46 = icmp ult i32 %45, 41
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %25, align 8
  %49 = sext i32 %45 to i64
  %50 = getelementptr i8, i8* %48, i64 %49
  %51 = add i32 %45, 8
  store i32 %51, i32* %19, align 8
  br label %55

; <label>:52:                                     ; preds = %44
  %53 = load i8*, i8** %26, align 8
  %54 = getelementptr i8, i8* %53, i64 8
  store i8* %54, i8** %26, align 8
  br label %55

; <label>:55:                                     ; preds = %52, %47
  %56 = phi i8* [ %50, %47 ], [ %53, %52 ]
  %57 = bitcast i8* %56 to i8**
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  %60 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %58
  %61 = call i64 @strlen(i8* %60) #13
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %60, i64 %61) #12
  br label %212

; <label>:62:                                     ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #9
  %63 = load i32, i32* %19, align 8
  %64 = icmp ult i32 %63, 41
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %62
  %66 = load i8*, i8** %25, align 8
  %67 = sext i32 %63 to i64
  %68 = getelementptr i8, i8* %66, i64 %67
  %69 = add i32 %63, 8
  store i32 %69, i32* %19, align 8
  br label %73

; <label>:70:                                     ; preds = %62
  %71 = load i8*, i8** %26, align 8
  %72 = getelementptr i8, i8* %71, i64 8
  store i8* %72, i8** %26, align 8
  br label %73

; <label>:73:                                     ; preds = %70, %65
  %74 = phi i8* [ %68, %65 ], [ %71, %70 ]
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %5, align 1, !tbaa !2
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* nonnull %5, i64 1) #12
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #9
  br label %212

; <label>:78:                                     ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #9
  %79 = load i32, i32* %19, align 8
  %80 = icmp ult i32 %79, 41
  br i1 %80, label %81, label %86

; <label>:81:                                     ; preds = %78
  %82 = load i8*, i8** %25, align 8
  %83 = sext i32 %79 to i64
  %84 = getelementptr i8, i8* %82, i64 %83
  %85 = add i32 %79, 8
  store i32 %85, i32* %19, align 8
  br label %89

; <label>:86:                                     ; preds = %78
  %87 = load i8*, i8** %26, align 8
  %88 = getelementptr i8, i8* %87, i64 8
  store i8* %88, i8** %26, align 8
  br label %89

; <label>:89:                                     ; preds = %86, %81
  %90 = phi i8* [ %84, %81 ], [ %87, %86 ]
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %27, align 8, !tbaa !2
  store i8 35, i8* %28, align 8, !tbaa !5
  %94 = load i32, i32* %11, align 4, !tbaa !17
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 400, %95
  %97 = icmp ult i64 %96, 50
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %89
  call fastcc void @pushstr(%struct.BuffFS* nonnull %4, i8* nonnull %33, i64 %95) #11
  store i32 0, i32* %11, align 4, !tbaa !17
  br label %99

; <label>:99:                                     ; preds = %89, %98
  %100 = phi i32 [ 0, %98 ], [ %94, %89 ]
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 %101
  %103 = call fastcc i64 @tostringbuff(%struct.TValue* nonnull %6, i8* nonnull %102) #11
  %104 = load i32, i32* %11, align 4, !tbaa !17
  %105 = trunc i64 %103 to i32
  %106 = add i32 %104, %105
  store i32 %106, i32* %11, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #9
  br label %212

; <label>:107:                                    ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #9
  %108 = load i32, i32* %19, align 8
  %109 = icmp ult i32 %108, 41
  br i1 %109, label %110, label %115

; <label>:110:                                    ; preds = %107
  %111 = load i8*, i8** %25, align 8
  %112 = sext i32 %108 to i64
  %113 = getelementptr i8, i8* %111, i64 %112
  %114 = add i32 %108, 8
  store i32 %114, i32* %19, align 8
  br label %118

; <label>:115:                                    ; preds = %107
  %116 = load i8*, i8** %26, align 8
  %117 = getelementptr i8, i8* %116, i64 8
  store i8* %117, i8** %26, align 8
  br label %118

; <label>:118:                                    ; preds = %115, %110
  %119 = phi i8* [ %113, %110 ], [ %116, %115 ]
  %120 = bitcast i8* %119 to i64*
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %29, align 8, !tbaa !2
  store i8 35, i8* %30, align 8, !tbaa !5
  %122 = load i32, i32* %11, align 4, !tbaa !17
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 400, %123
  %125 = icmp ult i64 %124, 50
  br i1 %125, label %126, label %127

; <label>:126:                                    ; preds = %118
  call fastcc void @pushstr(%struct.BuffFS* nonnull %4, i8* nonnull %33, i64 %123) #11
  store i32 0, i32* %11, align 4, !tbaa !17
  br label %127

; <label>:127:                                    ; preds = %118, %126
  %128 = phi i32 [ 0, %126 ], [ %122, %118 ]
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 %129
  %131 = call fastcc i64 @tostringbuff(%struct.TValue* nonnull %7, i8* nonnull %130) #11
  %132 = load i32, i32* %11, align 4, !tbaa !17
  %133 = trunc i64 %131 to i32
  %134 = add i32 %132, %133
  store i32 %134, i32* %11, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #9
  br label %212

; <label>:135:                                    ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %22) #9
  %136 = load i32, i32* %23, align 4
  %137 = icmp ult i32 %136, 161
  br i1 %137, label %138, label %143

; <label>:138:                                    ; preds = %135
  %139 = load i8*, i8** %25, align 8
  %140 = sext i32 %136 to i64
  %141 = getelementptr i8, i8* %139, i64 %140
  %142 = add i32 %136, 16
  store i32 %142, i32* %23, align 4
  br label %146

; <label>:143:                                    ; preds = %135
  %144 = load i8*, i8** %26, align 8
  %145 = getelementptr i8, i8* %144, i64 8
  store i8* %145, i8** %26, align 8
  br label %146

; <label>:146:                                    ; preds = %143, %138
  %147 = phi i8* [ %141, %138 ], [ %144, %143 ]
  %148 = bitcast i8* %147 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %31, align 8, !tbaa !2
  store i8 19, i8* %32, align 8, !tbaa !5
  %150 = load i32, i32* %11, align 4, !tbaa !17
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 400, %151
  %153 = icmp ult i64 %152, 50
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %146
  call fastcc void @pushstr(%struct.BuffFS* nonnull %4, i8* nonnull %33, i64 %151) #11
  store i32 0, i32* %11, align 4, !tbaa !17
  br label %155

; <label>:155:                                    ; preds = %146, %154
  %156 = phi i32 [ 0, %154 ], [ %150, %146 ]
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 %157
  %159 = call fastcc i64 @tostringbuff(%struct.TValue* nonnull %8, i8* nonnull %158) #11
  %160 = load i32, i32* %11, align 4, !tbaa !17
  %161 = trunc i64 %159 to i32
  %162 = add i32 %160, %161
  store i32 %162, i32* %11, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %22) #9
  br label %212

; <label>:163:                                    ; preds = %35
  %164 = load i32, i32* %11, align 4, !tbaa !17
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 400, %165
  %167 = icmp ult i64 %166, 32
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %163
  call fastcc void @pushstr(%struct.BuffFS* nonnull %4, i8* nonnull %33, i64 %165) #11
  store i32 0, i32* %11, align 4, !tbaa !17
  br label %169

; <label>:169:                                    ; preds = %163, %168
  %170 = phi i32 [ 0, %168 ], [ %164, %163 ]
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 3, i64 %171
  %173 = load i32, i32* %19, align 8
  %174 = icmp ult i32 %173, 41
  br i1 %174, label %175, label %180

; <label>:175:                                    ; preds = %169
  %176 = load i8*, i8** %25, align 8
  %177 = sext i32 %173 to i64
  %178 = getelementptr i8, i8* %176, i64 %177
  %179 = add i32 %173, 8
  store i32 %179, i32* %19, align 8
  br label %183

; <label>:180:                                    ; preds = %169
  %181 = load i8*, i8** %26, align 8
  %182 = getelementptr i8, i8* %181, i64 8
  store i8* %182, i8** %26, align 8
  br label %183

; <label>:183:                                    ; preds = %180, %175
  %184 = phi i8* [ %178, %175 ], [ %181, %180 ]
  %185 = bitcast i8* %184 to i8**
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %172, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %186) #11
  %188 = load i32, i32* %11, align 4, !tbaa !17
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %11, align 4, !tbaa !17
  br label %212

; <label>:190:                                    ; preds = %35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #9
  %191 = load i32, i32* %19, align 8
  %192 = icmp ult i32 %191, 41
  br i1 %192, label %193, label %198

; <label>:193:                                    ; preds = %190
  %194 = load i8*, i8** %25, align 8
  %195 = sext i32 %191 to i64
  %196 = getelementptr i8, i8* %194, i64 %195
  %197 = add i32 %191, 8
  store i32 %197, i32* %19, align 8
  br label %201

; <label>:198:                                    ; preds = %190
  %199 = load i8*, i8** %26, align 8
  %200 = getelementptr i8, i8* %199, i64 8
  store i8* %200, i8** %26, align 8
  br label %201

; <label>:201:                                    ; preds = %198, %193
  %202 = phi i8* [ %196, %193 ], [ %199, %198 ]
  %203 = bitcast i8* %202 to i64*
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @luaO_utf8esc(i8* nonnull %24, i64 %204) #12
  %206 = sext i32 %205 to i64
  %207 = sub nsw i64 0, %206
  %208 = getelementptr inbounds i8, i8* %34, i64 %207
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* nonnull %208, i64 %206) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #9
  br label %212

; <label>:209:                                    ; preds = %35
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1) #12
  br label %212

; <label>:210:                                    ; preds = %35
  %211 = sext i8 %42 to i32
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %211) #14
  unreachable

; <label>:212:                                    ; preds = %209, %201, %183, %155, %127, %99, %73, %55
  %213 = getelementptr inbounds i8, i8* %36, i64 2
  %214 = call i8* @strchr(i8* nonnull %213, i32 37) #13
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %35

; <label>:216:                                    ; preds = %212, %16
  %217 = phi i8* [ %17, %16 ], [ %33, %212 ]
  %218 = phi i8* [ %1, %16 ], [ %213, %212 ]
  %219 = call i64 @strlen(i8* %218) #13
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %218, i64 %219) #12
  %220 = load i32, i32* %11, align 4, !tbaa !17
  %221 = sext i32 %220 to i64
  call fastcc void @pushstr(%struct.BuffFS* nonnull %4, i8* nonnull %217, i64 %221) #11
  store i32 0, i32* %11, align 4, !tbaa !17
  %222 = load i32, i32* %12, align 8, !tbaa !19
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %224, label %225

; <label>:224:                                    ; preds = %216
  call void @luaV_concat(%struct.lua_State* %0, i32 %222) #11
  br label %225

; <label>:225:                                    ; preds = %224, %216
  %226 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %227 = load %union.StackValue*, %union.StackValue** %226, align 8, !tbaa !21
  %228 = getelementptr inbounds %union.StackValue, %union.StackValue* %227, i64 -1, i32 0, i32 0, i32 0
  %229 = bitcast %struct.GCObject** %228 to i8**
  %230 = load i8*, i8** %229, align 8, !tbaa !2
  %231 = getelementptr inbounds i8, i8* %230, i64 24
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %10) #9
  ret i8* %231
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @addstr2buff(%struct.BuffFS*, i8*, i64) unnamed_addr #2 {
  %4 = icmp ult i64 %2, 401
  br i1 %4, label %5, label %20

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %7 = load i32, i32* %6, align 4, !tbaa !17
  %8 = sext i32 %7 to i64
  %9 = sub nsw i64 400, %8
  %10 = icmp ult i64 %9, %2
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 0
  tail call fastcc void @pushstr(%struct.BuffFS* nonnull %0, i8* nonnull %12, i64 %8) #11
  store i32 0, i32* %6, align 4, !tbaa !17
  br label %13

; <label>:13:                                     ; preds = %5, %11
  %14 = phi i32 [ 0, %11 ], [ %7, %5 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 %15
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %16, i8* %1, i64 %2, i32 1, i1 false)
  %17 = load i32, i32* %6, align 4, !tbaa !17
  %18 = trunc i64 %2 to i32
  %19 = add i32 %17, %18
  store i32 %19, i32* %6, align 4, !tbaa !17
  br label %25

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 0
  %22 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %23 = load i32, i32* %22, align 4, !tbaa !17
  %24 = sext i32 %23 to i64
  tail call fastcc void @pushstr(%struct.BuffFS* %0, i8* nonnull %21, i64 %24) #11
  store i32 0, i32* %22, align 4, !tbaa !17
  tail call fastcc void @pushstr(%struct.BuffFS* %0, i8* %1, i64 %2) #12
  br label %25

; <label>:25:                                     ; preds = %20, %13
  ret void
}

; Function Attrs: argmemonly nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define hidden nonnull i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %6 = call i8* @luaO_pushvfstring(%struct.lua_State* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #12
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9
  ret i8* %6
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind optsize uwtable
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
  %21 = tail call i8* @strchr(i8* nonnull %1, i32 10) #13
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

; Function Attrs: optsize
declare hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i64 @luaV_idiv(%struct.lua_State*, i64, i64) local_unnamed_addr #3

; Function Attrs: optsize
declare hidden i64 @luaV_shiftl(i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare double @pow(double, double) local_unnamed_addr #7

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #10

; Function Attrs: optsize
declare hidden double @luaV_modf(%struct.lua_State*, double, double) local_unnamed_addr #3

; Function Attrs: nounwind optsize readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @l_str2dloc(i8*, double* nocapture) unnamed_addr #2 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = call double @strtod(i8* %0, i8** nonnull %3) #11
  store double %5, double* %1, align 8, !tbaa !12
  %6 = load i8*, i8** %3, align 8, !tbaa !26
  %7 = icmp eq i8* %6, %0
  br i1 %7, label %33, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %6, align 1, !tbaa !2
  %10 = zext i8 %9 to i64
  %11 = add nuw nsw i64 %10, 1
  %12 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !2
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %28, label %16

; <label>:16:                                     ; preds = %8
  br label %17

; <label>:17:                                     ; preds = %16, %17
  %18 = phi i8* [ %19, %17 ], [ %6, %16 ]
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1, !tbaa !2
  %21 = zext i8 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1, !tbaa !2
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %17

; <label>:27:                                     ; preds = %17
  store i8* %19, i8** %3, align 8, !tbaa !26
  br label %28

; <label>:28:                                     ; preds = %27, %8
  %29 = phi i8* [ %19, %27 ], [ %6, %8 ]
  %30 = phi i8 [ %20, %27 ], [ %9, %8 ]
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i8* %29, i8* null
  br label %33

; <label>:33:                                     ; preds = %2, %28
  %34 = phi i8* [ %32, %28 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i8* %34
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare %struct.lconv* @localeconv() local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #7

; Function Attrs: nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pushstr(%struct.BuffFS* nocapture, i8*, i64) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 6
  %7 = bitcast %union.StackValue** %6 to %struct.TValue**
  %8 = load %struct.TValue*, %struct.TValue** %7, align 8, !tbaa !21
  %9 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %1, i64 %2) #11
  %10 = bitcast %struct.TValue* %8 to %struct.TString**
  store %struct.TString* %9, %struct.TString** %10, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !14
  %13 = or i8 %12, 64
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  store i8 %13, i8* %14, align 8, !tbaa !5
  %15 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !21
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 1
  store %union.StackValue* %16, %union.StackValue** %6, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 8, !tbaa !19
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8, !tbaa !19
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 3
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 10
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8, !tbaa !27
  %25 = icmp ugt %union.StackValue* %22, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  tail call void @luaV_concat(%struct.lua_State* nonnull %5, i32 %19) #11
  store i32 1, i32* %17, align 8, !tbaa !19
  br label %27

; <label>:27:                                     ; preds = %26, %21, %3
  ret void
}

attributes #0 = { norecurse nounwind optsize readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone speculatable }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize readonly }
attributes #14 = { noreturn nounwind optsize }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"lconv", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !3, i64 80, !3, i64 81, !3, i64 82, !3, i64 83, !3, i64 84, !3, i64 85, !3, i64 86, !3, i64 87, !3, i64 88, !3, i64 89, !3, i64 90, !3, i64 91, !3, i64 92, !3, i64 93}
!11 = !{!"any pointer", !3, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !3, i64 0}
!14 = !{!15, !3, i64 8}
!15 = !{!"TString", !11, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !16, i64 12, !3, i64 16}
!16 = !{!"int", !3, i64 0}
!17 = !{!18, !16, i64 12}
!18 = !{!"BuffFS", !11, i64 0, !16, i64 8, !16, i64 12, !3, i64 16}
!19 = !{!18, !16, i64 8}
!20 = !{!18, !11, i64 0}
!21 = !{!22, !11, i64 16}
!22 = !{!"lua_State", !11, i64 0, !3, i64 8, !3, i64 9, !3, i64 10, !3, i64 11, !23, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !24, i64 96, !11, i64 160, !25, i64 168, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192}
!23 = !{!"short", !3, i64 0}
!24 = !{!"CallInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !3, i64 32, !3, i64 56, !23, i64 60, !23, i64 62}
!25 = !{!"long", !3, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{!22, !11, i64 48}
