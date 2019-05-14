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

; Function Attrs: minsize norecurse nounwind optsize readnone uwtable
define hidden i32 @luaO_int2fb(i32) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %26, label %3

; <label>:3:                                      ; preds = %1
  br label %4

; <label>:4:                                      ; preds = %3, %9
  %5 = phi i32 [ %11, %9 ], [ %0, %3 ]
  %6 = phi i32 [ %12, %9 ], [ 0, %3 ]
  %7 = icmp ugt i32 %5, 127
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %4
  br label %13

; <label>:9:                                      ; preds = %4
  %10 = add i32 %5, 15
  %11 = lshr i32 %10, 4
  %12 = add nuw nsw i32 %6, 4
  br label %4

; <label>:13:                                     ; preds = %8, %17
  %14 = phi i32 [ %19, %17 ], [ %5, %8 ]
  %15 = phi i32 [ %20, %17 ], [ %6, %8 ]
  %16 = icmp ugt i32 %14, 15
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %13
  %18 = add i32 %14, 1
  %19 = lshr i32 %18, 1
  %20 = add nuw nsw i32 %15, 1
  br label %13

; <label>:21:                                     ; preds = %13
  %22 = shl i32 %15, 3
  %23 = add i32 %22, 8
  %24 = add nsw i32 %14, -8
  %25 = or i32 %23, %24
  br label %26

; <label>:26:                                     ; preds = %1, %21
  %27 = phi i32 [ %25, %21 ], [ %0, %1 ]
  ret i32 %27
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize norecurse nounwind optsize readnone uwtable
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

; Function Attrs: minsize norecurse nounwind optsize readnone uwtable
define hidden i32 @luaO_ceillog2(i32) local_unnamed_addr #0 {
  %2 = add i32 %0, -1
  br label %3

; <label>:3:                                      ; preds = %7, %1
  %4 = phi i32 [ %2, %1 ], [ %9, %7 ]
  %5 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %6 = icmp ugt i32 %4, 255
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %3
  %8 = add nuw nsw i32 %5, 8
  %9 = lshr i32 %4, 8
  br label %3

; <label>:10:                                     ; preds = %3
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* @luaO_ceillog2.log_2, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !2
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %5, %14
  ret i32 %15
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden i32 @luaV_tointegerns(%struct.TValue*, i64*, i32) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) local_unnamed_addr #3

; Function Attrs: minsize norecurse nounwind optsize readnone uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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
  br i1 %23, label %24, label %47

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds i8, i8* %20, i64 1
  %26 = load i8, i8* %25, align 1, !tbaa !2
  switch i8 %26, label %47 [
    i8 120, label %27
    i8 88, label %27
  ]

; <label>:27:                                     ; preds = %24, %24
  %28 = getelementptr inbounds i8, i8* %20, i64 2
  br label %29

; <label>:29:                                     ; preds = %40, %27
  %30 = phi i8* [ %28, %27 ], [ %46, %40 ]
  %31 = phi i32 [ 1, %27 ], [ 0, %40 ]
  %32 = phi i64 [ 0, %27 ], [ %45, %40 ]
  %33 = load i8, i8* %30, align 1, !tbaa !2
  %34 = zext i8 %33 to i64
  %35 = add nuw nsw i64 %34, 1
  %36 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !2
  %38 = and i8 %37, 16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %74, label %40

; <label>:40:                                     ; preds = %29
  %41 = shl i64 %32, 4
  %42 = sext i8 %33 to i32
  %43 = tail call i32 @luaO_hexavalue(i32 %42) #11
  %44 = sext i32 %43 to i64
  %45 = add i64 %41, %44
  %46 = getelementptr inbounds i8, i8* %30, i64 1
  br label %29

; <label>:47:                                     ; preds = %24, %19
  %48 = add nuw nsw i32 %21, 7
  br label %49

; <label>:49:                                     ; preds = %68, %47
  %50 = phi i8 [ %22, %47 ], [ %73, %68 ]
  %51 = phi i8* [ %20, %47 ], [ %72, %68 ]
  %52 = phi i32 [ 1, %47 ], [ 0, %68 ]
  %53 = phi i64 [ 0, %47 ], [ %71, %68 ]
  %54 = zext i8 %50 to i64
  %55 = add nuw nsw i64 %54, 1
  %56 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1, !tbaa !2
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60

; <label>:60:                                     ; preds = %49
  %61 = sext i8 %50 to i32
  %62 = add nsw i32 %61, -48
  %63 = icmp ugt i64 %53, 922337203685477579
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %60
  %65 = icmp ne i64 %53, 922337203685477580
  %66 = icmp sgt i32 %62, %48
  %67 = or i1 %66, %65
  br i1 %67, label %101, label %68

; <label>:68:                                     ; preds = %64, %60
  %69 = mul i64 %53, 10
  %70 = sext i32 %62 to i64
  %71 = add i64 %69, %70
  %72 = getelementptr inbounds i8, i8* %51, i64 1
  %73 = load i8, i8* %72, align 1, !tbaa !2
  br label %49

; <label>:74:                                     ; preds = %29, %49
  %75 = phi i8 [ %50, %49 ], [ %33, %29 ]
  %76 = phi i8* [ %51, %49 ], [ %30, %29 ]
  %77 = phi i32 [ %52, %49 ], [ %31, %29 ]
  %78 = phi i64 [ %53, %49 ], [ %32, %29 ]
  br label %79

; <label>:79:                                     ; preds = %89, %74
  %80 = phi i8 [ %75, %74 ], [ %90, %89 ]
  %81 = phi i8* [ %76, %74 ], [ %88, %89 ]
  %82 = zext i8 %80 to i64
  %83 = add nuw nsw i64 %82, 1
  %84 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1, !tbaa !2
  %86 = and i8 %85, 8
  %87 = icmp eq i8 %86, 0
  %88 = getelementptr inbounds i8, i8* %81, i64 1
  br i1 %87, label %91, label %89

; <label>:89:                                     ; preds = %79
  %90 = load i8, i8* %88, align 1, !tbaa !2
  br label %79

; <label>:91:                                     ; preds = %79
  %92 = icmp ne i32 %77, 0
  %93 = icmp ne i8 %80, 0
  %94 = or i1 %93, %92
  %95 = icmp eq i8* %81, null
  %96 = or i1 %94, %95
  br i1 %96, label %101, label %97

; <label>:97:                                     ; preds = %91
  %98 = icmp eq i32 %21, 0
  %99 = sub i64 0, %78
  %100 = select i1 %98, i64 %78, i64 %99
  br label %141

; <label>:101:                                    ; preds = %64, %91
  %102 = tail call i8* @strpbrk(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #13
  %103 = icmp eq i8* %102, null
  br i1 %103, label %108, label %104

; <label>:104:                                    ; preds = %101
  %105 = load i8, i8* %102, align 1, !tbaa !2
  %106 = or i8 %105, 32
  %107 = icmp eq i8 %106, 110
  br i1 %107, label %151, label %108

; <label>:108:                                    ; preds = %104, %101
  %109 = call fastcc i8* @l_str2dloc(i8* %0, double* nonnull %4) #11
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %137

; <label>:111:                                    ; preds = %108
  %112 = getelementptr inbounds [201 x i8], [201 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 201, i8* nonnull %112) #9
  %113 = tail call i8* @strchr(i8* %0, i32 46) #13
  %114 = tail call i64 @strlen(i8* %0) #13
  %115 = icmp ugt i64 %114, 200
  %116 = icmp eq i8* %113, null
  %117 = or i1 %116, %115
  br i1 %117, label %136, label %118

; <label>:118:                                    ; preds = %111
  %119 = call i8* @strcpy(i8* nonnull %112, i8* %0) #11
  %120 = call %struct.lconv* @localeconv() #11
  %121 = getelementptr inbounds %struct.lconv, %struct.lconv* %120, i64 0, i32 0
  %122 = load i8*, i8** %121, align 8, !tbaa !9
  %123 = load i8, i8* %122, align 1, !tbaa !2
  %124 = ptrtoint i8* %113 to i64
  %125 = ptrtoint i8* %0 to i64
  %126 = sub i64 %124, %125
  %127 = getelementptr inbounds [201 x i8], [201 x i8]* %3, i64 0, i64 %126
  store i8 %123, i8* %127, align 1, !tbaa !2
  %128 = call fastcc i8* @l_str2dloc(i8* nonnull %112, double* nonnull %4) #11
  %129 = icmp eq i8* %128, null
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint [201 x i8]* %3 to i64
  %132 = sub i64 %130, %131
  %133 = getelementptr inbounds i8, i8* %0, i64 %132
  call void @llvm.lifetime.end.p0i8(i64 201, i8* nonnull %112) #9
  %134 = icmp eq i8* %133, null
  %135 = or i1 %129, %134
  br i1 %135, label %151, label %137

; <label>:136:                                    ; preds = %111
  call void @llvm.lifetime.end.p0i8(i64 201, i8* nonnull %112) #9
  br label %151

; <label>:137:                                    ; preds = %118, %108
  %138 = phi i8* [ %109, %108 ], [ %133, %118 ]
  %139 = bitcast double* %4 to i64*
  %140 = load i64, i64* %139, align 8, !tbaa !12
  br label %141

; <label>:141:                                    ; preds = %137, %97
  %142 = phi i64 [ %140, %137 ], [ %100, %97 ]
  %143 = phi i8 [ 19, %137 ], [ 35, %97 ]
  %144 = phi i8* [ %138, %137 ], [ %81, %97 ]
  %145 = bitcast %struct.TValue* %1 to i64*
  store i64 %142, i64* %145, align 8, !tbaa !2
  %146 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  store i8 %143, i8* %146, align 8, !tbaa !5
  %147 = ptrtoint i8* %144 to i64
  %148 = ptrtoint i8* %0 to i64
  %149 = sub i64 1, %148
  %150 = add i64 %149, %147
  br label %151

; <label>:151:                                    ; preds = %118, %104, %136, %141
  %152 = phi i64 [ %150, %141 ], [ 0, %136 ], [ 0, %104 ], [ 0, %118 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  ret i64 %152
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize uwtable
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
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %15 = bitcast %struct.TValue* %6 to i8*
  %16 = bitcast %struct.TValue* %7 to i8*
  %17 = bitcast %struct.TValue* %8 to i8*
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %22 = bitcast %struct.TValue* %6 to i64*
  %23 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %24 = bitcast %struct.TValue* %7 to i64*
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %26 = bitcast %struct.TValue* %8 to i64*
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 8
  br label %29

; <label>:29:                                     ; preds = %161, %3
  %30 = phi i8* [ %1, %3 ], [ %162, %161 ]
  %31 = call i8* @strchr(i8* %30, i32 37) #13
  %32 = icmp eq i8* %31, null
  br i1 %32, label %163, label %33

; <label>:33:                                     ; preds = %29
  %34 = ptrtoint i8* %31 to i64
  %35 = ptrtoint i8* %30 to i64
  %36 = sub i64 %34, %35
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %30, i64 %36) #12
  %37 = getelementptr inbounds i8, i8* %31, i64 1
  %38 = load i8, i8* %37, align 1, !tbaa !2
  %39 = sext i8 %38 to i32
  switch i32 %39, label %159 [
    i32 115, label %40
    i32 99, label %58
    i32 100, label %74
    i32 73, label %90
    i32 102, label %105
    i32 112, label %120
    i32 85, label %139
    i32 37, label %158
  ]

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %14, align 8
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %20, align 8
  %45 = sext i32 %41 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  %47 = add i32 %41, 8
  store i32 %47, i32* %14, align 8
  br label %51

; <label>:48:                                     ; preds = %40
  %49 = load i8*, i8** %21, align 8
  %50 = getelementptr i8, i8* %49, i64 8
  store i8* %50, i8** %21, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %43
  %52 = phi i8* [ %46, %43 ], [ %49, %48 ]
  %53 = bitcast i8* %52 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  %56 = select i1 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %54
  %57 = call i64 @strlen(i8* %56) #13
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %56, i64 %57) #12
  br label %161

; <label>:58:                                     ; preds = %33
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #9
  %59 = load i32, i32* %14, align 8
  %60 = icmp ult i32 %59, 41
  br i1 %60, label %61, label %66

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %20, align 8
  %63 = sext i32 %59 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = add i32 %59, 8
  store i32 %65, i32* %14, align 8
  br label %69

; <label>:66:                                     ; preds = %58
  %67 = load i8*, i8** %21, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %21, align 8
  br label %69

; <label>:69:                                     ; preds = %66, %61
  %70 = phi i8* [ %64, %61 ], [ %67, %66 ]
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %5, align 1, !tbaa !2
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* nonnull %5, i64 1) #12
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #9
  br label %161

; <label>:74:                                     ; preds = %33
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #9
  %75 = load i32, i32* %14, align 8
  %76 = icmp ult i32 %75, 41
  br i1 %76, label %77, label %82

; <label>:77:                                     ; preds = %74
  %78 = load i8*, i8** %20, align 8
  %79 = sext i32 %75 to i64
  %80 = getelementptr i8, i8* %78, i64 %79
  %81 = add i32 %75, 8
  store i32 %81, i32* %14, align 8
  br label %85

; <label>:82:                                     ; preds = %74
  %83 = load i8*, i8** %21, align 8
  %84 = getelementptr i8, i8* %83, i64 8
  store i8* %84, i8** %21, align 8
  br label %85

; <label>:85:                                     ; preds = %82, %77
  %86 = phi i8* [ %80, %77 ], [ %83, %82 ]
  %87 = bitcast i8* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %22, align 8, !tbaa !2
  store i8 35, i8* %23, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %6) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #9
  br label %161

; <label>:90:                                     ; preds = %33
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #9
  %91 = load i32, i32* %14, align 8
  %92 = icmp ult i32 %91, 41
  br i1 %92, label %93, label %98

; <label>:93:                                     ; preds = %90
  %94 = load i8*, i8** %20, align 8
  %95 = sext i32 %91 to i64
  %96 = getelementptr i8, i8* %94, i64 %95
  %97 = add i32 %91, 8
  store i32 %97, i32* %14, align 8
  br label %101

; <label>:98:                                     ; preds = %90
  %99 = load i8*, i8** %21, align 8
  %100 = getelementptr i8, i8* %99, i64 8
  store i8* %100, i8** %21, align 8
  br label %101

; <label>:101:                                    ; preds = %98, %93
  %102 = phi i8* [ %96, %93 ], [ %99, %98 ]
  %103 = bitcast i8* %102 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %24, align 8, !tbaa !2
  store i8 35, i8* %25, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %7) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #9
  br label %161

; <label>:105:                                    ; preds = %33
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #9
  %106 = load i32, i32* %18, align 4
  %107 = icmp ult i32 %106, 161
  br i1 %107, label %108, label %113

; <label>:108:                                    ; preds = %105
  %109 = load i8*, i8** %20, align 8
  %110 = sext i32 %106 to i64
  %111 = getelementptr i8, i8* %109, i64 %110
  %112 = add i32 %106, 16
  store i32 %112, i32* %18, align 4
  br label %116

; <label>:113:                                    ; preds = %105
  %114 = load i8*, i8** %21, align 8
  %115 = getelementptr i8, i8* %114, i64 8
  store i8* %115, i8** %21, align 8
  br label %116

; <label>:116:                                    ; preds = %113, %108
  %117 = phi i8* [ %111, %108 ], [ %114, %113 ]
  %118 = bitcast i8* %117 to i64*
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %26, align 8, !tbaa !2
  store i8 19, i8* %27, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %8) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #9
  br label %161

; <label>:120:                                    ; preds = %33
  %121 = call fastcc i8* @getbuff(%struct.BuffFS* nonnull %4, i64 32) #12
  %122 = load i32, i32* %14, align 8
  %123 = icmp ult i32 %122, 41
  br i1 %123, label %124, label %129

; <label>:124:                                    ; preds = %120
  %125 = load i8*, i8** %20, align 8
  %126 = sext i32 %122 to i64
  %127 = getelementptr i8, i8* %125, i64 %126
  %128 = add i32 %122, 8
  store i32 %128, i32* %14, align 8
  br label %132

; <label>:129:                                    ; preds = %120
  %130 = load i8*, i8** %21, align 8
  %131 = getelementptr i8, i8* %130, i64 8
  store i8* %131, i8** %21, align 8
  br label %132

; <label>:132:                                    ; preds = %129, %124
  %133 = phi i8* [ %127, %124 ], [ %130, %129 ]
  %134 = bitcast i8* %133 to i8**
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %121, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %135) #11
  %137 = load i32, i32* %11, align 4, !tbaa !17
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %11, align 4, !tbaa !17
  br label %161

; <label>:139:                                    ; preds = %33
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #9
  %140 = load i32, i32* %14, align 8
  %141 = icmp ult i32 %140, 41
  br i1 %141, label %142, label %147

; <label>:142:                                    ; preds = %139
  %143 = load i8*, i8** %20, align 8
  %144 = sext i32 %140 to i64
  %145 = getelementptr i8, i8* %143, i64 %144
  %146 = add i32 %140, 8
  store i32 %146, i32* %14, align 8
  br label %150

; <label>:147:                                    ; preds = %139
  %148 = load i8*, i8** %21, align 8
  %149 = getelementptr i8, i8* %148, i64 8
  store i8* %149, i8** %21, align 8
  br label %150

; <label>:150:                                    ; preds = %147, %142
  %151 = phi i8* [ %145, %142 ], [ %148, %147 ]
  %152 = bitcast i8* %151 to i64*
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @luaO_utf8esc(i8* nonnull %19, i64 %153) #12
  %155 = sext i32 %154 to i64
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, i8* %28, i64 %156
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* nonnull %157, i64 %155) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #9
  br label %161

; <label>:158:                                    ; preds = %33
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1) #12
  br label %161

; <label>:159:                                    ; preds = %33
  %160 = sext i8 %38 to i32
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %160) #14
  unreachable

; <label>:161:                                    ; preds = %158, %150, %132, %116, %101, %85, %69, %51
  %162 = getelementptr inbounds i8, i8* %31, i64 2
  br label %29

; <label>:163:                                    ; preds = %29
  %164 = call i64 @strlen(i8* %30) #13
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %30, i64 %164) #12
  call fastcc void @clearbuff(%struct.BuffFS* nonnull %4) #12
  %165 = load i32, i32* %12, align 8, !tbaa !19
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %163
  call void @luaV_concat(%struct.lua_State* %0, i32 %165) #11
  br label %168

; <label>:168:                                    ; preds = %167, %163
  %169 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %170 = load %union.StackValue*, %union.StackValue** %169, align 8, !tbaa !21
  %171 = getelementptr inbounds %union.StackValue, %union.StackValue* %170, i64 -1, i32 0, i32 0, i32 0
  %172 = bitcast %struct.GCObject** %171 to i8**
  %173 = load i8*, i8** %172, align 8, !tbaa !2
  %174 = getelementptr inbounds i8, i8* %173, i64 24
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %10) #9
  ret i8* %174
}

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @addstr2buff(%struct.BuffFS*, i8*, i64) unnamed_addr #2 {
  %4 = icmp ult i64 %2, 401
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc i8* @getbuff(%struct.BuffFS* %0, i64 %2) #12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* %1, i64 %2, i32 1, i1 false)
  %7 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !17
  %9 = trunc i64 %2 to i32
  %10 = add i32 %8, %9
  store i32 %10, i32* %7, align 4, !tbaa !17
  br label %12

; <label>:11:                                     ; preds = %3
  tail call fastcc void @clearbuff(%struct.BuffFS* %0) #12
  tail call fastcc void @pushstr(%struct.BuffFS* %0, i8* %1, i64 %2) #12
  br label %12

; <label>:12:                                     ; preds = %11, %5
  ret void
}

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @addnum2buff(%struct.BuffFS*, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = tail call fastcc i8* @getbuff(%struct.BuffFS* %0, i64 50) #12
  %4 = tail call fastcc i64 @tostringbuff(%struct.TValue* %1, i8* nonnull %3) #12
  %5 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %6 = load i32, i32* %5, align 4, !tbaa !17
  %7 = trunc i64 %4 to i32
  %8 = add i32 %6, %7
  store i32 %8, i32* %5, align 4, !tbaa !17
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc nonnull i8* @getbuff(%struct.BuffFS*, i64) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !17
  %5 = sext i32 %4 to i64
  %6 = sub nsw i64 400, %5
  %7 = icmp ult i64 %6, %1
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %2
  tail call fastcc void @clearbuff(%struct.BuffFS* nonnull %0) #12
  %9 = load i32, i32* %3, align 4, !tbaa !17
  %10 = sext i32 %9 to i64
  br label %11

; <label>:11:                                     ; preds = %8, %2
  %12 = phi i64 [ %10, %8 ], [ %5, %2 ]
  %13 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 %12
  ret i8* %13
}

; Function Attrs: minsize nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #7

; Function Attrs: minsize noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #8

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @clearbuff(%struct.BuffFS*) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 0
  %3 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !17
  %5 = sext i32 %4 to i64
  tail call fastcc void @pushstr(%struct.BuffFS* %0, i8* nonnull %2, i64 %5) #12
  store i32 0, i32* %3, align 4, !tbaa !17
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) local_unnamed_addr #3

; Function Attrs: minsize optsize
declare hidden i64 @luaV_idiv(%struct.lua_State*, i64, i64) local_unnamed_addr #3

; Function Attrs: minsize optsize
declare hidden i64 @luaV_shiftl(i64, i64) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize
declare double @pow(double, double) local_unnamed_addr #7

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #10

; Function Attrs: minsize optsize
declare hidden double @luaV_modf(%struct.lua_State*, double, double) local_unnamed_addr #3

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i8* @l_str2dloc(i8*, double* nocapture) unnamed_addr #2 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = call double @strtod(i8* %0, i8** nonnull %3) #11
  store double %5, double* %1, align 8, !tbaa !12
  %6 = load i8*, i8** %3, align 8, !tbaa !26
  %7 = icmp eq i8* %6, %0
  br i1 %7, label %22, label %8

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i8* [ %18, %9 ], [ %6, %8 ]
  %11 = load i8, i8* %10, align 1, !tbaa !2
  %12 = zext i8 %11 to i64
  %13 = add nuw nsw i64 %12, 1
  %14 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !2
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds i8, i8* %10, i64 1
  br i1 %17, label %19, label %9

; <label>:19:                                     ; preds = %9
  store i8* %10, i8** %3, align 8, !tbaa !26
  %20 = icmp eq i8 %11, 0
  %21 = select i1 %20, i8* %10, i8* null
  br label %22

; <label>:22:                                     ; preds = %2, %19
  %23 = phi i8* [ %21, %19 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i8* %23
}

; Function Attrs: minsize nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #7

; Function Attrs: minsize nounwind optsize
declare %struct.lconv* @localeconv() local_unnamed_addr #7

; Function Attrs: minsize nounwind optsize
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #7

; Function Attrs: minsize nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
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

attributes #0 = { minsize norecurse nounwind optsize readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone speculatable }
attributes #11 = { minsize nounwind optsize }
attributes #12 = { minsize optsize }
attributes #13 = { minsize nounwind optsize readonly }
attributes #14 = { minsize noreturn nounwind optsize }

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
