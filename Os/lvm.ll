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
@luaV_execute.disptab = internal unnamed_addr constant [84 x i8*] [i8* blockaddress(@luaV_execute, %64), i8* blockaddress(@luaV_execute, %110), i8* blockaddress(@luaV_execute, %126), i8* blockaddress(@luaV_execute, %90), i8* blockaddress(@luaV_execute, %142), i8* blockaddress(@luaV_execute, %164), i8* blockaddress(@luaV_execute, %182), i8* blockaddress(@luaV_execute, %203), i8* blockaddress(@luaV_execute, %227), i8* blockaddress(@luaV_execute, %269), i8* blockaddress(@luaV_execute, %315), i8* blockaddress(@luaV_execute, %388), i8* blockaddress(@luaV_execute, %442), i8* blockaddress(@luaV_execute, %485), i8* blockaddress(@luaV_execute, %557), i8* blockaddress(@luaV_execute, %653), i8* blockaddress(@luaV_execute, %730), i8* blockaddress(@luaV_execute, %796), i8* blockaddress(@luaV_execute, %829), i8* blockaddress(@luaV_execute, %882), i8* blockaddress(@luaV_execute, %923), i8* blockaddress(@luaV_execute, %962), i8* blockaddress(@luaV_execute, %1003), i8* blockaddress(@luaV_execute, %1053), i8* blockaddress(@luaV_execute, %1091), i8* blockaddress(@luaV_execute, %1129), i8* blockaddress(@luaV_execute, %1169), i8* blockaddress(@luaV_execute, %1230), i8* blockaddress(@luaV_execute, %1289), i8* blockaddress(@luaV_execute, %1350), i8* blockaddress(@luaV_execute, %1420), i8* blockaddress(@luaV_execute, %1468), i8* blockaddress(@luaV_execute, %1516), i8* blockaddress(@luaV_execute, %1979), i8* blockaddress(@luaV_execute, %2026), i8* blockaddress(@luaV_execute, %2073), i8* blockaddress(@luaV_execute, %2306), i8* blockaddress(@luaV_execute, %2370), i8* blockaddress(@luaV_execute, %1576), i8* blockaddress(@luaV_execute, %1635), i8* blockaddress(@luaV_execute, %1694), i8* blockaddress(@luaV_execute, %1753), i8* blockaddress(@luaV_execute, %1823), i8* blockaddress(@luaV_execute, %1871), i8* blockaddress(@luaV_execute, %1919), i8* blockaddress(@luaV_execute, %2120), i8* blockaddress(@luaV_execute, %2182), i8* blockaddress(@luaV_execute, %2244), i8* blockaddress(@luaV_execute, %2499), i8* blockaddress(@luaV_execute, %2426), i8* blockaddress(@luaV_execute, %2572), i8* blockaddress(@luaV_execute, %2606), i8* blockaddress(@luaV_execute, %2647), i8* blockaddress(@luaV_execute, %2677), i8* blockaddress(@luaV_execute, %2694), i8* blockaddress(@luaV_execute, %2716), i8* blockaddress(@luaV_execute, %2730), i8* blockaddress(@luaV_execute, %2741), i8* blockaddress(@luaV_execute, %2757), i8* blockaddress(@luaV_execute, %2787), i8* blockaddress(@luaV_execute, %2851), i8* blockaddress(@luaV_execute, %2915), i8* blockaddress(@luaV_execute, %2947), i8* blockaddress(@luaV_execute, %2993), i8* blockaddress(@luaV_execute, %3045), i8* blockaddress(@luaV_execute, %3097), i8* blockaddress(@luaV_execute, %3149), i8* blockaddress(@luaV_execute, %3201), i8* blockaddress(@luaV_execute, %3243), i8* blockaddress(@luaV_execute, %3294), i8* blockaddress(@luaV_execute, %3315), i8* blockaddress(@luaV_execute, %3380), i8* blockaddress(@luaV_execute, %3411), i8* blockaddress(@luaV_execute, %3437), i8* blockaddress(@luaV_execute, %3475), i8* blockaddress(@luaV_execute, %3534), i8* blockaddress(@luaV_execute, %3686), i8* blockaddress(@luaV_execute, %3699), i8* blockaddress(@luaV_execute, %3722), i8* blockaddress(@luaV_execute, %3754), i8* blockaddress(@luaV_execute, %3837), i8* blockaddress(@luaV_execute, %3912), i8* blockaddress(@luaV_execute, %3927), i8* blockaddress(@luaV_execute, %3944)], align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"'for' step is zero\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"initial value\00", align 1

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare hidden i64 @luaO_str2num(i8*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
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
  %9 = tail call double @llvm.floor.f64(double %8) #10
  %10 = fcmp une double %9, %8
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %6
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %27, label %13

; <label>:13:                                     ; preds = %11
  %14 = icmp sgt i32 %2, 1
  %15 = fadd double %9, 1.000000e+00
  %16 = select i1 %14, double %15, double %9
  br label %17

; <label>:17:                                     ; preds = %13, %6
  %18 = phi double [ %9, %6 ], [ %16, %13 ]
  %19 = fcmp oge double %18, 0xC3E0000000000000
  %20 = fcmp olt double %18, 0x43E0000000000000
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

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
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
  %13 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %8, i32 0) #11
  %14 = getelementptr inbounds %struct.TValue, %struct.TValue* %13, i64 0, i32 1
  %15 = load i8, i8* %14, align 8, !tbaa !2
  %16 = and i8 %15, 15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %41, !prof !11

; <label>:18:                                     ; preds = %12
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #13
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
  %34 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %23, i32 0, %struct.TString* %33) #11
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
  tail call void @luaT_callTMres(%struct.lua_State* %0, %struct.TValue* %43, %struct.TValue* %8, %struct.TValue* %2, %union.StackValue* %3) #11
  br label %69

; <label>:47:                                     ; preds = %41
  %48 = icmp eq i8 %42, 69
  br i1 %48, label %49, label %64

; <label>:49:                                     ; preds = %47
  %50 = bitcast %struct.TValue* %43 to %struct.Table**
  %51 = load %struct.Table*, %struct.Table** %50, align 8, !tbaa !6
  %52 = tail call %struct.TValue* @luaH_get(%struct.Table* %51, %struct.TValue* %2) #11
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
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0)) #13
  unreachable

; <label>:69:                                     ; preds = %57, %46, %39
  ret void
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaT_callTMres(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_get(%struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn optsize
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
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
  %28 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %17, i32 1, %struct.TString* %27) #11
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
  %39 = tail call %struct.TValue* @luaH_newkey(%struct.lua_State* %0, %struct.Table* %34, %struct.TValue* %2) #11
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
  tail call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* nonnull %14) #11
  br label %119

; <label>:66:                                     ; preds = %7
  %67 = tail call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* %8, i32 1) #11
  %68 = getelementptr inbounds %struct.TValue, %struct.TValue* %67, i64 0, i32 1
  %69 = load i8, i8* %68, align 8, !tbaa !2
  %70 = and i8 %69, 15
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73, !prof !11

; <label>:72:                                     ; preds = %66
  tail call void @luaG_typeerror(%struct.lua_State* %0, %struct.TValue* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #13
  unreachable

; <label>:73:                                     ; preds = %30, %66
  %74 = phi i8 [ %69, %66 ], [ %32, %30 ]
  %75 = phi %struct.TValue* [ %67, %66 ], [ %28, %30 ]
  %76 = and i8 %74, 15
  %77 = icmp eq i8 %76, 6
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %73
  tail call void @luaT_callTM(%struct.lua_State* %0, %struct.TValue* %75, %struct.TValue* %8, %struct.TValue* %2, %struct.TValue* %3) #11
  br label %119

; <label>:79:                                     ; preds = %73
  %80 = icmp eq i8 %74, 69
  br i1 %80, label %81, label %114

; <label>:81:                                     ; preds = %79
  %82 = bitcast %struct.TValue* %75 to %struct.Table**
  %83 = load %struct.Table*, %struct.Table** %82, align 8, !tbaa !6
  %84 = tail call %struct.TValue* @luaH_get(%struct.Table* %83, %struct.TValue* %2) #11
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
  tail call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %101) #11
  br label %119

; <label>:114:                                    ; preds = %79, %81
  %115 = phi %struct.TValue* [ %84, %81 ], [ null, %79 ]
  %116 = add nuw nsw i32 %10, 1
  %117 = icmp ult i32 %116, 2000
  br i1 %117, label %7, label %118

; <label>:118:                                    ; preds = %114
  tail call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #13
  unreachable

; <label>:119:                                    ; preds = %65, %41, %53, %58, %78, %106, %99, %89, %113
  ret void
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaT_callTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %struct.TValue*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize readonly uwtable
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

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize readonly uwtable
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

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
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
  %24 = tail call double @llvm.floor.f64(double %23) #10
  %25 = fcmp une double %24, %23
  br i1 %25, label %206, label %26

; <label>:26:                                     ; preds = %21
  %27 = fcmp oge double %24, 0xC3E0000000000000
  %28 = fcmp olt double %24, 0x43E0000000000000
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
  %40 = tail call double @llvm.floor.f64(double %39) #10
  %41 = fcmp une double %40, %39
  br i1 %41, label %206, label %42

; <label>:42:                                     ; preds = %37
  %43 = fcmp oge double %40, 0xC3E0000000000000
  %44 = fcmp olt double %40, 0x43E0000000000000
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
  %66 = fcmp oeq double %63, %65
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
  %101 = tail call i32 @luaS_eqlngstr(%struct.TString* %98, %struct.TString* %100) #11
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
  %124 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %112, i32 5, %struct.TString* %123) #11
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
  %160 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %148, i32 5, %struct.TString* %159) #11
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
  %187 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %182, i32 5, %struct.TString* %186) #11
  %188 = icmp eq %struct.TValue* %187, null
  br i1 %188, label %206, label %189

; <label>:189:                                    ; preds = %119, %155, %181
  %190 = phi %struct.TValue* [ %187, %181 ], [ %124, %119 ], [ %160, %155 ]
  %191 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %192 = load %union.StackValue*, %union.StackValue** %191, align 8, !tbaa !25
  tail call void @luaT_callTMres(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %190, %struct.TValue* nonnull %1, %struct.TValue* nonnull %2, %union.StackValue* %192) #11
  %193 = bitcast %union.StackValue** %191 to %struct.TValue**
  %194 = load %struct.TValue*, %struct.TValue** %193, align 8, !tbaa !25
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

; Function Attrs: optsize
declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define hidden void @luaV_concat(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = alloca [40 x i8], align 16
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %5 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %6 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !25
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
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %17) #11
  %23 = load i8, i8* %19, align 8, !tbaa !6
  br label %25

; <label>:24:                                     ; preds = %7, %18
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %11, %struct.TValue* nonnull %17, %union.StackValue* nonnull %10, i32 22) #11
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
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %11) #11
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
  call void @luaO_tostring(%struct.lua_State* %0, %struct.TValue* nonnull %81) #11
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
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #13
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
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #10
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %132, i8* nonnull %134, i64 %131, i32 1, i1 false) #10
  %135 = add i64 %131, %115
  %136 = add nsw i64 %114, -1
  %137 = icmp sgt i64 %114, 1
  br i1 %137, label %113, label %138

; <label>:138:                                    ; preds = %130
  %139 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %0, i8* nonnull %5, i64 %108) #11
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #10
  br label %170

; <label>:140:                                    ; preds = %107
  %141 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %0, i64 %108) #11
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* nonnull %166, i64 %163, i32 1, i1 false) #10
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
  %177 = load i8, i8* %176, align 8, !tbaa !27
  %178 = or i8 %177, 64
  %179 = getelementptr inbounds %union.StackValue, %union.StackValue* %8, i64 %173, i32 0, i32 1
  store i8 %178, i8* %179, align 8, !tbaa !2
  br label %180

; <label>:180:                                    ; preds = %34, %38, %170, %48, %24
  %181 = phi i32 [ 2, %48 ], [ %109, %170 ], [ 2, %24 ], [ 2, %34 ], [ 2, %38 ]
  %182 = add nsw i32 %181, -1
  %183 = sub nsw i32 %9, %182
  %184 = load %union.StackValue*, %union.StackValue** %4, align 8, !tbaa !25
  %185 = sext i32 %182 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds %union.StackValue, %union.StackValue* %184, i64 %186
  store %union.StackValue* %187, %union.StackValue** %4, align 8, !tbaa !25
  %188 = icmp sgt i32 %183, 1
  br i1 %188, label %7, label %189

; <label>:189:                                    ; preds = %180
  ret void
}

; Function Attrs: optsize
declare hidden void @luaO_tostring(%struct.lua_State*, %struct.TValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: optsize
declare hidden i64 @luaH_getn(%struct.Table*) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize
declare double @fmod(double, double) local_unnamed_addr #6

; Function Attrs: norecurse nounwind optsize readnone uwtable
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

; Function Attrs: nounwind optsize uwtable
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

; Function Attrs: nounwind optsize uwtable
define hidden void @luaV_execute(%struct.lua_State*, %struct.CallInfo*) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
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
  %23 = bitcast %struct.TValue* %4 to i64*
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %4, i64 0, i32 1
  %25 = bitcast %struct.TValue* %5 to i64*
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %5, i64 0, i32 1
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  %28 = bitcast double* %8 to i64*
  %29 = bitcast double* %9 to i64*
  %30 = bitcast double* %3 to i8*
  %31 = bitcast double* %7 to i64*
  %32 = bitcast double* %3 to i64*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %14, i64 0, i32 2
  br label %34

; <label>:34:                                     ; preds = %3375, %2
  %35 = load i32, i32* %10, align 8, !tbaa !32
  %36 = load %struct.LClosure**, %struct.LClosure*** %12, align 8, !tbaa !30
  %37 = load %struct.LClosure*, %struct.LClosure** %36, align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 5
  %39 = load %struct.Proto*, %struct.Proto** %38, align 8, !tbaa !33
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i64 0, i32 15
  %41 = load %struct.TValue*, %struct.TValue** %40, align 8, !tbaa !35
  %42 = load i32*, i32** %15, align 8, !tbaa !6
  %43 = icmp eq i32 %35, 0
  %44 = bitcast %struct.LClosure** %36 to %union.StackValue*
  br i1 %43, label %58, label %45

; <label>:45:                                     ; preds = %34
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i64 0, i32 4
  %47 = load i8, i8* %46, align 1, !tbaa !37
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i64 0, i32 16
  %51 = load i32*, i32** %50, align 8, !tbaa !38
  %52 = icmp eq i32* %42, %51
  br i1 %52, label %53, label %55

; <label>:53:                                     ; preds = %49
  call void @luaD_hookcall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1) #11
  br label %55

; <label>:54:                                     ; preds = %45
  store i32 1, i32* %21, align 8, !tbaa !6
  br label %58

; <label>:55:                                     ; preds = %53, %49
  store i32 1, i32* %21, align 8, !tbaa !6
  %56 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %42) #11
  %57 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  br label %58

; <label>:58:                                     ; preds = %34, %54, %55
  %59 = phi %union.StackValue* [ %57, %55 ], [ %44, %54 ], [ %44, %34 ]
  %60 = phi i32 [ %56, %55 ], [ 0, %54 ], [ 0, %34 ]
  %61 = getelementptr inbounds %union.StackValue, %union.StackValue* %59, i64 1
  %62 = getelementptr inbounds i32, i32* %42, i64 1
  %63 = load i32, i32* %42, align 4, !tbaa !31
  br label %3956

; <label>:64:                                     ; preds = %3956
  %65 = lshr i32 %3957, 16
  %66 = and i32 %65, 255
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %67, i32 0
  %69 = bitcast %struct.TValue* %68 to i64*
  %70 = bitcast %union.StackValue* %3964 to i64*
  %71 = load i64, i64* %69, align 8
  store i64 %71, i64* %70, align 8
  %72 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %67, i32 0, i32 1
  %73 = load i8, i8* %72, align 8, !tbaa !2
  %74 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %73, i8* %74, align 8, !tbaa !2
  %75 = icmp eq i32 %3959, 0
  br i1 %75, label %80, label %76

; <label>:76:                                     ; preds = %64
  %77 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %78 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %79 = getelementptr inbounds %union.StackValue, %union.StackValue* %78, i64 1
  br label %80

; <label>:80:                                     ; preds = %64, %76
  %81 = phi i32 [ %77, %76 ], [ 0, %64 ]
  %82 = phi %union.StackValue* [ %79, %76 ], [ %3958, %64 ]
  %83 = getelementptr inbounds i32, i32* %3960, i64 1
  %84 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:85:                                     ; preds = %80, %105, %121, %137, %159, %177, %198, %222, %264, %310, %383, %437, %480, %552, %648, %725, %791, %824, %877, %918, %957, %998, %1048, %1086, %1124, %1164, %1225, %1284, %1345, %1415, %1463, %1511, %1571, %1630, %1689, %1748, %1818, %1866, %1914, %1974, %2021, %2068, %2115, %2177, %2239, %2301, %2365, %2421, %2494, %2567, %2601, %2642, %2672, %2689, %2711, %2725, %2736, %2752, %2782, %2846, %2910, %2942, %2988, %3040, %3092, %3144, %3196, %3238, %3289, %3310, %3529, %3681, %3749, %3832, %3907, %3922, %3938, %3950
  %86 = phi i32 [ %84, %80 ], [ %109, %105 ], [ %125, %121 ], [ %141, %137 ], [ %163, %159 ], [ %181, %177 ], [ %202, %198 ], [ %226, %222 ], [ %268, %264 ], [ %314, %310 ], [ %387, %383 ], [ %441, %437 ], [ %484, %480 ], [ %556, %552 ], [ %652, %648 ], [ %729, %725 ], [ %795, %791 ], [ %828, %824 ], [ %881, %877 ], [ %922, %918 ], [ %961, %957 ], [ %1002, %998 ], [ %1052, %1048 ], [ %1090, %1086 ], [ %1128, %1124 ], [ %1168, %1164 ], [ %1229, %1225 ], [ %1288, %1284 ], [ %1349, %1345 ], [ %1419, %1415 ], [ %1467, %1463 ], [ %1515, %1511 ], [ %1575, %1571 ], [ %1634, %1630 ], [ %1693, %1689 ], [ %1752, %1748 ], [ %1822, %1818 ], [ %1870, %1866 ], [ %1918, %1914 ], [ %1978, %1974 ], [ %2025, %2021 ], [ %2072, %2068 ], [ %2119, %2115 ], [ %2181, %2177 ], [ %2243, %2239 ], [ %2305, %2301 ], [ %2369, %2365 ], [ %2425, %2421 ], [ %2498, %2494 ], [ %2571, %2567 ], [ %2605, %2601 ], [ %2646, %2642 ], [ %2676, %2672 ], [ %2693, %2689 ], [ %2715, %2711 ], [ %2729, %2725 ], [ %2740, %2736 ], [ %2756, %2752 ], [ %2786, %2782 ], [ %2850, %2846 ], [ %2914, %2910 ], [ %2946, %2942 ], [ %2992, %2988 ], [ %3044, %3040 ], [ %3096, %3092 ], [ %3148, %3144 ], [ %3200, %3196 ], [ %3242, %3238 ], [ %3293, %3289 ], [ %3314, %3310 ], [ %3533, %3529 ], [ %3685, %3681 ], [ %3753, %3749 ], [ %3836, %3832 ], [ %3911, %3907 ], [ %3926, %3922 ], [ %3943, %3938 ], [ %3954, %3950 ]
  %87 = phi %union.StackValue* [ %82, %80 ], [ %107, %105 ], [ %123, %121 ], [ %139, %137 ], [ %161, %159 ], [ %179, %177 ], [ %200, %198 ], [ %224, %222 ], [ %266, %264 ], [ %312, %310 ], [ %385, %383 ], [ %439, %437 ], [ %482, %480 ], [ %554, %552 ], [ %650, %648 ], [ %727, %725 ], [ %793, %791 ], [ %826, %824 ], [ %879, %877 ], [ %920, %918 ], [ %959, %957 ], [ %1000, %998 ], [ %1050, %1048 ], [ %1088, %1086 ], [ %1126, %1124 ], [ %1166, %1164 ], [ %1227, %1225 ], [ %1286, %1284 ], [ %1347, %1345 ], [ %1417, %1415 ], [ %1465, %1463 ], [ %1513, %1511 ], [ %1573, %1571 ], [ %1632, %1630 ], [ %1691, %1689 ], [ %1750, %1748 ], [ %1820, %1818 ], [ %1868, %1866 ], [ %1916, %1914 ], [ %1976, %1974 ], [ %2023, %2021 ], [ %2070, %2068 ], [ %2117, %2115 ], [ %2179, %2177 ], [ %2241, %2239 ], [ %2303, %2301 ], [ %2367, %2365 ], [ %2423, %2421 ], [ %2496, %2494 ], [ %2569, %2567 ], [ %2603, %2601 ], [ %2644, %2642 ], [ %2674, %2672 ], [ %2691, %2689 ], [ %2713, %2711 ], [ %2727, %2725 ], [ %2738, %2736 ], [ %2754, %2752 ], [ %2784, %2782 ], [ %2848, %2846 ], [ %2912, %2910 ], [ %2944, %2942 ], [ %2990, %2988 ], [ %3042, %3040 ], [ %3094, %3092 ], [ %3146, %3144 ], [ %3198, %3196 ], [ %3240, %3238 ], [ %3291, %3289 ], [ %3312, %3310 ], [ %3531, %3529 ], [ %3683, %3681 ], [ %3751, %3749 ], [ %3834, %3832 ], [ %3909, %3907 ], [ %3924, %3922 ], [ %3942, %3938 ], [ %3952, %3950 ]
  %88 = phi i32 [ %81, %80 ], [ %106, %105 ], [ %122, %121 ], [ %138, %137 ], [ %160, %159 ], [ %178, %177 ], [ %199, %198 ], [ %223, %222 ], [ %265, %264 ], [ %311, %310 ], [ %384, %383 ], [ %438, %437 ], [ %481, %480 ], [ %553, %552 ], [ %649, %648 ], [ %726, %725 ], [ %792, %791 ], [ %825, %824 ], [ %878, %877 ], [ %919, %918 ], [ %958, %957 ], [ %999, %998 ], [ %1049, %1048 ], [ %1087, %1086 ], [ %1125, %1124 ], [ %1165, %1164 ], [ %1226, %1225 ], [ %1285, %1284 ], [ %1346, %1345 ], [ %1416, %1415 ], [ %1464, %1463 ], [ %1512, %1511 ], [ %1572, %1571 ], [ %1631, %1630 ], [ %1690, %1689 ], [ %1749, %1748 ], [ %1819, %1818 ], [ %1867, %1866 ], [ %1915, %1914 ], [ %1975, %1974 ], [ %2022, %2021 ], [ %2069, %2068 ], [ %2116, %2115 ], [ %2178, %2177 ], [ %2240, %2239 ], [ %2302, %2301 ], [ %2366, %2365 ], [ %2422, %2421 ], [ %2495, %2494 ], [ %2568, %2567 ], [ %2602, %2601 ], [ %2643, %2642 ], [ %2673, %2672 ], [ %2690, %2689 ], [ %2712, %2711 ], [ %2726, %2725 ], [ %2737, %2736 ], [ %2753, %2752 ], [ %2783, %2782 ], [ %2847, %2846 ], [ %2911, %2910 ], [ %2943, %2942 ], [ %2989, %2988 ], [ %3041, %3040 ], [ %3093, %3092 ], [ %3145, %3144 ], [ %3197, %3196 ], [ %3239, %3238 ], [ %3290, %3289 ], [ %3311, %3310 ], [ %3530, %3529 ], [ %3682, %3681 ], [ %3750, %3749 ], [ %3833, %3832 ], [ %3908, %3907 ], [ %3923, %3922 ], [ %3940, %3938 ], [ %3951, %3950 ]
  %89 = phi i32* [ %83, %80 ], [ %108, %105 ], [ %124, %121 ], [ %140, %137 ], [ %162, %159 ], [ %180, %177 ], [ %201, %198 ], [ %225, %222 ], [ %267, %264 ], [ %313, %310 ], [ %386, %383 ], [ %440, %437 ], [ %483, %480 ], [ %555, %552 ], [ %651, %648 ], [ %728, %725 ], [ %794, %791 ], [ %827, %824 ], [ %880, %877 ], [ %921, %918 ], [ %960, %957 ], [ %1001, %998 ], [ %1051, %1048 ], [ %1089, %1086 ], [ %1127, %1124 ], [ %1167, %1164 ], [ %1228, %1225 ], [ %1287, %1284 ], [ %1348, %1345 ], [ %1418, %1415 ], [ %1466, %1463 ], [ %1514, %1511 ], [ %1574, %1571 ], [ %1633, %1630 ], [ %1692, %1689 ], [ %1751, %1748 ], [ %1821, %1818 ], [ %1869, %1866 ], [ %1917, %1914 ], [ %1977, %1974 ], [ %2024, %2021 ], [ %2071, %2068 ], [ %2118, %2115 ], [ %2180, %2177 ], [ %2242, %2239 ], [ %2304, %2301 ], [ %2368, %2365 ], [ %2424, %2421 ], [ %2497, %2494 ], [ %2570, %2567 ], [ %2604, %2601 ], [ %2645, %2642 ], [ %2675, %2672 ], [ %2692, %2689 ], [ %2714, %2711 ], [ %2728, %2725 ], [ %2739, %2736 ], [ %2755, %2752 ], [ %2785, %2782 ], [ %2849, %2846 ], [ %2913, %2910 ], [ %2945, %2942 ], [ %2991, %2988 ], [ %3043, %3040 ], [ %3095, %3092 ], [ %3147, %3144 ], [ %3199, %3196 ], [ %3241, %3238 ], [ %3292, %3289 ], [ %3313, %3310 ], [ %3532, %3529 ], [ %3684, %3681 ], [ %3752, %3749 ], [ %3835, %3832 ], [ %3910, %3907 ], [ %3925, %3922 ], [ %3939, %3938 ], [ %3953, %3950 ]
  br label %3956

; <label>:90:                                     ; preds = %3956
  %91 = lshr i32 %3957, 15
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %92
  %94 = bitcast %struct.TValue* %93 to i64*
  %95 = bitcast %union.StackValue* %3964 to i64*
  %96 = load i64, i64* %94, align 8
  store i64 %96, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %92, i32 1
  %98 = load i8, i8* %97, align 8, !tbaa !2
  %99 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %98, i8* %99, align 8, !tbaa !2
  %100 = icmp eq i32 %3959, 0
  br i1 %100, label %105, label %101

; <label>:101:                                    ; preds = %90
  %102 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %103 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %104 = getelementptr inbounds %union.StackValue, %union.StackValue* %103, i64 1
  br label %105

; <label>:105:                                    ; preds = %90, %101
  %106 = phi i32 [ %102, %101 ], [ 0, %90 ]
  %107 = phi %union.StackValue* [ %104, %101 ], [ %3958, %90 ]
  %108 = getelementptr inbounds i32, i32* %3960, i64 1
  %109 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:110:                                    ; preds = %3956
  %111 = lshr i32 %3957, 15
  %112 = add nsw i32 %111, -65535
  %113 = sext i32 %112 to i64
  %114 = bitcast %union.StackValue* %3964 to i64*
  store i64 %113, i64* %114, align 8, !tbaa !6
  %115 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %115, align 8, !tbaa !2
  %116 = icmp eq i32 %3959, 0
  br i1 %116, label %121, label %117

; <label>:117:                                    ; preds = %110
  %118 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %119 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %120 = getelementptr inbounds %union.StackValue, %union.StackValue* %119, i64 1
  br label %121

; <label>:121:                                    ; preds = %110, %117
  %122 = phi i32 [ %118, %117 ], [ 0, %110 ]
  %123 = phi %union.StackValue* [ %120, %117 ], [ %3958, %110 ]
  %124 = getelementptr inbounds i32, i32* %3960, i64 1
  %125 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:126:                                    ; preds = %3956
  %127 = lshr i32 %3957, 15
  %128 = add nsw i32 %127, -65535
  %129 = sitofp i32 %128 to double
  %130 = bitcast %union.StackValue* %3964 to double*
  store double %129, double* %130, align 8, !tbaa !6
  %131 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %131, align 8, !tbaa !2
  %132 = icmp eq i32 %3959, 0
  br i1 %132, label %137, label %133

; <label>:133:                                    ; preds = %126
  %134 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %135 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %136 = getelementptr inbounds %union.StackValue, %union.StackValue* %135, i64 1
  br label %137

; <label>:137:                                    ; preds = %126, %133
  %138 = phi i32 [ %134, %133 ], [ 0, %126 ]
  %139 = phi %union.StackValue* [ %136, %133 ], [ %3958, %126 ]
  %140 = getelementptr inbounds i32, i32* %3960, i64 1
  %141 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:142:                                    ; preds = %3956
  %143 = load i32, i32* %3960, align 4, !tbaa !31
  %144 = lshr i32 %143, 7
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %145
  %147 = getelementptr inbounds i32, i32* %3960, i64 1
  %148 = bitcast %struct.TValue* %146 to i64*
  %149 = bitcast %union.StackValue* %3964 to i64*
  %150 = load i64, i64* %148, align 8
  store i64 %150, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %145, i32 1
  %152 = load i8, i8* %151, align 8, !tbaa !2
  %153 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %152, i8* %153, align 8, !tbaa !2
  %154 = icmp eq i32 %3959, 0
  br i1 %154, label %159, label %155

; <label>:155:                                    ; preds = %142
  %156 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %147) #11
  %157 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %158 = getelementptr inbounds %union.StackValue, %union.StackValue* %157, i64 1
  br label %159

; <label>:159:                                    ; preds = %142, %155
  %160 = phi i32 [ %156, %155 ], [ 0, %142 ]
  %161 = phi %union.StackValue* [ %158, %155 ], [ %3958, %142 ]
  %162 = getelementptr inbounds i32, i32* %3960, i64 2
  %163 = load i32, i32* %147, align 4, !tbaa !31
  br label %85

; <label>:164:                                    ; preds = %3956
  %165 = lshr i32 %3957, 16
  %166 = and i32 %165, 255
  %167 = bitcast %union.StackValue* %3964 to i32*
  store i32 %166, i32* %167, align 8, !tbaa !6
  %168 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 1, i8* %168, align 8, !tbaa !2
  %169 = icmp ugt i32 %3957, 16777215
  %170 = getelementptr inbounds i32, i32* %3960, i64 1
  %171 = select i1 %169, i32* %170, i32* %3960
  %172 = icmp eq i32 %3959, 0
  br i1 %172, label %177, label %173

; <label>:173:                                    ; preds = %164
  %174 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %171) #11
  %175 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %176 = getelementptr inbounds %union.StackValue, %union.StackValue* %175, i64 1
  br label %177

; <label>:177:                                    ; preds = %164, %173
  %178 = phi i32 [ %174, %173 ], [ 0, %164 ]
  %179 = phi %union.StackValue* [ %176, %173 ], [ %3958, %164 ]
  %180 = getelementptr inbounds i32, i32* %171, i64 1
  %181 = load i32, i32* %171, align 4, !tbaa !31
  br label %85

; <label>:182:                                    ; preds = %3956
  %183 = lshr i32 %3957, 16
  %184 = and i32 %183, 255
  br label %185

; <label>:185:                                    ; preds = %185, %182
  %186 = phi i32 [ %184, %182 ], [ %190, %185 ]
  %187 = phi %union.StackValue* [ %3964, %182 ], [ %188, %185 ]
  %188 = getelementptr inbounds %union.StackValue, %union.StackValue* %187, i64 1
  %189 = getelementptr inbounds %union.StackValue, %union.StackValue* %187, i64 0, i32 0, i32 1
  store i8 0, i8* %189, align 8, !tbaa !6
  %190 = add nsw i32 %186, -1
  %191 = icmp eq i32 %186, 0
  br i1 %191, label %192, label %185

; <label>:192:                                    ; preds = %185
  %193 = icmp eq i32 %3959, 0
  br i1 %193, label %198, label %194

; <label>:194:                                    ; preds = %192
  %195 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3960) #11
  %196 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %197 = getelementptr inbounds %union.StackValue, %union.StackValue* %196, i64 1
  br label %198

; <label>:198:                                    ; preds = %192, %194
  %199 = phi i32 [ %195, %194 ], [ 0, %192 ]
  %200 = phi %union.StackValue* [ %197, %194 ], [ %3958, %192 ]
  %201 = getelementptr inbounds i32, i32* %3960, i64 1
  %202 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:203:                                    ; preds = %3956
  %204 = lshr i32 %3957, 16
  %205 = and i32 %204, 255
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 6, i64 %206
  %208 = load %struct.UpVal*, %struct.UpVal** %207, align 8, !tbaa !21
  %209 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %208, i64 0, i32 3
  %210 = load %struct.TValue*, %struct.TValue** %209, align 8, !tbaa !39
  %211 = bitcast %struct.TValue* %210 to i64*
  %212 = bitcast %union.StackValue* %3964 to i64*
  %213 = load i64, i64* %211, align 8
  store i64 %213, i64* %212, align 8
  %214 = getelementptr inbounds %struct.TValue, %struct.TValue* %210, i64 0, i32 1
  %215 = load i8, i8* %214, align 8, !tbaa !2
  %216 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %215, i8* %216, align 8, !tbaa !2
  %217 = icmp eq i32 %3959, 0
  br i1 %217, label %222, label %218

; <label>:218:                                    ; preds = %203
  %219 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %220 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %221 = getelementptr inbounds %union.StackValue, %union.StackValue* %220, i64 1
  br label %222

; <label>:222:                                    ; preds = %203, %218
  %223 = phi i32 [ %219, %218 ], [ 0, %203 ]
  %224 = phi %union.StackValue* [ %221, %218 ], [ %3958, %203 ]
  %225 = getelementptr inbounds i32, i32* %3960, i64 1
  %226 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:227:                                    ; preds = %3956
  %228 = lshr i32 %3957, 16
  %229 = and i32 %228, 255
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 6, i64 %230
  %232 = load %struct.UpVal*, %struct.UpVal** %231, align 8, !tbaa !21
  %233 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %232, i64 0, i32 3
  %234 = load %struct.TValue*, %struct.TValue** %233, align 8, !tbaa !39
  %235 = bitcast %union.StackValue* %3964 to i64*
  %236 = bitcast %struct.TValue* %234 to i64*
  %237 = load i64, i64* %235, align 8
  store i64 %237, i64* %236, align 8
  %238 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %239 = load i8, i8* %238, align 8, !tbaa !2
  %240 = getelementptr inbounds %struct.TValue, %struct.TValue* %234, i64 0, i32 1
  store i8 %239, i8* %240, align 8, !tbaa !2
  %241 = load i8, i8* %238, align 8, !tbaa !6
  %242 = and i8 %241, 64
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %258, label %244

; <label>:244:                                    ; preds = %227
  %245 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %232, i64 0, i32 2
  %246 = load i8, i8* %245, align 1, !tbaa !41
  %247 = and i8 %246, 32
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %258, label %249

; <label>:249:                                    ; preds = %244
  %250 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0, i32 0, i32 0
  %251 = load %struct.GCObject*, %struct.GCObject** %250, align 8, !tbaa !6
  %252 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %251, i64 0, i32 2
  %253 = load i8, i8* %252, align 1, !tbaa !23
  %254 = and i8 %253, 24
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %258, label %256

; <label>:256:                                    ; preds = %249
  %257 = bitcast %struct.UpVal* %232 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* %257, %struct.GCObject* %251) #11
  br label %258

; <label>:258:                                    ; preds = %249, %244, %227, %256
  %259 = icmp eq i32 %3959, 0
  br i1 %259, label %264, label %260

; <label>:260:                                    ; preds = %258
  %261 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %262 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %263 = getelementptr inbounds %union.StackValue, %union.StackValue* %262, i64 1
  br label %264

; <label>:264:                                    ; preds = %258, %260
  %265 = phi i32 [ %261, %260 ], [ 0, %258 ]
  %266 = phi %union.StackValue* [ %263, %260 ], [ %3958, %258 ]
  %267 = getelementptr inbounds i32, i32* %3960, i64 1
  %268 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:269:                                    ; preds = %3956
  %270 = lshr i32 %3957, 16
  %271 = and i32 %270, 255
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 6, i64 %272
  %274 = load %struct.UpVal*, %struct.UpVal** %273, align 8, !tbaa !21
  %275 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %274, i64 0, i32 3
  %276 = load %struct.TValue*, %struct.TValue** %275, align 8, !tbaa !39
  %277 = lshr i32 %3957, 24
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %278
  %280 = getelementptr inbounds %struct.TValue, %struct.TValue* %276, i64 0, i32 1
  %281 = load i8, i8* %280, align 8, !tbaa !2
  %282 = icmp eq i8 %281, 69
  br i1 %282, label %283, label %299

; <label>:283:                                    ; preds = %269
  %284 = bitcast %struct.TValue* %279 to %struct.TString**
  %285 = load %struct.TString*, %struct.TString** %284, align 8, !tbaa !6
  %286 = bitcast %struct.TValue* %276 to %struct.Table**
  %287 = load %struct.Table*, %struct.Table** %286, align 8, !tbaa !6
  %288 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %287, %struct.TString* %285) #11
  %289 = getelementptr inbounds %struct.TValue, %struct.TValue* %288, i64 0, i32 1
  %290 = load i8, i8* %289, align 8, !tbaa !2
  %291 = and i8 %290, 15
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %299, label %293

; <label>:293:                                    ; preds = %283
  %294 = bitcast %struct.TValue* %288 to i64*
  %295 = bitcast %union.StackValue* %3964 to i64*
  %296 = load i64, i64* %294, align 8
  store i64 %296, i64* %295, align 8
  %297 = load i8, i8* %289, align 8, !tbaa !2
  %298 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %297, i8* %298, align 8, !tbaa !2
  br label %303

; <label>:299:                                    ; preds = %269, %283
  %300 = phi %struct.TValue* [ %288, %283 ], [ null, %269 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %301 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %301, i64* %19, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %276, %struct.TValue* %279, %union.StackValue* %3964, %struct.TValue* %300) #12
  %302 = load i32, i32* %21, align 8, !tbaa !6
  br label %303

; <label>:303:                                    ; preds = %299, %293
  %304 = phi i32 [ %3959, %293 ], [ %302, %299 ]
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %310, label %306

; <label>:306:                                    ; preds = %303
  %307 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %308 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %309 = getelementptr inbounds %union.StackValue, %union.StackValue* %308, i64 1
  br label %310

; <label>:310:                                    ; preds = %303, %306
  %311 = phi i32 [ %307, %306 ], [ 0, %303 ]
  %312 = phi %union.StackValue* [ %309, %306 ], [ %3958, %303 ]
  %313 = getelementptr inbounds i32, i32* %3960, i64 1
  %314 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:315:                                    ; preds = %3956
  %316 = lshr i32 %3957, 16
  %317 = and i32 %316, 255
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %318, i32 0
  %320 = lshr i32 %3957, 24
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %321, i32 0
  %323 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %321, i32 0, i32 1
  %324 = load i8, i8* %323, align 8, !tbaa !2
  %325 = icmp eq i8 %324, 35
  br i1 %325, label %326, label %352

; <label>:326:                                    ; preds = %315
  %327 = bitcast %struct.TValue* %322 to i64*
  %328 = load i64, i64* %327, align 8, !tbaa !6
  %329 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %318, i32 0, i32 1
  %330 = load i8, i8* %329, align 8, !tbaa !2
  %331 = icmp eq i8 %330, 69
  br i1 %331, label %332, label %372

; <label>:332:                                    ; preds = %326
  %333 = add i64 %328, -1
  %334 = bitcast %struct.TValue* %319 to %struct.Table**
  %335 = load %struct.Table*, %struct.Table** %334, align 8, !tbaa !6
  %336 = getelementptr inbounds %struct.Table, %struct.Table* %335, i64 0, i32 5
  %337 = load i32, i32* %336, align 4, !tbaa !6
  %338 = zext i32 %337 to i64
  %339 = icmp ult i64 %333, %338
  br i1 %339, label %340, label %344

; <label>:340:                                    ; preds = %332
  %341 = getelementptr inbounds %struct.Table, %struct.Table* %335, i64 0, i32 6
  %342 = load %struct.TValue*, %struct.TValue** %341, align 8, !tbaa !6
  %343 = getelementptr inbounds %struct.TValue, %struct.TValue* %342, i64 %333
  br label %346

; <label>:344:                                    ; preds = %332
  %345 = call %struct.TValue* @luaH_getint(%struct.Table* %335, i64 %328) #11
  br label %346

; <label>:346:                                    ; preds = %340, %344
  %347 = phi %struct.TValue* [ %343, %340 ], [ %345, %344 ]
  %348 = getelementptr inbounds %struct.TValue, %struct.TValue* %347, i64 0, i32 1
  %349 = load i8, i8* %348, align 8, !tbaa !2
  %350 = and i8 %349, 15
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %372, label %364

; <label>:352:                                    ; preds = %315
  %353 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %318, i32 0, i32 1
  %354 = load i8, i8* %353, align 8, !tbaa !2
  %355 = icmp eq i8 %354, 69
  br i1 %355, label %356, label %372

; <label>:356:                                    ; preds = %352
  %357 = bitcast %struct.TValue* %319 to %struct.Table**
  %358 = load %struct.Table*, %struct.Table** %357, align 8, !tbaa !6
  %359 = call %struct.TValue* @luaH_get(%struct.Table* %358, %struct.TValue* nonnull %322) #11
  %360 = getelementptr inbounds %struct.TValue, %struct.TValue* %359, i64 0, i32 1
  %361 = load i8, i8* %360, align 8, !tbaa !2
  %362 = and i8 %361, 15
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %372, label %364

; <label>:364:                                    ; preds = %346, %356
  %365 = phi i8* [ %348, %346 ], [ %360, %356 ]
  %366 = phi %struct.TValue* [ %347, %346 ], [ %359, %356 ]
  %367 = bitcast %struct.TValue* %366 to i64*
  %368 = bitcast %union.StackValue* %3964 to i64*
  %369 = load i64, i64* %367, align 8
  store i64 %369, i64* %368, align 8
  %370 = load i8, i8* %365, align 8, !tbaa !2
  %371 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %370, i8* %371, align 8, !tbaa !2
  br label %376

; <label>:372:                                    ; preds = %326, %352, %346, %356
  %373 = phi %struct.TValue* [ %347, %346 ], [ %359, %356 ], [ null, %352 ], [ null, %326 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %374 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %374, i64* %19, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* nonnull %319, %struct.TValue* nonnull %322, %union.StackValue* %3964, %struct.TValue* %373) #12
  %375 = load i32, i32* %21, align 8, !tbaa !6
  br label %376

; <label>:376:                                    ; preds = %372, %364
  %377 = phi i32 [ %3959, %364 ], [ %375, %372 ]
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %383, label %379

; <label>:379:                                    ; preds = %376
  %380 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %381 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %382 = getelementptr inbounds %union.StackValue, %union.StackValue* %381, i64 1
  br label %383

; <label>:383:                                    ; preds = %376, %379
  %384 = phi i32 [ %380, %379 ], [ 0, %376 ]
  %385 = phi %union.StackValue* [ %382, %379 ], [ %3958, %376 ]
  %386 = getelementptr inbounds i32, i32* %3960, i64 1
  %387 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:388:                                    ; preds = %3956
  %389 = lshr i32 %3957, 16
  %390 = and i32 %389, 255
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %391, i32 0
  %393 = lshr i32 %3957, 24
  %394 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %391, i32 0, i32 1
  %395 = load i8, i8* %394, align 8, !tbaa !2
  %396 = icmp eq i8 %395, 69
  %397 = zext i32 %393 to i64
  br i1 %396, label %398, label %426

; <label>:398:                                    ; preds = %388
  %399 = add nsw i64 %397, -1
  %400 = bitcast %struct.TValue* %392 to %struct.Table**
  %401 = load %struct.Table*, %struct.Table** %400, align 8, !tbaa !6
  %402 = getelementptr inbounds %struct.Table, %struct.Table* %401, i64 0, i32 5
  %403 = load i32, i32* %402, align 4, !tbaa !6
  %404 = zext i32 %403 to i64
  %405 = icmp ult i64 %399, %404
  br i1 %405, label %406, label %412

; <label>:406:                                    ; preds = %398
  %407 = getelementptr inbounds %struct.Table, %struct.Table* %401, i64 0, i32 6
  %408 = load %struct.TValue*, %struct.TValue** %407, align 8, !tbaa !6
  %409 = add nsw i32 %393, -1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TValue, %struct.TValue* %408, i64 %410
  br label %414

; <label>:412:                                    ; preds = %398
  %413 = call %struct.TValue* @luaH_getint(%struct.Table* %401, i64 %397) #11
  br label %414

; <label>:414:                                    ; preds = %412, %406
  %415 = phi %struct.TValue* [ %411, %406 ], [ %413, %412 ]
  %416 = getelementptr inbounds %struct.TValue, %struct.TValue* %415, i64 0, i32 1
  %417 = load i8, i8* %416, align 8, !tbaa !2
  %418 = and i8 %417, 15
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %426, label %420

; <label>:420:                                    ; preds = %414
  %421 = bitcast %struct.TValue* %415 to i64*
  %422 = bitcast %union.StackValue* %3964 to i64*
  %423 = load i64, i64* %421, align 8
  store i64 %423, i64* %422, align 8
  %424 = load i8, i8* %416, align 8, !tbaa !2
  %425 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %424, i8* %425, align 8, !tbaa !2
  br label %430

; <label>:426:                                    ; preds = %388, %414
  %427 = phi %struct.TValue* [ %415, %414 ], [ null, %388 ]
  store i64 %397, i64* %23, align 8, !tbaa !6
  store i8 35, i8* %24, align 8, !tbaa !2
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %428 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %428, i64* %19, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %392, %struct.TValue* nonnull %4, %union.StackValue* %3964, %struct.TValue* %427) #12
  %429 = load i32, i32* %21, align 8, !tbaa !6
  br label %430

; <label>:430:                                    ; preds = %426, %420
  %431 = phi i32 [ %3959, %420 ], [ %429, %426 ]
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %437, label %433

; <label>:433:                                    ; preds = %430
  %434 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %435 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %436 = getelementptr inbounds %union.StackValue, %union.StackValue* %435, i64 1
  br label %437

; <label>:437:                                    ; preds = %430, %433
  %438 = phi i32 [ %434, %433 ], [ 0, %430 ]
  %439 = phi %union.StackValue* [ %436, %433 ], [ %3958, %430 ]
  %440 = getelementptr inbounds i32, i32* %3960, i64 1
  %441 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:442:                                    ; preds = %3956
  %443 = lshr i32 %3957, 16
  %444 = and i32 %443, 255
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %445, i32 0
  %447 = lshr i32 %3957, 24
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %448
  %450 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %445, i32 0, i32 1
  %451 = load i8, i8* %450, align 8, !tbaa !2
  %452 = icmp eq i8 %451, 69
  br i1 %452, label %453, label %469

; <label>:453:                                    ; preds = %442
  %454 = bitcast %struct.TValue* %449 to %struct.TString**
  %455 = load %struct.TString*, %struct.TString** %454, align 8, !tbaa !6
  %456 = bitcast %struct.TValue* %446 to %struct.Table**
  %457 = load %struct.Table*, %struct.Table** %456, align 8, !tbaa !6
  %458 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %457, %struct.TString* %455) #11
  %459 = getelementptr inbounds %struct.TValue, %struct.TValue* %458, i64 0, i32 1
  %460 = load i8, i8* %459, align 8, !tbaa !2
  %461 = and i8 %460, 15
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %469, label %463

; <label>:463:                                    ; preds = %453
  %464 = bitcast %struct.TValue* %458 to i64*
  %465 = bitcast %union.StackValue* %3964 to i64*
  %466 = load i64, i64* %464, align 8
  store i64 %466, i64* %465, align 8
  %467 = load i8, i8* %459, align 8, !tbaa !2
  %468 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %467, i8* %468, align 8, !tbaa !2
  br label %473

; <label>:469:                                    ; preds = %442, %453
  %470 = phi %struct.TValue* [ %458, %453 ], [ null, %442 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %471 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %471, i64* %19, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %446, %struct.TValue* %449, %union.StackValue* %3964, %struct.TValue* %470) #12
  %472 = load i32, i32* %21, align 8, !tbaa !6
  br label %473

; <label>:473:                                    ; preds = %469, %463
  %474 = phi i32 [ %3959, %463 ], [ %472, %469 ]
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %480, label %476

; <label>:476:                                    ; preds = %473
  %477 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %478 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %479 = getelementptr inbounds %union.StackValue, %union.StackValue* %478, i64 1
  br label %480

; <label>:480:                                    ; preds = %473, %476
  %481 = phi i32 [ %477, %476 ], [ 0, %473 ]
  %482 = phi %union.StackValue* [ %479, %476 ], [ %3958, %473 ]
  %483 = getelementptr inbounds i32, i32* %3960, i64 1
  %484 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:485:                                    ; preds = %3956
  %486 = lshr i32 %3957, 7
  %487 = and i32 %486, 255
  %488 = zext i32 %487 to i64
  %489 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 6, i64 %488
  %490 = load %struct.UpVal*, %struct.UpVal** %489, align 8, !tbaa !21
  %491 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %490, i64 0, i32 3
  %492 = load %struct.TValue*, %struct.TValue** %491, align 8, !tbaa !39
  %493 = lshr i32 %3957, 16
  %494 = and i32 %493, 255
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %495
  %497 = trunc i32 %3957 to i16
  %498 = icmp slt i16 %497, 0
  %499 = lshr i32 %3957, 24
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %500
  %502 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %500, i32 0
  %503 = select i1 %498, %struct.TValue* %501, %struct.TValue* %502
  %504 = getelementptr inbounds %struct.TValue, %struct.TValue* %492, i64 0, i32 1
  %505 = load i8, i8* %504, align 8, !tbaa !2
  %506 = icmp eq i8 %505, 69
  br i1 %506, label %507, label %541

; <label>:507:                                    ; preds = %485
  %508 = bitcast %struct.TValue* %496 to %struct.TString**
  %509 = load %struct.TString*, %struct.TString** %508, align 8, !tbaa !6
  %510 = getelementptr inbounds %struct.TValue, %struct.TValue* %492, i64 0, i32 0, i32 0
  %511 = bitcast %struct.TValue* %492 to %struct.Table**
  %512 = load %struct.Table*, %struct.Table** %511, align 8, !tbaa !6
  %513 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %512, %struct.TString* %509) #11
  %514 = getelementptr inbounds %struct.TValue, %struct.TValue* %513, i64 0, i32 1
  %515 = load i8, i8* %514, align 8, !tbaa !2
  %516 = and i8 %515, 15
  %517 = icmp eq i8 %516, 0
  br i1 %517, label %541, label %518

; <label>:518:                                    ; preds = %507
  %519 = bitcast %struct.TValue* %503 to i64*
  %520 = bitcast %struct.TValue* %513 to i64*
  %521 = load i64, i64* %519, align 8
  store i64 %521, i64* %520, align 8
  %522 = getelementptr inbounds %struct.TValue, %struct.TValue* %503, i64 0, i32 1
  %523 = load i8, i8* %522, align 8, !tbaa !2
  store i8 %523, i8* %514, align 8, !tbaa !2
  %524 = load i8, i8* %522, align 8, !tbaa !2
  %525 = and i8 %524, 64
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %545, label %527

; <label>:527:                                    ; preds = %518
  %528 = load %struct.GCObject*, %struct.GCObject** %510, align 8, !tbaa !6
  %529 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %528, i64 0, i32 2
  %530 = load i8, i8* %529, align 1, !tbaa !23
  %531 = and i8 %530, 32
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %545, label %533

; <label>:533:                                    ; preds = %527
  %534 = getelementptr inbounds %struct.TValue, %struct.TValue* %503, i64 0, i32 0, i32 0
  %535 = load %struct.GCObject*, %struct.GCObject** %534, align 8, !tbaa !6
  %536 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %535, i64 0, i32 2
  %537 = load i8, i8* %536, align 1, !tbaa !23
  %538 = and i8 %537, 24
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %545, label %540

; <label>:540:                                    ; preds = %533
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %528) #11
  br label %545

; <label>:541:                                    ; preds = %485, %507
  %542 = phi %struct.TValue* [ %513, %507 ], [ null, %485 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %543 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %543, i64* %19, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %492, %struct.TValue* %496, %struct.TValue* %503, %struct.TValue* %542) #12
  %544 = load i32, i32* %21, align 8, !tbaa !6
  br label %545

; <label>:545:                                    ; preds = %533, %527, %518, %540, %541
  %546 = phi i32 [ %3959, %540 ], [ %3959, %533 ], [ %3959, %527 ], [ %3959, %518 ], [ %544, %541 ]
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %552, label %548

; <label>:548:                                    ; preds = %545
  %549 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %550 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %551 = getelementptr inbounds %union.StackValue, %union.StackValue* %550, i64 1
  br label %552

; <label>:552:                                    ; preds = %545, %548
  %553 = phi i32 [ %549, %548 ], [ 0, %545 ]
  %554 = phi %union.StackValue* [ %551, %548 ], [ %3958, %545 ]
  %555 = getelementptr inbounds i32, i32* %3960, i64 1
  %556 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:557:                                    ; preds = %3956
  %558 = lshr i32 %3957, 16
  %559 = and i32 %558, 255
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %560, i32 0
  %562 = trunc i32 %3957 to i16
  %563 = icmp slt i16 %562, 0
  %564 = lshr i32 %3957, 24
  %565 = zext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %565
  %567 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %565, i32 0
  %568 = select i1 %563, %struct.TValue* %566, %struct.TValue* %567
  %569 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %560, i32 0, i32 1
  %570 = load i8, i8* %569, align 8, !tbaa !2
  %571 = icmp eq i8 %570, 35
  br i1 %571, label %572, label %598

; <label>:572:                                    ; preds = %557
  %573 = bitcast %struct.TValue* %561 to i64*
  %574 = load i64, i64* %573, align 8, !tbaa !6
  %575 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %576 = load i8, i8* %575, align 8, !tbaa !6
  %577 = icmp eq i8 %576, 69
  br i1 %577, label %578, label %636

; <label>:578:                                    ; preds = %572
  %579 = add i64 %574, -1
  %580 = bitcast %union.StackValue* %3964 to %struct.Table**
  %581 = load %struct.Table*, %struct.Table** %580, align 8, !tbaa !6
  %582 = getelementptr inbounds %struct.Table, %struct.Table* %581, i64 0, i32 5
  %583 = load i32, i32* %582, align 4, !tbaa !6
  %584 = zext i32 %583 to i64
  %585 = icmp ult i64 %579, %584
  br i1 %585, label %586, label %590

; <label>:586:                                    ; preds = %578
  %587 = getelementptr inbounds %struct.Table, %struct.Table* %581, i64 0, i32 6
  %588 = load %struct.TValue*, %struct.TValue** %587, align 8, !tbaa !6
  %589 = getelementptr inbounds %struct.TValue, %struct.TValue* %588, i64 %579
  br label %592

; <label>:590:                                    ; preds = %578
  %591 = call %struct.TValue* @luaH_getint(%struct.Table* %581, i64 %574) #11
  br label %592

; <label>:592:                                    ; preds = %586, %590
  %593 = phi %struct.TValue* [ %589, %586 ], [ %591, %590 ]
  %594 = getelementptr inbounds %struct.TValue, %struct.TValue* %593, i64 0, i32 1
  %595 = load i8, i8* %594, align 8, !tbaa !2
  %596 = and i8 %595, 15
  %597 = icmp eq i8 %596, 0
  br i1 %597, label %636, label %610

; <label>:598:                                    ; preds = %557
  %599 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %600 = load i8, i8* %599, align 8, !tbaa !6
  %601 = icmp eq i8 %600, 69
  br i1 %601, label %602, label %636

; <label>:602:                                    ; preds = %598
  %603 = bitcast %union.StackValue* %3964 to %struct.Table**
  %604 = load %struct.Table*, %struct.Table** %603, align 8, !tbaa !6
  %605 = call %struct.TValue* @luaH_get(%struct.Table* %604, %struct.TValue* %561) #11
  %606 = getelementptr inbounds %struct.TValue, %struct.TValue* %605, i64 0, i32 1
  %607 = load i8, i8* %606, align 8, !tbaa !2
  %608 = and i8 %607, 15
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %636, label %610

; <label>:610:                                    ; preds = %592, %602
  %611 = phi i8* [ %594, %592 ], [ %606, %602 ]
  %612 = phi %struct.TValue* [ %593, %592 ], [ %605, %602 ]
  %613 = bitcast %struct.TValue* %568 to i64*
  %614 = bitcast %struct.TValue* %612 to i64*
  %615 = load i64, i64* %613, align 8
  store i64 %615, i64* %614, align 8
  %616 = getelementptr inbounds %struct.TValue, %struct.TValue* %568, i64 0, i32 1
  %617 = load i8, i8* %616, align 8, !tbaa !2
  store i8 %617, i8* %611, align 8, !tbaa !2
  %618 = load i8, i8* %616, align 8, !tbaa !2
  %619 = and i8 %618, 64
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %641, label %621

; <label>:621:                                    ; preds = %610
  %622 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0, i32 0, i32 0
  %623 = load %struct.GCObject*, %struct.GCObject** %622, align 8, !tbaa !6
  %624 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %623, i64 0, i32 2
  %625 = load i8, i8* %624, align 1, !tbaa !23
  %626 = and i8 %625, 32
  %627 = icmp eq i8 %626, 0
  br i1 %627, label %641, label %628

; <label>:628:                                    ; preds = %621
  %629 = getelementptr inbounds %struct.TValue, %struct.TValue* %568, i64 0, i32 0, i32 0
  %630 = load %struct.GCObject*, %struct.GCObject** %629, align 8, !tbaa !6
  %631 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %630, i64 0, i32 2
  %632 = load i8, i8* %631, align 1, !tbaa !23
  %633 = and i8 %632, 24
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %641, label %635

; <label>:635:                                    ; preds = %628
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %623) #11
  br label %641

; <label>:636:                                    ; preds = %572, %598, %592, %602
  %637 = phi %struct.TValue* [ %593, %592 ], [ %605, %602 ], [ null, %598 ], [ null, %572 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %638 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %638, i64* %19, align 8, !tbaa !25
  %639 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %639, %struct.TValue* %561, %struct.TValue* %568, %struct.TValue* %637) #12
  %640 = load i32, i32* %21, align 8, !tbaa !6
  br label %641

; <label>:641:                                    ; preds = %628, %621, %610, %635, %636
  %642 = phi i32 [ %3959, %635 ], [ %3959, %628 ], [ %3959, %621 ], [ %3959, %610 ], [ %640, %636 ]
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %648, label %644

; <label>:644:                                    ; preds = %641
  %645 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %646 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %647 = getelementptr inbounds %union.StackValue, %union.StackValue* %646, i64 1
  br label %648

; <label>:648:                                    ; preds = %641, %644
  %649 = phi i32 [ %645, %644 ], [ 0, %641 ]
  %650 = phi %union.StackValue* [ %647, %644 ], [ %3958, %641 ]
  %651 = getelementptr inbounds i32, i32* %3960, i64 1
  %652 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:653:                                    ; preds = %3956
  %654 = lshr i32 %3957, 16
  %655 = and i32 %654, 255
  %656 = trunc i32 %3957 to i16
  %657 = icmp slt i16 %656, 0
  %658 = lshr i32 %3957, 24
  %659 = zext i32 %658 to i64
  %660 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %659
  %661 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %659, i32 0
  %662 = select i1 %657, %struct.TValue* %660, %struct.TValue* %661
  %663 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %664 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %665 = load i8, i8* %664, align 8, !tbaa !6
  %666 = icmp eq i8 %665, 69
  %667 = zext i32 %655 to i64
  br i1 %666, label %668, label %714

; <label>:668:                                    ; preds = %653
  %669 = add nsw i64 %667, -1
  %670 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0, i32 0, i32 0
  %671 = bitcast %union.StackValue* %3964 to %struct.Table**
  %672 = load %struct.Table*, %struct.Table** %671, align 8, !tbaa !6
  %673 = getelementptr inbounds %struct.Table, %struct.Table* %672, i64 0, i32 5
  %674 = load i32, i32* %673, align 4, !tbaa !6
  %675 = zext i32 %674 to i64
  %676 = icmp ult i64 %669, %675
  br i1 %676, label %677, label %683

; <label>:677:                                    ; preds = %668
  %678 = getelementptr inbounds %struct.Table, %struct.Table* %672, i64 0, i32 6
  %679 = load %struct.TValue*, %struct.TValue** %678, align 8, !tbaa !6
  %680 = add nsw i32 %655, -1
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.TValue, %struct.TValue* %679, i64 %681
  br label %685

; <label>:683:                                    ; preds = %668
  %684 = call %struct.TValue* @luaH_getint(%struct.Table* %672, i64 %667) #11
  br label %685

; <label>:685:                                    ; preds = %683, %677
  %686 = phi %struct.TValue* [ %682, %677 ], [ %684, %683 ]
  %687 = getelementptr inbounds %struct.TValue, %struct.TValue* %686, i64 0, i32 1
  %688 = load i8, i8* %687, align 8, !tbaa !2
  %689 = and i8 %688, 15
  %690 = icmp eq i8 %689, 0
  br i1 %690, label %714, label %691

; <label>:691:                                    ; preds = %685
  %692 = bitcast %struct.TValue* %662 to i64*
  %693 = bitcast %struct.TValue* %686 to i64*
  %694 = load i64, i64* %692, align 8
  store i64 %694, i64* %693, align 8
  %695 = getelementptr inbounds %struct.TValue, %struct.TValue* %662, i64 0, i32 1
  %696 = load i8, i8* %695, align 8, !tbaa !2
  store i8 %696, i8* %687, align 8, !tbaa !2
  %697 = load i8, i8* %695, align 8, !tbaa !2
  %698 = and i8 %697, 64
  %699 = icmp eq i8 %698, 0
  br i1 %699, label %718, label %700

; <label>:700:                                    ; preds = %691
  %701 = load %struct.GCObject*, %struct.GCObject** %670, align 8, !tbaa !6
  %702 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %701, i64 0, i32 2
  %703 = load i8, i8* %702, align 1, !tbaa !23
  %704 = and i8 %703, 32
  %705 = icmp eq i8 %704, 0
  br i1 %705, label %718, label %706

; <label>:706:                                    ; preds = %700
  %707 = getelementptr inbounds %struct.TValue, %struct.TValue* %662, i64 0, i32 0, i32 0
  %708 = load %struct.GCObject*, %struct.GCObject** %707, align 8, !tbaa !6
  %709 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %708, i64 0, i32 2
  %710 = load i8, i8* %709, align 1, !tbaa !23
  %711 = and i8 %710, 24
  %712 = icmp eq i8 %711, 0
  br i1 %712, label %718, label %713

; <label>:713:                                    ; preds = %706
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %701) #11
  br label %718

; <label>:714:                                    ; preds = %653, %685
  %715 = phi %struct.TValue* [ %686, %685 ], [ null, %653 ]
  store i64 %667, i64* %25, align 8, !tbaa !6
  store i8 35, i8* %26, align 8, !tbaa !2
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %716 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %716, i64* %19, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %663, %struct.TValue* nonnull %5, %struct.TValue* %662, %struct.TValue* %715) #12
  %717 = load i32, i32* %21, align 8, !tbaa !6
  br label %718

; <label>:718:                                    ; preds = %706, %700, %691, %713, %714
  %719 = phi i32 [ %3959, %713 ], [ %3959, %706 ], [ %3959, %700 ], [ %3959, %691 ], [ %717, %714 ]
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %725, label %721

; <label>:721:                                    ; preds = %718
  %722 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %723 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %724 = getelementptr inbounds %union.StackValue, %union.StackValue* %723, i64 1
  br label %725

; <label>:725:                                    ; preds = %718, %721
  %726 = phi i32 [ %722, %721 ], [ 0, %718 ]
  %727 = phi %union.StackValue* [ %724, %721 ], [ %3958, %718 ]
  %728 = getelementptr inbounds i32, i32* %3960, i64 1
  %729 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:730:                                    ; preds = %3956
  %731 = lshr i32 %3957, 16
  %732 = and i32 %731, 255
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %733
  %735 = trunc i32 %3957 to i16
  %736 = icmp slt i16 %735, 0
  %737 = lshr i32 %3957, 24
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %738
  %740 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %738, i32 0
  %741 = select i1 %736, %struct.TValue* %739, %struct.TValue* %740
  %742 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %743 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %744 = load i8, i8* %743, align 8, !tbaa !6
  %745 = icmp eq i8 %744, 69
  br i1 %745, label %746, label %780

; <label>:746:                                    ; preds = %730
  %747 = bitcast %struct.TValue* %734 to %struct.TString**
  %748 = load %struct.TString*, %struct.TString** %747, align 8, !tbaa !6
  %749 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0, i32 0, i32 0
  %750 = bitcast %union.StackValue* %3964 to %struct.Table**
  %751 = load %struct.Table*, %struct.Table** %750, align 8, !tbaa !6
  %752 = call %struct.TValue* @luaH_getshortstr(%struct.Table* %751, %struct.TString* %748) #11
  %753 = getelementptr inbounds %struct.TValue, %struct.TValue* %752, i64 0, i32 1
  %754 = load i8, i8* %753, align 8, !tbaa !2
  %755 = and i8 %754, 15
  %756 = icmp eq i8 %755, 0
  br i1 %756, label %780, label %757

; <label>:757:                                    ; preds = %746
  %758 = bitcast %struct.TValue* %741 to i64*
  %759 = bitcast %struct.TValue* %752 to i64*
  %760 = load i64, i64* %758, align 8
  store i64 %760, i64* %759, align 8
  %761 = getelementptr inbounds %struct.TValue, %struct.TValue* %741, i64 0, i32 1
  %762 = load i8, i8* %761, align 8, !tbaa !2
  store i8 %762, i8* %753, align 8, !tbaa !2
  %763 = load i8, i8* %761, align 8, !tbaa !2
  %764 = and i8 %763, 64
  %765 = icmp eq i8 %764, 0
  br i1 %765, label %784, label %766

; <label>:766:                                    ; preds = %757
  %767 = load %struct.GCObject*, %struct.GCObject** %749, align 8, !tbaa !6
  %768 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %767, i64 0, i32 2
  %769 = load i8, i8* %768, align 1, !tbaa !23
  %770 = and i8 %769, 32
  %771 = icmp eq i8 %770, 0
  br i1 %771, label %784, label %772

; <label>:772:                                    ; preds = %766
  %773 = getelementptr inbounds %struct.TValue, %struct.TValue* %741, i64 0, i32 0, i32 0
  %774 = load %struct.GCObject*, %struct.GCObject** %773, align 8, !tbaa !6
  %775 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %774, i64 0, i32 2
  %776 = load i8, i8* %775, align 1, !tbaa !23
  %777 = and i8 %776, 24
  %778 = icmp eq i8 %777, 0
  br i1 %778, label %784, label %779

; <label>:779:                                    ; preds = %772
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* %767) #11
  br label %784

; <label>:780:                                    ; preds = %730, %746
  %781 = phi %struct.TValue* [ %752, %746 ], [ null, %730 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %782 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %782, i64* %19, align 8, !tbaa !25
  call void @luaV_finishset(%struct.lua_State* %0, %struct.TValue* %742, %struct.TValue* %734, %struct.TValue* %741, %struct.TValue* %781) #12
  %783 = load i32, i32* %21, align 8, !tbaa !6
  br label %784

; <label>:784:                                    ; preds = %772, %766, %757, %779, %780
  %785 = phi i32 [ %3959, %779 ], [ %3959, %772 ], [ %3959, %766 ], [ %3959, %757 ], [ %783, %780 ]
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %791, label %787

; <label>:787:                                    ; preds = %784
  %788 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %789 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %790 = getelementptr inbounds %union.StackValue, %union.StackValue* %789, i64 1
  br label %791

; <label>:791:                                    ; preds = %784, %787
  %792 = phi i32 [ %788, %787 ], [ 0, %784 ]
  %793 = phi %union.StackValue* [ %790, %787 ], [ %3958, %784 ]
  %794 = getelementptr inbounds i32, i32* %3960, i64 1
  %795 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:796:                                    ; preds = %3956
  %797 = lshr i32 %3957, 16
  %798 = and i32 %797, 255
  %799 = lshr i32 %3957, 24
  %800 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %800, i64* %19, align 8, !tbaa !25
  %801 = call %struct.Table* @luaH_new(%struct.lua_State* %0) #11
  %802 = bitcast %union.StackValue* %3964 to %struct.Table**
  store %struct.Table* %801, %struct.Table** %802, align 8, !tbaa !6
  %803 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 69, i8* %803, align 8, !tbaa !2
  %804 = or i32 %798, %799
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %809, label %806

; <label>:806:                                    ; preds = %796
  %807 = call i32 @luaO_fb2int(i32 %798) #11
  %808 = call i32 @luaO_fb2int(i32 %799) #11
  call void @luaH_resize(%struct.lua_State* nonnull %0, %struct.Table* %801, i32 %807, i32 %808) #11
  br label %809

; <label>:809:                                    ; preds = %796, %806
  %810 = load %struct.global_State*, %struct.global_State** %22, align 8, !tbaa !16
  %811 = getelementptr inbounds %struct.global_State, %struct.global_State* %810, i64 0, i32 3
  %812 = load i64, i64* %811, align 8, !tbaa !43
  %813 = icmp sgt i64 %812, 0
  br i1 %813, label %814, label %817

; <label>:814:                                    ; preds = %809
  %815 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1
  store %union.StackValue* %815, %union.StackValue** %18, align 8, !tbaa !25
  call void @luaC_step(%struct.lua_State* nonnull %0) #11
  %816 = load i32, i32* %21, align 8, !tbaa !6
  br label %817

; <label>:817:                                    ; preds = %814, %809
  %818 = phi i32 [ %816, %814 ], [ %3959, %809 ]
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %824, label %820

; <label>:820:                                    ; preds = %817
  %821 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3960) #11
  %822 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %823 = getelementptr inbounds %union.StackValue, %union.StackValue* %822, i64 1
  br label %824

; <label>:824:                                    ; preds = %817, %820
  %825 = phi i32 [ %821, %820 ], [ 0, %817 ]
  %826 = phi %union.StackValue* [ %823, %820 ], [ %3958, %817 ]
  %827 = getelementptr inbounds i32, i32* %3960, i64 1
  %828 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:829:                                    ; preds = %3956
  %830 = lshr i32 %3957, 16
  %831 = and i32 %830, 255
  %832 = zext i32 %831 to i64
  %833 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %832, i32 0
  %834 = trunc i32 %3957 to i16
  %835 = icmp slt i16 %834, 0
  %836 = lshr i32 %3957, 24
  %837 = zext i32 %836 to i64
  %838 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %837
  %839 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %837, i32 0
  %840 = select i1 %835, %struct.TValue* %838, %struct.TValue* %839
  %841 = bitcast %struct.TValue* %840 to %struct.TString**
  %842 = load %struct.TString*, %struct.TString** %841, align 8, !tbaa !6
  %843 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1, i32 0
  %844 = bitcast %struct.TValue* %833 to i64*
  %845 = bitcast %struct.TValue* %843 to i64*
  %846 = load i64, i64* %844, align 8
  store i64 %846, i64* %845, align 8
  %847 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %832, i32 0, i32 1
  %848 = load i8, i8* %847, align 8, !tbaa !2
  %849 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1, i32 0, i32 1
  store i8 %848, i8* %849, align 8, !tbaa !2
  %850 = load i8, i8* %847, align 8, !tbaa !2
  %851 = icmp eq i8 %850, 69
  br i1 %851, label %852, label %866

; <label>:852:                                    ; preds = %829
  %853 = bitcast %struct.TValue* %833 to %struct.Table**
  %854 = load %struct.Table*, %struct.Table** %853, align 8, !tbaa !6
  %855 = call %struct.TValue* @luaH_getstr(%struct.Table* %854, %struct.TString* %842) #11
  %856 = getelementptr inbounds %struct.TValue, %struct.TValue* %855, i64 0, i32 1
  %857 = load i8, i8* %856, align 8, !tbaa !2
  %858 = and i8 %857, 15
  %859 = icmp eq i8 %858, 0
  br i1 %859, label %866, label %860

; <label>:860:                                    ; preds = %852
  %861 = bitcast %struct.TValue* %855 to i64*
  %862 = bitcast %union.StackValue* %3964 to i64*
  %863 = load i64, i64* %861, align 8
  store i64 %863, i64* %862, align 8
  %864 = load i8, i8* %856, align 8, !tbaa !2
  %865 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %864, i8* %865, align 8, !tbaa !2
  br label %870

; <label>:866:                                    ; preds = %829, %852
  %867 = phi %struct.TValue* [ %855, %852 ], [ null, %829 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %868 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %868, i64* %19, align 8, !tbaa !25
  call void @luaV_finishget(%struct.lua_State* %0, %struct.TValue* %833, %struct.TValue* %840, %union.StackValue* nonnull %3964, %struct.TValue* %867) #12
  %869 = load i32, i32* %21, align 8, !tbaa !6
  br label %870

; <label>:870:                                    ; preds = %866, %860
  %871 = phi i32 [ %3959, %860 ], [ %869, %866 ]
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %877, label %873

; <label>:873:                                    ; preds = %870
  %874 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %875 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %876 = getelementptr inbounds %union.StackValue, %union.StackValue* %875, i64 1
  br label %877

; <label>:877:                                    ; preds = %870, %873
  %878 = phi i32 [ %874, %873 ], [ 0, %870 ]
  %879 = phi %union.StackValue* [ %876, %873 ], [ %3958, %870 ]
  %880 = getelementptr inbounds i32, i32* %3960, i64 1
  %881 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:882:                                    ; preds = %3956
  %883 = lshr i32 %3957, 16
  %884 = and i32 %883, 255
  %885 = zext i32 %884 to i64
  %886 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %885, i32 0
  %887 = lshr i32 %3957, 24
  %888 = add nsw i32 %887, -127
  %889 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %885, i32 0, i32 1
  %890 = load i8, i8* %889, align 8, !tbaa !2
  switch i8 %890, label %905 [
    i8 35, label %891
    i8 19, label %898
  ]

; <label>:891:                                    ; preds = %882
  %892 = bitcast %struct.TValue* %886 to i64*
  %893 = load i64, i64* %892, align 8, !tbaa !6
  %894 = sext i32 %888 to i64
  %895 = add i64 %893, %894
  %896 = bitcast %union.StackValue* %3964 to i64*
  store i64 %895, i64* %896, align 8, !tbaa !6
  %897 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %897, align 8, !tbaa !2
  br label %911

; <label>:898:                                    ; preds = %882
  %899 = bitcast %struct.TValue* %886 to double*
  %900 = load double, double* %899, align 8, !tbaa !6
  %901 = sitofp i32 %888 to double
  %902 = fadd double %900, %901
  %903 = bitcast %union.StackValue* %3964 to double*
  store double %902, double* %903, align 8, !tbaa !6
  %904 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %904, align 8, !tbaa !2
  br label %911

; <label>:905:                                    ; preds = %882
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %906 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %906, i64* %19, align 8, !tbaa !25
  %907 = sext i32 %888 to i64
  %908 = lshr i32 %3957, 15
  %909 = and i32 %908, 1
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %886, i64 %907, i32 %909, %union.StackValue* %3964, i32 6) #11
  %910 = load i32, i32* %21, align 8, !tbaa !6
  br label %911

; <label>:911:                                    ; preds = %898, %905, %891
  %912 = phi i32 [ %3959, %891 ], [ %3959, %898 ], [ %910, %905 ]
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %918, label %914

; <label>:914:                                    ; preds = %911
  %915 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %916 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %917 = getelementptr inbounds %union.StackValue, %union.StackValue* %916, i64 1
  br label %918

; <label>:918:                                    ; preds = %911, %914
  %919 = phi i32 [ %915, %914 ], [ 0, %911 ]
  %920 = phi %union.StackValue* [ %917, %914 ], [ %3958, %911 ]
  %921 = getelementptr inbounds i32, i32* %3960, i64 1
  %922 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:923:                                    ; preds = %3956
  %924 = lshr i32 %3957, 16
  %925 = and i32 %924, 255
  %926 = zext i32 %925 to i64
  %927 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %926, i32 0
  %928 = lshr i32 %3957, 24
  %929 = add nsw i32 %928, -127
  %930 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %926, i32 0, i32 1
  %931 = load i8, i8* %930, align 8, !tbaa !2
  switch i8 %931, label %946 [
    i8 35, label %932
    i8 19, label %939
  ]

; <label>:932:                                    ; preds = %923
  %933 = bitcast %struct.TValue* %927 to i64*
  %934 = load i64, i64* %933, align 8, !tbaa !6
  %935 = sext i32 %929 to i64
  %936 = sub i64 %934, %935
  %937 = bitcast %union.StackValue* %3964 to i64*
  store i64 %936, i64* %937, align 8, !tbaa !6
  %938 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %938, align 8, !tbaa !2
  br label %950

; <label>:939:                                    ; preds = %923
  %940 = bitcast %struct.TValue* %927 to double*
  %941 = load double, double* %940, align 8, !tbaa !6
  %942 = sitofp i32 %929 to double
  %943 = fsub double %941, %942
  %944 = bitcast %union.StackValue* %3964 to double*
  store double %943, double* %944, align 8, !tbaa !6
  %945 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %945, align 8, !tbaa !2
  br label %950

; <label>:946:                                    ; preds = %923
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %947 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %947, i64* %19, align 8, !tbaa !25
  %948 = sext i32 %929 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %927, i64 %948, i32 0, %union.StackValue* %3964, i32 7) #11
  %949 = load i32, i32* %21, align 8, !tbaa !6
  br label %950

; <label>:950:                                    ; preds = %939, %946, %932
  %951 = phi i32 [ %3959, %932 ], [ %3959, %939 ], [ %949, %946 ]
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %957, label %953

; <label>:953:                                    ; preds = %950
  %954 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %955 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %956 = getelementptr inbounds %union.StackValue, %union.StackValue* %955, i64 1
  br label %957

; <label>:957:                                    ; preds = %950, %953
  %958 = phi i32 [ %954, %953 ], [ 0, %950 ]
  %959 = phi %union.StackValue* [ %956, %953 ], [ %3958, %950 ]
  %960 = getelementptr inbounds i32, i32* %3960, i64 1
  %961 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:962:                                    ; preds = %3956
  %963 = lshr i32 %3957, 16
  %964 = and i32 %963, 255
  %965 = zext i32 %964 to i64
  %966 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %965, i32 0
  %967 = lshr i32 %3957, 24
  %968 = add nsw i32 %967, -127
  %969 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %965, i32 0, i32 1
  %970 = load i8, i8* %969, align 8, !tbaa !2
  switch i8 %970, label %985 [
    i8 35, label %971
    i8 19, label %978
  ]

; <label>:971:                                    ; preds = %962
  %972 = bitcast %struct.TValue* %966 to i64*
  %973 = load i64, i64* %972, align 8, !tbaa !6
  %974 = sext i32 %968 to i64
  %975 = mul i64 %973, %974
  %976 = bitcast %union.StackValue* %3964 to i64*
  store i64 %975, i64* %976, align 8, !tbaa !6
  %977 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %977, align 8, !tbaa !2
  br label %991

; <label>:978:                                    ; preds = %962
  %979 = bitcast %struct.TValue* %966 to double*
  %980 = load double, double* %979, align 8, !tbaa !6
  %981 = sitofp i32 %968 to double
  %982 = fmul double %980, %981
  %983 = bitcast %union.StackValue* %3964 to double*
  store double %982, double* %983, align 8, !tbaa !6
  %984 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %984, align 8, !tbaa !2
  br label %991

; <label>:985:                                    ; preds = %962
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %986 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %986, i64* %19, align 8, !tbaa !25
  %987 = sext i32 %968 to i64
  %988 = lshr i32 %3957, 15
  %989 = and i32 %988, 1
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %966, i64 %987, i32 %989, %union.StackValue* %3964, i32 8) #11
  %990 = load i32, i32* %21, align 8, !tbaa !6
  br label %991

; <label>:991:                                    ; preds = %978, %985, %971
  %992 = phi i32 [ %3959, %971 ], [ %3959, %978 ], [ %990, %985 ]
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %998, label %994

; <label>:994:                                    ; preds = %991
  %995 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %996 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %997 = getelementptr inbounds %union.StackValue, %union.StackValue* %996, i64 1
  br label %998

; <label>:998:                                    ; preds = %991, %994
  %999 = phi i32 [ %995, %994 ], [ 0, %991 ]
  %1000 = phi %union.StackValue* [ %997, %994 ], [ %3958, %991 ]
  %1001 = getelementptr inbounds i32, i32* %3960, i64 1
  %1002 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1003:                                   ; preds = %3956
  %1004 = lshr i32 %3957, 16
  %1005 = and i32 %1004, 255
  %1006 = zext i32 %1005 to i64
  %1007 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1006, i32 0
  %1008 = lshr i32 %3957, 24
  %1009 = add nsw i32 %1008, -127
  %1010 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1006, i32 0, i32 1
  %1011 = load i8, i8* %1010, align 8, !tbaa !2
  switch i8 %1011, label %1037 [
    i8 35, label %1012
    i8 19, label %1019
  ]

; <label>:1012:                                   ; preds = %1003
  %1013 = bitcast %struct.TValue* %1007 to i64*
  %1014 = load i64, i64* %1013, align 8, !tbaa !6
  %1015 = sext i32 %1009 to i64
  %1016 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %1014, i64 %1015) #12
  %1017 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1016, i64* %1017, align 8, !tbaa !6
  %1018 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1018, align 8, !tbaa !2
  br label %1041

; <label>:1019:                                   ; preds = %1003
  %1020 = bitcast %struct.TValue* %1007 to double*
  %1021 = load double, double* %1020, align 8, !tbaa !6
  %1022 = sitofp i32 %1009 to double
  %1023 = call double @fmod(double %1021, double %1022) #11
  %1024 = fcmp ogt double %1023, 0.000000e+00
  br i1 %1024, label %1025, label %1027

; <label>:1025:                                   ; preds = %1019
  %1026 = icmp ult i32 %3957, 2130706432
  br i1 %1026, label %1031, label %1033

; <label>:1027:                                   ; preds = %1019
  %1028 = fcmp olt double %1023, 0.000000e+00
  %1029 = icmp slt i32 %3957, 0
  %1030 = and i1 %1029, %1028
  br i1 %1030, label %1031, label %1033

; <label>:1031:                                   ; preds = %1027, %1025
  %1032 = fadd double %1023, %1022
  br label %1033

; <label>:1033:                                   ; preds = %1025, %1027, %1031
  %1034 = phi double [ %1032, %1031 ], [ %1023, %1025 ], [ %1023, %1027 ]
  %1035 = bitcast %union.StackValue* %3964 to double*
  store double %1034, double* %1035, align 8, !tbaa !6
  %1036 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1036, align 8, !tbaa !2
  br label %1041

; <label>:1037:                                   ; preds = %1003
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1038 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1038, i64* %19, align 8, !tbaa !25
  %1039 = sext i32 %1009 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1007, i64 %1039, i32 0, %union.StackValue* %3964, i32 9) #11
  %1040 = load i32, i32* %21, align 8, !tbaa !6
  br label %1041

; <label>:1041:                                   ; preds = %1033, %1037, %1012
  %1042 = phi i32 [ %3959, %1012 ], [ %3959, %1033 ], [ %1040, %1037 ]
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1048, label %1044

; <label>:1044:                                   ; preds = %1041
  %1045 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1046 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1047 = getelementptr inbounds %union.StackValue, %union.StackValue* %1046, i64 1
  br label %1048

; <label>:1048:                                   ; preds = %1041, %1044
  %1049 = phi i32 [ %1045, %1044 ], [ 0, %1041 ]
  %1050 = phi %union.StackValue* [ %1047, %1044 ], [ %3958, %1041 ]
  %1051 = getelementptr inbounds i32, i32* %3960, i64 1
  %1052 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1053:                                   ; preds = %3956
  %1054 = lshr i32 %3957, 16
  %1055 = and i32 %1054, 255
  %1056 = zext i32 %1055 to i64
  %1057 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1056, i32 0
  %1058 = lshr i32 %3957, 24
  %1059 = add nsw i32 %1058, -127
  %1060 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1056, i32 0, i32 1
  %1061 = load i8, i8* %1060, align 8, !tbaa !2
  switch i8 %1061, label %1075 [
    i8 19, label %1062
    i8 35, label %1065
  ]

; <label>:1062:                                   ; preds = %1053
  %1063 = bitcast %struct.TValue* %1057 to double*
  %1064 = load double, double* %1063, align 8, !tbaa !6
  br label %1069

; <label>:1065:                                   ; preds = %1053
  %1066 = bitcast %struct.TValue* %1057 to i64*
  %1067 = load i64, i64* %1066, align 8, !tbaa !6
  %1068 = sitofp i64 %1067 to double
  br label %1069

; <label>:1069:                                   ; preds = %1062, %1065
  %1070 = phi double [ %1064, %1062 ], [ %1068, %1065 ]
  %1071 = sitofp i32 %1059 to double
  %1072 = call double @pow(double %1070, double %1071) #11
  %1073 = bitcast %union.StackValue* %3964 to double*
  store double %1072, double* %1073, align 8, !tbaa !6
  %1074 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1074, align 8, !tbaa !2
  br label %1079

; <label>:1075:                                   ; preds = %1053
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1076 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1076, i64* %19, align 8, !tbaa !25
  %1077 = sext i32 %1059 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1057, i64 %1077, i32 0, %union.StackValue* %3964, i32 10) #11
  %1078 = load i32, i32* %21, align 8, !tbaa !6
  br label %1079

; <label>:1079:                                   ; preds = %1075, %1069
  %1080 = phi i32 [ %3959, %1069 ], [ %1078, %1075 ]
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1086, label %1082

; <label>:1082:                                   ; preds = %1079
  %1083 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1084 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1085 = getelementptr inbounds %union.StackValue, %union.StackValue* %1084, i64 1
  br label %1086

; <label>:1086:                                   ; preds = %1079, %1082
  %1087 = phi i32 [ %1083, %1082 ], [ 0, %1079 ]
  %1088 = phi %union.StackValue* [ %1085, %1082 ], [ %3958, %1079 ]
  %1089 = getelementptr inbounds i32, i32* %3960, i64 1
  %1090 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1091:                                   ; preds = %3956
  %1092 = lshr i32 %3957, 16
  %1093 = and i32 %1092, 255
  %1094 = zext i32 %1093 to i64
  %1095 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1094, i32 0
  %1096 = lshr i32 %3957, 24
  %1097 = add nsw i32 %1096, -127
  %1098 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1094, i32 0, i32 1
  %1099 = load i8, i8* %1098, align 8, !tbaa !2
  switch i8 %1099, label %1113 [
    i8 19, label %1100
    i8 35, label %1103
  ]

; <label>:1100:                                   ; preds = %1091
  %1101 = bitcast %struct.TValue* %1095 to double*
  %1102 = load double, double* %1101, align 8, !tbaa !6
  br label %1107

; <label>:1103:                                   ; preds = %1091
  %1104 = bitcast %struct.TValue* %1095 to i64*
  %1105 = load i64, i64* %1104, align 8, !tbaa !6
  %1106 = sitofp i64 %1105 to double
  br label %1107

; <label>:1107:                                   ; preds = %1100, %1103
  %1108 = phi double [ %1102, %1100 ], [ %1106, %1103 ]
  %1109 = sitofp i32 %1097 to double
  %1110 = fdiv double %1108, %1109
  %1111 = bitcast %union.StackValue* %3964 to double*
  store double %1110, double* %1111, align 8, !tbaa !6
  %1112 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1112, align 8, !tbaa !2
  br label %1117

; <label>:1113:                                   ; preds = %1091
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1114 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1114, i64* %19, align 8, !tbaa !25
  %1115 = sext i32 %1097 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1095, i64 %1115, i32 0, %union.StackValue* %3964, i32 11) #11
  %1116 = load i32, i32* %21, align 8, !tbaa !6
  br label %1117

; <label>:1117:                                   ; preds = %1113, %1107
  %1118 = phi i32 [ %3959, %1107 ], [ %1116, %1113 ]
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1124, label %1120

; <label>:1120:                                   ; preds = %1117
  %1121 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1122 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1123 = getelementptr inbounds %union.StackValue, %union.StackValue* %1122, i64 1
  br label %1124

; <label>:1124:                                   ; preds = %1117, %1120
  %1125 = phi i32 [ %1121, %1120 ], [ 0, %1117 ]
  %1126 = phi %union.StackValue* [ %1123, %1120 ], [ %3958, %1117 ]
  %1127 = getelementptr inbounds i32, i32* %3960, i64 1
  %1128 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1129:                                   ; preds = %3956
  %1130 = lshr i32 %3957, 16
  %1131 = and i32 %1130, 255
  %1132 = zext i32 %1131 to i64
  %1133 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1132, i32 0
  %1134 = lshr i32 %3957, 24
  %1135 = add nsw i32 %1134, -127
  %1136 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1132, i32 0, i32 1
  %1137 = load i8, i8* %1136, align 8, !tbaa !2
  switch i8 %1137, label %1153 [
    i8 35, label %1138
    i8 19, label %1145
  ]

; <label>:1138:                                   ; preds = %1129
  %1139 = bitcast %struct.TValue* %1133 to i64*
  %1140 = load i64, i64* %1139, align 8, !tbaa !6
  %1141 = sext i32 %1135 to i64
  %1142 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %1140, i64 %1141) #12
  %1143 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1142, i64* %1143, align 8, !tbaa !6
  %1144 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1144, align 8, !tbaa !2
  br label %1157

; <label>:1145:                                   ; preds = %1129
  %1146 = bitcast %struct.TValue* %1133 to double*
  %1147 = load double, double* %1146, align 8, !tbaa !6
  %1148 = sitofp i32 %1135 to double
  %1149 = fdiv double %1147, %1148
  %1150 = call double @llvm.floor.f64(double %1149)
  %1151 = bitcast %union.StackValue* %3964 to double*
  store double %1150, double* %1151, align 8, !tbaa !6
  %1152 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1152, align 8, !tbaa !2
  br label %1157

; <label>:1153:                                   ; preds = %1129
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1154 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1154, i64* %19, align 8, !tbaa !25
  %1155 = sext i32 %1135 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* %1133, i64 %1155, i32 0, %union.StackValue* %3964, i32 12) #11
  %1156 = load i32, i32* %21, align 8, !tbaa !6
  br label %1157

; <label>:1157:                                   ; preds = %1145, %1153, %1138
  %1158 = phi i32 [ %3959, %1138 ], [ %3959, %1145 ], [ %1156, %1153 ]
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1164, label %1160

; <label>:1160:                                   ; preds = %1157
  %1161 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1162 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1163 = getelementptr inbounds %union.StackValue, %union.StackValue* %1162, i64 1
  br label %1164

; <label>:1164:                                   ; preds = %1157, %1160
  %1165 = phi i32 [ %1161, %1160 ], [ 0, %1157 ]
  %1166 = phi %union.StackValue* [ %1163, %1160 ], [ %3958, %1157 ]
  %1167 = getelementptr inbounds i32, i32* %3960, i64 1
  %1168 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1169:                                   ; preds = %3956
  %1170 = lshr i32 %3957, 16
  %1171 = and i32 %1170, 255
  %1172 = zext i32 %1171 to i64
  %1173 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1172, i32 0
  %1174 = lshr i32 %3957, 24
  %1175 = zext i32 %1174 to i64
  %1176 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1175
  %1177 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1172, i32 0, i32 1
  %1178 = load i8, i8* %1177, align 8, !tbaa !2
  switch i8 %1178, label %1213 [
    i8 35, label %1179
    i8 19, label %1191
  ]

; <label>:1179:                                   ; preds = %1169
  %1180 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1175, i32 1
  %1181 = load i8, i8* %1180, align 8, !tbaa !2
  %1182 = icmp eq i8 %1181, 35
  %1183 = bitcast %struct.TValue* %1173 to i64*
  %1184 = load i64, i64* %1183, align 8, !tbaa !6
  br i1 %1182, label %1185, label %1196

; <label>:1185:                                   ; preds = %1179
  %1186 = bitcast %struct.TValue* %1176 to i64*
  %1187 = load i64, i64* %1186, align 8, !tbaa !6
  %1188 = add i64 %1187, %1184
  %1189 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1188, i64* %1189, align 8, !tbaa !6
  %1190 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1190, align 8, !tbaa !2
  br label %1218

; <label>:1191:                                   ; preds = %1169
  %1192 = bitcast %struct.TValue* %1173 to double*
  %1193 = load double, double* %1192, align 8, !tbaa !6
  %1194 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1175, i32 1
  %1195 = load i8, i8* %1194, align 8, !tbaa !2
  br label %1198

; <label>:1196:                                   ; preds = %1179
  %1197 = sitofp i64 %1184 to double
  br label %1198

; <label>:1198:                                   ; preds = %1191, %1196
  %1199 = phi i8 [ %1195, %1191 ], [ %1181, %1196 ]
  %1200 = phi double [ %1193, %1191 ], [ %1197, %1196 ]
  switch i8 %1199, label %1213 [
    i8 19, label %1201
    i8 35, label %1204
  ]

; <label>:1201:                                   ; preds = %1198
  %1202 = bitcast %struct.TValue* %1176 to double*
  %1203 = load double, double* %1202, align 8, !tbaa !6
  br label %1208

; <label>:1204:                                   ; preds = %1198
  %1205 = bitcast %struct.TValue* %1176 to i64*
  %1206 = load i64, i64* %1205, align 8, !tbaa !6
  %1207 = sitofp i64 %1206 to double
  br label %1208

; <label>:1208:                                   ; preds = %1201, %1204
  %1209 = phi double [ %1203, %1201 ], [ %1207, %1204 ]
  %1210 = fadd double %1200, %1209
  %1211 = bitcast %union.StackValue* %3964 to double*
  store double %1210, double* %1211, align 8, !tbaa !6
  %1212 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1212, align 8, !tbaa !2
  br label %1218

; <label>:1213:                                   ; preds = %1169, %1198
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1214 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1214, i64* %19, align 8, !tbaa !25
  %1215 = lshr i32 %3957, 15
  %1216 = and i32 %1215, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1173, %struct.TValue* %1176, %union.StackValue* %3964, i32 %1216, i32 6) #11
  %1217 = load i32, i32* %21, align 8, !tbaa !6
  br label %1218

; <label>:1218:                                   ; preds = %1208, %1213, %1185
  %1219 = phi i32 [ %3959, %1185 ], [ %3959, %1208 ], [ %1217, %1213 ]
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1225, label %1221

; <label>:1221:                                   ; preds = %1218
  %1222 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1223 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1224 = getelementptr inbounds %union.StackValue, %union.StackValue* %1223, i64 1
  br label %1225

; <label>:1225:                                   ; preds = %1218, %1221
  %1226 = phi i32 [ %1222, %1221 ], [ 0, %1218 ]
  %1227 = phi %union.StackValue* [ %1224, %1221 ], [ %3958, %1218 ]
  %1228 = getelementptr inbounds i32, i32* %3960, i64 1
  %1229 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1230:                                   ; preds = %3956
  %1231 = lshr i32 %3957, 16
  %1232 = and i32 %1231, 255
  %1233 = zext i32 %1232 to i64
  %1234 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1233, i32 0
  %1235 = lshr i32 %3957, 24
  %1236 = zext i32 %1235 to i64
  %1237 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1236
  %1238 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1233, i32 0, i32 1
  %1239 = load i8, i8* %1238, align 8, !tbaa !2
  switch i8 %1239, label %1274 [
    i8 35, label %1240
    i8 19, label %1252
  ]

; <label>:1240:                                   ; preds = %1230
  %1241 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1236, i32 1
  %1242 = load i8, i8* %1241, align 8, !tbaa !2
  %1243 = icmp eq i8 %1242, 35
  %1244 = bitcast %struct.TValue* %1234 to i64*
  %1245 = load i64, i64* %1244, align 8, !tbaa !6
  br i1 %1243, label %1246, label %1257

; <label>:1246:                                   ; preds = %1240
  %1247 = bitcast %struct.TValue* %1237 to i64*
  %1248 = load i64, i64* %1247, align 8, !tbaa !6
  %1249 = sub i64 %1245, %1248
  %1250 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1249, i64* %1250, align 8, !tbaa !6
  %1251 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1251, align 8, !tbaa !2
  br label %1277

; <label>:1252:                                   ; preds = %1230
  %1253 = bitcast %struct.TValue* %1234 to double*
  %1254 = load double, double* %1253, align 8, !tbaa !6
  %1255 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1236, i32 1
  %1256 = load i8, i8* %1255, align 8, !tbaa !2
  br label %1259

; <label>:1257:                                   ; preds = %1240
  %1258 = sitofp i64 %1245 to double
  br label %1259

; <label>:1259:                                   ; preds = %1252, %1257
  %1260 = phi i8 [ %1256, %1252 ], [ %1242, %1257 ]
  %1261 = phi double [ %1254, %1252 ], [ %1258, %1257 ]
  switch i8 %1260, label %1274 [
    i8 19, label %1262
    i8 35, label %1265
  ]

; <label>:1262:                                   ; preds = %1259
  %1263 = bitcast %struct.TValue* %1237 to double*
  %1264 = load double, double* %1263, align 8, !tbaa !6
  br label %1269

; <label>:1265:                                   ; preds = %1259
  %1266 = bitcast %struct.TValue* %1237 to i64*
  %1267 = load i64, i64* %1266, align 8, !tbaa !6
  %1268 = sitofp i64 %1267 to double
  br label %1269

; <label>:1269:                                   ; preds = %1262, %1265
  %1270 = phi double [ %1264, %1262 ], [ %1268, %1265 ]
  %1271 = fsub double %1261, %1270
  %1272 = bitcast %union.StackValue* %3964 to double*
  store double %1271, double* %1272, align 8, !tbaa !6
  %1273 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1273, align 8, !tbaa !2
  br label %1277

; <label>:1274:                                   ; preds = %1230, %1259
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1275 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1275, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1234, %struct.TValue* %1237, %union.StackValue* %3964, i32 0, i32 7) #11
  %1276 = load i32, i32* %21, align 8, !tbaa !6
  br label %1277

; <label>:1277:                                   ; preds = %1269, %1274, %1246
  %1278 = phi i32 [ %3959, %1246 ], [ %3959, %1269 ], [ %1276, %1274 ]
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1284, label %1280

; <label>:1280:                                   ; preds = %1277
  %1281 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1282 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1283 = getelementptr inbounds %union.StackValue, %union.StackValue* %1282, i64 1
  br label %1284

; <label>:1284:                                   ; preds = %1277, %1280
  %1285 = phi i32 [ %1281, %1280 ], [ 0, %1277 ]
  %1286 = phi %union.StackValue* [ %1283, %1280 ], [ %3958, %1277 ]
  %1287 = getelementptr inbounds i32, i32* %3960, i64 1
  %1288 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1289:                                   ; preds = %3956
  %1290 = lshr i32 %3957, 16
  %1291 = and i32 %1290, 255
  %1292 = zext i32 %1291 to i64
  %1293 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1292, i32 0
  %1294 = lshr i32 %3957, 24
  %1295 = zext i32 %1294 to i64
  %1296 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1295
  %1297 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1292, i32 0, i32 1
  %1298 = load i8, i8* %1297, align 8, !tbaa !2
  switch i8 %1298, label %1333 [
    i8 35, label %1299
    i8 19, label %1311
  ]

; <label>:1299:                                   ; preds = %1289
  %1300 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1295, i32 1
  %1301 = load i8, i8* %1300, align 8, !tbaa !2
  %1302 = icmp eq i8 %1301, 35
  %1303 = bitcast %struct.TValue* %1293 to i64*
  %1304 = load i64, i64* %1303, align 8, !tbaa !6
  br i1 %1302, label %1305, label %1316

; <label>:1305:                                   ; preds = %1299
  %1306 = bitcast %struct.TValue* %1296 to i64*
  %1307 = load i64, i64* %1306, align 8, !tbaa !6
  %1308 = mul i64 %1307, %1304
  %1309 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1308, i64* %1309, align 8, !tbaa !6
  %1310 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1310, align 8, !tbaa !2
  br label %1338

; <label>:1311:                                   ; preds = %1289
  %1312 = bitcast %struct.TValue* %1293 to double*
  %1313 = load double, double* %1312, align 8, !tbaa !6
  %1314 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1295, i32 1
  %1315 = load i8, i8* %1314, align 8, !tbaa !2
  br label %1318

; <label>:1316:                                   ; preds = %1299
  %1317 = sitofp i64 %1304 to double
  br label %1318

; <label>:1318:                                   ; preds = %1311, %1316
  %1319 = phi i8 [ %1315, %1311 ], [ %1301, %1316 ]
  %1320 = phi double [ %1313, %1311 ], [ %1317, %1316 ]
  switch i8 %1319, label %1333 [
    i8 19, label %1321
    i8 35, label %1324
  ]

; <label>:1321:                                   ; preds = %1318
  %1322 = bitcast %struct.TValue* %1296 to double*
  %1323 = load double, double* %1322, align 8, !tbaa !6
  br label %1328

; <label>:1324:                                   ; preds = %1318
  %1325 = bitcast %struct.TValue* %1296 to i64*
  %1326 = load i64, i64* %1325, align 8, !tbaa !6
  %1327 = sitofp i64 %1326 to double
  br label %1328

; <label>:1328:                                   ; preds = %1321, %1324
  %1329 = phi double [ %1323, %1321 ], [ %1327, %1324 ]
  %1330 = fmul double %1320, %1329
  %1331 = bitcast %union.StackValue* %3964 to double*
  store double %1330, double* %1331, align 8, !tbaa !6
  %1332 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1332, align 8, !tbaa !2
  br label %1338

; <label>:1333:                                   ; preds = %1289, %1318
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1334 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1334, i64* %19, align 8, !tbaa !25
  %1335 = lshr i32 %3957, 15
  %1336 = and i32 %1335, 1
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1293, %struct.TValue* %1296, %union.StackValue* %3964, i32 %1336, i32 8) #11
  %1337 = load i32, i32* %21, align 8, !tbaa !6
  br label %1338

; <label>:1338:                                   ; preds = %1328, %1333, %1305
  %1339 = phi i32 [ %3959, %1305 ], [ %3959, %1328 ], [ %1337, %1333 ]
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1345, label %1341

; <label>:1341:                                   ; preds = %1338
  %1342 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1343 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1344 = getelementptr inbounds %union.StackValue, %union.StackValue* %1343, i64 1
  br label %1345

; <label>:1345:                                   ; preds = %1338, %1341
  %1346 = phi i32 [ %1342, %1341 ], [ 0, %1338 ]
  %1347 = phi %union.StackValue* [ %1344, %1341 ], [ %3958, %1338 ]
  %1348 = getelementptr inbounds i32, i32* %3960, i64 1
  %1349 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1350:                                   ; preds = %3956
  %1351 = lshr i32 %3957, 16
  %1352 = and i32 %1351, 255
  %1353 = zext i32 %1352 to i64
  %1354 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1353, i32 0
  %1355 = lshr i32 %3957, 24
  %1356 = zext i32 %1355 to i64
  %1357 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1356
  %1358 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1353, i32 0, i32 1
  %1359 = load i8, i8* %1358, align 8, !tbaa !2
  switch i8 %1359, label %1405 [
    i8 35, label %1360
    i8 19, label %1372
  ]

; <label>:1360:                                   ; preds = %1350
  %1361 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1356, i32 1
  %1362 = load i8, i8* %1361, align 8, !tbaa !2
  %1363 = icmp eq i8 %1362, 35
  %1364 = bitcast %struct.TValue* %1354 to i64*
  %1365 = load i64, i64* %1364, align 8, !tbaa !6
  br i1 %1363, label %1366, label %1377

; <label>:1366:                                   ; preds = %1360
  %1367 = bitcast %struct.TValue* %1357 to i64*
  %1368 = load i64, i64* %1367, align 8, !tbaa !6
  %1369 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %1365, i64 %1368) #12
  %1370 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1369, i64* %1370, align 8, !tbaa !6
  %1371 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1371, align 8, !tbaa !2
  br label %1408

; <label>:1372:                                   ; preds = %1350
  %1373 = bitcast %struct.TValue* %1354 to double*
  %1374 = load double, double* %1373, align 8, !tbaa !6
  %1375 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1356, i32 1
  %1376 = load i8, i8* %1375, align 8, !tbaa !2
  br label %1379

; <label>:1377:                                   ; preds = %1360
  %1378 = sitofp i64 %1365 to double
  br label %1379

; <label>:1379:                                   ; preds = %1372, %1377
  %1380 = phi i8 [ %1376, %1372 ], [ %1362, %1377 ]
  %1381 = phi double [ %1374, %1372 ], [ %1378, %1377 ]
  switch i8 %1380, label %1405 [
    i8 19, label %1382
    i8 35, label %1385
  ]

; <label>:1382:                                   ; preds = %1379
  %1383 = bitcast %struct.TValue* %1357 to double*
  %1384 = load double, double* %1383, align 8, !tbaa !6
  br label %1389

; <label>:1385:                                   ; preds = %1379
  %1386 = bitcast %struct.TValue* %1357 to i64*
  %1387 = load i64, i64* %1386, align 8, !tbaa !6
  %1388 = sitofp i64 %1387 to double
  br label %1389

; <label>:1389:                                   ; preds = %1382, %1385
  %1390 = phi double [ %1384, %1382 ], [ %1388, %1385 ]
  %1391 = call double @fmod(double %1381, double %1390) #11
  %1392 = fcmp ogt double %1391, 0.000000e+00
  br i1 %1392, label %1393, label %1395

; <label>:1393:                                   ; preds = %1389
  %1394 = fcmp olt double %1390, 0.000000e+00
  br i1 %1394, label %1399, label %1401

; <label>:1395:                                   ; preds = %1389
  %1396 = fcmp olt double %1391, 0.000000e+00
  %1397 = fcmp ogt double %1390, 0.000000e+00
  %1398 = and i1 %1397, %1396
  br i1 %1398, label %1399, label %1401

; <label>:1399:                                   ; preds = %1395, %1393
  %1400 = fadd double %1390, %1391
  br label %1401

; <label>:1401:                                   ; preds = %1393, %1395, %1399
  %1402 = phi double [ %1400, %1399 ], [ %1391, %1393 ], [ %1391, %1395 ]
  %1403 = bitcast %union.StackValue* %3964 to double*
  store double %1402, double* %1403, align 8, !tbaa !6
  %1404 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1404, align 8, !tbaa !2
  br label %1408

; <label>:1405:                                   ; preds = %1350, %1379
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1406 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1406, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1354, %struct.TValue* %1357, %union.StackValue* %3964, i32 0, i32 9) #11
  %1407 = load i32, i32* %21, align 8, !tbaa !6
  br label %1408

; <label>:1408:                                   ; preds = %1401, %1405, %1366
  %1409 = phi i32 [ %3959, %1366 ], [ %3959, %1401 ], [ %1407, %1405 ]
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1415, label %1411

; <label>:1411:                                   ; preds = %1408
  %1412 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1413 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1414 = getelementptr inbounds %union.StackValue, %union.StackValue* %1413, i64 1
  br label %1415

; <label>:1415:                                   ; preds = %1408, %1411
  %1416 = phi i32 [ %1412, %1411 ], [ 0, %1408 ]
  %1417 = phi %union.StackValue* [ %1414, %1411 ], [ %3958, %1408 ]
  %1418 = getelementptr inbounds i32, i32* %3960, i64 1
  %1419 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1420:                                   ; preds = %3956
  %1421 = lshr i32 %3957, 16
  %1422 = and i32 %1421, 255
  %1423 = zext i32 %1422 to i64
  %1424 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1423, i32 0
  %1425 = lshr i32 %3957, 24
  %1426 = zext i32 %1425 to i64
  %1427 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1426
  %1428 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1423, i32 0, i32 1
  %1429 = load i8, i8* %1428, align 8, !tbaa !2
  switch i8 %1429, label %1453 [
    i8 19, label %1430
    i8 35, label %1433
  ]

; <label>:1430:                                   ; preds = %1420
  %1431 = bitcast %struct.TValue* %1424 to double*
  %1432 = load double, double* %1431, align 8, !tbaa !6
  br label %1437

; <label>:1433:                                   ; preds = %1420
  %1434 = bitcast %struct.TValue* %1424 to i64*
  %1435 = load i64, i64* %1434, align 8, !tbaa !6
  %1436 = sitofp i64 %1435 to double
  br label %1437

; <label>:1437:                                   ; preds = %1430, %1433
  %1438 = phi double [ %1432, %1430 ], [ %1436, %1433 ]
  %1439 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1426, i32 1
  %1440 = load i8, i8* %1439, align 8, !tbaa !2
  switch i8 %1440, label %1453 [
    i8 19, label %1441
    i8 35, label %1444
  ]

; <label>:1441:                                   ; preds = %1437
  %1442 = bitcast %struct.TValue* %1427 to double*
  %1443 = load double, double* %1442, align 8, !tbaa !6
  br label %1448

; <label>:1444:                                   ; preds = %1437
  %1445 = bitcast %struct.TValue* %1427 to i64*
  %1446 = load i64, i64* %1445, align 8, !tbaa !6
  %1447 = sitofp i64 %1446 to double
  br label %1448

; <label>:1448:                                   ; preds = %1441, %1444
  %1449 = phi double [ %1443, %1441 ], [ %1447, %1444 ]
  %1450 = call double @pow(double %1438, double %1449) #11
  %1451 = bitcast %union.StackValue* %3964 to double*
  store double %1450, double* %1451, align 8, !tbaa !6
  %1452 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1452, align 8, !tbaa !2
  br label %1456

; <label>:1453:                                   ; preds = %1437, %1420
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1454 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1454, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1424, %struct.TValue* %1427, %union.StackValue* %3964, i32 10) #11
  %1455 = load i32, i32* %21, align 8, !tbaa !6
  br label %1456

; <label>:1456:                                   ; preds = %1453, %1448
  %1457 = phi i32 [ %3959, %1448 ], [ %1455, %1453 ]
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1463, label %1459

; <label>:1459:                                   ; preds = %1456
  %1460 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1461 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1462 = getelementptr inbounds %union.StackValue, %union.StackValue* %1461, i64 1
  br label %1463

; <label>:1463:                                   ; preds = %1456, %1459
  %1464 = phi i32 [ %1460, %1459 ], [ 0, %1456 ]
  %1465 = phi %union.StackValue* [ %1462, %1459 ], [ %3958, %1456 ]
  %1466 = getelementptr inbounds i32, i32* %3960, i64 1
  %1467 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1468:                                   ; preds = %3956
  %1469 = lshr i32 %3957, 16
  %1470 = and i32 %1469, 255
  %1471 = zext i32 %1470 to i64
  %1472 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1471, i32 0
  %1473 = lshr i32 %3957, 24
  %1474 = zext i32 %1473 to i64
  %1475 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1474
  %1476 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1471, i32 0, i32 1
  %1477 = load i8, i8* %1476, align 8, !tbaa !2
  switch i8 %1477, label %1501 [
    i8 19, label %1478
    i8 35, label %1481
  ]

; <label>:1478:                                   ; preds = %1468
  %1479 = bitcast %struct.TValue* %1472 to double*
  %1480 = load double, double* %1479, align 8, !tbaa !6
  br label %1485

; <label>:1481:                                   ; preds = %1468
  %1482 = bitcast %struct.TValue* %1472 to i64*
  %1483 = load i64, i64* %1482, align 8, !tbaa !6
  %1484 = sitofp i64 %1483 to double
  br label %1485

; <label>:1485:                                   ; preds = %1478, %1481
  %1486 = phi double [ %1480, %1478 ], [ %1484, %1481 ]
  %1487 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1474, i32 1
  %1488 = load i8, i8* %1487, align 8, !tbaa !2
  switch i8 %1488, label %1501 [
    i8 19, label %1489
    i8 35, label %1492
  ]

; <label>:1489:                                   ; preds = %1485
  %1490 = bitcast %struct.TValue* %1475 to double*
  %1491 = load double, double* %1490, align 8, !tbaa !6
  br label %1496

; <label>:1492:                                   ; preds = %1485
  %1493 = bitcast %struct.TValue* %1475 to i64*
  %1494 = load i64, i64* %1493, align 8, !tbaa !6
  %1495 = sitofp i64 %1494 to double
  br label %1496

; <label>:1496:                                   ; preds = %1489, %1492
  %1497 = phi double [ %1491, %1489 ], [ %1495, %1492 ]
  %1498 = fdiv double %1486, %1497
  %1499 = bitcast %union.StackValue* %3964 to double*
  store double %1498, double* %1499, align 8, !tbaa !6
  %1500 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1500, align 8, !tbaa !2
  br label %1504

; <label>:1501:                                   ; preds = %1485, %1468
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1502 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1502, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1472, %struct.TValue* %1475, %union.StackValue* %3964, i32 11) #11
  %1503 = load i32, i32* %21, align 8, !tbaa !6
  br label %1504

; <label>:1504:                                   ; preds = %1501, %1496
  %1505 = phi i32 [ %3959, %1496 ], [ %1503, %1501 ]
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1511, label %1507

; <label>:1507:                                   ; preds = %1504
  %1508 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1509 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1510 = getelementptr inbounds %union.StackValue, %union.StackValue* %1509, i64 1
  br label %1511

; <label>:1511:                                   ; preds = %1504, %1507
  %1512 = phi i32 [ %1508, %1507 ], [ 0, %1504 ]
  %1513 = phi %union.StackValue* [ %1510, %1507 ], [ %3958, %1504 ]
  %1514 = getelementptr inbounds i32, i32* %3960, i64 1
  %1515 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1516:                                   ; preds = %3956
  %1517 = lshr i32 %3957, 16
  %1518 = and i32 %1517, 255
  %1519 = zext i32 %1518 to i64
  %1520 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1519, i32 0
  %1521 = lshr i32 %3957, 24
  %1522 = zext i32 %1521 to i64
  %1523 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1522
  %1524 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1519, i32 0, i32 1
  %1525 = load i8, i8* %1524, align 8, !tbaa !2
  switch i8 %1525, label %1561 [
    i8 35, label %1526
    i8 19, label %1538
  ]

; <label>:1526:                                   ; preds = %1516
  %1527 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1522, i32 1
  %1528 = load i8, i8* %1527, align 8, !tbaa !2
  %1529 = icmp eq i8 %1528, 35
  %1530 = bitcast %struct.TValue* %1520 to i64*
  %1531 = load i64, i64* %1530, align 8, !tbaa !6
  br i1 %1529, label %1532, label %1543

; <label>:1532:                                   ; preds = %1526
  %1533 = bitcast %struct.TValue* %1523 to i64*
  %1534 = load i64, i64* %1533, align 8, !tbaa !6
  %1535 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %1531, i64 %1534) #12
  %1536 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1535, i64* %1536, align 8, !tbaa !6
  %1537 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1537, align 8, !tbaa !2
  br label %1564

; <label>:1538:                                   ; preds = %1516
  %1539 = bitcast %struct.TValue* %1520 to double*
  %1540 = load double, double* %1539, align 8, !tbaa !6
  %1541 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1522, i32 1
  %1542 = load i8, i8* %1541, align 8, !tbaa !2
  br label %1545

; <label>:1543:                                   ; preds = %1526
  %1544 = sitofp i64 %1531 to double
  br label %1545

; <label>:1545:                                   ; preds = %1538, %1543
  %1546 = phi i8 [ %1542, %1538 ], [ %1528, %1543 ]
  %1547 = phi double [ %1540, %1538 ], [ %1544, %1543 ]
  switch i8 %1546, label %1561 [
    i8 19, label %1548
    i8 35, label %1551
  ]

; <label>:1548:                                   ; preds = %1545
  %1549 = bitcast %struct.TValue* %1523 to double*
  %1550 = load double, double* %1549, align 8, !tbaa !6
  br label %1555

; <label>:1551:                                   ; preds = %1545
  %1552 = bitcast %struct.TValue* %1523 to i64*
  %1553 = load i64, i64* %1552, align 8, !tbaa !6
  %1554 = sitofp i64 %1553 to double
  br label %1555

; <label>:1555:                                   ; preds = %1548, %1551
  %1556 = phi double [ %1550, %1548 ], [ %1554, %1551 ]
  %1557 = fdiv double %1547, %1556
  %1558 = call double @llvm.floor.f64(double %1557)
  %1559 = bitcast %union.StackValue* %3964 to double*
  store double %1558, double* %1559, align 8, !tbaa !6
  %1560 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1560, align 8, !tbaa !2
  br label %1564

; <label>:1561:                                   ; preds = %1516, %1545
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1562 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1562, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinassocTM(%struct.lua_State* %0, %struct.TValue* %1520, %struct.TValue* %1523, %union.StackValue* %3964, i32 0, i32 12) #11
  %1563 = load i32, i32* %21, align 8, !tbaa !6
  br label %1564

; <label>:1564:                                   ; preds = %1555, %1561, %1532
  %1565 = phi i32 [ %3959, %1532 ], [ %3959, %1555 ], [ %1563, %1561 ]
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1571, label %1567

; <label>:1567:                                   ; preds = %1564
  %1568 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1569 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1570 = getelementptr inbounds %union.StackValue, %union.StackValue* %1569, i64 1
  br label %1571

; <label>:1571:                                   ; preds = %1564, %1567
  %1572 = phi i32 [ %1568, %1567 ], [ 0, %1564 ]
  %1573 = phi %union.StackValue* [ %1570, %1567 ], [ %3958, %1564 ]
  %1574 = getelementptr inbounds i32, i32* %3960, i64 1
  %1575 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1576:                                   ; preds = %3956
  %1577 = lshr i32 %3957, 16
  %1578 = and i32 %1577, 255
  %1579 = zext i32 %1578 to i64
  %1580 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1579, i32 0
  %1581 = lshr i32 %3957, 24
  %1582 = zext i32 %1581 to i64
  %1583 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1582, i32 0
  %1584 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1579, i32 0, i32 1
  %1585 = load i8, i8* %1584, align 8, !tbaa !2
  switch i8 %1585, label %1620 [
    i8 35, label %1586
    i8 19, label %1598
  ]

; <label>:1586:                                   ; preds = %1576
  %1587 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1582, i32 0, i32 1
  %1588 = load i8, i8* %1587, align 8, !tbaa !2
  %1589 = icmp eq i8 %1588, 35
  %1590 = bitcast %struct.TValue* %1580 to i64*
  %1591 = load i64, i64* %1590, align 8, !tbaa !6
  br i1 %1589, label %1592, label %1603

; <label>:1592:                                   ; preds = %1586
  %1593 = bitcast %struct.TValue* %1583 to i64*
  %1594 = load i64, i64* %1593, align 8, !tbaa !6
  %1595 = add i64 %1594, %1591
  %1596 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1595, i64* %1596, align 8, !tbaa !6
  %1597 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1597, align 8, !tbaa !2
  br label %1623

; <label>:1598:                                   ; preds = %1576
  %1599 = bitcast %struct.TValue* %1580 to double*
  %1600 = load double, double* %1599, align 8, !tbaa !6
  %1601 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1582, i32 0, i32 1
  %1602 = load i8, i8* %1601, align 8, !tbaa !2
  br label %1605

; <label>:1603:                                   ; preds = %1586
  %1604 = sitofp i64 %1591 to double
  br label %1605

; <label>:1605:                                   ; preds = %1598, %1603
  %1606 = phi i8 [ %1602, %1598 ], [ %1588, %1603 ]
  %1607 = phi double [ %1600, %1598 ], [ %1604, %1603 ]
  switch i8 %1606, label %1620 [
    i8 19, label %1608
    i8 35, label %1611
  ]

; <label>:1608:                                   ; preds = %1605
  %1609 = bitcast %struct.TValue* %1583 to double*
  %1610 = load double, double* %1609, align 8, !tbaa !6
  br label %1615

; <label>:1611:                                   ; preds = %1605
  %1612 = bitcast %struct.TValue* %1583 to i64*
  %1613 = load i64, i64* %1612, align 8, !tbaa !6
  %1614 = sitofp i64 %1613 to double
  br label %1615

; <label>:1615:                                   ; preds = %1608, %1611
  %1616 = phi double [ %1610, %1608 ], [ %1614, %1611 ]
  %1617 = fadd double %1607, %1616
  %1618 = bitcast %union.StackValue* %3964 to double*
  store double %1617, double* %1618, align 8, !tbaa !6
  %1619 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1619, align 8, !tbaa !2
  br label %1623

; <label>:1620:                                   ; preds = %1576, %1605
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1621 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1621, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1580, %struct.TValue* %1583, %union.StackValue* %3964, i32 6) #11
  %1622 = load i32, i32* %21, align 8, !tbaa !6
  br label %1623

; <label>:1623:                                   ; preds = %1615, %1620, %1592
  %1624 = phi i32 [ %3959, %1592 ], [ %3959, %1615 ], [ %1622, %1620 ]
  %1625 = icmp eq i32 %1624, 0
  br i1 %1625, label %1630, label %1626

; <label>:1626:                                   ; preds = %1623
  %1627 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1628 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1629 = getelementptr inbounds %union.StackValue, %union.StackValue* %1628, i64 1
  br label %1630

; <label>:1630:                                   ; preds = %1623, %1626
  %1631 = phi i32 [ %1627, %1626 ], [ 0, %1623 ]
  %1632 = phi %union.StackValue* [ %1629, %1626 ], [ %3958, %1623 ]
  %1633 = getelementptr inbounds i32, i32* %3960, i64 1
  %1634 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1635:                                   ; preds = %3956
  %1636 = lshr i32 %3957, 16
  %1637 = and i32 %1636, 255
  %1638 = zext i32 %1637 to i64
  %1639 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1638, i32 0
  %1640 = lshr i32 %3957, 24
  %1641 = zext i32 %1640 to i64
  %1642 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1641, i32 0
  %1643 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1638, i32 0, i32 1
  %1644 = load i8, i8* %1643, align 8, !tbaa !2
  switch i8 %1644, label %1679 [
    i8 35, label %1645
    i8 19, label %1657
  ]

; <label>:1645:                                   ; preds = %1635
  %1646 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1641, i32 0, i32 1
  %1647 = load i8, i8* %1646, align 8, !tbaa !2
  %1648 = icmp eq i8 %1647, 35
  %1649 = bitcast %struct.TValue* %1639 to i64*
  %1650 = load i64, i64* %1649, align 8, !tbaa !6
  br i1 %1648, label %1651, label %1662

; <label>:1651:                                   ; preds = %1645
  %1652 = bitcast %struct.TValue* %1642 to i64*
  %1653 = load i64, i64* %1652, align 8, !tbaa !6
  %1654 = sub i64 %1650, %1653
  %1655 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1654, i64* %1655, align 8, !tbaa !6
  %1656 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1656, align 8, !tbaa !2
  br label %1682

; <label>:1657:                                   ; preds = %1635
  %1658 = bitcast %struct.TValue* %1639 to double*
  %1659 = load double, double* %1658, align 8, !tbaa !6
  %1660 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1641, i32 0, i32 1
  %1661 = load i8, i8* %1660, align 8, !tbaa !2
  br label %1664

; <label>:1662:                                   ; preds = %1645
  %1663 = sitofp i64 %1650 to double
  br label %1664

; <label>:1664:                                   ; preds = %1657, %1662
  %1665 = phi i8 [ %1661, %1657 ], [ %1647, %1662 ]
  %1666 = phi double [ %1659, %1657 ], [ %1663, %1662 ]
  switch i8 %1665, label %1679 [
    i8 19, label %1667
    i8 35, label %1670
  ]

; <label>:1667:                                   ; preds = %1664
  %1668 = bitcast %struct.TValue* %1642 to double*
  %1669 = load double, double* %1668, align 8, !tbaa !6
  br label %1674

; <label>:1670:                                   ; preds = %1664
  %1671 = bitcast %struct.TValue* %1642 to i64*
  %1672 = load i64, i64* %1671, align 8, !tbaa !6
  %1673 = sitofp i64 %1672 to double
  br label %1674

; <label>:1674:                                   ; preds = %1667, %1670
  %1675 = phi double [ %1669, %1667 ], [ %1673, %1670 ]
  %1676 = fsub double %1666, %1675
  %1677 = bitcast %union.StackValue* %3964 to double*
  store double %1676, double* %1677, align 8, !tbaa !6
  %1678 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1678, align 8, !tbaa !2
  br label %1682

; <label>:1679:                                   ; preds = %1635, %1664
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1680 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1680, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1639, %struct.TValue* %1642, %union.StackValue* %3964, i32 7) #11
  %1681 = load i32, i32* %21, align 8, !tbaa !6
  br label %1682

; <label>:1682:                                   ; preds = %1674, %1679, %1651
  %1683 = phi i32 [ %3959, %1651 ], [ %3959, %1674 ], [ %1681, %1679 ]
  %1684 = icmp eq i32 %1683, 0
  br i1 %1684, label %1689, label %1685

; <label>:1685:                                   ; preds = %1682
  %1686 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1687 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1688 = getelementptr inbounds %union.StackValue, %union.StackValue* %1687, i64 1
  br label %1689

; <label>:1689:                                   ; preds = %1682, %1685
  %1690 = phi i32 [ %1686, %1685 ], [ 0, %1682 ]
  %1691 = phi %union.StackValue* [ %1688, %1685 ], [ %3958, %1682 ]
  %1692 = getelementptr inbounds i32, i32* %3960, i64 1
  %1693 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1694:                                   ; preds = %3956
  %1695 = lshr i32 %3957, 16
  %1696 = and i32 %1695, 255
  %1697 = zext i32 %1696 to i64
  %1698 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1697, i32 0
  %1699 = lshr i32 %3957, 24
  %1700 = zext i32 %1699 to i64
  %1701 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1700, i32 0
  %1702 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1697, i32 0, i32 1
  %1703 = load i8, i8* %1702, align 8, !tbaa !2
  switch i8 %1703, label %1738 [
    i8 35, label %1704
    i8 19, label %1716
  ]

; <label>:1704:                                   ; preds = %1694
  %1705 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1700, i32 0, i32 1
  %1706 = load i8, i8* %1705, align 8, !tbaa !2
  %1707 = icmp eq i8 %1706, 35
  %1708 = bitcast %struct.TValue* %1698 to i64*
  %1709 = load i64, i64* %1708, align 8, !tbaa !6
  br i1 %1707, label %1710, label %1721

; <label>:1710:                                   ; preds = %1704
  %1711 = bitcast %struct.TValue* %1701 to i64*
  %1712 = load i64, i64* %1711, align 8, !tbaa !6
  %1713 = mul i64 %1712, %1709
  %1714 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1713, i64* %1714, align 8, !tbaa !6
  %1715 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1715, align 8, !tbaa !2
  br label %1741

; <label>:1716:                                   ; preds = %1694
  %1717 = bitcast %struct.TValue* %1698 to double*
  %1718 = load double, double* %1717, align 8, !tbaa !6
  %1719 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1700, i32 0, i32 1
  %1720 = load i8, i8* %1719, align 8, !tbaa !2
  br label %1723

; <label>:1721:                                   ; preds = %1704
  %1722 = sitofp i64 %1709 to double
  br label %1723

; <label>:1723:                                   ; preds = %1716, %1721
  %1724 = phi i8 [ %1720, %1716 ], [ %1706, %1721 ]
  %1725 = phi double [ %1718, %1716 ], [ %1722, %1721 ]
  switch i8 %1724, label %1738 [
    i8 19, label %1726
    i8 35, label %1729
  ]

; <label>:1726:                                   ; preds = %1723
  %1727 = bitcast %struct.TValue* %1701 to double*
  %1728 = load double, double* %1727, align 8, !tbaa !6
  br label %1733

; <label>:1729:                                   ; preds = %1723
  %1730 = bitcast %struct.TValue* %1701 to i64*
  %1731 = load i64, i64* %1730, align 8, !tbaa !6
  %1732 = sitofp i64 %1731 to double
  br label %1733

; <label>:1733:                                   ; preds = %1726, %1729
  %1734 = phi double [ %1728, %1726 ], [ %1732, %1729 ]
  %1735 = fmul double %1725, %1734
  %1736 = bitcast %union.StackValue* %3964 to double*
  store double %1735, double* %1736, align 8, !tbaa !6
  %1737 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1737, align 8, !tbaa !2
  br label %1741

; <label>:1738:                                   ; preds = %1694, %1723
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1739 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1739, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1698, %struct.TValue* %1701, %union.StackValue* %3964, i32 8) #11
  %1740 = load i32, i32* %21, align 8, !tbaa !6
  br label %1741

; <label>:1741:                                   ; preds = %1733, %1738, %1710
  %1742 = phi i32 [ %3959, %1710 ], [ %3959, %1733 ], [ %1740, %1738 ]
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1748, label %1744

; <label>:1744:                                   ; preds = %1741
  %1745 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1746 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1747 = getelementptr inbounds %union.StackValue, %union.StackValue* %1746, i64 1
  br label %1748

; <label>:1748:                                   ; preds = %1741, %1744
  %1749 = phi i32 [ %1745, %1744 ], [ 0, %1741 ]
  %1750 = phi %union.StackValue* [ %1747, %1744 ], [ %3958, %1741 ]
  %1751 = getelementptr inbounds i32, i32* %3960, i64 1
  %1752 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1753:                                   ; preds = %3956
  %1754 = lshr i32 %3957, 16
  %1755 = and i32 %1754, 255
  %1756 = zext i32 %1755 to i64
  %1757 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1756, i32 0
  %1758 = lshr i32 %3957, 24
  %1759 = zext i32 %1758 to i64
  %1760 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1759, i32 0
  %1761 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1756, i32 0, i32 1
  %1762 = load i8, i8* %1761, align 8, !tbaa !2
  switch i8 %1762, label %1808 [
    i8 35, label %1763
    i8 19, label %1775
  ]

; <label>:1763:                                   ; preds = %1753
  %1764 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1759, i32 0, i32 1
  %1765 = load i8, i8* %1764, align 8, !tbaa !2
  %1766 = icmp eq i8 %1765, 35
  %1767 = bitcast %struct.TValue* %1757 to i64*
  %1768 = load i64, i64* %1767, align 8, !tbaa !6
  br i1 %1766, label %1769, label %1780

; <label>:1769:                                   ; preds = %1763
  %1770 = bitcast %struct.TValue* %1760 to i64*
  %1771 = load i64, i64* %1770, align 8, !tbaa !6
  %1772 = call i64 @luaV_mod(%struct.lua_State* %0, i64 %1768, i64 %1771) #12
  %1773 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1772, i64* %1773, align 8, !tbaa !6
  %1774 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1774, align 8, !tbaa !2
  br label %1811

; <label>:1775:                                   ; preds = %1753
  %1776 = bitcast %struct.TValue* %1757 to double*
  %1777 = load double, double* %1776, align 8, !tbaa !6
  %1778 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1759, i32 0, i32 1
  %1779 = load i8, i8* %1778, align 8, !tbaa !2
  br label %1782

; <label>:1780:                                   ; preds = %1763
  %1781 = sitofp i64 %1768 to double
  br label %1782

; <label>:1782:                                   ; preds = %1775, %1780
  %1783 = phi i8 [ %1779, %1775 ], [ %1765, %1780 ]
  %1784 = phi double [ %1777, %1775 ], [ %1781, %1780 ]
  switch i8 %1783, label %1808 [
    i8 19, label %1785
    i8 35, label %1788
  ]

; <label>:1785:                                   ; preds = %1782
  %1786 = bitcast %struct.TValue* %1760 to double*
  %1787 = load double, double* %1786, align 8, !tbaa !6
  br label %1792

; <label>:1788:                                   ; preds = %1782
  %1789 = bitcast %struct.TValue* %1760 to i64*
  %1790 = load i64, i64* %1789, align 8, !tbaa !6
  %1791 = sitofp i64 %1790 to double
  br label %1792

; <label>:1792:                                   ; preds = %1785, %1788
  %1793 = phi double [ %1787, %1785 ], [ %1791, %1788 ]
  %1794 = call double @fmod(double %1784, double %1793) #11
  %1795 = fcmp ogt double %1794, 0.000000e+00
  br i1 %1795, label %1796, label %1798

; <label>:1796:                                   ; preds = %1792
  %1797 = fcmp olt double %1793, 0.000000e+00
  br i1 %1797, label %1802, label %1804

; <label>:1798:                                   ; preds = %1792
  %1799 = fcmp olt double %1794, 0.000000e+00
  %1800 = fcmp ogt double %1793, 0.000000e+00
  %1801 = and i1 %1800, %1799
  br i1 %1801, label %1802, label %1804

; <label>:1802:                                   ; preds = %1798, %1796
  %1803 = fadd double %1793, %1794
  br label %1804

; <label>:1804:                                   ; preds = %1796, %1798, %1802
  %1805 = phi double [ %1803, %1802 ], [ %1794, %1796 ], [ %1794, %1798 ]
  %1806 = bitcast %union.StackValue* %3964 to double*
  store double %1805, double* %1806, align 8, !tbaa !6
  %1807 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1807, align 8, !tbaa !2
  br label %1811

; <label>:1808:                                   ; preds = %1753, %1782
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1809 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1809, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1757, %struct.TValue* %1760, %union.StackValue* %3964, i32 9) #11
  %1810 = load i32, i32* %21, align 8, !tbaa !6
  br label %1811

; <label>:1811:                                   ; preds = %1804, %1808, %1769
  %1812 = phi i32 [ %3959, %1769 ], [ %3959, %1804 ], [ %1810, %1808 ]
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1818, label %1814

; <label>:1814:                                   ; preds = %1811
  %1815 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1816 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1817 = getelementptr inbounds %union.StackValue, %union.StackValue* %1816, i64 1
  br label %1818

; <label>:1818:                                   ; preds = %1811, %1814
  %1819 = phi i32 [ %1815, %1814 ], [ 0, %1811 ]
  %1820 = phi %union.StackValue* [ %1817, %1814 ], [ %3958, %1811 ]
  %1821 = getelementptr inbounds i32, i32* %3960, i64 1
  %1822 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1823:                                   ; preds = %3956
  %1824 = lshr i32 %3957, 16
  %1825 = and i32 %1824, 255
  %1826 = zext i32 %1825 to i64
  %1827 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1826, i32 0
  %1828 = lshr i32 %3957, 24
  %1829 = zext i32 %1828 to i64
  %1830 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1829, i32 0
  %1831 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1826, i32 0, i32 1
  %1832 = load i8, i8* %1831, align 8, !tbaa !2
  switch i8 %1832, label %1856 [
    i8 19, label %1833
    i8 35, label %1836
  ]

; <label>:1833:                                   ; preds = %1823
  %1834 = bitcast %struct.TValue* %1827 to double*
  %1835 = load double, double* %1834, align 8, !tbaa !6
  br label %1840

; <label>:1836:                                   ; preds = %1823
  %1837 = bitcast %struct.TValue* %1827 to i64*
  %1838 = load i64, i64* %1837, align 8, !tbaa !6
  %1839 = sitofp i64 %1838 to double
  br label %1840

; <label>:1840:                                   ; preds = %1833, %1836
  %1841 = phi double [ %1835, %1833 ], [ %1839, %1836 ]
  %1842 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1829, i32 0, i32 1
  %1843 = load i8, i8* %1842, align 8, !tbaa !2
  switch i8 %1843, label %1856 [
    i8 19, label %1844
    i8 35, label %1847
  ]

; <label>:1844:                                   ; preds = %1840
  %1845 = bitcast %struct.TValue* %1830 to double*
  %1846 = load double, double* %1845, align 8, !tbaa !6
  br label %1851

; <label>:1847:                                   ; preds = %1840
  %1848 = bitcast %struct.TValue* %1830 to i64*
  %1849 = load i64, i64* %1848, align 8, !tbaa !6
  %1850 = sitofp i64 %1849 to double
  br label %1851

; <label>:1851:                                   ; preds = %1844, %1847
  %1852 = phi double [ %1846, %1844 ], [ %1850, %1847 ]
  %1853 = call double @pow(double %1841, double %1852) #11
  %1854 = bitcast %union.StackValue* %3964 to double*
  store double %1853, double* %1854, align 8, !tbaa !6
  %1855 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1855, align 8, !tbaa !2
  br label %1859

; <label>:1856:                                   ; preds = %1840, %1823
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1857 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1857, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1827, %struct.TValue* %1830, %union.StackValue* %3964, i32 10) #11
  %1858 = load i32, i32* %21, align 8, !tbaa !6
  br label %1859

; <label>:1859:                                   ; preds = %1856, %1851
  %1860 = phi i32 [ %3959, %1851 ], [ %1858, %1856 ]
  %1861 = icmp eq i32 %1860, 0
  br i1 %1861, label %1866, label %1862

; <label>:1862:                                   ; preds = %1859
  %1863 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1864 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1865 = getelementptr inbounds %union.StackValue, %union.StackValue* %1864, i64 1
  br label %1866

; <label>:1866:                                   ; preds = %1859, %1862
  %1867 = phi i32 [ %1863, %1862 ], [ 0, %1859 ]
  %1868 = phi %union.StackValue* [ %1865, %1862 ], [ %3958, %1859 ]
  %1869 = getelementptr inbounds i32, i32* %3960, i64 1
  %1870 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1871:                                   ; preds = %3956
  %1872 = lshr i32 %3957, 16
  %1873 = and i32 %1872, 255
  %1874 = zext i32 %1873 to i64
  %1875 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1874, i32 0
  %1876 = lshr i32 %3957, 24
  %1877 = zext i32 %1876 to i64
  %1878 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1877, i32 0
  %1879 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1874, i32 0, i32 1
  %1880 = load i8, i8* %1879, align 8, !tbaa !2
  switch i8 %1880, label %1904 [
    i8 19, label %1881
    i8 35, label %1884
  ]

; <label>:1881:                                   ; preds = %1871
  %1882 = bitcast %struct.TValue* %1875 to double*
  %1883 = load double, double* %1882, align 8, !tbaa !6
  br label %1888

; <label>:1884:                                   ; preds = %1871
  %1885 = bitcast %struct.TValue* %1875 to i64*
  %1886 = load i64, i64* %1885, align 8, !tbaa !6
  %1887 = sitofp i64 %1886 to double
  br label %1888

; <label>:1888:                                   ; preds = %1881, %1884
  %1889 = phi double [ %1883, %1881 ], [ %1887, %1884 ]
  %1890 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1877, i32 0, i32 1
  %1891 = load i8, i8* %1890, align 8, !tbaa !2
  switch i8 %1891, label %1904 [
    i8 19, label %1892
    i8 35, label %1895
  ]

; <label>:1892:                                   ; preds = %1888
  %1893 = bitcast %struct.TValue* %1878 to double*
  %1894 = load double, double* %1893, align 8, !tbaa !6
  br label %1899

; <label>:1895:                                   ; preds = %1888
  %1896 = bitcast %struct.TValue* %1878 to i64*
  %1897 = load i64, i64* %1896, align 8, !tbaa !6
  %1898 = sitofp i64 %1897 to double
  br label %1899

; <label>:1899:                                   ; preds = %1892, %1895
  %1900 = phi double [ %1894, %1892 ], [ %1898, %1895 ]
  %1901 = fdiv double %1889, %1900
  %1902 = bitcast %union.StackValue* %3964 to double*
  store double %1901, double* %1902, align 8, !tbaa !6
  %1903 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1903, align 8, !tbaa !2
  br label %1907

; <label>:1904:                                   ; preds = %1888, %1871
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1905 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1905, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1875, %struct.TValue* %1878, %union.StackValue* %3964, i32 11) #11
  %1906 = load i32, i32* %21, align 8, !tbaa !6
  br label %1907

; <label>:1907:                                   ; preds = %1904, %1899
  %1908 = phi i32 [ %3959, %1899 ], [ %1906, %1904 ]
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1914, label %1910

; <label>:1910:                                   ; preds = %1907
  %1911 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1912 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1913 = getelementptr inbounds %union.StackValue, %union.StackValue* %1912, i64 1
  br label %1914

; <label>:1914:                                   ; preds = %1907, %1910
  %1915 = phi i32 [ %1911, %1910 ], [ 0, %1907 ]
  %1916 = phi %union.StackValue* [ %1913, %1910 ], [ %3958, %1907 ]
  %1917 = getelementptr inbounds i32, i32* %3960, i64 1
  %1918 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1919:                                   ; preds = %3956
  %1920 = lshr i32 %3957, 16
  %1921 = and i32 %1920, 255
  %1922 = zext i32 %1921 to i64
  %1923 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1922, i32 0
  %1924 = lshr i32 %3957, 24
  %1925 = zext i32 %1924 to i64
  %1926 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1925, i32 0
  %1927 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1922, i32 0, i32 1
  %1928 = load i8, i8* %1927, align 8, !tbaa !2
  switch i8 %1928, label %1964 [
    i8 35, label %1929
    i8 19, label %1941
  ]

; <label>:1929:                                   ; preds = %1919
  %1930 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1925, i32 0, i32 1
  %1931 = load i8, i8* %1930, align 8, !tbaa !2
  %1932 = icmp eq i8 %1931, 35
  %1933 = bitcast %struct.TValue* %1923 to i64*
  %1934 = load i64, i64* %1933, align 8, !tbaa !6
  br i1 %1932, label %1935, label %1946

; <label>:1935:                                   ; preds = %1929
  %1936 = bitcast %struct.TValue* %1926 to i64*
  %1937 = load i64, i64* %1936, align 8, !tbaa !6
  %1938 = call i64 @luaV_idiv(%struct.lua_State* %0, i64 %1934, i64 %1937) #12
  %1939 = bitcast %union.StackValue* %3964 to i64*
  store i64 %1938, i64* %1939, align 8, !tbaa !6
  %1940 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %1940, align 8, !tbaa !2
  br label %1967

; <label>:1941:                                   ; preds = %1919
  %1942 = bitcast %struct.TValue* %1923 to double*
  %1943 = load double, double* %1942, align 8, !tbaa !6
  %1944 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1925, i32 0, i32 1
  %1945 = load i8, i8* %1944, align 8, !tbaa !2
  br label %1948

; <label>:1946:                                   ; preds = %1929
  %1947 = sitofp i64 %1934 to double
  br label %1948

; <label>:1948:                                   ; preds = %1941, %1946
  %1949 = phi i8 [ %1945, %1941 ], [ %1931, %1946 ]
  %1950 = phi double [ %1943, %1941 ], [ %1947, %1946 ]
  switch i8 %1949, label %1964 [
    i8 19, label %1951
    i8 35, label %1954
  ]

; <label>:1951:                                   ; preds = %1948
  %1952 = bitcast %struct.TValue* %1926 to double*
  %1953 = load double, double* %1952, align 8, !tbaa !6
  br label %1958

; <label>:1954:                                   ; preds = %1948
  %1955 = bitcast %struct.TValue* %1926 to i64*
  %1956 = load i64, i64* %1955, align 8, !tbaa !6
  %1957 = sitofp i64 %1956 to double
  br label %1958

; <label>:1958:                                   ; preds = %1951, %1954
  %1959 = phi double [ %1953, %1951 ], [ %1957, %1954 ]
  %1960 = fdiv double %1950, %1959
  %1961 = call double @llvm.floor.f64(double %1960)
  %1962 = bitcast %union.StackValue* %3964 to double*
  store double %1961, double* %1962, align 8, !tbaa !6
  %1963 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %1963, align 8, !tbaa !2
  br label %1967

; <label>:1964:                                   ; preds = %1919, %1948
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %1965 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %1965, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %1923, %struct.TValue* %1926, %union.StackValue* %3964, i32 12) #11
  %1966 = load i32, i32* %21, align 8, !tbaa !6
  br label %1967

; <label>:1967:                                   ; preds = %1958, %1964, %1935
  %1968 = phi i32 [ %3959, %1935 ], [ %3959, %1958 ], [ %1966, %1964 ]
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %1974, label %1970

; <label>:1970:                                   ; preds = %1967
  %1971 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %1972 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %1973 = getelementptr inbounds %union.StackValue, %union.StackValue* %1972, i64 1
  br label %1974

; <label>:1974:                                   ; preds = %1967, %1970
  %1975 = phi i32 [ %1971, %1970 ], [ 0, %1967 ]
  %1976 = phi %union.StackValue* [ %1973, %1970 ], [ %3958, %1967 ]
  %1977 = getelementptr inbounds i32, i32* %3960, i64 1
  %1978 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:1979:                                   ; preds = %3956
  %1980 = lshr i32 %3957, 16
  %1981 = and i32 %1980, 255
  %1982 = zext i32 %1981 to i64
  %1983 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1982, i32 0
  %1984 = lshr i32 %3957, 24
  %1985 = zext i32 %1984 to i64
  %1986 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %1985, i32 0
  %1987 = bitcast %union.Value* %1986 to i64*
  %1988 = load i64, i64* %1987, align 8, !tbaa !6
  %1989 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %1982, i32 0, i32 1
  %1990 = load i8, i8* %1989, align 8, !tbaa !2
  switch i8 %1990, label %2010 [
    i8 35, label %1991
    i8 19, label %1994
  ]

; <label>:1991:                                   ; preds = %1979
  %1992 = bitcast %struct.TValue* %1983 to i64*
  %1993 = load i64, i64* %1992, align 8, !tbaa !6
  br label %2005

; <label>:1994:                                   ; preds = %1979
  %1995 = bitcast %struct.TValue* %1983 to double*
  %1996 = load double, double* %1995, align 8, !tbaa !6
  %1997 = call double @llvm.floor.f64(double %1996) #10
  %1998 = fcmp une double %1997, %1996
  br i1 %1998, label %2010, label %1999

; <label>:1999:                                   ; preds = %1994
  %2000 = fcmp oge double %1997, 0xC3E0000000000000
  %2001 = fcmp olt double %1997, 0x43E0000000000000
  %2002 = and i1 %2000, %2001
  br i1 %2002, label %2003, label %2010

; <label>:2003:                                   ; preds = %1999
  %2004 = fptosi double %1997 to i64
  br label %2005

; <label>:2005:                                   ; preds = %2003, %1991
  %2006 = phi i64 [ %1993, %1991 ], [ %2004, %2003 ]
  %2007 = and i64 %2006, %1988
  %2008 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2007, i64* %2008, align 8, !tbaa !6
  %2009 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2009, align 8, !tbaa !2
  br label %2014

; <label>:2010:                                   ; preds = %1979, %1999, %1994
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2011 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2011, i64* %19, align 8, !tbaa !25
  %2012 = and i32 %3957, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %1983, i64 %1988, i32 %2012, %union.StackValue* %3964, i32 13) #11
  %2013 = load i32, i32* %21, align 8, !tbaa !6
  br label %2014

; <label>:2014:                                   ; preds = %2010, %2005
  %2015 = phi i32 [ %3959, %2005 ], [ %2013, %2010 ]
  %2016 = icmp eq i32 %2015, 0
  br i1 %2016, label %2021, label %2017

; <label>:2017:                                   ; preds = %2014
  %2018 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2019 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2020 = getelementptr inbounds %union.StackValue, %union.StackValue* %2019, i64 1
  br label %2021

; <label>:2021:                                   ; preds = %2014, %2017
  %2022 = phi i32 [ %2018, %2017 ], [ 0, %2014 ]
  %2023 = phi %union.StackValue* [ %2020, %2017 ], [ %3958, %2014 ]
  %2024 = getelementptr inbounds i32, i32* %3960, i64 1
  %2025 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2026:                                   ; preds = %3956
  %2027 = lshr i32 %3957, 16
  %2028 = and i32 %2027, 255
  %2029 = zext i32 %2028 to i64
  %2030 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2029, i32 0
  %2031 = lshr i32 %3957, 24
  %2032 = zext i32 %2031 to i64
  %2033 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %2032, i32 0
  %2034 = bitcast %union.Value* %2033 to i64*
  %2035 = load i64, i64* %2034, align 8, !tbaa !6
  %2036 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2029, i32 0, i32 1
  %2037 = load i8, i8* %2036, align 8, !tbaa !2
  switch i8 %2037, label %2057 [
    i8 35, label %2038
    i8 19, label %2041
  ]

; <label>:2038:                                   ; preds = %2026
  %2039 = bitcast %struct.TValue* %2030 to i64*
  %2040 = load i64, i64* %2039, align 8, !tbaa !6
  br label %2052

; <label>:2041:                                   ; preds = %2026
  %2042 = bitcast %struct.TValue* %2030 to double*
  %2043 = load double, double* %2042, align 8, !tbaa !6
  %2044 = call double @llvm.floor.f64(double %2043) #10
  %2045 = fcmp une double %2044, %2043
  br i1 %2045, label %2057, label %2046

; <label>:2046:                                   ; preds = %2041
  %2047 = fcmp oge double %2044, 0xC3E0000000000000
  %2048 = fcmp olt double %2044, 0x43E0000000000000
  %2049 = and i1 %2047, %2048
  br i1 %2049, label %2050, label %2057

; <label>:2050:                                   ; preds = %2046
  %2051 = fptosi double %2044 to i64
  br label %2052

; <label>:2052:                                   ; preds = %2050, %2038
  %2053 = phi i64 [ %2040, %2038 ], [ %2051, %2050 ]
  %2054 = or i64 %2053, %2035
  %2055 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2054, i64* %2055, align 8, !tbaa !6
  %2056 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2056, align 8, !tbaa !2
  br label %2061

; <label>:2057:                                   ; preds = %2026, %2046, %2041
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2058 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2058, i64* %19, align 8, !tbaa !25
  %2059 = and i32 %3957, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2030, i64 %2035, i32 %2059, %union.StackValue* %3964, i32 14) #11
  %2060 = load i32, i32* %21, align 8, !tbaa !6
  br label %2061

; <label>:2061:                                   ; preds = %2057, %2052
  %2062 = phi i32 [ %3959, %2052 ], [ %2060, %2057 ]
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2068, label %2064

; <label>:2064:                                   ; preds = %2061
  %2065 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2066 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2067 = getelementptr inbounds %union.StackValue, %union.StackValue* %2066, i64 1
  br label %2068

; <label>:2068:                                   ; preds = %2061, %2064
  %2069 = phi i32 [ %2065, %2064 ], [ 0, %2061 ]
  %2070 = phi %union.StackValue* [ %2067, %2064 ], [ %3958, %2061 ]
  %2071 = getelementptr inbounds i32, i32* %3960, i64 1
  %2072 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2073:                                   ; preds = %3956
  %2074 = lshr i32 %3957, 16
  %2075 = and i32 %2074, 255
  %2076 = zext i32 %2075 to i64
  %2077 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2076, i32 0
  %2078 = lshr i32 %3957, 24
  %2079 = zext i32 %2078 to i64
  %2080 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %2079, i32 0
  %2081 = bitcast %union.Value* %2080 to i64*
  %2082 = load i64, i64* %2081, align 8, !tbaa !6
  %2083 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2076, i32 0, i32 1
  %2084 = load i8, i8* %2083, align 8, !tbaa !2
  switch i8 %2084, label %2104 [
    i8 35, label %2085
    i8 19, label %2088
  ]

; <label>:2085:                                   ; preds = %2073
  %2086 = bitcast %struct.TValue* %2077 to i64*
  %2087 = load i64, i64* %2086, align 8, !tbaa !6
  br label %2099

; <label>:2088:                                   ; preds = %2073
  %2089 = bitcast %struct.TValue* %2077 to double*
  %2090 = load double, double* %2089, align 8, !tbaa !6
  %2091 = call double @llvm.floor.f64(double %2090) #10
  %2092 = fcmp une double %2091, %2090
  br i1 %2092, label %2104, label %2093

; <label>:2093:                                   ; preds = %2088
  %2094 = fcmp oge double %2091, 0xC3E0000000000000
  %2095 = fcmp olt double %2091, 0x43E0000000000000
  %2096 = and i1 %2094, %2095
  br i1 %2096, label %2097, label %2104

; <label>:2097:                                   ; preds = %2093
  %2098 = fptosi double %2091 to i64
  br label %2099

; <label>:2099:                                   ; preds = %2097, %2085
  %2100 = phi i64 [ %2087, %2085 ], [ %2098, %2097 ]
  %2101 = xor i64 %2100, %2082
  %2102 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2101, i64* %2102, align 8, !tbaa !6
  %2103 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2103, align 8, !tbaa !2
  br label %2108

; <label>:2104:                                   ; preds = %2073, %2093, %2088
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2105 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2105, i64* %19, align 8, !tbaa !25
  %2106 = and i32 %3957, 32768
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2077, i64 %2082, i32 %2106, %union.StackValue* %3964, i32 15) #11
  %2107 = load i32, i32* %21, align 8, !tbaa !6
  br label %2108

; <label>:2108:                                   ; preds = %2104, %2099
  %2109 = phi i32 [ %3959, %2099 ], [ %2107, %2104 ]
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2115, label %2111

; <label>:2111:                                   ; preds = %2108
  %2112 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2113 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2114 = getelementptr inbounds %union.StackValue, %union.StackValue* %2113, i64 1
  br label %2115

; <label>:2115:                                   ; preds = %2108, %2111
  %2116 = phi i32 [ %2112, %2111 ], [ 0, %2108 ]
  %2117 = phi %union.StackValue* [ %2114, %2111 ], [ %3958, %2108 ]
  %2118 = getelementptr inbounds i32, i32* %3960, i64 1
  %2119 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2120:                                   ; preds = %3956
  %2121 = lshr i32 %3957, 16
  %2122 = and i32 %2121, 255
  %2123 = zext i32 %2122 to i64
  %2124 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2123, i32 0
  %2125 = lshr i32 %3957, 24
  %2126 = zext i32 %2125 to i64
  %2127 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2126, i32 0
  %2128 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2123, i32 0, i32 1
  %2129 = load i8, i8* %2128, align 8, !tbaa !2
  switch i8 %2129, label %2167 [
    i8 35, label %2130
    i8 19, label %2133
  ]

; <label>:2130:                                   ; preds = %2120
  %2131 = bitcast %struct.TValue* %2124 to i64*
  %2132 = load i64, i64* %2131, align 8, !tbaa !6
  br label %2144

; <label>:2133:                                   ; preds = %2120
  %2134 = bitcast %struct.TValue* %2124 to double*
  %2135 = load double, double* %2134, align 8, !tbaa !6
  %2136 = call double @llvm.floor.f64(double %2135) #10
  %2137 = fcmp une double %2136, %2135
  br i1 %2137, label %2167, label %2138

; <label>:2138:                                   ; preds = %2133
  %2139 = fcmp oge double %2136, 0xC3E0000000000000
  %2140 = fcmp olt double %2136, 0x43E0000000000000
  %2141 = and i1 %2139, %2140
  br i1 %2141, label %2142, label %2167

; <label>:2142:                                   ; preds = %2138
  %2143 = fptosi double %2136 to i64
  br label %2144

; <label>:2144:                                   ; preds = %2142, %2130
  %2145 = phi i64 [ %2132, %2130 ], [ %2143, %2142 ]
  %2146 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2126, i32 0, i32 1
  %2147 = load i8, i8* %2146, align 8, !tbaa !2
  switch i8 %2147, label %2167 [
    i8 35, label %2148
    i8 19, label %2151
  ]

; <label>:2148:                                   ; preds = %2144
  %2149 = bitcast %struct.TValue* %2127 to i64*
  %2150 = load i64, i64* %2149, align 8, !tbaa !6
  br label %2162

; <label>:2151:                                   ; preds = %2144
  %2152 = bitcast %struct.TValue* %2127 to double*
  %2153 = load double, double* %2152, align 8, !tbaa !6
  %2154 = call double @llvm.floor.f64(double %2153) #10
  %2155 = fcmp une double %2154, %2153
  br i1 %2155, label %2167, label %2156

; <label>:2156:                                   ; preds = %2151
  %2157 = fcmp oge double %2154, 0xC3E0000000000000
  %2158 = fcmp olt double %2154, 0x43E0000000000000
  %2159 = and i1 %2157, %2158
  br i1 %2159, label %2160, label %2167

; <label>:2160:                                   ; preds = %2156
  %2161 = fptosi double %2154 to i64
  br label %2162

; <label>:2162:                                   ; preds = %2160, %2148
  %2163 = phi i64 [ %2150, %2148 ], [ %2161, %2160 ]
  %2164 = and i64 %2163, %2145
  %2165 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2164, i64* %2165, align 8, !tbaa !6
  %2166 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2166, align 8, !tbaa !2
  br label %2170

; <label>:2167:                                   ; preds = %2144, %2120, %2151, %2156, %2133, %2138
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2168 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2168, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2124, %struct.TValue* nonnull %2127, %union.StackValue* %3964, i32 13) #11
  %2169 = load i32, i32* %21, align 8, !tbaa !6
  br label %2170

; <label>:2170:                                   ; preds = %2167, %2162
  %2171 = phi i32 [ %3959, %2162 ], [ %2169, %2167 ]
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2177, label %2173

; <label>:2173:                                   ; preds = %2170
  %2174 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2175 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2176 = getelementptr inbounds %union.StackValue, %union.StackValue* %2175, i64 1
  br label %2177

; <label>:2177:                                   ; preds = %2170, %2173
  %2178 = phi i32 [ %2174, %2173 ], [ 0, %2170 ]
  %2179 = phi %union.StackValue* [ %2176, %2173 ], [ %3958, %2170 ]
  %2180 = getelementptr inbounds i32, i32* %3960, i64 1
  %2181 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2182:                                   ; preds = %3956
  %2183 = lshr i32 %3957, 16
  %2184 = and i32 %2183, 255
  %2185 = zext i32 %2184 to i64
  %2186 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2185, i32 0
  %2187 = lshr i32 %3957, 24
  %2188 = zext i32 %2187 to i64
  %2189 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2188, i32 0
  %2190 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2185, i32 0, i32 1
  %2191 = load i8, i8* %2190, align 8, !tbaa !2
  switch i8 %2191, label %2229 [
    i8 35, label %2192
    i8 19, label %2195
  ]

; <label>:2192:                                   ; preds = %2182
  %2193 = bitcast %struct.TValue* %2186 to i64*
  %2194 = load i64, i64* %2193, align 8, !tbaa !6
  br label %2206

; <label>:2195:                                   ; preds = %2182
  %2196 = bitcast %struct.TValue* %2186 to double*
  %2197 = load double, double* %2196, align 8, !tbaa !6
  %2198 = call double @llvm.floor.f64(double %2197) #10
  %2199 = fcmp une double %2198, %2197
  br i1 %2199, label %2229, label %2200

; <label>:2200:                                   ; preds = %2195
  %2201 = fcmp oge double %2198, 0xC3E0000000000000
  %2202 = fcmp olt double %2198, 0x43E0000000000000
  %2203 = and i1 %2201, %2202
  br i1 %2203, label %2204, label %2229

; <label>:2204:                                   ; preds = %2200
  %2205 = fptosi double %2198 to i64
  br label %2206

; <label>:2206:                                   ; preds = %2204, %2192
  %2207 = phi i64 [ %2194, %2192 ], [ %2205, %2204 ]
  %2208 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2188, i32 0, i32 1
  %2209 = load i8, i8* %2208, align 8, !tbaa !2
  switch i8 %2209, label %2229 [
    i8 35, label %2210
    i8 19, label %2213
  ]

; <label>:2210:                                   ; preds = %2206
  %2211 = bitcast %struct.TValue* %2189 to i64*
  %2212 = load i64, i64* %2211, align 8, !tbaa !6
  br label %2224

; <label>:2213:                                   ; preds = %2206
  %2214 = bitcast %struct.TValue* %2189 to double*
  %2215 = load double, double* %2214, align 8, !tbaa !6
  %2216 = call double @llvm.floor.f64(double %2215) #10
  %2217 = fcmp une double %2216, %2215
  br i1 %2217, label %2229, label %2218

; <label>:2218:                                   ; preds = %2213
  %2219 = fcmp oge double %2216, 0xC3E0000000000000
  %2220 = fcmp olt double %2216, 0x43E0000000000000
  %2221 = and i1 %2219, %2220
  br i1 %2221, label %2222, label %2229

; <label>:2222:                                   ; preds = %2218
  %2223 = fptosi double %2216 to i64
  br label %2224

; <label>:2224:                                   ; preds = %2222, %2210
  %2225 = phi i64 [ %2212, %2210 ], [ %2223, %2222 ]
  %2226 = or i64 %2225, %2207
  %2227 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2226, i64* %2227, align 8, !tbaa !6
  %2228 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2228, align 8, !tbaa !2
  br label %2232

; <label>:2229:                                   ; preds = %2206, %2182, %2213, %2218, %2195, %2200
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2230 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2230, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2186, %struct.TValue* nonnull %2189, %union.StackValue* %3964, i32 14) #11
  %2231 = load i32, i32* %21, align 8, !tbaa !6
  br label %2232

; <label>:2232:                                   ; preds = %2229, %2224
  %2233 = phi i32 [ %3959, %2224 ], [ %2231, %2229 ]
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %2239, label %2235

; <label>:2235:                                   ; preds = %2232
  %2236 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2237 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2238 = getelementptr inbounds %union.StackValue, %union.StackValue* %2237, i64 1
  br label %2239

; <label>:2239:                                   ; preds = %2232, %2235
  %2240 = phi i32 [ %2236, %2235 ], [ 0, %2232 ]
  %2241 = phi %union.StackValue* [ %2238, %2235 ], [ %3958, %2232 ]
  %2242 = getelementptr inbounds i32, i32* %3960, i64 1
  %2243 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2244:                                   ; preds = %3956
  %2245 = lshr i32 %3957, 16
  %2246 = and i32 %2245, 255
  %2247 = zext i32 %2246 to i64
  %2248 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2247, i32 0
  %2249 = lshr i32 %3957, 24
  %2250 = zext i32 %2249 to i64
  %2251 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2250, i32 0
  %2252 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2247, i32 0, i32 1
  %2253 = load i8, i8* %2252, align 8, !tbaa !2
  switch i8 %2253, label %2291 [
    i8 35, label %2254
    i8 19, label %2257
  ]

; <label>:2254:                                   ; preds = %2244
  %2255 = bitcast %struct.TValue* %2248 to i64*
  %2256 = load i64, i64* %2255, align 8, !tbaa !6
  br label %2268

; <label>:2257:                                   ; preds = %2244
  %2258 = bitcast %struct.TValue* %2248 to double*
  %2259 = load double, double* %2258, align 8, !tbaa !6
  %2260 = call double @llvm.floor.f64(double %2259) #10
  %2261 = fcmp une double %2260, %2259
  br i1 %2261, label %2291, label %2262

; <label>:2262:                                   ; preds = %2257
  %2263 = fcmp oge double %2260, 0xC3E0000000000000
  %2264 = fcmp olt double %2260, 0x43E0000000000000
  %2265 = and i1 %2263, %2264
  br i1 %2265, label %2266, label %2291

; <label>:2266:                                   ; preds = %2262
  %2267 = fptosi double %2260 to i64
  br label %2268

; <label>:2268:                                   ; preds = %2266, %2254
  %2269 = phi i64 [ %2256, %2254 ], [ %2267, %2266 ]
  %2270 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2250, i32 0, i32 1
  %2271 = load i8, i8* %2270, align 8, !tbaa !2
  switch i8 %2271, label %2291 [
    i8 35, label %2272
    i8 19, label %2275
  ]

; <label>:2272:                                   ; preds = %2268
  %2273 = bitcast %struct.TValue* %2251 to i64*
  %2274 = load i64, i64* %2273, align 8, !tbaa !6
  br label %2286

; <label>:2275:                                   ; preds = %2268
  %2276 = bitcast %struct.TValue* %2251 to double*
  %2277 = load double, double* %2276, align 8, !tbaa !6
  %2278 = call double @llvm.floor.f64(double %2277) #10
  %2279 = fcmp une double %2278, %2277
  br i1 %2279, label %2291, label %2280

; <label>:2280:                                   ; preds = %2275
  %2281 = fcmp oge double %2278, 0xC3E0000000000000
  %2282 = fcmp olt double %2278, 0x43E0000000000000
  %2283 = and i1 %2281, %2282
  br i1 %2283, label %2284, label %2291

; <label>:2284:                                   ; preds = %2280
  %2285 = fptosi double %2278 to i64
  br label %2286

; <label>:2286:                                   ; preds = %2284, %2272
  %2287 = phi i64 [ %2274, %2272 ], [ %2285, %2284 ]
  %2288 = xor i64 %2287, %2269
  %2289 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2288, i64* %2289, align 8, !tbaa !6
  %2290 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2290, align 8, !tbaa !2
  br label %2294

; <label>:2291:                                   ; preds = %2268, %2244, %2275, %2280, %2257, %2262
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2292 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2292, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2248, %struct.TValue* nonnull %2251, %union.StackValue* %3964, i32 15) #11
  %2293 = load i32, i32* %21, align 8, !tbaa !6
  br label %2294

; <label>:2294:                                   ; preds = %2291, %2286
  %2295 = phi i32 [ %3959, %2286 ], [ %2293, %2291 ]
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2301, label %2297

; <label>:2297:                                   ; preds = %2294
  %2298 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2299 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2300 = getelementptr inbounds %union.StackValue, %union.StackValue* %2299, i64 1
  br label %2301

; <label>:2301:                                   ; preds = %2294, %2297
  %2302 = phi i32 [ %2298, %2297 ], [ 0, %2294 ]
  %2303 = phi %union.StackValue* [ %2300, %2297 ], [ %3958, %2294 ]
  %2304 = getelementptr inbounds i32, i32* %3960, i64 1
  %2305 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2306:                                   ; preds = %3956
  %2307 = lshr i32 %3957, 16
  %2308 = and i32 %2307, 255
  %2309 = zext i32 %2308 to i64
  %2310 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2309, i32 0
  %2311 = lshr i32 %3957, 24
  %2312 = add nsw i32 %2311, -127
  %2313 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2309, i32 0, i32 1
  %2314 = load i8, i8* %2313, align 8, !tbaa !2
  switch i8 %2314, label %2347 [
    i8 35, label %2315
    i8 19, label %2318
  ]

; <label>:2315:                                   ; preds = %2306
  %2316 = bitcast %struct.TValue* %2310 to i64*
  %2317 = load i64, i64* %2316, align 8, !tbaa !6
  br label %2329

; <label>:2318:                                   ; preds = %2306
  %2319 = bitcast %struct.TValue* %2310 to double*
  %2320 = load double, double* %2319, align 8, !tbaa !6
  %2321 = call double @llvm.floor.f64(double %2320) #10
  %2322 = fcmp une double %2321, %2320
  br i1 %2322, label %2347, label %2323

; <label>:2323:                                   ; preds = %2318
  %2324 = fcmp oge double %2321, 0xC3E0000000000000
  %2325 = fcmp olt double %2321, 0x43E0000000000000
  %2326 = and i1 %2324, %2325
  br i1 %2326, label %2327, label %2347

; <label>:2327:                                   ; preds = %2323
  %2328 = fptosi double %2321 to i64
  br label %2329

; <label>:2329:                                   ; preds = %2327, %2315
  %2330 = phi i64 [ %2317, %2315 ], [ %2328, %2327 ]
  %2331 = sub nsw i32 127, %2311
  %2332 = sext i32 %2331 to i64
  %2333 = icmp slt i32 %2331, 0
  br i1 %2333, label %2334, label %2339

; <label>:2334:                                   ; preds = %2329
  %2335 = icmp slt i32 %2331, -63
  %2336 = sub nsw i64 0, %2332
  %2337 = lshr i64 %2330, %2336
  %2338 = select i1 %2335, i64 0, i64 %2337
  br label %2343

; <label>:2339:                                   ; preds = %2329
  %2340 = icmp sgt i32 %2331, 63
  %2341 = shl i64 %2330, %2332
  %2342 = select i1 %2340, i64 0, i64 %2341
  br label %2343

; <label>:2343:                                   ; preds = %2339, %2334
  %2344 = phi i64 [ %2338, %2334 ], [ %2342, %2339 ]
  %2345 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2344, i64* %2345, align 8, !tbaa !6
  %2346 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2346, align 8, !tbaa !2
  br label %2358

; <label>:2347:                                   ; preds = %2306, %2323, %2318
  %2348 = trunc i32 %3957 to i16
  %2349 = icmp slt i16 %2348, 0
  %2350 = sub nsw i32 127, %2311
  %2351 = lshr i32 %3957, 15
  %2352 = and i32 %2351, 1
  %2353 = sub nsw i32 17, %2352
  %2354 = select i1 %2349, i32 %2350, i32 %2312
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2355 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2355, i64* %19, align 8, !tbaa !25
  %2356 = sext i32 %2354 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2310, i64 %2356, i32 0, %union.StackValue* %3964, i32 %2353) #11
  %2357 = load i32, i32* %21, align 8, !tbaa !6
  br label %2358

; <label>:2358:                                   ; preds = %2347, %2343
  %2359 = phi i32 [ %3959, %2343 ], [ %2357, %2347 ]
  %2360 = icmp eq i32 %2359, 0
  br i1 %2360, label %2365, label %2361

; <label>:2361:                                   ; preds = %2358
  %2362 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2363 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2364 = getelementptr inbounds %union.StackValue, %union.StackValue* %2363, i64 1
  br label %2365

; <label>:2365:                                   ; preds = %2358, %2361
  %2366 = phi i32 [ %2362, %2361 ], [ 0, %2358 ]
  %2367 = phi %union.StackValue* [ %2364, %2361 ], [ %3958, %2358 ]
  %2368 = getelementptr inbounds i32, i32* %3960, i64 1
  %2369 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2370:                                   ; preds = %3956
  %2371 = lshr i32 %3957, 16
  %2372 = and i32 %2371, 255
  %2373 = zext i32 %2372 to i64
  %2374 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2373, i32 0
  %2375 = lshr i32 %3957, 24
  %2376 = add nsw i32 %2375, -127
  %2377 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2373, i32 0, i32 1
  %2378 = load i8, i8* %2377, align 8, !tbaa !2
  switch i8 %2378, label %2410 [
    i8 35, label %2379
    i8 19, label %2382
  ]

; <label>:2379:                                   ; preds = %2370
  %2380 = bitcast %struct.TValue* %2374 to i64*
  %2381 = load i64, i64* %2380, align 8, !tbaa !6
  br label %2393

; <label>:2382:                                   ; preds = %2370
  %2383 = bitcast %struct.TValue* %2374 to double*
  %2384 = load double, double* %2383, align 8, !tbaa !6
  %2385 = call double @llvm.floor.f64(double %2384) #10
  %2386 = fcmp une double %2385, %2384
  br i1 %2386, label %2410, label %2387

; <label>:2387:                                   ; preds = %2382
  %2388 = fcmp oge double %2385, 0xC3E0000000000000
  %2389 = fcmp olt double %2385, 0x43E0000000000000
  %2390 = and i1 %2388, %2389
  br i1 %2390, label %2391, label %2410

; <label>:2391:                                   ; preds = %2387
  %2392 = fptosi double %2385 to i64
  br label %2393

; <label>:2393:                                   ; preds = %2391, %2379
  %2394 = phi i64 [ %2381, %2379 ], [ %2392, %2391 ]
  %2395 = sext i32 %2376 to i64
  %2396 = icmp slt i64 %2394, 0
  br i1 %2396, label %2397, label %2402

; <label>:2397:                                   ; preds = %2393
  %2398 = icmp slt i64 %2394, -63
  %2399 = sub nsw i64 0, %2394
  %2400 = lshr i64 %2395, %2399
  %2401 = select i1 %2398, i64 0, i64 %2400
  br label %2406

; <label>:2402:                                   ; preds = %2393
  %2403 = icmp sgt i64 %2394, 63
  %2404 = shl i64 %2395, %2394
  %2405 = select i1 %2403, i64 0, i64 %2404
  br label %2406

; <label>:2406:                                   ; preds = %2402, %2397
  %2407 = phi i64 [ %2401, %2397 ], [ %2405, %2402 ]
  %2408 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2407, i64* %2408, align 8, !tbaa !6
  %2409 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2409, align 8, !tbaa !2
  br label %2414

; <label>:2410:                                   ; preds = %2370, %2387, %2382
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2411 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2411, i64* %19, align 8, !tbaa !25
  %2412 = sext i32 %2376 to i64
  call void @luaT_trybiniTM(%struct.lua_State* %0, %struct.TValue* nonnull %2374, i64 %2412, i32 1, %union.StackValue* %3964, i32 16) #11
  %2413 = load i32, i32* %21, align 8, !tbaa !6
  br label %2414

; <label>:2414:                                   ; preds = %2410, %2406
  %2415 = phi i32 [ %3959, %2406 ], [ %2413, %2410 ]
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2421, label %2417

; <label>:2417:                                   ; preds = %2414
  %2418 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2419 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2420 = getelementptr inbounds %union.StackValue, %union.StackValue* %2419, i64 1
  br label %2421

; <label>:2421:                                   ; preds = %2414, %2417
  %2422 = phi i32 [ %2418, %2417 ], [ 0, %2414 ]
  %2423 = phi %union.StackValue* [ %2420, %2417 ], [ %3958, %2414 ]
  %2424 = getelementptr inbounds i32, i32* %3960, i64 1
  %2425 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2426:                                   ; preds = %3956
  %2427 = lshr i32 %3957, 16
  %2428 = and i32 %2427, 255
  %2429 = zext i32 %2428 to i64
  %2430 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2429, i32 0
  %2431 = lshr i32 %3957, 24
  %2432 = zext i32 %2431 to i64
  %2433 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2432, i32 0
  %2434 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2429, i32 0, i32 1
  %2435 = load i8, i8* %2434, align 8, !tbaa !2
  switch i8 %2435, label %2484 [
    i8 35, label %2436
    i8 19, label %2439
  ]

; <label>:2436:                                   ; preds = %2426
  %2437 = bitcast %struct.TValue* %2430 to i64*
  %2438 = load i64, i64* %2437, align 8, !tbaa !6
  br label %2450

; <label>:2439:                                   ; preds = %2426
  %2440 = bitcast %struct.TValue* %2430 to double*
  %2441 = load double, double* %2440, align 8, !tbaa !6
  %2442 = call double @llvm.floor.f64(double %2441) #10
  %2443 = fcmp une double %2442, %2441
  br i1 %2443, label %2484, label %2444

; <label>:2444:                                   ; preds = %2439
  %2445 = fcmp oge double %2442, 0xC3E0000000000000
  %2446 = fcmp olt double %2442, 0x43E0000000000000
  %2447 = and i1 %2445, %2446
  br i1 %2447, label %2448, label %2484

; <label>:2448:                                   ; preds = %2444
  %2449 = fptosi double %2442 to i64
  br label %2450

; <label>:2450:                                   ; preds = %2448, %2436
  %2451 = phi i64 [ %2438, %2436 ], [ %2449, %2448 ]
  %2452 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2432, i32 0, i32 1
  %2453 = load i8, i8* %2452, align 8, !tbaa !2
  switch i8 %2453, label %2484 [
    i8 35, label %2454
    i8 19, label %2457
  ]

; <label>:2454:                                   ; preds = %2450
  %2455 = bitcast %struct.TValue* %2433 to i64*
  %2456 = load i64, i64* %2455, align 8, !tbaa !6
  br label %2468

; <label>:2457:                                   ; preds = %2450
  %2458 = bitcast %struct.TValue* %2433 to double*
  %2459 = load double, double* %2458, align 8, !tbaa !6
  %2460 = call double @llvm.floor.f64(double %2459) #10
  %2461 = fcmp une double %2460, %2459
  br i1 %2461, label %2484, label %2462

; <label>:2462:                                   ; preds = %2457
  %2463 = fcmp oge double %2460, 0xC3E0000000000000
  %2464 = fcmp olt double %2460, 0x43E0000000000000
  %2465 = and i1 %2463, %2464
  br i1 %2465, label %2466, label %2484

; <label>:2466:                                   ; preds = %2462
  %2467 = fptosi double %2460 to i64
  br label %2468

; <label>:2468:                                   ; preds = %2466, %2454
  %2469 = phi i64 [ %2456, %2454 ], [ %2467, %2466 ]
  %2470 = icmp sgt i64 %2469, 0
  br i1 %2470, label %2471, label %2475

; <label>:2471:                                   ; preds = %2468
  %2472 = icmp sgt i64 %2469, 63
  %2473 = lshr i64 %2451, %2469
  %2474 = select i1 %2472, i64 0, i64 %2473
  br label %2480

; <label>:2475:                                   ; preds = %2468
  %2476 = sub nsw i64 0, %2469
  %2477 = icmp slt i64 %2469, -63
  %2478 = shl i64 %2451, %2476
  %2479 = select i1 %2477, i64 0, i64 %2478
  br label %2480

; <label>:2480:                                   ; preds = %2475, %2471
  %2481 = phi i64 [ %2474, %2471 ], [ %2479, %2475 ]
  %2482 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2481, i64* %2482, align 8, !tbaa !6
  %2483 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2483, align 8, !tbaa !2
  br label %2487

; <label>:2484:                                   ; preds = %2450, %2426, %2457, %2462, %2439, %2444
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2485 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2485, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2430, %struct.TValue* nonnull %2433, %union.StackValue* %3964, i32 17) #11
  %2486 = load i32, i32* %21, align 8, !tbaa !6
  br label %2487

; <label>:2487:                                   ; preds = %2484, %2480
  %2488 = phi i32 [ %3959, %2480 ], [ %2486, %2484 ]
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2494, label %2490

; <label>:2490:                                   ; preds = %2487
  %2491 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2492 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2493 = getelementptr inbounds %union.StackValue, %union.StackValue* %2492, i64 1
  br label %2494

; <label>:2494:                                   ; preds = %2487, %2490
  %2495 = phi i32 [ %2491, %2490 ], [ 0, %2487 ]
  %2496 = phi %union.StackValue* [ %2493, %2490 ], [ %3958, %2487 ]
  %2497 = getelementptr inbounds i32, i32* %3960, i64 1
  %2498 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2499:                                   ; preds = %3956
  %2500 = lshr i32 %3957, 16
  %2501 = and i32 %2500, 255
  %2502 = zext i32 %2501 to i64
  %2503 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2502, i32 0
  %2504 = lshr i32 %3957, 24
  %2505 = zext i32 %2504 to i64
  %2506 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2505, i32 0
  %2507 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2502, i32 0, i32 1
  %2508 = load i8, i8* %2507, align 8, !tbaa !2
  switch i8 %2508, label %2557 [
    i8 35, label %2509
    i8 19, label %2512
  ]

; <label>:2509:                                   ; preds = %2499
  %2510 = bitcast %struct.TValue* %2503 to i64*
  %2511 = load i64, i64* %2510, align 8, !tbaa !6
  br label %2523

; <label>:2512:                                   ; preds = %2499
  %2513 = bitcast %struct.TValue* %2503 to double*
  %2514 = load double, double* %2513, align 8, !tbaa !6
  %2515 = call double @llvm.floor.f64(double %2514) #10
  %2516 = fcmp une double %2515, %2514
  br i1 %2516, label %2557, label %2517

; <label>:2517:                                   ; preds = %2512
  %2518 = fcmp oge double %2515, 0xC3E0000000000000
  %2519 = fcmp olt double %2515, 0x43E0000000000000
  %2520 = and i1 %2518, %2519
  br i1 %2520, label %2521, label %2557

; <label>:2521:                                   ; preds = %2517
  %2522 = fptosi double %2515 to i64
  br label %2523

; <label>:2523:                                   ; preds = %2521, %2509
  %2524 = phi i64 [ %2511, %2509 ], [ %2522, %2521 ]
  %2525 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2505, i32 0, i32 1
  %2526 = load i8, i8* %2525, align 8, !tbaa !2
  switch i8 %2526, label %2557 [
    i8 35, label %2527
    i8 19, label %2530
  ]

; <label>:2527:                                   ; preds = %2523
  %2528 = bitcast %struct.TValue* %2506 to i64*
  %2529 = load i64, i64* %2528, align 8, !tbaa !6
  br label %2541

; <label>:2530:                                   ; preds = %2523
  %2531 = bitcast %struct.TValue* %2506 to double*
  %2532 = load double, double* %2531, align 8, !tbaa !6
  %2533 = call double @llvm.floor.f64(double %2532) #10
  %2534 = fcmp une double %2533, %2532
  br i1 %2534, label %2557, label %2535

; <label>:2535:                                   ; preds = %2530
  %2536 = fcmp oge double %2533, 0xC3E0000000000000
  %2537 = fcmp olt double %2533, 0x43E0000000000000
  %2538 = and i1 %2536, %2537
  br i1 %2538, label %2539, label %2557

; <label>:2539:                                   ; preds = %2535
  %2540 = fptosi double %2533 to i64
  br label %2541

; <label>:2541:                                   ; preds = %2539, %2527
  %2542 = phi i64 [ %2529, %2527 ], [ %2540, %2539 ]
  %2543 = icmp slt i64 %2542, 0
  br i1 %2543, label %2544, label %2549

; <label>:2544:                                   ; preds = %2541
  %2545 = icmp slt i64 %2542, -63
  %2546 = sub nsw i64 0, %2542
  %2547 = lshr i64 %2524, %2546
  %2548 = select i1 %2545, i64 0, i64 %2547
  br label %2553

; <label>:2549:                                   ; preds = %2541
  %2550 = icmp sgt i64 %2542, 63
  %2551 = shl i64 %2524, %2542
  %2552 = select i1 %2550, i64 0, i64 %2551
  br label %2553

; <label>:2553:                                   ; preds = %2549, %2544
  %2554 = phi i64 [ %2548, %2544 ], [ %2552, %2549 ]
  %2555 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2554, i64* %2555, align 8, !tbaa !6
  %2556 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2556, align 8, !tbaa !2
  br label %2560

; <label>:2557:                                   ; preds = %2523, %2499, %2530, %2535, %2512, %2517
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2558 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2558, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2503, %struct.TValue* nonnull %2506, %union.StackValue* %3964, i32 16) #11
  %2559 = load i32, i32* %21, align 8, !tbaa !6
  br label %2560

; <label>:2560:                                   ; preds = %2557, %2553
  %2561 = phi i32 [ %3959, %2553 ], [ %2559, %2557 ]
  %2562 = icmp eq i32 %2561, 0
  br i1 %2562, label %2567, label %2563

; <label>:2563:                                   ; preds = %2560
  %2564 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2565 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2566 = getelementptr inbounds %union.StackValue, %union.StackValue* %2565, i64 1
  br label %2567

; <label>:2567:                                   ; preds = %2560, %2563
  %2568 = phi i32 [ %2564, %2563 ], [ 0, %2560 ]
  %2569 = phi %union.StackValue* [ %2566, %2563 ], [ %3958, %2560 ]
  %2570 = getelementptr inbounds i32, i32* %3960, i64 1
  %2571 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2572:                                   ; preds = %3956
  %2573 = lshr i32 %3957, 16
  %2574 = and i32 %2573, 255
  %2575 = zext i32 %2574 to i64
  %2576 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2575, i32 0
  %2577 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2575, i32 0, i32 1
  %2578 = load i8, i8* %2577, align 8, !tbaa !2
  switch i8 %2578, label %2591 [
    i8 35, label %2579
    i8 19, label %2585
  ]

; <label>:2579:                                   ; preds = %2572
  %2580 = bitcast %struct.TValue* %2576 to i64*
  %2581 = load i64, i64* %2580, align 8, !tbaa !6
  %2582 = sub i64 0, %2581
  %2583 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2582, i64* %2583, align 8, !tbaa !6
  %2584 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2584, align 8, !tbaa !2
  br label %2594

; <label>:2585:                                   ; preds = %2572
  %2586 = bitcast %struct.TValue* %2576 to double*
  %2587 = load double, double* %2586, align 8, !tbaa !6
  %2588 = fsub double -0.000000e+00, %2587
  %2589 = bitcast %union.StackValue* %3964 to double*
  store double %2588, double* %2589, align 8, !tbaa !6
  %2590 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 19, i8* %2590, align 8, !tbaa !2
  br label %2594

; <label>:2591:                                   ; preds = %2572
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2592 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2592, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* %2576, %struct.TValue* %2576, %union.StackValue* %3964, i32 18) #11
  %2593 = load i32, i32* %21, align 8, !tbaa !6
  br label %2594

; <label>:2594:                                   ; preds = %2585, %2591, %2579
  %2595 = phi i32 [ %3959, %2579 ], [ %3959, %2585 ], [ %2593, %2591 ]
  %2596 = icmp eq i32 %2595, 0
  br i1 %2596, label %2601, label %2597

; <label>:2597:                                   ; preds = %2594
  %2598 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2599 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2600 = getelementptr inbounds %union.StackValue, %union.StackValue* %2599, i64 1
  br label %2601

; <label>:2601:                                   ; preds = %2594, %2597
  %2602 = phi i32 [ %2598, %2597 ], [ 0, %2594 ]
  %2603 = phi %union.StackValue* [ %2600, %2597 ], [ %3958, %2594 ]
  %2604 = getelementptr inbounds i32, i32* %3960, i64 1
  %2605 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2606:                                   ; preds = %3956
  %2607 = lshr i32 %3957, 16
  %2608 = and i32 %2607, 255
  %2609 = zext i32 %2608 to i64
  %2610 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2609, i32 0
  %2611 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2609, i32 0, i32 1
  %2612 = load i8, i8* %2611, align 8, !tbaa !2
  switch i8 %2612, label %2632 [
    i8 35, label %2613
    i8 19, label %2616
  ]

; <label>:2613:                                   ; preds = %2606
  %2614 = bitcast %struct.TValue* %2610 to i64*
  %2615 = load i64, i64* %2614, align 8, !tbaa !6
  br label %2627

; <label>:2616:                                   ; preds = %2606
  %2617 = bitcast %struct.TValue* %2610 to double*
  %2618 = load double, double* %2617, align 8, !tbaa !6
  %2619 = call double @llvm.floor.f64(double %2618) #10
  %2620 = fcmp une double %2619, %2618
  br i1 %2620, label %2632, label %2621

; <label>:2621:                                   ; preds = %2616
  %2622 = fcmp oge double %2619, 0xC3E0000000000000
  %2623 = fcmp olt double %2619, 0x43E0000000000000
  %2624 = and i1 %2622, %2623
  br i1 %2624, label %2625, label %2632

; <label>:2625:                                   ; preds = %2621
  %2626 = fptosi double %2619 to i64
  br label %2627

; <label>:2627:                                   ; preds = %2625, %2613
  %2628 = phi i64 [ %2615, %2613 ], [ %2626, %2625 ]
  %2629 = xor i64 %2628, -1
  %2630 = bitcast %union.StackValue* %3964 to i64*
  store i64 %2629, i64* %2630, align 8, !tbaa !6
  %2631 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 35, i8* %2631, align 8, !tbaa !2
  br label %2635

; <label>:2632:                                   ; preds = %2606, %2621, %2616
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2633 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2633, i64* %19, align 8, !tbaa !25
  call void @luaT_trybinTM(%struct.lua_State* %0, %struct.TValue* nonnull %2610, %struct.TValue* nonnull %2610, %union.StackValue* %3964, i32 19) #11
  %2634 = load i32, i32* %21, align 8, !tbaa !6
  br label %2635

; <label>:2635:                                   ; preds = %2632, %2627
  %2636 = phi i32 [ %3959, %2627 ], [ %2634, %2632 ]
  %2637 = icmp eq i32 %2636, 0
  br i1 %2637, label %2642, label %2638

; <label>:2638:                                   ; preds = %2635
  %2639 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2640 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2641 = getelementptr inbounds %union.StackValue, %union.StackValue* %2640, i64 1
  br label %2642

; <label>:2642:                                   ; preds = %2635, %2638
  %2643 = phi i32 [ %2639, %2638 ], [ 0, %2635 ]
  %2644 = phi %union.StackValue* [ %2641, %2638 ], [ %3958, %2635 ]
  %2645 = getelementptr inbounds i32, i32* %3960, i64 1
  %2646 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2647:                                   ; preds = %3956
  %2648 = lshr i32 %3957, 16
  %2649 = and i32 %2648, 255
  %2650 = zext i32 %2649 to i64
  %2651 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2650, i32 0, i32 1
  %2652 = load i8, i8* %2651, align 8, !tbaa !2
  %2653 = and i8 %2652, 15
  %2654 = icmp eq i8 %2653, 0
  br i1 %2654, label %2662, label %2655

; <label>:2655:                                   ; preds = %2647
  %2656 = icmp eq i8 %2652, 1
  br i1 %2656, label %2657, label %2662

; <label>:2657:                                   ; preds = %2655
  %2658 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2650, i32 0, i32 0
  %2659 = bitcast %union.Value* %2658 to i32*
  %2660 = load i32, i32* %2659, align 8, !tbaa !6
  %2661 = icmp eq i32 %2660, 0
  br label %2662

; <label>:2662:                                   ; preds = %2655, %2657, %2647
  %2663 = phi i1 [ true, %2647 ], [ false, %2655 ], [ %2661, %2657 ]
  %2664 = zext i1 %2663 to i32
  %2665 = bitcast %union.StackValue* %3964 to i32*
  store i32 %2664, i32* %2665, align 8, !tbaa !6
  %2666 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 1, i8* %2666, align 8, !tbaa !2
  %2667 = icmp eq i32 %3959, 0
  br i1 %2667, label %2672, label %2668

; <label>:2668:                                   ; preds = %2662
  %2669 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2670 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2671 = getelementptr inbounds %union.StackValue, %union.StackValue* %2670, i64 1
  br label %2672

; <label>:2672:                                   ; preds = %2662, %2668
  %2673 = phi i32 [ %2669, %2668 ], [ 0, %2662 ]
  %2674 = phi %union.StackValue* [ %2671, %2668 ], [ %3958, %2662 ]
  %2675 = getelementptr inbounds i32, i32* %3960, i64 1
  %2676 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2677:                                   ; preds = %3956
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2678 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2678, i64* %19, align 8, !tbaa !25
  %2679 = lshr i32 %3957, 16
  %2680 = and i32 %2679, 255
  %2681 = zext i32 %2680 to i64
  %2682 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2681, i32 0
  call void @luaV_objlen(%struct.lua_State* %0, %union.StackValue* %3964, %struct.TValue* %2682) #12
  %2683 = load i32, i32* %21, align 8, !tbaa !6
  %2684 = icmp eq i32 %2683, 0
  br i1 %2684, label %2689, label %2685

; <label>:2685:                                   ; preds = %2677
  %2686 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3960) #11
  %2687 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2688 = getelementptr inbounds %union.StackValue, %union.StackValue* %2687, i64 1
  br label %2689

; <label>:2689:                                   ; preds = %2677, %2685
  %2690 = phi i32 [ %2686, %2685 ], [ 0, %2677 ]
  %2691 = phi %union.StackValue* [ %2688, %2685 ], [ %3958, %2677 ]
  %2692 = getelementptr inbounds i32, i32* %3960, i64 1
  %2693 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2694:                                   ; preds = %3956
  %2695 = lshr i32 %3957, 16
  %2696 = and i32 %2695, 255
  %2697 = zext i32 %2696 to i64
  %2698 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 %2697
  store %union.StackValue* %2698, %union.StackValue** %18, align 8, !tbaa !25
  store i32* %3960, i32** %15, align 8, !tbaa !6
  call void @luaV_concat(%struct.lua_State* %0, i32 %2696) #12
  %2699 = load %struct.global_State*, %struct.global_State** %22, align 8, !tbaa !16
  %2700 = getelementptr inbounds %struct.global_State, %struct.global_State* %2699, i64 0, i32 3
  %2701 = load i64, i64* %2700, align 8, !tbaa !43
  %2702 = icmp sgt i64 %2701, 0
  br i1 %2702, label %2703, label %2704

; <label>:2703:                                   ; preds = %2694
  call void @luaC_step(%struct.lua_State* nonnull %0) #11
  br label %2704

; <label>:2704:                                   ; preds = %2703, %2694
  %2705 = load i32, i32* %21, align 8, !tbaa !6
  %2706 = icmp eq i32 %2705, 0
  br i1 %2706, label %2711, label %2707

; <label>:2707:                                   ; preds = %2704
  %2708 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3960) #11
  %2709 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2710 = getelementptr inbounds %union.StackValue, %union.StackValue* %2709, i64 1
  br label %2711

; <label>:2711:                                   ; preds = %2704, %2707
  %2712 = phi i32 [ %2708, %2707 ], [ 0, %2704 ]
  %2713 = phi %union.StackValue* [ %2710, %2707 ], [ %3958, %2704 ]
  %2714 = getelementptr inbounds i32, i32* %3960, i64 1
  %2715 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2716:                                   ; preds = %3956
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2717 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2717, i64* %19, align 8, !tbaa !25
  %2718 = call i32 @luaF_close(%struct.lua_State* %0, %union.StackValue* %3964, i32 0) #11
  %2719 = load i32, i32* %21, align 8, !tbaa !6
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2725, label %2721

; <label>:2721:                                   ; preds = %2716
  %2722 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3960) #11
  %2723 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2724 = getelementptr inbounds %union.StackValue, %union.StackValue* %2723, i64 1
  br label %2725

; <label>:2725:                                   ; preds = %2716, %2721
  %2726 = phi i32 [ %2722, %2721 ], [ 0, %2716 ]
  %2727 = phi %union.StackValue* [ %2724, %2721 ], [ %3958, %2716 ]
  %2728 = getelementptr inbounds i32, i32* %3960, i64 1
  %2729 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2730:                                   ; preds = %3956
  store i32* %3960, i32** %15, align 8, !tbaa !6
  call void @luaF_newtbcupval(%struct.lua_State* %0, %union.StackValue* %3964) #11
  %2731 = icmp eq i32 %3959, 0
  br i1 %2731, label %2736, label %2732

; <label>:2732:                                   ; preds = %2730
  %2733 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %2734 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2735 = getelementptr inbounds %union.StackValue, %union.StackValue* %2734, i64 1
  br label %2736

; <label>:2736:                                   ; preds = %2730, %2732
  %2737 = phi i32 [ %2733, %2732 ], [ 0, %2730 ]
  %2738 = phi %union.StackValue* [ %2735, %2732 ], [ %3958, %2730 ]
  %2739 = getelementptr inbounds i32, i32* %3960, i64 1
  %2740 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:2741:                                   ; preds = %3956
  %2742 = lshr i32 %3957, 7
  %2743 = add nsw i32 %2742, -16777215
  %2744 = sext i32 %2743 to i64
  %2745 = getelementptr inbounds i32, i32* %3960, i64 %2744
  %2746 = load i32, i32* %21, align 8, !tbaa !6
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2752, label %2748

; <label>:2748:                                   ; preds = %2741
  %2749 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2745) #11
  %2750 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2751 = getelementptr inbounds %union.StackValue, %union.StackValue* %2750, i64 1
  br label %2752

; <label>:2752:                                   ; preds = %2741, %2748
  %2753 = phi i32 [ %2749, %2748 ], [ 0, %2741 ]
  %2754 = phi %union.StackValue* [ %2751, %2748 ], [ %3958, %2741 ]
  %2755 = getelementptr inbounds i32, i32* %2745, i64 1
  %2756 = load i32, i32* %2745, align 4, !tbaa !31
  br label %85

; <label>:2757:                                   ; preds = %3956
  %2758 = lshr i32 %3957, 16
  %2759 = and i32 %2758, 255
  %2760 = zext i32 %2759 to i64
  %2761 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2760, i32 0
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2762 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2762, i64* %19, align 8, !tbaa !25
  %2763 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %2764 = call i32 @luaV_equalobj(%struct.lua_State* %0, %struct.TValue* %2763, %struct.TValue* %2761) #12
  %2765 = load i32, i32* %21, align 8, !tbaa !6
  %2766 = lshr i32 %3957, 15
  %2767 = and i32 %2766, 1
  %2768 = icmp eq i32 %2764, %2767
  br i1 %2768, label %2769, label %2774

; <label>:2769:                                   ; preds = %2757
  %2770 = load i32, i32* %3960, align 4, !tbaa !31
  %2771 = lshr i32 %2770, 7
  %2772 = add nsw i32 %2771, -16777214
  %2773 = sext i32 %2772 to i64
  br label %2774

; <label>:2774:                                   ; preds = %2757, %2769
  %2775 = phi i64 [ %2773, %2769 ], [ 1, %2757 ]
  %2776 = getelementptr inbounds i32, i32* %3960, i64 %2775
  %2777 = icmp eq i32 %2765, 0
  br i1 %2777, label %2782, label %2778

; <label>:2778:                                   ; preds = %2774
  %2779 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %2776) #11
  %2780 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2781 = getelementptr inbounds %union.StackValue, %union.StackValue* %2780, i64 1
  br label %2782

; <label>:2782:                                   ; preds = %2774, %2778
  %2783 = phi i32 [ %2779, %2778 ], [ 0, %2774 ]
  %2784 = phi %union.StackValue* [ %2781, %2778 ], [ %3958, %2774 ]
  %2785 = getelementptr inbounds i32, i32* %2776, i64 1
  %2786 = load i32, i32* %2776, align 4, !tbaa !31
  br label %85

; <label>:2787:                                   ; preds = %3956
  %2788 = lshr i32 %3957, 16
  %2789 = and i32 %2788, 255
  %2790 = zext i32 %2789 to i64
  %2791 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2790, i32 0
  %2792 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %2793 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %2794 = load i8, i8* %2793, align 8, !tbaa !6
  %2795 = icmp eq i8 %2794, 35
  br i1 %2795, label %2796, label %2807

; <label>:2796:                                   ; preds = %2787
  %2797 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2790, i32 0, i32 1
  %2798 = load i8, i8* %2797, align 8, !tbaa !2
  %2799 = icmp eq i8 %2798, 35
  br i1 %2799, label %2800, label %2813

; <label>:2800:                                   ; preds = %2796
  %2801 = bitcast %union.StackValue* %3964 to i64*
  %2802 = load i64, i64* %2801, align 8, !tbaa !6
  %2803 = bitcast %struct.TValue* %2791 to i64*
  %2804 = load i64, i64* %2803, align 8, !tbaa !6
  %2805 = icmp slt i64 %2802, %2804
  %2806 = zext i1 %2805 to i32
  br label %2823

; <label>:2807:                                   ; preds = %2787
  %2808 = and i8 %2794, 15
  %2809 = icmp eq i8 %2808, 3
  br i1 %2809, label %2810, label %2819

; <label>:2810:                                   ; preds = %2807
  %2811 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2790, i32 0, i32 1
  %2812 = load i8, i8* %2811, align 8, !tbaa !2
  br label %2813

; <label>:2813:                                   ; preds = %2810, %2796
  %2814 = phi i8 [ %2812, %2810 ], [ %2798, %2796 ]
  %2815 = and i8 %2814, 15
  %2816 = icmp eq i8 %2815, 3
  br i1 %2816, label %2817, label %2819

; <label>:2817:                                   ; preds = %2813
  %2818 = call fastcc i32 @LTnum(%struct.TValue* %2792, %struct.TValue* nonnull %2791) #12
  br label %2823

; <label>:2819:                                   ; preds = %2813, %2807
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2820 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2820, i64* %19, align 8, !tbaa !25
  %2821 = call fastcc i32 @lessthanothers(%struct.lua_State* %0, %struct.TValue* %2792, %struct.TValue* %2791) #12
  %2822 = load i32, i32* %21, align 8, !tbaa !6
  br label %2823

; <label>:2823:                                   ; preds = %2817, %2819, %2800
  %2824 = phi i32 [ %2806, %2800 ], [ %2818, %2817 ], [ %2821, %2819 ]
  %2825 = phi i32 [ %3959, %2800 ], [ %3959, %2817 ], [ %2822, %2819 ]
  %2826 = lshr i32 %3957, 15
  %2827 = and i32 %2826, 1
  %2828 = icmp eq i32 %2824, %2827
  br i1 %2828, label %2831, label %2829

; <label>:2829:                                   ; preds = %2823
  %2830 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %2838

; <label>:2831:                                   ; preds = %2823
  %2832 = load i32, i32* %3960, align 4, !tbaa !31
  %2833 = lshr i32 %2832, 7
  %2834 = add nsw i32 %2833, -16777214
  %2835 = sext i32 %2834 to i64
  %2836 = getelementptr inbounds i32, i32* %3960, i64 %2835
  %2837 = load i32, i32* %21, align 8, !tbaa !6
  br label %2838

; <label>:2838:                                   ; preds = %2831, %2829
  %2839 = phi i32 [ %2825, %2829 ], [ %2837, %2831 ]
  %2840 = phi i32* [ %2830, %2829 ], [ %2836, %2831 ]
  %2841 = icmp eq i32 %2839, 0
  br i1 %2841, label %2846, label %2842

; <label>:2842:                                   ; preds = %2838
  %2843 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2840) #11
  %2844 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2845 = getelementptr inbounds %union.StackValue, %union.StackValue* %2844, i64 1
  br label %2846

; <label>:2846:                                   ; preds = %2838, %2842
  %2847 = phi i32 [ %2843, %2842 ], [ 0, %2838 ]
  %2848 = phi %union.StackValue* [ %2845, %2842 ], [ %3958, %2838 ]
  %2849 = getelementptr inbounds i32, i32* %2840, i64 1
  %2850 = load i32, i32* %2840, align 4, !tbaa !31
  br label %85

; <label>:2851:                                   ; preds = %3956
  %2852 = lshr i32 %3957, 16
  %2853 = and i32 %2852, 255
  %2854 = zext i32 %2853 to i64
  %2855 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2854, i32 0
  %2856 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %2857 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %2858 = load i8, i8* %2857, align 8, !tbaa !6
  %2859 = icmp eq i8 %2858, 35
  br i1 %2859, label %2860, label %2871

; <label>:2860:                                   ; preds = %2851
  %2861 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2854, i32 0, i32 1
  %2862 = load i8, i8* %2861, align 8, !tbaa !2
  %2863 = icmp eq i8 %2862, 35
  br i1 %2863, label %2864, label %2877

; <label>:2864:                                   ; preds = %2860
  %2865 = bitcast %union.StackValue* %3964 to i64*
  %2866 = load i64, i64* %2865, align 8, !tbaa !6
  %2867 = bitcast %struct.TValue* %2855 to i64*
  %2868 = load i64, i64* %2867, align 8, !tbaa !6
  %2869 = icmp sle i64 %2866, %2868
  %2870 = zext i1 %2869 to i32
  br label %2887

; <label>:2871:                                   ; preds = %2851
  %2872 = and i8 %2858, 15
  %2873 = icmp eq i8 %2872, 3
  br i1 %2873, label %2874, label %2883

; <label>:2874:                                   ; preds = %2871
  %2875 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %2854, i32 0, i32 1
  %2876 = load i8, i8* %2875, align 8, !tbaa !2
  br label %2877

; <label>:2877:                                   ; preds = %2874, %2860
  %2878 = phi i8 [ %2876, %2874 ], [ %2862, %2860 ]
  %2879 = and i8 %2878, 15
  %2880 = icmp eq i8 %2879, 3
  br i1 %2880, label %2881, label %2883

; <label>:2881:                                   ; preds = %2877
  %2882 = call fastcc i32 @LEnum(%struct.TValue* %2856, %struct.TValue* nonnull %2855) #12
  br label %2887

; <label>:2883:                                   ; preds = %2877, %2871
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %2884 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %2884, i64* %19, align 8, !tbaa !25
  %2885 = call fastcc i32 @lessequalothers(%struct.lua_State* %0, %struct.TValue* %2856, %struct.TValue* %2855) #12
  %2886 = load i32, i32* %21, align 8, !tbaa !6
  br label %2887

; <label>:2887:                                   ; preds = %2881, %2883, %2864
  %2888 = phi i32 [ %2870, %2864 ], [ %2882, %2881 ], [ %2885, %2883 ]
  %2889 = phi i32 [ %3959, %2864 ], [ %3959, %2881 ], [ %2886, %2883 ]
  %2890 = lshr i32 %3957, 15
  %2891 = and i32 %2890, 1
  %2892 = icmp eq i32 %2888, %2891
  br i1 %2892, label %2895, label %2893

; <label>:2893:                                   ; preds = %2887
  %2894 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %2902

; <label>:2895:                                   ; preds = %2887
  %2896 = load i32, i32* %3960, align 4, !tbaa !31
  %2897 = lshr i32 %2896, 7
  %2898 = add nsw i32 %2897, -16777214
  %2899 = sext i32 %2898 to i64
  %2900 = getelementptr inbounds i32, i32* %3960, i64 %2899
  %2901 = load i32, i32* %21, align 8, !tbaa !6
  br label %2902

; <label>:2902:                                   ; preds = %2895, %2893
  %2903 = phi i32 [ %2889, %2893 ], [ %2901, %2895 ]
  %2904 = phi i32* [ %2894, %2893 ], [ %2900, %2895 ]
  %2905 = icmp eq i32 %2903, 0
  br i1 %2905, label %2910, label %2906

; <label>:2906:                                   ; preds = %2902
  %2907 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2904) #11
  %2908 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2909 = getelementptr inbounds %union.StackValue, %union.StackValue* %2908, i64 1
  br label %2910

; <label>:2910:                                   ; preds = %2902, %2906
  %2911 = phi i32 [ %2907, %2906 ], [ 0, %2902 ]
  %2912 = phi %union.StackValue* [ %2909, %2906 ], [ %3958, %2902 ]
  %2913 = getelementptr inbounds i32, i32* %2904, i64 1
  %2914 = load i32, i32* %2904, align 4, !tbaa !31
  br label %85

; <label>:2915:                                   ; preds = %3956
  %2916 = lshr i32 %3957, 16
  %2917 = and i32 %2916, 255
  %2918 = zext i32 %2917 to i64
  %2919 = getelementptr inbounds %struct.TValue, %struct.TValue* %41, i64 %2918
  %2920 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %2921 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.TValue* %2920, %struct.TValue* %2919) #12
  %2922 = lshr i32 %3957, 15
  %2923 = and i32 %2922, 1
  %2924 = icmp eq i32 %2921, %2923
  br i1 %2924, label %2927, label %2925

; <label>:2925:                                   ; preds = %2915
  %2926 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %2934

; <label>:2927:                                   ; preds = %2915
  %2928 = load i32, i32* %3960, align 4, !tbaa !31
  %2929 = lshr i32 %2928, 7
  %2930 = add nsw i32 %2929, -16777214
  %2931 = sext i32 %2930 to i64
  %2932 = getelementptr inbounds i32, i32* %3960, i64 %2931
  %2933 = load i32, i32* %21, align 8, !tbaa !6
  br label %2934

; <label>:2934:                                   ; preds = %2927, %2925
  %2935 = phi i32 [ %3959, %2925 ], [ %2933, %2927 ]
  %2936 = phi i32* [ %2926, %2925 ], [ %2932, %2927 ]
  %2937 = icmp eq i32 %2935, 0
  br i1 %2937, label %2942, label %2938

; <label>:2938:                                   ; preds = %2934
  %2939 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2936) #11
  %2940 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2941 = getelementptr inbounds %union.StackValue, %union.StackValue* %2940, i64 1
  br label %2942

; <label>:2942:                                   ; preds = %2934, %2938
  %2943 = phi i32 [ %2939, %2938 ], [ 0, %2934 ]
  %2944 = phi %union.StackValue* [ %2941, %2938 ], [ %3958, %2934 ]
  %2945 = getelementptr inbounds i32, i32* %2936, i64 1
  %2946 = load i32, i32* %2936, align 4, !tbaa !31
  br label %85

; <label>:2947:                                   ; preds = %3956
  %2948 = lshr i32 %3957, 16
  %2949 = and i32 %2948, 255
  %2950 = add nsw i32 %2949, -127
  %2951 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %2952 = load i8, i8* %2951, align 8, !tbaa !6
  switch i8 %2952, label %2953 [
    i8 35, label %2956
    i8 19, label %2961
  ]

; <label>:2953:                                   ; preds = %2947
  %2954 = trunc i32 %3957 to i16
  %2955 = icmp slt i16 %2954, 0
  br i1 %2955, label %2971, label %2973

; <label>:2956:                                   ; preds = %2947
  %2957 = bitcast %union.StackValue* %3964 to i64*
  %2958 = load i64, i64* %2957, align 8, !tbaa !6
  %2959 = sext i32 %2950 to i64
  %2960 = icmp eq i64 %2958, %2959
  br label %2966

; <label>:2961:                                   ; preds = %2947
  %2962 = bitcast %union.StackValue* %3964 to double*
  %2963 = load double, double* %2962, align 8, !tbaa !6
  %2964 = sitofp i32 %2950 to double
  %2965 = fcmp oeq double %2963, %2964
  br label %2966

; <label>:2966:                                   ; preds = %2961, %2956
  %2967 = phi i1 [ %2960, %2956 ], [ %2965, %2961 ]
  %2968 = trunc i32 %3957 to i16
  %2969 = icmp slt i16 %2968, 0
  %2970 = xor i1 %2969, %2967
  br i1 %2970, label %2971, label %2973

; <label>:2971:                                   ; preds = %2953, %2966
  %2972 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %2980

; <label>:2973:                                   ; preds = %2953, %2966
  %2974 = load i32, i32* %3960, align 4, !tbaa !31
  %2975 = lshr i32 %2974, 7
  %2976 = add nsw i32 %2975, -16777214
  %2977 = sext i32 %2976 to i64
  %2978 = getelementptr inbounds i32, i32* %3960, i64 %2977
  %2979 = load i32, i32* %21, align 8, !tbaa !6
  br label %2980

; <label>:2980:                                   ; preds = %2973, %2971
  %2981 = phi i32 [ %3959, %2971 ], [ %2979, %2973 ]
  %2982 = phi i32* [ %2972, %2971 ], [ %2978, %2973 ]
  %2983 = icmp eq i32 %2981, 0
  br i1 %2983, label %2988, label %2984

; <label>:2984:                                   ; preds = %2980
  %2985 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %2982) #11
  %2986 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %2987 = getelementptr inbounds %union.StackValue, %union.StackValue* %2986, i64 1
  br label %2988

; <label>:2988:                                   ; preds = %2980, %2984
  %2989 = phi i32 [ %2985, %2984 ], [ 0, %2980 ]
  %2990 = phi %union.StackValue* [ %2987, %2984 ], [ %3958, %2980 ]
  %2991 = getelementptr inbounds i32, i32* %2982, i64 1
  %2992 = load i32, i32* %2982, align 4, !tbaa !31
  br label %85

; <label>:2993:                                   ; preds = %3956
  %2994 = lshr i32 %3957, 16
  %2995 = and i32 %2994, 255
  %2996 = add nsw i32 %2995, -127
  %2997 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %2998 = load i8, i8* %2997, align 8, !tbaa !6
  switch i8 %2998, label %3011 [
    i8 35, label %2999
    i8 19, label %3005
  ]

; <label>:2999:                                   ; preds = %2993
  %3000 = bitcast %union.StackValue* %3964 to i64*
  %3001 = load i64, i64* %3000, align 8, !tbaa !6
  %3002 = sext i32 %2996 to i64
  %3003 = icmp slt i64 %3001, %3002
  %3004 = zext i1 %3003 to i32
  br label %3017

; <label>:3005:                                   ; preds = %2993
  %3006 = bitcast %union.StackValue* %3964 to double*
  %3007 = load double, double* %3006, align 8, !tbaa !6
  %3008 = sitofp i32 %2996 to double
  %3009 = fcmp olt double %3007, %3008
  %3010 = zext i1 %3009 to i32
  br label %3017

; <label>:3011:                                   ; preds = %2993
  %3012 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %3013 = lshr i32 %3957, 24
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3014 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %3014, i64* %19, align 8, !tbaa !25
  %3015 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3012, i32 %2996, i32 0, i32 %3013, i32 20) #11
  %3016 = load i32, i32* %21, align 8, !tbaa !6
  br label %3017

; <label>:3017:                                   ; preds = %3005, %3011, %2999
  %3018 = phi i32 [ %3004, %2999 ], [ %3010, %3005 ], [ %3015, %3011 ]
  %3019 = phi i32 [ %3959, %2999 ], [ %3959, %3005 ], [ %3016, %3011 ]
  %3020 = lshr i32 %3957, 15
  %3021 = and i32 %3020, 1
  %3022 = icmp eq i32 %3018, %3021
  br i1 %3022, label %3025, label %3023

; <label>:3023:                                   ; preds = %3017
  %3024 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %3032

; <label>:3025:                                   ; preds = %3017
  %3026 = load i32, i32* %3960, align 4, !tbaa !31
  %3027 = lshr i32 %3026, 7
  %3028 = add nsw i32 %3027, -16777214
  %3029 = sext i32 %3028 to i64
  %3030 = getelementptr inbounds i32, i32* %3960, i64 %3029
  %3031 = load i32, i32* %21, align 8, !tbaa !6
  br label %3032

; <label>:3032:                                   ; preds = %3025, %3023
  %3033 = phi i32 [ %3019, %3023 ], [ %3031, %3025 ]
  %3034 = phi i32* [ %3024, %3023 ], [ %3030, %3025 ]
  %3035 = icmp eq i32 %3033, 0
  br i1 %3035, label %3040, label %3036

; <label>:3036:                                   ; preds = %3032
  %3037 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3034) #11
  %3038 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3039 = getelementptr inbounds %union.StackValue, %union.StackValue* %3038, i64 1
  br label %3040

; <label>:3040:                                   ; preds = %3032, %3036
  %3041 = phi i32 [ %3037, %3036 ], [ 0, %3032 ]
  %3042 = phi %union.StackValue* [ %3039, %3036 ], [ %3958, %3032 ]
  %3043 = getelementptr inbounds i32, i32* %3034, i64 1
  %3044 = load i32, i32* %3034, align 4, !tbaa !31
  br label %85

; <label>:3045:                                   ; preds = %3956
  %3046 = lshr i32 %3957, 16
  %3047 = and i32 %3046, 255
  %3048 = add nsw i32 %3047, -127
  %3049 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %3050 = load i8, i8* %3049, align 8, !tbaa !6
  switch i8 %3050, label %3063 [
    i8 35, label %3051
    i8 19, label %3057
  ]

; <label>:3051:                                   ; preds = %3045
  %3052 = bitcast %union.StackValue* %3964 to i64*
  %3053 = load i64, i64* %3052, align 8, !tbaa !6
  %3054 = sext i32 %3048 to i64
  %3055 = icmp sle i64 %3053, %3054
  %3056 = zext i1 %3055 to i32
  br label %3069

; <label>:3057:                                   ; preds = %3045
  %3058 = bitcast %union.StackValue* %3964 to double*
  %3059 = load double, double* %3058, align 8, !tbaa !6
  %3060 = sitofp i32 %3048 to double
  %3061 = fcmp ole double %3059, %3060
  %3062 = zext i1 %3061 to i32
  br label %3069

; <label>:3063:                                   ; preds = %3045
  %3064 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %3065 = lshr i32 %3957, 24
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3066 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %3066, i64* %19, align 8, !tbaa !25
  %3067 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3064, i32 %3048, i32 0, i32 %3065, i32 21) #11
  %3068 = load i32, i32* %21, align 8, !tbaa !6
  br label %3069

; <label>:3069:                                   ; preds = %3057, %3063, %3051
  %3070 = phi i32 [ %3056, %3051 ], [ %3062, %3057 ], [ %3067, %3063 ]
  %3071 = phi i32 [ %3959, %3051 ], [ %3959, %3057 ], [ %3068, %3063 ]
  %3072 = lshr i32 %3957, 15
  %3073 = and i32 %3072, 1
  %3074 = icmp eq i32 %3070, %3073
  br i1 %3074, label %3077, label %3075

; <label>:3075:                                   ; preds = %3069
  %3076 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %3084

; <label>:3077:                                   ; preds = %3069
  %3078 = load i32, i32* %3960, align 4, !tbaa !31
  %3079 = lshr i32 %3078, 7
  %3080 = add nsw i32 %3079, -16777214
  %3081 = sext i32 %3080 to i64
  %3082 = getelementptr inbounds i32, i32* %3960, i64 %3081
  %3083 = load i32, i32* %21, align 8, !tbaa !6
  br label %3084

; <label>:3084:                                   ; preds = %3077, %3075
  %3085 = phi i32 [ %3071, %3075 ], [ %3083, %3077 ]
  %3086 = phi i32* [ %3076, %3075 ], [ %3082, %3077 ]
  %3087 = icmp eq i32 %3085, 0
  br i1 %3087, label %3092, label %3088

; <label>:3088:                                   ; preds = %3084
  %3089 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3086) #11
  %3090 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3091 = getelementptr inbounds %union.StackValue, %union.StackValue* %3090, i64 1
  br label %3092

; <label>:3092:                                   ; preds = %3084, %3088
  %3093 = phi i32 [ %3089, %3088 ], [ 0, %3084 ]
  %3094 = phi %union.StackValue* [ %3091, %3088 ], [ %3958, %3084 ]
  %3095 = getelementptr inbounds i32, i32* %3086, i64 1
  %3096 = load i32, i32* %3086, align 4, !tbaa !31
  br label %85

; <label>:3097:                                   ; preds = %3956
  %3098 = lshr i32 %3957, 16
  %3099 = and i32 %3098, 255
  %3100 = add nsw i32 %3099, -127
  %3101 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %3102 = load i8, i8* %3101, align 8, !tbaa !6
  switch i8 %3102, label %3115 [
    i8 35, label %3103
    i8 19, label %3109
  ]

; <label>:3103:                                   ; preds = %3097
  %3104 = bitcast %union.StackValue* %3964 to i64*
  %3105 = load i64, i64* %3104, align 8, !tbaa !6
  %3106 = sext i32 %3100 to i64
  %3107 = icmp sgt i64 %3105, %3106
  %3108 = zext i1 %3107 to i32
  br label %3121

; <label>:3109:                                   ; preds = %3097
  %3110 = bitcast %union.StackValue* %3964 to double*
  %3111 = load double, double* %3110, align 8, !tbaa !6
  %3112 = sitofp i32 %3100 to double
  %3113 = fcmp ogt double %3111, %3112
  %3114 = zext i1 %3113 to i32
  br label %3121

; <label>:3115:                                   ; preds = %3097
  %3116 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %3117 = lshr i32 %3957, 24
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3118 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %3118, i64* %19, align 8, !tbaa !25
  %3119 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3116, i32 %3100, i32 1, i32 %3117, i32 20) #11
  %3120 = load i32, i32* %21, align 8, !tbaa !6
  br label %3121

; <label>:3121:                                   ; preds = %3109, %3115, %3103
  %3122 = phi i32 [ %3108, %3103 ], [ %3114, %3109 ], [ %3119, %3115 ]
  %3123 = phi i32 [ %3959, %3103 ], [ %3959, %3109 ], [ %3120, %3115 ]
  %3124 = lshr i32 %3957, 15
  %3125 = and i32 %3124, 1
  %3126 = icmp eq i32 %3122, %3125
  br i1 %3126, label %3129, label %3127

; <label>:3127:                                   ; preds = %3121
  %3128 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %3136

; <label>:3129:                                   ; preds = %3121
  %3130 = load i32, i32* %3960, align 4, !tbaa !31
  %3131 = lshr i32 %3130, 7
  %3132 = add nsw i32 %3131, -16777214
  %3133 = sext i32 %3132 to i64
  %3134 = getelementptr inbounds i32, i32* %3960, i64 %3133
  %3135 = load i32, i32* %21, align 8, !tbaa !6
  br label %3136

; <label>:3136:                                   ; preds = %3129, %3127
  %3137 = phi i32 [ %3123, %3127 ], [ %3135, %3129 ]
  %3138 = phi i32* [ %3128, %3127 ], [ %3134, %3129 ]
  %3139 = icmp eq i32 %3137, 0
  br i1 %3139, label %3144, label %3140

; <label>:3140:                                   ; preds = %3136
  %3141 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3138) #11
  %3142 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3143 = getelementptr inbounds %union.StackValue, %union.StackValue* %3142, i64 1
  br label %3144

; <label>:3144:                                   ; preds = %3136, %3140
  %3145 = phi i32 [ %3141, %3140 ], [ 0, %3136 ]
  %3146 = phi %union.StackValue* [ %3143, %3140 ], [ %3958, %3136 ]
  %3147 = getelementptr inbounds i32, i32* %3138, i64 1
  %3148 = load i32, i32* %3138, align 4, !tbaa !31
  br label %85

; <label>:3149:                                   ; preds = %3956
  %3150 = lshr i32 %3957, 16
  %3151 = and i32 %3150, 255
  %3152 = add nsw i32 %3151, -127
  %3153 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %3154 = load i8, i8* %3153, align 8, !tbaa !6
  switch i8 %3154, label %3167 [
    i8 35, label %3155
    i8 19, label %3161
  ]

; <label>:3155:                                   ; preds = %3149
  %3156 = bitcast %union.StackValue* %3964 to i64*
  %3157 = load i64, i64* %3156, align 8, !tbaa !6
  %3158 = sext i32 %3152 to i64
  %3159 = icmp sge i64 %3157, %3158
  %3160 = zext i1 %3159 to i32
  br label %3173

; <label>:3161:                                   ; preds = %3149
  %3162 = bitcast %union.StackValue* %3964 to double*
  %3163 = load double, double* %3162, align 8, !tbaa !6
  %3164 = sitofp i32 %3152 to double
  %3165 = fcmp oge double %3163, %3164
  %3166 = zext i1 %3165 to i32
  br label %3173

; <label>:3167:                                   ; preds = %3149
  %3168 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %3169 = lshr i32 %3957, 24
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3170 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %3170, i64* %19, align 8, !tbaa !25
  %3171 = call i32 @luaT_callorderiTM(%struct.lua_State* %0, %struct.TValue* %3168, i32 %3152, i32 1, i32 %3169, i32 21) #11
  %3172 = load i32, i32* %21, align 8, !tbaa !6
  br label %3173

; <label>:3173:                                   ; preds = %3161, %3167, %3155
  %3174 = phi i32 [ %3160, %3155 ], [ %3166, %3161 ], [ %3171, %3167 ]
  %3175 = phi i32 [ %3959, %3155 ], [ %3959, %3161 ], [ %3172, %3167 ]
  %3176 = lshr i32 %3957, 15
  %3177 = and i32 %3176, 1
  %3178 = icmp eq i32 %3174, %3177
  br i1 %3178, label %3181, label %3179

; <label>:3179:                                   ; preds = %3173
  %3180 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %3188

; <label>:3181:                                   ; preds = %3173
  %3182 = load i32, i32* %3960, align 4, !tbaa !31
  %3183 = lshr i32 %3182, 7
  %3184 = add nsw i32 %3183, -16777214
  %3185 = sext i32 %3184 to i64
  %3186 = getelementptr inbounds i32, i32* %3960, i64 %3185
  %3187 = load i32, i32* %21, align 8, !tbaa !6
  br label %3188

; <label>:3188:                                   ; preds = %3181, %3179
  %3189 = phi i32 [ %3175, %3179 ], [ %3187, %3181 ]
  %3190 = phi i32* [ %3180, %3179 ], [ %3186, %3181 ]
  %3191 = icmp eq i32 %3189, 0
  br i1 %3191, label %3196, label %3192

; <label>:3192:                                   ; preds = %3188
  %3193 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3190) #11
  %3194 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3195 = getelementptr inbounds %union.StackValue, %union.StackValue* %3194, i64 1
  br label %3196

; <label>:3196:                                   ; preds = %3188, %3192
  %3197 = phi i32 [ %3193, %3192 ], [ 0, %3188 ]
  %3198 = phi %union.StackValue* [ %3195, %3192 ], [ %3958, %3188 ]
  %3199 = getelementptr inbounds i32, i32* %3190, i64 1
  %3200 = load i32, i32* %3190, align 4, !tbaa !31
  br label %85

; <label>:3201:                                   ; preds = %3956
  %3202 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %3203 = load i8, i8* %3202, align 8, !tbaa !6
  %3204 = and i8 %3203, 15
  %3205 = icmp eq i8 %3204, 0
  br i1 %3205, label %3206, label %3209

; <label>:3206:                                   ; preds = %3201
  %3207 = trunc i32 %3957 to i16
  %3208 = icmp slt i16 %3207, 0
  br i1 %3208, label %3221, label %3223

; <label>:3209:                                   ; preds = %3201
  %3210 = icmp eq i8 %3203, 1
  br i1 %3210, label %3214, label %3211

; <label>:3211:                                   ; preds = %3209
  %3212 = trunc i32 %3957 to i16
  %3213 = icmp sgt i16 %3212, -1
  br i1 %3213, label %3221, label %3223

; <label>:3214:                                   ; preds = %3209
  %3215 = bitcast %union.StackValue* %3964 to i32*
  %3216 = load i32, i32* %3215, align 8, !tbaa !6
  %3217 = icmp ne i32 %3216, 0
  %3218 = trunc i32 %3957 to i16
  %3219 = icmp slt i16 %3218, 0
  %3220 = xor i1 %3219, %3217
  br i1 %3220, label %3221, label %3223

; <label>:3221:                                   ; preds = %3211, %3206, %3214
  %3222 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %3230

; <label>:3223:                                   ; preds = %3211, %3206, %3214
  %3224 = load i32, i32* %3960, align 4, !tbaa !31
  %3225 = lshr i32 %3224, 7
  %3226 = add nsw i32 %3225, -16777214
  %3227 = sext i32 %3226 to i64
  %3228 = getelementptr inbounds i32, i32* %3960, i64 %3227
  %3229 = load i32, i32* %21, align 8, !tbaa !6
  br label %3230

; <label>:3230:                                   ; preds = %3223, %3221
  %3231 = phi i32 [ %3959, %3221 ], [ %3229, %3223 ]
  %3232 = phi i32* [ %3222, %3221 ], [ %3228, %3223 ]
  %3233 = icmp eq i32 %3231, 0
  br i1 %3233, label %3238, label %3234

; <label>:3234:                                   ; preds = %3230
  %3235 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3232) #11
  %3236 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3237 = getelementptr inbounds %union.StackValue, %union.StackValue* %3236, i64 1
  br label %3238

; <label>:3238:                                   ; preds = %3230, %3234
  %3239 = phi i32 [ %3235, %3234 ], [ 0, %3230 ]
  %3240 = phi %union.StackValue* [ %3237, %3234 ], [ %3958, %3230 ]
  %3241 = getelementptr inbounds i32, i32* %3232, i64 1
  %3242 = load i32, i32* %3232, align 4, !tbaa !31
  br label %85

; <label>:3243:                                   ; preds = %3956
  %3244 = lshr i32 %3957, 16
  %3245 = and i32 %3244, 255
  %3246 = zext i32 %3245 to i64
  %3247 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3246, i32 0
  %3248 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3246, i32 0, i32 1
  %3249 = load i8, i8* %3248, align 8, !tbaa !2
  %3250 = and i8 %3249, 15
  %3251 = icmp eq i8 %3250, 0
  br i1 %3251, label %3252, label %3255

; <label>:3252:                                   ; preds = %3243
  %3253 = trunc i32 %3957 to i16
  %3254 = icmp sgt i16 %3253, -1
  br i1 %3254, label %3269, label %3267

; <label>:3255:                                   ; preds = %3243
  %3256 = icmp eq i8 %3249, 1
  br i1 %3256, label %3260, label %3257

; <label>:3257:                                   ; preds = %3255
  %3258 = trunc i32 %3957 to i16
  %3259 = icmp slt i16 %3258, 0
  br i1 %3259, label %3269, label %3267

; <label>:3260:                                   ; preds = %3255
  %3261 = bitcast %struct.TValue* %3247 to i32*
  %3262 = load i32, i32* %3261, align 8, !tbaa !6
  %3263 = icmp eq i32 %3262, 0
  %3264 = trunc i32 %3957 to i16
  %3265 = icmp slt i16 %3264, 0
  %3266 = xor i1 %3265, %3263
  br i1 %3266, label %3269, label %3267

; <label>:3267:                                   ; preds = %3252, %3257, %3260
  %3268 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %3281

; <label>:3269:                                   ; preds = %3252, %3257, %3260
  %3270 = bitcast %struct.TValue* %3247 to i64*
  %3271 = bitcast %union.StackValue* %3964 to i64*
  %3272 = load i64, i64* %3270, align 8
  store i64 %3272, i64* %3271, align 8
  %3273 = load i8, i8* %3248, align 8, !tbaa !2
  %3274 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 %3273, i8* %3274, align 8, !tbaa !2
  %3275 = load i32, i32* %3960, align 4, !tbaa !31
  %3276 = lshr i32 %3275, 7
  %3277 = add nsw i32 %3276, -16777214
  %3278 = sext i32 %3277 to i64
  %3279 = getelementptr inbounds i32, i32* %3960, i64 %3278
  %3280 = load i32, i32* %21, align 8, !tbaa !6
  br label %3281

; <label>:3281:                                   ; preds = %3269, %3267
  %3282 = phi i32 [ %3959, %3267 ], [ %3280, %3269 ]
  %3283 = phi i32* [ %3268, %3267 ], [ %3279, %3269 ]
  %3284 = icmp eq i32 %3282, 0
  br i1 %3284, label %3289, label %3285

; <label>:3285:                                   ; preds = %3281
  %3286 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3283) #11
  %3287 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3288 = getelementptr inbounds %union.StackValue, %union.StackValue* %3287, i64 1
  br label %3289

; <label>:3289:                                   ; preds = %3281, %3285
  %3290 = phi i32 [ %3286, %3285 ], [ 0, %3281 ]
  %3291 = phi %union.StackValue* [ %3288, %3285 ], [ %3958, %3281 ]
  %3292 = getelementptr inbounds i32, i32* %3283, i64 1
  %3293 = load i32, i32* %3283, align 4, !tbaa !31
  br label %85

; <label>:3294:                                   ; preds = %3956
  %3295 = lshr i32 %3957, 16
  %3296 = and i32 %3295, 255
  %3297 = lshr i32 %3957, 24
  %3298 = add nsw i32 %3297, -1
  %3299 = icmp eq i32 %3296, 0
  br i1 %3299, label %3303, label %3300

; <label>:3300:                                   ; preds = %3294
  %3301 = zext i32 %3296 to i64
  %3302 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 %3301
  store %union.StackValue* %3302, %union.StackValue** %18, align 8, !tbaa !25
  br label %3303

; <label>:3303:                                   ; preds = %3294, %3300
  store i32* %3960, i32** %15, align 8, !tbaa !6
  call void @luaD_call(%struct.lua_State* %0, %union.StackValue* %3964, i32 %3298) #11
  %3304 = load i32, i32* %21, align 8, !tbaa !6
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3310, label %3306

; <label>:3306:                                   ; preds = %3303
  %3307 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %3308 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3309 = getelementptr inbounds %union.StackValue, %union.StackValue* %3308, i64 1
  br label %3310

; <label>:3310:                                   ; preds = %3303, %3306
  %3311 = phi i32 [ %3307, %3306 ], [ 0, %3303 ]
  %3312 = phi %union.StackValue* [ %3309, %3306 ], [ %3958, %3303 ]
  %3313 = getelementptr inbounds i32, i32* %3960, i64 1
  %3314 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:3315:                                   ; preds = %3956
  %3316 = zext i32 %3962 to i64
  %3317 = lshr i32 %3957, 16
  %3318 = and i32 %3317, 255
  %3319 = icmp eq i32 %3318, 0
  br i1 %3319, label %3323, label %3320

; <label>:3320:                                   ; preds = %3315
  %3321 = zext i32 %3318 to i64
  %3322 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 %3321
  store %union.StackValue* %3322, %union.StackValue** %18, align 8, !tbaa !25
  br label %3329

; <label>:3323:                                   ; preds = %3315
  %3324 = load i64, i64* %19, align 8, !tbaa !25
  %3325 = ptrtoint %union.StackValue* %3964 to i64
  %3326 = sub i64 %3324, %3325
  %3327 = lshr exact i64 %3326, 4
  %3328 = trunc i64 %3327 to i32
  br label %3329

; <label>:3329:                                   ; preds = %3323, %3320
  %3330 = phi i32 [ %3318, %3320 ], [ %3328, %3323 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3331 = trunc i32 %3957 to i16
  %3332 = icmp slt i16 %3331, 0
  br i1 %3332, label %3333, label %3342

; <label>:3333:                                   ; preds = %3329
  %3334 = lshr i32 %3957, 24
  %3335 = icmp eq i32 %3334, 0
  br i1 %3335, label %3339, label %3336

; <label>:3336:                                   ; preds = %3333
  %3337 = load i32, i32* %33, align 4, !tbaa !6
  %3338 = add nsw i32 %3337, %3334
  br label %3339

; <label>:3339:                                   ; preds = %3333, %3336
  %3340 = phi i32 [ %3338, %3336 ], [ 0, %3333 ]
  %3341 = call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %3958, i32 -1) #11
  br label %3342

; <label>:3342:                                   ; preds = %3339, %3329
  %3343 = phi i32 [ %3340, %3339 ], [ 0, %3329 ]
  %3344 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3316, i32 0, i32 1
  %3345 = load i8, i8* %3344, align 8, !tbaa !6
  %3346 = and i8 %3345, 15
  %3347 = icmp eq i8 %3346, 6
  br i1 %3347, label %3351, label %3348

; <label>:3348:                                   ; preds = %3342
  call void @luaD_tryfuncTM(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %3964) #11
  %3349 = add nsw i32 %3330, 1
  %3350 = load i8, i8* %3344, align 8, !tbaa !6
  br label %3351

; <label>:3351:                                   ; preds = %3348, %3342
  %3352 = phi i8 [ %3350, %3348 ], [ %3345, %3342 ]
  %3353 = phi i32 [ %3349, %3348 ], [ %3330, %3342 ]
  %3354 = icmp eq i8 %3352, 86
  br i1 %3354, label %3375, label %3355

; <label>:3355:                                   ; preds = %3351
  call void @luaD_call(%struct.lua_State* nonnull %0, %union.StackValue* nonnull %3964, i32 -1) #11
  %3356 = load i32, i32* %21, align 8, !tbaa !6
  %3357 = icmp eq i32 %3356, 0
  %3358 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  br i1 %3357, label %3365, label %3359

; <label>:3359:                                   ; preds = %3355
  %3360 = getelementptr inbounds %union.StackValue, %union.StackValue* %3358, i64 1
  %3361 = lshr i32 %3957, 7
  %3362 = and i32 %3361, 255
  %3363 = zext i32 %3362 to i64
  %3364 = getelementptr inbounds %union.StackValue, %union.StackValue* %3360, i64 %3363
  br label %3365

; <label>:3365:                                   ; preds = %3355, %3359
  %3366 = phi %union.StackValue* [ %3364, %3359 ], [ %3964, %3355 ]
  %3367 = sext i32 %3343 to i64
  %3368 = sub nsw i64 0, %3367
  %3369 = getelementptr inbounds %union.StackValue, %union.StackValue* %3358, i64 %3368
  store %union.StackValue* %3369, %union.StackValue** %11, align 8, !tbaa !30
  %3370 = load i64, i64* %19, align 8, !tbaa !25
  %3371 = ptrtoint %union.StackValue* %3366 to i64
  %3372 = sub i64 %3370, %3371
  %3373 = lshr exact i64 %3372, 4
  %3374 = trunc i64 %3373 to i32
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %3374) #11
  br label %3955

; <label>:3375:                                   ; preds = %3351
  %3376 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3377 = sext i32 %3343 to i64
  %3378 = sub nsw i64 0, %3377
  %3379 = getelementptr inbounds %union.StackValue, %union.StackValue* %3376, i64 %3378
  store %union.StackValue* %3379, %union.StackValue** %11, align 8, !tbaa !30
  call void @luaD_pretailcall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, %union.StackValue* nonnull %3964, i32 %3353) #11
  br label %34

; <label>:3380:                                   ; preds = %3956
  %3381 = lshr i32 %3957, 16
  %3382 = and i32 %3381, 255
  %3383 = add nsw i32 %3382, -1
  %3384 = icmp eq i32 %3382, 0
  br i1 %3384, label %3385, label %3391

; <label>:3385:                                   ; preds = %3380
  %3386 = load i64, i64* %19, align 8, !tbaa !25
  %3387 = ptrtoint %union.StackValue* %3964 to i64
  %3388 = sub i64 %3386, %3387
  %3389 = lshr exact i64 %3388, 4
  %3390 = trunc i64 %3389 to i32
  br label %3394

; <label>:3391:                                   ; preds = %3380
  %3392 = sext i32 %3383 to i64
  %3393 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 %3392
  store %union.StackValue* %3393, %union.StackValue** %18, align 8, !tbaa !25
  br label %3394

; <label>:3394:                                   ; preds = %3391, %3385
  %3395 = phi i32 [ %3390, %3385 ], [ %3383, %3391 ]
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3396 = trunc i32 %3957 to i16
  %3397 = icmp slt i16 %3396, 0
  br i1 %3397, label %3398, label %3410

; <label>:3398:                                   ; preds = %3394
  %3399 = lshr i32 %3957, 24
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %3408, label %3401

; <label>:3401:                                   ; preds = %3398
  %3402 = load i32, i32* %33, align 4, !tbaa !6
  %3403 = add nsw i32 %3402, %3399
  %3404 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3405 = sext i32 %3403 to i64
  %3406 = sub nsw i64 0, %3405
  %3407 = getelementptr inbounds %union.StackValue, %union.StackValue* %3404, i64 %3406
  store %union.StackValue* %3407, %union.StackValue** %11, align 8, !tbaa !30
  br label %3408

; <label>:3408:                                   ; preds = %3398, %3401
  %3409 = call i32 @luaF_close(%struct.lua_State* nonnull %0, %union.StackValue* %3958, i32 0) #11
  br label %3410

; <label>:3410:                                   ; preds = %3408, %3394
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* nonnull %1, i32 %3395) #11
  br label %3955

; <label>:3411:                                   ; preds = %3956
  %3412 = load i32, i32* %10, align 8, !tbaa !32
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3415, label %3414

; <label>:3414:                                   ; preds = %3411
  store %union.StackValue* %3964, %union.StackValue** %18, align 8, !tbaa !25
  store i32* %3960, i32** %15, align 8, !tbaa !6
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %1, i32 0) #11
  br label %3955

; <label>:3415:                                   ; preds = %3411
  %3416 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %3417 = load i16, i16* %3416, align 4, !tbaa !46
  %3418 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %3419 = bitcast %struct.CallInfo** %3418 to i64*
  %3420 = load i64, i64* %3419, align 8, !tbaa !47
  %3421 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3422 = bitcast %struct.CallInfo** %3421 to i64*
  store i64 %3420, i64* %3422, align 8, !tbaa !29
  %3423 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 -1
  store %union.StackValue* %3423, %union.StackValue** %18, align 8, !tbaa !25
  %3424 = icmp sgt i16 %3417, 0
  br i1 %3424, label %3425, label %3955

; <label>:3425:                                   ; preds = %3415
  store %union.StackValue* %3958, %union.StackValue** %18, align 8, !tbaa !25
  %3426 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 -1, i32 0, i32 1
  store i8 0, i8* %3426, align 8, !tbaa !6
  %3427 = icmp eq i16 %3417, 1
  br i1 %3427, label %3955, label %3428

; <label>:3428:                                   ; preds = %3425
  %3429 = sext i16 %3417 to i32
  br label %3430

; <label>:3430:                                   ; preds = %3428, %3430
  %3431 = phi i32 [ %3429, %3428 ], [ %3432, %3430 ]
  %3432 = add nsw i32 %3431, -1
  %3433 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !25
  %3434 = getelementptr inbounds %union.StackValue, %union.StackValue* %3433, i64 1
  store %union.StackValue* %3434, %union.StackValue** %18, align 8, !tbaa !25
  %3435 = getelementptr inbounds %union.StackValue, %union.StackValue* %3433, i64 0, i32 0, i32 1
  store i8 0, i8* %3435, align 8, !tbaa !6
  %3436 = icmp sgt i32 %3431, 2
  br i1 %3436, label %3430, label %3955

; <label>:3437:                                   ; preds = %3956
  %3438 = zext i32 %3962 to i64
  %3439 = load i32, i32* %10, align 8, !tbaa !32
  %3440 = icmp eq i32 %3439, 0
  br i1 %3440, label %3443, label %3441

; <label>:3441:                                   ; preds = %3437
  %3442 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1
  store %union.StackValue* %3442, %union.StackValue** %18, align 8, !tbaa !25
  store i32* %3960, i32** %15, align 8, !tbaa !6
  call void @luaD_poscall(%struct.lua_State* nonnull %0, %struct.CallInfo* %1, i32 1) #11
  br label %3955

; <label>:3443:                                   ; preds = %3437
  %3444 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 6
  %3445 = load i16, i16* %3444, align 4, !tbaa !46
  %3446 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %1, i64 0, i32 2
  %3447 = bitcast %struct.CallInfo** %3446 to i64*
  %3448 = load i64, i64* %3447, align 8, !tbaa !47
  %3449 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %3450 = bitcast %struct.CallInfo** %3449 to i64*
  store i64 %3448, i64* %3450, align 8, !tbaa !29
  %3451 = icmp eq i16 %3445, 0
  %3452 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 -1
  br i1 %3451, label %3453, label %3454

; <label>:3453:                                   ; preds = %3443
  store %union.StackValue* %3452, %union.StackValue** %18, align 8, !tbaa !25
  br label %3955

; <label>:3454:                                   ; preds = %3443
  %3455 = bitcast %union.StackValue* %3964 to i64*
  %3456 = bitcast %union.StackValue* %3452 to i64*
  %3457 = load i64, i64* %3455, align 8
  store i64 %3457, i64* %3456, align 8
  %3458 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3438, i32 0, i32 1
  %3459 = load i8, i8* %3458, align 8, !tbaa !2
  %3460 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 -1, i32 0, i32 1
  store i8 %3459, i8* %3460, align 8, !tbaa !2
  store %union.StackValue* %3958, %union.StackValue** %18, align 8, !tbaa !25
  %3461 = icmp sgt i16 %3445, 1
  br i1 %3461, label %3462, label %3955

; <label>:3462:                                   ; preds = %3454
  %3463 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 1
  store %union.StackValue* %3463, %union.StackValue** %18, align 8, !tbaa !25
  %3464 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 0, i32 0, i32 1
  store i8 0, i8* %3464, align 8, !tbaa !6
  %3465 = icmp eq i16 %3445, 2
  br i1 %3465, label %3955, label %3466

; <label>:3466:                                   ; preds = %3462
  %3467 = sext i16 %3445 to i32
  br label %3468

; <label>:3468:                                   ; preds = %3466, %3468
  %3469 = phi i32 [ %3467, %3466 ], [ %3470, %3468 ]
  %3470 = add nsw i32 %3469, -1
  %3471 = load %union.StackValue*, %union.StackValue** %18, align 8, !tbaa !25
  %3472 = getelementptr inbounds %union.StackValue, %union.StackValue* %3471, i64 1
  store %union.StackValue* %3472, %union.StackValue** %18, align 8, !tbaa !25
  %3473 = getelementptr inbounds %union.StackValue, %union.StackValue* %3471, i64 0, i32 0, i32 1
  store i8 0, i8* %3473, align 8, !tbaa !6
  %3474 = icmp sgt i32 %3469, 3
  br i1 %3474, label %3468, label %3955

; <label>:3475:                                   ; preds = %3956
  %3476 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 2, i32 0
  %3477 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 2, i32 0, i32 1
  %3478 = load i8, i8* %3477, align 8, !tbaa !6
  %3479 = icmp eq i8 %3478, 35
  br i1 %3479, label %3480, label %3499

; <label>:3480:                                   ; preds = %3475
  %3481 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1, i32 0, i32 0
  %3482 = bitcast %union.Value* %3481 to i64*
  %3483 = load i64, i64* %3482, align 8, !tbaa !6
  %3484 = icmp eq i64 %3483, 0
  br i1 %3484, label %3521, label %3485

; <label>:3485:                                   ; preds = %3480
  %3486 = bitcast %struct.TValue* %3476 to i64*
  %3487 = load i64, i64* %3486, align 8, !tbaa !6
  %3488 = bitcast %union.StackValue* %3964 to i64*
  %3489 = load i64, i64* %3488, align 8, !tbaa !6
  %3490 = add i64 %3483, -1
  store i64 %3490, i64* %3482, align 8, !tbaa !6
  %3491 = add i64 %3489, %3487
  store i64 %3491, i64* %3488, align 8, !tbaa !6
  %3492 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0
  %3493 = bitcast %struct.TValue* %3492 to i64*
  store i64 %3491, i64* %3493, align 8, !tbaa !6
  %3494 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0, i32 1
  store i8 35, i8* %3494, align 8, !tbaa !2
  %3495 = lshr i32 %3957, 15
  %3496 = zext i32 %3495 to i64
  %3497 = sub nsw i64 0, %3496
  %3498 = getelementptr inbounds i32, i32* %3960, i64 %3497
  br label %3521

; <label>:3499:                                   ; preds = %3475
  %3500 = bitcast %struct.TValue* %3476 to double*
  %3501 = load double, double* %3500, align 8, !tbaa !6
  %3502 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1, i32 0, i32 0
  %3503 = bitcast %union.Value* %3502 to double*
  %3504 = load double, double* %3503, align 8, !tbaa !6
  %3505 = bitcast %union.StackValue* %3964 to double*
  %3506 = load double, double* %3505, align 8, !tbaa !6
  %3507 = fadd double %3501, %3506
  %3508 = fcmp ogt double %3501, 0.000000e+00
  br i1 %3508, label %3509, label %3511

; <label>:3509:                                   ; preds = %3499
  %3510 = fcmp ugt double %3507, %3504
  br i1 %3510, label %3521, label %3513

; <label>:3511:                                   ; preds = %3499
  %3512 = fcmp ugt double %3504, %3507
  br i1 %3512, label %3521, label %3513

; <label>:3513:                                   ; preds = %3509, %3511
  store double %3507, double* %3505, align 8, !tbaa !6
  %3514 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0
  %3515 = bitcast %struct.TValue* %3514 to double*
  store double %3507, double* %3515, align 8, !tbaa !6
  %3516 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0, i32 1
  store i8 19, i8* %3516, align 8, !tbaa !2
  %3517 = lshr i32 %3957, 15
  %3518 = zext i32 %3517 to i64
  %3519 = sub nsw i64 0, %3518
  %3520 = getelementptr inbounds i32, i32* %3960, i64 %3519
  br label %3521

; <label>:3521:                                   ; preds = %3480, %3509, %3511, %3513, %3485
  %3522 = phi i32* [ %3498, %3485 ], [ %3960, %3480 ], [ %3520, %3513 ], [ %3960, %3509 ], [ %3960, %3511 ]
  %3523 = load i32, i32* %21, align 8, !tbaa !6
  %3524 = icmp eq i32 %3523, 0
  br i1 %3524, label %3529, label %3525

; <label>:3525:                                   ; preds = %3521
  %3526 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3522) #11
  %3527 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3528 = getelementptr inbounds %union.StackValue, %union.StackValue* %3527, i64 1
  br label %3529

; <label>:3529:                                   ; preds = %3521, %3525
  %3530 = phi i32 [ %3526, %3525 ], [ 0, %3521 ]
  %3531 = phi %union.StackValue* [ %3528, %3525 ], [ %3958, %3521 ]
  %3532 = getelementptr inbounds i32, i32* %3522, i64 1
  %3533 = load i32, i32* %3522, align 4, !tbaa !31
  br label %85

; <label>:3534:                                   ; preds = %3956
  %3535 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0
  %3536 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1, i32 0
  %3537 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 2, i32 0
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3538 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %3538, i64* %19, align 8, !tbaa !25
  %3539 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  %3540 = load i8, i8* %3539, align 8, !tbaa !2
  %3541 = icmp eq i8 %3540, 35
  br i1 %3541, label %3542, label %3613

; <label>:3542:                                   ; preds = %3534
  %3543 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 2, i32 0, i32 1
  %3544 = load i8, i8* %3543, align 8, !tbaa !2
  %3545 = icmp eq i8 %3544, 35
  br i1 %3545, label %3546, label %3613

; <label>:3546:                                   ; preds = %3542
  %3547 = bitcast %union.StackValue* %3964 to i64*
  %3548 = load i64, i64* %3547, align 8, !tbaa !6
  %3549 = bitcast %struct.TValue* %3537 to i64*
  %3550 = load i64, i64* %3549, align 8, !tbaa !6
  %3551 = icmp eq i64 %3550, 0
  br i1 %3551, label %3552, label %3553

; <label>:3552:                                   ; preds = %3546
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #13
  unreachable

; <label>:3553:                                   ; preds = %3546
  %3554 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0
  %3555 = bitcast %struct.TValue* %3554 to i64*
  store i64 %3548, i64* %3555, align 8, !tbaa !6
  %3556 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0, i32 1
  store i8 35, i8* %3556, align 8, !tbaa !2
  %3557 = icmp slt i64 %3550, 0
  %3558 = lshr i64 %3550, 63
  %3559 = trunc i64 %3558 to i32
  %3560 = add nuw nsw i32 %3559, 1
  %3561 = call i32 @luaV_tointeger(%struct.TValue* nonnull %3536, i64* nonnull %6, i32 %3560) #11
  %3562 = icmp eq i32 %3561, 0
  br i1 %3562, label %3565, label %3563

; <label>:3563:                                   ; preds = %3553
  %3564 = load i64, i64* %6, align 8, !tbaa !9
  br label %3588

; <label>:3565:                                   ; preds = %3553
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #10
  %3566 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1, i32 0, i32 1
  %3567 = load i8, i8* %3566, align 8, !tbaa !2
  %3568 = icmp eq i8 %3567, 19
  br i1 %3568, label %3569, label %3573

; <label>:3569:                                   ; preds = %3565
  %3570 = bitcast %struct.TValue* %3536 to i64*
  %3571 = load i64, i64* %3570, align 8, !tbaa !6
  store i64 %3571, i64* %32, align 8, !tbaa !7
  %3572 = bitcast i64 %3571 to double
  br label %3579

; <label>:3573:                                   ; preds = %3565
  %3574 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3536, double* nonnull %3) #11
  %3575 = icmp eq i32 %3574, 0
  br i1 %3575, label %3576, label %3577

; <label>:3576:                                   ; preds = %3573
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #13
  unreachable

; <label>:3577:                                   ; preds = %3573
  %3578 = load double, double* %3, align 8, !tbaa !7
  br label %3579

; <label>:3579:                                   ; preds = %3577, %3569
  %3580 = phi double [ %3578, %3577 ], [ %3572, %3569 ]
  %3581 = fcmp ogt double %3580, 0.000000e+00
  br i1 %3581, label %3582, label %3583

; <label>:3582:                                   ; preds = %3579
  br i1 %3557, label %3587, label %3585

; <label>:3583:                                   ; preds = %3579
  %3584 = icmp sgt i64 %3550, 0
  br i1 %3584, label %3587, label %3585

; <label>:3585:                                   ; preds = %3583, %3582
  %3586 = phi i64 [ 9223372036854775807, %3582 ], [ -9223372036854775808, %3583 ]
  store i64 %3586, i64* %6, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #10
  br label %3588

; <label>:3587:                                   ; preds = %3582, %3583
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #10
  br label %3594

; <label>:3588:                                   ; preds = %3563, %3585
  %3589 = phi i64 [ %3564, %3563 ], [ %3586, %3585 ]
  %3590 = icmp sgt i64 %3550, 0
  %3591 = icmp slt i64 %3589, %3548
  %3592 = icmp sgt i64 %3589, %3548
  %3593 = select i1 %3590, i1 %3591, i1 %3592
  br i1 %3593, label %3594, label %3599

; <label>:3594:                                   ; preds = %3588, %3587
  %3595 = lshr i32 %3957, 15
  %3596 = add nuw nsw i32 %3595, 1
  %3597 = zext i32 %3596 to i64
  %3598 = getelementptr inbounds i32, i32* %3960, i64 %3597
  br label %3674

; <label>:3599:                                   ; preds = %3588
  br i1 %3590, label %3600, label %3605

; <label>:3600:                                   ; preds = %3599
  %3601 = sub i64 %3589, %3548
  %3602 = icmp eq i64 %3550, 1
  br i1 %3602, label %3609, label %3603

; <label>:3603:                                   ; preds = %3600
  %3604 = udiv i64 %3601, %3550
  br label %3609

; <label>:3605:                                   ; preds = %3599
  %3606 = sub i64 %3548, %3589
  %3607 = sub i64 0, %3550
  %3608 = udiv i64 %3606, %3607
  br label %3609

; <label>:3609:                                   ; preds = %3600, %3603, %3605
  %3610 = phi i64 [ %3604, %3603 ], [ %3601, %3600 ], [ %3608, %3605 ]
  %3611 = bitcast %struct.TValue* %3536 to i64*
  store i64 %3610, i64* %3611, align 8, !tbaa !6
  %3612 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1, i32 0, i32 1
  store i8 35, i8* %3612, align 8, !tbaa !2
  br label %3674

; <label>:3613:                                   ; preds = %3542, %3534
  %3614 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1, i32 0, i32 1
  %3615 = load i8, i8* %3614, align 8, !tbaa !2
  %3616 = icmp eq i8 %3615, 19
  br i1 %3616, label %3617, label %3620

; <label>:3617:                                   ; preds = %3613
  %3618 = bitcast %struct.TValue* %3536 to i64*
  %3619 = load i64, i64* %3618, align 8, !tbaa !6
  store i64 %3619, i64* %28, align 8, !tbaa !7
  br label %3624

; <label>:3620:                                   ; preds = %3613
  %3621 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3536, double* nonnull %8) #12
  %3622 = icmp eq i32 %3621, 0
  br i1 %3622, label %3623, label %3624, !prof !11

; <label>:3623:                                   ; preds = %3620
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #13
  unreachable

; <label>:3624:                                   ; preds = %3617, %3620
  %3625 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 2, i32 0, i32 1
  %3626 = load i8, i8* %3625, align 8, !tbaa !2
  %3627 = icmp eq i8 %3626, 19
  br i1 %3627, label %3628, label %3631

; <label>:3628:                                   ; preds = %3624
  %3629 = bitcast %struct.TValue* %3537 to i64*
  %3630 = load i64, i64* %3629, align 8, !tbaa !6
  store i64 %3630, i64* %29, align 8, !tbaa !7
  br label %3635

; <label>:3631:                                   ; preds = %3624
  %3632 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3537, double* nonnull %9) #12
  %3633 = icmp eq i32 %3632, 0
  br i1 %3633, label %3634, label %3635, !prof !11

; <label>:3634:                                   ; preds = %3631
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3537, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)) #13
  unreachable

; <label>:3635:                                   ; preds = %3628, %3631
  %3636 = load i8, i8* %3539, align 8, !tbaa !2
  %3637 = icmp eq i8 %3636, 19
  br i1 %3637, label %3638, label %3641

; <label>:3638:                                   ; preds = %3635
  %3639 = bitcast %union.StackValue* %3964 to i64*
  %3640 = load i64, i64* %3639, align 8, !tbaa !6
  store i64 %3640, i64* %31, align 8, !tbaa !7
  br label %3645

; <label>:3641:                                   ; preds = %3635
  %3642 = call i32 @luaV_tonumber_(%struct.TValue* nonnull %3535, double* nonnull %7) #12
  %3643 = icmp eq i32 %3642, 0
  br i1 %3643, label %3644, label %3645, !prof !11

; <label>:3644:                                   ; preds = %3641
  call void @luaG_forerror(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %3535, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #13
  unreachable

; <label>:3645:                                   ; preds = %3638, %3641
  %3646 = load double, double* %9, align 8, !tbaa !7
  %3647 = fcmp oeq double %3646, 0.000000e+00
  br i1 %3647, label %3648, label %3649

; <label>:3648:                                   ; preds = %3645
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #13
  unreachable

; <label>:3649:                                   ; preds = %3645
  %3650 = fcmp ogt double %3646, 0.000000e+00
  br i1 %3650, label %3651, label %3655

; <label>:3651:                                   ; preds = %3649
  %3652 = load double, double* %8, align 8, !tbaa !7
  %3653 = load double, double* %7, align 8, !tbaa !7
  %3654 = fcmp olt double %3652, %3653
  br i1 %3654, label %3659, label %3664

; <label>:3655:                                   ; preds = %3649
  %3656 = load double, double* %7, align 8, !tbaa !7
  %3657 = load double, double* %8, align 8, !tbaa !7
  %3658 = fcmp olt double %3656, %3657
  br i1 %3658, label %3659, label %3664

; <label>:3659:                                   ; preds = %3655, %3651
  %3660 = lshr i32 %3957, 15
  %3661 = add nuw nsw i32 %3660, 1
  %3662 = zext i32 %3661 to i64
  %3663 = getelementptr inbounds i32, i32* %3960, i64 %3662
  br label %3674

; <label>:3664:                                   ; preds = %3655, %3651
  %3665 = phi double [ %3656, %3655 ], [ %3653, %3651 ]
  %3666 = phi double [ %3657, %3655 ], [ %3652, %3651 ]
  %3667 = bitcast %struct.TValue* %3536 to double*
  store double %3666, double* %3667, align 8, !tbaa !6
  store i8 19, i8* %3614, align 8, !tbaa !2
  %3668 = bitcast %struct.TValue* %3537 to double*
  store double %3646, double* %3668, align 8, !tbaa !6
  store i8 19, i8* %3625, align 8, !tbaa !2
  %3669 = bitcast %union.StackValue* %3964 to double*
  store double %3665, double* %3669, align 8, !tbaa !6
  store i8 19, i8* %3539, align 8, !tbaa !2
  %3670 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0
  %3671 = load i64, i64* %31, align 8, !tbaa !7
  %3672 = bitcast %struct.TValue* %3670 to i64*
  store i64 %3671, i64* %3672, align 8, !tbaa !6
  %3673 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0, i32 1
  store i8 19, i8* %3673, align 8, !tbaa !2
  br label %3674

; <label>:3674:                                   ; preds = %3659, %3664, %3594, %3609
  %3675 = phi i32* [ %3598, %3594 ], [ %3960, %3609 ], [ %3663, %3659 ], [ %3960, %3664 ]
  %3676 = icmp eq i32 %3959, 0
  br i1 %3676, label %3681, label %3677

; <label>:3677:                                   ; preds = %3674
  %3678 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3675) #11
  %3679 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3680 = getelementptr inbounds %union.StackValue, %union.StackValue* %3679, i64 1
  br label %3681

; <label>:3681:                                   ; preds = %3674, %3677
  %3682 = phi i32 [ %3678, %3677 ], [ 0, %3674 ]
  %3683 = phi %union.StackValue* [ %3680, %3677 ], [ %3958, %3674 ]
  %3684 = getelementptr inbounds i32, i32* %3675, i64 1
  %3685 = load i32, i32* %3675, align 4, !tbaa !31
  br label %85

; <label>:3686:                                   ; preds = %3956
  %3687 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3, i32 0, i32 1
  %3688 = load i8, i8* %3687, align 8, !tbaa !6
  %3689 = and i8 %3688, 15
  %3690 = icmp eq i8 %3689, 0
  br i1 %3690, label %3693, label %3691

; <label>:3691:                                   ; preds = %3686
  %3692 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 3
  store i32* %3960, i32** %15, align 8, !tbaa !6
  call void @luaF_newtbcupval(%struct.lua_State* %0, %union.StackValue* nonnull %3692) #11
  br label %3693

; <label>:3693:                                   ; preds = %3691, %3686
  %3694 = lshr i32 %3957, 15
  %3695 = zext i32 %3694 to i64
  %3696 = getelementptr inbounds i32, i32* %3960, i64 %3695
  %3697 = getelementptr inbounds i32, i32* %3696, i64 1
  %3698 = load i32, i32* %3696, align 4, !tbaa !31
  br label %3699

; <label>:3699:                                   ; preds = %3956, %3693
  %3700 = phi i32 [ %3957, %3956 ], [ %3698, %3693 ]
  %3701 = phi i32* [ %3960, %3956 ], [ %3697, %3693 ]
  %3702 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 4
  %3703 = bitcast %union.StackValue* %3702 to i8*
  %3704 = bitcast %union.StackValue* %3964 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3703, i8* %3704, i64 48, i32 8, i1 false)
  store i32* %3701, i32** %15, align 8, !tbaa !6
  %3705 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %3705, i64* %19, align 8, !tbaa !25
  %3706 = lshr i32 %3700, 24
  call void @luaD_call(%struct.lua_State* %0, %union.StackValue* nonnull %3702, i32 %3706) #11
  %3707 = load i32, i32* %21, align 8, !tbaa !6
  %3708 = icmp eq i32 %3707, 0
  br i1 %3708, label %3716, label %3709

; <label>:3709:                                   ; preds = %3699
  %3710 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3711 = getelementptr inbounds %union.StackValue, %union.StackValue* %3710, i64 1
  %3712 = lshr i32 %3700, 7
  %3713 = and i32 %3712, 255
  %3714 = zext i32 %3713 to i64
  %3715 = getelementptr inbounds %union.StackValue, %union.StackValue* %3711, i64 %3714
  br label %3716

; <label>:3716:                                   ; preds = %3699, %3709
  %3717 = phi %union.StackValue* [ %3715, %3709 ], [ %3964, %3699 ]
  %3718 = phi %union.StackValue* [ %3711, %3709 ], [ %3958, %3699 ]
  %3719 = getelementptr inbounds i32, i32* %3701, i64 1
  %3720 = load i32, i32* %3701, align 4, !tbaa !31
  %3721 = getelementptr inbounds %union.StackValue, %union.StackValue* %3717, i64 2
  br label %3722

; <label>:3722:                                   ; preds = %3956, %3716
  %3723 = phi %union.StackValue* [ %3964, %3956 ], [ %3721, %3716 ]
  %3724 = phi i32 [ %3957, %3956 ], [ %3720, %3716 ]
  %3725 = phi i32 [ %3959, %3956 ], [ %3707, %3716 ]
  %3726 = phi i32* [ %3960, %3956 ], [ %3719, %3716 ]
  %3727 = phi %union.StackValue* [ %3958, %3956 ], [ %3718, %3716 ]
  %3728 = getelementptr inbounds %union.StackValue, %union.StackValue* %3723, i64 2, i32 0, i32 1
  %3729 = load i8, i8* %3728, align 8, !tbaa !6
  %3730 = and i8 %3729, 15
  %3731 = icmp eq i8 %3730, 0
  br i1 %3731, label %3742, label %3732

; <label>:3732:                                   ; preds = %3722
  %3733 = getelementptr inbounds %union.StackValue, %union.StackValue* %3723, i64 2, i32 0, i32 0
  %3734 = bitcast %union.Value* %3733 to i64*
  %3735 = bitcast %union.StackValue* %3723 to i64*
  %3736 = load i64, i64* %3734, align 8
  store i64 %3736, i64* %3735, align 8
  %3737 = getelementptr inbounds %union.StackValue, %union.StackValue* %3723, i64 0, i32 0, i32 1
  store i8 %3729, i8* %3737, align 8, !tbaa !2
  %3738 = lshr i32 %3724, 15
  %3739 = zext i32 %3738 to i64
  %3740 = sub nsw i64 0, %3739
  %3741 = getelementptr inbounds i32, i32* %3726, i64 %3740
  br label %3742

; <label>:3742:                                   ; preds = %3732, %3722
  %3743 = phi i32* [ %3726, %3722 ], [ %3741, %3732 ]
  %3744 = icmp eq i32 %3725, 0
  br i1 %3744, label %3749, label %3745

; <label>:3745:                                   ; preds = %3742
  %3746 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3743) #11
  %3747 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3748 = getelementptr inbounds %union.StackValue, %union.StackValue* %3747, i64 1
  br label %3749

; <label>:3749:                                   ; preds = %3742, %3745
  %3750 = phi i32 [ %3746, %3745 ], [ 0, %3742 ]
  %3751 = phi %union.StackValue* [ %3748, %3745 ], [ %3727, %3742 ]
  %3752 = getelementptr inbounds i32, i32* %3743, i64 1
  %3753 = load i32, i32* %3743, align 4, !tbaa !31
  br label %85

; <label>:3754:                                   ; preds = %3956
  %3755 = lshr i32 %3957, 16
  %3756 = and i32 %3755, 255
  %3757 = lshr i32 %3957, 24
  %3758 = icmp eq i32 %3756, 0
  br i1 %3758, label %3759, label %3766

; <label>:3759:                                   ; preds = %3754
  %3760 = load i64, i64* %19, align 8, !tbaa !25
  %3761 = ptrtoint %union.StackValue* %3964 to i64
  %3762 = sub i64 %3760, %3761
  %3763 = lshr exact i64 %3762, 4
  %3764 = trunc i64 %3763 to i32
  %3765 = add nsw i32 %3764, -1
  br label %3768

; <label>:3766:                                   ; preds = %3754
  %3767 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %3767, i64* %19, align 8, !tbaa !25
  br label %3768

; <label>:3768:                                   ; preds = %3766, %3759
  %3769 = phi i32 [ %3765, %3759 ], [ %3756, %3766 ]
  %3770 = icmp eq i32 %3757, 0
  br i1 %3770, label %3771, label %3775

; <label>:3771:                                   ; preds = %3768
  %3772 = load i32, i32* %3960, align 4, !tbaa !31
  %3773 = lshr i32 %3772, 7
  %3774 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %3775

; <label>:3775:                                   ; preds = %3771, %3768
  %3776 = phi i32 [ %3773, %3771 ], [ %3757, %3768 ]
  %3777 = phi i32* [ %3774, %3771 ], [ %3960, %3768 ]
  %3778 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 0, i32 0, i32 0, i32 0
  %3779 = load %struct.GCObject*, %struct.GCObject** %3778, align 8, !tbaa !6
  %3780 = bitcast %struct.GCObject* %3779 to %struct.Table*
  %3781 = mul nuw nsw i32 %3776, 50
  %3782 = add i32 %3769, -50
  %3783 = add i32 %3782, %3781
  %3784 = call i32 @luaH_realasize(%struct.Table* %3780) #11
  %3785 = icmp ugt i32 %3783, %3784
  br i1 %3785, label %3786, label %3787

; <label>:3786:                                   ; preds = %3775
  call void @luaH_resizearray(%struct.lua_State* nonnull %0, %struct.Table* %3780, i32 %3783) #11
  br label %3787

; <label>:3787:                                   ; preds = %3786, %3775
  %3788 = icmp sgt i32 %3769, 0
  br i1 %3788, label %3789, label %3826

; <label>:3789:                                   ; preds = %3787
  %3790 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3779, i64 1
  %3791 = bitcast %struct.GCObject* %3790 to %struct.TValue**
  %3792 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3779, i64 0, i32 2
  %3793 = sext i32 %3769 to i64
  br label %3794

; <label>:3794:                                   ; preds = %3789, %3823
  %3795 = phi i64 [ %3793, %3789 ], [ %3824, %3823 ]
  %3796 = phi i32 [ %3783, %3789 ], [ %3799, %3823 ]
  %3797 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 %3795, i32 0
  %3798 = load %struct.TValue*, %struct.TValue** %3791, align 8, !tbaa !48
  %3799 = add i32 %3796, -1
  %3800 = zext i32 %3799 to i64
  %3801 = getelementptr inbounds %struct.TValue, %struct.TValue* %3798, i64 %3800
  %3802 = bitcast %struct.TValue* %3797 to i64*
  %3803 = bitcast %struct.TValue* %3801 to i64*
  %3804 = load i64, i64* %3802, align 8
  store i64 %3804, i64* %3803, align 8
  %3805 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 %3795, i32 0, i32 1
  %3806 = load i8, i8* %3805, align 8, !tbaa !2
  %3807 = getelementptr inbounds %struct.TValue, %struct.TValue* %3798, i64 %3800, i32 1
  store i8 %3806, i8* %3807, align 8, !tbaa !2
  %3808 = load i8, i8* %3805, align 8, !tbaa !2
  %3809 = and i8 %3808, 64
  %3810 = icmp eq i8 %3809, 0
  br i1 %3810, label %3823, label %3811

; <label>:3811:                                   ; preds = %3794
  %3812 = load i8, i8* %3792, align 1, !tbaa !6
  %3813 = and i8 %3812, 32
  %3814 = icmp eq i8 %3813, 0
  br i1 %3814, label %3823, label %3815

; <label>:3815:                                   ; preds = %3811
  %3816 = getelementptr inbounds %struct.TValue, %struct.TValue* %3797, i64 0, i32 0, i32 0
  %3817 = load %struct.GCObject*, %struct.GCObject** %3816, align 8, !tbaa !6
  %3818 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3817, i64 0, i32 2
  %3819 = load i8, i8* %3818, align 1, !tbaa !23
  %3820 = and i8 %3819, 24
  %3821 = icmp eq i8 %3820, 0
  br i1 %3821, label %3823, label %3822

; <label>:3822:                                   ; preds = %3815
  call void @luaC_barrierback_(%struct.lua_State* %0, %struct.GCObject* nonnull %3779) #11
  br label %3823

; <label>:3823:                                   ; preds = %3815, %3811, %3794, %3822
  %3824 = add nsw i64 %3795, -1
  %3825 = icmp sgt i64 %3795, 1
  br i1 %3825, label %3794, label %3826

; <label>:3826:                                   ; preds = %3823, %3787
  %3827 = icmp eq i32 %3959, 0
  br i1 %3827, label %3832, label %3828

; <label>:3828:                                   ; preds = %3826
  %3829 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* %3777) #11
  %3830 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3831 = getelementptr inbounds %union.StackValue, %union.StackValue* %3830, i64 1
  br label %3832

; <label>:3832:                                   ; preds = %3826, %3828
  %3833 = phi i32 [ %3829, %3828 ], [ 0, %3826 ]
  %3834 = phi %union.StackValue* [ %3831, %3828 ], [ %3958, %3826 ]
  %3835 = getelementptr inbounds i32, i32* %3777, i64 1
  %3836 = load i32, i32* %3777, align 4, !tbaa !31
  br label %85

; <label>:3837:                                   ; preds = %3956
  %3838 = load %struct.Proto*, %struct.Proto** %38, align 8, !tbaa !33
  %3839 = getelementptr inbounds %struct.Proto, %struct.Proto* %3838, i64 0, i32 17
  %3840 = load %struct.Proto**, %struct.Proto*** %3839, align 8, !tbaa !49
  %3841 = lshr i32 %3957, 15
  %3842 = zext i32 %3841 to i64
  %3843 = getelementptr inbounds %struct.Proto*, %struct.Proto** %3840, i64 %3842
  %3844 = load %struct.Proto*, %struct.Proto** %3843, align 8, !tbaa !21
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3845 = getelementptr inbounds %struct.Proto, %struct.Proto* %3844, i64 0, i32 6
  %3846 = load i32, i32* %3845, align 8, !tbaa !50
  %3847 = getelementptr inbounds %struct.Proto, %struct.Proto* %3844, i64 0, i32 18
  %3848 = load %struct.Upvaldesc*, %struct.Upvaldesc** %3847, align 8, !tbaa !51
  %3849 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %0, i32 %3846) #11
  %3850 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3849, i64 0, i32 5
  store %struct.Proto* %3844, %struct.Proto** %3850, align 8, !tbaa !33
  %3851 = bitcast %struct.LClosure* %3849 to %struct.GCObject*
  %3852 = bitcast %union.StackValue* %3964 to %struct.LClosure**
  store %struct.LClosure* %3849, %struct.LClosure** %3852, align 8, !tbaa !6
  %3853 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963, i32 0, i32 1
  store i8 86, i8* %3853, align 8, !tbaa !2
  %3854 = icmp sgt i32 %3846, 0
  br i1 %3854, label %3855, label %3892

; <label>:3855:                                   ; preds = %3837
  %3856 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3849, i64 0, i32 2
  %3857 = zext i32 %3846 to i64
  br label %3858

; <label>:3858:                                   ; preds = %3889, %3855
  %3859 = phi i64 [ 0, %3855 ], [ %3890, %3889 ]
  %3860 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %3848, i64 %3859, i32 1
  %3861 = load i8, i8* %3860, align 8, !tbaa !52
  %3862 = icmp eq i8 %3861, 0
  %3863 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %3848, i64 %3859, i32 2
  %3864 = load i8, i8* %3863, align 1, !tbaa !54
  %3865 = zext i8 %3864 to i64
  br i1 %3862, label %3870, label %3866

; <label>:3866:                                   ; preds = %3858
  %3867 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3865
  %3868 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %0, %union.StackValue* %3867) #11
  %3869 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3849, i64 0, i32 6, i64 %3859
  store %struct.UpVal* %3868, %struct.UpVal** %3869, align 8, !tbaa !21
  br label %3877

; <label>:3870:                                   ; preds = %3858
  %3871 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %37, i64 0, i32 6, i64 %3865
  %3872 = bitcast %struct.UpVal** %3871 to i64*
  %3873 = load i64, i64* %3872, align 8, !tbaa !21
  %3874 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %3849, i64 0, i32 6, i64 %3859
  %3875 = bitcast %struct.UpVal** %3874 to i64*
  store i64 %3873, i64* %3875, align 8, !tbaa !21
  %3876 = inttoptr i64 %3873 to %struct.UpVal*
  br label %3877

; <label>:3877:                                   ; preds = %3870, %3866
  %3878 = phi %struct.UpVal* [ %3876, %3870 ], [ %3868, %3866 ]
  %3879 = load i8, i8* %3856, align 1, !tbaa !55
  %3880 = and i8 %3879, 32
  %3881 = icmp eq i8 %3880, 0
  br i1 %3881, label %3889, label %3882

; <label>:3882:                                   ; preds = %3877
  %3883 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %3878, i64 0, i32 2
  %3884 = load i8, i8* %3883, align 1, !tbaa !41
  %3885 = and i8 %3884, 24
  %3886 = icmp eq i8 %3885, 0
  br i1 %3886, label %3889, label %3887

; <label>:3887:                                   ; preds = %3882
  %3888 = bitcast %struct.UpVal* %3878 to %struct.GCObject*
  call void @luaC_barrier_(%struct.lua_State* %0, %struct.GCObject* nonnull %3851, %struct.GCObject* %3888) #11
  br label %3889

; <label>:3889:                                   ; preds = %3887, %3882, %3877
  %3890 = add nuw nsw i64 %3859, 1
  %3891 = icmp eq i64 %3890, %3857
  br i1 %3891, label %3892, label %3858

; <label>:3892:                                   ; preds = %3889, %3837
  %3893 = load %struct.global_State*, %struct.global_State** %22, align 8, !tbaa !16
  %3894 = getelementptr inbounds %struct.global_State, %struct.global_State* %3893, i64 0, i32 3
  %3895 = load i64, i64* %3894, align 8, !tbaa !43
  %3896 = icmp sgt i64 %3895, 0
  br i1 %3896, label %3897, label %3900

; <label>:3897:                                   ; preds = %3892
  %3898 = getelementptr inbounds %union.StackValue, %union.StackValue* %3964, i64 1
  store %union.StackValue* %3898, %union.StackValue** %18, align 8, !tbaa !25
  call void @luaC_step(%struct.lua_State* nonnull %0) #11
  %3899 = load i32, i32* %21, align 8, !tbaa !6
  br label %3900

; <label>:3900:                                   ; preds = %3897, %3892
  %3901 = phi i32 [ %3899, %3897 ], [ %3959, %3892 ]
  %3902 = icmp eq i32 %3901, 0
  br i1 %3902, label %3907, label %3903

; <label>:3903:                                   ; preds = %3900
  %3904 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* %3960) #11
  %3905 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3906 = getelementptr inbounds %union.StackValue, %union.StackValue* %3905, i64 1
  br label %3907

; <label>:3907:                                   ; preds = %3900, %3903
  %3908 = phi i32 [ %3904, %3903 ], [ 0, %3900 ]
  %3909 = phi %union.StackValue* [ %3906, %3903 ], [ %3958, %3900 ]
  %3910 = getelementptr inbounds i32, i32* %3960, i64 1
  %3911 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:3912:                                   ; preds = %3956
  %3913 = lshr i32 %3957, 24
  %3914 = add nsw i32 %3913, -1
  store i32* %3960, i32** %15, align 8, !tbaa !6
  %3915 = load i64, i64* %17, align 8, !tbaa !42
  store i64 %3915, i64* %19, align 8, !tbaa !25
  call void @luaT_getvarargs(%struct.lua_State* %0, %struct.CallInfo* %1, %union.StackValue* %3964, i32 %3914) #11
  %3916 = load i32, i32* %21, align 8, !tbaa !6
  %3917 = icmp eq i32 %3916, 0
  br i1 %3917, label %3922, label %3918

; <label>:3918:                                   ; preds = %3912
  %3919 = call i32 @luaG_traceexec(%struct.lua_State* nonnull %0, i32* nonnull %3960) #11
  %3920 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3921 = getelementptr inbounds %union.StackValue, %union.StackValue* %3920, i64 1
  br label %3922

; <label>:3922:                                   ; preds = %3912, %3918
  %3923 = phi i32 [ %3919, %3918 ], [ 0, %3912 ]
  %3924 = phi %union.StackValue* [ %3921, %3918 ], [ %3958, %3912 ]
  %3925 = getelementptr inbounds i32, i32* %3960, i64 1
  %3926 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:3927:                                   ; preds = %3956
  %3928 = lshr i32 %3957, 7
  %3929 = and i32 %3928, 255
  %3930 = load %struct.Proto*, %struct.Proto** %38, align 8, !tbaa !33
  call void @luaT_adjustvarargs(%struct.lua_State* %0, i32 %3929, %struct.CallInfo* %1, %struct.Proto* %3930) #11
  %3931 = load i32, i32* %21, align 8, !tbaa !6
  %3932 = icmp eq i32 %3931, 0
  br i1 %3932, label %3933, label %3935

; <label>:3933:                                   ; preds = %3927
  %3934 = getelementptr inbounds i32, i32* %3960, i64 1
  br label %3938

; <label>:3935:                                   ; preds = %3927
  call void @luaD_hookcall(%struct.lua_State* %0, %struct.CallInfo* nonnull %1) #11
  %3936 = getelementptr inbounds i32, i32* %3960, i64 1
  store i32* %3936, i32** %27, align 8, !tbaa !56
  %3937 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  br label %3938

; <label>:3938:                                   ; preds = %3933, %3935
  %3939 = phi i32* [ %3934, %3933 ], [ %3936, %3935 ]
  %3940 = phi i32 [ 0, %3933 ], [ %3937, %3935 ]
  %3941 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3942 = getelementptr inbounds %union.StackValue, %union.StackValue* %3941, i64 1
  %3943 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:3944:                                   ; preds = %3956
  %3945 = icmp eq i32 %3959, 0
  br i1 %3945, label %3950, label %3946

; <label>:3946:                                   ; preds = %3944
  %3947 = call i32 @luaG_traceexec(%struct.lua_State* %0, i32* nonnull %3960) #11
  %3948 = load %union.StackValue*, %union.StackValue** %11, align 8, !tbaa !30
  %3949 = getelementptr inbounds %union.StackValue, %union.StackValue* %3948, i64 1
  br label %3950

; <label>:3950:                                   ; preds = %3944, %3946
  %3951 = phi i32 [ %3947, %3946 ], [ 0, %3944 ]
  %3952 = phi %union.StackValue* [ %3949, %3946 ], [ %3958, %3944 ]
  %3953 = getelementptr inbounds i32, i32* %3960, i64 1
  %3954 = load i32, i32* %3960, align 4, !tbaa !31
  br label %85

; <label>:3955:                                   ; preds = %3468, %3430, %3462, %3425, %3454, %3415, %3441, %3453, %3414, %3410, %3365
  ret void

; <label>:3956:                                   ; preds = %85, %58
  %3957 = phi i32 [ %63, %58 ], [ %86, %85 ]
  %3958 = phi %union.StackValue* [ %61, %58 ], [ %87, %85 ]
  %3959 = phi i32 [ %60, %58 ], [ %88, %85 ]
  %3960 = phi i32* [ %62, %58 ], [ %89, %85 ]
  %3961 = lshr i32 %3957, 7
  %3962 = and i32 %3961, 255
  %3963 = zext i32 %3962 to i64
  %3964 = getelementptr inbounds %union.StackValue, %union.StackValue* %3958, i64 %3963
  %3965 = and i32 %3957, 127
  %3966 = zext i32 %3965 to i64
  %3967 = getelementptr inbounds [84 x i8*], [84 x i8*]* @luaV_execute.disptab, i64 0, i64 %3966
  %3968 = load i8*, i8** %3967, align 8, !tbaa !21
  indirectbr i8* %3968, [label %64, label %110, label %126, label %90, label %142, label %164, label %182, label %203, label %227, label %269, label %315, label %388, label %442, label %485, label %557, label %653, label %730, label %796, label %829, label %882, label %923, label %962, label %1003, label %1053, label %1091, label %1129, label %1169, label %1230, label %1289, label %1350, label %1420, label %1468, label %1516, label %1979, label %2026, label %2073, label %2306, label %2370, label %1576, label %1635, label %1694, label %1753, label %1823, label %1871, label %1919, label %2120, label %2182, label %2244, label %2499, label %2426, label %2572, label %2606, label %2647, label %2677, label %2694, label %2716, label %2730, label %2741, label %2757, label %2787, label %2851, label %2915, label %2947, label %2993, label %3045, label %3097, label %3149, label %3201, label %3243, label %3294, label %3315, label %3380, label %3411, label %3437, label %3475, label %3534, label %3686, label %3699, label %3722, label %3754, label %3837, label %3912, label %3927, label %3944]
}

; Function Attrs: optsize
declare hidden void @luaD_hookcall(%struct.lua_State*, %struct.CallInfo*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaG_traceexec(%struct.lua_State*, i32*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_getint(%struct.Table*, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.Table* @luaH_new(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaO_fb2int(i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.TValue* @luaH_getstr(%struct.Table*, %struct.TString*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaT_trybiniTM(%struct.lua_State*, %struct.TValue*, i64, i32, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare double @pow(double, double) local_unnamed_addr #6

; Function Attrs: optsize
declare hidden void @luaT_trybinassocTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, %union.StackValue*, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaF_close(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaF_newtbcupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden i32 @luaT_callorderiTM(%struct.lua_State*, %struct.TValue*, i32, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaD_call(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaD_tryfuncTM(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaD_pretailcall(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare hidden void @luaG_forerror(%struct.lua_State*, %struct.TValue*, i8*) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaT_getvarargs(%struct.lua_State*, %struct.CallInfo*, %union.StackValue*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden void @luaT_adjustvarargs(%struct.lua_State*, i32, %struct.CallInfo*, %struct.Proto*) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly uwtable
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
  %31 = tail call i32 @strcoll(i8* nonnull %4, i8* nonnull %18) #14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

; <label>:33:                                     ; preds = %29
  br label %34

; <label>:34:                                     ; preds = %33, %46
  %35 = phi i64 [ %51, %46 ], [ %30, %33 ]
  %36 = phi i8* [ %50, %46 ], [ %18, %33 ]
  %37 = phi i64 [ %49, %46 ], [ %16, %33 ]
  %38 = phi i8* [ %48, %46 ], [ %4, %33 ]
  %39 = tail call i64 @strlen(i8* %38) #14
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
  %52 = tail call i32 @strcoll(i8* %48, i8* %50) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %34, label %54

; <label>:54:                                     ; preds = %46, %45, %29, %42
  %55 = phi i32 [ %44, %42 ], [ %31, %29 ], [ %52, %46 ], [ -1, %45 ]
  ret i32 %55
}

; Function Attrs: optsize
declare hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.TValue*, %struct.TValue*, i32) local_unnamed_addr #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: argmemonly nounwind optsize readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: optsize
declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: optsize
declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %union.StackValue*) local_unnamed_addr #2

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noreturn optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind optsize readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { nounwind optsize readonly }

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
