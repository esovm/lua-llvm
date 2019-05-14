; ModuleID = 'lvm.c'
source_filename = "lvm.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TValue = type { %union.Value, i8 }
%union.Value = type { %struct.GCObject* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i8, i8, i16, %union.StackValue*, %struct.global_State*, %struct.CallInfo*, i32*, %union.StackValue*, %union.StackValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i64, i32, i32, i32, i32, i32 }
%struct.global_State = type { i8* (i8*, i8*, i64, i64)*, i8*, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32 (%struct.lua_State*)*, %struct.lua_State*, %struct.TString*, [25 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]], void (i8*, i8*, i32)*, i8* }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.TValue*, %union.Node*, %union.Node*, %struct.Table*, %struct.GCObject* }
%union.Node = type { %struct.NodeKey }
%struct.NodeKey = type { %union.Value, i8, i8, i32, %union.Value }
%struct.UpVal = type { %struct.GCObject*, i8, i8, %struct.TValue*, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.UpVal*, %struct.UpVal** }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, %union.anon.1, i16, i16 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.1 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%union.StackValue = type { %struct.TValue }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.anon = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"'__index' chain too long; possible loop\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"'__newindex' chain too long; possible loop\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"get length of\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"attempt to divide by zero\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"attempt to perform 'n%%0'\00", align 1
@luaV_execute.disptab = internal unnamed_addr constant [84 x i8*] [i8* blockaddress(@luaV_execute, %455), i8* blockaddress(@luaV_execute, %505), i8* blockaddress(@luaV_execute, %521), i8* blockaddress(@luaV_execute, %485), i8* blockaddress(@luaV_execute, %537), i8* blockaddress(@luaV_execute, %559), i8* blockaddress(@luaV_execute, %577), i8* blockaddress(@luaV_execute, %598), i8* blockaddress(@luaV_execute, %622), i8* blockaddress(@luaV_execute, %664), i8* blockaddress(@luaV_execute, %710), i8* blockaddress(@luaV_execute, %783), i8* blockaddress(@luaV_execute, %838), i8* blockaddress(@luaV_execute, %881), i8* blockaddress(@luaV_execute, %953), i8* blockaddress(@luaV_execute, %1049), i8* blockaddress(@luaV_execute, %1127), i8* blockaddress(@luaV_execute, %1193), i8* blockaddress(@luaV_execute, %1226), i8* blockaddress(@luaV_execute, %1279), i8* blockaddress(@luaV_execute, %1320), i8* blockaddress(@luaV_execute, %1359), i8* blockaddress(@luaV_execute, %1400), i8* blockaddress(@luaV_execute, %1439), i8* blockaddress(@luaV_execute, %1477), i8* blockaddress(@luaV_execute, %1515), i8* blockaddress(@luaV_execute, %1555), i8* blockaddress(@luaV_execute, %1615), i8* blockaddress(@luaV_execute, %1673), i8* blockaddress(@luaV_execute, %1733), i8* blockaddress(@luaV_execute, %1791), i8* blockaddress(@luaV_execute, %1839), i8* blockaddress(@luaV_execute, %1887), i8* blockaddress(@luaV_execute, %2333), i8* blockaddress(@luaV_execute, %2373), i8* blockaddress(@luaV_execute, %2413), i8* blockaddress(@luaV_execute, %2597), i8* blockaddress(@luaV_execute, %2643), i8* blockaddress(@luaV_execute, %1946), i8* blockaddress(@luaV_execute, %2004), i8* blockaddress(@luaV_execute, %2062), i8* blockaddress(@luaV_execute, %2120), i8* blockaddress(@luaV_execute, %2178), i8* blockaddress(@luaV_execute, %2226), i8* blockaddress(@luaV_execute, %2274), i8* blockaddress(@luaV_execute, %2453), i8* blockaddress(@luaV_execute, %2501), i8* blockaddress(@luaV_execute, %2549), i8* blockaddress(@luaV_execute, %2730), i8* blockaddress(@luaV_execute, %2681), i8* blockaddress(@luaV_execute, %2778), i8* blockaddress(@luaV_execute, %2812), i8* blockaddress(@luaV_execute, %2846), i8* blockaddress(@luaV_execute, %2876), i8* blockaddress(@luaV_execute, %2893), i8* blockaddress(@luaV_execute, %2915), i8* blockaddress(@luaV_execute, %2929), i8* blockaddress(@luaV_execute, %2940), i8* blockaddress(@luaV_execute, %2956), i8* blockaddress(@luaV_execute, %2986), i8* blockaddress(@luaV_execute, %3048), i8* blockaddress(@luaV_execute, %3110), i8* blockaddress(@luaV_execute, %3142), i8* blockaddress(@luaV_execute, %3188), i8* blockaddress(@luaV_execute, %3240), i8* blockaddress(@luaV_execute, %3292), i8* blockaddress(@luaV_execute, %3344), i8* blockaddress(@luaV_execute, %3396), i8* blockaddress(@luaV_execute, %3438), i8* blockaddress(@luaV_execute, %3489), i8* blockaddress(@luaV_execute, %3510), i8* blockaddress(@luaV_execute, %3579), i8* blockaddress(@luaV_execute, %3616), i8* blockaddress(@luaV_execute, %3643), i8* blockaddress(@luaV_execute, %3681), i8* blockaddress(@luaV_execute, %3740), i8* blockaddress(@luaV_execute, %3860), i8* blockaddress(@luaV_execute, %3873), i8* blockaddress(@luaV_execute, %3896), i8* blockaddress(@luaV_execute, %3928), i8* blockaddress(@luaV_execute, %4011), i8* blockaddress(@luaV_execute, %4038), i8* blockaddress(@luaV_execute, %4053), i8* blockaddress(@luaV_execute, %4068)], align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"'for' step is zero\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"initial value\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_tonumber_(%struct.TValue* nocapture readonly, double* nocapture) local_unnamed_addr #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #10
  %5 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !2
  %7 = icmp eq i8 %6, 35
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = bitcast %struct.TValue* %0 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !6
  %11 = sitofp i64 %10 to double
  store double %11, double* %1, align 8, !tbaa !7
  br label %45

; <label>:12:                                     ; preds = %2
  %13 = and i8 %6, 15
  %14 = icmp eq i8 %13, 4
  br i1 %14, label %15, label %45

; <label>:15:                                     ; preds = %12
  %16 = bitcast %struct.TValue* %0 to i8**
  %17 = load i8*, i8** %16, align 8, !tbaa !6
  %18 = getelementptr inbounds i8, i8* %17, i64 24
  %19 = call i64 @luaO_str2num(i8* nonnull %18, %struct.TValue* nonnull %3) #10
  %20 = bitcast %struct.TValue* %0 to %struct.TString**
  %21 = load %struct.TString*, %struct.TString** %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !6
  %24 = icmp eq i8 %23, 20
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 4
  %27 = load i8, i8* %26, align 1, !tbaa !6
  %28 = zext i8 %27 to i64
  br label %32

; <label>:29:                                     ; preds = %15
  %30 = getelementptr inbounds %struct.TString, %struct.TString* %21, i64 0, i32 6, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !6
  br label %32

; <label>:32:                                     ; preds = %29, %25
  %33 = phi i64 [ %28, %25 ], [ %31, %29 ]
  %34 = add i64 %33, 1
  %35 = icmp eq i64 %19, %34
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !2
  %39 = icmp eq i8 %38, 35
  %40 = bitcast %struct.TValue* %3 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = sitofp i64 %41 to double
  %43 = bitcast i64 %41 to double
  %44 = select i1 %39, double %42, double %43
  store double %44, double* %1, align 8, !tbaa !7
  br label %45

; <label>:45:                                     ; preds = %12, %32, %36, %8
  %46 = phi i32 [ 1, %8 ], [ 1, %36 ], [ 0, %32 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #10
  ret i32 %46
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_flttointeger(double, i64* nocapture, i32) local_unnamed_addr #0 {
  %4 = tail call double @llvm.floor.f64(double %0)
  %5 = fcmp une double %4, %0
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %19, label %8

; <label>:8:                                      ; preds = %6
  %9 = icmp sgt i32 %2, 1
  %10 = fadd double %4, 1.000000e+00
  %11 = select i1 %9, double %10, double %4
  br label %12

; <label>:12:                                     ; preds = %8, %3
  %13 = phi double [ %4, %3 ], [ %11, %8 ]
  %14 = fcmp oge double %13, 0xC3E0000000000000
  %15 = fcmp olt double %13, 0x43E0000000000000
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %12
  %18 = fptosi double %13 to i64
  store i64 %18, i64* %1, align 8, !tbaa !9
  br label %19

; <label>:19:                                     ; preds = %12, %17, %6
  %20 = phi i32 [ 0, %6 ], [ 0, %12 ], [ 1, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.floor.f64(double) #3

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_tointegerns(%struct.TValue* nocapture readonly, i64* nocapture, i32) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  switch i8 %5, label %13 [
    i8 19, label %6
    i8 35, label %10
  ]

; <label>:6:                                      ; preds = %3
  %7 = bitcast %struct.TValue* %0 to double*
  %8 = load double, double* %7, align 8, !tbaa !6
  %9 = tail call i32 @luaV_flttointeger(double %8, i64* %1, i32 %2)
  br label %13

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.TValue* %0 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !6
  store i64 %12, i64* %1, align 8, !tbaa !9
  br label %13

; <label>:13:                                     ; preds = %3, %10, %6
  %14 = phi i32 [ %9, %6 ], [ 1, %10 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_tointeger(%struct.TValue* nocapture readonly, i64* nocapture, i32) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #10
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !2
  %8 = and i8 %7, 15
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %10, label %32

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.TValue* %0 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, i8* %12, i64 24
  %14 = call i64 @luaO_str2num(i8* nonnull %13, %struct.TValue* nonnull %4) #10
  %15 = bitcast %struct.TValue* %0 to %struct.TString**
  %16 = load %struct.TString*, %struct.TString** %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %16, i64 0, i32 1
  %18 = load i8, i8* %17, align 8, !tbaa !6
  %19 = icmp eq i8 %18, 20
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.TString, %struct.TString* %16, i64 0, i32 4
  %22 = load i8, i8* %21, align 1, !tbaa !6
  %23 = zext i8 %22 to i64
  br label %27

; <label>:24:                                     ; preds = %10
  %25 = getelementptr inbounds %struct.TString, %struct.TString* %16, i64 0, i32 6, i32 0
  %26 = load i64, i64* %25, align 8, !tbaa !6
  br label %27

; <label>:27:                                     ; preds = %24, %20
  %28 = phi i64 [ %23, %20 ], [ %26, %24 ]
  %29 = add i64 %28, 1
  %30 = icmp eq i64 %14, %29
  %31 = select i1 %30, %struct.TValue* %4, %struct.TValue* %0
  br label %32

; <label>:32:                                     ; preds = %27, %3
  %33 = phi %struct.TValue* [ %0, %3 ], [ %31, %27 ]
  %34 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %33, i64* %1, i32 %2)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #10
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_finishget(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, %struct.TValue* readnone) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br label %7

; <label>:7:                                      ; preds = %5, %62
  %8 = phi %struct.TValue* [ %1, %5 ], [ %39, %62 ]
  %9 = phi %struct.TValue* [ %4, %5 ], [ %63, %62 ]
  %10 = phi i32 [ 0, %5 ], [ %64, %62 ]
  %11 = icmp eq %struct.TValue* %9, null
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %7
  %13 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %8, i32 0) #10
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i64 0, i32 1
  %15 = load i8, i8* %14, align 8, !tbaa !2
  %16 = and i8 %15, 15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %38, !prof !11

; <label>:18:                                     ; preds = %12
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #11
  unreachable

; <label>:19:                                     ; preds = %7
  %20 = bitcast %struct.TValue* %8 to %struct.Table**
  %21 = load %struct.Table*, %struct.Table** %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i64 0, i32 9
  %23 = load %struct.Table*, %struct.Table** %22, align 8, !tbaa !6
  %24 = icmp eq %struct.Table* %23, null
  br i1 %24, label %36, label %25

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %23, i64 0, i32 3
  %27 = load i8, i8* %26, align 2, !tbaa !12
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

; <label>:30:                                     ; preds = %25
  %31 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 40, i64 0
  %33 = load %struct.TString*, %struct.TString** %32, align 8, !tbaa !21
  %34 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %23, i32 0, %struct.TString* %33) #10
  %35 = icmp eq %struct.TValue* %34, null
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %25, %19, %30
  %37 = getelementptr inbounds %union.StackValue, %union.StackValue* %3, i64 0, i32 0, i32 1
  store i8 0, i8* %37, align 8, !tbaa !6
  br label %67

; <label>:38:                                     ; preds = %30, %12
  %39 = phi %struct.TValue* [ %13, %12 ], [ %34, %30 ]
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i64 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !2
  %42 = and i8 %41, 15
  %43 = icmp eq i8 %42, 6
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %38
  tail call void @luaT_callTMres(%struct.lua_State* %0, %struct.TValue* %39, %struct.TValue* %8, %struct.TValue* %2, %union.StackValue* %3) #10
  br label %67

; <label>:45:                                     ; preds = %38
  %46 = icmp eq i8 %41, 69
  br i1 %46, label %47, label %62

; <label>:47:                                     ; preds = %45
  %48 = bitcast %struct.TValue* %39 to %struct.Table**
  %49 = load %struct.Table*, %struct.Table** %48, align 8, !tbaa !6
  %50 = tail call %struct.TValue* @luaH_get(%struct.Table* %49, %struct.TValue* %2) #10
  %51 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i64 0, i32 1
  %52 = load i8, i8* %51, align 8, !tbaa !2
  %53 = and i8 %52, 15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55

; <label>:55:                                     ; preds = %47
  %56 = getelementptr inbounds %struct.TValue, %struct.TValue* %50, i64 0, i32 1
  %57 = bitcast %struct.TValue* %50 to i64*
  %58 = bitcast %union.StackValue* %3 to i64*
  %59 = load i64, i64* %57, align 8
  store i64 %59, i64* %58, align 8
  %60 = load i8, i8* %56, align 8, !tbaa !2
  %61 = getelementptr inbounds %union.StackValue, %union.StackValue* %3, i64 0, i32 0, i32 1
  store i8 %60, i8* %61, align 8, !tbaa !2
  br label %67

; <label>:62:                                     ; preds = %45, %47
  %63 = phi %struct.TValue* [ %50, %47 ], [ null, %45 ]
  %64 = add nuw nsw i32 %10, 1
  %65 = icmp ult i32 %64, 2000
  br i1 %65, label %7, label %66

; <label>:66:                                     ; preds = %62
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #11
  unreachable

; <label>:67:                                     ; preds = %55, %44, %36
  ret void
}

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #4

declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #2

declare hidden void @luaT_callTMres(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %union.StackValue*) local_unnamed_addr #2

declare hidden %struct.TValue* @luaH_get(%struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaV_finishset(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br label %7

; <label>:7:                                      ; preds = %5, %111
  %8 = phi %struct.TValue* [ %1, %5 ], [ %70, %111 ]
  %9 = phi %struct.TValue* [ %4, %5 ], [ %112, %111 ]
  %10 = phi i32 [ 0, %5 ], [ %113, %111 ]
  %11 = icmp eq %struct.TValue* %9, null
  br i1 %11, label %62, label %12

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 0, i32 0
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %14, i64 2, i32 1
  %16 = bitcast i8* %15 to %struct.Table**
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !22
  %18 = icmp eq %struct.Table* %17, null
  br i1 %18, label %30, label %19

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 3
  %21 = load i8, i8* %20, align 2, !tbaa !12
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %19
  %25 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 40, i64 1
  %27 = load %struct.TString*, %struct.TString** %26, align 8, !tbaa !21
  %28 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %17, i32 1, %struct.TString* %27) #10
  %29 = icmp eq %struct.TValue* %28, null
  br i1 %29, label %30, label %69

; <label>:30:                                     ; preds = %19, %12, %24
  %31 = bitcast %struct.GCObject* %14 to %struct.Table*
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  %33 = load i8, i8* %32, align 8, !tbaa !2
  %34 = icmp eq i8 %33, 32
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %30
  %36 = tail call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %31, %struct.TValue* %2) #10
  br label %37

; <label>:37:                                     ; preds = %35, %30
  %38 = phi %struct.TValue* [ %36, %35 ], [ %9, %30 ]
  %39 = bitcast %struct.TValue* %3 to i64*
  %40 = bitcast %struct.TValue* %38 to i64*
  %41 = load i64, i64* %39, align 8
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %43 = load i8, i8* %42, align 8, !tbaa !2
  %44 = getelementptr inbounds %struct.TValue, %struct.TValue* %38, i64 0, i32 1
  store i8 %43, i8* %44, align 8, !tbaa !2
  %45 = getelementptr inbounds %struct.Table, %struct.Table* %31, i64 0, i32 3
  store i8 0, i8* %45, align 2, !tbaa !12
  %46 = load i8, i8* %42, align 8, !tbaa !2
  %47 = and i8 %46, 64
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %116, label %49

; <label>:49:                                     ; preds = %37
  %50 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %14, i64 0, i32 2
  %51 = load i8, i8* %50, align 1, !tbaa !6
  %52 = and i8 %51, 32
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %116, label %54

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %56 = load %struct.GCObject*, %struct.GCObject** %55, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %56, i64 0, i32 2
  %58 = load i8, i8* %57, align 1, !tbaa !23
  %59 = and i8 %58, 24
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %116, label %61

; <label>:61:                                     ; preds = %54
  tail call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* nonnull %14) #10
  br label %116

; <label>:62:                                     ; preds = %7
  %63 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %8, i32 1) #10
  %64 = getelementptr inbounds %struct.TValue, %struct.TValue* %63, i64 0, i32 1
  %65 = load i8, i8* %64, align 8, !tbaa !2
  %66 = and i8 %65, 15
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69, !prof !11

; <label>:68:                                     ; preds = %62
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #11
  unreachable

; <label>:69:                                     ; preds = %24, %62
  %70 = phi %struct.TValue* [ %63, %62 ], [ %28, %24 ]
  %71 = getelementptr inbounds %struct.TValue, %struct.TValue* %70, i64 0, i32 1
  %72 = load i8, i8* %71, align 8, !tbaa !2
  %73 = and i8 %72, 15
  %74 = icmp eq i8 %73, 6
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %69
  tail call void @luaT_callTM(%struct.lua_State* %0, %struct.TValue* %70, %struct.TValue* %8, %struct.TValue* %2, %struct.TValue* %3) #10
  br label %116

; <label>:76:                                     ; preds = %69
  %77 = icmp eq i8 %72, 69
  br i1 %77, label %78, label %111

; <label>:78:                                     ; preds = %76
  %79 = bitcast %struct.TValue* %70 to %struct.Table**
  %80 = load %struct.Table*, %struct.Table** %79, align 8, !tbaa !6
  %81 = tail call %struct.TValue* @luaH_get(%struct.Table* %80, %struct.TValue* %2) #10
  %82 = getelementptr inbounds %struct.TValue, %struct.TValue* %81, i64 0, i32 1
  %83 = load i8, i8* %82, align 8, !tbaa !2
  %84 = and i8 %83, 15
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %111, label %86

; <label>:86:                                     ; preds = %78
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %81, i64 0, i32 1
  %88 = bitcast %struct.TValue* %3 to i64*
  %89 = bitcast %struct.TValue* %81 to i64*
  %90 = load i64, i64* %88, align 8
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %92 = load i8, i8* %91, align 8, !tbaa !2
  store i8 %92, i8* %87, align 8, !tbaa !2
  %93 = load i8, i8* %91, align 8, !tbaa !2
  %94 = and i8 %93, 64
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %116, label %96

; <label>:96:                                     ; preds = %86
  %97 = getelementptr inbounds %struct.TValue, %struct.TValue* %70, i64 0, i32 0, i32 0
  %98 = load %struct.GCObject*, %struct.GCObject** %97, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %98, i64 0, i32 2
  %100 = load i8, i8* %99, align 1, !tbaa !23
  %101 = and i8 %100, 32
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %116, label %103

; <label>:103:                                    ; preds = %96
  %104 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %105 = load %struct.GCObject*, %struct.GCObject** %104, align 8, !tbaa !6
  %106 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %105, i64 0, i32 2
  %107 = load i8, i8* %106, align 1, !tbaa !23
  %108 = and i8 %107, 24
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %116, label %110

; <label>:110:                                    ; preds = %103
  tail call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %98) #10
  br label %116

; <label>:111:                                    ; preds = %76, %78
  %112 = phi %struct.TValue* [ %81, %78 ], [ null, %76 ]
  %113 = add nuw nsw i32 %10, 1
  %114 = icmp ult i32 %113, 2000
  br i1 %114, label %7, label %115

; <label>:115:                                    ; preds = %111
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #11
  unreachable

; <label>:116:                                    ; preds = %61, %37, %49, %54, %75, %103, %96, %86, %110
  ret void
}

declare hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

declare hidden void @luaT_callTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 3
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !2
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %8
  %14 = tail call fastcc i32 @LTnum(%struct.TValue* nonnull %1, %struct.TValue* nonnull %2)
  br label %17

; <label>:15:                                     ; preds = %8, %3
  %16 = tail call fastcc i32 @lessthanothers(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2)
  br label %17

; <label>:17:                                     ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LTnum(%struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !2
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.TValue* %0 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !2
  %11 = icmp eq i8 %10, 35
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %6
  %13 = bitcast %struct.TValue* %1 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !6
  %15 = icmp slt i64 %8, %14
  %16 = zext i1 %15 to i32
  br label %36

; <label>:17:                                     ; preds = %6
  %18 = bitcast %struct.TValue* %1 to double*
  %19 = load double, double* %18, align 8, !tbaa !6
  %20 = tail call fastcc i32 @LTintfloat(i64 %8, double %19)
  br label %36

; <label>:21:                                     ; preds = %2
  %22 = bitcast %struct.TValue* %0 to double*
  %23 = load double, double* %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %25 = load i8, i8* %24, align 8, !tbaa !2
  %26 = icmp eq i8 %25, 19
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %21
  %28 = bitcast %struct.TValue* %1 to double*
  %29 = load double, double* %28, align 8, !tbaa !6
  %30 = fcmp olt double %23, %29
  %31 = zext i1 %30 to i32
  br label %36

; <label>:32:                                     ; preds = %21
  %33 = bitcast %struct.TValue* %1 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !6
  %35 = tail call fastcc i32 @LTfloatint(double %23, i64 %34)
  br label %36

; <label>:36:                                     ; preds = %27, %32, %12, %17
  %37 = phi i32 [ %16, %12 ], [ %20, %17 ], [ %31, %27 ], [ %35, %32 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lessthanothers(%struct.lua_State*, %struct.TValue*, %struct.TValue*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %20

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !2
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %8
  %14 = bitcast %struct.TValue* %1 to %struct.TString**
  %15 = load %struct.TString*, %struct.TString** %14, align 8, !tbaa !6
  %16 = bitcast %struct.TValue* %2 to %struct.TString**
  %17 = load %struct.TString*, %struct.TString** %16, align 8, !tbaa !6
  %18 = tail call fastcc i32 @l_strcmp(%struct.TString* %15, %struct.TString* %17)
  %19 = lshr i32 %18, 31
  br label %22

; <label>:20:                                     ; preds = %8, %3
  %21 = tail call i32 @luaT_callorderTM(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2, i32 20) #10
  br label %22

; <label>:22:                                     ; preds = %20, %13
  %23 = phi i32 [ %19, %13 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 3
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !2
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %8
  %14 = tail call fastcc i32 @LEnum(%struct.TValue* nonnull %1, %struct.TValue* nonnull %2)
  br label %17

; <label>:15:                                     ; preds = %8, %3
  %16 = tail call fastcc i32 @lessequalothers(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2)
  br label %17

; <label>:17:                                     ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LEnum(%struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !2
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %6, label %21

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.TValue* %0 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !2
  %11 = icmp eq i8 %10, 35
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %6
  %13 = bitcast %struct.TValue* %1 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !6
  %15 = icmp sle i64 %8, %14
  %16 = zext i1 %15 to i32
  br label %36

; <label>:17:                                     ; preds = %6
  %18 = bitcast %struct.TValue* %1 to double*
  %19 = load double, double* %18, align 8, !tbaa !6
  %20 = tail call fastcc i32 @LEintfloat(i64 %8, double %19)
  br label %36

; <label>:21:                                     ; preds = %2
  %22 = bitcast %struct.TValue* %0 to double*
  %23 = load double, double* %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %25 = load i8, i8* %24, align 8, !tbaa !2
  %26 = icmp eq i8 %25, 19
  br i1 %26, label %27, label %32

; <label>:27:                                     ; preds = %21
  %28 = bitcast %struct.TValue* %1 to double*
  %29 = load double, double* %28, align 8, !tbaa !6
  %30 = fcmp ole double %23, %29
  %31 = zext i1 %30 to i32
  br label %36

; <label>:32:                                     ; preds = %21
  %33 = bitcast %struct.TValue* %1 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !6
  %35 = tail call fastcc i32 @LEfloatint(double %23, i64 %34)
  br label %36

; <label>:36:                                     ; preds = %27, %32, %12, %17
  %37 = phi i32 [ %16, %12 ], [ %20, %17 ], [ %31, %27 ], [ %35, %32 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lessequalothers(%struct.lua_State*, %struct.TValue*, %struct.TValue*) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %21

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !2
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %8
  %14 = bitcast %struct.TValue* %1 to %struct.TString**
  %15 = load %struct.TString*, %struct.TString** %14, align 8, !tbaa !6
  %16 = bitcast %struct.TValue* %2 to %struct.TString**
  %17 = load %struct.TString*, %struct.TString** %16, align 8, !tbaa !6
  %18 = tail call fastcc i32 @l_strcmp(%struct.TString* %15, %struct.TString* %17)
  %19 = icmp slt i32 %18, 1
  %20 = zext i1 %19 to i32
  br label %23

; <label>:21:                                     ; preds = %8, %3
  %22 = tail call i32 @luaT_callorderTM(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2, i32 21) #10
  br label %23

; <label>:23:                                     ; preds = %21, %13
  %24 = phi i32 [ %20, %13 ], [ %22, %21 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !2
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !2
  %10 = xor i8 %9, %7
  %11 = and i8 %10, 63
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %45, label %13

; <label>:13:                                     ; preds = %3
  %14 = and i8 %7, 15
  %15 = and i8 %9, 15
  %16 = icmp eq i8 %14, %15
  %17 = icmp eq i8 %14, 3
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %195

; <label>:19:                                     ; preds = %13
  %20 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #10
  %21 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #10
  %22 = icmp eq i8 %7, 35
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %19
  %24 = bitcast %struct.TValue* %1 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !6
  store i64 %25, i64* %4, align 8, !tbaa !9
  br label %29

; <label>:26:                                     ; preds = %19
  %27 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %1, i64* nonnull %4, i32 0)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = load i8, i8* %8, align 8, !tbaa !2
  %31 = icmp eq i8 %30, 35
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %29
  %33 = bitcast %struct.TValue* %2 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !6
  store i64 %34, i64* %5, align 8, !tbaa !9
  br label %38

; <label>:35:                                     ; preds = %29
  %36 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2, i64* nonnull %5, i32 0)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

; <label>:38:                                     ; preds = %35, %32
  %39 = load i64, i64* %4, align 8, !tbaa !9
  %40 = load i64, i64* %5, align 8, !tbaa !9
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  br label %43

; <label>:43:                                     ; preds = %35, %26, %38
  %44 = phi i32 [ 0, %35 ], [ 0, %26 ], [ %42, %38 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #10
  br label %195

; <label>:45:                                     ; preds = %3
  %46 = trunc i8 %7 to i6
  switch i6 %46, label %163 [
    i6 0, label %195
    i6 -29, label %47
    i6 19, label %54
    i6 1, label %61
    i6 2, label %68
    i6 -26, label %75
    i6 20, label %82
    i6 -28, label %89
    i6 7, label %95
    i6 5, label %129
  ]

; <label>:47:                                     ; preds = %45
  %48 = bitcast %struct.TValue* %1 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !6
  %50 = bitcast %struct.TValue* %2 to i64*
  %51 = load i64, i64* %50, align 8, !tbaa !6
  %52 = icmp eq i64 %49, %51
  %53 = zext i1 %52 to i32
  br label %195

; <label>:54:                                     ; preds = %45
  %55 = bitcast %struct.TValue* %1 to double*
  %56 = load double, double* %55, align 8, !tbaa !6
  %57 = bitcast %struct.TValue* %2 to double*
  %58 = load double, double* %57, align 8, !tbaa !6
  %59 = fcmp oeq double %56, %58
  %60 = zext i1 %59 to i32
  br label %195

; <label>:61:                                     ; preds = %45
  %62 = bitcast %struct.TValue* %1 to i32*
  %63 = load i32, i32* %62, align 8, !tbaa !6
  %64 = bitcast %struct.TValue* %2 to i32*
  %65 = load i32, i32* %64, align 8, !tbaa !6
  %66 = icmp eq i32 %63, %65
  %67 = zext i1 %66 to i32
  br label %195

; <label>:68:                                     ; preds = %45
  %69 = bitcast %struct.TValue* %1 to i8**
  %70 = load i8*, i8** %69, align 8, !tbaa !6
  %71 = bitcast %struct.TValue* %2 to i8**
  %72 = load i8*, i8** %71, align 8, !tbaa !6
  %73 = icmp eq i8* %70, %72
  %74 = zext i1 %73 to i32
  br label %195

; <label>:75:                                     ; preds = %45
  %76 = bitcast %struct.TValue* %1 to i32 (%struct.lua_State*)**
  %77 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %76, align 8, !tbaa !6
  %78 = bitcast %struct.TValue* %2 to i32 (%struct.lua_State*)**
  %79 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %78, align 8, !tbaa !6
  %80 = icmp eq i32 (%struct.lua_State*)* %77, %79
  %81 = zext i1 %80 to i32
  br label %195

; <label>:82:                                     ; preds = %45
  %83 = bitcast %struct.TValue* %1 to %struct.TString**
  %84 = load %struct.TString*, %struct.TString** %83, align 8, !tbaa !6
  %85 = bitcast %struct.TValue* %2 to %struct.TString**
  %86 = load %struct.TString*, %struct.TString** %85, align 8, !tbaa !6
  %87 = icmp eq %struct.TString* %84, %86
  %88 = zext i1 %87 to i32
  br label %195

; <label>:89:                                     ; preds = %45
  %90 = bitcast %struct.TValue* %1 to %struct.TString**
  %91 = load %struct.TString*, %struct.TString** %90, align 8, !tbaa !6
  %92 = bitcast %struct.TValue* %2 to %struct.TString**
  %93 = load %struct.TString*, %struct.TString** %92, align 8, !tbaa !6
  %94 = tail call i32 @luaS_eqlngstr(%struct.TString* %91, %struct.TString* %93) #10
  br label %195

; <label>:95:                                     ; preds = %45
  %96 = bitcast %struct.TValue* %1 to %struct.Udata**
  %97 = load %struct.Udata*, %struct.Udata** %96, align 8, !tbaa !6
  %98 = bitcast %struct.TValue* %2 to %struct.Udata**
  %99 = load %struct.Udata*, %struct.Udata** %98, align 8, !tbaa !6
  %100 = icmp eq %struct.Udata* %97, %99
  br i1 %100, label %195, label %101

; <label>:101:                                    ; preds = %95
  %102 = icmp eq %struct.lua_State* %0, null
  br i1 %102, label %195, label %103

; <label>:103:                                    ; preds = %101
  %104 = getelementptr inbounds %struct.Udata, %struct.Udata* %97, i64 0, i32 5
  %105 = load %struct.Table*, %struct.Table** %104, align 8, !tbaa !6
  %106 = icmp eq %struct.Table* %105, null
  br i1 %106, label %119, label %107

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds %struct.Table, %struct.Table* %105, i64 0, i32 3
  %109 = load i8, i8* %108, align 2, !tbaa !12
  %110 = and i8 %109, 32
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %119

; <label>:112:                                    ; preds = %107
  %113 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %114 = load %struct.global_State*, %struct.global_State** %113, align 8, !tbaa !16
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i64 0, i32 40, i64 5
  %116 = load %struct.TString*, %struct.TString** %115, align 8, !tbaa !21
  %117 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %105, i32 5, %struct.TString* %116) #10
  %118 = icmp eq %struct.TValue* %117, null
  br i1 %118, label %119, label %178

; <label>:119:                                    ; preds = %107, %103, %112
  %120 = load %struct.Udata*, %struct.Udata** %98, align 8, !tbaa !6
  %121 = getelementptr inbounds %struct.Udata, %struct.Udata* %120, i64 0, i32 5
  %122 = load %struct.Table*, %struct.Table** %121, align 8, !tbaa !6
  %123 = icmp eq %struct.Table* %122, null
  br i1 %123, label %195, label %124

; <label>:124:                                    ; preds = %119
  %125 = getelementptr inbounds %struct.Table, %struct.Table* %122, i64 0, i32 3
  %126 = load i8, i8* %125, align 2, !tbaa !12
  %127 = and i8 %126, 32
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %170, label %195

; <label>:129:                                    ; preds = %45
  %130 = bitcast %struct.TValue* %1 to %struct.Table**
  %131 = load %struct.Table*, %struct.Table** %130, align 8, !tbaa !6
  %132 = bitcast %struct.TValue* %2 to %struct.Table**
  %133 = load %struct.Table*, %struct.Table** %132, align 8, !tbaa !6
  %134 = icmp eq %struct.Table* %131, %133
  br i1 %134, label %195, label %135

; <label>:135:                                    ; preds = %129
  %136 = icmp eq %struct.lua_State* %0, null
  br i1 %136, label %195, label %137

; <label>:137:                                    ; preds = %135
  %138 = getelementptr inbounds %struct.Table, %struct.Table* %131, i64 0, i32 9
  %139 = load %struct.Table*, %struct.Table** %138, align 8, !tbaa !6
  %140 = icmp eq %struct.Table* %139, null
  br i1 %140, label %153, label %141

; <label>:141:                                    ; preds = %137
  %142 = getelementptr inbounds %struct.Table, %struct.Table* %139, i64 0, i32 3
  %143 = load i8, i8* %142, align 2, !tbaa !12
  %144 = and i8 %143, 32
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %153

; <label>:146:                                    ; preds = %141
  %147 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %148 = load %struct.global_State*, %struct.global_State** %147, align 8, !tbaa !16
  %149 = getelementptr inbounds %struct.global_State, %struct.global_State* %148, i64 0, i32 40, i64 5
  %150 = load %struct.TString*, %struct.TString** %149, align 8, !tbaa !21
  %151 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %139, i32 5, %struct.TString* %150) #10
  %152 = icmp eq %struct.TValue* %151, null
  br i1 %152, label %153, label %178

; <label>:153:                                    ; preds = %141, %137, %146
  %154 = load %struct.Table*, %struct.Table** %132, align 8, !tbaa !6
  %155 = getelementptr inbounds %struct.Table, %struct.Table* %154, i64 0, i32 9
  %156 = load %struct.Table*, %struct.Table** %155, align 8, !tbaa !6
  %157 = icmp eq %struct.Table* %156, null
  br i1 %157, label %195, label %158

; <label>:158:                                    ; preds = %153
  %159 = getelementptr inbounds %struct.Table, %struct.Table* %156, i64 0, i32 3
  %160 = load i8, i8* %159, align 2, !tbaa !12
  %161 = and i8 %160, 32
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %170, label %195

; <label>:163:                                    ; preds = %45
  %164 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0, i32 0
  %165 = load %struct.GCObject*, %struct.GCObject** %164, align 8, !tbaa !6
  %166 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  %167 = load %struct.GCObject*, %struct.GCObject** %166, align 8, !tbaa !6
  %168 = icmp eq %struct.GCObject* %165, %167
  %169 = zext i1 %168 to i32
  br label %195

; <label>:170:                                    ; preds = %158, %124
  %171 = phi %struct.Table* [ %122, %124 ], [ %156, %158 ]
  %172 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %173 = load %struct.global_State*, %struct.global_State** %172, align 8, !tbaa !16
  %174 = getelementptr inbounds %struct.global_State, %struct.global_State* %173, i64 0, i32 40, i64 5
  %175 = load %struct.TString*, %struct.TString** %174, align 8, !tbaa !21
  %176 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %171, i32 5, %struct.TString* %175) #10
  %177 = icmp eq %struct.TValue* %176, null
  br i1 %177, label %195, label %178

; <label>:178:                                    ; preds = %112, %146, %170
  %179 = phi %struct.TValue* [ %176, %170 ], [ %117, %112 ], [ %151, %146 ]
  %180 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %181 = load %union.StackValue*, %union.StackValue** %180, align 8, !tbaa !25
  tail call void @luaT_callTMres(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %179, %struct.TValue* nonnull %1, %struct.TValue* nonnull %2, %union.StackValue* %181) #10
  %182 = bitcast %union.StackValue** %180 to %struct.TValue**
  %183 = load %struct.TValue*, %struct.TValue** %182, align 8, !tbaa !25
  %184 = getelementptr inbounds %struct.TValue, %struct.TValue* %183, i64 0, i32 1
  %185 = load i8, i8* %184, align 8, !tbaa !6
  %186 = and i8 %185, 15
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %195, label %188

; <label>:188:                                    ; preds = %178
  %189 = icmp eq i8 %185, 1
  br i1 %189, label %190, label %195

; <label>:190:                                    ; preds = %188
  %191 = bitcast %struct.TValue* %183 to i32*
  %192 = load i32, i32* %191, align 8, !tbaa !6
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i32
  br label %195

; <label>:195:                                    ; preds = %158, %153, %124, %119, %178, %190, %188, %170, %135, %129, %101, %95, %45, %13, %163, %89, %82, %75, %68, %61, %54, %47, %43
  %196 = phi i32 [ %44, %43 ], [ %169, %163 ], [ %94, %89 ], [ %88, %82 ], [ %81, %75 ], [ %74, %68 ], [ %67, %61 ], [ %60, %54 ], [ %53, %47 ], [ 0, %13 ], [ 1, %45 ], [ 1, %95 ], [ 0, %101 ], [ 1, %129 ], [ 0, %135 ], [ 0, %170 ], [ 0, %178 ], [ 1, %188 ], [ %194, %190 ], [ 0, %119 ], [ 0, %124 ], [ 0, %153 ], [ 0, %158 ]
  ret i32 %196
}

declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca [40 x i8], align 16
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  br label %6

; <label>:6:                                      ; preds = %127, %2
  %7 = phi i32 [ %1, %2 ], [ %130, %127 ]
  %8 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !25
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -2
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %9, i64 0, i32 0
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -2, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !6
  %13 = and i8 %12, 15
  %14 = add nsw i8 %13, -3
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !tbaa !6
  %20 = trunc i8 %19 to i4
  switch i4 %20, label %23 [
    i4 4, label %25
    i4 3, label %21
  ]

; <label>:21:                                     ; preds = %16
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %17) #10
  %22 = load i8, i8* %18, align 8, !tbaa !6
  br label %25

; <label>:23:                                     ; preds = %6, %16
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %10, %struct.TValue* nonnull %24, %union.StackValue* nonnull %9, i32 22) #10
  br label %127

; <label>:25:                                     ; preds = %16, %21
  %26 = phi i8 [ %19, %16 ], [ %22, %21 ]
  %27 = icmp eq i8 %26, 84
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %25
  %29 = bitcast %struct.TValue* %17 to %struct.TString**
  %30 = load %struct.TString*, %struct.TString** %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.TString, %struct.TString* %30, i64 0, i32 4
  %32 = load i8, i8* %31, align 1, !tbaa !6
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39

; <label>:34:                                     ; preds = %28
  %35 = load i8, i8* %11, align 8, !tbaa !6
  %36 = and i8 %35, 15
  %37 = icmp eq i8 %36, 3
  br i1 %37, label %38, label %127

; <label>:38:                                     ; preds = %34
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %10) #10
  br label %127

; <label>:39:                                     ; preds = %28, %25
  %40 = load i8, i8* %11, align 8, !tbaa !6
  %41 = icmp eq i8 %40, 84
  br i1 %41, label %42, label %52

; <label>:42:                                     ; preds = %39
  %43 = bitcast %union.StackValue* %9 to %struct.TString**
  %44 = load %struct.TString*, %struct.TString** %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.TString, %struct.TString* %44, i64 0, i32 4
  %46 = load i8, i8* %45, align 1, !tbaa !6
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %42
  %49 = bitcast %struct.TValue* %17 to i64*
  %50 = bitcast %union.StackValue* %9 to i64*
  %51 = load i64, i64* %49, align 8
  store i64 %51, i64* %50, align 8
  store i8 %26, i8* %11, align 8, !tbaa !2
  br label %127

; <label>:52:                                     ; preds = %42, %39
  %53 = bitcast %struct.TValue* %17 to %struct.TString**
  %54 = load %struct.TString*, %struct.TString** %53, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.TString, %struct.TString* %54, i64 0, i32 1
  %56 = load i8, i8* %55, align 8, !tbaa !6
  %57 = icmp eq i8 %56, 20
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %52
  %59 = getelementptr inbounds %struct.TString, %struct.TString* %54, i64 0, i32 4
  %60 = load i8, i8* %59, align 1, !tbaa !6
  %61 = zext i8 %60 to i64
  br label %65

; <label>:62:                                     ; preds = %52
  %63 = getelementptr inbounds %struct.TString, %struct.TString* %54, i64 0, i32 6, i32 0
  %64 = load i64, i64* %63, align 8, !tbaa !6
  br label %65

; <label>:65:                                     ; preds = %62, %58
  %66 = phi i64 [ %61, %58 ], [ %64, %62 ]
  %67 = icmp sgt i32 %7, 1
  br i1 %67, label %68, label %107

; <label>:68:                                     ; preds = %65
  %69 = sext i32 %7 to i64
  br label %70

; <label>:70:                                     ; preds = %68, %100
  %71 = phi i64 [ 1, %68 ], [ %102, %100 ]
  %72 = phi i32 [ 1, %68 ], [ %103, %100 ]
  %73 = phi i64 [ %66, %68 ], [ %101, %100 ]
  %74 = sub nsw i64 0, %71
  %75 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %74
  %76 = getelementptr inbounds %union.StackValue, %union.StackValue* %75, i64 -1
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 0, i32 0, i32 1
  %78 = load i8, i8* %77, align 8, !tbaa !6
  %79 = trunc i8 %78 to i4
  switch i4 %79, label %105 [
    i4 4, label %82
    i4 3, label %80
  ]

; <label>:80:                                     ; preds = %70
  %81 = getelementptr inbounds %union.StackValue, %union.StackValue* %76, i64 0, i32 0
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %81) #10
  br label %82

; <label>:82:                                     ; preds = %70, %80
  %83 = bitcast %union.StackValue* %76 to %struct.TString**
  %84 = load %struct.TString*, %struct.TString** %83, align 8, !tbaa !6
  %85 = getelementptr inbounds %struct.TString, %struct.TString* %84, i64 0, i32 1
  %86 = load i8, i8* %85, align 8, !tbaa !6
  %87 = icmp eq i8 %86, 20
  br i1 %87, label %88, label %92

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds %struct.TString, %struct.TString* %84, i64 0, i32 4
  %90 = load i8, i8* %89, align 1, !tbaa !6
  %91 = zext i8 %90 to i64
  br label %95

; <label>:92:                                     ; preds = %82
  %93 = getelementptr inbounds %struct.TString, %struct.TString* %84, i64 0, i32 6, i32 0
  %94 = load i64, i64* %93, align 8, !tbaa !6
  br label %95

; <label>:95:                                     ; preds = %92, %88
  %96 = phi i64 [ %91, %88 ], [ %94, %92 ]
  %97 = sub i64 9223372036854775807, %73
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %100, label %99, !prof !26

; <label>:99:                                     ; preds = %95
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #11
  unreachable

; <label>:100:                                    ; preds = %95
  %101 = add i64 %96, %73
  %102 = add nuw nsw i64 %71, 1
  %103 = add nuw nsw i32 %72, 1
  %104 = icmp slt i64 %102, %69
  br i1 %104, label %70, label %107

; <label>:105:                                    ; preds = %70
  %106 = trunc i64 %71 to i32
  br label %107

; <label>:107:                                    ; preds = %100, %105, %65
  %108 = phi i64 [ %66, %65 ], [ %73, %105 ], [ %101, %100 ]
  %109 = phi i32 [ 1, %65 ], [ %106, %105 ], [ %103, %100 ]
  %110 = icmp ult i64 %108, 41
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %107
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #10
  call fastcc void @copy2buff(%union.StackValue* nonnull %8, i32 %109, i8* nonnull %5)
  %112 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %5, i64 %108) #10
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #10
  br label %117

; <label>:113:                                    ; preds = %107
  %114 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %0, i64 %108) #10
  %115 = getelementptr inbounds %struct.TString, %struct.TString* %114, i64 1
  %116 = bitcast %struct.TString* %115 to i8*
  call fastcc void @copy2buff(%union.StackValue* nonnull %8, i32 %109, i8* nonnull %116)
  br label %117

; <label>:117:                                    ; preds = %113, %111
  %118 = phi %struct.TString* [ %112, %111 ], [ %114, %113 ]
  %119 = zext i32 %109 to i64
  %120 = sub nsw i64 0, %119
  %121 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %120, i32 0
  %122 = bitcast %struct.TValue* %121 to %struct.TString**
  store %struct.TString* %118, %struct.TString** %122, align 8, !tbaa !6
  %123 = getelementptr inbounds %struct.TString, %struct.TString* %118, i64 0, i32 1
  %124 = load i8, i8* %123, align 8, !tbaa !27
  %125 = or i8 %124, 64
  %126 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %120, i32 0, i32 1
  store i8 %125, i8* %126, align 8, !tbaa !2
  br label %127

; <label>:127:                                    ; preds = %34, %38, %117, %48, %23
  %128 = phi i32 [ 2, %48 ], [ %109, %117 ], [ 2, %23 ], [ 2, %34 ], [ 2, %38 ]
  %129 = add nsw i32 %128, -1
  %130 = sub nsw i32 %7, %129
  %131 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !25
  %132 = sext i32 %129 to i64
  %133 = sub nsw i64 0, %132
  %134 = getelementptr inbounds %union.StackValue, %union.StackValue* %131, i64 %133
  store %union.StackValue* %134, %union.StackValue** %4, align 8, !tbaa !25
  %135 = icmp sgt i32 %130, 1
  br i1 %135, label %6, label %136

; <label>:136:                                    ; preds = %127
  ret void
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #2

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @copy2buff(%union.StackValue* nocapture readonly, i32, i8* nocapture) unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  br label %5

; <label>:5:                                      ; preds = %22, %3
  %6 = phi i64 [ %29, %22 ], [ %4, %3 ]
  %7 = phi i64 [ %28, %22 ], [ 0, %3 ]
  %8 = sub nsw i64 0, %6
  %9 = getelementptr inbounds %union.StackValue, %union.StackValue* %0, i64 %8, i32 0, i32 0, i32 0
  %10 = bitcast %struct.GCObject** %9 to %struct.TString**
  %11 = load %struct.TString*, %struct.TString** %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.TString, %struct.TString* %11, i64 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !6
  %14 = icmp eq i8 %13, 20
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.TString, %struct.TString* %11, i64 0, i32 4
  %17 = load i8, i8* %16, align 1, !tbaa !6
  %18 = zext i8 %17 to i64
  br label %22

; <label>:19:                                     ; preds = %5
  %20 = getelementptr inbounds %struct.TString, %struct.TString* %11, i64 0, i32 6, i32 0
  %21 = load i64, i64* %20, align 8, !tbaa !6
  br label %22

; <label>:22:                                     ; preds = %19, %15
  %23 = phi i64 [ %18, %15 ], [ %21, %19 ]
  %24 = getelementptr inbounds i8, i8* %2, i64 %7
  %25 = bitcast %struct.GCObject** %9 to i8**
  %26 = load i8*, i8** %25, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, i8* %26, i64 24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* nonnull %27, i64 %23, i32 1, i1 false)
  %28 = add i64 %23, %7
  %29 = add nsw i64 %6, -1
  %30 = icmp sgt i64 %6, 1
  br i1 %30, label %5, label %31

; <label>:31:                                     ; preds = %22
  ret void
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaV_objlen(%struct.lua_State*, %union.StackValue*, %struct.TValue*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  %6 = trunc i8 %5 to i6
  switch i6 %6, label %44 [
    i6 5, label %7
    i6 20, label %29
    i6 -28, label %37
  ]

; <label>:7:                                      ; preds = %3
  %8 = bitcast %struct.TValue* %2 to %struct.Table**
  %9 = load %struct.Table*, %struct.Table** %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %9, i64 0, i32 9
  %11 = load %struct.Table*, %struct.Table** %10, align 8, !tbaa !22
  %12 = icmp eq %struct.Table* %11, null
  br i1 %12, label %25, label %13

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %11, i64 0, i32 3
  %15 = load i8, i8* %14, align 2, !tbaa !12
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %20 = load %struct.global_State*, %struct.global_State** %19, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %20, i64 0, i32 40, i64 4
  %22 = load %struct.TString*, %struct.TString** %21, align 8, !tbaa !21
  %23 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %11, i32 4, %struct.TString* %22) #10
  %24 = icmp eq %struct.TValue* %23, null
  br i1 %24, label %25, label %51

; <label>:25:                                     ; preds = %13, %7, %18
  %26 = tail call i64 @luaH_getn(%struct.Table* %9) #10
  %27 = bitcast %union.StackValue* %1 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !6
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0, i32 1
  store i8 35, i8* %28, align 8, !tbaa !2
  br label %53

; <label>:29:                                     ; preds = %3
  %30 = bitcast %struct.TValue* %2 to %struct.TString**
  %31 = load %struct.TString*, %struct.TString** %30, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.TString, %struct.TString* %31, i64 0, i32 4
  %33 = load i8, i8* %32, align 1, !tbaa !6
  %34 = zext i8 %33 to i64
  %35 = bitcast %union.StackValue* %1 to i64*
  store i64 %34, i64* %35, align 8, !tbaa !6
  %36 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0, i32 1
  store i8 35, i8* %36, align 8, !tbaa !2
  br label %53

; <label>:37:                                     ; preds = %3
  %38 = bitcast %struct.TValue* %2 to %struct.TString**
  %39 = load %struct.TString*, %struct.TString** %38, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.TString, %struct.TString* %39, i64 0, i32 6, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !6
  %42 = bitcast %union.StackValue* %1 to i64*
  store i64 %41, i64* %42, align 8, !tbaa !6
  %43 = getelementptr inbounds %union.StackValue, %union.StackValue* %1, i64 0, i32 0, i32 1
  store i8 35, i8* %43, align 8, !tbaa !2
  br label %53

; <label>:44:                                     ; preds = %3
  %45 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* nonnull %2, i32 4) #10
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i64 0, i32 1
  %47 = load i8, i8* %46, align 8, !tbaa !2
  %48 = and i8 %47, 15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51, !prof !11

; <label>:50:                                     ; preds = %44
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* nonnull %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #11
  unreachable

; <label>:51:                                     ; preds = %18, %44
  %52 = phi %struct.TValue* [ %45, %44 ], [ %23, %18 ]
  tail call void @luaT_callTMres(%struct.lua_State* %0, %struct.TValue* %52, %struct.TValue* nonnull %2, %struct.TValue* nonnull %2, %union.StackValue* %1) #10
  br label %53

; <label>:53:                                     ; preds = %25, %51, %37, %29
  ret void
}

declare hidden i64 @luaH_getn(%struct.Table*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i64 @luaV_idiv(%struct.lua_State*, i64, i64) local_unnamed_addr #0 {
  %4 = add i64 %2, 1
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %6, label %11, !prof !11

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %6
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #11
  unreachable

; <label>:9:                                      ; preds = %6
  %10 = sub i64 0, %1
  br label %20

; <label>:11:                                     ; preds = %3
  %12 = sdiv i64 %1, %2
  %13 = srem i64 %1, %2
  %14 = xor i64 %2, %1
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %11
  %17 = icmp ne i64 %13, 0
  %18 = sext i1 %17 to i64
  %19 = add nsw i64 %12, %18
  ret i64 %19

; <label>:20:                                     ; preds = %11, %9
  %21 = phi i64 [ %10, %9 ], [ %12, %11 ]
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) local_unnamed_addr #0 {
  %4 = add i64 %2, 1
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %6, label %9, !prof !11

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %6
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #11
  unreachable

; <label>:9:                                      ; preds = %3
  %10 = srem i64 %1, %2
  %11 = icmp ne i64 %10, 0
  %12 = xor i64 %10, %2
  %13 = icmp slt i64 %12, 0
  %14 = and i1 %11, %13
  %15 = select i1 %14, i64 %2, i64 0
  %16 = add nsw i64 %15, %10
  br label %17

; <label>:17:                                     ; preds = %9, %6
  %18 = phi i64 [ 0, %6 ], [ %16, %9 ]
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define hidden double @luaV_modf(%struct.lua_State* nocapture readnone, double, double) local_unnamed_addr #0 {
  %4 = tail call double @fmod(double %1, double %2) #10
  %5 = fcmp ogt double %4, 0.000000e+00
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = fcmp olt double %2, 0.000000e+00
  br i1 %7, label %12, label %14

; <label>:8:                                      ; preds = %3
  %9 = fcmp olt double %4, 0.000000e+00
  %10 = fcmp ogt double %2, 0.000000e+00
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %8, %6
  %13 = fadd double %4, %2
  br label %14

; <label>:14:                                     ; preds = %12, %8, %6
  %15 = phi double [ %13, %12 ], [ %4, %6 ], [ %4, %8 ]
  ret double %15
}

; Function Attrs: nounwind
declare double @fmod(double, double) local_unnamed_addr #5

; Function Attrs: norecurse nounwind readnone uwtable
define hidden i64 @luaV_shiftl(i64, i64) local_unnamed_addr #6 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %9

; <label>:4:                                      ; preds = %2
  %5 = icmp slt i64 %1, -63
  %6 = sub nsw i64 0, %1
  %7 = lshr i64 %0, %6
  %8 = select i1 %5, i64 0, i64 %7
  ret i64 %8

; <label>:9:                                      ; preds = %2
  %10 = icmp sgt i64 %1, 63
  %11 = shl i64 %0, %1
  %12 = select i1 %10, i64 0, i64 %11
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_finishOp(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8, !tbaa !29
  %4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i64 0, i32 0
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !30
  %6 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 1
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i64 0, i32 4
  %8 = bitcast %union.anon* %7 to i32**
  %9 = load i32*, i32** %8, align 8, !tbaa !6
  %10 = getelementptr inbounds i32, i32* %9, i64 -1
  %11 = load i32, i32* %10, align 4, !tbaa !31
  %12 = trunc i32 %11 to i7
  switch i7 %12, label %74 [
    i7 19, label %13
    i7 20, label %13
    i7 21, label %13
    i7 24, label %13
    i7 25, label %13
    i7 22, label %13
    i7 23, label %13
    i7 38, label %13
    i7 39, label %13
    i7 40, label %13
    i7 43, label %13
    i7 44, label %13
    i7 33, label %13
    i7 34, label %13
    i7 35, label %13
    i7 45, label %13
    i7 46, label %13
    i7 47, label %13
    i7 36, label %13
    i7 48, label %13
    i7 49, label %13
    i7 41, label %13
    i7 42, label %13
    i7 50, label %13
    i7 51, label %13
    i7 53, label %13
    i7 9, label %13
    i7 10, label %13
    i7 11, label %13
    i7 12, label %13
    i7 18, label %13
    i7 59, label %27
    i7 60, label %27
    i7 63, label %27
    i7 -64, label %27
    i7 -63, label %27
    i7 -62, label %27
    i7 58, label %27
    i7 54, label %51
  ]

; <label>:13:                                     ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %14 = lshr i32 %11, 7
  %15 = and i32 %14, 255
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 %16
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %19 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !25
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1
  store %union.StackValue* %20, %union.StackValue** %18, align 8, !tbaa !25
  %21 = bitcast %union.StackValue* %20 to i64*
  %22 = bitcast %union.StackValue* %17 to i64*
  %23 = load i64, i64* %21, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1, i32 0, i32 1
  %25 = load i8, i8* %24, align 8, !tbaa !2
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %17, i64 0, i32 0, i32 1
  store i8 %25, i8* %26, align 8, !tbaa !2
  br label %74

; <label>:27:                                     ; preds = %1, %1, %1, %1, %1, %1, %1
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %29 = load %union.StackValue*, %union.StackValue** %28, align 8, !tbaa !25
  %30 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 -1, i32 0, i32 1
  %31 = load i8, i8* %30, align 8, !tbaa !6
  %32 = and i8 %31, 15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

; <label>:34:                                     ; preds = %27
  %35 = icmp eq i8 %31, 1
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %34
  %37 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 -1, i32 0, i32 0
  %38 = bitcast %union.Value* %37 to i32*
  %39 = load i32, i32* %38, align 8, !tbaa !6
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  br label %42

; <label>:42:                                     ; preds = %34, %36, %27
  %43 = phi i32 [ 0, %27 ], [ 1, %34 ], [ %41, %36 ]
  %44 = getelementptr inbounds %union.StackValue, %union.StackValue* %29, i64 -1
  store %union.StackValue* %44, %union.StackValue** %28, align 8, !tbaa !25
  %45 = lshr i32 %11, 15
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %74, label %48

; <label>:48:                                     ; preds = %42
  %49 = load i32*, i32** %8, align 8, !tbaa !6
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32* %50, i32** %8, align 8, !tbaa !6
  br label %74

; <label>:51:                                     ; preds = %1
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %53 = load %union.StackValue*, %union.StackValue** %52, align 8, !tbaa !25
  %54 = lshr i32 %11, 7
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds %union.StackValue, %union.StackValue* %53, i64 -2
  %57 = zext i32 %55 to i64
  %58 = getelementptr inbounds %union.StackValue, %union.StackValue* %6, i64 %57
  %59 = ptrtoint %union.StackValue* %56 to i64
  %60 = ptrtoint %union.StackValue* %58 to i64
  %61 = sub i64 %59, %60
  %62 = lshr exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %union.StackValue, %union.StackValue* %53, i64 -3, i32 0
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %53, i64 -1, i32 0
  %66 = bitcast %struct.TValue* %65 to i64*
  %67 = bitcast %struct.TValue* %64 to i64*
  %68 = load i64, i64* %66, align 8
  store i64 %68, i64* %67, align 8
  %69 = getelementptr inbounds %union.StackValue, %union.StackValue* %53, i64 -1, i32 0, i32 1
  %70 = load i8, i8* %69, align 8, !tbaa !2
  %71 = getelementptr inbounds %union.StackValue, %union.StackValue* %53, i64 -3, i32 0, i32 1
  store i8 %70, i8* %71, align 8, !tbaa !2
  %72 = icmp sgt i32 %63, 1
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %51
  store %union.StackValue* %56, %union.StackValue** %52, align 8, !tbaa !25
  tail call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %63)
  br label %74

; <label>:74:                                     ; preds = %51, %73, %48, %42, %1, %13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_execute(%struct.lua_State*, %struct.CallInfo*) #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %26 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %27 = bitcast %struct.CallInfo* %1 to %struct.LClosure***
  %28 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %29 = bitcast %union.anon* %28 to %struct.anon*
  %30 = bitcast %union.anon* %28 to i32**
  %31 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %32 = bitcast %union.StackValue** %31 to i64*
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %34 = bitcast %union.StackValue** %33 to i64*
  %35 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %36 = bitcast %union.StackValue** %35 to i64*
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %38 = bitcast %union.StackValue** %37 to i64*
  %39 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %40 = bitcast i64* %39 to i32*
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %42 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %43 = bitcast i64* %42 to i32*
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %46 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %47 = bitcast %union.StackValue** %46 to i64*
  %48 = bitcast %union.StackValue** %45 to i64*
  %49 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %50 = bitcast i64* %49 to i32*
  %51 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %52 = bitcast i64* %51 to i32*
  %53 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %54 = bitcast %union.StackValue** %53 to i64*
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %56 = bitcast %union.StackValue** %55 to i64*
  %57 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %58 = bitcast i64* %57 to i32*
  %59 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %60 = bitcast %union.StackValue** %59 to i64*
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %62 = bitcast %union.StackValue** %61 to i64*
  %63 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %64 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %65 = bitcast %union.StackValue** %64 to i64*
  %66 = bitcast %union.StackValue** %63 to i64*
  %67 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %68 = bitcast i64* %67 to i32*
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %71 = bitcast %union.StackValue** %70 to i64*
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %73 = bitcast %union.StackValue** %72 to i64*
  %74 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %75 = bitcast i64* %74 to i32*
  %76 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %77 = bitcast i64* %76 to i32*
  %78 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %79 = bitcast %union.StackValue** %78 to i64*
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %81 = bitcast %union.StackValue** %80 to i64*
  %82 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %83 = bitcast i64* %82 to i32*
  %84 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %85 = bitcast %union.StackValue** %84 to i64*
  %86 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %87 = bitcast %union.StackValue** %86 to i64*
  %88 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %89 = bitcast i64* %88 to i32*
  %90 = bitcast %struct.TValue* %3 to i64*
  %91 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %92 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %93 = bitcast %union.StackValue** %92 to i64*
  %94 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %95 = bitcast %union.StackValue** %94 to i64*
  %96 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %97 = bitcast i64* %96 to i32*
  %98 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %99 = bitcast %union.StackValue** %98 to i64*
  %100 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %101 = bitcast %union.StackValue** %100 to i64*
  %102 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %103 = bitcast i64* %102 to i32*
  %104 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %105 = bitcast %union.StackValue** %104 to i64*
  %106 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %107 = bitcast %union.StackValue** %106 to i64*
  %108 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %109 = bitcast i64* %108 to i32*
  %110 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %111 = bitcast %union.StackValue** %110 to i64*
  %112 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %113 = bitcast %union.StackValue** %112 to i64*
  %114 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %115 = bitcast i64* %114 to i32*
  %116 = bitcast %struct.TValue* %4 to i64*
  %117 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %118 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %119 = bitcast %union.StackValue** %118 to i64*
  %120 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %121 = bitcast %union.StackValue** %120 to i64*
  %122 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %123 = bitcast i64* %122 to i32*
  %124 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %125 = bitcast %union.StackValue** %124 to i64*
  %126 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %127 = bitcast %union.StackValue** %126 to i64*
  %128 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %129 = bitcast i64* %128 to i32*
  %130 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %131 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %132 = bitcast %union.StackValue** %131 to i64*
  %133 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %134 = bitcast %union.StackValue** %133 to i64*
  %135 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %136 = bitcast i64* %135 to i32*
  %137 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %138 = bitcast %union.StackValue** %137 to i64*
  %139 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %140 = bitcast %union.StackValue** %139 to i64*
  %141 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %142 = bitcast i64* %141 to i32*
  %143 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %144 = bitcast %union.StackValue** %143 to i64*
  %145 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %146 = bitcast %union.StackValue** %145 to i64*
  %147 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %148 = bitcast i64* %147 to i32*
  %149 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %150 = bitcast %union.StackValue** %149 to i64*
  %151 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %152 = bitcast %union.StackValue** %151 to i64*
  %153 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %154 = bitcast i64* %153 to i32*
  %155 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %156 = bitcast %union.StackValue** %155 to i64*
  %157 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %158 = bitcast %union.StackValue** %157 to i64*
  %159 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %160 = bitcast i64* %159 to i32*
  %161 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %162 = bitcast %union.StackValue** %161 to i64*
  %163 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %164 = bitcast %union.StackValue** %163 to i64*
  %165 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %166 = bitcast i64* %165 to i32*
  %167 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %168 = bitcast %union.StackValue** %167 to i64*
  %169 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %170 = bitcast %union.StackValue** %169 to i64*
  %171 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %172 = bitcast i64* %171 to i32*
  %173 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %174 = bitcast %union.StackValue** %173 to i64*
  %175 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %176 = bitcast %union.StackValue** %175 to i64*
  %177 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %178 = bitcast i64* %177 to i32*
  %179 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %180 = bitcast %union.StackValue** %179 to i64*
  %181 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %182 = bitcast %union.StackValue** %181 to i64*
  %183 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %184 = bitcast i64* %183 to i32*
  %185 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %186 = bitcast %union.StackValue** %185 to i64*
  %187 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %188 = bitcast %union.StackValue** %187 to i64*
  %189 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %190 = bitcast i64* %189 to i32*
  %191 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %192 = bitcast %union.StackValue** %191 to i64*
  %193 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %194 = bitcast %union.StackValue** %193 to i64*
  %195 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %196 = bitcast i64* %195 to i32*
  %197 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %198 = bitcast %union.StackValue** %197 to i64*
  %199 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %200 = bitcast %union.StackValue** %199 to i64*
  %201 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %202 = bitcast i64* %201 to i32*
  %203 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %204 = bitcast %union.StackValue** %203 to i64*
  %205 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %206 = bitcast %union.StackValue** %205 to i64*
  %207 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %208 = bitcast i64* %207 to i32*
  %209 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %210 = bitcast %union.StackValue** %209 to i64*
  %211 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %212 = bitcast %union.StackValue** %211 to i64*
  %213 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %214 = bitcast i64* %213 to i32*
  %215 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %216 = bitcast %union.StackValue** %215 to i64*
  %217 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %218 = bitcast %union.StackValue** %217 to i64*
  %219 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %220 = bitcast i64* %219 to i32*
  %221 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %222 = bitcast %union.StackValue** %221 to i64*
  %223 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %224 = bitcast %union.StackValue** %223 to i64*
  %225 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %226 = bitcast i64* %225 to i32*
  %227 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %228 = bitcast %union.StackValue** %227 to i64*
  %229 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %230 = bitcast %union.StackValue** %229 to i64*
  %231 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %232 = bitcast i64* %231 to i32*
  %233 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %234 = bitcast %union.StackValue** %233 to i64*
  %235 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %236 = bitcast %union.StackValue** %235 to i64*
  %237 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %238 = bitcast i64* %237 to i32*
  %239 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %240 = bitcast %union.StackValue** %239 to i64*
  %241 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %242 = bitcast %union.StackValue** %241 to i64*
  %243 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %244 = bitcast i64* %243 to i32*
  %245 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %246 = bitcast %union.StackValue** %245 to i64*
  %247 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %248 = bitcast %union.StackValue** %247 to i64*
  %249 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %250 = bitcast i64* %249 to i32*
  %251 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %252 = bitcast %union.StackValue** %251 to i64*
  %253 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %254 = bitcast %union.StackValue** %253 to i64*
  %255 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %256 = bitcast i64* %255 to i32*
  %257 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %258 = bitcast %union.StackValue** %257 to i64*
  %259 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %260 = bitcast %union.StackValue** %259 to i64*
  %261 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %262 = bitcast i64* %261 to i32*
  %263 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %264 = bitcast %union.StackValue** %263 to i64*
  %265 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %266 = bitcast %union.StackValue** %265 to i64*
  %267 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %268 = bitcast i64* %267 to i32*
  %269 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %270 = bitcast %union.StackValue** %269 to i64*
  %271 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %272 = bitcast %union.StackValue** %271 to i64*
  %273 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %274 = bitcast i64* %273 to i32*
  %275 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %276 = bitcast %union.StackValue** %275 to i64*
  %277 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %278 = bitcast %union.StackValue** %277 to i64*
  %279 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %280 = bitcast i64* %279 to i32*
  %281 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %282 = bitcast %union.StackValue** %281 to i64*
  %283 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %284 = bitcast %union.StackValue** %283 to i64*
  %285 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %286 = bitcast i64* %285 to i32*
  %287 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %288 = bitcast %union.StackValue** %287 to i64*
  %289 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %290 = bitcast %union.StackValue** %289 to i64*
  %291 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %292 = bitcast i64* %291 to i32*
  %293 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %294 = bitcast %union.StackValue** %293 to i64*
  %295 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %296 = bitcast %union.StackValue** %295 to i64*
  %297 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %298 = bitcast i64* %297 to i32*
  %299 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %300 = bitcast %union.StackValue** %299 to i64*
  %301 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %302 = bitcast %union.StackValue** %301 to i64*
  %303 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %304 = bitcast i64* %303 to i32*
  %305 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %306 = bitcast %union.StackValue** %305 to i64*
  %307 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %308 = bitcast %union.StackValue** %307 to i64*
  %309 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %310 = bitcast i64* %309 to i32*
  %311 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %312 = bitcast i64* %311 to i32*
  %313 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %314 = bitcast i64* %313 to i32*
  %315 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %316 = bitcast %union.StackValue** %315 to i64*
  %317 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %318 = bitcast %union.StackValue** %317 to i64*
  %319 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %320 = bitcast i64* %319 to i32*
  %321 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %322 = bitcast %union.StackValue** %321 to i64*
  %323 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %324 = bitcast %union.StackValue** %323 to i64*
  %325 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %326 = bitcast i64* %325 to i32*
  %327 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %328 = bitcast %union.StackValue** %327 to i64*
  %329 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %330 = bitcast %union.StackValue** %329 to i64*
  %331 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %332 = bitcast i64* %331 to i32*
  %333 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %334 = bitcast %union.StackValue** %333 to i64*
  %335 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %336 = bitcast %union.StackValue** %335 to i64*
  %337 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %338 = bitcast i64* %337 to i32*
  %339 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %340 = bitcast i64* %339 to i32*
  %341 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %342 = bitcast i64* %341 to i32*
  %343 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %344 = bitcast i64* %343 to i32*
  %345 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %346 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %347 = bitcast i64* %346 to i32*
  %348 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %349 = bitcast %union.StackValue** %348 to i64*
  %350 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %351 = bitcast %union.StackValue** %350 to i64*
  %352 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %353 = bitcast %union.StackValue** %352 to i64*
  %354 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %355 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %356 = bitcast i64* %355 to i32*
  %357 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %358 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %359 = bitcast i64* %358 to i32*
  %360 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %361 = bitcast %union.StackValue** %360 to i64*
  %362 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %363 = bitcast %union.StackValue** %362 to i64*
  %364 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %365 = bitcast i64* %364 to i32*
  %366 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %367 = bitcast %union.StackValue** %366 to i64*
  %368 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %369 = bitcast %union.StackValue** %368 to i64*
  %370 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %371 = bitcast i64* %370 to i32*
  %372 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %373 = bitcast %union.StackValue** %372 to i64*
  %374 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %375 = bitcast %union.StackValue** %374 to i64*
  %376 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %377 = bitcast i64* %376 to i32*
  %378 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %379 = bitcast %union.StackValue** %378 to i64*
  %380 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %381 = bitcast %union.StackValue** %380 to i64*
  %382 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %383 = bitcast i64* %382 to i32*
  %384 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %385 = bitcast %union.StackValue** %384 to i64*
  %386 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %387 = bitcast %union.StackValue** %386 to i64*
  %388 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %389 = bitcast i64* %388 to i32*
  %390 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %391 = bitcast %union.StackValue** %390 to i64*
  %392 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %393 = bitcast %union.StackValue** %392 to i64*
  %394 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %395 = bitcast i64* %394 to i32*
  %396 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %397 = bitcast i64* %396 to i32*
  %398 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %399 = bitcast i64* %398 to i32*
  %400 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %401 = bitcast i64* %400 to i32*
  %402 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %403 = bitcast i64* %402 to i32*
  %404 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %405 = bitcast i64* %404 to i32*
  %406 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %407 = bitcast i64* %406 to i32*
  %408 = bitcast double* %23 to i64*
  %409 = bitcast double* %24 to i64*
  %410 = bitcast double* %22 to i64*
  %411 = bitcast double* %23 to i64*
  %412 = bitcast double* %24 to i64*
  %413 = bitcast double* %22 to i64*
  %414 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %415 = bitcast i64* %414 to i32*
  %416 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %417 = bitcast i64* %416 to i32*
  %418 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %419 = bitcast %union.StackValue** %418 to i64*
  %420 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %421 = getelementptr inbounds %struct.anon, %struct.anon* %29, i64 0, i32 2
  br label %422

; <label>:422:                                    ; preds = %3574, %2
  %423 = load i32, i32* %25, align 8, !tbaa !32
  %424 = load %struct.LClosure**, %struct.LClosure*** %27, align 8, !tbaa !30
  %425 = load %struct.LClosure*, %struct.LClosure** %424, align 8, !tbaa !6
  %426 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %425, i64 0, i32 5
  %427 = load %struct.Proto*, %struct.Proto** %426, align 8, !tbaa !33
  %428 = getelementptr inbounds %struct.Proto, %struct.Proto* %427, i64 0, i32 15
  %429 = load %struct.TValue*, %struct.TValue** %428, align 8, !tbaa !35
  %430 = load i32*, i32** %30, align 8, !tbaa !6
  %431 = icmp eq i32 %423, 0
  br i1 %431, label %444, label %432

; <label>:432:                                    ; preds = %422
  %433 = getelementptr inbounds %struct.Proto, %struct.Proto* %427, i64 0, i32 4
  %434 = load i8, i8* %433, align 1, !tbaa !37
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %436, label %441

; <label>:436:                                    ; preds = %432
  %437 = getelementptr inbounds %struct.Proto, %struct.Proto* %427, i64 0, i32 16
  %438 = load i32*, i32** %437, align 8, !tbaa !38
  %439 = icmp eq i32* %430, %438
  br i1 %439, label %440, label %442

; <label>:440:                                    ; preds = %436
  call void @luaD_hookcall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1) #10
  br label %442

; <label>:441:                                    ; preds = %432
  store i32 1, i32* %415, align 8, !tbaa !6
  br label %444

; <label>:442:                                    ; preds = %440, %436
  store i32 1, i32* %417, align 8, !tbaa !6
  %443 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %430) #10
  br label %444

; <label>:444:                                    ; preds = %422, %441, %442
  %445 = phi i32 [ %443, %442 ], [ 0, %441 ], [ 0, %422 ]
  %446 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %447 = getelementptr inbounds %union.StackValue, %union.StackValue* %446, i64 1
  %448 = getelementptr inbounds i32, i32* %430, i64 1
  %449 = load i32, i32* %430, align 4, !tbaa !31
  %450 = lshr i32 %449, 7
  %451 = and i32 %450, 255
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds %union.StackValue, %union.StackValue* %447, i64 %452
  %454 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %425, i64 0, i32 6, i64 0
  br label %4080

; <label>:455:                                    ; preds = %4080
  %456 = lshr i32 %4082, 16
  %457 = and i32 %456, 255
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %458, i32 0
  %460 = bitcast %struct.TValue* %459 to i64*
  %461 = bitcast %union.StackValue* %4081 to i64*
  %462 = load i64, i64* %460, align 8
  store i64 %462, i64* %461, align 8
  %463 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %458, i32 0, i32 1
  %464 = load i8, i8* %463, align 8, !tbaa !2
  %465 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %464, i8* %465, align 8, !tbaa !2
  %466 = icmp eq i32 %4083, 0
  br i1 %466, label %471, label %467

; <label>:467:                                    ; preds = %455
  %468 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %469 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %470 = getelementptr inbounds %union.StackValue, %union.StackValue* %469, i64 1
  br label %471

; <label>:471:                                    ; preds = %455, %467
  %472 = phi i32 [ %468, %467 ], [ 0, %455 ]
  %473 = phi %union.StackValue* [ %470, %467 ], [ %4085, %455 ]
  %474 = getelementptr inbounds i32, i32* %4084, i64 1
  %475 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:476:                                    ; preds = %471, %500, %516, %532, %554, %572, %593, %617, %659, %705, %778, %833, %876, %948, %1044, %1122, %1188, %1221, %1274, %1315, %1354, %1395, %1434, %1472, %1510, %1550, %1610, %1668, %1728, %1786, %1834, %1882, %1941, %1999, %2057, %2115, %2173, %2221, %2269, %2328, %2368, %2408, %2448, %2496, %2544, %2592, %2638, %2676, %2725, %2773, %2807, %2841, %2871, %2888, %2910, %2924, %2935, %2951, %2981, %3043, %3105, %3137, %3183, %3235, %3287, %3339, %3391, %3433, %3484, %3505, %3735, %3855, %3923, %4006, %4033, %4048, %4062, %4074
  %477 = phi i32 [ %475, %471 ], [ %504, %500 ], [ %520, %516 ], [ %536, %532 ], [ %558, %554 ], [ %576, %572 ], [ %597, %593 ], [ %621, %617 ], [ %663, %659 ], [ %709, %705 ], [ %782, %778 ], [ %837, %833 ], [ %880, %876 ], [ %952, %948 ], [ %1048, %1044 ], [ %1126, %1122 ], [ %1192, %1188 ], [ %1225, %1221 ], [ %1278, %1274 ], [ %1319, %1315 ], [ %1358, %1354 ], [ %1399, %1395 ], [ %1438, %1434 ], [ %1476, %1472 ], [ %1514, %1510 ], [ %1554, %1550 ], [ %1614, %1610 ], [ %1672, %1668 ], [ %1732, %1728 ], [ %1790, %1786 ], [ %1838, %1834 ], [ %1886, %1882 ], [ %1945, %1941 ], [ %2003, %1999 ], [ %2061, %2057 ], [ %2119, %2115 ], [ %2177, %2173 ], [ %2225, %2221 ], [ %2273, %2269 ], [ %2332, %2328 ], [ %2372, %2368 ], [ %2412, %2408 ], [ %2452, %2448 ], [ %2500, %2496 ], [ %2548, %2544 ], [ %2596, %2592 ], [ %2642, %2638 ], [ %2680, %2676 ], [ %2729, %2725 ], [ %2777, %2773 ], [ %2811, %2807 ], [ %2845, %2841 ], [ %2875, %2871 ], [ %2892, %2888 ], [ %2914, %2910 ], [ %2928, %2924 ], [ %2939, %2935 ], [ %2955, %2951 ], [ %2985, %2981 ], [ %3047, %3043 ], [ %3109, %3105 ], [ %3141, %3137 ], [ %3187, %3183 ], [ %3239, %3235 ], [ %3291, %3287 ], [ %3343, %3339 ], [ %3395, %3391 ], [ %3437, %3433 ], [ %3488, %3484 ], [ %3509, %3505 ], [ %3739, %3735 ], [ %3859, %3855 ], [ %3927, %3923 ], [ %4010, %4006 ], [ %4037, %4033 ], [ %4052, %4048 ], [ %4067, %4062 ], [ %4078, %4074 ]
  %478 = phi %union.StackValue* [ %473, %471 ], [ %502, %500 ], [ %518, %516 ], [ %534, %532 ], [ %556, %554 ], [ %574, %572 ], [ %595, %593 ], [ %619, %617 ], [ %661, %659 ], [ %707, %705 ], [ %780, %778 ], [ %835, %833 ], [ %878, %876 ], [ %950, %948 ], [ %1046, %1044 ], [ %1124, %1122 ], [ %1190, %1188 ], [ %1223, %1221 ], [ %1276, %1274 ], [ %1317, %1315 ], [ %1356, %1354 ], [ %1397, %1395 ], [ %1436, %1434 ], [ %1474, %1472 ], [ %1512, %1510 ], [ %1552, %1550 ], [ %1612, %1610 ], [ %1670, %1668 ], [ %1730, %1728 ], [ %1788, %1786 ], [ %1836, %1834 ], [ %1884, %1882 ], [ %1943, %1941 ], [ %2001, %1999 ], [ %2059, %2057 ], [ %2117, %2115 ], [ %2175, %2173 ], [ %2223, %2221 ], [ %2271, %2269 ], [ %2330, %2328 ], [ %2370, %2368 ], [ %2410, %2408 ], [ %2450, %2448 ], [ %2498, %2496 ], [ %2546, %2544 ], [ %2594, %2592 ], [ %2640, %2638 ], [ %2678, %2676 ], [ %2727, %2725 ], [ %2775, %2773 ], [ %2809, %2807 ], [ %2843, %2841 ], [ %2873, %2871 ], [ %2890, %2888 ], [ %2912, %2910 ], [ %2926, %2924 ], [ %2937, %2935 ], [ %2953, %2951 ], [ %2983, %2981 ], [ %3045, %3043 ], [ %3107, %3105 ], [ %3139, %3137 ], [ %3185, %3183 ], [ %3237, %3235 ], [ %3289, %3287 ], [ %3341, %3339 ], [ %3393, %3391 ], [ %3435, %3433 ], [ %3486, %3484 ], [ %3507, %3505 ], [ %3737, %3735 ], [ %3857, %3855 ], [ %3925, %3923 ], [ %4008, %4006 ], [ %4035, %4033 ], [ %4050, %4048 ], [ %4065, %4062 ], [ %4076, %4074 ]
  %479 = phi i32 [ %472, %471 ], [ %501, %500 ], [ %517, %516 ], [ %533, %532 ], [ %555, %554 ], [ %573, %572 ], [ %594, %593 ], [ %618, %617 ], [ %660, %659 ], [ %706, %705 ], [ %779, %778 ], [ %834, %833 ], [ %877, %876 ], [ %949, %948 ], [ %1045, %1044 ], [ %1123, %1122 ], [ %1189, %1188 ], [ %1222, %1221 ], [ %1275, %1274 ], [ %1316, %1315 ], [ %1355, %1354 ], [ %1396, %1395 ], [ %1435, %1434 ], [ %1473, %1472 ], [ %1511, %1510 ], [ %1551, %1550 ], [ %1611, %1610 ], [ %1669, %1668 ], [ %1729, %1728 ], [ %1787, %1786 ], [ %1835, %1834 ], [ %1883, %1882 ], [ %1942, %1941 ], [ %2000, %1999 ], [ %2058, %2057 ], [ %2116, %2115 ], [ %2174, %2173 ], [ %2222, %2221 ], [ %2270, %2269 ], [ %2329, %2328 ], [ %2369, %2368 ], [ %2409, %2408 ], [ %2449, %2448 ], [ %2497, %2496 ], [ %2545, %2544 ], [ %2593, %2592 ], [ %2639, %2638 ], [ %2677, %2676 ], [ %2726, %2725 ], [ %2774, %2773 ], [ %2808, %2807 ], [ %2842, %2841 ], [ %2872, %2871 ], [ %2889, %2888 ], [ %2911, %2910 ], [ %2925, %2924 ], [ %2936, %2935 ], [ %2952, %2951 ], [ %2982, %2981 ], [ %3044, %3043 ], [ %3106, %3105 ], [ %3138, %3137 ], [ %3184, %3183 ], [ %3236, %3235 ], [ %3288, %3287 ], [ %3340, %3339 ], [ %3392, %3391 ], [ %3434, %3433 ], [ %3485, %3484 ], [ %3506, %3505 ], [ %3736, %3735 ], [ %3856, %3855 ], [ %3924, %3923 ], [ %4007, %4006 ], [ %4034, %4033 ], [ %4049, %4048 ], [ %4063, %4062 ], [ %4075, %4074 ]
  %480 = phi i32* [ %474, %471 ], [ %503, %500 ], [ %519, %516 ], [ %535, %532 ], [ %557, %554 ], [ %575, %572 ], [ %596, %593 ], [ %620, %617 ], [ %662, %659 ], [ %708, %705 ], [ %781, %778 ], [ %836, %833 ], [ %879, %876 ], [ %951, %948 ], [ %1047, %1044 ], [ %1125, %1122 ], [ %1191, %1188 ], [ %1224, %1221 ], [ %1277, %1274 ], [ %1318, %1315 ], [ %1357, %1354 ], [ %1398, %1395 ], [ %1437, %1434 ], [ %1475, %1472 ], [ %1513, %1510 ], [ %1553, %1550 ], [ %1613, %1610 ], [ %1671, %1668 ], [ %1731, %1728 ], [ %1789, %1786 ], [ %1837, %1834 ], [ %1885, %1882 ], [ %1944, %1941 ], [ %2002, %1999 ], [ %2060, %2057 ], [ %2118, %2115 ], [ %2176, %2173 ], [ %2224, %2221 ], [ %2272, %2269 ], [ %2331, %2328 ], [ %2371, %2368 ], [ %2411, %2408 ], [ %2451, %2448 ], [ %2499, %2496 ], [ %2547, %2544 ], [ %2595, %2592 ], [ %2641, %2638 ], [ %2679, %2676 ], [ %2728, %2725 ], [ %2776, %2773 ], [ %2810, %2807 ], [ %2844, %2841 ], [ %2874, %2871 ], [ %2891, %2888 ], [ %2913, %2910 ], [ %2927, %2924 ], [ %2938, %2935 ], [ %2954, %2951 ], [ %2984, %2981 ], [ %3046, %3043 ], [ %3108, %3105 ], [ %3140, %3137 ], [ %3186, %3183 ], [ %3238, %3235 ], [ %3290, %3287 ], [ %3342, %3339 ], [ %3394, %3391 ], [ %3436, %3433 ], [ %3487, %3484 ], [ %3508, %3505 ], [ %3738, %3735 ], [ %3858, %3855 ], [ %3926, %3923 ], [ %4009, %4006 ], [ %4036, %4033 ], [ %4051, %4048 ], [ %4066, %4062 ], [ %4077, %4074 ]
  %481 = lshr i32 %477, 7
  %482 = and i32 %481, 255
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds %union.StackValue, %union.StackValue* %478, i64 %483
  br label %4080

; <label>:485:                                    ; preds = %4080
  %486 = lshr i32 %4082, 15
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %487
  %489 = bitcast %struct.TValue* %488 to i64*
  %490 = bitcast %union.StackValue* %4081 to i64*
  %491 = load i64, i64* %489, align 8
  store i64 %491, i64* %490, align 8
  %492 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %487, i32 1
  %493 = load i8, i8* %492, align 8, !tbaa !2
  %494 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %493, i8* %494, align 8, !tbaa !2
  %495 = icmp eq i32 %4083, 0
  br i1 %495, label %500, label %496

; <label>:496:                                    ; preds = %485
  %497 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %498 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %499 = getelementptr inbounds %union.StackValue, %union.StackValue* %498, i64 1
  br label %500

; <label>:500:                                    ; preds = %485, %496
  %501 = phi i32 [ %497, %496 ], [ 0, %485 ]
  %502 = phi %union.StackValue* [ %499, %496 ], [ %4085, %485 ]
  %503 = getelementptr inbounds i32, i32* %4084, i64 1
  %504 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:505:                                    ; preds = %4080
  %506 = lshr i32 %4082, 15
  %507 = add nsw i32 %506, -65535
  %508 = sext i32 %507 to i64
  %509 = bitcast %union.StackValue* %4081 to i64*
  store i64 %508, i64* %509, align 8, !tbaa !6
  %510 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %510, align 8, !tbaa !2
  %511 = icmp eq i32 %4083, 0
  br i1 %511, label %516, label %512

; <label>:512:                                    ; preds = %505
  %513 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %514 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %515 = getelementptr inbounds %union.StackValue, %union.StackValue* %514, i64 1
  br label %516

; <label>:516:                                    ; preds = %505, %512
  %517 = phi i32 [ %513, %512 ], [ 0, %505 ]
  %518 = phi %union.StackValue* [ %515, %512 ], [ %4085, %505 ]
  %519 = getelementptr inbounds i32, i32* %4084, i64 1
  %520 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:521:                                    ; preds = %4080
  %522 = lshr i32 %4082, 15
  %523 = add nsw i32 %522, -65535
  %524 = sitofp i32 %523 to double
  %525 = bitcast %union.StackValue* %4081 to double*
  store double %524, double* %525, align 8, !tbaa !6
  %526 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %526, align 8, !tbaa !2
  %527 = icmp eq i32 %4083, 0
  br i1 %527, label %532, label %528

; <label>:528:                                    ; preds = %521
  %529 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %530 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %531 = getelementptr inbounds %union.StackValue, %union.StackValue* %530, i64 1
  br label %532

; <label>:532:                                    ; preds = %521, %528
  %533 = phi i32 [ %529, %528 ], [ 0, %521 ]
  %534 = phi %union.StackValue* [ %531, %528 ], [ %4085, %521 ]
  %535 = getelementptr inbounds i32, i32* %4084, i64 1
  %536 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:537:                                    ; preds = %4080
  %538 = load i32, i32* %4084, align 4, !tbaa !31
  %539 = lshr i32 %538, 7
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %540
  %542 = getelementptr inbounds i32, i32* %4084, i64 1
  %543 = bitcast %struct.TValue* %541 to i64*
  %544 = bitcast %union.StackValue* %4081 to i64*
  %545 = load i64, i64* %543, align 8
  store i64 %545, i64* %544, align 8
  %546 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %540, i32 1
  %547 = load i8, i8* %546, align 8, !tbaa !2
  %548 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %547, i8* %548, align 8, !tbaa !2
  %549 = icmp eq i32 %4083, 0
  br i1 %549, label %554, label %550

; <label>:550:                                    ; preds = %537
  %551 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %542) #10
  %552 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %553 = getelementptr inbounds %union.StackValue, %union.StackValue* %552, i64 1
  br label %554

; <label>:554:                                    ; preds = %537, %550
  %555 = phi i32 [ %551, %550 ], [ 0, %537 ]
  %556 = phi %union.StackValue* [ %553, %550 ], [ %4085, %537 ]
  %557 = getelementptr inbounds i32, i32* %4084, i64 2
  %558 = load i32, i32* %542, align 4, !tbaa !31
  br label %476

; <label>:559:                                    ; preds = %4080
  %560 = lshr i32 %4082, 16
  %561 = and i32 %560, 255
  %562 = bitcast %union.StackValue* %4081 to i32*
  store i32 %561, i32* %562, align 8, !tbaa !6
  %563 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 1, i8* %563, align 8, !tbaa !2
  %564 = icmp ugt i32 %4082, 16777215
  %565 = getelementptr inbounds i32, i32* %4084, i64 1
  %566 = select i1 %564, i32* %565, i32* %4084
  %567 = icmp eq i32 %4083, 0
  br i1 %567, label %572, label %568

; <label>:568:                                    ; preds = %559
  %569 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %566) #10
  %570 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %571 = getelementptr inbounds %union.StackValue, %union.StackValue* %570, i64 1
  br label %572

; <label>:572:                                    ; preds = %559, %568
  %573 = phi i32 [ %569, %568 ], [ 0, %559 ]
  %574 = phi %union.StackValue* [ %571, %568 ], [ %4085, %559 ]
  %575 = getelementptr inbounds i32, i32* %566, i64 1
  %576 = load i32, i32* %566, align 4, !tbaa !31
  br label %476

; <label>:577:                                    ; preds = %4080
  %578 = lshr i32 %4082, 16
  %579 = and i32 %578, 255
  br label %580

; <label>:580:                                    ; preds = %580, %577
  %581 = phi i32 [ %579, %577 ], [ %585, %580 ]
  %582 = phi %union.StackValue* [ %4081, %577 ], [ %583, %580 ]
  %583 = getelementptr inbounds %union.StackValue, %union.StackValue* %582, i64 1
  %584 = getelementptr inbounds %union.StackValue, %union.StackValue* %582, i64 0, i32 0, i32 1
  store i8 0, i8* %584, align 8, !tbaa !6
  %585 = add nsw i32 %581, -1
  %586 = icmp eq i32 %581, 0
  br i1 %586, label %587, label %580

; <label>:587:                                    ; preds = %580
  %588 = icmp eq i32 %4083, 0
  br i1 %588, label %593, label %589

; <label>:589:                                    ; preds = %587
  %590 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %4084) #10
  %591 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %592 = getelementptr inbounds %union.StackValue, %union.StackValue* %591, i64 1
  br label %593

; <label>:593:                                    ; preds = %587, %589
  %594 = phi i32 [ %590, %589 ], [ 0, %587 ]
  %595 = phi %union.StackValue* [ %592, %589 ], [ %4085, %587 ]
  %596 = getelementptr inbounds i32, i32* %4084, i64 1
  %597 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:598:                                    ; preds = %4080
  %599 = lshr i32 %4082, 16
  %600 = and i32 %599, 255
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %425, i64 0, i32 6, i64 %601
  %603 = load %struct.UpVal*, %struct.UpVal** %602, align 8, !tbaa !21
  %604 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %603, i64 0, i32 3
  %605 = load %struct.TValue*, %struct.TValue** %604, align 8, !tbaa !39
  %606 = bitcast %struct.TValue* %605 to i64*
  %607 = bitcast %union.StackValue* %4081 to i64*
  %608 = load i64, i64* %606, align 8
  store i64 %608, i64* %607, align 8
  %609 = getelementptr inbounds %struct.TValue, %struct.TValue* %605, i64 0, i32 1
  %610 = load i8, i8* %609, align 8, !tbaa !2
  %611 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %610, i8* %611, align 8, !tbaa !2
  %612 = icmp eq i32 %4083, 0
  br i1 %612, label %617, label %613

; <label>:613:                                    ; preds = %598
  %614 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %615 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %616 = getelementptr inbounds %union.StackValue, %union.StackValue* %615, i64 1
  br label %617

; <label>:617:                                    ; preds = %598, %613
  %618 = phi i32 [ %614, %613 ], [ 0, %598 ]
  %619 = phi %union.StackValue* [ %616, %613 ], [ %4085, %598 ]
  %620 = getelementptr inbounds i32, i32* %4084, i64 1
  %621 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:622:                                    ; preds = %4080
  %623 = lshr i32 %4082, 16
  %624 = and i32 %623, 255
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %425, i64 0, i32 6, i64 %625
  %627 = load %struct.UpVal*, %struct.UpVal** %626, align 8, !tbaa !21
  %628 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %627, i64 0, i32 3
  %629 = load %struct.TValue*, %struct.TValue** %628, align 8, !tbaa !39
  %630 = bitcast %union.StackValue* %4081 to i64*
  %631 = bitcast %struct.TValue* %629 to i64*
  %632 = load i64, i64* %630, align 8
  store i64 %632, i64* %631, align 8
  %633 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %634 = load i8, i8* %633, align 8, !tbaa !2
  %635 = getelementptr inbounds %struct.TValue, %struct.TValue* %629, i64 0, i32 1
  store i8 %634, i8* %635, align 8, !tbaa !2
  %636 = load i8, i8* %633, align 8, !tbaa !6
  %637 = and i8 %636, 64
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %653, label %639

; <label>:639:                                    ; preds = %622
  %640 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %627, i64 0, i32 2
  %641 = load i8, i8* %640, align 1, !tbaa !41
  %642 = and i8 %641, 32
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %653, label %644

; <label>:644:                                    ; preds = %639
  %645 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 0, i32 0
  %646 = load %struct.GCObject*, %struct.GCObject** %645, align 8, !tbaa !6
  %647 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %646, i64 0, i32 2
  %648 = load i8, i8* %647, align 1, !tbaa !23
  %649 = and i8 %648, 24
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %653, label %651

; <label>:651:                                    ; preds = %644
  %652 = bitcast %struct.UpVal* %627 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* %652, %struct.GCObject* %646) #10
  br label %653

; <label>:653:                                    ; preds = %644, %639, %622, %651
  %654 = icmp eq i32 %4083, 0
  br i1 %654, label %659, label %655

; <label>:655:                                    ; preds = %653
  %656 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %657 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %658 = getelementptr inbounds %union.StackValue, %union.StackValue* %657, i64 1
  br label %659

; <label>:659:                                    ; preds = %653, %655
  %660 = phi i32 [ %656, %655 ], [ 0, %653 ]
  %661 = phi %union.StackValue* [ %658, %655 ], [ %4085, %653 ]
  %662 = getelementptr inbounds i32, i32* %4084, i64 1
  %663 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:664:                                    ; preds = %4080
  %665 = lshr i32 %4082, 16
  %666 = and i32 %665, 255
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %425, i64 0, i32 6, i64 %667
  %669 = load %struct.UpVal*, %struct.UpVal** %668, align 8, !tbaa !21
  %670 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %669, i64 0, i32 3
  %671 = load %struct.TValue*, %struct.TValue** %670, align 8, !tbaa !39
  %672 = lshr i32 %4082, 24
  %673 = zext i32 %672 to i64
  %674 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %673
  %675 = getelementptr inbounds %struct.TValue, %struct.TValue* %671, i64 0, i32 1
  %676 = load i8, i8* %675, align 8, !tbaa !2
  %677 = icmp eq i8 %676, 69
  br i1 %677, label %678, label %694

; <label>:678:                                    ; preds = %664
  %679 = bitcast %struct.TValue* %674 to %struct.TString**
  %680 = load %struct.TString*, %struct.TString** %679, align 8, !tbaa !6
  %681 = bitcast %struct.TValue* %671 to %struct.Table**
  %682 = load %struct.Table*, %struct.Table** %681, align 8, !tbaa !6
  %683 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %682, %struct.TString* %680) #10
  %684 = getelementptr inbounds %struct.TValue, %struct.TValue* %683, i64 0, i32 1
  %685 = load i8, i8* %684, align 8, !tbaa !2
  %686 = and i8 %685, 15
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %694, label %688

; <label>:688:                                    ; preds = %678
  %689 = bitcast %struct.TValue* %683 to i64*
  %690 = bitcast %union.StackValue* %4081 to i64*
  %691 = load i64, i64* %689, align 8
  store i64 %691, i64* %690, align 8
  %692 = load i8, i8* %684, align 8, !tbaa !2
  %693 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %692, i8* %693, align 8, !tbaa !2
  br label %698

; <label>:694:                                    ; preds = %664, %678
  %695 = phi %struct.TValue* [ %683, %678 ], [ null, %664 ]
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %696 = load i64, i64* %79, align 8, !tbaa !42
  store i64 %696, i64* %81, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %671, %struct.TValue* %674, %union.StackValue* %4081, %struct.TValue* %695)
  %697 = load i32, i32* %83, align 8, !tbaa !6
  br label %698

; <label>:698:                                    ; preds = %694, %688
  %699 = phi i32 [ %4083, %688 ], [ %697, %694 ]
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %705, label %701

; <label>:701:                                    ; preds = %698
  %702 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %703 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %704 = getelementptr inbounds %union.StackValue, %union.StackValue* %703, i64 1
  br label %705

; <label>:705:                                    ; preds = %698, %701
  %706 = phi i32 [ %702, %701 ], [ 0, %698 ]
  %707 = phi %union.StackValue* [ %704, %701 ], [ %4085, %698 ]
  %708 = getelementptr inbounds i32, i32* %4084, i64 1
  %709 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:710:                                    ; preds = %4080
  %711 = lshr i32 %4082, 16
  %712 = and i32 %711, 255
  %713 = zext i32 %712 to i64
  %714 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %713, i32 0
  %715 = lshr i32 %4082, 24
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %716, i32 0
  %718 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %716, i32 0, i32 1
  %719 = load i8, i8* %718, align 8, !tbaa !2
  %720 = icmp eq i8 %719, 35
  br i1 %720, label %721, label %747

; <label>:721:                                    ; preds = %710
  %722 = bitcast %struct.TValue* %717 to i64*
  %723 = load i64, i64* %722, align 8, !tbaa !6
  %724 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %713, i32 0, i32 1
  %725 = load i8, i8* %724, align 8, !tbaa !2
  %726 = icmp eq i8 %725, 69
  br i1 %726, label %727, label %767

; <label>:727:                                    ; preds = %721
  %728 = add i64 %723, -1
  %729 = bitcast %struct.TValue* %714 to %struct.Table**
  %730 = load %struct.Table*, %struct.Table** %729, align 8, !tbaa !6
  %731 = getelementptr inbounds %struct.Table, %struct.Table* %730, i64 0, i32 5
  %732 = load i32, i32* %731, align 4, !tbaa !6
  %733 = zext i32 %732 to i64
  %734 = icmp ult i64 %728, %733
  br i1 %734, label %735, label %739

; <label>:735:                                    ; preds = %727
  %736 = getelementptr inbounds %struct.Table, %struct.Table* %730, i64 0, i32 6
  %737 = load %struct.TValue*, %struct.TValue** %736, align 8, !tbaa !6
  %738 = getelementptr inbounds %struct.TValue, %struct.TValue* %737, i64 %728
  br label %741

; <label>:739:                                    ; preds = %727
  %740 = call %struct.TValue* @luaH_getint(%struct.Table* %730, i64 %723) #10
  br label %741

; <label>:741:                                    ; preds = %735, %739
  %742 = phi %struct.TValue* [ %738, %735 ], [ %740, %739 ]
  %743 = getelementptr inbounds %struct.TValue, %struct.TValue* %742, i64 0, i32 1
  %744 = load i8, i8* %743, align 8, !tbaa !2
  %745 = and i8 %744, 15
  %746 = icmp eq i8 %745, 0
  br i1 %746, label %767, label %759

; <label>:747:                                    ; preds = %710
  %748 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %713, i32 0, i32 1
  %749 = load i8, i8* %748, align 8, !tbaa !2
  %750 = icmp eq i8 %749, 69
  br i1 %750, label %751, label %767

; <label>:751:                                    ; preds = %747
  %752 = bitcast %struct.TValue* %714 to %struct.Table**
  %753 = load %struct.Table*, %struct.Table** %752, align 8, !tbaa !6
  %754 = call %struct.TValue* @luaH_get(%struct.Table* %753, %struct.TValue* nonnull %717) #10
  %755 = getelementptr inbounds %struct.TValue, %struct.TValue* %754, i64 0, i32 1
  %756 = load i8, i8* %755, align 8, !tbaa !2
  %757 = and i8 %756, 15
  %758 = icmp eq i8 %757, 0
  br i1 %758, label %767, label %759

; <label>:759:                                    ; preds = %741, %751
  %760 = phi %struct.TValue* [ %742, %741 ], [ %754, %751 ]
  %761 = bitcast %struct.TValue* %760 to i64*
  %762 = bitcast %union.StackValue* %4081 to i64*
  %763 = load i64, i64* %761, align 8
  store i64 %763, i64* %762, align 8
  %764 = getelementptr inbounds %struct.TValue, %struct.TValue* %760, i64 0, i32 1
  %765 = load i8, i8* %764, align 8, !tbaa !2
  %766 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %765, i8* %766, align 8, !tbaa !2
  br label %771

; <label>:767:                                    ; preds = %721, %747, %741, %751
  %768 = phi %struct.TValue* [ %742, %741 ], [ %754, %751 ], [ null, %747 ], [ null, %721 ]
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %769 = load i64, i64* %85, align 8, !tbaa !42
  store i64 %769, i64* %87, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* nonnull %714, %struct.TValue* nonnull %717, %union.StackValue* %4081, %struct.TValue* %768)
  %770 = load i32, i32* %89, align 8, !tbaa !6
  br label %771

; <label>:771:                                    ; preds = %767, %759
  %772 = phi i32 [ %4083, %759 ], [ %770, %767 ]
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %778, label %774

; <label>:774:                                    ; preds = %771
  %775 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %776 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %777 = getelementptr inbounds %union.StackValue, %union.StackValue* %776, i64 1
  br label %778

; <label>:778:                                    ; preds = %771, %774
  %779 = phi i32 [ %775, %774 ], [ 0, %771 ]
  %780 = phi %union.StackValue* [ %777, %774 ], [ %4085, %771 ]
  %781 = getelementptr inbounds i32, i32* %4084, i64 1
  %782 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:783:                                    ; preds = %4080
  %784 = lshr i32 %4082, 16
  %785 = and i32 %784, 255
  %786 = zext i32 %785 to i64
  %787 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %786, i32 0
  %788 = lshr i32 %4082, 24
  %789 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %786, i32 0, i32 1
  %790 = load i8, i8* %789, align 8, !tbaa !2
  %791 = icmp eq i8 %790, 69
  br i1 %791, label %792, label %821

; <label>:792:                                    ; preds = %783
  %793 = zext i32 %788 to i64
  %794 = add nsw i64 %793, -1
  %795 = bitcast %struct.TValue* %787 to %struct.Table**
  %796 = load %struct.Table*, %struct.Table** %795, align 8, !tbaa !6
  %797 = getelementptr inbounds %struct.Table, %struct.Table* %796, i64 0, i32 5
  %798 = load i32, i32* %797, align 4, !tbaa !6
  %799 = zext i32 %798 to i64
  %800 = icmp ult i64 %794, %799
  br i1 %800, label %801, label %807

; <label>:801:                                    ; preds = %792
  %802 = getelementptr inbounds %struct.Table, %struct.Table* %796, i64 0, i32 6
  %803 = load %struct.TValue*, %struct.TValue** %802, align 8, !tbaa !6
  %804 = add nsw i32 %788, -1
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds %struct.TValue, %struct.TValue* %803, i64 %805
  br label %809

; <label>:807:                                    ; preds = %792
  %808 = call %struct.TValue* @luaH_getint(%struct.Table* %796, i64 %793) #10
  br label %809

; <label>:809:                                    ; preds = %807, %801
  %810 = phi %struct.TValue* [ %806, %801 ], [ %808, %807 ]
  %811 = getelementptr inbounds %struct.TValue, %struct.TValue* %810, i64 0, i32 1
  %812 = load i8, i8* %811, align 8, !tbaa !2
  %813 = and i8 %812, 15
  %814 = icmp eq i8 %813, 0
  br i1 %814, label %821, label %815

; <label>:815:                                    ; preds = %809
  %816 = bitcast %struct.TValue* %810 to i64*
  %817 = bitcast %union.StackValue* %4081 to i64*
  %818 = load i64, i64* %816, align 8
  store i64 %818, i64* %817, align 8
  %819 = load i8, i8* %811, align 8, !tbaa !2
  %820 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %819, i8* %820, align 8, !tbaa !2
  br label %826

; <label>:821:                                    ; preds = %783, %809
  %822 = phi %struct.TValue* [ %810, %809 ], [ null, %783 ]
  %823 = zext i32 %788 to i64
  store i64 %823, i64* %90, align 8, !tbaa !6
  store i8 35, i8* %91, align 8, !tbaa !2
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %824 = load i64, i64* %93, align 8, !tbaa !42
  store i64 %824, i64* %95, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %787, %struct.TValue* nonnull %3, %union.StackValue* %4081, %struct.TValue* %822)
  %825 = load i32, i32* %97, align 8, !tbaa !6
  br label %826

; <label>:826:                                    ; preds = %821, %815
  %827 = phi i32 [ %4083, %815 ], [ %825, %821 ]
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %833, label %829

; <label>:829:                                    ; preds = %826
  %830 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %831 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %832 = getelementptr inbounds %union.StackValue, %union.StackValue* %831, i64 1
  br label %833

; <label>:833:                                    ; preds = %826, %829
  %834 = phi i32 [ %830, %829 ], [ 0, %826 ]
  %835 = phi %union.StackValue* [ %832, %829 ], [ %4085, %826 ]
  %836 = getelementptr inbounds i32, i32* %4084, i64 1
  %837 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:838:                                    ; preds = %4080
  %839 = lshr i32 %4082, 16
  %840 = and i32 %839, 255
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %841, i32 0
  %843 = lshr i32 %4082, 24
  %844 = zext i32 %843 to i64
  %845 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %844
  %846 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %841, i32 0, i32 1
  %847 = load i8, i8* %846, align 8, !tbaa !2
  %848 = icmp eq i8 %847, 69
  br i1 %848, label %849, label %865

; <label>:849:                                    ; preds = %838
  %850 = bitcast %struct.TValue* %845 to %struct.TString**
  %851 = load %struct.TString*, %struct.TString** %850, align 8, !tbaa !6
  %852 = bitcast %struct.TValue* %842 to %struct.Table**
  %853 = load %struct.Table*, %struct.Table** %852, align 8, !tbaa !6
  %854 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %853, %struct.TString* %851) #10
  %855 = getelementptr inbounds %struct.TValue, %struct.TValue* %854, i64 0, i32 1
  %856 = load i8, i8* %855, align 8, !tbaa !2
  %857 = and i8 %856, 15
  %858 = icmp eq i8 %857, 0
  br i1 %858, label %865, label %859

; <label>:859:                                    ; preds = %849
  %860 = bitcast %struct.TValue* %854 to i64*
  %861 = bitcast %union.StackValue* %4081 to i64*
  %862 = load i64, i64* %860, align 8
  store i64 %862, i64* %861, align 8
  %863 = load i8, i8* %855, align 8, !tbaa !2
  %864 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %863, i8* %864, align 8, !tbaa !2
  br label %869

; <label>:865:                                    ; preds = %838, %849
  %866 = phi %struct.TValue* [ %854, %849 ], [ null, %838 ]
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %867 = load i64, i64* %99, align 8, !tbaa !42
  store i64 %867, i64* %101, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %842, %struct.TValue* %845, %union.StackValue* %4081, %struct.TValue* %866)
  %868 = load i32, i32* %103, align 8, !tbaa !6
  br label %869

; <label>:869:                                    ; preds = %865, %859
  %870 = phi i32 [ %4083, %859 ], [ %868, %865 ]
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %876, label %872

; <label>:872:                                    ; preds = %869
  %873 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %874 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %875 = getelementptr inbounds %union.StackValue, %union.StackValue* %874, i64 1
  br label %876

; <label>:876:                                    ; preds = %869, %872
  %877 = phi i32 [ %873, %872 ], [ 0, %869 ]
  %878 = phi %union.StackValue* [ %875, %872 ], [ %4085, %869 ]
  %879 = getelementptr inbounds i32, i32* %4084, i64 1
  %880 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:881:                                    ; preds = %4080
  %882 = lshr i32 %4082, 7
  %883 = and i32 %882, 255
  %884 = zext i32 %883 to i64
  %885 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %425, i64 0, i32 6, i64 %884
  %886 = load %struct.UpVal*, %struct.UpVal** %885, align 8, !tbaa !21
  %887 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %886, i64 0, i32 3
  %888 = load %struct.TValue*, %struct.TValue** %887, align 8, !tbaa !39
  %889 = lshr i32 %4082, 16
  %890 = and i32 %889, 255
  %891 = zext i32 %890 to i64
  %892 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %891
  %893 = trunc i32 %4082 to i16
  %894 = icmp slt i16 %893, 0
  %895 = lshr i32 %4082, 24
  %896 = zext i32 %895 to i64
  %897 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %896
  %898 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %896, i32 0
  %899 = select i1 %894, %struct.TValue* %897, %struct.TValue* %898
  %900 = getelementptr inbounds %struct.TValue, %struct.TValue* %888, i64 0, i32 1
  %901 = load i8, i8* %900, align 8, !tbaa !2
  %902 = icmp eq i8 %901, 69
  br i1 %902, label %903, label %937

; <label>:903:                                    ; preds = %881
  %904 = bitcast %struct.TValue* %892 to %struct.TString**
  %905 = load %struct.TString*, %struct.TString** %904, align 8, !tbaa !6
  %906 = getelementptr inbounds %struct.TValue, %struct.TValue* %888, i64 0, i32 0, i32 0
  %907 = bitcast %struct.TValue* %888 to %struct.Table**
  %908 = load %struct.Table*, %struct.Table** %907, align 8, !tbaa !6
  %909 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %908, %struct.TString* %905) #10
  %910 = getelementptr inbounds %struct.TValue, %struct.TValue* %909, i64 0, i32 1
  %911 = load i8, i8* %910, align 8, !tbaa !2
  %912 = and i8 %911, 15
  %913 = icmp eq i8 %912, 0
  br i1 %913, label %937, label %914

; <label>:914:                                    ; preds = %903
  %915 = bitcast %struct.TValue* %899 to i64*
  %916 = bitcast %struct.TValue* %909 to i64*
  %917 = load i64, i64* %915, align 8
  store i64 %917, i64* %916, align 8
  %918 = getelementptr inbounds %struct.TValue, %struct.TValue* %899, i64 0, i32 1
  %919 = load i8, i8* %918, align 8, !tbaa !2
  store i8 %919, i8* %910, align 8, !tbaa !2
  %920 = load i8, i8* %918, align 8, !tbaa !2
  %921 = and i8 %920, 64
  %922 = icmp eq i8 %921, 0
  br i1 %922, label %941, label %923

; <label>:923:                                    ; preds = %914
  %924 = load %struct.GCObject*, %struct.GCObject** %906, align 8, !tbaa !6
  %925 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %924, i64 0, i32 2
  %926 = load i8, i8* %925, align 1, !tbaa !23
  %927 = and i8 %926, 32
  %928 = icmp eq i8 %927, 0
  br i1 %928, label %941, label %929

; <label>:929:                                    ; preds = %923
  %930 = getelementptr inbounds %struct.TValue, %struct.TValue* %899, i64 0, i32 0, i32 0
  %931 = load %struct.GCObject*, %struct.GCObject** %930, align 8, !tbaa !6
  %932 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %931, i64 0, i32 2
  %933 = load i8, i8* %932, align 1, !tbaa !23
  %934 = and i8 %933, 24
  %935 = icmp eq i8 %934, 0
  br i1 %935, label %941, label %936

; <label>:936:                                    ; preds = %929
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %924) #10
  br label %941

; <label>:937:                                    ; preds = %881, %903
  %938 = phi %struct.TValue* [ %909, %903 ], [ null, %881 ]
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %939 = load i64, i64* %105, align 8, !tbaa !42
  store i64 %939, i64* %107, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %888, %struct.TValue* %892, %struct.TValue* %899, %struct.TValue* %938)
  %940 = load i32, i32* %109, align 8, !tbaa !6
  br label %941

; <label>:941:                                    ; preds = %929, %923, %914, %936, %937
  %942 = phi i32 [ %4083, %936 ], [ %4083, %929 ], [ %4083, %923 ], [ %4083, %914 ], [ %940, %937 ]
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %948, label %944

; <label>:944:                                    ; preds = %941
  %945 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %946 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %947 = getelementptr inbounds %union.StackValue, %union.StackValue* %946, i64 1
  br label %948

; <label>:948:                                    ; preds = %941, %944
  %949 = phi i32 [ %945, %944 ], [ 0, %941 ]
  %950 = phi %union.StackValue* [ %947, %944 ], [ %4085, %941 ]
  %951 = getelementptr inbounds i32, i32* %4084, i64 1
  %952 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:953:                                    ; preds = %4080
  %954 = lshr i32 %4082, 16
  %955 = and i32 %954, 255
  %956 = zext i32 %955 to i64
  %957 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %956, i32 0
  %958 = trunc i32 %4082 to i16
  %959 = icmp slt i16 %958, 0
  %960 = lshr i32 %4082, 24
  %961 = zext i32 %960 to i64
  %962 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %961
  %963 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %961, i32 0
  %964 = select i1 %959, %struct.TValue* %962, %struct.TValue* %963
  %965 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %956, i32 0, i32 1
  %966 = load i8, i8* %965, align 8, !tbaa !2
  %967 = icmp eq i8 %966, 35
  br i1 %967, label %968, label %994

; <label>:968:                                    ; preds = %953
  %969 = bitcast %struct.TValue* %957 to i64*
  %970 = load i64, i64* %969, align 8, !tbaa !6
  %971 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %972 = load i8, i8* %971, align 8, !tbaa !6
  %973 = icmp eq i8 %972, 69
  br i1 %973, label %974, label %1032

; <label>:974:                                    ; preds = %968
  %975 = add i64 %970, -1
  %976 = bitcast %union.StackValue* %4081 to %struct.Table**
  %977 = load %struct.Table*, %struct.Table** %976, align 8, !tbaa !6
  %978 = getelementptr inbounds %struct.Table, %struct.Table* %977, i64 0, i32 5
  %979 = load i32, i32* %978, align 4, !tbaa !6
  %980 = zext i32 %979 to i64
  %981 = icmp ult i64 %975, %980
  br i1 %981, label %982, label %986

; <label>:982:                                    ; preds = %974
  %983 = getelementptr inbounds %struct.Table, %struct.Table* %977, i64 0, i32 6
  %984 = load %struct.TValue*, %struct.TValue** %983, align 8, !tbaa !6
  %985 = getelementptr inbounds %struct.TValue, %struct.TValue* %984, i64 %975
  br label %988

; <label>:986:                                    ; preds = %974
  %987 = call %struct.TValue* @luaH_getint(%struct.Table* %977, i64 %970) #10
  br label %988

; <label>:988:                                    ; preds = %982, %986
  %989 = phi %struct.TValue* [ %985, %982 ], [ %987, %986 ]
  %990 = getelementptr inbounds %struct.TValue, %struct.TValue* %989, i64 0, i32 1
  %991 = load i8, i8* %990, align 8, !tbaa !2
  %992 = and i8 %991, 15
  %993 = icmp eq i8 %992, 0
  br i1 %993, label %1032, label %1006

; <label>:994:                                    ; preds = %953
  %995 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %996 = load i8, i8* %995, align 8, !tbaa !6
  %997 = icmp eq i8 %996, 69
  br i1 %997, label %998, label %1032

; <label>:998:                                    ; preds = %994
  %999 = bitcast %union.StackValue* %4081 to %struct.Table**
  %1000 = load %struct.Table*, %struct.Table** %999, align 8, !tbaa !6
  %1001 = call %struct.TValue* @luaH_get(%struct.Table* %1000, %struct.TValue* %957) #10
  %1002 = getelementptr inbounds %struct.TValue, %struct.TValue* %1001, i64 0, i32 1
  %1003 = load i8, i8* %1002, align 8, !tbaa !2
  %1004 = and i8 %1003, 15
  %1005 = icmp eq i8 %1004, 0
  br i1 %1005, label %1032, label %1006

; <label>:1006:                                   ; preds = %988, %998
  %1007 = phi %struct.TValue* [ %989, %988 ], [ %1001, %998 ]
  %1008 = bitcast %struct.TValue* %964 to i64*
  %1009 = bitcast %struct.TValue* %1007 to i64*
  %1010 = load i64, i64* %1008, align 8
  store i64 %1010, i64* %1009, align 8
  %1011 = getelementptr inbounds %struct.TValue, %struct.TValue* %964, i64 0, i32 1
  %1012 = load i8, i8* %1011, align 8, !tbaa !2
  %1013 = getelementptr inbounds %struct.TValue, %struct.TValue* %1007, i64 0, i32 1
  store i8 %1012, i8* %1013, align 8, !tbaa !2
  %1014 = load i8, i8* %1011, align 8, !tbaa !2
  %1015 = and i8 %1014, 64
  %1016 = icmp eq i8 %1015, 0
  br i1 %1016, label %1037, label %1017

; <label>:1017:                                   ; preds = %1006
  %1018 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 0, i32 0
  %1019 = load %struct.GCObject*, %struct.GCObject** %1018, align 8, !tbaa !6
  %1020 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1019, i64 0, i32 2
  %1021 = load i8, i8* %1020, align 1, !tbaa !23
  %1022 = and i8 %1021, 32
  %1023 = icmp eq i8 %1022, 0
  br i1 %1023, label %1037, label %1024

; <label>:1024:                                   ; preds = %1017
  %1025 = getelementptr inbounds %struct.TValue, %struct.TValue* %964, i64 0, i32 0, i32 0
  %1026 = load %struct.GCObject*, %struct.GCObject** %1025, align 8, !tbaa !6
  %1027 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1026, i64 0, i32 2
  %1028 = load i8, i8* %1027, align 1, !tbaa !23
  %1029 = and i8 %1028, 24
  %1030 = icmp eq i8 %1029, 0
  br i1 %1030, label %1037, label %1031

; <label>:1031:                                   ; preds = %1024
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %1019) #10
  br label %1037

; <label>:1032:                                   ; preds = %968, %994, %988, %998
  %1033 = phi %struct.TValue* [ %989, %988 ], [ %1001, %998 ], [ null, %994 ], [ null, %968 ]
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1034 = load i64, i64* %111, align 8, !tbaa !42
  store i64 %1034, i64* %113, align 8, !tbaa !25
  %1035 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %1035, %struct.TValue* %957, %struct.TValue* %964, %struct.TValue* %1033)
  %1036 = load i32, i32* %115, align 8, !tbaa !6
  br label %1037

; <label>:1037:                                   ; preds = %1024, %1017, %1006, %1031, %1032
  %1038 = phi i32 [ %4083, %1031 ], [ %4083, %1024 ], [ %4083, %1017 ], [ %4083, %1006 ], [ %1036, %1032 ]
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1044, label %1040

; <label>:1040:                                   ; preds = %1037
  %1041 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1042 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1043 = getelementptr inbounds %union.StackValue, %union.StackValue* %1042, i64 1
  br label %1044

; <label>:1044:                                   ; preds = %1037, %1040
  %1045 = phi i32 [ %1041, %1040 ], [ 0, %1037 ]
  %1046 = phi %union.StackValue* [ %1043, %1040 ], [ %4085, %1037 ]
  %1047 = getelementptr inbounds i32, i32* %4084, i64 1
  %1048 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1049:                                   ; preds = %4080
  %1050 = lshr i32 %4082, 16
  %1051 = and i32 %1050, 255
  %1052 = trunc i32 %4082 to i16
  %1053 = icmp slt i16 %1052, 0
  %1054 = lshr i32 %4082, 24
  %1055 = zext i32 %1054 to i64
  %1056 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1055
  %1057 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1055, i32 0
  %1058 = select i1 %1053, %struct.TValue* %1056, %struct.TValue* %1057
  %1059 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %1060 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %1061 = load i8, i8* %1060, align 8, !tbaa !6
  %1062 = icmp eq i8 %1061, 69
  br i1 %1062, label %1063, label %1110

; <label>:1063:                                   ; preds = %1049
  %1064 = zext i32 %1051 to i64
  %1065 = add nsw i64 %1064, -1
  %1066 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 0, i32 0
  %1067 = bitcast %union.StackValue* %4081 to %struct.Table**
  %1068 = load %struct.Table*, %struct.Table** %1067, align 8, !tbaa !6
  %1069 = getelementptr inbounds %struct.Table, %struct.Table* %1068, i64 0, i32 5
  %1070 = load i32, i32* %1069, align 4, !tbaa !6
  %1071 = zext i32 %1070 to i64
  %1072 = icmp ult i64 %1065, %1071
  br i1 %1072, label %1073, label %1079

; <label>:1073:                                   ; preds = %1063
  %1074 = getelementptr inbounds %struct.Table, %struct.Table* %1068, i64 0, i32 6
  %1075 = load %struct.TValue*, %struct.TValue** %1074, align 8, !tbaa !6
  %1076 = add nsw i32 %1051, -1
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds %struct.TValue, %struct.TValue* %1075, i64 %1077
  br label %1081

; <label>:1079:                                   ; preds = %1063
  %1080 = call %struct.TValue* @luaH_getint(%struct.Table* %1068, i64 %1064) #10
  br label %1081

; <label>:1081:                                   ; preds = %1079, %1073
  %1082 = phi %struct.TValue* [ %1078, %1073 ], [ %1080, %1079 ]
  %1083 = getelementptr inbounds %struct.TValue, %struct.TValue* %1082, i64 0, i32 1
  %1084 = load i8, i8* %1083, align 8, !tbaa !2
  %1085 = and i8 %1084, 15
  %1086 = icmp eq i8 %1085, 0
  br i1 %1086, label %1110, label %1087

; <label>:1087:                                   ; preds = %1081
  %1088 = bitcast %struct.TValue* %1058 to i64*
  %1089 = bitcast %struct.TValue* %1082 to i64*
  %1090 = load i64, i64* %1088, align 8
  store i64 %1090, i64* %1089, align 8
  %1091 = getelementptr inbounds %struct.TValue, %struct.TValue* %1058, i64 0, i32 1
  %1092 = load i8, i8* %1091, align 8, !tbaa !2
  store i8 %1092, i8* %1083, align 8, !tbaa !2
  %1093 = load i8, i8* %1091, align 8, !tbaa !2
  %1094 = and i8 %1093, 64
  %1095 = icmp eq i8 %1094, 0
  br i1 %1095, label %1115, label %1096

; <label>:1096:                                   ; preds = %1087
  %1097 = load %struct.GCObject*, %struct.GCObject** %1066, align 8, !tbaa !6
  %1098 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1097, i64 0, i32 2
  %1099 = load i8, i8* %1098, align 1, !tbaa !23
  %1100 = and i8 %1099, 32
  %1101 = icmp eq i8 %1100, 0
  br i1 %1101, label %1115, label %1102

; <label>:1102:                                   ; preds = %1096
  %1103 = getelementptr inbounds %struct.TValue, %struct.TValue* %1058, i64 0, i32 0, i32 0
  %1104 = load %struct.GCObject*, %struct.GCObject** %1103, align 8, !tbaa !6
  %1105 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1104, i64 0, i32 2
  %1106 = load i8, i8* %1105, align 1, !tbaa !23
  %1107 = and i8 %1106, 24
  %1108 = icmp eq i8 %1107, 0
  br i1 %1108, label %1115, label %1109

; <label>:1109:                                   ; preds = %1102
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %1097) #10
  br label %1115

; <label>:1110:                                   ; preds = %1049, %1081
  %1111 = phi %struct.TValue* [ %1082, %1081 ], [ null, %1049 ]
  %1112 = zext i32 %1051 to i64
  store i64 %1112, i64* %116, align 8, !tbaa !6
  store i8 35, i8* %117, align 8, !tbaa !2
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1113 = load i64, i64* %119, align 8, !tbaa !42
  store i64 %1113, i64* %121, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %1059, %struct.TValue* nonnull %4, %struct.TValue* %1058, %struct.TValue* %1111)
  %1114 = load i32, i32* %123, align 8, !tbaa !6
  br label %1115

; <label>:1115:                                   ; preds = %1102, %1096, %1087, %1109, %1110
  %1116 = phi i32 [ %4083, %1109 ], [ %4083, %1102 ], [ %4083, %1096 ], [ %4083, %1087 ], [ %1114, %1110 ]
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1122, label %1118

; <label>:1118:                                   ; preds = %1115
  %1119 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1120 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1121 = getelementptr inbounds %union.StackValue, %union.StackValue* %1120, i64 1
  br label %1122

; <label>:1122:                                   ; preds = %1115, %1118
  %1123 = phi i32 [ %1119, %1118 ], [ 0, %1115 ]
  %1124 = phi %union.StackValue* [ %1121, %1118 ], [ %4085, %1115 ]
  %1125 = getelementptr inbounds i32, i32* %4084, i64 1
  %1126 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1127:                                   ; preds = %4080
  %1128 = lshr i32 %4082, 16
  %1129 = and i32 %1128, 255
  %1130 = zext i32 %1129 to i64
  %1131 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1130
  %1132 = trunc i32 %4082 to i16
  %1133 = icmp slt i16 %1132, 0
  %1134 = lshr i32 %4082, 24
  %1135 = zext i32 %1134 to i64
  %1136 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1135
  %1137 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1135, i32 0
  %1138 = select i1 %1133, %struct.TValue* %1136, %struct.TValue* %1137
  %1139 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %1140 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %1141 = load i8, i8* %1140, align 8, !tbaa !6
  %1142 = icmp eq i8 %1141, 69
  br i1 %1142, label %1143, label %1177

; <label>:1143:                                   ; preds = %1127
  %1144 = bitcast %struct.TValue* %1131 to %struct.TString**
  %1145 = load %struct.TString*, %struct.TString** %1144, align 8, !tbaa !6
  %1146 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 0, i32 0
  %1147 = bitcast %union.StackValue* %4081 to %struct.Table**
  %1148 = load %struct.Table*, %struct.Table** %1147, align 8, !tbaa !6
  %1149 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %1148, %struct.TString* %1145) #10
  %1150 = getelementptr inbounds %struct.TValue, %struct.TValue* %1149, i64 0, i32 1
  %1151 = load i8, i8* %1150, align 8, !tbaa !2
  %1152 = and i8 %1151, 15
  %1153 = icmp eq i8 %1152, 0
  br i1 %1153, label %1177, label %1154

; <label>:1154:                                   ; preds = %1143
  %1155 = bitcast %struct.TValue* %1138 to i64*
  %1156 = bitcast %struct.TValue* %1149 to i64*
  %1157 = load i64, i64* %1155, align 8
  store i64 %1157, i64* %1156, align 8
  %1158 = getelementptr inbounds %struct.TValue, %struct.TValue* %1138, i64 0, i32 1
  %1159 = load i8, i8* %1158, align 8, !tbaa !2
  store i8 %1159, i8* %1150, align 8, !tbaa !2
  %1160 = load i8, i8* %1158, align 8, !tbaa !2
  %1161 = and i8 %1160, 64
  %1162 = icmp eq i8 %1161, 0
  br i1 %1162, label %1181, label %1163

; <label>:1163:                                   ; preds = %1154
  %1164 = load %struct.GCObject*, %struct.GCObject** %1146, align 8, !tbaa !6
  %1165 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1164, i64 0, i32 2
  %1166 = load i8, i8* %1165, align 1, !tbaa !23
  %1167 = and i8 %1166, 32
  %1168 = icmp eq i8 %1167, 0
  br i1 %1168, label %1181, label %1169

; <label>:1169:                                   ; preds = %1163
  %1170 = getelementptr inbounds %struct.TValue, %struct.TValue* %1138, i64 0, i32 0, i32 0
  %1171 = load %struct.GCObject*, %struct.GCObject** %1170, align 8, !tbaa !6
  %1172 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1171, i64 0, i32 2
  %1173 = load i8, i8* %1172, align 1, !tbaa !23
  %1174 = and i8 %1173, 24
  %1175 = icmp eq i8 %1174, 0
  br i1 %1175, label %1181, label %1176

; <label>:1176:                                   ; preds = %1169
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %1164) #10
  br label %1181

; <label>:1177:                                   ; preds = %1127, %1143
  %1178 = phi %struct.TValue* [ %1149, %1143 ], [ null, %1127 ]
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1179 = load i64, i64* %125, align 8, !tbaa !42
  store i64 %1179, i64* %127, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %1139, %struct.TValue* %1131, %struct.TValue* %1138, %struct.TValue* %1178)
  %1180 = load i32, i32* %129, align 8, !tbaa !6
  br label %1181

; <label>:1181:                                   ; preds = %1169, %1163, %1154, %1176, %1177
  %1182 = phi i32 [ %4083, %1176 ], [ %4083, %1169 ], [ %4083, %1163 ], [ %4083, %1154 ], [ %1180, %1177 ]
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1188, label %1184

; <label>:1184:                                   ; preds = %1181
  %1185 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1186 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1187 = getelementptr inbounds %union.StackValue, %union.StackValue* %1186, i64 1
  br label %1188

; <label>:1188:                                   ; preds = %1181, %1184
  %1189 = phi i32 [ %1185, %1184 ], [ 0, %1181 ]
  %1190 = phi %union.StackValue* [ %1187, %1184 ], [ %4085, %1181 ]
  %1191 = getelementptr inbounds i32, i32* %4084, i64 1
  %1192 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1193:                                   ; preds = %4080
  %1194 = lshr i32 %4082, 16
  %1195 = and i32 %1194, 255
  %1196 = lshr i32 %4082, 24
  %1197 = load i64, i64* %32, align 8, !tbaa !42
  store i64 %1197, i64* %34, align 8, !tbaa !25
  %1198 = call %struct.Table* @luaH_new(%struct.lua_State* %0) #10
  %1199 = bitcast %union.StackValue* %4081 to %struct.Table**
  store %struct.Table* %1198, %struct.Table** %1199, align 8, !tbaa !6
  %1200 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 69, i8* %1200, align 8, !tbaa !2
  %1201 = or i32 %1195, %1196
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1206, label %1203

; <label>:1203:                                   ; preds = %1193
  %1204 = call i32 @luaO_fb2int(i32 %1195) #10
  %1205 = call i32 @luaO_fb2int(i32 %1196) #10
  call void @luaH_resize(%struct.lua_State* nonnull %0, %struct.Table* %1198, i32 %1204, i32 %1205) #10
  br label %1206

; <label>:1206:                                   ; preds = %1193, %1203
  %1207 = load %struct.global_State*, %struct.global_State** %130, align 8, !tbaa !16
  %1208 = getelementptr inbounds %struct.global_State, %struct.global_State* %1207, i64 0, i32 3
  %1209 = load i64, i64* %1208, align 8, !tbaa !43
  %1210 = icmp sgt i64 %1209, 0
  br i1 %1210, label %1211, label %1214

; <label>:1211:                                   ; preds = %1206
  %1212 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1
  store %union.StackValue* %1212, %union.StackValue** %33, align 8, !tbaa !25
  call void @luaC_step(%struct.lua_State* nonnull %0) #10
  %1213 = load i32, i32* %359, align 8, !tbaa !6
  br label %1214

; <label>:1214:                                   ; preds = %1211, %1206
  %1215 = phi i32 [ %1213, %1211 ], [ %4083, %1206 ]
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1221, label %1217

; <label>:1217:                                   ; preds = %1214
  %1218 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4084) #10
  %1219 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1220 = getelementptr inbounds %union.StackValue, %union.StackValue* %1219, i64 1
  br label %1221

; <label>:1221:                                   ; preds = %1214, %1217
  %1222 = phi i32 [ %1218, %1217 ], [ 0, %1214 ]
  %1223 = phi %union.StackValue* [ %1220, %1217 ], [ %4085, %1214 ]
  %1224 = getelementptr inbounds i32, i32* %4084, i64 1
  %1225 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1226:                                   ; preds = %4080
  %1227 = lshr i32 %4082, 16
  %1228 = and i32 %1227, 255
  %1229 = zext i32 %1228 to i64
  %1230 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1229, i32 0
  %1231 = trunc i32 %4082 to i16
  %1232 = icmp slt i16 %1231, 0
  %1233 = lshr i32 %4082, 24
  %1234 = zext i32 %1233 to i64
  %1235 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1234
  %1236 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1234, i32 0
  %1237 = select i1 %1232, %struct.TValue* %1235, %struct.TValue* %1236
  %1238 = bitcast %struct.TValue* %1237 to %struct.TString**
  %1239 = load %struct.TString*, %struct.TString** %1238, align 8, !tbaa !6
  %1240 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1, i32 0
  %1241 = bitcast %struct.TValue* %1230 to i64*
  %1242 = bitcast %struct.TValue* %1240 to i64*
  %1243 = load i64, i64* %1241, align 8
  store i64 %1243, i64* %1242, align 8
  %1244 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1229, i32 0, i32 1
  %1245 = load i8, i8* %1244, align 8, !tbaa !2
  %1246 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1, i32 0, i32 1
  store i8 %1245, i8* %1246, align 8, !tbaa !2
  %1247 = load i8, i8* %1244, align 8, !tbaa !2
  %1248 = icmp eq i8 %1247, 69
  br i1 %1248, label %1249, label %1263

; <label>:1249:                                   ; preds = %1226
  %1250 = bitcast %struct.TValue* %1230 to %struct.Table**
  %1251 = load %struct.Table*, %struct.Table** %1250, align 8, !tbaa !6
  %1252 = call %struct.TValue* @luaH_getstr(%struct.Table* %1251, %struct.TString* %1239) #10
  %1253 = getelementptr inbounds %struct.TValue, %struct.TValue* %1252, i64 0, i32 1
  %1254 = load i8, i8* %1253, align 8, !tbaa !2
  %1255 = and i8 %1254, 15
  %1256 = icmp eq i8 %1255, 0
  br i1 %1256, label %1263, label %1257

; <label>:1257:                                   ; preds = %1249
  %1258 = bitcast %struct.TValue* %1252 to i64*
  %1259 = bitcast %union.StackValue* %4081 to i64*
  %1260 = load i64, i64* %1258, align 8
  store i64 %1260, i64* %1259, align 8
  %1261 = load i8, i8* %1253, align 8, !tbaa !2
  %1262 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %1261, i8* %1262, align 8, !tbaa !2
  br label %1267

; <label>:1263:                                   ; preds = %1226, %1249
  %1264 = phi %struct.TValue* [ %1252, %1249 ], [ null, %1226 ]
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1265 = load i64, i64* %132, align 8, !tbaa !42
  store i64 %1265, i64* %134, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %1230, %struct.TValue* %1237, %union.StackValue* nonnull %4081, %struct.TValue* %1264)
  %1266 = load i32, i32* %136, align 8, !tbaa !6
  br label %1267

; <label>:1267:                                   ; preds = %1263, %1257
  %1268 = phi i32 [ %4083, %1257 ], [ %1266, %1263 ]
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1274, label %1270

; <label>:1270:                                   ; preds = %1267
  %1271 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1272 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1273 = getelementptr inbounds %union.StackValue, %union.StackValue* %1272, i64 1
  br label %1274

; <label>:1274:                                   ; preds = %1267, %1270
  %1275 = phi i32 [ %1271, %1270 ], [ 0, %1267 ]
  %1276 = phi %union.StackValue* [ %1273, %1270 ], [ %4085, %1267 ]
  %1277 = getelementptr inbounds i32, i32* %4084, i64 1
  %1278 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1279:                                   ; preds = %4080
  %1280 = lshr i32 %4082, 16
  %1281 = and i32 %1280, 255
  %1282 = zext i32 %1281 to i64
  %1283 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1282, i32 0
  %1284 = lshr i32 %4082, 24
  %1285 = add nsw i32 %1284, -127
  %1286 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1282, i32 0, i32 1
  %1287 = load i8, i8* %1286, align 8, !tbaa !2
  switch i8 %1287, label %1302 [
    i8 35, label %1288
    i8 19, label %1295
  ]

; <label>:1288:                                   ; preds = %1279
  %1289 = bitcast %struct.TValue* %1283 to i64*
  %1290 = load i64, i64* %1289, align 8, !tbaa !6
  %1291 = sext i32 %1285 to i64
  %1292 = add i64 %1290, %1291
  %1293 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1292, i64* %1293, align 8, !tbaa !6
  %1294 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1294, align 8, !tbaa !2
  br label %1308

; <label>:1295:                                   ; preds = %1279
  %1296 = bitcast %struct.TValue* %1283 to double*
  %1297 = load double, double* %1296, align 8, !tbaa !6
  %1298 = sitofp i32 %1285 to double
  %1299 = fadd double %1297, %1298
  %1300 = bitcast %union.StackValue* %4081 to double*
  store double %1299, double* %1300, align 8, !tbaa !6
  %1301 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1301, align 8, !tbaa !2
  br label %1308

; <label>:1302:                                   ; preds = %1279
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1303 = load i64, i64* %138, align 8, !tbaa !42
  store i64 %1303, i64* %140, align 8, !tbaa !25
  %1304 = sext i32 %1285 to i64
  %1305 = lshr i32 %4082, 15
  %1306 = and i32 %1305, 1
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1283, i64 %1304, i32 %1306, %union.StackValue* %4081, i32 6) #10
  %1307 = load i32, i32* %142, align 8, !tbaa !6
  br label %1308

; <label>:1308:                                   ; preds = %1295, %1302, %1288
  %1309 = phi i32 [ %4083, %1288 ], [ %4083, %1295 ], [ %1307, %1302 ]
  %1310 = icmp eq i32 %1309, 0
  br i1 %1310, label %1315, label %1311

; <label>:1311:                                   ; preds = %1308
  %1312 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1313 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1314 = getelementptr inbounds %union.StackValue, %union.StackValue* %1313, i64 1
  br label %1315

; <label>:1315:                                   ; preds = %1308, %1311
  %1316 = phi i32 [ %1312, %1311 ], [ 0, %1308 ]
  %1317 = phi %union.StackValue* [ %1314, %1311 ], [ %4085, %1308 ]
  %1318 = getelementptr inbounds i32, i32* %4084, i64 1
  %1319 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1320:                                   ; preds = %4080
  %1321 = lshr i32 %4082, 16
  %1322 = and i32 %1321, 255
  %1323 = zext i32 %1322 to i64
  %1324 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1323, i32 0
  %1325 = lshr i32 %4082, 24
  %1326 = add nsw i32 %1325, -127
  %1327 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1323, i32 0, i32 1
  %1328 = load i8, i8* %1327, align 8, !tbaa !2
  switch i8 %1328, label %1343 [
    i8 35, label %1329
    i8 19, label %1336
  ]

; <label>:1329:                                   ; preds = %1320
  %1330 = bitcast %struct.TValue* %1324 to i64*
  %1331 = load i64, i64* %1330, align 8, !tbaa !6
  %1332 = sext i32 %1326 to i64
  %1333 = sub i64 %1331, %1332
  %1334 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1333, i64* %1334, align 8, !tbaa !6
  %1335 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1335, align 8, !tbaa !2
  br label %1347

; <label>:1336:                                   ; preds = %1320
  %1337 = bitcast %struct.TValue* %1324 to double*
  %1338 = load double, double* %1337, align 8, !tbaa !6
  %1339 = sitofp i32 %1326 to double
  %1340 = fsub double %1338, %1339
  %1341 = bitcast %union.StackValue* %4081 to double*
  store double %1340, double* %1341, align 8, !tbaa !6
  %1342 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1342, align 8, !tbaa !2
  br label %1347

; <label>:1343:                                   ; preds = %1320
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1344 = load i64, i64* %144, align 8, !tbaa !42
  store i64 %1344, i64* %146, align 8, !tbaa !25
  %1345 = sext i32 %1326 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1324, i64 %1345, i32 0, %union.StackValue* %4081, i32 7) #10
  %1346 = load i32, i32* %148, align 8, !tbaa !6
  br label %1347

; <label>:1347:                                   ; preds = %1336, %1343, %1329
  %1348 = phi i32 [ %4083, %1329 ], [ %4083, %1336 ], [ %1346, %1343 ]
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1354, label %1350

; <label>:1350:                                   ; preds = %1347
  %1351 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1352 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1353 = getelementptr inbounds %union.StackValue, %union.StackValue* %1352, i64 1
  br label %1354

; <label>:1354:                                   ; preds = %1347, %1350
  %1355 = phi i32 [ %1351, %1350 ], [ 0, %1347 ]
  %1356 = phi %union.StackValue* [ %1353, %1350 ], [ %4085, %1347 ]
  %1357 = getelementptr inbounds i32, i32* %4084, i64 1
  %1358 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1359:                                   ; preds = %4080
  %1360 = lshr i32 %4082, 16
  %1361 = and i32 %1360, 255
  %1362 = zext i32 %1361 to i64
  %1363 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1362, i32 0
  %1364 = lshr i32 %4082, 24
  %1365 = add nsw i32 %1364, -127
  %1366 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1362, i32 0, i32 1
  %1367 = load i8, i8* %1366, align 8, !tbaa !2
  switch i8 %1367, label %1382 [
    i8 35, label %1368
    i8 19, label %1375
  ]

; <label>:1368:                                   ; preds = %1359
  %1369 = bitcast %struct.TValue* %1363 to i64*
  %1370 = load i64, i64* %1369, align 8, !tbaa !6
  %1371 = sext i32 %1365 to i64
  %1372 = mul i64 %1370, %1371
  %1373 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1372, i64* %1373, align 8, !tbaa !6
  %1374 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1374, align 8, !tbaa !2
  br label %1388

; <label>:1375:                                   ; preds = %1359
  %1376 = bitcast %struct.TValue* %1363 to double*
  %1377 = load double, double* %1376, align 8, !tbaa !6
  %1378 = sitofp i32 %1365 to double
  %1379 = fmul double %1377, %1378
  %1380 = bitcast %union.StackValue* %4081 to double*
  store double %1379, double* %1380, align 8, !tbaa !6
  %1381 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1381, align 8, !tbaa !2
  br label %1388

; <label>:1382:                                   ; preds = %1359
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1383 = load i64, i64* %150, align 8, !tbaa !42
  store i64 %1383, i64* %152, align 8, !tbaa !25
  %1384 = sext i32 %1365 to i64
  %1385 = lshr i32 %4082, 15
  %1386 = and i32 %1385, 1
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1363, i64 %1384, i32 %1386, %union.StackValue* %4081, i32 8) #10
  %1387 = load i32, i32* %154, align 8, !tbaa !6
  br label %1388

; <label>:1388:                                   ; preds = %1375, %1382, %1368
  %1389 = phi i32 [ %4083, %1368 ], [ %4083, %1375 ], [ %1387, %1382 ]
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1395, label %1391

; <label>:1391:                                   ; preds = %1388
  %1392 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1393 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1394 = getelementptr inbounds %union.StackValue, %union.StackValue* %1393, i64 1
  br label %1395

; <label>:1395:                                   ; preds = %1388, %1391
  %1396 = phi i32 [ %1392, %1391 ], [ 0, %1388 ]
  %1397 = phi %union.StackValue* [ %1394, %1391 ], [ %4085, %1388 ]
  %1398 = getelementptr inbounds i32, i32* %4084, i64 1
  %1399 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1400:                                   ; preds = %4080
  %1401 = lshr i32 %4082, 16
  %1402 = and i32 %1401, 255
  %1403 = zext i32 %1402 to i64
  %1404 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1403, i32 0
  %1405 = lshr i32 %4082, 24
  %1406 = add nsw i32 %1405, -127
  %1407 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1403, i32 0, i32 1
  %1408 = load i8, i8* %1407, align 8, !tbaa !2
  switch i8 %1408, label %1423 [
    i8 35, label %1409
    i8 19, label %1416
  ]

; <label>:1409:                                   ; preds = %1400
  %1410 = bitcast %struct.TValue* %1404 to i64*
  %1411 = load i64, i64* %1410, align 8, !tbaa !6
  %1412 = sext i32 %1406 to i64
  %1413 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %1411, i64 %1412)
  %1414 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1413, i64* %1414, align 8, !tbaa !6
  %1415 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1415, align 8, !tbaa !2
  br label %1427

; <label>:1416:                                   ; preds = %1400
  %1417 = bitcast %struct.TValue* %1404 to double*
  %1418 = load double, double* %1417, align 8, !tbaa !6
  %1419 = sitofp i32 %1406 to double
  %1420 = call double @luaV_modf(%struct.lua_State* undef, double %1418, double %1419)
  %1421 = bitcast %union.StackValue* %4081 to double*
  store double %1420, double* %1421, align 8, !tbaa !6
  %1422 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1422, align 8, !tbaa !2
  br label %1427

; <label>:1423:                                   ; preds = %1400
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1424 = load i64, i64* %156, align 8, !tbaa !42
  store i64 %1424, i64* %158, align 8, !tbaa !25
  %1425 = sext i32 %1406 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1404, i64 %1425, i32 0, %union.StackValue* %4081, i32 9) #10
  %1426 = load i32, i32* %160, align 8, !tbaa !6
  br label %1427

; <label>:1427:                                   ; preds = %1416, %1423, %1409
  %1428 = phi i32 [ %4083, %1409 ], [ %4083, %1416 ], [ %1426, %1423 ]
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1434, label %1430

; <label>:1430:                                   ; preds = %1427
  %1431 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1432 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1433 = getelementptr inbounds %union.StackValue, %union.StackValue* %1432, i64 1
  br label %1434

; <label>:1434:                                   ; preds = %1427, %1430
  %1435 = phi i32 [ %1431, %1430 ], [ 0, %1427 ]
  %1436 = phi %union.StackValue* [ %1433, %1430 ], [ %4085, %1427 ]
  %1437 = getelementptr inbounds i32, i32* %4084, i64 1
  %1438 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1439:                                   ; preds = %4080
  %1440 = lshr i32 %4082, 16
  %1441 = and i32 %1440, 255
  %1442 = zext i32 %1441 to i64
  %1443 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1442, i32 0
  %1444 = lshr i32 %4082, 24
  %1445 = add nsw i32 %1444, -127
  %1446 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1442, i32 0, i32 1
  %1447 = load i8, i8* %1446, align 8, !tbaa !2
  switch i8 %1447, label %1461 [
    i8 19, label %1448
    i8 35, label %1451
  ]

; <label>:1448:                                   ; preds = %1439
  %1449 = bitcast %struct.TValue* %1443 to double*
  %1450 = load double, double* %1449, align 8, !tbaa !6
  br label %1455

; <label>:1451:                                   ; preds = %1439
  %1452 = bitcast %struct.TValue* %1443 to i64*
  %1453 = load i64, i64* %1452, align 8, !tbaa !6
  %1454 = sitofp i64 %1453 to double
  br label %1455

; <label>:1455:                                   ; preds = %1448, %1451
  %1456 = phi double [ %1450, %1448 ], [ %1454, %1451 ]
  %1457 = sitofp i32 %1445 to double
  %1458 = call double @pow(double %1456, double %1457) #10
  %1459 = bitcast %union.StackValue* %4081 to double*
  store double %1458, double* %1459, align 8, !tbaa !6
  %1460 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1460, align 8, !tbaa !2
  br label %1465

; <label>:1461:                                   ; preds = %1439
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1462 = load i64, i64* %162, align 8, !tbaa !42
  store i64 %1462, i64* %164, align 8, !tbaa !25
  %1463 = sext i32 %1445 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1443, i64 %1463, i32 0, %union.StackValue* %4081, i32 10) #10
  %1464 = load i32, i32* %166, align 8, !tbaa !6
  br label %1465

; <label>:1465:                                   ; preds = %1461, %1455
  %1466 = phi i32 [ %4083, %1455 ], [ %1464, %1461 ]
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1472, label %1468

; <label>:1468:                                   ; preds = %1465
  %1469 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1470 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1471 = getelementptr inbounds %union.StackValue, %union.StackValue* %1470, i64 1
  br label %1472

; <label>:1472:                                   ; preds = %1465, %1468
  %1473 = phi i32 [ %1469, %1468 ], [ 0, %1465 ]
  %1474 = phi %union.StackValue* [ %1471, %1468 ], [ %4085, %1465 ]
  %1475 = getelementptr inbounds i32, i32* %4084, i64 1
  %1476 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1477:                                   ; preds = %4080
  %1478 = lshr i32 %4082, 16
  %1479 = and i32 %1478, 255
  %1480 = zext i32 %1479 to i64
  %1481 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1480, i32 0
  %1482 = lshr i32 %4082, 24
  %1483 = add nsw i32 %1482, -127
  %1484 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1480, i32 0, i32 1
  %1485 = load i8, i8* %1484, align 8, !tbaa !2
  switch i8 %1485, label %1499 [
    i8 19, label %1486
    i8 35, label %1489
  ]

; <label>:1486:                                   ; preds = %1477
  %1487 = bitcast %struct.TValue* %1481 to double*
  %1488 = load double, double* %1487, align 8, !tbaa !6
  br label %1493

; <label>:1489:                                   ; preds = %1477
  %1490 = bitcast %struct.TValue* %1481 to i64*
  %1491 = load i64, i64* %1490, align 8, !tbaa !6
  %1492 = sitofp i64 %1491 to double
  br label %1493

; <label>:1493:                                   ; preds = %1486, %1489
  %1494 = phi double [ %1488, %1486 ], [ %1492, %1489 ]
  %1495 = sitofp i32 %1483 to double
  %1496 = fdiv double %1494, %1495
  %1497 = bitcast %union.StackValue* %4081 to double*
  store double %1496, double* %1497, align 8, !tbaa !6
  %1498 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1498, align 8, !tbaa !2
  br label %1503

; <label>:1499:                                   ; preds = %1477
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1500 = load i64, i64* %168, align 8, !tbaa !42
  store i64 %1500, i64* %170, align 8, !tbaa !25
  %1501 = sext i32 %1483 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1481, i64 %1501, i32 0, %union.StackValue* %4081, i32 11) #10
  %1502 = load i32, i32* %172, align 8, !tbaa !6
  br label %1503

; <label>:1503:                                   ; preds = %1499, %1493
  %1504 = phi i32 [ %4083, %1493 ], [ %1502, %1499 ]
  %1505 = icmp eq i32 %1504, 0
  br i1 %1505, label %1510, label %1506

; <label>:1506:                                   ; preds = %1503
  %1507 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1508 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1509 = getelementptr inbounds %union.StackValue, %union.StackValue* %1508, i64 1
  br label %1510

; <label>:1510:                                   ; preds = %1503, %1506
  %1511 = phi i32 [ %1507, %1506 ], [ 0, %1503 ]
  %1512 = phi %union.StackValue* [ %1509, %1506 ], [ %4085, %1503 ]
  %1513 = getelementptr inbounds i32, i32* %4084, i64 1
  %1514 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1515:                                   ; preds = %4080
  %1516 = lshr i32 %4082, 16
  %1517 = and i32 %1516, 255
  %1518 = zext i32 %1517 to i64
  %1519 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1518, i32 0
  %1520 = lshr i32 %4082, 24
  %1521 = add nsw i32 %1520, -127
  %1522 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1518, i32 0, i32 1
  %1523 = load i8, i8* %1522, align 8, !tbaa !2
  switch i8 %1523, label %1539 [
    i8 35, label %1524
    i8 19, label %1531
  ]

; <label>:1524:                                   ; preds = %1515
  %1525 = bitcast %struct.TValue* %1519 to i64*
  %1526 = load i64, i64* %1525, align 8, !tbaa !6
  %1527 = sext i32 %1521 to i64
  %1528 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %1526, i64 %1527)
  %1529 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1528, i64* %1529, align 8, !tbaa !6
  %1530 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1530, align 8, !tbaa !2
  br label %1543

; <label>:1531:                                   ; preds = %1515
  %1532 = bitcast %struct.TValue* %1519 to double*
  %1533 = load double, double* %1532, align 8, !tbaa !6
  %1534 = sitofp i32 %1521 to double
  %1535 = fdiv double %1533, %1534
  %1536 = call double @llvm.floor.f64(double %1535)
  %1537 = bitcast %union.StackValue* %4081 to double*
  store double %1536, double* %1537, align 8, !tbaa !6
  %1538 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1538, align 8, !tbaa !2
  br label %1543

; <label>:1539:                                   ; preds = %1515
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1540 = load i64, i64* %174, align 8, !tbaa !42
  store i64 %1540, i64* %176, align 8, !tbaa !25
  %1541 = sext i32 %1521 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1519, i64 %1541, i32 0, %union.StackValue* %4081, i32 12) #10
  %1542 = load i32, i32* %178, align 8, !tbaa !6
  br label %1543

; <label>:1543:                                   ; preds = %1531, %1539, %1524
  %1544 = phi i32 [ %4083, %1524 ], [ %4083, %1531 ], [ %1542, %1539 ]
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1550, label %1546

; <label>:1546:                                   ; preds = %1543
  %1547 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1548 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1549 = getelementptr inbounds %union.StackValue, %union.StackValue* %1548, i64 1
  br label %1550

; <label>:1550:                                   ; preds = %1543, %1546
  %1551 = phi i32 [ %1547, %1546 ], [ 0, %1543 ]
  %1552 = phi %union.StackValue* [ %1549, %1546 ], [ %4085, %1543 ]
  %1553 = getelementptr inbounds i32, i32* %4084, i64 1
  %1554 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1555:                                   ; preds = %4080
  %1556 = lshr i32 %4082, 16
  %1557 = and i32 %1556, 255
  %1558 = zext i32 %1557 to i64
  %1559 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1558, i32 0
  %1560 = lshr i32 %4082, 24
  %1561 = zext i32 %1560 to i64
  %1562 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1561
  %1563 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1558, i32 0, i32 1
  %1564 = load i8, i8* %1563, align 8, !tbaa !2
  switch i8 %1564, label %1598 [
    i8 35, label %1565
    i8 19, label %1577
  ]

; <label>:1565:                                   ; preds = %1555
  %1566 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1561, i32 1
  %1567 = load i8, i8* %1566, align 8, !tbaa !2
  %1568 = icmp eq i8 %1567, 35
  %1569 = bitcast %struct.TValue* %1559 to i64*
  %1570 = load i64, i64* %1569, align 8, !tbaa !6
  br i1 %1568, label %1571, label %1580

; <label>:1571:                                   ; preds = %1565
  %1572 = bitcast %struct.TValue* %1562 to i64*
  %1573 = load i64, i64* %1572, align 8, !tbaa !6
  %1574 = add i64 %1573, %1570
  %1575 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1574, i64* %1575, align 8, !tbaa !6
  %1576 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1576, align 8, !tbaa !2
  br label %1603

; <label>:1577:                                   ; preds = %1555
  %1578 = bitcast %struct.TValue* %1559 to double*
  %1579 = load double, double* %1578, align 8, !tbaa !6
  br label %1582

; <label>:1580:                                   ; preds = %1565
  %1581 = sitofp i64 %1570 to double
  br label %1582

; <label>:1582:                                   ; preds = %1577, %1580
  %1583 = phi double [ %1579, %1577 ], [ %1581, %1580 ]
  %1584 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1561, i32 1
  %1585 = load i8, i8* %1584, align 8, !tbaa !2
  switch i8 %1585, label %1598 [
    i8 19, label %1586
    i8 35, label %1589
  ]

; <label>:1586:                                   ; preds = %1582
  %1587 = bitcast %struct.TValue* %1562 to double*
  %1588 = load double, double* %1587, align 8, !tbaa !6
  br label %1593

; <label>:1589:                                   ; preds = %1582
  %1590 = bitcast %struct.TValue* %1562 to i64*
  %1591 = load i64, i64* %1590, align 8, !tbaa !6
  %1592 = sitofp i64 %1591 to double
  br label %1593

; <label>:1593:                                   ; preds = %1586, %1589
  %1594 = phi double [ %1588, %1586 ], [ %1592, %1589 ]
  %1595 = fadd double %1583, %1594
  %1596 = bitcast %union.StackValue* %4081 to double*
  store double %1595, double* %1596, align 8, !tbaa !6
  %1597 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1597, align 8, !tbaa !2
  br label %1603

; <label>:1598:                                   ; preds = %1555, %1582
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1599 = load i64, i64* %180, align 8, !tbaa !42
  store i64 %1599, i64* %182, align 8, !tbaa !25
  %1600 = lshr i32 %4082, 15
  %1601 = and i32 %1600, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1559, %struct.TValue* %1562, %union.StackValue* %4081, i32 %1601, i32 6) #10
  %1602 = load i32, i32* %184, align 8, !tbaa !6
  br label %1603

; <label>:1603:                                   ; preds = %1593, %1598, %1571
  %1604 = phi i32 [ %4083, %1571 ], [ %4083, %1593 ], [ %1602, %1598 ]
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1610, label %1606

; <label>:1606:                                   ; preds = %1603
  %1607 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1608 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1609 = getelementptr inbounds %union.StackValue, %union.StackValue* %1608, i64 1
  br label %1610

; <label>:1610:                                   ; preds = %1603, %1606
  %1611 = phi i32 [ %1607, %1606 ], [ 0, %1603 ]
  %1612 = phi %union.StackValue* [ %1609, %1606 ], [ %4085, %1603 ]
  %1613 = getelementptr inbounds i32, i32* %4084, i64 1
  %1614 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1615:                                   ; preds = %4080
  %1616 = lshr i32 %4082, 16
  %1617 = and i32 %1616, 255
  %1618 = zext i32 %1617 to i64
  %1619 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1618, i32 0
  %1620 = lshr i32 %4082, 24
  %1621 = zext i32 %1620 to i64
  %1622 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1621
  %1623 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1618, i32 0, i32 1
  %1624 = load i8, i8* %1623, align 8, !tbaa !2
  switch i8 %1624, label %1658 [
    i8 35, label %1625
    i8 19, label %1637
  ]

; <label>:1625:                                   ; preds = %1615
  %1626 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1621, i32 1
  %1627 = load i8, i8* %1626, align 8, !tbaa !2
  %1628 = icmp eq i8 %1627, 35
  %1629 = bitcast %struct.TValue* %1619 to i64*
  %1630 = load i64, i64* %1629, align 8, !tbaa !6
  br i1 %1628, label %1631, label %1640

; <label>:1631:                                   ; preds = %1625
  %1632 = bitcast %struct.TValue* %1622 to i64*
  %1633 = load i64, i64* %1632, align 8, !tbaa !6
  %1634 = sub i64 %1630, %1633
  %1635 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1634, i64* %1635, align 8, !tbaa !6
  %1636 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1636, align 8, !tbaa !2
  br label %1661

; <label>:1637:                                   ; preds = %1615
  %1638 = bitcast %struct.TValue* %1619 to double*
  %1639 = load double, double* %1638, align 8, !tbaa !6
  br label %1642

; <label>:1640:                                   ; preds = %1625
  %1641 = sitofp i64 %1630 to double
  br label %1642

; <label>:1642:                                   ; preds = %1637, %1640
  %1643 = phi double [ %1639, %1637 ], [ %1641, %1640 ]
  %1644 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1621, i32 1
  %1645 = load i8, i8* %1644, align 8, !tbaa !2
  switch i8 %1645, label %1658 [
    i8 19, label %1646
    i8 35, label %1649
  ]

; <label>:1646:                                   ; preds = %1642
  %1647 = bitcast %struct.TValue* %1622 to double*
  %1648 = load double, double* %1647, align 8, !tbaa !6
  br label %1653

; <label>:1649:                                   ; preds = %1642
  %1650 = bitcast %struct.TValue* %1622 to i64*
  %1651 = load i64, i64* %1650, align 8, !tbaa !6
  %1652 = sitofp i64 %1651 to double
  br label %1653

; <label>:1653:                                   ; preds = %1646, %1649
  %1654 = phi double [ %1648, %1646 ], [ %1652, %1649 ]
  %1655 = fsub double %1643, %1654
  %1656 = bitcast %union.StackValue* %4081 to double*
  store double %1655, double* %1656, align 8, !tbaa !6
  %1657 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1657, align 8, !tbaa !2
  br label %1661

; <label>:1658:                                   ; preds = %1615, %1642
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1659 = load i64, i64* %186, align 8, !tbaa !42
  store i64 %1659, i64* %188, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1619, %struct.TValue* %1622, %union.StackValue* %4081, i32 0, i32 7) #10
  %1660 = load i32, i32* %190, align 8, !tbaa !6
  br label %1661

; <label>:1661:                                   ; preds = %1653, %1658, %1631
  %1662 = phi i32 [ %4083, %1631 ], [ %4083, %1653 ], [ %1660, %1658 ]
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1668, label %1664

; <label>:1664:                                   ; preds = %1661
  %1665 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1666 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1667 = getelementptr inbounds %union.StackValue, %union.StackValue* %1666, i64 1
  br label %1668

; <label>:1668:                                   ; preds = %1661, %1664
  %1669 = phi i32 [ %1665, %1664 ], [ 0, %1661 ]
  %1670 = phi %union.StackValue* [ %1667, %1664 ], [ %4085, %1661 ]
  %1671 = getelementptr inbounds i32, i32* %4084, i64 1
  %1672 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1673:                                   ; preds = %4080
  %1674 = lshr i32 %4082, 16
  %1675 = and i32 %1674, 255
  %1676 = zext i32 %1675 to i64
  %1677 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1676, i32 0
  %1678 = lshr i32 %4082, 24
  %1679 = zext i32 %1678 to i64
  %1680 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1679
  %1681 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1676, i32 0, i32 1
  %1682 = load i8, i8* %1681, align 8, !tbaa !2
  switch i8 %1682, label %1716 [
    i8 35, label %1683
    i8 19, label %1695
  ]

; <label>:1683:                                   ; preds = %1673
  %1684 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1679, i32 1
  %1685 = load i8, i8* %1684, align 8, !tbaa !2
  %1686 = icmp eq i8 %1685, 35
  %1687 = bitcast %struct.TValue* %1677 to i64*
  %1688 = load i64, i64* %1687, align 8, !tbaa !6
  br i1 %1686, label %1689, label %1698

; <label>:1689:                                   ; preds = %1683
  %1690 = bitcast %struct.TValue* %1680 to i64*
  %1691 = load i64, i64* %1690, align 8, !tbaa !6
  %1692 = mul i64 %1691, %1688
  %1693 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1692, i64* %1693, align 8, !tbaa !6
  %1694 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1694, align 8, !tbaa !2
  br label %1721

; <label>:1695:                                   ; preds = %1673
  %1696 = bitcast %struct.TValue* %1677 to double*
  %1697 = load double, double* %1696, align 8, !tbaa !6
  br label %1700

; <label>:1698:                                   ; preds = %1683
  %1699 = sitofp i64 %1688 to double
  br label %1700

; <label>:1700:                                   ; preds = %1695, %1698
  %1701 = phi double [ %1697, %1695 ], [ %1699, %1698 ]
  %1702 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1679, i32 1
  %1703 = load i8, i8* %1702, align 8, !tbaa !2
  switch i8 %1703, label %1716 [
    i8 19, label %1704
    i8 35, label %1707
  ]

; <label>:1704:                                   ; preds = %1700
  %1705 = bitcast %struct.TValue* %1680 to double*
  %1706 = load double, double* %1705, align 8, !tbaa !6
  br label %1711

; <label>:1707:                                   ; preds = %1700
  %1708 = bitcast %struct.TValue* %1680 to i64*
  %1709 = load i64, i64* %1708, align 8, !tbaa !6
  %1710 = sitofp i64 %1709 to double
  br label %1711

; <label>:1711:                                   ; preds = %1704, %1707
  %1712 = phi double [ %1706, %1704 ], [ %1710, %1707 ]
  %1713 = fmul double %1701, %1712
  %1714 = bitcast %union.StackValue* %4081 to double*
  store double %1713, double* %1714, align 8, !tbaa !6
  %1715 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1715, align 8, !tbaa !2
  br label %1721

; <label>:1716:                                   ; preds = %1673, %1700
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1717 = load i64, i64* %192, align 8, !tbaa !42
  store i64 %1717, i64* %194, align 8, !tbaa !25
  %1718 = lshr i32 %4082, 15
  %1719 = and i32 %1718, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1677, %struct.TValue* %1680, %union.StackValue* %4081, i32 %1719, i32 8) #10
  %1720 = load i32, i32* %196, align 8, !tbaa !6
  br label %1721

; <label>:1721:                                   ; preds = %1711, %1716, %1689
  %1722 = phi i32 [ %4083, %1689 ], [ %4083, %1711 ], [ %1720, %1716 ]
  %1723 = icmp eq i32 %1722, 0
  br i1 %1723, label %1728, label %1724

; <label>:1724:                                   ; preds = %1721
  %1725 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1726 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1727 = getelementptr inbounds %union.StackValue, %union.StackValue* %1726, i64 1
  br label %1728

; <label>:1728:                                   ; preds = %1721, %1724
  %1729 = phi i32 [ %1725, %1724 ], [ 0, %1721 ]
  %1730 = phi %union.StackValue* [ %1727, %1724 ], [ %4085, %1721 ]
  %1731 = getelementptr inbounds i32, i32* %4084, i64 1
  %1732 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1733:                                   ; preds = %4080
  %1734 = lshr i32 %4082, 16
  %1735 = and i32 %1734, 255
  %1736 = zext i32 %1735 to i64
  %1737 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1736, i32 0
  %1738 = lshr i32 %4082, 24
  %1739 = zext i32 %1738 to i64
  %1740 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1739
  %1741 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1736, i32 0, i32 1
  %1742 = load i8, i8* %1741, align 8, !tbaa !2
  switch i8 %1742, label %1776 [
    i8 35, label %1743
    i8 19, label %1755
  ]

; <label>:1743:                                   ; preds = %1733
  %1744 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1739, i32 1
  %1745 = load i8, i8* %1744, align 8, !tbaa !2
  %1746 = icmp eq i8 %1745, 35
  %1747 = bitcast %struct.TValue* %1737 to i64*
  %1748 = load i64, i64* %1747, align 8, !tbaa !6
  br i1 %1746, label %1749, label %1758

; <label>:1749:                                   ; preds = %1743
  %1750 = bitcast %struct.TValue* %1740 to i64*
  %1751 = load i64, i64* %1750, align 8, !tbaa !6
  %1752 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %1748, i64 %1751)
  %1753 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1752, i64* %1753, align 8, !tbaa !6
  %1754 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1754, align 8, !tbaa !2
  br label %1779

; <label>:1755:                                   ; preds = %1733
  %1756 = bitcast %struct.TValue* %1737 to double*
  %1757 = load double, double* %1756, align 8, !tbaa !6
  br label %1760

; <label>:1758:                                   ; preds = %1743
  %1759 = sitofp i64 %1748 to double
  br label %1760

; <label>:1760:                                   ; preds = %1755, %1758
  %1761 = phi double [ %1757, %1755 ], [ %1759, %1758 ]
  %1762 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1739, i32 1
  %1763 = load i8, i8* %1762, align 8, !tbaa !2
  switch i8 %1763, label %1776 [
    i8 19, label %1764
    i8 35, label %1767
  ]

; <label>:1764:                                   ; preds = %1760
  %1765 = bitcast %struct.TValue* %1740 to double*
  %1766 = load double, double* %1765, align 8, !tbaa !6
  br label %1771

; <label>:1767:                                   ; preds = %1760
  %1768 = bitcast %struct.TValue* %1740 to i64*
  %1769 = load i64, i64* %1768, align 8, !tbaa !6
  %1770 = sitofp i64 %1769 to double
  br label %1771

; <label>:1771:                                   ; preds = %1764, %1767
  %1772 = phi double [ %1766, %1764 ], [ %1770, %1767 ]
  %1773 = call double @luaV_modf(%struct.lua_State* undef, double %1761, double %1772)
  %1774 = bitcast %union.StackValue* %4081 to double*
  store double %1773, double* %1774, align 8, !tbaa !6
  %1775 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1775, align 8, !tbaa !2
  br label %1779

; <label>:1776:                                   ; preds = %1733, %1760
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1777 = load i64, i64* %198, align 8, !tbaa !42
  store i64 %1777, i64* %200, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1737, %struct.TValue* %1740, %union.StackValue* %4081, i32 0, i32 9) #10
  %1778 = load i32, i32* %202, align 8, !tbaa !6
  br label %1779

; <label>:1779:                                   ; preds = %1771, %1776, %1749
  %1780 = phi i32 [ %4083, %1749 ], [ %4083, %1771 ], [ %1778, %1776 ]
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1786, label %1782

; <label>:1782:                                   ; preds = %1779
  %1783 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1784 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1785 = getelementptr inbounds %union.StackValue, %union.StackValue* %1784, i64 1
  br label %1786

; <label>:1786:                                   ; preds = %1779, %1782
  %1787 = phi i32 [ %1783, %1782 ], [ 0, %1779 ]
  %1788 = phi %union.StackValue* [ %1785, %1782 ], [ %4085, %1779 ]
  %1789 = getelementptr inbounds i32, i32* %4084, i64 1
  %1790 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1791:                                   ; preds = %4080
  %1792 = lshr i32 %4082, 16
  %1793 = and i32 %1792, 255
  %1794 = zext i32 %1793 to i64
  %1795 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1794, i32 0
  %1796 = lshr i32 %4082, 24
  %1797 = zext i32 %1796 to i64
  %1798 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1797
  %1799 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1794, i32 0, i32 1
  %1800 = load i8, i8* %1799, align 8, !tbaa !2
  switch i8 %1800, label %1824 [
    i8 19, label %1801
    i8 35, label %1804
  ]

; <label>:1801:                                   ; preds = %1791
  %1802 = bitcast %struct.TValue* %1795 to double*
  %1803 = load double, double* %1802, align 8, !tbaa !6
  br label %1808

; <label>:1804:                                   ; preds = %1791
  %1805 = bitcast %struct.TValue* %1795 to i64*
  %1806 = load i64, i64* %1805, align 8, !tbaa !6
  %1807 = sitofp i64 %1806 to double
  br label %1808

; <label>:1808:                                   ; preds = %1801, %1804
  %1809 = phi double [ %1803, %1801 ], [ %1807, %1804 ]
  %1810 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1797, i32 1
  %1811 = load i8, i8* %1810, align 8, !tbaa !2
  switch i8 %1811, label %1824 [
    i8 19, label %1812
    i8 35, label %1815
  ]

; <label>:1812:                                   ; preds = %1808
  %1813 = bitcast %struct.TValue* %1798 to double*
  %1814 = load double, double* %1813, align 8, !tbaa !6
  br label %1819

; <label>:1815:                                   ; preds = %1808
  %1816 = bitcast %struct.TValue* %1798 to i64*
  %1817 = load i64, i64* %1816, align 8, !tbaa !6
  %1818 = sitofp i64 %1817 to double
  br label %1819

; <label>:1819:                                   ; preds = %1812, %1815
  %1820 = phi double [ %1814, %1812 ], [ %1818, %1815 ]
  %1821 = call double @pow(double %1809, double %1820) #10
  %1822 = bitcast %union.StackValue* %4081 to double*
  store double %1821, double* %1822, align 8, !tbaa !6
  %1823 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1823, align 8, !tbaa !2
  br label %1827

; <label>:1824:                                   ; preds = %1808, %1791
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1825 = load i64, i64* %204, align 8, !tbaa !42
  store i64 %1825, i64* %206, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1795, %struct.TValue* %1798, %union.StackValue* %4081, i32 10) #10
  %1826 = load i32, i32* %208, align 8, !tbaa !6
  br label %1827

; <label>:1827:                                   ; preds = %1824, %1819
  %1828 = phi i32 [ %4083, %1819 ], [ %1826, %1824 ]
  %1829 = icmp eq i32 %1828, 0
  br i1 %1829, label %1834, label %1830

; <label>:1830:                                   ; preds = %1827
  %1831 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1832 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1833 = getelementptr inbounds %union.StackValue, %union.StackValue* %1832, i64 1
  br label %1834

; <label>:1834:                                   ; preds = %1827, %1830
  %1835 = phi i32 [ %1831, %1830 ], [ 0, %1827 ]
  %1836 = phi %union.StackValue* [ %1833, %1830 ], [ %4085, %1827 ]
  %1837 = getelementptr inbounds i32, i32* %4084, i64 1
  %1838 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1839:                                   ; preds = %4080
  %1840 = lshr i32 %4082, 16
  %1841 = and i32 %1840, 255
  %1842 = zext i32 %1841 to i64
  %1843 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1842, i32 0
  %1844 = lshr i32 %4082, 24
  %1845 = zext i32 %1844 to i64
  %1846 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1845
  %1847 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1842, i32 0, i32 1
  %1848 = load i8, i8* %1847, align 8, !tbaa !2
  switch i8 %1848, label %1872 [
    i8 19, label %1849
    i8 35, label %1852
  ]

; <label>:1849:                                   ; preds = %1839
  %1850 = bitcast %struct.TValue* %1843 to double*
  %1851 = load double, double* %1850, align 8, !tbaa !6
  br label %1856

; <label>:1852:                                   ; preds = %1839
  %1853 = bitcast %struct.TValue* %1843 to i64*
  %1854 = load i64, i64* %1853, align 8, !tbaa !6
  %1855 = sitofp i64 %1854 to double
  br label %1856

; <label>:1856:                                   ; preds = %1849, %1852
  %1857 = phi double [ %1851, %1849 ], [ %1855, %1852 ]
  %1858 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1845, i32 1
  %1859 = load i8, i8* %1858, align 8, !tbaa !2
  switch i8 %1859, label %1872 [
    i8 19, label %1860
    i8 35, label %1863
  ]

; <label>:1860:                                   ; preds = %1856
  %1861 = bitcast %struct.TValue* %1846 to double*
  %1862 = load double, double* %1861, align 8, !tbaa !6
  br label %1867

; <label>:1863:                                   ; preds = %1856
  %1864 = bitcast %struct.TValue* %1846 to i64*
  %1865 = load i64, i64* %1864, align 8, !tbaa !6
  %1866 = sitofp i64 %1865 to double
  br label %1867

; <label>:1867:                                   ; preds = %1860, %1863
  %1868 = phi double [ %1862, %1860 ], [ %1866, %1863 ]
  %1869 = fdiv double %1857, %1868
  %1870 = bitcast %union.StackValue* %4081 to double*
  store double %1869, double* %1870, align 8, !tbaa !6
  %1871 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1871, align 8, !tbaa !2
  br label %1875

; <label>:1872:                                   ; preds = %1856, %1839
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1873 = load i64, i64* %210, align 8, !tbaa !42
  store i64 %1873, i64* %212, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1843, %struct.TValue* %1846, %union.StackValue* %4081, i32 11) #10
  %1874 = load i32, i32* %214, align 8, !tbaa !6
  br label %1875

; <label>:1875:                                   ; preds = %1872, %1867
  %1876 = phi i32 [ %4083, %1867 ], [ %1874, %1872 ]
  %1877 = icmp eq i32 %1876, 0
  br i1 %1877, label %1882, label %1878

; <label>:1878:                                   ; preds = %1875
  %1879 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1880 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1881 = getelementptr inbounds %union.StackValue, %union.StackValue* %1880, i64 1
  br label %1882

; <label>:1882:                                   ; preds = %1875, %1878
  %1883 = phi i32 [ %1879, %1878 ], [ 0, %1875 ]
  %1884 = phi %union.StackValue* [ %1881, %1878 ], [ %4085, %1875 ]
  %1885 = getelementptr inbounds i32, i32* %4084, i64 1
  %1886 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1887:                                   ; preds = %4080
  %1888 = lshr i32 %4082, 16
  %1889 = and i32 %1888, 255
  %1890 = zext i32 %1889 to i64
  %1891 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1890, i32 0
  %1892 = lshr i32 %4082, 24
  %1893 = zext i32 %1892 to i64
  %1894 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1893
  %1895 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1890, i32 0, i32 1
  %1896 = load i8, i8* %1895, align 8, !tbaa !2
  switch i8 %1896, label %1931 [
    i8 35, label %1897
    i8 19, label %1909
  ]

; <label>:1897:                                   ; preds = %1887
  %1898 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1893, i32 1
  %1899 = load i8, i8* %1898, align 8, !tbaa !2
  %1900 = icmp eq i8 %1899, 35
  %1901 = bitcast %struct.TValue* %1891 to i64*
  %1902 = load i64, i64* %1901, align 8, !tbaa !6
  br i1 %1900, label %1903, label %1912

; <label>:1903:                                   ; preds = %1897
  %1904 = bitcast %struct.TValue* %1894 to i64*
  %1905 = load i64, i64* %1904, align 8, !tbaa !6
  %1906 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %1902, i64 %1905)
  %1907 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1906, i64* %1907, align 8, !tbaa !6
  %1908 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1908, align 8, !tbaa !2
  br label %1934

; <label>:1909:                                   ; preds = %1887
  %1910 = bitcast %struct.TValue* %1891 to double*
  %1911 = load double, double* %1910, align 8, !tbaa !6
  br label %1914

; <label>:1912:                                   ; preds = %1897
  %1913 = sitofp i64 %1902 to double
  br label %1914

; <label>:1914:                                   ; preds = %1909, %1912
  %1915 = phi double [ %1911, %1909 ], [ %1913, %1912 ]
  %1916 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %1893, i32 1
  %1917 = load i8, i8* %1916, align 8, !tbaa !2
  switch i8 %1917, label %1931 [
    i8 19, label %1918
    i8 35, label %1921
  ]

; <label>:1918:                                   ; preds = %1914
  %1919 = bitcast %struct.TValue* %1894 to double*
  %1920 = load double, double* %1919, align 8, !tbaa !6
  br label %1925

; <label>:1921:                                   ; preds = %1914
  %1922 = bitcast %struct.TValue* %1894 to i64*
  %1923 = load i64, i64* %1922, align 8, !tbaa !6
  %1924 = sitofp i64 %1923 to double
  br label %1925

; <label>:1925:                                   ; preds = %1918, %1921
  %1926 = phi double [ %1920, %1918 ], [ %1924, %1921 ]
  %1927 = fdiv double %1915, %1926
  %1928 = call double @llvm.floor.f64(double %1927)
  %1929 = bitcast %union.StackValue* %4081 to double*
  store double %1928, double* %1929, align 8, !tbaa !6
  %1930 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1930, align 8, !tbaa !2
  br label %1934

; <label>:1931:                                   ; preds = %1887, %1914
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1932 = load i64, i64* %216, align 8, !tbaa !42
  store i64 %1932, i64* %218, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1891, %struct.TValue* %1894, %union.StackValue* %4081, i32 0, i32 12) #10
  %1933 = load i32, i32* %220, align 8, !tbaa !6
  br label %1934

; <label>:1934:                                   ; preds = %1925, %1931, %1903
  %1935 = phi i32 [ %4083, %1903 ], [ %4083, %1925 ], [ %1933, %1931 ]
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %1941, label %1937

; <label>:1937:                                   ; preds = %1934
  %1938 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1939 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1940 = getelementptr inbounds %union.StackValue, %union.StackValue* %1939, i64 1
  br label %1941

; <label>:1941:                                   ; preds = %1934, %1937
  %1942 = phi i32 [ %1938, %1937 ], [ 0, %1934 ]
  %1943 = phi %union.StackValue* [ %1940, %1937 ], [ %4085, %1934 ]
  %1944 = getelementptr inbounds i32, i32* %4084, i64 1
  %1945 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:1946:                                   ; preds = %4080
  %1947 = lshr i32 %4082, 16
  %1948 = and i32 %1947, 255
  %1949 = zext i32 %1948 to i64
  %1950 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1949, i32 0
  %1951 = lshr i32 %4082, 24
  %1952 = zext i32 %1951 to i64
  %1953 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1952, i32 0
  %1954 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1949, i32 0, i32 1
  %1955 = load i8, i8* %1954, align 8, !tbaa !2
  switch i8 %1955, label %1989 [
    i8 35, label %1956
    i8 19, label %1968
  ]

; <label>:1956:                                   ; preds = %1946
  %1957 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1952, i32 0, i32 1
  %1958 = load i8, i8* %1957, align 8, !tbaa !2
  %1959 = icmp eq i8 %1958, 35
  %1960 = bitcast %struct.TValue* %1950 to i64*
  %1961 = load i64, i64* %1960, align 8, !tbaa !6
  br i1 %1959, label %1962, label %1971

; <label>:1962:                                   ; preds = %1956
  %1963 = bitcast %struct.TValue* %1953 to i64*
  %1964 = load i64, i64* %1963, align 8, !tbaa !6
  %1965 = add i64 %1964, %1961
  %1966 = bitcast %union.StackValue* %4081 to i64*
  store i64 %1965, i64* %1966, align 8, !tbaa !6
  %1967 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %1967, align 8, !tbaa !2
  br label %1992

; <label>:1968:                                   ; preds = %1946
  %1969 = bitcast %struct.TValue* %1950 to double*
  %1970 = load double, double* %1969, align 8, !tbaa !6
  br label %1973

; <label>:1971:                                   ; preds = %1956
  %1972 = sitofp i64 %1961 to double
  br label %1973

; <label>:1973:                                   ; preds = %1968, %1971
  %1974 = phi double [ %1970, %1968 ], [ %1972, %1971 ]
  %1975 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %1952, i32 0, i32 1
  %1976 = load i8, i8* %1975, align 8, !tbaa !2
  switch i8 %1976, label %1989 [
    i8 19, label %1977
    i8 35, label %1980
  ]

; <label>:1977:                                   ; preds = %1973
  %1978 = bitcast %struct.TValue* %1953 to double*
  %1979 = load double, double* %1978, align 8, !tbaa !6
  br label %1984

; <label>:1980:                                   ; preds = %1973
  %1981 = bitcast %struct.TValue* %1953 to i64*
  %1982 = load i64, i64* %1981, align 8, !tbaa !6
  %1983 = sitofp i64 %1982 to double
  br label %1984

; <label>:1984:                                   ; preds = %1977, %1980
  %1985 = phi double [ %1979, %1977 ], [ %1983, %1980 ]
  %1986 = fadd double %1974, %1985
  %1987 = bitcast %union.StackValue* %4081 to double*
  store double %1986, double* %1987, align 8, !tbaa !6
  %1988 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %1988, align 8, !tbaa !2
  br label %1992

; <label>:1989:                                   ; preds = %1946, %1973
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %1990 = load i64, i64* %222, align 8, !tbaa !42
  store i64 %1990, i64* %224, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1950, %struct.TValue* %1953, %union.StackValue* %4081, i32 6) #10
  %1991 = load i32, i32* %226, align 8, !tbaa !6
  br label %1992

; <label>:1992:                                   ; preds = %1984, %1989, %1962
  %1993 = phi i32 [ %4083, %1962 ], [ %4083, %1984 ], [ %1991, %1989 ]
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %1999, label %1995

; <label>:1995:                                   ; preds = %1992
  %1996 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %1997 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %1998 = getelementptr inbounds %union.StackValue, %union.StackValue* %1997, i64 1
  br label %1999

; <label>:1999:                                   ; preds = %1992, %1995
  %2000 = phi i32 [ %1996, %1995 ], [ 0, %1992 ]
  %2001 = phi %union.StackValue* [ %1998, %1995 ], [ %4085, %1992 ]
  %2002 = getelementptr inbounds i32, i32* %4084, i64 1
  %2003 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2004:                                   ; preds = %4080
  %2005 = lshr i32 %4082, 16
  %2006 = and i32 %2005, 255
  %2007 = zext i32 %2006 to i64
  %2008 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2007, i32 0
  %2009 = lshr i32 %4082, 24
  %2010 = zext i32 %2009 to i64
  %2011 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2010, i32 0
  %2012 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2007, i32 0, i32 1
  %2013 = load i8, i8* %2012, align 8, !tbaa !2
  switch i8 %2013, label %2047 [
    i8 35, label %2014
    i8 19, label %2026
  ]

; <label>:2014:                                   ; preds = %2004
  %2015 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2010, i32 0, i32 1
  %2016 = load i8, i8* %2015, align 8, !tbaa !2
  %2017 = icmp eq i8 %2016, 35
  %2018 = bitcast %struct.TValue* %2008 to i64*
  %2019 = load i64, i64* %2018, align 8, !tbaa !6
  br i1 %2017, label %2020, label %2029

; <label>:2020:                                   ; preds = %2014
  %2021 = bitcast %struct.TValue* %2011 to i64*
  %2022 = load i64, i64* %2021, align 8, !tbaa !6
  %2023 = sub i64 %2019, %2022
  %2024 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2023, i64* %2024, align 8, !tbaa !6
  %2025 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2025, align 8, !tbaa !2
  br label %2050

; <label>:2026:                                   ; preds = %2004
  %2027 = bitcast %struct.TValue* %2008 to double*
  %2028 = load double, double* %2027, align 8, !tbaa !6
  br label %2031

; <label>:2029:                                   ; preds = %2014
  %2030 = sitofp i64 %2019 to double
  br label %2031

; <label>:2031:                                   ; preds = %2026, %2029
  %2032 = phi double [ %2028, %2026 ], [ %2030, %2029 ]
  %2033 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2010, i32 0, i32 1
  %2034 = load i8, i8* %2033, align 8, !tbaa !2
  switch i8 %2034, label %2047 [
    i8 19, label %2035
    i8 35, label %2038
  ]

; <label>:2035:                                   ; preds = %2031
  %2036 = bitcast %struct.TValue* %2011 to double*
  %2037 = load double, double* %2036, align 8, !tbaa !6
  br label %2042

; <label>:2038:                                   ; preds = %2031
  %2039 = bitcast %struct.TValue* %2011 to i64*
  %2040 = load i64, i64* %2039, align 8, !tbaa !6
  %2041 = sitofp i64 %2040 to double
  br label %2042

; <label>:2042:                                   ; preds = %2035, %2038
  %2043 = phi double [ %2037, %2035 ], [ %2041, %2038 ]
  %2044 = fsub double %2032, %2043
  %2045 = bitcast %union.StackValue* %4081 to double*
  store double %2044, double* %2045, align 8, !tbaa !6
  %2046 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %2046, align 8, !tbaa !2
  br label %2050

; <label>:2047:                                   ; preds = %2004, %2031
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2048 = load i64, i64* %228, align 8, !tbaa !42
  store i64 %2048, i64* %230, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2008, %struct.TValue* %2011, %union.StackValue* %4081, i32 7) #10
  %2049 = load i32, i32* %232, align 8, !tbaa !6
  br label %2050

; <label>:2050:                                   ; preds = %2042, %2047, %2020
  %2051 = phi i32 [ %4083, %2020 ], [ %4083, %2042 ], [ %2049, %2047 ]
  %2052 = icmp eq i32 %2051, 0
  br i1 %2052, label %2057, label %2053

; <label>:2053:                                   ; preds = %2050
  %2054 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2055 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2056 = getelementptr inbounds %union.StackValue, %union.StackValue* %2055, i64 1
  br label %2057

; <label>:2057:                                   ; preds = %2050, %2053
  %2058 = phi i32 [ %2054, %2053 ], [ 0, %2050 ]
  %2059 = phi %union.StackValue* [ %2056, %2053 ], [ %4085, %2050 ]
  %2060 = getelementptr inbounds i32, i32* %4084, i64 1
  %2061 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2062:                                   ; preds = %4080
  %2063 = lshr i32 %4082, 16
  %2064 = and i32 %2063, 255
  %2065 = zext i32 %2064 to i64
  %2066 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2065, i32 0
  %2067 = lshr i32 %4082, 24
  %2068 = zext i32 %2067 to i64
  %2069 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2068, i32 0
  %2070 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2065, i32 0, i32 1
  %2071 = load i8, i8* %2070, align 8, !tbaa !2
  switch i8 %2071, label %2105 [
    i8 35, label %2072
    i8 19, label %2084
  ]

; <label>:2072:                                   ; preds = %2062
  %2073 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2068, i32 0, i32 1
  %2074 = load i8, i8* %2073, align 8, !tbaa !2
  %2075 = icmp eq i8 %2074, 35
  %2076 = bitcast %struct.TValue* %2066 to i64*
  %2077 = load i64, i64* %2076, align 8, !tbaa !6
  br i1 %2075, label %2078, label %2087

; <label>:2078:                                   ; preds = %2072
  %2079 = bitcast %struct.TValue* %2069 to i64*
  %2080 = load i64, i64* %2079, align 8, !tbaa !6
  %2081 = mul i64 %2080, %2077
  %2082 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2081, i64* %2082, align 8, !tbaa !6
  %2083 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2083, align 8, !tbaa !2
  br label %2108

; <label>:2084:                                   ; preds = %2062
  %2085 = bitcast %struct.TValue* %2066 to double*
  %2086 = load double, double* %2085, align 8, !tbaa !6
  br label %2089

; <label>:2087:                                   ; preds = %2072
  %2088 = sitofp i64 %2077 to double
  br label %2089

; <label>:2089:                                   ; preds = %2084, %2087
  %2090 = phi double [ %2086, %2084 ], [ %2088, %2087 ]
  %2091 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2068, i32 0, i32 1
  %2092 = load i8, i8* %2091, align 8, !tbaa !2
  switch i8 %2092, label %2105 [
    i8 19, label %2093
    i8 35, label %2096
  ]

; <label>:2093:                                   ; preds = %2089
  %2094 = bitcast %struct.TValue* %2069 to double*
  %2095 = load double, double* %2094, align 8, !tbaa !6
  br label %2100

; <label>:2096:                                   ; preds = %2089
  %2097 = bitcast %struct.TValue* %2069 to i64*
  %2098 = load i64, i64* %2097, align 8, !tbaa !6
  %2099 = sitofp i64 %2098 to double
  br label %2100

; <label>:2100:                                   ; preds = %2093, %2096
  %2101 = phi double [ %2095, %2093 ], [ %2099, %2096 ]
  %2102 = fmul double %2090, %2101
  %2103 = bitcast %union.StackValue* %4081 to double*
  store double %2102, double* %2103, align 8, !tbaa !6
  %2104 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %2104, align 8, !tbaa !2
  br label %2108

; <label>:2105:                                   ; preds = %2062, %2089
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2106 = load i64, i64* %234, align 8, !tbaa !42
  store i64 %2106, i64* %236, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2066, %struct.TValue* %2069, %union.StackValue* %4081, i32 8) #10
  %2107 = load i32, i32* %238, align 8, !tbaa !6
  br label %2108

; <label>:2108:                                   ; preds = %2100, %2105, %2078
  %2109 = phi i32 [ %4083, %2078 ], [ %4083, %2100 ], [ %2107, %2105 ]
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2115, label %2111

; <label>:2111:                                   ; preds = %2108
  %2112 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2113 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2114 = getelementptr inbounds %union.StackValue, %union.StackValue* %2113, i64 1
  br label %2115

; <label>:2115:                                   ; preds = %2108, %2111
  %2116 = phi i32 [ %2112, %2111 ], [ 0, %2108 ]
  %2117 = phi %union.StackValue* [ %2114, %2111 ], [ %4085, %2108 ]
  %2118 = getelementptr inbounds i32, i32* %4084, i64 1
  %2119 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2120:                                   ; preds = %4080
  %2121 = lshr i32 %4082, 16
  %2122 = and i32 %2121, 255
  %2123 = zext i32 %2122 to i64
  %2124 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2123, i32 0
  %2125 = lshr i32 %4082, 24
  %2126 = zext i32 %2125 to i64
  %2127 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2126, i32 0
  %2128 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2123, i32 0, i32 1
  %2129 = load i8, i8* %2128, align 8, !tbaa !2
  switch i8 %2129, label %2163 [
    i8 35, label %2130
    i8 19, label %2142
  ]

; <label>:2130:                                   ; preds = %2120
  %2131 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2126, i32 0, i32 1
  %2132 = load i8, i8* %2131, align 8, !tbaa !2
  %2133 = icmp eq i8 %2132, 35
  %2134 = bitcast %struct.TValue* %2124 to i64*
  %2135 = load i64, i64* %2134, align 8, !tbaa !6
  br i1 %2133, label %2136, label %2145

; <label>:2136:                                   ; preds = %2130
  %2137 = bitcast %struct.TValue* %2127 to i64*
  %2138 = load i64, i64* %2137, align 8, !tbaa !6
  %2139 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %2135, i64 %2138)
  %2140 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2139, i64* %2140, align 8, !tbaa !6
  %2141 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2141, align 8, !tbaa !2
  br label %2166

; <label>:2142:                                   ; preds = %2120
  %2143 = bitcast %struct.TValue* %2124 to double*
  %2144 = load double, double* %2143, align 8, !tbaa !6
  br label %2147

; <label>:2145:                                   ; preds = %2130
  %2146 = sitofp i64 %2135 to double
  br label %2147

; <label>:2147:                                   ; preds = %2142, %2145
  %2148 = phi double [ %2144, %2142 ], [ %2146, %2145 ]
  %2149 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2126, i32 0, i32 1
  %2150 = load i8, i8* %2149, align 8, !tbaa !2
  switch i8 %2150, label %2163 [
    i8 19, label %2151
    i8 35, label %2154
  ]

; <label>:2151:                                   ; preds = %2147
  %2152 = bitcast %struct.TValue* %2127 to double*
  %2153 = load double, double* %2152, align 8, !tbaa !6
  br label %2158

; <label>:2154:                                   ; preds = %2147
  %2155 = bitcast %struct.TValue* %2127 to i64*
  %2156 = load i64, i64* %2155, align 8, !tbaa !6
  %2157 = sitofp i64 %2156 to double
  br label %2158

; <label>:2158:                                   ; preds = %2151, %2154
  %2159 = phi double [ %2153, %2151 ], [ %2157, %2154 ]
  %2160 = call double @luaV_modf(%struct.lua_State* undef, double %2148, double %2159)
  %2161 = bitcast %union.StackValue* %4081 to double*
  store double %2160, double* %2161, align 8, !tbaa !6
  %2162 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %2162, align 8, !tbaa !2
  br label %2166

; <label>:2163:                                   ; preds = %2120, %2147
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2164 = load i64, i64* %240, align 8, !tbaa !42
  store i64 %2164, i64* %242, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2124, %struct.TValue* %2127, %union.StackValue* %4081, i32 9) #10
  %2165 = load i32, i32* %244, align 8, !tbaa !6
  br label %2166

; <label>:2166:                                   ; preds = %2158, %2163, %2136
  %2167 = phi i32 [ %4083, %2136 ], [ %4083, %2158 ], [ %2165, %2163 ]
  %2168 = icmp eq i32 %2167, 0
  br i1 %2168, label %2173, label %2169

; <label>:2169:                                   ; preds = %2166
  %2170 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2171 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2172 = getelementptr inbounds %union.StackValue, %union.StackValue* %2171, i64 1
  br label %2173

; <label>:2173:                                   ; preds = %2166, %2169
  %2174 = phi i32 [ %2170, %2169 ], [ 0, %2166 ]
  %2175 = phi %union.StackValue* [ %2172, %2169 ], [ %4085, %2166 ]
  %2176 = getelementptr inbounds i32, i32* %4084, i64 1
  %2177 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2178:                                   ; preds = %4080
  %2179 = lshr i32 %4082, 16
  %2180 = and i32 %2179, 255
  %2181 = zext i32 %2180 to i64
  %2182 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2181, i32 0
  %2183 = lshr i32 %4082, 24
  %2184 = zext i32 %2183 to i64
  %2185 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2184, i32 0
  %2186 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2181, i32 0, i32 1
  %2187 = load i8, i8* %2186, align 8, !tbaa !2
  switch i8 %2187, label %2211 [
    i8 19, label %2188
    i8 35, label %2191
  ]

; <label>:2188:                                   ; preds = %2178
  %2189 = bitcast %struct.TValue* %2182 to double*
  %2190 = load double, double* %2189, align 8, !tbaa !6
  br label %2195

; <label>:2191:                                   ; preds = %2178
  %2192 = bitcast %struct.TValue* %2182 to i64*
  %2193 = load i64, i64* %2192, align 8, !tbaa !6
  %2194 = sitofp i64 %2193 to double
  br label %2195

; <label>:2195:                                   ; preds = %2188, %2191
  %2196 = phi double [ %2190, %2188 ], [ %2194, %2191 ]
  %2197 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2184, i32 0, i32 1
  %2198 = load i8, i8* %2197, align 8, !tbaa !2
  switch i8 %2198, label %2211 [
    i8 19, label %2199
    i8 35, label %2202
  ]

; <label>:2199:                                   ; preds = %2195
  %2200 = bitcast %struct.TValue* %2185 to double*
  %2201 = load double, double* %2200, align 8, !tbaa !6
  br label %2206

; <label>:2202:                                   ; preds = %2195
  %2203 = bitcast %struct.TValue* %2185 to i64*
  %2204 = load i64, i64* %2203, align 8, !tbaa !6
  %2205 = sitofp i64 %2204 to double
  br label %2206

; <label>:2206:                                   ; preds = %2199, %2202
  %2207 = phi double [ %2201, %2199 ], [ %2205, %2202 ]
  %2208 = call double @pow(double %2196, double %2207) #10
  %2209 = bitcast %union.StackValue* %4081 to double*
  store double %2208, double* %2209, align 8, !tbaa !6
  %2210 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %2210, align 8, !tbaa !2
  br label %2214

; <label>:2211:                                   ; preds = %2195, %2178
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2212 = load i64, i64* %246, align 8, !tbaa !42
  store i64 %2212, i64* %248, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2182, %struct.TValue* %2185, %union.StackValue* %4081, i32 10) #10
  %2213 = load i32, i32* %250, align 8, !tbaa !6
  br label %2214

; <label>:2214:                                   ; preds = %2211, %2206
  %2215 = phi i32 [ %4083, %2206 ], [ %2213, %2211 ]
  %2216 = icmp eq i32 %2215, 0
  br i1 %2216, label %2221, label %2217

; <label>:2217:                                   ; preds = %2214
  %2218 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2219 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2220 = getelementptr inbounds %union.StackValue, %union.StackValue* %2219, i64 1
  br label %2221

; <label>:2221:                                   ; preds = %2214, %2217
  %2222 = phi i32 [ %2218, %2217 ], [ 0, %2214 ]
  %2223 = phi %union.StackValue* [ %2220, %2217 ], [ %4085, %2214 ]
  %2224 = getelementptr inbounds i32, i32* %4084, i64 1
  %2225 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2226:                                   ; preds = %4080
  %2227 = lshr i32 %4082, 16
  %2228 = and i32 %2227, 255
  %2229 = zext i32 %2228 to i64
  %2230 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2229, i32 0
  %2231 = lshr i32 %4082, 24
  %2232 = zext i32 %2231 to i64
  %2233 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2232, i32 0
  %2234 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2229, i32 0, i32 1
  %2235 = load i8, i8* %2234, align 8, !tbaa !2
  switch i8 %2235, label %2259 [
    i8 19, label %2236
    i8 35, label %2239
  ]

; <label>:2236:                                   ; preds = %2226
  %2237 = bitcast %struct.TValue* %2230 to double*
  %2238 = load double, double* %2237, align 8, !tbaa !6
  br label %2243

; <label>:2239:                                   ; preds = %2226
  %2240 = bitcast %struct.TValue* %2230 to i64*
  %2241 = load i64, i64* %2240, align 8, !tbaa !6
  %2242 = sitofp i64 %2241 to double
  br label %2243

; <label>:2243:                                   ; preds = %2236, %2239
  %2244 = phi double [ %2238, %2236 ], [ %2242, %2239 ]
  %2245 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2232, i32 0, i32 1
  %2246 = load i8, i8* %2245, align 8, !tbaa !2
  switch i8 %2246, label %2259 [
    i8 19, label %2247
    i8 35, label %2250
  ]

; <label>:2247:                                   ; preds = %2243
  %2248 = bitcast %struct.TValue* %2233 to double*
  %2249 = load double, double* %2248, align 8, !tbaa !6
  br label %2254

; <label>:2250:                                   ; preds = %2243
  %2251 = bitcast %struct.TValue* %2233 to i64*
  %2252 = load i64, i64* %2251, align 8, !tbaa !6
  %2253 = sitofp i64 %2252 to double
  br label %2254

; <label>:2254:                                   ; preds = %2247, %2250
  %2255 = phi double [ %2249, %2247 ], [ %2253, %2250 ]
  %2256 = fdiv double %2244, %2255
  %2257 = bitcast %union.StackValue* %4081 to double*
  store double %2256, double* %2257, align 8, !tbaa !6
  %2258 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %2258, align 8, !tbaa !2
  br label %2262

; <label>:2259:                                   ; preds = %2243, %2226
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2260 = load i64, i64* %252, align 8, !tbaa !42
  store i64 %2260, i64* %254, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2230, %struct.TValue* %2233, %union.StackValue* %4081, i32 11) #10
  %2261 = load i32, i32* %256, align 8, !tbaa !6
  br label %2262

; <label>:2262:                                   ; preds = %2259, %2254
  %2263 = phi i32 [ %4083, %2254 ], [ %2261, %2259 ]
  %2264 = icmp eq i32 %2263, 0
  br i1 %2264, label %2269, label %2265

; <label>:2265:                                   ; preds = %2262
  %2266 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2267 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2268 = getelementptr inbounds %union.StackValue, %union.StackValue* %2267, i64 1
  br label %2269

; <label>:2269:                                   ; preds = %2262, %2265
  %2270 = phi i32 [ %2266, %2265 ], [ 0, %2262 ]
  %2271 = phi %union.StackValue* [ %2268, %2265 ], [ %4085, %2262 ]
  %2272 = getelementptr inbounds i32, i32* %4084, i64 1
  %2273 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2274:                                   ; preds = %4080
  %2275 = lshr i32 %4082, 16
  %2276 = and i32 %2275, 255
  %2277 = zext i32 %2276 to i64
  %2278 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2277, i32 0
  %2279 = lshr i32 %4082, 24
  %2280 = zext i32 %2279 to i64
  %2281 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2280, i32 0
  %2282 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2277, i32 0, i32 1
  %2283 = load i8, i8* %2282, align 8, !tbaa !2
  switch i8 %2283, label %2318 [
    i8 35, label %2284
    i8 19, label %2296
  ]

; <label>:2284:                                   ; preds = %2274
  %2285 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2280, i32 0, i32 1
  %2286 = load i8, i8* %2285, align 8, !tbaa !2
  %2287 = icmp eq i8 %2286, 35
  %2288 = bitcast %struct.TValue* %2278 to i64*
  %2289 = load i64, i64* %2288, align 8, !tbaa !6
  br i1 %2287, label %2290, label %2299

; <label>:2290:                                   ; preds = %2284
  %2291 = bitcast %struct.TValue* %2281 to i64*
  %2292 = load i64, i64* %2291, align 8, !tbaa !6
  %2293 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %2289, i64 %2292)
  %2294 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2293, i64* %2294, align 8, !tbaa !6
  %2295 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2295, align 8, !tbaa !2
  br label %2321

; <label>:2296:                                   ; preds = %2274
  %2297 = bitcast %struct.TValue* %2278 to double*
  %2298 = load double, double* %2297, align 8, !tbaa !6
  br label %2301

; <label>:2299:                                   ; preds = %2284
  %2300 = sitofp i64 %2289 to double
  br label %2301

; <label>:2301:                                   ; preds = %2296, %2299
  %2302 = phi double [ %2298, %2296 ], [ %2300, %2299 ]
  %2303 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2280, i32 0, i32 1
  %2304 = load i8, i8* %2303, align 8, !tbaa !2
  switch i8 %2304, label %2318 [
    i8 19, label %2305
    i8 35, label %2308
  ]

; <label>:2305:                                   ; preds = %2301
  %2306 = bitcast %struct.TValue* %2281 to double*
  %2307 = load double, double* %2306, align 8, !tbaa !6
  br label %2312

; <label>:2308:                                   ; preds = %2301
  %2309 = bitcast %struct.TValue* %2281 to i64*
  %2310 = load i64, i64* %2309, align 8, !tbaa !6
  %2311 = sitofp i64 %2310 to double
  br label %2312

; <label>:2312:                                   ; preds = %2305, %2308
  %2313 = phi double [ %2307, %2305 ], [ %2311, %2308 ]
  %2314 = fdiv double %2302, %2313
  %2315 = call double @llvm.floor.f64(double %2314)
  %2316 = bitcast %union.StackValue* %4081 to double*
  store double %2315, double* %2316, align 8, !tbaa !6
  %2317 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %2317, align 8, !tbaa !2
  br label %2321

; <label>:2318:                                   ; preds = %2274, %2301
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2319 = load i64, i64* %258, align 8, !tbaa !42
  store i64 %2319, i64* %260, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2278, %struct.TValue* %2281, %union.StackValue* %4081, i32 12) #10
  %2320 = load i32, i32* %262, align 8, !tbaa !6
  br label %2321

; <label>:2321:                                   ; preds = %2312, %2318, %2290
  %2322 = phi i32 [ %4083, %2290 ], [ %4083, %2312 ], [ %2320, %2318 ]
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2328, label %2324

; <label>:2324:                                   ; preds = %2321
  %2325 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2326 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2327 = getelementptr inbounds %union.StackValue, %union.StackValue* %2326, i64 1
  br label %2328

; <label>:2328:                                   ; preds = %2321, %2324
  %2329 = phi i32 [ %2325, %2324 ], [ 0, %2321 ]
  %2330 = phi %union.StackValue* [ %2327, %2324 ], [ %4085, %2321 ]
  %2331 = getelementptr inbounds i32, i32* %4084, i64 1
  %2332 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2333:                                   ; preds = %4080
  %2334 = lshr i32 %4082, 16
  %2335 = and i32 %2334, 255
  %2336 = zext i32 %2335 to i64
  %2337 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2336, i32 0
  %2338 = lshr i32 %4082, 24
  %2339 = zext i32 %2338 to i64
  %2340 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %2339, i32 0
  %2341 = bitcast %union.Value* %2340 to i64*
  %2342 = load i64, i64* %2341, align 8, !tbaa !6
  %2343 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2336, i32 0, i32 1
  %2344 = load i8, i8* %2343, align 8, !tbaa !2
  %2345 = icmp eq i8 %2344, 35
  br i1 %2345, label %2346, label %2349

; <label>:2346:                                   ; preds = %2333
  %2347 = bitcast %struct.TValue* %2337 to i64*
  %2348 = load i64, i64* %2347, align 8, !tbaa !6
  store i64 %2348, i64* %5, align 8, !tbaa !9
  br label %2352

; <label>:2349:                                   ; preds = %2333
  %2350 = call i32 @luaV_tointegerns(%struct.TValue* %2337, i64* nonnull %5, i32 0)
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2357, label %2352

; <label>:2352:                                   ; preds = %2349, %2346
  %2353 = load i64, i64* %5, align 8, !tbaa !9
  %2354 = and i64 %2353, %2342
  %2355 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2354, i64* %2355, align 8, !tbaa !6
  %2356 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2356, align 8, !tbaa !2
  br label %2361

; <label>:2357:                                   ; preds = %2349
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2358 = load i64, i64* %361, align 8, !tbaa !42
  store i64 %2358, i64* %363, align 8, !tbaa !25
  %2359 = and i32 %4082, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2337, i64 %2342, i32 %2359, %union.StackValue* %4081, i32 13) #10
  %2360 = load i32, i32* %365, align 8, !tbaa !6
  br label %2361

; <label>:2361:                                   ; preds = %2357, %2352
  %2362 = phi i32 [ %4083, %2352 ], [ %2360, %2357 ]
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2368, label %2364

; <label>:2364:                                   ; preds = %2361
  %2365 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2366 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2367 = getelementptr inbounds %union.StackValue, %union.StackValue* %2366, i64 1
  br label %2368

; <label>:2368:                                   ; preds = %2361, %2364
  %2369 = phi i32 [ %2365, %2364 ], [ 0, %2361 ]
  %2370 = phi %union.StackValue* [ %2367, %2364 ], [ %4085, %2361 ]
  %2371 = getelementptr inbounds i32, i32* %4084, i64 1
  %2372 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2373:                                   ; preds = %4080
  %2374 = lshr i32 %4082, 16
  %2375 = and i32 %2374, 255
  %2376 = zext i32 %2375 to i64
  %2377 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2376, i32 0
  %2378 = lshr i32 %4082, 24
  %2379 = zext i32 %2378 to i64
  %2380 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %2379, i32 0
  %2381 = bitcast %union.Value* %2380 to i64*
  %2382 = load i64, i64* %2381, align 8, !tbaa !6
  %2383 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2376, i32 0, i32 1
  %2384 = load i8, i8* %2383, align 8, !tbaa !2
  %2385 = icmp eq i8 %2384, 35
  br i1 %2385, label %2386, label %2389

; <label>:2386:                                   ; preds = %2373
  %2387 = bitcast %struct.TValue* %2377 to i64*
  %2388 = load i64, i64* %2387, align 8, !tbaa !6
  store i64 %2388, i64* %6, align 8, !tbaa !9
  br label %2392

; <label>:2389:                                   ; preds = %2373
  %2390 = call i32 @luaV_tointegerns(%struct.TValue* %2377, i64* nonnull %6, i32 0)
  %2391 = icmp eq i32 %2390, 0
  br i1 %2391, label %2397, label %2392

; <label>:2392:                                   ; preds = %2389, %2386
  %2393 = load i64, i64* %6, align 8, !tbaa !9
  %2394 = or i64 %2393, %2382
  %2395 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2394, i64* %2395, align 8, !tbaa !6
  %2396 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2396, align 8, !tbaa !2
  br label %2401

; <label>:2397:                                   ; preds = %2389
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2398 = load i64, i64* %367, align 8, !tbaa !42
  store i64 %2398, i64* %369, align 8, !tbaa !25
  %2399 = and i32 %4082, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2377, i64 %2382, i32 %2399, %union.StackValue* %4081, i32 14) #10
  %2400 = load i32, i32* %371, align 8, !tbaa !6
  br label %2401

; <label>:2401:                                   ; preds = %2397, %2392
  %2402 = phi i32 [ %4083, %2392 ], [ %2400, %2397 ]
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2408, label %2404

; <label>:2404:                                   ; preds = %2401
  %2405 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2406 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2407 = getelementptr inbounds %union.StackValue, %union.StackValue* %2406, i64 1
  br label %2408

; <label>:2408:                                   ; preds = %2401, %2404
  %2409 = phi i32 [ %2405, %2404 ], [ 0, %2401 ]
  %2410 = phi %union.StackValue* [ %2407, %2404 ], [ %4085, %2401 ]
  %2411 = getelementptr inbounds i32, i32* %4084, i64 1
  %2412 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2413:                                   ; preds = %4080
  %2414 = lshr i32 %4082, 16
  %2415 = and i32 %2414, 255
  %2416 = zext i32 %2415 to i64
  %2417 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2416, i32 0
  %2418 = lshr i32 %4082, 24
  %2419 = zext i32 %2418 to i64
  %2420 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %2419, i32 0
  %2421 = bitcast %union.Value* %2420 to i64*
  %2422 = load i64, i64* %2421, align 8, !tbaa !6
  %2423 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2416, i32 0, i32 1
  %2424 = load i8, i8* %2423, align 8, !tbaa !2
  %2425 = icmp eq i8 %2424, 35
  br i1 %2425, label %2426, label %2429

; <label>:2426:                                   ; preds = %2413
  %2427 = bitcast %struct.TValue* %2417 to i64*
  %2428 = load i64, i64* %2427, align 8, !tbaa !6
  store i64 %2428, i64* %7, align 8, !tbaa !9
  br label %2432

; <label>:2429:                                   ; preds = %2413
  %2430 = call i32 @luaV_tointegerns(%struct.TValue* %2417, i64* nonnull %7, i32 0)
  %2431 = icmp eq i32 %2430, 0
  br i1 %2431, label %2437, label %2432

; <label>:2432:                                   ; preds = %2429, %2426
  %2433 = load i64, i64* %7, align 8, !tbaa !9
  %2434 = xor i64 %2433, %2422
  %2435 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2434, i64* %2435, align 8, !tbaa !6
  %2436 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2436, align 8, !tbaa !2
  br label %2441

; <label>:2437:                                   ; preds = %2429
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2438 = load i64, i64* %373, align 8, !tbaa !42
  store i64 %2438, i64* %375, align 8, !tbaa !25
  %2439 = and i32 %4082, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2417, i64 %2422, i32 %2439, %union.StackValue* %4081, i32 15) #10
  %2440 = load i32, i32* %377, align 8, !tbaa !6
  br label %2441

; <label>:2441:                                   ; preds = %2437, %2432
  %2442 = phi i32 [ %4083, %2432 ], [ %2440, %2437 ]
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2448, label %2444

; <label>:2444:                                   ; preds = %2441
  %2445 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2446 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2447 = getelementptr inbounds %union.StackValue, %union.StackValue* %2446, i64 1
  br label %2448

; <label>:2448:                                   ; preds = %2441, %2444
  %2449 = phi i32 [ %2445, %2444 ], [ 0, %2441 ]
  %2450 = phi %union.StackValue* [ %2447, %2444 ], [ %4085, %2441 ]
  %2451 = getelementptr inbounds i32, i32* %4084, i64 1
  %2452 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2453:                                   ; preds = %4080
  %2454 = lshr i32 %4082, 16
  %2455 = and i32 %2454, 255
  %2456 = zext i32 %2455 to i64
  %2457 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2456, i32 0
  %2458 = lshr i32 %4082, 24
  %2459 = zext i32 %2458 to i64
  %2460 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2459, i32 0
  %2461 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2456, i32 0, i32 1
  %2462 = load i8, i8* %2461, align 8, !tbaa !2
  %2463 = icmp eq i8 %2462, 35
  br i1 %2463, label %2464, label %2467

; <label>:2464:                                   ; preds = %2453
  %2465 = bitcast %struct.TValue* %2457 to i64*
  %2466 = load i64, i64* %2465, align 8, !tbaa !6
  store i64 %2466, i64* %8, align 8, !tbaa !9
  br label %2470

; <label>:2467:                                   ; preds = %2453
  %2468 = call i32 @luaV_tointegerns(%struct.TValue* %2457, i64* nonnull %8, i32 0)
  %2469 = icmp eq i32 %2468, 0
  br i1 %2469, label %2486, label %2470

; <label>:2470:                                   ; preds = %2467, %2464
  %2471 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2459, i32 0, i32 1
  %2472 = load i8, i8* %2471, align 8, !tbaa !2
  %2473 = icmp eq i8 %2472, 35
  br i1 %2473, label %2474, label %2477

; <label>:2474:                                   ; preds = %2470
  %2475 = bitcast %struct.TValue* %2460 to i64*
  %2476 = load i64, i64* %2475, align 8, !tbaa !6
  store i64 %2476, i64* %9, align 8, !tbaa !9
  br label %2480

; <label>:2477:                                   ; preds = %2470
  %2478 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2460, i64* nonnull %9, i32 0)
  %2479 = icmp eq i32 %2478, 0
  br i1 %2479, label %2486, label %2480

; <label>:2480:                                   ; preds = %2477, %2474
  %2481 = load i64, i64* %8, align 8, !tbaa !9
  %2482 = load i64, i64* %9, align 8, !tbaa !9
  %2483 = and i64 %2482, %2481
  %2484 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2483, i64* %2484, align 8, !tbaa !6
  %2485 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2485, align 8, !tbaa !2
  br label %2489

; <label>:2486:                                   ; preds = %2477, %2467
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2487 = load i64, i64* %264, align 8, !tbaa !42
  store i64 %2487, i64* %266, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2457, %struct.TValue* %2460, %union.StackValue* %4081, i32 13) #10
  %2488 = load i32, i32* %268, align 8, !tbaa !6
  br label %2489

; <label>:2489:                                   ; preds = %2486, %2480
  %2490 = phi i32 [ %4083, %2480 ], [ %2488, %2486 ]
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2496, label %2492

; <label>:2492:                                   ; preds = %2489
  %2493 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2494 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2495 = getelementptr inbounds %union.StackValue, %union.StackValue* %2494, i64 1
  br label %2496

; <label>:2496:                                   ; preds = %2489, %2492
  %2497 = phi i32 [ %2493, %2492 ], [ 0, %2489 ]
  %2498 = phi %union.StackValue* [ %2495, %2492 ], [ %4085, %2489 ]
  %2499 = getelementptr inbounds i32, i32* %4084, i64 1
  %2500 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2501:                                   ; preds = %4080
  %2502 = lshr i32 %4082, 16
  %2503 = and i32 %2502, 255
  %2504 = zext i32 %2503 to i64
  %2505 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2504, i32 0
  %2506 = lshr i32 %4082, 24
  %2507 = zext i32 %2506 to i64
  %2508 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2507, i32 0
  %2509 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2504, i32 0, i32 1
  %2510 = load i8, i8* %2509, align 8, !tbaa !2
  %2511 = icmp eq i8 %2510, 35
  br i1 %2511, label %2512, label %2515

; <label>:2512:                                   ; preds = %2501
  %2513 = bitcast %struct.TValue* %2505 to i64*
  %2514 = load i64, i64* %2513, align 8, !tbaa !6
  store i64 %2514, i64* %10, align 8, !tbaa !9
  br label %2518

; <label>:2515:                                   ; preds = %2501
  %2516 = call i32 @luaV_tointegerns(%struct.TValue* %2505, i64* nonnull %10, i32 0)
  %2517 = icmp eq i32 %2516, 0
  br i1 %2517, label %2534, label %2518

; <label>:2518:                                   ; preds = %2515, %2512
  %2519 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2507, i32 0, i32 1
  %2520 = load i8, i8* %2519, align 8, !tbaa !2
  %2521 = icmp eq i8 %2520, 35
  br i1 %2521, label %2522, label %2525

; <label>:2522:                                   ; preds = %2518
  %2523 = bitcast %struct.TValue* %2508 to i64*
  %2524 = load i64, i64* %2523, align 8, !tbaa !6
  store i64 %2524, i64* %11, align 8, !tbaa !9
  br label %2528

; <label>:2525:                                   ; preds = %2518
  %2526 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2508, i64* nonnull %11, i32 0)
  %2527 = icmp eq i32 %2526, 0
  br i1 %2527, label %2534, label %2528

; <label>:2528:                                   ; preds = %2525, %2522
  %2529 = load i64, i64* %10, align 8, !tbaa !9
  %2530 = load i64, i64* %11, align 8, !tbaa !9
  %2531 = or i64 %2530, %2529
  %2532 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2531, i64* %2532, align 8, !tbaa !6
  %2533 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2533, align 8, !tbaa !2
  br label %2537

; <label>:2534:                                   ; preds = %2525, %2515
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2535 = load i64, i64* %270, align 8, !tbaa !42
  store i64 %2535, i64* %272, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2505, %struct.TValue* %2508, %union.StackValue* %4081, i32 14) #10
  %2536 = load i32, i32* %274, align 8, !tbaa !6
  br label %2537

; <label>:2537:                                   ; preds = %2534, %2528
  %2538 = phi i32 [ %4083, %2528 ], [ %2536, %2534 ]
  %2539 = icmp eq i32 %2538, 0
  br i1 %2539, label %2544, label %2540

; <label>:2540:                                   ; preds = %2537
  %2541 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2542 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2543 = getelementptr inbounds %union.StackValue, %union.StackValue* %2542, i64 1
  br label %2544

; <label>:2544:                                   ; preds = %2537, %2540
  %2545 = phi i32 [ %2541, %2540 ], [ 0, %2537 ]
  %2546 = phi %union.StackValue* [ %2543, %2540 ], [ %4085, %2537 ]
  %2547 = getelementptr inbounds i32, i32* %4084, i64 1
  %2548 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2549:                                   ; preds = %4080
  %2550 = lshr i32 %4082, 16
  %2551 = and i32 %2550, 255
  %2552 = zext i32 %2551 to i64
  %2553 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2552, i32 0
  %2554 = lshr i32 %4082, 24
  %2555 = zext i32 %2554 to i64
  %2556 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2555, i32 0
  %2557 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2552, i32 0, i32 1
  %2558 = load i8, i8* %2557, align 8, !tbaa !2
  %2559 = icmp eq i8 %2558, 35
  br i1 %2559, label %2560, label %2563

; <label>:2560:                                   ; preds = %2549
  %2561 = bitcast %struct.TValue* %2553 to i64*
  %2562 = load i64, i64* %2561, align 8, !tbaa !6
  store i64 %2562, i64* %12, align 8, !tbaa !9
  br label %2566

; <label>:2563:                                   ; preds = %2549
  %2564 = call i32 @luaV_tointegerns(%struct.TValue* %2553, i64* nonnull %12, i32 0)
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2582, label %2566

; <label>:2566:                                   ; preds = %2563, %2560
  %2567 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2555, i32 0, i32 1
  %2568 = load i8, i8* %2567, align 8, !tbaa !2
  %2569 = icmp eq i8 %2568, 35
  br i1 %2569, label %2570, label %2573

; <label>:2570:                                   ; preds = %2566
  %2571 = bitcast %struct.TValue* %2556 to i64*
  %2572 = load i64, i64* %2571, align 8, !tbaa !6
  store i64 %2572, i64* %13, align 8, !tbaa !9
  br label %2576

; <label>:2573:                                   ; preds = %2566
  %2574 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2556, i64* nonnull %13, i32 0)
  %2575 = icmp eq i32 %2574, 0
  br i1 %2575, label %2582, label %2576

; <label>:2576:                                   ; preds = %2573, %2570
  %2577 = load i64, i64* %12, align 8, !tbaa !9
  %2578 = load i64, i64* %13, align 8, !tbaa !9
  %2579 = xor i64 %2578, %2577
  %2580 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2579, i64* %2580, align 8, !tbaa !6
  %2581 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2581, align 8, !tbaa !2
  br label %2585

; <label>:2582:                                   ; preds = %2573, %2563
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2583 = load i64, i64* %276, align 8, !tbaa !42
  store i64 %2583, i64* %278, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2553, %struct.TValue* %2556, %union.StackValue* %4081, i32 15) #10
  %2584 = load i32, i32* %280, align 8, !tbaa !6
  br label %2585

; <label>:2585:                                   ; preds = %2582, %2576
  %2586 = phi i32 [ %4083, %2576 ], [ %2584, %2582 ]
  %2587 = icmp eq i32 %2586, 0
  br i1 %2587, label %2592, label %2588

; <label>:2588:                                   ; preds = %2585
  %2589 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2590 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2591 = getelementptr inbounds %union.StackValue, %union.StackValue* %2590, i64 1
  br label %2592

; <label>:2592:                                   ; preds = %2585, %2588
  %2593 = phi i32 [ %2589, %2588 ], [ 0, %2585 ]
  %2594 = phi %union.StackValue* [ %2591, %2588 ], [ %4085, %2585 ]
  %2595 = getelementptr inbounds i32, i32* %4084, i64 1
  %2596 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2597:                                   ; preds = %4080
  %2598 = lshr i32 %4082, 16
  %2599 = and i32 %2598, 255
  %2600 = zext i32 %2599 to i64
  %2601 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2600, i32 0
  %2602 = lshr i32 %4082, 24
  %2603 = add nsw i32 %2602, -127
  %2604 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2600, i32 0, i32 1
  %2605 = load i8, i8* %2604, align 8, !tbaa !2
  %2606 = icmp eq i8 %2605, 35
  br i1 %2606, label %2607, label %2610

; <label>:2607:                                   ; preds = %2597
  %2608 = bitcast %struct.TValue* %2601 to i64*
  %2609 = load i64, i64* %2608, align 8, !tbaa !6
  store i64 %2609, i64* %14, align 8, !tbaa !9
  br label %2613

; <label>:2610:                                   ; preds = %2597
  %2611 = call i32 @luaV_tointegerns(%struct.TValue* %2601, i64* nonnull %14, i32 0)
  %2612 = icmp eq i32 %2611, 0
  br i1 %2612, label %2620, label %2613

; <label>:2613:                                   ; preds = %2610, %2607
  %2614 = load i64, i64* %14, align 8, !tbaa !9
  %2615 = sub nsw i32 127, %2602
  %2616 = sext i32 %2615 to i64
  %2617 = call i64 @luaV_shiftl(i64 %2614, i64 %2616)
  %2618 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2617, i64* %2618, align 8, !tbaa !6
  %2619 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2619, align 8, !tbaa !2
  br label %2631

; <label>:2620:                                   ; preds = %2610
  %2621 = trunc i32 %4082 to i16
  %2622 = icmp slt i16 %2621, 0
  %2623 = sub nsw i32 127, %2602
  %2624 = lshr i32 %4082, 15
  %2625 = and i32 %2624, 1
  %2626 = sub nsw i32 17, %2625
  %2627 = select i1 %2622, i32 %2623, i32 %2603
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2628 = load i64, i64* %379, align 8, !tbaa !42
  store i64 %2628, i64* %381, align 8, !tbaa !25
  %2629 = sext i32 %2627 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2601, i64 %2629, i32 0, %union.StackValue* %4081, i32 %2626) #10
  %2630 = load i32, i32* %383, align 8, !tbaa !6
  br label %2631

; <label>:2631:                                   ; preds = %2620, %2613
  %2632 = phi i32 [ %4083, %2613 ], [ %2630, %2620 ]
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2638, label %2634

; <label>:2634:                                   ; preds = %2631
  %2635 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2636 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2637 = getelementptr inbounds %union.StackValue, %union.StackValue* %2636, i64 1
  br label %2638

; <label>:2638:                                   ; preds = %2631, %2634
  %2639 = phi i32 [ %2635, %2634 ], [ 0, %2631 ]
  %2640 = phi %union.StackValue* [ %2637, %2634 ], [ %4085, %2631 ]
  %2641 = getelementptr inbounds i32, i32* %4084, i64 1
  %2642 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2643:                                   ; preds = %4080
  %2644 = lshr i32 %4082, 16
  %2645 = and i32 %2644, 255
  %2646 = zext i32 %2645 to i64
  %2647 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2646, i32 0
  %2648 = lshr i32 %4082, 24
  %2649 = add nsw i32 %2648, -127
  %2650 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2646, i32 0, i32 1
  %2651 = load i8, i8* %2650, align 8, !tbaa !2
  %2652 = icmp eq i8 %2651, 35
  br i1 %2652, label %2653, label %2656

; <label>:2653:                                   ; preds = %2643
  %2654 = bitcast %struct.TValue* %2647 to i64*
  %2655 = load i64, i64* %2654, align 8, !tbaa !6
  store i64 %2655, i64* %15, align 8, !tbaa !9
  br label %2659

; <label>:2656:                                   ; preds = %2643
  %2657 = call i32 @luaV_tointegerns(%struct.TValue* %2647, i64* nonnull %15, i32 0)
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2665, label %2659

; <label>:2659:                                   ; preds = %2656, %2653
  %2660 = sext i32 %2649 to i64
  %2661 = load i64, i64* %15, align 8, !tbaa !9
  %2662 = call i64 @luaV_shiftl(i64 %2660, i64 %2661)
  %2663 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2662, i64* %2663, align 8, !tbaa !6
  %2664 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2664, align 8, !tbaa !2
  br label %2669

; <label>:2665:                                   ; preds = %2656
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2666 = load i64, i64* %385, align 8, !tbaa !42
  store i64 %2666, i64* %387, align 8, !tbaa !25
  %2667 = sext i32 %2649 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2647, i64 %2667, i32 1, %union.StackValue* %4081, i32 16) #10
  %2668 = load i32, i32* %389, align 8, !tbaa !6
  br label %2669

; <label>:2669:                                   ; preds = %2665, %2659
  %2670 = phi i32 [ %4083, %2659 ], [ %2668, %2665 ]
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2676, label %2672

; <label>:2672:                                   ; preds = %2669
  %2673 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2674 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2675 = getelementptr inbounds %union.StackValue, %union.StackValue* %2674, i64 1
  br label %2676

; <label>:2676:                                   ; preds = %2669, %2672
  %2677 = phi i32 [ %2673, %2672 ], [ 0, %2669 ]
  %2678 = phi %union.StackValue* [ %2675, %2672 ], [ %4085, %2669 ]
  %2679 = getelementptr inbounds i32, i32* %4084, i64 1
  %2680 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2681:                                   ; preds = %4080
  %2682 = lshr i32 %4082, 16
  %2683 = and i32 %2682, 255
  %2684 = zext i32 %2683 to i64
  %2685 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2684, i32 0
  %2686 = lshr i32 %4082, 24
  %2687 = zext i32 %2686 to i64
  %2688 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2687, i32 0
  %2689 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2684, i32 0, i32 1
  %2690 = load i8, i8* %2689, align 8, !tbaa !2
  %2691 = icmp eq i8 %2690, 35
  br i1 %2691, label %2692, label %2695

; <label>:2692:                                   ; preds = %2681
  %2693 = bitcast %struct.TValue* %2685 to i64*
  %2694 = load i64, i64* %2693, align 8, !tbaa !6
  store i64 %2694, i64* %16, align 8, !tbaa !9
  br label %2698

; <label>:2695:                                   ; preds = %2681
  %2696 = call i32 @luaV_tointegerns(%struct.TValue* %2685, i64* nonnull %16, i32 0)
  %2697 = icmp eq i32 %2696, 0
  br i1 %2697, label %2715, label %2698

; <label>:2698:                                   ; preds = %2695, %2692
  %2699 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2687, i32 0, i32 1
  %2700 = load i8, i8* %2699, align 8, !tbaa !2
  %2701 = icmp eq i8 %2700, 35
  br i1 %2701, label %2702, label %2705

; <label>:2702:                                   ; preds = %2698
  %2703 = bitcast %struct.TValue* %2688 to i64*
  %2704 = load i64, i64* %2703, align 8, !tbaa !6
  store i64 %2704, i64* %17, align 8, !tbaa !9
  br label %2708

; <label>:2705:                                   ; preds = %2698
  %2706 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2688, i64* nonnull %17, i32 0)
  %2707 = icmp eq i32 %2706, 0
  br i1 %2707, label %2715, label %2708

; <label>:2708:                                   ; preds = %2705, %2702
  %2709 = load i64, i64* %16, align 8, !tbaa !9
  %2710 = load i64, i64* %17, align 8, !tbaa !9
  %2711 = sub nsw i64 0, %2710
  %2712 = call i64 @luaV_shiftl(i64 %2709, i64 %2711)
  %2713 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2712, i64* %2713, align 8, !tbaa !6
  %2714 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2714, align 8, !tbaa !2
  br label %2718

; <label>:2715:                                   ; preds = %2705, %2695
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2716 = load i64, i64* %288, align 8, !tbaa !42
  store i64 %2716, i64* %290, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2685, %struct.TValue* %2688, %union.StackValue* %4081, i32 17) #10
  %2717 = load i32, i32* %292, align 8, !tbaa !6
  br label %2718

; <label>:2718:                                   ; preds = %2715, %2708
  %2719 = phi i32 [ %4083, %2708 ], [ %2717, %2715 ]
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2725, label %2721

; <label>:2721:                                   ; preds = %2718
  %2722 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2723 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2724 = getelementptr inbounds %union.StackValue, %union.StackValue* %2723, i64 1
  br label %2725

; <label>:2725:                                   ; preds = %2718, %2721
  %2726 = phi i32 [ %2722, %2721 ], [ 0, %2718 ]
  %2727 = phi %union.StackValue* [ %2724, %2721 ], [ %4085, %2718 ]
  %2728 = getelementptr inbounds i32, i32* %4084, i64 1
  %2729 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2730:                                   ; preds = %4080
  %2731 = lshr i32 %4082, 16
  %2732 = and i32 %2731, 255
  %2733 = zext i32 %2732 to i64
  %2734 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2733, i32 0
  %2735 = lshr i32 %4082, 24
  %2736 = zext i32 %2735 to i64
  %2737 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2736, i32 0
  %2738 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2733, i32 0, i32 1
  %2739 = load i8, i8* %2738, align 8, !tbaa !2
  %2740 = icmp eq i8 %2739, 35
  br i1 %2740, label %2741, label %2744

; <label>:2741:                                   ; preds = %2730
  %2742 = bitcast %struct.TValue* %2734 to i64*
  %2743 = load i64, i64* %2742, align 8, !tbaa !6
  store i64 %2743, i64* %18, align 8, !tbaa !9
  br label %2747

; <label>:2744:                                   ; preds = %2730
  %2745 = call i32 @luaV_tointegerns(%struct.TValue* %2734, i64* nonnull %18, i32 0)
  %2746 = icmp eq i32 %2745, 0
  br i1 %2746, label %2763, label %2747

; <label>:2747:                                   ; preds = %2744, %2741
  %2748 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2736, i32 0, i32 1
  %2749 = load i8, i8* %2748, align 8, !tbaa !2
  %2750 = icmp eq i8 %2749, 35
  br i1 %2750, label %2751, label %2754

; <label>:2751:                                   ; preds = %2747
  %2752 = bitcast %struct.TValue* %2737 to i64*
  %2753 = load i64, i64* %2752, align 8, !tbaa !6
  store i64 %2753, i64* %19, align 8, !tbaa !9
  br label %2757

; <label>:2754:                                   ; preds = %2747
  %2755 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2737, i64* nonnull %19, i32 0)
  %2756 = icmp eq i32 %2755, 0
  br i1 %2756, label %2763, label %2757

; <label>:2757:                                   ; preds = %2754, %2751
  %2758 = load i64, i64* %18, align 8, !tbaa !9
  %2759 = load i64, i64* %19, align 8, !tbaa !9
  %2760 = call i64 @luaV_shiftl(i64 %2758, i64 %2759)
  %2761 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2760, i64* %2761, align 8, !tbaa !6
  %2762 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2762, align 8, !tbaa !2
  br label %2766

; <label>:2763:                                   ; preds = %2754, %2744
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2764 = load i64, i64* %282, align 8, !tbaa !42
  store i64 %2764, i64* %284, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2734, %struct.TValue* %2737, %union.StackValue* %4081, i32 16) #10
  %2765 = load i32, i32* %286, align 8, !tbaa !6
  br label %2766

; <label>:2766:                                   ; preds = %2763, %2757
  %2767 = phi i32 [ %4083, %2757 ], [ %2765, %2763 ]
  %2768 = icmp eq i32 %2767, 0
  br i1 %2768, label %2773, label %2769

; <label>:2769:                                   ; preds = %2766
  %2770 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2771 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2772 = getelementptr inbounds %union.StackValue, %union.StackValue* %2771, i64 1
  br label %2773

; <label>:2773:                                   ; preds = %2766, %2769
  %2774 = phi i32 [ %2770, %2769 ], [ 0, %2766 ]
  %2775 = phi %union.StackValue* [ %2772, %2769 ], [ %4085, %2766 ]
  %2776 = getelementptr inbounds i32, i32* %4084, i64 1
  %2777 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2778:                                   ; preds = %4080
  %2779 = lshr i32 %4082, 16
  %2780 = and i32 %2779, 255
  %2781 = zext i32 %2780 to i64
  %2782 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2781, i32 0
  %2783 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2781, i32 0, i32 1
  %2784 = load i8, i8* %2783, align 8, !tbaa !2
  switch i8 %2784, label %2797 [
    i8 35, label %2785
    i8 19, label %2791
  ]

; <label>:2785:                                   ; preds = %2778
  %2786 = bitcast %struct.TValue* %2782 to i64*
  %2787 = load i64, i64* %2786, align 8, !tbaa !6
  %2788 = sub i64 0, %2787
  %2789 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2788, i64* %2789, align 8, !tbaa !6
  %2790 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2790, align 8, !tbaa !2
  br label %2800

; <label>:2791:                                   ; preds = %2778
  %2792 = bitcast %struct.TValue* %2782 to double*
  %2793 = load double, double* %2792, align 8, !tbaa !6
  %2794 = fsub double -0.000000e+00, %2793
  %2795 = bitcast %union.StackValue* %4081 to double*
  store double %2794, double* %2795, align 8, !tbaa !6
  %2796 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 19, i8* %2796, align 8, !tbaa !2
  br label %2800

; <label>:2797:                                   ; preds = %2778
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2798 = load i64, i64* %294, align 8, !tbaa !42
  store i64 %2798, i64* %296, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2782, %struct.TValue* %2782, %union.StackValue* %4081, i32 18) #10
  %2799 = load i32, i32* %298, align 8, !tbaa !6
  br label %2800

; <label>:2800:                                   ; preds = %2791, %2797, %2785
  %2801 = phi i32 [ %4083, %2785 ], [ %4083, %2791 ], [ %2799, %2797 ]
  %2802 = icmp eq i32 %2801, 0
  br i1 %2802, label %2807, label %2803

; <label>:2803:                                   ; preds = %2800
  %2804 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2805 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2806 = getelementptr inbounds %union.StackValue, %union.StackValue* %2805, i64 1
  br label %2807

; <label>:2807:                                   ; preds = %2800, %2803
  %2808 = phi i32 [ %2804, %2803 ], [ 0, %2800 ]
  %2809 = phi %union.StackValue* [ %2806, %2803 ], [ %4085, %2800 ]
  %2810 = getelementptr inbounds i32, i32* %4084, i64 1
  %2811 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2812:                                   ; preds = %4080
  %2813 = lshr i32 %4082, 16
  %2814 = and i32 %2813, 255
  %2815 = zext i32 %2814 to i64
  %2816 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2815, i32 0
  %2817 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2815, i32 0, i32 1
  %2818 = load i8, i8* %2817, align 8, !tbaa !2
  %2819 = icmp eq i8 %2818, 35
  br i1 %2819, label %2820, label %2823

; <label>:2820:                                   ; preds = %2812
  %2821 = bitcast %struct.TValue* %2816 to i64*
  %2822 = load i64, i64* %2821, align 8, !tbaa !6
  store i64 %2822, i64* %20, align 8, !tbaa !9
  br label %2826

; <label>:2823:                                   ; preds = %2812
  %2824 = call i32 @luaV_tointegerns(%struct.TValue* %2816, i64* nonnull %20, i32 0)
  %2825 = icmp eq i32 %2824, 0
  br i1 %2825, label %2831, label %2826

; <label>:2826:                                   ; preds = %2823, %2820
  %2827 = load i64, i64* %20, align 8, !tbaa !9
  %2828 = xor i64 %2827, -1
  %2829 = bitcast %union.StackValue* %4081 to i64*
  store i64 %2828, i64* %2829, align 8, !tbaa !6
  %2830 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 35, i8* %2830, align 8, !tbaa !2
  br label %2834

; <label>:2831:                                   ; preds = %2823
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2832 = load i64, i64* %391, align 8, !tbaa !42
  store i64 %2832, i64* %393, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2816, %struct.TValue* %2816, %union.StackValue* %4081, i32 19) #10
  %2833 = load i32, i32* %395, align 8, !tbaa !6
  br label %2834

; <label>:2834:                                   ; preds = %2831, %2826
  %2835 = phi i32 [ %4083, %2826 ], [ %2833, %2831 ]
  %2836 = icmp eq i32 %2835, 0
  br i1 %2836, label %2841, label %2837

; <label>:2837:                                   ; preds = %2834
  %2838 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2839 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2840 = getelementptr inbounds %union.StackValue, %union.StackValue* %2839, i64 1
  br label %2841

; <label>:2841:                                   ; preds = %2834, %2837
  %2842 = phi i32 [ %2838, %2837 ], [ 0, %2834 ]
  %2843 = phi %union.StackValue* [ %2840, %2837 ], [ %4085, %2834 ]
  %2844 = getelementptr inbounds i32, i32* %4084, i64 1
  %2845 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2846:                                   ; preds = %4080
  %2847 = lshr i32 %4082, 16
  %2848 = and i32 %2847, 255
  %2849 = zext i32 %2848 to i64
  %2850 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2849, i32 0, i32 1
  %2851 = load i8, i8* %2850, align 8, !tbaa !2
  %2852 = and i8 %2851, 15
  %2853 = icmp eq i8 %2852, 0
  br i1 %2853, label %2861, label %2854

; <label>:2854:                                   ; preds = %2846
  %2855 = icmp eq i8 %2851, 1
  br i1 %2855, label %2856, label %2861

; <label>:2856:                                   ; preds = %2854
  %2857 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2849, i32 0, i32 0
  %2858 = bitcast %union.Value* %2857 to i32*
  %2859 = load i32, i32* %2858, align 8, !tbaa !6
  %2860 = icmp eq i32 %2859, 0
  br label %2861

; <label>:2861:                                   ; preds = %2854, %2856, %2846
  %2862 = phi i1 [ true, %2846 ], [ false, %2854 ], [ %2860, %2856 ]
  %2863 = zext i1 %2862 to i32
  %2864 = bitcast %union.StackValue* %4081 to i32*
  store i32 %2863, i32* %2864, align 8, !tbaa !6
  %2865 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 1, i8* %2865, align 8, !tbaa !2
  %2866 = icmp eq i32 %4083, 0
  br i1 %2866, label %2871, label %2867

; <label>:2867:                                   ; preds = %2861
  %2868 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2869 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2870 = getelementptr inbounds %union.StackValue, %union.StackValue* %2869, i64 1
  br label %2871

; <label>:2871:                                   ; preds = %2861, %2867
  %2872 = phi i32 [ %2868, %2867 ], [ 0, %2861 ]
  %2873 = phi %union.StackValue* [ %2870, %2867 ], [ %4085, %2861 ]
  %2874 = getelementptr inbounds i32, i32* %4084, i64 1
  %2875 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2876:                                   ; preds = %4080
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2877 = load i64, i64* %36, align 8, !tbaa !42
  store i64 %2877, i64* %38, align 8, !tbaa !25
  %2878 = lshr i32 %4082, 16
  %2879 = and i32 %2878, 255
  %2880 = zext i32 %2879 to i64
  %2881 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2880, i32 0
  call void @luaV_objlen(%struct.lua_State* %0, %union.StackValue* %4081, %struct.TValue* %2881)
  %2882 = load i32, i32* %40, align 8, !tbaa !6
  %2883 = icmp eq i32 %2882, 0
  br i1 %2883, label %2888, label %2884

; <label>:2884:                                   ; preds = %2876
  %2885 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4084) #10
  %2886 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2887 = getelementptr inbounds %union.StackValue, %union.StackValue* %2886, i64 1
  br label %2888

; <label>:2888:                                   ; preds = %2876, %2884
  %2889 = phi i32 [ %2885, %2884 ], [ 0, %2876 ]
  %2890 = phi %union.StackValue* [ %2887, %2884 ], [ %4085, %2876 ]
  %2891 = getelementptr inbounds i32, i32* %4084, i64 1
  %2892 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2893:                                   ; preds = %4080
  %2894 = lshr i32 %4082, 16
  %2895 = and i32 %2894, 255
  %2896 = zext i32 %2895 to i64
  %2897 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 %2896
  store %union.StackValue* %2897, %union.StackValue** %41, align 8, !tbaa !25
  store i32* %4084, i32** %30, align 8, !tbaa !6
  call void @luaV_concat(%struct.lua_State* %0, i32 %2895)
  %2898 = load %struct.global_State*, %struct.global_State** %44, align 8, !tbaa !16
  %2899 = getelementptr inbounds %struct.global_State, %struct.global_State* %2898, i64 0, i32 3
  %2900 = load i64, i64* %2899, align 8, !tbaa !43
  %2901 = icmp sgt i64 %2900, 0
  br i1 %2901, label %2902, label %2903

; <label>:2902:                                   ; preds = %2893
  call void @luaC_step(%struct.lua_State* nonnull %0) #10
  br label %2903

; <label>:2903:                                   ; preds = %2902, %2893
  %2904 = load i32, i32* %43, align 8, !tbaa !6
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %2910, label %2906

; <label>:2906:                                   ; preds = %2903
  %2907 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4084) #10
  %2908 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2909 = getelementptr inbounds %union.StackValue, %union.StackValue* %2908, i64 1
  br label %2910

; <label>:2910:                                   ; preds = %2903, %2906
  %2911 = phi i32 [ %2907, %2906 ], [ 0, %2903 ]
  %2912 = phi %union.StackValue* [ %2909, %2906 ], [ %4085, %2903 ]
  %2913 = getelementptr inbounds i32, i32* %4084, i64 1
  %2914 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2915:                                   ; preds = %4080
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2916 = load i64, i64* %47, align 8, !tbaa !42
  store i64 %2916, i64* %48, align 8, !tbaa !25
  %2917 = call i32 @luaF_close(%struct.lua_State* %0, %union.StackValue* %4081, i32 0) #10
  %2918 = load i32, i32* %50, align 8, !tbaa !6
  %2919 = icmp eq i32 %2918, 0
  br i1 %2919, label %2924, label %2920

; <label>:2920:                                   ; preds = %2915
  %2921 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4084) #10
  %2922 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2923 = getelementptr inbounds %union.StackValue, %union.StackValue* %2922, i64 1
  br label %2924

; <label>:2924:                                   ; preds = %2915, %2920
  %2925 = phi i32 [ %2921, %2920 ], [ 0, %2915 ]
  %2926 = phi %union.StackValue* [ %2923, %2920 ], [ %4085, %2915 ]
  %2927 = getelementptr inbounds i32, i32* %4084, i64 1
  %2928 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2929:                                   ; preds = %4080
  store i32* %4084, i32** %30, align 8, !tbaa !6
  call void @luaF_newtbcupval(%struct.lua_State* %0, %union.StackValue* %4081) #10
  %2930 = icmp eq i32 %4083, 0
  br i1 %2930, label %2935, label %2931

; <label>:2931:                                   ; preds = %2929
  %2932 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %2933 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2934 = getelementptr inbounds %union.StackValue, %union.StackValue* %2933, i64 1
  br label %2935

; <label>:2935:                                   ; preds = %2929, %2931
  %2936 = phi i32 [ %2932, %2931 ], [ 0, %2929 ]
  %2937 = phi %union.StackValue* [ %2934, %2931 ], [ %4085, %2929 ]
  %2938 = getelementptr inbounds i32, i32* %4084, i64 1
  %2939 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:2940:                                   ; preds = %4080
  %2941 = lshr i32 %4082, 7
  %2942 = add nsw i32 %2941, -16777215
  %2943 = sext i32 %2942 to i64
  %2944 = getelementptr inbounds i32, i32* %4084, i64 %2943
  %2945 = load i32, i32* %52, align 8, !tbaa !6
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2951, label %2947

; <label>:2947:                                   ; preds = %2940
  %2948 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2944) #10
  %2949 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2950 = getelementptr inbounds %union.StackValue, %union.StackValue* %2949, i64 1
  br label %2951

; <label>:2951:                                   ; preds = %2940, %2947
  %2952 = phi i32 [ %2948, %2947 ], [ 0, %2940 ]
  %2953 = phi %union.StackValue* [ %2950, %2947 ], [ %4085, %2940 ]
  %2954 = getelementptr inbounds i32, i32* %2944, i64 1
  %2955 = load i32, i32* %2944, align 4, !tbaa !31
  br label %476

; <label>:2956:                                   ; preds = %4080
  %2957 = lshr i32 %4082, 16
  %2958 = and i32 %2957, 255
  %2959 = zext i32 %2958 to i64
  %2960 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2959, i32 0
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %2961 = load i64, i64* %54, align 8, !tbaa !42
  store i64 %2961, i64* %56, align 8, !tbaa !25
  %2962 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %2963 = call i32 @luaV_equalobj(%struct.lua_State* %0, %struct.TValue* %2962, %struct.TValue* %2960)
  %2964 = load i32, i32* %58, align 8, !tbaa !6
  %2965 = lshr i32 %4082, 15
  %2966 = and i32 %2965, 1
  %2967 = icmp eq i32 %2963, %2966
  br i1 %2967, label %2968, label %2973

; <label>:2968:                                   ; preds = %2956
  %2969 = load i32, i32* %4084, align 4, !tbaa !31
  %2970 = lshr i32 %2969, 7
  %2971 = add nsw i32 %2970, -16777214
  %2972 = sext i32 %2971 to i64
  br label %2973

; <label>:2973:                                   ; preds = %2956, %2968
  %2974 = phi i64 [ %2972, %2968 ], [ 1, %2956 ]
  %2975 = getelementptr inbounds i32, i32* %4084, i64 %2974
  %2976 = icmp eq i32 %2964, 0
  br i1 %2976, label %2981, label %2977

; <label>:2977:                                   ; preds = %2973
  %2978 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %2975) #10
  %2979 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %2980 = getelementptr inbounds %union.StackValue, %union.StackValue* %2979, i64 1
  br label %2981

; <label>:2981:                                   ; preds = %2973, %2977
  %2982 = phi i32 [ %2978, %2977 ], [ 0, %2973 ]
  %2983 = phi %union.StackValue* [ %2980, %2977 ], [ %4085, %2973 ]
  %2984 = getelementptr inbounds i32, i32* %2975, i64 1
  %2985 = load i32, i32* %2975, align 4, !tbaa !31
  br label %476

; <label>:2986:                                   ; preds = %4080
  %2987 = lshr i32 %4082, 16
  %2988 = and i32 %2987, 255
  %2989 = zext i32 %2988 to i64
  %2990 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2989, i32 0
  %2991 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %2992 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %2993 = load i8, i8* %2992, align 8, !tbaa !6
  %2994 = icmp eq i8 %2993, 35
  br i1 %2994, label %2995, label %3006

; <label>:2995:                                   ; preds = %2986
  %2996 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2989, i32 0, i32 1
  %2997 = load i8, i8* %2996, align 8, !tbaa !2
  %2998 = icmp eq i8 %2997, 35
  br i1 %2998, label %2999, label %3009

; <label>:2999:                                   ; preds = %2995
  %3000 = bitcast %union.StackValue* %4081 to i64*
  %3001 = load i64, i64* %3000, align 8, !tbaa !6
  %3002 = bitcast %struct.TValue* %2990 to i64*
  %3003 = load i64, i64* %3002, align 8, !tbaa !6
  %3004 = icmp slt i64 %3001, %3003
  %3005 = zext i1 %3004 to i32
  br label %3020

; <label>:3006:                                   ; preds = %2986
  %3007 = and i8 %2993, 15
  %3008 = icmp eq i8 %3007, 3
  br i1 %3008, label %3009, label %3016

; <label>:3009:                                   ; preds = %2995, %3006
  %3010 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %2989, i32 0, i32 1
  %3011 = load i8, i8* %3010, align 8, !tbaa !2
  %3012 = and i8 %3011, 15
  %3013 = icmp eq i8 %3012, 3
  br i1 %3013, label %3014, label %3016

; <label>:3014:                                   ; preds = %3009
  %3015 = call fastcc i32 @LTnum(%struct.TValue* %2991, %struct.TValue* nonnull %2990)
  br label %3020

; <label>:3016:                                   ; preds = %3009, %3006
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %3017 = load i64, i64* %300, align 8, !tbaa !42
  store i64 %3017, i64* %302, align 8, !tbaa !25
  %3018 = call fastcc i32 @lessthanothers(%struct.lua_State* %0, %struct.TValue* %2991, %struct.TValue* %2990)
  %3019 = load i32, i32* %304, align 8, !tbaa !6
  br label %3020

; <label>:3020:                                   ; preds = %3014, %3016, %2999
  %3021 = phi i32 [ %3005, %2999 ], [ %3015, %3014 ], [ %3018, %3016 ]
  %3022 = phi i32 [ %4083, %2999 ], [ %4083, %3014 ], [ %3019, %3016 ]
  %3023 = lshr i32 %4082, 15
  %3024 = and i32 %3023, 1
  %3025 = icmp eq i32 %3021, %3024
  br i1 %3025, label %3028, label %3026

; <label>:3026:                                   ; preds = %3020
  %3027 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3035

; <label>:3028:                                   ; preds = %3020
  %3029 = load i32, i32* %4084, align 4, !tbaa !31
  %3030 = lshr i32 %3029, 7
  %3031 = add nsw i32 %3030, -16777214
  %3032 = sext i32 %3031 to i64
  %3033 = getelementptr inbounds i32, i32* %4084, i64 %3032
  %3034 = load i32, i32* %397, align 8, !tbaa !6
  br label %3035

; <label>:3035:                                   ; preds = %3028, %3026
  %3036 = phi i32 [ %3022, %3026 ], [ %3034, %3028 ]
  %3037 = phi i32* [ %3027, %3026 ], [ %3033, %3028 ]
  %3038 = icmp eq i32 %3036, 0
  br i1 %3038, label %3043, label %3039

; <label>:3039:                                   ; preds = %3035
  %3040 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3037) #10
  %3041 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3042 = getelementptr inbounds %union.StackValue, %union.StackValue* %3041, i64 1
  br label %3043

; <label>:3043:                                   ; preds = %3035, %3039
  %3044 = phi i32 [ %3040, %3039 ], [ 0, %3035 ]
  %3045 = phi %union.StackValue* [ %3042, %3039 ], [ %4085, %3035 ]
  %3046 = getelementptr inbounds i32, i32* %3037, i64 1
  %3047 = load i32, i32* %3037, align 4, !tbaa !31
  br label %476

; <label>:3048:                                   ; preds = %4080
  %3049 = lshr i32 %4082, 16
  %3050 = and i32 %3049, 255
  %3051 = zext i32 %3050 to i64
  %3052 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %3051, i32 0
  %3053 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %3054 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3055 = load i8, i8* %3054, align 8, !tbaa !6
  %3056 = icmp eq i8 %3055, 35
  br i1 %3056, label %3057, label %3068

; <label>:3057:                                   ; preds = %3048
  %3058 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %3051, i32 0, i32 1
  %3059 = load i8, i8* %3058, align 8, !tbaa !2
  %3060 = icmp eq i8 %3059, 35
  br i1 %3060, label %3061, label %3071

; <label>:3061:                                   ; preds = %3057
  %3062 = bitcast %union.StackValue* %4081 to i64*
  %3063 = load i64, i64* %3062, align 8, !tbaa !6
  %3064 = bitcast %struct.TValue* %3052 to i64*
  %3065 = load i64, i64* %3064, align 8, !tbaa !6
  %3066 = icmp sle i64 %3063, %3065
  %3067 = zext i1 %3066 to i32
  br label %3082

; <label>:3068:                                   ; preds = %3048
  %3069 = and i8 %3055, 15
  %3070 = icmp eq i8 %3069, 3
  br i1 %3070, label %3071, label %3078

; <label>:3071:                                   ; preds = %3057, %3068
  %3072 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %3051, i32 0, i32 1
  %3073 = load i8, i8* %3072, align 8, !tbaa !2
  %3074 = and i8 %3073, 15
  %3075 = icmp eq i8 %3074, 3
  br i1 %3075, label %3076, label %3078

; <label>:3076:                                   ; preds = %3071
  %3077 = call fastcc i32 @LEnum(%struct.TValue* %3053, %struct.TValue* nonnull %3052)
  br label %3082

; <label>:3078:                                   ; preds = %3071, %3068
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %3079 = load i64, i64* %306, align 8, !tbaa !42
  store i64 %3079, i64* %308, align 8, !tbaa !25
  %3080 = call fastcc i32 @lessequalothers(%struct.lua_State* %0, %struct.TValue* %3053, %struct.TValue* %3052)
  %3081 = load i32, i32* %310, align 8, !tbaa !6
  br label %3082

; <label>:3082:                                   ; preds = %3076, %3078, %3061
  %3083 = phi i32 [ %3067, %3061 ], [ %3077, %3076 ], [ %3080, %3078 ]
  %3084 = phi i32 [ %4083, %3061 ], [ %4083, %3076 ], [ %3081, %3078 ]
  %3085 = lshr i32 %4082, 15
  %3086 = and i32 %3085, 1
  %3087 = icmp eq i32 %3083, %3086
  br i1 %3087, label %3090, label %3088

; <label>:3088:                                   ; preds = %3082
  %3089 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3097

; <label>:3090:                                   ; preds = %3082
  %3091 = load i32, i32* %4084, align 4, !tbaa !31
  %3092 = lshr i32 %3091, 7
  %3093 = add nsw i32 %3092, -16777214
  %3094 = sext i32 %3093 to i64
  %3095 = getelementptr inbounds i32, i32* %4084, i64 %3094
  %3096 = load i32, i32* %399, align 8, !tbaa !6
  br label %3097

; <label>:3097:                                   ; preds = %3090, %3088
  %3098 = phi i32 [ %3084, %3088 ], [ %3096, %3090 ]
  %3099 = phi i32* [ %3089, %3088 ], [ %3095, %3090 ]
  %3100 = icmp eq i32 %3098, 0
  br i1 %3100, label %3105, label %3101

; <label>:3101:                                   ; preds = %3097
  %3102 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3099) #10
  %3103 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3104 = getelementptr inbounds %union.StackValue, %union.StackValue* %3103, i64 1
  br label %3105

; <label>:3105:                                   ; preds = %3097, %3101
  %3106 = phi i32 [ %3102, %3101 ], [ 0, %3097 ]
  %3107 = phi %union.StackValue* [ %3104, %3101 ], [ %4085, %3097 ]
  %3108 = getelementptr inbounds i32, i32* %3099, i64 1
  %3109 = load i32, i32* %3099, align 4, !tbaa !31
  br label %476

; <label>:3110:                                   ; preds = %4080
  %3111 = lshr i32 %4082, 16
  %3112 = and i32 %3111, 255
  %3113 = zext i32 %3112 to i64
  %3114 = getelementptr inbounds %struct.TValue, %struct.TValue* %429, i64 %3113
  %3115 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %3116 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %3115, %struct.TValue* %3114)
  %3117 = lshr i32 %4082, 15
  %3118 = and i32 %3117, 1
  %3119 = icmp eq i32 %3116, %3118
  br i1 %3119, label %3122, label %3120

; <label>:3120:                                   ; preds = %3110
  %3121 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3129

; <label>:3122:                                   ; preds = %3110
  %3123 = load i32, i32* %4084, align 4, !tbaa !31
  %3124 = lshr i32 %3123, 7
  %3125 = add nsw i32 %3124, -16777214
  %3126 = sext i32 %3125 to i64
  %3127 = getelementptr inbounds i32, i32* %4084, i64 %3126
  %3128 = load i32, i32* %312, align 8, !tbaa !6
  br label %3129

; <label>:3129:                                   ; preds = %3122, %3120
  %3130 = phi i32 [ %4083, %3120 ], [ %3128, %3122 ]
  %3131 = phi i32* [ %3121, %3120 ], [ %3127, %3122 ]
  %3132 = icmp eq i32 %3130, 0
  br i1 %3132, label %3137, label %3133

; <label>:3133:                                   ; preds = %3129
  %3134 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3131) #10
  %3135 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3136 = getelementptr inbounds %union.StackValue, %union.StackValue* %3135, i64 1
  br label %3137

; <label>:3137:                                   ; preds = %3129, %3133
  %3138 = phi i32 [ %3134, %3133 ], [ 0, %3129 ]
  %3139 = phi %union.StackValue* [ %3136, %3133 ], [ %4085, %3129 ]
  %3140 = getelementptr inbounds i32, i32* %3131, i64 1
  %3141 = load i32, i32* %3131, align 4, !tbaa !31
  br label %476

; <label>:3142:                                   ; preds = %4080
  %3143 = lshr i32 %4082, 16
  %3144 = and i32 %3143, 255
  %3145 = add nsw i32 %3144, -127
  %3146 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3147 = load i8, i8* %3146, align 8, !tbaa !6
  switch i8 %3147, label %3148 [
    i8 35, label %3151
    i8 19, label %3156
  ]

; <label>:3148:                                   ; preds = %3142
  %3149 = trunc i32 %4082 to i16
  %3150 = icmp slt i16 %3149, 0
  br i1 %3150, label %3166, label %3168

; <label>:3151:                                   ; preds = %3142
  %3152 = bitcast %union.StackValue* %4081 to i64*
  %3153 = load i64, i64* %3152, align 8, !tbaa !6
  %3154 = sext i32 %3145 to i64
  %3155 = icmp eq i64 %3153, %3154
  br label %3161

; <label>:3156:                                   ; preds = %3142
  %3157 = bitcast %union.StackValue* %4081 to double*
  %3158 = load double, double* %3157, align 8, !tbaa !6
  %3159 = sitofp i32 %3145 to double
  %3160 = fcmp oeq double %3158, %3159
  br label %3161

; <label>:3161:                                   ; preds = %3156, %3151
  %3162 = phi i1 [ %3155, %3151 ], [ %3160, %3156 ]
  %3163 = trunc i32 %4082 to i16
  %3164 = icmp slt i16 %3163, 0
  %3165 = xor i1 %3164, %3162
  br i1 %3165, label %3166, label %3168

; <label>:3166:                                   ; preds = %3148, %3161
  %3167 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3175

; <label>:3168:                                   ; preds = %3148, %3161
  %3169 = load i32, i32* %4084, align 4, !tbaa !31
  %3170 = lshr i32 %3169, 7
  %3171 = add nsw i32 %3170, -16777214
  %3172 = sext i32 %3171 to i64
  %3173 = getelementptr inbounds i32, i32* %4084, i64 %3172
  %3174 = load i32, i32* %314, align 8, !tbaa !6
  br label %3175

; <label>:3175:                                   ; preds = %3168, %3166
  %3176 = phi i32 [ %4083, %3166 ], [ %3174, %3168 ]
  %3177 = phi i32* [ %3167, %3166 ], [ %3173, %3168 ]
  %3178 = icmp eq i32 %3176, 0
  br i1 %3178, label %3183, label %3179

; <label>:3179:                                   ; preds = %3175
  %3180 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3177) #10
  %3181 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3182 = getelementptr inbounds %union.StackValue, %union.StackValue* %3181, i64 1
  br label %3183

; <label>:3183:                                   ; preds = %3175, %3179
  %3184 = phi i32 [ %3180, %3179 ], [ 0, %3175 ]
  %3185 = phi %union.StackValue* [ %3182, %3179 ], [ %4085, %3175 ]
  %3186 = getelementptr inbounds i32, i32* %3177, i64 1
  %3187 = load i32, i32* %3177, align 4, !tbaa !31
  br label %476

; <label>:3188:                                   ; preds = %4080
  %3189 = lshr i32 %4082, 16
  %3190 = and i32 %3189, 255
  %3191 = add nsw i32 %3190, -127
  %3192 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3193 = load i8, i8* %3192, align 8, !tbaa !6
  switch i8 %3193, label %3206 [
    i8 35, label %3194
    i8 19, label %3200
  ]

; <label>:3194:                                   ; preds = %3188
  %3195 = bitcast %union.StackValue* %4081 to i64*
  %3196 = load i64, i64* %3195, align 8, !tbaa !6
  %3197 = sext i32 %3191 to i64
  %3198 = icmp slt i64 %3196, %3197
  %3199 = zext i1 %3198 to i32
  br label %3212

; <label>:3200:                                   ; preds = %3188
  %3201 = bitcast %union.StackValue* %4081 to double*
  %3202 = load double, double* %3201, align 8, !tbaa !6
  %3203 = sitofp i32 %3191 to double
  %3204 = fcmp olt double %3202, %3203
  %3205 = zext i1 %3204 to i32
  br label %3212

; <label>:3206:                                   ; preds = %3188
  %3207 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %3208 = lshr i32 %4082, 24
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %3209 = load i64, i64* %316, align 8, !tbaa !42
  store i64 %3209, i64* %318, align 8, !tbaa !25
  %3210 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3207, i32 %3191, i32 0, i32 %3208, i32 20) #10
  %3211 = load i32, i32* %320, align 8, !tbaa !6
  br label %3212

; <label>:3212:                                   ; preds = %3200, %3206, %3194
  %3213 = phi i32 [ %3199, %3194 ], [ %3205, %3200 ], [ %3210, %3206 ]
  %3214 = phi i32 [ %4083, %3194 ], [ %4083, %3200 ], [ %3211, %3206 ]
  %3215 = lshr i32 %4082, 15
  %3216 = and i32 %3215, 1
  %3217 = icmp eq i32 %3213, %3216
  br i1 %3217, label %3220, label %3218

; <label>:3218:                                   ; preds = %3212
  %3219 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3227

; <label>:3220:                                   ; preds = %3212
  %3221 = load i32, i32* %4084, align 4, !tbaa !31
  %3222 = lshr i32 %3221, 7
  %3223 = add nsw i32 %3222, -16777214
  %3224 = sext i32 %3223 to i64
  %3225 = getelementptr inbounds i32, i32* %4084, i64 %3224
  %3226 = load i32, i32* %401, align 8, !tbaa !6
  br label %3227

; <label>:3227:                                   ; preds = %3220, %3218
  %3228 = phi i32 [ %3214, %3218 ], [ %3226, %3220 ]
  %3229 = phi i32* [ %3219, %3218 ], [ %3225, %3220 ]
  %3230 = icmp eq i32 %3228, 0
  br i1 %3230, label %3235, label %3231

; <label>:3231:                                   ; preds = %3227
  %3232 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3229) #10
  %3233 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3234 = getelementptr inbounds %union.StackValue, %union.StackValue* %3233, i64 1
  br label %3235

; <label>:3235:                                   ; preds = %3227, %3231
  %3236 = phi i32 [ %3232, %3231 ], [ 0, %3227 ]
  %3237 = phi %union.StackValue* [ %3234, %3231 ], [ %4085, %3227 ]
  %3238 = getelementptr inbounds i32, i32* %3229, i64 1
  %3239 = load i32, i32* %3229, align 4, !tbaa !31
  br label %476

; <label>:3240:                                   ; preds = %4080
  %3241 = lshr i32 %4082, 16
  %3242 = and i32 %3241, 255
  %3243 = add nsw i32 %3242, -127
  %3244 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3245 = load i8, i8* %3244, align 8, !tbaa !6
  switch i8 %3245, label %3258 [
    i8 35, label %3246
    i8 19, label %3252
  ]

; <label>:3246:                                   ; preds = %3240
  %3247 = bitcast %union.StackValue* %4081 to i64*
  %3248 = load i64, i64* %3247, align 8, !tbaa !6
  %3249 = sext i32 %3243 to i64
  %3250 = icmp sle i64 %3248, %3249
  %3251 = zext i1 %3250 to i32
  br label %3264

; <label>:3252:                                   ; preds = %3240
  %3253 = bitcast %union.StackValue* %4081 to double*
  %3254 = load double, double* %3253, align 8, !tbaa !6
  %3255 = sitofp i32 %3243 to double
  %3256 = fcmp ole double %3254, %3255
  %3257 = zext i1 %3256 to i32
  br label %3264

; <label>:3258:                                   ; preds = %3240
  %3259 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %3260 = lshr i32 %4082, 24
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %3261 = load i64, i64* %322, align 8, !tbaa !42
  store i64 %3261, i64* %324, align 8, !tbaa !25
  %3262 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3259, i32 %3243, i32 0, i32 %3260, i32 21) #10
  %3263 = load i32, i32* %326, align 8, !tbaa !6
  br label %3264

; <label>:3264:                                   ; preds = %3252, %3258, %3246
  %3265 = phi i32 [ %3251, %3246 ], [ %3257, %3252 ], [ %3262, %3258 ]
  %3266 = phi i32 [ %4083, %3246 ], [ %4083, %3252 ], [ %3263, %3258 ]
  %3267 = lshr i32 %4082, 15
  %3268 = and i32 %3267, 1
  %3269 = icmp eq i32 %3265, %3268
  br i1 %3269, label %3272, label %3270

; <label>:3270:                                   ; preds = %3264
  %3271 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3279

; <label>:3272:                                   ; preds = %3264
  %3273 = load i32, i32* %4084, align 4, !tbaa !31
  %3274 = lshr i32 %3273, 7
  %3275 = add nsw i32 %3274, -16777214
  %3276 = sext i32 %3275 to i64
  %3277 = getelementptr inbounds i32, i32* %4084, i64 %3276
  %3278 = load i32, i32* %403, align 8, !tbaa !6
  br label %3279

; <label>:3279:                                   ; preds = %3272, %3270
  %3280 = phi i32 [ %3266, %3270 ], [ %3278, %3272 ]
  %3281 = phi i32* [ %3271, %3270 ], [ %3277, %3272 ]
  %3282 = icmp eq i32 %3280, 0
  br i1 %3282, label %3287, label %3283

; <label>:3283:                                   ; preds = %3279
  %3284 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3281) #10
  %3285 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3286 = getelementptr inbounds %union.StackValue, %union.StackValue* %3285, i64 1
  br label %3287

; <label>:3287:                                   ; preds = %3279, %3283
  %3288 = phi i32 [ %3284, %3283 ], [ 0, %3279 ]
  %3289 = phi %union.StackValue* [ %3286, %3283 ], [ %4085, %3279 ]
  %3290 = getelementptr inbounds i32, i32* %3281, i64 1
  %3291 = load i32, i32* %3281, align 4, !tbaa !31
  br label %476

; <label>:3292:                                   ; preds = %4080
  %3293 = lshr i32 %4082, 16
  %3294 = and i32 %3293, 255
  %3295 = add nsw i32 %3294, -127
  %3296 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3297 = load i8, i8* %3296, align 8, !tbaa !6
  switch i8 %3297, label %3310 [
    i8 35, label %3298
    i8 19, label %3304
  ]

; <label>:3298:                                   ; preds = %3292
  %3299 = bitcast %union.StackValue* %4081 to i64*
  %3300 = load i64, i64* %3299, align 8, !tbaa !6
  %3301 = sext i32 %3295 to i64
  %3302 = icmp sgt i64 %3300, %3301
  %3303 = zext i1 %3302 to i32
  br label %3316

; <label>:3304:                                   ; preds = %3292
  %3305 = bitcast %union.StackValue* %4081 to double*
  %3306 = load double, double* %3305, align 8, !tbaa !6
  %3307 = sitofp i32 %3295 to double
  %3308 = fcmp ogt double %3306, %3307
  %3309 = zext i1 %3308 to i32
  br label %3316

; <label>:3310:                                   ; preds = %3292
  %3311 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %3312 = lshr i32 %4082, 24
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %3313 = load i64, i64* %328, align 8, !tbaa !42
  store i64 %3313, i64* %330, align 8, !tbaa !25
  %3314 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3311, i32 %3295, i32 1, i32 %3312, i32 20) #10
  %3315 = load i32, i32* %332, align 8, !tbaa !6
  br label %3316

; <label>:3316:                                   ; preds = %3304, %3310, %3298
  %3317 = phi i32 [ %3303, %3298 ], [ %3309, %3304 ], [ %3314, %3310 ]
  %3318 = phi i32 [ %4083, %3298 ], [ %4083, %3304 ], [ %3315, %3310 ]
  %3319 = lshr i32 %4082, 15
  %3320 = and i32 %3319, 1
  %3321 = icmp eq i32 %3317, %3320
  br i1 %3321, label %3324, label %3322

; <label>:3322:                                   ; preds = %3316
  %3323 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3331

; <label>:3324:                                   ; preds = %3316
  %3325 = load i32, i32* %4084, align 4, !tbaa !31
  %3326 = lshr i32 %3325, 7
  %3327 = add nsw i32 %3326, -16777214
  %3328 = sext i32 %3327 to i64
  %3329 = getelementptr inbounds i32, i32* %4084, i64 %3328
  %3330 = load i32, i32* %405, align 8, !tbaa !6
  br label %3331

; <label>:3331:                                   ; preds = %3324, %3322
  %3332 = phi i32 [ %3318, %3322 ], [ %3330, %3324 ]
  %3333 = phi i32* [ %3323, %3322 ], [ %3329, %3324 ]
  %3334 = icmp eq i32 %3332, 0
  br i1 %3334, label %3339, label %3335

; <label>:3335:                                   ; preds = %3331
  %3336 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3333) #10
  %3337 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3338 = getelementptr inbounds %union.StackValue, %union.StackValue* %3337, i64 1
  br label %3339

; <label>:3339:                                   ; preds = %3331, %3335
  %3340 = phi i32 [ %3336, %3335 ], [ 0, %3331 ]
  %3341 = phi %union.StackValue* [ %3338, %3335 ], [ %4085, %3331 ]
  %3342 = getelementptr inbounds i32, i32* %3333, i64 1
  %3343 = load i32, i32* %3333, align 4, !tbaa !31
  br label %476

; <label>:3344:                                   ; preds = %4080
  %3345 = lshr i32 %4082, 16
  %3346 = and i32 %3345, 255
  %3347 = add nsw i32 %3346, -127
  %3348 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3349 = load i8, i8* %3348, align 8, !tbaa !6
  switch i8 %3349, label %3362 [
    i8 35, label %3350
    i8 19, label %3356
  ]

; <label>:3350:                                   ; preds = %3344
  %3351 = bitcast %union.StackValue* %4081 to i64*
  %3352 = load i64, i64* %3351, align 8, !tbaa !6
  %3353 = sext i32 %3347 to i64
  %3354 = icmp sge i64 %3352, %3353
  %3355 = zext i1 %3354 to i32
  br label %3368

; <label>:3356:                                   ; preds = %3344
  %3357 = bitcast %union.StackValue* %4081 to double*
  %3358 = load double, double* %3357, align 8, !tbaa !6
  %3359 = sitofp i32 %3347 to double
  %3360 = fcmp oge double %3358, %3359
  %3361 = zext i1 %3360 to i32
  br label %3368

; <label>:3362:                                   ; preds = %3344
  %3363 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %3364 = lshr i32 %4082, 24
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %3365 = load i64, i64* %334, align 8, !tbaa !42
  store i64 %3365, i64* %336, align 8, !tbaa !25
  %3366 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3363, i32 %3347, i32 1, i32 %3364, i32 21) #10
  %3367 = load i32, i32* %338, align 8, !tbaa !6
  br label %3368

; <label>:3368:                                   ; preds = %3356, %3362, %3350
  %3369 = phi i32 [ %3355, %3350 ], [ %3361, %3356 ], [ %3366, %3362 ]
  %3370 = phi i32 [ %4083, %3350 ], [ %4083, %3356 ], [ %3367, %3362 ]
  %3371 = lshr i32 %4082, 15
  %3372 = and i32 %3371, 1
  %3373 = icmp eq i32 %3369, %3372
  br i1 %3373, label %3376, label %3374

; <label>:3374:                                   ; preds = %3368
  %3375 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3383

; <label>:3376:                                   ; preds = %3368
  %3377 = load i32, i32* %4084, align 4, !tbaa !31
  %3378 = lshr i32 %3377, 7
  %3379 = add nsw i32 %3378, -16777214
  %3380 = sext i32 %3379 to i64
  %3381 = getelementptr inbounds i32, i32* %4084, i64 %3380
  %3382 = load i32, i32* %407, align 8, !tbaa !6
  br label %3383

; <label>:3383:                                   ; preds = %3376, %3374
  %3384 = phi i32 [ %3370, %3374 ], [ %3382, %3376 ]
  %3385 = phi i32* [ %3375, %3374 ], [ %3381, %3376 ]
  %3386 = icmp eq i32 %3384, 0
  br i1 %3386, label %3391, label %3387

; <label>:3387:                                   ; preds = %3383
  %3388 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3385) #10
  %3389 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3390 = getelementptr inbounds %union.StackValue, %union.StackValue* %3389, i64 1
  br label %3391

; <label>:3391:                                   ; preds = %3383, %3387
  %3392 = phi i32 [ %3388, %3387 ], [ 0, %3383 ]
  %3393 = phi %union.StackValue* [ %3390, %3387 ], [ %4085, %3383 ]
  %3394 = getelementptr inbounds i32, i32* %3385, i64 1
  %3395 = load i32, i32* %3385, align 4, !tbaa !31
  br label %476

; <label>:3396:                                   ; preds = %4080
  %3397 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3398 = load i8, i8* %3397, align 8, !tbaa !6
  %3399 = and i8 %3398, 15
  %3400 = icmp eq i8 %3399, 0
  br i1 %3400, label %3401, label %3404

; <label>:3401:                                   ; preds = %3396
  %3402 = trunc i32 %4082 to i16
  %3403 = icmp slt i16 %3402, 0
  br i1 %3403, label %3416, label %3418

; <label>:3404:                                   ; preds = %3396
  %3405 = icmp eq i8 %3398, 1
  br i1 %3405, label %3409, label %3406

; <label>:3406:                                   ; preds = %3404
  %3407 = trunc i32 %4082 to i16
  %3408 = icmp sgt i16 %3407, -1
  br i1 %3408, label %3416, label %3418

; <label>:3409:                                   ; preds = %3404
  %3410 = bitcast %union.StackValue* %4081 to i32*
  %3411 = load i32, i32* %3410, align 8, !tbaa !6
  %3412 = icmp ne i32 %3411, 0
  %3413 = trunc i32 %4082 to i16
  %3414 = icmp slt i16 %3413, 0
  %3415 = xor i1 %3414, %3412
  br i1 %3415, label %3416, label %3418

; <label>:3416:                                   ; preds = %3406, %3401, %3409
  %3417 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3425

; <label>:3418:                                   ; preds = %3406, %3401, %3409
  %3419 = load i32, i32* %4084, align 4, !tbaa !31
  %3420 = lshr i32 %3419, 7
  %3421 = add nsw i32 %3420, -16777214
  %3422 = sext i32 %3421 to i64
  %3423 = getelementptr inbounds i32, i32* %4084, i64 %3422
  %3424 = load i32, i32* %340, align 8, !tbaa !6
  br label %3425

; <label>:3425:                                   ; preds = %3418, %3416
  %3426 = phi i32 [ %4083, %3416 ], [ %3424, %3418 ]
  %3427 = phi i32* [ %3417, %3416 ], [ %3423, %3418 ]
  %3428 = icmp eq i32 %3426, 0
  br i1 %3428, label %3433, label %3429

; <label>:3429:                                   ; preds = %3425
  %3430 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3427) #10
  %3431 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3432 = getelementptr inbounds %union.StackValue, %union.StackValue* %3431, i64 1
  br label %3433

; <label>:3433:                                   ; preds = %3425, %3429
  %3434 = phi i32 [ %3430, %3429 ], [ 0, %3425 ]
  %3435 = phi %union.StackValue* [ %3432, %3429 ], [ %4085, %3425 ]
  %3436 = getelementptr inbounds i32, i32* %3427, i64 1
  %3437 = load i32, i32* %3427, align 4, !tbaa !31
  br label %476

; <label>:3438:                                   ; preds = %4080
  %3439 = lshr i32 %4082, 16
  %3440 = and i32 %3439, 255
  %3441 = zext i32 %3440 to i64
  %3442 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %3441, i32 0
  %3443 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 %3441, i32 0, i32 1
  %3444 = load i8, i8* %3443, align 8, !tbaa !2
  %3445 = and i8 %3444, 15
  %3446 = icmp eq i8 %3445, 0
  br i1 %3446, label %3447, label %3450

; <label>:3447:                                   ; preds = %3438
  %3448 = trunc i32 %4082 to i16
  %3449 = icmp sgt i16 %3448, -1
  br i1 %3449, label %3464, label %3462

; <label>:3450:                                   ; preds = %3438
  %3451 = icmp eq i8 %3444, 1
  br i1 %3451, label %3455, label %3452

; <label>:3452:                                   ; preds = %3450
  %3453 = trunc i32 %4082 to i16
  %3454 = icmp slt i16 %3453, 0
  br i1 %3454, label %3464, label %3462

; <label>:3455:                                   ; preds = %3450
  %3456 = bitcast %struct.TValue* %3442 to i32*
  %3457 = load i32, i32* %3456, align 8, !tbaa !6
  %3458 = icmp eq i32 %3457, 0
  %3459 = trunc i32 %4082 to i16
  %3460 = icmp slt i16 %3459, 0
  %3461 = xor i1 %3460, %3458
  br i1 %3461, label %3464, label %3462

; <label>:3462:                                   ; preds = %3447, %3452, %3455
  %3463 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3476

; <label>:3464:                                   ; preds = %3447, %3452, %3455
  %3465 = bitcast %struct.TValue* %3442 to i64*
  %3466 = bitcast %union.StackValue* %4081 to i64*
  %3467 = load i64, i64* %3465, align 8
  store i64 %3467, i64* %3466, align 8
  %3468 = load i8, i8* %3443, align 8, !tbaa !2
  %3469 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  store i8 %3468, i8* %3469, align 8, !tbaa !2
  %3470 = load i32, i32* %4084, align 4, !tbaa !31
  %3471 = lshr i32 %3470, 7
  %3472 = add nsw i32 %3471, -16777214
  %3473 = sext i32 %3472 to i64
  %3474 = getelementptr inbounds i32, i32* %4084, i64 %3473
  %3475 = load i32, i32* %342, align 8, !tbaa !6
  br label %3476

; <label>:3476:                                   ; preds = %3464, %3462
  %3477 = phi i32 [ %4083, %3462 ], [ %3475, %3464 ]
  %3478 = phi i32* [ %3463, %3462 ], [ %3474, %3464 ]
  %3479 = icmp eq i32 %3477, 0
  br i1 %3479, label %3484, label %3480

; <label>:3480:                                   ; preds = %3476
  %3481 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3478) #10
  %3482 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3483 = getelementptr inbounds %union.StackValue, %union.StackValue* %3482, i64 1
  br label %3484

; <label>:3484:                                   ; preds = %3476, %3480
  %3485 = phi i32 [ %3481, %3480 ], [ 0, %3476 ]
  %3486 = phi %union.StackValue* [ %3483, %3480 ], [ %4085, %3476 ]
  %3487 = getelementptr inbounds i32, i32* %3478, i64 1
  %3488 = load i32, i32* %3478, align 4, !tbaa !31
  br label %476

; <label>:3489:                                   ; preds = %4080
  %3490 = lshr i32 %4082, 16
  %3491 = and i32 %3490, 255
  %3492 = lshr i32 %4082, 24
  %3493 = add nsw i32 %3492, -1
  %3494 = icmp eq i32 %3491, 0
  br i1 %3494, label %3498, label %3495

; <label>:3495:                                   ; preds = %3489
  %3496 = zext i32 %3491 to i64
  %3497 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 %3496
  store %union.StackValue* %3497, %union.StackValue** %345, align 8, !tbaa !25
  br label %3498

; <label>:3498:                                   ; preds = %3489, %3495
  store i32* %4084, i32** %30, align 8, !tbaa !6
  call void @luaD_call(%struct.lua_State* %0, %union.StackValue* %4081, i32 %3493) #10
  %3499 = load i32, i32* %344, align 8, !tbaa !6
  %3500 = icmp eq i32 %3499, 0
  br i1 %3500, label %3505, label %3501

; <label>:3501:                                   ; preds = %3498
  %3502 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %3503 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3504 = getelementptr inbounds %union.StackValue, %union.StackValue* %3503, i64 1
  br label %3505

; <label>:3505:                                   ; preds = %3498, %3501
  %3506 = phi i32 [ %3502, %3501 ], [ 0, %3498 ]
  %3507 = phi %union.StackValue* [ %3504, %3501 ], [ %4085, %3498 ]
  %3508 = getelementptr inbounds i32, i32* %4084, i64 1
  %3509 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:3510:                                   ; preds = %4080
  %3511 = lshr i32 %4082, 16
  %3512 = and i32 %3511, 255
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3517, label %3514

; <label>:3514:                                   ; preds = %3510
  %3515 = zext i32 %3512 to i64
  %3516 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 %3515
  store %union.StackValue* %3516, %union.StackValue** %420, align 8, !tbaa !25
  br label %3523

; <label>:3517:                                   ; preds = %3510
  %3518 = load i64, i64* %419, align 8, !tbaa !25
  %3519 = ptrtoint %union.StackValue* %4081 to i64
  %3520 = sub i64 %3518, %3519
  %3521 = lshr exact i64 %3520, 4
  %3522 = trunc i64 %3521 to i32
  br label %3523

; <label>:3523:                                   ; preds = %3517, %3514
  %3524 = phi i32 [ %3512, %3514 ], [ %3522, %3517 ]
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %3525 = trunc i32 %4082 to i16
  %3526 = icmp slt i16 %3525, 0
  br i1 %3526, label %3527, label %3536

; <label>:3527:                                   ; preds = %3523
  %3528 = lshr i32 %4082, 24
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3533, label %3530

; <label>:3530:                                   ; preds = %3527
  %3531 = load i32, i32* %421, align 4, !tbaa !6
  %3532 = add nsw i32 %3531, %3528
  br label %3533

; <label>:3533:                                   ; preds = %3527, %3530
  %3534 = phi i32 [ %3532, %3530 ], [ 0, %3527 ]
  %3535 = call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %4085, i32 -1) #10
  br label %3536

; <label>:3536:                                   ; preds = %3533, %3523
  %3537 = phi i32 [ %3534, %3533 ], [ 0, %3523 ]
  %3538 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3539 = load i8, i8* %3538, align 8, !tbaa !6
  %3540 = and i8 %3539, 15
  %3541 = icmp eq i8 %3540, 6
  br i1 %3541, label %3545, label %3542

; <label>:3542:                                   ; preds = %3536
  call void @luaD_tryfuncTM(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %4081) #10
  %3543 = add nsw i32 %3524, 1
  %3544 = load i8, i8* %3538, align 8, !tbaa !6
  br label %3545

; <label>:3545:                                   ; preds = %3542, %3536
  %3546 = phi i8 [ %3544, %3542 ], [ %3539, %3536 ]
  %3547 = phi i32 [ %3543, %3542 ], [ %3524, %3536 ]
  %3548 = icmp eq i8 %3546, 86
  br i1 %3548, label %3574, label %3549

; <label>:3549:                                   ; preds = %3545
  call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %4081, i32 -1) #10
  %3550 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %3551 = bitcast i64* %3550 to i32*
  %3552 = load i32, i32* %3551, align 8, !tbaa !6
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3561, label %3554

; <label>:3554:                                   ; preds = %3549
  %3555 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3556 = getelementptr inbounds %union.StackValue, %union.StackValue* %3555, i64 1
  %3557 = lshr i32 %4082, 7
  %3558 = and i32 %3557, 255
  %3559 = zext i32 %3558 to i64
  %3560 = getelementptr inbounds %union.StackValue, %union.StackValue* %3556, i64 %3559
  br label %3561

; <label>:3561:                                   ; preds = %3549, %3554
  %3562 = phi %union.StackValue* [ %3560, %3554 ], [ %4081, %3549 ]
  %3563 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3564 = sext i32 %3537 to i64
  %3565 = sub nsw i64 0, %3564
  %3566 = getelementptr inbounds %union.StackValue, %union.StackValue* %3563, i64 %3565
  store %union.StackValue* %3566, %union.StackValue** %26, align 8, !tbaa !30
  %3567 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3568 = bitcast %union.StackValue** %3567 to i64*
  %3569 = load i64, i64* %3568, align 8, !tbaa !25
  %3570 = ptrtoint %union.StackValue* %3562 to i64
  %3571 = sub i64 %3569, %3570
  %3572 = lshr exact i64 %3571, 4
  %3573 = trunc i64 %3572 to i32
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %3573) #10
  br label %4079

; <label>:3574:                                   ; preds = %3545
  %3575 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3576 = sext i32 %3537 to i64
  %3577 = sub nsw i64 0, %3576
  %3578 = getelementptr inbounds %union.StackValue, %union.StackValue* %3575, i64 %3577
  store %union.StackValue* %3578, %union.StackValue** %26, align 8, !tbaa !30
  call void @luaD_pretailcall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, %union.StackValue* nonnull %4081, i32 %3547) #10
  br label %422

; <label>:3579:                                   ; preds = %4080
  %3580 = bitcast %union.anon* %28 to %struct.anon*
  %3581 = bitcast %union.anon* %28 to i32**
  %3582 = lshr i32 %4082, 16
  %3583 = and i32 %3582, 255
  %3584 = add nsw i32 %3583, -1
  %3585 = icmp eq i32 %3583, 0
  br i1 %3585, label %3586, label %3594

; <label>:3586:                                   ; preds = %3579
  %3587 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3588 = bitcast %union.StackValue** %3587 to i64*
  %3589 = load i64, i64* %3588, align 8, !tbaa !25
  %3590 = ptrtoint %union.StackValue* %4081 to i64
  %3591 = sub i64 %3589, %3590
  %3592 = lshr exact i64 %3591, 4
  %3593 = trunc i64 %3592 to i32
  br label %3598

; <label>:3594:                                   ; preds = %3579
  %3595 = sext i32 %3584 to i64
  %3596 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 %3595
  %3597 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %3596, %union.StackValue** %3597, align 8, !tbaa !25
  br label %3598

; <label>:3598:                                   ; preds = %3594, %3586
  %3599 = phi i32 [ %3593, %3586 ], [ %3584, %3594 ]
  store i32* %4084, i32** %3581, align 8, !tbaa !6
  %3600 = trunc i32 %4082 to i16
  %3601 = icmp slt i16 %3600, 0
  br i1 %3601, label %3602, label %3615

; <label>:3602:                                   ; preds = %3598
  %3603 = lshr i32 %4082, 24
  %3604 = icmp eq i32 %3603, 0
  br i1 %3604, label %3613, label %3605

; <label>:3605:                                   ; preds = %3602
  %3606 = getelementptr inbounds %struct.anon, %struct.anon* %3580, i64 0, i32 2
  %3607 = load i32, i32* %3606, align 4, !tbaa !6
  %3608 = add nsw i32 %3607, %3603
  %3609 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3610 = sext i32 %3608 to i64
  %3611 = sub nsw i64 0, %3610
  %3612 = getelementptr inbounds %union.StackValue, %union.StackValue* %3609, i64 %3611
  store %union.StackValue* %3612, %union.StackValue** %26, align 8, !tbaa !30
  br label %3613

; <label>:3613:                                   ; preds = %3602, %3605
  %3614 = call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %4085, i32 0) #10
  br label %3615

; <label>:3615:                                   ; preds = %3613, %3598
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %3599) #10
  br label %4079

; <label>:3616:                                   ; preds = %4080
  %3617 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %3618 = load i32, i32* %3617, align 8, !tbaa !32
  %3619 = icmp eq i32 %3618, 0
  br i1 %3619, label %3623, label %3620

; <label>:3620:                                   ; preds = %3616
  %3621 = bitcast %union.anon* %28 to i32**
  %3622 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %4081, %union.StackValue** %3622, align 8, !tbaa !25
  store i32* %4084, i32** %3621, align 8, !tbaa !6
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %1, i32 0) #10
  br label %4079

; <label>:3623:                                   ; preds = %3616
  %3624 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %3625 = load i16, i16* %3624, align 4, !tbaa !46
  %3626 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %3627 = bitcast %struct.CallInfo** %3626 to i64*
  %3628 = load i64, i64* %3627, align 8, !tbaa !47
  %3629 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3630 = bitcast %struct.CallInfo** %3629 to i64*
  store i64 %3628, i64* %3630, align 8, !tbaa !29
  %3631 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 -1
  %3632 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %3631, %union.StackValue** %3632, align 8, !tbaa !25
  %3633 = icmp sgt i16 %3625, 0
  br i1 %3633, label %3634, label %4079

; <label>:3634:                                   ; preds = %3623
  %3635 = sext i16 %3625 to i32
  br label %3636

; <label>:3636:                                   ; preds = %3634, %3636
  %3637 = phi i32 [ %3635, %3634 ], [ %3638, %3636 ]
  %3638 = add nsw i32 %3637, -1
  %3639 = load %union.StackValue*, %union.StackValue** %3632, align 8, !tbaa !25
  %3640 = getelementptr inbounds %union.StackValue, %union.StackValue* %3639, i64 1
  store %union.StackValue* %3640, %union.StackValue** %3632, align 8, !tbaa !25
  %3641 = getelementptr inbounds %union.StackValue, %union.StackValue* %3639, i64 0, i32 0, i32 1
  store i8 0, i8* %3641, align 8, !tbaa !6
  %3642 = icmp sgt i32 %3637, 1
  br i1 %3642, label %3636, label %4079

; <label>:3643:                                   ; preds = %4080
  %3644 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %3645 = load i32, i32* %3644, align 8, !tbaa !32
  %3646 = icmp eq i32 %3645, 0
  br i1 %3646, label %3651, label %3647

; <label>:3647:                                   ; preds = %3643
  %3648 = bitcast %union.anon* %28 to i32**
  %3649 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1
  %3650 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %3649, %union.StackValue** %3650, align 8, !tbaa !25
  store i32* %4084, i32** %3648, align 8, !tbaa !6
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %1, i32 1) #10
  br label %4079

; <label>:3651:                                   ; preds = %3643
  %3652 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %3653 = load i16, i16* %3652, align 4, !tbaa !46
  %3654 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %3655 = bitcast %struct.CallInfo** %3654 to i64*
  %3656 = load i64, i64* %3655, align 8, !tbaa !47
  %3657 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3658 = bitcast %struct.CallInfo** %3657 to i64*
  store i64 %3656, i64* %3658, align 8, !tbaa !29
  %3659 = icmp eq i16 %3653, 0
  %3660 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 -1
  br i1 %3659, label %3661, label %3663

; <label>:3661:                                   ; preds = %3651
  %3662 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %3660, %union.StackValue** %3662, align 8, !tbaa !25
  br label %4079

; <label>:3663:                                   ; preds = %3651
  %3664 = bitcast %union.StackValue* %4081 to i64*
  %3665 = bitcast %union.StackValue* %3660 to i64*
  %3666 = load i64, i64* %3664, align 8
  store i64 %3666, i64* %3665, align 8
  %3667 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3668 = load i8, i8* %3667, align 8, !tbaa !2
  %3669 = getelementptr inbounds %union.StackValue, %union.StackValue* %4085, i64 -1, i32 0, i32 1
  store i8 %3668, i8* %3669, align 8, !tbaa !2
  %3670 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %union.StackValue* %4085, %union.StackValue** %3670, align 8, !tbaa !25
  %3671 = icmp sgt i16 %3653, 1
  br i1 %3671, label %3672, label %4079

; <label>:3672:                                   ; preds = %3663
  %3673 = sext i16 %3653 to i32
  br label %3674

; <label>:3674:                                   ; preds = %3672, %3674
  %3675 = phi i32 [ %3673, %3672 ], [ %3676, %3674 ]
  %3676 = add nsw i32 %3675, -1
  %3677 = load %union.StackValue*, %union.StackValue** %3670, align 8, !tbaa !25
  %3678 = getelementptr inbounds %union.StackValue, %union.StackValue* %3677, i64 1
  store %union.StackValue* %3678, %union.StackValue** %3670, align 8, !tbaa !25
  %3679 = getelementptr inbounds %union.StackValue, %union.StackValue* %3677, i64 0, i32 0, i32 1
  store i8 0, i8* %3679, align 8, !tbaa !6
  %3680 = icmp sgt i32 %3675, 2
  br i1 %3680, label %3674, label %4079

; <label>:3681:                                   ; preds = %4080
  %3682 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 2, i32 0
  %3683 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 2, i32 0, i32 1
  %3684 = load i8, i8* %3683, align 8, !tbaa !6
  %3685 = icmp eq i8 %3684, 35
  br i1 %3685, label %3686, label %3705

; <label>:3686:                                   ; preds = %3681
  %3687 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1, i32 0, i32 0
  %3688 = bitcast %union.Value* %3687 to i64*
  %3689 = load i64, i64* %3688, align 8, !tbaa !6
  %3690 = icmp eq i64 %3689, 0
  br i1 %3690, label %3727, label %3691

; <label>:3691:                                   ; preds = %3686
  %3692 = bitcast %struct.TValue* %3682 to i64*
  %3693 = load i64, i64* %3692, align 8, !tbaa !6
  %3694 = bitcast %union.StackValue* %4081 to i64*
  %3695 = load i64, i64* %3694, align 8, !tbaa !6
  %3696 = add i64 %3689, -1
  store i64 %3696, i64* %3688, align 8, !tbaa !6
  %3697 = add i64 %3695, %3693
  store i64 %3697, i64* %3694, align 8, !tbaa !6
  %3698 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0
  %3699 = bitcast %struct.TValue* %3698 to i64*
  store i64 %3697, i64* %3699, align 8, !tbaa !6
  %3700 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0, i32 1
  store i8 35, i8* %3700, align 8, !tbaa !2
  %3701 = lshr i32 %4082, 15
  %3702 = zext i32 %3701 to i64
  %3703 = sub nsw i64 0, %3702
  %3704 = getelementptr inbounds i32, i32* %4084, i64 %3703
  br label %3727

; <label>:3705:                                   ; preds = %3681
  %3706 = bitcast %struct.TValue* %3682 to double*
  %3707 = load double, double* %3706, align 8, !tbaa !6
  %3708 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1, i32 0, i32 0
  %3709 = bitcast %union.Value* %3708 to double*
  %3710 = load double, double* %3709, align 8, !tbaa !6
  %3711 = bitcast %union.StackValue* %4081 to double*
  %3712 = load double, double* %3711, align 8, !tbaa !6
  %3713 = fadd double %3707, %3712
  %3714 = fcmp ogt double %3707, 0.000000e+00
  br i1 %3714, label %3715, label %3717

; <label>:3715:                                   ; preds = %3705
  %3716 = fcmp ugt double %3713, %3710
  br i1 %3716, label %3727, label %3719

; <label>:3717:                                   ; preds = %3705
  %3718 = fcmp ugt double %3710, %3713
  br i1 %3718, label %3727, label %3719

; <label>:3719:                                   ; preds = %3715, %3717
  store double %3713, double* %3711, align 8, !tbaa !6
  %3720 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0
  %3721 = bitcast %struct.TValue* %3720 to double*
  store double %3713, double* %3721, align 8, !tbaa !6
  %3722 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0, i32 1
  store i8 19, i8* %3722, align 8, !tbaa !2
  %3723 = lshr i32 %4082, 15
  %3724 = zext i32 %3723 to i64
  %3725 = sub nsw i64 0, %3724
  %3726 = getelementptr inbounds i32, i32* %4084, i64 %3725
  br label %3727

; <label>:3727:                                   ; preds = %3686, %3715, %3717, %3719, %3691
  %3728 = phi i32* [ %3704, %3691 ], [ %4084, %3686 ], [ %3726, %3719 ], [ %4084, %3715 ], [ %4084, %3717 ]
  %3729 = load i32, i32* %347, align 8, !tbaa !6
  %3730 = icmp eq i32 %3729, 0
  br i1 %3730, label %3735, label %3731

; <label>:3731:                                   ; preds = %3727
  %3732 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3728) #10
  %3733 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3734 = getelementptr inbounds %union.StackValue, %union.StackValue* %3733, i64 1
  br label %3735

; <label>:3735:                                   ; preds = %3727, %3731
  %3736 = phi i32 [ %3732, %3731 ], [ 0, %3727 ]
  %3737 = phi %union.StackValue* [ %3734, %3731 ], [ %4085, %3727 ]
  %3738 = getelementptr inbounds i32, i32* %3728, i64 1
  %3739 = load i32, i32* %3728, align 4, !tbaa !31
  br label %476

; <label>:3740:                                   ; preds = %4080
  %3741 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0
  %3742 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1, i32 0
  %3743 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 2, i32 0
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %3744 = load i64, i64* %60, align 8, !tbaa !42
  store i64 %3744, i64* %62, align 8, !tbaa !25
  %3745 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 1
  %3746 = load i8, i8* %3745, align 8, !tbaa !2
  %3747 = icmp eq i8 %3746, 35
  br i1 %3747, label %3748, label %3786

; <label>:3748:                                   ; preds = %3740
  %3749 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 2, i32 0, i32 1
  %3750 = load i8, i8* %3749, align 8, !tbaa !2
  %3751 = icmp eq i8 %3750, 35
  br i1 %3751, label %3752, label %3786

; <label>:3752:                                   ; preds = %3748
  %3753 = bitcast %union.StackValue* %4081 to i64*
  %3754 = load i64, i64* %3753, align 8, !tbaa !6
  %3755 = bitcast %struct.TValue* %3743 to i64*
  %3756 = load i64, i64* %3755, align 8, !tbaa !6
  %3757 = icmp eq i64 %3756, 0
  br i1 %3757, label %3758, label %3759

; <label>:3758:                                   ; preds = %3752
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #11
  unreachable

; <label>:3759:                                   ; preds = %3752
  %3760 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0
  %3761 = bitcast %struct.TValue* %3760 to i64*
  store i64 %3754, i64* %3761, align 8, !tbaa !6
  %3762 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0, i32 1
  store i8 35, i8* %3762, align 8, !tbaa !2
  %3763 = call fastcc i32 @forlimit(%struct.lua_State* nonnull %0, i64 %3754, %struct.TValue* nonnull %3742, i64* nonnull %21, i64 %3756)
  %3764 = icmp eq i32 %3763, 0
  br i1 %3764, label %3770, label %3765

; <label>:3765:                                   ; preds = %3759
  %3766 = lshr i32 %4082, 15
  %3767 = add nuw nsw i32 %3766, 1
  %3768 = zext i32 %3767 to i64
  %3769 = getelementptr inbounds i32, i32* %4084, i64 %3768
  br label %3848

; <label>:3770:                                   ; preds = %3759
  %3771 = icmp sgt i64 %3756, 0
  %3772 = load i64, i64* %21, align 8, !tbaa !9
  br i1 %3771, label %3773, label %3778

; <label>:3773:                                   ; preds = %3770
  %3774 = sub i64 %3772, %3754
  %3775 = icmp eq i64 %3756, 1
  br i1 %3775, label %3782, label %3776

; <label>:3776:                                   ; preds = %3773
  %3777 = udiv i64 %3774, %3756
  br label %3782

; <label>:3778:                                   ; preds = %3770
  %3779 = sub i64 %3754, %3772
  %3780 = sub i64 0, %3756
  %3781 = udiv i64 %3779, %3780
  br label %3782

; <label>:3782:                                   ; preds = %3773, %3776, %3778
  %3783 = phi i64 [ %3777, %3776 ], [ %3774, %3773 ], [ %3781, %3778 ]
  %3784 = bitcast %struct.TValue* %3742 to i64*
  store i64 %3783, i64* %3784, align 8, !tbaa !6
  %3785 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1, i32 0, i32 1
  store i8 35, i8* %3785, align 8, !tbaa !2
  br label %3848

; <label>:3786:                                   ; preds = %3748, %3740
  %3787 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1, i32 0, i32 1
  %3788 = load i8, i8* %3787, align 8, !tbaa !2
  %3789 = icmp eq i8 %3788, 19
  br i1 %3789, label %3790, label %3793

; <label>:3790:                                   ; preds = %3786
  %3791 = bitcast %struct.TValue* %3742 to i64*
  %3792 = load i64, i64* %3791, align 8, !tbaa !6
  store i64 %3792, i64* %408, align 8, !tbaa !7
  br label %3797

; <label>:3793:                                   ; preds = %3786
  %3794 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3742, double* nonnull %23)
  %3795 = icmp eq i32 %3794, 0
  br i1 %3795, label %3796, label %3797, !prof !11

; <label>:3796:                                   ; preds = %3793
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3742, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #11
  unreachable

; <label>:3797:                                   ; preds = %3790, %3793
  %3798 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 2, i32 0, i32 1
  %3799 = load i8, i8* %3798, align 8, !tbaa !2
  %3800 = icmp eq i8 %3799, 19
  br i1 %3800, label %3801, label %3804

; <label>:3801:                                   ; preds = %3797
  %3802 = bitcast %struct.TValue* %3743 to i64*
  %3803 = load i64, i64* %3802, align 8, !tbaa !6
  store i64 %3803, i64* %409, align 8, !tbaa !7
  br label %3808

; <label>:3804:                                   ; preds = %3797
  %3805 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3743, double* nonnull %24)
  %3806 = icmp eq i32 %3805, 0
  br i1 %3806, label %3807, label %3808, !prof !11

; <label>:3807:                                   ; preds = %3804
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3743, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #11
  unreachable

; <label>:3808:                                   ; preds = %3801, %3804
  %3809 = load i8, i8* %3745, align 8, !tbaa !2
  %3810 = icmp eq i8 %3809, 19
  br i1 %3810, label %3811, label %3814

; <label>:3811:                                   ; preds = %3808
  %3812 = bitcast %union.StackValue* %4081 to i64*
  %3813 = load i64, i64* %3812, align 8, !tbaa !6
  store i64 %3813, i64* %410, align 8, !tbaa !7
  br label %3818

; <label>:3814:                                   ; preds = %3808
  %3815 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3741, double* nonnull %22)
  %3816 = icmp eq i32 %3815, 0
  br i1 %3816, label %3817, label %3818, !prof !11

; <label>:3817:                                   ; preds = %3814
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3741, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #11
  unreachable

; <label>:3818:                                   ; preds = %3811, %3814
  %3819 = load double, double* %24, align 8, !tbaa !7
  %3820 = fcmp oeq double %3819, 0.000000e+00
  br i1 %3820, label %3821, label %3822

; <label>:3821:                                   ; preds = %3818
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #11
  unreachable

; <label>:3822:                                   ; preds = %3818
  %3823 = fcmp ogt double %3819, 0.000000e+00
  br i1 %3823, label %3824, label %3828

; <label>:3824:                                   ; preds = %3822
  %3825 = load double, double* %23, align 8, !tbaa !7
  %3826 = load double, double* %22, align 8, !tbaa !7
  %3827 = fcmp olt double %3825, %3826
  br i1 %3827, label %3832, label %3837

; <label>:3828:                                   ; preds = %3822
  %3829 = load double, double* %22, align 8, !tbaa !7
  %3830 = load double, double* %23, align 8, !tbaa !7
  %3831 = fcmp olt double %3829, %3830
  br i1 %3831, label %3832, label %3837

; <label>:3832:                                   ; preds = %3828, %3824
  %3833 = lshr i32 %4082, 15
  %3834 = add nuw nsw i32 %3833, 1
  %3835 = zext i32 %3834 to i64
  %3836 = getelementptr inbounds i32, i32* %4084, i64 %3835
  br label %3848

; <label>:3837:                                   ; preds = %3828, %3824
  %3838 = load i64, i64* %411, align 8, !tbaa !7
  %3839 = bitcast %struct.TValue* %3742 to i64*
  store i64 %3838, i64* %3839, align 8, !tbaa !6
  store i8 19, i8* %3787, align 8, !tbaa !2
  %3840 = load i64, i64* %412, align 8, !tbaa !7
  %3841 = bitcast %struct.TValue* %3743 to i64*
  store i64 %3840, i64* %3841, align 8, !tbaa !6
  store i8 19, i8* %3798, align 8, !tbaa !2
  %3842 = load i64, i64* %413, align 8, !tbaa !7
  %3843 = bitcast %union.StackValue* %4081 to i64*
  store i64 %3842, i64* %3843, align 8, !tbaa !6
  store i8 19, i8* %3745, align 8, !tbaa !2
  %3844 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0
  %3845 = load i64, i64* %413, align 8, !tbaa !7
  %3846 = bitcast %struct.TValue* %3844 to i64*
  store i64 %3845, i64* %3846, align 8, !tbaa !6
  %3847 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0, i32 1
  store i8 19, i8* %3847, align 8, !tbaa !2
  br label %3848

; <label>:3848:                                   ; preds = %3832, %3837, %3765, %3782
  %3849 = phi i32* [ %3769, %3765 ], [ %4084, %3782 ], [ %3836, %3832 ], [ %4084, %3837 ]
  %3850 = icmp eq i32 %4083, 0
  br i1 %3850, label %3855, label %3851

; <label>:3851:                                   ; preds = %3848
  %3852 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3849) #10
  %3853 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3854 = getelementptr inbounds %union.StackValue, %union.StackValue* %3853, i64 1
  br label %3855

; <label>:3855:                                   ; preds = %3848, %3851
  %3856 = phi i32 [ %3852, %3851 ], [ 0, %3848 ]
  %3857 = phi %union.StackValue* [ %3854, %3851 ], [ %4085, %3848 ]
  %3858 = getelementptr inbounds i32, i32* %3849, i64 1
  %3859 = load i32, i32* %3849, align 4, !tbaa !31
  br label %476

; <label>:3860:                                   ; preds = %4080
  %3861 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3, i32 0, i32 1
  %3862 = load i8, i8* %3861, align 8, !tbaa !6
  %3863 = and i8 %3862, 15
  %3864 = icmp eq i8 %3863, 0
  br i1 %3864, label %3867, label %3865

; <label>:3865:                                   ; preds = %3860
  %3866 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 3
  store i32* %4084, i32** %30, align 8, !tbaa !6
  call void @luaF_newtbcupval(%struct.lua_State* %0, %union.StackValue* nonnull %3866) #10
  br label %3867

; <label>:3867:                                   ; preds = %3865, %3860
  %3868 = lshr i32 %4082, 15
  %3869 = zext i32 %3868 to i64
  %3870 = getelementptr inbounds i32, i32* %4084, i64 %3869
  %3871 = getelementptr inbounds i32, i32* %3870, i64 1
  %3872 = load i32, i32* %3870, align 4, !tbaa !31
  br label %3873

; <label>:3873:                                   ; preds = %4080, %3867
  %3874 = phi i32 [ %4082, %4080 ], [ %3872, %3867 ]
  %3875 = phi i32* [ %4084, %4080 ], [ %3871, %3867 ]
  %3876 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 4
  %3877 = bitcast %union.StackValue* %3876 to i8*
  %3878 = bitcast %union.StackValue* %4081 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3877, i8* %3878, i64 48, i32 8, i1 false)
  store i32* %3875, i32** %30, align 8, !tbaa !6
  %3879 = load i64, i64* %65, align 8, !tbaa !42
  store i64 %3879, i64* %66, align 8, !tbaa !25
  %3880 = lshr i32 %3874, 24
  call void @luaD_call(%struct.lua_State* %0, %union.StackValue* nonnull %3876, i32 %3880) #10
  %3881 = load i32, i32* %68, align 8, !tbaa !6
  %3882 = icmp eq i32 %3881, 0
  br i1 %3882, label %3890, label %3883

; <label>:3883:                                   ; preds = %3873
  %3884 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3885 = getelementptr inbounds %union.StackValue, %union.StackValue* %3884, i64 1
  %3886 = lshr i32 %3874, 7
  %3887 = and i32 %3886, 255
  %3888 = zext i32 %3887 to i64
  %3889 = getelementptr inbounds %union.StackValue, %union.StackValue* %3885, i64 %3888
  br label %3890

; <label>:3890:                                   ; preds = %3873, %3883
  %3891 = phi %union.StackValue* [ %3889, %3883 ], [ %4081, %3873 ]
  %3892 = phi %union.StackValue* [ %3885, %3883 ], [ %4085, %3873 ]
  %3893 = getelementptr inbounds i32, i32* %3875, i64 1
  %3894 = load i32, i32* %3875, align 4, !tbaa !31
  %3895 = getelementptr inbounds %union.StackValue, %union.StackValue* %3891, i64 2
  br label %3896

; <label>:3896:                                   ; preds = %4080, %3890
  %3897 = phi %union.StackValue* [ %4081, %4080 ], [ %3895, %3890 ]
  %3898 = phi i32 [ %4082, %4080 ], [ %3894, %3890 ]
  %3899 = phi i32 [ %4083, %4080 ], [ %3881, %3890 ]
  %3900 = phi i32* [ %4084, %4080 ], [ %3893, %3890 ]
  %3901 = phi %union.StackValue* [ %4085, %4080 ], [ %3892, %3890 ]
  %3902 = getelementptr inbounds %union.StackValue, %union.StackValue* %3897, i64 2, i32 0, i32 1
  %3903 = load i8, i8* %3902, align 8, !tbaa !6
  %3904 = and i8 %3903, 15
  %3905 = icmp eq i8 %3904, 0
  br i1 %3905, label %3916, label %3906

; <label>:3906:                                   ; preds = %3896
  %3907 = getelementptr inbounds %union.StackValue, %union.StackValue* %3897, i64 2, i32 0, i32 0
  %3908 = bitcast %union.Value* %3907 to i64*
  %3909 = bitcast %union.StackValue* %3897 to i64*
  %3910 = load i64, i64* %3908, align 8
  store i64 %3910, i64* %3909, align 8
  %3911 = getelementptr inbounds %union.StackValue, %union.StackValue* %3897, i64 0, i32 0, i32 1
  store i8 %3903, i8* %3911, align 8, !tbaa !2
  %3912 = lshr i32 %3898, 15
  %3913 = zext i32 %3912 to i64
  %3914 = sub nsw i64 0, %3913
  %3915 = getelementptr inbounds i32, i32* %3900, i64 %3914
  br label %3916

; <label>:3916:                                   ; preds = %3906, %3896
  %3917 = phi i32* [ %3900, %3896 ], [ %3915, %3906 ]
  %3918 = icmp eq i32 %3899, 0
  br i1 %3918, label %3923, label %3919

; <label>:3919:                                   ; preds = %3916
  %3920 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3917) #10
  %3921 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %3922 = getelementptr inbounds %union.StackValue, %union.StackValue* %3921, i64 1
  br label %3923

; <label>:3923:                                   ; preds = %3916, %3919
  %3924 = phi i32 [ %3920, %3919 ], [ 0, %3916 ]
  %3925 = phi %union.StackValue* [ %3922, %3919 ], [ %3901, %3916 ]
  %3926 = getelementptr inbounds i32, i32* %3917, i64 1
  %3927 = load i32, i32* %3917, align 4, !tbaa !31
  br label %476

; <label>:3928:                                   ; preds = %4080
  %3929 = lshr i32 %4082, 16
  %3930 = and i32 %3929, 255
  %3931 = lshr i32 %4082, 24
  %3932 = icmp eq i32 %3930, 0
  br i1 %3932, label %3933, label %3940

; <label>:3933:                                   ; preds = %3928
  %3934 = load i64, i64* %349, align 8, !tbaa !25
  %3935 = ptrtoint %union.StackValue* %4081 to i64
  %3936 = sub i64 %3934, %3935
  %3937 = lshr exact i64 %3936, 4
  %3938 = trunc i64 %3937 to i32
  %3939 = add nsw i32 %3938, -1
  br label %3942

; <label>:3940:                                   ; preds = %3928
  %3941 = load i64, i64* %351, align 8, !tbaa !42
  store i64 %3941, i64* %353, align 8, !tbaa !25
  br label %3942

; <label>:3942:                                   ; preds = %3940, %3933
  %3943 = phi i32 [ %3939, %3933 ], [ %3930, %3940 ]
  %3944 = icmp eq i32 %3931, 0
  br i1 %3944, label %3945, label %3949

; <label>:3945:                                   ; preds = %3942
  %3946 = load i32, i32* %4084, align 4, !tbaa !31
  %3947 = lshr i32 %3946, 7
  %3948 = getelementptr inbounds i32, i32* %4084, i64 1
  br label %3949

; <label>:3949:                                   ; preds = %3945, %3942
  %3950 = phi i32 [ %3947, %3945 ], [ %3931, %3942 ]
  %3951 = phi i32* [ %3948, %3945 ], [ %4084, %3942 ]
  %3952 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 0, i32 0, i32 0, i32 0
  %3953 = load %struct.GCObject*, %struct.GCObject** %3952, align 8, !tbaa !6
  %3954 = bitcast %struct.GCObject* %3953 to %struct.Table*
  %3955 = mul nuw nsw i32 %3950, 50
  %3956 = add i32 %3943, -50
  %3957 = add i32 %3956, %3955
  %3958 = call i32 @luaH_realasize(%struct.Table* %3954) #10
  %3959 = icmp ugt i32 %3957, %3958
  br i1 %3959, label %3960, label %3961

; <label>:3960:                                   ; preds = %3949
  call void @luaH_resizearray(%struct.lua_State* nonnull %0, %struct.Table* %3954, i32 %3957) #10
  br label %3961

; <label>:3961:                                   ; preds = %3960, %3949
  %3962 = icmp sgt i32 %3943, 0
  br i1 %3962, label %3963, label %4000

; <label>:3963:                                   ; preds = %3961
  %3964 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3953, i64 1
  %3965 = bitcast %struct.GCObject* %3964 to %struct.TValue**
  %3966 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3953, i64 0, i32 2
  %3967 = sext i32 %3943 to i64
  br label %3968

; <label>:3968:                                   ; preds = %3963, %3997
  %3969 = phi i64 [ %3967, %3963 ], [ %3998, %3997 ]
  %3970 = phi i32 [ %3957, %3963 ], [ %3973, %3997 ]
  %3971 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 %3969, i32 0
  %3972 = load %struct.TValue*, %struct.TValue** %3965, align 8, !tbaa !48
  %3973 = add i32 %3970, -1
  %3974 = zext i32 %3973 to i64
  %3975 = getelementptr inbounds %struct.TValue, %struct.TValue* %3972, i64 %3974
  %3976 = bitcast %struct.TValue* %3971 to i64*
  %3977 = bitcast %struct.TValue* %3975 to i64*
  %3978 = load i64, i64* %3976, align 8
  store i64 %3978, i64* %3977, align 8
  %3979 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 %3969, i32 0, i32 1
  %3980 = load i8, i8* %3979, align 8, !tbaa !2
  %3981 = getelementptr inbounds %struct.TValue, %struct.TValue* %3972, i64 %3974, i32 1
  store i8 %3980, i8* %3981, align 8, !tbaa !2
  %3982 = load i8, i8* %3979, align 8, !tbaa !2
  %3983 = and i8 %3982, 64
  %3984 = icmp eq i8 %3983, 0
  br i1 %3984, label %3997, label %3985

; <label>:3985:                                   ; preds = %3968
  %3986 = load i8, i8* %3966, align 1, !tbaa !6
  %3987 = and i8 %3986, 32
  %3988 = icmp eq i8 %3987, 0
  br i1 %3988, label %3997, label %3989

; <label>:3989:                                   ; preds = %3985
  %3990 = getelementptr inbounds %struct.TValue, %struct.TValue* %3971, i64 0, i32 0, i32 0
  %3991 = load %struct.GCObject*, %struct.GCObject** %3990, align 8, !tbaa !6
  %3992 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3991, i64 0, i32 2
  %3993 = load i8, i8* %3992, align 1, !tbaa !23
  %3994 = and i8 %3993, 24
  %3995 = icmp eq i8 %3994, 0
  br i1 %3995, label %3997, label %3996

; <label>:3996:                                   ; preds = %3989
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* nonnull %3953) #10
  br label %3997

; <label>:3997:                                   ; preds = %3989, %3985, %3968, %3996
  %3998 = add nsw i64 %3969, -1
  %3999 = icmp sgt i64 %3969, 1
  br i1 %3999, label %3968, label %4000

; <label>:4000:                                   ; preds = %3997, %3961
  %4001 = icmp eq i32 %4083, 0
  br i1 %4001, label %4006, label %4002

; <label>:4002:                                   ; preds = %4000
  %4003 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3951) #10
  %4004 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %4005 = getelementptr inbounds %union.StackValue, %union.StackValue* %4004, i64 1
  br label %4006

; <label>:4006:                                   ; preds = %4000, %4002
  %4007 = phi i32 [ %4003, %4002 ], [ 0, %4000 ]
  %4008 = phi %union.StackValue* [ %4005, %4002 ], [ %4085, %4000 ]
  %4009 = getelementptr inbounds i32, i32* %3951, i64 1
  %4010 = load i32, i32* %3951, align 4, !tbaa !31
  br label %476

; <label>:4011:                                   ; preds = %4080
  %4012 = load %struct.Proto*, %struct.Proto** %426, align 8, !tbaa !33
  %4013 = getelementptr inbounds %struct.Proto, %struct.Proto* %4012, i64 0, i32 17
  %4014 = load %struct.Proto**, %struct.Proto*** %4013, align 8, !tbaa !49
  %4015 = lshr i32 %4082, 15
  %4016 = zext i32 %4015 to i64
  %4017 = getelementptr inbounds %struct.Proto*, %struct.Proto** %4014, i64 %4016
  %4018 = load %struct.Proto*, %struct.Proto** %4017, align 8, !tbaa !21
  store i32* %4084, i32** %30, align 8, !tbaa !6
  call fastcc void @pushclosure(%struct.lua_State* %0, %struct.Proto* %4018, %struct.UpVal** nonnull %454, %union.StackValue* %4085, %union.StackValue* %4081)
  %4019 = load %struct.global_State*, %struct.global_State** %69, align 8, !tbaa !16
  %4020 = getelementptr inbounds %struct.global_State, %struct.global_State* %4019, i64 0, i32 3
  %4021 = load i64, i64* %4020, align 8, !tbaa !43
  %4022 = icmp sgt i64 %4021, 0
  br i1 %4022, label %4023, label %4026

; <label>:4023:                                   ; preds = %4011
  %4024 = getelementptr inbounds %union.StackValue, %union.StackValue* %4081, i64 1
  store %union.StackValue* %4024, %union.StackValue** %354, align 8, !tbaa !25
  call void @luaC_step(%struct.lua_State* nonnull %0) #10
  %4025 = load i32, i32* %356, align 8, !tbaa !6
  br label %4026

; <label>:4026:                                   ; preds = %4023, %4011
  %4027 = phi i32 [ %4025, %4023 ], [ %4083, %4011 ]
  %4028 = icmp eq i32 %4027, 0
  br i1 %4028, label %4033, label %4029

; <label>:4029:                                   ; preds = %4026
  %4030 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4084) #10
  %4031 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %4032 = getelementptr inbounds %union.StackValue, %union.StackValue* %4031, i64 1
  br label %4033

; <label>:4033:                                   ; preds = %4026, %4029
  %4034 = phi i32 [ %4030, %4029 ], [ 0, %4026 ]
  %4035 = phi %union.StackValue* [ %4032, %4029 ], [ %4085, %4026 ]
  %4036 = getelementptr inbounds i32, i32* %4084, i64 1
  %4037 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:4038:                                   ; preds = %4080
  %4039 = lshr i32 %4082, 24
  %4040 = add nsw i32 %4039, -1
  store i32* %4084, i32** %30, align 8, !tbaa !6
  %4041 = load i64, i64* %71, align 8, !tbaa !42
  store i64 %4041, i64* %73, align 8, !tbaa !25
  call void @luaT_getvarargs(%struct.lua_State* %0, %struct.CallInfo* %1, %union.StackValue* %4081, i32 %4040) #10
  %4042 = load i32, i32* %75, align 8, !tbaa !6
  %4043 = icmp eq i32 %4042, 0
  br i1 %4043, label %4048, label %4044

; <label>:4044:                                   ; preds = %4038
  %4045 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4084) #10
  %4046 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %4047 = getelementptr inbounds %union.StackValue, %union.StackValue* %4046, i64 1
  br label %4048

; <label>:4048:                                   ; preds = %4038, %4044
  %4049 = phi i32 [ %4045, %4044 ], [ 0, %4038 ]
  %4050 = phi %union.StackValue* [ %4047, %4044 ], [ %4085, %4038 ]
  %4051 = getelementptr inbounds i32, i32* %4084, i64 1
  %4052 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:4053:                                   ; preds = %4080
  %4054 = lshr i32 %4082, 7
  %4055 = and i32 %4054, 255
  %4056 = load %struct.Proto*, %struct.Proto** %426, align 8, !tbaa !33
  call void @luaT_adjustvarargs(%struct.lua_State* %0, i32 %4055, %struct.CallInfo* %1, %struct.Proto* %4056) #10
  %4057 = load i32, i32* %77, align 8, !tbaa !6
  %4058 = icmp eq i32 %4057, 0
  br i1 %4058, label %4062, label %4059

; <label>:4059:                                   ; preds = %4053
  call void @luaD_hookcall(%struct.lua_State* %0, %struct.CallInfo* nonnull %1) #10
  %4060 = getelementptr inbounds i32, i32* %4084, i64 1
  store i32* %4060, i32** %357, align 8, !tbaa !50
  %4061 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  br label %4062

; <label>:4062:                                   ; preds = %4053, %4059
  %4063 = phi i32 [ %4061, %4059 ], [ 0, %4053 ]
  %4064 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %4065 = getelementptr inbounds %union.StackValue, %union.StackValue* %4064, i64 1
  %4066 = getelementptr inbounds i32, i32* %4084, i64 1
  %4067 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:4068:                                   ; preds = %4080
  %4069 = icmp eq i32 %4083, 0
  br i1 %4069, label %4074, label %4070

; <label>:4070:                                   ; preds = %4068
  %4071 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4084) #10
  %4072 = load %union.StackValue*, %union.StackValue** %26, align 8, !tbaa !30
  %4073 = getelementptr inbounds %union.StackValue, %union.StackValue* %4072, i64 1
  br label %4074

; <label>:4074:                                   ; preds = %4068, %4070
  %4075 = phi i32 [ %4071, %4070 ], [ 0, %4068 ]
  %4076 = phi %union.StackValue* [ %4073, %4070 ], [ %4085, %4068 ]
  %4077 = getelementptr inbounds i32, i32* %4084, i64 1
  %4078 = load i32, i32* %4084, align 4, !tbaa !31
  br label %476

; <label>:4079:                                   ; preds = %3674, %3636, %3663, %3623, %3647, %3661, %3620, %3615, %3561
  ret void

; <label>:4080:                                   ; preds = %476, %444
  %4081 = phi %union.StackValue* [ %453, %444 ], [ %484, %476 ]
  %4082 = phi i32 [ %449, %444 ], [ %477, %476 ]
  %4083 = phi i32 [ %445, %444 ], [ %479, %476 ]
  %4084 = phi i32* [ %448, %444 ], [ %480, %476 ]
  %4085 = phi %union.StackValue* [ %447, %444 ], [ %478, %476 ]
  %4086 = and i32 %4082, 127
  %4087 = zext i32 %4086 to i64
  %4088 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4087
  %4089 = load i8*, i8** %4088, align 8, !tbaa !21
  indirectbr i8* %4089, [label %455, label %505, label %521, label %485, label %537, label %559, label %577, label %598, label %622, label %664, label %710, label %783, label %838, label %881, label %953, label %1049, label %1127, label %1193, label %1226, label %1279, label %1320, label %1359, label %1400, label %1439, label %1477, label %1515, label %1555, label %1615, label %1673, label %1733, label %1791, label %1839, label %1887, label %2333, label %2373, label %2413, label %2597, label %2643, label %1946, label %2004, label %2062, label %2120, label %2178, label %2226, label %2274, label %2453, label %2501, label %2549, label %2730, label %2681, label %2778, label %2812, label %2846, label %2876, label %2893, label %2915, label %2929, label %2940, label %2956, label %2986, label %3048, label %3110, label %3142, label %3188, label %3240, label %3292, label %3344, label %3396, label %3438, label %3489, label %3510, label %3579, label %3616, label %3643, label %3681, label %3740, label %3860, label %3873, label %3896, label %3928, label %4011, label %4038, label %4053, label %4068]
}

declare hidden void @luaD_hookcall(%struct.lua_State*, %struct.CallInfo*) local_unnamed_addr #2

declare hidden i32 @luaG_traceexec(%struct.lua_State*, i32*) local_unnamed_addr #2

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #2

declare hidden %struct.TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

declare hidden %struct.TValue* @luaH_getint(%struct.Table*, i64) local_unnamed_addr #2

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2

declare hidden i32 @luaO_fb2int(i32) local_unnamed_addr #2

declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

declare hidden %struct.TValue* @luaH_getstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

declare hidden void @luaT_trybiniTM(%struct.lua_State*, %struct.TValue*, i64, i32, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @pow(double, double) local_unnamed_addr #5

declare hidden void @luaT_trybinassocTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32, i32) local_unnamed_addr #2

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

declare hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

declare hidden i32 @luaT_callorderiTM(%struct.lua_State*, %struct.TValue*, i32, i32, i32, i32) local_unnamed_addr #2

declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

declare hidden void @luaD_tryfuncTM(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

declare hidden void @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, i32) local_unnamed_addr #2

declare hidden void @luaD_pretailcall(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @forlimit(%struct.lua_State*, i64, %struct.TValue*, i64* nocapture, i64) unnamed_addr #0 {
  %6 = alloca double, align 8
  %7 = icmp slt i64 %4, 0
  %8 = lshr i64 %4, 63
  %9 = trunc i64 %8 to i32
  %10 = add nuw nsw i32 %9, 1
  %11 = tail call i32 @luaV_tointeger(%struct.TValue* %2, i64* %3, i32 %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

; <label>:13:                                     ; preds = %5
  %14 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #10
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %16 = load i8, i8* %15, align 8, !tbaa !2
  %17 = icmp eq i8 %16, 19
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %13
  %19 = bitcast %struct.TValue* %2 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !6
  %21 = bitcast double* %6 to i64*
  store i64 %20, i64* %21, align 8, !tbaa !7
  %22 = bitcast i64 %20 to double
  br label %29

; <label>:23:                                     ; preds = %13
  %24 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %2, double* nonnull %6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  tail call void @luaG_forerror(%struct.lua_State* %0, %struct.TValue* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #11
  unreachable

; <label>:27:                                     ; preds = %23
  %28 = load double, double* %6, align 8, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %27, %18
  %30 = phi double [ %28, %27 ], [ %22, %18 ]
  %31 = fcmp ogt double %30, 0.000000e+00
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  br i1 %7, label %37, label %35

; <label>:33:                                     ; preds = %29
  %34 = icmp sgt i64 %4, 0
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33, %32
  %36 = phi i64 [ 9223372036854775807, %32 ], [ -9223372036854775808, %33 ]
  store i64 %36, i64* %3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #10
  br label %38

; <label>:37:                                     ; preds = %33, %32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #10
  br label %45

; <label>:38:                                     ; preds = %35, %5
  %39 = icmp sgt i64 %4, 0
  %40 = load i64, i64* %3, align 8, !tbaa !9
  %41 = icmp slt i64 %40, %1
  %42 = icmp sgt i64 %40, %1
  %43 = select i1 %39, i1 %41, i1 %42
  %44 = zext i1 %43 to i32
  br label %45

; <label>:45:                                     ; preds = %37, %38
  %46 = phi i32 [ %44, %38 ], [ 1, %37 ]
  ret i32 %46
}

; Function Attrs: noreturn
declare hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #4

declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #2

declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @pushclosure(%struct.lua_State*, %struct.Proto*, %struct.UpVal** nocapture readonly, %union.StackValue*, %union.StackValue* nocapture) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %7 = load i32, i32* %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 18
  %9 = load %struct.Upvaldesc*, %struct.Upvaldesc** %8, align 8, !tbaa !52
  %10 = tail call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 %7) #10
  %11 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %10, i64 0, i32 5
  store %struct.Proto* %1, %struct.Proto** %11, align 8, !tbaa !33
  %12 = bitcast %struct.LClosure* %10 to %struct.GCObject*
  %13 = bitcast %union.StackValue* %4 to %struct.LClosure**
  store %struct.LClosure* %10, %struct.LClosure** %13, align 8, !tbaa !6
  %14 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 0, i32 0, i32 1
  store i8 86, i8* %14, align 8, !tbaa !2
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %53

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %10, i64 0, i32 2
  %18 = zext i32 %7 to i64
  br label %19

; <label>:19:                                     ; preds = %50, %16
  %20 = phi i64 [ 0, %16 ], [ %51, %50 ]
  %21 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %9, i64 %20, i32 1
  %22 = load i8, i8* %21, align 8, !tbaa !53
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %9, i64 %20, i32 2
  %25 = load i8, i8* %24, align 1, !tbaa !55
  %26 = zext i8 %25 to i64
  br i1 %23, label %31, label %27

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %union.StackValue, %union.StackValue* %3, i64 %26
  %29 = tail call %struct.UpVal* @luaF_findupval(%struct.lua_State* %0, %union.StackValue* %28) #10
  %30 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %10, i64 0, i32 6, i64 %20
  store %struct.UpVal* %29, %struct.UpVal** %30, align 8, !tbaa !21
  br label %37

; <label>:31:                                     ; preds = %19
  %32 = getelementptr inbounds %struct.UpVal*, %struct.UpVal** %2, i64 %26
  %33 = bitcast %struct.UpVal** %32 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !21
  %35 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %10, i64 0, i32 6, i64 %20
  %36 = bitcast %struct.UpVal** %35 to i64*
  store i64 %34, i64* %36, align 8, !tbaa !21
  br label %37

; <label>:37:                                     ; preds = %31, %27
  %38 = load i8, i8* %17, align 1, !tbaa !56
  %39 = and i8 %38, 32
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %50, label %41

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %10, i64 0, i32 6, i64 %20
  %43 = load %struct.UpVal*, %struct.UpVal** %42, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %43, i64 0, i32 2
  %45 = load i8, i8* %44, align 1, !tbaa !41
  %46 = and i8 %45, 24
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

; <label>:48:                                     ; preds = %41
  %49 = bitcast %struct.UpVal* %43 to %struct.GCObject*
  tail call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* nonnull %12, %struct.GCObject* %49) #10
  br label %50

; <label>:50:                                     ; preds = %41, %37, %48
  %51 = add nuw nsw i64 %20, 1
  %52 = icmp eq i64 %51, %18
  br i1 %52, label %53, label %19

; <label>:53:                                     ; preds = %50, %5
  ret void
}

declare hidden void @luaT_getvarargs(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) local_unnamed_addr #2

declare hidden void @luaT_adjustvarargs(%struct.lua_State*, i32, %struct.CallInfo*, %struct.Proto*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LTintfloat(i64, double) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = add i64 %0, 9007199254740992
  %5 = icmp ult i64 %4, 18014398509481985
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %2
  %7 = sitofp i64 %0 to double
  %8 = fcmp olt double %7, %1
  br label %17

; <label>:9:                                      ; preds = %2
  %10 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  %11 = call i32 @luaV_flttointeger(double %1, i64* nonnull %3, i32 2)
  %12 = icmp eq i32 %11, 0
  %13 = load i64, i64* %3, align 8
  %14 = icmp sgt i64 %13, %0
  %15 = fcmp ogt double %1, 0.000000e+00
  %16 = select i1 %12, i1 %15, i1 %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  br label %17

; <label>:17:                                     ; preds = %9, %6
  %18 = phi i1 [ %8, %6 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LTfloatint(double, i64) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = add i64 %1, 9007199254740992
  %5 = icmp ult i64 %4, 18014398509481985
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %2
  %7 = sitofp i64 %1 to double
  %8 = fcmp ogt double %7, %0
  br label %17

; <label>:9:                                      ; preds = %2
  %10 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  %11 = call i32 @luaV_flttointeger(double %0, i64* nonnull %3, i32 1)
  %12 = icmp eq i32 %11, 0
  %13 = load i64, i64* %3, align 8
  %14 = icmp slt i64 %13, %1
  %15 = fcmp olt double %0, 0.000000e+00
  %16 = select i1 %12, i1 %15, i1 %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  br label %17

; <label>:17:                                     ; preds = %9, %6
  %18 = phi i1 [ %8, %6 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind readonly uwtable
define internal fastcc i32 @l_strcmp(%struct.TString* nocapture readonly, %struct.TString* nocapture readonly) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 1
  %4 = bitcast %struct.TString* %3 to i8*
  %5 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !27
  %7 = icmp eq i8 %6, 20
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 4
  %10 = load i8, i8* %9, align 1, !tbaa !57
  %11 = zext i8 %10 to i64
  br label %15

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.TString, %struct.TString* %0, i64 0, i32 6, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !6
  br label %15

; <label>:15:                                     ; preds = %12, %8
  %16 = phi i64 [ %11, %8 ], [ %14, %12 ]
  %17 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 1
  %18 = bitcast %struct.TString* %17 to i8*
  %19 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !27
  %21 = icmp eq i8 %20, 20
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 4
  %24 = load i8, i8* %23, align 1, !tbaa !57
  %25 = zext i8 %24 to i64
  br label %29

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.TString, %struct.TString* %1, i64 0, i32 6, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !6
  br label %29

; <label>:29:                                     ; preds = %26, %22
  %30 = phi i64 [ %25, %22 ], [ %28, %26 ]
  %31 = tail call i32 @strcoll(i8* nonnull %4, i8* nonnull %18) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

; <label>:33:                                     ; preds = %29
  br label %34

; <label>:34:                                     ; preds = %33, %46
  %35 = phi i64 [ %51, %46 ], [ %30, %33 ]
  %36 = phi i8* [ %50, %46 ], [ %18, %33 ]
  %37 = phi i64 [ %49, %46 ], [ %16, %33 ]
  %38 = phi i8* [ %48, %46 ], [ %4, %33 ]
  %39 = tail call i64 @strlen(i8* %38) #12
  %40 = icmp eq i64 %39, %35
  %41 = icmp eq i64 %39, %37
  br i1 %40, label %42, label %45

; <label>:42:                                     ; preds = %34
  %43 = xor i1 %41, true
  %44 = zext i1 %43 to i32
  br label %54

; <label>:45:                                     ; preds = %34
  br i1 %41, label %54, label %46

; <label>:46:                                     ; preds = %45
  %47 = add i64 %39, 1
  %48 = getelementptr inbounds i8, i8* %38, i64 %47
  %49 = sub i64 %37, %47
  %50 = getelementptr inbounds i8, i8* %36, i64 %47
  %51 = sub i64 %35, %47
  %52 = tail call i32 @strcoll(i8* %48, i8* %50) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %34, label %54

; <label>:54:                                     ; preds = %46, %45, %29, %42
  %55 = phi i32 [ %44, %42 ], [ %31, %29 ], [ %52, %46 ], [ -1, %45 ]
  ret i32 %55
}

declare hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LEintfloat(i64, double) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = add i64 %0, 9007199254740992
  %5 = icmp ult i64 %4, 18014398509481985
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %2
  %7 = sitofp i64 %0 to double
  %8 = fcmp ole double %7, %1
  br label %17

; <label>:9:                                      ; preds = %2
  %10 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  %11 = call i32 @luaV_flttointeger(double %1, i64* nonnull %3, i32 1)
  %12 = icmp eq i32 %11, 0
  %13 = load i64, i64* %3, align 8
  %14 = icmp sge i64 %13, %0
  %15 = fcmp ogt double %1, 0.000000e+00
  %16 = select i1 %12, i1 %15, i1 %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  br label %17

; <label>:17:                                     ; preds = %9, %6
  %18 = phi i1 [ %8, %6 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LEfloatint(double, i64) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = add i64 %1, 9007199254740992
  %5 = icmp ult i64 %4, 18014398509481985
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %2
  %7 = sitofp i64 %1 to double
  %8 = fcmp oge double %7, %0
  br label %17

; <label>:9:                                      ; preds = %2
  %10 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #10
  %11 = call i32 @luaV_flttointeger(double %0, i64* nonnull %3, i32 2)
  %12 = icmp eq i32 %11, 0
  %13 = load i64, i64* %3, align 8
  %14 = icmp sle i64 %13, %1
  %15 = fcmp olt double %0, 0.000000e+00
  %16 = select i1 %12, i1 %15, i1 %14
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #10
  br label %17

; <label>:17:                                     ; preds = %9, %6
  %18 = phi i1 [ %8, %6 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 8}
!3 = !{!"TValue", !4, i64 0, !4, i64 8}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !4, i64 0}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!13, !4, i64 10}
!13 = !{!"Table", !14, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !15, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"int", !4, i64 0}
!16 = !{!17, !14, i64 24}
!17 = !{!"lua_State", !14, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !18, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !19, i64 96, !14, i64 160, !20, i64 168, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192}
!18 = !{!"short", !4, i64 0}
!19 = !{!"CallInfo", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !4, i64 32, !4, i64 56, !18, i64 60, !18, i64 62}
!20 = !{!"long", !4, i64 0}
!21 = !{!14, !14, i64 0}
!22 = !{!13, !14, i64 40}
!23 = !{!24, !4, i64 9}
!24 = !{!"GCObject", !14, i64 0, !4, i64 8, !4, i64 9}
!25 = !{!17, !14, i64 16}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!28, !4, i64 8}
!28 = !{!"TString", !14, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !15, i64 12, !4, i64 16}
!29 = !{!17, !14, i64 32}
!30 = !{!19, !14, i64 0}
!31 = !{!15, !15, i64 0}
!32 = !{!17, !15, i64 192}
!33 = !{!34, !14, i64 24}
!34 = !{!"LClosure", !14, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !14, i64 16, !14, i64 24, !4, i64 32}
!35 = !{!36, !14, i64 56}
!36 = !{!"Proto", !14, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120}
!37 = !{!36, !4, i64 11}
!38 = !{!36, !14, i64 64}
!39 = !{!40, !14, i64 16}
!40 = !{!"UpVal", !14, i64 0, !4, i64 8, !4, i64 9, !14, i64 16, !4, i64 24}
!41 = !{!40, !4, i64 9}
!42 = !{!19, !14, i64 8}
!43 = !{!44, !20, i64 24}
!44 = !{!"global_State", !14, i64 0, !14, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !45, i64 48, !3, i64 64, !3, i64 80, !15, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 107, !4, i64 108, !4, i64 109, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !4, i64 272, !4, i64 472, !4, i64 544, !14, i64 1392, !14, i64 1400}
!45 = !{!"stringtable", !14, i64 0, !15, i64 8, !15, i64 12}
!46 = !{!19, !18, i64 60}
!47 = !{!19, !14, i64 16}
!48 = !{!13, !14, i64 16}
!49 = !{!36, !14, i64 72}
!50 = !{!17, !14, i64 40}
!51 = !{!36, !15, i64 16}
!52 = !{!36, !14, i64 80}
!53 = !{!54, !4, i64 8}
!54 = !{!"Upvaldesc", !14, i64 0, !4, i64 8, !4, i64 9}
!55 = !{!54, !4, i64 9}
!56 = !{!34, !4, i64 9}
!57 = !{!28, !4, i64 11}
