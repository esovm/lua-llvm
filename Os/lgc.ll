; ModuleID = 'lgc.c'
source_filename = "lgc.c"
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
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %union.StackValue*, %union.StackValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i64)*, i64, i64 }
%union.anon.2 = type { i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i8, i8, i8, i8, i16, i16, [60 x i8], %struct.CallInfo* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Udata = type { %struct.GCObject*, i8, i8, i16, i64, %struct.Table*, %struct.GCObject*, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TValue*, i32*, %struct.Proto**, %struct.Upvaldesc*, i8*, %struct.AbsLineInfo*, %struct.LocVar*, %struct.TString*, %struct.GCObject* }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.AbsLineInfo = type { i32, i32 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.TValue] }

@.str = private unnamed_addr constant [29 x i8] c"error object is not a string\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error in __gc metamethod (\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@sweepgen.nextage = internal unnamed_addr constant [7 x i8] c"\01\03\03\04\04\05\06", align 1

; Function Attrs: nounwind optsize uwtable
define hidden void @luaC_barrier_(%struct.lua_State* nocapture readonly, %struct.GCObject* nocapture, %struct.GCObject*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 11
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %8 = icmp ult i8 %7, 3
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %3
  tail call fastcc void @reallymarkobject(%struct.global_State* %5, %struct.GCObject* %2) #6
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = and i8 %11, 6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %30, label %14

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %2, i64 0, i32 2
  %16 = load i8, i8* %15, align 1, !tbaa !15
  %17 = and i8 %16, -8
  br label %25

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 2
  %20 = load i8, i8* %19, align 1, !tbaa !15
  %21 = and i8 %20, -64
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 10
  %23 = load i8, i8* %22, align 4, !tbaa !17
  %24 = and i8 %23, 24
  br label %25

; <label>:25:                                     ; preds = %18, %14
  %26 = phi i8 [ 2, %14 ], [ %21, %18 ]
  %27 = phi i8 [ %17, %14 ], [ %24, %18 ]
  %28 = phi i8* [ %15, %14 ], [ %19, %18 ]
  %29 = or i8 %27, %26
  store i8 %29, i8* %28, align 1, !tbaa !15
  br label %30

; <label>:30:                                     ; preds = %25, %9
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @reallymarkobject(%struct.global_State*, %struct.GCObject*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 2
  %4 = load i8, i8* %3, align 1, !tbaa !15
  br label %5

; <label>:5:                                      ; preds = %28, %2
  %6 = phi i8 [ %4, %2 ], [ %32, %28 ]
  %7 = phi %struct.GCObject* [ %1, %2 ], [ %30, %28 ]
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %9 = and i8 %6, -25
  store i8 %9, i8* %8, align 1, !tbaa !15
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !18
  switch i8 %11, label %62 [
    i8 20, label %12
    i8 36, label %12
    i8 9, label %14
    i8 25, label %14
    i8 7, label %35
    i8 22, label %56
    i8 54, label %56
    i8 5, label %56
    i8 8, label %56
    i8 10, label %56
  ]

; <label>:12:                                     ; preds = %5, %5
  %13 = or i8 %9, 32
  store i8 %13, i8* %8, align 1, !tbaa !15
  br label %62

; <label>:14:                                     ; preds = %5, %5
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1
  %16 = bitcast %struct.GCObject* %15 to %struct.TValue**
  %17 = load %struct.TValue*, %struct.TValue** %16, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1, i32 1
  %19 = bitcast i8* %18 to %struct.TValue*
  %20 = icmp eq %struct.TValue* %17, %19
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %14
  %22 = or i8 %9, 32
  store i8 %22, i8* %8, align 1, !tbaa !15
  br label %23

; <label>:23:                                     ; preds = %14, %21
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i64 0, i32 1
  %25 = load i8, i8* %24, align 8, !tbaa !21
  %26 = and i8 %25, 64
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %62, label %28

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %17, i64 0, i32 0, i32 0
  %30 = load %struct.GCObject*, %struct.GCObject** %29, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %30, i64 0, i32 2
  %32 = load i8, i8* %31, align 1, !tbaa !15
  %33 = and i8 %32, 24
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %62, label %5

; <label>:35:                                     ; preds = %5
  %36 = bitcast %struct.GCObject* %7 to %struct.Udata*
  %37 = getelementptr inbounds %struct.Udata, %struct.Udata* %36, i64 0, i32 3
  %38 = load i16, i16* %37, align 2, !tbaa !23
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %56

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1, i32 1
  %42 = bitcast i8* %41 to %struct.Table**
  %43 = load %struct.Table*, %struct.Table** %42, align 8, !tbaa !25
  %44 = icmp eq %struct.Table* %43, null
  br i1 %44, label %53, label %45

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.Table, %struct.Table* %43, i64 0, i32 2
  %47 = load i8, i8* %46, align 1, !tbaa !26
  %48 = and i8 %47, 24
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

; <label>:50:                                     ; preds = %45
  %51 = bitcast %struct.Table* %43 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %51) #6
  %52 = load i8, i8* %8, align 1, !tbaa !15
  br label %53

; <label>:53:                                     ; preds = %45, %40, %50
  %54 = phi i8 [ %9, %45 ], [ %9, %40 ], [ %52, %50 ]
  %55 = or i8 %54, 32
  store i8 %55, i8* %8, align 1, !tbaa !15
  br label %62

; <label>:56:                                     ; preds = %5, %5, %5, %5, %5, %35
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %58 = bitcast %struct.GCObject** %57 to i64*
  %59 = load i64, i64* %58, align 8, !tbaa !28
  %60 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %7) #6
  %61 = bitcast %struct.GCObject** %60 to i64*
  store i64 %59, i64* %61, align 8, !tbaa !29
  store %struct.GCObject* %7, %struct.GCObject** %57, align 8, !tbaa !28
  br label %62

; <label>:62:                                     ; preds = %23, %28, %5, %53, %56, %12
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind optsize uwtable
define hidden void @luaC_barrierback_(%struct.lua_State* nocapture readonly, %struct.GCObject*) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 2
  %4 = load i8, i8* %3, align 1, !tbaa !15
  %5 = and i8 %4, 7
  %6 = icmp eq i8 %5, 6
  br i1 %6, label %15, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %9 = load %struct.global_State*, %struct.global_State** %8, align 8, !tbaa !2
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %9, i64 0, i32 24
  %11 = bitcast %struct.GCObject** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !30
  %13 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %1) #6
  %14 = bitcast %struct.GCObject** %13 to i64*
  store i64 %12, i64* %14, align 8, !tbaa !29
  store %struct.GCObject* %1, %struct.GCObject** %10, align 8, !tbaa !30
  br label %15

; <label>:15:                                     ; preds = %2, %7
  %16 = and i8 %4, -40
  %17 = or i8 %16, 5
  store i8 %17, i8* %3, align 1, !tbaa !15
  ret void
}

; Function Attrs: norecurse nounwind optsize readonly uwtable
define internal fastcc %struct.GCObject** @getgclist(%struct.GCObject* readonly) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %0, i64 0, i32 1
  %3 = load i8, i8* %2, align 8, !tbaa !18
  switch i8 %3, label %18 [
    i8 5, label %4
    i8 22, label %6
    i8 54, label %8
    i8 8, label %10
    i8 10, label %13
    i8 7, label %16
  ]

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %0, i64 3, i32 0
  br label %18

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %0, i64 1, i32 0
  br label %18

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %0, i64 1, i32 0
  br label %18

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %0, i64 4, i32 1
  %12 = bitcast i8* %11 to %struct.GCObject**
  br label %18

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %0, i64 7, i32 1
  %15 = bitcast i8* %14 to %struct.GCObject**
  br label %18

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %0, i64 2, i32 0
  br label %18

; <label>:18:                                     ; preds = %1, %16, %13, %10, %8, %6, %4
  %19 = phi %struct.GCObject** [ %17, %16 ], [ %15, %13 ], [ %12, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ], [ null, %1 ]
  ret %struct.GCObject** %19
}

; Function Attrs: norecurse nounwind optsize uwtable
define hidden void @luaC_fix(%struct.lua_State* nocapture readonly, %struct.GCObject*) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 2
  %6 = load i8, i8* %5, align 1, !tbaa !15
  %7 = and i8 %6, -32
  %8 = or i8 %7, 4
  store i8 %8, i8* %5, align 1, !tbaa !15
  %9 = bitcast %struct.GCObject* %1 to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !31
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 20
  %12 = bitcast %struct.GCObject** %11 to i64*
  store i64 %10, i64* %12, align 8, !tbaa !32
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 29
  %14 = bitcast %struct.GCObject** %13 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !33
  store i64 %15, i64* %9, align 8, !tbaa !31
  store %struct.GCObject* %1, %struct.GCObject** %13, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !2
  %6 = and i32 %1, 15
  %7 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 %2, i32 %6) #7
  %8 = bitcast i8* %7 to %struct.GCObject*
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 10
  %10 = load i8, i8* %9, align 4, !tbaa !17
  %11 = and i8 %10, 24
  %12 = getelementptr inbounds i8, i8* %7, i64 9
  store i8 %11, i8* %12, align 1, !tbaa !15
  %13 = trunc i32 %1 to i8
  %14 = getelementptr inbounds i8, i8* %7, i64 8
  store i8 %13, i8* %14, align 8, !tbaa !18
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 20
  %16 = bitcast %struct.GCObject** %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !32
  %18 = bitcast i8* %7 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !31
  %19 = bitcast %struct.GCObject** %15 to i8**
  store i8* %7, i8** %19, align 8, !tbaa !32
  ret %struct.GCObject* %8
}

; Function Attrs: optsize
declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 2
  %7 = load i8, i8* %6, align 1, !tbaa !15
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  %10 = icmp eq %struct.Table* %2, null
  %11 = or i1 %10, %9
  br i1 %11, label %83, label %12

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %2, i64 0, i32 3
  %14 = load i8, i8* %13, align 2, !tbaa !34
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %83

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 40, i64 2
  %19 = load %struct.TString*, %struct.TString** %18, align 8, !tbaa !29
  %20 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %2, i32 2, %struct.TString* %19) #7
  %21 = icmp eq %struct.TValue* %20, null
  br i1 %21, label %83, label %22

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 11
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %25 = add i8 %24, -3
  %26 = icmp ult i8 %25, 4
  br i1 %26, label %27, label %43

; <label>:27:                                     ; preds = %22
  %28 = load i8, i8* %6, align 1, !tbaa !15
  %29 = and i8 %28, -64
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 10
  %31 = load i8, i8* %30, align 4, !tbaa !17
  %32 = and i8 %31, 24
  %33 = or i8 %32, %29
  store i8 %33, i8* %6, align 1, !tbaa !15
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 21
  %35 = load %struct.GCObject**, %struct.GCObject*** %34, align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 0
  %37 = icmp eq %struct.GCObject** %35, %36
  br i1 %37, label %38, label %67

; <label>:38:                                     ; preds = %27
  br label %39

; <label>:39:                                     ; preds = %38, %39
  %40 = tail call fastcc %struct.GCObject** @sweeplist(%struct.lua_State* %0, %struct.GCObject** %35, i32 1, i32* null) #7
  %41 = icmp eq %struct.GCObject** %40, %35
  br i1 %41, label %39, label %42

; <label>:42:                                     ; preds = %39
  store %struct.GCObject** %40, %struct.GCObject*** %34, align 8, !tbaa !35
  br label %67

; <label>:43:                                     ; preds = %22
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 30
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8, !tbaa !36
  %46 = icmp eq %struct.GCObject* %45, %1
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %43
  %48 = bitcast %struct.GCObject* %1 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !31
  %50 = bitcast %struct.GCObject** %44 to i64*
  store i64 %49, i64* %50, align 8, !tbaa !36
  br label %51

; <label>:51:                                     ; preds = %47, %43
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 31
  %53 = load %struct.GCObject*, %struct.GCObject** %52, align 8, !tbaa !37
  %54 = icmp eq %struct.GCObject* %53, %1
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %51
  %56 = bitcast %struct.GCObject* %1 to i64*
  %57 = load i64, i64* %56, align 8, !tbaa !31
  %58 = bitcast %struct.GCObject** %52 to i64*
  store i64 %57, i64* %58, align 8, !tbaa !37
  br label %59

; <label>:59:                                     ; preds = %55, %51
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 32
  %61 = load %struct.GCObject*, %struct.GCObject** %60, align 8, !tbaa !38
  %62 = icmp eq %struct.GCObject* %61, %1
  br i1 %62, label %63, label %67

; <label>:63:                                     ; preds = %59
  %64 = bitcast %struct.GCObject* %1 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !31
  %66 = bitcast %struct.GCObject** %60 to i64*
  store i64 %65, i64* %66, align 8, !tbaa !38
  br label %67

; <label>:67:                                     ; preds = %59, %63, %27, %42
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 20
  br label %69

; <label>:69:                                     ; preds = %69, %67
  %70 = phi %struct.GCObject** [ %68, %67 ], [ %73, %69 ]
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8, !tbaa !29
  %72 = icmp eq %struct.GCObject* %71, %1
  %73 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %71, i64 0, i32 0
  br i1 %72, label %74, label %69

; <label>:74:                                     ; preds = %69
  %75 = bitcast %struct.GCObject* %1 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !31
  %77 = bitcast %struct.GCObject** %70 to i64*
  store i64 %76, i64* %77, align 8, !tbaa !29
  %78 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 22
  %79 = bitcast %struct.GCObject** %78 to i64*
  %80 = load i64, i64* %79, align 8, !tbaa !39
  store i64 %80, i64* %75, align 8, !tbaa !31
  store %struct.GCObject* %1, %struct.GCObject** %78, align 8, !tbaa !39
  %81 = load i8, i8* %6, align 1, !tbaa !15
  %82 = or i8 %81, 64
  store i8 %82, i8* %6, align 1, !tbaa !15
  br label %83

; <label>:83:                                     ; preds = %3, %12, %17, %74
  ret void
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define hidden void @luaC_changemode(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 12
  %6 = load i8, i8* %5, align 2, !tbaa !40
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %2
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %9
  %12 = tail call fastcc i64 @entergen(%struct.lua_State* nonnull %0, %struct.global_State* %4) #6
  br label %14

; <label>:13:                                     ; preds = %9
  tail call fastcc void @enterinc(%struct.global_State* %4) #6
  br label %14

; <label>:14:                                     ; preds = %2, %11, %13
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 5
  store i64 0, i64* %15, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @entergen(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256) #6
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 1) #6
  %3 = tail call fastcc i64 @atomic(%struct.lua_State* %0) #6
  tail call fastcc void @atomic2gen(%struct.lua_State* %0, %struct.global_State* %1) #6
  ret i64 %3
}

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc void @enterinc(%struct.global_State* nocapture) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 20
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 10
  %5 = load i8, i8* %4, align 4, !tbaa !17
  %6 = and i8 %5, 24
  %7 = icmp eq %struct.GCObject* %3, null
  br i1 %7, label %18, label %8

; <label>:8:                                      ; preds = %1
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi %struct.GCObject* [ %16, %9 ], [ %3, %8 ]
  %11 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %10, i64 0, i32 2
  %12 = load i8, i8* %11, align 1, !tbaa !15
  %13 = and i8 %12, -64
  %14 = or i8 %13, %6
  store i8 %14, i8* %11, align 1, !tbaa !15
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %10, i64 0, i32 0
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8, !tbaa !31
  %17 = icmp eq %struct.GCObject* %16, null
  br i1 %17, label %18, label %9

; <label>:18:                                     ; preds = %9, %1
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 30
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 22
  %21 = bitcast %struct.GCObject** %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %21, i8 0, i64 24, i32 8, i1 false)
  %22 = load %struct.GCObject*, %struct.GCObject** %20, align 8, !tbaa !39
  %23 = icmp eq %struct.GCObject* %22, null
  br i1 %23, label %34, label %24

; <label>:24:                                     ; preds = %18
  br label %25

; <label>:25:                                     ; preds = %24, %25
  %26 = phi %struct.GCObject* [ %32, %25 ], [ %22, %24 ]
  %27 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %26, i64 0, i32 2
  %28 = load i8, i8* %27, align 1, !tbaa !15
  %29 = and i8 %28, -64
  %30 = or i8 %29, %6
  store i8 %30, i8* %27, align 1, !tbaa !15
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %26, i64 0, i32 0
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8, !tbaa !31
  %33 = icmp eq %struct.GCObject* %32, null
  br i1 %33, label %34, label %25

; <label>:34:                                     ; preds = %25, %18
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 28
  %36 = load %struct.GCObject*, %struct.GCObject** %35, align 8, !tbaa !42
  %37 = icmp eq %struct.GCObject* %36, null
  br i1 %37, label %48, label %38

; <label>:38:                                     ; preds = %34
  br label %39

; <label>:39:                                     ; preds = %38, %39
  %40 = phi %struct.GCObject* [ %46, %39 ], [ %36, %38 ]
  %41 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %40, i64 0, i32 2
  %42 = load i8, i8* %41, align 1, !tbaa !15
  %43 = and i8 %42, -64
  %44 = or i8 %43, %6
  store i8 %44, i8* %41, align 1, !tbaa !15
  %45 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %40, i64 0, i32 0
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8, !tbaa !31
  %47 = icmp eq %struct.GCObject* %46, null
  br i1 %47, label %48, label %39

; <label>:48:                                     ; preds = %39, %34
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 33
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %51 = bitcast %struct.GCObject** %49 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 0, i64 24, i32 8, i1 false)
  store i8 8, i8* %50, align 1, !tbaa !11
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  store i8 0, i8* %52, align 2, !tbaa !40
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 5
  store i64 0, i64* %53, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaC_freeallobjects(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12
  %5 = load i8, i8* %4, align 2, !tbaa !40
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %1
  tail call fastcc void @enterinc(%struct.global_State* %3) #7
  br label %8

; <label>:8:                                      ; preds = %1, %7
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5
  store i64 0, i64* %9, align 8, !tbaa !41
  tail call fastcc void @separatetobefnz(%struct.global_State* %3, i32 1) #6
  %10 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i64 0, i32 28
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8, !tbaa !42
  %13 = icmp eq %struct.GCObject* %12, null
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %8
  br label %15

; <label>:15:                                     ; preds = %14, %15
  tail call fastcc void @GCTM(%struct.lua_State* %0) #7
  %16 = load %struct.GCObject*, %struct.GCObject** %11, align 8, !tbaa !42
  %17 = icmp eq %struct.GCObject* %16, null
  br i1 %17, label %18, label %15

; <label>:18:                                     ; preds = %15, %8
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %20 = load %struct.GCObject*, %struct.GCObject** %19, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 38
  %22 = bitcast %struct.lua_State** %21 to %struct.GCObject**
  %23 = load %struct.GCObject*, %struct.GCObject** %22, align 8, !tbaa !43
  %24 = icmp eq %struct.GCObject* %20, %23
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %18
  br label %26

; <label>:26:                                     ; preds = %25, %26
  %27 = phi %struct.GCObject* [ %29, %26 ], [ %20, %25 ]
  %28 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %27, i64 0, i32 0
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !31
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* %27) #7
  %30 = icmp eq %struct.GCObject* %29, %23
  br i1 %30, label %31, label %26

; <label>:31:                                     ; preds = %26, %18
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %33 = load %struct.GCObject*, %struct.GCObject** %32, align 8, !tbaa !39
  %34 = icmp eq %struct.GCObject* %33, null
  br i1 %34, label %41, label %35

; <label>:35:                                     ; preds = %31
  br label %36

; <label>:36:                                     ; preds = %35, %36
  %37 = phi %struct.GCObject* [ %39, %36 ], [ %33, %35 ]
  %38 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %37, i64 0, i32 0
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8, !tbaa !31
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %37) #7
  %40 = icmp eq %struct.GCObject* %39, null
  br i1 %40, label %41, label %36

; <label>:41:                                     ; preds = %36, %31
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 29
  %43 = load %struct.GCObject*, %struct.GCObject** %42, align 8, !tbaa !33
  %44 = icmp eq %struct.GCObject* %43, null
  br i1 %44, label %51, label %45

; <label>:45:                                     ; preds = %41
  br label %46

; <label>:46:                                     ; preds = %45, %46
  %47 = phi %struct.GCObject* [ %49, %46 ], [ %43, %45 ]
  %48 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %47, i64 0, i32 0
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8, !tbaa !31
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %47) #7
  %50 = icmp eq %struct.GCObject* %49, null
  br i1 %50, label %51, label %46

; <label>:51:                                     ; preds = %46, %41
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc void @separatetobefnz(%struct.global_State* nocapture, i32) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 28
  br label %4

; <label>:4:                                      ; preds = %4, %2
  %5 = phi %struct.GCObject** [ %3, %2 ], [ %8, %4 ]
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !29
  %7 = icmp eq %struct.GCObject* %6, null
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 0, i32 0
  br i1 %7, label %9, label %4

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 22
  %11 = load %struct.GCObject*, %struct.GCObject** %10, align 8, !tbaa !29
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 34
  %13 = load %struct.GCObject*, %struct.GCObject** %12, align 8, !tbaa !44
  %14 = icmp eq %struct.GCObject* %11, %13
  br i1 %14, label %49, label %15

; <label>:15:                                     ; preds = %9
  %16 = icmp ne i32 %1, 0
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 33
  %18 = bitcast %struct.GCObject** %17 to i64*
  br label %19

; <label>:19:                                     ; preds = %15, %43
  %20 = phi %struct.GCObject* [ %13, %15 ], [ %44, %43 ]
  %21 = phi %struct.GCObject* [ %11, %15 ], [ %47, %43 ]
  %22 = phi %struct.GCObject** [ %5, %15 ], [ %46, %43 ]
  %23 = phi %struct.GCObject** [ %10, %15 ], [ %45, %43 ]
  %24 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 0, i32 2
  %25 = load i8, i8* %24, align 1, !tbaa !15
  %26 = and i8 %25, 24
  %27 = icmp ne i8 %26, 0
  %28 = or i1 %16, %27
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 0, i32 0
  br label %43

; <label>:31:                                     ; preds = %19
  %32 = load %struct.GCObject*, %struct.GCObject** %17, align 8, !tbaa !45
  %33 = icmp eq %struct.GCObject* %21, %32
  %34 = bitcast %struct.GCObject* %21 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !31
  br i1 %33, label %36, label %37

; <label>:36:                                     ; preds = %31
  store i64 %35, i64* %18, align 8, !tbaa !45
  br label %37

; <label>:37:                                     ; preds = %31, %36
  %38 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 0, i32 0
  %39 = bitcast %struct.GCObject** %23 to i64*
  store i64 %35, i64* %39, align 8, !tbaa !29
  %40 = bitcast %struct.GCObject** %22 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !29
  store i64 %41, i64* %34, align 8, !tbaa !31
  store %struct.GCObject* %21, %struct.GCObject** %22, align 8, !tbaa !29
  %42 = load %struct.GCObject*, %struct.GCObject** %12, align 8, !tbaa !44
  br label %43

; <label>:43:                                     ; preds = %37, %29
  %44 = phi %struct.GCObject* [ %42, %37 ], [ %20, %29 ]
  %45 = phi %struct.GCObject** [ %23, %37 ], [ %30, %29 ]
  %46 = phi %struct.GCObject** [ %38, %37 ], [ %22, %29 ]
  %47 = load %struct.GCObject*, %struct.GCObject** %45, align 8, !tbaa !29
  %48 = icmp eq %struct.GCObject* %47, %44
  br i1 %48, label %49, label %19

; <label>:49:                                     ; preds = %43, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaC_runtilstate(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %6 = load i8, i8* %5, align 1, !tbaa !11
  %7 = zext i8 %6 to i32
  %8 = shl i32 1, %7
  %9 = and i32 %8, %1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %2
  br label %12

; <label>:12:                                     ; preds = %11, %12
  %13 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %14 = load i8, i8* %5, align 1, !tbaa !11
  %15 = zext i8 %14 to i32
  %16 = shl i32 1, %15
  %17 = and i32 %16, %1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %12, label %19

; <label>:19:                                     ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @singlestep(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  %5 = load i8, i8* %4, align 1, !tbaa !11
  switch i8 %5, label %87 [
    i8 8, label %6
    i8 0, label %32
    i8 1, label %39
    i8 3, label %55
    i8 4, label %59
    i8 5, label %63
    i8 6, label %66
    i8 7, label %67
  ]

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 38
  %9 = bitcast %struct.GCObject** %7 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %9, i8 0, i64 40, i32 8, i1 false) #8
  %10 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i64 0, i32 2
  %12 = load i8, i8* %11, align 1, !tbaa !46
  %13 = and i8 %12, 24
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %6
  %16 = bitcast %struct.lua_State* %10 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %struct.GCObject* %16) #7
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, i32 1
  %19 = load i8, i8* %18, align 8, !tbaa !47
  %20 = and i8 %19, 64
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, i32 0, i32 0
  %24 = load %struct.GCObject*, %struct.GCObject** %23, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %24, i64 0, i32 2
  %26 = load i8, i8* %25, align 1, !tbaa !15
  %27 = and i8 %26, 24
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

; <label>:29:                                     ; preds = %22
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %struct.GCObject* %24) #7
  br label %30

; <label>:30:                                     ; preds = %17, %22, %29
  tail call fastcc void @markmt(%struct.global_State* nonnull %3) #7
  %31 = tail call fastcc i64 @markbeingfnz(%struct.global_State* nonnull %3) #7
  store i8 0, i8* %4, align 1, !tbaa !11
  br label %87

; <label>:32:                                     ; preds = %1
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %34 = load %struct.GCObject*, %struct.GCObject** %33, align 8, !tbaa !28
  %35 = icmp eq %struct.GCObject* %34, null
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %32
  store i8 1, i8* %4, align 1, !tbaa !11
  br label %87

; <label>:37:                                     ; preds = %32
  %38 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  br label %87

; <label>:39:                                     ; preds = %1
  %40 = tail call fastcc i64 @atomic(%struct.lua_State* nonnull %0) #6
  %41 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 11
  store i8 3, i8* %42, align 1, !tbaa !11
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 20
  br label %44

; <label>:44:                                     ; preds = %44, %39
  %45 = tail call fastcc %struct.GCObject** @sweeplist(%struct.lua_State* %0, %struct.GCObject** nonnull %43, i32 1, i32* null) #7
  %46 = icmp eq %struct.GCObject** %45, %43
  br i1 %46, label %44, label %47

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 21
  store %struct.GCObject** %45, %struct.GCObject*** %48, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %50 = load i64, i64* %49, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %52 = load i64, i64* %51, align 8, !tbaa !49
  %53 = add nsw i64 %52, %50
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  store i64 %53, i64* %54, align 8, !tbaa !50
  br label %87

; <label>:55:                                     ; preds = %1
  %56 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %57 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 4, %struct.GCObject** nonnull %56) #6
  %58 = sext i32 %57 to i64
  br label %87

; <label>:59:                                     ; preds = %1
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %61 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 5, %struct.GCObject** nonnull %60) #6
  %62 = sext i32 %61 to i64
  br label %87

; <label>:63:                                     ; preds = %1
  %64 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 6, %struct.GCObject** null) #6
  %65 = sext i32 %64 to i64
  br label %87

; <label>:66:                                     ; preds = %1
  tail call fastcc void @checkSizes(%struct.lua_State* nonnull %0, %struct.global_State* %3) #6
  store i8 7, i8* %4, align 1, !tbaa !11
  br label %87

; <label>:67:                                     ; preds = %1
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %69 = load %struct.GCObject*, %struct.GCObject** %68, align 8, !tbaa !42
  %70 = icmp eq %struct.GCObject* %69, null
  br i1 %70, label %86, label %71

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16
  %73 = load i8, i8* %72, align 2, !tbaa !51
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %86

; <label>:75:                                     ; preds = %71
  br label %76

; <label>:76:                                     ; preds = %75, %80
  %77 = phi i32 [ %78, %80 ], [ 0, %75 ]
  tail call fastcc void @GCTM(%struct.lua_State* %0) #7
  %78 = add nuw nsw i32 %77, 1
  %79 = icmp ult i32 %78, 10
  br i1 %79, label %80, label %87

; <label>:80:                                     ; preds = %76
  %81 = load %struct.GCObject*, %struct.GCObject** %68, align 8, !tbaa !42
  %82 = icmp eq %struct.GCObject* %81, null
  br i1 %82, label %83, label %76

; <label>:83:                                     ; preds = %80
  %84 = mul i32 %78, 50
  %85 = zext i32 %84 to i64
  br label %87

; <label>:86:                                     ; preds = %71, %67
  store i8 8, i8* %4, align 1, !tbaa !11
  br label %87

; <label>:87:                                     ; preds = %76, %83, %1, %86, %66, %63, %59, %55, %47, %37, %36, %30
  %88 = phi i64 [ 0, %86 ], [ 0, %66 ], [ %65, %63 ], [ %62, %59 ], [ %58, %55 ], [ %40, %47 ], [ 0, %36 ], [ %38, %37 ], [ 1, %30 ], [ 0, %1 ], [ %85, %83 ], [ 500, %76 ]
  ret i64 %88
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15
  %5 = load i8, i8* %4, align 1, !tbaa !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %167, label %7

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12
  %9 = load i8, i8* %8, align 2, !tbaa !40
  %10 = icmp eq i8 %9, 1
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5
  %12 = load i64, i64* %11, align 8, !tbaa !41
  %13 = icmp eq i64 %12, 0
  br i1 %10, label %15, label %14

; <label>:14:                                     ; preds = %7
  br i1 %13, label %132, label %17

; <label>:15:                                     ; preds = %7
  br i1 %13, label %49, label %16

; <label>:16:                                     ; preds = %15
  tail call fastcc void @enterinc(%struct.global_State* nonnull %3) #7
  br label %17

; <label>:17:                                     ; preds = %14, %16
  tail call void @luaC_runtilstate(%struct.lua_State* nonnull %0, i32 1) #7
  %18 = tail call fastcc i64 @atomic(%struct.lua_State* nonnull %0) #7
  %19 = lshr i64 %12, 3
  %20 = add i64 %19, %12
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %17
  tail call fastcc void @atomic2gen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3) #7
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %24 = load i64, i64* %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %26 = load i64, i64* %25, align 8, !tbaa !49
  %27 = add nsw i64 %26, %24
  %28 = udiv i64 %27, 100
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13
  %30 = load i8, i8* %29, align 1, !tbaa !53
  %31 = zext i8 %30 to i64
  %32 = sub nsw i64 0, %31
  %33 = mul i64 %28, %32
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %33) #7
  br label %167

; <label>:34:                                     ; preds = %17
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %36 = load i64, i64* %35, align 8, !tbaa !48
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %38 = load i64, i64* %37, align 8, !tbaa !49
  %39 = add nsw i64 %38, %36
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  store i64 %39, i64* %40, align 8, !tbaa !50
  %41 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 11
  store i8 3, i8* %42, align 1, !tbaa !11
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 20
  br label %44

; <label>:44:                                     ; preds = %44, %34
  %45 = tail call fastcc %struct.GCObject** @sweeplist(%struct.lua_State* %0, %struct.GCObject** nonnull %43, i32 1, i32* null) #7
  %46 = icmp eq %struct.GCObject** %45, %43
  br i1 %46, label %44, label %47

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 21
  store %struct.GCObject** %45, %struct.GCObject*** %48, align 8, !tbaa !35
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256) #7
  tail call fastcc void @setpause(%struct.global_State* %3) #7
  store i64 %18, i64* %11, align 8, !tbaa !41
  br label %167

; <label>:49:                                     ; preds = %15
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  %51 = load i64, i64* %50, align 8, !tbaa !50
  %52 = udiv i64 %51, 100
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14
  %54 = load i8, i8* %53, align 8, !tbaa !54
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 2
  %57 = mul i64 %56, %52
  %58 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %59 = load i64, i64* %58, align 8, !tbaa !49
  %60 = icmp sgt i64 %59, 0
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  br i1 %60, label %62, label %83

; <label>:62:                                     ; preds = %49
  %63 = load i64, i64* %61, align 8, !tbaa !48
  %64 = add nsw i64 %63, %59
  %65 = add i64 %57, %51
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %83

; <label>:67:                                     ; preds = %62
  tail call fastcc void @enterinc(%struct.global_State* nonnull %3) #7
  %68 = tail call fastcc i64 @entergen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3) #7
  %69 = load i64, i64* %61, align 8, !tbaa !48
  %70 = load i64, i64* %58, align 8, !tbaa !49
  %71 = add nsw i64 %70, %69
  %72 = lshr exact i64 %57, 1
  %73 = add i64 %72, %51
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %82

; <label>:75:                                     ; preds = %67
  %76 = udiv i64 %71, 100
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13
  %78 = load i8, i8* %77, align 1, !tbaa !53
  %79 = zext i8 %78 to i64
  %80 = sub nsw i64 0, %76
  %81 = mul i64 %80, %79
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %81) #7
  br label %167

; <label>:82:                                     ; preds = %67
  store i64 %68, i64* %11, align 8, !tbaa !41
  tail call fastcc void @setpause(%struct.global_State* nonnull %3) #7
  br label %167

; <label>:83:                                     ; preds = %62, %49
  %84 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 30
  %85 = load %struct.GCObject*, %struct.GCObject** %84, align 8, !tbaa !36
  %86 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 32
  %87 = load %struct.GCObject*, %struct.GCObject** %86, align 8, !tbaa !38
  tail call fastcc void @markold(%struct.global_State* nonnull %3, %struct.GCObject* %85, %struct.GCObject* %87) #7
  %88 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %89 = load %struct.GCObject*, %struct.GCObject** %88, align 8, !tbaa !39
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 35
  %91 = load %struct.GCObject*, %struct.GCObject** %90, align 8, !tbaa !55
  tail call fastcc void @markold(%struct.global_State* nonnull %3, %struct.GCObject* %89, %struct.GCObject* %91) #7
  %92 = tail call fastcc i64 @atomic(%struct.lua_State* nonnull %0) #7
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %94 = load %struct.GCObject*, %struct.GCObject** %84, align 8, !tbaa !36
  %95 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** nonnull %93, %struct.GCObject* %94) #7
  %96 = load %struct.GCObject*, %struct.GCObject** %86, align 8, !tbaa !38
  %97 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** %95, %struct.GCObject* %96) #7
  %98 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 31
  %99 = bitcast %struct.GCObject** %98 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !37
  %101 = bitcast %struct.GCObject** %86 to i64*
  store i64 %100, i64* %101, align 8, !tbaa !38
  %102 = bitcast %struct.GCObject** %95 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !29
  store i64 %103, i64* %99, align 8, !tbaa !37
  %104 = bitcast %struct.GCObject** %93 to i64*
  %105 = load i64, i64* %104, align 8, !tbaa !32
  %106 = bitcast %struct.GCObject** %84 to i64*
  store i64 %105, i64* %106, align 8, !tbaa !36
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 33
  %108 = load %struct.GCObject*, %struct.GCObject** %107, align 8, !tbaa !45
  %109 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** nonnull %88, %struct.GCObject* %108) #7
  %110 = load %struct.GCObject*, %struct.GCObject** %90, align 8, !tbaa !55
  %111 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** %109, %struct.GCObject* %110) #7
  %112 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 34
  %113 = bitcast %struct.GCObject** %112 to i64*
  %114 = load i64, i64* %113, align 8, !tbaa !44
  %115 = bitcast %struct.GCObject** %90 to i64*
  store i64 %114, i64* %115, align 8, !tbaa !55
  %116 = bitcast %struct.GCObject** %109 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !29
  store i64 %117, i64* %113, align 8, !tbaa !44
  %118 = bitcast %struct.GCObject** %88 to i64*
  %119 = load i64, i64* %118, align 8, !tbaa !39
  %120 = bitcast %struct.GCObject** %107 to i64*
  store i64 %119, i64* %120, align 8, !tbaa !45
  %121 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %122 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** nonnull %121, %struct.GCObject* null) #7
  tail call fastcc void @finishgencycle(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3) #7
  %123 = load i64, i64* %61, align 8, !tbaa !48
  %124 = load i64, i64* %58, align 8, !tbaa !49
  %125 = add nsw i64 %124, %123
  %126 = udiv i64 %125, 100
  %127 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13
  %128 = load i8, i8* %127, align 1, !tbaa !53
  %129 = zext i8 %128 to i64
  %130 = sub nsw i64 0, %129
  %131 = mul i64 %126, %130
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %131) #7
  store i64 %51, i64* %50, align 8, !tbaa !50
  br label %167

; <label>:132:                                    ; preds = %14
  %133 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 18
  %134 = load i8, i8* %133, align 4, !tbaa !56
  %135 = zext i8 %134 to i64
  %136 = shl nuw nsw i64 %135, 2
  %137 = or i64 %136, 1
  %138 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %139 = load i64, i64* %138, align 8, !tbaa !49
  %140 = lshr i64 %139, 4
  %141 = mul i64 %137, %140
  %142 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 19
  %143 = load i8, i8* %142, align 1, !tbaa !57
  %144 = icmp ult i8 %143, 63
  br i1 %144, label %145, label %151

; <label>:145:                                    ; preds = %132
  %146 = zext i8 %143 to i64
  %147 = shl i64 1, %146
  %148 = lshr i64 %147, 4
  %149 = sub nsw i64 0, %137
  %150 = mul i64 %148, %149
  br label %151

; <label>:151:                                    ; preds = %145, %132
  %152 = phi i64 [ %150, %145 ], [ -9223372036854775807, %132 ]
  %153 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  br label %154

; <label>:154:                                    ; preds = %161, %151
  %155 = phi i64 [ %141, %151 ], [ %157, %161 ]
  %156 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #7
  %157 = sub i64 %155, %156
  %158 = icmp sgt i64 %157, %152
  %159 = load i8, i8* %153, align 1, !tbaa !11
  %160 = icmp eq i8 %159, 8
  br i1 %158, label %161, label %162

; <label>:161:                                    ; preds = %154
  br i1 %160, label %163, label %154

; <label>:162:                                    ; preds = %154
  br i1 %160, label %163, label %164

; <label>:163:                                    ; preds = %161, %162
  tail call fastcc void @setpause(%struct.global_State* nonnull %3) #7
  br label %167

; <label>:164:                                    ; preds = %162
  %165 = sdiv i64 %157, %137
  %166 = shl i64 %165, 4
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %166) #7
  br label %167

; <label>:167:                                    ; preds = %164, %163, %83, %82, %75, %47, %22, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 16
  store i8 %5, i8* %6, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 12
  %8 = load i8, i8* %7, align 2, !tbaa !40
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %13 = icmp ult i8 %12, 3
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %10
  store i8 3, i8* %11, align 1, !tbaa !11
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 20
  br label %16

; <label>:16:                                     ; preds = %16, %14
  %17 = tail call fastcc %struct.GCObject** @sweeplist(%struct.lua_State* %0, %struct.GCObject** nonnull %15, i32 1, i32* null) #7
  %18 = icmp eq %struct.GCObject** %17, %15
  br i1 %18, label %16, label %19

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 21
  store %struct.GCObject** %17, %struct.GCObject*** %20, align 8, !tbaa !35
  br label %21

; <label>:21:                                     ; preds = %10, %19
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256) #7
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 128) #7
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256) #7
  tail call fastcc void @setpause(%struct.global_State* nonnull %4) #7
  br label %24

; <label>:22:                                     ; preds = %2
  tail call fastcc void @enterinc(%struct.global_State* %4) #7
  %23 = tail call fastcc i64 @entergen(%struct.lua_State* nonnull %0, %struct.global_State* %4) #7
  br label %24

; <label>:24:                                     ; preds = %22, %21
  store i8 0, i8* %6, align 2, !tbaa !51
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.GCObject** @sweeplist(%struct.lua_State*, %struct.GCObject**, i32, i32*) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 10
  %8 = load i8, i8* %7, align 4, !tbaa !17
  %9 = xor i8 %8, 24
  %10 = and i8 %8, 24
  %11 = load %struct.GCObject*, %struct.GCObject** %1, align 8, !tbaa !29
  %12 = icmp ne %struct.GCObject* %11, null
  %13 = icmp sgt i32 %2, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %39

; <label>:15:                                     ; preds = %4
  br label %16

; <label>:16:                                     ; preds = %15, %32
  %17 = phi %struct.GCObject* [ %35, %32 ], [ %11, %15 ]
  %18 = phi %struct.GCObject** [ %33, %32 ], [ %1, %15 ]
  %19 = phi i32 [ %34, %32 ], [ 0, %15 ]
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %17, i64 0, i32 2
  %21 = load i8, i8* %20, align 1, !tbaa !15
  %22 = and i8 %21, %9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %16
  %25 = bitcast %struct.GCObject* %17 to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !31
  %27 = bitcast %struct.GCObject** %18 to i64*
  store i64 %26, i64* %27, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %17) #6
  br label %32

; <label>:28:                                     ; preds = %16
  %29 = and i8 %21, -64
  %30 = or i8 %29, %10
  store i8 %30, i8* %20, align 1, !tbaa !15
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %17, i64 0, i32 0
  br label %32

; <label>:32:                                     ; preds = %28, %24
  %33 = phi %struct.GCObject** [ %18, %24 ], [ %31, %28 ]
  %34 = add nuw nsw i32 %19, 1
  %35 = load %struct.GCObject*, %struct.GCObject** %33, align 8, !tbaa !29
  %36 = icmp ne %struct.GCObject* %35, null
  %37 = icmp slt i32 %34, %2
  %38 = and i1 %37, %36
  br i1 %38, label %16, label %39

; <label>:39:                                     ; preds = %32, %4
  %40 = phi i32 [ 0, %4 ], [ %34, %32 ]
  %41 = phi %struct.GCObject** [ %1, %4 ], [ %33, %32 ]
  %42 = phi %struct.GCObject* [ %11, %4 ], [ %35, %32 ]
  %43 = icmp eq i32* %3, null
  br i1 %43, label %45, label %44

; <label>:44:                                     ; preds = %39
  store i32 %40, i32* %3, align 4, !tbaa !58
  br label %45

; <label>:45:                                     ; preds = %39, %44
  %46 = icmp eq %struct.GCObject* %42, null
  %47 = select i1 %46, %struct.GCObject** null, %struct.GCObject** %41
  ret %struct.GCObject** %47
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @freeobj(%struct.lua_State*, %struct.GCObject*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !18
  switch i8 %4, label %65 [
    i8 10, label %5
    i8 9, label %7
    i8 25, label %7
    i8 22, label %18
    i8 54, label %26
    i8 5, label %34
    i8 8, label %36
    i8 7, label %38
    i8 20, label %52
    i8 36, label %59
  ]

; <label>:5:                                      ; preds = %2
  %6 = bitcast %struct.GCObject* %1 to %struct.Proto*
  tail call void @luaF_freeproto(%struct.lua_State* %0, %struct.Proto* %6) #7
  br label %65

; <label>:7:                                      ; preds = %2, %2
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1
  %9 = bitcast %struct.GCObject* %8 to %struct.TValue**
  %10 = load %struct.TValue*, %struct.TValue** %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1, i32 1
  %12 = bitcast i8* %11 to %struct.TValue*
  %13 = icmp eq %struct.TValue* %10, %12
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %7
  %15 = bitcast %struct.GCObject* %1 to %struct.UpVal*
  tail call void @luaF_unlinkupval(%struct.UpVal* nonnull %15) #7
  br label %16

; <label>:16:                                     ; preds = %7, %14
  %17 = bitcast %struct.GCObject* %1 to i8*
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %17, i64 40) #7
  br label %65

; <label>:18:                                     ; preds = %2
  %19 = bitcast %struct.GCObject* %1 to i8*
  %20 = bitcast %struct.GCObject* %1 to %struct.LClosure*
  %21 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %20, i64 0, i32 3
  %22 = load i8, i8* %21, align 2, !tbaa !22
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = add nuw nsw i64 %24, 32
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %19, i64 %25) #7
  br label %65

; <label>:26:                                     ; preds = %2
  %27 = bitcast %struct.GCObject* %1 to i8*
  %28 = bitcast %struct.GCObject* %1 to %struct.CClosure*
  %29 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %28, i64 0, i32 3
  %30 = load i8, i8* %29, align 2, !tbaa !22
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 4
  %33 = add nuw nsw i64 %32, 32
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %27, i64 %33) #7
  br label %65

; <label>:34:                                     ; preds = %2
  %35 = bitcast %struct.GCObject* %1 to %struct.Table*
  tail call void @luaH_free(%struct.lua_State* %0, %struct.Table* %35) #7
  br label %65

; <label>:36:                                     ; preds = %2
  %37 = bitcast %struct.GCObject* %1 to %struct.lua_State*
  tail call void @luaE_freethread(%struct.lua_State* %0, %struct.lua_State* %37) #7
  br label %65

; <label>:38:                                     ; preds = %2
  %39 = bitcast %struct.GCObject* %1 to %struct.Udata*
  %40 = bitcast %struct.GCObject* %1 to i8*
  %41 = getelementptr inbounds %struct.Udata, %struct.Udata* %39, i64 0, i32 3
  %42 = load i16, i16* %41, align 2, !tbaa !23
  %43 = icmp eq i16 %42, 0
  %44 = zext i16 %42 to i64
  %45 = shl nuw nsw i64 %44, 4
  %46 = add nuw nsw i64 %45, 40
  %47 = select i1 %43, i64 32, i64 %46
  %48 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1
  %49 = bitcast %struct.GCObject* %48 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !59
  %51 = add i64 %47, %50
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %40, i64 %51) #7
  br label %65

; <label>:52:                                     ; preds = %2
  %53 = bitcast %struct.GCObject* %1 to %struct.TString*
  tail call void @luaS_remove(%struct.lua_State* %0, %struct.TString* %53) #7
  %54 = bitcast %struct.GCObject* %1 to i8*
  %55 = getelementptr inbounds %struct.TString, %struct.TString* %53, i64 0, i32 4
  %56 = load i8, i8* %55, align 1, !tbaa !22
  %57 = zext i8 %56 to i64
  %58 = add nuw nsw i64 %57, 25
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %54, i64 %58) #7
  br label %65

; <label>:59:                                     ; preds = %2
  %60 = bitcast %struct.GCObject* %1 to i8*
  %61 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1
  %62 = bitcast %struct.GCObject* %61 to i64*
  %63 = load i64, i64* %62, align 8, !tbaa !22
  %64 = add i64 %63, 25
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %60, i64 %64) #7
  br label %65

; <label>:65:                                     ; preds = %2, %59, %52, %38, %36, %34, %26, %18, %16, %5
  ret void
}

; Function Attrs: optsize
declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden void @luaS_remove(%struct.lua_State*, %struct.TString*) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden void @luaF_unlinkupval(%struct.UpVal*) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @atomic(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 24
  %5 = bitcast %struct.GCObject** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !30
  store %struct.GCObject* null, %struct.GCObject** %4, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  store i8 2, i8* %7, align 1, !tbaa !11
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 2
  %9 = load i8, i8* %8, align 1, !tbaa !46
  %10 = and i8 %9, 24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %1
  %13 = bitcast %struct.lua_State* %0 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* %13) #6
  br label %14

; <label>:14:                                     ; preds = %1, %12
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, i32 1
  %16 = load i8, i8* %15, align 8, !tbaa !47
  %17 = and i8 %16, 64
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, i32 0, i32 0
  %21 = load %struct.GCObject*, %struct.GCObject** %20, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 0, i32 2
  %23 = load i8, i8* %22, align 1, !tbaa !15
  %24 = and i8 %23, 24
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

; <label>:26:                                     ; preds = %19
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %struct.GCObject* %21) #6
  br label %27

; <label>:27:                                     ; preds = %19, %14, %26
  tail call fastcc void @markmt(%struct.global_State* nonnull %3) #6
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %30 = icmp eq %struct.GCObject* %29, null
  br i1 %30, label %38, label %31

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %31, %32
  %33 = phi i64 [ %35, %32 ], [ 0, %31 ]
  %34 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #7
  %35 = add i64 %34, %33
  %36 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %37 = icmp eq %struct.GCObject* %36, null
  br i1 %37, label %38, label %32

; <label>:38:                                     ; preds = %32, %27
  %39 = phi i64 [ 0, %27 ], [ %35, %32 ]
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 36
  %41 = load %struct.lua_State*, %struct.lua_State** %40, align 8, !tbaa !29
  %42 = icmp eq %struct.lua_State* %41, null
  br i1 %42, label %111, label %43

; <label>:43:                                     ; preds = %38
  br label %44

; <label>:44:                                     ; preds = %43, %94
  %45 = phi %struct.lua_State* [ %97, %94 ], [ %41, %43 ]
  %46 = phi i32 [ %96, %94 ], [ 0, %43 ]
  %47 = phi %struct.lua_State** [ %95, %94 ], [ %40, %43 ]
  %48 = add nsw i32 %46, 1
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i64 0, i32 2
  %50 = load i8, i8* %49, align 1, !tbaa !46
  %51 = and i8 %50, 56
  %52 = icmp eq i8 %51, 0
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i64 0, i32 12
  br i1 %52, label %54, label %59

; <label>:54:                                     ; preds = %44
  %55 = load %struct.UpVal*, %struct.UpVal** %53, align 8, !tbaa !60
  %56 = icmp eq %struct.UpVal* %55, null
  br i1 %56, label %59, label %57

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i64 0, i32 14
  br label %94

; <label>:59:                                     ; preds = %54, %44
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i64 0, i32 14
  %61 = bitcast %struct.lua_State** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !61
  %63 = bitcast %struct.lua_State** %47 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !29
  store %struct.lua_State* %45, %struct.lua_State** %60, align 8, !tbaa !61
  %64 = load %struct.UpVal*, %struct.UpVal** %53, align 8, !tbaa !22
  %65 = icmp eq %struct.UpVal* %64, null
  br i1 %65, label %94, label %66

; <label>:66:                                     ; preds = %59
  br label %67

; <label>:67:                                     ; preds = %66, %90
  %68 = phi %struct.UpVal* [ %92, %90 ], [ %64, %66 ]
  %69 = phi i32 [ %70, %90 ], [ %48, %66 ]
  %70 = add nsw i32 %69, 1
  %71 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %68, i64 0, i32 2
  %72 = load i8, i8* %71, align 1, !tbaa !62
  %73 = and i8 %72, 24
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %90

; <label>:75:                                     ; preds = %67
  %76 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %68, i64 0, i32 3
  %77 = load %struct.TValue*, %struct.TValue** %76, align 8, !tbaa !19
  %78 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i64 0, i32 1
  %79 = load i8, i8* %78, align 8, !tbaa !21
  %80 = and i8 %79, 64
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %90, label %82

; <label>:82:                                     ; preds = %75
  %83 = getelementptr inbounds %struct.TValue, %struct.TValue* %77, i64 0, i32 0, i32 0
  %84 = load %struct.GCObject*, %struct.GCObject** %83, align 8, !tbaa !22
  %85 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %84, i64 0, i32 2
  %86 = load i8, i8* %85, align 1, !tbaa !15
  %87 = and i8 %86, 24
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

; <label>:89:                                     ; preds = %82
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* %84) #7
  br label %90

; <label>:90:                                     ; preds = %89, %82, %75, %67
  %91 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %68, i64 0, i32 4, i32 0, i32 0
  %92 = load %struct.UpVal*, %struct.UpVal** %91, align 8, !tbaa !22
  %93 = icmp eq %struct.UpVal* %92, null
  br i1 %93, label %94, label %67

; <label>:94:                                     ; preds = %90, %59, %57
  %95 = phi %struct.lua_State** [ %58, %57 ], [ %47, %59 ], [ %47, %90 ]
  %96 = phi i32 [ %48, %57 ], [ %48, %59 ], [ %70, %90 ]
  %97 = load %struct.lua_State*, %struct.lua_State** %95, align 8, !tbaa !29
  %98 = icmp eq %struct.lua_State* %97, null
  br i1 %98, label %99, label %44

; <label>:99:                                     ; preds = %94
  %100 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %101 = icmp eq %struct.GCObject* %100, null
  %102 = sext i32 %96 to i64
  %103 = add i64 %39, %102
  br i1 %101, label %111, label %104

; <label>:104:                                    ; preds = %99
  br label %105

; <label>:105:                                    ; preds = %104, %105
  %106 = phi i64 [ %108, %105 ], [ 0, %104 ]
  %107 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #7
  %108 = add i64 %107, %106
  %109 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %110 = icmp eq %struct.GCObject* %109, null
  br i1 %110, label %111, label %105

; <label>:111:                                    ; preds = %105, %38, %99
  %112 = phi i64 [ %103, %99 ], [ %39, %38 ], [ %103, %105 ]
  %113 = phi i64 [ 0, %99 ], [ 0, %38 ], [ %108, %105 ]
  %114 = add i64 %112, %113
  %115 = bitcast %struct.GCObject** %28 to i64*
  store i64 %6, i64* %115, align 8, !tbaa !28
  %116 = icmp eq i64 %6, 0
  br i1 %116, label %124, label %117

; <label>:117:                                    ; preds = %111
  br label %118

; <label>:118:                                    ; preds = %117, %118
  %119 = phi i64 [ %121, %118 ], [ 0, %117 ]
  %120 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #7
  %121 = add i64 %120, %119
  %122 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %123 = icmp eq %struct.GCObject* %122, null
  br i1 %123, label %124, label %118

; <label>:124:                                    ; preds = %118, %111
  %125 = phi i64 [ 0, %111 ], [ %121, %118 ]
  %126 = add i64 %114, %125
  tail call fastcc void @convergeephemerons(%struct.global_State* nonnull %3) #6
  %127 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 25
  %128 = load %struct.GCObject*, %struct.GCObject** %127, align 8, !tbaa !63
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %128, %struct.GCObject* null) #6
  %129 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 27
  %130 = load %struct.GCObject*, %struct.GCObject** %129, align 8, !tbaa !64
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %130, %struct.GCObject* null) #6
  %131 = load %struct.GCObject*, %struct.GCObject** %127, align 8, !tbaa !63
  %132 = load %struct.GCObject*, %struct.GCObject** %129, align 8, !tbaa !64
  tail call fastcc void @separatetobefnz(%struct.global_State* nonnull %3, i32 0) #6
  %133 = tail call fastcc i64 @markbeingfnz(%struct.global_State* nonnull %3) #6
  %134 = add i64 %126, %133
  %135 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %136 = icmp eq %struct.GCObject* %135, null
  br i1 %136, label %144, label %137

; <label>:137:                                    ; preds = %124
  br label %138

; <label>:138:                                    ; preds = %137, %138
  %139 = phi i64 [ %141, %138 ], [ 0, %137 ]
  %140 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #7
  %141 = add i64 %140, %139
  %142 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %143 = icmp eq %struct.GCObject* %142, null
  br i1 %143, label %144, label %138

; <label>:144:                                    ; preds = %138, %124
  %145 = phi i64 [ 0, %124 ], [ %141, %138 ]
  %146 = add i64 %134, %145
  tail call fastcc void @convergeephemerons(%struct.global_State* nonnull %3) #6
  %147 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 26
  %148 = load %struct.GCObject*, %struct.GCObject** %147, align 8, !tbaa !65
  tail call fastcc void @clearbykeys(%struct.global_State* nonnull %3, %struct.GCObject* %148) #6
  %149 = load %struct.GCObject*, %struct.GCObject** %129, align 8, !tbaa !64
  tail call fastcc void @clearbykeys(%struct.global_State* nonnull %3, %struct.GCObject* %149) #6
  %150 = load %struct.GCObject*, %struct.GCObject** %127, align 8, !tbaa !63
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %150, %struct.GCObject* %131) #6
  %151 = load %struct.GCObject*, %struct.GCObject** %129, align 8, !tbaa !64
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %151, %struct.GCObject* %132) #6
  tail call void @luaS_clearcache(%struct.global_State* nonnull %3) #7
  %152 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %153 = load i8, i8* %152, align 4, !tbaa !17
  %154 = xor i8 %153, 24
  store i8 %154, i8* %152, align 4, !tbaa !17
  ret i64 %146
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @atomic2gen(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 20
  tail call fastcc void @sweep2old(%struct.lua_State* %0, %struct.GCObject** nonnull %3) #6
  %4 = bitcast %struct.GCObject** %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 30
  %7 = bitcast %struct.GCObject** %6 to i64*
  store i64 %5, i64* %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 31
  %9 = bitcast %struct.GCObject** %8 to i64*
  store i64 %5, i64* %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 32
  %11 = bitcast %struct.GCObject** %10 to i64*
  store i64 %5, i64* %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 22
  tail call fastcc void @sweep2old(%struct.lua_State* %0, %struct.GCObject** nonnull %12) #6
  %13 = bitcast %struct.GCObject** %12 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 33
  %16 = bitcast %struct.GCObject** %15 to i64*
  store i64 %14, i64* %16, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 34
  %18 = bitcast %struct.GCObject** %17 to i64*
  store i64 %14, i64* %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 35
  %20 = bitcast %struct.GCObject** %19 to i64*
  store i64 %14, i64* %20, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 28
  tail call fastcc void @sweep2old(%struct.lua_State* %0, %struct.GCObject** nonnull %21) #6
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 12
  store i8 1, i8* %22, align 2, !tbaa !40
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 5
  store i64 0, i64* %23, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 2
  %25 = load i64, i64* %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %27 = load i64, i64* %26, align 8, !tbaa !49
  %28 = add nsw i64 %27, %25
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  store i64 %28, i64* %29, align 8, !tbaa !50
  tail call fastcc void @finishgencycle(%struct.lua_State* %0, %struct.global_State* %1) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @markmt(%struct.global_State*) unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %14, %1
  %3 = phi i64 [ 0, %1 ], [ %15, %14 ]
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 %3
  %5 = load %struct.Table*, %struct.Table** %4, align 8, !tbaa !29
  %6 = icmp eq %struct.Table* %5, null
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.Table, %struct.Table* %5, i64 0, i32 2
  %9 = load i8, i8* %8, align 1, !tbaa !26
  %10 = and i8 %9, 24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %7
  %13 = bitcast %struct.Table* %5 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %13) #6
  br label %14

; <label>:14:                                     ; preds = %7, %2, %12
  %15 = add nuw nsw i64 %3, 1
  %16 = icmp eq i64 %15, 9
  br i1 %16, label %17, label %2

; <label>:17:                                     ; preds = %14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @convergeephemerons(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 26
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  br label %4

; <label>:4:                                      ; preds = %27, %1
  %5 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !65
  store %struct.GCObject* null, %struct.GCObject** %2, align 8, !tbaa !65
  %6 = icmp eq %struct.GCObject* %5, null
  br i1 %6, label %29, label %7

; <label>:7:                                      ; preds = %4
  br label %8

; <label>:8:                                      ; preds = %7, %24
  %9 = phi %struct.GCObject* [ %13, %24 ], [ %5, %7 ]
  %10 = phi i32 [ %25, %24 ], [ 0, %7 ]
  %11 = bitcast %struct.GCObject* %9 to %struct.Table*
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i64 3, i32 0
  %13 = load %struct.GCObject*, %struct.GCObject** %12, align 8, !tbaa !22
  %14 = tail call fastcc i32 @traverseephemeron(%struct.global_State* %0, %struct.Table* %11) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

; <label>:16:                                     ; preds = %8
  %17 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !28
  %18 = icmp eq %struct.GCObject* %17, null
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %16
  br label %20

; <label>:20:                                     ; preds = %19, %20
  %21 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %0) #7
  %22 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !28
  %23 = icmp eq %struct.GCObject* %22, null
  br i1 %23, label %24, label %20

; <label>:24:                                     ; preds = %20, %16, %8
  %25 = phi i32 [ %10, %8 ], [ 1, %16 ], [ 1, %20 ]
  %26 = icmp eq %struct.GCObject* %13, null
  br i1 %26, label %27, label %8

; <label>:27:                                     ; preds = %24
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %4

; <label>:29:                                     ; preds = %4, %27
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @clearbyvalues(%struct.global_State*, %struct.GCObject*, %struct.GCObject* readnone) unnamed_addr #0 {
  %4 = icmp eq %struct.GCObject* %1, %2
  br i1 %4, label %84, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %80
  %7 = phi %struct.GCObject* [ %82, %80 ], [ %1, %5 ]
  %8 = bitcast %struct.GCObject* %7 to %struct.Table*
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1, i32 1
  %10 = bitcast i8* %9 to %union.Node**
  %11 = load %union.Node*, %union.Node** %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %8, i64 0, i32 4
  %13 = load i8, i8* %12, align 1, !tbaa !67
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %union.Node, %union.Node* %11, i64 %16
  %18 = tail call i32 @luaH_realasize(%struct.Table* %8) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1
  %22 = bitcast %struct.GCObject* %21 to %struct.TValue**
  %23 = zext i32 %18 to i64
  br label %24

; <label>:24:                                     ; preds = %39, %20
  %25 = phi i64 [ 0, %20 ], [ %40, %39 ]
  %26 = load %struct.TValue*, %struct.TValue** %22, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i64 %25, i32 1
  %28 = load i8, i8* %27, align 8, !tbaa !21
  %29 = and i8 %28, 64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i64 %25, i32 0, i32 0
  %33 = load %struct.GCObject*, %struct.GCObject** %32, align 8, !tbaa !22
  br label %34

; <label>:34:                                     ; preds = %24, %31
  %35 = phi %struct.GCObject* [ %33, %31 ], [ null, %24 ]
  %36 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %35) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

; <label>:38:                                     ; preds = %34
  store i8 16, i8* %27, align 8, !tbaa !21
  br label %39

; <label>:39:                                     ; preds = %34, %38
  %40 = add nuw nsw i64 %25, 1
  %41 = icmp eq i64 %40, %23
  br i1 %41, label %42, label %24

; <label>:42:                                     ; preds = %39, %6
  %43 = load %union.Node*, %union.Node** %10, align 8, !tbaa !66
  %44 = icmp ult %union.Node* %43, %17
  br i1 %44, label %45, label %80

; <label>:45:                                     ; preds = %42
  br label %46

; <label>:46:                                     ; preds = %45, %77
  %47 = phi %union.Node* [ %78, %77 ], [ %43, %45 ]
  %48 = getelementptr inbounds %union.Node, %union.Node* %47, i64 0, i32 0, i32 1
  %49 = load i8, i8* %48, align 8, !tbaa !22
  %50 = and i8 %49, 64
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds %union.Node, %union.Node* %47, i64 0, i32 0, i32 0, i32 0
  %54 = load %struct.GCObject*, %struct.GCObject** %53, align 8, !tbaa !22
  br label %55

; <label>:55:                                     ; preds = %46, %52
  %56 = phi %struct.GCObject* [ %54, %52 ], [ null, %46 ]
  %57 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %56) #6
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

; <label>:59:                                     ; preds = %55
  store i8 16, i8* %48, align 8, !tbaa !22
  br label %64

; <label>:60:                                     ; preds = %55
  %61 = load i8, i8* %48, align 8, !tbaa !22
  %62 = and i8 %61, 15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %77

; <label>:64:                                     ; preds = %59, %60
  %65 = getelementptr inbounds %union.Node, %union.Node* %47, i64 0, i32 0, i32 2
  %66 = load i8, i8* %65, align 1, !tbaa !22
  %67 = and i8 %66, 64
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %77, label %69

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %union.Node, %union.Node* %47, i64 0, i32 0, i32 4, i32 0
  %71 = load %struct.GCObject*, %struct.GCObject** %70, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %71, i64 0, i32 2
  %73 = load i8, i8* %72, align 1, !tbaa !15
  %74 = and i8 %73, 24
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %77, label %76

; <label>:76:                                     ; preds = %69
  store i8 5, i8* %65, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %70, align 8, !tbaa !22
  br label %77

; <label>:77:                                     ; preds = %76, %69, %64, %60
  %78 = getelementptr inbounds %union.Node, %union.Node* %47, i64 1
  %79 = icmp ult %union.Node* %78, %17
  br i1 %79, label %46, label %80

; <label>:80:                                     ; preds = %77, %42
  %81 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 3, i32 0
  %82 = load %struct.GCObject*, %struct.GCObject** %81, align 8, !tbaa !22
  %83 = icmp eq %struct.GCObject* %82, %2
  br i1 %83, label %84, label %6

; <label>:84:                                     ; preds = %80, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @markbeingfnz(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 28
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !29
  %4 = icmp eq %struct.GCObject* %3, null
  br i1 %4, label %19, label %5

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %5, %15
  %7 = phi %struct.GCObject* [ %17, %15 ], [ %3, %5 ]
  %8 = phi i64 [ %9, %15 ], [ 0, %5 ]
  %9 = add i64 %8, 1
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = and i8 %11, 24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %6
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %7) #6
  br label %15

; <label>:15:                                     ; preds = %6, %14
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 0
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8, !tbaa !29
  %18 = icmp eq %struct.GCObject* %17, null
  br i1 %18, label %19, label %6

; <label>:19:                                     ; preds = %15, %1
  %20 = phi i64 [ 0, %1 ], [ %9, %15 ]
  ret i64 %20
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @clearbykeys(%struct.global_State*, %struct.GCObject* readonly) unnamed_addr #0 {
  %3 = icmp eq %struct.GCObject* %1, null
  br i1 %3, label %57, label %4

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %53
  %6 = phi %struct.GCObject* [ %55, %53 ], [ %1, %4 ]
  %7 = bitcast %struct.GCObject* %6 to %struct.Table*
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 1, i32 1
  %9 = bitcast i8* %8 to %union.Node**
  %10 = load %union.Node*, %union.Node** %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %7, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !67
  %13 = zext i8 %12 to i32
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.Node, %union.Node* %10, i64 %15
  %17 = icmp eq i8 %12, 31
  br i1 %17, label %53, label %18

; <label>:18:                                     ; preds = %5
  br label %19

; <label>:19:                                     ; preds = %18, %50
  %20 = phi %union.Node* [ %51, %50 ], [ %10, %18 ]
  %21 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 2
  %22 = load i8, i8* %21, align 1, !tbaa !22
  %23 = and i8 %22, 64
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 4, i32 0
  %27 = load %struct.GCObject*, %struct.GCObject** %26, align 8, !tbaa !22
  br label %28

; <label>:28:                                     ; preds = %19, %25
  %29 = phi %struct.GCObject* [ %27, %25 ], [ null, %19 ]
  %30 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %29) #6
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 1
  br i1 %31, label %34, label %33

; <label>:33:                                     ; preds = %28
  store i8 16, i8* %32, align 8, !tbaa !22
  br label %38

; <label>:34:                                     ; preds = %28
  %35 = load i8, i8* %32, align 8, !tbaa !22
  %36 = and i8 %35, 15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %33, %34
  %39 = load i8, i8* %21, align 1, !tbaa !22
  %40 = and i8 %39, 64
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 4, i32 0
  %44 = load %struct.GCObject*, %struct.GCObject** %43, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %44, i64 0, i32 2
  %46 = load i8, i8* %45, align 1, !tbaa !15
  %47 = and i8 %46, 24
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

; <label>:49:                                     ; preds = %42
  store i8 5, i8* %21, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %43, align 8, !tbaa !22
  br label %50

; <label>:50:                                     ; preds = %49, %42, %38, %34
  %51 = getelementptr inbounds %union.Node, %union.Node* %20, i64 1
  %52 = icmp ult %union.Node* %51, %16
  br i1 %52, label %19, label %53

; <label>:53:                                     ; preds = %50, %5
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 3, i32 0
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8, !tbaa !22
  %56 = icmp eq %struct.GCObject* %55, null
  br i1 %56, label %57, label %5

; <label>:57:                                     ; preds = %53, %2
  ret void
}

; Function Attrs: optsize
declare hidden void @luaS_clearcache(%struct.global_State*) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @propagatemark(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 0, i32 2
  %5 = load i8, i8* %4, align 1, !tbaa !15
  %6 = or i8 %5, 32
  store i8 %6, i8* %4, align 1, !tbaa !15
  %7 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* %3) #6
  %8 = bitcast %struct.GCObject** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !29
  %10 = bitcast %struct.GCObject** %2 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !18
  switch i8 %12, label %628 [
    i8 5, label %13
    i8 7, label %261
    i8 22, label %316
    i8 54, label %357
    i8 10, label %388
    i8 8, label %526
  ]

; <label>:13:                                     ; preds = %1
  %14 = bitcast %struct.GCObject* %3 to %struct.Table*
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2, i32 1
  %16 = bitcast i8* %15 to %struct.Table**
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !69
  %18 = icmp eq %struct.Table* %17, null
  br i1 %18, label %150, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 3
  %21 = load i8, i8* %20, align 2, !tbaa !34
  %22 = and i8 %21, 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 40, i64 3
  %26 = load %struct.TString*, %struct.TString** %25, align 8, !tbaa !29
  %27 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %17, i32 3, %struct.TString* %26) #7
  %28 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !69
  %29 = icmp eq %struct.Table* %28, null
  br i1 %29, label %39, label %30

; <label>:30:                                     ; preds = %24, %19
  %31 = phi %struct.TValue* [ %27, %24 ], [ null, %19 ]
  %32 = phi %struct.Table* [ %28, %24 ], [ %17, %19 ]
  %33 = getelementptr inbounds %struct.Table, %struct.Table* %32, i64 0, i32 2
  %34 = load i8, i8* %33, align 1, !tbaa !26
  %35 = and i8 %34, 24
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %30
  %38 = bitcast %struct.Table* %32 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %38) #7
  br label %39

; <label>:39:                                     ; preds = %37, %30, %24
  %40 = phi %struct.TValue* [ %31, %30 ], [ %27, %24 ], [ %31, %37 ]
  %41 = icmp eq %struct.TValue* %40, null
  br i1 %41, label %150, label %42

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 0, i32 1
  %44 = load i8, i8* %43, align 8, !tbaa !21
  %45 = and i8 %44, 15
  %46 = icmp eq i8 %45, 4
  br i1 %46, label %47, label %150

; <label>:47:                                     ; preds = %42
  %48 = bitcast %struct.TValue* %40 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds i8, i8* %49, i64 24
  %51 = tail call i8* @strchr(i8* nonnull %50, i32 107) #9
  %52 = tail call i8* @strchr(i8* nonnull %50, i32 118) #9
  %53 = icmp ne i8* %51, null
  %54 = icmp ne i8* %52, null
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %150

; <label>:56:                                     ; preds = %47
  %57 = load i8, i8* %4, align 1, !tbaa !26
  %58 = and i8 %57, -33
  store i8 %58, i8* %4, align 1, !tbaa !26
  br i1 %53, label %141, label %59

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %61 = bitcast i8* %60 to %union.Node**
  %62 = load %union.Node*, %union.Node** %61, align 8, !tbaa !66
  %63 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %64 = load i8, i8* %63, align 1, !tbaa !67
  %65 = zext i8 %64 to i32
  %66 = shl i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %union.Node, %union.Node* %62, i64 %67
  %69 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 5
  %70 = load i32, i32* %69, align 4, !tbaa !70
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = icmp eq i8 %64, 31
  br i1 %73, label %122, label %74

; <label>:74:                                     ; preds = %59
  br label %75

; <label>:75:                                     ; preds = %74, %118
  %76 = phi i32 [ %119, %118 ], [ %72, %74 ]
  %77 = phi %union.Node* [ %120, %118 ], [ %62, %74 ]
  %78 = getelementptr inbounds %union.Node, %union.Node* %77, i64 0, i32 0, i32 1
  %79 = load i8, i8* %78, align 8, !tbaa !22
  %80 = and i8 %79, 15
  %81 = icmp eq i8 %80, 0
  %82 = getelementptr inbounds %union.Node, %union.Node* %77, i64 0, i32 0, i32 2
  %83 = load i8, i8* %82, align 1, !tbaa !22
  %84 = and i8 %83, 64
  %85 = icmp eq i8 %84, 0
  br i1 %81, label %86, label %95

; <label>:86:                                     ; preds = %75
  br i1 %85, label %118, label %87

; <label>:87:                                     ; preds = %86
  %88 = getelementptr inbounds %union.Node, %union.Node* %77, i64 0, i32 0, i32 4, i32 0
  %89 = load %struct.GCObject*, %struct.GCObject** %88, align 8, !tbaa !22
  %90 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %89, i64 0, i32 2
  %91 = load i8, i8* %90, align 1, !tbaa !15
  %92 = and i8 %91, 24
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %118, label %94

; <label>:94:                                     ; preds = %87
  store i8 5, i8* %82, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %88, align 8, !tbaa !22
  br label %118

; <label>:95:                                     ; preds = %75
  br i1 %85, label %104, label %96

; <label>:96:                                     ; preds = %95
  %97 = getelementptr inbounds %union.Node, %union.Node* %77, i64 0, i32 0, i32 4, i32 0
  %98 = load %struct.GCObject*, %struct.GCObject** %97, align 8, !tbaa !22
  %99 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %98, i64 0, i32 2
  %100 = load i8, i8* %99, align 1, !tbaa !15
  %101 = and i8 %100, 24
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103

; <label>:103:                                    ; preds = %96
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %98) #7
  br label %104

; <label>:104:                                    ; preds = %103, %96, %95
  %105 = icmp eq i32 %76, 0
  br i1 %105, label %106, label %118

; <label>:106:                                    ; preds = %104
  %107 = load i8, i8* %78, align 8, !tbaa !22
  %108 = and i8 %107, 64
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %113, label %110

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds %union.Node, %union.Node* %77, i64 0, i32 0, i32 0, i32 0
  %112 = load %struct.GCObject*, %struct.GCObject** %111, align 8, !tbaa !22
  br label %113

; <label>:113:                                    ; preds = %110, %106
  %114 = phi %struct.GCObject* [ %112, %110 ], [ null, %106 ]
  %115 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %114) #7
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  br label %118

; <label>:118:                                    ; preds = %113, %104, %94, %87, %86
  %119 = phi i32 [ %76, %104 ], [ %117, %113 ], [ %76, %86 ], [ %76, %87 ], [ %76, %94 ]
  %120 = getelementptr inbounds %union.Node, %union.Node* %77, i64 1
  %121 = icmp ult %union.Node* %120, %68
  br i1 %121, label %75, label %122

; <label>:122:                                    ; preds = %118, %59
  %123 = phi i32 [ %72, %59 ], [ %119, %118 ]
  %124 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %125 = load i8, i8* %124, align 1, !tbaa !11
  %126 = icmp eq i8 %125, 2
  %127 = icmp ne i32 %123, 0
  %128 = and i1 %127, %126
  br i1 %128, label %129, label %135

; <label>:129:                                    ; preds = %122
  %130 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 25
  %131 = bitcast %struct.GCObject** %130 to i64*
  %132 = load i64, i64* %131, align 8, !tbaa !63
  %133 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %134 = bitcast %struct.GCObject** %133 to i64*
  store i64 %132, i64* %134, align 8, !tbaa !71
  store %struct.GCObject* %3, %struct.GCObject** %130, align 8, !tbaa !63
  br label %244

; <label>:135:                                    ; preds = %122
  %136 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %137 = bitcast %struct.GCObject** %136 to i64*
  %138 = load i64, i64* %137, align 8, !tbaa !30
  %139 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %140 = bitcast %struct.GCObject** %139 to i64*
  store i64 %138, i64* %140, align 8, !tbaa !71
  store %struct.GCObject* %3, %struct.GCObject** %136, align 8, !tbaa !30
  br label %244

; <label>:141:                                    ; preds = %56
  br i1 %54, label %144, label %142

; <label>:142:                                    ; preds = %141
  %143 = tail call fastcc i32 @traverseephemeron(%struct.global_State* nonnull %0, %struct.Table* nonnull %14) #7
  br label %244

; <label>:144:                                    ; preds = %141
  %145 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %146 = bitcast %struct.GCObject** %145 to i64*
  %147 = load i64, i64* %146, align 8, !tbaa !64
  %148 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %149 = bitcast %struct.GCObject** %148 to i64*
  store i64 %147, i64* %149, align 8, !tbaa !71
  store %struct.GCObject* %3, %struct.GCObject** %145, align 8, !tbaa !64
  br label %244

; <label>:150:                                    ; preds = %47, %42, %39, %13
  %151 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %152 = bitcast i8* %151 to %union.Node**
  %153 = load %union.Node*, %union.Node** %152, align 8, !tbaa !66
  %154 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %155 = load i8, i8* %154, align 1, !tbaa !67
  %156 = zext i8 %155 to i32
  %157 = shl i32 1, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %union.Node, %union.Node* %153, i64 %158
  %160 = tail call i32 @luaH_realasize(%struct.Table* nonnull %14) #7
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %184, label %162

; <label>:162:                                    ; preds = %150
  %163 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %164 = bitcast %struct.GCObject* %163 to %struct.TValue**
  %165 = zext i32 %160 to i64
  br label %166

; <label>:166:                                    ; preds = %181, %162
  %167 = phi i64 [ 0, %162 ], [ %182, %181 ]
  %168 = load %struct.TValue*, %struct.TValue** %164, align 8, !tbaa !68
  %169 = getelementptr inbounds %struct.TValue, %struct.TValue* %168, i64 %167, i32 1
  %170 = load i8, i8* %169, align 8, !tbaa !21
  %171 = and i8 %170, 64
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %181, label %173

; <label>:173:                                    ; preds = %166
  %174 = getelementptr inbounds %struct.TValue, %struct.TValue* %168, i64 %167, i32 0, i32 0
  %175 = load %struct.GCObject*, %struct.GCObject** %174, align 8, !tbaa !22
  %176 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %175, i64 0, i32 2
  %177 = load i8, i8* %176, align 1, !tbaa !15
  %178 = and i8 %177, 24
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %181, label %180

; <label>:180:                                    ; preds = %173
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %175) #7
  br label %181

; <label>:181:                                    ; preds = %180, %173, %166
  %182 = add nuw nsw i64 %167, 1
  %183 = icmp eq i64 %182, %165
  br i1 %183, label %184, label %166

; <label>:184:                                    ; preds = %181, %150
  %185 = load %union.Node*, %union.Node** %152, align 8, !tbaa !66
  %186 = icmp ult %union.Node* %185, %159
  br i1 %186, label %187, label %232

; <label>:187:                                    ; preds = %184
  br label %188

; <label>:188:                                    ; preds = %187, %229
  %189 = phi %union.Node* [ %230, %229 ], [ %185, %187 ]
  %190 = getelementptr inbounds %union.Node, %union.Node* %189, i64 0, i32 0, i32 1
  %191 = load i8, i8* %190, align 8, !tbaa !22
  %192 = and i8 %191, 15
  %193 = icmp eq i8 %192, 0
  %194 = getelementptr inbounds %union.Node, %union.Node* %189, i64 0, i32 0, i32 2
  %195 = load i8, i8* %194, align 1, !tbaa !22
  %196 = and i8 %195, 64
  %197 = icmp eq i8 %196, 0
  br i1 %193, label %198, label %207

; <label>:198:                                    ; preds = %188
  br i1 %197, label %229, label %199

; <label>:199:                                    ; preds = %198
  %200 = getelementptr inbounds %union.Node, %union.Node* %189, i64 0, i32 0, i32 4, i32 0
  %201 = load %struct.GCObject*, %struct.GCObject** %200, align 8, !tbaa !22
  %202 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %201, i64 0, i32 2
  %203 = load i8, i8* %202, align 1, !tbaa !15
  %204 = and i8 %203, 24
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %229, label %206

; <label>:206:                                    ; preds = %199
  store i8 5, i8* %194, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %200, align 8, !tbaa !22
  br label %229

; <label>:207:                                    ; preds = %188
  br i1 %197, label %217, label %208

; <label>:208:                                    ; preds = %207
  %209 = getelementptr inbounds %union.Node, %union.Node* %189, i64 0, i32 0, i32 4, i32 0
  %210 = load %struct.GCObject*, %struct.GCObject** %209, align 8, !tbaa !22
  %211 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %210, i64 0, i32 2
  %212 = load i8, i8* %211, align 1, !tbaa !15
  %213 = and i8 %212, 24
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %217, label %215

; <label>:215:                                    ; preds = %208
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %210) #7
  %216 = load i8, i8* %190, align 8, !tbaa !22
  br label %217

; <label>:217:                                    ; preds = %215, %208, %207
  %218 = phi i8 [ %191, %208 ], [ %191, %207 ], [ %216, %215 ]
  %219 = and i8 %218, 64
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %229, label %221

; <label>:221:                                    ; preds = %217
  %222 = getelementptr inbounds %union.Node, %union.Node* %189, i64 0, i32 0, i32 0, i32 0
  %223 = load %struct.GCObject*, %struct.GCObject** %222, align 8, !tbaa !22
  %224 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %223, i64 0, i32 2
  %225 = load i8, i8* %224, align 1, !tbaa !15
  %226 = and i8 %225, 24
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %229, label %228

; <label>:228:                                    ; preds = %221
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %223) #7
  br label %229

; <label>:229:                                    ; preds = %228, %221, %217, %206, %199, %198
  %230 = getelementptr inbounds %union.Node, %union.Node* %189, i64 1
  %231 = icmp ult %union.Node* %230, %159
  br i1 %231, label %188, label %232

; <label>:232:                                    ; preds = %229, %184
  %233 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %234 = load i8, i8* %233, align 2, !tbaa !40
  %235 = icmp eq i8 %234, 1
  br i1 %235, label %236, label %244

; <label>:236:                                    ; preds = %232
  %237 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %238 = bitcast %struct.GCObject** %237 to i64*
  %239 = load i64, i64* %238, align 8, !tbaa !30
  %240 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %241 = bitcast %struct.GCObject** %240 to i64*
  store i64 %239, i64* %241, align 8, !tbaa !71
  store %struct.GCObject* %3, %struct.GCObject** %237, align 8, !tbaa !30
  %242 = load i8, i8* %4, align 1, !tbaa !26
  %243 = and i8 %242, -33
  store i8 %243, i8* %4, align 1, !tbaa !26
  br label %244

; <label>:244:                                    ; preds = %236, %232, %144, %142, %135, %129
  %245 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 5
  %246 = load i32, i32* %245, align 4, !tbaa !70
  %247 = add i32 %246, 1
  %248 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2
  %249 = bitcast %struct.GCObject* %248 to %union.Node**
  %250 = load %union.Node*, %union.Node** %249, align 8, !tbaa !72
  %251 = icmp eq %union.Node* %250, null
  br i1 %251, label %257, label %252

; <label>:252:                                    ; preds = %244
  %253 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %254 = load i8, i8* %253, align 1, !tbaa !67
  %255 = zext i8 %254 to i32
  %256 = shl i32 2, %255
  br label %257

; <label>:257:                                    ; preds = %244, %252
  %258 = phi i32 [ %256, %252 ], [ 0, %244 ]
  %259 = add i32 %247, %258
  %260 = zext i32 %259 to i64
  br label %628

; <label>:261:                                    ; preds = %1
  %262 = bitcast %struct.GCObject* %3 to %struct.Udata*
  %263 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %264 = bitcast i8* %263 to %struct.Table**
  %265 = load %struct.Table*, %struct.Table** %264, align 8, !tbaa !25
  %266 = icmp eq %struct.Table* %265, null
  br i1 %266, label %274, label %267

; <label>:267:                                    ; preds = %261
  %268 = getelementptr inbounds %struct.Table, %struct.Table* %265, i64 0, i32 2
  %269 = load i8, i8* %268, align 1, !tbaa !26
  %270 = and i8 %269, 24
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %274, label %272

; <label>:272:                                    ; preds = %267
  %273 = bitcast %struct.Table* %265 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %273) #7
  br label %274

; <label>:274:                                    ; preds = %272, %267, %261
  %275 = getelementptr inbounds %struct.Udata, %struct.Udata* %262, i64 0, i32 3
  %276 = load i16, i16* %275, align 2, !tbaa !23
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %300, label %278

; <label>:278:                                    ; preds = %274
  br label %279

; <label>:279:                                    ; preds = %278, %295
  %280 = phi i16 [ %296, %295 ], [ %276, %278 ]
  %281 = phi i64 [ %297, %295 ], [ 0, %278 ]
  %282 = getelementptr inbounds %struct.Udata, %struct.Udata* %262, i64 0, i32 7, i64 %281, i32 0, i32 1
  %283 = load i8, i8* %282, align 8, !tbaa !22
  %284 = and i8 %283, 64
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %295, label %286

; <label>:286:                                    ; preds = %279
  %287 = getelementptr inbounds %struct.Udata, %struct.Udata* %262, i64 0, i32 7, i64 %281, i32 0, i32 0, i32 0
  %288 = load %struct.GCObject*, %struct.GCObject** %287, align 8, !tbaa !22
  %289 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %288, i64 0, i32 2
  %290 = load i8, i8* %289, align 1, !tbaa !15
  %291 = and i8 %290, 24
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %295, label %293

; <label>:293:                                    ; preds = %286
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %288) #7
  %294 = load i16, i16* %275, align 2, !tbaa !23
  br label %295

; <label>:295:                                    ; preds = %293, %286, %279
  %296 = phi i16 [ %280, %286 ], [ %280, %279 ], [ %294, %293 ]
  %297 = add nuw nsw i64 %281, 1
  %298 = zext i16 %296 to i64
  %299 = icmp ult i64 %297, %298
  br i1 %299, label %279, label %300

; <label>:300:                                    ; preds = %295, %274
  %301 = phi i16 [ 0, %274 ], [ %296, %295 ]
  %302 = zext i16 %301 to i64
  %303 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %304 = load i8, i8* %303, align 2, !tbaa !40
  %305 = icmp eq i8 %304, 1
  br i1 %305, label %306, label %314

; <label>:306:                                    ; preds = %300
  %307 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %308 = bitcast %struct.GCObject** %307 to i64*
  %309 = load i64, i64* %308, align 8, !tbaa !30
  %310 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2, i32 0
  %311 = bitcast %struct.GCObject** %310 to i64*
  store i64 %309, i64* %311, align 8, !tbaa !73
  store %struct.GCObject* %3, %struct.GCObject** %307, align 8, !tbaa !30
  %312 = load i8, i8* %4, align 1, !tbaa !74
  %313 = and i8 %312, -33
  store i8 %313, i8* %4, align 1, !tbaa !74
  br label %314

; <label>:314:                                    ; preds = %300, %306
  %315 = add nuw nsw i64 %302, 1
  br label %628

; <label>:316:                                    ; preds = %1
  %317 = bitcast %struct.GCObject* %3 to %struct.LClosure*
  %318 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %319 = bitcast i8* %318 to %struct.Proto**
  %320 = load %struct.Proto*, %struct.Proto** %319, align 8, !tbaa !75
  %321 = icmp eq %struct.Proto* %320, null
  br i1 %321, label %329, label %322

; <label>:322:                                    ; preds = %316
  %323 = getelementptr inbounds %struct.Proto, %struct.Proto* %320, i64 0, i32 2
  %324 = load i8, i8* %323, align 1, !tbaa !77
  %325 = and i8 %324, 24
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %329, label %327

; <label>:327:                                    ; preds = %322
  %328 = bitcast %struct.Proto* %320 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %328) #7
  br label %329

; <label>:329:                                    ; preds = %327, %322, %316
  %330 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %317, i64 0, i32 3
  %331 = load i8, i8* %330, align 2, !tbaa !79
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %353, label %333

; <label>:333:                                    ; preds = %329
  br label %334

; <label>:334:                                    ; preds = %333, %348
  %335 = phi i8 [ %349, %348 ], [ %331, %333 ]
  %336 = phi i64 [ %350, %348 ], [ 0, %333 ]
  %337 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %317, i64 0, i32 6, i64 %336
  %338 = load %struct.UpVal*, %struct.UpVal** %337, align 8, !tbaa !29
  %339 = icmp eq %struct.UpVal* %338, null
  br i1 %339, label %348, label %340

; <label>:340:                                    ; preds = %334
  %341 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %338, i64 0, i32 2
  %342 = load i8, i8* %341, align 1, !tbaa !62
  %343 = and i8 %342, 24
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %348, label %345

; <label>:345:                                    ; preds = %340
  %346 = bitcast %struct.UpVal* %338 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %346) #7
  %347 = load i8, i8* %330, align 2, !tbaa !79
  br label %348

; <label>:348:                                    ; preds = %345, %340, %334
  %349 = phi i8 [ %335, %340 ], [ %335, %334 ], [ %347, %345 ]
  %350 = add nuw nsw i64 %336, 1
  %351 = zext i8 %349 to i64
  %352 = icmp ult i64 %350, %351
  br i1 %352, label %334, label %353

; <label>:353:                                    ; preds = %348, %329
  %354 = phi i8 [ 0, %329 ], [ %349, %348 ]
  %355 = zext i8 %354 to i64
  %356 = add nuw nsw i64 %355, 1
  br label %628

; <label>:357:                                    ; preds = %1
  %358 = bitcast %struct.GCObject* %3 to %struct.CClosure*
  %359 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %358, i64 0, i32 3
  %360 = load i8, i8* %359, align 2, !tbaa !80
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %384, label %362

; <label>:362:                                    ; preds = %357
  br label %363

; <label>:363:                                    ; preds = %362, %379
  %364 = phi i8 [ %380, %379 ], [ %360, %362 ]
  %365 = phi i64 [ %381, %379 ], [ 0, %362 ]
  %366 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %358, i64 0, i32 6, i64 %365, i32 1
  %367 = load i8, i8* %366, align 8, !tbaa !21
  %368 = and i8 %367, 64
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %379, label %370

; <label>:370:                                    ; preds = %363
  %371 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %358, i64 0, i32 6, i64 %365, i32 0, i32 0
  %372 = load %struct.GCObject*, %struct.GCObject** %371, align 8, !tbaa !22
  %373 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %372, i64 0, i32 2
  %374 = load i8, i8* %373, align 1, !tbaa !15
  %375 = and i8 %374, 24
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %379, label %377

; <label>:377:                                    ; preds = %370
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %372) #7
  %378 = load i8, i8* %359, align 2, !tbaa !80
  br label %379

; <label>:379:                                    ; preds = %377, %370, %363
  %380 = phi i8 [ %364, %370 ], [ %364, %363 ], [ %378, %377 ]
  %381 = add nuw nsw i64 %365, 1
  %382 = zext i8 %380 to i64
  %383 = icmp ult i64 %381, %382
  br i1 %383, label %363, label %384

; <label>:384:                                    ; preds = %379, %357
  %385 = phi i8 [ 0, %357 ], [ %380, %379 ]
  %386 = zext i8 %385 to i64
  %387 = add nuw nsw i64 %386, 1
  br label %628

; <label>:388:                                    ; preds = %1
  %389 = bitcast %struct.GCObject* %3 to %struct.Proto*
  %390 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 7
  %391 = bitcast %struct.GCObject* %390 to %struct.TString**
  %392 = load %struct.TString*, %struct.TString** %391, align 8, !tbaa !82
  %393 = icmp eq %struct.TString* %392, null
  br i1 %393, label %401, label %394

; <label>:394:                                    ; preds = %388
  %395 = getelementptr inbounds %struct.TString, %struct.TString* %392, i64 0, i32 2
  %396 = load i8, i8* %395, align 1, !tbaa !83
  %397 = and i8 %396, 24
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %401, label %399

; <label>:399:                                    ; preds = %394
  %400 = bitcast %struct.TString* %392 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %400) #7
  br label %401

; <label>:401:                                    ; preds = %399, %394, %388
  %402 = getelementptr inbounds %struct.Proto, %struct.Proto* %389, i64 0, i32 7
  %403 = load i32, i32* %402, align 4, !tbaa !85
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %430

; <label>:405:                                    ; preds = %401
  %406 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 1
  %407 = bitcast i8* %406 to %struct.TValue**
  br label %408

; <label>:408:                                    ; preds = %425, %405
  %409 = phi i32 [ %403, %405 ], [ %426, %425 ]
  %410 = phi i64 [ 0, %405 ], [ %427, %425 ]
  %411 = load %struct.TValue*, %struct.TValue** %407, align 8, !tbaa !86
  %412 = getelementptr inbounds %struct.TValue, %struct.TValue* %411, i64 %410, i32 1
  %413 = load i8, i8* %412, align 8, !tbaa !21
  %414 = and i8 %413, 64
  %415 = icmp eq i8 %414, 0
  br i1 %415, label %425, label %416

; <label>:416:                                    ; preds = %408
  %417 = getelementptr inbounds %struct.TValue, %struct.TValue* %411, i64 %410, i32 0, i32 0
  %418 = load %struct.GCObject*, %struct.GCObject** %417, align 8, !tbaa !22
  %419 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %418, i64 0, i32 2
  %420 = load i8, i8* %419, align 1, !tbaa !15
  %421 = and i8 %420, 24
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %425, label %423

; <label>:423:                                    ; preds = %416
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %418) #7
  %424 = load i32, i32* %402, align 4, !tbaa !85
  br label %425

; <label>:425:                                    ; preds = %423, %416, %408
  %426 = phi i32 [ %409, %416 ], [ %409, %408 ], [ %424, %423 ]
  %427 = add nuw nsw i64 %410, 1
  %428 = sext i32 %426 to i64
  %429 = icmp slt i64 %427, %428
  br i1 %429, label %408, label %430

; <label>:430:                                    ; preds = %425, %401
  %431 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %432 = bitcast %struct.GCObject* %431 to i32*
  %433 = load i32, i32* %432, align 8, !tbaa !87
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %435, label %458

; <label>:435:                                    ; preds = %430
  %436 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 5
  %437 = bitcast %struct.GCObject* %436 to %struct.Upvaldesc**
  br label %438

; <label>:438:                                    ; preds = %453, %435
  %439 = phi i32 [ %433, %435 ], [ %454, %453 ]
  %440 = phi i64 [ 0, %435 ], [ %455, %453 ]
  %441 = load %struct.Upvaldesc*, %struct.Upvaldesc** %437, align 8, !tbaa !88
  %442 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %441, i64 %440, i32 0
  %443 = load %struct.TString*, %struct.TString** %442, align 8, !tbaa !89
  %444 = icmp eq %struct.TString* %443, null
  br i1 %444, label %453, label %445

; <label>:445:                                    ; preds = %438
  %446 = getelementptr inbounds %struct.TString, %struct.TString* %443, i64 0, i32 2
  %447 = load i8, i8* %446, align 1, !tbaa !83
  %448 = and i8 %447, 24
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %453, label %450

; <label>:450:                                    ; preds = %445
  %451 = bitcast %struct.TString* %443 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %451) #7
  %452 = load i32, i32* %432, align 8, !tbaa !87
  br label %453

; <label>:453:                                    ; preds = %450, %445, %438
  %454 = phi i32 [ %439, %445 ], [ %439, %438 ], [ %452, %450 ]
  %455 = add nuw nsw i64 %440, 1
  %456 = sext i32 %454 to i64
  %457 = icmp slt i64 %455, %456
  br i1 %457, label %438, label %458

; <label>:458:                                    ; preds = %453, %430
  %459 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2
  %460 = bitcast %struct.GCObject* %459 to i32*
  %461 = load i32, i32* %460, align 8, !tbaa !91
  %462 = icmp sgt i32 %461, 0
  br i1 %462, label %463, label %486

; <label>:463:                                    ; preds = %458
  %464 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %465 = bitcast i8* %464 to %struct.Proto***
  br label %466

; <label>:466:                                    ; preds = %481, %463
  %467 = phi i32 [ %461, %463 ], [ %482, %481 ]
  %468 = phi i64 [ 0, %463 ], [ %483, %481 ]
  %469 = load %struct.Proto**, %struct.Proto*** %465, align 8, !tbaa !92
  %470 = getelementptr inbounds %struct.Proto*, %struct.Proto** %469, i64 %468
  %471 = load %struct.Proto*, %struct.Proto** %470, align 8, !tbaa !29
  %472 = icmp eq %struct.Proto* %471, null
  br i1 %472, label %481, label %473

; <label>:473:                                    ; preds = %466
  %474 = getelementptr inbounds %struct.Proto, %struct.Proto* %471, i64 0, i32 2
  %475 = load i8, i8* %474, align 1, !tbaa !77
  %476 = and i8 %475, 24
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %481, label %478

; <label>:478:                                    ; preds = %473
  %479 = bitcast %struct.Proto* %471 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %479) #7
  %480 = load i32, i32* %460, align 8, !tbaa !91
  br label %481

; <label>:481:                                    ; preds = %478, %473, %466
  %482 = phi i32 [ %467, %473 ], [ %467, %466 ], [ %480, %478 ]
  %483 = add nuw nsw i64 %468, 1
  %484 = sext i32 %482 to i64
  %485 = icmp slt i64 %483, %484
  br i1 %485, label %466, label %486

; <label>:486:                                    ; preds = %481, %458
  %487 = phi i32 [ %461, %458 ], [ %482, %481 ]
  %488 = getelementptr inbounds %struct.Proto, %struct.Proto* %389, i64 0, i32 11
  %489 = load i32, i32* %488, align 4, !tbaa !93
  %490 = icmp sgt i32 %489, 0
  br i1 %490, label %491, label %516

; <label>:491:                                    ; preds = %486
  %492 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 6, i32 1
  %493 = bitcast i8* %492 to %struct.LocVar**
  br label %494

; <label>:494:                                    ; preds = %509, %491
  %495 = phi i32 [ %489, %491 ], [ %510, %509 ]
  %496 = phi i64 [ 0, %491 ], [ %511, %509 ]
  %497 = load %struct.LocVar*, %struct.LocVar** %493, align 8, !tbaa !94
  %498 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %497, i64 %496, i32 0
  %499 = load %struct.TString*, %struct.TString** %498, align 8, !tbaa !95
  %500 = icmp eq %struct.TString* %499, null
  br i1 %500, label %509, label %501

; <label>:501:                                    ; preds = %494
  %502 = getelementptr inbounds %struct.TString, %struct.TString* %499, i64 0, i32 2
  %503 = load i8, i8* %502, align 1, !tbaa !83
  %504 = and i8 %503, 24
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %509, label %506

; <label>:506:                                    ; preds = %501
  %507 = bitcast %struct.TString* %499 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %507) #7
  %508 = load i32, i32* %488, align 4, !tbaa !93
  br label %509

; <label>:509:                                    ; preds = %506, %501, %494
  %510 = phi i32 [ %495, %501 ], [ %495, %494 ], [ %508, %506 ]
  %511 = add nuw nsw i64 %496, 1
  %512 = sext i32 %510 to i64
  %513 = icmp slt i64 %511, %512
  br i1 %513, label %494, label %514

; <label>:514:                                    ; preds = %509
  %515 = load i32, i32* %460, align 8, !tbaa !91
  br label %516

; <label>:516:                                    ; preds = %486, %514
  %517 = phi i32 [ %487, %486 ], [ %515, %514 ]
  %518 = phi i32 [ %489, %486 ], [ %510, %514 ]
  %519 = load i32, i32* %402, align 4, !tbaa !85
  %520 = load i32, i32* %432, align 8, !tbaa !87
  %521 = add i32 %517, 1
  %522 = add i32 %521, %518
  %523 = add i32 %522, %519
  %524 = add i32 %523, %520
  %525 = sext i32 %524 to i64
  br label %628

; <label>:526:                                    ; preds = %1
  %527 = bitcast %struct.GCObject* %3 to %struct.lua_State*
  %528 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %529 = bitcast %struct.GCObject** %528 to i64*
  %530 = load i64, i64* %529, align 8, !tbaa !30
  %531 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %532 = bitcast i8* %531 to i64*
  store i64 %530, i64* %532, align 8, !tbaa !97
  store %struct.GCObject* %3, %struct.GCObject** %528, align 8, !tbaa !30
  %533 = and i8 %5, -33
  store i8 %533, i8* %4, align 1, !tbaa !15
  %534 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 1
  %535 = bitcast i8* %534 to %union.StackValue**
  %536 = load %union.StackValue*, %union.StackValue** %535, align 8, !tbaa !98
  %537 = icmp eq %union.StackValue* %536, null
  br i1 %537, label %628, label %538

; <label>:538:                                    ; preds = %526
  %539 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %540 = bitcast %struct.GCObject* %539 to %union.StackValue**
  %541 = load %union.StackValue*, %union.StackValue** %540, align 8, !tbaa !99
  %542 = icmp ult %union.StackValue* %536, %541
  br i1 %542, label %543, label %564

; <label>:543:                                    ; preds = %538
  br label %544

; <label>:544:                                    ; preds = %543, %560
  %545 = phi %union.StackValue* [ %561, %560 ], [ %541, %543 ]
  %546 = phi %union.StackValue* [ %562, %560 ], [ %536, %543 ]
  %547 = getelementptr inbounds %union.StackValue, %union.StackValue* %546, i64 0, i32 0, i32 1
  %548 = load i8, i8* %547, align 8, !tbaa !22
  %549 = and i8 %548, 64
  %550 = icmp eq i8 %549, 0
  br i1 %550, label %560, label %551

; <label>:551:                                    ; preds = %544
  %552 = getelementptr inbounds %union.StackValue, %union.StackValue* %546, i64 0, i32 0, i32 0, i32 0
  %553 = load %struct.GCObject*, %struct.GCObject** %552, align 8, !tbaa !22
  %554 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %553, i64 0, i32 2
  %555 = load i8, i8* %554, align 1, !tbaa !15
  %556 = and i8 %555, 24
  %557 = icmp eq i8 %556, 0
  br i1 %557, label %560, label %558

; <label>:558:                                    ; preds = %551
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %553) #7
  %559 = load %union.StackValue*, %union.StackValue** %540, align 8, !tbaa !99
  br label %560

; <label>:560:                                    ; preds = %558, %551, %544
  %561 = phi %union.StackValue* [ %545, %551 ], [ %545, %544 ], [ %559, %558 ]
  %562 = getelementptr inbounds %union.StackValue, %union.StackValue* %546, i64 1
  %563 = icmp ult %union.StackValue* %562, %561
  br i1 %563, label %544, label %564

; <label>:564:                                    ; preds = %560, %538
  %565 = phi %union.StackValue* [ %536, %538 ], [ %562, %560 ]
  %566 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4
  %567 = bitcast %struct.GCObject* %566 to %struct.UpVal**
  %568 = load %struct.UpVal*, %struct.UpVal** %567, align 8, !tbaa !22
  %569 = icmp eq %struct.UpVal* %568, null
  br i1 %569, label %587, label %570

; <label>:570:                                    ; preds = %564
  br label %571

; <label>:571:                                    ; preds = %570, %583
  %572 = phi %struct.UpVal* [ %585, %583 ], [ %568, %570 ]
  %573 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %572, i64 0, i32 1
  %574 = load i8, i8* %573, align 8, !tbaa !100
  %575 = icmp eq i8 %574, 25
  br i1 %575, label %576, label %583

; <label>:576:                                    ; preds = %571
  %577 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %572, i64 0, i32 2
  %578 = load i8, i8* %577, align 1, !tbaa !62
  %579 = and i8 %578, 24
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %583, label %581

; <label>:581:                                    ; preds = %576
  %582 = bitcast %struct.UpVal* %572 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %582) #7
  br label %583

; <label>:583:                                    ; preds = %581, %576, %571
  %584 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %572, i64 0, i32 4, i32 0, i32 0
  %585 = load %struct.UpVal*, %struct.UpVal** %584, align 8, !tbaa !22
  %586 = icmp eq %struct.UpVal* %585, null
  br i1 %586, label %587, label %571

; <label>:587:                                    ; preds = %583, %564
  %588 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %589 = load i8, i8* %588, align 1, !tbaa !11
  %590 = icmp eq i8 %589, 2
  br i1 %590, label %591, label %618

; <label>:591:                                    ; preds = %587
  %592 = load %union.StackValue*, %union.StackValue** %535, align 8, !tbaa !98
  %593 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %527, i64 0, i32 20
  %594 = load i32, i32* %593, align 4, !tbaa !101
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds %union.StackValue, %union.StackValue* %592, i64 %595
  %597 = icmp ult %union.StackValue* %565, %596
  br i1 %597, label %598, label %604

; <label>:598:                                    ; preds = %591
  br label %599

; <label>:599:                                    ; preds = %598, %599
  %600 = phi %union.StackValue* [ %602, %599 ], [ %565, %598 ]
  %601 = getelementptr inbounds %union.StackValue, %union.StackValue* %600, i64 0, i32 0, i32 1
  store i8 0, i8* %601, align 8, !tbaa !22
  %602 = getelementptr inbounds %union.StackValue, %union.StackValue* %600, i64 1
  %603 = icmp ult %union.StackValue* %602, %596
  br i1 %603, label %599, label %604

; <label>:604:                                    ; preds = %599, %591
  %605 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 5
  %606 = bitcast %struct.GCObject* %605 to %struct.lua_State**
  %607 = load %struct.lua_State*, %struct.lua_State** %606, align 8, !tbaa !61
  %608 = icmp eq %struct.lua_State* %607, %527
  br i1 %608, label %609, label %623

; <label>:609:                                    ; preds = %604
  %610 = load %struct.UpVal*, %struct.UpVal** %567, align 8, !tbaa !60
  %611 = icmp eq %struct.UpVal* %610, null
  br i1 %611, label %623, label %612

; <label>:612:                                    ; preds = %609
  %613 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 36
  %614 = bitcast %struct.lua_State** %613 to i64*
  %615 = load i64, i64* %614, align 8, !tbaa !102
  %616 = bitcast %struct.GCObject* %605 to i64*
  store i64 %615, i64* %616, align 8, !tbaa !61
  %617 = bitcast %struct.lua_State** %613 to %struct.GCObject**
  store %struct.GCObject* %3, %struct.GCObject** %617, align 8, !tbaa !102
  br label %623

; <label>:618:                                    ; preds = %587
  %619 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 16
  %620 = load i8, i8* %619, align 2, !tbaa !51
  %621 = icmp eq i8 %620, 0
  br i1 %621, label %622, label %623

; <label>:622:                                    ; preds = %618
  tail call void @luaD_shrinkstack(%struct.lua_State* %527) #7
  br label %623

; <label>:623:                                    ; preds = %622, %618, %612, %609, %604
  %624 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %527, i64 0, i32 20
  %625 = load i32, i32* %624, align 4, !tbaa !101
  %626 = add nsw i32 %625, 1
  %627 = sext i32 %626 to i64
  br label %628

; <label>:628:                                    ; preds = %623, %526, %1, %516, %384, %353, %314, %257
  %629 = phi i64 [ %525, %516 ], [ %387, %384 ], [ %356, %353 ], [ %315, %314 ], [ %260, %257 ], [ 0, %1 ], [ %627, %623 ], [ 1, %526 ]
  ret i64 %629
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @traverseephemeron(%struct.global_State*, %struct.Table*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %6 = load i8, i8* %5, align 1, !tbaa !67
  %7 = zext i8 %6 to i32
  %8 = shl i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %union.Node, %union.Node* %4, i64 %9
  %11 = tail call i32 @luaH_realasize(%struct.Table* %1) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %15 = zext i32 %11 to i64
  br label %16

; <label>:16:                                     ; preds = %32, %13
  %17 = phi i64 [ 0, %13 ], [ %34, %32 ]
  %18 = phi i32 [ 0, %13 ], [ %33, %32 ]
  %19 = load %struct.TValue*, %struct.TValue** %14, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 %17, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !21
  %22 = and i8 %21, 64
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.TValue, %struct.TValue* %19, i64 %17, i32 0, i32 0
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %26, i64 0, i32 2
  %28 = load i8, i8* %27, align 1, !tbaa !15
  %29 = and i8 %28, 24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %24
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %26) #6
  br label %32

; <label>:32:                                     ; preds = %24, %16, %31
  %33 = phi i32 [ 1, %31 ], [ %18, %24 ], [ %18, %16 ]
  %34 = add nuw nsw i64 %17, 1
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %36, label %16

; <label>:36:                                     ; preds = %32, %2
  %37 = phi i32 [ 0, %2 ], [ %33, %32 ]
  %38 = load %union.Node*, %union.Node** %3, align 8, !tbaa !66
  %39 = icmp ult %union.Node* %38, %10
  br i1 %39, label %40, label %98

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %40, %92
  %42 = phi i32 [ %95, %92 ], [ %37, %40 ]
  %43 = phi i32 [ %94, %92 ], [ 0, %40 ]
  %44 = phi %union.Node* [ %96, %92 ], [ %38, %40 ]
  %45 = phi i32 [ %93, %92 ], [ 0, %40 ]
  %46 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 1
  %47 = load i8, i8* %46, align 8, !tbaa !22
  %48 = and i8 %47, 15
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 2
  %51 = load i8, i8* %50, align 1, !tbaa !22
  %52 = and i8 %51, 64
  %53 = icmp eq i8 %52, 0
  br i1 %49, label %54, label %63

; <label>:54:                                     ; preds = %41
  br i1 %53, label %92, label %55

; <label>:55:                                     ; preds = %54
  %56 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 4, i32 0
  %57 = load %struct.GCObject*, %struct.GCObject** %56, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %57, i64 0, i32 2
  %59 = load i8, i8* %58, align 1, !tbaa !15
  %60 = and i8 %59, 24
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %92, label %62

; <label>:62:                                     ; preds = %55
  store i8 5, i8* %50, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %56, align 8, !tbaa !22
  br label %92

; <label>:63:                                     ; preds = %41
  br i1 %53, label %67, label %64

; <label>:64:                                     ; preds = %63
  %65 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 4, i32 0
  %66 = load %struct.GCObject*, %struct.GCObject** %65, align 8, !tbaa !22
  br label %67

; <label>:67:                                     ; preds = %63, %64
  %68 = phi %struct.GCObject* [ %66, %64 ], [ null, %63 ]
  %69 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %68) #6
  %70 = icmp eq i32 %69, 0
  %71 = load i8, i8* %46, align 8, !tbaa !22
  %72 = and i8 %71, 64
  %73 = icmp eq i8 %72, 0
  br i1 %70, label %83, label %74

; <label>:74:                                     ; preds = %67
  br i1 %73, label %92, label %75

; <label>:75:                                     ; preds = %74
  %76 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 0, i32 0
  %77 = load %struct.GCObject*, %struct.GCObject** %76, align 8, !tbaa !22
  %78 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %77, i64 0, i32 2
  %79 = load i8, i8* %78, align 1, !tbaa !15
  %80 = and i8 %79, 24
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i32 %45, i32 1
  br label %92

; <label>:83:                                     ; preds = %67
  br i1 %73, label %92, label %84

; <label>:84:                                     ; preds = %83
  %85 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 0, i32 0
  %86 = load %struct.GCObject*, %struct.GCObject** %85, align 8, !tbaa !22
  %87 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %86, i64 0, i32 2
  %88 = load i8, i8* %87, align 1, !tbaa !15
  %89 = and i8 %88, 24
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91

; <label>:91:                                     ; preds = %84
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %86) #6
  br label %92

; <label>:92:                                     ; preds = %62, %55, %54, %75, %74, %84, %83, %91
  %93 = phi i32 [ %45, %74 ], [ %45, %91 ], [ %45, %84 ], [ %45, %83 ], [ %82, %75 ], [ %45, %54 ], [ %45, %55 ], [ %45, %62 ]
  %94 = phi i32 [ 1, %74 ], [ %43, %91 ], [ %43, %84 ], [ %43, %83 ], [ 1, %75 ], [ %43, %54 ], [ %43, %55 ], [ %43, %62 ]
  %95 = phi i32 [ %42, %74 ], [ 1, %91 ], [ %42, %84 ], [ %42, %83 ], [ %42, %75 ], [ %42, %54 ], [ %42, %55 ], [ %42, %62 ]
  %96 = getelementptr inbounds %union.Node, %union.Node* %44, i64 1
  %97 = icmp ult %union.Node* %96, %10
  br i1 %97, label %41, label %98

; <label>:98:                                     ; preds = %92, %36
  %99 = phi i32 [ 0, %36 ], [ %93, %92 ]
  %100 = phi i32 [ 0, %36 ], [ %94, %92 ]
  %101 = phi i32 [ %37, %36 ], [ %95, %92 ]
  %102 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %103 = load i8, i8* %102, align 1, !tbaa !11
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %112

; <label>:105:                                    ; preds = %98
  %106 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %107 = bitcast %struct.GCObject** %106 to i64*
  %108 = load i64, i64* %107, align 8, !tbaa !30
  %109 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %110 = bitcast %struct.GCObject** %109 to i64*
  store i64 %108, i64* %110, align 8, !tbaa !71
  %111 = bitcast %struct.GCObject** %106 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %111, align 8, !tbaa !30
  br label %145

; <label>:112:                                    ; preds = %98
  %113 = icmp eq i32 %99, 0
  br i1 %113, label %121, label %114

; <label>:114:                                    ; preds = %112
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 26
  %116 = bitcast %struct.GCObject** %115 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !65
  %118 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %119 = bitcast %struct.GCObject** %118 to i64*
  store i64 %117, i64* %119, align 8, !tbaa !71
  %120 = bitcast %struct.GCObject** %115 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %120, align 8, !tbaa !65
  br label %145

; <label>:121:                                    ; preds = %112
  %122 = icmp eq i32 %100, 0
  br i1 %122, label %130, label %123

; <label>:123:                                    ; preds = %121
  %124 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %125 = bitcast %struct.GCObject** %124 to i64*
  %126 = load i64, i64* %125, align 8, !tbaa !64
  %127 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %128 = bitcast %struct.GCObject** %127 to i64*
  store i64 %126, i64* %128, align 8, !tbaa !71
  %129 = bitcast %struct.GCObject** %124 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %129, align 8, !tbaa !64
  br label %145

; <label>:130:                                    ; preds = %121
  %131 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %132 = load i8, i8* %131, align 2, !tbaa !40
  %133 = icmp eq i8 %132, 1
  br i1 %133, label %134, label %141

; <label>:134:                                    ; preds = %130
  %135 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %136 = bitcast %struct.GCObject** %135 to i64*
  %137 = load i64, i64* %136, align 8, !tbaa !30
  %138 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %139 = bitcast %struct.GCObject** %138 to i64*
  store i64 %137, i64* %139, align 8, !tbaa !71
  %140 = bitcast %struct.GCObject** %135 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %140, align 8, !tbaa !30
  br label %145

; <label>:141:                                    ; preds = %130
  %142 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %143 = load i8, i8* %142, align 1, !tbaa !26
  %144 = or i8 %143, 32
  store i8 %144, i8* %142, align 1, !tbaa !26
  br label %145

; <label>:145:                                    ; preds = %114, %134, %141, %123, %105
  ret i32 %101
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @iscleared(%struct.global_State*, %struct.GCObject*) unnamed_addr #0 {
  %3 = icmp eq %struct.GCObject* %1, null
  br i1 %3, label %17, label %4

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 1
  %6 = load i8, i8* %5, align 8, !tbaa !18
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 4
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 2
  %10 = load i8, i8* %9, align 1, !tbaa !15
  %11 = and i8 %10, 24
  br i1 %8, label %12, label %15

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %12
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %1) #6
  br label %17

; <label>:15:                                     ; preds = %4
  %16 = zext i8 %11 to i32
  br label %17

; <label>:17:                                     ; preds = %14, %12, %2, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %2 ], [ 0, %12 ], [ 0, %14 ]
  ret i32 %18
}

; Function Attrs: optsize
declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden void @luaD_shrinkstack(%struct.lua_State*) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sweep2old(%struct.lua_State*, %struct.GCObject** nocapture) unnamed_addr #0 {
  %3 = load %struct.GCObject*, %struct.GCObject** %1, align 8, !tbaa !29
  %4 = icmp eq %struct.GCObject* %3, null
  br i1 %4, label %25, label %5

; <label>:5:                                      ; preds = %2
  br label %6

; <label>:6:                                      ; preds = %5, %21
  %7 = phi %struct.GCObject* [ %23, %21 ], [ %3, %5 ]
  %8 = phi %struct.GCObject** [ %22, %21 ], [ %1, %5 ]
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %10 = load i8, i8* %9, align 1, !tbaa !15
  %11 = and i8 %10, 24
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %6
  %14 = bitcast %struct.GCObject* %7 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !31
  %16 = bitcast %struct.GCObject** %8 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %7) #6
  br label %21

; <label>:17:                                     ; preds = %6
  %18 = and i8 %10, -8
  %19 = or i8 %18, 4
  store i8 %19, i8* %9, align 1, !tbaa !15
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 0
  br label %21

; <label>:21:                                     ; preds = %17, %13
  %22 = phi %struct.GCObject** [ %8, %13 ], [ %20, %17 ]
  %23 = load %struct.GCObject*, %struct.GCObject** %22, align 8, !tbaa !29
  %24 = icmp eq %struct.GCObject* %23, null
  br i1 %24, label %25, label %6

; <label>:25:                                     ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @finishgencycle(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 24
  %4 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** nonnull %3) #7
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 25
  %6 = bitcast %struct.GCObject** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !63
  %8 = bitcast %struct.GCObject** %4 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %5, align 8, !tbaa !63
  %9 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %4) #7
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 27
  %11 = bitcast %struct.GCObject** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !64
  %13 = bitcast %struct.GCObject** %9 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %10, align 8, !tbaa !64
  %14 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %9) #7
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 26
  %16 = bitcast %struct.GCObject** %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !65
  %18 = bitcast %struct.GCObject** %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %15, align 8, !tbaa !65
  %19 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %14) #7
  tail call fastcc void @checkSizes(%struct.lua_State* %0, %struct.global_State* %1) #6
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %20, align 1, !tbaa !11
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 16
  %22 = load i8, i8* %21, align 2, !tbaa !51
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8, !tbaa !2
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i64 0, i32 28
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8, !tbaa !42
  %29 = icmp eq %struct.GCObject* %28, null
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %24
  br label %31

; <label>:31:                                     ; preds = %30, %31
  tail call fastcc void @GCTM(%struct.lua_State* %0) #7
  %32 = load %struct.GCObject*, %struct.GCObject** %27, align 8, !tbaa !42
  %33 = icmp eq %struct.GCObject* %32, null
  br i1 %33, label %34, label %31

; <label>:34:                                     ; preds = %31, %24, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @checkSizes(%struct.lua_State*, %struct.global_State* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 16
  %4 = load i8, i8* %3, align 2, !tbaa !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %24

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !103
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !104
  %13 = sdiv i32 %12, 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %6
  %16 = sdiv i32 %12, 2
  tail call void @luaS_resize(%struct.lua_State* %0, i32 %16) #7
  %17 = load i64, i64* %7, align 8, !tbaa !49
  br label %18

; <label>:18:                                     ; preds = %15, %6
  %19 = phi i64 [ %17, %15 ], [ %8, %6 ]
  %20 = sub i64 %19, %8
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  %22 = load i64, i64* %21, align 8, !tbaa !50
  %23 = add i64 %20, %22
  store i64 %23, i64* %21, align 8, !tbaa !50
  br label %24

; <label>:24:                                     ; preds = %2, %18
  ret void
}

; Function Attrs: norecurse nounwind optsize uwtable
define internal fastcc %struct.GCObject** @correctgraylist(%struct.GCObject**) unnamed_addr #2 {
  %2 = load %struct.GCObject*, %struct.GCObject** %0, align 8, !tbaa !29
  %3 = icmp eq %struct.GCObject* %2, null
  br i1 %3, label %55, label %4

; <label>:4:                                      ; preds = %1
  br label %5

; <label>:5:                                      ; preds = %4, %51
  %6 = phi %struct.GCObject* [ %52, %51 ], [ %2, %4 ]
  %7 = phi %struct.GCObject** [ %53, %51 ], [ %0, %4 ]
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !18
  switch i8 %9, label %48 [
    i8 5, label %10
    i8 7, label %10
    i8 8, label %35
  ]

; <label>:10:                                     ; preds = %5, %5
  %11 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %6) #6
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 0, i32 2
  %13 = load i8, i8* %12, align 1, !tbaa !15
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 7
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %10
  %18 = or i8 %13, 32
  %19 = xor i8 %18, 3
  store i8 %19, i8* %12, align 1, !tbaa !15
  br label %48

; <label>:20:                                     ; preds = %10
  %21 = and i32 %14, 24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

; <label>:23:                                     ; preds = %20
  %24 = icmp eq i32 %15, 6
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %23
  %26 = xor i8 %13, 2
  store i8 %26, i8* %12, align 1, !tbaa !15
  br label %27

; <label>:27:                                     ; preds = %25, %23
  %28 = phi i8 [ %26, %25 ], [ %13, %23 ]
  %29 = or i8 %28, 32
  store i8 %29, i8* %12, align 1, !tbaa !15
  br label %30

; <label>:30:                                     ; preds = %20, %27
  %31 = bitcast %struct.GCObject** %11 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !29
  %33 = bitcast %struct.GCObject** %7 to i64*
  store i64 %32, i64* %33, align 8, !tbaa !29
  %34 = inttoptr i64 %32 to %struct.GCObject*
  br label %51

; <label>:35:                                     ; preds = %5
  %36 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 0, i32 2
  %37 = load i8, i8* %36, align 1, !tbaa !46
  %38 = and i8 %37, 24
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 4, i32 1
  br i1 %39, label %46, label %41

; <label>:41:                                     ; preds = %35
  %42 = bitcast i8* %40 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !97
  %44 = bitcast %struct.GCObject** %7 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !29
  %45 = inttoptr i64 %43 to %struct.GCObject*
  br label %51

; <label>:46:                                     ; preds = %35
  %47 = bitcast i8* %40 to %struct.GCObject**
  br label %48

; <label>:48:                                     ; preds = %5, %17, %46
  %49 = phi %struct.GCObject** [ %47, %46 ], [ %11, %17 ], [ %7, %5 ]
  %50 = load %struct.GCObject*, %struct.GCObject** %49, align 8, !tbaa !29
  br label %51

; <label>:51:                                     ; preds = %48, %41, %30
  %52 = phi %struct.GCObject* [ %50, %48 ], [ %45, %41 ], [ %34, %30 ]
  %53 = phi %struct.GCObject** [ %49, %48 ], [ %7, %41 ], [ %7, %30 ]
  %54 = icmp eq %struct.GCObject* %52, null
  br i1 %54, label %55, label %5

; <label>:55:                                     ; preds = %51, %1
  %56 = phi %struct.GCObject** [ %0, %1 ], [ %53, %51 ]
  ret %struct.GCObject** %56
}

; Function Attrs: optsize
declare hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GCTM(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca %struct.TValue, align 8
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = bitcast %struct.TValue* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 28
  %7 = load %struct.GCObject*, %struct.GCObject** %6, align 8, !tbaa !42
  %8 = bitcast %struct.GCObject* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !31
  %10 = bitcast %struct.GCObject** %6 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 20
  %12 = bitcast %struct.GCObject** %11 to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !32
  store i64 %13, i64* %8, align 8, !tbaa !31
  store %struct.GCObject* %7, %struct.GCObject** %11, align 8, !tbaa !32
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %15 = load i8, i8* %14, align 1, !tbaa !15
  %16 = and i8 %15, -65
  store i8 %16, i8* %14, align 1, !tbaa !15
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %18 = load i8, i8* %17, align 1, !tbaa !11
  %19 = add i8 %18, -3
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %21, label %27

; <label>:21:                                     ; preds = %1
  %22 = and i8 %15, -128
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 10
  %24 = load i8, i8* %23, align 4, !tbaa !17
  %25 = and i8 %24, 24
  %26 = or i8 %25, %22
  store i8 %26, i8* %14, align 1, !tbaa !15
  br label %27

; <label>:27:                                     ; preds = %1, %21
  %28 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  store %struct.GCObject* %7, %struct.GCObject** %28, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 1
  %30 = load i8, i8* %29, align 8, !tbaa !18
  %31 = or i8 %30, 64
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  store i8 %31, i8* %32, align 8, !tbaa !21
  %33 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %2, i32 2) #7
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i64 0, i32 1
  %35 = load i8, i8* %34, align 8, !tbaa !21
  %36 = and i8 %35, 15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %89, label %38

; <label>:38:                                     ; preds = %27
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %40 = load i8, i8* %39, align 1, !tbaa !105
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 15
  %42 = load i8, i8* %41, align 1, !tbaa !52
  store i8 0, i8* %39, align 1, !tbaa !105
  store i8 0, i8* %41, align 1, !tbaa !52
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %44 = bitcast %union.StackValue** %43 to %struct.TValue**
  %45 = load %struct.TValue*, %struct.TValue** %44, align 8, !tbaa !99
  %46 = bitcast %struct.TValue* %33 to i64*
  %47 = bitcast %struct.TValue* %45 to i64*
  %48 = load i64, i64* %46, align 8
  store i64 %48, i64* %47, align 8
  %49 = load i8, i8* %34, align 8, !tbaa !21
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i64 0, i32 1
  store i8 %49, i8* %50, align 8, !tbaa !21
  %51 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !99
  %52 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 1, i32 0
  %53 = bitcast %struct.TValue* %2 to i64*
  %54 = bitcast %struct.TValue* %52 to i64*
  %55 = load i64, i64* %53, align 8
  store i64 %55, i64* %54, align 8
  %56 = load i8, i8* %32, align 8, !tbaa !21
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 1, i32 0, i32 1
  store i8 %56, i8* %57, align 8, !tbaa !21
  %58 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !99
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i64 2
  store %union.StackValue* %59, %union.StackValue** %43, align 8, !tbaa !99
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %61 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !tbaa !106
  %62 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %61, i64 0, i32 7
  %63 = load i16, i16* %62, align 2, !tbaa !107
  %64 = or i16 %63, 64
  store i16 %64, i16* %62, align 2, !tbaa !107
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %66 = bitcast %union.StackValue** %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !98
  %68 = ptrtoint %union.StackValue* %58 to i64
  %69 = sub i64 %68, %67
  %70 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @dothecall, i8* null, i64 %69, i64 0) #7
  %71 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !tbaa !106
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 0, i32 7
  %73 = load i16, i16* %72, align 2, !tbaa !107
  %74 = and i16 %73, -65
  store i16 %74, i16* %72, align 2, !tbaa !107
  store i8 %40, i8* %39, align 1, !tbaa !105
  store i8 %42, i8* %41, align 1, !tbaa !52
  %75 = icmp eq i32 %70, 0
  br i1 %75, label %89, label %76

; <label>:76:                                     ; preds = %38
  %77 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !99
  %78 = getelementptr inbounds %union.StackValue, %union.StackValue* %77, i64 -1, i32 0, i32 1
  %79 = load i8, i8* %78, align 8, !tbaa !22
  %80 = and i8 %79, 15
  %81 = icmp eq i8 %80, 4
  br i1 %81, label %82, label %87

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds %union.StackValue, %union.StackValue* %77, i64 -1, i32 0, i32 0, i32 0
  %84 = bitcast %struct.GCObject** %83 to i8**
  %85 = load i8*, i8** %84, align 8, !tbaa !22
  %86 = getelementptr inbounds i8, i8* %85, i64 24
  br label %87

; <label>:87:                                     ; preds = %76, %82
  %88 = phi i8* [ %86, %82 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %76 ]
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 1) #7
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* nonnull %88, i32 1) #7
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0) #7
  br label %89

; <label>:89:                                     ; preds = %87, %38, %27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8
  ret void
}

; Function Attrs: optsize
declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @dothecall(%struct.lua_State*, i8* nocapture readnone) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !99
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 -2
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* nonnull %5, i32 0) #7
  ret void
}

; Function Attrs: optsize
declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #4

; Function Attrs: optsize
declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @sweepstep(%struct.lua_State*, %struct.global_State* nocapture, i32, %struct.GCObject**) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 21
  %7 = load %struct.GCObject**, %struct.GCObject*** %6, align 8, !tbaa !35
  %8 = icmp eq %struct.GCObject** %7, null
  br i1 %8, label %20, label %9

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !49
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #8
  %13 = call fastcc %struct.GCObject** @sweeplist(%struct.lua_State* %0, %struct.GCObject** nonnull %7, i32 100, i32* nonnull %5) #6
  store %struct.GCObject** %13, %struct.GCObject*** %6, align 8, !tbaa !35
  %14 = load i64, i64* %10, align 8, !tbaa !49
  %15 = sub i64 %14, %11
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  %17 = load i64, i64* %16, align 8, !tbaa !50
  %18 = add i64 %15, %17
  store i64 %18, i64* %16, align 8, !tbaa !50
  %19 = load i32, i32* %5, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #8
  br label %23

; <label>:20:                                     ; preds = %4
  %21 = trunc i32 %2 to i8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 %21, i8* %22, align 1, !tbaa !11
  store %struct.GCObject** %3, %struct.GCObject*** %6, align 8, !tbaa !35
  br label %23

; <label>:23:                                     ; preds = %20, %9
  %24 = phi i32 [ %19, %9 ], [ 0, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @setpause(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 17
  %3 = load i8, i8* %2, align 1, !tbaa !108
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 4
  %7 = load i64, i64* %6, align 8, !tbaa !50
  %8 = udiv i64 %7, 100
  %9 = udiv i64 9223372036854775807, %8
  %10 = icmp ult i64 %5, %9
  %11 = mul nsw i64 %8, %5
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 2
  %13 = load i64, i64* %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !49
  %16 = add nsw i64 %15, %13
  %17 = sub nsw i64 0, %11
  %18 = select i1 %10, i64 %17, i64 -9223372036854775807
  %19 = add i64 %16, %18
  %20 = icmp slt i64 %19, 0
  %21 = select i1 %20, i64 %19, i64 0
  tail call void @luaE_setdebt(%struct.global_State* %0, i64 %21) #7
  ret void
}

; Function Attrs: optsize
declare hidden void @luaE_setdebt(%struct.global_State*, i64) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @markold(%struct.global_State*, %struct.GCObject*, %struct.GCObject* readnone) unnamed_addr #0 {
  %4 = icmp eq %struct.GCObject* %1, %2
  br i1 %4, label %18, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %14
  %7 = phi %struct.GCObject* [ %16, %14 ], [ %1, %5 ]
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %9 = load i8, i8* %8, align 1, !tbaa !15
  %10 = and i8 %9, 39
  %11 = icmp eq i8 %10, 35
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %6
  %13 = and i8 %9, -33
  store i8 %13, i8* %8, align 1, !tbaa !15
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %7) #6
  br label %14

; <label>:14:                                     ; preds = %6, %12
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 0
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8, !tbaa !31
  %17 = icmp eq %struct.GCObject* %16, %2
  br i1 %17, label %18, label %6

; <label>:18:                                     ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.GCObject** @sweepgen(%struct.lua_State*, %struct.global_State* nocapture readonly, %struct.GCObject**, %struct.GCObject* readnone) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 10
  %6 = load i8, i8* %5, align 4, !tbaa !17
  %7 = and i8 %6, 24
  %8 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !29
  %9 = icmp eq %struct.GCObject* %8, %3
  br i1 %9, label %42, label %10

; <label>:10:                                     ; preds = %4
  br label %11

; <label>:11:                                     ; preds = %10, %38
  %12 = phi %struct.GCObject* [ %40, %38 ], [ %8, %10 ]
  %13 = phi %struct.GCObject** [ %39, %38 ], [ %2, %10 ]
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i64 0, i32 2
  %15 = load i8, i8* %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %11
  %20 = bitcast %struct.GCObject* %12 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !31
  %22 = bitcast %struct.GCObject** %13 to i64*
  store i64 %21, i64* %22, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %12) #6
  br label %38

; <label>:23:                                     ; preds = %11
  %24 = and i32 %16, 7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %23
  %27 = and i8 %15, -57
  %28 = or i8 %27, %7
  store i8 %28, i8* %14, align 1, !tbaa !15
  br label %29

; <label>:29:                                     ; preds = %26, %23
  %30 = phi i8 [ %28, %26 ], [ %15, %23 ]
  %31 = and i8 %30, -8
  %32 = and i8 %30, 7
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [7 x i8], [7 x i8]* @sweepgen.nextage, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1, !tbaa !22
  %36 = or i8 %31, %35
  store i8 %36, i8* %14, align 1, !tbaa !15
  %37 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i64 0, i32 0
  br label %38

; <label>:38:                                     ; preds = %29, %19
  %39 = phi %struct.GCObject** [ %13, %19 ], [ %37, %29 ]
  %40 = load %struct.GCObject*, %struct.GCObject** %39, align 8, !tbaa !29
  %41 = icmp eq %struct.GCObject* %40, %3
  br i1 %41, label %42, label %11

; <label>:42:                                     ; preds = %38, %4
  %43 = phi %struct.GCObject** [ %2, %4 ], [ %39, %38 ]
  ret %struct.GCObject** %43
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 24}
!3 = !{!"lua_State", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !8, i64 96, !4, i64 160, !9, i64 168, !10, i64 176, !10, i64 180, !10, i64 184, !10, i64 188, !10, i64 192}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"short", !5, i64 0}
!8 = !{!"CallInfo", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !5, i64 32, !5, i64 56, !7, i64 60, !7, i64 62}
!9 = !{!"long", !5, i64 0}
!10 = !{!"int", !5, i64 0}
!11 = !{!12, !5, i64 101}
!12 = !{!"global_State", !4, i64 0, !4, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !13, i64 48, !14, i64 64, !14, i64 80, !10, i64 96, !5, i64 100, !5, i64 101, !5, i64 102, !5, i64 103, !5, i64 104, !5, i64 105, !5, i64 106, !5, i64 107, !5, i64 108, !5, i64 109, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168, !4, i64 176, !4, i64 184, !4, i64 192, !4, i64 200, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !4, i64 240, !4, i64 248, !4, i64 256, !4, i64 264, !5, i64 272, !5, i64 472, !5, i64 544, !4, i64 1392, !4, i64 1400}
!13 = !{!"stringtable", !4, i64 0, !10, i64 8, !10, i64 12}
!14 = !{!"TValue", !5, i64 0, !5, i64 8}
!15 = !{!16, !5, i64 9}
!16 = !{!"GCObject", !4, i64 0, !5, i64 8, !5, i64 9}
!17 = !{!12, !5, i64 100}
!18 = !{!16, !5, i64 8}
!19 = !{!20, !4, i64 16}
!20 = !{!"UpVal", !4, i64 0, !5, i64 8, !5, i64 9, !4, i64 16, !5, i64 24}
!21 = !{!14, !5, i64 8}
!22 = !{!5, !5, i64 0}
!23 = !{!24, !7, i64 10}
!24 = !{!"Udata", !4, i64 0, !5, i64 8, !5, i64 9, !7, i64 10, !9, i64 16, !4, i64 24, !4, i64 32, !5, i64 40}
!25 = !{!24, !4, i64 24}
!26 = !{!27, !5, i64 9}
!27 = !{!"Table", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48}
!28 = !{!12, !4, i64 136}
!29 = !{!4, !4, i64 0}
!30 = !{!12, !4, i64 144}
!31 = !{!16, !4, i64 0}
!32 = !{!12, !4, i64 112}
!33 = !{!12, !4, i64 184}
!34 = !{!27, !5, i64 10}
!35 = !{!12, !4, i64 120}
!36 = !{!12, !4, i64 192}
!37 = !{!12, !4, i64 200}
!38 = !{!12, !4, i64 208}
!39 = !{!12, !4, i64 128}
!40 = !{!12, !5, i64 102}
!41 = !{!12, !9, i64 40}
!42 = !{!12, !4, i64 176}
!43 = !{!12, !4, i64 256}
!44 = !{!12, !4, i64 224}
!45 = !{!12, !4, i64 216}
!46 = !{!3, !5, i64 9}
!47 = !{!12, !5, i64 72}
!48 = !{!12, !9, i64 16}
!49 = !{!12, !9, i64 24}
!50 = !{!12, !9, i64 32}
!51 = !{!12, !5, i64 106}
!52 = !{!12, !5, i64 105}
!53 = !{!12, !5, i64 103}
!54 = !{!12, !5, i64 104}
!55 = !{!12, !4, i64 232}
!56 = !{!12, !5, i64 108}
!57 = !{!12, !5, i64 109}
!58 = !{!10, !10, i64 0}
!59 = !{!24, !9, i64 16}
!60 = !{!3, !4, i64 64}
!61 = !{!3, !4, i64 80}
!62 = !{!20, !5, i64 9}
!63 = !{!12, !4, i64 152}
!64 = !{!12, !4, i64 168}
!65 = !{!12, !4, i64 160}
!66 = !{!27, !4, i64 24}
!67 = !{!27, !5, i64 11}
!68 = !{!27, !4, i64 16}
!69 = !{!27, !4, i64 40}
!70 = !{!27, !10, i64 12}
!71 = !{!27, !4, i64 48}
!72 = !{!27, !4, i64 32}
!73 = !{!24, !4, i64 32}
!74 = !{!24, !5, i64 9}
!75 = !{!76, !4, i64 24}
!76 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!77 = !{!78, !5, i64 9}
!78 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!79 = !{!76, !5, i64 10}
!80 = !{!81, !5, i64 10}
!81 = !{!"CClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!82 = !{!78, !4, i64 112}
!83 = !{!84, !5, i64 9}
!84 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !5, i64 16}
!85 = !{!78, !10, i64 20}
!86 = !{!78, !4, i64 56}
!87 = !{!78, !10, i64 16}
!88 = !{!78, !4, i64 80}
!89 = !{!90, !4, i64 0}
!90 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!91 = !{!78, !10, i64 32}
!92 = !{!78, !4, i64 72}
!93 = !{!78, !10, i64 36}
!94 = !{!78, !4, i64 104}
!95 = !{!96, !4, i64 0}
!96 = !{!"LocVar", !4, i64 0, !10, i64 8, !10, i64 12}
!97 = !{!3, !4, i64 72}
!98 = !{!3, !4, i64 56}
!99 = !{!3, !4, i64 16}
!100 = !{!20, !5, i64 8}
!101 = !{!3, !10, i64 180}
!102 = !{!12, !4, i64 240}
!103 = !{!12, !10, i64 56}
!104 = !{!12, !10, i64 60}
!105 = !{!3, !5, i64 11}
!106 = !{!3, !4, i64 32}
!107 = !{!8, !7, i64 62}
!108 = !{!12, !5, i64 107}
