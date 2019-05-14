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
@luaV_execute.disptab = internal unnamed_addr constant [84 x i8*] [i8* blockaddress(@luaV_execute, %80), i8* blockaddress(@luaV_execute, %126), i8* blockaddress(@luaV_execute, %142), i8* blockaddress(@luaV_execute, %106), i8* blockaddress(@luaV_execute, %158), i8* blockaddress(@luaV_execute, %180), i8* blockaddress(@luaV_execute, %198), i8* blockaddress(@luaV_execute, %219), i8* blockaddress(@luaV_execute, %243), i8* blockaddress(@luaV_execute, %285), i8* blockaddress(@luaV_execute, %331), i8* blockaddress(@luaV_execute, %404), i8* blockaddress(@luaV_execute, %458), i8* blockaddress(@luaV_execute, %501), i8* blockaddress(@luaV_execute, %573), i8* blockaddress(@luaV_execute, %669), i8* blockaddress(@luaV_execute, %746), i8* blockaddress(@luaV_execute, %812), i8* blockaddress(@luaV_execute, %845), i8* blockaddress(@luaV_execute, %898), i8* blockaddress(@luaV_execute, %939), i8* blockaddress(@luaV_execute, %978), i8* blockaddress(@luaV_execute, %1019), i8* blockaddress(@luaV_execute, %1058), i8* blockaddress(@luaV_execute, %1096), i8* blockaddress(@luaV_execute, %1134), i8* blockaddress(@luaV_execute, %1174), i8* blockaddress(@luaV_execute, %1235), i8* blockaddress(@luaV_execute, %1294), i8* blockaddress(@luaV_execute, %1355), i8* blockaddress(@luaV_execute, %1414), i8* blockaddress(@luaV_execute, %1462), i8* blockaddress(@luaV_execute, %1510), i8* blockaddress(@luaV_execute, %1962), i8* blockaddress(@luaV_execute, %2004), i8* blockaddress(@luaV_execute, %2046), i8* blockaddress(@luaV_execute, %2238), i8* blockaddress(@luaV_execute, %2286), i8* blockaddress(@luaV_execute, %1570), i8* blockaddress(@luaV_execute, %1629), i8* blockaddress(@luaV_execute, %1688), i8* blockaddress(@luaV_execute, %1747), i8* blockaddress(@luaV_execute, %1806), i8* blockaddress(@luaV_execute, %1854), i8* blockaddress(@luaV_execute, %1902), i8* blockaddress(@luaV_execute, %2088), i8* blockaddress(@luaV_execute, %2138), i8* blockaddress(@luaV_execute, %2188), i8* blockaddress(@luaV_execute, %2377), i8* blockaddress(@luaV_execute, %2326), i8* blockaddress(@luaV_execute, %2427), i8* blockaddress(@luaV_execute, %2461), i8* blockaddress(@luaV_execute, %2497), i8* blockaddress(@luaV_execute, %2527), i8* blockaddress(@luaV_execute, %2544), i8* blockaddress(@luaV_execute, %2566), i8* blockaddress(@luaV_execute, %2580), i8* blockaddress(@luaV_execute, %2591), i8* blockaddress(@luaV_execute, %2607), i8* blockaddress(@luaV_execute, %2637), i8* blockaddress(@luaV_execute, %2701), i8* blockaddress(@luaV_execute, %2765), i8* blockaddress(@luaV_execute, %2797), i8* blockaddress(@luaV_execute, %2843), i8* blockaddress(@luaV_execute, %2895), i8* blockaddress(@luaV_execute, %2947), i8* blockaddress(@luaV_execute, %2999), i8* blockaddress(@luaV_execute, %3051), i8* blockaddress(@luaV_execute, %3093), i8* blockaddress(@luaV_execute, %3144), i8* blockaddress(@luaV_execute, %3165), i8* blockaddress(@luaV_execute, %3230), i8* blockaddress(@luaV_execute, %3261), i8* blockaddress(@luaV_execute, %3283), i8* blockaddress(@luaV_execute, %3316), i8* blockaddress(@luaV_execute, %3375), i8* blockaddress(@luaV_execute, %3527), i8* blockaddress(@luaV_execute, %3540), i8* blockaddress(@luaV_execute, %3563), i8* blockaddress(@luaV_execute, %3595), i8* blockaddress(@luaV_execute, %3677), i8* blockaddress(@luaV_execute, %3751), i8* blockaddress(@luaV_execute, %3766), i8* blockaddress(@luaV_execute, %3783)], align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"'for' step is zero\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"initial value\00", align 1

; Function Attrs: minsize nounwind optsize uwtable
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
  %19 = call i64 @luaO_str2num(i8* nonnull %18, %struct.TValue* nonnull %3) #11
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

; Function Attrs: minsize optsize
declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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
  %9 = tail call i32 @luaV_flttointeger(double %8, i64* %1, i32 %2) #12
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

; Function Attrs: minsize nounwind optsize uwtable
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
  %14 = call i64 @luaO_str2num(i8* nonnull %13, %struct.TValue* nonnull %4) #11
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
  %34 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %33, i64* %1, i32 %2) #12
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #10
  ret i32 %34
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaV_finishget(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, %struct.TValue* readnone) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br label %7

; <label>:7:                                      ; preds = %66, %5
  %8 = phi i32 [ 0, %5 ], [ %68, %66 ]
  %9 = phi %struct.TValue* [ %4, %5 ], [ %67, %66 ]
  %10 = phi %struct.TValue* [ %1, %5 ], [ %45, %66 ]
  %11 = icmp ult i32 %8, 2000
  br i1 %11, label %12, label %69

; <label>:12:                                     ; preds = %7
  %13 = icmp eq %struct.TValue* %9, null
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %12
  %15 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %10, i32 0) #11
  %16 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i64 0, i32 1
  %17 = load i8, i8* %16, align 8, !tbaa !2
  %18 = and i8 %17, 15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %43, !prof !11

; <label>:20:                                     ; preds = %14
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #13
  unreachable

; <label>:21:                                     ; preds = %12
  %22 = bitcast %struct.TValue* %10 to %struct.Table**
  %23 = load %struct.Table*, %struct.Table** %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %23, i64 0, i32 9
  %25 = load %struct.Table*, %struct.Table** %24, align 8, !tbaa !6
  %26 = icmp eq %struct.Table* %25, null
  br i1 %26, label %41, label %27

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %25, i64 0, i32 3
  %29 = load i8, i8* %28, align 2, !tbaa !12
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %41

; <label>:32:                                     ; preds = %27
  %33 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %33, i64 0, i32 40, i64 0
  %35 = load %struct.TString*, %struct.TString** %34, align 8, !tbaa !21
  %36 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %25, i32 0, %struct.TString* %35) #11
  %37 = icmp eq %struct.TValue* %36, null
  br i1 %37, label %41, label %38

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %36, i64 0, i32 1
  %40 = load i8, i8* %39, align 8, !tbaa !2
  br label %43

; <label>:41:                                     ; preds = %27, %21, %32
  %42 = getelementptr inbounds %union.StackValue, %union.StackValue* %3, i64 0, i32 0, i32 1
  store i8 0, i8* %42, align 8, !tbaa !6
  br label %70

; <label>:43:                                     ; preds = %38, %14
  %44 = phi i8 [ %17, %14 ], [ %40, %38 ]
  %45 = phi %struct.TValue* [ %15, %14 ], [ %36, %38 ]
  %46 = and i8 %44, 15
  %47 = icmp eq i8 %46, 6
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %43
  tail call void @luaT_callTMres(%struct.lua_State* %0, %struct.TValue* %45, %struct.TValue* %10, %struct.TValue* %2, %union.StackValue* %3) #11
  br label %70

; <label>:49:                                     ; preds = %43
  %50 = icmp eq i8 %44, 69
  br i1 %50, label %51, label %66

; <label>:51:                                     ; preds = %49
  %52 = bitcast %struct.TValue* %45 to %struct.Table**
  %53 = load %struct.Table*, %struct.Table** %52, align 8, !tbaa !6
  %54 = tail call %struct.TValue* @luaH_get(%struct.Table* %53, %struct.TValue* %2) #11
  %55 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i64 0, i32 1
  %56 = load i8, i8* %55, align 8, !tbaa !2
  %57 = and i8 %56, 15
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %66, label %59

; <label>:59:                                     ; preds = %51
  %60 = getelementptr inbounds %struct.TValue, %struct.TValue* %54, i64 0, i32 1
  %61 = bitcast %struct.TValue* %54 to i64*
  %62 = bitcast %union.StackValue* %3 to i64*
  %63 = load i64, i64* %61, align 8
  store i64 %63, i64* %62, align 8
  %64 = load i8, i8* %60, align 8, !tbaa !2
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %3, i64 0, i32 0, i32 1
  store i8 %64, i8* %65, align 8, !tbaa !2
  br label %70

; <label>:66:                                     ; preds = %49, %51
  %67 = phi %struct.TValue* [ %54, %51 ], [ null, %49 ]
  %68 = add nuw nsw i32 %8, 1
  br label %7

; <label>:69:                                     ; preds = %7
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #13
  unreachable

; <label>:70:                                     ; preds = %59, %48, %41
  ret void
}

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize noreturn optsize
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaT_callTMres(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaH_get(%struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: minsize noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaV_finishset(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br label %7

; <label>:7:                                      ; preds = %116, %5
  %8 = phi i32 [ 0, %5 ], [ %118, %116 ]
  %9 = phi %struct.TValue* [ %4, %5 ], [ %117, %116 ]
  %10 = phi %struct.TValue* [ %1, %5 ], [ %77, %116 ]
  %11 = icmp ult i32 %8, 2000
  br i1 %11, label %12, label %119

; <label>:12:                                     ; preds = %7
  %13 = icmp eq %struct.TValue* %9, null
  br i1 %13, label %68, label %14

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.TValue, %struct.TValue* %10, i64 0, i32 0, i32 0
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %16, i64 2, i32 1
  %18 = bitcast i8* %17 to %struct.Table**
  %19 = load %struct.Table*, %struct.Table** %18, align 8, !tbaa !22
  %20 = icmp eq %struct.Table* %19, null
  br i1 %20, label %35, label %21

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %19, i64 0, i32 3
  %23 = load i8, i8* %22, align 2, !tbaa !12
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %35

; <label>:26:                                     ; preds = %21
  %27 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i64 0, i32 40, i64 1
  %29 = load %struct.TString*, %struct.TString** %28, align 8, !tbaa !21
  %30 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %19, i32 1, %struct.TString* %29) #11
  %31 = icmp eq %struct.TValue* %30, null
  br i1 %31, label %35, label %32

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %30, i64 0, i32 1
  %34 = load i8, i8* %33, align 8, !tbaa !2
  br label %75

; <label>:35:                                     ; preds = %21, %14, %26
  %36 = bitcast %struct.GCObject* %16 to %struct.Table*
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !2
  %39 = icmp eq i8 %38, 32
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %35
  %41 = tail call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %36, %struct.TValue* %2) #11
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 0, i32 1
  br label %43

; <label>:43:                                     ; preds = %40, %35
  %44 = phi i8* [ %42, %40 ], [ %37, %35 ]
  %45 = phi %struct.TValue* [ %41, %40 ], [ %9, %35 ]
  %46 = bitcast %struct.TValue* %3 to i64*
  %47 = bitcast %struct.TValue* %45 to i64*
  %48 = load i64, i64* %46, align 8
  store i64 %48, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %50 = load i8, i8* %49, align 8, !tbaa !2
  store i8 %50, i8* %44, align 8, !tbaa !2
  %51 = getelementptr inbounds %struct.Table, %struct.Table* %36, i64 0, i32 3
  store i8 0, i8* %51, align 2, !tbaa !12
  %52 = load i8, i8* %49, align 8, !tbaa !2
  %53 = and i8 %52, 64
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %120, label %55

; <label>:55:                                     ; preds = %43
  %56 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %16, i64 0, i32 2
  %57 = load i8, i8* %56, align 1, !tbaa !6
  %58 = and i8 %57, 32
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %120, label %60

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %62, i64 0, i32 2
  %64 = load i8, i8* %63, align 1, !tbaa !23
  %65 = and i8 %64, 24
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %120, label %67

; <label>:67:                                     ; preds = %60
  tail call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* nonnull %16) #11
  br label %120

; <label>:68:                                     ; preds = %12
  %69 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %10, i32 1) #11
  %70 = getelementptr inbounds %struct.TValue, %struct.TValue* %69, i64 0, i32 1
  %71 = load i8, i8* %70, align 8, !tbaa !2
  %72 = and i8 %71, 15
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %75, !prof !11

; <label>:74:                                     ; preds = %68
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #13
  unreachable

; <label>:75:                                     ; preds = %32, %68
  %76 = phi i8 [ %71, %68 ], [ %34, %32 ]
  %77 = phi %struct.TValue* [ %69, %68 ], [ %30, %32 ]
  %78 = and i8 %76, 15
  %79 = icmp eq i8 %78, 6
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %75
  tail call void @luaT_callTM(%struct.lua_State* %0, %struct.TValue* %77, %struct.TValue* %10, %struct.TValue* %2, %struct.TValue* %3) #11
  br label %120

; <label>:81:                                     ; preds = %75
  %82 = icmp eq i8 %76, 69
  br i1 %82, label %83, label %116

; <label>:83:                                     ; preds = %81
  %84 = bitcast %struct.TValue* %77 to %struct.Table**
  %85 = load %struct.Table*, %struct.Table** %84, align 8, !tbaa !6
  %86 = tail call %struct.TValue* @luaH_get(%struct.Table* %85, %struct.TValue* %2) #11
  %87 = getelementptr inbounds %struct.TValue, %struct.TValue* %86, i64 0, i32 1
  %88 = load i8, i8* %87, align 8, !tbaa !2
  %89 = and i8 %88, 15
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %116, label %91

; <label>:91:                                     ; preds = %83
  %92 = getelementptr inbounds %struct.TValue, %struct.TValue* %86, i64 0, i32 1
  %93 = bitcast %struct.TValue* %3 to i64*
  %94 = bitcast %struct.TValue* %86 to i64*
  %95 = load i64, i64* %93, align 8
  store i64 %95, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %97 = load i8, i8* %96, align 8, !tbaa !2
  store i8 %97, i8* %92, align 8, !tbaa !2
  %98 = load i8, i8* %96, align 8, !tbaa !2
  %99 = and i8 %98, 64
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %120, label %101

; <label>:101:                                    ; preds = %91
  %102 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i64 0, i32 0, i32 0
  %103 = load %struct.GCObject*, %struct.GCObject** %102, align 8, !tbaa !6
  %104 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %103, i64 0, i32 2
  %105 = load i8, i8* %104, align 1, !tbaa !23
  %106 = and i8 %105, 32
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %120, label %108

; <label>:108:                                    ; preds = %101
  %109 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %110 = load %struct.GCObject*, %struct.GCObject** %109, align 8, !tbaa !6
  %111 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %110, i64 0, i32 2
  %112 = load i8, i8* %111, align 1, !tbaa !23
  %113 = and i8 %112, 24
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %120, label %115

; <label>:115:                                    ; preds = %108
  tail call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %103) #11
  br label %120

; <label>:116:                                    ; preds = %81, %83
  %117 = phi %struct.TValue* [ %86, %83 ], [ null, %81 ]
  %118 = add nuw nsw i32 %8, 1
  br label %7

; <label>:119:                                    ; preds = %7
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #13
  unreachable

; <label>:120:                                    ; preds = %67, %43, %55, %60, %80, %108, %101, %91, %115
  ret void
}

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaT_callTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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
  %14 = tail call fastcc i32 @LTnum(%struct.TValue* nonnull %1, %struct.TValue* nonnull %2) #12
  br label %17

; <label>:15:                                     ; preds = %8, %3
  %16 = tail call fastcc i32 @lessthanothers(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2) #12
  br label %17

; <label>:17:                                     ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: minsize nounwind optsize readonly uwtable
define internal fastcc i32 @LTnum(%struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !2
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %6, label %37

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.TValue* %0 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !2
  %11 = icmp eq i8 %10, 35
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %6
  %13 = bitcast %struct.TValue* %1 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !6
  %15 = icmp slt i64 %8, %14
  br label %65

; <label>:16:                                     ; preds = %6
  %17 = bitcast %struct.TValue* %1 to double*
  %18 = load double, double* %17, align 8, !tbaa !6
  %19 = add i64 %8, 9007199254740992
  %20 = icmp ult i64 %19, 18014398509481985
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %16
  %22 = sitofp i64 %8 to double
  %23 = fcmp ogt double %18, %22
  br label %65

; <label>:24:                                     ; preds = %16
  %25 = tail call double @llvm.floor.f64(double %18) #10
  %26 = fcmp une double %25, %18
  %27 = fadd double %25, 1.000000e+00
  %28 = select i1 %26, double %27, double %25
  %29 = fcmp oge double %28, 0xC3E0000000000000
  %30 = fcmp olt double %28, 0x43E0000000000000
  %31 = and i1 %29, %30
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %24
  %33 = fptosi double %28 to i64
  %34 = icmp slt i64 %8, %33
  br label %65

; <label>:35:                                     ; preds = %24
  %36 = fcmp ogt double %18, 0.000000e+00
  br label %65

; <label>:37:                                     ; preds = %2
  %38 = bitcast %struct.TValue* %0 to double*
  %39 = load double, double* %38, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !2
  %42 = icmp eq i8 %41, 19
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %37
  %44 = bitcast %struct.TValue* %1 to double*
  %45 = load double, double* %44, align 8, !tbaa !6
  %46 = fcmp olt double %39, %45
  br label %65

; <label>:47:                                     ; preds = %37
  %48 = bitcast %struct.TValue* %1 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !6
  %50 = add i64 %49, 9007199254740992
  %51 = icmp ult i64 %50, 18014398509481985
  br i1 %51, label %52, label %55

; <label>:52:                                     ; preds = %47
  %53 = sitofp i64 %49 to double
  %54 = fcmp olt double %39, %53
  br label %65

; <label>:55:                                     ; preds = %47
  %56 = tail call double @llvm.floor.f64(double %39) #10
  %57 = fcmp oge double %56, 0xC3E0000000000000
  %58 = fcmp olt double %56, 0x43E0000000000000
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %55
  %61 = fptosi double %56 to i64
  %62 = icmp sgt i64 %49, %61
  br label %65

; <label>:63:                                     ; preds = %55
  %64 = fcmp olt double %39, 0.000000e+00
  br label %65

; <label>:65:                                     ; preds = %63, %60, %52, %35, %32, %21, %43, %12
  %66 = phi i1 [ %15, %12 ], [ %46, %43 ], [ %23, %21 ], [ %36, %35 ], [ %34, %32 ], [ %54, %52 ], [ %64, %63 ], [ %62, %60 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %18 = tail call fastcc i32 @l_strcmp(%struct.TString* %15, %struct.TString* %17) #12
  %19 = lshr i32 %18, 31
  br label %22

; <label>:20:                                     ; preds = %8, %3
  %21 = tail call i32 @luaT_callorderTM(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2, i32 20) #11
  br label %22

; <label>:22:                                     ; preds = %20, %13
  %23 = phi i32 [ %19, %13 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %14 = tail call fastcc i32 @LEnum(%struct.TValue* nonnull %1, %struct.TValue* nonnull %2) #12
  br label %17

; <label>:15:                                     ; preds = %8, %3
  %16 = tail call fastcc i32 @lessequalothers(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2) #12
  br label %17

; <label>:17:                                     ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: minsize nounwind optsize readonly uwtable
define internal fastcc i32 @LEnum(%struct.TValue* nocapture readonly, %struct.TValue* nocapture readonly) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !2
  %5 = icmp eq i8 %4, 35
  br i1 %5, label %6, label %34

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.TValue* %0 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !2
  %11 = icmp eq i8 %10, 35
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %6
  %13 = bitcast %struct.TValue* %1 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !6
  %15 = icmp sle i64 %8, %14
  br label %65

; <label>:16:                                     ; preds = %6
  %17 = bitcast %struct.TValue* %1 to double*
  %18 = load double, double* %17, align 8, !tbaa !6
  %19 = add i64 %8, 9007199254740992
  %20 = icmp ult i64 %19, 18014398509481985
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %16
  %22 = sitofp i64 %8 to double
  %23 = fcmp oge double %18, %22
  br label %65

; <label>:24:                                     ; preds = %16
  %25 = tail call double @llvm.floor.f64(double %18) #10
  %26 = fcmp oge double %25, 0xC3E0000000000000
  %27 = fcmp olt double %25, 0x43E0000000000000
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = fptosi double %25 to i64
  %31 = icmp sle i64 %8, %30
  br label %65

; <label>:32:                                     ; preds = %24
  %33 = fcmp ogt double %18, 0.000000e+00
  br label %65

; <label>:34:                                     ; preds = %2
  %35 = bitcast %struct.TValue* %0 to double*
  %36 = load double, double* %35, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !2
  %39 = icmp eq i8 %38, 19
  br i1 %39, label %40, label %44

; <label>:40:                                     ; preds = %34
  %41 = bitcast %struct.TValue* %1 to double*
  %42 = load double, double* %41, align 8, !tbaa !6
  %43 = fcmp ole double %36, %42
  br label %65

; <label>:44:                                     ; preds = %34
  %45 = bitcast %struct.TValue* %1 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !6
  %47 = add i64 %46, 9007199254740992
  %48 = icmp ult i64 %47, 18014398509481985
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %44
  %50 = sitofp i64 %46 to double
  %51 = fcmp ole double %36, %50
  br label %65

; <label>:52:                                     ; preds = %44
  %53 = tail call double @llvm.floor.f64(double %36) #10
  %54 = fcmp une double %53, %36
  %55 = fadd double %53, 1.000000e+00
  %56 = select i1 %54, double %55, double %53
  %57 = fcmp oge double %56, 0xC3E0000000000000
  %58 = fcmp olt double %56, 0x43E0000000000000
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %52
  %61 = fptosi double %56 to i64
  %62 = icmp sge i64 %46, %61
  br label %65

; <label>:63:                                     ; preds = %52
  %64 = fcmp olt double %36, 0.000000e+00
  br label %65

; <label>:65:                                     ; preds = %63, %60, %49, %32, %29, %21, %40, %12
  %66 = phi i1 [ %15, %12 ], [ %43, %40 ], [ %23, %21 ], [ %33, %32 ], [ %31, %29 ], [ %51, %49 ], [ %64, %63 ], [ %62, %60 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %18 = tail call fastcc i32 @l_strcmp(%struct.TString* %15, %struct.TString* %17) #12
  %19 = icmp slt i32 %18, 1
  %20 = zext i1 %19 to i32
  br label %23

; <label>:21:                                     ; preds = %8, %3
  %22 = tail call i32 @luaT_callorderTM(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2, i32 21) #11
  br label %23

; <label>:23:                                     ; preds = %21, %13
  %24 = phi i32 [ %20, %13 ], [ %22, %21 ]
  ret i32 %24
}

; Function Attrs: minsize nounwind optsize uwtable
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
  br i1 %12, label %49, label %13

; <label>:13:                                     ; preds = %3
  %14 = and i8 %7, 15
  %15 = and i8 %9, 15
  %16 = icmp eq i8 %14, %15
  %17 = icmp eq i8 %14, 3
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %203

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
  br label %31

; <label>:26:                                     ; preds = %19
  %27 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %1, i64* nonnull %4, i32 0) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %47, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i8, i8* %8, align 8, !tbaa !2
  br label %31

; <label>:31:                                     ; preds = %29, %23
  %32 = phi i8 [ %30, %29 ], [ %9, %23 ]
  %33 = icmp eq i8 %32, 35
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = bitcast %struct.TValue* %2 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !6
  store i64 %36, i64* %5, align 8, !tbaa !9
  br label %42

; <label>:37:                                     ; preds = %31
  %38 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2, i64* nonnull %5, i32 0) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

; <label>:40:                                     ; preds = %37
  %41 = load i64, i64* %5, align 8, !tbaa !9
  br label %42

; <label>:42:                                     ; preds = %40, %34
  %43 = phi i64 [ %41, %40 ], [ %36, %34 ]
  %44 = load i64, i64* %4, align 8, !tbaa !9
  %45 = icmp eq i64 %44, %43
  %46 = zext i1 %45 to i32
  br label %47

; <label>:47:                                     ; preds = %37, %26, %42
  %48 = phi i32 [ 0, %37 ], [ 0, %26 ], [ %46, %42 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #10
  br label %203

; <label>:49:                                     ; preds = %3
  %50 = trunc i8 %7 to i6
  switch i6 %50, label %171 [
    i6 0, label %203
    i6 -29, label %51
    i6 19, label %58
    i6 1, label %65
    i6 2, label %72
    i6 -26, label %79
    i6 20, label %86
    i6 -28, label %93
    i6 7, label %99
    i6 5, label %135
  ]

; <label>:51:                                     ; preds = %49
  %52 = bitcast %struct.TValue* %1 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !6
  %54 = bitcast %struct.TValue* %2 to i64*
  %55 = load i64, i64* %54, align 8, !tbaa !6
  %56 = icmp eq i64 %53, %55
  %57 = zext i1 %56 to i32
  br label %203

; <label>:58:                                     ; preds = %49
  %59 = bitcast %struct.TValue* %1 to double*
  %60 = load double, double* %59, align 8, !tbaa !6
  %61 = bitcast %struct.TValue* %2 to double*
  %62 = load double, double* %61, align 8, !tbaa !6
  %63 = fcmp oeq double %60, %62
  %64 = zext i1 %63 to i32
  br label %203

; <label>:65:                                     ; preds = %49
  %66 = bitcast %struct.TValue* %1 to i32*
  %67 = load i32, i32* %66, align 8, !tbaa !6
  %68 = bitcast %struct.TValue* %2 to i32*
  %69 = load i32, i32* %68, align 8, !tbaa !6
  %70 = icmp eq i32 %67, %69
  %71 = zext i1 %70 to i32
  br label %203

; <label>:72:                                     ; preds = %49
  %73 = bitcast %struct.TValue* %1 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !6
  %75 = bitcast %struct.TValue* %2 to i8**
  %76 = load i8*, i8** %75, align 8, !tbaa !6
  %77 = icmp eq i8* %74, %76
  %78 = zext i1 %77 to i32
  br label %203

; <label>:79:                                     ; preds = %49
  %80 = bitcast %struct.TValue* %1 to i32 (%struct.lua_State*)**
  %81 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %80, align 8, !tbaa !6
  %82 = bitcast %struct.TValue* %2 to i32 (%struct.lua_State*)**
  %83 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %82, align 8, !tbaa !6
  %84 = icmp eq i32 (%struct.lua_State*)* %81, %83
  %85 = zext i1 %84 to i32
  br label %203

; <label>:86:                                     ; preds = %49
  %87 = bitcast %struct.TValue* %1 to %struct.TString**
  %88 = load %struct.TString*, %struct.TString** %87, align 8, !tbaa !6
  %89 = bitcast %struct.TValue* %2 to %struct.TString**
  %90 = load %struct.TString*, %struct.TString** %89, align 8, !tbaa !6
  %91 = icmp eq %struct.TString* %88, %90
  %92 = zext i1 %91 to i32
  br label %203

; <label>:93:                                     ; preds = %49
  %94 = bitcast %struct.TValue* %1 to %struct.TString**
  %95 = load %struct.TString*, %struct.TString** %94, align 8, !tbaa !6
  %96 = bitcast %struct.TValue* %2 to %struct.TString**
  %97 = load %struct.TString*, %struct.TString** %96, align 8, !tbaa !6
  %98 = tail call i32 @luaS_eqlngstr(%struct.TString* %95, %struct.TString* %97) #11
  br label %203

; <label>:99:                                     ; preds = %49
  %100 = bitcast %struct.TValue* %1 to %struct.Udata**
  %101 = load %struct.Udata*, %struct.Udata** %100, align 8, !tbaa !6
  %102 = bitcast %struct.TValue* %2 to %struct.Udata**
  %103 = load %struct.Udata*, %struct.Udata** %102, align 8, !tbaa !6
  %104 = icmp eq %struct.Udata* %101, %103
  br i1 %104, label %203, label %105

; <label>:105:                                    ; preds = %99
  %106 = icmp eq %struct.lua_State* %0, null
  br i1 %106, label %203, label %107

; <label>:107:                                    ; preds = %105
  %108 = getelementptr inbounds %struct.Udata, %struct.Udata* %101, i64 0, i32 5
  %109 = load %struct.Table*, %struct.Table** %108, align 8, !tbaa !6
  %110 = icmp eq %struct.Table* %109, null
  br i1 %110, label %125, label %111

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds %struct.Table, %struct.Table* %109, i64 0, i32 3
  %113 = load i8, i8* %112, align 2, !tbaa !12
  %114 = and i8 %113, 32
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %125

; <label>:116:                                    ; preds = %111
  %117 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %118 = load %struct.global_State*, %struct.global_State** %117, align 8, !tbaa !16
  %119 = getelementptr inbounds %struct.global_State, %struct.global_State* %118, i64 0, i32 40, i64 5
  %120 = load %struct.TString*, %struct.TString** %119, align 8, !tbaa !21
  %121 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %109, i32 5, %struct.TString* %120) #11
  %122 = icmp eq %struct.TValue* %121, null
  br i1 %122, label %123, label %186

; <label>:123:                                    ; preds = %116
  %124 = load %struct.Udata*, %struct.Udata** %102, align 8, !tbaa !6
  br label %125

; <label>:125:                                    ; preds = %123, %111, %107
  %126 = phi %struct.Udata* [ %124, %123 ], [ %103, %111 ], [ %103, %107 ]
  %127 = getelementptr inbounds %struct.Udata, %struct.Udata* %126, i64 0, i32 5
  %128 = load %struct.Table*, %struct.Table** %127, align 8, !tbaa !6
  %129 = icmp eq %struct.Table* %128, null
  br i1 %129, label %203, label %130

; <label>:130:                                    ; preds = %125
  %131 = getelementptr inbounds %struct.Table, %struct.Table* %128, i64 0, i32 3
  %132 = load i8, i8* %131, align 2, !tbaa !12
  %133 = and i8 %132, 32
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %178, label %203

; <label>:135:                                    ; preds = %49
  %136 = bitcast %struct.TValue* %1 to %struct.Table**
  %137 = load %struct.Table*, %struct.Table** %136, align 8, !tbaa !6
  %138 = bitcast %struct.TValue* %2 to %struct.Table**
  %139 = load %struct.Table*, %struct.Table** %138, align 8, !tbaa !6
  %140 = icmp eq %struct.Table* %137, %139
  br i1 %140, label %203, label %141

; <label>:141:                                    ; preds = %135
  %142 = icmp eq %struct.lua_State* %0, null
  br i1 %142, label %203, label %143

; <label>:143:                                    ; preds = %141
  %144 = getelementptr inbounds %struct.Table, %struct.Table* %137, i64 0, i32 9
  %145 = load %struct.Table*, %struct.Table** %144, align 8, !tbaa !6
  %146 = icmp eq %struct.Table* %145, null
  br i1 %146, label %161, label %147

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.Table, %struct.Table* %145, i64 0, i32 3
  %149 = load i8, i8* %148, align 2, !tbaa !12
  %150 = and i8 %149, 32
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %161

; <label>:152:                                    ; preds = %147
  %153 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %154 = load %struct.global_State*, %struct.global_State** %153, align 8, !tbaa !16
  %155 = getelementptr inbounds %struct.global_State, %struct.global_State* %154, i64 0, i32 40, i64 5
  %156 = load %struct.TString*, %struct.TString** %155, align 8, !tbaa !21
  %157 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %145, i32 5, %struct.TString* %156) #11
  %158 = icmp eq %struct.TValue* %157, null
  br i1 %158, label %159, label %186

; <label>:159:                                    ; preds = %152
  %160 = load %struct.Table*, %struct.Table** %138, align 8, !tbaa !6
  br label %161

; <label>:161:                                    ; preds = %159, %147, %143
  %162 = phi %struct.Table* [ %160, %159 ], [ %139, %147 ], [ %139, %143 ]
  %163 = getelementptr inbounds %struct.Table, %struct.Table* %162, i64 0, i32 9
  %164 = load %struct.Table*, %struct.Table** %163, align 8, !tbaa !6
  %165 = icmp eq %struct.Table* %164, null
  br i1 %165, label %203, label %166

; <label>:166:                                    ; preds = %161
  %167 = getelementptr inbounds %struct.Table, %struct.Table* %164, i64 0, i32 3
  %168 = load i8, i8* %167, align 2, !tbaa !12
  %169 = and i8 %168, 32
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %178, label %203

; <label>:171:                                    ; preds = %49
  %172 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0, i32 0
  %173 = load %struct.GCObject*, %struct.GCObject** %172, align 8, !tbaa !6
  %174 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  %175 = load %struct.GCObject*, %struct.GCObject** %174, align 8, !tbaa !6
  %176 = icmp eq %struct.GCObject* %173, %175
  %177 = zext i1 %176 to i32
  br label %203

; <label>:178:                                    ; preds = %166, %130
  %179 = phi %struct.Table* [ %128, %130 ], [ %164, %166 ]
  %180 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %181 = load %struct.global_State*, %struct.global_State** %180, align 8, !tbaa !16
  %182 = getelementptr inbounds %struct.global_State, %struct.global_State* %181, i64 0, i32 40, i64 5
  %183 = load %struct.TString*, %struct.TString** %182, align 8, !tbaa !21
  %184 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %179, i32 5, %struct.TString* %183) #11
  %185 = icmp eq %struct.TValue* %184, null
  br i1 %185, label %203, label %186

; <label>:186:                                    ; preds = %116, %152, %178
  %187 = phi %struct.TValue* [ %184, %178 ], [ %121, %116 ], [ %157, %152 ]
  %188 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %189 = load %union.StackValue*, %union.StackValue** %188, align 8, !tbaa !25
  tail call void @luaT_callTMres(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %187, %struct.TValue* nonnull %1, %struct.TValue* nonnull %2, %union.StackValue* %189) #11
  %190 = bitcast %union.StackValue** %188 to %struct.TValue**
  %191 = load %struct.TValue*, %struct.TValue** %190, align 8, !tbaa !25
  %192 = getelementptr inbounds %struct.TValue, %struct.TValue* %191, i64 0, i32 1
  %193 = load i8, i8* %192, align 8, !tbaa !6
  %194 = and i8 %193, 15
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %203, label %196

; <label>:196:                                    ; preds = %186
  %197 = icmp eq i8 %193, 1
  br i1 %197, label %198, label %203

; <label>:198:                                    ; preds = %196
  %199 = bitcast %struct.TValue* %191 to i32*
  %200 = load i32, i32* %199, align 8, !tbaa !6
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i32
  br label %203

; <label>:203:                                    ; preds = %166, %161, %130, %125, %186, %198, %196, %178, %141, %135, %105, %99, %49, %13, %171, %93, %86, %79, %72, %65, %58, %51, %47
  %204 = phi i32 [ %48, %47 ], [ %177, %171 ], [ %98, %93 ], [ %92, %86 ], [ %85, %79 ], [ %78, %72 ], [ %71, %65 ], [ %64, %58 ], [ %57, %51 ], [ 0, %13 ], [ 1, %49 ], [ 1, %99 ], [ 0, %105 ], [ 1, %135 ], [ 0, %141 ], [ 0, %178 ], [ 0, %186 ], [ 1, %196 ], [ %202, %198 ], [ 0, %125 ], [ 0, %130 ], [ 0, %161 ], [ 0, %166 ]
  ret i32 %204
}

; Function Attrs: minsize optsize
declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca [40 x i8], align 16
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %6 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !25
  br label %7

; <label>:7:                                      ; preds = %121, %2
  %8 = phi %union.StackValue* [ %6, %2 ], [ %128, %121 ]
  %9 = phi i32 [ %1, %2 ], [ %124, %121 ]
  %10 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -2
  %11 = getelementptr inbounds %union.StackValue, %union.StackValue* %10, i64 0, i32 0
  %12 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -2, i32 0, i32 1
  %13 = load i8, i8* %12, align 8, !tbaa !6
  %14 = and i8 %13, 15
  %15 = add nsw i8 %14, -3
  %16 = icmp ult i8 %15, 2
  %17 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0
  br i1 %16, label %18, label %24

; <label>:18:                                     ; preds = %7
  %19 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 -1, i32 0, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !6
  %21 = trunc i8 %20 to i4
  switch i4 %21, label %24 [
    i4 4, label %25
    i4 3, label %22
  ]

; <label>:22:                                     ; preds = %18
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %17) #11
  %23 = load i8, i8* %19, align 8, !tbaa !6
  br label %25

; <label>:24:                                     ; preds = %7, %18
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %11, %struct.TValue* nonnull %17, %union.StackValue* nonnull %10, i32 22) #11
  br label %121

; <label>:25:                                     ; preds = %18, %22
  %26 = phi i8 [ %20, %18 ], [ %23, %22 ]
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
  %35 = load i8, i8* %12, align 8, !tbaa !6
  %36 = and i8 %35, 15
  %37 = icmp eq i8 %36, 3
  br i1 %37, label %38, label %121

; <label>:38:                                     ; preds = %34
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %11) #11
  br label %121

; <label>:39:                                     ; preds = %28, %25
  %40 = load i8, i8* %12, align 8, !tbaa !6
  %41 = icmp eq i8 %40, 84
  br i1 %41, label %42, label %52

; <label>:42:                                     ; preds = %39
  %43 = bitcast %union.StackValue* %10 to %struct.TString**
  %44 = load %struct.TString*, %struct.TString** %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.TString, %struct.TString* %44, i64 0, i32 4
  %46 = load i8, i8* %45, align 1, !tbaa !6
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %42
  %49 = bitcast %struct.TValue* %17 to i64*
  %50 = bitcast %union.StackValue* %10 to i64*
  %51 = load i64, i64* %49, align 8
  store i64 %51, i64* %50, align 8
  store i8 %26, i8* %12, align 8, !tbaa !2
  br label %121

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
  %67 = sext i32 %9 to i64
  br label %68

; <label>:68:                                     ; preds = %99, %65
  %69 = phi i64 [ %101, %99 ], [ 1, %65 ]
  %70 = phi i64 [ %100, %99 ], [ %66, %65 ]
  %71 = icmp slt i64 %69, %67
  br i1 %71, label %72, label %102

; <label>:72:                                     ; preds = %68
  %73 = sub nsw i64 0, %69
  %74 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %73
  %75 = getelementptr inbounds %union.StackValue, %union.StackValue* %74, i64 -1
  %76 = getelementptr inbounds %union.StackValue, %union.StackValue* %75, i64 0, i32 0, i32 1
  %77 = load i8, i8* %76, align 8, !tbaa !6
  %78 = trunc i8 %77 to i4
  switch i4 %78, label %102 [
    i4 4, label %81
    i4 3, label %79
  ]

; <label>:79:                                     ; preds = %72
  %80 = getelementptr inbounds %union.StackValue, %union.StackValue* %75, i64 0, i32 0
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %80) #11
  br label %81

; <label>:81:                                     ; preds = %72, %79
  %82 = bitcast %union.StackValue* %75 to %struct.TString**
  %83 = load %struct.TString*, %struct.TString** %82, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.TString, %struct.TString* %83, i64 0, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !6
  %86 = icmp eq i8 %85, 20
  br i1 %86, label %87, label %91

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds %struct.TString, %struct.TString* %83, i64 0, i32 4
  %89 = load i8, i8* %88, align 1, !tbaa !6
  %90 = zext i8 %89 to i64
  br label %94

; <label>:91:                                     ; preds = %81
  %92 = getelementptr inbounds %struct.TString, %struct.TString* %83, i64 0, i32 6, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !6
  br label %94

; <label>:94:                                     ; preds = %91, %87
  %95 = phi i64 [ %90, %87 ], [ %93, %91 ]
  %96 = sub i64 9223372036854775807, %70
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %99, label %98, !prof !26

; <label>:98:                                     ; preds = %94
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #13
  unreachable

; <label>:99:                                     ; preds = %94
  %100 = add i64 %95, %70
  %101 = add nuw nsw i64 %69, 1
  br label %68

; <label>:102:                                    ; preds = %72, %68
  %103 = trunc i64 %69 to i32
  %104 = icmp ult i64 %70, 41
  br i1 %104, label %105, label %107

; <label>:105:                                    ; preds = %102
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #10
  call fastcc void @copy2buff(%union.StackValue* nonnull %8, i32 %103, i8* nonnull %5) #12
  %106 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %5, i64 %70) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #10
  br label %111

; <label>:107:                                    ; preds = %102
  %108 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %0, i64 %70) #11
  %109 = getelementptr inbounds %struct.TString, %struct.TString* %108, i64 1
  %110 = bitcast %struct.TString* %109 to i8*
  call fastcc void @copy2buff(%union.StackValue* nonnull %8, i32 %103, i8* nonnull %110) #12
  br label %111

; <label>:111:                                    ; preds = %107, %105
  %112 = phi %struct.TString* [ %106, %105 ], [ %108, %107 ]
  %113 = and i64 %69, 4294967295
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %114, i32 0
  %116 = bitcast %struct.TValue* %115 to %struct.TString**
  store %struct.TString* %112, %struct.TString** %116, align 8, !tbaa !6
  %117 = getelementptr inbounds %struct.TString, %struct.TString* %112, i64 0, i32 1
  %118 = load i8, i8* %117, align 8, !tbaa !27
  %119 = or i8 %118, 64
  %120 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %114, i32 0, i32 1
  store i8 %119, i8* %120, align 8, !tbaa !2
  br label %121

; <label>:121:                                    ; preds = %34, %38, %111, %48, %24
  %122 = phi i32 [ 2, %48 ], [ %103, %111 ], [ 2, %24 ], [ 2, %34 ], [ 2, %38 ]
  %123 = add nsw i32 %122, -1
  %124 = sub nsw i32 %9, %123
  %125 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !25
  %126 = sext i32 %123 to i64
  %127 = sub nsw i64 0, %126
  %128 = getelementptr inbounds %union.StackValue, %union.StackValue* %125, i64 %127
  store %union.StackValue* %128, %union.StackValue** %4, align 8, !tbaa !25
  %129 = icmp sgt i32 %124, 1
  br i1 %129, label %7, label %130

; <label>:130:                                    ; preds = %121
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @copy2buff(%union.StackValue* nocapture readonly, i32, i8* nocapture) unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  br label %5

; <label>:5:                                      ; preds = %22, %3
  %6 = phi i64 [ %28, %22 ], [ %4, %3 ]
  %7 = phi i64 [ %27, %22 ], [ 0, %3 ]
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
  %25 = getelementptr inbounds %struct.TString, %struct.TString* %11, i64 1
  %26 = bitcast %struct.TString* %25 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* nonnull %26, i64 %23, i32 1, i1 false)
  %27 = add i64 %23, %7
  %28 = add nsw i64 %6, -1
  %29 = icmp sgt i64 %6, 1
  br i1 %29, label %5, label %30

; <label>:30:                                     ; preds = %22
  ret void
}

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
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
  %23 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %11, i32 4, %struct.TString* %22) #11
  %24 = icmp eq %struct.TValue* %23, null
  br i1 %24, label %25, label %51

; <label>:25:                                     ; preds = %13, %7, %18
  %26 = tail call i64 @luaH_getn(%struct.Table* %9) #11
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
  %45 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* nonnull %2, i32 4) #11
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i64 0, i32 1
  %47 = load i8, i8* %46, align 8, !tbaa !2
  %48 = and i8 %47, 15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51, !prof !11

; <label>:50:                                     ; preds = %44
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* nonnull %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #13
  unreachable

; <label>:51:                                     ; preds = %18, %44
  %52 = phi %struct.TValue* [ %45, %44 ], [ %23, %18 ]
  tail call void @luaT_callTMres(%struct.lua_State* %0, %struct.TValue* %52, %struct.TValue* nonnull %2, %struct.TValue* nonnull %2, %union.StackValue* %1) #11
  br label %53

; <label>:53:                                     ; preds = %25, %51, %37, %29
  ret void
}

; Function Attrs: minsize optsize
declare hidden i64 @luaH_getn(%struct.Table*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize uwtable
define hidden i64 @luaV_idiv(%struct.lua_State*, i64, i64) local_unnamed_addr #0 {
  %4 = add i64 %2, 1
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %6, label %11, !prof !11

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %6
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #13
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

; Function Attrs: minsize nounwind optsize uwtable
define hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) local_unnamed_addr #0 {
  %4 = add i64 %2, 1
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %6, label %9, !prof !11

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %6
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #13
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

; Function Attrs: minsize nounwind optsize uwtable
define hidden double @luaV_modf(%struct.lua_State* nocapture readnone, double, double) local_unnamed_addr #0 {
  %4 = tail call double @fmod(double %1, double %2) #11
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

; Function Attrs: minsize nounwind optsize
declare double @fmod(double, double) local_unnamed_addr #6

; Function Attrs: minsize norecurse nounwind optsize readnone uwtable
define hidden i64 @luaV_shiftl(i64, i64) local_unnamed_addr #7 {
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

; Function Attrs: minsize nounwind optsize uwtable
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
  tail call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %63) #12
  br label %74

; <label>:74:                                     ; preds = %51, %73, %48, %42, %1, %13
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaV_execute(%struct.lua_State*, %struct.CallInfo*) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue, align 8
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
  %22 = alloca i64, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %27 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %28 = bitcast %struct.CallInfo* %1 to %struct.LClosure***
  %29 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %30 = bitcast %union.anon* %29 to %struct.anon*
  %31 = bitcast %union.anon* %29 to i32**
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %33 = bitcast %union.StackValue** %32 to i64*
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %35 = bitcast %union.StackValue** %34 to i64*
  %36 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %37 = bitcast i64* %36 to i32*
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %39 = bitcast %struct.TValue* %4 to i64*
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %41 = bitcast %struct.TValue* %5 to i64*
  %42 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %44 = bitcast double* %24 to i64*
  %45 = bitcast double* %25 to i64*
  %46 = bitcast double* %3 to i8*
  %47 = bitcast double* %23 to i64*
  %48 = bitcast double* %3 to i64*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %30, i64 0, i32 2
  br label %50

; <label>:50:                                     ; preds = %3225, %2
  %51 = load i32, i32* %26, align 8, !tbaa !32
  %52 = load %struct.LClosure**, %struct.LClosure*** %28, align 8, !tbaa !30
  %53 = load %struct.LClosure*, %struct.LClosure** %52, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %53, i64 0, i32 5
  %55 = load %struct.Proto*, %struct.Proto** %54, align 8, !tbaa !33
  %56 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i64 0, i32 15
  %57 = load %struct.TValue*, %struct.TValue** %56, align 8, !tbaa !35
  %58 = load i32*, i32** %31, align 8, !tbaa !6
  %59 = icmp eq i32 %51, 0
  %60 = bitcast %struct.LClosure** %52 to %union.StackValue*
  br i1 %59, label %74, label %61

; <label>:61:                                     ; preds = %50
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i64 0, i32 4
  %63 = load i8, i8* %62, align 1, !tbaa !37
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %55, i64 0, i32 16
  %67 = load i32*, i32** %66, align 8, !tbaa !38
  %68 = icmp eq i32* %58, %67
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %65
  call void @luaD_hookcall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1) #11
  br label %71

; <label>:70:                                     ; preds = %61
  store i32 1, i32* %37, align 8, !tbaa !6
  br label %74

; <label>:71:                                     ; preds = %69, %65
  store i32 1, i32* %37, align 8, !tbaa !6
  %72 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %58) #11
  %73 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  br label %74

; <label>:74:                                     ; preds = %50, %70, %71
  %75 = phi %union.StackValue* [ %73, %71 ], [ %60, %70 ], [ %60, %50 ]
  %76 = phi i32 [ %72, %71 ], [ 0, %70 ], [ 0, %50 ]
  %77 = getelementptr inbounds %union.StackValue, %union.StackValue* %75, i64 1
  %78 = getelementptr inbounds i32, i32* %58, i64 1
  %79 = load i32, i32* %58, align 4, !tbaa !31
  br label %3795

; <label>:80:                                     ; preds = %3795
  %81 = lshr i32 %3796, 16
  %82 = and i32 %81, 255
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %83, i32 0
  %85 = bitcast %struct.TValue* %84 to i64*
  %86 = bitcast %union.StackValue* %3803 to i64*
  %87 = load i64, i64* %85, align 8
  store i64 %87, i64* %86, align 8
  %88 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %83, i32 0, i32 1
  %89 = load i8, i8* %88, align 8, !tbaa !2
  %90 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %89, i8* %90, align 8, !tbaa !2
  %91 = icmp eq i32 %3798, 0
  br i1 %91, label %96, label %92

; <label>:92:                                     ; preds = %80
  %93 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %94 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %95 = getelementptr inbounds %union.StackValue, %union.StackValue* %94, i64 1
  br label %96

; <label>:96:                                     ; preds = %80, %92
  %97 = phi i32 [ %93, %92 ], [ 0, %80 ]
  %98 = phi %union.StackValue* [ %95, %92 ], [ %3797, %80 ]
  %99 = getelementptr inbounds i32, i32* %3799, i64 1
  %100 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:101:                                    ; preds = %96, %121, %137, %153, %175, %193, %214, %238, %280, %326, %399, %453, %496, %568, %664, %741, %807, %840, %893, %934, %973, %1014, %1053, %1091, %1129, %1169, %1230, %1289, %1350, %1409, %1457, %1505, %1565, %1624, %1683, %1742, %1801, %1849, %1897, %1957, %1999, %2041, %2083, %2133, %2183, %2233, %2281, %2321, %2372, %2422, %2456, %2492, %2522, %2539, %2561, %2575, %2586, %2602, %2632, %2696, %2760, %2792, %2838, %2890, %2942, %2994, %3046, %3088, %3139, %3160, %3370, %3522, %3590, %3672, %3746, %3761, %3777, %3789
  %102 = phi i32 [ %100, %96 ], [ %125, %121 ], [ %141, %137 ], [ %157, %153 ], [ %179, %175 ], [ %197, %193 ], [ %218, %214 ], [ %242, %238 ], [ %284, %280 ], [ %330, %326 ], [ %403, %399 ], [ %457, %453 ], [ %500, %496 ], [ %572, %568 ], [ %668, %664 ], [ %745, %741 ], [ %811, %807 ], [ %844, %840 ], [ %897, %893 ], [ %938, %934 ], [ %977, %973 ], [ %1018, %1014 ], [ %1057, %1053 ], [ %1095, %1091 ], [ %1133, %1129 ], [ %1173, %1169 ], [ %1234, %1230 ], [ %1293, %1289 ], [ %1354, %1350 ], [ %1413, %1409 ], [ %1461, %1457 ], [ %1509, %1505 ], [ %1569, %1565 ], [ %1628, %1624 ], [ %1687, %1683 ], [ %1746, %1742 ], [ %1805, %1801 ], [ %1853, %1849 ], [ %1901, %1897 ], [ %1961, %1957 ], [ %2003, %1999 ], [ %2045, %2041 ], [ %2087, %2083 ], [ %2137, %2133 ], [ %2187, %2183 ], [ %2237, %2233 ], [ %2285, %2281 ], [ %2325, %2321 ], [ %2376, %2372 ], [ %2426, %2422 ], [ %2460, %2456 ], [ %2496, %2492 ], [ %2526, %2522 ], [ %2543, %2539 ], [ %2565, %2561 ], [ %2579, %2575 ], [ %2590, %2586 ], [ %2606, %2602 ], [ %2636, %2632 ], [ %2700, %2696 ], [ %2764, %2760 ], [ %2796, %2792 ], [ %2842, %2838 ], [ %2894, %2890 ], [ %2946, %2942 ], [ %2998, %2994 ], [ %3050, %3046 ], [ %3092, %3088 ], [ %3143, %3139 ], [ %3164, %3160 ], [ %3374, %3370 ], [ %3526, %3522 ], [ %3594, %3590 ], [ %3676, %3672 ], [ %3750, %3746 ], [ %3765, %3761 ], [ %3782, %3777 ], [ %3793, %3789 ]
  %103 = phi %union.StackValue* [ %98, %96 ], [ %123, %121 ], [ %139, %137 ], [ %155, %153 ], [ %177, %175 ], [ %195, %193 ], [ %216, %214 ], [ %240, %238 ], [ %282, %280 ], [ %328, %326 ], [ %401, %399 ], [ %455, %453 ], [ %498, %496 ], [ %570, %568 ], [ %666, %664 ], [ %743, %741 ], [ %809, %807 ], [ %842, %840 ], [ %895, %893 ], [ %936, %934 ], [ %975, %973 ], [ %1016, %1014 ], [ %1055, %1053 ], [ %1093, %1091 ], [ %1131, %1129 ], [ %1171, %1169 ], [ %1232, %1230 ], [ %1291, %1289 ], [ %1352, %1350 ], [ %1411, %1409 ], [ %1459, %1457 ], [ %1507, %1505 ], [ %1567, %1565 ], [ %1626, %1624 ], [ %1685, %1683 ], [ %1744, %1742 ], [ %1803, %1801 ], [ %1851, %1849 ], [ %1899, %1897 ], [ %1959, %1957 ], [ %2001, %1999 ], [ %2043, %2041 ], [ %2085, %2083 ], [ %2135, %2133 ], [ %2185, %2183 ], [ %2235, %2233 ], [ %2283, %2281 ], [ %2323, %2321 ], [ %2374, %2372 ], [ %2424, %2422 ], [ %2458, %2456 ], [ %2494, %2492 ], [ %2524, %2522 ], [ %2541, %2539 ], [ %2563, %2561 ], [ %2577, %2575 ], [ %2588, %2586 ], [ %2604, %2602 ], [ %2634, %2632 ], [ %2698, %2696 ], [ %2762, %2760 ], [ %2794, %2792 ], [ %2840, %2838 ], [ %2892, %2890 ], [ %2944, %2942 ], [ %2996, %2994 ], [ %3048, %3046 ], [ %3090, %3088 ], [ %3141, %3139 ], [ %3162, %3160 ], [ %3372, %3370 ], [ %3524, %3522 ], [ %3592, %3590 ], [ %3674, %3672 ], [ %3748, %3746 ], [ %3763, %3761 ], [ %3781, %3777 ], [ %3791, %3789 ]
  %104 = phi i32 [ %97, %96 ], [ %122, %121 ], [ %138, %137 ], [ %154, %153 ], [ %176, %175 ], [ %194, %193 ], [ %215, %214 ], [ %239, %238 ], [ %281, %280 ], [ %327, %326 ], [ %400, %399 ], [ %454, %453 ], [ %497, %496 ], [ %569, %568 ], [ %665, %664 ], [ %742, %741 ], [ %808, %807 ], [ %841, %840 ], [ %894, %893 ], [ %935, %934 ], [ %974, %973 ], [ %1015, %1014 ], [ %1054, %1053 ], [ %1092, %1091 ], [ %1130, %1129 ], [ %1170, %1169 ], [ %1231, %1230 ], [ %1290, %1289 ], [ %1351, %1350 ], [ %1410, %1409 ], [ %1458, %1457 ], [ %1506, %1505 ], [ %1566, %1565 ], [ %1625, %1624 ], [ %1684, %1683 ], [ %1743, %1742 ], [ %1802, %1801 ], [ %1850, %1849 ], [ %1898, %1897 ], [ %1958, %1957 ], [ %2000, %1999 ], [ %2042, %2041 ], [ %2084, %2083 ], [ %2134, %2133 ], [ %2184, %2183 ], [ %2234, %2233 ], [ %2282, %2281 ], [ %2322, %2321 ], [ %2373, %2372 ], [ %2423, %2422 ], [ %2457, %2456 ], [ %2493, %2492 ], [ %2523, %2522 ], [ %2540, %2539 ], [ %2562, %2561 ], [ %2576, %2575 ], [ %2587, %2586 ], [ %2603, %2602 ], [ %2633, %2632 ], [ %2697, %2696 ], [ %2761, %2760 ], [ %2793, %2792 ], [ %2839, %2838 ], [ %2891, %2890 ], [ %2943, %2942 ], [ %2995, %2994 ], [ %3047, %3046 ], [ %3089, %3088 ], [ %3140, %3139 ], [ %3161, %3160 ], [ %3371, %3370 ], [ %3523, %3522 ], [ %3591, %3590 ], [ %3673, %3672 ], [ %3747, %3746 ], [ %3762, %3761 ], [ %3779, %3777 ], [ %3790, %3789 ]
  %105 = phi i32* [ %99, %96 ], [ %124, %121 ], [ %140, %137 ], [ %156, %153 ], [ %178, %175 ], [ %196, %193 ], [ %217, %214 ], [ %241, %238 ], [ %283, %280 ], [ %329, %326 ], [ %402, %399 ], [ %456, %453 ], [ %499, %496 ], [ %571, %568 ], [ %667, %664 ], [ %744, %741 ], [ %810, %807 ], [ %843, %840 ], [ %896, %893 ], [ %937, %934 ], [ %976, %973 ], [ %1017, %1014 ], [ %1056, %1053 ], [ %1094, %1091 ], [ %1132, %1129 ], [ %1172, %1169 ], [ %1233, %1230 ], [ %1292, %1289 ], [ %1353, %1350 ], [ %1412, %1409 ], [ %1460, %1457 ], [ %1508, %1505 ], [ %1568, %1565 ], [ %1627, %1624 ], [ %1686, %1683 ], [ %1745, %1742 ], [ %1804, %1801 ], [ %1852, %1849 ], [ %1900, %1897 ], [ %1960, %1957 ], [ %2002, %1999 ], [ %2044, %2041 ], [ %2086, %2083 ], [ %2136, %2133 ], [ %2186, %2183 ], [ %2236, %2233 ], [ %2284, %2281 ], [ %2324, %2321 ], [ %2375, %2372 ], [ %2425, %2422 ], [ %2459, %2456 ], [ %2495, %2492 ], [ %2525, %2522 ], [ %2542, %2539 ], [ %2564, %2561 ], [ %2578, %2575 ], [ %2589, %2586 ], [ %2605, %2602 ], [ %2635, %2632 ], [ %2699, %2696 ], [ %2763, %2760 ], [ %2795, %2792 ], [ %2841, %2838 ], [ %2893, %2890 ], [ %2945, %2942 ], [ %2997, %2994 ], [ %3049, %3046 ], [ %3091, %3088 ], [ %3142, %3139 ], [ %3163, %3160 ], [ %3373, %3370 ], [ %3525, %3522 ], [ %3593, %3590 ], [ %3675, %3672 ], [ %3749, %3746 ], [ %3764, %3761 ], [ %3778, %3777 ], [ %3792, %3789 ]
  br label %3795

; <label>:106:                                    ; preds = %3795
  %107 = lshr i32 %3796, 15
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %108
  %110 = bitcast %struct.TValue* %109 to i64*
  %111 = bitcast %union.StackValue* %3803 to i64*
  %112 = load i64, i64* %110, align 8
  store i64 %112, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %108, i32 1
  %114 = load i8, i8* %113, align 8, !tbaa !2
  %115 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %114, i8* %115, align 8, !tbaa !2
  %116 = icmp eq i32 %3798, 0
  br i1 %116, label %121, label %117

; <label>:117:                                    ; preds = %106
  %118 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %119 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %120 = getelementptr inbounds %union.StackValue, %union.StackValue* %119, i64 1
  br label %121

; <label>:121:                                    ; preds = %106, %117
  %122 = phi i32 [ %118, %117 ], [ 0, %106 ]
  %123 = phi %union.StackValue* [ %120, %117 ], [ %3797, %106 ]
  %124 = getelementptr inbounds i32, i32* %3799, i64 1
  %125 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:126:                                    ; preds = %3795
  %127 = lshr i32 %3796, 15
  %128 = add nsw i32 %127, -65535
  %129 = sext i32 %128 to i64
  %130 = bitcast %union.StackValue* %3803 to i64*
  store i64 %129, i64* %130, align 8, !tbaa !6
  %131 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %131, align 8, !tbaa !2
  %132 = icmp eq i32 %3798, 0
  br i1 %132, label %137, label %133

; <label>:133:                                    ; preds = %126
  %134 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %135 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %136 = getelementptr inbounds %union.StackValue, %union.StackValue* %135, i64 1
  br label %137

; <label>:137:                                    ; preds = %126, %133
  %138 = phi i32 [ %134, %133 ], [ 0, %126 ]
  %139 = phi %union.StackValue* [ %136, %133 ], [ %3797, %126 ]
  %140 = getelementptr inbounds i32, i32* %3799, i64 1
  %141 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:142:                                    ; preds = %3795
  %143 = lshr i32 %3796, 15
  %144 = add nsw i32 %143, -65535
  %145 = sitofp i32 %144 to double
  %146 = bitcast %union.StackValue* %3803 to double*
  store double %145, double* %146, align 8, !tbaa !6
  %147 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %147, align 8, !tbaa !2
  %148 = icmp eq i32 %3798, 0
  br i1 %148, label %153, label %149

; <label>:149:                                    ; preds = %142
  %150 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %151 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %152 = getelementptr inbounds %union.StackValue, %union.StackValue* %151, i64 1
  br label %153

; <label>:153:                                    ; preds = %142, %149
  %154 = phi i32 [ %150, %149 ], [ 0, %142 ]
  %155 = phi %union.StackValue* [ %152, %149 ], [ %3797, %142 ]
  %156 = getelementptr inbounds i32, i32* %3799, i64 1
  %157 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:158:                                    ; preds = %3795
  %159 = load i32, i32* %3799, align 4, !tbaa !31
  %160 = lshr i32 %159, 7
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %161
  %163 = getelementptr inbounds i32, i32* %3799, i64 1
  %164 = bitcast %struct.TValue* %162 to i64*
  %165 = bitcast %union.StackValue* %3803 to i64*
  %166 = load i64, i64* %164, align 8
  store i64 %166, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %161, i32 1
  %168 = load i8, i8* %167, align 8, !tbaa !2
  %169 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %168, i8* %169, align 8, !tbaa !2
  %170 = icmp eq i32 %3798, 0
  br i1 %170, label %175, label %171

; <label>:171:                                    ; preds = %158
  %172 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %163) #11
  %173 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %174 = getelementptr inbounds %union.StackValue, %union.StackValue* %173, i64 1
  br label %175

; <label>:175:                                    ; preds = %158, %171
  %176 = phi i32 [ %172, %171 ], [ 0, %158 ]
  %177 = phi %union.StackValue* [ %174, %171 ], [ %3797, %158 ]
  %178 = getelementptr inbounds i32, i32* %3799, i64 2
  %179 = load i32, i32* %163, align 4, !tbaa !31
  br label %101

; <label>:180:                                    ; preds = %3795
  %181 = lshr i32 %3796, 16
  %182 = and i32 %181, 255
  %183 = bitcast %union.StackValue* %3803 to i32*
  store i32 %182, i32* %183, align 8, !tbaa !6
  %184 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 1, i8* %184, align 8, !tbaa !2
  %185 = icmp ugt i32 %3796, 16777215
  %186 = getelementptr inbounds i32, i32* %3799, i64 1
  %187 = select i1 %185, i32* %186, i32* %3799
  %188 = icmp eq i32 %3798, 0
  br i1 %188, label %193, label %189

; <label>:189:                                    ; preds = %180
  %190 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %187) #11
  %191 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %192 = getelementptr inbounds %union.StackValue, %union.StackValue* %191, i64 1
  br label %193

; <label>:193:                                    ; preds = %180, %189
  %194 = phi i32 [ %190, %189 ], [ 0, %180 ]
  %195 = phi %union.StackValue* [ %192, %189 ], [ %3797, %180 ]
  %196 = getelementptr inbounds i32, i32* %187, i64 1
  %197 = load i32, i32* %187, align 4, !tbaa !31
  br label %101

; <label>:198:                                    ; preds = %3795
  %199 = lshr i32 %3796, 16
  %200 = and i32 %199, 255
  br label %201

; <label>:201:                                    ; preds = %201, %198
  %202 = phi i32 [ %200, %198 ], [ %206, %201 ]
  %203 = phi %union.StackValue* [ %3803, %198 ], [ %204, %201 ]
  %204 = getelementptr inbounds %union.StackValue, %union.StackValue* %203, i64 1
  %205 = getelementptr inbounds %union.StackValue, %union.StackValue* %203, i64 0, i32 0, i32 1
  store i8 0, i8* %205, align 8, !tbaa !6
  %206 = add nsw i32 %202, -1
  %207 = icmp eq i32 %202, 0
  br i1 %207, label %208, label %201

; <label>:208:                                    ; preds = %201
  %209 = icmp eq i32 %3798, 0
  br i1 %209, label %214, label %210

; <label>:210:                                    ; preds = %208
  %211 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3799) #11
  %212 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %213 = getelementptr inbounds %union.StackValue, %union.StackValue* %212, i64 1
  br label %214

; <label>:214:                                    ; preds = %208, %210
  %215 = phi i32 [ %211, %210 ], [ 0, %208 ]
  %216 = phi %union.StackValue* [ %213, %210 ], [ %3797, %208 ]
  %217 = getelementptr inbounds i32, i32* %3799, i64 1
  %218 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:219:                                    ; preds = %3795
  %220 = lshr i32 %3796, 16
  %221 = and i32 %220, 255
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %53, i64 0, i32 6, i64 %222
  %224 = load %struct.UpVal*, %struct.UpVal** %223, align 8, !tbaa !21
  %225 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %224, i64 0, i32 3
  %226 = load %struct.TValue*, %struct.TValue** %225, align 8, !tbaa !39
  %227 = bitcast %struct.TValue* %226 to i64*
  %228 = bitcast %union.StackValue* %3803 to i64*
  %229 = load i64, i64* %227, align 8
  store i64 %229, i64* %228, align 8
  %230 = getelementptr inbounds %struct.TValue, %struct.TValue* %226, i64 0, i32 1
  %231 = load i8, i8* %230, align 8, !tbaa !2
  %232 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %231, i8* %232, align 8, !tbaa !2
  %233 = icmp eq i32 %3798, 0
  br i1 %233, label %238, label %234

; <label>:234:                                    ; preds = %219
  %235 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %236 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %237 = getelementptr inbounds %union.StackValue, %union.StackValue* %236, i64 1
  br label %238

; <label>:238:                                    ; preds = %219, %234
  %239 = phi i32 [ %235, %234 ], [ 0, %219 ]
  %240 = phi %union.StackValue* [ %237, %234 ], [ %3797, %219 ]
  %241 = getelementptr inbounds i32, i32* %3799, i64 1
  %242 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:243:                                    ; preds = %3795
  %244 = lshr i32 %3796, 16
  %245 = and i32 %244, 255
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %53, i64 0, i32 6, i64 %246
  %248 = load %struct.UpVal*, %struct.UpVal** %247, align 8, !tbaa !21
  %249 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %248, i64 0, i32 3
  %250 = load %struct.TValue*, %struct.TValue** %249, align 8, !tbaa !39
  %251 = bitcast %union.StackValue* %3803 to i64*
  %252 = bitcast %struct.TValue* %250 to i64*
  %253 = load i64, i64* %251, align 8
  store i64 %253, i64* %252, align 8
  %254 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %255 = load i8, i8* %254, align 8, !tbaa !2
  %256 = getelementptr inbounds %struct.TValue, %struct.TValue* %250, i64 0, i32 1
  store i8 %255, i8* %256, align 8, !tbaa !2
  %257 = load i8, i8* %254, align 8, !tbaa !6
  %258 = and i8 %257, 64
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %274, label %260

; <label>:260:                                    ; preds = %243
  %261 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %248, i64 0, i32 2
  %262 = load i8, i8* %261, align 1, !tbaa !41
  %263 = and i8 %262, 32
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %274, label %265

; <label>:265:                                    ; preds = %260
  %266 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0, i32 0, i32 0
  %267 = load %struct.GCObject*, %struct.GCObject** %266, align 8, !tbaa !6
  %268 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %267, i64 0, i32 2
  %269 = load i8, i8* %268, align 1, !tbaa !23
  %270 = and i8 %269, 24
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %274, label %272

; <label>:272:                                    ; preds = %265
  %273 = bitcast %struct.UpVal* %248 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* %273, %struct.GCObject* %267) #11
  br label %274

; <label>:274:                                    ; preds = %265, %260, %243, %272
  %275 = icmp eq i32 %3798, 0
  br i1 %275, label %280, label %276

; <label>:276:                                    ; preds = %274
  %277 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %278 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %279 = getelementptr inbounds %union.StackValue, %union.StackValue* %278, i64 1
  br label %280

; <label>:280:                                    ; preds = %274, %276
  %281 = phi i32 [ %277, %276 ], [ 0, %274 ]
  %282 = phi %union.StackValue* [ %279, %276 ], [ %3797, %274 ]
  %283 = getelementptr inbounds i32, i32* %3799, i64 1
  %284 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:285:                                    ; preds = %3795
  %286 = lshr i32 %3796, 16
  %287 = and i32 %286, 255
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %53, i64 0, i32 6, i64 %288
  %290 = load %struct.UpVal*, %struct.UpVal** %289, align 8, !tbaa !21
  %291 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %290, i64 0, i32 3
  %292 = load %struct.TValue*, %struct.TValue** %291, align 8, !tbaa !39
  %293 = lshr i32 %3796, 24
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %294
  %296 = getelementptr inbounds %struct.TValue, %struct.TValue* %292, i64 0, i32 1
  %297 = load i8, i8* %296, align 8, !tbaa !2
  %298 = icmp eq i8 %297, 69
  br i1 %298, label %299, label %315

; <label>:299:                                    ; preds = %285
  %300 = bitcast %struct.TValue* %295 to %struct.TString**
  %301 = load %struct.TString*, %struct.TString** %300, align 8, !tbaa !6
  %302 = bitcast %struct.TValue* %292 to %struct.Table**
  %303 = load %struct.Table*, %struct.Table** %302, align 8, !tbaa !6
  %304 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %303, %struct.TString* %301) #11
  %305 = getelementptr inbounds %struct.TValue, %struct.TValue* %304, i64 0, i32 1
  %306 = load i8, i8* %305, align 8, !tbaa !2
  %307 = and i8 %306, 15
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %315, label %309

; <label>:309:                                    ; preds = %299
  %310 = bitcast %struct.TValue* %304 to i64*
  %311 = bitcast %union.StackValue* %3803 to i64*
  %312 = load i64, i64* %310, align 8
  store i64 %312, i64* %311, align 8
  %313 = load i8, i8* %305, align 8, !tbaa !2
  %314 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %313, i8* %314, align 8, !tbaa !2
  br label %319

; <label>:315:                                    ; preds = %285, %299
  %316 = phi %struct.TValue* [ %304, %299 ], [ null, %285 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %317 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %317, i64* %35, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %292, %struct.TValue* %295, %union.StackValue* %3803, %struct.TValue* %316) #12
  %318 = load i32, i32* %37, align 8, !tbaa !6
  br label %319

; <label>:319:                                    ; preds = %315, %309
  %320 = phi i32 [ %3798, %309 ], [ %318, %315 ]
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %326, label %322

; <label>:322:                                    ; preds = %319
  %323 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %324 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %325 = getelementptr inbounds %union.StackValue, %union.StackValue* %324, i64 1
  br label %326

; <label>:326:                                    ; preds = %319, %322
  %327 = phi i32 [ %323, %322 ], [ 0, %319 ]
  %328 = phi %union.StackValue* [ %325, %322 ], [ %3797, %319 ]
  %329 = getelementptr inbounds i32, i32* %3799, i64 1
  %330 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:331:                                    ; preds = %3795
  %332 = lshr i32 %3796, 16
  %333 = and i32 %332, 255
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %334, i32 0
  %336 = lshr i32 %3796, 24
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %337, i32 0
  %339 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %337, i32 0, i32 1
  %340 = load i8, i8* %339, align 8, !tbaa !2
  %341 = icmp eq i8 %340, 35
  br i1 %341, label %342, label %368

; <label>:342:                                    ; preds = %331
  %343 = bitcast %struct.TValue* %338 to i64*
  %344 = load i64, i64* %343, align 8, !tbaa !6
  %345 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %334, i32 0, i32 1
  %346 = load i8, i8* %345, align 8, !tbaa !2
  %347 = icmp eq i8 %346, 69
  br i1 %347, label %348, label %388

; <label>:348:                                    ; preds = %342
  %349 = add i64 %344, -1
  %350 = bitcast %struct.TValue* %335 to %struct.Table**
  %351 = load %struct.Table*, %struct.Table** %350, align 8, !tbaa !6
  %352 = getelementptr inbounds %struct.Table, %struct.Table* %351, i64 0, i32 5
  %353 = load i32, i32* %352, align 4, !tbaa !6
  %354 = zext i32 %353 to i64
  %355 = icmp ult i64 %349, %354
  br i1 %355, label %356, label %360

; <label>:356:                                    ; preds = %348
  %357 = getelementptr inbounds %struct.Table, %struct.Table* %351, i64 0, i32 6
  %358 = load %struct.TValue*, %struct.TValue** %357, align 8, !tbaa !6
  %359 = getelementptr inbounds %struct.TValue, %struct.TValue* %358, i64 %349
  br label %362

; <label>:360:                                    ; preds = %348
  %361 = call %struct.TValue* @luaH_getint(%struct.Table* %351, i64 %344) #11
  br label %362

; <label>:362:                                    ; preds = %356, %360
  %363 = phi %struct.TValue* [ %359, %356 ], [ %361, %360 ]
  %364 = getelementptr inbounds %struct.TValue, %struct.TValue* %363, i64 0, i32 1
  %365 = load i8, i8* %364, align 8, !tbaa !2
  %366 = and i8 %365, 15
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %388, label %380

; <label>:368:                                    ; preds = %331
  %369 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %334, i32 0, i32 1
  %370 = load i8, i8* %369, align 8, !tbaa !2
  %371 = icmp eq i8 %370, 69
  br i1 %371, label %372, label %388

; <label>:372:                                    ; preds = %368
  %373 = bitcast %struct.TValue* %335 to %struct.Table**
  %374 = load %struct.Table*, %struct.Table** %373, align 8, !tbaa !6
  %375 = call %struct.TValue* @luaH_get(%struct.Table* %374, %struct.TValue* nonnull %338) #11
  %376 = getelementptr inbounds %struct.TValue, %struct.TValue* %375, i64 0, i32 1
  %377 = load i8, i8* %376, align 8, !tbaa !2
  %378 = and i8 %377, 15
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %388, label %380

; <label>:380:                                    ; preds = %362, %372
  %381 = phi i8* [ %364, %362 ], [ %376, %372 ]
  %382 = phi %struct.TValue* [ %363, %362 ], [ %375, %372 ]
  %383 = bitcast %struct.TValue* %382 to i64*
  %384 = bitcast %union.StackValue* %3803 to i64*
  %385 = load i64, i64* %383, align 8
  store i64 %385, i64* %384, align 8
  %386 = load i8, i8* %381, align 8, !tbaa !2
  %387 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %386, i8* %387, align 8, !tbaa !2
  br label %392

; <label>:388:                                    ; preds = %342, %368, %362, %372
  %389 = phi %struct.TValue* [ %363, %362 ], [ %375, %372 ], [ null, %368 ], [ null, %342 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %390 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %390, i64* %35, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* nonnull %335, %struct.TValue* nonnull %338, %union.StackValue* %3803, %struct.TValue* %389) #12
  %391 = load i32, i32* %37, align 8, !tbaa !6
  br label %392

; <label>:392:                                    ; preds = %388, %380
  %393 = phi i32 [ %3798, %380 ], [ %391, %388 ]
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %399, label %395

; <label>:395:                                    ; preds = %392
  %396 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %397 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %398 = getelementptr inbounds %union.StackValue, %union.StackValue* %397, i64 1
  br label %399

; <label>:399:                                    ; preds = %392, %395
  %400 = phi i32 [ %396, %395 ], [ 0, %392 ]
  %401 = phi %union.StackValue* [ %398, %395 ], [ %3797, %392 ]
  %402 = getelementptr inbounds i32, i32* %3799, i64 1
  %403 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:404:                                    ; preds = %3795
  %405 = lshr i32 %3796, 16
  %406 = and i32 %405, 255
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %407, i32 0
  %409 = lshr i32 %3796, 24
  %410 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %407, i32 0, i32 1
  %411 = load i8, i8* %410, align 8, !tbaa !2
  %412 = icmp eq i8 %411, 69
  %413 = zext i32 %409 to i64
  br i1 %412, label %414, label %442

; <label>:414:                                    ; preds = %404
  %415 = add nsw i64 %413, -1
  %416 = bitcast %struct.TValue* %408 to %struct.Table**
  %417 = load %struct.Table*, %struct.Table** %416, align 8, !tbaa !6
  %418 = getelementptr inbounds %struct.Table, %struct.Table* %417, i64 0, i32 5
  %419 = load i32, i32* %418, align 4, !tbaa !6
  %420 = zext i32 %419 to i64
  %421 = icmp ult i64 %415, %420
  br i1 %421, label %422, label %428

; <label>:422:                                    ; preds = %414
  %423 = getelementptr inbounds %struct.Table, %struct.Table* %417, i64 0, i32 6
  %424 = load %struct.TValue*, %struct.TValue** %423, align 8, !tbaa !6
  %425 = add nsw i32 %409, -1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TValue, %struct.TValue* %424, i64 %426
  br label %430

; <label>:428:                                    ; preds = %414
  %429 = call %struct.TValue* @luaH_getint(%struct.Table* %417, i64 %413) #11
  br label %430

; <label>:430:                                    ; preds = %428, %422
  %431 = phi %struct.TValue* [ %427, %422 ], [ %429, %428 ]
  %432 = getelementptr inbounds %struct.TValue, %struct.TValue* %431, i64 0, i32 1
  %433 = load i8, i8* %432, align 8, !tbaa !2
  %434 = and i8 %433, 15
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %442, label %436

; <label>:436:                                    ; preds = %430
  %437 = bitcast %struct.TValue* %431 to i64*
  %438 = bitcast %union.StackValue* %3803 to i64*
  %439 = load i64, i64* %437, align 8
  store i64 %439, i64* %438, align 8
  %440 = load i8, i8* %432, align 8, !tbaa !2
  %441 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %440, i8* %441, align 8, !tbaa !2
  br label %446

; <label>:442:                                    ; preds = %404, %430
  %443 = phi %struct.TValue* [ %431, %430 ], [ null, %404 ]
  store i64 %413, i64* %39, align 8, !tbaa !6
  store i8 35, i8* %40, align 8, !tbaa !2
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %444 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %444, i64* %35, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %408, %struct.TValue* nonnull %4, %union.StackValue* %3803, %struct.TValue* %443) #12
  %445 = load i32, i32* %37, align 8, !tbaa !6
  br label %446

; <label>:446:                                    ; preds = %442, %436
  %447 = phi i32 [ %3798, %436 ], [ %445, %442 ]
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %453, label %449

; <label>:449:                                    ; preds = %446
  %450 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %451 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %452 = getelementptr inbounds %union.StackValue, %union.StackValue* %451, i64 1
  br label %453

; <label>:453:                                    ; preds = %446, %449
  %454 = phi i32 [ %450, %449 ], [ 0, %446 ]
  %455 = phi %union.StackValue* [ %452, %449 ], [ %3797, %446 ]
  %456 = getelementptr inbounds i32, i32* %3799, i64 1
  %457 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:458:                                    ; preds = %3795
  %459 = lshr i32 %3796, 16
  %460 = and i32 %459, 255
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %461, i32 0
  %463 = lshr i32 %3796, 24
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %464
  %466 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %461, i32 0, i32 1
  %467 = load i8, i8* %466, align 8, !tbaa !2
  %468 = icmp eq i8 %467, 69
  br i1 %468, label %469, label %485

; <label>:469:                                    ; preds = %458
  %470 = bitcast %struct.TValue* %465 to %struct.TString**
  %471 = load %struct.TString*, %struct.TString** %470, align 8, !tbaa !6
  %472 = bitcast %struct.TValue* %462 to %struct.Table**
  %473 = load %struct.Table*, %struct.Table** %472, align 8, !tbaa !6
  %474 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %473, %struct.TString* %471) #11
  %475 = getelementptr inbounds %struct.TValue, %struct.TValue* %474, i64 0, i32 1
  %476 = load i8, i8* %475, align 8, !tbaa !2
  %477 = and i8 %476, 15
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %485, label %479

; <label>:479:                                    ; preds = %469
  %480 = bitcast %struct.TValue* %474 to i64*
  %481 = bitcast %union.StackValue* %3803 to i64*
  %482 = load i64, i64* %480, align 8
  store i64 %482, i64* %481, align 8
  %483 = load i8, i8* %475, align 8, !tbaa !2
  %484 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %483, i8* %484, align 8, !tbaa !2
  br label %489

; <label>:485:                                    ; preds = %458, %469
  %486 = phi %struct.TValue* [ %474, %469 ], [ null, %458 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %487 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %487, i64* %35, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %462, %struct.TValue* %465, %union.StackValue* %3803, %struct.TValue* %486) #12
  %488 = load i32, i32* %37, align 8, !tbaa !6
  br label %489

; <label>:489:                                    ; preds = %485, %479
  %490 = phi i32 [ %3798, %479 ], [ %488, %485 ]
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %496, label %492

; <label>:492:                                    ; preds = %489
  %493 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %494 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %495 = getelementptr inbounds %union.StackValue, %union.StackValue* %494, i64 1
  br label %496

; <label>:496:                                    ; preds = %489, %492
  %497 = phi i32 [ %493, %492 ], [ 0, %489 ]
  %498 = phi %union.StackValue* [ %495, %492 ], [ %3797, %489 ]
  %499 = getelementptr inbounds i32, i32* %3799, i64 1
  %500 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:501:                                    ; preds = %3795
  %502 = lshr i32 %3796, 7
  %503 = and i32 %502, 255
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %53, i64 0, i32 6, i64 %504
  %506 = load %struct.UpVal*, %struct.UpVal** %505, align 8, !tbaa !21
  %507 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %506, i64 0, i32 3
  %508 = load %struct.TValue*, %struct.TValue** %507, align 8, !tbaa !39
  %509 = lshr i32 %3796, 16
  %510 = and i32 %509, 255
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %511
  %513 = trunc i32 %3796 to i16
  %514 = icmp slt i16 %513, 0
  %515 = lshr i32 %3796, 24
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %516
  %518 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %516, i32 0
  %519 = select i1 %514, %struct.TValue* %517, %struct.TValue* %518
  %520 = getelementptr inbounds %struct.TValue, %struct.TValue* %508, i64 0, i32 1
  %521 = load i8, i8* %520, align 8, !tbaa !2
  %522 = icmp eq i8 %521, 69
  br i1 %522, label %523, label %557

; <label>:523:                                    ; preds = %501
  %524 = bitcast %struct.TValue* %512 to %struct.TString**
  %525 = load %struct.TString*, %struct.TString** %524, align 8, !tbaa !6
  %526 = getelementptr inbounds %struct.TValue, %struct.TValue* %508, i64 0, i32 0, i32 0
  %527 = bitcast %struct.TValue* %508 to %struct.Table**
  %528 = load %struct.Table*, %struct.Table** %527, align 8, !tbaa !6
  %529 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %528, %struct.TString* %525) #11
  %530 = getelementptr inbounds %struct.TValue, %struct.TValue* %529, i64 0, i32 1
  %531 = load i8, i8* %530, align 8, !tbaa !2
  %532 = and i8 %531, 15
  %533 = icmp eq i8 %532, 0
  br i1 %533, label %557, label %534

; <label>:534:                                    ; preds = %523
  %535 = bitcast %struct.TValue* %519 to i64*
  %536 = bitcast %struct.TValue* %529 to i64*
  %537 = load i64, i64* %535, align 8
  store i64 %537, i64* %536, align 8
  %538 = getelementptr inbounds %struct.TValue, %struct.TValue* %519, i64 0, i32 1
  %539 = load i8, i8* %538, align 8, !tbaa !2
  store i8 %539, i8* %530, align 8, !tbaa !2
  %540 = load i8, i8* %538, align 8, !tbaa !2
  %541 = and i8 %540, 64
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %561, label %543

; <label>:543:                                    ; preds = %534
  %544 = load %struct.GCObject*, %struct.GCObject** %526, align 8, !tbaa !6
  %545 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %544, i64 0, i32 2
  %546 = load i8, i8* %545, align 1, !tbaa !23
  %547 = and i8 %546, 32
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %561, label %549

; <label>:549:                                    ; preds = %543
  %550 = getelementptr inbounds %struct.TValue, %struct.TValue* %519, i64 0, i32 0, i32 0
  %551 = load %struct.GCObject*, %struct.GCObject** %550, align 8, !tbaa !6
  %552 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %551, i64 0, i32 2
  %553 = load i8, i8* %552, align 1, !tbaa !23
  %554 = and i8 %553, 24
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %561, label %556

; <label>:556:                                    ; preds = %549
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %544) #11
  br label %561

; <label>:557:                                    ; preds = %501, %523
  %558 = phi %struct.TValue* [ %529, %523 ], [ null, %501 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %559 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %559, i64* %35, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %508, %struct.TValue* %512, %struct.TValue* %519, %struct.TValue* %558) #12
  %560 = load i32, i32* %37, align 8, !tbaa !6
  br label %561

; <label>:561:                                    ; preds = %549, %543, %534, %556, %557
  %562 = phi i32 [ %3798, %556 ], [ %3798, %549 ], [ %3798, %543 ], [ %3798, %534 ], [ %560, %557 ]
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %568, label %564

; <label>:564:                                    ; preds = %561
  %565 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %566 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %567 = getelementptr inbounds %union.StackValue, %union.StackValue* %566, i64 1
  br label %568

; <label>:568:                                    ; preds = %561, %564
  %569 = phi i32 [ %565, %564 ], [ 0, %561 ]
  %570 = phi %union.StackValue* [ %567, %564 ], [ %3797, %561 ]
  %571 = getelementptr inbounds i32, i32* %3799, i64 1
  %572 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:573:                                    ; preds = %3795
  %574 = lshr i32 %3796, 16
  %575 = and i32 %574, 255
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %576, i32 0
  %578 = trunc i32 %3796 to i16
  %579 = icmp slt i16 %578, 0
  %580 = lshr i32 %3796, 24
  %581 = zext i32 %580 to i64
  %582 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %581
  %583 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %581, i32 0
  %584 = select i1 %579, %struct.TValue* %582, %struct.TValue* %583
  %585 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %576, i32 0, i32 1
  %586 = load i8, i8* %585, align 8, !tbaa !2
  %587 = icmp eq i8 %586, 35
  br i1 %587, label %588, label %614

; <label>:588:                                    ; preds = %573
  %589 = bitcast %struct.TValue* %577 to i64*
  %590 = load i64, i64* %589, align 8, !tbaa !6
  %591 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %592 = load i8, i8* %591, align 8, !tbaa !6
  %593 = icmp eq i8 %592, 69
  br i1 %593, label %594, label %652

; <label>:594:                                    ; preds = %588
  %595 = add i64 %590, -1
  %596 = bitcast %union.StackValue* %3803 to %struct.Table**
  %597 = load %struct.Table*, %struct.Table** %596, align 8, !tbaa !6
  %598 = getelementptr inbounds %struct.Table, %struct.Table* %597, i64 0, i32 5
  %599 = load i32, i32* %598, align 4, !tbaa !6
  %600 = zext i32 %599 to i64
  %601 = icmp ult i64 %595, %600
  br i1 %601, label %602, label %606

; <label>:602:                                    ; preds = %594
  %603 = getelementptr inbounds %struct.Table, %struct.Table* %597, i64 0, i32 6
  %604 = load %struct.TValue*, %struct.TValue** %603, align 8, !tbaa !6
  %605 = getelementptr inbounds %struct.TValue, %struct.TValue* %604, i64 %595
  br label %608

; <label>:606:                                    ; preds = %594
  %607 = call %struct.TValue* @luaH_getint(%struct.Table* %597, i64 %590) #11
  br label %608

; <label>:608:                                    ; preds = %602, %606
  %609 = phi %struct.TValue* [ %605, %602 ], [ %607, %606 ]
  %610 = getelementptr inbounds %struct.TValue, %struct.TValue* %609, i64 0, i32 1
  %611 = load i8, i8* %610, align 8, !tbaa !2
  %612 = and i8 %611, 15
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %652, label %626

; <label>:614:                                    ; preds = %573
  %615 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %616 = load i8, i8* %615, align 8, !tbaa !6
  %617 = icmp eq i8 %616, 69
  br i1 %617, label %618, label %652

; <label>:618:                                    ; preds = %614
  %619 = bitcast %union.StackValue* %3803 to %struct.Table**
  %620 = load %struct.Table*, %struct.Table** %619, align 8, !tbaa !6
  %621 = call %struct.TValue* @luaH_get(%struct.Table* %620, %struct.TValue* %577) #11
  %622 = getelementptr inbounds %struct.TValue, %struct.TValue* %621, i64 0, i32 1
  %623 = load i8, i8* %622, align 8, !tbaa !2
  %624 = and i8 %623, 15
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %652, label %626

; <label>:626:                                    ; preds = %608, %618
  %627 = phi i8* [ %610, %608 ], [ %622, %618 ]
  %628 = phi %struct.TValue* [ %609, %608 ], [ %621, %618 ]
  %629 = bitcast %struct.TValue* %584 to i64*
  %630 = bitcast %struct.TValue* %628 to i64*
  %631 = load i64, i64* %629, align 8
  store i64 %631, i64* %630, align 8
  %632 = getelementptr inbounds %struct.TValue, %struct.TValue* %584, i64 0, i32 1
  %633 = load i8, i8* %632, align 8, !tbaa !2
  store i8 %633, i8* %627, align 8, !tbaa !2
  %634 = load i8, i8* %632, align 8, !tbaa !2
  %635 = and i8 %634, 64
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %657, label %637

; <label>:637:                                    ; preds = %626
  %638 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0, i32 0, i32 0
  %639 = load %struct.GCObject*, %struct.GCObject** %638, align 8, !tbaa !6
  %640 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %639, i64 0, i32 2
  %641 = load i8, i8* %640, align 1, !tbaa !23
  %642 = and i8 %641, 32
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %657, label %644

; <label>:644:                                    ; preds = %637
  %645 = getelementptr inbounds %struct.TValue, %struct.TValue* %584, i64 0, i32 0, i32 0
  %646 = load %struct.GCObject*, %struct.GCObject** %645, align 8, !tbaa !6
  %647 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %646, i64 0, i32 2
  %648 = load i8, i8* %647, align 1, !tbaa !23
  %649 = and i8 %648, 24
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %657, label %651

; <label>:651:                                    ; preds = %644
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %639) #11
  br label %657

; <label>:652:                                    ; preds = %588, %614, %608, %618
  %653 = phi %struct.TValue* [ %609, %608 ], [ %621, %618 ], [ null, %614 ], [ null, %588 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %654 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %654, i64* %35, align 8, !tbaa !25
  %655 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %655, %struct.TValue* %577, %struct.TValue* %584, %struct.TValue* %653) #12
  %656 = load i32, i32* %37, align 8, !tbaa !6
  br label %657

; <label>:657:                                    ; preds = %644, %637, %626, %651, %652
  %658 = phi i32 [ %3798, %651 ], [ %3798, %644 ], [ %3798, %637 ], [ %3798, %626 ], [ %656, %652 ]
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %664, label %660

; <label>:660:                                    ; preds = %657
  %661 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %662 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %663 = getelementptr inbounds %union.StackValue, %union.StackValue* %662, i64 1
  br label %664

; <label>:664:                                    ; preds = %657, %660
  %665 = phi i32 [ %661, %660 ], [ 0, %657 ]
  %666 = phi %union.StackValue* [ %663, %660 ], [ %3797, %657 ]
  %667 = getelementptr inbounds i32, i32* %3799, i64 1
  %668 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:669:                                    ; preds = %3795
  %670 = lshr i32 %3796, 16
  %671 = and i32 %670, 255
  %672 = trunc i32 %3796 to i16
  %673 = icmp slt i16 %672, 0
  %674 = lshr i32 %3796, 24
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %675
  %677 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %675, i32 0
  %678 = select i1 %673, %struct.TValue* %676, %struct.TValue* %677
  %679 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %680 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %681 = load i8, i8* %680, align 8, !tbaa !6
  %682 = icmp eq i8 %681, 69
  %683 = zext i32 %671 to i64
  br i1 %682, label %684, label %730

; <label>:684:                                    ; preds = %669
  %685 = add nsw i64 %683, -1
  %686 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0, i32 0, i32 0
  %687 = bitcast %union.StackValue* %3803 to %struct.Table**
  %688 = load %struct.Table*, %struct.Table** %687, align 8, !tbaa !6
  %689 = getelementptr inbounds %struct.Table, %struct.Table* %688, i64 0, i32 5
  %690 = load i32, i32* %689, align 4, !tbaa !6
  %691 = zext i32 %690 to i64
  %692 = icmp ult i64 %685, %691
  br i1 %692, label %693, label %699

; <label>:693:                                    ; preds = %684
  %694 = getelementptr inbounds %struct.Table, %struct.Table* %688, i64 0, i32 6
  %695 = load %struct.TValue*, %struct.TValue** %694, align 8, !tbaa !6
  %696 = add nsw i32 %671, -1
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds %struct.TValue, %struct.TValue* %695, i64 %697
  br label %701

; <label>:699:                                    ; preds = %684
  %700 = call %struct.TValue* @luaH_getint(%struct.Table* %688, i64 %683) #11
  br label %701

; <label>:701:                                    ; preds = %699, %693
  %702 = phi %struct.TValue* [ %698, %693 ], [ %700, %699 ]
  %703 = getelementptr inbounds %struct.TValue, %struct.TValue* %702, i64 0, i32 1
  %704 = load i8, i8* %703, align 8, !tbaa !2
  %705 = and i8 %704, 15
  %706 = icmp eq i8 %705, 0
  br i1 %706, label %730, label %707

; <label>:707:                                    ; preds = %701
  %708 = bitcast %struct.TValue* %678 to i64*
  %709 = bitcast %struct.TValue* %702 to i64*
  %710 = load i64, i64* %708, align 8
  store i64 %710, i64* %709, align 8
  %711 = getelementptr inbounds %struct.TValue, %struct.TValue* %678, i64 0, i32 1
  %712 = load i8, i8* %711, align 8, !tbaa !2
  store i8 %712, i8* %703, align 8, !tbaa !2
  %713 = load i8, i8* %711, align 8, !tbaa !2
  %714 = and i8 %713, 64
  %715 = icmp eq i8 %714, 0
  br i1 %715, label %734, label %716

; <label>:716:                                    ; preds = %707
  %717 = load %struct.GCObject*, %struct.GCObject** %686, align 8, !tbaa !6
  %718 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %717, i64 0, i32 2
  %719 = load i8, i8* %718, align 1, !tbaa !23
  %720 = and i8 %719, 32
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %734, label %722

; <label>:722:                                    ; preds = %716
  %723 = getelementptr inbounds %struct.TValue, %struct.TValue* %678, i64 0, i32 0, i32 0
  %724 = load %struct.GCObject*, %struct.GCObject** %723, align 8, !tbaa !6
  %725 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %724, i64 0, i32 2
  %726 = load i8, i8* %725, align 1, !tbaa !23
  %727 = and i8 %726, 24
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %734, label %729

; <label>:729:                                    ; preds = %722
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %717) #11
  br label %734

; <label>:730:                                    ; preds = %669, %701
  %731 = phi %struct.TValue* [ %702, %701 ], [ null, %669 ]
  store i64 %683, i64* %41, align 8, !tbaa !6
  store i8 35, i8* %42, align 8, !tbaa !2
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %732 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %732, i64* %35, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %679, %struct.TValue* nonnull %5, %struct.TValue* %678, %struct.TValue* %731) #12
  %733 = load i32, i32* %37, align 8, !tbaa !6
  br label %734

; <label>:734:                                    ; preds = %722, %716, %707, %729, %730
  %735 = phi i32 [ %3798, %729 ], [ %3798, %722 ], [ %3798, %716 ], [ %3798, %707 ], [ %733, %730 ]
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %741, label %737

; <label>:737:                                    ; preds = %734
  %738 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %739 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %740 = getelementptr inbounds %union.StackValue, %union.StackValue* %739, i64 1
  br label %741

; <label>:741:                                    ; preds = %734, %737
  %742 = phi i32 [ %738, %737 ], [ 0, %734 ]
  %743 = phi %union.StackValue* [ %740, %737 ], [ %3797, %734 ]
  %744 = getelementptr inbounds i32, i32* %3799, i64 1
  %745 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:746:                                    ; preds = %3795
  %747 = lshr i32 %3796, 16
  %748 = and i32 %747, 255
  %749 = zext i32 %748 to i64
  %750 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %749
  %751 = trunc i32 %3796 to i16
  %752 = icmp slt i16 %751, 0
  %753 = lshr i32 %3796, 24
  %754 = zext i32 %753 to i64
  %755 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %754
  %756 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %754, i32 0
  %757 = select i1 %752, %struct.TValue* %755, %struct.TValue* %756
  %758 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %759 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %760 = load i8, i8* %759, align 8, !tbaa !6
  %761 = icmp eq i8 %760, 69
  br i1 %761, label %762, label %796

; <label>:762:                                    ; preds = %746
  %763 = bitcast %struct.TValue* %750 to %struct.TString**
  %764 = load %struct.TString*, %struct.TString** %763, align 8, !tbaa !6
  %765 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0, i32 0, i32 0
  %766 = bitcast %union.StackValue* %3803 to %struct.Table**
  %767 = load %struct.Table*, %struct.Table** %766, align 8, !tbaa !6
  %768 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %767, %struct.TString* %764) #11
  %769 = getelementptr inbounds %struct.TValue, %struct.TValue* %768, i64 0, i32 1
  %770 = load i8, i8* %769, align 8, !tbaa !2
  %771 = and i8 %770, 15
  %772 = icmp eq i8 %771, 0
  br i1 %772, label %796, label %773

; <label>:773:                                    ; preds = %762
  %774 = bitcast %struct.TValue* %757 to i64*
  %775 = bitcast %struct.TValue* %768 to i64*
  %776 = load i64, i64* %774, align 8
  store i64 %776, i64* %775, align 8
  %777 = getelementptr inbounds %struct.TValue, %struct.TValue* %757, i64 0, i32 1
  %778 = load i8, i8* %777, align 8, !tbaa !2
  store i8 %778, i8* %769, align 8, !tbaa !2
  %779 = load i8, i8* %777, align 8, !tbaa !2
  %780 = and i8 %779, 64
  %781 = icmp eq i8 %780, 0
  br i1 %781, label %800, label %782

; <label>:782:                                    ; preds = %773
  %783 = load %struct.GCObject*, %struct.GCObject** %765, align 8, !tbaa !6
  %784 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %783, i64 0, i32 2
  %785 = load i8, i8* %784, align 1, !tbaa !23
  %786 = and i8 %785, 32
  %787 = icmp eq i8 %786, 0
  br i1 %787, label %800, label %788

; <label>:788:                                    ; preds = %782
  %789 = getelementptr inbounds %struct.TValue, %struct.TValue* %757, i64 0, i32 0, i32 0
  %790 = load %struct.GCObject*, %struct.GCObject** %789, align 8, !tbaa !6
  %791 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %790, i64 0, i32 2
  %792 = load i8, i8* %791, align 1, !tbaa !23
  %793 = and i8 %792, 24
  %794 = icmp eq i8 %793, 0
  br i1 %794, label %800, label %795

; <label>:795:                                    ; preds = %788
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %783) #11
  br label %800

; <label>:796:                                    ; preds = %746, %762
  %797 = phi %struct.TValue* [ %768, %762 ], [ null, %746 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %798 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %798, i64* %35, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %758, %struct.TValue* %750, %struct.TValue* %757, %struct.TValue* %797) #12
  %799 = load i32, i32* %37, align 8, !tbaa !6
  br label %800

; <label>:800:                                    ; preds = %788, %782, %773, %795, %796
  %801 = phi i32 [ %3798, %795 ], [ %3798, %788 ], [ %3798, %782 ], [ %3798, %773 ], [ %799, %796 ]
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %807, label %803

; <label>:803:                                    ; preds = %800
  %804 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %805 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %806 = getelementptr inbounds %union.StackValue, %union.StackValue* %805, i64 1
  br label %807

; <label>:807:                                    ; preds = %800, %803
  %808 = phi i32 [ %804, %803 ], [ 0, %800 ]
  %809 = phi %union.StackValue* [ %806, %803 ], [ %3797, %800 ]
  %810 = getelementptr inbounds i32, i32* %3799, i64 1
  %811 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:812:                                    ; preds = %3795
  %813 = lshr i32 %3796, 16
  %814 = and i32 %813, 255
  %815 = lshr i32 %3796, 24
  %816 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %816, i64* %35, align 8, !tbaa !25
  %817 = call %struct.Table* @luaH_new(%struct.lua_State* %0) #11
  %818 = bitcast %union.StackValue* %3803 to %struct.Table**
  store %struct.Table* %817, %struct.Table** %818, align 8, !tbaa !6
  %819 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 69, i8* %819, align 8, !tbaa !2
  %820 = or i32 %814, %815
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %825, label %822

; <label>:822:                                    ; preds = %812
  %823 = call i32 @luaO_fb2int(i32 %814) #11
  %824 = call i32 @luaO_fb2int(i32 %815) #11
  call void @luaH_resize(%struct.lua_State* nonnull %0, %struct.Table* %817, i32 %823, i32 %824) #11
  br label %825

; <label>:825:                                    ; preds = %812, %822
  %826 = load %struct.global_State*, %struct.global_State** %38, align 8, !tbaa !16
  %827 = getelementptr inbounds %struct.global_State, %struct.global_State* %826, i64 0, i32 3
  %828 = load i64, i64* %827, align 8, !tbaa !43
  %829 = icmp sgt i64 %828, 0
  br i1 %829, label %830, label %833

; <label>:830:                                    ; preds = %825
  %831 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1
  store %union.StackValue* %831, %union.StackValue** %34, align 8, !tbaa !25
  call void @luaC_step(%struct.lua_State* nonnull %0) #11
  %832 = load i32, i32* %37, align 8, !tbaa !6
  br label %833

; <label>:833:                                    ; preds = %830, %825
  %834 = phi i32 [ %832, %830 ], [ %3798, %825 ]
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %840, label %836

; <label>:836:                                    ; preds = %833
  %837 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3799) #11
  %838 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %839 = getelementptr inbounds %union.StackValue, %union.StackValue* %838, i64 1
  br label %840

; <label>:840:                                    ; preds = %833, %836
  %841 = phi i32 [ %837, %836 ], [ 0, %833 ]
  %842 = phi %union.StackValue* [ %839, %836 ], [ %3797, %833 ]
  %843 = getelementptr inbounds i32, i32* %3799, i64 1
  %844 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:845:                                    ; preds = %3795
  %846 = lshr i32 %3796, 16
  %847 = and i32 %846, 255
  %848 = zext i32 %847 to i64
  %849 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %848, i32 0
  %850 = trunc i32 %3796 to i16
  %851 = icmp slt i16 %850, 0
  %852 = lshr i32 %3796, 24
  %853 = zext i32 %852 to i64
  %854 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %853
  %855 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %853, i32 0
  %856 = select i1 %851, %struct.TValue* %854, %struct.TValue* %855
  %857 = bitcast %struct.TValue* %856 to %struct.TString**
  %858 = load %struct.TString*, %struct.TString** %857, align 8, !tbaa !6
  %859 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1, i32 0
  %860 = bitcast %struct.TValue* %849 to i64*
  %861 = bitcast %struct.TValue* %859 to i64*
  %862 = load i64, i64* %860, align 8
  store i64 %862, i64* %861, align 8
  %863 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %848, i32 0, i32 1
  %864 = load i8, i8* %863, align 8, !tbaa !2
  %865 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1, i32 0, i32 1
  store i8 %864, i8* %865, align 8, !tbaa !2
  %866 = load i8, i8* %863, align 8, !tbaa !2
  %867 = icmp eq i8 %866, 69
  br i1 %867, label %868, label %882

; <label>:868:                                    ; preds = %845
  %869 = bitcast %struct.TValue* %849 to %struct.Table**
  %870 = load %struct.Table*, %struct.Table** %869, align 8, !tbaa !6
  %871 = call %struct.TValue* @luaH_getstr(%struct.Table* %870, %struct.TString* %858) #11
  %872 = getelementptr inbounds %struct.TValue, %struct.TValue* %871, i64 0, i32 1
  %873 = load i8, i8* %872, align 8, !tbaa !2
  %874 = and i8 %873, 15
  %875 = icmp eq i8 %874, 0
  br i1 %875, label %882, label %876

; <label>:876:                                    ; preds = %868
  %877 = bitcast %struct.TValue* %871 to i64*
  %878 = bitcast %union.StackValue* %3803 to i64*
  %879 = load i64, i64* %877, align 8
  store i64 %879, i64* %878, align 8
  %880 = load i8, i8* %872, align 8, !tbaa !2
  %881 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %880, i8* %881, align 8, !tbaa !2
  br label %886

; <label>:882:                                    ; preds = %845, %868
  %883 = phi %struct.TValue* [ %871, %868 ], [ null, %845 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %884 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %884, i64* %35, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %849, %struct.TValue* %856, %union.StackValue* nonnull %3803, %struct.TValue* %883) #12
  %885 = load i32, i32* %37, align 8, !tbaa !6
  br label %886

; <label>:886:                                    ; preds = %882, %876
  %887 = phi i32 [ %3798, %876 ], [ %885, %882 ]
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %893, label %889

; <label>:889:                                    ; preds = %886
  %890 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %891 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %892 = getelementptr inbounds %union.StackValue, %union.StackValue* %891, i64 1
  br label %893

; <label>:893:                                    ; preds = %886, %889
  %894 = phi i32 [ %890, %889 ], [ 0, %886 ]
  %895 = phi %union.StackValue* [ %892, %889 ], [ %3797, %886 ]
  %896 = getelementptr inbounds i32, i32* %3799, i64 1
  %897 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:898:                                    ; preds = %3795
  %899 = lshr i32 %3796, 16
  %900 = and i32 %899, 255
  %901 = zext i32 %900 to i64
  %902 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %901, i32 0
  %903 = lshr i32 %3796, 24
  %904 = add nsw i32 %903, -127
  %905 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %901, i32 0, i32 1
  %906 = load i8, i8* %905, align 8, !tbaa !2
  switch i8 %906, label %921 [
    i8 35, label %907
    i8 19, label %914
  ]

; <label>:907:                                    ; preds = %898
  %908 = bitcast %struct.TValue* %902 to i64*
  %909 = load i64, i64* %908, align 8, !tbaa !6
  %910 = sext i32 %904 to i64
  %911 = add i64 %909, %910
  %912 = bitcast %union.StackValue* %3803 to i64*
  store i64 %911, i64* %912, align 8, !tbaa !6
  %913 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %913, align 8, !tbaa !2
  br label %927

; <label>:914:                                    ; preds = %898
  %915 = bitcast %struct.TValue* %902 to double*
  %916 = load double, double* %915, align 8, !tbaa !6
  %917 = sitofp i32 %904 to double
  %918 = fadd double %916, %917
  %919 = bitcast %union.StackValue* %3803 to double*
  store double %918, double* %919, align 8, !tbaa !6
  %920 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %920, align 8, !tbaa !2
  br label %927

; <label>:921:                                    ; preds = %898
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %922 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %922, i64* %35, align 8, !tbaa !25
  %923 = sext i32 %904 to i64
  %924 = lshr i32 %3796, 15
  %925 = and i32 %924, 1
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %902, i64 %923, i32 %925, %union.StackValue* %3803, i32 6) #11
  %926 = load i32, i32* %37, align 8, !tbaa !6
  br label %927

; <label>:927:                                    ; preds = %914, %921, %907
  %928 = phi i32 [ %3798, %907 ], [ %3798, %914 ], [ %926, %921 ]
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %934, label %930

; <label>:930:                                    ; preds = %927
  %931 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %932 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %933 = getelementptr inbounds %union.StackValue, %union.StackValue* %932, i64 1
  br label %934

; <label>:934:                                    ; preds = %927, %930
  %935 = phi i32 [ %931, %930 ], [ 0, %927 ]
  %936 = phi %union.StackValue* [ %933, %930 ], [ %3797, %927 ]
  %937 = getelementptr inbounds i32, i32* %3799, i64 1
  %938 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:939:                                    ; preds = %3795
  %940 = lshr i32 %3796, 16
  %941 = and i32 %940, 255
  %942 = zext i32 %941 to i64
  %943 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %942, i32 0
  %944 = lshr i32 %3796, 24
  %945 = add nsw i32 %944, -127
  %946 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %942, i32 0, i32 1
  %947 = load i8, i8* %946, align 8, !tbaa !2
  switch i8 %947, label %962 [
    i8 35, label %948
    i8 19, label %955
  ]

; <label>:948:                                    ; preds = %939
  %949 = bitcast %struct.TValue* %943 to i64*
  %950 = load i64, i64* %949, align 8, !tbaa !6
  %951 = sext i32 %945 to i64
  %952 = sub i64 %950, %951
  %953 = bitcast %union.StackValue* %3803 to i64*
  store i64 %952, i64* %953, align 8, !tbaa !6
  %954 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %954, align 8, !tbaa !2
  br label %966

; <label>:955:                                    ; preds = %939
  %956 = bitcast %struct.TValue* %943 to double*
  %957 = load double, double* %956, align 8, !tbaa !6
  %958 = sitofp i32 %945 to double
  %959 = fsub double %957, %958
  %960 = bitcast %union.StackValue* %3803 to double*
  store double %959, double* %960, align 8, !tbaa !6
  %961 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %961, align 8, !tbaa !2
  br label %966

; <label>:962:                                    ; preds = %939
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %963 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %963, i64* %35, align 8, !tbaa !25
  %964 = sext i32 %945 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %943, i64 %964, i32 0, %union.StackValue* %3803, i32 7) #11
  %965 = load i32, i32* %37, align 8, !tbaa !6
  br label %966

; <label>:966:                                    ; preds = %955, %962, %948
  %967 = phi i32 [ %3798, %948 ], [ %3798, %955 ], [ %965, %962 ]
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %973, label %969

; <label>:969:                                    ; preds = %966
  %970 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %971 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %972 = getelementptr inbounds %union.StackValue, %union.StackValue* %971, i64 1
  br label %973

; <label>:973:                                    ; preds = %966, %969
  %974 = phi i32 [ %970, %969 ], [ 0, %966 ]
  %975 = phi %union.StackValue* [ %972, %969 ], [ %3797, %966 ]
  %976 = getelementptr inbounds i32, i32* %3799, i64 1
  %977 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:978:                                    ; preds = %3795
  %979 = lshr i32 %3796, 16
  %980 = and i32 %979, 255
  %981 = zext i32 %980 to i64
  %982 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %981, i32 0
  %983 = lshr i32 %3796, 24
  %984 = add nsw i32 %983, -127
  %985 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %981, i32 0, i32 1
  %986 = load i8, i8* %985, align 8, !tbaa !2
  switch i8 %986, label %1001 [
    i8 35, label %987
    i8 19, label %994
  ]

; <label>:987:                                    ; preds = %978
  %988 = bitcast %struct.TValue* %982 to i64*
  %989 = load i64, i64* %988, align 8, !tbaa !6
  %990 = sext i32 %984 to i64
  %991 = mul i64 %989, %990
  %992 = bitcast %union.StackValue* %3803 to i64*
  store i64 %991, i64* %992, align 8, !tbaa !6
  %993 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %993, align 8, !tbaa !2
  br label %1007

; <label>:994:                                    ; preds = %978
  %995 = bitcast %struct.TValue* %982 to double*
  %996 = load double, double* %995, align 8, !tbaa !6
  %997 = sitofp i32 %984 to double
  %998 = fmul double %996, %997
  %999 = bitcast %union.StackValue* %3803 to double*
  store double %998, double* %999, align 8, !tbaa !6
  %1000 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1000, align 8, !tbaa !2
  br label %1007

; <label>:1001:                                   ; preds = %978
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1002 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1002, i64* %35, align 8, !tbaa !25
  %1003 = sext i32 %984 to i64
  %1004 = lshr i32 %3796, 15
  %1005 = and i32 %1004, 1
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %982, i64 %1003, i32 %1005, %union.StackValue* %3803, i32 8) #11
  %1006 = load i32, i32* %37, align 8, !tbaa !6
  br label %1007

; <label>:1007:                                   ; preds = %994, %1001, %987
  %1008 = phi i32 [ %3798, %987 ], [ %3798, %994 ], [ %1006, %1001 ]
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1014, label %1010

; <label>:1010:                                   ; preds = %1007
  %1011 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1012 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1013 = getelementptr inbounds %union.StackValue, %union.StackValue* %1012, i64 1
  br label %1014

; <label>:1014:                                   ; preds = %1007, %1010
  %1015 = phi i32 [ %1011, %1010 ], [ 0, %1007 ]
  %1016 = phi %union.StackValue* [ %1013, %1010 ], [ %3797, %1007 ]
  %1017 = getelementptr inbounds i32, i32* %3799, i64 1
  %1018 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1019:                                   ; preds = %3795
  %1020 = lshr i32 %3796, 16
  %1021 = and i32 %1020, 255
  %1022 = zext i32 %1021 to i64
  %1023 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1022, i32 0
  %1024 = lshr i32 %3796, 24
  %1025 = add nsw i32 %1024, -127
  %1026 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1022, i32 0, i32 1
  %1027 = load i8, i8* %1026, align 8, !tbaa !2
  switch i8 %1027, label %1042 [
    i8 35, label %1028
    i8 19, label %1035
  ]

; <label>:1028:                                   ; preds = %1019
  %1029 = bitcast %struct.TValue* %1023 to i64*
  %1030 = load i64, i64* %1029, align 8, !tbaa !6
  %1031 = sext i32 %1025 to i64
  %1032 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %1030, i64 %1031) #12
  %1033 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1032, i64* %1033, align 8, !tbaa !6
  %1034 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1034, align 8, !tbaa !2
  br label %1046

; <label>:1035:                                   ; preds = %1019
  %1036 = bitcast %struct.TValue* %1023 to double*
  %1037 = load double, double* %1036, align 8, !tbaa !6
  %1038 = sitofp i32 %1025 to double
  %1039 = call double @luaV_modf(%struct.lua_State* undef, double %1037, double %1038) #12
  %1040 = bitcast %union.StackValue* %3803 to double*
  store double %1039, double* %1040, align 8, !tbaa !6
  %1041 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1041, align 8, !tbaa !2
  br label %1046

; <label>:1042:                                   ; preds = %1019
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1043 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1043, i64* %35, align 8, !tbaa !25
  %1044 = sext i32 %1025 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1023, i64 %1044, i32 0, %union.StackValue* %3803, i32 9) #11
  %1045 = load i32, i32* %37, align 8, !tbaa !6
  br label %1046

; <label>:1046:                                   ; preds = %1035, %1042, %1028
  %1047 = phi i32 [ %3798, %1028 ], [ %3798, %1035 ], [ %1045, %1042 ]
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1053, label %1049

; <label>:1049:                                   ; preds = %1046
  %1050 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1051 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1052 = getelementptr inbounds %union.StackValue, %union.StackValue* %1051, i64 1
  br label %1053

; <label>:1053:                                   ; preds = %1046, %1049
  %1054 = phi i32 [ %1050, %1049 ], [ 0, %1046 ]
  %1055 = phi %union.StackValue* [ %1052, %1049 ], [ %3797, %1046 ]
  %1056 = getelementptr inbounds i32, i32* %3799, i64 1
  %1057 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1058:                                   ; preds = %3795
  %1059 = lshr i32 %3796, 16
  %1060 = and i32 %1059, 255
  %1061 = zext i32 %1060 to i64
  %1062 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1061, i32 0
  %1063 = lshr i32 %3796, 24
  %1064 = add nsw i32 %1063, -127
  %1065 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1061, i32 0, i32 1
  %1066 = load i8, i8* %1065, align 8, !tbaa !2
  switch i8 %1066, label %1080 [
    i8 19, label %1067
    i8 35, label %1070
  ]

; <label>:1067:                                   ; preds = %1058
  %1068 = bitcast %struct.TValue* %1062 to double*
  %1069 = load double, double* %1068, align 8, !tbaa !6
  br label %1074

; <label>:1070:                                   ; preds = %1058
  %1071 = bitcast %struct.TValue* %1062 to i64*
  %1072 = load i64, i64* %1071, align 8, !tbaa !6
  %1073 = sitofp i64 %1072 to double
  br label %1074

; <label>:1074:                                   ; preds = %1067, %1070
  %1075 = phi double [ %1069, %1067 ], [ %1073, %1070 ]
  %1076 = sitofp i32 %1064 to double
  %1077 = call double @pow(double %1075, double %1076) #11
  %1078 = bitcast %union.StackValue* %3803 to double*
  store double %1077, double* %1078, align 8, !tbaa !6
  %1079 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1079, align 8, !tbaa !2
  br label %1084

; <label>:1080:                                   ; preds = %1058
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1081 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1081, i64* %35, align 8, !tbaa !25
  %1082 = sext i32 %1064 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1062, i64 %1082, i32 0, %union.StackValue* %3803, i32 10) #11
  %1083 = load i32, i32* %37, align 8, !tbaa !6
  br label %1084

; <label>:1084:                                   ; preds = %1080, %1074
  %1085 = phi i32 [ %3798, %1074 ], [ %1083, %1080 ]
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1091, label %1087

; <label>:1087:                                   ; preds = %1084
  %1088 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1089 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1090 = getelementptr inbounds %union.StackValue, %union.StackValue* %1089, i64 1
  br label %1091

; <label>:1091:                                   ; preds = %1084, %1087
  %1092 = phi i32 [ %1088, %1087 ], [ 0, %1084 ]
  %1093 = phi %union.StackValue* [ %1090, %1087 ], [ %3797, %1084 ]
  %1094 = getelementptr inbounds i32, i32* %3799, i64 1
  %1095 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1096:                                   ; preds = %3795
  %1097 = lshr i32 %3796, 16
  %1098 = and i32 %1097, 255
  %1099 = zext i32 %1098 to i64
  %1100 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1099, i32 0
  %1101 = lshr i32 %3796, 24
  %1102 = add nsw i32 %1101, -127
  %1103 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1099, i32 0, i32 1
  %1104 = load i8, i8* %1103, align 8, !tbaa !2
  switch i8 %1104, label %1118 [
    i8 19, label %1105
    i8 35, label %1108
  ]

; <label>:1105:                                   ; preds = %1096
  %1106 = bitcast %struct.TValue* %1100 to double*
  %1107 = load double, double* %1106, align 8, !tbaa !6
  br label %1112

; <label>:1108:                                   ; preds = %1096
  %1109 = bitcast %struct.TValue* %1100 to i64*
  %1110 = load i64, i64* %1109, align 8, !tbaa !6
  %1111 = sitofp i64 %1110 to double
  br label %1112

; <label>:1112:                                   ; preds = %1105, %1108
  %1113 = phi double [ %1107, %1105 ], [ %1111, %1108 ]
  %1114 = sitofp i32 %1102 to double
  %1115 = fdiv double %1113, %1114
  %1116 = bitcast %union.StackValue* %3803 to double*
  store double %1115, double* %1116, align 8, !tbaa !6
  %1117 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1117, align 8, !tbaa !2
  br label %1122

; <label>:1118:                                   ; preds = %1096
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1119 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1119, i64* %35, align 8, !tbaa !25
  %1120 = sext i32 %1102 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1100, i64 %1120, i32 0, %union.StackValue* %3803, i32 11) #11
  %1121 = load i32, i32* %37, align 8, !tbaa !6
  br label %1122

; <label>:1122:                                   ; preds = %1118, %1112
  %1123 = phi i32 [ %3798, %1112 ], [ %1121, %1118 ]
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1129, label %1125

; <label>:1125:                                   ; preds = %1122
  %1126 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1127 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1128 = getelementptr inbounds %union.StackValue, %union.StackValue* %1127, i64 1
  br label %1129

; <label>:1129:                                   ; preds = %1122, %1125
  %1130 = phi i32 [ %1126, %1125 ], [ 0, %1122 ]
  %1131 = phi %union.StackValue* [ %1128, %1125 ], [ %3797, %1122 ]
  %1132 = getelementptr inbounds i32, i32* %3799, i64 1
  %1133 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1134:                                   ; preds = %3795
  %1135 = lshr i32 %3796, 16
  %1136 = and i32 %1135, 255
  %1137 = zext i32 %1136 to i64
  %1138 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1137, i32 0
  %1139 = lshr i32 %3796, 24
  %1140 = add nsw i32 %1139, -127
  %1141 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1137, i32 0, i32 1
  %1142 = load i8, i8* %1141, align 8, !tbaa !2
  switch i8 %1142, label %1158 [
    i8 35, label %1143
    i8 19, label %1150
  ]

; <label>:1143:                                   ; preds = %1134
  %1144 = bitcast %struct.TValue* %1138 to i64*
  %1145 = load i64, i64* %1144, align 8, !tbaa !6
  %1146 = sext i32 %1140 to i64
  %1147 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %1145, i64 %1146) #12
  %1148 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1147, i64* %1148, align 8, !tbaa !6
  %1149 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1149, align 8, !tbaa !2
  br label %1162

; <label>:1150:                                   ; preds = %1134
  %1151 = bitcast %struct.TValue* %1138 to double*
  %1152 = load double, double* %1151, align 8, !tbaa !6
  %1153 = sitofp i32 %1140 to double
  %1154 = fdiv double %1152, %1153
  %1155 = call double @llvm.floor.f64(double %1154)
  %1156 = bitcast %union.StackValue* %3803 to double*
  store double %1155, double* %1156, align 8, !tbaa !6
  %1157 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1157, align 8, !tbaa !2
  br label %1162

; <label>:1158:                                   ; preds = %1134
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1159 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1159, i64* %35, align 8, !tbaa !25
  %1160 = sext i32 %1140 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1138, i64 %1160, i32 0, %union.StackValue* %3803, i32 12) #11
  %1161 = load i32, i32* %37, align 8, !tbaa !6
  br label %1162

; <label>:1162:                                   ; preds = %1150, %1158, %1143
  %1163 = phi i32 [ %3798, %1143 ], [ %3798, %1150 ], [ %1161, %1158 ]
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1169, label %1165

; <label>:1165:                                   ; preds = %1162
  %1166 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1167 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1168 = getelementptr inbounds %union.StackValue, %union.StackValue* %1167, i64 1
  br label %1169

; <label>:1169:                                   ; preds = %1162, %1165
  %1170 = phi i32 [ %1166, %1165 ], [ 0, %1162 ]
  %1171 = phi %union.StackValue* [ %1168, %1165 ], [ %3797, %1162 ]
  %1172 = getelementptr inbounds i32, i32* %3799, i64 1
  %1173 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1174:                                   ; preds = %3795
  %1175 = lshr i32 %3796, 16
  %1176 = and i32 %1175, 255
  %1177 = zext i32 %1176 to i64
  %1178 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1177, i32 0
  %1179 = lshr i32 %3796, 24
  %1180 = zext i32 %1179 to i64
  %1181 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1180
  %1182 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1177, i32 0, i32 1
  %1183 = load i8, i8* %1182, align 8, !tbaa !2
  switch i8 %1183, label %1218 [
    i8 35, label %1184
    i8 19, label %1196
  ]

; <label>:1184:                                   ; preds = %1174
  %1185 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1180, i32 1
  %1186 = load i8, i8* %1185, align 8, !tbaa !2
  %1187 = icmp eq i8 %1186, 35
  %1188 = bitcast %struct.TValue* %1178 to i64*
  %1189 = load i64, i64* %1188, align 8, !tbaa !6
  br i1 %1187, label %1190, label %1201

; <label>:1190:                                   ; preds = %1184
  %1191 = bitcast %struct.TValue* %1181 to i64*
  %1192 = load i64, i64* %1191, align 8, !tbaa !6
  %1193 = add i64 %1192, %1189
  %1194 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1193, i64* %1194, align 8, !tbaa !6
  %1195 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1195, align 8, !tbaa !2
  br label %1223

; <label>:1196:                                   ; preds = %1174
  %1197 = bitcast %struct.TValue* %1178 to double*
  %1198 = load double, double* %1197, align 8, !tbaa !6
  %1199 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1180, i32 1
  %1200 = load i8, i8* %1199, align 8, !tbaa !2
  br label %1203

; <label>:1201:                                   ; preds = %1184
  %1202 = sitofp i64 %1189 to double
  br label %1203

; <label>:1203:                                   ; preds = %1196, %1201
  %1204 = phi i8 [ %1200, %1196 ], [ %1186, %1201 ]
  %1205 = phi double [ %1198, %1196 ], [ %1202, %1201 ]
  switch i8 %1204, label %1218 [
    i8 19, label %1206
    i8 35, label %1209
  ]

; <label>:1206:                                   ; preds = %1203
  %1207 = bitcast %struct.TValue* %1181 to double*
  %1208 = load double, double* %1207, align 8, !tbaa !6
  br label %1213

; <label>:1209:                                   ; preds = %1203
  %1210 = bitcast %struct.TValue* %1181 to i64*
  %1211 = load i64, i64* %1210, align 8, !tbaa !6
  %1212 = sitofp i64 %1211 to double
  br label %1213

; <label>:1213:                                   ; preds = %1206, %1209
  %1214 = phi double [ %1208, %1206 ], [ %1212, %1209 ]
  %1215 = fadd double %1205, %1214
  %1216 = bitcast %union.StackValue* %3803 to double*
  store double %1215, double* %1216, align 8, !tbaa !6
  %1217 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1217, align 8, !tbaa !2
  br label %1223

; <label>:1218:                                   ; preds = %1174, %1203
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1219 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1219, i64* %35, align 8, !tbaa !25
  %1220 = lshr i32 %3796, 15
  %1221 = and i32 %1220, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1178, %struct.TValue* %1181, %union.StackValue* %3803, i32 %1221, i32 6) #11
  %1222 = load i32, i32* %37, align 8, !tbaa !6
  br label %1223

; <label>:1223:                                   ; preds = %1213, %1218, %1190
  %1224 = phi i32 [ %3798, %1190 ], [ %3798, %1213 ], [ %1222, %1218 ]
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1230, label %1226

; <label>:1226:                                   ; preds = %1223
  %1227 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1228 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1229 = getelementptr inbounds %union.StackValue, %union.StackValue* %1228, i64 1
  br label %1230

; <label>:1230:                                   ; preds = %1223, %1226
  %1231 = phi i32 [ %1227, %1226 ], [ 0, %1223 ]
  %1232 = phi %union.StackValue* [ %1229, %1226 ], [ %3797, %1223 ]
  %1233 = getelementptr inbounds i32, i32* %3799, i64 1
  %1234 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1235:                                   ; preds = %3795
  %1236 = lshr i32 %3796, 16
  %1237 = and i32 %1236, 255
  %1238 = zext i32 %1237 to i64
  %1239 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1238, i32 0
  %1240 = lshr i32 %3796, 24
  %1241 = zext i32 %1240 to i64
  %1242 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1241
  %1243 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1238, i32 0, i32 1
  %1244 = load i8, i8* %1243, align 8, !tbaa !2
  switch i8 %1244, label %1279 [
    i8 35, label %1245
    i8 19, label %1257
  ]

; <label>:1245:                                   ; preds = %1235
  %1246 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1241, i32 1
  %1247 = load i8, i8* %1246, align 8, !tbaa !2
  %1248 = icmp eq i8 %1247, 35
  %1249 = bitcast %struct.TValue* %1239 to i64*
  %1250 = load i64, i64* %1249, align 8, !tbaa !6
  br i1 %1248, label %1251, label %1262

; <label>:1251:                                   ; preds = %1245
  %1252 = bitcast %struct.TValue* %1242 to i64*
  %1253 = load i64, i64* %1252, align 8, !tbaa !6
  %1254 = sub i64 %1250, %1253
  %1255 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1254, i64* %1255, align 8, !tbaa !6
  %1256 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1256, align 8, !tbaa !2
  br label %1282

; <label>:1257:                                   ; preds = %1235
  %1258 = bitcast %struct.TValue* %1239 to double*
  %1259 = load double, double* %1258, align 8, !tbaa !6
  %1260 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1241, i32 1
  %1261 = load i8, i8* %1260, align 8, !tbaa !2
  br label %1264

; <label>:1262:                                   ; preds = %1245
  %1263 = sitofp i64 %1250 to double
  br label %1264

; <label>:1264:                                   ; preds = %1257, %1262
  %1265 = phi i8 [ %1261, %1257 ], [ %1247, %1262 ]
  %1266 = phi double [ %1259, %1257 ], [ %1263, %1262 ]
  switch i8 %1265, label %1279 [
    i8 19, label %1267
    i8 35, label %1270
  ]

; <label>:1267:                                   ; preds = %1264
  %1268 = bitcast %struct.TValue* %1242 to double*
  %1269 = load double, double* %1268, align 8, !tbaa !6
  br label %1274

; <label>:1270:                                   ; preds = %1264
  %1271 = bitcast %struct.TValue* %1242 to i64*
  %1272 = load i64, i64* %1271, align 8, !tbaa !6
  %1273 = sitofp i64 %1272 to double
  br label %1274

; <label>:1274:                                   ; preds = %1267, %1270
  %1275 = phi double [ %1269, %1267 ], [ %1273, %1270 ]
  %1276 = fsub double %1266, %1275
  %1277 = bitcast %union.StackValue* %3803 to double*
  store double %1276, double* %1277, align 8, !tbaa !6
  %1278 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1278, align 8, !tbaa !2
  br label %1282

; <label>:1279:                                   ; preds = %1235, %1264
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1280 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1280, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1239, %struct.TValue* %1242, %union.StackValue* %3803, i32 0, i32 7) #11
  %1281 = load i32, i32* %37, align 8, !tbaa !6
  br label %1282

; <label>:1282:                                   ; preds = %1274, %1279, %1251
  %1283 = phi i32 [ %3798, %1251 ], [ %3798, %1274 ], [ %1281, %1279 ]
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1289, label %1285

; <label>:1285:                                   ; preds = %1282
  %1286 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1287 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1288 = getelementptr inbounds %union.StackValue, %union.StackValue* %1287, i64 1
  br label %1289

; <label>:1289:                                   ; preds = %1282, %1285
  %1290 = phi i32 [ %1286, %1285 ], [ 0, %1282 ]
  %1291 = phi %union.StackValue* [ %1288, %1285 ], [ %3797, %1282 ]
  %1292 = getelementptr inbounds i32, i32* %3799, i64 1
  %1293 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1294:                                   ; preds = %3795
  %1295 = lshr i32 %3796, 16
  %1296 = and i32 %1295, 255
  %1297 = zext i32 %1296 to i64
  %1298 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1297, i32 0
  %1299 = lshr i32 %3796, 24
  %1300 = zext i32 %1299 to i64
  %1301 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1300
  %1302 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1297, i32 0, i32 1
  %1303 = load i8, i8* %1302, align 8, !tbaa !2
  switch i8 %1303, label %1338 [
    i8 35, label %1304
    i8 19, label %1316
  ]

; <label>:1304:                                   ; preds = %1294
  %1305 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1300, i32 1
  %1306 = load i8, i8* %1305, align 8, !tbaa !2
  %1307 = icmp eq i8 %1306, 35
  %1308 = bitcast %struct.TValue* %1298 to i64*
  %1309 = load i64, i64* %1308, align 8, !tbaa !6
  br i1 %1307, label %1310, label %1321

; <label>:1310:                                   ; preds = %1304
  %1311 = bitcast %struct.TValue* %1301 to i64*
  %1312 = load i64, i64* %1311, align 8, !tbaa !6
  %1313 = mul i64 %1312, %1309
  %1314 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1313, i64* %1314, align 8, !tbaa !6
  %1315 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1315, align 8, !tbaa !2
  br label %1343

; <label>:1316:                                   ; preds = %1294
  %1317 = bitcast %struct.TValue* %1298 to double*
  %1318 = load double, double* %1317, align 8, !tbaa !6
  %1319 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1300, i32 1
  %1320 = load i8, i8* %1319, align 8, !tbaa !2
  br label %1323

; <label>:1321:                                   ; preds = %1304
  %1322 = sitofp i64 %1309 to double
  br label %1323

; <label>:1323:                                   ; preds = %1316, %1321
  %1324 = phi i8 [ %1320, %1316 ], [ %1306, %1321 ]
  %1325 = phi double [ %1318, %1316 ], [ %1322, %1321 ]
  switch i8 %1324, label %1338 [
    i8 19, label %1326
    i8 35, label %1329
  ]

; <label>:1326:                                   ; preds = %1323
  %1327 = bitcast %struct.TValue* %1301 to double*
  %1328 = load double, double* %1327, align 8, !tbaa !6
  br label %1333

; <label>:1329:                                   ; preds = %1323
  %1330 = bitcast %struct.TValue* %1301 to i64*
  %1331 = load i64, i64* %1330, align 8, !tbaa !6
  %1332 = sitofp i64 %1331 to double
  br label %1333

; <label>:1333:                                   ; preds = %1326, %1329
  %1334 = phi double [ %1328, %1326 ], [ %1332, %1329 ]
  %1335 = fmul double %1325, %1334
  %1336 = bitcast %union.StackValue* %3803 to double*
  store double %1335, double* %1336, align 8, !tbaa !6
  %1337 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1337, align 8, !tbaa !2
  br label %1343

; <label>:1338:                                   ; preds = %1294, %1323
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1339 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1339, i64* %35, align 8, !tbaa !25
  %1340 = lshr i32 %3796, 15
  %1341 = and i32 %1340, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1298, %struct.TValue* %1301, %union.StackValue* %3803, i32 %1341, i32 8) #11
  %1342 = load i32, i32* %37, align 8, !tbaa !6
  br label %1343

; <label>:1343:                                   ; preds = %1333, %1338, %1310
  %1344 = phi i32 [ %3798, %1310 ], [ %3798, %1333 ], [ %1342, %1338 ]
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1350, label %1346

; <label>:1346:                                   ; preds = %1343
  %1347 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1348 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1349 = getelementptr inbounds %union.StackValue, %union.StackValue* %1348, i64 1
  br label %1350

; <label>:1350:                                   ; preds = %1343, %1346
  %1351 = phi i32 [ %1347, %1346 ], [ 0, %1343 ]
  %1352 = phi %union.StackValue* [ %1349, %1346 ], [ %3797, %1343 ]
  %1353 = getelementptr inbounds i32, i32* %3799, i64 1
  %1354 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1355:                                   ; preds = %3795
  %1356 = lshr i32 %3796, 16
  %1357 = and i32 %1356, 255
  %1358 = zext i32 %1357 to i64
  %1359 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1358, i32 0
  %1360 = lshr i32 %3796, 24
  %1361 = zext i32 %1360 to i64
  %1362 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1361
  %1363 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1358, i32 0, i32 1
  %1364 = load i8, i8* %1363, align 8, !tbaa !2
  switch i8 %1364, label %1399 [
    i8 35, label %1365
    i8 19, label %1377
  ]

; <label>:1365:                                   ; preds = %1355
  %1366 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1361, i32 1
  %1367 = load i8, i8* %1366, align 8, !tbaa !2
  %1368 = icmp eq i8 %1367, 35
  %1369 = bitcast %struct.TValue* %1359 to i64*
  %1370 = load i64, i64* %1369, align 8, !tbaa !6
  br i1 %1368, label %1371, label %1382

; <label>:1371:                                   ; preds = %1365
  %1372 = bitcast %struct.TValue* %1362 to i64*
  %1373 = load i64, i64* %1372, align 8, !tbaa !6
  %1374 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %1370, i64 %1373) #12
  %1375 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1374, i64* %1375, align 8, !tbaa !6
  %1376 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1376, align 8, !tbaa !2
  br label %1402

; <label>:1377:                                   ; preds = %1355
  %1378 = bitcast %struct.TValue* %1359 to double*
  %1379 = load double, double* %1378, align 8, !tbaa !6
  %1380 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1361, i32 1
  %1381 = load i8, i8* %1380, align 8, !tbaa !2
  br label %1384

; <label>:1382:                                   ; preds = %1365
  %1383 = sitofp i64 %1370 to double
  br label %1384

; <label>:1384:                                   ; preds = %1377, %1382
  %1385 = phi i8 [ %1381, %1377 ], [ %1367, %1382 ]
  %1386 = phi double [ %1379, %1377 ], [ %1383, %1382 ]
  switch i8 %1385, label %1399 [
    i8 19, label %1387
    i8 35, label %1390
  ]

; <label>:1387:                                   ; preds = %1384
  %1388 = bitcast %struct.TValue* %1362 to double*
  %1389 = load double, double* %1388, align 8, !tbaa !6
  br label %1394

; <label>:1390:                                   ; preds = %1384
  %1391 = bitcast %struct.TValue* %1362 to i64*
  %1392 = load i64, i64* %1391, align 8, !tbaa !6
  %1393 = sitofp i64 %1392 to double
  br label %1394

; <label>:1394:                                   ; preds = %1387, %1390
  %1395 = phi double [ %1389, %1387 ], [ %1393, %1390 ]
  %1396 = call double @luaV_modf(%struct.lua_State* undef, double %1386, double %1395) #12
  %1397 = bitcast %union.StackValue* %3803 to double*
  store double %1396, double* %1397, align 8, !tbaa !6
  %1398 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1398, align 8, !tbaa !2
  br label %1402

; <label>:1399:                                   ; preds = %1355, %1384
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1400 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1400, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1359, %struct.TValue* %1362, %union.StackValue* %3803, i32 0, i32 9) #11
  %1401 = load i32, i32* %37, align 8, !tbaa !6
  br label %1402

; <label>:1402:                                   ; preds = %1394, %1399, %1371
  %1403 = phi i32 [ %3798, %1371 ], [ %3798, %1394 ], [ %1401, %1399 ]
  %1404 = icmp eq i32 %1403, 0
  br i1 %1404, label %1409, label %1405

; <label>:1405:                                   ; preds = %1402
  %1406 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1407 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1408 = getelementptr inbounds %union.StackValue, %union.StackValue* %1407, i64 1
  br label %1409

; <label>:1409:                                   ; preds = %1402, %1405
  %1410 = phi i32 [ %1406, %1405 ], [ 0, %1402 ]
  %1411 = phi %union.StackValue* [ %1408, %1405 ], [ %3797, %1402 ]
  %1412 = getelementptr inbounds i32, i32* %3799, i64 1
  %1413 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1414:                                   ; preds = %3795
  %1415 = lshr i32 %3796, 16
  %1416 = and i32 %1415, 255
  %1417 = zext i32 %1416 to i64
  %1418 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1417, i32 0
  %1419 = lshr i32 %3796, 24
  %1420 = zext i32 %1419 to i64
  %1421 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1420
  %1422 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1417, i32 0, i32 1
  %1423 = load i8, i8* %1422, align 8, !tbaa !2
  switch i8 %1423, label %1447 [
    i8 19, label %1424
    i8 35, label %1427
  ]

; <label>:1424:                                   ; preds = %1414
  %1425 = bitcast %struct.TValue* %1418 to double*
  %1426 = load double, double* %1425, align 8, !tbaa !6
  br label %1431

; <label>:1427:                                   ; preds = %1414
  %1428 = bitcast %struct.TValue* %1418 to i64*
  %1429 = load i64, i64* %1428, align 8, !tbaa !6
  %1430 = sitofp i64 %1429 to double
  br label %1431

; <label>:1431:                                   ; preds = %1424, %1427
  %1432 = phi double [ %1426, %1424 ], [ %1430, %1427 ]
  %1433 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1420, i32 1
  %1434 = load i8, i8* %1433, align 8, !tbaa !2
  switch i8 %1434, label %1447 [
    i8 19, label %1435
    i8 35, label %1438
  ]

; <label>:1435:                                   ; preds = %1431
  %1436 = bitcast %struct.TValue* %1421 to double*
  %1437 = load double, double* %1436, align 8, !tbaa !6
  br label %1442

; <label>:1438:                                   ; preds = %1431
  %1439 = bitcast %struct.TValue* %1421 to i64*
  %1440 = load i64, i64* %1439, align 8, !tbaa !6
  %1441 = sitofp i64 %1440 to double
  br label %1442

; <label>:1442:                                   ; preds = %1435, %1438
  %1443 = phi double [ %1437, %1435 ], [ %1441, %1438 ]
  %1444 = call double @pow(double %1432, double %1443) #11
  %1445 = bitcast %union.StackValue* %3803 to double*
  store double %1444, double* %1445, align 8, !tbaa !6
  %1446 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1446, align 8, !tbaa !2
  br label %1450

; <label>:1447:                                   ; preds = %1431, %1414
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1448 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1448, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1418, %struct.TValue* %1421, %union.StackValue* %3803, i32 10) #11
  %1449 = load i32, i32* %37, align 8, !tbaa !6
  br label %1450

; <label>:1450:                                   ; preds = %1447, %1442
  %1451 = phi i32 [ %3798, %1442 ], [ %1449, %1447 ]
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1457, label %1453

; <label>:1453:                                   ; preds = %1450
  %1454 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1455 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1456 = getelementptr inbounds %union.StackValue, %union.StackValue* %1455, i64 1
  br label %1457

; <label>:1457:                                   ; preds = %1450, %1453
  %1458 = phi i32 [ %1454, %1453 ], [ 0, %1450 ]
  %1459 = phi %union.StackValue* [ %1456, %1453 ], [ %3797, %1450 ]
  %1460 = getelementptr inbounds i32, i32* %3799, i64 1
  %1461 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1462:                                   ; preds = %3795
  %1463 = lshr i32 %3796, 16
  %1464 = and i32 %1463, 255
  %1465 = zext i32 %1464 to i64
  %1466 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1465, i32 0
  %1467 = lshr i32 %3796, 24
  %1468 = zext i32 %1467 to i64
  %1469 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1468
  %1470 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1465, i32 0, i32 1
  %1471 = load i8, i8* %1470, align 8, !tbaa !2
  switch i8 %1471, label %1495 [
    i8 19, label %1472
    i8 35, label %1475
  ]

; <label>:1472:                                   ; preds = %1462
  %1473 = bitcast %struct.TValue* %1466 to double*
  %1474 = load double, double* %1473, align 8, !tbaa !6
  br label %1479

; <label>:1475:                                   ; preds = %1462
  %1476 = bitcast %struct.TValue* %1466 to i64*
  %1477 = load i64, i64* %1476, align 8, !tbaa !6
  %1478 = sitofp i64 %1477 to double
  br label %1479

; <label>:1479:                                   ; preds = %1472, %1475
  %1480 = phi double [ %1474, %1472 ], [ %1478, %1475 ]
  %1481 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1468, i32 1
  %1482 = load i8, i8* %1481, align 8, !tbaa !2
  switch i8 %1482, label %1495 [
    i8 19, label %1483
    i8 35, label %1486
  ]

; <label>:1483:                                   ; preds = %1479
  %1484 = bitcast %struct.TValue* %1469 to double*
  %1485 = load double, double* %1484, align 8, !tbaa !6
  br label %1490

; <label>:1486:                                   ; preds = %1479
  %1487 = bitcast %struct.TValue* %1469 to i64*
  %1488 = load i64, i64* %1487, align 8, !tbaa !6
  %1489 = sitofp i64 %1488 to double
  br label %1490

; <label>:1490:                                   ; preds = %1483, %1486
  %1491 = phi double [ %1485, %1483 ], [ %1489, %1486 ]
  %1492 = fdiv double %1480, %1491
  %1493 = bitcast %union.StackValue* %3803 to double*
  store double %1492, double* %1493, align 8, !tbaa !6
  %1494 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1494, align 8, !tbaa !2
  br label %1498

; <label>:1495:                                   ; preds = %1479, %1462
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1496 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1496, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1466, %struct.TValue* %1469, %union.StackValue* %3803, i32 11) #11
  %1497 = load i32, i32* %37, align 8, !tbaa !6
  br label %1498

; <label>:1498:                                   ; preds = %1495, %1490
  %1499 = phi i32 [ %3798, %1490 ], [ %1497, %1495 ]
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1505, label %1501

; <label>:1501:                                   ; preds = %1498
  %1502 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1503 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1504 = getelementptr inbounds %union.StackValue, %union.StackValue* %1503, i64 1
  br label %1505

; <label>:1505:                                   ; preds = %1498, %1501
  %1506 = phi i32 [ %1502, %1501 ], [ 0, %1498 ]
  %1507 = phi %union.StackValue* [ %1504, %1501 ], [ %3797, %1498 ]
  %1508 = getelementptr inbounds i32, i32* %3799, i64 1
  %1509 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1510:                                   ; preds = %3795
  %1511 = lshr i32 %3796, 16
  %1512 = and i32 %1511, 255
  %1513 = zext i32 %1512 to i64
  %1514 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1513, i32 0
  %1515 = lshr i32 %3796, 24
  %1516 = zext i32 %1515 to i64
  %1517 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1516
  %1518 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1513, i32 0, i32 1
  %1519 = load i8, i8* %1518, align 8, !tbaa !2
  switch i8 %1519, label %1555 [
    i8 35, label %1520
    i8 19, label %1532
  ]

; <label>:1520:                                   ; preds = %1510
  %1521 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1516, i32 1
  %1522 = load i8, i8* %1521, align 8, !tbaa !2
  %1523 = icmp eq i8 %1522, 35
  %1524 = bitcast %struct.TValue* %1514 to i64*
  %1525 = load i64, i64* %1524, align 8, !tbaa !6
  br i1 %1523, label %1526, label %1537

; <label>:1526:                                   ; preds = %1520
  %1527 = bitcast %struct.TValue* %1517 to i64*
  %1528 = load i64, i64* %1527, align 8, !tbaa !6
  %1529 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %1525, i64 %1528) #12
  %1530 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1529, i64* %1530, align 8, !tbaa !6
  %1531 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1531, align 8, !tbaa !2
  br label %1558

; <label>:1532:                                   ; preds = %1510
  %1533 = bitcast %struct.TValue* %1514 to double*
  %1534 = load double, double* %1533, align 8, !tbaa !6
  %1535 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1516, i32 1
  %1536 = load i8, i8* %1535, align 8, !tbaa !2
  br label %1539

; <label>:1537:                                   ; preds = %1520
  %1538 = sitofp i64 %1525 to double
  br label %1539

; <label>:1539:                                   ; preds = %1532, %1537
  %1540 = phi i8 [ %1536, %1532 ], [ %1522, %1537 ]
  %1541 = phi double [ %1534, %1532 ], [ %1538, %1537 ]
  switch i8 %1540, label %1555 [
    i8 19, label %1542
    i8 35, label %1545
  ]

; <label>:1542:                                   ; preds = %1539
  %1543 = bitcast %struct.TValue* %1517 to double*
  %1544 = load double, double* %1543, align 8, !tbaa !6
  br label %1549

; <label>:1545:                                   ; preds = %1539
  %1546 = bitcast %struct.TValue* %1517 to i64*
  %1547 = load i64, i64* %1546, align 8, !tbaa !6
  %1548 = sitofp i64 %1547 to double
  br label %1549

; <label>:1549:                                   ; preds = %1542, %1545
  %1550 = phi double [ %1544, %1542 ], [ %1548, %1545 ]
  %1551 = fdiv double %1541, %1550
  %1552 = call double @llvm.floor.f64(double %1551)
  %1553 = bitcast %union.StackValue* %3803 to double*
  store double %1552, double* %1553, align 8, !tbaa !6
  %1554 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1554, align 8, !tbaa !2
  br label %1558

; <label>:1555:                                   ; preds = %1510, %1539
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1556 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1556, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1514, %struct.TValue* %1517, %union.StackValue* %3803, i32 0, i32 12) #11
  %1557 = load i32, i32* %37, align 8, !tbaa !6
  br label %1558

; <label>:1558:                                   ; preds = %1549, %1555, %1526
  %1559 = phi i32 [ %3798, %1526 ], [ %3798, %1549 ], [ %1557, %1555 ]
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1565, label %1561

; <label>:1561:                                   ; preds = %1558
  %1562 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1563 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1564 = getelementptr inbounds %union.StackValue, %union.StackValue* %1563, i64 1
  br label %1565

; <label>:1565:                                   ; preds = %1558, %1561
  %1566 = phi i32 [ %1562, %1561 ], [ 0, %1558 ]
  %1567 = phi %union.StackValue* [ %1564, %1561 ], [ %3797, %1558 ]
  %1568 = getelementptr inbounds i32, i32* %3799, i64 1
  %1569 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1570:                                   ; preds = %3795
  %1571 = lshr i32 %3796, 16
  %1572 = and i32 %1571, 255
  %1573 = zext i32 %1572 to i64
  %1574 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1573, i32 0
  %1575 = lshr i32 %3796, 24
  %1576 = zext i32 %1575 to i64
  %1577 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1576, i32 0
  %1578 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1573, i32 0, i32 1
  %1579 = load i8, i8* %1578, align 8, !tbaa !2
  switch i8 %1579, label %1614 [
    i8 35, label %1580
    i8 19, label %1592
  ]

; <label>:1580:                                   ; preds = %1570
  %1581 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1576, i32 0, i32 1
  %1582 = load i8, i8* %1581, align 8, !tbaa !2
  %1583 = icmp eq i8 %1582, 35
  %1584 = bitcast %struct.TValue* %1574 to i64*
  %1585 = load i64, i64* %1584, align 8, !tbaa !6
  br i1 %1583, label %1586, label %1597

; <label>:1586:                                   ; preds = %1580
  %1587 = bitcast %struct.TValue* %1577 to i64*
  %1588 = load i64, i64* %1587, align 8, !tbaa !6
  %1589 = add i64 %1588, %1585
  %1590 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1589, i64* %1590, align 8, !tbaa !6
  %1591 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1591, align 8, !tbaa !2
  br label %1617

; <label>:1592:                                   ; preds = %1570
  %1593 = bitcast %struct.TValue* %1574 to double*
  %1594 = load double, double* %1593, align 8, !tbaa !6
  %1595 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1576, i32 0, i32 1
  %1596 = load i8, i8* %1595, align 8, !tbaa !2
  br label %1599

; <label>:1597:                                   ; preds = %1580
  %1598 = sitofp i64 %1585 to double
  br label %1599

; <label>:1599:                                   ; preds = %1592, %1597
  %1600 = phi i8 [ %1596, %1592 ], [ %1582, %1597 ]
  %1601 = phi double [ %1594, %1592 ], [ %1598, %1597 ]
  switch i8 %1600, label %1614 [
    i8 19, label %1602
    i8 35, label %1605
  ]

; <label>:1602:                                   ; preds = %1599
  %1603 = bitcast %struct.TValue* %1577 to double*
  %1604 = load double, double* %1603, align 8, !tbaa !6
  br label %1609

; <label>:1605:                                   ; preds = %1599
  %1606 = bitcast %struct.TValue* %1577 to i64*
  %1607 = load i64, i64* %1606, align 8, !tbaa !6
  %1608 = sitofp i64 %1607 to double
  br label %1609

; <label>:1609:                                   ; preds = %1602, %1605
  %1610 = phi double [ %1604, %1602 ], [ %1608, %1605 ]
  %1611 = fadd double %1601, %1610
  %1612 = bitcast %union.StackValue* %3803 to double*
  store double %1611, double* %1612, align 8, !tbaa !6
  %1613 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1613, align 8, !tbaa !2
  br label %1617

; <label>:1614:                                   ; preds = %1570, %1599
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1615 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1615, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1574, %struct.TValue* %1577, %union.StackValue* %3803, i32 6) #11
  %1616 = load i32, i32* %37, align 8, !tbaa !6
  br label %1617

; <label>:1617:                                   ; preds = %1609, %1614, %1586
  %1618 = phi i32 [ %3798, %1586 ], [ %3798, %1609 ], [ %1616, %1614 ]
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1624, label %1620

; <label>:1620:                                   ; preds = %1617
  %1621 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1622 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1623 = getelementptr inbounds %union.StackValue, %union.StackValue* %1622, i64 1
  br label %1624

; <label>:1624:                                   ; preds = %1617, %1620
  %1625 = phi i32 [ %1621, %1620 ], [ 0, %1617 ]
  %1626 = phi %union.StackValue* [ %1623, %1620 ], [ %3797, %1617 ]
  %1627 = getelementptr inbounds i32, i32* %3799, i64 1
  %1628 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1629:                                   ; preds = %3795
  %1630 = lshr i32 %3796, 16
  %1631 = and i32 %1630, 255
  %1632 = zext i32 %1631 to i64
  %1633 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1632, i32 0
  %1634 = lshr i32 %3796, 24
  %1635 = zext i32 %1634 to i64
  %1636 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1635, i32 0
  %1637 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1632, i32 0, i32 1
  %1638 = load i8, i8* %1637, align 8, !tbaa !2
  switch i8 %1638, label %1673 [
    i8 35, label %1639
    i8 19, label %1651
  ]

; <label>:1639:                                   ; preds = %1629
  %1640 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1635, i32 0, i32 1
  %1641 = load i8, i8* %1640, align 8, !tbaa !2
  %1642 = icmp eq i8 %1641, 35
  %1643 = bitcast %struct.TValue* %1633 to i64*
  %1644 = load i64, i64* %1643, align 8, !tbaa !6
  br i1 %1642, label %1645, label %1656

; <label>:1645:                                   ; preds = %1639
  %1646 = bitcast %struct.TValue* %1636 to i64*
  %1647 = load i64, i64* %1646, align 8, !tbaa !6
  %1648 = sub i64 %1644, %1647
  %1649 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1648, i64* %1649, align 8, !tbaa !6
  %1650 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1650, align 8, !tbaa !2
  br label %1676

; <label>:1651:                                   ; preds = %1629
  %1652 = bitcast %struct.TValue* %1633 to double*
  %1653 = load double, double* %1652, align 8, !tbaa !6
  %1654 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1635, i32 0, i32 1
  %1655 = load i8, i8* %1654, align 8, !tbaa !2
  br label %1658

; <label>:1656:                                   ; preds = %1639
  %1657 = sitofp i64 %1644 to double
  br label %1658

; <label>:1658:                                   ; preds = %1651, %1656
  %1659 = phi i8 [ %1655, %1651 ], [ %1641, %1656 ]
  %1660 = phi double [ %1653, %1651 ], [ %1657, %1656 ]
  switch i8 %1659, label %1673 [
    i8 19, label %1661
    i8 35, label %1664
  ]

; <label>:1661:                                   ; preds = %1658
  %1662 = bitcast %struct.TValue* %1636 to double*
  %1663 = load double, double* %1662, align 8, !tbaa !6
  br label %1668

; <label>:1664:                                   ; preds = %1658
  %1665 = bitcast %struct.TValue* %1636 to i64*
  %1666 = load i64, i64* %1665, align 8, !tbaa !6
  %1667 = sitofp i64 %1666 to double
  br label %1668

; <label>:1668:                                   ; preds = %1661, %1664
  %1669 = phi double [ %1663, %1661 ], [ %1667, %1664 ]
  %1670 = fsub double %1660, %1669
  %1671 = bitcast %union.StackValue* %3803 to double*
  store double %1670, double* %1671, align 8, !tbaa !6
  %1672 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1672, align 8, !tbaa !2
  br label %1676

; <label>:1673:                                   ; preds = %1629, %1658
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1674 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1674, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1633, %struct.TValue* %1636, %union.StackValue* %3803, i32 7) #11
  %1675 = load i32, i32* %37, align 8, !tbaa !6
  br label %1676

; <label>:1676:                                   ; preds = %1668, %1673, %1645
  %1677 = phi i32 [ %3798, %1645 ], [ %3798, %1668 ], [ %1675, %1673 ]
  %1678 = icmp eq i32 %1677, 0
  br i1 %1678, label %1683, label %1679

; <label>:1679:                                   ; preds = %1676
  %1680 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1681 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1682 = getelementptr inbounds %union.StackValue, %union.StackValue* %1681, i64 1
  br label %1683

; <label>:1683:                                   ; preds = %1676, %1679
  %1684 = phi i32 [ %1680, %1679 ], [ 0, %1676 ]
  %1685 = phi %union.StackValue* [ %1682, %1679 ], [ %3797, %1676 ]
  %1686 = getelementptr inbounds i32, i32* %3799, i64 1
  %1687 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1688:                                   ; preds = %3795
  %1689 = lshr i32 %3796, 16
  %1690 = and i32 %1689, 255
  %1691 = zext i32 %1690 to i64
  %1692 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1691, i32 0
  %1693 = lshr i32 %3796, 24
  %1694 = zext i32 %1693 to i64
  %1695 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1694, i32 0
  %1696 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1691, i32 0, i32 1
  %1697 = load i8, i8* %1696, align 8, !tbaa !2
  switch i8 %1697, label %1732 [
    i8 35, label %1698
    i8 19, label %1710
  ]

; <label>:1698:                                   ; preds = %1688
  %1699 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1694, i32 0, i32 1
  %1700 = load i8, i8* %1699, align 8, !tbaa !2
  %1701 = icmp eq i8 %1700, 35
  %1702 = bitcast %struct.TValue* %1692 to i64*
  %1703 = load i64, i64* %1702, align 8, !tbaa !6
  br i1 %1701, label %1704, label %1715

; <label>:1704:                                   ; preds = %1698
  %1705 = bitcast %struct.TValue* %1695 to i64*
  %1706 = load i64, i64* %1705, align 8, !tbaa !6
  %1707 = mul i64 %1706, %1703
  %1708 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1707, i64* %1708, align 8, !tbaa !6
  %1709 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1709, align 8, !tbaa !2
  br label %1735

; <label>:1710:                                   ; preds = %1688
  %1711 = bitcast %struct.TValue* %1692 to double*
  %1712 = load double, double* %1711, align 8, !tbaa !6
  %1713 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1694, i32 0, i32 1
  %1714 = load i8, i8* %1713, align 8, !tbaa !2
  br label %1717

; <label>:1715:                                   ; preds = %1698
  %1716 = sitofp i64 %1703 to double
  br label %1717

; <label>:1717:                                   ; preds = %1710, %1715
  %1718 = phi i8 [ %1714, %1710 ], [ %1700, %1715 ]
  %1719 = phi double [ %1712, %1710 ], [ %1716, %1715 ]
  switch i8 %1718, label %1732 [
    i8 19, label %1720
    i8 35, label %1723
  ]

; <label>:1720:                                   ; preds = %1717
  %1721 = bitcast %struct.TValue* %1695 to double*
  %1722 = load double, double* %1721, align 8, !tbaa !6
  br label %1727

; <label>:1723:                                   ; preds = %1717
  %1724 = bitcast %struct.TValue* %1695 to i64*
  %1725 = load i64, i64* %1724, align 8, !tbaa !6
  %1726 = sitofp i64 %1725 to double
  br label %1727

; <label>:1727:                                   ; preds = %1720, %1723
  %1728 = phi double [ %1722, %1720 ], [ %1726, %1723 ]
  %1729 = fmul double %1719, %1728
  %1730 = bitcast %union.StackValue* %3803 to double*
  store double %1729, double* %1730, align 8, !tbaa !6
  %1731 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1731, align 8, !tbaa !2
  br label %1735

; <label>:1732:                                   ; preds = %1688, %1717
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1733 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1733, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1692, %struct.TValue* %1695, %union.StackValue* %3803, i32 8) #11
  %1734 = load i32, i32* %37, align 8, !tbaa !6
  br label %1735

; <label>:1735:                                   ; preds = %1727, %1732, %1704
  %1736 = phi i32 [ %3798, %1704 ], [ %3798, %1727 ], [ %1734, %1732 ]
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1742, label %1738

; <label>:1738:                                   ; preds = %1735
  %1739 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1740 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1741 = getelementptr inbounds %union.StackValue, %union.StackValue* %1740, i64 1
  br label %1742

; <label>:1742:                                   ; preds = %1735, %1738
  %1743 = phi i32 [ %1739, %1738 ], [ 0, %1735 ]
  %1744 = phi %union.StackValue* [ %1741, %1738 ], [ %3797, %1735 ]
  %1745 = getelementptr inbounds i32, i32* %3799, i64 1
  %1746 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1747:                                   ; preds = %3795
  %1748 = lshr i32 %3796, 16
  %1749 = and i32 %1748, 255
  %1750 = zext i32 %1749 to i64
  %1751 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1750, i32 0
  %1752 = lshr i32 %3796, 24
  %1753 = zext i32 %1752 to i64
  %1754 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1753, i32 0
  %1755 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1750, i32 0, i32 1
  %1756 = load i8, i8* %1755, align 8, !tbaa !2
  switch i8 %1756, label %1791 [
    i8 35, label %1757
    i8 19, label %1769
  ]

; <label>:1757:                                   ; preds = %1747
  %1758 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1753, i32 0, i32 1
  %1759 = load i8, i8* %1758, align 8, !tbaa !2
  %1760 = icmp eq i8 %1759, 35
  %1761 = bitcast %struct.TValue* %1751 to i64*
  %1762 = load i64, i64* %1761, align 8, !tbaa !6
  br i1 %1760, label %1763, label %1774

; <label>:1763:                                   ; preds = %1757
  %1764 = bitcast %struct.TValue* %1754 to i64*
  %1765 = load i64, i64* %1764, align 8, !tbaa !6
  %1766 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %1762, i64 %1765) #12
  %1767 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1766, i64* %1767, align 8, !tbaa !6
  %1768 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1768, align 8, !tbaa !2
  br label %1794

; <label>:1769:                                   ; preds = %1747
  %1770 = bitcast %struct.TValue* %1751 to double*
  %1771 = load double, double* %1770, align 8, !tbaa !6
  %1772 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1753, i32 0, i32 1
  %1773 = load i8, i8* %1772, align 8, !tbaa !2
  br label %1776

; <label>:1774:                                   ; preds = %1757
  %1775 = sitofp i64 %1762 to double
  br label %1776

; <label>:1776:                                   ; preds = %1769, %1774
  %1777 = phi i8 [ %1773, %1769 ], [ %1759, %1774 ]
  %1778 = phi double [ %1771, %1769 ], [ %1775, %1774 ]
  switch i8 %1777, label %1791 [
    i8 19, label %1779
    i8 35, label %1782
  ]

; <label>:1779:                                   ; preds = %1776
  %1780 = bitcast %struct.TValue* %1754 to double*
  %1781 = load double, double* %1780, align 8, !tbaa !6
  br label %1786

; <label>:1782:                                   ; preds = %1776
  %1783 = bitcast %struct.TValue* %1754 to i64*
  %1784 = load i64, i64* %1783, align 8, !tbaa !6
  %1785 = sitofp i64 %1784 to double
  br label %1786

; <label>:1786:                                   ; preds = %1779, %1782
  %1787 = phi double [ %1781, %1779 ], [ %1785, %1782 ]
  %1788 = call double @luaV_modf(%struct.lua_State* undef, double %1778, double %1787) #12
  %1789 = bitcast %union.StackValue* %3803 to double*
  store double %1788, double* %1789, align 8, !tbaa !6
  %1790 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1790, align 8, !tbaa !2
  br label %1794

; <label>:1791:                                   ; preds = %1747, %1776
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1792 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1792, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1751, %struct.TValue* %1754, %union.StackValue* %3803, i32 9) #11
  %1793 = load i32, i32* %37, align 8, !tbaa !6
  br label %1794

; <label>:1794:                                   ; preds = %1786, %1791, %1763
  %1795 = phi i32 [ %3798, %1763 ], [ %3798, %1786 ], [ %1793, %1791 ]
  %1796 = icmp eq i32 %1795, 0
  br i1 %1796, label %1801, label %1797

; <label>:1797:                                   ; preds = %1794
  %1798 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1799 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1800 = getelementptr inbounds %union.StackValue, %union.StackValue* %1799, i64 1
  br label %1801

; <label>:1801:                                   ; preds = %1794, %1797
  %1802 = phi i32 [ %1798, %1797 ], [ 0, %1794 ]
  %1803 = phi %union.StackValue* [ %1800, %1797 ], [ %3797, %1794 ]
  %1804 = getelementptr inbounds i32, i32* %3799, i64 1
  %1805 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1806:                                   ; preds = %3795
  %1807 = lshr i32 %3796, 16
  %1808 = and i32 %1807, 255
  %1809 = zext i32 %1808 to i64
  %1810 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1809, i32 0
  %1811 = lshr i32 %3796, 24
  %1812 = zext i32 %1811 to i64
  %1813 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1812, i32 0
  %1814 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1809, i32 0, i32 1
  %1815 = load i8, i8* %1814, align 8, !tbaa !2
  switch i8 %1815, label %1839 [
    i8 19, label %1816
    i8 35, label %1819
  ]

; <label>:1816:                                   ; preds = %1806
  %1817 = bitcast %struct.TValue* %1810 to double*
  %1818 = load double, double* %1817, align 8, !tbaa !6
  br label %1823

; <label>:1819:                                   ; preds = %1806
  %1820 = bitcast %struct.TValue* %1810 to i64*
  %1821 = load i64, i64* %1820, align 8, !tbaa !6
  %1822 = sitofp i64 %1821 to double
  br label %1823

; <label>:1823:                                   ; preds = %1816, %1819
  %1824 = phi double [ %1818, %1816 ], [ %1822, %1819 ]
  %1825 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1812, i32 0, i32 1
  %1826 = load i8, i8* %1825, align 8, !tbaa !2
  switch i8 %1826, label %1839 [
    i8 19, label %1827
    i8 35, label %1830
  ]

; <label>:1827:                                   ; preds = %1823
  %1828 = bitcast %struct.TValue* %1813 to double*
  %1829 = load double, double* %1828, align 8, !tbaa !6
  br label %1834

; <label>:1830:                                   ; preds = %1823
  %1831 = bitcast %struct.TValue* %1813 to i64*
  %1832 = load i64, i64* %1831, align 8, !tbaa !6
  %1833 = sitofp i64 %1832 to double
  br label %1834

; <label>:1834:                                   ; preds = %1827, %1830
  %1835 = phi double [ %1829, %1827 ], [ %1833, %1830 ]
  %1836 = call double @pow(double %1824, double %1835) #11
  %1837 = bitcast %union.StackValue* %3803 to double*
  store double %1836, double* %1837, align 8, !tbaa !6
  %1838 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1838, align 8, !tbaa !2
  br label %1842

; <label>:1839:                                   ; preds = %1823, %1806
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1840 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1840, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1810, %struct.TValue* %1813, %union.StackValue* %3803, i32 10) #11
  %1841 = load i32, i32* %37, align 8, !tbaa !6
  br label %1842

; <label>:1842:                                   ; preds = %1839, %1834
  %1843 = phi i32 [ %3798, %1834 ], [ %1841, %1839 ]
  %1844 = icmp eq i32 %1843, 0
  br i1 %1844, label %1849, label %1845

; <label>:1845:                                   ; preds = %1842
  %1846 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1847 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1848 = getelementptr inbounds %union.StackValue, %union.StackValue* %1847, i64 1
  br label %1849

; <label>:1849:                                   ; preds = %1842, %1845
  %1850 = phi i32 [ %1846, %1845 ], [ 0, %1842 ]
  %1851 = phi %union.StackValue* [ %1848, %1845 ], [ %3797, %1842 ]
  %1852 = getelementptr inbounds i32, i32* %3799, i64 1
  %1853 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1854:                                   ; preds = %3795
  %1855 = lshr i32 %3796, 16
  %1856 = and i32 %1855, 255
  %1857 = zext i32 %1856 to i64
  %1858 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1857, i32 0
  %1859 = lshr i32 %3796, 24
  %1860 = zext i32 %1859 to i64
  %1861 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1860, i32 0
  %1862 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1857, i32 0, i32 1
  %1863 = load i8, i8* %1862, align 8, !tbaa !2
  switch i8 %1863, label %1887 [
    i8 19, label %1864
    i8 35, label %1867
  ]

; <label>:1864:                                   ; preds = %1854
  %1865 = bitcast %struct.TValue* %1858 to double*
  %1866 = load double, double* %1865, align 8, !tbaa !6
  br label %1871

; <label>:1867:                                   ; preds = %1854
  %1868 = bitcast %struct.TValue* %1858 to i64*
  %1869 = load i64, i64* %1868, align 8, !tbaa !6
  %1870 = sitofp i64 %1869 to double
  br label %1871

; <label>:1871:                                   ; preds = %1864, %1867
  %1872 = phi double [ %1866, %1864 ], [ %1870, %1867 ]
  %1873 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1860, i32 0, i32 1
  %1874 = load i8, i8* %1873, align 8, !tbaa !2
  switch i8 %1874, label %1887 [
    i8 19, label %1875
    i8 35, label %1878
  ]

; <label>:1875:                                   ; preds = %1871
  %1876 = bitcast %struct.TValue* %1861 to double*
  %1877 = load double, double* %1876, align 8, !tbaa !6
  br label %1882

; <label>:1878:                                   ; preds = %1871
  %1879 = bitcast %struct.TValue* %1861 to i64*
  %1880 = load i64, i64* %1879, align 8, !tbaa !6
  %1881 = sitofp i64 %1880 to double
  br label %1882

; <label>:1882:                                   ; preds = %1875, %1878
  %1883 = phi double [ %1877, %1875 ], [ %1881, %1878 ]
  %1884 = fdiv double %1872, %1883
  %1885 = bitcast %union.StackValue* %3803 to double*
  store double %1884, double* %1885, align 8, !tbaa !6
  %1886 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1886, align 8, !tbaa !2
  br label %1890

; <label>:1887:                                   ; preds = %1871, %1854
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1888 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1888, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1858, %struct.TValue* %1861, %union.StackValue* %3803, i32 11) #11
  %1889 = load i32, i32* %37, align 8, !tbaa !6
  br label %1890

; <label>:1890:                                   ; preds = %1887, %1882
  %1891 = phi i32 [ %3798, %1882 ], [ %1889, %1887 ]
  %1892 = icmp eq i32 %1891, 0
  br i1 %1892, label %1897, label %1893

; <label>:1893:                                   ; preds = %1890
  %1894 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1895 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1896 = getelementptr inbounds %union.StackValue, %union.StackValue* %1895, i64 1
  br label %1897

; <label>:1897:                                   ; preds = %1890, %1893
  %1898 = phi i32 [ %1894, %1893 ], [ 0, %1890 ]
  %1899 = phi %union.StackValue* [ %1896, %1893 ], [ %3797, %1890 ]
  %1900 = getelementptr inbounds i32, i32* %3799, i64 1
  %1901 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1902:                                   ; preds = %3795
  %1903 = lshr i32 %3796, 16
  %1904 = and i32 %1903, 255
  %1905 = zext i32 %1904 to i64
  %1906 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1905, i32 0
  %1907 = lshr i32 %3796, 24
  %1908 = zext i32 %1907 to i64
  %1909 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1908, i32 0
  %1910 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1905, i32 0, i32 1
  %1911 = load i8, i8* %1910, align 8, !tbaa !2
  switch i8 %1911, label %1947 [
    i8 35, label %1912
    i8 19, label %1924
  ]

; <label>:1912:                                   ; preds = %1902
  %1913 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1908, i32 0, i32 1
  %1914 = load i8, i8* %1913, align 8, !tbaa !2
  %1915 = icmp eq i8 %1914, 35
  %1916 = bitcast %struct.TValue* %1906 to i64*
  %1917 = load i64, i64* %1916, align 8, !tbaa !6
  br i1 %1915, label %1918, label %1929

; <label>:1918:                                   ; preds = %1912
  %1919 = bitcast %struct.TValue* %1909 to i64*
  %1920 = load i64, i64* %1919, align 8, !tbaa !6
  %1921 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %1917, i64 %1920) #12
  %1922 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1921, i64* %1922, align 8, !tbaa !6
  %1923 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1923, align 8, !tbaa !2
  br label %1950

; <label>:1924:                                   ; preds = %1902
  %1925 = bitcast %struct.TValue* %1906 to double*
  %1926 = load double, double* %1925, align 8, !tbaa !6
  %1927 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1908, i32 0, i32 1
  %1928 = load i8, i8* %1927, align 8, !tbaa !2
  br label %1931

; <label>:1929:                                   ; preds = %1912
  %1930 = sitofp i64 %1917 to double
  br label %1931

; <label>:1931:                                   ; preds = %1924, %1929
  %1932 = phi i8 [ %1928, %1924 ], [ %1914, %1929 ]
  %1933 = phi double [ %1926, %1924 ], [ %1930, %1929 ]
  switch i8 %1932, label %1947 [
    i8 19, label %1934
    i8 35, label %1937
  ]

; <label>:1934:                                   ; preds = %1931
  %1935 = bitcast %struct.TValue* %1909 to double*
  %1936 = load double, double* %1935, align 8, !tbaa !6
  br label %1941

; <label>:1937:                                   ; preds = %1931
  %1938 = bitcast %struct.TValue* %1909 to i64*
  %1939 = load i64, i64* %1938, align 8, !tbaa !6
  %1940 = sitofp i64 %1939 to double
  br label %1941

; <label>:1941:                                   ; preds = %1934, %1937
  %1942 = phi double [ %1936, %1934 ], [ %1940, %1937 ]
  %1943 = fdiv double %1933, %1942
  %1944 = call double @llvm.floor.f64(double %1943)
  %1945 = bitcast %union.StackValue* %3803 to double*
  store double %1944, double* %1945, align 8, !tbaa !6
  %1946 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %1946, align 8, !tbaa !2
  br label %1950

; <label>:1947:                                   ; preds = %1902, %1931
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1948 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1948, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1906, %struct.TValue* %1909, %union.StackValue* %3803, i32 12) #11
  %1949 = load i32, i32* %37, align 8, !tbaa !6
  br label %1950

; <label>:1950:                                   ; preds = %1941, %1947, %1918
  %1951 = phi i32 [ %3798, %1918 ], [ %3798, %1941 ], [ %1949, %1947 ]
  %1952 = icmp eq i32 %1951, 0
  br i1 %1952, label %1957, label %1953

; <label>:1953:                                   ; preds = %1950
  %1954 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1955 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1956 = getelementptr inbounds %union.StackValue, %union.StackValue* %1955, i64 1
  br label %1957

; <label>:1957:                                   ; preds = %1950, %1953
  %1958 = phi i32 [ %1954, %1953 ], [ 0, %1950 ]
  %1959 = phi %union.StackValue* [ %1956, %1953 ], [ %3797, %1950 ]
  %1960 = getelementptr inbounds i32, i32* %3799, i64 1
  %1961 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:1962:                                   ; preds = %3795
  %1963 = lshr i32 %3796, 16
  %1964 = and i32 %1963, 255
  %1965 = zext i32 %1964 to i64
  %1966 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1965, i32 0
  %1967 = lshr i32 %3796, 24
  %1968 = zext i32 %1967 to i64
  %1969 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %1968, i32 0
  %1970 = bitcast %union.Value* %1969 to i64*
  %1971 = load i64, i64* %1970, align 8, !tbaa !6
  %1972 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %1965, i32 0, i32 1
  %1973 = load i8, i8* %1972, align 8, !tbaa !2
  %1974 = icmp eq i8 %1973, 35
  br i1 %1974, label %1975, label %1978

; <label>:1975:                                   ; preds = %1962
  %1976 = bitcast %struct.TValue* %1966 to i64*
  %1977 = load i64, i64* %1976, align 8, !tbaa !6
  store i64 %1977, i64* %6, align 8, !tbaa !9
  br label %1983

; <label>:1978:                                   ; preds = %1962
  %1979 = call i32 @luaV_tointegerns(%struct.TValue* %1966, i64* nonnull %6, i32 0) #12
  %1980 = icmp eq i32 %1979, 0
  br i1 %1980, label %1988, label %1981

; <label>:1981:                                   ; preds = %1978
  %1982 = load i64, i64* %6, align 8, !tbaa !9
  br label %1983

; <label>:1983:                                   ; preds = %1981, %1975
  %1984 = phi i64 [ %1982, %1981 ], [ %1977, %1975 ]
  %1985 = and i64 %1984, %1971
  %1986 = bitcast %union.StackValue* %3803 to i64*
  store i64 %1985, i64* %1986, align 8, !tbaa !6
  %1987 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %1987, align 8, !tbaa !2
  br label %1992

; <label>:1988:                                   ; preds = %1978
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %1989 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %1989, i64* %35, align 8, !tbaa !25
  %1990 = and i32 %3796, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1966, i64 %1971, i32 %1990, %union.StackValue* %3803, i32 13) #11
  %1991 = load i32, i32* %37, align 8, !tbaa !6
  br label %1992

; <label>:1992:                                   ; preds = %1988, %1983
  %1993 = phi i32 [ %3798, %1983 ], [ %1991, %1988 ]
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %1999, label %1995

; <label>:1995:                                   ; preds = %1992
  %1996 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %1997 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %1998 = getelementptr inbounds %union.StackValue, %union.StackValue* %1997, i64 1
  br label %1999

; <label>:1999:                                   ; preds = %1992, %1995
  %2000 = phi i32 [ %1996, %1995 ], [ 0, %1992 ]
  %2001 = phi %union.StackValue* [ %1998, %1995 ], [ %3797, %1992 ]
  %2002 = getelementptr inbounds i32, i32* %3799, i64 1
  %2003 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2004:                                   ; preds = %3795
  %2005 = lshr i32 %3796, 16
  %2006 = and i32 %2005, 255
  %2007 = zext i32 %2006 to i64
  %2008 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2007, i32 0
  %2009 = lshr i32 %3796, 24
  %2010 = zext i32 %2009 to i64
  %2011 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %2010, i32 0
  %2012 = bitcast %union.Value* %2011 to i64*
  %2013 = load i64, i64* %2012, align 8, !tbaa !6
  %2014 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2007, i32 0, i32 1
  %2015 = load i8, i8* %2014, align 8, !tbaa !2
  %2016 = icmp eq i8 %2015, 35
  br i1 %2016, label %2017, label %2020

; <label>:2017:                                   ; preds = %2004
  %2018 = bitcast %struct.TValue* %2008 to i64*
  %2019 = load i64, i64* %2018, align 8, !tbaa !6
  store i64 %2019, i64* %7, align 8, !tbaa !9
  br label %2025

; <label>:2020:                                   ; preds = %2004
  %2021 = call i32 @luaV_tointegerns(%struct.TValue* %2008, i64* nonnull %7, i32 0) #12
  %2022 = icmp eq i32 %2021, 0
  br i1 %2022, label %2030, label %2023

; <label>:2023:                                   ; preds = %2020
  %2024 = load i64, i64* %7, align 8, !tbaa !9
  br label %2025

; <label>:2025:                                   ; preds = %2023, %2017
  %2026 = phi i64 [ %2024, %2023 ], [ %2019, %2017 ]
  %2027 = or i64 %2026, %2013
  %2028 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2027, i64* %2028, align 8, !tbaa !6
  %2029 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2029, align 8, !tbaa !2
  br label %2034

; <label>:2030:                                   ; preds = %2020
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2031 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2031, i64* %35, align 8, !tbaa !25
  %2032 = and i32 %3796, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2008, i64 %2013, i32 %2032, %union.StackValue* %3803, i32 14) #11
  %2033 = load i32, i32* %37, align 8, !tbaa !6
  br label %2034

; <label>:2034:                                   ; preds = %2030, %2025
  %2035 = phi i32 [ %3798, %2025 ], [ %2033, %2030 ]
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2041, label %2037

; <label>:2037:                                   ; preds = %2034
  %2038 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2039 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2040 = getelementptr inbounds %union.StackValue, %union.StackValue* %2039, i64 1
  br label %2041

; <label>:2041:                                   ; preds = %2034, %2037
  %2042 = phi i32 [ %2038, %2037 ], [ 0, %2034 ]
  %2043 = phi %union.StackValue* [ %2040, %2037 ], [ %3797, %2034 ]
  %2044 = getelementptr inbounds i32, i32* %3799, i64 1
  %2045 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2046:                                   ; preds = %3795
  %2047 = lshr i32 %3796, 16
  %2048 = and i32 %2047, 255
  %2049 = zext i32 %2048 to i64
  %2050 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2049, i32 0
  %2051 = lshr i32 %3796, 24
  %2052 = zext i32 %2051 to i64
  %2053 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %2052, i32 0
  %2054 = bitcast %union.Value* %2053 to i64*
  %2055 = load i64, i64* %2054, align 8, !tbaa !6
  %2056 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2049, i32 0, i32 1
  %2057 = load i8, i8* %2056, align 8, !tbaa !2
  %2058 = icmp eq i8 %2057, 35
  br i1 %2058, label %2059, label %2062

; <label>:2059:                                   ; preds = %2046
  %2060 = bitcast %struct.TValue* %2050 to i64*
  %2061 = load i64, i64* %2060, align 8, !tbaa !6
  store i64 %2061, i64* %8, align 8, !tbaa !9
  br label %2067

; <label>:2062:                                   ; preds = %2046
  %2063 = call i32 @luaV_tointegerns(%struct.TValue* %2050, i64* nonnull %8, i32 0) #12
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2072, label %2065

; <label>:2065:                                   ; preds = %2062
  %2066 = load i64, i64* %8, align 8, !tbaa !9
  br label %2067

; <label>:2067:                                   ; preds = %2065, %2059
  %2068 = phi i64 [ %2066, %2065 ], [ %2061, %2059 ]
  %2069 = xor i64 %2068, %2055
  %2070 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2069, i64* %2070, align 8, !tbaa !6
  %2071 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2071, align 8, !tbaa !2
  br label %2076

; <label>:2072:                                   ; preds = %2062
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2073 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2073, i64* %35, align 8, !tbaa !25
  %2074 = and i32 %3796, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2050, i64 %2055, i32 %2074, %union.StackValue* %3803, i32 15) #11
  %2075 = load i32, i32* %37, align 8, !tbaa !6
  br label %2076

; <label>:2076:                                   ; preds = %2072, %2067
  %2077 = phi i32 [ %3798, %2067 ], [ %2075, %2072 ]
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2083, label %2079

; <label>:2079:                                   ; preds = %2076
  %2080 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2081 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2082 = getelementptr inbounds %union.StackValue, %union.StackValue* %2081, i64 1
  br label %2083

; <label>:2083:                                   ; preds = %2076, %2079
  %2084 = phi i32 [ %2080, %2079 ], [ 0, %2076 ]
  %2085 = phi %union.StackValue* [ %2082, %2079 ], [ %3797, %2076 ]
  %2086 = getelementptr inbounds i32, i32* %3799, i64 1
  %2087 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2088:                                   ; preds = %3795
  %2089 = lshr i32 %3796, 16
  %2090 = and i32 %2089, 255
  %2091 = zext i32 %2090 to i64
  %2092 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2091, i32 0
  %2093 = lshr i32 %3796, 24
  %2094 = zext i32 %2093 to i64
  %2095 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2094, i32 0
  %2096 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2091, i32 0, i32 1
  %2097 = load i8, i8* %2096, align 8, !tbaa !2
  %2098 = icmp eq i8 %2097, 35
  br i1 %2098, label %2099, label %2102

; <label>:2099:                                   ; preds = %2088
  %2100 = bitcast %struct.TValue* %2092 to i64*
  %2101 = load i64, i64* %2100, align 8, !tbaa !6
  store i64 %2101, i64* %9, align 8, !tbaa !9
  br label %2105

; <label>:2102:                                   ; preds = %2088
  %2103 = call i32 @luaV_tointegerns(%struct.TValue* %2092, i64* nonnull %9, i32 0) #12
  %2104 = icmp eq i32 %2103, 0
  br i1 %2104, label %2123, label %2105

; <label>:2105:                                   ; preds = %2102, %2099
  %2106 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2094, i32 0, i32 1
  %2107 = load i8, i8* %2106, align 8, !tbaa !2
  %2108 = icmp eq i8 %2107, 35
  br i1 %2108, label %2109, label %2112

; <label>:2109:                                   ; preds = %2105
  %2110 = bitcast %struct.TValue* %2095 to i64*
  %2111 = load i64, i64* %2110, align 8, !tbaa !6
  store i64 %2111, i64* %10, align 8, !tbaa !9
  br label %2117

; <label>:2112:                                   ; preds = %2105
  %2113 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2095, i64* nonnull %10, i32 0) #12
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2123, label %2115

; <label>:2115:                                   ; preds = %2112
  %2116 = load i64, i64* %10, align 8, !tbaa !9
  br label %2117

; <label>:2117:                                   ; preds = %2115, %2109
  %2118 = phi i64 [ %2116, %2115 ], [ %2111, %2109 ]
  %2119 = load i64, i64* %9, align 8, !tbaa !9
  %2120 = and i64 %2118, %2119
  %2121 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2120, i64* %2121, align 8, !tbaa !6
  %2122 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2122, align 8, !tbaa !2
  br label %2126

; <label>:2123:                                   ; preds = %2112, %2102
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2124 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2124, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2092, %struct.TValue* %2095, %union.StackValue* %3803, i32 13) #11
  %2125 = load i32, i32* %37, align 8, !tbaa !6
  br label %2126

; <label>:2126:                                   ; preds = %2123, %2117
  %2127 = phi i32 [ %3798, %2117 ], [ %2125, %2123 ]
  %2128 = icmp eq i32 %2127, 0
  br i1 %2128, label %2133, label %2129

; <label>:2129:                                   ; preds = %2126
  %2130 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2131 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2132 = getelementptr inbounds %union.StackValue, %union.StackValue* %2131, i64 1
  br label %2133

; <label>:2133:                                   ; preds = %2126, %2129
  %2134 = phi i32 [ %2130, %2129 ], [ 0, %2126 ]
  %2135 = phi %union.StackValue* [ %2132, %2129 ], [ %3797, %2126 ]
  %2136 = getelementptr inbounds i32, i32* %3799, i64 1
  %2137 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2138:                                   ; preds = %3795
  %2139 = lshr i32 %3796, 16
  %2140 = and i32 %2139, 255
  %2141 = zext i32 %2140 to i64
  %2142 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2141, i32 0
  %2143 = lshr i32 %3796, 24
  %2144 = zext i32 %2143 to i64
  %2145 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2144, i32 0
  %2146 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2141, i32 0, i32 1
  %2147 = load i8, i8* %2146, align 8, !tbaa !2
  %2148 = icmp eq i8 %2147, 35
  br i1 %2148, label %2149, label %2152

; <label>:2149:                                   ; preds = %2138
  %2150 = bitcast %struct.TValue* %2142 to i64*
  %2151 = load i64, i64* %2150, align 8, !tbaa !6
  store i64 %2151, i64* %11, align 8, !tbaa !9
  br label %2155

; <label>:2152:                                   ; preds = %2138
  %2153 = call i32 @luaV_tointegerns(%struct.TValue* %2142, i64* nonnull %11, i32 0) #12
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2173, label %2155

; <label>:2155:                                   ; preds = %2152, %2149
  %2156 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2144, i32 0, i32 1
  %2157 = load i8, i8* %2156, align 8, !tbaa !2
  %2158 = icmp eq i8 %2157, 35
  br i1 %2158, label %2159, label %2162

; <label>:2159:                                   ; preds = %2155
  %2160 = bitcast %struct.TValue* %2145 to i64*
  %2161 = load i64, i64* %2160, align 8, !tbaa !6
  store i64 %2161, i64* %12, align 8, !tbaa !9
  br label %2167

; <label>:2162:                                   ; preds = %2155
  %2163 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2145, i64* nonnull %12, i32 0) #12
  %2164 = icmp eq i32 %2163, 0
  br i1 %2164, label %2173, label %2165

; <label>:2165:                                   ; preds = %2162
  %2166 = load i64, i64* %12, align 8, !tbaa !9
  br label %2167

; <label>:2167:                                   ; preds = %2165, %2159
  %2168 = phi i64 [ %2166, %2165 ], [ %2161, %2159 ]
  %2169 = load i64, i64* %11, align 8, !tbaa !9
  %2170 = or i64 %2168, %2169
  %2171 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2170, i64* %2171, align 8, !tbaa !6
  %2172 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2172, align 8, !tbaa !2
  br label %2176

; <label>:2173:                                   ; preds = %2162, %2152
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2174 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2174, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2142, %struct.TValue* %2145, %union.StackValue* %3803, i32 14) #11
  %2175 = load i32, i32* %37, align 8, !tbaa !6
  br label %2176

; <label>:2176:                                   ; preds = %2173, %2167
  %2177 = phi i32 [ %3798, %2167 ], [ %2175, %2173 ]
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2183, label %2179

; <label>:2179:                                   ; preds = %2176
  %2180 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2181 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2182 = getelementptr inbounds %union.StackValue, %union.StackValue* %2181, i64 1
  br label %2183

; <label>:2183:                                   ; preds = %2176, %2179
  %2184 = phi i32 [ %2180, %2179 ], [ 0, %2176 ]
  %2185 = phi %union.StackValue* [ %2182, %2179 ], [ %3797, %2176 ]
  %2186 = getelementptr inbounds i32, i32* %3799, i64 1
  %2187 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2188:                                   ; preds = %3795
  %2189 = lshr i32 %3796, 16
  %2190 = and i32 %2189, 255
  %2191 = zext i32 %2190 to i64
  %2192 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2191, i32 0
  %2193 = lshr i32 %3796, 24
  %2194 = zext i32 %2193 to i64
  %2195 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2194, i32 0
  %2196 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2191, i32 0, i32 1
  %2197 = load i8, i8* %2196, align 8, !tbaa !2
  %2198 = icmp eq i8 %2197, 35
  br i1 %2198, label %2199, label %2202

; <label>:2199:                                   ; preds = %2188
  %2200 = bitcast %struct.TValue* %2192 to i64*
  %2201 = load i64, i64* %2200, align 8, !tbaa !6
  store i64 %2201, i64* %13, align 8, !tbaa !9
  br label %2205

; <label>:2202:                                   ; preds = %2188
  %2203 = call i32 @luaV_tointegerns(%struct.TValue* %2192, i64* nonnull %13, i32 0) #12
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2223, label %2205

; <label>:2205:                                   ; preds = %2202, %2199
  %2206 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2194, i32 0, i32 1
  %2207 = load i8, i8* %2206, align 8, !tbaa !2
  %2208 = icmp eq i8 %2207, 35
  br i1 %2208, label %2209, label %2212

; <label>:2209:                                   ; preds = %2205
  %2210 = bitcast %struct.TValue* %2195 to i64*
  %2211 = load i64, i64* %2210, align 8, !tbaa !6
  store i64 %2211, i64* %14, align 8, !tbaa !9
  br label %2217

; <label>:2212:                                   ; preds = %2205
  %2213 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2195, i64* nonnull %14, i32 0) #12
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2223, label %2215

; <label>:2215:                                   ; preds = %2212
  %2216 = load i64, i64* %14, align 8, !tbaa !9
  br label %2217

; <label>:2217:                                   ; preds = %2215, %2209
  %2218 = phi i64 [ %2216, %2215 ], [ %2211, %2209 ]
  %2219 = load i64, i64* %13, align 8, !tbaa !9
  %2220 = xor i64 %2218, %2219
  %2221 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2220, i64* %2221, align 8, !tbaa !6
  %2222 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2222, align 8, !tbaa !2
  br label %2226

; <label>:2223:                                   ; preds = %2212, %2202
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2224 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2224, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2192, %struct.TValue* %2195, %union.StackValue* %3803, i32 15) #11
  %2225 = load i32, i32* %37, align 8, !tbaa !6
  br label %2226

; <label>:2226:                                   ; preds = %2223, %2217
  %2227 = phi i32 [ %3798, %2217 ], [ %2225, %2223 ]
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2233, label %2229

; <label>:2229:                                   ; preds = %2226
  %2230 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2231 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2232 = getelementptr inbounds %union.StackValue, %union.StackValue* %2231, i64 1
  br label %2233

; <label>:2233:                                   ; preds = %2226, %2229
  %2234 = phi i32 [ %2230, %2229 ], [ 0, %2226 ]
  %2235 = phi %union.StackValue* [ %2232, %2229 ], [ %3797, %2226 ]
  %2236 = getelementptr inbounds i32, i32* %3799, i64 1
  %2237 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2238:                                   ; preds = %3795
  %2239 = lshr i32 %3796, 16
  %2240 = and i32 %2239, 255
  %2241 = zext i32 %2240 to i64
  %2242 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2241, i32 0
  %2243 = lshr i32 %3796, 24
  %2244 = add nsw i32 %2243, -127
  %2245 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2241, i32 0, i32 1
  %2246 = load i8, i8* %2245, align 8, !tbaa !2
  %2247 = icmp eq i8 %2246, 35
  br i1 %2247, label %2248, label %2251

; <label>:2248:                                   ; preds = %2238
  %2249 = bitcast %struct.TValue* %2242 to i64*
  %2250 = load i64, i64* %2249, align 8, !tbaa !6
  store i64 %2250, i64* %15, align 8, !tbaa !9
  br label %2256

; <label>:2251:                                   ; preds = %2238
  %2252 = call i32 @luaV_tointegerns(%struct.TValue* %2242, i64* nonnull %15, i32 0) #12
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2263, label %2254

; <label>:2254:                                   ; preds = %2251
  %2255 = load i64, i64* %15, align 8, !tbaa !9
  br label %2256

; <label>:2256:                                   ; preds = %2254, %2248
  %2257 = phi i64 [ %2255, %2254 ], [ %2250, %2248 ]
  %2258 = sub nsw i32 127, %2243
  %2259 = sext i32 %2258 to i64
  %2260 = call i64 @luaV_shiftl(i64 %2257, i64 %2259) #12
  %2261 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2260, i64* %2261, align 8, !tbaa !6
  %2262 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2262, align 8, !tbaa !2
  br label %2274

; <label>:2263:                                   ; preds = %2251
  %2264 = trunc i32 %3796 to i16
  %2265 = icmp slt i16 %2264, 0
  %2266 = sub nsw i32 127, %2243
  %2267 = lshr i32 %3796, 15
  %2268 = and i32 %2267, 1
  %2269 = sub nsw i32 17, %2268
  %2270 = select i1 %2265, i32 %2266, i32 %2244
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2271 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2271, i64* %35, align 8, !tbaa !25
  %2272 = sext i32 %2270 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2242, i64 %2272, i32 0, %union.StackValue* %3803, i32 %2269) #11
  %2273 = load i32, i32* %37, align 8, !tbaa !6
  br label %2274

; <label>:2274:                                   ; preds = %2263, %2256
  %2275 = phi i32 [ %3798, %2256 ], [ %2273, %2263 ]
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2281, label %2277

; <label>:2277:                                   ; preds = %2274
  %2278 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2279 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2280 = getelementptr inbounds %union.StackValue, %union.StackValue* %2279, i64 1
  br label %2281

; <label>:2281:                                   ; preds = %2274, %2277
  %2282 = phi i32 [ %2278, %2277 ], [ 0, %2274 ]
  %2283 = phi %union.StackValue* [ %2280, %2277 ], [ %3797, %2274 ]
  %2284 = getelementptr inbounds i32, i32* %3799, i64 1
  %2285 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2286:                                   ; preds = %3795
  %2287 = lshr i32 %3796, 16
  %2288 = and i32 %2287, 255
  %2289 = zext i32 %2288 to i64
  %2290 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2289, i32 0
  %2291 = lshr i32 %3796, 24
  %2292 = add nsw i32 %2291, -127
  %2293 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2289, i32 0, i32 1
  %2294 = load i8, i8* %2293, align 8, !tbaa !2
  %2295 = icmp eq i8 %2294, 35
  br i1 %2295, label %2296, label %2299

; <label>:2296:                                   ; preds = %2286
  %2297 = bitcast %struct.TValue* %2290 to i64*
  %2298 = load i64, i64* %2297, align 8, !tbaa !6
  store i64 %2298, i64* %16, align 8, !tbaa !9
  br label %2304

; <label>:2299:                                   ; preds = %2286
  %2300 = call i32 @luaV_tointegerns(%struct.TValue* %2290, i64* nonnull %16, i32 0) #12
  %2301 = icmp eq i32 %2300, 0
  br i1 %2301, label %2310, label %2302

; <label>:2302:                                   ; preds = %2299
  %2303 = load i64, i64* %16, align 8, !tbaa !9
  br label %2304

; <label>:2304:                                   ; preds = %2302, %2296
  %2305 = phi i64 [ %2303, %2302 ], [ %2298, %2296 ]
  %2306 = sext i32 %2292 to i64
  %2307 = call i64 @luaV_shiftl(i64 %2306, i64 %2305) #12
  %2308 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2307, i64* %2308, align 8, !tbaa !6
  %2309 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2309, align 8, !tbaa !2
  br label %2314

; <label>:2310:                                   ; preds = %2299
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2311 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2311, i64* %35, align 8, !tbaa !25
  %2312 = sext i32 %2292 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %2290, i64 %2312, i32 1, %union.StackValue* %3803, i32 16) #11
  %2313 = load i32, i32* %37, align 8, !tbaa !6
  br label %2314

; <label>:2314:                                   ; preds = %2310, %2304
  %2315 = phi i32 [ %3798, %2304 ], [ %2313, %2310 ]
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2321, label %2317

; <label>:2317:                                   ; preds = %2314
  %2318 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2319 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2320 = getelementptr inbounds %union.StackValue, %union.StackValue* %2319, i64 1
  br label %2321

; <label>:2321:                                   ; preds = %2314, %2317
  %2322 = phi i32 [ %2318, %2317 ], [ 0, %2314 ]
  %2323 = phi %union.StackValue* [ %2320, %2317 ], [ %3797, %2314 ]
  %2324 = getelementptr inbounds i32, i32* %3799, i64 1
  %2325 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2326:                                   ; preds = %3795
  %2327 = lshr i32 %3796, 16
  %2328 = and i32 %2327, 255
  %2329 = zext i32 %2328 to i64
  %2330 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2329, i32 0
  %2331 = lshr i32 %3796, 24
  %2332 = zext i32 %2331 to i64
  %2333 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2332, i32 0
  %2334 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2329, i32 0, i32 1
  %2335 = load i8, i8* %2334, align 8, !tbaa !2
  %2336 = icmp eq i8 %2335, 35
  br i1 %2336, label %2337, label %2340

; <label>:2337:                                   ; preds = %2326
  %2338 = bitcast %struct.TValue* %2330 to i64*
  %2339 = load i64, i64* %2338, align 8, !tbaa !6
  store i64 %2339, i64* %17, align 8, !tbaa !9
  br label %2343

; <label>:2340:                                   ; preds = %2326
  %2341 = call i32 @luaV_tointegerns(%struct.TValue* %2330, i64* nonnull %17, i32 0) #12
  %2342 = icmp eq i32 %2341, 0
  br i1 %2342, label %2362, label %2343

; <label>:2343:                                   ; preds = %2340, %2337
  %2344 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2332, i32 0, i32 1
  %2345 = load i8, i8* %2344, align 8, !tbaa !2
  %2346 = icmp eq i8 %2345, 35
  br i1 %2346, label %2347, label %2350

; <label>:2347:                                   ; preds = %2343
  %2348 = bitcast %struct.TValue* %2333 to i64*
  %2349 = load i64, i64* %2348, align 8, !tbaa !6
  store i64 %2349, i64* %18, align 8, !tbaa !9
  br label %2355

; <label>:2350:                                   ; preds = %2343
  %2351 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2333, i64* nonnull %18, i32 0) #12
  %2352 = icmp eq i32 %2351, 0
  br i1 %2352, label %2362, label %2353

; <label>:2353:                                   ; preds = %2350
  %2354 = load i64, i64* %18, align 8, !tbaa !9
  br label %2355

; <label>:2355:                                   ; preds = %2353, %2347
  %2356 = phi i64 [ %2354, %2353 ], [ %2349, %2347 ]
  %2357 = load i64, i64* %17, align 8, !tbaa !9
  %2358 = sub nsw i64 0, %2356
  %2359 = call i64 @luaV_shiftl(i64 %2357, i64 %2358) #12
  %2360 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2359, i64* %2360, align 8, !tbaa !6
  %2361 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2361, align 8, !tbaa !2
  br label %2365

; <label>:2362:                                   ; preds = %2350, %2340
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2363 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2363, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2330, %struct.TValue* %2333, %union.StackValue* %3803, i32 17) #11
  %2364 = load i32, i32* %37, align 8, !tbaa !6
  br label %2365

; <label>:2365:                                   ; preds = %2362, %2355
  %2366 = phi i32 [ %3798, %2355 ], [ %2364, %2362 ]
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2372, label %2368

; <label>:2368:                                   ; preds = %2365
  %2369 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2370 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2371 = getelementptr inbounds %union.StackValue, %union.StackValue* %2370, i64 1
  br label %2372

; <label>:2372:                                   ; preds = %2365, %2368
  %2373 = phi i32 [ %2369, %2368 ], [ 0, %2365 ]
  %2374 = phi %union.StackValue* [ %2371, %2368 ], [ %3797, %2365 ]
  %2375 = getelementptr inbounds i32, i32* %3799, i64 1
  %2376 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2377:                                   ; preds = %3795
  %2378 = lshr i32 %3796, 16
  %2379 = and i32 %2378, 255
  %2380 = zext i32 %2379 to i64
  %2381 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2380, i32 0
  %2382 = lshr i32 %3796, 24
  %2383 = zext i32 %2382 to i64
  %2384 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2383, i32 0
  %2385 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2380, i32 0, i32 1
  %2386 = load i8, i8* %2385, align 8, !tbaa !2
  %2387 = icmp eq i8 %2386, 35
  br i1 %2387, label %2388, label %2391

; <label>:2388:                                   ; preds = %2377
  %2389 = bitcast %struct.TValue* %2381 to i64*
  %2390 = load i64, i64* %2389, align 8, !tbaa !6
  store i64 %2390, i64* %19, align 8, !tbaa !9
  br label %2394

; <label>:2391:                                   ; preds = %2377
  %2392 = call i32 @luaV_tointegerns(%struct.TValue* %2381, i64* nonnull %19, i32 0) #12
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2412, label %2394

; <label>:2394:                                   ; preds = %2391, %2388
  %2395 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2383, i32 0, i32 1
  %2396 = load i8, i8* %2395, align 8, !tbaa !2
  %2397 = icmp eq i8 %2396, 35
  br i1 %2397, label %2398, label %2401

; <label>:2398:                                   ; preds = %2394
  %2399 = bitcast %struct.TValue* %2384 to i64*
  %2400 = load i64, i64* %2399, align 8, !tbaa !6
  store i64 %2400, i64* %20, align 8, !tbaa !9
  br label %2406

; <label>:2401:                                   ; preds = %2394
  %2402 = call i32 @luaV_tointegerns(%struct.TValue* nonnull %2384, i64* nonnull %20, i32 0) #12
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2412, label %2404

; <label>:2404:                                   ; preds = %2401
  %2405 = load i64, i64* %20, align 8, !tbaa !9
  br label %2406

; <label>:2406:                                   ; preds = %2404, %2398
  %2407 = phi i64 [ %2405, %2404 ], [ %2400, %2398 ]
  %2408 = load i64, i64* %19, align 8, !tbaa !9
  %2409 = call i64 @luaV_shiftl(i64 %2408, i64 %2407) #12
  %2410 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2409, i64* %2410, align 8, !tbaa !6
  %2411 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2411, align 8, !tbaa !2
  br label %2415

; <label>:2412:                                   ; preds = %2401, %2391
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2413 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2413, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2381, %struct.TValue* %2384, %union.StackValue* %3803, i32 16) #11
  %2414 = load i32, i32* %37, align 8, !tbaa !6
  br label %2415

; <label>:2415:                                   ; preds = %2412, %2406
  %2416 = phi i32 [ %3798, %2406 ], [ %2414, %2412 ]
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2422, label %2418

; <label>:2418:                                   ; preds = %2415
  %2419 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2420 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2421 = getelementptr inbounds %union.StackValue, %union.StackValue* %2420, i64 1
  br label %2422

; <label>:2422:                                   ; preds = %2415, %2418
  %2423 = phi i32 [ %2419, %2418 ], [ 0, %2415 ]
  %2424 = phi %union.StackValue* [ %2421, %2418 ], [ %3797, %2415 ]
  %2425 = getelementptr inbounds i32, i32* %3799, i64 1
  %2426 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2427:                                   ; preds = %3795
  %2428 = lshr i32 %3796, 16
  %2429 = and i32 %2428, 255
  %2430 = zext i32 %2429 to i64
  %2431 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2430, i32 0
  %2432 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2430, i32 0, i32 1
  %2433 = load i8, i8* %2432, align 8, !tbaa !2
  switch i8 %2433, label %2446 [
    i8 35, label %2434
    i8 19, label %2440
  ]

; <label>:2434:                                   ; preds = %2427
  %2435 = bitcast %struct.TValue* %2431 to i64*
  %2436 = load i64, i64* %2435, align 8, !tbaa !6
  %2437 = sub i64 0, %2436
  %2438 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2437, i64* %2438, align 8, !tbaa !6
  %2439 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2439, align 8, !tbaa !2
  br label %2449

; <label>:2440:                                   ; preds = %2427
  %2441 = bitcast %struct.TValue* %2431 to double*
  %2442 = load double, double* %2441, align 8, !tbaa !6
  %2443 = fsub double -0.000000e+00, %2442
  %2444 = bitcast %union.StackValue* %3803 to double*
  store double %2443, double* %2444, align 8, !tbaa !6
  %2445 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 19, i8* %2445, align 8, !tbaa !2
  br label %2449

; <label>:2446:                                   ; preds = %2427
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2447 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2447, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2431, %struct.TValue* %2431, %union.StackValue* %3803, i32 18) #11
  %2448 = load i32, i32* %37, align 8, !tbaa !6
  br label %2449

; <label>:2449:                                   ; preds = %2440, %2446, %2434
  %2450 = phi i32 [ %3798, %2434 ], [ %3798, %2440 ], [ %2448, %2446 ]
  %2451 = icmp eq i32 %2450, 0
  br i1 %2451, label %2456, label %2452

; <label>:2452:                                   ; preds = %2449
  %2453 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2454 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2455 = getelementptr inbounds %union.StackValue, %union.StackValue* %2454, i64 1
  br label %2456

; <label>:2456:                                   ; preds = %2449, %2452
  %2457 = phi i32 [ %2453, %2452 ], [ 0, %2449 ]
  %2458 = phi %union.StackValue* [ %2455, %2452 ], [ %3797, %2449 ]
  %2459 = getelementptr inbounds i32, i32* %3799, i64 1
  %2460 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2461:                                   ; preds = %3795
  %2462 = lshr i32 %3796, 16
  %2463 = and i32 %2462, 255
  %2464 = zext i32 %2463 to i64
  %2465 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2464, i32 0
  %2466 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2464, i32 0, i32 1
  %2467 = load i8, i8* %2466, align 8, !tbaa !2
  %2468 = icmp eq i8 %2467, 35
  br i1 %2468, label %2469, label %2472

; <label>:2469:                                   ; preds = %2461
  %2470 = bitcast %struct.TValue* %2465 to i64*
  %2471 = load i64, i64* %2470, align 8, !tbaa !6
  store i64 %2471, i64* %21, align 8, !tbaa !9
  br label %2477

; <label>:2472:                                   ; preds = %2461
  %2473 = call i32 @luaV_tointegerns(%struct.TValue* %2465, i64* nonnull %21, i32 0) #12
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2482, label %2475

; <label>:2475:                                   ; preds = %2472
  %2476 = load i64, i64* %21, align 8, !tbaa !9
  br label %2477

; <label>:2477:                                   ; preds = %2475, %2469
  %2478 = phi i64 [ %2476, %2475 ], [ %2471, %2469 ]
  %2479 = xor i64 %2478, -1
  %2480 = bitcast %union.StackValue* %3803 to i64*
  store i64 %2479, i64* %2480, align 8, !tbaa !6
  %2481 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 35, i8* %2481, align 8, !tbaa !2
  br label %2485

; <label>:2482:                                   ; preds = %2472
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2483 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2483, i64* %35, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2465, %struct.TValue* %2465, %union.StackValue* %3803, i32 19) #11
  %2484 = load i32, i32* %37, align 8, !tbaa !6
  br label %2485

; <label>:2485:                                   ; preds = %2482, %2477
  %2486 = phi i32 [ %3798, %2477 ], [ %2484, %2482 ]
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2492, label %2488

; <label>:2488:                                   ; preds = %2485
  %2489 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2490 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2491 = getelementptr inbounds %union.StackValue, %union.StackValue* %2490, i64 1
  br label %2492

; <label>:2492:                                   ; preds = %2485, %2488
  %2493 = phi i32 [ %2489, %2488 ], [ 0, %2485 ]
  %2494 = phi %union.StackValue* [ %2491, %2488 ], [ %3797, %2485 ]
  %2495 = getelementptr inbounds i32, i32* %3799, i64 1
  %2496 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2497:                                   ; preds = %3795
  %2498 = lshr i32 %3796, 16
  %2499 = and i32 %2498, 255
  %2500 = zext i32 %2499 to i64
  %2501 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2500, i32 0, i32 1
  %2502 = load i8, i8* %2501, align 8, !tbaa !2
  %2503 = and i8 %2502, 15
  %2504 = icmp eq i8 %2503, 0
  br i1 %2504, label %2512, label %2505

; <label>:2505:                                   ; preds = %2497
  %2506 = icmp eq i8 %2502, 1
  br i1 %2506, label %2507, label %2512

; <label>:2507:                                   ; preds = %2505
  %2508 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2500, i32 0, i32 0
  %2509 = bitcast %union.Value* %2508 to i32*
  %2510 = load i32, i32* %2509, align 8, !tbaa !6
  %2511 = icmp eq i32 %2510, 0
  br label %2512

; <label>:2512:                                   ; preds = %2505, %2507, %2497
  %2513 = phi i1 [ true, %2497 ], [ false, %2505 ], [ %2511, %2507 ]
  %2514 = zext i1 %2513 to i32
  %2515 = bitcast %union.StackValue* %3803 to i32*
  store i32 %2514, i32* %2515, align 8, !tbaa !6
  %2516 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 1, i8* %2516, align 8, !tbaa !2
  %2517 = icmp eq i32 %3798, 0
  br i1 %2517, label %2522, label %2518

; <label>:2518:                                   ; preds = %2512
  %2519 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2520 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2521 = getelementptr inbounds %union.StackValue, %union.StackValue* %2520, i64 1
  br label %2522

; <label>:2522:                                   ; preds = %2512, %2518
  %2523 = phi i32 [ %2519, %2518 ], [ 0, %2512 ]
  %2524 = phi %union.StackValue* [ %2521, %2518 ], [ %3797, %2512 ]
  %2525 = getelementptr inbounds i32, i32* %3799, i64 1
  %2526 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2527:                                   ; preds = %3795
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2528 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2528, i64* %35, align 8, !tbaa !25
  %2529 = lshr i32 %3796, 16
  %2530 = and i32 %2529, 255
  %2531 = zext i32 %2530 to i64
  %2532 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2531, i32 0
  call void @luaV_objlen(%struct.lua_State* %0, %union.StackValue* %3803, %struct.TValue* %2532) #12
  %2533 = load i32, i32* %37, align 8, !tbaa !6
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2539, label %2535

; <label>:2535:                                   ; preds = %2527
  %2536 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3799) #11
  %2537 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2538 = getelementptr inbounds %union.StackValue, %union.StackValue* %2537, i64 1
  br label %2539

; <label>:2539:                                   ; preds = %2527, %2535
  %2540 = phi i32 [ %2536, %2535 ], [ 0, %2527 ]
  %2541 = phi %union.StackValue* [ %2538, %2535 ], [ %3797, %2527 ]
  %2542 = getelementptr inbounds i32, i32* %3799, i64 1
  %2543 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2544:                                   ; preds = %3795
  %2545 = lshr i32 %3796, 16
  %2546 = and i32 %2545, 255
  %2547 = zext i32 %2546 to i64
  %2548 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 %2547
  store %union.StackValue* %2548, %union.StackValue** %34, align 8, !tbaa !25
  store i32* %3799, i32** %31, align 8, !tbaa !6
  call void @luaV_concat(%struct.lua_State* %0, i32 %2546) #12
  %2549 = load %struct.global_State*, %struct.global_State** %38, align 8, !tbaa !16
  %2550 = getelementptr inbounds %struct.global_State, %struct.global_State* %2549, i64 0, i32 3
  %2551 = load i64, i64* %2550, align 8, !tbaa !43
  %2552 = icmp sgt i64 %2551, 0
  br i1 %2552, label %2553, label %2554

; <label>:2553:                                   ; preds = %2544
  call void @luaC_step(%struct.lua_State* nonnull %0) #11
  br label %2554

; <label>:2554:                                   ; preds = %2553, %2544
  %2555 = load i32, i32* %37, align 8, !tbaa !6
  %2556 = icmp eq i32 %2555, 0
  br i1 %2556, label %2561, label %2557

; <label>:2557:                                   ; preds = %2554
  %2558 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3799) #11
  %2559 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2560 = getelementptr inbounds %union.StackValue, %union.StackValue* %2559, i64 1
  br label %2561

; <label>:2561:                                   ; preds = %2554, %2557
  %2562 = phi i32 [ %2558, %2557 ], [ 0, %2554 ]
  %2563 = phi %union.StackValue* [ %2560, %2557 ], [ %3797, %2554 ]
  %2564 = getelementptr inbounds i32, i32* %3799, i64 1
  %2565 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2566:                                   ; preds = %3795
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2567 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2567, i64* %35, align 8, !tbaa !25
  %2568 = call i32 @luaF_close(%struct.lua_State* %0, %union.StackValue* %3803, i32 0) #11
  %2569 = load i32, i32* %37, align 8, !tbaa !6
  %2570 = icmp eq i32 %2569, 0
  br i1 %2570, label %2575, label %2571

; <label>:2571:                                   ; preds = %2566
  %2572 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3799) #11
  %2573 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2574 = getelementptr inbounds %union.StackValue, %union.StackValue* %2573, i64 1
  br label %2575

; <label>:2575:                                   ; preds = %2566, %2571
  %2576 = phi i32 [ %2572, %2571 ], [ 0, %2566 ]
  %2577 = phi %union.StackValue* [ %2574, %2571 ], [ %3797, %2566 ]
  %2578 = getelementptr inbounds i32, i32* %3799, i64 1
  %2579 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2580:                                   ; preds = %3795
  store i32* %3799, i32** %31, align 8, !tbaa !6
  call void @luaF_newtbcupval(%struct.lua_State* %0, %union.StackValue* %3803) #11
  %2581 = icmp eq i32 %3798, 0
  br i1 %2581, label %2586, label %2582

; <label>:2582:                                   ; preds = %2580
  %2583 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %2584 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2585 = getelementptr inbounds %union.StackValue, %union.StackValue* %2584, i64 1
  br label %2586

; <label>:2586:                                   ; preds = %2580, %2582
  %2587 = phi i32 [ %2583, %2582 ], [ 0, %2580 ]
  %2588 = phi %union.StackValue* [ %2585, %2582 ], [ %3797, %2580 ]
  %2589 = getelementptr inbounds i32, i32* %3799, i64 1
  %2590 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:2591:                                   ; preds = %3795
  %2592 = lshr i32 %3796, 7
  %2593 = add nsw i32 %2592, -16777215
  %2594 = sext i32 %2593 to i64
  %2595 = getelementptr inbounds i32, i32* %3799, i64 %2594
  %2596 = load i32, i32* %37, align 8, !tbaa !6
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %2602, label %2598

; <label>:2598:                                   ; preds = %2591
  %2599 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2595) #11
  %2600 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2601 = getelementptr inbounds %union.StackValue, %union.StackValue* %2600, i64 1
  br label %2602

; <label>:2602:                                   ; preds = %2591, %2598
  %2603 = phi i32 [ %2599, %2598 ], [ 0, %2591 ]
  %2604 = phi %union.StackValue* [ %2601, %2598 ], [ %3797, %2591 ]
  %2605 = getelementptr inbounds i32, i32* %2595, i64 1
  %2606 = load i32, i32* %2595, align 4, !tbaa !31
  br label %101

; <label>:2607:                                   ; preds = %3795
  %2608 = lshr i32 %3796, 16
  %2609 = and i32 %2608, 255
  %2610 = zext i32 %2609 to i64
  %2611 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2610, i32 0
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2612 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2612, i64* %35, align 8, !tbaa !25
  %2613 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %2614 = call i32 @luaV_equalobj(%struct.lua_State* %0, %struct.TValue* %2613, %struct.TValue* %2611) #12
  %2615 = load i32, i32* %37, align 8, !tbaa !6
  %2616 = lshr i32 %3796, 15
  %2617 = and i32 %2616, 1
  %2618 = icmp eq i32 %2614, %2617
  br i1 %2618, label %2619, label %2624

; <label>:2619:                                   ; preds = %2607
  %2620 = load i32, i32* %3799, align 4, !tbaa !31
  %2621 = lshr i32 %2620, 7
  %2622 = add nsw i32 %2621, -16777214
  %2623 = sext i32 %2622 to i64
  br label %2624

; <label>:2624:                                   ; preds = %2607, %2619
  %2625 = phi i64 [ %2623, %2619 ], [ 1, %2607 ]
  %2626 = getelementptr inbounds i32, i32* %3799, i64 %2625
  %2627 = icmp eq i32 %2615, 0
  br i1 %2627, label %2632, label %2628

; <label>:2628:                                   ; preds = %2624
  %2629 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %2626) #11
  %2630 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2631 = getelementptr inbounds %union.StackValue, %union.StackValue* %2630, i64 1
  br label %2632

; <label>:2632:                                   ; preds = %2624, %2628
  %2633 = phi i32 [ %2629, %2628 ], [ 0, %2624 ]
  %2634 = phi %union.StackValue* [ %2631, %2628 ], [ %3797, %2624 ]
  %2635 = getelementptr inbounds i32, i32* %2626, i64 1
  %2636 = load i32, i32* %2626, align 4, !tbaa !31
  br label %101

; <label>:2637:                                   ; preds = %3795
  %2638 = lshr i32 %3796, 16
  %2639 = and i32 %2638, 255
  %2640 = zext i32 %2639 to i64
  %2641 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2640, i32 0
  %2642 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %2643 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %2644 = load i8, i8* %2643, align 8, !tbaa !6
  %2645 = icmp eq i8 %2644, 35
  br i1 %2645, label %2646, label %2657

; <label>:2646:                                   ; preds = %2637
  %2647 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2640, i32 0, i32 1
  %2648 = load i8, i8* %2647, align 8, !tbaa !2
  %2649 = icmp eq i8 %2648, 35
  br i1 %2649, label %2650, label %2663

; <label>:2650:                                   ; preds = %2646
  %2651 = bitcast %union.StackValue* %3803 to i64*
  %2652 = load i64, i64* %2651, align 8, !tbaa !6
  %2653 = bitcast %struct.TValue* %2641 to i64*
  %2654 = load i64, i64* %2653, align 8, !tbaa !6
  %2655 = icmp slt i64 %2652, %2654
  %2656 = zext i1 %2655 to i32
  br label %2673

; <label>:2657:                                   ; preds = %2637
  %2658 = and i8 %2644, 15
  %2659 = icmp eq i8 %2658, 3
  br i1 %2659, label %2660, label %2669

; <label>:2660:                                   ; preds = %2657
  %2661 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2640, i32 0, i32 1
  %2662 = load i8, i8* %2661, align 8, !tbaa !2
  br label %2663

; <label>:2663:                                   ; preds = %2660, %2646
  %2664 = phi i8 [ %2662, %2660 ], [ %2648, %2646 ]
  %2665 = and i8 %2664, 15
  %2666 = icmp eq i8 %2665, 3
  br i1 %2666, label %2667, label %2669

; <label>:2667:                                   ; preds = %2663
  %2668 = call fastcc i32 @LTnum(%struct.TValue* %2642, %struct.TValue* nonnull %2641) #12
  br label %2673

; <label>:2669:                                   ; preds = %2663, %2657
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2670 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2670, i64* %35, align 8, !tbaa !25
  %2671 = call fastcc i32 @lessthanothers(%struct.lua_State* %0, %struct.TValue* %2642, %struct.TValue* %2641) #12
  %2672 = load i32, i32* %37, align 8, !tbaa !6
  br label %2673

; <label>:2673:                                   ; preds = %2667, %2669, %2650
  %2674 = phi i32 [ %2656, %2650 ], [ %2668, %2667 ], [ %2671, %2669 ]
  %2675 = phi i32 [ %3798, %2650 ], [ %3798, %2667 ], [ %2672, %2669 ]
  %2676 = lshr i32 %3796, 15
  %2677 = and i32 %2676, 1
  %2678 = icmp eq i32 %2674, %2677
  br i1 %2678, label %2681, label %2679

; <label>:2679:                                   ; preds = %2673
  %2680 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %2688

; <label>:2681:                                   ; preds = %2673
  %2682 = load i32, i32* %3799, align 4, !tbaa !31
  %2683 = lshr i32 %2682, 7
  %2684 = add nsw i32 %2683, -16777214
  %2685 = sext i32 %2684 to i64
  %2686 = getelementptr inbounds i32, i32* %3799, i64 %2685
  %2687 = load i32, i32* %37, align 8, !tbaa !6
  br label %2688

; <label>:2688:                                   ; preds = %2681, %2679
  %2689 = phi i32 [ %2675, %2679 ], [ %2687, %2681 ]
  %2690 = phi i32* [ %2680, %2679 ], [ %2686, %2681 ]
  %2691 = icmp eq i32 %2689, 0
  br i1 %2691, label %2696, label %2692

; <label>:2692:                                   ; preds = %2688
  %2693 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2690) #11
  %2694 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2695 = getelementptr inbounds %union.StackValue, %union.StackValue* %2694, i64 1
  br label %2696

; <label>:2696:                                   ; preds = %2688, %2692
  %2697 = phi i32 [ %2693, %2692 ], [ 0, %2688 ]
  %2698 = phi %union.StackValue* [ %2695, %2692 ], [ %3797, %2688 ]
  %2699 = getelementptr inbounds i32, i32* %2690, i64 1
  %2700 = load i32, i32* %2690, align 4, !tbaa !31
  br label %101

; <label>:2701:                                   ; preds = %3795
  %2702 = lshr i32 %3796, 16
  %2703 = and i32 %2702, 255
  %2704 = zext i32 %2703 to i64
  %2705 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2704, i32 0
  %2706 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %2707 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %2708 = load i8, i8* %2707, align 8, !tbaa !6
  %2709 = icmp eq i8 %2708, 35
  br i1 %2709, label %2710, label %2721

; <label>:2710:                                   ; preds = %2701
  %2711 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2704, i32 0, i32 1
  %2712 = load i8, i8* %2711, align 8, !tbaa !2
  %2713 = icmp eq i8 %2712, 35
  br i1 %2713, label %2714, label %2727

; <label>:2714:                                   ; preds = %2710
  %2715 = bitcast %union.StackValue* %3803 to i64*
  %2716 = load i64, i64* %2715, align 8, !tbaa !6
  %2717 = bitcast %struct.TValue* %2705 to i64*
  %2718 = load i64, i64* %2717, align 8, !tbaa !6
  %2719 = icmp sle i64 %2716, %2718
  %2720 = zext i1 %2719 to i32
  br label %2737

; <label>:2721:                                   ; preds = %2701
  %2722 = and i8 %2708, 15
  %2723 = icmp eq i8 %2722, 3
  br i1 %2723, label %2724, label %2733

; <label>:2724:                                   ; preds = %2721
  %2725 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %2704, i32 0, i32 1
  %2726 = load i8, i8* %2725, align 8, !tbaa !2
  br label %2727

; <label>:2727:                                   ; preds = %2724, %2710
  %2728 = phi i8 [ %2726, %2724 ], [ %2712, %2710 ]
  %2729 = and i8 %2728, 15
  %2730 = icmp eq i8 %2729, 3
  br i1 %2730, label %2731, label %2733

; <label>:2731:                                   ; preds = %2727
  %2732 = call fastcc i32 @LEnum(%struct.TValue* %2706, %struct.TValue* nonnull %2705) #12
  br label %2737

; <label>:2733:                                   ; preds = %2727, %2721
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2734 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2734, i64* %35, align 8, !tbaa !25
  %2735 = call fastcc i32 @lessequalothers(%struct.lua_State* %0, %struct.TValue* %2706, %struct.TValue* %2705) #12
  %2736 = load i32, i32* %37, align 8, !tbaa !6
  br label %2737

; <label>:2737:                                   ; preds = %2731, %2733, %2714
  %2738 = phi i32 [ %2720, %2714 ], [ %2732, %2731 ], [ %2735, %2733 ]
  %2739 = phi i32 [ %3798, %2714 ], [ %3798, %2731 ], [ %2736, %2733 ]
  %2740 = lshr i32 %3796, 15
  %2741 = and i32 %2740, 1
  %2742 = icmp eq i32 %2738, %2741
  br i1 %2742, label %2745, label %2743

; <label>:2743:                                   ; preds = %2737
  %2744 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %2752

; <label>:2745:                                   ; preds = %2737
  %2746 = load i32, i32* %3799, align 4, !tbaa !31
  %2747 = lshr i32 %2746, 7
  %2748 = add nsw i32 %2747, -16777214
  %2749 = sext i32 %2748 to i64
  %2750 = getelementptr inbounds i32, i32* %3799, i64 %2749
  %2751 = load i32, i32* %37, align 8, !tbaa !6
  br label %2752

; <label>:2752:                                   ; preds = %2745, %2743
  %2753 = phi i32 [ %2739, %2743 ], [ %2751, %2745 ]
  %2754 = phi i32* [ %2744, %2743 ], [ %2750, %2745 ]
  %2755 = icmp eq i32 %2753, 0
  br i1 %2755, label %2760, label %2756

; <label>:2756:                                   ; preds = %2752
  %2757 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2754) #11
  %2758 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2759 = getelementptr inbounds %union.StackValue, %union.StackValue* %2758, i64 1
  br label %2760

; <label>:2760:                                   ; preds = %2752, %2756
  %2761 = phi i32 [ %2757, %2756 ], [ 0, %2752 ]
  %2762 = phi %union.StackValue* [ %2759, %2756 ], [ %3797, %2752 ]
  %2763 = getelementptr inbounds i32, i32* %2754, i64 1
  %2764 = load i32, i32* %2754, align 4, !tbaa !31
  br label %101

; <label>:2765:                                   ; preds = %3795
  %2766 = lshr i32 %3796, 16
  %2767 = and i32 %2766, 255
  %2768 = zext i32 %2767 to i64
  %2769 = getelementptr inbounds %struct.TValue, %struct.TValue* %57, i64 %2768
  %2770 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %2771 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %2770, %struct.TValue* %2769) #12
  %2772 = lshr i32 %3796, 15
  %2773 = and i32 %2772, 1
  %2774 = icmp eq i32 %2771, %2773
  br i1 %2774, label %2777, label %2775

; <label>:2775:                                   ; preds = %2765
  %2776 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %2784

; <label>:2777:                                   ; preds = %2765
  %2778 = load i32, i32* %3799, align 4, !tbaa !31
  %2779 = lshr i32 %2778, 7
  %2780 = add nsw i32 %2779, -16777214
  %2781 = sext i32 %2780 to i64
  %2782 = getelementptr inbounds i32, i32* %3799, i64 %2781
  %2783 = load i32, i32* %37, align 8, !tbaa !6
  br label %2784

; <label>:2784:                                   ; preds = %2777, %2775
  %2785 = phi i32 [ %3798, %2775 ], [ %2783, %2777 ]
  %2786 = phi i32* [ %2776, %2775 ], [ %2782, %2777 ]
  %2787 = icmp eq i32 %2785, 0
  br i1 %2787, label %2792, label %2788

; <label>:2788:                                   ; preds = %2784
  %2789 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2786) #11
  %2790 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2791 = getelementptr inbounds %union.StackValue, %union.StackValue* %2790, i64 1
  br label %2792

; <label>:2792:                                   ; preds = %2784, %2788
  %2793 = phi i32 [ %2789, %2788 ], [ 0, %2784 ]
  %2794 = phi %union.StackValue* [ %2791, %2788 ], [ %3797, %2784 ]
  %2795 = getelementptr inbounds i32, i32* %2786, i64 1
  %2796 = load i32, i32* %2786, align 4, !tbaa !31
  br label %101

; <label>:2797:                                   ; preds = %3795
  %2798 = lshr i32 %3796, 16
  %2799 = and i32 %2798, 255
  %2800 = add nsw i32 %2799, -127
  %2801 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %2802 = load i8, i8* %2801, align 8, !tbaa !6
  switch i8 %2802, label %2803 [
    i8 35, label %2806
    i8 19, label %2811
  ]

; <label>:2803:                                   ; preds = %2797
  %2804 = trunc i32 %3796 to i16
  %2805 = icmp slt i16 %2804, 0
  br i1 %2805, label %2821, label %2823

; <label>:2806:                                   ; preds = %2797
  %2807 = bitcast %union.StackValue* %3803 to i64*
  %2808 = load i64, i64* %2807, align 8, !tbaa !6
  %2809 = sext i32 %2800 to i64
  %2810 = icmp eq i64 %2808, %2809
  br label %2816

; <label>:2811:                                   ; preds = %2797
  %2812 = bitcast %union.StackValue* %3803 to double*
  %2813 = load double, double* %2812, align 8, !tbaa !6
  %2814 = sitofp i32 %2800 to double
  %2815 = fcmp oeq double %2813, %2814
  br label %2816

; <label>:2816:                                   ; preds = %2811, %2806
  %2817 = phi i1 [ %2810, %2806 ], [ %2815, %2811 ]
  %2818 = trunc i32 %3796 to i16
  %2819 = icmp slt i16 %2818, 0
  %2820 = xor i1 %2819, %2817
  br i1 %2820, label %2821, label %2823

; <label>:2821:                                   ; preds = %2803, %2816
  %2822 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %2830

; <label>:2823:                                   ; preds = %2803, %2816
  %2824 = load i32, i32* %3799, align 4, !tbaa !31
  %2825 = lshr i32 %2824, 7
  %2826 = add nsw i32 %2825, -16777214
  %2827 = sext i32 %2826 to i64
  %2828 = getelementptr inbounds i32, i32* %3799, i64 %2827
  %2829 = load i32, i32* %37, align 8, !tbaa !6
  br label %2830

; <label>:2830:                                   ; preds = %2823, %2821
  %2831 = phi i32 [ %3798, %2821 ], [ %2829, %2823 ]
  %2832 = phi i32* [ %2822, %2821 ], [ %2828, %2823 ]
  %2833 = icmp eq i32 %2831, 0
  br i1 %2833, label %2838, label %2834

; <label>:2834:                                   ; preds = %2830
  %2835 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2832) #11
  %2836 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2837 = getelementptr inbounds %union.StackValue, %union.StackValue* %2836, i64 1
  br label %2838

; <label>:2838:                                   ; preds = %2830, %2834
  %2839 = phi i32 [ %2835, %2834 ], [ 0, %2830 ]
  %2840 = phi %union.StackValue* [ %2837, %2834 ], [ %3797, %2830 ]
  %2841 = getelementptr inbounds i32, i32* %2832, i64 1
  %2842 = load i32, i32* %2832, align 4, !tbaa !31
  br label %101

; <label>:2843:                                   ; preds = %3795
  %2844 = lshr i32 %3796, 16
  %2845 = and i32 %2844, 255
  %2846 = add nsw i32 %2845, -127
  %2847 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %2848 = load i8, i8* %2847, align 8, !tbaa !6
  switch i8 %2848, label %2861 [
    i8 35, label %2849
    i8 19, label %2855
  ]

; <label>:2849:                                   ; preds = %2843
  %2850 = bitcast %union.StackValue* %3803 to i64*
  %2851 = load i64, i64* %2850, align 8, !tbaa !6
  %2852 = sext i32 %2846 to i64
  %2853 = icmp slt i64 %2851, %2852
  %2854 = zext i1 %2853 to i32
  br label %2867

; <label>:2855:                                   ; preds = %2843
  %2856 = bitcast %union.StackValue* %3803 to double*
  %2857 = load double, double* %2856, align 8, !tbaa !6
  %2858 = sitofp i32 %2846 to double
  %2859 = fcmp olt double %2857, %2858
  %2860 = zext i1 %2859 to i32
  br label %2867

; <label>:2861:                                   ; preds = %2843
  %2862 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %2863 = lshr i32 %3796, 24
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2864 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2864, i64* %35, align 8, !tbaa !25
  %2865 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %2862, i32 %2846, i32 0, i32 %2863, i32 20) #11
  %2866 = load i32, i32* %37, align 8, !tbaa !6
  br label %2867

; <label>:2867:                                   ; preds = %2855, %2861, %2849
  %2868 = phi i32 [ %2854, %2849 ], [ %2860, %2855 ], [ %2865, %2861 ]
  %2869 = phi i32 [ %3798, %2849 ], [ %3798, %2855 ], [ %2866, %2861 ]
  %2870 = lshr i32 %3796, 15
  %2871 = and i32 %2870, 1
  %2872 = icmp eq i32 %2868, %2871
  br i1 %2872, label %2875, label %2873

; <label>:2873:                                   ; preds = %2867
  %2874 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %2882

; <label>:2875:                                   ; preds = %2867
  %2876 = load i32, i32* %3799, align 4, !tbaa !31
  %2877 = lshr i32 %2876, 7
  %2878 = add nsw i32 %2877, -16777214
  %2879 = sext i32 %2878 to i64
  %2880 = getelementptr inbounds i32, i32* %3799, i64 %2879
  %2881 = load i32, i32* %37, align 8, !tbaa !6
  br label %2882

; <label>:2882:                                   ; preds = %2875, %2873
  %2883 = phi i32 [ %2869, %2873 ], [ %2881, %2875 ]
  %2884 = phi i32* [ %2874, %2873 ], [ %2880, %2875 ]
  %2885 = icmp eq i32 %2883, 0
  br i1 %2885, label %2890, label %2886

; <label>:2886:                                   ; preds = %2882
  %2887 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2884) #11
  %2888 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2889 = getelementptr inbounds %union.StackValue, %union.StackValue* %2888, i64 1
  br label %2890

; <label>:2890:                                   ; preds = %2882, %2886
  %2891 = phi i32 [ %2887, %2886 ], [ 0, %2882 ]
  %2892 = phi %union.StackValue* [ %2889, %2886 ], [ %3797, %2882 ]
  %2893 = getelementptr inbounds i32, i32* %2884, i64 1
  %2894 = load i32, i32* %2884, align 4, !tbaa !31
  br label %101

; <label>:2895:                                   ; preds = %3795
  %2896 = lshr i32 %3796, 16
  %2897 = and i32 %2896, 255
  %2898 = add nsw i32 %2897, -127
  %2899 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %2900 = load i8, i8* %2899, align 8, !tbaa !6
  switch i8 %2900, label %2913 [
    i8 35, label %2901
    i8 19, label %2907
  ]

; <label>:2901:                                   ; preds = %2895
  %2902 = bitcast %union.StackValue* %3803 to i64*
  %2903 = load i64, i64* %2902, align 8, !tbaa !6
  %2904 = sext i32 %2898 to i64
  %2905 = icmp sle i64 %2903, %2904
  %2906 = zext i1 %2905 to i32
  br label %2919

; <label>:2907:                                   ; preds = %2895
  %2908 = bitcast %union.StackValue* %3803 to double*
  %2909 = load double, double* %2908, align 8, !tbaa !6
  %2910 = sitofp i32 %2898 to double
  %2911 = fcmp ole double %2909, %2910
  %2912 = zext i1 %2911 to i32
  br label %2919

; <label>:2913:                                   ; preds = %2895
  %2914 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %2915 = lshr i32 %3796, 24
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2916 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2916, i64* %35, align 8, !tbaa !25
  %2917 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %2914, i32 %2898, i32 0, i32 %2915, i32 21) #11
  %2918 = load i32, i32* %37, align 8, !tbaa !6
  br label %2919

; <label>:2919:                                   ; preds = %2907, %2913, %2901
  %2920 = phi i32 [ %2906, %2901 ], [ %2912, %2907 ], [ %2917, %2913 ]
  %2921 = phi i32 [ %3798, %2901 ], [ %3798, %2907 ], [ %2918, %2913 ]
  %2922 = lshr i32 %3796, 15
  %2923 = and i32 %2922, 1
  %2924 = icmp eq i32 %2920, %2923
  br i1 %2924, label %2927, label %2925

; <label>:2925:                                   ; preds = %2919
  %2926 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %2934

; <label>:2927:                                   ; preds = %2919
  %2928 = load i32, i32* %3799, align 4, !tbaa !31
  %2929 = lshr i32 %2928, 7
  %2930 = add nsw i32 %2929, -16777214
  %2931 = sext i32 %2930 to i64
  %2932 = getelementptr inbounds i32, i32* %3799, i64 %2931
  %2933 = load i32, i32* %37, align 8, !tbaa !6
  br label %2934

; <label>:2934:                                   ; preds = %2927, %2925
  %2935 = phi i32 [ %2921, %2925 ], [ %2933, %2927 ]
  %2936 = phi i32* [ %2926, %2925 ], [ %2932, %2927 ]
  %2937 = icmp eq i32 %2935, 0
  br i1 %2937, label %2942, label %2938

; <label>:2938:                                   ; preds = %2934
  %2939 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2936) #11
  %2940 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2941 = getelementptr inbounds %union.StackValue, %union.StackValue* %2940, i64 1
  br label %2942

; <label>:2942:                                   ; preds = %2934, %2938
  %2943 = phi i32 [ %2939, %2938 ], [ 0, %2934 ]
  %2944 = phi %union.StackValue* [ %2941, %2938 ], [ %3797, %2934 ]
  %2945 = getelementptr inbounds i32, i32* %2936, i64 1
  %2946 = load i32, i32* %2936, align 4, !tbaa !31
  br label %101

; <label>:2947:                                   ; preds = %3795
  %2948 = lshr i32 %3796, 16
  %2949 = and i32 %2948, 255
  %2950 = add nsw i32 %2949, -127
  %2951 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %2952 = load i8, i8* %2951, align 8, !tbaa !6
  switch i8 %2952, label %2965 [
    i8 35, label %2953
    i8 19, label %2959
  ]

; <label>:2953:                                   ; preds = %2947
  %2954 = bitcast %union.StackValue* %3803 to i64*
  %2955 = load i64, i64* %2954, align 8, !tbaa !6
  %2956 = sext i32 %2950 to i64
  %2957 = icmp sgt i64 %2955, %2956
  %2958 = zext i1 %2957 to i32
  br label %2971

; <label>:2959:                                   ; preds = %2947
  %2960 = bitcast %union.StackValue* %3803 to double*
  %2961 = load double, double* %2960, align 8, !tbaa !6
  %2962 = sitofp i32 %2950 to double
  %2963 = fcmp ogt double %2961, %2962
  %2964 = zext i1 %2963 to i32
  br label %2971

; <label>:2965:                                   ; preds = %2947
  %2966 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %2967 = lshr i32 %3796, 24
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %2968 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %2968, i64* %35, align 8, !tbaa !25
  %2969 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %2966, i32 %2950, i32 1, i32 %2967, i32 20) #11
  %2970 = load i32, i32* %37, align 8, !tbaa !6
  br label %2971

; <label>:2971:                                   ; preds = %2959, %2965, %2953
  %2972 = phi i32 [ %2958, %2953 ], [ %2964, %2959 ], [ %2969, %2965 ]
  %2973 = phi i32 [ %3798, %2953 ], [ %3798, %2959 ], [ %2970, %2965 ]
  %2974 = lshr i32 %3796, 15
  %2975 = and i32 %2974, 1
  %2976 = icmp eq i32 %2972, %2975
  br i1 %2976, label %2979, label %2977

; <label>:2977:                                   ; preds = %2971
  %2978 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %2986

; <label>:2979:                                   ; preds = %2971
  %2980 = load i32, i32* %3799, align 4, !tbaa !31
  %2981 = lshr i32 %2980, 7
  %2982 = add nsw i32 %2981, -16777214
  %2983 = sext i32 %2982 to i64
  %2984 = getelementptr inbounds i32, i32* %3799, i64 %2983
  %2985 = load i32, i32* %37, align 8, !tbaa !6
  br label %2986

; <label>:2986:                                   ; preds = %2979, %2977
  %2987 = phi i32 [ %2973, %2977 ], [ %2985, %2979 ]
  %2988 = phi i32* [ %2978, %2977 ], [ %2984, %2979 ]
  %2989 = icmp eq i32 %2987, 0
  br i1 %2989, label %2994, label %2990

; <label>:2990:                                   ; preds = %2986
  %2991 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2988) #11
  %2992 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %2993 = getelementptr inbounds %union.StackValue, %union.StackValue* %2992, i64 1
  br label %2994

; <label>:2994:                                   ; preds = %2986, %2990
  %2995 = phi i32 [ %2991, %2990 ], [ 0, %2986 ]
  %2996 = phi %union.StackValue* [ %2993, %2990 ], [ %3797, %2986 ]
  %2997 = getelementptr inbounds i32, i32* %2988, i64 1
  %2998 = load i32, i32* %2988, align 4, !tbaa !31
  br label %101

; <label>:2999:                                   ; preds = %3795
  %3000 = lshr i32 %3796, 16
  %3001 = and i32 %3000, 255
  %3002 = add nsw i32 %3001, -127
  %3003 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %3004 = load i8, i8* %3003, align 8, !tbaa !6
  switch i8 %3004, label %3017 [
    i8 35, label %3005
    i8 19, label %3011
  ]

; <label>:3005:                                   ; preds = %2999
  %3006 = bitcast %union.StackValue* %3803 to i64*
  %3007 = load i64, i64* %3006, align 8, !tbaa !6
  %3008 = sext i32 %3002 to i64
  %3009 = icmp sge i64 %3007, %3008
  %3010 = zext i1 %3009 to i32
  br label %3023

; <label>:3011:                                   ; preds = %2999
  %3012 = bitcast %union.StackValue* %3803 to double*
  %3013 = load double, double* %3012, align 8, !tbaa !6
  %3014 = sitofp i32 %3002 to double
  %3015 = fcmp oge double %3013, %3014
  %3016 = zext i1 %3015 to i32
  br label %3023

; <label>:3017:                                   ; preds = %2999
  %3018 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %3019 = lshr i32 %3796, 24
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %3020 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %3020, i64* %35, align 8, !tbaa !25
  %3021 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3018, i32 %3002, i32 1, i32 %3019, i32 21) #11
  %3022 = load i32, i32* %37, align 8, !tbaa !6
  br label %3023

; <label>:3023:                                   ; preds = %3011, %3017, %3005
  %3024 = phi i32 [ %3010, %3005 ], [ %3016, %3011 ], [ %3021, %3017 ]
  %3025 = phi i32 [ %3798, %3005 ], [ %3798, %3011 ], [ %3022, %3017 ]
  %3026 = lshr i32 %3796, 15
  %3027 = and i32 %3026, 1
  %3028 = icmp eq i32 %3024, %3027
  br i1 %3028, label %3031, label %3029

; <label>:3029:                                   ; preds = %3023
  %3030 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %3038

; <label>:3031:                                   ; preds = %3023
  %3032 = load i32, i32* %3799, align 4, !tbaa !31
  %3033 = lshr i32 %3032, 7
  %3034 = add nsw i32 %3033, -16777214
  %3035 = sext i32 %3034 to i64
  %3036 = getelementptr inbounds i32, i32* %3799, i64 %3035
  %3037 = load i32, i32* %37, align 8, !tbaa !6
  br label %3038

; <label>:3038:                                   ; preds = %3031, %3029
  %3039 = phi i32 [ %3025, %3029 ], [ %3037, %3031 ]
  %3040 = phi i32* [ %3030, %3029 ], [ %3036, %3031 ]
  %3041 = icmp eq i32 %3039, 0
  br i1 %3041, label %3046, label %3042

; <label>:3042:                                   ; preds = %3038
  %3043 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3040) #11
  %3044 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3045 = getelementptr inbounds %union.StackValue, %union.StackValue* %3044, i64 1
  br label %3046

; <label>:3046:                                   ; preds = %3038, %3042
  %3047 = phi i32 [ %3043, %3042 ], [ 0, %3038 ]
  %3048 = phi %union.StackValue* [ %3045, %3042 ], [ %3797, %3038 ]
  %3049 = getelementptr inbounds i32, i32* %3040, i64 1
  %3050 = load i32, i32* %3040, align 4, !tbaa !31
  br label %101

; <label>:3051:                                   ; preds = %3795
  %3052 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %3053 = load i8, i8* %3052, align 8, !tbaa !6
  %3054 = and i8 %3053, 15
  %3055 = icmp eq i8 %3054, 0
  br i1 %3055, label %3056, label %3059

; <label>:3056:                                   ; preds = %3051
  %3057 = trunc i32 %3796 to i16
  %3058 = icmp slt i16 %3057, 0
  br i1 %3058, label %3071, label %3073

; <label>:3059:                                   ; preds = %3051
  %3060 = icmp eq i8 %3053, 1
  br i1 %3060, label %3064, label %3061

; <label>:3061:                                   ; preds = %3059
  %3062 = trunc i32 %3796 to i16
  %3063 = icmp sgt i16 %3062, -1
  br i1 %3063, label %3071, label %3073

; <label>:3064:                                   ; preds = %3059
  %3065 = bitcast %union.StackValue* %3803 to i32*
  %3066 = load i32, i32* %3065, align 8, !tbaa !6
  %3067 = icmp ne i32 %3066, 0
  %3068 = trunc i32 %3796 to i16
  %3069 = icmp slt i16 %3068, 0
  %3070 = xor i1 %3069, %3067
  br i1 %3070, label %3071, label %3073

; <label>:3071:                                   ; preds = %3061, %3056, %3064
  %3072 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %3080

; <label>:3073:                                   ; preds = %3061, %3056, %3064
  %3074 = load i32, i32* %3799, align 4, !tbaa !31
  %3075 = lshr i32 %3074, 7
  %3076 = add nsw i32 %3075, -16777214
  %3077 = sext i32 %3076 to i64
  %3078 = getelementptr inbounds i32, i32* %3799, i64 %3077
  %3079 = load i32, i32* %37, align 8, !tbaa !6
  br label %3080

; <label>:3080:                                   ; preds = %3073, %3071
  %3081 = phi i32 [ %3798, %3071 ], [ %3079, %3073 ]
  %3082 = phi i32* [ %3072, %3071 ], [ %3078, %3073 ]
  %3083 = icmp eq i32 %3081, 0
  br i1 %3083, label %3088, label %3084

; <label>:3084:                                   ; preds = %3080
  %3085 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3082) #11
  %3086 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3087 = getelementptr inbounds %union.StackValue, %union.StackValue* %3086, i64 1
  br label %3088

; <label>:3088:                                   ; preds = %3080, %3084
  %3089 = phi i32 [ %3085, %3084 ], [ 0, %3080 ]
  %3090 = phi %union.StackValue* [ %3087, %3084 ], [ %3797, %3080 ]
  %3091 = getelementptr inbounds i32, i32* %3082, i64 1
  %3092 = load i32, i32* %3082, align 4, !tbaa !31
  br label %101

; <label>:3093:                                   ; preds = %3795
  %3094 = lshr i32 %3796, 16
  %3095 = and i32 %3094, 255
  %3096 = zext i32 %3095 to i64
  %3097 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3096, i32 0
  %3098 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3096, i32 0, i32 1
  %3099 = load i8, i8* %3098, align 8, !tbaa !2
  %3100 = and i8 %3099, 15
  %3101 = icmp eq i8 %3100, 0
  br i1 %3101, label %3102, label %3105

; <label>:3102:                                   ; preds = %3093
  %3103 = trunc i32 %3796 to i16
  %3104 = icmp sgt i16 %3103, -1
  br i1 %3104, label %3119, label %3117

; <label>:3105:                                   ; preds = %3093
  %3106 = icmp eq i8 %3099, 1
  br i1 %3106, label %3110, label %3107

; <label>:3107:                                   ; preds = %3105
  %3108 = trunc i32 %3796 to i16
  %3109 = icmp slt i16 %3108, 0
  br i1 %3109, label %3119, label %3117

; <label>:3110:                                   ; preds = %3105
  %3111 = bitcast %struct.TValue* %3097 to i32*
  %3112 = load i32, i32* %3111, align 8, !tbaa !6
  %3113 = icmp eq i32 %3112, 0
  %3114 = trunc i32 %3796 to i16
  %3115 = icmp slt i16 %3114, 0
  %3116 = xor i1 %3115, %3113
  br i1 %3116, label %3119, label %3117

; <label>:3117:                                   ; preds = %3102, %3107, %3110
  %3118 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %3131

; <label>:3119:                                   ; preds = %3102, %3107, %3110
  %3120 = bitcast %struct.TValue* %3097 to i64*
  %3121 = bitcast %union.StackValue* %3803 to i64*
  %3122 = load i64, i64* %3120, align 8
  store i64 %3122, i64* %3121, align 8
  %3123 = load i8, i8* %3098, align 8, !tbaa !2
  %3124 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 %3123, i8* %3124, align 8, !tbaa !2
  %3125 = load i32, i32* %3799, align 4, !tbaa !31
  %3126 = lshr i32 %3125, 7
  %3127 = add nsw i32 %3126, -16777214
  %3128 = sext i32 %3127 to i64
  %3129 = getelementptr inbounds i32, i32* %3799, i64 %3128
  %3130 = load i32, i32* %37, align 8, !tbaa !6
  br label %3131

; <label>:3131:                                   ; preds = %3119, %3117
  %3132 = phi i32 [ %3798, %3117 ], [ %3130, %3119 ]
  %3133 = phi i32* [ %3118, %3117 ], [ %3129, %3119 ]
  %3134 = icmp eq i32 %3132, 0
  br i1 %3134, label %3139, label %3135

; <label>:3135:                                   ; preds = %3131
  %3136 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3133) #11
  %3137 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3138 = getelementptr inbounds %union.StackValue, %union.StackValue* %3137, i64 1
  br label %3139

; <label>:3139:                                   ; preds = %3131, %3135
  %3140 = phi i32 [ %3136, %3135 ], [ 0, %3131 ]
  %3141 = phi %union.StackValue* [ %3138, %3135 ], [ %3797, %3131 ]
  %3142 = getelementptr inbounds i32, i32* %3133, i64 1
  %3143 = load i32, i32* %3133, align 4, !tbaa !31
  br label %101

; <label>:3144:                                   ; preds = %3795
  %3145 = lshr i32 %3796, 16
  %3146 = and i32 %3145, 255
  %3147 = lshr i32 %3796, 24
  %3148 = add nsw i32 %3147, -1
  %3149 = icmp eq i32 %3146, 0
  br i1 %3149, label %3153, label %3150

; <label>:3150:                                   ; preds = %3144
  %3151 = zext i32 %3146 to i64
  %3152 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 %3151
  store %union.StackValue* %3152, %union.StackValue** %34, align 8, !tbaa !25
  br label %3153

; <label>:3153:                                   ; preds = %3144, %3150
  store i32* %3799, i32** %31, align 8, !tbaa !6
  call void @luaD_call(%struct.lua_State* %0, %union.StackValue* %3803, i32 %3148) #11
  %3154 = load i32, i32* %37, align 8, !tbaa !6
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3160, label %3156

; <label>:3156:                                   ; preds = %3153
  %3157 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %3158 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3159 = getelementptr inbounds %union.StackValue, %union.StackValue* %3158, i64 1
  br label %3160

; <label>:3160:                                   ; preds = %3153, %3156
  %3161 = phi i32 [ %3157, %3156 ], [ 0, %3153 ]
  %3162 = phi %union.StackValue* [ %3159, %3156 ], [ %3797, %3153 ]
  %3163 = getelementptr inbounds i32, i32* %3799, i64 1
  %3164 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:3165:                                   ; preds = %3795
  %3166 = zext i32 %3801 to i64
  %3167 = lshr i32 %3796, 16
  %3168 = and i32 %3167, 255
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3173, label %3170

; <label>:3170:                                   ; preds = %3165
  %3171 = zext i32 %3168 to i64
  %3172 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 %3171
  store %union.StackValue* %3172, %union.StackValue** %34, align 8, !tbaa !25
  br label %3179

; <label>:3173:                                   ; preds = %3165
  %3174 = load i64, i64* %35, align 8, !tbaa !25
  %3175 = ptrtoint %union.StackValue* %3803 to i64
  %3176 = sub i64 %3174, %3175
  %3177 = lshr exact i64 %3176, 4
  %3178 = trunc i64 %3177 to i32
  br label %3179

; <label>:3179:                                   ; preds = %3173, %3170
  %3180 = phi i32 [ %3168, %3170 ], [ %3178, %3173 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %3181 = trunc i32 %3796 to i16
  %3182 = icmp slt i16 %3181, 0
  br i1 %3182, label %3183, label %3192

; <label>:3183:                                   ; preds = %3179
  %3184 = lshr i32 %3796, 24
  %3185 = icmp eq i32 %3184, 0
  br i1 %3185, label %3189, label %3186

; <label>:3186:                                   ; preds = %3183
  %3187 = load i32, i32* %49, align 4, !tbaa !6
  %3188 = add nsw i32 %3187, %3184
  br label %3189

; <label>:3189:                                   ; preds = %3183, %3186
  %3190 = phi i32 [ %3188, %3186 ], [ 0, %3183 ]
  %3191 = call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %3797, i32 -1) #11
  br label %3192

; <label>:3192:                                   ; preds = %3189, %3179
  %3193 = phi i32 [ %3190, %3189 ], [ 0, %3179 ]
  %3194 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3166, i32 0, i32 1
  %3195 = load i8, i8* %3194, align 8, !tbaa !6
  %3196 = and i8 %3195, 15
  %3197 = icmp eq i8 %3196, 6
  br i1 %3197, label %3201, label %3198

; <label>:3198:                                   ; preds = %3192
  call void @luaD_tryfuncTM(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %3803) #11
  %3199 = add nsw i32 %3180, 1
  %3200 = load i8, i8* %3194, align 8, !tbaa !6
  br label %3201

; <label>:3201:                                   ; preds = %3198, %3192
  %3202 = phi i8 [ %3200, %3198 ], [ %3195, %3192 ]
  %3203 = phi i32 [ %3199, %3198 ], [ %3180, %3192 ]
  %3204 = icmp eq i8 %3202, 86
  br i1 %3204, label %3225, label %3205

; <label>:3205:                                   ; preds = %3201
  call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %3803, i32 -1) #11
  %3206 = load i32, i32* %37, align 8, !tbaa !6
  %3207 = icmp eq i32 %3206, 0
  %3208 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  br i1 %3207, label %3215, label %3209

; <label>:3209:                                   ; preds = %3205
  %3210 = getelementptr inbounds %union.StackValue, %union.StackValue* %3208, i64 1
  %3211 = lshr i32 %3796, 7
  %3212 = and i32 %3211, 255
  %3213 = zext i32 %3212 to i64
  %3214 = getelementptr inbounds %union.StackValue, %union.StackValue* %3210, i64 %3213
  br label %3215

; <label>:3215:                                   ; preds = %3205, %3209
  %3216 = phi %union.StackValue* [ %3214, %3209 ], [ %3803, %3205 ]
  %3217 = sext i32 %3193 to i64
  %3218 = sub nsw i64 0, %3217
  %3219 = getelementptr inbounds %union.StackValue, %union.StackValue* %3208, i64 %3218
  store %union.StackValue* %3219, %union.StackValue** %27, align 8, !tbaa !30
  %3220 = load i64, i64* %35, align 8, !tbaa !25
  %3221 = ptrtoint %union.StackValue* %3216 to i64
  %3222 = sub i64 %3220, %3221
  %3223 = lshr exact i64 %3222, 4
  %3224 = trunc i64 %3223 to i32
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %3224) #11
  br label %3794

; <label>:3225:                                   ; preds = %3201
  %3226 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3227 = sext i32 %3193 to i64
  %3228 = sub nsw i64 0, %3227
  %3229 = getelementptr inbounds %union.StackValue, %union.StackValue* %3226, i64 %3228
  store %union.StackValue* %3229, %union.StackValue** %27, align 8, !tbaa !30
  call void @luaD_pretailcall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, %union.StackValue* nonnull %3803, i32 %3203) #11
  br label %50

; <label>:3230:                                   ; preds = %3795
  %3231 = lshr i32 %3796, 16
  %3232 = and i32 %3231, 255
  %3233 = add nsw i32 %3232, -1
  %3234 = icmp eq i32 %3232, 0
  br i1 %3234, label %3235, label %3241

; <label>:3235:                                   ; preds = %3230
  %3236 = load i64, i64* %35, align 8, !tbaa !25
  %3237 = ptrtoint %union.StackValue* %3803 to i64
  %3238 = sub i64 %3236, %3237
  %3239 = lshr exact i64 %3238, 4
  %3240 = trunc i64 %3239 to i32
  br label %3244

; <label>:3241:                                   ; preds = %3230
  %3242 = sext i32 %3233 to i64
  %3243 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 %3242
  store %union.StackValue* %3243, %union.StackValue** %34, align 8, !tbaa !25
  br label %3244

; <label>:3244:                                   ; preds = %3241, %3235
  %3245 = phi i32 [ %3240, %3235 ], [ %3233, %3241 ]
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %3246 = trunc i32 %3796 to i16
  %3247 = icmp slt i16 %3246, 0
  br i1 %3247, label %3248, label %3260

; <label>:3248:                                   ; preds = %3244
  %3249 = lshr i32 %3796, 24
  %3250 = icmp eq i32 %3249, 0
  br i1 %3250, label %3258, label %3251

; <label>:3251:                                   ; preds = %3248
  %3252 = load i32, i32* %49, align 4, !tbaa !6
  %3253 = add nsw i32 %3252, %3249
  %3254 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3255 = sext i32 %3253 to i64
  %3256 = sub nsw i64 0, %3255
  %3257 = getelementptr inbounds %union.StackValue, %union.StackValue* %3254, i64 %3256
  store %union.StackValue* %3257, %union.StackValue** %27, align 8, !tbaa !30
  br label %3258

; <label>:3258:                                   ; preds = %3248, %3251
  %3259 = call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %3797, i32 0) #11
  br label %3260

; <label>:3260:                                   ; preds = %3258, %3244
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %3245) #11
  br label %3794

; <label>:3261:                                   ; preds = %3795
  %3262 = load i32, i32* %26, align 8, !tbaa !32
  %3263 = icmp eq i32 %3262, 0
  br i1 %3263, label %3265, label %3264

; <label>:3264:                                   ; preds = %3261
  store %union.StackValue* %3803, %union.StackValue** %34, align 8, !tbaa !25
  store i32* %3799, i32** %31, align 8, !tbaa !6
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %1, i32 0) #11
  br label %3794

; <label>:3265:                                   ; preds = %3261
  %3266 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %3267 = load i16, i16* %3266, align 4, !tbaa !46
  %3268 = sext i16 %3267 to i32
  %3269 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %3270 = bitcast %struct.CallInfo** %3269 to i64*
  %3271 = load i64, i64* %3270, align 8, !tbaa !47
  %3272 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3273 = bitcast %struct.CallInfo** %3272 to i64*
  store i64 %3271, i64* %3273, align 8, !tbaa !29
  %3274 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 -1
  store %union.StackValue* %3274, %union.StackValue** %34, align 8, !tbaa !25
  br label %3275

; <label>:3275:                                   ; preds = %3278, %3265
  %3276 = phi i32 [ %3268, %3265 ], [ %3279, %3278 ]
  %3277 = icmp sgt i32 %3276, 0
  br i1 %3277, label %3278, label %3794

; <label>:3278:                                   ; preds = %3275
  %3279 = add nsw i32 %3276, -1
  %3280 = load %union.StackValue*, %union.StackValue** %34, align 8, !tbaa !25
  %3281 = getelementptr inbounds %union.StackValue, %union.StackValue* %3280, i64 1
  store %union.StackValue* %3281, %union.StackValue** %34, align 8, !tbaa !25
  %3282 = getelementptr inbounds %union.StackValue, %union.StackValue* %3280, i64 0, i32 0, i32 1
  store i8 0, i8* %3282, align 8, !tbaa !6
  br label %3275

; <label>:3283:                                   ; preds = %3795
  %3284 = zext i32 %3801 to i64
  %3285 = load i32, i32* %26, align 8, !tbaa !32
  %3286 = icmp eq i32 %3285, 0
  br i1 %3286, label %3289, label %3287

; <label>:3287:                                   ; preds = %3283
  %3288 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1
  store %union.StackValue* %3288, %union.StackValue** %34, align 8, !tbaa !25
  store i32* %3799, i32** %31, align 8, !tbaa !6
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %1, i32 1) #11
  br label %3794

; <label>:3289:                                   ; preds = %3283
  %3290 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %3291 = load i16, i16* %3290, align 4, !tbaa !46
  %3292 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %3293 = bitcast %struct.CallInfo** %3292 to i64*
  %3294 = load i64, i64* %3293, align 8, !tbaa !47
  %3295 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3296 = bitcast %struct.CallInfo** %3295 to i64*
  store i64 %3294, i64* %3296, align 8, !tbaa !29
  %3297 = icmp eq i16 %3291, 0
  %3298 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 -1
  br i1 %3297, label %3299, label %3300

; <label>:3299:                                   ; preds = %3289
  store %union.StackValue* %3298, %union.StackValue** %34, align 8, !tbaa !25
  br label %3794

; <label>:3300:                                   ; preds = %3289
  %3301 = sext i16 %3291 to i32
  %3302 = bitcast %union.StackValue* %3803 to i64*
  %3303 = bitcast %union.StackValue* %3298 to i64*
  %3304 = load i64, i64* %3302, align 8
  store i64 %3304, i64* %3303, align 8
  %3305 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3284, i32 0, i32 1
  %3306 = load i8, i8* %3305, align 8, !tbaa !2
  %3307 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 -1, i32 0, i32 1
  store i8 %3306, i8* %3307, align 8, !tbaa !2
  store %union.StackValue* %3797, %union.StackValue** %34, align 8, !tbaa !25
  br label %3308

; <label>:3308:                                   ; preds = %3311, %3300
  %3309 = phi i32 [ %3301, %3300 ], [ %3312, %3311 ]
  %3310 = icmp sgt i32 %3309, 1
  br i1 %3310, label %3311, label %3794

; <label>:3311:                                   ; preds = %3308
  %3312 = add nsw i32 %3309, -1
  %3313 = load %union.StackValue*, %union.StackValue** %34, align 8, !tbaa !25
  %3314 = getelementptr inbounds %union.StackValue, %union.StackValue* %3313, i64 1
  store %union.StackValue* %3314, %union.StackValue** %34, align 8, !tbaa !25
  %3315 = getelementptr inbounds %union.StackValue, %union.StackValue* %3313, i64 0, i32 0, i32 1
  store i8 0, i8* %3315, align 8, !tbaa !6
  br label %3308

; <label>:3316:                                   ; preds = %3795
  %3317 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 2, i32 0
  %3318 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 2, i32 0, i32 1
  %3319 = load i8, i8* %3318, align 8, !tbaa !6
  %3320 = icmp eq i8 %3319, 35
  br i1 %3320, label %3321, label %3340

; <label>:3321:                                   ; preds = %3316
  %3322 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1, i32 0, i32 0
  %3323 = bitcast %union.Value* %3322 to i64*
  %3324 = load i64, i64* %3323, align 8, !tbaa !6
  %3325 = icmp eq i64 %3324, 0
  br i1 %3325, label %3362, label %3326

; <label>:3326:                                   ; preds = %3321
  %3327 = bitcast %struct.TValue* %3317 to i64*
  %3328 = load i64, i64* %3327, align 8, !tbaa !6
  %3329 = bitcast %union.StackValue* %3803 to i64*
  %3330 = load i64, i64* %3329, align 8, !tbaa !6
  %3331 = add i64 %3324, -1
  store i64 %3331, i64* %3323, align 8, !tbaa !6
  %3332 = add i64 %3330, %3328
  store i64 %3332, i64* %3329, align 8, !tbaa !6
  %3333 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0
  %3334 = bitcast %struct.TValue* %3333 to i64*
  store i64 %3332, i64* %3334, align 8, !tbaa !6
  %3335 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0, i32 1
  store i8 35, i8* %3335, align 8, !tbaa !2
  %3336 = lshr i32 %3796, 15
  %3337 = zext i32 %3336 to i64
  %3338 = sub nsw i64 0, %3337
  %3339 = getelementptr inbounds i32, i32* %3799, i64 %3338
  br label %3362

; <label>:3340:                                   ; preds = %3316
  %3341 = bitcast %struct.TValue* %3317 to double*
  %3342 = load double, double* %3341, align 8, !tbaa !6
  %3343 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1, i32 0, i32 0
  %3344 = bitcast %union.Value* %3343 to double*
  %3345 = load double, double* %3344, align 8, !tbaa !6
  %3346 = bitcast %union.StackValue* %3803 to double*
  %3347 = load double, double* %3346, align 8, !tbaa !6
  %3348 = fadd double %3342, %3347
  %3349 = fcmp ogt double %3342, 0.000000e+00
  br i1 %3349, label %3350, label %3352

; <label>:3350:                                   ; preds = %3340
  %3351 = fcmp ugt double %3348, %3345
  br i1 %3351, label %3362, label %3354

; <label>:3352:                                   ; preds = %3340
  %3353 = fcmp ugt double %3345, %3348
  br i1 %3353, label %3362, label %3354

; <label>:3354:                                   ; preds = %3350, %3352
  store double %3348, double* %3346, align 8, !tbaa !6
  %3355 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0
  %3356 = bitcast %struct.TValue* %3355 to double*
  store double %3348, double* %3356, align 8, !tbaa !6
  %3357 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0, i32 1
  store i8 19, i8* %3357, align 8, !tbaa !2
  %3358 = lshr i32 %3796, 15
  %3359 = zext i32 %3358 to i64
  %3360 = sub nsw i64 0, %3359
  %3361 = getelementptr inbounds i32, i32* %3799, i64 %3360
  br label %3362

; <label>:3362:                                   ; preds = %3321, %3350, %3352, %3354, %3326
  %3363 = phi i32* [ %3339, %3326 ], [ %3799, %3321 ], [ %3361, %3354 ], [ %3799, %3350 ], [ %3799, %3352 ]
  %3364 = load i32, i32* %37, align 8, !tbaa !6
  %3365 = icmp eq i32 %3364, 0
  br i1 %3365, label %3370, label %3366

; <label>:3366:                                   ; preds = %3362
  %3367 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3363) #11
  %3368 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3369 = getelementptr inbounds %union.StackValue, %union.StackValue* %3368, i64 1
  br label %3370

; <label>:3370:                                   ; preds = %3362, %3366
  %3371 = phi i32 [ %3367, %3366 ], [ 0, %3362 ]
  %3372 = phi %union.StackValue* [ %3369, %3366 ], [ %3797, %3362 ]
  %3373 = getelementptr inbounds i32, i32* %3363, i64 1
  %3374 = load i32, i32* %3363, align 4, !tbaa !31
  br label %101

; <label>:3375:                                   ; preds = %3795
  %3376 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0
  %3377 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1, i32 0
  %3378 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 2, i32 0
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %3379 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %3379, i64* %35, align 8, !tbaa !25
  %3380 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  %3381 = load i8, i8* %3380, align 8, !tbaa !2
  %3382 = icmp eq i8 %3381, 35
  br i1 %3382, label %3383, label %3454

; <label>:3383:                                   ; preds = %3375
  %3384 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 2, i32 0, i32 1
  %3385 = load i8, i8* %3384, align 8, !tbaa !2
  %3386 = icmp eq i8 %3385, 35
  br i1 %3386, label %3387, label %3454

; <label>:3387:                                   ; preds = %3383
  %3388 = bitcast %union.StackValue* %3803 to i64*
  %3389 = load i64, i64* %3388, align 8, !tbaa !6
  %3390 = bitcast %struct.TValue* %3378 to i64*
  %3391 = load i64, i64* %3390, align 8, !tbaa !6
  %3392 = icmp eq i64 %3391, 0
  br i1 %3392, label %3393, label %3394

; <label>:3393:                                   ; preds = %3387
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #13
  unreachable

; <label>:3394:                                   ; preds = %3387
  %3395 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0
  %3396 = bitcast %struct.TValue* %3395 to i64*
  store i64 %3389, i64* %3396, align 8, !tbaa !6
  %3397 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0, i32 1
  store i8 35, i8* %3397, align 8, !tbaa !2
  %3398 = icmp slt i64 %3391, 0
  %3399 = lshr i64 %3391, 63
  %3400 = trunc i64 %3399 to i32
  %3401 = add nuw nsw i32 %3400, 1
  %3402 = call i32 @luaV_tointeger(%struct.TValue* nonnull %3377, i64* nonnull %22, i32 %3401) #11
  %3403 = icmp eq i32 %3402, 0
  br i1 %3403, label %3406, label %3404

; <label>:3404:                                   ; preds = %3394
  %3405 = load i64, i64* %22, align 8, !tbaa !9
  br label %3429

; <label>:3406:                                   ; preds = %3394
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #10
  %3407 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1, i32 0, i32 1
  %3408 = load i8, i8* %3407, align 8, !tbaa !2
  %3409 = icmp eq i8 %3408, 19
  br i1 %3409, label %3410, label %3414

; <label>:3410:                                   ; preds = %3406
  %3411 = bitcast %struct.TValue* %3377 to i64*
  %3412 = load i64, i64* %3411, align 8, !tbaa !6
  store i64 %3412, i64* %48, align 8, !tbaa !7
  %3413 = bitcast i64 %3412 to double
  br label %3420

; <label>:3414:                                   ; preds = %3406
  %3415 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3377, double* nonnull %3) #11
  %3416 = icmp eq i32 %3415, 0
  br i1 %3416, label %3417, label %3418

; <label>:3417:                                   ; preds = %3414
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3377, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #13
  unreachable

; <label>:3418:                                   ; preds = %3414
  %3419 = load double, double* %3, align 8, !tbaa !7
  br label %3420

; <label>:3420:                                   ; preds = %3418, %3410
  %3421 = phi double [ %3419, %3418 ], [ %3413, %3410 ]
  %3422 = fcmp ogt double %3421, 0.000000e+00
  br i1 %3422, label %3423, label %3424

; <label>:3423:                                   ; preds = %3420
  br i1 %3398, label %3428, label %3426

; <label>:3424:                                   ; preds = %3420
  %3425 = icmp sgt i64 %3391, 0
  br i1 %3425, label %3428, label %3426

; <label>:3426:                                   ; preds = %3424, %3423
  %3427 = phi i64 [ 9223372036854775807, %3423 ], [ -9223372036854775808, %3424 ]
  store i64 %3427, i64* %22, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #10
  br label %3429

; <label>:3428:                                   ; preds = %3423, %3424
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #10
  br label %3435

; <label>:3429:                                   ; preds = %3404, %3426
  %3430 = phi i64 [ %3405, %3404 ], [ %3427, %3426 ]
  %3431 = icmp sgt i64 %3391, 0
  %3432 = icmp slt i64 %3430, %3389
  %3433 = icmp sgt i64 %3430, %3389
  %3434 = select i1 %3431, i1 %3432, i1 %3433
  br i1 %3434, label %3435, label %3440

; <label>:3435:                                   ; preds = %3429, %3428
  %3436 = lshr i32 %3796, 15
  %3437 = add nuw nsw i32 %3436, 1
  %3438 = zext i32 %3437 to i64
  %3439 = getelementptr inbounds i32, i32* %3799, i64 %3438
  br label %3515

; <label>:3440:                                   ; preds = %3429
  br i1 %3431, label %3441, label %3446

; <label>:3441:                                   ; preds = %3440
  %3442 = sub i64 %3430, %3389
  %3443 = icmp eq i64 %3391, 1
  br i1 %3443, label %3450, label %3444

; <label>:3444:                                   ; preds = %3441
  %3445 = udiv i64 %3442, %3391
  br label %3450

; <label>:3446:                                   ; preds = %3440
  %3447 = sub i64 %3389, %3430
  %3448 = sub i64 0, %3391
  %3449 = udiv i64 %3447, %3448
  br label %3450

; <label>:3450:                                   ; preds = %3441, %3444, %3446
  %3451 = phi i64 [ %3445, %3444 ], [ %3442, %3441 ], [ %3449, %3446 ]
  %3452 = bitcast %struct.TValue* %3377 to i64*
  store i64 %3451, i64* %3452, align 8, !tbaa !6
  %3453 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1, i32 0, i32 1
  store i8 35, i8* %3453, align 8, !tbaa !2
  br label %3515

; <label>:3454:                                   ; preds = %3383, %3375
  %3455 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1, i32 0, i32 1
  %3456 = load i8, i8* %3455, align 8, !tbaa !2
  %3457 = icmp eq i8 %3456, 19
  br i1 %3457, label %3458, label %3461

; <label>:3458:                                   ; preds = %3454
  %3459 = bitcast %struct.TValue* %3377 to i64*
  %3460 = load i64, i64* %3459, align 8, !tbaa !6
  store i64 %3460, i64* %44, align 8, !tbaa !7
  br label %3465

; <label>:3461:                                   ; preds = %3454
  %3462 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3377, double* nonnull %24) #12
  %3463 = icmp eq i32 %3462, 0
  br i1 %3463, label %3464, label %3465, !prof !11

; <label>:3464:                                   ; preds = %3461
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3377, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #13
  unreachable

; <label>:3465:                                   ; preds = %3458, %3461
  %3466 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 2, i32 0, i32 1
  %3467 = load i8, i8* %3466, align 8, !tbaa !2
  %3468 = icmp eq i8 %3467, 19
  br i1 %3468, label %3469, label %3472

; <label>:3469:                                   ; preds = %3465
  %3470 = bitcast %struct.TValue* %3378 to i64*
  %3471 = load i64, i64* %3470, align 8, !tbaa !6
  store i64 %3471, i64* %45, align 8, !tbaa !7
  br label %3476

; <label>:3472:                                   ; preds = %3465
  %3473 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3378, double* nonnull %25) #12
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3475, label %3476, !prof !11

; <label>:3475:                                   ; preds = %3472
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #13
  unreachable

; <label>:3476:                                   ; preds = %3469, %3472
  %3477 = load i8, i8* %3380, align 8, !tbaa !2
  %3478 = icmp eq i8 %3477, 19
  br i1 %3478, label %3479, label %3482

; <label>:3479:                                   ; preds = %3476
  %3480 = bitcast %union.StackValue* %3803 to i64*
  %3481 = load i64, i64* %3480, align 8, !tbaa !6
  store i64 %3481, i64* %47, align 8, !tbaa !7
  br label %3486

; <label>:3482:                                   ; preds = %3476
  %3483 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3376, double* nonnull %23) #12
  %3484 = icmp eq i32 %3483, 0
  br i1 %3484, label %3485, label %3486, !prof !11

; <label>:3485:                                   ; preds = %3482
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3376, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #13
  unreachable

; <label>:3486:                                   ; preds = %3479, %3482
  %3487 = load double, double* %25, align 8, !tbaa !7
  %3488 = fcmp oeq double %3487, 0.000000e+00
  br i1 %3488, label %3489, label %3490

; <label>:3489:                                   ; preds = %3486
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #13
  unreachable

; <label>:3490:                                   ; preds = %3486
  %3491 = fcmp ogt double %3487, 0.000000e+00
  br i1 %3491, label %3492, label %3496

; <label>:3492:                                   ; preds = %3490
  %3493 = load double, double* %24, align 8, !tbaa !7
  %3494 = load double, double* %23, align 8, !tbaa !7
  %3495 = fcmp olt double %3493, %3494
  br i1 %3495, label %3500, label %3505

; <label>:3496:                                   ; preds = %3490
  %3497 = load double, double* %23, align 8, !tbaa !7
  %3498 = load double, double* %24, align 8, !tbaa !7
  %3499 = fcmp olt double %3497, %3498
  br i1 %3499, label %3500, label %3505

; <label>:3500:                                   ; preds = %3496, %3492
  %3501 = lshr i32 %3796, 15
  %3502 = add nuw nsw i32 %3501, 1
  %3503 = zext i32 %3502 to i64
  %3504 = getelementptr inbounds i32, i32* %3799, i64 %3503
  br label %3515

; <label>:3505:                                   ; preds = %3496, %3492
  %3506 = phi double [ %3497, %3496 ], [ %3494, %3492 ]
  %3507 = phi double [ %3498, %3496 ], [ %3493, %3492 ]
  %3508 = bitcast %struct.TValue* %3377 to double*
  store double %3507, double* %3508, align 8, !tbaa !6
  store i8 19, i8* %3455, align 8, !tbaa !2
  %3509 = bitcast %struct.TValue* %3378 to double*
  store double %3487, double* %3509, align 8, !tbaa !6
  store i8 19, i8* %3466, align 8, !tbaa !2
  %3510 = bitcast %union.StackValue* %3803 to double*
  store double %3506, double* %3510, align 8, !tbaa !6
  store i8 19, i8* %3380, align 8, !tbaa !2
  %3511 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0
  %3512 = load i64, i64* %47, align 8, !tbaa !7
  %3513 = bitcast %struct.TValue* %3511 to i64*
  store i64 %3512, i64* %3513, align 8, !tbaa !6
  %3514 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0, i32 1
  store i8 19, i8* %3514, align 8, !tbaa !2
  br label %3515

; <label>:3515:                                   ; preds = %3500, %3505, %3435, %3450
  %3516 = phi i32* [ %3439, %3435 ], [ %3799, %3450 ], [ %3504, %3500 ], [ %3799, %3505 ]
  %3517 = icmp eq i32 %3798, 0
  br i1 %3517, label %3522, label %3518

; <label>:3518:                                   ; preds = %3515
  %3519 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3516) #11
  %3520 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3521 = getelementptr inbounds %union.StackValue, %union.StackValue* %3520, i64 1
  br label %3522

; <label>:3522:                                   ; preds = %3515, %3518
  %3523 = phi i32 [ %3519, %3518 ], [ 0, %3515 ]
  %3524 = phi %union.StackValue* [ %3521, %3518 ], [ %3797, %3515 ]
  %3525 = getelementptr inbounds i32, i32* %3516, i64 1
  %3526 = load i32, i32* %3516, align 4, !tbaa !31
  br label %101

; <label>:3527:                                   ; preds = %3795
  %3528 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3, i32 0, i32 1
  %3529 = load i8, i8* %3528, align 8, !tbaa !6
  %3530 = and i8 %3529, 15
  %3531 = icmp eq i8 %3530, 0
  br i1 %3531, label %3534, label %3532

; <label>:3532:                                   ; preds = %3527
  %3533 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 3
  store i32* %3799, i32** %31, align 8, !tbaa !6
  call void @luaF_newtbcupval(%struct.lua_State* %0, %union.StackValue* nonnull %3533) #11
  br label %3534

; <label>:3534:                                   ; preds = %3532, %3527
  %3535 = lshr i32 %3796, 15
  %3536 = zext i32 %3535 to i64
  %3537 = getelementptr inbounds i32, i32* %3799, i64 %3536
  %3538 = getelementptr inbounds i32, i32* %3537, i64 1
  %3539 = load i32, i32* %3537, align 4, !tbaa !31
  br label %3540

; <label>:3540:                                   ; preds = %3795, %3534
  %3541 = phi i32 [ %3796, %3795 ], [ %3539, %3534 ]
  %3542 = phi i32* [ %3799, %3795 ], [ %3538, %3534 ]
  %3543 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 4
  %3544 = bitcast %union.StackValue* %3543 to i8*
  %3545 = bitcast %union.StackValue* %3803 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3544, i8* %3545, i64 48, i32 8, i1 false)
  store i32* %3542, i32** %31, align 8, !tbaa !6
  %3546 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %3546, i64* %35, align 8, !tbaa !25
  %3547 = lshr i32 %3541, 24
  call void @luaD_call(%struct.lua_State* %0, %union.StackValue* nonnull %3543, i32 %3547) #11
  %3548 = load i32, i32* %37, align 8, !tbaa !6
  %3549 = icmp eq i32 %3548, 0
  br i1 %3549, label %3557, label %3550

; <label>:3550:                                   ; preds = %3540
  %3551 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3552 = getelementptr inbounds %union.StackValue, %union.StackValue* %3551, i64 1
  %3553 = lshr i32 %3541, 7
  %3554 = and i32 %3553, 255
  %3555 = zext i32 %3554 to i64
  %3556 = getelementptr inbounds %union.StackValue, %union.StackValue* %3552, i64 %3555
  br label %3557

; <label>:3557:                                   ; preds = %3540, %3550
  %3558 = phi %union.StackValue* [ %3556, %3550 ], [ %3803, %3540 ]
  %3559 = phi %union.StackValue* [ %3552, %3550 ], [ %3797, %3540 ]
  %3560 = getelementptr inbounds i32, i32* %3542, i64 1
  %3561 = load i32, i32* %3542, align 4, !tbaa !31
  %3562 = getelementptr inbounds %union.StackValue, %union.StackValue* %3558, i64 2
  br label %3563

; <label>:3563:                                   ; preds = %3795, %3557
  %3564 = phi %union.StackValue* [ %3803, %3795 ], [ %3562, %3557 ]
  %3565 = phi i32 [ %3796, %3795 ], [ %3561, %3557 ]
  %3566 = phi i32 [ %3798, %3795 ], [ %3548, %3557 ]
  %3567 = phi i32* [ %3799, %3795 ], [ %3560, %3557 ]
  %3568 = phi %union.StackValue* [ %3797, %3795 ], [ %3559, %3557 ]
  %3569 = getelementptr inbounds %union.StackValue, %union.StackValue* %3564, i64 2, i32 0, i32 1
  %3570 = load i8, i8* %3569, align 8, !tbaa !6
  %3571 = and i8 %3570, 15
  %3572 = icmp eq i8 %3571, 0
  br i1 %3572, label %3583, label %3573

; <label>:3573:                                   ; preds = %3563
  %3574 = getelementptr inbounds %union.StackValue, %union.StackValue* %3564, i64 2, i32 0, i32 0
  %3575 = bitcast %union.Value* %3574 to i64*
  %3576 = bitcast %union.StackValue* %3564 to i64*
  %3577 = load i64, i64* %3575, align 8
  store i64 %3577, i64* %3576, align 8
  %3578 = getelementptr inbounds %union.StackValue, %union.StackValue* %3564, i64 0, i32 0, i32 1
  store i8 %3570, i8* %3578, align 8, !tbaa !2
  %3579 = lshr i32 %3565, 15
  %3580 = zext i32 %3579 to i64
  %3581 = sub nsw i64 0, %3580
  %3582 = getelementptr inbounds i32, i32* %3567, i64 %3581
  br label %3583

; <label>:3583:                                   ; preds = %3573, %3563
  %3584 = phi i32* [ %3567, %3563 ], [ %3582, %3573 ]
  %3585 = icmp eq i32 %3566, 0
  br i1 %3585, label %3590, label %3586

; <label>:3586:                                   ; preds = %3583
  %3587 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3584) #11
  %3588 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3589 = getelementptr inbounds %union.StackValue, %union.StackValue* %3588, i64 1
  br label %3590

; <label>:3590:                                   ; preds = %3583, %3586
  %3591 = phi i32 [ %3587, %3586 ], [ 0, %3583 ]
  %3592 = phi %union.StackValue* [ %3589, %3586 ], [ %3568, %3583 ]
  %3593 = getelementptr inbounds i32, i32* %3584, i64 1
  %3594 = load i32, i32* %3584, align 4, !tbaa !31
  br label %101

; <label>:3595:                                   ; preds = %3795
  %3596 = lshr i32 %3796, 16
  %3597 = and i32 %3596, 255
  %3598 = lshr i32 %3796, 24
  %3599 = icmp eq i32 %3597, 0
  br i1 %3599, label %3600, label %3607

; <label>:3600:                                   ; preds = %3595
  %3601 = load i64, i64* %35, align 8, !tbaa !25
  %3602 = ptrtoint %union.StackValue* %3803 to i64
  %3603 = sub i64 %3601, %3602
  %3604 = lshr exact i64 %3603, 4
  %3605 = trunc i64 %3604 to i32
  %3606 = add nsw i32 %3605, -1
  br label %3609

; <label>:3607:                                   ; preds = %3595
  %3608 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %3608, i64* %35, align 8, !tbaa !25
  br label %3609

; <label>:3609:                                   ; preds = %3607, %3600
  %3610 = phi i32 [ %3606, %3600 ], [ %3597, %3607 ]
  %3611 = icmp eq i32 %3598, 0
  br i1 %3611, label %3612, label %3616

; <label>:3612:                                   ; preds = %3609
  %3613 = load i32, i32* %3799, align 4, !tbaa !31
  %3614 = lshr i32 %3613, 7
  %3615 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %3616

; <label>:3616:                                   ; preds = %3612, %3609
  %3617 = phi i32 [ %3614, %3612 ], [ %3598, %3609 ]
  %3618 = phi i32* [ %3615, %3612 ], [ %3799, %3609 ]
  %3619 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 0, i32 0, i32 0, i32 0
  %3620 = load %struct.GCObject*, %struct.GCObject** %3619, align 8, !tbaa !6
  %3621 = bitcast %struct.GCObject* %3620 to %struct.Table*
  %3622 = mul nuw nsw i32 %3617, 50
  %3623 = add i32 %3610, -50
  %3624 = add i32 %3623, %3622
  %3625 = call i32 @luaH_realasize(%struct.Table* %3621) #11
  %3626 = icmp ugt i32 %3624, %3625
  br i1 %3626, label %3627, label %3628

; <label>:3627:                                   ; preds = %3616
  call void @luaH_resizearray(%struct.lua_State* nonnull %0, %struct.Table* %3621, i32 %3624) #11
  br label %3628

; <label>:3628:                                   ; preds = %3627, %3616
  %3629 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3620, i64 1
  %3630 = bitcast %struct.GCObject* %3629 to %struct.TValue**
  %3631 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3620, i64 0, i32 2
  %3632 = sext i32 %3610 to i64
  br label %3633

; <label>:3633:                                   ; preds = %3664, %3628
  %3634 = phi i64 [ %3665, %3664 ], [ %3632, %3628 ]
  %3635 = phi i32 [ %3640, %3664 ], [ %3624, %3628 ]
  %3636 = icmp sgt i64 %3634, 0
  br i1 %3636, label %3637, label %3666

; <label>:3637:                                   ; preds = %3633
  %3638 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 %3634, i32 0
  %3639 = load %struct.TValue*, %struct.TValue** %3630, align 8, !tbaa !48
  %3640 = add i32 %3635, -1
  %3641 = zext i32 %3640 to i64
  %3642 = getelementptr inbounds %struct.TValue, %struct.TValue* %3639, i64 %3641
  %3643 = bitcast %struct.TValue* %3638 to i64*
  %3644 = bitcast %struct.TValue* %3642 to i64*
  %3645 = load i64, i64* %3643, align 8
  store i64 %3645, i64* %3644, align 8
  %3646 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 %3634, i32 0, i32 1
  %3647 = load i8, i8* %3646, align 8, !tbaa !2
  %3648 = getelementptr inbounds %struct.TValue, %struct.TValue* %3639, i64 %3641, i32 1
  store i8 %3647, i8* %3648, align 8, !tbaa !2
  %3649 = load i8, i8* %3646, align 8, !tbaa !2
  %3650 = and i8 %3649, 64
  %3651 = icmp eq i8 %3650, 0
  br i1 %3651, label %3664, label %3652

; <label>:3652:                                   ; preds = %3637
  %3653 = load i8, i8* %3631, align 1, !tbaa !6
  %3654 = and i8 %3653, 32
  %3655 = icmp eq i8 %3654, 0
  br i1 %3655, label %3664, label %3656

; <label>:3656:                                   ; preds = %3652
  %3657 = getelementptr inbounds %struct.TValue, %struct.TValue* %3638, i64 0, i32 0, i32 0
  %3658 = load %struct.GCObject*, %struct.GCObject** %3657, align 8, !tbaa !6
  %3659 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3658, i64 0, i32 2
  %3660 = load i8, i8* %3659, align 1, !tbaa !23
  %3661 = and i8 %3660, 24
  %3662 = icmp eq i8 %3661, 0
  br i1 %3662, label %3664, label %3663

; <label>:3663:                                   ; preds = %3656
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* nonnull %3620) #11
  br label %3664

; <label>:3664:                                   ; preds = %3656, %3652, %3637, %3663
  %3665 = add nsw i64 %3634, -1
  br label %3633

; <label>:3666:                                   ; preds = %3633
  %3667 = icmp eq i32 %3798, 0
  br i1 %3667, label %3672, label %3668

; <label>:3668:                                   ; preds = %3666
  %3669 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3618) #11
  %3670 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3671 = getelementptr inbounds %union.StackValue, %union.StackValue* %3670, i64 1
  br label %3672

; <label>:3672:                                   ; preds = %3666, %3668
  %3673 = phi i32 [ %3669, %3668 ], [ 0, %3666 ]
  %3674 = phi %union.StackValue* [ %3671, %3668 ], [ %3797, %3666 ]
  %3675 = getelementptr inbounds i32, i32* %3618, i64 1
  %3676 = load i32, i32* %3618, align 4, !tbaa !31
  br label %101

; <label>:3677:                                   ; preds = %3795
  %3678 = load %struct.Proto*, %struct.Proto** %54, align 8, !tbaa !33
  %3679 = getelementptr inbounds %struct.Proto, %struct.Proto* %3678, i64 0, i32 17
  %3680 = load %struct.Proto**, %struct.Proto*** %3679, align 8, !tbaa !49
  %3681 = lshr i32 %3796, 15
  %3682 = zext i32 %3681 to i64
  %3683 = getelementptr inbounds %struct.Proto*, %struct.Proto** %3680, i64 %3682
  %3684 = load %struct.Proto*, %struct.Proto** %3683, align 8, !tbaa !21
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %3685 = getelementptr inbounds %struct.Proto, %struct.Proto* %3684, i64 0, i32 6
  %3686 = load i32, i32* %3685, align 8, !tbaa !50
  %3687 = getelementptr inbounds %struct.Proto, %struct.Proto* %3684, i64 0, i32 18
  %3688 = load %struct.Upvaldesc*, %struct.Upvaldesc** %3687, align 8, !tbaa !51
  %3689 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 %3686) #11
  %3690 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3689, i64 0, i32 5
  store %struct.Proto* %3684, %struct.Proto** %3690, align 8, !tbaa !33
  %3691 = bitcast %struct.LClosure* %3689 to %struct.GCObject*
  %3692 = bitcast %union.StackValue* %3803 to %struct.LClosure**
  store %struct.LClosure* %3689, %struct.LClosure** %3692, align 8, !tbaa !6
  %3693 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802, i32 0, i32 1
  store i8 86, i8* %3693, align 8, !tbaa !2
  %3694 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3689, i64 0, i32 2
  %3695 = sext i32 %3686 to i64
  br label %3696

; <label>:3696:                                   ; preds = %3729, %3677
  %3697 = phi i64 [ %3730, %3729 ], [ 0, %3677 ]
  %3698 = icmp slt i64 %3697, %3695
  br i1 %3698, label %3699, label %3731

; <label>:3699:                                   ; preds = %3696
  %3700 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %3688, i64 %3697, i32 1
  %3701 = load i8, i8* %3700, align 8, !tbaa !52
  %3702 = icmp eq i8 %3701, 0
  %3703 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %3688, i64 %3697, i32 2
  %3704 = load i8, i8* %3703, align 1, !tbaa !54
  %3705 = zext i8 %3704 to i64
  br i1 %3702, label %3710, label %3706

; <label>:3706:                                   ; preds = %3699
  %3707 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3705
  %3708 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %0, %union.StackValue* %3707) #11
  %3709 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3689, i64 0, i32 6, i64 %3697
  store %struct.UpVal* %3708, %struct.UpVal** %3709, align 8, !tbaa !21
  br label %3717

; <label>:3710:                                   ; preds = %3699
  %3711 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %53, i64 0, i32 6, i64 %3705
  %3712 = bitcast %struct.UpVal** %3711 to i64*
  %3713 = load i64, i64* %3712, align 8, !tbaa !21
  %3714 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3689, i64 0, i32 6, i64 %3697
  %3715 = bitcast %struct.UpVal** %3714 to i64*
  store i64 %3713, i64* %3715, align 8, !tbaa !21
  %3716 = inttoptr i64 %3713 to %struct.UpVal*
  br label %3717

; <label>:3717:                                   ; preds = %3710, %3706
  %3718 = phi %struct.UpVal* [ %3716, %3710 ], [ %3708, %3706 ]
  %3719 = load i8, i8* %3694, align 1, !tbaa !55
  %3720 = and i8 %3719, 32
  %3721 = icmp eq i8 %3720, 0
  br i1 %3721, label %3729, label %3722

; <label>:3722:                                   ; preds = %3717
  %3723 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %3718, i64 0, i32 2
  %3724 = load i8, i8* %3723, align 1, !tbaa !41
  %3725 = and i8 %3724, 24
  %3726 = icmp eq i8 %3725, 0
  br i1 %3726, label %3729, label %3727

; <label>:3727:                                   ; preds = %3722
  %3728 = bitcast %struct.UpVal* %3718 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* nonnull %3691, %struct.GCObject* %3728) #11
  br label %3729

; <label>:3729:                                   ; preds = %3727, %3722, %3717
  %3730 = add nuw nsw i64 %3697, 1
  br label %3696

; <label>:3731:                                   ; preds = %3696
  %3732 = load %struct.global_State*, %struct.global_State** %38, align 8, !tbaa !16
  %3733 = getelementptr inbounds %struct.global_State, %struct.global_State* %3732, i64 0, i32 3
  %3734 = load i64, i64* %3733, align 8, !tbaa !43
  %3735 = icmp sgt i64 %3734, 0
  br i1 %3735, label %3736, label %3739

; <label>:3736:                                   ; preds = %3731
  %3737 = getelementptr inbounds %union.StackValue, %union.StackValue* %3803, i64 1
  store %union.StackValue* %3737, %union.StackValue** %34, align 8, !tbaa !25
  call void @luaC_step(%struct.lua_State* nonnull %0) #11
  %3738 = load i32, i32* %37, align 8, !tbaa !6
  br label %3739

; <label>:3739:                                   ; preds = %3736, %3731
  %3740 = phi i32 [ %3738, %3736 ], [ %3798, %3731 ]
  %3741 = icmp eq i32 %3740, 0
  br i1 %3741, label %3746, label %3742

; <label>:3742:                                   ; preds = %3739
  %3743 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %3799) #11
  %3744 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3745 = getelementptr inbounds %union.StackValue, %union.StackValue* %3744, i64 1
  br label %3746

; <label>:3746:                                   ; preds = %3739, %3742
  %3747 = phi i32 [ %3743, %3742 ], [ 0, %3739 ]
  %3748 = phi %union.StackValue* [ %3745, %3742 ], [ %3797, %3739 ]
  %3749 = getelementptr inbounds i32, i32* %3799, i64 1
  %3750 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:3751:                                   ; preds = %3795
  %3752 = lshr i32 %3796, 24
  %3753 = add nsw i32 %3752, -1
  store i32* %3799, i32** %31, align 8, !tbaa !6
  %3754 = load i64, i64* %33, align 8, !tbaa !42
  store i64 %3754, i64* %35, align 8, !tbaa !25
  call void @luaT_getvarargs(%struct.lua_State* %0, %struct.CallInfo* %1, %union.StackValue* %3803, i32 %3753) #11
  %3755 = load i32, i32* %37, align 8, !tbaa !6
  %3756 = icmp eq i32 %3755, 0
  br i1 %3756, label %3761, label %3757

; <label>:3757:                                   ; preds = %3751
  %3758 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3799) #11
  %3759 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3760 = getelementptr inbounds %union.StackValue, %union.StackValue* %3759, i64 1
  br label %3761

; <label>:3761:                                   ; preds = %3751, %3757
  %3762 = phi i32 [ %3758, %3757 ], [ 0, %3751 ]
  %3763 = phi %union.StackValue* [ %3760, %3757 ], [ %3797, %3751 ]
  %3764 = getelementptr inbounds i32, i32* %3799, i64 1
  %3765 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:3766:                                   ; preds = %3795
  %3767 = lshr i32 %3796, 7
  %3768 = and i32 %3767, 255
  %3769 = load %struct.Proto*, %struct.Proto** %54, align 8, !tbaa !33
  call void @luaT_adjustvarargs(%struct.lua_State* %0, i32 %3768, %struct.CallInfo* %1, %struct.Proto* %3769) #11
  %3770 = load i32, i32* %37, align 8, !tbaa !6
  %3771 = icmp eq i32 %3770, 0
  br i1 %3771, label %3772, label %3774

; <label>:3772:                                   ; preds = %3766
  %3773 = getelementptr inbounds i32, i32* %3799, i64 1
  br label %3777

; <label>:3774:                                   ; preds = %3766
  call void @luaD_hookcall(%struct.lua_State* %0, %struct.CallInfo* nonnull %1) #11
  %3775 = getelementptr inbounds i32, i32* %3799, i64 1
  store i32* %3775, i32** %43, align 8, !tbaa !56
  %3776 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  br label %3777

; <label>:3777:                                   ; preds = %3772, %3774
  %3778 = phi i32* [ %3773, %3772 ], [ %3775, %3774 ]
  %3779 = phi i32 [ 0, %3772 ], [ %3776, %3774 ]
  %3780 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3781 = getelementptr inbounds %union.StackValue, %union.StackValue* %3780, i64 1
  %3782 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:3783:                                   ; preds = %3795
  %3784 = icmp eq i32 %3798, 0
  br i1 %3784, label %3789, label %3785

; <label>:3785:                                   ; preds = %3783
  %3786 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3799) #11
  %3787 = load %union.StackValue*, %union.StackValue** %27, align 8, !tbaa !30
  %3788 = getelementptr inbounds %union.StackValue, %union.StackValue* %3787, i64 1
  br label %3789

; <label>:3789:                                   ; preds = %3783, %3785
  %3790 = phi i32 [ %3786, %3785 ], [ 0, %3783 ]
  %3791 = phi %union.StackValue* [ %3788, %3785 ], [ %3797, %3783 ]
  %3792 = getelementptr inbounds i32, i32* %3799, i64 1
  %3793 = load i32, i32* %3799, align 4, !tbaa !31
  br label %101

; <label>:3794:                                   ; preds = %3308, %3275, %3287, %3299, %3264, %3260, %3215
  ret void

; <label>:3795:                                   ; preds = %101, %74
  %3796 = phi i32 [ %79, %74 ], [ %102, %101 ]
  %3797 = phi %union.StackValue* [ %77, %74 ], [ %103, %101 ]
  %3798 = phi i32 [ %76, %74 ], [ %104, %101 ]
  %3799 = phi i32* [ %78, %74 ], [ %105, %101 ]
  %3800 = lshr i32 %3796, 7
  %3801 = and i32 %3800, 255
  %3802 = zext i32 %3801 to i64
  %3803 = getelementptr inbounds %union.StackValue, %union.StackValue* %3797, i64 %3802
  %3804 = and i32 %3796, 127
  %3805 = zext i32 %3804 to i64
  %3806 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3805
  %3807 = load i8*, i8** %3806, align 8, !tbaa !21
  indirectbr i8* %3807, [label %80, label %126, label %142, label %106, label %158, label %180, label %198, label %219, label %243, label %285, label %331, label %404, label %458, label %501, label %573, label %669, label %746, label %812, label %845, label %898, label %939, label %978, label %1019, label %1058, label %1096, label %1134, label %1174, label %1235, label %1294, label %1355, label %1414, label %1462, label %1510, label %1962, label %2004, label %2046, label %2238, label %2286, label %1570, label %1629, label %1688, label %1747, label %1806, label %1854, label %1902, label %2088, label %2138, label %2188, label %2377, label %2326, label %2427, label %2461, label %2497, label %2527, label %2544, label %2566, label %2580, label %2591, label %2607, label %2637, label %2701, label %2765, label %2797, label %2843, label %2895, label %2947, label %2999, label %3051, label %3093, label %3144, label %3165, label %3230, label %3261, label %3283, label %3316, label %3375, label %3527, label %3540, label %3563, label %3595, label %3677, label %3751, label %3766, label %3783]
}

; Function Attrs: minsize optsize
declare hidden void @luaD_hookcall(%struct.lua_State*, %struct.CallInfo*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaG_traceexec(%struct.lua_State*, i32*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaH_getint(%struct.Table*, i64) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaO_fb2int(i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaH_getstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaT_trybiniTM(%struct.lua_State*, %struct.TValue*, i64, i32, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize
declare double @pow(double, double) local_unnamed_addr #6

; Function Attrs: minsize optsize
declare hidden void @luaT_trybinassocTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden i32 @luaT_callorderiTM(%struct.lua_State*, %struct.TValue*, i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaD_tryfuncTM(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaD_pretailcall(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize noreturn optsize
declare hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaT_getvarargs(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden void @luaT_adjustvarargs(%struct.lua_State*, i32, %struct.CallInfo*, %struct.Proto*) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize readonly uwtable
define internal fastcc i32 @l_strcmp(%struct.TString* nocapture readonly, %struct.TString* nocapture readonly) unnamed_addr #5 {
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
  br label %31

; <label>:31:                                     ; preds = %29, %46
  %32 = phi i8* [ %48, %46 ], [ %4, %29 ]
  %33 = phi i64 [ %49, %46 ], [ %16, %29 ]
  %34 = phi i8* [ %50, %46 ], [ %18, %29 ]
  %35 = phi i64 [ %51, %46 ], [ %30, %29 ]
  %36 = tail call i32 @strcoll(i8* %32, i8* %34) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

; <label>:38:                                     ; preds = %31
  %39 = tail call i64 @strlen(i8* %32) #14
  %40 = icmp eq i64 %39, %35
  %41 = icmp eq i64 %39, %33
  br i1 %40, label %42, label %45

; <label>:42:                                     ; preds = %38
  %43 = xor i1 %41, true
  %44 = zext i1 %43 to i32
  br label %52

; <label>:45:                                     ; preds = %38
  br i1 %41, label %52, label %46

; <label>:46:                                     ; preds = %45
  %47 = add i64 %39, 1
  %48 = getelementptr inbounds i8, i8* %32, i64 %47
  %49 = sub i64 %33, %47
  %50 = getelementptr inbounds i8, i8* %34, i64 %47
  %51 = sub i64 %35, %47
  br label %31

; <label>:52:                                     ; preds = %45, %31, %42
  %53 = phi i32 [ %44, %42 ], [ -1, %45 ], [ %36, %31 ]
  ret i32 %53
}

; Function Attrs: minsize optsize
declare hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: minsize nounwind optsize readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly minsize nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: minsize optsize
declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: minsize optsize
declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { minsize noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { minsize norecurse nounwind optsize readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { minsize nounwind optsize }
attributes #12 = { minsize optsize }
attributes #13 = { minsize noreturn nounwind optsize }
attributes #14 = { minsize nounwind optsize readonly }

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
!50 = !{!36, !15, i64 16}
!51 = !{!36, !14, i64 80}
!52 = !{!53, !4, i64 8}
!53 = !{!"Upvaldesc", !14, i64 0, !4, i64 8, !4, i64 9}
!54 = !{!53, !4, i64 9}
!55 = !{!34, !4, i64 9}
!56 = !{!17, !14, i64 40}
!57 = !{!28, !4, i64 11}
