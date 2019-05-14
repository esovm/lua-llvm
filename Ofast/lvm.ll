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
@luaV_execute.disptab = internal unnamed_addr constant [84 x i8*] [i8* blockaddress(@luaV_execute, %72), i8* blockaddress(@luaV_execute, %118), i8* blockaddress(@luaV_execute, %134), i8* blockaddress(@luaV_execute, %98), i8* blockaddress(@luaV_execute, %150), i8* blockaddress(@luaV_execute, %172), i8* blockaddress(@luaV_execute, %190), i8* blockaddress(@luaV_execute, %236), i8* blockaddress(@luaV_execute, %260), i8* blockaddress(@luaV_execute, %302), i8* blockaddress(@luaV_execute, %348), i8* blockaddress(@luaV_execute, %421), i8* blockaddress(@luaV_execute, %475), i8* blockaddress(@luaV_execute, %518), i8* blockaddress(@luaV_execute, %590), i8* blockaddress(@luaV_execute, %686), i8* blockaddress(@luaV_execute, %763), i8* blockaddress(@luaV_execute, %829), i8* blockaddress(@luaV_execute, %862), i8* blockaddress(@luaV_execute, %915), i8* blockaddress(@luaV_execute, %956), i8* blockaddress(@luaV_execute, %995), i8* blockaddress(@luaV_execute, %1036), i8* blockaddress(@luaV_execute, %1100), i8* blockaddress(@luaV_execute, %1138), i8* blockaddress(@luaV_execute, %1176), i8* blockaddress(@luaV_execute, %1233), i8* blockaddress(@luaV_execute, %1294), i8* blockaddress(@luaV_execute, %1353), i8* blockaddress(@luaV_execute, %1414), i8* blockaddress(@luaV_execute, %1498), i8* blockaddress(@luaV_execute, %1546), i8* blockaddress(@luaV_execute, %1594), i8* blockaddress(@luaV_execute, %2105), i8* blockaddress(@luaV_execute, %2152), i8* blockaddress(@luaV_execute, %2199), i8* blockaddress(@luaV_execute, %2432), i8* blockaddress(@luaV_execute, %2496), i8* blockaddress(@luaV_execute, %1671), i8* blockaddress(@luaV_execute, %1730), i8* blockaddress(@luaV_execute, %1789), i8* blockaddress(@luaV_execute, %1848), i8* blockaddress(@luaV_execute, %1932), i8* blockaddress(@luaV_execute, %1980), i8* blockaddress(@luaV_execute, %2028), i8* blockaddress(@luaV_execute, %2246), i8* blockaddress(@luaV_execute, %2308), i8* blockaddress(@luaV_execute, %2370), i8* blockaddress(@luaV_execute, %2625), i8* blockaddress(@luaV_execute, %2552), i8* blockaddress(@luaV_execute, %2698), i8* blockaddress(@luaV_execute, %2732), i8* blockaddress(@luaV_execute, %2773), i8* blockaddress(@luaV_execute, %2803), i8* blockaddress(@luaV_execute, %2820), i8* blockaddress(@luaV_execute, %2842), i8* blockaddress(@luaV_execute, %2856), i8* blockaddress(@luaV_execute, %2867), i8* blockaddress(@luaV_execute, %2883), i8* blockaddress(@luaV_execute, %2913), i8* blockaddress(@luaV_execute, %3101), i8* blockaddress(@luaV_execute, %3293), i8* blockaddress(@luaV_execute, %3325), i8* blockaddress(@luaV_execute, %3371), i8* blockaddress(@luaV_execute, %3423), i8* blockaddress(@luaV_execute, %3475), i8* blockaddress(@luaV_execute, %3527), i8* blockaddress(@luaV_execute, %3579), i8* blockaddress(@luaV_execute, %3621), i8* blockaddress(@luaV_execute, %3672), i8* blockaddress(@luaV_execute, %3693), i8* blockaddress(@luaV_execute, %3758), i8* blockaddress(@luaV_execute, %3789), i8* blockaddress(@luaV_execute, %3815), i8* blockaddress(@luaV_execute, %3853), i8* blockaddress(@luaV_execute, %3912), i8* blockaddress(@luaV_execute, %4252), i8* blockaddress(@luaV_execute, %4265), i8* blockaddress(@luaV_execute, %4288), i8* blockaddress(@luaV_execute, %4320), i8* blockaddress(@luaV_execute, %4403), i8* blockaddress(@luaV_execute, %4478), i8* blockaddress(@luaV_execute, %4493), i8* blockaddress(@luaV_execute, %4510)], align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"'for' step is zero\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"initial value\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_tonumber_(%struct.TValue* nocapture readonly, double* nocapture) local_unnamed_addr #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = bitcast %struct.TValue* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8
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
  %19 = call i64 @luaO_str2num(i8* nonnull %18, %struct.TValue* nonnull %3) #8
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
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8
  ret i32 %46
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_flttointeger(double, i64* nocapture, i32) local_unnamed_addr #0 {
  %4 = tail call fast double @llvm.floor.f64(double %0)
  %5 = fcmp fast une double %4, %0
  br i1 %5, label %6, label %12

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %19, label %8

; <label>:8:                                      ; preds = %6
  %9 = icmp sgt i32 %2, 1
  %10 = fadd fast double %4, 1.000000e+00
  %11 = select i1 %9, double %10, double %4
  br label %12

; <label>:12:                                     ; preds = %8, %3
  %13 = phi double [ %4, %3 ], [ %11, %8 ]
  %14 = fcmp fast oge double %13, 0xC3E0000000000000
  %15 = fcmp fast olt double %13, 0x43E0000000000000
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
  switch i8 %5, label %27 [
    i8 19, label %6
    i8 35, label %24
  ]

; <label>:6:                                      ; preds = %3
  %7 = bitcast %struct.TValue* %0 to double*
  %8 = load double, double* %7, align 8, !tbaa !6
  %9 = tail call fast double @llvm.floor.f64(double %8) #8
  %10 = fcmp fast une double %9, %8
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %27, label %13

; <label>:13:                                     ; preds = %11
  %14 = icmp sgt i32 %2, 1
  %15 = fadd fast double %9, 1.000000e+00
  %16 = select i1 %14, double %15, double %9
  br label %17

; <label>:17:                                     ; preds = %13, %6
  %18 = phi double [ %9, %6 ], [ %16, %13 ]
  %19 = fcmp fast oge double %18, 0xC3E0000000000000
  %20 = fcmp fast olt double %18, 0x43E0000000000000
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %17
  %23 = fptosi double %18 to i64
  store i64 %23, i64* %1, align 8, !tbaa !9
  br label %27

; <label>:24:                                     ; preds = %3
  %25 = bitcast %struct.TValue* %0 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !6
  store i64 %26, i64* %1, align 8, !tbaa !9
  br label %27

; <label>:27:                                     ; preds = %22, %17, %11, %3, %24
  %28 = phi i32 [ 1, %24 ], [ 0, %3 ], [ 0, %11 ], [ 0, %17 ], [ 1, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_tointeger(%struct.TValue* nocapture readonly, i64* nocapture, i32) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  %5 = bitcast %struct.TValue* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %0, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !2
  %8 = and i8 %7, 15
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %10, label %34

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.TValue* %0 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !6
  %13 = getelementptr inbounds i8, i8* %12, i64 24
  %14 = call i64 @luaO_str2num(i8* nonnull %13, %struct.TValue* nonnull %4) #8
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
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %31, i64 0, i32 1
  %33 = load i8, i8* %32, align 8, !tbaa !2
  br label %34

; <label>:34:                                     ; preds = %27, %3
  %35 = phi i8 [ %7, %3 ], [ %33, %27 ]
  %36 = phi %struct.TValue* [ %0, %3 ], [ %31, %27 ]
  switch i8 %35, label %58 [
    i8 19, label %37
    i8 35, label %55
  ]

; <label>:37:                                     ; preds = %34
  %38 = bitcast %struct.TValue* %36 to double*
  %39 = load double, double* %38, align 8, !tbaa !6
  %40 = call fast double @llvm.floor.f64(double %39) #8
  %41 = fcmp fast une double %40, %39
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %37
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %58, label %44

; <label>:44:                                     ; preds = %42
  %45 = icmp sgt i32 %2, 1
  %46 = fadd fast double %40, 1.000000e+00
  %47 = select i1 %45, double %46, double %40
  br label %48

; <label>:48:                                     ; preds = %44, %37
  %49 = phi double [ %40, %37 ], [ %47, %44 ]
  %50 = fcmp fast oge double %49, 0xC3E0000000000000
  %51 = fcmp fast olt double %49, 0x43E0000000000000
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %58

; <label>:53:                                     ; preds = %48
  %54 = fptosi double %49 to i64
  store i64 %54, i64* %1, align 8, !tbaa !9
  br label %58

; <label>:55:                                     ; preds = %34
  %56 = bitcast %struct.TValue* %36 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !6
  store i64 %57, i64* %1, align 8, !tbaa !9
  br label %58

; <label>:58:                                     ; preds = %34, %42, %48, %53, %55
  %59 = phi i32 [ 1, %55 ], [ 0, %34 ], [ 0, %42 ], [ 0, %48 ], [ 1, %53 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_finishget(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, %struct.TValue* readnone) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  br label %7

; <label>:7:                                      ; preds = %5, %64
  %8 = phi %struct.TValue* [ %1, %5 ], [ %43, %64 ]
  %9 = phi %struct.TValue* [ %4, %5 ], [ %65, %64 ]
  %10 = phi i32 [ 0, %5 ], [ %66, %64 ]
  %11 = icmp eq %struct.TValue* %9, null
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %7
  %13 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %8, i32 0) #8
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i64 0, i32 1
  %15 = load i8, i8* %14, align 8, !tbaa !2
  %16 = and i8 %15, 15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %41, !prof !11

; <label>:18:                                     ; preds = %12
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #9
  unreachable

; <label>:19:                                     ; preds = %7
  %20 = bitcast %struct.TValue* %8 to %struct.Table**
  %21 = load %struct.Table*, %struct.Table** %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i64 0, i32 9
  %23 = load %struct.Table*, %struct.Table** %22, align 8, !tbaa !6
  %24 = icmp eq %struct.Table* %23, null
  br i1 %24, label %39, label %25

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.Table, %struct.Table* %23, i64 0, i32 3
  %27 = load i8, i8* %26, align 2, !tbaa !12
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %25
  %31 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i64 0, i32 40, i64 0
  %33 = load %struct.TString*, %struct.TString** %32, align 8, !tbaa !21
  %34 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %23, i32 0, %struct.TString* %33) #8
  %35 = icmp eq %struct.TValue* %34, null
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %34, i64 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !2
  br label %41

; <label>:39:                                     ; preds = %25, %19, %30
  %40 = getelementptr inbounds %union.StackValue, %union.StackValue* %3, i64 0, i32 0, i32 1
  store i8 0, i8* %40, align 8, !tbaa !6
  br label %69

; <label>:41:                                     ; preds = %36, %12
  %42 = phi i8 [ %15, %12 ], [ %38, %36 ]
  %43 = phi %struct.TValue* [ %13, %12 ], [ %34, %36 ]
  %44 = and i8 %42, 15
  %45 = icmp eq i8 %44, 6
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %41
  tail call void @luaT_callTMres(%struct.lua_State* %0, %struct.TValue* %43, %struct.TValue* %8, %struct.TValue* %2, %union.StackValue* %3) #8
  br label %69

; <label>:47:                                     ; preds = %41
  %48 = icmp eq i8 %42, 69
  br i1 %48, label %49, label %64

; <label>:49:                                     ; preds = %47
  %50 = bitcast %struct.TValue* %43 to %struct.Table**
  %51 = load %struct.Table*, %struct.Table** %50, align 8, !tbaa !6
  %52 = tail call %struct.TValue* @luaH_get(%struct.Table* %51, %struct.TValue* %2) #8
  %53 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i64 0, i32 1
  %54 = load i8, i8* %53, align 8, !tbaa !2
  %55 = and i8 %54, 15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

; <label>:57:                                     ; preds = %49
  %58 = getelementptr inbounds %struct.TValue, %struct.TValue* %52, i64 0, i32 1
  %59 = bitcast %struct.TValue* %52 to i64*
  %60 = bitcast %union.StackValue* %3 to i64*
  %61 = load i64, i64* %59, align 8
  store i64 %61, i64* %60, align 8
  %62 = load i8, i8* %58, align 8, !tbaa !2
  %63 = getelementptr inbounds %union.StackValue, %union.StackValue* %3, i64 0, i32 0, i32 1
  store i8 %62, i8* %63, align 8, !tbaa !2
  br label %69

; <label>:64:                                     ; preds = %47, %49
  %65 = phi %struct.TValue* [ %52, %49 ], [ null, %47 ]
  %66 = add nuw nsw i32 %10, 1
  %67 = icmp ult i32 %66, 2000
  br i1 %67, label %7, label %68

; <label>:68:                                     ; preds = %64
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #9
  unreachable

; <label>:69:                                     ; preds = %57, %46, %39
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

; <label>:7:                                      ; preds = %5, %114
  %8 = phi %struct.TValue* [ %1, %5 ], [ %75, %114 ]
  %9 = phi %struct.TValue* [ %4, %5 ], [ %115, %114 ]
  %10 = phi i32 [ 0, %5 ], [ %116, %114 ]
  %11 = icmp eq %struct.TValue* %9, null
  br i1 %11, label %66, label %12

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 0, i32 0
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %14, i64 2, i32 1
  %16 = bitcast i8* %15 to %struct.Table**
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !22
  %18 = icmp eq %struct.Table* %17, null
  br i1 %18, label %33, label %19

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 3
  %21 = load i8, i8* %20, align 2, !tbaa !12
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %33

; <label>:24:                                     ; preds = %19
  %25 = load %struct.global_State*, %struct.global_State** %6, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 40, i64 1
  %27 = load %struct.TString*, %struct.TString** %26, align 8, !tbaa !21
  %28 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %17, i32 1, %struct.TString* %27) #8
  %29 = icmp eq %struct.TValue* %28, null
  br i1 %29, label %33, label %30

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %28, i64 0, i32 1
  %32 = load i8, i8* %31, align 8, !tbaa !2
  br label %73

; <label>:33:                                     ; preds = %19, %12, %24
  %34 = bitcast %struct.GCObject* %14 to %struct.Table*
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  %36 = load i8, i8* %35, align 8, !tbaa !2
  %37 = icmp eq i8 %36, 32
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %33
  %39 = tail call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %34, %struct.TValue* %2) #8
  %40 = getelementptr inbounds %struct.TValue, %struct.TValue* %39, i64 0, i32 1
  br label %41

; <label>:41:                                     ; preds = %38, %33
  %42 = phi i8* [ %40, %38 ], [ %35, %33 ]
  %43 = phi %struct.TValue* [ %39, %38 ], [ %9, %33 ]
  %44 = bitcast %struct.TValue* %3 to i64*
  %45 = bitcast %struct.TValue* %43 to i64*
  %46 = load i64, i64* %44, align 8
  store i64 %46, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %48 = load i8, i8* %47, align 8, !tbaa !2
  store i8 %48, i8* %42, align 8, !tbaa !2
  %49 = getelementptr inbounds %struct.Table, %struct.Table* %34, i64 0, i32 3
  store i8 0, i8* %49, align 2, !tbaa !12
  %50 = load i8, i8* %47, align 8, !tbaa !2
  %51 = and i8 %50, 64
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %119, label %53

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %14, i64 0, i32 2
  %55 = load i8, i8* %54, align 1, !tbaa !6
  %56 = and i8 %55, 32
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %119, label %58

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %60 = load %struct.GCObject*, %struct.GCObject** %59, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %60, i64 0, i32 2
  %62 = load i8, i8* %61, align 1, !tbaa !23
  %63 = and i8 %62, 24
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %119, label %65

; <label>:65:                                     ; preds = %58
  tail call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* nonnull %14) #8
  br label %119

; <label>:66:                                     ; preds = %7
  %67 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %8, i32 1) #8
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i64 0, i32 1
  %69 = load i8, i8* %68, align 8, !tbaa !2
  %70 = and i8 %69, 15
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73, !prof !11

; <label>:72:                                     ; preds = %66
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #9
  unreachable

; <label>:73:                                     ; preds = %30, %66
  %74 = phi i8 [ %69, %66 ], [ %32, %30 ]
  %75 = phi %struct.TValue* [ %67, %66 ], [ %28, %30 ]
  %76 = and i8 %74, 15
  %77 = icmp eq i8 %76, 6
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %73
  tail call void @luaT_callTM(%struct.lua_State* %0, %struct.TValue* %75, %struct.TValue* %8, %struct.TValue* %2, %struct.TValue* %3) #8
  br label %119

; <label>:79:                                     ; preds = %73
  %80 = icmp eq i8 %74, 69
  br i1 %80, label %81, label %114

; <label>:81:                                     ; preds = %79
  %82 = bitcast %struct.TValue* %75 to %struct.Table**
  %83 = load %struct.Table*, %struct.Table** %82, align 8, !tbaa !6
  %84 = tail call %struct.TValue* @luaH_get(%struct.Table* %83, %struct.TValue* %2) #8
  %85 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i64 0, i32 1
  %86 = load i8, i8* %85, align 8, !tbaa !2
  %87 = and i8 %86, 15
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %114, label %89

; <label>:89:                                     ; preds = %81
  %90 = getelementptr inbounds %struct.TValue, %struct.TValue* %84, i64 0, i32 1
  %91 = bitcast %struct.TValue* %3 to i64*
  %92 = bitcast %struct.TValue* %84 to i64*
  %93 = load i64, i64* %91, align 8
  store i64 %93, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %95 = load i8, i8* %94, align 8, !tbaa !2
  store i8 %95, i8* %90, align 8, !tbaa !2
  %96 = load i8, i8* %94, align 8, !tbaa !2
  %97 = and i8 %96, 64
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %119, label %99

; <label>:99:                                     ; preds = %89
  %100 = getelementptr inbounds %struct.TValue, %struct.TValue* %75, i64 0, i32 0, i32 0
  %101 = load %struct.GCObject*, %struct.GCObject** %100, align 8, !tbaa !6
  %102 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %101, i64 0, i32 2
  %103 = load i8, i8* %102, align 1, !tbaa !23
  %104 = and i8 %103, 32
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %119, label %106

; <label>:106:                                    ; preds = %99
  %107 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 0, i32 0
  %108 = load %struct.GCObject*, %struct.GCObject** %107, align 8, !tbaa !6
  %109 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %108, i64 0, i32 2
  %110 = load i8, i8* %109, align 1, !tbaa !23
  %111 = and i8 %110, 24
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %119, label %113

; <label>:113:                                    ; preds = %106
  tail call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %101) #8
  br label %119

; <label>:114:                                    ; preds = %79, %81
  %115 = phi %struct.TValue* [ %84, %81 ], [ null, %79 ]
  %116 = add nuw nsw i32 %10, 1
  %117 = icmp ult i32 %116, 2000
  br i1 %117, label %7, label %118

; <label>:118:                                    ; preds = %114
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #9
  unreachable

; <label>:119:                                    ; preds = %65, %41, %53, %58, %78, %106, %99, %89, %113
  ret void
}

declare hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

declare hidden void @luaT_callTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  %6 = trunc i8 %5 to i4
  switch i4 %6, label %133 [
    i4 3, label %7
    i4 4, label %72
  ]

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !2
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %133

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %5, 35
  br i1 %13, label %14, label %43

; <label>:14:                                     ; preds = %12
  %15 = bitcast %struct.TValue* %1 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !6
  %17 = icmp eq i8 %9, 35
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %14
  %19 = bitcast %struct.TValue* %2 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !6
  %21 = icmp slt i64 %16, %20
  br label %69

; <label>:22:                                     ; preds = %14
  %23 = bitcast %struct.TValue* %2 to double*
  %24 = load double, double* %23, align 8, !tbaa !6
  %25 = add i64 %16, 9007199254740992
  %26 = icmp ult i64 %25, 18014398509481985
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %22
  %28 = sitofp i64 %16 to double
  %29 = fcmp fast ogt double %24, %28
  br label %69

; <label>:30:                                     ; preds = %22
  %31 = tail call fast double @llvm.floor.f64(double %24) #8
  %32 = fcmp fast une double %31, %24
  %33 = fadd fast double %31, 1.000000e+00
  %34 = select i1 %32, double %33, double %31
  %35 = fcmp fast oge double %34, 0xC3E0000000000000
  %36 = fcmp fast olt double %34, 0x43E0000000000000
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %30
  %39 = fptosi double %34 to i64
  %40 = icmp slt i64 %16, %39
  br label %69

; <label>:41:                                     ; preds = %30
  %42 = fcmp fast ogt double %24, 0.000000e+00
  br label %69

; <label>:43:                                     ; preds = %12
  %44 = bitcast %struct.TValue* %1 to double*
  %45 = load double, double* %44, align 8, !tbaa !6
  %46 = icmp eq i8 %9, 19
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %43
  %48 = bitcast %struct.TValue* %2 to double*
  %49 = load double, double* %48, align 8, !tbaa !6
  %50 = fcmp fast olt double %45, %49
  br label %69

; <label>:51:                                     ; preds = %43
  %52 = bitcast %struct.TValue* %2 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !6
  %54 = add i64 %53, 9007199254740992
  %55 = icmp ult i64 %54, 18014398509481985
  br i1 %55, label %56, label %59

; <label>:56:                                     ; preds = %51
  %57 = sitofp i64 %53 to double
  %58 = fcmp fast olt double %45, %57
  br label %69

; <label>:59:                                     ; preds = %51
  %60 = tail call fast double @llvm.floor.f64(double %45) #8
  %61 = fcmp fast oge double %60, 0xC3E0000000000000
  %62 = fcmp fast olt double %60, 0x43E0000000000000
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %59
  %65 = fptosi double %60 to i64
  %66 = icmp sgt i64 %53, %65
  br label %69

; <label>:67:                                     ; preds = %59
  %68 = fcmp fast olt double %45, 0.000000e+00
  br label %69

; <label>:69:                                     ; preds = %18, %27, %38, %41, %47, %56, %64, %67
  %70 = phi i1 [ %21, %18 ], [ %50, %47 ], [ %29, %27 ], [ %42, %41 ], [ %40, %38 ], [ %58, %56 ], [ %68, %67 ], [ %66, %64 ]
  %71 = zext i1 %70 to i32
  br label %135

; <label>:72:                                     ; preds = %3
  %73 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %74 = load i8, i8* %73, align 8, !tbaa !2
  %75 = and i8 %74, 15
  %76 = icmp eq i8 %75, 4
  br i1 %76, label %77, label %133

; <label>:77:                                     ; preds = %72
  %78 = bitcast %struct.TValue* %1 to %struct.TString**
  %79 = load %struct.TString*, %struct.TString** %78, align 8, !tbaa !6
  %80 = bitcast %struct.TValue* %2 to %struct.TString**
  %81 = load %struct.TString*, %struct.TString** %80, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.TString, %struct.TString* %79, i64 1
  %83 = bitcast %struct.TString* %82 to i8*
  %84 = getelementptr inbounds %struct.TString, %struct.TString* %79, i64 0, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !25
  %86 = icmp eq i8 %85, 20
  br i1 %86, label %87, label %91

; <label>:87:                                     ; preds = %77
  %88 = getelementptr inbounds %struct.TString, %struct.TString* %79, i64 0, i32 4
  %89 = load i8, i8* %88, align 1, !tbaa !27
  %90 = zext i8 %89 to i64
  br label %94

; <label>:91:                                     ; preds = %77
  %92 = getelementptr inbounds %struct.TString, %struct.TString* %79, i64 0, i32 6, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !6
  br label %94

; <label>:94:                                     ; preds = %91, %87
  %95 = phi i64 [ %90, %87 ], [ %93, %91 ]
  %96 = getelementptr inbounds %struct.TString, %struct.TString* %81, i64 1
  %97 = bitcast %struct.TString* %96 to i8*
  %98 = getelementptr inbounds %struct.TString, %struct.TString* %81, i64 0, i32 1
  %99 = load i8, i8* %98, align 8, !tbaa !25
  %100 = icmp eq i8 %99, 20
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.TString, %struct.TString* %81, i64 0, i32 4
  %103 = load i8, i8* %102, align 1, !tbaa !27
  %104 = zext i8 %103 to i64
  br label %108

; <label>:105:                                    ; preds = %94
  %106 = getelementptr inbounds %struct.TString, %struct.TString* %81, i64 0, i32 6, i32 0
  %107 = load i64, i64* %106, align 8, !tbaa !6
  br label %108

; <label>:108:                                    ; preds = %105, %101
  %109 = phi i64 [ %104, %101 ], [ %107, %105 ]
  %110 = tail call i32 @strcoll(i8* nonnull %83, i8* nonnull %97) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %130

; <label>:112:                                    ; preds = %108
  br label %113

; <label>:113:                                    ; preds = %112, %122
  %114 = phi i64 [ %127, %122 ], [ %109, %112 ]
  %115 = phi i8* [ %126, %122 ], [ %97, %112 ]
  %116 = phi i64 [ %125, %122 ], [ %95, %112 ]
  %117 = phi i8* [ %124, %122 ], [ %83, %112 ]
  %118 = tail call i64 @strlen(i8* %117) #10
  %119 = icmp eq i64 %118, %114
  br i1 %119, label %130, label %120

; <label>:120:                                    ; preds = %113
  %121 = icmp eq i64 %118, %116
  br i1 %121, label %130, label %122

; <label>:122:                                    ; preds = %120
  %123 = add i64 %118, 1
  %124 = getelementptr inbounds i8, i8* %117, i64 %123
  %125 = sub i64 %116, %123
  %126 = getelementptr inbounds i8, i8* %115, i64 %123
  %127 = sub i64 %114, %123
  %128 = tail call i32 @strcoll(i8* %124, i8* %126) #10
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %113, label %130

; <label>:130:                                    ; preds = %120, %122, %113, %108
  %131 = phi i32 [ %110, %108 ], [ -1, %120 ], [ %128, %122 ], [ 0, %113 ]
  %132 = lshr i32 %131, 31
  br label %135

; <label>:133:                                    ; preds = %3, %7, %72
  %134 = tail call i32 @luaT_callorderTM(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2, i32 20) #8
  br label %135

; <label>:135:                                    ; preds = %133, %130, %69
  %136 = phi i32 [ %71, %69 ], [ %132, %130 ], [ %134, %133 ]
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  %6 = trunc i8 %5 to i4
  switch i4 %6, label %137 [
    i4 3, label %7
    i4 4, label %72
  ]

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !2
  %10 = and i8 %9, 15
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %137

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %5, 35
  br i1 %13, label %14, label %40

; <label>:14:                                     ; preds = %12
  %15 = bitcast %struct.TValue* %1 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !6
  %17 = icmp eq i8 %9, 35
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %14
  %19 = bitcast %struct.TValue* %2 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !6
  %21 = icmp sle i64 %16, %20
  br label %69

; <label>:22:                                     ; preds = %14
  %23 = bitcast %struct.TValue* %2 to double*
  %24 = load double, double* %23, align 8, !tbaa !6
  %25 = add i64 %16, 9007199254740992
  %26 = icmp ult i64 %25, 18014398509481985
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %22
  %28 = sitofp i64 %16 to double
  %29 = fcmp fast oge double %24, %28
  br label %69

; <label>:30:                                     ; preds = %22
  %31 = tail call fast double @llvm.floor.f64(double %24) #8
  %32 = fcmp fast oge double %31, 0xC3E0000000000000
  %33 = fcmp fast olt double %31, 0x43E0000000000000
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %30
  %36 = fptosi double %31 to i64
  %37 = icmp sle i64 %16, %36
  br label %69

; <label>:38:                                     ; preds = %30
  %39 = fcmp fast ogt double %24, 0.000000e+00
  br label %69

; <label>:40:                                     ; preds = %12
  %41 = bitcast %struct.TValue* %1 to double*
  %42 = load double, double* %41, align 8, !tbaa !6
  %43 = icmp eq i8 %9, 19
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %40
  %45 = bitcast %struct.TValue* %2 to double*
  %46 = load double, double* %45, align 8, !tbaa !6
  %47 = fcmp fast ole double %42, %46
  br label %69

; <label>:48:                                     ; preds = %40
  %49 = bitcast %struct.TValue* %2 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !6
  %51 = add i64 %50, 9007199254740992
  %52 = icmp ult i64 %51, 18014398509481985
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %48
  %54 = sitofp i64 %50 to double
  %55 = fcmp fast ole double %42, %54
  br label %69

; <label>:56:                                     ; preds = %48
  %57 = tail call fast double @llvm.floor.f64(double %42) #8
  %58 = fcmp fast une double %57, %42
  %59 = fadd fast double %57, 1.000000e+00
  %60 = select i1 %58, double %59, double %57
  %61 = fcmp fast oge double %60, 0xC3E0000000000000
  %62 = fcmp fast olt double %60, 0x43E0000000000000
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %56
  %65 = fptosi double %60 to i64
  %66 = icmp sge i64 %50, %65
  br label %69

; <label>:67:                                     ; preds = %56
  %68 = fcmp fast olt double %42, 0.000000e+00
  br label %69

; <label>:69:                                     ; preds = %18, %27, %35, %38, %44, %53, %64, %67
  %70 = phi i1 [ %21, %18 ], [ %47, %44 ], [ %29, %27 ], [ %39, %38 ], [ %37, %35 ], [ %55, %53 ], [ %68, %67 ], [ %66, %64 ]
  %71 = zext i1 %70 to i32
  br label %139

; <label>:72:                                     ; preds = %3
  %73 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %74 = load i8, i8* %73, align 8, !tbaa !2
  %75 = and i8 %74, 15
  %76 = icmp eq i8 %75, 4
  br i1 %76, label %77, label %137

; <label>:77:                                     ; preds = %72
  %78 = bitcast %struct.TValue* %1 to %struct.TString**
  %79 = load %struct.TString*, %struct.TString** %78, align 8, !tbaa !6
  %80 = bitcast %struct.TValue* %2 to %struct.TString**
  %81 = load %struct.TString*, %struct.TString** %80, align 8, !tbaa !6
  %82 = getelementptr inbounds %struct.TString, %struct.TString* %79, i64 1
  %83 = bitcast %struct.TString* %82 to i8*
  %84 = getelementptr inbounds %struct.TString, %struct.TString* %79, i64 0, i32 1
  %85 = load i8, i8* %84, align 8, !tbaa !25
  %86 = icmp eq i8 %85, 20
  br i1 %86, label %87, label %91

; <label>:87:                                     ; preds = %77
  %88 = getelementptr inbounds %struct.TString, %struct.TString* %79, i64 0, i32 4
  %89 = load i8, i8* %88, align 1, !tbaa !27
  %90 = zext i8 %89 to i64
  br label %94

; <label>:91:                                     ; preds = %77
  %92 = getelementptr inbounds %struct.TString, %struct.TString* %79, i64 0, i32 6, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !6
  br label %94

; <label>:94:                                     ; preds = %91, %87
  %95 = phi i64 [ %90, %87 ], [ %93, %91 ]
  %96 = getelementptr inbounds %struct.TString, %struct.TString* %81, i64 1
  %97 = bitcast %struct.TString* %96 to i8*
  %98 = getelementptr inbounds %struct.TString, %struct.TString* %81, i64 0, i32 1
  %99 = load i8, i8* %98, align 8, !tbaa !25
  %100 = icmp eq i8 %99, 20
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.TString, %struct.TString* %81, i64 0, i32 4
  %103 = load i8, i8* %102, align 1, !tbaa !27
  %104 = zext i8 %103 to i64
  br label %108

; <label>:105:                                    ; preds = %94
  %106 = getelementptr inbounds %struct.TString, %struct.TString* %81, i64 0, i32 6, i32 0
  %107 = load i64, i64* %106, align 8, !tbaa !6
  br label %108

; <label>:108:                                    ; preds = %105, %101
  %109 = phi i64 [ %104, %101 ], [ %107, %105 ]
  %110 = tail call i32 @strcoll(i8* nonnull %83, i8* nonnull %97) #10
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %133

; <label>:112:                                    ; preds = %108
  br label %113

; <label>:113:                                    ; preds = %112, %125
  %114 = phi i64 [ %130, %125 ], [ %109, %112 ]
  %115 = phi i8* [ %129, %125 ], [ %97, %112 ]
  %116 = phi i64 [ %128, %125 ], [ %95, %112 ]
  %117 = phi i8* [ %127, %125 ], [ %83, %112 ]
  %118 = tail call i64 @strlen(i8* %117) #10
  %119 = icmp eq i64 %118, %114
  %120 = icmp eq i64 %118, %116
  br i1 %119, label %121, label %124

; <label>:121:                                    ; preds = %113
  %122 = xor i1 %120, true
  %123 = zext i1 %122 to i32
  br label %133

; <label>:124:                                    ; preds = %113
  br i1 %120, label %133, label %125

; <label>:125:                                    ; preds = %124
  %126 = add i64 %118, 1
  %127 = getelementptr inbounds i8, i8* %117, i64 %126
  %128 = sub i64 %116, %126
  %129 = getelementptr inbounds i8, i8* %115, i64 %126
  %130 = sub i64 %114, %126
  %131 = tail call i32 @strcoll(i8* %127, i8* %129) #10
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %113, label %133

; <label>:133:                                    ; preds = %124, %125, %108, %121
  %134 = phi i32 [ %123, %121 ], [ %110, %108 ], [ -1, %124 ], [ %131, %125 ]
  %135 = icmp slt i32 %134, 1
  %136 = zext i1 %135 to i32
  br label %139

; <label>:137:                                    ; preds = %3, %7, %72
  %138 = tail call i32 @luaT_callorderTM(%struct.lua_State* %0, %struct.TValue* nonnull %1, %struct.TValue* %2, i32 21) #8
  br label %139

; <label>:139:                                    ; preds = %137, %133, %69
  %140 = phi i32 [ %71, %69 ], [ %136, %133 ], [ %138, %137 ]
  ret i32 %140
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 1
  %5 = load i8, i8* %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  %7 = load i8, i8* %6, align 8, !tbaa !2
  %8 = xor i8 %7, %5
  %9 = and i8 %8, 63
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %52, label %11

; <label>:11:                                     ; preds = %3
  %12 = and i8 %5, 15
  %13 = and i8 %7, 15
  %14 = icmp eq i8 %12, %13
  %15 = icmp eq i8 %12, 3
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %206

; <label>:17:                                     ; preds = %11
  switch i8 %5, label %206 [
    i8 35, label %18
    i8 19, label %21
  ]

; <label>:18:                                     ; preds = %17
  %19 = bitcast %struct.TValue* %1 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !6
  br label %32

; <label>:21:                                     ; preds = %17
  %22 = bitcast %struct.TValue* %1 to double*
  %23 = load double, double* %22, align 8, !tbaa !6
  %24 = tail call fast double @llvm.floor.f64(double %23) #8
  %25 = fcmp fast une double %24, %23
  br i1 %25, label %206, label %26

; <label>:26:                                     ; preds = %21
  %27 = fcmp fast oge double %24, 0xC3E0000000000000
  %28 = fcmp fast olt double %24, 0x43E0000000000000
  %29 = and i1 %27, %28
  br i1 %29, label %30, label %206

; <label>:30:                                     ; preds = %26
  %31 = fptosi double %24 to i64
  br label %32

; <label>:32:                                     ; preds = %30, %18
  %33 = phi i64 [ %20, %18 ], [ %31, %30 ]
  switch i8 %7, label %206 [
    i8 35, label %34
    i8 19, label %37
  ]

; <label>:34:                                     ; preds = %32
  %35 = bitcast %struct.TValue* %2 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !6
  br label %48

; <label>:37:                                     ; preds = %32
  %38 = bitcast %struct.TValue* %2 to double*
  %39 = load double, double* %38, align 8, !tbaa !6
  %40 = tail call fast double @llvm.floor.f64(double %39) #8
  %41 = fcmp fast une double %40, %39
  br i1 %41, label %206, label %42

; <label>:42:                                     ; preds = %37
  %43 = fcmp fast oge double %40, 0xC3E0000000000000
  %44 = fcmp fast olt double %40, 0x43E0000000000000
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %206

; <label>:46:                                     ; preds = %42
  %47 = fptosi double %40 to i64
  br label %48

; <label>:48:                                     ; preds = %46, %34
  %49 = phi i64 [ %36, %34 ], [ %47, %46 ]
  %50 = icmp eq i64 %33, %49
  %51 = zext i1 %50 to i32
  br label %206

; <label>:52:                                     ; preds = %3
  %53 = trunc i8 %5 to i6
  switch i6 %53, label %174 [
    i6 0, label %206
    i6 -29, label %54
    i6 19, label %61
    i6 1, label %68
    i6 2, label %75
    i6 -26, label %82
    i6 20, label %89
    i6 -28, label %96
    i6 7, label %102
    i6 5, label %138
  ]

; <label>:54:                                     ; preds = %52
  %55 = bitcast %struct.TValue* %1 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !6
  %57 = bitcast %struct.TValue* %2 to i64*
  %58 = load i64, i64* %57, align 8, !tbaa !6
  %59 = icmp eq i64 %56, %58
  %60 = zext i1 %59 to i32
  br label %206

; <label>:61:                                     ; preds = %52
  %62 = bitcast %struct.TValue* %1 to double*
  %63 = load double, double* %62, align 8, !tbaa !6
  %64 = bitcast %struct.TValue* %2 to double*
  %65 = load double, double* %64, align 8, !tbaa !6
  %66 = fcmp fast oeq double %63, %65
  %67 = zext i1 %66 to i32
  br label %206

; <label>:68:                                     ; preds = %52
  %69 = bitcast %struct.TValue* %1 to i32*
  %70 = load i32, i32* %69, align 8, !tbaa !6
  %71 = bitcast %struct.TValue* %2 to i32*
  %72 = load i32, i32* %71, align 8, !tbaa !6
  %73 = icmp eq i32 %70, %72
  %74 = zext i1 %73 to i32
  br label %206

; <label>:75:                                     ; preds = %52
  %76 = bitcast %struct.TValue* %1 to i8**
  %77 = load i8*, i8** %76, align 8, !tbaa !6
  %78 = bitcast %struct.TValue* %2 to i8**
  %79 = load i8*, i8** %78, align 8, !tbaa !6
  %80 = icmp eq i8* %77, %79
  %81 = zext i1 %80 to i32
  br label %206

; <label>:82:                                     ; preds = %52
  %83 = bitcast %struct.TValue* %1 to i32 (%struct.lua_State*)**
  %84 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %83, align 8, !tbaa !6
  %85 = bitcast %struct.TValue* %2 to i32 (%struct.lua_State*)**
  %86 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %85, align 8, !tbaa !6
  %87 = icmp eq i32 (%struct.lua_State*)* %84, %86
  %88 = zext i1 %87 to i32
  br label %206

; <label>:89:                                     ; preds = %52
  %90 = bitcast %struct.TValue* %1 to %struct.TString**
  %91 = load %struct.TString*, %struct.TString** %90, align 8, !tbaa !6
  %92 = bitcast %struct.TValue* %2 to %struct.TString**
  %93 = load %struct.TString*, %struct.TString** %92, align 8, !tbaa !6
  %94 = icmp eq %struct.TString* %91, %93
  %95 = zext i1 %94 to i32
  br label %206

; <label>:96:                                     ; preds = %52
  %97 = bitcast %struct.TValue* %1 to %struct.TString**
  %98 = load %struct.TString*, %struct.TString** %97, align 8, !tbaa !6
  %99 = bitcast %struct.TValue* %2 to %struct.TString**
  %100 = load %struct.TString*, %struct.TString** %99, align 8, !tbaa !6
  %101 = tail call i32 @luaS_eqlngstr(%struct.TString* %98, %struct.TString* %100) #8
  br label %206

; <label>:102:                                    ; preds = %52
  %103 = bitcast %struct.TValue* %1 to %struct.Udata**
  %104 = load %struct.Udata*, %struct.Udata** %103, align 8, !tbaa !6
  %105 = bitcast %struct.TValue* %2 to %struct.Udata**
  %106 = load %struct.Udata*, %struct.Udata** %105, align 8, !tbaa !6
  %107 = icmp eq %struct.Udata* %104, %106
  br i1 %107, label %206, label %108

; <label>:108:                                    ; preds = %102
  %109 = icmp eq %struct.lua_State* %0, null
  br i1 %109, label %206, label %110

; <label>:110:                                    ; preds = %108
  %111 = getelementptr inbounds %struct.Udata, %struct.Udata* %104, i64 0, i32 5
  %112 = load %struct.Table*, %struct.Table** %111, align 8, !tbaa !6
  %113 = icmp eq %struct.Table* %112, null
  br i1 %113, label %128, label %114

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.Table, %struct.Table* %112, i64 0, i32 3
  %116 = load i8, i8* %115, align 2, !tbaa !12
  %117 = and i8 %116, 32
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %128

; <label>:119:                                    ; preds = %114
  %120 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %121 = load %struct.global_State*, %struct.global_State** %120, align 8, !tbaa !16
  %122 = getelementptr inbounds %struct.global_State, %struct.global_State* %121, i64 0, i32 40, i64 5
  %123 = load %struct.TString*, %struct.TString** %122, align 8, !tbaa !21
  %124 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %112, i32 5, %struct.TString* %123) #8
  %125 = icmp eq %struct.TValue* %124, null
  br i1 %125, label %126, label %189

; <label>:126:                                    ; preds = %119
  %127 = load %struct.Udata*, %struct.Udata** %105, align 8, !tbaa !6
  br label %128

; <label>:128:                                    ; preds = %126, %114, %110
  %129 = phi %struct.Udata* [ %127, %126 ], [ %106, %114 ], [ %106, %110 ]
  %130 = getelementptr inbounds %struct.Udata, %struct.Udata* %129, i64 0, i32 5
  %131 = load %struct.Table*, %struct.Table** %130, align 8, !tbaa !6
  %132 = icmp eq %struct.Table* %131, null
  br i1 %132, label %206, label %133

; <label>:133:                                    ; preds = %128
  %134 = getelementptr inbounds %struct.Table, %struct.Table* %131, i64 0, i32 3
  %135 = load i8, i8* %134, align 2, !tbaa !12
  %136 = and i8 %135, 32
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %181, label %206

; <label>:138:                                    ; preds = %52
  %139 = bitcast %struct.TValue* %1 to %struct.Table**
  %140 = load %struct.Table*, %struct.Table** %139, align 8, !tbaa !6
  %141 = bitcast %struct.TValue* %2 to %struct.Table**
  %142 = load %struct.Table*, %struct.Table** %141, align 8, !tbaa !6
  %143 = icmp eq %struct.Table* %140, %142
  br i1 %143, label %206, label %144

; <label>:144:                                    ; preds = %138
  %145 = icmp eq %struct.lua_State* %0, null
  br i1 %145, label %206, label %146

; <label>:146:                                    ; preds = %144
  %147 = getelementptr inbounds %struct.Table, %struct.Table* %140, i64 0, i32 9
  %148 = load %struct.Table*, %struct.Table** %147, align 8, !tbaa !6
  %149 = icmp eq %struct.Table* %148, null
  br i1 %149, label %164, label %150

; <label>:150:                                    ; preds = %146
  %151 = getelementptr inbounds %struct.Table, %struct.Table* %148, i64 0, i32 3
  %152 = load i8, i8* %151, align 2, !tbaa !12
  %153 = and i8 %152, 32
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %164

; <label>:155:                                    ; preds = %150
  %156 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %157 = load %struct.global_State*, %struct.global_State** %156, align 8, !tbaa !16
  %158 = getelementptr inbounds %struct.global_State, %struct.global_State* %157, i64 0, i32 40, i64 5
  %159 = load %struct.TString*, %struct.TString** %158, align 8, !tbaa !21
  %160 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %148, i32 5, %struct.TString* %159) #8
  %161 = icmp eq %struct.TValue* %160, null
  br i1 %161, label %162, label %189

; <label>:162:                                    ; preds = %155
  %163 = load %struct.Table*, %struct.Table** %141, align 8, !tbaa !6
  br label %164

; <label>:164:                                    ; preds = %162, %150, %146
  %165 = phi %struct.Table* [ %163, %162 ], [ %142, %150 ], [ %142, %146 ]
  %166 = getelementptr inbounds %struct.Table, %struct.Table* %165, i64 0, i32 9
  %167 = load %struct.Table*, %struct.Table** %166, align 8, !tbaa !6
  %168 = icmp eq %struct.Table* %167, null
  br i1 %168, label %206, label %169

; <label>:169:                                    ; preds = %164
  %170 = getelementptr inbounds %struct.Table, %struct.Table* %167, i64 0, i32 3
  %171 = load i8, i8* %170, align 2, !tbaa !12
  %172 = and i8 %171, 32
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %181, label %206

; <label>:174:                                    ; preds = %52
  %175 = getelementptr inbounds %struct.TValue, %struct.TValue* %1, i64 0, i32 0, i32 0
  %176 = load %struct.GCObject*, %struct.GCObject** %175, align 8, !tbaa !6
  %177 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  %178 = load %struct.GCObject*, %struct.GCObject** %177, align 8, !tbaa !6
  %179 = icmp eq %struct.GCObject* %176, %178
  %180 = zext i1 %179 to i32
  br label %206

; <label>:181:                                    ; preds = %169, %133
  %182 = phi %struct.Table* [ %131, %133 ], [ %167, %169 ]
  %183 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %184 = load %struct.global_State*, %struct.global_State** %183, align 8, !tbaa !16
  %185 = getelementptr inbounds %struct.global_State, %struct.global_State* %184, i64 0, i32 40, i64 5
  %186 = load %struct.TString*, %struct.TString** %185, align 8, !tbaa !21
  %187 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %182, i32 5, %struct.TString* %186) #8
  %188 = icmp eq %struct.TValue* %187, null
  br i1 %188, label %206, label %189

; <label>:189:                                    ; preds = %119, %155, %181
  %190 = phi %struct.TValue* [ %187, %181 ], [ %124, %119 ], [ %160, %155 ]
  %191 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %192 = load %union.StackValue*, %union.StackValue** %191, align 8, !tbaa !28
  tail call void @luaT_callTMres(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %190, %struct.TValue* nonnull %1, %struct.TValue* nonnull %2, %union.StackValue* %192) #8
  %193 = bitcast %union.StackValue** %191 to %struct.TValue**
  %194 = load %struct.TValue*, %struct.TValue** %193, align 8, !tbaa !28
  %195 = getelementptr inbounds %struct.TValue, %struct.TValue* %194, i64 0, i32 1
  %196 = load i8, i8* %195, align 8, !tbaa !6
  %197 = and i8 %196, 15
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %206, label %199

; <label>:199:                                    ; preds = %189
  %200 = icmp eq i8 %196, 1
  br i1 %200, label %201, label %206

; <label>:201:                                    ; preds = %199
  %202 = bitcast %struct.TValue* %194 to i32*
  %203 = load i32, i32* %202, align 8, !tbaa !6
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i32
  br label %206

; <label>:206:                                    ; preds = %32, %17, %169, %164, %133, %128, %37, %42, %21, %26, %48, %189, %201, %199, %181, %144, %138, %108, %102, %52, %11, %174, %96, %89, %82, %75, %68, %61, %54
  %207 = phi i32 [ %180, %174 ], [ %101, %96 ], [ %95, %89 ], [ %88, %82 ], [ %81, %75 ], [ %74, %68 ], [ %67, %61 ], [ %60, %54 ], [ 0, %11 ], [ 1, %52 ], [ 1, %102 ], [ 0, %108 ], [ 1, %138 ], [ 0, %144 ], [ 0, %181 ], [ 0, %189 ], [ 1, %199 ], [ %205, %201 ], [ %51, %48 ], [ 0, %26 ], [ 0, %21 ], [ 0, %42 ], [ 0, %37 ], [ 0, %128 ], [ 0, %133 ], [ 0, %164 ], [ 0, %169 ], [ 0, %17 ], [ 0, %32 ]
  ret i32 %207
}

declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca [40 x i8], align 16
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %6 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !28
  br label %7

; <label>:7:                                      ; preds = %180, %2
  %8 = phi %union.StackValue* [ %6, %2 ], [ %187, %180 ]
  %9 = phi i32 [ %1, %2 ], [ %183, %180 ]
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
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %17) #8
  %23 = load i8, i8* %19, align 8, !tbaa !6
  br label %25

; <label>:24:                                     ; preds = %7, %18
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %11, %struct.TValue* nonnull %17, %union.StackValue* nonnull %10, i32 22) #8
  br label %180

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
  br i1 %37, label %38, label %180

; <label>:38:                                     ; preds = %34
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %11) #8
  br label %180

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
  br label %180

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
  %67 = icmp sgt i32 %9, 1
  br i1 %67, label %68, label %107

; <label>:68:                                     ; preds = %65
  %69 = sext i32 %9 to i64
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
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %81) #8
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
  br i1 %98, label %100, label %99, !prof !29

; <label>:99:                                     ; preds = %95
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #9
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
  br i1 %110, label %111, label %140

; <label>:111:                                    ; preds = %107
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8
  %112 = zext i32 %109 to i64
  br label %113

; <label>:113:                                    ; preds = %130, %111
  %114 = phi i64 [ %136, %130 ], [ %112, %111 ]
  %115 = phi i64 [ %135, %130 ], [ 0, %111 ]
  %116 = sub nsw i64 0, %114
  %117 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %116, i32 0, i32 0, i32 0
  %118 = bitcast %struct.GCObject** %117 to %struct.TString**
  %119 = load %struct.TString*, %struct.TString** %118, align 8, !tbaa !6
  %120 = getelementptr inbounds %struct.TString, %struct.TString* %119, i64 0, i32 1
  %121 = load i8, i8* %120, align 8, !tbaa !6
  %122 = icmp eq i8 %121, 20
  br i1 %122, label %123, label %127

; <label>:123:                                    ; preds = %113
  %124 = getelementptr inbounds %struct.TString, %struct.TString* %119, i64 0, i32 4
  %125 = load i8, i8* %124, align 1, !tbaa !6
  %126 = zext i8 %125 to i64
  br label %130

; <label>:127:                                    ; preds = %113
  %128 = getelementptr inbounds %struct.TString, %struct.TString* %119, i64 0, i32 6, i32 0
  %129 = load i64, i64* %128, align 8, !tbaa !6
  br label %130

; <label>:130:                                    ; preds = %127, %123
  %131 = phi i64 [ %126, %123 ], [ %129, %127 ]
  %132 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 %115
  %133 = getelementptr inbounds %struct.TString, %struct.TString* %119, i64 1
  %134 = bitcast %struct.TString* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %132, i8* nonnull %134, i64 %131, i32 1, i1 false) #8
  %135 = add i64 %131, %115
  %136 = add nsw i64 %114, -1
  %137 = icmp sgt i64 %114, 1
  br i1 %137, label %113, label %138

; <label>:138:                                    ; preds = %130
  %139 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %5, i64 %108) #8
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8
  br label %170

; <label>:140:                                    ; preds = %107
  %141 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %0, i64 %108) #8
  %142 = getelementptr inbounds %struct.TString, %struct.TString* %141, i64 1
  %143 = bitcast %struct.TString* %142 to i8*
  %144 = zext i32 %109 to i64
  br label %145

; <label>:145:                                    ; preds = %162, %140
  %146 = phi i64 [ %168, %162 ], [ %144, %140 ]
  %147 = phi i64 [ %167, %162 ], [ 0, %140 ]
  %148 = sub nsw i64 0, %146
  %149 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %148, i32 0, i32 0, i32 0
  %150 = bitcast %struct.GCObject** %149 to %struct.TString**
  %151 = load %struct.TString*, %struct.TString** %150, align 8, !tbaa !6
  %152 = getelementptr inbounds %struct.TString, %struct.TString* %151, i64 0, i32 1
  %153 = load i8, i8* %152, align 8, !tbaa !6
  %154 = icmp eq i8 %153, 20
  br i1 %154, label %155, label %159

; <label>:155:                                    ; preds = %145
  %156 = getelementptr inbounds %struct.TString, %struct.TString* %151, i64 0, i32 4
  %157 = load i8, i8* %156, align 1, !tbaa !6
  %158 = zext i8 %157 to i64
  br label %162

; <label>:159:                                    ; preds = %145
  %160 = getelementptr inbounds %struct.TString, %struct.TString* %151, i64 0, i32 6, i32 0
  %161 = load i64, i64* %160, align 8, !tbaa !6
  br label %162

; <label>:162:                                    ; preds = %159, %155
  %163 = phi i64 [ %158, %155 ], [ %161, %159 ]
  %164 = getelementptr inbounds i8, i8* %143, i64 %147
  %165 = getelementptr inbounds %struct.TString, %struct.TString* %151, i64 1
  %166 = bitcast %struct.TString* %165 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* nonnull %166, i64 %163, i32 1, i1 false) #8
  %167 = add i64 %163, %147
  %168 = add nsw i64 %146, -1
  %169 = icmp sgt i64 %146, 1
  br i1 %169, label %145, label %170

; <label>:170:                                    ; preds = %162, %138
  %171 = phi i64 [ %112, %138 ], [ %144, %162 ]
  %172 = phi %struct.TString* [ %139, %138 ], [ %141, %162 ]
  %173 = sub nsw i64 0, %171
  %174 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %173, i32 0
  %175 = bitcast %struct.TValue* %174 to %struct.TString**
  store %struct.TString* %172, %struct.TString** %175, align 8, !tbaa !6
  %176 = getelementptr inbounds %struct.TString, %struct.TString* %172, i64 0, i32 1
  %177 = load i8, i8* %176, align 8, !tbaa !25
  %178 = or i8 %177, 64
  %179 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %173, i32 0, i32 1
  store i8 %178, i8* %179, align 8, !tbaa !2
  br label %180

; <label>:180:                                    ; preds = %34, %38, %170, %48, %24
  %181 = phi i32 [ 2, %48 ], [ %109, %170 ], [ 2, %24 ], [ 2, %34 ], [ 2, %38 ]
  %182 = add nsw i32 %181, -1
  %183 = sub nsw i32 %9, %182
  %184 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !28
  %185 = sext i32 %182 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds %union.StackValue, %union.StackValue* %184, i64 %186
  store %union.StackValue* %187, %union.StackValue** %4, align 8, !tbaa !28
  %188 = icmp sgt i32 %183, 1
  br i1 %188, label %7, label %189

; <label>:189:                                    ; preds = %180
  ret void
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #2

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) local_unnamed_addr #2

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
  %23 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %11, i32 4, %struct.TString* %22) #8
  %24 = icmp eq %struct.TValue* %23, null
  br i1 %24, label %25, label %51

; <label>:25:                                     ; preds = %13, %7, %18
  %26 = tail call i64 @luaH_getn(%struct.Table* %9) #8
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
  %45 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* nonnull %2, i32 4) #8
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i64 0, i32 1
  %47 = load i8, i8* %46, align 8, !tbaa !2
  %48 = and i8 %47, 15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51, !prof !11

; <label>:50:                                     ; preds = %44
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* nonnull %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #9
  unreachable

; <label>:51:                                     ; preds = %18, %44
  %52 = phi %struct.TValue* [ %45, %44 ], [ %23, %18 ]
  tail call void @luaT_callTMres(%struct.lua_State* %0, %struct.TValue* %52, %struct.TValue* nonnull %2, %struct.TValue* nonnull %2, %union.StackValue* %1) #8
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
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #9
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
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #9
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

; Function Attrs: norecurse nounwind readnone uwtable
define hidden double @luaV_modf(%struct.lua_State* nocapture readnone, double, double) local_unnamed_addr #5 {
  %4 = frem fast double %1, %2
  %5 = fcmp fast ogt double %4, 0.000000e+00
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = fcmp fast olt double %2, 0.000000e+00
  br i1 %7, label %12, label %14

; <label>:8:                                      ; preds = %3
  %9 = fcmp fast olt double %4, 0.000000e+00
  %10 = fcmp fast ogt double %2, 0.000000e+00
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %8, %6
  %13 = fadd fast double %4, %2
  br label %14

; <label>:14:                                     ; preds = %12, %8, %6
  %15 = phi double [ %13, %12 ], [ %4, %6 ], [ %4, %8 ]
  ret double %15
}

; Function Attrs: norecurse nounwind readnone uwtable
define hidden i64 @luaV_shiftl(i64, i64) local_unnamed_addr #5 {
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
  %3 = load %struct.CallInfo*, %struct.CallInfo** %2, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i64 0, i32 0
  %5 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !31
  %6 = getelementptr inbounds %union.StackValue, %union.StackValue* %5, i64 1
  %7 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %3, i64 0, i32 4
  %8 = bitcast %union.anon* %7 to i32**
  %9 = load i32*, i32** %8, align 8, !tbaa !6
  %10 = getelementptr inbounds i32, i32* %9, i64 -1
  %11 = load i32, i32* %10, align 4, !tbaa !32
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
  %19 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !28
  %20 = getelementptr inbounds %union.StackValue, %union.StackValue* %19, i64 -1
  store %union.StackValue* %20, %union.StackValue** %18, align 8, !tbaa !28
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
  %29 = load %union.StackValue*, %union.StackValue** %28, align 8, !tbaa !28
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
  store %union.StackValue* %44, %union.StackValue** %28, align 8, !tbaa !28
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
  %53 = load %union.StackValue*, %union.StackValue** %52, align 8, !tbaa !28
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
  store %union.StackValue* %56, %union.StackValue** %52, align 8, !tbaa !28
  tail call void @luaV_concat(%struct.lua_State* nonnull %0, i32 %63)
  br label %74

; <label>:74:                                     ; preds = %51, %73, %48, %42, %1, %13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_execute(%struct.lua_State*, %struct.CallInfo*) #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = alloca %struct.TValue, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 23
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 0
  %12 = bitcast %struct.CallInfo* %1 to %struct.LClosure***
  %13 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4
  %14 = bitcast %union.anon* %13 to %struct.anon*
  %15 = bitcast %union.anon* %13 to i32**
  %16 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 1
  %17 = bitcast %union.StackValue** %16 to i64*
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %19 = bitcast %union.StackValue** %18 to i64*
  %20 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 4, i32 0, i32 1
  %21 = bitcast i64* %20 to i32*
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %23 = bitcast %struct.TValue* %8 to i64*
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %8, i64 0, i32 1
  %25 = bitcast %struct.TValue* %9 to i64*
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %9, i64 0, i32 1
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %28 = bitcast %struct.TValue* %5 to i8*
  %29 = bitcast %struct.TValue* %4 to i8*
  %30 = bitcast %struct.TValue* %6 to i8*
  %31 = bitcast %struct.TValue* %7 to i8*
  %32 = bitcast %struct.TValue* %3 to i8*
  %33 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %34 = bitcast %struct.TValue* %5 to i64*
  %35 = getelementptr inbounds %struct.TValue, %struct.TValue* %6, i64 0, i32 1
  %36 = bitcast %struct.TValue* %6 to i64*
  %37 = getelementptr inbounds %struct.TValue, %struct.TValue* %7, i64 0, i32 1
  %38 = bitcast %struct.TValue* %7 to i64*
  %39 = getelementptr inbounds %struct.TValue, %struct.TValue* %3, i64 0, i32 1
  %40 = bitcast %struct.TValue* %3 to i64*
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %14, i64 0, i32 2
  br label %42

; <label>:42:                                     ; preds = %3753, %2
  %43 = load i32, i32* %10, align 8, !tbaa !33
  %44 = load %struct.LClosure**, %struct.LClosure*** %12, align 8, !tbaa !31
  %45 = load %struct.LClosure*, %struct.LClosure** %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 5
  %47 = load %struct.Proto*, %struct.Proto** %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 15
  %49 = load %struct.TValue*, %struct.TValue** %48, align 8, !tbaa !36
  %50 = load i32*, i32** %15, align 8, !tbaa !6
  %51 = icmp eq i32 %43, 0
  %52 = bitcast %struct.LClosure** %44 to %union.StackValue*
  br i1 %51, label %66, label %53

; <label>:53:                                     ; preds = %42
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 4
  %55 = load i8, i8* %54, align 1, !tbaa !38
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %47, i64 0, i32 16
  %59 = load i32*, i32** %58, align 8, !tbaa !39
  %60 = icmp eq i32* %50, %59
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %57
  call void @luaD_hookcall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1) #8
  br label %63

; <label>:62:                                     ; preds = %53
  store i32 1, i32* %21, align 8, !tbaa !6
  br label %66

; <label>:63:                                     ; preds = %61, %57
  store i32 1, i32* %21, align 8, !tbaa !6
  %64 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %50) #8
  %65 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  br label %66

; <label>:66:                                     ; preds = %42, %62, %63
  %67 = phi %union.StackValue* [ %65, %63 ], [ %52, %62 ], [ %52, %42 ]
  %68 = phi i32 [ %64, %63 ], [ 0, %62 ], [ 0, %42 ]
  %69 = getelementptr inbounds %union.StackValue, %union.StackValue* %67, i64 1
  %70 = getelementptr inbounds i32, i32* %50, i64 1
  %71 = load i32, i32* %50, align 4, !tbaa !32
  br label %4522

; <label>:72:                                     ; preds = %4522
  %73 = lshr i32 %4523, 16
  %74 = and i32 %73, 255
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %75, i32 0
  %77 = bitcast %struct.TValue* %76 to i64*
  %78 = bitcast %union.StackValue* %4530 to i64*
  %79 = load i64, i64* %77, align 8
  store i64 %79, i64* %78, align 8
  %80 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %75, i32 0, i32 1
  %81 = load i8, i8* %80, align 8, !tbaa !2
  %82 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %81, i8* %82, align 8, !tbaa !2
  %83 = icmp eq i32 %4525, 0
  br i1 %83, label %88, label %84

; <label>:84:                                     ; preds = %72
  %85 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %86 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %87 = getelementptr inbounds %union.StackValue, %union.StackValue* %86, i64 1
  br label %88

; <label>:88:                                     ; preds = %72, %84
  %89 = phi i32 [ %85, %84 ], [ 0, %72 ]
  %90 = phi %union.StackValue* [ %87, %84 ], [ %4524, %72 ]
  %91 = getelementptr inbounds i32, i32* %4526, i64 1
  %92 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:93:                                     ; preds = %88, %113, %129, %145, %167, %185, %231, %255, %297, %343, %416, %470, %513, %585, %681, %758, %824, %857, %910, %951, %990, %1031, %1095, %1133, %1171, %1228, %1289, %1348, %1409, %1493, %1541, %1589, %1666, %1725, %1784, %1843, %1927, %1975, %2023, %2100, %2147, %2194, %2241, %2303, %2365, %2427, %2491, %2547, %2620, %2693, %2727, %2768, %2798, %2815, %2837, %2851, %2862, %2878, %2908, %3096, %3288, %3320, %3366, %3418, %3470, %3522, %3574, %3616, %3667, %3688, %3907, %4247, %4315, %4398, %4473, %4488, %4504, %4516
  %94 = phi i32 [ %92, %88 ], [ %117, %113 ], [ %133, %129 ], [ %149, %145 ], [ %171, %167 ], [ %189, %185 ], [ %235, %231 ], [ %259, %255 ], [ %301, %297 ], [ %347, %343 ], [ %420, %416 ], [ %474, %470 ], [ %517, %513 ], [ %589, %585 ], [ %685, %681 ], [ %762, %758 ], [ %828, %824 ], [ %861, %857 ], [ %914, %910 ], [ %955, %951 ], [ %994, %990 ], [ %1035, %1031 ], [ %1099, %1095 ], [ %1137, %1133 ], [ %1175, %1171 ], [ %1232, %1228 ], [ %1293, %1289 ], [ %1352, %1348 ], [ %1413, %1409 ], [ %1497, %1493 ], [ %1545, %1541 ], [ %1593, %1589 ], [ %1670, %1666 ], [ %1729, %1725 ], [ %1788, %1784 ], [ %1847, %1843 ], [ %1931, %1927 ], [ %1979, %1975 ], [ %2027, %2023 ], [ %2104, %2100 ], [ %2151, %2147 ], [ %2198, %2194 ], [ %2245, %2241 ], [ %2307, %2303 ], [ %2369, %2365 ], [ %2431, %2427 ], [ %2495, %2491 ], [ %2551, %2547 ], [ %2624, %2620 ], [ %2697, %2693 ], [ %2731, %2727 ], [ %2772, %2768 ], [ %2802, %2798 ], [ %2819, %2815 ], [ %2841, %2837 ], [ %2855, %2851 ], [ %2866, %2862 ], [ %2882, %2878 ], [ %2912, %2908 ], [ %3100, %3096 ], [ %3292, %3288 ], [ %3324, %3320 ], [ %3370, %3366 ], [ %3422, %3418 ], [ %3474, %3470 ], [ %3526, %3522 ], [ %3578, %3574 ], [ %3620, %3616 ], [ %3671, %3667 ], [ %3692, %3688 ], [ %3911, %3907 ], [ %4251, %4247 ], [ %4319, %4315 ], [ %4402, %4398 ], [ %4477, %4473 ], [ %4492, %4488 ], [ %4509, %4504 ], [ %4520, %4516 ]
  %95 = phi %union.StackValue* [ %90, %88 ], [ %115, %113 ], [ %131, %129 ], [ %147, %145 ], [ %169, %167 ], [ %187, %185 ], [ %233, %231 ], [ %257, %255 ], [ %299, %297 ], [ %345, %343 ], [ %418, %416 ], [ %472, %470 ], [ %515, %513 ], [ %587, %585 ], [ %683, %681 ], [ %760, %758 ], [ %826, %824 ], [ %859, %857 ], [ %912, %910 ], [ %953, %951 ], [ %992, %990 ], [ %1033, %1031 ], [ %1097, %1095 ], [ %1135, %1133 ], [ %1173, %1171 ], [ %1230, %1228 ], [ %1291, %1289 ], [ %1350, %1348 ], [ %1411, %1409 ], [ %1495, %1493 ], [ %1543, %1541 ], [ %1591, %1589 ], [ %1668, %1666 ], [ %1727, %1725 ], [ %1786, %1784 ], [ %1845, %1843 ], [ %1929, %1927 ], [ %1977, %1975 ], [ %2025, %2023 ], [ %2102, %2100 ], [ %2149, %2147 ], [ %2196, %2194 ], [ %2243, %2241 ], [ %2305, %2303 ], [ %2367, %2365 ], [ %2429, %2427 ], [ %2493, %2491 ], [ %2549, %2547 ], [ %2622, %2620 ], [ %2695, %2693 ], [ %2729, %2727 ], [ %2770, %2768 ], [ %2800, %2798 ], [ %2817, %2815 ], [ %2839, %2837 ], [ %2853, %2851 ], [ %2864, %2862 ], [ %2880, %2878 ], [ %2910, %2908 ], [ %3098, %3096 ], [ %3290, %3288 ], [ %3322, %3320 ], [ %3368, %3366 ], [ %3420, %3418 ], [ %3472, %3470 ], [ %3524, %3522 ], [ %3576, %3574 ], [ %3618, %3616 ], [ %3669, %3667 ], [ %3690, %3688 ], [ %3909, %3907 ], [ %4249, %4247 ], [ %4317, %4315 ], [ %4400, %4398 ], [ %4475, %4473 ], [ %4490, %4488 ], [ %4508, %4504 ], [ %4518, %4516 ]
  %96 = phi i32 [ %89, %88 ], [ %114, %113 ], [ %130, %129 ], [ %146, %145 ], [ %168, %167 ], [ %186, %185 ], [ %232, %231 ], [ %256, %255 ], [ %298, %297 ], [ %344, %343 ], [ %417, %416 ], [ %471, %470 ], [ %514, %513 ], [ %586, %585 ], [ %682, %681 ], [ %759, %758 ], [ %825, %824 ], [ %858, %857 ], [ %911, %910 ], [ %952, %951 ], [ %991, %990 ], [ %1032, %1031 ], [ %1096, %1095 ], [ %1134, %1133 ], [ %1172, %1171 ], [ %1229, %1228 ], [ %1290, %1289 ], [ %1349, %1348 ], [ %1410, %1409 ], [ %1494, %1493 ], [ %1542, %1541 ], [ %1590, %1589 ], [ %1667, %1666 ], [ %1726, %1725 ], [ %1785, %1784 ], [ %1844, %1843 ], [ %1928, %1927 ], [ %1976, %1975 ], [ %2024, %2023 ], [ %2101, %2100 ], [ %2148, %2147 ], [ %2195, %2194 ], [ %2242, %2241 ], [ %2304, %2303 ], [ %2366, %2365 ], [ %2428, %2427 ], [ %2492, %2491 ], [ %2548, %2547 ], [ %2621, %2620 ], [ %2694, %2693 ], [ %2728, %2727 ], [ %2769, %2768 ], [ %2799, %2798 ], [ %2816, %2815 ], [ %2838, %2837 ], [ %2852, %2851 ], [ %2863, %2862 ], [ %2879, %2878 ], [ %2909, %2908 ], [ %3097, %3096 ], [ %3289, %3288 ], [ %3321, %3320 ], [ %3367, %3366 ], [ %3419, %3418 ], [ %3471, %3470 ], [ %3523, %3522 ], [ %3575, %3574 ], [ %3617, %3616 ], [ %3668, %3667 ], [ %3689, %3688 ], [ %3908, %3907 ], [ %4248, %4247 ], [ %4316, %4315 ], [ %4399, %4398 ], [ %4474, %4473 ], [ %4489, %4488 ], [ %4506, %4504 ], [ %4517, %4516 ]
  %97 = phi i32* [ %91, %88 ], [ %116, %113 ], [ %132, %129 ], [ %148, %145 ], [ %170, %167 ], [ %188, %185 ], [ %234, %231 ], [ %258, %255 ], [ %300, %297 ], [ %346, %343 ], [ %419, %416 ], [ %473, %470 ], [ %516, %513 ], [ %588, %585 ], [ %684, %681 ], [ %761, %758 ], [ %827, %824 ], [ %860, %857 ], [ %913, %910 ], [ %954, %951 ], [ %993, %990 ], [ %1034, %1031 ], [ %1098, %1095 ], [ %1136, %1133 ], [ %1174, %1171 ], [ %1231, %1228 ], [ %1292, %1289 ], [ %1351, %1348 ], [ %1412, %1409 ], [ %1496, %1493 ], [ %1544, %1541 ], [ %1592, %1589 ], [ %1669, %1666 ], [ %1728, %1725 ], [ %1787, %1784 ], [ %1846, %1843 ], [ %1930, %1927 ], [ %1978, %1975 ], [ %2026, %2023 ], [ %2103, %2100 ], [ %2150, %2147 ], [ %2197, %2194 ], [ %2244, %2241 ], [ %2306, %2303 ], [ %2368, %2365 ], [ %2430, %2427 ], [ %2494, %2491 ], [ %2550, %2547 ], [ %2623, %2620 ], [ %2696, %2693 ], [ %2730, %2727 ], [ %2771, %2768 ], [ %2801, %2798 ], [ %2818, %2815 ], [ %2840, %2837 ], [ %2854, %2851 ], [ %2865, %2862 ], [ %2881, %2878 ], [ %2911, %2908 ], [ %3099, %3096 ], [ %3291, %3288 ], [ %3323, %3320 ], [ %3369, %3366 ], [ %3421, %3418 ], [ %3473, %3470 ], [ %3525, %3522 ], [ %3577, %3574 ], [ %3619, %3616 ], [ %3670, %3667 ], [ %3691, %3688 ], [ %3910, %3907 ], [ %4250, %4247 ], [ %4318, %4315 ], [ %4401, %4398 ], [ %4476, %4473 ], [ %4491, %4488 ], [ %4505, %4504 ], [ %4519, %4516 ]
  br label %4522

; <label>:98:                                     ; preds = %4522
  %99 = lshr i32 %4523, 15
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %100
  %102 = bitcast %struct.TValue* %101 to i64*
  %103 = bitcast %union.StackValue* %4530 to i64*
  %104 = load i64, i64* %102, align 8
  store i64 %104, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %100, i32 1
  %106 = load i8, i8* %105, align 8, !tbaa !2
  %107 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %106, i8* %107, align 8, !tbaa !2
  %108 = icmp eq i32 %4525, 0
  br i1 %108, label %113, label %109

; <label>:109:                                    ; preds = %98
  %110 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %111 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %112 = getelementptr inbounds %union.StackValue, %union.StackValue* %111, i64 1
  br label %113

; <label>:113:                                    ; preds = %98, %109
  %114 = phi i32 [ %110, %109 ], [ 0, %98 ]
  %115 = phi %union.StackValue* [ %112, %109 ], [ %4524, %98 ]
  %116 = getelementptr inbounds i32, i32* %4526, i64 1
  %117 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:118:                                    ; preds = %4522
  %119 = lshr i32 %4523, 15
  %120 = add nsw i32 %119, -65535
  %121 = sext i32 %120 to i64
  %122 = bitcast %union.StackValue* %4530 to i64*
  store i64 %121, i64* %122, align 8, !tbaa !6
  %123 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %123, align 8, !tbaa !2
  %124 = icmp eq i32 %4525, 0
  br i1 %124, label %129, label %125

; <label>:125:                                    ; preds = %118
  %126 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %127 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %128 = getelementptr inbounds %union.StackValue, %union.StackValue* %127, i64 1
  br label %129

; <label>:129:                                    ; preds = %118, %125
  %130 = phi i32 [ %126, %125 ], [ 0, %118 ]
  %131 = phi %union.StackValue* [ %128, %125 ], [ %4524, %118 ]
  %132 = getelementptr inbounds i32, i32* %4526, i64 1
  %133 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:134:                                    ; preds = %4522
  %135 = lshr i32 %4523, 15
  %136 = add nsw i32 %135, -65535
  %137 = sitofp i32 %136 to double
  %138 = bitcast %union.StackValue* %4530 to double*
  store double %137, double* %138, align 8, !tbaa !6
  %139 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %139, align 8, !tbaa !2
  %140 = icmp eq i32 %4525, 0
  br i1 %140, label %145, label %141

; <label>:141:                                    ; preds = %134
  %142 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %143 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %144 = getelementptr inbounds %union.StackValue, %union.StackValue* %143, i64 1
  br label %145

; <label>:145:                                    ; preds = %134, %141
  %146 = phi i32 [ %142, %141 ], [ 0, %134 ]
  %147 = phi %union.StackValue* [ %144, %141 ], [ %4524, %134 ]
  %148 = getelementptr inbounds i32, i32* %4526, i64 1
  %149 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:150:                                    ; preds = %4522
  %151 = load i32, i32* %4526, align 4, !tbaa !32
  %152 = lshr i32 %151, 7
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %153
  %155 = getelementptr inbounds i32, i32* %4526, i64 1
  %156 = bitcast %struct.TValue* %154 to i64*
  %157 = bitcast %union.StackValue* %4530 to i64*
  %158 = load i64, i64* %156, align 8
  store i64 %158, i64* %157, align 8
  %159 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %153, i32 1
  %160 = load i8, i8* %159, align 8, !tbaa !2
  %161 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %160, i8* %161, align 8, !tbaa !2
  %162 = icmp eq i32 %4525, 0
  br i1 %162, label %167, label %163

; <label>:163:                                    ; preds = %150
  %164 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %155) #8
  %165 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %166 = getelementptr inbounds %union.StackValue, %union.StackValue* %165, i64 1
  br label %167

; <label>:167:                                    ; preds = %150, %163
  %168 = phi i32 [ %164, %163 ], [ 0, %150 ]
  %169 = phi %union.StackValue* [ %166, %163 ], [ %4524, %150 ]
  %170 = getelementptr inbounds i32, i32* %4526, i64 2
  %171 = load i32, i32* %155, align 4, !tbaa !32
  br label %93

; <label>:172:                                    ; preds = %4522
  %173 = lshr i32 %4523, 16
  %174 = and i32 %173, 255
  %175 = bitcast %union.StackValue* %4530 to i32*
  store i32 %174, i32* %175, align 8, !tbaa !6
  %176 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 1, i8* %176, align 8, !tbaa !2
  %177 = icmp ugt i32 %4523, 16777215
  %178 = getelementptr inbounds i32, i32* %4526, i64 1
  %179 = select i1 %177, i32* %178, i32* %4526
  %180 = icmp eq i32 %4525, 0
  br i1 %180, label %185, label %181

; <label>:181:                                    ; preds = %172
  %182 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %179) #8
  %183 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %184 = getelementptr inbounds %union.StackValue, %union.StackValue* %183, i64 1
  br label %185

; <label>:185:                                    ; preds = %172, %181
  %186 = phi i32 [ %182, %181 ], [ 0, %172 ]
  %187 = phi %union.StackValue* [ %184, %181 ], [ %4524, %172 ]
  %188 = getelementptr inbounds i32, i32* %179, i64 1
  %189 = load i32, i32* %179, align 4, !tbaa !32
  br label %93

; <label>:190:                                    ; preds = %4522
  %191 = lshr i32 %4523, 16
  %192 = and i32 %191, 255
  %193 = add nuw nsw i32 %191, 1
  %194 = and i32 %193, 7
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %206, label %196

; <label>:196:                                    ; preds = %190
  br label %197

; <label>:197:                                    ; preds = %197, %196
  %198 = phi i32 [ %192, %196 ], [ %203, %197 ]
  %199 = phi %union.StackValue* [ %4530, %196 ], [ %201, %197 ]
  %200 = phi i32 [ %194, %196 ], [ %204, %197 ]
  %201 = getelementptr inbounds %union.StackValue, %union.StackValue* %199, i64 1
  %202 = getelementptr inbounds %union.StackValue, %union.StackValue* %199, i64 0, i32 0, i32 1
  store i8 0, i8* %202, align 8, !tbaa !6
  %203 = add nsw i32 %198, -1
  %204 = add i32 %200, -1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %197, !llvm.loop !40

; <label>:206:                                    ; preds = %197, %190
  %207 = phi i32 [ %192, %190 ], [ %203, %197 ]
  %208 = phi %union.StackValue* [ %4530, %190 ], [ %201, %197 ]
  %209 = icmp ult i32 %192, 7
  br i1 %209, label %225, label %210

; <label>:210:                                    ; preds = %206
  br label %211

; <label>:211:                                    ; preds = %211, %210
  %212 = phi i32 [ %207, %210 ], [ %223, %211 ]
  %213 = phi %union.StackValue* [ %208, %210 ], [ %221, %211 ]
  %214 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 0, i32 0, i32 1
  store i8 0, i8* %214, align 8, !tbaa !6
  %215 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 1, i32 0, i32 1
  store i8 0, i8* %215, align 8, !tbaa !6
  %216 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 2, i32 0, i32 1
  store i8 0, i8* %216, align 8, !tbaa !6
  %217 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 3, i32 0, i32 1
  store i8 0, i8* %217, align 8, !tbaa !6
  %218 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 4, i32 0, i32 1
  store i8 0, i8* %218, align 8, !tbaa !6
  %219 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 5, i32 0, i32 1
  store i8 0, i8* %219, align 8, !tbaa !6
  %220 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 6, i32 0, i32 1
  store i8 0, i8* %220, align 8, !tbaa !6
  %221 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 8
  %222 = getelementptr inbounds %union.StackValue, %union.StackValue* %213, i64 7, i32 0, i32 1
  store i8 0, i8* %222, align 8, !tbaa !6
  %223 = add nsw i32 %212, -8
  %224 = icmp eq i32 %212, 7
  br i1 %224, label %225, label %211

; <label>:225:                                    ; preds = %211, %206
  %226 = icmp eq i32 %4525, 0
  br i1 %226, label %231, label %227

; <label>:227:                                    ; preds = %225
  %228 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %4526) #8
  %229 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %230 = getelementptr inbounds %union.StackValue, %union.StackValue* %229, i64 1
  br label %231

; <label>:231:                                    ; preds = %225, %227
  %232 = phi i32 [ %228, %227 ], [ 0, %225 ]
  %233 = phi %union.StackValue* [ %230, %227 ], [ %4524, %225 ]
  %234 = getelementptr inbounds i32, i32* %4526, i64 1
  %235 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:236:                                    ; preds = %4522
  %237 = lshr i32 %4523, 16
  %238 = and i32 %237, 255
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 6, i64 %239
  %241 = load %struct.UpVal*, %struct.UpVal** %240, align 8, !tbaa !21
  %242 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %241, i64 0, i32 3
  %243 = load %struct.TValue*, %struct.TValue** %242, align 8, !tbaa !42
  %244 = bitcast %struct.TValue* %243 to i64*
  %245 = bitcast %union.StackValue* %4530 to i64*
  %246 = load i64, i64* %244, align 8
  store i64 %246, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TValue, %struct.TValue* %243, i64 0, i32 1
  %248 = load i8, i8* %247, align 8, !tbaa !2
  %249 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %248, i8* %249, align 8, !tbaa !2
  %250 = icmp eq i32 %4525, 0
  br i1 %250, label %255, label %251

; <label>:251:                                    ; preds = %236
  %252 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %253 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %254 = getelementptr inbounds %union.StackValue, %union.StackValue* %253, i64 1
  br label %255

; <label>:255:                                    ; preds = %236, %251
  %256 = phi i32 [ %252, %251 ], [ 0, %236 ]
  %257 = phi %union.StackValue* [ %254, %251 ], [ %4524, %236 ]
  %258 = getelementptr inbounds i32, i32* %4526, i64 1
  %259 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:260:                                    ; preds = %4522
  %261 = lshr i32 %4523, 16
  %262 = and i32 %261, 255
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 6, i64 %263
  %265 = load %struct.UpVal*, %struct.UpVal** %264, align 8, !tbaa !21
  %266 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %265, i64 0, i32 3
  %267 = load %struct.TValue*, %struct.TValue** %266, align 8, !tbaa !42
  %268 = bitcast %union.StackValue* %4530 to i64*
  %269 = bitcast %struct.TValue* %267 to i64*
  %270 = load i64, i64* %268, align 8
  store i64 %270, i64* %269, align 8
  %271 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %272 = load i8, i8* %271, align 8, !tbaa !2
  %273 = getelementptr inbounds %struct.TValue, %struct.TValue* %267, i64 0, i32 1
  store i8 %272, i8* %273, align 8, !tbaa !2
  %274 = load i8, i8* %271, align 8, !tbaa !6
  %275 = and i8 %274, 64
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %291, label %277

; <label>:277:                                    ; preds = %260
  %278 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %265, i64 0, i32 2
  %279 = load i8, i8* %278, align 1, !tbaa !44
  %280 = and i8 %279, 32
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %291, label %282

; <label>:282:                                    ; preds = %277
  %283 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0, i32 0, i32 0
  %284 = load %struct.GCObject*, %struct.GCObject** %283, align 8, !tbaa !6
  %285 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %284, i64 0, i32 2
  %286 = load i8, i8* %285, align 1, !tbaa !23
  %287 = and i8 %286, 24
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %291, label %289

; <label>:289:                                    ; preds = %282
  %290 = bitcast %struct.UpVal* %265 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* %290, %struct.GCObject* %284) #8
  br label %291

; <label>:291:                                    ; preds = %282, %277, %260, %289
  %292 = icmp eq i32 %4525, 0
  br i1 %292, label %297, label %293

; <label>:293:                                    ; preds = %291
  %294 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %295 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %296 = getelementptr inbounds %union.StackValue, %union.StackValue* %295, i64 1
  br label %297

; <label>:297:                                    ; preds = %291, %293
  %298 = phi i32 [ %294, %293 ], [ 0, %291 ]
  %299 = phi %union.StackValue* [ %296, %293 ], [ %4524, %291 ]
  %300 = getelementptr inbounds i32, i32* %4526, i64 1
  %301 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:302:                                    ; preds = %4522
  %303 = lshr i32 %4523, 16
  %304 = and i32 %303, 255
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 6, i64 %305
  %307 = load %struct.UpVal*, %struct.UpVal** %306, align 8, !tbaa !21
  %308 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %307, i64 0, i32 3
  %309 = load %struct.TValue*, %struct.TValue** %308, align 8, !tbaa !42
  %310 = lshr i32 %4523, 24
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %311
  %313 = getelementptr inbounds %struct.TValue, %struct.TValue* %309, i64 0, i32 1
  %314 = load i8, i8* %313, align 8, !tbaa !2
  %315 = icmp eq i8 %314, 69
  br i1 %315, label %316, label %332

; <label>:316:                                    ; preds = %302
  %317 = bitcast %struct.TValue* %312 to %struct.TString**
  %318 = load %struct.TString*, %struct.TString** %317, align 8, !tbaa !6
  %319 = bitcast %struct.TValue* %309 to %struct.Table**
  %320 = load %struct.Table*, %struct.Table** %319, align 8, !tbaa !6
  %321 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %320, %struct.TString* %318) #8
  %322 = getelementptr inbounds %struct.TValue, %struct.TValue* %321, i64 0, i32 1
  %323 = load i8, i8* %322, align 8, !tbaa !2
  %324 = and i8 %323, 15
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %332, label %326

; <label>:326:                                    ; preds = %316
  %327 = bitcast %struct.TValue* %321 to i64*
  %328 = bitcast %union.StackValue* %4530 to i64*
  %329 = load i64, i64* %327, align 8
  store i64 %329, i64* %328, align 8
  %330 = load i8, i8* %322, align 8, !tbaa !2
  %331 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %330, i8* %331, align 8, !tbaa !2
  br label %336

; <label>:332:                                    ; preds = %302, %316
  %333 = phi %struct.TValue* [ %321, %316 ], [ null, %302 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %334 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %334, i64* %19, align 8, !tbaa !28
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %309, %struct.TValue* %312, %union.StackValue* %4530, %struct.TValue* %333)
  %335 = load i32, i32* %21, align 8, !tbaa !6
  br label %336

; <label>:336:                                    ; preds = %332, %326
  %337 = phi i32 [ %4525, %326 ], [ %335, %332 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %343, label %339

; <label>:339:                                    ; preds = %336
  %340 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %341 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %342 = getelementptr inbounds %union.StackValue, %union.StackValue* %341, i64 1
  br label %343

; <label>:343:                                    ; preds = %336, %339
  %344 = phi i32 [ %340, %339 ], [ 0, %336 ]
  %345 = phi %union.StackValue* [ %342, %339 ], [ %4524, %336 ]
  %346 = getelementptr inbounds i32, i32* %4526, i64 1
  %347 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:348:                                    ; preds = %4522
  %349 = lshr i32 %4523, 16
  %350 = and i32 %349, 255
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %351, i32 0
  %353 = lshr i32 %4523, 24
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %354, i32 0
  %356 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %354, i32 0, i32 1
  %357 = load i8, i8* %356, align 8, !tbaa !2
  %358 = icmp eq i8 %357, 35
  br i1 %358, label %359, label %385

; <label>:359:                                    ; preds = %348
  %360 = bitcast %struct.TValue* %355 to i64*
  %361 = load i64, i64* %360, align 8, !tbaa !6
  %362 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %351, i32 0, i32 1
  %363 = load i8, i8* %362, align 8, !tbaa !2
  %364 = icmp eq i8 %363, 69
  br i1 %364, label %365, label %405

; <label>:365:                                    ; preds = %359
  %366 = add i64 %361, -1
  %367 = bitcast %struct.TValue* %352 to %struct.Table**
  %368 = load %struct.Table*, %struct.Table** %367, align 8, !tbaa !6
  %369 = getelementptr inbounds %struct.Table, %struct.Table* %368, i64 0, i32 5
  %370 = load i32, i32* %369, align 4, !tbaa !6
  %371 = zext i32 %370 to i64
  %372 = icmp ult i64 %366, %371
  br i1 %372, label %373, label %377

; <label>:373:                                    ; preds = %365
  %374 = getelementptr inbounds %struct.Table, %struct.Table* %368, i64 0, i32 6
  %375 = load %struct.TValue*, %struct.TValue** %374, align 8, !tbaa !6
  %376 = getelementptr inbounds %struct.TValue, %struct.TValue* %375, i64 %366
  br label %379

; <label>:377:                                    ; preds = %365
  %378 = call %struct.TValue* @luaH_getint(%struct.Table* %368, i64 %361) #8
  br label %379

; <label>:379:                                    ; preds = %373, %377
  %380 = phi %struct.TValue* [ %376, %373 ], [ %378, %377 ]
  %381 = getelementptr inbounds %struct.TValue, %struct.TValue* %380, i64 0, i32 1
  %382 = load i8, i8* %381, align 8, !tbaa !2
  %383 = and i8 %382, 15
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %405, label %397

; <label>:385:                                    ; preds = %348
  %386 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %351, i32 0, i32 1
  %387 = load i8, i8* %386, align 8, !tbaa !2
  %388 = icmp eq i8 %387, 69
  br i1 %388, label %389, label %405

; <label>:389:                                    ; preds = %385
  %390 = bitcast %struct.TValue* %352 to %struct.Table**
  %391 = load %struct.Table*, %struct.Table** %390, align 8, !tbaa !6
  %392 = call %struct.TValue* @luaH_get(%struct.Table* %391, %struct.TValue* nonnull %355) #8
  %393 = getelementptr inbounds %struct.TValue, %struct.TValue* %392, i64 0, i32 1
  %394 = load i8, i8* %393, align 8, !tbaa !2
  %395 = and i8 %394, 15
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %405, label %397

; <label>:397:                                    ; preds = %379, %389
  %398 = phi i8* [ %381, %379 ], [ %393, %389 ]
  %399 = phi %struct.TValue* [ %380, %379 ], [ %392, %389 ]
  %400 = bitcast %struct.TValue* %399 to i64*
  %401 = bitcast %union.StackValue* %4530 to i64*
  %402 = load i64, i64* %400, align 8
  store i64 %402, i64* %401, align 8
  %403 = load i8, i8* %398, align 8, !tbaa !2
  %404 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %403, i8* %404, align 8, !tbaa !2
  br label %409

; <label>:405:                                    ; preds = %359, %385, %379, %389
  %406 = phi %struct.TValue* [ %380, %379 ], [ %392, %389 ], [ null, %385 ], [ null, %359 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %407 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %407, i64* %19, align 8, !tbaa !28
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* nonnull %352, %struct.TValue* nonnull %355, %union.StackValue* %4530, %struct.TValue* %406)
  %408 = load i32, i32* %21, align 8, !tbaa !6
  br label %409

; <label>:409:                                    ; preds = %405, %397
  %410 = phi i32 [ %4525, %397 ], [ %408, %405 ]
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %416, label %412

; <label>:412:                                    ; preds = %409
  %413 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %414 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %415 = getelementptr inbounds %union.StackValue, %union.StackValue* %414, i64 1
  br label %416

; <label>:416:                                    ; preds = %409, %412
  %417 = phi i32 [ %413, %412 ], [ 0, %409 ]
  %418 = phi %union.StackValue* [ %415, %412 ], [ %4524, %409 ]
  %419 = getelementptr inbounds i32, i32* %4526, i64 1
  %420 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:421:                                    ; preds = %4522
  %422 = lshr i32 %4523, 16
  %423 = and i32 %422, 255
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %424, i32 0
  %426 = lshr i32 %4523, 24
  %427 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %424, i32 0, i32 1
  %428 = load i8, i8* %427, align 8, !tbaa !2
  %429 = icmp eq i8 %428, 69
  %430 = zext i32 %426 to i64
  br i1 %429, label %431, label %459

; <label>:431:                                    ; preds = %421
  %432 = add nsw i64 %430, -1
  %433 = bitcast %struct.TValue* %425 to %struct.Table**
  %434 = load %struct.Table*, %struct.Table** %433, align 8, !tbaa !6
  %435 = getelementptr inbounds %struct.Table, %struct.Table* %434, i64 0, i32 5
  %436 = load i32, i32* %435, align 4, !tbaa !6
  %437 = zext i32 %436 to i64
  %438 = icmp ult i64 %432, %437
  br i1 %438, label %439, label %445

; <label>:439:                                    ; preds = %431
  %440 = getelementptr inbounds %struct.Table, %struct.Table* %434, i64 0, i32 6
  %441 = load %struct.TValue*, %struct.TValue** %440, align 8, !tbaa !6
  %442 = add nsw i32 %426, -1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TValue, %struct.TValue* %441, i64 %443
  br label %447

; <label>:445:                                    ; preds = %431
  %446 = call %struct.TValue* @luaH_getint(%struct.Table* %434, i64 %430) #8
  br label %447

; <label>:447:                                    ; preds = %445, %439
  %448 = phi %struct.TValue* [ %444, %439 ], [ %446, %445 ]
  %449 = getelementptr inbounds %struct.TValue, %struct.TValue* %448, i64 0, i32 1
  %450 = load i8, i8* %449, align 8, !tbaa !2
  %451 = and i8 %450, 15
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %459, label %453

; <label>:453:                                    ; preds = %447
  %454 = bitcast %struct.TValue* %448 to i64*
  %455 = bitcast %union.StackValue* %4530 to i64*
  %456 = load i64, i64* %454, align 8
  store i64 %456, i64* %455, align 8
  %457 = load i8, i8* %449, align 8, !tbaa !2
  %458 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %457, i8* %458, align 8, !tbaa !2
  br label %463

; <label>:459:                                    ; preds = %421, %447
  %460 = phi %struct.TValue* [ %448, %447 ], [ null, %421 ]
  store i64 %430, i64* %23, align 8, !tbaa !6
  store i8 35, i8* %24, align 8, !tbaa !2
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %461 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %461, i64* %19, align 8, !tbaa !28
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %425, %struct.TValue* nonnull %8, %union.StackValue* %4530, %struct.TValue* %460)
  %462 = load i32, i32* %21, align 8, !tbaa !6
  br label %463

; <label>:463:                                    ; preds = %459, %453
  %464 = phi i32 [ %4525, %453 ], [ %462, %459 ]
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %470, label %466

; <label>:466:                                    ; preds = %463
  %467 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %468 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %469 = getelementptr inbounds %union.StackValue, %union.StackValue* %468, i64 1
  br label %470

; <label>:470:                                    ; preds = %463, %466
  %471 = phi i32 [ %467, %466 ], [ 0, %463 ]
  %472 = phi %union.StackValue* [ %469, %466 ], [ %4524, %463 ]
  %473 = getelementptr inbounds i32, i32* %4526, i64 1
  %474 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:475:                                    ; preds = %4522
  %476 = lshr i32 %4523, 16
  %477 = and i32 %476, 255
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %478, i32 0
  %480 = lshr i32 %4523, 24
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %481
  %483 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %478, i32 0, i32 1
  %484 = load i8, i8* %483, align 8, !tbaa !2
  %485 = icmp eq i8 %484, 69
  br i1 %485, label %486, label %502

; <label>:486:                                    ; preds = %475
  %487 = bitcast %struct.TValue* %482 to %struct.TString**
  %488 = load %struct.TString*, %struct.TString** %487, align 8, !tbaa !6
  %489 = bitcast %struct.TValue* %479 to %struct.Table**
  %490 = load %struct.Table*, %struct.Table** %489, align 8, !tbaa !6
  %491 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %490, %struct.TString* %488) #8
  %492 = getelementptr inbounds %struct.TValue, %struct.TValue* %491, i64 0, i32 1
  %493 = load i8, i8* %492, align 8, !tbaa !2
  %494 = and i8 %493, 15
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %502, label %496

; <label>:496:                                    ; preds = %486
  %497 = bitcast %struct.TValue* %491 to i64*
  %498 = bitcast %union.StackValue* %4530 to i64*
  %499 = load i64, i64* %497, align 8
  store i64 %499, i64* %498, align 8
  %500 = load i8, i8* %492, align 8, !tbaa !2
  %501 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %500, i8* %501, align 8, !tbaa !2
  br label %506

; <label>:502:                                    ; preds = %475, %486
  %503 = phi %struct.TValue* [ %491, %486 ], [ null, %475 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %504 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %504, i64* %19, align 8, !tbaa !28
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %479, %struct.TValue* %482, %union.StackValue* %4530, %struct.TValue* %503)
  %505 = load i32, i32* %21, align 8, !tbaa !6
  br label %506

; <label>:506:                                    ; preds = %502, %496
  %507 = phi i32 [ %4525, %496 ], [ %505, %502 ]
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %513, label %509

; <label>:509:                                    ; preds = %506
  %510 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %511 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %512 = getelementptr inbounds %union.StackValue, %union.StackValue* %511, i64 1
  br label %513

; <label>:513:                                    ; preds = %506, %509
  %514 = phi i32 [ %510, %509 ], [ 0, %506 ]
  %515 = phi %union.StackValue* [ %512, %509 ], [ %4524, %506 ]
  %516 = getelementptr inbounds i32, i32* %4526, i64 1
  %517 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:518:                                    ; preds = %4522
  %519 = lshr i32 %4523, 7
  %520 = and i32 %519, 255
  %521 = zext i32 %520 to i64
  %522 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 6, i64 %521
  %523 = load %struct.UpVal*, %struct.UpVal** %522, align 8, !tbaa !21
  %524 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %523, i64 0, i32 3
  %525 = load %struct.TValue*, %struct.TValue** %524, align 8, !tbaa !42
  %526 = lshr i32 %4523, 16
  %527 = and i32 %526, 255
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %528
  %530 = trunc i32 %4523 to i16
  %531 = icmp slt i16 %530, 0
  %532 = lshr i32 %4523, 24
  %533 = zext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %533
  %535 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %533, i32 0
  %536 = select i1 %531, %struct.TValue* %534, %struct.TValue* %535
  %537 = getelementptr inbounds %struct.TValue, %struct.TValue* %525, i64 0, i32 1
  %538 = load i8, i8* %537, align 8, !tbaa !2
  %539 = icmp eq i8 %538, 69
  br i1 %539, label %540, label %574

; <label>:540:                                    ; preds = %518
  %541 = bitcast %struct.TValue* %529 to %struct.TString**
  %542 = load %struct.TString*, %struct.TString** %541, align 8, !tbaa !6
  %543 = getelementptr inbounds %struct.TValue, %struct.TValue* %525, i64 0, i32 0, i32 0
  %544 = bitcast %struct.TValue* %525 to %struct.Table**
  %545 = load %struct.Table*, %struct.Table** %544, align 8, !tbaa !6
  %546 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %545, %struct.TString* %542) #8
  %547 = getelementptr inbounds %struct.TValue, %struct.TValue* %546, i64 0, i32 1
  %548 = load i8, i8* %547, align 8, !tbaa !2
  %549 = and i8 %548, 15
  %550 = icmp eq i8 %549, 0
  br i1 %550, label %574, label %551

; <label>:551:                                    ; preds = %540
  %552 = bitcast %struct.TValue* %536 to i64*
  %553 = bitcast %struct.TValue* %546 to i64*
  %554 = load i64, i64* %552, align 8
  store i64 %554, i64* %553, align 8
  %555 = getelementptr inbounds %struct.TValue, %struct.TValue* %536, i64 0, i32 1
  %556 = load i8, i8* %555, align 8, !tbaa !2
  store i8 %556, i8* %547, align 8, !tbaa !2
  %557 = load i8, i8* %555, align 8, !tbaa !2
  %558 = and i8 %557, 64
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %578, label %560

; <label>:560:                                    ; preds = %551
  %561 = load %struct.GCObject*, %struct.GCObject** %543, align 8, !tbaa !6
  %562 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %561, i64 0, i32 2
  %563 = load i8, i8* %562, align 1, !tbaa !23
  %564 = and i8 %563, 32
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %578, label %566

; <label>:566:                                    ; preds = %560
  %567 = getelementptr inbounds %struct.TValue, %struct.TValue* %536, i64 0, i32 0, i32 0
  %568 = load %struct.GCObject*, %struct.GCObject** %567, align 8, !tbaa !6
  %569 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %568, i64 0, i32 2
  %570 = load i8, i8* %569, align 1, !tbaa !23
  %571 = and i8 %570, 24
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %578, label %573

; <label>:573:                                    ; preds = %566
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %561) #8
  br label %578

; <label>:574:                                    ; preds = %518, %540
  %575 = phi %struct.TValue* [ %546, %540 ], [ null, %518 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %576 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %576, i64* %19, align 8, !tbaa !28
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %525, %struct.TValue* %529, %struct.TValue* %536, %struct.TValue* %575)
  %577 = load i32, i32* %21, align 8, !tbaa !6
  br label %578

; <label>:578:                                    ; preds = %566, %560, %551, %573, %574
  %579 = phi i32 [ %4525, %573 ], [ %4525, %566 ], [ %4525, %560 ], [ %4525, %551 ], [ %577, %574 ]
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %585, label %581

; <label>:581:                                    ; preds = %578
  %582 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %583 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %584 = getelementptr inbounds %union.StackValue, %union.StackValue* %583, i64 1
  br label %585

; <label>:585:                                    ; preds = %578, %581
  %586 = phi i32 [ %582, %581 ], [ 0, %578 ]
  %587 = phi %union.StackValue* [ %584, %581 ], [ %4524, %578 ]
  %588 = getelementptr inbounds i32, i32* %4526, i64 1
  %589 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:590:                                    ; preds = %4522
  %591 = lshr i32 %4523, 16
  %592 = and i32 %591, 255
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %593, i32 0
  %595 = trunc i32 %4523 to i16
  %596 = icmp slt i16 %595, 0
  %597 = lshr i32 %4523, 24
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %598
  %600 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %598, i32 0
  %601 = select i1 %596, %struct.TValue* %599, %struct.TValue* %600
  %602 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %593, i32 0, i32 1
  %603 = load i8, i8* %602, align 8, !tbaa !2
  %604 = icmp eq i8 %603, 35
  br i1 %604, label %605, label %631

; <label>:605:                                    ; preds = %590
  %606 = bitcast %struct.TValue* %594 to i64*
  %607 = load i64, i64* %606, align 8, !tbaa !6
  %608 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %609 = load i8, i8* %608, align 8, !tbaa !6
  %610 = icmp eq i8 %609, 69
  br i1 %610, label %611, label %669

; <label>:611:                                    ; preds = %605
  %612 = add i64 %607, -1
  %613 = bitcast %union.StackValue* %4530 to %struct.Table**
  %614 = load %struct.Table*, %struct.Table** %613, align 8, !tbaa !6
  %615 = getelementptr inbounds %struct.Table, %struct.Table* %614, i64 0, i32 5
  %616 = load i32, i32* %615, align 4, !tbaa !6
  %617 = zext i32 %616 to i64
  %618 = icmp ult i64 %612, %617
  br i1 %618, label %619, label %623

; <label>:619:                                    ; preds = %611
  %620 = getelementptr inbounds %struct.Table, %struct.Table* %614, i64 0, i32 6
  %621 = load %struct.TValue*, %struct.TValue** %620, align 8, !tbaa !6
  %622 = getelementptr inbounds %struct.TValue, %struct.TValue* %621, i64 %612
  br label %625

; <label>:623:                                    ; preds = %611
  %624 = call %struct.TValue* @luaH_getint(%struct.Table* %614, i64 %607) #8
  br label %625

; <label>:625:                                    ; preds = %619, %623
  %626 = phi %struct.TValue* [ %622, %619 ], [ %624, %623 ]
  %627 = getelementptr inbounds %struct.TValue, %struct.TValue* %626, i64 0, i32 1
  %628 = load i8, i8* %627, align 8, !tbaa !2
  %629 = and i8 %628, 15
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %669, label %643

; <label>:631:                                    ; preds = %590
  %632 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %633 = load i8, i8* %632, align 8, !tbaa !6
  %634 = icmp eq i8 %633, 69
  br i1 %634, label %635, label %669

; <label>:635:                                    ; preds = %631
  %636 = bitcast %union.StackValue* %4530 to %struct.Table**
  %637 = load %struct.Table*, %struct.Table** %636, align 8, !tbaa !6
  %638 = call %struct.TValue* @luaH_get(%struct.Table* %637, %struct.TValue* %594) #8
  %639 = getelementptr inbounds %struct.TValue, %struct.TValue* %638, i64 0, i32 1
  %640 = load i8, i8* %639, align 8, !tbaa !2
  %641 = and i8 %640, 15
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %669, label %643

; <label>:643:                                    ; preds = %625, %635
  %644 = phi i8* [ %627, %625 ], [ %639, %635 ]
  %645 = phi %struct.TValue* [ %626, %625 ], [ %638, %635 ]
  %646 = bitcast %struct.TValue* %601 to i64*
  %647 = bitcast %struct.TValue* %645 to i64*
  %648 = load i64, i64* %646, align 8
  store i64 %648, i64* %647, align 8
  %649 = getelementptr inbounds %struct.TValue, %struct.TValue* %601, i64 0, i32 1
  %650 = load i8, i8* %649, align 8, !tbaa !2
  store i8 %650, i8* %644, align 8, !tbaa !2
  %651 = load i8, i8* %649, align 8, !tbaa !2
  %652 = and i8 %651, 64
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %674, label %654

; <label>:654:                                    ; preds = %643
  %655 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0, i32 0, i32 0
  %656 = load %struct.GCObject*, %struct.GCObject** %655, align 8, !tbaa !6
  %657 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %656, i64 0, i32 2
  %658 = load i8, i8* %657, align 1, !tbaa !23
  %659 = and i8 %658, 32
  %660 = icmp eq i8 %659, 0
  br i1 %660, label %674, label %661

; <label>:661:                                    ; preds = %654
  %662 = getelementptr inbounds %struct.TValue, %struct.TValue* %601, i64 0, i32 0, i32 0
  %663 = load %struct.GCObject*, %struct.GCObject** %662, align 8, !tbaa !6
  %664 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %663, i64 0, i32 2
  %665 = load i8, i8* %664, align 1, !tbaa !23
  %666 = and i8 %665, 24
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %674, label %668

; <label>:668:                                    ; preds = %661
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %656) #8
  br label %674

; <label>:669:                                    ; preds = %605, %631, %625, %635
  %670 = phi %struct.TValue* [ %626, %625 ], [ %638, %635 ], [ null, %631 ], [ null, %605 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %671 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %671, i64* %19, align 8, !tbaa !28
  %672 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %672, %struct.TValue* %594, %struct.TValue* %601, %struct.TValue* %670)
  %673 = load i32, i32* %21, align 8, !tbaa !6
  br label %674

; <label>:674:                                    ; preds = %661, %654, %643, %668, %669
  %675 = phi i32 [ %4525, %668 ], [ %4525, %661 ], [ %4525, %654 ], [ %4525, %643 ], [ %673, %669 ]
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %681, label %677

; <label>:677:                                    ; preds = %674
  %678 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %679 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %680 = getelementptr inbounds %union.StackValue, %union.StackValue* %679, i64 1
  br label %681

; <label>:681:                                    ; preds = %674, %677
  %682 = phi i32 [ %678, %677 ], [ 0, %674 ]
  %683 = phi %union.StackValue* [ %680, %677 ], [ %4524, %674 ]
  %684 = getelementptr inbounds i32, i32* %4526, i64 1
  %685 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:686:                                    ; preds = %4522
  %687 = lshr i32 %4523, 16
  %688 = and i32 %687, 255
  %689 = trunc i32 %4523 to i16
  %690 = icmp slt i16 %689, 0
  %691 = lshr i32 %4523, 24
  %692 = zext i32 %691 to i64
  %693 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %692
  %694 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %692, i32 0
  %695 = select i1 %690, %struct.TValue* %693, %struct.TValue* %694
  %696 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %697 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %698 = load i8, i8* %697, align 8, !tbaa !6
  %699 = icmp eq i8 %698, 69
  %700 = zext i32 %688 to i64
  br i1 %699, label %701, label %747

; <label>:701:                                    ; preds = %686
  %702 = add nsw i64 %700, -1
  %703 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0, i32 0, i32 0
  %704 = bitcast %union.StackValue* %4530 to %struct.Table**
  %705 = load %struct.Table*, %struct.Table** %704, align 8, !tbaa !6
  %706 = getelementptr inbounds %struct.Table, %struct.Table* %705, i64 0, i32 5
  %707 = load i32, i32* %706, align 4, !tbaa !6
  %708 = zext i32 %707 to i64
  %709 = icmp ult i64 %702, %708
  br i1 %709, label %710, label %716

; <label>:710:                                    ; preds = %701
  %711 = getelementptr inbounds %struct.Table, %struct.Table* %705, i64 0, i32 6
  %712 = load %struct.TValue*, %struct.TValue** %711, align 8, !tbaa !6
  %713 = add nsw i32 %688, -1
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds %struct.TValue, %struct.TValue* %712, i64 %714
  br label %718

; <label>:716:                                    ; preds = %701
  %717 = call %struct.TValue* @luaH_getint(%struct.Table* %705, i64 %700) #8
  br label %718

; <label>:718:                                    ; preds = %716, %710
  %719 = phi %struct.TValue* [ %715, %710 ], [ %717, %716 ]
  %720 = getelementptr inbounds %struct.TValue, %struct.TValue* %719, i64 0, i32 1
  %721 = load i8, i8* %720, align 8, !tbaa !2
  %722 = and i8 %721, 15
  %723 = icmp eq i8 %722, 0
  br i1 %723, label %747, label %724

; <label>:724:                                    ; preds = %718
  %725 = bitcast %struct.TValue* %695 to i64*
  %726 = bitcast %struct.TValue* %719 to i64*
  %727 = load i64, i64* %725, align 8
  store i64 %727, i64* %726, align 8
  %728 = getelementptr inbounds %struct.TValue, %struct.TValue* %695, i64 0, i32 1
  %729 = load i8, i8* %728, align 8, !tbaa !2
  store i8 %729, i8* %720, align 8, !tbaa !2
  %730 = load i8, i8* %728, align 8, !tbaa !2
  %731 = and i8 %730, 64
  %732 = icmp eq i8 %731, 0
  br i1 %732, label %751, label %733

; <label>:733:                                    ; preds = %724
  %734 = load %struct.GCObject*, %struct.GCObject** %703, align 8, !tbaa !6
  %735 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %734, i64 0, i32 2
  %736 = load i8, i8* %735, align 1, !tbaa !23
  %737 = and i8 %736, 32
  %738 = icmp eq i8 %737, 0
  br i1 %738, label %751, label %739

; <label>:739:                                    ; preds = %733
  %740 = getelementptr inbounds %struct.TValue, %struct.TValue* %695, i64 0, i32 0, i32 0
  %741 = load %struct.GCObject*, %struct.GCObject** %740, align 8, !tbaa !6
  %742 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %741, i64 0, i32 2
  %743 = load i8, i8* %742, align 1, !tbaa !23
  %744 = and i8 %743, 24
  %745 = icmp eq i8 %744, 0
  br i1 %745, label %751, label %746

; <label>:746:                                    ; preds = %739
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %734) #8
  br label %751

; <label>:747:                                    ; preds = %686, %718
  %748 = phi %struct.TValue* [ %719, %718 ], [ null, %686 ]
  store i64 %700, i64* %25, align 8, !tbaa !6
  store i8 35, i8* %26, align 8, !tbaa !2
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %749 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %749, i64* %19, align 8, !tbaa !28
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %696, %struct.TValue* nonnull %9, %struct.TValue* %695, %struct.TValue* %748)
  %750 = load i32, i32* %21, align 8, !tbaa !6
  br label %751

; <label>:751:                                    ; preds = %739, %733, %724, %746, %747
  %752 = phi i32 [ %4525, %746 ], [ %4525, %739 ], [ %4525, %733 ], [ %4525, %724 ], [ %750, %747 ]
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %758, label %754

; <label>:754:                                    ; preds = %751
  %755 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %756 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %757 = getelementptr inbounds %union.StackValue, %union.StackValue* %756, i64 1
  br label %758

; <label>:758:                                    ; preds = %751, %754
  %759 = phi i32 [ %755, %754 ], [ 0, %751 ]
  %760 = phi %union.StackValue* [ %757, %754 ], [ %4524, %751 ]
  %761 = getelementptr inbounds i32, i32* %4526, i64 1
  %762 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:763:                                    ; preds = %4522
  %764 = lshr i32 %4523, 16
  %765 = and i32 %764, 255
  %766 = zext i32 %765 to i64
  %767 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %766
  %768 = trunc i32 %4523 to i16
  %769 = icmp slt i16 %768, 0
  %770 = lshr i32 %4523, 24
  %771 = zext i32 %770 to i64
  %772 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %771
  %773 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %771, i32 0
  %774 = select i1 %769, %struct.TValue* %772, %struct.TValue* %773
  %775 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %776 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %777 = load i8, i8* %776, align 8, !tbaa !6
  %778 = icmp eq i8 %777, 69
  br i1 %778, label %779, label %813

; <label>:779:                                    ; preds = %763
  %780 = bitcast %struct.TValue* %767 to %struct.TString**
  %781 = load %struct.TString*, %struct.TString** %780, align 8, !tbaa !6
  %782 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0, i32 0, i32 0
  %783 = bitcast %union.StackValue* %4530 to %struct.Table**
  %784 = load %struct.Table*, %struct.Table** %783, align 8, !tbaa !6
  %785 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %784, %struct.TString* %781) #8
  %786 = getelementptr inbounds %struct.TValue, %struct.TValue* %785, i64 0, i32 1
  %787 = load i8, i8* %786, align 8, !tbaa !2
  %788 = and i8 %787, 15
  %789 = icmp eq i8 %788, 0
  br i1 %789, label %813, label %790

; <label>:790:                                    ; preds = %779
  %791 = bitcast %struct.TValue* %774 to i64*
  %792 = bitcast %struct.TValue* %785 to i64*
  %793 = load i64, i64* %791, align 8
  store i64 %793, i64* %792, align 8
  %794 = getelementptr inbounds %struct.TValue, %struct.TValue* %774, i64 0, i32 1
  %795 = load i8, i8* %794, align 8, !tbaa !2
  store i8 %795, i8* %786, align 8, !tbaa !2
  %796 = load i8, i8* %794, align 8, !tbaa !2
  %797 = and i8 %796, 64
  %798 = icmp eq i8 %797, 0
  br i1 %798, label %817, label %799

; <label>:799:                                    ; preds = %790
  %800 = load %struct.GCObject*, %struct.GCObject** %782, align 8, !tbaa !6
  %801 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %800, i64 0, i32 2
  %802 = load i8, i8* %801, align 1, !tbaa !23
  %803 = and i8 %802, 32
  %804 = icmp eq i8 %803, 0
  br i1 %804, label %817, label %805

; <label>:805:                                    ; preds = %799
  %806 = getelementptr inbounds %struct.TValue, %struct.TValue* %774, i64 0, i32 0, i32 0
  %807 = load %struct.GCObject*, %struct.GCObject** %806, align 8, !tbaa !6
  %808 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %807, i64 0, i32 2
  %809 = load i8, i8* %808, align 1, !tbaa !23
  %810 = and i8 %809, 24
  %811 = icmp eq i8 %810, 0
  br i1 %811, label %817, label %812

; <label>:812:                                    ; preds = %805
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %800) #8
  br label %817

; <label>:813:                                    ; preds = %763, %779
  %814 = phi %struct.TValue* [ %785, %779 ], [ null, %763 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %815 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %815, i64* %19, align 8, !tbaa !28
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %775, %struct.TValue* %767, %struct.TValue* %774, %struct.TValue* %814)
  %816 = load i32, i32* %21, align 8, !tbaa !6
  br label %817

; <label>:817:                                    ; preds = %805, %799, %790, %812, %813
  %818 = phi i32 [ %4525, %812 ], [ %4525, %805 ], [ %4525, %799 ], [ %4525, %790 ], [ %816, %813 ]
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %824, label %820

; <label>:820:                                    ; preds = %817
  %821 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %822 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %823 = getelementptr inbounds %union.StackValue, %union.StackValue* %822, i64 1
  br label %824

; <label>:824:                                    ; preds = %817, %820
  %825 = phi i32 [ %821, %820 ], [ 0, %817 ]
  %826 = phi %union.StackValue* [ %823, %820 ], [ %4524, %817 ]
  %827 = getelementptr inbounds i32, i32* %4526, i64 1
  %828 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:829:                                    ; preds = %4522
  %830 = lshr i32 %4523, 16
  %831 = and i32 %830, 255
  %832 = lshr i32 %4523, 24
  %833 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %833, i64* %19, align 8, !tbaa !28
  %834 = call %struct.Table* @luaH_new(%struct.lua_State* %0) #8
  %835 = bitcast %union.StackValue* %4530 to %struct.Table**
  store %struct.Table* %834, %struct.Table** %835, align 8, !tbaa !6
  %836 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 69, i8* %836, align 8, !tbaa !2
  %837 = or i32 %831, %832
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %842, label %839

; <label>:839:                                    ; preds = %829
  %840 = call i32 @luaO_fb2int(i32 %831) #8
  %841 = call i32 @luaO_fb2int(i32 %832) #8
  call void @luaH_resize(%struct.lua_State* nonnull %0, %struct.Table* %834, i32 %840, i32 %841) #8
  br label %842

; <label>:842:                                    ; preds = %829, %839
  %843 = load %struct.global_State*, %struct.global_State** %22, align 8, !tbaa !16
  %844 = getelementptr inbounds %struct.global_State, %struct.global_State* %843, i64 0, i32 3
  %845 = load i64, i64* %844, align 8, !tbaa !46
  %846 = icmp sgt i64 %845, 0
  br i1 %846, label %847, label %850

; <label>:847:                                    ; preds = %842
  %848 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1
  store %union.StackValue* %848, %union.StackValue** %18, align 8, !tbaa !28
  call void @luaC_step(%struct.lua_State* nonnull %0) #8
  %849 = load i32, i32* %21, align 8, !tbaa !6
  br label %850

; <label>:850:                                    ; preds = %847, %842
  %851 = phi i32 [ %849, %847 ], [ %4525, %842 ]
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %857, label %853

; <label>:853:                                    ; preds = %850
  %854 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4526) #8
  %855 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %856 = getelementptr inbounds %union.StackValue, %union.StackValue* %855, i64 1
  br label %857

; <label>:857:                                    ; preds = %850, %853
  %858 = phi i32 [ %854, %853 ], [ 0, %850 ]
  %859 = phi %union.StackValue* [ %856, %853 ], [ %4524, %850 ]
  %860 = getelementptr inbounds i32, i32* %4526, i64 1
  %861 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:862:                                    ; preds = %4522
  %863 = lshr i32 %4523, 16
  %864 = and i32 %863, 255
  %865 = zext i32 %864 to i64
  %866 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %865, i32 0
  %867 = trunc i32 %4523 to i16
  %868 = icmp slt i16 %867, 0
  %869 = lshr i32 %4523, 24
  %870 = zext i32 %869 to i64
  %871 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %870
  %872 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %870, i32 0
  %873 = select i1 %868, %struct.TValue* %871, %struct.TValue* %872
  %874 = bitcast %struct.TValue* %873 to %struct.TString**
  %875 = load %struct.TString*, %struct.TString** %874, align 8, !tbaa !6
  %876 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1, i32 0
  %877 = bitcast %struct.TValue* %866 to i64*
  %878 = bitcast %struct.TValue* %876 to i64*
  %879 = load i64, i64* %877, align 8
  store i64 %879, i64* %878, align 8
  %880 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %865, i32 0, i32 1
  %881 = load i8, i8* %880, align 8, !tbaa !2
  %882 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1, i32 0, i32 1
  store i8 %881, i8* %882, align 8, !tbaa !2
  %883 = load i8, i8* %880, align 8, !tbaa !2
  %884 = icmp eq i8 %883, 69
  br i1 %884, label %885, label %899

; <label>:885:                                    ; preds = %862
  %886 = bitcast %struct.TValue* %866 to %struct.Table**
  %887 = load %struct.Table*, %struct.Table** %886, align 8, !tbaa !6
  %888 = call %struct.TValue* @luaH_getstr(%struct.Table* %887, %struct.TString* %875) #8
  %889 = getelementptr inbounds %struct.TValue, %struct.TValue* %888, i64 0, i32 1
  %890 = load i8, i8* %889, align 8, !tbaa !2
  %891 = and i8 %890, 15
  %892 = icmp eq i8 %891, 0
  br i1 %892, label %899, label %893

; <label>:893:                                    ; preds = %885
  %894 = bitcast %struct.TValue* %888 to i64*
  %895 = bitcast %union.StackValue* %4530 to i64*
  %896 = load i64, i64* %894, align 8
  store i64 %896, i64* %895, align 8
  %897 = load i8, i8* %889, align 8, !tbaa !2
  %898 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %897, i8* %898, align 8, !tbaa !2
  br label %903

; <label>:899:                                    ; preds = %862, %885
  %900 = phi %struct.TValue* [ %888, %885 ], [ null, %862 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %901 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %901, i64* %19, align 8, !tbaa !28
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %866, %struct.TValue* %873, %union.StackValue* nonnull %4530, %struct.TValue* %900)
  %902 = load i32, i32* %21, align 8, !tbaa !6
  br label %903

; <label>:903:                                    ; preds = %899, %893
  %904 = phi i32 [ %4525, %893 ], [ %902, %899 ]
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %910, label %906

; <label>:906:                                    ; preds = %903
  %907 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %908 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %909 = getelementptr inbounds %union.StackValue, %union.StackValue* %908, i64 1
  br label %910

; <label>:910:                                    ; preds = %903, %906
  %911 = phi i32 [ %907, %906 ], [ 0, %903 ]
  %912 = phi %union.StackValue* [ %909, %906 ], [ %4524, %903 ]
  %913 = getelementptr inbounds i32, i32* %4526, i64 1
  %914 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:915:                                    ; preds = %4522
  %916 = lshr i32 %4523, 16
  %917 = and i32 %916, 255
  %918 = zext i32 %917 to i64
  %919 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %918, i32 0
  %920 = lshr i32 %4523, 24
  %921 = add nsw i32 %920, -127
  %922 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %918, i32 0, i32 1
  %923 = load i8, i8* %922, align 8, !tbaa !2
  switch i8 %923, label %938 [
    i8 35, label %924
    i8 19, label %931
  ]

; <label>:924:                                    ; preds = %915
  %925 = bitcast %struct.TValue* %919 to i64*
  %926 = load i64, i64* %925, align 8, !tbaa !6
  %927 = sext i32 %921 to i64
  %928 = add i64 %926, %927
  %929 = bitcast %union.StackValue* %4530 to i64*
  store i64 %928, i64* %929, align 8, !tbaa !6
  %930 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %930, align 8, !tbaa !2
  br label %944

; <label>:931:                                    ; preds = %915
  %932 = bitcast %struct.TValue* %919 to double*
  %933 = load double, double* %932, align 8, !tbaa !6
  %934 = sitofp i32 %921 to double
  %935 = fadd fast double %933, %934
  %936 = bitcast %union.StackValue* %4530 to double*
  store double %935, double* %936, align 8, !tbaa !6
  %937 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %937, align 8, !tbaa !2
  br label %944

; <label>:938:                                    ; preds = %915
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %939 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %939, i64* %19, align 8, !tbaa !28
  %940 = sext i32 %921 to i64
  %941 = lshr i32 %4523, 15
  %942 = and i32 %941, 1
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %919, i64 %940, i32 %942, %union.StackValue* %4530, i32 6) #8
  %943 = load i32, i32* %21, align 8, !tbaa !6
  br label %944

; <label>:944:                                    ; preds = %931, %938, %924
  %945 = phi i32 [ %4525, %924 ], [ %4525, %931 ], [ %943, %938 ]
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %951, label %947

; <label>:947:                                    ; preds = %944
  %948 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %949 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %950 = getelementptr inbounds %union.StackValue, %union.StackValue* %949, i64 1
  br label %951

; <label>:951:                                    ; preds = %944, %947
  %952 = phi i32 [ %948, %947 ], [ 0, %944 ]
  %953 = phi %union.StackValue* [ %950, %947 ], [ %4524, %944 ]
  %954 = getelementptr inbounds i32, i32* %4526, i64 1
  %955 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:956:                                    ; preds = %4522
  %957 = lshr i32 %4523, 16
  %958 = and i32 %957, 255
  %959 = zext i32 %958 to i64
  %960 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %959, i32 0
  %961 = lshr i32 %4523, 24
  %962 = add nsw i32 %961, -127
  %963 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %959, i32 0, i32 1
  %964 = load i8, i8* %963, align 8, !tbaa !2
  switch i8 %964, label %979 [
    i8 35, label %965
    i8 19, label %972
  ]

; <label>:965:                                    ; preds = %956
  %966 = bitcast %struct.TValue* %960 to i64*
  %967 = load i64, i64* %966, align 8, !tbaa !6
  %968 = sext i32 %962 to i64
  %969 = sub i64 %967, %968
  %970 = bitcast %union.StackValue* %4530 to i64*
  store i64 %969, i64* %970, align 8, !tbaa !6
  %971 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %971, align 8, !tbaa !2
  br label %983

; <label>:972:                                    ; preds = %956
  %973 = bitcast %struct.TValue* %960 to double*
  %974 = load double, double* %973, align 8, !tbaa !6
  %975 = sitofp i32 %962 to double
  %976 = fsub fast double %974, %975
  %977 = bitcast %union.StackValue* %4530 to double*
  store double %976, double* %977, align 8, !tbaa !6
  %978 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %978, align 8, !tbaa !2
  br label %983

; <label>:979:                                    ; preds = %956
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %980 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %980, i64* %19, align 8, !tbaa !28
  %981 = sext i32 %962 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %960, i64 %981, i32 0, %union.StackValue* %4530, i32 7) #8
  %982 = load i32, i32* %21, align 8, !tbaa !6
  br label %983

; <label>:983:                                    ; preds = %972, %979, %965
  %984 = phi i32 [ %4525, %965 ], [ %4525, %972 ], [ %982, %979 ]
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %990, label %986

; <label>:986:                                    ; preds = %983
  %987 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %988 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %989 = getelementptr inbounds %union.StackValue, %union.StackValue* %988, i64 1
  br label %990

; <label>:990:                                    ; preds = %983, %986
  %991 = phi i32 [ %987, %986 ], [ 0, %983 ]
  %992 = phi %union.StackValue* [ %989, %986 ], [ %4524, %983 ]
  %993 = getelementptr inbounds i32, i32* %4526, i64 1
  %994 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:995:                                    ; preds = %4522
  %996 = lshr i32 %4523, 16
  %997 = and i32 %996, 255
  %998 = zext i32 %997 to i64
  %999 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %998, i32 0
  %1000 = lshr i32 %4523, 24
  %1001 = add nsw i32 %1000, -127
  %1002 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %998, i32 0, i32 1
  %1003 = load i8, i8* %1002, align 8, !tbaa !2
  switch i8 %1003, label %1018 [
    i8 35, label %1004
    i8 19, label %1011
  ]

; <label>:1004:                                   ; preds = %995
  %1005 = bitcast %struct.TValue* %999 to i64*
  %1006 = load i64, i64* %1005, align 8, !tbaa !6
  %1007 = sext i32 %1001 to i64
  %1008 = mul i64 %1006, %1007
  %1009 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1008, i64* %1009, align 8, !tbaa !6
  %1010 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1010, align 8, !tbaa !2
  br label %1024

; <label>:1011:                                   ; preds = %995
  %1012 = bitcast %struct.TValue* %999 to double*
  %1013 = load double, double* %1012, align 8, !tbaa !6
  %1014 = sitofp i32 %1001 to double
  %1015 = fmul fast double %1013, %1014
  %1016 = bitcast %union.StackValue* %4530 to double*
  store double %1015, double* %1016, align 8, !tbaa !6
  %1017 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1017, align 8, !tbaa !2
  br label %1024

; <label>:1018:                                   ; preds = %995
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1019 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1019, i64* %19, align 8, !tbaa !28
  %1020 = sext i32 %1001 to i64
  %1021 = lshr i32 %4523, 15
  %1022 = and i32 %1021, 1
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %999, i64 %1020, i32 %1022, %union.StackValue* %4530, i32 8) #8
  %1023 = load i32, i32* %21, align 8, !tbaa !6
  br label %1024

; <label>:1024:                                   ; preds = %1011, %1018, %1004
  %1025 = phi i32 [ %4525, %1004 ], [ %4525, %1011 ], [ %1023, %1018 ]
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1031, label %1027

; <label>:1027:                                   ; preds = %1024
  %1028 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1029 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1030 = getelementptr inbounds %union.StackValue, %union.StackValue* %1029, i64 1
  br label %1031

; <label>:1031:                                   ; preds = %1024, %1027
  %1032 = phi i32 [ %1028, %1027 ], [ 0, %1024 ]
  %1033 = phi %union.StackValue* [ %1030, %1027 ], [ %4524, %1024 ]
  %1034 = getelementptr inbounds i32, i32* %4526, i64 1
  %1035 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1036:                                   ; preds = %4522
  %1037 = lshr i32 %4523, 16
  %1038 = and i32 %1037, 255
  %1039 = zext i32 %1038 to i64
  %1040 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1039, i32 0
  %1041 = lshr i32 %4523, 24
  %1042 = add nsw i32 %1041, -127
  %1043 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1039, i32 0, i32 1
  %1044 = load i8, i8* %1043, align 8, !tbaa !2
  switch i8 %1044, label %1084 [
    i8 35, label %1045
    i8 19, label %1066
  ]

; <label>:1045:                                   ; preds = %1036
  %1046 = sext i32 %1042 to i64
  %1047 = add nsw i64 %1046, 1
  %1048 = icmp ult i64 %1047, 2
  br i1 %1048, label %1049, label %1052, !prof !11

; <label>:1049:                                   ; preds = %1045
  %1050 = icmp eq i32 %1042, 0
  br i1 %1050, label %1051, label %1062

; <label>:1051:                                   ; preds = %1049
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #9
  unreachable

; <label>:1052:                                   ; preds = %1045
  %1053 = bitcast %struct.TValue* %1040 to i64*
  %1054 = load i64, i64* %1053, align 8, !tbaa !6
  %1055 = srem i64 %1054, %1046
  %1056 = icmp ne i64 %1055, 0
  %1057 = xor i64 %1055, %1046
  %1058 = icmp slt i64 %1057, 0
  %1059 = and i1 %1056, %1058
  %1060 = select i1 %1059, i64 %1046, i64 0
  %1061 = add nsw i64 %1060, %1055
  br label %1062

; <label>:1062:                                   ; preds = %1049, %1052
  %1063 = phi i64 [ 0, %1049 ], [ %1061, %1052 ]
  %1064 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1063, i64* %1064, align 8, !tbaa !6
  %1065 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1065, align 8, !tbaa !2
  br label %1088

; <label>:1066:                                   ; preds = %1036
  %1067 = bitcast %struct.TValue* %1040 to double*
  %1068 = load double, double* %1067, align 8, !tbaa !6
  %1069 = sitofp i32 %1042 to double
  %1070 = frem fast double %1068, %1069
  %1071 = fcmp fast ogt double %1070, 0.000000e+00
  br i1 %1071, label %1072, label %1074

; <label>:1072:                                   ; preds = %1066
  %1073 = icmp ult i32 %4523, 2130706432
  br i1 %1073, label %1078, label %1080

; <label>:1074:                                   ; preds = %1066
  %1075 = fcmp fast olt double %1070, 0.000000e+00
  %1076 = icmp slt i32 %4523, 0
  %1077 = and i1 %1076, %1075
  br i1 %1077, label %1078, label %1080

; <label>:1078:                                   ; preds = %1074, %1072
  %1079 = fadd fast double %1070, %1069
  br label %1080

; <label>:1080:                                   ; preds = %1072, %1074, %1078
  %1081 = phi double [ %1079, %1078 ], [ %1070, %1072 ], [ %1070, %1074 ]
  %1082 = bitcast %union.StackValue* %4530 to double*
  store double %1081, double* %1082, align 8, !tbaa !6
  %1083 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1083, align 8, !tbaa !2
  br label %1088

; <label>:1084:                                   ; preds = %1036
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1085 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1085, i64* %19, align 8, !tbaa !28
  %1086 = sext i32 %1042 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1040, i64 %1086, i32 0, %union.StackValue* %4530, i32 9) #8
  %1087 = load i32, i32* %21, align 8, !tbaa !6
  br label %1088

; <label>:1088:                                   ; preds = %1080, %1084, %1062
  %1089 = phi i32 [ %4525, %1062 ], [ %4525, %1080 ], [ %1087, %1084 ]
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1095, label %1091

; <label>:1091:                                   ; preds = %1088
  %1092 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1093 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1094 = getelementptr inbounds %union.StackValue, %union.StackValue* %1093, i64 1
  br label %1095

; <label>:1095:                                   ; preds = %1088, %1091
  %1096 = phi i32 [ %1092, %1091 ], [ 0, %1088 ]
  %1097 = phi %union.StackValue* [ %1094, %1091 ], [ %4524, %1088 ]
  %1098 = getelementptr inbounds i32, i32* %4526, i64 1
  %1099 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1100:                                   ; preds = %4522
  %1101 = lshr i32 %4523, 16
  %1102 = and i32 %1101, 255
  %1103 = zext i32 %1102 to i64
  %1104 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1103, i32 0
  %1105 = lshr i32 %4523, 24
  %1106 = add nsw i32 %1105, -127
  %1107 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1103, i32 0, i32 1
  %1108 = load i8, i8* %1107, align 8, !tbaa !2
  switch i8 %1108, label %1122 [
    i8 19, label %1109
    i8 35, label %1112
  ]

; <label>:1109:                                   ; preds = %1100
  %1110 = bitcast %struct.TValue* %1104 to double*
  %1111 = load double, double* %1110, align 8, !tbaa !6
  br label %1116

; <label>:1112:                                   ; preds = %1100
  %1113 = bitcast %struct.TValue* %1104 to i64*
  %1114 = load i64, i64* %1113, align 8, !tbaa !6
  %1115 = sitofp i64 %1114 to double
  br label %1116

; <label>:1116:                                   ; preds = %1109, %1112
  %1117 = phi double [ %1111, %1109 ], [ %1115, %1112 ]
  %1118 = sitofp i32 %1106 to double
  %1119 = call fast double @llvm.pow.f64(double %1117, double %1118)
  %1120 = bitcast %union.StackValue* %4530 to double*
  store double %1119, double* %1120, align 8, !tbaa !6
  %1121 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1121, align 8, !tbaa !2
  br label %1126

; <label>:1122:                                   ; preds = %1100
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1123 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1123, i64* %19, align 8, !tbaa !28
  %1124 = sext i32 %1106 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1104, i64 %1124, i32 0, %union.StackValue* %4530, i32 10) #8
  %1125 = load i32, i32* %21, align 8, !tbaa !6
  br label %1126

; <label>:1126:                                   ; preds = %1122, %1116
  %1127 = phi i32 [ %4525, %1116 ], [ %1125, %1122 ]
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1133, label %1129

; <label>:1129:                                   ; preds = %1126
  %1130 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1131 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1132 = getelementptr inbounds %union.StackValue, %union.StackValue* %1131, i64 1
  br label %1133

; <label>:1133:                                   ; preds = %1126, %1129
  %1134 = phi i32 [ %1130, %1129 ], [ 0, %1126 ]
  %1135 = phi %union.StackValue* [ %1132, %1129 ], [ %4524, %1126 ]
  %1136 = getelementptr inbounds i32, i32* %4526, i64 1
  %1137 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1138:                                   ; preds = %4522
  %1139 = lshr i32 %4523, 16
  %1140 = and i32 %1139, 255
  %1141 = zext i32 %1140 to i64
  %1142 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1141, i32 0
  %1143 = lshr i32 %4523, 24
  %1144 = add nsw i32 %1143, -127
  %1145 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1141, i32 0, i32 1
  %1146 = load i8, i8* %1145, align 8, !tbaa !2
  switch i8 %1146, label %1160 [
    i8 19, label %1147
    i8 35, label %1150
  ]

; <label>:1147:                                   ; preds = %1138
  %1148 = bitcast %struct.TValue* %1142 to double*
  %1149 = load double, double* %1148, align 8, !tbaa !6
  br label %1154

; <label>:1150:                                   ; preds = %1138
  %1151 = bitcast %struct.TValue* %1142 to i64*
  %1152 = load i64, i64* %1151, align 8, !tbaa !6
  %1153 = sitofp i64 %1152 to double
  br label %1154

; <label>:1154:                                   ; preds = %1147, %1150
  %1155 = phi double [ %1149, %1147 ], [ %1153, %1150 ]
  %1156 = sitofp i32 %1144 to double
  %1157 = fdiv fast double %1155, %1156
  %1158 = bitcast %union.StackValue* %4530 to double*
  store double %1157, double* %1158, align 8, !tbaa !6
  %1159 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1159, align 8, !tbaa !2
  br label %1164

; <label>:1160:                                   ; preds = %1138
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1161 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1161, i64* %19, align 8, !tbaa !28
  %1162 = sext i32 %1144 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1142, i64 %1162, i32 0, %union.StackValue* %4530, i32 11) #8
  %1163 = load i32, i32* %21, align 8, !tbaa !6
  br label %1164

; <label>:1164:                                   ; preds = %1160, %1154
  %1165 = phi i32 [ %4525, %1154 ], [ %1163, %1160 ]
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1171, label %1167

; <label>:1167:                                   ; preds = %1164
  %1168 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1169 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1170 = getelementptr inbounds %union.StackValue, %union.StackValue* %1169, i64 1
  br label %1171

; <label>:1171:                                   ; preds = %1164, %1167
  %1172 = phi i32 [ %1168, %1167 ], [ 0, %1164 ]
  %1173 = phi %union.StackValue* [ %1170, %1167 ], [ %4524, %1164 ]
  %1174 = getelementptr inbounds i32, i32* %4526, i64 1
  %1175 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1176:                                   ; preds = %4522
  %1177 = lshr i32 %4523, 16
  %1178 = and i32 %1177, 255
  %1179 = zext i32 %1178 to i64
  %1180 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1179, i32 0
  %1181 = lshr i32 %4523, 24
  %1182 = add nsw i32 %1181, -127
  %1183 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1179, i32 0, i32 1
  %1184 = load i8, i8* %1183, align 8, !tbaa !2
  switch i8 %1184, label %1217 [
    i8 35, label %1185
    i8 19, label %1209
  ]

; <label>:1185:                                   ; preds = %1176
  %1186 = bitcast %struct.TValue* %1180 to i64*
  %1187 = load i64, i64* %1186, align 8, !tbaa !6
  %1188 = sext i32 %1182 to i64
  %1189 = add nsw i64 %1188, 1
  %1190 = icmp ult i64 %1189, 2
  br i1 %1190, label %1191, label %1196, !prof !11

; <label>:1191:                                   ; preds = %1185
  %1192 = icmp eq i32 %1182, 0
  br i1 %1192, label %1193, label %1194

; <label>:1193:                                   ; preds = %1191
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #9
  unreachable

; <label>:1194:                                   ; preds = %1191
  %1195 = sub i64 0, %1187
  br label %1205

; <label>:1196:                                   ; preds = %1185
  %1197 = sdiv i64 %1187, %1188
  %1198 = srem i64 %1187, %1188
  %1199 = xor i64 %1187, %1188
  %1200 = icmp slt i64 %1199, 0
  br i1 %1200, label %1201, label %1205

; <label>:1201:                                   ; preds = %1196
  %1202 = icmp ne i64 %1198, 0
  %1203 = sext i1 %1202 to i64
  %1204 = add nsw i64 %1197, %1203
  br label %1205

; <label>:1205:                                   ; preds = %1194, %1196, %1201
  %1206 = phi i64 [ %1204, %1201 ], [ %1195, %1194 ], [ %1197, %1196 ]
  %1207 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1206, i64* %1207, align 8, !tbaa !6
  %1208 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1208, align 8, !tbaa !2
  br label %1221

; <label>:1209:                                   ; preds = %1176
  %1210 = bitcast %struct.TValue* %1180 to double*
  %1211 = load double, double* %1210, align 8, !tbaa !6
  %1212 = sitofp i32 %1182 to double
  %1213 = fdiv fast double %1211, %1212
  %1214 = call fast double @llvm.floor.f64(double %1213)
  %1215 = bitcast %union.StackValue* %4530 to double*
  store double %1214, double* %1215, align 8, !tbaa !6
  %1216 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1216, align 8, !tbaa !2
  br label %1221

; <label>:1217:                                   ; preds = %1176
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1218 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1218, i64* %19, align 8, !tbaa !28
  %1219 = sext i32 %1182 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1180, i64 %1219, i32 0, %union.StackValue* %4530, i32 12) #8
  %1220 = load i32, i32* %21, align 8, !tbaa !6
  br label %1221

; <label>:1221:                                   ; preds = %1209, %1217, %1205
  %1222 = phi i32 [ %4525, %1205 ], [ %4525, %1209 ], [ %1220, %1217 ]
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1228, label %1224

; <label>:1224:                                   ; preds = %1221
  %1225 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1226 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1227 = getelementptr inbounds %union.StackValue, %union.StackValue* %1226, i64 1
  br label %1228

; <label>:1228:                                   ; preds = %1221, %1224
  %1229 = phi i32 [ %1225, %1224 ], [ 0, %1221 ]
  %1230 = phi %union.StackValue* [ %1227, %1224 ], [ %4524, %1221 ]
  %1231 = getelementptr inbounds i32, i32* %4526, i64 1
  %1232 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1233:                                   ; preds = %4522
  %1234 = lshr i32 %4523, 16
  %1235 = and i32 %1234, 255
  %1236 = zext i32 %1235 to i64
  %1237 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1236, i32 0
  %1238 = lshr i32 %4523, 24
  %1239 = zext i32 %1238 to i64
  %1240 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1239
  %1241 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1236, i32 0, i32 1
  %1242 = load i8, i8* %1241, align 8, !tbaa !2
  switch i8 %1242, label %1277 [
    i8 35, label %1243
    i8 19, label %1255
  ]

; <label>:1243:                                   ; preds = %1233
  %1244 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1239, i32 1
  %1245 = load i8, i8* %1244, align 8, !tbaa !2
  %1246 = icmp eq i8 %1245, 35
  %1247 = bitcast %struct.TValue* %1237 to i64*
  %1248 = load i64, i64* %1247, align 8, !tbaa !6
  br i1 %1246, label %1249, label %1260

; <label>:1249:                                   ; preds = %1243
  %1250 = bitcast %struct.TValue* %1240 to i64*
  %1251 = load i64, i64* %1250, align 8, !tbaa !6
  %1252 = add i64 %1251, %1248
  %1253 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1252, i64* %1253, align 8, !tbaa !6
  %1254 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1254, align 8, !tbaa !2
  br label %1282

; <label>:1255:                                   ; preds = %1233
  %1256 = bitcast %struct.TValue* %1237 to double*
  %1257 = load double, double* %1256, align 8, !tbaa !6
  %1258 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1239, i32 1
  %1259 = load i8, i8* %1258, align 8, !tbaa !2
  br label %1262

; <label>:1260:                                   ; preds = %1243
  %1261 = sitofp i64 %1248 to double
  br label %1262

; <label>:1262:                                   ; preds = %1255, %1260
  %1263 = phi i8 [ %1259, %1255 ], [ %1245, %1260 ]
  %1264 = phi double [ %1257, %1255 ], [ %1261, %1260 ]
  switch i8 %1263, label %1277 [
    i8 19, label %1265
    i8 35, label %1268
  ]

; <label>:1265:                                   ; preds = %1262
  %1266 = bitcast %struct.TValue* %1240 to double*
  %1267 = load double, double* %1266, align 8, !tbaa !6
  br label %1272

; <label>:1268:                                   ; preds = %1262
  %1269 = bitcast %struct.TValue* %1240 to i64*
  %1270 = load i64, i64* %1269, align 8, !tbaa !6
  %1271 = sitofp i64 %1270 to double
  br label %1272

; <label>:1272:                                   ; preds = %1265, %1268
  %1273 = phi double [ %1267, %1265 ], [ %1271, %1268 ]
  %1274 = fadd fast double %1273, %1264
  %1275 = bitcast %union.StackValue* %4530 to double*
  store double %1274, double* %1275, align 8, !tbaa !6
  %1276 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1276, align 8, !tbaa !2
  br label %1282

; <label>:1277:                                   ; preds = %1233, %1262
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1278 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1278, i64* %19, align 8, !tbaa !28
  %1279 = lshr i32 %4523, 15
  %1280 = and i32 %1279, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1237, %struct.TValue* %1240, %union.StackValue* %4530, i32 %1280, i32 6) #8
  %1281 = load i32, i32* %21, align 8, !tbaa !6
  br label %1282

; <label>:1282:                                   ; preds = %1272, %1277, %1249
  %1283 = phi i32 [ %4525, %1249 ], [ %4525, %1272 ], [ %1281, %1277 ]
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1289, label %1285

; <label>:1285:                                   ; preds = %1282
  %1286 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1287 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1288 = getelementptr inbounds %union.StackValue, %union.StackValue* %1287, i64 1
  br label %1289

; <label>:1289:                                   ; preds = %1282, %1285
  %1290 = phi i32 [ %1286, %1285 ], [ 0, %1282 ]
  %1291 = phi %union.StackValue* [ %1288, %1285 ], [ %4524, %1282 ]
  %1292 = getelementptr inbounds i32, i32* %4526, i64 1
  %1293 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1294:                                   ; preds = %4522
  %1295 = lshr i32 %4523, 16
  %1296 = and i32 %1295, 255
  %1297 = zext i32 %1296 to i64
  %1298 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1297, i32 0
  %1299 = lshr i32 %4523, 24
  %1300 = zext i32 %1299 to i64
  %1301 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1300
  %1302 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1297, i32 0, i32 1
  %1303 = load i8, i8* %1302, align 8, !tbaa !2
  switch i8 %1303, label %1338 [
    i8 35, label %1304
    i8 19, label %1316
  ]

; <label>:1304:                                   ; preds = %1294
  %1305 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1300, i32 1
  %1306 = load i8, i8* %1305, align 8, !tbaa !2
  %1307 = icmp eq i8 %1306, 35
  %1308 = bitcast %struct.TValue* %1298 to i64*
  %1309 = load i64, i64* %1308, align 8, !tbaa !6
  br i1 %1307, label %1310, label %1321

; <label>:1310:                                   ; preds = %1304
  %1311 = bitcast %struct.TValue* %1301 to i64*
  %1312 = load i64, i64* %1311, align 8, !tbaa !6
  %1313 = sub i64 %1309, %1312
  %1314 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1313, i64* %1314, align 8, !tbaa !6
  %1315 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1315, align 8, !tbaa !2
  br label %1341

; <label>:1316:                                   ; preds = %1294
  %1317 = bitcast %struct.TValue* %1298 to double*
  %1318 = load double, double* %1317, align 8, !tbaa !6
  %1319 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1300, i32 1
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
  %1335 = fsub fast double %1325, %1334
  %1336 = bitcast %union.StackValue* %4530 to double*
  store double %1335, double* %1336, align 8, !tbaa !6
  %1337 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1337, align 8, !tbaa !2
  br label %1341

; <label>:1338:                                   ; preds = %1294, %1323
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1339 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1339, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1298, %struct.TValue* %1301, %union.StackValue* %4530, i32 0, i32 7) #8
  %1340 = load i32, i32* %21, align 8, !tbaa !6
  br label %1341

; <label>:1341:                                   ; preds = %1333, %1338, %1310
  %1342 = phi i32 [ %4525, %1310 ], [ %4525, %1333 ], [ %1340, %1338 ]
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1348, label %1344

; <label>:1344:                                   ; preds = %1341
  %1345 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1346 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1347 = getelementptr inbounds %union.StackValue, %union.StackValue* %1346, i64 1
  br label %1348

; <label>:1348:                                   ; preds = %1341, %1344
  %1349 = phi i32 [ %1345, %1344 ], [ 0, %1341 ]
  %1350 = phi %union.StackValue* [ %1347, %1344 ], [ %4524, %1341 ]
  %1351 = getelementptr inbounds i32, i32* %4526, i64 1
  %1352 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1353:                                   ; preds = %4522
  %1354 = lshr i32 %4523, 16
  %1355 = and i32 %1354, 255
  %1356 = zext i32 %1355 to i64
  %1357 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1356, i32 0
  %1358 = lshr i32 %4523, 24
  %1359 = zext i32 %1358 to i64
  %1360 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1359
  %1361 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1356, i32 0, i32 1
  %1362 = load i8, i8* %1361, align 8, !tbaa !2
  switch i8 %1362, label %1397 [
    i8 35, label %1363
    i8 19, label %1375
  ]

; <label>:1363:                                   ; preds = %1353
  %1364 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1359, i32 1
  %1365 = load i8, i8* %1364, align 8, !tbaa !2
  %1366 = icmp eq i8 %1365, 35
  %1367 = bitcast %struct.TValue* %1357 to i64*
  %1368 = load i64, i64* %1367, align 8, !tbaa !6
  br i1 %1366, label %1369, label %1380

; <label>:1369:                                   ; preds = %1363
  %1370 = bitcast %struct.TValue* %1360 to i64*
  %1371 = load i64, i64* %1370, align 8, !tbaa !6
  %1372 = mul i64 %1371, %1368
  %1373 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1372, i64* %1373, align 8, !tbaa !6
  %1374 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1374, align 8, !tbaa !2
  br label %1402

; <label>:1375:                                   ; preds = %1353
  %1376 = bitcast %struct.TValue* %1357 to double*
  %1377 = load double, double* %1376, align 8, !tbaa !6
  %1378 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1359, i32 1
  %1379 = load i8, i8* %1378, align 8, !tbaa !2
  br label %1382

; <label>:1380:                                   ; preds = %1363
  %1381 = sitofp i64 %1368 to double
  br label %1382

; <label>:1382:                                   ; preds = %1375, %1380
  %1383 = phi i8 [ %1379, %1375 ], [ %1365, %1380 ]
  %1384 = phi double [ %1377, %1375 ], [ %1381, %1380 ]
  switch i8 %1383, label %1397 [
    i8 19, label %1385
    i8 35, label %1388
  ]

; <label>:1385:                                   ; preds = %1382
  %1386 = bitcast %struct.TValue* %1360 to double*
  %1387 = load double, double* %1386, align 8, !tbaa !6
  br label %1392

; <label>:1388:                                   ; preds = %1382
  %1389 = bitcast %struct.TValue* %1360 to i64*
  %1390 = load i64, i64* %1389, align 8, !tbaa !6
  %1391 = sitofp i64 %1390 to double
  br label %1392

; <label>:1392:                                   ; preds = %1385, %1388
  %1393 = phi double [ %1387, %1385 ], [ %1391, %1388 ]
  %1394 = fmul fast double %1393, %1384
  %1395 = bitcast %union.StackValue* %4530 to double*
  store double %1394, double* %1395, align 8, !tbaa !6
  %1396 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1396, align 8, !tbaa !2
  br label %1402

; <label>:1397:                                   ; preds = %1353, %1382
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1398 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1398, i64* %19, align 8, !tbaa !28
  %1399 = lshr i32 %4523, 15
  %1400 = and i32 %1399, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1357, %struct.TValue* %1360, %union.StackValue* %4530, i32 %1400, i32 8) #8
  %1401 = load i32, i32* %21, align 8, !tbaa !6
  br label %1402

; <label>:1402:                                   ; preds = %1392, %1397, %1369
  %1403 = phi i32 [ %4525, %1369 ], [ %4525, %1392 ], [ %1401, %1397 ]
  %1404 = icmp eq i32 %1403, 0
  br i1 %1404, label %1409, label %1405

; <label>:1405:                                   ; preds = %1402
  %1406 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1407 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1408 = getelementptr inbounds %union.StackValue, %union.StackValue* %1407, i64 1
  br label %1409

; <label>:1409:                                   ; preds = %1402, %1405
  %1410 = phi i32 [ %1406, %1405 ], [ 0, %1402 ]
  %1411 = phi %union.StackValue* [ %1408, %1405 ], [ %4524, %1402 ]
  %1412 = getelementptr inbounds i32, i32* %4526, i64 1
  %1413 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1414:                                   ; preds = %4522
  %1415 = lshr i32 %4523, 16
  %1416 = and i32 %1415, 255
  %1417 = zext i32 %1416 to i64
  %1418 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1417, i32 0
  %1419 = lshr i32 %4523, 24
  %1420 = zext i32 %1419 to i64
  %1421 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1420
  %1422 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1417, i32 0, i32 1
  %1423 = load i8, i8* %1422, align 8, !tbaa !2
  switch i8 %1423, label %1483 [
    i8 35, label %1424
    i8 19, label %1450
  ]

; <label>:1424:                                   ; preds = %1414
  %1425 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1420, i32 1
  %1426 = load i8, i8* %1425, align 8, !tbaa !2
  %1427 = icmp eq i8 %1426, 35
  %1428 = bitcast %struct.TValue* %1418 to i64*
  %1429 = load i64, i64* %1428, align 8, !tbaa !6
  br i1 %1427, label %1430, label %1455

; <label>:1430:                                   ; preds = %1424
  %1431 = bitcast %struct.TValue* %1421 to i64*
  %1432 = load i64, i64* %1431, align 8, !tbaa !6
  %1433 = add i64 %1432, 1
  %1434 = icmp ult i64 %1433, 2
  br i1 %1434, label %1435, label %1438, !prof !11

; <label>:1435:                                   ; preds = %1430
  %1436 = icmp eq i64 %1432, 0
  br i1 %1436, label %1437, label %1446

; <label>:1437:                                   ; preds = %1435
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #9
  unreachable

; <label>:1438:                                   ; preds = %1430
  %1439 = srem i64 %1429, %1432
  %1440 = icmp ne i64 %1439, 0
  %1441 = xor i64 %1439, %1432
  %1442 = icmp slt i64 %1441, 0
  %1443 = and i1 %1440, %1442
  %1444 = select i1 %1443, i64 %1432, i64 0
  %1445 = add nsw i64 %1444, %1439
  br label %1446

; <label>:1446:                                   ; preds = %1435, %1438
  %1447 = phi i64 [ 0, %1435 ], [ %1445, %1438 ]
  %1448 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1447, i64* %1448, align 8, !tbaa !6
  %1449 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1449, align 8, !tbaa !2
  br label %1486

; <label>:1450:                                   ; preds = %1414
  %1451 = bitcast %struct.TValue* %1418 to double*
  %1452 = load double, double* %1451, align 8, !tbaa !6
  %1453 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1420, i32 1
  %1454 = load i8, i8* %1453, align 8, !tbaa !2
  br label %1457

; <label>:1455:                                   ; preds = %1424
  %1456 = sitofp i64 %1429 to double
  br label %1457

; <label>:1457:                                   ; preds = %1450, %1455
  %1458 = phi i8 [ %1454, %1450 ], [ %1426, %1455 ]
  %1459 = phi double [ %1452, %1450 ], [ %1456, %1455 ]
  switch i8 %1458, label %1483 [
    i8 19, label %1460
    i8 35, label %1463
  ]

; <label>:1460:                                   ; preds = %1457
  %1461 = bitcast %struct.TValue* %1421 to double*
  %1462 = load double, double* %1461, align 8, !tbaa !6
  br label %1467

; <label>:1463:                                   ; preds = %1457
  %1464 = bitcast %struct.TValue* %1421 to i64*
  %1465 = load i64, i64* %1464, align 8, !tbaa !6
  %1466 = sitofp i64 %1465 to double
  br label %1467

; <label>:1467:                                   ; preds = %1460, %1463
  %1468 = phi double [ %1462, %1460 ], [ %1466, %1463 ]
  %1469 = frem fast double %1459, %1468
  %1470 = fcmp fast ogt double %1469, 0.000000e+00
  br i1 %1470, label %1471, label %1473

; <label>:1471:                                   ; preds = %1467
  %1472 = fcmp fast olt double %1468, 0.000000e+00
  br i1 %1472, label %1477, label %1479

; <label>:1473:                                   ; preds = %1467
  %1474 = fcmp fast olt double %1469, 0.000000e+00
  %1475 = fcmp fast ogt double %1468, 0.000000e+00
  %1476 = and i1 %1475, %1474
  br i1 %1476, label %1477, label %1479

; <label>:1477:                                   ; preds = %1473, %1471
  %1478 = fadd fast double %1469, %1468
  br label %1479

; <label>:1479:                                   ; preds = %1471, %1473, %1477
  %1480 = phi double [ %1478, %1477 ], [ %1469, %1471 ], [ %1469, %1473 ]
  %1481 = bitcast %union.StackValue* %4530 to double*
  store double %1480, double* %1481, align 8, !tbaa !6
  %1482 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1482, align 8, !tbaa !2
  br label %1486

; <label>:1483:                                   ; preds = %1414, %1457
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1484 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1484, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1418, %struct.TValue* %1421, %union.StackValue* %4530, i32 0, i32 9) #8
  %1485 = load i32, i32* %21, align 8, !tbaa !6
  br label %1486

; <label>:1486:                                   ; preds = %1479, %1483, %1446
  %1487 = phi i32 [ %4525, %1446 ], [ %4525, %1479 ], [ %1485, %1483 ]
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1493, label %1489

; <label>:1489:                                   ; preds = %1486
  %1490 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1491 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1492 = getelementptr inbounds %union.StackValue, %union.StackValue* %1491, i64 1
  br label %1493

; <label>:1493:                                   ; preds = %1486, %1489
  %1494 = phi i32 [ %1490, %1489 ], [ 0, %1486 ]
  %1495 = phi %union.StackValue* [ %1492, %1489 ], [ %4524, %1486 ]
  %1496 = getelementptr inbounds i32, i32* %4526, i64 1
  %1497 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1498:                                   ; preds = %4522
  %1499 = lshr i32 %4523, 16
  %1500 = and i32 %1499, 255
  %1501 = zext i32 %1500 to i64
  %1502 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1501, i32 0
  %1503 = lshr i32 %4523, 24
  %1504 = zext i32 %1503 to i64
  %1505 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1504
  %1506 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1501, i32 0, i32 1
  %1507 = load i8, i8* %1506, align 8, !tbaa !2
  switch i8 %1507, label %1531 [
    i8 19, label %1508
    i8 35, label %1511
  ]

; <label>:1508:                                   ; preds = %1498
  %1509 = bitcast %struct.TValue* %1502 to double*
  %1510 = load double, double* %1509, align 8, !tbaa !6
  br label %1515

; <label>:1511:                                   ; preds = %1498
  %1512 = bitcast %struct.TValue* %1502 to i64*
  %1513 = load i64, i64* %1512, align 8, !tbaa !6
  %1514 = sitofp i64 %1513 to double
  br label %1515

; <label>:1515:                                   ; preds = %1508, %1511
  %1516 = phi double [ %1510, %1508 ], [ %1514, %1511 ]
  %1517 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1504, i32 1
  %1518 = load i8, i8* %1517, align 8, !tbaa !2
  switch i8 %1518, label %1531 [
    i8 19, label %1519
    i8 35, label %1522
  ]

; <label>:1519:                                   ; preds = %1515
  %1520 = bitcast %struct.TValue* %1505 to double*
  %1521 = load double, double* %1520, align 8, !tbaa !6
  br label %1526

; <label>:1522:                                   ; preds = %1515
  %1523 = bitcast %struct.TValue* %1505 to i64*
  %1524 = load i64, i64* %1523, align 8, !tbaa !6
  %1525 = sitofp i64 %1524 to double
  br label %1526

; <label>:1526:                                   ; preds = %1519, %1522
  %1527 = phi double [ %1521, %1519 ], [ %1525, %1522 ]
  %1528 = call fast double @llvm.pow.f64(double %1516, double %1527)
  %1529 = bitcast %union.StackValue* %4530 to double*
  store double %1528, double* %1529, align 8, !tbaa !6
  %1530 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1530, align 8, !tbaa !2
  br label %1534

; <label>:1531:                                   ; preds = %1515, %1498
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1532 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1532, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1502, %struct.TValue* %1505, %union.StackValue* %4530, i32 10) #8
  %1533 = load i32, i32* %21, align 8, !tbaa !6
  br label %1534

; <label>:1534:                                   ; preds = %1531, %1526
  %1535 = phi i32 [ %4525, %1526 ], [ %1533, %1531 ]
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1541, label %1537

; <label>:1537:                                   ; preds = %1534
  %1538 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1539 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1540 = getelementptr inbounds %union.StackValue, %union.StackValue* %1539, i64 1
  br label %1541

; <label>:1541:                                   ; preds = %1534, %1537
  %1542 = phi i32 [ %1538, %1537 ], [ 0, %1534 ]
  %1543 = phi %union.StackValue* [ %1540, %1537 ], [ %4524, %1534 ]
  %1544 = getelementptr inbounds i32, i32* %4526, i64 1
  %1545 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1546:                                   ; preds = %4522
  %1547 = lshr i32 %4523, 16
  %1548 = and i32 %1547, 255
  %1549 = zext i32 %1548 to i64
  %1550 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1549, i32 0
  %1551 = lshr i32 %4523, 24
  %1552 = zext i32 %1551 to i64
  %1553 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1552
  %1554 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1549, i32 0, i32 1
  %1555 = load i8, i8* %1554, align 8, !tbaa !2
  switch i8 %1555, label %1579 [
    i8 19, label %1556
    i8 35, label %1559
  ]

; <label>:1556:                                   ; preds = %1546
  %1557 = bitcast %struct.TValue* %1550 to double*
  %1558 = load double, double* %1557, align 8, !tbaa !6
  br label %1563

; <label>:1559:                                   ; preds = %1546
  %1560 = bitcast %struct.TValue* %1550 to i64*
  %1561 = load i64, i64* %1560, align 8, !tbaa !6
  %1562 = sitofp i64 %1561 to double
  br label %1563

; <label>:1563:                                   ; preds = %1556, %1559
  %1564 = phi double [ %1558, %1556 ], [ %1562, %1559 ]
  %1565 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1552, i32 1
  %1566 = load i8, i8* %1565, align 8, !tbaa !2
  switch i8 %1566, label %1579 [
    i8 19, label %1567
    i8 35, label %1570
  ]

; <label>:1567:                                   ; preds = %1563
  %1568 = bitcast %struct.TValue* %1553 to double*
  %1569 = load double, double* %1568, align 8, !tbaa !6
  br label %1574

; <label>:1570:                                   ; preds = %1563
  %1571 = bitcast %struct.TValue* %1553 to i64*
  %1572 = load i64, i64* %1571, align 8, !tbaa !6
  %1573 = sitofp i64 %1572 to double
  br label %1574

; <label>:1574:                                   ; preds = %1567, %1570
  %1575 = phi double [ %1569, %1567 ], [ %1573, %1570 ]
  %1576 = fdiv fast double %1564, %1575
  %1577 = bitcast %union.StackValue* %4530 to double*
  store double %1576, double* %1577, align 8, !tbaa !6
  %1578 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1578, align 8, !tbaa !2
  br label %1582

; <label>:1579:                                   ; preds = %1563, %1546
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1580 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1580, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1550, %struct.TValue* %1553, %union.StackValue* %4530, i32 11) #8
  %1581 = load i32, i32* %21, align 8, !tbaa !6
  br label %1582

; <label>:1582:                                   ; preds = %1579, %1574
  %1583 = phi i32 [ %4525, %1574 ], [ %1581, %1579 ]
  %1584 = icmp eq i32 %1583, 0
  br i1 %1584, label %1589, label %1585

; <label>:1585:                                   ; preds = %1582
  %1586 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1587 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1588 = getelementptr inbounds %union.StackValue, %union.StackValue* %1587, i64 1
  br label %1589

; <label>:1589:                                   ; preds = %1582, %1585
  %1590 = phi i32 [ %1586, %1585 ], [ 0, %1582 ]
  %1591 = phi %union.StackValue* [ %1588, %1585 ], [ %4524, %1582 ]
  %1592 = getelementptr inbounds i32, i32* %4526, i64 1
  %1593 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1594:                                   ; preds = %4522
  %1595 = lshr i32 %4523, 16
  %1596 = and i32 %1595, 255
  %1597 = zext i32 %1596 to i64
  %1598 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1597, i32 0
  %1599 = lshr i32 %4523, 24
  %1600 = zext i32 %1599 to i64
  %1601 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1600
  %1602 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1597, i32 0, i32 1
  %1603 = load i8, i8* %1602, align 8, !tbaa !2
  switch i8 %1603, label %1656 [
    i8 35, label %1604
    i8 19, label %1633
  ]

; <label>:1604:                                   ; preds = %1594
  %1605 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1600, i32 1
  %1606 = load i8, i8* %1605, align 8, !tbaa !2
  %1607 = icmp eq i8 %1606, 35
  %1608 = bitcast %struct.TValue* %1598 to i64*
  %1609 = load i64, i64* %1608, align 8, !tbaa !6
  br i1 %1607, label %1610, label %1638

; <label>:1610:                                   ; preds = %1604
  %1611 = bitcast %struct.TValue* %1601 to i64*
  %1612 = load i64, i64* %1611, align 8, !tbaa !6
  %1613 = add i64 %1612, 1
  %1614 = icmp ult i64 %1613, 2
  br i1 %1614, label %1615, label %1620, !prof !11

; <label>:1615:                                   ; preds = %1610
  %1616 = icmp eq i64 %1612, 0
  br i1 %1616, label %1617, label %1618

; <label>:1617:                                   ; preds = %1615
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #9
  unreachable

; <label>:1618:                                   ; preds = %1615
  %1619 = sub i64 0, %1609
  br label %1629

; <label>:1620:                                   ; preds = %1610
  %1621 = sdiv i64 %1609, %1612
  %1622 = srem i64 %1609, %1612
  %1623 = xor i64 %1612, %1609
  %1624 = icmp slt i64 %1623, 0
  br i1 %1624, label %1625, label %1629

; <label>:1625:                                   ; preds = %1620
  %1626 = icmp ne i64 %1622, 0
  %1627 = sext i1 %1626 to i64
  %1628 = add nsw i64 %1621, %1627
  br label %1629

; <label>:1629:                                   ; preds = %1618, %1620, %1625
  %1630 = phi i64 [ %1628, %1625 ], [ %1619, %1618 ], [ %1621, %1620 ]
  %1631 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1630, i64* %1631, align 8, !tbaa !6
  %1632 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1632, align 8, !tbaa !2
  br label %1659

; <label>:1633:                                   ; preds = %1594
  %1634 = bitcast %struct.TValue* %1598 to double*
  %1635 = load double, double* %1634, align 8, !tbaa !6
  %1636 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %1600, i32 1
  %1637 = load i8, i8* %1636, align 8, !tbaa !2
  br label %1640

; <label>:1638:                                   ; preds = %1604
  %1639 = sitofp i64 %1609 to double
  br label %1640

; <label>:1640:                                   ; preds = %1633, %1638
  %1641 = phi i8 [ %1637, %1633 ], [ %1606, %1638 ]
  %1642 = phi double [ %1635, %1633 ], [ %1639, %1638 ]
  switch i8 %1641, label %1656 [
    i8 19, label %1643
    i8 35, label %1646
  ]

; <label>:1643:                                   ; preds = %1640
  %1644 = bitcast %struct.TValue* %1601 to double*
  %1645 = load double, double* %1644, align 8, !tbaa !6
  br label %1650

; <label>:1646:                                   ; preds = %1640
  %1647 = bitcast %struct.TValue* %1601 to i64*
  %1648 = load i64, i64* %1647, align 8, !tbaa !6
  %1649 = sitofp i64 %1648 to double
  br label %1650

; <label>:1650:                                   ; preds = %1643, %1646
  %1651 = phi double [ %1645, %1643 ], [ %1649, %1646 ]
  %1652 = fdiv fast double %1642, %1651
  %1653 = call fast double @llvm.floor.f64(double %1652)
  %1654 = bitcast %union.StackValue* %4530 to double*
  store double %1653, double* %1654, align 8, !tbaa !6
  %1655 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1655, align 8, !tbaa !2
  br label %1659

; <label>:1656:                                   ; preds = %1594, %1640
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1657 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1657, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1598, %struct.TValue* %1601, %union.StackValue* %4530, i32 0, i32 12) #8
  %1658 = load i32, i32* %21, align 8, !tbaa !6
  br label %1659

; <label>:1659:                                   ; preds = %1650, %1656, %1629
  %1660 = phi i32 [ %4525, %1629 ], [ %4525, %1650 ], [ %1658, %1656 ]
  %1661 = icmp eq i32 %1660, 0
  br i1 %1661, label %1666, label %1662

; <label>:1662:                                   ; preds = %1659
  %1663 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1664 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1665 = getelementptr inbounds %union.StackValue, %union.StackValue* %1664, i64 1
  br label %1666

; <label>:1666:                                   ; preds = %1659, %1662
  %1667 = phi i32 [ %1663, %1662 ], [ 0, %1659 ]
  %1668 = phi %union.StackValue* [ %1665, %1662 ], [ %4524, %1659 ]
  %1669 = getelementptr inbounds i32, i32* %4526, i64 1
  %1670 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1671:                                   ; preds = %4522
  %1672 = lshr i32 %4523, 16
  %1673 = and i32 %1672, 255
  %1674 = zext i32 %1673 to i64
  %1675 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1674, i32 0
  %1676 = lshr i32 %4523, 24
  %1677 = zext i32 %1676 to i64
  %1678 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1677, i32 0
  %1679 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1674, i32 0, i32 1
  %1680 = load i8, i8* %1679, align 8, !tbaa !2
  switch i8 %1680, label %1715 [
    i8 35, label %1681
    i8 19, label %1693
  ]

; <label>:1681:                                   ; preds = %1671
  %1682 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1677, i32 0, i32 1
  %1683 = load i8, i8* %1682, align 8, !tbaa !2
  %1684 = icmp eq i8 %1683, 35
  %1685 = bitcast %struct.TValue* %1675 to i64*
  %1686 = load i64, i64* %1685, align 8, !tbaa !6
  br i1 %1684, label %1687, label %1698

; <label>:1687:                                   ; preds = %1681
  %1688 = bitcast %struct.TValue* %1678 to i64*
  %1689 = load i64, i64* %1688, align 8, !tbaa !6
  %1690 = add i64 %1689, %1686
  %1691 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1690, i64* %1691, align 8, !tbaa !6
  %1692 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1692, align 8, !tbaa !2
  br label %1718

; <label>:1693:                                   ; preds = %1671
  %1694 = bitcast %struct.TValue* %1675 to double*
  %1695 = load double, double* %1694, align 8, !tbaa !6
  %1696 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1677, i32 0, i32 1
  %1697 = load i8, i8* %1696, align 8, !tbaa !2
  br label %1700

; <label>:1698:                                   ; preds = %1681
  %1699 = sitofp i64 %1686 to double
  br label %1700

; <label>:1700:                                   ; preds = %1693, %1698
  %1701 = phi i8 [ %1697, %1693 ], [ %1683, %1698 ]
  %1702 = phi double [ %1695, %1693 ], [ %1699, %1698 ]
  switch i8 %1701, label %1715 [
    i8 19, label %1703
    i8 35, label %1706
  ]

; <label>:1703:                                   ; preds = %1700
  %1704 = bitcast %struct.TValue* %1678 to double*
  %1705 = load double, double* %1704, align 8, !tbaa !6
  br label %1710

; <label>:1706:                                   ; preds = %1700
  %1707 = bitcast %struct.TValue* %1678 to i64*
  %1708 = load i64, i64* %1707, align 8, !tbaa !6
  %1709 = sitofp i64 %1708 to double
  br label %1710

; <label>:1710:                                   ; preds = %1703, %1706
  %1711 = phi double [ %1705, %1703 ], [ %1709, %1706 ]
  %1712 = fadd fast double %1711, %1702
  %1713 = bitcast %union.StackValue* %4530 to double*
  store double %1712, double* %1713, align 8, !tbaa !6
  %1714 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1714, align 8, !tbaa !2
  br label %1718

; <label>:1715:                                   ; preds = %1671, %1700
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1716 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1716, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1675, %struct.TValue* %1678, %union.StackValue* %4530, i32 6) #8
  %1717 = load i32, i32* %21, align 8, !tbaa !6
  br label %1718

; <label>:1718:                                   ; preds = %1710, %1715, %1687
  %1719 = phi i32 [ %4525, %1687 ], [ %4525, %1710 ], [ %1717, %1715 ]
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1725, label %1721

; <label>:1721:                                   ; preds = %1718
  %1722 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1723 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1724 = getelementptr inbounds %union.StackValue, %union.StackValue* %1723, i64 1
  br label %1725

; <label>:1725:                                   ; preds = %1718, %1721
  %1726 = phi i32 [ %1722, %1721 ], [ 0, %1718 ]
  %1727 = phi %union.StackValue* [ %1724, %1721 ], [ %4524, %1718 ]
  %1728 = getelementptr inbounds i32, i32* %4526, i64 1
  %1729 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1730:                                   ; preds = %4522
  %1731 = lshr i32 %4523, 16
  %1732 = and i32 %1731, 255
  %1733 = zext i32 %1732 to i64
  %1734 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1733, i32 0
  %1735 = lshr i32 %4523, 24
  %1736 = zext i32 %1735 to i64
  %1737 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1736, i32 0
  %1738 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1733, i32 0, i32 1
  %1739 = load i8, i8* %1738, align 8, !tbaa !2
  switch i8 %1739, label %1774 [
    i8 35, label %1740
    i8 19, label %1752
  ]

; <label>:1740:                                   ; preds = %1730
  %1741 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1736, i32 0, i32 1
  %1742 = load i8, i8* %1741, align 8, !tbaa !2
  %1743 = icmp eq i8 %1742, 35
  %1744 = bitcast %struct.TValue* %1734 to i64*
  %1745 = load i64, i64* %1744, align 8, !tbaa !6
  br i1 %1743, label %1746, label %1757

; <label>:1746:                                   ; preds = %1740
  %1747 = bitcast %struct.TValue* %1737 to i64*
  %1748 = load i64, i64* %1747, align 8, !tbaa !6
  %1749 = sub i64 %1745, %1748
  %1750 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1749, i64* %1750, align 8, !tbaa !6
  %1751 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1751, align 8, !tbaa !2
  br label %1777

; <label>:1752:                                   ; preds = %1730
  %1753 = bitcast %struct.TValue* %1734 to double*
  %1754 = load double, double* %1753, align 8, !tbaa !6
  %1755 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1736, i32 0, i32 1
  %1756 = load i8, i8* %1755, align 8, !tbaa !2
  br label %1759

; <label>:1757:                                   ; preds = %1740
  %1758 = sitofp i64 %1745 to double
  br label %1759

; <label>:1759:                                   ; preds = %1752, %1757
  %1760 = phi i8 [ %1756, %1752 ], [ %1742, %1757 ]
  %1761 = phi double [ %1754, %1752 ], [ %1758, %1757 ]
  switch i8 %1760, label %1774 [
    i8 19, label %1762
    i8 35, label %1765
  ]

; <label>:1762:                                   ; preds = %1759
  %1763 = bitcast %struct.TValue* %1737 to double*
  %1764 = load double, double* %1763, align 8, !tbaa !6
  br label %1769

; <label>:1765:                                   ; preds = %1759
  %1766 = bitcast %struct.TValue* %1737 to i64*
  %1767 = load i64, i64* %1766, align 8, !tbaa !6
  %1768 = sitofp i64 %1767 to double
  br label %1769

; <label>:1769:                                   ; preds = %1762, %1765
  %1770 = phi double [ %1764, %1762 ], [ %1768, %1765 ]
  %1771 = fsub fast double %1761, %1770
  %1772 = bitcast %union.StackValue* %4530 to double*
  store double %1771, double* %1772, align 8, !tbaa !6
  %1773 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1773, align 8, !tbaa !2
  br label %1777

; <label>:1774:                                   ; preds = %1730, %1759
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1775 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1775, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1734, %struct.TValue* %1737, %union.StackValue* %4530, i32 7) #8
  %1776 = load i32, i32* %21, align 8, !tbaa !6
  br label %1777

; <label>:1777:                                   ; preds = %1769, %1774, %1746
  %1778 = phi i32 [ %4525, %1746 ], [ %4525, %1769 ], [ %1776, %1774 ]
  %1779 = icmp eq i32 %1778, 0
  br i1 %1779, label %1784, label %1780

; <label>:1780:                                   ; preds = %1777
  %1781 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1782 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1783 = getelementptr inbounds %union.StackValue, %union.StackValue* %1782, i64 1
  br label %1784

; <label>:1784:                                   ; preds = %1777, %1780
  %1785 = phi i32 [ %1781, %1780 ], [ 0, %1777 ]
  %1786 = phi %union.StackValue* [ %1783, %1780 ], [ %4524, %1777 ]
  %1787 = getelementptr inbounds i32, i32* %4526, i64 1
  %1788 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1789:                                   ; preds = %4522
  %1790 = lshr i32 %4523, 16
  %1791 = and i32 %1790, 255
  %1792 = zext i32 %1791 to i64
  %1793 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1792, i32 0
  %1794 = lshr i32 %4523, 24
  %1795 = zext i32 %1794 to i64
  %1796 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1795, i32 0
  %1797 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1792, i32 0, i32 1
  %1798 = load i8, i8* %1797, align 8, !tbaa !2
  switch i8 %1798, label %1833 [
    i8 35, label %1799
    i8 19, label %1811
  ]

; <label>:1799:                                   ; preds = %1789
  %1800 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1795, i32 0, i32 1
  %1801 = load i8, i8* %1800, align 8, !tbaa !2
  %1802 = icmp eq i8 %1801, 35
  %1803 = bitcast %struct.TValue* %1793 to i64*
  %1804 = load i64, i64* %1803, align 8, !tbaa !6
  br i1 %1802, label %1805, label %1816

; <label>:1805:                                   ; preds = %1799
  %1806 = bitcast %struct.TValue* %1796 to i64*
  %1807 = load i64, i64* %1806, align 8, !tbaa !6
  %1808 = mul i64 %1807, %1804
  %1809 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1808, i64* %1809, align 8, !tbaa !6
  %1810 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1810, align 8, !tbaa !2
  br label %1836

; <label>:1811:                                   ; preds = %1789
  %1812 = bitcast %struct.TValue* %1793 to double*
  %1813 = load double, double* %1812, align 8, !tbaa !6
  %1814 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1795, i32 0, i32 1
  %1815 = load i8, i8* %1814, align 8, !tbaa !2
  br label %1818

; <label>:1816:                                   ; preds = %1799
  %1817 = sitofp i64 %1804 to double
  br label %1818

; <label>:1818:                                   ; preds = %1811, %1816
  %1819 = phi i8 [ %1815, %1811 ], [ %1801, %1816 ]
  %1820 = phi double [ %1813, %1811 ], [ %1817, %1816 ]
  switch i8 %1819, label %1833 [
    i8 19, label %1821
    i8 35, label %1824
  ]

; <label>:1821:                                   ; preds = %1818
  %1822 = bitcast %struct.TValue* %1796 to double*
  %1823 = load double, double* %1822, align 8, !tbaa !6
  br label %1828

; <label>:1824:                                   ; preds = %1818
  %1825 = bitcast %struct.TValue* %1796 to i64*
  %1826 = load i64, i64* %1825, align 8, !tbaa !6
  %1827 = sitofp i64 %1826 to double
  br label %1828

; <label>:1828:                                   ; preds = %1821, %1824
  %1829 = phi double [ %1823, %1821 ], [ %1827, %1824 ]
  %1830 = fmul fast double %1829, %1820
  %1831 = bitcast %union.StackValue* %4530 to double*
  store double %1830, double* %1831, align 8, !tbaa !6
  %1832 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1832, align 8, !tbaa !2
  br label %1836

; <label>:1833:                                   ; preds = %1789, %1818
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1834 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1834, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1793, %struct.TValue* %1796, %union.StackValue* %4530, i32 8) #8
  %1835 = load i32, i32* %21, align 8, !tbaa !6
  br label %1836

; <label>:1836:                                   ; preds = %1828, %1833, %1805
  %1837 = phi i32 [ %4525, %1805 ], [ %4525, %1828 ], [ %1835, %1833 ]
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1843, label %1839

; <label>:1839:                                   ; preds = %1836
  %1840 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1841 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1842 = getelementptr inbounds %union.StackValue, %union.StackValue* %1841, i64 1
  br label %1843

; <label>:1843:                                   ; preds = %1836, %1839
  %1844 = phi i32 [ %1840, %1839 ], [ 0, %1836 ]
  %1845 = phi %union.StackValue* [ %1842, %1839 ], [ %4524, %1836 ]
  %1846 = getelementptr inbounds i32, i32* %4526, i64 1
  %1847 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1848:                                   ; preds = %4522
  %1849 = lshr i32 %4523, 16
  %1850 = and i32 %1849, 255
  %1851 = zext i32 %1850 to i64
  %1852 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1851, i32 0
  %1853 = lshr i32 %4523, 24
  %1854 = zext i32 %1853 to i64
  %1855 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1854, i32 0
  %1856 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1851, i32 0, i32 1
  %1857 = load i8, i8* %1856, align 8, !tbaa !2
  switch i8 %1857, label %1917 [
    i8 35, label %1858
    i8 19, label %1884
  ]

; <label>:1858:                                   ; preds = %1848
  %1859 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1854, i32 0, i32 1
  %1860 = load i8, i8* %1859, align 8, !tbaa !2
  %1861 = icmp eq i8 %1860, 35
  %1862 = bitcast %struct.TValue* %1852 to i64*
  %1863 = load i64, i64* %1862, align 8, !tbaa !6
  br i1 %1861, label %1864, label %1889

; <label>:1864:                                   ; preds = %1858
  %1865 = bitcast %struct.TValue* %1855 to i64*
  %1866 = load i64, i64* %1865, align 8, !tbaa !6
  %1867 = add i64 %1866, 1
  %1868 = icmp ult i64 %1867, 2
  br i1 %1868, label %1869, label %1872, !prof !11

; <label>:1869:                                   ; preds = %1864
  %1870 = icmp eq i64 %1866, 0
  br i1 %1870, label %1871, label %1880

; <label>:1871:                                   ; preds = %1869
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #9
  unreachable

; <label>:1872:                                   ; preds = %1864
  %1873 = srem i64 %1863, %1866
  %1874 = icmp ne i64 %1873, 0
  %1875 = xor i64 %1873, %1866
  %1876 = icmp slt i64 %1875, 0
  %1877 = and i1 %1874, %1876
  %1878 = select i1 %1877, i64 %1866, i64 0
  %1879 = add nsw i64 %1878, %1873
  br label %1880

; <label>:1880:                                   ; preds = %1869, %1872
  %1881 = phi i64 [ 0, %1869 ], [ %1879, %1872 ]
  %1882 = bitcast %union.StackValue* %4530 to i64*
  store i64 %1881, i64* %1882, align 8, !tbaa !6
  %1883 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %1883, align 8, !tbaa !2
  br label %1920

; <label>:1884:                                   ; preds = %1848
  %1885 = bitcast %struct.TValue* %1852 to double*
  %1886 = load double, double* %1885, align 8, !tbaa !6
  %1887 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1854, i32 0, i32 1
  %1888 = load i8, i8* %1887, align 8, !tbaa !2
  br label %1891

; <label>:1889:                                   ; preds = %1858
  %1890 = sitofp i64 %1863 to double
  br label %1891

; <label>:1891:                                   ; preds = %1884, %1889
  %1892 = phi i8 [ %1888, %1884 ], [ %1860, %1889 ]
  %1893 = phi double [ %1886, %1884 ], [ %1890, %1889 ]
  switch i8 %1892, label %1917 [
    i8 19, label %1894
    i8 35, label %1897
  ]

; <label>:1894:                                   ; preds = %1891
  %1895 = bitcast %struct.TValue* %1855 to double*
  %1896 = load double, double* %1895, align 8, !tbaa !6
  br label %1901

; <label>:1897:                                   ; preds = %1891
  %1898 = bitcast %struct.TValue* %1855 to i64*
  %1899 = load i64, i64* %1898, align 8, !tbaa !6
  %1900 = sitofp i64 %1899 to double
  br label %1901

; <label>:1901:                                   ; preds = %1894, %1897
  %1902 = phi double [ %1896, %1894 ], [ %1900, %1897 ]
  %1903 = frem fast double %1893, %1902
  %1904 = fcmp fast ogt double %1903, 0.000000e+00
  br i1 %1904, label %1905, label %1907

; <label>:1905:                                   ; preds = %1901
  %1906 = fcmp fast olt double %1902, 0.000000e+00
  br i1 %1906, label %1911, label %1913

; <label>:1907:                                   ; preds = %1901
  %1908 = fcmp fast olt double %1903, 0.000000e+00
  %1909 = fcmp fast ogt double %1902, 0.000000e+00
  %1910 = and i1 %1909, %1908
  br i1 %1910, label %1911, label %1913

; <label>:1911:                                   ; preds = %1907, %1905
  %1912 = fadd fast double %1903, %1902
  br label %1913

; <label>:1913:                                   ; preds = %1905, %1907, %1911
  %1914 = phi double [ %1912, %1911 ], [ %1903, %1905 ], [ %1903, %1907 ]
  %1915 = bitcast %union.StackValue* %4530 to double*
  store double %1914, double* %1915, align 8, !tbaa !6
  %1916 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1916, align 8, !tbaa !2
  br label %1920

; <label>:1917:                                   ; preds = %1848, %1891
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1918 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1918, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1852, %struct.TValue* %1855, %union.StackValue* %4530, i32 9) #8
  %1919 = load i32, i32* %21, align 8, !tbaa !6
  br label %1920

; <label>:1920:                                   ; preds = %1913, %1917, %1880
  %1921 = phi i32 [ %4525, %1880 ], [ %4525, %1913 ], [ %1919, %1917 ]
  %1922 = icmp eq i32 %1921, 0
  br i1 %1922, label %1927, label %1923

; <label>:1923:                                   ; preds = %1920
  %1924 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1925 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1926 = getelementptr inbounds %union.StackValue, %union.StackValue* %1925, i64 1
  br label %1927

; <label>:1927:                                   ; preds = %1920, %1923
  %1928 = phi i32 [ %1924, %1923 ], [ 0, %1920 ]
  %1929 = phi %union.StackValue* [ %1926, %1923 ], [ %4524, %1920 ]
  %1930 = getelementptr inbounds i32, i32* %4526, i64 1
  %1931 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1932:                                   ; preds = %4522
  %1933 = lshr i32 %4523, 16
  %1934 = and i32 %1933, 255
  %1935 = zext i32 %1934 to i64
  %1936 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1935, i32 0
  %1937 = lshr i32 %4523, 24
  %1938 = zext i32 %1937 to i64
  %1939 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1938, i32 0
  %1940 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1935, i32 0, i32 1
  %1941 = load i8, i8* %1940, align 8, !tbaa !2
  switch i8 %1941, label %1965 [
    i8 19, label %1942
    i8 35, label %1945
  ]

; <label>:1942:                                   ; preds = %1932
  %1943 = bitcast %struct.TValue* %1936 to double*
  %1944 = load double, double* %1943, align 8, !tbaa !6
  br label %1949

; <label>:1945:                                   ; preds = %1932
  %1946 = bitcast %struct.TValue* %1936 to i64*
  %1947 = load i64, i64* %1946, align 8, !tbaa !6
  %1948 = sitofp i64 %1947 to double
  br label %1949

; <label>:1949:                                   ; preds = %1942, %1945
  %1950 = phi double [ %1944, %1942 ], [ %1948, %1945 ]
  %1951 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1938, i32 0, i32 1
  %1952 = load i8, i8* %1951, align 8, !tbaa !2
  switch i8 %1952, label %1965 [
    i8 19, label %1953
    i8 35, label %1956
  ]

; <label>:1953:                                   ; preds = %1949
  %1954 = bitcast %struct.TValue* %1939 to double*
  %1955 = load double, double* %1954, align 8, !tbaa !6
  br label %1960

; <label>:1956:                                   ; preds = %1949
  %1957 = bitcast %struct.TValue* %1939 to i64*
  %1958 = load i64, i64* %1957, align 8, !tbaa !6
  %1959 = sitofp i64 %1958 to double
  br label %1960

; <label>:1960:                                   ; preds = %1953, %1956
  %1961 = phi double [ %1955, %1953 ], [ %1959, %1956 ]
  %1962 = call fast double @llvm.pow.f64(double %1950, double %1961)
  %1963 = bitcast %union.StackValue* %4530 to double*
  store double %1962, double* %1963, align 8, !tbaa !6
  %1964 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %1964, align 8, !tbaa !2
  br label %1968

; <label>:1965:                                   ; preds = %1949, %1932
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %1966 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %1966, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1936, %struct.TValue* %1939, %union.StackValue* %4530, i32 10) #8
  %1967 = load i32, i32* %21, align 8, !tbaa !6
  br label %1968

; <label>:1968:                                   ; preds = %1965, %1960
  %1969 = phi i32 [ %4525, %1960 ], [ %1967, %1965 ]
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %1975, label %1971

; <label>:1971:                                   ; preds = %1968
  %1972 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %1973 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %1974 = getelementptr inbounds %union.StackValue, %union.StackValue* %1973, i64 1
  br label %1975

; <label>:1975:                                   ; preds = %1968, %1971
  %1976 = phi i32 [ %1972, %1971 ], [ 0, %1968 ]
  %1977 = phi %union.StackValue* [ %1974, %1971 ], [ %4524, %1968 ]
  %1978 = getelementptr inbounds i32, i32* %4526, i64 1
  %1979 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:1980:                                   ; preds = %4522
  %1981 = lshr i32 %4523, 16
  %1982 = and i32 %1981, 255
  %1983 = zext i32 %1982 to i64
  %1984 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1983, i32 0
  %1985 = lshr i32 %4523, 24
  %1986 = zext i32 %1985 to i64
  %1987 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1986, i32 0
  %1988 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1983, i32 0, i32 1
  %1989 = load i8, i8* %1988, align 8, !tbaa !2
  switch i8 %1989, label %2013 [
    i8 19, label %1990
    i8 35, label %1993
  ]

; <label>:1990:                                   ; preds = %1980
  %1991 = bitcast %struct.TValue* %1984 to double*
  %1992 = load double, double* %1991, align 8, !tbaa !6
  br label %1997

; <label>:1993:                                   ; preds = %1980
  %1994 = bitcast %struct.TValue* %1984 to i64*
  %1995 = load i64, i64* %1994, align 8, !tbaa !6
  %1996 = sitofp i64 %1995 to double
  br label %1997

; <label>:1997:                                   ; preds = %1990, %1993
  %1998 = phi double [ %1992, %1990 ], [ %1996, %1993 ]
  %1999 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %1986, i32 0, i32 1
  %2000 = load i8, i8* %1999, align 8, !tbaa !2
  switch i8 %2000, label %2013 [
    i8 19, label %2001
    i8 35, label %2004
  ]

; <label>:2001:                                   ; preds = %1997
  %2002 = bitcast %struct.TValue* %1987 to double*
  %2003 = load double, double* %2002, align 8, !tbaa !6
  br label %2008

; <label>:2004:                                   ; preds = %1997
  %2005 = bitcast %struct.TValue* %1987 to i64*
  %2006 = load i64, i64* %2005, align 8, !tbaa !6
  %2007 = sitofp i64 %2006 to double
  br label %2008

; <label>:2008:                                   ; preds = %2001, %2004
  %2009 = phi double [ %2003, %2001 ], [ %2007, %2004 ]
  %2010 = fdiv fast double %1998, %2009
  %2011 = bitcast %union.StackValue* %4530 to double*
  store double %2010, double* %2011, align 8, !tbaa !6
  %2012 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %2012, align 8, !tbaa !2
  br label %2016

; <label>:2013:                                   ; preds = %1997, %1980
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2014 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2014, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1984, %struct.TValue* %1987, %union.StackValue* %4530, i32 11) #8
  %2015 = load i32, i32* %21, align 8, !tbaa !6
  br label %2016

; <label>:2016:                                   ; preds = %2013, %2008
  %2017 = phi i32 [ %4525, %2008 ], [ %2015, %2013 ]
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2023, label %2019

; <label>:2019:                                   ; preds = %2016
  %2020 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2021 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2022 = getelementptr inbounds %union.StackValue, %union.StackValue* %2021, i64 1
  br label %2023

; <label>:2023:                                   ; preds = %2016, %2019
  %2024 = phi i32 [ %2020, %2019 ], [ 0, %2016 ]
  %2025 = phi %union.StackValue* [ %2022, %2019 ], [ %4524, %2016 ]
  %2026 = getelementptr inbounds i32, i32* %4526, i64 1
  %2027 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2028:                                   ; preds = %4522
  %2029 = lshr i32 %4523, 16
  %2030 = and i32 %2029, 255
  %2031 = zext i32 %2030 to i64
  %2032 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2031, i32 0
  %2033 = lshr i32 %4523, 24
  %2034 = zext i32 %2033 to i64
  %2035 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2034, i32 0
  %2036 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2031, i32 0, i32 1
  %2037 = load i8, i8* %2036, align 8, !tbaa !2
  switch i8 %2037, label %2090 [
    i8 35, label %2038
    i8 19, label %2067
  ]

; <label>:2038:                                   ; preds = %2028
  %2039 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2034, i32 0, i32 1
  %2040 = load i8, i8* %2039, align 8, !tbaa !2
  %2041 = icmp eq i8 %2040, 35
  %2042 = bitcast %struct.TValue* %2032 to i64*
  %2043 = load i64, i64* %2042, align 8, !tbaa !6
  br i1 %2041, label %2044, label %2072

; <label>:2044:                                   ; preds = %2038
  %2045 = bitcast %struct.TValue* %2035 to i64*
  %2046 = load i64, i64* %2045, align 8, !tbaa !6
  %2047 = add i64 %2046, 1
  %2048 = icmp ult i64 %2047, 2
  br i1 %2048, label %2049, label %2054, !prof !11

; <label>:2049:                                   ; preds = %2044
  %2050 = icmp eq i64 %2046, 0
  br i1 %2050, label %2051, label %2052

; <label>:2051:                                   ; preds = %2049
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0)) #9
  unreachable

; <label>:2052:                                   ; preds = %2049
  %2053 = sub i64 0, %2043
  br label %2063

; <label>:2054:                                   ; preds = %2044
  %2055 = sdiv i64 %2043, %2046
  %2056 = srem i64 %2043, %2046
  %2057 = xor i64 %2046, %2043
  %2058 = icmp slt i64 %2057, 0
  br i1 %2058, label %2059, label %2063

; <label>:2059:                                   ; preds = %2054
  %2060 = icmp ne i64 %2056, 0
  %2061 = sext i1 %2060 to i64
  %2062 = add nsw i64 %2055, %2061
  br label %2063

; <label>:2063:                                   ; preds = %2052, %2054, %2059
  %2064 = phi i64 [ %2062, %2059 ], [ %2053, %2052 ], [ %2055, %2054 ]
  %2065 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2064, i64* %2065, align 8, !tbaa !6
  %2066 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2066, align 8, !tbaa !2
  br label %2093

; <label>:2067:                                   ; preds = %2028
  %2068 = bitcast %struct.TValue* %2032 to double*
  %2069 = load double, double* %2068, align 8, !tbaa !6
  %2070 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2034, i32 0, i32 1
  %2071 = load i8, i8* %2070, align 8, !tbaa !2
  br label %2074

; <label>:2072:                                   ; preds = %2038
  %2073 = sitofp i64 %2043 to double
  br label %2074

; <label>:2074:                                   ; preds = %2067, %2072
  %2075 = phi i8 [ %2071, %2067 ], [ %2040, %2072 ]
  %2076 = phi double [ %2069, %2067 ], [ %2073, %2072 ]
  switch i8 %2075, label %2090 [
    i8 19, label %2077
    i8 35, label %2080
  ]

; <label>:2077:                                   ; preds = %2074
  %2078 = bitcast %struct.TValue* %2035 to double*
  %2079 = load double, double* %2078, align 8, !tbaa !6
  br label %2084

; <label>:2080:                                   ; preds = %2074
  %2081 = bitcast %struct.TValue* %2035 to i64*
  %2082 = load i64, i64* %2081, align 8, !tbaa !6
  %2083 = sitofp i64 %2082 to double
  br label %2084

; <label>:2084:                                   ; preds = %2077, %2080
  %2085 = phi double [ %2079, %2077 ], [ %2083, %2080 ]
  %2086 = fdiv fast double %2076, %2085
  %2087 = call fast double @llvm.floor.f64(double %2086)
  %2088 = bitcast %union.StackValue* %4530 to double*
  store double %2087, double* %2088, align 8, !tbaa !6
  %2089 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %2089, align 8, !tbaa !2
  br label %2093

; <label>:2090:                                   ; preds = %2028, %2074
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2091 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2091, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2032, %struct.TValue* %2035, %union.StackValue* %4530, i32 12) #8
  %2092 = load i32, i32* %21, align 8, !tbaa !6
  br label %2093

; <label>:2093:                                   ; preds = %2084, %2090, %2063
  %2094 = phi i32 [ %4525, %2063 ], [ %4525, %2084 ], [ %2092, %2090 ]
  %2095 = icmp eq i32 %2094, 0
  br i1 %2095, label %2100, label %2096

; <label>:2096:                                   ; preds = %2093
  %2097 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2098 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2099 = getelementptr inbounds %union.StackValue, %union.StackValue* %2098, i64 1
  br label %2100

; <label>:2100:                                   ; preds = %2093, %2096
  %2101 = phi i32 [ %2097, %2096 ], [ 0, %2093 ]
  %2102 = phi %union.StackValue* [ %2099, %2096 ], [ %4524, %2093 ]
  %2103 = getelementptr inbounds i32, i32* %4526, i64 1
  %2104 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2105:                                   ; preds = %4522
  %2106 = lshr i32 %4523, 16
  %2107 = and i32 %2106, 255
  %2108 = zext i32 %2107 to i64
  %2109 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2108, i32 0
  %2110 = lshr i32 %4523, 24
  %2111 = zext i32 %2110 to i64
  %2112 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %2111, i32 0
  %2113 = bitcast %union.Value* %2112 to i64*
  %2114 = load i64, i64* %2113, align 8, !tbaa !6
  %2115 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2108, i32 0, i32 1
  %2116 = load i8, i8* %2115, align 8, !tbaa !2
  switch i8 %2116, label %2136 [
    i8 35, label %2117
    i8 19, label %2120
  ]

; <label>:2117:                                   ; preds = %2105
  %2118 = bitcast %struct.TValue* %2109 to i64*
  %2119 = load i64, i64* %2118, align 8, !tbaa !6
  br label %2131

; <label>:2120:                                   ; preds = %2105
  %2121 = bitcast %struct.TValue* %2109 to double*
  %2122 = load double, double* %2121, align 8, !tbaa !6
  %2123 = call fast double @llvm.floor.f64(double %2122) #8
  %2124 = fcmp fast une double %2123, %2122
  br i1 %2124, label %2136, label %2125

; <label>:2125:                                   ; preds = %2120
  %2126 = fcmp fast oge double %2123, 0xC3E0000000000000
  %2127 = fcmp fast olt double %2123, 0x43E0000000000000
  %2128 = and i1 %2126, %2127
  br i1 %2128, label %2129, label %2136

; <label>:2129:                                   ; preds = %2125
  %2130 = fptosi double %2123 to i64
  br label %2131

; <label>:2131:                                   ; preds = %2129, %2117
  %2132 = phi i64 [ %2119, %2117 ], [ %2130, %2129 ]
  %2133 = and i64 %2132, %2114
  %2134 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2133, i64* %2134, align 8, !tbaa !6
  %2135 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2135, align 8, !tbaa !2
  br label %2140

; <label>:2136:                                   ; preds = %2105, %2125, %2120
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2137 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2137, i64* %19, align 8, !tbaa !28
  %2138 = and i32 %4523, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2109, i64 %2114, i32 %2138, %union.StackValue* %4530, i32 13) #8
  %2139 = load i32, i32* %21, align 8, !tbaa !6
  br label %2140

; <label>:2140:                                   ; preds = %2136, %2131
  %2141 = phi i32 [ %4525, %2131 ], [ %2139, %2136 ]
  %2142 = icmp eq i32 %2141, 0
  br i1 %2142, label %2147, label %2143

; <label>:2143:                                   ; preds = %2140
  %2144 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2145 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2146 = getelementptr inbounds %union.StackValue, %union.StackValue* %2145, i64 1
  br label %2147

; <label>:2147:                                   ; preds = %2140, %2143
  %2148 = phi i32 [ %2144, %2143 ], [ 0, %2140 ]
  %2149 = phi %union.StackValue* [ %2146, %2143 ], [ %4524, %2140 ]
  %2150 = getelementptr inbounds i32, i32* %4526, i64 1
  %2151 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2152:                                   ; preds = %4522
  %2153 = lshr i32 %4523, 16
  %2154 = and i32 %2153, 255
  %2155 = zext i32 %2154 to i64
  %2156 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2155, i32 0
  %2157 = lshr i32 %4523, 24
  %2158 = zext i32 %2157 to i64
  %2159 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %2158, i32 0
  %2160 = bitcast %union.Value* %2159 to i64*
  %2161 = load i64, i64* %2160, align 8, !tbaa !6
  %2162 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2155, i32 0, i32 1
  %2163 = load i8, i8* %2162, align 8, !tbaa !2
  switch i8 %2163, label %2183 [
    i8 35, label %2164
    i8 19, label %2167
  ]

; <label>:2164:                                   ; preds = %2152
  %2165 = bitcast %struct.TValue* %2156 to i64*
  %2166 = load i64, i64* %2165, align 8, !tbaa !6
  br label %2178

; <label>:2167:                                   ; preds = %2152
  %2168 = bitcast %struct.TValue* %2156 to double*
  %2169 = load double, double* %2168, align 8, !tbaa !6
  %2170 = call fast double @llvm.floor.f64(double %2169) #8
  %2171 = fcmp fast une double %2170, %2169
  br i1 %2171, label %2183, label %2172

; <label>:2172:                                   ; preds = %2167
  %2173 = fcmp fast oge double %2170, 0xC3E0000000000000
  %2174 = fcmp fast olt double %2170, 0x43E0000000000000
  %2175 = and i1 %2173, %2174
  br i1 %2175, label %2176, label %2183

; <label>:2176:                                   ; preds = %2172
  %2177 = fptosi double %2170 to i64
  br label %2178

; <label>:2178:                                   ; preds = %2176, %2164
  %2179 = phi i64 [ %2166, %2164 ], [ %2177, %2176 ]
  %2180 = or i64 %2179, %2161
  %2181 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2180, i64* %2181, align 8, !tbaa !6
  %2182 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2182, align 8, !tbaa !2
  br label %2187

; <label>:2183:                                   ; preds = %2152, %2172, %2167
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2184 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2184, i64* %19, align 8, !tbaa !28
  %2185 = and i32 %4523, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2156, i64 %2161, i32 %2185, %union.StackValue* %4530, i32 14) #8
  %2186 = load i32, i32* %21, align 8, !tbaa !6
  br label %2187

; <label>:2187:                                   ; preds = %2183, %2178
  %2188 = phi i32 [ %4525, %2178 ], [ %2186, %2183 ]
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2194, label %2190

; <label>:2190:                                   ; preds = %2187
  %2191 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2192 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2193 = getelementptr inbounds %union.StackValue, %union.StackValue* %2192, i64 1
  br label %2194

; <label>:2194:                                   ; preds = %2187, %2190
  %2195 = phi i32 [ %2191, %2190 ], [ 0, %2187 ]
  %2196 = phi %union.StackValue* [ %2193, %2190 ], [ %4524, %2187 ]
  %2197 = getelementptr inbounds i32, i32* %4526, i64 1
  %2198 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2199:                                   ; preds = %4522
  %2200 = lshr i32 %4523, 16
  %2201 = and i32 %2200, 255
  %2202 = zext i32 %2201 to i64
  %2203 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2202, i32 0
  %2204 = lshr i32 %4523, 24
  %2205 = zext i32 %2204 to i64
  %2206 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %2205, i32 0
  %2207 = bitcast %union.Value* %2206 to i64*
  %2208 = load i64, i64* %2207, align 8, !tbaa !6
  %2209 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2202, i32 0, i32 1
  %2210 = load i8, i8* %2209, align 8, !tbaa !2
  switch i8 %2210, label %2230 [
    i8 35, label %2211
    i8 19, label %2214
  ]

; <label>:2211:                                   ; preds = %2199
  %2212 = bitcast %struct.TValue* %2203 to i64*
  %2213 = load i64, i64* %2212, align 8, !tbaa !6
  br label %2225

; <label>:2214:                                   ; preds = %2199
  %2215 = bitcast %struct.TValue* %2203 to double*
  %2216 = load double, double* %2215, align 8, !tbaa !6
  %2217 = call fast double @llvm.floor.f64(double %2216) #8
  %2218 = fcmp fast une double %2217, %2216
  br i1 %2218, label %2230, label %2219

; <label>:2219:                                   ; preds = %2214
  %2220 = fcmp fast oge double %2217, 0xC3E0000000000000
  %2221 = fcmp fast olt double %2217, 0x43E0000000000000
  %2222 = and i1 %2220, %2221
  br i1 %2222, label %2223, label %2230

; <label>:2223:                                   ; preds = %2219
  %2224 = fptosi double %2217 to i64
  br label %2225

; <label>:2225:                                   ; preds = %2223, %2211
  %2226 = phi i64 [ %2213, %2211 ], [ %2224, %2223 ]
  %2227 = xor i64 %2226, %2208
  %2228 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2227, i64* %2228, align 8, !tbaa !6
  %2229 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2229, align 8, !tbaa !2
  br label %2234

; <label>:2230:                                   ; preds = %2199, %2219, %2214
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2231 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2231, i64* %19, align 8, !tbaa !28
  %2232 = and i32 %4523, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2203, i64 %2208, i32 %2232, %union.StackValue* %4530, i32 15) #8
  %2233 = load i32, i32* %21, align 8, !tbaa !6
  br label %2234

; <label>:2234:                                   ; preds = %2230, %2225
  %2235 = phi i32 [ %4525, %2225 ], [ %2233, %2230 ]
  %2236 = icmp eq i32 %2235, 0
  br i1 %2236, label %2241, label %2237

; <label>:2237:                                   ; preds = %2234
  %2238 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2239 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2240 = getelementptr inbounds %union.StackValue, %union.StackValue* %2239, i64 1
  br label %2241

; <label>:2241:                                   ; preds = %2234, %2237
  %2242 = phi i32 [ %2238, %2237 ], [ 0, %2234 ]
  %2243 = phi %union.StackValue* [ %2240, %2237 ], [ %4524, %2234 ]
  %2244 = getelementptr inbounds i32, i32* %4526, i64 1
  %2245 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2246:                                   ; preds = %4522
  %2247 = lshr i32 %4523, 16
  %2248 = and i32 %2247, 255
  %2249 = zext i32 %2248 to i64
  %2250 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2249, i32 0
  %2251 = lshr i32 %4523, 24
  %2252 = zext i32 %2251 to i64
  %2253 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2252, i32 0
  %2254 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2249, i32 0, i32 1
  %2255 = load i8, i8* %2254, align 8, !tbaa !2
  switch i8 %2255, label %2293 [
    i8 35, label %2256
    i8 19, label %2259
  ]

; <label>:2256:                                   ; preds = %2246
  %2257 = bitcast %struct.TValue* %2250 to i64*
  %2258 = load i64, i64* %2257, align 8, !tbaa !6
  br label %2270

; <label>:2259:                                   ; preds = %2246
  %2260 = bitcast %struct.TValue* %2250 to double*
  %2261 = load double, double* %2260, align 8, !tbaa !6
  %2262 = call fast double @llvm.floor.f64(double %2261) #8
  %2263 = fcmp fast une double %2262, %2261
  br i1 %2263, label %2293, label %2264

; <label>:2264:                                   ; preds = %2259
  %2265 = fcmp fast oge double %2262, 0xC3E0000000000000
  %2266 = fcmp fast olt double %2262, 0x43E0000000000000
  %2267 = and i1 %2265, %2266
  br i1 %2267, label %2268, label %2293

; <label>:2268:                                   ; preds = %2264
  %2269 = fptosi double %2262 to i64
  br label %2270

; <label>:2270:                                   ; preds = %2268, %2256
  %2271 = phi i64 [ %2258, %2256 ], [ %2269, %2268 ]
  %2272 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2252, i32 0, i32 1
  %2273 = load i8, i8* %2272, align 8, !tbaa !2
  switch i8 %2273, label %2293 [
    i8 35, label %2274
    i8 19, label %2277
  ]

; <label>:2274:                                   ; preds = %2270
  %2275 = bitcast %struct.TValue* %2253 to i64*
  %2276 = load i64, i64* %2275, align 8, !tbaa !6
  br label %2288

; <label>:2277:                                   ; preds = %2270
  %2278 = bitcast %struct.TValue* %2253 to double*
  %2279 = load double, double* %2278, align 8, !tbaa !6
  %2280 = call fast double @llvm.floor.f64(double %2279) #8
  %2281 = fcmp fast une double %2280, %2279
  br i1 %2281, label %2293, label %2282

; <label>:2282:                                   ; preds = %2277
  %2283 = fcmp fast oge double %2280, 0xC3E0000000000000
  %2284 = fcmp fast olt double %2280, 0x43E0000000000000
  %2285 = and i1 %2283, %2284
  br i1 %2285, label %2286, label %2293

; <label>:2286:                                   ; preds = %2282
  %2287 = fptosi double %2280 to i64
  br label %2288

; <label>:2288:                                   ; preds = %2286, %2274
  %2289 = phi i64 [ %2276, %2274 ], [ %2287, %2286 ]
  %2290 = and i64 %2289, %2271
  %2291 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2290, i64* %2291, align 8, !tbaa !6
  %2292 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2292, align 8, !tbaa !2
  br label %2296

; <label>:2293:                                   ; preds = %2270, %2246, %2277, %2282, %2259, %2264
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2294 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2294, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2250, %struct.TValue* nonnull %2253, %union.StackValue* %4530, i32 13) #8
  %2295 = load i32, i32* %21, align 8, !tbaa !6
  br label %2296

; <label>:2296:                                   ; preds = %2293, %2288
  %2297 = phi i32 [ %4525, %2288 ], [ %2295, %2293 ]
  %2298 = icmp eq i32 %2297, 0
  br i1 %2298, label %2303, label %2299

; <label>:2299:                                   ; preds = %2296
  %2300 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2301 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2302 = getelementptr inbounds %union.StackValue, %union.StackValue* %2301, i64 1
  br label %2303

; <label>:2303:                                   ; preds = %2296, %2299
  %2304 = phi i32 [ %2300, %2299 ], [ 0, %2296 ]
  %2305 = phi %union.StackValue* [ %2302, %2299 ], [ %4524, %2296 ]
  %2306 = getelementptr inbounds i32, i32* %4526, i64 1
  %2307 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2308:                                   ; preds = %4522
  %2309 = lshr i32 %4523, 16
  %2310 = and i32 %2309, 255
  %2311 = zext i32 %2310 to i64
  %2312 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2311, i32 0
  %2313 = lshr i32 %4523, 24
  %2314 = zext i32 %2313 to i64
  %2315 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2314, i32 0
  %2316 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2311, i32 0, i32 1
  %2317 = load i8, i8* %2316, align 8, !tbaa !2
  switch i8 %2317, label %2355 [
    i8 35, label %2318
    i8 19, label %2321
  ]

; <label>:2318:                                   ; preds = %2308
  %2319 = bitcast %struct.TValue* %2312 to i64*
  %2320 = load i64, i64* %2319, align 8, !tbaa !6
  br label %2332

; <label>:2321:                                   ; preds = %2308
  %2322 = bitcast %struct.TValue* %2312 to double*
  %2323 = load double, double* %2322, align 8, !tbaa !6
  %2324 = call fast double @llvm.floor.f64(double %2323) #8
  %2325 = fcmp fast une double %2324, %2323
  br i1 %2325, label %2355, label %2326

; <label>:2326:                                   ; preds = %2321
  %2327 = fcmp fast oge double %2324, 0xC3E0000000000000
  %2328 = fcmp fast olt double %2324, 0x43E0000000000000
  %2329 = and i1 %2327, %2328
  br i1 %2329, label %2330, label %2355

; <label>:2330:                                   ; preds = %2326
  %2331 = fptosi double %2324 to i64
  br label %2332

; <label>:2332:                                   ; preds = %2330, %2318
  %2333 = phi i64 [ %2320, %2318 ], [ %2331, %2330 ]
  %2334 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2314, i32 0, i32 1
  %2335 = load i8, i8* %2334, align 8, !tbaa !2
  switch i8 %2335, label %2355 [
    i8 35, label %2336
    i8 19, label %2339
  ]

; <label>:2336:                                   ; preds = %2332
  %2337 = bitcast %struct.TValue* %2315 to i64*
  %2338 = load i64, i64* %2337, align 8, !tbaa !6
  br label %2350

; <label>:2339:                                   ; preds = %2332
  %2340 = bitcast %struct.TValue* %2315 to double*
  %2341 = load double, double* %2340, align 8, !tbaa !6
  %2342 = call fast double @llvm.floor.f64(double %2341) #8
  %2343 = fcmp fast une double %2342, %2341
  br i1 %2343, label %2355, label %2344

; <label>:2344:                                   ; preds = %2339
  %2345 = fcmp fast oge double %2342, 0xC3E0000000000000
  %2346 = fcmp fast olt double %2342, 0x43E0000000000000
  %2347 = and i1 %2345, %2346
  br i1 %2347, label %2348, label %2355

; <label>:2348:                                   ; preds = %2344
  %2349 = fptosi double %2342 to i64
  br label %2350

; <label>:2350:                                   ; preds = %2348, %2336
  %2351 = phi i64 [ %2338, %2336 ], [ %2349, %2348 ]
  %2352 = or i64 %2351, %2333
  %2353 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2352, i64* %2353, align 8, !tbaa !6
  %2354 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2354, align 8, !tbaa !2
  br label %2358

; <label>:2355:                                   ; preds = %2332, %2308, %2339, %2344, %2321, %2326
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2356 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2356, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2312, %struct.TValue* nonnull %2315, %union.StackValue* %4530, i32 14) #8
  %2357 = load i32, i32* %21, align 8, !tbaa !6
  br label %2358

; <label>:2358:                                   ; preds = %2355, %2350
  %2359 = phi i32 [ %4525, %2350 ], [ %2357, %2355 ]
  %2360 = icmp eq i32 %2359, 0
  br i1 %2360, label %2365, label %2361

; <label>:2361:                                   ; preds = %2358
  %2362 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2363 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2364 = getelementptr inbounds %union.StackValue, %union.StackValue* %2363, i64 1
  br label %2365

; <label>:2365:                                   ; preds = %2358, %2361
  %2366 = phi i32 [ %2362, %2361 ], [ 0, %2358 ]
  %2367 = phi %union.StackValue* [ %2364, %2361 ], [ %4524, %2358 ]
  %2368 = getelementptr inbounds i32, i32* %4526, i64 1
  %2369 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2370:                                   ; preds = %4522
  %2371 = lshr i32 %4523, 16
  %2372 = and i32 %2371, 255
  %2373 = zext i32 %2372 to i64
  %2374 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2373, i32 0
  %2375 = lshr i32 %4523, 24
  %2376 = zext i32 %2375 to i64
  %2377 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2376, i32 0
  %2378 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2373, i32 0, i32 1
  %2379 = load i8, i8* %2378, align 8, !tbaa !2
  switch i8 %2379, label %2417 [
    i8 35, label %2380
    i8 19, label %2383
  ]

; <label>:2380:                                   ; preds = %2370
  %2381 = bitcast %struct.TValue* %2374 to i64*
  %2382 = load i64, i64* %2381, align 8, !tbaa !6
  br label %2394

; <label>:2383:                                   ; preds = %2370
  %2384 = bitcast %struct.TValue* %2374 to double*
  %2385 = load double, double* %2384, align 8, !tbaa !6
  %2386 = call fast double @llvm.floor.f64(double %2385) #8
  %2387 = fcmp fast une double %2386, %2385
  br i1 %2387, label %2417, label %2388

; <label>:2388:                                   ; preds = %2383
  %2389 = fcmp fast oge double %2386, 0xC3E0000000000000
  %2390 = fcmp fast olt double %2386, 0x43E0000000000000
  %2391 = and i1 %2389, %2390
  br i1 %2391, label %2392, label %2417

; <label>:2392:                                   ; preds = %2388
  %2393 = fptosi double %2386 to i64
  br label %2394

; <label>:2394:                                   ; preds = %2392, %2380
  %2395 = phi i64 [ %2382, %2380 ], [ %2393, %2392 ]
  %2396 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2376, i32 0, i32 1
  %2397 = load i8, i8* %2396, align 8, !tbaa !2
  switch i8 %2397, label %2417 [
    i8 35, label %2398
    i8 19, label %2401
  ]

; <label>:2398:                                   ; preds = %2394
  %2399 = bitcast %struct.TValue* %2377 to i64*
  %2400 = load i64, i64* %2399, align 8, !tbaa !6
  br label %2412

; <label>:2401:                                   ; preds = %2394
  %2402 = bitcast %struct.TValue* %2377 to double*
  %2403 = load double, double* %2402, align 8, !tbaa !6
  %2404 = call fast double @llvm.floor.f64(double %2403) #8
  %2405 = fcmp fast une double %2404, %2403
  br i1 %2405, label %2417, label %2406

; <label>:2406:                                   ; preds = %2401
  %2407 = fcmp fast oge double %2404, 0xC3E0000000000000
  %2408 = fcmp fast olt double %2404, 0x43E0000000000000
  %2409 = and i1 %2407, %2408
  br i1 %2409, label %2410, label %2417

; <label>:2410:                                   ; preds = %2406
  %2411 = fptosi double %2404 to i64
  br label %2412

; <label>:2412:                                   ; preds = %2410, %2398
  %2413 = phi i64 [ %2400, %2398 ], [ %2411, %2410 ]
  %2414 = xor i64 %2413, %2395
  %2415 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2414, i64* %2415, align 8, !tbaa !6
  %2416 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2416, align 8, !tbaa !2
  br label %2420

; <label>:2417:                                   ; preds = %2394, %2370, %2401, %2406, %2383, %2388
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2418 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2418, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2374, %struct.TValue* nonnull %2377, %union.StackValue* %4530, i32 15) #8
  %2419 = load i32, i32* %21, align 8, !tbaa !6
  br label %2420

; <label>:2420:                                   ; preds = %2417, %2412
  %2421 = phi i32 [ %4525, %2412 ], [ %2419, %2417 ]
  %2422 = icmp eq i32 %2421, 0
  br i1 %2422, label %2427, label %2423

; <label>:2423:                                   ; preds = %2420
  %2424 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2425 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2426 = getelementptr inbounds %union.StackValue, %union.StackValue* %2425, i64 1
  br label %2427

; <label>:2427:                                   ; preds = %2420, %2423
  %2428 = phi i32 [ %2424, %2423 ], [ 0, %2420 ]
  %2429 = phi %union.StackValue* [ %2426, %2423 ], [ %4524, %2420 ]
  %2430 = getelementptr inbounds i32, i32* %4526, i64 1
  %2431 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2432:                                   ; preds = %4522
  %2433 = lshr i32 %4523, 16
  %2434 = and i32 %2433, 255
  %2435 = zext i32 %2434 to i64
  %2436 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2435, i32 0
  %2437 = lshr i32 %4523, 24
  %2438 = add nsw i32 %2437, -127
  %2439 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2435, i32 0, i32 1
  %2440 = load i8, i8* %2439, align 8, !tbaa !2
  switch i8 %2440, label %2473 [
    i8 35, label %2441
    i8 19, label %2444
  ]

; <label>:2441:                                   ; preds = %2432
  %2442 = bitcast %struct.TValue* %2436 to i64*
  %2443 = load i64, i64* %2442, align 8, !tbaa !6
  br label %2455

; <label>:2444:                                   ; preds = %2432
  %2445 = bitcast %struct.TValue* %2436 to double*
  %2446 = load double, double* %2445, align 8, !tbaa !6
  %2447 = call fast double @llvm.floor.f64(double %2446) #8
  %2448 = fcmp fast une double %2447, %2446
  br i1 %2448, label %2473, label %2449

; <label>:2449:                                   ; preds = %2444
  %2450 = fcmp fast oge double %2447, 0xC3E0000000000000
  %2451 = fcmp fast olt double %2447, 0x43E0000000000000
  %2452 = and i1 %2450, %2451
  br i1 %2452, label %2453, label %2473

; <label>:2453:                                   ; preds = %2449
  %2454 = fptosi double %2447 to i64
  br label %2455

; <label>:2455:                                   ; preds = %2453, %2441
  %2456 = phi i64 [ %2443, %2441 ], [ %2454, %2453 ]
  %2457 = sub nsw i32 127, %2437
  %2458 = sext i32 %2457 to i64
  %2459 = icmp slt i32 %2457, 0
  br i1 %2459, label %2460, label %2465

; <label>:2460:                                   ; preds = %2455
  %2461 = icmp slt i32 %2457, -63
  %2462 = sub nsw i64 0, %2458
  %2463 = lshr i64 %2456, %2462
  %2464 = select i1 %2461, i64 0, i64 %2463
  br label %2469

; <label>:2465:                                   ; preds = %2455
  %2466 = icmp sgt i32 %2457, 63
  %2467 = shl i64 %2456, %2458
  %2468 = select i1 %2466, i64 0, i64 %2467
  br label %2469

; <label>:2469:                                   ; preds = %2465, %2460
  %2470 = phi i64 [ %2464, %2460 ], [ %2468, %2465 ]
  %2471 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2470, i64* %2471, align 8, !tbaa !6
  %2472 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2472, align 8, !tbaa !2
  br label %2484

; <label>:2473:                                   ; preds = %2432, %2449, %2444
  %2474 = trunc i32 %4523 to i16
  %2475 = icmp slt i16 %2474, 0
  %2476 = sub nsw i32 127, %2437
  %2477 = lshr i32 %4523, 15
  %2478 = and i32 %2477, 1
  %2479 = sub nsw i32 17, %2478
  %2480 = select i1 %2475, i32 %2476, i32 %2438
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2481 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2481, i64* %19, align 8, !tbaa !28
  %2482 = sext i32 %2480 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2436, i64 %2482, i32 0, %union.StackValue* %4530, i32 %2479) #8
  %2483 = load i32, i32* %21, align 8, !tbaa !6
  br label %2484

; <label>:2484:                                   ; preds = %2473, %2469
  %2485 = phi i32 [ %4525, %2469 ], [ %2483, %2473 ]
  %2486 = icmp eq i32 %2485, 0
  br i1 %2486, label %2491, label %2487

; <label>:2487:                                   ; preds = %2484
  %2488 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2489 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2490 = getelementptr inbounds %union.StackValue, %union.StackValue* %2489, i64 1
  br label %2491

; <label>:2491:                                   ; preds = %2484, %2487
  %2492 = phi i32 [ %2488, %2487 ], [ 0, %2484 ]
  %2493 = phi %union.StackValue* [ %2490, %2487 ], [ %4524, %2484 ]
  %2494 = getelementptr inbounds i32, i32* %4526, i64 1
  %2495 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2496:                                   ; preds = %4522
  %2497 = lshr i32 %4523, 16
  %2498 = and i32 %2497, 255
  %2499 = zext i32 %2498 to i64
  %2500 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2499, i32 0
  %2501 = lshr i32 %4523, 24
  %2502 = add nsw i32 %2501, -127
  %2503 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2499, i32 0, i32 1
  %2504 = load i8, i8* %2503, align 8, !tbaa !2
  switch i8 %2504, label %2536 [
    i8 35, label %2505
    i8 19, label %2508
  ]

; <label>:2505:                                   ; preds = %2496
  %2506 = bitcast %struct.TValue* %2500 to i64*
  %2507 = load i64, i64* %2506, align 8, !tbaa !6
  br label %2519

; <label>:2508:                                   ; preds = %2496
  %2509 = bitcast %struct.TValue* %2500 to double*
  %2510 = load double, double* %2509, align 8, !tbaa !6
  %2511 = call fast double @llvm.floor.f64(double %2510) #8
  %2512 = fcmp fast une double %2511, %2510
  br i1 %2512, label %2536, label %2513

; <label>:2513:                                   ; preds = %2508
  %2514 = fcmp fast oge double %2511, 0xC3E0000000000000
  %2515 = fcmp fast olt double %2511, 0x43E0000000000000
  %2516 = and i1 %2514, %2515
  br i1 %2516, label %2517, label %2536

; <label>:2517:                                   ; preds = %2513
  %2518 = fptosi double %2511 to i64
  br label %2519

; <label>:2519:                                   ; preds = %2517, %2505
  %2520 = phi i64 [ %2507, %2505 ], [ %2518, %2517 ]
  %2521 = sext i32 %2502 to i64
  %2522 = icmp slt i64 %2520, 0
  br i1 %2522, label %2523, label %2528

; <label>:2523:                                   ; preds = %2519
  %2524 = icmp slt i64 %2520, -63
  %2525 = sub nsw i64 0, %2520
  %2526 = lshr i64 %2521, %2525
  %2527 = select i1 %2524, i64 0, i64 %2526
  br label %2532

; <label>:2528:                                   ; preds = %2519
  %2529 = icmp sgt i64 %2520, 63
  %2530 = shl i64 %2521, %2520
  %2531 = select i1 %2529, i64 0, i64 %2530
  br label %2532

; <label>:2532:                                   ; preds = %2528, %2523
  %2533 = phi i64 [ %2527, %2523 ], [ %2531, %2528 ]
  %2534 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2533, i64* %2534, align 8, !tbaa !6
  %2535 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2535, align 8, !tbaa !2
  br label %2540

; <label>:2536:                                   ; preds = %2496, %2513, %2508
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2537 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2537, i64* %19, align 8, !tbaa !28
  %2538 = sext i32 %2502 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2500, i64 %2538, i32 1, %union.StackValue* %4530, i32 16) #8
  %2539 = load i32, i32* %21, align 8, !tbaa !6
  br label %2540

; <label>:2540:                                   ; preds = %2536, %2532
  %2541 = phi i32 [ %4525, %2532 ], [ %2539, %2536 ]
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2547, label %2543

; <label>:2543:                                   ; preds = %2540
  %2544 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2545 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2546 = getelementptr inbounds %union.StackValue, %union.StackValue* %2545, i64 1
  br label %2547

; <label>:2547:                                   ; preds = %2540, %2543
  %2548 = phi i32 [ %2544, %2543 ], [ 0, %2540 ]
  %2549 = phi %union.StackValue* [ %2546, %2543 ], [ %4524, %2540 ]
  %2550 = getelementptr inbounds i32, i32* %4526, i64 1
  %2551 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2552:                                   ; preds = %4522
  %2553 = lshr i32 %4523, 16
  %2554 = and i32 %2553, 255
  %2555 = zext i32 %2554 to i64
  %2556 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2555, i32 0
  %2557 = lshr i32 %4523, 24
  %2558 = zext i32 %2557 to i64
  %2559 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2558, i32 0
  %2560 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2555, i32 0, i32 1
  %2561 = load i8, i8* %2560, align 8, !tbaa !2
  switch i8 %2561, label %2610 [
    i8 35, label %2562
    i8 19, label %2565
  ]

; <label>:2562:                                   ; preds = %2552
  %2563 = bitcast %struct.TValue* %2556 to i64*
  %2564 = load i64, i64* %2563, align 8, !tbaa !6
  br label %2576

; <label>:2565:                                   ; preds = %2552
  %2566 = bitcast %struct.TValue* %2556 to double*
  %2567 = load double, double* %2566, align 8, !tbaa !6
  %2568 = call fast double @llvm.floor.f64(double %2567) #8
  %2569 = fcmp fast une double %2568, %2567
  br i1 %2569, label %2610, label %2570

; <label>:2570:                                   ; preds = %2565
  %2571 = fcmp fast oge double %2568, 0xC3E0000000000000
  %2572 = fcmp fast olt double %2568, 0x43E0000000000000
  %2573 = and i1 %2571, %2572
  br i1 %2573, label %2574, label %2610

; <label>:2574:                                   ; preds = %2570
  %2575 = fptosi double %2568 to i64
  br label %2576

; <label>:2576:                                   ; preds = %2574, %2562
  %2577 = phi i64 [ %2564, %2562 ], [ %2575, %2574 ]
  %2578 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2558, i32 0, i32 1
  %2579 = load i8, i8* %2578, align 8, !tbaa !2
  switch i8 %2579, label %2610 [
    i8 35, label %2580
    i8 19, label %2583
  ]

; <label>:2580:                                   ; preds = %2576
  %2581 = bitcast %struct.TValue* %2559 to i64*
  %2582 = load i64, i64* %2581, align 8, !tbaa !6
  br label %2594

; <label>:2583:                                   ; preds = %2576
  %2584 = bitcast %struct.TValue* %2559 to double*
  %2585 = load double, double* %2584, align 8, !tbaa !6
  %2586 = call fast double @llvm.floor.f64(double %2585) #8
  %2587 = fcmp fast une double %2586, %2585
  br i1 %2587, label %2610, label %2588

; <label>:2588:                                   ; preds = %2583
  %2589 = fcmp fast oge double %2586, 0xC3E0000000000000
  %2590 = fcmp fast olt double %2586, 0x43E0000000000000
  %2591 = and i1 %2589, %2590
  br i1 %2591, label %2592, label %2610

; <label>:2592:                                   ; preds = %2588
  %2593 = fptosi double %2586 to i64
  br label %2594

; <label>:2594:                                   ; preds = %2592, %2580
  %2595 = phi i64 [ %2582, %2580 ], [ %2593, %2592 ]
  %2596 = icmp sgt i64 %2595, 0
  br i1 %2596, label %2597, label %2601

; <label>:2597:                                   ; preds = %2594
  %2598 = icmp sgt i64 %2595, 63
  %2599 = lshr i64 %2577, %2595
  %2600 = select i1 %2598, i64 0, i64 %2599
  br label %2606

; <label>:2601:                                   ; preds = %2594
  %2602 = sub nsw i64 0, %2595
  %2603 = icmp slt i64 %2595, -63
  %2604 = shl i64 %2577, %2602
  %2605 = select i1 %2603, i64 0, i64 %2604
  br label %2606

; <label>:2606:                                   ; preds = %2601, %2597
  %2607 = phi i64 [ %2600, %2597 ], [ %2605, %2601 ]
  %2608 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2607, i64* %2608, align 8, !tbaa !6
  %2609 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2609, align 8, !tbaa !2
  br label %2613

; <label>:2610:                                   ; preds = %2576, %2552, %2583, %2588, %2565, %2570
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2611 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2611, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2556, %struct.TValue* nonnull %2559, %union.StackValue* %4530, i32 17) #8
  %2612 = load i32, i32* %21, align 8, !tbaa !6
  br label %2613

; <label>:2613:                                   ; preds = %2610, %2606
  %2614 = phi i32 [ %4525, %2606 ], [ %2612, %2610 ]
  %2615 = icmp eq i32 %2614, 0
  br i1 %2615, label %2620, label %2616

; <label>:2616:                                   ; preds = %2613
  %2617 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2618 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2619 = getelementptr inbounds %union.StackValue, %union.StackValue* %2618, i64 1
  br label %2620

; <label>:2620:                                   ; preds = %2613, %2616
  %2621 = phi i32 [ %2617, %2616 ], [ 0, %2613 ]
  %2622 = phi %union.StackValue* [ %2619, %2616 ], [ %4524, %2613 ]
  %2623 = getelementptr inbounds i32, i32* %4526, i64 1
  %2624 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2625:                                   ; preds = %4522
  %2626 = lshr i32 %4523, 16
  %2627 = and i32 %2626, 255
  %2628 = zext i32 %2627 to i64
  %2629 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2628, i32 0
  %2630 = lshr i32 %4523, 24
  %2631 = zext i32 %2630 to i64
  %2632 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2631, i32 0
  %2633 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2628, i32 0, i32 1
  %2634 = load i8, i8* %2633, align 8, !tbaa !2
  switch i8 %2634, label %2683 [
    i8 35, label %2635
    i8 19, label %2638
  ]

; <label>:2635:                                   ; preds = %2625
  %2636 = bitcast %struct.TValue* %2629 to i64*
  %2637 = load i64, i64* %2636, align 8, !tbaa !6
  br label %2649

; <label>:2638:                                   ; preds = %2625
  %2639 = bitcast %struct.TValue* %2629 to double*
  %2640 = load double, double* %2639, align 8, !tbaa !6
  %2641 = call fast double @llvm.floor.f64(double %2640) #8
  %2642 = fcmp fast une double %2641, %2640
  br i1 %2642, label %2683, label %2643

; <label>:2643:                                   ; preds = %2638
  %2644 = fcmp fast oge double %2641, 0xC3E0000000000000
  %2645 = fcmp fast olt double %2641, 0x43E0000000000000
  %2646 = and i1 %2644, %2645
  br i1 %2646, label %2647, label %2683

; <label>:2647:                                   ; preds = %2643
  %2648 = fptosi double %2641 to i64
  br label %2649

; <label>:2649:                                   ; preds = %2647, %2635
  %2650 = phi i64 [ %2637, %2635 ], [ %2648, %2647 ]
  %2651 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2631, i32 0, i32 1
  %2652 = load i8, i8* %2651, align 8, !tbaa !2
  switch i8 %2652, label %2683 [
    i8 35, label %2653
    i8 19, label %2656
  ]

; <label>:2653:                                   ; preds = %2649
  %2654 = bitcast %struct.TValue* %2632 to i64*
  %2655 = load i64, i64* %2654, align 8, !tbaa !6
  br label %2667

; <label>:2656:                                   ; preds = %2649
  %2657 = bitcast %struct.TValue* %2632 to double*
  %2658 = load double, double* %2657, align 8, !tbaa !6
  %2659 = call fast double @llvm.floor.f64(double %2658) #8
  %2660 = fcmp fast une double %2659, %2658
  br i1 %2660, label %2683, label %2661

; <label>:2661:                                   ; preds = %2656
  %2662 = fcmp fast oge double %2659, 0xC3E0000000000000
  %2663 = fcmp fast olt double %2659, 0x43E0000000000000
  %2664 = and i1 %2662, %2663
  br i1 %2664, label %2665, label %2683

; <label>:2665:                                   ; preds = %2661
  %2666 = fptosi double %2659 to i64
  br label %2667

; <label>:2667:                                   ; preds = %2665, %2653
  %2668 = phi i64 [ %2655, %2653 ], [ %2666, %2665 ]
  %2669 = icmp slt i64 %2668, 0
  br i1 %2669, label %2670, label %2675

; <label>:2670:                                   ; preds = %2667
  %2671 = icmp slt i64 %2668, -63
  %2672 = sub nsw i64 0, %2668
  %2673 = lshr i64 %2650, %2672
  %2674 = select i1 %2671, i64 0, i64 %2673
  br label %2679

; <label>:2675:                                   ; preds = %2667
  %2676 = icmp sgt i64 %2668, 63
  %2677 = shl i64 %2650, %2668
  %2678 = select i1 %2676, i64 0, i64 %2677
  br label %2679

; <label>:2679:                                   ; preds = %2675, %2670
  %2680 = phi i64 [ %2674, %2670 ], [ %2678, %2675 ]
  %2681 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2680, i64* %2681, align 8, !tbaa !6
  %2682 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2682, align 8, !tbaa !2
  br label %2686

; <label>:2683:                                   ; preds = %2649, %2625, %2656, %2661, %2638, %2643
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2684 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2684, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2629, %struct.TValue* nonnull %2632, %union.StackValue* %4530, i32 16) #8
  %2685 = load i32, i32* %21, align 8, !tbaa !6
  br label %2686

; <label>:2686:                                   ; preds = %2683, %2679
  %2687 = phi i32 [ %4525, %2679 ], [ %2685, %2683 ]
  %2688 = icmp eq i32 %2687, 0
  br i1 %2688, label %2693, label %2689

; <label>:2689:                                   ; preds = %2686
  %2690 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2691 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2692 = getelementptr inbounds %union.StackValue, %union.StackValue* %2691, i64 1
  br label %2693

; <label>:2693:                                   ; preds = %2686, %2689
  %2694 = phi i32 [ %2690, %2689 ], [ 0, %2686 ]
  %2695 = phi %union.StackValue* [ %2692, %2689 ], [ %4524, %2686 ]
  %2696 = getelementptr inbounds i32, i32* %4526, i64 1
  %2697 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2698:                                   ; preds = %4522
  %2699 = lshr i32 %4523, 16
  %2700 = and i32 %2699, 255
  %2701 = zext i32 %2700 to i64
  %2702 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2701, i32 0
  %2703 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2701, i32 0, i32 1
  %2704 = load i8, i8* %2703, align 8, !tbaa !2
  switch i8 %2704, label %2717 [
    i8 35, label %2705
    i8 19, label %2711
  ]

; <label>:2705:                                   ; preds = %2698
  %2706 = bitcast %struct.TValue* %2702 to i64*
  %2707 = load i64, i64* %2706, align 8, !tbaa !6
  %2708 = sub i64 0, %2707
  %2709 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2708, i64* %2709, align 8, !tbaa !6
  %2710 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2710, align 8, !tbaa !2
  br label %2720

; <label>:2711:                                   ; preds = %2698
  %2712 = bitcast %struct.TValue* %2702 to double*
  %2713 = load double, double* %2712, align 8, !tbaa !6
  %2714 = fsub fast double -0.000000e+00, %2713
  %2715 = bitcast %union.StackValue* %4530 to double*
  store double %2714, double* %2715, align 8, !tbaa !6
  %2716 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 19, i8* %2716, align 8, !tbaa !2
  br label %2720

; <label>:2717:                                   ; preds = %2698
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2718 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2718, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2702, %struct.TValue* %2702, %union.StackValue* %4530, i32 18) #8
  %2719 = load i32, i32* %21, align 8, !tbaa !6
  br label %2720

; <label>:2720:                                   ; preds = %2711, %2717, %2705
  %2721 = phi i32 [ %4525, %2705 ], [ %4525, %2711 ], [ %2719, %2717 ]
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2727, label %2723

; <label>:2723:                                   ; preds = %2720
  %2724 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2725 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2726 = getelementptr inbounds %union.StackValue, %union.StackValue* %2725, i64 1
  br label %2727

; <label>:2727:                                   ; preds = %2720, %2723
  %2728 = phi i32 [ %2724, %2723 ], [ 0, %2720 ]
  %2729 = phi %union.StackValue* [ %2726, %2723 ], [ %4524, %2720 ]
  %2730 = getelementptr inbounds i32, i32* %4526, i64 1
  %2731 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2732:                                   ; preds = %4522
  %2733 = lshr i32 %4523, 16
  %2734 = and i32 %2733, 255
  %2735 = zext i32 %2734 to i64
  %2736 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2735, i32 0
  %2737 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2735, i32 0, i32 1
  %2738 = load i8, i8* %2737, align 8, !tbaa !2
  switch i8 %2738, label %2758 [
    i8 35, label %2739
    i8 19, label %2742
  ]

; <label>:2739:                                   ; preds = %2732
  %2740 = bitcast %struct.TValue* %2736 to i64*
  %2741 = load i64, i64* %2740, align 8, !tbaa !6
  br label %2753

; <label>:2742:                                   ; preds = %2732
  %2743 = bitcast %struct.TValue* %2736 to double*
  %2744 = load double, double* %2743, align 8, !tbaa !6
  %2745 = call fast double @llvm.floor.f64(double %2744) #8
  %2746 = fcmp fast une double %2745, %2744
  br i1 %2746, label %2758, label %2747

; <label>:2747:                                   ; preds = %2742
  %2748 = fcmp fast oge double %2745, 0xC3E0000000000000
  %2749 = fcmp fast olt double %2745, 0x43E0000000000000
  %2750 = and i1 %2748, %2749
  br i1 %2750, label %2751, label %2758

; <label>:2751:                                   ; preds = %2747
  %2752 = fptosi double %2745 to i64
  br label %2753

; <label>:2753:                                   ; preds = %2751, %2739
  %2754 = phi i64 [ %2741, %2739 ], [ %2752, %2751 ]
  %2755 = xor i64 %2754, -1
  %2756 = bitcast %union.StackValue* %4530 to i64*
  store i64 %2755, i64* %2756, align 8, !tbaa !6
  %2757 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 35, i8* %2757, align 8, !tbaa !2
  br label %2761

; <label>:2758:                                   ; preds = %2732, %2747, %2742
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2759 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2759, i64* %19, align 8, !tbaa !28
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2736, %struct.TValue* nonnull %2736, %union.StackValue* %4530, i32 19) #8
  %2760 = load i32, i32* %21, align 8, !tbaa !6
  br label %2761

; <label>:2761:                                   ; preds = %2758, %2753
  %2762 = phi i32 [ %4525, %2753 ], [ %2760, %2758 ]
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2768, label %2764

; <label>:2764:                                   ; preds = %2761
  %2765 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2766 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2767 = getelementptr inbounds %union.StackValue, %union.StackValue* %2766, i64 1
  br label %2768

; <label>:2768:                                   ; preds = %2761, %2764
  %2769 = phi i32 [ %2765, %2764 ], [ 0, %2761 ]
  %2770 = phi %union.StackValue* [ %2767, %2764 ], [ %4524, %2761 ]
  %2771 = getelementptr inbounds i32, i32* %4526, i64 1
  %2772 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2773:                                   ; preds = %4522
  %2774 = lshr i32 %4523, 16
  %2775 = and i32 %2774, 255
  %2776 = zext i32 %2775 to i64
  %2777 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2776, i32 0, i32 1
  %2778 = load i8, i8* %2777, align 8, !tbaa !2
  %2779 = and i8 %2778, 15
  %2780 = icmp eq i8 %2779, 0
  br i1 %2780, label %2788, label %2781

; <label>:2781:                                   ; preds = %2773
  %2782 = icmp eq i8 %2778, 1
  br i1 %2782, label %2783, label %2788

; <label>:2783:                                   ; preds = %2781
  %2784 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2776, i32 0, i32 0
  %2785 = bitcast %union.Value* %2784 to i32*
  %2786 = load i32, i32* %2785, align 8, !tbaa !6
  %2787 = icmp eq i32 %2786, 0
  br label %2788

; <label>:2788:                                   ; preds = %2781, %2783, %2773
  %2789 = phi i1 [ true, %2773 ], [ false, %2781 ], [ %2787, %2783 ]
  %2790 = zext i1 %2789 to i32
  %2791 = bitcast %union.StackValue* %4530 to i32*
  store i32 %2790, i32* %2791, align 8, !tbaa !6
  %2792 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 1, i8* %2792, align 8, !tbaa !2
  %2793 = icmp eq i32 %4525, 0
  br i1 %2793, label %2798, label %2794

; <label>:2794:                                   ; preds = %2788
  %2795 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2796 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2797 = getelementptr inbounds %union.StackValue, %union.StackValue* %2796, i64 1
  br label %2798

; <label>:2798:                                   ; preds = %2788, %2794
  %2799 = phi i32 [ %2795, %2794 ], [ 0, %2788 ]
  %2800 = phi %union.StackValue* [ %2797, %2794 ], [ %4524, %2788 ]
  %2801 = getelementptr inbounds i32, i32* %4526, i64 1
  %2802 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2803:                                   ; preds = %4522
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2804 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2804, i64* %19, align 8, !tbaa !28
  %2805 = lshr i32 %4523, 16
  %2806 = and i32 %2805, 255
  %2807 = zext i32 %2806 to i64
  %2808 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2807, i32 0
  call void @luaV_objlen(%struct.lua_State* %0, %union.StackValue* %4530, %struct.TValue* %2808)
  %2809 = load i32, i32* %21, align 8, !tbaa !6
  %2810 = icmp eq i32 %2809, 0
  br i1 %2810, label %2815, label %2811

; <label>:2811:                                   ; preds = %2803
  %2812 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4526) #8
  %2813 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2814 = getelementptr inbounds %union.StackValue, %union.StackValue* %2813, i64 1
  br label %2815

; <label>:2815:                                   ; preds = %2803, %2811
  %2816 = phi i32 [ %2812, %2811 ], [ 0, %2803 ]
  %2817 = phi %union.StackValue* [ %2814, %2811 ], [ %4524, %2803 ]
  %2818 = getelementptr inbounds i32, i32* %4526, i64 1
  %2819 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2820:                                   ; preds = %4522
  %2821 = lshr i32 %4523, 16
  %2822 = and i32 %2821, 255
  %2823 = zext i32 %2822 to i64
  %2824 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 %2823
  store %union.StackValue* %2824, %union.StackValue** %18, align 8, !tbaa !28
  store i32* %4526, i32** %15, align 8, !tbaa !6
  call void @luaV_concat(%struct.lua_State* %0, i32 %2822)
  %2825 = load %struct.global_State*, %struct.global_State** %22, align 8, !tbaa !16
  %2826 = getelementptr inbounds %struct.global_State, %struct.global_State* %2825, i64 0, i32 3
  %2827 = load i64, i64* %2826, align 8, !tbaa !46
  %2828 = icmp sgt i64 %2827, 0
  br i1 %2828, label %2829, label %2830

; <label>:2829:                                   ; preds = %2820
  call void @luaC_step(%struct.lua_State* nonnull %0) #8
  br label %2830

; <label>:2830:                                   ; preds = %2829, %2820
  %2831 = load i32, i32* %21, align 8, !tbaa !6
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2837, label %2833

; <label>:2833:                                   ; preds = %2830
  %2834 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4526) #8
  %2835 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2836 = getelementptr inbounds %union.StackValue, %union.StackValue* %2835, i64 1
  br label %2837

; <label>:2837:                                   ; preds = %2830, %2833
  %2838 = phi i32 [ %2834, %2833 ], [ 0, %2830 ]
  %2839 = phi %union.StackValue* [ %2836, %2833 ], [ %4524, %2830 ]
  %2840 = getelementptr inbounds i32, i32* %4526, i64 1
  %2841 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2842:                                   ; preds = %4522
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2843 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2843, i64* %19, align 8, !tbaa !28
  %2844 = call i32 @luaF_close(%struct.lua_State* %0, %union.StackValue* %4530, i32 0) #8
  %2845 = load i32, i32* %21, align 8, !tbaa !6
  %2846 = icmp eq i32 %2845, 0
  br i1 %2846, label %2851, label %2847

; <label>:2847:                                   ; preds = %2842
  %2848 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4526) #8
  %2849 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2850 = getelementptr inbounds %union.StackValue, %union.StackValue* %2849, i64 1
  br label %2851

; <label>:2851:                                   ; preds = %2842, %2847
  %2852 = phi i32 [ %2848, %2847 ], [ 0, %2842 ]
  %2853 = phi %union.StackValue* [ %2850, %2847 ], [ %4524, %2842 ]
  %2854 = getelementptr inbounds i32, i32* %4526, i64 1
  %2855 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2856:                                   ; preds = %4522
  store i32* %4526, i32** %15, align 8, !tbaa !6
  call void @luaF_newtbcupval(%struct.lua_State* %0, %union.StackValue* %4530) #8
  %2857 = icmp eq i32 %4525, 0
  br i1 %2857, label %2862, label %2858

; <label>:2858:                                   ; preds = %2856
  %2859 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %2860 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2861 = getelementptr inbounds %union.StackValue, %union.StackValue* %2860, i64 1
  br label %2862

; <label>:2862:                                   ; preds = %2856, %2858
  %2863 = phi i32 [ %2859, %2858 ], [ 0, %2856 ]
  %2864 = phi %union.StackValue* [ %2861, %2858 ], [ %4524, %2856 ]
  %2865 = getelementptr inbounds i32, i32* %4526, i64 1
  %2866 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:2867:                                   ; preds = %4522
  %2868 = lshr i32 %4523, 7
  %2869 = add nsw i32 %2868, -16777215
  %2870 = sext i32 %2869 to i64
  %2871 = getelementptr inbounds i32, i32* %4526, i64 %2870
  %2872 = load i32, i32* %21, align 8, !tbaa !6
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2878, label %2874

; <label>:2874:                                   ; preds = %2867
  %2875 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2871) #8
  %2876 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2877 = getelementptr inbounds %union.StackValue, %union.StackValue* %2876, i64 1
  br label %2878

; <label>:2878:                                   ; preds = %2867, %2874
  %2879 = phi i32 [ %2875, %2874 ], [ 0, %2867 ]
  %2880 = phi %union.StackValue* [ %2877, %2874 ], [ %4524, %2867 ]
  %2881 = getelementptr inbounds i32, i32* %2871, i64 1
  %2882 = load i32, i32* %2871, align 4, !tbaa !32
  br label %93

; <label>:2883:                                   ; preds = %4522
  %2884 = lshr i32 %4523, 16
  %2885 = and i32 %2884, 255
  %2886 = zext i32 %2885 to i64
  %2887 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2886, i32 0
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %2888 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %2888, i64* %19, align 8, !tbaa !28
  %2889 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %2890 = call i32 @luaV_equalobj(%struct.lua_State* %0, %struct.TValue* %2889, %struct.TValue* %2887)
  %2891 = load i32, i32* %21, align 8, !tbaa !6
  %2892 = lshr i32 %4523, 15
  %2893 = and i32 %2892, 1
  %2894 = icmp eq i32 %2890, %2893
  br i1 %2894, label %2895, label %2900

; <label>:2895:                                   ; preds = %2883
  %2896 = load i32, i32* %4526, align 4, !tbaa !32
  %2897 = lshr i32 %2896, 7
  %2898 = add nsw i32 %2897, -16777214
  %2899 = sext i32 %2898 to i64
  br label %2900

; <label>:2900:                                   ; preds = %2883, %2895
  %2901 = phi i64 [ %2899, %2895 ], [ 1, %2883 ]
  %2902 = getelementptr inbounds i32, i32* %4526, i64 %2901
  %2903 = icmp eq i32 %2891, 0
  br i1 %2903, label %2908, label %2904

; <label>:2904:                                   ; preds = %2900
  %2905 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %2902) #8
  %2906 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %2907 = getelementptr inbounds %union.StackValue, %union.StackValue* %2906, i64 1
  br label %2908

; <label>:2908:                                   ; preds = %2900, %2904
  %2909 = phi i32 [ %2905, %2904 ], [ 0, %2900 ]
  %2910 = phi %union.StackValue* [ %2907, %2904 ], [ %4524, %2900 ]
  %2911 = getelementptr inbounds i32, i32* %2902, i64 1
  %2912 = load i32, i32* %2902, align 4, !tbaa !32
  br label %93

; <label>:2913:                                   ; preds = %4522
  %2914 = lshr i32 %4523, 16
  %2915 = and i32 %2914, 255
  %2916 = zext i32 %2915 to i64
  %2917 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2916, i32 0
  %2918 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %2919 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %2920 = load i8, i8* %2919, align 8, !tbaa !6
  %2921 = icmp eq i8 %2920, 35
  br i1 %2921, label %2922, label %2933

; <label>:2922:                                   ; preds = %2913
  %2923 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2916, i32 0, i32 1
  %2924 = load i8, i8* %2923, align 8, !tbaa !2
  %2925 = icmp eq i8 %2924, 35
  br i1 %2925, label %2926, label %2939

; <label>:2926:                                   ; preds = %2922
  %2927 = bitcast %union.StackValue* %4530 to i64*
  %2928 = load i64, i64* %2927, align 8, !tbaa !6
  %2929 = bitcast %struct.TValue* %2917 to i64*
  %2930 = load i64, i64* %2929, align 8, !tbaa !6
  %2931 = icmp slt i64 %2928, %2930
  %2932 = zext i1 %2931 to i32
  br label %3073

; <label>:2933:                                   ; preds = %2913
  %2934 = and i8 %2920, 15
  %2935 = icmp eq i8 %2934, 3
  br i1 %2935, label %2936, label %3002

; <label>:2936:                                   ; preds = %2933
  %2937 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2916, i32 0, i32 1
  %2938 = load i8, i8* %2937, align 8, !tbaa !2
  br label %2939

; <label>:2939:                                   ; preds = %2936, %2922
  %2940 = phi i8 [ %2938, %2936 ], [ %2924, %2922 ]
  %2941 = and i8 %2940, 15
  %2942 = icmp eq i8 %2941, 3
  br i1 %2942, label %2943, label %3002

; <label>:2943:                                   ; preds = %2939
  br i1 %2921, label %2944, label %2973

; <label>:2944:                                   ; preds = %2943
  %2945 = bitcast %union.StackValue* %4530 to i64*
  %2946 = load i64, i64* %2945, align 8, !tbaa !6
  %2947 = icmp eq i8 %2940, 35
  br i1 %2947, label %2948, label %2952

; <label>:2948:                                   ; preds = %2944
  %2949 = bitcast %struct.TValue* %2917 to i64*
  %2950 = load i64, i64* %2949, align 8, !tbaa !6
  %2951 = icmp slt i64 %2946, %2950
  br label %2999

; <label>:2952:                                   ; preds = %2944
  %2953 = bitcast %struct.TValue* %2917 to double*
  %2954 = load double, double* %2953, align 8, !tbaa !6
  %2955 = add i64 %2946, 9007199254740992
  %2956 = icmp ult i64 %2955, 18014398509481985
  br i1 %2956, label %2957, label %2960

; <label>:2957:                                   ; preds = %2952
  %2958 = sitofp i64 %2946 to double
  %2959 = fcmp fast ogt double %2954, %2958
  br label %2999

; <label>:2960:                                   ; preds = %2952
  %2961 = call fast double @llvm.floor.f64(double %2954) #8
  %2962 = fcmp fast une double %2961, %2954
  %2963 = fadd fast double %2961, 1.000000e+00
  %2964 = select i1 %2962, double %2963, double %2961
  %2965 = fcmp fast oge double %2964, 0xC3E0000000000000
  %2966 = fcmp fast olt double %2964, 0x43E0000000000000
  %2967 = and i1 %2965, %2966
  br i1 %2967, label %2968, label %2971

; <label>:2968:                                   ; preds = %2960
  %2969 = fptosi double %2964 to i64
  %2970 = icmp slt i64 %2946, %2969
  br label %2999

; <label>:2971:                                   ; preds = %2960
  %2972 = fcmp fast ogt double %2954, 0.000000e+00
  br label %2999

; <label>:2973:                                   ; preds = %2943
  %2974 = bitcast %union.StackValue* %4530 to double*
  %2975 = load double, double* %2974, align 8, !tbaa !6
  %2976 = icmp eq i8 %2940, 19
  br i1 %2976, label %2977, label %2981

; <label>:2977:                                   ; preds = %2973
  %2978 = bitcast %struct.TValue* %2917 to double*
  %2979 = load double, double* %2978, align 8, !tbaa !6
  %2980 = fcmp fast olt double %2975, %2979
  br label %2999

; <label>:2981:                                   ; preds = %2973
  %2982 = bitcast %struct.TValue* %2917 to i64*
  %2983 = load i64, i64* %2982, align 8, !tbaa !6
  %2984 = add i64 %2983, 9007199254740992
  %2985 = icmp ult i64 %2984, 18014398509481985
  br i1 %2985, label %2986, label %2989

; <label>:2986:                                   ; preds = %2981
  %2987 = sitofp i64 %2983 to double
  %2988 = fcmp fast olt double %2975, %2987
  br label %2999

; <label>:2989:                                   ; preds = %2981
  %2990 = call fast double @llvm.floor.f64(double %2975) #8
  %2991 = fcmp fast oge double %2990, 0xC3E0000000000000
  %2992 = fcmp fast olt double %2990, 0x43E0000000000000
  %2993 = and i1 %2991, %2992
  br i1 %2993, label %2994, label %2997

; <label>:2994:                                   ; preds = %2989
  %2995 = fptosi double %2990 to i64
  %2996 = icmp sgt i64 %2983, %2995
  br label %2999

; <label>:2997:                                   ; preds = %2989
  %2998 = fcmp fast olt double %2975, 0.000000e+00
  br label %2999

; <label>:2999:                                   ; preds = %2948, %2957, %2968, %2971, %2977, %2986, %2994, %2997
  %3000 = phi i1 [ %2951, %2948 ], [ %2980, %2977 ], [ %2959, %2957 ], [ %2972, %2971 ], [ %2970, %2968 ], [ %2988, %2986 ], [ %2998, %2997 ], [ %2996, %2994 ]
  %3001 = zext i1 %3000 to i32
  br label %3073

; <label>:3002:                                   ; preds = %2939, %2933
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3003 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %3003, i64* %19, align 8, !tbaa !28
  %3004 = load i8, i8* %2919, align 8, !tbaa !2
  %3005 = and i8 %3004, 15
  %3006 = icmp eq i8 %3005, 4
  br i1 %3006, label %3007, label %3068

; <label>:3007:                                   ; preds = %3002
  %3008 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %2916, i32 0, i32 1
  %3009 = load i8, i8* %3008, align 8, !tbaa !2
  %3010 = and i8 %3009, 15
  %3011 = icmp eq i8 %3010, 4
  br i1 %3011, label %3012, label %3068

; <label>:3012:                                   ; preds = %3007
  %3013 = bitcast %union.StackValue* %4530 to %struct.TString**
  %3014 = load %struct.TString*, %struct.TString** %3013, align 8, !tbaa !6
  %3015 = bitcast %struct.TValue* %2917 to %struct.TString**
  %3016 = load %struct.TString*, %struct.TString** %3015, align 8, !tbaa !6
  %3017 = getelementptr inbounds %struct.TString, %struct.TString* %3014, i64 1
  %3018 = bitcast %struct.TString* %3017 to i8*
  %3019 = getelementptr inbounds %struct.TString, %struct.TString* %3014, i64 0, i32 1
  %3020 = load i8, i8* %3019, align 8, !tbaa !25
  %3021 = icmp eq i8 %3020, 20
  br i1 %3021, label %3022, label %3026

; <label>:3022:                                   ; preds = %3012
  %3023 = getelementptr inbounds %struct.TString, %struct.TString* %3014, i64 0, i32 4
  %3024 = load i8, i8* %3023, align 1, !tbaa !27
  %3025 = zext i8 %3024 to i64
  br label %3029

; <label>:3026:                                   ; preds = %3012
  %3027 = getelementptr inbounds %struct.TString, %struct.TString* %3014, i64 0, i32 6, i32 0
  %3028 = load i64, i64* %3027, align 8, !tbaa !6
  br label %3029

; <label>:3029:                                   ; preds = %3026, %3022
  %3030 = phi i64 [ %3025, %3022 ], [ %3028, %3026 ]
  %3031 = getelementptr inbounds %struct.TString, %struct.TString* %3016, i64 1
  %3032 = bitcast %struct.TString* %3031 to i8*
  %3033 = getelementptr inbounds %struct.TString, %struct.TString* %3016, i64 0, i32 1
  %3034 = load i8, i8* %3033, align 8, !tbaa !25
  %3035 = icmp eq i8 %3034, 20
  br i1 %3035, label %3036, label %3040

; <label>:3036:                                   ; preds = %3029
  %3037 = getelementptr inbounds %struct.TString, %struct.TString* %3016, i64 0, i32 4
  %3038 = load i8, i8* %3037, align 1, !tbaa !27
  %3039 = zext i8 %3038 to i64
  br label %3043

; <label>:3040:                                   ; preds = %3029
  %3041 = getelementptr inbounds %struct.TString, %struct.TString* %3016, i64 0, i32 6, i32 0
  %3042 = load i64, i64* %3041, align 8, !tbaa !6
  br label %3043

; <label>:3043:                                   ; preds = %3040, %3036
  %3044 = phi i64 [ %3039, %3036 ], [ %3042, %3040 ]
  %3045 = call i32 @strcoll(i8* nonnull %3018, i8* nonnull %3032) #10
  %3046 = icmp eq i32 %3045, 0
  br i1 %3046, label %3047, label %3065

; <label>:3047:                                   ; preds = %3043
  br label %3048

; <label>:3048:                                   ; preds = %3047, %3057
  %3049 = phi i64 [ %3062, %3057 ], [ %3044, %3047 ]
  %3050 = phi i8* [ %3061, %3057 ], [ %3032, %3047 ]
  %3051 = phi i64 [ %3060, %3057 ], [ %3030, %3047 ]
  %3052 = phi i8* [ %3059, %3057 ], [ %3018, %3047 ]
  %3053 = call i64 @strlen(i8* %3052) #10
  %3054 = icmp eq i64 %3053, %3049
  br i1 %3054, label %3065, label %3055

; <label>:3055:                                   ; preds = %3048
  %3056 = icmp eq i64 %3053, %3051
  br i1 %3056, label %3065, label %3057

; <label>:3057:                                   ; preds = %3055
  %3058 = add i64 %3053, 1
  %3059 = getelementptr inbounds i8, i8* %3052, i64 %3058
  %3060 = sub i64 %3051, %3058
  %3061 = getelementptr inbounds i8, i8* %3050, i64 %3058
  %3062 = sub i64 %3049, %3058
  %3063 = call i32 @strcoll(i8* %3059, i8* %3061) #10
  %3064 = icmp eq i32 %3063, 0
  br i1 %3064, label %3048, label %3065

; <label>:3065:                                   ; preds = %3055, %3057, %3048, %3043
  %3066 = phi i32 [ %3045, %3043 ], [ -1, %3055 ], [ %3063, %3057 ], [ 0, %3048 ]
  %3067 = lshr i32 %3066, 31
  br label %3070

; <label>:3068:                                   ; preds = %3007, %3002
  %3069 = call i32 @luaT_callorderTM(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %2918, %struct.TValue* %2917, i32 20) #8
  br label %3070

; <label>:3070:                                   ; preds = %3065, %3068
  %3071 = phi i32 [ %3067, %3065 ], [ %3069, %3068 ]
  %3072 = load i32, i32* %21, align 8, !tbaa !6
  br label %3073

; <label>:3073:                                   ; preds = %2999, %3070, %2926
  %3074 = phi i32 [ %2932, %2926 ], [ %3001, %2999 ], [ %3071, %3070 ]
  %3075 = phi i32 [ %4525, %2926 ], [ %4525, %2999 ], [ %3072, %3070 ]
  %3076 = lshr i32 %4523, 15
  %3077 = and i32 %3076, 1
  %3078 = icmp eq i32 %3074, %3077
  br i1 %3078, label %3081, label %3079

; <label>:3079:                                   ; preds = %3073
  %3080 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3088

; <label>:3081:                                   ; preds = %3073
  %3082 = load i32, i32* %4526, align 4, !tbaa !32
  %3083 = lshr i32 %3082, 7
  %3084 = add nsw i32 %3083, -16777214
  %3085 = sext i32 %3084 to i64
  %3086 = getelementptr inbounds i32, i32* %4526, i64 %3085
  %3087 = load i32, i32* %21, align 8, !tbaa !6
  br label %3088

; <label>:3088:                                   ; preds = %3081, %3079
  %3089 = phi i32 [ %3075, %3079 ], [ %3087, %3081 ]
  %3090 = phi i32* [ %3080, %3079 ], [ %3086, %3081 ]
  %3091 = icmp eq i32 %3089, 0
  br i1 %3091, label %3096, label %3092

; <label>:3092:                                   ; preds = %3088
  %3093 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3090) #8
  %3094 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3095 = getelementptr inbounds %union.StackValue, %union.StackValue* %3094, i64 1
  br label %3096

; <label>:3096:                                   ; preds = %3088, %3092
  %3097 = phi i32 [ %3093, %3092 ], [ 0, %3088 ]
  %3098 = phi %union.StackValue* [ %3095, %3092 ], [ %4524, %3088 ]
  %3099 = getelementptr inbounds i32, i32* %3090, i64 1
  %3100 = load i32, i32* %3090, align 4, !tbaa !32
  br label %93

; <label>:3101:                                   ; preds = %4522
  %3102 = lshr i32 %4523, 16
  %3103 = and i32 %3102, 255
  %3104 = zext i32 %3103 to i64
  %3105 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %3104, i32 0
  %3106 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %3107 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %3108 = load i8, i8* %3107, align 8, !tbaa !6
  %3109 = icmp eq i8 %3108, 35
  br i1 %3109, label %3110, label %3121

; <label>:3110:                                   ; preds = %3101
  %3111 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %3104, i32 0, i32 1
  %3112 = load i8, i8* %3111, align 8, !tbaa !2
  %3113 = icmp eq i8 %3112, 35
  br i1 %3113, label %3114, label %3127

; <label>:3114:                                   ; preds = %3110
  %3115 = bitcast %union.StackValue* %4530 to i64*
  %3116 = load i64, i64* %3115, align 8, !tbaa !6
  %3117 = bitcast %struct.TValue* %3105 to i64*
  %3118 = load i64, i64* %3117, align 8, !tbaa !6
  %3119 = icmp sle i64 %3116, %3118
  %3120 = zext i1 %3119 to i32
  br label %3265

; <label>:3121:                                   ; preds = %3101
  %3122 = and i8 %3108, 15
  %3123 = icmp eq i8 %3122, 3
  br i1 %3123, label %3124, label %3190

; <label>:3124:                                   ; preds = %3121
  %3125 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %3104, i32 0, i32 1
  %3126 = load i8, i8* %3125, align 8, !tbaa !2
  br label %3127

; <label>:3127:                                   ; preds = %3124, %3110
  %3128 = phi i8 [ %3126, %3124 ], [ %3112, %3110 ]
  %3129 = and i8 %3128, 15
  %3130 = icmp eq i8 %3129, 3
  br i1 %3130, label %3131, label %3190

; <label>:3131:                                   ; preds = %3127
  br i1 %3109, label %3132, label %3158

; <label>:3132:                                   ; preds = %3131
  %3133 = bitcast %union.StackValue* %4530 to i64*
  %3134 = load i64, i64* %3133, align 8, !tbaa !6
  %3135 = icmp eq i8 %3128, 35
  br i1 %3135, label %3136, label %3140

; <label>:3136:                                   ; preds = %3132
  %3137 = bitcast %struct.TValue* %3105 to i64*
  %3138 = load i64, i64* %3137, align 8, !tbaa !6
  %3139 = icmp sle i64 %3134, %3138
  br label %3187

; <label>:3140:                                   ; preds = %3132
  %3141 = bitcast %struct.TValue* %3105 to double*
  %3142 = load double, double* %3141, align 8, !tbaa !6
  %3143 = add i64 %3134, 9007199254740992
  %3144 = icmp ult i64 %3143, 18014398509481985
  br i1 %3144, label %3145, label %3148

; <label>:3145:                                   ; preds = %3140
  %3146 = sitofp i64 %3134 to double
  %3147 = fcmp fast oge double %3142, %3146
  br label %3187

; <label>:3148:                                   ; preds = %3140
  %3149 = call fast double @llvm.floor.f64(double %3142) #8
  %3150 = fcmp fast oge double %3149, 0xC3E0000000000000
  %3151 = fcmp fast olt double %3149, 0x43E0000000000000
  %3152 = and i1 %3150, %3151
  br i1 %3152, label %3153, label %3156

; <label>:3153:                                   ; preds = %3148
  %3154 = fptosi double %3149 to i64
  %3155 = icmp sle i64 %3134, %3154
  br label %3187

; <label>:3156:                                   ; preds = %3148
  %3157 = fcmp fast ogt double %3142, 0.000000e+00
  br label %3187

; <label>:3158:                                   ; preds = %3131
  %3159 = bitcast %union.StackValue* %4530 to double*
  %3160 = load double, double* %3159, align 8, !tbaa !6
  %3161 = icmp eq i8 %3128, 19
  br i1 %3161, label %3162, label %3166

; <label>:3162:                                   ; preds = %3158
  %3163 = bitcast %struct.TValue* %3105 to double*
  %3164 = load double, double* %3163, align 8, !tbaa !6
  %3165 = fcmp fast ole double %3160, %3164
  br label %3187

; <label>:3166:                                   ; preds = %3158
  %3167 = bitcast %struct.TValue* %3105 to i64*
  %3168 = load i64, i64* %3167, align 8, !tbaa !6
  %3169 = add i64 %3168, 9007199254740992
  %3170 = icmp ult i64 %3169, 18014398509481985
  br i1 %3170, label %3171, label %3174

; <label>:3171:                                   ; preds = %3166
  %3172 = sitofp i64 %3168 to double
  %3173 = fcmp fast ole double %3160, %3172
  br label %3187

; <label>:3174:                                   ; preds = %3166
  %3175 = call fast double @llvm.floor.f64(double %3160) #8
  %3176 = fcmp fast une double %3175, %3160
  %3177 = fadd fast double %3175, 1.000000e+00
  %3178 = select i1 %3176, double %3177, double %3175
  %3179 = fcmp fast oge double %3178, 0xC3E0000000000000
  %3180 = fcmp fast olt double %3178, 0x43E0000000000000
  %3181 = and i1 %3179, %3180
  br i1 %3181, label %3182, label %3185

; <label>:3182:                                   ; preds = %3174
  %3183 = fptosi double %3178 to i64
  %3184 = icmp sge i64 %3168, %3183
  br label %3187

; <label>:3185:                                   ; preds = %3174
  %3186 = fcmp fast olt double %3160, 0.000000e+00
  br label %3187

; <label>:3187:                                   ; preds = %3136, %3145, %3153, %3156, %3162, %3171, %3182, %3185
  %3188 = phi i1 [ %3139, %3136 ], [ %3165, %3162 ], [ %3147, %3145 ], [ %3157, %3156 ], [ %3155, %3153 ], [ %3173, %3171 ], [ %3186, %3185 ], [ %3184, %3182 ]
  %3189 = zext i1 %3188 to i32
  br label %3265

; <label>:3190:                                   ; preds = %3127, %3121
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3191 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %3191, i64* %19, align 8, !tbaa !28
  %3192 = load i8, i8* %3107, align 8, !tbaa !2
  %3193 = and i8 %3192, 15
  %3194 = icmp eq i8 %3193, 4
  br i1 %3194, label %3195, label %3260

; <label>:3195:                                   ; preds = %3190
  %3196 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %3104, i32 0, i32 1
  %3197 = load i8, i8* %3196, align 8, !tbaa !2
  %3198 = and i8 %3197, 15
  %3199 = icmp eq i8 %3198, 4
  br i1 %3199, label %3200, label %3260

; <label>:3200:                                   ; preds = %3195
  %3201 = bitcast %union.StackValue* %4530 to %struct.TString**
  %3202 = load %struct.TString*, %struct.TString** %3201, align 8, !tbaa !6
  %3203 = bitcast %struct.TValue* %3105 to %struct.TString**
  %3204 = load %struct.TString*, %struct.TString** %3203, align 8, !tbaa !6
  %3205 = getelementptr inbounds %struct.TString, %struct.TString* %3202, i64 1
  %3206 = bitcast %struct.TString* %3205 to i8*
  %3207 = getelementptr inbounds %struct.TString, %struct.TString* %3202, i64 0, i32 1
  %3208 = load i8, i8* %3207, align 8, !tbaa !25
  %3209 = icmp eq i8 %3208, 20
  br i1 %3209, label %3210, label %3214

; <label>:3210:                                   ; preds = %3200
  %3211 = getelementptr inbounds %struct.TString, %struct.TString* %3202, i64 0, i32 4
  %3212 = load i8, i8* %3211, align 1, !tbaa !27
  %3213 = zext i8 %3212 to i64
  br label %3217

; <label>:3214:                                   ; preds = %3200
  %3215 = getelementptr inbounds %struct.TString, %struct.TString* %3202, i64 0, i32 6, i32 0
  %3216 = load i64, i64* %3215, align 8, !tbaa !6
  br label %3217

; <label>:3217:                                   ; preds = %3214, %3210
  %3218 = phi i64 [ %3213, %3210 ], [ %3216, %3214 ]
  %3219 = getelementptr inbounds %struct.TString, %struct.TString* %3204, i64 1
  %3220 = bitcast %struct.TString* %3219 to i8*
  %3221 = getelementptr inbounds %struct.TString, %struct.TString* %3204, i64 0, i32 1
  %3222 = load i8, i8* %3221, align 8, !tbaa !25
  %3223 = icmp eq i8 %3222, 20
  br i1 %3223, label %3224, label %3228

; <label>:3224:                                   ; preds = %3217
  %3225 = getelementptr inbounds %struct.TString, %struct.TString* %3204, i64 0, i32 4
  %3226 = load i8, i8* %3225, align 1, !tbaa !27
  %3227 = zext i8 %3226 to i64
  br label %3231

; <label>:3228:                                   ; preds = %3217
  %3229 = getelementptr inbounds %struct.TString, %struct.TString* %3204, i64 0, i32 6, i32 0
  %3230 = load i64, i64* %3229, align 8, !tbaa !6
  br label %3231

; <label>:3231:                                   ; preds = %3228, %3224
  %3232 = phi i64 [ %3227, %3224 ], [ %3230, %3228 ]
  %3233 = call i32 @strcoll(i8* nonnull %3206, i8* nonnull %3220) #10
  %3234 = icmp eq i32 %3233, 0
  br i1 %3234, label %3235, label %3256

; <label>:3235:                                   ; preds = %3231
  br label %3236

; <label>:3236:                                   ; preds = %3235, %3248
  %3237 = phi i64 [ %3253, %3248 ], [ %3232, %3235 ]
  %3238 = phi i8* [ %3252, %3248 ], [ %3220, %3235 ]
  %3239 = phi i64 [ %3251, %3248 ], [ %3218, %3235 ]
  %3240 = phi i8* [ %3250, %3248 ], [ %3206, %3235 ]
  %3241 = call i64 @strlen(i8* %3240) #10
  %3242 = icmp eq i64 %3241, %3237
  %3243 = icmp eq i64 %3241, %3239
  br i1 %3242, label %3244, label %3247

; <label>:3244:                                   ; preds = %3236
  %3245 = xor i1 %3243, true
  %3246 = zext i1 %3245 to i32
  br label %3256

; <label>:3247:                                   ; preds = %3236
  br i1 %3243, label %3256, label %3248

; <label>:3248:                                   ; preds = %3247
  %3249 = add i64 %3241, 1
  %3250 = getelementptr inbounds i8, i8* %3240, i64 %3249
  %3251 = sub i64 %3239, %3249
  %3252 = getelementptr inbounds i8, i8* %3238, i64 %3249
  %3253 = sub i64 %3237, %3249
  %3254 = call i32 @strcoll(i8* %3250, i8* %3252) #10
  %3255 = icmp eq i32 %3254, 0
  br i1 %3255, label %3236, label %3256

; <label>:3256:                                   ; preds = %3247, %3248, %3231, %3244
  %3257 = phi i32 [ %3246, %3244 ], [ %3233, %3231 ], [ -1, %3247 ], [ %3254, %3248 ]
  %3258 = icmp slt i32 %3257, 1
  %3259 = zext i1 %3258 to i32
  br label %3262

; <label>:3260:                                   ; preds = %3195, %3190
  %3261 = call i32 @luaT_callorderTM(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3106, %struct.TValue* %3105, i32 21) #8
  br label %3262

; <label>:3262:                                   ; preds = %3256, %3260
  %3263 = phi i32 [ %3259, %3256 ], [ %3261, %3260 ]
  %3264 = load i32, i32* %21, align 8, !tbaa !6
  br label %3265

; <label>:3265:                                   ; preds = %3187, %3262, %3114
  %3266 = phi i32 [ %3120, %3114 ], [ %3189, %3187 ], [ %3263, %3262 ]
  %3267 = phi i32 [ %4525, %3114 ], [ %4525, %3187 ], [ %3264, %3262 ]
  %3268 = lshr i32 %4523, 15
  %3269 = and i32 %3268, 1
  %3270 = icmp eq i32 %3266, %3269
  br i1 %3270, label %3273, label %3271

; <label>:3271:                                   ; preds = %3265
  %3272 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3280

; <label>:3273:                                   ; preds = %3265
  %3274 = load i32, i32* %4526, align 4, !tbaa !32
  %3275 = lshr i32 %3274, 7
  %3276 = add nsw i32 %3275, -16777214
  %3277 = sext i32 %3276 to i64
  %3278 = getelementptr inbounds i32, i32* %4526, i64 %3277
  %3279 = load i32, i32* %21, align 8, !tbaa !6
  br label %3280

; <label>:3280:                                   ; preds = %3273, %3271
  %3281 = phi i32 [ %3267, %3271 ], [ %3279, %3273 ]
  %3282 = phi i32* [ %3272, %3271 ], [ %3278, %3273 ]
  %3283 = icmp eq i32 %3281, 0
  br i1 %3283, label %3288, label %3284

; <label>:3284:                                   ; preds = %3280
  %3285 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3282) #8
  %3286 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3287 = getelementptr inbounds %union.StackValue, %union.StackValue* %3286, i64 1
  br label %3288

; <label>:3288:                                   ; preds = %3280, %3284
  %3289 = phi i32 [ %3285, %3284 ], [ 0, %3280 ]
  %3290 = phi %union.StackValue* [ %3287, %3284 ], [ %4524, %3280 ]
  %3291 = getelementptr inbounds i32, i32* %3282, i64 1
  %3292 = load i32, i32* %3282, align 4, !tbaa !32
  br label %93

; <label>:3293:                                   ; preds = %4522
  %3294 = lshr i32 %4523, 16
  %3295 = and i32 %3294, 255
  %3296 = zext i32 %3295 to i64
  %3297 = getelementptr inbounds %struct.TValue, %struct.TValue* %49, i64 %3296
  %3298 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %3299 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %3298, %struct.TValue* %3297)
  %3300 = lshr i32 %4523, 15
  %3301 = and i32 %3300, 1
  %3302 = icmp eq i32 %3299, %3301
  br i1 %3302, label %3305, label %3303

; <label>:3303:                                   ; preds = %3293
  %3304 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3312

; <label>:3305:                                   ; preds = %3293
  %3306 = load i32, i32* %4526, align 4, !tbaa !32
  %3307 = lshr i32 %3306, 7
  %3308 = add nsw i32 %3307, -16777214
  %3309 = sext i32 %3308 to i64
  %3310 = getelementptr inbounds i32, i32* %4526, i64 %3309
  %3311 = load i32, i32* %21, align 8, !tbaa !6
  br label %3312

; <label>:3312:                                   ; preds = %3305, %3303
  %3313 = phi i32 [ %4525, %3303 ], [ %3311, %3305 ]
  %3314 = phi i32* [ %3304, %3303 ], [ %3310, %3305 ]
  %3315 = icmp eq i32 %3313, 0
  br i1 %3315, label %3320, label %3316

; <label>:3316:                                   ; preds = %3312
  %3317 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3314) #8
  %3318 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3319 = getelementptr inbounds %union.StackValue, %union.StackValue* %3318, i64 1
  br label %3320

; <label>:3320:                                   ; preds = %3312, %3316
  %3321 = phi i32 [ %3317, %3316 ], [ 0, %3312 ]
  %3322 = phi %union.StackValue* [ %3319, %3316 ], [ %4524, %3312 ]
  %3323 = getelementptr inbounds i32, i32* %3314, i64 1
  %3324 = load i32, i32* %3314, align 4, !tbaa !32
  br label %93

; <label>:3325:                                   ; preds = %4522
  %3326 = lshr i32 %4523, 16
  %3327 = and i32 %3326, 255
  %3328 = add nsw i32 %3327, -127
  %3329 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %3330 = load i8, i8* %3329, align 8, !tbaa !6
  switch i8 %3330, label %3331 [
    i8 35, label %3334
    i8 19, label %3339
  ]

; <label>:3331:                                   ; preds = %3325
  %3332 = trunc i32 %4523 to i16
  %3333 = icmp slt i16 %3332, 0
  br i1 %3333, label %3349, label %3351

; <label>:3334:                                   ; preds = %3325
  %3335 = bitcast %union.StackValue* %4530 to i64*
  %3336 = load i64, i64* %3335, align 8, !tbaa !6
  %3337 = sext i32 %3328 to i64
  %3338 = icmp eq i64 %3336, %3337
  br label %3344

; <label>:3339:                                   ; preds = %3325
  %3340 = bitcast %union.StackValue* %4530 to double*
  %3341 = load double, double* %3340, align 8, !tbaa !6
  %3342 = sitofp i32 %3328 to double
  %3343 = fcmp fast oeq double %3341, %3342
  br label %3344

; <label>:3344:                                   ; preds = %3339, %3334
  %3345 = phi i1 [ %3338, %3334 ], [ %3343, %3339 ]
  %3346 = trunc i32 %4523 to i16
  %3347 = icmp slt i16 %3346, 0
  %3348 = xor i1 %3347, %3345
  br i1 %3348, label %3349, label %3351

; <label>:3349:                                   ; preds = %3331, %3344
  %3350 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3358

; <label>:3351:                                   ; preds = %3331, %3344
  %3352 = load i32, i32* %4526, align 4, !tbaa !32
  %3353 = lshr i32 %3352, 7
  %3354 = add nsw i32 %3353, -16777214
  %3355 = sext i32 %3354 to i64
  %3356 = getelementptr inbounds i32, i32* %4526, i64 %3355
  %3357 = load i32, i32* %21, align 8, !tbaa !6
  br label %3358

; <label>:3358:                                   ; preds = %3351, %3349
  %3359 = phi i32 [ %4525, %3349 ], [ %3357, %3351 ]
  %3360 = phi i32* [ %3350, %3349 ], [ %3356, %3351 ]
  %3361 = icmp eq i32 %3359, 0
  br i1 %3361, label %3366, label %3362

; <label>:3362:                                   ; preds = %3358
  %3363 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3360) #8
  %3364 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3365 = getelementptr inbounds %union.StackValue, %union.StackValue* %3364, i64 1
  br label %3366

; <label>:3366:                                   ; preds = %3358, %3362
  %3367 = phi i32 [ %3363, %3362 ], [ 0, %3358 ]
  %3368 = phi %union.StackValue* [ %3365, %3362 ], [ %4524, %3358 ]
  %3369 = getelementptr inbounds i32, i32* %3360, i64 1
  %3370 = load i32, i32* %3360, align 4, !tbaa !32
  br label %93

; <label>:3371:                                   ; preds = %4522
  %3372 = lshr i32 %4523, 16
  %3373 = and i32 %3372, 255
  %3374 = add nsw i32 %3373, -127
  %3375 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %3376 = load i8, i8* %3375, align 8, !tbaa !6
  switch i8 %3376, label %3389 [
    i8 35, label %3377
    i8 19, label %3383
  ]

; <label>:3377:                                   ; preds = %3371
  %3378 = bitcast %union.StackValue* %4530 to i64*
  %3379 = load i64, i64* %3378, align 8, !tbaa !6
  %3380 = sext i32 %3374 to i64
  %3381 = icmp slt i64 %3379, %3380
  %3382 = zext i1 %3381 to i32
  br label %3395

; <label>:3383:                                   ; preds = %3371
  %3384 = bitcast %union.StackValue* %4530 to double*
  %3385 = load double, double* %3384, align 8, !tbaa !6
  %3386 = sitofp i32 %3374 to double
  %3387 = fcmp fast olt double %3385, %3386
  %3388 = zext i1 %3387 to i32
  br label %3395

; <label>:3389:                                   ; preds = %3371
  %3390 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %3391 = lshr i32 %4523, 24
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3392 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %3392, i64* %19, align 8, !tbaa !28
  %3393 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3390, i32 %3374, i32 0, i32 %3391, i32 20) #8
  %3394 = load i32, i32* %21, align 8, !tbaa !6
  br label %3395

; <label>:3395:                                   ; preds = %3383, %3389, %3377
  %3396 = phi i32 [ %3382, %3377 ], [ %3388, %3383 ], [ %3393, %3389 ]
  %3397 = phi i32 [ %4525, %3377 ], [ %4525, %3383 ], [ %3394, %3389 ]
  %3398 = lshr i32 %4523, 15
  %3399 = and i32 %3398, 1
  %3400 = icmp eq i32 %3396, %3399
  br i1 %3400, label %3403, label %3401

; <label>:3401:                                   ; preds = %3395
  %3402 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3410

; <label>:3403:                                   ; preds = %3395
  %3404 = load i32, i32* %4526, align 4, !tbaa !32
  %3405 = lshr i32 %3404, 7
  %3406 = add nsw i32 %3405, -16777214
  %3407 = sext i32 %3406 to i64
  %3408 = getelementptr inbounds i32, i32* %4526, i64 %3407
  %3409 = load i32, i32* %21, align 8, !tbaa !6
  br label %3410

; <label>:3410:                                   ; preds = %3403, %3401
  %3411 = phi i32 [ %3397, %3401 ], [ %3409, %3403 ]
  %3412 = phi i32* [ %3402, %3401 ], [ %3408, %3403 ]
  %3413 = icmp eq i32 %3411, 0
  br i1 %3413, label %3418, label %3414

; <label>:3414:                                   ; preds = %3410
  %3415 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3412) #8
  %3416 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3417 = getelementptr inbounds %union.StackValue, %union.StackValue* %3416, i64 1
  br label %3418

; <label>:3418:                                   ; preds = %3410, %3414
  %3419 = phi i32 [ %3415, %3414 ], [ 0, %3410 ]
  %3420 = phi %union.StackValue* [ %3417, %3414 ], [ %4524, %3410 ]
  %3421 = getelementptr inbounds i32, i32* %3412, i64 1
  %3422 = load i32, i32* %3412, align 4, !tbaa !32
  br label %93

; <label>:3423:                                   ; preds = %4522
  %3424 = lshr i32 %4523, 16
  %3425 = and i32 %3424, 255
  %3426 = add nsw i32 %3425, -127
  %3427 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %3428 = load i8, i8* %3427, align 8, !tbaa !6
  switch i8 %3428, label %3441 [
    i8 35, label %3429
    i8 19, label %3435
  ]

; <label>:3429:                                   ; preds = %3423
  %3430 = bitcast %union.StackValue* %4530 to i64*
  %3431 = load i64, i64* %3430, align 8, !tbaa !6
  %3432 = sext i32 %3426 to i64
  %3433 = icmp sle i64 %3431, %3432
  %3434 = zext i1 %3433 to i32
  br label %3447

; <label>:3435:                                   ; preds = %3423
  %3436 = bitcast %union.StackValue* %4530 to double*
  %3437 = load double, double* %3436, align 8, !tbaa !6
  %3438 = sitofp i32 %3426 to double
  %3439 = fcmp fast ole double %3437, %3438
  %3440 = zext i1 %3439 to i32
  br label %3447

; <label>:3441:                                   ; preds = %3423
  %3442 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %3443 = lshr i32 %4523, 24
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3444 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %3444, i64* %19, align 8, !tbaa !28
  %3445 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3442, i32 %3426, i32 0, i32 %3443, i32 21) #8
  %3446 = load i32, i32* %21, align 8, !tbaa !6
  br label %3447

; <label>:3447:                                   ; preds = %3435, %3441, %3429
  %3448 = phi i32 [ %3434, %3429 ], [ %3440, %3435 ], [ %3445, %3441 ]
  %3449 = phi i32 [ %4525, %3429 ], [ %4525, %3435 ], [ %3446, %3441 ]
  %3450 = lshr i32 %4523, 15
  %3451 = and i32 %3450, 1
  %3452 = icmp eq i32 %3448, %3451
  br i1 %3452, label %3455, label %3453

; <label>:3453:                                   ; preds = %3447
  %3454 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3462

; <label>:3455:                                   ; preds = %3447
  %3456 = load i32, i32* %4526, align 4, !tbaa !32
  %3457 = lshr i32 %3456, 7
  %3458 = add nsw i32 %3457, -16777214
  %3459 = sext i32 %3458 to i64
  %3460 = getelementptr inbounds i32, i32* %4526, i64 %3459
  %3461 = load i32, i32* %21, align 8, !tbaa !6
  br label %3462

; <label>:3462:                                   ; preds = %3455, %3453
  %3463 = phi i32 [ %3449, %3453 ], [ %3461, %3455 ]
  %3464 = phi i32* [ %3454, %3453 ], [ %3460, %3455 ]
  %3465 = icmp eq i32 %3463, 0
  br i1 %3465, label %3470, label %3466

; <label>:3466:                                   ; preds = %3462
  %3467 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3464) #8
  %3468 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3469 = getelementptr inbounds %union.StackValue, %union.StackValue* %3468, i64 1
  br label %3470

; <label>:3470:                                   ; preds = %3462, %3466
  %3471 = phi i32 [ %3467, %3466 ], [ 0, %3462 ]
  %3472 = phi %union.StackValue* [ %3469, %3466 ], [ %4524, %3462 ]
  %3473 = getelementptr inbounds i32, i32* %3464, i64 1
  %3474 = load i32, i32* %3464, align 4, !tbaa !32
  br label %93

; <label>:3475:                                   ; preds = %4522
  %3476 = lshr i32 %4523, 16
  %3477 = and i32 %3476, 255
  %3478 = add nsw i32 %3477, -127
  %3479 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %3480 = load i8, i8* %3479, align 8, !tbaa !6
  switch i8 %3480, label %3493 [
    i8 35, label %3481
    i8 19, label %3487
  ]

; <label>:3481:                                   ; preds = %3475
  %3482 = bitcast %union.StackValue* %4530 to i64*
  %3483 = load i64, i64* %3482, align 8, !tbaa !6
  %3484 = sext i32 %3478 to i64
  %3485 = icmp sgt i64 %3483, %3484
  %3486 = zext i1 %3485 to i32
  br label %3499

; <label>:3487:                                   ; preds = %3475
  %3488 = bitcast %union.StackValue* %4530 to double*
  %3489 = load double, double* %3488, align 8, !tbaa !6
  %3490 = sitofp i32 %3478 to double
  %3491 = fcmp fast ogt double %3489, %3490
  %3492 = zext i1 %3491 to i32
  br label %3499

; <label>:3493:                                   ; preds = %3475
  %3494 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %3495 = lshr i32 %4523, 24
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3496 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %3496, i64* %19, align 8, !tbaa !28
  %3497 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3494, i32 %3478, i32 1, i32 %3495, i32 20) #8
  %3498 = load i32, i32* %21, align 8, !tbaa !6
  br label %3499

; <label>:3499:                                   ; preds = %3487, %3493, %3481
  %3500 = phi i32 [ %3486, %3481 ], [ %3492, %3487 ], [ %3497, %3493 ]
  %3501 = phi i32 [ %4525, %3481 ], [ %4525, %3487 ], [ %3498, %3493 ]
  %3502 = lshr i32 %4523, 15
  %3503 = and i32 %3502, 1
  %3504 = icmp eq i32 %3500, %3503
  br i1 %3504, label %3507, label %3505

; <label>:3505:                                   ; preds = %3499
  %3506 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3514

; <label>:3507:                                   ; preds = %3499
  %3508 = load i32, i32* %4526, align 4, !tbaa !32
  %3509 = lshr i32 %3508, 7
  %3510 = add nsw i32 %3509, -16777214
  %3511 = sext i32 %3510 to i64
  %3512 = getelementptr inbounds i32, i32* %4526, i64 %3511
  %3513 = load i32, i32* %21, align 8, !tbaa !6
  br label %3514

; <label>:3514:                                   ; preds = %3507, %3505
  %3515 = phi i32 [ %3501, %3505 ], [ %3513, %3507 ]
  %3516 = phi i32* [ %3506, %3505 ], [ %3512, %3507 ]
  %3517 = icmp eq i32 %3515, 0
  br i1 %3517, label %3522, label %3518

; <label>:3518:                                   ; preds = %3514
  %3519 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3516) #8
  %3520 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3521 = getelementptr inbounds %union.StackValue, %union.StackValue* %3520, i64 1
  br label %3522

; <label>:3522:                                   ; preds = %3514, %3518
  %3523 = phi i32 [ %3519, %3518 ], [ 0, %3514 ]
  %3524 = phi %union.StackValue* [ %3521, %3518 ], [ %4524, %3514 ]
  %3525 = getelementptr inbounds i32, i32* %3516, i64 1
  %3526 = load i32, i32* %3516, align 4, !tbaa !32
  br label %93

; <label>:3527:                                   ; preds = %4522
  %3528 = lshr i32 %4523, 16
  %3529 = and i32 %3528, 255
  %3530 = add nsw i32 %3529, -127
  %3531 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %3532 = load i8, i8* %3531, align 8, !tbaa !6
  switch i8 %3532, label %3545 [
    i8 35, label %3533
    i8 19, label %3539
  ]

; <label>:3533:                                   ; preds = %3527
  %3534 = bitcast %union.StackValue* %4530 to i64*
  %3535 = load i64, i64* %3534, align 8, !tbaa !6
  %3536 = sext i32 %3530 to i64
  %3537 = icmp sge i64 %3535, %3536
  %3538 = zext i1 %3537 to i32
  br label %3551

; <label>:3539:                                   ; preds = %3527
  %3540 = bitcast %union.StackValue* %4530 to double*
  %3541 = load double, double* %3540, align 8, !tbaa !6
  %3542 = sitofp i32 %3530 to double
  %3543 = fcmp fast oge double %3541, %3542
  %3544 = zext i1 %3543 to i32
  br label %3551

; <label>:3545:                                   ; preds = %3527
  %3546 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  %3547 = lshr i32 %4523, 24
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3548 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %3548, i64* %19, align 8, !tbaa !28
  %3549 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3546, i32 %3530, i32 1, i32 %3547, i32 21) #8
  %3550 = load i32, i32* %21, align 8, !tbaa !6
  br label %3551

; <label>:3551:                                   ; preds = %3539, %3545, %3533
  %3552 = phi i32 [ %3538, %3533 ], [ %3544, %3539 ], [ %3549, %3545 ]
  %3553 = phi i32 [ %4525, %3533 ], [ %4525, %3539 ], [ %3550, %3545 ]
  %3554 = lshr i32 %4523, 15
  %3555 = and i32 %3554, 1
  %3556 = icmp eq i32 %3552, %3555
  br i1 %3556, label %3559, label %3557

; <label>:3557:                                   ; preds = %3551
  %3558 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3566

; <label>:3559:                                   ; preds = %3551
  %3560 = load i32, i32* %4526, align 4, !tbaa !32
  %3561 = lshr i32 %3560, 7
  %3562 = add nsw i32 %3561, -16777214
  %3563 = sext i32 %3562 to i64
  %3564 = getelementptr inbounds i32, i32* %4526, i64 %3563
  %3565 = load i32, i32* %21, align 8, !tbaa !6
  br label %3566

; <label>:3566:                                   ; preds = %3559, %3557
  %3567 = phi i32 [ %3553, %3557 ], [ %3565, %3559 ]
  %3568 = phi i32* [ %3558, %3557 ], [ %3564, %3559 ]
  %3569 = icmp eq i32 %3567, 0
  br i1 %3569, label %3574, label %3570

; <label>:3570:                                   ; preds = %3566
  %3571 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3568) #8
  %3572 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3573 = getelementptr inbounds %union.StackValue, %union.StackValue* %3572, i64 1
  br label %3574

; <label>:3574:                                   ; preds = %3566, %3570
  %3575 = phi i32 [ %3571, %3570 ], [ 0, %3566 ]
  %3576 = phi %union.StackValue* [ %3573, %3570 ], [ %4524, %3566 ]
  %3577 = getelementptr inbounds i32, i32* %3568, i64 1
  %3578 = load i32, i32* %3568, align 4, !tbaa !32
  br label %93

; <label>:3579:                                   ; preds = %4522
  %3580 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %3581 = load i8, i8* %3580, align 8, !tbaa !6
  %3582 = and i8 %3581, 15
  %3583 = icmp eq i8 %3582, 0
  br i1 %3583, label %3584, label %3587

; <label>:3584:                                   ; preds = %3579
  %3585 = trunc i32 %4523 to i16
  %3586 = icmp slt i16 %3585, 0
  br i1 %3586, label %3599, label %3601

; <label>:3587:                                   ; preds = %3579
  %3588 = icmp eq i8 %3581, 1
  br i1 %3588, label %3592, label %3589

; <label>:3589:                                   ; preds = %3587
  %3590 = trunc i32 %4523 to i16
  %3591 = icmp sgt i16 %3590, -1
  br i1 %3591, label %3599, label %3601

; <label>:3592:                                   ; preds = %3587
  %3593 = bitcast %union.StackValue* %4530 to i32*
  %3594 = load i32, i32* %3593, align 8, !tbaa !6
  %3595 = icmp ne i32 %3594, 0
  %3596 = trunc i32 %4523 to i16
  %3597 = icmp slt i16 %3596, 0
  %3598 = xor i1 %3597, %3595
  br i1 %3598, label %3599, label %3601

; <label>:3599:                                   ; preds = %3589, %3584, %3592
  %3600 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3608

; <label>:3601:                                   ; preds = %3589, %3584, %3592
  %3602 = load i32, i32* %4526, align 4, !tbaa !32
  %3603 = lshr i32 %3602, 7
  %3604 = add nsw i32 %3603, -16777214
  %3605 = sext i32 %3604 to i64
  %3606 = getelementptr inbounds i32, i32* %4526, i64 %3605
  %3607 = load i32, i32* %21, align 8, !tbaa !6
  br label %3608

; <label>:3608:                                   ; preds = %3601, %3599
  %3609 = phi i32 [ %4525, %3599 ], [ %3607, %3601 ]
  %3610 = phi i32* [ %3600, %3599 ], [ %3606, %3601 ]
  %3611 = icmp eq i32 %3609, 0
  br i1 %3611, label %3616, label %3612

; <label>:3612:                                   ; preds = %3608
  %3613 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3610) #8
  %3614 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3615 = getelementptr inbounds %union.StackValue, %union.StackValue* %3614, i64 1
  br label %3616

; <label>:3616:                                   ; preds = %3608, %3612
  %3617 = phi i32 [ %3613, %3612 ], [ 0, %3608 ]
  %3618 = phi %union.StackValue* [ %3615, %3612 ], [ %4524, %3608 ]
  %3619 = getelementptr inbounds i32, i32* %3610, i64 1
  %3620 = load i32, i32* %3610, align 4, !tbaa !32
  br label %93

; <label>:3621:                                   ; preds = %4522
  %3622 = lshr i32 %4523, 16
  %3623 = and i32 %3622, 255
  %3624 = zext i32 %3623 to i64
  %3625 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %3624, i32 0
  %3626 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %3624, i32 0, i32 1
  %3627 = load i8, i8* %3626, align 8, !tbaa !2
  %3628 = and i8 %3627, 15
  %3629 = icmp eq i8 %3628, 0
  br i1 %3629, label %3630, label %3633

; <label>:3630:                                   ; preds = %3621
  %3631 = trunc i32 %4523 to i16
  %3632 = icmp sgt i16 %3631, -1
  br i1 %3632, label %3647, label %3645

; <label>:3633:                                   ; preds = %3621
  %3634 = icmp eq i8 %3627, 1
  br i1 %3634, label %3638, label %3635

; <label>:3635:                                   ; preds = %3633
  %3636 = trunc i32 %4523 to i16
  %3637 = icmp slt i16 %3636, 0
  br i1 %3637, label %3647, label %3645

; <label>:3638:                                   ; preds = %3633
  %3639 = bitcast %struct.TValue* %3625 to i32*
  %3640 = load i32, i32* %3639, align 8, !tbaa !6
  %3641 = icmp eq i32 %3640, 0
  %3642 = trunc i32 %4523 to i16
  %3643 = icmp slt i16 %3642, 0
  %3644 = xor i1 %3643, %3641
  br i1 %3644, label %3647, label %3645

; <label>:3645:                                   ; preds = %3630, %3635, %3638
  %3646 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %3659

; <label>:3647:                                   ; preds = %3630, %3635, %3638
  %3648 = bitcast %struct.TValue* %3625 to i64*
  %3649 = bitcast %union.StackValue* %4530 to i64*
  %3650 = load i64, i64* %3648, align 8
  store i64 %3650, i64* %3649, align 8
  %3651 = load i8, i8* %3626, align 8, !tbaa !2
  %3652 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 %3651, i8* %3652, align 8, !tbaa !2
  %3653 = load i32, i32* %4526, align 4, !tbaa !32
  %3654 = lshr i32 %3653, 7
  %3655 = add nsw i32 %3654, -16777214
  %3656 = sext i32 %3655 to i64
  %3657 = getelementptr inbounds i32, i32* %4526, i64 %3656
  %3658 = load i32, i32* %21, align 8, !tbaa !6
  br label %3659

; <label>:3659:                                   ; preds = %3647, %3645
  %3660 = phi i32 [ %4525, %3645 ], [ %3658, %3647 ]
  %3661 = phi i32* [ %3646, %3645 ], [ %3657, %3647 ]
  %3662 = icmp eq i32 %3660, 0
  br i1 %3662, label %3667, label %3663

; <label>:3663:                                   ; preds = %3659
  %3664 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3661) #8
  %3665 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3666 = getelementptr inbounds %union.StackValue, %union.StackValue* %3665, i64 1
  br label %3667

; <label>:3667:                                   ; preds = %3659, %3663
  %3668 = phi i32 [ %3664, %3663 ], [ 0, %3659 ]
  %3669 = phi %union.StackValue* [ %3666, %3663 ], [ %4524, %3659 ]
  %3670 = getelementptr inbounds i32, i32* %3661, i64 1
  %3671 = load i32, i32* %3661, align 4, !tbaa !32
  br label %93

; <label>:3672:                                   ; preds = %4522
  %3673 = lshr i32 %4523, 16
  %3674 = and i32 %3673, 255
  %3675 = lshr i32 %4523, 24
  %3676 = add nsw i32 %3675, -1
  %3677 = icmp eq i32 %3674, 0
  br i1 %3677, label %3681, label %3678

; <label>:3678:                                   ; preds = %3672
  %3679 = zext i32 %3674 to i64
  %3680 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 %3679
  store %union.StackValue* %3680, %union.StackValue** %18, align 8, !tbaa !28
  br label %3681

; <label>:3681:                                   ; preds = %3672, %3678
  store i32* %4526, i32** %15, align 8, !tbaa !6
  call void @luaD_call(%struct.lua_State* %0, %union.StackValue* %4530, i32 %3676) #8
  %3682 = load i32, i32* %21, align 8, !tbaa !6
  %3683 = icmp eq i32 %3682, 0
  br i1 %3683, label %3688, label %3684

; <label>:3684:                                   ; preds = %3681
  %3685 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %3686 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3687 = getelementptr inbounds %union.StackValue, %union.StackValue* %3686, i64 1
  br label %3688

; <label>:3688:                                   ; preds = %3681, %3684
  %3689 = phi i32 [ %3685, %3684 ], [ 0, %3681 ]
  %3690 = phi %union.StackValue* [ %3687, %3684 ], [ %4524, %3681 ]
  %3691 = getelementptr inbounds i32, i32* %4526, i64 1
  %3692 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:3693:                                   ; preds = %4522
  %3694 = zext i32 %4528 to i64
  %3695 = lshr i32 %4523, 16
  %3696 = and i32 %3695, 255
  %3697 = icmp eq i32 %3696, 0
  br i1 %3697, label %3701, label %3698

; <label>:3698:                                   ; preds = %3693
  %3699 = zext i32 %3696 to i64
  %3700 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 %3699
  store %union.StackValue* %3700, %union.StackValue** %18, align 8, !tbaa !28
  br label %3707

; <label>:3701:                                   ; preds = %3693
  %3702 = load i64, i64* %19, align 8, !tbaa !28
  %3703 = ptrtoint %union.StackValue* %4530 to i64
  %3704 = sub i64 %3702, %3703
  %3705 = lshr exact i64 %3704, 4
  %3706 = trunc i64 %3705 to i32
  br label %3707

; <label>:3707:                                   ; preds = %3701, %3698
  %3708 = phi i32 [ %3696, %3698 ], [ %3706, %3701 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3709 = trunc i32 %4523 to i16
  %3710 = icmp slt i16 %3709, 0
  br i1 %3710, label %3711, label %3720

; <label>:3711:                                   ; preds = %3707
  %3712 = lshr i32 %4523, 24
  %3713 = icmp eq i32 %3712, 0
  br i1 %3713, label %3717, label %3714

; <label>:3714:                                   ; preds = %3711
  %3715 = load i32, i32* %41, align 4, !tbaa !6
  %3716 = add nsw i32 %3715, %3712
  br label %3717

; <label>:3717:                                   ; preds = %3711, %3714
  %3718 = phi i32 [ %3716, %3714 ], [ 0, %3711 ]
  %3719 = call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %4524, i32 -1) #8
  br label %3720

; <label>:3720:                                   ; preds = %3717, %3707
  %3721 = phi i32 [ %3718, %3717 ], [ 0, %3707 ]
  %3722 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %3694, i32 0, i32 1
  %3723 = load i8, i8* %3722, align 8, !tbaa !6
  %3724 = and i8 %3723, 15
  %3725 = icmp eq i8 %3724, 6
  br i1 %3725, label %3729, label %3726

; <label>:3726:                                   ; preds = %3720
  call void @luaD_tryfuncTM(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %4530) #8
  %3727 = add nsw i32 %3708, 1
  %3728 = load i8, i8* %3722, align 8, !tbaa !6
  br label %3729

; <label>:3729:                                   ; preds = %3726, %3720
  %3730 = phi i8 [ %3728, %3726 ], [ %3723, %3720 ]
  %3731 = phi i32 [ %3727, %3726 ], [ %3708, %3720 ]
  %3732 = icmp eq i8 %3730, 86
  br i1 %3732, label %3753, label %3733

; <label>:3733:                                   ; preds = %3729
  call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %4530, i32 -1) #8
  %3734 = load i32, i32* %21, align 8, !tbaa !6
  %3735 = icmp eq i32 %3734, 0
  %3736 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  br i1 %3735, label %3743, label %3737

; <label>:3737:                                   ; preds = %3733
  %3738 = getelementptr inbounds %union.StackValue, %union.StackValue* %3736, i64 1
  %3739 = lshr i32 %4523, 7
  %3740 = and i32 %3739, 255
  %3741 = zext i32 %3740 to i64
  %3742 = getelementptr inbounds %union.StackValue, %union.StackValue* %3738, i64 %3741
  br label %3743

; <label>:3743:                                   ; preds = %3733, %3737
  %3744 = phi %union.StackValue* [ %3742, %3737 ], [ %4530, %3733 ]
  %3745 = sext i32 %3721 to i64
  %3746 = sub nsw i64 0, %3745
  %3747 = getelementptr inbounds %union.StackValue, %union.StackValue* %3736, i64 %3746
  store %union.StackValue* %3747, %union.StackValue** %11, align 8, !tbaa !31
  %3748 = load i64, i64* %19, align 8, !tbaa !28
  %3749 = ptrtoint %union.StackValue* %3744 to i64
  %3750 = sub i64 %3748, %3749
  %3751 = lshr exact i64 %3750, 4
  %3752 = trunc i64 %3751 to i32
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %3752) #8
  br label %4521

; <label>:3753:                                   ; preds = %3729
  %3754 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3755 = sext i32 %3721 to i64
  %3756 = sub nsw i64 0, %3755
  %3757 = getelementptr inbounds %union.StackValue, %union.StackValue* %3754, i64 %3756
  store %union.StackValue* %3757, %union.StackValue** %11, align 8, !tbaa !31
  call void @luaD_pretailcall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, %union.StackValue* nonnull %4530, i32 %3731) #8
  br label %42

; <label>:3758:                                   ; preds = %4522
  %3759 = lshr i32 %4523, 16
  %3760 = and i32 %3759, 255
  %3761 = add nsw i32 %3760, -1
  %3762 = icmp eq i32 %3760, 0
  br i1 %3762, label %3763, label %3769

; <label>:3763:                                   ; preds = %3758
  %3764 = load i64, i64* %19, align 8, !tbaa !28
  %3765 = ptrtoint %union.StackValue* %4530 to i64
  %3766 = sub i64 %3764, %3765
  %3767 = lshr exact i64 %3766, 4
  %3768 = trunc i64 %3767 to i32
  br label %3772

; <label>:3769:                                   ; preds = %3758
  %3770 = sext i32 %3761 to i64
  %3771 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 %3770
  store %union.StackValue* %3771, %union.StackValue** %18, align 8, !tbaa !28
  br label %3772

; <label>:3772:                                   ; preds = %3769, %3763
  %3773 = phi i32 [ %3768, %3763 ], [ %3761, %3769 ]
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3774 = trunc i32 %4523 to i16
  %3775 = icmp slt i16 %3774, 0
  br i1 %3775, label %3776, label %3788

; <label>:3776:                                   ; preds = %3772
  %3777 = lshr i32 %4523, 24
  %3778 = icmp eq i32 %3777, 0
  br i1 %3778, label %3786, label %3779

; <label>:3779:                                   ; preds = %3776
  %3780 = load i32, i32* %41, align 4, !tbaa !6
  %3781 = add nsw i32 %3780, %3777
  %3782 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3783 = sext i32 %3781 to i64
  %3784 = sub nsw i64 0, %3783
  %3785 = getelementptr inbounds %union.StackValue, %union.StackValue* %3782, i64 %3784
  store %union.StackValue* %3785, %union.StackValue** %11, align 8, !tbaa !31
  br label %3786

; <label>:3786:                                   ; preds = %3776, %3779
  %3787 = call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %4524, i32 0) #8
  br label %3788

; <label>:3788:                                   ; preds = %3786, %3772
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %3773) #8
  br label %4521

; <label>:3789:                                   ; preds = %4522
  %3790 = load i32, i32* %10, align 8, !tbaa !33
  %3791 = icmp eq i32 %3790, 0
  br i1 %3791, label %3793, label %3792

; <label>:3792:                                   ; preds = %3789
  store %union.StackValue* %4530, %union.StackValue** %18, align 8, !tbaa !28
  store i32* %4526, i32** %15, align 8, !tbaa !6
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %1, i32 0) #8
  br label %4521

; <label>:3793:                                   ; preds = %3789
  %3794 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %3795 = load i16, i16* %3794, align 4, !tbaa !49
  %3796 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %3797 = bitcast %struct.CallInfo** %3796 to i64*
  %3798 = load i64, i64* %3797, align 8, !tbaa !50
  %3799 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3800 = bitcast %struct.CallInfo** %3799 to i64*
  store i64 %3798, i64* %3800, align 8, !tbaa !30
  %3801 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 -1
  store %union.StackValue* %3801, %union.StackValue** %18, align 8, !tbaa !28
  %3802 = icmp sgt i16 %3795, 0
  br i1 %3802, label %3803, label %4521

; <label>:3803:                                   ; preds = %3793
  store %union.StackValue* %4524, %union.StackValue** %18, align 8, !tbaa !28
  %3804 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 -1, i32 0, i32 1
  store i8 0, i8* %3804, align 8, !tbaa !6
  %3805 = icmp eq i16 %3795, 1
  br i1 %3805, label %4521, label %3806

; <label>:3806:                                   ; preds = %3803
  %3807 = sext i16 %3795 to i32
  br label %3808

; <label>:3808:                                   ; preds = %3806, %3808
  %3809 = phi i32 [ %3807, %3806 ], [ %3810, %3808 ]
  %3810 = add nsw i32 %3809, -1
  %3811 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !28
  %3812 = getelementptr inbounds %union.StackValue, %union.StackValue* %3811, i64 1
  store %union.StackValue* %3812, %union.StackValue** %18, align 8, !tbaa !28
  %3813 = getelementptr inbounds %union.StackValue, %union.StackValue* %3811, i64 0, i32 0, i32 1
  store i8 0, i8* %3813, align 8, !tbaa !6
  %3814 = icmp sgt i32 %3809, 2
  br i1 %3814, label %3808, label %4521

; <label>:3815:                                   ; preds = %4522
  %3816 = zext i32 %4528 to i64
  %3817 = load i32, i32* %10, align 8, !tbaa !33
  %3818 = icmp eq i32 %3817, 0
  br i1 %3818, label %3821, label %3819

; <label>:3819:                                   ; preds = %3815
  %3820 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1
  store %union.StackValue* %3820, %union.StackValue** %18, align 8, !tbaa !28
  store i32* %4526, i32** %15, align 8, !tbaa !6
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %1, i32 1) #8
  br label %4521

; <label>:3821:                                   ; preds = %3815
  %3822 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %3823 = load i16, i16* %3822, align 4, !tbaa !49
  %3824 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %3825 = bitcast %struct.CallInfo** %3824 to i64*
  %3826 = load i64, i64* %3825, align 8, !tbaa !50
  %3827 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3828 = bitcast %struct.CallInfo** %3827 to i64*
  store i64 %3826, i64* %3828, align 8, !tbaa !30
  %3829 = icmp eq i16 %3823, 0
  %3830 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 -1
  br i1 %3829, label %3831, label %3832

; <label>:3831:                                   ; preds = %3821
  store %union.StackValue* %3830, %union.StackValue** %18, align 8, !tbaa !28
  br label %4521

; <label>:3832:                                   ; preds = %3821
  %3833 = bitcast %union.StackValue* %4530 to i64*
  %3834 = bitcast %union.StackValue* %3830 to i64*
  %3835 = load i64, i64* %3833, align 8
  store i64 %3835, i64* %3834, align 8
  %3836 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %3816, i32 0, i32 1
  %3837 = load i8, i8* %3836, align 8, !tbaa !2
  %3838 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 -1, i32 0, i32 1
  store i8 %3837, i8* %3838, align 8, !tbaa !2
  store %union.StackValue* %4524, %union.StackValue** %18, align 8, !tbaa !28
  %3839 = icmp sgt i16 %3823, 1
  br i1 %3839, label %3840, label %4521

; <label>:3840:                                   ; preds = %3832
  %3841 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 1
  store %union.StackValue* %3841, %union.StackValue** %18, align 8, !tbaa !28
  %3842 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 0, i32 0, i32 1
  store i8 0, i8* %3842, align 8, !tbaa !6
  %3843 = icmp eq i16 %3823, 2
  br i1 %3843, label %4521, label %3844

; <label>:3844:                                   ; preds = %3840
  %3845 = sext i16 %3823 to i32
  br label %3846

; <label>:3846:                                   ; preds = %3844, %3846
  %3847 = phi i32 [ %3845, %3844 ], [ %3848, %3846 ]
  %3848 = add nsw i32 %3847, -1
  %3849 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !28
  %3850 = getelementptr inbounds %union.StackValue, %union.StackValue* %3849, i64 1
  store %union.StackValue* %3850, %union.StackValue** %18, align 8, !tbaa !28
  %3851 = getelementptr inbounds %union.StackValue, %union.StackValue* %3849, i64 0, i32 0, i32 1
  store i8 0, i8* %3851, align 8, !tbaa !6
  %3852 = icmp sgt i32 %3847, 3
  br i1 %3852, label %3846, label %4521

; <label>:3853:                                   ; preds = %4522
  %3854 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 2, i32 0
  %3855 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 2, i32 0, i32 1
  %3856 = load i8, i8* %3855, align 8, !tbaa !6
  %3857 = icmp eq i8 %3856, 35
  br i1 %3857, label %3858, label %3877

; <label>:3858:                                   ; preds = %3853
  %3859 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1, i32 0, i32 0
  %3860 = bitcast %union.Value* %3859 to i64*
  %3861 = load i64, i64* %3860, align 8, !tbaa !6
  %3862 = icmp eq i64 %3861, 0
  br i1 %3862, label %3899, label %3863

; <label>:3863:                                   ; preds = %3858
  %3864 = bitcast %struct.TValue* %3854 to i64*
  %3865 = load i64, i64* %3864, align 8, !tbaa !6
  %3866 = bitcast %union.StackValue* %4530 to i64*
  %3867 = load i64, i64* %3866, align 8, !tbaa !6
  %3868 = add i64 %3861, -1
  store i64 %3868, i64* %3860, align 8, !tbaa !6
  %3869 = add i64 %3867, %3865
  store i64 %3869, i64* %3866, align 8, !tbaa !6
  %3870 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0
  %3871 = bitcast %struct.TValue* %3870 to i64*
  store i64 %3869, i64* %3871, align 8, !tbaa !6
  %3872 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0, i32 1
  store i8 35, i8* %3872, align 8, !tbaa !2
  %3873 = lshr i32 %4523, 15
  %3874 = zext i32 %3873 to i64
  %3875 = sub nsw i64 0, %3874
  %3876 = getelementptr inbounds i32, i32* %4526, i64 %3875
  br label %3899

; <label>:3877:                                   ; preds = %3853
  %3878 = bitcast %struct.TValue* %3854 to double*
  %3879 = load double, double* %3878, align 8, !tbaa !6
  %3880 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1, i32 0, i32 0
  %3881 = bitcast %union.Value* %3880 to double*
  %3882 = load double, double* %3881, align 8, !tbaa !6
  %3883 = bitcast %union.StackValue* %4530 to double*
  %3884 = load double, double* %3883, align 8, !tbaa !6
  %3885 = fadd fast double %3884, %3879
  %3886 = fcmp fast ogt double %3879, 0.000000e+00
  br i1 %3886, label %3887, label %3889

; <label>:3887:                                   ; preds = %3877
  %3888 = fcmp fast ugt double %3885, %3882
  br i1 %3888, label %3899, label %3891

; <label>:3889:                                   ; preds = %3877
  %3890 = fcmp fast ugt double %3882, %3885
  br i1 %3890, label %3899, label %3891

; <label>:3891:                                   ; preds = %3887, %3889
  store double %3885, double* %3883, align 8, !tbaa !6
  %3892 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0
  %3893 = bitcast %struct.TValue* %3892 to double*
  store double %3885, double* %3893, align 8, !tbaa !6
  %3894 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0, i32 1
  store i8 19, i8* %3894, align 8, !tbaa !2
  %3895 = lshr i32 %4523, 15
  %3896 = zext i32 %3895 to i64
  %3897 = sub nsw i64 0, %3896
  %3898 = getelementptr inbounds i32, i32* %4526, i64 %3897
  br label %3899

; <label>:3899:                                   ; preds = %3858, %3887, %3889, %3891, %3863
  %3900 = phi i32* [ %3876, %3863 ], [ %4526, %3858 ], [ %3898, %3891 ], [ %4526, %3887 ], [ %4526, %3889 ]
  %3901 = load i32, i32* %21, align 8, !tbaa !6
  %3902 = icmp eq i32 %3901, 0
  br i1 %3902, label %3907, label %3903

; <label>:3903:                                   ; preds = %3899
  %3904 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3900) #8
  %3905 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %3906 = getelementptr inbounds %union.StackValue, %union.StackValue* %3905, i64 1
  br label %3907

; <label>:3907:                                   ; preds = %3899, %3903
  %3908 = phi i32 [ %3904, %3903 ], [ 0, %3899 ]
  %3909 = phi %union.StackValue* [ %3906, %3903 ], [ %4524, %3899 ]
  %3910 = getelementptr inbounds i32, i32* %3900, i64 1
  %3911 = load i32, i32* %3900, align 4, !tbaa !32
  br label %93

; <label>:3912:                                   ; preds = %4522
  %3913 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1, i32 0
  %3914 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 2, i32 0
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %3915 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %3915, i64* %19, align 8, !tbaa !28
  %3916 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  %3917 = load i8, i8* %3916, align 8, !tbaa !2
  %3918 = icmp eq i8 %3917, 35
  br i1 %3918, label %3919, label %4067

; <label>:3919:                                   ; preds = %3912
  %3920 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 2, i32 0, i32 1
  %3921 = load i8, i8* %3920, align 8, !tbaa !2
  %3922 = icmp eq i8 %3921, 35
  br i1 %3922, label %3923, label %4067

; <label>:3923:                                   ; preds = %3919
  %3924 = bitcast %union.StackValue* %4530 to i64*
  %3925 = load i64, i64* %3924, align 8, !tbaa !6
  %3926 = bitcast %struct.TValue* %3914 to i64*
  %3927 = load i64, i64* %3926, align 8, !tbaa !6
  %3928 = icmp eq i64 %3927, 0
  br i1 %3928, label %3929, label %3930

; <label>:3929:                                   ; preds = %3923
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #9
  unreachable

; <label>:3930:                                   ; preds = %3923
  %3931 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0
  %3932 = bitcast %struct.TValue* %3931 to i64*
  store i64 %3925, i64* %3932, align 8, !tbaa !6
  %3933 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0, i32 1
  store i8 35, i8* %3933, align 8, !tbaa !2
  %3934 = icmp slt i64 %3927, 0
  %3935 = lshr i64 %3927, 63
  %3936 = trunc i64 %3935 to i32
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %29) #8
  %3937 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1, i32 0, i32 1
  %3938 = load i8, i8* %3937, align 8, !tbaa !2
  %3939 = and i8 %3938, 15
  %3940 = icmp eq i8 %3939, 4
  br i1 %3940, label %3941, label %3965

; <label>:3941:                                   ; preds = %3930
  %3942 = bitcast %struct.TValue* %3913 to i8**
  %3943 = load i8*, i8** %3942, align 8, !tbaa !6
  %3944 = getelementptr inbounds i8, i8* %3943, i64 24
  %3945 = call i64 @luaO_str2num(i8* nonnull %3944, %struct.TValue* nonnull %4) #8
  %3946 = bitcast %struct.TValue* %3913 to %struct.TString**
  %3947 = load %struct.TString*, %struct.TString** %3946, align 8, !tbaa !6
  %3948 = getelementptr inbounds %struct.TString, %struct.TString* %3947, i64 0, i32 1
  %3949 = load i8, i8* %3948, align 8, !tbaa !6
  %3950 = icmp eq i8 %3949, 20
  br i1 %3950, label %3951, label %3955

; <label>:3951:                                   ; preds = %3941
  %3952 = getelementptr inbounds %struct.TString, %struct.TString* %3947, i64 0, i32 4
  %3953 = load i8, i8* %3952, align 1, !tbaa !6
  %3954 = zext i8 %3953 to i64
  br label %3958

; <label>:3955:                                   ; preds = %3941
  %3956 = getelementptr inbounds %struct.TString, %struct.TString* %3947, i64 0, i32 6, i32 0
  %3957 = load i64, i64* %3956, align 8, !tbaa !6
  br label %3958

; <label>:3958:                                   ; preds = %3955, %3951
  %3959 = phi i64 [ %3954, %3951 ], [ %3957, %3955 ]
  %3960 = add i64 %3959, 1
  %3961 = icmp eq i64 %3945, %3960
  %3962 = select i1 %3961, %struct.TValue* %4, %struct.TValue* %3913
  %3963 = getelementptr inbounds %struct.TValue, %struct.TValue* %3962, i64 0, i32 1
  %3964 = load i8, i8* %3963, align 8, !tbaa !2
  br label %3965

; <label>:3965:                                   ; preds = %3958, %3930
  %3966 = phi i8 [ %3938, %3930 ], [ %3964, %3958 ]
  %3967 = phi %struct.TValue* [ %3913, %3930 ], [ %3962, %3958 ]
  switch i8 %3966, label %3989 [
    i8 19, label %3968
    i8 35, label %3984
  ]

; <label>:3968:                                   ; preds = %3965
  %3969 = bitcast %struct.TValue* %3967 to double*
  %3970 = load double, double* %3969, align 8, !tbaa !6
  %3971 = call fast double @llvm.floor.f64(double %3970) #8
  %3972 = fcmp fast une double %3971, %3970
  br i1 %3972, label %3973, label %3977

; <label>:3973:                                   ; preds = %3968
  %3974 = icmp sgt i32 %3936, 0
  %3975 = fadd fast double %3971, 1.000000e+00
  %3976 = select i1 %3974, double %3975, double %3971
  br label %3977

; <label>:3977:                                   ; preds = %3973, %3968
  %3978 = phi double [ %3971, %3968 ], [ %3976, %3973 ]
  %3979 = fcmp fast oge double %3978, 0xC3E0000000000000
  %3980 = fcmp fast olt double %3978, 0x43E0000000000000
  %3981 = and i1 %3979, %3980
  br i1 %3981, label %3982, label %3989

; <label>:3982:                                   ; preds = %3977
  %3983 = fptosi double %3978 to i64
  br label %3987

; <label>:3984:                                   ; preds = %3965
  %3985 = bitcast %struct.TValue* %3967 to i64*
  %3986 = load i64, i64* %3985, align 8, !tbaa !6
  br label %3987

; <label>:3987:                                   ; preds = %3984, %3982
  %3988 = phi i64 [ %3986, %3984 ], [ %3983, %3982 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #8
  br label %4043

; <label>:3989:                                   ; preds = %3977, %3965
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %29) #8
  %3990 = load i8, i8* %3937, align 8, !tbaa !2
  %3991 = icmp eq i8 %3990, 19
  br i1 %3991, label %3992, label %3995

; <label>:3992:                                   ; preds = %3989
  %3993 = bitcast %struct.TValue* %3913 to i64*
  %3994 = load i64, i64* %3993, align 8, !tbaa !6
  br label %4036

; <label>:3995:                                   ; preds = %3989
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %32) #8
  %3996 = icmp eq i8 %3990, 35
  br i1 %3996, label %3997, label %4002

; <label>:3997:                                   ; preds = %3995
  %3998 = bitcast %struct.TValue* %3913 to i64*
  %3999 = load i64, i64* %3998, align 8, !tbaa !6
  %4000 = sitofp i64 %3999 to double
  %4001 = bitcast double %4000 to i64
  br label %4033

; <label>:4002:                                   ; preds = %3995
  %4003 = and i8 %3990, 15
  %4004 = icmp eq i8 %4003, 4
  br i1 %4004, label %4005, label %4035

; <label>:4005:                                   ; preds = %4002
  %4006 = bitcast %struct.TValue* %3913 to i8**
  %4007 = load i8*, i8** %4006, align 8, !tbaa !6
  %4008 = getelementptr inbounds i8, i8* %4007, i64 24
  %4009 = call i64 @luaO_str2num(i8* nonnull %4008, %struct.TValue* nonnull %3) #8
  %4010 = bitcast %struct.TValue* %3913 to %struct.TString**
  %4011 = load %struct.TString*, %struct.TString** %4010, align 8, !tbaa !6
  %4012 = getelementptr inbounds %struct.TString, %struct.TString* %4011, i64 0, i32 1
  %4013 = load i8, i8* %4012, align 8, !tbaa !6
  %4014 = icmp eq i8 %4013, 20
  br i1 %4014, label %4015, label %4019

; <label>:4015:                                   ; preds = %4005
  %4016 = getelementptr inbounds %struct.TString, %struct.TString* %4011, i64 0, i32 4
  %4017 = load i8, i8* %4016, align 1, !tbaa !6
  %4018 = zext i8 %4017 to i64
  br label %4022

; <label>:4019:                                   ; preds = %4005
  %4020 = getelementptr inbounds %struct.TString, %struct.TString* %4011, i64 0, i32 6, i32 0
  %4021 = load i64, i64* %4020, align 8, !tbaa !6
  br label %4022

; <label>:4022:                                   ; preds = %4019, %4015
  %4023 = phi i64 [ %4018, %4015 ], [ %4021, %4019 ]
  %4024 = add i64 %4023, 1
  %4025 = icmp eq i64 %4009, %4024
  br i1 %4025, label %4026, label %4035

; <label>:4026:                                   ; preds = %4022
  %4027 = load i8, i8* %39, align 8, !tbaa !2
  %4028 = icmp eq i8 %4027, 35
  %4029 = load i64, i64* %40, align 8
  %4030 = sitofp i64 %4029 to double
  %4031 = bitcast double %4030 to i64
  %4032 = select i1 %4028, i64 %4031, i64 %4029
  br label %4033

; <label>:4033:                                   ; preds = %4026, %3997
  %4034 = phi i64 [ %4001, %3997 ], [ %4032, %4026 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #8
  br label %4036

; <label>:4035:                                   ; preds = %4022, %4002
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %32) #8
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3913, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #9
  unreachable

; <label>:4036:                                   ; preds = %4033, %3992
  %4037 = phi i64 [ %3994, %3992 ], [ %4034, %4033 ]
  %4038 = bitcast i64 %4037 to double
  %4039 = fcmp fast ogt double %4038, 0.000000e+00
  br i1 %4039, label %4040, label %4041

; <label>:4040:                                   ; preds = %4036
  br i1 %3934, label %4049, label %4043

; <label>:4041:                                   ; preds = %4036
  %4042 = icmp sgt i64 %3927, 0
  br i1 %4042, label %4049, label %4043

; <label>:4043:                                   ; preds = %3987, %4041, %4040
  %4044 = phi i64 [ %3988, %3987 ], [ 9223372036854775807, %4040 ], [ -9223372036854775808, %4041 ]
  %4045 = icmp sgt i64 %3927, 0
  %4046 = icmp slt i64 %4044, %3925
  %4047 = icmp sgt i64 %4044, %3925
  %4048 = select i1 %4045, i1 %4046, i1 %4047
  br i1 %4048, label %4049, label %4054

; <label>:4049:                                   ; preds = %4043, %4040, %4041
  %4050 = lshr i32 %4523, 15
  %4051 = add nuw nsw i32 %4050, 1
  %4052 = zext i32 %4051 to i64
  %4053 = getelementptr inbounds i32, i32* %4526, i64 %4052
  br label %4240

; <label>:4054:                                   ; preds = %4043
  br i1 %4045, label %4055, label %4060

; <label>:4055:                                   ; preds = %4054
  %4056 = sub i64 %4044, %3925
  %4057 = icmp eq i64 %3927, 1
  br i1 %4057, label %4064, label %4058

; <label>:4058:                                   ; preds = %4055
  %4059 = udiv i64 %4056, %3927
  br label %4064

; <label>:4060:                                   ; preds = %4054
  %4061 = sub i64 %3925, %4044
  %4062 = sub i64 0, %3927
  %4063 = udiv i64 %4061, %4062
  br label %4064

; <label>:4064:                                   ; preds = %4055, %4058, %4060
  %4065 = phi i64 [ %4059, %4058 ], [ %4056, %4055 ], [ %4063, %4060 ]
  %4066 = bitcast %struct.TValue* %3913 to i64*
  store i64 %4065, i64* %4066, align 8, !tbaa !6
  store i8 35, i8* %3937, align 8, !tbaa !2
  br label %4240

; <label>:4067:                                   ; preds = %3919, %3912
  %4068 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1, i32 0, i32 1
  %4069 = load i8, i8* %4068, align 8, !tbaa !2
  %4070 = icmp eq i8 %4069, 19
  br i1 %4070, label %4071, label %4074

; <label>:4071:                                   ; preds = %4067
  %4072 = bitcast %struct.TValue* %3913 to i64*
  %4073 = load i64, i64* %4072, align 8, !tbaa !6
  br label %4115

; <label>:4074:                                   ; preds = %4067
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #8
  %4075 = icmp eq i8 %4069, 35
  br i1 %4075, label %4076, label %4081

; <label>:4076:                                   ; preds = %4074
  %4077 = bitcast %struct.TValue* %3913 to i64*
  %4078 = load i64, i64* %4077, align 8, !tbaa !6
  %4079 = sitofp i64 %4078 to double
  %4080 = bitcast double %4079 to i64
  br label %4112

; <label>:4081:                                   ; preds = %4074
  %4082 = and i8 %4069, 15
  %4083 = icmp eq i8 %4082, 4
  br i1 %4083, label %4084, label %4114

; <label>:4084:                                   ; preds = %4081
  %4085 = bitcast %struct.TValue* %3913 to i8**
  %4086 = load i8*, i8** %4085, align 8, !tbaa !6
  %4087 = getelementptr inbounds i8, i8* %4086, i64 24
  %4088 = call i64 @luaO_str2num(i8* nonnull %4087, %struct.TValue* nonnull %5) #8
  %4089 = bitcast %struct.TValue* %3913 to %struct.TString**
  %4090 = load %struct.TString*, %struct.TString** %4089, align 8, !tbaa !6
  %4091 = getelementptr inbounds %struct.TString, %struct.TString* %4090, i64 0, i32 1
  %4092 = load i8, i8* %4091, align 8, !tbaa !6
  %4093 = icmp eq i8 %4092, 20
  br i1 %4093, label %4094, label %4098

; <label>:4094:                                   ; preds = %4084
  %4095 = getelementptr inbounds %struct.TString, %struct.TString* %4090, i64 0, i32 4
  %4096 = load i8, i8* %4095, align 1, !tbaa !6
  %4097 = zext i8 %4096 to i64
  br label %4101

; <label>:4098:                                   ; preds = %4084
  %4099 = getelementptr inbounds %struct.TString, %struct.TString* %4090, i64 0, i32 6, i32 0
  %4100 = load i64, i64* %4099, align 8, !tbaa !6
  br label %4101

; <label>:4101:                                   ; preds = %4098, %4094
  %4102 = phi i64 [ %4097, %4094 ], [ %4100, %4098 ]
  %4103 = add i64 %4102, 1
  %4104 = icmp eq i64 %4088, %4103
  br i1 %4104, label %4105, label %4114

; <label>:4105:                                   ; preds = %4101
  %4106 = load i8, i8* %33, align 8, !tbaa !2
  %4107 = icmp eq i8 %4106, 35
  %4108 = load i64, i64* %34, align 8
  %4109 = sitofp i64 %4108 to double
  %4110 = bitcast double %4109 to i64
  %4111 = select i1 %4107, i64 %4110, i64 %4108
  br label %4112

; <label>:4112:                                   ; preds = %4105, %4076
  %4113 = phi i64 [ %4080, %4076 ], [ %4111, %4105 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #8
  br label %4115

; <label>:4114:                                   ; preds = %4101, %4081
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #8
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3913, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #9
  unreachable

; <label>:4115:                                   ; preds = %4112, %4071
  %4116 = phi i64 [ %4073, %4071 ], [ %4113, %4112 ]
  %4117 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 2, i32 0, i32 1
  %4118 = load i8, i8* %4117, align 8, !tbaa !2
  %4119 = icmp eq i8 %4118, 19
  br i1 %4119, label %4120, label %4123

; <label>:4120:                                   ; preds = %4115
  %4121 = bitcast %struct.TValue* %3914 to i64*
  %4122 = load i64, i64* %4121, align 8, !tbaa !6
  br label %4164

; <label>:4123:                                   ; preds = %4115
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #8
  %4124 = icmp eq i8 %4118, 35
  br i1 %4124, label %4125, label %4130

; <label>:4125:                                   ; preds = %4123
  %4126 = bitcast %struct.TValue* %3914 to i64*
  %4127 = load i64, i64* %4126, align 8, !tbaa !6
  %4128 = sitofp i64 %4127 to double
  %4129 = bitcast double %4128 to i64
  br label %4161

; <label>:4130:                                   ; preds = %4123
  %4131 = and i8 %4118, 15
  %4132 = icmp eq i8 %4131, 4
  br i1 %4132, label %4133, label %4163

; <label>:4133:                                   ; preds = %4130
  %4134 = bitcast %struct.TValue* %3914 to i8**
  %4135 = load i8*, i8** %4134, align 8, !tbaa !6
  %4136 = getelementptr inbounds i8, i8* %4135, i64 24
  %4137 = call i64 @luaO_str2num(i8* nonnull %4136, %struct.TValue* nonnull %6) #8
  %4138 = bitcast %struct.TValue* %3914 to %struct.TString**
  %4139 = load %struct.TString*, %struct.TString** %4138, align 8, !tbaa !6
  %4140 = getelementptr inbounds %struct.TString, %struct.TString* %4139, i64 0, i32 1
  %4141 = load i8, i8* %4140, align 8, !tbaa !6
  %4142 = icmp eq i8 %4141, 20
  br i1 %4142, label %4143, label %4147

; <label>:4143:                                   ; preds = %4133
  %4144 = getelementptr inbounds %struct.TString, %struct.TString* %4139, i64 0, i32 4
  %4145 = load i8, i8* %4144, align 1, !tbaa !6
  %4146 = zext i8 %4145 to i64
  br label %4150

; <label>:4147:                                   ; preds = %4133
  %4148 = getelementptr inbounds %struct.TString, %struct.TString* %4139, i64 0, i32 6, i32 0
  %4149 = load i64, i64* %4148, align 8, !tbaa !6
  br label %4150

; <label>:4150:                                   ; preds = %4147, %4143
  %4151 = phi i64 [ %4146, %4143 ], [ %4149, %4147 ]
  %4152 = add i64 %4151, 1
  %4153 = icmp eq i64 %4137, %4152
  br i1 %4153, label %4154, label %4163

; <label>:4154:                                   ; preds = %4150
  %4155 = load i8, i8* %35, align 8, !tbaa !2
  %4156 = icmp eq i8 %4155, 35
  %4157 = load i64, i64* %36, align 8
  %4158 = sitofp i64 %4157 to double
  %4159 = bitcast double %4158 to i64
  %4160 = select i1 %4156, i64 %4159, i64 %4157
  br label %4161

; <label>:4161:                                   ; preds = %4154, %4125
  %4162 = phi i64 [ %4129, %4125 ], [ %4160, %4154 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #8
  br label %4164

; <label>:4163:                                   ; preds = %4150, %4130
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #8
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3914, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #9
  unreachable

; <label>:4164:                                   ; preds = %4161, %4120
  %4165 = phi i64 [ %4122, %4120 ], [ %4162, %4161 ]
  %4166 = load i8, i8* %3916, align 8, !tbaa !2
  %4167 = icmp eq i8 %4166, 19
  br i1 %4167, label %4168, label %4171

; <label>:4168:                                   ; preds = %4164
  %4169 = bitcast %union.StackValue* %4530 to i64*
  %4170 = load i64, i64* %4169, align 8, !tbaa !6
  br label %4213

; <label>:4171:                                   ; preds = %4164
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #8
  %4172 = icmp eq i8 %4166, 35
  br i1 %4172, label %4173, label %4178

; <label>:4173:                                   ; preds = %4171
  %4174 = bitcast %union.StackValue* %4530 to i64*
  %4175 = load i64, i64* %4174, align 8, !tbaa !6
  %4176 = sitofp i64 %4175 to double
  %4177 = bitcast double %4176 to i64
  br label %4209

; <label>:4178:                                   ; preds = %4171
  %4179 = and i8 %4166, 15
  %4180 = icmp eq i8 %4179, 4
  br i1 %4180, label %4181, label %4211

; <label>:4181:                                   ; preds = %4178
  %4182 = bitcast %union.StackValue* %4530 to i8**
  %4183 = load i8*, i8** %4182, align 8, !tbaa !6
  %4184 = getelementptr inbounds i8, i8* %4183, i64 24
  %4185 = call i64 @luaO_str2num(i8* nonnull %4184, %struct.TValue* nonnull %7) #8
  %4186 = bitcast %union.StackValue* %4530 to %struct.TString**
  %4187 = load %struct.TString*, %struct.TString** %4186, align 8, !tbaa !6
  %4188 = getelementptr inbounds %struct.TString, %struct.TString* %4187, i64 0, i32 1
  %4189 = load i8, i8* %4188, align 8, !tbaa !6
  %4190 = icmp eq i8 %4189, 20
  br i1 %4190, label %4191, label %4195

; <label>:4191:                                   ; preds = %4181
  %4192 = getelementptr inbounds %struct.TString, %struct.TString* %4187, i64 0, i32 4
  %4193 = load i8, i8* %4192, align 1, !tbaa !6
  %4194 = zext i8 %4193 to i64
  br label %4198

; <label>:4195:                                   ; preds = %4181
  %4196 = getelementptr inbounds %struct.TString, %struct.TString* %4187, i64 0, i32 6, i32 0
  %4197 = load i64, i64* %4196, align 8, !tbaa !6
  br label %4198

; <label>:4198:                                   ; preds = %4195, %4191
  %4199 = phi i64 [ %4194, %4191 ], [ %4197, %4195 ]
  %4200 = add i64 %4199, 1
  %4201 = icmp eq i64 %4185, %4200
  br i1 %4201, label %4202, label %4211

; <label>:4202:                                   ; preds = %4198
  %4203 = load i8, i8* %37, align 8, !tbaa !2
  %4204 = icmp eq i8 %4203, 35
  %4205 = load i64, i64* %38, align 8
  %4206 = sitofp i64 %4205 to double
  %4207 = bitcast double %4206 to i64
  %4208 = select i1 %4204, i64 %4207, i64 %4205
  br label %4209

; <label>:4209:                                   ; preds = %4202, %4173
  %4210 = phi i64 [ %4177, %4173 ], [ %4208, %4202 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #8
  br label %4213

; <label>:4211:                                   ; preds = %4198, %4178
  %4212 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #8
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %4212, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #9
  unreachable

; <label>:4213:                                   ; preds = %4209, %4168
  %4214 = phi i64 [ %4170, %4168 ], [ %4210, %4209 ]
  %4215 = bitcast i64 %4165 to double
  %4216 = fcmp fast oeq double %4215, 0.000000e+00
  br i1 %4216, label %4217, label %4218

; <label>:4217:                                   ; preds = %4213
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #9
  unreachable

; <label>:4218:                                   ; preds = %4213
  %4219 = fcmp fast ogt double %4215, 0.000000e+00
  br i1 %4219, label %4220, label %4224

; <label>:4220:                                   ; preds = %4218
  %4221 = bitcast i64 %4116 to double
  %4222 = bitcast i64 %4214 to double
  %4223 = fcmp fast olt double %4221, %4222
  br i1 %4223, label %4228, label %4233

; <label>:4224:                                   ; preds = %4218
  %4225 = bitcast i64 %4214 to double
  %4226 = bitcast i64 %4116 to double
  %4227 = fcmp fast olt double %4225, %4226
  br i1 %4227, label %4228, label %4233

; <label>:4228:                                   ; preds = %4224, %4220
  %4229 = lshr i32 %4523, 15
  %4230 = add nuw nsw i32 %4229, 1
  %4231 = zext i32 %4230 to i64
  %4232 = getelementptr inbounds i32, i32* %4526, i64 %4231
  br label %4240

; <label>:4233:                                   ; preds = %4224, %4220
  %4234 = bitcast %struct.TValue* %3913 to i64*
  store i64 %4116, i64* %4234, align 8, !tbaa !6
  store i8 19, i8* %4068, align 8, !tbaa !2
  %4235 = bitcast %struct.TValue* %3914 to i64*
  store i64 %4165, i64* %4235, align 8, !tbaa !6
  store i8 19, i8* %4117, align 8, !tbaa !2
  %4236 = bitcast %union.StackValue* %4530 to i64*
  store i64 %4214, i64* %4236, align 8, !tbaa !6
  store i8 19, i8* %3916, align 8, !tbaa !2
  %4237 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0
  %4238 = bitcast %struct.TValue* %4237 to i64*
  store i64 %4214, i64* %4238, align 8, !tbaa !6
  %4239 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0, i32 1
  store i8 19, i8* %4239, align 8, !tbaa !2
  br label %4240

; <label>:4240:                                   ; preds = %4228, %4233, %4049, %4064
  %4241 = phi i32* [ %4526, %4064 ], [ %4053, %4049 ], [ %4232, %4228 ], [ %4526, %4233 ]
  %4242 = icmp eq i32 %4525, 0
  br i1 %4242, label %4247, label %4243

; <label>:4243:                                   ; preds = %4240
  %4244 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4241) #8
  %4245 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %4246 = getelementptr inbounds %union.StackValue, %union.StackValue* %4245, i64 1
  br label %4247

; <label>:4247:                                   ; preds = %4240, %4243
  %4248 = phi i32 [ %4244, %4243 ], [ 0, %4240 ]
  %4249 = phi %union.StackValue* [ %4246, %4243 ], [ %4524, %4240 ]
  %4250 = getelementptr inbounds i32, i32* %4241, i64 1
  %4251 = load i32, i32* %4241, align 4, !tbaa !32
  br label %93

; <label>:4252:                                   ; preds = %4522
  %4253 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3, i32 0, i32 1
  %4254 = load i8, i8* %4253, align 8, !tbaa !6
  %4255 = and i8 %4254, 15
  %4256 = icmp eq i8 %4255, 0
  br i1 %4256, label %4259, label %4257

; <label>:4257:                                   ; preds = %4252
  %4258 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 3
  store i32* %4526, i32** %15, align 8, !tbaa !6
  call void @luaF_newtbcupval(%struct.lua_State* %0, %union.StackValue* nonnull %4258) #8
  br label %4259

; <label>:4259:                                   ; preds = %4257, %4252
  %4260 = lshr i32 %4523, 15
  %4261 = zext i32 %4260 to i64
  %4262 = getelementptr inbounds i32, i32* %4526, i64 %4261
  %4263 = getelementptr inbounds i32, i32* %4262, i64 1
  %4264 = load i32, i32* %4262, align 4, !tbaa !32
  br label %4265

; <label>:4265:                                   ; preds = %4522, %4259
  %4266 = phi i32 [ %4523, %4522 ], [ %4264, %4259 ]
  %4267 = phi i32* [ %4526, %4522 ], [ %4263, %4259 ]
  %4268 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 4
  %4269 = bitcast %union.StackValue* %4268 to i8*
  %4270 = bitcast %union.StackValue* %4530 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4269, i8* %4270, i64 48, i32 8, i1 false)
  store i32* %4267, i32** %15, align 8, !tbaa !6
  %4271 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %4271, i64* %19, align 8, !tbaa !28
  %4272 = lshr i32 %4266, 24
  call void @luaD_call(%struct.lua_State* %0, %union.StackValue* nonnull %4268, i32 %4272) #8
  %4273 = load i32, i32* %21, align 8, !tbaa !6
  %4274 = icmp eq i32 %4273, 0
  br i1 %4274, label %4282, label %4275

; <label>:4275:                                   ; preds = %4265
  %4276 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %4277 = getelementptr inbounds %union.StackValue, %union.StackValue* %4276, i64 1
  %4278 = lshr i32 %4266, 7
  %4279 = and i32 %4278, 255
  %4280 = zext i32 %4279 to i64
  %4281 = getelementptr inbounds %union.StackValue, %union.StackValue* %4277, i64 %4280
  br label %4282

; <label>:4282:                                   ; preds = %4265, %4275
  %4283 = phi %union.StackValue* [ %4281, %4275 ], [ %4530, %4265 ]
  %4284 = phi %union.StackValue* [ %4277, %4275 ], [ %4524, %4265 ]
  %4285 = getelementptr inbounds i32, i32* %4267, i64 1
  %4286 = load i32, i32* %4267, align 4, !tbaa !32
  %4287 = getelementptr inbounds %union.StackValue, %union.StackValue* %4283, i64 2
  br label %4288

; <label>:4288:                                   ; preds = %4522, %4282
  %4289 = phi %union.StackValue* [ %4530, %4522 ], [ %4287, %4282 ]
  %4290 = phi i32 [ %4523, %4522 ], [ %4286, %4282 ]
  %4291 = phi i32 [ %4525, %4522 ], [ %4273, %4282 ]
  %4292 = phi i32* [ %4526, %4522 ], [ %4285, %4282 ]
  %4293 = phi %union.StackValue* [ %4524, %4522 ], [ %4284, %4282 ]
  %4294 = getelementptr inbounds %union.StackValue, %union.StackValue* %4289, i64 2, i32 0, i32 1
  %4295 = load i8, i8* %4294, align 8, !tbaa !6
  %4296 = and i8 %4295, 15
  %4297 = icmp eq i8 %4296, 0
  br i1 %4297, label %4308, label %4298

; <label>:4298:                                   ; preds = %4288
  %4299 = getelementptr inbounds %union.StackValue, %union.StackValue* %4289, i64 2, i32 0, i32 0
  %4300 = bitcast %union.Value* %4299 to i64*
  %4301 = bitcast %union.StackValue* %4289 to i64*
  %4302 = load i64, i64* %4300, align 8
  store i64 %4302, i64* %4301, align 8
  %4303 = getelementptr inbounds %union.StackValue, %union.StackValue* %4289, i64 0, i32 0, i32 1
  store i8 %4295, i8* %4303, align 8, !tbaa !2
  %4304 = lshr i32 %4290, 15
  %4305 = zext i32 %4304 to i64
  %4306 = sub nsw i64 0, %4305
  %4307 = getelementptr inbounds i32, i32* %4292, i64 %4306
  br label %4308

; <label>:4308:                                   ; preds = %4298, %4288
  %4309 = phi i32* [ %4292, %4288 ], [ %4307, %4298 ]
  %4310 = icmp eq i32 %4291, 0
  br i1 %4310, label %4315, label %4311

; <label>:4311:                                   ; preds = %4308
  %4312 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %4309) #8
  %4313 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %4314 = getelementptr inbounds %union.StackValue, %union.StackValue* %4313, i64 1
  br label %4315

; <label>:4315:                                   ; preds = %4308, %4311
  %4316 = phi i32 [ %4312, %4311 ], [ 0, %4308 ]
  %4317 = phi %union.StackValue* [ %4314, %4311 ], [ %4293, %4308 ]
  %4318 = getelementptr inbounds i32, i32* %4309, i64 1
  %4319 = load i32, i32* %4309, align 4, !tbaa !32
  br label %93

; <label>:4320:                                   ; preds = %4522
  %4321 = lshr i32 %4523, 16
  %4322 = and i32 %4321, 255
  %4323 = lshr i32 %4523, 24
  %4324 = icmp eq i32 %4322, 0
  br i1 %4324, label %4325, label %4332

; <label>:4325:                                   ; preds = %4320
  %4326 = load i64, i64* %19, align 8, !tbaa !28
  %4327 = ptrtoint %union.StackValue* %4530 to i64
  %4328 = sub i64 %4326, %4327
  %4329 = lshr exact i64 %4328, 4
  %4330 = trunc i64 %4329 to i32
  %4331 = add nsw i32 %4330, -1
  br label %4334

; <label>:4332:                                   ; preds = %4320
  %4333 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %4333, i64* %19, align 8, !tbaa !28
  br label %4334

; <label>:4334:                                   ; preds = %4332, %4325
  %4335 = phi i32 [ %4331, %4325 ], [ %4322, %4332 ]
  %4336 = icmp eq i32 %4323, 0
  br i1 %4336, label %4337, label %4341

; <label>:4337:                                   ; preds = %4334
  %4338 = load i32, i32* %4526, align 4, !tbaa !32
  %4339 = lshr i32 %4338, 7
  %4340 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %4341

; <label>:4341:                                   ; preds = %4337, %4334
  %4342 = phi i32 [ %4339, %4337 ], [ %4323, %4334 ]
  %4343 = phi i32* [ %4340, %4337 ], [ %4526, %4334 ]
  %4344 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 0, i32 0, i32 0, i32 0
  %4345 = load %struct.GCObject*, %struct.GCObject** %4344, align 8, !tbaa !6
  %4346 = bitcast %struct.GCObject* %4345 to %struct.Table*
  %4347 = mul nuw nsw i32 %4342, 50
  %4348 = add i32 %4335, -50
  %4349 = add i32 %4348, %4347
  %4350 = call i32 @luaH_realasize(%struct.Table* %4346) #8
  %4351 = icmp ugt i32 %4349, %4350
  br i1 %4351, label %4352, label %4353

; <label>:4352:                                   ; preds = %4341
  call void @luaH_resizearray(%struct.lua_State* nonnull %0, %struct.Table* %4346, i32 %4349) #8
  br label %4353

; <label>:4353:                                   ; preds = %4352, %4341
  %4354 = icmp sgt i32 %4335, 0
  br i1 %4354, label %4355, label %4392

; <label>:4355:                                   ; preds = %4353
  %4356 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4345, i64 1
  %4357 = bitcast %struct.GCObject* %4356 to %struct.TValue**
  %4358 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4345, i64 0, i32 2
  %4359 = sext i32 %4335 to i64
  br label %4360

; <label>:4360:                                   ; preds = %4355, %4389
  %4361 = phi i64 [ %4359, %4355 ], [ %4390, %4389 ]
  %4362 = phi i32 [ %4349, %4355 ], [ %4365, %4389 ]
  %4363 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 %4361, i32 0
  %4364 = load %struct.TValue*, %struct.TValue** %4357, align 8, !tbaa !51
  %4365 = add i32 %4362, -1
  %4366 = zext i32 %4365 to i64
  %4367 = getelementptr inbounds %struct.TValue, %struct.TValue* %4364, i64 %4366
  %4368 = bitcast %struct.TValue* %4363 to i64*
  %4369 = bitcast %struct.TValue* %4367 to i64*
  %4370 = load i64, i64* %4368, align 8
  store i64 %4370, i64* %4369, align 8
  %4371 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 %4361, i32 0, i32 1
  %4372 = load i8, i8* %4371, align 8, !tbaa !2
  %4373 = getelementptr inbounds %struct.TValue, %struct.TValue* %4364, i64 %4366, i32 1
  store i8 %4372, i8* %4373, align 8, !tbaa !2
  %4374 = load i8, i8* %4371, align 8, !tbaa !2
  %4375 = and i8 %4374, 64
  %4376 = icmp eq i8 %4375, 0
  br i1 %4376, label %4389, label %4377

; <label>:4377:                                   ; preds = %4360
  %4378 = load i8, i8* %4358, align 1, !tbaa !6
  %4379 = and i8 %4378, 32
  %4380 = icmp eq i8 %4379, 0
  br i1 %4380, label %4389, label %4381

; <label>:4381:                                   ; preds = %4377
  %4382 = getelementptr inbounds %struct.TValue, %struct.TValue* %4363, i64 0, i32 0, i32 0
  %4383 = load %struct.GCObject*, %struct.GCObject** %4382, align 8, !tbaa !6
  %4384 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4383, i64 0, i32 2
  %4385 = load i8, i8* %4384, align 1, !tbaa !23
  %4386 = and i8 %4385, 24
  %4387 = icmp eq i8 %4386, 0
  br i1 %4387, label %4389, label %4388

; <label>:4388:                                   ; preds = %4381
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* nonnull %4345) #8
  br label %4389

; <label>:4389:                                   ; preds = %4381, %4377, %4360, %4388
  %4390 = add nsw i64 %4361, -1
  %4391 = icmp sgt i64 %4361, 1
  br i1 %4391, label %4360, label %4392

; <label>:4392:                                   ; preds = %4389, %4353
  %4393 = icmp eq i32 %4525, 0
  br i1 %4393, label %4398, label %4394

; <label>:4394:                                   ; preds = %4392
  %4395 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %4343) #8
  %4396 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %4397 = getelementptr inbounds %union.StackValue, %union.StackValue* %4396, i64 1
  br label %4398

; <label>:4398:                                   ; preds = %4392, %4394
  %4399 = phi i32 [ %4395, %4394 ], [ 0, %4392 ]
  %4400 = phi %union.StackValue* [ %4397, %4394 ], [ %4524, %4392 ]
  %4401 = getelementptr inbounds i32, i32* %4343, i64 1
  %4402 = load i32, i32* %4343, align 4, !tbaa !32
  br label %93

; <label>:4403:                                   ; preds = %4522
  %4404 = load %struct.Proto*, %struct.Proto** %46, align 8, !tbaa !34
  %4405 = getelementptr inbounds %struct.Proto, %struct.Proto* %4404, i64 0, i32 17
  %4406 = load %struct.Proto**, %struct.Proto*** %4405, align 8, !tbaa !52
  %4407 = lshr i32 %4523, 15
  %4408 = zext i32 %4407 to i64
  %4409 = getelementptr inbounds %struct.Proto*, %struct.Proto** %4406, i64 %4408
  %4410 = load %struct.Proto*, %struct.Proto** %4409, align 8, !tbaa !21
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %4411 = getelementptr inbounds %struct.Proto, %struct.Proto* %4410, i64 0, i32 6
  %4412 = load i32, i32* %4411, align 8, !tbaa !53
  %4413 = getelementptr inbounds %struct.Proto, %struct.Proto* %4410, i64 0, i32 18
  %4414 = load %struct.Upvaldesc*, %struct.Upvaldesc** %4413, align 8, !tbaa !54
  %4415 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 %4412) #8
  %4416 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %4415, i64 0, i32 5
  store %struct.Proto* %4410, %struct.Proto** %4416, align 8, !tbaa !34
  %4417 = bitcast %struct.LClosure* %4415 to %struct.GCObject*
  %4418 = bitcast %union.StackValue* %4530 to %struct.LClosure**
  store %struct.LClosure* %4415, %struct.LClosure** %4418, align 8, !tbaa !6
  %4419 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529, i32 0, i32 1
  store i8 86, i8* %4419, align 8, !tbaa !2
  %4420 = icmp sgt i32 %4412, 0
  br i1 %4420, label %4421, label %4458

; <label>:4421:                                   ; preds = %4403
  %4422 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %4415, i64 0, i32 2
  %4423 = zext i32 %4412 to i64
  br label %4424

; <label>:4424:                                   ; preds = %4455, %4421
  %4425 = phi i64 [ 0, %4421 ], [ %4456, %4455 ]
  %4426 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %4414, i64 %4425, i32 1
  %4427 = load i8, i8* %4426, align 8, !tbaa !55
  %4428 = icmp eq i8 %4427, 0
  %4429 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %4414, i64 %4425, i32 2
  %4430 = load i8, i8* %4429, align 1, !tbaa !57
  %4431 = zext i8 %4430 to i64
  br i1 %4428, label %4436, label %4432

; <label>:4432:                                   ; preds = %4424
  %4433 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4431
  %4434 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %0, %union.StackValue* %4433) #8
  %4435 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %4415, i64 0, i32 6, i64 %4425
  store %struct.UpVal* %4434, %struct.UpVal** %4435, align 8, !tbaa !21
  br label %4443

; <label>:4436:                                   ; preds = %4424
  %4437 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %45, i64 0, i32 6, i64 %4431
  %4438 = bitcast %struct.UpVal** %4437 to i64*
  %4439 = load i64, i64* %4438, align 8, !tbaa !21
  %4440 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %4415, i64 0, i32 6, i64 %4425
  %4441 = bitcast %struct.UpVal** %4440 to i64*
  store i64 %4439, i64* %4441, align 8, !tbaa !21
  %4442 = inttoptr i64 %4439 to %struct.UpVal*
  br label %4443

; <label>:4443:                                   ; preds = %4436, %4432
  %4444 = phi %struct.UpVal* [ %4442, %4436 ], [ %4434, %4432 ]
  %4445 = load i8, i8* %4422, align 1, !tbaa !58
  %4446 = and i8 %4445, 32
  %4447 = icmp eq i8 %4446, 0
  br i1 %4447, label %4455, label %4448

; <label>:4448:                                   ; preds = %4443
  %4449 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %4444, i64 0, i32 2
  %4450 = load i8, i8* %4449, align 1, !tbaa !44
  %4451 = and i8 %4450, 24
  %4452 = icmp eq i8 %4451, 0
  br i1 %4452, label %4455, label %4453

; <label>:4453:                                   ; preds = %4448
  %4454 = bitcast %struct.UpVal* %4444 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* nonnull %4417, %struct.GCObject* %4454) #8
  br label %4455

; <label>:4455:                                   ; preds = %4453, %4448, %4443
  %4456 = add nuw nsw i64 %4425, 1
  %4457 = icmp eq i64 %4456, %4423
  br i1 %4457, label %4458, label %4424

; <label>:4458:                                   ; preds = %4455, %4403
  %4459 = load %struct.global_State*, %struct.global_State** %22, align 8, !tbaa !16
  %4460 = getelementptr inbounds %struct.global_State, %struct.global_State* %4459, i64 0, i32 3
  %4461 = load i64, i64* %4460, align 8, !tbaa !46
  %4462 = icmp sgt i64 %4461, 0
  br i1 %4462, label %4463, label %4466

; <label>:4463:                                   ; preds = %4458
  %4464 = getelementptr inbounds %union.StackValue, %union.StackValue* %4530, i64 1
  store %union.StackValue* %4464, %union.StackValue** %18, align 8, !tbaa !28
  call void @luaC_step(%struct.lua_State* nonnull %0) #8
  %4465 = load i32, i32* %21, align 8, !tbaa !6
  br label %4466

; <label>:4466:                                   ; preds = %4463, %4458
  %4467 = phi i32 [ %4465, %4463 ], [ %4525, %4458 ]
  %4468 = icmp eq i32 %4467, 0
  br i1 %4468, label %4473, label %4469

; <label>:4469:                                   ; preds = %4466
  %4470 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %4526) #8
  %4471 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %4472 = getelementptr inbounds %union.StackValue, %union.StackValue* %4471, i64 1
  br label %4473

; <label>:4473:                                   ; preds = %4466, %4469
  %4474 = phi i32 [ %4470, %4469 ], [ 0, %4466 ]
  %4475 = phi %union.StackValue* [ %4472, %4469 ], [ %4524, %4466 ]
  %4476 = getelementptr inbounds i32, i32* %4526, i64 1
  %4477 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:4478:                                   ; preds = %4522
  %4479 = lshr i32 %4523, 24
  %4480 = add nsw i32 %4479, -1
  store i32* %4526, i32** %15, align 8, !tbaa !6
  %4481 = load i64, i64* %17, align 8, !tbaa !45
  store i64 %4481, i64* %19, align 8, !tbaa !28
  call void @luaT_getvarargs(%struct.lua_State* %0, %struct.CallInfo* %1, %union.StackValue* %4530, i32 %4480) #8
  %4482 = load i32, i32* %21, align 8, !tbaa !6
  %4483 = icmp eq i32 %4482, 0
  br i1 %4483, label %4488, label %4484

; <label>:4484:                                   ; preds = %4478
  %4485 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %4526) #8
  %4486 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %4487 = getelementptr inbounds %union.StackValue, %union.StackValue* %4486, i64 1
  br label %4488

; <label>:4488:                                   ; preds = %4478, %4484
  %4489 = phi i32 [ %4485, %4484 ], [ 0, %4478 ]
  %4490 = phi %union.StackValue* [ %4487, %4484 ], [ %4524, %4478 ]
  %4491 = getelementptr inbounds i32, i32* %4526, i64 1
  %4492 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:4493:                                   ; preds = %4522
  %4494 = lshr i32 %4523, 7
  %4495 = and i32 %4494, 255
  %4496 = load %struct.Proto*, %struct.Proto** %46, align 8, !tbaa !34
  call void @luaT_adjustvarargs(%struct.lua_State* %0, i32 %4495, %struct.CallInfo* %1, %struct.Proto* %4496) #8
  %4497 = load i32, i32* %21, align 8, !tbaa !6
  %4498 = icmp eq i32 %4497, 0
  br i1 %4498, label %4499, label %4501

; <label>:4499:                                   ; preds = %4493
  %4500 = getelementptr inbounds i32, i32* %4526, i64 1
  br label %4504

; <label>:4501:                                   ; preds = %4493
  call void @luaD_hookcall(%struct.lua_State* %0, %struct.CallInfo* nonnull %1) #8
  %4502 = getelementptr inbounds i32, i32* %4526, i64 1
  store i32* %4502, i32** %27, align 8, !tbaa !59
  %4503 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  br label %4504

; <label>:4504:                                   ; preds = %4499, %4501
  %4505 = phi i32* [ %4500, %4499 ], [ %4502, %4501 ]
  %4506 = phi i32 [ 0, %4499 ], [ %4503, %4501 ]
  %4507 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %4508 = getelementptr inbounds %union.StackValue, %union.StackValue* %4507, i64 1
  %4509 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:4510:                                   ; preds = %4522
  %4511 = icmp eq i32 %4525, 0
  br i1 %4511, label %4516, label %4512

; <label>:4512:                                   ; preds = %4510
  %4513 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %4526) #8
  %4514 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !31
  %4515 = getelementptr inbounds %union.StackValue, %union.StackValue* %4514, i64 1
  br label %4516

; <label>:4516:                                   ; preds = %4510, %4512
  %4517 = phi i32 [ %4513, %4512 ], [ 0, %4510 ]
  %4518 = phi %union.StackValue* [ %4515, %4512 ], [ %4524, %4510 ]
  %4519 = getelementptr inbounds i32, i32* %4526, i64 1
  %4520 = load i32, i32* %4526, align 4, !tbaa !32
  br label %93

; <label>:4521:                                   ; preds = %3846, %3808, %3840, %3803, %3832, %3793, %3819, %3831, %3792, %3788, %3743
  ret void

; <label>:4522:                                   ; preds = %93, %66
  %4523 = phi i32 [ %71, %66 ], [ %94, %93 ]
  %4524 = phi %union.StackValue* [ %69, %66 ], [ %95, %93 ]
  %4525 = phi i32 [ %68, %66 ], [ %96, %93 ]
  %4526 = phi i32* [ %70, %66 ], [ %97, %93 ]
  %4527 = lshr i32 %4523, 7
  %4528 = and i32 %4527, 255
  %4529 = zext i32 %4528 to i64
  %4530 = getelementptr inbounds %union.StackValue, %union.StackValue* %4524, i64 %4529
  %4531 = and i32 %4523, 127
  %4532 = zext i32 %4531 to i64
  %4533 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %4532
  %4534 = load i8*, i8** %4533, align 8, !tbaa !21
  indirectbr i8* %4534, [label %72, label %118, label %134, label %98, label %150, label %172, label %190, label %236, label %260, label %302, label %348, label %421, label %475, label %518, label %590, label %686, label %763, label %829, label %862, label %915, label %956, label %995, label %1036, label %1100, label %1138, label %1176, label %1233, label %1294, label %1353, label %1414, label %1498, label %1546, label %1594, label %2105, label %2152, label %2199, label %2432, label %2496, label %1671, label %1730, label %1789, label %1848, label %1932, label %1980, label %2028, label %2246, label %2308, label %2370, label %2625, label %2552, label %2698, label %2732, label %2773, label %2803, label %2820, label %2842, label %2856, label %2867, label %2883, label %2913, label %3101, label %3293, label %3325, label %3371, label %3423, label %3475, label %3527, label %3579, label %3621, label %3672, label %3693, label %3758, label %3789, label %3815, label %3853, label %3912, label %4252, label %4265, label %4288, label %4320, label %4403, label %4478, label %4493, label %4510]
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

; Function Attrs: nounwind readnone speculatable
declare double @llvm.pow.f64(double, double) #3

declare hidden void @luaT_trybinassocTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32, i32) local_unnamed_addr #2

declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

declare hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

declare hidden i32 @luaT_callorderiTM(%struct.lua_State*, %struct.TValue*, i32, i32, i32, i32) local_unnamed_addr #2

declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

declare hidden void @luaD_tryfuncTM(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

declare hidden void @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, i32) local_unnamed_addr #2

declare hidden void @luaD_pretailcall(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #4

declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #2

declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #2

declare hidden void @luaT_getvarargs(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) local_unnamed_addr #2

declare hidden void @luaT_adjustvarargs(%struct.lua_State*, i32, %struct.CallInfo*, %struct.Proto*) local_unnamed_addr #2

declare hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #7

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }

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
!25 = !{!26, !4, i64 8}
!26 = !{!"TString", !14, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !15, i64 12, !4, i64 16}
!27 = !{!26, !4, i64 11}
!28 = !{!17, !14, i64 16}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!17, !14, i64 32}
!31 = !{!19, !14, i64 0}
!32 = !{!15, !15, i64 0}
!33 = !{!17, !15, i64 192}
!34 = !{!35, !14, i64 24}
!35 = !{!"LClosure", !14, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !14, i64 16, !14, i64 24, !4, i64 32}
!36 = !{!37, !14, i64 56}
!37 = !{!"Proto", !14, i64 0, !4, i64 8, !4, i64 9, !4, i64 10, !4, i64 11, !4, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120}
!38 = !{!37, !4, i64 11}
!39 = !{!37, !14, i64 64}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !14, i64 16}
!43 = !{!"UpVal", !14, i64 0, !4, i64 8, !4, i64 9, !14, i64 16, !4, i64 24}
!44 = !{!43, !4, i64 9}
!45 = !{!19, !14, i64 8}
!46 = !{!47, !20, i64 24}
!47 = !{!"global_State", !14, i64 0, !14, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !48, i64 48, !3, i64 64, !3, i64 80, !15, i64 96, !4, i64 100, !4, i64 101, !4, i64 102, !4, i64 103, !4, i64 104, !4, i64 105, !4, i64 106, !4, i64 107, !4, i64 108, !4, i64 109, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !4, i64 272, !4, i64 472, !4, i64 544, !14, i64 1392, !14, i64 1400}
!48 = !{!"stringtable", !14, i64 0, !15, i64 8, !15, i64 12}
!49 = !{!19, !18, i64 60}
!50 = !{!19, !14, i64 16}
!51 = !{!13, !14, i64 16}
!52 = !{!37, !14, i64 72}
!53 = !{!37, !15, i64 16}
!54 = !{!37, !14, i64 80}
!55 = !{!56, !4, i64 8}
!56 = !{!"Upvaldesc", !14, i64 0, !4, i64 8, !4, i64 9}
!57 = !{!56, !4, i64 9}
!58 = !{!35, !4, i64 9}
!59 = !{!17, !14, i64 40}
