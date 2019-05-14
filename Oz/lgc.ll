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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize norecurse nounwind optsize uwtable
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

; Function Attrs: minsize norecurse nounwind optsize readonly uwtable
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

; Function Attrs: minsize norecurse nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden i8* @luaM_malloc_(%struct.lua_State*, i64, i32) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
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
  %20 = tail call %struct.TValue* @luaT_gettm(%struct.Table* nonnull %2, i32 2, %struct.TString* %19) #7
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
  %39 = tail call fastcc %struct.GCObject** @sweeptolive(%struct.lua_State* nonnull %0, %struct.GCObject** %35) #6
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

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.GCObject** @sweeptolive(%struct.lua_State*, %struct.GCObject**) unnamed_addr #0 {
  br label %3

; <label>:3:                                      ; preds = %3, %2
  %4 = tail call fastcc %struct.GCObject** @sweeplist(%struct.lua_State* %0, %struct.GCObject** %1, i32 1, i32* null) #6
  %5 = icmp eq %struct.GCObject** %4, %1
  br i1 %5, label %3, label %6

; <label>:6:                                      ; preds = %3
  ret %struct.GCObject** %4
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @entergen(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 256) #6
  tail call void @luaC_runtilstate(%struct.lua_State* %0, i32 1) #6
  %3 = tail call fastcc i64 @atomic(%struct.lua_State* %0) #6
  tail call fastcc void @atomic2gen(%struct.lua_State* %0, %struct.global_State* %1) #6
  ret i64 %3
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @enterinc(%struct.global_State* nocapture) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 20
  %3 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !32
  tail call fastcc void @whitelist(%struct.global_State* %0, %struct.GCObject* %3) #6
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 30
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 22
  %6 = bitcast %struct.GCObject** %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 24, i32 8, i1 false)
  %7 = load %struct.GCObject*, %struct.GCObject** %5, align 8, !tbaa !39
  tail call fastcc void @whitelist(%struct.global_State* %0, %struct.GCObject* %7) #6
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 28
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8, !tbaa !42
  tail call fastcc void @whitelist(%struct.global_State* %0, %struct.GCObject* %9) #6
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

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaC_freeallobjects(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  tail call void @luaC_changemode(%struct.lua_State* %0, i32 0) #6
  tail call fastcc void @separatetobefnz(%struct.global_State* %3, i32 1) #6
  tail call fastcc void @callallpendingfinalizers(%struct.lua_State* %0) #6
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %5 = load %struct.GCObject*, %struct.GCObject** %4, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 38
  %7 = bitcast %struct.lua_State** %6 to %struct.GCObject**
  %8 = load %struct.GCObject*, %struct.GCObject** %7, align 8, !tbaa !43
  tail call fastcc void @deletelist(%struct.lua_State* %0, %struct.GCObject* %5, %struct.GCObject* %8) #6
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %10 = load %struct.GCObject*, %struct.GCObject** %9, align 8, !tbaa !39
  tail call fastcc void @deletelist(%struct.lua_State* %0, %struct.GCObject* %10, %struct.GCObject* null) #6
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 29
  %12 = load %struct.GCObject*, %struct.GCObject** %11, align 8, !tbaa !33
  tail call fastcc void @deletelist(%struct.lua_State* %0, %struct.GCObject* %12, %struct.GCObject* null) #6
  ret void
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
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
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 34
  %12 = icmp ne i32 %1, 0
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 33
  %14 = bitcast %struct.GCObject** %13 to i64*
  br label %15

; <label>:15:                                     ; preds = %30, %9
  %16 = phi %struct.GCObject** [ %31, %30 ], [ %10, %9 ]
  %17 = phi %struct.GCObject** [ %20, %30 ], [ %5, %9 ]
  %18 = bitcast %struct.GCObject** %16 to i64*
  br label %19

; <label>:19:                                     ; preds = %15, %38
  %20 = phi %struct.GCObject** [ %39, %38 ], [ %17, %15 ]
  %21 = load %struct.GCObject*, %struct.GCObject** %16, align 8, !tbaa !29
  %22 = load %struct.GCObject*, %struct.GCObject** %11, align 8, !tbaa !44
  %23 = icmp eq %struct.GCObject* %21, %22
  br i1 %23, label %42, label %24

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 0, i32 2
  %26 = load i8, i8* %25, align 1, !tbaa !15
  %27 = and i8 %26, 24
  %28 = icmp ne i8 %27, 0
  %29 = or i1 %12, %28
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 0, i32 0
  br label %15

; <label>:32:                                     ; preds = %24
  %33 = load %struct.GCObject*, %struct.GCObject** %13, align 8, !tbaa !45
  %34 = icmp eq %struct.GCObject* %21, %33
  %35 = bitcast %struct.GCObject* %21 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !31
  br i1 %34, label %37, label %38

; <label>:37:                                     ; preds = %32
  store i64 %36, i64* %14, align 8, !tbaa !45
  br label %38

; <label>:38:                                     ; preds = %32, %37
  %39 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %21, i64 0, i32 0
  store i64 %36, i64* %18, align 8, !tbaa !29
  %40 = bitcast %struct.GCObject** %20 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !29
  store i64 %41, i64* %35, align 8, !tbaa !31
  store %struct.GCObject* %21, %struct.GCObject** %20, align 8, !tbaa !29
  br label %19

; <label>:42:                                     ; preds = %19
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @callallpendingfinalizers(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  br label %5

; <label>:5:                                      ; preds = %8, %1
  %6 = load %struct.GCObject*, %struct.GCObject** %4, align 8, !tbaa !42
  %7 = icmp eq %struct.GCObject* %6, null
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %5
  tail call fastcc void @GCTM(%struct.lua_State* %0) #6
  br label %5

; <label>:9:                                      ; preds = %5
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @deletelist(%struct.lua_State*, %struct.GCObject*, %struct.GCObject* readnone) unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %7, %3
  %5 = phi %struct.GCObject* [ %1, %3 ], [ %9, %7 ]
  %6 = icmp eq %struct.GCObject* %5, %2
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 0, i32 0
  %9 = load %struct.GCObject*, %struct.GCObject** %8, align 8, !tbaa !31
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* %5) #6
  br label %4

; <label>:10:                                     ; preds = %4
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaC_runtilstate(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  br label %6

; <label>:6:                                      ; preds = %12, %2
  %7 = load i8, i8* %5, align 1, !tbaa !11
  %8 = zext i8 %7 to i32
  %9 = shl i32 1, %8
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %6
  %13 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #6
  br label %6

; <label>:14:                                     ; preds = %6
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @singlestep(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  %5 = load i8, i8* %4, align 1, !tbaa !11
  switch i8 %5, label %80 [
    i8 8, label %6
    i8 0, label %32
    i8 1, label %39
    i8 3, label %47
    i8 4, label %51
    i8 5, label %55
    i8 6, label %58
    i8 7, label %59
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
  br label %80

; <label>:32:                                     ; preds = %1
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %34 = load %struct.GCObject*, %struct.GCObject** %33, align 8, !tbaa !28
  %35 = icmp eq %struct.GCObject* %34, null
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %32
  store i8 1, i8* %4, align 1, !tbaa !11
  br label %80

; <label>:37:                                     ; preds = %32
  %38 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %3) #6
  br label %80

; <label>:39:                                     ; preds = %1
  %40 = tail call fastcc i64 @atomic(%struct.lua_State* nonnull %0) #6
  tail call fastcc void @entersweep(%struct.lua_State* nonnull %0) #6
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %42 = load i64, i64* %41, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %44 = load i64, i64* %43, align 8, !tbaa !49
  %45 = add nsw i64 %44, %42
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  store i64 %45, i64* %46, align 8, !tbaa !50
  br label %80

; <label>:47:                                     ; preds = %1
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %49 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 4, %struct.GCObject** nonnull %48) #6
  %50 = sext i32 %49 to i64
  br label %80

; <label>:51:                                     ; preds = %1
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %53 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 5, %struct.GCObject** nonnull %52) #6
  %54 = sext i32 %53 to i64
  br label %80

; <label>:55:                                     ; preds = %1
  %56 = tail call fastcc i32 @sweepstep(%struct.lua_State* nonnull %0, %struct.global_State* %3, i32 6, %struct.GCObject** null) #6
  %57 = sext i32 %56 to i64
  br label %80

; <label>:58:                                     ; preds = %1
  tail call fastcc void @checkSizes(%struct.lua_State* nonnull %0, %struct.global_State* %3) #6
  store i8 7, i8* %4, align 1, !tbaa !11
  br label %80

; <label>:59:                                     ; preds = %1
  %60 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %61 = load %struct.GCObject*, %struct.GCObject** %60, align 8, !tbaa !42
  %62 = icmp eq %struct.GCObject* %61, null
  br i1 %62, label %79, label %63

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 16
  %65 = load i8, i8* %64, align 2, !tbaa !51
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %79

; <label>:67:                                     ; preds = %63
  br label %68

; <label>:68:                                     ; preds = %67, %74
  %69 = phi i32 [ %75, %74 ], [ 0, %67 ]
  %70 = icmp ult i32 %69, 10
  br i1 %70, label %71, label %76

; <label>:71:                                     ; preds = %68
  %72 = load %struct.GCObject*, %struct.GCObject** %60, align 8, !tbaa !42
  %73 = icmp eq %struct.GCObject* %72, null
  br i1 %73, label %76, label %74

; <label>:74:                                     ; preds = %71
  tail call fastcc void @GCTM(%struct.lua_State* %0) #7
  %75 = add nuw nsw i32 %69, 1
  br label %68

; <label>:76:                                     ; preds = %68, %71
  %77 = mul nsw i32 %69, 50
  %78 = zext i32 %77 to i64
  br label %80

; <label>:79:                                     ; preds = %63, %59
  store i8 8, i8* %4, align 1, !tbaa !11
  br label %80

; <label>:80:                                     ; preds = %1, %79, %76, %58, %55, %51, %47, %39, %37, %36, %30
  %81 = phi i64 [ 0, %79 ], [ %78, %76 ], [ 0, %58 ], [ %57, %55 ], [ %54, %51 ], [ %50, %47 ], [ %40, %39 ], [ 0, %36 ], [ %38, %37 ], [ 1, %30 ], [ 0, %1 ]
  ret i64 %81
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 15
  %5 = load i8, i8* %4, align 1, !tbaa !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %133, label %7

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12
  %9 = load i8, i8* %8, align 2, !tbaa !40
  %10 = icmp eq i8 %9, 1
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 5
  %12 = load i64, i64* %11, align 8, !tbaa !41
  %13 = icmp eq i64 %12, 0
  br i1 %10, label %15, label %14

; <label>:14:                                     ; preds = %7
  br i1 %13, label %98, label %17

; <label>:15:                                     ; preds = %7
  br i1 %13, label %30, label %16

; <label>:16:                                     ; preds = %15
  tail call fastcc void @enterinc(%struct.global_State* nonnull %3) #7
  br label %17

; <label>:17:                                     ; preds = %14, %16
  tail call void @luaC_runtilstate(%struct.lua_State* nonnull %0, i32 1) #7
  %18 = tail call fastcc i64 @atomic(%struct.lua_State* nonnull %0) #7
  %19 = lshr i64 %12, 3
  %20 = add i64 %19, %12
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %17
  tail call fastcc void @atomic2gen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3) #7
  tail call fastcc void @setminordebt(%struct.global_State* nonnull %3) #7
  br label %133

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %25 = load i64, i64* %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %27 = load i64, i64* %26, align 8, !tbaa !49
  %28 = add nsw i64 %27, %25
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  store i64 %28, i64* %29, align 8, !tbaa !50
  tail call fastcc void @entersweep(%struct.lua_State* nonnull %0) #7
  tail call void @luaC_runtilstate(%struct.lua_State* nonnull %0, i32 256) #7
  tail call fastcc void @setpause(%struct.global_State* nonnull %3) #7
  store i64 %18, i64* %11, align 8, !tbaa !41
  br label %133

; <label>:30:                                     ; preds = %15
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 4
  %32 = load i64, i64* %31, align 8, !tbaa !50
  %33 = udiv i64 %32, 100
  %34 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 14
  %35 = load i8, i8* %34, align 8, !tbaa !53
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 2
  %38 = mul i64 %37, %33
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %40 = load i64, i64* %39, align 8, !tbaa !49
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %58

; <label>:42:                                     ; preds = %30
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %44 = load i64, i64* %43, align 8, !tbaa !48
  %45 = add nsw i64 %44, %40
  %46 = add i64 %38, %32
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %58

; <label>:48:                                     ; preds = %42
  %49 = tail call fastcc i64 @fullgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3) #7
  %50 = load i64, i64* %43, align 8, !tbaa !48
  %51 = load i64, i64* %39, align 8, !tbaa !49
  %52 = add nsw i64 %51, %50
  %53 = lshr exact i64 %38, 1
  %54 = add i64 %53, %32
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %48
  tail call fastcc void @setminordebt(%struct.global_State* nonnull %3) #7
  br label %133

; <label>:57:                                     ; preds = %48
  store i64 %49, i64* %11, align 8, !tbaa !41
  tail call fastcc void @setpause(%struct.global_State* nonnull %3) #7
  br label %133

; <label>:58:                                     ; preds = %42, %30
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 30
  %60 = load %struct.GCObject*, %struct.GCObject** %59, align 8, !tbaa !36
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 32
  %62 = load %struct.GCObject*, %struct.GCObject** %61, align 8, !tbaa !38
  tail call fastcc void @markold(%struct.global_State* nonnull %3, %struct.GCObject* %60, %struct.GCObject* %62) #7
  %63 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 22
  %64 = load %struct.GCObject*, %struct.GCObject** %63, align 8, !tbaa !39
  %65 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 35
  %66 = load %struct.GCObject*, %struct.GCObject** %65, align 8, !tbaa !54
  tail call fastcc void @markold(%struct.global_State* nonnull %3, %struct.GCObject* %64, %struct.GCObject* %66) #7
  %67 = tail call fastcc i64 @atomic(%struct.lua_State* nonnull %0) #7
  %68 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %69 = load %struct.GCObject*, %struct.GCObject** %59, align 8, !tbaa !36
  %70 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** nonnull %68, %struct.GCObject* %69) #7
  %71 = load %struct.GCObject*, %struct.GCObject** %61, align 8, !tbaa !38
  %72 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** %70, %struct.GCObject* %71) #7
  %73 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 31
  %74 = bitcast %struct.GCObject** %73 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !37
  %76 = bitcast %struct.GCObject** %61 to i64*
  store i64 %75, i64* %76, align 8, !tbaa !38
  %77 = bitcast %struct.GCObject** %70 to i64*
  %78 = load i64, i64* %77, align 8, !tbaa !29
  store i64 %78, i64* %74, align 8, !tbaa !37
  %79 = bitcast %struct.GCObject** %68 to i64*
  %80 = load i64, i64* %79, align 8, !tbaa !32
  %81 = bitcast %struct.GCObject** %59 to i64*
  store i64 %80, i64* %81, align 8, !tbaa !36
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 33
  %83 = load %struct.GCObject*, %struct.GCObject** %82, align 8, !tbaa !45
  %84 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** nonnull %63, %struct.GCObject* %83) #7
  %85 = load %struct.GCObject*, %struct.GCObject** %65, align 8, !tbaa !54
  %86 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** %84, %struct.GCObject* %85) #7
  %87 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 34
  %88 = bitcast %struct.GCObject** %87 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !44
  %90 = bitcast %struct.GCObject** %65 to i64*
  store i64 %89, i64* %90, align 8, !tbaa !54
  %91 = bitcast %struct.GCObject** %84 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !29
  store i64 %92, i64* %88, align 8, !tbaa !44
  %93 = bitcast %struct.GCObject** %63 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !39
  %95 = bitcast %struct.GCObject** %82 to i64*
  store i64 %94, i64* %95, align 8, !tbaa !45
  %96 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 28
  %97 = tail call fastcc %struct.GCObject** @sweepgen(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3, %struct.GCObject** nonnull %96, %struct.GCObject* null) #7
  tail call fastcc void @finishgencycle(%struct.lua_State* nonnull %0, %struct.global_State* nonnull %3) #7
  tail call fastcc void @setminordebt(%struct.global_State* nonnull %3) #7
  store i64 %32, i64* %31, align 8, !tbaa !50
  br label %133

; <label>:98:                                     ; preds = %14
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 18
  %100 = load i8, i8* %99, align 4, !tbaa !55
  %101 = zext i8 %100 to i64
  %102 = shl nuw nsw i64 %101, 2
  %103 = or i64 %102, 1
  %104 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 3
  %105 = load i64, i64* %104, align 8, !tbaa !49
  %106 = lshr i64 %105, 4
  %107 = mul i64 %103, %106
  %108 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 19
  %109 = load i8, i8* %108, align 1, !tbaa !56
  %110 = icmp ult i8 %109, 63
  br i1 %110, label %111, label %117

; <label>:111:                                    ; preds = %98
  %112 = zext i8 %109 to i64
  %113 = shl i64 1, %112
  %114 = lshr i64 %113, 4
  %115 = sub nsw i64 0, %103
  %116 = mul i64 %114, %115
  br label %117

; <label>:117:                                    ; preds = %111, %98
  %118 = phi i64 [ %116, %111 ], [ -9223372036854775807, %98 ]
  %119 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  br label %120

; <label>:120:                                    ; preds = %127, %117
  %121 = phi i64 [ %107, %117 ], [ %123, %127 ]
  %122 = tail call fastcc i64 @singlestep(%struct.lua_State* %0) #7
  %123 = sub i64 %121, %122
  %124 = icmp sgt i64 %123, %118
  %125 = load i8, i8* %119, align 1, !tbaa !11
  %126 = icmp eq i8 %125, 8
  br i1 %124, label %127, label %128

; <label>:127:                                    ; preds = %120
  br i1 %126, label %129, label %120

; <label>:128:                                    ; preds = %120
  br i1 %126, label %129, label %130

; <label>:129:                                    ; preds = %127, %128
  tail call fastcc void @setpause(%struct.global_State* nonnull %3) #7
  br label %133

; <label>:130:                                    ; preds = %128
  %131 = sdiv i64 %123, %103
  %132 = shl i64 %131, 4
  tail call void @luaE_setdebt(%struct.global_State* nonnull %3, i64 %132) #7
  br label %133

; <label>:133:                                    ; preds = %130, %129, %58, %57, %56, %23, %22, %1
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define hidden void @luaC_fullgc(%struct.lua_State*, i32) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8, !tbaa !2
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 16
  store i8 %5, i8* %6, align 2, !tbaa !51
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 12
  %8 = load i8, i8* %7, align 2, !tbaa !40
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 11
  %12 = load i8, i8* %11, align 1, !tbaa !11
  %13 = icmp ult i8 %12, 3
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  tail call fastcc void @entersweep(%struct.lua_State* nonnull %0) #7
  br label %15

; <label>:15:                                     ; preds = %10, %14
  tail call void @luaC_runtilstate(%struct.lua_State* nonnull %0, i32 256) #7
  tail call void @luaC_runtilstate(%struct.lua_State* nonnull %0, i32 128) #7
  tail call void @luaC_runtilstate(%struct.lua_State* nonnull %0, i32 256) #7
  tail call fastcc void @setpause(%struct.global_State* nonnull %4) #7
  br label %18

; <label>:16:                                     ; preds = %2
  %17 = tail call fastcc i64 @fullgen(%struct.lua_State* nonnull %0, %struct.global_State* %4) #6
  br label %18

; <label>:18:                                     ; preds = %16, %15
  store i8 0, i8* %6, align 2, !tbaa !51
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @fullgen(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  tail call fastcc void @enterinc(%struct.global_State* %1) #6
  %3 = tail call fastcc i64 @entergen(%struct.lua_State* %0, %struct.global_State* %1) #6
  ret i64 %3
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.GCObject** @sweeplist(%struct.lua_State*, %struct.GCObject**, i32, i32*) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8, !tbaa !2
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 10
  %8 = load i8, i8* %7, align 4, !tbaa !17
  %9 = xor i8 %8, 24
  %10 = and i8 %8, 24
  br label %11

; <label>:11:                                     ; preds = %31, %4
  %12 = phi i32 [ 0, %4 ], [ %33, %31 ]
  %13 = phi %struct.GCObject** [ %1, %4 ], [ %32, %31 ]
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8, !tbaa !29
  %15 = icmp ne %struct.GCObject* %14, null
  %16 = icmp slt i32 %12, %2
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %34

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %14, i64 0, i32 2
  %20 = load i8, i8* %19, align 1, !tbaa !15
  %21 = and i8 %20, %9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %18
  %24 = bitcast %struct.GCObject* %14 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !31
  %26 = bitcast %struct.GCObject** %13 to i64*
  store i64 %25, i64* %26, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %14) #6
  br label %31

; <label>:27:                                     ; preds = %18
  %28 = and i8 %20, -64
  %29 = or i8 %28, %10
  store i8 %29, i8* %19, align 1, !tbaa !15
  %30 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %14, i64 0, i32 0
  br label %31

; <label>:31:                                     ; preds = %27, %23
  %32 = phi %struct.GCObject** [ %13, %23 ], [ %30, %27 ]
  %33 = add nuw nsw i32 %12, 1
  br label %11

; <label>:34:                                     ; preds = %11
  %35 = icmp eq i32* %3, null
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %34
  store i32 %12, i32* %3, align 4, !tbaa !57
  br label %37

; <label>:37:                                     ; preds = %34, %36
  %38 = icmp eq %struct.GCObject* %14, null
  %39 = select i1 %38, %struct.GCObject** null, %struct.GCObject** %13
  ret %struct.GCObject** %39
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %50 = load i64, i64* %49, align 8, !tbaa !58
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

; Function Attrs: minsize optsize
declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden void @luaM_free_(%struct.lua_State*, i8*, i64) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden void @luaS_remove(%struct.lua_State*, %struct.TString*) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden void @luaF_unlinkupval(%struct.UpVal*) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
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
  %28 = tail call fastcc i64 @propagateall(%struct.global_State* nonnull %3) #6
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 36
  br label %30

; <label>:30:                                     ; preds = %49, %27
  %31 = phi %struct.lua_State** [ %50, %49 ], [ %29, %27 ]
  %32 = phi i32 [ %40, %49 ], [ 0, %27 ]
  %33 = bitcast %struct.lua_State** %31 to i64*
  br label %35

; <label>:34:                                     ; preds = %55
  br label %35

; <label>:35:                                     ; preds = %30, %34
  %36 = phi i32 [ %56, %34 ], [ %32, %30 ]
  %37 = load %struct.lua_State*, %struct.lua_State** %31, align 8, !tbaa !29
  %38 = icmp eq %struct.lua_State* %37, null
  br i1 %38, label %83, label %39

; <label>:39:                                     ; preds = %35
  %40 = add nsw i32 %36, 1
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i64 0, i32 2
  %42 = load i8, i8* %41, align 1, !tbaa !46
  %43 = and i8 %42, 56
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i64 0, i32 12
  br i1 %44, label %46, label %51

; <label>:46:                                     ; preds = %39
  %47 = load %struct.UpVal*, %struct.UpVal** %45, align 8, !tbaa !59
  %48 = icmp eq %struct.UpVal* %47, null
  br i1 %48, label %51, label %49

; <label>:49:                                     ; preds = %46
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i64 0, i32 14
  br label %30

; <label>:51:                                     ; preds = %46, %39
  %52 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i64 0, i32 14
  %53 = bitcast %struct.lua_State** %52 to i64*
  %54 = load i64, i64* %53, align 8, !tbaa !60
  store i64 %54, i64* %33, align 8, !tbaa !29
  store %struct.lua_State* %37, %struct.lua_State** %52, align 8, !tbaa !60
  br label %55

; <label>:55:                                     ; preds = %81, %51
  %56 = phi i32 [ %40, %51 ], [ %61, %81 ]
  %57 = phi %struct.UpVal** [ %45, %51 ], [ %82, %81 ]
  %58 = load %struct.UpVal*, %struct.UpVal** %57, align 8, !tbaa !22
  %59 = icmp eq %struct.UpVal* %58, null
  br i1 %59, label %34, label %60

; <label>:60:                                     ; preds = %55
  %61 = add nsw i32 %56, 1
  %62 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %58, i64 0, i32 2
  %63 = load i8, i8* %62, align 1, !tbaa !61
  %64 = and i8 %63, 24
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %81

; <label>:66:                                     ; preds = %60
  %67 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %58, i64 0, i32 3
  %68 = load %struct.TValue*, %struct.TValue** %67, align 8, !tbaa !19
  %69 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i64 0, i32 1
  %70 = load i8, i8* %69, align 8, !tbaa !21
  %71 = and i8 %70, 64
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %81, label %73

; <label>:73:                                     ; preds = %66
  %74 = getelementptr inbounds %struct.TValue, %struct.TValue* %68, i64 0, i32 0, i32 0
  %75 = load %struct.GCObject*, %struct.GCObject** %74, align 8, !tbaa !22
  %76 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %75, i64 0, i32 2
  %77 = load i8, i8* %76, align 1, !tbaa !15
  %78 = and i8 %77, 24
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

; <label>:80:                                     ; preds = %73
  tail call fastcc void @reallymarkobject(%struct.global_State* %3, %struct.GCObject* %75) #7
  br label %81

; <label>:81:                                     ; preds = %80, %73, %66, %60
  %82 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %58, i64 0, i32 4, i32 0, i32 0
  br label %55

; <label>:83:                                     ; preds = %35
  %84 = sext i32 %36 to i64
  %85 = add i64 %28, %84
  %86 = tail call fastcc i64 @propagateall(%struct.global_State* %3) #6
  %87 = add i64 %85, %86
  %88 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 23
  %89 = bitcast %struct.GCObject** %88 to i64*
  store i64 %6, i64* %89, align 8, !tbaa !28
  %90 = tail call fastcc i64 @propagateall(%struct.global_State* %3) #6
  %91 = add i64 %87, %90
  tail call fastcc void @convergeephemerons(%struct.global_State* %3) #6
  %92 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 25
  %93 = load %struct.GCObject*, %struct.GCObject** %92, align 8, !tbaa !62
  tail call fastcc void @clearbyvalues(%struct.global_State* %3, %struct.GCObject* %93, %struct.GCObject* null) #6
  %94 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 27
  %95 = load %struct.GCObject*, %struct.GCObject** %94, align 8, !tbaa !63
  tail call fastcc void @clearbyvalues(%struct.global_State* %3, %struct.GCObject* %95, %struct.GCObject* null) #6
  %96 = load %struct.GCObject*, %struct.GCObject** %92, align 8, !tbaa !62
  %97 = load %struct.GCObject*, %struct.GCObject** %94, align 8, !tbaa !63
  tail call fastcc void @separatetobefnz(%struct.global_State* %3, i32 0) #6
  %98 = tail call fastcc i64 @markbeingfnz(%struct.global_State* %3) #6
  %99 = add i64 %91, %98
  %100 = tail call fastcc i64 @propagateall(%struct.global_State* %3) #6
  %101 = add i64 %99, %100
  tail call fastcc void @convergeephemerons(%struct.global_State* %3) #6
  %102 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 26
  %103 = load %struct.GCObject*, %struct.GCObject** %102, align 8, !tbaa !64
  tail call fastcc void @clearbykeys(%struct.global_State* %3, %struct.GCObject* %103) #6
  %104 = load %struct.GCObject*, %struct.GCObject** %94, align 8, !tbaa !63
  tail call fastcc void @clearbykeys(%struct.global_State* %3, %struct.GCObject* %104) #6
  %105 = load %struct.GCObject*, %struct.GCObject** %92, align 8, !tbaa !62
  tail call fastcc void @clearbyvalues(%struct.global_State* %3, %struct.GCObject* %105, %struct.GCObject* %96) #6
  %106 = load %struct.GCObject*, %struct.GCObject** %94, align 8, !tbaa !63
  tail call fastcc void @clearbyvalues(%struct.global_State* %3, %struct.GCObject* %106, %struct.GCObject* %97) #6
  tail call void @luaS_clearcache(%struct.global_State* %3) #7
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 10
  %108 = load i8, i8* %107, align 4, !tbaa !17
  %109 = xor i8 %108, 24
  store i8 %109, i8* %107, align 4, !tbaa !17
  ret i64 %101
}

; Function Attrs: minsize nounwind optsize uwtable
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
  store i64 %14, i64* %20, align 8, !tbaa !54
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

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @markmt(%struct.global_State*) unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %16, %1
  %3 = phi i64 [ %17, %16 ], [ 0, %1 ]
  %4 = icmp eq i64 %3, 9
  br i1 %4, label %18, label %5

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 41, i64 %3
  %7 = load %struct.Table*, %struct.Table** %6, align 8, !tbaa !29
  %8 = icmp eq %struct.Table* %7, null
  br i1 %8, label %16, label %9

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %7, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !26
  %12 = and i8 %11, 24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct.Table* %7 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %15) #6
  br label %16

; <label>:16:                                     ; preds = %9, %5, %14
  %17 = add nuw nsw i64 %3, 1
  br label %2

; <label>:18:                                     ; preds = %2
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @propagateall(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 23
  br label %3

; <label>:3:                                      ; preds = %7, %1
  %4 = phi i64 [ 0, %1 ], [ %9, %7 ]
  %5 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !28
  %6 = icmp eq %struct.GCObject* %5, null
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %3
  %8 = tail call fastcc i64 @propagatemark(%struct.global_State* nonnull %0) #6
  %9 = add i64 %8, %4
  br label %3

; <label>:10:                                     ; preds = %3
  ret i64 %4
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @convergeephemerons(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 26
  br label %3

; <label>:3:                                      ; preds = %19, %1
  %4 = load %struct.GCObject*, %struct.GCObject** %2, align 8, !tbaa !64
  store %struct.GCObject* null, %struct.GCObject** %2, align 8, !tbaa !64
  br label %5

; <label>:5:                                      ; preds = %17, %3
  %6 = phi i32 [ 1, %17 ], [ 0, %3 ]
  %7 = phi %struct.GCObject* [ %14, %17 ], [ %4, %3 ]
  br label %8

; <label>:8:                                      ; preds = %5, %11
  %9 = phi %struct.GCObject* [ %14, %11 ], [ %7, %5 ]
  %10 = icmp eq %struct.GCObject* %9, null
  br i1 %10, label %19, label %11

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.GCObject* %9 to %struct.Table*
  %13 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %9, i64 3, i32 0
  %14 = load %struct.GCObject*, %struct.GCObject** %13, align 8, !tbaa !22
  %15 = tail call fastcc i32 @traverseephemeron(%struct.global_State* %0, %struct.Table* %12) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %8, label %17

; <label>:17:                                     ; preds = %11
  %18 = tail call fastcc i64 @propagateall(%struct.global_State* %0) #6
  br label %5

; <label>:19:                                     ; preds = %8
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %21, label %3

; <label>:21:                                     ; preds = %19
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @clearbyvalues(%struct.global_State*, %struct.GCObject*, %struct.GCObject* readnone) unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %66, %3
  %5 = phi %struct.GCObject* [ %1, %3 ], [ %68, %66 ]
  %6 = icmp eq %struct.GCObject* %5, %2
  br i1 %6, label %69, label %7

; <label>:7:                                      ; preds = %4
  %8 = bitcast %struct.GCObject* %5 to %struct.Table*
  %9 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 1, i32 1
  %10 = bitcast i8* %9 to %union.Node**
  %11 = load %union.Node*, %union.Node** %10, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.Table, %struct.Table* %8, i64 0, i32 4
  %13 = load i8, i8* %12, align 1, !tbaa !66
  %14 = zext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = tail call i32 @luaH_realasize(%struct.Table* %8) #7
  %18 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 1
  %19 = bitcast %struct.GCObject* %18 to %struct.TValue**
  %20 = zext i32 %17 to i64
  br label %21

; <label>:21:                                     ; preds = %38, %7
  %22 = phi i64 [ %39, %38 ], [ 0, %7 ]
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %40, label %24

; <label>:24:                                     ; preds = %21
  %25 = load %struct.TValue*, %struct.TValue** %19, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i64 %22, i32 1
  %27 = load i8, i8* %26, align 8, !tbaa !21
  %28 = and i8 %27, 64
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.TValue, %struct.TValue* %25, i64 %22, i32 0, i32 0
  %32 = load %struct.GCObject*, %struct.GCObject** %31, align 8, !tbaa !22
  br label %33

; <label>:33:                                     ; preds = %24, %30
  %34 = phi %struct.GCObject* [ %32, %30 ], [ null, %24 ]
  %35 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %34) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %33
  store i8 16, i8* %26, align 8, !tbaa !21
  br label %38

; <label>:38:                                     ; preds = %33, %37
  %39 = add nuw nsw i64 %22, 1
  br label %21

; <label>:40:                                     ; preds = %21
  %41 = getelementptr inbounds %union.Node, %union.Node* %11, i64 %16
  %42 = load %union.Node*, %union.Node** %10, align 8, !tbaa !65
  br label %43

; <label>:43:                                     ; preds = %64, %40
  %44 = phi %union.Node* [ %42, %40 ], [ %65, %64 ]
  %45 = icmp ult %union.Node* %44, %41
  br i1 %45, label %46, label %66

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 1
  %48 = load i8, i8* %47, align 8, !tbaa !22
  %49 = and i8 %48, 64
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

; <label>:51:                                     ; preds = %46
  %52 = getelementptr inbounds %union.Node, %union.Node* %44, i64 0, i32 0, i32 0, i32 0
  %53 = load %struct.GCObject*, %struct.GCObject** %52, align 8, !tbaa !22
  br label %54

; <label>:54:                                     ; preds = %46, %51
  %55 = phi %struct.GCObject* [ %53, %51 ], [ null, %46 ]
  %56 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %55) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

; <label>:58:                                     ; preds = %54
  store i8 16, i8* %47, align 8, !tbaa !22
  br label %63

; <label>:59:                                     ; preds = %54
  %60 = load i8, i8* %47, align 8, !tbaa !22
  %61 = and i8 %60, 15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %58, %59
  tail call fastcc void @clearkey(%union.Node* nonnull %44) #6
  br label %64

; <label>:64:                                     ; preds = %59, %63
  %65 = getelementptr inbounds %union.Node, %union.Node* %44, i64 1
  br label %43

; <label>:66:                                     ; preds = %43
  %67 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 3, i32 0
  %68 = load %struct.GCObject*, %struct.GCObject** %67, align 8, !tbaa !22
  br label %4

; <label>:69:                                     ; preds = %4
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i64 @markbeingfnz(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 28
  br label %3

; <label>:3:                                      ; preds = %15, %1
  %4 = phi %struct.GCObject** [ %2, %1 ], [ %16, %15 ]
  %5 = phi i64 [ 0, %1 ], [ %9, %15 ]
  %6 = load %struct.GCObject*, %struct.GCObject** %4, align 8, !tbaa !29
  %7 = icmp eq %struct.GCObject* %6, null
  br i1 %7, label %17, label %8

; <label>:8:                                      ; preds = %3
  %9 = add i64 %5, 1
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = and i8 %11, 24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %8
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %6) #6
  br label %15

; <label>:15:                                     ; preds = %8, %14
  %16 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %6, i64 0, i32 0
  br label %3

; <label>:17:                                     ; preds = %3
  ret i64 %5
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @clearbykeys(%struct.global_State*, %struct.GCObject* readonly) unnamed_addr #0 {
  br label %3

; <label>:3:                                      ; preds = %41, %2
  %4 = phi %struct.GCObject* [ %1, %2 ], [ %43, %41 ]
  %5 = icmp eq %struct.GCObject* %4, null
  br i1 %5, label %44, label %6

; <label>:6:                                      ; preds = %3
  %7 = bitcast %struct.GCObject* %4 to %struct.Table*
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4, i64 1, i32 1
  %9 = bitcast i8* %8 to %union.Node**
  %10 = load %union.Node*, %union.Node** %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %7, i64 0, i32 4
  %12 = load i8, i8* %11, align 1, !tbaa !66
  %13 = zext i8 %12 to i32
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.Node, %union.Node* %10, i64 %15
  br label %17

; <label>:17:                                     ; preds = %39, %6
  %18 = phi %union.Node* [ %10, %6 ], [ %40, %39 ]
  %19 = icmp ult %union.Node* %18, %16
  br i1 %19, label %20, label %41

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %union.Node, %union.Node* %18, i64 0, i32 0, i32 2
  %22 = load i8, i8* %21, align 1, !tbaa !22
  %23 = and i8 %22, 64
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %union.Node, %union.Node* %18, i64 0, i32 0, i32 4, i32 0
  %27 = load %struct.GCObject*, %struct.GCObject** %26, align 8, !tbaa !22
  br label %28

; <label>:28:                                     ; preds = %20, %25
  %29 = phi %struct.GCObject* [ %27, %25 ], [ null, %20 ]
  %30 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %29) #6
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %union.Node, %union.Node* %18, i64 0, i32 0, i32 1
  br i1 %31, label %34, label %33

; <label>:33:                                     ; preds = %28
  store i8 16, i8* %32, align 8, !tbaa !22
  br label %38

; <label>:34:                                     ; preds = %28
  %35 = load i8, i8* %32, align 8, !tbaa !22
  %36 = and i8 %35, 15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %33, %34
  tail call fastcc void @clearkey(%union.Node* nonnull %18) #6
  br label %39

; <label>:39:                                     ; preds = %34, %38
  %40 = getelementptr inbounds %union.Node, %union.Node* %18, i64 1
  br label %17

; <label>:41:                                     ; preds = %17
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %4, i64 3, i32 0
  %43 = load %struct.GCObject*, %struct.GCObject** %42, align 8, !tbaa !22
  br label %3

; <label>:44:                                     ; preds = %3
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaS_clearcache(%struct.global_State*) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
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
  switch i8 %12, label %565 [
    i8 5, label %13
    i8 7, label %241
    i8 22, label %291
    i8 54, label %327
    i8 10, label %353
    i8 8, label %471
  ]

; <label>:13:                                     ; preds = %1
  %14 = bitcast %struct.GCObject* %3 to %struct.Table*
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2, i32 1
  %16 = bitcast i8* %15 to %struct.Table**
  %17 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !68
  %18 = icmp eq %struct.Table* %17, null
  br i1 %18, label %140, label %19

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
  %28 = load %struct.Table*, %struct.Table** %16, align 8, !tbaa !68
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
  br i1 %41, label %140, label %42

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.TValue, %struct.TValue* %40, i64 0, i32 1
  %44 = load i8, i8* %43, align 8, !tbaa !21
  %45 = and i8 %44, 15
  %46 = icmp eq i8 %45, 4
  br i1 %46, label %47, label %140

; <label>:47:                                     ; preds = %42
  %48 = bitcast %struct.TValue* %40 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !22
  %50 = getelementptr inbounds i8, i8* %49, i64 24
  %51 = tail call i8* @strchr(i8* nonnull %50, i32 107) #9
  %52 = tail call i8* @strchr(i8* nonnull %50, i32 118) #9
  %53 = icmp ne i8* %51, null
  %54 = icmp ne i8* %52, null
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %140

; <label>:56:                                     ; preds = %47
  %57 = load i8, i8* %4, align 1, !tbaa !26
  %58 = and i8 %57, -33
  store i8 %58, i8* %4, align 1, !tbaa !26
  br i1 %53, label %131, label %59

; <label>:59:                                     ; preds = %56
  %60 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %61 = bitcast i8* %60 to %union.Node**
  %62 = load %union.Node*, %union.Node** %61, align 8, !tbaa !65
  %63 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %64 = load i8, i8* %63, align 1, !tbaa !66
  %65 = zext i8 %64 to i32
  %66 = shl i32 1, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %union.Node, %union.Node* %62, i64 %67
  %69 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 5
  %70 = load i32, i32* %69, align 4, !tbaa !69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  br label %73

; <label>:73:                                     ; preds = %110, %59
  %74 = phi %union.Node* [ %62, %59 ], [ %112, %110 ]
  %75 = phi i32 [ %72, %59 ], [ %111, %110 ]
  %76 = icmp ult %union.Node* %74, %68
  br i1 %76, label %77, label %113

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %union.Node, %union.Node* %74, i64 0, i32 0, i32 1
  %79 = load i8, i8* %78, align 8, !tbaa !22
  %80 = and i8 %79, 15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %77
  tail call fastcc void @clearkey(%union.Node* nonnull %74) #7
  br label %110

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %union.Node, %union.Node* %74, i64 0, i32 0, i32 2
  %85 = load i8, i8* %84, align 1, !tbaa !22
  %86 = and i8 %85, 64
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %96, label %88

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %union.Node, %union.Node* %74, i64 0, i32 0, i32 4, i32 0
  %90 = load %struct.GCObject*, %struct.GCObject** %89, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %90, i64 0, i32 2
  %92 = load i8, i8* %91, align 1, !tbaa !15
  %93 = and i8 %92, 24
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

; <label>:95:                                     ; preds = %88
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %90) #7
  br label %96

; <label>:96:                                     ; preds = %95, %88, %83
  %97 = icmp eq i32 %75, 0
  br i1 %97, label %98, label %110

; <label>:98:                                     ; preds = %96
  %99 = load i8, i8* %78, align 8, !tbaa !22
  %100 = and i8 %99, 64
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %105, label %102

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds %union.Node, %union.Node* %74, i64 0, i32 0, i32 0, i32 0
  %104 = load %struct.GCObject*, %struct.GCObject** %103, align 8, !tbaa !22
  br label %105

; <label>:105:                                    ; preds = %102, %98
  %106 = phi %struct.GCObject* [ %104, %102 ], [ null, %98 ]
  %107 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %106) #7
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i32
  br label %110

; <label>:110:                                    ; preds = %105, %96, %82
  %111 = phi i32 [ %75, %82 ], [ %75, %96 ], [ %109, %105 ]
  %112 = getelementptr inbounds %union.Node, %union.Node* %74, i64 1
  br label %73

; <label>:113:                                    ; preds = %73
  %114 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %115 = load i8, i8* %114, align 1, !tbaa !11
  %116 = icmp eq i8 %115, 2
  %117 = icmp ne i32 %75, 0
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %125

; <label>:119:                                    ; preds = %113
  %120 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 25
  %121 = bitcast %struct.GCObject** %120 to i64*
  %122 = load i64, i64* %121, align 8, !tbaa !62
  %123 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %124 = bitcast %struct.GCObject** %123 to i64*
  store i64 %122, i64* %124, align 8, !tbaa !70
  store %struct.GCObject* %3, %struct.GCObject** %120, align 8, !tbaa !62
  br label %224

; <label>:125:                                    ; preds = %113
  %126 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %127 = bitcast %struct.GCObject** %126 to i64*
  %128 = load i64, i64* %127, align 8, !tbaa !30
  %129 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %130 = bitcast %struct.GCObject** %129 to i64*
  store i64 %128, i64* %130, align 8, !tbaa !70
  store %struct.GCObject* %3, %struct.GCObject** %126, align 8, !tbaa !30
  br label %224

; <label>:131:                                    ; preds = %56
  br i1 %54, label %134, label %132

; <label>:132:                                    ; preds = %131
  %133 = tail call fastcc i32 @traverseephemeron(%struct.global_State* nonnull %0, %struct.Table* nonnull %14) #7
  br label %224

; <label>:134:                                    ; preds = %131
  %135 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %136 = bitcast %struct.GCObject** %135 to i64*
  %137 = load i64, i64* %136, align 8, !tbaa !63
  %138 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %139 = bitcast %struct.GCObject** %138 to i64*
  store i64 %137, i64* %139, align 8, !tbaa !70
  store %struct.GCObject* %3, %struct.GCObject** %135, align 8, !tbaa !63
  br label %224

; <label>:140:                                    ; preds = %47, %42, %39, %13
  %141 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %142 = bitcast i8* %141 to %union.Node**
  %143 = load %union.Node*, %union.Node** %142, align 8, !tbaa !65
  %144 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %145 = load i8, i8* %144, align 1, !tbaa !66
  %146 = zext i8 %145 to i32
  %147 = tail call i32 @luaH_realasize(%struct.Table* nonnull %14) #7
  %148 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %149 = bitcast %struct.GCObject* %148 to %struct.TValue**
  %150 = zext i32 %147 to i64
  br label %151

; <label>:151:                                    ; preds = %168, %140
  %152 = phi i64 [ %169, %168 ], [ 0, %140 ]
  %153 = icmp eq i64 %152, %150
  br i1 %153, label %170, label %154

; <label>:154:                                    ; preds = %151
  %155 = load %struct.TValue*, %struct.TValue** %149, align 8, !tbaa !67
  %156 = getelementptr inbounds %struct.TValue, %struct.TValue* %155, i64 %152, i32 1
  %157 = load i8, i8* %156, align 8, !tbaa !21
  %158 = and i8 %157, 64
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %168, label %160

; <label>:160:                                    ; preds = %154
  %161 = getelementptr inbounds %struct.TValue, %struct.TValue* %155, i64 %152, i32 0, i32 0
  %162 = load %struct.GCObject*, %struct.GCObject** %161, align 8, !tbaa !22
  %163 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %162, i64 0, i32 2
  %164 = load i8, i8* %163, align 1, !tbaa !15
  %165 = and i8 %164, 24
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %168, label %167

; <label>:167:                                    ; preds = %160
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %162) #7
  br label %168

; <label>:168:                                    ; preds = %167, %160, %154
  %169 = add nuw nsw i64 %152, 1
  br label %151

; <label>:170:                                    ; preds = %151
  %171 = shl i32 1, %146
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %union.Node, %union.Node* %143, i64 %172
  %174 = load %union.Node*, %union.Node** %142, align 8, !tbaa !65
  br label %175

; <label>:175:                                    ; preds = %210, %170
  %176 = phi %union.Node* [ %174, %170 ], [ %211, %210 ]
  %177 = icmp ult %union.Node* %176, %173
  br i1 %177, label %178, label %212

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds %union.Node, %union.Node* %176, i64 0, i32 0, i32 1
  %180 = load i8, i8* %179, align 8, !tbaa !22
  %181 = and i8 %180, 15
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %184

; <label>:183:                                    ; preds = %178
  tail call fastcc void @clearkey(%union.Node* nonnull %176) #7
  br label %210

; <label>:184:                                    ; preds = %178
  %185 = getelementptr inbounds %union.Node, %union.Node* %176, i64 0, i32 0, i32 2
  %186 = load i8, i8* %185, align 1, !tbaa !22
  %187 = and i8 %186, 64
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %198, label %189

; <label>:189:                                    ; preds = %184
  %190 = getelementptr inbounds %union.Node, %union.Node* %176, i64 0, i32 0, i32 4, i32 0
  %191 = load %struct.GCObject*, %struct.GCObject** %190, align 8, !tbaa !22
  %192 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %191, i64 0, i32 2
  %193 = load i8, i8* %192, align 1, !tbaa !15
  %194 = and i8 %193, 24
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %198, label %196

; <label>:196:                                    ; preds = %189
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %191) #7
  %197 = load i8, i8* %179, align 8, !tbaa !22
  br label %198

; <label>:198:                                    ; preds = %196, %189, %184
  %199 = phi i8 [ %180, %189 ], [ %180, %184 ], [ %197, %196 ]
  %200 = and i8 %199, 64
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %210, label %202

; <label>:202:                                    ; preds = %198
  %203 = getelementptr inbounds %union.Node, %union.Node* %176, i64 0, i32 0, i32 0, i32 0
  %204 = load %struct.GCObject*, %struct.GCObject** %203, align 8, !tbaa !22
  %205 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %204, i64 0, i32 2
  %206 = load i8, i8* %205, align 1, !tbaa !15
  %207 = and i8 %206, 24
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %210, label %209

; <label>:209:                                    ; preds = %202
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %204) #7
  br label %210

; <label>:210:                                    ; preds = %209, %202, %198, %183
  %211 = getelementptr inbounds %union.Node, %union.Node* %176, i64 1
  br label %175

; <label>:212:                                    ; preds = %175
  %213 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %214 = load i8, i8* %213, align 2, !tbaa !40
  %215 = icmp eq i8 %214, 1
  br i1 %215, label %216, label %224

; <label>:216:                                    ; preds = %212
  %217 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %218 = bitcast %struct.GCObject** %217 to i64*
  %219 = load i64, i64* %218, align 8, !tbaa !30
  %220 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 0
  %221 = bitcast %struct.GCObject** %220 to i64*
  store i64 %219, i64* %221, align 8, !tbaa !70
  store %struct.GCObject* %3, %struct.GCObject** %217, align 8, !tbaa !30
  %222 = load i8, i8* %4, align 1, !tbaa !26
  %223 = and i8 %222, -33
  store i8 %223, i8* %4, align 1, !tbaa !26
  br label %224

; <label>:224:                                    ; preds = %216, %212, %134, %132, %125, %119
  %225 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 5
  %226 = load i32, i32* %225, align 4, !tbaa !69
  %227 = add i32 %226, 1
  %228 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2
  %229 = bitcast %struct.GCObject* %228 to %union.Node**
  %230 = load %union.Node*, %union.Node** %229, align 8, !tbaa !71
  %231 = icmp eq %union.Node* %230, null
  br i1 %231, label %237, label %232

; <label>:232:                                    ; preds = %224
  %233 = getelementptr inbounds %struct.Table, %struct.Table* %14, i64 0, i32 4
  %234 = load i8, i8* %233, align 1, !tbaa !66
  %235 = zext i8 %234 to i32
  %236 = shl i32 2, %235
  br label %237

; <label>:237:                                    ; preds = %224, %232
  %238 = phi i32 [ %236, %232 ], [ 0, %224 ]
  %239 = add i32 %227, %238
  %240 = zext i32 %239 to i64
  br label %565

; <label>:241:                                    ; preds = %1
  %242 = bitcast %struct.GCObject* %3 to %struct.Udata*
  %243 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %244 = bitcast i8* %243 to %struct.Table**
  %245 = load %struct.Table*, %struct.Table** %244, align 8, !tbaa !25
  %246 = icmp eq %struct.Table* %245, null
  br i1 %246, label %254, label %247

; <label>:247:                                    ; preds = %241
  %248 = getelementptr inbounds %struct.Table, %struct.Table* %245, i64 0, i32 2
  %249 = load i8, i8* %248, align 1, !tbaa !26
  %250 = and i8 %249, 24
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %254, label %252

; <label>:252:                                    ; preds = %247
  %253 = bitcast %struct.Table* %245 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %253) #7
  br label %254

; <label>:254:                                    ; preds = %252, %247, %241
  %255 = getelementptr inbounds %struct.Udata, %struct.Udata* %242, i64 0, i32 3
  br label %256

; <label>:256:                                    ; preds = %274, %254
  %257 = phi i64 [ %275, %274 ], [ 0, %254 ]
  %258 = load i16, i16* %255, align 2, !tbaa !23
  %259 = zext i16 %258 to i64
  %260 = icmp ult i64 %257, %259
  br i1 %260, label %261, label %276

; <label>:261:                                    ; preds = %256
  %262 = getelementptr inbounds %struct.Udata, %struct.Udata* %242, i64 0, i32 7, i64 %257, i32 0, i32 1
  %263 = load i8, i8* %262, align 8, !tbaa !22
  %264 = and i8 %263, 64
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %274, label %266

; <label>:266:                                    ; preds = %261
  %267 = getelementptr inbounds %struct.Udata, %struct.Udata* %242, i64 0, i32 7, i64 %257, i32 0, i32 0, i32 0
  %268 = load %struct.GCObject*, %struct.GCObject** %267, align 8, !tbaa !22
  %269 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %268, i64 0, i32 2
  %270 = load i8, i8* %269, align 1, !tbaa !15
  %271 = and i8 %270, 24
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %274, label %273

; <label>:273:                                    ; preds = %266
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %268) #7
  br label %274

; <label>:274:                                    ; preds = %273, %266, %261
  %275 = add nuw nsw i64 %257, 1
  br label %256

; <label>:276:                                    ; preds = %256
  %277 = zext i16 %258 to i64
  %278 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %279 = load i8, i8* %278, align 2, !tbaa !40
  %280 = icmp eq i8 %279, 1
  br i1 %280, label %281, label %289

; <label>:281:                                    ; preds = %276
  %282 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %283 = bitcast %struct.GCObject** %282 to i64*
  %284 = load i64, i64* %283, align 8, !tbaa !30
  %285 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2, i32 0
  %286 = bitcast %struct.GCObject** %285 to i64*
  store i64 %284, i64* %286, align 8, !tbaa !72
  store %struct.GCObject* %3, %struct.GCObject** %282, align 8, !tbaa !30
  %287 = load i8, i8* %4, align 1, !tbaa !73
  %288 = and i8 %287, -33
  store i8 %288, i8* %4, align 1, !tbaa !73
  br label %289

; <label>:289:                                    ; preds = %276, %281
  %290 = add nuw nsw i64 %277, 1
  br label %565

; <label>:291:                                    ; preds = %1
  %292 = bitcast %struct.GCObject* %3 to %struct.LClosure*
  %293 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1, i32 1
  %294 = bitcast i8* %293 to %struct.Proto**
  %295 = load %struct.Proto*, %struct.Proto** %294, align 8, !tbaa !74
  %296 = icmp eq %struct.Proto* %295, null
  br i1 %296, label %304, label %297

; <label>:297:                                    ; preds = %291
  %298 = getelementptr inbounds %struct.Proto, %struct.Proto* %295, i64 0, i32 2
  %299 = load i8, i8* %298, align 1, !tbaa !76
  %300 = and i8 %299, 24
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %304, label %302

; <label>:302:                                    ; preds = %297
  %303 = bitcast %struct.Proto* %295 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %303) #7
  br label %304

; <label>:304:                                    ; preds = %302, %297, %291
  %305 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %292, i64 0, i32 3
  br label %306

; <label>:306:                                    ; preds = %322, %304
  %307 = phi i64 [ %323, %322 ], [ 0, %304 ]
  %308 = load i8, i8* %305, align 2, !tbaa !78
  %309 = zext i8 %308 to i64
  %310 = icmp ult i64 %307, %309
  br i1 %310, label %311, label %324

; <label>:311:                                    ; preds = %306
  %312 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %292, i64 0, i32 6, i64 %307
  %313 = load %struct.UpVal*, %struct.UpVal** %312, align 8, !tbaa !29
  %314 = icmp eq %struct.UpVal* %313, null
  br i1 %314, label %322, label %315

; <label>:315:                                    ; preds = %311
  %316 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %313, i64 0, i32 2
  %317 = load i8, i8* %316, align 1, !tbaa !61
  %318 = and i8 %317, 24
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %322, label %320

; <label>:320:                                    ; preds = %315
  %321 = bitcast %struct.UpVal* %313 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %321) #7
  br label %322

; <label>:322:                                    ; preds = %320, %315, %311
  %323 = add nuw nsw i64 %307, 1
  br label %306

; <label>:324:                                    ; preds = %306
  %325 = zext i8 %308 to i64
  %326 = add nuw nsw i64 %325, 1
  br label %565

; <label>:327:                                    ; preds = %1
  %328 = bitcast %struct.GCObject* %3 to %struct.CClosure*
  %329 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %328, i64 0, i32 3
  br label %330

; <label>:330:                                    ; preds = %348, %327
  %331 = phi i64 [ %349, %348 ], [ 0, %327 ]
  %332 = load i8, i8* %329, align 2, !tbaa !79
  %333 = zext i8 %332 to i64
  %334 = icmp ult i64 %331, %333
  br i1 %334, label %335, label %350

; <label>:335:                                    ; preds = %330
  %336 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %328, i64 0, i32 6, i64 %331, i32 1
  %337 = load i8, i8* %336, align 8, !tbaa !21
  %338 = and i8 %337, 64
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %348, label %340

; <label>:340:                                    ; preds = %335
  %341 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %328, i64 0, i32 6, i64 %331, i32 0, i32 0
  %342 = load %struct.GCObject*, %struct.GCObject** %341, align 8, !tbaa !22
  %343 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %342, i64 0, i32 2
  %344 = load i8, i8* %343, align 1, !tbaa !15
  %345 = and i8 %344, 24
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %348, label %347

; <label>:347:                                    ; preds = %340
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %342) #7
  br label %348

; <label>:348:                                    ; preds = %347, %340, %335
  %349 = add nuw nsw i64 %331, 1
  br label %330

; <label>:350:                                    ; preds = %330
  %351 = zext i8 %332 to i64
  %352 = add nuw nsw i64 %351, 1
  br label %565

; <label>:353:                                    ; preds = %1
  %354 = bitcast %struct.GCObject* %3 to %struct.Proto*
  %355 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 7
  %356 = bitcast %struct.GCObject* %355 to %struct.TString**
  %357 = load %struct.TString*, %struct.TString** %356, align 8, !tbaa !81
  %358 = icmp eq %struct.TString* %357, null
  br i1 %358, label %366, label %359

; <label>:359:                                    ; preds = %353
  %360 = getelementptr inbounds %struct.TString, %struct.TString* %357, i64 0, i32 2
  %361 = load i8, i8* %360, align 1, !tbaa !82
  %362 = and i8 %361, 24
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %366, label %364

; <label>:364:                                    ; preds = %359
  %365 = bitcast %struct.TString* %357 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* nonnull %0, %struct.GCObject* %365) #7
  br label %366

; <label>:366:                                    ; preds = %364, %359, %353
  %367 = getelementptr inbounds %struct.Proto, %struct.Proto* %354, i64 0, i32 7
  %368 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 1
  %369 = bitcast i8* %368 to %struct.TValue**
  br label %370

; <label>:370:                                    ; preds = %389, %366
  %371 = phi i64 [ %390, %389 ], [ 0, %366 ]
  %372 = load i32, i32* %367, align 4, !tbaa !84
  %373 = sext i32 %372 to i64
  %374 = icmp slt i64 %371, %373
  br i1 %374, label %375, label %391

; <label>:375:                                    ; preds = %370
  %376 = load %struct.TValue*, %struct.TValue** %369, align 8, !tbaa !85
  %377 = getelementptr inbounds %struct.TValue, %struct.TValue* %376, i64 %371, i32 1
  %378 = load i8, i8* %377, align 8, !tbaa !21
  %379 = and i8 %378, 64
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %389, label %381

; <label>:381:                                    ; preds = %375
  %382 = getelementptr inbounds %struct.TValue, %struct.TValue* %376, i64 %371, i32 0, i32 0
  %383 = load %struct.GCObject*, %struct.GCObject** %382, align 8, !tbaa !22
  %384 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %383, i64 0, i32 2
  %385 = load i8, i8* %384, align 1, !tbaa !15
  %386 = and i8 %385, 24
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %389, label %388

; <label>:388:                                    ; preds = %381
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %383) #7
  br label %389

; <label>:389:                                    ; preds = %388, %381, %375
  %390 = add nuw nsw i64 %371, 1
  br label %370

; <label>:391:                                    ; preds = %370
  %392 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %393 = bitcast %struct.GCObject* %392 to i32*
  %394 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 5
  %395 = bitcast %struct.GCObject* %394 to %struct.Upvaldesc**
  br label %396

; <label>:396:                                    ; preds = %413, %391
  %397 = phi i64 [ %414, %413 ], [ 0, %391 ]
  %398 = load i32, i32* %393, align 8, !tbaa !86
  %399 = sext i32 %398 to i64
  %400 = icmp slt i64 %397, %399
  br i1 %400, label %401, label %415

; <label>:401:                                    ; preds = %396
  %402 = load %struct.Upvaldesc*, %struct.Upvaldesc** %395, align 8, !tbaa !87
  %403 = getelementptr inbounds %struct.Upvaldesc, %struct.Upvaldesc* %402, i64 %397, i32 0
  %404 = load %struct.TString*, %struct.TString** %403, align 8, !tbaa !88
  %405 = icmp eq %struct.TString* %404, null
  br i1 %405, label %413, label %406

; <label>:406:                                    ; preds = %401
  %407 = getelementptr inbounds %struct.TString, %struct.TString* %404, i64 0, i32 2
  %408 = load i8, i8* %407, align 1, !tbaa !82
  %409 = and i8 %408, 24
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %413, label %411

; <label>:411:                                    ; preds = %406
  %412 = bitcast %struct.TString* %404 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %412) #7
  br label %413

; <label>:413:                                    ; preds = %411, %406, %401
  %414 = add nuw nsw i64 %397, 1
  br label %396

; <label>:415:                                    ; preds = %396
  %416 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 2
  %417 = bitcast %struct.GCObject* %416 to i32*
  %418 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %419 = bitcast i8* %418 to %struct.Proto***
  br label %420

; <label>:420:                                    ; preds = %437, %415
  %421 = phi i64 [ %438, %437 ], [ 0, %415 ]
  %422 = load i32, i32* %417, align 8, !tbaa !90
  %423 = sext i32 %422 to i64
  %424 = icmp slt i64 %421, %423
  br i1 %424, label %425, label %439

; <label>:425:                                    ; preds = %420
  %426 = load %struct.Proto**, %struct.Proto*** %419, align 8, !tbaa !91
  %427 = getelementptr inbounds %struct.Proto*, %struct.Proto** %426, i64 %421
  %428 = load %struct.Proto*, %struct.Proto** %427, align 8, !tbaa !29
  %429 = icmp eq %struct.Proto* %428, null
  br i1 %429, label %437, label %430

; <label>:430:                                    ; preds = %425
  %431 = getelementptr inbounds %struct.Proto, %struct.Proto* %428, i64 0, i32 2
  %432 = load i8, i8* %431, align 1, !tbaa !76
  %433 = and i8 %432, 24
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %437, label %435

; <label>:435:                                    ; preds = %430
  %436 = bitcast %struct.Proto* %428 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %436) #7
  br label %437

; <label>:437:                                    ; preds = %435, %430, %425
  %438 = add nuw nsw i64 %421, 1
  br label %420

; <label>:439:                                    ; preds = %420
  %440 = getelementptr inbounds %struct.Proto, %struct.Proto* %354, i64 0, i32 11
  %441 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 6, i32 1
  %442 = bitcast i8* %441 to %struct.LocVar**
  br label %443

; <label>:443:                                    ; preds = %460, %439
  %444 = phi i64 [ %461, %460 ], [ 0, %439 ]
  %445 = load i32, i32* %440, align 4, !tbaa !92
  %446 = sext i32 %445 to i64
  %447 = icmp slt i64 %444, %446
  br i1 %447, label %448, label %462

; <label>:448:                                    ; preds = %443
  %449 = load %struct.LocVar*, %struct.LocVar** %442, align 8, !tbaa !93
  %450 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %449, i64 %444, i32 0
  %451 = load %struct.TString*, %struct.TString** %450, align 8, !tbaa !94
  %452 = icmp eq %struct.TString* %451, null
  br i1 %452, label %460, label %453

; <label>:453:                                    ; preds = %448
  %454 = getelementptr inbounds %struct.TString, %struct.TString* %451, i64 0, i32 2
  %455 = load i8, i8* %454, align 1, !tbaa !82
  %456 = and i8 %455, 24
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %460, label %458

; <label>:458:                                    ; preds = %453
  %459 = bitcast %struct.TString* %451 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %459) #7
  br label %460

; <label>:460:                                    ; preds = %458, %453, %448
  %461 = add nuw nsw i64 %444, 1
  br label %443

; <label>:462:                                    ; preds = %443
  %463 = load i32, i32* %367, align 4, !tbaa !84
  %464 = load i32, i32* %393, align 8, !tbaa !86
  %465 = load i32, i32* %417, align 8, !tbaa !90
  %466 = add i32 %445, 1
  %467 = add i32 %466, %463
  %468 = add i32 %467, %464
  %469 = add i32 %468, %465
  %470 = sext i32 %469 to i64
  br label %565

; <label>:471:                                    ; preds = %1
  %472 = bitcast %struct.GCObject* %3 to %struct.lua_State*
  %473 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %474 = bitcast %struct.GCObject** %473 to i64*
  %475 = load i64, i64* %474, align 8, !tbaa !30
  %476 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4, i32 1
  %477 = bitcast i8* %476 to i64*
  store i64 %475, i64* %477, align 8, !tbaa !96
  store %struct.GCObject* %3, %struct.GCObject** %473, align 8, !tbaa !30
  %478 = and i8 %5, -33
  store i8 %478, i8* %4, align 1, !tbaa !15
  %479 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 3, i32 1
  %480 = bitcast i8* %479 to %union.StackValue**
  %481 = load %union.StackValue*, %union.StackValue** %480, align 8, !tbaa !97
  %482 = icmp eq %union.StackValue* %481, null
  br i1 %482, label %565, label %483

; <label>:483:                                    ; preds = %471
  %484 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 1
  %485 = bitcast %struct.GCObject* %484 to %union.StackValue**
  br label %486

; <label>:486:                                    ; preds = %503, %483
  %487 = phi %union.StackValue* [ %481, %483 ], [ %504, %503 ]
  %488 = load %union.StackValue*, %union.StackValue** %485, align 8, !tbaa !98
  %489 = icmp ult %union.StackValue* %487, %488
  br i1 %489, label %490, label %505

; <label>:490:                                    ; preds = %486
  %491 = getelementptr inbounds %union.StackValue, %union.StackValue* %487, i64 0, i32 0, i32 1
  %492 = load i8, i8* %491, align 8, !tbaa !22
  %493 = and i8 %492, 64
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %503, label %495

; <label>:495:                                    ; preds = %490
  %496 = getelementptr inbounds %union.StackValue, %union.StackValue* %487, i64 0, i32 0, i32 0, i32 0
  %497 = load %struct.GCObject*, %struct.GCObject** %496, align 8, !tbaa !22
  %498 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %497, i64 0, i32 2
  %499 = load i8, i8* %498, align 1, !tbaa !15
  %500 = and i8 %499, 24
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %503, label %502

; <label>:502:                                    ; preds = %495
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %497) #7
  br label %503

; <label>:503:                                    ; preds = %502, %495, %490
  %504 = getelementptr inbounds %union.StackValue, %union.StackValue* %487, i64 1
  br label %486

; <label>:505:                                    ; preds = %486
  %506 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 4
  %507 = bitcast %struct.GCObject* %506 to %struct.UpVal**
  br label %508

; <label>:508:                                    ; preds = %523, %505
  %509 = phi %struct.UpVal** [ %507, %505 ], [ %524, %523 ]
  %510 = load %struct.UpVal*, %struct.UpVal** %509, align 8, !tbaa !22
  %511 = icmp eq %struct.UpVal* %510, null
  br i1 %511, label %525, label %512

; <label>:512:                                    ; preds = %508
  %513 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %510, i64 0, i32 1
  %514 = load i8, i8* %513, align 8, !tbaa !99
  %515 = icmp eq i8 %514, 25
  br i1 %515, label %516, label %523

; <label>:516:                                    ; preds = %512
  %517 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %510, i64 0, i32 2
  %518 = load i8, i8* %517, align 1, !tbaa !61
  %519 = and i8 %518, 24
  %520 = icmp eq i8 %519, 0
  br i1 %520, label %523, label %521

; <label>:521:                                    ; preds = %516
  %522 = bitcast %struct.UpVal* %510 to %struct.GCObject*
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %522) #7
  br label %523

; <label>:523:                                    ; preds = %521, %516, %512
  %524 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %510, i64 0, i32 4, i32 0, i32 0
  br label %508

; <label>:525:                                    ; preds = %508
  %526 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %527 = load i8, i8* %526, align 1, !tbaa !11
  %528 = icmp eq i8 %527, 2
  br i1 %528, label %529, label %555

; <label>:529:                                    ; preds = %525
  %530 = load %union.StackValue*, %union.StackValue** %480, align 8, !tbaa !97
  %531 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %472, i64 0, i32 20
  %532 = load i32, i32* %531, align 4, !tbaa !100
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %union.StackValue, %union.StackValue* %530, i64 %533
  br label %535

; <label>:535:                                    ; preds = %538, %529
  %536 = phi %union.StackValue* [ %487, %529 ], [ %540, %538 ]
  %537 = icmp ult %union.StackValue* %536, %534
  br i1 %537, label %538, label %541

; <label>:538:                                    ; preds = %535
  %539 = getelementptr inbounds %union.StackValue, %union.StackValue* %536, i64 0, i32 0, i32 1
  store i8 0, i8* %539, align 8, !tbaa !22
  %540 = getelementptr inbounds %union.StackValue, %union.StackValue* %536, i64 1
  br label %535

; <label>:541:                                    ; preds = %535
  %542 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %3, i64 5
  %543 = bitcast %struct.GCObject* %542 to %struct.lua_State**
  %544 = load %struct.lua_State*, %struct.lua_State** %543, align 8, !tbaa !60
  %545 = icmp eq %struct.lua_State* %544, %472
  br i1 %545, label %546, label %560

; <label>:546:                                    ; preds = %541
  %547 = load %struct.UpVal*, %struct.UpVal** %507, align 8, !tbaa !59
  %548 = icmp eq %struct.UpVal* %547, null
  br i1 %548, label %560, label %549

; <label>:549:                                    ; preds = %546
  %550 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 36
  %551 = bitcast %struct.lua_State** %550 to i64*
  %552 = load i64, i64* %551, align 8, !tbaa !101
  %553 = bitcast %struct.GCObject* %542 to i64*
  store i64 %552, i64* %553, align 8, !tbaa !60
  %554 = bitcast %struct.lua_State** %550 to %struct.GCObject**
  store %struct.GCObject* %3, %struct.GCObject** %554, align 8, !tbaa !101
  br label %560

; <label>:555:                                    ; preds = %525
  %556 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 16
  %557 = load i8, i8* %556, align 2, !tbaa !51
  %558 = icmp eq i8 %557, 0
  br i1 %558, label %559, label %560

; <label>:559:                                    ; preds = %555
  tail call void @luaD_shrinkstack(%struct.lua_State* %472) #7
  br label %560

; <label>:560:                                    ; preds = %559, %555, %549, %546, %541
  %561 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %472, i64 0, i32 20
  %562 = load i32, i32* %561, align 4, !tbaa !100
  %563 = add nsw i32 %562, 1
  %564 = sext i32 %563 to i64
  br label %565

; <label>:565:                                    ; preds = %560, %471, %1, %462, %350, %324, %289, %237
  %566 = phi i64 [ %470, %462 ], [ %352, %350 ], [ %326, %324 ], [ %290, %289 ], [ %240, %237 ], [ 0, %1 ], [ %564, %560 ], [ 1, %471 ]
  ret i64 %566
}

; Function Attrs: minsize nounwind optsize readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc i32 @traverseephemeron(%struct.global_State*, %struct.Table*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 7
  %4 = load %union.Node*, %union.Node** %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 4
  %6 = load i8, i8* %5, align 1, !tbaa !66
  %7 = zext i8 %6 to i32
  %8 = shl i32 1, %7
  %9 = sext i32 %8 to i64
  %10 = tail call i32 @luaH_realasize(%struct.Table* %1) #7
  %11 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 6
  %12 = zext i32 %10 to i64
  br label %13

; <label>:13:                                     ; preds = %31, %2
  %14 = phi i64 [ %33, %31 ], [ 0, %2 ]
  %15 = phi i32 [ %32, %31 ], [ 0, %2 ]
  %16 = icmp eq i64 %14, %12
  br i1 %16, label %34, label %17

; <label>:17:                                     ; preds = %13
  %18 = load %struct.TValue*, %struct.TValue** %11, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 %14, i32 1
  %20 = load i8, i8* %19, align 8, !tbaa !21
  %21 = and i8 %20, 64
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %31, label %23

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.TValue, %struct.TValue* %18, i64 %14, i32 0, i32 0
  %25 = load %struct.GCObject*, %struct.GCObject** %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %25, i64 0, i32 2
  %27 = load i8, i8* %26, align 1, !tbaa !15
  %28 = and i8 %27, 24
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %23
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %25) #6
  br label %31

; <label>:31:                                     ; preds = %23, %17, %30
  %32 = phi i32 [ 1, %30 ], [ %15, %23 ], [ %15, %17 ]
  %33 = add nuw nsw i64 %14, 1
  br label %13

; <label>:34:                                     ; preds = %13
  %35 = getelementptr inbounds %union.Node, %union.Node* %4, i64 %9
  %36 = load %union.Node*, %union.Node** %3, align 8, !tbaa !65
  br label %37

; <label>:37:                                     ; preds = %82, %34
  %38 = phi i32 [ 0, %34 ], [ %83, %82 ]
  %39 = phi %union.Node* [ %36, %34 ], [ %86, %82 ]
  %40 = phi i32 [ 0, %34 ], [ %84, %82 ]
  %41 = phi i32 [ %15, %34 ], [ %85, %82 ]
  %42 = icmp ult %union.Node* %39, %35
  br i1 %42, label %43, label %87

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 1
  %45 = load i8, i8* %44, align 8, !tbaa !22
  %46 = and i8 %45, 15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %43
  tail call fastcc void @clearkey(%union.Node* nonnull %39) #6
  br label %82

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 2
  %51 = load i8, i8* %50, align 1, !tbaa !22
  %52 = and i8 %51, 64
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 4, i32 0
  %56 = load %struct.GCObject*, %struct.GCObject** %55, align 8, !tbaa !22
  br label %57

; <label>:57:                                     ; preds = %49, %54
  %58 = phi %struct.GCObject* [ %56, %54 ], [ null, %49 ]
  %59 = tail call fastcc i32 @iscleared(%struct.global_State* %0, %struct.GCObject* %58) #6
  %60 = icmp eq i32 %59, 0
  %61 = load i8, i8* %44, align 8, !tbaa !22
  %62 = and i8 %61, 64
  %63 = icmp eq i8 %62, 0
  br i1 %60, label %73, label %64

; <label>:64:                                     ; preds = %57
  br i1 %63, label %82, label %65

; <label>:65:                                     ; preds = %64
  %66 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 0, i32 0
  %67 = load %struct.GCObject*, %struct.GCObject** %66, align 8, !tbaa !22
  %68 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %67, i64 0, i32 2
  %69 = load i8, i8* %68, align 1, !tbaa !15
  %70 = and i8 %69, 24
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i32 %38, i32 1
  br label %82

; <label>:73:                                     ; preds = %57
  br i1 %63, label %82, label %74

; <label>:74:                                     ; preds = %73
  %75 = getelementptr inbounds %union.Node, %union.Node* %39, i64 0, i32 0, i32 0, i32 0
  %76 = load %struct.GCObject*, %struct.GCObject** %75, align 8, !tbaa !22
  %77 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %76, i64 0, i32 2
  %78 = load i8, i8* %77, align 1, !tbaa !15
  %79 = and i8 %78, 24
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

; <label>:81:                                     ; preds = %74
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* %76) #6
  br label %82

; <label>:82:                                     ; preds = %65, %64, %74, %73, %48, %81
  %83 = phi i32 [ %38, %48 ], [ %38, %64 ], [ %38, %81 ], [ %38, %74 ], [ %38, %73 ], [ %72, %65 ]
  %84 = phi i32 [ %40, %48 ], [ 1, %64 ], [ %40, %81 ], [ %40, %74 ], [ %40, %73 ], [ 1, %65 ]
  %85 = phi i32 [ %41, %48 ], [ %41, %64 ], [ 1, %81 ], [ %41, %74 ], [ %41, %73 ], [ %41, %65 ]
  %86 = getelementptr inbounds %union.Node, %union.Node* %39, i64 1
  br label %37

; <label>:87:                                     ; preds = %37
  %88 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 11
  %89 = load i8, i8* %88, align 1, !tbaa !11
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %98

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %93 = bitcast %struct.GCObject** %92 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !30
  %95 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %96 = bitcast %struct.GCObject** %95 to i64*
  store i64 %94, i64* %96, align 8, !tbaa !70
  %97 = bitcast %struct.GCObject** %92 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %97, align 8, !tbaa !30
  br label %131

; <label>:98:                                     ; preds = %87
  %99 = icmp eq i32 %38, 0
  br i1 %99, label %107, label %100

; <label>:100:                                    ; preds = %98
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 26
  %102 = bitcast %struct.GCObject** %101 to i64*
  %103 = load i64, i64* %102, align 8, !tbaa !64
  %104 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %105 = bitcast %struct.GCObject** %104 to i64*
  store i64 %103, i64* %105, align 8, !tbaa !70
  %106 = bitcast %struct.GCObject** %101 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %106, align 8, !tbaa !64
  br label %131

; <label>:107:                                    ; preds = %98
  %108 = icmp eq i32 %40, 0
  br i1 %108, label %116, label %109

; <label>:109:                                    ; preds = %107
  %110 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 27
  %111 = bitcast %struct.GCObject** %110 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !63
  %113 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %114 = bitcast %struct.GCObject** %113 to i64*
  store i64 %112, i64* %114, align 8, !tbaa !70
  %115 = bitcast %struct.GCObject** %110 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %115, align 8, !tbaa !63
  br label %131

; <label>:116:                                    ; preds = %107
  %117 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 12
  %118 = load i8, i8* %117, align 2, !tbaa !40
  %119 = icmp eq i8 %118, 1
  br i1 %119, label %120, label %127

; <label>:120:                                    ; preds = %116
  %121 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 24
  %122 = bitcast %struct.GCObject** %121 to i64*
  %123 = load i64, i64* %122, align 8, !tbaa !30
  %124 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 10
  %125 = bitcast %struct.GCObject** %124 to i64*
  store i64 %123, i64* %125, align 8, !tbaa !70
  %126 = bitcast %struct.GCObject** %121 to %struct.Table**
  store %struct.Table* %1, %struct.Table** %126, align 8, !tbaa !30
  br label %131

; <label>:127:                                    ; preds = %116
  %128 = getelementptr inbounds %struct.Table, %struct.Table* %1, i64 0, i32 2
  %129 = load i8, i8* %128, align 1, !tbaa !26
  %130 = or i8 %129, 32
  store i8 %130, i8* %128, align 1, !tbaa !26
  br label %131

; <label>:131:                                    ; preds = %100, %120, %127, %109, %91
  ret i32 %41
}

; Function Attrs: minsize norecurse nounwind optsize uwtable
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

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden i32 @luaH_realasize(%struct.Table*) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden void @luaD_shrinkstack(%struct.lua_State*) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @sweep2old(%struct.lua_State*, %struct.GCObject** nocapture) unnamed_addr #0 {
  br label %3

; <label>:3:                                      ; preds = %17, %2
  %4 = phi %struct.GCObject** [ %21, %17 ], [ %1, %2 ]
  %5 = bitcast %struct.GCObject** %4 to i64*
  br label %6

; <label>:6:                                      ; preds = %3, %14
  %7 = load %struct.GCObject*, %struct.GCObject** %4, align 8, !tbaa !29
  %8 = icmp eq %struct.GCObject* %7, null
  br i1 %8, label %22, label %9

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = and i8 %11, 24
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %9
  %15 = bitcast %struct.GCObject* %7 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !31
  store i64 %16, i64* %5, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %7) #6
  br label %6

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %19 = and i8 %11, -8
  %20 = or i8 %19, 4
  store i8 %20, i8* %18, align 1, !tbaa !15
  %21 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 0
  br label %3

; <label>:22:                                     ; preds = %6
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @finishgencycle(%struct.lua_State*, %struct.global_State*) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 24
  %4 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** nonnull %3) #7
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 25
  %6 = bitcast %struct.GCObject** %5 to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !62
  %8 = bitcast %struct.GCObject** %4 to i64*
  store i64 %7, i64* %8, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %5, align 8, !tbaa !62
  %9 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %4) #7
  %10 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 27
  %11 = bitcast %struct.GCObject** %10 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !63
  %13 = bitcast %struct.GCObject** %9 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %10, align 8, !tbaa !63
  %14 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %9) #7
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 26
  %16 = bitcast %struct.GCObject** %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !64
  %18 = bitcast %struct.GCObject** %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !29
  store %struct.GCObject* null, %struct.GCObject** %15, align 8, !tbaa !64
  %19 = tail call fastcc %struct.GCObject** @correctgraylist(%struct.GCObject** %14) #7
  tail call fastcc void @checkSizes(%struct.lua_State* %0, %struct.global_State* %1) #6
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 11
  store i8 0, i8* %20, align 1, !tbaa !11
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 16
  %22 = load i8, i8* %21, align 2, !tbaa !51
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %2
  tail call fastcc void @callallpendingfinalizers(%struct.lua_State* %0) #6
  br label %25

; <label>:25:                                     ; preds = %2, %24
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @checkSizes(%struct.lua_State*, %struct.global_State* nocapture) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 16
  %4 = load i8, i8* %3, align 2, !tbaa !51
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %24

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 1
  %10 = load i32, i32* %9, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 6, i32 2
  %12 = load i32, i32* %11, align 4, !tbaa !103
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

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc %struct.GCObject** @correctgraylist(%struct.GCObject**) unnamed_addr #2 {
  br label %2

; <label>:2:                                      ; preds = %22, %1
  %3 = phi %struct.GCObject** [ %0, %1 ], [ %23, %22 ]
  %4 = bitcast %struct.GCObject** %3 to i64*
  %5 = bitcast %struct.GCObject** %3 to i64*
  br label %6

; <label>:6:                                      ; preds = %46, %2
  %7 = load %struct.GCObject*, %struct.GCObject** %3, align 8, !tbaa !29
  %8 = icmp eq %struct.GCObject* %7, null
  br i1 %8, label %49, label %9

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 1
  %11 = load i8, i8* %10, align 8, !tbaa !18
  switch i8 %11, label %46 [
    i8 5, label %12
    i8 7, label %12
    i8 8, label %37
  ]

; <label>:12:                                     ; preds = %9, %9
  %13 = tail call fastcc %struct.GCObject** @getgclist(%struct.GCObject* nonnull %7) #6
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %15 = load i8, i8* %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 7
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %12
  %20 = or i8 %15, 32
  %21 = xor i8 %20, 3
  store i8 %21, i8* %14, align 1, !tbaa !15
  br label %22

; <label>:22:                                     ; preds = %19, %47
  %23 = phi %struct.GCObject** [ %48, %47 ], [ %13, %19 ]
  br label %2

; <label>:24:                                     ; preds = %12
  %25 = and i32 %16, 24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %24
  %28 = icmp eq i32 %17, 6
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %27
  %30 = xor i8 %15, 2
  store i8 %30, i8* %14, align 1, !tbaa !15
  br label %31

; <label>:31:                                     ; preds = %29, %27
  %32 = phi i8 [ %30, %29 ], [ %15, %27 ]
  %33 = or i8 %32, 32
  store i8 %33, i8* %14, align 1, !tbaa !15
  br label %34

; <label>:34:                                     ; preds = %24, %31
  %35 = bitcast %struct.GCObject** %13 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !29
  store i64 %36, i64* %5, align 8, !tbaa !29
  br label %46

; <label>:37:                                     ; preds = %9
  %38 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %39 = load i8, i8* %38, align 1, !tbaa !46
  %40 = and i8 %39, 24
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 4, i32 1
  br i1 %41, label %47, label %43

; <label>:43:                                     ; preds = %37
  %44 = bitcast i8* %42 to i64*
  %45 = load i64, i64* %44, align 8, !tbaa !96
  store i64 %45, i64* %4, align 8, !tbaa !29
  br label %46

; <label>:46:                                     ; preds = %43, %34, %9
  br label %6

; <label>:47:                                     ; preds = %37
  %48 = bitcast i8* %42 to %struct.GCObject**
  br label %22

; <label>:49:                                     ; preds = %6
  ret %struct.GCObject** %3
}

; Function Attrs: minsize optsize
declare hidden void @luaS_resize(%struct.lua_State*, i32) local_unnamed_addr #4

; Function Attrs: minsize norecurse nounwind optsize uwtable
define internal fastcc void @whitelist(%struct.global_State* nocapture readonly, %struct.GCObject*) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 10
  %4 = load i8, i8* %3, align 4, !tbaa !17
  %5 = and i8 %4, 24
  br label %6

; <label>:6:                                      ; preds = %9, %2
  %7 = phi %struct.GCObject* [ %1, %2 ], [ %15, %9 ]
  %8 = icmp eq %struct.GCObject* %7, null
  br i1 %8, label %16, label %9

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 2
  %11 = load i8, i8* %10, align 1, !tbaa !15
  %12 = and i8 %11, -64
  %13 = or i8 %12, %5
  store i8 %13, i8* %10, align 1, !tbaa !15
  %14 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %7, i64 0, i32 0
  %15 = load %struct.GCObject*, %struct.GCObject** %14, align 8, !tbaa !31
  br label %6

; <label>:16:                                     ; preds = %6
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %40 = load i8, i8* %39, align 1, !tbaa !104
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 15
  %42 = load i8, i8* %41, align 1, !tbaa !52
  store i8 0, i8* %39, align 1, !tbaa !104
  store i8 0, i8* %41, align 1, !tbaa !52
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %44 = bitcast %union.StackValue** %43 to %struct.TValue**
  %45 = load %struct.TValue*, %struct.TValue** %44, align 8, !tbaa !98
  %46 = bitcast %struct.TValue* %33 to i64*
  %47 = bitcast %struct.TValue* %45 to i64*
  %48 = load i64, i64* %46, align 8
  store i64 %48, i64* %47, align 8
  %49 = load i8, i8* %34, align 8, !tbaa !21
  %50 = getelementptr inbounds %struct.TValue, %struct.TValue* %45, i64 0, i32 1
  store i8 %49, i8* %50, align 8, !tbaa !21
  %51 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !98
  %52 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 1, i32 0
  %53 = bitcast %struct.TValue* %2 to i64*
  %54 = bitcast %struct.TValue* %52 to i64*
  %55 = load i64, i64* %53, align 8
  store i64 %55, i64* %54, align 8
  %56 = load i8, i8* %32, align 8, !tbaa !21
  %57 = getelementptr inbounds %union.StackValue, %union.StackValue* %51, i64 1, i32 0, i32 1
  store i8 %56, i8* %57, align 8, !tbaa !21
  %58 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !98
  %59 = getelementptr inbounds %union.StackValue, %union.StackValue* %58, i64 2
  store %union.StackValue* %59, %union.StackValue** %43, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  %61 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !tbaa !105
  %62 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %61, i64 0, i32 7
  %63 = load i16, i16* %62, align 2, !tbaa !106
  %64 = or i16 %63, 64
  store i16 %64, i16* %62, align 2, !tbaa !106
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  %66 = bitcast %union.StackValue** %65 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !97
  %68 = ptrtoint %union.StackValue* %58 to i64
  %69 = sub i64 %68, %67
  %70 = call i32 @luaD_pcall(%struct.lua_State* nonnull %0, void (%struct.lua_State*, i8*)* nonnull @dothecall, i8* null, i64 %69, i64 0) #7
  %71 = load %struct.CallInfo*, %struct.CallInfo** %60, align 8, !tbaa !105
  %72 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %71, i64 0, i32 7
  %73 = load i16, i16* %72, align 2, !tbaa !106
  %74 = and i16 %73, -65
  store i16 %74, i16* %72, align 2, !tbaa !106
  store i8 %40, i8* %39, align 1, !tbaa !104
  store i8 %42, i8* %41, align 1, !tbaa !52
  %75 = icmp eq i32 %70, 0
  br i1 %75, label %89, label %76

; <label>:76:                                     ; preds = %38
  %77 = load %union.StackValue*, %union.StackValue** %43, align 8, !tbaa !98
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

; Function Attrs: minsize optsize
declare hidden %struct.TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.TValue*, i32) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal void @dothecall(%struct.lua_State*, i8* nocapture readnone) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %union.StackValue*, %union.StackValue** %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %union.StackValue, %union.StackValue* %4, i64 -2
  tail call void @luaD_callnoyield(%struct.lua_State* %0, %union.StackValue* nonnull %5, i32 0) #7
  ret void
}

; Function Attrs: minsize optsize
declare hidden void @luaE_warning(%struct.lua_State*, i8*, i32) local_unnamed_addr #4

; Function Attrs: minsize optsize
declare hidden void @luaD_callnoyield(%struct.lua_State*, %union.StackValue*, i32) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @entersweep(%struct.lua_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 11
  store i8 3, i8* %4, align 1, !tbaa !11
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 20
  %6 = tail call fastcc %struct.GCObject** @sweeptolive(%struct.lua_State* %0, %struct.GCObject** nonnull %5) #6
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21
  store %struct.GCObject** %6, %struct.GCObject*** %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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
  %19 = load i32, i32* %5, align 4, !tbaa !57
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

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @setminordebt(%struct.global_State*) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 3
  %5 = load i64, i64* %4, align 8, !tbaa !49
  %6 = add nsw i64 %5, %3
  %7 = udiv i64 %6, 100
  %8 = getelementptr inbounds %struct.global_State, %struct.global_State* %0, i64 0, i32 13
  %9 = load i8, i8* %8, align 1, !tbaa !107
  %10 = zext i8 %9 to i64
  %11 = sub nsw i64 0, %10
  %12 = mul i64 %7, %11
  tail call void @luaE_setdebt(%struct.global_State* %0, i64 %12) #7
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
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

; Function Attrs: minsize optsize
declare hidden void @luaE_setdebt(%struct.global_State*, i64) local_unnamed_addr #4

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @markold(%struct.global_State*, %struct.GCObject*, %struct.GCObject* readnone) unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %14, %3
  %5 = phi %struct.GCObject* [ %1, %3 ], [ %16, %14 ]
  %6 = icmp eq %struct.GCObject* %5, %2
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 0, i32 2
  %9 = load i8, i8* %8, align 1, !tbaa !15
  %10 = and i8 %9, 39
  %11 = icmp eq i8 %10, 35
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %7
  %13 = and i8 %9, -33
  store i8 %13, i8* %8, align 1, !tbaa !15
  tail call fastcc void @reallymarkobject(%struct.global_State* %0, %struct.GCObject* nonnull %5) #6
  br label %14

; <label>:14:                                     ; preds = %7, %12
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %5, i64 0, i32 0
  %16 = load %struct.GCObject*, %struct.GCObject** %15, align 8, !tbaa !31
  br label %4

; <label>:17:                                     ; preds = %4
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc %struct.GCObject** @sweepgen(%struct.lua_State*, %struct.global_State* nocapture readonly, %struct.GCObject**, %struct.GCObject* readnone) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %1, i64 0, i32 10
  %6 = load i8, i8* %5, align 4, !tbaa !17
  %7 = and i8 %6, 24
  br label %8

; <label>:8:                                      ; preds = %31, %4
  %9 = phi %struct.GCObject** [ %39, %31 ], [ %2, %4 ]
  %10 = bitcast %struct.GCObject** %9 to i64*
  br label %11

; <label>:11:                                     ; preds = %8, %20
  %12 = load %struct.GCObject*, %struct.GCObject** %9, align 8, !tbaa !29
  %13 = icmp eq %struct.GCObject* %12, %3
  br i1 %13, label %40, label %14

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i64 0, i32 2
  %16 = load i8, i8* %15, align 1, !tbaa !15
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %14
  %21 = bitcast %struct.GCObject* %12 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !31
  store i64 %22, i64* %10, align 8, !tbaa !29
  tail call fastcc void @freeobj(%struct.lua_State* %0, %struct.GCObject* nonnull %12) #6
  br label %11

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i64 0, i32 2
  %25 = zext i8 %16 to i32
  %26 = and i32 %25, 7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %23
  %29 = and i8 %16, -57
  %30 = or i8 %29, %7
  store i8 %30, i8* %24, align 1, !tbaa !15
  br label %31

; <label>:31:                                     ; preds = %28, %23
  %32 = phi i8 [ %30, %28 ], [ %16, %23 ]
  %33 = and i8 %32, -8
  %34 = and i8 %32, 7
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* @sweepgen.nextage, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1, !tbaa !22
  %38 = or i8 %33, %37
  store i8 %38, i8* %24, align 1, !tbaa !15
  %39 = getelementptr inbounds %struct.GCObject, %struct.GCObject* %12, i64 0, i32 0
  br label %8

; <label>:40:                                     ; preds = %11
  ret %struct.GCObject** %9
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { minsize nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { minsize norecurse nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { minsize norecurse nounwind optsize readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { minsize optsize "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { minsize nounwind optsize readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { minsize optsize }
attributes #7 = { minsize nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { minsize nounwind optsize readonly }

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
!53 = !{!12, !5, i64 104}
!54 = !{!12, !4, i64 232}
!55 = !{!12, !5, i64 108}
!56 = !{!12, !5, i64 109}
!57 = !{!10, !10, i64 0}
!58 = !{!24, !9, i64 16}
!59 = !{!3, !4, i64 64}
!60 = !{!3, !4, i64 80}
!61 = !{!20, !5, i64 9}
!62 = !{!12, !4, i64 152}
!63 = !{!12, !4, i64 168}
!64 = !{!12, !4, i64 160}
!65 = !{!27, !4, i64 24}
!66 = !{!27, !5, i64 11}
!67 = !{!27, !4, i64 16}
!68 = !{!27, !4, i64 40}
!69 = !{!27, !10, i64 12}
!70 = !{!27, !4, i64 48}
!71 = !{!27, !4, i64 32}
!72 = !{!24, !4, i64 32}
!73 = !{!24, !5, i64 9}
!74 = !{!75, !4, i64 24}
!75 = !{!"LClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!76 = !{!77, !5, i64 9}
!77 = !{!"Proto", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120}
!78 = !{!75, !5, i64 10}
!79 = !{!80, !5, i64 10}
!80 = !{!"CClosure", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !4, i64 16, !4, i64 24, !5, i64 32}
!81 = !{!77, !4, i64 112}
!82 = !{!83, !5, i64 9}
!83 = !{!"TString", !4, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !10, i64 12, !5, i64 16}
!84 = !{!77, !10, i64 20}
!85 = !{!77, !4, i64 56}
!86 = !{!77, !10, i64 16}
!87 = !{!77, !4, i64 80}
!88 = !{!89, !4, i64 0}
!89 = !{!"Upvaldesc", !4, i64 0, !5, i64 8, !5, i64 9}
!90 = !{!77, !10, i64 32}
!91 = !{!77, !4, i64 72}
!92 = !{!77, !10, i64 36}
!93 = !{!77, !4, i64 104}
!94 = !{!95, !4, i64 0}
!95 = !{!"LocVar", !4, i64 0, !10, i64 8, !10, i64 12}
!96 = !{!3, !4, i64 72}
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
