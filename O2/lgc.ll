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

; Function Attrs: nounwind uwtable
define hidden void @luaC_barrier_(%struct.lua_State* nocapture readonly, %struct.GCObject* nocapture, %struct.GCObject*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 11
  %7 = load i8, i8* %6, align 1, !tbaa !11
  %8 = icmp ult i8 %7, 3
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %3
  tail call fastcc void @reallymarkobject(%struct.global_State* %5, %struct.GCObject* %2)
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

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %51)
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
  %60 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %7)
  %61 = bitcast %struct.GCObject** %60 to i64*
  store i64 %59, i64* %61, align 8, !tbaa !29
  store %struct.GCObject* %7, %struct.GCObject** %57, align 8, !tbaa !28
  br label %62

; <label>:62:                                     ; preds = %23, %28, %5, %53, %56, %12
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
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
  %13 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %1)
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

; Function Attrs: norecurse nounwind readonly uwtable
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

; Function Attrs: norecurse nounwind uwtable
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

; Function Attrs: nounwind uwtable
define hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i64) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !2
  %6 = and i32 %1, 15
  %7 = tail call i8* @luaM_malloc_(%struct.lua_State* %0, i64 %2, i32 %6) #6
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

declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !2
  %6 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 2
  %7 = load i8, i8* %6, align 1, !tbaa !15
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  %10 = icmp eq %struct.Table* %2, null
  %11 = or i1 %10, %9
  br i1 %11, label %110, label %12

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %2, i64 0, i32 3
  %14 = load i8, i8* %13, align 2, !tbaa !34
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %110

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 40, i64 2
  %19 = load %struct.TString*, %struct.TString** %18, align 8, !tbaa !29
  %20 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %2, i32 2, %struct.TString* %19) #6
  %21 = icmp eq %struct.TValue* %20, null
  br i1 %21, label %110, label %22

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 11
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %25 = add i8 %24, -3
  %26 = icmp ult i8 %25, 4
  br i1 %26, label %27, label %70

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
  br i1 %37, label %38, label %94

; <label>:38:                                     ; preds = %27
  %39 = bitcast %struct.GCObject** %35 to i64*
  br label %40

; <label>:40:                                     ; preds = %63, %38
  %41 = load %struct.global_State*, %struct.global_State** %4, align 8, !tbaa !2
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %41, i64 0, i32 10
  %43 = load i8, i8* %42, align 4, !tbaa !17
  %44 = and i8 %43, 24
  %45 = load %struct.GCObject*, %struct.GCObject** %35, align 8, !tbaa !29
  %46 = icmp eq %struct.GCObject* %45, null
  br i1 %46, label %63, label %47

; <label>:47:                                     ; preds = %40
  %48 = xor i8 %43, 24
  %49 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %45, i64 0, i32 2
  %50 = load i8, i8* %49, align 1, !tbaa !15
  %51 = and i8 %50, %48
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %47
  %54 = bitcast %struct.GCObject* %45 to i64*
  %55 = load i64, i64* %54, align 8, !tbaa !31
  store i64 %55, i64* %39, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* nonnull %0, %struct.GCObject* nonnull %45) #6
  br label %60

; <label>:56:                                     ; preds = %47
  %57 = and i8 %50, -64
  %58 = or i8 %57, %44
  store i8 %58, i8* %49, align 1, !tbaa !15
  %59 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %45, i64 0, i32 0
  br label %60

; <label>:60:                                     ; preds = %56, %53
  %61 = phi %struct.GCObject** [ %35, %53 ], [ %59, %56 ]
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8, !tbaa !29
  br label %63

; <label>:63:                                     ; preds = %60, %40
  %64 = phi %struct.GCObject** [ %35, %40 ], [ %61, %60 ]
  %65 = phi %struct.GCObject* [ null, %40 ], [ %62, %60 ]
  %66 = icmp eq %struct.GCObject* %65, null
  %67 = select i1 %66, %struct.GCObject** null, %struct.GCObject** %64
  %68 = icmp eq %struct.GCObject** %67, %35
  br i1 %68, label %40, label %69

; <label>:69:                                     ; preds = %63
  store %struct.GCObject** %67, %struct.GCObject*** %34, align 8, !tbaa !35
  br label %94

; <label>:70:                                     ; preds = %22
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 30
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8, !tbaa !36
  %73 = icmp eq %struct.GCObject* %72, %1
  br i1 %73, label %74, label %78

; <label>:74:                                     ; preds = %70
  %75 = bitcast %struct.GCObject* %1 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !31
  %77 = bitcast %struct.GCObject** %71 to i64*
  store i64 %76, i64* %77, align 8, !tbaa !36
  br label %78

; <label>:78:                                     ; preds = %74, %70
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 31
  %80 = load %struct.GCObject*, %struct.GCObject** %79, align 8, !tbaa !37
  %81 = icmp eq %struct.GCObject* %80, %1
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %78
  %83 = bitcast %struct.GCObject* %1 to i64*
  %84 = load i64, i64* %83, align 8, !tbaa !31
  %85 = bitcast %struct.GCObject** %79 to i64*
  store i64 %84, i64* %85, align 8, !tbaa !37
  br label %86

; <label>:86:                                     ; preds = %82, %78
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 32
  %88 = load %struct.GCObject*, %struct.GCObject** %87, align 8, !tbaa !38
  %89 = icmp eq %struct.GCObject* %88, %1
  br i1 %89, label %90, label %94

; <label>:90:                                     ; preds = %86
  %91 = bitcast %struct.GCObject* %1 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !31
  %93 = bitcast %struct.GCObject** %87 to i64*
  store i64 %92, i64* %93, align 8, !tbaa !38
  br label %94

; <label>:94:                                     ; preds = %86, %90, %27, %69
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 20
  br label %96

; <label>:96:                                     ; preds = %96, %94
  %97 = phi %struct.GCObject** [ %95, %94 ], [ %100, %96 ]
  %98 = load %struct.GCObject*, %struct.GCObject** %97, align 8, !tbaa !29
  %99 = icmp eq %struct.GCObject* %98, %1
  %100 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %98, i64 0, i32 0
  br i1 %99, label %101, label %96

; <label>:101:                                    ; preds = %96
  %102 = bitcast %struct.GCObject* %1 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !31
  %104 = bitcast %struct.GCObject** %97 to i64*
  store i64 %103, i64* %104, align 8, !tbaa !29
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 22
  %106 = bitcast %struct.GCObject** %105 to i64*
  %107 = load i64, i64* %106, align 8, !tbaa !39
  store i64 %107, i64* %102, align 8, !tbaa !31
  store %struct.GCObject* %1, %struct.GCObject** %105, align 8, !tbaa !39
  %108 = load i8, i8* %6, align 1, !tbaa !15
  %109 = or i8 %108, 64
  store i8 %109, i8* %6, align 1, !tbaa !15
  br label %110

; <label>:110:                                    ; preds = %3, %12, %17, %101
  ret void
}

declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @luaC_changemode(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 12
  %6 = load i8, i8* %5, align 2, !tbaa !40
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %85, label %9

; <label>:9:                                      ; preds = %2
  %10 = icmp eq i32 %1, 1
  br i1 %10, label %11, label %33

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %13 = load i8, i8* %12, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %25, label %15

; <label>:15:                                     ; preds = %11
  br label %16

; <label>:16:                                     ; preds = %15, %16
  %17 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %18 = load i8, i8* %12, align 1, !tbaa !11
  %19 = icmp eq i8 %18, 8
  br i1 %19, label %20, label %16

; <label>:20:                                     ; preds = %16
  %21 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i64 0, i32 11
  %23 = load i8, i8* %22, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %20, %11
  %26 = phi i8* [ %22, %20 ], [ %12, %11 ]
  br label %27

; <label>:27:                                     ; preds = %27, %25
  %28 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %29 = load i8, i8* %26, align 1, !tbaa !11
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %27

; <label>:31:                                     ; preds = %27, %20
  %32 = tail call fastcc i64 @atomic(%struct.lua_State* %0) #6
  tail call fastcc void @atomic2gen(%struct.lua_State* %0, %struct.global_State* %4) #6
  br label %85

; <label>:33:                                     ; preds = %9
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 20
  %35 = load %struct.GCObject*, %struct.GCObject** %34, align 8, !tbaa !32
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 10
  %37 = load i8, i8* %36, align 4, !tbaa !17
  %38 = and i8 %37, 24
  %39 = icmp eq %struct.GCObject* %35, null
  br i1 %39, label %50, label %40

; <label>:40:                                     ; preds = %33
  br label %41

; <label>:41:                                     ; preds = %40, %41
  %42 = phi %struct.GCObject* [ %48, %41 ], [ %35, %40 ]
  %43 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %42, i64 0, i32 2
  %44 = load i8, i8* %43, align 1, !tbaa !15
  %45 = and i8 %44, -64
  %46 = or i8 %45, %38
  store i8 %46, i8* %43, align 1, !tbaa !15
  %47 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %42, i64 0, i32 0
  %48 = load %struct.GCObject*, %struct.GCObject** %47, align 8, !tbaa !31
  %49 = icmp eq %struct.GCObject* %48, null
  br i1 %49, label %50, label %41

; <label>:50:                                     ; preds = %41, %33
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 30
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 22
  %53 = bitcast %struct.GCObject** %51 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %53, i8 0, i64 24, i32 8, i1 false) #6
  %54 = load %struct.GCObject*, %struct.GCObject** %52, align 8, !tbaa !39
  %55 = icmp eq %struct.GCObject* %54, null
  br i1 %55, label %66, label %56

; <label>:56:                                     ; preds = %50
  br label %57

; <label>:57:                                     ; preds = %56, %57
  %58 = phi %struct.GCObject* [ %64, %57 ], [ %54, %56 ]
  %59 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %58, i64 0, i32 2
  %60 = load i8, i8* %59, align 1, !tbaa !15
  %61 = and i8 %60, -64
  %62 = or i8 %61, %38
  store i8 %62, i8* %59, align 1, !tbaa !15
  %63 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %58, i64 0, i32 0
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8, !tbaa !31
  %65 = icmp eq %struct.GCObject* %64, null
  br i1 %65, label %66, label %57

; <label>:66:                                     ; preds = %57, %50
  %67 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 28
  %68 = load %struct.GCObject*, %struct.GCObject** %67, align 8, !tbaa !41
  %69 = icmp eq %struct.GCObject* %68, null
  br i1 %69, label %80, label %70

; <label>:70:                                     ; preds = %66
  br label %71

; <label>:71:                                     ; preds = %70, %71
  %72 = phi %struct.GCObject* [ %78, %71 ], [ %68, %70 ]
  %73 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %72, i64 0, i32 2
  %74 = load i8, i8* %73, align 1, !tbaa !15
  %75 = and i8 %74, -64
  %76 = or i8 %75, %38
  store i8 %76, i8* %73, align 1, !tbaa !15
  %77 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %72, i64 0, i32 0
  %78 = load %struct.GCObject*, %struct.GCObject** %77, align 8, !tbaa !31
  %79 = icmp eq %struct.GCObject* %78, null
  br i1 %79, label %80, label %71

; <label>:80:                                     ; preds = %71, %66
  %81 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 33
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %83 = bitcast %struct.GCObject** %81 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %83, i8 0, i64 24, i32 8, i1 false) #6
  store i8 8, i8* %82, align 1, !tbaa !11
  store i8 0, i8* %5, align 2, !tbaa !40
  %84 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 5
  store i64 0, i64* %84, align 8, !tbaa !42
  br label %85

; <label>:85:                                     ; preds = %2, %31, %80
  %86 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 5
  store i64 0, i64* %86, align 8, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_freeallobjects(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12
  %5 = load i8, i8* %4, align 2, !tbaa !40
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  br label %62

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8, !tbaa !32
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %14 = load i8, i8* %13, align 4, !tbaa !17
  %15 = and i8 %14, 24
  %16 = icmp eq %struct.GCObject* %12, null
  br i1 %16, label %27, label %17

; <label>:17:                                     ; preds = %10
  br label %18

; <label>:18:                                     ; preds = %17, %18
  %19 = phi %struct.GCObject* [ %25, %18 ], [ %12, %17 ]
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %19, i64 0, i32 2
  %21 = load i8, i8* %20, align 1, !tbaa !15
  %22 = and i8 %21, -64
  %23 = or i8 %22, %15
  store i8 %23, i8* %20, align 1, !tbaa !15
  %24 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %19, i64 0, i32 0
  %25 = load %struct.GCObject*, %struct.GCObject** %24, align 8, !tbaa !31
  %26 = icmp eq %struct.GCObject* %25, null
  br i1 %26, label %27, label %18

; <label>:27:                                     ; preds = %18, %10
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 30
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %30 = bitcast %struct.GCObject** %28 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %30, i8 0, i64 24, i32 8, i1 false) #6
  %31 = load %struct.GCObject*, %struct.GCObject** %29, align 8, !tbaa !39
  %32 = icmp eq %struct.GCObject* %31, null
  br i1 %32, label %43, label %33

; <label>:33:                                     ; preds = %27
  br label %34

; <label>:34:                                     ; preds = %33, %34
  %35 = phi %struct.GCObject* [ %41, %34 ], [ %31, %33 ]
  %36 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %35, i64 0, i32 2
  %37 = load i8, i8* %36, align 1, !tbaa !15
  %38 = and i8 %37, -64
  %39 = or i8 %38, %15
  store i8 %39, i8* %36, align 1, !tbaa !15
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %35, i64 0, i32 0
  %41 = load %struct.GCObject*, %struct.GCObject** %40, align 8, !tbaa !31
  %42 = icmp eq %struct.GCObject* %41, null
  br i1 %42, label %43, label %34

; <label>:43:                                     ; preds = %34, %27
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8, !tbaa !41
  %46 = icmp eq %struct.GCObject* %45, null
  br i1 %46, label %57, label %47

; <label>:47:                                     ; preds = %43
  br label %48

; <label>:48:                                     ; preds = %47, %48
  %49 = phi %struct.GCObject* [ %55, %48 ], [ %45, %47 ]
  %50 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %49, i64 0, i32 2
  %51 = load i8, i8* %50, align 1, !tbaa !15
  %52 = and i8 %51, -64
  %53 = or i8 %52, %15
  store i8 %53, i8* %50, align 1, !tbaa !15
  %54 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %49, i64 0, i32 0
  %55 = load %struct.GCObject*, %struct.GCObject** %54, align 8, !tbaa !31
  %56 = icmp eq %struct.GCObject* %55, null
  br i1 %56, label %57, label %48

; <label>:57:                                     ; preds = %48, %43
  %58 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 33
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  %60 = bitcast %struct.GCObject** %58 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %60, i8 0, i64 24, i32 8, i1 false) #6
  store i8 8, i8* %59, align 1, !tbaa !11
  store i8 0, i8* %4, align 2, !tbaa !40
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5
  store i64 0, i64* %61, align 8, !tbaa !42
  br label %62

; <label>:62:                                     ; preds = %7, %57
  %63 = phi %struct.GCObject** [ %9, %7 ], [ %44, %57 ]
  %64 = phi i64* [ %8, %7 ], [ %61, %57 ]
  store i64 0, i64* %64, align 8, !tbaa !42
  br label %65

; <label>:65:                                     ; preds = %65, %62
  %66 = phi %struct.GCObject** [ %63, %62 ], [ %69, %65 ]
  %67 = load %struct.GCObject*, %struct.GCObject** %66, align 8, !tbaa !29
  %68 = icmp eq %struct.GCObject* %67, null
  %69 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %67, i64 0, i32 0
  br i1 %68, label %70, label %65

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %72 = load %struct.GCObject*, %struct.GCObject** %71, align 8, !tbaa !29
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 34
  %74 = load %struct.GCObject*, %struct.GCObject** %73, align 8, !tbaa !43
  %75 = icmp eq %struct.GCObject* %72, %74
  br i1 %75, label %95, label %76

; <label>:76:                                     ; preds = %70
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 33
  %78 = bitcast %struct.GCObject** %77 to i64*
  %79 = bitcast %struct.GCObject** %71 to i64*
  br label %80

; <label>:80:                                     ; preds = %88, %76
  %81 = phi %struct.GCObject* [ %72, %76 ], [ %93, %88 ]
  %82 = phi %struct.GCObject** [ %66, %76 ], [ %89, %88 ]
  %83 = load %struct.GCObject*, %struct.GCObject** %77, align 8, !tbaa !44
  %84 = icmp eq %struct.GCObject* %81, %83
  %85 = bitcast %struct.GCObject* %81 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !31
  br i1 %84, label %87, label %88

; <label>:87:                                     ; preds = %80
  store i64 %86, i64* %78, align 8, !tbaa !44
  br label %88

; <label>:88:                                     ; preds = %87, %80
  %89 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %81, i64 0, i32 0
  store i64 %86, i64* %79, align 8, !tbaa !29
  %90 = bitcast %struct.GCObject** %82 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !29
  store i64 %91, i64* %85, align 8, !tbaa !31
  store %struct.GCObject* %81, %struct.GCObject** %82, align 8, !tbaa !29
  %92 = load %struct.GCObject*, %struct.GCObject** %73, align 8, !tbaa !43
  %93 = load %struct.GCObject*, %struct.GCObject** %71, align 8, !tbaa !29
  %94 = icmp eq %struct.GCObject* %93, %92
  br i1 %94, label %95, label %80

; <label>:95:                                     ; preds = %88, %70
  %96 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %97 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i64 0, i32 28
  %98 = load %struct.GCObject*, %struct.GCObject** %97, align 8, !tbaa !41
  %99 = icmp eq %struct.GCObject* %98, null
  br i1 %99, label %104, label %100

; <label>:100:                                    ; preds = %95
  br label %101

; <label>:101:                                    ; preds = %100, %101
  tail call fastcc void @GCTM(%struct.lua_State* %0) #6
  %102 = load %struct.GCObject*, %struct.GCObject** %97, align 8, !tbaa !41
  %103 = icmp eq %struct.GCObject* %102, null
  br i1 %103, label %104, label %101

; <label>:104:                                    ; preds = %101, %95
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %106 = load %struct.GCObject*, %struct.GCObject** %105, align 8, !tbaa !32
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 38
  %108 = bitcast %struct.lua_State** %107 to %struct.GCObject**
  %109 = load %struct.GCObject*, %struct.GCObject** %108, align 8, !tbaa !45
  %110 = icmp eq %struct.GCObject* %106, %109
  br i1 %110, label %117, label %111

; <label>:111:                                    ; preds = %104
  br label %112

; <label>:112:                                    ; preds = %111, %112
  %113 = phi %struct.GCObject* [ %115, %112 ], [ %106, %111 ]
  %114 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %113, i64 0, i32 0
  %115 = load %struct.GCObject*, %struct.GCObject** %114, align 8, !tbaa !31
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* %113) #6
  %116 = icmp eq %struct.GCObject* %115, %109
  br i1 %116, label %117, label %112

; <label>:117:                                    ; preds = %112, %104
  %118 = load %struct.GCObject*, %struct.GCObject** %71, align 8, !tbaa !39
  %119 = icmp eq %struct.GCObject* %118, null
  br i1 %119, label %126, label %120

; <label>:120:                                    ; preds = %117
  br label %121

; <label>:121:                                    ; preds = %120, %121
  %122 = phi %struct.GCObject* [ %124, %121 ], [ %118, %120 ]
  %123 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %122, i64 0, i32 0
  %124 = load %struct.GCObject*, %struct.GCObject** %123, align 8, !tbaa !31
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %122) #6
  %125 = icmp eq %struct.GCObject* %124, null
  br i1 %125, label %126, label %121

; <label>:126:                                    ; preds = %121, %117
  %127 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 29
  %128 = load %struct.GCObject*, %struct.GCObject** %127, align 8, !tbaa !33
  %129 = icmp eq %struct.GCObject* %128, null
  br i1 %129, label %136, label %130

; <label>:130:                                    ; preds = %126
  br label %131

; <label>:131:                                    ; preds = %130, %131
  %132 = phi %struct.GCObject* [ %134, %131 ], [ %128, %130 ]
  %133 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %132, i64 0, i32 0
  %134 = load %struct.GCObject*, %struct.GCObject** %133, align 8, !tbaa !31
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %132) #6
  %135 = icmp eq %struct.GCObject* %134, null
  br i1 %135, label %136, label %131

; <label>:136:                                    ; preds = %131, %126
  ret void
}

; Function Attrs: nounwind uwtable
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
  %13 = tail call fastcc i64 @singlestep(%struct.lua_State* %0)
  %14 = load i8, i8* %5, align 1, !tbaa !11
  %15 = zext i8 %14 to i32
  %16 = shl i32 1, %15
  %17 = and i32 %16, %1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %12, label %19

; <label>:19:                                     ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @singlestep(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  %5 = load i8, i8* %4, align 1, !tbaa !11
  switch i8 %5, label %320 [
    i8 8, label %6
    i8 0, label %47
    i8 1, label %54
    i8 3, label %99
    i8 4, label %153
    i8 5, label %207
    i8 6, label %260
    i8 7, label %283
  ]

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 38
  %9 = bitcast %struct.GCObject** %7 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %9, i8 0, i64 40, i32 8, i1 false) #6
  %10 = load %struct.lua_State*, %struct.lua_State** %8, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i64 0, i32 2
  %12 = load i8, i8* %11, align 1, !tbaa !46
  %13 = and i8 %12, 24
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %6
  %16 = bitcast %struct.lua_State* %10 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %struct.GCObject* %16) #6
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
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %struct.GCObject* %24) #6
  br label %30

; <label>:30:                                     ; preds = %29, %22, %17
  tail call fastcc void @markmt(%struct.global_State* nonnull %3) #6
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8, !tbaa !29
  %33 = icmp eq %struct.GCObject* %32, null
  br i1 %33, label %46, label %34

; <label>:34:                                     ; preds = %30
  br label %35

; <label>:35:                                     ; preds = %34, %42
  %36 = phi %struct.GCObject* [ %44, %42 ], [ %32, %34 ]
  %37 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %36, i64 0, i32 2
  %38 = load i8, i8* %37, align 1, !tbaa !15
  %39 = and i8 %38, 24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

; <label>:41:                                     ; preds = %35
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* nonnull %36) #6
  br label %42

; <label>:42:                                     ; preds = %41, %35
  %43 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %36, i64 0, i32 0
  %44 = load %struct.GCObject*, %struct.GCObject** %43, align 8, !tbaa !29
  %45 = icmp eq %struct.GCObject* %44, null
  br i1 %45, label %46, label %35

; <label>:46:                                     ; preds = %42, %30
  store i8 0, i8* %4, align 1, !tbaa !11
  br label %320

; <label>:47:                                     ; preds = %1
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8, !tbaa !28
  %50 = icmp eq %struct.GCObject* %49, null
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %47
  store i8 1, i8* %4, align 1, !tbaa !11
  br label %320

; <label>:52:                                     ; preds = %47
  %53 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3)
  br label %320

; <label>:54:                                     ; preds = %1
  %55 = tail call fastcc i64 @atomic(%struct.lua_State* nonnull %0)
  %56 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i64 0, i32 11
  store i8 3, i8* %57, align 1, !tbaa !11
  %58 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i64 0, i32 20
  %59 = bitcast %struct.GCObject** %58 to i64*
  br label %60

; <label>:60:                                     ; preds = %89, %54
  %61 = phi %struct.global_State* [ %90, %89 ], [ %56, %54 ]
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i64 0, i32 10
  %63 = load i8, i8* %62, align 4, !tbaa !17
  %64 = and i8 %63, 24
  %65 = load %struct.GCObject*, %struct.GCObject** %58, align 8, !tbaa !29
  %66 = icmp eq %struct.GCObject* %65, null
  br i1 %66, label %83, label %67

; <label>:67:                                     ; preds = %60
  %68 = xor i8 %63, 24
  %69 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %65, i64 0, i32 2
  %70 = load i8, i8* %69, align 1, !tbaa !15
  %71 = and i8 %70, %68
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

; <label>:73:                                     ; preds = %67
  %74 = bitcast %struct.GCObject* %65 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !31
  store i64 %75, i64* %59, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* nonnull %0, %struct.GCObject* nonnull %65) #6
  br label %80

; <label>:76:                                     ; preds = %67
  %77 = and i8 %70, -64
  %78 = or i8 %77, %64
  store i8 %78, i8* %69, align 1, !tbaa !15
  %79 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %65, i64 0, i32 0
  br label %80

; <label>:80:                                     ; preds = %76, %73
  %81 = phi %struct.GCObject** [ %58, %73 ], [ %79, %76 ]
  %82 = load %struct.GCObject*, %struct.GCObject** %81, align 8, !tbaa !29
  br label %83

; <label>:83:                                     ; preds = %80, %60
  %84 = phi %struct.GCObject** [ %58, %60 ], [ %81, %80 ]
  %85 = phi %struct.GCObject* [ null, %60 ], [ %82, %80 ]
  %86 = icmp eq %struct.GCObject* %85, null
  %87 = select i1 %86, %struct.GCObject** null, %struct.GCObject** %84
  %88 = icmp eq %struct.GCObject** %87, %58
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %83
  %90 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  br label %60

; <label>:91:                                     ; preds = %83
  %92 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i64 0, i32 21
  store %struct.GCObject** %87, %struct.GCObject*** %92, align 8, !tbaa !35
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %94 = load i64, i64* %93, align 8, !tbaa !48
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %96 = load i64, i64* %95, align 8, !tbaa !49
  %97 = add nsw i64 %96, %94
  %98 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  store i64 %97, i64* %98, align 8, !tbaa !50
  br label %320

; <label>:99:                                     ; preds = %1
  %100 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21
  %101 = load %struct.GCObject**, %struct.GCObject*** %100, align 8, !tbaa !35
  %102 = icmp eq %struct.GCObject** %101, null
  br i1 %102, label %148, label %103

; <label>:103:                                    ; preds = %99
  %104 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %105 = load i64, i64* %104, align 8, !tbaa !49
  %106 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %107 = load i8, i8* %106, align 4, !tbaa !17
  %108 = xor i8 %107, 24
  %109 = and i8 %107, 24
  %110 = load %struct.GCObject*, %struct.GCObject** %101, align 8, !tbaa !29
  %111 = icmp eq %struct.GCObject* %110, null
  br i1 %111, label %140, label %112

; <label>:112:                                    ; preds = %103
  br label %113

; <label>:113:                                    ; preds = %112, %129
  %114 = phi %struct.GCObject* [ %132, %129 ], [ %110, %112 ]
  %115 = phi %struct.GCObject** [ %130, %129 ], [ %101, %112 ]
  %116 = phi i32 [ %131, %129 ], [ 0, %112 ]
  %117 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %114, i64 0, i32 2
  %118 = load i8, i8* %117, align 1, !tbaa !15
  %119 = and i8 %118, %108
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %125, label %121

; <label>:121:                                    ; preds = %113
  %122 = bitcast %struct.GCObject* %114 to i64*
  %123 = load i64, i64* %122, align 8, !tbaa !31
  %124 = bitcast %struct.GCObject** %115 to i64*
  store i64 %123, i64* %124, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %114) #6
  br label %129

; <label>:125:                                    ; preds = %113
  %126 = and i8 %118, -64
  %127 = or i8 %126, %109
  store i8 %127, i8* %117, align 1, !tbaa !15
  %128 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %114, i64 0, i32 0
  br label %129

; <label>:129:                                    ; preds = %125, %121
  %130 = phi %struct.GCObject** [ %115, %121 ], [ %128, %125 ]
  %131 = add nuw nsw i32 %116, 1
  %132 = load %struct.GCObject*, %struct.GCObject** %130, align 8, !tbaa !29
  %133 = icmp ne %struct.GCObject* %132, null
  %134 = icmp ult i32 %131, 100
  %135 = and i1 %134, %133
  br i1 %135, label %113, label %136

; <label>:136:                                    ; preds = %129
  %137 = load i64, i64* %104, align 8, !tbaa !49
  %138 = icmp eq %struct.GCObject* %132, null
  %139 = select i1 %138, %struct.GCObject** null, %struct.GCObject** %130
  br label %140

; <label>:140:                                    ; preds = %136, %103
  %141 = phi i64 [ %105, %103 ], [ %137, %136 ]
  %142 = phi i32 [ 0, %103 ], [ %131, %136 ]
  %143 = phi %struct.GCObject** [ null, %103 ], [ %139, %136 ]
  store %struct.GCObject** %143, %struct.GCObject*** %100, align 8, !tbaa !35
  %144 = sub i64 %141, %105
  %145 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  %146 = load i64, i64* %145, align 8, !tbaa !50
  %147 = add i64 %144, %146
  store i64 %147, i64* %145, align 8, !tbaa !50
  br label %150

; <label>:148:                                    ; preds = %99
  %149 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  store i8 4, i8* %4, align 1, !tbaa !11
  store %struct.GCObject** %149, %struct.GCObject*** %100, align 8, !tbaa !35
  br label %150

; <label>:150:                                    ; preds = %140, %148
  %151 = phi i32 [ %142, %140 ], [ 0, %148 ]
  %152 = sext i32 %151 to i64
  br label %320

; <label>:153:                                    ; preds = %1
  %154 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21
  %155 = load %struct.GCObject**, %struct.GCObject*** %154, align 8, !tbaa !35
  %156 = icmp eq %struct.GCObject** %155, null
  br i1 %156, label %202, label %157

; <label>:157:                                    ; preds = %153
  %158 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %159 = load i64, i64* %158, align 8, !tbaa !49
  %160 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %161 = load i8, i8* %160, align 4, !tbaa !17
  %162 = xor i8 %161, 24
  %163 = and i8 %161, 24
  %164 = load %struct.GCObject*, %struct.GCObject** %155, align 8, !tbaa !29
  %165 = icmp eq %struct.GCObject* %164, null
  br i1 %165, label %194, label %166

; <label>:166:                                    ; preds = %157
  br label %167

; <label>:167:                                    ; preds = %166, %183
  %168 = phi %struct.GCObject* [ %186, %183 ], [ %164, %166 ]
  %169 = phi %struct.GCObject** [ %184, %183 ], [ %155, %166 ]
  %170 = phi i32 [ %185, %183 ], [ 0, %166 ]
  %171 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %168, i64 0, i32 2
  %172 = load i8, i8* %171, align 1, !tbaa !15
  %173 = and i8 %172, %162
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %179, label %175

; <label>:175:                                    ; preds = %167
  %176 = bitcast %struct.GCObject* %168 to i64*
  %177 = load i64, i64* %176, align 8, !tbaa !31
  %178 = bitcast %struct.GCObject** %169 to i64*
  store i64 %177, i64* %178, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %168) #6
  br label %183

; <label>:179:                                    ; preds = %167
  %180 = and i8 %172, -64
  %181 = or i8 %180, %163
  store i8 %181, i8* %171, align 1, !tbaa !15
  %182 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %168, i64 0, i32 0
  br label %183

; <label>:183:                                    ; preds = %179, %175
  %184 = phi %struct.GCObject** [ %169, %175 ], [ %182, %179 ]
  %185 = add nuw nsw i32 %170, 1
  %186 = load %struct.GCObject*, %struct.GCObject** %184, align 8, !tbaa !29
  %187 = icmp ne %struct.GCObject* %186, null
  %188 = icmp ult i32 %185, 100
  %189 = and i1 %188, %187
  br i1 %189, label %167, label %190

; <label>:190:                                    ; preds = %183
  %191 = load i64, i64* %158, align 8, !tbaa !49
  %192 = icmp eq %struct.GCObject* %186, null
  %193 = select i1 %192, %struct.GCObject** null, %struct.GCObject** %184
  br label %194

; <label>:194:                                    ; preds = %190, %157
  %195 = phi i64 [ %159, %157 ], [ %191, %190 ]
  %196 = phi i32 [ 0, %157 ], [ %185, %190 ]
  %197 = phi %struct.GCObject** [ null, %157 ], [ %193, %190 ]
  store %struct.GCObject** %197, %struct.GCObject*** %154, align 8, !tbaa !35
  %198 = sub i64 %195, %159
  %199 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  %200 = load i64, i64* %199, align 8, !tbaa !50
  %201 = add i64 %198, %200
  store i64 %201, i64* %199, align 8, !tbaa !50
  br label %204

; <label>:202:                                    ; preds = %153
  %203 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  store i8 5, i8* %4, align 1, !tbaa !11
  store %struct.GCObject** %203, %struct.GCObject*** %154, align 8, !tbaa !35
  br label %204

; <label>:204:                                    ; preds = %194, %202
  %205 = phi i32 [ %196, %194 ], [ 0, %202 ]
  %206 = sext i32 %205 to i64
  br label %320

; <label>:207:                                    ; preds = %1
  %208 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21
  %209 = load %struct.GCObject**, %struct.GCObject*** %208, align 8, !tbaa !35
  %210 = icmp eq %struct.GCObject** %209, null
  br i1 %210, label %256, label %211

; <label>:211:                                    ; preds = %207
  %212 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %213 = load i64, i64* %212, align 8, !tbaa !49
  %214 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %215 = load i8, i8* %214, align 4, !tbaa !17
  %216 = xor i8 %215, 24
  %217 = and i8 %215, 24
  %218 = load %struct.GCObject*, %struct.GCObject** %209, align 8, !tbaa !29
  %219 = icmp eq %struct.GCObject* %218, null
  br i1 %219, label %248, label %220

; <label>:220:                                    ; preds = %211
  br label %221

; <label>:221:                                    ; preds = %220, %237
  %222 = phi %struct.GCObject* [ %240, %237 ], [ %218, %220 ]
  %223 = phi %struct.GCObject** [ %238, %237 ], [ %209, %220 ]
  %224 = phi i32 [ %239, %237 ], [ 0, %220 ]
  %225 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %222, i64 0, i32 2
  %226 = load i8, i8* %225, align 1, !tbaa !15
  %227 = and i8 %226, %216
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %233, label %229

; <label>:229:                                    ; preds = %221
  %230 = bitcast %struct.GCObject* %222 to i64*
  %231 = load i64, i64* %230, align 8, !tbaa !31
  %232 = bitcast %struct.GCObject** %223 to i64*
  store i64 %231, i64* %232, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %222) #6
  br label %237

; <label>:233:                                    ; preds = %221
  %234 = and i8 %226, -64
  %235 = or i8 %234, %217
  store i8 %235, i8* %225, align 1, !tbaa !15
  %236 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %222, i64 0, i32 0
  br label %237

; <label>:237:                                    ; preds = %233, %229
  %238 = phi %struct.GCObject** [ %223, %229 ], [ %236, %233 ]
  %239 = add nuw nsw i32 %224, 1
  %240 = load %struct.GCObject*, %struct.GCObject** %238, align 8, !tbaa !29
  %241 = icmp ne %struct.GCObject* %240, null
  %242 = icmp ult i32 %239, 100
  %243 = and i1 %242, %241
  br i1 %243, label %221, label %244

; <label>:244:                                    ; preds = %237
  %245 = load i64, i64* %212, align 8, !tbaa !49
  %246 = icmp eq %struct.GCObject* %240, null
  %247 = select i1 %246, %struct.GCObject** null, %struct.GCObject** %238
  br label %248

; <label>:248:                                    ; preds = %244, %211
  %249 = phi i64 [ %213, %211 ], [ %245, %244 ]
  %250 = phi i32 [ 0, %211 ], [ %239, %244 ]
  %251 = phi %struct.GCObject** [ null, %211 ], [ %247, %244 ]
  store %struct.GCObject** %251, %struct.GCObject*** %208, align 8, !tbaa !35
  %252 = sub i64 %249, %213
  %253 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  %254 = load i64, i64* %253, align 8, !tbaa !50
  %255 = add i64 %252, %254
  store i64 %255, i64* %253, align 8, !tbaa !50
  br label %257

; <label>:256:                                    ; preds = %207
  store i8 6, i8* %4, align 1, !tbaa !11
  store %struct.GCObject** null, %struct.GCObject*** %208, align 8, !tbaa !35
  br label %257

; <label>:257:                                    ; preds = %248, %256
  %258 = phi i32 [ %250, %248 ], [ 0, %256 ]
  %259 = sext i32 %258 to i64
  br label %320

; <label>:260:                                    ; preds = %1
  %261 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16
  %262 = load i8, i8* %261, align 2, !tbaa !51
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %282

; <label>:264:                                    ; preds = %260
  %265 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %266 = load i64, i64* %265, align 8, !tbaa !49
  %267 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, i32 1
  %268 = load i32, i32* %267, align 8, !tbaa !52
  %269 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 6, i32 2
  %270 = load i32, i32* %269, align 4, !tbaa !53
  %271 = sdiv i32 %270, 4
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %276

; <label>:273:                                    ; preds = %264
  %274 = sdiv i32 %270, 2
  tail call void @luaS_resize(%struct.lua_State* nonnull %0, i32 %274) #6
  %275 = load i64, i64* %265, align 8, !tbaa !49
  br label %276

; <label>:276:                                    ; preds = %273, %264
  %277 = phi i64 [ %275, %273 ], [ %266, %264 ]
  %278 = sub i64 %277, %266
  %279 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  %280 = load i64, i64* %279, align 8, !tbaa !50
  %281 = add i64 %278, %280
  store i64 %281, i64* %279, align 8, !tbaa !50
  br label %282

; <label>:282:                                    ; preds = %260, %276
  store i8 7, i8* %4, align 1, !tbaa !11
  br label %320

; <label>:283:                                    ; preds = %1
  %284 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %285 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %286 = icmp eq %struct.GCObject* %285, null
  br i1 %286, label %319, label %287

; <label>:287:                                    ; preds = %283
  %288 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16
  %289 = load i8, i8* %288, align 2, !tbaa !51
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %291, label %319

; <label>:291:                                    ; preds = %287
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %292 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %293 = icmp eq %struct.GCObject* %292, null
  br i1 %293, label %320, label %294

; <label>:294:                                    ; preds = %291
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %295 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %296 = icmp eq %struct.GCObject* %295, null
  br i1 %296, label %320, label %297

; <label>:297:                                    ; preds = %294
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %298 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %299 = icmp eq %struct.GCObject* %298, null
  br i1 %299, label %320, label %300

; <label>:300:                                    ; preds = %297
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %301 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %302 = icmp eq %struct.GCObject* %301, null
  br i1 %302, label %320, label %303

; <label>:303:                                    ; preds = %300
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %304 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %305 = icmp eq %struct.GCObject* %304, null
  br i1 %305, label %320, label %306

; <label>:306:                                    ; preds = %303
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %307 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %308 = icmp eq %struct.GCObject* %307, null
  br i1 %308, label %320, label %309

; <label>:309:                                    ; preds = %306
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %310 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %311 = icmp eq %struct.GCObject* %310, null
  br i1 %311, label %320, label %312

; <label>:312:                                    ; preds = %309
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %313 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %314 = icmp eq %struct.GCObject* %313, null
  br i1 %314, label %320, label %315

; <label>:315:                                    ; preds = %312
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  %316 = load %struct.GCObject*, %struct.GCObject** %284, align 8, !tbaa !41
  %317 = icmp eq %struct.GCObject* %316, null
  br i1 %317, label %320, label %318

; <label>:318:                                    ; preds = %315
  tail call fastcc void @GCTM(%struct.lua_State* nonnull %0) #6
  br label %320

; <label>:319:                                    ; preds = %287, %283
  store i8 8, i8* %4, align 1, !tbaa !11
  br label %320

; <label>:320:                                    ; preds = %318, %315, %312, %309, %306, %303, %300, %297, %294, %291, %1, %319, %282, %257, %204, %150, %91, %52, %51, %46
  %321 = phi i64 [ 0, %319 ], [ 0, %282 ], [ %259, %257 ], [ %206, %204 ], [ %152, %150 ], [ %55, %91 ], [ 0, %51 ], [ %53, %52 ], [ 1, %46 ], [ 0, %1 ], [ 50, %291 ], [ 100, %294 ], [ 150, %297 ], [ 200, %300 ], [ 250, %303 ], [ 300, %306 ], [ 350, %309 ], [ 400, %312 ], [ 450, %315 ], [ 500, %318 ]
  ret i64 %321
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15
  %5 = load i8, i8* %4, align 1, !tbaa !54
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %537, label %7

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12
  %9 = load i8, i8* %8, align 2, !tbaa !40
  %10 = icmp eq i8 %9, 1
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5
  %12 = load i64, i64* %11, align 8, !tbaa !42
  %13 = icmp eq i64 %12, 0
  br i1 %10, label %15, label %14

; <label>:14:                                     ; preds = %7
  br i1 %13, label %483, label %68

; <label>:15:                                     ; preds = %7
  br i1 %13, label %166, label %16

; <label>:16:                                     ; preds = %15
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %18 = load %struct.GCObject*, %struct.GCObject** %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %20 = load i8, i8* %19, align 4, !tbaa !17
  %21 = and i8 %20, 24
  %22 = icmp eq %struct.GCObject* %18, null
  br i1 %22, label %33, label %23

; <label>:23:                                     ; preds = %16
  br label %24

; <label>:24:                                     ; preds = %23, %24
  %25 = phi %struct.GCObject* [ %31, %24 ], [ %18, %23 ]
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i64 0, i32 2
  %27 = load i8, i8* %26, align 1, !tbaa !15
  %28 = and i8 %27, -64
  %29 = or i8 %28, %21
  store i8 %29, i8* %26, align 1, !tbaa !15
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i64 0, i32 0
  %31 = load %struct.GCObject*, %struct.GCObject** %30, align 8, !tbaa !31
  %32 = icmp eq %struct.GCObject* %31, null
  br i1 %32, label %33, label %24

; <label>:33:                                     ; preds = %24, %16
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 30
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %36 = bitcast %struct.GCObject** %34 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %36, i8 0, i64 24, i32 8, i1 false) #6
  %37 = load %struct.GCObject*, %struct.GCObject** %35, align 8, !tbaa !39
  %38 = icmp eq %struct.GCObject* %37, null
  br i1 %38, label %49, label %39

; <label>:39:                                     ; preds = %33
  br label %40

; <label>:40:                                     ; preds = %39, %40
  %41 = phi %struct.GCObject* [ %47, %40 ], [ %37, %39 ]
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %41, i64 0, i32 2
  %43 = load i8, i8* %42, align 1, !tbaa !15
  %44 = and i8 %43, -64
  %45 = or i8 %44, %21
  store i8 %45, i8* %42, align 1, !tbaa !15
  %46 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %41, i64 0, i32 0
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8, !tbaa !31
  %48 = icmp eq %struct.GCObject* %47, null
  br i1 %48, label %49, label %40

; <label>:49:                                     ; preds = %40, %33
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %51 = load %struct.GCObject*, %struct.GCObject** %50, align 8, !tbaa !41
  %52 = icmp eq %struct.GCObject* %51, null
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %49
  br label %54

; <label>:54:                                     ; preds = %53, %54
  %55 = phi %struct.GCObject* [ %61, %54 ], [ %51, %53 ]
  %56 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %55, i64 0, i32 2
  %57 = load i8, i8* %56, align 1, !tbaa !15
  %58 = and i8 %57, -64
  %59 = or i8 %58, %21
  store i8 %59, i8* %56, align 1, !tbaa !15
  %60 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %55, i64 0, i32 0
  %61 = load %struct.GCObject*, %struct.GCObject** %60, align 8, !tbaa !31
  %62 = icmp eq %struct.GCObject* %61, null
  br i1 %62, label %63, label %54

; <label>:63:                                     ; preds = %54, %49
  %64 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 33
  %65 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  %66 = bitcast %struct.GCObject** %64 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %66, i8 0, i64 24, i32 8, i1 false) #6
  store i8 8, i8* %65, align 1, !tbaa !11
  store i8 0, i8* %8, align 2, !tbaa !40
  store i64 0, i64* %11, align 8, !tbaa !42
  %67 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  br label %68

; <label>:68:                                     ; preds = %14, %63
  %69 = phi %struct.global_State* [ %67, %63 ], [ %3, %14 ]
  %70 = getelementptr inbounds %struct.global_State, %struct.global_State* %69, i64 0, i32 11
  %71 = load i8, i8* %70, align 1, !tbaa !11
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %78, label %73

; <label>:73:                                     ; preds = %68
  br label %74

; <label>:74:                                     ; preds = %73, %74
  %75 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %76 = load i8, i8* %70, align 1, !tbaa !11
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %74

; <label>:78:                                     ; preds = %74, %68
  %79 = tail call fastcc i64 @atomic(%struct.lua_State* %0) #6
  %80 = lshr i64 %12, 3
  %81 = add i64 %80, %12
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %95

; <label>:83:                                     ; preds = %78
  tail call fastcc void @atomic2gen(%struct.lua_State* %0, %struct.global_State* %3) #6
  %84 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %85 = load i64, i64* %84, align 8, !tbaa !48
  %86 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %87 = load i64, i64* %86, align 8, !tbaa !49
  %88 = add nsw i64 %87, %85
  %89 = udiv i64 %88, 100
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13
  %91 = load i8, i8* %90, align 1, !tbaa !55
  %92 = zext i8 %91 to i64
  %93 = sub nsw i64 0, %92
  %94 = mul i64 %89, %93
  tail call void @luaE_setdebt(%struct.global_State* %3, i64 %94) #6
  br label %537

; <label>:95:                                     ; preds = %78
  %96 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %97 = load i64, i64* %96, align 8, !tbaa !48
  %98 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %99 = load i64, i64* %98, align 8, !tbaa !49
  %100 = add nsw i64 %99, %97
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  store i64 %100, i64* %101, align 8, !tbaa !50
  %102 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %103 = getelementptr inbounds %struct.global_State, %struct.global_State* %102, i64 0, i32 11
  store i8 3, i8* %103, align 1, !tbaa !11
  %104 = getelementptr inbounds %struct.global_State, %struct.global_State* %102, i64 0, i32 20
  %105 = bitcast %struct.GCObject** %104 to i64*
  br label %106

; <label>:106:                                    ; preds = %135, %95
  %107 = phi %struct.global_State* [ %136, %135 ], [ %102, %95 ]
  %108 = getelementptr inbounds %struct.global_State, %struct.global_State* %107, i64 0, i32 10
  %109 = load i8, i8* %108, align 4, !tbaa !17
  %110 = and i8 %109, 24
  %111 = load %struct.GCObject*, %struct.GCObject** %104, align 8, !tbaa !29
  %112 = icmp eq %struct.GCObject* %111, null
  br i1 %112, label %129, label %113

; <label>:113:                                    ; preds = %106
  %114 = xor i8 %109, 24
  %115 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %111, i64 0, i32 2
  %116 = load i8, i8* %115, align 1, !tbaa !15
  %117 = and i8 %116, %114
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %122, label %119

; <label>:119:                                    ; preds = %113
  %120 = bitcast %struct.GCObject* %111 to i64*
  %121 = load i64, i64* %120, align 8, !tbaa !31
  store i64 %121, i64* %105, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* nonnull %0, %struct.GCObject* nonnull %111) #6
  br label %126

; <label>:122:                                    ; preds = %113
  %123 = and i8 %116, -64
  %124 = or i8 %123, %110
  store i8 %124, i8* %115, align 1, !tbaa !15
  %125 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %111, i64 0, i32 0
  br label %126

; <label>:126:                                    ; preds = %122, %119
  %127 = phi %struct.GCObject** [ %104, %119 ], [ %125, %122 ]
  %128 = load %struct.GCObject*, %struct.GCObject** %127, align 8, !tbaa !29
  br label %129

; <label>:129:                                    ; preds = %126, %106
  %130 = phi %struct.GCObject** [ %104, %106 ], [ %127, %126 ]
  %131 = phi %struct.GCObject* [ null, %106 ], [ %128, %126 ]
  %132 = icmp eq %struct.GCObject* %131, null
  %133 = select i1 %132, %struct.GCObject** null, %struct.GCObject** %130
  %134 = icmp eq %struct.GCObject** %133, %104
  br i1 %134, label %135, label %137

; <label>:135:                                    ; preds = %129
  %136 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  br label %106

; <label>:137:                                    ; preds = %129
  %138 = getelementptr inbounds %struct.global_State, %struct.global_State* %102, i64 0, i32 21
  store %struct.GCObject** %133, %struct.GCObject*** %138, align 8, !tbaa !35
  %139 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %140 = getelementptr inbounds %struct.global_State, %struct.global_State* %139, i64 0, i32 11
  %141 = load i8, i8* %140, align 1, !tbaa !11
  %142 = icmp eq i8 %141, 8
  br i1 %142, label %148, label %143

; <label>:143:                                    ; preds = %137
  br label %144

; <label>:144:                                    ; preds = %143, %144
  %145 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %146 = load i8, i8* %140, align 1, !tbaa !11
  %147 = icmp eq i8 %146, 8
  br i1 %147, label %148, label %144

; <label>:148:                                    ; preds = %144, %137
  %149 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17
  %150 = load i8, i8* %149, align 1, !tbaa !56
  %151 = zext i8 %150 to i64
  %152 = shl nuw nsw i64 %151, 2
  %153 = load i64, i64* %101, align 8, !tbaa !50
  %154 = udiv i64 %153, 100
  %155 = udiv i64 9223372036854775807, %154
  %156 = icmp ult i64 %152, %155
  %157 = load i64, i64* %96, align 8, !tbaa !48
  %158 = load i64, i64* %98, align 8, !tbaa !49
  %159 = add nsw i64 %158, %157
  %160 = sub nsw i64 0, %152
  %161 = mul i64 %154, %160
  %162 = select i1 %156, i64 %161, i64 -9223372036854775807
  %163 = add i64 %159, %162
  %164 = icmp slt i64 %163, 0
  %165 = select i1 %164, i64 %163, i64 0
  tail call void @luaE_setdebt(%struct.global_State* %3, i64 %165) #6
  store i64 %79, i64* %11, align 8, !tbaa !42
  br label %537

; <label>:166:                                    ; preds = %15
  %167 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  %168 = load i64, i64* %167, align 8, !tbaa !50
  %169 = udiv i64 %168, 100
  %170 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14
  %171 = load i8, i8* %170, align 8, !tbaa !57
  %172 = zext i8 %171 to i64
  %173 = shl nuw nsw i64 %172, 2
  %174 = mul i64 %173, %169
  %175 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %176 = load i64, i64* %175, align 8, !tbaa !49
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %214

; <label>:178:                                    ; preds = %166
  %179 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %180 = load i64, i64* %179, align 8, !tbaa !48
  %181 = add nsw i64 %180, %176
  %182 = add i64 %174, %168
  %183 = icmp ugt i64 %181, %182
  br i1 %183, label %184, label %214

; <label>:184:                                    ; preds = %178
  %185 = tail call fastcc i64 @fullgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3) #6
  %186 = load i64, i64* %179, align 8, !tbaa !48
  %187 = load i64, i64* %175, align 8, !tbaa !49
  %188 = add nsw i64 %187, %186
  %189 = lshr exact i64 %174, 1
  %190 = add i64 %189, %168
  %191 = icmp ult i64 %188, %190
  br i1 %191, label %192, label %199

; <label>:192:                                    ; preds = %184
  %193 = udiv i64 %188, 100
  %194 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13
  %195 = load i8, i8* %194, align 1, !tbaa !55
  %196 = zext i8 %195 to i64
  %197 = sub nsw i64 0, %193
  %198 = mul i64 %197, %196
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %198) #6
  br label %537

; <label>:199:                                    ; preds = %184
  store i64 %185, i64* %11, align 8, !tbaa !42
  %200 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17
  %201 = load i8, i8* %200, align 1, !tbaa !56
  %202 = zext i8 %201 to i64
  %203 = shl nuw nsw i64 %202, 2
  %204 = load i64, i64* %167, align 8, !tbaa !50
  %205 = udiv i64 %204, 100
  %206 = udiv i64 9223372036854775807, %205
  %207 = icmp ult i64 %203, %206
  %208 = sub nsw i64 0, %203
  %209 = mul i64 %205, %208
  %210 = select i1 %207, i64 %209, i64 -9223372036854775807
  %211 = add i64 %210, %188
  %212 = icmp slt i64 %211, 0
  %213 = select i1 %212, i64 %211, i64 0
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %213) #6
  br label %537

; <label>:214:                                    ; preds = %178, %166
  %215 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 30
  %216 = load %struct.GCObject*, %struct.GCObject** %215, align 8, !tbaa !36
  %217 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 32
  %218 = load %struct.GCObject*, %struct.GCObject** %217, align 8, !tbaa !38
  %219 = icmp eq %struct.GCObject* %216, %218
  br i1 %219, label %233, label %220

; <label>:220:                                    ; preds = %214
  br label %221

; <label>:221:                                    ; preds = %220, %229
  %222 = phi %struct.GCObject* [ %231, %229 ], [ %216, %220 ]
  %223 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %222, i64 0, i32 2
  %224 = load i8, i8* %223, align 1, !tbaa !15
  %225 = and i8 %224, 39
  %226 = icmp eq i8 %225, 35
  br i1 %226, label %227, label %229

; <label>:227:                                    ; preds = %221
  %228 = and i8 %224, -33
  store i8 %228, i8* %223, align 1, !tbaa !15
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* nonnull %222) #6
  br label %229

; <label>:229:                                    ; preds = %227, %221
  %230 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %222, i64 0, i32 0
  %231 = load %struct.GCObject*, %struct.GCObject** %230, align 8, !tbaa !31
  %232 = icmp eq %struct.GCObject* %231, %218
  br i1 %232, label %233, label %221

; <label>:233:                                    ; preds = %229, %214
  %234 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %235 = load %struct.GCObject*, %struct.GCObject** %234, align 8, !tbaa !39
  %236 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 35
  %237 = load %struct.GCObject*, %struct.GCObject** %236, align 8, !tbaa !58
  %238 = icmp eq %struct.GCObject* %235, %237
  br i1 %238, label %252, label %239

; <label>:239:                                    ; preds = %233
  br label %240

; <label>:240:                                    ; preds = %239, %248
  %241 = phi %struct.GCObject* [ %250, %248 ], [ %235, %239 ]
  %242 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %241, i64 0, i32 2
  %243 = load i8, i8* %242, align 1, !tbaa !15
  %244 = and i8 %243, 39
  %245 = icmp eq i8 %244, 35
  br i1 %245, label %246, label %248

; <label>:246:                                    ; preds = %240
  %247 = and i8 %243, -33
  store i8 %247, i8* %242, align 1, !tbaa !15
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* nonnull %241) #6
  br label %248

; <label>:248:                                    ; preds = %246, %240
  %249 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %241, i64 0, i32 0
  %250 = load %struct.GCObject*, %struct.GCObject** %249, align 8, !tbaa !31
  %251 = icmp eq %struct.GCObject* %250, %237
  br i1 %251, label %252, label %240

; <label>:252:                                    ; preds = %248, %233
  %253 = tail call fastcc i64 @atomic(%struct.lua_State* %0) #6
  %254 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %255 = load %struct.GCObject*, %struct.GCObject** %215, align 8, !tbaa !36
  %256 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %257 = load i8, i8* %256, align 4, !tbaa !17
  %258 = and i8 %257, 24
  %259 = load %struct.GCObject*, %struct.GCObject** %254, align 8, !tbaa !29
  %260 = icmp eq %struct.GCObject* %259, %255
  br i1 %260, label %296, label %261

; <label>:261:                                    ; preds = %252
  br label %262

; <label>:262:                                    ; preds = %261, %289
  %263 = phi %struct.GCObject* [ %291, %289 ], [ %259, %261 ]
  %264 = phi %struct.GCObject** [ %290, %289 ], [ %254, %261 ]
  %265 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %263, i64 0, i32 2
  %266 = load i8, i8* %265, align 1, !tbaa !15
  %267 = zext i8 %266 to i32
  %268 = and i32 %267, 24
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %274, label %270

; <label>:270:                                    ; preds = %262
  %271 = bitcast %struct.GCObject* %263 to i64*
  %272 = load i64, i64* %271, align 8, !tbaa !31
  %273 = bitcast %struct.GCObject** %264 to i64*
  store i64 %272, i64* %273, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %263) #6
  br label %289

; <label>:274:                                    ; preds = %262
  %275 = and i32 %267, 7
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %280

; <label>:277:                                    ; preds = %274
  %278 = and i8 %266, -57
  %279 = or i8 %278, %258
  store i8 %279, i8* %265, align 1, !tbaa !15
  br label %280

; <label>:280:                                    ; preds = %277, %274
  %281 = phi i8 [ %279, %277 ], [ %266, %274 ]
  %282 = and i8 %281, -8
  %283 = and i8 %281, 7
  %284 = zext i8 %283 to i64
  %285 = getelementptr inbounds [7 x i8], [7 x i8]* @sweepgen.nextage, i64 0, i64 %284
  %286 = load i8, i8* %285, align 1, !tbaa !22
  %287 = or i8 %282, %286
  store i8 %287, i8* %265, align 1, !tbaa !15
  %288 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %263, i64 0, i32 0
  br label %289

; <label>:289:                                    ; preds = %280, %270
  %290 = phi %struct.GCObject** [ %264, %270 ], [ %288, %280 ]
  %291 = load %struct.GCObject*, %struct.GCObject** %290, align 8, !tbaa !29
  %292 = icmp eq %struct.GCObject* %291, %255
  br i1 %292, label %293, label %262

; <label>:293:                                    ; preds = %289
  %294 = load i8, i8* %256, align 4, !tbaa !17
  %295 = and i8 %294, 24
  br label %296

; <label>:296:                                    ; preds = %293, %252
  %297 = phi i8 [ %295, %293 ], [ %258, %252 ]
  %298 = phi %struct.GCObject** [ %290, %293 ], [ %254, %252 ]
  %299 = load %struct.GCObject*, %struct.GCObject** %217, align 8, !tbaa !38
  %300 = icmp eq %struct.GCObject* %255, %299
  br i1 %300, label %336, label %301

; <label>:301:                                    ; preds = %296
  br label %302

; <label>:302:                                    ; preds = %301, %329
  %303 = phi %struct.GCObject* [ %331, %329 ], [ %255, %301 ]
  %304 = phi %struct.GCObject** [ %330, %329 ], [ %298, %301 ]
  %305 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %303, i64 0, i32 2
  %306 = load i8, i8* %305, align 1, !tbaa !15
  %307 = zext i8 %306 to i32
  %308 = and i32 %307, 24
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %314, label %310

; <label>:310:                                    ; preds = %302
  %311 = bitcast %struct.GCObject* %303 to i64*
  %312 = load i64, i64* %311, align 8, !tbaa !31
  %313 = bitcast %struct.GCObject** %304 to i64*
  store i64 %312, i64* %313, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %303) #6
  br label %329

; <label>:314:                                    ; preds = %302
  %315 = and i32 %307, 7
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %320

; <label>:317:                                    ; preds = %314
  %318 = and i8 %306, -57
  %319 = or i8 %318, %297
  store i8 %319, i8* %305, align 1, !tbaa !15
  br label %320

; <label>:320:                                    ; preds = %317, %314
  %321 = phi i8 [ %319, %317 ], [ %306, %314 ]
  %322 = and i8 %321, -8
  %323 = and i8 %321, 7
  %324 = zext i8 %323 to i64
  %325 = getelementptr inbounds [7 x i8], [7 x i8]* @sweepgen.nextage, i64 0, i64 %324
  %326 = load i8, i8* %325, align 1, !tbaa !22
  %327 = or i8 %322, %326
  store i8 %327, i8* %305, align 1, !tbaa !15
  %328 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %303, i64 0, i32 0
  br label %329

; <label>:329:                                    ; preds = %320, %310
  %330 = phi %struct.GCObject** [ %304, %310 ], [ %328, %320 ]
  %331 = load %struct.GCObject*, %struct.GCObject** %330, align 8, !tbaa !29
  %332 = icmp eq %struct.GCObject* %331, %299
  br i1 %332, label %333, label %302

; <label>:333:                                    ; preds = %329
  %334 = load i8, i8* %256, align 4, !tbaa !17
  %335 = and i8 %334, 24
  br label %336

; <label>:336:                                    ; preds = %333, %296
  %337 = phi i8 [ %335, %333 ], [ %297, %296 ]
  %338 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 31
  %339 = bitcast %struct.GCObject** %338 to i64*
  %340 = load i64, i64* %339, align 8, !tbaa !37
  %341 = bitcast %struct.GCObject** %217 to i64*
  store i64 %340, i64* %341, align 8, !tbaa !38
  %342 = bitcast %struct.GCObject** %298 to i64*
  %343 = load i64, i64* %342, align 8, !tbaa !29
  store i64 %343, i64* %339, align 8, !tbaa !37
  %344 = bitcast %struct.GCObject** %254 to i64*
  %345 = load i64, i64* %344, align 8, !tbaa !32
  %346 = bitcast %struct.GCObject** %215 to i64*
  store i64 %345, i64* %346, align 8, !tbaa !36
  %347 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 33
  %348 = load %struct.GCObject*, %struct.GCObject** %347, align 8, !tbaa !44
  %349 = load %struct.GCObject*, %struct.GCObject** %234, align 8, !tbaa !29
  %350 = icmp eq %struct.GCObject* %349, %348
  br i1 %350, label %386, label %351

; <label>:351:                                    ; preds = %336
  br label %352

; <label>:352:                                    ; preds = %351, %379
  %353 = phi %struct.GCObject* [ %381, %379 ], [ %349, %351 ]
  %354 = phi %struct.GCObject** [ %380, %379 ], [ %234, %351 ]
  %355 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %353, i64 0, i32 2
  %356 = load i8, i8* %355, align 1, !tbaa !15
  %357 = zext i8 %356 to i32
  %358 = and i32 %357, 24
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %364, label %360

; <label>:360:                                    ; preds = %352
  %361 = bitcast %struct.GCObject* %353 to i64*
  %362 = load i64, i64* %361, align 8, !tbaa !31
  %363 = bitcast %struct.GCObject** %354 to i64*
  store i64 %362, i64* %363, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %353) #6
  br label %379

; <label>:364:                                    ; preds = %352
  %365 = and i32 %357, 7
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %370

; <label>:367:                                    ; preds = %364
  %368 = and i8 %356, -57
  %369 = or i8 %368, %337
  store i8 %369, i8* %355, align 1, !tbaa !15
  br label %370

; <label>:370:                                    ; preds = %367, %364
  %371 = phi i8 [ %369, %367 ], [ %356, %364 ]
  %372 = and i8 %371, -8
  %373 = and i8 %371, 7
  %374 = zext i8 %373 to i64
  %375 = getelementptr inbounds [7 x i8], [7 x i8]* @sweepgen.nextage, i64 0, i64 %374
  %376 = load i8, i8* %375, align 1, !tbaa !22
  %377 = or i8 %372, %376
  store i8 %377, i8* %355, align 1, !tbaa !15
  %378 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %353, i64 0, i32 0
  br label %379

; <label>:379:                                    ; preds = %370, %360
  %380 = phi %struct.GCObject** [ %354, %360 ], [ %378, %370 ]
  %381 = load %struct.GCObject*, %struct.GCObject** %380, align 8, !tbaa !29
  %382 = icmp eq %struct.GCObject* %381, %348
  br i1 %382, label %383, label %352

; <label>:383:                                    ; preds = %379
  %384 = load i8, i8* %256, align 4, !tbaa !17
  %385 = and i8 %384, 24
  br label %386

; <label>:386:                                    ; preds = %383, %336
  %387 = phi i8 [ %385, %383 ], [ %337, %336 ]
  %388 = phi %struct.GCObject** [ %380, %383 ], [ %234, %336 ]
  %389 = load %struct.GCObject*, %struct.GCObject** %236, align 8, !tbaa !58
  %390 = icmp eq %struct.GCObject* %348, %389
  br i1 %390, label %426, label %391

; <label>:391:                                    ; preds = %386
  br label %392

; <label>:392:                                    ; preds = %391, %419
  %393 = phi %struct.GCObject* [ %421, %419 ], [ %348, %391 ]
  %394 = phi %struct.GCObject** [ %420, %419 ], [ %388, %391 ]
  %395 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %393, i64 0, i32 2
  %396 = load i8, i8* %395, align 1, !tbaa !15
  %397 = zext i8 %396 to i32
  %398 = and i32 %397, 24
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %404, label %400

; <label>:400:                                    ; preds = %392
  %401 = bitcast %struct.GCObject* %393 to i64*
  %402 = load i64, i64* %401, align 8, !tbaa !31
  %403 = bitcast %struct.GCObject** %394 to i64*
  store i64 %402, i64* %403, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %393) #6
  br label %419

; <label>:404:                                    ; preds = %392
  %405 = and i32 %397, 7
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %410

; <label>:407:                                    ; preds = %404
  %408 = and i8 %396, -57
  %409 = or i8 %408, %387
  store i8 %409, i8* %395, align 1, !tbaa !15
  br label %410

; <label>:410:                                    ; preds = %407, %404
  %411 = phi i8 [ %409, %407 ], [ %396, %404 ]
  %412 = and i8 %411, -8
  %413 = and i8 %411, 7
  %414 = zext i8 %413 to i64
  %415 = getelementptr inbounds [7 x i8], [7 x i8]* @sweepgen.nextage, i64 0, i64 %414
  %416 = load i8, i8* %415, align 1, !tbaa !22
  %417 = or i8 %412, %416
  store i8 %417, i8* %395, align 1, !tbaa !15
  %418 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %393, i64 0, i32 0
  br label %419

; <label>:419:                                    ; preds = %410, %400
  %420 = phi %struct.GCObject** [ %394, %400 ], [ %418, %410 ]
  %421 = load %struct.GCObject*, %struct.GCObject** %420, align 8, !tbaa !29
  %422 = icmp eq %struct.GCObject* %421, %389
  br i1 %422, label %423, label %392

; <label>:423:                                    ; preds = %419
  %424 = load i8, i8* %256, align 4, !tbaa !17
  %425 = and i8 %424, 24
  br label %426

; <label>:426:                                    ; preds = %423, %386
  %427 = phi i8 [ %425, %423 ], [ %387, %386 ]
  %428 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 34
  %429 = bitcast %struct.GCObject** %428 to i64*
  %430 = load i64, i64* %429, align 8, !tbaa !43
  %431 = bitcast %struct.GCObject** %236 to i64*
  store i64 %430, i64* %431, align 8, !tbaa !58
  %432 = bitcast %struct.GCObject** %388 to i64*
  %433 = load i64, i64* %432, align 8, !tbaa !29
  store i64 %433, i64* %429, align 8, !tbaa !43
  %434 = bitcast %struct.GCObject** %234 to i64*
  %435 = load i64, i64* %434, align 8, !tbaa !39
  %436 = bitcast %struct.GCObject** %347 to i64*
  store i64 %435, i64* %436, align 8, !tbaa !44
  %437 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %438 = load %struct.GCObject*, %struct.GCObject** %437, align 8, !tbaa !29
  %439 = icmp eq %struct.GCObject* %438, null
  br i1 %439, label %472, label %440

; <label>:440:                                    ; preds = %426
  br label %441

; <label>:441:                                    ; preds = %440, %468
  %442 = phi %struct.GCObject* [ %470, %468 ], [ %438, %440 ]
  %443 = phi %struct.GCObject** [ %469, %468 ], [ %437, %440 ]
  %444 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %442, i64 0, i32 2
  %445 = load i8, i8* %444, align 1, !tbaa !15
  %446 = zext i8 %445 to i32
  %447 = and i32 %446, 24
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %453, label %449

; <label>:449:                                    ; preds = %441
  %450 = bitcast %struct.GCObject* %442 to i64*
  %451 = load i64, i64* %450, align 8, !tbaa !31
  %452 = bitcast %struct.GCObject** %443 to i64*
  store i64 %451, i64* %452, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %442) #6
  br label %468

; <label>:453:                                    ; preds = %441
  %454 = and i32 %446, 7
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %459

; <label>:456:                                    ; preds = %453
  %457 = and i8 %445, -57
  %458 = or i8 %457, %427
  store i8 %458, i8* %444, align 1, !tbaa !15
  br label %459

; <label>:459:                                    ; preds = %456, %453
  %460 = phi i8 [ %458, %456 ], [ %445, %453 ]
  %461 = and i8 %460, -8
  %462 = and i8 %460, 7
  %463 = zext i8 %462 to i64
  %464 = getelementptr inbounds [7 x i8], [7 x i8]* @sweepgen.nextage, i64 0, i64 %463
  %465 = load i8, i8* %464, align 1, !tbaa !22
  %466 = or i8 %461, %465
  store i8 %466, i8* %444, align 1, !tbaa !15
  %467 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %442, i64 0, i32 0
  br label %468

; <label>:468:                                    ; preds = %459, %449
  %469 = phi %struct.GCObject** [ %443, %449 ], [ %467, %459 ]
  %470 = load %struct.GCObject*, %struct.GCObject** %469, align 8, !tbaa !29
  %471 = icmp eq %struct.GCObject* %470, null
  br i1 %471, label %472, label %441

; <label>:472:                                    ; preds = %468, %426
  tail call fastcc void @finishgencycle(%struct.lua_State* %0, %struct.global_State* %3) #6
  %473 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %474 = load i64, i64* %473, align 8, !tbaa !48
  %475 = load i64, i64* %175, align 8, !tbaa !49
  %476 = add nsw i64 %475, %474
  %477 = udiv i64 %476, 100
  %478 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 13
  %479 = load i8, i8* %478, align 1, !tbaa !55
  %480 = zext i8 %479 to i64
  %481 = sub nsw i64 0, %480
  %482 = mul i64 %477, %481
  tail call void @luaE_setdebt(%struct.global_State* %3, i64 %482) #6
  store i64 %168, i64* %167, align 8, !tbaa !50
  br label %537

; <label>:483:                                    ; preds = %14
  %484 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 18
  %485 = load i8, i8* %484, align 4, !tbaa !59
  %486 = zext i8 %485 to i64
  %487 = shl nuw nsw i64 %486, 2
  %488 = or i64 %487, 1
  %489 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %490 = load i64, i64* %489, align 8, !tbaa !49
  %491 = lshr i64 %490, 4
  %492 = mul i64 %488, %491
  %493 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 19
  %494 = load i8, i8* %493, align 1, !tbaa !60
  %495 = icmp ult i8 %494, 63
  br i1 %495, label %496, label %502

; <label>:496:                                    ; preds = %483
  %497 = zext i8 %494 to i64
  %498 = shl i64 1, %497
  %499 = lshr i64 %498, 4
  %500 = sub nsw i64 0, %488
  %501 = mul i64 %499, %500
  br label %502

; <label>:502:                                    ; preds = %496, %483
  %503 = phi i64 [ %501, %496 ], [ -9223372036854775807, %483 ]
  %504 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  br label %505

; <label>:505:                                    ; preds = %512, %502
  %506 = phi i64 [ %492, %502 ], [ %508, %512 ]
  %507 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %508 = sub i64 %506, %507
  %509 = icmp sgt i64 %508, %503
  %510 = load i8, i8* %504, align 1, !tbaa !11
  %511 = icmp eq i8 %510, 8
  br i1 %509, label %512, label %513

; <label>:512:                                    ; preds = %505
  br i1 %511, label %514, label %505

; <label>:513:                                    ; preds = %505
  br i1 %511, label %514, label %534

; <label>:514:                                    ; preds = %512, %513
  %515 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 17
  %516 = load i8, i8* %515, align 1, !tbaa !56
  %517 = zext i8 %516 to i64
  %518 = shl nuw nsw i64 %517, 2
  %519 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  %520 = load i64, i64* %519, align 8, !tbaa !50
  %521 = udiv i64 %520, 100
  %522 = udiv i64 9223372036854775807, %521
  %523 = icmp ult i64 %518, %522
  %524 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %525 = load i64, i64* %524, align 8, !tbaa !48
  %526 = load i64, i64* %489, align 8, !tbaa !49
  %527 = add nsw i64 %526, %525
  %528 = sub nsw i64 0, %518
  %529 = mul i64 %521, %528
  %530 = select i1 %523, i64 %529, i64 -9223372036854775807
  %531 = add i64 %527, %530
  %532 = icmp slt i64 %531, 0
  %533 = select i1 %532, i64 %531, i64 0
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %533) #6
  br label %537

; <label>:534:                                    ; preds = %513
  %535 = sdiv i64 %508, %488
  %536 = shl i64 %535, 4
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %536) #6
  br label %537

; <label>:537:                                    ; preds = %534, %514, %472, %199, %192, %148, %83, %1
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 16
  store i8 %5, i8* %6, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 12
  %8 = load i8, i8* %7, align 2, !tbaa !40
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %105

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %13 = icmp ult i8 %12, 3
  br i1 %13, label %14, label %53

; <label>:14:                                     ; preds = %10
  store i8 3, i8* %11, align 1, !tbaa !11
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 20
  %16 = bitcast %struct.GCObject** %15 to i64*
  br label %17

; <label>:17:                                     ; preds = %46, %14
  %18 = phi %struct.global_State* [ %47, %46 ], [ %4, %14 ]
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 10
  %20 = load i8, i8* %19, align 4, !tbaa !17
  %21 = and i8 %20, 24
  %22 = load %struct.GCObject*, %struct.GCObject** %15, align 8, !tbaa !29
  %23 = icmp eq %struct.GCObject* %22, null
  br i1 %23, label %40, label %24

; <label>:24:                                     ; preds = %17
  %25 = xor i8 %20, 24
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %22, i64 0, i32 2
  %27 = load i8, i8* %26, align 1, !tbaa !15
  %28 = and i8 %27, %25
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

; <label>:30:                                     ; preds = %24
  %31 = bitcast %struct.GCObject* %22 to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !31
  store i64 %32, i64* %16, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* nonnull %0, %struct.GCObject* nonnull %22) #6
  br label %37

; <label>:33:                                     ; preds = %24
  %34 = and i8 %27, -64
  %35 = or i8 %34, %21
  store i8 %35, i8* %26, align 1, !tbaa !15
  %36 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %22, i64 0, i32 0
  br label %37

; <label>:37:                                     ; preds = %33, %30
  %38 = phi %struct.GCObject** [ %15, %30 ], [ %36, %33 ]
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8, !tbaa !29
  br label %40

; <label>:40:                                     ; preds = %37, %17
  %41 = phi %struct.GCObject** [ %15, %17 ], [ %38, %37 ]
  %42 = phi %struct.GCObject* [ null, %17 ], [ %39, %37 ]
  %43 = icmp eq %struct.GCObject* %42, null
  %44 = select i1 %43, %struct.GCObject** null, %struct.GCObject** %41
  %45 = icmp eq %struct.GCObject** %44, %15
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %40
  %47 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  br label %17

; <label>:48:                                     ; preds = %40
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 21
  store %struct.GCObject** %44, %struct.GCObject*** %49, align 8, !tbaa !35
  %50 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %50, i64 0, i32 11
  %52 = load i8, i8* %51, align 1, !tbaa !11
  br label %53

; <label>:53:                                     ; preds = %48, %10
  %54 = phi i8* [ %51, %48 ], [ %11, %10 ]
  %55 = phi i8 [ %52, %48 ], [ %12, %10 ]
  %56 = icmp eq i8 %55, 8
  br i1 %56, label %67, label %57

; <label>:57:                                     ; preds = %53
  br label %58

; <label>:58:                                     ; preds = %57, %58
  %59 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %60 = load i8, i8* %54, align 1, !tbaa !11
  %61 = icmp eq i8 %60, 8
  br i1 %61, label %62, label %58

; <label>:62:                                     ; preds = %58
  %63 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %64 = getelementptr inbounds %struct.global_State, %struct.global_State* %63, i64 0, i32 11
  %65 = load i8, i8* %64, align 1, !tbaa !11
  %66 = icmp eq i8 %65, 7
  br i1 %66, label %78, label %67

; <label>:67:                                     ; preds = %62, %53
  %68 = phi i8* [ %64, %62 ], [ %54, %53 ]
  br label %69

; <label>:69:                                     ; preds = %69, %67
  %70 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %71 = load i8, i8* %68, align 1, !tbaa !11
  %72 = icmp eq i8 %71, 7
  br i1 %72, label %73, label %69

; <label>:73:                                     ; preds = %69
  %74 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %75 = getelementptr inbounds %struct.global_State, %struct.global_State* %74, i64 0, i32 11
  %76 = load i8, i8* %75, align 1, !tbaa !11
  %77 = icmp eq i8 %76, 8
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %73, %62
  %79 = phi i8* [ %75, %73 ], [ %64, %62 ]
  br label %80

; <label>:80:                                     ; preds = %80, %78
  %81 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %82 = load i8, i8* %79, align 1, !tbaa !11
  %83 = icmp eq i8 %82, 8
  br i1 %83, label %84, label %80

; <label>:84:                                     ; preds = %80, %73
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 17
  %86 = load i8, i8* %85, align 1, !tbaa !56
  %87 = zext i8 %86 to i64
  %88 = shl nuw nsw i64 %87, 2
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 4
  %90 = load i64, i64* %89, align 8, !tbaa !50
  %91 = udiv i64 %90, 100
  %92 = udiv i64 9223372036854775807, %91
  %93 = icmp ult i64 %88, %92
  %94 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 2
  %95 = load i64, i64* %94, align 8, !tbaa !48
  %96 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3
  %97 = load i64, i64* %96, align 8, !tbaa !49
  %98 = add nsw i64 %97, %95
  %99 = sub nsw i64 0, %88
  %100 = mul i64 %91, %99
  %101 = select i1 %93, i64 %100, i64 -9223372036854775807
  %102 = add i64 %98, %101
  %103 = icmp slt i64 %102, 0
  %104 = select i1 %103, i64 %102, i64 0
  tail call void @luaE_setdebt(%struct.global_State* %4, i64 %104) #6
  br label %107

; <label>:105:                                    ; preds = %2
  %106 = tail call fastcc i64 @fullgen(%struct.lua_State* nonnull %0, %struct.global_State* %4)
  br label %107

; <label>:107:                                    ; preds = %105, %84
  store i8 0, i8* %6, align 2, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @fullgen(%struct.lua_State*, %struct.global_State* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 20
  %4 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 10
  %6 = load i8, i8* %5, align 4, !tbaa !17
  %7 = and i8 %6, 24
  %8 = icmp eq %struct.GCObject* %4, null
  br i1 %8, label %19, label %9

; <label>:9:                                      ; preds = %2
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi %struct.GCObject* [ %17, %10 ], [ %4, %9 ]
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %11, i64 0, i32 2
  %13 = load i8, i8* %12, align 1, !tbaa !15
  %14 = and i8 %13, -64
  %15 = or i8 %14, %7
  store i8 %15, i8* %12, align 1, !tbaa !15
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %11, i64 0, i32 0
  %17 = load %struct.GCObject*, %struct.GCObject** %16, align 8, !tbaa !31
  %18 = icmp eq %struct.GCObject* %17, null
  br i1 %18, label %19, label %10

; <label>:19:                                     ; preds = %10, %2
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 30
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 22
  %22 = bitcast %struct.GCObject** %20 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %22, i8 0, i64 24, i32 8, i1 false) #6
  %23 = load %struct.GCObject*, %struct.GCObject** %21, align 8, !tbaa !39
  %24 = icmp eq %struct.GCObject* %23, null
  br i1 %24, label %35, label %25

; <label>:25:                                     ; preds = %19
  br label %26

; <label>:26:                                     ; preds = %25, %26
  %27 = phi %struct.GCObject* [ %33, %26 ], [ %23, %25 ]
  %28 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %27, i64 0, i32 2
  %29 = load i8, i8* %28, align 1, !tbaa !15
  %30 = and i8 %29, -64
  %31 = or i8 %30, %7
  store i8 %31, i8* %28, align 1, !tbaa !15
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %27, i64 0, i32 0
  %33 = load %struct.GCObject*, %struct.GCObject** %32, align 8, !tbaa !31
  %34 = icmp eq %struct.GCObject* %33, null
  br i1 %34, label %35, label %26

; <label>:35:                                     ; preds = %26, %19
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 28
  %37 = load %struct.GCObject*, %struct.GCObject** %36, align 8, !tbaa !41
  %38 = icmp eq %struct.GCObject* %37, null
  br i1 %38, label %49, label %39

; <label>:39:                                     ; preds = %35
  br label %40

; <label>:40:                                     ; preds = %39, %40
  %41 = phi %struct.GCObject* [ %47, %40 ], [ %37, %39 ]
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %41, i64 0, i32 2
  %43 = load i8, i8* %42, align 1, !tbaa !15
  %44 = and i8 %43, -64
  %45 = or i8 %44, %7
  store i8 %45, i8* %42, align 1, !tbaa !15
  %46 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %41, i64 0, i32 0
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8, !tbaa !31
  %48 = icmp eq %struct.GCObject* %47, null
  br i1 %48, label %49, label %40

; <label>:49:                                     ; preds = %40, %35
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 33
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  %52 = bitcast %struct.GCObject** %50 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %52, i8 0, i64 24, i32 8, i1 false) #6
  store i8 8, i8* %51, align 1, !tbaa !11
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 12
  store i8 0, i8* %53, align 2, !tbaa !40
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 5
  store i64 0, i64* %54, align 8, !tbaa !42
  %55 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %56 = load %struct.global_State*, %struct.global_State** %55, align 8, !tbaa !2
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i64 0, i32 11
  %58 = load i8, i8* %57, align 1, !tbaa !11
  %59 = icmp eq i8 %58, 8
  br i1 %59, label %70, label %60

; <label>:60:                                     ; preds = %49
  br label %61

; <label>:61:                                     ; preds = %60, %61
  %62 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %63 = load i8, i8* %57, align 1, !tbaa !11
  %64 = icmp eq i8 %63, 8
  br i1 %64, label %65, label %61

; <label>:65:                                     ; preds = %61
  %66 = load %struct.global_State*, %struct.global_State** %55, align 8, !tbaa !2
  %67 = getelementptr inbounds %struct.global_State, %struct.global_State* %66, i64 0, i32 11
  %68 = load i8, i8* %67, align 1, !tbaa !11
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

; <label>:70:                                     ; preds = %65, %49
  %71 = phi i8* [ %67, %65 ], [ %57, %49 ]
  br label %72

; <label>:72:                                     ; preds = %72, %70
  %73 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  %74 = load i8, i8* %71, align 1, !tbaa !11
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %72

; <label>:76:                                     ; preds = %72, %65
  %77 = tail call fastcc i64 @atomic(%struct.lua_State* %0) #6
  tail call fastcc void @atomic2gen(%struct.lua_State* %0, %struct.global_State* %1) #6
  ret i64 %77
}

; Function Attrs: nounwind uwtable
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
  tail call void @luaF_freeproto(%struct.lua_State* %0, %struct.Proto* %6) #6
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
  tail call void @luaF_unlinkupval(%struct.UpVal* nonnull %15) #6
  br label %16

; <label>:16:                                     ; preds = %7, %14
  %17 = bitcast %struct.GCObject* %1 to i8*
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %17, i64 40) #6
  br label %65

; <label>:18:                                     ; preds = %2
  %19 = bitcast %struct.GCObject* %1 to i8*
  %20 = bitcast %struct.GCObject* %1 to %struct.LClosure*
  %21 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %20, i64 0, i32 3
  %22 = load i8, i8* %21, align 2, !tbaa !22
  %23 = zext i8 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = add nuw nsw i64 %24, 32
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %19, i64 %25) #6
  br label %65

; <label>:26:                                     ; preds = %2
  %27 = bitcast %struct.GCObject* %1 to i8*
  %28 = bitcast %struct.GCObject* %1 to %struct.CClosure*
  %29 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %28, i64 0, i32 3
  %30 = load i8, i8* %29, align 2, !tbaa !22
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 4
  %33 = add nuw nsw i64 %32, 32
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %27, i64 %33) #6
  br label %65

; <label>:34:                                     ; preds = %2
  %35 = bitcast %struct.GCObject* %1 to %struct.Table*
  tail call void @luaH_free(%struct.lua_State* %0, %struct.Table* %35) #6
  br label %65

; <label>:36:                                     ; preds = %2
  %37 = bitcast %struct.GCObject* %1 to %struct.lua_State*
  tail call void @luaE_freethread(%struct.lua_State* %0, %struct.lua_State* %37) #6
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
  %50 = load i64, i64* %49, align 8, !tbaa !61
  %51 = add i64 %47, %50
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %40, i64 %51) #6
  br label %65

; <label>:52:                                     ; preds = %2
  %53 = bitcast %struct.GCObject* %1 to %struct.TString*
  tail call void @luaS_remove(%struct.lua_State* %0, %struct.TString* %53) #6
  %54 = bitcast %struct.GCObject* %1 to i8*
  %55 = getelementptr inbounds %struct.TString, %struct.TString* %53, i64 0, i32 4
  %56 = load i8, i8* %55, align 1, !tbaa !22
  %57 = zext i8 %56 to i64
  %58 = add nuw nsw i64 %57, 25
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %54, i64 %58) #6
  br label %65

; <label>:59:                                     ; preds = %2
  %60 = bitcast %struct.GCObject* %1 to i8*
  %61 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1
  %62 = bitcast %struct.GCObject* %61 to i64*
  %63 = load i64, i64* %62, align 8, !tbaa !22
  %64 = add i64 %63, 25
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %60, i64 %64) #6
  br label %65

; <label>:65:                                     ; preds = %2, %59, %52, %38, %36, %34, %26, %18, %16, %5
  ret void
}

declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #4

declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #4

declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #4

declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #4

declare hidden void @luaS_remove(%struct.lua_State*, %struct.TString*) local_unnamed_addr #4

declare hidden void @luaF_unlinkupval(%struct.UpVal*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* %13)
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
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %3, %struct.GCObject* %21)
  br label %27

; <label>:27:                                     ; preds = %19, %14, %26
  tail call fastcc void @markmt(%struct.global_State* nonnull %3)
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %29 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %30 = icmp eq %struct.GCObject* %29, null
  br i1 %30, label %38, label %31

; <label>:31:                                     ; preds = %27
  br label %32

; <label>:32:                                     ; preds = %31, %32
  %33 = phi i64 [ %35, %32 ], [ 0, %31 ]
  %34 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
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
  %55 = load %struct.UpVal*, %struct.UpVal** %53, align 8, !tbaa !62
  %56 = icmp eq %struct.UpVal* %55, null
  br i1 %56, label %59, label %57

; <label>:57:                                     ; preds = %54
  %58 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i64 0, i32 14
  br label %94

; <label>:59:                                     ; preds = %54, %44
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i64 0, i32 14
  %61 = bitcast %struct.lua_State** %60 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !63
  %63 = bitcast %struct.lua_State** %47 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !29
  store %struct.lua_State* %45, %struct.lua_State** %60, align 8, !tbaa !63
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
  %72 = load i8, i8* %71, align 1, !tbaa !64
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
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* %84) #6
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
  %107 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
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
  %120 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %121 = add i64 %120, %119
  %122 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %123 = icmp eq %struct.GCObject* %122, null
  br i1 %123, label %124, label %118

; <label>:124:                                    ; preds = %118, %111
  %125 = phi i64 [ 0, %111 ], [ %121, %118 ]
  %126 = add i64 %114, %125
  %127 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 26
  br label %128

; <label>:128:                                    ; preds = %151, %124
  %129 = load %struct.GCObject*, %struct.GCObject** %127, align 8, !tbaa !65
  store %struct.GCObject* null, %struct.GCObject** %127, align 8, !tbaa !65
  %130 = icmp eq %struct.GCObject* %129, null
  br i1 %130, label %153, label %131

; <label>:131:                                    ; preds = %128
  br label %132

; <label>:132:                                    ; preds = %131, %148
  %133 = phi %struct.GCObject* [ %137, %148 ], [ %129, %131 ]
  %134 = phi i32 [ %149, %148 ], [ 0, %131 ]
  %135 = bitcast %struct.GCObject* %133 to %struct.Table*
  %136 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %133, i64 3, i32 0
  %137 = load %struct.GCObject*, %struct.GCObject** %136, align 8, !tbaa !22
  %138 = tail call fastcc i32 @traverseephemeron(%struct.global_State* %3, %struct.Table* %135) #6
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

; <label>:140:                                    ; preds = %132
  %141 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %142 = icmp eq %struct.GCObject* %141, null
  br i1 %142, label %148, label %143

; <label>:143:                                    ; preds = %140
  br label %144

; <label>:144:                                    ; preds = %143, %144
  %145 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %146 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %147 = icmp eq %struct.GCObject* %146, null
  br i1 %147, label %148, label %144

; <label>:148:                                    ; preds = %144, %140, %132
  %149 = phi i32 [ %134, %132 ], [ 1, %140 ], [ 1, %144 ]
  %150 = icmp eq %struct.GCObject* %137, null
  br i1 %150, label %151, label %132

; <label>:151:                                    ; preds = %148
  %152 = icmp eq i32 %149, 0
  br i1 %152, label %153, label %128

; <label>:153:                                    ; preds = %128, %151
  %154 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 25
  %155 = load %struct.GCObject*, %struct.GCObject** %154, align 8, !tbaa !66
  tail call fastcc void @clearbyvalues(%struct.global_State* %3, %struct.GCObject* %155, %struct.GCObject* null)
  %156 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 27
  %157 = load %struct.GCObject*, %struct.GCObject** %156, align 8, !tbaa !67
  tail call fastcc void @clearbyvalues(%struct.global_State* %3, %struct.GCObject* %157, %struct.GCObject* null)
  %158 = load %struct.GCObject*, %struct.GCObject** %154, align 8, !tbaa !66
  %159 = load %struct.GCObject*, %struct.GCObject** %156, align 8, !tbaa !67
  %160 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  br label %161

; <label>:161:                                    ; preds = %161, %153
  %162 = phi %struct.GCObject** [ %160, %153 ], [ %165, %161 ]
  %163 = load %struct.GCObject*, %struct.GCObject** %162, align 8, !tbaa !29
  %164 = icmp eq %struct.GCObject* %163, null
  %165 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %163, i64 0, i32 0
  br i1 %164, label %166, label %161

; <label>:166:                                    ; preds = %161
  %167 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %168 = load %struct.GCObject*, %struct.GCObject** %167, align 8, !tbaa !29
  %169 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 34
  %170 = load %struct.GCObject*, %struct.GCObject** %169, align 8, !tbaa !43
  %171 = icmp eq %struct.GCObject* %168, %170
  br i1 %171, label %204, label %172

; <label>:172:                                    ; preds = %166
  %173 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 33
  %174 = bitcast %struct.GCObject** %173 to i64*
  br label %175

; <label>:175:                                    ; preds = %198, %172
  %176 = phi %struct.GCObject* [ %170, %172 ], [ %199, %198 ]
  %177 = phi %struct.GCObject* [ %168, %172 ], [ %202, %198 ]
  %178 = phi %struct.GCObject** [ %162, %172 ], [ %201, %198 ]
  %179 = phi %struct.GCObject** [ %167, %172 ], [ %200, %198 ]
  %180 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %177, i64 0, i32 2
  %181 = load i8, i8* %180, align 1, !tbaa !15
  %182 = and i8 %181, 24
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %186

; <label>:184:                                    ; preds = %175
  %185 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %177, i64 0, i32 0
  br label %198

; <label>:186:                                    ; preds = %175
  %187 = load %struct.GCObject*, %struct.GCObject** %173, align 8, !tbaa !44
  %188 = icmp eq %struct.GCObject* %177, %187
  %189 = bitcast %struct.GCObject* %177 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !31
  br i1 %188, label %191, label %192

; <label>:191:                                    ; preds = %186
  store i64 %190, i64* %174, align 8, !tbaa !44
  br label %192

; <label>:192:                                    ; preds = %191, %186
  %193 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %177, i64 0, i32 0
  %194 = bitcast %struct.GCObject** %179 to i64*
  store i64 %190, i64* %194, align 8, !tbaa !29
  %195 = bitcast %struct.GCObject** %178 to i64*
  %196 = load i64, i64* %195, align 8, !tbaa !29
  store i64 %196, i64* %189, align 8, !tbaa !31
  store %struct.GCObject* %177, %struct.GCObject** %178, align 8, !tbaa !29
  %197 = load %struct.GCObject*, %struct.GCObject** %169, align 8, !tbaa !43
  br label %198

; <label>:198:                                    ; preds = %192, %184
  %199 = phi %struct.GCObject* [ %197, %192 ], [ %176, %184 ]
  %200 = phi %struct.GCObject** [ %179, %192 ], [ %185, %184 ]
  %201 = phi %struct.GCObject** [ %193, %192 ], [ %178, %184 ]
  %202 = load %struct.GCObject*, %struct.GCObject** %200, align 8, !tbaa !29
  %203 = icmp eq %struct.GCObject* %202, %199
  br i1 %203, label %204, label %175

; <label>:204:                                    ; preds = %198, %166
  %205 = load %struct.GCObject*, %struct.GCObject** %160, align 8, !tbaa !29
  %206 = icmp eq %struct.GCObject* %205, null
  br i1 %206, label %221, label %207

; <label>:207:                                    ; preds = %204
  br label %208

; <label>:208:                                    ; preds = %207, %217
  %209 = phi %struct.GCObject* [ %219, %217 ], [ %205, %207 ]
  %210 = phi i64 [ %211, %217 ], [ 0, %207 ]
  %211 = add i64 %210, 1
  %212 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %209, i64 0, i32 2
  %213 = load i8, i8* %212, align 1, !tbaa !15
  %214 = and i8 %213, 24
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %217, label %216

; <label>:216:                                    ; preds = %208
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* nonnull %209) #6
  br label %217

; <label>:217:                                    ; preds = %216, %208
  %218 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %209, i64 0, i32 0
  %219 = load %struct.GCObject*, %struct.GCObject** %218, align 8, !tbaa !29
  %220 = icmp eq %struct.GCObject* %219, null
  br i1 %220, label %221, label %208

; <label>:221:                                    ; preds = %217, %204
  %222 = phi i64 [ 0, %204 ], [ %211, %217 ]
  %223 = add i64 %126, %222
  %224 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %225 = icmp eq %struct.GCObject* %224, null
  br i1 %225, label %233, label %226

; <label>:226:                                    ; preds = %221
  br label %227

; <label>:227:                                    ; preds = %226, %227
  %228 = phi i64 [ %230, %227 ], [ 0, %226 ]
  %229 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %230 = add i64 %229, %228
  %231 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %232 = icmp eq %struct.GCObject* %231, null
  br i1 %232, label %233, label %227

; <label>:233:                                    ; preds = %227, %221
  %234 = phi i64 [ 0, %221 ], [ %230, %227 ]
  %235 = add i64 %223, %234
  br label %236

; <label>:236:                                    ; preds = %259, %233
  %237 = load %struct.GCObject*, %struct.GCObject** %127, align 8, !tbaa !65
  store %struct.GCObject* null, %struct.GCObject** %127, align 8, !tbaa !65
  %238 = icmp eq %struct.GCObject* %237, null
  br i1 %238, label %263, label %239

; <label>:239:                                    ; preds = %236
  br label %240

; <label>:240:                                    ; preds = %239, %256
  %241 = phi %struct.GCObject* [ %245, %256 ], [ %237, %239 ]
  %242 = phi i32 [ %257, %256 ], [ 0, %239 ]
  %243 = bitcast %struct.GCObject* %241 to %struct.Table*
  %244 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %241, i64 3, i32 0
  %245 = load %struct.GCObject*, %struct.GCObject** %244, align 8, !tbaa !22
  %246 = tail call fastcc i32 @traverseephemeron(%struct.global_State* %3, %struct.Table* %243) #6
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %256, label %248

; <label>:248:                                    ; preds = %240
  %249 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %250 = icmp eq %struct.GCObject* %249, null
  br i1 %250, label %256, label %251

; <label>:251:                                    ; preds = %248
  br label %252

; <label>:252:                                    ; preds = %251, %252
  %253 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  %254 = load %struct.GCObject*, %struct.GCObject** %28, align 8, !tbaa !28
  %255 = icmp eq %struct.GCObject* %254, null
  br i1 %255, label %256, label %252

; <label>:256:                                    ; preds = %252, %248, %240
  %257 = phi i32 [ %242, %240 ], [ 1, %248 ], [ 1, %252 ]
  %258 = icmp eq %struct.GCObject* %245, null
  br i1 %258, label %259, label %240

; <label>:259:                                    ; preds = %256
  %260 = icmp eq i32 %257, 0
  br i1 %260, label %261, label %236

; <label>:261:                                    ; preds = %259
  %262 = load %struct.GCObject*, %struct.GCObject** %127, align 8, !tbaa !65
  br label %263

; <label>:263:                                    ; preds = %236, %261
  %264 = phi %struct.GCObject* [ %262, %261 ], [ null, %236 ]
  tail call fastcc void @clearbykeys(%struct.global_State* nonnull %3, %struct.GCObject* %264)
  %265 = load %struct.GCObject*, %struct.GCObject** %156, align 8, !tbaa !67
  tail call fastcc void @clearbykeys(%struct.global_State* nonnull %3, %struct.GCObject* %265)
  %266 = load %struct.GCObject*, %struct.GCObject** %154, align 8, !tbaa !66
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %266, %struct.GCObject* %158)
  %267 = load %struct.GCObject*, %struct.GCObject** %156, align 8, !tbaa !67
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %267, %struct.GCObject* %159)
  tail call void @luaS_clearcache(%struct.global_State* nonnull %3) #6
  %268 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %269 = load i8, i8* %268, align 4, !tbaa !17
  %270 = xor i8 %269, 24
  store i8 %270, i8* %268, align 4, !tbaa !17
  ret i64 %235
}

; Function Attrs: nounwind uwtable
define internal fastcc void @atomic2gen(%struct.lua_State*, %struct.global_State* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 20
  %4 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !29
  %5 = icmp eq %struct.GCObject* %4, null
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  br label %9

; <label>:7:                                      ; preds = %2
  %8 = ptrtoint %struct.GCObject* %4 to i64
  br label %31

; <label>:9:                                      ; preds = %6, %24
  %10 = phi %struct.GCObject* [ %26, %24 ], [ %4, %6 ]
  %11 = phi %struct.GCObject** [ %25, %24 ], [ %3, %6 ]
  %12 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %10, i64 0, i32 2
  %13 = load i8, i8* %12, align 1, !tbaa !15
  %14 = and i8 %13, 24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %9
  %17 = bitcast %struct.GCObject* %10 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !31
  %19 = bitcast %struct.GCObject** %11 to i64*
  store i64 %18, i64* %19, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %10) #6
  br label %24

; <label>:20:                                     ; preds = %9
  %21 = and i8 %13, -8
  %22 = or i8 %21, 4
  store i8 %22, i8* %12, align 1, !tbaa !15
  %23 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %10, i64 0, i32 0
  br label %24

; <label>:24:                                     ; preds = %20, %16
  %25 = phi %struct.GCObject** [ %11, %16 ], [ %23, %20 ]
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8, !tbaa !29
  %27 = icmp eq %struct.GCObject* %26, null
  br i1 %27, label %28, label %9

; <label>:28:                                     ; preds = %24
  %29 = bitcast %struct.GCObject** %3 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !32
  br label %31

; <label>:31:                                     ; preds = %7, %28
  %32 = phi i64 [ %30, %28 ], [ %8, %7 ]
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 30
  %34 = bitcast %struct.GCObject** %33 to i64*
  store i64 %32, i64* %34, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 31
  %36 = bitcast %struct.GCObject** %35 to i64*
  store i64 %32, i64* %36, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 32
  %38 = bitcast %struct.GCObject** %37 to i64*
  store i64 %32, i64* %38, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 22
  %40 = load %struct.GCObject*, %struct.GCObject** %39, align 8, !tbaa !29
  %41 = icmp eq %struct.GCObject* %40, null
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %31
  br label %45

; <label>:43:                                     ; preds = %31
  %44 = ptrtoint %struct.GCObject* %40 to i64
  br label %67

; <label>:45:                                     ; preds = %42, %60
  %46 = phi %struct.GCObject* [ %62, %60 ], [ %40, %42 ]
  %47 = phi %struct.GCObject** [ %61, %60 ], [ %39, %42 ]
  %48 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %46, i64 0, i32 2
  %49 = load i8, i8* %48, align 1, !tbaa !15
  %50 = and i8 %49, 24
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %45
  %53 = bitcast %struct.GCObject* %46 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !31
  %55 = bitcast %struct.GCObject** %47 to i64*
  store i64 %54, i64* %55, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %46) #6
  br label %60

; <label>:56:                                     ; preds = %45
  %57 = and i8 %49, -8
  %58 = or i8 %57, 4
  store i8 %58, i8* %48, align 1, !tbaa !15
  %59 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %46, i64 0, i32 0
  br label %60

; <label>:60:                                     ; preds = %56, %52
  %61 = phi %struct.GCObject** [ %47, %52 ], [ %59, %56 ]
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8, !tbaa !29
  %63 = icmp eq %struct.GCObject* %62, null
  br i1 %63, label %64, label %45

; <label>:64:                                     ; preds = %60
  %65 = bitcast %struct.GCObject** %39 to i64*
  %66 = load i64, i64* %65, align 8, !tbaa !39
  br label %67

; <label>:67:                                     ; preds = %43, %64
  %68 = phi i64 [ %66, %64 ], [ %44, %43 ]
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 33
  %70 = bitcast %struct.GCObject** %69 to i64*
  store i64 %68, i64* %70, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 34
  %72 = bitcast %struct.GCObject** %71 to i64*
  store i64 %68, i64* %72, align 8, !tbaa !43
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 35
  %74 = bitcast %struct.GCObject** %73 to i64*
  store i64 %68, i64* %74, align 8, !tbaa !58
  %75 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 28
  %76 = load %struct.GCObject*, %struct.GCObject** %75, align 8, !tbaa !29
  %77 = icmp eq %struct.GCObject* %76, null
  br i1 %77, label %98, label %78

; <label>:78:                                     ; preds = %67
  br label %79

; <label>:79:                                     ; preds = %78, %94
  %80 = phi %struct.GCObject* [ %96, %94 ], [ %76, %78 ]
  %81 = phi %struct.GCObject** [ %95, %94 ], [ %75, %78 ]
  %82 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %80, i64 0, i32 2
  %83 = load i8, i8* %82, align 1, !tbaa !15
  %84 = and i8 %83, 24
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

; <label>:86:                                     ; preds = %79
  %87 = bitcast %struct.GCObject* %80 to i64*
  %88 = load i64, i64* %87, align 8, !tbaa !31
  %89 = bitcast %struct.GCObject** %81 to i64*
  store i64 %88, i64* %89, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %80) #6
  br label %94

; <label>:90:                                     ; preds = %79
  %91 = and i8 %83, -8
  %92 = or i8 %91, 4
  store i8 %92, i8* %82, align 1, !tbaa !15
  %93 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %80, i64 0, i32 0
  br label %94

; <label>:94:                                     ; preds = %90, %86
  %95 = phi %struct.GCObject** [ %81, %86 ], [ %93, %90 ]
  %96 = load %struct.GCObject*, %struct.GCObject** %95, align 8, !tbaa !29
  %97 = icmp eq %struct.GCObject* %96, null
  br i1 %97, label %98, label %79

; <label>:98:                                     ; preds = %94, %67
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 12
  store i8 1, i8* %99, align 2, !tbaa !40
  %100 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 5
  store i64 0, i64* %100, align 8, !tbaa !42
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 2
  %102 = load i64, i64* %101, align 8, !tbaa !48
  %103 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %104 = load i64, i64* %103, align 8, !tbaa !49
  %105 = add nsw i64 %104, %102
  %106 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  store i64 %105, i64* %106, align 8, !tbaa !50
  tail call fastcc void @finishgencycle(%struct.lua_State* %0, %struct.global_State* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @markmt(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 0
  %3 = load %struct.Table*, %struct.Table** %2, align 8, !tbaa !29
  %4 = icmp eq %struct.Table* %3, null
  br i1 %4, label %12, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.Table, %struct.Table* %3, i64 0, i32 2
  %7 = load i8, i8* %6, align 1, !tbaa !26
  %8 = and i8 %7, 24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %5
  %11 = bitcast %struct.Table* %3 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %11)
  br label %12

; <label>:12:                                     ; preds = %5, %1, %10
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 1
  %14 = load %struct.Table*, %struct.Table** %13, align 8, !tbaa !29
  %15 = icmp eq %struct.Table* %14, null
  br i1 %15, label %23, label %16

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 2
  %18 = load i8, i8* %17, align 1, !tbaa !26
  %19 = and i8 %18, 24
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %16
  %22 = bitcast %struct.Table* %14 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %22)
  br label %23

; <label>:23:                                     ; preds = %21, %16, %12
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 2
  %25 = load %struct.Table*, %struct.Table** %24, align 8, !tbaa !29
  %26 = icmp eq %struct.Table* %25, null
  br i1 %26, label %34, label %27

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.Table, %struct.Table* %25, i64 0, i32 2
  %29 = load i8, i8* %28, align 1, !tbaa !26
  %30 = and i8 %29, 24
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.Table* %25 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %33)
  br label %34

; <label>:34:                                     ; preds = %32, %27, %23
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 3
  %36 = load %struct.Table*, %struct.Table** %35, align 8, !tbaa !29
  %37 = icmp eq %struct.Table* %36, null
  br i1 %37, label %45, label %38

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.Table, %struct.Table* %36, i64 0, i32 2
  %40 = load i8, i8* %39, align 1, !tbaa !26
  %41 = and i8 %40, 24
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

; <label>:43:                                     ; preds = %38
  %44 = bitcast %struct.Table* %36 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %44)
  br label %45

; <label>:45:                                     ; preds = %43, %38, %34
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 4
  %47 = load %struct.Table*, %struct.Table** %46, align 8, !tbaa !29
  %48 = icmp eq %struct.Table* %47, null
  br i1 %48, label %56, label %49

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.Table, %struct.Table* %47, i64 0, i32 2
  %51 = load i8, i8* %50, align 1, !tbaa !26
  %52 = and i8 %51, 24
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %49
  %55 = bitcast %struct.Table* %47 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %55)
  br label %56

; <label>:56:                                     ; preds = %54, %49, %45
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 5
  %58 = load %struct.Table*, %struct.Table** %57, align 8, !tbaa !29
  %59 = icmp eq %struct.Table* %58, null
  br i1 %59, label %67, label %60

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.Table, %struct.Table* %58, i64 0, i32 2
  %62 = load i8, i8* %61, align 1, !tbaa !26
  %63 = and i8 %62, 24
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65

; <label>:65:                                     ; preds = %60
  %66 = bitcast %struct.Table* %58 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %66)
  br label %67

; <label>:67:                                     ; preds = %65, %60, %56
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 6
  %69 = load %struct.Table*, %struct.Table** %68, align 8, !tbaa !29
  %70 = icmp eq %struct.Table* %69, null
  br i1 %70, label %78, label %71

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %69, i64 0, i32 2
  %73 = load i8, i8* %72, align 1, !tbaa !26
  %74 = and i8 %73, 24
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

; <label>:76:                                     ; preds = %71
  %77 = bitcast %struct.Table* %69 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %77)
  br label %78

; <label>:78:                                     ; preds = %76, %71, %67
  %79 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 7
  %80 = load %struct.Table*, %struct.Table** %79, align 8, !tbaa !29
  %81 = icmp eq %struct.Table* %80, null
  br i1 %81, label %89, label %82

; <label>:82:                                     ; preds = %78
  %83 = getelementptr inbounds %struct.Table, %struct.Table* %80, i64 0, i32 2
  %84 = load i8, i8* %83, align 1, !tbaa !26
  %85 = and i8 %84, 24
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87

; <label>:87:                                     ; preds = %82
  %88 = bitcast %struct.Table* %80 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %88)
  br label %89

; <label>:89:                                     ; preds = %87, %82, %78
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 8
  %91 = load %struct.Table*, %struct.Table** %90, align 8, !tbaa !29
  %92 = icmp eq %struct.Table* %91, null
  br i1 %92, label %100, label %93

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.Table, %struct.Table* %91, i64 0, i32 2
  %95 = load i8, i8* %94, align 1, !tbaa !26
  %96 = and i8 %95, 24
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

; <label>:98:                                     ; preds = %93
  %99 = bitcast %struct.Table* %91 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %99)
  br label %100

; <label>:100:                                    ; preds = %98, %93, %89
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clearbyvalues(%struct.global_State*, %struct.GCObject*, %struct.GCObject* readnone) unnamed_addr #0 {
  %4 = icmp eq %struct.GCObject* %1, %2
  br i1 %4, label %103, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %99
  %7 = phi %struct.GCObject* [ %101, %99 ], [ %1, %5 ]
  %8 = bitcast %struct.GCObject* %7 to %struct.Table*
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1, i32 1
  %10 = bitcast i8* %9 to %union.Node**
  %11 = load %union.Node*, %union.Node** %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %8, i64 0, i32 4
  %13 = load i8, i8* %12, align 1, !tbaa !69
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %union.Node, %union.Node* %11, i64 %16
  %18 = tail call i32 @luaH_realasize(%struct.Table* %8) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %51, label %20

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1
  %22 = bitcast %struct.GCObject* %21 to %struct.TValue**
  %23 = zext i32 %18 to i64
  br label %24

; <label>:24:                                     ; preds = %48, %20
  %25 = phi i64 [ 0, %20 ], [ %49, %48 ]
  %26 = load %struct.TValue*, %struct.TValue** %22, align 8, !tbaa !70
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i64 %25, i32 1
  %28 = load i8, i8* %27, align 8, !tbaa !21
  %29 = and i8 %28, 64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %48, label %31

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds %struct.TValue, %struct.TValue* %26, i64 %25, i32 0, i32 0
  %33 = load %struct.GCObject*, %struct.GCObject** %32, align 8, !tbaa !22
  %34 = icmp eq %struct.GCObject* %33, null
  br i1 %34, label %48, label %35

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %33, i64 0, i32 1
  %37 = load i8, i8* %36, align 8, !tbaa !18
  %38 = and i8 %37, 15
  %39 = icmp eq i8 %38, 4
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %33, i64 0, i32 2
  %41 = load i8, i8* %40, align 1, !tbaa !15
  %42 = and i8 %41, 24
  %43 = icmp eq i8 %42, 0
  br i1 %39, label %44, label %46

; <label>:44:                                     ; preds = %35
  br i1 %43, label %48, label %45

; <label>:45:                                     ; preds = %44
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %33) #6
  br label %48

; <label>:46:                                     ; preds = %35
  br i1 %43, label %48, label %47

; <label>:47:                                     ; preds = %46
  store i8 16, i8* %27, align 8, !tbaa !21
  br label %48

; <label>:48:                                     ; preds = %24, %45, %44, %31, %46, %47
  %49 = add nuw nsw i64 %25, 1
  %50 = icmp eq i64 %49, %23
  br i1 %50, label %51, label %24

; <label>:51:                                     ; preds = %48, %6
  %52 = load %union.Node*, %union.Node** %10, align 8, !tbaa !68
  %53 = icmp ult %union.Node* %52, %17
  br i1 %53, label %54, label %99

; <label>:54:                                     ; preds = %51
  br label %55

; <label>:55:                                     ; preds = %54, %96
  %56 = phi %union.Node* [ %97, %96 ], [ %52, %54 ]
  %57 = getelementptr inbounds %union.Node, %union.Node* %56, i64 0, i32 0, i32 1
  %58 = load i8, i8* %57, align 8, !tbaa !22
  %59 = and i8 %58, 64
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %79, label %61

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %union.Node, %union.Node* %56, i64 0, i32 0, i32 0, i32 0
  %63 = load %struct.GCObject*, %struct.GCObject** %62, align 8, !tbaa !22
  %64 = icmp eq %struct.GCObject* %63, null
  br i1 %64, label %79, label %65

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %63, i64 0, i32 1
  %67 = load i8, i8* %66, align 8, !tbaa !18
  %68 = and i8 %67, 15
  %69 = icmp eq i8 %68, 4
  %70 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %63, i64 0, i32 2
  %71 = load i8, i8* %70, align 1, !tbaa !15
  %72 = and i8 %71, 24
  %73 = icmp eq i8 %72, 0
  br i1 %69, label %74, label %77

; <label>:74:                                     ; preds = %65
  br i1 %73, label %79, label %75

; <label>:75:                                     ; preds = %74
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %63) #6
  %76 = load i8, i8* %57, align 8, !tbaa !22
  br label %79

; <label>:77:                                     ; preds = %65
  br i1 %73, label %79, label %78

; <label>:78:                                     ; preds = %77
  store i8 16, i8* %57, align 8, !tbaa !22
  br label %83

; <label>:79:                                     ; preds = %55, %75, %74, %61, %77
  %80 = phi i8 [ %58, %55 ], [ %76, %75 ], [ %58, %74 ], [ %58, %61 ], [ %58, %77 ]
  %81 = and i8 %80, 15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %96

; <label>:83:                                     ; preds = %78, %79
  %84 = getelementptr inbounds %union.Node, %union.Node* %56, i64 0, i32 0, i32 2
  %85 = load i8, i8* %84, align 1, !tbaa !22
  %86 = and i8 %85, 64
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %96, label %88

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %union.Node, %union.Node* %56, i64 0, i32 0, i32 4, i32 0
  %90 = load %struct.GCObject*, %struct.GCObject** %89, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %90, i64 0, i32 2
  %92 = load i8, i8* %91, align 1, !tbaa !15
  %93 = and i8 %92, 24
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

; <label>:95:                                     ; preds = %88
  store i8 5, i8* %84, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %89, align 8, !tbaa !22
  br label %96

; <label>:96:                                     ; preds = %95, %88, %83, %79
  %97 = getelementptr inbounds %union.Node, %union.Node* %56, i64 1
  %98 = icmp ult %union.Node* %97, %17
  br i1 %98, label %55, label %99

; <label>:99:                                     ; preds = %96, %51
  %100 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 3, i32 0
  %101 = load %struct.GCObject*, %struct.GCObject** %100, align 8, !tbaa !22
  %102 = icmp eq %struct.GCObject* %101, %2
  br i1 %102, label %103, label %6

; <label>:103:                                    ; preds = %99, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clearbykeys(%struct.global_State*, %struct.GCObject* readonly) unnamed_addr #0 {
  %3 = icmp eq %struct.GCObject* %1, null
  br i1 %3, label %67, label %4

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %63
  %6 = phi %struct.GCObject* [ %65, %63 ], [ %1, %4 ]
  %7 = bitcast %struct.GCObject* %6 to %struct.Table*
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 1, i32 1
  %9 = bitcast i8* %8 to %union.Node**
  %10 = load %union.Node*, %union.Node** %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %7, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !69
  %13 = zext i8 %12 to i32
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.Node, %union.Node* %10, i64 %15
  %17 = icmp eq i8 %12, 31
  br i1 %17, label %63, label %18

; <label>:18:                                     ; preds = %5
  br label %19

; <label>:19:                                     ; preds = %18, %60
  %20 = phi %union.Node* [ %61, %60 ], [ %10, %18 ]
  %21 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 2
  %22 = load i8, i8* %21, align 1, !tbaa !22
  %23 = and i8 %22, 64
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 4, i32 0
  %27 = load %struct.GCObject*, %struct.GCObject** %26, align 8, !tbaa !22
  %28 = icmp eq %struct.GCObject* %27, null
  br i1 %28, label %43, label %29

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %27, i64 0, i32 1
  %31 = load i8, i8* %30, align 8, !tbaa !18
  %32 = and i8 %31, 15
  %33 = icmp eq i8 %32, 4
  %34 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %27, i64 0, i32 2
  %35 = load i8, i8* %34, align 1, !tbaa !15
  %36 = and i8 %35, 24
  %37 = icmp eq i8 %36, 0
  br i1 %33, label %38, label %40

; <label>:38:                                     ; preds = %29
  br i1 %37, label %43, label %39

; <label>:39:                                     ; preds = %38
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %27) #6
  br label %43

; <label>:40:                                     ; preds = %29
  br i1 %37, label %43, label %41

; <label>:41:                                     ; preds = %40
  %42 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 1
  store i8 16, i8* %42, align 8, !tbaa !22
  br label %43

; <label>:43:                                     ; preds = %19, %39, %38, %25, %40, %41
  %44 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 1
  %45 = load i8, i8* %44, align 8, !tbaa !22
  %46 = and i8 %45, 15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %60

; <label>:48:                                     ; preds = %43
  %49 = load i8, i8* %21, align 1, !tbaa !22
  %50 = and i8 %49, 64
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 4, i32 0
  %54 = load %struct.GCObject*, %struct.GCObject** %53, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %54, i64 0, i32 2
  %56 = load i8, i8* %55, align 1, !tbaa !15
  %57 = and i8 %56, 24
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

; <label>:59:                                     ; preds = %52
  store i8 5, i8* %21, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %53, align 8, !tbaa !22
  br label %60

; <label>:60:                                     ; preds = %59, %52, %48, %43
  %61 = getelementptr inbounds %union.Node, %union.Node* %20, i64 1
  %62 = icmp ult %union.Node* %61, %16
  br i1 %62, label %19, label %63

; <label>:63:                                     ; preds = %60, %5
  %64 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 3, i32 0
  %65 = load %struct.GCObject*, %struct.GCObject** %64, align 8, !tbaa !22
  %66 = icmp eq %struct.GCObject* %65, null
  br i1 %66, label %67, label %5

; <label>:67:                                     ; preds = %63, %2
  ret void
}

declare hidden void @luaS_clearcache(%struct.global_State*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @propagatemark(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 0, i32 2
  %5 = load i8, i8* %4, align 1, !tbaa !15
  %6 = or i8 %5, 32
  store i8 %6, i8* %4, align 1, !tbaa !15
  %7 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* %3)
  %8 = bitcast %struct.GCObject** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !29
  %10 = bitcast %struct.GCObject** %2 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !28
  %11 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 0, i32 1
  %12 = load i8, i8* %11, align 8, !tbaa !18
  switch i8 %12, label %666 [
    i8 5, label %13
    i8 7, label %270
    i8 22, label %325
    i8 54, label %366
    i8 10, label %397
    i8 8, label %535
  ]

; <label>:13:                                     ; preds = %1
  %14 = bitcast %struct.GCObject* %3 to %struct.Table*
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2, i32 1
  %16 = bitcast i8* %15 to %struct.Table**
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !71
  %18 = icmp eq %struct.Table* %17, null
  br i1 %18, label %159, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 3
  %21 = load i8, i8* %20, align 2, !tbaa !34
  %22 = and i8 %21, 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 40, i64 3
  %26 = load %struct.TString*, %struct.TString** %25, align 8, !tbaa !29
  %27 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %17, i32 3, %struct.TString* %26) #6
  %28 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !71
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
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %38) #6
  br label %39

; <label>:39:                                     ; preds = %37, %30, %24
  %40 = phi %struct.TValue* [ %31, %30 ], [ %27, %24 ], [ %31, %37 ]
  %41 = icmp eq %struct.TValue* %40, null
  br i1 %41, label %159, label %42

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 0, i32 1
  %44 = load i8, i8* %43, align 8, !tbaa !21
  %45 = and i8 %44, 15
  %46 = icmp eq i8 %45, 4
  br i1 %46, label %47, label %159

; <label>:47:                                     ; preds = %42
  %48 = bitcast %struct.TValue* %40 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds i8, i8* %49, i64 24
  %51 = tail call i8* @strchr(i8* nonnull %50, i32 107) #7
  %52 = tail call i8* @strchr(i8* nonnull %50, i32 118) #7
  %53 = icmp ne i8* %51, null
  %54 = icmp ne i8* %52, null
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %159

; <label>:56:                                     ; preds = %47
  %57 = load i8, i8* %4, align 1, !tbaa !26
  %58 = and i8 %57, -33
  store i8 %58, i8* %4, align 1, !tbaa !26
  br i1 %53, label %150, label %59

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %61 = bitcast i8* %60 to %union.Node**
  %62 = load %union.Node*, %union.Node** %61, align 8, !tbaa !68
  %63 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %64 = load i8, i8* %63, align 1, !tbaa !69
  %65 = zext i8 %64 to i32
  %66 = shl i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %union.Node, %union.Node* %62, i64 %67
  %69 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 5
  %70 = load i32, i32* %69, align 4, !tbaa !72
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = icmp eq i8 %64, 31
  br i1 %73, label %131, label %74

; <label>:74:                                     ; preds = %59
  br label %75

; <label>:75:                                     ; preds = %74, %127
  %76 = phi i32 [ %128, %127 ], [ %72, %74 ]
  %77 = phi %union.Node* [ %129, %127 ], [ %62, %74 ]
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
  br i1 %85, label %127, label %87

; <label>:87:                                     ; preds = %86
  %88 = getelementptr inbounds %union.Node, %union.Node* %77, i64 0, i32 0, i32 4, i32 0
  %89 = load %struct.GCObject*, %struct.GCObject** %88, align 8, !tbaa !22
  %90 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %89, i64 0, i32 2
  %91 = load i8, i8* %90, align 1, !tbaa !15
  %92 = and i8 %91, 24
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %127, label %94

; <label>:94:                                     ; preds = %87
  store i8 5, i8* %82, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %88, align 8, !tbaa !22
  br label %127

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
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %98) #6
  br label %104

; <label>:104:                                    ; preds = %103, %96, %95
  %105 = icmp eq i32 %76, 0
  br i1 %105, label %106, label %127

; <label>:106:                                    ; preds = %104
  %107 = load i8, i8* %78, align 8, !tbaa !22
  %108 = and i8 %107, 64
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %126, label %110

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds %union.Node, %union.Node* %77, i64 0, i32 0, i32 0, i32 0
  %112 = load %struct.GCObject*, %struct.GCObject** %111, align 8, !tbaa !22
  %113 = icmp eq %struct.GCObject* %112, null
  br i1 %113, label %126, label %114

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %112, i64 0, i32 1
  %116 = load i8, i8* %115, align 8, !tbaa !18
  %117 = and i8 %116, 15
  %118 = icmp eq i8 %117, 4
  %119 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %112, i64 0, i32 2
  %120 = load i8, i8* %119, align 1, !tbaa !15
  %121 = and i8 %120, 24
  %122 = icmp eq i8 %121, 0
  br i1 %118, label %123, label %125

; <label>:123:                                    ; preds = %114
  br i1 %122, label %126, label %124

; <label>:124:                                    ; preds = %123
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %112) #6
  br label %126

; <label>:125:                                    ; preds = %114
  br i1 %122, label %126, label %127

; <label>:126:                                    ; preds = %125, %124, %123, %110, %106
  br label %127

; <label>:127:                                    ; preds = %126, %125, %104, %94, %87, %86
  %128 = phi i32 [ %76, %104 ], [ %76, %86 ], [ %76, %87 ], [ %76, %94 ], [ 0, %126 ], [ 1, %125 ]
  %129 = getelementptr inbounds %union.Node, %union.Node* %77, i64 1
  %130 = icmp ult %union.Node* %129, %68
  br i1 %130, label %75, label %131

; <label>:131:                                    ; preds = %127, %59
  %132 = phi i32 [ %72, %59 ], [ %128, %127 ]
  %133 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %134 = load i8, i8* %133, align 1, !tbaa !11
  %135 = icmp eq i8 %134, 2
  %136 = icmp ne i32 %132, 0
  %137 = and i1 %136, %135
  br i1 %137, label %138, label %144

; <label>:138:                                    ; preds = %131
  %139 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 25
  %140 = bitcast %struct.GCObject** %139 to i64*
  %141 = load i64, i64* %140, align 8, !tbaa !66
  %142 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %143 = bitcast %struct.GCObject** %142 to i64*
  store i64 %141, i64* %143, align 8, !tbaa !73
  store %struct.GCObject* %3, %struct.GCObject** %139, align 8, !tbaa !66
  br label %253

; <label>:144:                                    ; preds = %131
  %145 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %146 = bitcast %struct.GCObject** %145 to i64*
  %147 = load i64, i64* %146, align 8, !tbaa !30
  %148 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %149 = bitcast %struct.GCObject** %148 to i64*
  store i64 %147, i64* %149, align 8, !tbaa !73
  store %struct.GCObject* %3, %struct.GCObject** %145, align 8, !tbaa !30
  br label %253

; <label>:150:                                    ; preds = %56
  br i1 %54, label %153, label %151

; <label>:151:                                    ; preds = %150
  %152 = tail call fastcc i32 @traverseephemeron(%struct.global_State* nonnull %0, %struct.Table* nonnull %14) #6
  br label %253

; <label>:153:                                    ; preds = %150
  %154 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %155 = bitcast %struct.GCObject** %154 to i64*
  %156 = load i64, i64* %155, align 8, !tbaa !67
  %157 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %158 = bitcast %struct.GCObject** %157 to i64*
  store i64 %156, i64* %158, align 8, !tbaa !73
  store %struct.GCObject* %3, %struct.GCObject** %154, align 8, !tbaa !67
  br label %253

; <label>:159:                                    ; preds = %47, %42, %39, %13
  %160 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %161 = bitcast i8* %160 to %union.Node**
  %162 = load %union.Node*, %union.Node** %161, align 8, !tbaa !68
  %163 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %164 = load i8, i8* %163, align 1, !tbaa !69
  %165 = zext i8 %164 to i32
  %166 = shl i32 1, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %union.Node, %union.Node* %162, i64 %167
  %169 = tail call i32 @luaH_realasize(%struct.Table* nonnull %14) #6
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %193, label %171

; <label>:171:                                    ; preds = %159
  %172 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %173 = bitcast %struct.GCObject* %172 to %struct.TValue**
  %174 = zext i32 %169 to i64
  br label %175

; <label>:175:                                    ; preds = %190, %171
  %176 = phi i64 [ 0, %171 ], [ %191, %190 ]
  %177 = load %struct.TValue*, %struct.TValue** %173, align 8, !tbaa !70
  %178 = getelementptr inbounds %struct.TValue, %struct.TValue* %177, i64 %176, i32 1
  %179 = load i8, i8* %178, align 8, !tbaa !21
  %180 = and i8 %179, 64
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %190, label %182

; <label>:182:                                    ; preds = %175
  %183 = getelementptr inbounds %struct.TValue, %struct.TValue* %177, i64 %176, i32 0, i32 0
  %184 = load %struct.GCObject*, %struct.GCObject** %183, align 8, !tbaa !22
  %185 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %184, i64 0, i32 2
  %186 = load i8, i8* %185, align 1, !tbaa !15
  %187 = and i8 %186, 24
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %190, label %189

; <label>:189:                                    ; preds = %182
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %184) #6
  br label %190

; <label>:190:                                    ; preds = %189, %182, %175
  %191 = add nuw nsw i64 %176, 1
  %192 = icmp eq i64 %191, %174
  br i1 %192, label %193, label %175

; <label>:193:                                    ; preds = %190, %159
  %194 = load %union.Node*, %union.Node** %161, align 8, !tbaa !68
  %195 = icmp ult %union.Node* %194, %168
  br i1 %195, label %196, label %241

; <label>:196:                                    ; preds = %193
  br label %197

; <label>:197:                                    ; preds = %196, %238
  %198 = phi %union.Node* [ %239, %238 ], [ %194, %196 ]
  %199 = getelementptr inbounds %union.Node, %union.Node* %198, i64 0, i32 0, i32 1
  %200 = load i8, i8* %199, align 8, !tbaa !22
  %201 = and i8 %200, 15
  %202 = icmp eq i8 %201, 0
  %203 = getelementptr inbounds %union.Node, %union.Node* %198, i64 0, i32 0, i32 2
  %204 = load i8, i8* %203, align 1, !tbaa !22
  %205 = and i8 %204, 64
  %206 = icmp eq i8 %205, 0
  br i1 %202, label %207, label %216

; <label>:207:                                    ; preds = %197
  br i1 %206, label %238, label %208

; <label>:208:                                    ; preds = %207
  %209 = getelementptr inbounds %union.Node, %union.Node* %198, i64 0, i32 0, i32 4, i32 0
  %210 = load %struct.GCObject*, %struct.GCObject** %209, align 8, !tbaa !22
  %211 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %210, i64 0, i32 2
  %212 = load i8, i8* %211, align 1, !tbaa !15
  %213 = and i8 %212, 24
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %238, label %215

; <label>:215:                                    ; preds = %208
  store i8 5, i8* %203, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %209, align 8, !tbaa !22
  br label %238

; <label>:216:                                    ; preds = %197
  br i1 %206, label %226, label %217

; <label>:217:                                    ; preds = %216
  %218 = getelementptr inbounds %union.Node, %union.Node* %198, i64 0, i32 0, i32 4, i32 0
  %219 = load %struct.GCObject*, %struct.GCObject** %218, align 8, !tbaa !22
  %220 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %219, i64 0, i32 2
  %221 = load i8, i8* %220, align 1, !tbaa !15
  %222 = and i8 %221, 24
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %226, label %224

; <label>:224:                                    ; preds = %217
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %219) #6
  %225 = load i8, i8* %199, align 8, !tbaa !22
  br label %226

; <label>:226:                                    ; preds = %224, %217, %216
  %227 = phi i8 [ %200, %217 ], [ %200, %216 ], [ %225, %224 ]
  %228 = and i8 %227, 64
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %238, label %230

; <label>:230:                                    ; preds = %226
  %231 = getelementptr inbounds %union.Node, %union.Node* %198, i64 0, i32 0, i32 0, i32 0
  %232 = load %struct.GCObject*, %struct.GCObject** %231, align 8, !tbaa !22
  %233 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %232, i64 0, i32 2
  %234 = load i8, i8* %233, align 1, !tbaa !15
  %235 = and i8 %234, 24
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %238, label %237

; <label>:237:                                    ; preds = %230
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %232) #6
  br label %238

; <label>:238:                                    ; preds = %237, %230, %226, %215, %208, %207
  %239 = getelementptr inbounds %union.Node, %union.Node* %198, i64 1
  %240 = icmp ult %union.Node* %239, %168
  br i1 %240, label %197, label %241

; <label>:241:                                    ; preds = %238, %193
  %242 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %243 = load i8, i8* %242, align 2, !tbaa !40
  %244 = icmp eq i8 %243, 1
  br i1 %244, label %245, label %253

; <label>:245:                                    ; preds = %241
  %246 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %247 = bitcast %struct.GCObject** %246 to i64*
  %248 = load i64, i64* %247, align 8, !tbaa !30
  %249 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %250 = bitcast %struct.GCObject** %249 to i64*
  store i64 %248, i64* %250, align 8, !tbaa !73
  store %struct.GCObject* %3, %struct.GCObject** %246, align 8, !tbaa !30
  %251 = load i8, i8* %4, align 1, !tbaa !26
  %252 = and i8 %251, -33
  store i8 %252, i8* %4, align 1, !tbaa !26
  br label %253

; <label>:253:                                    ; preds = %245, %241, %153, %151, %144, %138
  %254 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 5
  %255 = load i32, i32* %254, align 4, !tbaa !72
  %256 = add i32 %255, 1
  %257 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2
  %258 = bitcast %struct.GCObject* %257 to %union.Node**
  %259 = load %union.Node*, %union.Node** %258, align 8, !tbaa !74
  %260 = icmp eq %union.Node* %259, null
  br i1 %260, label %266, label %261

; <label>:261:                                    ; preds = %253
  %262 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %263 = load i8, i8* %262, align 1, !tbaa !69
  %264 = zext i8 %263 to i32
  %265 = shl i32 2, %264
  br label %266

; <label>:266:                                    ; preds = %253, %261
  %267 = phi i32 [ %265, %261 ], [ 0, %253 ]
  %268 = add i32 %256, %267
  %269 = zext i32 %268 to i64
  br label %666

; <label>:270:                                    ; preds = %1
  %271 = bitcast %struct.GCObject* %3 to %struct.Udata*
  %272 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %273 = bitcast i8* %272 to %struct.Table**
  %274 = load %struct.Table*, %struct.Table** %273, align 8, !tbaa !25
  %275 = icmp eq %struct.Table* %274, null
  br i1 %275, label %283, label %276

; <label>:276:                                    ; preds = %270
  %277 = getelementptr inbounds %struct.Table, %struct.Table* %274, i64 0, i32 2
  %278 = load i8, i8* %277, align 1, !tbaa !26
  %279 = and i8 %278, 24
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %283, label %281

; <label>:281:                                    ; preds = %276
  %282 = bitcast %struct.Table* %274 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %282) #6
  br label %283

; <label>:283:                                    ; preds = %281, %276, %270
  %284 = getelementptr inbounds %struct.Udata, %struct.Udata* %271, i64 0, i32 3
  %285 = load i16, i16* %284, align 2, !tbaa !23
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %309, label %287

; <label>:287:                                    ; preds = %283
  br label %288

; <label>:288:                                    ; preds = %287, %304
  %289 = phi i16 [ %305, %304 ], [ %285, %287 ]
  %290 = phi i64 [ %306, %304 ], [ 0, %287 ]
  %291 = getelementptr inbounds %struct.Udata, %struct.Udata* %271, i64 0, i32 7, i64 %290, i32 0, i32 1
  %292 = load i8, i8* %291, align 8, !tbaa !22
  %293 = and i8 %292, 64
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %304, label %295

; <label>:295:                                    ; preds = %288
  %296 = getelementptr inbounds %struct.Udata, %struct.Udata* %271, i64 0, i32 7, i64 %290, i32 0, i32 0, i32 0
  %297 = load %struct.GCObject*, %struct.GCObject** %296, align 8, !tbaa !22
  %298 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %297, i64 0, i32 2
  %299 = load i8, i8* %298, align 1, !tbaa !15
  %300 = and i8 %299, 24
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %304, label %302

; <label>:302:                                    ; preds = %295
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %297) #6
  %303 = load i16, i16* %284, align 2, !tbaa !23
  br label %304

; <label>:304:                                    ; preds = %302, %295, %288
  %305 = phi i16 [ %289, %295 ], [ %289, %288 ], [ %303, %302 ]
  %306 = add nuw nsw i64 %290, 1
  %307 = zext i16 %305 to i64
  %308 = icmp ult i64 %306, %307
  br i1 %308, label %288, label %309

; <label>:309:                                    ; preds = %304, %283
  %310 = phi i16 [ 0, %283 ], [ %305, %304 ]
  %311 = zext i16 %310 to i64
  %312 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %313 = load i8, i8* %312, align 2, !tbaa !40
  %314 = icmp eq i8 %313, 1
  br i1 %314, label %315, label %323

; <label>:315:                                    ; preds = %309
  %316 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %317 = bitcast %struct.GCObject** %316 to i64*
  %318 = load i64, i64* %317, align 8, !tbaa !30
  %319 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2, i32 0
  %320 = bitcast %struct.GCObject** %319 to i64*
  store i64 %318, i64* %320, align 8, !tbaa !75
  store %struct.GCObject* %3, %struct.GCObject** %316, align 8, !tbaa !30
  %321 = load i8, i8* %4, align 1, !tbaa !76
  %322 = and i8 %321, -33
  store i8 %322, i8* %4, align 1, !tbaa !76
  br label %323

; <label>:323:                                    ; preds = %309, %315
  %324 = add nuw nsw i64 %311, 1
  br label %666

; <label>:325:                                    ; preds = %1
  %326 = bitcast %struct.GCObject* %3 to %struct.LClosure*
  %327 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %328 = bitcast i8* %327 to %struct.Proto**
  %329 = load %struct.Proto*, %struct.Proto** %328, align 8, !tbaa !77
  %330 = icmp eq %struct.Proto* %329, null
  br i1 %330, label %338, label %331

; <label>:331:                                    ; preds = %325
  %332 = getelementptr inbounds %struct.Proto, %struct.Proto* %329, i64 0, i32 2
  %333 = load i8, i8* %332, align 1, !tbaa !79
  %334 = and i8 %333, 24
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %338, label %336

; <label>:336:                                    ; preds = %331
  %337 = bitcast %struct.Proto* %329 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %337) #6
  br label %338

; <label>:338:                                    ; preds = %336, %331, %325
  %339 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %326, i64 0, i32 3
  %340 = load i8, i8* %339, align 2, !tbaa !81
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %362, label %342

; <label>:342:                                    ; preds = %338
  br label %343

; <label>:343:                                    ; preds = %342, %357
  %344 = phi i8 [ %358, %357 ], [ %340, %342 ]
  %345 = phi i64 [ %359, %357 ], [ 0, %342 ]
  %346 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %326, i64 0, i32 6, i64 %345
  %347 = load %struct.UpVal*, %struct.UpVal** %346, align 8, !tbaa !29
  %348 = icmp eq %struct.UpVal* %347, null
  br i1 %348, label %357, label %349

; <label>:349:                                    ; preds = %343
  %350 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %347, i64 0, i32 2
  %351 = load i8, i8* %350, align 1, !tbaa !64
  %352 = and i8 %351, 24
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %357, label %354

; <label>:354:                                    ; preds = %349
  %355 = bitcast %struct.UpVal* %347 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %355) #6
  %356 = load i8, i8* %339, align 2, !tbaa !81
  br label %357

; <label>:357:                                    ; preds = %354, %349, %343
  %358 = phi i8 [ %344, %349 ], [ %344, %343 ], [ %356, %354 ]
  %359 = add nuw nsw i64 %345, 1
  %360 = zext i8 %358 to i64
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %343, label %362

; <label>:362:                                    ; preds = %357, %338
  %363 = phi i8 [ 0, %338 ], [ %358, %357 ]
  %364 = zext i8 %363 to i64
  %365 = add nuw nsw i64 %364, 1
  br label %666

; <label>:366:                                    ; preds = %1
  %367 = bitcast %struct.GCObject* %3 to %struct.CClosure*
  %368 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %367, i64 0, i32 3
  %369 = load i8, i8* %368, align 2, !tbaa !82
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %393, label %371

; <label>:371:                                    ; preds = %366
  br label %372

; <label>:372:                                    ; preds = %371, %388
  %373 = phi i8 [ %389, %388 ], [ %369, %371 ]
  %374 = phi i64 [ %390, %388 ], [ 0, %371 ]
  %375 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %367, i64 0, i32 6, i64 %374, i32 1
  %376 = load i8, i8* %375, align 8, !tbaa !21
  %377 = and i8 %376, 64
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %388, label %379

; <label>:379:                                    ; preds = %372
  %380 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %367, i64 0, i32 6, i64 %374, i32 0, i32 0
  %381 = load %struct.GCObject*, %struct.GCObject** %380, align 8, !tbaa !22
  %382 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %381, i64 0, i32 2
  %383 = load i8, i8* %382, align 1, !tbaa !15
  %384 = and i8 %383, 24
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %388, label %386

; <label>:386:                                    ; preds = %379
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %381) #6
  %387 = load i8, i8* %368, align 2, !tbaa !82
  br label %388

; <label>:388:                                    ; preds = %386, %379, %372
  %389 = phi i8 [ %373, %379 ], [ %373, %372 ], [ %387, %386 ]
  %390 = add nuw nsw i64 %374, 1
  %391 = zext i8 %389 to i64
  %392 = icmp ult i64 %390, %391
  br i1 %392, label %372, label %393

; <label>:393:                                    ; preds = %388, %366
  %394 = phi i8 [ 0, %366 ], [ %389, %388 ]
  %395 = zext i8 %394 to i64
  %396 = add nuw nsw i64 %395, 1
  br label %666

; <label>:397:                                    ; preds = %1
  %398 = bitcast %struct.GCObject* %3 to %struct.Proto*
  %399 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 7
  %400 = bitcast %struct.GCObject* %399 to %struct.TString**
  %401 = load %struct.TString*, %struct.TString** %400, align 8, !tbaa !84
  %402 = icmp eq %struct.TString* %401, null
  br i1 %402, label %410, label %403

; <label>:403:                                    ; preds = %397
  %404 = getelementptr inbounds %struct.TString, %struct.TString* %401, i64 0, i32 2
  %405 = load i8, i8* %404, align 1, !tbaa !85
  %406 = and i8 %405, 24
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %410, label %408

; <label>:408:                                    ; preds = %403
  %409 = bitcast %struct.TString* %401 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %409) #6
  br label %410

; <label>:410:                                    ; preds = %408, %403, %397
  %411 = getelementptr inbounds %struct.Proto, %struct.Proto* %398, i64 0, i32 7
  %412 = load i32, i32* %411, align 4, !tbaa !87
  %413 = icmp sgt i32 %412, 0
  br i1 %413, label %414, label %439

; <label>:414:                                    ; preds = %410
  %415 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 1
  %416 = bitcast i8* %415 to %struct.TValue**
  br label %417

; <label>:417:                                    ; preds = %434, %414
  %418 = phi i32 [ %412, %414 ], [ %435, %434 ]
  %419 = phi i64 [ 0, %414 ], [ %436, %434 ]
  %420 = load %struct.TValue*, %struct.TValue** %416, align 8, !tbaa !88
  %421 = getelementptr inbounds %struct.TValue, %struct.TValue* %420, i64 %419, i32 1
  %422 = load i8, i8* %421, align 8, !tbaa !21
  %423 = and i8 %422, 64
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %434, label %425

; <label>:425:                                    ; preds = %417
  %426 = getelementptr inbounds %struct.TValue, %struct.TValue* %420, i64 %419, i32 0, i32 0
  %427 = load %struct.GCObject*, %struct.GCObject** %426, align 8, !tbaa !22
  %428 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %427, i64 0, i32 2
  %429 = load i8, i8* %428, align 1, !tbaa !15
  %430 = and i8 %429, 24
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %434, label %432

; <label>:432:                                    ; preds = %425
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %427) #6
  %433 = load i32, i32* %411, align 4, !tbaa !87
  br label %434

; <label>:434:                                    ; preds = %432, %425, %417
  %435 = phi i32 [ %418, %425 ], [ %418, %417 ], [ %433, %432 ]
  %436 = add nuw nsw i64 %419, 1
  %437 = sext i32 %435 to i64
  %438 = icmp slt i64 %436, %437
  br i1 %438, label %417, label %439

; <label>:439:                                    ; preds = %434, %410
  %440 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %441 = bitcast %struct.GCObject* %440 to i32*
  %442 = load i32, i32* %441, align 8, !tbaa !89
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %467

; <label>:444:                                    ; preds = %439
  %445 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 5
  %446 = bitcast %struct.GCObject* %445 to %struct.Upvaldesc**
  br label %447

; <label>:447:                                    ; preds = %462, %444
  %448 = phi i32 [ %442, %444 ], [ %463, %462 ]
  %449 = phi i64 [ 0, %444 ], [ %464, %462 ]
  %450 = load %struct.Upvaldesc*, %struct.Upvaldesc** %446, align 8, !tbaa !90
  %451 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %450, i64 %449, i32 0
  %452 = load %struct.TString*, %struct.TString** %451, align 8, !tbaa !91
  %453 = icmp eq %struct.TString* %452, null
  br i1 %453, label %462, label %454

; <label>:454:                                    ; preds = %447
  %455 = getelementptr inbounds %struct.TString, %struct.TString* %452, i64 0, i32 2
  %456 = load i8, i8* %455, align 1, !tbaa !85
  %457 = and i8 %456, 24
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %462, label %459

; <label>:459:                                    ; preds = %454
  %460 = bitcast %struct.TString* %452 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %460) #6
  %461 = load i32, i32* %441, align 8, !tbaa !89
  br label %462

; <label>:462:                                    ; preds = %459, %454, %447
  %463 = phi i32 [ %448, %454 ], [ %448, %447 ], [ %461, %459 ]
  %464 = add nuw nsw i64 %449, 1
  %465 = sext i32 %463 to i64
  %466 = icmp slt i64 %464, %465
  br i1 %466, label %447, label %467

; <label>:467:                                    ; preds = %462, %439
  %468 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2
  %469 = bitcast %struct.GCObject* %468 to i32*
  %470 = load i32, i32* %469, align 8, !tbaa !93
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %495

; <label>:472:                                    ; preds = %467
  %473 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %474 = bitcast i8* %473 to %struct.Proto***
  br label %475

; <label>:475:                                    ; preds = %490, %472
  %476 = phi i32 [ %470, %472 ], [ %491, %490 ]
  %477 = phi i64 [ 0, %472 ], [ %492, %490 ]
  %478 = load %struct.Proto**, %struct.Proto*** %474, align 8, !tbaa !94
  %479 = getelementptr inbounds %struct.Proto*, %struct.Proto** %478, i64 %477
  %480 = load %struct.Proto*, %struct.Proto** %479, align 8, !tbaa !29
  %481 = icmp eq %struct.Proto* %480, null
  br i1 %481, label %490, label %482

; <label>:482:                                    ; preds = %475
  %483 = getelementptr inbounds %struct.Proto, %struct.Proto* %480, i64 0, i32 2
  %484 = load i8, i8* %483, align 1, !tbaa !79
  %485 = and i8 %484, 24
  %486 = icmp eq i8 %485, 0
  br i1 %486, label %490, label %487

; <label>:487:                                    ; preds = %482
  %488 = bitcast %struct.Proto* %480 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %488) #6
  %489 = load i32, i32* %469, align 8, !tbaa !93
  br label %490

; <label>:490:                                    ; preds = %487, %482, %475
  %491 = phi i32 [ %476, %482 ], [ %476, %475 ], [ %489, %487 ]
  %492 = add nuw nsw i64 %477, 1
  %493 = sext i32 %491 to i64
  %494 = icmp slt i64 %492, %493
  br i1 %494, label %475, label %495

; <label>:495:                                    ; preds = %490, %467
  %496 = phi i32 [ %470, %467 ], [ %491, %490 ]
  %497 = getelementptr inbounds %struct.Proto, %struct.Proto* %398, i64 0, i32 11
  %498 = load i32, i32* %497, align 4, !tbaa !95
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %500, label %525

; <label>:500:                                    ; preds = %495
  %501 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 6, i32 1
  %502 = bitcast i8* %501 to %struct.LocVar**
  br label %503

; <label>:503:                                    ; preds = %518, %500
  %504 = phi i32 [ %498, %500 ], [ %519, %518 ]
  %505 = phi i64 [ 0, %500 ], [ %520, %518 ]
  %506 = load %struct.LocVar*, %struct.LocVar** %502, align 8, !tbaa !96
  %507 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %506, i64 %505, i32 0
  %508 = load %struct.TString*, %struct.TString** %507, align 8, !tbaa !97
  %509 = icmp eq %struct.TString* %508, null
  br i1 %509, label %518, label %510

; <label>:510:                                    ; preds = %503
  %511 = getelementptr inbounds %struct.TString, %struct.TString* %508, i64 0, i32 2
  %512 = load i8, i8* %511, align 1, !tbaa !85
  %513 = and i8 %512, 24
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %518, label %515

; <label>:515:                                    ; preds = %510
  %516 = bitcast %struct.TString* %508 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %516) #6
  %517 = load i32, i32* %497, align 4, !tbaa !95
  br label %518

; <label>:518:                                    ; preds = %515, %510, %503
  %519 = phi i32 [ %504, %510 ], [ %504, %503 ], [ %517, %515 ]
  %520 = add nuw nsw i64 %505, 1
  %521 = sext i32 %519 to i64
  %522 = icmp slt i64 %520, %521
  br i1 %522, label %503, label %523

; <label>:523:                                    ; preds = %518
  %524 = load i32, i32* %469, align 8, !tbaa !93
  br label %525

; <label>:525:                                    ; preds = %495, %523
  %526 = phi i32 [ %496, %495 ], [ %524, %523 ]
  %527 = phi i32 [ %498, %495 ], [ %519, %523 ]
  %528 = load i32, i32* %411, align 4, !tbaa !87
  %529 = load i32, i32* %441, align 8, !tbaa !89
  %530 = add i32 %526, 1
  %531 = add i32 %530, %527
  %532 = add i32 %531, %528
  %533 = add i32 %532, %529
  %534 = sext i32 %533 to i64
  br label %666

; <label>:535:                                    ; preds = %1
  %536 = bitcast %struct.GCObject* %3 to %struct.lua_State*
  %537 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %538 = bitcast %struct.GCObject** %537 to i64*
  %539 = load i64, i64* %538, align 8, !tbaa !30
  %540 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %541 = bitcast i8* %540 to i64*
  store i64 %539, i64* %541, align 8, !tbaa !99
  store %struct.GCObject* %3, %struct.GCObject** %537, align 8, !tbaa !30
  %542 = and i8 %5, -33
  store i8 %542, i8* %4, align 1, !tbaa !15
  %543 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 1
  %544 = bitcast i8* %543 to %union.StackValue**
  %545 = load %union.StackValue*, %union.StackValue** %544, align 8, !tbaa !100
  %546 = icmp eq %union.StackValue* %545, null
  br i1 %546, label %666, label %547

; <label>:547:                                    ; preds = %535
  %548 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %549 = bitcast %struct.GCObject* %548 to %union.StackValue**
  %550 = load %union.StackValue*, %union.StackValue** %549, align 8, !tbaa !101
  %551 = icmp ult %union.StackValue* %545, %550
  br i1 %551, label %552, label %573

; <label>:552:                                    ; preds = %547
  br label %553

; <label>:553:                                    ; preds = %552, %569
  %554 = phi %union.StackValue* [ %570, %569 ], [ %550, %552 ]
  %555 = phi %union.StackValue* [ %571, %569 ], [ %545, %552 ]
  %556 = getelementptr inbounds %union.StackValue, %union.StackValue* %555, i64 0, i32 0, i32 1
  %557 = load i8, i8* %556, align 8, !tbaa !22
  %558 = and i8 %557, 64
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %569, label %560

; <label>:560:                                    ; preds = %553
  %561 = getelementptr inbounds %union.StackValue, %union.StackValue* %555, i64 0, i32 0, i32 0, i32 0
  %562 = load %struct.GCObject*, %struct.GCObject** %561, align 8, !tbaa !22
  %563 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %562, i64 0, i32 2
  %564 = load i8, i8* %563, align 1, !tbaa !15
  %565 = and i8 %564, 24
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %569, label %567

; <label>:567:                                    ; preds = %560
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %562) #6
  %568 = load %union.StackValue*, %union.StackValue** %549, align 8, !tbaa !101
  br label %569

; <label>:569:                                    ; preds = %567, %560, %553
  %570 = phi %union.StackValue* [ %554, %560 ], [ %554, %553 ], [ %568, %567 ]
  %571 = getelementptr inbounds %union.StackValue, %union.StackValue* %555, i64 1
  %572 = icmp ult %union.StackValue* %571, %570
  br i1 %572, label %553, label %573

; <label>:573:                                    ; preds = %569, %547
  %574 = phi %union.StackValue* [ %545, %547 ], [ %571, %569 ]
  %575 = ptrtoint %union.StackValue* %574 to i64
  %576 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4
  %577 = bitcast %struct.GCObject* %576 to %struct.UpVal**
  %578 = load %struct.UpVal*, %struct.UpVal** %577, align 8, !tbaa !22
  %579 = icmp eq %struct.UpVal* %578, null
  br i1 %579, label %597, label %580

; <label>:580:                                    ; preds = %573
  br label %581

; <label>:581:                                    ; preds = %580, %593
  %582 = phi %struct.UpVal* [ %595, %593 ], [ %578, %580 ]
  %583 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %582, i64 0, i32 1
  %584 = load i8, i8* %583, align 8, !tbaa !102
  %585 = icmp eq i8 %584, 25
  br i1 %585, label %586, label %593

; <label>:586:                                    ; preds = %581
  %587 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %582, i64 0, i32 2
  %588 = load i8, i8* %587, align 1, !tbaa !64
  %589 = and i8 %588, 24
  %590 = icmp eq i8 %589, 0
  br i1 %590, label %593, label %591

; <label>:591:                                    ; preds = %586
  %592 = bitcast %struct.UpVal* %582 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %592) #6
  br label %593

; <label>:593:                                    ; preds = %591, %586, %581
  %594 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %582, i64 0, i32 4, i32 0, i32 0
  %595 = load %struct.UpVal*, %struct.UpVal** %594, align 8, !tbaa !22
  %596 = icmp eq %struct.UpVal* %595, null
  br i1 %596, label %597, label %581

; <label>:597:                                    ; preds = %593, %573
  %598 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %599 = load i8, i8* %598, align 1, !tbaa !11
  %600 = icmp eq i8 %599, 2
  br i1 %600, label %601, label %656

; <label>:601:                                    ; preds = %597
  %602 = load %union.StackValue*, %union.StackValue** %544, align 8, !tbaa !100
  %603 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %536, i64 0, i32 20
  %604 = load i32, i32* %603, align 4, !tbaa !103
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds %union.StackValue, %union.StackValue* %602, i64 %605
  %607 = icmp ult %union.StackValue* %574, %606
  br i1 %607, label %608, label %642

; <label>:608:                                    ; preds = %601
  %609 = getelementptr %union.StackValue, %union.StackValue* %602, i64 %605, i32 0, i32 0, i32 0
  %610 = bitcast %struct.GCObject** %609 to i8*
  %611 = xor i64 %575, -1
  %612 = getelementptr i8, i8* %610, i64 %611
  %613 = ptrtoint i8* %612 to i64
  %614 = lshr i64 %613, 4
  %615 = add nuw nsw i64 %614, 1
  %616 = and i64 %615, 7
  %617 = icmp eq i64 %616, 0
  br i1 %617, label %626, label %618

; <label>:618:                                    ; preds = %608
  br label %619

; <label>:619:                                    ; preds = %619, %618
  %620 = phi %union.StackValue* [ %623, %619 ], [ %574, %618 ]
  %621 = phi i64 [ %624, %619 ], [ %616, %618 ]
  %622 = getelementptr inbounds %union.StackValue, %union.StackValue* %620, i64 0, i32 0, i32 1
  store i8 0, i8* %622, align 8, !tbaa !22
  %623 = getelementptr inbounds %union.StackValue, %union.StackValue* %620, i64 1
  %624 = add i64 %621, -1
  %625 = icmp eq i64 %624, 0
  br i1 %625, label %626, label %619, !llvm.loop !104

; <label>:626:                                    ; preds = %619, %608
  %627 = phi %union.StackValue* [ %574, %608 ], [ %623, %619 ]
  %628 = icmp ult i8* %612, inttoptr (i64 112 to i8*)
  br i1 %628, label %642, label %629

; <label>:629:                                    ; preds = %626
  br label %630

; <label>:630:                                    ; preds = %630, %629
  %631 = phi %union.StackValue* [ %627, %629 ], [ %640, %630 ]
  %632 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 0, i32 0, i32 1
  store i8 0, i8* %632, align 8, !tbaa !22
  %633 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 1, i32 0, i32 1
  store i8 0, i8* %633, align 8, !tbaa !22
  %634 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 2, i32 0, i32 1
  store i8 0, i8* %634, align 8, !tbaa !22
  %635 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 3, i32 0, i32 1
  store i8 0, i8* %635, align 8, !tbaa !22
  %636 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 4, i32 0, i32 1
  store i8 0, i8* %636, align 8, !tbaa !22
  %637 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 5, i32 0, i32 1
  store i8 0, i8* %637, align 8, !tbaa !22
  %638 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 6, i32 0, i32 1
  store i8 0, i8* %638, align 8, !tbaa !22
  %639 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 7, i32 0, i32 1
  store i8 0, i8* %639, align 8, !tbaa !22
  %640 = getelementptr inbounds %union.StackValue, %union.StackValue* %631, i64 8
  %641 = icmp ult %union.StackValue* %640, %606
  br i1 %641, label %630, label %642

; <label>:642:                                    ; preds = %626, %630, %601
  %643 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 5
  %644 = bitcast %struct.GCObject* %643 to %struct.lua_State**
  %645 = load %struct.lua_State*, %struct.lua_State** %644, align 8, !tbaa !63
  %646 = icmp eq %struct.lua_State* %645, %536
  br i1 %646, label %647, label %661

; <label>:647:                                    ; preds = %642
  %648 = load %struct.UpVal*, %struct.UpVal** %577, align 8, !tbaa !62
  %649 = icmp eq %struct.UpVal* %648, null
  br i1 %649, label %661, label %650

; <label>:650:                                    ; preds = %647
  %651 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 36
  %652 = bitcast %struct.lua_State** %651 to i64*
  %653 = load i64, i64* %652, align 8, !tbaa !106
  %654 = bitcast %struct.GCObject* %643 to i64*
  store i64 %653, i64* %654, align 8, !tbaa !63
  %655 = bitcast %struct.lua_State** %651 to %struct.GCObject**
  store %struct.GCObject* %3, %struct.GCObject** %655, align 8, !tbaa !106
  br label %661

; <label>:656:                                    ; preds = %597
  %657 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 16
  %658 = load i8, i8* %657, align 2, !tbaa !51
  %659 = icmp eq i8 %658, 0
  br i1 %659, label %660, label %661

; <label>:660:                                    ; preds = %656
  tail call void @luaD_shrinkstack(%struct.lua_State* %536) #6
  br label %661

; <label>:661:                                    ; preds = %660, %656, %650, %647, %642
  %662 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %536, i64 0, i32 20
  %663 = load i32, i32* %662, align 4, !tbaa !103
  %664 = add nsw i32 %663, 1
  %665 = sext i32 %664 to i64
  br label %666

; <label>:666:                                    ; preds = %661, %535, %1, %525, %393, %362, %323, %266
  %667 = phi i64 [ %534, %525 ], [ %396, %393 ], [ %365, %362 ], [ %324, %323 ], [ %269, %266 ], [ 0, %1 ], [ %665, %661 ], [ 1, %535 ]
  ret i64 %667
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @traverseephemeron(%struct.global_State*, %struct.Table*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %6 = load i8, i8* %5, align 1, !tbaa !69
  %7 = zext i8 %6 to i32
  %8 = shl i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %union.Node, %union.Node* %4, i64 %9
  %11 = tail call i32 @luaH_realasize(%struct.Table* %1) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %13

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %15 = zext i32 %11 to i64
  br label %16

; <label>:16:                                     ; preds = %32, %13
  %17 = phi i64 [ 0, %13 ], [ %34, %32 ]
  %18 = phi i32 [ 0, %13 ], [ %33, %32 ]
  %19 = load %struct.TValue*, %struct.TValue** %14, align 8, !tbaa !70
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
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %26)
  br label %32

; <label>:32:                                     ; preds = %24, %16, %31
  %33 = phi i32 [ 1, %31 ], [ %18, %24 ], [ %18, %16 ]
  %34 = add nuw nsw i64 %17, 1
  %35 = icmp eq i64 %34, %15
  br i1 %35, label %36, label %16

; <label>:36:                                     ; preds = %32, %2
  %37 = phi i32 [ 0, %2 ], [ %33, %32 ]
  %38 = load %union.Node*, %union.Node** %3, align 8, !tbaa !68
  %39 = icmp ult %union.Node* %38, %10
  br i1 %39, label %40, label %111

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %40, %105
  %42 = phi i32 [ %108, %105 ], [ %37, %40 ]
  %43 = phi i32 [ %107, %105 ], [ 0, %40 ]
  %44 = phi %union.Node* [ %109, %105 ], [ %38, %40 ]
  %45 = phi i32 [ %106, %105 ], [ 0, %40 ]
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
  br i1 %53, label %105, label %55

; <label>:55:                                     ; preds = %54
  %56 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 4, i32 0
  %57 = load %struct.GCObject*, %struct.GCObject** %56, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %57, i64 0, i32 2
  %59 = load i8, i8* %58, align 1, !tbaa !15
  %60 = and i8 %59, 24
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %105, label %62

; <label>:62:                                     ; preds = %55
  store i8 5, i8* %50, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %56, align 8, !tbaa !22
  br label %105

; <label>:63:                                     ; preds = %41
  br i1 %53, label %80, label %64

; <label>:64:                                     ; preds = %63
  %65 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 4, i32 0
  %66 = load %struct.GCObject*, %struct.GCObject** %65, align 8, !tbaa !22
  %67 = icmp eq %struct.GCObject* %66, null
  br i1 %67, label %80, label %68

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %66, i64 0, i32 1
  %70 = load i8, i8* %69, align 8, !tbaa !18
  %71 = and i8 %70, 15
  %72 = icmp eq i8 %71, 4
  %73 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %66, i64 0, i32 2
  %74 = load i8, i8* %73, align 1, !tbaa !15
  %75 = and i8 %74, 24
  %76 = icmp eq i8 %75, 0
  br i1 %72, label %77, label %84

; <label>:77:                                     ; preds = %68
  br i1 %76, label %80, label %78

; <label>:78:                                     ; preds = %77
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %66) #6
  %79 = load i8, i8* %46, align 8, !tbaa !22
  br label %80

; <label>:80:                                     ; preds = %64, %77, %78, %63
  %81 = phi i8 [ %47, %64 ], [ %47, %77 ], [ %79, %78 ], [ %47, %63 ]
  %82 = and i8 %81, 64
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %105, label %97

; <label>:84:                                     ; preds = %68
  %85 = and i8 %47, 64
  %86 = icmp eq i8 %85, 0
  br i1 %76, label %96, label %87

; <label>:87:                                     ; preds = %84
  br i1 %86, label %105, label %88

; <label>:88:                                     ; preds = %87
  %89 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 0, i32 0
  %90 = load %struct.GCObject*, %struct.GCObject** %89, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %90, i64 0, i32 2
  %92 = load i8, i8* %91, align 1, !tbaa !15
  %93 = and i8 %92, 24
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 %45, i32 1
  br label %105

; <label>:96:                                     ; preds = %84
  br i1 %86, label %105, label %97

; <label>:97:                                     ; preds = %80, %96
  %98 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 0, i32 0
  %99 = load %struct.GCObject*, %struct.GCObject** %98, align 8, !tbaa !22
  %100 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %99, i64 0, i32 2
  %101 = load i8, i8* %100, align 1, !tbaa !15
  %102 = and i8 %101, 24
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

; <label>:104:                                    ; preds = %97
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %99)
  br label %105

; <label>:105:                                    ; preds = %80, %62, %55, %54, %88, %87, %97, %96, %104
  %106 = phi i32 [ %45, %87 ], [ %45, %104 ], [ %45, %97 ], [ %45, %96 ], [ %95, %88 ], [ %45, %54 ], [ %45, %55 ], [ %45, %62 ], [ %45, %80 ]
  %107 = phi i32 [ 1, %87 ], [ %43, %104 ], [ %43, %97 ], [ %43, %96 ], [ 1, %88 ], [ %43, %54 ], [ %43, %55 ], [ %43, %62 ], [ %43, %80 ]
  %108 = phi i32 [ %42, %87 ], [ 1, %104 ], [ %42, %97 ], [ %42, %96 ], [ %42, %88 ], [ %42, %54 ], [ %42, %55 ], [ %42, %62 ], [ %42, %80 ]
  %109 = getelementptr inbounds %union.Node, %union.Node* %44, i64 1
  %110 = icmp ult %union.Node* %109, %10
  br i1 %110, label %41, label %111

; <label>:111:                                    ; preds = %105, %36
  %112 = phi i32 [ 0, %36 ], [ %106, %105 ]
  %113 = phi i32 [ 0, %36 ], [ %107, %105 ]
  %114 = phi i32 [ %37, %36 ], [ %108, %105 ]
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %116 = load i8, i8* %115, align 1, !tbaa !11
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %125

; <label>:118:                                    ; preds = %111
  %119 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %120 = bitcast %struct.GCObject** %119 to i64*
  %121 = load i64, i64* %120, align 8, !tbaa !30
  %122 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %123 = bitcast %struct.GCObject** %122 to i64*
  store i64 %121, i64* %123, align 8, !tbaa !73
  %124 = bitcast %struct.GCObject** %119 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %124, align 8, !tbaa !30
  br label %158

; <label>:125:                                    ; preds = %111
  %126 = icmp eq i32 %112, 0
  br i1 %126, label %134, label %127

; <label>:127:                                    ; preds = %125
  %128 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 26
  %129 = bitcast %struct.GCObject** %128 to i64*
  %130 = load i64, i64* %129, align 8, !tbaa !65
  %131 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %132 = bitcast %struct.GCObject** %131 to i64*
  store i64 %130, i64* %132, align 8, !tbaa !73
  %133 = bitcast %struct.GCObject** %128 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %133, align 8, !tbaa !65
  br label %158

; <label>:134:                                    ; preds = %125
  %135 = icmp eq i32 %113, 0
  br i1 %135, label %143, label %136

; <label>:136:                                    ; preds = %134
  %137 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %138 = bitcast %struct.GCObject** %137 to i64*
  %139 = load i64, i64* %138, align 8, !tbaa !67
  %140 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %141 = bitcast %struct.GCObject** %140 to i64*
  store i64 %139, i64* %141, align 8, !tbaa !73
  %142 = bitcast %struct.GCObject** %137 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %142, align 8, !tbaa !67
  br label %158

; <label>:143:                                    ; preds = %134
  %144 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %145 = load i8, i8* %144, align 2, !tbaa !40
  %146 = icmp eq i8 %145, 1
  br i1 %146, label %147, label %154

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %149 = bitcast %struct.GCObject** %148 to i64*
  %150 = load i64, i64* %149, align 8, !tbaa !30
  %151 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %152 = bitcast %struct.GCObject** %151 to i64*
  store i64 %150, i64* %152, align 8, !tbaa !73
  %153 = bitcast %struct.GCObject** %148 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %153, align 8, !tbaa !30
  br label %158

; <label>:154:                                    ; preds = %143
  %155 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %156 = load i8, i8* %155, align 1, !tbaa !26
  %157 = or i8 %156, 32
  store i8 %157, i8* %155, align 1, !tbaa !26
  br label %158

; <label>:158:                                    ; preds = %127, %147, %154, %136, %118
  ret i32 %114
}

declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #4

declare hidden void @luaD_shrinkstack(%struct.lua_State*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @finishgencycle(%struct.lua_State*, %struct.global_State* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 24
  %4 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !29
  %5 = icmp eq %struct.GCObject* %4, null
  br i1 %5, label %57, label %6

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %53
  %8 = phi %struct.GCObject* [ %54, %53 ], [ %4, %6 ]
  %9 = phi %struct.GCObject** [ %55, %53 ], [ %3, %6 ]
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 0, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !18
  switch i8 %11, label %50 [
    i8 5, label %12
    i8 7, label %12
    i8 8, label %37
  ]

; <label>:12:                                     ; preds = %7, %7
  %13 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %8) #6
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 0, i32 2
  %15 = load i8, i8* %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 7
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %12
  %20 = or i8 %15, 32
  %21 = xor i8 %20, 3
  store i8 %21, i8* %14, align 1, !tbaa !15
  br label %50

; <label>:22:                                     ; preds = %12
  %23 = and i32 %16, 24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %22
  %26 = icmp eq i32 %17, 6
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %25
  %28 = xor i8 %15, 2
  store i8 %28, i8* %14, align 1, !tbaa !15
  br label %29

; <label>:29:                                     ; preds = %27, %25
  %30 = phi i8 [ %28, %27 ], [ %15, %25 ]
  %31 = or i8 %30, 32
  store i8 %31, i8* %14, align 1, !tbaa !15
  br label %32

; <label>:32:                                     ; preds = %29, %22
  %33 = bitcast %struct.GCObject** %13 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !29
  %35 = bitcast %struct.GCObject** %9 to i64*
  store i64 %34, i64* %35, align 8, !tbaa !29
  %36 = inttoptr i64 %34 to %struct.GCObject*
  br label %53

; <label>:37:                                     ; preds = %7
  %38 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 0, i32 2
  %39 = load i8, i8* %38, align 1, !tbaa !46
  %40 = and i8 %39, 24
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 4, i32 1
  br i1 %41, label %48, label %43

; <label>:43:                                     ; preds = %37
  %44 = bitcast i8* %42 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !99
  %46 = bitcast %struct.GCObject** %9 to i64*
  store i64 %45, i64* %46, align 8, !tbaa !29
  %47 = inttoptr i64 %45 to %struct.GCObject*
  br label %53

; <label>:48:                                     ; preds = %37
  %49 = bitcast i8* %42 to %struct.GCObject**
  br label %50

; <label>:50:                                     ; preds = %48, %19, %7
  %51 = phi %struct.GCObject** [ %49, %48 ], [ %13, %19 ], [ %9, %7 ]
  %52 = load %struct.GCObject*, %struct.GCObject** %51, align 8, !tbaa !29
  br label %53

; <label>:53:                                     ; preds = %50, %43, %32
  %54 = phi %struct.GCObject* [ %52, %50 ], [ %47, %43 ], [ %36, %32 ]
  %55 = phi %struct.GCObject** [ %51, %50 ], [ %9, %43 ], [ %9, %32 ]
  %56 = icmp eq %struct.GCObject* %54, null
  br i1 %56, label %57, label %7

; <label>:57:                                     ; preds = %53, %2
  %58 = phi %struct.GCObject** [ %3, %2 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 25
  %60 = bitcast %struct.GCObject** %59 to i64*
  %61 = load i64, i64* %60, align 8, !tbaa !66
  %62 = bitcast %struct.GCObject** %58 to i64*
  store i64 %61, i64* %62, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %59, align 8, !tbaa !66
  %63 = load %struct.GCObject*, %struct.GCObject** %58, align 8, !tbaa !29
  %64 = icmp eq %struct.GCObject* %63, null
  br i1 %64, label %118, label %65

; <label>:65:                                     ; preds = %57
  br label %66

; <label>:66:                                     ; preds = %65, %112
  %67 = phi %struct.GCObject* [ %113, %112 ], [ %63, %65 ]
  %68 = phi %struct.GCObject** [ %114, %112 ], [ %58, %65 ]
  %69 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %67, i64 0, i32 1
  %70 = load i8, i8* %69, align 8, !tbaa !18
  switch i8 %70, label %109 [
    i8 5, label %71
    i8 7, label %71
    i8 8, label %96
  ]

; <label>:71:                                     ; preds = %66, %66
  %72 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %67) #6
  %73 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %67, i64 0, i32 2
  %74 = load i8, i8* %73, align 1, !tbaa !15
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 7
  %77 = icmp eq i32 %76, 5
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %71
  %79 = or i8 %74, 32
  %80 = xor i8 %79, 3
  store i8 %80, i8* %73, align 1, !tbaa !15
  br label %109

; <label>:81:                                     ; preds = %71
  %82 = and i32 %75, 24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

; <label>:84:                                     ; preds = %81
  %85 = icmp eq i32 %76, 6
  br i1 %85, label %86, label %88

; <label>:86:                                     ; preds = %84
  %87 = xor i8 %74, 2
  store i8 %87, i8* %73, align 1, !tbaa !15
  br label %88

; <label>:88:                                     ; preds = %86, %84
  %89 = phi i8 [ %87, %86 ], [ %74, %84 ]
  %90 = or i8 %89, 32
  store i8 %90, i8* %73, align 1, !tbaa !15
  br label %91

; <label>:91:                                     ; preds = %88, %81
  %92 = bitcast %struct.GCObject** %72 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !29
  %94 = bitcast %struct.GCObject** %68 to i64*
  store i64 %93, i64* %94, align 8, !tbaa !29
  %95 = inttoptr i64 %93 to %struct.GCObject*
  br label %112

; <label>:96:                                     ; preds = %66
  %97 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %67, i64 0, i32 2
  %98 = load i8, i8* %97, align 1, !tbaa !46
  %99 = and i8 %98, 24
  %100 = icmp eq i8 %99, 0
  %101 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %67, i64 4, i32 1
  br i1 %100, label %107, label %102

; <label>:102:                                    ; preds = %96
  %103 = bitcast i8* %101 to i64*
  %104 = load i64, i64* %103, align 8, !tbaa !99
  %105 = bitcast %struct.GCObject** %68 to i64*
  store i64 %104, i64* %105, align 8, !tbaa !29
  %106 = inttoptr i64 %104 to %struct.GCObject*
  br label %112

; <label>:107:                                    ; preds = %96
  %108 = bitcast i8* %101 to %struct.GCObject**
  br label %109

; <label>:109:                                    ; preds = %107, %78, %66
  %110 = phi %struct.GCObject** [ %108, %107 ], [ %72, %78 ], [ %68, %66 ]
  %111 = load %struct.GCObject*, %struct.GCObject** %110, align 8, !tbaa !29
  br label %112

; <label>:112:                                    ; preds = %109, %102, %91
  %113 = phi %struct.GCObject* [ %111, %109 ], [ %106, %102 ], [ %95, %91 ]
  %114 = phi %struct.GCObject** [ %110, %109 ], [ %68, %102 ], [ %68, %91 ]
  %115 = icmp eq %struct.GCObject* %113, null
  br i1 %115, label %116, label %66

; <label>:116:                                    ; preds = %112
  %117 = bitcast %struct.GCObject** %114 to i64*
  br label %118

; <label>:118:                                    ; preds = %116, %57
  %119 = phi i64* [ %117, %116 ], [ %62, %57 ]
  %120 = phi %struct.GCObject** [ %114, %116 ], [ %58, %57 ]
  %121 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 27
  %122 = bitcast %struct.GCObject** %121 to i64*
  %123 = load i64, i64* %122, align 8, !tbaa !67
  store i64 %123, i64* %119, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %121, align 8, !tbaa !67
  %124 = load %struct.GCObject*, %struct.GCObject** %120, align 8, !tbaa !29
  %125 = icmp eq %struct.GCObject* %124, null
  br i1 %125, label %179, label %126

; <label>:126:                                    ; preds = %118
  br label %127

; <label>:127:                                    ; preds = %126, %173
  %128 = phi %struct.GCObject* [ %174, %173 ], [ %124, %126 ]
  %129 = phi %struct.GCObject** [ %175, %173 ], [ %120, %126 ]
  %130 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %128, i64 0, i32 1
  %131 = load i8, i8* %130, align 8, !tbaa !18
  switch i8 %131, label %170 [
    i8 5, label %132
    i8 7, label %132
    i8 8, label %157
  ]

; <label>:132:                                    ; preds = %127, %127
  %133 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %128) #6
  %134 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %128, i64 0, i32 2
  %135 = load i8, i8* %134, align 1, !tbaa !15
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, 7
  %138 = icmp eq i32 %137, 5
  br i1 %138, label %139, label %142

; <label>:139:                                    ; preds = %132
  %140 = or i8 %135, 32
  %141 = xor i8 %140, 3
  store i8 %141, i8* %134, align 1, !tbaa !15
  br label %170

; <label>:142:                                    ; preds = %132
  %143 = and i32 %136, 24
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %152

; <label>:145:                                    ; preds = %142
  %146 = icmp eq i32 %137, 6
  br i1 %146, label %147, label %149

; <label>:147:                                    ; preds = %145
  %148 = xor i8 %135, 2
  store i8 %148, i8* %134, align 1, !tbaa !15
  br label %149

; <label>:149:                                    ; preds = %147, %145
  %150 = phi i8 [ %148, %147 ], [ %135, %145 ]
  %151 = or i8 %150, 32
  store i8 %151, i8* %134, align 1, !tbaa !15
  br label %152

; <label>:152:                                    ; preds = %149, %142
  %153 = bitcast %struct.GCObject** %133 to i64*
  %154 = load i64, i64* %153, align 8, !tbaa !29
  %155 = bitcast %struct.GCObject** %129 to i64*
  store i64 %154, i64* %155, align 8, !tbaa !29
  %156 = inttoptr i64 %154 to %struct.GCObject*
  br label %173

; <label>:157:                                    ; preds = %127
  %158 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %128, i64 0, i32 2
  %159 = load i8, i8* %158, align 1, !tbaa !46
  %160 = and i8 %159, 24
  %161 = icmp eq i8 %160, 0
  %162 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %128, i64 4, i32 1
  br i1 %161, label %168, label %163

; <label>:163:                                    ; preds = %157
  %164 = bitcast i8* %162 to i64*
  %165 = load i64, i64* %164, align 8, !tbaa !99
  %166 = bitcast %struct.GCObject** %129 to i64*
  store i64 %165, i64* %166, align 8, !tbaa !29
  %167 = inttoptr i64 %165 to %struct.GCObject*
  br label %173

; <label>:168:                                    ; preds = %157
  %169 = bitcast i8* %162 to %struct.GCObject**
  br label %170

; <label>:170:                                    ; preds = %168, %139, %127
  %171 = phi %struct.GCObject** [ %169, %168 ], [ %133, %139 ], [ %129, %127 ]
  %172 = load %struct.GCObject*, %struct.GCObject** %171, align 8, !tbaa !29
  br label %173

; <label>:173:                                    ; preds = %170, %163, %152
  %174 = phi %struct.GCObject* [ %172, %170 ], [ %167, %163 ], [ %156, %152 ]
  %175 = phi %struct.GCObject** [ %171, %170 ], [ %129, %163 ], [ %129, %152 ]
  %176 = icmp eq %struct.GCObject* %174, null
  br i1 %176, label %177, label %127

; <label>:177:                                    ; preds = %173
  %178 = bitcast %struct.GCObject** %175 to i64*
  br label %179

; <label>:179:                                    ; preds = %177, %118
  %180 = phi i64* [ %178, %177 ], [ %119, %118 ]
  %181 = phi %struct.GCObject** [ %175, %177 ], [ %120, %118 ]
  %182 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 26
  %183 = bitcast %struct.GCObject** %182 to i64*
  %184 = load i64, i64* %183, align 8, !tbaa !65
  store i64 %184, i64* %180, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %182, align 8, !tbaa !65
  %185 = load %struct.GCObject*, %struct.GCObject** %181, align 8, !tbaa !29
  %186 = icmp eq %struct.GCObject* %185, null
  br i1 %186, label %238, label %187

; <label>:187:                                    ; preds = %179
  br label %188

; <label>:188:                                    ; preds = %187, %234
  %189 = phi %struct.GCObject* [ %235, %234 ], [ %185, %187 ]
  %190 = phi %struct.GCObject** [ %236, %234 ], [ %181, %187 ]
  %191 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %189, i64 0, i32 1
  %192 = load i8, i8* %191, align 8, !tbaa !18
  switch i8 %192, label %231 [
    i8 5, label %193
    i8 7, label %193
    i8 8, label %218
  ]

; <label>:193:                                    ; preds = %188, %188
  %194 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %189) #6
  %195 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %189, i64 0, i32 2
  %196 = load i8, i8* %195, align 1, !tbaa !15
  %197 = zext i8 %196 to i32
  %198 = and i32 %197, 7
  %199 = icmp eq i32 %198, 5
  br i1 %199, label %200, label %203

; <label>:200:                                    ; preds = %193
  %201 = or i8 %196, 32
  %202 = xor i8 %201, 3
  store i8 %202, i8* %195, align 1, !tbaa !15
  br label %231

; <label>:203:                                    ; preds = %193
  %204 = and i32 %197, 24
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %213

; <label>:206:                                    ; preds = %203
  %207 = icmp eq i32 %198, 6
  br i1 %207, label %208, label %210

; <label>:208:                                    ; preds = %206
  %209 = xor i8 %196, 2
  store i8 %209, i8* %195, align 1, !tbaa !15
  br label %210

; <label>:210:                                    ; preds = %208, %206
  %211 = phi i8 [ %209, %208 ], [ %196, %206 ]
  %212 = or i8 %211, 32
  store i8 %212, i8* %195, align 1, !tbaa !15
  br label %213

; <label>:213:                                    ; preds = %210, %203
  %214 = bitcast %struct.GCObject** %194 to i64*
  %215 = load i64, i64* %214, align 8, !tbaa !29
  %216 = bitcast %struct.GCObject** %190 to i64*
  store i64 %215, i64* %216, align 8, !tbaa !29
  %217 = inttoptr i64 %215 to %struct.GCObject*
  br label %234

; <label>:218:                                    ; preds = %188
  %219 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %189, i64 0, i32 2
  %220 = load i8, i8* %219, align 1, !tbaa !46
  %221 = and i8 %220, 24
  %222 = icmp eq i8 %221, 0
  %223 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %189, i64 4, i32 1
  br i1 %222, label %229, label %224

; <label>:224:                                    ; preds = %218
  %225 = bitcast i8* %223 to i64*
  %226 = load i64, i64* %225, align 8, !tbaa !99
  %227 = bitcast %struct.GCObject** %190 to i64*
  store i64 %226, i64* %227, align 8, !tbaa !29
  %228 = inttoptr i64 %226 to %struct.GCObject*
  br label %234

; <label>:229:                                    ; preds = %218
  %230 = bitcast i8* %223 to %struct.GCObject**
  br label %231

; <label>:231:                                    ; preds = %229, %200, %188
  %232 = phi %struct.GCObject** [ %230, %229 ], [ %194, %200 ], [ %190, %188 ]
  %233 = load %struct.GCObject*, %struct.GCObject** %232, align 8, !tbaa !29
  br label %234

; <label>:234:                                    ; preds = %231, %224, %213
  %235 = phi %struct.GCObject* [ %233, %231 ], [ %228, %224 ], [ %217, %213 ]
  %236 = phi %struct.GCObject** [ %232, %231 ], [ %190, %224 ], [ %190, %213 ]
  %237 = icmp eq %struct.GCObject* %235, null
  br i1 %237, label %238, label %188

; <label>:238:                                    ; preds = %234, %179
  %239 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 16
  %240 = load i8, i8* %239, align 2, !tbaa !51
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %244, label %242

; <label>:242:                                    ; preds = %238
  %243 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %243, align 1, !tbaa !11
  br label %275

; <label>:244:                                    ; preds = %238
  %245 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %246 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 1
  %247 = load i32, i32* %246, align 8, !tbaa !52
  %248 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 2
  %249 = load i32, i32* %248, align 4, !tbaa !53
  %250 = sdiv i32 %249, 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %263

; <label>:252:                                    ; preds = %244
  %253 = load i64, i64* %245, align 8, !tbaa !49
  %254 = sdiv i32 %249, 2
  tail call void @luaS_resize(%struct.lua_State* %0, i32 %254) #6
  %255 = load i64, i64* %245, align 8, !tbaa !49
  %256 = load i8, i8* %239, align 2, !tbaa !51
  %257 = icmp eq i8 %256, 0
  %258 = sub i64 %255, %253
  %259 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  %260 = load i64, i64* %259, align 8, !tbaa !50
  %261 = add i64 %258, %260
  store i64 %261, i64* %259, align 8, !tbaa !50
  %262 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %262, align 1, !tbaa !11
  br i1 %257, label %265, label %275

; <label>:263:                                    ; preds = %244
  %264 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %264, align 1, !tbaa !11
  br label %265

; <label>:265:                                    ; preds = %263, %252
  %266 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %267 = load %struct.global_State*, %struct.global_State** %266, align 8, !tbaa !2
  %268 = getelementptr inbounds %struct.global_State, %struct.global_State* %267, i64 0, i32 28
  %269 = load %struct.GCObject*, %struct.GCObject** %268, align 8, !tbaa !41
  %270 = icmp eq %struct.GCObject* %269, null
  br i1 %270, label %275, label %271

; <label>:271:                                    ; preds = %265
  br label %272

; <label>:272:                                    ; preds = %271, %272
  tail call fastcc void @GCTM(%struct.lua_State* %0) #6
  %273 = load %struct.GCObject*, %struct.GCObject** %268, align 8, !tbaa !41
  %274 = icmp eq %struct.GCObject* %273, null
  br i1 %274, label %275, label %272

; <label>:275:                                    ; preds = %272, %265, %242, %252
  ret void
}

declare hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @GCTM(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca %struct.TValue, align 8
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = bitcast %struct.TValue* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 28
  %7 = load %struct.GCObject*, %struct.GCObject** %6, align 8, !tbaa !41
  %8 = bitcast %struct.GCObject* %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !31
  %10 = bitcast %struct.GCObject** %6 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !41
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
  %33 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* nonnull %0, %struct.TValue* nonnull %2, i32 2) #6
  %34 = getelementptr inbounds %struct.TValue, %struct.TValue* %33, i64 0, i32 1
  %35 = load i8, i8* %34, align 8, !tbaa !21
  %36 = and i8 %35, 15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %89, label %38

; <label>:38:                                     ; preds = %27
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %40 = load i8, i8* %39, align 1, !tbaa !107
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 15
  %42 = load i8, i8* %41, align 1, !tbaa !54
  store i8 0, i8* %39, align 1, !tbaa !107
  store i8 0, i8* %41, align 1, !tbaa !54
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %44 = bitcast %union.StackValue** %43 to %struct.TValue**
  %45 = load %struct.TValue*, %struct.TValue** %44, align 8, !tbaa !101
  %46 = bitcast %struct.TValue* %33 to i64*
  %47 = bitcast %struct.TValue* %45 to i64*
  %48 = load i64, i64* %46, align 8
  store i64 %48, i64* %47, align 8
  %49 = load i8, i8* %34, align 8, !tbaa !21
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i64 0, i32 1
  store i8 %49, i8* %50, align 8, !tbaa !21
  %51 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !101
  %52 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 1, i32 0
  %53 = bitcast %struct.TValue* %2 to i64*
  %54 = bitcast %struct.TValue* %52 to i64*
  %55 = load i64, i64* %53, align 8
  store i64 %55, i64* %54, align 8
  %56 = load i8, i8* %32, align 8, !tbaa !21
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 1, i32 0, i32 1
  store i8 %56, i8* %57, align 8, !tbaa !21
  %58 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !101
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i64 2
  store %union.StackValue* %59, %union.StackValue** %43, align 8, !tbaa !101
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %61 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !tbaa !108
  %62 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %61, i64 0, i32 7
  %63 = load i16, i16* %62, align 2, !tbaa !109
  %64 = or i16 %63, 64
  store i16 %64, i16* %62, align 2, !tbaa !109
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %66 = bitcast %union.StackValue** %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !100
  %68 = ptrtoint %union.StackValue* %58 to i64
  %69 = sub i64 %68, %67
  %70 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @dothecall, i8* null, i64 %69, i64 0) #6
  %71 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !tbaa !108
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 0, i32 7
  %73 = load i16, i16* %72, align 2, !tbaa !109
  %74 = and i16 %73, -65
  store i16 %74, i16* %72, align 2, !tbaa !109
  store i8 %40, i8* %39, align 1, !tbaa !107
  store i8 %42, i8* %41, align 1, !tbaa !54
  %75 = icmp eq i32 %70, 0
  br i1 %75, label %89, label %76

; <label>:76:                                     ; preds = %38
  %77 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !101
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
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 1) #6
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* nonnull %88, i32 1) #6
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0) #6
  br label %89

; <label>:89:                                     ; preds = %87, %38, %27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret void
}

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #4

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @dothecall(%struct.lua_State*, i8* nocapture readnone) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 -2
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* nonnull %5, i32 0) #6
  ret void
}

declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #4

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #4

declare hidden void @luaE_setdebt(%struct.global_State*, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

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
!41 = !{!12, !4, i64 176}
!42 = !{!12, !9, i64 40}
!43 = !{!12, !4, i64 224}
!44 = !{!12, !4, i64 216}
!45 = !{!12, !4, i64 256}
!46 = !{!3, !5, i64 9}
!47 = !{!12, !5, i64 72}
!48 = !{!12, !9, i64 16}
!49 = !{!12, !9, i64 24}
!50 = !{!12, !9, i64 32}
!51 = !{!12, !5, i64 106}
!52 = !{!12, !10, i64 56}
!53 = !{!12, !10, i64 60}
!54 = !{!12, !5, i64 105}
!55 = !{!12, !5, i64 103}
!56 = !{!12, !5, i64 107}
!57 = !{!12, !5, i64 104}
!58 = !{!12, !4, i64 232}
!59 = !{!12, !5, i64 108}
!60 = !{!12, !5, i64 109}
!61 = !{!24, !9, i64 16}
!62 = !{!3, !4, i64 64}
!63 = !{!3, !4, i64 80}
!64 = !{!20, !5, i64 9}
!65 = !{!12, !4, i64 160}
!66 = !{!12, !4, i64 152}
!67 = !{!12, !4, i64 168}
!68 = !{!27, !4, i64 24}
!69 = !{!27, !5, i64 11}
!70 = !{!27, !4, i64 16}
!71 = !{!27, !4, i64 40}
!72 = !{!27, !10, i64 12}
!73 = !{!27, !4, i64 48}
!74 = !{!27, !4, i64 32}
!75 = !{!24, !4, i64 32}
!76 = !{!24, !5, i64 9}
!77 = !{!78, !4, i64 24}
!78 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!79 = !{!80, !5, i64 9}
!80 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!81 = !{!78, !5, i64 10}
!82 = !{!83, !5, i64 10}
!83 = !{!"CClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!84 = !{!80, !4, i64 112}
!85 = !{!86, !5, i64 9}
!86 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !5, i64 16}
!87 = !{!80, !10, i64 20}
!88 = !{!80, !4, i64 56}
!89 = !{!80, !10, i64 16}
!90 = !{!80, !4, i64 80}
!91 = !{!92, !4, i64 0}
!92 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!93 = !{!80, !10, i64 32}
!94 = !{!80, !4, i64 72}
!95 = !{!80, !10, i64 36}
!96 = !{!80, !4, i64 104}
!97 = !{!98, !4, i64 0}
!98 = !{!"LocVar", !4, i64 0, !10, i64 8, !10, i64 12}
!99 = !{!3, !4, i64 72}
!100 = !{!3, !4, i64 56}
!101 = !{!3, !4, i64 16}
!102 = !{!20, !5, i64 8}
!103 = !{!3, !10, i64 180}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!12, !4, i64 240}
!107 = !{!3, !5, i64 11}
!108 = !{!3, !4, i64 32}
!109 = !{!8, !7, i64 62}
