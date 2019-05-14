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
  switch i32 %1, label %64 [
    i32 7, label %8
    i32 8, label %8
    i32 9, label %8
    i32 10, label %8
    i32 11, label %8
    i32 13, label %8
    i32 5, label %38
    i32 4, label %38
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
  br i1 %19, label %36, label %20

; <label>:20:                                     ; preds = %17, %14
  %21 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !5
  %23 = icmp eq i8 %22, 35
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %20
  %25 = bitcast %struct.TValue* %3 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !2
  store i64 %26, i64* %7, align 8, !tbaa !7
  br label %30

; <label>:27:                                     ; preds = %20
  %28 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %3, i64* nonnull %7, i32 0) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %27, %24
  %31 = load i64, i64* %6, align 8, !tbaa !7
  %32 = load i64, i64* %7, align 8, !tbaa !7
  %33 = call fastcc i64 @intarith(%struct.lua_State* %0, i32 %1, i64 %31, i64 %32)
  %34 = bitcast %struct.TValue* %4 to i64*
  store i64 %33, i64* %34, align 8, !tbaa !2
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %35, align 8, !tbaa !5
  br label %36

; <label>:36:                                     ; preds = %17, %27, %30
  %37 = phi i32 [ 1, %30 ], [ 0, %27 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #9
  br label %100

; <label>:38:                                     ; preds = %5, %5
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %40 = load i8, i8* %39, align 8, !tbaa !5
  switch i8 %40, label %100 [
    i8 19, label %41
    i8 35, label %44
  ]

; <label>:41:                                     ; preds = %38
  %42 = bitcast %struct.TValue* %2 to double*
  %43 = load double, double* %42, align 8, !tbaa !2
  br label %48

; <label>:44:                                     ; preds = %38
  %45 = bitcast %struct.TValue* %2 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !2
  %47 = sitofp i64 %46 to double
  br label %48

; <label>:48:                                     ; preds = %41, %44
  %49 = phi double [ %43, %41 ], [ %47, %44 ]
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %51 = load i8, i8* %50, align 8, !tbaa !5
  switch i8 %51, label %100 [
    i8 19, label %52
    i8 35, label %55
  ]

; <label>:52:                                     ; preds = %48
  %53 = bitcast %struct.TValue* %3 to double*
  %54 = load double, double* %53, align 8, !tbaa !2
  br label %59

; <label>:55:                                     ; preds = %48
  %56 = bitcast %struct.TValue* %3 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !2
  %58 = sitofp i64 %57 to double
  br label %59

; <label>:59:                                     ; preds = %52, %55
  %60 = phi double [ %54, %52 ], [ %58, %55 ]
  %61 = tail call fastcc double @numarith(%struct.lua_State* %0, i32 %1, double %49, double %60)
  %62 = bitcast %struct.TValue* %4 to double*
  store double %61, double* %62, align 8, !tbaa !2
  %63 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %63, align 8, !tbaa !5
  br label %100

; <label>:64:                                     ; preds = %5
  %65 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %66 = load i8, i8* %65, align 8, !tbaa !5
  switch i8 %66, label %100 [
    i8 35, label %67
    i8 19, label %79
  ]

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %69 = load i8, i8* %68, align 8, !tbaa !5
  %70 = icmp eq i8 %69, 35
  %71 = bitcast %struct.TValue* %2 to i64*
  %72 = load i64, i64* %71, align 8, !tbaa !2
  br i1 %70, label %73, label %82

; <label>:73:                                     ; preds = %67
  %74 = bitcast %struct.TValue* %3 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !2
  %76 = tail call fastcc i64 @intarith(%struct.lua_State* %0, i32 %1, i64 %72, i64 %75)
  %77 = bitcast %struct.TValue* %4 to i64*
  store i64 %76, i64* %77, align 8, !tbaa !2
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 35, i8* %78, align 8, !tbaa !5
  br label %100

; <label>:79:                                     ; preds = %64
  %80 = bitcast %struct.TValue* %2 to double*
  %81 = load double, double* %80, align 8, !tbaa !2
  br label %84

; <label>:82:                                     ; preds = %67
  %83 = sitofp i64 %72 to double
  br label %84

; <label>:84:                                     ; preds = %79, %82
  %85 = phi double [ %81, %79 ], [ %83, %82 ]
  %86 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %87 = load i8, i8* %86, align 8, !tbaa !5
  switch i8 %87, label %100 [
    i8 19, label %88
    i8 35, label %91
  ]

; <label>:88:                                     ; preds = %84
  %89 = bitcast %struct.TValue* %3 to double*
  %90 = load double, double* %89, align 8, !tbaa !2
  br label %95

; <label>:91:                                     ; preds = %84
  %92 = bitcast %struct.TValue* %3 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !2
  %94 = sitofp i64 %93 to double
  br label %95

; <label>:95:                                     ; preds = %88, %91
  %96 = phi double [ %90, %88 ], [ %94, %91 ]
  %97 = tail call fastcc double @numarith(%struct.lua_State* %0, i32 %1, double %85, double %96)
  %98 = bitcast %struct.TValue* %4 to double*
  store double %97, double* %98, align 8, !tbaa !2
  %99 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  store i8 19, i8* %99, align 8, !tbaa !5
  br label %100

; <label>:100:                                    ; preds = %64, %73, %95, %84, %59, %48, %38, %36
  %101 = phi i32 [ %37, %36 ], [ 1, %59 ], [ 0, %48 ], [ 0, %38 ], [ 1, %73 ], [ 1, %95 ], [ 0, %84 ], [ 0, %64 ]
  ret i32 %101
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
  %14 = tail call double @pow(double %2, double %3) #9
  br label %22

; <label>:15:                                     ; preds = %4
  %16 = fdiv double %2, %3
  %17 = tail call double @llvm.floor.f64(double %16)
  br label %22

; <label>:18:                                     ; preds = %4
  %19 = fsub double -0.000000e+00, %2
  br label %22

; <label>:20:                                     ; preds = %4
  %21 = tail call double @luaV_modf(%struct.lua_State* %0, double %2, double %3) #9
  br label %22

; <label>:22:                                     ; preds = %4, %20, %18, %15, %13, %11, %9, %7, %5
  %23 = phi double [ %21, %20 ], [ %19, %18 ], [ %17, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ 0.000000e+00, %4 ]
  ret double %23
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
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #9
  %6 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  %7 = call fastcc i8* @l_str2int(i8* %0, i64* nonnull %3)
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %2
  %10 = call fastcc i8* @l_str2d(i8* %0, double* nonnull %4)
  %11 = icmp eq i8* %10, null
  br i1 %11, label %25, label %12

; <label>:12:                                     ; preds = %9
  %13 = bitcast double* %4 to i64*
  br label %14

; <label>:14:                                     ; preds = %2, %12
  %15 = phi i64* [ %13, %12 ], [ %3, %2 ]
  %16 = phi i8 [ 19, %12 ], [ 35, %2 ]
  %17 = phi i8* [ %10, %12 ], [ %7, %2 ]
  %18 = load i64, i64* %15, align 8, !tbaa !2
  %19 = bitcast %struct.TValue* %1 to i64*
  store i64 %18, i64* %19, align 8, !tbaa !2
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  store i8 %16, i8* %20, align 8, !tbaa !5
  %21 = ptrtoint i8* %17 to i64
  %22 = ptrtoint i8* %0 to i64
  %23 = sub i64 1, %22
  %24 = add i64 %23, %21
  br label %25

; <label>:25:                                     ; preds = %9, %14
  %26 = phi i64 [ %24, %14 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #9
  ret i64 %26
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i8* @l_str2int(i8*, i64* nocapture) unnamed_addr #4 {
  %3 = alloca i8*, align 8
  br label %4

; <label>:4:                                      ; preds = %4, %2
  %5 = phi i8* [ %0, %2 ], [ %13, %4 ]
  store i8* %5, i8** %3, align 8, !tbaa !9
  %6 = load i8, i8* %5, align 1, !tbaa !2
  %7 = zext i8 %6 to i64
  %8 = add nuw nsw i64 %7, 1
  %9 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1, !tbaa !2
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds i8, i8* %5, i64 1
  br i1 %12, label %14, label %4

; <label>:14:                                     ; preds = %4
  %15 = call fastcc i32 @isneg(i8** nonnull %3)
  %16 = load i8*, i8** %3, align 8, !tbaa !9
  %17 = load i8, i8* %16, align 1, !tbaa !2
  %18 = icmp eq i8 %17, 48
  br i1 %18, label %19, label %49

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds i8, i8* %16, i64 1
  %21 = load i8, i8* %20, align 1, !tbaa !2
  switch i8 %21, label %49 [
    i8 120, label %22
    i8 88, label %22
  ]

; <label>:22:                                     ; preds = %19, %19
  %23 = getelementptr inbounds i8, i8* %16, i64 2
  store i8* %23, i8** %3, align 8, !tbaa !9
  %24 = load i8, i8* %23, align 1, !tbaa !2
  %25 = zext i8 %24 to i64
  %26 = add nuw nsw i64 %25, 1
  %27 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !2
  %29 = and i8 %28, 16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %86, label %31

; <label>:31:                                     ; preds = %22
  br label %32

; <label>:32:                                     ; preds = %31, %32
  %33 = phi i8 [ %42, %32 ], [ %24, %31 ]
  %34 = phi i64 [ %40, %32 ], [ 0, %31 ]
  %35 = phi i8* [ %41, %32 ], [ %23, %31 ]
  %36 = shl i64 %34, 4
  %37 = sext i8 %33 to i32
  %38 = tail call i32 @luaO_hexavalue(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = add i64 %36, %39
  %41 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %41, i8** %3, align 8, !tbaa !9
  %42 = load i8, i8* %41, align 1, !tbaa !2
  %43 = zext i8 %42 to i64
  %44 = add nuw nsw i64 %43, 1
  %45 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1, !tbaa !2
  %47 = and i8 %46, 16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %86, label %32

; <label>:49:                                     ; preds = %19, %14
  %50 = load i8*, i8** %3, align 8, !tbaa !9
  %51 = load i8, i8* %50, align 1, !tbaa !2
  %52 = zext i8 %51 to i64
  %53 = add nuw nsw i64 %52, 1
  %54 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1, !tbaa !2
  %56 = and i8 %55, 2
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %86, label %58

; <label>:58:                                     ; preds = %49
  %59 = add nsw i32 %15, 7
  %60 = load i8*, i8** %3, align 8, !tbaa !9
  br label %61

; <label>:61:                                     ; preds = %58, %73
  %62 = phi i8* [ %60, %58 ], [ %77, %73 ]
  %63 = phi i8 [ %51, %58 ], [ %78, %73 ]
  %64 = phi i8* [ %50, %58 ], [ %77, %73 ]
  %65 = phi i64 [ 0, %58 ], [ %76, %73 ]
  %66 = sext i8 %63 to i32
  %67 = add nsw i32 %66, -48
  %68 = icmp ugt i64 %65, 922337203685477579
  br i1 %68, label %69, label %73

; <label>:69:                                     ; preds = %61
  %70 = icmp ne i64 %65, 922337203685477580
  %71 = icmp sgt i32 %67, %59
  %72 = or i1 %70, %71
  br i1 %72, label %119, label %73

; <label>:73:                                     ; preds = %61, %69
  %74 = mul i64 %65, 10
  %75 = sext i32 %67 to i64
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i8, i8* %64, i64 1
  %78 = load i8, i8* %77, align 1, !tbaa !2
  %79 = zext i8 %78 to i64
  %80 = add nuw nsw i64 %79, 1
  %81 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1, !tbaa !2
  %83 = and i8 %82, 2
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %61

; <label>:85:                                     ; preds = %73
  store i8* %77, i8** %3, align 8, !tbaa !9
  br label %86

; <label>:86:                                     ; preds = %32, %22, %49, %85
  %87 = phi i32 [ 0, %85 ], [ 1, %49 ], [ 1, %22 ], [ 0, %32 ]
  %88 = phi i64 [ %76, %85 ], [ 0, %49 ], [ 0, %22 ], [ %40, %32 ]
  %89 = load i8*, i8** %3, align 8, !tbaa !9
  %90 = load i8, i8* %89, align 1, !tbaa !2
  %91 = zext i8 %90 to i64
  %92 = add nuw nsw i64 %91, 1
  %93 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1, !tbaa !2
  %95 = and i8 %94, 8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %109, label %97

; <label>:97:                                     ; preds = %86
  br label %98

; <label>:98:                                     ; preds = %97, %98
  %99 = phi i8* [ %100, %98 ], [ %89, %97 ]
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1, !tbaa !2
  %102 = zext i8 %101 to i64
  %103 = add nuw nsw i64 %102, 1
  %104 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1, !tbaa !2
  %106 = and i8 %105, 8
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %98

; <label>:108:                                    ; preds = %98
  store i8* %100, i8** %3, align 8, !tbaa !9
  br label %109

; <label>:109:                                    ; preds = %108, %86
  %110 = phi i8* [ %100, %108 ], [ %89, %86 ]
  %111 = phi i8 [ %101, %108 ], [ %90, %86 ]
  %112 = icmp eq i32 %87, 0
  %113 = icmp eq i8 %111, 0
  %114 = and i1 %112, %113
  br i1 %114, label %115, label %120

; <label>:115:                                    ; preds = %109
  %116 = icmp eq i32 %15, 0
  %117 = sub i64 0, %88
  %118 = select i1 %116, i64 %88, i64 %117
  store i64 %118, i64* %1, align 8, !tbaa !7
  br label %120

; <label>:119:                                    ; preds = %69
  store i8* %62, i8** %3, align 8, !tbaa !9
  br label %120

; <label>:120:                                    ; preds = %119, %109, %115
  %121 = phi i8* [ %110, %115 ], [ null, %109 ], [ null, %119 ]
  ret i8* %121
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @l_str2d(i8*, double* nocapture) unnamed_addr #2 {
  %3 = alloca [201 x i8], align 16
  %4 = tail call i8* @strpbrk(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #11
  %5 = icmp eq i8* %4, null
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %2
  %7 = load i8, i8* %4, align 1, !tbaa !2
  %8 = or i8 %7, 32
  %9 = icmp eq i8 %8, 110
  br i1 %9, label %38, label %10

; <label>:10:                                     ; preds = %2, %6
  %11 = tail call fastcc i8* @l_str2dloc(i8* %0, double* %1)
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds [201 x i8], [201 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 201, i8* nonnull %14) #9
  %15 = tail call i8* @strchr(i8* %0, i32 46) #11
  %16 = tail call i64 @strlen(i8* %0) #11
  %17 = icmp ugt i64 %16, 200
  %18 = icmp eq i8* %15, null
  %19 = or i1 %18, %17
  br i1 %19, label %37, label %20

; <label>:20:                                     ; preds = %13
  %21 = call i8* @strcpy(i8* nonnull %14, i8* %0) #9
  %22 = call %struct.lconv* @localeconv() #9
  %23 = getelementptr inbounds %struct.lconv, %struct.lconv* %22, i64 0, i32 0
  %24 = load i8*, i8** %23, align 8, !tbaa !11
  %25 = load i8, i8* %24, align 1, !tbaa !2
  %26 = ptrtoint i8* %15 to i64
  %27 = ptrtoint i8* %0 to i64
  %28 = sub i64 %26, %27
  %29 = getelementptr inbounds [201 x i8], [201 x i8]* %3, i64 0, i64 %28
  store i8 %25, i8* %29, align 1, !tbaa !2
  %30 = call fastcc i8* @l_str2dloc(i8* nonnull %14, double* %1)
  %31 = icmp eq i8* %30, null
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint [201 x i8]* %3 to i64
  %34 = sub i64 %32, %33
  %35 = getelementptr inbounds i8, i8* %0, i64 %34
  %36 = select i1 %31, i8* null, i8* %35
  call void @llvm.lifetime.end.p0i8(i64 201, i8* nonnull %14) #9
  br label %38

; <label>:37:                                     ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 201, i8* nonnull %14) #9
  br label %38

; <label>:38:                                     ; preds = %10, %20, %37, %6
  %39 = phi i8* [ null, %37 ], [ null, %6 ], [ %11, %10 ], [ %36, %20 ]
  ret i8* %39
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
  %5 = call fastcc i64 @tostringbuff(%struct.TValue* %1, i8* nonnull %4)
  %6 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %4, i64 %5) #9
  %7 = bitcast %struct.TValue* %1 to %struct.TString**
  store %struct.TString* %6, %struct.TString** %7, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.TString, %struct.TString* %6, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !13
  %10 = or i8 %9, 64
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  store i8 %10, i8* %11, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0i8(i64 50, i8* nonnull %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @tostringbuff(%struct.TValue* nocapture readonly, i8* nocapture) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !5
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.TValue* %0 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !2
  %9 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %8) #9
  %10 = sext i32 %9 to i64
  br label %29

; <label>:11:                                     ; preds = %2
  %12 = bitcast %struct.TValue* %0 to double*
  %13 = load double, double* %12, align 8, !tbaa !2
  %14 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), double %13) #9
  %15 = sext i32 %14 to i64
  %16 = tail call i64 @strspn(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #11
  %17 = getelementptr inbounds i8, i8* %1, i64 %16
  %18 = load i8, i8* %17, align 1, !tbaa !2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %11
  %21 = tail call %struct.lconv* @localeconv() #9
  %22 = getelementptr inbounds %struct.lconv, %struct.lconv* %21, i64 0, i32 0
  %23 = load i8*, i8** %22, align 8, !tbaa !11
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

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
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
  store i32 0, i32* %11, align 4, !tbaa !16
  %12 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 1
  store i32 0, i32* %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %4, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %13, align 8, !tbaa !19
  %14 = call i8* @strchr(i8* %1, i32 37) #11
  %15 = icmp eq i8* %14, null
  br i1 %15, label %183, label %16

; <label>:16:                                     ; preds = %3
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %19 = bitcast %struct.TValue* %6 to i8*
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %21 = bitcast %struct.TValue* %7 to i8*
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %23 = bitcast %struct.TValue* %8 to i8*
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 1
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %33 = bitcast %struct.TValue* %6 to i64*
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %37 = bitcast %struct.TValue* %7 to i64*
  %38 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %41 = bitcast %struct.TValue* %8 to i64*
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 8
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  br label %49

; <label>:49:                                     ; preds = %16, %179
  %50 = phi i8* [ %14, %16 ], [ %181, %179 ]
  %51 = phi i8* [ %1, %16 ], [ %180, %179 ]
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %51, i64 %54)
  %55 = getelementptr inbounds i8, i8* %50, i64 1
  %56 = load i8, i8* %55, align 1, !tbaa !2
  %57 = sext i8 %56 to i32
  switch i32 %57, label %177 [
    i32 115, label %58
    i32 99, label %76
    i32 100, label %92
    i32 73, label %108
    i32 102, label %123
    i32 112, label %138
    i32 85, label %157
    i32 37, label %176
  ]

; <label>:58:                                     ; preds = %49
  %59 = load i32, i32* %17, align 8
  %60 = icmp ult i32 %59, 41
  br i1 %60, label %61, label %66

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %28, align 8
  %63 = sext i32 %59 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = add i32 %59, 8
  store i32 %65, i32* %17, align 8
  br label %69

; <label>:66:                                     ; preds = %58
  %67 = load i8*, i8** %29, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %29, align 8
  br label %69

; <label>:69:                                     ; preds = %66, %61
  %70 = phi i8* [ %64, %61 ], [ %67, %66 ]
  %71 = bitcast i8* %70 to i8**
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  %74 = select i1 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %72
  %75 = call i64 @strlen(i8* %74) #11
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %74, i64 %75)
  br label %179

; <label>:76:                                     ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #9
  %77 = load i32, i32* %18, align 8
  %78 = icmp ult i32 %77, 41
  br i1 %78, label %79, label %84

; <label>:79:                                     ; preds = %76
  %80 = load i8*, i8** %30, align 8
  %81 = sext i32 %77 to i64
  %82 = getelementptr i8, i8* %80, i64 %81
  %83 = add i32 %77, 8
  store i32 %83, i32* %18, align 8
  br label %87

; <label>:84:                                     ; preds = %76
  %85 = load i8*, i8** %31, align 8
  %86 = getelementptr i8, i8* %85, i64 8
  store i8* %86, i8** %31, align 8
  br label %87

; <label>:87:                                     ; preds = %84, %79
  %88 = phi i8* [ %82, %79 ], [ %85, %84 ]
  %89 = bitcast i8* %88 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %5, align 1, !tbaa !2
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* nonnull %5, i64 1)
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #9
  br label %179

; <label>:92:                                     ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #9
  %93 = load i32, i32* %20, align 8
  %94 = icmp ult i32 %93, 41
  br i1 %94, label %95, label %100

; <label>:95:                                     ; preds = %92
  %96 = load i8*, i8** %32, align 8
  %97 = sext i32 %93 to i64
  %98 = getelementptr i8, i8* %96, i64 %97
  %99 = add i32 %93, 8
  store i32 %99, i32* %20, align 8
  br label %103

; <label>:100:                                    ; preds = %92
  %101 = load i8*, i8** %35, align 8
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %35, align 8
  br label %103

; <label>:103:                                    ; preds = %100, %95
  %104 = phi i8* [ %98, %95 ], [ %101, %100 ]
  %105 = bitcast i8* %104 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %33, align 8, !tbaa !2
  store i8 35, i8* %34, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #9
  br label %179

; <label>:108:                                    ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #9
  %109 = load i32, i32* %22, align 8
  %110 = icmp ult i32 %109, 41
  br i1 %110, label %111, label %116

; <label>:111:                                    ; preds = %108
  %112 = load i8*, i8** %36, align 8
  %113 = sext i32 %109 to i64
  %114 = getelementptr i8, i8* %112, i64 %113
  %115 = add i32 %109, 8
  store i32 %115, i32* %22, align 8
  br label %119

; <label>:116:                                    ; preds = %108
  %117 = load i8*, i8** %39, align 8
  %118 = getelementptr i8, i8* %117, i64 8
  store i8* %118, i8** %39, align 8
  br label %119

; <label>:119:                                    ; preds = %116, %111
  %120 = phi i8* [ %114, %111 ], [ %117, %116 ]
  %121 = bitcast i8* %120 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %37, align 8, !tbaa !2
  store i8 35, i8* %38, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #9
  br label %179

; <label>:123:                                    ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #9
  %124 = load i32, i32* %24, align 4
  %125 = icmp ult i32 %124, 161
  br i1 %125, label %126, label %131

; <label>:126:                                    ; preds = %123
  %127 = load i8*, i8** %40, align 8
  %128 = sext i32 %124 to i64
  %129 = getelementptr i8, i8* %127, i64 %128
  %130 = add i32 %124, 16
  store i32 %130, i32* %24, align 4
  br label %134

; <label>:131:                                    ; preds = %123
  %132 = load i8*, i8** %43, align 8
  %133 = getelementptr i8, i8* %132, i64 8
  store i8* %133, i8** %43, align 8
  br label %134

; <label>:134:                                    ; preds = %131, %126
  %135 = phi i8* [ %129, %126 ], [ %132, %131 ]
  %136 = bitcast i8* %135 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %41, align 8, !tbaa !2
  store i8 19, i8* %42, align 8, !tbaa !5
  call fastcc void @addnum2buff(%struct.BuffFS* nonnull %4, %struct.TValue* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #9
  br label %179

; <label>:138:                                    ; preds = %49
  %139 = call fastcc i8* @getbuff(%struct.BuffFS* nonnull %4, i64 32)
  %140 = load i32, i32* %25, align 8
  %141 = icmp ult i32 %140, 41
  br i1 %141, label %142, label %147

; <label>:142:                                    ; preds = %138
  %143 = load i8*, i8** %44, align 8
  %144 = sext i32 %140 to i64
  %145 = getelementptr i8, i8* %143, i64 %144
  %146 = add i32 %140, 8
  store i32 %146, i32* %25, align 8
  br label %150

; <label>:147:                                    ; preds = %138
  %148 = load i8*, i8** %45, align 8
  %149 = getelementptr i8, i8* %148, i64 8
  store i8* %149, i8** %45, align 8
  br label %150

; <label>:150:                                    ; preds = %147, %142
  %151 = phi i8* [ %145, %142 ], [ %148, %147 ]
  %152 = bitcast i8* %151 to i8**
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %139, i64 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %153) #9
  %155 = load i32, i32* %11, align 4, !tbaa !16
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %11, align 4, !tbaa !16
  br label %179

; <label>:157:                                    ; preds = %49
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #9
  %158 = load i32, i32* %27, align 8
  %159 = icmp ult i32 %158, 41
  br i1 %159, label %160, label %165

; <label>:160:                                    ; preds = %157
  %161 = load i8*, i8** %46, align 8
  %162 = sext i32 %158 to i64
  %163 = getelementptr i8, i8* %161, i64 %162
  %164 = add i32 %158, 8
  store i32 %164, i32* %27, align 8
  br label %168

; <label>:165:                                    ; preds = %157
  %166 = load i8*, i8** %48, align 8
  %167 = getelementptr i8, i8* %166, i64 8
  store i8* %167, i8** %48, align 8
  br label %168

; <label>:168:                                    ; preds = %165, %160
  %169 = phi i8* [ %163, %160 ], [ %166, %165 ]
  %170 = bitcast i8* %169 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @luaO_utf8esc(i8* nonnull %26, i64 %171)
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 0, %173
  %175 = getelementptr inbounds i8, i8* %47, i64 %174
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* nonnull %175, i64 %173)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #9
  br label %179

; <label>:176:                                    ; preds = %49
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1)
  br label %179

; <label>:177:                                    ; preds = %49
  %178 = sext i8 %56 to i32
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %178) #12
  unreachable

; <label>:179:                                    ; preds = %176, %168, %150, %134, %119, %103, %87, %69
  %180 = getelementptr inbounds i8, i8* %50, i64 2
  %181 = call i8* @strchr(i8* nonnull %180, i32 37) #11
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %49

; <label>:183:                                    ; preds = %179, %3
  %184 = phi i8* [ %1, %3 ], [ %180, %179 ]
  %185 = call i64 @strlen(i8* %184) #11
  call fastcc void @addstr2buff(%struct.BuffFS* nonnull %4, i8* %184, i64 %185)
  call fastcc void @clearbuff(%struct.BuffFS* nonnull %4)
  %186 = load i32, i32* %12, align 8, !tbaa !18
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %189

; <label>:188:                                    ; preds = %183
  call void @luaV_concat(%struct.lua_State* %0, i32 %186) #9
  br label %189

; <label>:189:                                    ; preds = %188, %183
  %190 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %191 = load %union.StackValue*, %union.StackValue** %190, align 8, !tbaa !20
  %192 = getelementptr inbounds %union.StackValue, %union.StackValue* %191, i64 -1, i32 0, i32 0, i32 0
  %193 = bitcast %struct.GCObject** %192 to i8**
  %194 = load i8*, i8** %193, align 8, !tbaa !2
  %195 = getelementptr inbounds i8, i8* %194, i64 24
  call void @llvm.lifetime.end.p0i8(i64 416, i8* nonnull %10) #9
  ret i8* %195
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @addstr2buff(%struct.BuffFS*, i8*, i64) unnamed_addr #2 {
  %4 = icmp ult i64 %2, 401
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %3
  %6 = tail call fastcc i8* @getbuff(%struct.BuffFS* %0, i64 %2)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* %1, i64 %2, i32 1, i1 false)
  %7 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !16
  %9 = trunc i64 %2 to i32
  %10 = add i32 %8, %9
  store i32 %10, i32* %7, align 4, !tbaa !16
  br label %12

; <label>:11:                                     ; preds = %3
  tail call fastcc void @clearbuff(%struct.BuffFS* %0)
  tail call fastcc void @pushstr(%struct.BuffFS* %0, i8* %1, i64 %2)
  br label %12

; <label>:12:                                     ; preds = %11, %5
  ret void
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @addnum2buff(%struct.BuffFS*, %struct.TValue* nocapture readonly) unnamed_addr #2 {
  %3 = tail call fastcc i8* @getbuff(%struct.BuffFS* %0, i64 50)
  %4 = tail call fastcc i64 @tostringbuff(%struct.TValue* %1, i8* nonnull %3)
  %5 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %6 = load i32, i32* %5, align 4, !tbaa !16
  %7 = trunc i64 %4 to i32
  %8 = add i32 %6, %7
  store i32 %8, i32* %5, align 4, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc nonnull i8* @getbuff(%struct.BuffFS*, i64) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !16
  %5 = sext i32 %4 to i64
  %6 = sub nsw i64 400, %5
  %7 = icmp ult i64 %6, %1
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call fastcc void @clearbuff(%struct.BuffFS* nonnull %0)
  br label %9

; <label>:9:                                      ; preds = %8, %2
  %10 = load i32, i32* %3, align 4, !tbaa !16
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 %11
  ret i8* %12
}

; Function Attrs: nounwind
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @clearbuff(%struct.BuffFS*) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 3, i64 0
  %3 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !16
  %5 = sext i32 %4 to i64
  tail call fastcc void @pushstr(%struct.BuffFS* %0, i8* nonnull %2, i64 %5)
  store i32 0, i32* %3, align 4, !tbaa !16
  ret void
}

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

; Function Attrs: nounwind
declare double @pow(double, double) local_unnamed_addr #7

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #10

declare hidden double @luaV_modf(%struct.lua_State*, double, double) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define internal fastcc i32 @isneg(i8** nocapture) unnamed_addr #4 {
  %2 = load i8*, i8** %0, align 8, !tbaa !9
  %3 = load i8, i8* %2, align 1, !tbaa !2
  switch i8 %3, label %8 [
    i8 45, label %5
    i8 43, label %4
  ]

; <label>:4:                                      ; preds = %1
  br label %5

; <label>:5:                                      ; preds = %1, %4
  %6 = phi i32 [ 0, %4 ], [ 1, %1 ]
  %7 = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %7, i8** %0, align 8, !tbaa !9
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i32 [ 0, %1 ], [ %6, %5 ]
  ret i32 %9
}

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i8* @l_str2dloc(i8*, double* nocapture) unnamed_addr #2 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #9
  %5 = call double @strtod(i8* %0, i8** nonnull %3) #9
  store double %5, double* %1, align 8, !tbaa !25
  %6 = load i8*, i8** %3, align 8, !tbaa !9
  %7 = icmp eq i8* %6, %0
  br i1 %7, label %34, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !tbaa !9
  %10 = load i8, i8* %9, align 1, !tbaa !2
  %11 = zext i8 %10 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1, !tbaa !2
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

; <label>:17:                                     ; preds = %8
  br label %18

; <label>:18:                                     ; preds = %17, %18
  %19 = phi i8* [ %20, %18 ], [ %9, %17 ]
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1, !tbaa !2
  %22 = zext i8 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  %24 = getelementptr inbounds [257 x i8], [257 x i8]* @luai_ctype_, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !2
  %26 = and i8 %25, 8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %18

; <label>:28:                                     ; preds = %18
  store i8* %20, i8** %3, align 8, !tbaa !9
  br label %29

; <label>:29:                                     ; preds = %28, %8
  %30 = phi i8* [ %20, %28 ], [ %9, %8 ]
  %31 = phi i8 [ %21, %28 ], [ %10, %8 ]
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8* %30, i8* null
  br label %34

; <label>:34:                                     ; preds = %2, %29
  %35 = phi i8* [ %33, %29 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #9
  ret i8* %35
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) local_unnamed_addr #7

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #7

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @pushstr(%struct.BuffFS* nocapture, i8*, i64) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 0
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 6
  %7 = bitcast %union.StackValue** %6 to %struct.TValue**
  %8 = load %struct.TValue*, %struct.TValue** %7, align 8, !tbaa !20
  %9 = tail call %struct.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %1, i64 %2) #9
  %10 = bitcast %struct.TValue* %8 to %struct.TString**
  store %struct.TString* %9, %struct.TString** %10, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.TString, %struct.TString* %9, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !13
  %13 = or i8 %12, 64
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  store i8 %13, i8* %14, align 8, !tbaa !5
  %15 = load %union.StackValue*, %union.StackValue** %6, align 8, !tbaa !20
  %16 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 1
  store %union.StackValue* %16, %union.StackValue** %6, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.BuffFS, %struct.BuffFS* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 8, !tbaa !18
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8, !tbaa !18
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds %union.StackValue, %union.StackValue* %15, i64 3
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 10
  %24 = load %union.StackValue*, %union.StackValue** %23, align 8, !tbaa !27
  %25 = icmp ugt %union.StackValue* %22, %24
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  tail call void @luaV_concat(%struct.lua_State* nonnull %5, i32 %19) #9
  store i32 1, i32* %17, align 8, !tbaa !18
  br label %27

; <label>:27:                                     ; preds = %26, %21, %3
  ret void
}

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!25 = !{!26, !26, i64 0}
!26 = !{!"double", !3, i64 0}
!27 = !{!21, !10, i64 48}
