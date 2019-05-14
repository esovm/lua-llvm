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
  br label %3

; <label>:3:                                      ; preds = %26, %2
  %4 = phi %struct.GCObject* [ %1, %2 ], [ %28, %26 ]
  %5 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4, i64 0, i32 2
  %6 = load i8, i8* %5, align 1, !tbaa !15
  %7 = and i8 %6, -25
  store i8 %7, i8* %5, align 1, !tbaa !15
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !18
  switch i8 %9, label %59 [
    i8 20, label %10
    i8 36, label %10
    i8 9, label %12
    i8 25, label %12
    i8 7, label %33
    i8 22, label %53
    i8 54, label %53
    i8 5, label %53
    i8 8, label %53
    i8 10, label %53
  ]

; <label>:10:                                     ; preds = %3, %3
  %11 = or i8 %7, 32
  store i8 %11, i8* %5, align 1, !tbaa !15
  br label %59

; <label>:12:                                     ; preds = %3, %3
  %13 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4, i64 1
  %14 = bitcast %struct.GCObject* %13 to %struct.TValue**
  %15 = load %struct.TValue*, %struct.TValue** %14, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4, i64 1, i32 1
  %17 = bitcast i8* %16 to %struct.TValue*
  %18 = icmp eq %struct.TValue* %15, %17
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %12
  %20 = or i8 %7, 32
  store i8 %20, i8* %5, align 1, !tbaa !15
  br label %21

; <label>:21:                                     ; preds = %12, %19
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i64 0, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !21
  %24 = and i8 %23, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %59, label %26

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %15, i64 0, i32 0, i32 0
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %28, i64 0, i32 2
  %30 = load i8, i8* %29, align 1, !tbaa !15
  %31 = and i8 %30, 24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %59, label %3

; <label>:33:                                     ; preds = %3
  %34 = bitcast %struct.GCObject* %4 to %struct.Udata*
  %35 = getelementptr inbounds %struct.Udata, %struct.Udata* %34, i64 0, i32 3
  %36 = load i16, i16* %35, align 2, !tbaa !23
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %53

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4, i64 1, i32 1
  %40 = bitcast i8* %39 to %struct.Table**
  %41 = load %struct.Table*, %struct.Table** %40, align 8, !tbaa !25
  %42 = icmp eq %struct.Table* %41, null
  br i1 %42, label %50, label %43

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.Table, %struct.Table* %41, i64 0, i32 2
  %45 = load i8, i8* %44, align 1, !tbaa !26
  %46 = and i8 %45, 24
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

; <label>:48:                                     ; preds = %43
  %49 = bitcast %struct.Table* %41 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %49)
  br label %50

; <label>:50:                                     ; preds = %43, %38, %48
  %51 = load i8, i8* %5, align 1, !tbaa !15
  %52 = or i8 %51, 32
  store i8 %52, i8* %5, align 1, !tbaa !15
  br label %59

; <label>:53:                                     ; preds = %3, %3, %3, %3, %3, %33
  %54 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %55 = bitcast %struct.GCObject** %54 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !28
  %57 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %4)
  %58 = bitcast %struct.GCObject** %57 to i64*
  store i64 %56, i64* %58, align 8, !tbaa !29
  store %struct.GCObject* %4, %struct.GCObject** %54, align 8, !tbaa !28
  br label %59

; <label>:59:                                     ; preds = %21, %26, %3, %50, %53, %10
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
  br i1 %11, label %80, label %12

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.Table, %struct.Table* %2, i64 0, i32 3
  %14 = load i8, i8* %13, align 2, !tbaa !34
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %80

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 40, i64 2
  %19 = load %struct.TString*, %struct.TString** %18, align 8, !tbaa !29
  %20 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %2, i32 2, %struct.TString* %19) #6
  %21 = icmp eq %struct.TValue* %20, null
  br i1 %21, label %80, label %22

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 11
  %24 = load i8, i8* %23, align 1, !tbaa !11
  %25 = add i8 %24, -3
  %26 = icmp ult i8 %25, 4
  br i1 %26, label %27, label %40

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
  br i1 %37, label %38, label %64

; <label>:38:                                     ; preds = %27
  %39 = tail call fastcc %struct.GCObject** @sweeptolive(%struct.lua_State* nonnull %0, %struct.GCObject** %35)
  store %struct.GCObject** %39, %struct.GCObject*** %34, align 8, !tbaa !35
  br label %64

; <label>:40:                                     ; preds = %22
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 30
  %42 = load %struct.GCObject*, %struct.GCObject** %41, align 8, !tbaa !36
  %43 = icmp eq %struct.GCObject* %42, %1
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %40
  %45 = bitcast %struct.GCObject* %1 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !31
  %47 = bitcast %struct.GCObject** %41 to i64*
  store i64 %46, i64* %47, align 8, !tbaa !36
  br label %48

; <label>:48:                                     ; preds = %44, %40
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 31
  %50 = load %struct.GCObject*, %struct.GCObject** %49, align 8, !tbaa !37
  %51 = icmp eq %struct.GCObject* %50, %1
  br i1 %51, label %52, label %56

; <label>:52:                                     ; preds = %48
  %53 = bitcast %struct.GCObject* %1 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !31
  %55 = bitcast %struct.GCObject** %49 to i64*
  store i64 %54, i64* %55, align 8, !tbaa !37
  br label %56

; <label>:56:                                     ; preds = %52, %48
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 32
  %58 = load %struct.GCObject*, %struct.GCObject** %57, align 8, !tbaa !38
  %59 = icmp eq %struct.GCObject* %58, %1
  br i1 %59, label %60, label %64

; <label>:60:                                     ; preds = %56
  %61 = bitcast %struct.GCObject* %1 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !31
  %63 = bitcast %struct.GCObject** %57 to i64*
  store i64 %62, i64* %63, align 8, !tbaa !38
  br label %64

; <label>:64:                                     ; preds = %56, %60, %27, %38
  %65 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 20
  br label %66

; <label>:66:                                     ; preds = %66, %64
  %67 = phi %struct.GCObject** [ %65, %64 ], [ %70, %66 ]
  %68 = load %struct.GCObject*, %struct.GCObject** %67, align 8, !tbaa !29
  %69 = icmp eq %struct.GCObject* %68, %1
  %70 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %68, i64 0, i32 0
  br i1 %69, label %71, label %66

; <label>:71:                                     ; preds = %66
  %72 = bitcast %struct.GCObject* %1 to i64*
  %73 = load i64, i64* %72, align 8, !tbaa !31
  %74 = bitcast %struct.GCObject** %67 to i64*
  store i64 %73, i64* %74, align 8, !tbaa !29
  %75 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i64 0, i32 22
  %76 = bitcast %struct.GCObject** %75 to i64*
  %77 = load i64, i64* %76, align 8, !tbaa !39
  store i64 %77, i64* %72, align 8, !tbaa !31
  store %struct.GCObject* %1, %struct.GCObject** %75, align 8, !tbaa !39
  %78 = load i8, i8* %6, align 1, !tbaa !15
  %79 = or i8 %78, 64
  store i8 %79, i8* %6, align 1, !tbaa !15
  br label %80

; <label>:80:                                     ; preds = %3, %12, %17, %71
  ret void
}

declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc %struct.GCObject** @sweeptolive(%struct.lua_State*, %struct.GCObject**) unnamed_addr #0 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = phi %struct.GCObject** [ %1, %2 ], [ %5, %3 ]
  %5 = tail call fastcc %struct.GCObject** @sweeplist(%struct.lua_State* %0, %struct.GCObject** %4, i32 1, i32* null)
  %6 = icmp eq %struct.GCObject** %5, %1
  br i1 %6, label %3, label %7

; <label>:7:                                      ; preds = %3
  ret %struct.GCObject** %5
}

; Function Attrs: nounwind uwtable
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
  %12 = tail call fastcc i64 @entergen(%struct.lua_State* nonnull %0, %struct.global_State* %4)
  br label %14

; <label>:13:                                     ; preds = %9
  tail call fastcc void @enterinc(%struct.global_State* %4)
  br label %14

; <label>:14:                                     ; preds = %2, %11, %13
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 5
  store i64 0, i64* %15, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @entergen(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256)
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 1)
  %3 = tail call fastcc i64 @atomic(%struct.lua_State* %0)
  tail call fastcc void @atomic2gen(%struct.lua_State* %0, %struct.global_State* %1)
  ret i64 %3
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @enterinc(%struct.global_State* nocapture) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 20
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !32
  tail call fastcc void @whitelist(%struct.global_State* %0, %struct.GCObject* %3)
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 30
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 22
  %6 = bitcast %struct.GCObject** %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 24, i32 8, i1 false)
  %7 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !39
  tail call fastcc void @whitelist(%struct.global_State* %0, %struct.GCObject* %7)
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 28
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8, !tbaa !42
  tail call fastcc void @whitelist(%struct.global_State* %0, %struct.GCObject* %9)
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 33
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %12 = bitcast %struct.GCObject** %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %12, i8 0, i64 24, i32 8, i1 false)
  store i8 8, i8* %11, align 1, !tbaa !11
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  store i8 0, i8* %13, align 2, !tbaa !40
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 5
  store i64 0, i64* %14, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_freeallobjects(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  tail call void @luaC_changemode(%struct.lua_State* %0, i32 0)
  tail call fastcc void @separatetobefnz(%struct.global_State* %3, i32 1)
  tail call fastcc void @callallpendingfinalizers(%struct.lua_State* %0)
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %5 = load %struct.GCObject*, %struct.GCObject** %4, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 38
  %7 = bitcast %struct.lua_State** %6 to %struct.GCObject**
  %8 = load %struct.GCObject*, %struct.GCObject** %7, align 8, !tbaa !43
  tail call fastcc void @deletelist(%struct.lua_State* %0, %struct.GCObject* %5, %struct.GCObject* %8)
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %10 = load %struct.GCObject*, %struct.GCObject** %9, align 8, !tbaa !39
  tail call fastcc void @deletelist(%struct.lua_State* %0, %struct.GCObject* %10, %struct.GCObject* null)
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 29
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8, !tbaa !33
  tail call fastcc void @deletelist(%struct.lua_State* %0, %struct.GCObject* %12, %struct.GCObject* null)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @separatetobefnz(%struct.global_State*, i32) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 22
  %4 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 34
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !44
  %7 = icmp eq %struct.GCObject* %4, %6
  br i1 %7, label %44, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 28
  %10 = tail call fastcc %struct.GCObject** @findlast(%struct.GCObject** nonnull %9)
  %11 = icmp ne i32 %1, 0
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 33
  %13 = bitcast %struct.GCObject** %12 to i64*
  br label %14

; <label>:14:                                     ; preds = %8, %38
  %15 = phi %struct.GCObject* [ %4, %8 ], [ %41, %38 ]
  %16 = phi %struct.GCObject** [ %10, %8 ], [ %40, %38 ]
  %17 = phi %struct.GCObject** [ %3, %8 ], [ %39, %38 ]
  %18 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i64 0, i32 2
  %19 = load i8, i8* %18, align 1, !tbaa !15
  %20 = and i8 %19, 24
  %21 = icmp ne i8 %20, 0
  %22 = or i1 %11, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i64 0, i32 0
  br label %38

; <label>:25:                                     ; preds = %14
  %26 = load %struct.GCObject*, %struct.GCObject** %12, align 8, !tbaa !45
  %27 = icmp eq %struct.GCObject* %15, %26
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %25
  %29 = bitcast %struct.GCObject* %15 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !31
  store i64 %30, i64* %13, align 8, !tbaa !45
  br label %31

; <label>:31:                                     ; preds = %28, %25
  %32 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i64 0, i32 0
  %33 = bitcast %struct.GCObject* %15 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !31
  %35 = bitcast %struct.GCObject** %17 to i64*
  store i64 %34, i64* %35, align 8, !tbaa !29
  %36 = bitcast %struct.GCObject** %16 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !29
  store i64 %37, i64* %33, align 8, !tbaa !31
  store %struct.GCObject* %15, %struct.GCObject** %16, align 8, !tbaa !29
  br label %38

; <label>:38:                                     ; preds = %31, %23
  %39 = phi %struct.GCObject** [ %17, %31 ], [ %24, %23 ]
  %40 = phi %struct.GCObject** [ %32, %31 ], [ %16, %23 ]
  %41 = load %struct.GCObject*, %struct.GCObject** %39, align 8, !tbaa !29
  %42 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !44
  %43 = icmp eq %struct.GCObject* %41, %42
  br i1 %43, label %44, label %14

; <label>:44:                                     ; preds = %38, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @callallpendingfinalizers(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %5 = load %struct.GCObject*, %struct.GCObject** %4, align 8, !tbaa !42
  %6 = icmp eq %struct.GCObject* %5, null
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %1
  br label %8

; <label>:8:                                      ; preds = %7, %8
  tail call fastcc void @GCTM(%struct.lua_State* %0)
  %9 = load %struct.GCObject*, %struct.GCObject** %4, align 8, !tbaa !42
  %10 = icmp eq %struct.GCObject* %9, null
  br i1 %10, label %11, label %8

; <label>:11:                                     ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @deletelist(%struct.lua_State*, %struct.GCObject*, %struct.GCObject* readnone) unnamed_addr #0 {
  %4 = icmp eq %struct.GCObject* %1, %2
  br i1 %4, label %11, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi %struct.GCObject* [ %9, %6 ], [ %1, %5 ]
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 0
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8, !tbaa !31
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* %7)
  %10 = icmp eq %struct.GCObject* %9, %2
  br i1 %10, label %11, label %6

; <label>:11:                                     ; preds = %6, %3
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
  switch i8 %5, label %47 [
    i8 8, label %6
    i8 0, label %7
    i8 1, label %14
    i8 3, label %22
    i8 4, label %26
    i8 5, label %30
    i8 6, label %33
    i8 7, label %34
  ]

; <label>:6:                                      ; preds = %1
  tail call fastcc void @restartcollection(%struct.global_State* %3)
  store i8 0, i8* %4, align 1, !tbaa !11
  br label %47

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8, !tbaa !28
  %10 = icmp eq %struct.GCObject* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7
  store i8 1, i8* %4, align 1, !tbaa !11
  br label %47

; <label>:12:                                     ; preds = %7
  %13 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3)
  br label %47

; <label>:14:                                     ; preds = %1
  %15 = tail call fastcc i64 @atomic(%struct.lua_State* nonnull %0)
  tail call fastcc void @entersweep(%struct.lua_State* nonnull %0)
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %17 = load i64, i64* %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %19 = load i64, i64* %18, align 8, !tbaa !47
  %20 = add nsw i64 %19, %17
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  store i64 %20, i64* %21, align 8, !tbaa !48
  br label %47

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %24 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 4, %struct.GCObject** nonnull %23)
  %25 = sext i32 %24 to i64
  br label %47

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %28 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 5, %struct.GCObject** nonnull %27)
  %29 = sext i32 %28 to i64
  br label %47

; <label>:30:                                     ; preds = %1
  %31 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 6, %struct.GCObject** null)
  %32 = sext i32 %31 to i64
  br label %47

; <label>:33:                                     ; preds = %1
  tail call fastcc void @checkSizes(%struct.lua_State* nonnull %0, %struct.global_State* %3)
  store i8 7, i8* %4, align 1, !tbaa !11
  br label %47

; <label>:34:                                     ; preds = %1
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %36 = load %struct.GCObject*, %struct.GCObject** %35, align 8, !tbaa !42
  %37 = icmp eq %struct.GCObject* %36, null
  br i1 %37, label %46, label %38

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16
  %40 = load i8, i8* %39, align 2, !tbaa !49
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %38
  %43 = tail call fastcc i32 @runafewfinalizers(%struct.lua_State* nonnull %0)
  %44 = mul nsw i32 %43, 50
  %45 = sext i32 %44 to i64
  br label %47

; <label>:46:                                     ; preds = %38, %34
  store i8 8, i8* %4, align 1, !tbaa !11
  br label %47

; <label>:47:                                     ; preds = %1, %46, %42, %33, %30, %26, %22, %14, %12, %11, %6
  %48 = phi i64 [ 0, %46 ], [ %45, %42 ], [ 0, %33 ], [ %32, %30 ], [ %29, %26 ], [ %25, %22 ], [ %15, %14 ], [ 0, %11 ], [ %13, %12 ], [ 1, %6 ], [ 0, %1 ]
  ret i64 %48
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15
  %5 = load i8, i8* %4, align 1, !tbaa !50
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12
  %9 = load i8, i8* %8, align 2, !tbaa !40
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5
  %13 = load i64, i64* %12, align 8, !tbaa !41
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %11, %7
  tail call fastcc void @genstep(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3)
  br label %17

; <label>:16:                                     ; preds = %11
  tail call fastcc void @incstep(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3)
  br label %17

; <label>:17:                                     ; preds = %1, %15, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @genstep(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 5
  %4 = load i64, i64* %3, align 8, !tbaa !41
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call fastcc void @stepgenfull(%struct.lua_State* %0, %struct.global_State* nonnull %1)
  br label %36

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  %9 = load i64, i64* %8, align 8, !tbaa !48
  %10 = udiv i64 %9, 100
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 14
  %12 = load i8, i8* %11, align 8, !tbaa !51
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = mul i64 %14, %10
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %17 = load i64, i64* %16, align 8, !tbaa !47
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %35

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 2
  %21 = load i64, i64* %20, align 8, !tbaa !46
  %22 = add nsw i64 %21, %17
  %23 = add i64 %15, %9
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %35

; <label>:25:                                     ; preds = %19
  %26 = tail call fastcc i64 @fullgen(%struct.lua_State* %0, %struct.global_State* nonnull %1)
  %27 = load i64, i64* %20, align 8, !tbaa !46
  %28 = load i64, i64* %16, align 8, !tbaa !47
  %29 = add nsw i64 %28, %27
  %30 = lshr exact i64 %15, 1
  %31 = add i64 %30, %9
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %25
  tail call fastcc void @setminordebt(%struct.global_State* nonnull %1)
  br label %36

; <label>:34:                                     ; preds = %25
  store i64 %26, i64* %3, align 8, !tbaa !41
  tail call fastcc void @setpause(%struct.global_State* nonnull %1)
  br label %36

; <label>:35:                                     ; preds = %19, %7
  tail call fastcc void @youngcollection(%struct.lua_State* %0, %struct.global_State* nonnull %1)
  tail call fastcc void @setminordebt(%struct.global_State* nonnull %1)
  store i64 %9, i64* %8, align 8, !tbaa !48
  br label %36

; <label>:36:                                     ; preds = %35, %34, %33, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @incstep(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 18
  %4 = load i8, i8* %3, align 4, !tbaa !52
  %5 = zext i8 %4 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = or i64 %6, 1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %9 = load i64, i64* %8, align 8, !tbaa !47
  %10 = lshr i64 %9, 4
  %11 = mul i64 %7, %10
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 19
  %13 = load i8, i8* %12, align 1, !tbaa !53
  %14 = icmp ult i8 %13, 63
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %2
  %16 = zext i8 %13 to i64
  %17 = shl i64 1, %16
  %18 = lshr i64 %17, 4
  %19 = sub nsw i64 0, %7
  %20 = mul i64 %18, %19
  br label %21

; <label>:21:                                     ; preds = %2, %15
  %22 = phi i64 [ %20, %15 ], [ -9223372036854775807, %2 ]
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  br label %24

; <label>:24:                                     ; preds = %29, %21
  %25 = phi i64 [ %11, %21 ], [ %27, %29 ]
  %26 = tail call fastcc i64 @singlestep(%struct.lua_State* %0)
  %27 = sub i64 %25, %26
  %28 = icmp sgt i64 %27, %22
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = load i8, i8* %23, align 1, !tbaa !11
  %31 = icmp eq i8 %30, 8
  br i1 %31, label %32, label %24

; <label>:32:                                     ; preds = %29, %24
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  %34 = load i8, i8* %33, align 1, !tbaa !11
  %35 = icmp eq i8 %34, 8
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %32
  tail call fastcc void @setpause(%struct.global_State* nonnull %1)
  br label %40

; <label>:37:                                     ; preds = %32
  %38 = sdiv i64 %27, %7
  %39 = shl i64 %38, 4
  tail call void @luaE_setdebt(%struct.global_State* nonnull %1, i64 %39) #6
  br label %40

; <label>:40:                                     ; preds = %37, %36
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 16
  store i8 %5, i8* %6, align 2, !tbaa !49
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 12
  %8 = load i8, i8* %7, align 2, !tbaa !40
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  tail call fastcc void @fullinc(%struct.lua_State* nonnull %0, %struct.global_State* %4)
  br label %13

; <label>:11:                                     ; preds = %2
  %12 = tail call fastcc i64 @fullgen(%struct.lua_State* nonnull %0, %struct.global_State* %4)
  br label %13

; <label>:13:                                     ; preds = %11, %10
  store i8 0, i8* %6, align 2, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fullinc(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  %4 = load i8, i8* %3, align 1, !tbaa !11
  %5 = icmp ult i8 %4, 3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call fastcc void @entersweep(%struct.lua_State* %0)
  br label %7

; <label>:7:                                      ; preds = %6, %2
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256)
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 128)
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256)
  tail call fastcc void @setpause(%struct.global_State* nonnull %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @fullgen(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  tail call fastcc void @enterinc(%struct.global_State* %1)
  %3 = tail call fastcc i64 @entergen(%struct.lua_State* %0, %struct.global_State* %1)
  ret i64 %3
}

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %17)
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
  store i32 %40, i32* %3, align 4, !tbaa !54
  br label %45

; <label>:45:                                     ; preds = %39, %44
  %46 = icmp eq %struct.GCObject* %42, null
  %47 = select i1 %46, %struct.GCObject** null, %struct.GCObject** %41
  ret %struct.GCObject** %47
}

; Function Attrs: nounwind uwtable
define internal fastcc void @freeobj(%struct.lua_State*, %struct.GCObject*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 8, !tbaa !18
  switch i8 %4, label %56 [
    i8 10, label %5
    i8 9, label %7
    i8 25, label %7
    i8 22, label %9
    i8 54, label %17
    i8 5, label %25
    i8 8, label %27
    i8 7, label %29
    i8 20, label %43
    i8 36, label %50
  ]

; <label>:5:                                      ; preds = %2
  %6 = bitcast %struct.GCObject* %1 to %struct.Proto*
  tail call void @luaF_freeproto(%struct.lua_State* %0, %struct.Proto* %6) #6
  br label %56

; <label>:7:                                      ; preds = %2, %2
  %8 = bitcast %struct.GCObject* %1 to %struct.UpVal*
  tail call fastcc void @freeupval(%struct.lua_State* %0, %struct.UpVal* %8)
  br label %56

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.GCObject* %1 to i8*
  %11 = bitcast %struct.GCObject* %1 to %struct.LClosure*
  %12 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %11, i64 0, i32 3
  %13 = load i8, i8* %12, align 2, !tbaa !22
  %14 = zext i8 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = add nuw nsw i64 %15, 32
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %10, i64 %16) #6
  br label %56

; <label>:17:                                     ; preds = %2
  %18 = bitcast %struct.GCObject* %1 to i8*
  %19 = bitcast %struct.GCObject* %1 to %struct.CClosure*
  %20 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %19, i64 0, i32 3
  %21 = load i8, i8* %20, align 2, !tbaa !22
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 4
  %24 = add nuw nsw i64 %23, 32
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %18, i64 %24) #6
  br label %56

; <label>:25:                                     ; preds = %2
  %26 = bitcast %struct.GCObject* %1 to %struct.Table*
  tail call void @luaH_free(%struct.lua_State* %0, %struct.Table* %26) #6
  br label %56

; <label>:27:                                     ; preds = %2
  %28 = bitcast %struct.GCObject* %1 to %struct.lua_State*
  tail call void @luaE_freethread(%struct.lua_State* %0, %struct.lua_State* %28) #6
  br label %56

; <label>:29:                                     ; preds = %2
  %30 = bitcast %struct.GCObject* %1 to %struct.Udata*
  %31 = bitcast %struct.GCObject* %1 to i8*
  %32 = getelementptr inbounds %struct.Udata, %struct.Udata* %30, i64 0, i32 3
  %33 = load i16, i16* %32, align 2, !tbaa !23
  %34 = icmp eq i16 %33, 0
  %35 = zext i16 %33 to i64
  %36 = shl nuw nsw i64 %35, 4
  %37 = add nuw nsw i64 %36, 40
  %38 = select i1 %34, i64 32, i64 %37
  %39 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1
  %40 = bitcast %struct.GCObject* %39 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !55
  %42 = add i64 %38, %41
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %31, i64 %42) #6
  br label %56

; <label>:43:                                     ; preds = %2
  %44 = bitcast %struct.GCObject* %1 to %struct.TString*
  tail call void @luaS_remove(%struct.lua_State* %0, %struct.TString* %44) #6
  %45 = bitcast %struct.GCObject* %1 to i8*
  %46 = getelementptr inbounds %struct.TString, %struct.TString* %44, i64 0, i32 4
  %47 = load i8, i8* %46, align 1, !tbaa !22
  %48 = zext i8 %47 to i64
  %49 = add nuw nsw i64 %48, 25
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %45, i64 %49) #6
  br label %56

; <label>:50:                                     ; preds = %2
  %51 = bitcast %struct.GCObject* %1 to i8*
  %52 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %1, i64 1
  %53 = bitcast %struct.GCObject* %52 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !22
  %55 = add i64 %54, 25
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %51, i64 %55) #6
  br label %56

; <label>:56:                                     ; preds = %2, %50, %43, %29, %27, %25, %17, %9, %7, %5
  ret void
}

declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @freeupval(%struct.lua_State*, %struct.UpVal*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 3
  %4 = load %struct.TValue*, %struct.TValue** %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 4
  %6 = bitcast %union.anon.4* %5 to %struct.TValue*
  %7 = icmp eq %struct.TValue* %4, %6
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %2
  tail call void @luaF_unlinkupval(%struct.UpVal* nonnull %1) #6
  br label %9

; <label>:9:                                      ; preds = %2, %8
  %10 = bitcast %struct.UpVal* %1 to i8*
  tail call void @luaM_free_(%struct.lua_State* %0, i8* %10, i64 40) #6
  ret void
}

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
  %9 = load i8, i8* %8, align 1, !tbaa !56
  %10 = and i8 %9, 24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %1
  %13 = bitcast %struct.lua_State* %0 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* %13)
  br label %14

; <label>:14:                                     ; preds = %1, %12
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 7, i32 1
  %16 = load i8, i8* %15, align 8, !tbaa !57
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
  %28 = tail call fastcc i64 @propagateall(%struct.global_State* nonnull %3)
  %29 = tail call fastcc i32 @remarkupvals(%struct.global_State* nonnull %3)
  %30 = sext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = tail call fastcc i64 @propagateall(%struct.global_State* nonnull %3)
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %35 = bitcast %struct.GCObject** %34 to i64*
  store i64 %6, i64* %35, align 8, !tbaa !28
  %36 = tail call fastcc i64 @propagateall(%struct.global_State* nonnull %3)
  %37 = add i64 %33, %36
  tail call fastcc void @convergeephemerons(%struct.global_State* nonnull %3)
  %38 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 25
  %39 = load %struct.GCObject*, %struct.GCObject** %38, align 8, !tbaa !58
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %39, %struct.GCObject* null)
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 27
  %41 = load %struct.GCObject*, %struct.GCObject** %40, align 8, !tbaa !59
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %41, %struct.GCObject* null)
  %42 = load %struct.GCObject*, %struct.GCObject** %38, align 8, !tbaa !58
  %43 = load %struct.GCObject*, %struct.GCObject** %40, align 8, !tbaa !59
  tail call fastcc void @separatetobefnz(%struct.global_State* nonnull %3, i32 0)
  %44 = tail call fastcc i64 @markbeingfnz(%struct.global_State* nonnull %3)
  %45 = add i64 %37, %44
  %46 = tail call fastcc i64 @propagateall(%struct.global_State* nonnull %3)
  %47 = add i64 %45, %46
  tail call fastcc void @convergeephemerons(%struct.global_State* nonnull %3)
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 26
  %49 = load %struct.GCObject*, %struct.GCObject** %48, align 8, !tbaa !60
  tail call fastcc void @clearbykeys(%struct.global_State* nonnull %3, %struct.GCObject* %49)
  %50 = load %struct.GCObject*, %struct.GCObject** %40, align 8, !tbaa !59
  tail call fastcc void @clearbykeys(%struct.global_State* nonnull %3, %struct.GCObject* %50)
  %51 = load %struct.GCObject*, %struct.GCObject** %38, align 8, !tbaa !58
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %51, %struct.GCObject* %42)
  %52 = load %struct.GCObject*, %struct.GCObject** %40, align 8, !tbaa !59
  tail call fastcc void @clearbyvalues(%struct.global_State* nonnull %3, %struct.GCObject* %52, %struct.GCObject* %43)
  tail call void @luaS_clearcache(%struct.global_State* nonnull %3) #6
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %54 = load i8, i8* %53, align 4, !tbaa !17
  %55 = xor i8 %54, 24
  store i8 %55, i8* %53, align 4, !tbaa !17
  ret i64 %47
}

; Function Attrs: nounwind uwtable
define internal fastcc void @atomic2gen(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 20
  tail call fastcc void @sweep2old(%struct.lua_State* %0, %struct.GCObject** nonnull %3)
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
  tail call fastcc void @sweep2old(%struct.lua_State* %0, %struct.GCObject** nonnull %12)
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
  store i64 %14, i64* %20, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 28
  tail call fastcc void @sweep2old(%struct.lua_State* %0, %struct.GCObject** nonnull %21)
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 12
  store i8 1, i8* %22, align 2, !tbaa !40
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 5
  store i64 0, i64* %23, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 2
  %25 = load i64, i64* %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %27 = load i64, i64* %26, align 8, !tbaa !47
  %28 = add nsw i64 %27, %25
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  store i64 %28, i64* %29, align 8, !tbaa !48
  tail call fastcc void @finishgencycle(%struct.lua_State* %0, %struct.global_State* %1)
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %13)
  br label %14

; <label>:14:                                     ; preds = %7, %2, %12
  %15 = add nuw nsw i64 %3, 1
  %16 = icmp eq i64 %15, 9
  br i1 %16, label %17, label %2

; <label>:17:                                     ; preds = %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @propagateall(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !28
  %4 = icmp eq %struct.GCObject* %3, null
  br i1 %4, label %12, label %5

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i64 [ %9, %6 ], [ 0, %5 ]
  %8 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %0)
  %9 = add i64 %8, %7
  %10 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !28
  %11 = icmp eq %struct.GCObject* %10, null
  br i1 %11, label %12, label %6

; <label>:12:                                     ; preds = %6, %1
  %13 = phi i64 [ 0, %1 ], [ %9, %6 ]
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @remarkupvals(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 36
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !tbaa !29
  %4 = icmp eq %struct.lua_State* %3, null
  br i1 %4, label %62, label %5

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %5, %57
  %7 = phi %struct.lua_State* [ %60, %57 ], [ %3, %5 ]
  %8 = phi i32 [ %59, %57 ], [ 0, %5 ]
  %9 = phi %struct.lua_State** [ %58, %57 ], [ %2, %5 ]
  %10 = add nsw i32 %8, 1
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i64 0, i32 2
  %12 = load i8, i8* %11, align 1, !tbaa !56
  %13 = and i8 %12, 56
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i64 0, i32 12
  %17 = load %struct.UpVal*, %struct.UpVal** %16, align 8, !tbaa !62
  %18 = icmp eq %struct.UpVal* %17, null
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i64 0, i32 14
  br label %57

; <label>:21:                                     ; preds = %15, %6
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i64 0, i32 14
  %23 = bitcast %struct.lua_State** %22 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !63
  %25 = bitcast %struct.lua_State** %9 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !29
  store %struct.lua_State* %7, %struct.lua_State** %22, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %7, i64 0, i32 12
  %27 = load %struct.UpVal*, %struct.UpVal** %26, align 8, !tbaa !22
  %28 = icmp eq %struct.UpVal* %27, null
  br i1 %28, label %57, label %29

; <label>:29:                                     ; preds = %21
  br label %30

; <label>:30:                                     ; preds = %29, %53
  %31 = phi %struct.UpVal* [ %55, %53 ], [ %27, %29 ]
  %32 = phi i32 [ %33, %53 ], [ %10, %29 ]
  %33 = add nsw i32 %32, 1
  %34 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %31, i64 0, i32 2
  %35 = load i8, i8* %34, align 1, !tbaa !64
  %36 = and i8 %35, 24
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %53

; <label>:38:                                     ; preds = %30
  %39 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %31, i64 0, i32 3
  %40 = load %struct.TValue*, %struct.TValue** %39, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 0, i32 1
  %42 = load i8, i8* %41, align 8, !tbaa !21
  %43 = and i8 %42, 64
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 0, i32 0, i32 0
  %47 = load %struct.GCObject*, %struct.GCObject** %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %47, i64 0, i32 2
  %49 = load i8, i8* %48, align 1, !tbaa !15
  %50 = and i8 %49, 24
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

; <label>:52:                                     ; preds = %45
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %47)
  br label %53

; <label>:53:                                     ; preds = %45, %38, %30, %52
  %54 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %31, i64 0, i32 4, i32 0, i32 0
  %55 = load %struct.UpVal*, %struct.UpVal** %54, align 8, !tbaa !22
  %56 = icmp eq %struct.UpVal* %55, null
  br i1 %56, label %57, label %30

; <label>:57:                                     ; preds = %53, %21, %19
  %58 = phi %struct.lua_State** [ %20, %19 ], [ %9, %21 ], [ %9, %53 ]
  %59 = phi i32 [ %10, %19 ], [ %10, %21 ], [ %33, %53 ]
  %60 = load %struct.lua_State*, %struct.lua_State** %58, align 8, !tbaa !29
  %61 = icmp eq %struct.lua_State* %60, null
  br i1 %61, label %62, label %6

; <label>:62:                                     ; preds = %57, %1
  %63 = phi i32 [ 0, %1 ], [ %59, %57 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal fastcc void @convergeephemerons(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 26
  br label %3

; <label>:3:                                      ; preds = %20, %1
  %4 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !60
  store %struct.GCObject* null, %struct.GCObject** %2, align 8, !tbaa !60
  %5 = icmp eq %struct.GCObject* %4, null
  br i1 %5, label %22, label %6

; <label>:6:                                      ; preds = %3
  br label %7

; <label>:7:                                      ; preds = %6, %17
  %8 = phi %struct.GCObject* [ %12, %17 ], [ %4, %6 ]
  %9 = phi i32 [ %18, %17 ], [ 0, %6 ]
  %10 = bitcast %struct.GCObject* %8 to %struct.Table*
  %11 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 3, i32 0
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8, !tbaa !22
  %13 = tail call fastcc i32 @traverseephemeron(%struct.global_State* %0, %struct.Table* %10)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %7
  %16 = tail call fastcc i64 @propagateall(%struct.global_State* %0)
  br label %17

; <label>:17:                                     ; preds = %7, %15
  %18 = phi i32 [ 1, %15 ], [ %9, %7 ]
  %19 = icmp eq %struct.GCObject* %12, null
  br i1 %19, label %20, label %7

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %3

; <label>:22:                                     ; preds = %3, %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clearbyvalues(%struct.global_State*, %struct.GCObject*, %struct.GCObject* readnone) unnamed_addr #0 {
  %4 = icmp eq %struct.GCObject* %1, %2
  br i1 %4, label %72, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %68
  %7 = phi %struct.GCObject* [ %70, %68 ], [ %1, %5 ]
  %8 = bitcast %struct.GCObject* %7 to %struct.Table*
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1, i32 1
  %10 = bitcast i8* %9 to %union.Node**
  %11 = load %union.Node*, %union.Node** %10, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %8, i64 0, i32 4
  %13 = load i8, i8* %12, align 1, !tbaa !66
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %union.Node, %union.Node* %11, i64 %16
  %18 = tail call i32 @luaH_realasize(%struct.Table* %8) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

; <label>:20:                                     ; preds = %6
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 1
  %22 = bitcast %struct.GCObject* %21 to %struct.TValue**
  %23 = zext i32 %18 to i64
  br label %24

; <label>:24:                                     ; preds = %39, %20
  %25 = phi i64 [ 0, %20 ], [ %40, %39 ]
  %26 = load %struct.TValue*, %struct.TValue** %22, align 8, !tbaa !67
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
  %36 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %35)
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
  %43 = load %union.Node*, %union.Node** %10, align 8, !tbaa !65
  %44 = icmp ult %union.Node* %43, %17
  br i1 %44, label %45, label %68

; <label>:45:                                     ; preds = %42
  br label %46

; <label>:46:                                     ; preds = %45, %65
  %47 = phi %union.Node* [ %66, %65 ], [ %43, %45 ]
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
  %57 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

; <label>:59:                                     ; preds = %55
  store i8 16, i8* %48, align 8, !tbaa !22
  br label %60

; <label>:60:                                     ; preds = %55, %59
  %61 = load i8, i8* %48, align 8, !tbaa !22
  %62 = and i8 %61, 15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %60
  tail call fastcc void @clearkey(%union.Node* nonnull %47)
  br label %65

; <label>:65:                                     ; preds = %60, %64
  %66 = getelementptr inbounds %union.Node, %union.Node* %47, i64 1
  %67 = icmp ult %union.Node* %66, %17
  br i1 %67, label %46, label %68

; <label>:68:                                     ; preds = %65, %42
  %69 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 3, i32 0
  %70 = load %struct.GCObject*, %struct.GCObject** %69, align 8, !tbaa !22
  %71 = icmp eq %struct.GCObject* %70, %2
  br i1 %71, label %72, label %6

; <label>:72:                                     ; preds = %68, %3
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %7)
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

; Function Attrs: nounwind uwtable
define internal fastcc void @clearbykeys(%struct.global_State*, %struct.GCObject* readonly) unnamed_addr #0 {
  %3 = icmp eq %struct.GCObject* %1, null
  br i1 %3, label %47, label %4

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %43
  %6 = phi %struct.GCObject* [ %45, %43 ], [ %1, %4 ]
  %7 = bitcast %struct.GCObject* %6 to %struct.Table*
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 1, i32 1
  %9 = bitcast i8* %8 to %union.Node**
  %10 = load %union.Node*, %union.Node** %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %7, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !66
  %13 = zext i8 %12 to i32
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.Node, %union.Node* %10, i64 %15
  %17 = icmp eq i8 %12, 31
  br i1 %17, label %43, label %18

; <label>:18:                                     ; preds = %5
  br label %19

; <label>:19:                                     ; preds = %18, %40
  %20 = phi %union.Node* [ %41, %40 ], [ %10, %18 ]
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
  %30 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 1
  store i8 16, i8* %33, align 8, !tbaa !22
  br label %34

; <label>:34:                                     ; preds = %28, %32
  %35 = getelementptr inbounds %union.Node, %union.Node* %20, i64 0, i32 0, i32 1
  %36 = load i8, i8* %35, align 8, !tbaa !22
  %37 = and i8 %36, 15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %34
  tail call fastcc void @clearkey(%union.Node* nonnull %20)
  br label %40

; <label>:40:                                     ; preds = %34, %39
  %41 = getelementptr inbounds %union.Node, %union.Node* %20, i64 1
  %42 = icmp ult %union.Node* %41, %16
  br i1 %42, label %19, label %43

; <label>:43:                                     ; preds = %40, %5
  %44 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 3, i32 0
  %45 = load %struct.GCObject*, %struct.GCObject** %44, align 8, !tbaa !22
  %46 = icmp eq %struct.GCObject* %45, null
  br i1 %46, label %47, label %5

; <label>:47:                                     ; preds = %43, %2
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
  switch i8 %12, label %42 [
    i8 5, label %13
    i8 7, label %16
    i8 22, label %20
    i8 54, label %24
    i8 10, label %28
    i8 8, label %32
  ]

; <label>:13:                                     ; preds = %1
  %14 = bitcast %struct.GCObject* %3 to %struct.Table*
  %15 = tail call fastcc i64 @traversetable(%struct.global_State* nonnull %0, %struct.Table* %14)
  br label %42

; <label>:16:                                     ; preds = %1
  %17 = bitcast %struct.GCObject* %3 to %struct.Udata*
  %18 = tail call fastcc i32 @traverseudata(%struct.global_State* nonnull %0, %struct.Udata* %17)
  %19 = sext i32 %18 to i64
  br label %42

; <label>:20:                                     ; preds = %1
  %21 = bitcast %struct.GCObject* %3 to %struct.LClosure*
  %22 = tail call fastcc i32 @traverseLclosure(%struct.global_State* nonnull %0, %struct.LClosure* %21)
  %23 = sext i32 %22 to i64
  br label %42

; <label>:24:                                     ; preds = %1
  %25 = bitcast %struct.GCObject* %3 to %struct.CClosure*
  %26 = tail call fastcc i32 @traverseCclosure(%struct.global_State* nonnull %0, %struct.CClosure* %25)
  %27 = sext i32 %26 to i64
  br label %42

; <label>:28:                                     ; preds = %1
  %29 = bitcast %struct.GCObject* %3 to %struct.Proto*
  %30 = tail call fastcc i32 @traverseproto(%struct.global_State* nonnull %0, %struct.Proto* %29)
  %31 = sext i32 %30 to i64
  br label %42

; <label>:32:                                     ; preds = %1
  %33 = bitcast %struct.GCObject* %3 to %struct.lua_State*
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %35 = bitcast %struct.GCObject** %34 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !30
  %37 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %38 = bitcast i8* %37 to i64*
  store i64 %36, i64* %38, align 8, !tbaa !68
  store %struct.GCObject* %3, %struct.GCObject** %34, align 8, !tbaa !30
  %39 = and i8 %5, -33
  store i8 %39, i8* %4, align 1, !tbaa !15
  %40 = tail call fastcc i32 @traversethread(%struct.global_State* nonnull %0, %struct.lua_State* %33)
  %41 = sext i32 %40 to i64
  br label %42

; <label>:42:                                     ; preds = %1, %32, %28, %24, %20, %16, %13
  %43 = phi i64 [ %41, %32 ], [ %31, %28 ], [ %27, %24 ], [ %23, %20 ], [ %19, %16 ], [ %15, %13 ], [ 0, %1 ]
  ret i64 %43
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @traversetable(%struct.global_State*, %struct.Table*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 9
  %4 = load %struct.Table*, %struct.Table** %3, align 8, !tbaa !69
  %5 = icmp eq %struct.Table* %4, null
  br i1 %5, label %57, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %4, i64 0, i32 3
  %8 = load i8, i8* %7, align 2, !tbaa !34
  %9 = and i8 %8, 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 40, i64 3
  %13 = load %struct.TString*, %struct.TString** %12, align 8, !tbaa !29
  %14 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %4, i32 3, %struct.TString* %13) #6
  br label %15

; <label>:15:                                     ; preds = %6, %11
  %16 = phi %struct.TValue* [ null, %6 ], [ %14, %11 ]
  %17 = load %struct.Table*, %struct.Table** %3, align 8, !tbaa !69
  %18 = icmp eq %struct.Table* %17, null
  br i1 %18, label %26, label %19

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.Table, %struct.Table* %17, i64 0, i32 2
  %21 = load i8, i8* %20, align 1, !tbaa !26
  %22 = and i8 %21, 24
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %19
  %25 = bitcast %struct.Table* %17 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %25)
  br label %26

; <label>:26:                                     ; preds = %19, %15, %24
  %27 = icmp eq %struct.TValue* %16, null
  br i1 %27, label %57, label %28

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %16, i64 0, i32 1
  %30 = load i8, i8* %29, align 8, !tbaa !21
  %31 = and i8 %30, 15
  %32 = icmp eq i8 %31, 4
  br i1 %32, label %33, label %57

; <label>:33:                                     ; preds = %28
  %34 = bitcast %struct.TValue* %16 to i8**
  %35 = load i8*, i8** %34, align 8, !tbaa !22
  %36 = getelementptr inbounds i8, i8* %35, i64 24
  %37 = tail call i8* @strchr(i8* nonnull %36, i32 107) #7
  %38 = tail call i8* @strchr(i8* nonnull %36, i32 118) #7
  %39 = icmp ne i8* %37, null
  %40 = icmp ne i8* %38, null
  %41 = or i1 %39, %40
  br i1 %41, label %42, label %57

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %44 = load i8, i8* %43, align 1, !tbaa !26
  %45 = and i8 %44, -33
  store i8 %45, i8* %43, align 1, !tbaa !26
  br i1 %39, label %47, label %46

; <label>:46:                                     ; preds = %42
  tail call fastcc void @traverseweakvalue(%struct.global_State* %0, %struct.Table* nonnull %1)
  br label %58

; <label>:47:                                     ; preds = %42
  br i1 %40, label %50, label %48

; <label>:48:                                     ; preds = %47
  %49 = tail call fastcc i32 @traverseephemeron(%struct.global_State* %0, %struct.Table* nonnull %1)
  br label %58

; <label>:50:                                     ; preds = %47
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %52 = bitcast %struct.GCObject** %51 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !59
  %54 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %55 = bitcast %struct.GCObject** %54 to i64*
  store i64 %53, i64* %55, align 8, !tbaa !70
  %56 = bitcast %struct.GCObject** %51 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %56, align 8, !tbaa !59
  br label %58

; <label>:57:                                     ; preds = %2, %26, %33, %28
  tail call fastcc void @traversestrongtable(%struct.global_State* %0, %struct.Table* nonnull %1)
  br label %58

; <label>:58:                                     ; preds = %46, %50, %48, %57
  %59 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  %60 = load i32, i32* %59, align 4, !tbaa !71
  %61 = add i32 %60, 1
  %62 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 8
  %63 = load %union.Node*, %union.Node** %62, align 8, !tbaa !72
  %64 = icmp eq %union.Node* %63, null
  br i1 %64, label %70, label %65

; <label>:65:                                     ; preds = %58
  %66 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %67 = load i8, i8* %66, align 1, !tbaa !66
  %68 = zext i8 %67 to i32
  %69 = shl i32 2, %68
  br label %70

; <label>:70:                                     ; preds = %58, %65
  %71 = phi i32 [ %69, %65 ], [ 0, %58 ]
  %72 = add i32 %61, %71
  %73 = zext i32 %72 to i64
  ret i64 %73
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @traverseudata(%struct.global_State*, %struct.Udata*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Udata, %struct.Udata* %1, i64 0, i32 5
  %4 = load %struct.Table*, %struct.Table** %3, align 8, !tbaa !25
  %5 = icmp eq %struct.Table* %4, null
  br i1 %5, label %13, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Table, %struct.Table* %4, i64 0, i32 2
  %8 = load i8, i8* %7, align 1, !tbaa !26
  %9 = and i8 %8, 24
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %6
  %12 = bitcast %struct.Table* %4 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %12)
  br label %13

; <label>:13:                                     ; preds = %6, %2, %11
  %14 = getelementptr inbounds %struct.Udata, %struct.Udata* %1, i64 0, i32 3
  %15 = load i16, i16* %14, align 2, !tbaa !23
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %40, label %17

; <label>:17:                                     ; preds = %13
  br label %18

; <label>:18:                                     ; preds = %17, %32
  %19 = phi i64 [ %33, %32 ], [ 0, %17 ]
  %20 = getelementptr inbounds %struct.Udata, %struct.Udata* %1, i64 0, i32 7, i64 %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !22
  %22 = and i8 %21, 64
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

; <label>:24:                                     ; preds = %18
  %25 = getelementptr inbounds %struct.Udata, %struct.Udata* %1, i64 0, i32 7, i64 %19, i32 0, i32 0, i32 0
  %26 = load %struct.GCObject*, %struct.GCObject** %25, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %26, i64 0, i32 2
  %28 = load i8, i8* %27, align 1, !tbaa !15
  %29 = and i8 %28, 24
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %24
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %26)
  br label %32

; <label>:32:                                     ; preds = %24, %18, %31
  %33 = add nuw nsw i64 %19, 1
  %34 = load i16, i16* %14, align 2, !tbaa !23
  %35 = zext i16 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %18, label %37

; <label>:37:                                     ; preds = %32
  %38 = zext i16 %34 to i32
  %39 = add nuw nsw i32 %38, 1
  br label %40

; <label>:40:                                     ; preds = %37, %13
  %41 = phi i32 [ 1, %13 ], [ %39, %37 ]
  %42 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %43 = load i8, i8* %42, align 2, !tbaa !40
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %55

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %47 = bitcast %struct.GCObject** %46 to i64*
  %48 = load i64, i64* %47, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.Udata, %struct.Udata* %1, i64 0, i32 6
  %50 = bitcast %struct.GCObject** %49 to i64*
  store i64 %48, i64* %50, align 8, !tbaa !73
  %51 = bitcast %struct.GCObject** %46 to %struct.Udata**
  store %struct.Udata* %1, %struct.Udata** %51, align 8, !tbaa !30
  %52 = getelementptr inbounds %struct.Udata, %struct.Udata* %1, i64 0, i32 2
  %53 = load i8, i8* %52, align 1, !tbaa !74
  %54 = and i8 %53, -33
  store i8 %54, i8* %52, align 1, !tbaa !74
  br label %55

; <label>:55:                                     ; preds = %45, %40
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @traverseLclosure(%struct.global_State*, %struct.LClosure* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 5
  %4 = load %struct.Proto*, %struct.Proto** %3, align 8, !tbaa !75
  %5 = icmp eq %struct.Proto* %4, null
  br i1 %5, label %13, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %4, i64 0, i32 2
  %8 = load i8, i8* %7, align 1, !tbaa !77
  %9 = and i8 %8, 24
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %6
  %12 = bitcast %struct.Proto* %4 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %12)
  br label %13

; <label>:13:                                     ; preds = %6, %2, %11
  %14 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 3
  %15 = load i8, i8* %14, align 2, !tbaa !79
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %38, label %17

; <label>:17:                                     ; preds = %13
  br label %18

; <label>:18:                                     ; preds = %17, %30
  %19 = phi i64 [ %31, %30 ], [ 0, %17 ]
  %20 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %1, i64 0, i32 6, i64 %19
  %21 = load %struct.UpVal*, %struct.UpVal** %20, align 8, !tbaa !29
  %22 = icmp eq %struct.UpVal* %21, null
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i64 0, i32 2
  %25 = load i8, i8* %24, align 1, !tbaa !64
  %26 = and i8 %25, 24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %23
  %29 = bitcast %struct.UpVal* %21 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %29)
  br label %30

; <label>:30:                                     ; preds = %23, %18, %28
  %31 = add nuw nsw i64 %19, 1
  %32 = load i8, i8* %14, align 2, !tbaa !79
  %33 = zext i8 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %18, label %35

; <label>:35:                                     ; preds = %30
  %36 = zext i8 %32 to i32
  %37 = add nuw nsw i32 %36, 1
  br label %38

; <label>:38:                                     ; preds = %35, %13
  %39 = phi i32 [ 1, %13 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @traverseCclosure(%struct.global_State*, %struct.CClosure* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %1, i64 0, i32 3
  %4 = load i8, i8* %3, align 2, !tbaa !80
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %21
  %8 = phi i64 [ %22, %21 ], [ 0, %6 ]
  %9 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %1, i64 0, i32 6, i64 %8, i32 1
  %10 = load i8, i8* %9, align 8, !tbaa !21
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %1, i64 0, i32 6, i64 %8, i32 0, i32 0
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %15, i64 0, i32 2
  %17 = load i8, i8* %16, align 1, !tbaa !15
  %18 = and i8 %17, 24
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

; <label>:20:                                     ; preds = %13
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %15)
  br label %21

; <label>:21:                                     ; preds = %13, %7, %20
  %22 = add nuw nsw i64 %8, 1
  %23 = load i8, i8* %3, align 2, !tbaa !80
  %24 = zext i8 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %7, label %26

; <label>:26:                                     ; preds = %21
  %27 = zext i8 %23 to i32
  %28 = add nuw nsw i32 %27, 1
  br label %29

; <label>:29:                                     ; preds = %26, %2
  %30 = phi i32 [ 1, %2 ], [ %28, %26 ]
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @traverseproto(%struct.global_State*, %struct.Proto* nocapture readonly) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 22
  %4 = load %struct.TString*, %struct.TString** %3, align 8, !tbaa !82
  %5 = icmp eq %struct.TString* %4, null
  br i1 %5, label %13, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.TString, %struct.TString* %4, i64 0, i32 2
  %8 = load i8, i8* %7, align 1, !tbaa !83
  %9 = and i8 %8, 24
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %6
  %12 = bitcast %struct.TString* %4 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %12)
  br label %13

; <label>:13:                                     ; preds = %6, %2, %11
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  %15 = load i32, i32* %14, align 4, !tbaa !85
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %39

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15
  br label %19

; <label>:19:                                     ; preds = %17, %34
  %20 = phi i64 [ 0, %17 ], [ %35, %34 ]
  %21 = load %struct.TValue*, %struct.TValue** %18, align 8, !tbaa !86
  %22 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i64 %20, i32 1
  %23 = load i8, i8* %22, align 8, !tbaa !21
  %24 = and i8 %23, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %34, label %26

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.TValue, %struct.TValue* %21, i64 %20, i32 0, i32 0
  %28 = load %struct.GCObject*, %struct.GCObject** %27, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %28, i64 0, i32 2
  %30 = load i8, i8* %29, align 1, !tbaa !15
  %31 = and i8 %30, 24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

; <label>:33:                                     ; preds = %26
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %28)
  br label %34

; <label>:34:                                     ; preds = %26, %19, %33
  %35 = add nuw nsw i64 %20, 1
  %36 = load i32, i32* %14, align 4, !tbaa !85
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %19, label %39

; <label>:39:                                     ; preds = %34, %13
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %41 = load i32, i32* %40, align 8, !tbaa !87
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %63

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 18
  br label %45

; <label>:45:                                     ; preds = %43, %58
  %46 = phi i64 [ 0, %43 ], [ %59, %58 ]
  %47 = load %struct.Upvaldesc*, %struct.Upvaldesc** %44, align 8, !tbaa !88
  %48 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %47, i64 %46, i32 0
  %49 = load %struct.TString*, %struct.TString** %48, align 8, !tbaa !89
  %50 = icmp eq %struct.TString* %49, null
  br i1 %50, label %58, label %51

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds %struct.TString, %struct.TString* %49, i64 0, i32 2
  %53 = load i8, i8* %52, align 1, !tbaa !83
  %54 = and i8 %53, 24
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %51
  %57 = bitcast %struct.TString* %49 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %57)
  br label %58

; <label>:58:                                     ; preds = %51, %45, %56
  %59 = add nuw nsw i64 %46, 1
  %60 = load i32, i32* %40, align 8, !tbaa !87
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %45, label %63

; <label>:63:                                     ; preds = %58, %39
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10
  %65 = load i32, i32* %64, align 8, !tbaa !91
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %87

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 17
  br label %69

; <label>:69:                                     ; preds = %67, %82
  %70 = phi i64 [ 0, %67 ], [ %83, %82 ]
  %71 = load %struct.Proto**, %struct.Proto*** %68, align 8, !tbaa !92
  %72 = getelementptr inbounds %struct.Proto*, %struct.Proto** %71, i64 %70
  %73 = load %struct.Proto*, %struct.Proto** %72, align 8, !tbaa !29
  %74 = icmp eq %struct.Proto* %73, null
  br i1 %74, label %82, label %75

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds %struct.Proto, %struct.Proto* %73, i64 0, i32 2
  %77 = load i8, i8* %76, align 1, !tbaa !77
  %78 = and i8 %77, 24
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

; <label>:80:                                     ; preds = %75
  %81 = bitcast %struct.Proto* %73 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %81)
  br label %82

; <label>:82:                                     ; preds = %75, %69, %80
  %83 = add nuw nsw i64 %70, 1
  %84 = load i32, i32* %64, align 8, !tbaa !91
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %69, label %87

; <label>:87:                                     ; preds = %82, %63
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11
  %89 = load i32, i32* %88, align 4, !tbaa !93
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %111

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 21
  br label %93

; <label>:93:                                     ; preds = %91, %106
  %94 = phi i64 [ 0, %91 ], [ %107, %106 ]
  %95 = load %struct.LocVar*, %struct.LocVar** %92, align 8, !tbaa !94
  %96 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %95, i64 %94, i32 0
  %97 = load %struct.TString*, %struct.TString** %96, align 8, !tbaa !95
  %98 = icmp eq %struct.TString* %97, null
  br i1 %98, label %106, label %99

; <label>:99:                                     ; preds = %93
  %100 = getelementptr inbounds %struct.TString, %struct.TString* %97, i64 0, i32 2
  %101 = load i8, i8* %100, align 1, !tbaa !83
  %102 = and i8 %101, 24
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104

; <label>:104:                                    ; preds = %99
  %105 = bitcast %struct.TString* %97 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %105)
  br label %106

; <label>:106:                                    ; preds = %99, %93, %104
  %107 = add nuw nsw i64 %94, 1
  %108 = load i32, i32* %88, align 4, !tbaa !93
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %93, label %111

; <label>:111:                                    ; preds = %106, %87
  %112 = phi i32 [ %89, %87 ], [ %108, %106 ]
  %113 = load i32, i32* %14, align 4, !tbaa !85
  %114 = load i32, i32* %40, align 8, !tbaa !87
  %115 = load i32, i32* %64, align 8, !tbaa !91
  %116 = add i32 %112, 1
  %117 = add i32 %116, %113
  %118 = add i32 %117, %114
  %119 = add i32 %118, %115
  ret i32 %119
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @traversethread(%struct.global_State*, %struct.lua_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 11
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !97
  %5 = icmp eq %union.StackValue* %4, null
  br i1 %5, label %89, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 6
  %8 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !98
  %9 = icmp ult %union.StackValue* %4, %8
  br i1 %9, label %10, label %29

; <label>:10:                                     ; preds = %6
  br label %11

; <label>:11:                                     ; preds = %10, %25
  %12 = phi %union.StackValue* [ %26, %25 ], [ %4, %10 ]
  %13 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 0, i32 0, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !22
  %15 = and i8 %14, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 0, i32 0, i32 0, i32 0
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %19, i64 0, i32 2
  %21 = load i8, i8* %20, align 1, !tbaa !15
  %22 = and i8 %21, 24
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %17
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %19)
  br label %25

; <label>:25:                                     ; preds = %17, %11, %24
  %26 = getelementptr inbounds %union.StackValue, %union.StackValue* %12, i64 1
  %27 = load %union.StackValue*, %union.StackValue** %7, align 8, !tbaa !98
  %28 = icmp ult %union.StackValue* %26, %27
  br i1 %28, label %11, label %29

; <label>:29:                                     ; preds = %25, %6
  %30 = phi %union.StackValue* [ %4, %6 ], [ %26, %25 ]
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 12
  %32 = load %struct.UpVal*, %struct.UpVal** %31, align 8, !tbaa !22
  %33 = icmp eq %struct.UpVal* %32, null
  br i1 %33, label %51, label %34

; <label>:34:                                     ; preds = %29
  br label %35

; <label>:35:                                     ; preds = %34, %47
  %36 = phi %struct.UpVal* [ %49, %47 ], [ %32, %34 ]
  %37 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %36, i64 0, i32 1
  %38 = load i8, i8* %37, align 8, !tbaa !99
  %39 = icmp eq i8 %38, 25
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %36, i64 0, i32 2
  %42 = load i8, i8* %41, align 1, !tbaa !64
  %43 = and i8 %42, 24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

; <label>:45:                                     ; preds = %40
  %46 = bitcast %struct.UpVal* %36 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %46)
  br label %47

; <label>:47:                                     ; preds = %40, %35, %45
  %48 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %36, i64 0, i32 4, i32 0, i32 0
  %49 = load %struct.UpVal*, %struct.UpVal** %48, align 8, !tbaa !22
  %50 = icmp eq %struct.UpVal* %49, null
  br i1 %50, label %51, label %35

; <label>:51:                                     ; preds = %47, %29
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %53 = load i8, i8* %52, align 1, !tbaa !11
  %54 = icmp eq i8 %53, 2
  br i1 %54, label %55, label %80

; <label>:55:                                     ; preds = %51
  %56 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !97
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 20
  %58 = load i32, i32* %57, align 4, !tbaa !100
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %union.StackValue, %union.StackValue* %56, i64 %59
  %61 = icmp ult %union.StackValue* %30, %60
  br i1 %61, label %62, label %68

; <label>:62:                                     ; preds = %55
  br label %63

; <label>:63:                                     ; preds = %62, %63
  %64 = phi %union.StackValue* [ %66, %63 ], [ %30, %62 ]
  %65 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 0, i32 0, i32 1
  store i8 0, i8* %65, align 8, !tbaa !22
  %66 = getelementptr inbounds %union.StackValue, %union.StackValue* %64, i64 1
  %67 = icmp ult %union.StackValue* %66, %60
  br i1 %67, label %63, label %68

; <label>:68:                                     ; preds = %63, %55
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 14
  %70 = load %struct.lua_State*, %struct.lua_State** %69, align 8, !tbaa !63
  %71 = icmp eq %struct.lua_State* %70, %1
  br i1 %71, label %72, label %85

; <label>:72:                                     ; preds = %68
  %73 = load %struct.UpVal*, %struct.UpVal** %31, align 8, !tbaa !62
  %74 = icmp eq %struct.UpVal* %73, null
  br i1 %74, label %85, label %75

; <label>:75:                                     ; preds = %72
  %76 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 36
  %77 = bitcast %struct.lua_State** %76 to i64*
  %78 = load i64, i64* %77, align 8, !tbaa !101
  %79 = bitcast %struct.lua_State** %69 to i64*
  store i64 %78, i64* %79, align 8, !tbaa !63
  store %struct.lua_State* %1, %struct.lua_State** %76, align 8, !tbaa !101
  br label %85

; <label>:80:                                     ; preds = %51
  %81 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 16
  %82 = load i8, i8* %81, align 2, !tbaa !49
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %80
  tail call void @luaD_shrinkstack(%struct.lua_State* %1) #6
  br label %85

; <label>:85:                                     ; preds = %75, %68, %72, %80, %84
  %86 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 20
  %87 = load i32, i32* %86, align 4, !tbaa !100
  %88 = add nsw i32 %87, 1
  br label %89

; <label>:89:                                     ; preds = %2, %85
  %90 = phi i32 [ %88, %85 ], [ 1, %2 ]
  ret i32 %90
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @traverseweakvalue(%struct.global_State*, %struct.Table*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %6 = load i8, i8* %5, align 1, !tbaa !66
  %7 = zext i8 %6 to i32
  %8 = shl i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %union.Node, %union.Node* %4, i64 %9
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 5
  %12 = load i32, i32* %11, align 4, !tbaa !71
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = icmp eq i8 %6, 31
  br i1 %15, label %56, label %16

; <label>:16:                                     ; preds = %2
  br label %17

; <label>:17:                                     ; preds = %16, %52
  %18 = phi i32 [ %53, %52 ], [ %14, %16 ]
  %19 = phi %union.Node* [ %54, %52 ], [ %4, %16 ]
  %20 = getelementptr inbounds %union.Node, %union.Node* %19, i64 0, i32 0, i32 1
  %21 = load i8, i8* %20, align 8, !tbaa !22
  %22 = and i8 %21, 15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %17
  tail call fastcc void @clearkey(%union.Node* nonnull %19)
  br label %52

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %union.Node, %union.Node* %19, i64 0, i32 0, i32 2
  %27 = load i8, i8* %26, align 1, !tbaa !22
  %28 = and i8 %27, 64
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %union.Node, %union.Node* %19, i64 0, i32 0, i32 4, i32 0
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %32, i64 0, i32 2
  %34 = load i8, i8* %33, align 1, !tbaa !15
  %35 = and i8 %34, 24
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %30
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %32)
  br label %38

; <label>:38:                                     ; preds = %30, %25, %37
  %39 = icmp eq i32 %18, 0
  br i1 %39, label %40, label %52

; <label>:40:                                     ; preds = %38
  %41 = load i8, i8* %20, align 8, !tbaa !22
  %42 = and i8 %41, 64
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %union.Node, %union.Node* %19, i64 0, i32 0, i32 0, i32 0
  %46 = load %struct.GCObject*, %struct.GCObject** %45, align 8, !tbaa !22
  br label %47

; <label>:47:                                     ; preds = %40, %44
  %48 = phi %struct.GCObject* [ %46, %44 ], [ null, %40 ]
  %49 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %48)
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 %18, i32 1
  br label %52

; <label>:52:                                     ; preds = %47, %38, %24
  %53 = phi i32 [ %18, %24 ], [ %18, %38 ], [ %51, %47 ]
  %54 = getelementptr inbounds %union.Node, %union.Node* %19, i64 1
  %55 = icmp ult %union.Node* %54, %10
  br i1 %55, label %17, label %56

; <label>:56:                                     ; preds = %52, %2
  %57 = phi i32 [ %14, %2 ], [ %53, %52 ]
  %58 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %59 = load i8, i8* %58, align 1, !tbaa !11
  %60 = icmp eq i8 %59, 2
  %61 = icmp ne i32 %57, 0
  %62 = and i1 %61, %60
  %63 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %64 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 25
  %65 = select i1 %62, %struct.GCObject** %64, %struct.GCObject** %63
  %66 = select i1 %62, %struct.GCObject** %64, %struct.GCObject** %63
  %67 = bitcast %struct.GCObject** %65 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !29
  %69 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %70 = bitcast %struct.GCObject** %69 to i64*
  store i64 %68, i64* %70, align 8, !tbaa !70
  %71 = bitcast %struct.GCObject** %66 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %71, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @traverseephemeron(%struct.global_State*, %struct.Table*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %6 = load i8, i8* %5, align 1, !tbaa !66
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
  %19 = load %struct.TValue*, %struct.TValue** %14, align 8, !tbaa !67
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
  %38 = load %union.Node*, %union.Node** %3, align 8, !tbaa !65
  %39 = icmp ult %union.Node* %38, %10
  br i1 %39, label %40, label %90

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %40, %84
  %42 = phi i32 [ %87, %84 ], [ %37, %40 ]
  %43 = phi i32 [ %86, %84 ], [ 0, %40 ]
  %44 = phi %union.Node* [ %88, %84 ], [ %38, %40 ]
  %45 = phi i32 [ %85, %84 ], [ 0, %40 ]
  %46 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 1
  %47 = load i8, i8* %46, align 8, !tbaa !22
  %48 = and i8 %47, 15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %41
  tail call fastcc void @clearkey(%union.Node* nonnull %44)
  br label %84

; <label>:51:                                     ; preds = %41
  %52 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 2
  %53 = load i8, i8* %52, align 1, !tbaa !22
  %54 = and i8 %53, 64
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 4, i32 0
  %58 = load %struct.GCObject*, %struct.GCObject** %57, align 8, !tbaa !22
  br label %59

; <label>:59:                                     ; preds = %51, %56
  %60 = phi %struct.GCObject* [ %58, %56 ], [ null, %51 ]
  %61 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %60)
  %62 = icmp eq i32 %61, 0
  %63 = load i8, i8* %46, align 8, !tbaa !22
  %64 = and i8 %63, 64
  %65 = icmp eq i8 %64, 0
  br i1 %62, label %75, label %66

; <label>:66:                                     ; preds = %59
  br i1 %65, label %84, label %67

; <label>:67:                                     ; preds = %66
  %68 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 0, i32 0
  %69 = load %struct.GCObject*, %struct.GCObject** %68, align 8, !tbaa !22
  %70 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %69, i64 0, i32 2
  %71 = load i8, i8* %70, align 1, !tbaa !15
  %72 = and i8 %71, 24
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, i32 %45, i32 1
  br label %84

; <label>:75:                                     ; preds = %59
  br i1 %65, label %84, label %76

; <label>:76:                                     ; preds = %75
  %77 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 0, i32 0
  %78 = load %struct.GCObject*, %struct.GCObject** %77, align 8, !tbaa !22
  %79 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %78, i64 0, i32 2
  %80 = load i8, i8* %79, align 1, !tbaa !15
  %81 = and i8 %80, 24
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %84, label %83

; <label>:83:                                     ; preds = %76
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %78)
  br label %84

; <label>:84:                                     ; preds = %67, %66, %76, %75, %50, %83
  %85 = phi i32 [ %45, %50 ], [ %45, %66 ], [ %45, %83 ], [ %45, %76 ], [ %45, %75 ], [ %74, %67 ]
  %86 = phi i32 [ %43, %50 ], [ 1, %66 ], [ %43, %83 ], [ %43, %76 ], [ %43, %75 ], [ 1, %67 ]
  %87 = phi i32 [ %42, %50 ], [ %42, %66 ], [ 1, %83 ], [ %42, %76 ], [ %42, %75 ], [ %42, %67 ]
  %88 = getelementptr inbounds %union.Node, %union.Node* %44, i64 1
  %89 = icmp ult %union.Node* %88, %10
  br i1 %89, label %41, label %90

; <label>:90:                                     ; preds = %84, %36
  %91 = phi i32 [ 0, %36 ], [ %85, %84 ]
  %92 = phi i32 [ 0, %36 ], [ %86, %84 ]
  %93 = phi i32 [ %37, %36 ], [ %87, %84 ]
  %94 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %95 = load i8, i8* %94, align 1, !tbaa !11
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %104

; <label>:97:                                     ; preds = %90
  %98 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %99 = bitcast %struct.GCObject** %98 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !30
  %101 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %102 = bitcast %struct.GCObject** %101 to i64*
  store i64 %100, i64* %102, align 8, !tbaa !70
  %103 = bitcast %struct.GCObject** %98 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %103, align 8, !tbaa !30
  br label %137

; <label>:104:                                    ; preds = %90
  %105 = icmp eq i32 %91, 0
  br i1 %105, label %113, label %106

; <label>:106:                                    ; preds = %104
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 26
  %108 = bitcast %struct.GCObject** %107 to i64*
  %109 = load i64, i64* %108, align 8, !tbaa !60
  %110 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %111 = bitcast %struct.GCObject** %110 to i64*
  store i64 %109, i64* %111, align 8, !tbaa !70
  %112 = bitcast %struct.GCObject** %107 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %112, align 8, !tbaa !60
  br label %137

; <label>:113:                                    ; preds = %104
  %114 = icmp eq i32 %92, 0
  br i1 %114, label %122, label %115

; <label>:115:                                    ; preds = %113
  %116 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %117 = bitcast %struct.GCObject** %116 to i64*
  %118 = load i64, i64* %117, align 8, !tbaa !59
  %119 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %120 = bitcast %struct.GCObject** %119 to i64*
  store i64 %118, i64* %120, align 8, !tbaa !70
  %121 = bitcast %struct.GCObject** %116 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %121, align 8, !tbaa !59
  br label %137

; <label>:122:                                    ; preds = %113
  %123 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %124 = load i8, i8* %123, align 2, !tbaa !40
  %125 = icmp eq i8 %124, 1
  br i1 %125, label %126, label %133

; <label>:126:                                    ; preds = %122
  %127 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %128 = bitcast %struct.GCObject** %127 to i64*
  %129 = load i64, i64* %128, align 8, !tbaa !30
  %130 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %131 = bitcast %struct.GCObject** %130 to i64*
  store i64 %129, i64* %131, align 8, !tbaa !70
  %132 = bitcast %struct.GCObject** %127 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %132, align 8, !tbaa !30
  br label %137

; <label>:133:                                    ; preds = %122
  %134 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %135 = load i8, i8* %134, align 1, !tbaa !26
  %136 = or i8 %135, 32
  store i8 %136, i8* %134, align 1, !tbaa !26
  br label %137

; <label>:137:                                    ; preds = %106, %126, %133, %115, %97
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal fastcc void @traversestrongtable(%struct.global_State*, %struct.Table*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %6 = load i8, i8* %5, align 1, !tbaa !66
  %7 = zext i8 %6 to i32
  %8 = shl i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %union.Node, %union.Node* %4, i64 %9
  %11 = tail call i32 @luaH_realasize(%struct.Table* %1) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %15 = zext i32 %11 to i64
  br label %16

; <label>:16:                                     ; preds = %31, %13
  %17 = phi i64 [ 0, %13 ], [ %32, %31 ]
  %18 = load %struct.TValue*, %struct.TValue** %14, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 %17, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !21
  %21 = and i8 %20, 64
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %31, label %23

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 %17, i32 0, i32 0
  %25 = load %struct.GCObject*, %struct.GCObject** %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i64 0, i32 2
  %27 = load i8, i8* %26, align 1, !tbaa !15
  %28 = and i8 %27, 24
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %23
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %25)
  br label %31

; <label>:31:                                     ; preds = %23, %16, %30
  %32 = add nuw nsw i64 %17, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %16

; <label>:34:                                     ; preds = %31, %2
  %35 = load %union.Node*, %union.Node** %3, align 8, !tbaa !65
  %36 = icmp ult %union.Node* %35, %10
  br i1 %36, label %37, label %73

; <label>:37:                                     ; preds = %34
  br label %38

; <label>:38:                                     ; preds = %37, %70
  %39 = phi %union.Node* [ %71, %70 ], [ %35, %37 ]
  %40 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 1
  %41 = load i8, i8* %40, align 8, !tbaa !22
  %42 = and i8 %41, 15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %38
  tail call fastcc void @clearkey(%union.Node* nonnull %39)
  br label %70

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 2
  %47 = load i8, i8* %46, align 1, !tbaa !22
  %48 = and i8 %47, 64
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %58, label %50

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 4, i32 0
  %52 = load %struct.GCObject*, %struct.GCObject** %51, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %52, i64 0, i32 2
  %54 = load i8, i8* %53, align 1, !tbaa !15
  %55 = and i8 %54, 24
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %50
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %52)
  br label %58

; <label>:58:                                     ; preds = %50, %45, %57
  %59 = load i8, i8* %40, align 8, !tbaa !22
  %60 = and i8 %59, 64
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %70, label %62

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 0, i32 0
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8, !tbaa !22
  %65 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %64, i64 0, i32 2
  %66 = load i8, i8* %65, align 1, !tbaa !15
  %67 = and i8 %66, 24
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

; <label>:69:                                     ; preds = %62
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %64)
  br label %70

; <label>:70:                                     ; preds = %62, %58, %44, %69
  %71 = getelementptr inbounds %union.Node, %union.Node* %39, i64 1
  %72 = icmp ult %union.Node* %71, %10
  br i1 %72, label %38, label %73

; <label>:73:                                     ; preds = %70, %34
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %75 = load i8, i8* %74, align 2, !tbaa !40
  %76 = icmp eq i8 %75, 1
  br i1 %76, label %77, label %87

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %79 = bitcast %struct.GCObject** %78 to i64*
  %80 = load i64, i64* %79, align 8, !tbaa !30
  %81 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %82 = bitcast %struct.GCObject** %81 to i64*
  store i64 %80, i64* %82, align 8, !tbaa !70
  %83 = bitcast %struct.GCObject** %78 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %83, align 8, !tbaa !30
  %84 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %85 = load i8, i8* %84, align 1, !tbaa !26
  %86 = and i8 %85, -33
  store i8 %86, i8* %84, align 1, !tbaa !26
  br label %87

; <label>:87:                                     ; preds = %77, %73
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @clearkey(%union.Node* nocapture) unnamed_addr #2 {
  %2 = getelementptr inbounds %union.Node, %union.Node* %0, i64 0, i32 0, i32 2
  %3 = load i8, i8* %2, align 1, !tbaa !22
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %union.Node, %union.Node* %0, i64 0, i32 0, i32 4, i32 0
  %8 = load %struct.GCObject*, %struct.GCObject** %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %8, i64 0, i32 2
  %10 = load i8, i8* %9, align 1, !tbaa !15
  %11 = and i8 %10, 24
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %6
  store i8 5, i8* %2, align 1, !tbaa !22
  store %struct.GCObject* null, %struct.GCObject** %7, align 8, !tbaa !22
  br label %14

; <label>:14:                                     ; preds = %6, %1, %13
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %1)
  br label %17

; <label>:15:                                     ; preds = %4
  %16 = zext i8 %11 to i32
  br label %17

; <label>:17:                                     ; preds = %14, %12, %2, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %2 ], [ 0, %12 ], [ 0, %14 ]
  ret i32 %18
}

declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #4

declare hidden void @luaD_shrinkstack(%struct.lua_State*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %7)
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

; Function Attrs: nounwind uwtable
define internal fastcc void @finishgencycle(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  tail call fastcc void @correctgraylists(%struct.global_State* %1)
  tail call fastcc void @checkSizes(%struct.lua_State* %0, %struct.global_State* %1)
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %3, align 1, !tbaa !11
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 16
  %5 = load i8, i8* %4, align 2, !tbaa !49
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call fastcc void @callallpendingfinalizers(%struct.lua_State* %0)
  br label %8

; <label>:8:                                      ; preds = %2, %7
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @correctgraylists(%struct.global_State*) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %3 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** nonnull %2)
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 25
  %5 = bitcast %struct.GCObject** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !58
  %7 = bitcast %struct.GCObject** %3 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %4, align 8, !tbaa !58
  %8 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %3)
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %10 = bitcast %struct.GCObject** %9 to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !59
  %12 = bitcast %struct.GCObject** %8 to i64*
  store i64 %11, i64* %12, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %9, align 8, !tbaa !59
  %13 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %8)
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 26
  %15 = bitcast %struct.GCObject** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !60
  %17 = bitcast %struct.GCObject** %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %14, align 8, !tbaa !60
  %18 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checkSizes(%struct.lua_State*, %struct.global_State* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 16
  %4 = load i8, i8* %3, align 2, !tbaa !49
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %23

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !103
  %13 = sdiv i32 %12, 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %6
  %16 = sdiv i32 %12, 2
  tail call void @luaS_resize(%struct.lua_State* %0, i32 %16) #6
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = load i64, i64* %7, align 8, !tbaa !47
  %19 = sub i64 %18, %8
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  %21 = load i64, i64* %20, align 8, !tbaa !48
  %22 = add i64 %19, %21
  store i64 %22, i64* %20, align 8, !tbaa !48
  br label %23

; <label>:23:                                     ; preds = %2, %17
  ret void
}

; Function Attrs: norecurse nounwind uwtable
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
  %11 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %6)
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
  %28 = load i8, i8* %12, align 1, !tbaa !15
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
  %37 = load i8, i8* %36, align 1, !tbaa !56
  %38 = and i8 %37, 24
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 4, i32 1
  br i1 %39, label %46, label %41

; <label>:41:                                     ; preds = %35
  %42 = bitcast i8* %40 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !68
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

declare hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: norecurse nounwind uwtable
define internal fastcc void @whitelist(%struct.global_State* nocapture readonly, %struct.GCObject*) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 10
  %4 = load i8, i8* %3, align 4, !tbaa !17
  %5 = and i8 %4, 24
  %6 = icmp eq %struct.GCObject* %1, null
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %2
  br label %8

; <label>:8:                                      ; preds = %7, %8
  %9 = phi %struct.GCObject* [ %15, %8 ], [ %1, %7 ]
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = and i8 %11, -64
  %13 = or i8 %12, %5
  store i8 %13, i8* %10, align 1, !tbaa !15
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i64 0, i32 0
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8, !tbaa !31
  %16 = icmp eq %struct.GCObject* %15, null
  br i1 %16, label %17, label %8

; <label>:17:                                     ; preds = %8, %2
  ret void
}

; Function Attrs: norecurse nounwind readonly uwtable
define internal fastcc %struct.GCObject** @findlast(%struct.GCObject** readonly) unnamed_addr #3 {
  br label %2

; <label>:2:                                      ; preds = %2, %1
  %3 = phi %struct.GCObject** [ %0, %1 ], [ %6, %2 ]
  %4 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !29
  %5 = icmp eq %struct.GCObject* %4, null
  %6 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4, i64 0, i32 0
  br i1 %5, label %7, label %2

; <label>:7:                                      ; preds = %2
  ret %struct.GCObject** %3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @GCTM(%struct.lua_State*) unnamed_addr #0 {
  %2 = alloca %struct.TValue, align 8
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = bitcast %struct.TValue* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #6
  %6 = tail call fastcc %struct.GCObject* @udata2finalize(%struct.global_State* %4)
  %7 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 0, i32 0
  store %struct.GCObject* %6, %struct.GCObject** %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 0, i32 1
  %9 = load i8, i8* %8, align 8, !tbaa !18
  %10 = or i8 %9, 64
  %11 = getelementptr inbounds %struct.TValue, %struct.TValue* %2, i64 0, i32 1
  store i8 %10, i8* %11, align 8, !tbaa !21
  %12 = call %struct.TValue* @luaT_gettmbyobj(%struct.lua_State* %0, %struct.TValue* nonnull %2, i32 2) #6
  %13 = getelementptr inbounds %struct.TValue, %struct.TValue* %12, i64 0, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !21
  %15 = and i8 %14, 15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %68, label %17

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %19 = load i8, i8* %18, align 1, !tbaa !104
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 15
  %21 = load i8, i8* %20, align 1, !tbaa !50
  store i8 0, i8* %18, align 1, !tbaa !104
  store i8 0, i8* %20, align 1, !tbaa !50
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %23 = bitcast %union.StackValue** %22 to %struct.TValue**
  %24 = load %struct.TValue*, %struct.TValue** %23, align 8, !tbaa !98
  %25 = bitcast %struct.TValue* %12 to i64*
  %26 = bitcast %struct.TValue* %24 to i64*
  %27 = load i64, i64* %25, align 8
  store i64 %27, i64* %26, align 8
  %28 = load i8, i8* %13, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.TValue, %struct.TValue* %24, i64 0, i32 1
  store i8 %28, i8* %29, align 8, !tbaa !21
  %30 = load %union.StackValue*, %union.StackValue** %22, align 8, !tbaa !98
  %31 = getelementptr inbounds %union.StackValue, %union.StackValue* %30, i64 1, i32 0
  %32 = bitcast %struct.TValue* %2 to i64*
  %33 = bitcast %struct.TValue* %31 to i64*
  %34 = load i64, i64* %32, align 8
  store i64 %34, i64* %33, align 8
  %35 = load i8, i8* %11, align 8, !tbaa !21
  %36 = getelementptr inbounds %union.StackValue, %union.StackValue* %30, i64 1, i32 0, i32 1
  store i8 %35, i8* %36, align 8, !tbaa !21
  %37 = load %union.StackValue*, %union.StackValue** %22, align 8, !tbaa !98
  %38 = getelementptr inbounds %union.StackValue, %union.StackValue* %37, i64 2
  store %union.StackValue* %38, %union.StackValue** %22, align 8, !tbaa !98
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %40 = load %struct.CallInfo*, %struct.CallInfo** %39, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %40, i64 0, i32 7
  %42 = load i16, i16* %41, align 2, !tbaa !106
  %43 = or i16 %42, 64
  store i16 %43, i16* %41, align 2, !tbaa !106
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %45 = bitcast %union.StackValue** %44 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !97
  %47 = ptrtoint %union.StackValue* %37 to i64
  %48 = sub i64 %47, %46
  %49 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @dothecall, i8* null, i64 %48, i64 0) #6
  %50 = load %struct.CallInfo*, %struct.CallInfo** %39, align 8, !tbaa !105
  %51 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %50, i64 0, i32 7
  %52 = load i16, i16* %51, align 2, !tbaa !106
  %53 = and i16 %52, -65
  store i16 %53, i16* %51, align 2, !tbaa !106
  store i8 %19, i8* %18, align 1, !tbaa !104
  store i8 %21, i8* %20, align 1, !tbaa !50
  %54 = icmp eq i32 %49, 0
  br i1 %54, label %68, label %55

; <label>:55:                                     ; preds = %17
  %56 = load %union.StackValue*, %union.StackValue** %22, align 8, !tbaa !98
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %56, i64 -1, i32 0, i32 1
  %58 = load i8, i8* %57, align 8, !tbaa !22
  %59 = and i8 %58, 15
  %60 = icmp eq i8 %59, 4
  br i1 %60, label %61, label %66

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %union.StackValue, %union.StackValue* %56, i64 -1, i32 0, i32 0, i32 0
  %63 = bitcast %struct.GCObject** %62 to i8**
  %64 = load i8*, i8** %63, align 8, !tbaa !22
  %65 = getelementptr inbounds i8, i8* %64, i64 24
  br label %66

; <label>:66:                                     ; preds = %55, %61
  %67 = phi i8* [ %65, %61 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %55 ]
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 1) #6
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* nonnull %67, i32 1) #6
  call void @luaE_warning(%struct.lua_State* nonnull %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0) #6
  br label %68

; <label>:68:                                     ; preds = %66, %17, %1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #6
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal fastcc %struct.GCObject* @udata2finalize(%struct.global_State* nocapture) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 28
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !42
  %4 = bitcast %struct.GCObject* %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !31
  %6 = bitcast %struct.GCObject** %2 to i64*
  store i64 %5, i64* %6, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 20
  %8 = bitcast %struct.GCObject** %7 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !32
  store i64 %9, i64* %4, align 8, !tbaa !31
  store %struct.GCObject* %3, %struct.GCObject** %7, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = and i8 %11, -65
  store i8 %12, i8* %10, align 1, !tbaa !15
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %14 = load i8, i8* %13, align 1, !tbaa !11
  %15 = add i8 %14, -3
  %16 = icmp ult i8 %15, 4
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %1
  %18 = and i8 %11, -128
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 10
  %20 = load i8, i8* %19, align 4, !tbaa !17
  %21 = and i8 %20, 24
  %22 = or i8 %21, %18
  store i8 %22, i8* %10, align 1, !tbaa !15
  br label %23

; <label>:23:                                     ; preds = %17, %1
  ret %struct.GCObject* %3
}

declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #4

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @dothecall(%struct.lua_State*, i8* nocapture readnone) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 -2
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* nonnull %5, i32 0) #6
  ret void
}

declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #4

declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @restartcollection(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 38
  %4 = bitcast %struct.GCObject** %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %4, i8 0, i64 40, i32 8, i1 false)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 2
  %7 = load i8, i8* %6, align 1, !tbaa !56
  %8 = and i8 %7, 24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %1
  %11 = bitcast %struct.lua_State* %5 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %11)
  br label %12

; <label>:12:                                     ; preds = %1, %10
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 7, i32 1
  %14 = load i8, i8* %13, align 8, !tbaa !57
  %15 = and i8 %14, 64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 7, i32 0, i32 0
  %19 = load %struct.GCObject*, %struct.GCObject** %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %19, i64 0, i32 2
  %21 = load i8, i8* %20, align 1, !tbaa !15
  %22 = and i8 %21, 24
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %17
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %19)
  br label %25

; <label>:25:                                     ; preds = %17, %12, %24
  tail call fastcc void @markmt(%struct.global_State* nonnull %0)
  %26 = tail call fastcc i64 @markbeingfnz(%struct.global_State* nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @entersweep(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  store i8 3, i8* %4, align 1, !tbaa !11
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %6 = tail call fastcc %struct.GCObject** @sweeptolive(%struct.lua_State* %0, %struct.GCObject** nonnull %5)
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21
  store %struct.GCObject** %6, %struct.GCObject*** %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sweepstep(%struct.lua_State*, %struct.global_State* nocapture, i32, %struct.GCObject**) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 21
  %7 = load %struct.GCObject**, %struct.GCObject*** %6, align 8, !tbaa !35
  %8 = icmp eq %struct.GCObject** %7, null
  br i1 %8, label %20, label %9

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !47
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6
  %13 = call fastcc %struct.GCObject** @sweeplist(%struct.lua_State* %0, %struct.GCObject** nonnull %7, i32 100, i32* nonnull %5)
  store %struct.GCObject** %13, %struct.GCObject*** %6, align 8, !tbaa !35
  %14 = load i64, i64* %10, align 8, !tbaa !47
  %15 = sub i64 %14, %11
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  %17 = load i64, i64* %16, align 8, !tbaa !48
  %18 = add i64 %15, %17
  store i64 %18, i64* %16, align 8, !tbaa !48
  %19 = load i32, i32* %5, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6
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

; Function Attrs: nounwind uwtable
define internal fastcc i32 @runafewfinalizers(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  br label %5

; <label>:5:                                      ; preds = %1, %9
  %6 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %7 = load %struct.GCObject*, %struct.GCObject** %4, align 8, !tbaa !42
  %8 = icmp eq %struct.GCObject* %7, null
  br i1 %8, label %12, label %9

; <label>:9:                                      ; preds = %5
  tail call fastcc void @GCTM(%struct.lua_State* %0)
  %10 = add nuw nsw i32 %6, 1
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %5, label %12

; <label>:12:                                     ; preds = %5, %9
  %13 = phi i32 [ %6, %5 ], [ 10, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal fastcc void @stepgenfull(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 5
  %4 = load i64, i64* %3, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 12
  %6 = load i8, i8* %5, align 2, !tbaa !40
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call fastcc void @enterinc(%struct.global_State* nonnull %1)
  br label %9

; <label>:9:                                      ; preds = %8, %2
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 1)
  %10 = tail call fastcc i64 @atomic(%struct.lua_State* %0)
  %11 = lshr i64 %4, 3
  %12 = add i64 %11, %4
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %9
  tail call fastcc void @atomic2gen(%struct.lua_State* %0, %struct.global_State* nonnull %1)
  tail call fastcc void @setminordebt(%struct.global_State* nonnull %1)
  br label %22

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 2
  %17 = load i64, i64* %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %19 = load i64, i64* %18, align 8, !tbaa !47
  %20 = add nsw i64 %19, %17
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 4
  store i64 %20, i64* %21, align 8, !tbaa !48
  tail call fastcc void @entersweep(%struct.lua_State* %0)
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256)
  tail call fastcc void @setpause(%struct.global_State* nonnull %1)
  store i64 %10, i64* %3, align 8, !tbaa !41
  br label %22

; <label>:22:                                     ; preds = %15, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setminordebt(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 3
  %5 = load i64, i64* %4, align 8, !tbaa !47
  %6 = add nsw i64 %5, %3
  %7 = udiv i64 %6, 100
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 13
  %9 = load i8, i8* %8, align 1, !tbaa !107
  %10 = zext i8 %9 to i64
  %11 = sub nsw i64 0, %10
  %12 = mul i64 %7, %11
  tail call void @luaE_setdebt(%struct.global_State* %0, i64 %12) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setpause(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 17
  %3 = load i8, i8* %2, align 1, !tbaa !108
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 4
  %7 = load i64, i64* %6, align 8, !tbaa !48
  %8 = udiv i64 %7, 100
  %9 = udiv i64 9223372036854775807, %8
  %10 = icmp ult i64 %5, %9
  %11 = mul nsw i64 %8, %5
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 2
  %13 = load i64, i64* %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 3
  %15 = load i64, i64* %14, align 8, !tbaa !47
  %16 = add nsw i64 %15, %13
  %17 = sub nsw i64 0, %11
  %18 = select i1 %10, i64 %17, i64 -9223372036854775807
  %19 = add i64 %16, %18
  %20 = icmp slt i64 %19, 0
  %21 = select i1 %20, i64 %19, i64 0
  tail call void @luaE_setdebt(%struct.global_State* %0, i64 %21) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @youngcollection(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 30
  %4 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 32
  %6 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !38
  tail call fastcc void @markold(%struct.global_State* %1, %struct.GCObject* %4, %struct.GCObject* %6)
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 22
  %8 = load %struct.GCObject*, %struct.GCObject** %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 35
  %10 = load %struct.GCObject*, %struct.GCObject** %9, align 8, !tbaa !61
  tail call fastcc void @markold(%struct.global_State* %1, %struct.GCObject* %8, %struct.GCObject* %10)
  %11 = tail call fastcc i64 @atomic(%struct.lua_State* %0)
  %12 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 20
  %13 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !36
  %14 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* %0, %struct.global_State* %1, %struct.GCObject** nonnull %12, %struct.GCObject* %13)
  %15 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !38
  %16 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* %0, %struct.global_State* %1, %struct.GCObject** %14, %struct.GCObject* %15)
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 31
  %18 = bitcast %struct.GCObject** %17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !37
  %20 = bitcast %struct.GCObject** %5 to i64*
  store i64 %19, i64* %20, align 8, !tbaa !38
  %21 = bitcast %struct.GCObject** %14 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !29
  store i64 %22, i64* %18, align 8, !tbaa !37
  %23 = bitcast %struct.GCObject** %12 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !32
  %25 = bitcast %struct.GCObject** %3 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !36
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 33
  %27 = load %struct.GCObject*, %struct.GCObject** %26, align 8, !tbaa !45
  %28 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* %0, %struct.global_State* %1, %struct.GCObject** nonnull %7, %struct.GCObject* %27)
  %29 = load %struct.GCObject*, %struct.GCObject** %9, align 8, !tbaa !61
  %30 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* %0, %struct.global_State* %1, %struct.GCObject** %28, %struct.GCObject* %29)
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 34
  %32 = bitcast %struct.GCObject** %31 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !44
  %34 = bitcast %struct.GCObject** %9 to i64*
  store i64 %33, i64* %34, align 8, !tbaa !61
  %35 = bitcast %struct.GCObject** %28 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !29
  store i64 %36, i64* %32, align 8, !tbaa !44
  %37 = bitcast %struct.GCObject** %7 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !39
  %39 = bitcast %struct.GCObject** %26 to i64*
  store i64 %38, i64* %39, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 28
  %41 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* %0, %struct.global_State* %1, %struct.GCObject** nonnull %40, %struct.GCObject* null)
  tail call fastcc void @finishgencycle(%struct.lua_State* %0, %struct.global_State* %1)
  ret void
}

declare hidden void @luaE_setdebt(%struct.global_State*, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %7)
  br label %14

; <label>:14:                                     ; preds = %6, %12
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 0
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8, !tbaa !31
  %17 = icmp eq %struct.GCObject* %16, %2
  br i1 %17, label %18, label %6

; <label>:18:                                     ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %12)
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
  %30 = load i8, i8* %14, align 1, !tbaa !15
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
!41 = !{!12, !9, i64 40}
!42 = !{!12, !4, i64 176}
!43 = !{!12, !4, i64 256}
!44 = !{!12, !4, i64 224}
!45 = !{!12, !4, i64 216}
!46 = !{!12, !9, i64 16}
!47 = !{!12, !9, i64 24}
!48 = !{!12, !9, i64 32}
!49 = !{!12, !5, i64 106}
!50 = !{!12, !5, i64 105}
!51 = !{!12, !5, i64 104}
!52 = !{!12, !5, i64 108}
!53 = !{!12, !5, i64 109}
!54 = !{!10, !10, i64 0}
!55 = !{!24, !9, i64 16}
!56 = !{!3, !5, i64 9}
!57 = !{!12, !5, i64 72}
!58 = !{!12, !4, i64 152}
!59 = !{!12, !4, i64 168}
!60 = !{!12, !4, i64 160}
!61 = !{!12, !4, i64 232}
!62 = !{!3, !4, i64 64}
!63 = !{!3, !4, i64 80}
!64 = !{!20, !5, i64 9}
!65 = !{!27, !4, i64 24}
!66 = !{!27, !5, i64 11}
!67 = !{!27, !4, i64 16}
!68 = !{!3, !4, i64 72}
!69 = !{!27, !4, i64 40}
!70 = !{!27, !4, i64 48}
!71 = !{!27, !10, i64 12}
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
!97 = !{!3, !4, i64 56}
!98 = !{!3, !4, i64 16}
!99 = !{!20, !5, i64 8}
!100 = !{!3, !10, i64 180}
!101 = !{!12, !4, i64 240}
!102 = !{!12, !10, i64 56}
!103 = !{!12, !10, i64 60}
!104 = !{!3, !5, i64 11}
!105 = !{!3, !4, i64 32}
!106 = !{!8, !7, i64 62}
!107 = !{!12, !5, i64 103}
!108 = !{!12, !5, i64 107}
